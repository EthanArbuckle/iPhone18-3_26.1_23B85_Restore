void re::RigDataTypeClass::attributeType(uint64_t a1@<X0>, re::RigEnvironment *a2@<X1>, char **a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *a3;
  v8 = a3[1];
  v10 = &v9[v8];
  v11 = memchr(v9, 46, v8);
  if (v11)
  {
    v12 = v11 == v10;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (v12)
  {
    v41 = *a3;
  }

  else
  {
    *&v41 = v9;
    *(&v41 + 1) = v11 - v9;
    v9 = (v11 - v9 + 1);
  }

  if (*a1 == 12)
  {
    re::RigDataParser::extractArrayIndex(&v41, v34);
    if (v34[0] != 1)
    {
      v26 = v35;
      *(a4 + 8) = *&v34[8];
      v27 = v36;
      v28 = v37;
      *a4 = 0;
      *(a4 + 24) = v26;
      *(a4 + 40) = v27;
      *(a4 + 48) = v28;
      return;
    }

    v14 = (a1 + 8);
    goto LABEL_13;
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    v14 = (*(a1 + 56) + 16);
    v17 = 32 * v16;
    while (1)
    {
      v11 = strlen(v14[-1].var1);
      if (*(&v41 + 1) == v11)
      {
        v11 = memcmp(v41, v14[-1].var1, *(&v41 + 1));
        if (!v11)
        {
          break;
        }
      }

      v14 += 2;
      v17 -= 32;
      if (!v17)
      {
        goto LABEL_21;
      }
    }

LABEL_13:
    if (v13)
    {
      re::RigEnvironment::lookupRigDataType(a2, v14, v34);
      if (v34[0])
      {
        *&v38 = re::Slice<char>::range(a3, v9, a3[1]);
        *(&v38 + 1) = v15;
        re::RigDataTypeClass::attributeType(&v34[8], a2, &v38);
      }

      else
      {
        re::DynamicString::format("Unknown child attribute type: %s", &v38, v14->var1);
        v30 = v38;
        v31 = v39;
        v32 = v40;
        *a4 = 0;
        *(a4 + 8) = 5000;
        *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
        *(a4 + 24) = v30;
        *(a4 + 40) = v31;
        *(a4 + 48) = v32;
      }

      if (v34[0] == 1)
      {
        v33 = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit(&v35 + 8);
        if (v34[16])
        {
          if (v34[16])
          {
            v25 = v35;
            goto LABEL_30;
          }
        }
      }
    }

    else
    {
      re::StringID::StringID(v34, v14);
      *a4 = 1;
      v29 = *&v34[8];
      *(a4 + 8) = *v34;
      *(a4 + 16) = v29;
    }

    return;
  }

LABEL_21:
  v39 = 0;
  v40 = 0;
  v18 = a3[1];
  if (v18)
  {
    v19 = (v18 + 1);
  }

  else
  {
    v19 = 0;
  }

  *(&v38 + 1) = 0;
  re::DynamicString::setCapacity(&v38, v19);
  re::DynamicString::operator=(&v38, a3);
  if (BYTE8(v38))
  {
    v20 = v39;
  }

  else
  {
    v20 = &v38 + 9;
  }

  re::DynamicString::format("Attribute name could not be resolved: %s", v34, v20);
  v21 = *v34;
  v22 = *&v34[16];
  v23 = v35;
  *a4 = 0;
  *(a4 + 8) = 5003;
  *(a4 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a4 + 24) = v21;
  *(a4 + 40) = v22;
  *(a4 + 48) = v23;
  v24 = v38;
  if (v38 && (BYTE8(v38) & 1) != 0)
  {
    v25 = v39;
LABEL_30:
    (*(*v24 + 40))(v24, v25);
  }
}

uint64_t re::Slice<char>::range(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  if (v3 < a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. fromInclusive = %zu, size = %zu", "fromInclusive <= size()", "range", 248, a2, v3);
    _os_crash();
    __break(1u);
  }

  else if (v3 >= a3)
  {
    return *a1 + a2;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. toExclusive = %zu, size = %zu", "toExclusive <= size()", "range", 249, a2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

BOOL re::RigDataTypeClass::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 12)
  {
    if (v3 == 12)
    {
      v4 = a1 + 8;
      v5 = a2 + 8;

      return re::StringID::operator==(v4, v5);
    }

    return 0;
  }

  if (v2 != v3)
  {
    return 0;
  }

  v7 = *(a1 + 5);
  if (v7 != *(a2 + 5))
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  v8 = *(a1 + 7);
  v9 = &v8[4 * v7];
  v10 = *(a2 + 7);
  while (1)
  {
    result = re::StringID::operator==(v8, v10);
    if (!result)
    {
      break;
    }

    v11 = v8 + 2;
    v12 = v10 + 2;
    result = re::StringID::operator==(v11, v12);
    if (!result)
    {
      break;
    }

    v8 = v11 + 2;
    v10 = v12 + 2;
    if (v8 == v9)
    {
      return 1;
    }
  }

  return result;
}

char **re::RigDataTypeDescriptions::rigDataTypeDescription(unsigned int a1, uint64_t a2)
{
  if (a1 < 0xE)
  {
    return &(&re::kRigDataTypeDescriptions)[2 * a1];
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a1, 14, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::add(_anonymous_namespace_ *result, uint64_t *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*result)
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

        result = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = (*(v3 + 4) + 32 * v5);
  v12 = *a2;
  *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v11 = *a2 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  v11[1] = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v13 = a2[2];
  v11[2] = v11[2] & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
  v11[2] = a2[2] & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
  v11[3] = a2[3];
  a2[2] = 0;
  a2[3] = &str_67;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

uint64_t re::BucketArray<re::RigDataTypeStructBuilder::RigDataTypeStructMember,8ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 3)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 3)) + 32 * (a2 & 7);
}

void *re::BucketArray<re::RigDataTypeStructBuilder::RigDataTypeStructMember,8ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 8 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 256, 0);
          v6 = result;
          if (*v3)
          {
            v7 = v3[1];
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = v3 + 3;
          if ((v8 & 1) == 0)
          {
            v15 = v3[4];
          }

          v16 = v3[1];
          v15[v16++] = v6;
          v3[1] = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::RigDataTypeStructBuilder::RigDataTypeStructMember,8ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

char *re::RigDataParser::parseWhitespace(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2)
  {
    v4 = -v1;
    v5 = MEMORY[0x1E69E9830];
    while (1)
    {
      v6 = *v1;
      if ((v6 & 0x80000000) != 0)
      {
        if (!__maskrune(v6, 0x4000uLL))
        {
          return *a1;
        }
      }

      else if ((*(v5 + 4 * v6 + 60) & 0x4000) == 0)
      {
        return *a1;
      }

      ++v1;
      --v4;
      if (!--v2)
      {
        v1 = *a1;
        v7 = a1[1];
        return (v1 + v7);
      }
    }
  }

  v7 = 0;
  return (v1 + v7);
}

char *re::RigDataParser::parseAlphaNumeric(uint64_t *a1)
{
  v2 = re::RigDataParser::parseWhitespace(a1);
  result = &v2[v3];
  v5 = *a1 + a1[1];
  if (result < v5)
  {
    v6 = result;
    do
    {
      v7 = *v6;
      if ((v7 - 48) >= 0xA && (v7 & 0xFFFFFFDF) - 65 > 0x19)
      {
        break;
      }

      ++v6;
    }

    while (v6 < v5);
  }

  return result;
}

char *re::RigDataParser::parseNumeric(uint64_t *a1)
{
  v2 = re::RigDataParser::parseWhitespace(a1);
  result = &v2[v3];
  v5 = *a1 + a1[1];
  if (result < v5)
  {
    v6 = result;
    do
    {
      if (*v6 - 48 > 9)
      {
        break;
      }

      ++v6;
    }

    while (v6 < v5);
  }

  return result;
}

char *re::RigDataParser::parseFloat(uint64_t *a1)
{
  v2 = re::RigDataParser::parseWhitespace(a1);
  result = &v2[v3];
  v5 = result + 1;
  if (*result != 45)
  {
    v5 = result;
  }

  v6 = *a1 + a1[1];
  if (v5 >= v6)
  {
LABEL_7:
    v7 = *v5;
  }

  else
  {
    while (1)
    {
      v7 = *v5;
      if ((v7 - 48) > 9)
      {
        break;
      }

      if (++v5 >= v6)
      {
        v5 = (*a1 + a1[1]);
        goto LABEL_7;
      }
    }
  }

  if (v7 == 46)
  {
    v8 = (v5 + 1);
    do
    {
      v9 = v8;
      if (v8 >= v6)
      {
        break;
      }

      ++v8;
    }

    while (*v9 - 48 < 0xA);
  }

  return result;
}

char *re::RigDataParser::parseTypeName(uint64_t *a1)
{
  v2 = a1[1];
  v18 = *a1;
  v19 = v2;
  v3 = re::RigDataParser::parseAlphaNumeric(&v18);
  v5 = v3;
  if (v4)
  {
    v6 = *a1 + a1[1];
    v18 = &v3[v4];
    v19 = v6 - &v3[v4];
    v7 = re::RigDataParser::parseWhitespace(&v18);
    v9 = &v7[v8];
    v10 = &v7[v8] < v6;
    if (!strncmp(&v7[v8], "[", v10) && !str_5[v10])
    {
      v11 = *a1 + a1[1] - &v9[v10];
      v18 = &v9[v10];
      v19 = v11;
      v12 = re::RigDataParser::parseNumeric(&v18);
      v13 = *a1 + a1[1];
      v18 = &v12[v14];
      v19 = v13 - &v12[v14];
      v15 = re::RigDataParser::parseWhitespace(&v18);
      strncmp(&v15[v16], "]", &v15[v16] < v13);
    }
  }

  return v5;
}

char *re::RigDataParser::extractArrayIndex@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = re::RigDataParser::parseAlphaNumeric(a1);
  v6 = v5;
  v7 = strncmp(v4, "value", v5);
  if (v7 || aValue[v6])
  {
    v50 = 0;
    v51 = 0;
    v8 = a1[1];
    if (v8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 0;
    }

    v49 = 0;
    re::DynamicString::setCapacity(&v48, v9);
    re::DynamicString::operator=(&v48, a1);
    if (v49)
    {
      v10 = v50;
    }

    else
    {
      v10 = &v49 + 1;
    }

    re::DynamicString::format("Unknown child attribute (expected array value): %s", &v52, v10);
  }

  else
  {
    v15 = &v4[v6];
    v16 = *a1 + a1[1];
    *&v52 = v15;
    *(&v52 + 1) = v16 - v15;
    v17 = re::RigDataParser::parseWhitespace(&v52);
    v19 = &v17[v18];
    v20 = &v17[v18] < v16;
    v21 = strncmp(&v17[v18], "[", v20);
    if (v21 || str_5[v20])
    {
      v50 = 0;
      v51 = 0;
      v22 = a1[1];
      if (v22)
      {
        v23 = v22 + 1;
      }

      else
      {
        v23 = 0;
      }

      v49 = 0;
      re::DynamicString::setCapacity(&v48, v23);
      re::DynamicString::operator=(&v48, a1);
      if (v49)
      {
        v24 = v50;
      }

      else
      {
        v24 = &v49 + 1;
      }

      re::DynamicString::format("Unknown child attribute (expected array subscript): %s", &v52, v24);
    }

    else
    {
      v25 = *a1 + a1[1] - &v19[v20];
      *&v52 = &v19[v20];
      *(&v52 + 1) = v25;
      v26 = re::RigDataParser::parseNumeric(&v52);
      if (v27)
      {
        v28 = v26;
        v29 = v27;
        v30 = *a1 + a1[1];
        *&v52 = &v26[v27];
        *(&v52 + 1) = v30 - &v26[v27];
        v31 = re::RigDataParser::parseWhitespace(&v52);
        v33 = &v31[v32];
        v34 = &v31[v32] < v30;
        v35 = strncmp(&v31[v32], "]", v34);
        if (v35 || str_1_5[v34])
        {
          v50 = 0;
          v51 = 0;
          v36 = a1[1];
          if (v36)
          {
            v37 = v36 + 1;
          }

          else
          {
            v37 = 0;
          }

          v49 = 0;
          re::DynamicString::setCapacity(&v48, v37);
          re::DynamicString::operator=(&v48, a1);
          if (v49)
          {
            v38 = v50;
          }

          else
          {
            v38 = &v49 + 1;
          }

          re::DynamicString::format("Unknown child attribute (expected array subscript end): %s", &v52, v38);
        }

        else
        {
          v42 = &v33[v34];
          v43 = (*a1 + a1[1]);
          *&v52 = v42;
          *(&v52 + 1) = v43 - v42;
          result = re::RigDataParser::parseWhitespace(&v52);
          if (&result[v44] == v43)
          {
            *a2 = 1;
            *(a2 + 8) = v28;
            *(a2 + 16) = v29;
            return result;
          }

          v50 = 0;
          v51 = 0;
          v45 = a1[1];
          if (v45)
          {
            v46 = v45 + 1;
          }

          else
          {
            v46 = 0;
          }

          v49 = 0;
          re::DynamicString::setCapacity(&v48, v46);
          re::DynamicString::operator=(&v48, a1);
          if (v49)
          {
            v47 = v50;
          }

          else
          {
            v47 = &v49 + 1;
          }

          re::DynamicString::format("Unknown child attribute (expected only array value): %s", &v52, v47);
        }
      }

      else
      {
        v50 = 0;
        v51 = 0;
        v39 = a1[1];
        if (v39)
        {
          v40 = v39 + 1;
        }

        else
        {
          v40 = 0;
        }

        v49 = 0;
        re::DynamicString::setCapacity(&v48, v40);
        re::DynamicString::operator=(&v48, a1);
        if (v49)
        {
          v41 = v50;
        }

        else
        {
          v41 = &v49 + 1;
        }

        re::DynamicString::format("Unknown child attribute (expected array index): %s", &v52, v41);
      }
    }
  }

  v11 = v52;
  v12 = v53;
  v13 = v54;
  *a2 = 0;
  *(a2 + 8) = 5007;
  *(a2 + 16) = &re::AnimationErrorCategory(void)::instance;
  *(a2 + 24) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = v13;
  result = v48;
  if (v48)
  {
    if (v49)
    {
      return (*(*v48 + 40))();
    }
  }

  return result;
}

float re::RigDataParser::stringToFloat(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = **a1;
  v4 = (v3 == 45);
  result = 0.0;
  if (v2 != v4)
  {
    v6 = &v2[v1];
    v7 = &v4[v1];
    v8 = &v2[~v4];
    while (1)
    {
      v9 = *v7;
      if (v9 == 46)
      {
        break;
      }

      result = (result * 10.0) + (v9 - 48);
      ++v7;
      --v8;
      if (v7 == v6)
      {
        goto LABEL_9;
      }
    }

    if (v7 + 1 != v6)
    {
      v10 = 1.0;
      v11 = 1;
      do
      {
        v10 = v10 * 0.1;
        result = result + ((v7[v11++] - 48) * v10);
        --v8;
      }

      while (v8);
    }
  }

LABEL_9:
  if (v3 == 45)
  {
    return -result;
  }

  return result;
}

uint64_t *re::FixedArray<float>::operator=(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      *result = v5;
      *a2 = v4;
      v7 = result[1];
      v8 = result[2];
      v9 = a2[2];
      result[1] = a2[1];
      result[2] = v9;
      a2[1] = v7;
      a2[2] = v8;
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296, v2, v3);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

double re::KeyframeAnimation<float>::totalDuration(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    return *(*(a1 + 96) + 4 * v1 - 4);
  }

  else
  {
    return 0.0;
  }
}

uint64_t re::KeyframeAnimation<float>::evaluateCore(uint64_t result, uint64_t a2, uint64_t a3, float *a4, uint64_t a5, float *a6)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_37;
  }

  v6 = *(result + 88);
  v7 = *(result + 112);
  if (v6 >= v7)
  {
    v8 = *(result + 112);
  }

  else
  {
    v8 = *(result + 88);
  }

  v9 = v8 - 1;
  if (v8 == 1)
  {
    goto LABEL_25;
  }

  if (v8)
  {
    if (v6)
    {
      if (v6 > v9)
      {
        v11 = *(result + 96);
        v12 = *(a2 + 24);
        if (*v11 < v12)
        {
          if (v11[v9] > v12)
          {
            v13 = *(result + 96);
            v14 = *(result + 88);
            do
            {
              v15 = v14 >> 1;
              v16 = &v13[v14 >> 1];
              v18 = *v16;
              v17 = v16 + 1;
              v14 += ~(v14 >> 1);
              if (v18 < v12)
              {
                v13 = v17;
              }

              else
              {
                v14 = v15;
              }
            }

            while (v14);
            v19 = v13 - v11;
            v20 = v13 - v11;
            if (*(result + 73) == 1 && v20 != v8)
            {
              v22 = v20 - 1;
              if (v6 > v20 - 1)
              {
                if (v6 > v20)
                {
                  v23 = v11[v22];
                  v24 = *(v11 + v19) - v23;
                  v25 = 0.0;
                  if (v24 > 0.0)
                  {
                    v25 = (v12 - v23) / v24;
                  }

                  if (v7 > v22)
                  {
                    if (v7 > v20)
                    {
                      v10 = (v25 * *(*(result + 120) + v19)) + (*(*(result + 120) + 4 * v22) * (1.0 - v25));
                      goto LABEL_26;
                    }

LABEL_45:
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                  }

LABEL_44:
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_45;
                }

LABEL_43:
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
                goto LABEL_44;
              }

LABEL_42:
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_43;
            }

            if (v7 > v20)
            {
              v10 = *(*(result + 120) + v19);
              goto LABEL_26;
            }

LABEL_41:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_42;
          }

          if (v7 > v9)
          {
            v10 = *(*(result + 120) + 4 * v9);
            goto LABEL_26;
          }

LABEL_40:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_41;
        }

        if (v7)
        {
LABEL_25:
          v10 = **(result + 120);
          goto LABEL_26;
        }

LABEL_39:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_40;
      }

LABEL_38:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_39;
    }

LABEL_37:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_38;
  }

  v10 = *a4;
LABEL_26:
  *a6 = v10;
  return result;
}

double re::KeyframeAnimation<double>::totalDuration(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    return *(*(a1 + 96) + 4 * v1 - 4);
  }

  else
  {
    return 0.0;
  }
}

uint64_t re::KeyframeAnimation<double>::evaluateCore(uint64_t result, uint64_t a2, uint64_t a3, double *a4, uint64_t a5, double *a6)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_37;
  }

  v6 = *(result + 88);
  v7 = *(result + 112);
  if (v6 >= v7)
  {
    v8 = *(result + 112);
  }

  else
  {
    v8 = *(result + 88);
  }

  v9 = v8 - 1;
  if (v8 == 1)
  {
    goto LABEL_25;
  }

  if (v8)
  {
    if (v6)
    {
      if (v6 > v9)
      {
        v11 = *(result + 96);
        v12 = *(a2 + 24);
        if (*v11 < v12)
        {
          if (v11[v9] > v12)
          {
            v13 = *(result + 96);
            v14 = *(result + 88);
            do
            {
              v15 = v14 >> 1;
              v16 = &v13[v14 >> 1];
              v18 = *v16;
              v17 = v16 + 1;
              v14 += ~(v14 >> 1);
              if (v18 < v12)
              {
                v13 = v17;
              }

              else
              {
                v14 = v15;
              }
            }

            while (v14);
            v19 = v13 - v11;
            v20 = v13 - v11;
            if (*(result + 73) == 1 && v20 != v8)
            {
              v22 = v20 - 1;
              if (v6 > v20 - 1)
              {
                if (v6 > v20)
                {
                  v23 = v11[v22];
                  v24 = *(v11 + v19) - v23;
                  v25 = 0.0;
                  if (v24 > 0.0)
                  {
                    v25 = (v12 - v23) / v24;
                  }

                  if (v7 > v22)
                  {
                    if (v7 > v20)
                    {
                      v10 = *(*(result + 120) + 8 * v20) * v25 + *(*(result + 120) + 8 * v22) * (1.0 - v25);
                      goto LABEL_26;
                    }

LABEL_45:
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                  }

LABEL_44:
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_45;
                }

LABEL_43:
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
                goto LABEL_44;
              }

LABEL_42:
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_43;
            }

            if (v7 > v20)
            {
              v10 = *(*(result + 120) + 8 * v20);
              goto LABEL_26;
            }

LABEL_41:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_42;
          }

          if (v7 > v9)
          {
            v10 = *(*(result + 120) + 8 * v9);
            goto LABEL_26;
          }

LABEL_40:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_41;
        }

        if (v7)
        {
LABEL_25:
          v10 = **(result + 120);
          goto LABEL_26;
        }

LABEL_39:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_40;
      }

LABEL_38:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_39;
    }

LABEL_37:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_38;
  }

  v10 = *a4;
LABEL_26:
  *a6 = v10;
  return result;
}

double re::KeyframeAnimation<re::Vector2<float>>::totalDuration(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    return *(*(a1 + 96) + 4 * v1 - 4);
  }

  else
  {
    return 0.0;
  }
}

float32x2_t re::KeyframeAnimation<re::Vector2<float>>::evaluateCore(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t *a4, float32x2_t result, uint64_t a6, double *a7)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_38;
  }

  v7 = *(a1 + 88);
  v8 = *(a1 + 112);
  if (v7 >= v8)
  {
    v9 = *(a1 + 112);
  }

  else
  {
    v9 = *(a1 + 88);
  }

  v10 = v9 - 1;
  if (v9 == 1)
  {
    goto LABEL_25;
  }

  if (v9)
  {
    if (v7)
    {
      if (v7 > v10)
      {
        v12 = *(a1 + 96);
        result = a2[3];
        result.f32[0] = *&result;
        if (*v12 < result.f32[0])
        {
          if (v12[v10] > result.f32[0])
          {
            v13 = *(a1 + 96);
            v14 = *(a1 + 88);
            do
            {
              v15 = v14 >> 1;
              v16 = &v13[v14 >> 1];
              v18 = *v16;
              v17 = v16 + 1;
              v14 += ~(v14 >> 1);
              if (v18 < result.f32[0])
              {
                v13 = v17;
              }

              else
              {
                v14 = v15;
              }
            }

            while (v14);
            v19 = v13 - v12;
            v20 = v13 - v12;
            if (*(a1 + 73) == 1 && v20 != v9)
            {
              v22 = v20 - 1;
              if (v7 > v20 - 1)
              {
                if (v7 > v20)
                {
                  v23 = v12[v22];
                  v24 = *(v12 + v19) - v23;
                  v25 = 0.0;
                  if (v24 > 0.0)
                  {
                    v25 = (result.f32[0] - v23) / v24;
                  }

                  if (v8 > v22)
                  {
                    if (v8 > v20)
                    {
                      result = vadd_f32(vmul_n_f32(*(*(a1 + 120) + 8 * v22), 1.0 - v25), vmul_n_f32(*(*(a1 + 120) + 8 * v20), v25));
                      *a7 = *&result;
                      return result;
                    }

LABEL_46:
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                  }

LABEL_45:
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_46;
                }

LABEL_44:
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
                goto LABEL_45;
              }

LABEL_43:
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_44;
            }

            if (v8 > v20)
            {
              v11 = *(*(a1 + 120) + 8 * v20);
              goto LABEL_26;
            }

LABEL_42:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_43;
          }

          if (v8 > v10)
          {
            v11 = *(*(a1 + 120) + 8 * v10);
            goto LABEL_26;
          }

LABEL_41:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_42;
        }

        if (v8)
        {
LABEL_25:
          v11 = **(a1 + 120);
          goto LABEL_26;
        }

LABEL_40:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_41;
      }

LABEL_39:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_40;
    }

LABEL_38:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_39;
  }

  v11 = *a4;
LABEL_26:
  *a7 = v11;
  return result;
}

double re::KeyframeAnimation<re::Vector3<float>>::totalDuration(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    return *(*(a1 + 96) + 4 * v1 - 4);
  }

  else
  {
    return 0.0;
  }
}

float32x4_t re::KeyframeAnimation<re::Vector3<float>>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_38;
  }

  v6 = *(a1 + 88);
  v7 = *(a1 + 112);
  if (v6 >= v7)
  {
    v8 = *(a1 + 112);
  }

  else
  {
    v8 = *(a1 + 88);
  }

  v9 = v8 - 1;
  if (v8 == 1)
  {
    goto LABEL_25;
  }

  if (v8)
  {
    if (v6)
    {
      if (v6 > v9)
      {
        v11 = *(a1 + 96);
        v12 = *(a2 + 24);
        if (*v11 < v12)
        {
          if (v11[v9] > v12)
          {
            v13 = *(a1 + 96);
            v14 = *(a1 + 88);
            do
            {
              v15 = v14 >> 1;
              v16 = &v13[v14 >> 1];
              v18 = *v16;
              v17 = v16 + 1;
              v14 += ~(v14 >> 1);
              if (v18 < v12)
              {
                v13 = v17;
              }

              else
              {
                v14 = v15;
              }
            }

            while (v14);
            v19 = v13 - v11;
            v20 = v13 - v11;
            if (*(a1 + 73) == 1 && v20 != v8)
            {
              v22 = v20 - 1;
              if (v6 > v20 - 1)
              {
                if (v6 > v20)
                {
                  v23 = v11[v22];
                  v24 = *(v11 + v19) - v23;
                  v25 = 0.0;
                  if (v24 > 0.0)
                  {
                    v25 = (v12 - v23) / v24;
                  }

                  if (v7 > v22)
                  {
                    if (v7 > v20)
                    {
                      v26 = *(a1 + 120);
                      result = *(v26 + 16 * v22);
                      *a6 = vmlaq_n_f32(vmulq_n_f32(*(v26 + 16 * v20), v25), result, 1.0 - v25);
                      return result;
                    }

LABEL_46:
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                  }

LABEL_45:
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_46;
                }

LABEL_44:
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
                goto LABEL_45;
              }

LABEL_43:
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_44;
            }

            if (v7 > v20)
            {
              result = *(*(a1 + 120) + 16 * v20);
              goto LABEL_26;
            }

LABEL_42:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_43;
          }

          if (v7 > v9)
          {
            result = *(*(a1 + 120) + 16 * v9);
            goto LABEL_26;
          }

LABEL_41:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_42;
        }

        if (v7)
        {
LABEL_25:
          result = **(a1 + 120);
          goto LABEL_26;
        }

LABEL_40:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_41;
      }

LABEL_39:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_40;
    }

LABEL_38:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_39;
  }

  result = *a4;
LABEL_26:
  *a6 = result;
  return result;
}

double re::KeyframeAnimation<re::Vector4<float>>::totalDuration(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    return *(*(a1 + 96) + 4 * v1 - 4);
  }

  else
  {
    return 0.0;
  }
}

uint64_t re::KeyframeAnimation<re::Vector4<float>>::evaluateCore(uint64_t result, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
    goto LABEL_37;
  }

  v6 = *(result + 88);
  v7 = *(result + 112);
  if (v6 >= v7)
  {
    v8 = *(result + 112);
  }

  else
  {
    v8 = *(result + 88);
  }

  v9 = v8 - 1;
  if (v8 == 1)
  {
    goto LABEL_25;
  }

  if (v8)
  {
    if (v6)
    {
      if (v6 > v9)
      {
        v11 = *(result + 96);
        v12 = *(a2 + 24);
        if (*v11 < v12)
        {
          if (v11[v9] > v12)
          {
            v13 = *(result + 96);
            v14 = *(result + 88);
            do
            {
              v15 = v14 >> 1;
              v16 = &v13[v14 >> 1];
              v18 = *v16;
              v17 = v16 + 1;
              v14 += ~(v14 >> 1);
              if (v18 < v12)
              {
                v13 = v17;
              }

              else
              {
                v14 = v15;
              }
            }

            while (v14);
            v19 = v13 - v11;
            v20 = v13 - v11;
            if (*(result + 73) == 1 && v20 != v8)
            {
              v22 = v20 - 1;
              if (v6 > v20 - 1)
              {
                if (v6 > v20)
                {
                  v23 = v11[v22];
                  v24 = *(v11 + v19) - v23;
                  v25 = 0.0;
                  if (v24 > 0.0)
                  {
                    v25 = (v12 - v23) / v24;
                  }

                  if (v7 > v22)
                  {
                    if (v7 > v20)
                    {
                      v10 = vaddq_f32(vmulq_n_f32(*(*(result + 120) + 16 * v22), 1.0 - v25), vmulq_n_f32(*(*(result + 120) + 16 * v20), v25));
                      goto LABEL_26;
                    }

LABEL_45:
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                  }

LABEL_44:
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_45;
                }

LABEL_43:
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
                goto LABEL_44;
              }

LABEL_42:
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_43;
            }

            if (v7 > v20)
            {
              v10 = *(*(result + 120) + 16 * v20);
              goto LABEL_26;
            }

LABEL_41:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_42;
          }

          if (v7 > v9)
          {
            v10 = *(*(result + 120) + 16 * v9);
            goto LABEL_26;
          }

LABEL_40:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_41;
        }

        if (v7)
        {
LABEL_25:
          v10 = **(result + 120);
          goto LABEL_26;
        }

LABEL_39:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_40;
      }

LABEL_38:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_39;
    }

LABEL_37:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_38;
  }

  v10 = *a4;
LABEL_26:
  *a6 = v10;
  return result;
}

double re::KeyframeAnimation<re::Quaternion<float>>::totalDuration(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    return *(*(a1 + 96) + 4 * v1 - 4);
  }

  else
  {
    return 0.0;
  }
}

void re::KeyframeAnimation<re::Quaternion<float>>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_46:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_47;
  }

  v7 = *(a1 + 88);
  v8 = *(a1 + 112);
  if (v7 >= v8)
  {
    v9 = *(a1 + 112);
  }

  else
  {
    v9 = *(a1 + 88);
  }

  v10 = v9 - 1;
  if (v9 == 1)
  {
    goto LABEL_25;
  }

  if (!v9)
  {
    v11 = *a4;
LABEL_26:
    *a6 = v11;
    return;
  }

  if (!v7)
  {
    goto LABEL_46;
  }

  if (v7 <= v10)
  {
LABEL_47:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_48;
  }

  v12 = *(a1 + 96);
  v13 = *(a2 + 24);
  if (*v12 >= v13)
  {
    if (v8)
    {
LABEL_25:
      v11 = **(a1 + 120);
      goto LABEL_26;
    }

LABEL_48:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_49:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_50:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_51;
  }

  if (v12[v10] <= v13)
  {
    if (v8 > v10)
    {
      v11 = *(*(a1 + 120) + 16 * v10);
      goto LABEL_26;
    }

    goto LABEL_49;
  }

  v14 = *(a1 + 96);
  v15 = *(a1 + 88);
  do
  {
    v16 = v15 >> 1;
    v17 = &v14[v15 >> 1];
    v19 = *v17;
    v18 = v17 + 1;
    v15 += ~(v15 >> 1);
    if (v19 < v13)
    {
      v14 = v18;
    }

    else
    {
      v15 = v16;
    }
  }

  while (v15);
  v20 = v14 - v12;
  v21 = v14 - v12;
  v22 = *(a1 + 73) != 1 || v21 == v9;
  if (v22)
  {
    if (v8 > v21)
    {
      v11 = *(*(a1 + 120) + 16 * v21);
      goto LABEL_26;
    }

    goto LABEL_50;
  }

  v23 = v21 - 1;
  if (v7 <= v21 - 1)
  {
LABEL_51:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_52;
  }

  if (v7 <= v21)
  {
LABEL_52:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_53:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_54:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v24 = v12[v23];
  v25 = *(v12 + v20) - v24;
  v26 = 0.0;
  if (v25 > 0.0)
  {
    v26 = (v13 - v24) / v25;
  }

  if (v8 <= v23)
  {
    goto LABEL_53;
  }

  if (v8 <= v21)
  {
    goto LABEL_54;
  }

  v27 = *(a1 + 120);
  v28 = *(v27 + 16 * v23);
  v29 = *(v27 + 16 * v21);
  v30 = vmulq_f32(v28, v29);
  v31 = vextq_s8(v30, v30, 8uLL);
  *v30.f32 = vadd_f32(*v30.f32, *v31.f32);
  v30.f32[0] = vaddv_f32(*v30.f32);
  v31.i64[0] = 0;
  v32 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v30, v31)), 0), vnegq_f32(v29), v29);
  v33 = 1.0;
  v34 = 1.0 - v26;
  v35 = vsubq_f32(v28, v32);
  v36 = vmulq_f32(v35, v35);
  v62 = v32;
  v63 = v28;
  v37 = vaddq_f32(v28, v32);
  v38 = vmulq_f32(v37, v37);
  v39 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v36.i8, *&vextq_s8(v36, v36, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v38.i8, *&vextq_s8(v38, v38, 8uLL)))));
  v40 = v39 + v39;
  v22 = (v39 + v39) == 0.0;
  v41 = 1.0;
  if (!v22)
  {
    v41 = sinf(v40) / v40;
  }

  v42 = v41;
  v43 = vrecpe_f32(LODWORD(v41));
  v44 = vmul_f32(v43, vrecps_f32(LODWORD(v42), v43));
  LODWORD(v45) = vmul_f32(v44, vrecps_f32(LODWORD(v42), v44)).u32[0];
  if ((v34 * v40) != 0.0)
  {
    v60 = v45;
    v44.f32[0] = sinf(v34 * v40);
    v45 = v60;
    v33 = v44.f32[0] / (v34 * v40);
  }

  v44.f32[0] = v34 * (v45 * v33);
  v46 = vdupq_lane_s32(v44, 0);
  v47 = v26 * v40;
  v48 = 1.0;
  if (v47 != 0.0)
  {
    v59 = v46;
    v61 = v45;
    v49 = sinf(v47);
    v46 = v59;
    v45 = v61;
    v48 = v49 / v47;
  }

  v50 = vmlaq_f32(vmulq_n_f32(v62, v26 * (v45 * v48)), v63, v46);
  v51 = vmulq_f32(v50, v50);
  v52 = vadd_f32(*v51.i8, *&vextq_s8(v51, v51, 8uLL));
  if (vaddv_f32(v52) == 0.0)
  {
    v53 = 0;
    v54 = 0x3F80000000000000;
  }

  else
  {
    v55 = vadd_f32(v52, vdup_lane_s32(v52, 1)).u32[0];
    v56 = vrsqrte_f32(v55);
    v57 = vmul_f32(v56, vrsqrts_f32(v55, vmul_f32(v56, v56)));
    v58 = vmulq_n_f32(v50, vmul_f32(v57, vrsqrts_f32(v55, vmul_f32(v57, v57))).f32[0]);
    v54 = v58.i64[1];
    v53 = v58.i64[0];
  }

  *a6 = v53;
  *(a6 + 8) = v54;
}

double re::KeyframeAnimation<re::GenericSRT<float>>::totalDuration(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    return *(*(a1 + 96) + 4 * v1 - 4);
  }

  else
  {
    return 0.0;
  }
}

double re::KeyframeAnimation<re::GenericSRT<float>>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, _OWORD *a6)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_39:
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_40;
  }

  v7 = *(a1 + 88);
  v8 = *(a1 + 112);
  if (v7 >= v8)
  {
    v9 = *(a1 + 112);
  }

  else
  {
    v9 = *(a1 + 88);
  }

  v10 = v9 - 1;
  if (v9 == 1)
  {
    goto LABEL_25;
  }

  if (!v9)
  {
    v11 = *a4;
    v12 = a4[1];
    v13 = a4[2];
LABEL_27:
    a6[1] = v12;
    a6[2] = v13;
    *a6 = v11;
    return *&v11;
  }

  if (!v7)
  {
    goto LABEL_39;
  }

  if (v7 <= v10)
  {
LABEL_40:
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_41;
  }

  v14 = *(a1 + 96);
  v15 = *(a2 + 24);
  if (*v14 >= v15)
  {
    if (v8)
    {
LABEL_25:
      v25 = *(a1 + 120);
      goto LABEL_26;
    }

LABEL_41:
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_42:
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_43;
  }

  if (v14[v10] <= v15)
  {
    if (v8 > v10)
    {
      v25 = (*(a1 + 120) + 48 * v10);
      goto LABEL_26;
    }

    goto LABEL_42;
  }

  v16 = *(a1 + 96);
  v17 = *(a1 + 88);
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[v17 >> 1];
    v21 = *v19;
    v20 = v19 + 1;
    v17 += ~(v17 >> 1);
    if (v21 < v15)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  v22 = v16 - v14;
  v23 = v16 - v14;
  if (*(a1 + 73) != 1 || v23 == v9)
  {
    if (v8 > v23)
    {
      v25 = (*(a1 + 120) + 48 * v23);
LABEL_26:
      v11 = *v25;
      v12 = v25[1];
      v13 = v25[2];
      goto LABEL_27;
    }

LABEL_43:
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_44;
  }

  v26 = v23 - 1;
  if (v7 <= v23 - 1)
  {
LABEL_44:
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_45;
  }

  if (v7 <= v23)
  {
LABEL_45:
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_46:
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_47:
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v27 = v14[v26];
  v28 = *(v14 + v22) - v27;
  v29 = 0.0;
  if (v28 > 0.0)
  {
    v29 = (v15 - v27) / v28;
  }

  if (v8 <= v26)
  {
    goto LABEL_46;
  }

  if (v8 <= v23)
  {
    goto LABEL_47;
  }

  re::lerp<float>((*(a1 + 120) + 48 * v26), (*(a1 + 120) + 48 * v23), &v32, v29);
  v30 = v33;
  *a6 = v32;
  a6[1] = v30;
  *&v11 = v34;
  a6[2] = v34;
  return *&v11;
}

double re::KeyframeAnimation<re::SkeletalPose>::totalDuration(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    return *(*(a1 + 96) + 4 * v1 - 4);
  }

  else
  {
    return 0.0;
  }
}

void re::KeyframeAnimation<re::SkeletalPose>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_41:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_42;
  }

  v6 = *(a1 + 88);
  v7 = *(a1 + 112);
  if (v6 >= v7)
  {
    v8 = *(a1 + 112);
  }

  else
  {
    v8 = *(a1 + 88);
  }

  v9 = v8 - 1;
  if (v8 == 1)
  {
    goto LABEL_25;
  }

  if (!v8)
  {
    goto LABEL_26;
  }

  if (!v6)
  {
    goto LABEL_41;
  }

  if (v6 <= v9)
  {
LABEL_42:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_43;
  }

  v11 = *(a1 + 96);
  v12 = *(a2 + 24);
  if (*v11 >= v12)
  {
    if (v7)
    {
LABEL_25:
      a4 = *(a1 + 120);
      goto LABEL_26;
    }

LABEL_43:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_44:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_45;
  }

  if (v11[v9] <= v12)
  {
    if (v7 > v9)
    {
      a4 = (*(a1 + 120) + 88 * v9);
      goto LABEL_26;
    }

    goto LABEL_44;
  }

  v13 = *(a1 + 96);
  v14 = *(a1 + 88);
  do
  {
    v15 = v14 >> 1;
    v16 = &v13[v14 >> 1];
    v18 = *v16;
    v17 = v16 + 1;
    v14 += ~(v14 >> 1);
    if (v18 < v12)
    {
      v13 = v17;
    }

    else
    {
      v14 = v15;
    }
  }

  while (v14);
  v19 = v13 - v11;
  v20 = v13 - v11;
  if (*(a1 + 73) != 1 || v20 == v8)
  {
    if (v7 > v20)
    {
      a4 = (*(a1 + 120) + 88 * v20);
LABEL_26:

      re::AnimationValueTraits<re::SkeletalPose>::copy(a4, a6);
      return;
    }

LABEL_45:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_46;
  }

  v22 = v20 - 1;
  if (v6 <= v20 - 1)
  {
LABEL_46:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_47;
  }

  if (v6 <= v20)
  {
LABEL_47:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_48:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_49:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v23 = v11[v22];
  v24 = *(v11 + v19) - v23;
  v25 = 0.0;
  if (v24 > 0.0)
  {
    v25 = (v12 - v23) / v24;
  }

  if (v7 <= v22)
  {
    goto LABEL_48;
  }

  if (v7 <= v20)
  {
    goto LABEL_49;
  }

  v26 = *(a1 + 120);

  re::AnimationValueTraits<re::SkeletalPose>::interpolate((v26 + 88 * v22), (v26 + 88 * v20), a6, v25);
}

double re::KeyframeAnimation<re::BlendShapeWeights>::totalDuration(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    return *(*(a1 + 96) + 4 * v1 - 4);
  }

  else
  {
    return 0.0;
  }
}

uint64_t *re::KeyframeAnimation<re::BlendShapeWeights>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  if (!a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_41:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_42;
  }

  v6 = *(a1 + 88);
  v7 = *(a1 + 112);
  if (v6 >= v7)
  {
    v8 = *(a1 + 112);
  }

  else
  {
    v8 = *(a1 + 88);
  }

  v9 = v8 - 1;
  if (v8 == 1)
  {
    goto LABEL_25;
  }

  if (!v8)
  {
    goto LABEL_26;
  }

  if (!v6)
  {
    goto LABEL_41;
  }

  if (v6 <= v9)
  {
LABEL_42:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_43;
  }

  v11 = *(a1 + 96);
  v12 = *(a2 + 24);
  if (*v11 >= v12)
  {
    if (v7)
    {
LABEL_25:
      a4 = *(a1 + 120);
      goto LABEL_26;
    }

LABEL_43:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_44:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_45;
  }

  if (v11[v9] <= v12)
  {
    if (v7 > v9)
    {
      a4 = (*(a1 + 120) + 32 * v9);
      goto LABEL_26;
    }

    goto LABEL_44;
  }

  v13 = *(a1 + 96);
  v14 = *(a1 + 88);
  do
  {
    v15 = v14 >> 1;
    v16 = &v13[v14 >> 1];
    v18 = *v16;
    v17 = v16 + 1;
    v14 += ~(v14 >> 1);
    if (v18 < v12)
    {
      v13 = v17;
    }

    else
    {
      v14 = v15;
    }
  }

  while (v14);
  v19 = v13 - v11;
  v20 = v13 - v11;
  if (*(a1 + 73) != 1 || v20 == v8)
  {
    if (v7 > v20)
    {
      a4 = (*(a1 + 120) + 32 * v20);
LABEL_26:

      return re::AnimationValueTraits<re::BlendShapeWeights>::copy(a4, a6);
    }

LABEL_45:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_46;
  }

  v23 = v20 - 1;
  if (v6 <= v20 - 1)
  {
LABEL_46:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_47;
  }

  if (v6 <= v20)
  {
LABEL_47:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_48:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_49:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v24 = v11[v23];
  v25 = *(v11 + v19) - v24;
  v26 = 0.0;
  if (v25 > 0.0)
  {
    v26 = (v12 - v24) / v25;
  }

  if (v7 <= v23)
  {
    goto LABEL_48;
  }

  if (v7 <= v20)
  {
    goto LABEL_49;
  }

  v27 = *(a1 + 120);

  return re::AnimationValueTraits<re::BlendShapeWeights>::interpolate((v27 + 32 * v23), (v27 + 32 * v20), a6, v26);
}

uint64_t *re::KeyframeAnimation<float>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0B00;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::KeyframeAnimation<float>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0B00;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::KeyframeAnimation<double>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0B98;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::KeyframeAnimation<double>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0B98;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::KeyframeAnimation<re::Vector2<float>>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0C30;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::KeyframeAnimation<re::Vector2<float>>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0C30;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::KeyframeAnimation<re::Vector3<float>>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0CC8;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::KeyframeAnimation<re::Vector3<float>>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0CC8;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::KeyframeAnimation<re::Vector4<float>>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0D60;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::KeyframeAnimation<re::Vector4<float>>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0D60;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::KeyframeAnimation<re::Quaternion<float>>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0DF8;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::KeyframeAnimation<re::Quaternion<float>>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0DF8;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::KeyframeAnimation<re::GenericSRT<float>>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0E90;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::KeyframeAnimation<re::GenericSRT<float>>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0E90;
  v2 = (a1 + 5);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::KeyframeAnimation<re::SkeletalPose>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0F28;
  v2 = (a1 + 5);
  re::FixedArray<re::SkeletalPose>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::KeyframeAnimation<re::SkeletalPose>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0F28;
  v2 = (a1 + 5);
  re::FixedArray<re::SkeletalPose>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

uint64_t *re::KeyframeAnimation<re::BlendShapeWeights>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0FC0;
  v2 = (a1 + 5);
  re::FixedArray<re::BlendShapeWeights>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));
  return a1;
}

void re::KeyframeAnimation<re::BlendShapeWeights>::~KeyframeAnimation(uint64_t *a1)
{
  *a1 = &unk_1F5CB0FC0;
  v2 = (a1 + 5);
  re::FixedArray<re::BlendShapeWeights>::deinit(a1 + 13);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit(v2);
  re::StringID::destroyString((a1 + 3));

  JUMPOUT(0x1E6906520);
}

BOOL re::TimelineEventData::addParameterDescription(void *a1, StringID *a2, int a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  v7 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a1 + 17), a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &buf);
  if (buf.n128_u32[3] == 0x7FFFFFFF || !*(a1[19] + 40 * buf.n128_u32[3] + 32))
  {
    result = 1;
    if (a3 > 3)
    {
      if (a3 != 4)
      {
        if (a3 == 5)
        {
          buf.n128_u64[0] = a1[47];
          buf.n128_u64[1] = 5;
          *&v22 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add((a1 + 17), a2, &buf).n128_u64[0];
          if (!a1[50])
          {
            ++a1[47];
            return 1;
          }

LABEL_31:
          re::internal::assertLog(4, v21, v22, "assertion failure: '%s' (%s:line %i) Can not define additional parameters after adding events.", "parameters.isEmpty()", "addParameter", 32);
          _os_crash();
          __break(1u);
        }

        if (a3 != 6)
        {
          return result;
        }

        buf.n128_u64[0] = a1[53];
        buf.n128_u64[1] = 6;
        *&v14 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add((a1 + 17), a2, &buf).n128_u64[0];
        if (!a1[56])
        {
          ++a1[53];
          return 1;
        }

        goto LABEL_29;
      }

      buf.n128_u64[0] = a1[41];
      buf.n128_u64[1] = 4;
      *&v18 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add((a1 + 17), a2, &buf).n128_u64[0];
      if (!a1[44])
      {
        ++a1[41];
        return 1;
      }
    }

    else
    {
      if (a3 != 1)
      {
        if (a3 == 2)
        {
          buf.n128_u64[0] = a1[29];
          buf.n128_u64[1] = 2;
          *&v20 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add((a1 + 17), a2, &buf).n128_u64[0];
          if (!a1[32])
          {
            ++a1[29];
            return 1;
          }

          goto LABEL_30;
        }

        if (a3 != 3)
        {
          return result;
        }

        buf.n128_u64[0] = a1[35];
        buf.n128_u64[1] = 3;
        *&v12 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add((a1 + 17), a2, &buf).n128_u64[0];
        if (!a1[38])
        {
          ++a1[35];
          return 1;
        }

        goto LABEL_28;
      }

      buf.n128_u64[0] = a1[23];
      buf.n128_u64[1] = 1;
      *&v16 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add((a1 + 17), a2, &buf).n128_u64[0];
      if (!a1[26])
      {
        ++a1[23];
        return 1;
      }

      re::internal::assertLog(4, v15, v16, "assertion failure: '%s' (%s:line %i) Can not define additional parameters after adding events.", "parameters.isEmpty()", "addParameter", 32);
      _os_crash();
      __break(1u);
    }

    re::internal::assertLog(4, v17, v18, "assertion failure: '%s' (%s:line %i) Can not define additional parameters after adding events.", "parameters.isEmpty()", "addParameter", 32);
    _os_crash();
    __break(1u);
LABEL_28:
    re::internal::assertLog(4, v11, v12, "assertion failure: '%s' (%s:line %i) Can not define additional parameters after adding events.", "parameters.isEmpty()", "addParameter", 32);
    _os_crash();
    __break(1u);
LABEL_29:
    re::internal::assertLog(4, v13, v14, "assertion failure: '%s' (%s:line %i) Can not define additional parameters after adding events.", "parameters.isEmpty()", "addParameter", 32);
    _os_crash();
    __break(1u);
LABEL_30:
    re::internal::assertLog(4, v19, v20, "assertion failure: '%s' (%s:line %i) Can not define additional parameters after adding events.", "parameters.isEmpty()", "addParameter", 32);
    _os_crash();
    __break(1u);
    goto LABEL_31;
  }

  v8 = *re::animationLogObjects(v7);
  result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (result)
  {
    var1 = a2->var1;
    buf.n128_u32[0] = 136315138;
    *(buf.n128_u64 + 4) = var1;
    _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Event parameter named %s was already declared.", &buf, 0xCu);
    return 0;
  }

  return result;
}

__n128 re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, __n128 *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v10, v9);
    re::StringID::StringID((v8 + 8), a2);
    result = *a3;
    *(v8 + 24) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

void re::TimelineEventData::addEvent(re::TimelineEventData *this, uint64_t a2)
{
  v4 = this;
  v77 = *MEMORY[0x1E69E9840];
  v5 = *(this + 23);
  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      LODWORD(v72) = 0;
      this = re::DynamicArray<float>::insert(v4 + 24, i + v5 * a2, &v72);
      v5 = *(v4 + 23);
    }
  }

  v7 = *(v4 + 29);
  if (v7)
  {
    v8 = 0;
    v9 = *(v4 + 32);
    while (1)
    {
      v10 = v8 + v7 * a2;
      v11 = v9 + 1;
      if (v9 + 1 <= v10)
      {
        break;
      }

      if (v9 >= *(v4 + 31))
      {
        this = re::DynamicArray<float>::growCapacity(v4 + 30, v9 + 1);
        v9 = *(v4 + 32);
      }

      v12 = *(v4 + 34);
      v13 = (v12 + 4 * v9);
      if (v9 > v10)
      {
        *v13 = *(v13 - 1);
        v14 = v12 + 4 * v10;
        if (v13 - 1 != v14)
        {
          this = memmove((v14 + 4), v14, v13 - v14 - 4);
          v12 = *(v4 + 34);
          v9 = *(v4 + 32);
        }

        v13 = (v12 + 4 * v10);
      }

      *v13 = 0;
      *(v4 + 32) = ++v9;
      ++*(v4 + 66);
      ++v8;
      v7 = *(v4 + 29);
      if (v8 >= v7)
      {
        goto LABEL_14;
      }
    }

    v60 = 0;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v72 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v64 = 136315906;
    v65 = "insert";
    v66 = 1024;
    v67 = 887;
    v68 = 2048;
    v69 = v8 + a2 * v7;
    v70 = 2048;
    v71 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_78;
  }

LABEL_14:
  v15 = *(v4 + 35);
  if (v15)
  {
    v7 = 0;
    v10 = &str_67;
    while (1)
    {
      v16 = v15 * a2;
      v2 = v15 * a2 + v7;
      v60 = 0;
      v61 = &str_67;
      v17 = *(v4 + 38);
      v8 = v17 + 1;
      if (v17 + 1 <= v2)
      {
        break;
      }

      if (v17 >= *(v4 + 37))
      {
        this = re::DynamicArray<re::StringID>::growCapacity(v4 + 36, v17 + 1);
        v17 = *(v4 + 38);
      }

      v18 = (*(v4 + 40) + 16 * v17);
      if (v17 <= v2)
      {
        *v18 = 0;
        v18[1] = &str_67;
        ++*(v4 + 38);
        ++*(v4 + 78);
      }

      else
      {
        v19 = *(v18 - 1);
        *v18 = *(v18 - 2);
        v18[1] = v19;
        *(v18 - 2) = 0;
        *(v18 - 1) = &str_67;
        v20 = *(v4 + 40);
        v21 = *(v4 + 38);
        v22 = (v20 + 16 * v21 - 16);
        if (v22 != (v20 + 16 * v2))
        {
          v23 = 16 * (v7 + v16) - 16 * v21 + 16;
          do
          {
            v24 = (v22 - 16);
            re::StringID::operator=(v22, v22 - 2);
            v22 = v24;
            v23 += 16;
          }

          while (v23);
          v20 = *(v4 + 40);
        }

        this = re::StringID::operator=((v20 + 16 * v2), &v60);
        v25 = v60;
        ++*(v4 + 38);
        ++*(v4 + 78);
        if (v25)
        {
        }
      }

      ++v7;
      v15 = *(v4 + 35);
      if (v7 >= v15)
      {
        goto LABEL_28;
      }
    }

LABEL_78:
    v63 = 0;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v72 = 0u;
    a2 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v64 = 136315906;
    v65 = "insert";
    v66 = 1024;
    v67 = 887;
    v68 = 2048;
    v69 = v2;
    v70 = 2048;
    v71 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_79:
    v60 = 0;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v72 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v64 = 136315906;
    v65 = "insert";
    v66 = 1024;
    v67 = 887;
    v68 = 2048;
    v69 = v7 + a2 * v10;
    v70 = 2048;
    v71 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_80:
    v63 = 0;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v72 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v64 = 136315906;
    v65 = "insert";
    v66 = 1024;
    v67 = 887;
    v68 = 2048;
    v69 = v2;
    v70 = 2048;
    v71 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_81;
  }

LABEL_28:
  v10 = *(v4 + 41);
  if (v10)
  {
    v7 = 0;
    v26 = *(v4 + 44);
    do
    {
      v2 = v7 + v10 * a2;
      v8 = v26 + 1;
      if (v26 + 1 <= v2)
      {
        goto LABEL_79;
      }

      if (v26 >= *(v4 + 43))
      {
        this = re::DynamicArray<re::Vector4<float>>::growCapacity(v4 + 42, v26 + 1);
        v26 = *(v4 + 44);
      }

      v27 = *(v4 + 46) + 16 * v26;
      if (v26 > v2)
      {
        *v27 = *(v27 - 16);
        v28 = *(v4 + 46);
        v29 = v28 + 16 * v2;
        v30 = v28 + 16 * *(v4 + 44) - 16;
        if (v30 != v29)
        {
          this = memmove((v29 + 16), v29, v30 - v29);
          v28 = *(v4 + 46);
        }

        v27 = v28 + 16 * v2;
      }

      *v27 = 0;
      *(v27 + 8) = 0;
      v26 = *(v4 + 44) + 1;
      *(v4 + 44) = v26;
      ++*(v4 + 90);
      ++v7;
      v10 = *(v4 + 41);
    }

    while (v7 < v10);
  }

  v31 = *(v4 + 47);
  if (v31)
  {
    for (j = 0; j < v31; ++j)
    {
      v33 = v31 * a2;
      v2 = v31 * a2 + j;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v34 = *(v4 + 50);
      v8 = v34 + 1;
      if (v34 + 1 <= v2)
      {
        goto LABEL_80;
      }

      if (v34 >= *(v4 + 49))
      {
        re::DynamicArray<re::FixedArray<unsigned char>>::growCapacity(v4 + 48, v34 + 1);
        v34 = *(v4 + 50);
      }

      v35 = (*(v4 + 52) + 24 * v34);
      if (v34 <= v2)
      {
        *v35 = 0;
        v35[1] = 0;
        v35[2] = 0;
        *v35 = v60;
        v60 = 0;
        v35[1] = v61;
        v61 = 0;
        v42 = v35[2];
        v35[2] = v62;
        v62 = v42;
      }

      else
      {
        *v35 = *(v35 - 3);
        v36 = *(v35 - 1);
        *(v35 - 2) = 0;
        *(v35 - 1) = 0;
        *(v35 - 3) = 0;
        v35[2] = v36;
        v37 = *(v4 + 52);
        v38 = *(v4 + 50);
        v39 = (v37 + 24 * v38 - 24);
        if (v39 != (v37 + 24 * v2))
        {
          v40 = 24 * (j + v33) - 24 * v38 + 24;
          do
          {
            v41 = v39 - 3;
            re::FixedArray<float>::operator=(v39, v39 - 3);
            v39 = v41;
            v40 += 24;
          }

          while (v40);
          v37 = *(v4 + 52);
        }

        re::FixedArray<float>::operator=((v37 + 24 * v2), &v60);
      }

      ++*(v4 + 50);
      ++*(v4 + 102);
      this = v60;
      if (v60 && v61)
      {
        this = (*(*v60 + 40))();
      }

      v31 = *(v4 + 47);
    }
  }

  v43 = *(v4 + 53);
  if (v43)
  {
    v44 = 0;
    while (1)
    {
      v45 = v43 * a2;
      v2 = v43 * a2 + v44;
      v46 = *(v4 + 56);
      v8 = v46 + 1;
      if (v46 + 1 <= v2)
      {
        break;
      }

      v47 = *(v4 + 55);
      if (v46 >= v47)
      {
        if (v47 < v8)
        {
          if (*(v4 + 54))
          {
            v48 = 2 * v47;
            if (!v47)
            {
              v48 = 8;
            }

            if (v48 <= v8)
            {
              v49 = v8;
            }

            else
            {
              v49 = v48;
            }

            this = re::DynamicArray<re::ObjCObject>::setCapacity(v4 + 54, v49);
          }

          else
          {
            this = re::DynamicArray<re::ObjCObject>::setCapacity(v4 + 54, v8);
            ++*(v4 + 114);
          }
        }

        v46 = *(v4 + 56);
      }

      v50 = (*(v4 + 58) + 8 * v46);
      if (v46 <= v2)
      {
        *v50 = 0;
      }

      else
      {
        v51 = *(v50 - 1);
        *(v50 - 1) = 0;
        *v50 = v51;
        v52 = *(v4 + 58);
        v53 = *(v4 + 56);
        v54 = (v52 + 8 * v53 - 8);
        if (v54 != (v52 + 8 * v2))
        {
          v55 = 8 * (v44 + v45) - 8 * v53 + 8;
          v56 = (v52 + 8 * v53 - 8);
          do
          {
            v57 = *--v56;
            *v56 = 0;
            v58 = *v54;
            *v54 = v57;

            v54 = v56;
            v55 += 8;
          }

          while (v55);
          v52 = *(v4 + 58);
        }

        v59 = *(v52 + 8 * v2);
        *(v52 + 8 * v2) = 0;

        v46 = *(v4 + 56);
      }

      *(v4 + 56) = v46 + 1;
      ++*(v4 + 114);
      ++v44;
      v43 = *(v4 + 53);
      if (v44 >= v43)
      {
        return;
      }
    }

LABEL_81:
    v60 = 0;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v72 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v64 = 136315906;
    v65 = "insert";
    v66 = 1024;
    v67 = 887;
    v68 = 2048;
    v69 = v2;
    v70 = 2048;
    v71 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }
}

void re::EventTimeline::setEventData(re::EventTimeline *this, const re::TimelineEventData *a2, re::Allocator *a3)
{
  v6 = (*(*a3 + 32))(a3, 584, 8);
  ArcSharedObject::ArcSharedObject(v6, 0);
  v7[2] = a3;
  *v7 = &unk_1F5CB11E0;
  re::TimelineEventData::TimelineEventData((v7 + 3), a2);
  v8 = *(this + 10);
  *(this + 10) = v6;
  if (v8)
  {
  }
}

void re::TimelineEventData::addEvent(re::TimelineEventData *this@<X0>, double a2@<D0>, double a3@<D1>, uint64_t a4@<X1>, uint64_t a5@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a3 < 0.0)
  {
    *a5 = 0;
    return;
  }

  if (a3 != 0.0)
  {
    v12 = *(this + 4);
    if (v12)
    {
      v13 = 0;
      v14 = *(this + 6);
      while (*(v14 + 4 * v13) < a2)
      {
        if (v12 == ++v13)
        {
          v15 = (this + 16);
          v13 = *(this + 4);
          goto LABEL_21;
        }
      }

      v15 = (this + 16);
      if (v13)
      {
LABEL_21:
        v18 = v13 - 1;
        if (v12 <= v13 - 1)
        {
LABEL_29:
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v22 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_30:
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v22 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        if (*(this + 9) <= v18)
        {
          goto LABEL_30;
        }

        v19 = *(v14 + 4 * v18) + *(*(this + 11) + 4 * v18);
        v20 = a2;
        if (v19 <= v20 || vabds_f32(v19, v20) < (((fabsf(v20) + fabsf(v19)) + 1.0) * 0.00001))
        {
LABEL_27:
          *&v22 = v20;
          re::DynamicArray<float>::insert(v15, v13, &v22);
          v21 = a3;
          *&v22 = v21;
          re::DynamicArray<float>::insert(this + 7, v13, &v22);
          re::TimelineEventData::addEvent(this, v13);
          *a5 = 1;
          *(a5 + 8) = v13;
          return;
        }

        re::internal::assertLog(6, a4, "assertion failure: '%s' (%s:line %i) Can not add event inteval at time %f with duration %f. It overlaps with an existing event.", "false", "addEvent", 143, *&a2, *&a3);
        v15 = _os_crash();
        __break(1u);
      }
    }

    else
    {
      v15 = (this + 16);
    }

    v13 = 0;
    v20 = a2;
    goto LABEL_27;
  }

  v7 = *(this + 14);
  if (!v7)
  {
    v8 = 0;
    v10 = (this + 96);
LABEL_18:
    v16 = a2;
    *&v22 = v16;
    re::DynamicArray<float>::insert(v10, v8, &v22);
    re::TimelineEventData::addEvent(this, *(this + 4) + v8);
    v17 = *(this + 4) + v8;
    *a5 = 1;
    *(a5 + 8) = v17;
    return;
  }

  v8 = 0;
  v9 = *(this + 16);
  while (*(v9 + 4 * v8) < a2)
  {
    if (v7 == ++v8)
    {
      v10 = (this + 96);
      v8 = *(this + 14);
      goto LABEL_16;
    }
  }

  v10 = (this + 96);
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (v7 <= v8 - 1)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_29;
  }

  if (*(v9 + 4 * (v8 - 1)) < a2)
  {
    goto LABEL_18;
  }

  re::internal::assertLog(5, a4, "assertion failure: '%s' (%s:line %i) Can not add skip only, fence event at time %f. It overlaps with an existing fence event.", "false", "addEvent", 127, *&a2);
  _os_crash();
  __break(1u);
}

void *re::DynamicArray<float>::insert(void *this, unint64_t a2, _DWORD *a3)
{
  v4 = this[2];
  if (v4 + 1 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = this;
  if (v4 >= this[1])
  {
    this = re::DynamicArray<float>::growCapacity(this, v4 + 1);
    v4 = v6[2];
  }

  v7 = v6[4];
  v8 = (v7 + 4 * v4);
  if (v4 <= a2)
  {
    *v8 = *a3;
  }

  else
  {
    *v8 = *(v8 - 1);
    v9 = v7 + 4 * a2;
    if (v8 - 1 != v9)
    {
      this = memmove((v9 + 4), v9, v8 - v9 - 4);
      v7 = v6[4];
      v4 = v6[2];
    }

    *(v7 + 4 * a2) = *a3;
  }

  v6[2] = v4 + 1;
  ++*(v6 + 6);
  return this;
}

double re::TimelineEventData::totalDuration(re::TimelineEventData *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(*(this + 6) + 4 * v1 - 4) + *(*(this + 11) + 4 * *(this + 9) - 4);
  }

  else
  {
    v2 = 0.0;
  }

  v3 = *(this + 14);
  if (v3)
  {
    v4 = *(this + 16) + 4 * v3;
    if (v2 < *(v4 - 4))
    {
      return *(v4 - 4);
    }
  }

  return v2;
}

uint64_t re::TimelineEventData::parameterName(re::TimelineEventData *this, unint64_t a2)
{
  if (*(this + 41) <= a2)
  {
    return 0;
  }

  v2 = *(this + 42);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 19);
    while (1)
    {
      v5 = *v4;
      v4 += 10;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 42);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 == v2)
  {
    return 0;
  }

  v6 = 0;
  while (v6 != a2)
  {
    ++v6;
    if (v2 <= v3 + 1)
    {
      v7 = v3 + 1;
    }

    else
    {
      v7 = *(this + 42);
    }

    while (v7 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 19) + 40 * v3) & 0x80000000) != 0)
      {
        goto LABEL_18;
      }
    }

    LODWORD(v3) = v7;
LABEL_18:
    if (v3 == v2)
    {
      return 0;
    }
  }

  return *(*(this + 19) + 40 * v3 + 16);
}

uint64_t re::TimelineEventData::instancedTimelineType(re::TimelineEventData *this)
{
  if (*(this + 472) - 1 > 6)
  {
    return 51;
  }

  else
  {
    return *&a4[4 * (*(this + 472) - 1)];
  }
}

uint64_t re::EventTimeline::instance(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD **a6, int *a7)
{
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        v7 = (*(*a3 + 32))(a3, 128, 8);
        v13 = re::Timeline::Timeline(v7, 49);
        *(v13 + 72) = 0;
        v14 = &unk_1F5CB1598;
      }

      else
      {
        v7 = (*(*a3 + 32))(a3, 128, 8);
        v13 = re::Timeline::Timeline(v7, 49);
        *(v13 + 72) = 0;
        v14 = &unk_1F5CB1648;
      }

      goto LABEL_19;
    }

    if (a2 == 6)
    {
      v7 = (*(*a3 + 32))(a3, 128, 8);
      v13 = re::Timeline::Timeline(v7, 49);
      *(v13 + 72) = 0;
      v14 = &unk_1F5CB12D8;
      goto LABEL_19;
    }

    if (a2 == 7)
    {
      v7 = (*(*a3 + 32))(a3, 128, 8);
      v13 = re::Timeline::Timeline(v7, 49);
      *(v13 + 72) = 0;
      v14 = &unk_1F5CB16F8;
      goto LABEL_19;
    }

    if (a2 != 8)
    {
      return v7;
    }

LABEL_10:
    v7 = (*(*a3 + 32))(a3, 128, 8);
    v13 = re::Timeline::Timeline(v7, 49);
    *(v13 + 72) = 0;
    v14 = &unk_1F5CB1228;
    goto LABEL_19;
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v7 = (*(*a3 + 32))(a3, 128, 8);
      v13 = re::Timeline::Timeline(v7, 49);
      *(v13 + 72) = 0;
      v14 = &unk_1F5CB1438;
    }

    else
    {
      v7 = (*(*a3 + 32))(a3, 128, 8);
      v13 = re::Timeline::Timeline(v7, 49);
      *(v13 + 72) = 0;
      v14 = &unk_1F5CB14E8;
    }

    goto LABEL_19;
  }

  if ((a2 + 1) < 2)
  {
    goto LABEL_10;
  }

  if (a2 != 1)
  {
    return v7;
  }

  v7 = (*(*a3 + 32))(a3, 128, 8);
  v13 = re::Timeline::Timeline(v7, 49);
  *(v13 + 72) = 0;
  v14 = &unk_1F5CB1388;
LABEL_19:
  *v13 = v14;
  *(v13 + 80) = -1;
  *(v13 + 96) = 0;
  *(v13 + 104) = a4;
  *(v13 + 112) = a1;
  *(v13 + 120) = a5;
  re::DynamicString::operator=((v13 + 40), (a1 + 40));
  *(v7 + 72) = *(a1 + 72);
  *(v7 + 12) = *(a1 + 12);
  *(v7 + 16) = *(a1 + 16);
  re::StringID::operator=((v7 + 24), (a1 + 24));
  if (a7)
  {
    v15 = *a7;
  }

  else
  {
    v16 = *a6;
    v17 = **a6 + 7;
    *v16 = (v17 & 0xFFFFFFF8) + 80;
    v18 = (*(v16 + 1) + (v17 & 0xFFFFFFF8));
    v18[3] = 0u;
    v18[4] = 0u;
    v18[1] = 0u;
    v18[2] = 0u;
    *v18 = 0u;
    v15 = v18 - v16[2];
  }

  *(v7 + 80) = v15;
  *(v7 + 88) = a6;
  return v7;
}

uint64_t re::TypedEventTimelineInstance<float>::initAnimationState(uint64_t a1, uint64_t a2, __int128 *a3, unint64_t a4, double *a5, char a6)
{
  if (a3)
  {
    v11 = *a3;
    v12 = a3[1];
    v13 = a3[2];
    *(a2 + 41) = *(a3 + 41);
    *(a2 + 16) = v12;
    *(a2 + 32) = v13;
    *a2 = v11;
  }

  v14 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((*(a1 + 104) + 80), a2);
  v15 = *(re::RelativeArray<re::AnimationClock>::operator[](v14, 0) + 1);
  result = re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v16);
  v18 = v15 - *(result + 16);
  *(a2 + 4) = v18;
  v19 = *(*(a1 + 112) + 80);
  v20 = v19[7];
  v21 = a4 >= v20;
  v22 = a4 - v20;
  if (!v21)
  {
    v23 = 6;
    v22 = a4;
LABEL_7:
    v24 = *(v19[v23 + 3] + 4 * v22);
    goto LABEL_9;
  }

  if (v22 < v19[17])
  {
    v23 = 16;
    goto LABEL_7;
  }

  v24 = NAN;
LABEL_9:
  v25 = v19[12];
  v21 = a4 >= v25;
  v26 = a4 - v25;
  if (v21)
  {
    if (v26 >= v19[17])
    {
      v27 = NAN;
    }

    else
    {
      v27 = 0.0;
    }
  }

  else
  {
    v27 = *(v19[14] + 4 * a4);
  }

  v28 = *a5;
  v29 = -1.0;
  if (v28 == 1)
  {
    v30 = (a5[1] - v24) / v27;
    if (v30 > 1.0)
    {
      v30 = 1.0;
    }

    if (v30 < 0.0)
    {
      v30 = 0.0;
    }

    v29 = v30;
  }

  *(a2 + 8) = v29;
  *(a2 + 1) = 0;
  *(a2 + 2) = v28;
  v31 = *(a1 + 120);
  if ((v31 & 0x80000000) == 0)
  {
    result = *(a1 + 104);
    do
    {
      v33 = (*(*result + 16))(result, v31);
      result = *(a1 + 104);
      v34 = *(result + 16);
      if (v34 <= v31)
      {
        re::internal::assertLog(6, v32, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v31, v34);
        result = _os_crash();
        __break(1u);
        return result;
      }

      if (v33)
      {
        break;
      }

      v31 = *(*(result + 8) + 4 * v31);
    }

    while ((v31 & 0x80000000) == 0);
    if (v33)
    {
      *(a2 + 40) = v33 + 8;
    }
  }

  *(a2 + 56) = a6;
  *(a2 + 48) = v24;
  *(a2 + 52) = v27;
  return result;
}

void re::TypedEventTimelineInstance<float>::raiseSkippedEvents(uint64_t a1, uint64_t a2, __int128 *a3, double a4, double a5)
{
  v76 = *MEMORY[0x1E69E9840];
  v65[0] = a3;
  if (a4 != a5 && vabdd_f64(a4, a5) >= (fabs(a4) + fabs(a5) + 1.0) * 1.0e-12)
  {
    v7 = *(*(a1 + 112) + 80);
    v62[0] = v7 + 24;
    v62[1] = &v64;
    v62[2] = &v63;
    v62[3] = a1;
    v62[4] = v65;
    v62[5] = a2;
    if (a5 <= a4)
    {
      if (a5 < a4 && (*(v7 + 536) & 1) != 0)
      {
        v63 = a4;
        v64 = a5;
        if (*(v7 + 56) >= 1)
        {
          v32 = *(v7 + 56) & 0x7FFFFFFFLL;
          do
          {
            re::TypedEventTimelineInstance<float>::raiseSkippedEvents(double,double,re::AnimationClock,re::CompositionChainStateBase const*)::$_0::operator()(v62, v32 - 1, 1, v32 == *(v7 + 56));
          }

          while (v32-- > 1);
        }

        v34 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), a2);
        v36 = *(v34 + 56);
        if (v36 == 1)
        {
          v59 = *(v34 + 64);
        }

        v37 = re::PackedDataPtr<re::EventTimelineStateData>::get((a1 + 80), v35);
        if (*(v37 + 56) == 1)
        {
          *(v37 + 56) = 0;
        }

        v39 = re::PackedDataPtr<re::EventTimelineStateData>::get((a1 + 80), v38);
        if (*(v39 + 40) == 1)
        {
          *(v39 + 40) = 0;
        }

        if (*(v7 + 136) >= 1)
        {
          v41 = (*(v7 + 136) & 0x7FFFFFFFLL) - 1;
          while (1)
          {
            v42 = *(v7 + 136);
            if (v42 <= v41)
            {
              v65[1] = 0;
              v74 = 0u;
              memset(v75, 0, sizeof(v75));
              v73 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *to = 136315906;
              *&to[4] = "operator[]";
              v67 = 1024;
              v68 = 797;
              v69 = 2048;
              v70 = v41;
              v71 = 2048;
              v72 = v42;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            v43 = *(*(v7 + 152) + 4 * v41);
            v44 = v64;
            if (v43 <= v44)
            {
              break;
            }

            v45 = fabsf(v43);
            if (vabds_f32(v43, v44) < (((v45 + fabsf(v44)) + 1.0) * 0.00001))
            {
              break;
            }

            if (v64 < v43)
            {
              if (v63 > v43 || v36 && v59 == v41 && ((v46 = v63, v43 == v46) || vabds_f32(v43, v46) < (((v45 + fabsf(v46)) + 1.0) * 0.00001)))
              {
                LOWORD(v73) = 255;
                BYTE2(v73) = 0;
                *(&v73 + 4) = 0;
                v74 = 0u;
                memset(v75, 0, 25);
                v47 = *(v7 + 56);
                LOBYTE(v60[0]) = 0;
                re::TypedEventTimelineInstance<float>::initAnimationState(a1, &v73, v65[0], v41 + v47, v60, 1);
                v48 = *(a1 + 104);
                *to = 0;
                objc_copyWeak(to, (v48 + 168));
                WeakRetained = objc_loadWeakRetained(to);
                if (WeakRetained)
                {
                  v51 = WeakRetained - 8;
                }

                else
                {
                  v51 = 0;
                }

                v52 = *(a1 + 104);
                v53 = *(v52 + 160);
                v54 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((v52 + 80), v50);
                v55 = re::RelativeArray<re::AnimationClock>::operator[](v54, 0);
                (*(*v51 + 40))(v51, 10, v53, a2, *(a1 + 112), v41 + v47, a1, &v73, *(v55 + 1));

                objc_destroyWeak(to);
              }
            }

            v56 = v41-- + 1;
            if (v56 <= 1)
            {
              return;
            }
          }

          if (v43 == v44 || vabds_f32(v43, v44) < (((fabsf(v43) + fabsf(v44)) + 1.0) * 0.00001))
          {
            v58 = re::PackedDataPtr<re::EventTimelineStateData>::get((a1 + 80), v40);
            if ((*(v58 + 56) & 1) == 0)
            {
              *(v58 + 56) = 1;
            }

            *(v58 + 64) = v41;
          }
        }
      }
    }

    else
    {
      v63 = a5;
      v64 = a4;
      v8 = *(v7 + 56);
      if (v8)
      {
        for (i = 0; i < v8; ++i)
        {
          re::TypedEventTimelineInstance<float>::raiseSkippedEvents(double,double,re::AnimationClock,re::CompositionChainStateBase const*)::$_0::operator()(v62, i, 0, i == v8 - 1);
          v8 = *(v7 + 56);
        }
      }

      v10 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), a2);
      v12 = *(v10 + 40);
      if (v12 == 1)
      {
        v59 = *(v10 + 48);
      }

      v13 = re::PackedDataPtr<re::EventTimelineStateData>::get((a1 + 80), v11);
      if (*(v13 + 40) == 1)
      {
        *(v13 + 40) = 0;
      }

      v15 = re::PackedDataPtr<re::EventTimelineStateData>::get((a1 + 80), v14);
      if (*(v15 + 56) == 1)
      {
        *(v15 + 56) = 0;
      }

      v17 = *(v7 + 136);
      if (v17)
      {
        v18 = 0;
        while (1)
        {
          v19 = *(*(v7 + 152) + 4 * v18);
          v20 = v63;
          if (v19 >= v20)
          {
            break;
          }

          v21 = fabsf(v19);
          if (vabds_f32(v19, v20) < (((v21 + fabsf(v20)) + 1.0) * 0.00001))
          {
            break;
          }

          if (v63 > v19)
          {
            if (v64 < v19 || v12 && v59 == v18 && ((v22 = v64, v19 == v22) || vabds_f32(v19, v22) < (((v21 + fabsf(v22)) + 1.0) * 0.00001)))
            {
              LOWORD(v73) = 255;
              BYTE2(v73) = 0;
              *(&v73 + 4) = 0;
              v74 = 0u;
              memset(v75, 0, 25);
              v23 = *(v7 + 56);
              LOBYTE(v61[0]) = 0;
              re::TypedEventTimelineInstance<float>::initAnimationState(a1, &v73, v65[0], v18 + v23, v61, 0);
              v24 = *(a1 + 104);
              *to = 0;
              objc_copyWeak(to, (v24 + 168));
              v25 = objc_loadWeakRetained(to);
              if (v25)
              {
                v27 = v25 - 8;
              }

              else
              {
                v27 = 0;
              }

              v28 = *(a1 + 104);
              v29 = *(v28 + 160);
              v30 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((v28 + 80), v26);
              v31 = re::RelativeArray<re::AnimationClock>::operator[](v30, 0);
              (*(*v27 + 40))(v27, 10, v29, a2, *(a1 + 112), v18 + v23, a1, &v73, *(v31 + 1));

              objc_destroyWeak(to);
              v17 = *(v7 + 136);
            }
          }

          if (++v18 >= v17)
          {
            return;
          }
        }

        if (v19 == v20 || vabds_f32(v19, v20) < (((fabsf(v19) + fabsf(v20)) + 1.0) * 0.00001))
        {
          v57 = re::PackedDataPtr<re::EventTimelineStateData>::get((a1 + 80), v16);
          if ((*(v57 + 40) & 1) == 0)
          {
            *(v57 + 40) = 1;
          }

          *(v57 + 48) = v18;
        }
      }
    }
  }
}

void re::TypedEventTimelineInstance<float>::raiseSkippedEvents(double,double,re::AnimationClock,re::CompositionChainStateBase const*)::$_0::operator()(uint64_t a1, unint64_t a2, char a3, int a4)
{
  v5 = &v33;
  v36 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = *(*a1 + 32);
  if (v7 <= a2)
  {
    v25 = 0;
    memset(v35, 0, sizeof(v35));
    v33 = 0u;
    v34 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *to = 136315906;
    *&to[4] = "operator[]";
    v27 = 1024;
    v28 = 797;
    v29 = 2048;
    v30 = a2;
    v31 = 2048;
    v32 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_15;
  }

  v9 = *(v6[6] + 4 * a2);
  if (**(a1 + 8) >= v9)
  {
    return;
  }

  v7 = v6[9];
  if (v7 <= a2)
  {
LABEL_15:
    v25 = 0;
    v5[4] = 0u;
    memset(v35, 0, 32);
    v33 = 0u;
    v34 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *to = 136315906;
    *&to[4] = "operator[]";
    v27 = 1024;
    v28 = 797;
    v29 = 2048;
    v30 = a2;
    v31 = 2048;
    v32 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v11 = *(a1 + 24);
  v12 = v9 + *(v6[11] + 4 * a2);
  if (a4)
  {
    if (**(a1 + 16) <= v12)
    {
      return;
    }
  }

  else
  {
    v13 = **(a1 + 16);
    if (v12 > v13 && vabds_f32(v12, v13) >= (((fabsf(v12) + fabsf(v13)) + 1.0) * 0.00001))
    {
      return;
    }
  }

  LOWORD(v33) = 255;
  BYTE2(v33) = 0;
  *(&v33 + 4) = 0;
  v34 = 0u;
  memset(v35, 0, 25);
  v14 = **(a1 + 32);
  LOBYTE(v24[0]) = 0;
  re::TypedEventTimelineInstance<float>::initAnimationState(v11, &v33, v14, a2, v24, a3);
  v15 = *(v11 + 104);
  *to = 0;
  objc_copyWeak(to, (v15 + 168));
  WeakRetained = objc_loadWeakRetained(to);
  if (WeakRetained)
  {
    v18 = WeakRetained - 8;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v11 + 104);
  v20 = *(v19 + 160);
  v21 = *(a1 + 40);
  v22 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((v19 + 80), v17);
  v23 = re::RelativeArray<re::AnimationClock>::operator[](v22, 0);
  (*(*v18 + 40))(v18, 10, v20, v21, *(v11 + 112), a2, v11, &v33, *(v23 + 1));

  objc_destroyWeak(to);
}

void re::TypedEventTimelineInstance<float>::timelineRemoved(uint64_t a1, uint64_t a2)
{
  v40 = 255;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0u;
  memset(v45, 0, 25);
  v3 = *(a1 + 120);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = *(a1 + 104);
    do
    {
      v5 = (*(*v4 + 16))(v4, v3);
      v4 = *(a1 + 104);
      v6 = v4[2];
      if (v6 <= v3)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v3, v6);
        _os_crash();
        __break(1u);
        return;
      }

      if (v5)
      {
        break;
      }

      v3 = *(v4[1] + 4 * v3);
    }

    while ((v3 & 0x80000000) == 0);
    if (v5)
    {
      v45[1] = v5 + 8;
    }
  }

  if (*re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), a2) == 1)
  {
    v8 = *(re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v7) + 8);
    LOBYTE(v39[0]) = 0;
    re::TypedEventTimelineInstance<float>::initAnimationState(a1, &v40, 0, v8, v39, 0);
    v9 = *(a1 + 104);
    to = 0;
    objc_copyWeak(&to, (v9 + 168));
    v10 = objc_loadWeakRetained(&to);
    v12 = v10 ? (v10 - 8) : 0;
    v13 = *(a1 + 104);
    v14 = *(v13 + 160);
    v15 = *(a1 + 120);
    v16 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((v13 + 80), v11);
    v17 = re::RelativeArray<re::AnimationClock>::operator[](v16, v15);
    v19 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((*(a1 + 104) + 80), v18);
    v20 = *(re::RelativeArray<re::AnimationClock>::operator[](v19, 0) + 1);
    v21 = *(a1 + 112);
    v23 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v22);
    (*(*v12 + 40))(v12, 7, v14, v17, v21, *(v23 + 8), a1, &v40, v20);

    objc_destroyWeak(&to);
    v25 = re::PackedDataPtr<re::EventTimelineStateData>::get((a1 + 80), v24);
    if (*v25 == 1)
    {
      *v25 = 0;
    }
  }

  v26 = *(a1 + 104);
  to = 0;
  objc_copyWeak(&to, (v26 + 168));
  v27 = objc_loadWeakRetained(&to);
  if (v27)
  {
    v29 = v27 - 8;
  }

  else
  {
    v29 = 0;
  }

  v30 = *(a1 + 104);
  v31 = *(v30 + 160);
  v32 = *(a1 + 120);
  v33 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((v30 + 80), v28);
  v34 = re::RelativeArray<re::AnimationClock>::operator[](v33, v32);
  v36 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((*(a1 + 104) + 80), v35);
  v37 = re::RelativeArray<re::AnimationClock>::operator[](v36, 0);
  (*(*v29 + 40))(v29, 11, v31, v34, *(a1 + 112), -1, a1, &v40, *(v37 + 1));

  objc_destroyWeak(&to);
}

void re::TypedEventTimelineInstance<float>::processPauseResume(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v6 = a2;
  if (*(re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), a2) + 72) != a2)
  {
    v9 = re::PackedDataPtr<re::EventTimelineStateData>::get((a1 + 80), v8);
    v10 = 0;
    *(v9 + 72) = v6;
    v31 = 255;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0u;
    memset(v36, 0, sizeof(v36));
    if (*(a3 + 16) == 1)
    {
      v30[1] = *(a3 + 24);
      v10 = 1;
    }

    LOBYTE(v30[0]) = v10;
    re::TypedEventTimelineInstance<float>::initAnimationState(a1, &v31, a4, 0xFFFFFFFFFFFFFFFFLL, v30, 0);
    if (v6)
    {
      v12 = *(a1 + 104);
      to = 0;
      objc_copyWeak(&to, (v12 + 168));
      v13 = objc_loadWeakRetained(&to);
      if (v13)
      {
        v15 = v13 - 8;
      }

      else
      {
        v15 = 0;
      }

      v16 = *(a1 + 104);
      v17 = *(v16 + 160);
      v18 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((v16 + 80), v14);
      v19.n128_u64[0] = *(re::RelativeArray<re::AnimationClock>::operator[](v18, 0) + 1);
      v20 = v15 + 8;
      (*(*v15 + 40))(v15, 8, v17, a3, *(a1 + 112), -1, a1, &v31, v19);
    }

    else
    {
      if ((*(a3 + 16) & 1) == 0)
      {
        re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) ", "clock.time.hasValue()", "processPauseResume", 497);
        _os_crash();
        __break(1u);
        return;
      }

      v21 = *(a1 + 104);
      to = 0;
      objc_copyWeak(&to, (v21 + 168));
      v22 = objc_loadWeakRetained(&to);
      if (v22)
      {
        v24 = v22 - 8;
      }

      else
      {
        v24 = 0;
      }

      v25 = *(a1 + 104);
      v26 = *(v25 + 160);
      v27 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((v25 + 80), v23);
      v28.n128_u64[0] = *(re::RelativeArray<re::AnimationClock>::operator[](v27, 0) + 1);
      v20 = v24 + 8;
      (*(*v24 + 40))(v24, 9, v26, a3, *(a1 + 112), -1, a1, &v31, v28);
    }

    objc_destroyWeak(&to);
  }
}

uint64_t re::TypedEventTimelineInstance<float>::processEvents(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v10 = &v149;
  v181 = *MEMORY[0x1E69E9840];
  v149 = 255;
  v150 = 0;
  v152 = 0;
  v151 = 0;
  v153 = 0u;
  memset(v154, 0, sizeof(v154));
  if ((*(a2 + 16) & 1) == 0)
  {
    if (*re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), a2) == 1)
    {
      v14 = *(re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v13) + 8);
      LOBYTE(v148[0]) = 0;
      re::TypedEventTimelineInstance<float>::initAnimationState(a1, &v149, a3, v14, v148, 0);
      v15 = *(a1 + 104);
      to[0] = 0;
      objc_copyWeak(to, (v15 + 168));
      WeakRetained = objc_loadWeakRetained(to);
      v18 = WeakRetained ? (WeakRetained - 8) : 0;
      v19 = *(a1 + 104);
      v20 = *(v19 + 160);
      v21 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((v19 + 80), v17);
      v22 = *(re::RelativeArray<re::AnimationClock>::operator[](v21, 0) + 1);
      v23 = *(a1 + 112);
      v25 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v24);
      (*(*v18 + 40))(v18, 7, v20, a2, v23, *(v25 + 8), a1, &v149, v22);

      objc_destroyWeak(to);
      v27 = re::PackedDataPtr<re::EventTimelineStateData>::get((a1 + 80), v26);
      if (*v27 == 1)
      {
        *v27 = 0;
      }
    }

    goto LABEL_101;
  }

  v11 = *(a2 + 24);
  if (*(a2 + 36) >= 0.0)
  {
    v12 = *(re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), a2) + 24) == 1 && v11 < *(re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), a2) + 32);
  }

  else
  {
    v12 = 1;
  }

  if (*(re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), a2) + 72) == 1 && (*(**(a1 + 104) + 32))(*(a1 + 104)) != 1)
  {
    v142 = *a2;
    v143 = *(a2 + 16);
    if (v143 == 1)
    {
      v144 = *(a2 + 24);
    }

    v29 = *(a2 + 48);
    v145 = *(a2 + 32);
    v146 = v29;
    v147 = *(a2 + 64);
    re::TypedEventTimelineInstance<float>::processPauseResume(a1, 0, &v142, a3);
  }

  if (*(re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v28) + 24) != 1)
  {
LABEL_59:
    v64 = re::PackedDataPtr<re::EventTimelineStateData>::get((a1 + 80), v30);
    if ((*(v64 + 24) & 1) == 0)
    {
      *(v64 + 24) = 1;
    }

    *(v64 + 32) = v11;
    v65 = *(*(a1 + 112) + 80);
    if (v12 && *(v65 + 536) != 1)
    {
      goto LABEL_101;
    }

    v66 = v11;
    v3 = *(v65 + 56);
    if (!v3)
    {
      goto LABEL_74;
    }

    v67 = *(v65 + 72);
    v68 = v67;
    v69 = *(v65 + 56);
    do
    {
      v70 = v69 >> 1;
      v71 = &v68[v69 >> 1];
      v73 = *v71;
      v72 = v71 + 1;
      v69 += ~(v69 >> 1);
      if (v66 + 0.00416666667 > v73)
      {
        v68 = v72;
      }

      else
      {
        v69 = v70;
      }
    }

    while (v69);
    v74 = v68 - v67;
    if (!v74)
    {
LABEL_74:
      v76 = re::TimelineEventData::totalDuration((v65 + 24));
      if (v76 != v66 && vabds_f32(v76, v66) >= (((fabsf(v66) + fabsf(v76)) + 1.0) * 0.00001))
      {
        if (*re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v13))
        {
          if (*re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v78) != 1)
          {
            goto LABEL_94;
          }

          v80 = 0;
LABEL_81:
          v81 = *(re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v79) + 8);
          LOBYTE(v123[0]) = 1;
          v123[1] = v11;
          re::TypedEventTimelineInstance<float>::initAnimationState(a1, &v149, a3, v81, v123, v12);
          v82 = *(a1 + 104);
          to[0] = 0;
          objc_copyWeak(to, (v82 + 168));
          v83 = objc_loadWeakRetained(to);
          if (v83)
          {
            v85 = v83 - 8;
          }

          else
          {
            v85 = 0;
          }

          v86 = *(a1 + 104);
          v87 = *(v86 + 160);
          v88 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((v86 + 80), v84);
          v89 = *(re::RelativeArray<re::AnimationClock>::operator[](v88, 0) + 1);
          v90 = *(a1 + 112);
          v92 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v91);
          (*(*v85 + 40))(v85, 7, v87, a2, v90, *(v92 + 8), a1, &v149, v89);

          objc_destroyWeak(to);
          if (v80)
          {
            goto LABEL_85;
          }

LABEL_94:
          v102 = re::PackedDataPtr<re::EventTimelineStateData>::get((a1 + 80), v79);
          if (*v102 == 1)
          {
            *v102 = 0;
          }
        }

LABEL_96:
        if (*re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v78) == 1)
        {
          v103 = *(re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v13) + 8);
          LOBYTE(v121[0]) = 1;
          v121[1] = v11;
          re::TypedEventTimelineInstance<float>::initAnimationState(a1, &v149, a3, v103, v121, v12);
          v104 = *(a1 + 104);
          to[0] = 0;
          objc_copyWeak(to, (v104 + 168));
          v105 = objc_loadWeakRetained(to);
          if (v105)
          {
            v107 = v105 - 8;
          }

          else
          {
            v107 = 0;
          }

          v108 = *(a1 + 104);
          v109 = *(v108 + 160);
          v110 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((v108 + 80), v106);
          v111 = *(re::RelativeArray<re::AnimationClock>::operator[](v110, 0) + 1);
          v112 = *(a1 + 112);
          v114 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v113);
          (*(*v107 + 40))(v107, 6, v109, a2, v112, *(v114 + 8), a1, &v149, v111);

          objc_destroyWeak(to);
        }

LABEL_101:
        v115 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((*(a1 + 104) + 80), v13);
        v116 = *(re::RelativeArray<re::AnimationClock>::operator[](v115, 0) + 1);
        result = re::PackedDataPtr<re::EventTimelineStateData>::get((a1 + 80), v117);
        *(result + 16) = v116;
        return result;
      }

      v4 = *(v65 + 56) - 1;
LABEL_77:
      v77 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v13);
      if (*v77 != 1 || v4 != *(v77 + 8))
      {
        if ((*re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v78) & 1) == 0)
        {
LABEL_85:
          v93 = re::PackedDataPtr<re::EventTimelineStateData>::get((a1 + 80), v79);
          if ((*v93 & 1) == 0)
          {
            *v93 = 1;
          }

          *(v93 + 8) = v4;
          LOBYTE(v122[0]) = 1;
          v122[1] = v11;
          re::TypedEventTimelineInstance<float>::initAnimationState(a1, &v149, a3, v4, v122, v12);
          v94 = *(a1 + 104);
          to[0] = 0;
          objc_copyWeak(to, (v94 + 168));
          v95 = objc_loadWeakRetained(to);
          if (v95)
          {
            v97 = v95 - 8;
          }

          else
          {
            v97 = 0;
          }

          v98 = *(a1 + 104);
          v99 = *(v98 + 160);
          v100 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((v98 + 80), v96);
          v101 = re::RelativeArray<re::AnimationClock>::operator[](v100, 0);
          (*(*v97 + 40))(v97, 5, v99, a2, *(a1 + 112), v4, a1, &v149, *(v101 + 1));

          objc_destroyWeak(to);
          goto LABEL_96;
        }

        v80 = 1;
        goto LABEL_81;
      }

      goto LABEL_96;
    }

    v4 = (v74 >> 2) - 1;
    if (v3 > v4)
    {
      v3 = *(v65 + 96);
      if (v3 > v4)
      {
        v75 = v67[v4] + *(*(v65 + 112) + 4 * v4);
        if (v75 > v66 && vabds_f32(v66, v75) >= (((fabsf(v66) + fabsf(v75)) + 1.0) * 0.00001))
        {
          goto LABEL_77;
        }

        goto LABEL_74;
      }

      goto LABEL_107;
    }

LABEL_106:
    v161[0] = 0;
    v179 = 0u;
    v180 = 0u;
    v177 = 0u;
    v178 = 0u;
    *to = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v165 = 136315906;
    *(v10 + 180) = "operator[]";
    WORD2(v166) = 1024;
    *(v10 + 190) = 797;
    v168 = 2048;
    *(v10 + 196) = v4;
    WORD2(v169) = 2048;
    *(v10 + 206) = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_107:
    v161[0] = 0;
    v179 = 0u;
    v180 = 0u;
    v177 = 0u;
    v178 = 0u;
    *to = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v165 = 136315906;
    *(v10 + 180) = "operator[]";
    WORD2(v166) = 1024;
    *(v10 + 190) = 797;
    v168 = 2048;
    *(v10 + 196) = v4;
    WORD2(v169) = 2048;
    *(v10 + 206) = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_108:
    re::internal::assertLog(6, v40, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v43, v44);
    _os_crash();
    __break(1u);
  }

  v31 = *(re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v30) + 32);
  v4 = *(a1 + 120);
  v33 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((*(a1 + 104) + 80), v32);
  v34 = re::RelativeArray<re::AnimationClock>::operator[](v33, v4);
  v36 = *(a1 + 104);
  v37 = *(a1 + 120);
  v38 = *(v36 + 32);
  if (v38 <= v37)
  {
LABEL_105:
    re::internal::assertLog(6, v35, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v37, v38);
    _os_crash();
    __break(1u);
    goto LABEL_106;
  }

  v39 = v34[56];
  if (*(v34 + 12) != *(v34 + 13))
  {
    v53 = *(v36 + 24) + 28 * v37;
    v6 = *(v53 + 12);
    v5 = *(v53 + 16);
LABEL_49:
    if (v39)
    {
      v130 = *a2;
      v131 = *(a2 + 16);
      if (v131 == 1)
      {
        v132 = *(a2 + 24);
      }

      v61 = *(a2 + 48);
      v133 = *(a2 + 32);
      v134 = v61;
      v135 = *(a2 + 64);
      re::TypedEventTimelineInstance<float>::raiseSkippedEvents(a1, &v130, a3, v31, v6 + -0.00100000005);
      v31 = v5 + 0.00100000005;
    }

    else
    {
      v136 = *a2;
      v137 = *(a2 + 16);
      if (v137 == 1)
      {
        v138 = *(a2 + 24);
      }

      v62 = *(a2 + 48);
      v139 = *(a2 + 32);
      v140 = v62;
      v141 = *(a2 + 64);
      re::TypedEventTimelineInstance<float>::raiseSkippedEvents(a1, &v136, a3, v31, v5 + 0.00100000005);
      v31 = v6 + -0.00100000005;
    }

LABEL_56:
    v124 = *a2;
    v125 = *(a2 + 16);
    if (v125 == 1)
    {
      v126 = *(a2 + 24);
    }

    v63 = *(a2 + 48);
    v127 = *(a2 + 32);
    v128 = v63;
    v129 = *(a2 + 64);
    re::TypedEventTimelineInstance<float>::raiseSkippedEvents(a1, &v124, a3, v31, v11);
    goto LABEL_59;
  }

  re::StackScratchAllocator::StackScratchAllocator(to);
  v164 = 0;
  v162 = 0;
  v163 = 0;
  v161[1] = 0;
  v161[0] = to;
  re::DynamicArray<int>::setCapacity(v161, 0);
  ++v163;
  v165 = *(a1 + 120);
  re::DynamicArray<int>::add(v161, &v165);
  (*(**(a1 + 104) + 24))(*(a1 + 104));
  v42 = *(a1 + 104);
  v43 = *(a1 + 120);
  v44 = *(v42 + 16);
  if (v44 <= v43)
  {
    goto LABEL_108;
  }

  v4 = *(*(v42 + 8) + 4 * v43);
  v160 = v4;
  if ((v4 & 0x80000000) != 0)
  {
LABEL_30:
    v4 = 0;
LABEL_45:
    if (v161[0] && v164)
    {
      (*(*v161[0] + 40))();
    }

    re::StackScratchAllocator::~StackScratchAllocator(to);
    if (!v4)
    {
      goto LABEL_56;
    }

    goto LABEL_49;
  }

  v45 = v41;
  v3 = 1;
  while (1)
  {
    v46 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((v42 + 80), v40);
    v47 = re::RelativeArray<re::AnimationClock>::operator[](v46, v4);
    v49 = *(a1 + 104);
    v50 = *(v49 + 32);
    if (v50 <= v160)
    {
      re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v160, v50);
      _os_crash();
      __break(1u);
LABEL_103:
      re::internal::assertLog(6, v40, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v51, v52);
      _os_crash();
      __break(1u);
LABEL_104:
      re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v56, v58);
      _os_crash();
      __break(1u);
      goto LABEL_105;
    }

    if (v47[56])
    {
      v39 = (v39 & 1) == 0;
    }

    if (*(v47 + 12) != *(v47 + 13))
    {
      break;
    }

    re::DynamicArray<int>::add(v161, &v160);
    v42 = *(a1 + 104);
    v51 = v160;
    v52 = *(v42 + 16);
    if (v52 <= v160)
    {
      goto LABEL_103;
    }

    v4 = *(*(v42 + 8) + 4 * v160);
    v160 = v4;
    if ((v4 & 0x80000000) != 0)
    {
      goto LABEL_30;
    }
  }

  v54 = *(v49 + 24) + 28 * v160;
  v6 = *(v54 + 12);
  v5 = *(v54 + 16);
  v55 = v162;
  v4 = 1;
  if (!v162)
  {
    goto LABEL_45;
  }

  v10 = 1;
  v3 = 1;
  while (1)
  {
    v56 = *(v164 + 4 * v55 - 4);
    v57 = *(a1 + 104);
    v58 = *(v57 + 32);
    if (v58 <= v56)
    {
      goto LABEL_104;
    }

    v59 = (*(v57 + 24) + 28 * v56);
    v60 = *v59;
    *&v159[12] = *(v59 + 12);
    *v159 = v60;
    v159[25] = 3;
    v162 = v55 - 1;
    ++v163;
    LOBYTE(v165) = 1;
    v166 = 0;
    v167 = 0;
    v170 = 0;
    v174 = 0;
    v173 = 0;
    v172[0] = 0;
    v171 = 0;
    *(v172 + 5) = 0;
    v175 = 2;
    v157[0] = v10;
    if ((v10 & 1) == 0)
    {
      goto LABEL_110;
    }

    v158 = v6;
    re::AnimationClock::update(&v165, v157, v159, v45);
    v155[0] = v3;
    if ((v3 & 1) == 0)
    {
      break;
    }

    if (v167)
    {
      v6 = v169;
      v10 = v10;
    }

    else
    {
      v10 = 0;
    }

    v156 = v5;
    re::AnimationClock::update(&v165, v155, v159, v45);
    if (v167)
    {
      v5 = v169;
      v3 = v3;
    }

    else
    {
      v3 = 0;
    }

    v55 = v162;
    if (!v162)
    {
      v4 = 1;
      v10 = &v149;
      goto LABEL_45;
    }
  }

  re::AnimationClock::update(&v165, v155, v159, v45);
  re::internal::assertLog(4, v119, "assertion failure: '%s' (%s:line %i) ", "loopEnd.hasValue()", "didLoop", 477);
  _os_crash();
  __break(1u);
LABEL_110:
  re::AnimationClock::update(&v165, v157, v159, v45);
  re::internal::assertLog(4, v120, "assertion failure: '%s' (%s:line %i) ", "loopStart.hasValue()", "didLoop", 474);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::EventTimeline::~EventTimeline(re::EventTimeline *this)
{
  *this = &unk_1F5CB1130;
  v2 = *(this + 10);
  if (v2)
  {

    *(this + 10) = 0;
  }

  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));
}

{
  *this = &unk_1F5CB1130;
  v2 = *(this + 10);
  if (v2)
  {

    *(this + 10) = 0;
  }

  *this = &unk_1F5CAD3A8;
  re::DynamicString::deinit((this + 40));
  re::StringID::destroyString((this + 24));

  JUMPOUT(0x1E6906520);
}

double re::EventTimeline::totalDuration(re::EventTimeline *this)
{
  v1 = *(this + 10);
  if (v1)
  {
    return re::TimelineEventData::totalDuration((v1 + 24));
  }

  else
  {
    return 0.0;
  }
}

void re::EventTimeline::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Requires EventTimelineInstance", "!Unreachable code", "evaluateCore", 390);
  _os_crash();
  __break(1u);
}

uint64_t re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(result + 16);
  result = re::StringID::operator==((v10 + 40 * v8 + 8), a2);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 40 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::StringID::operator==((v10 + 40 * v11 + 8), a2);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 40 * v12) & 0x7FFFFFFF;
      v8 = v12;
      if (v11 == 0x7FFFFFFF)
      {
        v8 = v12;
        goto LABEL_7;
      }
    }

    v6 = v12;
  }

LABEL_7:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

void re::SharedEventData::~SharedEventData(re::SharedEventData *this)
{
  *this = &unk_1F5CB11E0;
  re::DynamicArray<unsigned long>::deinit(this + 544);

  re::FixedArray<CoreIKTransform>::deinit(this + 63);
  re::DynamicArray<re::ObjCObject>::deinit(this + 456);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(this + 408);
  re::DynamicArray<unsigned long>::deinit(this + 360);
  re::DynamicArray<re::StringID>::deinit(this + 312);
  re::DynamicArray<unsigned long>::deinit(this + 264);
  re::DynamicArray<unsigned long>::deinit(this + 216);
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 20);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  re::DynamicArray<unsigned long>::deinit(this + 40);
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CB11E0;
  re::DynamicArray<unsigned long>::deinit(this + 544);

  re::FixedArray<CoreIKTransform>::deinit(this + 63);
  re::DynamicArray<re::ObjCObject>::deinit(this + 456);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(this + 408);
  re::DynamicArray<unsigned long>::deinit(this + 360);
  re::DynamicArray<re::StringID>::deinit(this + 312);
  re::DynamicArray<unsigned long>::deinit(this + 264);
  re::DynamicArray<unsigned long>::deinit(this + 216);
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 20);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  re::DynamicArray<unsigned long>::deinit(this + 40);
  re::StringID::destroyString((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

re::TimelineEventData *re::TimelineEventData::TimelineEventData(re::TimelineEventData *this, const re::TimelineEventData *a2)
{
  v4 = re::StringID::StringID(this, a2);
  re::DynamicArray<float>::DynamicArray(v4 + 16, a2 + 2);
  re::DynamicArray<float>::DynamicArray(this + 56, a2 + 7);
  re::DynamicArray<float>::DynamicArray(this + 96, a2 + 12);
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashTable(this + 136, a2 + 136);
  *(this + 23) = *(a2 + 23);
  re::DynamicArray<float>::DynamicArray(this + 192, a2 + 24);
  *(this + 29) = *(a2 + 29);
  re::DynamicArray<float>::DynamicArray(this + 240, a2 + 30);
  *(this + 35) = *(a2 + 35);
  re::DynamicArray<re::StringID>::DynamicArray(this + 288, a2 + 36);
  *(this + 41) = *(a2 + 41);
  re::DynamicArray<re::Vector4<float>>::DynamicArray(this + 336, a2 + 42);
  *(this + 47) = *(a2 + 47);
  re::DynamicArray<re::FixedArray<unsigned char>>::DynamicArray(this + 384, a2 + 48);
  *(this + 53) = *(a2 + 53);
  re::DynamicArray<re::ObjCObject>::DynamicArray(this + 432, a2 + 54);
  *(this + 472) = *(a2 + 472);
  re::FixedArray<unsigned char>::FixedArray(this + 60, a2 + 60);
  *(this + 63) = *(a2 + 63);
  *(this + 512) = *(a2 + 512);
  re::DynamicArray<char const*>::DynamicArray(this + 520, a2 + 65);
  return this;
}

uint64_t re::DynamicArray<float>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<int>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<float>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashTable(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  v4 = *a2;
  if (v4)
  {
    if (*(a2 + 28) <= 3u)
    {
      v5 = 3;
    }

    else
    {
      v5 = *(a2 + 28);
    }

    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, v4, v5);
    re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(a1, a2);
  }

  return a1;
}

void re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 40 * v10, 16);
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

re::StringID *re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(re::StringID *result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        v10 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        result = re::StringID::StringID((v10 + 8), (*(a2 + 16) + v5 + 8));
        *(v10 + 24) = *(*(a2 + 16) + v5 + 24);
        v2 = *(a2 + 32);
      }

      v5 += 40;
    }
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 40 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 40 * v4;
}

void re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

uint64_t re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(uint64_t result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        result = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31)) % *(v4 + 24));
        v9 = *(a2 + 16) + v5;
        v10 = *(v9 + 8);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        *(result + 8) = *(v9 + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        *(result + 16) = *(v9 + 16);
        *(v9 + 8) = 0;
        *(v9 + 16) = &str_67;
        *(result + 24) = *(*(a2 + 16) + v5 + 24);
        v2 = *(a2 + 32);
      }

      v5 += 40;
    }
  }

  return result;
}

double re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
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
          re::StringID::destroyString((v6 + v4 + 8));
          v3 = *(a1 + 8);
        }

        v4 += 40;
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

uint64_t re::DynamicArray<re::Vector4<float>>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::Vector4<float>>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::Vector4<float>>::copy(a1, a2);
  }

  return a1;
}

void **re::DynamicArray<re::Vector4<float>>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<re::Vector4<float>>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 16 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 16 * v5, (*(a2 + 32) + 16 * v5), 16 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 16 * v4);
  }

  v3[2] = v4;
  return result;
}

uint64_t re::DynamicArray<re::FixedArray<unsigned char>>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::FixedArray<unsigned char>>::copy(a1, a2);
  }

  return a1;
}

uint64_t *re::DynamicArray<re::FixedArray<unsigned char>>::copy(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(result, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = v3[2];
    v13 = v3[4];
    if (v12)
    {
      v14 = 24 * v12;
      do
      {
        result = re::FixedArray<unsigned char>::operator=(v13, v11);
        v11 += 3;
        v13 += 3;
        v14 -= 24;
      }

      while (v14);
      v13 = v3[4];
      v12 = v3[2];
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = 3 * v12;
      v16 = &v11[v15];
      result = &v13[v15];
      v17 = 24 * v4 - 8 * v15;
      do
      {
        v18 = re::FixedArray<unsigned char>::FixedArray(result, v16);
        v16 += 3;
        result = v18 + 3;
        v17 -= 24;
      }

      while (v17);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 24 * v4;
      do
      {
        result = re::FixedArray<unsigned char>::operator=(v6, v7);
        v7 += 3;
        v6 += 3;
        v8 -= 24;
      }

      while (v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v9 = &v6[3 * v4];
      v10 = 24 * v5 - 24 * v4;
      do
      {
        result = re::FixedArray<CoreIKTransform>::deinit(v9);
        v9 += 3;
        v10 -= 24;
      }

      while (v10);
    }
  }

  v3[2] = v4;
  return result;
}

uint64_t *re::FixedArray<unsigned char>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (!v4)
      {
        return a1;
      }

      goto LABEL_7;
    }

    if (v4)
    {
      re::FixedArray<BOOL>::init<>(a1, v4, a2[1]);
LABEL_7:
      re::FixedArray<unsigned char>::copy(a1, a2);
    }
  }

  return a1;
}

void *re::FixedArray<unsigned char>::copy(void *result, uint64_t a2)
{
  v4 = result[1];
  if (v4 == *(a2 + 8))
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = result[2];

      return memmove(v6, v5, v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::DynamicArray<re::ObjCObject>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<re::ObjCObject>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<re::ObjCObject>::copy(a1, a2);
  }

  return a1;
}

void re::DynamicArray<re::ObjCObject>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::ObjCObject>::setCapacity(a1, *(a2 + 16));
    v13 = *(a2 + 32);
    v14 = a1[2];
    v15 = a1[4];
    if (v14)
    {
      v16 = 8 * v14;
      do
      {
        v17 = re::ObjCObject::operator=(v15, v13++);
        v15 = v17 + 1;
        v16 -= 8;
      }

      while (v16);
      v15 = a1[4];
      v14 = a1[2];
      v13 = *(a2 + 32);
    }

    if (v14 != v4)
    {
      v18 = &v13[v14];
      v19 = &v15[v14];
      v20 = 8 * v4 - 8 * v14;
      do
      {
        v21 = *v18++;
        *v19++ = v21;
        v20 -= 8;
      }

      while (v20);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 8 * v4;
      do
      {
        v9 = re::ObjCObject::operator=(v6, v7++);
        v6 = v9 + 1;
        v8 -= 8;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v10 = &v6[v4];
      v11 = 8 * v5 - 8 * v4;
      do
      {
        v12 = *v10++;

        v11 -= 8;
      }

      while (v11);
    }
  }

  a1[2] = v4;
}

void *re::DynamicArray<re::ObjCObject>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ObjCObject>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 61)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 8, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 8 * a2;
          result = (*(*result + 32))(result, 8 * a2, 8);
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
        v10 = 8 * v9;
        v11 = v7;
        do
        {
          v12 = *v8;
          *v8 = 0;
          *v11++ = v12;
          v13 = *v8++;

          v10 -= 8;
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

void *re::FixedArray<unsigned char>::FixedArray(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<BOOL>::init<>(a1, v4, a2[1]);
    re::FixedArray<unsigned char>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::DynamicArray<char const*>::DynamicArray(uint64_t a1, uint64_t *a2)
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
    re::DynamicArray<float *>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<char const*>::copy(a1, a2);
  }

  return a1;
}

void **re::DynamicArray<char const*>::copy(void **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4 >= result[2])
  {
    re::DynamicArray<float *>::setCapacity(result, *(a2 + 16));
    v5 = v3[2];
    if (v5)
    {
      memmove(v3[4], *(a2 + 32), 8 * v5);
      v5 = v3[2];
    }

    result = memcpy(v3[4] + 8 * v5, (*(a2 + 32) + 8 * v5), 8 * (v4 - v5));
  }

  else if (v4)
  {
    result = memmove(result[4], *(a2 + 32), 8 * v4);
  }

  v3[2] = v4;
  return result;
}

uint64_t re::DynamicArray<re::ObjCObject>::deinit(uint64_t a1)
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
        v5 = 8 * v4;
        do
        {
          v6 = *v3++;

          v5 -= 8;
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

void *re::DynamicArray<re::FixedArray<unsigned char>>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypedEventTimelineInstance<float>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::TypedEventTimelineInstance<float>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::TypedEventTimelineInstance<float>::evaluateCore(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, void *a5, _DWORD *a6)
{
  v12 = *(a1 + 104);
  to[0] = 0;
  objc_copyWeak(to, (v12 + 168));
  WeakRetained = objc_loadWeakRetained(to);
  objc_destroyWeak(to);
  if (WeakRetained)
  {
    v15 = *(*(*(a1 + 112) + 80) + 496);
    if (v15 != 255)
    {
      v26 = a6;
      v27 = 0;
      v28 = 1;
      *(to + 1) = 0;
      HIDWORD(to[0]) = 0;
      LODWORD(to[1]) = 0;
      to[5] = 0;
      to[6] = 0;
      v25 = 0;
      LOBYTE(to[0]) = v15;
      to[2] = a4;
      to[3] = a5;
      to[4] = &v26;
      if (!a3)
      {
        re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
        _os_crash();
        __break(1u);
        return;
      }

      v18 = *a2;
      v19 = *(a2 + 16);
      if (v19 == 1)
      {
        v20 = *(a2 + 3);
      }

      v16 = a2[2];
      v17 = a2[3];
      v23 = *(a2 + 8);
      v21 = v16;
      v22 = v17;
      re::TypedEventTimelineInstance<float>::processEvents(a1, &v18, to);
      if (!v27 && *(a1 + 72) == 1 && *(a2 + 16) == 1 && v28 == 1)
      {
        *v26 = 0;
      }
    }
  }
}

void *re::TypedEventTimelineInstance<re::GenericSRT<float>>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::TypedEventTimelineInstance<re::GenericSRT<float>>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::TypedEventTimelineInstance<re::GenericSRT<float>>::evaluateCore(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v12 = *(a1 + 104);
  to[0] = 0;
  objc_copyWeak(to, (v12 + 168));
  WeakRetained = objc_loadWeakRetained(to);
  objc_destroyWeak(to);
  if (WeakRetained)
  {
    v15 = *(*(*(a1 + 112) + 80) + 496);
    if (v15 != 255)
    {
      v27 = a6;
      v28 = 0;
      v29 = 1;
      *(to + 1) = 0;
      HIDWORD(to[0]) = 0;
      LODWORD(to[1]) = 0;
      to[5] = 0;
      to[6] = 0;
      v26 = 0;
      LOBYTE(to[0]) = v15;
      to[2] = a4;
      to[3] = a5;
      to[4] = &v27;
      if (!a3)
      {
        re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
        _os_crash();
        __break(1u);
        return;
      }

      v19 = *a2;
      v20 = *(a2 + 16);
      if (v20 == 1)
      {
        v21 = *(a2 + 3);
      }

      v16 = a2[2];
      v17 = a2[3];
      v24 = *(a2 + 8);
      v22 = v16;
      v23 = v17;
      re::TypedEventTimelineInstance<float>::processEvents(a1, &v19, to);
      if (!v28 && *(a1 + 72) == 1 && *(a2 + 16) == 1 && v29 == 1)
      {
        v18 = v27;
        *v27 = 0x3F8000003F800000;
        v18[1] = 1065353216;
        v18[2] = 0;
        v18[3] = 0x3F80000000000000;
        v18[4] = 0;
        v18[5] = 0;
      }
    }
  }
}

void *re::TypedEventTimelineInstance<double>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::TypedEventTimelineInstance<double>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::TypedEventTimelineInstance<double>::evaluateCore(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v12 = *(a1 + 104);
  to[0] = 0;
  objc_copyWeak(to, (v12 + 168));
  WeakRetained = objc_loadWeakRetained(to);
  objc_destroyWeak(to);
  if (WeakRetained)
  {
    v15 = *(*(*(a1 + 112) + 80) + 496);
    if (v15 != 255)
    {
      v26 = a6;
      v27 = 0;
      v28 = 1;
      *(to + 1) = 0;
      HIDWORD(to[0]) = 0;
      LODWORD(to[1]) = 0;
      to[5] = 0;
      to[6] = 0;
      v25 = 0;
      LOBYTE(to[0]) = v15;
      to[2] = a4;
      to[3] = a5;
      to[4] = &v26;
      if (!a3)
      {
        re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
        _os_crash();
        __break(1u);
        return;
      }

      v18 = *a2;
      v19 = *(a2 + 16);
      if (v19 == 1)
      {
        v20 = *(a2 + 3);
      }

      v16 = a2[2];
      v17 = a2[3];
      v23 = *(a2 + 8);
      v21 = v16;
      v22 = v17;
      re::TypedEventTimelineInstance<float>::processEvents(a1, &v18, to);
      if (!v27 && *(a1 + 72) == 1 && *(a2 + 16) == 1 && v28 == 1)
      {
        *v26 = 0;
      }
    }
  }
}

void *re::TypedEventTimelineInstance<re::Vector2<float>>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::TypedEventTimelineInstance<re::Vector2<float>>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::TypedEventTimelineInstance<re::Vector2<float>>::evaluateCore(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v12 = *(a1 + 104);
  to[0] = 0;
  objc_copyWeak(to, (v12 + 168));
  WeakRetained = objc_loadWeakRetained(to);
  objc_destroyWeak(to);
  if (WeakRetained)
  {
    v15 = *(*(*(a1 + 112) + 80) + 496);
    if (v15 != 255)
    {
      v26 = a6;
      v27 = 0;
      v28 = 1;
      *(to + 1) = 0;
      HIDWORD(to[0]) = 0;
      LODWORD(to[1]) = 0;
      to[5] = 0;
      to[6] = 0;
      v25 = 0;
      LOBYTE(to[0]) = v15;
      to[2] = a4;
      to[3] = a5;
      to[4] = &v26;
      if (!a3)
      {
        re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
        _os_crash();
        __break(1u);
        return;
      }

      v18 = *a2;
      v19 = *(a2 + 16);
      if (v19 == 1)
      {
        v20 = *(a2 + 3);
      }

      v16 = a2[2];
      v17 = a2[3];
      v23 = *(a2 + 8);
      v21 = v16;
      v22 = v17;
      re::TypedEventTimelineInstance<float>::processEvents(a1, &v18, to);
      if (!v27 && *(a1 + 72) == 1 && *(a2 + 16) == 1 && v28 == 1)
      {
        *v26 = 0;
      }
    }
  }
}

void *re::TypedEventTimelineInstance<re::Vector3<float>>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::TypedEventTimelineInstance<re::Vector3<float>>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::TypedEventTimelineInstance<re::Vector3<float>>::evaluateCore(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, void *a5, _OWORD *a6)
{
  v12 = *(a1 + 104);
  to[0] = 0;
  objc_copyWeak(to, (v12 + 168));
  WeakRetained = objc_loadWeakRetained(to);
  objc_destroyWeak(to);
  if (WeakRetained)
  {
    v15 = *(*(*(a1 + 112) + 80) + 496);
    if (v15 != 255)
    {
      v26 = a6;
      v27 = 0;
      v28 = 1;
      *(to + 1) = 0;
      HIDWORD(to[0]) = 0;
      LODWORD(to[1]) = 0;
      to[5] = 0;
      to[6] = 0;
      v25 = 0;
      LOBYTE(to[0]) = v15;
      to[2] = a4;
      to[3] = a5;
      to[4] = &v26;
      if (!a3)
      {
        re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
        _os_crash();
        __break(1u);
        return;
      }

      v18 = *a2;
      v19 = *(a2 + 16);
      if (v19 == 1)
      {
        v20 = *(a2 + 3);
      }

      v16 = a2[2];
      v17 = a2[3];
      v23 = *(a2 + 8);
      v21 = v16;
      v22 = v17;
      re::TypedEventTimelineInstance<float>::processEvents(a1, &v18, to);
      if (!v27 && *(a1 + 72) == 1 && *(a2 + 16) == 1 && v28 == 1)
      {
        *v26 = 0u;
      }
    }
  }
}

void *re::TypedEventTimelineInstance<re::Vector4<float>>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::TypedEventTimelineInstance<re::Vector4<float>>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::TypedEventTimelineInstance<re::Vector4<float>>::evaluateCore(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v12 = *(a1 + 104);
  to[0] = 0;
  objc_copyWeak(to, (v12 + 168));
  WeakRetained = objc_loadWeakRetained(to);
  objc_destroyWeak(to);
  if (WeakRetained)
  {
    v15 = *(*(*(a1 + 112) + 80) + 496);
    if (v15 != 255)
    {
      v27 = a6;
      v28 = 0;
      v29 = 1;
      *(to + 1) = 0;
      HIDWORD(to[0]) = 0;
      LODWORD(to[1]) = 0;
      to[5] = 0;
      to[6] = 0;
      v26 = 0;
      LOBYTE(to[0]) = v15;
      to[2] = a4;
      to[3] = a5;
      to[4] = &v27;
      if (!a3)
      {
        re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
        _os_crash();
        __break(1u);
        return;
      }

      v19 = *a2;
      v20 = *(a2 + 16);
      if (v20 == 1)
      {
        v21 = *(a2 + 3);
      }

      v16 = a2[2];
      v17 = a2[3];
      v24 = *(a2 + 8);
      v22 = v16;
      v23 = v17;
      re::TypedEventTimelineInstance<float>::processEvents(a1, &v19, to);
      if (!v28 && *(a1 + 72) == 1 && *(a2 + 16) == 1 && v29 == 1)
      {
        v18 = v27;
        *v27 = 0;
        v18[1] = 0;
      }
    }
  }
}

void *re::TypedEventTimelineInstance<re::Quaternion<float>>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::TypedEventTimelineInstance<re::Quaternion<float>>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::TypedEventTimelineInstance<re::Quaternion<float>>::evaluateCore(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v12 = *(a1 + 104);
  to[0] = 0;
  objc_copyWeak(to, (v12 + 168));
  WeakRetained = objc_loadWeakRetained(to);
  objc_destroyWeak(to);
  if (WeakRetained)
  {
    v15 = *(*(*(a1 + 112) + 80) + 496);
    if (v15 != 255)
    {
      v27 = a6;
      v28 = 0;
      v29 = 1;
      *(to + 1) = 0;
      HIDWORD(to[0]) = 0;
      LODWORD(to[1]) = 0;
      to[5] = 0;
      to[6] = 0;
      v26 = 0;
      LOBYTE(to[0]) = v15;
      to[2] = a4;
      to[3] = a5;
      to[4] = &v27;
      if (!a3)
      {
        re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
        _os_crash();
        __break(1u);
        return;
      }

      v19 = *a2;
      v20 = *(a2 + 16);
      if (v20 == 1)
      {
        v21 = *(a2 + 3);
      }

      v16 = a2[2];
      v17 = a2[3];
      v24 = *(a2 + 8);
      v22 = v16;
      v23 = v17;
      re::TypedEventTimelineInstance<float>::processEvents(a1, &v19, to);
      if (!v28 && *(a1 + 72) == 1 && *(a2 + 16) == 1 && v29 == 1)
      {
        v18 = v27;
        *v27 = 0;
        v18[1] = 0x3F80000000000000;
      }
    }
  }
}

void *re::TypedEventTimelineInstance<re::SkeletalPose>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v2 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v2);
  return a1;
}

void re::TypedEventTimelineInstance<re::SkeletalPose>::~TypedEventTimelineInstance(void *a1)
{
  *a1 = &unk_1F5CAD3A8;
  v1 = (a1 + 3);
  re::DynamicString::deinit((a1 + 5));
  re::StringID::destroyString(v1);

  JUMPOUT(0x1E6906520);
}

void re::TypedEventTimelineInstance<re::SkeletalPose>::evaluateCore(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v12 = *(a1 + 104);
  to[0] = 0;
  objc_copyWeak(to, (v12 + 168));
  WeakRetained = objc_loadWeakRetained(to);
  objc_destroyWeak(to);
  if (WeakRetained)
  {
    v15 = *(*(*(a1 + 112) + 80) + 496);
    if (v15 != 255)
    {
      v29 = a6;
      v30 = 0;
      v31 = 1;
      *(to + 1) = 0;
      HIDWORD(to[0]) = 0;
      LODWORD(to[1]) = 0;
      to[5] = 0;
      to[6] = 0;
      v28 = 0;
      LOBYTE(to[0]) = v15;
      to[2] = a4;
      to[3] = a5;
      to[4] = &v29;
      if (!a3)
      {
        re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
        _os_crash();
        __break(1u);
        return;
      }

      v21 = *a2;
      v22 = *(a2 + 16);
      if (v22 == 1)
      {
        v23 = *(a2 + 3);
      }

      v16 = a2[2];
      v17 = a2[3];
      v26 = *(a2 + 8);
      v24 = v16;
      v25 = v17;
      re::TypedEventTimelineInstance<float>::processEvents(a1, &v21, to);
      if (!v30 && *(a1 + 72) == 1 && *(a2 + 16) == 1 && v31 == 1)
      {
        v18 = *(v29 + 24);
        if (v18)
        {
          v19 = *(v29 + 32);
          v20 = &v19[6 * v18];
          do
          {
            *v19 = 0x3F8000003F800000;
            v19[1] = 1065353216;
            v19[2] = 0;
            v19[3] = 0x3F80000000000000;
            v19[4] = 0;
            v19[5] = 0;
            v19 += 6;
          }

          while (v19 != v20);
        }
      }
    }
  }
}

uint64_t re::PackedDataPtr<re::EventTimelineStateData>::get(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 == -1)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Packed data handle must be valid.", "m_handle.isValid()", "get", 61);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  v3 = **(a1 + 1);
  if (!v3)
  {
LABEL_8:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Packed data ptr must not be null.", "packedData", "get", 63);
    result = _os_crash();
    __break(1u);
    return result;
  }

  if (v2 >= *v3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 8) + v2;
  }
}

void *re::RigGraphCompilation::init(re::RigGraphCompilation *this, re::Allocator *a2)
{
  v3 = this;
  re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::init(this, a2, 1uLL);
  *(v3 + 7) = a2;
  re::DynamicArray<re::RigDataValue>::setCapacity(v3 + 7, 0);
  *(v3 + 12) = a2;
  v3 = (v3 + 96);
  ++*(v3 - 4);
  result = re::DynamicArray<re::RigDataValue>::setCapacity(v3, 0);
  ++*(v3 + 6);
  return result;
}

uint64_t re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t re::RigGraphCompilation::setRuntimeContext(uint64_t this, re::EvaluationContext *a2)
{
  v3 = this;
  v4 = *(this + 72);
  if (v4)
  {
    v5 = *(this + 88);
    v6 = 288 * v4;
    do
    {
      this = re::RigDataValue::setRuntimeContext(v5, a2);
      v5 += 288;
      v6 -= 288;
    }

    while (v6);
  }

  v7 = *(v3 + 112);
  if (v7)
  {
    v8 = *(v3 + 128);
    v9 = 288 * v7;
    do
    {
      this = re::RigDataValue::setRuntimeContext(v8, a2);
      v8 += 288;
      v9 -= 288;
    }

    while (v9);
  }

  return this;
}

uint64_t re::RigGraphCompilation::setInputOutputValues(void *a1, re::EvaluationContextManager *a2, uint64_t a3, uint64_t a4)
{
  re::DynamicArray<re::RigDataValue>::operator=((a1 + 7), a3);
  v7 = a1[9];
  if (v7)
  {
    v8 = a1[11];
    v9 = 288 * v7;
    do
    {
      if (*(v8 + 32) != 10)
      {
        re::RigDataValue::resolveRuntimeInputValues(v8, a2);
      }

      v8 = (v8 + 288);
      v9 -= 288;
    }

    while (v9);
  }

  result = re::DynamicArray<re::RigDataValue>::operator=((a1 + 12), a4);
  v11 = a1[14];
  if (v11)
  {
    v12 = a1[16];
    v13 = 288 * v11;
    do
    {
      if (*(v12 + 32) != 10)
      {
        result = re::RigDataValue::resolveRuntimeOutputValues(v12, a2);
      }

      v12 += 288;
      v13 -= 288;
    }

    while (v13);
  }

  return result;
}

uint64_t re::DynamicArray<re::RigDataValue>::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*a1)
  {
    if (v4)
    {
      re::DynamicArray<re::RigDataValue>::copy(a1, 0, *a2, v4);
      re::DynamicArray<re::RigDataValue>::resize(a1, *(a2 + 8));
    }

    else
    {
      re::DynamicArray<re::RigDataValue>::clear(a1);
    }
  }

  else if (v4)
  {
    re::DynamicArray<re::RigDataValue>::setCapacity(a1, v4);
    ++*(a1 + 24);
    re::DynamicArray<re::RigDataValue>::copy(a1, 0, *a2, *(a2 + 8));
  }

  return a1;
}

uint64_t *re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < a2 << 6)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 2560, 0);
        result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::add(uint64_t a1, void *a2)
{
  result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::ensureCapacity(a1);
  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  v6 = *(a1 + 8);
  *(v5 + 8 * v6) = *a2;
  *(a1 + 8) = v6 + 1;
  *(a1 + 16) += 2;
  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::ensureCapacity(_anonymous_namespace_ *result)
{
  v1 = result;
  if (!*result)
  {
    v7 = *(v1 + 1);
    result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v1, v7 + 1);
    *(v1 + 4) += 2;
    return result;
  }

  v2 = *(result + 1);
  if (*(result + 16))
  {
    v4 = v2 + 1;
    if (v4 < 3)
    {
      return result;
    }

    v6 = 4;
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

    return re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(result, v8);
  }

  return result;
}

void *re::DynamicArray<re::RigDataValue>::copy(void *this, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return this;
  }

  v6 = this;
  v7 = this[2];
  if (v7 + 1 <= a2)
  {
    v22 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v23) = 136315906;
    *(&v23 + 4) = "copy";
    WORD6(v23) = 1024;
    HIWORD(v23) = 643;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_18:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, a2, v4, v22, v23);
    _os_crash();
    __break(1u);
  }

  v4 = a4;
  v8 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_18;
  }

  if (v7 >= v8)
  {
    v20 = (this[4] + 288 * a2);
    v21 = 288 * a4;
    do
    {
      this = re::RigDataValue::operator=(v20, a3);
      a3 += 288;
      v20 += 36;
      v21 -= 288;
    }

    while (v21);
  }

  else
  {
    this = re::DynamicArray<re::RigDataValue>::growCapacity(this, a2 + a4);
    v10 = v6[2];
    v11 = v6[4];
    v12 = a2;
    v13 = v10 - a2;
    if (v10 != a2)
    {
      v14 = (v11 + 288 * a2);
      v15 = 288 * v10 - 288 * a2;
      v16 = a3;
      do
      {
        this = re::RigDataValue::operator=(v14, v16);
        v16 += 288;
        v14 += 36;
        v15 -= 288;
      }

      while (v15);
      v11 = v6[4];
      v12 = v6[2];
    }

    if (v13 != v4)
    {
      v17 = (a3 + 288 * v13);
      this = (v11 + 288 * v12);
      v18 = 288 * a2 + 288 * v4 - 288 * v10;
      do
      {
        v19 = re::RigDataValue::RigDataValue(this, v17);
        v17 = (v17 + 288);
        this = (v19 + 288);
        v18 -= 288;
      }

      while (v18);
    }

    v6[2] = v8;
  }

  ++*(v6 + 6);
  return this;
}

uint64_t re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > v3 << 6)
  {
    re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::setBucketsCapacity(a1, (v2 + 64) >> 6);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 6)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 6));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 40 * (v2 & 0x3F);
}

uint64_t std::__function::__value_func<void ()(void *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t re::internal::TimelineTree::setTimelines(re::internal::TimelineTree *this, re::internal::TimelineTree *a2, const re::Timeline *a3, int a4, const re::BindNode *a5, int a6, re::Allocator *a7)
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = *(a2 + 18);
  v11 = *(v10 + 32);
  if (v11 <= a4)
  {
    *&v26[0] = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v28 = 136315906;
    v29 = "operator[]";
    v30 = 1024;
    v31 = 468;
    v32 = 2048;
    v33 = v9;
    v34 = 2048;
    v35 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_9;
  }

  v7 = a7;
  *(*(v10 + 40) + 4 * a4) = a6;
  (*(*a3 + 48))(v26, a3);
  v16 = *(a2 + 18);
  v11 = *(v16 + 56);
  if (v11 <= v9)
  {
LABEL_9:
    v27 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v28 = 136315906;
    v29 = "operator[]";
    v30 = 1024;
    v31 = 468;
    v32 = 2048;
    v33 = v9;
    v34 = 2048;
    v35 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_10;
  }

  v17 = (*(v16 + 64) + 28 * v9);
  v18 = v26[0];
  *(v17 + 10) = *(v26 + 10);
  *v17 = v18;
  v19 = (a4 + 1);
  v20 = (*(*a3 + 24))(a3);
  if (v20)
  {
    v21 = v20;
    for (i = 0; i != v21; ++i)
    {
      v23 = (*(*a3 + 32))(a3, i);
      v19 = re::internal::TimelineTree::setTimelines(this, a2, v23, v19, a5, a4, v7);
    }
  }

  v24 = (*(*a3 + 72))(a3, v7, a5, a2, v9, this + 72);
  v7 = *(a2 + 13);
  if (v7 <= v9)
  {
LABEL_10:
    *&v26[0] = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v28 = 136315906;
    v29 = "operator[]";
    v30 = 1024;
    v31 = 468;
    v32 = 2048;
    v33 = v9;
    v34 = 2048;
    v35 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(a2 + 14) + 8 * v9) = v24;
  return v19;
}

uint64_t re::internal::instanceDataSize(re::internal *this, const re::Timeline *a2)
{
  v3 = (*(*this + 80))(this, a2);
  v4 = (*(*this + 24))(this);
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v7 = (*(*this + 32))(this, i);
      v3 += re::internal::instanceDataSize(v7, v8);
    }
  }

  return v3;
}

BOOL re::internal::TimelineTree::init(re::internal::TimelineTree *this, const re::Timeline *a2, re::PackedData *a3, const re::BindNode *a4, re::Allocator *a5)
{
  __n[5] = *MEMORY[0x1E69E9840];
  if (*(this + 152) == 1)
  {
    re::internal::assertLog(4, a2, a3, a4, a5, "assertion failure: '%s' (%s:line %i) init() should only be called once.", "!isInitialized()", "init", 71);
    _os_crash();
    __break(1u);
LABEL_45:
    re::internal::assertLog(6, v30, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 28, v5);
    _os_crash();
    __break(1u);
LABEL_46:
    re::internal::assertLog(4, v33, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
  }

  v8 = a3;
  if (LOBYTE(__n[0]))
  {
    v12 = HIDWORD(__n[0]);
  }

  else
  {
    v12 = 0;
  }

  v5 = v12;
  if (!v12)
  {
    return v5 != 0;
  }

  if (!v8)
  {
    v13 = re::internal::instanceDataSize(a2, v11);
    LOBYTE(__n[0]) = 1;
    v14 = v13 + 72 * v5 + 8;
    __n[1] = 0;
    __n[2] = 0;
    re::PackedData::reserve(&__n[1], 0);
    if (*(this + 120))
    {
      if ((__n[0] & 1) == 0)
      {
        v16 = *(this + 17);
        if (v16)
        {
          free(v16);
          *(this + 17) = 0;
        }

        *(this + 120) = 0;
        goto LABEL_18;
      }

      *(this + 8) = *&__n[1];
    }

    else
    {
      if ((__n[0] & 1) == 0)
      {
LABEL_18:
        v8 = (this + 128);
        re::PackedData::reserve((this + 128), (v14 + 256));
        goto LABEL_19;
      }

      *(this + 16) = 0;
      *(this + 120) = 1;
      *(this + 17) = 0;
      re::PackedData::reserve((this + 128), HIDWORD(__n[1]));
      v15 = __n[1];
      if (LODWORD(__n[1]))
      {
        memcpy(*(this + 17), __n[2], LODWORD(__n[1]));
        *(this + 32) = v15;
      }
    }

    if (__n[2])
    {
      free(__n[2]);
    }

    goto LABEL_18;
  }

LABEL_19:
  *(this + 9) = v8;
  v17 = *v8 + 3;
  *v8 = (v17 & 0xFFFFFFFC) + 8;
  v18 = (*(v8 + 1) + (v17 & 0xFFFFFFFC));
  *v18 = 0;
  *(this + 20) = v18 - *(v8 + 2);
  *(this + 11) = this + 72;
  v19 = re::PackedDataPtr<re::internal::TimelineTreeState>::get(this + 20, v11);
  v20 = 0;
  v21 = *v8 + 7;
  if ((v21 & 0xFFFFFFF8) + 72 * v5 < *(v8 + 1))
  {
    *v8 = (v21 & 0xFFFFFFF8) + 72 * v5;
    v20 = *(v8 + 1) + (v21 & 0xFFFFFFF8);
  }

  v22 = v20;
  do
  {
    *v22 = 1;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    *(v22 + 32) = 0;
    *(v22 + 60) = 0;
    *(v22 + 64) = 0;
    *(v22 + 44) = 0;
    *(v22 + 36) = 0;
    *(v22 + 49) = 0;
    *(v22 + 68) = 2;
    v22 += 72;
  }

  while (v22 != v20 + 72 * v5);
  v23 = v20 == 0;
  if (v20)
  {
    v24 = (v20 - v19);
  }

  else
  {
    v24 = 0;
  }

  if (v23)
  {
    v25 = 0;
  }

  else
  {
    v25 = v5;
  }

  *v19 = v24;
  *(v19 + 1) = v25;
  if (v24)
  {
    v26 = v19 + v24;
  }

  else
  {
    v26 = 0;
  }

  v27 = (v5 - 1);
  if (v5 != 1)
  {
    do
    {
      *(v26 + 2) = 0uLL;
      *(v26 + 3) = 0uLL;
      *v26 = 0uLL;
      *(v26 + 1) = 0uLL;
      *v26 = 1;
      *(v26 + 8) = 0x200000000;
      *(v26 + 36) = 0;
      *(v26 + 44) = 0;
      *(v26 + 49) = 0;
      v26 += 72;
      --v27;
    }

    while (v27);
  }

  *(v26 + 2) = 0u;
  *(v26 + 3) = 0u;
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *v26 = 1;
  *(v26 + 8) = 0x200000000;
  *(v26 + 36) = 0;
  *(v26 + 44) = 0;
  *(v26 + 49) = 0;
  v28 = re::globalAllocators(v19);
  v29 = (*(*v28[2] + 32))(v28[2], 72, 8);
  *v29 = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *(v29 + 48) = 0u;
  *(v29 + 64) = 0;
  ArcSharedObject::ArcSharedObject(v29, 0);
  *v29 = &unk_1F5CB17A8;
  *(v29 + 24) = 0u;
  *(v29 + 40) = 0u;
  *(v29 + 56) = 0u;
  v31 = *(this + 18);
  *(this + 18) = v29;
  if (v31)
  {

    v29 = *(this + 18);
  }

  *(v29 + 48) = a5;
  *(v29 + 56) = v5;
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_45;
  }

  v32 = (*(*a5 + 32))(a5, 28 * v5, 4);
  *(v29 + 64) = v32;
  if (!v32)
  {
    goto LABEL_46;
  }

  v34 = v5 - 1;
  if (v5 != 1)
  {
    do
    {
      *v32 = 0;
      *(v32 + 8) = 1065353216;
      *(v32 + 12) = 0;
      *(v32 + 18) = 0;
      v32 += 28;
      --v34;
    }

    while (v34);
  }

  *v32 = 0;
  *(v32 + 8) = 1065353216;
  *(v32 + 12) = 0;
  *(v32 + 18) = 0;
  re::FixedArray<int>::init<>((*(this + 18) + 24), a5, v5);
  v35 = *(this + 18);
  v36 = v35[4];
  *(this + 1) = v35[5];
  *(this + 2) = v36;
  v38 = v35 + 7;
  v37 = v35[7];
  *(this + 3) = v38[1];
  *(this + 4) = v37;
  re::FixedArray<unsigned long>::init<>(this + 12, a5, v5);
  memset(__n, 0, 32);
  if (a4)
  {
    re::BindNode::copy(__n, a4);
  }

  re::internal::TimelineTree::setTimelines(this, this, a2, 0, __n, -1, a5);
  re::BindNode::deinit(__n);
  *(this + 152) = 1;
  return v5 != 0;
}

uint64_t re::internal::TimelineTree::setTime(re::internal::TimelineTree *this, double a2, float a3, uint64_t a4)
{
  v7 = re::PackedDataPtr<re::internal::TimelineTreeState>::get(this + 20, a4);
  v9 = *v7;
  v10 = v7[1];
  if (v9)
  {
    v11 = v7 + v9;
  }

  else
  {
    v11 = 0;
  }

  if (a3 >= 0.0)
  {
    if (!v10)
    {
LABEL_24:
      re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, v10);
      _os_crash();
      __break(1u);
      goto LABEL_25;
    }

    LOBYTE(v28) = 1;
    v29 = a2;
    if (!*(this + 4))
    {
LABEL_26:
      re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
      result = _os_crash();
      __break(1u);
      return result;
    }

    v15 = *(this + 3);
    v14 = &v28;
  }

  else
  {
    if (!*(this + 4))
    {
LABEL_23:
      re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
      _os_crash();
      __break(1u);
      goto LABEL_24;
    }

    v12 = *(this + 3);
    v13 = *(v12 + 12);
    v32[0] = *v12;
    *(v32 + 12) = v13;
    *(v32 + 2) = -*(v32 + 2);
    if (!v10)
    {
LABEL_25:
      re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, v10);
      _os_crash();
      __break(1u);
      goto LABEL_26;
    }

    a3 = -a3;
    LOBYTE(v30) = 1;
    v31 = fabs(a2);
    v14 = &v30;
    v15 = v32;
  }

  result = re::AnimationClock::update(v11, v14, v15, a3);
  if (*(this + 4) >= 2uLL)
  {
    v18 = v11 + 72;
    v19 = 1;
    for (i = 28; ; i += 28)
    {
      v21 = *(this + 2);
      if (v21 <= v19)
      {
        break;
      }

      if (v10 == v19)
      {
        goto LABEL_21;
      }

      v22 = *(*(this + 1) + 4 * v19);
      if (v10 <= v22)
      {
        goto LABEL_22;
      }

      v23 = &v11[72 * v22];
      v25 = v23[16];
      v24 = v23 + 16;
      LOBYTE(v26) = v25;
      if (v25 == 1)
      {
        v27 = *(v24 + 1);
      }

      result = re::AnimationClock::update(v18, &v26, *(this + 3) + i, a3);
      ++v19;
      v18 += 72;
      if (*(this + 4) <= v19)
      {
        return result;
      }
    }

    re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v19, v21);
    _os_crash();
    __break(1u);
LABEL_21:
    re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v10, v26, v27, v28, *&v29, v30, *&v31, v32[0], v32[1]);
    _os_crash();
    __break(1u);
LABEL_22:
    re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v22, v10);
    _os_crash();
    __break(1u);
    goto LABEL_23;
  }

  return result;
}

uint64_t re::internal::TimelineTree::deinit(uint64_t this, Allocator *a2)
{
  v2 = *(this + 104);
  if (v2)
  {
    v4 = *(this + 112);
    do
    {
      this = (*(**v4 + 88))();
      if (this)
      {
        (***v4)();
        this = (*(a2->var0 + 5))(a2, *v4);
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return this;
}

void re::internal::TimelineTreeConstantData::~TimelineTreeConstantData(re::internal::TimelineTreeConstantData *this)
{
  *this = &unk_1F5CB17A8;
  v2 = (this + 24);
  re::FixedArray<CoreIKTransform>::deinit(this + 6);
  re::FixedArray<CoreIKTransform>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CB17A8;
  v2 = (this + 24);
  re::FixedArray<CoreIKTransform>::deinit(this + 6);
  re::FixedArray<CoreIKTransform>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::internal::TimelineTreeInfo::~TimelineTreeInfo(re::internal::TimelineTreeInfo *this)
{
  *this = &unk_1F5CB17F0;
  v2 = *(this + 34);
  if (v2)
  {
    CFRelease(v2);
    CFRelease(*(this + 35));
  }

  v3 = *(this + 28);
  if (v3)
  {
    if (*(this + 29))
    {
      (*(*v3 + 40))(v3, *(this + 30));
      *(this + 29) = 0;
      *(this + 30) = 0;
    }

    *(this + 28) = 0;
  }

  re::FixedArray<CoreIKTransform>::deinit(this + 25);
  v4 = *(this + 22);
  if (v4)
  {
    if (*(this + 23))
    {
      (*(*v4 + 40))(v4, *(this + 24));
      *(this + 23) = 0;
      *(this + 24) = 0;
    }

    *(this + 22) = 0;
  }

  re::internal::TimelineTree::~TimelineTree(this);
}

{
  re::internal::TimelineTreeInfo::~TimelineTreeInfo(this);

  JUMPOUT(0x1E6906520);
}

BOOL re::internal::TimelineTreeInfo::init(uint64_t a1, const re::Timeline *a2, char a3, void *a4, re::internal::TimelineTreeInfo *a5, void *a6, int a7, re::BindNode *a8, re::Allocator *a9)
{
  v15 = re::internal::TimelineTree::init(a1, a2, 0, a8, a9);
  if (v15)
  {
    if (*a6)
    {
      v16 = (*a6 + 8);
    }

    else
    {
      v16 = 0;
    }

    objc_storeWeak((a1 + 168), v16);
    if (a5)
    {
      *(a1 + 288) = a5;
      *(a1 + 296) = re::internal::TimelineTreeInfo::currentTime(a5);
    }

    else
    {
      *(a1 + 280) = a4;
      CFRetain(a4);
      CMTimebaseCreateWithSourceTimebase(*MEMORY[0x1E695E480], a4, (a1 + 272));
    }

    v18 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v17);
    v19 = v18[1];
    v21 = *(a1 + 184);
    if (v21)
    {
      v22 = 0;
      v23 = 12 * v21 - 12;
      v24 = vdupq_n_s64(v23 / 0xC);
      v25 = (*(a1 + 192) + 28);
      do
      {
        v26 = vdupq_n_s64(v22);
        v27 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_1E3049620)));
        if (vuzp1_s16(v27, *v24.i8).u8[0])
        {
          *(v25 - 6) = 1065353216;
        }

        if (vuzp1_s16(v27, *&v24).i8[2])
        {
          *(v25 - 3) = 1065353216;
        }

        if (vuzp1_s16(*&v24, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_1E3049640)))).i32[1])
        {
          *v25 = 1065353216;
          v25[3] = 1065353216;
        }

        v22 += 4;
        v25 += 12;
      }

      while (((v23 / 0xC + 4) & 0x3FFFFFFFFFFFFFFCLL) != v22);
    }

    v29 = *(a1 + 208);
    if (v29)
    {
      memset_pattern16(*(a1 + 216), &memset_pattern_1, 4 * v29);
    }

    *(a1 + 248) = a3;
    if (a7)
    {
      v31 = re::PackedDataPtr<re::internal::TimelineTreeState>::get((a1 + 80), v30);
      v32 = *v31;
      v33 = v31[1];
      v34 = v31 + v32;
      if (!v32)
      {
        v34 = 0;
      }

      if (v33)
      {
        v35 = 0;
        v36 = 72 * v33 - 72;
        v37 = vdupq_n_s64(v36 / 0x48);
        v38 = v34 + 212;
        do
        {
          v39 = vdupq_n_s64(v35);
          v40 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v39, xmmword_1E3049620)));
          if (vuzp1_s16(v40, *v37.i8).u8[0])
          {
            *(v38 - 36) = 1;
          }

          if (vuzp1_s16(v40, *&v37).i8[2])
          {
            *(v38 - 18) = 1;
          }

          if (vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v39, xmmword_1E3049640)))).i32[1])
          {
            *v38 = 1;
            v38[18] = 1;
          }

          v35 += 4;
          v38 += 72;
        }

        while (((v36 / 0x48 + 4) & 0x7FFFFFFFFFFFFFCLL) != v35);
      }
    }
  }

  return v15;
}

uint64_t re::internal::TimelineTreeInfo::updateEffectiveSpeed(uint64_t this)
{
  if (!*(this + 288))
  {
    v1 = this;
    if (*(this + 249) == 2)
    {
      this = CMTimebaseSetRate(*(this + 272), *(this + 252));
      *(v1 + 249) = 0;
    }
  }

  return this;
}

void re::internal::TimelineTreeInfo::setPaused(re::internal::TimelineTreeInfo *this, uint64_t a2)
{
  if (*(this + 36))
  {
    return;
  }

  v23[7] = v2;
  v23[8] = v3;
  v6 = *(this + 249);
  if (!a2)
  {
    if (v6 != 1)
    {
      return;
    }

    *(this + 249) = 2;
    goto LABEL_9;
  }

  if ((*(this + 304) & 1) == 0)
  {
    CMTimebaseSetRate(*(this + 34), 0.0);
  }

  *(this + 249) = 1;
  if (v6 != 1)
  {
LABEL_9:
    if (*(this + 13))
    {
      v7 = 0;
      do
      {
        if (*(re::internal::TimelineTree::source(this, v7) + 8) == 49)
        {
          if ((a2 & 1) != 0 || (v9 = re::PackedDataPtr<re::internal::TimelineTreeState>::get(this + 20, v8), re::RelativeArray<re::AnimationClock>::operator[](v9, v7)[16] == 1))
          {
            v10 = re::internal::TimelineTree::source(this, v7);
            v23[0] = 0;
            objc_copyWeak(v23, this + 21);
            WeakRetained = objc_loadWeakRetained(v23);
            objc_destroyWeak(v23);
            if (WeakRetained)
            {
              v13 = re::PackedDataPtr<re::internal::TimelineTreeState>::get(this + 20, v12);
              v14 = re::RelativeArray<re::AnimationClock>::operator[](v13, v7);
              v17 = *v14;
              v18 = v14[16];
              if (v18 == 1)
              {
                v19 = *(v14 + 3);
              }

              v15 = *(v14 + 2);
              v16 = *(v14 + 3);
              v22 = *(v14 + 8);
              v20 = v15;
              v21 = v16;
              re::TypedEventTimelineInstance<float>::processPauseResume(v10, a2, &v17, 0);
            }
          }
        }

        ++v7;
      }

      while (v7 < *(this + 13));
    }
  }
}

uint64_t re::internal::TimelineTreeInfo::setParentClockOrTimebase(uint64_t this, void *a2, char a3)
{
  if (!*(this + 288))
  {
    v4 = this;
    if (a2)
    {
      v6 = re::internal::TimelineTreeInfo::currentTime(this);
      CMTimebaseSetRate(*(v4 + 272), *(v4 + 252));
      v7 = CFGetTypeID(a2);
      TypeID = CMClockGetTypeID();
      v9 = *(v4 + 272);
      if (v7 == TypeID)
      {
        CMTimebaseSetSourceClock(v9, a2);
      }

      else
      {
        CMTimebaseSetSourceTimebase(v9, a2);
      }

      this = re::internal::TimelineTreeInfo::setCurrentTime(v4, v6);
      *(v4 + 304) = a3;
      if (*(v4 + 249) == 1 && (a3 & 1) == 0)
      {
        v10 = *(v4 + 272);

        return CMTimebaseSetRate(v10, 0.0);
      }
    }

    else
    {
      this = CMTimebaseSetSourceTimebase(*(this + 272), *(this + 280));
      if (*(v4 + 249) == 1 && *(v4 + 304) == 1)
      {
        this = CMTimebaseSetRate(*(v4 + 272), 0.0);
      }

      *(v4 + 304) = 0;
    }
  }

  return this;
}

uint64_t re::internal::TimelineTreeInfo::compositionChain(re::internal::TimelineTreeInfo *this, unint64_t a2)
{
  if (*(this + 29) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 30) + 8 * a2);
}

float re::internal::TimelineTreeInfo::localEffectiveSpeed(re::internal::TimelineTreeInfo *this)
{
  v3 = *(this + 36);
  if (!v3)
  {
    return CMTimebaseGetRate(*(this + 34));
  }

  v4 = *(*v3 + 24);

  v4();
  return result;
}

uint64_t re::FixedArray<re::OverridableValue<float>>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x1555555555555556)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 12, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 12 * a3, 4);
  *(v4 + 16) = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *result = 0;
      *(result + 4) = 0;
      *(result + 8) = 0;
      result += 12;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  *(result + 4) = 0;
  *(result + 8) = 0;
  return result;
}

void re::FixedArray<re::internal::AnimationCompositionChainBase *>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 8 * a3;
  v6 = (*(*a2 + 32))(a2, 8 * a3, 8);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 8);
    v8 = (v8 + v5 - 8);
  }

  *v8 = 0;
}

uint64_t re::FromToByAnimation<float>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, float *a5, float *a6, __n128 a7)
{
  if (a3)
  {
    v11 = *(a1 + 80);
    a7.n128_u32[0] = 1.0;
    v12 = 1.0;
    if (fabs(v11) >= 1.0e-12)
    {
      v12 = *(a2 + 24) / v11;
    }

    if (v12 <= 1.0)
    {
      a7.n128_f32[0] = v12;
    }

    if (a7.n128_f32[0] < 0.0)
    {
      a7.n128_f32[0] = 0.0;
    }

    result = *(a1 + 112);
    if (result)
    {
      result = (*(*result + 16))(result, a7);
    }

    v18 = 0.0;
    v14 = *(a1 + 88);
    if (v14 == 1)
    {
      v15 = (a1 + 92);
    }

    else
    {
      v15 = a4;
      if (*(a1 + 96) == 1)
      {
        v15 = a4;
        if (*(a1 + 104) == 1)
        {
          v18 = *(a1 + 100) - *(a1 + 108);
          v15 = &v18;
        }
      }
    }

    if (a7.n128_f32[0] == 0.0)
    {
      v16 = *v15;
    }

    else
    {
      if (*(a1 + 96) == 1)
      {
        v17 = (a1 + 100);
      }

      else if (*(a1 + 104) == 1)
      {
        v18 = *v15 + *(a1 + 108);
        v17 = &v18;
      }

      else if (v14)
      {
        v17 = a4;
      }

      else
      {
        v17 = a5;
      }

      if (a7.n128_f32[0] == 1.0)
      {
        v16 = *v17;
      }

      else
      {
        v16 = (a7.n128_f32[0] * *v17) + (*v15 * (1.0 - a7.n128_f32[0]));
      }
    }

    *a6 = v16;
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::FromToByAnimation<double>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, double *a5, double *a6, __n128 a7)
{
  if (a3)
  {
    v11 = *(a1 + 80);
    a7.n128_u32[0] = 1.0;
    v12 = 1.0;
    if (fabs(v11) >= 1.0e-12)
    {
      v12 = *(a2 + 24) / v11;
    }

    if (v12 <= 1.0)
    {
      a7.n128_f32[0] = v12;
    }

    if (a7.n128_f32[0] < 0.0)
    {
      a7.n128_f32[0] = 0.0;
    }

    result = *(a1 + 136);
    if (result)
    {
      result = (*(*result + 16))(result, a7);
    }

    v18 = 0.0;
    v14 = *(a1 + 88);
    if (v14 == 1)
    {
      v15 = (a1 + 96);
    }

    else
    {
      v15 = a4;
      if (*(a1 + 104) == 1)
      {
        v15 = a4;
        if (*(a1 + 120) == 1)
        {
          v18 = *(a1 + 112) - *(a1 + 128);
          v15 = &v18;
        }
      }
    }

    if (a7.n128_f32[0] == 0.0)
    {
      v16 = *v15;
    }

    else
    {
      if (*(a1 + 104) == 1)
      {
        v17 = (a1 + 112);
      }

      else if (*(a1 + 120) == 1)
      {
        v18 = *v15 + *(a1 + 128);
        v17 = &v18;
      }

      else if (v14)
      {
        v17 = a4;
      }

      else
      {
        v17 = a5;
      }

      if (a7.n128_f32[0] == 1.0)
      {
        v16 = *v17;
      }

      else
      {
        v16 = *v17 * a7.n128_f32[0] + *v15 * (1.0 - a7.n128_f32[0]);
      }
    }

    *a6 = v16;
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::FromToByAnimation<re::Vector2<float>>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5, float32x2_t *a6, __n128 a7)
{
  if (a3)
  {
    v11 = *(a1 + 80);
    a7.n128_u32[0] = 1.0;
    v12 = 1.0;
    if (fabs(v11) >= 1.0e-12)
    {
      v12 = *(a2 + 24) / v11;
    }

    if (v12 <= 1.0)
    {
      a7.n128_f32[0] = v12;
    }

    if (a7.n128_f32[0] < 0.0)
    {
      a7.n128_f32[0] = 0.0;
    }

    result = *(a1 + 136);
    if (result)
    {
      result = (*(*result + 16))(result, a7);
    }

    v18 = 0;
    v14 = *(a1 + 88);
    if (v14 == 1)
    {
      v15 = (a1 + 96);
    }

    else
    {
      v15 = a4;
      if (*(a1 + 104) == 1)
      {
        v15 = a4;
        if (*(a1 + 120) == 1)
        {
          v18 = vsub_f32(*(a1 + 112), *(a1 + 128));
          v15 = &v18;
        }
      }
    }

    if (a7.n128_f32[0] == 0.0)
    {
      v16 = *v15;
    }

    else
    {
      if (*(a1 + 104) == 1)
      {
        v17 = (a1 + 112);
      }

      else if (*(a1 + 120) == 1)
      {
        v18 = vadd_f32(*v15, *(a1 + 128));
        v17 = &v18;
      }

      else if (v14)
      {
        v17 = a4;
      }

      else
      {
        v17 = a5;
      }

      if (a7.n128_f32[0] != 1.0)
      {
        *a6 = vadd_f32(vmul_n_f32(*v15, 1.0 - a7.n128_f32[0]), vmul_n_f32(*v17, a7.n128_f32[0]));
        return result;
      }

      v16 = *v17;
    }

    *a6 = v16;
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::FromToByAnimation<re::Vector3<float>>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, __n128 a7)
{
  if (a3)
  {
    v11 = *(a1 + 80);
    a7.n128_u32[0] = 1.0;
    v12 = 1.0;
    if (fabs(v11) >= 1.0e-12)
    {
      v12 = *(a2 + 24) / v11;
    }

    if (v12 <= 1.0)
    {
      a7.n128_f32[0] = v12;
    }

    if (a7.n128_f32[0] < 0.0)
    {
      a7.n128_f32[0] = 0.0;
    }

    result = *(a1 + 192);
    if (result)
    {
      result = (*(*result + 16))(result, a7);
    }

    v18 = 0u;
    v14 = *(a1 + 96);
    if (v14 == 1)
    {
      v15 = (a1 + 112);
    }

    else
    {
      v15 = a4;
      if (*(a1 + 128) == 1)
      {
        v15 = a4;
        if (*(a1 + 160) == 1)
        {
          v18 = vsubq_f32(*(a1 + 144), *(a1 + 176));
          v15 = &v18;
        }
      }
    }

    if (a7.n128_f32[0] == 0.0)
    {
      v16 = *v15;
    }

    else
    {
      if (*(a1 + 128) == 1)
      {
        v17 = (a1 + 144);
      }

      else if (*(a1 + 160) == 1)
      {
        v18 = vaddq_f32(*v15, *(a1 + 176));
        v17 = &v18;
      }

      else if (v14)
      {
        v17 = a4;
      }

      else
      {
        v17 = a5;
      }

      if (a7.n128_f32[0] == 1.0)
      {
        v16 = *v17;
      }

      else
      {
        v16 = vmlaq_n_f32(vmulq_n_f32(*v17, a7.n128_f32[0]), *v15, 1.0 - a7.n128_f32[0]);
      }
    }

    *a6 = v16;
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::FromToByAnimation<re::Vector4<float>>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, __n128 a7)
{
  if (a3)
  {
    v11 = *(a1 + 80);
    a7.n128_u32[0] = 1.0;
    v12 = 1.0;
    if (fabs(v11) >= 1.0e-12)
    {
      v12 = *(a2 + 24) / v11;
    }

    if (v12 <= 1.0)
    {
      a7.n128_f32[0] = v12;
    }

    if (a7.n128_f32[0] < 0.0)
    {
      a7.n128_f32[0] = 0.0;
    }

    result = *(a1 + 192);
    if (result)
    {
      result = (*(*result + 16))(result, a7);
    }

    v18 = 0uLL;
    v14 = *(a1 + 96);
    if (v14 == 1)
    {
      v15 = (a1 + 112);
    }

    else
    {
      v15 = a4;
      if (*(a1 + 128) == 1)
      {
        v15 = a4;
        if (*(a1 + 160) == 1)
        {
          v18 = vsubq_f32(*(a1 + 144), *(a1 + 176));
          v15 = &v18;
        }
      }
    }

    if (a7.n128_f32[0] == 0.0)
    {
      v16 = *v15;
    }

    else
    {
      if (*(a1 + 128) == 1)
      {
        v17 = (a1 + 144);
      }

      else if (*(a1 + 160) == 1)
      {
        v18 = vaddq_f32(*v15, *(a1 + 176));
        v17 = &v18;
      }

      else if (v14)
      {
        v17 = a4;
      }

      else
      {
        v17 = a5;
      }

      if (a7.n128_f32[0] == 1.0)
      {
        v16 = *v17;
      }

      else
      {
        v16 = vaddq_f32(vmulq_n_f32(*v15, 1.0 - a7.n128_f32[0]), vmulq_n_f32(*v17, a7.n128_f32[0]));
      }
    }

    *a6 = v16;
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::FromToByAnimation<re::Quaternion<float>>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, int32x4_t *a4, float32x4_t *a5, float32x4_t *a6)
{
  if (a3)
  {
    v10 = *(a1 + 80);
    v11 = 1.0;
    v12 = 1.0;
    if (fabs(v10) >= 1.0e-12)
    {
      v12 = *(a2 + 24) / v10;
    }

    if (v12 <= 1.0)
    {
      v11 = v12;
    }

    if (v11 >= 0.0)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0.0;
    }

    v14 = *(a1 + 192);
    if (v14)
    {
      v13 = (*(*v14 + 16))(v14, v13);
    }

    v68 = xmmword_1E30474D0;
    v15 = *(a1 + 96);
    if (v15 == 1)
    {
      v16 = (a1 + 112);
    }

    else
    {
      v16 = a4;
      if (*(a1 + 128) == 1)
      {
        v16 = a4;
        if (*(a1 + 160) == 1)
        {
          v68 = *(a1 + 176);
          _V0.S[3] = HIDWORD(v68);
          _Q1 = vnegq_f32(v68);
          v19 = *(a1 + 144);
          _Q4 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), v68), v19, vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL));
          v21 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q4, _Q4), _Q4, 0xCuLL), v19, v68, 3);
          _Q4.i32[0] = v19.i32[3];
          v22 = vmlsq_laneq_f32(v21, v68, v19, 3);
          __asm { FMLA            S1, S4, V0.S[3] }

          v22.i32[3] = _Q1.i32[0];
          v68 = v22;
          v16 = &v68;
        }
      }
    }

    if (v13 == 0.0)
    {
      v27 = *v16;
LABEL_27:
      *a6 = v27;
      return;
    }

    if (*(a1 + 128) == 1)
    {
      v28 = (a1 + 144);
    }

    else if (*(a1 + 160) == 1)
    {
      _Q0 = *(a1 + 176);
      _Q3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*v16, *v16), *v16, 0xCuLL), vnegq_f32(_Q0)), *v16, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
      v31 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), *v16, _Q0, 3);
      _Q3.i32[0] = HIDWORD(*v16);
      v32 = vmlaq_laneq_f32(v31, _Q0, *v16, 3);
      __asm { FMLA            S1, S3, V0.S[3] }

      v32.i32[3] = _S1;
      v68 = v32;
      v28 = &v68;
    }

    else if (v15)
    {
      v28 = a4;
    }

    else
    {
      v28 = a5;
    }

    if (v13 == 1.0)
    {
      v27 = *v28;
      goto LABEL_27;
    }

    v34 = vmulq_f32(*v16, *v28);
    v35 = vextq_s8(v34, v34, 8uLL);
    *v34.f32 = vadd_f32(*v34.f32, *v35.f32);
    v34.f32[0] = vaddv_f32(*v34.f32);
    v35.i64[0] = 0;
    v36 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v34, v35)), 0), vnegq_f32(*v28), *v28);
    v37 = 1.0 - v13;
    v38 = vsubq_f32(*v16, v36);
    v39 = vmulq_f32(v38, v38);
    v66 = v36;
    v67 = *v16;
    v40 = vaddq_f32(*v16, v36);
    v41 = vmulq_f32(v40, v40);
    v42 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v39.i8, *&vextq_s8(v39, v39, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v41.i8, *&vextq_s8(v41, v41, 8uLL)))));
    v43 = 1.0;
    v44 = v42 + v42;
    if ((v42 + v42) != 0.0)
    {
      v43 = sinf(v42 + v42) / v44;
    }

    v45 = v43;
    v46 = vrecpe_f32(LODWORD(v43));
    v47 = vmul_f32(v46, vrecps_f32(LODWORD(v45), v46));
    v50 = vrecps_f32(LODWORD(v45), v47);
    LODWORD(v48) = vmul_f32(v47, v50).u32[0];
    v49 = 1.0;
    v50.i32[0] = 1.0;
    if ((v37 * v44) != 0.0)
    {
      v64 = v48;
      v50.f32[0] = sinf(v37 * v44);
      v48 = v64;
      v50.f32[0] = v50.f32[0] / (v37 * v44);
    }

    v50.f32[0] = v37 * (v48 * v50.f32[0]);
    v51 = vdupq_lane_s32(v50, 0);
    v52 = v13 * v44;
    if (v52 != 0.0)
    {
      v63 = v51;
      v65 = v48;
      v53 = sinf(v52);
      v51 = v63;
      v48 = v65;
      v49 = v53 / v52;
    }

    v54 = vmlaq_f32(vmulq_n_f32(v66, v13 * (v48 * v49)), v67, v51);
    v55 = vmulq_f32(v54, v54);
    v56 = vadd_f32(*v55.i8, *&vextq_s8(v55, v55, 8uLL));
    if (vaddv_f32(v56) == 0.0)
    {
      v57 = 0;
      v58 = 0x3F80000000000000;
    }

    else
    {
      v59 = vadd_f32(v56, vdup_lane_s32(v56, 1)).u32[0];
      v60 = vrsqrte_f32(v59);
      v61 = vmul_f32(v60, vrsqrts_f32(v59, vmul_f32(v60, v60)));
      v62 = vmulq_n_f32(v54, vmul_f32(v61, vrsqrts_f32(v59, vmul_f32(v61, v61))).f32[0]);
      v58 = v62.i64[1];
      v57 = v62.i64[0];
    }

    a6->i64[0] = v57;
    a6->i64[1] = v58;
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
  }
}

void re::FromToByAnimation<re::GenericSRT<float>>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6)
{
  if (a3)
  {
    v10 = *(a1 + 80);
    v11 = 1.0;
    v12 = 1.0;
    if (fabs(v10) >= 1.0e-12)
    {
      v12 = *(a2 + 24) / v10;
    }

    if (v12 <= 1.0)
    {
      v11 = v12;
    }

    if (v11 >= 0.0)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0.0;
    }

    v14 = *(a1 + 288);
    if (v14)
    {
      v13 = (*(*v14 + 16))(v14, v13);
    }

    v46.i64[0] = 0x3F8000003F800000;
    v46.i64[1] = 1065353216;
    v47.i64[0] = 0;
    v47.i64[1] = 0x3F80000000000000;
    v48 = 0uLL;
    v15 = *(a1 + 96);
    if (v15 == 1)
    {
      v16 = (a1 + 112);
    }

    else
    {
      v16 = a4;
      if (*(a1 + 160) == 1)
      {
        v16 = a4;
        if (*(a1 + 224) == 1)
        {
          _Q1 = *(a1 + 256);
          v18 = *(a1 + 272);
          __asm { FMOV            V3.4S, #1.0 }

          v24 = vdivq_f32(_Q3, *(a1 + 240));
          _Q3 = vnegq_f32(_Q1);
          v26 = vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL);
          v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), _Q1), v18, v26);
          v28 = vaddq_f32(v27, v27);
          v29 = vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL);
          v30 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL), _Q1), v29, v26);
          v31 = vaddq_f32(vaddq_f32(v18, vmulq_laneq_f32(v29, _Q1, 3)), vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL));
          v32 = *(a1 + 192);
          v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), _Q1), v32, v26);
          _S16 = v32.i32[3];
          v35 = vmlsq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL), v32, _Q1, 3), _Q1, v32, 3);
          __asm { FMLA            S3, S16, V1.S[3] }

          v35.i32[3] = _Q3.i32[0];
          v36 = *(a1 + 208);
          v37 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL), _Q1), v36, v26);
          v38 = vaddq_f32(v37, v37);
          v39 = vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL);
          v40 = vaddq_f32(v36, vmulq_laneq_f32(v39, _Q1, 3));
          v41 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL), _Q1), v39, v26);
          v46 = vmulq_f32(v24, *(a1 + 176));
          v47 = v35;
          v48 = vsubq_f32(vmulq_f32(v24, vaddq_f32(v40, vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL))), vmulq_f32(v24, v31));
          v16 = &v46;
        }
      }
    }

    if (v13 == 0.0)
    {
      v42 = *v16;
      v43 = v16[1];
      v44 = v16[2];
LABEL_26:
      a6[1] = v43;
      a6[2] = v44;
      *a6 = v42;
      return;
    }

    if (*(a1 + 160) == 1)
    {
      a5 = (a1 + 176);
    }

    else if (*(a1 + 224) == 1)
    {
      a5 = &v46;
      re::AnimationValueTraits<re::GenericSRT<float>>::combine(v16, (a1 + 240), &v46);
    }

    else if (v15)
    {
      a5 = a4;
    }

    if (v13 == 1.0)
    {
      v42 = *a5;
      v43 = a5[1];
      v44 = a5[2];
      goto LABEL_26;
    }

    re::lerp<float>(v16, a5, v49, v13);
    v45 = v49[1];
    *a6 = v49[0];
    a6[1] = v45;
    a6[2] = v49[2];
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
  }
}

void re::FromToByAnimation<re::SkeletalPose>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  if (a3)
  {
    v10 = *(a1 + 80);
    v11 = 1.0;
    v12 = 1.0;
    if (fabs(v10) >= 1.0e-12)
    {
      v12 = *(a2 + 24) / v10;
    }

    if (v12 <= 1.0)
    {
      v11 = v12;
    }

    if (v11 >= 0.0)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0.0;
    }

    v14 = *(a1 + 376);
    if (v14)
    {
      v13 = (*(*v14 + 16))(v14, v13);
    }

    v17[0] = 0;
    v17[1] = &str_67;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    if (*(a1 + 88) == 1)
    {
      v15 = 0;
      v16 = (a1 + 96);
    }

    else if (*(a1 + 184) == 1 && *(a1 + 280) == 1)
    {
      v16 = v17;
      re::AnimationValueTraits<re::SkeletalPose>::init(v17, a4);
      re::AnimationValueTraits<re::SkeletalPose>::invert((a1 + 288), v17);
      re::AnimationValueTraits<re::SkeletalPose>::combine((a1 + 192), v17, v17);
      v15 = 1;
    }

    else
    {
      v15 = 0;
      v16 = a4;
    }

    if (v13 == 0.0)
    {
      re::AnimationValueTraits<re::SkeletalPose>::copy(v16, a6);
LABEL_28:
      re::SkeletalPose::~SkeletalPose(v17);
      return;
    }

    if (*(a1 + 184) == 1)
    {
      a5 = (a1 + 192);
    }

    else if (*(a1 + 280) == 1)
    {
      a5 = v17;
      re::AnimationValueTraits<re::SkeletalPose>::init(v17, a4);
      re::AnimationValueTraits<re::SkeletalPose>::combine(v16, (a1 + 288), v17);
      v15 = 1;
    }

    else if (*(a1 + 88))
    {
      a5 = a4;
    }

    if (v13 == 1.0)
    {
      re::AnimationValueTraits<re::SkeletalPose>::copy(a5, a6);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      re::AnimationValueTraits<re::SkeletalPose>::interpolate(v16, a5, a6, v13);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    re::SkeletalPose::deinit(v17);
    goto LABEL_28;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  _os_crash();
  __break(1u);
}

void re::FromToByAnimation<re::BlendShapeWeights>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    v10 = *(a1 + 80);
    v11 = 1.0;
    v12 = 1.0;
    if (fabs(v10) >= 1.0e-12)
    {
      v12 = *(a2 + 24) / v10;
    }

    if (v12 <= 1.0)
    {
      v11 = v12;
    }

    if (v11 >= 0.0)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0.0;
    }

    v14 = *(a1 + 208);
    if (v14)
    {
      v13 = (*(*v14 + 16))(v14, v13);
    }

    memset(v17, 0, sizeof(v17));
    if (*(a1 + 88) == 1)
    {
      v15 = 0;
      v16 = (a1 + 96);
    }

    else if (*(a1 + 128) == 1 && *(a1 + 168) == 1)
    {
      v16 = v17;
      re::BlendShapeWeights::init(v17, a4 + 3);
      re::AnimationValueTraits<re::BlendShapeWeights>::invert((a1 + 176), v17);
      re::AnimationValueTraits<re::BlendShapeWeights>::combine((a1 + 136), v17, v17);
      v15 = 1;
    }

    else
    {
      v15 = 0;
      v16 = a4;
    }

    if (v13 == 0.0)
    {
      re::AnimationValueTraits<re::BlendShapeWeights>::copy(v16, a6);
LABEL_28:
      re::BlendShapeWeights::~BlendShapeWeights(v17);
      return;
    }

    if (*(a1 + 128) == 1)
    {
      a5 = (a1 + 136);
    }

    else if (*(a1 + 168) == 1)
    {
      a5 = v17;
      re::BlendShapeWeights::init(v17, a4 + 3);
      re::AnimationValueTraits<re::BlendShapeWeights>::combine(v16, (a1 + 176), v17);
      v15 = 1;
    }

    else if (*(a1 + 88))
    {
      a5 = a4;
    }

    if (v13 == 1.0)
    {
      re::AnimationValueTraits<re::BlendShapeWeights>::copy(a5, a6);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      re::AnimationValueTraits<re::BlendShapeWeights>::interpolate(v16, a5, a6, v13);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    re::BlendShapeWeights::deinit(v17);
    goto LABEL_28;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  _os_crash();
  __break(1u);
}

uint64_t re::FromToByAnimation<re::SkeletalPose>::~FromToByAnimation(uint64_t a1)
{
  *a1 = &unk_1F5CB1840;
  if (*(a1 + 280) == 1)
  {
    re::SkeletalPose::~SkeletalPose((a1 + 288));
  }

  if (*(a1 + 184) == 1)
  {
    re::SkeletalPose::~SkeletalPose((a1 + 192));
  }

  if (*(a1 + 88) == 1)
  {
    re::SkeletalPose::~SkeletalPose((a1 + 96));
  }

  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::FromToByAnimation<re::SkeletalPose>::~FromToByAnimation(uint64_t a1)
{
  *a1 = &unk_1F5CB1840;
  if (*(a1 + 280) == 1)
  {
    re::SkeletalPose::~SkeletalPose((a1 + 288));
  }

  if (*(a1 + 184) == 1)
  {
    re::SkeletalPose::~SkeletalPose((a1 + 192));
  }

  if (*(a1 + 88) == 1)
  {
    re::SkeletalPose::~SkeletalPose((a1 + 96));
  }

  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));

  JUMPOUT(0x1E6906520);
}

uint64_t re::FromToByAnimation<re::BlendShapeWeights>::~FromToByAnimation(uint64_t a1)
{
  *a1 = &unk_1F5CB18D8;
  if (*(a1 + 168) == 1)
  {
    re::BlendShapeWeights::~BlendShapeWeights((a1 + 176));
  }

  if (*(a1 + 128) == 1)
  {
    re::BlendShapeWeights::~BlendShapeWeights((a1 + 136));
  }

  if (*(a1 + 88) == 1)
  {
    re::BlendShapeWeights::~BlendShapeWeights((a1 + 96));
  }

  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::FromToByAnimation<re::BlendShapeWeights>::~FromToByAnimation(uint64_t a1)
{
  *a1 = &unk_1F5CB18D8;
  if (*(a1 + 168) == 1)
  {
    re::BlendShapeWeights::~BlendShapeWeights((a1 + 176));
  }

  if (*(a1 + 128) == 1)
  {
    re::BlendShapeWeights::~BlendShapeWeights((a1 + 136));
  }

  if (*(a1 + 88) == 1)
  {
    re::BlendShapeWeights::~BlendShapeWeights((a1 + 96));
  }

  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));

  JUMPOUT(0x1E6906520);
}

uint64_t re::AnimationHelper::makeAdditiveForOptionalValueReferences<float>(re *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 1) != a4)
  {
    v23 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v27 = 0;
    v24 = "Cannot make additive values, output values expected to match input values size.";
    v25 = &v27;
    goto LABEL_42;
  }

  if (!a2[1])
  {
    v23 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v24 = "Cannot make additive values, base values array size must not be zero.";
    v25 = buf;
LABEL_42:
    _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, v24, v25, 2u);
    return 0;
  }

  result = 1;
  if (a4)
  {
    v6 = 0;
    v7 = *a1;
    v8 = 0.0;
    v9 = a4;
    do
    {
      if (a4 == v6)
      {
        re::internal::assertLog(6, a2, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a4, a4);
        _os_crash();
        __break(1u);
LABEL_44:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, v9);
        _os_crash();
        __break(1u);
LABEL_45:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, v15);
        _os_crash();
        __break(1u);
        goto LABEL_46;
      }

      v10 = *(v7 + 8 * v6);
      v11 = *v10;
      v12 = *(a3 + 8 * v6);
      v13 = *v12;
      if (v11 != v13)
      {
        if (v13)
        {
          if (v11)
          {
            *(v12 + 1) = *(v10 + 1);
            v9 = *(a1 + 1);
          }

          else
          {
            *v12 = 0;
          }
        }

        else if (v11)
        {
          *v12 = 1;
          *(v12 + 1) = *(v10 + 1);
        }
      }

      if (v9 <= v6)
      {
        goto LABEL_44;
      }

      v7 = *a1;
      v14 = *(*a1 + 8 * v6);
      v15 = a2[1];
      if (*v14 == 1)
      {
        if (v15 <= v6)
        {
          goto LABEL_45;
        }

        v16 = **(*a2 + 8 * v6);
        *&v8 = -v16;
        *(*(a3 + 8 * v6) + 4) = *(v14 + 4) - v16;
        v15 = a2[1];
      }

      ++v6;
    }

    while (v9 > v6 && v15 > v6);
    result = 1;
    if (v9 <= v6)
    {
      return result;
    }

    v17 = v6;
    if (a4 <= v6)
    {
      v18 = v6;
    }

    else
    {
      v18 = a4;
    }

    if (a4 <= v6)
    {
      v6 = v6;
    }

    else
    {
      v6 = a4;
    }

    while (v6 != v17)
    {
      v19 = *(v7 + 8 * v17);
      v20 = *v19;
      v21 = *(a3 + 8 * v17);
      v22 = *v21;
      if (v20 != v22)
      {
        if (v22)
        {
          if (v20)
          {
            *(v21 + 1) = *(v19 + 1);
            v9 = *(a1 + 1);
          }

          else
          {
            *v21 = 0;
          }
        }

        else if (v20)
        {
          *v21 = 1;
          *(v21 + 1) = *(v19 + 1);
        }
      }

      if (v9 <= v17)
      {
        goto LABEL_47;
      }

      v7 = *a1;
      *(*(a3 + 8 * v17) + 4) = *&v8 + *(*(*a1 + 8 * v17) + 4);
      if (v9 <= ++v17)
      {
        return 1;
      }
    }

LABEL_46:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v18, a4);
    _os_crash();
    __break(1u);
LABEL_47:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v9);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::AnimationHelper::makeAdditiveForOptionalValueReferences<double>(re *a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 1) != a4)
  {
    v23 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v27 = 0;
    v24 = "Cannot make additive values, output values expected to match input values size.";
    v25 = &v27;
    goto LABEL_42;
  }

  if (!a2[1])
  {
    v23 = *re::animationLogObjects(a1);
    result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v24 = "Cannot make additive values, base values array size must not be zero.";
    v25 = buf;
LABEL_42:
    _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, v24, v25, 2u);
    return 0;
  }

  result = 1;
  if (a4)
  {
    v6 = 0;
    v7 = *a1;
    v8 = 0.0;
    v9 = a4;
    do
    {
      if (a4 == v6)
      {
        re::internal::assertLog(6, a2, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a4, a4);
        _os_crash();
        __break(1u);
LABEL_44:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, v9);
        _os_crash();
        __break(1u);
LABEL_45:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, v15);
        _os_crash();
        __break(1u);
        goto LABEL_46;
      }

      v10 = *(v7 + 8 * v6);
      v11 = *v10;
      v12 = *(a3 + 8 * v6);
      v13 = *v12;
      if (v11 != v13)
      {
        if (v13)
        {
          if (v11)
          {
            *(v12 + 1) = *(v10 + 1);
            v9 = *(a1 + 1);
          }

          else
          {
            *v12 = 0;
          }
        }

        else if (v11)
        {
          *v12 = 1;
          *(v12 + 1) = *(v10 + 1);
        }
      }

      if (v9 <= v6)
      {
        goto LABEL_44;
      }

      v7 = *a1;
      v14 = *(*a1 + 8 * v6);
      v15 = a2[1];
      if (*v14 == 1)
      {
        if (v15 <= v6)
        {
          goto LABEL_45;
        }

        v16 = **(*a2 + 8 * v6);
        v8 = -v16;
        *(*(a3 + 8 * v6) + 8) = *(v14 + 8) - v16;
        v15 = a2[1];
      }

      ++v6;
    }

    while (v9 > v6 && v15 > v6);
    result = 1;
    if (v9 <= v6)
    {
      return result;
    }

    v17 = v6;
    if (a4 <= v6)
    {
      v18 = v6;
    }

    else
    {
      v18 = a4;
    }

    if (a4 <= v6)
    {
      v6 = v6;
    }

    else
    {
      v6 = a4;
    }

    while (v6 != v17)
    {
      v19 = *(v7 + 8 * v17);
      v20 = *v19;
      v21 = *(a3 + 8 * v17);
      v22 = *v21;
      if (v20 != v22)
      {
        if (v22)
        {
          if (v20)
          {
            *(v21 + 1) = *(v19 + 1);
            v9 = *(a1 + 1);
          }

          else
          {
            *v21 = 0;
          }
        }

        else if (v20)
        {
          *v21 = 1;
          *(v21 + 1) = *(v19 + 1);
        }
      }

      if (v9 <= v17)
      {
        goto LABEL_47;
      }

      v7 = *a1;
      *(*(a3 + 8 * v17) + 8) = v8 + *(*(*a1 + 8 * v17) + 8);
      if (v9 <= ++v17)
      {
        return 1;
      }
    }

LABEL_46:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v18, a4);
    _os_crash();
    __break(1u);
LABEL_47:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v9);
    result = _os_crash();
    __break(1u);
  }

  return result;
}