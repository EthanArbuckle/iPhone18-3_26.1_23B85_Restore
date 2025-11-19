void **re::TypeInfo::getActualTypeFromPointer@<X0>(void **this@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = this[2];
  if ((*(v4 + 25) & 0xFFFFFF) != 0 && *(v4 + 26) && (v6 = this, re::TypeRegistry::typeInfo(*this, v4[12], v27), re::TypeInfo::TypeInfo(v18, &v27[8]), Unsigned = re::internal::readUnsigned(&a2[*(v6[2] + 26)], v18, v7), re::TypeRegistry::typeInfo(*v6, v6[2][10], v27), re::TypeInfo::TypeInfo(&v19, &v27[8]), re::TypeInfo::rootClass(&v19, v16), this = re::DataArray<re::internal::TypeInfoIndex>::get((*v6 + 4), *v17), v9 = *(v17 + 88), v9))
  {
    v10 = *this & 0xFFFFFF;
    v11 = *v6;
    v12 = (*v6)[78];
    while (1)
    {
      v13 = v10;
      if (v12 <= v10)
      {
        v18[4] = 0;
        memset(v27, 0, 80);
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v19 = 136315906;
        v20 = "operator[]";
        v21 = 1024;
        v22 = 797;
        v23 = 2048;
        v24 = v13;
        v25 = 2048;
        v26 = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v14 = *(v11 + 640) + 176 * v10;
      if (*(v14 + 128) == 1 && *(v14 + 136) == Unsigned)
      {
        break;
      }

      v10 = v13 + 1;
      if (!--v9)
      {
        goto LABEL_9;
      }
    }

    v15 = *v14;
    *a3 = v11;
    a3[1] = v15;
  }

  else
  {
LABEL_9:
    *a3 = 0;
    a3[1] = 0xFFFFFFFFLL;
  }

  return this;
}

_DWORD *re::TypeInfo::getActualType@<X0>(re::TypeInfo *this@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = *(*(this + 2) + 152);
  if (v6)
  {

    return v6(a2, this);
  }

  else
  {
    re::TypeInfo::rootClass(this, v22);
    result = re::TypeInfo::customClassIDMember(v22, v19);
    if (v19[0] == 1 && (v8 = v21, re::TypeRegistry::typeInfo(v20, *v21, v33), re::TypeInfo::TypeInfo(v18, v33 + 8), Unsigned = re::internal::readUnsigned(&a2[*(v8 + 6)], v18, v9), result = re::DataArray<re::internal::TypeInfoIndex>::get(*this + 32, *v23), v11 = *(v23 + 88), v11))
    {
      v12 = *result & 0xFFFFFF;
      v13 = *this;
      v14 = *(*this + 624);
      while (1)
      {
        v15 = v12;
        if (v14 <= v12)
        {
          v24 = 0;
          memset(v33, 0, sizeof(v33));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v25 = 136315906;
          v26 = "operator[]";
          v27 = 1024;
          v28 = 797;
          v29 = 2048;
          v30 = v15;
          v31 = 2048;
          v32 = v14;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v16 = *(v13 + 640) + 176 * v12;
        if (*(v16 + 128) == 1 && *(v16 + 136) == Unsigned)
        {
          break;
        }

        v12 = v15 + 1;
        if (!--v11)
        {
          goto LABEL_12;
        }
      }

      v17 = *v16;
      *a3 = v13;
      a3[1] = v17;
    }

    else
    {
LABEL_12:
      *a3 = 0;
      a3[1] = 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t re::TypeInfo::isInteger(re::TypeInfo *this)
{
  v3 = *(this + 12);
  if (v3 == 2)
  {
    v7[6] = v1;
    v7[7] = v2;
    re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), v6);
    re::TypeInfo::TypeInfo(v5, v7);
    return re::TypeInfo::isInteger(v5);
  }

  else
  {
    return v3 == 1 && *(*(this + 2) + 80) == 1;
  }
}

uint64_t re::TypeInfo::renamedEnumConstants(re::TypeInfo *this)
{
  v1 = *(this + 2);
  if (!v1[24])
  {
    return 0;
  }

  v2 = (v1[23] + v1[22]);
  if (*(*this + 344) <= v2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*this + 360) + 24 * v2;
}

uint64_t re::TypeInfo::unionMember@<X0>(re::TypeInfo *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = *this;
  v6 = *(*(this + 2) + 92) + a2;
  if (v5[73] <= v6)
  {
    memset(v8, 0, sizeof(v8));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  re::TypeRegistry::typeInfo(v5, *(v5[75] + 8 * v6), v8);
  return re::TypeInfo::TypeInfo(a3, v8 + 8);
}

BOOL re::TypeInfo::isSubClassOf(void **a1, void *a2)
{
  if (!*a2)
  {
    return 0;
  }

  v4 = *re::DataArray<re::internal::TypeInfoIndex>::get((*a1 + 4), *a1[2]);
  v5 = *re::DataArray<re::internal::TypeInfoIndex>::get((*a1 + 4), a2[1]) & 0xFFFFFF;
  if ((*a1)[78] <= v5)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return v5 < (v4 & 0xFFFFFFu) && (v4 & 0xFFFFFFu) < *((*a1)[80] + 176 * v5 + 88) + v5;
}

uint64_t re::TypeInfo::rootClass@<X0>(re::TypeInfo *this@<X0>, uint64_t a2@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  for (i = *this; (*(v4 + 84) & 0xFFFFFF) != 0; v4 = i[80] + 176 * v6)
  {
    v6 = *re::DataArray<re::internal::TypeInfoIndex>::get((i + 4), *(v4 + 80)) & 0xFFFFFFLL;
    i = *this;
    if (*(*this + 624) <= v6)
    {
      memset(v8, 0, sizeof(v8));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  re::TypeRegistry::typeInfo(i, *v4, v8);
  return re::TypeInfo::TypeInfo(a2, v8 + 8);
}

uint64_t re::TypeInfo::subClassCount(re::TypeInfo *this)
{
  v2 = re::DataArray<re::internal::TypeInfoIndex>::get(*this + 32, **(this + 2));
  v3 = *(*(this + 2) + 88);
  if (v3 < 2)
  {
    return 0;
  }

  v4 = 0;
  v5 = *v2 & 0xFFFFFF;
  v6 = v3 - 1;
  v7 = v5 + 1;
  v8 = 176 * v5 + 256;
  do
  {
    if (*(*this + 624) <= v7)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if ((*re::DataArray<re::internal::TypeInfoIndex>::get(*this + 32, *(*(*this + 640) + v8)) & 0xFFFFFF) == v5)
    {
      ++v4;
    }

    ++v7;
    v8 += 176;
    --v6;
  }

  while (v6);
  return v4;
}

uint64_t re::TypeInfo::subClass@<X0>(re::TypeInfo *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = re::DataArray<re::internal::TypeInfoIndex>::get(*this + 32, **(this + 2));
  v10 = *(*(this + 2) + 88);
  if (v10 >= 2)
  {
    v11 = *v8 & 0xFFFFFF;
    v12 = v10 - 1;
    v13 = v11 + 1;
    v3 = 176 * v11;
    v14 = a2;
    do
    {
      v15 = *this;
      if (*(*this + 624) <= v13)
      {
        memset(v17, 0, sizeof(v17));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v4 = v15[80];
      if ((*re::DataArray<re::internal::TypeInfoIndex>::get((v15 + 4), *(v4 + v3 + 256)) & 0xFFFFFF) == v11)
      {
        if (!v14)
        {
          goto LABEL_9;
        }

        --v14;
      }

      ++v13;
      v3 += 176;
      --v12;
    }

    while (v12);
  }

  re::internal::assertLog(5, v9, "assertion failure: '%s' (%s:line %i) Index out of range. Index: %zu", "!Unreachable code", "subClass", 985, a2);
  _os_crash();
  __break(1u);
LABEL_9:
  re::TypeRegistry::typeInfo(*this, *(v4 + v3 + 176), v17);
  return re::TypeInfo::TypeInfo(a3, v17 + 8);
}

uint64_t re::TypeInfo::derivedClass@<X0>(re::TypeInfo *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = (*re::DataArray<re::internal::TypeInfoIndex>::get(*this + 32, **(this + 2)) & 0xFFFFFF) + a2;
  if (*(*this + 624) <= (v5 + 1))
  {
    memset(v7, 0, sizeof(v7));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  re::TypeRegistry::typeInfo(*this, *(*(*this + 640) + 176 * (v5 + 1)), v7);
  return re::TypeInfo::TypeInfo(a3, v7 + 8);
}

uint64_t re::TypeInfo::renamedObjectMembers(re::TypeInfo *this)
{
  v1 = *(this + 2);
  if (!*(v1 + 104))
  {
    return 0;
  }

  v2 = *(v1 + 100);
  if (*(*this + 704) <= v2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*this + 720) + 24 * v2;
}

void *re::TypeInfo::customClassIDMember@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this[2];
  v3 = *(v2 + 144);
  if ((v3 & 0x80000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    v4 = *this;
    if (*(*this + 664) <= v3)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v5 = *(v4 + 680) + 40 * v3;
    *(a2 + 8) = v4;
    *(a2 + 16) = v2;
    *(a2 + 24) = v5;
    v6 = *(v4 + 24);
    *(a2 + 32) = -1;
    *(a2 + 36) = v6;
    v7 = 1;
  }

  *a2 = v7;
  return this;
}

uint64_t *re::TypeInfo::polymorphicObjectName(re::TypeInfo *this)
{
  v2 = *(this + 2);
  result = (v2 + 112);
  if (*(v2 + 112) >= 0xFFFFFFFFFFFFFFFELL && (*(v2 + 112) & 1) == 0 && !**(v2 + 120))
  {
    result = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, *v2);
    if (!result)
    {
    }
  }

  return result;
}

_DWORD *re::TypeInfo::typeIDForCustomClassID@<X0>(re::TypeInfo *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = re::DataArray<re::internal::TypeInfoIndex>::get(*this + 32, **(this + 2));
  v7 = *(*(this + 2) + 88);
  if (v7)
  {
    v8 = *result & 0xFFFFFF;
    v9 = *this;
    v10 = *(*this + 624);
    if (v10 <= v8)
    {
      v11 = *result & 0xFFFFFF;
    }

    else
    {
      v11 = v10;
    }

    v12 = v11 - v8;
    v13 = 176 * v8;
    while (1)
    {
      if (!v12)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v14 = v9[80];
      if (*(v14 + v13 + 128) == 1 && *(v14 + v13 + 136) == a2)
      {
        break;
      }

      v13 += 176;
      --v12;
      if (!--v7)
      {
        goto LABEL_10;
      }
    }

    v15 = *(v14 + v13);
    *a3 = v9;
    a3[1] = v15;
  }

  else
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0xFFFFFFFFLL;
  }

  return result;
}

BOOL re::TypeInfo::isPointerToPolymorphicType(re::TypeInfo *this)
{
  if (*(this + 12) != 9)
  {
    return 0;
  }

  v7[6] = v1;
  v7[7] = v2;
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), v6);
  re::TypeInfo::TypeInfo(v4, v7);
  return v4[12] == 8 && *(v5 + 88) > 1u;
}

void re::TypeInfo::setActualTypeForPointer(void **a1, uint64_t a2, re **a3)
{
  if (*a3)
  {
    if (*(a1 + 12) == 9)
    {
      v4 = a1[2];
      if ((*(v4 + 25) & 0xFFFFFF) != 0)
      {
        if (*(v4 + 26))
        {
          re::TypeRegistry::typeInfo(*a1, a3, v8);
          if (v8[0] == 1 && *(v9 + 128) == 1)
          {
            v6 = *(v9 + 136);
            re::TypeRegistry::typeInfo(*a1, a1[2][12], v10);
            re::TypeInfo::TypeInfo(v7, &v11);
            re::internal::writeUnsigned((a2 + *(a1[2] + 26)), v7, v6);
          }
        }
      }
    }
  }
}

uint64_t re::TypeInfo::isDependentOn(unint64_t *a1, void *a2, uint64_t a3, double a4)
{
  if (!*a2)
  {
    return 0;
  }

  v7 = *a1;
  v8 = *a1[2];
  if (*a1 == *a2)
  {
    v9 = a2[1];
    if (*a1[2] == v9)
    {
      v11 = WORD1(v8) == WORD1(v9);
      v10 = (v9 ^ v8) & 0xFFFFFF00000000;
      v11 = v11 && v10 == 0;
      if (v11)
      {
        return 1;
      }
    }
  }

  v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
  v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
  v14 = ((v13 ^ (v13 >> 31)) + ((v12 ^ (v12 >> 31)) << 6) + ((v12 ^ (v12 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v12 ^ (v12 >> 31);
  v15 = *(a3 + 24);
  if (v15)
  {
    v16 = v14 % v15;
    v17 = *(*(a3 + 8) + 4 * (v14 % v15));
    if (v17 != 0x7FFFFFFF)
    {
      v18 = *a1[2];
      v19 = v17;
      while (1)
      {
        v20 = *(a3 + 16) + 32 * v19;
        if (*(v20 + 16) == v7 && __PAIR64__(*(v20 + 26), *(v20 + 24)) == __PAIR64__(WORD1(v8), v18) && ((*(v20 + 28) ^ HIDWORD(v8)) & 0xFFFFFF) == 0)
        {
          return 0;
        }

        v19 = *(v20 + 8) & 0x7FFFFFFF;
        if (v19 == 0x7FFFFFFF)
        {
          v49[0].n128_u64[0] = *a1;
          v49[0].n128_u64[1] = v8;
          while (1)
          {
            v21 = *(a3 + 16) + 32 * v17;
            if (*(v21 + 16) == v7 && __PAIR64__(*(v21 + 26), *(v21 + 24)) == __PAIR64__(WORD1(v8), v18) && ((*(v21 + 28) ^ HIDWORD(v8)) & 0xFFFFFF) == 0)
            {
              goto LABEL_24;
            }

            v17 = *(v21 + 8) & 0x7FFFFFFF;
            if (v17 == 0x7FFFFFFF)
            {
              goto LABEL_23;
            }
          }
        }
      }
    }
  }

  else
  {
    LODWORD(v16) = 0;
  }

  v49[0].n128_u64[0] = *a1;
  v49[0].n128_u64[1] = v8;
LABEL_23:
  *&a4 = re::HashSetBase<re::TypeID,re::TypeID,re::internal::ValueAsKey<re::TypeID>,re::Hash<re::TypeID>,re::EqualTo<re::TypeID>,true,false>::addAsMove(a3, v16, v14, v49).n128_u64[0];
  ++*(a3 + 40);
LABEL_24:
  result = 0;
  v23 = *(a1 + 12);
  if (v23 > 5)
  {
    if (*(a1 + 12) > 7u)
    {
      if (v23 != 8)
      {
        if (v23 != 9)
        {
          return result;
        }

        re::TypeRegistry::typeInfo(*a1, *(a1[2] + 80), v49);
        v24 = re::TypeInfo::TypeInfo(v45, &v49[0].n128_i64[1]);
        v30 = *a2;
        v25 = &v30;
        return re::TypeInfo::isDependentOn(v24, v25, a3);
      }

      re::TypeRegistry::typeInfo(*a1, *(a1[2] + 80), v45);
      if (v45[0] == 1)
      {
        v37 = *a2;
        if (re::TypeInfo::isDependentOn(v46, &v37, a3))
        {
          return 1;
        }
      }

      re::TypeMemberCollection::TypeMemberCollection(v35, *a1, a1[2]);
      if (v36)
      {
        v29 = 0;
        do
        {
          re::TypeMemberCollection::operator[](v35, v29, v33);
          re::TypeRegistry::typeInfo(v33[0], *v33[2], v49);
          re::TypeInfo::TypeInfo(v34, &v49[0].n128_i64[1]);
          v32 = *a2;
          if (re::TypeInfo::isDependentOn(v34, &v32, a3))
          {
            return 1;
          }
        }

        while (++v29 < v36);
      }

      re::TypeInfo::customClassIDMember(a1, v49);
      if (v49[0].n128_u8[0] == 1)
      {
        re::TypeMemberInfo::memberType(&v49[0].n128_i8[8], v34);
        v31 = *a2;
        v24 = v34;
        v25 = &v31;
        return re::TypeInfo::isDependentOn(v24, v25, a3);
      }
    }

    else
    {
      if (v23 == 6)
      {
        re::TypeRegistry::typeInfo(*a1, *(a1[2] + 80), v49);
        v28 = re::TypeInfo::TypeInfo(v45, &v49[0].n128_i64[1]);
        v41 = *a2;
        if ((re::TypeInfo::isDependentOn(v28, &v41, a3) & 1) == 0)
        {
          re::TypeRegistry::typeInfoChecked(*a1, *(a1[2] + 88), v49);
          v40 = *a2;
          v24 = v49;
          v25 = &v40;
          return re::TypeInfo::isDependentOn(v24, v25, a3);
        }

        return 1;
      }

      if (v23 != 7)
      {
        return result;
      }

      re::TypeRegistry::typeInfo(*a1, *(a1[2] + 80), v49);
      v26 = re::TypeInfo::TypeInfo(v45, &v49[0].n128_i64[1]);
      v39 = *a2;
      if (re::TypeInfo::isDependentOn(v26, &v39, a3))
      {
        return 1;
      }

      if (*(a1[2] + 96))
      {
        v27 = 0;
        do
        {
          re::TypeInfo::unionMember(a1, v27, v49);
          v38 = *a2;
          result = re::TypeInfo::isDependentOn(v49, &v38, a3);
          if (result)
          {
            break;
          }

          ++v27;
        }

        while (v27 < *(a1[2] + 96));
        return result;
      }
    }

    return 0;
  }

  if (*(a1 + 12) > 3u)
  {
    if (v23 != 4)
    {
      if (v23 != 5)
      {
        return result;
      }

      re::TypeRegistry::typeInfo(*a1, *(a1[2] + 80), v49);
      v24 = re::TypeInfo::TypeInfo(v45, &v49[0].n128_i64[1]);
      v42 = *a2;
      v25 = &v42;
      return re::TypeInfo::isDependentOn(v24, v25, a3);
    }

    re::TypeRegistry::typeInfo(*a1, *(a1[2] + 88), v45);
    re::TypeRegistry::typeInfo(*a1, *(a1[2] + 80), v49);
    re::TypeInfo::TypeInfo(v35, &v49[0].n128_i64[1]);
    v44 = *a2;
    if (re::TypeInfo::isDependentOn(v35, &v44, a3))
    {
      return 1;
    }

    if (v45[0] == 1)
    {
      v43 = *a2;
      v24 = v46;
      v25 = &v43;
      return re::TypeInfo::isDependentOn(v24, v25, a3);
    }

    return 0;
  }

  if (v23 == 2)
  {
    re::TypeRegistry::typeInfo(*a1, *(a1[2] + 80), v49);
    v24 = re::TypeInfo::TypeInfo(v45, &v49[0].n128_i64[1]);
    v48 = *a2;
    v25 = &v48;
    return re::TypeInfo::isDependentOn(v24, v25, a3);
  }

  if (v23 == 3)
  {
    re::TypeRegistry::typeInfo(*a1, *(a1[2] + 80), v49);
    v24 = re::TypeInfo::TypeInfo(v45, &v49[0].n128_i64[1]);
    v47 = *a2;
    v25 = &v47;
    return re::TypeInfo::isDependentOn(v24, v25, a3);
  }

  if (!*(a1 + 12))
  {
    re::internal::assertLog(4, v16, a4, "assertion failure: '%s' (%s:line %i) Invalid type category.", "!Unreachable code", "isDependentOn", 1304);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

BOOL re::areSameTranslatedVersion(re *this, const re::TypeInfo *a2, const re::TypeInfo *a3)
{
  v4 = *(*a2 + 856);
  if (v4)
  {
    v5 = **(a2 + 2);
    v11[0] = *a2;
    v11[1] = v5;
    re::internal::TypeTranslationTable::translateType(v4, v11, &v9);
    v6 = v9;
  }

  else
  {
    v6 = 0;
    v9 = 0;
    v10 = 0xFFFFFFFFLL;
  }

  if (v6 == *this && (v7 = **(this + 2), v10 == v7) && WORD1(v10) == WORD1(v7))
  {
    return ((HIDWORD(v10) ^ HIDWORD(v7)) & 0xFFFFFF) == 0;
  }

  else
  {
    return 0;
  }
}

__n128 re::HashSetBase<re::TypeID,re::TypeID,re::internal::ValueAsKey<re::TypeID>,re::Hash<re::TypeID>,re::EqualTo<re::TypeID>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, __n128 *a4)
{
  v7 = *(a1 + 36);
  if (v7 == 0x7FFFFFFF)
  {
    v7 = *(a1 + 32);
    v8 = v7;
    if (v7 == *(a1 + 24))
    {
      v9 = *(a1 + 28);
      v10 = 2 * v9;
      v11 = *a1;
      if (*a1)
      {
        if (v10)
        {
          v12 = v7 == v10;
        }

        else
        {
          v12 = 1;
        }

        if (!v12 && (v9 & 0x80000000) == 0)
        {
          memset(v24, 0, 36);
          *&v24[36] = 0x7FFFFFFFLL;
          re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::init(v24, v11, v10);
          v13 = *v24;
          *v24 = *a1;
          *a1 = v13;
          v14 = *&v24[16];
          *&v24[16] = *(a1 + 16);
          *(a1 + 16) = v14;
          v16 = *&v24[24];
          *&v24[24] = *(a1 + 24);
          v15 = *&v24[32];
          *(a1 + 24) = v16;
          v17 = v15;
          if (v15)
          {
            v18 = 0;
            v19 = 0;
            do
            {
              if ((*(*&v24[16] + v18 + 8) & 0x80000000) != 0)
              {
                re::HashSetBase<re::TypeID,re::TypeID,re::internal::ValueAsKey<re::TypeID>,re::Hash<re::TypeID>,re::EqualTo<re::TypeID>,true,false>::addAsMove(a1, *(*&v24[16] + v18) % *(a1 + 24), *(*&v24[16] + v18), *&v24[16] + v18 + 16);
                v17 = *&v24[32];
              }

              ++v19;
              v18 += 32;
            }

            while (v19 < v17);
          }

          re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(v24);
        }
      }

      else
      {
        if (v10)
        {
          v22 = v10;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v8 = *(a1 + 32);
    }

    *(a1 + 32) = v8 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v7 + 8);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v7 + 8);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  *(v20 + 32 * v7 + 8) = v21 | 0x80000000;
  *(*(a1 + 16) + 32 * v7 + 8) = *(*(a1 + 16) + 32 * v7 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 32 * v7) = a3;
  result = *a4;
  *(*(a1 + 16) + 32 * v7 + 16) = *a4;
  *(*(a1 + 8) + 4 * a2) = v7;
  ++*(a1 + 28);
  return result;
}

uint64_t re::TypeMemberCollection::TypeMemberCollection(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = a3;
  *(result + 8) = *(a2 + 24);
  v3 = *(a3 + 96);
  if (v3)
  {
    v4 = *(a3 + 92);
    if (*(a2 + 664) <= v4)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v5 = *(a2 + 680) + 40 * v4;
  }

  else
  {
    v5 = 0;
    v3 = 0;
  }

  *(result + 24) = v5;
  *(result + 32) = v3;
  return result;
}

uint64_t *re::TypeMemberCollection::operator[]@<X0>(uint64_t *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = result[4];
  if (v5 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a2, v5, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v6 = *result;
    v7 = result[2];
    v8 = result[3] + 40 * a2;
    *a3 = *result;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
    LODWORD(v6) = *(v6 + 24);
    *(a3 + 24) = a2;
    *(a3 + 28) = v6;
  }

  return result;
}

uint64_t re::internal::TypeTranslationTable::buildTables(re::internal::TypeTranslationTable *this)
{
  v1 = this;
  v134 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(this + 1);
  *(this + 4) = *(*this + 24);
  *(this + 5) = *(v3 + 24);
  v4 = *(v2 + 16);
  v110[0] = 0xFFFFFFFFLL;
  v5 = *(v2 + 264);
  re::FixedArray<unsigned long>::init<unsigned long const&>(this + 3, v4, v5, v110);
  v6 = *(*v1 + 304);
  re::FixedArray<unsigned long>::init<unsigned long const&>(v1 + 6, v4, v6, v110);
  v7 = *(*v1 + 344);
  LODWORD(v129) = -1;
  re::FixedArray<unsigned int>::init<unsigned int>(v1 + 9, v4, v7, &v129);
  v93 = *(*v1 + 384);
  re::FixedArray<unsigned long>::init<unsigned long const&>(v1 + 12, v4, v93, v110);
  v92 = *(*v1 + 424);
  re::FixedArray<unsigned long>::init<unsigned long const&>(v1 + 15, v4, v92, v110);
  v88 = *(*v1 + 464);
  re::FixedArray<unsigned long>::init<unsigned long const&>(v1 + 18, v4, v88, v110);
  v89 = *(*v1 + 504);
  re::FixedArray<unsigned long>::init<unsigned long const&>(v1 + 21, v4, v89, v110);
  v90 = *(*v1 + 544);
  re::FixedArray<unsigned long>::init<unsigned long const&>(v1 + 24, v4, v90, v110);
  v86 = *(*v1 + 624);
  re::FixedArray<unsigned long>::init<unsigned long const&>(v1 + 27, v4, v86, v110);
  v8 = *(*v1 + 664);
  LODWORD(v129) = -1;
  re::FixedArray<unsigned int>::init<unsigned int>(v1 + 30, v4, v8, &v129);
  v9 = *(*v1 + 744);
  result = re::FixedArray<unsigned long>::init<unsigned long const&>(v1 + 33, v4, v9, v110);
  if (v5)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = *(*v1 + 264);
      if (v13 <= v12)
      {
        goto LABEL_136;
      }

      result = re::internal::TypeTranslationTable::findMatchingType(v1, *(*(*v1 + 280) + v11));
      v13 = *(v1 + 4);
      if (v13 <= v12)
      {
        break;
      }

      *(*(v1 + 5) + 8 * v12++) = result;
      v11 += 88;
      if (v5 == v12)
      {
        goto LABEL_6;
      }
    }

LABEL_137:
    *v111 = 0;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v129 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v118 = 136315906;
    *v119 = "operator[]";
    *&v119[8] = 1024;
    *&v119[10] = 468;
    v120 = 2048;
    *v121 = v12;
    *&v121[8] = 2048;
    *&v121[10] = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_138;
  }

LABEL_6:
  v14 = v89;
  v13 = v90;
  v15 = v88;
  if (v6)
  {
    v16 = 0;
    v5 = 0;
    while (1)
    {
      v12 = *(*v1 + 304);
      if (v12 <= v5)
      {
        break;
      }

      result = re::internal::TypeTranslationTable::findMatchingType(v1, *(*(*v1 + 320) + v16));
      v12 = *(v1 + 7);
      if (v12 <= v5)
      {
        goto LABEL_139;
      }

      *(*(v1 + 8) + 8 * v5++) = result;
      v16 += 104;
      if (v6 == v5)
      {
        goto LABEL_11;
      }
    }

LABEL_138:
    *v111 = 0;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v129 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v118 = 136315906;
    *v119 = "operator[]";
    *&v119[8] = 1024;
    *&v119[10] = 797;
    v120 = 2048;
    *v121 = v5;
    *&v121[8] = 2048;
    *&v121[10] = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_139:
    *v111 = 0;
    v54 = v111;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v129 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v118 = 136315906;
    *v119 = "operator[]";
    *&v119[8] = 1024;
    *&v119[10] = 468;
    v120 = 2048;
    *v121 = v5;
    *&v121[8] = 2048;
    *&v121[10] = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_140;
  }

LABEL_11:
  v17 = *(*v1 + 304);
  v97 = v1;
  v85 = v9;
  if (v17)
  {
    v18 = *(*v1 + 320);
    v19 = &v18[13 * v17];
    v87 = v19;
    do
    {
      re::TypeRegistry::typeInfo(*v1, *v18, &v129);
      re::TypeInfo::TypeInfo(v101, &v129 + 8);
      v20 = *v102;
      v109[0] = v101[0];
      v109[1] = v20;
      result = re::internal::TypeTranslationTable::translateType(v122, v1, v109);
      if (!*v122)
      {
        v21 = *(v1 + 1);
        v22 = re::TypeInfo::name(v101);
        result = re::TypeRegistry::typeInfo(v21, v22, &v118);
        if (v118 == 1)
        {
          v23 = re::DataArray<re::TextureAtlasTile>::tryGet(v101[0] + 96, *v102);
          v24 = v23 ? *(v23 + 16) : -1;
          re::TypeInfo::atVersion(&v119[4], v24, &v129);
          result = re::Optional<re::TypeInfo>::operator=(&v118, &v129);
          if (v118 == 1)
          {
            v96 = re::TypeInfo::enumConstants(v101);
            v26 = v25;
            result = re::TypeInfo::enumConstants(&v119[4]);
            v95 = v26;
            if (v26)
            {
              v28 = v27;
              v29 = 0;
              v30 = -v27;
              v99 = (result + 8);
              v91 = result;
              v94 = v18;
              do
              {
                v98 = v29;
                if (!v28)
                {
                  goto LABEL_27;
                }

                v31 = 0;
                v32 = v99;
                while (1)
                {
                  result = re::StringID::operator==(v32, (v96 + 24 * v29 + 8));
                  if (result)
                  {
                    break;
                  }

                  --v31;
                  v32 += 3;
                  if (v30 == v31)
                  {
                    goto LABEL_27;
                  }
                }

                if (v31 != 1)
                {
                  v38 = -v31;
                }

                else
                {
LABEL_27:
                  v33 = re::TypeInfo::renamedEnumConstants(&v119[4]);
                  if (!v34)
                  {
                    goto LABEL_40;
                  }

                  v35 = v33;
                  v36 = v34;
                  v37 = 0;
                  LODWORD(v38) = -1;
                  do
                  {
                    v39 = (v35 + 24 * v37);
                    result = re::StringID::operator==(v39 + 1, (v96 + 24 * v98 + 8));
                    if (result)
                    {
                      v40 = v28 == 0;
                    }

                    else
                    {
                      v40 = 1;
                    }

                    if (!v40)
                    {
                      v41 = 0;
                      v42 = v91;
                      while (1)
                      {
                        v43 = *v42;
                        v42 += 3;
                        if (v43 == *v39)
                        {
                          break;
                        }

                        if (v28 == ++v41)
                        {
                          goto LABEL_38;
                        }
                      }

                      LODWORD(v38) = v41;
                    }

LABEL_38:
                    ++v37;
                  }

                  while (v37 != v36);
                  if (v38 == -1)
                  {
LABEL_40:
                    result = re::TypeInfo::renamedEnumConstants(v101);
                    if (v44)
                    {
                      v45 = result;
                      v46 = v44;
                      v47 = 0;
                      v48 = *(v96 + 24 * v98);
                      LODWORD(v38) = -1;
                      do
                      {
                        if (v28)
                        {
                          v49 = (v45 + 24 * v47);
                          if (*v49 == v48)
                          {
                            v50 = 0;
                            v51 = v99;
                            while (1)
                            {
                              result = re::StringID::operator==(v51, v49 + 1);
                              if (result)
                              {
                                break;
                              }

                              ++v50;
                              v51 += 3;
                              if (v28 == v50)
                              {
                                goto LABEL_49;
                              }
                            }

                            LODWORD(v38) = v50;
                          }
                        }

LABEL_49:
                        ++v47;
                      }

                      while (v47 != v46);
                    }

                    else
                    {
                      LODWORD(v38) = -1;
                    }
                  }
                }

                v18 = v94;
                v1 = v97;
                v13 = v98;
                v52 = v98 + *(v94 + 22);
                v12 = *(v97 + 10);
                if (v12 <= v52)
                {
                  v107[0] = 0;
                  v5 = v111;
                  v132 = 0u;
                  v133 = 0u;
                  v130 = 0u;
                  v131 = 0u;
                  v129 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v111 = 136315906;
                  *&v111[4] = "operator[]";
                  v112 = 1024;
                  v113 = 468;
                  v114 = 2048;
                  v115 = v52;
                  v116 = 2048;
                  *v117 = v12;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_135;
                }

                *(*(v97 + 11) + 4 * v52) = v38;
                v29 = v98 + 1;
              }

              while (v98 + 1 != v95);
            }
          }
        }

        v14 = v89;
        v13 = v90;
        v19 = v87;
        v15 = v88;
      }

      v18 += 13;
    }

    while (v18 != v19);
  }

  if (v93)
  {
    v53 = 0;
    v54 = 0;
    while (1)
    {
      v5 = *(*v1 + 384);
      if (v5 <= v54)
      {
        break;
      }

      result = re::internal::TypeTranslationTable::findMatchingType(v1, *(*(*v1 + 400) + v53));
      v5 = *(v1 + 13);
      if (v5 <= v54)
      {
        goto LABEL_141;
      }

      *(*(v1 + 14) + 8 * v54++) = result;
      v53 += 104;
      if (v93 == v54)
      {
        goto LABEL_62;
      }
    }

LABEL_140:
    *v111 = 0;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v129 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v118 = 136315906;
    *v119 = "operator[]";
    *&v119[8] = 1024;
    *&v119[10] = 797;
    v120 = 2048;
    *v121 = v54;
    *&v121[8] = 2048;
    *&v121[10] = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_141:
    *v111 = 0;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v129 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v118 = 136315906;
    *v119 = "operator[]";
    *&v119[8] = 1024;
    *&v119[10] = 468;
    v120 = 2048;
    *v121 = v54;
    *&v121[8] = 2048;
    *&v121[10] = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_142;
  }

LABEL_62:
  if (v92)
  {
    v55 = 0;
    v54 = 0;
    while (1)
    {
      v5 = *(*v1 + 424);
      if (v5 <= v54)
      {
        break;
      }

      result = re::internal::TypeTranslationTable::findMatchingType(v1, *(*(*v1 + 440) + v55));
      v5 = *(v1 + 16);
      if (v5 <= v54)
      {
        goto LABEL_143;
      }

      *(*(v1 + 17) + 8 * v54++) = result;
      v55 += 104;
      if (v92 == v54)
      {
        goto LABEL_67;
      }
    }

LABEL_142:
    *v111 = 0;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v129 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v118 = 136315906;
    *v119 = "operator[]";
    *&v119[8] = 1024;
    *&v119[10] = 797;
    v120 = 2048;
    *v121 = v54;
    *&v121[8] = 2048;
    *&v121[10] = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_143:
    *v111 = 0;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v129 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v118 = 136315906;
    *v119 = "operator[]";
    *&v119[8] = 1024;
    *&v119[10] = 468;
    v120 = 2048;
    *v121 = v54;
    *&v121[8] = 2048;
    *&v121[10] = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_144;
  }

LABEL_67:
  if (v15)
  {
    v56 = 0;
    v54 = 0;
    while (1)
    {
      v5 = *(*v1 + 464);
      if (v5 <= v54)
      {
        break;
      }

      result = re::internal::TypeTranslationTable::findMatchingType(v1, *(*(*v1 + 480) + v56));
      v5 = *(v1 + 19);
      if (v5 <= v54)
      {
        goto LABEL_145;
      }

      *(*(v1 + 20) + 8 * v54++) = result;
      v56 += 136;
      if (v15 == v54)
      {
        goto LABEL_72;
      }
    }

LABEL_144:
    *v111 = 0;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v129 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v118 = 136315906;
    *v119 = "operator[]";
    *&v119[8] = 1024;
    *&v119[10] = 797;
    v120 = 2048;
    *v121 = v54;
    *&v121[8] = 2048;
    *&v121[10] = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_145:
    *v111 = 0;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v129 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v118 = 136315906;
    *v119 = "operator[]";
    *&v119[8] = 1024;
    *&v119[10] = 468;
    v120 = 2048;
    *v121 = v54;
    *&v121[8] = 2048;
    *&v121[10] = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_146;
  }

LABEL_72:
  if (v14)
  {
    v57 = 0;
    v54 = 0;
    while (1)
    {
      v5 = *(*v1 + 504);
      if (v5 <= v54)
      {
        break;
      }

      result = re::internal::TypeTranslationTable::findMatchingType(v1, *(*(*v1 + 520) + v57));
      v5 = *(v1 + 22);
      if (v5 <= v54)
      {
        goto LABEL_147;
      }

      *(*(v1 + 23) + 8 * v54++) = result;
      v57 += 168;
      if (v14 == v54)
      {
        goto LABEL_77;
      }
    }

LABEL_146:
    *v111 = 0;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v129 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v118 = 136315906;
    *v119 = "operator[]";
    *&v119[8] = 1024;
    *&v119[10] = 797;
    v120 = 2048;
    *v121 = v54;
    *&v121[8] = 2048;
    *&v121[10] = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_147:
    *v111 = 0;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v129 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v118 = 136315906;
    *v119 = "operator[]";
    *&v119[8] = 1024;
    *&v119[10] = 468;
    v120 = 2048;
    *v121 = v54;
    *&v121[8] = 2048;
    *&v121[10] = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_148;
  }

LABEL_77:
  if (v13)
  {
    v58 = 0;
    v54 = 0;
    while (1)
    {
      v5 = *(*v1 + 544);
      if (v5 <= v54)
      {
        break;
      }

      result = re::internal::TypeTranslationTable::findMatchingType(v1, *(*(*v1 + 560) + v58));
      v5 = *(v1 + 25);
      if (v5 <= v54)
      {
        goto LABEL_149;
      }

      *(*(v1 + 26) + 8 * v54++) = result;
      v58 += 104;
      if (v13 == v54)
      {
        goto LABEL_82;
      }
    }

LABEL_148:
    *v111 = 0;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v129 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v118 = 136315906;
    *v119 = "operator[]";
    *&v119[8] = 1024;
    *&v119[10] = 797;
    v120 = 2048;
    *v121 = v54;
    *&v121[8] = 2048;
    *&v121[10] = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_149:
    *v111 = 0;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v129 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v118 = 136315906;
    *v119 = "operator[]";
    *&v119[8] = 1024;
    *&v119[10] = 468;
    v120 = 2048;
    *v121 = v54;
    *&v121[8] = 2048;
    *&v121[10] = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_150;
  }

LABEL_82:
  if (v86)
  {
    v59 = 0;
    v54 = 0;
    while (1)
    {
      v5 = *(*v1 + 624);
      if (v5 <= v54)
      {
        break;
      }

      result = re::internal::TypeTranslationTable::findMatchingType(v1, *(*(*v1 + 640) + v59));
      v5 = *(v1 + 28);
      if (v5 <= v54)
      {
        goto LABEL_151;
      }

      *(*(v1 + 29) + 8 * v54++) = result;
      v59 += 176;
      if (v86 == v54)
      {
        goto LABEL_87;
      }
    }

LABEL_150:
    *v111 = 0;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v129 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v118 = 136315906;
    *v119 = "operator[]";
    *&v119[8] = 1024;
    *&v119[10] = 797;
    v120 = 2048;
    *v121 = v54;
    *&v121[8] = 2048;
    *&v121[10] = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_151:
    *v111 = 0;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v129 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v118 = 136315906;
    *v119 = "operator[]";
    *&v119[8] = 1024;
    *&v119[10] = 468;
    v120 = 2048;
    *v121 = v54;
    *&v121[8] = 2048;
    *&v121[10] = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_152:
    *v111 = 0;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v129 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v118 = 136315906;
    *v119 = "operator[]";
    *&v119[8] = 1024;
    *&v119[10] = 797;
    v120 = 2048;
    *v121 = v54;
    *&v121[8] = 2048;
    *&v121[10] = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_153:
    *v111 = 0;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v129 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v118 = 136315906;
    *v119 = "operator[]";
    *&v119[8] = 1024;
    *&v119[10] = 468;
    v120 = 2048;
    *v121 = v54;
    *&v121[8] = 2048;
    *&v121[10] = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_87:
  v60 = *(*v1 + 624);
  if (v60)
  {
    v61 = *(*v1 + 640);
    v62 = v61 + 176 * v60;
    v100 = v62;
    do
    {
      re::TypeRegistry::typeInfo(*v97, *v61, &v129);
      re::TypeInfo::TypeInfo(v107, &v129 + 8);
      v63 = *v108;
      v105[0] = v107[0];
      v105[1] = v63;
      result = re::internal::TypeTranslationTable::translateType(&v106, v97, v105);
      if (!v106)
      {
        v64 = *(v97 + 1);
        v65 = re::TypeInfo::name(v107);
        result = re::TypeRegistry::typeInfo(v64, v65, &v118);
        if (v118 == 1)
        {
          v66 = re::DataArray<re::TextureAtlasTile>::tryGet(v107[0] + 96, *v108);
          v67 = v66 ? *(v66 + 16) : -1;
          re::TypeInfo::atVersion(&v119[4], v67, &v129);
          result = re::Optional<re::TypeInfo>::operator=(&v118, &v129);
          if (v118 == 1)
          {
            re::TypeMemberCollection::TypeMemberCollection(v111, v107[0], v108);
            result = re::TypeMemberCollection::TypeMemberCollection(v101, *&v119[4], *&v121[4]);
            v68 = *&v117[2];
            if (*&v117[2])
            {
              v69 = 0;
              while (1)
              {
                re::TypeMemberCollection::operator[](v111, v69, &v129);
                if (!v104)
                {
                  goto LABEL_156;
                }

                v70 = 0;
                v71 = v130;
                v72 = (v103 + 8);
                v13 = -v104;
                while (1)
                {
                  result = re::StringID::operator==(v72, (v71 + 8));
                  if (result)
                  {
                    break;
                  }

                  --v70;
                  v72 += 5;
                  if (v13 == v70)
                  {
                    goto LABEL_103;
                  }
                }

                if (v70 != 1)
                {
                  v77 = -v70;
                }

                else
                {
LABEL_156:
                {
LABEL_103:
                  v73 = re::TypeInfo::renamedObjectMembers(&v119[4]);
                  if (!v74)
                  {
                    goto LABEL_109;
                  }

                  v75 = v73;
                  v76 = v74;
                  while (1)
                  {
                    re::TypeMemberCollection::operator[](v111, v69, &v129);
                    result = re::StringID::operator==(v75, (v130 + 8));
                    if (result)
                    {
                      break;
                    }

                    v75 += 24;
                    if (!--v76)
                    {
                      goto LABEL_109;
                    }
                  }

                  LODWORD(v77) = *(v75 + 16);
                  if (v77 == -1)
                  {
LABEL_109:
                    result = re::TypeInfo::renamedObjectMembers(v107);
                    if (v78)
                    {
                      v79 = result;
                      v80 = v78;
                      v81 = 0;
                      LODWORD(v77) = -1;
                      do
                      {
                        v13 = v79 + 24 * v81;
                        if (v69 == *(v13 + 16) && v104 != 0)
                        {
                          v83 = 0;
                          while (1)
                          {
                            re::TypeMemberCollection::operator[](v101, v83, &v129);
                            result = re::StringID::operator==((v130 + 8), (v79 + 24 * v81));
                            if (result)
                            {
                              break;
                            }

                            if (++v83 >= v104)
                            {
                              goto LABEL_120;
                            }
                          }

                          LODWORD(v77) = v83;
                        }

LABEL_120:
                        ++v81;
                      }

                      while (v81 != v80);
                    }

                    else
                    {
                      LODWORD(v77) = -1;
                    }
                  }
                }
                }

                v5 = v69 + *(v61 + 92);
                v12 = *(v97 + 31);
                if (v12 <= v5)
                {
                  break;
                }

                *(*(v97 + 32) + 4 * v5) = v77;
                if (++v69 == v68)
                {
                  goto LABEL_126;
                }
              }

LABEL_135:
              v110[1] = 0;
              v132 = 0u;
              v133 = 0u;
              v130 = 0u;
              v131 = 0u;
              v129 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v122 = 136315906;
              *&v122[4] = "operator[]";
              v123 = 1024;
              v124 = 468;
              v125 = 2048;
              v126 = v5;
              v127 = 2048;
              v128 = v12;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_136:
              *v111 = 0;
              v132 = 0u;
              v133 = 0u;
              v130 = 0u;
              v131 = 0u;
              v129 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v118 = 136315906;
              *v119 = "operator[]";
              *&v119[8] = 1024;
              *&v119[10] = 797;
              v120 = 2048;
              *v121 = v12;
              *&v121[8] = 2048;
              *&v121[10] = v13;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_137;
            }

LABEL_126:
            v62 = v100;
          }
        }
      }

      v61 += 176;
    }

    while (v61 != v62);
  }

  if (v85)
  {
    v84 = 0;
    v54 = 0;
    while (1)
    {
      v5 = *(*v97 + 744);
      if (v5 <= v54)
      {
        goto LABEL_152;
      }

      result = re::internal::TypeTranslationTable::findMatchingType(v97, *(*(*v97 + 760) + v84));
      v5 = *(v97 + 34);
      if (v5 <= v54)
      {
        goto LABEL_153;
      }

      *(*(v97 + 35) + 8 * v54++) = result;
      v84 += 112;
      if (v85 == v54)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t re::internal::TypeTranslationTable::rebuildIfNecessary(uint64_t this)
{
  v1 = this;
  if (*(*this + 24) != *(this + 16) || *(*(this + 8) + 24) != *(this + 20))
  {
    v2 = *re::foundationIntrospectionLogObjects(this);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "Type registry was modified. Rebuilding type translation table.", v3, 2u);
    }

    re::FixedArray<CoreIKTransform>::deinit(v1 + 3);
    re::FixedArray<CoreIKTransform>::deinit(v1 + 6);
    re::FixedArray<CoreIKTransform>::deinit(v1 + 9);
    re::FixedArray<CoreIKTransform>::deinit(v1 + 12);
    re::FixedArray<CoreIKTransform>::deinit(v1 + 15);
    re::FixedArray<CoreIKTransform>::deinit(v1 + 18);
    re::FixedArray<CoreIKTransform>::deinit(v1 + 21);
    re::FixedArray<CoreIKTransform>::deinit(v1 + 24);
    re::FixedArray<CoreIKTransform>::deinit(v1 + 27);
    re::FixedArray<CoreIKTransform>::deinit(v1 + 30);
    re::FixedArray<CoreIKTransform>::deinit(v1 + 33);
    return re::internal::TypeTranslationTable::buildTables(v1);
  }

  return this;
}

double re::internal::TypeTranslationTable::translateType@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  re::internal::TypeTranslationTable::rebuildIfNecessary(a1);
  v6 = re::DataArray<re::internal::TypeInfoIndex>::tryGet(*a1 + 32, *(a2 + 8));
  if (v6)
  {
    v7 = *v6;

    return re::internal::TypeTranslationTable::translateType(a1, v7, a3);
  }

  else
  {
    *a3 = 0;
    *&result = 0xFFFFFFFFLL;
    a3[1] = 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t re::DataArray<re::internal::TypeInfoIndex>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 4 * a2;
  }

  else
  {
    return 0;
  }
}

double re::internal::TypeTranslationTable::translateType@<D0>(void *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v3 = *&a2 & 0xFFFFFFLL;
  if ((*&a2 & 0xFFFFFFLL) == 0xFFFFFF)
  {
    goto LABEL_34;
  }

  if (HIBYTE(a2) <= 4u)
  {
    if (HIBYTE(a2) > 2u)
    {
      if (HIBYTE(a2) == 3)
      {
        if (a1[13] > v3)
        {
          v4 = 14;
          goto LABEL_32;
        }

        goto LABEL_40;
      }

      if (HIBYTE(a2) != 4)
      {
        goto LABEL_34;
      }

      if (a1[16] > v3)
      {
        v4 = 17;
        goto LABEL_32;
      }
    }

    else
    {
      if (HIBYTE(a2) == 1)
      {
        if (a1[4] > v3)
        {
          v4 = 5;
          goto LABEL_32;
        }

        goto LABEL_39;
      }

      if (HIBYTE(a2) != 2)
      {
        goto LABEL_34;
      }

      if (a1[7] > v3)
      {
        v4 = 8;
        goto LABEL_32;
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_38:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_39:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_40:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_41:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_42;
  }

  if (HIBYTE(a2) <= 6u)
  {
    if (HIBYTE(a2) == 5)
    {
      if (a1[19] > v3)
      {
        v4 = 20;
        goto LABEL_32;
      }

LABEL_42:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
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
    }

    if (HIBYTE(a2) != 6)
    {
      goto LABEL_34;
    }

    if (a1[22] > v3)
    {
      v4 = 23;
      goto LABEL_32;
    }

    goto LABEL_38;
  }

  if (HIBYTE(a2) == 7)
  {
    if (a1[25] > v3)
    {
      v4 = 26;
      goto LABEL_32;
    }

    goto LABEL_41;
  }

  if (HIBYTE(a2) != 8)
  {
    if (HIBYTE(a2) != 9)
    {
      goto LABEL_34;
    }

    if (a1[34] > v3)
    {
      v4 = 35;
      goto LABEL_32;
    }

    goto LABEL_43;
  }

  if (a1[28] <= v3)
  {
    goto LABEL_44;
  }

  v4 = 29;
LABEL_32:
  v5 = *(a1[v4] + 8 * v3);
  if ((v5 & 0xFFFFFF00000000) != 0)
  {
    *a3 = a1[1];
    a3[1] = v5;
    return result;
  }

LABEL_34:
  *a3 = 0;
  *&result = 0xFFFFFFFFLL;
  a3[1] = 0xFFFFFFFFLL;
  return result;
}

uint64_t re::FixedArray<re::DataArrayHandle<re::internal::TypeInfoIndex>>::operator[](uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + 8 * a2;
}

uint64_t re::internal::TypeTranslationTable::translateMember(re::internal::TypeTranslationTable *this, const re::TypeMemberInfo *a2)
{
  re::internal::TypeTranslationTable::rebuildIfNecessary(this);
  v4 = (*(a2 + 6) + *(*(a2 + 1) + 92));
  if (*(this + 31) <= v4)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 32) + 4 * v4);
}

uint64_t re::internal::TypeTranslationTable::translateSerializedEnum(re::internal::TypeTranslationTable *this, const re::TypeInfo *a2, int a3, const re::TypeInfo *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  re::internal::TypeTranslationTable::rebuildIfNecessary(this);
  v8 = re::TypeInfo::name(a2);
  v9 = re::TypeInfo::name(a4);
  v10 = re::StringID::operator==(v8, v9);
  if (v10)
  {
    v11 = (*(*(a2 + 2) + 88) + a3);
    if (*(this + 10) <= v11)
    {
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_10;
    }

    v11 = *(*(this + 11) + 4 * v11);
    if ((v11 & 0x80000000) == 0)
    {
      v12 = re::TypeInfo::enumConstants(a4);
      if (v13 > v11)
      {
        return v12 + 24 * v11;
      }

LABEL_10:
      re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, v13);
      _os_crash();
      __break(1u);
    }
  }

  else
  {
    v15 = *re::foundationIntrospectionLogObjects(v10);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = re::TypeInfo::name(a2)[1];
      v17 = re::TypeInfo::name(a4)[1];
      LODWORD(buf[0]) = 136315394;
      *(buf + 4) = v16;
      WORD6(buf[0]) = 2080;
      *(buf + 14) = v17;
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Failed to translate enum value. Enum names don't match. Serialized type %s, runtime type %s.", buf, 0x16u);
    }
  }

  return 0;
}

uint64_t re::internal::TypeTranslationTable::translateRuntimeEnum(re::internal::TypeTranslationTable *this, const re::TypeInfo *a2, int a3, const re::TypeInfo *a4)
{
  re::internal::TypeTranslationTable::rebuildIfNecessary(this);
  v7 = re::FixedArray<unsigned int>::slice(this + 72, *(*(a4 + 2) + 88), *(*(a4 + 2) + 92));
  if (!v8)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  while (*(v7 + 4 * v10) != a3)
  {
    ++v10;
    v9 -= 24;
    if (v8 == v10)
    {
      return 0;
    }
  }

  v12 = re::TypeInfo::enumConstants(a4);
  if (v13 > v10)
  {
    return v12 - v9;
  }

  re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v10, v13);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::internal::TypeTranslationTable::findMatchingType(re::internal::TypeTranslationTable *a1, uint64_t a2)
{
  re::TypeRegistry::typeInfo(*a1, a2, v9);
  re::TypeInfo::TypeInfo(v11, v10);
  v4 = re::DataArray<re::TextureAtlasTile>::tryGet(*a1 + 96, a2);
  if (!v4)
  {
  }

  re::TypeRegistry::typeInfo(*(a1 + 1), v4, v9);
  if (v9[0] == 1 && ((v5 = re::DataArray<re::TextureAtlasTile>::tryGet(v11[0] + 96, *v11[2])) == 0 ? (v6 = -1) : (v6 = *(v5 + 16)), (re::TypeInfo::atVersion(v10, v6, v8), re::Optional<re::TypeInfo>::operator=(v9, v8), v9[0] == 1) && re::internal::TypeTranslationTable::areEquivalent(a1, v11, v10)))
  {
    return *v10[2];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t re::internal::TypeTranslationTable::areEquivalent(re::internal::TypeTranslationTable *this, const re::TypeInfo *a2, const re::TypeInfo *a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = WORD1(**(a2 + 2));
  v5 = *(*this + 48);
  if (v5 <= v4)
  {
    a3 = v51;
    v43 = 0;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    memset(v56, 0, sizeof(v56));
    v7 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v51 = 136315906;
    *&v51[4] = "operator[]";
    *&v51[12] = 1024;
    *&v51[14] = 797;
    v52 = 2048;
    v53 = v4;
    v54 = 2048;
    *v55 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_82;
  }

  v3 = a2;
  v7 = this;
  v8 = *(*(*(*this + 64) + 16 * WORD1(**(a2 + 2))) + 4 * **(a2 + 2));
  re::internal::TypeTranslationTable::translateType(this, v8, &v47);
  if (v47)
  {
    if (v47 == *a3)
    {
      v9 = **(a3 + 2);
      if (v48 == v9 && v49 == WORD1(v9))
      {
        v10 = ((v50 ^ HIDWORD(v9)) & 0xFFFFFF) == 0;
        goto LABEL_7;
      }
    }

    goto LABEL_77;
  }

  if (*(v3 + 12) != *(a3 + 12))
  {
    goto LABEL_77;
  }

  v12 = re::DataArray<re::TextureAtlasTile>::tryGet(*v3 + 96, **(v3 + 2));
  v13 = v12 ? *(v12 + 16) : -1;
  v11 = re::DataArray<re::TextureAtlasTile>::tryGet(*a3 + 96, **(a3 + 2));
  v15 = v11 ? *(v11 + 16) : -1;
  if (v13 != v15)
  {
    goto LABEL_77;
  }

  v16 = *(v3 + 2);
  if ((*(v16 + 48) & 0x80) != 0)
  {
    goto LABEL_77;
  }

  v17 = *(v3 + 12);
  if (v17 <= 4)
  {
    if (*(v3 + 12) <= 2u)
    {
      if (v17 == 1)
      {
        v36 = *(a3 + 2);
        if (*(v16 + 8) == *(v36 + 8) && *(v16 + 12) == *(v36 + 12))
        {
          v10 = *(v16 + 80) == *(v36 + 80);
LABEL_7:
          LOBYTE(v11) = v10;
          return v11 & 1;
        }

LABEL_77:
        LOBYTE(v11) = 0;
        return v11 & 1;
      }

      if (v17 == 2)
      {
        if (*(v16 + 8) != *(*(a3 + 2) + 8))
        {
          goto LABEL_77;
        }

        v18 = re::TypeInfo::enumConstants(v3);
        v20 = v19;
        *&v56[0] = v18;
        *(&v56[0] + 1) = v19;
        *v51 = re::TypeInfo::enumConstants(a3);
        *&v51[8] = v21;
        if (v20 != v21)
        {
          goto LABEL_77;
        }

        if (v20)
        {
          v22 = 0;
          while (1)
          {
            v23 = re::Slice<re::EnumConstant>::operator[](v56, v22);
            v24 = re::Slice<re::EnumConstant>::operator[](v51, v22);
            if (*v23 != *v24 || !re::StringID::operator==(v23 + 1, v24 + 1))
            {
              goto LABEL_77;
            }

            if (++v22 >= *(&v56[0] + 1))
            {
              goto LABEL_80;
            }
          }
        }
      }

      else
      {
        re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Invalid type category.", "!Unreachable code", "areEquivalent", 573);
        _os_crash();
        __break(1u);
      }

      goto LABEL_80;
    }

    if (v17 != 3)
    {
      if (v17 != 4)
      {
        return v11 & 1;
      }

      v27 = *(a3 + 2);
      v28 = *(v16 + 92) & 0xFFFFFF;
      if ((*(v27 + 92) & 0xFFFFFF) != 0)
      {
        if (!v28)
        {
          goto LABEL_77;
        }
      }

      else if (v28 || *(v27 + 96) != *(v16 + 96))
      {
        goto LABEL_77;
      }
    }

LABEL_73:
    re::TypeInfo::referencedType(v3, v56);
    re::TypeInfo::referencedType(a3, v51);
    v25 = v56;
    v26 = v51;
    goto LABEL_74;
  }

  if (*(v3 + 12) > 6u)
  {
    if (v17 != 7)
    {
      if (v17 != 8)
      {
        if (v17 != 9)
        {
          return v11 & 1;
        }

        if (*(v16 + 88) != *(*(a3 + 2) + 88))
        {
          goto LABEL_77;
        }

        goto LABEL_73;
      }

      v4 = re::FixedArray<re::DataArrayHandle<re::internal::TypeInfoIndex>>::operator[](v7 + 216, *&v8 & 0xFFFFFFLL);
      *v4 = **(a3 + 2);
      v29 = *(v3 + 2);
      if (((*(v29 + 84) & 0xFFFFFF) != 0) != ((*(*(a3 + 2) + 84) & 0xFFFFFF) != 0))
      {
        goto LABEL_87;
      }

      if ((*(v29 + 84) & 0xFFFFFF) != 0)
      {
        re::TypeRegistry::typeInfo(*v3, *(v29 + 80), v56);
        re::TypeRegistry::typeInfo(*a3, *(*(a3 + 2) + 80), v51);
        LODWORD(v11) = re::internal::TypeTranslationTable::areEquivalent(v7, (v56 + 8), &v51[8]);
        if (!v11)
        {
          goto LABEL_88;
        }

        v29 = *(v3 + 2);
      }

      re::TypeMemberCollection::TypeMemberCollection(v56, *v3, v29);
      re::TypeMemberCollection::TypeMemberCollection(v51, *a3, *(a3 + 2));
      if (v57 != *&v55[2])
      {
        goto LABEL_87;
      }

      if (v57)
      {
        v30 = 0;
        do
        {
          re::TypeMemberCollection::operator[](v56, v30, &v43);
          re::TypeMemberCollection::operator[](v51, v30, v41);
          if (!re::StringID::operator==((v44[1] + 8), (v42[1] + 8)))
          {
            goto LABEL_87;
          }

          re::TypeMemberInfo::memberType(&v43, v46);
          re::TypeMemberInfo::memberType(v41, v45);
          if ((re::internal::TypeTranslationTable::areEquivalent(v7, v46, v45) & 1) == 0)
          {
            goto LABEL_87;
          }
        }

        while (++v30 < v57);
      }

      v31 = re::TypeInfo::polymorphicObjectName(v3);
      v32 = re::TypeInfo::polymorphicObjectName(a3);
      LODWORD(v11) = re::StringID::operator==(v31, v32);
      if (v11)
      {
        v33 = *(v3 + 2);
        v34 = *(a3 + 2);
        v35 = *(v34 + 128);
        if (*(v33 + 128) == 1)
        {
          if ((*(v34 + 128) & 1) == 0 || *(v33 + 136) != *(v34 + 136))
          {
            goto LABEL_87;
          }

LABEL_83:
          re::TypeInfo::customClassIDMember(v3, &v43);
          re::TypeInfo::customClassIDMember(a3, v41);
          if (v43 == v41[0])
          {
            if (!v43 || (re::TypeMemberInfo::memberType(v44, v46), re::TypeMemberInfo::memberType(v42, v45), (re::internal::TypeTranslationTable::areEquivalent(v7, v46, v45) & 1) != 0))
            {
              LOBYTE(v11) = 1;
              goto LABEL_88;
            }
          }

LABEL_87:
          LOBYTE(v11) = 0;
          goto LABEL_88;
        }

LABEL_82:
        if (v35)
        {
          goto LABEL_87;
        }

        goto LABEL_83;
      }

LABEL_88:
      *v4 = 0xFFFFFFFFLL;
      return v11 & 1;
    }

    re::TypeInfo::referencedType(v3, v56);
    re::TypeInfo::referencedType(a3, v51);
    LODWORD(v11) = re::internal::TypeTranslationTable::areEquivalent(v7, v56, v51);
    if (!v11)
    {
      return v11 & 1;
    }

    v37 = *(*(v3 + 2) + 96);
    if (v37 != *(*(a3 + 2) + 96))
    {
      goto LABEL_77;
    }

    if (v37)
    {
      v38 = 0;
      v39 = v37 - 1;
      do
      {
        re::TypeInfo::unionMember(v3, v38, v56);
        re::TypeInfo::unionMember(a3, v38, v51);
        LODWORD(v11) = re::internal::TypeTranslationTable::areEquivalent(v7, v56, v51);
        if (!v11)
        {
          break;
        }

        v10 = v39 == v38++;
      }

      while (!v10);
      return v11 & 1;
    }

LABEL_80:
    LOBYTE(v11) = 1;
    return v11 & 1;
  }

  if (v17 == 5)
  {
    goto LABEL_73;
  }

  if (v17 == 6)
  {
    re::TypeInfo::referencedType(v3, v56);
    re::TypeInfo::referencedType(a3, v51);
    LODWORD(v11) = re::internal::TypeTranslationTable::areEquivalent(v7, v56, v51);
    if (v11)
    {
      re::TypeInfo::dictionaryValueType(v3, &v43);
      re::TypeInfo::dictionaryValueType(a3, v41);
      v25 = &v43;
      v26 = v41;
LABEL_74:
      LOBYTE(v11) = re::internal::TypeTranslationTable::areEquivalent(v7, v25, v26);
    }
  }

  return v11 & 1;
}

BOOL re::IntrospectionRegistry::contains(re::IntrospectionRegistry *this, const re::IntrospectionBase *a2)
{
  globalIntrospectionTable();
  os_unfair_lock_lock(&dword_1EE1C7BA0);
  v5 = this;
  v3 = re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(&unk_1EE1C7B70, &v5);
  os_unfair_lock_unlock(&dword_1EE1C7BA0);
  return v3;
}

void globalIntrospectionTable(void)
{
  {
    if (v0)
    {
    }
  }
}

BOOL re::IntrospectionRegistry::add(re::IntrospectionRegistry *this, const re::IntrospectionBase *a2)
{
  globalIntrospectionTable();
  v14 = 0;
  v15 = 0;
  v12 = re::introspectionAllocator(v3);
  v13 = 0;
  re::DynamicString::setCapacity(&v12, 0);
  re::appendPrettyTypeName(this, &v12, v4);
  os_unfair_lock_lock(&dword_1EE1C7BA0);
  v5 = re::Hash<re::DynamicString>::operator()(&v16, &v12);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&globalIntrospectionTable(void)::table, &v12, v5, &v16);
  v6 = v17;
  if (v17 != 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v16 = this;
  re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::emplace<re::IntrospectionBase const*>(&globalIntrospectionTable(void)::table, &v12, &v16);
  v16 = this;
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (this ^ (this >> 30))) ^ ((0xBF58476D1CE4E5B9 * (this ^ (this >> 30))) >> 27));
  v8 = v7 ^ (v7 >> 31);
  if (!dword_1EE1C7B88)
  {
    LODWORD(v9) = 0;
    goto LABEL_9;
  }

  v9 = v8 % dword_1EE1C7B88;
  v10 = *(qword_1EE1C7B78 + 4 * v9);
  if (v10 == 0x7FFFFFFF)
  {
LABEL_9:
    re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::addAsMove(&unk_1EE1C7B70, v9, v8, &v16, &v16);
    ++dword_1EE1C7B98;
    goto LABEL_10;
  }

  while (*(qword_1EE1C7B80 + 24 * v10 + 16) != this)
  {
    LODWORD(v10) = *(qword_1EE1C7B80 + 24 * v10 + 8) & 0x7FFFFFFF;
    if (v10 == 0x7FFFFFFF)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  os_unfair_lock_unlock(&dword_1EE1C7BA0);
  if (v12 && (v13 & 1) != 0)
  {
    (*(*v12 + 40))();
  }

  return v6 == 0x7FFFFFFF;
}

uint64_t re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::emplace<re::IntrospectionBase const*>(uint64_t a1, const re::DynamicString *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v13, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 56 * HIDWORD(v11) + 40;
  }

  v7 = re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v11, v10);
  re::DynamicString::DynamicString((v7 + 8), a2);
  *(v7 + 40) = *a3;
  v8 = v7 + 40;
  ++*(a1 + 40);
  return v8;
}

uint64_t *re::IntrospectionRegistry::remove(re::IntrospectionRegistry *this, const re::IntrospectionBase *a2)
{
  globalIntrospectionTable();
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v49, 0);
  v4 = ++v52;
  v47 = 0;
  *__b = 0u;
  v46 = 0u;
  v48 = 0x7FFFFFFFLL;
  os_unfair_lock_lock(&dword_1EE1C7BA0);
  v6 = dword_1EE1C7B60;
  if (dword_1EE1C7B60)
  {
    v7 = 0;
    v8 = qword_1EE1C7B50;
    while (1)
    {
      v9 = *v8;
      v8 += 14;
      if (v9 < 0)
      {
        break;
      }

      if (dword_1EE1C7B60 == ++v7)
      {
        LODWORD(v7) = dword_1EE1C7B60;
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  if (v7 != dword_1EE1C7B60)
  {
    v31 = qword_1EE1C7B50;
    do
    {
      if (HIDWORD(v46))
      {
        if (DWORD2(v46))
        {
          memset_pattern16(__b[1], &unk_1E304C660, 4 * DWORD2(v46));
        }

        v32 = v47;
        if (v47)
        {
          v33 = 8;
          do
          {
            v34 = *(v46 + v33);
            if (v34 < 0)
            {
              *(v46 + v33) = v34 & 0x7FFFFFFF;
            }

            v33 += 24;
            --v32;
          }

          while (v32);
        }

        HIDWORD(v46) = 0;
        v47 = 0;
        v48 = __PAIR64__(HIDWORD(v48), 0x7FFFFFFF) + 0x100000000;
      }

      v35 = v31 + 56 * v7;
      v36 = *(v35 + 40);
      if (v36 != this)
      {
        v5 = re::IntrospectionBase::references(*(v35 + 40), this, __b);
        if (!v5)
        {
          goto LABEL_51;
        }

        v36 = *(v35 + 40);
      }

      v37 = v51 + 1;
      if (v51 >= v50 && v50 < v37)
      {
        if (v49)
        {
          v42 = 8;
          if (v50)
          {
            v42 = 2 * v50;
          }

          if (v42 <= v37)
          {
            v43 = v51 + 1;
          }

          else
          {
            v43 = v42;
          }

          v5 = re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v49, v43);
          v4 = v52;
        }

        else
        {
          v5 = re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v49, v37);
          v4 = v52 + 1;
        }
      }

      v39 = v51;
      v40 = &v53[2 * v51];
      *v40 = v36;
      v40[1] = (v35 + 8);
      v51 = v39 + 1;
      v52 = ++v4;
LABEL_51:
      if (dword_1EE1C7B60 <= (v7 + 1))
      {
        v41 = v7 + 1;
      }

      else
      {
        v41 = dword_1EE1C7B60;
      }

      v31 = qword_1EE1C7B50;
      while (v41 - 1 != v7)
      {
        LODWORD(v7) = v7 + 1;
        if ((*(qword_1EE1C7B50 + 56 * v7) & 0x80000000) != 0)
        {
          goto LABEL_59;
        }
      }

      LODWORD(v7) = v41;
LABEL_59:
      ;
    }

    while (v7 != v6);
  }

  v44 = v53;
  if (v51)
  {
    v10 = v53;
    v11 = &v53[2 * v51];
    do
    {
      v12 = v10[1];
      v13 = re::Hash<re::DynamicString>::operator()(v54, v12);
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&globalIntrospectionTable(void)::table, v12, v13, v54);
      v14 = v56;
      if (v56 != 0x7FFFFFFF)
      {
        v15 = qword_1EE1C7B50;
        v16 = *(qword_1EE1C7B50 + 56 * v56) & 0x7FFFFFFF;
        if (v57 == 0x7FFFFFFF)
        {
          *(qword_1EE1C7B48 + 4 * v55) = v16;
          v14 = v56;
        }

        else
        {
          *(qword_1EE1C7B50 + 56 * v57) = *(qword_1EE1C7B50 + 56 * v57) & 0x80000000 | v16;
        }

        v17 = (v15 + 56 * v14);
        v18 = *v17;
        if (*v17 < 0)
        {
          *v17 = v18 & 0x7FFFFFFF;
          re::DynamicString::deinit((v17 + 2));
          v14 = v56;
          v15 = qword_1EE1C7B50;
          v18 = *(qword_1EE1C7B50 + 56 * v56);
        }

        *(v15 + 56 * v14) = dword_1EE1C7B64 | v18 & 0x80000000;
        --dword_1EE1C7B5C;
        dword_1EE1C7B64 = v14;
        ++dword_1EE1C7B68;
      }

      if (dword_1EE1C7B88)
      {
        v19 = *v10;
        v20 = 0xBF58476D1CE4E5B9 * (*v10 ^ (*v10 >> 30));
        v21 = ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) ^ ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) >> 31)) % dword_1EE1C7B88;
        v22 = *(qword_1EE1C7B78 + 4 * v21);
        if (v22 != 0x7FFFFFFF)
        {
          if (*(qword_1EE1C7B80 + 24 * v22 + 16) == v19)
          {
            *(qword_1EE1C7B78 + 4 * v21) = *(qword_1EE1C7B80 + 24 * v22 + 8) & 0x7FFFFFFF;
LABEL_24:
            v24 = qword_1EE1C7B80;
            v25 = qword_1EE1C7B80 + 24 * v22;
            v28 = *(v25 + 8);
            v27 = (v25 + 8);
            v26 = v28;
            if (v28 < 0)
            {
              *v27 = v26 & 0x7FFFFFFF;
              v24 = qword_1EE1C7B80;
              v26 = *(qword_1EE1C7B80 + 24 * v22 + 8);
            }

            *(v24 + 24 * v22 + 8) = dword_1EE1C7B94 | v26 & 0x80000000;
            --dword_1EE1C7B8C;
            dword_1EE1C7B94 = v22;
            ++dword_1EE1C7B98;
          }

          else
          {
            while (1)
            {
              v23 = v22;
              v22 = *(qword_1EE1C7B80 + 24 * v22 + 8) & 0x7FFFFFFF;
              if (v22 == 0x7FFFFFFF)
              {
                break;
              }

              if (*(qword_1EE1C7B80 + 24 * v22 + 16) == v19)
              {
                *(qword_1EE1C7B80 + 24 * v23 + 8) = *(qword_1EE1C7B80 + 24 * v23 + 8) & 0x80000000 | *(qword_1EE1C7B80 + 24 * v22 + 8) & 0x7FFFFFFF;
                goto LABEL_24;
              }
            }
          }
        }
      }

      v10 += 2;
    }

    while (v10 != v11);
  }

  os_unfair_lock_unlock(&dword_1EE1C7BA0);
  v29 = re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(__b);
  result = v49;
  if (v49)
  {
    if (v44)
    {
      return (*(*v49 + 40))(v29);
    }
  }

  return result;
}

uint64_t re::IntrospectionRegistry::lookupType(re::IntrospectionRegistry *this, const char *a2)
{
  globalIntrospectionTable();
  os_unfair_lock_lock(&dword_1EE1C7BA0);
  v3 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(&globalIntrospectionTable(void)::table, this);
  if (v3)
  {
    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&dword_1EE1C7BA0);
  return v4;
}

uint64_t re::IntrospectionRegistry::query(uint64_t a1, void *a2)
{
  v4 = a2[2];
  globalIntrospectionTable();
  os_unfair_lock_lock(&dword_1EE1C7BA0);
  v5 = dword_1EE1C7B60;
  if (dword_1EE1C7B60)
  {
    v6 = 0;
    v7 = qword_1EE1C7B50;
    while (1)
    {
      v8 = *v7;
      v7 += 14;
      if (v8 < 0)
      {
        break;
      }

      if (dword_1EE1C7B60 == ++v6)
      {
        LODWORD(v6) = dword_1EE1C7B60;
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 != dword_1EE1C7B60)
  {
    v9 = qword_1EE1C7B50;
    do
    {
      v13 = *(v9 + 56 * v6 + 40);
      v14 = v13;
      if ((*(**(a1 + 32) + 16))(*(a1 + 32), &v14))
      {
        re::DynamicArray<re::TransitionCondition *>::add(a2, &v13);
      }

      if (dword_1EE1C7B60 <= (v6 + 1))
      {
        v10 = v6 + 1;
      }

      else
      {
        v10 = dword_1EE1C7B60;
      }

      v9 = qword_1EE1C7B50;
      while (v10 - 1 != v6)
      {
        LODWORD(v6) = v6 + 1;
        if ((*(qword_1EE1C7B50 + 56 * v6) & 0x80000000) != 0)
        {
          goto LABEL_19;
        }
      }

      LODWORD(v6) = v10;
LABEL_19:
      ;
    }

    while (v6 != v5);
  }

  v11 = a2[2] - v4;
  os_unfair_lock_unlock(&dword_1EE1C7BA0);
  return v11;
}

void anonymous namespace::IntrospectionRegistryTable::IntrospectionRegistryTable(_anonymous_namespace_::IntrospectionRegistryTable *this)
{
  v1 = re::introspectionAllocator(this);
  globalIntrospectionTable(void)::table = 0u;
  *&qword_1EE1C7B50 = 0u;
  dword_1EE1C7B60 = 0;
  *&dword_1EE1C7B64 = 0x7FFFFFFFLL;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(&globalIntrospectionTable(void)::table, v1, 3);
  v3 = re::introspectionAllocator(v2);
  unk_1EE1C7B70 = 0u;
  *&qword_1EE1C7B80 = 0u;
  dword_1EE1C7B90 = 0;
  *&dword_1EE1C7B94 = 0x7FFFFFFFLL;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(&unk_1EE1C7B70, v3, 3);
  dword_1EE1C7BA0 = 0;
}

uint64_t re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 56 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 48) = a3;
  ++*(a1 + 28);
  return v7 + 56 * v5;
}

void re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 48) % *(v4 + 24));
        v8 = (*(a2 + 16) + v5);
        *(result + 24) = 0u;
        *(result + 8) = 0u;
        *(result + 32) = v8[4];
        v9 = v8[2];
        *(result + 8) = v8[1];
        v8[1] = 0;
        v10 = v8[3];
        v8[4] = 0;
        v12 = *(result + 16);
        v11 = *(result + 24);
        *(result + 16) = v9;
        *(result + 24) = v10;
        v8[2] = v12;
        v8[3] = v11;
        *(result + 40) = *(*(a2 + 16) + v5 + 40);
        v2 = *(a2 + 32);
      }

      v5 += 56;
    }
  }

  return result;
}

uint64_t re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 24 * v8 + 8) = v11 | 0x80000000;
  *(*(a1 + 16) + 24 * v8 + 8) = *(*(a1 + 16) + 24 * v8 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 24 * v8) = a3;
  *(*(a1 + 16) + 24 * v8 + 16) = *a5;
  *(*(a1 + 8) + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

void re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v13, v4, a2);
      v5 = *v13;
      *v13 = *a1;
      *a1 = v5;
      v6 = *&v13[16];
      *&v13[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v8 = *&v13[24];
      *&v13[24] = *(a1 + 24);
      v7 = *&v13[32];
      *(a1 + 24) = v8;
      v9 = v7;
      if (v7)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(*&v13[16] + v10 + 8) & 0x80000000) != 0)
          {
            re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::addAsMove(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 16, *&v13[16] + v10 + 16);
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 24;
        }

        while (v11 < v9);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v13);
    }
  }

  else
  {
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 3;
    }
  }
}

BOOL re::IntrospectionBase::references(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 32))(a1);
  if (v6)
  {
    v7 = v6;
    v8 = (*(*a1 + 40))(a1, 0);
    if (v8 != a2)
    {
      v9 = v8;
      v10 = 0;
      v11 = 1;
      while (1)
      {
        v19 = v9;
        if (!re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a3, &v19))
        {
          break;
        }

LABEL_14:
        v11 = ++v10 < v7;
        if (v10 != v7)
        {
          v9 = (*(*a1 + 40))(a1, v10);
          if (v9 != a2)
          {
            continue;
          }
        }

        return v11;
      }

      v19 = v9;
      v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
      v13 = v12 ^ (v12 >> 31);
      v14 = *(a3 + 24);
      if (v14)
      {
        v15 = v13 % v14;
        v16 = *(*(a3 + 8) + 4 * (v13 % v14));
        if (v16 != 0x7FFFFFFF)
        {
          v17 = *(a3 + 16);
          while (*(v17 + 24 * v16 + 16) != v9)
          {
            LODWORD(v16) = *(v17 + 24 * v16 + 8) & 0x7FFFFFFF;
            if (v16 == 0x7FFFFFFF)
            {
              goto LABEL_12;
            }
          }

LABEL_13:
          if (re::IntrospectionBase::references(v9, a2, a3))
          {
            return v11;
          }

          goto LABEL_14;
        }
      }

      else
      {
        LODWORD(v15) = 0;
      }

LABEL_12:
      re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::addAsMove(a3, v15, v13, &v19, &v19);
      ++*(a3 + 40);
      goto LABEL_13;
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

re::IntrospectionBasic *re::IntrospectionBasic::IntrospectionBasic(re::IntrospectionBasic *this, const char *a2, int a3, int a4, char a5, char a6)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v12 + 16) = 0;
  *(v12 + 20) = a3;
  *(v12 + 24) = a4;
  *(v12 + 28) = a5;
  *(v12 + 29) = a5 & a6;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0xFFFFFFFFLL;
  *v12 = &unk_1F5D0C558;
  *(v12 + 48) = a2;
  *(v12 + 56) = 0;
  if (!strcmp(a2, "BOOL"))
  {
    v14 = 1;
    goto LABEL_26;
  }

  if (!strcmp(a2, "char"))
  {
    v14 = 2;
    goto LABEL_26;
  }

  if (!strcmp(a2, "short"))
  {
    v14 = 3;
    goto LABEL_26;
  }

  if (!strcmp(a2, "int"))
  {
    v14 = 4;
    goto LABEL_26;
  }

  if (!strcmp(a2, "int64_t"))
  {
    v14 = 5;
    goto LABEL_26;
  }

  if (!strcmp(a2, "uint8_t"))
  {
    v14 = 6;
    goto LABEL_26;
  }

  if (!strcmp(a2, "uint16_t"))
  {
    v14 = 7;
    goto LABEL_26;
  }

  if (!strcmp(a2, "uint32_t"))
  {
    v14 = 8;
    goto LABEL_26;
  }

  if (!strcmp(a2, "uint64_t"))
  {
    v14 = 9;
    goto LABEL_26;
  }

  if (!strcmp(a2, "float"))
  {
    v14 = 10;
    goto LABEL_26;
  }

  if (!strcmp(a2, "double"))
  {
    v14 = 11;
    goto LABEL_26;
  }

  v13 = a3 - 1;
  if (a3 - 1) <= 7 && ((0x8Bu >> v13))
  {
    v14 = dword_1E3100704[v13];
LABEL_26:
    *(this + 14) = v14;
  }

  return this;
}

void re::IntrospectionCStyleArray::IntrospectionCStyleArray(re::IntrospectionCStyleArray *this, const re::IntrospectionBase *a2, uint64_t a3)
{
  v4 = *(a2 + 5);
  if ((v4 & 0x80000000) != 0)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid array element size.", "elementSize >= 0", "checkedArraySize", 20);
    _os_crash();
    __break(1u);
    goto LABEL_6;
  }

  v3 = a3;
  if ((a3 & 0x80000000) != 0)
  {
LABEL_6:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid array element count.", "elementCount >= 0", "checkedArraySize", 21);
    _os_crash();
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4 * a3;
  if (v5 == v5)
  {
    v7 = *(a2 + 6);
    ArcSharedObject::ArcSharedObject(this, 0);
    *(v8 + 16) = 2;
    *(v8 + 20) = v5;
    *(v8 + 24) = v7;
    *(v8 + 28) = 0;
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xFFFFFFFFLL;
    *v8 = &unk_1F5CB0038;
    *(v8 + 48) = a2;
    *(v8 + 56) = 0;
    *(v8 + 64) = v3;
    return;
  }

LABEL_7:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in array. Element size = %d bytes, count = %d", "!overflow", "checkedArraySize", 27, v4, v3);
  _os_crash();
  __break(1u);
}

double re::IntrospectionDynamicString::IntrospectionDynamicString(re::IntrospectionDynamicString *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v1 + 16) = 0x2000000006;
  *(v1 + 24) = 8;
  *(v1 + 28) = 0;
  *(v1 + 32) = 0;
  *&result = 0xFFFFFFFFLL;
  *(v1 + 40) = 0xFFFFFFFFLL;
  *v1 = &unk_1F5D0C618;
  return result;
}

void *re::IntrospectionDynamicString::childInfo(re::IntrospectionDynamicString *this, uint64_t a2)
{
  if (a2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Index out of range.", "index == 0", "childInfo", 321);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    re::introspect_char(1, 0);
    return &re::introspect_char(BOOL)::info;
  }

  return result;
}

double re::IntrospectionPointer::IntrospectionPointer(re::IntrospectionPointer *this, const re::IntrospectionBase *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0x800000001;
  *(v3 + 24) = 8;
  *(v3 + 28) = 0;
  *(v3 + 32) = 0;
  *&result = 0xFFFFFFFFLL;
  *(v3 + 40) = 0xFFFFFFFFLL;
  *v3 = &unk_1F5CBD2C0;
  *(v3 + 48) = a2;
  *(v3 + 56) = 0;
  return result;
}

double re::IntrospectionStringID::IntrospectionStringID(re::IntrospectionStringID *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v1 + 24) = 8;
  *(v1 + 28) = 0;
  *(v1 + 32) = 0;
  *&result = 0xFFFFFFFFLL;
  *(v1 + 40) = 0xFFFFFFFFLL;
  *v1 = &unk_1F5D0C6D8;
  *(v1 + 16) = 0x100000000ALL;
  return result;
}

uint64_t re::IntrospectionStructure::childInfoCount(re::IntrospectionStructure *this)
{
  v1 = *(this + 14);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = *(this + 8);
  do
  {
    v5 = *v4++;
    if (*v5 == 1)
    {
      ++result;
    }

    --v1;
  }

  while (v1);
  return result;
}

uint64_t re::IntrospectionStructure::childInfo(re::IntrospectionStructure *this, uint64_t a2)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 8);
    do
    {
      v5 = *v4;
      if (**v4 == 1)
      {
        if (v3 == a2)
        {
          return *(v5 + 2);
        }

        ++v3;
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Index out of range.", "!Unreachable code", "childInfo", 506);
  _os_crash();
  __break(1u);
  return *(v5 + 2);
}

void *re::introspect_BOOL(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_BOOL(BOOL)::info, "BOOL", 1, 1, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_BOOL(BOOL)::isInitialized)
    {
      return &re::introspect_BOOL(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v9);
    v3 = re::introspect_BOOL(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v9);
    if (v3)
    {
      return &re::introspect_BOOL(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_BOOL(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_BOOL(BOOL)::info;
    }
  }

  re::introspect_BOOL(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_BOOL(BOOL)::info, a2);
  v8[0] = 6059476;
  v8[1] = "BOOL";
  xmmword_1EE1C7020 = v9;
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_BOOL(BOOL)::info;
}

std::__shared_mutex_base *re::introspectionSharedMutex(re *this)
{
  {
    std::__shared_mutex_base::__shared_mutex_base(&re::introspectionSharedMutex(void)::mutex);
  }

  return &re::introspectionSharedMutex(void)::mutex;
}

void re::TypeBuilderHelper::registerBasic<BOOL>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, void *a3@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v18);
  if (v18)
  {
    *a3 = v18;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v17);
    re::TypeBuilder::TypeBuilder(v7, v17);
    v10 = -1;
    memset(v11, 0, sizeof(v11));
    v12 = 0u;
    v13 = 0xFFFFFFFFLL;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v7[0] = 1;
    re::StringID::operator=(&v8, a2);
    v9 = 1;
    *(v11 + 4) = 0x100000001uLL;
    *(&v12 + 4) = 0;
    *(&v11[1] + 4) = 0;
    v14 = 1;
    v16 = 1;
    re::TypeBuilder::commitTo(v7, a1, a3);
    re::TypeBuilder::~TypeBuilder(v7, v6);
    re::StackScratchAllocator::~StackScratchAllocator(v17);
  }
}

void *re::introspect_char(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_char(BOOL)::info, "char", 1, 1, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_char(BOOL)::isInitialized)
    {
      return &re::introspect_char(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v9);
    v3 = re::introspect_char(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v9);
    if (v3)
    {
      return &re::introspect_char(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_char(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_char(BOOL)::info;
    }
  }

  re::introspect_char(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_char(BOOL)::info, a2);
  v8[0] = 6104748;
  v8[1] = "char";
  xmmword_1EE1C6FD8 = v9;
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_char(BOOL)::info;
}

void *re::introspect_float(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_float(BOOL)::info, "float", 4, 4, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_float(BOOL)::isInitialized)
    {
      return &re::introspect_float(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v8);
    v3 = re::introspect_float(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v8);
    if (v3)
    {
      return &re::introspect_float(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_float(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_float(BOOL)::info;
    }
  }

  re::introspect_float(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_float(BOOL)::info, a2);
  v7[0] = 195052728;
  v7[1] = "float";
  xmmword_1EE1C6EA0 = v8;
  if (v7[0])
  {
    if (v7[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_float(BOOL)::info;
}

void re::TypeBuilderHelper::registerBasic<float>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, void *a3@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v18);
  if (v18)
  {
    *a3 = v18;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v17);
    re::TypeBuilder::TypeBuilder(v7, v17);
    v10 = -1;
    memset(v11, 0, sizeof(v11));
    v12 = 0u;
    v13 = 0xFFFFFFFFLL;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v7[0] = 1;
    re::StringID::operator=(&v8, a2);
    v9 = 1;
    *(v11 + 4) = 0x400000004uLL;
    *(&v12 + 4) = 0;
    *(&v11[1] + 4) = 0;
    v14 = 1;
    v16 = 2;
    re::TypeBuilder::commitTo(v7, a1, a3);
    re::TypeBuilder::~TypeBuilder(v7, v6);
    re::StackScratchAllocator::~StackScratchAllocator(v17);
  }
}

void *re::introspect_double(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_double(BOOL)::info, "double", 8, 8, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_double(BOOL)::isInitialized)
    {
      return &re::introspect_double(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v9);
    v3 = re::introspect_double(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v9);
    if (v3)
    {
      return &re::introspect_double(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_double(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_double(BOOL)::info;
    }
  }

  re::introspect_double(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_double(BOOL)::info, a2);
  v8[0] = 0x161EEF7A2;
  v8[1] = "double";
  xmmword_1EE1C6DD8 = v9;
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_double(BOOL)::info;
}

void re::TypeBuilderHelper::registerBasic<double>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, void *a3@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v18);
  if (v18)
  {
    *a3 = v18;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v17);
    re::TypeBuilder::TypeBuilder(v7, v17);
    v10 = -1;
    memset(v11, 0, sizeof(v11));
    v12 = 0u;
    v13 = 0xFFFFFFFFLL;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v7[0] = 1;
    re::StringID::operator=(&v8, a2);
    v9 = 1;
    *(v11 + 4) = 0x800000008uLL;
    *(&v12 + 4) = 0;
    *(&v11[1] + 4) = 0;
    v14 = 1;
    v16 = 2;
    re::TypeBuilder::commitTo(v7, a1, a3);
    re::TypeBuilder::~TypeBuilder(v7, v6);
    re::StackScratchAllocator::~StackScratchAllocator(v17);
  }
}

void *re::introspect_short(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_short(BOOL)::info, "short", 2, 2, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_short(BOOL)::isInitialized)
    {
      return &re::introspect_short(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v9);
    v3 = re::introspect_short(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v9);
    if (v3)
    {
      return &re::introspect_short(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_short(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_short(BOOL)::info;
    }
  }

  re::introspect_short(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_short(BOOL)::info, a2);
  v8[0] = 218827000;
  v8[1] = "short";
  xmmword_1EE1C6E58 = v9;
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_short(BOOL)::info;
}

void re::TypeBuilderHelper::registerBasic<short>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, void *a3@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v18);
  if (v18)
  {
    *a3 = v18;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v17);
    re::TypeBuilder::TypeBuilder(v7, v17);
    v10 = -1;
    memset(v11, 0, sizeof(v11));
    v12 = 0u;
    v13 = 0xFFFFFFFFLL;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v7[0] = 1;
    re::StringID::operator=(&v8, a2);
    v9 = 1;
    *(v11 + 4) = 0x200000002uLL;
    *(&v12 + 4) = 0;
    *(&v11[1] + 4) = 0;
    v14 = 1;
    v16 = 1;
    re::TypeBuilder::commitTo(v7, a1, a3);
    re::TypeBuilder::~TypeBuilder(v7, v6);
    re::StackScratchAllocator::~StackScratchAllocator(v17);
  }
}

void *re::introspect_int(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_int(BOOL)::info, "int", 4, 4, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_int(BOOL)::isInitialized)
    {
      return &re::introspect_int(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v9);
    v3 = re::introspect_int(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v9);
    if (v3)
    {
      return &re::introspect_int(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_int(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_int(BOOL)::info;
    }
  }

  re::introspect_int(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_int(BOOL)::info, a2);
  v8[0] = 208862;
  v8[1] = "int";
  xmmword_1EE1C7090 = v9;
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_int(BOOL)::info;
}

void re::TypeBuilderHelper::registerBasic<int>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, void *a3@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v18);
  if (v18)
  {
    *a3 = v18;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v17);
    re::TypeBuilder::TypeBuilder(v7, v17);
    v10 = -1;
    memset(v11, 0, sizeof(v11));
    v12 = 0u;
    v13 = 0xFFFFFFFFLL;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v7[0] = 1;
    re::StringID::operator=(&v8, a2);
    v9 = 1;
    *(v11 + 4) = 0x400000004uLL;
    *(&v12 + 4) = 0;
    *(&v11[1] + 4) = 0;
    v14 = 1;
    v16 = 1;
    re::TypeBuilder::commitTo(v7, a1, a3);
    re::TypeBuilder::~TypeBuilder(v7, v6);
    re::StackScratchAllocator::~StackScratchAllocator(v17);
  }
}

void *re::introspect_long(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_long(BOOL)::info, "long", 8, 8, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_long(BOOL)::isInitialized)
    {
      return &re::introspect_long(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v9);
    v3 = re::introspect_long(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v9);
    if (v3)
    {
      return &re::introspect_long(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_long(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_long(BOOL)::info;
    }
  }

  re::introspect_long(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_long(BOOL)::info, a2);
  v8[0] = 6655224;
  v8[1] = "long";
  xmmword_1EE1C6F90 = v9;
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_long(BOOL)::info;
}

void re::TypeBuilderHelper::registerBasic<long>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, void *a3@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v18);
  if (v18)
  {
    *a3 = v18;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v17);
    re::TypeBuilder::TypeBuilder(v7, v17);
    v10 = -1;
    memset(v11, 0, sizeof(v11));
    v12 = 0u;
    v13 = 0xFFFFFFFFLL;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v7[0] = 1;
    re::StringID::operator=(&v8, a2);
    v9 = 1;
    *(v11 + 4) = 0x800000008uLL;
    *(&v12 + 4) = 0;
    *(&v11[1] + 4) = 0;
    v14 = 1;
    v16 = 1;
    re::TypeBuilder::commitTo(v7, a1, a3);
    re::TypeBuilder::~TypeBuilder(v7, v6);
    re::StackScratchAllocator::~StackScratchAllocator(v17);
  }
}

void *re::introspect_size_t(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_size_t(BOOL)::info, "size_t", 8, 8, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_size_t(BOOL)::isInitialized)
    {
      return &re::introspect_size_t(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v9);
    v3 = re::introspect_size_t(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v9);
    if (v3)
    {
      return &re::introspect_size_t(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_size_t(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_size_t(BOOL)::info;
    }
  }

  re::introspect_size_t(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_size_t(BOOL)::info, a2);
  v8[0] = 0x1947BDF6CLL;
  v8[1] = "size_t";
  xmmword_1EE1C6D90 = v9;
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_size_t(BOOL)::info;
}

void *re::introspect_int64_t(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_int64_t(BOOL)::info, "int64_t", 8, 8, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_int64_t(BOOL)::isInitialized)
    {
      return &re::introspect_int64_t(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v9);
    v3 = re::introspect_int64_t(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v9);
    if (v3)
    {
      return &re::introspect_int64_t(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_int64_t(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_int64_t(BOOL)::info;
    }
  }

  re::introspect_int64_t(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_int64_t(BOOL)::info, a2);
  v8[0] = 0x2CE93EC744;
  v8[1] = "int64_t";
  xmmword_1EE1C6CF8 = v9;
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_int64_t(BOOL)::info;
}

void *re::introspect_uint8_t(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_uint8_t(BOOL)::info, "uint8_t", 1, 1, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_uint8_t(BOOL)::isInitialized)
    {
      return &re::introspect_uint8_t(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v9);
    v3 = re::introspect_uint8_t(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v9);
    if (v3)
    {
      return &re::introspect_uint8_t(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_uint8_t(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_uint8_t(BOOL)::info;
    }
  }

  re::introspect_uint8_t(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_uint8_t(BOOL)::info, a2);
  v8[0] = 0x31CD534126;
  v8[1] = "uint8_t";
  xmmword_1EE1C6CB0 = v9;
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_uint8_t(BOOL)::info;
}

void *re::introspect_uint16_t(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_uint16_t(BOOL)::info, "uint16_t", 2, 2, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_uint16_t(BOOL)::isInitialized)
    {
      return &re::introspect_uint16_t(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v9);
    v3 = re::introspect_uint16_t(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v9);
    if (v3)
    {
      return &re::introspect_uint16_t(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_uint16_t(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_uint16_t(BOOL)::info;
    }
  }

  re::introspect_uint16_t(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_uint16_t(BOOL)::info, a2);
  v8[0] = 0x607DD0D4E68;
  v8[1] = "uint16_t";
  xmmword_1EE1C6AE0 = v9;
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_uint16_t(BOOL)::info;
}

void *re::introspect_uint32_t(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_uint32_t(BOOL)::info, "uint32_t", 4, 4, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_uint32_t(BOOL)::isInitialized)
    {
      return &re::introspect_uint32_t(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v9);
    v3 = re::introspect_uint32_t(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v9);
    if (v3)
    {
      return &re::introspect_uint32_t(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_uint32_t(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_uint32_t(BOOL)::info;
    }
  }

  re::introspect_uint32_t(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_uint32_t(BOOL)::info, a2);
  v8[0] = 0x607DD0F01DCLL;
  v8[1] = "uint32_t";
  xmmword_1EE1C6A98 = v9;
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_uint32_t(BOOL)::info;
}

void *re::introspect_uint64_t(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_uint64_t(BOOL)::info, "uint64_t", 8, 8, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_uint64_t(BOOL)::isInitialized)
    {
      return &re::introspect_uint64_t(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v9);
    v3 = re::introspect_uint64_t(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v9);
    if (v3)
    {
      return &re::introspect_uint64_t(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_uint64_t(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_uint64_t(BOOL)::info;
    }
  }

  re::introspect_uint64_t(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_uint64_t(BOOL)::info, a2);
  v8[0] = 0x607DD11CB1ALL;
  v8[1] = "uint64_t";
  xmmword_1EE1C6A50 = v9;
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_uint64_t(BOOL)::info;
}

uint64_t re::appendPrettyTypeName(re *this, const re::IntrospectionBase *a2, re::DynamicString *a3)
{
  switch(*(this + 4))
  {
    case 0:
    case 8:
    case 9:
    case 0xB:
      v5 = *(this + 6);
      v6 = strlen(v5);
      v7 = a2;
      v8 = v5;
      goto LABEL_15;
    case 1:
      re::appendPrettyTypeName(*(this + 6), a2, a3);
      v8 = "*";
      goto LABEL_14;
    case 2:
      re::appendPrettyTypeName(*(this + 6), a2, a3);
      return re::DynamicString::appendf(a2, "[%d]", *(this + 16));
    case 3:
      v9 = "DynamicArray<";
      v10 = a2;
      v11 = 13;
      goto LABEL_12;
    case 4:
      v9 = "FixedArray<";
      v10 = a2;
      v11 = 11;
      goto LABEL_12;
    case 5:
      v9 = "DataArray<";
      v10 = a2;
      v11 = 10;
      goto LABEL_12;
    case 6:
      v8 = "DynamicString";
      v7 = a2;
      v6 = 13;
      goto LABEL_15;
    case 7:
      re::DynamicString::append(a2, "HashTable<", 0xAuLL);
      re::appendPrettyTypeName(*(this + 6), a2, v12);
      re::DynamicString::append(a2, ",", 1uLL);
      v14 = *(this + 8);
      goto LABEL_13;
    case 0xA:
      v8 = "StringID";
      v7 = a2;
      v6 = 8;
      goto LABEL_15;
    case 0xD:
      v9 = "Optional<";
      v10 = a2;
      v11 = 9;
LABEL_12:
      re::DynamicString::append(v10, v9, v11);
      v14 = *(this + 6);
LABEL_13:
      re::appendPrettyTypeName(v14, a2, v13);
      v8 = ">";
LABEL_14:
      v7 = a2;
      v6 = 1;
LABEL_15:

      result = re::DynamicString::append(v7, v8, v6);
      break;
    default:
      re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "appendPrettyTypeName", 618);
      result = _os_crash();
      __break(1u);
      break;
  }

  return result;
}

uint64_t re::getPrettyTypeName@<X0>(re *this@<X0>, const re::IntrospectionBase *a2@<X8>)
{
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  re::DynamicString::setCapacity(a2, 0);

  return re::appendPrettyTypeName(this, a2, v5);
}

const char **re::getIntrospectionPolymorphicTypeByName(unsigned int *a1, char *__s2)
{
  v2 = *a1;
  if (!v2)
  {
    return 0;
  }

  for (i = *(a1 + 1); strcmp(*i, __s2); i += 5)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  return i;
}

uint64_t re::getIntrospectionPolymorphicTypeByPrettyType(_anonymous_namespace_ *a1, const char *a2)
{
  if (!*a1)
  {
    return 0;
  }

  v3 = a1;
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = *(*(v3 + 1) + v4 + 8);
    v13 = 0u;
    v14 = 0u;
    re::DynamicString::setCapacity(&v13, 0);
    re::appendPrettyTypeName(v6, &v13, v7);
    v8 = BYTE8(v13) & 1;
    v9 = (BYTE8(v13) & 1) != 0 ? v14 : &v13 + 9;
    v10 = strcmp(v9, a2);
    v11 = *(v3 + 1);
    a1 = v13;
    if (v13)
    {
      if (v8)
      {
        a1 = (*(*v13 + 40))();
      }
    }

    if (!v10)
    {
      break;
    }

    ++v5;
    v4 += 40;
    if (v5 >= *v3)
    {
      return 0;
    }
  }

  return v11 + v4;
}

const char **re::getIntrospectionEnumValueByName(unsigned int *a1, char *__s2)
{
  v2 = *a1;
  if (!v2)
  {
    return 0;
  }

  for (i = *(a1 + 1); ; ++i)
  {
    v5 = *i;
    if (**i == 1 && !strcmp(v5[2], __s2))
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return v5;
}

const char **re::getIntrospectionEnumValueRename(unsigned int *a1, char *__s2)
{
  v2 = *a1;
  if (!v2)
  {
    return 0;
  }

  for (i = *(a1 + 1); ; ++i)
  {
    v5 = *i;
    if (**i == 2 && !strcmp(v5[2], __s2))
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return v5;
}

const char **re::getIntrospectionEnumValueWithVersioning@<X0>(unsigned int *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  result = re::getIntrospectionEnumValueRename(a1, a2);
  if (result || (result = re::getIntrospectionEnumValueByName(a1, a2)) != 0)
  {
    *a3 = 1;
    *(a3 + 8) = result[1];
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void *re::makePrettyMemberName@<X0>(re *this@<X0>, re::DynamicString *a2@<X8>)
{
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  re::DynamicString::setCapacity(a2, 0);
  v5 = strlen(this);
  if (v5 < 3)
  {
    if (v5 != 2)
    {
      goto LABEL_10;
    }

    v6 = *this;
  }

  else
  {
    v6 = *this;
    if (v6 == 109)
    {
      if (*(this + 1) == 95)
      {
        v7 = strlen(this + 2);
        v8 = this + 2;
LABEL_9:
        v9 = a2;
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  if (v6 == 95)
  {
    v7 = strlen(this + 1);
    v8 = this + 1;
    goto LABEL_9;
  }

LABEL_10:
  v7 = strlen(this);
  v9 = a2;
  v8 = this;
LABEL_11:

  return re::DynamicString::append(v9, v8, v7);
}

BOOL re::introspectionPrettyNameCompare(const char *a1, const char *a2, size_t a3)
{
  v5 = a1;
  v6 = strlen(a1);
  v7 = *v5;
  v8 = v6 - 2;
  if (v6 >= 2 && v7 == 109)
  {
    v9 = *(v5 + 1);
    v10 = v9 == 95;
    if (v9 == 95)
    {
      v5 += 2;
    }
  }

  else
  {
    v8 = v6 - 1;
    v10 = v7 == 95;
    if (v7 == 95)
    {
      ++v5;
    }
  }

  if (!v10)
  {
    v8 = v6;
  }

  result = 0;
  if (v8 && v8 == a3)
  {
    return !strncmp(v5, a2, a3) || __toupper(*v5) == *a2 && !strncmp(v5 + 1, a2 + 1, a3 - 1);
  }

  return result;
}

uint64_t re::getIntrospectionMemberByNameRecursive(re *this, const re::IntrospectionStructure *a2, const char *a3, int *a4)
{
  if (!*(this + 14))
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(*(this + 8) + 8 * v7);
    if (*v8 != 1)
    {
      break;
    }

    if (*(v8 + 40) == 3)
    {
      v10 = *(v8 + 16);
      *a3 = 0;
      IntrospectionMemberByNameRecursive = re::getIntrospectionMemberByNameRecursive(v10, a2, a3, a4);
      if (IntrospectionMemberByNameRecursive)
      {
        *a3 += *(v8 + 36);
        return IntrospectionMemberByNameRecursive;
      }
    }

    else
    {
      v12 = strlen(a2);
      if (re::introspectionPrettyNameCompare(*(v8 + 8), a2, v12))
      {
        return v8;
      }
    }

LABEL_11:
    if (++v7 >= *(this + 14))
    {
      return 0;
    }
  }

  if (*v8 != 5)
  {
    goto LABEL_11;
  }

  v9 = strlen(a2);
  if (!re::introspectionPrettyNameCompare(*(v8 + 8), a2, v9))
  {
    goto LABEL_11;
  }

  re::makePrettyMemberName(*(v8 + 16), &v16);
  if (v17)
  {
    v15 = *&v18[7];
  }

  else
  {
    v15 = v18;
  }

  *a3 = 0;
  v8 = re::getIntrospectionMemberByNameRecursive(this, v15, a3, v14);
  if (v16 && (v17 & 1) != 0)
  {
    (*(*v16 + 40))();
  }

  return v8;
}

re::IntrospectionBase *re::introspectionAllocPointer(re *a1, _anonymous_namespace_ *a2, re::Allocator *a3)
{
  v6 = *(a3 + 5);
  v7 = *(a3 + 6);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = (*(*a1 + 32))(a1, v6, v7);
  re::introspectionCallConstructor(a2, a3, v8);
  re::introspectionInitElement(a1, v9, a3, v8);
  return v8;
}

void re::introspectionDestroyAllocatedMemory(re::DynamicString *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  if (v7 <= 4)
  {
    if (v7 <= 2)
    {
      if (v7 == 1)
      {
        if (*a1)
        {

          re::introspectionReleasePointer();
        }
      }

      else if (v7 == 2 && *(a4 + 64) >= 1)
      {
        v9 = 0;
        do
        {
          re::introspectionDestroyAllocatedMemory(a1 + *(*(a4 + 48) + 20) * v9++, a2, a3);
        }

        while (v9 < *(a4 + 64));
      }

      return;
    }

    if (v7 == 3)
    {
      v10 = *(*a4 + 56);
      v11 = a4;
      v12 = a1;
    }

    else
    {
      v10 = *(*a4 + 56);
      v11 = a4;
      v12 = a1;
    }

LABEL_36:
    v10(v11, v12);
    return;
  }

  if (v7 <= 6)
  {
    if (v7 != 5)
    {

      re::DynamicString::deinit(a1);
      return;
    }

    v10 = *(*a4 + 56);
    v11 = a4;
    v12 = a1;

    goto LABEL_36;
  }

  switch(v7)
  {
    case 7:
      v10 = *(*a4 + 56);
      v11 = a4;
      v12 = a1;

      goto LABEL_36;
    case 8:
      v13 = *(a4 + 96);
      if (v13)
      {

        v13();
      }

      else
      {
        re::PolymorphicData::makeWithPointer(a4, a1, &__src);
        v14 = v22;
        v15 = a4;
        if (v22)
        {
          v15 = a4;
          if (v21)
          {
            v15 = a4;
            if (__src)
            {
              v19 = 0;
              memcpy(&v19, __src, *(v21 + 20));
              v16 = *v14;
              v15 = a4;
              if (v16)
              {
                v17 = (*(v14 + 1) + 24);
                while (*v17 != v19)
                {
                  v17 += 5;
                  if (!--v16)
                  {
                    v15 = a4;
                    goto LABEL_50;
                  }
                }

                v15 = *(v17 - 2);
              }
            }
          }
        }

LABEL_50:
        v18 = *(v15 + 80);
        if (v18)
        {
          v18(a4, a3, a1);
        }
      }

      break;
    case 10:

      re::StringID::destroyString(a1);
      break;
  }
}

uint64_t re::PolymorphicData::makeWithPointer@<X0>(uint64_t this@<X0>, const re::IntrospectionBase *a2@<X1>, void *a3@<X8>)
{
  if (*(this + 16) != 8)
  {
    goto LABEL_19;
  }

  v4 = *(this + 56);
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = *(this + 64);
  v6 = *(this + 56);
  v7 = v5;
  do
  {
    v8 = *v7;
    if (**v7 == 2)
    {
      goto LABEL_7;
    }

    ++v7;
    --v6;
  }

  while (v6);
  v8 = 0;
LABEL_7:
  while (1)
  {
    v9 = *v5;
    if (**v5 == 3)
    {
      break;
    }

    ++v5;
    if (!--v4)
    {
      v9 = 0;
      break;
    }
  }

  if (v8 && ((v10 = *(v8 + 1), v9) ? (v11 = v10 == 0) : (v11 = 1), !v11 && (v12 = *(v9 + 1)) != 0))
  {
    *a3 = 0;
    if (a2)
    {
      *a3 = a2 + v9[6];
    }

    a3[1] = v12;
    a3[2] = v10;
  }

  else
  {
LABEL_19:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return this;
}

void re::introspectionReleasePointer(re::DynamicString *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  re::introspectionDestroyAllocatedMemory(a1, a2, a3, a4);
  if (*(a4 + 16) != 8 || !*(a4 + 96))
  {
    v7 = *(*a2 + 40);

    v7(a2, a1);
  }
}

re *re::introspectionInitMember(re *this, re::Allocator *a2, const re::IntrospectionBase *a3, void *a4)
{
  v5 = this;
  v6 = *(a2 + 4);
  if (v6 <= 5)
  {
    if (v6 == 3)
    {
      v7 = *(*a2 + 64);
      v8 = a2;
      v9 = a3;
      v10 = v5;
    }

    else
    {
      if (v6 != 5)
      {
        return this;
      }

      v7 = *(*a2 + 64);
      v8 = a2;
      v9 = a3;
      v10 = v5;
    }

    return v7(v8, v9, v10);
  }

  else
  {
    switch(v6)
    {
      case 6:
        re::DynamicString::deinit(a3);
        *a3 = v5;

        return re::DynamicString::setCapacity(a3, 0);
      case 7:
        v11 = *(*a2 + 64);

        return v11(a2, a3, this, 3);
      case 8:

        return re::introspectionInitStructure(this, a2, a3, a4);
    }
  }

  return this;
}

re *re::introspectionInitStructure(re *this, re::Allocator *a2, const re::IntrospectionStructure *a3, void *a4)
{
  v4 = *(a2 + 14);
  if (v4)
  {
    v7 = this;
    for (i = 0; i < v4; ++i)
    {
      v9 = *(*(a2 + 8) + 8 * i);
      if (*v9 == 1)
      {
        this = re::introspectionInitMember(v7, *(v9 + 16), (a3 + *(v9 + 36)), a4);
        v4 = *(a2 + 14);
      }
    }
  }

  return this;
}

void re::introspectionCallConstructor(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  if (v6 <= 5)
  {
    if (v6 > 3)
    {
      if (v6 == 4)
      {
        v8 = *(*a2 + 48);
        v9 = a2;
        v10 = a3;
      }

      else
      {
        v8 = *(*a2 + 48);
        v9 = a2;
        v10 = a3;
      }
    }

    else
    {
      if (v6 == 2)
      {
        if (*(a2 + 64) >= 1)
        {
          v11 = 0;
          do
          {
            re::introspectionCallConstructor(a1);
            ++v11;
          }

          while (v11 < *(a2 + 64));
        }

        return;
      }

      if (v6 != 3)
      {
        return;
      }

      v8 = *(*a2 + 48);
      v9 = a2;
      v10 = a3;
    }

LABEL_28:
    v8(v9, v10);
    return;
  }

  if (v6 <= 7)
  {
    if (v6 == 6)
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;

      re::DynamicString::setCapacity(a3, 0);
      return;
    }

    v8 = *(*a2 + 48);
    v9 = a2;
    v10 = a3;

    goto LABEL_28;
  }

  switch(v6)
  {
    case 8:
      v7 = *(a2 + 72);
      if (!v7)
      {
        v12 = *(a2 + 20);

        bzero(a3, v12);
        return;
      }

LABEL_30:

      v7(a2, a1);
      return;
    case 10:
      *a3 = 0;
      *(a3 + 8) = &str_67;
      return;
    case 11:
      v7 = *(a2 + 64);
      if (v7)
      {
        goto LABEL_30;
      }

      break;
  }
}

re *re::introspectionInitElement(re *this, int a2, re::Allocator *a3, re::IntrospectionBase *a4)
{
  v7 = *(a3 + 4);
  if (v7 == 2)
  {
    if (*(*(a3 + 6) + 16) == 1)
    {
      bzero(a4, *(a3 + 5));
    }
  }

  else if (v7 == 1)
  {
    *a4 = 0;
  }

  return re::introspectionInitMember(this, a3, a4, a4);
}

re::IntrospectionBase *re::introspectionDeepCopy(re *a1, _anonymous_namespace_ *a2, re::Allocator *a3, uint64_t a4)
{
  v8 = re::introspectionAllocPointer(a1, a2, a3);
  if ((re::introspectionDoDeepCopy(a1, a2, a3, a4, v8) & 1) == 0)
  {
    re::introspectionReleasePointer(v8, a1, a2, a3);
    return 0;
  }

  return v8;
}

uint64_t re::introspectionDoDeepCopy(re *a1, _anonymous_namespace_ *a2, _DWORD *a3, uint64_t *a4, void *a5)
{
  v67[3] = *MEMORY[0x1E69E9840];
  v6 = a5;
  switch(a3[4])
  {
    case 0:
    case 9:
      goto LABEL_2;
    case 1:
      v29 = *(a3 + 6);
      if (*(v29 + 16) != 8 || !*(v29 + 88))
      {
        v61 = *a4;
        if (*a4)
        {
          result = re::introspectionDeepCopy(a1, a2, *(a3 + 6), v61);
          __dst = result;
          if (!result)
          {
            return result;
          }

          v10 = a3[5];
          p_dst = &__dst;
          v11 = v6;
        }

        else
        {
LABEL_2:
          v10 = a3[5];
          v11 = a5;
          p_dst = a4;
        }

        memcpy(v11, p_dst, v10);
        return 1;
      }

      memcpy(a5, a4, a3[5]);
      (*(v29 + 88))(*v6);
      return 1;
    case 2:
      if (*(*(a3 + 6) + 28))
      {
        goto LABEL_2;
      }

      if (a3[16] < 1)
      {
        return 1;
      }

      v27 = 0;
      while (1)
      {
        v28 = (*(*a3 + 40))(a3, 0);
        if ((re::introspectionDoDeepCopy(a1, a2, v28, a4 + *(*(a3 + 6) + 20) * v27, v6 + *(*(a3 + 6) + 20) * v27) & 1) == 0)
        {
          break;
        }

        if (++v27 >= a3[16])
        {
          return 1;
        }
      }

      return 0;
    case 3:
      v13 = (*(*a3 + 88))(a3, a4);
      (*(*a3 + 72))(a3, a1, a2, v6, v13);
      if (!v13)
      {
        return 1;
      }

      v14 = 0;
      while (1)
      {
        v15 = (*(*a3 + 40))(a3, 0);
        v16 = (*(*a3 + 104))(a3, a4, v14);
        v17 = (*(*a3 + 96))(a3, v6, v14);
        if ((re::introspectionDoDeepCopy(a1, a2, v15, v16, v17) & 1) == 0)
        {
          break;
        }

        if (v13 == ++v14)
        {
          return 1;
        }
      }

      return 0;
    case 4:
      v22 = (*(*a3 + 80))(a3, a4);
      (*(*a3 + 64))(a3, v6, a1, a2, v22);
      if (!v22)
      {
        return 1;
      }

      v23 = 0;
      while (1)
      {
        v24 = (*(*a3 + 40))(a3, 0);
        v25 = (*(*a3 + 104))(a3, a4, v23);
        v26 = (*(*a3 + 96))(a3, v6, v23);
        if ((re::introspectionDoDeepCopy(a1, a2, v24, v25, v26) & 1) == 0)
        {
          break;
        }

        if (v22 == ++v23)
        {
          return 1;
        }
      }

      return 0;
    case 5:
      v30 = (*(*a3 + 96))(a3, a4);
      v32 = v31;
      __dst = (*(*a3 + 88))(a3, a4);
      LODWORD(v67[0]) = v33;
      v34 = v32;
      v35 = HIWORD(v32);
      if (__dst == v30 && v33 == v32 && HIWORD(v33) == HIWORD(v32))
      {
        return 1;
      }

      while (1)
      {
        v38 = (*(*a3 + 40))(a3, 0);
        v39 = (*(*a3 + 104))(a3, &__dst);
        v40 = (*(*a3 + 72))(a3, a1, a2, v6);
        result = re::introspectionDoDeepCopy(a1, a2, v38, v39, v40);
        if (!result)
        {
          break;
        }

        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&__dst);
        if (__dst == v30 && LOWORD(v67[0]) == v34 && WORD1(v67[0]) == v35)
        {
          return 1;
        }
      }

      return result;
    case 6:
      re::DynamicString::operator=(a5, a4);
      return 1;
    case 7:
      v60 = (*(*a3 + 80))(a3, a4);
      (*(*a3 + 72))(a3, v6, v60);
      operator new();
    case 8:
      if (!a3[14])
      {
        return 1;
      }

      v47 = 0;
      while (2)
      {
        v48 = *(*(a3 + 8) + 8 * v47);
        if (*v48 != 1)
        {
          goto LABEL_74;
        }

        v49 = *(v48 + 40);
        if (v49 > 1)
        {
          if (v49 == 2)
          {
            memcpy(v6 + *(v48 + 36), a4 + *(v48 + 36), *(*(v48 + 16) + 20));
            memcpy(v6 + *(v48 + 64), a4 + *(v48 + 64), *(*(v48 + 48) + 20));
            v57 = *(*(v48 + 16) + 48);
            if (v57)
            {
              if (*(v57 + 16) == 8)
              {
                v58 = *(v57 + 88);
                if (v58)
                {
                  v58(v6 + *(v48 + 36));
                }
              }
            }

LABEL_74:
            if (++v47 >= a3[14])
            {
              return 1;
            }

            continue;
          }

          if (v49 != 3)
          {
            goto LABEL_74;
          }
        }

        else if (v49)
        {
          if (v49 != 1)
          {
            goto LABEL_74;
          }

          v50 = *(v48 + 64);
          v51 = *(v48 + 48);
          __dst = 0;
          memcpy(&__dst, a4 + v50, *(v51 + 20));
          v52 = __dst;
          v53 = (*(*a1 + 32))(a1, __dst * *(*(v48 + 16) + 20), 0);
          if (v53)
          {
            v54 = v53;
            *(v6 + *(v48 + 36)) = v53;
            v55 = *(a4 + *(v48 + 36));
            v56 = *(a3 + 6);
            if (*(v56 + 28))
            {
              memcpy(v53, *(a4 + *(v48 + 36)), v52 * *(v56 + 20));
LABEL_73:
              v6 = a5;
              memcpy(a5 + *(v48 + 64), &__dst, *(*(v48 + 48) + 20));
              goto LABEL_74;
            }

            v59 = v52 - v47;
            if (v52 <= v47)
            {
              goto LABEL_73;
            }

            while (re::introspectionDoDeepCopy(a1, a2, v56, v55, v54))
            {
              if (!--v59)
              {
                v47 = v52;
                goto LABEL_73;
              }
            }
          }

          return 0;
        }

        break;
      }

      if (re::introspectionDoDeepCopy(a1, a2, *(v48 + 16), a4 + *(v48 + 36), v6 + *(v48 + 36)))
      {
        goto LABEL_74;
      }

      return 0;
    case 0xA:
      re::StringID::operator=(a5, a4);
      return 1;
    case 0xB:
      (*(a3 + 11))(a1, a2, a3, a4, a5);
      return 1;
    case 0xD:
      v18 = (*(*a3 + 56))(a3, a4);
      (*(*a3 + 64))(a3, v6, v18);
      if ((*(*a3 + 56))(a3, a4))
      {
        v19 = (*(*a3 + 40))(a3, 0);
        v20 = (*(*a3 + 80))(a3, a4);
        v21 = (*(*a3 + 72))(a3, v6);
        re::introspectionDoDeepCopy(a1, a2, v19, v20, v21);
      }

      return 1;
    default:
      v44 = *re::foundationIntrospectionLogObjects(a1);
      result = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      re::DynamicString::DynamicString(&__dst);
      re::appendPrettyTypeName(a3, &__dst, v45);
      if (v67[0])
      {
        v46 = v67[1];
      }

      else
      {
        v46 = v67 + 1;
      }

      *buf = 136315138;
      v65 = v46;
      _os_log_error_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_ERROR, "introspectionDeepCopy cannot copy '%s'", buf, 0xCu);
      if (__dst && (v67[0] & 1) != 0)
      {
        (*(*__dst + 40))();
      }

      return 0;
  }
}

unint64_t re::introspectionFindStructureVersion(re *this, const re::IntrospectionStructure *a2)
{
  v2 = *(this + 14);
  if (!v2)
  {
    return 1;
  }

  v3 = *(this + 8);
  result = 1;
  v5 = 1;
  do
  {
    v6 = *v3;
    if (**v3 == 6 && (v6[10] & 1) == 0)
    {
      v7 = *(v6 + 1);
      if (v7 > v5)
      {
        result = v7;
        v5 = v7;
      }
    }

    ++v3;
    --v2;
  }

  while (v2);
  return result;
}

re *re::introspectionFindForVersion(uint64_t **this, const re::IntrospectionStructure *a2)
{
  v10 = 1;
  v11 = this;
  v9 = 0;
  v3 = *(this + 14);
  if (v3)
  {
    v4 = 0;
    v5 = this[8];
    v6 = 1;
    do
    {
      v7 = *v5;
      if (**v5 == 6 && (v7[10] & 1) == 0 && *(v7 + 1) > v6)
      {
        v4 = *v5;
        v6 = *(v7 + 1);
      }

      ++v5;
      --v3;
    }

    while (v3);
    v9 = v4;
    v10 = v6;
  }

  while (v10 != a2)
  {
    {
      return 0;
    }
  }

  return v11;
}

BOOL anonymous namespace::findPreviousVersion(unint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  if (a1 != 1)
  {
    *a3 = *(a2 + 16);
    *a4 = 1;
    *a5 = 0;
    v5 = *a3;
    if (*(*a3 + 56))
    {
      v6 = 0;
      v7 = 1;
      do
      {
        v8 = *(*(v5 + 64) + 8 * v6);
        if (*v8 == 6 && (*(v8 + 40) & 1) == 0)
        {
          v9 = *(v8 + 8);
          if (v9 < a1 && v9 > v7)
          {
            *a4 = v9;
            *a5 = v8;
            v5 = *a3;
            v7 = v9;
          }
        }

        ++v6;
      }

      while (v6 < *(v5 + 56));
    }
  }

  return a1 != 1;
}

uint64_t re::introspectionRunComplexVersion(re *a1, _anonymous_namespace_ *a2, uint64_t a3, unint64_t a4, re::DynamicString *a5, uint64_t a6, unint64_t a7, re::IntrospectionBase *a8)
{
  v13 = *(a6 + 56);
  if (v13)
  {
    v14 = *(a6 + 64);
    do
    {
      v15 = *v14;
      if (**v14 == 6 && (v15[10] & 1) == 0 && *(v15 + 1) == a7)
      {
        goto LABEL_8;
      }

      ++v14;
      --v13;
    }

    while (v13);
  }

  v15 = 0;
LABEL_8:
  while (1)
  {
    v27 = 0;
    v28 = 0;
    v26 = 0;
    {
      break;
    }

    v16 = v27;
    v17 = v15;
    v18 = a7;
    v19 = a6;
    while (v16 != a4)
    {
      v18 = v16;
      v19 = v28;
      v17 = v26;
      v27 = 0;
      v28 = 0;
      v26 = 0;
      {
        goto LABEL_18;
      }

      v16 = v27;
    }

    v20 = *(v17 + 32);
    if (!v20)
    {
      break;
    }

    v21 = a8;
    if (v18 != a7)
    {
      v21 = re::introspectionAllocPointer(a1, a2, v19);
      v20 = *(v17 + 32);
    }

    v20(a2, a5, v21);
    re::introspectionReleasePointer(a5, a1, a2, a3);
    a4 = v18;
    a5 = v21;
    a3 = v19;
    if (v18 >= a7)
    {
      return 1;
    }
  }

LABEL_18:
  re::introspectionReleasePointer(a5, a1, a2, a3);
  return 0;
}

void re::getDowngradeFunctions(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  v4 = *(a1 + 56);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*(a1 + 64) + 8 * i);
      if (*v6 == 6 && *(v6 + 40) == 1 && *(v6 + 56) >= a2)
      {
        std::__tree<std::__value_type<re::DowngradeCode,re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>,std::__map_value_compare<re::DowngradeCode,std::__value_type<re::DowngradeCode,re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>,std::greater<re::DowngradeCode>,true>,std::allocator<std::__value_type<re::DowngradeCode,re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>>>::__emplace_multi<std::pair<re::DowngradeCode const,re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>>();
      }
    }

    v7 = v11;
    if (v11 != v12)
    {
      do
      {
        re::DynamicArray<re::TransitionCondition *>::add(a3, v7 + 5);
        v8 = v7[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v7[2];
            v10 = *v9 == v7;
            v7 = v9;
          }

          while (!v10);
        }

        v7 = v9;
      }

      while (v9 != v12);
    }
  }

  std::__tree<unsigned long long>::destroy(&v11, v12[0]);
}

_DWORD *re::introspectionFirstStructureMember(re *this, const re::IntrospectionStructure *a2)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *(this + 8);
    while (1)
    {
      result = *v3;
      if (**v3 == 1 && result[10] != 3)
      {
        break;
      }

      ++v3;
      if (!--v2)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) No member found in type info.", "!Unreachable code", "introspectionFirstStructureMember", 1434);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void *re::introspectionAllocator(re *this)
{
  {
    byte_1EE1C6860 = 0;
    re::introspectionAllocator(void)::baseAllocator = &unk_1F5CCF7F8;
    *algn_1EE1C6858 = "Introspection allocator";
  }

  {
    re::ThreadSafeAutoFreeAllocator::ThreadSafeAutoFreeAllocator(&re::introspectionAllocator(void)::autoFreeAllocator, "Introspection allocator", &re::introspectionAllocator(void)::baseAllocator);
  }

  return &re::introspectionAllocator(void)::autoFreeAllocator;
}

uint64_t re::CustomPolymorphicTable::addType(re::CustomPolymorphicTable *this, const char *__s, const re::IntrospectionBase *a3, uint64_t a4, int a5)
{
  v10 = strlen(__s);
  v11 = re::globalAllocators(v10);
  v12 = (*(*v11[2] + 32))(v11[2], v10 + 1, 0);
  memcpy(v12, __s, v10 + 1);
  v14 = v12;
  v15[0] = a3;
  v15[1] = 0;
  v15[2] = a4;
  v16 = a5;
  re::DynamicArray<re::IntrospectionPolymorphicType>::add(this, &v14);
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(v15);
  *(this + 10) = *(this + 2);
  *(this + 6) = *(this + 4);
  return result;
}

void *re::DynamicArray<re::IntrospectionPolymorphicType>::add(void *this, uint64_t a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::IntrospectionPolymorphicType>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = v3[4] + 40 * v4;
  *v5 = *a2;
  *(v5 + 16) = 0;
  *(v5 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  v6 = *(v5 + 8);
  *(v5 + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  v7 = *(a2 + 24);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 24) = v7;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

re *re::CustomPolymorphicTable::removeType(re *this, const re::IntrospectionBase *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = this;
    v4 = 0;
    for (i = (*(this + 4) + 8); *i != a2; i += 5)
    {
      if (v2 == ++v4)
      {
        return this;
      }
    }

    v6 = *(i - 1);
    if (v6)
    {
      v7 = re::globalAllocators(this);
      (*(*v7[2] + 40))(v7[2], v6);
    }

    this = re::DynamicArray<re::IntrospectionPolymorphicType>::removeStableAt(v3, v4);
    *(v3 + 40) = *(v3 + 16);
    *(v3 + 48) = *(v3 + 32);
  }

  return this;
}

uint64_t re::DynamicArray<re::IntrospectionPolymorphicType>::removeStableAt(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v2 - 1 > a2)
  {
    v4 = *(a1 + 32);
    v5 = v4 + 40 * a2 + 40;
    if (v5 != v4 + 40 * v2)
    {
      v6 = 40 * v2 - 40 * a2 - 40;
      do
      {
        v7 = *(v5 - 32);
        v8 = *(v5 - 24);
        *(v5 - 40) = *v5;
        v9 = *(v5 + 16);
        v10 = *(v5 + 24);
        *(v5 + 8) = v7;
        *(v5 + 16) = v8;
        *(v5 - 24) = v9;
        *(v5 - 16) = v10;
        *(v5 - 8) = *(v5 + 32);
        v5 += 40;
        v6 -= 40;
      }

      while (v6);
      v2 = *(a1 + 16);
    }
  }

  result = re::SerializedReference<re::IntrospectionBase const*>::reset(*(a1 + 32) + 40 * v2 - 32);
  --*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t re::CustomPolymorphicTable::clear(uint64_t this)
{
  v1 = this;
  *(*(this + 56) + 8) = 0;
  *(this + 48) = 0;
  *(this + 40) = 0;
  v2 = *(this + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(this + 32);
    do
    {
      v6 = *(v5 + v3);
      if (v6)
      {
        v7 = re::globalAllocators(this);
        this = (*(*v7[2] + 40))(v7[2], v6);
        v2 = *(v1 + 16);
      }

      if (v2 <= v4)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v5 = *(v1 + 32);
      *(v5 + v3) = 0;
      ++v4;
      v3 += 40;
    }

    while (v2 > v4);
    *(v1 + 16) = 0;
    v8 = 40 * v2;
    v9 = v5 + 8;
    do
    {
      this = re::SerializedReference<re::IntrospectionBase const*>::reset(v9);
      v9 += 40;
      v8 -= 40;
    }

    while (v8);
  }

  ++*(v1 + 24);
  *(v1 + 56) = 0;
  return this;
}

uint64_t re::internal::getOrCreateInfo(re::internal *this, uint64_t (*a2)(re::internal *), re::IntrospectionBase *(*a3)(void), void (*a4)(re::IntrospectionBase *), re::IntrospectionBase **a5)
{
  v5 = a5;
  if (a5)
  {
    v9 = *a4;
    if (*a4)
    {
      return v9;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v12);
    v9 = *a4;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v12);
    if (v9)
    {
      return v9;
    }

    re::introspectionSharedMutex(v10);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    v9 = *a4;
    if (*a4)
    {
LABEL_7:
      re::introspectionSharedMutex(this);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return v9;
    }
  }

  v9 = a2(this);
  *a4 = v9;
  this = a3();
  if ((v5 & 1) == 0)
  {
    goto LABEL_7;
  }

  return v9;
}

double re::internal::declareType@<D0>(re::StringID *a1@<X2>, re::TypeRegistry *a2@<X0>, int a3@<W1>, unsigned int a4@<W3>, void *a5@<X8>)
{
  re::TypeRegistry::typeID(a2, a1, a4, a5);
  if (*a5)
  {
    if (*(re::DataArray<re::internal::TypeInfoIndex>::tryGet(a2 + 32, a5[1]) + 3) == a3)
    {
      return result;
    }

    re::internal::assertLog(5, v10, "assertion failure: '%s' (%s:line %i) Type %s has already been declared with different type category.", "registry->typeCategory(typeID) == typeCategory", "declareType", 1680, *(a1 + 1));
    _os_crash();
    __break(1u);
  }

  re::TypeRegistry::declareType(a1, a2, a3, a4, 0, &v12);
  result = *&v12;
  *a5 = v12;
  return result;
}

void re::internal::registerCallbackSerializerType(re::internal *this@<X0>, re::TypeRegistry *a2@<X1>, const re::IntrospectionBase *a3@<X2>, const re::StringID *a4@<X3>, void (*a5)(void *, const re::TypeInfo *, re::Allocator *, void *)@<X4>, void *a6@<X8>)
{
  v20[0] = 0x258C98EAAF29A10ALL;
  v20[1] = "CallbackSerializerAttribute";
  v13 = re::TypeRegistry::typeID(this, v20, &v22);
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  v14 = (*(**(this + 2) + 32))(*(this + 2), 8, 8);
  *v14 = a2;
  re::StackScratchAllocator::StackScratchAllocator(v21);
  re::TypeBuilder::TypeBuilder(v20, v21);
  v15 = *(a2 + 5);
  v16 = *(a2 + 6);
  v19[0] = 0;
  v19[1] = 0xFFFFFFFFLL;
  re::TypeBuilder::beginObjectType(v20, a3, 1, 1, v15, v16, v19);
  re::TypeBuilder::setConstructor(v20, a4);
  re::TypeBuilder::setDestructor(v20, a5);
  re::TypeBuilder::setIsCallbackSerializer(v20, 1);
  v18 = v22;
  re::TypeBuilder::addAttribute(v20, &v18, v14, -1, 1);
  re::TypeBuilder::commitTo(v20, this, a6);
  re::TypeBuilder::~TypeBuilder(v20, v17);
  re::StackScratchAllocator::~StackScratchAllocator(v21);
}

void re::internal::registerStructureType(re *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v196 = *MEMORY[0x1E69E9840];
  re::TypeRegistry::typeInfo(a1, a2, v181);
  if (v181[0])
  {
    return;
  }

  v146 = re::TypeRegistry::typeName(a1, a2);
  if (*a2)
  {
    v8 = re::DataArray<re::TextureAtlasTile>::tryGet(a1 + 96, *(a2 + 8));
    if (v8)
    {
      v9 = *(v8 + 16);
      if (!a3)
      {
        goto LABEL_5;
      }

LABEL_7:
      v11 = 0;
      v10 = 0;
      v12 = a3;
      while (!v11 || !v10)
      {
        v13 = *(v12 + 56);
        if (!v13)
        {
          goto LABEL_23;
        }

        v14 = *(v12 + 64);
        v12 = 0;
        do
        {
          v15 = *v14;
          v16 = **v14;
          if (v16 == 3)
          {
            v10 = *v14;
          }

          else if (v16 == 2)
          {
            v11 = *(v15 + 1);
          }

          else if (v16 == 1 && v15[10] == 3)
          {
            v12 = *(v15 + 2);
          }

          ++v14;
          --v13;
        }

        while (v13);
        if (!v12)
        {
LABEL_23:
          if (!v11)
          {
            v142 = a2;
            v139 = 0;
            goto LABEL_30;
          }

          break;
        }

        if (!*(v12 + 16))
        {
          return;
        }
      }

      v142 = a2;
      v17 = *v11;
      v139 = v11;
      if (v17)
      {
        v18 = (*(v11 + 1) + 24);
        while (*(v18 - 2) != a3)
        {
          v18 += 5;
          if (!--v17)
          {
            goto LABEL_28;
          }
        }

        v141 = 0;
        v138 = *v18;
        v19 = 1;
      }

      else
      {
LABEL_28:
        v141 = 0;
        v19 = 0;
      }

      goto LABEL_31;
    }
  }

  v9 = -1;
  if (a3)
  {
    goto LABEL_7;
  }

LABEL_5:
  v142 = a2;
  v139 = 0;
  v10 = 0;
LABEL_30:
  v19 = 0;
  v141 = 1;
LABEL_31:
  v20 = *(a3 + 56);
  v21 = *(a3 + 64);
  v143 = a4;
  if (v20)
  {
    v140 = v9;
    v22 = 0;
    v23 = 0xFFFFFFFFLL;
    v24 = *(a3 + 64);
    v25 = *(a3 + 56);
    do
    {
      v26 = *v24;
      if (**v24 == 1 && v26[10] == 3)
      {
        v27 = *(v26 + 2);
        v22 = *(v27 + 32);
        v23 = *(v27 + 40);
      }

      ++v24;
      --v25;
    }

    while (v25);
    v28 = 0;
    v144 = 0;
    *&v185 = 0;
    *(&v185 + 1) = 0xFFFFFFFFLL;
    v145 = v140 - 1;
    while (1)
    {
      v29 = *(v21 + 8 * v28);
      if (*v29 != 6 || (*(v29 + 40) & 1) != 0)
      {
        goto LABEL_70;
      }

      if (*(v29 + 8) == v140)
      {
        v144 = *(v29 + 32);
        v30 = *(v29 + 16);
        if (v30 == a3)
        {
          v31 = *(v30 + 48);
          if (v31)
          {
            v32 = *v31;
            if (*v31)
            {
              v33 = v31[1];
              if (v33)
              {
                v34 = (v31 + 2);
                do
                {
                  v32 = 31 * v32 + v33;
                  v35 = *v34++;
                  v33 = v35;
                }

                while (v35);
              }
            }
          }

          else
          {
            v32 = 0;
          }

          v168 = 2 * v32;
          v169 = v31;
          re::TypeRegistry::typeID(a1, &v168, v145, v181);
          v185 = *v181;
          if (v168)
          {
            if (v168)
            {
            }
          }

          if (v185)
          {
            goto LABEL_70;
          }

          re::TypeRegistry::declareType(v146, a1, 8, v145, 1, v181);
          v185 = *v181;
          v184 = *v181;
          v44 = &v184;
          goto LABEL_69;
        }
      }

      else
      {
        v30 = *(v29 + 16);
        if (v30 == a3)
        {
          goto LABEL_70;
        }
      }

      v185 = *(v30 + 32);
      re::TypeRegistry::typeInfo(a1, &v185, v181);
      if ((v181[0] & 1) == 0)
      {
        if (!v185)
        {
          StructureVersion = re::introspectionFindStructureVersion(v30, v36);
          v38 = *(v30 + 48);
          if (v38)
          {
            v39 = *v38;
            if (*v38)
            {
              v40 = v38[1];
              if (v40)
              {
                v41 = (v38 + 2);
                do
                {
                  v39 = 31 * v39 + v40;
                  v42 = *v41++;
                  v40 = v42;
                }

                while (v42);
              }
            }
          }

          else
          {
            v39 = 0;
          }

          v168 = 2 * v39;
          v169 = v38;
          re::TypeRegistry::declareType(&v168, a1, 8, StructureVersion, 0, v181);
          v185 = *v181;
          if (v168)
          {
            if (v168)
            {
            }
          }

          *(v30 + 32) = v185;
        }

        v183 = v185;
        v44 = &v183;
LABEL_69:
        re::internal::registerStructureType(a1, v44, v30, v143);
      }

LABEL_70:
      if (++v28 == v20)
      {
        a4 = v143;
        v9 = v140;
        goto LABEL_73;
      }
    }
  }

  v22 = 0;
  v144 = 0;
  *&v185 = 0;
  v23 = 0xFFFFFFFFLL;
  *(&v185 + 1) = 0xFFFFFFFFLL;
LABEL_73:
  re::StackScratchAllocator::StackScratchAllocator(v182);
  re::TypeBuilder::TypeBuilder(v181, v182);
  re::TypeBuilder::TypeBuilder(&v168, v182);
  v46 = *(a3 + 20);
  v47 = *(a3 + 24);
  v167[0] = v22;
  v167[1] = v23;
  re::TypeBuilder::beginObjectType(v181, v146, v9, a4, v46, v47, v167);
  re::TypeBuilder::setIntroducedVersion(v181, *(a3 + 136));
  re::TypeBuilder::setConstructor(v181, *(a3 + 104));
  re::TypeBuilder::setDestructor(v181, *(a3 + 112));
  re::TypeBuilder::setRetain(v181, *(a3 + 88));
  re::TypeBuilder::setRelease(v181, *(a3 + 96));
  re::TypeBuilder::setEncoder(v181, *(a3 + 120));
  re::TypeBuilder::setDecoder(v181, *(a3 + 128));
  if (v185)
  {
    v166 = v185;
    re::TypeBuilder::setPreviousVersion(v181, &v166);
  }

  if (v19)
  {
    re::TypeBuilder::addCustomClassID(v181, v138);
  }

  if (!v22)
  {
    if (v10)
    {
      v165 = *(*(v10 + 1) + 32);
      *&v191 = 0xC98E91CCDF0B5FC4;
      *(&v191 + 1) = "customClassID";
      re::TypeBuilder::addObjectMemberCustomClassID(v181, &v165, &v191, v10[6]);
      if (v191)
      {
        if (v191)
        {
        }
      }
    }
  }

  if (!v20)
  {
    v95 = 0;
    v80 = v144;
    goto LABEL_174;
  }

  for (i = 0; i != v20; ++i)
  {
    v51 = *(v21 + 8 * i);
    if (*v51 != 1)
    {
      continue;
    }

    v52 = *(v51 + 40);
    if (v52 > 1)
    {
      if (v52 == 2)
      {
        *v186 = *(*(v51 + 48) + 32);
        v22 = *(*(*(v51 + 16) + 48) + 40);
        v67 = *(v146 + 1);
        re::makePrettyMemberName(*(v51 + 8), &v148);
        v68 = &v149 + 1;
        if (v149)
        {
          v68 = v150;
        }

        re::DynamicString::format("%s::%s", &v191, v67, v68);
        if (v148 && (v149 & 1) != 0)
        {
          (*(*v148 + 40))();
        }

        if (BYTE8(v191))
        {
          v69 = v192;
        }

        else
        {
          v69 = &v191 + 9;
        }

        re::TypeRegistry::makeStringID(a1, v69, &v148);
        v171 = -1;
        memset(v172, 0, sizeof(v172));
        v173 = 0u;
        v174 = 0xFFFFFFFFLL;
        v175 = 1;
        v176 = 0;
        v177 = 0xFFFFFFFFLL;
        v178 = 1;
        v179 = 0xFFFFFFFFLL;
        v180 = 0;
        LOBYTE(v168) = 9;
        re::StringID::operator=(&v169, &v148);
        v170 = 1;
        *&v172[1] = 0x800000008;
        *(&v173 + 4) = 0;
        *&v172[3] = 0;
        *&v172[5] = 0;
        v175 = -1;
        v177 = v22;
        v178 = 1;
        v156 = *v186;
        re::TypeBuilder::addCustomClassIDForPointer(&v168, &v156, *(v51 + 64) - *(v51 + 36));
        re::TypeBuilder::commitTo(&v168, a1, &v163);
        v70 = *(v51 + 32);
        v155 = v163;
        v71 = *(v51 + 8);
        if (v71)
        {
          v72 = *v71;
          if (*v71)
          {
            v73 = v71[1];
            if (v73)
            {
              v74 = (v71 + 2);
              do
              {
                v72 = 31 * v72 + v73;
                v75 = *v74++;
                v73 = v75;
              }

              while (v75);
            }
          }
        }

        else
        {
          v72 = 0;
        }

        *&v160 = 2 * v72;
        *(&v160 + 1) = v71;
        v77 = re::TypeBuilder::addObjectMember(v181, v70, &v155, &v160, *(v51 + 36));
        if ((v160 & 1) == 0)
        {
          goto LABEL_138;
        }

        if ((v160 & 1) == 0)
        {
          goto LABEL_138;
        }

        v78 = *(&v160 + 1);
LABEL_137:
LABEL_138:
        if (v148)
        {
          if (v148)
          {
          }
        }

        if (v191 && (BYTE8(v191) & 1) != 0)
        {
          (*(*v191 + 40))(v191, v192);
        }

        continue;
      }

      if (v52 != 3)
      {
        goto LABEL_271;
      }
    }

    else
    {
      if (v52)
      {
        if (v52 != 1)
        {
          goto LABEL_271;
        }

        *v186 = *(*(*(v51 + 16) + 48) + 32);
        v163 = *(*(v51 + 48) + 32);
        v22 = *(v146 + 1);
        re::makePrettyMemberName(*(v51 + 8), &v148);
        v53 = &v149 + 1;
        if (v149)
        {
          v53 = v150;
        }

        re::DynamicString::format("%s::%s", &v191, v22, v53);
        if (v148 && (v149 & 1) != 0)
        {
          (*(*v148 + 40))();
        }

        if (BYTE8(v191))
        {
          v54 = v192;
        }

        else
        {
          v54 = &v191 + 9;
        }

        re::TypeRegistry::makeStringID(a1, v54, &v148);
        v161 = v163;
        v162 = *v186;
        re::TypeBuilder::beginArrayType(&v168, &v148, &v162, &v161, *(v51 + 64) - *(v51 + 36));
        re::TypeBuilder::commitTo(&v168, a1, &v160);
        v55 = *(v51 + 32);
        v159 = v160;
        v56 = *(v51 + 8);
        if (v56)
        {
          v57 = *v56;
          if (*v56)
          {
            v58 = v56[1];
            if (v58)
            {
              v59 = (v56 + 2);
              do
              {
                v57 = 31 * v57 + v58;
                v60 = *v59++;
                v58 = v60;
              }

              while (v60);
            }
          }
        }

        else
        {
          v57 = 0;
        }

        v157 = 2 * v57;
        v158 = v56;
        v77 = re::TypeBuilder::addObjectMember(v181, v55, &v159, &v157, *(v51 + 36));
        if ((v157 & 1) == 0)
        {
          goto LABEL_138;
        }

        if ((v157 & 1) == 0)
        {
          goto LABEL_138;
        }

        v78 = v158;
        goto LABEL_137;
      }

      v61 = *(v51 + 32);
      v62 = *(v51 + 8);
      v164 = *(*(v51 + 16) + 32);
      if (v62)
      {
        v63 = *v62;
        if (*v62)
        {
          v64 = v62[1];
          if (v64)
          {
            v65 = (v62 + 2);
            do
            {
              v63 = 31 * v63 + v64;
              v66 = *v65++;
              v64 = v66;
            }

            while (v66);
          }
        }
      }

      else
      {
        v63 = 0;
      }

      *&v191 = 2 * v63;
      *(&v191 + 1) = v62;
      v76 = re::TypeBuilder::addObjectMember(v181, v61, &v164, &v191, *(v51 + 36));
      if (v191)
      {
        if (v191)
        {
        }
      }
    }
  }

  v79 = 0;
  a4 = v143;
  v80 = v144;
  do
  {
    v81 = *(v21 + 8 * v79);
    if (*v81 == 5)
    {
      v82 = *(v81 + 16);
      if (v82)
      {
        v83 = *v82;
        if (*v82)
        {
          v84 = v82[1];
          if (v84)
          {
            v85 = (v82 + 2);
            do
            {
              v83 = 31 * v83 + v84;
              v86 = *v85++;
              v84 = v86;
            }

            while (v86);
          }
        }
      }

      else
      {
        v83 = 0;
      }

      *&v191 = 2 * v83;
      *(&v191 + 1) = v82;
      v87 = *(v81 + 8);
      if (v87)
      {
        v88 = *v87;
        if (*v87)
        {
          v89 = v87[1];
          if (v89)
          {
            v90 = (v87 + 2);
            do
            {
              v88 = 31 * v88 + v89;
              v91 = *v90++;
              v89 = v91;
            }

            while (v91);
          }
        }
      }

      else
      {
        v88 = 0;
      }

      v148 = 2 * v88;
      v149 = v87;
      re::TypeBuilder::addObjectMemberRenaming(v181, &v191, &v148);
      if (v148)
      {
        if (v148)
        {
        }
      }

      if (v191)
      {
        if (v191)
        {
        }
      }
    }

    ++v79;
  }

  while (v79 != v20);
  v93 = 1;
  v94 = v20;
  v95 = 1;
  do
  {
    if (**v21 == 4 && *(*v21 + 4) == 1)
    {
      break;
    }

    v95 = v93++ < v20;
    v21 += 8;
    --v94;
  }

  while (v94);
LABEL_174:
  re::TypeBuilder::setHideObjectWithOneMember(v181, v95);
  if (v80)
  {
    v148 = 0xAE8345F9D646D604;
    v149 = "ComplexVersioningAttribute";
    v96 = re::TypeRegistry::typeID(a1, &v148, &v191);
    if (v148)
    {
      if (v148)
      {
      }
    }

    v97 = (*(**(a1 + 2) + 32))(*(a1 + 2), 8, 8);
    *v97 = v80;
    v154 = v191;
    re::TypeBuilder::addAttribute(v181, &v154, v97, -1, 1);
  }

  v153 = *v142;
  re::TypeBuilder::commitTo(v181, &v153);
  if (v141)
  {
    goto LABEL_261;
  }

  v152 = 0;
  v149 = 0;
  v150 = 0;
  v151 = 0;
  v148 = v182;
  re::DynamicArray<re::IntrospectionStructure const*>::setCapacity(&v148, 0);
  ++v151;
  v99 = v139;
  v100 = *v139;
  if (v100)
  {
    v101 = 0;
    v102 = 40;
    do
    {
      v103 = *(v139 + 1) + 40 * v101;
      if (*(v103 + 32))
      {
        goto LABEL_267;
      }

      v104 = *(v103 + 8);
      *&v191 = v104;
      if (v150)
      {
        v105 = 8 * v150;
        v106 = v152;
        while (*v106 != v104)
        {
          ++v106;
          v105 -= 8;
          if (!v105)
          {
            goto LABEL_190;
          }
        }
      }

      else
      {
        v106 = v152;
      }

      if (v106 == &v152[v150])
      {
LABEL_190:
        re::DynamicArray<re::IntrospectionStructure const*>::add(&v148, &v191);
        v100 = *v139;
      }
    }

    while (++v101 < v100);
  }

  v22 = v186;
  v107 = v150;
  v102 = v150 - 1;
  if ((v150 - 1) >= 0)
  {
    do
    {
      v99 = v150;
      if (v150 <= v102)
      {
        goto LABEL_268;
      }

      v98 = v152;
      v108 = v152[v102];
      if (!*(v108 + 16))
      {
        v136 = v148;
        if (v148)
        {
          goto LABEL_260;
        }

        goto LABEL_261;
      }

      v163 = *(v108 + 32);
      re::TypeRegistry::typeInfo(a1, &v163, &v191);
      if (v191 == 1)
      {
        v99 = v150;
        if (v150 <= v102)
        {
          goto LABEL_269;
        }

        v109 = v150 - 1;
        if (v150 - 1 > v102)
        {
          v110 = &v152[v102];
          v98 = (v110 + 8);
          v111 = &v152[v150];
          if (v110 + 8 != v111)
          {
            memmove(v110, v98, &v111[-v98]);
            v109 = v150 - 1;
          }
        }

        v150 = v109;
        ++v151;
      }
    }

    while (v102-- > 0);
    v107 = v150;
  }

  if (!v107)
  {
    goto LABEL_258;
  }

  v102 = 0;
  v113 = v152;
  do
  {
    if (v107 <= v102)
    {
LABEL_266:
      *&v163 = 0;
      v194 = 0u;
      v195 = 0u;
      v192 = 0u;
      v193 = 0u;
      v191 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v186 = 136315906;
      *&v186[4] = "operator[]";
      *&v186[12] = 1024;
      *&v186[14] = 789;
      v187 = 2048;
      v188 = v102;
      v189 = 2048;
      v190 = v107;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_267:
      re::internal::assertLog(4, v98, "assertion failure: '%s' (%s:line %i) ", "polymorphicType.basePointerOffset == 0", "addPolymorphicLeaveTypes", 1743);
      _os_crash();
      __break(1u);
LABEL_268:
      *&v163 = 0;
      v194 = 0u;
      v195 = 0u;
      v192 = 0u;
      v193 = 0u;
      v191 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v186 = 136315906;
      *(v22 + 4) = "operator[]";
      *&v186[12] = 1024;
      *(v22 + 14) = 789;
      v187 = 2048;
      *(v22 + 20) = v102;
      v189 = 2048;
      *(v22 + 30) = v99;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_269:
      *&v160 = 0;
      v194 = 0u;
      v195 = 0u;
      v192 = 0u;
      v193 = 0u;
      v191 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v186 = 136315906;
      *(v22 + 4) = "removeStableAt";
      *&v186[12] = 1024;
      *(v22 + 14) = 969;
      v187 = 2048;
      *(v22 + 20) = v102;
      v189 = 2048;
      *(v22 + 30) = v99;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_270:
      *&v163 = 0;
      v194 = 0u;
      v195 = 0u;
      v192 = 0u;
      v193 = 0u;
      v191 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v186 = 136315906;
      *(v22 + 4) = "insert";
      *&v186[12] = 1024;
      *(v22 + 14) = 855;
      v187 = 2048;
      *(v22 + 20) = v102;
      v189 = 2048;
      *(v22 + 30) = v99;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_271:
      re::internal::assertLog(4, v48, "assertion failure: '%s' (%s:line %i) Unexpected IntrospectionMemberType.", "!Unreachable code", "registerStructureType", 2036);
      _os_crash();
      __break(1u);
    }

    v114 = v113[v102];
    while (1)
    {
      v113 = v152;
      v115 = v152[v102];
      v116 = *(v115 + 56);
      v117 = 8 * v107;
      if (!v116)
      {
        break;
      }

      v118 = *(v115 + 64);
      while (1)
      {
        v119 = *v118;
        if (**v118 == 1 && v119[10] == 3)
        {
          break;
        }

        ++v118;
        if (!--v116)
        {
          goto LABEL_234;
        }
      }

      v120 = *(v119 + 2);
      if (!v120)
      {
        break;
      }

      v121 = 0;
      while (v152[v121 / 8] != v120)
      {
        v121 += 8;
        if (v117 == v121)
        {
          goto LABEL_220;
        }
      }

      if (v121 != 8 * v107)
      {
        break;
      }

LABEL_220:
      v122 = 0;
      while (v152[v122 / 8] != v120)
      {
        v122 += 8;
        if (v117 == v122)
        {
          goto LABEL_225;
        }
      }

      if (v122 != 8 * v107)
      {
        break;
      }

LABEL_225:
      v99 = (v107 + 1);
      if (v107 + 1 <= v102)
      {
        goto LABEL_270;
      }

      if (v107 >= v149)
      {
        re::DynamicArray<re::IntrospectionStructure const*>::growCapacity(&v148, v107 + 1);
        v107 = v150;
        v113 = v152;
      }

      v123 = &v113[v107];
      if (v107 > v102)
      {
        *v123 = *(v123 - 1);
        v124 = v152;
        v98 = &v152[v102];
        v125 = &v152[v107 - 1];
        if (v125 != v98)
        {
          memmove((v98 + 8), v98, v125 - v98);
          v124 = v152;
          v107 = v150;
        }

        v123 = &v124[v102];
      }

      *v123 = v120;
      v150 = ++v107;
      ++v151;
      if (v107 <= v102)
      {
        goto LABEL_266;
      }
    }

LABEL_234:
    v126 = 0;
    v127 = &v152[v107];
    while (v152[v126 / 8] != v114)
    {
      v126 += 8;
      if (v117 == v126)
      {
        goto LABEL_240;
      }
    }

    if (v126 != 8 * v107)
    {
      v21 = v126 >> 3;
    }

LABEL_240:
    v102 = v21 + 1;
  }

  while (v21 + 1 < v107);
  do
  {
    v135 = *v113;
    if (!*(*v113 + 16))
    {
      break;
    }

    *v186 = *(v135 + 32);
    re::TypeRegistry::typeInfo(a1, v186, &v191);
    if ((v191 & 1) == 0)
    {
      if (!*v186)
      {
        v128 = re::introspectionFindStructureVersion(v135, v98);
        v129 = *(v135 + 48);
        if (v129)
        {
          v130 = *v129;
          if (*v129)
          {
            v131 = v129[1];
            if (v131)
            {
              v132 = (v129 + 2);
              do
              {
                v130 = 31 * v130 + v131;
                v133 = *v132++;
                v131 = v133;
              }

              while (v133);
            }
          }
        }

        else
        {
          v130 = 0;
        }

        *&v163 = 2 * v130;
        *(&v163 + 1) = v129;
        re::TypeRegistry::declareType(&v163, a1, 8, v128, 0, &v191);
        *v186 = v191;
        if (v163)
        {
          if (v163)
          {
          }
        }

        *(v135 + 32) = *v186;
      }

      v147 = *v186;
      re::internal::registerStructureType(a1, &v147, v135, a4);
    }

    ++v113;
  }

  while (v113 != v127);
LABEL_258:
  v136 = v148;
  if (v148)
  {
    v98 = v152;
    if (v152)
    {
LABEL_260:
      (*(*v136 + 40))(v136);
    }
  }

LABEL_261:
  re::TypeBuilder::~TypeBuilder(&v168, v98);
  re::TypeBuilder::~TypeBuilder(v181, v137);
  re::StackScratchAllocator::~StackScratchAllocator(v182);
}

BOOL re::internal::prepare(re::IntrospectionRegistry *this, const re::IntrospectionBase *a2)
{
  if (*(this + 4) == 8)
  {
    v2 = *(this + 14);
    if (v2)
    {
      v3 = *(this + 8);
      do
      {
        if (**v3 == 4)
        {
          *(this + 15) |= *(*v3 + 4);
        }

        v3 += 8;
        --v2;
      }

      while (v2);
    }
  }

  return re::IntrospectionRegistry::add(this, a2);
}

void re::IntrospectionStructure::~IntrospectionStructure(re::IntrospectionStructure *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicString::~IntrospectionDynamicString(re::IntrospectionDynamicString *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionBasic::~IntrospectionBasic(re::IntrospectionBasic *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionBasic::childInfo(re::IntrospectionBasic *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Type does not have nested types.", "!Unreachable code", "childInfo", 438);
  _os_crash();
  __break(1u);
}

void re::IntrospectionDataArrayBase::~IntrospectionDataArrayBase(re::IntrospectionDataArrayBase *this)
{
  *this = &unk_1F5D0C598;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D0C598;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::IntrospectionDataArrayBase::childInfo(re::IntrospectionDataArrayBase *this, uint64_t a2)
{
  if (!a2)
  {
    return *(this + 6);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Index out of range.", "index == 0", "childInfo", 706, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::IntrospectionDataArrayBase::init(re::IntrospectionDataArrayBase *this, uint64_t a2, re::Allocator *a3)
{
  re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "init", 695);
  _os_crash();
  __break(1u);
}

void re::IntrospectionDataArrayBase::addElement(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "addElement", 696);
  _os_crash();
  __break(1u);
}

void re::IntrospectionDataArrayBase::size(re::IntrospectionDataArrayBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "size", 697);
  _os_crash();
  __break(1u);
}

void re::IntrospectionDataArrayBase::begin(re::IntrospectionDataArrayBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "begin", 699);
  _os_crash();
  __break(1u);
}

void re::IntrospectionDataArrayBase::end(re::IntrospectionDataArrayBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "end", 700);
  _os_crash();
  __break(1u);
}

void re::IntrospectionDataArrayBase::elementAt(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "elementAt", 701);
  _os_crash();
  __break(1u);
}

void re::IntrospectionEnum::~IntrospectionEnum(re::IntrospectionEnum *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionCallbackSerializer::~IntrospectionCallbackSerializer(re::IntrospectionCallbackSerializer *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionCallbackSerializer::childInfo(re::IntrospectionCallbackSerializer *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Type does not have nested types.", "!Unreachable code", "childInfo", 1085);
  _os_crash();
  __break(1u);
}

void re::IntrospectionStringID::~IntrospectionStringID(re::IntrospectionStringID *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionStringID::childInfo(re::IntrospectionStringID *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Type does not have nested types.", "!Unreachable code", "childInfo", 1097);
  _os_crash();
  __break(1u);
}

__n128 std::__function::__func<re::introspectionDoDeepCopy(re::Allocator *,re::IntrospectionContext *,re::IntrospectionBase const&,void const*,void *)::$_0,std::allocator<re::introspectionDoDeepCopy(re::Allocator *,re::IntrospectionContext *,re::IntrospectionBase const&,void const*,void *)::$_0>,BOOL ()(void const*,void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D0C800;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<re::introspectionDoDeepCopy(re::Allocator *,re::IntrospectionContext *,re::IntrospectionBase const&,void const*,void *)::$_0,std::allocator<re::introspectionDoDeepCopy(re::Allocator *,re::IntrospectionContext *,re::IntrospectionBase const&,void const*,void *)::$_0>,BOOL ()(void const*,void *)>::operator()(void **a1, uint64_t *a2, uint64_t **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *a1[1];
  v7 = *a1[2];
  v8 = (*(*a1[3] + 40))(a1[3], 1);
  v9 = (*(*a1[3] + 96))(a1[3], *a1[1], *a1[2], *a1[4], v4);

  return re::introspectionDoDeepCopy(v6, v7, v8, v5, v9);
}

uint64_t std::__function::__func<re::introspectionDoDeepCopy(re::Allocator *,re::IntrospectionContext *,re::IntrospectionBase const&,void const*,void *)::$_0,std::allocator<re::introspectionDoDeepCopy(re::Allocator *,re::IntrospectionContext *,re::IntrospectionBase const&,void const*,void *)::$_0>,BOOL ()(void const*,void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *re::DynamicArray<re::IntrospectionStructure const*>::add(void *this, void *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::IntrospectionStructure const*>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  *(v3[4] + 8 * v4) = *a2;
  v3[2] = v4 + 1;
  ++*(v3 + 6);
  return this;
}

void *re::DynamicArray<re::IntrospectionStructure const*>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::IntrospectionStructure const*>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::IntrospectionStructure const*>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::IntrospectionStructure const*>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

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
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 8 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::IntrospectionStructure const*>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::IntrospectionPolymorphicType>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::IntrospectionPolymorphicType>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::IntrospectionPolymorphicType>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::IntrospectionPolymorphicType>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::IntrospectionPolymorphicType>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
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
        v10 = &v8[5 * v9];
        v11 = v7;
        do
        {
          *v11 = *v8;
          v11[2] = 0;
          v11[2] = v8[2];
          v8[2] = 0;
          v12 = v11[1];
          v14 = v8[1];
          v13 = (v8 + 1);
          v11[1] = v14;
          *v13 = v12;
          v15 = *(v13 + 16);
          *(v11 + 8) = *(v13 + 24);
          v11[3] = v15;
          re::SerializedReference<re::IntrospectionBase const*>::reset(v13);
          v11 += 5;
          v8 = (v13 + 32);
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

re::TypeRegistry *re::TypeRegistry::TypeRegistry(re::TypeRegistry *this, re::Allocator *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v4 + 16) = a2;
  *v4 = &unk_1F5D0C880;
  *(v4 + 24) = 0;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0x1FFFFFFFFLL;
  *(v4 + 120) = 0;
  *(v4 + 104) = 0u;
  *(v4 + 96) = 0;
  v5 = (v4 + 96);
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0;
  *(v4 + 148) = 0x1FFFFFFFFLL;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 160) = 0u;
  v6 = (v4 + 160);
  *(v4 + 220) = 0u;
  *(v4 + 192) = 0u;
  *(v4 + 208) = 0u;
  *(v4 + 236) = 0x7FFFFFFFLL;
  *(v4 + 272) = 0;
  *(v4 + 264) = 0;
  *(v4 + 248) = 0u;
  v7 = (v4 + 248);
  *(v4 + 280) = 0u;
  *(v4 + 296) = 0u;
  *(v4 + 312) = 0;
  *(v4 + 352) = 0;
  *(v4 + 320) = 0u;
  *(v4 + 336) = 0u;
  *(v4 + 392) = 0;
  *(v4 + 360) = 0u;
  *(v4 + 376) = 0u;
  *(v4 + 432) = 0;
  *(v4 + 400) = 0u;
  *(v4 + 416) = 0u;
  *(v4 + 472) = 0;
  *(v4 + 440) = 0u;
  *(v4 + 456) = 0u;
  *(v4 + 512) = 0;
  *(v4 + 480) = 0u;
  *(v4 + 496) = 0u;
  *(v4 + 552) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 536) = 0u;
  *(v4 + 592) = 0;
  *(v4 + 560) = 0u;
  *(v4 + 576) = 0u;
  *(v4 + 632) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 616) = 0u;
  *(v4 + 672) = 0;
  *(v4 + 640) = 0u;
  *(v4 + 656) = 0u;
  *(v4 + 712) = 0;
  *(v4 + 680) = 0u;
  *(v4 + 696) = 0u;
  *(v4 + 752) = 0;
  *(v4 + 720) = 0u;
  *(v4 + 736) = 0u;
  *(v4 + 788) = 0u;
  *(v4 + 760) = 0u;
  *(v4 + 776) = 0u;
  *(v4 + 804) = 0x7FFFFFFFLL;
  *(v4 + 840) = 0;
  *(v4 + 832) = 0;
  *(v4 + 816) = 0u;
  *(v4 + 848) = 0u;
  *(v4 + 32) = a2;
  v8 = (v4 + 32);
  re::DynamicArray<re::RigNodeConstraint>::setCapacity((v4 + 32), 0);
  ++*(this + 14);
  *(this + 19) = 1024;
  re::DataArray<re::internal::TypeInfoIndex>::allocBlock(v8);
  *v5 = a2;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v5, 0);
  ++*(this + 30);
  *(this + 35) = 1024;
  re::DataArray<MetalHeap::TextureEntry>::allocBlock(v5);
  *v6 = a2;
  re::DynamicArray<re::StringID>::setCapacity(v6, 0);
  ++*(this + 46);
  *v7 = a2;
  re::DynamicArray<re::internal::BasicTypeInfo>::setCapacity(v7, 0);
  ++*(this + 68);
  *(this + 36) = a2;
  re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity(this + 36, 0);
  ++*(this + 78);
  *(this + 41) = a2;
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::setCapacity(this + 41, 0);
  ++*(this + 88);
  *(this + 46) = a2;
  re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity(this + 46, 0);
  ++*(this + 98);
  *(this + 51) = a2;
  re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity(this + 51, 0);
  ++*(this + 108);
  *(this + 56) = a2;
  re::DynamicArray<re::internal::ListTypeInfo>::setCapacity(this + 56, 0);
  ++*(this + 118);
  *(this + 61) = a2;
  re::DynamicArray<re::internal::DictionaryTypeInfo>::setCapacity(this + 61, 0);
  ++*(this + 128);
  *(this + 66) = a2;
  re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity(this + 66, 0);
  ++*(this + 138);
  *(this + 71) = a2;
  re::DynamicArray<float *>::setCapacity(this + 71, 0);
  ++*(this + 148);
  *(this + 76) = a2;
  re::DynamicArray<re::internal::ObjectTypeInfo>::setCapacity(this + 76, 0);
  ++*(this + 158);
  *(this + 81) = a2;
  re::DynamicArray<re::internal::ObjectMemberInfo>::setCapacity(this + 81, 0);
  ++*(this + 168);
  *(this + 86) = a2;
  re::DynamicArray<re::BlendParameterInputNode>::setCapacity(this + 86, 0);
  ++*(this + 178);
  *(this + 91) = a2;
  re::DynamicArray<re::RenderGraphTargetDescription>::setCapacity(this + 91, 0);
  ++*(this + 188);
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(this + 200, a2, 3);
  re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::init(this + 768, a2, 3);
  *(this + 102) = a2;
  re::DynamicArray<float *>::setCapacity(this + 102, 0);
  ++*(this + 210);
  return this;
}

void re::TypeRegistry::~TypeRegistry(re::TypeRegistry *this)
{
  v2 = *(this + 200);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 98);
    while (1)
    {
      v5 = *v4;
      v4 += 14;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 200);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 != v2)
  {
    v6 = *(this + 200);
    do
    {
      v7 = *(this + 98);
      v8 = v7 + 56 * v3;
      if (*(v8 + 40))
      {
        re::TypeRegistry::typeInfo(this, *(v7 + 56 * v3 + 8), v17);
        re::TypeInfo::releaseInstance(&v18, *(v8 + 32), *(this + 2), 0);
        v6 = *(this + 200);
      }

      if (v6 <= v3 + 1)
      {
        v9 = v3 + 1;
      }

      else
      {
        v9 = v6;
      }

      while (v9 - 1 != v3)
      {
        LODWORD(v3) = v3 + 1;
        if ((*(*(this + 98) + 56 * v3) & 0x80000000) != 0)
        {
          goto LABEL_18;
        }
      }

      LODWORD(v3) = v9;
LABEL_18:
      ;
    }

    while (v3 != v2);
  }

  re::DataArray<re::internal::TypeInfoIndex>::deinit(this + 32);
  re::DataArray<re::TypeRegistry::TypeNameAndVersion>::deinit(this + 96);
  re::DynamicArray<re::StringID>::deinit(this + 160);
  re::DynamicArray<unsigned long>::deinit(this + 248);
  re::DynamicArray<unsigned long>::deinit(this + 288);
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(this + 328);
  re::DynamicArray<unsigned long>::deinit(this + 368);
  re::DynamicArray<unsigned long>::deinit(this + 408);
  re::DynamicArray<unsigned long>::deinit(this + 448);
  re::DynamicArray<unsigned long>::deinit(this + 488);
  re::DynamicArray<unsigned long>::deinit(this + 528);
  re::DynamicArray<unsigned long>::deinit(this + 568);
  re::DynamicArray<re::internal::ObjectTypeInfo>::deinit(this + 608);
  re::DynamicArray<re::GeomDeformer::Attribute>::deinit(this + 648);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(this + 688);
  re::DynamicArray<unsigned long>::deinit(this + 728);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 25);
  v10.n128_f64[0] = re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::deinit(this + 96);
  v11 = *(this + 104);
  if (v11)
  {
    v12 = *(this + 106);
    v13 = 8 * v11;
    do
    {
      v14 = *v12++;
      (*(**(this + 2) + 40))(*(this + 2), v14, v10);
      v13 -= 8;
    }

    while (v13);
  }

  re::DynamicArray<unsigned long>::deinit(this + 816);
  v15 = *(this + 107);
  if (v15)
  {
    v16 = *(this + 2);
    re::FixedArray<CoreIKTransform>::deinit(v15 + 33);
    re::FixedArray<CoreIKTransform>::deinit(v15 + 30);
    re::FixedArray<CoreIKTransform>::deinit(v15 + 27);
    re::FixedArray<CoreIKTransform>::deinit(v15 + 24);
    re::FixedArray<CoreIKTransform>::deinit(v15 + 21);
    re::FixedArray<CoreIKTransform>::deinit(v15 + 18);
    re::FixedArray<CoreIKTransform>::deinit(v15 + 15);
    re::FixedArray<CoreIKTransform>::deinit(v15 + 12);
    re::FixedArray<CoreIKTransform>::deinit(v15 + 9);
    re::FixedArray<CoreIKTransform>::deinit(v15 + 6);
    re::FixedArray<CoreIKTransform>::deinit(v15 + 3);
    (*(*v16 + 40))(v16, v15);
  }

  re::DynamicArray<unsigned long>::deinit(this + 816);
  re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::deinit(this + 96);
  re::DynamicArray<unsigned long>::deinit(this + 728);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(this + 688);
  re::DynamicArray<re::GeomDeformer::Attribute>::deinit(this + 648);
  re::DynamicArray<re::internal::ObjectTypeInfo>::deinit(this + 608);
  re::DynamicArray<unsigned long>::deinit(this + 568);
  re::DynamicArray<unsigned long>::deinit(this + 528);
  re::DynamicArray<unsigned long>::deinit(this + 488);
  re::DynamicArray<unsigned long>::deinit(this + 448);
  re::DynamicArray<unsigned long>::deinit(this + 408);
  re::DynamicArray<unsigned long>::deinit(this + 368);
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(this + 328);
  re::DynamicArray<unsigned long>::deinit(this + 288);
  re::DynamicArray<unsigned long>::deinit(this + 248);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 25);
  re::DynamicArray<re::StringID>::deinit(this + 160);
  re::DataArray<re::TypeRegistry::TypeNameAndVersion>::deinit(this + 96);
  re::DynamicArray<unsigned long>::deinit(this + 96);
  re::DataArray<re::internal::TypeInfoIndex>::deinit(this + 32);
  re::DynamicArray<unsigned long>::deinit(this + 32);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::TypeRegistry::~TypeRegistry(this);

  JUMPOUT(0x1E6906520);
}

unsigned int *re::TypeRegistry::typeInfo@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  result = re::DataArray<re::internal::TypeInfoIndex>::tryGet((a1 + 4), a2);
  if (!result || (v7 = *result, v8 = *result & 0xFFFFFF, (*result & 0xFFFFFF) == 0xFFFFFF))
  {
    *a3 = 0;
    return result;
  }

  v9 = HIBYTE(v7);
  if (HIBYTE(v7) > 4u)
  {
    if (HIBYTE(v7) > 6u)
    {
      if (v9 != 7)
      {
        if (v9 != 8)
        {
          if (v9 == 9)
          {
            v10 = *result & 0xFFFFFF;
            if (a1[93] > v8)
            {
              v11 = a1[95];
              v12 = 112;
LABEL_33:
              v13 = v11 + v10 * v12;
              goto LABEL_34;
            }

LABEL_46:
            v17 = 0u;
            v18 = 0u;
            v15 = 0u;
            v16 = 0u;
            v14 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

LABEL_47:
          re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Invalid type category.", "!Unreachable code", "typeInfo", 310);
          result = _os_crash();
          __break(1u);
          return result;
        }

        v10 = *result & 0xFFFFFF;
        if (a1[78] > v8)
        {
          v11 = a1[80];
          v12 = 176;
          goto LABEL_33;
        }

LABEL_45:
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v14 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_46;
      }

      v10 = *result & 0xFFFFFF;
      if (a1[68] > v8)
      {
        v11 = a1[70];
        goto LABEL_32;
      }

      goto LABEL_43;
    }

    if (v9 != 5)
    {
      if (v9 != 6)
      {
        goto LABEL_47;
      }

      v10 = *result & 0xFFFFFF;
      if (a1[63] > v8)
      {
        v11 = a1[65];
        v12 = 168;
        goto LABEL_33;
      }

      goto LABEL_44;
    }

    v10 = *result & 0xFFFFFF;
    if (a1[58] > v8)
    {
      v11 = a1[60];
      v12 = 136;
      goto LABEL_33;
    }

LABEL_42:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_43:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_44:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_45;
  }

  if (HIBYTE(v7) > 2u)
  {
    if (v9 != 3)
    {
      if (v9 != 4)
      {
        goto LABEL_47;
      }

      v10 = *result & 0xFFFFFF;
      if (a1[53] > v8)
      {
        v11 = a1[55];
        goto LABEL_32;
      }

LABEL_41:
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_42;
    }

    v10 = *result & 0xFFFFFF;
    if (a1[48] > v8)
    {
      v11 = a1[50];
      goto LABEL_32;
    }

    goto LABEL_39;
  }

  if (v9 != 1)
  {
    if (v9 != 2)
    {
      goto LABEL_47;
    }

    v10 = *result & 0xFFFFFF;
    if (a1[38] > v8)
    {
      v11 = a1[40];
LABEL_32:
      v12 = 104;
      goto LABEL_33;
    }

    goto LABEL_40;
  }

  if (a1[33] <= v8)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_39:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_40:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_41;
  }

  v13 = a1[35] + 88 * v8;
LABEL_34:
  re::TypeInfo::TypeInfo(&v14, a1, v9, v13);
  *a3 = 1;
  return re::TypeInfo::TypeInfo((a3 + 8), &v14);
}

uint64_t re::DataArray<re::internal::TypeInfoIndex>::deinit(uint64_t result)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!*(result + 44))
  {
    return result;
  }

  v2 = result;
  v10 = result;
  if (*(result + 40))
  {
    LODWORD(v11) = 0;
    if (!*(result + 16))
    {
      goto LABEL_29;
    }

    v3 = result;
    if (!**(*(result + 32) + 8))
    {
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v10);
      v3 = v10;
    }
  }

  else
  {
    LODWORD(v11) = -1;
    v3 = result;
  }

  v10 = v3;
  if (v3 != v2 || v11 != 0xFFFFFFFFLL)
  {
    v4 = v11;
    v5 = WORD1(v11);
    do
    {
      v6 = v3[2];
      if (v6 <= v5)
      {
        goto LABEL_28;
      }

      re::DataArray<re::internal::TypeInfoIndex>::destroy(v2, ((*(*(v3[4] + 16 * v5 + 8) + 4 * v4) & 0xFFFFFF) << 32) | (v5 << 16) | v4);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v10);
      v3 = v10;
      v4 = v11;
      v5 = WORD1(v11);
    }

    while (v10 != v2 || v11 != 0xFFFFLL || WORD1(v11) != 0xFFFFLL);
  }

  v7 = v2[2];
  v5 = v7 - 1;
  if (v7 == 1)
  {
    goto LABEL_23;
  }

  v6 = 16 * v7 - 16;
  do
  {
    if (v7 <= v5)
    {
      v10 = 0;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      v16 = 789;
      v17 = 2048;
      v18 = v5;
      v19 = 2048;
      v20 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_27:
      v10 = 0;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "removeAt";
      v15 = 1024;
      v16 = 931;
      v17 = 2048;
      v18 = v5;
      v19 = 2048;
      v20 = v1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_28:
      v12 = 0;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      v16 = 797;
      v17 = 2048;
      v18 = v5;
      v19 = 2048;
      v20 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_29:
      v12 = 0;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      v16 = 797;
      v17 = 2048;
      v18 = 0;
      v19 = 2048;
      v20 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v8 = (v2[4] + v6);
    (*(**v2 + 40))(*v2, *v8);
    (*(**v2 + 40))(*v2, v8[1]);
    v1 = v2[2];
    if (v1 <= v5)
    {
      goto LABEL_27;
    }

    v7 = v1 - 1;
    if (v1 - 1 > v5)
    {
      *(v2[4] + v6) = *(v2[4] + 16 * v1 - 16);
      v7 = v2[2] - 1;
    }

    v2[2] = v7;
    ++*(v2 + 6);
    v6 -= 16;
    --v5;
  }

  while (v5);
  v2[6] = 0xFFFFFFFF00000000;
  if (!v7)
  {
    v10 = 0;
    v25 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v2 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    v16 = 789;
    v17 = 2048;
    v18 = 0;
    v19 = 2048;
    v20 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_23:
    v2[6] = 0xFFFFFFFF00000000;
  }

  v9 = v2[4];
  (*(**v2 + 40))(*v2, *v9);
  (*(**v2 + 40))(*v2, v9[1]);
  result = re::DynamicArray<unsigned long>::deinit(v2);
  *(v2 + 11) = 0;
  return result;
}

uint64_t re::DataArray<re::TypeRegistry::TypeNameAndVersion>::deinit(uint64_t result)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!*(result + 44))
  {
    return result;
  }

  v2 = result;
  v10 = result;
  if (*(result + 40))
  {
    LODWORD(v11) = 0;
    if (!*(result + 16))
    {
      goto LABEL_29;
    }

    v3 = result;
    if (!**(*(result + 32) + 8))
    {
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v10);
      v3 = v10;
    }
  }

  else
  {
    LODWORD(v11) = -1;
    v3 = result;
  }

  v10 = v3;
  if (v3 != v2 || v11 != 0xFFFFFFFFLL)
  {
    v4 = v11;
    v5 = WORD1(v11);
    do
    {
      v6 = v3[2];
      if (v6 <= v5)
      {
        goto LABEL_28;
      }

      re::DataArray<re::TypeRegistry::TypeNameAndVersion>::destroy(v2, ((*(*(v3[4] + 16 * v5 + 8) + 4 * v4) & 0xFFFFFF) << 32) | (v5 << 16) | v4);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v10);
      v3 = v10;
      v4 = v11;
      v5 = WORD1(v11);
    }

    while (v10 != v2 || v11 != 0xFFFFLL || WORD1(v11) != 0xFFFFLL);
  }

  v7 = v2[2];
  v5 = v7 - 1;
  if (v7 == 1)
  {
    goto LABEL_23;
  }

  v6 = 16 * v7 - 16;
  do
  {
    if (v7 <= v5)
    {
      v10 = 0;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      v16 = 789;
      v17 = 2048;
      v18 = v5;
      v19 = 2048;
      v20 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_27:
      v10 = 0;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "removeAt";
      v15 = 1024;
      v16 = 931;
      v17 = 2048;
      v18 = v5;
      v19 = 2048;
      v20 = v1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_28:
      v12 = 0;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      v16 = 797;
      v17 = 2048;
      v18 = v5;
      v19 = 2048;
      v20 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_29:
      v12 = 0;
      v25 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      v16 = 797;
      v17 = 2048;
      v18 = 0;
      v19 = 2048;
      v20 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v8 = (v2[4] + v6);
    (*(**v2 + 40))(*v2, *v8);
    (*(**v2 + 40))(*v2, v8[1]);
    v1 = v2[2];
    if (v1 <= v5)
    {
      goto LABEL_27;
    }

    v7 = v1 - 1;
    if (v1 - 1 > v5)
    {
      *(v2[4] + v6) = *(v2[4] + 16 * v1 - 16);
      v7 = v2[2] - 1;
    }

    v2[2] = v7;
    ++*(v2 + 6);
    v6 -= 16;
    --v5;
  }

  while (v5);
  v2[6] = 0xFFFFFFFF00000000;
  if (!v7)
  {
    v10 = 0;
    v25 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v2 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    v16 = 789;
    v17 = 2048;
    v18 = 0;
    v19 = 2048;
    v20 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_23:
    v2[6] = 0xFFFFFFFF00000000;
  }

  v9 = v2[4];
  (*(**v2 + 40))(*v2, *v9);
  (*(**v2 + 40))(*v2, v9[1]);
  result = re::DynamicArray<unsigned long>::deinit(v2);
  *(v2 + 11) = 0;
  return result;
}

uint64_t re::DynamicArray<re::internal::ObjectTypeInfo>::deinit(uint64_t a1)
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
        v5 = 176 * v4;
        v6 = (v3 + 112);
        do
        {
          re::StringID::destroyString(v6);
          v6 = (v6 + 176);
          v5 -= 176;
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

void re::TypeRegistry::declareType(re::StringID *a1@<X2>, uint64_t a2@<X0>, int a3@<W1>, unsigned int a4@<W3>, char a5@<W4>, void *a6@<X8>)
{
  v79 = *MEMORY[0x1E69E9840];
  re::TypeRegistry::typeID(a2, a1, &v65);
  v12 = v65;
  if (v65)
  {
    v13 = v66;
    if ((a5 & 1) == 0)
    {
      v14 = re::DataArray<re::TextureAtlasTile>::tryGet(a2 + 96, v66);
      v15 = v14 ? *(v14 + 4) : -1;
      if (v15 > a4)
      {
        v16 = *re::foundationIntrospectionLogObjects(v14);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a1 + 1);
          v18 = re::DataArray<re::TextureAtlasTile>::tryGet(a2 + 96, v13);
          if (v18)
          {
            v19 = *(v18 + 16);
          }

          else
          {
            v19 = -1;
          }

          *buf = 136315906;
          *&buf[4] = v17;
          *&buf[12] = 1024;
          *&buf[14] = a4;
          *&buf[18] = 2080;
          *&buf[20] = v17;
          *&buf[28] = 1024;
          *&buf[30] = v19;
          _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "Type %s version %u is defined after type %s version %u.", buf, 0x22u);
        }
      }
    }

    v20 = re::DataArray<re::TextureAtlasTile>::tryGet(a2 + 96, v13);
    if (v20)
    {
      v21 = *(v20 + 4);
    }

    else
    {
      v21 = -1;
    }

    if (v21 == a4)
    {
      v22 = *re::foundationIntrospectionLogObjects(v20);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 1);
        v24 = re::DataArray<re::TextureAtlasTile>::tryGet(a2 + 96, v13);
        if (v24)
        {
          v25 = *(v24 + 16);
        }

        else
        {
          v25 = -1;
        }

        *buf = 136315394;
        *&buf[4] = v23;
        *&buf[12] = 1024;
        *&buf[14] = v25;
        v56 = "Duplicate types. A type with the same name (%s) and version (%u) has already been declared.";
        v57 = v22;
        v58 = 18;
        goto LABEL_63;
      }

      goto LABEL_54;
    }

    v26 = re::DataArray<re::internal::TypeInfoIndex>::tryGet(a2 + 32, v13);
    if (v26[3] != a3)
    {
      v55 = *re::foundationIntrospectionLogObjects(v26);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v59 = *(a1 + 1);
        *buf = 136315138;
        *&buf[4] = v59;
        v56 = "An type with the same name (%s) but with a different type category has already been declared.";
        v57 = v55;
        v58 = 12;
LABEL_63:
        _os_log_error_impl(&dword_1E1C61000, v57, OS_LOG_TYPE_ERROR, v56, buf, v58);
      }

LABEL_54:
      *a6 = 0;
      a6[1] = 0xFFFFFFFFLL;
      return;
    }
  }

  re::TypeRegistry::makeStringID(a2, a1, &v64);
  v28 = *(a2 + 88);
  if ((v28 + 1) >> 24)
  {
    v29 = 1;
  }

  else
  {
    v29 = v28 + 1;
  }

  *(a2 + 88) = v29;
  v30 = *(a2 + 84);
  v31 = *(a2 + 86);
  if (v30 == 0xFFFF && v31 == 0xFFFF)
  {
    if (*(a2 + 80) >= *(a2 + 76))
    {
      re::DataArray<re::internal::TypeInfoIndex>::allocBlock((a2 + 32));
    }

    v32 = *(a2 + 48);
    v31 = (v32 - 1);
    if (v32)
    {
      v30 = *(a2 + 80);
      if (v30 < 0x10000)
      {
        v33 = (*(a2 + 64) + 16 * v31);
        *(a2 + 80) = v30 + 1;
        *(v33[1] + 4 * v30) = *(a2 + 88);
        v34 = (*v33 + 4 * v30);
        goto LABEL_32;
      }

LABEL_66:
      re::internal::assertLog(5, v27, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v30);
      _os_crash();
      __break(1u);
LABEL_67:
      v67 = 0;
      v77 = 0u;
      v78 = 0u;
      memset(buf, 0, sizeof(buf));
      v61 = v41;
      v62 = v47;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v68 = 136315906;
      v69 = "operator[]";
      v70 = 1024;
      v71 = 789;
      v72 = 2048;
      v73 = v61;
      v74 = 2048;
      v75 = v62;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_68:
      v67 = 0;
      v77 = 0u;
      v78 = 0u;
      memset(buf, 0, sizeof(buf));
      v63 = v43;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v68 = 136315906;
      v69 = "operator[]";
      v70 = 1024;
      v71 = 789;
      v72 = 2048;
      v73 = v63;
      v74 = 2048;
      v75 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_69:
      re::internal::assertLog(5, v27, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v44);
      _os_crash();
      __break(1u);
    }

LABEL_65:
    v67 = 0;
    v77 = 0u;
    v78 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v68 = 136315906;
    v69 = "operator[]";
    v70 = 1024;
    v71 = 789;
    v72 = 2048;
    v73 = v31;
    v74 = 2048;
    v75 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_66;
  }

  v35 = *(a2 + 48);
  if (v35 <= v31)
  {
    v67 = 0;
    v77 = 0u;
    v78 = 0u;
    memset(buf, 0, sizeof(buf));
    v60 = v35;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v68 = 136315906;
    v69 = "operator[]";
    v70 = 1024;
    v71 = 789;
    v72 = 2048;
    v73 = v31;
    v74 = 2048;
    v75 = v60;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_65;
  }

  v36 = (*(a2 + 64) + 16 * v31);
  *(v36[1] + 4 * v30) = v29;
  v34 = (*v36 + 4 * v30);
  *(a2 + 84) = *v34;
LABEL_32:
  ++*(a2 + 72);
  *v34 = (a3 << 24) | 0xFFFFFF;
  v37 = *(a2 + 88);
  v38 = *(a2 + 152);
  if ((v38 + 1) >> 24)
  {
    v39 = 1;
  }

  else
  {
    v39 = v38 + 1;
  }

  *(a2 + 152) = v39;
  v40 = *(a2 + 148);
  v41 = *(a2 + 150);
  if (v40 != 0xFFFF || v41 != 0xFFFF)
  {
    v47 = *(a2 + 112);
    if (v47 > v41)
    {
      v48 = (*(a2 + 128) + 16 * v41);
      *(v48[1] + 4 * v40) = v39;
      v46 = (*v48 + 24 * v40);
      *(a2 + 148) = *v46;
      goto LABEL_44;
    }

    goto LABEL_67;
  }

  if (*(a2 + 144) >= *(a2 + 140))
  {
    re::DataArray<MetalHeap::TextureEntry>::allocBlock((a2 + 96));
  }

  v42 = *(a2 + 112);
  v43 = (v42 - 1);
  if (!v42)
  {
    goto LABEL_68;
  }

  v44 = *(a2 + 144);
  if (v44 >= 0x10000)
  {
    goto LABEL_69;
  }

  v45 = (*(a2 + 128) + 16 * v43);
  *(a2 + 144) = v44 + 1;
  *(v45[1] + 4 * v44) = *(a2 + 152);
  v46 = (*v45 + 24 * v44);
LABEL_44:
  v49 = v30 + (v31 << 16) + ((v37 & 0xFFFFFF) << 32);
  ++*(a2 + 136);
  v50 = re::StringID::StringID(v46, &v64);
  *(v50 + 4) = a4;
  v51 = *&v64.var0;
  if (*&v64.var0 < 0xFFFFFFFFFFFFFFFELL || (*&v64.var0 & 1) != 0 || *v64.var1)
  {
    if (!v12)
    {
      goto LABEL_51;
    }

    v50 = re::DataArray<re::TextureAtlasTile>::tryGet(a2 + 96, v66);
    if (v50 && *(v50 + 4) < a4)
    {
      v51 = *&v64.var0;
LABEL_51:
      memset(buf, 0, 24);
      v52 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v51 >> 31) ^ (v51 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v51 >> 31) ^ (v51 >> 1))) >> 27));
      v50 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a2 + 200, &v64, v52 ^ (v52 >> 31), buf);
      v53 = *&buf[12];
      if (*&buf[12] == 0x7FFFFFFF)
      {
        v54 = re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a2 + 200, *&buf[8], *buf);
        v50 = re::StringID::StringID((v54 + 8), &v64);
        *(v54 + 24) = v49;
        ++*(a2 + 240);
      }

      else
      {
        ++*(a2 + 240);
        *(*(a2 + 216) + 32 * v53 + 24) = v49;
      }
    }
  }

  ++*(a2 + 24);
  *a6 = a2;
  a6[1] = v49;
  if (*&v64.var0)
  {
    if (*&v64.var0)
    {
    }
  }
}

uint64_t re::TypeRegistry::typeID@<X0>(re::TypeRegistry *this@<X0>, const re::StringID *a2@<X1>, re::TypeRegistry **a3@<X8>)
{
  v3 = this;
  v5 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 200, a2, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), v7);
  if (v8 == 0x7FFFFFFF)
  {
    v3 = 0;
    a3[1] = 0xFFFFFFFFLL;
  }

  else
  {
    a3[1] = *(*(v3 + 27) + 32 * v8 + 24);
  }

  *a3 = v3;
  return result;
}

re::StringID *re::TypeRegistry::makeStringID@<X0>(re::TypeRegistry *this@<X0>, const StringID *a2@<X1>, re::StringID *a3@<X8>)
{
  if (*&a2->var0)
  {
    return re::TypeRegistry::makeStringID(this, a2->var1, a3);
  }

  else
  {
    return re::StringID::StringID(a3, a2);
  }
}

void re::TypeRegistry::declareTypeAlias(re::TypeRegistry *this, re::TypeRegistry **a2, const StringID *a3)
{
  if (!*a2)
  {
    re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Invalid type ID.", "typeID.isValid()", "declareTypeAlias", 144);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (*a2 != this)
  {
LABEL_8:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Wrong type registry.", "typeID.registry() == this", "declareTypeAlias", 145);
    _os_crash();
    __break(1u);
    return;
  }

  re::TypeRegistry::makeStringID(this, a3, &v6);
  re::DynamicArray<re::StringID>::add((this + 160), &v6);
  v5 = re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(this + 200, &v6, a2 + 1);
  ++*(this + 6);
  if (*&v6.var0)
  {
    if (*&v6.var0)
    {
    }
  }
}

uint64_t re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(uint64_t a1, StringID *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 24;
  }

  v7 = re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  re::StringID::StringID((v7 + 8), a2);
  *(v7 + 24) = *a3;
  v8 = v7 + 24;
  ++*(a1 + 40);
  return v8;
}

BOOL re::TypeRegistry::contains(re::TypeRegistry *this, const re::StringID *a2)
{
  v2 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 200, a2, (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31), v4);
  return v5 != 0x7FFFFFFF;
}

double re::TypeRegistry::typeID@<D0>(re::TypeRegistry *this@<X0>, const re::StringID *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v7 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 200, a2, (0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) ^ ((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) >> 31), v10);
  if (v11 == 0x7FFFFFFF || (TypeWithVersion = re::TypeRegistry::findTypeWithVersion(this, *(*(this + 27) + 32 * v11 + 24), a3), (TypeWithVersion & 0xFFFFFF00000000) == 0))
  {
    *a4 = 0;
    *&result = 0xFFFFFFFFLL;
    a4[1] = 0xFFFFFFFFLL;
  }

  else
  {
    *a4 = this;
    a4[1] = TypeWithVersion;
  }

  return result;
}

unint64_t re::TypeRegistry::findTypeWithVersion(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v47 = *MEMORY[0x1E69E9840];
  re::TypeRegistry::typeInfo(a1, a2, v28);
  if (v28[0] == 1)
  {
    LODWORD(v4) = -1;
    while (1)
    {
      v6 = re::DataArray<re::TextureAtlasTile>::tryGet((v29 + 12), *v30);
      v7 = v6 ? *(v6 + 16) : -1;
      if (v7 == a3)
      {
        break;
      }

      if ((*(v30 + 60) & 0xFFFFFF) != 0)
      {
        re::TypeRegistry::typeInfo(v29, *(v30 + 56), &v42);
      }

      else
      {
        LOBYTE(v42) = 0;
      }

      re::Optional<re::TypeInfo>::operator=(v28, &v42);
      if ((v28[0] & 1) == 0)
      {
        v8 = 0;
        return v8 | v4;
      }
    }

    v4 = *v30;
    goto LABEL_19;
  }

  v9 = a1 + 96;
  v10 = re::DataArray<re::TextureAtlasTile>::tryGet(a1 + 96, v4);
  if (!v10)
  {
    goto LABEL_32;
  }

  v11 = v10;
  if (*(v10 + 16) != a3)
  {
    v31 = a1 + 96;
    if (*(a1 + 136))
    {
      v32 = 0;
      if (!*(a1 + 112))
      {
        goto LABEL_45;
      }

      v12 = a1 + 96;
      if (!**(*(a1 + 128) + 8))
      {
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v31);
        v12 = v31;
      }
    }

    else
    {
      v32 = -1;
      v12 = a1 + 96;
    }

    v26 = v12;
    v27 = v32;
    v13 = v32;
    v14 = HIWORD(v32);
    if (v9 != v12 || v32 != 0xFFFF || v14 != 0xFFFF)
    {
      while (1)
      {
        v15 = v14;
        v16 = *(v12 + 16);
        if (v16 <= v14)
        {
          goto LABEL_44;
        }

        v15 = *(*(v12 + 32) + 16 * v14) + 24 * v13;
        if (re::StringID::operator==(v15, v11) && *(v15 + 16) == a3)
        {
          break;
        }

        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v26);
        v12 = v26;
        v13 = v27;
        v14 = HIWORD(v27);
        if (v26 == v9 && v27 == 0xFFFF && HIWORD(v27) == 0xFFFF)
        {
          goto LABEL_32;
        }
      }

      v20 = *(a1 + 112);
      if (!v20)
      {
LABEL_40:
        re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) element isn't in data array", "!Unreachable code", "handle", 707);
        _os_crash();
        __break(1u);
LABEL_41:
        if (v25 < 0x10000)
        {
          LODWORD(v4) = v25 - v21;
          v8 = (((*(*v22 + 4 * v25) & 0xFFFFFF) << 32) - v21) & 0x7FFFFFFF00000000;
          return v8 | v4;
        }

LABEL_46:
        re::internal::assertLog(5, v17, "assertion failure: '%s' (%s:line %i) arrayIndex (%zu) is too large for a 16-bit unsigned integer", "!overflow", "handle", 700, v25);
        _os_crash();
        __break(1u);
      }

      v21 = 0;
      v22 = (*(a1 + 128) + 8);
      v23 = 0x10000;
      while (v23)
      {
        v24 = v15 - *(v22 - 1);
        if (v24 >= -23)
        {
          v25 = 0xAAAAAAAAAAAAAAABLL * (v24 >> 3);
          if (v25 < *(a1 + 140))
          {
            goto LABEL_41;
          }
        }

        v21 -= 0x10000;
        --v23;
        v22 += 2;
        if (!--v20)
        {
          goto LABEL_40;
        }
      }

      re::internal::assertLog(5, v17, "assertion failure: '%s' (%s:line %i) blockIndex (%zu) is too large for a 16-bit unsigned integer", "!overflow", "handle", 692, 0x10000);
      _os_crash();
      __break(1u);
LABEL_44:
      v31 = 0;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v34 = 136315906;
      v35 = "operator[]";
      v36 = 1024;
      v37 = 797;
      v38 = 2048;
      v39 = v15;
      v40 = 2048;
      v41 = v16;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_45:
      v33 = 0;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v34 = 136315906;
      v35 = "operator[]";
      v36 = 1024;
      v37 = 797;
      v38 = 2048;
      v39 = 0;
      v40 = 2048;
      v41 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_46;
    }

LABEL_32:
    v8 = 0;
    LODWORD(v4) = -1;
    return v8 | v4;
  }

LABEL_19:
  v8 = v4 & 0xFFFFFFFF00000000;
  return v8 | v4;
}

void re::TypeRegistry::typeInfo(re *a1@<X0>, re **a2@<X1>, _BYTE *a3@<X8>)
{
  if (!*a2)
  {
    goto LABEL_5;
  }

  if (*a2 != a1)
  {
    v4 = *re::foundationIntrospectionLogObjects(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Invalid type ID. Type was registered in a different type registry.", v6, 2u);
    }

LABEL_5:
    *a3 = 0;
    return;
  }

  v5 = a2[1];

  re::TypeRegistry::typeInfo(a1, v5, a3);
}

unsigned int *re::TypeRegistry::typeInfo@<X0>(re::TypeRegistry *this@<X0>, const re::StringID *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 200, a2, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), v7);
  if (v8 != 0x7FFFFFFF)
  {
    return re::TypeRegistry::typeInfo(this, *(*(this + 27) + 32 * v8 + 24), a3);
  }

  *a3 = 0;
  return result;
}

void re::TypeRegistry::typeInfo(re::TypeRegistry *this@<X0>, const re::DynamicString *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *(a2 + 2);
  if ((*(a2 + 8) & 1) == 0)
  {
    v3 = a2 + 9;
  }

  if (v3)
  {
    v4 = *v3;
    if (*v3)
    {
      v5 = v3[1];
      if (v5)
      {
        v6 = (v3 + 2);
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v9[0] = 2 * v4;
  v9[1] = v3;
  v8 = re::TypeRegistry::typeInfo(this, v9, a3);
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }
}