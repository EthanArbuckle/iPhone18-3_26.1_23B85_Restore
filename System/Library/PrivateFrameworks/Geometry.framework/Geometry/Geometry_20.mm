void (*sub_2500B297C(uint64_t *a1, uint64_t *a2))(__int128 **a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *a2;
  *(v5 + 32) = v7;
  v8 = *v2;
  *(v6 + 40) = *v2;
  v9 = (geom_collection_data_4d(v8) + 32 * v7);
  v10 = v9[1];
  *v6 = *v9;
  *(v6 + 16) = v10;
  return sub_2500B2A0C;
}

void sub_2500B2A24(__int128 **a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *a1;
  v4 = *(*a1 + 4);
  v6 = (*a1)[1];
  v7 = **a1;
  v5 = (a3(*(*a1 + 5)) + 32 * v4);
  *v5 = v7;
  v5[1] = v6;

  free(v3);
}

uint64_t (*sub_2500B2AC0(void *a1, uint64_t *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2500AA124(v4, *a2, a2[1]);
  return sub_25009B858;
}

uint64_t sub_2500B2B38@<X0>(uint64_t (*a1)(__int128 *)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2500B4B48(a1, a2, geom_collection_size_4d, geom_collection_data_4d);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

__n128 sub_2500B2BA4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;
  if (*a1 != *a2)
  {
    v8 = *v5;
    v9 = *v5;
    v11 = a5(v9);
    v12 = 32 * v6;
    v20 = *(v11 + v12 + 16);
    v21 = *(v11 + v12);
    v13 = a5(v8);
    v14 = 32 * v7;
    v18 = *(v13 + v14 + 16);
    v19 = *(v13 + v14);
    v15 = (a5(v8) + v12);
    *v15 = v19;
    v15[1] = v18;
    v16 = (a5(v8) + v14);
    result = v21;
    *v16 = v21;
    v16[1] = v20;
  }

  return result;
}

unint64_t sub_2500B2D90()
{
  result = qword_27F3BACA8;
  if (!qword_27F3BACA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3BAC90, &qword_2500D6408);
    sub_250090B94(&qword_27F3BAC80, &qword_27F3BAC70, off_27969BA68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3BACA8);
  }

  return result;
}

void *sub_2500B2E58@<X0>(void *result@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t *a3@<X8>)
{
  v5 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    result = a2(*v3);
    if ((v5 & 0x8000000000000000) == 0 && v5 < result)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_2500B2EC8(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    result = a4(*v4);
    if ((v5 & 0x8000000000000000) == 0 && v5 < result)
    {
      *v6 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2500B2FF0@<X0>(uint64_t *a1@<X8>)
{
  result = geom_collection_size_4d(*v1);
  *a1 = result;
  return result;
}

uint64_t (*sub_2500B301C(uint64_t *a1, uint64_t *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x20uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *a2;
  v8 = (geom_collection_data_4d(*v2) + 32 * v7);
  v9 = v8[1];
  *v6 = *v8;
  v6[1] = v9;
  return sub_2500B5D20;
}

uint64_t sub_2500B30BC@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v8 = *v3;
  result = a2();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < v5)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *a3 = v6;
  a3[1] = v5;
  a3[2] = v8;

  return v8;
}

uint64_t sub_2500B3150@<X0>(uint64_t (*a1)(void)@<X2>, void *a2@<X8>)
{
  result = a1(*v2);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = 0;
    a2[1] = result;
  }

  return result;
}

void *sub_2500B3190@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X4>, uint64_t *a4@<X8>)
{
  v6 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = a3(*v4);
    if ((v6 & 0x8000000000000000) == 0 && result >= v6)
    {
      *a4 = v6;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2500B31E8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *a2;
  v9 = *v5;
  result = a5(v9);
  if (v7 < 0 || result < v7)
  {
    __break(1u);
  }

  else
  {
    result = a5(v9);
    if ((v8 & 0x8000000000000000) == 0 && result >= v8)
    {
      return v8 - v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_2500B3258(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_2500B3274(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_2500B3290(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2500B32F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_2500B3344()
{
  v1 = *v0;
  sub_2500B50AC(*v0, geom_collection_size_4d, sub_25009CEB0, geom_collection_data_4d);
  v3 = v2;

  return v3;
}

__n128 sub_2500B34C0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2500B3530(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  result = geom_collection_size_f(*a1);
  if (result < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a2 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (result < a3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = a4 == a5;
  v14 = a2 == a3;
  if (a2 != a3 && a4 != a5)
  {
    v15 = a5 - 1;
    while (a4 < a5)
    {
      v16 = *(geom_collection_data_f(a6) + 4 * a4);
      result = geom_collection_data_f(v11);
      *(result + 4 * a2) = v16;
      v17 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_16;
      }

      v13 = v15 == a4;
      v18 = v17 == a3;
      v14 = v17 == a3;
      if (!v18)
      {
        ++a2;
        v18 = v15 == a4++;
        if (!v18)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_12:
  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v13)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_2500B3630(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  result = geom_collection_size_d(*a1);
  if (result < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a2 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (result < a3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = a4 == a5;
  v14 = a2 == a3;
  if (a2 != a3 && a4 != a5)
  {
    v15 = a5 - 1;
    while (a4 < a5)
    {
      v16 = *(geom_collection_data_d(a6) + 8 * a4);
      result = geom_collection_data_d(v11);
      *(result + 8 * a2) = v16;
      v17 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_16;
      }

      v13 = v15 == a4;
      v18 = v17 == a3;
      v14 = v17 == a3;
      if (!v18)
      {
        ++a2;
        v18 = v15 == a4++;
        if (!v18)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_12:
  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v13)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_2500B3730(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  result = geom_collection_size_u16(*a1);
  if (result < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a2 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (result < a3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = a4 == a5;
  v14 = a2 == a3;
  if (a2 != a3 && a4 != a5)
  {
    v15 = a5 - 1;
    while (a4 < a5)
    {
      v16 = *(geom_collection_data_u16(a6) + 2 * a4);
      result = geom_collection_data_u16(v11);
      *(result + 2 * a2) = v16;
      v17 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_16;
      }

      v13 = v15 == a4;
      v18 = v17 == a3;
      v14 = v17 == a3;
      if (!v18)
      {
        ++a2;
        v18 = v15 == a4++;
        if (!v18)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_12:
  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v13)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_2500B3828(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  result = geom_collection_size_u64(*a1);
  if (result < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a2 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (result < a3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = a4 == a5;
  v14 = a2 == a3;
  if (a2 != a3 && a4 != a5)
  {
    v15 = a5 - 1;
    while (a4 < a5)
    {
      v16 = *(geom_collection_data_u64(a6) + 8 * a4);
      result = geom_collection_data_u64(v11);
      *(result + 8 * a2) = v16;
      v17 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_16;
      }

      v13 = v15 == a4;
      v18 = v17 == a3;
      v14 = v17 == a3;
      if (!v18)
      {
        ++a2;
        v18 = v15 == a4++;
        if (!v18)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_12:
  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v13)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_2500B3920(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t (*a8)(uint64_t))
{
  v14 = *a1;
  result = a7(*a1);
  if (result < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a2 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (result < a3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = a4 == a5;
  v17 = a2 == a3;
  if (a2 != a3 && a4 != a5)
  {
    v18 = a5 - 1;
    while (a4 < a5)
    {
      v19 = *(a8(a6) + 4 * a4);
      result = a8(v14);
      *(result + 4 * a2) = v19;
      v20 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_16;
      }

      v16 = v18 == a4;
      v21 = v20 == a3;
      v17 = v20 == a3;
      if (!v21)
      {
        ++a2;
        v21 = v18 == a4++;
        if (!v21)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_12:
  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v16)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_2500B3A30(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  result = geom_collection_size_i8(*a1);
  if (result < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a2 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (result < a3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = a4 == a5;
  v14 = a2 == a3;
  if (a2 != a3 && a4 != a5)
  {
    v15 = a5 - 1;
    while (a4 < a5)
    {
      v16 = *(geom_collection_data_i8(a6) + a4);
      result = geom_collection_data_i8(v11);
      *(result + a2) = v16;
      v17 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_16;
      }

      v13 = v15 == a4;
      v18 = v17 == a3;
      v14 = v17 == a3;
      if (!v18)
      {
        ++a2;
        v18 = v15 == a4++;
        if (!v18)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_12:
  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v13)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_2500B3B28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  result = geom_collection_size_2f(*a1);
  if (result < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a2 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (result < a3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = a4 == a5;
  v14 = a2 == a3;
  if (a2 != a3 && a4 != a5)
  {
    v15 = a5 - 1;
    while (a4 < a5)
    {
      v16 = *(geom_collection_data_2f(a6) + 8 * a4);
      result = geom_collection_data_2f(v11);
      *(result + 8 * a2) = v16;
      v17 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_16;
      }

      v13 = v15 == a4;
      v18 = v17 == a3;
      v14 = v17 == a3;
      if (!v18)
      {
        ++a2;
        v18 = v15 == a4++;
        if (!v18)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_12:
  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v13)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_2500B3C28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t (*a8)(uint64_t))
{
  v14 = *a1;
  result = a7(*a1);
  if (result < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a2 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (result < a3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = a4 == a5;
  v17 = a2 == a3;
  if (a2 != a3 && a4 != a5)
  {
    v18 = a5 - 1;
    while (a4 < a5)
    {
      v21 = *(a8(a6) + 16 * a4);
      result = a8(v14);
      *(result + 16 * a2) = v21;
      v19 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_16;
      }

      v16 = v18 == a4;
      v20 = v19 == a3;
      v17 = v19 == a3;
      if (!v20)
      {
        ++a2;
        v20 = v18 == a4++;
        if (!v20)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_12:
  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v16)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_2500B3D40(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  result = geom_collection_size_2d(*a1);
  if (result < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a2 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (result < a3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = a4 == a5;
  v14 = a2 == a3;
  if (a2 != a3 && a4 != a5)
  {
    v15 = a5 - 1;
    while (a4 < a5)
    {
      v18 = *(geom_collection_data_2d(a6) + 16 * a4);
      result = geom_collection_data_2d(v11);
      *(result + 16 * a2) = v18;
      v16 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_16;
      }

      v13 = v15 == a4;
      v17 = v16 == a3;
      v14 = v16 == a3;
      if (!v17)
      {
        ++a2;
        v17 = v15 == a4++;
        if (!v17)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_12:
  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v13)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_2500B3E48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t (*a8)(uint64_t))
{
  v14 = *a1;
  result = a7(*a1);
  if (result < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a2 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (result < a3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = a4 == a5;
  v17 = a2 == a3;
  if (a2 != a3 && a4 != a5)
  {
    v18 = a5 - 1;
    while (a4 < a5)
    {
      v19 = (a8(a6) + 32 * a4);
      v23 = v19[1];
      v24 = *v19;
      result = a8(v14);
      v20 = (result + 32 * a2);
      *v20 = v24;
      v20[1] = v23;
      v21 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_16;
      }

      v16 = v18 == a4;
      v22 = v21 == a3;
      v17 = v21 == a3;
      if (!v22)
      {
        ++a2;
        v22 = v18 == a4++;
        if (!v22)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_12:
  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v16)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_2500B3F68(uint64_t (*a1)(int *))
{
  v4 = *v1;
  v5 = geom_collection_size_f(*v1);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = v5;
  for (i = 0; i < v6; ++i)
  {
    v15 = *(geom_collection_data_f(v4) + 4 * i);
    v8 = a1(&v15);
    if (v2)
    {
      break;
    }

    if (v8)
    {
      v9 = v6;
      while (1)
      {
        result = geom_collection_size_f(v4);
        v6 = v9 - 1;
        if (v9 < 1 || v9 > result)
        {
          break;
        }

        if (i >= v6)
        {
          return i;
        }

        v14 = *(geom_collection_data_f(v4) + 4 * v9 - 4);
        v11 = a1(&v14);
        --v9;
        if ((v11 & 1) == 0)
        {
          v12 = *(geom_collection_data_f(v4) + 4 * i);
          v13 = *(geom_collection_data_f(v4) + 4 * v6);
          *(geom_collection_data_f(v4) + 4 * i) = v13;
          *(geom_collection_data_f(v4) + 4 * v6) = v12;
          goto LABEL_5;
        }
      }

      __break(1u);
      return result;
    }

LABEL_5:
    ;
  }

  return i;
}

uint64_t sub_2500B40A8(uint64_t (*a1)(uint64_t *))
{
  v4 = *v1;
  v5 = geom_collection_size_d(*v1);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = v5;
  for (i = 0; i < v6; ++i)
  {
    v14 = *(geom_collection_data_d(v4) + 8 * i);
    v8 = a1(&v14);
    if (v2)
    {
      break;
    }

    if (v8)
    {
      v9 = v6;
      while (1)
      {
        result = geom_collection_size_d(v4);
        v6 = v9 - 1;
        if (v9 < 1 || v9 > result)
        {
          break;
        }

        if (i >= v6)
        {
          return i;
        }

        v14 = *(geom_collection_data_d(v4) + 8 * v9 - 8);
        v11 = a1(&v14);
        --v9;
        if ((v11 & 1) == 0)
        {
          v12 = *(geom_collection_data_d(v4) + 8 * i);
          v13 = *(geom_collection_data_d(v4) + 8 * v6);
          *(geom_collection_data_d(v4) + 8 * i) = v13;
          *(geom_collection_data_d(v4) + 8 * v6) = v12;
          goto LABEL_5;
        }
      }

      __break(1u);
      return result;
    }

LABEL_5:
    ;
  }

  return i;
}

uint64_t sub_2500B41E8(uint64_t (*a1)(__int16 *))
{
  v4 = *v1;
  v5 = geom_collection_size_u16(*v1);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = v5;
  for (i = 0; i < v6; ++i)
  {
    v15 = *(geom_collection_data_u16(v4) + 2 * i);
    v8 = a1(&v15);
    if (v2)
    {
      break;
    }

    if (v8)
    {
      v9 = v6;
      while (1)
      {
        result = geom_collection_size_u16(v4);
        v6 = v9 - 1;
        if (v9 < 1 || v9 > result)
        {
          break;
        }

        if (i >= v6)
        {
          return i;
        }

        v14 = *(geom_collection_data_u16(v4) + 2 * v9 - 2);
        v11 = a1(&v14);
        --v9;
        if ((v11 & 1) == 0)
        {
          v12 = *(geom_collection_data_u16(v4) + 2 * i);
          v13 = *(geom_collection_data_u16(v4) + 2 * v6);
          *(geom_collection_data_u16(v4) + 2 * i) = v13;
          *(geom_collection_data_u16(v4) + 2 * v6) = v12;
          goto LABEL_5;
        }
      }

      __break(1u);
      return result;
    }

LABEL_5:
    ;
  }

  return i;
}

uint64_t sub_2500B4328(uint64_t (*a1)(uint64_t *))
{
  v4 = *v1;
  v5 = geom_collection_size_u64(*v1);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = v5;
  for (i = 0; i < v6; ++i)
  {
    v14 = *(geom_collection_data_u64(v4) + 8 * i);
    v8 = a1(&v14);
    if (v2)
    {
      break;
    }

    if (v8)
    {
      v9 = v6;
      while (1)
      {
        result = geom_collection_size_u64(v4);
        v6 = v9 - 1;
        if (v9 < 1 || v9 > result)
        {
          break;
        }

        if (i >= v6)
        {
          return i;
        }

        v14 = *(geom_collection_data_u64(v4) + 8 * v9 - 8);
        v11 = a1(&v14);
        --v9;
        if ((v11 & 1) == 0)
        {
          v12 = *(geom_collection_data_u64(v4) + 8 * i);
          v13 = *(geom_collection_data_u64(v4) + 8 * v6);
          *(geom_collection_data_u64(v4) + 8 * i) = v13;
          *(geom_collection_data_u64(v4) + 8 * v6) = v12;
          goto LABEL_5;
        }
      }

      __break(1u);
      return result;
    }

LABEL_5:
    ;
  }

  return i;
}

uint64_t sub_2500B4468(uint64_t (*a1)(int *), uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v9 = *v4;
  v10 = a3(*v4);
  if (v10 < 1)
  {
    return 0;
  }

  v11 = v10;
  for (i = 0; i < v11; ++i)
  {
    v20 = *(a4(v9) + 4 * i);
    v13 = a1(&v20);
    if (v5)
    {
      break;
    }

    if (v13)
    {
      v14 = v11;
      while (1)
      {
        result = a3(v9);
        v11 = v14 - 1;
        if (v14 < 1 || v14 > result)
        {
          break;
        }

        if (i >= v11)
        {
          return i;
        }

        v19 = *(a4(v9) + 4 * v14 - 4);
        v16 = a1(&v19);
        --v14;
        if ((v16 & 1) == 0)
        {
          v18 = *(a4(v9) + 4 * i);
          v17 = *(a4(v9) + 4 * v11);
          *(a4(v9) + 4 * i) = v17;
          *(a4(v9) + 4 * v11) = v18;
          goto LABEL_5;
        }
      }

      __break(1u);
      return result;
    }

LABEL_5:
    ;
  }

  return i;
}

uint64_t sub_2500B45E0(uint64_t (*a1)(char *))
{
  v4 = *v1;
  v5 = geom_collection_size_i8(*v1);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = v5;
  for (i = 0; i < v6; ++i)
  {
    v15 = *(geom_collection_data_i8(v4) + i);
    v8 = a1(&v15);
    if (v2)
    {
      break;
    }

    if (v8)
    {
      v9 = v6;
      while (1)
      {
        result = geom_collection_size_i8(v4);
        v6 = v9 - 1;
        if (v9 < 1 || v9 > result)
        {
          break;
        }

        if (i >= v6)
        {
          return i;
        }

        v14 = *(geom_collection_data_i8(v4) + v9 - 1);
        v11 = a1(&v14);
        --v9;
        if ((v11 & 1) == 0)
        {
          v12 = *(geom_collection_data_i8(v4) + i);
          v13 = *(geom_collection_data_i8(v4) + v6);
          *(geom_collection_data_i8(v4) + i) = v13;
          *(geom_collection_data_i8(v4) + v6) = v12;
          goto LABEL_5;
        }
      }

      __break(1u);
      return result;
    }

LABEL_5:
    ;
  }

  return i;
}

uint64_t sub_2500B4720(uint64_t (*a1)(uint64_t *))
{
  v4 = *v1;
  v5 = geom_collection_size_2f(*v1);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = v5;
  for (i = 0; i < v6; ++i)
  {
    v14 = *(geom_collection_data_2f(v4) + 8 * i);
    v8 = a1(&v14);
    if (v2)
    {
      break;
    }

    if (v8)
    {
      v9 = v6;
      while (1)
      {
        result = geom_collection_size_2f(v4);
        v6 = v9 - 1;
        if (v9 < 1 || v9 > result)
        {
          break;
        }

        if (i >= v6)
        {
          return i;
        }

        v14 = *(geom_collection_data_2f(v4) + 8 * v9 - 8);
        v11 = a1(&v14);
        --v9;
        if ((v11 & 1) == 0)
        {
          v12 = *(geom_collection_data_2f(v4) + 8 * i);
          v13 = *(geom_collection_data_2f(v4) + 8 * v6);
          *(geom_collection_data_2f(v4) + 8 * i) = v13;
          *(geom_collection_data_2f(v4) + 8 * v6) = v12;
          goto LABEL_5;
        }
      }

      __break(1u);
      return result;
    }

LABEL_5:
    ;
  }

  return i;
}

uint64_t sub_2500B4860(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v9 = *v4;
  v10 = a3(*v4);
  if (v10 < 1)
  {
    return 0;
  }

  v11 = v10;
  for (i = 0; i < v11; ++i)
  {
    v21 = *(a4(v9) + 16 * i);
    v13 = a1(&v21);
    if (v5)
    {
      break;
    }

    if (v13)
    {
      v14 = v11;
      while (1)
      {
        result = a3(v9);
        v11 = v14 - 1;
        if (v14 < 1 || v14 > result)
        {
          break;
        }

        if (i >= v11)
        {
          return i;
        }

        v21 = *(a4(v9) + 16 * v14 - 16);
        v16 = a1(&v21);
        --v14;
        if ((v16 & 1) == 0)
        {
          v17 = a4(v9);
          v22 = 16 * i;
          v20 = *(v17 + 16 * i);
          v19 = *(a4(v9) + 16 * v11);
          v18 = a4(v9);
          *(v18 + v22) = v19;
          *(a4(v9) + 16 * v11) = v20;
          goto LABEL_5;
        }
      }

      __break(1u);
      return result;
    }

LABEL_5:
    ;
  }

  return i;
}

uint64_t sub_2500B49F0(uint64_t (*a1)(__int128 *))
{
  v4 = *v1;
  v5 = geom_collection_size_2d(*v1);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = v5;
  for (i = 0; i < v6; ++i)
  {
    v14 = *(geom_collection_data_2d(v4) + 16 * i);
    v8 = a1(&v14);
    if (v2)
    {
      break;
    }

    if (v8)
    {
      v9 = v6;
      while (1)
      {
        result = geom_collection_size_2d(v4);
        v6 = v9 - 1;
        if (v9 < 1 || v9 > result)
        {
          break;
        }

        if (i >= v6)
        {
          return i;
        }

        v14 = *(geom_collection_data_2d(v4) + 16 * v9 - 16);
        v11 = a1(&v14);
        --v9;
        if ((v11 & 1) == 0)
        {
          v13 = *(geom_collection_data_2d(v4) + 16 * i);
          v12 = *(geom_collection_data_2d(v4) + 16 * v6);
          *(geom_collection_data_2d(v4) + 16 * i) = v12;
          *(geom_collection_data_2d(v4) + 16 * v6) = v13;
          goto LABEL_5;
        }
      }

      __break(1u);
      return result;
    }

LABEL_5:
    ;
  }

  return i;
}

uint64_t sub_2500B4B48(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v9 = *v4;
  v10 = a3(*v4);
  if (v10 < 1)
  {
    return 0;
  }

  v11 = v10;
  for (i = 0; i < v11; ++i)
  {
    v13 = (a4(v9) + 32 * i);
    v14 = v13[1];
    v31 = *v13;
    v32 = v14;
    v15 = a1(&v31);
    if (v5)
    {
      break;
    }

    if (v15)
    {
      v16 = v11;
      while (1)
      {
        result = a3(v9);
        v11 = v16 - 1;
        if (v16 < 1 || v16 > result)
        {
          break;
        }

        if (i >= v11)
        {
          return i;
        }

        v18 = a4(v9) + 32 * v16;
        v19 = *(v18 - 16);
        v31 = *(v18 - 32);
        v32 = v19;
        v20 = a1(&v31);
        --v16;
        if ((v20 & 1) == 0)
        {
          v21 = a4(v9);
          v33 = 32 * i;
          v22 = (v21 + 32 * i);
          v29 = v22[1];
          v30 = *v22;
          v23 = (a4(v9) + 32 * v11);
          v27 = v23[1];
          v28 = *v23;
          v24 = a4(v9);
          v25 = (v24 + v33);
          *v25 = v28;
          v25[1] = v27;
          v26 = (a4(v9) + 32 * v11);
          *v26 = v30;
          v26[1] = v29;
          goto LABEL_5;
        }
      }

      __break(1u);
      return result;
    }

LABEL_5:
    ;
  }

  return i;
}

void *sub_2500B4CEC(void *a1)
{
  v2 = geom_collection_size_d(a1);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v2;
  v4 = sub_25009CE74(v2, 0);
  result = a1;
  v6 = v3 < 1;
  v7 = v3 - 1;
  if (!v6)
  {
    v8 = result;
    if (geom_collection_size_d(result))
    {
      v9 = 0;
      while (1)
      {
        v4[v9 + 4] = *(geom_collection_data_d(v8) + 8 * v9);
        if (v7 == v9)
        {
          break;
        }

        if (++v9 == geom_collection_size_d(v8))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:

      __break(1u);
    }

    return v4;
  }

  __break(1u);
  return result;
}

void *sub_2500B4DA4(void *a1)
{
  v2 = geom_collection_size_f(a1);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v2;
  v4 = sub_25009CE88(v2, 0);
  result = a1;
  v6 = v3 < 1;
  v7 = v3 - 1;
  if (!v6)
  {
    v8 = result;
    if (geom_collection_size_f(result))
    {
      v9 = 0;
      while (1)
      {
        *(v4 + v9 + 8) = *(geom_collection_data_f(v8) + 4 * v9);
        if (v7 == v9)
        {
          break;
        }

        if (++v9 == geom_collection_size_f(v8))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:

      __break(1u);
    }

    return v4;
  }

  __break(1u);
  return result;
}

id sub_2500B4E5C(void *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, void), uint64_t (*a4)(void *))
{
  v8 = a2();
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = v8;
  v10 = a3(v8, 0);
  result = a1;
  v12 = v9 < 1;
  v13 = v9 - 1;
  if (!v12)
  {
    v14 = result;
    if (a2())
    {
      v15 = 0;
      while (1)
      {
        *(v10 + 4 * v15 + 32) = *(a4(v14) + 4 * v15);
        if (v13 == v15)
        {
          break;
        }

        if (++v15 == (a2)(v14))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:

      __break(1u);
    }

    return v10;
  }

  __break(1u);
  return result;
}

void *sub_2500B4F3C(void *a1)
{
  v2 = geom_collection_size_2d(a1);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v2;
  v4 = sub_25009D738(v2, 0);
  result = a1;
  v6 = v3 < 1;
  v7 = v3 - 1;
  if (!v6)
  {
    v8 = result;
    if (geom_collection_size_2d(result))
    {
      v9 = 0;
      while (1)
      {
        *&v4[2 * v9 + 4] = *(geom_collection_data_2d(v8) + 16 * v9);
        if (v7 == v9)
        {
          break;
        }

        if (++v9 == geom_collection_size_2d(v8))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:

      __break(1u);
    }

    return v4;
  }

  __break(1u);
  return result;
}

void *sub_2500B4FF4(void *a1)
{
  v2 = geom_collection_size_2f(a1);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v2;
  v4 = sub_25009D734(v2, 0);
  result = a1;
  v6 = v3 < 1;
  v7 = v3 - 1;
  if (!v6)
  {
    v8 = result;
    if (geom_collection_size_2f(result))
    {
      v9 = 0;
      while (1)
      {
        v4[v9 + 4] = *(geom_collection_data_2f(v8) + 8 * v9);
        if (v7 == v9)
        {
          break;
        }

        if (++v9 == geom_collection_size_2f(v8))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:

      __break(1u);
    }

    return v4;
  }

  __break(1u);
  return result;
}

void sub_2500B50AC(void *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, void), uint64_t (*a4)(id))
{
  v8 = a2();
  if (v8)
  {
    v9 = v8;
    v10 = a3(v8, 0);
    v11 = a1;
    v12 = 0;
    while ((v9 & ~(v9 >> 63)) != v12)
    {
      if (v12 == (a2)(v11))
      {
        goto LABEL_9;
      }

      v13 = v10 + 32 * v12;
      v14 = (a4(v11) + 32 * v12);
      v15 = v14[1];
      *(v13 + 32) = *v14;
      *(v13 + 48) = v15;
      if (v9 == ++v12)
      {

        return;
      }
    }

    __break(1u);
LABEL_9:

    __break(1u);
  }
}

id sub_2500B5190(void *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, void), uint64_t (*a4)(void *))
{
  v8 = a2();
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = v8;
  v10 = a3(v8, 0);
  result = a1;
  v12 = v9 < 1;
  v13 = v9 - 1;
  if (!v12)
  {
    v14 = result;
    if (a2())
    {
      v15 = 0;
      while (1)
      {
        *(v10 + 16 * v15 + 32) = *(a4(v14) + 16 * v15);
        if (v13 == v15)
        {
          break;
        }

        if (++v15 == (a2)(v14))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:

      __break(1u);
    }

    return v10;
  }

  __break(1u);
  return result;
}

void *sub_2500B5270(void *a1)
{
  v2 = geom_collection_size_i8(a1);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v2;
  v4 = sub_2500B5B80(v2, 0);
  result = a1;
  v6 = v3 < 1;
  v7 = v3 - 1;
  if (!v6)
  {
    v8 = result;
    if (geom_collection_size_i8(result))
    {
      v9 = 0;
      while (1)
      {
        *(v4 + v9 + 32) = *(geom_collection_data_i8(v8) + v9);
        if (v7 == v9)
        {
          break;
        }

        if (++v9 == geom_collection_size_i8(v8))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:

      __break(1u);
    }

    return v4;
  }

  __break(1u);
  return result;
}

void *sub_2500B5324(void *a1)
{
  v2 = geom_collection_size_u16(a1);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v2;
  v4 = sub_2500B5BF4(v2, 0);
  result = a1;
  v6 = v3 < 1;
  v7 = v3 - 1;
  if (!v6)
  {
    v8 = result;
    if (geom_collection_size_u16(result))
    {
      v9 = 0;
      while (1)
      {
        *(v4 + v9 + 16) = *(geom_collection_data_u16(v8) + 2 * v9);
        if (v7 == v9)
        {
          break;
        }

        if (++v9 == geom_collection_size_u16(v8))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:

      __break(1u);
    }

    return v4;
  }

  __break(1u);
  return result;
}

void *sub_2500B53DC(void *a1)
{
  v2 = geom_collection_size_u64(a1);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v2;
  v4 = sub_25009D73C(v2, 0);
  result = a1;
  v6 = v3 < 1;
  v7 = v3 - 1;
  if (!v6)
  {
    v8 = result;
    if (geom_collection_size_u64(result))
    {
      v9 = 0;
      while (1)
      {
        v4[v9 + 4] = *(geom_collection_data_u64(v8) + 8 * v9);
        if (v7 == v9)
        {
          break;
        }

        if (++v9 == geom_collection_size_u64(v8))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:

      __break(1u);
    }

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t *sub_2500B5494(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *v4 = v3;
    v4[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = a3;
    v8 = a3 - 1;
    while (1)
    {
      if (v6 == geom_collection_size_d(v3))
      {
        a3 = v6;
        goto LABEL_13;
      }

      *(a2 + 8 * v6) = *(geom_collection_data_d(v3) + 8 * v6);
      if (v8 == v6)
      {
        break;
      }

      if (__OFADD__(++v6, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a3 = v7;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t *sub_2500B553C(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *v4 = v3;
    v4[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = a3;
    v8 = a3 - 1;
    while (1)
    {
      if (v6 == geom_collection_size_f(v3))
      {
        a3 = v6;
        goto LABEL_13;
      }

      *(a2 + 4 * v6) = *(geom_collection_data_f(v3) + 4 * v6);
      if (v8 == v6)
      {
        break;
      }

      if (__OFADD__(++v6, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a3 = v7;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *sub_2500B55E4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v6 = result;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *v6 = v5;
    v6[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = a3;
    v12 = a3 - 1;
    while (1)
    {
      if (v10 == a4(v5))
      {
        a3 = v10;
        goto LABEL_13;
      }

      *(a2 + 4 * v10) = *(a5(v5) + 4 * v10);
      if (v12 == v10)
      {
        break;
      }

      if (__OFADD__(++v10, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a3 = v11;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t *sub_2500B56A4(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *v4 = v3;
    v4[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = a3;
    v8 = a3 - 1;
    while (1)
    {
      if (v6 == geom_collection_size_2d(v3))
      {
        a3 = v6;
        goto LABEL_13;
      }

      *(a2 + 16 * v6) = *(geom_collection_data_2d(v3) + 16 * v6);
      if (v8 == v6)
      {
        break;
      }

      if (__OFADD__(++v6, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a3 = v7;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t *sub_2500B5750(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *v4 = v3;
    v4[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = a3;
    v8 = a3 - 1;
    while (1)
    {
      if (v6 == geom_collection_size_2f(v3))
      {
        a3 = v6;
        goto LABEL_13;
      }

      *(a2 + 8 * v6) = *(geom_collection_data_2f(v3) + 8 * v6);
      if (v8 == v6)
      {
        break;
      }

      if (__OFADD__(++v6, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a3 = v7;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *sub_2500B57F8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v6 = result;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *v6 = v5;
    v6[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = a3;
    v12 = a3 - 1;
    while (1)
    {
      if (v10 == a4(v5))
      {
        a3 = v10;
        goto LABEL_13;
      }

      v13 = (a5(v5) + 32 * v10);
      v14 = v13[1];
      v15 = (a2 + 32 * v10);
      *v15 = *v13;
      v15[1] = v14;
      if (v12 == v10)
      {
        break;
      }

      if (__OFADD__(++v10, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a3 = v11;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *sub_2500B58C4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v6 = result;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *v6 = v5;
    v6[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = a3;
    v12 = a3 - 1;
    while (1)
    {
      if (v10 == a4(v5))
      {
        a3 = v10;
        goto LABEL_13;
      }

      *(a2 + 16 * v10) = *(a5(v5) + 16 * v10);
      if (v12 == v10)
      {
        break;
      }

      if (__OFADD__(++v10, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a3 = v11;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t *sub_2500B5988(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *v4 = v3;
    v4[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = a3;
    v8 = a3 - 1;
    while (1)
    {
      if (v6 == geom_collection_size_i8(v3))
      {
        a3 = v6;
        goto LABEL_13;
      }

      *(a2 + v6) = *(geom_collection_data_i8(v3) + v6);
      if (v8 == v6)
      {
        break;
      }

      if (__OFADD__(++v6, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a3 = v7;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t *sub_2500B5A30(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *v4 = v3;
    v4[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = a3;
    v8 = a3 - 1;
    while (1)
    {
      if (v6 == geom_collection_size_u16(v3))
      {
        a3 = v6;
        goto LABEL_13;
      }

      *(a2 + 2 * v6) = *(geom_collection_data_u16(v3) + 2 * v6);
      if (v8 == v6)
      {
        break;
      }

      if (__OFADD__(++v6, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a3 = v7;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t *sub_2500B5AD8(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *v4 = v3;
    v4[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = a3;
    v8 = a3 - 1;
    while (1)
    {
      if (v6 == geom_collection_size_u64(v3))
      {
        a3 = v6;
        goto LABEL_13;
      }

      *(a2 + 8 * v6) = *(geom_collection_data_u64(v3) + 8 * v6);
      if (v8 == v6)
      {
        break;
      }

      if (__OFADD__(++v6, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a3 = v7;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *sub_2500B5B80(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3BACD0, &qword_2500D66A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_2500B5BF4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3BACD8, &qword_2500D66B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = (v5 - 32 + ((v5 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

uint64_t geom_quadratic_bezier_2f.init(powerBasis:)(double a1, double a2, double a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D85DE8];

  return sub_2500B5E34(geom_power_basis_convert_to_quadratic_bezier_2f, a1, a2, a3);
}

uint64_t geom_quadratic_bezier_2f.init(interpolatePoints:)(double a1, double a2, double a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D85DE8];

  return sub_2500B5E34(geom_quadratic_bezier_interpolate_points_2f, a1, a2, a3);
}

uint64_t sub_2500B5E34(uint64_t (*a1)(void *), double a2, double a3, double a4)
{
  v6[3] = *MEMORY[0x277D85DE8];
  *v6 = a2;
  *&v6[1] = a3;
  *&v6[2] = a4;
  result = a1(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

double geom_quadratic_bezier_2f.subdivided(at:)@<D0>(uint64_t a1@<X8>, float a2@<S0>, float32x2_t a3@<D1>, float32x2_t a4@<D2>, float32x2_t a5@<D3>)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = 0uLL;
  v14 = 0;
  v11 = 0uLL;
  v12 = 0;
  geom_quadratic_bezier_subdivide_2f(&v13, &v11, a3, a4, a5, a2);
  result = *&v13;
  v7 = v14;
  v8 = v11;
  v9 = v12;
  *a1 = v13;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 40) = v9;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

double geom_quadratic_bezier_2f.powerBasis.getter(float32x2_t a1, float32x2_t a2, float32x2_t a3)
{
  v5[3] = *MEMORY[0x277D85DE8];
  memset(v5, 0, 24);
  geom_quadratic_bezier_convert_to_power_basis_2f(v5, a1, a2, a3);
  result = *v5;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

double geom_quadratic_bezier_2f.findRoots(withXValue:)@<D0>(void *a1@<X8>, float a2@<S0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D85DE8];

  return sub_2500B6070(geom_quadratic_bezier_find_roots_at_x_2f, a1, a2, a3, a4, a5);
}

double geom_quadratic_bezier_2f.findRoots(withYValue:)@<D0>(void *a1@<X8>, float a2@<S0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D85DE8];

  return sub_2500B6070(geom_quadratic_bezier_find_roots_at_y_2f, a1, a2, a3, a4, a5);
}

double sub_2500B6070@<D0>(uint64_t (*a1)(void *, double, double, double, float)@<X0>, void *a2@<X8>, float a3@<S0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v7 = a1(v10, a4, a5, a6, a3);
  result = *v10;
  *a2 = v10[0];
  a2[1] = v7;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

double geom_quadratic_bezier_2f.findMonotonicIntervals()@<D0>(uint64_t a1@<X8>, float32x2_t a2@<D0>, float32x2_t a3@<D1>, float32x2_t a4@<D2>)
{
  v9 = *MEMORY[0x277D85DE8];
  *v8 = 0uLL;
  monotonic_intervals_2f = geom_quadratic_bezier_find_monotonic_intervals_2f(v8, a2, a3, a4);
  result = v8[0];
  *a1 = *v8;
  *(a1 + 16) = monotonic_intervals_2f;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __swiftcall geom_quadratic_bezier_2f.orientedBBoxMatrix()(simd_float3x3 *__return_ptr retstr)
{
  *v5.i64 = geom_oriented_bounding_box_matrix_of_quadratic_bezier_2f(v1, v2, v3);
  retstr->columns[0] = v5;
  retstr->columns[1] = v6;
  retstr->columns[2] = v7;
}

void sub_2500B61A0(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D85DE8];

  sub_2500B6278(a1, a2, a3, geom_power_basis_convert_to_quadratic_bezier_2f, a4);
}

void sub_2500B620C(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D85DE8];

  sub_2500B6278(a1, a2, a3, geom_quadratic_bezier_interpolate_points_2f, a4);
}

void sub_2500B6278(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, double (*a4)(void *)@<X5>, uint64_t a5@<X8>)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = *a3;
  v11[0] = *a1;
  v11[1] = v6;
  v11[2] = v7;
  *a5 = a4(v11);
  *(a5 + 8) = v8;
  *(a5 + 16) = v9;
  v10 = *MEMORY[0x277D85DE8];
}

void sub_2500B62F4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  geom_quadratic_bezier_elevate_from_linear_2f();
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
}

void sub_2500B6324(float32x2_t *a1@<X0>, float32x2_t *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  *a2 = geom_quadratic_bezier_from_derivative_of_cubic_bezier_2f(*a1, a1[1]);
  a2[1] = v5;
  a2[2] = v6;
}

double sub_2500B6358(double *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v14 = 0.0;
  v15 = 0;
  v16 = 0;
  geom_quadratic_bezier_convert_to_power_basis_2f(&v14, v7, v8, v9);
  result = v14;
  v11 = v15;
  v12 = v16;
  *a1 = v14;
  *a2 = v11;
  *a3 = v12;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2500B63E8(uint64_t a1, uint64_t a2, float *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v17 = 0uLL;
  v18 = 0;
  v15 = 0uLL;
  v16 = 0;
  geom_quadratic_bezier_subdivide_2f(&v17, &v15, v7, v8, v9, v6);
  result = *&v17;
  v11 = v18;
  v12 = v15;
  v13 = v16;
  *a1 = v17;
  *(a1 + 16) = v11;
  *a2 = v12;
  *(a2 + 16) = v13;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2500B6490@<D0>(float *a1@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_2500B6568(a1, geom_quadratic_bezier_find_roots_at_x_2f, a2);
}

double sub_2500B64FC@<D0>(float *a1@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_2500B6568(a1, geom_quadratic_bezier_find_roots_at_y_2f, a2);
}

double sub_2500B6568@<D0>(float *a1@<X0>, uint64_t (*a2)(void *, double, double, double, float)@<X3>, void *a3@<X8>)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v12[0] = 0;
  v9 = a2(v12, v6, v7, v8, v5);
  result = *v12;
  *a3 = v12[0];
  a3[1] = v9;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2500B65E8@<D0>(uint64_t a1@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  *v9 = 0uLL;
  monotonic_intervals_2f = geom_quadratic_bezier_find_monotonic_intervals_2f(v9, v3, v4, v5);
  result = v9[0];
  *a1 = *v9;
  *(a1 + 16) = monotonic_intervals_2f;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2500B6660(float *a1@<X0>, int *a2@<X1>, float32x2_t *a3@<X8>)
{
  v5 = *a2;
  *a3 = geom_quadratic_bezier_extract_2f(*v3, v3[1], v3[2], *a1);
  a3[1] = v6;
  a3[2] = v7;
}

void sub_2500B6840(uint64_t a1@<X8>)
{
  *a1 = geom_oriented_bounding_box_of_quadratic_bezier_2f(*v1, v1[1], v1[2]);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

void sub_2500B6874(_OWORD *a1@<X8>)
{
  *&v3 = geom_oriented_bounding_box_matrix_of_quadratic_bezier_2f(*v1, v1[1], v1[2]);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
}

uint64_t geom_quadratic_bezier_2d.init(powerBasis:)(__n128 a1, __n128 a2, __n128 a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D85DE8];

  return sub_2500B6980(geom_power_basis_convert_to_quadratic_bezier_2d, a1, a2, a3);
}

uint64_t geom_quadratic_bezier_2d.init(interpolatePoints:)(__n128 a1, __n128 a2, __n128 a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D85DE8];

  return sub_2500B6980(geom_quadratic_bezier_interpolate_points_2d, a1, a2, a3);
}

uint64_t sub_2500B6980(uint64_t (*a1)(_OWORD *), __n128 a2, __n128 a3, __n128 a4)
{
  v7 = *MEMORY[0x277D85DE8];
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  result = a1(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

float64_t geom_quadratic_bezier_2d.subdivided(at:)@<D0>(uint64_t a1@<X8>, double a2@<D0>, float64x2_t a3@<Q1>, float64x2_t a4@<Q2>, float64x2_t a5@<Q3>)
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  geom_quadratic_bezier_subdivide_2d(&v16, &v13, a3, a4, a5, a2);
  result = v16.f64[0];
  v7 = v17;
  v8 = v18;
  v9 = v13;
  v10 = v14;
  v11 = v15;
  *a1 = v16;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v10;
  *(a1 + 80) = v11;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

float64_t geom_quadratic_bezier_2d.powerBasis.getter(float64x2_t a1, float64x2_t a2, float64x2_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  geom_quadratic_bezier_convert_to_power_basis_2d(v5, a1, a2, a3);
  result = v5[0].f64[0];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

double geom_quadratic_bezier_2d.findRoots(withXValue:)@<D0>(uint64_t a1@<X8>, double a2@<D0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D85DE8];

  return sub_2500B6BBC(geom_quadratic_bezier_find_roots_at_x_2d, a1, a2, a3, a4, a5);
}

double geom_quadratic_bezier_2d.findRoots(withYValue:)@<D0>(uint64_t a1@<X8>, double a2@<D0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D85DE8];

  return sub_2500B6BBC(geom_quadratic_bezier_find_roots_at_y_2d, a1, a2, a3, a4, a5);
}

double sub_2500B6BBC@<D0>(uint64_t (*a1)(double *, __n128, __n128, __n128, double)@<X0>, uint64_t a2@<X8>, double a3@<D0>, __n128 a4@<Q1>, __n128 a5@<Q2>, __n128 a6@<Q3>)
{
  v11 = *MEMORY[0x277D85DE8];
  *v10 = 0uLL;
  v7 = a1(v10, a4, a5, a6, a3);
  result = v10[0];
  *a2 = *v10;
  *(a2 + 16) = v7;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 geom_quadratic_bezier_2d.findMonotonicIntervals()@<Q0>(uint64_t a1@<X8>, float64x2_t a2@<Q0>, float64x2_t a3@<Q1>, float64x2_t a4@<Q2>)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  monotonic_intervals_2d = geom_quadratic_bezier_find_monotonic_intervals_2d(&v8, a2, a3, a4);
  result = v9;
  *a1 = v8;
  *(a1 + 16) = result;
  *(a1 + 32) = monotonic_intervals_2d;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void __swiftcall geom_quadratic_bezier_2d.orientedBBoxMatrix()(simd_double3x3 *__return_ptr retstr)
{
  geom_oriented_bounding_box_matrix_of_quadratic_bezier_2d(v10, v1, v2, v3);
  v5 = v10[1];
  v6 = v10[2];
  v7 = v10[3];
  v8 = v10[4];
  v9 = v10[5];
  *retstr->columns[0].f64 = v10[0];
  *&retstr->columns[0].f64[2] = v5;
  *retstr->columns[1].f64 = v6;
  *&retstr->columns[1].f64[2] = v7;
  *retstr->columns[2].f64 = v8;
  *&retstr->columns[2].f64[2] = v9;
}

void sub_2500B6D0C(_OWORD *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D85DE8];

  sub_2500B6DE4(a1, a2, a3, geom_power_basis_convert_to_quadratic_bezier_2d, a4);
}

void sub_2500B6D78(_OWORD *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D85DE8];

  sub_2500B6DE4(a1, a2, a3, geom_quadratic_bezier_interpolate_points_2d, a4);
}

void sub_2500B6DE4(_OWORD *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, double (*a4)(_OWORD *)@<X5>, _OWORD *a5@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = *a3;
  v12[0] = *a1;
  v12[1] = v6;
  v12[2] = v7;
  *&v8 = a4(v12);
  *a5 = v8;
  a5[1] = v9;
  a5[2] = v10;
  v11 = *MEMORY[0x277D85DE8];
}

void sub_2500B6E60(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  geom_quadratic_bezier_elevate_from_linear_2d();
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
}

void sub_2500B6E90(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  *&v5 = geom_quadratic_bezier_from_derivative_of_cubic_bezier_2d(*a1, *(a1 + 16));
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
}

float64_t sub_2500B6EC4(float64x2_t *a1, _OWORD *a2, _OWORD *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  geom_quadratic_bezier_convert_to_power_basis_2d(&v14, v7, v8, v9);
  result = v14.f64[0];
  v11 = v15;
  v12 = v16;
  *a1 = v14;
  *a2 = v11;
  *a3 = v12;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

float64_t sub_2500B6F58(uint64_t a1, float64x2_t *a2, double *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  geom_quadratic_bezier_subdivide_2d(&v20, &v17, v7, v8, v9, v6);
  result = v20.f64[0];
  v11 = v21;
  v12 = v22;
  v13 = v17;
  v14 = v18;
  v15 = v19;
  *a1 = v20;
  *(a1 + 16) = v11;
  *(a1 + 32) = v12;
  *a2 = v13;
  a2[1] = v14;
  a2[2] = v15;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2500B7000@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_2500B70D8(a1, geom_quadratic_bezier_find_roots_at_x_2d, a2);
}

double sub_2500B706C@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_2500B70D8(a1, geom_quadratic_bezier_find_roots_at_y_2d, a2);
}

double sub_2500B70D8@<D0>(double *a1@<X0>, uint64_t (*a2)(double *, __n128, __n128, __n128, double)@<X3>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  *v12 = 0uLL;
  v9 = a2(v12, v6, v7, v8, v5);
  result = v12[0];
  *a3 = *v12;
  *(a3 + 16) = v9;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 sub_2500B7158@<Q0>(uint64_t a1@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v9 = 0u;
  v10 = 0u;
  monotonic_intervals_2d = geom_quadratic_bezier_find_monotonic_intervals_2d(&v9, v3, v4, v5);
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  *(a1 + 32) = monotonic_intervals_2d;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2500B71D4(double *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a2;
  *&v6 = geom_quadratic_bezier_extract_2d(*v3, v3[1], v3[2], *a1);
  *a3 = v6;
  a3[1] = v7;
  a3[2] = v8;
}

void sub_2500B7380(double (*a1)(__n128, __n128, __n128)@<X2>, _OWORD *a2@<X8>)
{
  *&v4 = a1(*v2, v2[1], v2[2]);
  *a2 = v4;
  a2[1] = v5;
}

void sub_2500B73B4(_OWORD *a1@<X8>)
{
  *&v3 = geom_oriented_bounding_box_of_quadratic_bezier_2d(*v1, v1[1], v1[2]);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
}

double sub_2500B73E8@<D0>(_OWORD *a1@<X8>)
{
  geom_oriented_bounding_box_matrix_of_quadratic_bezier_2d(v9, *v1, v1[1], v1[2]);
  result = *v9;
  v4 = v9[1];
  v5 = v9[2];
  v6 = v9[3];
  v7 = v9[4];
  v8 = v9[5];
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  return result;
}

uint64_t geom_cubic_bezier_2f.init(interpolatePoints:)(double a1, double a2, double a3, double a4)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D85DE8];

  return sub_2500B756C(geom_cubic_bezier_interpolate_points_2f, a1, a2, a3, a4);
}

void geom_cubic_bezier_2f.init(interpolatePoints:derivatives:)(float32x2_t a1, float32x2_t a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = a1;
  v4[1] = a2;
  v3[0] = a1;
  v3[1] = a2;
  geom_cubic_bezier_interpolate_points_and_derivatives_2f(v4, v3);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t geom_cubic_bezier_2f.init(powerBasis:)(double a1, double a2, double a3, double a4)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D85DE8];

  return sub_2500B756C(geom_power_basis_convert_to_cubic_bezier_2f, a1, a2, a3, a4);
}

uint64_t sub_2500B756C(uint64_t (*a1)(void *), double a2, double a3, double a4, double a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  *v7 = a2;
  *&v7[1] = a3;
  *&v7[2] = a4;
  *&v7[3] = a5;
  result = a1(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

double geom_cubic_bezier_2f.powerBasis.getter(float32x2_t a1, float32x2_t a2, float32x2_t a3, float32x2_t a4)
{
  v7 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  geom_cubic_bezier_convert_to_power_basis_2f(v6, a1, a2, a3, a4);
  result = *v6;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

double geom_cubic_bezier_2f.subdivided(at:)@<D0>(_OWORD *a1@<X8>, float a2@<S0>, float32x2_t a3@<D1>, float32x2_t a4@<D2>, float32x2_t a5@<D3>, float32x2_t a6@<D4>)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  geom_cubic_bezier_subdivide_2f(&v14, &v12, a3, a4, a5, a6, a2);
  result = *&v14;
  v8 = v15;
  v9 = v12;
  v10 = v13;
  *a1 = v14;
  a1[1] = v8;
  a1[2] = v9;
  a1[3] = v10;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

double geom_cubic_bezier_2f.findRoots(withXValue:)@<D0>(uint64_t a1@<X8>, float a2@<S0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D85DE8];

  *&result = sub_2500B77A8(geom_cubic_bezier_find_roots_at_x_2f, a1, a2, a3, a4, a5, a6).n128_u64[0];
  return result;
}

double geom_cubic_bezier_2f.findRoots(withYValue:)@<D0>(uint64_t a1@<X8>, float a2@<S0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D85DE8];

  *&result = sub_2500B77A8(geom_cubic_bezier_find_roots_at_y_2f, a1, a2, a3, a4, a5, a6).n128_u64[0];
  return result;
}

__n128 sub_2500B77A8@<Q0>(uint64_t (*a1)(__n128 *, double, double, double, double, float)@<X0>, uint64_t a2@<X8>, float a3@<S0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0uLL;
  v8 = a1(&v11, a4, a5, a6, a7, a3);
  result = v11;
  *a2 = v11.n128_u64[0];
  *(a2 + 8) = result.n128_u32[2];
  *(a2 + 16) = v8;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

double geom_cubic_bezier_2f.findMonotonicIntervals()@<D0>(uint64_t a1@<X8>, float32x2_t a2@<D0>, float32x2_t a3@<D1>, float32x2_t a4@<D2>, float32x2_t a5@<D3>)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  *v10 = 0u;
  monotonic_intervals_2f = geom_cubic_bezier_find_monotonic_intervals_2f(&v9, a2, a3, a4, a5);
  result = v10[0];
  *a1 = v9;
  *(a1 + 16) = result;
  *(a1 + 24) = monotonic_intervals_2f;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

double geom_cubic_bezier_2f.findCharacteristicPoints()(double *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v5 = 0.0;
  characteristic_points_2f = geom_cubic_bezier_find_characteristic_points_2f(&v6, &v5);
  result = v5;
  *a1 = v5;
  *(a1 + 1) = characteristic_points_2f;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

double geom_cubic_bezier_2f.fitWithQuadraticBezierPair(at:)@<D0>(uint64_t a1@<X8>, float a2@<S0>, float32x2_t a3@<D1>, float32x2_t a4@<D2>, float32x2_t a5@<D3>, float32x2_t a6@<D4>)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0uLL;
  v15 = 0;
  v12 = 0uLL;
  v13 = 0;
  geom_cubic_bezier_fit_with_quadratic_bezier_pair_2f(&v14, &v12, a3, a4, a5, a6, a2);
  result = *&v14;
  v8 = v15;
  v9 = v12;
  v10 = v13;
  *a1 = v14;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 40) = v10;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void __swiftcall geom_cubic_bezier_2f.orientedBBoxMatrix()(simd_float3x3 *__return_ptr retstr)
{
  *v6.i64 = geom_oriented_bounding_box_matrix_of_cubic_bezier_2f(v1, v2, v3, v4);
  retstr->columns[0] = v6;
  retstr->columns[1] = v7;
  retstr->columns[2] = v8;
}

void sub_2500B7A10(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  geom_cubic_bezier_elevate_from_linear_2f();
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
}

void sub_2500B7A40(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  geom_cubic_bezier_elevate_from_quadratic_bezier_2f();
  *a2 = v6;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v9;
}

void sub_2500B7A74(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D85DE8];

  sub_2500B7B4C(a1, a2, a3, a4, geom_power_basis_convert_to_cubic_bezier_2f, a5);
}

void sub_2500B7AE0(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D85DE8];

  sub_2500B7B4C(a1, a2, a3, a4, geom_cubic_bezier_interpolate_points_2f, a5);
}

void sub_2500B7B4C(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, double (*a5)(void *)@<X6>, uint64_t a6@<X8>)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  v14[0] = *a1;
  v14[1] = v7;
  v14[2] = v8;
  v14[3] = v9;
  *a6 = a5(v14);
  *(a6 + 8) = v10;
  *(a6 + 16) = v11;
  *(a6 + 24) = v12;
  v13 = *MEMORY[0x277D85DE8];
}

void sub_2500B7BCC(float32x2_t *a1@<X0>, float32x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v10[0] = *a1;
  v10[1] = v4;
  v9[0] = v10[0];
  v9[1] = v4;
  *a3 = geom_cubic_bezier_interpolate_points_and_derivatives_2f(v10, v9);
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2500B7C44(float *a1@<X0>, int *a2@<X1>, float32x2_t *a3@<X8>)
{
  v5 = *a2;
  *a3 = geom_cubic_bezier_extract_2f(*v3, v3[1], v3[2], v3[3], *a1);
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
}

void sub_2500B7C98(uint64_t a1@<X8>)
{
  *a1 = geom_cubic_bezier_demote_to_quadratic_bezier_2f(*v1, v1[1], v1[2], v1[3]);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
}

double sub_2500B7E1C(_OWORD *a1, _OWORD *a2, float *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  geom_cubic_bezier_subdivide_2f(&v18, &v16, v7, v8, v9, v10, v6);
  result = *&v18;
  v12 = v19;
  v13 = v16;
  v14 = v17;
  *a1 = v18;
  a1[1] = v12;
  *a2 = v13;
  a2[1] = v14;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2500B7EC0(void *a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = *v4;
  v10 = v4[1];
  v11 = v4[2];
  v12 = v4[3];
  v17 = 0u;
  v18 = 0u;
  geom_cubic_bezier_convert_to_power_basis_2f(&v17, v9, v10, v11, v12);
  v14 = *(&v17 + 1);
  result = *&v17;
  v15 = v18;
  *a1 = v17;
  *a2 = v14;
  *a3 = v15;
  *a4 = *(&v15 + 1);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2500B7F60@<D0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  *&result = sub_2500B8038(a1, geom_cubic_bezier_find_roots_at_x_2f, a2).n128_u64[0];
  return result;
}

double sub_2500B7FCC@<D0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  *&result = sub_2500B8038(a1, geom_cubic_bezier_find_roots_at_y_2f, a2).n128_u64[0];
  return result;
}

__n128 sub_2500B8038@<Q0>(float *a1@<X0>, uint64_t (*a2)(__n128 *, double, double, double, double, float)@<X3>, uint64_t a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = v3[3];
  v13 = 0uLL;
  v10 = a2(&v13, v6, v7, v8, v9, v5);
  result = v13;
  *a3 = v13.n128_u64[0];
  *(a3 + 8) = result.n128_u32[2];
  *(a3 + 16) = v10;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2500B80CC(double *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v11 = 0;
  v10 = 0.0;
  characteristic_points_2f = geom_cubic_bezier_find_characteristic_points_2f(&v11, &v10);
  result = v10;
  *a1 = v10;
  *(a1 + 1) = characteristic_points_2f;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2500B8150(uint64_t a1, uint64_t a2, float *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  v18 = 0uLL;
  v19 = 0;
  v16 = 0uLL;
  v17 = 0;
  geom_cubic_bezier_fit_with_quadratic_bezier_pair_2f(&v18, &v16, v7, v8, v9, v10, v6);
  result = *&v18;
  v12 = v19;
  v13 = v16;
  v14 = v17;
  *a1 = v18;
  *(a1 + 16) = v12;
  *a2 = v13;
  *(a2 + 16) = v14;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2500B8244(uint64_t a1@<X8>)
{
  *a1 = geom_oriented_bounding_box_of_cubic_bezier_2f(*v1, v1[1], v1[2], v1[3]);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

void sub_2500B8278(_OWORD *a1@<X8>)
{
  *&v3 = geom_oriented_bounding_box_matrix_of_cubic_bezier_2f(*v1, v1[1], v1[2], v1[3]);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
}

uint64_t geom_cubic_bezier_2d.init(interpolatePoints:)(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D85DE8];

  return sub_2500B83E0(geom_cubic_bezier_interpolate_points_2d, a1, a2, a3, a4);
}

void geom_cubic_bezier_2d.init(interpolatePoints:derivatives:)(float64x2_t a1, float64x2_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v4[0] = a1;
  v4[1] = a2;
  v3[0] = a1;
  v3[1] = a2;
  geom_cubic_bezier_interpolate_points_and_derivatives_2d(v4, v3);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t geom_cubic_bezier_2d.init(powerBasis:)(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D85DE8];

  return sub_2500B83E0(geom_power_basis_convert_to_cubic_bezier_2d, a1, a2, a3, a4);
}

uint64_t sub_2500B83E0(uint64_t (*a1)(_OWORD *), __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v8 = *MEMORY[0x277D85DE8];
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  result = a1(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

float64_t geom_cubic_bezier_2d.powerBasis.getter(float64x2_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4)
{
  v7 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  geom_cubic_bezier_convert_to_power_basis_2d(v6, a1, a2, a3, a4);
  result = v6[0].f64[0];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

float64_t geom_cubic_bezier_2d.subdivided(at:)@<D0>(uint64_t a1@<X8>, double a2@<D0>, float64x2_t a3@<Q1>, float64x2_t a4@<Q2>, float64x2_t a5@<Q3>, float64x2_t a6@<Q4>)
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  geom_cubic_bezier_subdivide_2d(&v20, &v16, a3, a4, a5, a6, a2);
  result = v20.f64[0];
  v8 = v21;
  v9 = v22;
  v10 = v23;
  v11 = v16;
  v12 = v17;
  v13 = v18;
  v14 = v19;
  *a1 = v20;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  *(a1 + 48) = v10;
  *(a1 + 64) = v11;
  *(a1 + 80) = v12;
  *(a1 + 96) = v13;
  *(a1 + 112) = v14;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

double geom_cubic_bezier_2d.findRoots(withXValue:)@<D0>(uint64_t a1@<X8>, double a2@<D0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>, __n128 a6@<Q4>)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D85DE8];

  return sub_2500B8628(geom_cubic_bezier_find_roots_at_x_2d, a1, a2, a3, a4, a5, a6);
}

double geom_cubic_bezier_2d.findRoots(withYValue:)@<D0>(uint64_t a1@<X8>, double a2@<D0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>, __n128 a6@<Q4>)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D85DE8];

  return sub_2500B8628(geom_cubic_bezier_find_roots_at_y_2d, a1, a2, a3, a4, a5, a6);
}

double sub_2500B8628@<D0>(uint64_t (*a1)(__int128 *, __n128, __n128, __n128, __n128, double)@<X0>, uint64_t a2@<X8>, double a3@<D0>, __n128 a4@<Q1>, __n128 a5@<Q2>, __n128 a6@<Q3>, __n128 a7@<Q4>)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v8 = a1(&v12, a4, a5, a6, a7, a3);
  result = *&v12;
  v10 = v13;
  *a2 = v12;
  *(a2 + 16) = v10;
  *(a2 + 24) = v8;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 geom_cubic_bezier_2d.findMonotonicIntervals()@<Q0>(uint64_t a1@<X8>, float64x2_t a2@<Q0>, float64x2_t a3@<Q1>, float64x2_t a4@<Q2>, float64x2_t a5@<Q3>)
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  monotonic_intervals_2d = geom_cubic_bezier_find_monotonic_intervals_2d(&v10, a2, a3, a4, a5);
  v8 = v11;
  result = v12;
  *a1 = v10;
  *(a1 + 16) = v8;
  *(a1 + 32) = result;
  *(a1 + 48) = monotonic_intervals_2d;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

double geom_cubic_bezier_2d.findCharacteristicPoints()(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 0;
  *v5 = 0uLL;
  characteristic_points_2d = geom_cubic_bezier_find_characteristic_points_2d(&v6, v5);
  result = v5[0];
  *a1 = *v5;
  *(a1 + 16) = characteristic_points_2d;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

float64_t geom_cubic_bezier_2d.fitWithQuadraticBezierPair(at:)@<D0>(uint64_t a1@<X8>, double a2@<D0>, float64x2_t a3@<Q1>, float64x2_t a4@<Q2>, float64x2_t a5@<Q3>, float64x2_t a6@<Q4>)
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  geom_cubic_bezier_fit_with_quadratic_bezier_pair_2d(&v17, &v14, a3, a4, a5, a6, a2);
  result = v17.f64[0];
  v8 = v18;
  v9 = v19;
  v10 = v14;
  v11 = v15;
  v12 = v16;
  *a1 = v17;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  *(a1 + 48) = v10;
  *(a1 + 64) = v11;
  *(a1 + 80) = v12;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void __swiftcall geom_cubic_bezier_2d.orientedBBoxMatrix()(simd_double3x3 *__return_ptr retstr)
{
  geom_oriented_bounding_box_matrix_of_cubic_bezier_2d(v11, v1, v2, v3, v4);
  v6 = v11[1];
  v7 = v11[2];
  v8 = v11[3];
  v9 = v11[4];
  v10 = v11[5];
  *retstr->columns[0].f64 = v11[0];
  *&retstr->columns[0].f64[2] = v6;
  *retstr->columns[1].f64 = v7;
  *&retstr->columns[1].f64[2] = v8;
  *retstr->columns[2].f64 = v9;
  *&retstr->columns[2].f64[2] = v10;
}

uint64_t sub_2500B88FC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2500B8C54(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  geom_cubic_bezier_elevate_from_linear_2d();
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v8;
}

void sub_2500B8C84(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  geom_cubic_bezier_elevate_from_quadratic_bezier_2d();
  *a2 = v6;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v9;
}

void sub_2500B8CB8(_OWORD *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D85DE8];

  sub_2500B8D90(a1, a2, a3, a4, geom_power_basis_convert_to_cubic_bezier_2d, a5);
}

void sub_2500B8D24(_OWORD *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D85DE8];

  sub_2500B8D90(a1, a2, a3, a4, geom_cubic_bezier_interpolate_points_2d, a5);
}

void sub_2500B8D90(_OWORD *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, double (*a5)(_OWORD *)@<X6>, _OWORD *a6@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  v15[0] = *a1;
  v15[1] = v7;
  v15[2] = v8;
  v15[3] = v9;
  *&v10 = a5(v15);
  *a6 = v10;
  a6[1] = v11;
  a6[2] = v12;
  a6[3] = v13;
  v14 = *MEMORY[0x277D85DE8];
}

void sub_2500B8E10(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v10[0] = *a1;
  v10[1] = v4;
  v9[0] = v10[0];
  v9[1] = v4;
  *a3 = geom_cubic_bezier_interpolate_points_and_derivatives_2d(v10, v9);
  *(a3 + 16) = v5;
  *(a3 + 32) = v6;
  *(a3 + 48) = v7;
  v8 = *MEMORY[0x277D85DE8];
}

void sub_2500B8E88(double *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a2;
  *&v6 = geom_cubic_bezier_extract_2d(*v3, v3[1], v3[2], v3[3], *a1);
  *a3 = v6;
  a3[1] = v7;
  a3[2] = v8;
  a3[3] = v9;
}

void sub_2500B8EDC(_OWORD *a1@<X8>)
{
  *&v3 = geom_cubic_bezier_demote_to_quadratic_bezier_2d(*v1, v1[1], v1[2], v1[3]);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
}

float64_t sub_2500B9060(uint64_t a1, float64x2_t *a2, double *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  geom_cubic_bezier_subdivide_2d(&v24, &v20, v7, v8, v9, v10, v6);
  result = v24.f64[0];
  v12 = v25;
  v13 = v26;
  v14 = v27;
  v15 = v20;
  v16 = v21;
  v17 = v22;
  v18 = v23;
  *a1 = v24;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  *(a1 + 48) = v14;
  *a2 = v15;
  a2[1] = v16;
  a2[2] = v17;
  a2[3] = v18;
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

float64_t sub_2500B910C(float64x2_t *a1, _OWORD *a2, _OWORD *a3, _OWORD *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = *v4;
  v10 = v4[1];
  v11 = v4[2];
  v12 = v4[3];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  geom_cubic_bezier_convert_to_power_basis_2d(&v18, v9, v10, v11, v12);
  result = v18.f64[0];
  v14 = v19;
  v15 = v20;
  v16 = v21;
  *a1 = v18;
  *a2 = v14;
  *a3 = v15;
  *a4 = v16;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2500B91B0@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_2500B9288(a1, geom_cubic_bezier_find_roots_at_x_2d, a2);
}

double sub_2500B921C@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_2500B9288(a1, geom_cubic_bezier_find_roots_at_y_2d, a2);
}

double sub_2500B9288@<D0>(double *a1@<X0>, uint64_t (*a2)(__int128 *, __n128, __n128, __n128, __n128, double)@<X3>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = v3[3];
  v14 = 0u;
  v15 = 0u;
  v10 = a2(&v14, v6, v7, v8, v9, v5);
  result = *&v14;
  v12 = v15;
  *a3 = v14;
  *(a3 + 16) = v12;
  *(a3 + 24) = v10;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2500B9320(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v11 = 0;
  *v10 = 0uLL;
  characteristic_points_2d = geom_cubic_bezier_find_characteristic_points_2d(&v11, v10);
  result = v10[0];
  *a1 = *v10;
  *(a1 + 16) = characteristic_points_2d;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

float64_t sub_2500B93A4(uint64_t a1, float64x2_t *a2, double *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  geom_cubic_bezier_fit_with_quadratic_bezier_pair_2d(&v21, &v18, v7, v8, v9, v10, v6);
  result = v21.f64[0];
  v12 = v22;
  v13 = v23;
  v14 = v18;
  v15 = v19;
  v16 = v20;
  *a1 = v21;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  *a2 = v14;
  a2[1] = v15;
  a2[2] = v16;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2500B9464(double (*a1)(__n128, __n128, __n128, __n128)@<X2>, _OWORD *a2@<X8>)
{
  *&v4 = a1(*v2, v2[1], v2[2], v2[3]);
  *a2 = v4;
  a2[1] = v5;
}

void sub_2500B9498(_OWORD *a1@<X8>)
{
  *&v3 = geom_oriented_bounding_box_of_cubic_bezier_2d(*v1, v1[1], v1[2], v1[3]);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
}

double sub_2500B94CC@<D0>(_OWORD *a1@<X8>)
{
  geom_oriented_bounding_box_matrix_of_cubic_bezier_2d(v9, *v1, v1[1], v1[2], v1[3]);
  result = *v9;
  v4 = v9[1];
  v5 = v9[2];
  v6 = v9[3];
  v7 = v9[4];
  v8 = v9[5];
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  return result;
}

double geom_cubic_bezier_derivative_at_2d(int a1, float64x2_t a2, float64x2_t a3, float64x2_t a4, float64x2_t a5, double a6)
{
  v6 = 1.0 - a6;
  v7 = 0.0;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      __asm { FMOV            V5.2D, #-2.0 }

      v18 = vmlaq_n_f64(vmulq_n_f64(vaddq_f64(a5, vmlaq_f64(a3, _Q5, a4)), a6), vaddq_f64(a4, vmlaq_f64(a2, _Q5, a3)), v6);
      __asm { FMOV            V0.2D, #6.0 }

      *&v7 = *&vmulq_f64(v18, _Q0);
    }

    else if (a1 == 3)
    {
      v9 = vsubq_f64(a3, a4);
      __asm { FMOV            V2.2D, #3.0 }

      v15 = vmlaq_f64(vsubq_f64(a5, a2), _Q2, v9);
      __asm { FMOV            V1.2D, #6.0 }

      *&v7 = *&vmulq_f64(v15, _Q1);
    }
  }

  else
  {
    if (!a1)
    {
      *&result = *&vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(a3, v6 * v6 * 3.0 * a6), a2, v6 * (v6 * v6)), a4, a6 * a6 * (v6 * 3.0)), a5, a6 * a6 * a6);
      return result;
    }

    if (a1 == 1)
    {
      *&result = *&vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vsubq_f64(a4, a3), v6 * 6.0 * a6), vsubq_f64(a3, a2), v6 * (v6 * 3.0)), vsubq_f64(a5, a4), a6 * 3.0 * a6);
      return result;
    }
  }

  return v7;
}

float32x2_t geom_cubic_bezier_derivative_at_2f(int a1, float32x2_t a2, float32x2_t a3, float32x2_t a4, float32x2_t a5, float a6)
{
  v6 = 1.0 - a6;
  v7 = 0;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v17 = vmla_n_f32(vmul_n_f32(vadd_f32(a5, vmla_f32(a3, 0xC0000000C0000000, a4)), a6), vadd_f32(a4, vmla_f32(a2, 0xC0000000C0000000, a3)), v6);
      __asm { FMOV            V0.2S, #6.0 }

      return vmul_f32(v17, _D0);
    }

    else if (a1 == 3)
    {
      v9 = vsub_f32(a3, a4);
      __asm { FMOV            V2.2S, #3.0 }

      v15 = vmla_f32(vsub_f32(a5, a2), _D2, v9);
      __asm { FMOV            V1.2S, #6.0 }

      return vmul_f32(v15, _D1);
    }
  }

  else
  {
    if (!a1)
    {
      return vmla_n_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(a3, ((v6 * v6) * 3.0) * a6), a2, v6 * (v6 * v6)), a4, (a6 * a6) * (v6 * 3.0)), a5, (a6 * a6) * a6);
    }

    if (a1 == 1)
    {
      return vmla_n_f32(vmla_n_f32(vmul_n_f32(vsub_f32(a4, a3), (v6 * 6.0) * a6), vsub_f32(a3, a2), v6 * (v6 * 3.0)), vsub_f32(a5, a4), (a6 * 3.0) * a6);
    }
  }

  return v7;
}

double geom_quadratic_bezier_derivative_at_2d(int a1, float64x2_t a2, float64x2_t a3, float64x2_t a4, double a5)
{
  v5 = 1.0 - a5;
  if (a1)
  {
    if (a1 == 2)
    {
      v8 = vaddq_f64(a2, a4);
      __asm { FMOV            V2.2D, #-2.0 }

      v14 = vmlaq_f64(v8, _Q2, a3);
      *&v6 = *&vaddq_f64(v14, v14);
    }

    else
    {
      v6 = 0.0;
      if (a1 == 1)
      {
        v7 = vmlaq_n_f64(vmulq_n_f64(vsubq_f64(a4, a3), a5), vsubq_f64(a3, a2), v5);
        *&v6 = *&vaddq_f64(v7, v7);
      }
    }

    return v6;
  }

  else
  {
    *&result = *&vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(a3, (v5 + v5) * a5), a2, v5 * v5), a4, a5 * a5);
  }

  return result;
}

float32x2_t geom_quadratic_bezier_derivative_at_2f(int a1, float32x2_t a2, float32x2_t a3, float32x2_t a4, float a5)
{
  v5 = 1.0 - a5;
  if (a1)
  {
    if (a1 == 2)
    {
      v8 = vmla_f32(vadd_f32(a2, a4), 0xC0000000C0000000, a3);
      return vadd_f32(v8, v8);
    }

    else
    {
      v6 = 0;
      if (a1 == 1)
      {
        v7 = vmla_n_f32(vmul_n_f32(vsub_f32(a4, a3), a5), vsub_f32(a3, a2), v5);
        return vadd_f32(v7, v7);
      }
    }

    return v6;
  }

  else
  {
    return vmla_n_f32(vmla_n_f32(vmul_n_f32(a3, (v5 + v5) * a5), a2, v5 * v5), a4, a5 * a5);
  }
}

uint64_t sub_2500B9934(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, unint64_t, uint64_t, void, void, uint64_t), uint64_t (*a7)(uint64_t, uint64_t, unint64_t, uint64_t, void, void))
{
  v9 = *(a1 + 16);
  v10 = *(a2 + 16) / 3uLL;
  if (a5)
  {
    return a6(v9, a1 + 32, v10, a2 + 32, *a3, *a4, a5);
  }

  else
  {
    return a7(v9, a1 + 32, v10, a2 + 32, *a3, *a4);
  }
}

void (*OS_geom_refine_triangle_mesh_opt_3f.refinementFaceSubset.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v2;
  refinement_face_subset_data_3f = geom_refine_triangle_mesh_opt_get_refinement_face_subset_data_3f(v2);
  refinement_face_subset_count_3f = geom_refine_triangle_mesh_opt_get_refinement_face_subset_count_3f(v2);
  if (!refinement_face_subset_count_3f)
  {
    goto LABEL_7;
  }

  v8 = refinement_face_subset_count_3f;
  v9 = sub_25009D730(refinement_face_subset_count_3f, 0);
  sub_25009D304(v9 + 4, v8, refinement_face_subset_data_3f, v8);
  if (v10 != v8)
  {
    __break(1u);
LABEL_7:
    v9 = MEMORY[0x277D84F90];
  }

  v11 = (2 * v9[2]) | 1;
  *v5 = v9;
  v5[1] = v9 + 4;
  v5[2] = 0;
  v5[3] = v11;
  return sub_2500B9AD4;
}

uint64_t (*sub_2500B9C58(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = OS_geom_refine_triangle_mesh_opt_3f.refinementFaceSubset.modify(v3);
  return sub_25009B858;
}

id sub_2500B9D44()
{
  output_uv_value_collection_3f = geom_refine_triangle_mesh_opt_get_output_uv_value_collection_3f(*v0);

  return output_uv_value_collection_3f;
}

id sub_2500B9D74()
{
  output_triangles_with_uvs_collection_3f = geom_refine_triangle_mesh_opt_get_output_triangles_with_uvs_collection_3f(*v0);

  return output_triangles_with_uvs_collection_3f;
}

id sub_2500B9DA4()
{
  output_triangle_uv_indices_collection_3f = geom_refine_triangle_mesh_opt_get_output_triangle_uv_indices_collection_3f(*v0);

  return output_triangle_uv_indices_collection_3f;
}

void *sub_2500B9E90(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v4 = v2;
  v5 = a1(v2);
  v6 = a2(v4);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = v6;
  v8 = sub_25009D730(v6, 0);
  sub_25009D304(v8 + 4, v7, v5, v7);
  if (v9 != v7)
  {
    __break(1u);
LABEL_4:
    v8 = MEMORY[0x277D84F90];
  }

  v10 = (2 * v8[2]) | 1;
  return v8;
}

void *sub_2500B9F30@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = a2(*a1);
  v8 = a3(v6);
  result = sub_25009B8AC(v7, v8);
  *a4 = result;
  a4[1] = v10;
  a4[2] = v11;
  a4[3] = v12;
  return result;
}

uint64_t *sub_2500B9F90(uint64_t *result, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t), uint64_t (*a6)(uint64_t))
{
  v6 = *a2;
  if (*result)
  {
    v7 = result[2];
    v8 = result[3] >> 1;
    v9 = v8 - v7;
    if (__OFSUB__(v8, v7))
    {
      __break(1u);
    }

    else
    {
      v11 = result[1] + 4 * v7;
      v12 = *result;
      swift_unknownObjectRetain();
      a5(v6, v9, v11);

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v13 = *a2;

    return a6(v13);
  }

  return result;
}

uint64_t sub_2500BA070(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t, unint64_t, uint64_t), uint64_t (*a6)(uint64_t))
{
  if (result)
  {
    if (__OFSUB__(a4 >> 1, a3))
    {
      __break(1u);
    }

    else
    {
      a5(v6, (a4 >> 1) - a3, a2 + 4 * a3);

      return swift_unknownObjectRelease();
    }
  }

  else
  {

    return a6(v6);
  }

  return result;
}

void (*OS_geom_refine_triangle_mesh_opt_3d.refinementFaceSubset.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v2;
  refinement_face_subset_data_3d = geom_refine_triangle_mesh_opt_get_refinement_face_subset_data_3d(v2);
  refinement_face_subset_count_3d = geom_refine_triangle_mesh_opt_get_refinement_face_subset_count_3d(v2);
  if (!refinement_face_subset_count_3d)
  {
    goto LABEL_7;
  }

  v8 = refinement_face_subset_count_3d;
  v9 = sub_25009D730(refinement_face_subset_count_3d, 0);
  sub_25009D304(v9 + 4, v8, refinement_face_subset_data_3d, v8);
  if (v10 != v8)
  {
    __break(1u);
LABEL_7:
    v9 = MEMORY[0x277D84F90];
  }

  v11 = (2 * v9[2]) | 1;
  *v5 = v9;
  v5[1] = v9 + 4;
  v5[2] = 0;
  v5[3] = v11;
  return sub_2500BA1D4;
}

void sub_2500BA200(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t))
{
  v5 = *a1;
  v6 = **a1;
  if (a2)
  {
    if (!v6)
    {
      a4(v5[4]);
      goto LABEL_9;
    }

    v7 = v5[2];
    v8 = v5[3] >> 1;
    v9 = v8 - v7;
    if (!__OFSUB__(v8, v7))
    {
      v10 = v5[4];
      v11 = v5[1] + 4 * v7;
      v12 = **a1;
      swift_unknownObjectRetain();
      a3(v10, v9, v11);
      swift_unknownObjectRelease();
LABEL_9:
      v15 = *v5;
      goto LABEL_10;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  if (!v6)
  {
    a4(v5[4]);
    goto LABEL_11;
  }

  v13 = v5[2];
  v14 = v5[3] >> 1;
  if (__OFSUB__(v14, v13))
  {
    goto LABEL_16;
  }

  a3(v5[4], v14 - v13, v5[1] + 4 * v13);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:

  free(v5);
}

void *sub_2500BA320(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v4 = v2;
  v5 = a1(v2);
  v6 = a2(v4);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = v6;
  v8 = sub_25009D734(v6, 0);
  sub_25009D374(v8 + 4, v7, v5, v7);
  if (v9 != v7)
  {
    __break(1u);
LABEL_4:
    v8 = MEMORY[0x277D84F90];
  }

  v10 = (2 * v8[2]) | 1;
  return v8;
}

void *sub_2500BA3EC(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v4 = v2;
  v5 = a1(v2);
  v6 = a2(v4);
  if (!v5)
  {
    goto LABEL_4;
  }

  v7 = v6;
  v8 = sub_25009D730(v5, 0);
  sub_25009D304(v8 + 4, v5, v7, v5);
  if (v9 != v5)
  {
    __break(1u);
LABEL_4:
    v8 = MEMORY[0x277D84F90];
  }

  v10 = (2 * v8[2]) | 1;
  return v8;
}

uint64_t sub_2500BA4BC(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  result = a1(v2);
  v5 = 3 * result;
  if ((result * 3) >> 64 == (3 * result) >> 63)
  {
    v6 = a2(v2);
    if (v5)
    {
      v7 = v6;
      v8 = sub_25009D730(v5, 0);
      sub_25009D304(v8 + 4, v5, v7, v5);
      if (v9 == v5)
      {
LABEL_6:
        v10 = (2 * v8[2]) | 1;
        return v8;
      }

      __break(1u);
    }

    v8 = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_2500BA644(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, unint64_t, uint64_t), uint64_t (*a8)(uint64_t))
{
  result = *v8;
  if (a1)
  {
    if (__OFSUB__(a4 >> 1, a3))
    {
      __break(1u);
    }

    else
    {
      a7(result, (a4 >> 1) - a3, a2 + 4 * a3);

      return swift_unknownObjectRelease();
    }
  }

  else
  {

    return a8(result);
  }

  return result;
}

uint64_t (*sub_2500BA6C0(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = OS_geom_refine_triangle_mesh_opt_3d.refinementFaceSubset.modify(v3);
  return sub_250094CB8;
}

id sub_2500BA7AC()
{
  output_uv_value_collection_3d = geom_refine_triangle_mesh_opt_get_output_uv_value_collection_3d(*v0);

  return output_uv_value_collection_3d;
}

id sub_2500BA7DC()
{
  output_triangles_with_uvs_collection_3d = geom_refine_triangle_mesh_opt_get_output_triangles_with_uvs_collection_3d(*v0);

  return output_triangles_with_uvs_collection_3d;
}

id sub_2500BA80C()
{
  output_triangle_uv_indices_collection_3d = geom_refine_triangle_mesh_opt_get_output_triangle_uv_indices_collection_3d(*v0);

  return output_triangle_uv_indices_collection_3d;
}

__n128 singularValueDecomposition(of3x3Matrix:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v46 = v3;
  v47 = v4;
  v48 = v5;
  v49 = v6;
  v50 = v7;
  v51 = v8;
  if (geom_compute_svd_3x3_d(&v46, &v25, &v17, &v19))
  {
    v31 = v25;
    v32 = v26;
    v33 = v27;
    v34 = v28;
    v35 = v29;
    v36 = v30;
    v37 = v19;
    v38 = v20;
    v39 = v21;
    v40 = v22;
    v41 = v23;
    v42 = v24;
    v43 = v17;
    v44 = v18;
    sub_2500BAC58(&v31);
    v58 = v43;
    v59 = v44;
    v60 = v45;
    v54 = v39;
    v55 = v40;
    v56 = v41;
    v57 = v42;
    v50 = v35;
    v51 = v36;
    v52 = v37;
    v53 = v38;
    v46 = v31;
    v47 = v32;
    v48 = v33;
    v49 = v34;
  }

  else
  {
    sub_2500BAC2C(&v46);
  }

  v9 = v59;
  *(a2 + 192) = v58;
  *(a2 + 208) = v9;
  *(a2 + 224) = v60;
  v10 = v55;
  *(a2 + 128) = v54;
  *(a2 + 144) = v10;
  v11 = v57;
  *(a2 + 160) = v56;
  *(a2 + 176) = v11;
  v12 = v51;
  *(a2 + 64) = v50;
  *(a2 + 80) = v12;
  v13 = v53;
  *(a2 + 96) = v52;
  *(a2 + 112) = v13;
  v14 = v47;
  *a2 = v46;
  *(a2 + 16) = v14;
  result = v49;
  *(a2 + 32) = v48;
  *(a2 + 48) = result;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2500BAC2C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 224) = 1;
  return result;
}

uint64_t singularValueDecomposition(of3x3Matrix:)@<X0>(int8x16_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, float *a5@<X6>, uint64_t a6@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a1[1];
  v8 = a1[2];
  v9 = *a1;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v20 = 0uLL;
  result = geom_compute_svd_3x3_f(&v24, &v20, &v21, v9, v7, v8, a2, a3, a4, a5);
  if (result)
  {
    v11 = 0;
    v13 = v24;
    v12 = v25;
    v14 = v26;
    v15 = v21;
    v16 = v22;
    v17 = v23;
    v18 = v20;
  }

  else
  {
    v11 = 1;
    v12 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v13 = 0uLL;
  }

  *a6 = v13;
  *(a6 + 16) = v12;
  *(a6 + 32) = v14;
  *(a6 + 48) = v15;
  *(a6 + 64) = v16;
  *(a6 + 80) = v17;
  *(a6 + 96) = v18;
  *(a6 + 112) = v11;
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2500BAE14(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void, uint64_t, void, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a1 + 16);
  v10 = *a2;
  v11 = *(*a2 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a3(0, v11, 0, v10);
  }

  *a2 = v10;
  return a4(v4, v9, a1 + 32, v11, v10 + 32);
}

uint64_t sub_2500BAED8(uint64_t *a1, uint64_t (*a2)(void, uint64_t, void, uint64_t), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = a2(0, v8, 0, v7);
  }

  *a1 = v7;
  return a3(v3, v8, v7 + 32);
}

uint64_t sub_2500BAFAC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v9 = *v5;
  v10 = *a1;
  v11 = *(*a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a4(0, v11, 0, v10);
  }

  *a1 = v10;
  return a5(v9, v11, v10 + 32);
}

char *sub_2500BB030(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3BA5A0, &qword_2500D33B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_2500BB134(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3BA598, &qword_2500D33B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t SIMD.asUnsafeScalarMutableCArray(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  return sub_2500BB2D4(v8, sub_2500BB968, v10, a3, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], a8);
}

uint64_t sub_2500BB2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1, a2);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t simd_float3x2.asUnsafeVectorCArray(_:)(uint64_t (*a1)(void *), double a2, double a3, double a4)
{
  v6[3] = *MEMORY[0x277D85DE8];
  *v6 = a2;
  *&v6[1] = a3;
  *&v6[2] = a4;
  result = a1(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t simd_double3x2.asUnsafeVectorCArray(_:)(uint64_t (*a1)(_OWORD *), __n128 a2, __n128 a3, __n128 a4)
{
  v7 = *MEMORY[0x277D85DE8];
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  result = a1(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t simd_float4x2.asUnsafeVectorCArray(_:)(uint64_t (*a1)(void *), double a2, double a3, double a4, double a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  *v7 = a2;
  *&v7[1] = a3;
  *&v7[2] = a4;
  *&v7[3] = a5;
  result = a1(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t simd_float2x2.asUnsafeVectorCArray(_:)(uint64_t (*a1)(void *), double a2, double a3)
{
  v5[2] = *MEMORY[0x277D85DE8];
  *v5 = a2;
  *&v5[1] = a3;
  result = a1(v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t simd_double4x2.asUnsafeVectorCArray(_:)(uint64_t (*a1)(_OWORD *), __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v8 = *MEMORY[0x277D85DE8];
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  result = a1(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t simd_double2x2.asUnsafeVectorCArray(_:)(uint64_t (*a1)(_OWORD *), __n128 a2, __n128 a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v5[0] = a2;
  v5[1] = a3;
  result = a1(v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SIMD.asUnsafeScalarCArray(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  return sub_2500BB77C(v8, sub_2500BB9B0, v10, a3, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], a8);
}

uint64_t sub_2500BB77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1, a2);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t sub_2500BB870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t))
{
  if (a1)
  {
    v12 = *(a6 + 48);
    result = swift_getAssociatedTypeWitness();
    v14 = *(*(result - 8) + 72);
    if (v14)
    {
      AssociatedTypeWitness = result;
      if (a2 - a1 != 0x8000000000000000 || v14 != -1)
      {
        v16 = (a2 - a1) / v14;
        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

  v17 = *(a6 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = 0;
LABEL_7:
  result = a8(a1, v16, AssociatedTypeWitness);
  if (result)
  {
    return a3();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t marchingSquares(implicit:cellCount:bbox:points:accumulatedPolylineDegree:options:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, float32x2_t a7, float32x2_t a8)
{
  v10 = a3;
  v23 = *MEMORY[0x277D85DE8];
  if (!a6)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      if (!(a3 >> 16))
      {
        v16 = *a4;
        v17 = *a5;
        v18 = swift_allocObject();
        *(v18 + 16) = a1;
        *(v18 + 24) = a2;
        v21 = sub_2500BBC30;
        v22 = v18;
        geom_marching_squares_with_default_options_2f(sub_2500BBBBC, &v21, v10, v16, v17, a7, a8);
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (a3 >> 16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = *a4;
  v14 = *a5;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v21 = sub_2500BC4B8;
  v22 = v15;
  geom_marching_squares_with_options_2f(sub_2500BBBBC, &v21, v10, v13, v14, a7, a8);
LABEL_8:

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

float sub_2500BBBBC(uint64_t a1, double a2)
{
  if (!a1)
  {
    return NAN;
  }

  v2 = *a1;
  v3 = *(a1 + 8);
  v6 = a2;

  v2(&v5, &v6);

  return v5;
}

void sub_2500BBC30(double *a1@<X0>, float *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  *a2 = v4(*a1);
}

uint64_t marchingSquares(implicit:cellCount:bbox:points:accumulatedPolylineDegree:options:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, float64x2_t a7, float64x2_t a8)
{
  v8 = a3;
  v23 = *MEMORY[0x277D85DE8];
  if (!a6)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      if (!(a3 >> 16))
      {
        v14 = *a4;
        v15 = *a5;
        v16 = swift_allocObject();
        *(v16 + 16) = a1;
        *(v16 + 24) = a2;
        v21 = sub_2500BBE44;
        v22 = v16;
        geom_marching_squares_with_default_options_2d(sub_2500BBDE0, &v21, v8, v14, v15, a7, a8);
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (a3 >> 16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = *a4;
  v12 = *a5;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v21 = sub_2500BC4BC;
  v22 = v13;
  geom_marching_squares_with_options_2d(sub_2500BBDE0, &v21, v8, v11, v12, a7, a8);
LABEL_8:

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2500BBDE0(uint64_t a1, __n128 a2)
{
  if (!a1)
  {
    return NAN;
  }

  v2 = *a1;
  v3 = *(a1 + 8);
  v6 = a2;

  v2(&v5, &v6);

  return v5;
}

void sub_2500BBE44(__n128 *a1@<X0>, double *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  *a2 = v4(*a1);
}

uint64_t dualContouringUniform(implicit:cellCount:bbox:points:quadVertexIndices:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5, float32x4_t a6, float32_t a7, float32x4_t a8, float32_t a9)
{
  v19[2] = *MEMORY[0x277D85DE8];
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v9 = a3;
  if (a3 >> 16)
  {
    goto LABEL_5;
  }

  a8.f32[2] = a9;
  a6.f32[2] = a7;
  v17 = a6;
  v18 = a8;
  v12 = *a4;
  v13 = *a5;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v19[0] = sub_2500BBFD0;
  v19[1] = v14;
  geom_dual_contouring_uniform_3f(sub_2500BBF6C, v19, v9, v12, v13, v17, v18);

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

float sub_2500BBF6C(uint64_t a1, __n128 a2)
{
  if (!a1)
  {
    return NAN;
  }

  v2 = *a1;
  v3 = *(a1 + 8);
  v6 = a2;

  v2(&v5, &v6);

  return v5;
}

void sub_2500BBFD0(__n128 *a1@<X0>, float *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  *a2 = v4(*a1);
}

uint64_t dualContouringUniform(implicit:cellCount:bbox:points:quadVertexIndices:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9)
{
  v22[2] = *MEMORY[0x277D85DE8];
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v9 = a3;
  if (a3 >> 16)
  {
    goto LABEL_5;
  }

  v12 = *a4;
  v13 = *a5;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v22[0] = sub_2500BC16C;
  v22[1] = v14;
  v21[0] = a6;
  v21[1] = a7;
  v21[2] = a8;
  v21[3] = a9;
  geom_dual_contouring_uniform_3d(sub_2500BC104, v22, v9, v21, v12, v13);

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2500BC104(_OWORD *a1, uint64_t a2)
{
  if (!a2)
  {
    return NAN;
  }

  v2 = a1[1];
  v3 = *a2;
  v4 = *(a2 + 8);
  v7[0] = *a1;
  v7[1] = v2;

  v3(&v6, v7);

  return v6;
}

uint64_t marchingCubes(implicit:method:cellCount:bbox:points:triangleVertexIndices:)(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t *a5, uint64_t *a6, float32x4_t a7, float32_t a8, float32x4_t a9, float32_t a10)
{
  v21[2] = *MEMORY[0x277D85DE8];
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v10 = a4;
  if (a4 >> 16)
  {
    goto LABEL_5;
  }

  a9.f32[2] = a10;
  a7.f32[2] = a8;
  v19 = a7;
  v20 = a9;
  v14 = *a5;
  v15 = *a6;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v21[0] = sub_2500BC4C0;
  v21[1] = v16;
  geom_marching_cubes_3f(sub_2500BBF6C, a3, v21, v10, v14, v15, v19, v20);

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t marchingCubes(implicit:method:cellCount:bbox:points:triangleVertexIndices:)(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t *a5, uint64_t *a6, float64x2_t a7, float64x2_t a8, float64x2_t a9, float64x2_t a10)
{
  v24[2] = *MEMORY[0x277D85DE8];
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v10 = a4;
  if (a4 >> 16)
  {
    goto LABEL_5;
  }

  v14 = *a5;
  v15 = *a6;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v24[0] = sub_2500BC4E0;
  v24[1] = v16;
  v23[0] = a7;
  v23[1] = a8;
  v23[2] = a9;
  v23[3] = a10;
  geom_marching_cubes_3d(sub_2500BC104, a3, v24, v10, v23, v14, v15);

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2500BC384(__n128 *a1@<X0>, double *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  *a2 = v4(*a1, a1[1]);
}

Swift::Void __swiftcall triangulateByEarClipping(points:triangleVertexIndices:)(Swift::OpaquePointer points, OS_geom_collection_u *triangleVertexIndices)
{
  geom_triangulate_by_ear_clipping_2f(*(points._rawValue + 2), points._rawValue + 32, triangleVertexIndices->super.isa);
}

{
  geom_triangulate_by_ear_clipping_2d(*(points._rawValue + 2), points._rawValue + 2, triangleVertexIndices->super.isa);
}

Swift::Void __swiftcall triangulateByEarClipping(points:accumuluatedOutlineIndexCount:triangleVertexIndices:)(Swift::OpaquePointer points, Swift::OpaquePointer accumuluatedOutlineIndexCount, OS_geom_collection_u *triangleVertexIndices)
{
  geom_triangulate_by_ear_clipping_with_holes_2f(*(points._rawValue + 2), points._rawValue + 4, *(accumuluatedOutlineIndexCount._rawValue + 2), accumuluatedOutlineIndexCount._rawValue + 8, triangleVertexIndices->super.isa);
}

{
  geom_triangulate_by_ear_clipping_with_holes_2d(*(points._rawValue + 2), points._rawValue + 2, *(accumuluatedOutlineIndexCount._rawValue + 2), accumuluatedOutlineIndexCount._rawValue + 8, triangleVertexIndices->super.isa);
}

uint64_t sub_2500BC458(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, void, uint64_t))
{
  v3 = a3(*(a1 + 16), a1 + 32, *(a2 + 16), a2 + 32);

  return v3;
}

double polynomialRoots(coefficients:)@<D0>(void *a1@<X8>, unsigned int a2@<S0>, unsigned int a3@<S1>, unsigned int a4@<S2>)
{
  *&v5 = __PAIR64__(a3, a2);
  v10[1] = *MEMORY[0x277D85DE8];
  *(&v5 + 1) = a4;
  v10[0] = 0;
  v9 = v5;
  v6 = geom_quadratic_roots_f(&v9, v10);
  result = *v10;
  *a1 = v10[0];
  a1[1] = v6;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

double polynomialRoots(coefficients:)@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>, double a3@<D1>, unint64_t a4@<D2>)
{
  v10 = *MEMORY[0x277D85DE8];
  a2.n128_f64[1] = a3;
  *v9 = 0uLL;
  v8[0] = a2;
  v8[1] = a4;
  v5 = geom_quadratic_roots_d(v8, v9);
  result = v9[0];
  *a1 = *v9;
  *(a1 + 16) = v5;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 polynomialRoots(coefficients:)@<Q0>(uint64_t a1@<X8>, __n128 a2@<Q0>, float a3@<S1>, unsigned int a4@<S2>, unsigned int a5@<S3>)
{
  a2.n128_f32[1] = a3;
  a2.n128_u64[1] = __PAIR64__(a5, a4);
  v11 = *MEMORY[0x277D85DE8];
  v10 = 0uLL;
  v9 = a2;
  v6 = geom_cubic_roots_f(&v9, &v10);
  result = v10;
  *a1 = v10.n128_u64[0];
  *(a1 + 8) = result.n128_u32[2];
  *(a1 + 16) = v6;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

double polynomialRoots(coefficients:)@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>, double a3@<D1>, __n128 a4@<Q2>, double a5@<D3>)
{
  a2.n128_f64[1] = a3;
  a4.n128_f64[1] = a5;
  v13 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v10[0] = a2;
  v10[1] = a4;
  v6 = geom_cubic_roots_d(v10, &v11);
  result = *&v11;
  v8 = v12;
  *a1 = v11;
  *(a1 + 16) = v8;
  *(a1 + 24) = v6;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t polynomialRoots(coefficients:)(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 == 1)
  {
    goto LABEL_5;
  }

  if (!v2)
  {
    __break(1u);
    return result;
  }

  v3 = sub_2500BFA98();
  *(v3 + 16) = v2 - 1;
  bzero((v3 + 32), 4 * v2 - 4);
  if (v2 > 0xFF)
  {
    __break(1u);
LABEL_5:
    v3 = MEMORY[0x277D84F90];
  }

  v4 = *(v3 + 16) - geom_polynomial_roots_f(v2, v1 + 32);

  return sub_2500BC7AC(v4, v3);
}

{
  v1 = result;
  v2 = *(result + 16);
  if (v2 == 1)
  {
    goto LABEL_5;
  }

  if (!v2)
  {
    __break(1u);
    return result;
  }

  v3 = sub_2500BFA98();
  *(v3 + 16) = v2 - 1;
  bzero((v3 + 32), 8 * v2 - 8);
  if (v2 > 0xFF)
  {
    __break(1u);
LABEL_5:
    v3 = MEMORY[0x277D84F90];
  }

  v4 = *(v3 + 16) - geom_polynomial_roots_d(v2, v1 + 32, v3 + 32);

  return sub_2500BC9A0(v4, v3);
}

uint64_t sub_2500BC7AC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    goto LABEL_30;
  }

  v2 = a2;
  v3 = result;
  if (!result)
  {
    return v2;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_26:

    return v8;
  }

  v5 = 0;
  v6 = (a2 + 32);
  v7 = v4 - 1;
  v8 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = *v6;
    v11 = *(v9 + 16);
    if (v11 < v3)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2500BCE68(0, v11 + 1, 1);
      }

      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_2500BCE68((v12 > 1), v13 + 1, 1);
      }

      *(v9 + 16) = v13 + 1;
      *(v9 + 4 * v13 + 32) = v10;
      if (!v7)
      {
        goto LABEL_26;
      }

      goto LABEL_6;
    }

    if (v5 >= v11)
    {
      break;
    }

    v14 = *(v9 + 4 * v5 + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2500BCE68(0, *(v8 + 16) + 1, 1);
    }

    v16 = *(v8 + 16);
    v15 = *(v8 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_2500BCE68((v15 > 1), v16 + 1, 1);
    }

    *(v8 + 16) = v16 + 1;
    *(v8 + 4 * v16 + 32) = v14;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2500BCC38(v9);
      v9 = result;
    }

    if (v5 >= *(v9 + 16))
    {
      goto LABEL_29;
    }

    *(v9 + 4 * v5++ + 32) = v10;
    if (v5 < v3)
    {
      if (!v7)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (!v7)
      {
        goto LABEL_26;
      }

      v5 = 0;
    }

LABEL_6:
    --v7;
    ++v6;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_2500BC9A0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    goto LABEL_30;
  }

  v2 = a2;
  v3 = result;
  if (!result)
  {
    return v2;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_26:

    return v8;
  }

  v5 = 0;
  v6 = (a2 + 32);
  v7 = v4 - 1;
  v8 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = *v6;
    v11 = *(v9 + 16);
    if (v11 < v3)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2500BCE88(0, v11 + 1, 1);
      }

      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_2500BCE88((v12 > 1), v13 + 1, 1);
      }

      *(v9 + 16) = v13 + 1;
      *(v9 + 8 * v13 + 32) = v10;
      if (!v7)
      {
        goto LABEL_26;
      }

      goto LABEL_6;
    }

    if (v5 >= v11)
    {
      break;
    }

    v14 = *(v9 + 8 * v5 + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2500BCE88(0, *(v8 + 16) + 1, 1);
    }

    v16 = *(v8 + 16);
    v15 = *(v8 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_2500BCE88((v15 > 1), v16 + 1, 1);
    }

    *(v8 + 16) = v16 + 1;
    *(v8 + 8 * v16 + 32) = v14;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2500BCC4C(v9);
      v9 = result;
    }

    if (v5 >= *(v9 + 16))
    {
      goto LABEL_29;
    }

    *(v9 + 8 * v5++ + 32) = v10;
    if (v5 < v3)
    {
      if (!v7)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (!v7)
      {
        goto LABEL_26;
      }

      v5 = 0;
    }

LABEL_6:
    --v7;
    ++v6;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

char *sub_2500BCC60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3BA5A0, &qword_2500D33B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_2500BCD64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3BA598, &qword_2500D33B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2500BCE68(char *a1, int64_t a2, char a3)
{
  result = sub_2500BCC60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2500BCE88(char *a1, int64_t a2, char a3)
{
  result = sub_2500BCD64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t (*sub_2500BCEBC(uint64_t *a1))(uint64_t *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = geom_point_cloud_laplacian_create_opt_get_required_neighbors_3f(v3);
  return sub_2500BCF08;
}

uint64_t (*sub_2500BCF28(uint64_t *a1))(uint64_t *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = geom_point_cloud_laplacian_create_opt_get_required_neighbors_3d(v3);
  return sub_2500BCF74;
}

uint64_t sub_2500BCFE0(uint64_t a1, void *a2, uint64_t (*a3)(void, uint64_t, void *))
{
  v4 = a3(*(a1 + 16), a1 + 32, a2);

  return v4;
}

void sub_2500BD050(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, uint64_t, void)@<X4>, uint64_t *a4@<X8>)
{
  v5 = *a2;
  v6 = a3(*(a1 + 16), a1 + 32, *a2);

  *a4 = v6;
}

Swift::Bool __swiftcall computeConstrainedDelaunayTriangulation(points:outTriangleVertexIndices:)(Swift::OpaquePointer points, OS_geom_collection_u *outTriangleVertexIndices)
{
  geom_point_cloud_compute_constrained_delaunay_triangulation_3f(*(points._rawValue + 2), points._rawValue + 32, outTriangleVertexIndices->super.isa);
}

{
  geom_point_cloud_compute_constrained_delaunay_triangulation_3d(*(points._rawValue + 2), points._rawValue + 32, outTriangleVertexIndices->super.isa);
}

Swift::Void __swiftcall applyCatmullClarkSubdivisionStencil(vertex:vertexPositions:oneRingFaceVertexIndices:oneRingFaceAccumulatedVertexCount:)(Swift::UInt32 vertex, Swift::OpaquePointer vertexPositions, Swift::OpaquePointer oneRingFaceVertexIndices, Swift::OpaquePointer oneRingFaceAccumulatedVertexCount)
{
  geom_apply_catmull_clark_subdivision_stencil_3f(vertex, vertexPositions._rawValue + 32, oneRingFaceVertexIndices._rawValue + 8, *(oneRingFaceAccumulatedVertexCount._rawValue + 2), oneRingFaceAccumulatedVertexCount._rawValue + 8);
}

{
  geom_apply_catmull_clark_subdivision_stencil_3d(vertex, vertexPositions._rawValue + 32, oneRingFaceVertexIndices._rawValue + 8, *(oneRingFaceAccumulatedVertexCount._rawValue + 2), oneRingFaceAccumulatedVertexCount._rawValue + 8, v4);
}

Swift::Void __swiftcall applyCatmullClarkLimitStencil(vertex:vertexPositions:oneRingFaceVertexIndices:oneRingFaceAccumulatedVertexCount:)(Swift::UInt32 vertex, Swift::OpaquePointer vertexPositions, Swift::OpaquePointer oneRingFaceVertexIndices, Swift::OpaquePointer oneRingFaceAccumulatedVertexCount)
{
  geom_apply_catmull_clark_limit_stencil_3f(vertex, vertexPositions._rawValue + 32, oneRingFaceVertexIndices._rawValue + 8, *(oneRingFaceAccumulatedVertexCount._rawValue + 2), oneRingFaceAccumulatedVertexCount._rawValue + 8);
}

{
  geom_apply_catmull_clark_limit_stencil_3d(vertex, vertexPositions._rawValue + 32, oneRingFaceVertexIndices._rawValue + 8, *(oneRingFaceAccumulatedVertexCount._rawValue + 2), oneRingFaceAccumulatedVertexCount._rawValue + 8, v4);
}

Swift::Void __swiftcall applyCatmullClarkNormalStencil(vertex:vertexPositions:oneRingFaceVertexIndices:oneRingFaceAccumulatedVertexCount:)(Swift::UInt32 vertex, Swift::OpaquePointer vertexPositions, Swift::OpaquePointer oneRingFaceVertexIndices, Swift::OpaquePointer oneRingFaceAccumulatedVertexCount)
{
  geom_apply_catmull_clark_normal_stencil_3f(vertex, vertexPositions._rawValue + 32, oneRingFaceVertexIndices._rawValue + 8, *(oneRingFaceAccumulatedVertexCount._rawValue + 2), oneRingFaceAccumulatedVertexCount._rawValue + 8);
}

{
  geom_apply_catmull_clark_normal_stencil_3d(vertex, vertexPositions._rawValue + 32, oneRingFaceVertexIndices._rawValue + 8, *(oneRingFaceAccumulatedVertexCount._rawValue + 2), oneRingFaceAccumulatedVertexCount._rawValue + 8, v4);
}

void geom_create_quadtree_f_cold_1(void *a1)
{
  if (*a1)
  {
    OUTLINED_FUNCTION_1();
  }
}

void geom_create_quadtree_d_cold_1(void *a1)
{
  if (*a1)
  {
    OUTLINED_FUNCTION_0();
  }
}

void geom_create_octree_d_cold_1(void *a1)
{
  if (*a1)
  {
    OUTLINED_FUNCTION_1();
  }
}

uint64_t _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE19hash_brown_iteratorIRNS2_4pairIKSP_SR_EEEppEv(void *a1)
{
  v1 = OUTLINED_FUNCTION_18(a1);
  if (v2)
  {
LABEL_8:
    v13 = -1;
    return OUTLINED_FUNCTION_16(v1, v13);
  }

  v1 = OUTLINED_FUNCTION_5(v1);
  if (v2)
  {
    v7 = v5 + 1;
    v8 = xmmword_2500C4D40;
    v9 = 0x3830282018100800;
    while (v7 < v3[2] >> 4)
    {
      v1 = OUTLINED_FUNCTION_1_0(v1, v3, v8, v9);
      if (!(!v12 & v2))
      {
        v13 = v11 + v10;
        return OUTLINED_FUNCTION_16(v1, v13);
      }
    }

    goto LABEL_8;
  }

  v13 = v6 + (v4 & 0xFFFFFFFFFFFFFFF0);
  return OUTLINED_FUNCTION_16(v1, v13);
}

uint64_t _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE6insertERKSP_RKSR_()
{
  OUTLINED_FUNCTION_4();
  if (_ZNK4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE13find_internalERKSP_(v0, v1) == -1)
  {
    v4 = OUTLINED_FUNCTION_7();
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE12internal_addISR_EEmRKSP_SC_(v4, v5, v6);
    OUTLINED_FUNCTION_11();
    if (v8)
    {
      v3 = 0;
    }

    else
    {
      *v9.i64 = OUTLINED_FUNCTION_9(v7);
      *v10.i64 = OUTLINED_FUNCTION_3(v9, xmmword_2500C4D40);
      OUTLINED_FUNCTION_2(v10, 0x3830282018100800);
    }
  }

  else
  {
    v2 = OUTLINED_FUNCTION_8();
  }

  return OUTLINED_FUNCTION_10(v2, v3);
}

uint64_t _ZNK4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE13find_internalERKSP_(uint64_t *a1, unsigned __int16 *a2)
{
  if (a1[2] < 0x10)
  {
LABEL_15:
    v14 = -1;
  }

  else
  {
    OUTLINED_FUNCTION_0_0(a1, a2);
    OUTLINED_FUNCTION_17();
    while (1)
    {
      OUTLINED_FUNCTION_6(v2, v3, v4);
      v12 = __clz(__rbit64(v10));
      if (v12 <= 0x3F)
      {
        break;
      }

LABEL_9:
      OUTLINED_FUNCTION_12();
      if (v21)
      {
        goto LABEL_15;
      }

      if (v20 + 1 == v18)
      {
        v22 = 0;
      }

      else
      {
        v22 = v20 + 1;
      }

      v14 = -1;
      if (v22 == v19)
      {
        return OUTLINED_FUNCTION_15(v14);
      }
    }

    v13 = 16 * v9;
    while (1)
    {
      v14 = v12 + v13;
      v15 = (*(v5 + 8) + (v12 + v13) * v7);
      v16.i32[0] = *v15;
      v16.i32[1] = v15[1];
      v17 = vceq_s32(v16, v11);
      if ((vminv_u16(vuzp1_s16(v17, v17)) & 0x8000) != 0 && *(v15 + 4) == v6)
      {
        break;
      }

      if (v12 != 63)
      {
        v12 = __clz(__rbit64((v8 << v12) & v10));
        if (v12 < 0x40)
        {
          continue;
        }
      }

      goto LABEL_9;
    }
  }

  return OUTLINED_FUNCTION_15(v14);
}

void _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE6insertERKSP_RKS4_(void *a1@<X0>, unsigned __int16 *a2@<X1>, double *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, int8x8_t a9@<D4>)
{
  if (_ZNK4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE13find_internalERKSP_(a1, a2, a5, a6, a7, a8, a9) == -1)
  {
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE12internal_addIS4_EEmRKSP_SC_(a1, a2, *a3);
    if (v15 >> 4 >= a1[2] >> 4)
    {
      v13 = 0;
    }

    else
    {
      v13 = ~*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * (v15 >> 4))), xmmword_2500C4D40)))), 0x3830282018100800);
    }

    v14 = 1;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = -1;
  }

  *a4 = a1;
  *(a4 + 8) = v13;
  *(a4 + 16) = v15;
  *(a4 + 24) = v14;
}

uint64_t _ZNK4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE13find_internalERKSP_(void *a1, __int16 *a2, double a3, double a4, double a5, double a6, int8x8_t a7)
{
  v7 = a1[2];
  if (v7 < 0x10)
  {
    return -1;
  }

  v8 = v7 >> 4;
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 4);
  v12 = (v11 | (2 * ((v10 + (v9 << 6) + (v9 >> 2) + 0x1E3779B97F4A7C17) ^ v9))) % v8;
  v13 = vdupq_n_s8((v11 | (2 * ((v10 + (v9 >> 2) + 23) ^ v9))) & 0x7F);
  a7.i16[0] = *a2;
  a7.i16[2] = a2[1];
  v14.i64[0] = -1;
  v14.i64[1] = -1;
  v15 = vand_s8(a7, 0xFFFF0000FFFFLL);
  v16 = v12;
  while (1)
  {
    v17 = *(*a1 + 16 * v16);
    v18 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v13, v17), xmmword_2500C4D40)))), 0x3830282018100800);
    v19 = __clz(__rbit64(v18));
    if (v19 <= 0x3F)
    {
      break;
    }

LABEL_9:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v17, v14), xmmword_2500C4D40)))), 0x3830282018100800))
    {
      return -1;
    }

    if (v16 + 1 == v8)
    {
      v16 = 0;
    }

    else
    {
      ++v16;
    }

    v21 = -1;
    if (v16 == v12)
    {
      return v21;
    }
  }

  v20 = 16 * v16;
  while (1)
  {
    v21 = v19 + v20;
    v22 = (a1[1] + 16 * (v19 + v20));
    v23.i32[0] = *v22;
    v23.i32[1] = v22[1];
    v24 = vceq_s32(v23, v15);
    if ((vminv_u16(vuzp1_s16(v24, v24)) & 0x8000) != 0 && *(v22 + 4) == v11)
    {
      return v21;
    }

    if (v19 != 63)
    {
      v19 = __clz(__rbit64((-2 << v19) & v18));
      if (v19 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_9;
  }
}

void *_ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE19hash_brown_iteratorIRNS2_4pairIKSP_S4_EEEppEv(void *result)
{
  v1 = result[2];
  v2 = v1 >> 4;
  v3 = *result;
  if (v1 >> 4 >= *(*result + 16) >> 4)
  {
LABEL_8:
    v9 = -1;
    goto LABEL_9;
  }

  v4 = __clz(__rbit64(result[1] & (-2 << (v1 & 0xF))));
  if (v4 >= 0x40)
  {
    v5 = 16 * v2;
    v6 = v2 + 1;
    while (v6 < v3[2] >> 4)
    {
      v7 = ~*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*v3 + v5 + 16)), xmmword_2500C4D40)))), 0x3830282018100800);
      result[1] = v7;
      v8 = __clz(__rbit64(v7));
      v5 += 16;
      ++v6;
      if (v8 <= 0x3F)
      {
        v9 = v8 + v5;
        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

  v9 = v4 + (v1 & 0xFFFFFFFFFFFFFFF0);
LABEL_9:
  result[2] = v9;
  return result;
}

void _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE15remove_internalEm(void *a1, uint64_t a2)
{
  if (a2 != -1)
  {
    OUTLINED_FUNCTION_14(a1, a2);
    OUTLINED_FUNCTION_13(v2, v3, v4);
    if (v7)
    {
      if (v6 < *(v5 + 16) >> 2)
      {
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE13grow_to_countEv(v5);
      }
    }
  }
}

uint64_t _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IdS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE6insertERKSP_RKSR_()
{
  OUTLINED_FUNCTION_4();
  if (_ZNK4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE13find_internalERKSP_(v0, v1) == -1)
  {
    v4 = OUTLINED_FUNCTION_7();
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IdS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE12internal_addISR_EEmRKSP_SC_(v4, v5, v6);
    OUTLINED_FUNCTION_11();
    if (v8)
    {
      v3 = 0;
    }

    else
    {
      *v9.i64 = OUTLINED_FUNCTION_9(v7);
      *v10.i64 = OUTLINED_FUNCTION_3(v9, xmmword_2500C4D40);
      OUTLINED_FUNCTION_2(v10, 0x3830282018100800);
    }
  }

  else
  {
    v2 = OUTLINED_FUNCTION_8();
  }

  return OUTLINED_FUNCTION_10(v2, v3);
}

void _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IdS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE6insertERKSP_RKS4_(void *a1@<X0>, unsigned __int16 *a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, int8x8_t a9@<D4>)
{
  if (_ZNK4geom10hash_brownIZNS_23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IdS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE13find_internalERKSP_(a1, a2, a5, a6, a7, a8, a9) == -1)
  {
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IdS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE12internal_addIS4_EEmRKSP_SC_(a1, a2, *a3);
    if (v15 >> 4 >= a1[2] >> 4)
    {
      v13 = 0;
    }

    else
    {
      v13 = ~*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * (v15 >> 4))), xmmword_2500C4D40)))), 0x3830282018100800);
    }

    v14 = 1;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = -1;
  }

  *a4 = a1;
  *(a4 + 8) = v13;
  *(a4 + 16) = v15;
  *(a4 + 24) = v14;
}

uint64_t _ZNK4geom10hash_brownIZNS_23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IdS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE13find_internalERKSP_(void *a1, __int16 *a2, double a3, double a4, double a5, double a6, int8x8_t a7)
{
  v7 = a1[2];
  if (v7 < 0x10)
  {
    return -1;
  }

  v8 = v7 >> 4;
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 4);
  v12 = (v11 | (2 * ((v10 + (v9 << 6) + (v9 >> 2) + 0x1E3779B97F4A7C17) ^ v9))) % v8;
  v13 = vdupq_n_s8((v11 | (2 * ((v10 + (v9 >> 2) + 23) ^ v9))) & 0x7F);
  a7.i16[0] = *a2;
  a7.i16[2] = a2[1];
  v14.i64[0] = -1;
  v14.i64[1] = -1;
  v15 = vand_s8(a7, 0xFFFF0000FFFFLL);
  v16 = v12;
  while (1)
  {
    v17 = *(*a1 + 16 * v16);
    v18 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v13, v17), xmmword_2500C4D40)))), 0x3830282018100800);
    v19 = __clz(__rbit64(v18));
    if (v19 <= 0x3F)
    {
      break;
    }

LABEL_9:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v17, v14), xmmword_2500C4D40)))), 0x3830282018100800))
    {
      return -1;
    }

    if (v16 + 1 == v8)
    {
      v16 = 0;
    }

    else
    {
      ++v16;
    }

    v21 = -1;
    if (v16 == v12)
    {
      return v21;
    }
  }

  v20 = 16 * v16;
  while (1)
  {
    v21 = v19 + v20;
    v22 = (a1[1] + 32 * (v19 + v20));
    v23.i32[0] = *v22;
    v23.i32[1] = v22[1];
    v24 = vceq_s32(v23, v15);
    if ((vminv_u16(vuzp1_s16(v24, v24)) & 0x8000) != 0 && *(v22 + 4) == v11)
    {
      return v21;
    }

    if (v19 != 63)
    {
      v19 = __clz(__rbit64((-2 << v19) & v18));
      if (v19 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_9;
  }
}

void _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IdS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE15remove_internalEm(void *a1, uint64_t a2)
{
  if (a2 != -1)
  {
    OUTLINED_FUNCTION_14(a1, a2);
    OUTLINED_FUNCTION_13(v2, v3, v4);
    if (v7)
    {
      if (v6 < *(v5 + 16) >> 2)
      {
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IdS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE13grow_to_countEv(v5);
      }
    }
  }
}

uint64_t _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRNSt3__16__bindIRPFfDv2_fPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE6insertERKSY_RKS10_()
{
  OUTLINED_FUNCTION_4();
  if (_ZNK4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE13find_internalERKSP_(v0, v1) == -1)
  {
    v4 = OUTLINED_FUNCTION_7();
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRNSt3__16__bindIRPFfDv2_fPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE12internal_addIS10_EEmRKSY_SL_(v4, v5, v6);
    OUTLINED_FUNCTION_11();
    if (v8)
    {
      v3 = 0;
    }

    else
    {
      *v9.i64 = OUTLINED_FUNCTION_9(v7);
      *v10.i64 = OUTLINED_FUNCTION_3(v9, xmmword_2500C4D40);
      OUTLINED_FUNCTION_2(v10, 0x3830282018100800);
    }
  }

  else
  {
    v2 = OUTLINED_FUNCTION_8();
  }

  return OUTLINED_FUNCTION_10(v2, v3);
}

void _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRNSt3__16__bindIRPFfDv2_fPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE16vertex_map_queryS4_ZNS1_IfSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE6insertERKSY_RKS4_(void *a1@<X0>, unsigned __int16 *a2@<X1>, double *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, int8x8_t a9@<D4>)
{
  if (_ZNK4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE13find_internalERKSP_(a1, a2, a5, a6, a7, a8, a9) == -1)
  {
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRNSt3__16__bindIRPFfDv2_fPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE16vertex_map_queryS4_ZNS1_IfSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE12internal_addIS4_EEmRKSY_SL_(a1, a2, *a3);
    if (v15 >> 4 >= a1[2] >> 4)
    {
      v13 = 0;
    }

    else
    {
      v13 = ~*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * (v15 >> 4))), xmmword_2500C4D40)))), 0x3830282018100800);
    }

    v14 = 1;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = -1;
  }

  *a4 = a1;
  *(a4 + 8) = v13;
  *(a4 + 16) = v15;
  *(a4 + 24) = v14;
}

void _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRNSt3__16__bindIRPFfDv2_fPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE15remove_internalEm(void *a1, uint64_t a2)
{
  if (a2 != -1)
  {
    OUTLINED_FUNCTION_14(a1, a2);
    OUTLINED_FUNCTION_13(v2, v3, v4);
    if (v7)
    {
      if (v6 < *(v5 + 16) >> 2)
      {
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIfRNSt3__16__bindIRPFfDv2_fPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE13grow_to_countEv(v5);
      }
    }
  }
}

uint64_t _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRNSt3__16__bindIRPFdDv2_dPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IdSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE6insertERKSY_RKS10_()
{
  OUTLINED_FUNCTION_4();
  if (_ZNK4geom10hash_brownIZNS_23marching_squares_2_implIfRKNSt3__18functionIFfDv2_fEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IfS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE13find_internalERKSP_(v0, v1) == -1)
  {
    v4 = OUTLINED_FUNCTION_7();
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRNSt3__16__bindIRPFdDv2_dPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IdSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE12internal_addIS10_EEmRKSY_SL_(v4, v5, v6);
    OUTLINED_FUNCTION_11();
    if (v8)
    {
      v3 = 0;
    }

    else
    {
      *v9.i64 = OUTLINED_FUNCTION_9(v7);
      *v10.i64 = OUTLINED_FUNCTION_3(v9, xmmword_2500C4D40);
      OUTLINED_FUNCTION_2(v10, 0x3830282018100800);
    }
  }

  else
  {
    v2 = OUTLINED_FUNCTION_8();
  }

  return OUTLINED_FUNCTION_10(v2, v3);
}

void _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRNSt3__16__bindIRPFdDv2_dPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE16vertex_map_queryS4_ZNS1_IdSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE6insertERKSY_RKS4_(void *a1@<X0>, unsigned __int16 *a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, int8x8_t a9@<D4>)
{
  if (_ZNK4geom10hash_brownIZNS_23marching_squares_2_implIdRKNSt3__18functionIFdDv2_dEEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISC_Lh2EvE5valueENS2_9allocatorISH_EEEERNSE_IjNSI_IjEEEEE16vertex_map_queryS4_ZNS1_IdS8_EEvSA_tSD_SL_SO_ENSP_4hashENS2_8equal_toISP_EEE13find_internalERKSP_(a1, a2, a5, a6, a7, a8, a9) == -1)
  {
    _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRNSt3__16__bindIRPFdDv2_dPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE16vertex_map_queryS4_ZNS1_IdSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE12internal_addIS4_EEmRKSY_SL_(a1, a2, *a3);
    if (v15 >> 4 >= a1[2] >> 4)
    {
      v13 = 0;
    }

    else
    {
      v13 = ~*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * (v15 >> 4))), xmmword_2500C4D40)))), 0x3830282018100800);
    }

    v14 = 1;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = -1;
  }

  *a4 = a1;
  *(a4 + 8) = v13;
  *(a4 + 16) = v15;
  *(a4 + 24) = v14;
}

void _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRNSt3__16__bindIRPFdDv2_dPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IdSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE15remove_internalEm(void *a1, uint64_t a2)
{
  if (a2 != -1)
  {
    OUTLINED_FUNCTION_14(a1, a2);
    OUTLINED_FUNCTION_13(v2, v3, v4);
    if (v7)
    {
      if (v6 < *(v5 + 16) >> 2)
      {
        _ZN4geom10hash_brownIZNS_23marching_squares_2_implIdRNSt3__16__bindIRPFdDv2_dPKvEJRKNS2_12placeholders4__phILi1EEERS6_EEEEEvOT0_tNS_4bboxIT_Lh2EEERNS2_6vectorINS_11vector_typeISL_Lh2EvE5valueENS2_9allocatorISQ_EEEERNSN_IjNSR_IjEEEEE14edge_map_queryNS_12_GLOBAL__N_19cell_edgeEZNS1_IdSH_EEvSJ_tSM_SU_SX_ENSY_4hashENS2_8equal_toISY_EEE13grow_to_countEv(v5);
      }
    }
  }
}

void geom::internal::triangle_mesh_decimator<float>::optimize_position_for_area_and_volume_preservation()
{
  if (__cxa_guard_acquire(&_ZGVZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_cos_alpha_squared))
  {
    OUTLINED_FUNCTION_2_0();
    __cxa_guard_release(&_ZGVZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_cos_alpha_squared);
  }
}

{
  if (__cxa_guard_acquire(&_ZGVZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_sin_alpha_squared))
  {
    OUTLINED_FUNCTION_3_0();
    __cxa_guard_release(&_ZGVZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_sin_alpha_squared);
  }
}

void geom::vertex_placement_constraints<float>::add_objective_function()
{
  if (__cxa_guard_acquire(&_ZGVZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_cos_alpha_squared))
  {
    OUTLINED_FUNCTION_2_0();

    __cxa_guard_release(&_ZGVZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_cos_alpha_squared);
  }
}

{
  if (__cxa_guard_acquire(&_ZGVZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_sin_alpha_squared))
  {
    OUTLINED_FUNCTION_3_0();

    __cxa_guard_release(&_ZGVZN4geom28vertex_placement_constraintsIfE14add_constraintERKDv3_ffE19k_sin_alpha_squared);
  }
}

void geom::internal::triangle_mesh_decimator<double>::optimize_position_for_area_and_volume_preservation()
{
  if (__cxa_guard_acquire(&_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_cos_alpha_squared))
  {
    OUTLINED_FUNCTION_0_1();
    __cxa_guard_release(&_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_cos_alpha_squared);
  }
}

{
  if (__cxa_guard_acquire(&_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_sin_alpha_squared))
  {
    OUTLINED_FUNCTION_1_1();
    __cxa_guard_release(&_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_sin_alpha_squared);
  }
}

void geom::vertex_placement_constraints<double>::add_objective_function()
{
  if (__cxa_guard_acquire(&_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_cos_alpha_squared))
  {
    OUTLINED_FUNCTION_0_1();

    __cxa_guard_release(&_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_cos_alpha_squared);
  }
}

{
  if (__cxa_guard_acquire(&_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_sin_alpha_squared))
  {
    OUTLINED_FUNCTION_1_1();

    __cxa_guard_release(&_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_sin_alpha_squared);
  }
}

void geom::logging::points_of_interest_log()
{
  if (__cxa_guard_acquire(qword_27F3BAD28))
  {
    _MergedGlobals = os_log_create("com.apple.Geometry", "PointsOfInterest");

    __cxa_guard_release(qword_27F3BAD28);
  }
}

void _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIfE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE6insertERKS1_OS4_(uint64_t *a1@<X0>, int16x4_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (_ZNK4geom10hash_brownIDv3_tNS_14marching_cubesIfE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE13find_internalERKS1_(a1, a2) == -1)
  {
    v11 = *(a3 + 16);
    v12[0] = *a3;
    v12[1] = v11;
    v12[2] = *(a3 + 32);
    v13 = *(a3 + 48);
    _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIfE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE12internal_addIS4_EEmRKS1_T_(a1, a2, v12);
    if (v10 >> 4 >= a1[2] >> 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = ~*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * (v10 >> 4))), xmmword_2500C4D40)))), 0x3830282018100800);
    }

    v9 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = -1;
  }

  *a4 = a1;
  *(a4 + 8) = v8;
  *(a4 + 16) = v10;
  *(a4 + 24) = v9;
}

uint64_t _ZNK4geom10hash_brownIDv3_tNS_14marching_cubesIfE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE13find_internalERKS1_(void *a1, int16x4_t *a2)
{
  v2 = a1[2];
  if (v2 < 0x10)
  {
    return -1;
  }

  v3 = v2 >> 4;
  v4 = HIWORD(a2->u32[0]) - 0x61C8864680B583E9;
  v5 = (v4 + (a2->u16[0] << 6) + (a2->u16[0] >> 2)) ^ a2->u16[0];
  v6 = (v4 + (v5 << 6) + (v5 >> 2)) ^ v5;
  v7 = v6 % v3;
  v8 = vdupq_n_s8(v6 & 0x7F);
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = v6 % v3;
  while (1)
  {
    v11 = *(*a1 + 16 * v10);
    v12 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v8, v11), xmmword_2500C4D40)))), 0x3830282018100800);
    v13 = __clz(__rbit64(v12));
    if (v13 <= 0x3F)
    {
      break;
    }

LABEL_8:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v11, v9), xmmword_2500C4D40)))), 0x3830282018100800))
    {
      return -1;
    }

    if (v10 + 1 == v3)
    {
      v10 = 0;
    }

    else
    {
      ++v10;
    }

    v15 = -1;
    if (v10 == v7)
    {
      return v15;
    }
  }

  v14 = 16 * v10;
  while (1)
  {
    v15 = v13 + v14;
    v16 = vceq_s16(*a2, *(a1[1] + ((v13 + v14) << 6)));
    v16.i16[3] = v16.i16[2];
    if ((vminv_u16(v16) & 0x8000) != 0)
    {
      return v15;
    }

    if (v13 != 63)
    {
      v13 = __clz(__rbit64((-2 << v13) & v12));
      if (v13 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_8;
  }
}

void geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::insert(void *a1@<X0>, int16x4_t *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  if (geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::find_internal(a1, a2) == -1)
  {
    geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::internal_add<unsigned int>(a1, a2, *a3);
    if (v10 >> 4 >= a1[2] >> 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = ~*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * (v10 >> 4))), xmmword_2500C4D40)))), 0x3830282018100800);
    }

    v9 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = -1;
  }

  *a4 = a1;
  *(a4 + 8) = v8;
  *(a4 + 16) = v10;
  *(a4 + 24) = v9;
}

uint64_t geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::find_internal(void *a1, int16x4_t *a2)
{
  v2 = a1[2];
  if (v2 < 0x10)
  {
    return -1;
  }

  v5 = a2->u16[0];
  v6 = HIWORD(a2->u32[0]) - 0x61C8864680B583E9;
  v7 = (v6 + (((v6 + (v5 << 6) + (v5 >> 2)) ^ v5) << 6) + (((v6 + (v5 << 6) + (v5 >> 2)) ^ v5) >> 2)) ^ (v6 + (v5 << 6) + (v5 >> 2)) ^ v5;
  v8 = ((a2[1].u8[0] + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583E9) ^ v7) % (v2 >> 4);
  v9 = xmmword_2500C4D40;
  v10.i64[0] = -1;
  for (v10.i64[1] = -1; ; v10.i64[1] = -1)
  {
    v11 = ((a2->u16[0] << 6) + (HIWORD(a2->u32[0]) + 31767) + (a2->u16[0] >> 2)) ^ a2->u16[0];
    v12 = ((v11 << 6) + (HIWORD(a2->u32[0]) + 31767) + (v11 >> 2)) ^ v11;
    v13 = a2[1].u8[0];
    v14 = *(*a1 + 16 * v8);
    v15 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(vdupq_n_s8(((v13 + (v12 << 6) + (v12 >> 2) + 23) ^ v12) & 0x7F), v14), v9)))), 0x3830282018100800);
    v16 = __clz(__rbit64(v15));
    if (v16 <= 0x3F)
    {
      break;
    }

LABEL_9:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v14, v10), v9)))), 0x3830282018100800))
    {
      return -1;
    }

    v23 = v9;
    if (++v8 == v2 >> 4)
    {
      v8 = 0;
    }

    v21 = geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::compute_hash(a1, a2);
    v2 = a1[2];
    v22 = v21 % (v2 >> 4);
    result = -1;
    v9 = v23;
    v10.i64[0] = -1;
    if (v8 == v22)
    {
      return result;
    }
  }

  v17 = 16 * v8;
  while (1)
  {
    result = v16 + v17;
    v19 = (a1[1] + 24 * (v16 + v17));
    v20 = vceq_s16(*a2, *v19);
    v20.i16[3] = v20.i16[2];
    if ((vminv_u16(v20) & 0x8000) != 0 && v13 == v19[1].u8[0])
    {
      return result;
    }

    if (v16 != 63)
    {
      v16 = __clz(__rbit64((-2 << v16) & v15));
      if (v16 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_9;
  }
}

void _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIdE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE6insertERKS1_OS4_(uint64_t *a1@<X0>, int16x4_t *a2@<X1>, const void *a3@<X2>, uint64_t a4@<X8>)
{
  if (_ZNK4geom10hash_brownIDv3_tNS_14marching_cubesIdE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE13find_internalERKS1_(a1, a2) == -1)
  {
    memcpy(__dst, a3, sizeof(__dst));
    _ZN4geom10hash_brownIDv3_tNS_14marching_cubesIdE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE12internal_addIS4_EEmRKS1_T_(a1, a2, __dst);
    if (v10 >> 4 >= a1[2] >> 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = ~*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * (v10 >> 4))), xmmword_2500C4D40)))), 0x3830282018100800);
    }

    v9 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = -1;
  }

  *a4 = a1;
  *(a4 + 8) = v8;
  *(a4 + 16) = v10;
  *(a4 + 24) = v9;
}

uint64_t _ZNK4geom10hash_brownIDv3_tNS_14marching_cubesIdE4cellENSt3__14hashIS1_EENS_23vector_equality_functorEE13find_internalERKS1_(void *a1, int16x4_t *a2)
{
  v2 = a1[2];
  if (v2 < 0x10)
  {
    return -1;
  }

  v3 = v2 >> 4;
  v4 = HIWORD(a2->u32[0]) - 0x61C8864680B583E9;
  v5 = (v4 + (a2->u16[0] << 6) + (a2->u16[0] >> 2)) ^ a2->u16[0];
  v6 = (v4 + (v5 << 6) + (v5 >> 2)) ^ v5;
  v7 = v6 % v3;
  v8 = vdupq_n_s8(v6 & 0x7F);
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = v6 % v3;
  while (1)
  {
    v11 = *(*a1 + 16 * v10);
    v12 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v8, v11), xmmword_2500C4D40)))), 0x3830282018100800);
    v13 = __clz(__rbit64(v12));
    if (v13 <= 0x3F)
    {
      break;
    }

LABEL_8:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v11, v9), xmmword_2500C4D40)))), 0x3830282018100800))
    {
      return -1;
    }

    if (v10 + 1 == v3)
    {
      v10 = 0;
    }

    else
    {
      ++v10;
    }

    v15 = -1;
    if (v10 == v7)
    {
      return v15;
    }
  }

  v14 = 16 * v10;
  while (1)
  {
    v15 = v13 + v14;
    v16 = vceq_s16(*a2, *(a1[1] + 96 * (v13 + v14)));
    v16.i16[3] = v16.i16[2];
    if ((vminv_u16(v16) & 0x8000) != 0)
    {
      return v15;
    }

    if (v13 != 63)
    {
      v13 = __clz(__rbit64((-2 << v13) & v12));
      if (v13 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_8;
  }
}

void geom::hash_brown<geom::marching_cubes<double>::cell_edge,unsigned int,geom::marching_cubes<double>::cell_edge_hash,std::equal_to<geom::marching_cubes<double>::cell_edge>>::insert(void *a1@<X0>, int16x4_t *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  if (geom::hash_brown<geom::marching_cubes<float>::cell_edge,unsigned int,geom::marching_cubes<float>::cell_edge_hash,std::equal_to<geom::marching_cubes<float>::cell_edge>>::find_internal(a1, a2) == -1)
  {
    geom::hash_brown<geom::marching_cubes<double>::cell_edge,unsigned int,geom::marching_cubes<double>::cell_edge_hash,std::equal_to<geom::marching_cubes<double>::cell_edge>>::internal_add<unsigned int>(a1, a2, *a3);
    if (v10 >> 4 >= a1[2] >> 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = ~*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * (v10 >> 4))), xmmword_2500C4D40)))), 0x3830282018100800);
    }

    v9 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = -1;
  }

  *a4 = a1;
  *(a4 + 8) = v8;
  *(a4 + 16) = v10;
  *(a4 + 24) = v9;
}

void geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::ComputeTriangleNormals()
{
  {
    geo::math::RangeMesh<geo::math::RangeMesh3Types<double,unsigned int,unsigned int,unsigned int,unsigned int>>::ComputeTriangleNormals(geo::math::iterator::Range<geo::math::Matrix<double,3,1> const*> const&,geo::math::iterator::Range<unsigned int const*> const&,geo::math::iterator::Range<geo::math::Matrix<unsigned int,3,1> const*> const&,BOOL,BOOL,BOOL,double)::zero = 0uLL;
    qword_27F3B9DD0 = 0;
  }
}

void geom::hash_brown<unsigned int,unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>>::insert(void *a1@<X0>, _DWORD *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  if (geom::hash_brown<unsigned int,unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>>::find_internal(a1, a2) == -1)
  {
    geom::hash_brown<unsigned int,unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>>::internal_add<unsigned int>(a1, a2, *a3);
    if (v10 >> 4 >= a1[2] >> 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = ~*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * (v10 >> 4))), xmmword_2500C4D40)))), 0x3830282018100800);
    }

    v9 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = -1;
  }

  *a4 = a1;
  *(a4 + 8) = v8;
  *(a4 + 16) = v10;
  *(a4 + 24) = v9;
}

uint64_t geom::hash_brown<unsigned int,unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>>::find_internal(void *a1, _DWORD *a2)
{
  v2 = a1[2];
  if (v2 < 0x10)
  {
    return -1;
  }

  v3 = v2 >> 4;
  v4 = *a2;
  v5 = v4 % (v2 >> 4);
  v6 = vdupq_n_s8(*a2 & 0x7F);
  v7.i64[0] = -1;
  v7.i64[1] = -1;
  v8 = v5;
  while (1)
  {
    v9 = *(*a1 + 16 * v8);
    v10 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v6, v9), xmmword_2500C4D40)))), 0x3830282018100800);
    v11 = __clz(__rbit64(v10));
    if (v11 <= 0x3F)
    {
      break;
    }

LABEL_8:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v9, v7), xmmword_2500C4D40)))), 0x3830282018100800))
    {
      return -1;
    }

    if (v8 + 1 == v3)
    {
      v8 = 0;
    }

    else
    {
      ++v8;
    }

    v13 = -1;
    if (v8 == v5)
    {
      return v13;
    }
  }

  v12 = 16 * v8;
  while (1)
  {
    v13 = v11 + v12;
    if (v4 == *(a1[1] + 8 * (v11 + v12)))
    {
      return v13;
    }

    if (v11 != 63)
    {
      v11 = __clz(__rbit64((-2 << v11) & v10));
      if (v11 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_8;
  }
}

void SparseFactor()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void geom::sparse_linear_solver<float>::solve()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

{
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void geom::hash_brown<std::pair<unsigned int,unsigned int>,unsigned int,geom::anonymous namespace::vertex_pair_hash,std::equal_to<std::pair<unsigned int,unsigned int>>>::insert_or_assign(uint64_t *a1@<X0>, unsigned int *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *a3;
  if (internal == -1)
  {
    v11 = internal >> 4;
    if (internal >> 4 < a1[2] >> 4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v12 = 0;
    goto LABEL_4;
  }

  v10 = a1[2];
  *(a1[1] + 12 * internal + 8) = v9;
  v11 = internal >> 4;
  if (internal >> 4 >= v10 >> 4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v12 = ~*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_2500C4D40)))), 0x3830282018100800);
LABEL_4:
  *a4 = a1;
  *(a4 + 8) = v12;
  *(a4 + 16) = internal;
  *(a4 + 24) = 1;
}

uint64_t geom::hash_brown<std::pair<unsigned int,unsigned int>,unsigned int,geom::anonymous namespace::vertex_pair_hash,std::equal_to<std::pair<unsigned int,unsigned int>>>::find_internal(void *a1, unsigned int *a2)
{
  v2 = a1[2];
  if (v2 < 0x10)
  {
    return -1;
  }

  v3 = v2 >> 4;
  v4 = *a2;
  v5 = a2[1];
  v6 = (v5 | (v4 << 32)) % (v2 >> 4);
  v7 = vdupq_n_s8(a2[1] & 0x7F);
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v9 = v6;
  while (1)
  {
    v10 = *(*a1 + 16 * v9);
    v11 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v7, v10), xmmword_2500C4D40)))), 0x3830282018100800);
    v12 = __clz(__rbit64(v11));
    if (v12 <= 0x3F)
    {
      break;
    }

LABEL_11:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v10, v8), xmmword_2500C4D40)))), 0x3830282018100800))
    {
      return -1;
    }

    if (v9 + 1 == v3)
    {
      v9 = 0;
    }

    else
    {
      ++v9;
    }

    v14 = -1;
    if (v9 == v6)
    {
      return v14;
    }
  }

  v13 = 16 * v9;
  while (1)
  {
    v14 = v12 + v13;
    v15 = (a1[1] + 12 * (v12 + v13));
    v17 = *v15;
    v16 = v15[1];
    if (v4 == v17 && v5 == v16)
    {
      return v14;
    }

    if (v12 != 63)
    {
      v12 = __clz(__rbit64((-2 << v12) & v11));
      if (v12 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_11;
  }
}

void geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::insert(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  if (geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::find_internal(a1, a2) == -1)
  {
    geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::internal_add<unsigned long>(a1, a2, *a3);
    if (v10 >> 4 >= a1[2] >> 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = ~*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * (v10 >> 4))), xmmword_2500C4D40)))), 0x3830282018100800);
    }

    v9 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = -1;
  }

  *a4 = a1;
  *(a4 + 8) = v8;
  *(a4 + 16) = v10;
  *(a4 + 24) = v9;
}

uint64_t geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::find_internal(void *a1, uint64_t *a2)
{
  v2 = a1[2];
  if (v2 < 0x10)
  {
    return -1;
  }

  v3 = v2 >> 4;
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 + (*a2 << 6);
  v7 = ((v6 + (*a2 >> 2) - 0x61C8864680B583E9) ^ *a2) % (v2 >> 4);
  v8 = vdupq_n_s8(((v6 + (*a2 >> 2) + 23) ^ *a2) & 0x7F);
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = v7;
  while (1)
  {
    v11 = *(*a1 + 16 * v10);
    v12 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v8, v11), xmmword_2500C4D40)))), 0x3830282018100800);
    v13 = __clz(__rbit64(v12));
    if (v13 <= 0x3F)
    {
      break;
    }

LABEL_11:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v11, v9), xmmword_2500C4D40)))), 0x3830282018100800))
    {
      return -1;
    }

    if (v10 + 1 == v3)
    {
      v10 = 0;
    }

    else
    {
      ++v10;
    }

    v15 = -1;
    if (v10 == v7)
    {
      return v15;
    }
  }

  v14 = 16 * v10;
  while (1)
  {
    v15 = v13 + v14;
    v16 = (a1[1] + 24 * (v13 + v14));
    v18 = *v16;
    v17 = v16[1];
    if (v4 == v18 && v5 == v17)
    {
      return v15;
    }

    if (v13 != 63)
    {
      v13 = __clz(__rbit64((-2 << v13) & v12));
      if (v13 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_11;
  }
}

BOOL geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::remove_internal(uint64_t a1, uint64_t a2)
{
  if (a2 != -1)
  {
    v3 = (*a1 + (a2 & 0xFFFFFFFFFFFFFFF0));
    v4.i64[0] = -1;
    v4.i64[1] = -1;
    v5 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v3, v4), xmmword_2500C4D40)))), 0x3830282018100800);
    if (v5)
    {
      v6 = -1;
    }

    else
    {
      v6 = 0x80;
    }

    v3->i8[a2 & 0xF] = v6;
    v4.i64[1] = *&v5 != 0;
    v7 = vaddq_s64(*(a1 + 24), v4);
    *(a1 + 24) = v7;
    if (v7.i64[0] >= 0x11uLL && v7.i64[0] < *(a1 + 16) >> 2)
    {
      geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::grow_to_count(a1);
    }
  }

  return a2 != -1;
}

void geom::add_triangle_helper<double>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v48 = *MEMORY[0x277D85DE8];
  v44 = ((*(a2 + 8) - *a2) >> 2) / 3uLL;
  v10 = *(a5 + 16 * *(*a4 + 8 * *a1));
  v11 = *(a5 + 16 * *(*a4 + 8 * *(a1 + 8)));
  v12 = *(a5 + 16 * *(*a4 + 8 * *(a1 + 16)));
  v45 = vsubq_f64(v11, v10);
  v46 = vsubq_f64(v12, v11);
  v47 = vsubq_f64(v10, v12);
  v13 = vmulq_f64(v45, v45);
  v14 = vaddq_f64(v13, vdupq_laneq_s64(v13, 1));
  v15 = vpaddq_f64(vmulq_f64(v46, v46), vmulq_f64(v47, v47));
  v16 = vmovn_s64(vmvnq_s8(vcgeq_f64(v14, v15))).u8[0] | (v14.f64[0] < v15.f64[1]);
  if (v15.f64[0] >= v15.f64[1])
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 == 2)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18 + 1;
  }

  v20 = *(a1 + 8 * v18);
  v21 = *(a1 + 8 * v19);
  v40 = v20;
  v41 = v21;
  internal = geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::find_internal(a3, &v40);
  if (internal == -1)
  {
    goto LABEL_11;
  }

  if (v19 == 2)
  {
    v24 = 0;
  }

  else
  {
    v24 = v19 + 1;
  }

  v43 = *(a3[1] + 24 * internal + 16);
  v25 = (*a2 + 12 * v43);
  v27 = *v25;
  v26 = v25 + 1;
  if (v20 != v27)
  {
    v26 = (*a2 + 12 * v43 + 8 * (v20 == *(*a2 + 12 * v43 + 4)));
  }

  v28 = *(a1 + 8 * v24);
  v29 = *v26;
  v30 = *(a5 + 16 * *(*a4 + 8 * v29));
  v31 = vsubq_f64(v30, *(a5 + 16 * *(*a4 + 8 * v20)));
  v32 = vsubq_f64(*(a5 + 16 * *(*a4 + 8 * v21)), v30);
  v33 = vaddvq_f64(vmulq_f64(v32, vnegq_f64(v31)));
  v34 = *(&v45 + v19);
  v35 = *(&v45 + v24);
  v36 = vaddvq_f64(vmulq_f64(v35, vnegq_f64(v34)));
  if (v33 < 0.0 && v36 < 0.0)
  {
    goto LABEL_20;
  }

  if ((vmuld_lane_f64(-v32.f64[0], v31, 1) + v31.f64[0] * v32.f64[1]) * v36 + v33 * (vmuld_lane_f64(-v35.f64[0], v34, 1) + v34.f64[0] * v35.f64[1]) >= 0.0)
  {
LABEL_11:
    LODWORD(v40) = *a1;
    std::vector<unsigned int>::push_back[abi:nn200100](a2, &v40);
    LODWORD(v40) = *(a1 + 8);
    std::vector<unsigned int>::push_back[abi:nn200100](a2, &v40);
    LODWORD(v40) = *(a1 + 16);
    std::vector<unsigned int>::push_back[abi:nn200100](a2, &v40);
    v42 = vextq_s8(*a1, *a1, 8uLL);
    geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::insert(a3, v42.i64, &v44, &v40);
    v42 = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
    geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::insert(a3, v42.i64, &v44, &v40);
    v23 = *(a1 + 16);
    v42.i64[0] = *a1;
    v42.i64[1] = v23;
  }

  else
  {
LABEL_20:
    v40 = v20;
    v41 = v21;
    v37 = 3 * v43;
    geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::erase(a3, &v40);
    v40 = v29;
    v41 = v20;
    geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::erase(a3, &v40);
    v40 = v21;
    v41 = v29;
    geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::erase(a3, &v40);
    v38 = (*a2 + 4 * v37);
    *v38 = v28;
    v38[1] = v29;
    v38[2] = v21;
    v42.i64[0] = v29;
    v42.i64[1] = v28;
    geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::insert(a3, v42.i64, &v43, &v40);
    v42.i64[0] = v21;
    v42.i64[1] = v29;
    geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::insert(a3, v42.i64, &v43, &v40);
    v42.i64[0] = v28;
    v42.i64[1] = v21;
    geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::insert(a3, v42.i64, &v43, &v40);
    LODWORD(v40) = v29;
    std::vector<unsigned int>::push_back[abi:nn200100](a2, &v40);
    LODWORD(v40) = v28;
    std::vector<unsigned int>::push_back[abi:nn200100](a2, &v40);
    LODWORD(v40) = v20;
    std::vector<unsigned int>::push_back[abi:nn200100](a2, &v40);
    v42.i64[0] = v28;
    v42.i64[1] = v29;
    geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::insert(a3, v42.i64, &v44, &v40);
    v42.i64[0] = v20;
    v42.i64[1] = v28;
    geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::insert(a3, v42.i64, &v44, &v40);
    v42.i64[0] = v29;
    v42.i64[1] = v20;
  }

  geom::hash_brown<std::pair<unsigned long,unsigned long>,unsigned long,geom::edge_hash,std::equal_to<std::pair<unsigned long,unsigned long>>>::insert(a3, v42.i64, &v44, &v40);
  v39 = *MEMORY[0x277D85DE8];
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_double2x2 __invert_d2(simd_double2x2 a1)
{
  MEMORY[0x282204380](a1.columns[0], a1.columns[1]);
  result.columns[1].f64[1] = v4;
  result.columns[1].f64[0] = v3;
  result.columns[0].f64[1] = v2;
  result.columns[0].f64[0] = v1;
  return result;
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x2822043A0](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}