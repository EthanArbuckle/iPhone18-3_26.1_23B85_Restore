_anonymous_namespace_ *re::TypeRegistry::typeName(_anonymous_namespace_ *result, void *a2)
{
  if (!*a2 || (result = re::DataArray<re::TextureAtlasTile>::tryGet(result + 96, a2[1])) == 0)
  {
  }

  return result;
}

uint64_t *re::TypeRegistry::typeName(uint64_t a1, uint64_t a2)
{
  result = re::DataArray<re::TextureAtlasTile>::tryGet(a1 + 96, a2);
  if (!result)
  {
  }

  return result;
}

void anonymous namespace::invalidTypeName(_anonymous_namespace_ *this)
{
  {
  }
}

void re::TypeRegistry::setGetActualType(re *a1, re **a2, uint64_t a3)
{
  re::TypeRegistry::typeInfo(a1, a2, v5);
  if (v5[0])
  {
    *(v6 + 152) = a3;
  }

  else
  {
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Type has been forward declared but type information is missing.", "type", "setGetActualType", 399);
    _os_crash();
    __break(1u);
  }
}

void re::TypeRegistry::overridePolymorphicObjectName(uint64_t a1, uint64_t a2, StringID *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    goto LABEL_17;
  }

  if (*a2 != a1)
  {
LABEL_18:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Wrong type registry.", "typeID.registry() == this", "overridePolymorphicObjectName", 407);
    _os_crash();
    __break(1u);
    goto LABEL_19;
  }

  if (*(re::DataArray<re::internal::TypeInfoIndex>::tryGet(a1 + 32, *(a2 + 8)) + 3) != 8)
  {
LABEL_19:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Type must be struct/class.", "typeCategory(typeID) == TypeCategory::kObject", "overridePolymorphicObjectName", 408);
    _os_crash();
    __break(1u);
LABEL_20:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Type has been forward declared but type information is missing.", "typeInfo", "overridePolymorphicObjectName", 411);
    _os_crash();
    __break(1u);
  }

  re::TypeRegistry::typeInfo(a1, a2, v18);
  if ((v18[0] & 1) == 0)
  {
    goto LABEL_20;
  }

  re::TypeRegistry::makeStringID(a1, a3, &v17);
  re::StringID::operator=(v20 + 14, &v17);
  re::TypeInfo::rootClass(&v19, v15);
  v8 = *re::DataArray<re::internal::TypeInfoIndex>::get(a1 + 32, *v16) & 0xFFFFFF;
  v9 = re::DataArray<re::internal::TypeInfoIndex>::get(a1 + 32, *v20);
  v10 = *(v16 + 88);
  if (v8 < v10 + v8)
  {
    v11 = *v9 & 0xFFFFFF;
    v12 = 176 * v8 + 112;
    do
    {
      if (v11 != v8)
      {
        v13 = *(a1 + 624);
        if (v13 <= v8)
        {
          v21 = 0;
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v30 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v22 = 136315906;
          v23 = "operator[]";
          v24 = 1024;
          v25 = 789;
          v26 = 2048;
          v27 = v8;
          v28 = 2048;
          v29 = v13;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_16:
          re::internal::assertLog(5, v14, "assertion failure: '%s' (%s:line %i) Duplicate polymorphic object name %s.", "m_objectTypes[i].polymorphicObjectName != polymorphicObjectName", "overridePolymorphicObjectName", 429, a3->var1);
          _os_crash();
          __break(1u);
LABEL_17:
          re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid type ID.", "typeID.isValid()", "overridePolymorphicObjectName", 406);
          _os_crash();
          __break(1u);
          goto LABEL_18;
        }

        v9 = re::StringID::operator==((*(a1 + 640) + v12), a3);
        if (v9)
        {
          goto LABEL_16;
        }
      }

      ++v8;
      v12 += 176;
      --v10;
    }

    while (v10);
  }

  ++*(a1 + 24);
  if (v17)
  {
    if (v17)
    {
    }
  }
}

_DWORD *re::TypeRegistry::overrideCustomClassID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    goto LABEL_16;
  }

  if (*a2 != a1)
  {
LABEL_17:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Wrong type registry.", "typeID.registry() == this", "overrideCustomClassID", 438);
    _os_crash();
    __break(1u);
LABEL_18:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Type must be struct/class.", "typeCategory(typeID) == TypeCategory::kObject", "overrideCustomClassID", 439);
    _os_crash();
    __break(1u);
  }

  if (*(re::DataArray<re::internal::TypeInfoIndex>::tryGet(a1 + 32, *(a2 + 8)) + 3) != 8)
  {
    goto LABEL_18;
  }

  re::TypeRegistry::typeInfo(a1, a2, v18);
  v7 = v20;
  if ((*(v20 + 128) & 1) == 0)
  {
    *(v20 + 128) = 1;
  }

  *(v7 + 136) = a3;
  re::TypeInfo::rootClass(v19, v16);
  v8 = *re::DataArray<re::internal::TypeInfoIndex>::get(a1 + 32, *v17) & 0xFFFFFF;
  result = re::DataArray<re::internal::TypeInfoIndex>::get(a1 + 32, *v20);
  v10 = *(v17 + 88);
  if (v8 < v10 + v8)
  {
    v11 = 176 * v8;
    do
    {
      if ((*result & 0xFFFFFF) != v8)
      {
        v12 = *(a1 + 624);
        if (v12 <= v8)
        {
          v21 = 0;
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v30 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v22 = 136315906;
          v23 = "operator[]";
          v24 = 1024;
          v25 = 789;
          v26 = 2048;
          v27 = v8;
          v28 = 2048;
          v29 = v12;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_15:
          re::TypeInfo::name(v19);
          v14 = re::TypeInfo::name(v19);
          re::internal::assertLog(5, v15, "assertion failure: '%s' (%s:line %i) Duplicate class ID (type: %s).", "m_objectTypes[i].customClassID != customClassID", "overrideCustomClassID", 457, v14[1]);
          _os_crash();
          __break(1u);
LABEL_16:
          re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid type ID.", "typeID.isValid()", "overrideCustomClassID", 437);
          _os_crash();
          __break(1u);
          goto LABEL_17;
        }

        v13 = *(a1 + 640) + v11;
        if (*(v13 + 128) == 1 && *(v13 + 136) == a3)
        {
          goto LABEL_15;
        }
      }

      ++v8;
      v11 += 176;
      --v10;
    }

    while (v10);
  }

  ++*(a1 + 24);
  return result;
}

void re::TypeRegistry::clearCustomClassID(re *a1, uint64_t a2)
{
  if (!*a2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid type ID.", "typeID.isValid()", "clearCustomClassID", 465);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  if (*a2 != a1)
  {
LABEL_10:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Wrong type registry.", "typeID.registry() == this", "clearCustomClassID", 466);
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  if (*(re::DataArray<re::internal::TypeInfoIndex>::tryGet(a1 + 32, *(a2 + 8)) + 3) != 8)
  {
LABEL_11:
    re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Type must be struct/class.", "typeCategory(typeID) == TypeCategory::kObject", "clearCustomClassID", 467);
    _os_crash();
    __break(1u);
    return;
  }

  re::TypeRegistry::typeInfo(a1, a2, v5);
  if (v5[0] == 1)
  {
    if (*(v6 + 128) == 1)
    {
      *(v6 + 128) = 0;
    }

    ++*(a1 + 6);
  }
}

uint64_t re::TypeRegistry::addAttribute(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (!*a2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid type ID.", "typeID.isValid()", "addAttribute", 481);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (*a2 != a1)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Wrong type registry.", "typeID.registry() == this", "addAttribute", 482);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  if (!*a4)
  {
LABEL_13:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid attribute type ID.", "attributeTypeID.isValid()", "addAttribute", 483);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v10 = a2[1];
  v15[0] = *(a4 + 8);
  v15[1] = v10;
  v16 = a3;
  result = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(a1 + 768, v15);
  if (result)
  {
    v12 = result;
    if (*result == a5)
    {
      return result;
    }

    if (*result)
    {
      if (*(result + 8))
      {
        re::TypeRegistry::typeInfo(a1, a4, &v13);
        re::TypeInfo::releaseInstance(v14, *v12, *(a1 + 16), 0);
      }
    }
  }

  v13 = a5;
  v14[0] = a6;
  result = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::addOrReplace(a1 + 768, v15, &v13);
  ++*(a1 + 24);
  return result;
}

uint64_t re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(uint64_t a1, uint64_t *a2)
{
  v4 = re::Hash<re::internal::TypeAttributeKey>::operator()(v6, a2);
  re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::findEntry<re::internal::TypeAttributeKey>(a1, a2, v4, v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 56 * v7 + 32;
  }
}

uint64_t re::TypeRegistry::attributesByAttributeType@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2)
  {
    v4 = result;
    if (*a2 == result)
    {
      v6 = *(result + 800);
      if (v6)
      {
        v7 = 0;
        v8 = *(result + 784);
        while (1)
        {
          v9 = *v8;
          v8 += 14;
          if (v9 < 0)
          {
            break;
          }

          if (v6 == ++v7)
          {
            LODWORD(v7) = *(result + 800);
            break;
          }
        }
      }

      else
      {
        LODWORD(v7) = 0;
      }

      if (v7 == v6)
      {
        v10 = 0;
      }

      else
      {
        v10 = 0;
        v11 = *(result + 784);
        do
        {
          v12 = v11 + 56 * v7;
          v14 = *(v12 + 8);
          v13 = v12 + 8;
          if (v14 == *(a2 + 8) && *(v13 + 2) == HIWORD(*(a2 + 8)) && ((*(v13 + 4) ^ *(a2 + 12)) & 0xFFFFFF) == 0)
          {
            ++v10;
          }

          if (v6 <= v7 + 1)
          {
            v15 = v7 + 1;
          }

          else
          {
            v15 = *(result + 800);
          }

          while (v15 - 1 != v7)
          {
            LODWORD(v7) = v7 + 1;
            if ((*(v11 + 56 * v7) & 0x80000000) != 0)
            {
              goto LABEL_24;
            }
          }

          LODWORD(v7) = v15;
LABEL_24:
          ;
        }

        while (v7 != v6);
      }

      *(a3 + 32) = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      result = re::DynamicArray<re::ecs2::CustomSystemRegistry::SystemDependency>::setCapacity(a3, v10);
      v16 = *(a3 + 24) + 1;
      *(a3 + 24) = v16;
      v17 = *(v4 + 800);
      if (v17)
      {
        v18 = 0;
        v19 = *(v4 + 784);
        while (1)
        {
          v20 = *v19;
          v19 += 14;
          if (v20 < 0)
          {
            break;
          }

          if (v17 == ++v18)
          {
            LODWORD(v18) = *(v4 + 800);
            break;
          }
        }
      }

      else
      {
        LODWORD(v18) = 0;
      }

      if (v18 != v17)
      {
        v21 = *(v4 + 800);
        do
        {
          v22 = *(v4 + 784) + 56 * v18;
          v24 = *(v22 + 8);
          v23 = v22 + 8;
          v25 = *(a2 + 8);
          if (v24 == v25 && *(v23 + 2) == WORD1(v25) && ((*(v23 + 4) ^ HIDWORD(v25)) & 0xFFFFFF) == 0)
          {
            v26 = *v23;
            v27 = *(v23 + 8);
            v28 = *(v23 + 16);
            v29 = *(v23 + 24);
            v31 = *(a3 + 8);
            v30 = *(a3 + 16);
            if (v30 >= v31)
            {
              v32 = v30 + 1;
              if (v31 < v30 + 1)
              {
                v37 = v28;
                if (*a3)
                {
                  v33 = 2 * v31;
                  if (!v31)
                  {
                    v33 = 8;
                  }

                  if (v33 <= v32)
                  {
                    v34 = v30 + 1;
                  }

                  else
                  {
                    v34 = v33;
                  }

                  result = re::DynamicArray<re::ecs2::CustomSystemRegistry::SystemDependency>::setCapacity(a3, v34);
                  v16 = *(a3 + 24);
                }

                else
                {
                  result = re::DynamicArray<re::ecs2::CustomSystemRegistry::SystemDependency>::setCapacity(a3, v32);
                  v16 = *(a3 + 24) + 1;
                }

                v28 = v37;
              }

              v30 = *(a3 + 16);
            }

            v35 = *(a3 + 32) + 48 * v30;
            *v35 = v4;
            *(v35 + 8) = v26;
            *(v35 + 16) = v4;
            *(v35 + 24) = v27;
            *(v35 + 32) = v28;
            *(v35 + 40) = v29;
            *(a3 + 16) = v30 + 1;
            *(a3 + 24) = ++v16;
            v21 = *(v4 + 800);
          }

          if (v21 <= v18 + 1)
          {
            v36 = v18 + 1;
          }

          else
          {
            v36 = v21;
          }

          while (v36 - 1 != v18)
          {
            LODWORD(v18) = v18 + 1;
            if ((*(*(v4 + 784) + 56 * v18) & 0x80000000) != 0)
            {
              goto LABEL_56;
            }
          }

          LODWORD(v18) = v36;
LABEL_56:
          ;
        }

        while (v18 != v17);
      }
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Wrong type registry.", "attributeID.registry() == this", "attributesByAttributeType", 518);
      result = _os_crash();
      __break(1u);
    }
  }

  else
  {
    *(a3 + 32) = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 24) = 0;
  }

  return result;
}

re::StringID *re::TypeRegistry::makeStringID@<X0>(re::TypeRegistry *this@<X0>, const char *__s@<X1>, re::StringID *a3@<X8>)
{
  if (__s)
  {
    result = strlen(__s);
    if (result)
    {
      v12 = (*(**(this + 2) + 32))(*(this + 2), result + 1, 0);
      strcpy(v12, __s);
      result = re::DynamicArray<re::TransitionCondition *>::add(this + 102, &v12);
      v7 = v12;
      if (v12)
      {
        v8 = *v12;
        if (*v12)
        {
          v9 = v12[1];
          if (v9)
          {
            v10 = v12 + 2;
            do
            {
              v8 = 31 * v8 + v9;
              v11 = *v10++;
              v9 = v11;
            }

            while (v11);
          }
        }
      }

      else
      {
        v8 = 0;
      }

      *a3 = 2 * v8;
      *(a3 + 1) = v7;
    }

    else
    {
      *a3 = 0;
      *(a3 + 1) = &str_67;
    }
  }

  else
  {

    return re::StringID::invalid(a3);
  }

  return result;
}

_anonymous_namespace_ *re::TypeRegistry::removeType(_anonymous_namespace_ *result, void *a2)
{
  v171 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v4 = result;
    v5 = v158;
    v156 = 0;
    v153[1] = 0;
    v154 = 0;
    v155 = 0;
    v7 = re::DynamicArray<re::TypeID>::setCapacity(v153, 0);
    ++v155;
    v151 = 0;
    *__b = 0u;
    v150 = 0u;
    v152 = 0x7FFFFFFFLL;
    v8 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v166, v4 + 32, 0);
    *v158 = v4;
    *&v158[8] = v166;
    *&v158[16] = DWORD2(v166);
    v146 = v4 + 32;
    if (v4 + 32 != v166 || DWORD2(v166) != 0xFFFFFFFFLL)
    {
      v2 = 0xFFFFLL;
      do
      {
        v9 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v158[8]);
        *v161 = *v158;
        *&v161[8] = v9;
        if (*v158 == *a2)
        {
          v10 = a2[1];
          v12 = v9 == v10;
          v11 = (v9 ^ v10) & 0xFFFFFF00000000;
          v12 = v12 && v11 == 0;
          if (v12)
          {
            goto LABEL_21;
          }
        }

        if (HIDWORD(v150))
        {
          if (DWORD2(v150))
          {
            memset_pattern16(__b[1], &unk_1E304C660, 4 * DWORD2(v150));
          }

          v13 = v151;
          if (v151)
          {
            v14 = 8;
            do
            {
              v15 = *(v150 + v14);
              if (v15 < 0)
              {
                *(v150 + v14) = v15 & 0x7FFFFFFF;
              }

              v14 += 32;
              --v13;
            }

            while (v13);
          }

          HIDWORD(v150) = 0;
          v151 = 0;
          v152 = __PAIR64__(HIDWORD(v152), 0x7FFFFFFF) + 0x100000000;
        }

        re::TypeRegistry::typeInfo(v4, v161, &v166);
        if (v166 == 1)
        {
          v148 = *a2;
          if (re::TypeInfo::isDependentOn(&v166 + 1, &v148, __b, *&v148))
          {
LABEL_21:
            re::DynamicArray<re::TypeID>::add(v153, v161);
          }
        }

        v8 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v158[8]);
      }

      while (*&v158[8] != v146 || *&v158[16] != 0xFFFF || *&v158[18] != 0xFFFF);
    }

    if (v154)
    {
      v16 = v156;
      v144 = &v156[v154];
      do
      {
        v147 = *v16;
        v145 = v16;
        v17 = *(v16 + 1);
        v18 = *(v4 + 176);
        memset(&v158[8], 0, 20);
        *&v160[2] = 0;
        re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v158, v18);
        ++*&v158[24];
        *v161 = 0;
        if (*(v4 + 176))
        {
          v19 = 0;
          do
          {
            v20 = (*(v4 + 192) + 16 * v19);
            v21 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v20 >> 31) ^ (*v20 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v20 >> 31) ^ (*v20 >> 1))) >> 27));
            re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v4 + 200, v20, v21 ^ (v21 >> 31), &v166);
            v22 = *(v4 + 216) + 32 * HIDWORD(v166);
            v24 = *(v22 + 24);
            v23 = v22 + 24;
            if (v24 == v17 && *(v23 + 2) == WORD1(v17) && ((*(v23 + 4) ^ HIDWORD(v17)) & 0xFFFFFF) == 0)
            {
              re::DynamicArray<unsigned long>::add(v158, v161);
            }

            v19 = *v161 + 1;
            *v161 = v19;
            v25 = *(v4 + 176);
          }

          while (v19 < v25);
        }

        else
        {
          v25 = 0;
        }

        v26 = *&v158[16] - 1;
        if (*&v158[16] - 1 >= 0)
        {
          v27 = -16 * *&v158[16];
          while (v25 > v26)
          {
            v28 = (*(v4 + 192) + 16 * v26);
            v29 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v28 >> 31) ^ (*v28 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v28 >> 31) ^ (*v28 >> 1))) >> 27));
            re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v4 + 200, v28, v29 ^ (v29 >> 31), &v166);
            re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(v4 + 200, &v166);
            v2 = *(v4 + 176);
            if (v2 <= v26)
            {
              goto LABEL_236;
            }

            v30 = *(v4 + 192);
            if (v2 - 1 > v26)
            {
              v31 = (v30 + 16 * v26 + 16);
              if (v31 != (v30 + 16 * v2))
              {
                v32 = v27 + 16 * v2;
                do
                {
                  re::StringID::operator=((v31 - 2), v31);
                  v31 += 2;
                  v32 -= 16;
                }

                while (v32);
                v2 = *(v4 + 176);
                v30 = *(v4 + 192);
              }
            }

            re::StringID::destroyString((v30 + 16 * v2 - 16));
            v25 = *(v4 + 176) - 1;
            *(v4 + 176) = v25;
            ++*(v4 + 184);
            v27 += 16;
            if (v26-- <= 0)
            {
              goto LABEL_47;
            }
          }

          v157 = 0;
          v169 = 0u;
          v170 = 0u;
          v167 = 0u;
          v168 = 0u;
          v166 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v161 = 136315906;
          *&v161[4] = "operator[]";
          *&v161[12] = 1024;
          *&v161[14] = 789;
          v162 = 2048;
          v163 = v26;
          v164 = 2048;
          v165 = v25;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_236:
          v157 = 0;
          v169 = 0u;
          v170 = 0u;
          v167 = 0u;
          v168 = 0u;
          v166 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v161 = 136315906;
          *&v161[4] = "removeStableAt";
          *&v161[12] = 1024;
          *&v161[14] = 969;
          v162 = 2048;
          v163 = v26;
          v164 = 2048;
          v165 = v2;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_237;
        }

LABEL_47:
        ++*(v4 + 24);
        v34 = *v158;
        if (*v158 && *&v160[2])
        {
          v34 = (*(**v158 + 40))();
        }

        v35 = *(&v147 + 1);
        *(&v166 + 1) = 0;
        *&v167 = 0;
        DWORD2(v167) = 0;
        *&v168 = 0;
        re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(&v166, 0);
        ++DWORD2(v167);
        v36 = *(v4 + 800);
        if (v36)
        {
          v37 = 0;
          v38 = *(v4 + 784);
          while (1)
          {
            v39 = *v38;
            v38 += 14;
            if (v39 < 0)
            {
              break;
            }

            if (v36 == ++v37)
            {
              LODWORD(v37) = *(v4 + 800);
              break;
            }
          }
        }

        else
        {
          LODWORD(v37) = 0;
        }

        if (v37 != v36)
        {
          v40 = *(v4 + 800);
          do
          {
            v41 = *(v4 + 784) + 56 * v37;
            v43 = *(v41 + 8);
            v42 = (v41 + 8);
            if (v43 == v35 && v42->n128_u16[1] == WORD1(v35) && ((v42->n128_u32[1] ^ HIDWORD(v35)) & 0xFFFFFF) == 0)
            {
              re::DynamicArray<re::internal::TypeAttributeKey>::add(&v166, v42);
              v40 = *(v4 + 800);
            }

            if (v40 <= v37 + 1)
            {
              v44 = v37 + 1;
            }

            else
            {
              v44 = v40;
            }

            while (v44 - 1 != v37)
            {
              LODWORD(v37) = v37 + 1;
              if ((*(*(v4 + 784) + 56 * v37) & 0x80000000) != 0)
              {
                goto LABEL_69;
              }
            }

            LODWORD(v37) = v44;
LABEL_69:
            ;
          }

          while (v37 != v36);
        }

        v45 = v168;
        re::TypeRegistry::removeAttributes(v4, v168, v167);
        ++*(v4 + 24);
        v46 = v166;
        if (v166 && v45)
        {
          v46 = (*(*v166 + 40))();
        }

        *(&v166 + 1) = 0;
        *&v167 = 0;
        DWORD2(v167) = 0;
        *&v168 = 0;
        re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(&v166, 0);
        ++DWORD2(v167);
        v47 = *(v4 + 800);
        if (v47)
        {
          v2 = 0;
          v48 = *(v4 + 784);
          while (1)
          {
            v49 = *v48;
            v48 += 14;
            if (v49 < 0)
            {
              break;
            }

            if (v47 == ++v2)
            {
              v2 = *(v4 + 800);
              break;
            }
          }
        }

        else
        {
          v2 = 0;
        }

        if (v2 != v47)
        {
          v50 = *(v4 + 800);
          do
          {
            v51 = *(v4 + 784) + 56 * v2;
            if (*(v51 + 16) == v35 && *(v51 + 18) == WORD1(v35) && ((*(v51 + 20) ^ HIDWORD(v35)) & 0xFFFFFF) == 0)
            {
              re::DynamicArray<re::internal::TypeAttributeKey>::add(&v166, (v51 + 8));
              v50 = *(v4 + 800);
            }

            if (v50 <= v2 + 1)
            {
              v52 = (v2 + 1);
            }

            else
            {
              v52 = v50;
            }

            while (v52 - 1 != v2)
            {
              v2 = (v2 + 1);
              if ((*(*(v4 + 784) + 56 * v2) & 0x80000000) != 0)
              {
                goto LABEL_92;
              }
            }

            v2 = v52;
LABEL_92:
            ;
          }

          while (v2 != v47);
        }

        v53 = v168;
        re::TypeRegistry::removeAttributes(v4, v168, v167);
        ++*(v4 + 24);
        if (v166 && v53)
        {
          (*(*v166 + 40))();
        }

        v27 = v4 + 32;
        v54 = re::DataArray<re::internal::TypeInfoIndex>::tryGet(v146, v35);
        if (v54)
        {
          v26 = *v54 & 0xFFFFFF;
          if ((*v54 & 0xFFFFFF) != 0xFFFFFF)
          {
            v59 = HIBYTE(*v54);
            if (v59 <= 4)
            {
              if (HIBYTE(*v54) > 2u)
              {
                if (v59 == 3)
                {
                  v25 = v26;
                  v27 = *(v4 + 384);
                  if (v27 <= v26)
                  {
                    goto LABEL_243;
                  }

                  v122 = v27 - 1;
                  if (v27 - 1 <= v26)
                  {
                    v27 = v4 + 32;
                  }

                  else
                  {
                    v123 = *(v4 + 400);
                    v124 = v123 + 104 * v26;
                    v125 = v123 + 104 * v27;
                    v27 = v4 + 32;
                    if (v125 != v124 + 104)
                    {
                      memmove(v124, (v124 + 104), v125 - (v124 + 104));
                      v122 = *(v4 + 384) - 1;
                    }
                  }

                  *(v4 + 384) = v122;
                  ++*(v4 + 392);
                  while (v122 > v25)
                  {
                    v129 = re::DataArray<re::internal::TypeInfoIndex>::get(v27, *(*(v4 + 400) + 104 * v25));
                    v25 = (v26 + 1);
                    *v129 = v26 & 0xFFFFFF | (*(v129 + 3) << 24);
                    v122 = *(v4 + 384);
                    LODWORD(v26) = v26 + 1;
                  }
                }

                else
                {
                  v25 = v26;
                  v27 = *(v4 + 424);
                  if (v27 <= v26)
                  {
                    goto LABEL_242;
                  }

                  v80 = v27 - 1;
                  if (v27 - 1 <= v26)
                  {
                    v27 = v4 + 32;
                  }

                  else
                  {
                    v82 = 104 * v27 - (104 * v26 + 104);
                    v27 = v4 + 32;
                    if (v82)
                    {
                      v81 = *(v4 + 440) + 104 * v26;
                      memmove(v81, (v81 + 104), v82 - 4);
                      v80 = *(v4 + 424) - 1;
                    }
                  }

                  *(v4 + 424) = v80;
                  ++*(v4 + 432);
                  while (v80 > v25)
                  {
                    v130 = re::DataArray<re::internal::TypeInfoIndex>::get(v27, *(*(v4 + 440) + 104 * v25));
                    v25 = (v26 + 1);
                    *v130 = v26 & 0xFFFFFF | (*(v130 + 3) << 24);
                    v80 = *(v4 + 424);
                    LODWORD(v26) = v26 + 1;
                  }
                }
              }

              else
              {
                switch(v59)
                {
                  case 1u:
                    v25 = *(v4 + 264);
                    if (v25 <= v26)
                    {
                      goto LABEL_246;
                    }

                    v110 = v25 - 1;
                    if (v25 - 1 > v26)
                    {
                      v112 = 88 * v25 - (88 * v26 + 88);
                      if (v112)
                      {
                        v111 = *(v4 + 280) + 88 * v26;
                        memmove(v111, (v111 + 88), v112 - 7);
                        v110 = *(v4 + 264) - 1;
                      }
                    }

                    *(v4 + 264) = v110;
                    ++*(v4 + 272);
                    if (v110 > v26)
                    {
                      v113 = v26;
                      do
                      {
                        v114 = re::DataArray<re::internal::TypeInfoIndex>::get(v146, *(*(v4 + 280) + 88 * v26));
                        *v114 = v113++ & 0xFFFFFF | (*(v114 + 3) << 24);
                        v26 = v113;
                      }

                      while (*(v4 + 264) > v113);
                    }

                    break;
                  case 2u:
                    v25 = v26;
                    v27 = *(v4 + 304);
                    if (v27 <= v26)
                    {
                      goto LABEL_240;
                    }

                    v63 = (*(v4 + 320) + 104 * v26);
                    v2 = v63[22];
                    v64 = v63[23];
                    v65 = v63[24];
                    v66 = v65 + v64;
                    if (!(v65 + v64))
                    {
                      goto LABEL_122;
                    }

                    v143 = v65 + v64;
                    v27 = v2 + v66 - 1;
                    v6 = *(v4 + 344);
                    if (v27 >= v6)
                    {
                      goto LABEL_253;
                    }

                    if (v27 < v6 - 1)
                    {
                      v67 = *(v4 + 360);
                      v68 = (v67 + 24 * v2);
                      if (&v68[3 * v143] != (v67 + 24 * v6))
                      {
                        v69 = 24 * v6 - 24 * v2 - 24 * v143;
                        do
                        {
                          *v68 = v68[3 * v143];
                          re::StringID::operator=((v68 + 1), &v68[3 * v143 + 1]);
                          v68 += 3;
                          v69 -= 24;
                        }

                        while (v69);
                      }
                    }

                    v70 = -16;
                    v6 = v143;
                    do
                    {
                      re::StringID::destroyString((*(v4 + 360) + 24 * *(v4 + 344) + v70));
                      v70 -= 24;
                      --v6;
                    }

                    while (v6);
                    LODWORD(v66) = v143;
                    *(v4 + 344) -= v143;
                    ++*(v4 + 352);
                    v27 = *(v4 + 304);
                    v5 = v158;
                    if (v27)
                    {
LABEL_122:
                      v71 = (*(v4 + 320) + 88);
                      v72 = v27;
                      do
                      {
                        if (*v71 > v2)
                        {
                          *v71 -= v66;
                        }

                        v71 += 26;
                        --v72;
                      }

                      while (v72);
                    }

                    if (v27 <= v26)
                    {
                      goto LABEL_247;
                    }

                    v73 = v27 - 1;
                    if (v27 - 1 <= v26)
                    {
                      v27 = v4 + 32;
                    }

                    else
                    {
                      v75 = 104 * v27 - (104 * v26 + 104);
                      v27 = v4 + 32;
                      if (v75)
                      {
                        v74 = *(v4 + 320) + 104 * v26;
                        memmove(v74, (v74 + 104), v75 - 4);
                        v73 = *(v4 + 304) - 1;
                      }
                    }

                    *(v4 + 304) = v73;
                    ++*(v4 + 312);
                    while (v73 > v25)
                    {
                      v131 = re::DataArray<re::internal::TypeInfoIndex>::get(v27, *(*(v4 + 320) + 104 * v25));
                      v25 = (v26 + 1);
                      *v131 = v26 & 0xFFFFFF | (*(v131 + 3) << 24);
                      v73 = *(v4 + 304);
                      LODWORD(v26) = v26 + 1;
                    }

                    break;
                  case 0u:
                    re::internal::assertLog(4, v55, "assertion failure: '%s' (%s:line %i) Invalid type category.", "!Unreachable code", "removeType", 706);
                    _os_crash();
                    __break(1u);
                    goto LABEL_231;
                }
              }
            }

            else
            {
              if (HIBYTE(*v54) <= 6u)
              {
                if (v59 == 5)
                {
                  v25 = v26;
                  v27 = *(v4 + 464);
                  if (v27 <= v26)
                  {
                    goto LABEL_245;
                  }

                  v83 = v27 - 1;
                  if (v27 - 1 <= v26)
                  {
                    v27 = v4 + 32;
                  }

                  else
                  {
                    v84 = *(v4 + 480);
                    v85 = v84 + 136 * v26;
                    v86 = v84 + 136 * v27;
                    v27 = v4 + 32;
                    if (v86 != v85 + 136)
                    {
                      memmove(v85, (v85 + 136), v86 - (v85 + 136));
                      v83 = *(v4 + 464) - 1;
                    }
                  }

                  *(v4 + 464) = v83;
                  ++*(v4 + 472);
                  while (v83 > v25)
                  {
                    v126 = re::DataArray<re::internal::TypeInfoIndex>::get(v27, *(*(v4 + 480) + 136 * v25));
                    v25 = (v26 + 1);
                    *v126 = v26 & 0xFFFFFF | (*(v126 + 3) << 24);
                    v83 = *(v4 + 464);
                    LODWORD(v26) = v26 + 1;
                  }
                }

                else
                {
                  v25 = v26;
                  v27 = *(v4 + 504);
                  if (v27 <= v26)
                  {
                    goto LABEL_244;
                  }

                  v76 = v27 - 1;
                  if (v27 - 1 <= v26)
                  {
                    v27 = v4 + 32;
                  }

                  else
                  {
                    v77 = *(v4 + 520);
                    v78 = v77 + 168 * v26;
                    v79 = v77 + 168 * v27;
                    v27 = v4 + 32;
                    if (v79 != v78 + 168)
                    {
                      memmove(v78, (v78 + 168), v79 - (v78 + 168));
                      v76 = *(v4 + 504) - 1;
                    }
                  }

                  *(v4 + 504) = v76;
                  ++*(v4 + 512);
                  while (v76 > v25)
                  {
                    v127 = re::DataArray<re::internal::TypeInfoIndex>::get(v27, *(*(v4 + 520) + 168 * v25));
                    v25 = (v26 + 1);
                    *v127 = v26 & 0xFFFFFF | (*(v127 + 3) << 24);
                    v76 = *(v4 + 504);
                    LODWORD(v26) = v26 + 1;
                  }
                }

                goto LABEL_98;
              }

              switch(v59)
              {
                case 7u:
                  v25 = v26;
                  v115 = *(v4 + 544);
                  if (v115 <= v26)
                  {
                    goto LABEL_241;
                  }

                  v116 = *(v4 + 560) + 104 * v26;
                  v2 = *(v116 + 92);
                  v6 = *(v116 + 96);
                  if (v6)
                  {
                    v117 = v2 + v6 - 1;
                    v27 = *(v4 + 584);
                    if (v117 >= v27)
                    {
                      goto LABEL_252;
                    }

                    if (v117 >= v27 - 1 || (v118 = *(v4 + 600), v119 = (v118 + 8 * v2), v120 = &v119[8 * v6], v121 = (v118 + 8 * v27), v121 == v120))
                    {
                      *(v4 + 584) = v27 - v6;
                      ++*(v4 + 592);
                      v27 = v4 + 32;
                    }

                    else
                    {
                      memmove(v119, v120, v121 - v120);
                      v115 = *(v4 + 544);
                      *(v4 + 584) -= v6;
                      ++*(v4 + 592);
                      v27 = v4 + 32;
                      if (!v115)
                      {
LABEL_222:
                        if (v115 <= v26)
                        {
                          goto LABEL_248;
                        }

                        v134 = v115 - 1;
                        if (v115 - 1 > v26)
                        {
                          v136 = 104 * v115 - (104 * v26 + 104);
                          if (v136)
                          {
                            v135 = *(v4 + 560) + 104 * v26;
                            memmove(v135, (v135 + 104), v136 - 4);
                            v134 = *(v4 + 544) - 1;
                          }
                        }

                        *(v4 + 544) = v134;
                        ++*(v4 + 552);
                        while (v134 > v25)
                        {
                          v137 = re::DataArray<re::internal::TypeInfoIndex>::get(v27, *(*(v4 + 560) + 104 * v25));
                          v25 = (v26 + 1);
                          *v137 = v26 & 0xFFFFFF | (*(v137 + 3) << 24);
                          v134 = *(v4 + 544);
                          LODWORD(v26) = v26 + 1;
                        }

                        break;
                      }
                    }
                  }

                  v132 = (*(v4 + 560) + 92);
                  v133 = v115;
                  do
                  {
                    if (*v132 > v2)
                    {
                      *v132 -= v6;
                    }

                    v132 += 26;
                    --v133;
                  }

                  while (v133);
                  goto LABEL_222;
                case 8u:
                  v6 = v26;
                  v25 = *(v4 + 624);
                  if (v25 <= v26)
                  {
                    goto LABEL_238;
                  }

                  v87 = *(v4 + 640);
                  v88 = *(v87 + 176 * v26 + 80);
                  if ((v88 & 0xFFFFFF00000000) != 0)
                  {
                    while (1)
                    {
                      v27 = *re::DataArray<re::internal::TypeInfoIndex>::get(v27, v88) & 0xFFFFFFLL;
                      v25 = *(v4 + 624);
                      if (v25 <= v27)
                      {
                        break;
                      }

                      v87 = *(v4 + 640);
                      v89 = v87 + 176 * v27;
                      --*(v89 + 88);
                      v88 = *(v89 + 80);
                      v27 = v4 + 32;
                      if ((v88 & 0xFFFFFF00000000) == 0)
                      {
                        goto LABEL_148;
                      }
                    }

LABEL_237:
                    *v161 = 0;
                    v169 = 0u;
                    v170 = 0u;
                    v167 = 0u;
                    v168 = 0u;
                    v166 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v158 = 136315906;
                    *&v158[4] = "operator[]";
                    *&v158[12] = 1024;
                    *&v158[14] = 789;
                    *&v158[18] = 2048;
                    *&v158[20] = v27;
                    v159 = 2048;
                    *v160 = v25;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_238:
                    *v161 = 0;
                    v169 = 0u;
                    v170 = 0u;
                    v167 = 0u;
                    v168 = 0u;
                    v166 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v158 = 136315906;
                    *&v158[4] = "operator[]";
                    *&v158[12] = 1024;
                    *&v158[14] = 789;
                    *&v158[18] = 2048;
                    *&v158[20] = v6;
                    v159 = 2048;
                    *v160 = v25;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_239:
                    *v161 = 0;
                    v169 = 0u;
                    v170 = 0u;
                    v167 = 0u;
                    v168 = 0u;
                    v166 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v158 = 136315906;
                    *&v158[4] = "removeStableAt";
                    *&v158[12] = 1024;
                    *&v158[14] = 969;
                    *&v158[18] = 2048;
                    *&v158[20] = v25;
                    v159 = 2048;
                    *v160 = v27;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_240:
                    *v161 = 0;
                    v169 = 0u;
                    v170 = 0u;
                    v167 = 0u;
                    v168 = 0u;
                    v166 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v158 = 136315906;
                    *&v158[4] = "operator[]";
                    *&v158[12] = 1024;
                    *&v158[14] = 789;
                    *&v158[18] = 2048;
                    *&v158[20] = v25;
                    v159 = 2048;
                    *v160 = v27;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_241:
                    *v161 = 0;
                    v169 = 0u;
                    v170 = 0u;
                    v167 = 0u;
                    v168 = 0u;
                    v166 = 0u;
                    v139 = v115;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v158 = 136315906;
                    *&v158[4] = "operator[]";
                    *&v158[12] = 1024;
                    *&v158[14] = 789;
                    *&v158[18] = 2048;
                    *&v158[20] = v25;
                    v159 = 2048;
                    *v160 = v139;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_242:
                    *v161 = 0;
                    v169 = 0u;
                    v170 = 0u;
                    v167 = 0u;
                    v168 = 0u;
                    v166 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v158 = 136315906;
                    *&v158[4] = "removeStableAt";
                    *&v158[12] = 1024;
                    *&v158[14] = 969;
                    *&v158[18] = 2048;
                    *&v158[20] = v25;
                    v159 = 2048;
                    *v160 = v27;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_243:
                    *v161 = 0;
                    v169 = 0u;
                    v170 = 0u;
                    v167 = 0u;
                    v168 = 0u;
                    v166 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v158 = 136315906;
                    *&v158[4] = "removeStableAt";
                    *&v158[12] = 1024;
                    *&v158[14] = 969;
                    *&v158[18] = 2048;
                    *&v158[20] = v25;
                    v159 = 2048;
                    *v160 = v27;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_244:
                    *v161 = 0;
                    v169 = 0u;
                    v170 = 0u;
                    v167 = 0u;
                    v168 = 0u;
                    v166 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v158 = 136315906;
                    *&v158[4] = "removeStableAt";
                    *&v158[12] = 1024;
                    *&v158[14] = 969;
                    *&v158[18] = 2048;
                    *&v158[20] = v25;
                    v159 = 2048;
                    *v160 = v27;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_245:
                    *v161 = 0;
                    v169 = 0u;
                    v170 = 0u;
                    v167 = 0u;
                    v168 = 0u;
                    v166 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v158 = 136315906;
                    *&v158[4] = "removeStableAt";
                    *&v158[12] = 1024;
                    *&v158[14] = 969;
                    *&v158[18] = 2048;
                    *&v158[20] = v25;
                    v159 = 2048;
                    *v160 = v27;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_246:
                    *v161 = 0;
                    v169 = 0u;
                    v170 = 0u;
                    v167 = 0u;
                    v168 = 0u;
                    v166 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v158 = 136315906;
                    *&v158[4] = "removeStableAt";
                    *&v158[12] = 1024;
                    *&v158[14] = 969;
                    *&v158[18] = 2048;
                    *&v158[20] = v26;
                    v159 = 2048;
                    *v160 = v25;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_247:
                    *v161 = 0;
                    v169 = 0u;
                    v170 = 0u;
                    v167 = 0u;
                    v168 = 0u;
                    v166 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v158 = 136315906;
                    *&v158[4] = "removeStableAt";
                    *&v158[12] = 1024;
                    *&v158[14] = 969;
                    *&v158[18] = 2048;
                    *&v158[20] = v25;
                    v159 = 2048;
                    *v160 = v27;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_248:
                    *v161 = 0;
                    v169 = 0u;
                    v170 = 0u;
                    v167 = 0u;
                    v168 = 0u;
                    v166 = 0u;
                    v140 = v115;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v158 = 136315906;
                    *&v158[4] = "removeStableAt";
                    *&v158[12] = 1024;
                    *&v158[14] = 969;
                    *&v158[18] = 2048;
                    *&v158[20] = v25;
                    v159 = 2048;
                    *v160 = v140;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_249:
                    *v161 = 0;
                    v169 = 0u;
                    v170 = 0u;
                    v167 = 0u;
                    v168 = 0u;
                    v166 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v158 = 136315906;
                    *&v158[4] = "operator[]";
                    *&v158[12] = 1024;
                    *&v158[14] = 789;
                    *&v158[18] = 2048;
                    *&v158[20] = v6;
                    v159 = 2048;
                    *v160 = v25;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_250:
                    *v161 = 0;
                    v169 = 0u;
                    v170 = 0u;
                    v167 = 0u;
                    v168 = 0u;
                    v166 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v158 = 136315906;
                    *&v158[4] = "operator[]";
                    *&v158[12] = 1024;
                    *&v158[14] = 789;
                    *&v158[18] = 2048;
                    *&v158[20] = v6;
                    v159 = 2048;
                    *v160 = v2;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_251:
                    *v161 = 0;
                    v169 = 0u;
                    v170 = 0u;
                    v167 = 0u;
                    v168 = 0u;
                    v166 = 0u;
                    v141 = v95;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v158 = 136315906;
                    *(v5 + 4) = "removeStableAt";
                    *&v158[12] = 1024;
                    *(v5 + 14) = 969;
                    *&v158[18] = 2048;
                    *(v5 + 20) = v6;
                    v159 = 2048;
                    *(v5 + 30) = v141;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_252:
                    *v161 = 0;
                    v169 = 0u;
                    v170 = 0u;
                    v167 = 0u;
                    v168 = 0u;
                    v166 = 0u;
                    v142 = v117;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v158 = 136315906;
                    *(v5 + 4) = "removeManyStableAt";
                    *&v158[12] = 1024;
                    *(v5 + 14) = 986;
                    *&v158[18] = 2048;
                    *(v5 + 20) = v142;
                    v159 = 2048;
                    *(v5 + 30) = v27;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_253:
                    *v161 = 0;
                    v169 = 0u;
                    v170 = 0u;
                    v167 = 0u;
                    v168 = 0u;
                    v166 = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v158 = 136315906;
                    *(v5 + 4) = "removeManyStableAt";
                    *&v158[12] = 1024;
                    *(v5 + 14) = 986;
                    *&v158[18] = 2048;
                    *(v5 + 20) = v27;
                    v159 = 2048;
                    *(v5 + 30) = v6;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                  }

LABEL_148:
                  if (v25 <= v26)
                  {
                    goto LABEL_249;
                  }

                  v90 = v87 + 176 * v26;
                  v91 = *(v90 + 92);
                  v27 = *(v90 + 96);
                  v5 = 176;
                  re::DynamicArray<re::internal::ObjectMemberInfo>::removeManyStableAt(v4 + 648, v91, v27);
                  v2 = *(v4 + 624);
                  if (v2 <= v26)
                  {
                    goto LABEL_250;
                  }

                  v92 = *(v4 + 640) + 176 * v26;
                  v2 = *(v92 + 100);
                  v93 = *(v92 + 104);
                  re::DynamicArray<re::internal::ObjectMemberInfo>::removeManyStableAt(v4 + 648, v2, v93);
                  v94 = v93;
                  v95 = *(v4 + 624);
                  v5 = v158;
                  if (v95)
                  {
                    v96 = (*(v4 + 640) + 92);
                    v97 = *(v4 + 624);
                    do
                    {
                      if (*v96 > v91)
                      {
                        *v96 -= v27;
                      }

                      v98 = v96[13];
                      if (v98 > v91)
                      {
                        v96[13] = v98 - v27;
                      }

                      v99 = v96[2];
                      if (v99 > v2)
                      {
                        v96[2] = v99 - v94;
                      }

                      v96 += 44;
                      --v97;
                    }

                    while (v97);
                  }

                  if (v95 <= v26)
                  {
                    goto LABEL_251;
                  }

                  v100 = *(v4 + 640);
                  v27 = v4 + 32;
                  if (v95 - 1 <= v26 || v100 + 176 * v26 + 176 == v100 + 176 * v95)
                  {
LABEL_171:
                    re::StringID::destroyString((v100 + 176 * v95 - 64));
                    v108 = *(v4 + 624) - 1;
                    *(v4 + 624) = v108;
                    ++*(v4 + 632);
                    while (v108 > v6)
                    {
                      v109 = re::DataArray<re::internal::TypeInfoIndex>::get(v27, *(*(v4 + 640) + 176 * v6));
                      v6 = (v26 + 1);
                      *v109 = v26 & 0xFFFFFF | (*(v109 + 3) << 24);
                      v108 = *(v4 + 624);
                      LODWORD(v26) = v26 + 1;
                    }

                    break;
                  }

                  v101 = 176 * v26;
                  v2 = 176 * v95 - 176;
                  while (2)
                  {
                    v102 = v100 + v101;
                    v103 = *(v100 + v101 + 224);
                    *(v102 + 32) = *(v100 + v101 + 208);
                    *(v102 + 48) = v103;
                    v104 = *(v100 + v101 + 192);
                    *v102 = *(v100 + v101 + 176);
                    *(v102 + 16) = v104;
                    v105 = *(v100 + v101 + 256);
                    *(v102 + 64) = *(v100 + v101 + 240);
                    *(v102 + 80) = v105;
                    *(v102 + 92) = *(v100 + v101 + 268);
                    re::StringID::operator=((v100 + v101 + 112), (v100 + v101 + 288));
                    if (*(v100 + v101 + 128))
                    {
                      if ((*(v100 + v101 + 304) & 1) == 0)
                      {
                        *(v102 + 128) = 0;
                        goto LABEL_169;
                      }

LABEL_168:
                      *(v100 + v101 + 136) = *(v100 + v101 + 312);
                    }

                    else if (*(v100 + v101 + 304))
                    {
                      *(v102 + 128) = 1;
                      goto LABEL_168;
                    }

LABEL_169:
                    v106 = v100 + v101;
                    v107 = *(v100 + v101 + 336);
                    *(v106 + 144) = *(v100 + v101 + 320);
                    *(v106 + 160) = v107;
                    v100 += 176;
                    v2 -= 176;
                    if (v101 == v2)
                    {
                      v95 = *(v4 + 624);
                      v100 = *(v4 + 640);
                      v5 = v158;
                      v27 = v4 + 32;
                      goto LABEL_171;
                    }

                    continue;
                  }

                case 9u:
                  v25 = v26;
                  v27 = *(v4 + 744);
                  if (v27 <= v26)
                  {
                    goto LABEL_239;
                  }

                  v60 = v27 - 1;
                  if (v27 - 1 <= v26)
                  {
                    v27 = v4 + 32;
                  }

                  else
                  {
                    v62 = 112 * v27 - (112 * v26 + 112);
                    v27 = v4 + 32;
                    if (v62)
                    {
                      v61 = *(v4 + 760) + 112 * v26;
                      memmove(v61, (v61 + 112), v62 - 4);
                      v60 = *(v4 + 744) - 1;
                    }
                  }

                  *(v4 + 744) = v60;
                  ++*(v4 + 752);
                  while (v60 > v25)
                  {
                    v128 = re::DataArray<re::internal::TypeInfoIndex>::get(v27, *(*(v4 + 760) + 112 * v25));
                    v25 = (v26 + 1);
                    *v128 = v26 & 0xFFFFFF | (*(v128 + 3) << 24);
                    v60 = *(v4 + 744);
                    LODWORD(v26) = v26 + 1;
                  }

                  break;
              }
            }
          }
        }

LABEL_98:
        v56 = re::TypeRegistry::typeName(v4, &v147);
        v57 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v56 >> 31) ^ (*v56 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v56 >> 31) ^ (*v56 >> 1))) >> 27));
        re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v4 + 200, v56, v57 ^ (v57 >> 31), &v166);
        re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(v4 + 200, &v166);
        v58 = *(&v147 + 1);
        re::DataArray<re::TypeRegistry::TypeNameAndVersion>::destroy(v4 + 96, *(&v147 + 1));
        v8 = re::DataArray<re::internal::TypeInfoIndex>::destroy(v27, v58);
        v16 = v145 + 1;
      }

      while (v145 + 1 != v144);
    }

LABEL_231:
    ++*(v4 + 24);
    v138 = re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(__b);
    result = v153[0];
    if (v153[0])
    {
      if (v156)
      {
        return (*(*v153[0] + 40))(v138);
      }
    }
  }

  return result;
}

void re::DynamicArray<re::internal::ObjectMemberInfo>::removeManyStableAt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = a2 + a3 - 1;
    v6 = *(a1 + 16);
    if (v5 >= v6)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (v5 < v6 - 1)
    {
      v7 = *(a1 + 32);
      if (v7 + 40 * a2 + 40 * a3 != v7 + 40 * v6)
      {
        v8 = 40 * a2;
        v9 = 40 * v6 - 40 * a3;
        v10 = v7 + 40 * a3;
        do
        {
          v11 = v7 + v8;
          *(v7 + v8) = *(v10 + v8);
          re::StringID::operator=((v7 + v8 + 8), (v10 + v8 + 8));
          *(v11 + 24) = *(v10 + v8 + 24);
          *(v11 + 32) = *(v10 + v8 + 32);
          v7 += 40;
          v9 -= 40;
          v10 += 40;
        }

        while (v8 != v9);
      }
    }

    v12 = -32;
    v13 = a3;
    do
    {
      re::StringID::destroyString((*(a1 + 32) + 40 * *(a1 + 16) + v12));
      v12 -= 40;
      --v13;
    }

    while (v13);
    *(a1 + 16) -= a3;
    ++*(a1 + 24);
  }
}

void re::DataArray<re::TypeRegistry::TypeNameAndVersion>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 16;
  v5 = re::DataArray<re::TextureAtlasTile>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (v5)
  {
    v6 = v5;
    re::StringID::destroyString(v5);
    if (*(a1 + 16) <= HIWORD(v2))
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }
}

_DWORD *re::DataArray<re::internal::TypeInfoIndex>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 16;
  result = re::DataArray<re::internal::TypeInfoIndex>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (result)
  {
    if (*(a1 + 16) <= HIWORD(v2))
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *result = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }

  return result;
}

__n128 re::DynamicArray<re::internal::TypeAttributeKey>::add(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
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

        re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = (*(a1 + 32) + 24 * v5);
  result = *a2;
  v11[1].n128_u64[0] = a2[1].n128_u64[0];
  *v11 = result;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void re::TypeRegistry::removeAttributes(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 24 * a3;
    do
    {
      v6 = *a2;
      v20 = *(a2 + 2);
      v19 = v6;
      v7 = re::Hash<re::internal::TypeAttributeKey>::operator()(v15, &v19);
      re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::findEntry<re::internal::TypeAttributeKey>(a1 + 768, &v19, v7, v15);
      v8 = v17;
      v9 = *(a1 + 784);
      v10 = re::Hash<re::internal::TypeAttributeKey>::operator()(v15, &v19);
      re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::findEntry<re::internal::TypeAttributeKey>(a1 + 768, &v19, v10, v15);
      v11 = v17;
      if (v17 != 0x7FFFFFFF)
      {
        v12 = *(a1 + 784);
        v13 = *(v12 + 56 * v17) & 0x7FFFFFFF;
        if (v18 == 0x7FFFFFFF)
        {
          *(*(a1 + 776) + 4 * v16) = v13;
          v11 = v17;
        }

        else
        {
          *(v12 + 56 * v18) = *(v12 + 56 * v18) & 0x80000000 | v13;
        }

        *(v12 + 56 * v11) = *(a1 + 804);
        *(a1 + 804) = v11;
        --*(a1 + 796);
        ++*(a1 + 808);
      }

      v14 = v9 + 56 * v8;
      if (*(v14 + 32))
      {
        if (*(v14 + 40))
        {
          re::TypeRegistry::typeInfo(a1, v19, v15);
          re::TypeInfo::releaseInstance(&v16, *(v14 + 32), *(a1 + 16), 0);
        }
      }

      a2 = (a2 + 24);
      v5 -= 24;
    }

    while (v5);
  }
}

void re::TypeRegistry::overrideAllocator(re *a1, re **a2, int a3)
{
  if (!*a2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid type ID.", "typeID.isValid()", "overrideAllocator", 787);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (*a2 != a1)
  {
LABEL_8:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Wrong type registry.", "typeID.registry() == this", "overrideAllocator", 788);
    _os_crash();
    __break(1u);
    return;
  }

  re::TypeRegistry::typeInfo(a1, a2, v6);
  if (a3)
  {
    v5 = 32;
  }

  else
  {
    v5 = 0;
  }

  *(v7 + 48) = *(v7 + 48) & 0xFFFFFFDF | v5;
  ++*(a1 + 6);
}

uint64_t re::TypeRegistry::buildTranslationTable(uint64_t **this, const re::TypeRegistry *a2)
{
  if (a2)
  {
    re::TypeRegistry::setContainsPolymorphicFlags(this);
    v4 = this[107];
    if (v4)
    {
      v5 = this[2];
      re::FixedArray<CoreIKTransform>::deinit(v4 + 33);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 30);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 27);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 24);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 21);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 18);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 15);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 12);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 9);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 6);
      re::FixedArray<CoreIKTransform>::deinit(v4 + 3);
      (*(*v5 + 40))(v5, v4);
      this[107] = 0;
    }

    v6 = (*(*this[2] + 32))(this[2], 288, 8);
    *v6 = this;
    *(v6 + 8) = a2;
    *(v6 + 40) = 0u;
    *(v6 + 56) = 0u;
    *(v6 + 72) = 0u;
    *(v6 + 88) = 0u;
    *(v6 + 104) = 0u;
    *(v6 + 120) = 0u;
    *(v6 + 136) = 0u;
    *(v6 + 152) = 0u;
    *(v6 + 168) = 0u;
    *(v6 + 184) = 0u;
    *(v6 + 200) = 0u;
    *(v6 + 216) = 0u;
    *(v6 + 232) = 0u;
    *(v6 + 248) = 0u;
    *(v6 + 280) = 0;
    *(v6 + 24) = 0u;
    *(v6 + 264) = 0u;
    result = re::internal::TypeTranslationTable::buildTables(v6);
    this[107] = v6;
  }

  else
  {
    re::internal::assertLog(4, 0, "assertion failure: '%s' (%s:line %i) runtimeTypeRegistry must not be null.", "runtimeTypeRegistry", "buildTranslationTable", 801);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeRegistry::setContainsPolymorphicFlags(re::TypeRegistry *this)
{
  v2 = this + 32;
  result = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v8, this + 32, 0);
  v11 = this;
  v12 = v8;
  v13 = v9[0];
  if (v2 != v8 || v9[0] != 0xFFFFFFFFLL)
  {
    do
    {
      v5 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v12);
      v10[0] = v11;
      v10[1] = v5;
      re::TypeRegistry::typeInfo(this, v10, &v8);
      if (v8 == 1)
      {
        re::TypeRegistry::setContainsPolymorphicFlag(this, v9);
      }

      result = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v12);
    }

    while (v12 != v2 || v13 != 0xFFFF || WORD1(v13) != 0xFFFF);
  }

  return result;
}

uint64_t re::TypeRegistry::setContainsPolymorphicFlag(re::TypeRegistry *this, const re::TypeInfo *a2)
{
  v2 = *(a2 + 2);
  v3 = *(v2 + 48);
  if ((v3 & 0x40) != 0)
  {
    return (v3 >> 7) & 1;
  }

  *(v2 + 48) = v3 | 0x40;
  v6 = *(a2 + 12);
  if (v6 > 5)
  {
    if (*(a2 + 12) <= 7u)
    {
      if (v6 != 6)
      {
        if (v6 == 7)
        {
          v7 = *(*(a2 + 2) + 96);
          if (v7)
          {
            v8 = 0;
            while (1)
            {
              re::TypeInfo::unionMember(a2, v8, v21);
              if (re::TypeRegistry::setContainsPolymorphicFlag(this, v21))
              {
                goto LABEL_29;
              }

              if (v7 == ++v8)
              {
                goto LABEL_37;
              }
            }
          }
        }

        goto LABEL_37;
      }

      re::TypeRegistry::typeInfo(*a2, *(*(a2 + 2) + 80), v21);
      re::TypeInfo::TypeInfo(v19, v22);
      if (!re::TypeRegistry::setContainsPolymorphicFlag(this, v19))
      {
        re::TypeRegistry::typeInfo(*a2, *(*(a2 + 2) + 88), v21);
        re::TypeInfo::TypeInfo(v17, v22);
        v10 = v17;
        goto LABEL_23;
      }

LABEL_29:
      v12 = *(v2 + 48);
      goto LABEL_30;
    }

    if (v6 == 8)
    {
      re::TypeRegistry::typeInfo(*a2, *(*(a2 + 2) + 80), v19);
      if (v19[0] == 1 && re::TypeRegistry::setContainsPolymorphicFlag(this, &v20))
      {
        goto LABEL_29;
      }

      re::TypeMemberCollection::TypeMemberCollection(v17, *a2, *(a2 + 2));
      if (v18)
      {
        v14 = 0;
        do
        {
          re::TypeMemberCollection::operator[](v17, v14, v16);
          re::TypeRegistry::typeInfo(v16[0], *v16[2], v21);
          re::TypeInfo::TypeInfo(v15, v22);
          if (re::TypeRegistry::setContainsPolymorphicFlag(this, v15))
          {
            goto LABEL_29;
          }
        }

        while (++v14 < v18);
      }
    }

    else if (v6 == 9)
    {
      if (re::TypeInfo::isPointerToPolymorphicType(a2))
      {
        goto LABEL_29;
      }

      re::TypeRegistry::typeInfo(*a2, *(*(a2 + 2) + 80), v21);
      re::TypeInfo::TypeInfo(v19, v22);
      if (re::TypeRegistry::setContainsPolymorphicFlag(this, v19))
      {
        goto LABEL_29;
      }
    }

LABEL_37:
    result = 0;
    v12 = *(v2 + 48);
    goto LABEL_38;
  }

  if (*(a2 + 12) > 3u)
  {
    if (v6 != 4 && v6 != 5)
    {
      goto LABEL_37;
    }

LABEL_22:
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 2) + 80), v21);
    re::TypeInfo::TypeInfo(v19, v22);
    v10 = v19;
LABEL_23:
    v11 = re::TypeRegistry::setContainsPolymorphicFlag(this, v10);
    v12 = *(v2 + 48);
    if (v11)
    {
LABEL_30:
      v13 = v12 | 0x80;
      result = 1;
LABEL_39:
      *(v2 + 48) = v13;
      return result;
    }

    result = 0;
LABEL_38:
    v13 = v12 & 0xFFFFFF7F;
    goto LABEL_39;
  }

  if (v6 == 3)
  {
    goto LABEL_22;
  }

  if (*(a2 + 12))
  {
    goto LABEL_37;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid type category.", "!Unreachable code", "setContainsPolymorphicFlag", 940);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeRegistry::fixupUndefinedInitialRelease(re::TypeRegistry *this)
{
  v2 = this + 32;
  result = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v8, this + 32, 0);
  v11 = this;
  v12 = v8;
  v13 = v9[0];
  if (v2 != v8 || v9[0] != 0xFFFFFFFFLL)
  {
    do
    {
      v5 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v12);
      v10[0] = v11;
      v10[1] = v5;
      re::TypeRegistry::typeInfo(this, v10, &v8);
      if (v8 == 1)
      {
        re::TypeRegistry::fixupUndefinedInitialRelease(this, v9);
      }

      result = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v12);
    }

    while (v12 != v2 || v13 != 0xFFFF || WORD1(v13) != 0xFFFF);
  }

  return result;
}

void *re::TypeRegistry::fixupUndefinedInitialRelease(void *this, const re::TypeInfo *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 2);
  if (*(v2 + 64) == -1)
  {
    v4 = this;
    this = re::DataArray<re::internal::TypeInfoIndex>::get((this + 4), *v2);
    v5 = this;
    v6 = *(a2 + 12);
    if (v6 == 6)
    {
      re::TypeRegistry::typeInfo(*a2, *(*(a2 + 2) + 80), &v24);
      this = re::TypeInfo::TypeInfo(&v18, &v24 + 8);
      v13 = *(*&v21[2] + 64);
      if (v13 == -1)
      {
        return this;
      }

      re::TypeRegistry::typeInfo(*a2, *(*(a2 + 2) + 88), &v24);
      this = re::TypeInfo::TypeInfo(&v18, &v24 + 8);
      v7 = *v5 & 0xFFFFFF;
      v14 = v4[63];
      if (v14 > v7)
      {
        v9 = *(*&v21[2] + 64);
        if (v13 > v9)
        {
          v9 = v13;
        }

        v10 = v4[65];
        v11 = 168;
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 == 5)
      {
        re::TypeRegistry::typeInfo(*a2, *(*(a2 + 2) + 80), &v24);
        this = re::TypeInfo::TypeInfo(&v18, &v24 + 8);
        v7 = *v5 & 0xFFFFFF;
        v12 = v4[58];
        if (v12 > v7)
        {
          v9 = *(*&v21[2] + 64);
          v10 = v4[60];
          v11 = 136;
          goto LABEL_14;
        }

        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v24 = 0u;
        v15 = v12;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        *v21 = 789;
        *&v21[4] = 2048;
        *&v21[6] = v7;
        v22 = 2048;
        v23 = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      else
      {
        if (v6 != 4)
        {
          return this;
        }

        re::TypeRegistry::typeInfo(*a2, *(*(a2 + 2) + 80), &v24);
        this = re::TypeInfo::TypeInfo(&v18, &v24 + 8);
        v7 = *v5 & 0xFFFFFF;
        v8 = v4[53];
        if (v8 > v7)
        {
          v9 = *(*&v21[2] + 64);
          v10 = v4[55];
          v11 = 104;
LABEL_14:
          *(v10 + v7 * v11 + 64) = v9;
          return this;
        }
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v24 = 0u;
      v16 = v8;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v18 = 136315906;
      v19 = "operator[]";
      v20 = 1024;
      *v21 = 789;
      *&v21[4] = 2048;
      *&v21[6] = v7;
      v22 = 2048;
      v23 = v16;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v17 = v14;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    *v21 = 789;
    *&v21[4] = 2048;
    *&v21[6] = v7;
    v22 = 2048;
    v23 = v17;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return this;
}

_anonymous_namespace_ *re::DataArray<re::internal::TypeInfoIndex>::allocBlock(void *a1)
{
  v3 = 4 * *(a1 + 11);
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

uint64_t re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 16);
            do
            {
              if ((*(v17 - 2) & 0x80000000) != 0)
              {
                v18 = 0xBF58476D1CE4E5B9 * ((*(v17 - 1) >> 31) ^ (*(v17 - 1) >> 1));
                v19 = re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31)) % *(a1 + 24));
                v20 = *(v17 - 1);
                v19[1] = v19[1] & 0xFFFFFFFFFFFFFFFELL | v20 & 1;
                v19[1] = *(v17 - 1) & 0xFFFFFFFFFFFFFFFELL | v20 & 1;
                v19[2] = *v17;
                *(v17 - 1) = 0;
                *v17 = &str_67;
                v19[3] = v17[1];
              }

              v17 += 4;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v27);
        }
      }

      else
      {
        if (v8)
        {
          v23 = 2 * v7;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 32 * v4);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 32 * v4);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = 32 * v4;
  *(v21 + v24) = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *(v21 + v24) = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v21 + 32 * v4;
}

void re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 32 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v2 = a2[3];
    }

    else
    {
      *(v6 + 32 * v5) = *(v6 + 32 * v5) & 0x80000000 | v7;
    }

    v8 = (v6 + 32 * v2);
    v9 = *v8;
    if (*v8 < 0)
    {
      *v8 = v9 & 0x7FFFFFFF;
      re::StringID::destroyString((v8 + 2));
      v10 = a2[3];
      v6 = *(a1 + 16);
      v9 = *(v6 + 32 * v10);
      LODWORD(v2) = a2[3];
    }

    else
    {
      v10 = v2;
    }

    v11 = *(a1 + 40);
    *(v6 + 32 * v10) = *(a1 + 36) | v9 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v2;
    *(a1 + 40) = v11 + 1;
  }
}

BOOL re::TypeAttributeCollection::contains(uint64_t *a1, void *a2)
{
  if (!*a2)
  {
    return 0;
  }

  v3 = *a1;
  v2 = a1[1];
  v6[0] = a2[1];
  v6[1] = v2;
  v7 = *(a1 + 4);
  v4 = re::Hash<re::internal::TypeAttributeKey>::operator()(v8, v6);
  re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::findEntry<re::internal::TypeAttributeKey>(v3 + 768, v6, v4, v8);
  return v9 != 0x7FFFFFFF;
}

uint64_t re::TypeAttributeCollection::operator[](uint64_t *a1, void *a2)
{
  if (!*a2)
  {
    return 0;
  }

  v3 = *a1;
  v2 = a1[1];
  v5[0] = a2[1];
  v5[1] = v2;
  v6 = *(a1 + 4);
  result = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v3 + 768, v5);
  if (result)
  {
    return *result;
  }

  return result;
}

void re::ArrayAccessor::reset(re::ArrayAccessor *this, void **a2, re::Allocator *a3, const re::TypeInfo *a4)
{
  v8 = *this;
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), v28);
  re::TypeInfo::TypeInfo(v26, v29);
  v9 = v27[12];
  v10 = *(this + 2);
  if ((*(v10 + 92) & 0xFFFFFF) != 0)
  {
    re::TypeRegistry::typeInfo(v8, *(v10 + 88), v28);
    re::TypeInfo::TypeInfo(v25, v29);
    v11 = *(*(this + 2) + 96);
    Unsigned = re::internal::readUnsigned((a2 + v11), v25, v12);
    if (Unsigned)
    {
      if ((v9 & 1) == 0)
      {
        v14 = Unsigned;
        for (i = 0; i != v14; ++i)
        {
          v16 = re::ArrayAccessor::elementAtUnchecked(this, a2, i);
          re::TypeInfo::destruct(v26, v16, a3, 0);
        }
      }

      (*(*a3 + 40))(a3, *a2);
      re::internal::writeUnsigned((a2 + v11), v25, 0);
      *a2 = 0;
    }

    if (a4)
    {
      v17 = re::internal::checkedArraySize(v27[2], a4);
      re::internal::writeUnsigned((a2 + v11), v25, a4);
      v18 = (*(*a3 + 32))(a3, v17, v27[3]);
      *a2 = v18;
      if ((v9 & 1) == 0)
      {
        v19 = 0;
        do
        {
          v20 = re::ArrayAccessor::elementAtUnchecked(this, a2, v19);
          re::TypeInfo::construct(v26, v20, a3, 0);
          ++v19;
        }

        while (a4 != v19);
        return;
      }

      v24 = v17;
LABEL_19:
      bzero(v18, v24);
    }
  }

  else
  {
    v21 = *(v10 + 96);
    if (!v21)
    {
      return;
    }

    if (v9)
    {
      v24 = re::internal::checkedArraySize(v27[2], a4);
      v18 = a2;
      goto LABEL_19;
    }

    for (j = 0; j != v21; ++j)
    {
      v23 = re::ArrayAccessor::elementAtUnchecked(this, a2, j);
      re::TypeInfo::destruct(v26, v23, a3, 0);
      re::TypeInfo::construct(v26, v23, a3, 0);
    }
  }
}

uint64_t re::ArrayAccessor::elementAtUnchecked(re::ArrayAccessor *this, void **a2, uint64_t a3)
{
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), v9);
  re::TypeInfo::TypeInfo(v7, &v10);
  if ((*(*(this + 2) + 92) & 0xFFFFFF) != 0)
  {
    a2 = *a2;
  }

  return a2 + *(v8 + 8) * a3;
}

uint64_t re::ArrayAccessor::size(re::ArrayAccessor *this, char *a2)
{
  v4 = *(this + 2);
  if ((*(v4 + 92) & 0xFFFFFF) == 0)
  {
    return *(v4 + 96);
  }

  v11[8] = v2;
  v11[9] = v3;
  re::TypeRegistry::typeInfo(*this, *(v4 + 88), v10);
  re::TypeInfo::TypeInfo(v9, v11);
  return re::internal::readUnsigned(&a2[*(*(this + 2) + 96)], v9, v7);
}

uint64_t re::IntrospectionWalker::walkPolymorphicPointer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  __dst = 0;
  memcpy(&__dst, v6, *(v7 + 20));
  v8 = *(*(a1 + 16) + 8);
  v9 = *(v8 + 24);
  while (v9 != __dst)
  {
    v9 = *(v8 + 64);
    v8 += 40;
  }

  v10 = *(v8 + 8);
  v11 = a2 + *(v8 + 32);

  return re::IntrospectionWalker::walk(v10, v11, a3);
}

void re::IntrospectionWalker::walk(uint64_t a1, const re::IntrospectionBase **a2, uint64_t a3)
{
  v57[3] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 24);
  *&buf = a2;
  if (v6)
  {
    v3 = a3;
    v4 = a2;
    while (1)
    {
      v7 = (*(*v6 + 48))(v6, a1, &buf);
      v9 = *(a1 + 16);
      if (v9 != 13)
      {
        break;
      }

      if (!(*(*a1 + 56))(a1, v4))
      {
        return;
      }

      v10 = *(a1 + 48);
      v4 = (*(*a1 + 80))(a1, v4);
      v6 = *(v3 + 24);
      *&buf = v4;
      a1 = v10;
      if (!v6)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v7 = std::__throw_bad_function_call[abi:nn200100]();
  }

  if (v9 > 5)
  {
    if (v9 > 8)
    {
      if ((v9 - 9) < 2)
      {
        return;
      }

      if (v9 != 11)
      {
        goto LABEL_76;
      }

      if (*(a1 + 104))
      {
        v29 = (*(a1 + 96))(v4);
        if (v29)
        {
          v30 = v29;
          for (i = 0; i != v30; ++i)
          {
            v32 = (*(a1 + 104))(i, v4);
            if (v32)
            {
              v34 = v33 == 0;
            }

            else
            {
              v34 = 1;
            }

            if (!v34)
            {
              re::IntrospectionWalker::walk(v32, v33, v3);
            }
          }
        }
      }

      return;
    }

    if (v9 == 6)
    {
      return;
    }

    if (v9 == 7)
    {
      *&buf = &unk_1F5D0C8C8;
      *(&buf + 1) = a1;
      v55 = v3;
      p_buf = &buf;
      (*(*a1 + 104))(a1, v4, &buf);
      std::__function::__value_func<BOOL ()(void const*,void *)>::~__value_func[abi:nn200100](&buf);
      return;
    }

    if (!*(a1 + 56))
    {
      return;
    }

    v12 = 0;
    while (1)
    {
      v13 = *(*(a1 + 64) + 8 * v12);
      if (*v13 == 1)
      {
        v14 = *(v13 + 40);
        if (v14 > 1)
        {
          if (v14 == 2)
          {
            v8 = *(v4 + *(v13 + 36));
            if (v8)
            {
              v19 = *(*(*(v13 + 16) + 48) + 64);
              v20 = *v19;
              if (**v19 != 2)
              {
                v21 = (v19 + 1);
                do
                {
                  v22 = *v21++;
                  v20 = v22;
                }

                while (*v22 != 2);
              }

              v23 = *(v13 + 48);
              *&buf = v4 + *(v13 + 64);
              *(&buf + 1) = v23;
              v55 = *(v20 + 1);
              v7 = re::IntrospectionWalker::walkPolymorphicPointer(&buf, v8, v3);
            }

            goto LABEL_36;
          }

          if (v14 != 3)
          {
LABEL_77:
            re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "walkStructure", 63);
            _os_crash();
            __break(1u);
            return;
          }

LABEL_30:
          v7 = re::IntrospectionWalker::walk(*(v13 + 16), v4 + *(v13 + 36), v3);
          goto LABEL_36;
        }

        if (!v14)
        {
          goto LABEL_30;
        }

        if (v14 != 1)
        {
          goto LABEL_77;
        }

        v15 = *(v13 + 48);
        if (!v15)
        {
          v42 = *re::foundationIntrospectionLogObjects(v7);
          if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          v43 = *(v13 + 8);
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v43;
          v44 = "Failed to get array length for member '%s'.";
LABEL_74:
          _os_log_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_DEFAULT, v44, &buf, 0xCu);
          return;
        }

        v16 = *(v13 + 16);
        v17 = *(v13 + 64);
        __dst = 0;
        v18 = memcpy(&__dst, v4 + v17, *(v15 + 20));
        if (__dst >> 31)
        {
          v42 = *re::foundationIntrospectionLogObjects(v18);
          if (!os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          v45 = *(v13 + 8);
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v45;
          v44 = "Array too big for member '%s'.";
          goto LABEL_74;
        }

        re::IntrospectionCStyleArray::IntrospectionCStyleArray(&buf, *(v16 + 48), __dst);
        ArcSharedObject::ArcSharedObject(&v46, 0);
        v47[1] = 0x800000001;
        v48 = 8;
        v49 = 0;
        v50 = 0;
        v51 = 0xFFFFFFFFLL;
        v46 = &unk_1F5CBD2C0;
        v52[0] = &buf;
        v52[1] = 0;
        re::IntrospectionWalker::walk(&v46, v4 + *(v13 + 36), v3);
        v46 = &unk_1F5CBD2C0;
        re::SerializedReference<re::IntrospectionBase const*>::reset(v52);
        v46 = &unk_1F5CCF868;
        objc_destructInstance(v47);
        *&buf = &unk_1F5CB0038;
        re::SerializedReference<re::IntrospectionBase const*>::reset(v57);
        *&buf = &unk_1F5CCF868;
        v7 = objc_destructInstance(&buf + 8);
      }

LABEL_36:
      if (++v12 >= *(a1 + 56))
      {
        return;
      }
    }
  }

  if (v9 > 2)
  {
    if (v9 == 3)
    {
      if ((*(*a1 + 88))(a1, v4))
      {
        v35 = 0;
        do
        {
          v36 = *(a1 + 48);
          v37 = (*(*a1 + 104))(a1, v4, v35);
          re::IntrospectionWalker::walk(v36, v37, v3);
          ++v35;
        }

        while ((*(*a1 + 88))(a1, v4) > v35);
      }
    }

    else if (v9 == 4)
    {
      if ((*(*a1 + 80))(a1, v4))
      {
        v39 = 0;
        do
        {
          v40 = *(a1 + 48);
          v41 = (*(*a1 + 104))(a1, v4, v39);
          re::IntrospectionWalker::walk(v40, v41, v3);
          ++v39;
        }

        while ((*(*a1 + 80))(a1, v4) > v39);
      }
    }

    else
    {
      *&buf = (*(*a1 + 88))(a1, v4);
      DWORD2(buf) = v24;
      while (1)
      {
        v25 = (*(*a1 + 96))(a1, v4);
        if (buf == v25 && WORD4(buf) == v26 && WORD5(buf) == HIWORD(v26))
        {
          break;
        }

        v27 = *(a1 + 48);
        v28 = (*(*a1 + 104))(a1, &buf);
        re::IntrospectionWalker::walk(v27, v28, v3);
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&buf);
      }
    }
  }

  else
  {
    if (!v9)
    {
      return;
    }

    if (v9 != 1)
    {
      if (v9 == 2)
      {
        if (*(a1 + 64) >= 1)
        {
          v11 = 0;
          do
          {
            re::IntrospectionWalker::walk(*(a1 + 48), v4 + *(*(a1 + 48) + 20) * v11++, v3);
          }

          while (v11 < *(a1 + 64));
        }

        return;
      }

LABEL_76:
      re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "walk", 156);
      _os_crash();
      __break(1u);
    }

    v38 = *v4;
    if (v38)
    {
      re::PolymorphicData::makeWithPointer(*(a1 + 48), v38, &buf);
      if (v55)
      {
        re::IntrospectionWalker::walkPolymorphicPointer(&buf, v38, v3);
      }

      else
      {
        re::IntrospectionWalker::walk(*(a1 + 48), v38, v3);
      }
    }
  }
}

__n128 std::__function::__func<re::IntrospectionWalker::walk(re::IntrospectionBase const&,void const*,std::function<void ()(re::IntrospectionBase const&,void const*)> const&)::$_0,std::allocator<re::IntrospectionWalker::walk(re::IntrospectionBase const&,void const*,std::function<void ()(re::IntrospectionBase const&,void const*)> const&)::$_0>,BOOL ()(void const*,void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D0C8C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<re::IntrospectionWalker::walk(re::IntrospectionBase const&,void const*,std::function<void ()(re::IntrospectionBase const&,void const*)> const&)::$_0,std::allocator<re::IntrospectionWalker::walk(re::IntrospectionBase const&,void const*,std::function<void ()(re::IntrospectionBase const&,void const*)> const&)::$_0>,BOOL ()(void const*,void *)>::operator()(uint64_t a1, const re::IntrospectionBase ***a2, const re::IntrospectionBase ***a3)
{
  v4 = *a3;
  re::IntrospectionWalker::walk(*(*(a1 + 8) + 48), *a2, *(a1 + 16));
  re::IntrospectionWalker::walk(*(*(a1 + 8) + 64), v4, *(a1 + 16));
  return 1;
}

uint64_t std::__function::__func<re::IntrospectionWalker::walk(re::IntrospectionBase const&,void const*,std::function<void ()(re::IntrospectionBase const&,void const*)> const&)::$_0,std::allocator<re::IntrospectionWalker::walk(re::IntrospectionBase const&,void const*,std::function<void ()(re::IntrospectionBase const&,void const*)> const&)::$_0>,BOOL ()(void const*,void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::internal::readUnsigned(re::internal *this, void *a2, const re::TypeInfo *a3)
{
  v3 = *(a2[2] + 8);
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      return *this;
    }

    if (v3 == 8)
    {
      return *this;
    }
  }

  else
  {
    if (v3 == 1)
    {
      return *this;
    }

    if (v3 == 2)
    {
      return *this;
    }
  }

  re::internal::assertLog(5, a2, a3, "assertion failure: '%s' (%s:line %i) Unsupported integer type. Size of type in bytes: %zu", "!Unreachable code", "readUnsigned", 29, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

_DWORD *re::internal::writeUnsigned(_DWORD *this, void *a2, const re::TypeInfo *a3)
{
  v3 = *(a2[2] + 8);
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      *this = a3;
      return this;
    }

    if (v3 == 8)
    {
      *this = a3;
      return this;
    }
  }

  else
  {
    if (v3 == 1)
    {
      *this = a3;
      return this;
    }

    if (v3 == 2)
    {
      *this = a3;
      return this;
    }
  }

  re::internal::assertLog(5, a2, a3, "assertion failure: '%s' (%s:line %i) Unsupported integer type. Size of type in bytes: %zu", "!Unreachable code", "writeUnsigned", 55, v3);
  this = _os_crash();
  __break(1u);
  return this;
}

uint64_t re::internal::checkedArraySize(unint64_t this, unint64_t a2)
{
  if (is_mul_ok(this, a2))
  {
    return this * a2;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in array. Element size = %zu bytes, count = %zu", "!overflow", "checkedArraySize", 65, this, a2, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::UnionAccessor::memberType@<X0>(re::UnionAccessor *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  if (*(v4 + 96) <= a2)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_5:
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = *this;
  v6 = *(v4 + 92) + a2;
  if (v5[73] <= v6)
  {
    goto LABEL_5;
  }

  re::TypeRegistry::typeInfo(v5, *(v5[75] + 8 * v6), &v8);
  return re::TypeInfo::TypeInfo(a3, &v8 + 8);
}

unint64_t re::UnionAccessor::activeMemberType@<X0>(re::UnionAccessor *this@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  result = re::UnionAccessor::readTag(this, a2);
  if (result >= *(*(this + 2) + 96))
  {
    *a3 = 0;
  }

  else
  {
    re::UnionAccessor::memberType(this, result, v6);
    *a3 = 1;
    return re::TypeInfo::TypeInfo((a3 + 8), v6);
  }

  return result;
}

uint64_t re::UnionAccessor::readTag(re::UnionAccessor *this, char *a2)
{
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), v7);
  re::TypeInfo::TypeInfo(v6, &v8);
  return re::internal::readUnsigned(&a2[*(*(this + 2) + 88)], v6, v4);
}

_DWORD *re::UnionAccessor::reset(re::UnionAccessor *this, char *a2, const re::TypeInfo *a3, re::Allocator *a4)
{
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), v14);
  re::TypeInfo::TypeInfo(v13, &v15);
  v8 = *(*(this + 2) + 88);
  Unsigned = re::internal::readUnsigned(&a2[v8], v13, v9);
  v11 = *(*(this + 2) + 96);
  if (Unsigned < v11)
  {
    re::UnionAccessor::memberType(this, Unsigned, v14);
    re::TypeInfo::destruct(v14, a2, a4, 0);
    v11 = *(*(this + 2) + 96);
  }

  if (v11 > a3)
  {
    re::UnionAccessor::memberType(this, a3, v14);
    re::TypeInfo::construct(v14, a2, a4, 0);
  }

  return re::internal::writeUnsigned(&a2[v8], v13, a3);
}

void re::TypeBuilderHelper::registerArray(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v14);
  if (v14)
  {
    *a5 = v14;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v13);
    re::TypeBuilder::TypeBuilder(v12, v13);
    v11 = *a3;
    re::TypeBuilder::beginArrayType(v12, a2, &v11, a4);
    re::TypeBuilder::commitTo(v12, a1, a5);
    re::TypeBuilder::~TypeBuilder(v12, v10);
    re::StackScratchAllocator::~StackScratchAllocator(v13);
  }
}

void re::TypeBuilderHelper::registerPointer(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v26);
  if (v26)
  {
    *a5 = v26;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v25);
    re::TypeBuilder::TypeBuilder(v12, v25);
    v10 = *(a3 + 8);
    v15 = -1;
    memset(v16, 0, sizeof(v16));
    v17 = 0u;
    v18 = 0xFFFFFFFFLL;
    v19 = 1;
    v20 = 0;
    v21 = 0xFFFFFFFFLL;
    v22 = 1;
    v23 = 0xFFFFFFFFLL;
    v24 = 0;
    v12[0] = 9;
    re::StringID::operator=(&v13, a2);
    v14 = 1;
    *(v16 + 4) = 0x800000008uLL;
    *(&v17 + 4) = 0;
    *(&v16[1] + 4) = 0;
    v19 = -1;
    v21 = v10;
    v22 = a4;
    re::TypeBuilder::commitTo(v12, a1, a5);
    re::TypeBuilder::~TypeBuilder(v12, v11);
    re::StackScratchAllocator::~StackScratchAllocator(v25);
  }
}

void re::TypeBuilderHelper::registerCString(re::TypeBuilderHelper *this@<X0>, void *a2@<X8>)
{
  v11[0] = 189247272;
  v11[1] = "char*";
  v5 = re::TypeRegistry::typeID(this, v11, &v10);
  if (v10)
  {
    *a2 = v10;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v9);
    re::TypeBuilder::TypeBuilder(v8, v9);
    v7[0] = 0;
    v7[1] = 0xFFFFFFFFLL;
    re::TypeBuilder::beginObjectType(v8, v11, 1, 1, 8uLL, 8uLL, v7);
    re::TypeBuilder::setHasKnownSize(v8, 0);
    re::TypeBuilder::commitTo(v8, this, a2);
    re::TypeBuilder::~TypeBuilder(v8, v6);
    re::StackScratchAllocator::~StackScratchAllocator(v9);
  }

  if (v11[0])
  {
    if (v11[0])
    {
    }
  }
}

void re::TypeBuilderHelper::registerDynamicString(re::TypeBuilderHelper *this@<X0>, void *a2@<X8>)
{
  v11[0] = 0x2686EB529B3EE220;
  v11[1] = "DynamicString";
  v5 = re::TypeRegistry::typeID(this, v11, &v10);
  if (v10)
  {
    *a2 = v10;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v9);
    re::TypeBuilder::TypeBuilder(v8, v9);
    v7[0] = 0;
    v7[1] = 0xFFFFFFFFLL;
    re::TypeBuilder::beginObjectType(v8, v11, 1, 1, 0x20uLL, 8uLL, v7);
    re::TypeBuilder::setConstructor(v8, re::TypeBuilderHelper::registerDynamicString(re::TypeRegistry *)::$_0::__invoke);
    re::TypeBuilder::setDestructor(v8, re::TypeBuilder::setDefaultDestructor<re::DynamicString>(void)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setHasKnownSize(v8, 0);
    re::TypeBuilder::commitTo(v8, this, a2);
    re::TypeBuilder::~TypeBuilder(v8, v6);
    re::StackScratchAllocator::~StackScratchAllocator(v9);
  }

  if (v11[0])
  {
    if (v11[0])
    {
    }
  }
}

void re::TypeBuilderHelper::registerStringID(re::TypeBuilderHelper *this@<X0>, void *a2@<X8>)
{
  v11[0] = 0x458DDB01A18;
  v11[1] = "StringID";
  v5 = re::TypeRegistry::typeID(this, v11, &v10);
  if (v10)
  {
    *a2 = v10;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v9);
    re::TypeBuilder::TypeBuilder(v8, v9);
    v7[0] = 0;
    v7[1] = 0xFFFFFFFFLL;
    re::TypeBuilder::beginObjectType(v8, v11, 1, 1, 0x10uLL, 8uLL, v7);
    re::TypeBuilder::setConstructor(v8, re::TypeBuilder::setDefaultConstructor<re::StringID>(void)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v8, re::TypeBuilder::setDefaultDestructor<re::StringID>(void)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setHasKnownSize(v8, 0);
    re::TypeBuilder::commitTo(v8, this, a2);
    re::TypeBuilder::~TypeBuilder(v8, v6);
    re::StackScratchAllocator::~StackScratchAllocator(v9);
  }

  if (v11[0])
  {
    if (v11[0])
    {
    }
  }
}

void *re::TypeBuilderHelper::registerDynamicString(re::TypeRegistry *)::$_0::__invoke(void *a1, uint64_t a2, uint64_t a3)
{
  a1[2] = 0;
  a1[3] = 0;
  *a1 = a3;
  a1[1] = 0;
  return re::DynamicString::setCapacity(a1, 0);
}

void *re::TypeBuilder::setDefaultConstructor<re::StringID>(void)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(void *result)
{
  *result = 0;
  result[1] = &str_67;
  return result;
}

float32x4_t re::lerp<float>@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>, float a4@<S0>)
{
  v7 = 1.0;
  v50 = 1.0 - a4;
  v8 = a1[1];
  v9 = a2[1];
  v47 = *a2;
  v48 = *a1;
  v10 = vmulq_f32(v8, v9);
  v11 = vextq_s8(v10, v10, 8uLL);
  *v10.f32 = vadd_f32(*v10.f32, *v11.f32);
  v10.f32[0] = vaddv_f32(*v10.f32);
  v11.i64[0] = 0;
  v12 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v10, v11)), 0), vnegq_f32(v9), v9);
  v13 = vsubq_f32(v8, v12);
  v14 = vmulq_f32(v13, v13);
  v45 = v12;
  v46 = v8;
  v15 = vaddq_f32(v8, v12);
  v16 = vmulq_f32(v15, v15);
  v17 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v16.i8, *&vextq_s8(v16, v16, 8uLL)))));
  v18 = v17 + v17;
  v19 = (v17 + v17) == 0.0;
  v20 = 1.0;
  if (!v19)
  {
    v20 = sinf(v18) / v18;
  }

  v21 = v20;
  v22 = vrecpe_f32(LODWORD(v20));
  v23 = vmul_f32(v22, vrecps_f32(LODWORD(v21), v22));
  LODWORD(v24) = vmul_f32(v23, vrecps_f32(LODWORD(v21), v23)).u32[0];
  v25 = v50;
  if ((v50 * v18) != 0.0)
  {
    v43 = v24;
    v23.f32[0] = sinf(v50 * v18);
    v24 = v43;
    v25 = v50;
    v7 = v23.f32[0] / (v50 * v18);
  }

  v23.f32[0] = v25 * (v24 * v7);
  v26 = vdupq_lane_s32(v23, 0);
  v27 = a4;
  v28 = v18 * a4;
  v29 = 1.0;
  if (v28 != 0.0)
  {
    v42 = v26;
    v44 = v24;
    v30 = sinf(v28);
    v26 = v42;
    v24 = v44;
    v25 = v50;
    v27 = a4;
    v29 = v30 / v28;
  }

  v31 = vmlaq_f32(vmulq_n_f32(v45, (v24 * v29) * v27), v46, v26);
  v32 = vmulq_f32(v31, v31);
  v33 = vadd_f32(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
  if (vaddv_f32(v33) == 0.0)
  {
    v34 = 0;
    v35 = 0x3F80000000000000;
  }

  else
  {
    v36 = vadd_f32(v33, vdup_lane_s32(v33, 1)).u32[0];
    v37 = vrsqrte_f32(v36);
    v38 = vmul_f32(v37, vrsqrts_f32(v36, vmul_f32(v37, v37)));
    v39 = vmulq_n_f32(v31, vmul_f32(v38, vrsqrts_f32(v36, vmul_f32(v38, v38))).f32[0]);
    v35 = v39.i64[1];
    v34 = v39.i64[0];
  }

  result = vmlaq_n_f32(vmulq_n_f32(v47, v27), v48, v25);
  v41 = vmlaq_n_f32(vmulq_n_f32(a2[2], v27), a1[2], v25);
  *a3 = result;
  a3[1].i64[0] = v34;
  a3[1].i64[1] = v35;
  a3[2] = v41;
  return result;
}

double re::Projection::makeReverseDepth@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = &re::introspect_BOOL(BOOL)::info;
  v3 = &re::introspect_BOOL(BOOL)::info;
  v4 = &re::introspect_BOOL(BOOL)::info;
  v5 = &re::introspect_BOOL(BOOL)::info;
  {
    v20 = a2;
    v21 = a1;
    v5 = &re::introspect_BOOL(BOOL)::info;
    v4 = &re::introspect_BOOL(BOOL)::info;
    v3 = &re::introspect_BOOL(BOOL)::info;
    v2 = &re::introspect_BOOL(BOOL)::info;
    v19 = v18;
    a2 = v20;
    a1 = v21;
    if (v19)
    {
      re::Projection::makeReverseDepth(re::Matrix4x4<float> const&)::zFlip = xmmword_1E3047670;
      re::Projection::makeReverseDepth(re::Matrix4x4<float> const&)::zFlip = xmmword_1E3047680;
      re::Projection::makeReverseDepth(re::Matrix4x4<float> const&)::zFlip = xmmword_1E306DD20;
      re::Projection::makeReverseDepth(re::Matrix4x4<float> const&)::zFlip = xmmword_1E3063230;
      v5 = &re::introspect_BOOL(BOOL)::info;
      v4 = &re::introspect_BOOL(BOOL)::info;
      v3 = &re::introspect_BOOL(BOOL)::info;
      v2 = &re::introspect_BOOL(BOOL)::info;
      a2 = v20;
      a1 = v21;
    }
  }

  v6 = 0;
  v7 = v2[87];
  v8 = v3[86];
  v9 = v4[85];
  v10 = v5[84];
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  v22[0] = *a1;
  v22[1] = v11;
  v22[2] = v12;
  v22[3] = v13;
  do
  {
    v23[v6] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(v22[v6])), v8, *&v22[v6], 1), v9, v22[v6], 2), v10, v22[v6], 3);
    ++v6;
  }

  while (v6 != 4);
  result = *v23;
  v15 = v23[1];
  v16 = v23[2];
  v17 = v23[3];
  *a2 = v23[0];
  a2[1] = v15;
  a2[2] = v16;
  a2[3] = v17;
  return result;
}

float re::Projection::decompose(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  *a1 = v4 == 0.0;
  v5 = *(a2 + 40);
  if (v4 != 0.0)
  {
    v15.i32[0] = *(a2 + 56);
    if (v5 == -1.0)
    {
      *(a1 + 8) = 2139095040;
      *(a1 + 48) = 0;
      *v15.i32 = -*v15.i32;
    }

    else
    {
      if (v5 != 0.0)
      {
        v18 = __invert_f4(*a2);
        v18.columns[0] = vaddq_f32(v18.columns[2], vmlaq_f32(vmulq_f32(v18.columns[0], 0), 0, v18.columns[1]));
        v18.columns[2].i64[0] = vextq_s8(v18.columns[0], v18.columns[0], 8uLL).u64[0];
        v18.columns[0] = vmlaq_f32(v18.columns[0], vdupq_n_s32(0x799A130Cu), v18.columns[3]);
        *v18.columns[1].f32 = vadd_f32(*&vextq_s8(v18.columns[3], v18.columns[3], 8uLL), *v18.columns[2].f32);
        v18.columns[0].i64[0] = vextq_s8(v18.columns[0], v18.columns[0], 8uLL).u64[0];
        v15 = vdiv_f32(vneg_f32(vzip1_s32(*v18.columns[1].f32, *v18.columns[0].f32)), vzip2_s32(*v18.columns[1].f32, *v18.columns[0].f32));
        *(a1 + 4) = vrev64_s32(v15);
        if (*&v15.i32[1] <= *v15.i32)
        {
          *(a1 + 48) = 0;
          v15.i32[0] = v15.i32[1];
        }

        else
        {
          *(a1 + 4) = v15;
          *(a1 + 48) = 1;
        }

        goto LABEL_13;
      }

      *(a1 + 8) = 2139095040;
      *(a1 + 48) = 1;
    }

    *(a1 + 4) = v15.i32[0];
LABEL_13:
    v16 = 1.0 / *a2;
    *(a1 + 12) = v16 * (*v15.i32 * (*(a2 + 32) + -1.0));
    *(a1 + 16) = v16 * (*v15.i32 * (*(a2 + 32) + 1.0));
    v17 = 1.0 / *(a2 + 20);
    *(a1 + 24) = v17 * (*v15.i32 * (*(a2 + 36) + -1.0));
    result = v17 * (*v15.i32 * (*(a2 + 36) + 1.0));
    *(a1 + 20) = result;
    return result;
  }

  v6 = v5 < 0.0;
  v7 = v5 >= 0.0;
  v8 = 1.0 / v5;
  v9 = v8 * *(a2 + 56);
  v10 = v9 - v8;
  if (v6)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (!v6)
  {
    v10 = v9;
  }

  *(a1 + 48) = v7;
  *(a1 + 4) = v11;
  *(a1 + 8) = v10;
  v12 = 1.0 / *a2;
  *(a1 + 16) = v12 * (1.0 - *(a2 + 48));
  *(a1 + 12) = -((*(a2 + 48) + 1.0) * v12);
  v13 = 1.0 / *(a2 + 20);
  *(a1 + 20) = v13 * (1.0 - *(a2 + 52));
  result = -((*(a2 + 52) + 1.0) * v13);
  *(a1 + 24) = result;
  return result;
}

float32x2_t re::Projection::cullingProjectionMatrix@<D0>(re::Projection *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *this;
  v5 = *(this + 12);
  LODWORD(v6) = 0;
  *(&v6 + 1) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  v7 = *(this + 2);
  v8.i32[0] = *(this + 3);
  v9 = *(this + 6);
  v10 = *(this + 16);
  v11 = *(this + 1);
  v12 = v10.f32[1] - v9;
  if (v4)
  {
    v13 = 2.0 / (v10.f32[0] - v8.f32[0]);
    v8.i32[1] = *(this + 6);
    v14 = vdiv_f32(vadd_f32(v8, v10), vsub_f32(v8, v10));
    *&v15 = v14;
    HIDWORD(v15) = 1.0;
    if (v5 == 1)
    {
      v16 = v7 - v11;
      v17 = v7 / (v7 - v11);
    }

    else
    {
      v16 = v11 - v7;
      v17 = v11 / (v11 - v7);
    }

    *&v29 = 1.0 / v16;
    *&v30 = 0;
    *(&v30 + 1) = v29;
    *(&v15 + 2) = v17;
    *a2 = LODWORD(v13);
    *(&v6 + 1) = 2.0 / v12;
    *(a2 + 16) = v6;
    *(a2 + 32) = v30;
    *(a2 + 48) = v15;
    if (*(this + 28) == 1)
    {
      v14 = *(a2 + 48);
    }

    result = vadd_f32(v14, *(this + 56));
    *(a2 + 48) = result;
  }

  else
  {
    v18 = (v11 + v11) / (v10.f32[0] - v8.f32[0]);
    v19 = (v8.f32[0] + v10.f32[0]) / (v10.f32[0] - v8.f32[0]);
    v10.f32[0] = (v11 + v11) / v12;
    v20 = (v9 + v10.f32[1]) / v12;
    if (v7 == INFINITY)
    {
      LODWORD(v22) = 0;
      *(&v22 + 1) = 0;
      v21 = LODWORD(v18);
      DWORD1(v22) = v10.i32[0];
      v23 = -v11;
      __asm { FMOV            V5.4S, #-1.0 }

      *&_Q5 = __PAIR64__(LODWORD(v20), LODWORD(v19));
    }

    else
    {
      v32 = v7 / (v11 - v7);
      v23 = (v7 * v11) / (v11 - v7);
      LODWORD(v22) = 0;
      *(&v22 + 1) = 0;
      v21 = LODWORD(v18);
      DWORD1(v22) = v10.i32[0];
      __asm { FMOV            V5.4S, #-1.0 }

      *&_Q5 = __PAIR64__(LODWORD(v20), LODWORD(v19));
      *(&_Q5 + 2) = v32;
    }

    *&v33 = 0;
    *(&v33 + 1) = LODWORD(v23);
    *a2 = v21;
    *(a2 + 16) = v22;
    *(a2 + 32) = _Q5;
    *(a2 + 48) = v33;
    if (*(this + 28) == 1)
    {
    }

    if (v5 == 1)
    {
      re::Projection::makeReverseDepth(a2, v36);
      v34 = v36[1];
      *a2 = v36[0];
      *(a2 + 16) = v34;
      v35 = v36[3];
      *(a2 + 32) = v36[2];
      *(a2 + 48) = v35;
    }

    result = vadd_f32(*(this + 56), *(a2 + 32));
    *(a2 + 32) = result;
  }

  return result;
}

float re::anonymous namespace::applyObliqueClipPlane(uint64_t a1, float32x4_t a2)
{
  if (a2.f32[0] >= 0.0)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = -1.0;
  }

  v7 = v3;
  if (a2.f32[1] >= 0.0)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = -1.0;
  }

  v6 = v4;
  v9 = __invert_f4(*a1);
  v9.columns[0] = vmulq_f32(vaddq_f32(v9.columns[3], vaddq_f32(v9.columns[2], vmlaq_n_f32(vmulq_n_f32(v9.columns[0], v7), v9.columns[1], v6))), a2);
  v9.columns[0] = vmulq_n_f32(a2, 1.0 / vaddv_f32(vadd_f32(*v9.columns[0].f32, *&vextq_s8(v9.columns[0], v9.columns[0], 8uLL))));
  *(a1 + 8) = v9.columns[0].f32[0] - *(a1 + 12);
  *(a1 + 24) = v9.columns[0].f32[1] - *(a1 + 28);
  *(a1 + 40) = v9.columns[0].i32[2];
  result = v9.columns[0].f32[3] - *(a1 + 60);
  *(a1 + 56) = result;
  return result;
}

uint64_t re::Projection::unprojectPoint(float32x2_t *a1, uint64_t a2, int a3)
{
  v3 = a1[5].f32[1];
  if (v3 == 0.0)
  {
    v6 = *a1;
    v6.i32[1] = a1[2].i32[1];
    return vdiv_f32(vsub_f32(a2, a1[6]), v6);
  }

  else
  {
    v4 = *a1;
    v4.i32[1] = a1[2].i32[1];
    return vdiv_f32(vmul_n_f32(vmla_n_f32(vneg_f32(a1[4]), a2, v3), a1[7].f32[0] / -(a1[5].f32[0] - (v3 * *&a3))), v4);
  }
}

uint64_t re::solveQuadraticRootsD(re *this, double *a2, double *a3)
{
  v3 = *(this + 1);
  v4 = *(this + 2);
  v5 = *this;
  v6 = v4;
  if (fabsf(v6) < 0.00001)
  {
    v7 = v3;
    if (fabsf(v7) >= 0.00001)
    {
      *a2 = -v5 / v3;
      return 1;
    }

    return 0;
  }

  v9 = v4 * -4.0 * v5 + v3 * v3;
  if (v9 < 0.0)
  {
    return 0;
  }

  v10 = 1.0;
  if (v3 < 0.0)
  {
    v10 = -1.0;
  }

  v11 = (v3 + v10 * sqrt(v9)) * -0.5;
  v12 = v5 / v11;
  *a2 = v11 / v4;
  a2[1] = v12;
  if (v12 < v11 / v4)
  {
    *a2 = v12;
    a2[1] = v11 / v4;
  }

  if (v9 <= 0.0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

double re::Matrix4x4<float>::extractScale(uint64_t a1, float32x4_t a2, int32x4_t a3, int8x16_t a4)
{
  a2.i64[0] = *a1;
  a3.i64[0] = *(a1 + 16);
  a4.i64[0] = *(a1 + 32);
  a2.i32[2] = *(a1 + 8);
  a3.i32[2] = *(a1 + 24);
  a4.i32[2] = *(a1 + 40);
  v4 = vmulq_f32(a2, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a4, a4, 0xCuLL), a4, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL))), vextq_s8(vuzp1q_s32(a4, a4), a4, 0xCuLL), vextq_s8(vextq_s8(a3, a3, 0xCuLL), a3, 8uLL)));
  v5 = vaddv_f32(*v4.f32);
  v6 = -1.0;
  if ((v4.f32[2] + v5) > 0.0)
  {
    v6 = 1.0;
  }

  v7 = vmulq_f32(a2, a2);
  v8 = vmulq_f32(a3, a3);
  v9 = vadd_f32(vzip1_s32(*v7.i8, *v8.i8), vzip2_s32(*v7.i8, *v8.i8));
  v10 = vextq_s8(v7, v7, 8uLL);
  *v10.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v10.f32, *&vextq_s8(v8, v8, 8uLL)), v9));
  v11 = vmulq_f32(a4, a4);
  v10.i32[2] = sqrtf(v11.f32[2] + vaddv_f32(*v11.f32));
  *&result = vmulq_n_f32(v10, v6).u64[0];
  return result;
}

double re::Matrix4x4<float>::makeRotation@<D0>(float32x4_t *a1@<X0>, _OWORD *a2@<X8>, float a3@<S0>)
{
  v4 = *a1;
  v5 = vmulq_f32(v4, v4);
  v6 = v5.f32[2] + vaddv_f32(*v5.f32);
  if (fabsf(v6) >= 1.0e-10)
  {
    v7 = v6;
    v8 = vrsqrte_f32(LODWORD(v6));
    v9 = vmul_f32(v8, vrsqrts_f32(LODWORD(v7), vmul_f32(v8, v8)));
    v4 = vmulq_n_f32(v4, vmul_f32(v9, vrsqrts_f32(LODWORD(v7), vmul_f32(v9, v9))).f32[0]);
  }

  v22 = v4;
  v23 = vmulq_f32(v4, v4).f32[0];
  v10 = vmuls_lane_f32(v4.f32[1], *v4.f32, 1);
  v11 = vmuls_lane_f32(v4.f32[2], v4, 2);
  v12 = vmuls_lane_f32(v4.f32[0], *v4.f32, 1);
  v13 = vmuls_lane_f32(v4.f32[0], v4, 2);
  v14 = vmuls_lane_f32(v4.f32[1], v4, 2);
  v15 = __sincosf_stret(a3);
  v16 = vmuls_lane_f32(v15.__sinval, *v22.f32, 1);
  v17 = vmuls_lane_f32(v15.__sinval, v22, 2);
  *&v18 = v23 + (v15.__cosval * (1.0 - v23));
  *(&v18 + 1) = v17 + (v12 * (1.0 - v15.__cosval));
  *(&v18 + 1) = COERCE_UNSIGNED_INT(-(v16 - (v13 * (1.0 - v15.__cosval))));
  *&v19 = -(v17 - (v12 * (1.0 - v15.__cosval)));
  *(&v19 + 1) = v10 + (v15.__cosval * (1.0 - v10));
  *(&v19 + 1) = COERCE_UNSIGNED_INT((v15.__sinval * v22.f32[0]) + (v14 * (1.0 - v15.__cosval)));
  *&v20 = v16 + (v13 * (1.0 - v15.__cosval));
  *(&v20 + 1) = -((v15.__sinval * v22.f32[0]) - (v14 * (1.0 - v15.__cosval)));
  *(&v20 + 1) = COERCE_UNSIGNED_INT(v11 + (v15.__cosval * (1.0 - v11)));
  *a2 = v18;
  a2[1] = v19;
  result = 0.0;
  a2[2] = v20;
  a2[3] = xmmword_1E30474D0;
  return result;
}

unint64_t re::Quaternion<float>::makeRotation(float32x4_t *a1, float a2)
{
  v2 = *a1;
  v3 = vmulq_f32(v2, v2);
  v4 = v3.f32[2] + vaddv_f32(*v3.f32);
  if (fabsf(v4) >= 1.0e-10)
  {
    v5 = v4;
    v6 = vrsqrte_f32(LODWORD(v4));
    v7 = vmul_f32(v6, vrsqrts_f32(LODWORD(v5), vmul_f32(v6, v6)));
    v2 = vmulq_n_f32(v2, vmul_f32(v7, vrsqrts_f32(LODWORD(v5), vmul_f32(v7, v7))).f32[0]);
  }

  return vmulq_n_f32(v2, __sincosf_stret(a2 * 0.5).__sinval).u64[0];
}

void *re::allocInfo_Vector2F(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BC2C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC2C8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BC778, "Vector2F");
    __cxa_guard_release(&qword_1EE1BC2C8);
  }

  return &unk_1EE1BC778;
}

void re::initInfo_Vector2F(re *this, re::IntrospectionBase *a2)
{
  v13[0] = 0x478E8020DEELL;
  v13[1] = "Vector2F";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE1BC2D0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BC2D0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<float [2]>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "array";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1BC3F0 = v9;
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 8, 4);
      *v11 = 0x100000004;
      qword_1EE1BC3F8 = v11;
      __cxa_guard_release(&qword_1EE1BC2D0);
    }
  }

  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BC3F0;
  *(this + 9) = re::internal::defaultConstruct<re::Vector2<float>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector2<float>>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector2<float>>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector2<float>>;
  *(this + 15) = _ZZN2re8internal15snapshotEncoderINS_7Vector2IfEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 16) = _ZZN2re8internal15snapshotDecoderINS_7Vector2IfEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v12 = v14;
}

void *re::allocInfo_Vector3F(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BC2E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC2E0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BC808, "Vector3F");
    __cxa_guard_release(&qword_1EE1BC2E0);
  }

  return &unk_1EE1BC808;
}

void re::initInfo_Vector3F(re *this, re::IntrospectionBase *a2)
{
  v13[0] = 0x478E8020E2CLL;
  v13[1] = "Vector3F";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE1BC2E8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BC2E8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<float [3]>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "array";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1BC400 = v9;
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 8, 4);
      *v11 = 0x100000004;
      qword_1EE1BC408 = v11;
      __cxa_guard_release(&qword_1EE1BC2E8);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BC400;
  *(this + 9) = re::internal::defaultConstruct<re::Vector3<float>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector3<float>>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector3<float>>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector3<float>>;
  *(this + 15) = _ZZN2re8internal15snapshotEncoderINS_7Vector3IfEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 16) = _ZZN2re8internal15snapshotDecoderINS_7Vector3IfEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v12 = v14;
}

double re::internal::defaultConstruct<re::Vector3<float>>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = 0.0;
  *a3 = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::Vector3<float>>(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  return result;
}

void *re::allocInfo_Vector4F(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BC2F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC2F8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BC898, "Vector4F");
    __cxa_guard_release(&qword_1EE1BC2F8);
  }

  return &unk_1EE1BC898;
}

void re::initInfo_Vector4F(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0x478E8020E6ALL;
  v12[1] = "Vector4F";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE1BC300, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BC300);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<float [4]>::get(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "array";
      *(v8 + 16) = &unk_1EE1BC500;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1BC410 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = (*(*v9 + 32))(v9, 8, 4);
      *v10 = 0x100000004;
      qword_1EE1BC418 = v10;
      __cxa_guard_release(&qword_1EE1BC300);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BC410;
  *(this + 9) = re::internal::defaultConstruct<re::Vector4<float>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector4<float>>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector4<float>>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector4<float>>;
  *(this + 15) = _ZZN2re8internal15snapshotEncoderINS_7Vector4IfEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 16) = _ZZN2re8internal15snapshotDecoderINS_7Vector4IfEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

void re::IntrospectionInfo<float [4]>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BC3B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC3B8))
  {
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1BC500);
    __cxa_guard_release(&qword_1EE1BC3B8);
  }

  if ((byte_1EE1BC2C1 & 1) == 0)
  {
    byte_1EE1BC2C1 = 1;
    v2 = re::introspect_float(1, a2);
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1BC500, v2, 4);
    re::IntrospectionRegistry::add(&unk_1EE1BC500, v3);
    re::getPrettyTypeName(&unk_1EE1BC500, &v7);
    if (BYTE8(v7))
    {
      v4 = v8;
    }

    else
    {
      v4 = &v7 + 9;
    }

    if (v7 && (BYTE8(v7) & 1) != 0)
    {
      (*(*v7 + 40))();
    }

    v7 = *(v2 + 2);
    xmmword_1EE1BC520 = v6;
    if (v9)
    {
      if (v9)
      {
      }
    }
  }
}

void *re::internal::defaultConstructV2<re::Vector4<float>>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void *re::allocInfo_Vector2D(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BC310, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC310))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BC928, "Vector2D");
    __cxa_guard_release(&qword_1EE1BC310);
  }

  return &unk_1EE1BC928;
}

void re::initInfo_Vector2D(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0x478E8020DEALL;
  v12[1] = "Vector2D";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE1BC318, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BC318);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<double [2]>::get(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "array";
      *(v8 + 16) = &unk_1EE1BC548;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1BC420 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = (*(*v9 + 32))(v9, 8, 4);
      *v10 = 0x100000004;
      qword_1EE1BC428 = v10;
      __cxa_guard_release(&qword_1EE1BC318);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BC420;
  *(this + 9) = re::internal::defaultConstruct<re::Vector2<double>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector2<double>>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector2<double>>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector2<double>>;
  *(this + 15) = _ZZN2re8internal15snapshotEncoderINS_7Vector2IdEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 16) = _ZZN2re8internal15snapshotDecoderINS_7Vector2IdEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

void re::IntrospectionInfo<double [2]>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BC3C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC3C0))
  {
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1BC548);
    __cxa_guard_release(&qword_1EE1BC3C0);
  }

  if ((byte_1EE1BC2C2 & 1) == 0)
  {
    byte_1EE1BC2C2 = 1;
    v2 = re::introspect_double(1, a2);
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1BC548, v2, 2);
    re::IntrospectionRegistry::add(&unk_1EE1BC548, v3);
    re::getPrettyTypeName(&unk_1EE1BC548, &v7);
    if (BYTE8(v7))
    {
      v4 = v8;
    }

    else
    {
      v4 = &v7 + 9;
    }

    if (v7 && (BYTE8(v7) & 1) != 0)
    {
      (*(*v7 + 40))();
    }

    v7 = *(v2 + 2);
    xmmword_1EE1BC568 = v6;
    if (v9)
    {
      if (v9)
      {
      }
    }
  }
}

void *re::internal::defaultConstructV2<re::Vector2<double>>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void *re::allocInfo_Vector3D(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BC320, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC320))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BC9B8, "Vector3D");
    __cxa_guard_release(&qword_1EE1BC320);
  }

  return &unk_1EE1BC9B8;
}

void re::initInfo_Vector3D(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0x478E8020E28;
  v12[1] = "Vector3D";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE1BC328, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BC328);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<double [3]>::get(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "array";
      *(v8 + 16) = &unk_1EE1BC590;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1BC430 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = (*(*v9 + 32))(v9, 8, 4);
      *v10 = 0x100000004;
      qword_1EE1BC438 = v10;
      __cxa_guard_release(&qword_1EE1BC328);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BC430;
  *(this + 9) = re::internal::defaultConstruct<re::Vector3<double>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector3<double>>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector3<double>>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector3<double>>;
  *(this + 15) = _ZZN2re8internal15snapshotEncoderINS_7Vector3IdEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 16) = _ZZN2re8internal15snapshotDecoderINS_7Vector3IdEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

void re::IntrospectionInfo<double [3]>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BC3C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC3C8))
  {
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1BC590);
    __cxa_guard_release(&qword_1EE1BC3C8);
  }

  if ((byte_1EE1BC2C3 & 1) == 0)
  {
    byte_1EE1BC2C3 = 1;
    v2 = re::introspect_double(1, a2);
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1BC590, v2, 3);
    re::IntrospectionRegistry::add(&unk_1EE1BC590, v3);
    re::getPrettyTypeName(&unk_1EE1BC590, &v7);
    if (BYTE8(v7))
    {
      v4 = v8;
    }

    else
    {
      v4 = &v7 + 9;
    }

    if (v7 && (BYTE8(v7) & 1) != 0)
    {
      (*(*v7 + 40))();
    }

    v7 = *(v2 + 2);
    xmmword_1EE1BC5B0 = v6;
    if (v9)
    {
      if (v9)
      {
      }
    }
  }
}

double re::internal::defaultConstruct<re::Vector3<double>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  result = 0.0;
  *(a3 + 16) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::Vector3<double>>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  return result;
}

void *re::allocInfo_Vector4D(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BC330, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC330))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BCA48, "Vector4D");
    __cxa_guard_release(&qword_1EE1BC330);
  }

  return &unk_1EE1BCA48;
}

void re::initInfo_Vector4D(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0x478E8020E66;
  v12[1] = "Vector4D";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE1BC338, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BC338);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<double [4]>::get(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "array";
      *(v8 + 16) = &unk_1EE1BC5D8;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1BC440 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = (*(*v9 + 32))(v9, 8, 4);
      *v10 = 0x100000004;
      qword_1EE1BC448 = v10;
      __cxa_guard_release(&qword_1EE1BC338);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BC440;
  *(this + 9) = re::internal::defaultConstruct<re::Vector4<double>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Vector4<double>>;
  *(this + 13) = re::internal::defaultConstructV2<re::Vector4<double>>;
  *(this + 14) = re::internal::defaultDestructV2<re::Vector4<double>>;
  *(this + 15) = _ZZN2re8internal15snapshotEncoderINS_7Vector4IdEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 16) = _ZZN2re8internal15snapshotDecoderINS_7Vector4IdEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

void re::IntrospectionInfo<double [4]>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1BC3D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC3D0))
  {
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1BC5D8);
    __cxa_guard_release(&qword_1EE1BC3D0);
  }

  if ((byte_1EE1BC2C4 & 1) == 0)
  {
    byte_1EE1BC2C4 = 1;
    v2 = re::introspect_double(1, a2);
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1BC5D8, v2, 4);
    re::IntrospectionRegistry::add(&unk_1EE1BC5D8, v3);
    re::getPrettyTypeName(&unk_1EE1BC5D8, &v7);
    if (BYTE8(v7))
    {
      v4 = v8;
    }

    else
    {
      v4 = &v7 + 9;
    }

    if (v7 && (BYTE8(v7) & 1) != 0)
    {
      (*(*v7 + 40))();
    }

    v7 = *(v2 + 2);
    xmmword_1EE1BC5F8 = v6;
    if (v9)
    {
      if (v9)
      {
      }
    }
  }
}

double re::internal::defaultConstruct<re::Vector4<double>>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::Vector4<double>>(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void *re::allocInfo_QuaternionF(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BC340, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC340))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BCAD8, "QuaternionF");
    __cxa_guard_release(&qword_1EE1BC340);
  }

  return &unk_1EE1BCAD8;
}

void re::initInfo_QuaternionF(re *this, re::IntrospectionBase *a2)
{
  v12[0] = 0x1EE51E553020190;
  v12[1] = "QuaternionF";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE1BC348, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BC348);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<float [4]>::get(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "array";
      *(v8 + 16) = &unk_1EE1BC500;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1BC450 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = (*(*v9 + 32))(v9, 8, 4);
      *v10 = 0x100000004;
      qword_1EE1BC458 = v10;
      __cxa_guard_release(&qword_1EE1BC348);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BC450;
  *(this + 9) = re::internal::defaultConstruct<re::Quaternion<float>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Quaternion<float>>;
  *(this + 13) = re::internal::defaultConstructV2<re::Quaternion<float>>;
  *(this + 14) = re::internal::defaultDestructV2<re::Quaternion<float>>;
  *(this + 15) = _ZZN2re8internal15snapshotEncoderINS_10QuaternionIfEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 16) = _ZZN2re8internal15snapshotDecoderINS_10QuaternionIfEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v11 = v13;
}

double re::internal::defaultConstruct<re::Quaternion<float>>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = 0.0;
  *a3 = xmmword_1E30474D0;
  return result;
}

double re::internal::defaultConstructV2<re::Quaternion<float>>(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_1E30474D0;
  return result;
}

void *re::allocInfo_Matrix2x2F(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BC358, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC358))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BCB68, "Matrix2x2F");
    __cxa_guard_release(&qword_1EE1BC358);
  }

  return &unk_1EE1BCB68;
}

void re::initInfo_Matrix2x2F(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0xF13AC04E85D76;
  v11[1] = "Matrix2x2F";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE1BC360, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BC360);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::Vector2<float> [2]>::get(v6);
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "columns";
      *(v7 + 16) = &unk_1EE1BC620;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE1BC460 = v7;
      v8 = re::introspectionAllocator(v7);
      v9 = (*(*v8 + 32))(v8, 8, 4);
      *v9 = 0x100000004;
      qword_1EE1BC468 = v9;
      __cxa_guard_release(&qword_1EE1BC360);
    }
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BC460;
  *(this + 9) = re::internal::defaultConstruct<re::Matrix2x2<float>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Matrix2x2<float>>;
  *(this + 13) = re::internal::defaultConstructV2<re::Matrix2x2<float>>;
  *(this + 14) = re::internal::defaultDestructV2<re::Matrix2x2<float>>;
  *(this + 15) = _ZZN2re8internal15snapshotEncoderINS_9Matrix2x2IfEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 16) = _ZZN2re8internal15snapshotDecoderINS_9Matrix2x2IfEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

void re::IntrospectionInfo<re::Vector2<float> [2]>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1BC3D8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1BC3D8);
    if (a1)
    {
      re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1BC620);
      __cxa_guard_release(&qword_1EE1BC3D8);
    }
  }

  if ((byte_1EE1BC2C5 & 1) == 0)
  {
    byte_1EE1BC2C5 = 1;
    v1 = qword_1EE1BC2D8;
    if (!qword_1EE1BC2D8)
    {
      v1 = re::allocInfo_Vector2F(a1);
      qword_1EE1BC2D8 = v1;
      re::initInfo_Vector2F(v1, v2);
    }

    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1BC620, v1, 2);
    re::IntrospectionRegistry::add(v3, v4);
    re::getPrettyTypeName(&unk_1EE1BC620, &v8);
    if (BYTE8(v8))
    {
      v5 = v9;
    }

    else
    {
      v5 = &v8 + 9;
    }

    if (v8 && (BYTE8(v8) & 1) != 0)
    {
      (*(*v8 + 40))();
    }

    v8 = *(v1 + 2);
    xmmword_1EE1BC640 = v7;
    if (v10)
    {
      if (v10)
      {
      }
    }
  }
}

void *re::internal::defaultConstructV2<re::Matrix2x2<float>>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void *re::allocInfo_Matrix3x3F(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BC368, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC368))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BCBF8, "Matrix3x3F");
    __cxa_guard_release(&qword_1EE1BC368);
  }

  return &unk_1EE1BCBF8;
}

void re::initInfo_Matrix3x3F(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0xF13AC04E94672;
  v11[1] = "Matrix3x3F";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE1BC370, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BC370);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::Vector3<float> [3]>::get(v6);
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "columns";
      *(v7 + 16) = &unk_1EE1BC668;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE1BC470 = v7;
      v8 = re::introspectionAllocator(v7);
      v9 = (*(*v8 + 32))(v8, 8, 4);
      *v9 = 0x100000004;
      qword_1EE1BC478 = v9;
      __cxa_guard_release(&qword_1EE1BC370);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BC470;
  *(this + 9) = re::internal::defaultConstruct<re::Matrix3x3<float>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Matrix3x3<float>>;
  *(this + 13) = re::internal::defaultConstructV2<re::Matrix3x3<float>>;
  *(this + 14) = re::internal::defaultDestructV2<re::Matrix3x3<float>>;
  *(this + 15) = _ZZN2re8internal15snapshotEncoderINS_9Matrix3x3IfEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 16) = _ZZN2re8internal15snapshotDecoderINS_9Matrix3x3IfEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

void re::IntrospectionInfo<re::Vector3<float> [3]>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1BC3E0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1BC3E0);
    if (a1)
    {
      re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1BC668);
      __cxa_guard_release(&qword_1EE1BC3E0);
    }
  }

  if ((byte_1EE1BC2C6 & 1) == 0)
  {
    byte_1EE1BC2C6 = 1;
    v1 = qword_1EE1BC2F0;
    if (!qword_1EE1BC2F0)
    {
      v1 = re::allocInfo_Vector3F(a1);
      qword_1EE1BC2F0 = v1;
      re::initInfo_Vector3F(v1, v2);
    }

    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1BC668, v1, 3);
    re::IntrospectionRegistry::add(v3, v4);
    re::getPrettyTypeName(&unk_1EE1BC668, &v8);
    if (BYTE8(v8))
    {
      v5 = v9;
    }

    else
    {
      v5 = &v8 + 9;
    }

    if (v8 && (BYTE8(v8) & 1) != 0)
    {
      (*(*v8 + 40))();
    }

    v8 = *(v1 + 2);
    xmmword_1EE1BC688 = v7;
    if (v10)
    {
      if (v10)
      {
      }
    }
  }
}

double re::internal::defaultConstruct<re::Matrix3x3<float>>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = 0.0;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::Matrix3x3<float>>(_OWORD *a1)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void *re::allocInfo_Matrix4x4F(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BC378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC378))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BCC88, "Matrix4x4F");
    __cxa_guard_release(&qword_1EE1BC378);
  }

  return &unk_1EE1BCC88;
}

void re::initInfo_Matrix4x4F(re *this, re::IntrospectionBase *a2)
{
  v11[0] = 0xF13AC04EA2F6ELL;
  v11[1] = "Matrix4x4F";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE1BC380, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BC380);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::Vector4<float> [4]>::get(v6);
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "columns";
      *(v7 + 16) = &unk_1EE1BC6B0;
      *(v7 + 24) = 0;
      *(v7 + 32) = 1;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE1BC480 = v7;
      v8 = re::introspectionAllocator(v7);
      v9 = (*(*v8 + 32))(v8, 8, 4);
      *v9 = 0x100000004;
      qword_1EE1BC488 = v9;
      __cxa_guard_release(&qword_1EE1BC380);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BC480;
  *(this + 9) = re::internal::defaultConstruct<re::Matrix4x4<float>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Matrix4x4<float>>;
  *(this + 13) = re::internal::defaultConstructV2<re::Matrix4x4<float>>;
  *(this + 14) = re::internal::defaultDestructV2<re::Matrix4x4<float>>;
  *(this + 15) = _ZZN2re8internal15snapshotEncoderINS_9Matrix4x4IfEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 16) = _ZZN2re8internal15snapshotDecoderINS_9Matrix4x4IfEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

void re::IntrospectionInfo<re::Vector4<float> [4]>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1BC3E8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1BC3E8);
    if (a1)
    {
      re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1BC6B0);
      __cxa_guard_release(&qword_1EE1BC3E8);
    }
  }

  if ((byte_1EE1BC2C7 & 1) == 0)
  {
    byte_1EE1BC2C7 = 1;
    v1 = qword_1EE1BC308;
    if (!qword_1EE1BC308)
    {
      v1 = re::allocInfo_Vector4F(a1);
      qword_1EE1BC308 = v1;
      re::initInfo_Vector4F(v1, v2);
    }

    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1BC6B0, v1, 4);
    re::IntrospectionRegistry::add(v3, v4);
    re::getPrettyTypeName(&unk_1EE1BC6B0, &v8);
    if (BYTE8(v8))
    {
      v5 = v9;
    }

    else
    {
      v5 = &v8 + 9;
    }

    if (v8 && (BYTE8(v8) & 1) != 0)
    {
      (*(*v8 + 40))();
    }

    v8 = *(v1 + 2);
    xmmword_1EE1BC6D0 = v7;
    if (v10)
    {
      if (v10)
      {
      }
    }
  }
}

double re::internal::defaultConstruct<re::Matrix4x4<float>>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = 0.0;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::Matrix4x4<float>>(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void *re::allocInfo_PoseF(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BC388, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC388))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BCD18, "PoseF");
    __cxa_guard_release(&qword_1EE1BC388);
  }

  return &unk_1EE1BCD18;
}

void re::initInfo_PoseF(re *this, re::IntrospectionBase *a2)
{
  v17[0] = 154604394;
  v17[1] = "PoseF";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(this + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE1BC390, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BC390);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1BC2F0;
      if (!qword_1EE1BC2F0)
      {
        v8 = re::allocInfo_Vector3F(v6);
        qword_1EE1BC2F0 = v8;
        re::initInfo_Vector3F(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "position";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 1;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1BC490 = v10;
      v11 = re::introspectionAllocator(v10);
      v12 = v11;
      v13 = qword_1EE1BC350;
      if (!qword_1EE1BC350)
      {
        v13 = re::allocInfo_QuaternionF(v11);
        qword_1EE1BC350 = v13;
        re::initInfo_QuaternionF(v13, v14);
      }

      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "orientation";
      *(v15 + 16) = v13;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x1000000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1BC498 = v15;
      __cxa_guard_release(&qword_1EE1BC390);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BC490;
  *(this + 9) = re::internal::defaultConstruct<re::Pose<float>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::Pose<float>>;
  *(this + 13) = re::internal::defaultConstructV2<re::Pose<float>>;
  *(this + 14) = re::internal::defaultDestructV2<re::Pose<float>>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v16 = v18;
}

void re::internal::defaultConstruct<re::Pose<float>>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 0x3F80000000000000;
}

void *re::internal::defaultConstructV2<re::Pose<float>>(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0x3F80000000000000;
  return result;
}

void *re::allocInfo_SRT(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BC398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC398))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BCDA8, "SRT");
    __cxa_guard_release(&qword_1EE1BC398);
  }

  return &unk_1EE1BCDA8;
}

void re::initInfo_SRT(re *this, re::IntrospectionBase *a2)
{
  v22[0] = 164778;
  v22[1] = "SRT";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE1BC3A0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BC3A0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = v6;
      v8 = qword_1EE1BC2F0;
      if (!qword_1EE1BC2F0)
      {
        v8 = re::allocInfo_Vector3F(v6);
        qword_1EE1BC2F0 = v8;
        re::initInfo_Vector3F(v8, v9);
      }

      v10 = (*(*v7 + 32))(v7, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "scale";
      *(v10 + 16) = v8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 1;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1BC4A0 = v10;
      v11 = re::introspectionAllocator(v10);
      v12 = v11;
      v13 = qword_1EE1BC350;
      if (!qword_1EE1BC350)
      {
        v13 = re::allocInfo_QuaternionF(v11);
        qword_1EE1BC350 = v13;
        re::initInfo_QuaternionF(v13, v14);
      }

      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "rotation";
      *(v15 + 16) = v13;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x1000000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1BC4A8 = v15;
      v16 = re::introspectionAllocator(v15);
      v17 = v16;
      v18 = qword_1EE1BC2F0;
      if (!qword_1EE1BC2F0)
      {
        v18 = re::allocInfo_Vector3F(v16);
        qword_1EE1BC2F0 = v18;
        re::initInfo_Vector3F(v18, v19);
      }

      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "translation";
      *(v20 + 16) = v18;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x2000000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1BC4B0 = v20;
      __cxa_guard_release(&qword_1EE1BC3A0);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1BC4A0;
  *(this + 9) = re::internal::defaultConstruct<re::GenericSRT<float>>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::GenericSRT<float>>;
  *(this + 13) = re::internal::defaultConstructV2<re::GenericSRT<float>>;
  *(this + 14) = re::internal::defaultDestructV2<re::GenericSRT<float>>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v21 = v23;
}

void re::internal::defaultConstruct<re::GenericSRT<float>>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0x3F8000003F800000;
  a3[1] = 1065353216;
  a3[2] = 0;
  a3[3] = 0x3F80000000000000;
  a3[4] = 0;
  a3[5] = 0;
}

void *re::internal::defaultConstructV2<re::GenericSRT<float>>(void *result)
{
  *result = 0x3F8000003F800000;
  result[1] = 1065353216;
  result[2] = 0;
  result[3] = 0x3F80000000000000;
  result[4] = 0;
  result[5] = 0;
  return result;
}

uint64_t *re::introspect_RERotationOrder(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  if ((atomic_load_explicit(&qword_1EE1BC3A8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1BC3B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC3B0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1BC4B8, "RERotationOrder", 1, 1, 1, 1);
      qword_1EE1BC4B8 = &unk_1F5D0C658;
      qword_1EE1BC4F8 = &re::introspect_RERotationOrder(BOOL)::enumTable;
      dword_1EE1BC4C8 = 9;
      __cxa_guard_release(&qword_1EE1BC3B0);
    }

    if (v2)
    {
      if (_MergedGlobals_489)
      {
        return &qword_1EE1BC4B8;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v70);
      v3 = _MergedGlobals_489;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v70);
      if (v3)
      {
        return &qword_1EE1BC4B8;
      }

      v5 = re::introspectionSharedMutex(v4);
      std::__shared_mutex_base::lock(v5);
      if (_MergedGlobals_489)
      {
        goto LABEL_46;
      }
    }

    _MergedGlobals_489 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1BC4B8, a2);
    v67 = 0x9091FC13CDF02DFALL;
    v68 = "RERotationOrder";
    v71 = 0x31CD534126;
    v72 = "uint8_t";
    v9 = v70[0];
    v10 = v70[1];
    if (v71)
    {
      if (v71)
      {
      }
    }

    if (v9)
    {
      break;
    }

    re::internal::assertLog(5, v8, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v68);
    _os_crash();
    __break(1u);
LABEL_49:
    v34 = __cxa_guard_acquire(&qword_1EE1BC3A8);
    if (v34)
    {
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 0;
      *(v36 + 2) = "XYZ";
      qword_1EE1BC6F8 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 1) = 1;
      *(v38 + 2) = "YZX";
      qword_1EE1BC700 = v38;
      v39 = re::introspectionAllocator(v38);
      v40 = (*(*v39 + 32))(v39, 24, 8);
      *v40 = 1;
      *(v40 + 1) = 2;
      *(v40 + 2) = "ZXY";
      qword_1EE1BC708 = v40;
      v41 = re::introspectionAllocator(v40);
      v42 = (*(*v41 + 32))(v41, 24, 8);
      *v42 = 1;
      *(v42 + 1) = 3;
      *(v42 + 2) = "XZY";
      qword_1EE1BC710 = v42;
      v43 = re::introspectionAllocator(v42);
      v44 = (*(*v43 + 32))(v43, 24, 8);
      *v44 = 1;
      *(v44 + 1) = 4;
      *(v44 + 2) = "YXZ";
      qword_1EE1BC718 = v44;
      v45 = re::introspectionAllocator(v44);
      v46 = (*(*v45 + 32))(v45, 24, 8);
      *v46 = 1;
      *(v46 + 1) = 5;
      *(v46 + 2) = "ZYX";
      qword_1EE1BC720 = v46;
      v47 = re::introspectionAllocator(v46);
      v48 = (*(*v47 + 32))(v47, 24, 8);
      *v48 = 1;
      *(v48 + 1) = 6;
      *(v48 + 2) = "Count";
      qword_1EE1BC728 = v48;
      v49 = re::introspectionAllocator(v48);
      v50 = (*(*v49 + 32))(v49, 24, 8);
      *v50 = 1;
      *(v50 + 1) = 7;
      *(v50 + 2) = "Invalid";
      qword_1EE1BC730 = v50;
      v51 = re::introspectionAllocator(v50);
      v52 = (*(*v51 + 32))(v51, 24, 8);
      *v52 = 2;
      *(v52 + 1) = 0;
      *(v52 + 2) = "RERotationOrderXYZ";
      qword_1EE1BC738 = v52;
      v53 = re::introspectionAllocator(v52);
      v54 = (*(*v53 + 32))(v53, 24, 8);
      *v54 = 2;
      *(v54 + 1) = 1;
      *(v54 + 2) = "RERotationOrderYZX";
      qword_1EE1BC740 = v54;
      v55 = re::introspectionAllocator(v54);
      v56 = (*(*v55 + 32))(v55, 24, 8);
      *v56 = 2;
      *(v56 + 1) = 2;
      *(v56 + 2) = "RERotationOrderZXY";
      qword_1EE1BC748 = v56;
      v57 = re::introspectionAllocator(v56);
      v58 = (*(*v57 + 32))(v57, 24, 8);
      *v58 = 2;
      *(v58 + 1) = 3;
      *(v58 + 2) = "RERotationOrderXZY";
      qword_1EE1BC750 = v58;
      v59 = re::introspectionAllocator(v58);
      v60 = (*(*v59 + 32))(v59, 24, 8);
      *v60 = 2;
      *(v60 + 1) = 4;
      *(v60 + 2) = "RERotationOrderYXZ";
      qword_1EE1BC758 = v60;
      v61 = re::introspectionAllocator(v60);
      v62 = (*(*v61 + 32))(v61, 24, 8);
      *v62 = 2;
      *(v62 + 1) = 5;
      *(v62 + 2) = "RERotationOrderZYX";
      qword_1EE1BC760 = v62;
      v63 = re::introspectionAllocator(v62);
      v64 = (*(*v63 + 32))(v63, 24, 8);
      *v64 = 2;
      *(v64 + 1) = 6;
      *(v64 + 2) = "RERotationOrderCount";
      qword_1EE1BC768 = v64;
      v65 = re::introspectionAllocator(v64);
      v66 = (*(*v65 + 32))(v65, 24, 8);
      *v66 = 2;
      *(v66 + 8) = 7;
      *(v66 + 16) = "RERotationOrderInvalid";
      qword_1EE1BC770 = v66;
      __cxa_guard_release(&qword_1EE1BC3A8);
    }
  }

  v11 = qword_1EE1BC4F8;
  v71 = v9;
  v72 = v10;
  re::TypeBuilder::beginEnumType(v70, &v67, 1, 1, &v71);
  v12 = *v11;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(*(v11 + 1) + 8 * i);
      if (*v14 == 1)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            v17 = v15[1];
            if (v17)
            {
              v18 = (v15 + 2);
              do
              {
                v16 = 31 * v16 + v17;
                v19 = *v18++;
                v17 = v19;
              }

              while (v19);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v20 = *(v14 + 8);
        *&v69.var0 = 2 * v16;
        v69.var1 = v15;
        re::TypeBuilder::addEnumConstant(v70, v20, &v69);
        if (*&v69.var0)
        {
          if (*&v69.var0)
          {
          }
        }

        v12 = *v11;
      }
    }

    if (v12)
    {
      for (j = 0; j < v12; ++j)
      {
        v23 = *(*(v11 + 1) + 8 * j);
        if (*v23 == 2)
        {
          v24 = *(v23 + 16);
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

          v29 = *(v23 + 8);
          *&v69.var0 = 2 * v25;
          v69.var1 = v24;
          re::TypeBuilder::addEnumConstantRenaming(v70, v29, &v69);
          if (*&v69.var0)
          {
            if (*&v69.var0)
            {
            }
          }

          v12 = *v11;
        }
      }
    }
  }

  re::TypeBuilder::~TypeBuilder(v70, v31);
  xmmword_1EE1BC4D8 = v69;
  if (v67)
  {
    if (v67)
    {
    }
  }

  if ((v2 & 1) == 0)
  {
LABEL_46:
    v32 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v32);
  }

  return &qword_1EE1BC4B8;
}

unsigned int *re::internal::encode<float,2>(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4)
  {
    v5 = v4;
    __src = 8;
    re::snapshot::BufferEncoder::writeRaw<true>(v4, &__src, 8uLL);
    return re::snapshot::BufferEncoder::writeRaw<true>(v5, a2, 8uLL);
  }

  else
  {
    v7 = (*(*a1 + 16))(a1);
    if (v7)
    {

      return re::internal::opack::encode<float,2>(v7, a2);
    }

    else
    {
      (*(*a1 + 88))(a1, 2);
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = v9;
        (*(*a1 + 248))(a1, *(a2 + v8));
        v9 = 0;
        v8 = 1;
      }

      while ((v10 & 1) != 0);
      v11 = *(*a1 + 96);

      return v11(a1, 2);
    }
  }
}

uint64_t re::internal::decode<float,2>(uint64_t a1, float *a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4)
  {

    return re::snapshot::operator>><re::snapshot::DecoderRaw,float,2ul>(v4, a2);
  }

  else
  {
    v6 = (*(*a1 + 16))(a1);
    if (v6)
    {

      return re::internal::opack::decode<float,2>(v6, a2);
    }

    else
    {
      v8 = 0;
      result = (*(*a1 + 104))(a1, &v8);
      if (result)
      {
        if (v8 == 2)
        {
          (*(*a1 + 280))(a1, a2);
          (*(*a1 + 280))(a1, a2 + 1);
          v8 -= 2;
        }

        v7 = 0;
        result = (*(*a1 + 112))(a1, &v8);
        if ((result & 1) == 0)
        {
          do
          {
            (*(*a1 + 280))(a1, &v7);
            result = (*(*a1 + 112))(a1, &v8);
          }

          while (!result);
        }
      }
    }
  }

  return result;
}

unsigned int *re::internal::opack::encode<float,2>(uint64_t a1, float *a2)
{
  re::snapshot::EncoderOPACK::beginObject(a1);
  v4 = *(a1 + 16);
  if (v4 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 1);
  }

  else
  {
    v5 = *(a1 + 8);
    *(a1 + 16) = v4 + 1;
    *(v5 + v4) = 9;
  }

  if ((*(a1 + 72) & 4) != 0)
  {
    re::snapshot::EncoderOPACK::beginData(a1, 8uLL, 8uLL);
    re::snapshot::BufferEncoder::writeRaw<true>(a1, a2, 8uLL);
  }

  else
  {
    re::snapshot::EncoderOPACK::beginArray(a1, 2uLL);
    re::snapshot::EncoderOPACK::operator<<(a1, *a2);
    re::snapshot::EncoderOPACK::operator<<(a1, a2[1]);
  }

  return re::snapshot::EncoderOPACK::endObject(a1);
}

uint64_t *re::internal::opack::decode<float,2>(re::snapshot::DecoderOPACK *a1, float *a2)
{
  result = re::snapshot::DecoderOPACK::beginObject(a1, 0);
  if (result)
  {
    if (re::snapshot::DecoderOPACK::beginField<1>(a1))
    {
      v10 = 0;
      if (re::snapshot::DecoderOPACK::beginData(a1, &v10, 1))
      {
        if (v10 == 8)
        {
          v5 = *(a1 + 3);
          if (*(a1 + 4) - v5 <= 7uLL)
          {
            re::snapshot::BufferDecoder::error(a1, "overrun: attempted to read %zu bytes, only %zu remaining");
          }

          else
          {
            *a2 = *v5;
            *(a1 + 3) += 8;
          }
        }

        else
        {
          re::snapshot::BufferDecoder::error(a1, "C Array size mismatch: expected %zu, got %zu");
        }
      }

      else if (re::snapshot::DecoderOPACK::beginArray(a1, &v10))
      {
        if (v10 == 2)
        {
          if (re::snapshot::DecoderOPACK::endArray(a1, &v10))
          {
            goto LABEL_22;
          }

          v6 = 0;
          do
          {
            while (v6 > 1)
            {
              re::snapshot::BufferDecoder::error(a1, "Bad data, too many elements: expected %zu, got %d", 2uLL, 3);
              v9 = re::snapshot::DecoderOPACK::endArray(a1, &v10);
              v6 = 2;
              if (v9)
              {
                goto LABEL_23;
              }
            }

            v7 = v6 + 1;
            re::snapshot::DecoderOPACK::operator>>(a1, &a2[v6]);
            v8 = re::snapshot::DecoderOPACK::endArray(a1, &v10);
            v6 = v7;
          }

          while (!v8);
          if (v7 != 2)
          {
LABEL_22:
            re::snapshot::BufferDecoder::error(a1, "size mismatch: expected %zu, got %d");
          }
        }

        else
        {
          re::snapshot::BufferDecoder::error(a1, "unexpected C Array size: expected %zu, got %zu");
        }
      }

LABEL_23:
      re::snapshot::DecoderOPACK::endField(a1);
    }

    return re::snapshot::DecoderOPACK::endObject(a1, 0);
  }

  return result;
}

unsigned int *re::internal::encode<float,3>(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4)
  {
    v5 = v4;
    __src = 12;
    re::snapshot::BufferEncoder::writeRaw<true>(v4, &__src, 8uLL);
    return re::snapshot::BufferEncoder::writeRaw<true>(v5, a2, 0xCuLL);
  }

  else
  {
    v7 = (*(*a1 + 16))(a1);
    if (v7)
    {

      return re::internal::opack::encode<float,3>(v7, a2);
    }

    else
    {

      return re::internal::encodeArray<re::snapshot::Encoder,float,3>(a1, a2);
    }
  }
}

uint64_t *re::internal::decode<float,3>(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4)
  {

    return re::snapshot::operator>><re::snapshot::DecoderRaw,float,3ul>(v4, a2);
  }

  else
  {
    v6 = (*(*a1 + 16))(a1);
    if (v6)
    {

      return re::internal::opack::decode<float,3>(v6, a2);
    }

    else
    {

      return re::internal::decodeArray<re::snapshot::Decoder,float,3>(a1, a2);
    }
  }
}

unsigned int *re::internal::opack::encode<float,3>(uint64_t a1, char *a2)
{
  re::snapshot::EncoderOPACK::beginObject(a1);
  v4 = *(a1 + 16);
  if (v4 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 1);
  }

  else
  {
    v5 = *(a1 + 8);
    *(a1 + 16) = v4 + 1;
    *(v5 + v4) = 9;
  }

  if ((*(a1 + 72) & 4) != 0)
  {
    re::snapshot::EncoderOPACK::beginData(a1, 0xCuLL, 0xCuLL);
    re::snapshot::BufferEncoder::writeRaw<true>(a1, a2, 0xCuLL);
  }

  else
  {
    re::snapshot::EncoderOPACK::beginArray(a1, 3uLL);
    for (i = 0; i != 12; i += 4)
    {
      re::snapshot::EncoderOPACK::operator<<(a1, *&a2[i]);
    }
  }

  return re::snapshot::EncoderOPACK::endObject(a1);
}

uint64_t *re::internal::opack::decode<float,3>(re::snapshot::DecoderOPACK *a1, uint64_t a2)
{
  result = re::snapshot::DecoderOPACK::beginObject(a1, 0);
  if (result)
  {
    re::snapshot::DecoderOPACK::field<1,float [3]>(a1, a2);

    return re::snapshot::DecoderOPACK::endObject(a1, 0);
  }

  return result;
}

unsigned int *re::internal::encode<float,4>(uint64_t a1, char *a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4)
  {
    v5 = v4;
    __src = 16;
    re::snapshot::BufferEncoder::writeRaw<true>(v4, &__src, 8uLL);
    return re::snapshot::BufferEncoder::writeRaw<true>(v5, a2, 0x10uLL);
  }

  else
  {
    v7 = (*(*a1 + 16))(a1);
    if (v7)
    {

      return re::internal::opack::encode<float,4>(v7, a2);
    }

    else
    {
      (*(*a1 + 88))(a1, 4);
      for (i = 0; i != 16; i += 4)
      {
        (*(*a1 + 248))(a1, *&a2[i]);
      }

      v9 = *(*a1 + 96);

      return v9(a1, 4);
    }
  }
}

uint64_t re::internal::decode<float,4>(uint64_t a1, _OWORD *a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4)
  {

    return re::snapshot::operator>><re::snapshot::DecoderRaw,float,4ul>(v4, a2);
  }

  else
  {
    v6 = (*(*a1 + 16))(a1);
    if (v6)
    {

      return re::internal::opack::decode<float,4>(v6, a2);
    }

    else
    {
      v9 = 0;
      result = (*(*a1 + 104))(a1, &v9);
      if (result)
      {
        if (v9 == 4)
        {
          v7 = 4;
          do
          {
            (*(*a1 + 280))(a1, a2);
            a2 = (a2 + 4);
            --v7;
          }

          while (v7);
          v9 -= 4;
        }

        v8 = 0;
        result = (*(*a1 + 112))(a1, &v9);
        if ((result & 1) == 0)
        {
          do
          {
            (*(*a1 + 280))(a1, &v8);
            result = (*(*a1 + 112))(a1, &v9);
          }

          while (!result);
        }
      }
    }
  }

  return result;
}

unsigned int *re::internal::opack::encode<float,4>(uint64_t a1, char *a2)
{
  re::snapshot::EncoderOPACK::beginObject(a1);
  v4 = *(a1 + 16);
  if (v4 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 1);
  }

  else
  {
    v5 = *(a1 + 8);
    *(a1 + 16) = v4 + 1;
    *(v5 + v4) = 9;
  }

  if ((*(a1 + 72) & 4) != 0)
  {
    re::snapshot::EncoderOPACK::beginData(a1, 0x10uLL, 0x10uLL);
    re::snapshot::BufferEncoder::writeRaw<true>(a1, a2, 0x10uLL);
  }

  else
  {
    re::snapshot::EncoderOPACK::beginArray(a1, 4uLL);
    for (i = 0; i != 16; i += 4)
    {
      re::snapshot::EncoderOPACK::operator<<(a1, *&a2[i]);
    }
  }

  return re::snapshot::EncoderOPACK::endObject(a1);
}

uint64_t *re::internal::opack::decode<float,4>(re::snapshot::DecoderOPACK *a1, float *a2)
{
  result = re::snapshot::DecoderOPACK::beginObject(a1, 0);
  if (result)
  {
    if (re::snapshot::DecoderOPACK::beginField<1>(a1))
    {
      v7 = 0;
      if (re::snapshot::DecoderOPACK::beginData(a1, &v7, 1))
      {
        if (v7 == 16)
        {
          v5 = *(a1 + 3);
          if (*(a1 + 4) - v5 <= 0xFuLL)
          {
            re::snapshot::BufferDecoder::error(a1, "overrun: attempted to read %zu bytes, only %zu remaining");
          }

          else
          {
            *a2 = *v5;
            *(a1 + 3) += 16;
          }
        }

        else
        {
          re::snapshot::BufferDecoder::error(a1, "C Array size mismatch: expected %zu, got %zu");
        }
      }

      else if (re::snapshot::DecoderOPACK::beginArray(a1, &v7))
      {
        if (v7 == 4)
        {
          v6 = 0;
          if (re::snapshot::DecoderOPACK::endArray(a1, &v7))
          {
            goto LABEL_20;
          }

          do
          {
            if (v6 > 3)
            {
              re::snapshot::BufferDecoder::error(a1, "Bad data, too many elements: expected %zu, got %d", 4uLL, v6 + 1);
            }

            else
            {
              re::snapshot::DecoderOPACK::operator>>(a1, &a2[v6++]);
            }
          }

          while (!re::snapshot::DecoderOPACK::endArray(a1, &v7));
          if (v6 != 4)
          {
LABEL_20:
            re::snapshot::BufferDecoder::error(a1, "size mismatch: expected %zu, got %d");
          }
        }

        else
        {
          re::snapshot::BufferDecoder::error(a1, "unexpected C Array size: expected %zu, got %zu");
        }
      }

      re::snapshot::DecoderOPACK::endField(a1);
    }

    return re::snapshot::DecoderOPACK::endObject(a1, 0);
  }

  return result;
}

unsigned int *re::internal::encode<re::Vector4<float>,4>(uint64_t a1, char *a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4)
  {
    v5 = v4;
    __src = 64;
    re::snapshot::BufferEncoder::writeRaw<true>(v4, &__src, 8uLL);
    return re::snapshot::BufferEncoder::writeRaw<true>(v5, a2, 0x40uLL);
  }

  else
  {
    v7 = (*(*a1 + 16))(a1);
    if (v7)
    {

      return re::internal::opack::encode<re::Vector4<float>,4>(v7, a2);
    }

    else
    {
      v8 = 4;
      (*(*a1 + 88))(a1, 4);
      do
      {
        re::internal::encode<float,4>(a1, a2);
        a2 += 16;
        --v8;
      }

      while (v8);
      v9 = *(*a1 + 96);

      return v9(a1, 4);
    }
  }
}

uint64_t re::internal::decode<re::Vector4<float>,4>(uint64_t a1, _OWORD *a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4)
  {

    return re::snapshot::operator>><re::snapshot::DecoderRaw,re::Vector4<float>,4ul>(v4, a2);
  }

  else
  {
    v6 = (*(*a1 + 16))(a1);
    if (v6)
    {

      return re::internal::opack::decode<re::Vector4<float>,4>(v6, a2);
    }

    else
    {
      v9 = 0;
      result = (*(*a1 + 104))(a1, &v9);
      if (result)
      {
        if (v9 == 4)
        {
          v7 = 4;
          do
          {
            re::internal::decode<float,4>(a1, a2++);
            --v7;
          }

          while (v7);
          v9 -= 4;
        }

        v8 = 0uLL;
        result = (*(*a1 + 112))(a1, &v9);
        if ((result & 1) == 0)
        {
          do
          {
            re::internal::decode<float,4>(a1, &v8);
            result = (*(*a1 + 112))(a1, &v9);
          }

          while (!result);
        }
      }
    }
  }

  return result;
}

unsigned int *re::internal::opack::encode<re::Vector4<float>,4>(uint64_t a1, char *a2)
{
  re::snapshot::EncoderOPACK::beginObject(a1);
  v4 = *(a1 + 16);
  if (v4 >= *(a1 + 20))
  {
    re::snapshot::EncoderOPACK::writeInteger(a1, 1);
  }

  else
  {
    v5 = *(a1 + 8);
    *(a1 + 16) = v4 + 1;
    *(v5 + v4) = 9;
  }

  v6 = 4;
  re::snapshot::EncoderOPACK::beginArray(a1, 4uLL);
  do
  {
    re::internal::opack::encode<float,4>(a1, a2);
    a2 += 16;
    --v6;
  }

  while (v6);

  return re::snapshot::EncoderOPACK::endObject(a1);
}

uint64_t *re::internal::opack::decode<re::Vector4<float>,4>(re::snapshot::DecoderOPACK *a1, _OWORD *a2)
{
  result = re::snapshot::DecoderOPACK::beginObject(a1, 0);
  if (result)
  {
    re::snapshot::DecoderOPACK::field<1,re::Vector4<float> [4]>(a1, a2);

    return re::snapshot::DecoderOPACK::endObject(a1, 0);
  }

  return result;
}

unsigned int *_ZZN2re8internal15snapshotEncoderINS_7Vector2IdEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_(uint64_t a1, double *a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4)
  {
    v5 = v4;
    __src = 16;
    re::snapshot::BufferEncoder::writeRaw<true>(v4, &__src, 8uLL);
    return re::snapshot::BufferEncoder::writeRaw<true>(v5, a2, 0x10uLL);
  }

  else
  {
    v7 = (*(*a1 + 16))(a1);
    if (v7)
    {
      v8 = v7;
      re::snapshot::EncoderOPACK::beginObject(v7);
      v9 = v8[4];
      if (v9 >= v8[5])
      {
        re::snapshot::EncoderOPACK::writeInteger(v8, 1);
      }

      else
      {
        v10 = *(v8 + 1);
        v8[4] = v9 + 1;
        *(v10 + v9) = 9;
      }

      if ((v8[18] & 4) != 0)
      {
        re::snapshot::EncoderOPACK::beginData(v8, 0x10uLL, 0x10uLL);
        re::snapshot::BufferEncoder::writeRaw<true>(v8, a2, 0x10uLL);
      }

      else
      {
        re::snapshot::EncoderOPACK::beginArray(v8, 2uLL);
        re::snapshot::EncoderOPACK::operator<<(v8, *a2);
        re::snapshot::EncoderOPACK::operator<<(v8, a2[1]);
      }

      return re::snapshot::EncoderOPACK::endObject(v8);
    }

    else
    {
      (*(*a1 + 88))(a1, 2);
      v11 = 0;
      v12 = 1;
      do
      {
        v13 = v12;
        (*(*a1 + 256))(a1, a2[v11]);
        v12 = 0;
        v11 = 1;
      }

      while ((v13 & 1) != 0);
      v14 = *(*a1 + 96);

      return v14(a1, 2);
    }
  }
}

uint64_t _ZZN2re8internal15snapshotDecoderINS_7Vector2IdEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_(uint64_t a1, _OWORD *a2)
{
  result = (*(*a1 + 24))(a1);
  if (result)
  {
    v5 = result;
    v21 = 0;
    v6 = *(result + 24);
    v7 = *(result + 32);
    if ((v7 - v6) >= 8)
    {
      v9 = *v6;
      v8 = v6 + 1;
      *(result + 24) = v8;
      if (v9 != 16)
      {
        return re::snapshot::BufferDecoder::error(result, "C Array size mismatch: expected %zu, got %zu");
      }

      if ((v7 - v8) <= 0xF)
      {
        return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining");
      }

      *a2 = *v8;
      *(result + 24) += 16;
      return result;
    }

    re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v7 - v6);
    result = re::snapshot::DecoderRaw::beginArray(v5, &v21);
    if (!result)
    {
      return result;
    }

    if (v21 != 2)
    {
      return re::snapshot::BufferDecoder::error(v5, "unexpected C Array size: expected %zu, got %zu");
    }

    v13 = 0;
    for (i = -1; ; ++i)
    {
      if (v13 > 1)
      {
        result = re::snapshot::BufferDecoder::error(v5, "Bad data, too many elements: expected %zu, got %d", 2uLL, 3);
        v15 = 2;
        if (!i)
        {
          return result;
        }
      }

      else
      {
        v15 = v13 + 1;
        result = re::snapshot::DecoderRaw::operator>>(v5, a2 + v13);
        if (!i)
        {
          if (v15 != 2)
          {
            return re::snapshot::BufferDecoder::error(v5, "size mismatch: expected %zu, got %d");
          }

          return result;
        }
      }

      v13 = v15;
    }
  }

  v10 = (*(*a1 + 16))(a1);
  if (v10)
  {
    v11 = v10;
    result = re::snapshot::DecoderOPACK::beginObject(v10, 0);
    if (!result)
    {
      return result;
    }

    if (re::snapshot::DecoderOPACK::beginField<1>(v11))
    {
      v21 = 0;
      if (re::snapshot::DecoderOPACK::beginData(v11, &v21, 1))
      {
        if (v21 == 16)
        {
          v12 = *(v11 + 24);
          if (*(v11 + 32) - v12 <= 0xFuLL)
          {
            re::snapshot::BufferDecoder::error(v11, "overrun: attempted to read %zu bytes, only %zu remaining");
          }

          else
          {
            *a2 = *v12;
            *(v11 + 24) += 16;
          }
        }

        else
        {
          re::snapshot::BufferDecoder::error(v11, "C Array size mismatch: expected %zu, got %zu");
        }
      }

      else if (re::snapshot::DecoderOPACK::beginArray(v11, &v21))
      {
        if (v21 == 2)
        {
          if (re::snapshot::DecoderOPACK::endArray(v11, &v21))
          {
            goto LABEL_47;
          }

          v16 = 0;
          do
          {
            while (v16 > 1)
            {
              re::snapshot::BufferDecoder::error(v11, "Bad data, too many elements: expected %zu, got %d", 2uLL, 3);
              v19 = re::snapshot::DecoderOPACK::endArray(v11, &v21);
              v16 = 2;
              if (v19)
              {
                goto LABEL_48;
              }
            }

            v17 = v16 + 1;
            re::snapshot::DecoderOPACK::operator>>(v11, a2 + v16);
            v18 = re::snapshot::DecoderOPACK::endArray(v11, &v21);
            v16 = v17;
          }

          while (!v18);
          if (v17 != 2)
          {
LABEL_47:
            re::snapshot::BufferDecoder::error(v11, "size mismatch: expected %zu, got %d");
          }
        }

        else
        {
          re::snapshot::BufferDecoder::error(v11, "unexpected C Array size: expected %zu, got %zu");
        }
      }

LABEL_48:
      re::snapshot::DecoderOPACK::endField(v11);
    }

    return re::snapshot::DecoderOPACK::endObject(v11, 0);
  }

  else
  {
    v21 = 0;
    result = (*(*a1 + 104))(a1, &v21);
    if (result)
    {
      if (v21 == 2)
      {
        (*(*a1 + 288))(a1, a2);
        (*(*a1 + 288))(a1, a2 + 8);
        v21 -= 2;
      }

      v20 = 0;
      result = (*(*a1 + 112))(a1, &v21);
      if ((result & 1) == 0)
      {
        do
        {
          (*(*a1 + 288))(a1, &v20);
          result = (*(*a1 + 112))(a1, &v21);
        }

        while (!result);
      }
    }
  }

  return result;
}

unsigned int *_ZZN2re8internal15snapshotEncoderINS_7Vector3IdEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_(uint64_t a1, char *a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4)
  {
    v5 = v4;
    __src = 24;
    re::snapshot::BufferEncoder::writeRaw<true>(v4, &__src, 8uLL);
    return re::snapshot::BufferEncoder::writeRaw<true>(v5, a2, 0x18uLL);
  }

  else
  {
    v7 = (*(*a1 + 16))(a1);
    v8 = v7;
    if (v7)
    {
      re::snapshot::EncoderOPACK::beginObject(v7);
      v9 = v8[4];
      if (v9 >= v8[5])
      {
        re::snapshot::EncoderOPACK::writeInteger(v8, 1);
      }

      else
      {
        v10 = *(v8 + 1);
        v8[4] = v9 + 1;
        *(v10 + v9) = 9;
      }

      if ((v8[18] & 4) != 0)
      {
        re::snapshot::EncoderOPACK::beginData(v8, 0x18uLL, 0x18uLL);
        re::snapshot::BufferEncoder::writeRaw<true>(v8, a2, 0x18uLL);
      }

      else
      {
        re::snapshot::EncoderOPACK::beginArray(v8, 3uLL);
        for (i = 0; i != 24; i += 8)
        {
          re::snapshot::EncoderOPACK::operator<<(v8, *&a2[i]);
        }
      }

      return re::snapshot::EncoderOPACK::endObject(v8);
    }

    else
    {
      (*(*a1 + 88))(a1, 3);
      do
      {
        (*(*a1 + 256))(a1, *(v8 + a2));
        v8 += 2;
      }

      while (v8 != 24);
      v12 = *(*a1 + 96);

      return v12(a1, 3);
    }
  }
}

uint64_t _ZZN2re8internal15snapshotDecoderINS_7Vector3IdEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 24))(a1);
  if (result)
  {
    v5 = result;
    v21 = 0;
    v6 = *(result + 24);
    v7 = *(result + 32);
    if ((v7 - v6) < 8)
    {
      re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v7 - v6);
      result = re::snapshot::DecoderRaw::beginArray(v5, &v21);
      if (result)
      {
        if (v21 == 3)
        {
          v15 = 0;
          v16 = -3;
          do
          {
            if (v15 > 2)
            {
              result = re::snapshot::BufferDecoder::error(v5, "Bad data, too many elements: expected %zu, got %d", 3uLL, v15 + 1);
            }

            else
            {
              result = re::snapshot::DecoderRaw::operator>>(v5, (a2 + 8 * v15++));
            }
          }

          while (!__CFADD__(v16++, 1));
          if (v15 != 3)
          {
            return re::snapshot::BufferDecoder::error(v5, "size mismatch: expected %zu, got %d");
          }
        }

        else
        {
          return re::snapshot::BufferDecoder::error(v5, "unexpected C Array size: expected %zu, got %zu");
        }
      }
    }

    else
    {
      v9 = *v6;
      v8 = v6 + 1;
      *(result + 24) = v8;
      if (v9 == 24)
      {
        if ((v7 - v8) <= 0x17)
        {
          return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining");
        }

        else
        {
          v10 = *v8;
          *(a2 + 16) = v8[2];
          *a2 = v10;
          *(result + 24) += 24;
        }
      }

      else
      {
        return re::snapshot::BufferDecoder::error(result, "C Array size mismatch: expected %zu, got %zu");
      }
    }
  }

  else
  {
    v11 = (*(*a1 + 16))(a1);
    if (v11)
    {
      v12 = v11;
      result = re::snapshot::DecoderOPACK::beginObject(v11, 0);
      if (result)
      {
        if (re::snapshot::DecoderOPACK::beginField<1>(v12))
        {
          v21 = 0;
          if (re::snapshot::DecoderOPACK::beginData(v12, &v21, 1))
          {
            if (v21 == 24)
            {
              v13 = *(v12 + 24);
              if (*(v12 + 32) - v13 <= 0x17uLL)
              {
                re::snapshot::BufferDecoder::error(v12, "overrun: attempted to read %zu bytes, only %zu remaining");
              }

              else
              {
                v14 = *v13;
                *(a2 + 16) = *(v13 + 2);
                *a2 = v14;
                *(v12 + 24) += 24;
              }
            }

            else
            {
              re::snapshot::BufferDecoder::error(v12, "C Array size mismatch: expected %zu, got %zu");
            }
          }

          else if (re::snapshot::DecoderOPACK::beginArray(v12, &v21))
          {
            if (v21 == 3)
            {
              v19 = 0;
              if (re::snapshot::DecoderOPACK::endArray(v12, &v21))
              {
                goto LABEL_48;
              }

              do
              {
                if (v19 > 2)
                {
                  re::snapshot::BufferDecoder::error(v12, "Bad data, too many elements: expected %zu, got %d", 3uLL, v19 + 1);
                }

                else
                {
                  re::snapshot::DecoderOPACK::operator>>(v12, (a2 + 8 * v19++));
                }
              }

              while (!re::snapshot::DecoderOPACK::endArray(v12, &v21));
              if (v19 != 3)
              {
LABEL_48:
                re::snapshot::BufferDecoder::error(v12, "size mismatch: expected %zu, got %d");
              }
            }

            else
            {
              re::snapshot::BufferDecoder::error(v12, "unexpected C Array size: expected %zu, got %zu");
            }
          }

          re::snapshot::DecoderOPACK::endField(v12);
        }

        return re::snapshot::DecoderOPACK::endObject(v12, 0);
      }
    }

    else
    {
      v21 = 0;
      result = (*(*a1 + 104))(a1, &v21);
      if (result)
      {
        if (v21 == 3)
        {
          v18 = 3;
          do
          {
            (*(*a1 + 288))(a1, a2);
            a2 += 8;
            --v18;
          }

          while (v18);
          v21 -= 3;
        }

        v20 = 0;
        result = (*(*a1 + 112))(a1, &v21);
        if ((result & 1) == 0)
        {
          do
          {
            (*(*a1 + 288))(a1, &v20);
            result = (*(*a1 + 112))(a1, &v21);
          }

          while (!result);
        }
      }
    }
  }

  return result;
}

unsigned int *_ZZN2re8internal15snapshotEncoderINS_7Vector4IdEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_(uint64_t a1, char *a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4)
  {
    v5 = v4;
    __src = 32;
    re::snapshot::BufferEncoder::writeRaw<true>(v4, &__src, 8uLL);
    return re::snapshot::BufferEncoder::writeRaw<true>(v5, a2, 0x20uLL);
  }

  else
  {
    v7 = (*(*a1 + 16))(a1);
    v8 = v7;
    if (v7)
    {
      re::snapshot::EncoderOPACK::beginObject(v7);
      v9 = v8[4];
      if (v9 >= v8[5])
      {
        re::snapshot::EncoderOPACK::writeInteger(v8, 1);
      }

      else
      {
        v10 = *(v8 + 1);
        v8[4] = v9 + 1;
        *(v10 + v9) = 9;
      }

      if ((v8[18] & 4) != 0)
      {
        re::snapshot::EncoderOPACK::beginData(v8, 0x20uLL, 0x20uLL);
        re::snapshot::BufferEncoder::writeRaw<true>(v8, a2, 0x20uLL);
      }

      else
      {
        re::snapshot::EncoderOPACK::beginArray(v8, 4uLL);
        for (i = 0; i != 32; i += 8)
        {
          re::snapshot::EncoderOPACK::operator<<(v8, *&a2[i]);
        }
      }

      return re::snapshot::EncoderOPACK::endObject(v8);
    }

    else
    {
      (*(*a1 + 88))(a1, 4);
      do
      {
        (*(*a1 + 256))(a1, *(v8 + a2));
        v8 += 2;
      }

      while (v8 != 32);
      v12 = *(*a1 + 96);

      return v12(a1, 4);
    }
  }
}

uint64_t _ZZN2re8internal15snapshotDecoderINS_7Vector4IdEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_(uint64_t a1, _OWORD *a2)
{
  result = (*(*a1 + 24))(a1);
  if (result)
  {
    v5 = result;
    v21 = 0;
    v6 = *(result + 24);
    v7 = *(result + 32);
    if ((v7 - v6) < 8)
    {
      re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v7 - v6);
      result = re::snapshot::DecoderRaw::beginArray(v5, &v21);
      if (result)
      {
        if (v21 == 4)
        {
          v15 = 0;
          v16 = -4;
          do
          {
            if (v15 > 3)
            {
              result = re::snapshot::BufferDecoder::error(v5, "Bad data, too many elements: expected %zu, got %d", 4uLL, v15 + 1);
            }

            else
            {
              result = re::snapshot::DecoderRaw::operator>>(v5, a2 + v15++);
            }
          }

          while (!__CFADD__(v16++, 1));
          if (v15 != 4)
          {
            return re::snapshot::BufferDecoder::error(v5, "size mismatch: expected %zu, got %d");
          }
        }

        else
        {
          return re::snapshot::BufferDecoder::error(v5, "unexpected C Array size: expected %zu, got %zu");
        }
      }
    }

    else
    {
      v9 = *v6;
      v8 = v6 + 1;
      *(result + 24) = v8;
      if (v9 == 32)
      {
        if ((v7 - v8) <= 0x1F)
        {
          return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining");
        }

        else
        {
          v10 = v8[1];
          *a2 = *v8;
          a2[1] = v10;
          *(result + 24) += 32;
        }
      }

      else
      {
        return re::snapshot::BufferDecoder::error(result, "C Array size mismatch: expected %zu, got %zu");
      }
    }
  }

  else
  {
    v11 = (*(*a1 + 16))(a1);
    if (v11)
    {
      v12 = v11;
      result = re::snapshot::DecoderOPACK::beginObject(v11, 0);
      if (result)
      {
        if (re::snapshot::DecoderOPACK::beginField<1>(v12))
        {
          v21 = 0;
          if (re::snapshot::DecoderOPACK::beginData(v12, &v21, 1))
          {
            if (v21 == 32)
            {
              v13 = *(v12 + 24);
              if (*(v12 + 32) - v13 <= 0x1FuLL)
              {
                re::snapshot::BufferDecoder::error(v12, "overrun: attempted to read %zu bytes, only %zu remaining");
              }

              else
              {
                v14 = v13[1];
                *a2 = *v13;
                a2[1] = v14;
                *(v12 + 24) += 32;
              }
            }

            else
            {
              re::snapshot::BufferDecoder::error(v12, "C Array size mismatch: expected %zu, got %zu");
            }
          }

          else if (re::snapshot::DecoderOPACK::beginArray(v12, &v21))
          {
            if (v21 == 4)
            {
              v19 = 0;
              if (re::snapshot::DecoderOPACK::endArray(v12, &v21))
              {
                goto LABEL_48;
              }

              do
              {
                if (v19 > 3)
                {
                  re::snapshot::BufferDecoder::error(v12, "Bad data, too many elements: expected %zu, got %d", 4uLL, v19 + 1);
                }

                else
                {
                  re::snapshot::DecoderOPACK::operator>>(v12, a2 + v19++);
                }
              }

              while (!re::snapshot::DecoderOPACK::endArray(v12, &v21));
              if (v19 != 4)
              {
LABEL_48:
                re::snapshot::BufferDecoder::error(v12, "size mismatch: expected %zu, got %d");
              }
            }

            else
            {
              re::snapshot::BufferDecoder::error(v12, "unexpected C Array size: expected %zu, got %zu");
            }
          }

          re::snapshot::DecoderOPACK::endField(v12);
        }

        return re::snapshot::DecoderOPACK::endObject(v12, 0);
      }
    }

    else
    {
      v21 = 0;
      result = (*(*a1 + 104))(a1, &v21);
      if (result)
      {
        if (v21 == 4)
        {
          v18 = 4;
          do
          {
            (*(*a1 + 288))(a1, a2);
            a2 = (a2 + 8);
            --v18;
          }

          while (v18);
          v21 -= 4;
        }

        v20 = 0;
        result = (*(*a1 + 112))(a1, &v21);
        if ((result & 1) == 0)
        {
          do
          {
            (*(*a1 + 288))(a1, &v20);
            result = (*(*a1 + 112))(a1, &v21);
          }

          while (!result);
        }
      }
    }
  }

  return result;
}

unsigned int *_ZZN2re8internal15snapshotEncoderINS_9Matrix2x2IfEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_(uint64_t a1, float *a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4)
  {
    v5 = v4;
    __src = 16;
    re::snapshot::BufferEncoder::writeRaw<true>(v4, &__src, 8uLL);
    return re::snapshot::BufferEncoder::writeRaw<true>(v5, a2, 0x10uLL);
  }

  else
  {
    v7 = (*(*a1 + 16))(a1);
    if (v7)
    {
      v8 = v7;
      re::snapshot::EncoderOPACK::beginObject(v7);
      v9 = *(v8 + 16);
      if (v9 >= *(v8 + 20))
      {
        re::snapshot::EncoderOPACK::writeInteger(v8, 1);
      }

      else
      {
        v10 = *(v8 + 8);
        *(v8 + 16) = v9 + 1;
        *(v10 + v9) = 9;
      }

      re::snapshot::EncoderOPACK::beginArray(v8, 2uLL);
      re::internal::opack::encode<float,2>(v8, a2);
      re::internal::opack::encode<float,2>(v8, a2 + 2);

      return re::snapshot::EncoderOPACK::endObject(v8);
    }

    else
    {
      (*(*a1 + 88))(a1, 2);
      re::internal::encode<float,2>(a1, a2);
      re::internal::encode<float,2>(a1, a2 + 2);
      v11 = *(*a1 + 96);

      return v11(a1, 2);
    }
  }
}

uint64_t _ZZN2re8internal15snapshotDecoderINS_9Matrix2x2IfEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_(uint64_t a1, float *a2)
{
  result = (*(*a1 + 24))(a1);
  if (result)
  {
    v5 = result;
    v21 = 0;
    v6 = *(result + 24);
    v7 = *(result + 32);
    if ((v7 - v6) >= 8)
    {
      v9 = *v6;
      v8 = v6 + 1;
      *(result + 24) = v8;
      if (v9 != 16)
      {
        return re::snapshot::BufferDecoder::error(result, "C Array size mismatch: expected %zu, got %zu");
      }

      if ((v7 - v8) <= 0xF)
      {
        return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining");
      }

      *a2 = *v8;
      *(result + 24) += 16;
      return result;
    }

    re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v7 - v6);
    result = re::snapshot::DecoderRaw::beginArray(v5, &v21);
    if (!result)
    {
      return result;
    }

    if (v21 != 2)
    {
      return re::snapshot::BufferDecoder::error(v5, "unexpected C Array size: expected %zu, got %zu");
    }

    v13 = 0;
    for (i = -1; ; ++i)
    {
      if (v13 > 1)
      {
        result = re::snapshot::BufferDecoder::error(v5, "Bad data, too many elements: expected %zu, got %d", 2uLL, 3);
        v15 = 2;
        if (!i)
        {
          return result;
        }
      }

      else
      {
        v15 = v13 + 1;
        result = re::snapshot::operator>><re::snapshot::DecoderRaw,float,2ul>(v5, &a2[2 * v13]);
        if (!i)
        {
          if (v15 != 2)
          {
            return re::snapshot::BufferDecoder::error(v5, "size mismatch: expected %zu, got %d");
          }

          return result;
        }
      }

      v13 = v15;
    }
  }

  v10 = (*(*a1 + 16))(a1);
  if (v10)
  {
    v11 = v10;
    result = re::snapshot::DecoderOPACK::beginObject(v10, 0);
    if (!result)
    {
      return result;
    }

    if (re::snapshot::DecoderOPACK::beginField<1>(v11))
    {
      v21 = 0;
      if (re::snapshot::DecoderOPACK::beginData(v11, &v21, 1))
      {
        if (v21 == 16)
        {
          v12 = *(v11 + 24);
          if (*(v11 + 32) - v12 <= 0xFuLL)
          {
            re::snapshot::BufferDecoder::error(v11, "overrun: attempted to read %zu bytes, only %zu remaining");
          }

          else
          {
            *a2 = *v12;
            *(v11 + 24) += 16;
          }
        }

        else
        {
          re::snapshot::BufferDecoder::error(v11, "C Array size mismatch: expected %zu, got %zu");
        }
      }

      else if (re::snapshot::DecoderOPACK::beginArray(v11, &v21))
      {
        if (v21 == 2)
        {
          if (re::snapshot::DecoderOPACK::endArray(v11, &v21))
          {
            goto LABEL_47;
          }

          v16 = 0;
          do
          {
            while (v16 > 1)
            {
              re::snapshot::BufferDecoder::error(v11, "Bad data, too many elements: expected %zu, got %d", 2uLL, 3);
              v19 = re::snapshot::DecoderOPACK::endArray(v11, &v21);
              v16 = 2;
              if (v19)
              {
                goto LABEL_48;
              }
            }

            v17 = v16 + 1;
            re::internal::opack::decode<float,2>(v11, &a2[2 * v16]);
            v18 = re::snapshot::DecoderOPACK::endArray(v11, &v21);
            v16 = v17;
          }

          while (!v18);
          if (v17 != 2)
          {
LABEL_47:
            re::snapshot::BufferDecoder::error(v11, "size mismatch: expected %zu, got %d");
          }
        }

        else
        {
          re::snapshot::BufferDecoder::error(v11, "unexpected C Array size: expected %zu, got %zu");
        }
      }

LABEL_48:
      re::snapshot::DecoderOPACK::endField(v11);
    }

    return re::snapshot::DecoderOPACK::endObject(v11, 0);
  }

  else
  {
    v21 = 0;
    result = (*(*a1 + 104))(a1, &v21);
    if (result)
    {
      if (v21 == 2)
      {
        re::internal::decode<float,2>(a1, a2);
        re::internal::decode<float,2>(a1, a2 + 2);
        v21 -= 2;
      }

      v20 = 0;
      result = (*(*a1 + 112))(a1, &v21);
      if ((result & 1) == 0)
      {
        do
        {
          re::internal::decode<float,2>(a1, &v20);
          result = (*(*a1 + 112))(a1, &v21);
        }

        while (!result);
      }
    }
  }

  return result;
}

unsigned int *_ZZN2re8internal15snapshotEncoderINS_9Matrix3x3IfEEEEDTcl6encodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7EncoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIS9_EEEERPFvS8_PKvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_(uint64_t a1, char *a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4)
  {
    v5 = v4;
    __src = 48;
    re::snapshot::BufferEncoder::writeRaw<true>(v4, &__src, 8uLL);
    return re::snapshot::BufferEncoder::writeRaw<true>(v5, a2, 0x30uLL);
  }

  else
  {
    v7 = (*(*a1 + 16))(a1);
    if (v7)
    {
      v8 = v7;
      re::snapshot::EncoderOPACK::beginObject(v7);
      v9 = *(v8 + 16);
      if (v9 >= *(v8 + 20))
      {
        re::snapshot::EncoderOPACK::writeInteger(v8, 1);
      }

      else
      {
        v10 = *(v8 + 8);
        *(v8 + 16) = v9 + 1;
        *(v10 + v9) = 9;
      }

      v11 = 3;
      re::snapshot::EncoderOPACK::beginArray(v8, 3uLL);
      do
      {
        re::internal::opack::encode<float,3>(v8, a2);
        a2 += 16;
        --v11;
      }

      while (v11);

      return re::snapshot::EncoderOPACK::endObject(v8);
    }

    else
    {
      v12 = 3;
      (*(*a1 + 88))(a1, 3);
      do
      {
        re::internal::encode<float,3>(a1, a2);
        a2 += 16;
        --v12;
      }

      while (v12);
      v13 = *(*a1 + 96);

      return v13(a1, 3);
    }
  }
}

uint64_t _ZZN2re8internal15snapshotDecoderINS_9Matrix3x3IfEEEEDTcl6decodeclL_ZNSt3__17declvalB8nn200100IRNS_8snapshot7DecoderEEEDTclsr3stdE9__declvalIT_ELi0EEEvEEclsr3stdE7declvalIRS9_EEEERPFvS8_PvENS0_8priorityILi2EEEENUlS8_SD_E_8__invokeES8_SD_(uint64_t a1, _OWORD *a2)
{
  result = (*(*a1 + 24))(a1);
  if (result)
  {
    v5 = result;
    v22[0] = 0;
    v6 = *(result + 24);
    v7 = *(result + 32);
    if ((v7 - v6) < 8)
    {
      re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v7 - v6);
      result = re::snapshot::DecoderRaw::beginArray(v5, v22);
      if (result)
      {
        if (v22[0] == 3)
        {
          v17 = 0;
          v18 = -3;
          do
          {
            if (v17 > 2)
            {
              result = re::snapshot::BufferDecoder::error(v5, "Bad data, too many elements: expected %zu, got %d", 3uLL, v17 + 1);
            }

            else
            {
              result = re::snapshot::operator>><re::snapshot::DecoderRaw,float,3ul>(v5, &a2[v17++]);
            }
          }

          while (!__CFADD__(v18++, 1));
          if (v17 != 3)
          {
            return re::snapshot::BufferDecoder::error(v5, "size mismatch: expected %zu, got %d");
          }
        }

        else
        {
          return re::snapshot::BufferDecoder::error(v5, "unexpected C Array size: expected %zu, got %zu");
        }
      }
    }

    else
    {
      v9 = *v6;
      v8 = (v6 + 1);
      *(result + 24) = v8;
      if (v9 == 48)
      {
        if ((v7 - v8) <= 0x2F)
        {
          return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining");
        }

        else
        {
          v10 = *v8;
          v11 = v8[2];
          a2[1] = v8[1];
          a2[2] = v11;
          *a2 = v10;
          *(result + 24) += 48;
        }
      }

      else
      {
        return re::snapshot::BufferDecoder::error(result, "C Array size mismatch: expected %zu, got %zu");
      }
    }
  }

  else
  {
    v12 = (*(*a1 + 16))(a1);
    if (v12)
    {
      v13 = v12;
      result = re::snapshot::DecoderOPACK::beginObject(v12, 0);
      if (result)
      {
        if (re::snapshot::DecoderOPACK::beginField<1>(v13))
        {
          v22[0] = 0;
          if (re::snapshot::DecoderOPACK::beginData(v13, v22, 1))
          {
            if (v22[0] == 48)
            {
              v14 = *(v13 + 24);
              if (*(v13 + 32) - v14 <= 0x2FuLL)
              {
                re::snapshot::BufferDecoder::error(v13, "overrun: attempted to read %zu bytes, only %zu remaining");
              }

              else
              {
                v15 = *v14;
                v16 = v14[2];
                a2[1] = v14[1];
                a2[2] = v16;
                *a2 = v15;
                *(v13 + 24) += 48;
              }
            }

            else
            {
              re::snapshot::BufferDecoder::error(v13, "C Array size mismatch: expected %zu, got %zu");
            }
          }

          else if (re::snapshot::DecoderOPACK::beginArray(v13, v22))
          {
            if (v22[0] == 3)
            {
              v21 = 0;
              if (re::snapshot::DecoderOPACK::endArray(v13, v22))
              {
                goto LABEL_48;
              }

              do
              {
                if (v21 > 2)
                {
                  re::snapshot::BufferDecoder::error(v13, "Bad data, too many elements: expected %zu, got %d", 3uLL, v21 + 1);
                }

                else
                {
                  re::internal::opack::decode<float,3>(v13, &a2[v21++]);
                }
              }

              while (!re::snapshot::DecoderOPACK::endArray(v13, v22));
              if (v21 != 3)
              {
LABEL_48:
                re::snapshot::BufferDecoder::error(v13, "size mismatch: expected %zu, got %d");
              }
            }

            else
            {
              re::snapshot::BufferDecoder::error(v13, "unexpected C Array size: expected %zu, got %zu");
            }
          }

          re::snapshot::DecoderOPACK::endField(v13);
        }

        return re::snapshot::DecoderOPACK::endObject(v13, 0);
      }
    }

    else
    {
      v23 = 0;
      result = (*(*a1 + 104))(a1, &v23);
      if (result)
      {
        if (v23 == 3)
        {
          v20 = 3;
          do
          {
            re::internal::decode<float,3>(a1, a2++);
            --v20;
          }

          while (v20);
          v23 -= 3;
        }

        *v22 = 0u;
        result = (*(*a1 + 112))(a1, &v23);
        if ((result & 1) == 0)
        {
          do
          {
            re::internal::decode<float,3>(a1, v22);
            result = (*(*a1 + 112))(a1, &v23);
          }

          while (!result);
        }
      }
    }
  }

  return result;
}

uint64_t *re::snapshot::operator>><re::snapshot::DecoderRaw,float,2ul>(uint64_t *this, void *a2)
{
  v3 = this;
  v11 = 0;
  v4 = this[3];
  v5 = this[4];
  if ((v5 - v4) >= 8)
  {
    v7 = *v4;
    v6 = v4 + 1;
    this[3] = v6;
    if (v7 != 8)
    {
      return re::snapshot::BufferDecoder::error(this, "C Array size mismatch: expected %zu, got %zu");
    }

    if ((v5 - v6) <= 7)
    {
      return re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining");
    }

    *a2 = *v6;
    this[3] += 8;
    return this;
  }

  re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v5 - v4);
  this = re::snapshot::DecoderRaw::beginArray(v3, &v11);
  if (!this)
  {
    return this;
  }

  if (v11 != 2)
  {
    return re::snapshot::BufferDecoder::error(v3, "unexpected C Array size: expected %zu, got %zu");
  }

  v8 = 0;
  v9 = -1;
  while (v8 > 1)
  {
    this = re::snapshot::BufferDecoder::error(v3, "Bad data, too many elements: expected %zu, got %d", 2uLL, 3);
    v10 = 2;
    if (!v9)
    {
      return this;
    }

LABEL_10:
    ++v9;
    v8 = v10;
  }

  v10 = v8 + 1;
  this = re::snapshot::DecoderRaw::operator>>(v3, a2 + v8);
  if (v9)
  {
    goto LABEL_10;
  }

  if (v10 != 2)
  {
    return re::snapshot::BufferDecoder::error(v3, "size mismatch: expected %zu, got %d");
  }

  return this;
}

uint64_t re::internal::encodeArray<re::snapshot::Encoder,float,3>(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 88))(a1, 3);
  for (i = 0; i != 12; i += 4)
  {
    (*(*a1 + 248))(a1, *(a2 + i));
  }

  v5 = *(*a1 + 96);

  return v5(a1, 3);
}

uint64_t re::internal::decodeArray<re::snapshot::Decoder,float,3>(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  result = (*(*a1 + 104))(a1, &v7);
  if (result)
  {
    if (v7 == 3)
    {
      v5 = 3;
      do
      {
        (*(*a1 + 280))(a1, a2);
        a2 += 4;
        --v5;
      }

      while (v5);
      v7 -= 3;
    }

    v6 = 0;
    result = (*(*a1 + 112))(a1, &v7);
    if ((result & 1) == 0)
    {
      do
      {
        (*(*a1 + 280))(a1, &v6);
        result = (*(*a1 + 112))(a1, &v7);
      }

      while (!result);
    }
  }

  return result;
}

uint64_t *re::snapshot::operator>><re::snapshot::DecoderRaw,float,3ul>(uint64_t *this, uint64_t a2)
{
  v3 = this;
  v12 = 0;
  v4 = this[3];
  v5 = this[4];
  if ((v5 - v4) < 8)
  {
    re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v5 - v4);
    this = re::snapshot::DecoderRaw::beginArray(v3, &v12);
    if (this)
    {
      if (v12 == 3)
      {
        v9 = 0;
        v10 = -3;
        do
        {
          if (v9 > 2)
          {
            this = re::snapshot::BufferDecoder::error(v3, "Bad data, too many elements: expected %zu, got %d", 3uLL, v9 + 1);
          }

          else
          {
            this = re::snapshot::DecoderRaw::operator>>(v3, (a2 + 4 * v9++));
          }
        }

        while (!__CFADD__(v10++, 1));
        if (v9 != 3)
        {
          return re::snapshot::BufferDecoder::error(v3, "size mismatch: expected %zu, got %d");
        }
      }

      else
      {
        return re::snapshot::BufferDecoder::error(v3, "unexpected C Array size: expected %zu, got %zu");
      }
    }
  }

  else
  {
    v7 = *v4;
    v6 = v4 + 1;
    this[3] = v6;
    if (v7 == 12)
    {
      if ((v5 - v6) <= 0xB)
      {
        return re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining");
      }

      else
      {
        v8 = *v6;
        *(a2 + 8) = *(v6 + 2);
        *a2 = v8;
        this[3] += 12;
      }
    }

    else
    {
      return re::snapshot::BufferDecoder::error(this, "C Array size mismatch: expected %zu, got %zu");
    }
  }

  return this;
}

BOOL re::snapshot::DecoderOPACK::field<1,float [3]>(re::snapshot::DecoderOPACK *a1, uint64_t a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<1>(a1);
  if (v4)
  {
    re::snapshot::operator>><re::snapshot::DecoderOPACK,float,3ul>(a1, a2);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

uint64_t *re::snapshot::operator>><re::snapshot::DecoderOPACK,float,3ul>(re::snapshot::DecoderOPACK *a1, uint64_t a2)
{
  v8 = 0;
  result = re::snapshot::DecoderOPACK::beginData(a1, &v8, 1);
  if (result)
  {
    if (v8 == 12)
    {
      v5 = *(a1 + 3);
      if (*(a1 + 4) - v5 <= 0xBuLL)
      {
        return re::snapshot::BufferDecoder::error(a1, "overrun: attempted to read %zu bytes, only %zu remaining");
      }

      else
      {
        v6 = *v5;
        *(a2 + 8) = *(v5 + 2);
        *a2 = v6;
        *(a1 + 3) += 12;
      }
    }

    else
    {
      return re::snapshot::BufferDecoder::error(a1, "C Array size mismatch: expected %zu, got %zu");
    }
  }

  else
  {
    result = re::snapshot::DecoderOPACK::beginArray(a1, &v8);
    if (result)
    {
      if (v8 == 3)
      {
        v7 = 0;
        if (re::snapshot::DecoderOPACK::endArray(a1, &v8))
        {
          return re::snapshot::BufferDecoder::error(a1, "size mismatch: expected %zu, got %d");
        }

        do
        {
          if (v7 > 2)
          {
            re::snapshot::BufferDecoder::error(a1, "Bad data, too many elements: expected %zu, got %d", 3uLL, v7 + 1);
          }

          else
          {
            re::snapshot::DecoderOPACK::operator>>(a1, (a2 + 4 * v7++));
          }

          result = re::snapshot::DecoderOPACK::endArray(a1, &v8);
        }

        while (!result);
        if (v7 != 3)
        {
          return re::snapshot::BufferDecoder::error(a1, "size mismatch: expected %zu, got %d");
        }
      }

      else
      {
        return re::snapshot::BufferDecoder::error(a1, "unexpected C Array size: expected %zu, got %zu");
      }
    }
  }

  return result;
}

uint64_t *re::snapshot::operator>><re::snapshot::DecoderRaw,float,4ul>(uint64_t *this, _OWORD *a2)
{
  v3 = this;
  v11 = 0;
  v4 = this[3];
  v5 = this[4];
  if ((v5 - v4) < 8)
  {
    re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v5 - v4);
    this = re::snapshot::DecoderRaw::beginArray(v3, &v11);
    if (this)
    {
      if (v11 == 4)
      {
        v8 = 0;
        v9 = -4;
        do
        {
          if (v8 > 3)
          {
            this = re::snapshot::BufferDecoder::error(v3, "Bad data, too many elements: expected %zu, got %d", 4uLL, v8 + 1);
          }

          else
          {
            this = re::snapshot::DecoderRaw::operator>>(v3, a2 + v8++);
          }
        }

        while (!__CFADD__(v9++, 1));
        if (v8 != 4)
        {
          return re::snapshot::BufferDecoder::error(v3, "size mismatch: expected %zu, got %d");
        }
      }

      else
      {
        return re::snapshot::BufferDecoder::error(v3, "unexpected C Array size: expected %zu, got %zu");
      }
    }
  }

  else
  {
    v7 = *v4;
    v6 = v4 + 1;
    this[3] = v6;
    if (v7 == 16)
    {
      if ((v5 - v6) <= 0xF)
      {
        return re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining");
      }

      else
      {
        *a2 = *v6;
        this[3] += 16;
      }
    }

    else
    {
      return re::snapshot::BufferDecoder::error(this, "C Array size mismatch: expected %zu, got %zu");
    }
  }

  return this;
}

uint64_t *re::snapshot::operator>><re::snapshot::DecoderRaw,re::Vector4<float>,4ul>(uint64_t *this, _OWORD *a2)
{
  v3 = this;
  v14 = 0;
  v4 = this[3];
  v5 = this[4];
  if ((v5 - v4) < 8)
  {
    re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v5 - v4);
    this = re::snapshot::DecoderRaw::beginArray(v3, &v14);
    if (this)
    {
      if (v14 == 4)
      {
        v11 = 0;
        v12 = -4;
        do
        {
          if (v11 > 3)
          {
            this = re::snapshot::BufferDecoder::error(v3, "Bad data, too many elements: expected %zu, got %d", 4uLL, v11 + 1);
          }

          else
          {
            this = re::snapshot::operator>><re::snapshot::DecoderRaw,float,4ul>(v3, &a2[v11++]);
          }
        }

        while (!__CFADD__(v12++, 1));
        if (v11 != 4)
        {
          return re::snapshot::BufferDecoder::error(v3, "size mismatch: expected %zu, got %d");
        }
      }

      else
      {
        return re::snapshot::BufferDecoder::error(v3, "unexpected C Array size: expected %zu, got %zu");
      }
    }
  }

  else
  {
    v7 = *v4;
    v6 = (v4 + 1);
    this[3] = v6;
    if (v7 == 64)
    {
      if ((v5 - v6) <= 0x3F)
      {
        return re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining");
      }

      else
      {
        v8 = *v6;
        v9 = v6[1];
        v10 = v6[3];
        a2[2] = v6[2];
        a2[3] = v10;
        *a2 = v8;
        a2[1] = v9;
        this[3] += 64;
      }
    }

    else
    {
      return re::snapshot::BufferDecoder::error(this, "C Array size mismatch: expected %zu, got %zu");
    }
  }

  return this;
}

BOOL re::snapshot::DecoderOPACK::field<1,re::Vector4<float> [4]>(re::snapshot::DecoderOPACK *a1, _OWORD *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<1>(a1);
  if (v4)
  {
    re::snapshot::operator>><re::snapshot::DecoderOPACK,re::Vector4<float>,4ul>(a1, a2);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

uint64_t *re::snapshot::operator>><re::snapshot::DecoderOPACK,re::Vector4<float>,4ul>(re::snapshot::DecoderOPACK *a1, _OWORD *a2)
{
  v10 = 0;
  result = re::snapshot::DecoderOPACK::beginData(a1, &v10, 1);
  if (result)
  {
    if (v10 == 64)
    {
      v5 = *(a1 + 3);
      if (*(a1 + 4) - v5 <= 0x3FuLL)
      {
        return re::snapshot::BufferDecoder::error(a1, "overrun: attempted to read %zu bytes, only %zu remaining");
      }

      else
      {
        v6 = *v5;
        v7 = v5[1];
        v8 = v5[3];
        a2[2] = v5[2];
        a2[3] = v8;
        *a2 = v6;
        a2[1] = v7;
        *(a1 + 3) += 64;
      }
    }

    else
    {
      return re::snapshot::BufferDecoder::error(a1, "C Array size mismatch: expected %zu, got %zu");
    }
  }

  else
  {
    result = re::snapshot::DecoderOPACK::beginArray(a1, &v10);
    if (result)
    {
      if (v10 == 4)
      {
        v9 = 0;
        if (re::snapshot::DecoderOPACK::endArray(a1, &v10))
        {
          return re::snapshot::BufferDecoder::error(a1, "size mismatch: expected %zu, got %d");
        }

        do
        {
          if (v9 > 3)
          {
            re::snapshot::BufferDecoder::error(a1, "Bad data, too many elements: expected %zu, got %d", 4uLL, v9 + 1);
          }

          else
          {
            re::internal::opack::decode<float,4>(a1, &a2[v9++]);
          }

          result = re::snapshot::DecoderOPACK::endArray(a1, &v10);
        }

        while (!result);
        if (v9 != 4)
        {
          return re::snapshot::BufferDecoder::error(a1, "size mismatch: expected %zu, got %d");
        }
      }

      else
      {
        return re::snapshot::BufferDecoder::error(a1, "unexpected C Array size: expected %zu, got %zu");
      }
    }
  }

  return result;
}

float32x2_t re::Pose<float>::Pose(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  v5 = *a4;
  v4 = *(a4 + 1);
  v6 = a4[2];
  LODWORD(v7) = HIDWORD(*(a4 + 2));
  v8 = COERCE_FLOAT(*(a4 + 5));
  v9 = v8 + (COERCE_FLOAT(*a4) + v7);
  if (v9 >= 0.0)
  {
    v17 = sqrtf(v9 + 1.0);
    v18 = v17 + v17;
    v19 = vrecpe_f32(COERCE_UNSIGNED_INT(v17 + v17));
    v20 = vmul_f32(v19, vrecps_f32(COERCE_UNSIGNED_INT(v17 + v17), v19));
    v20.i32[0] = vmul_f32(v20, vrecps_f32(COERCE_UNSIGNED_INT(v17 + v17), v20)).u32[0];
    *&v31 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(v4, v4, 8uLL), *&v6), vext_s8(*&v6, *&vextq_s8(v5, v5, 8uLL), 4uLL)), v20.f32[0]);
    v21.f32[0] = *&v5.i32[1] - *v4.i32;
    v21.f32[1] = v18;
    v20.i32[1] = 0.25;
    result = vmul_f32(v21, v20);
  }

  else if (*v5.i32 < v7 || *v5.i32 < v8)
  {
    v11 = 1.0 - *v5.i32;
    if (v7 >= v8)
    {
      v34 = sqrtf(v7 + (v11 - v8));
      *&v35 = v34 + v34;
      v36 = vrecpe_f32(v35);
      v37 = vmul_f32(v36, vrecps_f32(v35, v36));
      v38.i32[0] = vmul_f32(v37, vrecps_f32(v35, v37)).u32[0];
      v37.f32[0] = *&v5.i32[1] + *v4.i32;
      v37.i32[1] = v35;
      result = vmul_n_f32(vext_s8(vadd_f32(*&v6, vdup_laneq_s32(v4, 2)), vsub_f32(*&v6, *&vextq_s8(v5, v5, 8uLL)), 4uLL), v38.f32[0]);
      v38.i32[1] = 0.25;
      *&v31 = vmul_f32(v37, v38);
    }

    else
    {
      v12 = sqrtf(v8 + (v11 - v7));
      v13.f32[0] = v12 + v12;
      v14 = vrecpe_f32(COERCE_UNSIGNED_INT(v12 + v12));
      v15 = vmul_f32(v14, vrecps_f32(COERCE_UNSIGNED_INT(v12 + v12), v14));
      v15.i32[0] = vmul_f32(v15, vrecps_f32(COERCE_UNSIGNED_INT(v12 + v12), v15)).u32[0];
      *&v31 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(v5, v5, 8uLL), *&vextq_s8(v4, v4, 8uLL)), *&v6), v15.f32[0]);
      v13.f32[1] = *&v5.i32[1] - *v4.i32;
      __asm { FMOV            V0.2S, #0.25 }

      _D0.i32[1] = v15.i32[0];
      result = vmul_f32(v13, _D0);
    }
  }

  else
  {
    v22 = sqrtf(*v5.i32 + ((1.0 - v7) - v8));
    v23.f32[0] = v22 + v22;
    v24 = vrecpe_f32(v23.u32[0]);
    v25 = vmul_f32(v24, vrecps_f32(v23.u32[0], v24));
    LODWORD(v26) = vmul_f32(v25, vrecps_f32(v23.u32[0], v25)).u32[0];
    v23.f32[1] = *&v5.i32[1] + *v4.i32;
    __asm { FMOV            V5.2S, #0.25 }

    _D5.f32[1] = v26;
    *&v31 = vmul_f32(v23, _D5);
    v32.i32[0] = vadd_f32(*&vextq_s8(v5, v5, 8uLL), *&v6).u32[0];
    v32.i32[1] = vsub_f32(vdup_laneq_s32(v4, 2), *&v6).i32[1];
    result = vmul_n_f32(v32, v26);
  }

  *(&v31 + 1) = result;
  *(a1 + 16) = v31;
  return result;
}

BOOL re::DynamicOffsetF::isInSteadyState(re::DynamicOffsetF *this)
{
  result = re::areAlmostEqual<float>(this, this + 12);
  if (result)
  {
    v3 = *(this + 8);
    v4 = *(this + 20);
    if (v3 != v4 && vabds_f32(v3, v4) >= (((fabsf(v3) + fabsf(v4)) + 1.0) * 0.00001))
    {
      return 0;
    }

    v5 = *(this + 9);
    v6 = *(this + 21);
    if (v5 != v6 && vabds_f32(v5, v6) >= (((fabsf(v5) + fabsf(v6)) + 1.0) * 0.00001))
    {
      return 0;
    }

    v7 = *(this + 10);
    v8 = *(this + 22);
    if (v7 != v8 && vabds_f32(v7, v8) >= (((fabsf(v7) + fabsf(v8)) + 1.0) * 0.00001))
    {
      return 0;
    }

    result = re::areAlmostEqual<float>(this + 12, this + 24);
    if (!result)
    {
      return result;
    }

    if (((v9 = *(this + 20), v10 = *(this + 32), v9 == v10) || vabds_f32(v9, v10) < (((fabsf(v9) + fabsf(v10)) + 1.0) * 0.00001)) && ((v11 = *(this + 21), v12 = *(this + 33), v11 == v12) || vabds_f32(v11, v12) < (((fabsf(v11) + fabsf(v12)) + 1.0) * 0.00001)))
    {
      v13 = *(this + 22);
      v14 = *(this + 34);
      return v13 == v14 || vabds_f32(v13, v14) < (((fabsf(v13) + fabsf(v14)) + 1.0) * 0.00001);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

float32x4_t re::DynamicOffsetF::calculateConstrainedPose@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  v5 = a1[9];
  _Q5 = a1[10];
  v7 = vnegq_f32(_Q5);
  v9 = *a2;
  v8 = a2[1];
  v10 = vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL);
  v11 = vdupq_laneq_s32(_Q5, 3);
  _S8 = _Q5.i32[3];
  _Q1 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), _Q5), v8, v10);
  v14 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL), v8, _Q5, 3);
  _Q1.i32[0] = v8.i32[3];
  v15 = vmlsq_laneq_f32(v14, _Q5, v8, 3);
  __asm { FMLA            S0, S1, V5.S[3] }

  _Q19 = v15;
  _Q19.f32[3] = _S0;
  v23 = a1[14];
  v22 = a1[15];
  v24 = a1[17].f32[0];
  if (v24 != -3.4028e38 || a1[17].f32[1] != 3.4028e38)
  {
    v68 = a1[14];
    v69 = a1[15];
    v70 = *a2;
    v71 = v10;
    v72 = v7;
    v73 = v11;
    v74 = a1[10];
    v75 = a1[9];
    v25 = fabsf(_S0);
    if (v25 <= 1.0 || fabsf(v25 + -1.0) < (((v25 + 1.0) + 1.0) * 0.00001))
    {
      if (_S0 > 1.0)
      {
        _S0 = 1.0;
      }

      if (_S0 < -1.0)
      {
        _S0 = -1.0;
      }

      v65 = v15;
      v66 = _Q19;
      v27 = acosf(_S0);
      v15 = v65;
      _Q19 = v66;
      v26 = v27 + v27;
    }

    else
    {
      v26 = NAN;
    }

    v28 = vmulq_f32(_Q19, _Q19);
    v29 = v28.f32[2] + vaddv_f32(*v28.f32);
    v30 = 0uLL;
    if (fabsf(v29) >= 1.0e-10)
    {
      v31 = v29;
      v32 = vrsqrte_f32(LODWORD(v29));
      v33 = vmul_f32(v32, vrsqrts_f32(LODWORD(v31), vmul_f32(v32, v32)));
      v30 = vmulq_n_f32(v15, vmul_f32(v33, vrsqrts_f32(LODWORD(v31), vmul_f32(v33, v33))).f32[0]);
    }

    v34 = a1[16];
    v35 = vmulq_f32(v30, v34);
    if ((v35.f32[2] + vaddv_f32(*v35.f32)) < 0.0)
    {
      v26 = -v26;
    }

    if (v26 < v24)
    {
      v26 = v24;
    }

    if (v26 > a1[17].f32[1])
    {
      v26 = a1[17].f32[1];
    }

    v36 = vmulq_f32(v34, v34);
    v37 = v36.f32[2] + vaddv_f32(*v36.f32);
    if (fabsf(v37) >= 1.0e-10)
    {
      v38 = v37;
      v39 = vrsqrte_f32(LODWORD(v37));
      v40 = vmul_f32(v39, vrsqrts_f32(LODWORD(v38), vmul_f32(v39, v39)));
      v34 = vmulq_n_f32(v34, vmul_f32(v40, vrsqrts_f32(LODWORD(v38), vmul_f32(v40, v40))).f32[0]);
    }

    v67 = v34;
    v41 = __sincosf_stret(v26 * 0.5);
    v23 = v68;
    _Q19.i64[0] = vmulq_n_f32(v67, v41.__sinval).u64[0];
    _Q19.i64[1] = __PAIR64__(LODWORD(v41.__cosval), COERCE_UNSIGNED_INT(vmuls_lane_f32(v41.__sinval, v67, 2)));
    _Q5 = v74;
    v5 = v75;
    v11 = v73;
    v10 = v71;
    v7 = v72;
    v22 = v69;
    v9 = v70;
  }

  v42 = vnegq_f32(v5);
  v43 = vmlsq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL), _Q5), v10, v5);
  v44 = vaddq_f32(v43, v43);
  v45 = vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL);
  v46 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL), _Q5), v45, v10);
  v47 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v45, _Q5, 3), v5), vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL));
  v48 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), _Q5), v9, v10);
  v49 = vaddq_f32(v48, v48);
  v50 = vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL);
  v51 = vaddq_f32(v9, vmulq_laneq_f32(v50, _Q5, 3));
  v52 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL), _Q5), v50, v10);
  v53 = vaddq_f32(v47, vaddq_f32(v51, vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL)));
  v53.i32[3] = 0;
  v23.i32[3] = 0;
  v54 = vmaxnmq_f32(v53, v23);
  v54.i32[3] = 0;
  v22.i32[3] = 0;
  v55 = vminnmq_f32(v54, v22);
  v56 = vextq_s8(vuzp1q_s32(_Q5, _Q5), _Q5, 0xCuLL);
  v57 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL), v7), v55, v56);
  v58 = vaddq_f32(v57, v57);
  v59 = vextq_s8(vuzp1q_s32(v58, v58), v58, 0xCuLL);
  v60 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v59, v59), v59, 0xCuLL), v7), v59, v56);
  v61 = vaddq_f32(vaddq_f32(v55, vmulq_laneq_f32(v59, _Q5, 3)), vextq_s8(vuzp1q_s32(v60, v60), v60, 0xCuLL));
  _Q2 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q19, _Q19), _Q19, 0xCuLL), v7), _Q19, v56);
  v63 = vmlaq_laneq_f32(vmlaq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), _Q19, v11), _Q5, _Q19, 3);
  __asm { FMLA            S2, S8, V19.S[3] }

  v63.i32[3] = _Q2.i32[0];
  result = vaddq_f32(v5, v61);
  *a3 = result;
  a3[1] = v63;
  return result;
}

void re::DynamicOffsetF::step(re::DynamicOffsetF *this, float a2, int32x2_t a3)
{
  if (*(this + 528))
  {
    return;
  }

  *a3.i32 = a2;
  v184 = *this;
  v174 = *(this + 1);
  v175 = *(this + 2);
  v194 = a3;
  v4 = powf(*(this + 46), a2);
  v5 = powf(*(this + 52), *v194.i32);
  v181 = powf(*(this + 48), *v194.i32);
  LODWORD(v188) = *(this + 196);
  v169 = powf(COERCE_FLOAT(HIDWORD(*(this + 196))), *v194.i32);
  v185 = powf(v188, *v194.i32);
  LODWORD(v176) = *(this + 22);
  v189 = powf(COERCE_FLOAT(HIDWORD(*(this + 22))), *v194.i32);
  v6.f32[0] = powf(v176, *v194.i32);
  v6.f32[1] = v189;
  __asm { FMOV            V15.2S, #1.0 }

  v190 = v6;
  v177 = vsub_f32(_D15, v6);
  v12 = vmla_f32(vmul_f32(v6, *(this + 48)), v177, *(this + 96));
  *(this + 6) = v12;
  v13 = 1.0;
  v165 = (v4 * *(this + 14)) + (*(this + 26) * (1.0 - v4));
  *(this + 14) = v165;
  v14 = *(this + 7);
  v15 = *(this + 4);
  v16 = vmulq_f32(v14, v15);
  v17 = vextq_s8(v16, v16, 8uLL);
  *v16.f32 = vadd_f32(*v16.f32, *v17.f32);
  v16.f32[0] = vaddv_f32(*v16.f32);
  v17.i64[0] = 0;
  v18 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v16, v17)), 0), vnegq_f32(v15), v15);
  v19 = 1.0 - v5;
  v20 = vsubq_f32(v14, v18);
  v21 = vmulq_f32(v20, v20);
  v162 = v18;
  v163 = v14;
  v22 = vaddq_f32(v14, v18);
  v23 = vmulq_f32(v22, v22);
  v24 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v21.i8, *&vextq_s8(v21, v21, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v23.i8, *&vextq_s8(v23, v23, 8uLL)))));
  v25 = v24 + v24;
  _ZF = (v24 + v24) == 0.0;
  v26 = 1.0;
  if (!_ZF)
  {
    v26 = sinf(v25) / v25;
  }

  v27 = v26;
  v28 = vrecpe_f32(LODWORD(v26));
  v29 = vmul_f32(v28, vrecps_f32(LODWORD(v27), v28));
  LODWORD(v30) = vmul_f32(v29, vrecps_f32(LODWORD(v27), v29)).u32[0];
  if ((v19 * v25) != 0.0)
  {
    v158 = v30;
    v31 = sinf(v19 * v25);
    v30 = v158;
    v13 = v31 / (v19 * v25);
  }

  v186 = __PAIR64__(LODWORD(v169), LODWORD(v185));
  v32 = v186;
  *v32.i32 = v19 * (v30 * v13);
  v33 = vdupq_lane_s32(v32, 0);
  v34 = v5 * v25;
  v35 = 1.0;
  if (v34 != 0.0)
  {
    v159 = v30;
    v170 = v33;
    v36 = sinf(v34);
    v33 = v170;
    v30 = v159;
    v35 = v36 / v34;
  }

  v37 = vmlaq_f32(vmulq_n_f32(v162, v5 * (v30 * v35)), v163, v33);
  v38 = vmulq_f32(v37, v37);
  v39 = vadd_f32(*v38.i8, *&vextq_s8(v38, v38, 8uLL));
  if (vaddv_f32(v39) == 0.0)
  {
    v40 = xmmword_1E30474D0;
  }

  else
  {
    v41 = vadd_f32(v39, vdup_lane_s32(v39, 1)).u32[0];
    v42 = vrsqrte_f32(v41);
    v43 = vmul_f32(v42, vrsqrts_f32(v41, vmul_f32(v42, v42)));
    v40 = vmulq_n_f32(v37, vmul_f32(v43, vrsqrts_f32(v41, vmul_f32(v43, v43))).f32[0]);
  }

  v44 = vmulq_f32(v40, v40);
  *v44.i8 = vadd_f32(*v44.i8, *&vextq_s8(v44, v44, 8uLL));
  v44.i32[0] = vadd_f32(*v44.i8, vdup_lane_s32(*v44.i8, 1)).u32[0];
  v45 = vrsqrte_f32(v44.u32[0]);
  v46 = vmul_f32(v45, vrsqrts_f32(v44.u32[0], vmul_f32(v45, v45)));
  v47 = vmulq_n_f32(v40, vmul_f32(v46, vrsqrts_f32(v44.u32[0], vmul_f32(v46, v46))).f32[0]);
  *(this + 4) = v47;
  v48 = 1.0;
  v49 = (v181 * *(this + 20)) + (*(this + 32) * (1.0 - v181));
  *(this + 20) = v49;
  v171 = _D15;
  v164 = vsub_f32(_D15, v186);
  v50 = vmla_f32(vmul_f32(v186, *(this + 84)), v164, *(this + 132));
  *(this + 84) = v50;
  v178 = vmla_f32(vmul_f32(*v184.f32, v190), v177, v12);
  *this = v178;
  v51 = (v184.f32[2] * v4) + (v165 * (1.0 - v4));
  *(this + 2) = v51;
  v52 = vmulq_f32(v174, v47);
  v53 = vextq_s8(v52, v52, 8uLL);
  *v52.f32 = vadd_f32(*v52.f32, *v53.f32);
  v52.f32[0] = vaddv_f32(*v52.f32);
  v53.i64[0] = 0;
  v166 = vnegq_f32(v174);
  v54 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v52, v53)), 0), v166, v174);
  v55 = vsubq_f32(v47, v54);
  v56 = vmulq_f32(v55, v55);
  v191 = v47;
  v167 = v54;
  v57 = vaddq_f32(v47, v54);
  v58 = vmulq_f32(v57, v57);
  v59 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v56.i8, *&vextq_s8(v56, v56, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v58.i8, *&vextq_s8(v58, v58, 8uLL)))));
  v60 = v59 + v59;
  _ZF = (v59 + v59) == 0.0;
  v61 = 1.0;
  if (!_ZF)
  {
    v61 = sinf(v60) / v60;
  }

  v62 = v61;
  v63 = vrecpe_f32(LODWORD(v61));
  v64 = vmul_f32(v63, vrecps_f32(LODWORD(v62), v63));
  LODWORD(v65) = vmul_f32(v64, vrecps_f32(LODWORD(v62), v64)).u32[0];
  if ((v19 * v60) != 0.0)
  {
    v160 = v65;
    v64.f32[0] = sinf(v19 * v60);
    v65 = v160;
    v48 = v64.f32[0] / (v19 * v60);
  }

  v64.f32[0] = v19 * (v65 * v48);
  v66 = vdupq_lane_s32(v64, 0);
  v67 = v5 * v60;
  v68 = 1.0;
  if (v67 != 0.0)
  {
    v157 = v66;
    v161 = v65;
    v69 = sinf(v67);
    v66 = v157;
    v65 = v161;
    v68 = v69 / v67;
  }

  v70 = vmlaq_f32(vmulq_n_f32(v167, v5 * (v65 * v68)), v191, v66);
  v71 = vmulq_f32(v70, v70);
  v72 = vadd_f32(*v71.i8, *&vextq_s8(v71, v71, 8uLL));
  if (vaddv_f32(v72) == 0.0)
  {
    v73 = xmmword_1E30474D0;
  }

  else
  {
    v74 = vadd_f32(v72, vdup_lane_s32(v72, 1)).u32[0];
    v75 = vrsqrte_f32(v74);
    v76 = vmul_f32(v75, vrsqrts_f32(v74, vmul_f32(v75, v75)));
    v73 = vmulq_n_f32(v70, vmul_f32(v76, vrsqrts_f32(v74, vmul_f32(v76, v76))).f32[0]);
  }

  v77 = vmulq_f32(v73, v73);
  *v77.i8 = vadd_f32(*v77.i8, *&vextq_s8(v77, v77, 8uLL));
  v77.i32[0] = vadd_f32(*v77.i8, vdup_lane_s32(*v77.i8, 1)).u32[0];
  v78 = vrsqrte_f32(v77.u32[0]);
  v79 = vmul_f32(v78, vrsqrts_f32(v77.u32[0], vmul_f32(v78, v78)));
  v192 = vmulq_n_f32(v73, vmul_f32(v79, vrsqrts_f32(v77.u32[0], vmul_f32(v79, v79))).f32[0]);
  *(this + 1) = v192;
  *(this + 8) = (v175.f32[0] * v181) + (v49 * (1.0 - v181));
  v80 = vmla_f32(vmul_f32(*&vextq_s8(v175, v175, 4uLL), v186), v164, v50);
  *(this + 36) = v80;
  re::DynamicOffsetF::calculateConstrainedPose(this, this, &v196);
  v81 = *(this + 2);
  v187 = v81;
  v81.i32[3] = 0;
  v82 = *(this + 18);
  v84 = *(this + 19);
  v82.i32[3] = 0;
  v83 = vmaxnmq_f32(v81, v82);
  v83.i32[3] = 0;
  v84.i32[3] = 0;
  v85 = v196.f32[0];
  if (v178.f32[0] != v196.f32[0] && vabds_f32(v178.f32[0], v196.f32[0]) >= (((fabsf(v178.f32[0]) + fabsf(v196.f32[0])) + 1.0) * 0.00001))
  {
    v86 = v171;
LABEL_28:
    v87 = *(this + 89);
    v88 = *(this + 90);
    v182 = v84;
    v172 = v83;
    v89 = powf(1.0 - *(this + 88), *v194.i32);
    *(this + 24) = (v85 * v89) + (v178.f32[0] * (1.0 - v89));
    _S1 = 1.0 - powf(1.0 - v87, *v194.i32);
    _V2.S[1] = v178.i32[1];
    __asm { FMLA            S0, S1, V2.S[1] }

    *(this + 25) = _S0;
    v93 = v196.f32[2];
    v94 = powf(1.0 - v88, *v194.i32);
    v83 = v172;
    v84 = v182;
    *(this + 26) = (v94 * v93) + (v51 * (1.0 - v94));
    goto LABEL_29;
  }

  v86 = v171;
  if (v178.f32[1] != v196.f32[1] && vabds_f32(v178.f32[1], v196.f32[1]) >= (((fabsf(v178.f32[1]) + fabsf(v196.f32[1])) + 1.0) * 0.00001) || v51 != v196.f32[2] && vabds_f32(v51, v196.f32[2]) >= (((fabsf(v51) + fabsf(v196.f32[2])) + 1.0) * 0.00001))
  {
    goto LABEL_28;
  }

LABEL_29:
  v95 = vminnmq_f32(v83, v84);
  v183 = v95;
  if (v192.f32[0] != v197.f32[0] && vabds_f32(v192.f32[0], v197.f32[0]) >= (((fabsf(v192.f32[0]) + fabsf(v197.f32[0])) + 1.0) * 0.00001) || v192.f32[1] != v197.f32[1] && vabds_f32(v192.f32[1], v197.f32[1]) >= (((fabsf(v192.f32[1]) + fabsf(v197.f32[1])) + 1.0) * 0.00001) || v192.f32[2] != v197.f32[2] && vabds_f32(v192.f32[2], v197.f32[2]) >= (((fabsf(v192.f32[2]) + fabsf(v197.f32[2])) + 1.0) * 0.00001) || v192.f32[3] != v197.f32[3] && vabds_f32(v192.f32[3], v197.f32[3]) >= (((fabsf(v192.f32[3]) + fabsf(v197.f32[3])) + 1.0) * 0.00001))
  {
    v96 = powf(1.0 - *(this + 94), *v194.i32);
    v97 = v197.f32[3];
    v98 = fabsf(v197.f32[3]);
    if (v98 <= 1.0 || fabsf(v98 + -1.0) < (((v98 + 1.0) + 1.0) * 0.00001))
    {
      if (v197.f32[3] > 1.0)
      {
        v97 = 1.0;
      }

      if (v97 < -1.0)
      {
        v97 = -1.0;
      }

      v100 = acosf(v97);
      v99 = v100 + v100;
    }

    else
    {
      v99 = NAN;
    }

    v101 = vmulq_f32(v197, v197);
    v102 = v101.f32[2] + vaddv_f32(*v101.f32);
    v103 = 0uLL;
    if (fabsf(v102) >= 1.0e-10)
    {
      v104 = v102;
      v105 = vrsqrte_f32(LODWORD(v102));
      v106 = vmul_f32(v105, vrsqrts_f32(LODWORD(v104), vmul_f32(v105, v105)));
      v103 = vmulq_n_f32(v197, vmul_f32(v106, vrsqrts_f32(LODWORD(v104), vmul_f32(v106, v106))).f32[0]);
    }

    v107 = *(this + 16);
    v108 = vmulq_f32(v103, v107);
    if ((v108.f32[2] + vaddv_f32(*v108.f32)) >= 0.0)
    {
      v109 = v99;
    }

    else
    {
      v109 = -v99;
    }

    v110 = fabsf(v192.f32[3]);
    v111 = 1.0;
    v179 = *(this + 16);
    if (v110 <= 1.0 || fabsf(v110 + -1.0) < (((v110 + 1.0) + 1.0) * 0.00001))
    {
      if (v192.f32[3] <= 1.0)
      {
        v111 = v192.f32[3];
      }

      if (v111 < -1.0)
      {
        v111 = -1.0;
      }

      v113 = acosf(v111);
      v107 = v179;
      v112 = v113 + v113;
    }

    else
    {
      v112 = NAN;
    }

    v114 = vmulq_f32(v192, v192);
    v115 = v114.f32[2] + vaddv_f32(*v114.f32);
    v116 = 0uLL;
    if (fabsf(v115) >= 1.0e-10)
    {
      v117 = v115;
      v118 = vrsqrte_f32(LODWORD(v115));
      v119 = vmul_f32(v118, vrsqrts_f32(LODWORD(v117), vmul_f32(v118, v118)));
      v116 = vmulq_n_f32(v192, vmul_f32(v119, vrsqrts_f32(LODWORD(v117), vmul_f32(v119, v119))).f32[0]);
    }

    v120 = vmulq_f32(v107, v116);
    if ((v120.f32[2] + vaddv_f32(*v120.f32)) < 0.0)
    {
      v112 = -v112;
    }

    v121 = (v96 * v109) + (v112 * (1.0 - v96));
    v122 = vmulq_f32(v107, v107);
    v123 = v122.f32[2] + vaddv_f32(*v122.f32);
    if (fabsf(v123) >= 1.0e-10)
    {
      v124 = v123;
      v125 = vrsqrte_f32(LODWORD(v123));
      v126 = vmul_f32(v125, vrsqrts_f32(LODWORD(v124), vmul_f32(v125, v125)));
      v179 = vmulq_n_f32(v107, vmul_f32(v126, vrsqrts_f32(LODWORD(v124), vmul_f32(v126, v126))).f32[0]);
    }

    v127 = __sincosf_stret(v121 * 0.5);
    v95 = v183;
    *&v128 = vmulq_n_f32(v179, v127.__sinval).u64[0];
    *(&v128 + 1) = __PAIR64__(LODWORD(v127.__cosval), COERCE_UNSIGNED_INT(vmuls_lane_f32(v127.__sinval, v179, 2)));
    *(this + 7) = v128;
  }

  v129 = v187;
  if ((vmovn_s32(vceqq_f32(v187, v95)).u8[0] & 1) == 0 && fabsf(vsubq_f32(v187, v95).f32[0]) >= (((fabsf(v187.f32[0]) + fabsf(v95.f32[0])) + 1.0) * 0.00001) || v187.f32[1] != v95.f32[1] && vabds_f32(v187.f32[1], v95.f32[1]) >= (((fabsf(v187.f32[1]) + fabsf(v95.f32[1])) + 1.0) * 0.00001) || v187.f32[2] != v95.f32[2] && vabds_f32(v187.f32[2], v95.f32[2]) >= (((fabsf(v187.f32[2]) + fabsf(v95.f32[2])) + 1.0) * 0.00001))
  {
    v180 = vdup_lane_s32(v194, 0);
    v130 = powf(1.0 - *(this + 104), *v194.i32);
    *(this + 32) = (*v183.i32 * v130) + (v187.f32[0] * (1.0 - v130));
    v131 = vsub_f32(v86, *(this + 420));
    v168 = v131.f32[0];
    v173 = powf(v131.f32[1], *&v180.i32[1]);
    v132.f32[0] = powf(v168, *v180.i32);
    v129 = v187;
    v132.f32[1] = v173;
    *(this + 132) = vmla_f32(vmul_f32(*&vextq_s8(v183, v183, 4uLL), v132), vsub_f32(v86, v132), v80);
  }

  if (*v194.i32 > 0.0)
  {
    *(this + 27) = vdivq_f32(vsubq_f32(*this, v184), vdupq_lane_s32(v194, 0));
    v133 = vmulq_f32(v174, v174);
    v134 = vaddv_f32(vadd_f32(*v133.i8, *&vextq_s8(v133, v133, 8uLL)));
    v135 = 1.0;
    v136 = 1.0 / v134;
    v137 = vmuls_lane_f32(v136, v174, 3);
    v138 = vmulq_n_f32(v166, v136);
    v139 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v192, v192), v192, 0xCuLL), vnegq_f32(v138)), v192, vextq_s8(vuzp1q_s32(v138, v138), v138, 0xCuLL));
    v140 = vmlaq_laneq_f32(vmlaq_n_f32(vextq_s8(vuzp1q_s32(v139, v139), v139, 0xCuLL), v192, v137), v138, v192, 3);
    v141 = vmulq_f32(v138, v192);
    v140.f32[3] = -((v141.f32[2] + vaddv_f32(*v141.f32)) - (v137 * v192.f32[3]));
    v142 = vmulq_f32(v140, v140);
    *v142.i8 = vadd_f32(*v142.i8, *&vextq_s8(v142, v142, 8uLL));
    v142.i32[0] = vadd_f32(*v142.i8, vdup_lane_s32(*v142.i8, 1)).u32[0];
    v143 = vrsqrte_f32(v142.u32[0]);
    v144 = vmul_f32(v143, vrsqrts_f32(v142.u32[0], vmul_f32(v143, v143)));
    v145 = vmulq_n_f32(v140, vmul_f32(v144, vrsqrts_f32(v142.u32[0], vmul_f32(v144, v144))).f32[0]);
    v146 = fabsf(v145.f32[3]);
    v147 = vdupq_lane_s32(v194, 0);
    if (v146 <= 1.0 || fabsf(v146 + -1.0) < (((v146 + 1.0) + 1.0) * 0.00001))
    {
      if (v145.f32[3] <= 1.0)
      {
        v135 = v145.f32[3];
      }

      if (v135 < -1.0)
      {
        v135 = -1.0;
      }

      v193 = v145;
      v195 = v147;
      v149 = acosf(v135);
      v145 = v193;
      v147 = v195;
      v129 = v187;
      v148 = v149 + v149;
      v150 = 0uLL;
      if (v148 == 0.0)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v148 = NAN;
    }

    v151 = vmulq_f32(v145, v145);
    v152 = v151.f32[2] + vaddv_f32(*v151.f32);
    v153 = 0uLL;
    if (fabsf(v152) >= 1.0e-10)
    {
      v154 = v152;
      v155 = vrsqrte_f32(LODWORD(v152));
      v156 = vmul_f32(v155, vrsqrts_f32(LODWORD(v154), vmul_f32(v155, v155)));
      v153 = vmulq_n_f32(v145, vmul_f32(v156, vrsqrts_f32(LODWORD(v154), vmul_f32(v156, v156))).f32[0]);
    }

    v150 = vdivq_f32(vmulq_n_f32(v153, v148), v147);
LABEL_84:
    *(this + 28) = v150;
    *(this + 29) = vdivq_f32(vsubq_f32(v129, v175), v147);
  }
}

void re::DynamicOffsetF::updateInteraction(uint64_t a1, uint64_t a2, float32x4_t *a3, double a4)
{
  v91 = *a1;
  v93 = *(a1 + 16);
  v5 = (a1 + 32);
  v95 = *(a1 + 32);
  v6 = *(a2 + 16);
  v101 = *a2;
  v102 = v6;
  v100 = *a3;
  re::DynamicOffsetF::calculateConstrainedPose(a1, &v101, &v98);
  v7 = v100;
  v8 = v100;
  v8.i32[3] = 0;
  v9 = *(a1 + 288);
  v10 = *(a1 + 304);
  v9.i32[3] = 0;
  v11 = vmaxnmq_f32(v8, v9);
  v11.i32[3] = 0;
  v10.i32[3] = 0;
  v12 = vminnmq_f32(v11, v10);
  v97 = v12;
  if (v98.f32[0] != v101.f32[0] && vabds_f32(v98.f32[0], v101.f32[0]) >= (((fabsf(v98.f32[0]) + fabsf(v101.f32[0])) + 1.0) * 0.00001) || v98.f32[1] != v101.f32[1] && vabds_f32(v98.f32[1], v101.f32[1]) >= (((fabsf(v98.f32[1]) + fabsf(v101.f32[1])) + 1.0) * 0.00001) || v98.f32[2] != v101.f32[2] && vabds_f32(v98.f32[2], v101.f32[2]) >= (((fabsf(v98.f32[2]) + fabsf(v101.f32[2])) + 1.0) * 0.00001))
  {
    v13 = (a1 + 336);
    v14 = &v101;
    v15 = &v98;
    v16 = 3;
    do
    {
      v17 = *(v13 - 4);
      if (v17 > 0.0)
      {
        if (v15->f32[0] > v14->f32[0])
        {
          v17 = -v17;
        }

        v14->f32[0] = v14->f32[0] + ((((-1.0 / (((v15->f32[0] - v14->f32[0]) / v17) + -1.0)) + -1.0) / *v13) / v17);
      }

      ++v13;
      v14 = (v14 + 4);
      v15 = (v15 + 4);
      --v16;
    }

    while (v16);
  }

  if (v99.f32[0] != *&v102 && vabds_f32(v99.f32[0], *&v102) >= (((fabsf(v99.f32[0]) + fabsf(*&v102)) + 1.0) * 0.00001) || v99.f32[1] != *(&v102 + 1) && vabds_f32(v99.f32[1], *(&v102 + 1)) >= (((fabsf(v99.f32[1]) + fabsf(*(&v102 + 1))) + 1.0) * 0.00001) || v99.f32[2] != *(&v102 + 2) && vabds_f32(v99.f32[2], *(&v102 + 2)) >= (((fabsf(v99.f32[2]) + fabsf(*(&v102 + 2))) + 1.0) * 0.00001) || v99.f32[3] != *(&v102 + 3) && vabds_f32(v99.f32[3], *(&v102 + 3)) >= (((fabsf(v99.f32[3]) + fabsf(*(&v102 + 3))) + 1.0) * 0.00001))
  {
    v18 = *(a1 + 368);
    if (v18 > 0.0)
    {
      v89 = v12;
      v90 = v7;
      v19 = v99.f32[3];
      v20 = fabsf(v99.f32[3]);
      if (v20 <= 1.0 || fabsf(v20 + -1.0) < (((v20 + 1.0) + 1.0) * 0.00001))
      {
        if (v99.f32[3] > 1.0)
        {
          v19 = 1.0;
        }

        if (v19 < -1.0)
        {
          v19 = -1.0;
        }

        v22 = acosf(v19);
        v21 = v22 + v22;
      }

      else
      {
        v21 = NAN;
      }

      v23 = vmulq_f32(v99, v99);
      v24 = v23.f32[2] + vaddv_f32(*v23.f32);
      v25 = 0uLL;
      if (fabsf(v24) >= 1.0e-10)
      {
        v26 = v24;
        v27 = vrsqrte_f32(LODWORD(v24));
        v28 = vmul_f32(v27, vrsqrts_f32(LODWORD(v26), vmul_f32(v27, v27)));
        v25 = vmulq_n_f32(v99, vmul_f32(v28, vrsqrts_f32(LODWORD(v26), vmul_f32(v28, v28))).f32[0]);
      }

      v29 = *(&v102 + 3);
      v30 = fabsf(*(&v102 + 3));
      if (v30 <= 1.0 || fabsf(v30 + -1.0) < (((v30 + 1.0) + 1.0) * 0.00001))
      {
        if (*(&v102 + 3) > 1.0)
        {
          v29 = 1.0;
        }

        if (v29 < -1.0)
        {
          v29 = -1.0;
        }

        v87 = v25;
        v32 = acosf(v29);
        v25 = v87;
        v31 = v32 + v32;
      }

      else
      {
        v31 = NAN;
      }

      v33 = *(a1 + 256);
      v34 = vmulq_f32(v25, v33);
      if ((v34.f32[2] + vaddv_f32(*v34.f32)) < 0.0)
      {
        v31 = -v31;
      }

      v35 = -v18;
      if (v21 <= v31)
      {
        v35 = v18;
      }

      v36 = v31 + ((((-1.0 / (((v21 - v31) / v35) + -1.0)) + -1.0) / *(a1 + 372)) / v35);
      v37 = vmulq_f32(v33, v33);
      v38 = v37.f32[2] + vaddv_f32(*v37.f32);
      if (fabsf(v38) >= 1.0e-10)
      {
        v39 = v38;
        v40 = vrsqrte_f32(LODWORD(v38));
        v41 = vmul_f32(v40, vrsqrts_f32(LODWORD(v39), vmul_f32(v40, v40)));
        v33 = vmulq_n_f32(v33, vmul_f32(v41, vrsqrts_f32(LODWORD(v39), vmul_f32(v41, v41))).f32[0]);
      }

      v88 = v33;
      v42 = __sincosf_stret(v36 * 0.5);
      v12 = v89;
      *&v43 = vmulq_n_f32(v88, v42.__sinval).u64[0];
      *(&v43 + 1) = __PAIR64__(LODWORD(v42.__cosval), COERCE_UNSIGNED_INT(vmuls_lane_f32(v42.__sinval, v88, 2)));
      v102 = v43;
      v7 = v90;
    }
  }

  if ((vmovn_s32(vceqq_f32(v12, v7)).u8[0] & 1) == 0 && fabsf(vsubq_f32(v12, v7).f32[0]) >= (((fabsf(v7.f32[0]) + fabsf(v12.f32[0])) + 1.0) * 0.00001) || v12.f32[1] != v7.f32[1] && vabds_f32(v12.f32[1], v7.f32[1]) >= (((fabsf(v7.f32[1]) + fabsf(v12.f32[1])) + 1.0) * 0.00001) || v12.f32[2] != v7.f32[2] && vabds_f32(v12.f32[2], v7.f32[2]) >= (((fabsf(v7.f32[2]) + fabsf(v12.f32[2])) + 1.0) * 0.00001))
  {
    v44 = (a1 + 400);
    v45 = &v100;
    v46 = &v97;
    v47 = 3;
    do
    {
      v48 = *(v44 - 4);
      if (v48 > 0.0)
      {
        if (*v46 > *v45)
        {
          v48 = -v48;
        }

        *v45 = *v45 + ((((-1.0 / (((*v46 - *v45) / v48) + -1.0)) + -1.0) / *v44) / v48);
      }

      ++v44;
      ++v45;
      ++v46;
      --v47;
    }

    while (v47);
  }

  v49 = v102;
  *a1 = v101;
  *(a1 + 16) = v49;
  *v5 = v100;
  if (*&a4 > 0.0)
  {
    v50 = vdupq_lane_s32(*&a4, 0);
    v51 = vdivq_f32(vsubq_f32(*a1, v91), v50);
    v52 = vmulq_f32(v51, v51);
    if (sqrtf(v52.f32[2] + vaddv_f32(*v52.f32)) > 0.008)
    {
      __asm { FMOV            V2.4S, #0.25 }

      v58 = vmulq_f32(*(a1 + 432), _Q2);
      __asm { FMOV            V2.4S, #0.75 }

      *(a1 + 480) = *(a1 + 432);
      *(a1 + 432) = vmlaq_f32(v58, _Q2, v51);
    }

    v60 = vmulq_f32(v93, v93);
    v61 = vaddv_f32(vadd_f32(*v60.i8, *&vextq_s8(v60, v60, 8uLL)));
    v62 = 1.0;
    v63 = 1.0 / v61;
    _S2 = vmuls_lane_f32(v63, v93, 3);
    _Q1 = vmulq_n_f32(vnegq_f32(v93), v63);
    _Q3 = *(a1 + 16);
    v67 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), vnegq_f32(_Q1)), _Q3, vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL));
    v68 = vmlaq_laneq_f32(vmlaq_n_f32(vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL), _Q3, _S2), _Q1, _Q3, 3);
    __asm { FMLA            S1, S2, V3.S[3] }

    v68.i32[3] = _Q1.i32[0];
    v69 = vmulq_f32(v68, v68);
    *v69.i8 = vadd_f32(*v69.i8, *&vextq_s8(v69, v69, 8uLL));
    v69.i32[0] = vadd_f32(*v69.i8, vdup_lane_s32(*v69.i8, 1)).u32[0];
    v70 = vrsqrte_f32(v69.u32[0]);
    v71 = vmul_f32(v70, vrsqrts_f32(v69.u32[0], vmul_f32(v70, v70)));
    v72 = vmulq_n_f32(v68, vmul_f32(v71, vrsqrts_f32(v69.u32[0], vmul_f32(v71, v71))).f32[0]);
    v73 = fabsf(v72.f32[3]);
    if (v73 <= 1.0 || fabsf(v73 + -1.0) < (((v73 + 1.0) + 1.0) * 0.00001))
    {
      if (v72.f32[3] <= 1.0)
      {
        v62 = v72.f32[3];
      }

      if (v62 < -1.0)
      {
        v62 = -1.0;
      }

      v92 = v72;
      v94 = v50;
      v75 = acosf(v62);
      v72 = v92;
      v50 = v94;
      v74 = v75 + v75;
    }

    else
    {
      v74 = NAN;
    }

    if (v74 > 0.008)
    {
      v76 = vmulq_f32(v72, v72);
      v77 = v76.f32[2] + vaddv_f32(*v76.f32);
      v78 = 0uLL;
      if (fabsf(v77) >= 1.0e-10)
      {
        v79 = v77;
        v80 = vrsqrte_f32(LODWORD(v77));
        v81 = vmul_f32(v80, vrsqrts_f32(LODWORD(v79), vmul_f32(v80, v80)));
        v78 = vmulq_n_f32(v72, vmul_f32(v81, vrsqrts_f32(LODWORD(v79), vmul_f32(v81, v81))).f32[0]);
      }

      *(a1 + 496) = *(a1 + 448);
      *(a1 + 448) = vdivq_f32(vmulq_n_f32(v78, v74), vdupq_lane_s32(*&a4, 0));
    }

    v82 = vdivq_f32(vsubq_f32(*v5, v95), v50);
    v83 = vmulq_f32(v82, v82);
    if (sqrtf(v83.f32[2] + vaddv_f32(*v83.f32)) > 0.008)
    {
      __asm { FMOV            V2.4S, #0.25 }

      v85 = vmulq_f32(*(a1 + 464), _Q2);
      __asm { FMOV            V2.4S, #0.75 }

      *(a1 + 512) = *(a1 + 464);
      *(a1 + 464) = vmlaq_f32(v85, _Q2, v82);
    }
  }
}

__n128 re::DynamicOffsetF::endInteraction(float32x4_t *this, float a2)
{
  __asm
  {
    FMOV            V1.4S, #0.25
    FMOV            V4.4S, #0.75
  }

  if (!_ZF)
  {
    this[27] = vmlaq_f32(vmulq_f32(this[30], _Q1), _Q4, this[27]);
  }

  if (this[31].f32[0] != 3.4028e38)
  {
    this[28] = vmlaq_f32(vmulq_f32(this[31], _Q1), _Q4, this[28]);
  }

  if (this[32].f32[0] != 3.4028e38)
  {
    this[29] = vmlaq_f32(vmulq_f32(this[32], _Q1), _Q4, this[29]);
  }

  this[3] = vaddq_f32(*this, vmulq_n_f32(this[27], a2));
  v9 = this + 3;
  v10 = this[28];
  v11 = vmulq_f32(v10, v10);
  v11.f32[0] = sqrtf(v11.f32[2] + vaddv_f32(*v11.f32));
  if (v11.f32[0] == 0.0)
  {
    this[4] = this[1];
  }

  else
  {
    v12 = vdivq_f32(v10, vdupq_lane_s32(*v11.f32, 0));
    v29 = a2;
    v13 = v11.f32[0] * a2;
    v14 = vmulq_f32(v12, v12);
    v15 = v14.f32[2] + vaddv_f32(*v14.f32);
    if (fabsf(v15) >= 1.0e-10)
    {
      v16 = v15;
      v17 = vrsqrte_f32(LODWORD(v15));
      v18 = vmul_f32(v17, vrsqrts_f32(LODWORD(v16), vmul_f32(v17, v17)));
      v12 = vmulq_n_f32(v12, vmul_f32(v18, vrsqrts_f32(LODWORD(v16), vmul_f32(v18, v18))).f32[0]);
    }

    v28 = v12;
    v20 = __sincosf_stret(v13 * 0.5);
    _S1 = v20.__cosval;
    _Q2 = vmulq_n_f32(v28, v20.__sinval);
    _Q2.i32[2] = vmuls_lane_f32(v20.__sinval, v28, 2);
    _Q0 = this[1];
    v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL), vnegq_f32(_Q2)), _Q0, vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL));
    v24 = vmlaq_laneq_f32(vmlaq_n_f32(vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), _Q0, v20.__cosval), _Q2, _Q0, 3);
    __asm { FMLA            S2, S1, V0.S[3] }

    v24.i32[3] = _Q2.i32[0];
    this[4] = v24;
    a2 = v29;
  }

  v25 = *v9;
  v26 = this[4];
  this[5] = vaddq_f32(this[2], vmulq_n_f32(this[29], a2));
  this[6] = v25;
  result = this[5];
  this[7] = v26;
  this[8] = result;
  this[33].i8[0] = 0;
  return result;
}

float re::computeSVD3x3(float32x2_t *a1, _OWORD *a2, _OWORD *a3, _OWORD *a4, double *a5, double *a6, double *a7)
{
  v40 = *MEMORY[0x1E69E9840];
  v34 = vcvtq_f64_f32(*a1);
  v10 = a1[1].f32[0];
  v36 = vcvtq_f64_f32(a1[2]);
  v11 = a1[3].f32[0];
  v35 = v10;
  v37 = v11;
  v38 = vcvtq_f64_f32(a1[4]);
  v39 = a1[5].f32[0];
  {
    *&v13 = vcvt_f32_f64(v28);
    *&v14 = v29;
    *(&v13 + 1) = __PAIR64__(HIDWORD(v28.f64[1]), v14);
    *&v15 = vcvt_f32_f64(v30);
    *&v16 = v31;
    *(&v15 + 1) = __PAIR64__(HIDWORD(v30.f64[1]), v16);
    *&v17 = vcvt_f32_f64(v32);
    *&v18 = v33;
    *(&v17 + 1) = __PAIR64__(HIDWORD(v32.f64[1]), v18);
    *a2 = v13;
    a2[1] = v15;
    a2[2] = v17;
    *&v15 = vcvt_f32_f64(v22);
    *&v13 = v23;
    *(&v15 + 1) = __PAIR64__(HIDWORD(v22.f64[1]), v13);
    *&v19 = vcvt_f32_f64(v24);
    *&v13 = v25;
    *(&v19 + 1) = __PAIR64__(HIDWORD(v24.f64[1]), v13);
    *a4 = v15;
    a4[1] = v19;
    *&v15 = vcvt_f32_f64(v26);
    *&v13 = v27;
    *(&v15 + 1) = __PAIR64__(HIDWORD(v26.f64[1]), v13);
    a4[2] = v15;
    *&v15 = vcvt_f32_f64(v20);
    result = v21;
    *(&v15 + 1) = __PAIR64__(HIDWORD(v20.f64[1]), LODWORD(result));
    *a3 = v15;
  }

  return result;
}

uint64_t re::anonymous namespace::computeSVD(re::_anonymous_namespace_ *this, unsigned __int16 a2, unsigned __int16 a3, double *a4, double *a5, double *a6, double *a7)
{
  v7 = dgesvd_NEWLAPACK();
  MEMORY[0x1EEE9AC00](v7);
  dgesvd_NEWLAPACK();
  return 1;
}

void re::OPackReader::Buffer::~Buffer(re::OPackReader::Buffer *this)
{
  v2 = *this;
  if (*this != (this + 32))
  {
    if (v2)
    {
      v3 = re::globalAllocators(this);
      (*(*v3[2] + 40))(v3[2], v2);
    }

    *this = 0;
  }
}

uint64_t re::OPackReader::Buffer::resize(re::OPackReader::Buffer *this, unint64_t a2)
{
  if (*(this + 2) - *this > a2)
  {
    return 1;
  }

  if (*(this + 3) < a2)
  {
    return 0;
  }

  v5 = re::globalAllocators(this);
  result = (*(*v5[2] + 32))(v5[2], a2, 0);
  if (result)
  {
    v6 = result;
    v8 = *this;
    v7 = *(this + 1);
    v9 = v7 - *this;
    if (v7 != *this)
    {
      result = memcpy(result, *this, v7 - *this);
    }

    if (v8 != (this + 32))
    {
      if (v8)
      {
        v10 = re::globalAllocators(result);
        (*(*v10[2] + 40))(v10[2], v8);
      }
    }

    *this = v6;
    *(this + 1) = v6 + v9;
    *(this + 2) = v6 + a2;
    return 1;
  }

  return result;
}

uint64_t re::OPackReader::OPackReader(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 128;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = &unk_1F5D0CA50;
  *(a1 + 64) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 160) = a1 + 96;
  *(a1 + 168) = a1 + 96;
  *(a1 + 176) = a1 + 160;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 224) = 0;
  *(a1 + 216) = 0;
  *(a1 + 240) = a1 + 272;
  *(a1 + 248) = a1 + 272;
  v3 = (a1 + 336);
  *(a1 + 256) = a1 + 336;
  *(a1 + 264) = -1;
  *(a1 + 368) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 336) = 0;
  *(a1 + 196) = 0;
  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((a1 + 336), 0x80uLL);
  v5.n128_u16[0] = 0;
  v5.n128_u64[1] = 0;
  v6 = 0;
  re::DynamicArray<re::BufferView>::add(v3, &v5);
  return a1;
}

uint64_t re::OPackReader::next(re::OPackReader *this, uint64_t a2)
{
  if (*(this + 2) == 1)
  {
    *(this + 2) = 0;
    return 1;
  }

  if (*(this + 1) & 1) != 0 || (*this)
  {
    return 0;
  }

  v4 = *(*(this + 46) + 24 * *(this + 44) - 24);
  if (v4 <= 2)
  {
    if (*(*(this + 46) + 24 * *(this + 44) - 24))
    {
      if (v4 == 1)
      {

        return re::OPackReader::readArray(this);
      }

      else
      {

        return re::OPackReader::readDictionary(this);
      }
    }

    else
    {
      result = re::OPackReader::readObject(this, 0);
      if (result)
      {
        result = 1;
        if (*(this + 44) == 1)
        {
          *this = 1;
        }
      }
    }
  }

  else if (*(*(this + 46) + 24 * *(this + 44) - 24) > 5u)
  {
    if (v4 == 6)
    {
      result = 0;
      *(this + 1) = 1;
      *(this + 1) = "unimplemented";
      return result;
    }

    if (v4 != 7)
    {
      goto LABEL_34;
    }

    return re::OPackReader::readExtDictionaryDelta(this);
  }

  else
  {
    if (v4 != 3)
    {
      if (v4 == 5)
      {

        return re::OPackReader::readExtArrayDelta(this);
      }

LABEL_34:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "next", 158);
      result = _os_crash();
      __break(1u);
      return result;
    }

    return re::OPackReader::readChunkedData(this);
  }

  return result;
}