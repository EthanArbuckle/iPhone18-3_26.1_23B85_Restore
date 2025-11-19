void *sub_1D334A868(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DE8, &qword_1D33E1B98);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1D334A8DC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DE8, &qword_1D33E1B98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_1D334A9D0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

char *sub_1D334A9E0(char *a1, int64_t a2, char a3)
{
  result = sub_1D334B4EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D334AA60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334D4B4;

  return sub_1D3347390(a1, v4, v5, v6);
}

uint64_t sub_1D334AB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D334D4BC;

  return v11(a1, a2, a3);
}

uint64_t sub_1D334AC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D334D4B4;

  return v11(a1, a2, a3);
}

uint64_t sub_1D334AD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D334D4B4;

  return v11(a1, a2, a3);
}

uint64_t sub_1D334AE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D334AFB4;

  return v11(a1, a2, a3);
}

uint64_t sub_1D334AFB4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void sub_1D334B194()
{
  if (!qword_1EC760D68)
  {
    sub_1D33DE2F4();
    v0 = sub_1D33DDF94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC760D68);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_Say10Foundation4UUIDVGIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D334B204(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D334B24C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D334B2A4()
{
  result = qword_1EC760D78;
  if (!qword_1EC760D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC760D78);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

size_t sub_1D334B384(size_t a1, int64_t a2, char a3)
{
  result = sub_1D334B974(a1, a2, a3, *v3, &qword_1EC760D90, &qword_1D33E19E8, &qword_1EC7612B0, qword_1D33E2830);
  *v3 = result;
  return result;
}

size_t sub_1D334B3C4(size_t a1, int64_t a2, char a3)
{
  result = sub_1D334B678(a1, a2, a3, *v3, &unk_1EC7610A0, &qword_1D33E1B90, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

size_t sub_1D334B408(size_t a1, int64_t a2, char a3)
{
  result = sub_1D334B678(a1, a2, a3, *v3, &qword_1EC760DA0, &qword_1D33E1AB8, MEMORY[0x1E696EDC8]);
  *v3 = result;
  return result;
}

char *sub_1D334B44C(char *a1, int64_t a2, char a3)
{
  result = sub_1D334B854(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D334B46C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D334B974(a1, a2, a3, *v3, &qword_1EC760DC0, &qword_1D33E1B48, &qword_1EC760DC8, &qword_1D33E1B50);
  *v3 = result;
  return result;
}

size_t sub_1D334B4AC(size_t a1, int64_t a2, char a3)
{
  result = sub_1D334B974(a1, a2, a3, *v3, &qword_1EC760DB8, &qword_1D33E1B08, &qword_1EC761450, &qword_1D33E1B10);
  *v3 = result;
  return result;
}

char *sub_1D334B4EC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761040, &qword_1D33E1B40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1D334B678(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1D334B854(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DE0, &qword_1D33E1B68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1D334B974(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_1D334BB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1D33B926C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D3399734();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_1D33DDDB4();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for RecentsItem(0);
    v22 = *(v15 - 8);
    sub_1D33302BC(v14 + *(v22 + 72) * v8, a2);
    sub_1D334BE3C(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for RecentsItem(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

double sub_1D334BCE4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1D33B95A0(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D339A324();
      v11 = v13;
    }

    sub_1D334CCA0(*(v11 + 48) + 40 * v8);
    sub_1D334CCF4((*(v11 + 56) + 32 * v8), a2);
    sub_1D334C180(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_1D334BD88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1D33378A8(a1, a2);
  v7 = v6;
  if (v6)
  {
    v8 = v5;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D339A614();
      v11 = v15;
    }

    v12 = *(*(v11 + 48) + 16 * v8 + 8);

    v13 = *(*(v11 + 56) + 4 * v8);
    sub_1D334C324(v8, v11);
    *v3 = v11;
  }

  else
  {
    v13 = 0;
  }

  return v13 | (((v7 & 1) == 0) << 32);
}

unint64_t sub_1D334BE3C(int64_t a1, uint64_t a2)
{
  v4 = sub_1D33DDDB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_1D33DED84();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_1D331FE94(&qword_1EDEBFD38, MEMORY[0x1E69695A8]);
      v24 = sub_1D33DE724();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(type metadata accessor for RecentsItem(0) - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D334C180(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D33DED84() + 1) & ~v5;
    do
    {
      sub_1D334CD04(*(a2 + 48) + 40 * v6, v26);
      v10 = *(a2 + 40);
      v11 = sub_1D33DEE94();
      result = sub_1D334CCA0(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 32 * v3);
          v22 = (v20 + 32 * v6);
          if (v3 != v6 || v21 >= v22 + 2)
          {
            v9 = v22[1];
            *v21 = *v22;
            v21[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D334C324(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D33DED84() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1D33DF284();

      sub_1D33DE824();
      v13 = sub_1D33DF2C4();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 4 * v3);
        v20 = (v18 + 4 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D334C4D4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1D334C5C8;

  return v6(v2 + 32);
}

uint64_t sub_1D334C5C8()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1D334C6DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D334D4B4;

  return sub_1D333FC68(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D334C7C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentsItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_91Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D334C878(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D334D4B4;

  return sub_1D333F1AC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D334C940(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1D334C978(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1D334C9A4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D334D4B4;

  return sub_1D3349710(a1, v7, v8, v9, v1 + v6, v10);
}

unint64_t sub_1D334CB00()
{
  result = qword_1EC760FE0;
  if (!qword_1EC760FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC760FE0);
  }

  return result;
}

uint64_t sub_1D334CB54(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D334CB9C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D334D4B4;

  return sub_1D3393AF8(a1, v5);
}

unint64_t sub_1D334CC54()
{
  result = qword_1EDEBEEB0;
  if (!qword_1EDEBEEB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEBEEB0);
  }

  return result;
}

_OWORD *sub_1D334CCF4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D334CD60(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D334D4B4;

  return sub_1D334C4D4(a1, v5);
}

uint64_t sub_1D334CE18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D334D4B4;

  return sub_1D3340DDC(a1, v4, v5, v7, v6);
}

uint64_t sub_1D334CED8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D334CF9C;

  return sub_1D333D344(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_1D334CF9C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D334D0C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334D4B4;

  return sub_1D3343024(a1, v4, v5, v6);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D334D1B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334CF9C;

  return sub_1D33415A0(a1, v4, v5, v6);
}

void sub_1D334D298(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EE0, &qword_1D33E4CE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_1D33DDDB4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D33DEE14())
  {
    v13 = 0;
    v24 = a1 & 0xC000000000000001;
    v22 = OBJC_IVAR____TtC16CallsAppServices27VideoMessageInboxController_callProviderManager;
    v23 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v24)
      {
        v14 = MEMORY[0x1D38B75D0](v13, a1);
      }

      else
      {
        if (v13 >= *(v23 + 16))
        {
          goto LABEL_12;
        }

        v14 = *(a1 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      sub_1D33DE0B4();
      v17 = *(v26 + v22);
      v18 = v15;
      v19 = v17;
      RecentsItem.init(message:callProviderManager:)(v18, v17, v7);
      v20 = type metadata accessor for RecentsItem(0);
      (*(*(v20 - 8) + 56))(v7, 0, 1, v20);
      sub_1D33461E0(v7, v11);

      ++v13;
      if (v16 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_1D334D5DC()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1D334EAE0();
  sub_1D33DDED4();

  os_unfair_lock_lock((v0 + 72));
  v1 = *(v0 + 80);

  os_unfair_lock_unlock(v3 + 18);
  return v1;
}

uint64_t sub_1D334D668()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D33DE574();

  return v1;
}

uint64_t sub_1D334D6DC()
{
  v1 = type metadata accessor for RecentsItem(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v9 = (*(v7 + 16))(ObjectType, v7);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v43 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    if (v11)
    {
      v12 = *(v2 + 80);
      v42 = v9;
      v13 = v9 + ((v12 + 32) & ~v12);
      v14 = *(v2 + 72);
      v15 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        sub_1D332A828(v13, v5);
        v16 = *v5;
        v17 = v5[32];
        if (v17 == 4)
        {
          break;
        }

        v20 = *(v5 + 1);
        v21 = *(v5 + 2);
        v22 = *(v5 + 3);
        sub_1D332B0D0(*v5, v20, v21, v22, v5[32]);
        sub_1D332B2E8(v5);
        if (v17 == 6)
        {

          goto LABEL_10;
        }

        sub_1D332B1DC(v16, v20, v21, v22, v17);
LABEL_5:
        v13 += v14;
        if (!--v11)
        {

          v10 = MEMORY[0x1E69E7CC0];
          goto LABEL_16;
        }
      }

      v18 = v16;
      v19 = sub_1D332B2E8(v5);
LABEL_10:
      MEMORY[0x1D38B6F20](v19);
      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D33DE8D4();
      }

      sub_1D33DE8F4();
      v15 = v43;
      goto LABEL_5;
    }

    v15 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

LABEL_16:
  v43 = v10;
  if (v15 >> 62)
  {
    goto LABEL_40;
  }

  v24 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v24)
  {
LABEL_18:
    v25 = 0;
    v42 = v15 & 0xC000000000000001;
    v26 = *MEMORY[0x1E69935E0];
    while (1)
    {
      if (v42)
      {
        v27 = MEMORY[0x1D38B75D0](v25, v15);
      }

      else
      {
        if (v25 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v27 = *(v15 + 8 * v25 + 32);
      }

      v28 = v27;
      v29 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        v24 = sub_1D33DEE14();
        if (!v24)
        {
          goto LABEL_41;
        }

        goto LABEL_18;
      }

      v30 = [v27 serviceProvider];
      if (!v30)
      {
        break;
      }

      v31 = v30;
      v32 = sub_1D33DE7B4();
      v34 = v33;

      v35 = sub_1D33DE7B4();
      if (!v34)
      {
        goto LABEL_20;
      }

      if (v32 == v35 && v34 == v36)
      {

LABEL_36:
        sub_1D33DEF84();
        v39 = *(v43 + 16);
        sub_1D33DEFB4();
        sub_1D33DEFC4();
        sub_1D33DEF94();
        goto LABEL_22;
      }

      v38 = sub_1D33DF1B4();

      if (v38)
      {
        goto LABEL_36;
      }

LABEL_21:

LABEL_22:
      ++v25;
      if (v29 == v24)
      {
        goto LABEL_41;
      }
    }

    sub_1D33DE7B4();
LABEL_20:

    goto LABEL_21;
  }

LABEL_41:

  if ((v43 & 0x8000000000000000) != 0 || (v43 & 0x4000000000000000) != 0)
  {
    v40 = sub_1D33DEE14();
  }

  else
  {
    v40 = *(v43 + 16);
  }

  return v40;
}

uint64_t sub_1D334DA9C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox__needsNewLoad) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox__needsNewLoad) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D334EAE0();
    sub_1D33DDEC4();
  }

  return result;
}

uint64_t sub_1D334DB84()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D334DBDC();
  }

  return result;
}

void sub_1D334DBDC()
{
  v1 = v0;
  v2 = v0[11];
  sub_1D33DE4F4();
  if (v21 == 1)
  {
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v3 = sub_1D33DE464();
    __swift_project_value_buffer(v3, qword_1EDEC1480);
    v4 = sub_1D33DE444();
    v5 = sub_1D33DEAF4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D331A000, v4, v5, "Delaying: RecentsControllerBox", v6, 2u);
      MEMORY[0x1D38B81C0](v6, -1, -1);
    }

    if (*(v1 + OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox__needsNewLoad) == 1)
    {
      *(v1 + OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox__needsNewLoad) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D334EAE0();
      sub_1D33DDEC4();
    }
  }

  else
  {
    v7 = v0[2];
    v8 = v1[3];
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 16))(ObjectType, v8);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v12 = sub_1D33DE464();
    __swift_project_value_buffer(v12, qword_1EDEC1480);

    v13 = sub_1D33DE444();
    v14 = sub_1D33DEAF4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134349056;
      *(v15 + 4) = v11[2];

      _os_log_impl(&dword_1D331A000, v13, v14, "Updating: RecentsControllerBox items.count: %{public}ld", v15, 0xCu);
      MEMORY[0x1D38B81C0](v15, -1, -1);
    }

    else
    {
    }

    sub_1D33DE4E4();
    v17 = __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = *v17;

    sub_1D33D52A0(v20, v19, v18, v11);

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_1D334DF2C()
{
  swift_getKeyPath();
  sub_1D334EAE0();
  sub_1D33DDED4();

  return *(v0 + OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox__needsNewLoad);
}

uint64_t sub_1D334DFA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D334EAE0();
  sub_1D33DDED4();

  *a2 = *(v3 + OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox__needsNewLoad);
  return result;
}

uint64_t sub_1D334E024()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D334EAE0();
    sub_1D33DDEC4();

    v3 = *(v1 + 88);
    sub_1D33DE4E4();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1D33DE584();
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v4 = sub_1D33DE464();
    __swift_project_value_buffer(v4, qword_1EDEC1480);
    v5 = sub_1D33DE444();
    v6 = sub_1D33DEAF4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D331A000, v5, v6, "Updated: RecentsControllerBox", v7, 2u);
      MEMORY[0x1D38B81C0](v7, -1, -1);
    }

    swift_getKeyPath();
    sub_1D33DDED4();

    v8 = OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox__needsNewLoad;
    if (*(v1 + OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox__needsNewLoad) == 1)
    {
      v9 = sub_1D33DE444();
      v10 = sub_1D33DEAF4();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1D331A000, v9, v10, "Request Delayed: RecentsControllerBox", v11, 2u);
        MEMORY[0x1D38B81C0](v11, -1, -1);
      }

      if (*(v1 + v8))
      {
        v13 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v13);
        sub_1D33DDEC4();
      }

      else
      {
        *(v1 + v8) = 0;
      }

      sub_1D334DBDC(v12);
    }
  }

  return result;
}

void sub_1D334E384(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 72));
  v4 = *(a1 + 80);
  *(a1 + 80) = a2;

  os_unfair_lock_unlock((a1 + 72));
}

void *sub_1D334E3E0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  sub_1D334F2E4((v0 + 10));
  v2 = v0[11];

  v3 = OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox__hasFinishedFirstLoad;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761830, &qword_1D33E32B0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox_recentCallsDidChangeSubscription);

  v6 = OBJC_IVAR____TtC16CallsAppServices20RecentsControllerBox___observationRegistrar;
  v7 = sub_1D33DDF14();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t sub_1D334E4CC()
{
  sub_1D334E3E0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D334E538(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D334E594(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D334E5F4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 88);
  sub_1D33DE4E4();
  v5 = *(v1 + 16);
  v6 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  (*(v6 + 72))(a1, ObjectType, v6);

  sub_1D332BD24(v8);

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DA8, &qword_1D33E1AD0);
  sub_1D334EAE0();
  sub_1D33DDEC4();

  return sub_1D33DE4E4();
}

void sub_1D334E724(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  os_unfair_lock_lock((a1 + 72));
  v6 = *(a1 + 80);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = sub_1D334EEC4((a1 + 80), a2);

  v8 = *(*(a1 + 80) + 16);
  if (v8 >= v7)
  {
    sub_1D334F224(v7, v8);
LABEL_4:
    *a3 = v6 == 0;
    os_unfair_lock_unlock((a1 + 72));
    return;
  }

  __break(1u);
}

uint64_t sub_1D334E7D8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for RecentsItem(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x1EEE9AC00](v5 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = v2;
    v13 = *(v2 + 16);
    v14 = *(v12 + 24);
    ObjectType = swift_getObjectType();
    v16 = *(v14 + 104);
    v17 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v18 = *(v6 + 72);
    do
    {
      sub_1D332A828(v17, v10);
      v16(a1, v10, ObjectType, v14);
      result = sub_1D332B2E8(v10);
      v17 += v18;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_1D334E908()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760FD0, &qword_1D33E2240);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - v4;
  v8[1] = *(*v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7619E0, &unk_1D33E1AA0);
  sub_1D334CB54(&unk_1EC760EB0, &unk_1EC7619E0, &unk_1D33E1AA0);
  sub_1D334CB00();
  sub_1D33DE624();
  sub_1D334CB54(&unk_1EC760EC0, &unk_1EC760FD0, &qword_1D33E2240);
  v6 = sub_1D33DE5A4();
  (*(v2 + 8))(v5, v1);
  return v6;
}

unint64_t sub_1D334EAE0()
{
  result = qword_1EDEBFAD0;
  if (!qword_1EDEBFAD0)
  {
    type metadata accessor for RecentsControllerBox();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBFAD0);
  }

  return result;
}

uint64_t sub_1D334EB38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D33DE574();

  *a2 = v5;
  return result;
}

uint64_t sub_1D334EBB8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D33DE584();
}

uint64_t sub_1D334EC54(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1D33DEE14();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1D33DEF54();
}

uint64_t sub_1D334ECE8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for RecentsItem(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = v10 == 0;
  v26 = v10;
  if (!v10)
  {
    return 0;
  }

  v12 = 0;
  v13 = a2 + 56;
  v14 = *(v7 + 80);
  v24 = v2;
  v25 = a1 + ((v14 + 32) & ~v14);
  v15 = *(v7 + 72);
  while (1)
  {
    v27 = v11;
    if (*(a2 + 16))
    {
      v16 = v25 + v15 * v12;
      v17 = *(a2 + 40);
      sub_1D33DF284();
      RecentsItem.hash(into:)();
      v18 = sub_1D33DF2C4();
      v19 = -1 << *(a2 + 32);
      v20 = v18 & ~v19;
      if ((*(v13 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        break;
      }
    }

LABEL_3:
    v11 = ++v12 == v26;
    if (v12 == v26)
    {
      return 0;
    }
  }

  v21 = ~v19;
  while (1)
  {
    sub_1D332A828(*(a2 + 48) + v20 * v15, v9);
    v22 = _s16CallsAppServices11RecentsItemV2eeoiySbAC_ACtFZ_0(v9, v16);
    sub_1D332B2E8(v9);
    if (v22)
    {
      return v12;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v13 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_1D334EEC4(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for RecentsItem(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v43 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v43 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - v18;
  v20 = *a1;
  result = sub_1D334ECE8(*a1, a2);
  if (v2)
  {
    return v3;
  }

  if (v22)
  {
    return *(v20 + 16);
  }

  v3 = result;
  v45 = v11;
  v46 = v14;
  v44 = a1;
  v23 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v43 = 0;
    v24 = a2 + 56;
    v47 = v7;
    while (1)
    {
      v25 = *(v20 + 16);
      if (v23 == v25)
      {
        return v3;
      }

      if (v23 >= v25)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        break;
      }

      v26 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v52 = v20;
      v48 = v26;
      v27 = v20 + v26;
      v28 = *(v7 + 72);
      v50 = v28 * v23;
      v51 = v3;
      v49 = v27;
      sub_1D332A828(v27 + v28 * v23, v19);
      if (*(a2 + 16) && (v29 = *(a2 + 40), sub_1D33DF284(), RecentsItem.hash(into:)(), v30 = sub_1D33DF2C4(), v31 = -1 << *(a2 + 32), v32 = v30 & ~v31, ((*(v24 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
      {
        v33 = ~v31;
        while (1)
        {
          sub_1D332A828(*(a2 + 48) + v32 * v28, v17);
          v34 = _s16CallsAppServices11RecentsItemV2eeoiySbAC_ACtFZ_0(v17, v19);
          sub_1D332B2E8(v17);
          if (v34)
          {
            break;
          }

          v32 = (v32 + 1) & v33;
          if (((*(v24 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        result = sub_1D332B2E8(v19);
        v3 = v51;
        v20 = v52;
      }

      else
      {
LABEL_16:
        result = sub_1D332B2E8(v19);
        v35 = v51;
        if (v51 == v23)
        {
          v20 = v52;
          v3 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            goto LABEL_33;
          }
        }

        else
        {
          if ((v51 & 0x8000000000000000) != 0)
          {
            goto LABEL_34;
          }

          v36 = v52[2];
          if (v51 >= v36)
          {
            goto LABEL_35;
          }

          v37 = v28 * v51;
          v38 = v49;
          result = sub_1D332A828(v49 + v37, v46);
          if (v23 >= v36)
          {
            goto LABEL_36;
          }

          sub_1D332A828(v38 + v50, v45);
          v39 = v52;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_1D334EC2C(v39);
          }

          v40 = v39;
          v41 = v39 + v48;
          result = sub_1D334C7C4(v45, &v41[v37]);
          if (v23 >= v40[2])
          {
            goto LABEL_37;
          }

          result = sub_1D334C7C4(v46, &v41[v50]);
          *v44 = v40;
          v20 = v40;
          v42 = __OFADD__(v35, 1);
          v3 = v35 + 1;
          if (v42)
          {
            goto LABEL_33;
          }
        }
      }

      v42 = __OFADD__(v23++, 1);
      v7 = v47;
      if (v42)
      {
        goto LABEL_32;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D334F224(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1D33226AC(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1D3359FDC(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_1D334F360(uint64_t a1)
{
  v1 = a1;
  v39 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1D33DEE14();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v45 = MEMORY[0x1E69E7CC0];
    sub_1D334B44C(0, v2 & ~(v2 >> 63), 0);
    v4 = v45;
    if (v39)
    {
      v5 = sub_1D33DEDB4();
    }

    else
    {
      v7 = -1 << *(v1 + 32);
      v5 = sub_1D33DED74();
      v6 = *(v1 + 36);
    }

    v42 = v5;
    v43 = v6;
    v44 = v39 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v8 = 0;
      v35 = v1 + 56;
      v34 = v1 + 64;
      v37 = v3 >> 62;
      v38 = v1;
      v36 = v2;
      while (v8 < v2)
      {
        if (__OFADD__(v8++, 1))
        {
          goto LABEL_42;
        }

        v11 = v42;
        v12 = v44;
        v40 = v43;
        sub_1D33D3798(v42, v43, v44, v1);
        v14 = v13;
        if (v37 && sub_1D33DEE14())
        {
          v15 = v14;
          sub_1D33A69F4(MEMORY[0x1E69E7CC0]);
          v17 = v16;
        }

        else
        {
          v18 = v14;
          v17 = MEMORY[0x1E69E7CD0];
        }

        if (qword_1EDEC0138 != -1)
        {
          swift_once();
        }

        v19 = qword_1EDEC0110;

        v45 = v4;
        v21 = *(v4 + 16);
        v20 = *(v4 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D334B44C((v20 > 1), v21 + 1, 1);
          v4 = v45;
        }

        *(v4 + 16) = v21 + 1;
        v22 = (v4 + 24 * v21);
        v22[4] = v19;
        v22[5] = v14;
        v22[6] = v17;
        if (v39)
        {
          v1 = v38;
          if (!v12)
          {
            goto LABEL_47;
          }

          v23 = v4;
          if (sub_1D33DEDD4())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v36;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF8, &unk_1D33E2280);
          v9 = sub_1D33DEA84();
          sub_1D33DEE84();
          v9(v41, 0);
        }

        else
        {
          v1 = v38;
          if (v12)
          {
            goto LABEL_48;
          }

          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_43;
          }

          v23 = v4;
          v24 = 1 << *(v38 + 32);
          if (v11 >= v24)
          {
            goto LABEL_43;
          }

          v25 = v11 >> 6;
          v26 = *(v35 + 8 * (v11 >> 6));
          if (((v26 >> v11) & 1) == 0)
          {
            goto LABEL_44;
          }

          if (*(v38 + 36) != v40)
          {
            goto LABEL_45;
          }

          v27 = v26 & (-2 << (v11 & 0x3F));
          if (v27)
          {
            v24 = __clz(__rbit64(v27)) | v11 & 0x7FFFFFFFFFFFFFC0;
            v2 = v36;
          }

          else
          {
            v28 = v25 << 6;
            v29 = v25 + 1;
            v30 = (v34 + 8 * v25);
            v2 = v36;
            while (v29 < (v24 + 63) >> 6)
            {
              v32 = *v30++;
              v31 = v32;
              v28 += 64;
              ++v29;
              if (v32)
              {
                sub_1D335665C(v11, v40, 0);
                v24 = __clz(__rbit64(v31)) + v28;
                goto LABEL_39;
              }
            }

            sub_1D335665C(v11, v40, 0);
          }

LABEL_39:
          v33 = *(v38 + 36);
          v42 = v24;
          v43 = v33;
          v44 = 0;
        }

        v4 = v23;
        if (v8 == v2)
        {
          sub_1D335665C(v42, v43, v44);
          return;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }
}

void sub_1D334F728(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D33DEE14())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D38B75D0](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void *sub_1D334F850@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1D334F87C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1D334F92C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1D33559C0(a1);

  *a2 = v3;
  return result;
}

void sub_1D334F96C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  if (*(v0 + 56) == 4)
  {
    v6 = sub_1D33DE9B4();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    sub_1D33DE974();

    v7 = sub_1D33DE964();
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E85E0];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v1;
    sub_1D333DD88(0, 0, v5, &unk_1D33E2260, v8);
  }

  else
  {
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v10 = sub_1D33DE464();
    __swift_project_value_buffer(v10, qword_1EDEC1480);

    v19 = sub_1D33DE444();
    v11 = sub_1D33DEAF4();

    if (os_log_type_enabled(v19, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 136315138;
      v20 = *(v1 + 56);
      v21 = v13;
      v14 = sub_1D33DE804();
      v16 = sub_1D3328B48(v14, v15, &v21);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1D331A000, v19, v11, "Not invoking updateCallItems: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1D38B81C0](v13, -1, -1);
      MEMORY[0x1D38B81C0](v12, -1, -1);
    }

    else
    {
      v17 = v19;
    }
  }
}

uint64_t sub_1D334FC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_1D33DE974();
  *(v4 + 32) = sub_1D33DE964();
  v6 = sub_1D33DE914();

  return MEMORY[0x1EEE6DFA0](sub_1D334FC9C, v6, v5);
}

uint64_t sub_1D334FC9C()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = (v0 + 16);
    v4 = *(v0 + 24);
    v5 = v4[9];
    v6 = v4[7];
    if ((v6 & 4) != 0)
    {
      v4[7] = v6 & 0xFFFFFFFFFFFFFFFBLL;
      v4 = *(v0 + 24);
    }

    sub_1D334F96C();
    *v3 = v4[8];

    sub_1D3355B84((v0 + 16), v5);
    v8 = v7;

    v9 = swift_task_alloc();
    *(v9 + 16) = v4;
    *(v9 + 24) = v3;
    sub_1D33560B0(v8, sub_1D335606C, v9);
    swift_unknownObjectRelease();

    v10 = *v3;
  }

  v11 = *(v0 + 8);

  return v11();
}

void sub_1D334FDC0(uint64_t a1)
{
  v3 = *(v1 + 64);

  v5 = sub_1D3374000(v4, a1);

  if (v5)
  {
  }

  else
  {
    v6 = *(v1 + 64);
    *(v1 + 64) = a1;

    v7 = *(v1 + 56);
    if ((v7 & 4) == 0)
    {
      *(v1 + 56) = v7 | 4;
    }

    sub_1D334F96C();
  }
}

void sub_1D334FE5C(uint64_t a1)
{
  v2 = *(v1 + 72);
  *(v1 + 72) = a1;

  v4 = sub_1D3374140(v3, v2);

  if ((v4 & 1) == 0)
  {
    v5 = *(v1 + 56);
    if ((v5 & 4) == 0)
    {
      *(v1 + 56) = v5 | 4;
    }

    sub_1D334F96C();
  }
}

void sub_1D334FEE0(id *a1, char **a2, uint64_t a3)
{
  v84 = a3;
  v86 = sub_1D33DDE84();
  v85 = *(v86 - 8);
  v5 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v83 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v87 = &v81 - v9;
  v10 = sub_1D33DDD34();
  v89 = *(v10 - 8);
  v90 = v10;
  v11 = *(v89 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v81 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v88 = &v81 - v14;
  v15 = sub_1D33DDC44();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = [*a1 url];
  sub_1D33DDC24();

  v22 = sub_1D33DDC04();
  v23 = [objc_opt_self() conversationLinkForURL_];

  v25 = *(v16 + 8);
  v24 = v16 + 8;
  v25(v19, v15);
  v100 = v23;
  if (!v23)
  {
    return;
  }

  v82 = a2;
  v26 = *(*a2 + 2);

  v91 = v26;
  if (!v26)
  {
LABEL_11:

    v40 = [v20 documentDate];
    if (v40)
    {
      v41 = v81;
      v42 = v40;
      sub_1D33DDCF4();

      v43 = v89;
      v44 = *(v89 + 32);
      v45 = v87;
      v46 = v41;
      v47 = v90;
      v44(v87, v46, v90);
      (*(v43 + 56))(v45, 0, 1, v47);
      v48 = v88;
      v44(v88, v45, v47);
    }

    else
    {
      v50 = v89;
      v49 = v90;
      v51 = v87;
      (*(v89 + 56))(v87, 1, 1, v90);
      v52 = [v20 receivedAt];
      v48 = v88;
      sub_1D33DDCF4();

      if ((*(v50 + 48))(v51, 1, v49) != 1)
      {
        sub_1D331E880(v51, &qword_1EC760E10, &unk_1D33E1A90);
      }
    }

    v53 = sub_1D33DDCB4();
    v54 = v83;
    sub_1D33DDE64();
    v55 = sub_1D33DDDE4();
    (*(v85 + 8))(v54, v86);
    if ((v55 & 1) == 0 && (v53 & 1) == 0)
    {
      (*(v89 + 8))(v48, v90);

      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D33E1DE0;
    *(inited + 32) = v20;
    v57 = v20;
    sub_1D33A69F4(inited);
    v19 = v58;
    swift_setDeallocating();
    v59 = *(inited + 16);
    swift_arrayDestroy();
    v60 = qword_1EDEC0138;
    v28 = v100;
    if (v60 != -1)
    {
      goto LABEL_34;
    }

    goto LABEL_19;
  }

  v28 = 0;
  v29 = 48;
  v92 = v27;
  v93 = v20;
  while (1)
  {
    if (v28 >= *(v27 + 16))
    {
      __break(1u);
      goto LABEL_31;
    }

    *&v94 = v29;
    v31 = *(v27 + v29 - 16);
    v30 = *(v27 + v29 - 8);
    v32 = *(v27 + v29);

    a2 = v30;

    v33 = [a2 pseudonym];
    v34 = sub_1D33DE7B4();
    v36 = v35;

    v23 = [v100 pseudonym];
    v37 = sub_1D33DE7B4();
    v19 = v38;

    if (v34 == v37 && v36 == v19)
    {
      break;
    }

    v24 = sub_1D33DF1B4();

    if (v24)
    {
      goto LABEL_25;
    }

    ++v28;
    v20 = v93;
    v29 = v94 + 24;
    v27 = v92;
    if (v91 == v28)
    {
      goto LABEL_11;
    }
  }

LABEL_25:

  v69 = v93;
  a2 = v94;
  v23 = v28;
  v24 = v82;
  if (v28 >= *(*v82 + 2))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v70 = &(*v82)[v94];
  v71 = *(v70 - 1);
  v72 = *v70;
  v95 = *(v70 - 2);
  v96 = v71;
  v97 = v72;

  v73 = v71;

  sub_1D339AE00(v69, &v98);
  v74 = v96;

  v94 = v98;
  v28 = v99;
  v19 = *v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v24 = v19;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_27;
  }

LABEL_32:
  *v24 = sub_1D334EC40(v19);
LABEL_27:

  if (v23 < *(*v24 + 16))
  {
    v76 = a2 + *v24;
    v77 = *(v76 - 2);
    v78 = *(v76 - 1);
    v79 = *v76;
    *(v76 - 1) = v94;
    *v76 = v28;

    return;
  }

  __break(1u);
LABEL_34:
  swift_once();
LABEL_19:
  v61 = qword_1EDEC0110;
  v62 = v82;
  v63 = *v82;

  v64 = swift_isUniquelyReferenced_nonNull_native();
  *v62 = v63;
  if ((v64 & 1) == 0)
  {
    v63 = sub_1D3359B68(0, *(v63 + 2) + 1, 1, v63);
    *v82 = v63;
  }

  v66 = *(v63 + 2);
  v65 = *(v63 + 3);
  if (v66 >= v65 >> 1)
  {
    v80 = sub_1D3359B68((v65 > 1), v66 + 1, 1, v63);
    *v82 = v80;
  }

  (*(v89 + 8))(v88, v90);
  v67 = *v82;
  *(v67 + 2) = v66 + 1;
  v68 = &v67[24 * v66];
  *(v68 + 4) = v61;
  *(v68 + 5) = v28;
  *(v68 + 6) = v19;
}

uint64_t sub_1D3350718()
{
  sub_1D3323A28(v0 + 32);
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  v3 = *(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_1D3350770()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1D33507A8()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D33DDB74();
  v4 = v3;

  qword_1EC760E00 = v2;
  *algn_1EC760E08 = v4;
}

uint64_t static RecentsLinkController.deleteLink.getter()
{
  if (qword_1EC760928 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC760E00;

  return v0;
}

uint64_t static RecentsLinkController.shouldTargetUpcomingSectionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_1D33DDD34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D33DDE74();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D33DDE84();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v21 - v18;
  sub_1D33DDE64();
  (*(v7 + 104))(v10, *MEMORY[0x1E6969A48], v6);
  sub_1D33DDD24();
  sub_1D33DDE54();
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
  result = (*(v2 + 48))(v19, 1, v1);
  if (result != 1)
  {
    return (*(v2 + 32))(v22, v19, v1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D3350BBC()
{
  swift_getKeyPath();
  sub_1D33566BC(&unk_1EDEBF810, type metadata accessor for RecentsLinkController);
  sub_1D33DDED4();

  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 40);
  return result;
}

id sub_1D3350C84()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    type metadata accessor for RecentLinkCallItems();
    v3 = swift_allocObject();
    *(v3 + 16) = MEMORY[0x1E69E7CC0];
    v4 = [objc_allocWithZone(MEMORY[0x1E69D8C28]) initWithObject_];

    v5 = *(v0 + 56);
    *(v0 + 56) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

id sub_1D3350D20()
{
  v1 = sub_1D33DEB84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D33DEB24();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1D33DE6A4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = *(v0 + 64);
  if (v10)
  {
    v11 = *(v0 + 64);
  }

  else
  {
    v25 = v0;
    type metadata accessor for RecentsLinkControllerModel();
    v12 = swift_allocObject();
    v12[2] = 4;
    v13 = sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
    v23 = "v16@?0@NSError8";
    v24 = v13;
    sub_1D33DE674();
    v14 = MEMORY[0x1E69E7CC0];
    v26 = MEMORY[0x1E69E7CC0];
    v21 = sub_1D33566BC(&qword_1EDEBEEE0, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760F10, &qword_1D33E2E40);
    v22 = v1;
    sub_1D334CB54(&qword_1EDEBEF20, &unk_1EC760F10, &qword_1D33E2E40);
    sub_1D33DED64();
    (*(v2 + 104))(v5, *MEMORY[0x1E69E8090], v22);
    v12[3] = sub_1D33DEBD4();
    v12[5] = 0;
    swift_unknownObjectWeakInit();
    if (v14 >> 62 && sub_1D33DEE14())
    {
      sub_1D33A72D0(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v15 = MEMORY[0x1E69E7CD0];
    }

    v12[7] = 0;
    v12[8] = v14;
    v12[9] = v14;
    v12[5] = &off_1F4EE5208;
    v12[6] = v15;
    v16 = v25;
    swift_unknownObjectWeakAssign();
    v17 = [objc_allocWithZone(MEMORY[0x1E69D8C28]) initWithObject_];

    v18 = *(v16 + 64);
    *(v16 + 64) = v17;
    v11 = v17;

    v10 = 0;
  }

  v19 = v10;
  return v11;
}

id sub_1D3351078()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v1 = [objc_opt_self() serviceForURLs];
    v2 = *(v0 + 72);
    *(v0 + 72) = v1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v1;
}

uint64_t RecentsLinkController.__allocating_init(conversationManager:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  RecentsLinkController.init(conversationManager:)(a1);
  return v5;
}

uint64_t RecentsLinkController.init(conversationManager:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7619E0, &unk_1D33E1AA0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v1 + 16) = sub_1D33DE504();
  *(v1 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 48) = 0;
  *(v1 + 52) = 1;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v1 + 72) = 0;
  *(v1 + 80) = v6;
  sub_1D33DDF04();
  *(v1 + 24) = a1;
  *(v1 + 48) = 0;
  *(v1 + 52) = 1;
  return v1;
}

uint64_t sub_1D33511E4(uint64_t a1)
{
  v3 = *(v1 + 80);

  v5 = sub_1D332A6B4(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 80);
    *(v1 + 80) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D33566BC(&unk_1EDEBF810, type metadata accessor for RecentsLinkController);
    sub_1D33DDEC4();
  }
}

uint64_t RecentsLinkController.deinit()
{
  if ((*(v0 + 52) & 1) == 0)
  {
    notify_cancel(*(v0 + 48));
    *(v0 + 48) = 0;
    *(v0 + 52) = 1;
  }

  v1 = *(v0 + 16);

  sub_1D3323A28(v0 + 32);
  v2 = *(v0 + 72);
  swift_unknownObjectRelease();
  v3 = *(v0 + 80);

  v4 = OBJC_IVAR____TtC16CallsAppServices21RecentsLinkController___observationRegistrar;
  v5 = sub_1D33DDF14();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t RecentsLinkController.__deallocating_deinit()
{
  RecentsLinkController.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1D3351444()
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(v0 + 52) == 1)
  {
    v1 = v0;
    sub_1D3352F40();
    sub_1D33537C8();
    out_token = 0;
    v2 = *MEMORY[0x1E6999328];
    sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
    v3 = sub_1D33DEB94();
    v4 = swift_allocObject();
    swift_weakInit();
    v7[4] = sub_1D3353F2C;
    v7[5] = v4;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1D3351608;
    v7[3] = &block_descriptor;
    v5 = _Block_copy(v7);

    LODWORD(v2) = notify_register_dispatch(v2, &out_token, v3, v5);
    _Block_release(v5);

    if (!v2)
    {
      if (out_token)
      {
        *(v1 + 48) = out_token;
        *(v1 + 52) = 0;
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D33515B0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D33537C8();
  }

  return result;
}

uint64_t sub_1D3351608(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1D335165C()
{
  if ((*(v0 + 52) & 1) == 0)
  {
    result = notify_cancel(*(v0 + 48));
    *(v0 + 48) = 0;
    *(v0 + 52) = 1;
  }

  return result;
}

uint64_t sub_1D335168C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D33566BC(&unk_1EDEBF810, type metadata accessor for RecentsLinkController);
  sub_1D33DDED4();

  *a2 = *(v3 + 80);
}

uint64_t sub_1D3351738(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D33511E4(v4);
}

uint64_t sub_1D3351764()
{
  swift_getKeyPath();
  sub_1D33566BC(&unk_1EDEBF810, type metadata accessor for RecentsLinkController);
  sub_1D33DDED4();

  v1 = *(v0 + 80);
}

uint64_t sub_1D3351808()
{
  v7 = MEMORY[0x1E69E7CC0];
  v0 = sub_1D3350C84();
  v1 = swift_allocObject();
  *(v1 + 16) = &v7;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1D3356678;
  *(v2 + 24) = v1;
  aBlock[4] = sub_1D3356794;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D3356790;
  aBlock[3] = &block_descriptor_184;
  v3 = _Block_copy(aBlock);

  [v0 performWhileLocked_];

  _Block_release(v3);
  LOBYTE(v0) = swift_isEscapingClosureAtFileLocation();

  if (v0)
  {
    __break(1u);
  }

  else
  {
    v5 = v7;

    return v5;
  }

  return result;
}

id sub_1D3351978()
{
  v13 = MEMORY[0x1E69E7CC0];
  v0 = sub_1D3350D20();
  v1 = swift_allocObject();
  *(v1 + 16) = &v13;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1D3353F80;
  *(v2 + 24) = v1;
  aBlock[4] = sub_1D3356794;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D3356790;
  aBlock[3] = &block_descriptor_9;
  v3 = _Block_copy(aBlock);

  [v0 performWhileLocked_];

  _Block_release(v3);
  LOBYTE(v0) = swift_isEscapingClosureAtFileLocation();

  if ((v0 & 1) == 0)
  {
    v5 = v13;
    v6 = *(v13 + 16);

    v7 = -v6;
    v8 = -1;
    v9 = 40;
    while (1)
    {
      v10 = v7 + v8;
      if (v7 + v8 == -1)
      {
LABEL_6:

        return (v10 != -1);
      }

      if (++v8 >= *(v5 + 16))
      {
        break;
      }

      v11 = v9 + 24;
      result = [*(v5 + v9) isLocallyCreated];
      v9 = v11;
      if (result)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D3351B60(uint64_t a1)
{
  v1 = *(a1 + 56);
  if ((v1 & 1) == 0)
  {
    *(a1 + 56) = v1 | 1;
    sub_1D334F96C();
  }
}

void sub_1D3351B98(uint64_t a1)
{
  v1 = *(a1 + 56);
  if ((v1 & 2) == 0)
  {
    *(a1 + 56) = v1 | 2;
    sub_1D334F96C();
  }
}

uint64_t sub_1D3351BF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1D3351C4C()
{
  v0 = sub_1D3351808();
  sub_1D3351C88(v0);
}

uint64_t sub_1D3351C88(uint64_t a1)
{
  v2 = type metadata accessor for RecentsItem(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v4);
  v10 = &v34 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    sub_1D332A828(v12 + v13 * (v11 - 1), &v34 - v9);
    v14 = &qword_1EDEBF000;
    do
    {
      sub_1D332A828(v12, v6);
      v25 = RecentsItem.dataSourceId.getter();
      v27 = v26;
      if (v25 == RecentsItem.dataSourceId.getter() && v27 == v28)
      {
        v29 = 1;
      }

      else
      {
        v29 = sub_1D33DF1B4();
      }

      if (v14[430] != -1)
      {
        swift_once();
      }

      v30 = sub_1D33DE464();
      __swift_project_value_buffer(v30, qword_1EDEC1480);
      v31 = sub_1D33DE444();
      v32 = sub_1D33DEAF4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1D331A000, v31, v32, "Deleting link", v33, 2u);
        MEMORY[0x1D38B81C0](v33, -1, -1);
      }

      if (v6[32] == 7)
      {
        v15 = *(v6 + 2);
        v16 = v14;
        v17 = v29;
        v18 = v10;
        v19 = v13;
        v20 = *v6;
        v21 = *(v6 + 1);
        v35 = *(v6 + 3);
        v36[0] = v20;
        v36[1] = v21;
        v36[2] = v15;

        v22 = v21;

        sub_1D3351FDC(v36, v17 & 1);
        sub_1D332B2E8(v6);
        v23 = v20;
        v13 = v19;
        v10 = v18;
        v24 = v21;
        v14 = v16;
        sub_1D332B1DC(v23, v24, v15, v35, 7u);
      }

      else
      {
        sub_1D332B2E8(v6);
      }

      v12 += v13;
      --v11;
    }

    while (v11);
    return sub_1D332B2E8(v10);
  }

  return result;
}

void sub_1D3351F50(uint64_t a1, char a2)
{
  if (*(a1 + 32) == 7)
  {
    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = *(a1 + 8);
    v8[0] = *a1;
    v6 = v8[0];
    v8[1] = v5;
    v8[2] = v4;

    v7 = v5;

    sub_1D3351FDC(v8, a2 & 1);
    sub_1D332B1DC(v6, v5, v4, v3, 7u);
  }
}

uint64_t sub_1D3351FDC(uint64_t *a1, char a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = sub_1D3350D20();
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v6;
  *(v9 + 32) = v7;
  *(v9 + 40) = v3;
  *(v9 + 48) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D3356668;
  *(v10 + 24) = v9;
  v26 = sub_1D3356794;
  v27 = v10;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1D3356790;
  v25 = &block_descriptor_166;
  v11 = _Block_copy(&v22);

  v12 = v6;

  [v8 performWhileLocked_];

  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v11) = a2 & 1;
    if (qword_1EDEBFD70 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v13 = sub_1D33DE464();
  __swift_project_value_buffer(v13, qword_1EDEC1480);
  v14 = sub_1D33DE444();
  v15 = sub_1D33DEAF4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = a2 & 1;
    _os_log_impl(&dword_1D331A000, v14, v15, "Deleting link, should refresh %{BOOL}d", v16, 8u);
    MEMORY[0x1D38B81C0](v16, -1, -1);
  }

  v17 = *(v3 + 24);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v11;
  *(v19 + 24) = v18;
  v26 = sub_1D3356744;
  v27 = v19;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1D33529D4;
  v25 = &block_descriptor_174;
  v20 = _Block_copy(&v22);

  [v17 invalidateLink:v12 completionHandler:v20];
  _Block_release(v20);
}

uint64_t sub_1D3352314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v43 = a6;
  v42 = a5;
  v41 = sub_1D33DDC44();
  v10 = *(v41 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  v13 = *(a1 + 64);

  v14 = sub_1D3358198(a2, a3, a4, v13);
  LOBYTE(a2) = v15;

  if ((a2 & 1) == 0)
  {
    v46 = *(v44 + 64);

    sub_1D3357D40(v14, &v47);
    v16 = v48;

    sub_1D334FDC0(v46);
  }

  if ((a4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &qword_1EC761170, 0x1E69992A8);
    sub_1D33565AC(&unk_1EC760F00, &qword_1EC761170, 0x1E69992A8);
    result = sub_1D33DEA94();
    a4 = v47;
    v18 = v48;
    v19 = v49;
    v20 = v50;
    v21 = v51;
  }

  else
  {
    v22 = -1 << *(a4 + 32);
    v18 = a4 + 56;
    v19 = ~v22;
    v23 = -v22;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v21 = v24 & *(a4 + 56);

    v20 = 0;
  }

  v39[1] = v19;
  v25 = (v19 + 64) >> 6;
  v26 = (v10 + 8);
  while (a4 < 0)
  {
    v34 = sub_1D33DEE54();
    if (!v34)
    {
      return sub_1D331FEEC();
    }

    v45 = v34;
    sub_1D331DA18(0, &qword_1EC761170, 0x1E69992A8);
    swift_dynamicCast();
    v33 = v46;
    v31 = v20;
    v32 = v21;
    if (!v46)
    {
      return sub_1D331FEEC();
    }

LABEL_20:
    v35 = *(v44 + 72);

    v36 = sub_1D3358278(v33, v35);
    v38 = v37;

    if ((v38 & 1) == 0)
    {
      v46 = *(v44 + 72);

      sub_1D334FE5C(v46);
    }

    v27 = [v33 url];
    v28 = v40;
    sub_1D33DDC24();

    sub_1D3354884(v28, v43 & 1);
    result = (*v26)(v28, v41);
    v20 = v31;
    v21 = v32;
  }

  v29 = v20;
  v30 = v21;
  v31 = v20;
  if (v21)
  {
LABEL_16:
    v32 = (v30 - 1) & v30;
    v33 = *(*(a4 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v30)))));
    if (!v33)
    {
      return sub_1D331FEEC();
    }

    goto LABEL_20;
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v25)
    {
      return sub_1D331FEEC();
    }

    v30 = *(v18 + 8 * v31);
    ++v29;
    if (v30)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_1D33526CC(uint64_t a1, char a2)
{
  v5 = *(v2 + 24);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = v6;
  v9[4] = sub_1D335513C;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D33529D4;
  v9[3] = &block_descriptor_16;
  v8 = _Block_copy(v9);

  [v5 invalidateLink:a1 completionHandler:v8];
  _Block_release(v8);
}

void sub_1D33527DC(uint64_t a1, void *a2, char a3)
{
  if (!a2)
  {
LABEL_6:
    if ((a3 & 1) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

  swift_getErrorValue();
  v5 = a2;
  v6 = sub_1D33DF224();
  v8 = v7;
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v9 = sub_1D33DE464();
  __swift_project_value_buffer(v9, qword_1EDEC1480);

  v10 = sub_1D33DE444();
  v11 = sub_1D33DEAD4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315138;
    v14 = sub_1D3328B48(v6, v8, &v15);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_1D331A000, v10, v11, "delete conversation link failed with an error %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1D38B81C0](v13, -1, -1);
    MEMORY[0x1D38B81C0](v12, -1, -1);

    goto LABEL_6;
  }

  if ((a3 & 1) == 0)
  {
    return;
  }

LABEL_9:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D3352F40();
  }
}

void sub_1D33529D4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_1D3352A4C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1D3352AB8(uint64_t a1)
{
  v2 = sub_1D3350D20();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1D3355148;
  *(v4 + 24) = v3;
  v7[4] = sub_1D3356794;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D3356790;
  v7[3] = &block_descriptor_26;
  v5 = _Block_copy(v7);

  [v2 performWhileLocked_];

  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_1D3352C1C(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 56);
  if ((v2 & 1) == 0)
  {
    v4 = a1;
    *(a1 + 56) = v2 | 1;
    sub_1D334F96C();
    if (a2 >> 62)
    {
      v5 = sub_1D33DEE14();
    }

    else
    {
      v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = MEMORY[0x1E69E7CC0];
    if (v5)
    {
      v31 = MEMORY[0x1E69E7CC0];
      sub_1D334B44C(0, v5 & ~(v5 >> 63), 0);
      if (v5 < 0)
      {
        __break(1u);
        return;
      }

      v7 = 0;
      v8 = v31;
      v28 = v4;
      v29 = v6 >> 62;
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1D38B75D0](v7, a2);
        }

        else
        {
          v9 = *(a2 + 8 * v7 + 32);
        }

        v10 = v9;
        if (v29 && (v11 = MEMORY[0x1E69E7CC0], sub_1D33DEE14()))
        {
          sub_1D33A69F4(v11);
          v13 = v12;
        }

        else
        {
          v13 = MEMORY[0x1E69E7CD0];
        }

        v14 = v5;
        if (qword_1EDEC0138 != -1)
        {
          swift_once();
        }

        v15 = qword_1EDEC0110;
        v31 = v8;
        v17 = *(v8 + 16);
        v16 = *(v8 + 24);

        if (v17 >= v16 >> 1)
        {
          sub_1D334B44C((v16 > 1), v17 + 1, 1);
          v8 = v31;
        }

        ++v7;
        *(v8 + 16) = v17 + 1;
        v18 = (v8 + 24 * v17);
        v18[4] = v15;
        v18[5] = v10;
        v18[6] = v13;
        v5 = v14;
      }

      while (v14 != v7);
      v4 = v28;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v19 = sub_1D33DE464();
    __swift_project_value_buffer(v19, qword_1EDEC1480);

    v20 = sub_1D33DE444();
    v21 = sub_1D33DEAF4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 136315138;
      v30 = *(v8 + 16);
      v31 = v23;
      v24 = sub_1D33DE804();
      v26 = sub_1D3328B48(v24, v25, &v31);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1D331A000, v20, v21, "Updated links - count: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x1D38B81C0](v23, -1, -1);
      MEMORY[0x1D38B81C0](v22, -1, -1);
    }

    sub_1D334FDC0(v8);
    v27 = *(v4 + 56);
    if (v27)
    {
      *(v4 + 56) = v27 & 0xFFFFFFFFFFFFFFFELL;
    }

    sub_1D334F96C();
  }
}

void sub_1D3352F40()
{
  v1 = v0;
  v2 = *(v0 + 16);
  sub_1D33DE4F4();
  if (v8 != 1)
  {
    sub_1D33DE4E4();
    v3 = sub_1D3350D20();
    v12 = sub_1D3351B60;
    v13 = 0;
    v8 = MEMORY[0x1E69E9820];
    v9 = 1107296256;
    v10 = sub_1D3356790;
    v11 = &block_descriptor_29;
    v4 = _Block_copy(&v8);

    [v3 performWhileLocked_];

    _Block_release(v4);
    if (swift_isEscapingClosureAtFileLocation())
    {
      __break(1u);
    }

    else
    {
      v5 = *(v1 + 24);
      v6 = swift_allocObject();
      swift_weakInit();
      v12 = sub_1D3355150;
      v13 = v6;
      v8 = MEMORY[0x1E69E9820];
      v9 = 1107296256;
      v10 = sub_1D33536F8;
      v11 = &block_descriptor_33;
      v7 = _Block_copy(&v8);

      [v5 getActiveLinksWithCreatedOnly:0 completionHandler:v7];
      _Block_release(v7);
    }
  }
}

uint64_t sub_1D335310C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = sub_1D3350D20();

    v5 = swift_allocObject();
    *(v5 + 16) = a2;
    *(v5 + 24) = a1;
    v6 = swift_allocObject();
    v7 = sub_1D3356654;
    *(v6 + 16) = sub_1D3356654;
    *(v6 + 24) = v5;
    aBlock[4] = sub_1D3356794;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D3356790;
    aBlock[3] = &block_descriptor_156;
    v8 = _Block_copy(aBlock);
    v9 = a2;

    [v4 performWhileLocked_];

    _Block_release(v8);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = 0;
LABEL_5:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D3354704();
  }

  return sub_1D331EEDC(v7);
}

void sub_1D3353300(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v5 = sub_1D33DE464();
    __swift_project_value_buffer(v5, qword_1EDEC1480);
    v6 = a2;
    v7 = sub_1D33DE444();
    v8 = sub_1D33DEAD4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v37 = v10;
      *v9 = 136315138;
      v11 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
      v12 = sub_1D33DE804();
      v14 = sub_1D3328B48(v12, v13, &v37);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_1D331A000, v7, v8, "Failed to get links: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1D38B81C0](v10, -1, -1);
      v15 = v9;
LABEL_6:
      MEMORY[0x1D38B81C0](v15, -1, -1);
      goto LABEL_7;
    }

    goto LABEL_7;
  }

  if (*(a1 + 48))
  {
    if (!a3)
    {
      goto LABEL_15;
    }

    v18 = *(a1 + 48);

    sub_1D3355648(v19, a3);
    v21 = v20;

    if ((v21 & 1) == 0)
    {
      v22 = *(a1 + 48);
      goto LABEL_15;
    }
  }

  else if (a3)
  {
LABEL_15:
    *(a1 + 48) = a3;

    if (a3)
    {
      sub_1D334F360(a3);
      v24 = v23;
    }

    else
    {
      v24 = MEMORY[0x1E69E7CC0];
    }

    if (qword_1EDEBFD70 != -1)
    {
      swift_once();
    }

    v28 = sub_1D33DE464();
    __swift_project_value_buffer(v28, qword_1EDEC1480);

    v29 = sub_1D33DE444();
    v30 = sub_1D33DEAF4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 136315138;
      v36 = *(v24 + 16);
      v37 = v32;
      v33 = sub_1D33DE804();
      v35 = sub_1D3328B48(v33, v34, &v37);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_1D331A000, v29, v30, "updatedLinks - count: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x1D38B81C0](v32, -1, -1);
      MEMORY[0x1D38B81C0](v31, -1, -1);
    }

    sub_1D334FDC0(v24);
    v16 = *(a1 + 56);
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v25 = sub_1D33DE464();
  __swift_project_value_buffer(v25, qword_1EDEC1480);
  v7 = sub_1D33DE444();
  v26 = sub_1D33DEAF4();
  if (os_log_type_enabled(v7, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1D331A000, v7, v26, "model links unchanged - skipping update", v27, 2u);
    v15 = v27;
    goto LABEL_6;
  }

LABEL_7:

  v16 = *(a1 + 56);
  if (v16)
  {
LABEL_8:
    *(a1 + 56) = v16 & 0xFFFFFFFFFFFFFFFELL;
  }

LABEL_9:
  sub_1D334F96C();
}

uint64_t sub_1D33536F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1D331DA18(0, &qword_1EDEBEEC0, 0x1E69D8B70);
    sub_1D33565AC(&qword_1EDEBEEB8, &qword_1EDEBEEC0, 0x1E69D8B70);
    v4 = sub_1D33DEA54();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_1D33537C8()
{
  v1 = v0;
  v2 = sub_1D33DDE74();
  v61 = *(v2 - 8);
  v3 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D33DDE84();
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v54 - v12;
  v62 = sub_1D33DDD34();
  v14 = *(v62 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v62);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v54 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v63 = &v54 - v22;
  v58 = objc_opt_self();
  v23 = [v58 baseURLStrings];
  v24 = sub_1D33DE8B4();

  v25 = *(v24 + 16);

  if (!v25)
  {
    sub_1D331DA18(0, &qword_1EC760E18, 0x1E69E9BF8);
    v63 = sub_1D33DECD4();
    sub_1D33DEAF4();
    sub_1D33DE384();
    v53 = v63;

    return;
  }

  v57 = v2;
  v26 = *(v1 + 16);
  LOBYTE(aBlock) = 1;
  sub_1D33DE4E4();
  v27 = sub_1D3350D20();
  v68 = sub_1D3351B98;
  v69 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v65 = 1107296256;
  v66 = sub_1D3356790;
  v67 = &block_descriptor_36;
  v28 = _Block_copy(&aBlock);

  [v27 performWhileLocked_];

  _Block_release(v28);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
    goto LABEL_13;
  }

  v55 = sub_1D3351078();
  sub_1D33DDD24();
  if (qword_1EDEBFD70 != -1)
  {
LABEL_13:
    swift_once();
  }

  v56 = v1;
  v29 = sub_1D33DE464();
  __swift_project_value_buffer(v29, qword_1EDEC1480);
  v30 = sub_1D33DE444();
  v31 = sub_1D33DEAF4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1D331A000, v30, v31, "Refreshing suggestionsURLs", v32, 2u);
    MEMORY[0x1D38B81C0](v32, -1, -1);
  }

  sub_1D33DDE64();
  v33 = v61;
  v34 = v57;
  (*(v61 + 104))(v5, *MEMORY[0x1E6969A48], v57);
  sub_1D33DDD24();
  sub_1D33DDE54();
  v35 = v18;
  v36 = v62;
  v37 = v13;
  v38 = *(v14 + 8);
  v38(v35, v62);
  v39 = v5;
  v40 = v36;
  (*(v33 + 8))(v39, v34);
  (*(v59 + 8))(v9, v60);
  if ((*(v14 + 48))(v37, 1, v36) != 1)
  {
    (*(v14 + 32))(v21, v37, v36);
    v41 = sub_1D33DDC94();
    v38(v21, v36);
    v42 = v63;
    v43 = sub_1D33DDC94();
    v44 = [v58 baseURLStrings];
    v45 = sub_1D33DE8B4();

    if (v45[2])
    {
      v46 = v45[4];
      v47 = v45[5];

      v48 = sub_1D33DE784();

      v49 = swift_allocObject();
      swift_weakInit();
      v50 = swift_allocObject();
      v51 = v55;
      *(v50 + 16) = v49;
      *(v50 + 24) = v51;
      v68 = sub_1D3355158;
      v69 = v50;
      aBlock = MEMORY[0x1E69E9820];
      v65 = 1107296256;
      v66 = sub_1D3354660;
      v67 = &block_descriptor_43;
      v52 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v51 urlsFoundBetweenStartDate:v41 endDate:v43 excludingBundleIdentifiers:0 containingSubstring:v48 flagFilter:4 limit:10 withCompletion:v52];
      _Block_release(v52);
      swift_unknownObjectRelease();

      v38(v42, v40);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t type metadata accessor for RecentsLinkController()
{
  result = qword_1EDEBF7F0;
  if (!qword_1EDEBF7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D3353F80(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  *v2 = *(a1 + 64);
}

uint64_t sub_1D3353FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a1)
    {
      v6 = a1;
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1D3350D20();
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = a4;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1D3355AC8;
    *(v9 + 24) = v8;
    aBlock[4] = sub_1D3356794;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D3356790;
    aBlock[3] = &block_descriptor_120;
    v10 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v7 performWhileLocked_];

    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      return result;
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1D3354704();
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_1D3354704();
  }
}

void sub_1D33541E0(uint64_t a1, unint64_t a2, void *a3)
{
  v36 = a3;
  v35 = sub_1D33DDC44();
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v9 = *(a1 + 72);

  v11 = sub_1D3374140(v10, a2);

  if (v11)
  {
    goto LABEL_15;
  }

  sub_1D334FE5C(v12);
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v13 = sub_1D33DE464();
  __swift_project_value_buffer(v13, qword_1EDEC1480);

  v14 = sub_1D33DE444();
  v15 = sub_1D33DEAF4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v37 = a2;
    aBlock[0] = v17;
    *v16 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760ED0, &unk_1D33E2248);
    v18 = sub_1D33DE804();
    v20 = sub_1D3328B48(v18, v19, aBlock);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1D331A000, v14, v15, "Updated suggestionsURLs %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1D38B81C0](v17, -1, -1);
    MEMORY[0x1D38B81C0](v16, -1, -1);
  }

  if (a2 >> 62)
  {
    v21 = sub_1D33DEE14();
    if (!v21)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_15;
    }
  }

  if (v21 < 1)
  {
    __break(1u);
    return;
  }

  v22 = 0;
  v23 = (v5 + 8);
  do
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x1D38B75D0](v22, a2);
    }

    else
    {
      v24 = *(a2 + 8 * v22 + 32);
    }

    v25 = v24;
    ++v22;
    v26 = [v24 url];
    sub_1D33DDC24();

    sub_1D33DDBF4();
    (*v23)(v8, v35);
    v27 = sub_1D33DE784();

    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D3352A4C;
    aBlock[3] = &block_descriptor_123;
    v28 = _Block_copy(aBlock);
    [v36 registerURLFeedback:2 absoluteURL:v27 withCompletion:v28];
    _Block_release(v28);
  }

  while (v21 != v22);
LABEL_15:
  v29 = *(v34 + 56);
  if ((v29 & 2) != 0)
  {
    *(v34 + 56) = v29 & 0xFFFFFFFFFFFFFFFDLL;
  }

  sub_1D334F96C();
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v30 = sub_1D33DE464();
  __swift_project_value_buffer(v30, qword_1EDEC1480);
  v31 = sub_1D33DE444();
  v32 = sub_1D33DEAF4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1D331A000, v31, v32, "Refreshed suggestionsURLs", v33, 2u);
    MEMORY[0x1D38B81C0](v33, -1, -1);
  }
}

uint64_t sub_1D3354660(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1D331DA18(0, &qword_1EC761170, 0x1E69992A8);
    v4 = sub_1D33DE8B4();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_1D3354704()
{
  v8 = 0;
  v1 = sub_1D3350D20();
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1D3355A74;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1D3356794;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D3356790;
  aBlock[3] = &block_descriptor_106;
  v4 = _Block_copy(aBlock);

  [v1 performWhileLocked_];

  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    if (v8 == 1)
    {
      v6 = *(v0 + 16);
      LOBYTE(aBlock[0]) = 2;
      sub_1D33DE4E4();
    }
  }

  return result;
}

void sub_1D3354884(uint64_t a1, int a2)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v38 - v8;
  v10 = sub_1D33DDC44();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v42 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v38 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v38 - v18;
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v20 = sub_1D33DE464();
  __swift_project_value_buffer(v20, qword_1EDEC1480);
  v21 = *(v11 + 16);
  v43 = a1;
  v21(v19, a1, v10);
  v22 = sub_1D33DE444();
  v23 = sub_1D33DEAF4();
  if (os_log_type_enabled(v22, v23))
  {
    v41 = v23;
    v24 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    v40 = v24;
    *v24 = 136315138;
    v21(v9, v19, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    sub_1D3355A04(v9, v7);
    if ((*(v11 + 48))(v7, 1, v10) == 1)
    {
      sub_1D331E880(v7, &unk_1EC760EA0, &qword_1D33E2210);
      sub_1D331E880(v9, &unk_1EC760EA0, &qword_1D33E2210);
      (*(v11 + 8))(v19, v10);
      v25 = 0xE300000000000000;
      v26 = 7104878;
    }

    else
    {
      (*(v11 + 32))(v17, v7, v10);
      v21(v42, v17, v10);
      v27 = sub_1D33DE804();
      v25 = v28;
      v29 = *(v11 + 8);
      v29(v17, v10);
      sub_1D331E880(v9, &unk_1EC760EA0, &qword_1D33E2210);
      v29(v19, v10);
      v26 = v27;
    }

    v30 = sub_1D3328B48(v26, v25, aBlock);

    v31 = v40;
    *(v40 + 1) = v30;
    _os_log_impl(&dword_1D331A000, v22, v41, "Rejecting suggestedURL %s", v31, 0xCu);
    v32 = v39;
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x1D38B81C0](v32, -1, -1);
    MEMORY[0x1D38B81C0](v31, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v19, v10);
  }

  v33 = sub_1D3351078();
  sub_1D33DDBF4();
  v34 = sub_1D33DE784();

  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = v44 & 1;
  *(v36 + 24) = v35;
  aBlock[4] = sub_1D33559F8;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D3352A4C;
  aBlock[3] = &block_descriptor_96;
  v37 = _Block_copy(aBlock);

  [v33 registerURLFeedback:0 absoluteURL:v34 withCompletion:v37];
  _Block_release(v37);
  swift_unknownObjectRelease();
}

void sub_1D3354DCC(uint64_t a1, char a2)
{
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v3 = sub_1D33DE464();
  __swift_project_value_buffer(v3, qword_1EDEC1480);
  v4 = sub_1D33DE444();
  v5 = sub_1D33DEAF4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    v8 = sub_1D33DE804();
    v10 = sub_1D3328B48(v8, v9, &v11);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1D331A000, v4, v5, "Rejected suggestedURL refreshing: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1D38B81C0](v7, -1, -1);
    MEMORY[0x1D38B81C0](v6, -1, -1);
  }

  if (a2)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1D33537C8();
    }
  }
}

uint64_t sub_1D3354F88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760FD0, &qword_1D33E2240);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - v4;
  v8[1] = *(*v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7619E0, &unk_1D33E1AA0);
  sub_1D334CB54(&unk_1EC760EB0, &unk_1EC7619E0, &unk_1D33E1AA0);
  sub_1D334CB00();
  sub_1D33DE624();
  sub_1D334CB54(&unk_1EC760EC0, &unk_1EC760FD0, &qword_1D33E2240);
  v6 = sub_1D33DE5A4();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_1D33551D8()
{
  result = sub_1D33DDF14();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D33554EC()
{
  result = qword_1EC760E80;
  if (!qword_1EC760E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC760E80);
  }

  return result;
}

unint64_t sub_1D3355544()
{
  result = qword_1EC760E88;
  if (!qword_1EC760E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC760E88);
  }

  return result;
}

unint64_t sub_1D335559C()
{
  result = qword_1EC760E90;
  if (!qword_1EC760E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC760E90);
  }

  return result;
}

unint64_t sub_1D33555F4()
{
  result = qword_1EC760E98;
  if (!qword_1EC760E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC760E98);
  }

  return result;
}

void sub_1D3355648(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x1EEE6A200](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_1D33558C0(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_1D331DA18(0, &qword_1EDEBEEC0, 0x1E69D8B70);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v28 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v29 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(a2 + 40);
      v21 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v22 = sub_1D33DEC64();
      v23 = -1 << *(a2 + 32);
      v24 = v22 & ~v23;
      if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        break;
      }

      v25 = ~v23;
      while (1)
      {
        v26 = *(*(a2 + 48) + 8 * v24);
        v27 = sub_1D33DEC74();

        if (v27)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v28;
      v12 = v29;
      v16 = a1;
      if (!v29)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

void sub_1D33558C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_1D33DEE14())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_1D33DEE64();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D33559C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1D3355A04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D3355A8C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 80);
  *(v1 + 80) = *(v0 + 24);
}

uint64_t sub_1D3355AD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334CF9C;

  return sub_1D334FC04(a1, v4, v5, v6);
}

void sub_1D3355B84(char **a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EE0, &qword_1D33E4CE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v43 - v6;
  v53 = type metadata accessor for RecentsItem(0);
  v49 = *(v53 - 8);
  v8 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D33DDD34();
  v46 = *(v10 - 8);
  v47 = v10;
  v11 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(*a1 + 2);
  v15 = MEMORY[0x1E69E7CC0];
  v50 = v7;
  if (v14)
  {
    v44 = a2;
    v45 = a1;
    v54[0] = MEMORY[0x1E69E7CC0];
    sub_1D334B44C(0, v14, 0);
    v16 = v54[0];
    v43 = v13;
    v17 = (v13 + 48);
    v51 = v15 >> 62;
    do
    {
      v18 = *(v17 - 2);
      v19 = *(v17 - 1);
      v20 = *v17;
      if (v51 && sub_1D33DEE14())
      {

        v21 = v19;

        v22 = v21;
        sub_1D33A69F4(v15);
        v24 = v23;
      }

      else
      {

        v25 = v19;

        v26 = v25;
        v24 = MEMORY[0x1E69E7CD0];
      }

      if (qword_1EDEC0138 != -1)
      {
        swift_once();
      }

      v27 = qword_1EDEC0110;

      v54[0] = v16;
      v29 = *(v16 + 2);
      v28 = *(v16 + 3);
      if (v29 >= v28 >> 1)
      {
        sub_1D334B44C((v28 > 1), v29 + 1, 1);
        v16 = v54[0];
      }

      *(v16 + 2) = v29 + 1;
      v30 = &v16[24 * v29];
      *(v30 + 4) = v27;
      *(v30 + 5) = v19;
      *(v30 + 6) = v24;
      v17 += 3;
      --v14;
    }

    while (v14);

    v7 = v50;
    a2 = v44;
    a1 = v45;
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v16;
  v31 = v48;
  v32 = sub_1D33DDD24();
  MEMORY[0x1EEE9AC00](v32);
  *(&v43 - 2) = a1;
  *(&v43 - 1) = v31;
  sub_1D334F728(sub_1D3356590, (&v43 - 4), a2);
  v54[3] = v15;
  v33 = *a1;
  v34 = *(*a1 + 2);
  if (v34)
  {
    v35 = 0;
    v36 = (v49 + 48);
    v37 = (v33 + 48);
    v15 = MEMORY[0x1E69E7CC0];
    while (v35 < *(v33 + 2))
    {
      v38 = *(v37 - 1);
      v39 = *v37;
      v54[0] = *(v37 - 2);
      v54[1] = v38;
      v54[2] = v39;

      v40 = v38;

      RecentsItem.init(link:)(v54, v7);
      if ((*v36)(v7, 1, v53) == 1)
      {
        sub_1D331E880(v7, &unk_1EC760EE0, &qword_1D33E4CE0);
      }

      else
      {
        sub_1D33302BC(v7, v52);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1D33226AC(0, *(v15 + 16) + 1, 1, v15);
        }

        v42 = *(v15 + 16);
        v41 = *(v15 + 24);
        if (v42 >= v41 >> 1)
        {
          v15 = sub_1D33226AC(v41 > 1, v42 + 1, 1, v15);
        }

        *(v15 + 16) = v42 + 1;
        sub_1D33302BC(v52, v15 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v42);
        v7 = v50;
      }

      ++v35;
      v37 += 3;
      if (v34 == v35)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_25:
    sub_1D3333DE0(v15);
    (*(v46 + 8))(v48, v47);
  }
}

uint64_t sub_1D335606C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 64);
  *(v1 + 64) = **(v0 + 24);
}

uint64_t sub_1D33560B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D3350C84();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D33564FC;
  *(v8 + 24) = v7;
  v32 = sub_1D3356540;
  v33 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1D3356790;
  v31 = &block_descriptor_136;
  v9 = _Block_copy(&aBlock);

  [v6 performWhileLocked_];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v10 = sub_1D3350D20();
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1D3356568;
    *(v12 + 24) = v11;
    v32 = sub_1D3356794;
    v33 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = sub_1D3356790;
    v31 = &block_descriptor_146;
    v13 = _Block_copy(&aBlock);

    [v10 performWhileLocked_];

    _Block_release(v13);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      if (qword_1EDEBFD70 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  swift_once();
LABEL_4:
  v14 = sub_1D33DE464();
  __swift_project_value_buffer(v14, qword_1EDEC1480);

  v15 = sub_1D33DE444();
  v16 = sub_1D33DEAF4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 136315138;
    v27 = *(a1 + 16);
    aBlock = v18;
    v19 = sub_1D33DE804();
    v21 = sub_1D3328B48(v19, v20, &aBlock);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_1D331A000, v15, v16, "Informing delegate of updated callItems - count %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1D38B81C0](v18, -1, -1);
    MEMORY[0x1D38B81C0](v17, -1, -1);
  }

  v22 = sub_1D33DE444();
  v23 = sub_1D33DEAF4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1D331A000, v22, v23, "Updating: Recents Links", v24, 2u);
    MEMORY[0x1D38B81C0](v24, -1, -1);
  }

  sub_1D33511E4(v25);
}

uint64_t sub_1D33564FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = *(v1 + 16);
}

uint64_t sub_1D3356540()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1D3356568()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1D33565AC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D331DA18(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_39Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x1EEE6BDD0](v2, 32, 7);
}

uint64_t sub_1D335665C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1D3356678(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  *v2 = *(a1 + 16);
}

uint64_t sub_1D33566BC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D33567C0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D3357A88(&unk_1EDEBF560, type metadata accessor for ConversationDataSource);
  sub_1D33DDED4();

  v4 = *(v2 + *a2);
}

uint64_t sub_1D3356864@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1D3357A88(&unk_1EDEBF560, type metadata accessor for ConversationDataSource);
  sub_1D33DDED4();

  *a3 = *(v5 + *a2);
}

uint64_t sub_1D335691C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1D3357A88(&unk_1EDEBF560, type metadata accessor for ConversationDataSource);
  sub_1D33DDEC4();
}

uint64_t sub_1D33569E8()
{
  swift_getKeyPath();
  sub_1D3357A88(&unk_1EDEBF560, type metadata accessor for ConversationDataSource);
  sub_1D33DDED4();

  v1 = v0 + OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_state;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_state));
  v2 = *(v1 + 8);

  os_unfair_lock_unlock(v1);
  return v2;
}

void sub_1D3356AB0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D3357A88(&unk_1EDEBF560, type metadata accessor for ConversationDataSource);
  sub_1D33DDED4();

  v4 = v3 + OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_state;
  os_unfair_lock_lock((v3 + OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_state));
  v5 = *(v4 + 8);

  os_unfair_lock_unlock(v4);
  *a2 = v5;
}

void sub_1D3356BB0(uint64_t *a1)
{
  v2 = sub_1D33DE3F4();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1D33DE3B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a1;
  if (qword_1EDEBFD70 != -1)
  {
    swift_once();
  }

  v12 = sub_1D33DE464();
  __swift_project_value_buffer(v12, qword_1EDEC1480);
  v13 = sub_1D33DE444();
  v14 = sub_1D33DEAF4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D331A000, v13, v14, "Updating: Conversations", v15, 2u);
    MEMORY[0x1D38B81C0](v15, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v32 = v7;
    v34 = OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_loadingStateSubject;
    v18 = *(Strong + OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_loadingStateSubject);
    LOBYTE(v35) = 1;
    sub_1D33DE4E4();
    swift_getKeyPath();
    v35 = v17;
    sub_1D3357A88(&unk_1EDEBF560, type metadata accessor for ConversationDataSource);
    sub_1D33DDED4();

    if (*&v17[OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource__signState])
    {
      v31 = v11;
      v19 = qword_1EDEBF088;

      if (v19 != -1)
      {
        swift_once();
      }

      v20 = sub_1D33DE3E4();
      __swift_project_value_buffer(v20, qword_1EDEC1458);
      v21 = sub_1D33DE3D4();
      sub_1D33DE404();
      v30 = sub_1D33DEBF4();
      if (sub_1D33DECC4())
      {

        sub_1D33DE434();

        v22 = v33;
        if ((*(v33 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
        {
          v23 = "[Error] Interval already ended";
        }

        else
        {
          (*(v22 + 8))(v5, v2);
          v23 = "";
        }

        v24 = swift_slowAlloc();
        *v24 = 0;
        v25 = sub_1D33DE394();
        _os_signpost_emit_with_name_impl(&dword_1D331A000, v21, v30, v25, "ConversationDataSource loading", v23, v24, 2u);
        MEMORY[0x1D38B81C0](v24, -1, -1);
      }

      (*(v32 + 8))(v10, v6);
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *&v29[-16] = v17;
      *&v29[-8] = 0;
      v35 = v17;
      sub_1D33DDEC4();

      v11 = v31;
    }

    v27 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v27);
    *&v29[-16] = v17;
    *&v29[-8] = v11;
    v35 = v17;
    sub_1D33DDEC4();

    v28 = *&v17[v34];
    LOBYTE(v35) = 2;
    sub_1D33DE4E4();
  }
}

void sub_1D3357108(uint64_t a1, uint64_t a2)
{
  v3 = a1 + OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_state;
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_state));
  v4 = *(v3 + 8);
  *(v3 + 8) = a2;

  os_unfair_lock_unlock(v3);
}

id sub_1D335716C()
{
  v1 = sub_1D33DE3B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v20 - v7;
  if (qword_1EDEBF088 != -1)
  {
    swift_once();
  }

  v9 = sub_1D33DE3E4();
  __swift_project_value_buffer(v9, qword_1EDEC1458);
  sub_1D33DE3A4();
  v10 = sub_1D33DE3D4();
  v11 = sub_1D33DEC04();
  if (sub_1D33DECC4())
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_1D33DE394();
    _os_signpost_emit_with_name_impl(&dword_1D331A000, v10, v11, v13, "ConversationDataSource loading", "", v12, 2u);
    MEMORY[0x1D38B81C0](v12, -1, -1);
  }

  (*(v2 + 16))(v6, v8, v1);
  v14 = sub_1D33DE424();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_1D33DE414();
  (*(v2 + 8))(v8, v1);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v20[-2] = v0;
  v20[-1] = v17;
  v20[1] = v0;
  sub_1D3357A88(&unk_1EDEBF560, type metadata accessor for ConversationDataSource);
  sub_1D33DDEC4();

  return [*(v0 + OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_conversationManager) refreshActiveConversations];
}

id ConversationDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConversationDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D33575F8(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_conversationsUpdateSubject);
  v3 = [a1 activeConversations];
  sub_1D331DA18(0, &unk_1EDEBEF00, 0x1E69D8B20);
  sub_1D3357A1C(&qword_1EDEBEEF8, &unk_1EDEBEF00, 0x1E69D8B20);
  v4 = sub_1D33DEA54();

  sub_1D3321CC0(v4);

  sub_1D33DE4C4();
}

void sub_1D33576DC(char *a1, uint64_t a2, void *a3)
{
  v4 = *&a1[OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_conversationsUpdateSubject];
  v5 = a3;
  v6 = a1;
  v7 = [v5 activeConversations];
  sub_1D331DA18(0, &unk_1EDEBEF00, 0x1E69D8B20);
  sub_1D3357A1C(&qword_1EDEBEEF8, &unk_1EDEBEF00, 0x1E69D8B20);
  v8 = sub_1D33DEA54();

  sub_1D3321CC0(v8);

  sub_1D33DE4C4();
}

uint64_t sub_1D33577E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760FD0, &qword_1D33E2240);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - v4;
  v8[1] = *(*v0 + OBJC_IVAR____TtC16CallsAppServices22ConversationDataSource_loadingStateSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7619E0, &unk_1D33E1AA0);
  sub_1D334CB54(&unk_1EC760EB0, &unk_1EC7619E0, &unk_1D33E1AA0);
  sub_1D334CB00();
  sub_1D33DE624();
  sub_1D334CB54(&unk_1EC760EC0, &unk_1EC760FD0, &qword_1D33E2240);
  v6 = sub_1D33DE5A4();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_1D3357980@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D3357A1C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D331DA18(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D3357A88(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D3357BB0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + *a1);
  *(v2 + *a1) = *(v1 + 24);
}

size_t sub_1D3357C20@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D334EC2C(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for RecentsItem(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1D33302BC(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D3357D40@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D334EC40(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 24 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 16);
    *a2 = v10;
    *(a2 + 16) = v11;
    result = memmove(v9, (v9 + 24), 24 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D3357DDC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1D334EC54(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1D3357E6C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D334ECB8(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 40);
    v12 = *(v9 + 48);
    *a2 = v10;
    *(a2 + 8) = *(v9 + 8);
    *(a2 + 24) = *(v9 + 24);
    *(a2 + 40) = v11;
    *(a2 + 48) = v12;
    result = memmove(v9, (v9 + 56), 56 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1D3357F20(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1D38B75D0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1D33DEE14();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1D3358048(uint64_t (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = *v6++;
      v13 = v8;
      v9 = v8;
      v10 = a1(&v13);

      if (v3)
      {
        break;
      }

      v11 = v7-- == 0;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t sub_1D33580EC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1D3358198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (!v4)
  {
    return 0;
  }

  sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
  v6 = 0;
  for (i = (a4 + 48); ; i += 3)
  {
    v8 = *(i - 2);
    v9 = *(i - 1);
    v10 = *i;

    v11 = v9;

    v12 = sub_1D33DEC74();

    if (v12)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

unint64_t sub_1D3358278(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_1D33DEE14();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1D38B75D0](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_1D331DA18(0, &qword_1EC761170, 0x1E69992A8);
    v8 = sub_1D33DEC74();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1D3358388(uint64_t a1, uint64_t a2)
{
  v19 = *(a2 + 16);
  if (v19)
  {
    sub_1D331DA18(0, &qword_1EDEBEE70, 0x1E69E58C0);
    v4 = 0;
    v18 = *(a1 + 40);
    for (i = (a2 + 80); ; i += 56)
    {
      v7 = *(i - 6);
      v6 = *(i - 5);
      v8 = *(i - 4);
      v9 = *(i - 3);
      v10 = *(i - 2);
      v11 = *(i - 1);
      v20 = *i;

      v12 = v11;

      v13 = v8;
      if ((sub_1D33DEC74() & 1) == 0 || (v7 != *a1 || v6 != *(a1 + 8)) && (sub_1D33DF1B4() & 1) == 0)
      {
        break;
      }

      v14 = *(a1 + 32);
      if (v10)
      {
        if (!v14)
        {
          break;
        }

        if (v9 == *(a1 + 24) && v10 == v14)
        {
        }

        else
        {
          v15 = *(a1 + 32);
          v16 = sub_1D33DF1B4();

          if ((v16 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {

        if (v14)
        {
          goto LABEL_4;
        }
      }

      if (v20 == (*(a1 + 48) & 1))
      {
        return v4;
      }

LABEL_4:
      if (v19 == ++v4)
      {
        return 0;
      }
    }

    goto LABEL_4;
  }

  return 0;
}

uint64_t sub_1D3358560@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761000, &qword_1D33E2420);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - v7;
  (*(v5 + 16))(v10 - v7, *a1 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource__favorites, v4);
  sub_1D33DDF54();
  result = (*(v5 + 8))(v8, v4);
  *a2 = v10[1];
  return result;
}

uint64_t sub_1D3358674(uint64_t *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761000, &qword_1D33E2420);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = *a1;
  (*(v5 + 16))(v11 - v7, *a2 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource__favorites, v4);
  v11[1] = v9;

  sub_1D33DDF64();
  return (*(v5 + 8))(v8, v4);
}

uint64_t FavoritesDataSource.__allocating_init(controller:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = sub_1D331C8A4(a1);

  return v5;
}

id FavoritesDataSource.add(entry:)(uint64_t a1)
{
  v3 = [*(v1 + 16) favoritesEntries];
  sub_1D331DA18(0, &qword_1EDEBEEF0, 0x1E695CE98);
  v4 = sub_1D33DE8B4();

  v7 = a1;
  v6[2] = &v7;
  LOBYTE(v3) = sub_1D3357F20(sub_1D335A124, v6, v4);

  if ((v3 & 1) == 0)
  {
    return [*(v1 + 16) addEntry_];
  }

  return result;
}

Swift::Void __swiftcall FavoritesDataSource.moveFavorite(at:to:)(Swift::Int at, Swift::Int to)
{
  v3 = v2;
  v34 = at;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761000, &qword_1D33E2420);
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25[-v8];
  v10 = OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource__favorites;
  v11 = v6[2];
  v11(&v25[-v8], v2 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource__favorites, v5);
  sub_1D33DDF54();
  v12 = v6[1];
  v12(v9, v5);

  v11(v9, v2 + v10, v5);
  sub_1D33DDF54();
  v12(v9, v5);
  v13 = *(v38[0] + 16);

  v32 = v11;
  v33 = v13;
  if (v13 - 1 >= (to & ~(to >> 63)))
  {
    v14 = to & ~(to >> 63);
  }

  else
  {
    v14 = v13 - 1;
  }

  v31 = v10;
  v29 = v6 + 2;
  v11(v9, v3 + v10, v5);
  v15 = v34;
  sub_1D33DDF54();
  v30 = v12;
  v12(v9, v5);
  v37 = v38[0];
  sub_1D3357E6C(v15, v35);
  v16 = v37;
  v17 = *(v37 + 2);
  if (v17 < v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!v33)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v18 = v14;
  v33 = v3;
  v19 = v35[1];
  v28 = v35[0];
  v20 = v35[2];
  v27 = v35[3];
  v21 = v35[4];
  v22 = v35[5];
  v26 = v36;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v17 >= *(v16 + 3) >> 1)
  {
    v16 = sub_1D331E6F4(isUniquelyReferenced_nonNull_native, v17 + 1, 1, v16);
    v37 = v16;
  }

  v38[0] = v28;
  v38[1] = v19;
  v38[2] = v20;
  v38[3] = v27;
  v38[4] = v21;
  v38[5] = v22;
  v39 = v26;
  sub_1D335A18C(v18, v18, 1, v38);

  v24 = v33;
  v32(v9, v33 + v31, v5);
  v35[0] = v16;
  sub_1D33DDF64();
  v30(v9, v5);
  [*(v24 + 16) moveEntryAtIndex:v34 toIndex:v18];
}

Swift::Void __swiftcall FavoritesDataSource.removeFavorite(at:)(Swift::Int at)
{
  v3 = sub_1D33DDEA4();
  v4 = *(v3 - 8);
  v21 = v3;
  v22 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761000, &qword_1D33E2420);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - v11;
  (*(v9 + 16))(&v20 - v11, v1 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource__favorites, v8);
  v13 = sub_1D33DDF44();
  sub_1D3357E6C(at, v24);
  v14 = v24[2];

  v13(v23, 0);
  (*(v9 + 8))(v12, v8);
  v15 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761008, &qword_1D33E2428);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D33E2410;
  *(v16 + 32) = at;
  v24[0] = v16;
  sub_1D3333FA4(&qword_1EC761010, MEMORY[0x1E6969B50]);
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761018, &qword_1D33E2430);
  sub_1D334CB54(&unk_1EC761020, &qword_1EC761018, &qword_1D33E2430);
  v18 = v21;
  sub_1D33DED64();
  v19 = sub_1D33DDE94();
  (*(v22 + 8))(v7, v18);
  [v17 removeEntriesAtIndexes_];
}

void FavoritesDataSource.removeFavorite(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761000, &qword_1D33E2420);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v9;
  v13[2] = *(a1 + 32);
  v14 = *(a1 + 48);
  (*(v5 + 16))(v12 - v7, v2 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource__favorites, v4);
  sub_1D33DDF54();
  (*(v5 + 8))(v8, v4);
  v10 = sub_1D3358388(v13, v12[1]);
  LOBYTE(v8) = v11;

  if ((v8 & 1) == 0)
  {
    FavoritesDataSource.removeFavorite(at:)(v10);
  }
}

uint64_t FavoritesDataSource.transportName(for:)(uint64_t a1)
{
  v2 = [*(v1 + 16) transportNameForFavoritesEntry_];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1D33DE7B4();

  return v4;
}

uint64_t sub_1D3359094()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 152);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_1D33DE914();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1D33594B8;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_1D33DE914();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1D335922C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, v8);
}

uint64_t sub_1D335922C()
{
  v1 = v0[19];

  v2 = v0[17];
  v3 = v0[18];

  return MEMORY[0x1EEE6DFA0](sub_1D3359290, v2, v3);
}

uint64_t sub_1D3359290()
{
  v1 = v0[8];
  v2 = sub_1D33DDAE4();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[16];
    (*(v0[13] + 8))(v0[14], v0[12]);

LABEL_9:
    v15 = v0[14];
    v16 = v0[11];
    v17 = v0[8];

    v18 = v0[1];

    return v18();
  }

  if ((sub_1D33DE9F4() & 1) != 0 || (v4 = v0[7], !swift_weakLoadStrong()))
  {
    v13 = v0[16];
    v14 = v0[8];
    (*(v0[13] + 8))(v0[14], v0[12]);

    sub_1D331E880(v14, &qword_1EC761158, &qword_1D33E2558);
    goto LABEL_9;
  }

  v5 = v0[8];
  sub_1D331CA38();

  sub_1D331E880(v5, &qword_1EC761158, &qword_1D33E2558);
  v6 = v0[15];
  v0[19] = sub_1D33DE964();
  v7 = sub_1D334CB54(&unk_1EDEBEFA8, &qword_1EC761168, &qword_1D33E2568);
  v8 = *(MEMORY[0x1E69E85A8] + 4);
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_1D3359094;
  v10 = v0[14];
  v11 = v0[12];
  v12 = v0[8];

  return MEMORY[0x1EEE6D8C8](v12, v11, v7);
}

uint64_t sub_1D33594B8()
{
  *(v0 + 40) = *(v0 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t FavoritesDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_favoriteUpdateTask;
  if (*(v0 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_favoriteUpdateTask))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_favoriteUpdateTask);

    sub_1D33DE9D4();
  }

  v3 = OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource__favorites;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761000, &qword_1D33E2420);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_cancellables);

  v6 = *(v0 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_signState);

  v7 = *(v0 + v1);

  v8 = *(v0 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_fetchTask);

  return v0;
}

uint64_t FavoritesDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_favoriteUpdateTask;
  if (*(v0 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_favoriteUpdateTask))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_favoriteUpdateTask);

    sub_1D33DE9D4();
  }

  v3 = OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource__favorites;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761000, &qword_1D33E2420);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_cancellables);

  v6 = *(v0 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_signState);

  v7 = *(v0 + v1);

  v8 = *(v0 + OBJC_IVAR____TtC16CallsAppServices19FavoritesDataSource_fetchTask);

  v9 = *(*v0 + 12);
  v10 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_1D3359768()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1D33DF284();
  MEMORY[0x1D38B7920](v2);
  sub_1D33DF2A4();
  if (v1)
  {
    sub_1D33DE7B4();
    sub_1D33DE824();
  }

  return sub_1D33DF2C4();
}

uint64_t sub_1D33597FC()
{
  v1 = v0[1];
  MEMORY[0x1D38B7920](*v0);
  if (!v1)
  {
    return sub_1D33DF2A4();
  }

  sub_1D33DF2A4();
  sub_1D33DE7B4();
  sub_1D33DE824();
}

uint64_t sub_1D335987C()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1D33DF284();
  MEMORY[0x1D38B7920](v2);
  sub_1D33DF2A4();
  if (v1)
  {
    sub_1D33DE7B4();
    sub_1D33DE824();
  }

  return sub_1D33DF2C4();
}

char *sub_1D3359920(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761070, &qword_1D33E24F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1D3359A14(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761068, &qword_1D33E24E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1D3359B68(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760DE0, &qword_1D33E1B68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D3359C88(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610C0, &qword_1D33E2520);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D3359DD4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761040, &qword_1D33E1B40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D3359F08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1 != a3)
  {
    return 0;
  }

  if (!a2)
  {
    return !a4;
  }

  if (!a4)
  {
    return 0;
  }

  v5 = sub_1D33DE7B4();
  v7 = v6;
  if (v5 != sub_1D33DE7B4() || v7 != v8)
  {
    v10 = sub_1D33DF1B4();

    return (v10 & 1) != 0;
  }

  return 1;
}

unint64_t sub_1D3359FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for RecentsItem(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D335A124(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_1D331DA18(0, &qword_1EDEBEEF0, 0x1E695CE98);
  return sub_1D33DEC74() & 1;
}

unint64_t sub_1D335A18C(unint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = a2;
  v9 = *v4;
  v10 = v9 + 32 + 56 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = v10 + 56 * a3;
  a2 = (v9 + 32 + 56 * v8);
  v15 = 56 * v14;
  v16 = &a2[56 * v14];
  if (result != a2 || result >= v16)
  {
    result = memmove(result, a2, v15);
  }

  v18 = *(v9 + 16);
  v11 = __OFADD__(v18, v12);
  v19 = v18 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v19;
LABEL_13:
  if (a3 <= 0)
  {
    return result;
  }

  v20 = *a4;
  v21 = *(a4 + 16);
  v22 = *(a4 + 32);
  *(v10 + 48) = *(a4 + 48);
  *(v10 + 16) = v21;
  *(v10 + 32) = v22;
  *v10 = v20;
  a2 = v23;
  result = a4;
  if (a3 != 1)
  {
LABEL_21:
    result = sub_1D335A2D0(result, a2);
    __break(1u);
    return result;
  }

  return sub_1D335A2D0(a4, v23);
}

uint64_t sub_1D335A2D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610D0, &qword_1D33E2528);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D335A340(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D335A39C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1D335A3EC()
{
  type metadata accessor for TUCallCenter_Async();
  v0 = swift_allocObject();
  if (qword_1EC760938 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC7620F8;
  v2 = objc_allocWithZone(MEMORY[0x1E69D8A58]);
  v3 = v1;
  v4 = [v2 initWithQueue_];

  *(v0 + 16) = v4;
  qword_1EC7620F0 = v0;
}

uint64_t static CallServiceProvider.tuSimpleCallService()@<X0>(void *a1@<X8>)
{
  if (qword_1EC760930 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EC7620F0;
}

uint64_t getEnumTagSinglePayload for CallServiceProvider(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CallServiceProvider(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1D335A5F8(uint64_t a1)
{
  v1 = a1;
  v26 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    result = sub_1D33DEA94();
    v1 = v21;
    v3 = v22;
    v4 = v23;
    v5 = v24;
    v6 = v25;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_25:
      sub_1D331FEEC();
      return v10;
    }

    while (1)
    {
      v16 = [v15 type];
      if (v16 > 3)
      {
        v17 = 2;
      }

      else
      {
        v17 = qword_1D33E2708[v16];
      }

      v18 = [v15 value];
      if (!v18)
      {
        sub_1D33DE7B4();
        v18 = sub_1D33DE784();
      }

      [objc_allocWithZone(MEMORY[0x1E69D8C00]) initWithType:v17 value:v18];

      MEMORY[0x1D38B6F20]();
      if (*(v26 + 16) >= *(v26 + 24) >> 1)
      {
        v19 = *(v26 + 16);
        sub_1D33DE8D4();
      }

      result = sub_1D33DE8F4();
      v10 = v26;
      v5 = v13;
      v6 = v14;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1D33DEE54())
      {
        sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
        swift_dynamicCast();
        v15 = v20;
        v13 = v5;
        v14 = v6;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_25;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_1D335A8E0(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33DEA94();
    v1 = v24;
    v2 = v25;
    v3 = v26;
    v4 = v27;
    v5 = v28;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v23 = MEMORY[0x1E69E7CC0];
  while (v1 < 0)
  {
    if (!sub_1D33DEE54() || (sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578), swift_dynamicCast(), (v11 = v29) == 0))
    {
LABEL_29:
      sub_1D331FEEC();
      return;
    }

LABEL_17:
    v12 = [v11 type];
    if (v12 > 3)
    {
      v13 = 2;
    }

    else
    {
      v13 = qword_1D33E2708[v12];
    }

    v14 = [v11 value];
    if (!v14)
    {
      sub_1D33DE7B4();
      v14 = sub_1D33DE784();
    }

    v15 = [objc_allocWithZone(MEMORY[0x1E69D8C00]) initWithType:v13 value:v14];

    v16 = TUCopyIDSFromIDForHandle();
    if (v16)
    {
      v17 = sub_1D33DE7B4();
      v19 = v18;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1D3359DD4(0, *(v23 + 2) + 1, 1, v23);
      }

      v21 = *(v23 + 2);
      v20 = *(v23 + 3);
      if (v21 >= v20 >> 1)
      {
        v23 = sub_1D3359DD4((v20 > 1), v21 + 1, 1, v23);
      }

      *(v23 + 2) = v21 + 1;
      v22 = &v23[16 * v21];
      *(v22 + 4) = v17;
      *(v22 + 5) = v19;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_29;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_29;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1D335AC18(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
    sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
    sub_1D33DEA94();
    v1 = v18;
    v2 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_1D33DEE54() || (sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00), swift_dynamicCast(), v13 = v23, v4 = v9, v5 = v10, !v23))
      {
LABEL_24:
        sub_1D331FEEC();
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_24;
    }

LABEL_18:
    v14 = _s16CallsAppServices17ReportSpamManagerC10getContact9forHandleSaySo9CNContactCGSgSo8TUHandleC_tFZ_0(v13);

    v9 = v4;
    v10 = v5;
    if (v14)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1D3359DB0(0, v17[2] + 1, 1, v17);
      }

      v16 = v17[2];
      v15 = v17[3];
      if (v16 >= v15 >> 1)
      {
        v17 = sub_1D3359DB0((v15 > 1), v16 + 1, 1, v17);
      }

      v17[2] = v16 + 1;
      v17[v16 + 4] = v14;
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1D335AEA4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
    sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
    sub_1D33DEA94();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = MEMORY[0x1E69E7CC0];
  while (v1 < 0)
  {
    if (!sub_1D33DEE54() || (sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00), swift_dynamicCast(), (v12 = v26) == 0))
    {
LABEL_24:
      sub_1D331FEEC();
      return;
    }

LABEL_17:
    v13 = TUCopyIDSFromIDForHandle();
    if (v13)
    {
      v14 = v13;
      v20 = sub_1D33DE7B4();
      v16 = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1D3359DD4(0, *(v9 + 2) + 1, 1, v9);
      }

      v18 = *(v9 + 2);
      v17 = *(v9 + 3);
      if (v18 >= v17 >> 1)
      {
        v9 = sub_1D3359DD4((v17 > 1), v18 + 1, 1, v9);
      }

      *(v9 + 2) = v18 + 1;
      v19 = &v9[16 * v18];
      *(v19 + 4) = v20;
      *(v19 + 5) = v16;
    }

    else
    {
    }
  }

  v10 = v4;
  v11 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v11 = *(v2 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

id sub_1D335B160()
{
  if (*(v0 + 32) - 4 > 2)
  {
    return 0;
  }

  v1 = *v0;
  v2 = [v1 initiator];

  if (!v2)
  {
LABEL_15:
    v12 = v1;
    v13 = [v12 initiator];

    if (v13)
    {
      v14 = sub_1D336A260();

      v6 = [v14 value];
      v11 = sub_1D33DE7B4();
      goto LABEL_17;
    }

    return 0;
  }

  v3 = sub_1D336A260();

  if ([v3 type] != 2)
  {
    goto LABEL_10;
  }

  result = [v3 value];
  if (!result)
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = result;
  v6 = PNCopyBestGuessCountryCodeForNumber();

  if (!v6)
  {
LABEL_10:
    v6 = v3;
LABEL_14:

    goto LABEL_15;
  }

  result = [v3 value];
  if (result)
  {
    v7 = result;
    v8 = CFPhoneNumberCreate();

    if (v8)
    {
      String = CFPhoneNumberCreateString();
      if (String)
      {
        v10 = String;
        v11 = sub_1D33DE7B4();

LABEL_17:
        return v11;
      }
    }

    else
    {
      v8 = v3;
    }

    goto LABEL_14;
  }

LABEL_20:
  __break(1u);
  return result;
}

id SpamModelable.formattedInitiatorHandle.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  v5 = v4();
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  if ([v5 type] != 2)
  {
    goto LABEL_9;
  }

  result = [v6 value];
  if (!result)
  {
    __break(1u);
    goto LABEL_20;
  }

  v8 = result;
  v9 = PNCopyBestGuessCountryCodeForNumber();

  if (!v9)
  {
LABEL_9:
    v9 = v6;
LABEL_13:

LABEL_14:
    v15 = (v4)(a1, a2);
    if (!v15)
    {
      return 0;
    }

    v16 = v15;
    v9 = [v15 value];

    v14 = sub_1D33DE7B4();
LABEL_16:

    return v14;
  }

  result = [v6 value];
  if (result)
  {
    v10 = result;
    v11 = CFPhoneNumberCreate();

    if (v11)
    {
      String = CFPhoneNumberCreateString();
      if (String)
      {
        v13 = String;
        v14 = sub_1D33DE7B4();

        goto LABEL_16;
      }
    }

    else
    {
      v11 = v6;
    }

    goto LABEL_13;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_1D335B4B8()
{
  if (*(v0 + 32) - 4 <= 2)
  {
    v1 = *v0;
    v2 = [v1 initiator];

    if (v2)
    {
      v3 = sub_1D336A260();

      TUHandle.block()();
    }
  }
}

Swift::Void __swiftcall SpamModelable.blockInitiator()()
{
  v1 = (*(v0 + 64))();
  if (v1)
  {
    v2 = v1;
    TUHandle.block()();
  }
}

void sub_1D335B5C4(char a1)
{
  v2 = RecentsItem.unknownHandles.getter();
  v4 = v2;
  v5 = *(v2 + 16);
  if (!v5)
  {
LABEL_24:

    return;
  }

  v6 = 0;
  v7 = v2 + 32;
  v8 = &off_1E843B000;
  *&v3 = 136315138;
  v30 = v3;
  v32 = a1;
  v31 = v2;
  while (v6 < *(v4 + 16))
  {
    v9 = *(v7 + 8 * v6);
    if (!v9)
    {
      goto LABEL_5;
    }

    v10 = v9;
    v11 = [v10 v8[446]];
    if (v11 == 1)
    {
      goto LABEL_4;
    }

    if (v11 == 2)
    {
      v15 = [v10 value];
      if (!v15)
      {
        sub_1D33DE7B4();
        v15 = sub_1D33DE784();
      }

      v16 = TUHomeCountryCode();
      v17 = [objc_allocWithZone(MEMORY[0x1E69D8C98]) initWithDigits:v15 countryCode:v16];

      if (!v17)
      {
        goto LABEL_4;
      }

      v18 = [objc_opt_self() sharedPrivacyManager];
      if (!v18)
      {
        goto LABEL_27;
      }

      v19 = v18;
      [v18 setBlockIncomingCommunication:a1 & 1 forPhoneNumber:v17];
    }

    else
    {
      if (v11 != 3)
      {
        if (qword_1EC760968 != -1)
        {
          swift_once();
        }

        v20 = sub_1D33DE464();
        __swift_project_value_buffer(v20, qword_1EC761DC8);
        v21 = v10;
        v10 = sub_1D33DE444();
        v22 = sub_1D33DEAD4();

        if (os_log_type_enabled(v10, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v34 = v24;
          *v23 = v30;
          sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
          v33 = v21;
          v25 = sub_1D33DE804();
          v27 = v8;
          v28 = sub_1D3328B48(v25, v26, &v34);
          v4 = v31;

          *(v23 + 4) = v28;
          v8 = v27;
          _os_log_impl(&dword_1D331A000, v10, v22, "Unknown handle type: %s", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v24);
          v29 = v24;
          a1 = v32;
          MEMORY[0x1D38B81C0](v29, -1, -1);
          MEMORY[0x1D38B81C0](v23, -1, -1);
        }

        else
        {
        }

LABEL_4:

        goto LABEL_5;
      }

      v12 = [objc_opt_self() sharedPrivacyManager];
      if (!v12)
      {
        goto LABEL_26;
      }

      v13 = v12;
      v14 = [v10 value];
      if (!v14)
      {
        sub_1D33DE7B4();
        v14 = sub_1D33DE784();
      }

      [v13 setBlockIncomingCommunication:a1 & 1 forEmailAddress:{v14, v30}];
    }

LABEL_5:
    if (v5 == ++v6)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_1D335B960(uint64_t a1, uint64_t a2, char a3)
{
  v4 = (*(a2 + 72))();
  v6 = v4;
  v7 = *(v4 + 16);
  if (!v7)
  {
LABEL_24:

    return;
  }

  v8 = 0;
  v9 = v4 + 32;
  v10 = &off_1E843B000;
  *&v5 = 136315138;
  v32 = v5;
  v34 = a3;
  v33 = v4;
  while (v8 < *(v6 + 16))
  {
    v11 = *(v9 + 8 * v8);
    if (!v11)
    {
      goto LABEL_5;
    }

    v12 = v11;
    v13 = [v12 v10[446]];
    if (v13 == 1)
    {
      goto LABEL_4;
    }

    if (v13 == 2)
    {
      v17 = [v12 value];
      if (!v17)
      {
        sub_1D33DE7B4();
        v17 = sub_1D33DE784();
      }

      v18 = TUHomeCountryCode();
      v19 = [objc_allocWithZone(MEMORY[0x1E69D8C98]) initWithDigits:v17 countryCode:v18];

      if (!v19)
      {
        goto LABEL_4;
      }

      v20 = [objc_opt_self() sharedPrivacyManager];
      if (!v20)
      {
        goto LABEL_27;
      }

      v21 = v20;
      [v20 setBlockIncomingCommunication:a3 & 1 forPhoneNumber:v19];
    }

    else
    {
      if (v13 != 3)
      {
        if (qword_1EC760968 != -1)
        {
          swift_once();
        }

        v22 = sub_1D33DE464();
        __swift_project_value_buffer(v22, qword_1EC761DC8);
        v23 = v12;
        v12 = sub_1D33DE444();
        v24 = sub_1D33DEAD4();

        if (os_log_type_enabled(v12, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v36 = v26;
          *v25 = v32;
          sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
          v35 = v23;
          v27 = sub_1D33DE804();
          v29 = v10;
          v30 = sub_1D3328B48(v27, v28, &v36);
          v6 = v33;

          *(v25 + 4) = v30;
          v10 = v29;
          _os_log_impl(&dword_1D331A000, v12, v24, "Unknown handle type: %s", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v26);
          v31 = v26;
          a3 = v34;
          MEMORY[0x1D38B81C0](v31, -1, -1);
          MEMORY[0x1D38B81C0](v25, -1, -1);
        }

        else
        {
        }

LABEL_4:

        goto LABEL_5;
      }

      v14 = [objc_opt_self() sharedPrivacyManager];
      if (!v14)
      {
        goto LABEL_26;
      }

      v15 = v14;
      v16 = [v12 value];
      if (!v16)
      {
        sub_1D33DE7B4();
        v16 = sub_1D33DE784();
      }

      [v15 setBlockIncomingCommunication:a3 & 1 forEmailAddress:{v16, v32}];
    }

LABEL_5:
    if (v7 == ++v8)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_1D335BD14(char a1)
{
  v3 = [v1 type];
  if (v3 == 1)
  {
    return;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
      if (qword_1EC760968 != -1)
      {
        swift_once();
      }

      v11 = sub_1D33DE464();
      __swift_project_value_buffer(v11, qword_1EC761DC8);
      v12 = v1;
      oslog = sub_1D33DE444();
      v13 = sub_1D33DEAD4();

      if (os_log_type_enabled(oslog, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v22 = v15;
        *v14 = 136315138;
        sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
        v16 = v12;
        v17 = sub_1D33DE804();
        v19 = sub_1D3328B48(v17, v18, &v22);

        *(v14 + 4) = v19;
        _os_log_impl(&dword_1D331A000, oslog, v13, "Unknown handle type: %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        MEMORY[0x1D38B81C0](v15, -1, -1);
        MEMORY[0x1D38B81C0](v14, -1, -1);

        return;
      }

      goto LABEL_18;
    }

    v4 = [objc_opt_self() sharedPrivacyManager];
    if (v4)
    {
      v5 = v4;
      v6 = [v1 value];
      if (!v6)
      {
        sub_1D33DE7B4();
        osloga = sub_1D33DE784();

        v6 = osloga;
      }

      oslog = v6;
      [v5 setBlockIncomingCommunication:a1 & 1 forEmailAddress:?];

      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_22;
  }

  v7 = [v1 value];
  if (!v7)
  {
    sub_1D33DE7B4();
    v7 = sub_1D33DE784();
  }

  v8 = TUHomeCountryCode();
  v9 = [objc_allocWithZone(MEMORY[0x1E69D8C98]) initWithDigits:v7 countryCode:v8];

  if (v9)
  {
    v10 = [objc_opt_self() sharedPrivacyManager];
    if (v10)
    {
      oslog = v10;
      [v10 setBlockIncomingCommunication:a1 & 1 forPhoneNumber:v9];

LABEL_18:

      return;
    }

LABEL_22:
    __break(1u);
  }
}

unint64_t static SpamModelable.faceTimeSpamCallType(isFaceTime:isOneToOne:)(char a1, char a2)
{
  v2 = 0x656D697465636166;
  if (a2)
  {
    v2 = 0xD000000000000013;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

id CHRecentCall.initiatorHandle.getter()
{
  v1 = [v0 initiator];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D336A260();

  return v3;
}

uint64_t CHRecentCall.isOneToOneUnknownFaceTimeCall.getter()
{
  v1 = [v0 remoteParticipantHandles];
  if (v1 && ((v2 = v1, sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578), sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578), v3 = sub_1D33DEA54(), v2, (v3 & 0xC000000000000001) == 0) ? (v4 = *(v3 + 16)) : (v4 = sub_1D33DEE14()), , v4 == 1))
  {
    v5 = CHRecentCall.unknownHandles.getter();
    v6 = [v0 initiator];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1D336A260();
    }

    else
    {
      v8 = 0;
    }

    v12 = v8;
    MEMORY[0x1EEE9AC00](v6);
    v11[2] = &v12;
    v9 = sub_1D3358048(sub_1D3367688, v11, v5);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t CHRecentCall.unknownHandles.getter()
{
  v143 = *MEMORY[0x1E69E9840];
  v116 = sub_1D33DDBC4();
  v1 = *(v116 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v4 = v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 remoteParticipantHandles];
  if (!v5)
  {
    if (qword_1EC760968 != -1)
    {
      goto LABEL_103;
    }

    goto LABEL_70;
  }

  v6 = v5;
  v121 = v4;
  v7 = sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
  sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
  v124 = v7;
  v8 = sub_1D33DEA54();

  if ((v8 & 0xC000000000000001) == 0)
  {
    v86 = *(v8 + 32);
    v125 = ((1 << v86) + 63) >> 6;
    if ((v86 & 0x3Fu) > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v108 = swift_slowAlloc();
        v105 = sub_1D3366E84(v108, v125, v8, sub_1D335D930, 0);

        MEMORY[0x1D38B81C0](v108, -1, -1);
        goto LABEL_97;
      }
    }

    v124 = v109;
    MEMORY[0x1EEE9AC00](v9);
    v126 = v109 - ((v87 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v126, v87);
    v127 = 0;
    v88 = 0;
    v89 = 1 << *(v8 + 32);
    v90 = -1;
    if (v89 < 64)
    {
      v90 = ~(-1 << v89);
    }

    v91 = v90 & *(v8 + 56);
    v92 = (v89 + 63) >> 6;
    v93 = &off_1E843B000;
    do
    {
      while (1)
      {
        if (v91)
        {
          v94 = __clz(__rbit64(v91));
          v91 &= v91 - 1;
        }

        else
        {
          v95 = v88;
          do
          {
            v88 = v95 + 1;
            if (__OFADD__(v95, 1))
            {
              goto LABEL_102;
            }

            if (v88 >= v92)
            {
              goto LABEL_94;
            }

            v96 = *(v8 + 56 + 8 * v88);
            ++v95;
          }

          while (!v96);
          v94 = __clz(__rbit64(v96));
          v91 = (v96 - 1) & v96;
        }

        v97 = v94 | (v88 << 6);
        v98 = *(*(v8 + 48) + 8 * v97);
        v99 = [v98 type];
        v128 = v97;
        if (v99 > 3)
        {
          v100 = 2;
        }

        else
        {
          v100 = qword_1D33E2708[v99];
        }

        v101 = [v98 v93[445]];
        if (!v101)
        {
          sub_1D33DE7B4();
          v101 = sub_1D33DE784();
          v93 = &off_1E843B000;
        }

        v102 = [objc_allocWithZone(MEMORY[0x1E69D8C00]) initWithType:v100 value:v101];

        v103 = _s16CallsAppServices17ReportSpamManagerC10getContact9forHandleSaySo9CNContactCGSgSo8TUHandleC_tFZ_0(v102);
        if (!v103)
        {
          break;
        }
      }

      *&v126[(v128 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v128;
    }

    while (!__OFADD__(v127++, 1));
    __break(1u);
LABEL_94:
    v105 = sub_1D3366F50(v126, v125, v127, v8, &qword_1EC7611D0, &qword_1D33E2700);
LABEL_97:
    v85 = sub_1D335A5F8(v105);

    goto LABEL_98;
  }

  v10 = MEMORY[0x1E69E7CD0];
  v131 = MEMORY[0x1E69E7CD0];
  v123 = sub_1D33DEDC4();
  v11 = sub_1D33DEE54();
  if (!v11)
  {
    v120 = v10;
    v109[0] = 0;
LABEL_96:

    v105 = v120;
    goto LABEL_97;
  }

  v109[0] = 0;
  v120 = MEMORY[0x1E69E7CD0];
  v110 = (v1 + 8);
  v122 = xmmword_1D33E1DE0;
  v12 = MEMORY[0x1E69E7CC0];
LABEL_7:
  v132 = v11;
  swift_dynamicCast();
  v13 = v130;
  v14 = [v130 type];
  if (v14 > 3)
  {
    v15 = 2;
  }

  else
  {
    v15 = qword_1D33E2708[v14];
  }

  v16 = [v13 value];
  if (!v16)
  {
    sub_1D33DE7B4();
    v16 = sub_1D33DE784();
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E69D8C00]) initWithType:v15 value:v16];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  inited = swift_initStackObject();
  *(inited + 16) = v122;
  *(inited + 32) = v17;
  v126 = v17;
  v19 = sub_1D336793C(inited, &unk_1EDEC0120, 0x1E69D8C00, &unk_1EDEC0040, sub_1D3363C74);
  swift_setDeallocating();
  v20 = *(inited + 16);
  swift_arrayDestroy();
  if (qword_1EDEC0138 != -1)
  {
    swift_once();
  }

  v125 = qword_1EDEC0110;
  v128 = v19;
  if ((v19 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
    sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
    sub_1D33DEA94();
    v19 = v138;
    v21 = v139;
    v22 = v140;
    v23 = v141;
    v24 = v142;
  }

  else
  {
    v25 = -1 << *(v19 + 32);
    v21 = v19 + 56;
    v22 = ~v25;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v24 = v27 & *(v19 + 56);

    v23 = 0;
  }

  v127 = v22;
  v28 = (v22 + 64) >> 6;
  v29 = v12;
  while (v19 < 0)
  {
    v33 = sub_1D33DEE54();
    if (!v33 || (v129 = v33, sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00), swift_dynamicCast(), (v32 = v132) == 0))
    {
LABEL_44:
      sub_1D331FEEC();

      v58 = 0;
      v12 = MEMORY[0x1E69E7CC0];
      v132 = MEMORY[0x1E69E7CC0];
      v59 = *(v29 + 2);
      v60 = MEMORY[0x1E69E7CC0];
LABEL_45:
      v61 = 56 * v58 + 32;
      while (v59 != v58)
      {
        if (v58 >= *(v29 + 2))
        {
          __break(1u);
          goto LABEL_100;
        }

        ++v58;
        v62 = *&v29[v61];
        v61 += 56;
        if (v62)
        {
          v63 = v62;
          MEMORY[0x1D38B6F20]();
          if (*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v64 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1D33DE8D4();
          }

          sub_1D33DE8F4();
          v60 = v132;
          goto LABEL_45;
        }
      }

      if (v60 >> 62)
      {
        v65 = sub_1D33DEE14();
      }

      else
      {
        v65 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v66 = v130;
      if (v65)
      {
      }

      else
      {
        v67 = *(v120 + 16);
        if (*(v120 + 24) <= v67)
        {
          sub_1D3364FB8(v67 + 1, &qword_1EC7611D0, &qword_1D33E2700);
        }

        v68 = v131;
        v69 = *(v131 + 40);
        v70 = sub_1D33DEC64();
        v71 = v68 + 56;
        v72 = -1 << *(v68 + 32);
        v73 = v70 & ~v72;
        v74 = v73 >> 6;
        if (((-1 << v73) & ~*(v68 + 56 + 8 * (v73 >> 6))) == 0)
        {
          v76 = 0;
          v77 = (63 - v72) >> 6;
          while (++v74 != v77 || (v76 & 1) == 0)
          {
            v78 = v74 == v77;
            if (v74 == v77)
            {
              v74 = 0;
            }

            v76 |= v78;
            v79 = *(v71 + 8 * v74);
            if (v79 != -1)
            {
              v75 = __clz(__rbit64(~v79)) + (v74 << 6);
              goto LABEL_67;
            }
          }

          goto LABEL_101;
        }

        v75 = __clz(__rbit64((-1 << v73) & ~*(v68 + 56 + 8 * (v73 >> 6)))) | v73 & 0x7FFFFFFFFFFFFFC0;
LABEL_67:
        *(v71 + ((v75 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v75;
        *(*(v68 + 48) + 8 * v75) = v66;
        v80 = *(v68 + 16) + 1;
        v120 = v68;
        *(v68 + 16) = v80;
      }

      v11 = sub_1D33DEE54();
      if (!v11)
      {
        goto LABEL_96;
      }

      goto LABEL_7;
    }

LABEL_30:
    v34 = [v32 value];
    if (!v34)
    {
      sub_1D33DE7B4();
      v34 = sub_1D33DE784();
    }

    v35 = [v34 destinationIdIsTemporary];

    if (v35)
    {
    }

    else
    {
      sub_1D332786C(v32, 0, 0, &v132);
      v36 = v132;
      v114 = v133;
      v37 = v134;
      v113 = v135;
      v38 = v136;
      v112 = v137;
      v117 = v132;
      v119 = v37;

      v118 = v38;

      v111 = MEMORY[0x1D38B7A70](v39);
      sub_1D33DDBB4();
      v115 = v36;
      if (v36)
      {
        v40 = v117;
        v41 = [v117 givenName];
        v109[1] = sub_1D33DE7B4();

        sub_1D33DDB84();
        v42 = [v40 familyName];
        sub_1D33DE7B4();
      }

      else
      {
        sub_1D33DDB84();
      }

      sub_1D33DDB94();
      if (qword_1EDEC0130 != -1)
      {
        swift_once();
      }

      v43 = qword_1EDEC1498;
      v44 = sub_1D33DDBA4();
      v45 = v43;
      v46 = [v43 stringFromPersonNameComponents_];

      v47 = sub_1D33DE7B4();
      v49 = v48;

      (*v110)(v121, v116);
      objc_autoreleasePoolPop(v111);
      v132 = v47;
      v133 = v49;
      sub_1D3328AF4();
      v50 = sub_1D33DED14();
      v52 = v51;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1D3359C88(0, *(v29 + 2) + 1, 1, v29);
      }

      v54 = *(v29 + 2);
      v53 = *(v29 + 3);
      if (v54 >= v53 >> 1)
      {
        v29 = sub_1D3359C88((v53 > 1), v54 + 1, 1, v29);
      }

      *(v29 + 2) = v54 + 1;
      v55 = &v29[56 * v54];
      v56 = v114;
      *(v55 + 4) = v115;
      *(v55 + 5) = v56;
      v57 = v113;
      *(v55 + 6) = v119;
      *(v55 + 7) = v57;
      *(v55 + 8) = v118;
      *(v55 + 9) = v50;
      *(v55 + 10) = v52;
    }
  }

  v30 = v23;
  v31 = v24;
  if (v24)
  {
LABEL_26:
    v24 = (v31 - 1) & v31;
    v32 = *(*(v19 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v31)))));
    if (!v32)
    {
      goto LABEL_44;
    }

    goto LABEL_30;
  }

  while (1)
  {
    v23 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v23 >= v28)
    {
      goto LABEL_44;
    }

    v31 = *(v21 + 8 * v23);
    ++v30;
    if (v31)
    {
      goto LABEL_26;
    }
  }

LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  swift_once();
LABEL_70:
  v81 = sub_1D33DE464();
  __swift_project_value_buffer(v81, qword_1EC761DC8);
  v82 = sub_1D33DE444();
  v83 = sub_1D33DEAF4();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_1D331A000, v82, v83, "remoteParticipantHandles = nil", v84, 2u);
    MEMORY[0x1D38B81C0](v84, -1, -1);
  }

  v85 = MEMORY[0x1E69E7CC0];
LABEL_98:
  v106 = *MEMORY[0x1E69E9840];
  return v85;
}

id CHRecentCall.isGroupFaceTime.getter()
{
  result = [v0 remoteParticipantHandles];
  if (result)
  {
    v2 = result;
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    v3 = sub_1D33DEA54();

    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = sub_1D33DEE14();
    }

    else
    {
      v4 = *(v3 + 16);
    }

    return (v4 > 1);
  }

  return result;
}

uint64_t CHRecentCall.isGroupFaceTimeWithUnknownInitiator.getter()
{
  v1 = [v0 remoteParticipantHandles];
  if (v1 && ((v2 = v1, sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578), sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578), v3 = sub_1D33DEA54(), v2, (v3 & 0xC000000000000001) == 0) ? (v4 = *(v3 + 16)) : (v4 = sub_1D33DEE14()), , v4 >= 2))
  {
    v5 = CHRecentCall.unknownHandles.getter();
    v6 = [v0 initiator];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1D336A260();
    }

    else
    {
      v8 = 0;
    }

    v12 = v8;
    MEMORY[0x1EEE9AC00](v6);
    v11[2] = &v12;
    v9 = sub_1D3358048(sub_1D3367DAC, v11, v5);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

id CHRecentCall.isGroupFaceTimeWithSomeUnknownContacts.getter()
{
  if (qword_1EC760968 != -1)
  {
    swift_once();
  }

  v1 = sub_1D33DE464();
  __swift_project_value_buffer(v1, qword_1EC761DC8);
  v2 = v0;
  v3 = sub_1D33DE444();
  v4 = sub_1D33DEAF4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    v7 = [v2 remoteParticipantHandles];
    if (v7)
    {
      v8 = v7;
      sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
      sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
      sub_1D33DEA54();

      v9 = sub_1D33DEA64();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xE000000000000000;
    }

    v12 = sub_1D3328B48(v9, v11, &v19);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_1D331A000, v3, v4, "isGroupFaceTimeWithSomeUnknownContacts :%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1D38B81C0](v6, -1, -1);
    MEMORY[0x1D38B81C0](v5, -1, -1);
  }

  result = [v2 remoteParticipantHandles];
  if (result)
  {
    v14 = result;
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    v15 = sub_1D33DEA54();

    if ((v15 & 0xC000000000000001) != 0)
    {
      if (sub_1D33DEE14() >= 2)
      {
LABEL_11:
        sub_1D3339334(v15);
        v17 = *(v16 + 16);

        if ((v15 & 0xC000000000000001) != 0)
        {
          v18 = sub_1D33DEE14();
        }

        else
        {
          v18 = *(v15 + 16);
        }

        return (v17 < v18);
      }
    }

    else if (*(v15 + 16) >= 2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  return result;
}

id CHRecentCall.isGroupFaceTimeWithAllUnknownContacts.getter()
{
  if (qword_1EC760968 != -1)
  {
    swift_once();
  }

  v1 = sub_1D33DE464();
  __swift_project_value_buffer(v1, qword_1EC761DC8);
  v2 = v0;
  v3 = sub_1D33DE444();
  v4 = sub_1D33DEAF4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    v7 = [v2 remoteParticipantHandles];
    if (v7)
    {
      v8 = v7;
      sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
      sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
      sub_1D33DEA54();

      v9 = sub_1D33DEA64();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xE000000000000000;
    }

    v12 = sub_1D3328B48(v9, v11, &v20);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_1D331A000, v3, v4, "isGroupFaceTimeWithAllUnknownContacts: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1D38B81C0](v6, -1, -1);
    MEMORY[0x1D38B81C0](v5, -1, -1);
  }

  result = [v2 remoteParticipantHandles];
  if (result)
  {
    v14 = result;
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    v15 = sub_1D33DEA54();

    sub_1D3339334(v15);
    v17 = *(v16 + 16);

    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = sub_1D33DEE14();
    }

    else
    {
      v18 = *(v15 + 16);
    }

    return (v18 > 1 && v17 == 0);
  }

  return result;
}

BOOL sub_1D335D930(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1D336A260();
  v3 = _s16CallsAppServices17ReportSpamManagerC10getContact9forHandleSaySo9CNContactCGSgSo8TUHandleC_tFZ_0(v2);

  if (v3)
  {
  }

  return v3 == 0;
}

uint64_t sub_1D335D988()
{
  v1 = [v0 remoteParticipantHandles];
  if (v1)
  {
    v2 = v1;
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    v3 = sub_1D33DEA54();

    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = sub_1D33DEE14();
    }

    else
    {
      v4 = *(v3 + 16);
    }

    v5 = v4 == 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v0 serviceProvider];
  if (!v6)
  {
    v16 = *MEMORY[0x1E69935E0];
    sub_1D33DE7B4();
    goto LABEL_17;
  }

  v7 = v6;
  v8 = sub_1D33DE7B4();
  v10 = v9;

  v11 = *MEMORY[0x1E69935E0];
  v12 = sub_1D33DE7B4();
  if (!v10)
  {
LABEL_17:

    return 0;
  }

  if (v8 == v12 && v10 == v13)
  {

    if (v5)
    {
      return 0xD000000000000013;
    }
  }

  else
  {
    v15 = sub_1D33DF1B4();

    if (v5)
    {
      if (v15)
      {
        return 0xD000000000000013;
      }

      return 0;
    }

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  return 0x656D697465636166;
}

id sub_1D335DB68()
{
  v1 = v0;
  v2 = [v0 initiator];
  if (!v2)
  {
    v3 = [v1 remoteParticipantHandles];
    if (!v3)
    {
      return v3;
    }

    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    v5 = sub_1D33DEA54();

    v2 = sub_1D335DC94(v5, sub_1D33D3558);

    if (!v2)
    {
      return 0;
    }
  }

  v3 = sub_1D336A260();

  return v3;
}

uint64_t sub_1D335DC94(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, BOOL, uint64_t))
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_1D33DEDB4();
    v7 = v6;
    v8 = sub_1D33DEE74();
    v10 = v9;
    v11 = MEMORY[0x1D38B7470](v5, v7, v8, v9);
    sub_1D335665C(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_1D335665C(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v13 = -1 << *(a1 + 32);
    v5 = sub_1D33DED74();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  v14 = a2(v5, v7, v4 != 0, a1);
  sub_1D335665C(v5, v7, v4 != 0);
  return v14;
}

uint64_t sub_1D335DDB8(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_1D33DED74();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_1D33D559C(v3, *(a1 + 36), 0, a1);

  return v5;
}

uint64_t sub_1D335DE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = sub_1D33DED74();
  v6 = 1;
  if (v5 != 1 << *(a1 + 32))
  {
    sub_1D33D37C0(v5, *(a1 + 36), a1, a2);
    v6 = 0;
  }

  v7 = type metadata accessor for Participant();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t CHRecentCall.spamModel(with:spamContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v41 = sub_1D33DDD34();
  v10 = *(v41 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(a3 + 8))(v48, a1, a2, ObjectType, a3);
  v44 = v48[1];
  v45 = v48[0];
  v42 = v50;
  v43 = v49;
  v15 = *(a3 + 16);
  v46 = a1;
  v47 = a2;
  v40 = v15(a1, a2, ObjectType, a3);
  v16 = [v4 remoteParticipantHandles];
  if (v16)
  {
    v17 = v16;
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    v18 = sub_1D33DEA54();

    sub_1D335A8E0(v18);
    v39 = v19;
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC0];
  }

  v20 = sub_1D335D988();
  v38 = v21;
  [v5 duration];
  v23 = v22;
  v24 = sub_1D335DB68();
  v25 = [v5 uniqueId];
  v26 = sub_1D33DE7B4();
  v28 = v27;

  [v5 duration];
  sub_1D33DDCC4();
  sub_1D33DDCD4();
  v30 = v29;
  (*(v10 + 8))(v13, v41);
  v31 = sub_1D33C8614([v5 callStatus]);
  v32 = v38;
  *a4 = v39;
  *(a4 + 8) = v20;
  *(a4 + 16) = v32;
  *(a4 + 24) = v23;
  *(a4 + 32) = 0;
  v33 = v47;
  *(a4 + 40) = v46;
  *(a4 + 48) = v33;
  *(a4 + 56) = v24;
  *(a4 + 64) = v26;
  *(a4 + 72) = v28;
  *(a4 + 80) = v30;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0xD000000000000010;
  *(a4 + 104) = 0x80000001D33E6240;
  *(a4 + 112) = v31;
  *(a4 + 120) = v34;
  *(a4 + 128) = 0;
  *(a4 + 136) = 0;
  v35 = v44;
  *(a4 + 144) = v45;
  *(a4 + 160) = v35;
  v36 = v42;
  *(a4 + 176) = v43;
  *(a4 + 184) = v36;
  *(a4 + 192) = v40;
}

Swift::Bool __swiftcall TUHandle.isBlocked()()
{
  v1 = [v0 type];
  if (v1 != 1)
  {
    if (v1 == 2)
    {
      v6 = [v0 value];
      if (!v6)
      {
        sub_1D33DE7B4();
        v6 = sub_1D33DE784();
      }

      v7 = TUHomeCountryCode();
      v8 = [objc_allocWithZone(MEMORY[0x1E69D8C98]) initWithDigits:v6 countryCode:v7];

      if (!v8)
      {
        if (qword_1EC760968 != -1)
        {
          swift_once();
        }

        v23 = sub_1D33DE464();
        __swift_project_value_buffer(v23, qword_1EC761DC8);
        v24 = v0;
        v5 = sub_1D33DE444();
        v25 = sub_1D33DEAD4();

        if (os_log_type_enabled(v5, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v34 = v27;
          *v26 = 136315138;
          v28 = [v24 value];
          v29 = sub_1D33DE7B4();
          v31 = v30;

          v32 = sub_1D3328B48(v29, v31, &v34);

          *(v26 + 4) = v32;
          _os_log_impl(&dword_1D331A000, v5, v25, "invalid formattedPhoneNumber, value: %s", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v27);
          MEMORY[0x1D38B81C0](v27, -1, -1);
          MEMORY[0x1D38B81C0](v26, -1, -1);
        }

        LOBYTE(v5) = 0;
        goto LABEL_24;
      }

      v2 = [objc_opt_self() sharedPrivacyManager];
      if (v2)
      {
        v9 = v2;
        LODWORD(v5) = [v2 isIncomingCommunicationBlockedForPhoneNumber_];

LABEL_19:
        if (qword_1EC760968 != -1)
        {
          swift_once();
        }

        v19 = sub_1D33DE464();
        __swift_project_value_buffer(v19, qword_1EC761DC8);
        v20 = sub_1D33DE444();
        v21 = sub_1D33DEAD4();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 67109120;
          *(v22 + 4) = v5;
          _os_log_impl(&dword_1D331A000, v20, v21, "handle isBlocked: %{BOOL}d", v22, 8u);
          MEMORY[0x1D38B81C0](v22, -1, -1);
        }

        goto LABEL_24;
      }
    }

    else
    {
      if (v1 != 3)
      {
        if (qword_1EC760968 != -1)
        {
          swift_once();
        }

        v10 = sub_1D33DE464();
        __swift_project_value_buffer(v10, qword_1EC761DC8);
        v11 = v0;
        v5 = sub_1D33DE444();
        v12 = sub_1D33DEAD4();

        if (os_log_type_enabled(v5, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v34 = v14;
          *v13 = 136315138;
          sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
          v15 = v11;
          v16 = sub_1D33DE804();
          v18 = sub_1D3328B48(v16, v17, &v34);

          *(v13 + 4) = v18;
          _os_log_impl(&dword_1D331A000, v5, v12, "Unknown handle type: %s", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v14);
          MEMORY[0x1D38B81C0](v14, -1, -1);
          MEMORY[0x1D38B81C0](v13, -1, -1);
        }

        LODWORD(v5) = 0;
        goto LABEL_19;
      }

      v2 = [objc_opt_self() sharedPrivacyManager];
      if (v2)
      {
        v3 = v2;
        v4 = [v0 value];
        if (!v4)
        {
          sub_1D33DE7B4();
          v4 = sub_1D33DE784();
        }

        LODWORD(v5) = [v3 isIncomingCommunicationBlockedForEmailAddress_];

        goto LABEL_19;
      }

      __break(1u);
    }

    __break(1u);
    return v2;
  }

  LOBYTE(v5) = 0;
LABEL_24:
  LOBYTE(v2) = v5;
  return v2;
}