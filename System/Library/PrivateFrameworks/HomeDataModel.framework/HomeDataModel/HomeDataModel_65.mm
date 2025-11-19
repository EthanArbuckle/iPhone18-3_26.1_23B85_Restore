unint64_t *sub_1D1C6CBAC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_1D1C7039C(v9, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

uint64_t sub_1D1C6CC64(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(unint64_t, uint64_t))
{
  v14 = *(a2 + 16);
  if (a4)
  {
    v15 = 0;
  }

  else
  {
    v15 = a3;
  }

  v16 = MEMORY[0x1D3890550](*(a2 + 16));
  if (v16 <= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= a5)
  {
    v18 = a5;
  }

  else
  {
    v18 = v17;
  }

  if (v18 > 4)
  {
    v20 = MEMORY[0x1D3890560]();
    v21 = *(a6(0) - 8);
    a7(a2 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v14, v20 + 16, v20 + 32);
    *a1 = v22;
    return v20;
  }

  else if (v14 >= 2)
  {
    v23 = *(a6(0) - 8);
    v24 = a8(a2 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v14);
    result = 0;
    *a1 = v24;
  }

  else
  {
    result = 0;
    *a1 = v14;
  }

  return result;
}

size_t sub_1D1C6CDDC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for BoxedTileInfoBearer(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v30 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  v32 = MEMORY[0x1E69E7CC0];
  result = sub_1D178CD64(0, a2 & ~(a2 >> 63), 0);
  v16 = v32;
  if (!a2)
  {
LABEL_11:

    return a2;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v28 = a2;
    v29 = v2;
    v17 = 0;
    v18 = *(v6 + 72);
    v27 = a1;
    do
    {
      a2 = v17;
      v31 = v17 + 1;
      sub_1D1C66B60(a1 + v18 * v17, v14, type metadata accessor for BoxedTileInfoBearer);
      v19 = *(v16 + 16) + 1;
      v20 = v16;
      while (--v19)
      {
        v21 = v20 + v18;
        sub_1D1C66B60(v20 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v12, type metadata accessor for BoxedTileInfoBearer);
        v22 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
        sub_1D1C72E20(v12, type metadata accessor for BoxedTileInfoBearer);
        v20 = v21;
        if (v22)
        {
          sub_1D1C72E20(v14, type metadata accessor for BoxedTileInfoBearer);
          goto LABEL_11;
        }
      }

      v23 = v30;
      sub_1D1C66B60(v14, v30, type metadata accessor for BoxedTileInfoBearer);
      v32 = v16;
      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1D178CD64(v24 > 1, v25 + 1, 1);
        v16 = v32;
      }

      sub_1D1C72E20(v14, type metadata accessor for BoxedTileInfoBearer);
      *(v16 + 16) = v25 + 1;
      sub_1D1C72E80(v23, v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + v25 * v18, type metadata accessor for BoxedTileInfoBearer);
      a1 = v27;
      a2 = v28;
      v17 = v31;
    }

    while (v31 != v28);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

size_t sub_1D1C6D0B4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for StaticService(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - v11;
  v27 = MEMORY[0x1E69E7CC0];
  result = sub_1D17915E0(0, a2 & ~(a2 >> 63), 0);
  v14 = v27;
  if (!a2)
  {
LABEL_11:

    return a2;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v25 = a1;
    v26 = v2;
    v15 = 0;
    v16 = *(v6 + 72);
    v24 = a2;
    do
    {
      a2 = v15++;
      sub_1D1C66B60(a1 + v16 * a2, v12, type metadata accessor for StaticService);
      v17 = *(v14 + 16) + 1;
      v18 = v14;
      while (--v17)
      {
        v19 = v18 + v16;
        v20 = _s13HomeDataModel13StaticServiceV2eeoiySbAC_ACtFZ_0(v12, v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)));
        v18 = v19;
        if (v20)
        {
          sub_1D1C72E20(v12, type metadata accessor for StaticService);
          goto LABEL_11;
        }
      }

      sub_1D1C66B60(v12, v10, type metadata accessor for StaticService);
      v27 = v14;
      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1D17915E0(v21 > 1, v22 + 1, 1);
        v14 = v27;
      }

      sub_1D1C72E20(v12, type metadata accessor for StaticService);
      *(v14 + 16) = v22 + 1;
      sub_1D1C72E80(v10, v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + v22 * v16, type metadata accessor for StaticService);
      a2 = v24;
      a1 = v25;
    }

    while (v15 != v24);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

size_t sub_1D1C6D31C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v28 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - v10;
  v35 = MEMORY[0x1E69E7CC0];
  result = sub_1D178CEFC(0, a2 & ~(a2 >> 63), 0);
  v13 = v35;
  if (!a2)
  {
LABEL_11:

    return a2;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v26 = a2;
    v27 = v2;
    v14 = 0;
    v31 = (v6 + 8);
    v24[1] = v6 + 32;
    v25 = a1;
    v15 = *(v6 + 16);
    v16 = *(v6 + 72);
    v32 = v15;
    v33 = v6 + 16;
    do
    {
      v29 = v14;
      v30 = v14 + 1;
      v15(v11, (a1 + v16 * v14), v5);
      v17 = *(v13 + 16) + 1;
      v34 = v13;
      while (--v17)
      {
        v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        sub_1D1C75134(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v13 += v16;
        if (sub_1D1E6775C())
        {
          (*v31)(v11, v5);
          a2 = v29;
          goto LABEL_11;
        }
      }

      v19 = v28;
      v32(v28, v11, v5);
      v35 = v34;
      v21 = *(v34 + 16);
      v20 = *(v34 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1D178CEFC(v20 > 1, v21 + 1, 1);
        v19 = v28;
      }

      (*(v6 + 8))(v11, v5);
      v22 = v35;
      *(v35 + 16) = v21 + 1;
      v23 = v19;
      v13 = v22;
      (*(v6 + 32))(v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + v21 * v16, v23, v5);
      a1 = v25;
      a2 = v26;
      v14 = v30;
      v15 = v32;
    }

    while (v30 != v26);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1C6D608(uint64_t a1)
{
  v3 = type metadata accessor for BoxedTileInfoBearer(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C66B60(a1, v7, type metadata accessor for BoxedTileInfoBearer);
  v8 = v1 + 1;
  v9 = v1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[1] = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D178CD64(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_1D178CD64(v11 > 1, v12 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v12 + 1;
  result = sub_1D1C72E80(v7, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, type metadata accessor for BoxedTileInfoBearer);
  v1[1] = v9;
  v14 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    if (MEMORY[0x1D3890530](*(v14 + 16) & 0x3FLL) > v12)
    {
      v15 = *v1;
      result = swift_isUniquelyReferenced_native();
      v16 = *v1;
      if ((result & 1) == 0)
      {
        if (!v16)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v17 = *v1;
        v18 = sub_1D1E66F0C();

        *v1 = v18;
        v16 = v18;
      }

      if (v16)
      {
        v19 = *(v16 + 16);
        v20 = *(*v8 + 16) + ~(*(v16 + 24) >> 6);
        return sub_1D1E66EBC();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_1D1C6DD04(sub_1D1C6DE3C);
}

uint64_t sub_1D1C6D858(uint64_t a1)
{
  v3 = type metadata accessor for StaticService(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C66B60(a1, v7, type metadata accessor for StaticService);
  v8 = v1 + 1;
  v9 = v1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[1] = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D17915E0(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_1D17915E0(v11 > 1, v12 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v12 + 1;
  result = sub_1D1C72E80(v7, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, type metadata accessor for StaticService);
  v1[1] = v9;
  v14 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    if (MEMORY[0x1D3890530](*(v14 + 16) & 0x3FLL) > v12)
    {
      v15 = *v1;
      result = swift_isUniquelyReferenced_native();
      v16 = *v1;
      if ((result & 1) == 0)
      {
        if (!v16)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v17 = *v1;
        v18 = sub_1D1E66F0C();

        *v1 = v18;
        v16 = v18;
      }

      if (v16)
      {
        v19 = *(v16 + 16);
        v20 = *(*v8 + 16) + ~(*(v16 + 24) >> 6);
        return sub_1D1E66EBC();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_1D1C6DD04(sub_1D1C6DED8);
}

uint64_t sub_1D1C6DAA8(uint64_t a1)
{
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3);
  v8 = v1 + 1;
  v9 = v1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[1] = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D178CEFC(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_1D178CEFC(v11 > 1, v12 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v12 + 1;
  result = (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, v7, v3);
  v1[1] = v9;
  v14 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    if (MEMORY[0x1D3890530](*(v14 + 16) & 0x3FLL) > v12)
    {
      v15 = *v1;
      result = swift_isUniquelyReferenced_native();
      v16 = *v1;
      if ((result & 1) == 0)
      {
        if (!v16)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v17 = *v1;
        v18 = sub_1D1E66F0C();

        *v1 = v18;
        v16 = v18;
      }

      if (v16)
      {
        v19 = *(v16 + 16);
        v20 = *(*v8 + 16) + ~(*(v16 + 24) >> 6);
        return sub_1D1E66EBC();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_1D1C6DD04(sub_1D1C6DFC4);
}

uint64_t sub_1D1C6DD04(void (*a1)(uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v4 = *(v3 + 24) & 0x3FLL;
  }

  else
  {
    v4 = 0;
  }

  v5 = v1[1];
  v6 = *(v5 + 16);
  if (v4 || v6 >= 0x10)
  {
    v8 = MEMORY[0x1D3890550](v6);
    if (v4 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    v7 = sub_1D1C6DDB4(v5, v9, 0, v4, a1);
  }

  else
  {
    v7 = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_1D1C6DDB4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 16);
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = MEMORY[0x1D3890550](v8);
  result = 0;
  if (v10 <= v9)
  {
    v10 = v9;
  }

  if (v10 <= a4)
  {
    v10 = a4;
  }

  if (v10 >= 5)
  {
    v12 = MEMORY[0x1D3890560](v10, a4);
    a5(a1, v12 + 16, v12 + 32);
    return v12;
  }

  return result;
}

uint64_t sub_1D1C6E14C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v26 = a1;
  v7 = type metadata accessor for BoxedTileInfoBearer(0);
  v8 = *(*(v7 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v7 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a2;
  if (a2)
  {
    if ((v34 & 0x8000000000000000) == 0)
    {
      v13 = 0;
      v14 = *(v10 + 72);
      while (1)
      {
        sub_1D1C66B60(v26 + v14 * v13, v12, type metadata accessor for BoxedTileInfoBearer);
        v15 = *a3;
        sub_1D1E6920C();
        sub_1D1E66A7C();
        sub_1D1C75134(qword_1EE07DD78, MEMORY[0x1E69695A8]);
        sub_1D1E676EC();
        result = sub_1D1E6926C();
        v16 = 1 << *a3;
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v17)
        {
          break;
        }

        v19 = v18 & result;
        v20 = sub_1D1E66EAC();
        v22 = v21;
        v24 = v23;
        sub_1D1C72E20(v12, type metadata accessor for BoxedTileInfoBearer);
        v27 = a3;
        v28 = a4;
        v29 = v19;
        v30 = v20;
        v31 = v22;
        v32 = v24;
        v33 = 0;
        while (v30)
        {
          sub_1D1E66EEC();
        }

        result = sub_1D1E66EDC();
        if (++v13 == v34)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1C6E360(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v31 = a4;
  v32 = a1;
  v6 = sub_1D1E66A7C();
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a2;
  if (a2)
  {
    if ((v40 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v14 = *(v9 + 16);
      v13 = v9 + 16;
      v28 = *(v13 + 56);
      v29 = v14;
      v30 = v13;
      v27 = (v13 - 8);
      v14(v11, v32, v6);
      while (1)
      {
        v15 = *a3;
        sub_1D1C75134(qword_1EE07DD78, MEMORY[0x1E69695A8]);
        result = sub_1D1E676DC();
        v16 = 1 << *a3;
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v17)
        {
          break;
        }

        v19 = v18 & result;
        v20 = v31;
        v21 = sub_1D1E66EAC();
        v23 = v22;
        v25 = v24;
        (*v27)(v11, v6);
        v33 = a3;
        v34 = v20;
        v35 = v19;
        v36 = v21;
        v37 = v23;
        v38 = v25;
        v39 = 0;
        while (v36)
        {
          sub_1D1E66EEC();
        }

        result = sub_1D1E66EDC();
        if (++v12 == v40)
        {
          return result;
        }

        v29(v11, v32 + v28 * v12, v6);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1C6E578(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), void (*a7)(void *), uint64_t (*a8)(void))
{
  v30 = a8;
  v32 = a6;
  v33 = a7;
  v31 = a1;
  v11 = a5(0);
  v12 = *(*(v11 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v11 - 8);
  v16 = &v29 - v15;
  v39 = a2;
  if (a2)
  {
    if ((v39 & 0x8000000000000000) == 0)
    {
      v17 = 0;
      v18 = *(v14 + 72);
      while (1)
      {
        sub_1D1C66B60(v31 + v18 * v17, v16, v32);
        v19 = *a3;
        sub_1D1E6920C();
        v33(v34);
        result = sub_1D1E6926C();
        v20 = 1 << *a3;
        v21 = __OFSUB__(v20, 1);
        v22 = v20 - 1;
        if (v21)
        {
          break;
        }

        v23 = v22 & result;
        v24 = sub_1D1E66EAC();
        v26 = v25;
        v28 = v27;
        sub_1D1C72E20(v16, v30);
        v34[0] = a3;
        v34[1] = a4;
        v34[2] = v23;
        v35 = v24;
        v36 = v26;
        v37 = v28;
        v38 = 0;
        while (v35)
        {
          sub_1D1E66EEC();
        }

        result = sub_1D1E66EDC();
        if (++v17 == v39)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1C6E730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v8 = type metadata accessor for BoxedTileInfoBearer(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a4;
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1C75134(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  result = sub_1D1E6926C();
  v15 = 1 << *a4;
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v18 = v17 & result;
    v19 = sub_1D1E66EAC();
    *&v29 = a4;
    *(&v29 + 1) = a5;
    *&v30 = v18;
    *(&v30 + 1) = v19;
    *&v31 = v20;
    *(&v31 + 1) = v21;
    v32 = 0;
    v22 = sub_1D1E66ECC();
    if ((v23 & 1) == 0)
    {
      v24 = *(v9 + 72);
      do
      {
        sub_1D1C66B60(a2 + v24 * v22, v12, type metadata accessor for BoxedTileInfoBearer);
        v25 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
        sub_1D1C72E20(v12, type metadata accessor for BoxedTileInfoBearer);
        if (v25)
        {
          break;
        }

        sub_1D1E66EEC();
        v27[1] = v29;
        v27[2] = v30;
        v27[3] = v31;
        v28 = v32;
        v22 = sub_1D1E66ECC();
      }

      while ((v26 & 1) == 0);
    }

    return v22;
  }

  return result;
}

uint64_t sub_1D1C6E948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v9 = type metadata accessor for StaticService(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a4;
  sub_1D1E6920C();
  StaticService.hash(into:)(v29);
  result = sub_1D1E6926C();
  v16 = 1 << *a4;
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v19 = v18 & result;
    v20 = sub_1D1E66EAC();
    *&v31 = a4;
    *(&v31 + 1) = a5;
    *&v32 = v19;
    *(&v32 + 1) = v20;
    *&v33 = v21;
    *(&v33 + 1) = v22;
    v34 = 0;
    v23 = sub_1D1E66ECC();
    if ((v24 & 1) == 0)
    {
      v25 = *(v10 + 72);
      do
      {
        sub_1D1C66B60(a2 + v25 * v23, v13, type metadata accessor for StaticService);
        v26 = _s13HomeDataModel13StaticServiceV2eeoiySbAC_ACtFZ_0(v13, a1);
        sub_1D1C72E20(v13, type metadata accessor for StaticService);
        if (v26)
        {
          break;
        }

        sub_1D1E66EEC();
        v29[0] = v31;
        v29[1] = v32;
        v29[2] = v33;
        v30 = v34;
        v23 = sub_1D1E66ECC();
      }

      while ((v27 & 1) == 0);
    }

    return v23;
  }

  return result;
}

uint64_t sub_1D1C6EB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v31 = a2;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a4;
  sub_1D1C75134(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  v30[1] = a1;
  result = sub_1D1E676DC();
  v15 = 1 << *a4;
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v18 = v17 & result;
    v19 = sub_1D1E66EAC();
    *&v36 = a4;
    *(&v36 + 1) = a5;
    *&v37 = v18;
    *(&v37 + 1) = v19;
    *&v38 = v20;
    *(&v38 + 1) = v21;
    v39 = 0;
    v22 = sub_1D1E66ECC();
    if ((v23 & 1) == 0)
    {
      v26 = *(v9 + 16);
      v25 = v9 + 16;
      v24 = v26;
      v27 = *(v25 + 56);
      do
      {
        v24(v12, v31 + v27 * v22, v8);
        sub_1D1C75134(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v28 = sub_1D1E6775C();
        (*(v25 - 8))(v12, v8);
        if (v28)
        {
          break;
        }

        sub_1D1E66EEC();
        v32 = v36;
        v33 = v37;
        v34 = v38;
        v35 = v39;
        v22 = sub_1D1E66ECC();
      }

      while ((v29 & 1) == 0);
    }

    return v22;
  }

  return result;
}

uint64_t sub_1D1C6ED68(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v36 = a4;
  v7 = type metadata accessor for BoxedTileInfoBearer(0);
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v32 - v13;
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
LABEL_16:
    __break(1u);
  }

  else
  {
    v15 = 0;
    v34 = a2;
    v33 = a3;
    v35 = a1;
    while (1)
    {
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v38 = v15 + 1;
      v16 = *(v37 + 72);
      v48 = v15;
      v17 = a1 + v16 * v15;
      sub_1D1C66B60(v17, v14, type metadata accessor for BoxedTileInfoBearer);
      v18 = *a3;
      sub_1D1E6920C();
      sub_1D1E66A7C();
      sub_1D1C75134(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      sub_1D1E676EC();
      result = sub_1D1E6926C();
      v19 = 1 << *a3;
      v20 = __OFSUB__(v19, 1);
      v21 = v19 - 1;
      if (v20)
      {
        goto LABEL_15;
      }

      v22 = v21 & result;
      v23 = v36;
      v24 = sub_1D1E66EAC();
      v26 = v25;
      v39 = v27;
      sub_1D1C72E20(v14, type metadata accessor for BoxedTileInfoBearer);
      *&v40 = a3;
      *(&v40 + 1) = v23;
      a1 = v35;
      *&v41 = v22;
      *(&v41 + 1) = v24;
      *&v42 = v26;
      *(&v42 + 1) = v39;
      v43 = 0;
      v47 = 0;
      v44 = v40;
      v45 = v41;
      v46 = v42;
      v28 = sub_1D1E66ECC();
      if ((v29 & 1) == 0)
      {
        break;
      }

LABEL_4:
      result = sub_1D1E66EDC();
      v15 = v38;
      a3 = v33;
      if (v38 == v34)
      {
        return 1;
      }
    }

    while (1)
    {
      sub_1D1C66B60(a1 + v28 * v16, v14, type metadata accessor for BoxedTileInfoBearer);
      sub_1D1C66B60(v17, v11, type metadata accessor for BoxedTileInfoBearer);
      v30 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      sub_1D1C72E20(v11, type metadata accessor for BoxedTileInfoBearer);
      sub_1D1C72E20(v14, type metadata accessor for BoxedTileInfoBearer);
      if (v30)
      {
        return 0;
      }

      sub_1D1E66EEC();
      v44 = v40;
      v45 = v41;
      v46 = v42;
      v47 = v43;
      v28 = sub_1D1E66ECC();
      if (v31)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_1D1C6F0D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v35 = a4;
  v7 = type metadata accessor for StaticService(0);
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v31 - v13;
  if (!a2)
  {
    return 1;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    v33 = a2;
    v32 = a3;
    v34 = a1;
    while (!__OFADD__(v15, 1))
    {
      v37 = v15 + 1;
      v16 = *(v36 + 72);
      v17 = a1 + v16 * v15;
      sub_1D1C66B60(v17, v14, type metadata accessor for StaticService);
      v18 = *a3;
      sub_1D1E6920C();
      StaticService.hash(into:)(v39);
      result = sub_1D1E6926C();
      v19 = 1 << *a3;
      v20 = __OFSUB__(v19, 1);
      v21 = v19 - 1;
      if (v20)
      {
        goto LABEL_15;
      }

      v22 = v21 & result;
      v48 = v15;
      v23 = v35;
      v38 = sub_1D1E66EAC();
      v25 = v24;
      v27 = v26;
      sub_1D1C72E20(v14, type metadata accessor for StaticService);
      *&v40 = a3;
      *(&v40 + 1) = v23;
      *&v41 = v22;
      *(&v41 + 1) = v38;
      *&v42 = v25;
      *(&v42 + 1) = v27;
      a1 = v34;
      v43 = 0;
      v47 = 0;
      v44 = v40;
      v45 = v41;
      v46 = v42;
      while (1)
      {
        v28 = sub_1D1E66ECC();
        if (v29)
        {
          break;
        }

        sub_1D1C66B60(a1 + v28 * v16, v14, type metadata accessor for StaticService);
        sub_1D1C66B60(v17, v11, type metadata accessor for StaticService);
        v30 = _s13HomeDataModel13StaticServiceV2eeoiySbAC_ACtFZ_0(v14, v11);
        sub_1D1C72E20(v11, type metadata accessor for StaticService);
        sub_1D1C72E20(v14, type metadata accessor for StaticService);
        if (v30)
        {
          return 0;
        }

        sub_1D1E66EEC();
        v44 = v40;
        v45 = v41;
        v46 = v42;
        v47 = v43;
      }

      result = sub_1D1E66EDC();
      v15 = v37;
      a3 = v32;
      if (v37 == v33)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1C6F3F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v36 = a4;
  v44 = a1;
  v7 = sub_1D1E66A7C();
  v37 = *(v7 - 8);
  v8 = v37[8];
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v33 - v13;
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
LABEL_16:
    __break(1u);
  }

  else
  {
    v33 = v4;
    v15 = 0;
    v16 = (v37 + 1);
    v35 = a2;
    v34 = a3;
    while (1)
    {
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v38 = v15 + 1;
      v17 = v37[9];
      v43 = v15;
      v54 = v17;
      v18 = v37[2];
      v45 = v44 + v17 * v15;
      v18(v14);
      v19 = *a3;
      sub_1D1C75134(qword_1EE07DD78, MEMORY[0x1E69695A8]);
      result = sub_1D1E676DC();
      v20 = 1 << *a3;
      v21 = __OFSUB__(v20, 1);
      v22 = v20 - 1;
      if (v21)
      {
        goto LABEL_15;
      }

      v42 = v22 & result;
      v23 = v36;
      v24 = sub_1D1E66EAC();
      v40 = v25;
      v41 = v24;
      v39 = v26;
      v27 = *v16;
      (*v16)(v14, v7);
      *&v46 = a3;
      *(&v46 + 1) = v23;
      *&v47 = v42;
      *(&v47 + 1) = v41;
      *&v48 = v40;
      *(&v48 + 1) = v39;
      v49 = 0;
      v53 = 0;
      v50 = v46;
      v51 = v47;
      v52 = v48;
      v28 = sub_1D1E66ECC();
      v29 = v44;
      if ((v30 & 1) == 0)
      {
        break;
      }

LABEL_4:
      result = sub_1D1E66EDC();
      v15 = v38;
      a3 = v34;
      if (v38 == v35)
      {
        return 1;
      }
    }

    while (1)
    {
      (v18)(v14, v29 + v28 * v54, v7);
      (v18)(v11, v45, v7);
      sub_1D1C75134(&qword_1EE07D170, MEMORY[0x1E69695A8]);
      v31 = sub_1D1E6775C();
      v27(v11, v7);
      v27(v14, v7);
      if (v31)
      {
        return 0;
      }

      sub_1D1E66EEC();
      v50 = v46;
      v51 = v47;
      v52 = v48;
      v53 = v49;
      v28 = sub_1D1E66ECC();
      if (v32)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_1D1C6F794(uint64_t a1)
{
  v3 = type metadata accessor for BoxedTileInfoBearer(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C66B60(a1, v7, type metadata accessor for BoxedTileInfoBearer);
  v9 = v1 + 1;
  v8 = v1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[1] = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D178CD64(0, *(v8 + 16) + 1, 1);
    v8 = *v9;
  }

  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_1D178CD64(v11 > 1, v12 + 1, 1);
    v8 = *v9;
  }

  *(v8 + 16) = v12 + 1;
  result = sub_1D1C72E80(v7, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, type metadata accessor for BoxedTileInfoBearer);
  v1[1] = v8;
  v14 = *v1;
  if (!*v1)
  {
    if (v12 < 0xF)
    {
      return result;
    }

    return sub_1D1C6DD04(sub_1D1C6DE3C);
  }

  swift_beginAccess();
  if (MEMORY[0x1D3890530](*(v14 + 16) & 0x3FLL) <= v12)
  {
    return sub_1D1C6DD04(sub_1D1C6DE3C);
  }

  v15 = *v1;
  result = swift_isUniquelyReferenced_native();
  v16 = *v1;
  if ((result & 1) == 0)
  {
    if (!v16)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v17 = *v1;
    v18 = sub_1D1E66F0C();

    *v1 = v18;
    v16 = v18;
  }

  if (!v16)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v19 = *(v16 + 16);
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1C75134(qword_1EE07DD78, MEMORY[0x1E69695A8]);

  sub_1D1E676EC();
  result = sub_1D1E6926C();
  v20 = 1 << *(v16 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
    goto LABEL_19;
  }

  v23 = v22 & result;
  v24 = sub_1D1E66EAC();
  v28[0] = v16 + 16;
  v28[1] = v16 + 32;
  v28[2] = v23;
  v29 = v24;
  v30 = v25;
  v31 = v26;
  v32 = 0;
  while (v29)
  {
    sub_1D1E66EEC();
  }

  v27 = *(v8 + 16);
  sub_1D1E66EDC();
}

BOOL sub_1D1C6FA8C(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = type metadata accessor for BoxedTileInfoBearer.TileSort(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v32 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  v16 = type metadata accessor for StaticUserActionPrediction();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v32 - v22;
  sub_1D1C66B60(a1, v15, type metadata accessor for BoxedTileInfoBearer.TileSort);
  v24 = *(v17 + 48);
  if (v24(v15, 3, v16))
  {
    v13 = v15;
    v25 = v33;
  }

  else
  {
    sub_1D1C72E80(v15, v23, type metadata accessor for StaticUserActionPrediction);
    v25 = v33;
    sub_1D1C66B60(v33, v13, type metadata accessor for BoxedTileInfoBearer.TileSort);
    if (!v24(v13, 3, v16))
    {
      sub_1D1C72E80(v13, v21, type metadata accessor for StaticUserActionPrediction);
      v30 = _s13HomeDataModel26StaticUserActionPredictionV2eeoiySbAC_ACtFZ_0(v23, v21);
      sub_1D1C72E20(v21, type metadata accessor for StaticUserActionPrediction);
      sub_1D1C72E20(v23, type metadata accessor for StaticUserActionPrediction);
      return v30;
    }

    sub_1D1C72E20(v23, type metadata accessor for StaticUserActionPrediction);
  }

  sub_1D1C72E20(v13, type metadata accessor for BoxedTileInfoBearer.TileSort);
  sub_1D1C66B60(a1, v10, type metadata accessor for BoxedTileInfoBearer.TileSort);
  v26 = v24(v10, 3, v16);
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v27 = 3;
    }

    else
    {
      v27 = 4;
    }
  }

  else if (v26)
  {
    v27 = 2;
  }

  else
  {
    sub_1D1C72E20(v10, type metadata accessor for BoxedTileInfoBearer.TileSort);
    v27 = 1;
  }

  sub_1D1C66B60(v25, v7, type metadata accessor for BoxedTileInfoBearer.TileSort);
  v28 = v24(v7, 3, v16);
  if (v28 > 1)
  {
    if (v28 == 2)
    {
      v29 = 3;
    }

    else
    {
      v29 = 4;
    }
  }

  else if (v28)
  {
    v29 = 2;
  }

  else
  {
    sub_1D1C72E20(v7, type metadata accessor for BoxedTileInfoBearer.TileSort);
    v29 = 1;
  }

  return v27 == v29;
}

BOOL sub_1D1C6FE6C(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = type metadata accessor for BoxedTileInfoBearer.TileSort(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v33 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v33 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  v16 = type metadata accessor for StaticUserActionPrediction();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v33 - v22;
  sub_1D1C66B60(a1, v15, type metadata accessor for BoxedTileInfoBearer.TileSort);
  v24 = *(v17 + 48);
  if (v24(v15, 3, v16))
  {
    v13 = v15;
    v25 = v34;
  }

  else
  {
    sub_1D1C72E80(v15, v23, type metadata accessor for StaticUserActionPrediction);
    v25 = v34;
    sub_1D1C66B60(v34, v13, type metadata accessor for BoxedTileInfoBearer.TileSort);
    if (!v24(v13, 3, v16))
    {
      sub_1D1C72E80(v13, v21, type metadata accessor for StaticUserActionPrediction);
      v31 = *&v23[*(v16 + 20)];
      sub_1D1C72E20(v23, type metadata accessor for StaticUserActionPrediction);
      v32 = *&v21[*(v16 + 20)];
      sub_1D1C72E20(v21, type metadata accessor for StaticUserActionPrediction);
      return v32 < v31;
    }

    sub_1D1C72E20(v23, type metadata accessor for StaticUserActionPrediction);
  }

  sub_1D1C72E20(v13, type metadata accessor for BoxedTileInfoBearer.TileSort);
  sub_1D1C66B60(a1, v10, type metadata accessor for BoxedTileInfoBearer.TileSort);
  v26 = v24(v10, 3, v16);
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v27 = 3;
    }

    else
    {
      v27 = 4;
    }
  }

  else if (v26)
  {
    v27 = 2;
  }

  else
  {
    sub_1D1C72E20(v10, type metadata accessor for BoxedTileInfoBearer.TileSort);
    v27 = 1;
  }

  sub_1D1C66B60(v25, v7, type metadata accessor for BoxedTileInfoBearer.TileSort);
  v28 = v24(v7, 3, v16);
  if (v28 > 1)
  {
    if (v28 == 2)
    {
      v29 = 3;
    }

    else
    {
      v29 = 4;
    }
  }

  else if (v28)
  {
    v29 = 2;
  }

  else
  {
    sub_1D1C72E20(v7, type metadata accessor for BoxedTileInfoBearer.TileSort);
    v29 = 1;
  }

  return v27 < v29;
}

BOOL sub_1D1C70258(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BoxedTileInfoBearer(0);
  v5 = *(v4 + 24);
  if (sub_1D1C6FA8C(a1 + v5, a2 + v5))
  {
    v6 = (a1 + *(v4 + 20));
    v7 = v6[3];
    v8 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v8 + 56))(v7, v8);
    v9 = (a2 + *(v4 + 20));
    v10 = v9[3];
    v11 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v11 + 56))(v10, v11);
    sub_1D17D8EF0();
    v12 = sub_1D1E6860C();

    return v12 == -1;
  }

  else
  {

    return sub_1D1C6FE6C(a1 + v5, a2 + v5);
  }
}

uint64_t sub_1D1C7039C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a2;
  v42 = a1;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StaticService(0);
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  result = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v19 = *(a3 + 56);
  v44 = a3 + 56;
  v45 = 0;
  v20 = 1 << *(a3 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v43 = (v20 + 63) >> 6;
  v51 = v9 + 16;
  v48 = v9;
  v50 = (v9 + 8);
  v40 = a5;
  v41 = a3;
  v39 = a4;
  while (v22)
  {
    v25 = __clz(__rbit64(v22));
    v49 = (v22 - 1) & v22;
LABEL_12:
    v28 = v25 | (v18 << 6);
    v29 = *(a3 + 48);
    v30 = *(v47 + 72);
    v46 = v28;
    sub_1D1C66B60(v29 + v30 * v28, v17, type metadata accessor for StaticService);
    v31 = a5 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
    v32 = v17;
    v33 = *(a5 + 16);
    if (a4)
    {

      sub_1D1C6EB18(v32, v31, v33, (a4 + 16), a4 + 32);
      v24 = v23;

      result = sub_1D1C72E20(v32, type metadata accessor for StaticService);
      v17 = v32;
      v22 = v49;
      if (v24)
      {
LABEL_18:
        *(v42 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
        if (__OFADD__(v45++, 1))
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      if (!v33)
      {
LABEL_17:
        v17 = v32;
        result = sub_1D1C72E20(v32, type metadata accessor for StaticService);
        a5 = v40;
        a3 = v41;
        a4 = v39;
        v22 = v49;
        goto LABEL_18;
      }

      v34 = *(v48 + 72);
      v35 = *(v48 + 16);
      while (1)
      {
        v35(v12, v31, v8);
        sub_1D1C75134(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v36 = sub_1D1E6775C();
        (*v50)(v12, v8);
        if (v36)
        {
          break;
        }

        v31 += v34;
        if (!--v33)
        {
          goto LABEL_17;
        }
      }

      v17 = v32;
      result = sub_1D1C72E20(v32, type metadata accessor for StaticService);
      a5 = v40;
      a3 = v41;
      a4 = v39;
      v22 = v49;
    }
  }

  v26 = v18;
  while (1)
  {
    v18 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v18 >= v43)
    {

      return sub_1D19E0ED0(v42, v38, v45, a3);
    }

    v27 = *(v44 + 8 * v18);
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v49 = (v27 - 1) & v27;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1D1C70794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v62 = *MEMORY[0x1E69E9840];
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StaticService(0);
  v56 = *(v13 - 8);
  v14 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v61 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v15) = *(a1 + 32);
  v16 = v15 & 0x3F;
  v17 = ((1 << v15) + 63) >> 6;
  v18 = 8 * v17;

  v57 = a3;

  if (v16 > 0xD)
  {
LABEL_29:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v44 = swift_slowAlloc();

      v45 = v57;

      v41 = sub_1D1C6CBAC(v44, v17, a1, a2, v45);

      MEMORY[0x1D3893640](v44, -1, -1);

      goto LABEL_27;
    }
  }

  v47 = v17;
  v48 = v4;
  v46[1] = v46;
  MEMORY[0x1EEE9AC00](v19);
  v51 = v46 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v51, v18);
  v20 = 0;
  v17 = 0;
  v21 = *(a1 + 56);
  v53 = a1 + 56;
  v22 = 1 << *(a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v52 = (v22 + 63) >> 6;
  v60 = v9 + 16;
  v4 = (v9 + 8);
  v49 = a1;
  v50 = a2;
  v58 = v9;
  while (2)
  {
    v54 = v20;
    while (1)
    {
      while (1)
      {
        if (!v24)
        {
          v26 = v17;
          v18 = v61;
          while (1)
          {
            v17 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              break;
            }

            if (v17 >= v52)
            {
              goto LABEL_26;
            }

            v27 = *(v53 + 8 * v17);
            ++v26;
            if (v27)
            {
              v59 = (v27 - 1) & v27;
              v25 = __clz(__rbit64(v27)) | (v17 << 6);
              goto LABEL_13;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v59 = (v24 - 1) & v24;
        v25 = __clz(__rbit64(v24)) | (v17 << 6);
        v18 = v61;
LABEL_13:
        v28 = *(a1 + 48);
        v29 = *(v56 + 72);
        v55 = v25;
        sub_1D1C66B60(v28 + v29 * v25, v18, type metadata accessor for StaticService);
        v30 = v57 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
        v31 = a1;
        v32 = v18;
        v33 = *(v57 + 16);
        if (!a2)
        {
          break;
        }

        sub_1D1C6EB18(v32, v30, v33, (a2 + 16), a2 + 32);
        v35 = v34;

        sub_1D1C72E20(v32, type metadata accessor for StaticService);
        v9 = v58;
        v24 = v59;
        a1 = v31;
        if (v35)
        {
          goto LABEL_23;
        }
      }

      if (!v33)
      {
        break;
      }

      v36 = *(v58 + 72);
      v37 = *(v58 + 16);
      while (1)
      {
        v37(v12, v30, v8);
        sub_1D1C75134(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v38 = sub_1D1E6775C();
        (*v4)(v12, v8);
        if (v38)
        {
          break;
        }

        v30 += v36;
        if (!--v33)
        {
          goto LABEL_22;
        }
      }

      sub_1D1C72E20(v61, type metadata accessor for StaticService);
      a1 = v49;
      a2 = v50;
      v9 = v58;
      v24 = v59;
    }

LABEL_22:
    sub_1D1C72E20(v61, type metadata accessor for StaticService);
    a1 = v49;
    a2 = v50;
    v9 = v58;
    v24 = v59;
LABEL_23:
    v39 = v54;
    *&v51[(v55 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v55;
    v40 = __OFADD__(v39, 1);
    v20 = v39 + 1;
    if (!v40)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_26:
  v41 = sub_1D19E0ED0(v51, v47, v54, a1);

LABEL_27:
  v42 = *MEMORY[0x1E69E9840];
  return v41;
}

uint64_t sub_1D1C70CDC(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v228 = a1;
  v10 = sub_1D1E669FC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v241 = &v222 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v240 = &v222 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v225 = &v222 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v224 = &v222 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v245 = &v222 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v246 = &v222 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v230 = &v222 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v222 - v28;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v30 = *(*(v254 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v254);
  v251 = &v222 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v222 - v33;
  v261 = type metadata accessor for StaticService(0);
  v243 = *(v261 - 8);
  v35 = *(v243 + 64);
  v36 = MEMORY[0x1EEE9AC00](v261);
  v235 = &v222 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v259 = &v222 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v222 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v262 = &v222 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v250 = &v222 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v249 = &v222 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  MEMORY[0x1EEE9AC00](v49);
  v244 = a3;
  v52 = a3[1];
  v256 = a5;
  if (v52 < 1)
  {
    swift_bridgeObjectRetain_n();
    v231 = MEMORY[0x1E69E7CC0];
LABEL_148:
    v262 = *v228;
    if (!v262)
    {
      goto LABEL_187;
    }

    swift_bridgeObjectRetain_n();
    v10 = v231;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_150:
      v267 = v10;
      v212 = *(v10 + 16);
      if (v212 >= 2)
      {
        do
        {
          v213 = *v244;
          if (!*v244)
          {
            goto LABEL_185;
          }

          v214 = *(v10 + 16 * v212);
          v215 = *(v10 + 16 * (v212 - 1) + 40);
          v216 = *(v243 + 72);
          v217 = v213 + v216 * v214;
          v218 = v213 + v216 * *(v10 + 16 * (v212 - 1) + 32);
          v219 = v213 + v216 * v215;
          v220 = v256;

          sub_1D1C6A760(v217, v218, v219, v262, v220);
          if (v6)
          {
            break;
          }

          if (v215 < v214)
          {
            goto LABEL_174;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D1E0BE44(v10);
          }

          if (v212 - 2 >= *(v10 + 16))
          {
            goto LABEL_175;
          }

          v221 = (v10 + 16 * v212);
          *v221 = v214;
          v221[1] = v215;
          v267 = v10;
          sub_1D1E0BDB8(v212 - 1);
          v10 = v267;
          v212 = *(v267 + 16);
        }

        while (v212 > 1);
      }

      return swift_bridgeObjectRelease_n();
    }

LABEL_181:
    v10 = sub_1D1E0BE44(v10);
    goto LABEL_150;
  }

  v222 = &v222 - v50;
  v223 = v51;
  v252 = (v11 + 48);
  v242 = (v11 + 32);
  v248 = (v11 + 8);
  swift_bridgeObjectRetain_n();
  v231 = MEMORY[0x1E69E7CC0];
  v227 = a4;
  v253 = v10;
  v229 = v29;
  v53 = v251;
  v233 = v34;
  v255 = v42;
  v54 = 0;
LABEL_4:
  if (v54 + 1 >= v52)
  {
    v65 = v54 + 1;
    goto LABEL_49;
  }

  v247 = v52;
  v55 = *v244;
  v56 = *(v243 + 72);
  v57 = *v244 + v56 * (v54 + 1);
  v58 = v54;
  v59 = v222;
  sub_1D1C66B60(v57, v222, type metadata accessor for StaticService);
  v257 = v55;
  v60 = v55 + v56 * v58;
  v61 = v223;
  sub_1D1C66B60(v60, v223, type metadata accessor for StaticService);
  LODWORD(v260) = sub_1D1D0D384(v59, v61, v256);
  if (v6)
  {
    sub_1D1C72E20(v61, type metadata accessor for StaticService);
    sub_1D1C72E20(v59, type metadata accessor for StaticService);
    swift_bridgeObjectRelease_n();
  }

  v232 = 0;
  sub_1D1C72E20(v61, type metadata accessor for StaticService);
  sub_1D1C72E20(v59, type metadata accessor for StaticService);
  v226 = v58;
  v62 = v58 + 2;
  v258 = v56;
  v10 = v256;
  v63 = v257 + v56 * v62;
  while (1)
  {
    v65 = v247;
    if (v247 == v62)
    {
      break;
    }

    v66 = v249;
    sub_1D1C66B60(v63, v249, type metadata accessor for StaticService);
    v67 = v250;
    sub_1D1C66B60(v57, v250, type metadata accessor for StaticService);
    v68 = sub_1D18E4158(v66, v10);
    LOBYTE(v66) = v69;
    v70 = sub_1D18E4158(v67, v10);
    if (v66)
    {
      if ((v71 & 1) == 0)
      {
        v64 = 0;
        goto LABEL_8;
      }
    }

    else
    {
      if (v71)
      {
        v64 = 1;
        goto LABEL_8;
      }

      if (v68 != v70)
      {
        v64 = v68 < v70;
        goto LABEL_8;
      }
    }

    v72 = *(v261 + 56);
    v73 = *(v254 + 48);
    v74 = v233;
    sub_1D1741C08(v249 + v72, v233, &qword_1EC642570, &qword_1D1E6C6A0);
    v257 = v73;
    sub_1D1741C08(v250 + v72, v74 + v73, &qword_1EC642570, &qword_1D1E6C6A0);
    v75 = v253;
    v76 = *v252;
    if ((*v252)(v74, 1, v253) == 1)
    {
      if (v76(v74 + v257, 1, v75) == 1)
      {
        goto LABEL_23;
      }

      sub_1D1741A30(v74 + v257, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v74, &qword_1EC642570, &qword_1D1E6C6A0);
      v64 = 0;
      v53 = v251;
    }

    else
    {
      v77 = v229;
      sub_1D1741C08(v74, v229, &qword_1EC642570, &qword_1D1E6C6A0);
      if (v76(v74 + v257, 1, v75) == 1)
      {
        (*v248)(v77, v75);
        sub_1D1741A30(v74 + v257, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v74, &qword_1EC642570, &qword_1D1E6C6A0);
        v64 = 1;
        v53 = v251;
        v10 = v256;
      }

      else
      {
        sub_1D1741C08(v74 + v257, v230, &qword_1EC642570, &qword_1D1E6C6A0);
        v78 = *v242;
        v79 = v224;
        (*v242)(v224, v77, v75);
        v80 = v225;
        v78(v225, v230, v75);
        sub_1D1C75134(&qword_1EC642AC8, MEMORY[0x1E6969530]);
        if (sub_1D1E6775C())
        {
          v81 = *v248;
          (*v248)(v80, v75);
          v81(v79, v75);
LABEL_23:
          sub_1D1741A30(v74, &qword_1EC642AC0, &qword_1D1E6E810);
          v82 = *(v261 + 20);
          v83 = (v249 + v82);
          v85 = *(v249 + v82);
          v84 = *(v249 + v82 + 8);
          v86 = (v250 + v82);
          v88 = *v86;
          v87 = v86[1];
          if (*v83 == *v86 && v84 == v87 || (v89 = *v83, v90 = v83[1], v91 = *v86, v92 = v86[1], (sub_1D1E6904C() & 1) != 0))
          {
            v93 = sub_1D1E66A1C();
            v95 = v94;
            v96 = sub_1D1E66A1C();
            v53 = v251;
            if (v93 == v96 && v95 == v97)
            {

              v64 = 0;
            }

            else
            {
              v64 = sub_1D1E6904C();
            }

            v10 = v256;
          }

          else
          {
            v265 = v85;
            v266 = v84;
            v263 = v88;
            v264 = v87;
            sub_1D17D8EF0();
            v64 = sub_1D1E685FC() == -1;
            v10 = v256;
            v53 = v251;
          }

          goto LABEL_8;
        }

        v64 = sub_1D1E6696C();
        v98 = v80;
        v99 = v79;
        v100 = *v248;
        (*v248)(v98, v75);
        v100(v99, v75);
        v10 = v256;
        sub_1D1741A30(v74 + v257, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v74, &qword_1EC642570, &qword_1D1E6C6A0);
        v53 = v251;
      }
    }

LABEL_8:
    sub_1D1C72E20(v250, type metadata accessor for StaticService);
    sub_1D1C72E20(v249, type metadata accessor for StaticService);
    ++v62;
    v63 += v258;
    v57 += v258;
    if ((v260 ^ v64))
    {
      v65 = v62 - 1;
      break;
    }
  }

  v6 = v232;
  a4 = v227;
  v54 = v226;
  if ((v260 & 1) == 0)
  {
    goto LABEL_49;
  }

  if (v65 < v226)
  {
    goto LABEL_180;
  }

  if (v226 < v65)
  {
    v101 = v65;
    v10 = v258;
    v102 = v258 * (v65 - 1);
    v103 = v65 * v258;
    v247 = v65;
    v104 = v226;
    v105 = v226 * v258;
    do
    {
      if (v104 != --v101)
      {
        v106 = *v244;
        if (!*v244)
        {
          goto LABEL_184;
        }

        sub_1D1C72E80(v106 + v105, v235, type metadata accessor for StaticService);
        if (v105 < v102 || v106 + v105 >= (v106 + v103))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v105 != v102)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        sub_1D1C72E80(v235, v106 + v102, type metadata accessor for StaticService);
        v6 = v232;
      }

      ++v104;
      v102 -= v10;
      v103 -= v10;
      v105 += v10;
    }

    while (v104 < v101);
    a4 = v227;
    v65 = v247;
    v54 = v226;
  }

LABEL_49:
  v107 = v244[1];
  if (v65 >= v107)
  {
    goto LABEL_58;
  }

  if (__OFSUB__(v65, v54))
  {
    goto LABEL_177;
  }

  if (v65 - v54 >= a4)
  {
LABEL_58:
    v109 = v65;
    goto LABEL_59;
  }

  if (__OFADD__(v54, a4))
  {
    goto LABEL_178;
  }

  if (v54 + a4 >= v107)
  {
    v108 = v244[1];
  }

  else
  {
    v108 = v54 + a4;
  }

  if (v108 < v54)
  {
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  if (v65 == v108)
  {
    goto LABEL_58;
  }

  v232 = v6;
  v165 = *v244;
  v166 = *(v243 + 72);
  v167 = *v244 + v166 * (v65 - 1);
  v257 = -v166;
  v226 = v54;
  v168 = v54 - v65;
  v258 = v165;
  v234 = v166;
  v169 = v165 + v65 * v166;
  v170 = v255;
  v10 = v256;
  v236 = v108;
  while (2)
  {
    v247 = v65;
    v237 = v169;
    v238 = v168;
    v171 = v168;
    v239 = v167;
    v172 = v167;
LABEL_113:
    v173 = v262;
    sub_1D1C66B60(v169, v262, type metadata accessor for StaticService);
    sub_1D1C66B60(v172, v170, type metadata accessor for StaticService);
    v174 = sub_1D18E4158(v173, v10);
    LOBYTE(v173) = v175;
    v176 = sub_1D18E4158(v170, v10);
    if ((v173 & 1) == 0)
    {
      if (v177)
      {
        goto LABEL_123;
      }

      if (v174 == v176)
      {
        goto LABEL_118;
      }

      v205 = v174 < v176;
      goto LABEL_138;
    }

    if ((v177 & 1) == 0)
    {
      goto LABEL_110;
    }

LABEL_118:
    v260 = v171;
    v178 = *(v261 + 56);
    v179 = *(v254 + 48);
    sub_1D1741C08(v262 + v178, v53, &qword_1EC642570, &qword_1D1E6C6A0);
    sub_1D1741C08(v170 + v178, v53 + v179, &qword_1EC642570, &qword_1D1E6C6A0);
    v180 = v253;
    v181 = *v252;
    if ((*v252)(v53, 1, v253) == 1)
    {
      if (v181(v53 + v179, 1, v180) == 1)
      {
        goto LABEL_126;
      }

      sub_1D1741A30(v53 + v179, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v53, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_110:
      sub_1D1C72E20(v170, type metadata accessor for StaticService);
      sub_1D1C72E20(v262, type metadata accessor for StaticService);
LABEL_111:
      v65 = v247 + 1;
      v167 = v239 + v234;
      v168 = v238 - 1;
      v169 = v237 + v234;
      v109 = v236;
      if (v247 + 1 != v236)
      {
        continue;
      }

      v6 = v232;
      v54 = v226;
LABEL_59:
      v110 = v231;
      if (v109 < v54)
      {
        goto LABEL_176;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v236 = v109;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v110 = sub_1D177D070(0, *(v110 + 2) + 1, 1, v110);
      }

      v113 = *(v110 + 2);
      v112 = *(v110 + 3);
      v114 = v113 + 1;
      v10 = v256;
      if (v113 >= v112 >> 1)
      {
        v110 = sub_1D177D070((v112 > 1), v113 + 1, 1, v110);
      }

      *(v110 + 2) = v114;
      v115 = &v110[16 * v113];
      v116 = v236;
      *(v115 + 4) = v54;
      *(v115 + 5) = v116;
      v260 = *v228;
      if (!v260)
      {
        goto LABEL_186;
      }

      if (v113)
      {
        while (2)
        {
          v117 = v114 - 1;
          if (v114 >= 4)
          {
            v122 = &v110[16 * v114 + 32];
            v123 = *(v122 - 64);
            v124 = *(v122 - 56);
            v128 = __OFSUB__(v124, v123);
            v125 = v124 - v123;
            if (v128)
            {
              goto LABEL_163;
            }

            v127 = *(v122 - 48);
            v126 = *(v122 - 40);
            v128 = __OFSUB__(v126, v127);
            v120 = v126 - v127;
            v121 = v128;
            if (v128)
            {
              goto LABEL_164;
            }

            v129 = &v110[16 * v114];
            v131 = *v129;
            v130 = *(v129 + 1);
            v128 = __OFSUB__(v130, v131);
            v132 = v130 - v131;
            if (v128)
            {
              goto LABEL_166;
            }

            v128 = __OFADD__(v120, v132);
            v133 = v120 + v132;
            if (v128)
            {
              goto LABEL_169;
            }

            if (v133 >= v125)
            {
              v151 = &v110[16 * v117 + 32];
              v153 = *v151;
              v152 = *(v151 + 1);
              v128 = __OFSUB__(v152, v153);
              v154 = v152 - v153;
              if (v128)
              {
                goto LABEL_173;
              }

              if (v120 < v154)
              {
                v117 = v114 - 2;
              }
            }

            else
            {
LABEL_79:
              if (v121)
              {
                goto LABEL_165;
              }

              v134 = &v110[16 * v114];
              v136 = *v134;
              v135 = *(v134 + 1);
              v137 = __OFSUB__(v135, v136);
              v138 = v135 - v136;
              v139 = v137;
              if (v137)
              {
                goto LABEL_168;
              }

              v140 = &v110[16 * v117 + 32];
              v142 = *v140;
              v141 = *(v140 + 1);
              v128 = __OFSUB__(v141, v142);
              v143 = v141 - v142;
              if (v128)
              {
                goto LABEL_171;
              }

              if (__OFADD__(v138, v143))
              {
                goto LABEL_172;
              }

              if (v138 + v143 < v120)
              {
                goto LABEL_93;
              }

              if (v120 < v143)
              {
                v117 = v114 - 2;
              }
            }
          }

          else
          {
            if (v114 == 3)
            {
              v118 = *(v110 + 4);
              v119 = *(v110 + 5);
              v128 = __OFSUB__(v119, v118);
              v120 = v119 - v118;
              v121 = v128;
              goto LABEL_79;
            }

            v144 = &v110[16 * v114];
            v146 = *v144;
            v145 = *(v144 + 1);
            v128 = __OFSUB__(v145, v146);
            v138 = v145 - v146;
            v139 = v128;
LABEL_93:
            if (v139)
            {
              goto LABEL_167;
            }

            v147 = &v110[16 * v117];
            v149 = *(v147 + 4);
            v148 = *(v147 + 5);
            v128 = __OFSUB__(v148, v149);
            v150 = v148 - v149;
            if (v128)
            {
              goto LABEL_170;
            }

            if (v150 < v138)
            {
              break;
            }
          }

          v155 = v117 - 1;
          if (v117 - 1 >= v114)
          {
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
            goto LABEL_179;
          }

          v156 = *v244;
          if (!*v244)
          {
            goto LABEL_183;
          }

          v10 = v110;
          v157 = *&v110[16 * v155 + 32];
          v158 = *&v110[16 * v117 + 40];
          v159 = *(v243 + 72);
          v160 = v156 + v159 * v157;
          v161 = v156 + v159 * *&v110[16 * v117 + 32];
          v162 = v156 + v159 * v158;
          v163 = v256;

          sub_1D1C6A760(v160, v161, v162, v260, v163);
          if (v6)
          {
            swift_bridgeObjectRelease_n();
          }

          if (v158 < v157)
          {
            goto LABEL_161;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D1E0BE44(v10);
          }

          if (v155 >= *(v10 + 16))
          {
            goto LABEL_162;
          }

          v164 = v10 + 16 * v155;
          *(v164 + 32) = v157;
          *(v164 + 40) = v158;
          v267 = v10;
          sub_1D1E0BDB8(v117);
          v110 = v267;
          v114 = *(v267 + 16);
          v53 = v251;
          if (v114 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v231 = v110;
      v52 = v244[1];
      v54 = v236;
      a4 = v227;
      if (v236 >= v52)
      {
        goto LABEL_148;
      }

      goto LABEL_4;
    }

    break;
  }

  v182 = v10;
  v183 = v246;
  sub_1D1741C08(v53, v246, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v181(v53 + v179, 1, v180) != 1)
  {
    sub_1D1741C08(v53 + v179, v245, &qword_1EC642570, &qword_1D1E6C6A0);
    v184 = *v242;
    v185 = v240;
    (*v242)(v240, v183, v180);
    v186 = v241;
    v184(v241, v245, v180);
    sub_1D1C75134(&qword_1EC642AC8, MEMORY[0x1E6969530]);
    if (sub_1D1E6775C())
    {
      v187 = *v248;
      (*v248)(v186, v180);
      v187(v185, v180);
      v170 = v255;
LABEL_126:
      sub_1D1741A30(v53, &qword_1EC642AC0, &qword_1D1E6E810);
      v188 = *(v261 + 20);
      v189 = (v262 + v188);
      v190 = *(v262 + v188);
      v191 = *(v262 + v188 + 8);
      v192 = (v170 + v188);
      v193 = *v192;
      v194 = v192[1];
      v195 = *v189 == *v192 && v191 == v194;
      if (v195 || (v196 = *v189, v197 = v189[1], v198 = *v192, v199 = v192[1], (sub_1D1E6904C() & 1) != 0))
      {
        v200 = sub_1D1E66A1C();
        v202 = v201;
        v170 = v255;
        v203 = sub_1D1E66A1C();
        v171 = v260;
        if (v200 == v203 && v202 == v204)
        {

          v10 = v256;
          v53 = v251;
          goto LABEL_110;
        }

        v205 = sub_1D1E6904C();

        v10 = v256;
        v53 = v251;
        goto LABEL_138;
      }

      v265 = v190;
      v266 = v191;
      v263 = v193;
      v264 = v194;
      sub_1D17D8EF0();
      v205 = sub_1D1E685FC() == -1;
      v170 = v255;
      v10 = v256;
      v53 = v251;
    }

    else
    {
      v205 = sub_1D1E6696C();
      v206 = v186;
      v207 = v185;
      v208 = *v248;
      (*v248)(v206, v180);
      v208(v207, v180);
      v10 = v256;
      sub_1D1741A30(v53 + v179, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v53, &qword_1EC642570, &qword_1D1E6C6A0);
      v170 = v255;
    }

    v171 = v260;
LABEL_138:
    sub_1D1C72E20(v170, type metadata accessor for StaticService);
    sub_1D1C72E20(v262, type metadata accessor for StaticService);
    if ((v205 & 1) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_139;
  }

  (*v248)(v183, v180);
  sub_1D1741A30(v53 + v179, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A30(v53, &qword_1EC642570, &qword_1D1E6C6A0);
  v10 = v182;
  v170 = v255;
  v171 = v260;
LABEL_123:
  sub_1D1C72E20(v170, type metadata accessor for StaticService);
  sub_1D1C72E20(v262, type metadata accessor for StaticService);
LABEL_139:
  if (v258)
  {
    v209 = v259;
    sub_1D1C72E80(v169, v259, type metadata accessor for StaticService);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D1C72E80(v209, v172, type metadata accessor for StaticService);
    v172 += v257;
    v169 += v257;
    if (__CFADD__(v171++, 1))
    {
      goto LABEL_111;
    }

    goto LABEL_113;
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_183:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_184:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_185:

  __break(1u);
LABEL_186:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_187:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1D1C72460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v96 = a5;
  v93 = a1;
  v97 = sub_1D1E669FC();
  v8 = *(v97 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v97 - 8);
  v82 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v76 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v80 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v76 - v17;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v18 = *(*(v91 - 8) + 64);
  MEMORY[0x1EEE9AC00](v91);
  v20 = &v76 - v19;
  v98 = type metadata accessor for StaticService(0);
  v21 = *(*(v98 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v98);
  v94 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v103 = &v76 - v25;
  result = MEMORY[0x1EEE9AC00](v24);
  v29 = &v76 - v28;
  v78 = a2;
  if (a3 != a2)
  {
    v30 = *a4;
    v31 = *(v27 + 72);
    v32 = (v8 + 48);
    v79 = (v8 + 32);
    v87 = (v8 + 8);
    v33 = v30 + v31 * (a3 - 1);
    v92 = -v31;
    v34 = v93 - a3;
    v93 = v30;
    v77 = v31;
    v35 = v30 + v31 * a3;
    v89 = v20;
    v90 = &v76 - v28;
    v95 = v32;
LABEL_6:
    v85 = v33;
    v86 = a3;
    v83 = v35;
    v84 = v34;
    while (1)
    {
      sub_1D1C66B60(v35, v29, type metadata accessor for StaticService);
      v36 = v103;
      sub_1D1C66B60(v33, v103, type metadata accessor for StaticService);
      v37 = v96;
      v38 = sub_1D18E4158(v29, v96);
      v40 = v39;
      v41 = sub_1D18E4158(v36, v37);
      if (v40)
      {
        v43 = v95;
        if ((v42 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v43 = v95;
        if (v42)
        {
          goto LABEL_17;
        }

        if (v38 != v41)
        {
          v71 = v38 < v41;
          goto LABEL_31;
        }
      }

      v44 = *(v98 + 56);
      v45 = *(v91 + 48);
      sub_1D1741C08(&v29[v44], v20, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741C08(v103 + v44, &v20[v45], &qword_1EC642570, &qword_1D1E6C6A0);
      v46 = *v43;
      v47 = v97;
      if ((*v43)(v20, 1, v97) == 1)
      {
        if (v46(&v20[v45], 1, v47) != 1)
        {
          sub_1D1741A30(&v20[v45], &qword_1EC642570, &qword_1D1E6C6A0);
          sub_1D1741A30(v20, &qword_1EC642570, &qword_1D1E6C6A0);
          v29 = v90;
LABEL_4:
          sub_1D1C72E20(v103, type metadata accessor for StaticService);
          result = sub_1D1C72E20(v29, type metadata accessor for StaticService);
LABEL_5:
          a3 = v86 + 1;
          v33 = v85 + v77;
          v34 = v84 - 1;
          v35 = v83 + v77;
          if (v86 + 1 == v78)
          {
            return result;
          }

          goto LABEL_6;
        }

        goto LABEL_20;
      }

      v48 = v88;
      sub_1D1741C08(v20, v88, &qword_1EC642570, &qword_1D1E6C6A0);
      if (v46(&v20[v45], 1, v47) == 1)
      {
        (*v87)(v48, v47);
        sub_1D1741A30(&v20[v45], &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v20, &qword_1EC642570, &qword_1D1E6C6A0);
        v29 = v90;
LABEL_17:
        sub_1D1C72E20(v103, type metadata accessor for StaticService);
        result = sub_1D1C72E20(v29, type metadata accessor for StaticService);
        goto LABEL_32;
      }

      v49 = v80;
      sub_1D1741C08(&v20[v45], v80, &qword_1EC642570, &qword_1D1E6C6A0);
      v50 = *v79;
      v51 = v81;
      (*v79)(v81, v48, v97);
      v52 = v51;
      v53 = v97;
      v54 = v82;
      v55 = v49;
      v56 = v52;
      v50(v82, v55, v97);
      sub_1D1C75134(&qword_1EC642AC8, MEMORY[0x1E6969530]);
      if (sub_1D1E6775C())
      {
        v57 = *v87;
        (*v87)(v54, v53);
        v57(v56, v53);
        v20 = v89;
LABEL_20:
        sub_1D1741A30(v20, &qword_1EC642AC0, &qword_1D1E6E810);
        v58 = *(v98 + 20);
        v29 = v90;
        v59 = *&v90[v58];
        v60 = *&v90[v58 + 8];
        v61 = (v103 + v58);
        v63 = *v61;
        v62 = v61[1];
        v64 = v59 == *v61 && v60 == v62;
        if (v64 || (v65 = *v61, v66 = v61[1], (sub_1D1E6904C() & 1) != 0))
        {
          v67 = sub_1D1E66A1C();
          v69 = v68;
          if (v67 == sub_1D1E66A1C() && v69 == v70)
          {

            v20 = v89;
            goto LABEL_4;
          }

          v71 = sub_1D1E6904C();

          v20 = v89;
        }

        else
        {
          v101 = v59;
          v102 = v60;
          v99 = v63;
          v100 = v62;
          sub_1D17D8EF0();
          v71 = sub_1D1E685FC() == -1;
          v20 = v89;
        }

        goto LABEL_31;
      }

      v71 = sub_1D1E6696C();
      v72 = *v87;
      (*v87)(v54, v97);
      v72(v56, v97);
      v73 = v89;
      sub_1D1741A30(&v89[v45], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v73, &qword_1EC642570, &qword_1D1E6C6A0);
      v20 = v73;
      v29 = v90;
LABEL_31:
      sub_1D1C72E20(v103, type metadata accessor for StaticService);
      result = sub_1D1C72E20(v29, type metadata accessor for StaticService);
      if ((v71 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_32:
      if (!v93)
      {
        __break(1u);
        return result;
      }

      v74 = v94;
      sub_1D1C72E80(v35, v94, type metadata accessor for StaticService);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D1C72E80(v74, v33, type metadata accessor for StaticService);
      v33 += v92;
      v35 += v92;
      if (__CFADD__(v34++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_1D1C72CFC(void **a1, uint64_t a2)
{
  v4 = *(type metadata accessor for StaticService(0) - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1D1E0BFE0(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_1D1C74950(v8, a2, type metadata accessor for StaticService, sub_1D1C70CDC, sub_1D1C72460);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D1C72E20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1C72E80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D1C72EEC()
{
  result = qword_1EC64CBB0;
  if (!qword_1EC64CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CBB0);
  }

  return result;
}

unint64_t sub_1D1C72F44()
{
  result = qword_1EC64CBB8;
  if (!qword_1EC64CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CBB8);
  }

  return result;
}

unint64_t sub_1D1C72F9C()
{
  result = qword_1EC64CBC0;
  if (!qword_1EC64CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CBC0);
  }

  return result;
}

unint64_t sub_1D1C72FF4()
{
  result = qword_1EC64CBC8;
  if (!qword_1EC64CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CBC8);
  }

  return result;
}

unint64_t sub_1D1C7304C()
{
  result = qword_1EC64CBD0;
  if (!qword_1EC64CBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64CBD8, &qword_1D1EA1ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CBD0);
  }

  return result;
}

void sub_1D1C730D8()
{
  type metadata accessor for StateSnapshot(319);
  if (v0 <= 0x3F)
  {
    sub_1D1A313D8();
    if (v1 <= 0x3F)
    {
      sub_1D1C73218();
      if (v2 <= 0x3F)
      {
        sub_1D1C73270(319, &qword_1EC64CBF8, sub_1D1785814);
        if (v3 <= 0x3F)
        {
          sub_1D1C73270(319, &qword_1EE07B6B8, sub_1D1785A60);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D1C73218()
{
  if (!qword_1EC64CBF0)
  {
    type metadata accessor for StaticAccessory(255);
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC64CBF0);
    }
  }
}

void sub_1D1C73270(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1D1E681FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D1C732E0(unint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, int64_t a5)
{
  v199 = a4;
  v200 = a1;
  v7 = sub_1D1E669FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v193 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v205 = &v193 - v13;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v14 = *(*(v223 - 8) + 64);
  MEMORY[0x1EEE9AC00](v223);
  v220 = &v193 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v213 = &v193 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v193 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v222 = &v193 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v221 = &v193 - v25;
  v26 = type metadata accessor for StaticActionSet();
  v214 = *(v26 - 8);
  v27 = *(v214 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v201 = &v193 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v230 = &v193 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v227 = &v193 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v233 = &v193 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v232 = &v193 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v39 = MEMORY[0x1EEE9AC00](v38);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v197 = &v193 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v215 = a3;
  v45 = a3[1];
  if (v45 < 1)
  {
    swift_bridgeObjectRetain_n();
    v47 = MEMORY[0x1E69E7CC0];
LABEL_136:
    v233 = *v200;
    if (v233)
    {
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = v226;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_170;
      }

      goto LABEL_138;
    }

    goto LABEL_179;
  }

  v195 = &v193 - v42;
  v194 = v44;
  v206 = v43;
  v212 = v22;
  v217 = (v8 + 48);
  v218 = (v8 + 56);
  v203 = (v8 + 32);
  v211 = (v8 + 8);
  swift_bridgeObjectRetain_n();
  v46 = 0;
  v47 = MEMORY[0x1E69E7CC0];
  v231 = a5;
  v219 = v7;
  v204 = v12;
  v225 = v26;
  v48 = v232;
  while (1)
  {
    a5 = v46;
    v49 = v46 + 1;
    if (v49 >= v45)
    {
      v64 = v49;
    }

    else
    {
      v198 = v47;
      v50 = *v215;
      v51 = *(v214 + 72);
      v52 = *v215 + v51 * v49;
      v53 = v195;
      sub_1D1C66B60(v52, v195, type metadata accessor for StaticActionSet);
      v54 = v197;
      sub_1D1C66B60(v50 + v51 * a5, v197, type metadata accessor for StaticActionSet);
      v55 = v226;
      LODWORD(v228) = sub_1D1D0CC54(v53, v54, v231);
      v226 = v55;
      if (v55)
      {
        sub_1D1C72E20(v54, type metadata accessor for StaticActionSet);
        sub_1D1C72E20(v53, type metadata accessor for StaticActionSet);
        goto LABEL_149;
      }

      v216 = v45;
      sub_1D1C72E20(v54, type metadata accessor for StaticActionSet);
      sub_1D1C72E20(v53, type metadata accessor for StaticActionSet);
      v196 = a5;
      v56 = a5 + 2;
      v57 = v50 + v51 * (a5 + 2);
      v58 = v194;
      v59 = v51;
      v229 = v51;
      v45 = v228;
      while (v216 != v56)
      {
        sub_1D1C66B60(v57, v58, type metadata accessor for StaticActionSet);
        v60 = v206;
        sub_1D1C66B60(v52, v206, type metadata accessor for StaticActionSet);
        v61 = v226;
        v62 = sub_1D1D0CC54(v58, v60, v231);
        v226 = v61;
        if (v61)
        {
          sub_1D1C72E20(v60, type metadata accessor for StaticActionSet);
          sub_1D1C72E20(v58, type metadata accessor for StaticActionSet);
LABEL_149:
          swift_bridgeObjectRelease_n();
        }

        v63 = v62;
        sub_1D1C72E20(v60, type metadata accessor for StaticActionSet);
        sub_1D1C72E20(v58, type metadata accessor for StaticActionSet);
        ++v56;
        v59 = v229;
        v57 += v229;
        v52 += v229;
        if ((v45 ^ v63))
        {
          v64 = v56 - 1;
          goto LABEL_13;
        }
      }

      v64 = v216;
LABEL_13:
      v48 = v232;
      a5 = v196;
      if ((v45 & 1) == 0)
      {
        goto LABEL_26;
      }

      if (v64 < v196)
      {
        goto LABEL_173;
      }

      if (v196 < v64)
      {
        v65 = v59 * (v64 - 1);
        v66 = v64 * v59;
        v67 = v64;
        v68 = v196;
        v69 = v196 * v59;
        do
        {
          if (v68 != --v67)
          {
            v45 = *v215;
            if (!*v215)
            {
              goto LABEL_177;
            }

            sub_1D1C72E80(v45 + v69, v201, type metadata accessor for StaticActionSet);
            if (v69 < v65 || v45 + v69 >= v45 + v66)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v69 != v65)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1D1C72E80(v201, v45 + v65, type metadata accessor for StaticActionSet);
            v59 = v229;
          }

          ++v68;
          v65 -= v59;
          v66 -= v59;
          v69 += v59;
        }

        while (v68 < v67);
        v47 = v198;
        v48 = v232;
        a5 = v196;
      }

      else
      {
LABEL_26:
        v47 = v198;
      }
    }

    v70 = v215[1];
    if (v64 >= v70)
    {
      goto LABEL_37;
    }

    if (__OFSUB__(v64, a5))
    {
      goto LABEL_169;
    }

    if (v64 - a5 >= v199)
    {
LABEL_37:
      v72 = v64;
      if (v64 < a5)
      {
        goto LABEL_168;
      }

      goto LABEL_38;
    }

    if (__OFADD__(a5, v199))
    {
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_175:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_176:

      __break(1u);
LABEL_177:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_178:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_179:
      result = swift_bridgeObjectRelease_n();
      __break(1u);
      return result;
    }

    if (a5 + v199 >= v70)
    {
      v71 = v215[1];
    }

    else
    {
      v71 = a5 + v199;
    }

    if (v71 < a5)
    {
      goto LABEL_172;
    }

    if (v64 == v71)
    {
      goto LABEL_37;
    }

    v198 = v47;
    v128 = *v215;
    v129 = *(v214 + 72);
    v130 = *v215 + v129 * (v64 - 1);
    v228 = -v129;
    v196 = a5;
    v131 = a5 - v64;
    v229 = v128;
    v202 = v129;
    v132 = v128 + v64 * v129;
    v207 = v71;
    while (2)
    {
      v216 = v64;
      v208 = v132;
      v209 = v131;
      v133 = v131;
      v210 = v130;
      v134 = v130;
      while (1)
      {
        sub_1D1C66B60(v132, v48, type metadata accessor for StaticActionSet);
        v45 = v233;
        sub_1D1C66B60(v134, v233, type metadata accessor for StaticActionSet);
        v135 = v231;
        v136 = sub_1D18E4158(v48, v231);
        v138 = v137;
        v139 = sub_1D18E4158(v45, v135);
        if (v138)
        {
          if ((v140 & 1) == 0)
          {
            goto LABEL_88;
          }
        }

        else
        {
          if (v140)
          {
            goto LABEL_115;
          }

          v141 = v136 < v139;
          if (v136 != v139)
          {
            goto LABEL_110;
          }
        }

        v45 = v227;
        sub_1D1C66B60(v233, v227, type metadata accessor for StaticActionSet);
        v142 = *(v48 + *(v26 + 24)) == 7 ? 4 : *(v48 + *(v26 + 24));
        v143 = sub_1D18E4248(v142, &unk_1F4D5EDD8);
        v145 = v144;
        v146 = *(v45 + *(v26 + 24)) == 7 ? 4 : *(v45 + *(v26 + 24));
        v147 = sub_1D18E4248(v146, &unk_1F4D5EDD8);
        v149 = v148;
        sub_1D1C72E20(v45, type metadata accessor for StaticActionSet);
        if (v145)
        {
          v48 = v232;
          if ((v149 & 1) == 0)
          {
            goto LABEL_88;
          }
        }

        else
        {
          v48 = v232;
          if (v149)
          {
            goto LABEL_115;
          }

          v141 = v143 < v147;
          if (v143 != v147)
          {
LABEL_110:
            v159 = v141;
            goto LABEL_127;
          }
        }

        v150 = v219;
        v151 = *v218;
        v152 = v221;
        (*v218)(v221, 1, 1, v219);
        v153 = v222;
        v151(v222, 1, 1, v150);
        v154 = *(v223 + 48);
        v155 = v152;
        v156 = v220;
        v45 = &qword_1EC642570;
        sub_1D1741A90(v155, v220, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A90(v153, v156 + v154, &qword_1EC642570, &qword_1D1E6C6A0);
        v157 = *v217;
        if ((*v217)(v156, 1, v150) == 1)
        {
          break;
        }

        v45 = v212;
        sub_1D1741C08(v156, v212, &qword_1EC642570, &qword_1D1E6C6A0);
        v224 = v154;
        if (v157(v156 + v154, 1, v150) != 1)
        {
          sub_1D1741C08(v156 + v224, v213, &qword_1EC642570, &qword_1D1E6C6A0);
          v160 = *v203;
          v161 = v205;
          (*v203)(v205, v45, v150);
          v45 = v161;
          v162 = v156;
          v163 = v204;
          v160(v204, v213, v150);
          sub_1D1C75134(&qword_1EC642AC8, MEMORY[0x1E6969530]);
          if (sub_1D1E6775C())
          {
            v164 = *v211;
            (*v211)(v163, v150);
            v164(v45, v150);
            v156 = v162;
            v48 = v232;
            goto LABEL_118;
          }

          v159 = sub_1D1E6696C();
          v177 = v163;
          v178 = *v211;
          (*v211)(v177, v150);
          v178(v45, v150);
          sub_1D1741A30(v162 + v224, &qword_1EC642570, &qword_1D1E6C6A0);
          sub_1D1741A30(v162, &qword_1EC642570, &qword_1D1E6C6A0);
          v26 = v225;
LABEL_126:
          v48 = v232;
LABEL_127:
          sub_1D1C72E20(v233, type metadata accessor for StaticActionSet);
          sub_1D1C72E20(v48, type metadata accessor for StaticActionSet);
          if ((v159 & 1) == 0)
          {
            goto LABEL_89;
          }

          goto LABEL_128;
        }

        (*v211)(v45, v150);
        sub_1D1741A30(v156 + v224, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v156, &qword_1EC642570, &qword_1D1E6C6A0);
        v26 = v225;
        v48 = v232;
LABEL_115:
        sub_1D1C72E20(v233, type metadata accessor for StaticActionSet);
        sub_1D1C72E20(v48, type metadata accessor for StaticActionSet);
LABEL_128:
        if (!v229)
        {
          goto LABEL_174;
        }

        v179 = v230;
        sub_1D1C72E80(v132, v230, type metadata accessor for StaticActionSet);
        swift_arrayInitWithTakeFrontToBack();
        sub_1D1C72E80(v179, v134, type metadata accessor for StaticActionSet);
        v134 += v228;
        v132 += v228;
        if (__CFADD__(v133++, 1))
        {
          goto LABEL_89;
        }
      }

      v158 = v157(v156 + v154, 1, v150);
      v48 = v232;
      if (v158 != 1)
      {
        sub_1D1741A30(v156 + v154, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v156, &qword_1EC642570, &qword_1D1E6C6A0);
        v26 = v225;
        goto LABEL_88;
      }

LABEL_118:
      sub_1D1741A30(v156, &qword_1EC642AC0, &qword_1D1E6E810);
      v26 = v225;
      v165 = *(v225 + 20);
      v166 = *(v48 + v165);
      v167 = *(v48 + v165 + 8);
      v168 = (v233 + v165);
      v169 = *v168;
      v170 = v168[1];
      if (v166 != *v168 || v167 != v170)
      {
        v171 = *v168;
        v172 = v168[1];
        if ((sub_1D1E6904C() & 1) == 0)
        {
          v236 = v166;
          v237 = v167;
          v234 = v169;
          v235 = v170;
          sub_1D17D8EF0();
          v159 = sub_1D1E685FC() == -1;
          goto LABEL_126;
        }
      }

      v48 = v232;
      v173 = sub_1D1E66A1C();
      v175 = v174;
      if (v173 != sub_1D1E66A1C() || v175 != v176)
      {
        v159 = sub_1D1E6904C();

        goto LABEL_127;
      }

LABEL_88:
      sub_1D1C72E20(v233, type metadata accessor for StaticActionSet);
      sub_1D1C72E20(v48, type metadata accessor for StaticActionSet);
LABEL_89:
      v64 = v216 + 1;
      v130 = v210 + v202;
      v131 = v209 - 1;
      v132 = v208 + v202;
      v72 = v207;
      if (v216 + 1 != v207)
      {
        continue;
      }

      break;
    }

    v47 = v198;
    a5 = v196;
    if (v207 < v196)
    {
      goto LABEL_168;
    }

LABEL_38:
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v207 = v72;
    if ((v73 & 1) == 0)
    {
      v47 = sub_1D177D070(0, *(v47 + 16) + 1, 1, v47);
    }

    v75 = *(v47 + 16);
    v74 = *(v47 + 24);
    v76 = v75 + 1;
    if (v75 >= v74 >> 1)
    {
      v47 = sub_1D177D070((v74 > 1), v75 + 1, 1, v47);
    }

    *(v47 + 16) = v76;
    v77 = v47 + 16 * v75;
    v78 = v207;
    *(v77 + 32) = a5;
    *(v77 + 40) = v78;
    v229 = *v200;
    if (!v229)
    {
      goto LABEL_178;
    }

    if (v75)
    {
      break;
    }

LABEL_3:
    v45 = v215[1];
    v46 = v207;
    a5 = v231;
    if (v207 >= v45)
    {
      goto LABEL_136;
    }
  }

  while (1)
  {
    a5 = v76 - 1;
    if (v76 >= 4)
    {
      v83 = v47 + 32 + 16 * v76;
      v84 = *(v83 - 64);
      v85 = *(v83 - 56);
      v89 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      if (v89)
      {
        goto LABEL_155;
      }

      v88 = *(v83 - 48);
      v87 = *(v83 - 40);
      v89 = __OFSUB__(v87, v88);
      v81 = v87 - v88;
      v82 = v89;
      if (v89)
      {
        goto LABEL_156;
      }

      v90 = (v47 + 16 * v76);
      v92 = *v90;
      v91 = v90[1];
      v89 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v89)
      {
        goto LABEL_158;
      }

      v89 = __OFADD__(v81, v93);
      v94 = v81 + v93;
      if (v89)
      {
        goto LABEL_161;
      }

      if (v94 >= v86)
      {
        v112 = (v47 + 32 + 16 * a5);
        v114 = *v112;
        v113 = v112[1];
        v89 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v89)
        {
          goto LABEL_167;
        }

        if (v81 < v115)
        {
          a5 = v76 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

    if (v76 == 3)
    {
      v79 = *(v47 + 32);
      v80 = *(v47 + 40);
      v89 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      v82 = v89;
LABEL_57:
      if (v82)
      {
        goto LABEL_157;
      }

      v95 = (v47 + 16 * v76);
      v97 = *v95;
      v96 = v95[1];
      v98 = __OFSUB__(v96, v97);
      v99 = v96 - v97;
      v100 = v98;
      if (v98)
      {
        goto LABEL_160;
      }

      v101 = (v47 + 32 + 16 * a5);
      v103 = *v101;
      v102 = v101[1];
      v89 = __OFSUB__(v102, v103);
      v104 = v102 - v103;
      if (v89)
      {
        goto LABEL_163;
      }

      if (__OFADD__(v99, v104))
      {
        goto LABEL_164;
      }

      if (v99 + v104 >= v81)
      {
        if (v81 < v104)
        {
          a5 = v76 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_71;
    }

    v105 = (v47 + 16 * v76);
    v107 = *v105;
    v106 = v105[1];
    v89 = __OFSUB__(v106, v107);
    v99 = v106 - v107;
    v100 = v89;
LABEL_71:
    if (v100)
    {
      goto LABEL_159;
    }

    v108 = v47 + 16 * a5;
    v110 = *(v108 + 32);
    v109 = *(v108 + 40);
    v89 = __OFSUB__(v109, v110);
    v111 = v109 - v110;
    if (v89)
    {
      goto LABEL_162;
    }

    if (v111 < v99)
    {
      goto LABEL_3;
    }

LABEL_78:
    v116 = a5 - 1;
    if (a5 - 1 >= v76)
    {
      break;
    }

    v117 = *v215;
    if (!*v215)
    {
      goto LABEL_175;
    }

    v118 = v47;
    v119 = *(v47 + 32 + 16 * v116);
    v120 = *(v47 + 32 + 16 * a5 + 8);
    v121 = *(v214 + 72);
    v122 = v117 + v121 * v119;
    v123 = v117 + v121 * *(v47 + 32 + 16 * a5);
    v124 = v117 + v121 * v120;
    v47 = v231;

    v125 = v122;
    v126 = v226;
    sub_1D1C6A11C(v125, v123, v124, v229, v47);
    v45 = v126;
    if (v126)
    {
      goto LABEL_149;
    }

    if (v120 < v119)
    {
      goto LABEL_153;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v118 = sub_1D1E0BE44(v118);
    }

    if (v116 >= *(v118 + 2))
    {
      goto LABEL_154;
    }

    v226 = 0;
    v127 = &v118[16 * v116];
    *(v127 + 4) = v119;
    *(v127 + 5) = v120;
    v238 = v118;
    sub_1D1E0BDB8(a5);
    v47 = v238;
    v76 = *(v238 + 16);
    v26 = v225;
    v48 = v232;
    if (v76 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  v47 = sub_1D1E0BE44(v47);
LABEL_138:
  v238 = v47;
  v182 = *(v47 + 16);
  if (v182 >= 2)
  {
    do
    {
      v183 = *v215;
      if (!*v215)
      {
        goto LABEL_176;
      }

      v184 = *(v47 + 16 * v182);
      v185 = v47;
      v186 = *(v47 + 16 * (v182 - 1) + 32);
      v47 = *(v47 + 16 * (v182 - 1) + 40);
      v187 = *(v214 + 72);
      v188 = v183 + v187 * v184;
      v189 = v183 + v187 * v186;
      v190 = v183 + v187 * v47;

      sub_1D1C6A11C(v188, v189, v190, v233, a5);
      if (v45)
      {
        break;
      }

      if (v47 < v184)
      {
        goto LABEL_165;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v185 = sub_1D1E0BE44(v185);
      }

      if (v182 - 2 >= *(v185 + 2))
      {
        goto LABEL_166;
      }

      v191 = &v185[16 * v182];
      *v191 = v184;
      *(v191 + 1) = v47;
      v238 = v185;
      sub_1D1E0BDB8(v182 - 1);
      v47 = v238;
      v182 = *(v238 + 16);
    }

    while (v182 > 1);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D1C746E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v39 = a5;
  v38 = type metadata accessor for StaticActionSet();
  v10 = *(*(v38 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v38);
  v37 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v19 = &v29 - v18;
  v31 = a2;
  if (a3 != a2)
  {
    v20 = *(v17 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = *a4;
    v30 = v20;
    v24 = v36 + v20 * a3;
LABEL_4:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    v25 = v21;
    while (1)
    {
      sub_1D1C66B60(v24, v19, type metadata accessor for StaticActionSet);
      sub_1D1C66B60(v25, v15, type metadata accessor for StaticActionSet);
      v26 = sub_1D1D0CC54(v19, v15, v39);
      sub_1D1C72E20(v15, type metadata accessor for StaticActionSet);
      result = sub_1D1C72E20(v19, type metadata accessor for StaticActionSet);
      if (v5)
      {
        break;
      }

      if (v26)
      {
        if (!v36)
        {
          __break(1u);
          return result;
        }

        v27 = v37;
        sub_1D1C72E80(v24, v37, type metadata accessor for StaticActionSet);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1D1C72E80(v27, v25, type metadata accessor for StaticActionSet);
        v25 += v22;
        v24 += v22;
        if (!__CFADD__(v23++, 1))
        {
          continue;
        }
      }

      a3 = v35 + 1;
      v21 = v34 + v30;
      v23 = v33 - 1;
      v24 = v32 + v30;
      if (v35 + 1 != v31)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1D1C74950(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void *, _BYTE *, uint64_t, uint64_t, uint64_t), void (*a5)(void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  swift_bridgeObjectRetain_n();
  result = sub_1D1E68F9C();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      if (v10 <= 1)
      {
        v13 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a3(0);
        v13 = sub_1D1E67C8C();
        *(v13 + 16) = v10 / 2;
      }

      v14 = *((a3)(0) - 8);
      v15[0] = v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
      v15[1] = v10 / 2;

      a4(v15, v16, a1, v12, a2);

      *(v13 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {

    a5(0, v10, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D1C74B00(void **a1, uint64_t a2)
{
  v4 = *(type metadata accessor for StaticActionSet() - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1D1E0BFCC(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_1D1C74950(v8, a2, type metadata accessor for StaticActionSet, sub_1D1C732E0, sub_1D1C746E4);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D1C74C24(uint64_t a1)
{
  v2 = type metadata accessor for BoxedTileInfoBearer(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D178CD64(0, v7, 0);
    v8 = v20;
    v9 = type metadata accessor for StaticServiceGroup();
    v10 = a1 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80));
    v11 = *(*(v9 - 8) + 72);
    v12 = sub_1D1C75134(&qword_1EC64BA10, type metadata accessor for StaticServiceGroup);
    do
    {
      v19[3] = v9;
      v19[4] = v12;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
      sub_1D1C66B60(v10, boxed_opaque_existential_1, type metadata accessor for StaticServiceGroup);
      sub_1D17419CC(v19, v18);
      sub_1D1C572DC(v18, v6);
      __swift_destroy_boxed_opaque_existential_1(v19);
      v20 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D178CD64(v14 > 1, v15 + 1, 1);
        v8 = v20;
      }

      *(v8 + 16) = v15 + 1;
      sub_1D1C72E80(v6, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, type metadata accessor for BoxedTileInfoBearer);
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_1D1C74E6C(uint64_t a1)
{
  v2 = type metadata accessor for BoxedTileInfoBearer(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D178CD64(0, v7, 0);
    v8 = v20;
    v9 = type metadata accessor for StaticService(0);
    v10 = a1 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80));
    v11 = *(*(v9 - 8) + 72);
    v12 = sub_1D1C75134(&qword_1EC646AF0, type metadata accessor for StaticService);
    do
    {
      v19[3] = v9;
      v19[4] = v12;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
      sub_1D1C66B60(v10, boxed_opaque_existential_1, type metadata accessor for StaticService);
      sub_1D17419CC(v19, v18);
      sub_1D1C572DC(v18, v6);
      __swift_destroy_boxed_opaque_existential_1(v19);
      v20 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D178CD64(v14 > 1, v15 + 1, 1);
        v8 = v20;
      }

      *(v8 + 16) = v15 + 1;
      sub_1D1C72E80(v6, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, type metadata accessor for BoxedTileInfoBearer);
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_1D1C75134(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1C75324()
{
  v0 = type metadata accessor for StaticUserActionPrediction();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_1D1C753A4()
{
  result = sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    result = sub_1D1C75440();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for BoxedTileInfoBearer.TileSort(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1D1C75440()
{
  result = qword_1EC64CC28;
  if (!qword_1EC64CC28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC64CC28);
  }

  return result;
}

uint64_t TileInfoBearer.analyticsElementType.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v96 = a2;
  v79 = type metadata accessor for StaticEndpoint();
  v3 = *(*(v79 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v79);
  v76 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v78 = &v75 - v6;
  v82 = type metadata accessor for StaticMatterDevice();
  v7 = *(*(v82 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v82);
  v77 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v75 - v10;
  v85 = type metadata accessor for StaticMediaSystem();
  v11 = *(*(v85 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v85);
  v80 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v84 = &v75 - v14;
  v87 = type metadata accessor for StaticMediaProfile();
  v15 = *(*(v87 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v87);
  v83 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v86 = &v75 - v18;
  v88 = type metadata accessor for StaticCameraProfile();
  v19 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for StaticActionSet();
  v21 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for StaticServiceGroup();
  v23 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for StaticService(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v75 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = &v75 - v35;
  v37 = type metadata accessor for StaticAccessory(0);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v75 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = &v75 - v43;
  v45 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v47 = &v75 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v48;
  (*(v48 + 16))(v47, v94, a1);
  if (swift_dynamicCast())
  {
    sub_1D1C7FC04(v44, v41, type metadata accessor for StaticAccessory);
    StaticAccessory.primaryStaticService.getter(v36);
    sub_1D1C80150(v41, type metadata accessor for StaticAccessory);
    if ((*(v26 + 48))(v36, 1, v25) == 1)
    {
      sub_1D1741A30(v36, &qword_1EC6436F0, &qword_1D1E99BC0);
      v49 = 0;
    }

    else
    {
      v49 = v36[*(v25 + 104)];
      sub_1D1C80150(v36, type metadata accessor for StaticService);
    }

    v97 = v49;
    v51 = &v97;
    goto LABEL_8;
  }

  if (!swift_dynamicCast())
  {
    v52 = v93;
    if (swift_dynamicCast())
    {
      *v96 = 54;
      v53 = type metadata accessor for StaticServiceGroup;
LABEL_15:
      sub_1D1C80150(v52, v53);
      return (*(v95 + 8))(v47, a1);
    }

    v52 = v91;
    if (swift_dynamicCast())
    {
      *v96 = 55;
      v53 = type metadata accessor for StaticActionSet;
      goto LABEL_15;
    }

    v52 = v89;
    if (swift_dynamicCast())
    {
      *v96 = 63;
      v53 = type metadata accessor for StaticCameraProfile;
      goto LABEL_15;
    }

    v56 = v86;
    v55 = v87;
    if (swift_dynamicCast())
    {
      v57 = v83;
      sub_1D1C7FC04(v56, v83, type metadata accessor for StaticMediaProfile);
      v58 = v57 + *(v55 + 92);
      v59 = *v58;
      v60 = *(v58 + 8);
      sub_1D18EB144(*v58, *(v58 + 8));
      sub_1D1C80150(v57, type metadata accessor for StaticMediaProfile);
      if (v60 > 1)
      {
        if (v60 != 2)
        {
          if (v60 != 3)
          {
            LOBYTE(v61) = 64;
LABEL_39:
            *v96 = v61;
            return (*(v95 + 8))(v47, a1);
          }

LABEL_26:
          v61 = 0x27273A32u >> (8 * v59);
          goto LABEL_39;
        }

        goto LABEL_32;
      }

      goto LABEL_27;
    }

    v63 = v84;
    v62 = v85;
    if (swift_dynamicCast())
    {
      v64 = v80;
      sub_1D1C7FC04(v63, v80, type metadata accessor for StaticMediaSystem);
      v65 = v64 + *(v62 + 24);
      v59 = *v65;
      v60 = *(v65 + 8);
      sub_1D18EB144(*v65, *(v65 + 8));
      sub_1D1C80150(v64, type metadata accessor for StaticMediaSystem);
      if (v60 > 1)
      {
        if (v60 != 2)
        {
          if (v60 != 3)
          {
            LOBYTE(v61) = 65;
            goto LABEL_39;
          }

          goto LABEL_26;
        }

LABEL_32:
        LOBYTE(v61) = 39;
        goto LABEL_39;
      }

LABEL_27:
      if (v60)
      {
        LOBYTE(v61) = 59;
      }

      else
      {
        sub_1D18EB2D8(v59, 0);
        LOBYTE(v61) = 56;
      }

      goto LABEL_39;
    }

    v66 = v81;
    v67 = v82;
    if (swift_dynamicCast())
    {
      v68 = v66;
      v69 = v77;
      sub_1D1C7FC04(v68, v77, type metadata accessor for StaticMatterDevice);
      static MatterDeviceType.primaryDeviceType(for:)(*(v69 + *(v67 + 32)), &v100);
      sub_1D1C80150(v69, type metadata accessor for StaticMatterDevice);
      if (v100 != 28)
      {
        v99 = v100;
        v70 = &v99;
LABEL_41:
        HomeAnalyticsUtilities.HomeElementType.init(matterDeviceType:)(v70, v96);
        return (*(v95 + 8))(v47, a1);
      }
    }

    else
    {
      v71 = v78;
      v72 = v79;
      if (!swift_dynamicCast())
      {
        LOBYTE(v61) = 1;
        goto LABEL_39;
      }

      v73 = v71;
      v74 = v76;
      sub_1D1C7FC04(v73, v76, type metadata accessor for StaticEndpoint);
      static MatterDeviceType.primaryDeviceType(for:)(*(v74 + *(v72 + 32)), v102);
      sub_1D1C80150(v74, type metadata accessor for StaticEndpoint);
      if (v102[0] != 28)
      {
        v101 = v102[0];
        v70 = &v101;
        goto LABEL_41;
      }
    }

    *v96 = 0;
    return (*(v95 + 8))(v47, a1);
  }

  sub_1D1C7FC04(v32, v30, type metadata accessor for StaticService);
  v50 = v30[*(v25 + 104)];
  sub_1D1C80150(v30, type metadata accessor for StaticService);
  v98 = v50;
  v51 = &v98;
LABEL_8:
  HomeAnalyticsUtilities.HomeElementType.init(serviceKind:)(v51, v96);
  return (*(v95 + 8))(v47, a1);
}

uint64_t sub_1D1C75ED0(uint64_t a1)
{
  v37 = sub_1D1E66A7C();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x1E69E7CC0];
    sub_1D178CD24(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_1D1E6869C();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_1D1E66A1C();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_1D178CD24((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_1D1716920(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_1D1716920(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t TileInfoBearer.description.getter(uint64_t a1)
{
  v38 = type metadata accessor for StaticEndpoint();
  v2 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for StaticMatterDevice();
  v4 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for StaticServiceGroup();
  v6 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for StaticService(0);
  v8 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StaticMediaSystem();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StaticCameraProfile();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StaticActionSet();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for StaticAccessory(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a1 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v29 = &v37 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v29, v46, a1);
  if (swift_dynamicCast())
  {
    v30 = 0x6341636974617473;
    sub_1D1C80150(v25, type metadata accessor for StaticAccessory);
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    v30 = 0x6341636974617473;
    sub_1D1C80150(v20, type metadata accessor for StaticActionSet);
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    sub_1D1C80150(v16, type metadata accessor for StaticCameraProfile);
    v30 = 0xD000000000000013;
    goto LABEL_16;
  }

  v31 = v45;
  if (swift_dynamicCast())
  {
    sub_1D1C80150(v31, type metadata accessor for StaticMediaSystem);
    v30 = 0xD000000000000011;
    goto LABEL_16;
  }

  v32 = v43;
  if (swift_dynamicCast())
  {
    sub_1D1C80150(v32, type metadata accessor for StaticService);
    v30 = 0x6553636974617473;
    goto LABEL_16;
  }

  v33 = v42;
  if (swift_dynamicCast())
  {
    v30 = 0xD000000000000012;
    v34 = type metadata accessor for StaticServiceGroup;
LABEL_15:
    sub_1D1C80150(v33, v34);
    goto LABEL_16;
  }

  v33 = v40;
  if (swift_dynamicCast())
  {
    v30 = 0xD000000000000012;
    v34 = type metadata accessor for StaticMatterDevice;
    goto LABEL_15;
  }

  v36 = v37;
  if (swift_dynamicCast())
  {
    sub_1D1C80150(v36, type metadata accessor for StaticEndpoint);
    v30 = 0x6E45636974617473;
  }

  else
  {
    v30 = 0;
  }

LABEL_16:
  (*(v26 + 8))(v29, a1);
  return v30;
}

uint64_t TileInfoBearer.staticServices.getter(uint64_t a1)
{
  v2 = v1;
  v46 = type metadata accessor for StaticServiceGroup();
  v4 = *(*(v46 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v46);
  v44 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v44 - v7;
  v8 = type metadata accessor for StaticService(0);
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v44 - v13;
  v15 = type metadata accessor for StaticAccessory(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v44 - v21;
  v23 = *(a1 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v26, v2, a1);
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v29 = sub_1D1C7FC04(v22, v19, type metadata accessor for StaticAccessory);
      v30 = *&v19[*(v15 + 84)];
      MEMORY[0x1EEE9AC00](v29);
      *(&v44 - 2) = v19;
      v28 = sub_1D17868B8(sub_1D1820ECC, (&v44 - 4), v31);
      v32 = type metadata accessor for StaticAccessory;
      v33 = v19;
LABEL_5:
      sub_1D1C80150(v33, v32);
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      sub_1D1C7FC04(v14, v12, type metadata accessor for StaticService);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643258, &qword_1D1E716B0);
      v34 = *(v47 + 72);
      v35 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1D1E739C0;
      sub_1D1C7FC04(v12, v28 + v35, type metadata accessor for StaticService);
      goto LABEL_13;
    }

    v36 = v45;
    v37 = v46;
    if (swift_dynamicCast())
    {
      v38 = v36;
      v39 = v44;
      sub_1D1C7FC04(v38, v44, type metadata accessor for StaticServiceGroup);
      v40 = *(v39 + *(v37 + 56));
      v41 = v40[2];
      if (v41)
      {
        v28 = sub_1D18042C8(v40[2], 0);
        v42 = sub_1D1804A58(&v48, v28 + ((*(v47 + 80) + 32) & ~*(v47 + 80)), v41, v40);
        v46 = v50;
        v47 = v42;

        sub_1D1716918();
        if (v47 != v41)
        {
          __break(1u);
          goto LABEL_12;
        }
      }

      else
      {
        v28 = MEMORY[0x1E69E7CC0];
      }

      v32 = type metadata accessor for StaticServiceGroup;
      v33 = v44;
      goto LABEL_5;
    }

LABEL_12:
    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  sub_1D17419CC(v51 + 16, &v48);
  v27 = v49;
  __swift_project_boxed_opaque_existential_1(&v48, v49);
  v28 = TileInfoBearer.staticServices.getter(v27);
  __swift_destroy_boxed_opaque_existential_1(&v48);

LABEL_13:
  (*(v23 + 8))(v26, a1);
  return v28;
}

uint64_t TileInfoBearer.statusString(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for StaticMatterDevice();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = (*(a3 + 192))(a1, v9, a2, a3);
  sub_1D1741A30(v9, &qword_1EC643650, &qword_1D1E71D40);
  return v11;
}

uint64_t (*sub_1D1C76E38(uint64_t *a1))()
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_1D1E66A7C();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_1D1C7E834(v4, v9);
  return sub_1D1C76F50;
}

void (*sub_1D1C76F54(uint64_t **a1, unsigned __int16 a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1D1C7E974(v4, a2);
  return sub_1D1C76FCC;
}

void sub_1D1C76FCC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t (*sub_1D1C77018(uint64_t *a1))()
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_1D1E66A7C();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_1D1C7EA78(v4, v9);
  return sub_1D1C801B4;
}

uint64_t (*sub_1D1C77130(uint64_t *a1))()
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_1D1E66A7C();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_1D1C7EBB4(v4, v9);
  return sub_1D1C801B4;
}

uint64_t (*sub_1D1C77248(uint64_t *a1))()
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_1D1E66A7C();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_1D1C7ECF0(v4, v9);
  return sub_1D1C801B4;
}

uint64_t (*sub_1D1C77360(uint64_t *a1))()
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_1D1E66A7C();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_1D1C7EE2C(v4, v9);
  return sub_1D1C801B4;
}

void sub_1D1C77478(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t TileInfoBearer.serviceKinds.getter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticServiceGroup();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v108 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v105 - v8;
  v10 = type metadata accessor for StaticService(0);
  v116 = *(v10 - 8);
  v117 = v10;
  v11 = *(v116 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v105 - v15;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v17 = *(*(v115 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v115);
  v114 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v113 = &v105 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v112 = &v105 - v22;
  v23 = type metadata accessor for StaticAccessory(0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v107 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v105 - v28;
  v30 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v32 = &v105 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v33;
  (*(v33 + 16))(v32, v2, a1);
  if (swift_dynamicCast())
  {
    sub_1D17419CC(v124 + 16, v121);
    v34 = v122;
    v35 = v123;
    __swift_project_boxed_opaque_existential_1(v121, v122);
    v36 = (*(v35 + 96))(v34, v35);
    __swift_destroy_boxed_opaque_existential_1(v121);

LABEL_47:
    (*(v109 + 8))(v32, a1);
    return v36;
  }

  if (!swift_dynamicCast())
  {
    v71 = v117;
    if (swift_dynamicCast())
    {
      sub_1D1C7FC04(v16, v14, type metadata accessor for StaticService);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436B8, &unk_1D1E71E00);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1D1E739C0;
      *(v36 + 32) = v14[*(v71 + 104)];
      sub_1D1C80150(v14, type metadata accessor for StaticService);
      goto LABEL_47;
    }

    v72 = swift_dynamicCast();
    v36 = MEMORY[0x1E69E7CC0];
    if (!v72)
    {
      goto LABEL_47;
    }

    v106 = v32;
    v73 = v108;
    sub_1D1C7FC04(v9, v108, type metadata accessor for StaticServiceGroup);
    v74 = *(v73 + *(v4 + 56));
    v75 = *(v74 + 16);
    if (v75)
    {
      v105 = a1;
      v121[0] = v36;

      sub_1D178CF80(0, v75, 0);
      v36 = v121[0];
      v76 = v74 + 64;
      v77 = -1 << *(v74 + 32);
      result = sub_1D1E6869C();
      v78 = result;
      v79 = 0;
      v107 = v74 + 72;
      v110 = v75;
      v111 = v74 + 64;
      while ((v78 & 0x8000000000000000) == 0 && v78 < 1 << *(v74 + 32))
      {
        v82 = v78 >> 6;
        if ((*(v76 + 8 * (v78 >> 6)) & (1 << v78)) == 0)
        {
          goto LABEL_56;
        }

        v83 = *(v74 + 36);
        v118 = v79;
        v119 = v83;
        v84 = v74;
        v85 = v115;
        v120 = v36;
        v86 = *(v115 + 48);
        v87 = *(v84 + 48);
        v88 = sub_1D1E66A7C();
        v89 = *(v88 - 8);
        v90 = v112;
        (*(v89 + 16))(v112, v87 + *(v89 + 72) * v78, v88);
        sub_1D1C3EB34(*(v84 + 56) + *(v116 + 72) * v78, &v90[v86], type metadata accessor for StaticService);
        v91 = v113;
        (*(v89 + 32))(v113, v90, v88);
        sub_1D1C7FC04(&v90[v86], v91 + *(v85 + 48), type metadata accessor for StaticService);
        v92 = v114;
        sub_1D1741A90(v91, v114, &qword_1EC642DB0, &unk_1D1E6F360);
        v93 = v92 + *(v85 + 48);
        v94 = *(v93 + *(v117 + 104));
        sub_1D1C80150(v93, type metadata accessor for StaticService);
        v95 = v92;
        v36 = v120;
        result = (*(v89 + 8))(v95, v88);
        v121[0] = v36;
        v97 = *(v36 + 16);
        v96 = *(v36 + 24);
        if (v97 >= v96 >> 1)
        {
          result = sub_1D178CF80((v96 > 1), v97 + 1, 1);
          v36 = v121[0];
        }

        *(v36 + 16) = v97 + 1;
        *(v36 + v97 + 32) = v94;
        v80 = 1 << *(v84 + 32);
        if (v78 >= v80)
        {
          goto LABEL_57;
        }

        v76 = v111;
        v98 = *(v111 + 8 * v82);
        if ((v98 & (1 << v78)) == 0)
        {
          goto LABEL_58;
        }

        v74 = v84;
        if (v119 != *(v84 + 36))
        {
          goto LABEL_59;
        }

        v99 = v98 & (-2 << (v78 & 0x3F));
        if (v99)
        {
          v80 = __clz(__rbit64(v99)) | v78 & 0x7FFFFFFFFFFFFFC0;
          v81 = v118;
        }

        else
        {
          v100 = v82 << 6;
          v101 = v82 + 1;
          v102 = (v107 + 8 * v82);
          v81 = v118;
          while (v101 < (v80 + 63) >> 6)
          {
            v104 = *v102++;
            v103 = v104;
            v100 += 64;
            ++v101;
            if (v104)
            {
              result = sub_1D1716920(v78, v119, 0);
              v80 = __clz(__rbit64(v103)) + v100;
              goto LABEL_30;
            }
          }

          result = sub_1D1716920(v78, v119, 0);
        }

LABEL_30:
        v79 = v81 + 1;
        v78 = v80;
        if (v79 == v110)
        {
          sub_1D1C80150(v108, type metadata accessor for StaticServiceGroup);
LABEL_25:

          a1 = v105;
          goto LABEL_46;
        }
      }

      goto LABEL_55;
    }

    sub_1D1C80150(v73, type metadata accessor for StaticServiceGroup);
LABEL_46:
    v32 = v106;
    goto LABEL_47;
  }

  v106 = v32;
  v37 = v29;
  v38 = v107;
  sub_1D1C7FC04(v37, v107, type metadata accessor for StaticAccessory);
  v39 = *(v38 + *(v23 + 80));
  v40 = *(v39 + 16);
  if (!v40)
  {
    sub_1D1C80150(v38, type metadata accessor for StaticAccessory);
    v36 = MEMORY[0x1E69E7CC0];
    goto LABEL_46;
  }

  v105 = a1;
  v121[0] = MEMORY[0x1E69E7CC0];

  sub_1D178CF80(0, v40, 0);
  v36 = v121[0];
  v41 = v39 + 64;
  v42 = -1 << *(v39 + 32);
  result = sub_1D1E6869C();
  v44 = result;
  v45 = 0;
  v108 = v39 + 72;
  v110 = v40;
  v111 = v39 + 64;
  while ((v44 & 0x8000000000000000) == 0 && v44 < 1 << *(v39 + 32))
  {
    v47 = v44 >> 6;
    if ((*(v41 + 8 * (v44 >> 6)) & (1 << v44)) == 0)
    {
      goto LABEL_51;
    }

    v48 = *(v39 + 36);
    v118 = v45;
    v119 = v48;
    v49 = v39;
    v50 = v115;
    v51 = *(v115 + 48);
    v120 = v36;
    v52 = *(v49 + 48);
    v53 = sub_1D1E66A7C();
    v54 = *(v53 - 8);
    v55 = v112;
    (*(v54 + 16))(v112, v52 + *(v54 + 72) * v44, v53);
    sub_1D1C3EB34(*(v49 + 56) + *(v116 + 72) * v44, &v55[v51], type metadata accessor for StaticService);
    v56 = v113;
    (*(v54 + 32))(v113, v55, v53);
    sub_1D1C7FC04(&v55[v51], &v56[*(v50 + 48)], type metadata accessor for StaticService);
    v57 = v56;
    v58 = v114;
    sub_1D1741A90(v57, v114, &qword_1EC642DB0, &unk_1D1E6F360);
    v59 = v58 + *(v50 + 48);
    v60 = *(v59 + *(v117 + 104));
    sub_1D1C80150(v59, type metadata accessor for StaticService);
    v61 = v58;
    v36 = v120;
    result = (*(v54 + 8))(v61, v53);
    v121[0] = v36;
    v63 = *(v36 + 16);
    v62 = *(v36 + 24);
    if (v63 >= v62 >> 1)
    {
      result = sub_1D178CF80((v62 > 1), v63 + 1, 1);
      v36 = v121[0];
    }

    *(v36 + 16) = v63 + 1;
    *(v36 + v63 + 32) = v60;
    v46 = 1 << *(v49 + 32);
    if (v44 >= v46)
    {
      goto LABEL_52;
    }

    v41 = v111;
    v64 = *(v111 + 8 * v47);
    if ((v64 & (1 << v44)) == 0)
    {
      goto LABEL_53;
    }

    v39 = v49;
    if (v119 != *(v49 + 36))
    {
      goto LABEL_54;
    }

    v65 = v64 & (-2 << (v44 & 0x3F));
    if (v65)
    {
      v46 = __clz(__rbit64(v65)) | v44 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v66 = v47 << 6;
      v67 = v47 + 1;
      v68 = (v108 + 8 * v47);
      while (v67 < (v46 + 63) >> 6)
      {
        v70 = *v68++;
        v69 = v70;
        v66 += 64;
        ++v67;
        if (v70)
        {
          result = sub_1D1716920(v44, v119, 0);
          v46 = __clz(__rbit64(v69)) + v66;
          goto LABEL_7;
        }
      }

      result = sub_1D1716920(v44, v119, 0);
    }

LABEL_7:
    v45 = v118 + 1;
    v44 = v46;
    if (v118 + 1 == v110)
    {
      sub_1D1C80150(v107, type metadata accessor for StaticAccessory);
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t TileInfoBearer.debugDescription.getter(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v76 = &v75 - v6;
  v7 = type metadata accessor for StatusStrings.Options();
  v8 = (v7 - 8);
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D1E66A7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v83[0] = 0;
  *(&v83[0] + 1) = 0xE000000000000000;
  sub_1D1E6884C();
  v85 = v83[0];
  MEMORY[0x1D3890F70](0xD000000000000016, 0x80000001D1EC79D0);
  v17 = (*(a2 + 144))(a1, a2);
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v17 = 0x6E776F6E6B6E75;
    v19 = 0xE700000000000000;
  }

  MEMORY[0x1D3890F70](v17, v19);

  MEMORY[0x1D3890F70](0x203A6469202CLL, 0xE600000000000000);
  v20 = *(a2 + 48);
  sub_1D1E6886C();
  sub_1D1886B8C();
  v21 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v21);

  (*(v13 + 8))(v16, v12);
  MEMORY[0x1D3890F70](0x203A656D616E202CLL, 0xE800000000000000);
  v22 = (*(a2 + 56))(a1, a2);
  MEMORY[0x1D3890F70](v22);

  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EC79F0);
  v23 = v8[13];
  v24 = sub_1D1E669FC();
  (*(*(v24 - 8) + 56))(&v11[v23], 1, 1, v24);
  *v11 = 65793;
  *(v11 + 2) = 1;
  v11[6] = 0;
  v11[v8[14]] = 2;
  v25 = &v11[v8[15]];
  v25[4] = 0;
  *v25 = 2;
  v26 = type metadata accessor for StaticMatterDevice();
  v27 = v76;
  (*(*(v26 - 8) + 56))(v76, 1, 1, v26);
  v28 = (*(a2 + 192))(v11, v27, a1, a2);
  v30 = v29;
  sub_1D1741A30(v27, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1C80150(v11, type metadata accessor for StatusStrings.Options);
  if (v30)
  {
    v31 = v28;
  }

  else
  {
    v31 = 7104878;
  }

  if (!v30)
  {
    v30 = 0xE300000000000000;
  }

  MEMORY[0x1D3890F70](v31, v30);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC7A10);
  v32 = *(a2 + 16);
  v33 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v33);

  MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EC5FD0);
  (*(a2 + 72))(v83, a1, a2);
  v80 = v83[2];
  v81 = v83[3];
  v82[0] = v84[0];
  *(v82 + 9) = *(v84 + 9);
  v78 = v83[0];
  v79 = v83[1];
  sub_1D1E68ABC();
  sub_1D18A98A0(v83);
  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC5FF0);
  v34 = (*(a2 + 88))(a1, a2);
  v35 = (v34 & 1) == 0;
  if (v34)
  {
    v36 = 1702195828;
  }

  else
  {
    v36 = 0x65736C6166;
  }

  if (v35)
  {
    v37 = 0xE500000000000000;
  }

  else
  {
    v37 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v36, v37);

  MEMORY[0x1D3890F70](0x636165527369202CLL, 0xEF203A656C626168);
  v38 = (*(a2 + 176))(a1, a2);
  v39 = (v38 & 1) == 0;
  if (v38)
  {
    v40 = 1702195828;
  }

  else
  {
    v40 = 0x65736C6166;
  }

  if (v39)
  {
    v41 = 0xE500000000000000;
  }

  else
  {
    v41 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v40, v41);

  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC6010);
  v42 = *(a2 + 96);
  v76 = a1;
  v43 = v42(a1, a2);
  v44 = *(v43 + 16);
  if (v44)
  {
    *&v78 = MEMORY[0x1E69E7CC0];
    sub_1D178CD24(0, v44, 0);
    v45 = 32;
    v46 = v78;
    do
    {
      v77 = *(v43 + v45);
      v47 = ServiceKind.localizedDescription.getter();
      *&v78 = v46;
      v50 = *(v46 + 16);
      v49 = *(v46 + 24);
      if (v50 >= v49 >> 1)
      {
        v75 = v47;
        v52 = v48;
        sub_1D178CD24((v49 > 1), v50 + 1, 1);
        v48 = v52;
        v47 = v75;
        v46 = v78;
      }

      *(v46 + 16) = v50 + 1;
      v51 = v46 + 16 * v50;
      *(v51 + 32) = v47;
      *(v51 + 40) = v48;
      ++v45;
      --v44;
    }

    while (v44);
  }

  else
  {

    v46 = MEMORY[0x1E69E7CC0];
  }

  *&v78 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v53 = sub_1D1E6770C();
  v55 = v54;

  MEMORY[0x1D3890F70](v53, v55);

  MEMORY[0x1D3890F70](0x6F72202020200A2CLL, 0xEF203A7364496D6FLL);
  v56 = v76;
  v57 = (*(a2 + 136))(v76, a2);
  v58 = sub_1D1C75ED0(v57);

  *&v78 = v58;
  v59 = sub_1D1E6770C();
  v61 = v60;

  MEMORY[0x1D3890F70](v59, v61);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC6030);
  v62 = (*(a2 + 120))(v56, a2);
  v63 = (v62 & 1) == 0;
  if (v62)
  {
    v64 = 1702195828;
  }

  else
  {
    v64 = 0x65736C6166;
  }

  if (v63)
  {
    v65 = 0xE500000000000000;
  }

  else
  {
    v65 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v64, v65);

  MEMORY[0x1D3890F70](0xD000000000000019, 0x80000001D1EC6050);
  v66 = (*(a2 + 128))(v56, a2);
  v67 = (v66 & 1) == 0;
  if (v66)
  {
    v68 = 1702195828;
  }

  else
  {
    v68 = 0x65736C6166;
  }

  if (v67)
  {
    v69 = 0xE500000000000000;
  }

  else
  {
    v69 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v68, v69);

  MEMORY[0x1D3890F70](0x697463417369202CLL, 0xEF203A6465746176);
  v70 = (*(a2 + 152))(v56, a2);
  v71 = (v70 & 1) == 0;
  if (v70)
  {
    v72 = 1702195828;
  }

  else
  {
    v72 = 0x65736C6166;
  }

  if (v71)
  {
    v73 = 0xE500000000000000;
  }

  else
  {
    v73 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v72, v73);

  return v85;
}

uint64_t sub_1D1C78A48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646C40, &unk_1D1E825E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for StaticMatterDevice();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  ActionMatterDevice.mainActionEndpoint.getter(v3);
  v9 = type metadata accessor for ActionEndpoint();
  if ((*(*(v9 - 8) + 48))(v3, 1, v9) == 1)
  {
    sub_1D1741A30(v7, &qword_1EC643650, &qword_1D1E71D40);
    sub_1D1741A30(v3, &qword_1EC646C40, &unk_1D1E825E0);
    return 0;
  }

  else
  {
    v11 = ActionEndpoint.statusString(with:associatedMatterDevice:)();
    sub_1D1741A30(v7, &qword_1EC643650, &qword_1D1E71D40);
    sub_1D1C80150(v3, type metadata accessor for ActionEndpoint);
    return v11;
  }
}

uint64_t sub_1D1C78C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, char *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - v8;
  v10 = type metadata accessor for StaticMatterDevice();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = a4(a1, v9);
  sub_1D1741A30(v9, &qword_1EC643650, &qword_1D1E71D40);
  return v11;
}

uint64_t sub_1D1C78D3C(char *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  (*(*(a2 - 8) + 56))(&v10 - v6, 1, 1, a2);
  v8 = StaticMatterDevice.statusString(with:associatedMatterDevice:)(a1);
  sub_1D1741A30(v7, &qword_1EC643650, &qword_1D1E71D40);
  return v8;
}

uint64_t sub_1D1C78E2C()
{
  sub_1D17419CC(*v0 + 16, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 96))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1D1C78EAC(uint64_t a1, uint64_t a2)
{
  if (*(v2 + *(a2 + 60)) == 2)
  {
    return static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EC64E0);
  }

  else
  {
    return 0;
  }
}

uint64_t TileInfoBearer.cameraProfile.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for StaticCameraProfile();
  v7 = swift_dynamicCast();
  return (*(*(v6 - 8) + 56))(a2, v7 ^ 1u, 1, v6);
}

uint64_t TileInfoBearer.statusString(for:associatedMatterDevice:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for StatusStrings.Options();
  v12 = (v11 - 8);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  v16 = v12[13];
  v17 = sub_1D1E669FC();
  (*(*(v17 - 8) + 56))(&v15[v16], 1, 1, v17);
  *v15 = 65793;
  v15[4] = a1;
  *(v15 + 5) = 0;
  v15[v12[14]] = 2;
  v18 = &v15[v12[15]];
  v18[4] = 0;
  *v18 = 2;
  v19 = type metadata accessor for StaticMatterDevice();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v20 = (*(a4 + 192))(v15, v10, a3, a4);
  sub_1D1741A30(v10, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1C80150(v15, type metadata accessor for StatusStrings.Options);
  return v20;
}

uint64_t TileInfoBearer.primaryStaticService.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v75 = type metadata accessor for StaticService(0);
  v5 = *(v75 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v66 = *(v74 - 8);
  v9 = *(v66 + 64);
  v10 = MEMORY[0x1EEE9AC00](v74);
  v72 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v73 = &v59 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v67 = &v59 - v18;
  v19 = type metadata accessor for StaticAccessory(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v69 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v59 - v24;
  v26 = *(a1 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v29 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v29, v2, a1);
  if (swift_dynamicCast())
  {
    v75 = v77;
    v76 = v77;
    sub_1D1BA89F0(a2);

    return (*(v26 + 8))(v29, a1);
  }

  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      sub_1D1C7FC04(v8, a2, type metadata accessor for StaticService);
      (*(v5 + 56))(a2, 0, 1, v75);
    }

    else
    {
      (*(v5 + 56))(a2, 1, 1, v75);
    }

    return (*(v26 + 8))(v29, a1);
  }

  v60 = v29;
  v68 = v5;
  v61 = a2;
  v62 = a1;
  v30 = v69;
  sub_1D1C7FC04(v25, v69, type metadata accessor for StaticAccessory);
  v31 = *(v30 + *(v19 + 80));
  v32 = v31 + 64;
  v33 = 1 << *(v31 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v31 + 64);
  v36 = (v33 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v38 = 0;
  v63 = v31 + 64;
  v64 = v31;
  v65 = v26;
  if (v35)
  {
    while (1)
    {
      v39 = v75;
      v40 = v38;
LABEL_12:
      v41 = __clz(__rbit64(v35)) | (v40 << 6);
      v42 = *(v31 + 48);
      v43 = sub_1D1E66A7C();
      v44 = *(v43 - 8);
      v70 = v43;
      v71 = v44;
      (*(v44 + 16))(v15, v42 + *(v44 + 72) * v41, v43);
      v45 = *(v31 + 56) + *(v68 + 72) * v41;
      v46 = v74;
      sub_1D1C3EB34(v45, &v15[*(v74 + 48)], type metadata accessor for StaticService);
      v47 = v15;
      v48 = v15;
      v49 = v73;
      sub_1D1741A90(v48, v73, &qword_1EC642DB0, &unk_1D1E6F360);
      v50 = v72;
      sub_1D1741C08(v49, v72, &qword_1EC642DB0, &unk_1D1E6F360);
      v51 = v50 + *(v46 + 48);
      LODWORD(v46) = *(v51 + *(v39 + 24));
      sub_1D1C80150(v51, type metadata accessor for StaticService);
      (*(v71 + 8))(v50, v70);
      if (v46 == 1)
      {
        break;
      }

      v35 &= v35 - 1;
      result = sub_1D1741A30(v49, &qword_1EC642DB0, &unk_1D1E6F360);
      v38 = v40;
      v15 = v47;
      v31 = v64;
      v26 = v65;
      v32 = v63;
      if (!v35)
      {
        goto LABEL_8;
      }
    }

    sub_1D1C80150(v69, type metadata accessor for StaticAccessory);

    v53 = v67;
    sub_1D1741A90(v49, v67, &qword_1EC642DB0, &unk_1D1E6F360);
    v52 = v66;
    v54 = v74;
    (*(v66 + 56))(v53, 0, 1, v74);
    v26 = v65;
LABEL_18:

    v55 = (*(v52 + 48))(v53, 1, v54);
    v56 = v61;
    a1 = v62;
    v57 = v68;
    v29 = v60;
    if (v55 == 1)
    {
      sub_1D1741A30(v53, &qword_1EC643C68, &unk_1D1E764C0);
      (*(v57 + 56))(v56, 1, 1, v75);
    }

    else
    {
      sub_1D1C7FC04(v53 + *(v54 + 48), v61, type metadata accessor for StaticService);
      (*(v57 + 56))(v56, 0, 1, v75);
      v58 = sub_1D1E66A7C();
      (*(*(v58 - 8) + 8))(v53, v58);
    }

    return (*(v26 + 8))(v29, a1);
  }

LABEL_8:
  while (1)
  {
    v40 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v40 >= v36)
    {
      sub_1D1C80150(v69, type metadata accessor for StaticAccessory);

      v52 = v66;
      v53 = v67;
      v54 = v74;
      (*(v66 + 56))(v67, 1, 1, v74);
      goto LABEL_18;
    }

    v35 = *(v32 + 8 * v40);
    ++v38;
    if (v35)
    {
      v39 = v75;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t TileInfoBearer.tileStatusStringIconSymbolSuffix.getter(uint64_t a1)
{
  v72 = type metadata accessor for StaticService(0);
  v2 = *(*(v72 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v72);
  v69 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v71 = &v68 - v5;
  v75 = type metadata accessor for StaticMediaSystem();
  v6 = *(*(v75 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v75);
  v70 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v68 - v9;
  v79 = type metadata accessor for StaticMediaProfile();
  v10 = *(*(v79 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v79);
  v73 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v68 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v76 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v68 - v18;
  v19 = type metadata accessor for StaticMatterDevice();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v80 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v68 - v23;
  v25 = type metadata accessor for StaticServiceGroup();
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v68 - v30;
  v32 = type metadata accessor for StaticAccessory(0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v68 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v68 - v38;
  v40 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v42 = &v68 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v43;
  (*(v43 + 16))(v42, v81, a1);
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      sub_1D1C7FC04(v31, v29, type metadata accessor for StaticServiceGroup);
      v44 = StaticServiceGroup.tileStatusStringIconSymbolSuffix.getter();
      v48 = type metadata accessor for StaticServiceGroup;
LABEL_6:
      v46 = v48;
      v47 = v29;
      goto LABEL_18;
    }

    if (!swift_dynamicCast())
    {
      v58 = v78;
      v59 = v79;
      if (swift_dynamicCast())
      {
        v60 = v58;
        v61 = v73;
        sub_1D1C7FC04(v60, v73, type metadata accessor for StaticMediaProfile);
        v44 = sub_1D1C08924(*(v61 + v59[15]), v61 + v59[25], *(v61 + v59[24]));
        v62 = type metadata accessor for StaticMediaProfile;
      }

      else
      {
        v63 = v74;
        v64 = v75;
        if (!swift_dynamicCast())
        {
          v67 = v71;
          v44 = 0;
          if (!swift_dynamicCast())
          {
            goto LABEL_19;
          }

          v36 = v69;
          sub_1D1C7FC04(v67, v69, type metadata accessor for StaticService);
          v44 = StaticService.tileStatusStringIconSymbolSuffix.getter();
          v45 = type metadata accessor for StaticService;
          goto LABEL_3;
        }

        v65 = v63;
        v61 = v70;
        sub_1D1C7FC04(v65, v70, type metadata accessor for StaticMediaSystem);
        v44 = sub_1D1C08924(*(v61 + v64[13]), v61 + v64[18], *(v61 + v64[17]));
        v62 = type metadata accessor for StaticMediaSystem;
      }

      v46 = v62;
      v47 = v61;
      goto LABEL_18;
    }

    v49 = v24;
    v50 = v80;
    v51 = sub_1D1C7FC04(v49, v80, type metadata accessor for StaticMatterDevice);
    if (*(v50 + *(v19 + 28)) == 1)
    {
      v52 = *(v50 + *(v19 + 56));
      MEMORY[0x1EEE9AC00](v51);
      *(&v68 - 2) = v50;

      v53 = v76;
      sub_1D1746B78(sub_1D18076C8, v52, v76);

      v54 = type metadata accessor for StaticEndpoint();
      v55 = *(v54 - 8);
      v56 = *(v55 + 48);
      if (v56(v53, 1, v54) == 1)
      {

        v29 = v77;
        sub_1D1771D7C(v57, v77);

        if (v56(v53, 1, v54) != 1)
        {
          sub_1D1741A30(v53, &qword_1EC644780, &qword_1D1E91AA0);
        }
      }

      else
      {
        v29 = v77;
        sub_1D1C7FC04(v53, v77, type metadata accessor for StaticEndpoint);
        (*(v55 + 56))(v29, 0, 1, v54);
      }

      if (v56(v29, 1, v54) != 1)
      {
        v44 = StaticEndpoint.tileStatusStringIconSymbolSuffix.getter();
        sub_1D1C80150(v50, type metadata accessor for StaticMatterDevice);
        v48 = type metadata accessor for StaticEndpoint;
        goto LABEL_6;
      }

      sub_1D1C80150(v50, type metadata accessor for StaticMatterDevice);
      sub_1D1741A30(v29, &qword_1EC644780, &qword_1D1E91AA0);
    }

    else
    {
      sub_1D1C80150(v50, type metadata accessor for StaticMatterDevice);
    }

    v44 = 0;
    goto LABEL_19;
  }

  sub_1D1C7FC04(v39, v36, type metadata accessor for StaticAccessory);
  v44 = StaticAccessory.tileStatusStringIconSymbolSuffix.getter();
  v45 = type metadata accessor for StaticAccessory;
LABEL_3:
  v46 = v45;
  v47 = v36;
LABEL_18:
  sub_1D1C80150(v47, v46);
LABEL_19:
  (*(v82 + 8))(v42, a1);
  return v44;
}

uint64_t TileInfoBearer.writeInProgress.getter(uint64_t a1)
{
  v80 = type metadata accessor for StaticServiceGroup();
  v2 = *(*(v80 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v80);
  v79 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v76 - v5;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v7 = *(*(v87 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v87);
  v82 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v86 = &v76 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v83 = &v76 - v12;
  v13 = type metadata accessor for StaticAccessory(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v81 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v76 - v17;
  v19 = type metadata accessor for StaticService(0);
  v85 = *(v19 - 8);
  v20 = *(v85 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v76 - v25;
  v27 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v84 = v29;
  v30 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))();
  if (swift_dynamicCast())
  {
    sub_1D1C7FC04(v26, v23, type metadata accessor for StaticService);
    v31 = sub_1D1C7AAF4();
    sub_1D1C80150(v23, type metadata accessor for StaticService);
LABEL_33:
    (*(v84 + 8))(v30, a1);
    return v31 & 1;
  }

  if (swift_dynamicCast())
  {
    v77 = v30;
    v78 = a1;
    v32 = v81;
    sub_1D1C7FC04(v18, v81, type metadata accessor for StaticAccessory);
    v33 = *(v32 + *(v13 + 80));
    v36 = *(v33 + 64);
    v35 = v33 + 64;
    v34 = v36;
    v37 = 1 << *(*(v32 + *(v13 + 80)) + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & v34;
    v40 = (v37 + 63) >> 6;
    v80 = *(v32 + *(v13 + 80));
    result = swift_bridgeObjectRetain_n();
    v42 = 0;
    while (v39)
    {
      v43 = v42;
LABEL_13:
      v44 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v45 = v44 | (v43 << 6);
      v46 = v80;
      v47 = *(v80 + 48);
      v82 = sub_1D1E66A7C();
      v48 = *(v82 - 1);
      v49 = v83;
      (*(v48 + 16))(v83, v47 + *(v48 + 72) * v45, v82);
      v50 = *(v46 + 56) + *(v85 + 72) * v45;
      v51 = v87;
      sub_1D1C3EB34(v50, v49 + *(v87 + 48), type metadata accessor for StaticService);
      v52 = v86;
      sub_1D1741C08(v49, v86, &qword_1EC642DB0, &unk_1D1E6F360);
      v53 = *(v51 + 48);
      LOBYTE(v51) = sub_1D1C7AAF4();
      sub_1D1741A30(v49, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1C80150(v52 + v53, type metadata accessor for StaticService);
      result = (*(v48 + 8))(v52, v82);
      if (v51)
      {
        v31 = 1;
LABEL_28:
        sub_1D1C80150(v81, type metadata accessor for StaticAccessory);
        goto LABEL_32;
      }
    }

    while (1)
    {
      v43 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v43 >= v40)
      {
        v31 = 0;
        goto LABEL_28;
      }

      v39 = *(v35 + 8 * v43);
      ++v42;
      if (v39)
      {
        v42 = v43;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v54 = v80;
    if (!swift_dynamicCast())
    {
      v31 = 0;
      goto LABEL_33;
    }

    v77 = v30;
    v78 = a1;
    v55 = v79;
    sub_1D1C7FC04(v6, v79, type metadata accessor for StaticServiceGroup);
    v56 = *(v55 + *(v54 + 56));
    v59 = *(v56 + 64);
    v58 = v56 + 64;
    v57 = v59;
    v60 = 1 << *(*(v55 + *(v54 + 56)) + 32);
    v61 = -1;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    v62 = v61 & v57;
    v63 = (v60 + 63) >> 6;
    v81 = *(v55 + *(v54 + 56));
    result = swift_bridgeObjectRetain_n();
    v64 = 0;
    while (v62)
    {
      v65 = v64;
LABEL_25:
      v66 = __clz(__rbit64(v62));
      v62 &= v62 - 1;
      v67 = v66 | (v65 << 6);
      v68 = v81;
      v69 = *(v81 + 48);
      v83 = sub_1D1E66A7C();
      v70 = *(v83 - 1);
      v71 = v82;
      (*(v70 + 16))(v82, v69 + *(v70 + 72) * v67, v83);
      v72 = *(v68 + 56) + *(v85 + 72) * v67;
      v73 = v87;
      sub_1D1C3EB34(v72, v71 + *(v87 + 48), type metadata accessor for StaticService);
      v74 = v86;
      sub_1D1741C08(v71, v86, &qword_1EC642DB0, &unk_1D1E6F360);
      v75 = *(v73 + 48);
      LOBYTE(v73) = sub_1D1C7AAF4();
      sub_1D1741A30(v71, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1C80150(v74 + v75, type metadata accessor for StaticService);
      result = (*(v70 + 8))(v74, v83);
      if (v73)
      {
        v31 = 1;
LABEL_31:
        sub_1D1C80150(v79, type metadata accessor for StaticServiceGroup);
LABEL_32:

        v30 = v77;
        a1 = v78;
        goto LABEL_33;
      }
    }

    while (1)
    {
      v65 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      if (v65 >= v63)
      {
        v31 = 0;
        goto LABEL_31;
      }

      v62 = *(v58 + 8 * v65);
      ++v64;
      if (v62)
      {
        v64 = v65;
        goto LABEL_25;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1C7AAF4()
{
  v1 = type metadata accessor for StaticCharacteristic();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for StaticService(0);
  v7 = *(v0 + *(result + 128));
  v8 = v7[2];
  if (v8)
  {
    v9 = sub_1D18044EC(v7[2], 0);
    v10 = sub_1D1805F54(v26, v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v8, v7);
    v24[1] = v26[4];
    v25 = v10;

    result = sub_1D1716918();
    if (v25 != v8)
    {
      goto LABEL_29;
    }

    v11 = *(v9 + 16);
    if (!v11)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
    v11 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v11)
    {
LABEL_26:
      v23 = 0;
LABEL_27:

      return v23;
    }
  }

  v12 = 0;
  while (v12 < *(v9 + 16))
  {
    sub_1D1C3EB34(v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v12, v5, type metadata accessor for StaticCharacteristic);
    v19 = &v5[*(v1 + 32)];
    v20 = *v19;
    v16 = *(v19 + 1);
    v17 = *(v19 + 2);
    v21 = v19[24];
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v13 = v17;
        v14 = v16;

        v15 = v20;
        v16 = v14;
        v17 = v13;
        v18 = 2;
      }

      else
      {
        if (v17 | v16 | v20)
        {
          if (v20 == 1 && (v17 | v16) == 0)
          {
            v15 = 1;
          }

          else
          {
            v15 = 2;
          }
        }

        else
        {
          v15 = 0;
        }

        v16 = 0;
        v17 = 0;
        v18 = 3;
      }

      goto LABEL_8;
    }

    if (!v21)
    {
      v15 = v20;
      v18 = 0;
LABEL_8:
      sub_1D1757A60(v15, v16, v17, v18);
      sub_1D1757A60(0, 0, 0, 1);
      result = sub_1D1C80150(v5, type metadata accessor for StaticCharacteristic);
      goto LABEL_9;
    }

    v23 = 1;
    sub_1D1757A60(v20, v16, v17, 1);
    sub_1D1757A60(0, 0, 0, 1);
    result = sub_1D1C80150(v5, type metadata accessor for StaticCharacteristic);
    if ((v20 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_9:
    if (v11 == ++v12)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t TileInfoBearer.uuid.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  sub_1D1E6886C();
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t TileInfoBearer.isAccessoryLike.getter(uint64_t a1)
{
  v3 = type metadata accessor for StaticService(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticAccessory(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v1, a1);
  if (swift_dynamicCast())
  {
    v16 = type metadata accessor for StaticAccessory;
    v17 = v11;
  }

  else
  {
    if (!swift_dynamicCast())
    {
      v18 = 0;
      goto LABEL_7;
    }

    v16 = type metadata accessor for StaticService;
    v17 = v6;
  }

  sub_1D1C80150(v17, v16);
  v18 = 1;
LABEL_7:
  (*(v12 + 8))(v15, a1);
  return v18;
}

BOOL TileInfoBearer.hasError.getter(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for StatusStrings.Options();
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StaticActionSet();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v32 - v18;
  v20 = *(a1 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, v2, a1);
  if (swift_dynamicCast())
  {
    sub_1D1C7FC04(v19, v16, type metadata accessor for StaticActionSet);
    v24 = v16[*(v12 + 60)];
    sub_1D1C80150(v16, type metadata accessor for StaticActionSet);
    v25 = v24 == 2;
  }

  else
  {
    v26 = v8[11];
    v27 = sub_1D1E669FC();
    (*(*(v27 - 8) + 56))(&v11[v26], 1, 1, v27);
    *v11 = 257;
    *(v11 + 2) = 0;
    v11[6] = 0;
    v11[v8[12]] = 2;
    v28 = &v11[v8[13]];
    v28[4] = 0;
    *v28 = 2;
    v29 = type metadata accessor for StaticMatterDevice();
    (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
    (*(v33 + 192))(v11, v7, a1);
    v25 = v30;
    sub_1D1741A30(v7, &qword_1EC643650, &qword_1D1E71D40);
    sub_1D1C80150(v11, type metadata accessor for StatusStrings.Options);
    if (v25)
    {

      v25 = 1;
    }
  }

  (*(v20 + 8))(v23, a1);
  return v25;
}

BOOL TileInfoBearer.hasError(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v6 = type metadata accessor for StatusStrings.Options();
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StaticActionSet();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v29 - v16;
  v18 = *(a2 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, v3, a2);
  if (swift_dynamicCast())
  {
    sub_1D1C7FC04(v17, v14, type metadata accessor for StaticActionSet);
    v22 = v14[*(v10 + 60)];
    sub_1D1C80150(v14, type metadata accessor for StaticActionSet);
    v23 = v22 == 2;
  }

  else
  {
    v24 = v6[11];
    v25 = sub_1D1E669FC();
    (*(*(v25 - 8) + 56))(&v9[v24], 1, 1, v25);
    *v9 = 257;
    *(v9 + 2) = 0;
    v9[6] = 0;
    v9[v6[12]] = 2;
    v26 = &v9[v6[13]];
    v26[4] = 0;
    *v26 = 2;
    (*(a3 + 192))(v9, v30, a2, a3);
    v23 = v27;
    sub_1D1C80150(v9, type metadata accessor for StatusStrings.Options);
    if (v23)
    {

      v23 = 1;
    }
  }

  (*(v18 + 8))(v21, a2);
  return v23;
}

uint64_t static HomeState.toggleAll(_:)(uint64_t a1)
{
  v1[49] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646080, &qword_1D1E7E488) - 8) + 64) + 15;
  v1[50] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CC40, &unk_1D1EAADA0) - 8) + 64) + 15;
  v1[51] = swift_task_alloc();
  v4 = type metadata accessor for StaticServiceGroup();
  v1[52] = v4;
  v5 = *(v4 - 8);
  v1[53] = v5;
  v6 = *(v5 + 64) + 15;
  v1[54] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260) - 8) + 64) + 15;
  v1[55] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40) - 8) + 64) + 15;
  v1[56] = swift_task_alloc();
  v9 = type metadata accessor for StaticAccessory(0);
  v1[57] = v9;
  v10 = *(v9 - 8);
  v1[58] = v10;
  v11 = *(v10 + 64) + 15;
  v1[59] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0) - 8) + 64) + 15;
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v13 = type metadata accessor for StaticService(0);
  v1[63] = v13;
  v14 = *(v13 - 8);
  v1[64] = v14;
  v15 = *(v14 + 64) + 15;
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8) + 64) + 15;
  v1[70] = swift_task_alloc();
  v17 = sub_1D1E66A7C();
  v1[71] = v17;
  v18 = *(v17 - 8);
  v1[72] = v18;
  v19 = *(v18 + 64) + 15;
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1C7BA40, 0, 0);
}

uint64_t sub_1D1C7BA40()
{
  v1 = *(v0 + 392);
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 344) = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + 16);
  *(v0 + 632) = v3;
  if (v3)
  {
    v4 = *(v0 + 576);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 800) = v6;
    *(v0 + 640) = *(v4 + 56);
    *(v0 + 648) = v5;
    *(v0 + 656) = 0;
    v5(*(v0 + 624), v1 + ((v6 + 32) & ~v6), *(v0 + 568));
    if (qword_1EE07AF78 != -1)
    {
LABEL_53:
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EE07AF80);
    v7 = byte_1EE07AF84;
    os_unfair_lock_unlock(&dword_1EE07AF80);
    if (v7 == 2 || (v7 & 1) == 0)
    {
      type metadata accessor for HomeState.Stream();
      swift_allocObject();
      v8 = HomeState.Stream.init()();
    }

    else
    {
      if (qword_1EC642308 != -1)
      {
        swift_once();
      }

      sub_1D1E693FC();
      v8 = *(v0 + 384);
      if (!v8)
      {
        if (qword_1EC642310 != -1)
        {
          swift_once();
        }

        os_unfair_lock_lock(&dword_1EC649BC0);
        if (off_1EC649BC8)
        {
          v8 = off_1EC649BC8;
        }

        else
        {
          type metadata accessor for HomeState.Stream();
          swift_allocObject();
          off_1EC649BC8 = HomeState.Stream.init()();
          v8 = off_1EC649BC8;
        }

        os_unfair_lock_unlock(&dword_1EC649BC0);
      }
    }

    *(v0 + 664) = v8[3];

    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v9 = qword_1EC64ABE8;
    v10 = sub_1D1C7C044;
  }

  else
  {
    *(v0 + 672) = v2;
    v13 = sub_1D18D7C70(v2);
    *(v0 + 272) = v13;
    *(v0 + 280) = 0;
    *(v0 + 288) = 2;
    v14 = *(v2 + 16);
    *(v0 + 680) = v14;
    if (!v14)
    {
      v21 = v13;

      v22 = 0;
      v23 = 2;
LABEL_27:
      *(v0 + 784) = _s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0();
      *(v0 + 296) = v21;
      *(v0 + 304) = v22;
      *(v0 + 312) = v23;
      v24 = swift_task_alloc();
      *(v0 + 792) = v24;
      *v24 = v0;
      v24[1] = sub_1D1C7E51C;
      v25 = *(v0 + 400);

      return HomeState.Stream.write(characteristicValueSet:timeout:)(v25, (v0 + 296), 0, 1);
    }

    v15 = 0;
    *(v0 + 804) = *(*(v0 + 512) + 80);
    while (1)
    {
      *(v0 + 696) = v15;
      *(v0 + 688) = 0;
      v16 = *(v0 + 672);
      if (v15 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_53;
      }

      v17 = *(v0 + 520);
      v18 = *(v0 + 504);
      sub_1D1C3EB34(v16 + ((*(v0 + 804) + 32) & ~*(v0 + 804)) + *(*(v0 + 512) + 72) * v15, v17, type metadata accessor for StaticService);
      v19 = *(v17 + *(v18 + 104));
      if (v19 <= 0x30)
      {
        if (((1 << v19) & 0x1940000320008) != 0)
        {
          v27 = 3;
          goto LABEL_33;
        }

        if (((1 << v19) & 0x20410010000) != 0)
        {
          v27 = 105;
          goto LABEL_33;
        }

        if (((1 << v19) & 0x4080000000) != 0)
        {
          break;
        }
      }

      sub_1D1C80150(*(v0 + 520), type metadata accessor for StaticService);
      v15 = *(v0 + 696) + 1;
      if (v15 == *(v0 + 680))
      {
        v20 = *(v0 + 672);

        v21 = *(v0 + 272);
        v22 = *(v0 + 280);
        v23 = *(v0 + 288);
        goto LABEL_27;
      }
    }

    v27 = 84;
LABEL_33:
    *(v0 + 808) = v27;
    if (qword_1EE07AF78 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EE07AF80);
    v28 = byte_1EE07AF84;
    os_unfair_lock_unlock(&dword_1EE07AF80);
    if (v28 == 2 || (v28 & 1) == 0)
    {
      goto LABEL_46;
    }

    if (qword_1EC642308 != -1)
    {
      swift_once();
    }

    sub_1D1E693FC();
    v29 = *(v0 + 352);
    if (!v29)
    {
      if (qword_1EC642310 != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&dword_1EC649BC0);
      v29 = off_1EC649BC8;

      os_unfair_lock_unlock(&dword_1EC649BC0);
      if (!v29)
      {
LABEL_46:
        *(v0 + 728) = sub_1D1E67E1C();
        *(v0 + 736) = sub_1D1E67E0C();
        v30 = sub_1D1E67D4C();
        v32 = v31;
        v11 = sub_1D1C7DD04;
        v9 = v30;
        v12 = v32;
        goto LABEL_47;
      }
    }

    *(v0 + 704) = v29;
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v9 = qword_1EC64ABE8;
    v10 = sub_1D1C7CFF0;
  }

  v11 = v10;
  v12 = 0;
LABEL_47:

  return MEMORY[0x1EEE6DFA0](v11, v9, v12);
}

uint64_t sub_1D1C7C044()
{
  v1 = *(v0 + 664);
  HomeState.AllHomesModel.currentStateSnapshot.getter(*(v0 + 560));

  return MEMORY[0x1EEE6DFA0](sub_1D1C7C0B8, 0, 0);
}

uint64_t sub_1D1C7C0B8()
{
  v1 = *(v0 + 560);
  v2 = type metadata accessor for StateSnapshot(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1D1741A30(v1, &unk_1EC649E30, &unk_1D1E91250);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
  }

  else
  {
    StateSnapshot.tileInfo(for:)(*(v0 + 624), (v0 + 16));
    sub_1D1C80150(v1, type metadata accessor for StateSnapshot);
  }

  sub_1D1741C08(v0 + 16, v0 + 56, &qword_1EC643668, &qword_1D1E71D60);
  v3 = *(v0 + 504);
  v4 = *(v0 + 512);
  v5 = *(v0 + 496);
  if (!*(v0 + 80))
  {
    sub_1D1741A30(v0 + 56, &qword_1EC643668, &qword_1D1E71D60);
    v7 = *(v4 + 56);
    v7(v5, 1, 1, v3);
LABEL_12:
    sub_1D1741A30(*(v0 + 496), &qword_1EC6436F0, &qword_1D1E99BC0);
    sub_1D1741C08(v0 + 16, v0 + 96, &qword_1EC643668, &qword_1D1E71D60);
    v19 = *(v0 + 456);
    v20 = *(v0 + 464);
    v21 = *(v0 + 448);
    if (*(v0 + 120))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
      v22 = swift_dynamicCast();
      (*(v20 + 56))(v21, v22 ^ 1u, 1, v19);
      if ((*(v20 + 48))(v21, 1, v19) != 1)
      {
        v23 = *(v0 + 576);
        v24 = *(v0 + 568);
        v25 = *(v0 + 472);
        v26 = *(v0 + 456);
        v27 = *(v0 + 440);
        sub_1D1C7FC04(*(v0 + 448), v25, type metadata accessor for StaticAccessory);
        sub_1D1741C08(v25 + *(v26 + 88), v27, &qword_1EC642590, qword_1D1E71260);
        if ((*(v23 + 48))(v27, 1, v24) == 1)
        {
          sub_1D1741A30(*(v0 + 440), &qword_1EC642590, qword_1D1E71260);
        }

        else
        {
          v49 = *(v0 + 472);
          v50 = *(v0 + 456);
          (*(*(v0 + 576) + 32))(*(v0 + 616), *(v0 + 440), *(v0 + 568));
          v51 = *(v49 + *(v50 + 80));
          v52 = *(v0 + 616);
          if (*(v51 + 16))
          {

            v53 = sub_1D1742188(v52);
            v54 = *(v0 + 616);
            v55 = *(v0 + 576);
            v56 = *(v0 + 568);
            if (v57)
            {
              sub_1D1C3EB34(*(v51 + 56) + *(*(v0 + 512) + 72) * v53, *(v0 + 480), type metadata accessor for StaticService);
              (*(v55 + 8))(v54, v56);

              v58 = 0;
LABEL_30:
              v59 = *(v0 + 504);
              v60 = *(v0 + 512);
              v62 = *(v0 + 480);
              v61 = *(v0 + 488);
              v7(v62, v58, 1, v59);
              sub_1D1741A90(v62, v61, &qword_1EC6436F0, &qword_1D1E99BC0);
              if ((*(v60 + 48))(v61, 1, v59) != 1)
              {
                v64 = *(v0 + 536);
                v65 = *(v0 + 528);
                sub_1D1C7FC04(*(v0 + 488), v64, type metadata accessor for StaticService);
                sub_1D1C3EB34(v64, v65, type metadata accessor for StaticService);
                v10 = *(v0 + 344);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v10 = sub_1D177D048(0, v10[2] + 1, 1, v10);
                }

                v67 = v10[2];
                v66 = v10[3];
                if (v67 >= v66 >> 1)
                {
                  v10 = sub_1D177D048(v66 > 1, v67 + 1, 1, v10);
                }

                v68 = *(v0 + 624);
                v69 = *(v0 + 576);
                v70 = *(v0 + 568);
                v16 = *(v0 + 528);
                v71 = *(v0 + 512);
                v72 = *(v0 + 472);
                sub_1D1C80150(*(v0 + 536), type metadata accessor for StaticService);
                sub_1D1C80150(v72, type metadata accessor for StaticAccessory);
                sub_1D1741A30(v0 + 16, &qword_1EC643668, &qword_1D1E71D60);
                (*(v69 + 8))(v68, v70);
                v10[2] = v67 + 1;
                v18 = v10 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v67;
                goto LABEL_37;
              }

              v63 = *(v0 + 488);
              sub_1D1C80150(*(v0 + 472), type metadata accessor for StaticAccessory);
              v29 = &qword_1EC6436F0;
              v30 = &qword_1D1E99BC0;
              v28 = v63;
LABEL_18:
              sub_1D1741A30(v28, v29, v30);
              sub_1D1741C08(v0 + 16, v0 + 136, &qword_1EC643668, &qword_1D1E71D60);
              if (*(v0 + 160))
              {
                v31 = *(v0 + 416);
                v32 = *(v0 + 424);
                v33 = *(v0 + 408);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
                v34 = swift_dynamicCast();
                (*(v32 + 56))(v33, v34 ^ 1u, 1, v31);
                v35 = (*(v32 + 48))(v33, 1, v31);
                v36 = *(v0 + 624);
                v37 = *(v0 + 576);
                v38 = *(v0 + 568);
                if (v35 != 1)
                {
                  v45 = *(v0 + 432);
                  v46 = *(v0 + 416);
                  sub_1D1C7FC04(*(v0 + 408), v45, type metadata accessor for StaticServiceGroup);
                  v47 = *(v45 + *(v46 + 56));

                  sub_1D17A5D28(v48);
                  sub_1D1741A30(v0 + 16, &qword_1EC643668, &qword_1D1E71D60);
                  (*(v37 + 8))(v36, v38);
                  sub_1D1C80150(v45, type metadata accessor for StaticServiceGroup);
                  goto LABEL_38;
                }

                sub_1D1741A30(v0 + 16, &qword_1EC643668, &qword_1D1E71D60);
                (*(v37 + 8))(v36, v38);
              }

              else
              {
                v39 = *(v0 + 624);
                v40 = *(v0 + 576);
                v41 = *(v0 + 568);
                v42 = *(v0 + 416);
                v43 = *(v0 + 424);
                v44 = *(v0 + 408);
                sub_1D1741A30(v0 + 16, &qword_1EC643668, &qword_1D1E71D60);
                (*(v40 + 8))(v39, v41);
                sub_1D1741A30(v0 + 136, &qword_1EC643668, &qword_1D1E71D60);
                (*(v43 + 56))(v44, 1, 1, v42);
              }

              sub_1D1741A30(*(v0 + 408), &qword_1EC64CC40, &unk_1D1EAADA0);
              goto LABEL_38;
            }

            (*(v55 + 8))(v54, v56);
          }

          else
          {
            (*(*(v0 + 576) + 8))(*(v0 + 616), *(v0 + 568));
          }
        }

        v58 = 1;
        goto LABEL_30;
      }
    }

    else
    {
      sub_1D1741A30(v0 + 96, &qword_1EC643668, &qword_1D1E71D60);
      (*(v20 + 56))(v21, 1, 1, v19);
    }

    v28 = *(v0 + 448);
    v29 = &qword_1EC6436C8;
    v30 = &unk_1D1E97C40;
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  v6 = swift_dynamicCast();
  v7 = *(v4 + 56);
  v7(v5, v6 ^ 1u, 1, v3);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    goto LABEL_12;
  }

  v8 = *(v0 + 552);
  v9 = *(v0 + 544);
  sub_1D1C7FC04(*(v0 + 496), v8, type metadata accessor for StaticService);
  sub_1D1C3EB34(v8, v9, type metadata accessor for StaticService);
  v10 = *(v0 + 344);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1D177D048(0, v10[2] + 1, 1, v10);
  }

  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1D177D048(v11 > 1, v12 + 1, 1, v10);
  }

  v13 = *(v0 + 624);
  v14 = *(v0 + 576);
  v15 = *(v0 + 568);
  v16 = *(v0 + 544);
  v17 = *(v0 + 512);
  sub_1D1C80150(*(v0 + 552), type metadata accessor for StaticService);
  sub_1D1741A30(v0 + 16, &qword_1EC643668, &qword_1D1E71D60);
  (*(v14 + 8))(v13, v15);
  v10[2] = v12 + 1;
  v18 = v10 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v12;
LABEL_37:
  sub_1D1C7FC04(v16, v18, type metadata accessor for StaticService);
  *(v0 + 344) = v10;
LABEL_38:
  v73 = *(v0 + 656) + 1;
  if (v73 == *(v0 + 632))
  {
    v74 = *(v0 + 344);
    *(v0 + 672) = v74;
    v75 = sub_1D18D7C70(MEMORY[0x1E69E7CC0]);
    *(v0 + 272) = v75;
    *(v0 + 280) = 0;
    *(v0 + 288) = 2;
    v76 = *(v74 + 16);
    *(v0 + 680) = v76;
    if (!v76)
    {
      v83 = v75;

      v84 = 0;
      v85 = 2;
LABEL_64:
      *(v0 + 784) = _s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0();
      *(v0 + 296) = v83;
      *(v0 + 304) = v84;
      *(v0 + 312) = v85;
      v93 = swift_task_alloc();
      *(v0 + 792) = v93;
      *v93 = v0;
      v93[1] = sub_1D1C7E51C;
      v94 = *(v0 + 400);

      return HomeState.Stream.write(characteristicValueSet:timeout:)(v94, (v0 + 296), 0, 1);
    }

    v77 = 0;
    *(v0 + 804) = *(*(v0 + 512) + 80);
    while (1)
    {
      *(v0 + 696) = v77;
      *(v0 + 688) = 0;
      v78 = *(v0 + 672);
      if (v77 >= *(v78 + 16))
      {
        __break(1u);
        goto LABEL_90;
      }

      v79 = *(v0 + 520);
      v80 = *(v0 + 504);
      sub_1D1C3EB34(v78 + ((*(v0 + 804) + 32) & ~*(v0 + 804)) + *(*(v0 + 512) + 72) * v77, v79, type metadata accessor for StaticService);
      v81 = *(v79 + *(v80 + 104));
      if (v81 <= 0x30)
      {
        if (((1 << v81) & 0x1940000320008) != 0)
        {
          v96 = 3;
          goto LABEL_70;
        }

        if (((1 << v81) & 0x20410010000) != 0)
        {
          v96 = 105;
          goto LABEL_70;
        }

        if (((1 << v81) & 0x4080000000) != 0)
        {
          break;
        }
      }

      sub_1D1C80150(*(v0 + 520), type metadata accessor for StaticService);
      v77 = *(v0 + 696) + 1;
      if (v77 == *(v0 + 680))
      {
        v82 = *(v0 + 672);

        v83 = *(v0 + 272);
        v84 = *(v0 + 280);
        v85 = *(v0 + 288);
        goto LABEL_64;
      }
    }

    v96 = 84;
LABEL_70:
    *(v0 + 808) = v96;
    if (qword_1EE07AF78 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EE07AF80);
    v97 = byte_1EE07AF84;
    os_unfair_lock_unlock(&dword_1EE07AF80);
    if (v97 == 2 || (v97 & 1) == 0)
    {
      goto LABEL_83;
    }

    if (qword_1EC642308 != -1)
    {
      swift_once();
    }

    sub_1D1E693FC();
    v98 = *(v0 + 352);
    if (!v98)
    {
      if (qword_1EC642310 != -1)
      {
        swift_once();
      }

      os_unfair_lock_lock(&dword_1EC649BC0);
      v98 = off_1EC649BC8;

      os_unfair_lock_unlock(&dword_1EC649BC0);
      if (!v98)
      {
LABEL_83:
        *(v0 + 728) = sub_1D1E67E1C();
        *(v0 + 736) = sub_1D1E67E0C();
        v99 = sub_1D1E67D4C();
        v101 = v100;
        v91 = sub_1D1C7DD04;
        v89 = v99;
        v92 = v101;
        goto LABEL_84;
      }
    }

    *(v0 + 704) = v98;
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v89 = qword_1EC64ABE8;
    v90 = sub_1D1C7CFF0;
  }

  else
  {
    *(v0 + 656) = v73;
    v86 = *(v0 + 576) + 16;
    (*(v0 + 648))(*(v0 + 624), *(v0 + 392) + ((*(v0 + 800) + 32) & ~*(v0 + 800)) + *(v0 + 640) * v73, *(v0 + 568));
    if (qword_1EE07AF78 != -1)
    {
LABEL_90:
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EE07AF80);
    v87 = byte_1EE07AF84;
    os_unfair_lock_unlock(&dword_1EE07AF80);
    if (v87 == 2 || (v87 & 1) == 0)
    {
      type metadata accessor for HomeState.Stream();
      swift_allocObject();
      v88 = HomeState.Stream.init()();
    }

    else
    {
      if (qword_1EC642308 != -1)
      {
        swift_once();
      }

      sub_1D1E693FC();
      v88 = *(v0 + 384);
      if (!v88)
      {
        if (qword_1EC642310 != -1)
        {
          swift_once();
        }

        os_unfair_lock_lock(&dword_1EC649BC0);
        if (off_1EC649BC8)
        {
          v88 = off_1EC649BC8;
        }

        else
        {
          type metadata accessor for HomeState.Stream();
          swift_allocObject();
          off_1EC649BC8 = HomeState.Stream.init()();
          v88 = off_1EC649BC8;
        }

        os_unfair_lock_unlock(&dword_1EC649BC0);
      }
    }

    *(v0 + 664) = v88[3];

    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v89 = qword_1EC64ABE8;
    v90 = sub_1D1C7C044;
  }

  v91 = v90;
  v92 = 0;
LABEL_84:

  return MEMORY[0x1EEE6DFA0](v91, v89, v92);
}

uint64_t sub_1D1C7CFF0()
{
  v45 = v0;
  v3 = v0[88];
  swift_beginAccess();
  v4 = *(v3 + 64);
  if (!v4)
  {
    v11 = v0[86];
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  v5 = [v4 homes];
  sub_1D1821898();
  v6 = sub_1D1E67C1C();

  if (v6 >> 62)
  {
LABEL_37:
    v40 = sub_1D1E6873C();
    if (!v40)
    {
      goto LABEL_43;
    }

    v41 = v40;
    v7 = sub_1D1808600(v40, 0);

    sub_1D18D2FC0(v7 + 32, v41, v6);
    v43 = v42;

    if (v43 != v41)
    {
      __break(1u);
      goto LABEL_40;
    }
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  while (1)
  {
    v8 = v0[86];
    v0[45] = v7;
    sub_1D1747DDC(v0 + 45);
    if (v8)
    {
      break;
    }

    v11 = 0;
    v6 = v0[45];
LABEL_10:
    v0[89] = v11;
    v12 = v0[75];
    v13 = v0[71];
    v14 = v0[65];
    v15 = *(v0[72] + 16);
    v15(v0[76], v14, v13);
    v15(v12, v14, v13);
    v1 = v6 & 0xFFFFFFFFFFFFFF8;
    v2 = v6 >> 62;
    if (v6 >> 62)
    {
LABEL_40:
      v16 = sub_1D1E6873C();
    }

    else
    {
      v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = 0;
    v18 = v6 & 0xC000000000000001;
    while (v16 != v17)
    {
      if (v18)
      {
        v19 = MEMORY[0x1D3891EF0](v17, v6);
      }

      else
      {
        if (v17 >= *(v1 + 16))
        {
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v19 = *(v6 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = v0[75];
      v44[0] = v19;
      sub_1D1A8B334(v44, v21, v0 + 46);

      v22 = v0[46];
      if (v22)
      {
        v16 = v17;
        break;
      }

      if (__OFADD__(v17++, 1))
      {
        goto LABEL_36;
      }
    }

    if (v2)
    {
      if (v16 == sub_1D1E6873C())
      {
LABEL_31:
        v34 = v0[75];
        v35 = v0[71];
        v36 = *(v0[72] + 8);
        v36(v0[76], v35);

        v36(v34, v35);
        v33 = sub_1D1C7D3BC;
        goto LABEL_32;
      }
    }

    else if (v16 == *(v1 + 16))
    {
      goto LABEL_31;
    }

    if (v18)
    {
      v24 = MEMORY[0x1D3891EF0](v16, v6);
LABEL_28:
      v25 = v24;
      v26 = v0[76];
      v27 = v0[72];
      v28 = v0[71];
      v44[0] = v24;
      sub_1D1A8B334(v44, v26, v0 + 47);
      v29 = *(v27 + 8);
      v29(v26, v28);

      v30 = v0[47];
      v0[90] = v30;
      v31 = v0[75];
      v32 = v0[71];
      if (v30)
      {

        v29(v31, v32);
        v33 = sub_1D1C7D7A4;
LABEL_32:
        v37 = v33;
        v38 = 0;
        v39 = 0;
      }

      else
      {
        v37 = (v29)(v0[75], v0[71]);
        __break(1u);
      }

      return MEMORY[0x1EEE6DFA0](v37, v38, v39);
    }

    if (v16 < *(v1 + 16))
    {
      v24 = *(v6 + 32 + 8 * v16);
      goto LABEL_28;
    }

    __break(1u);
LABEL_43:
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v0[45];
}

uint64_t sub_1D1C7D3BC()
{
  v1 = *(v0 + 704);

  v2 = *(v0 + 712);
  sub_1D1C80150(*(v0 + 520), type metadata accessor for StaticService);
  v3 = *(v0 + 696) + 1;
  if (v3 == *(v0 + 680))
  {
LABEL_2:
    v4 = *(v0 + 672);

    v5 = *(v0 + 272);
    v6 = *(v0 + 280);
    v7 = *(v0 + 288);
    *(v0 + 784) = _s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0();
    *(v0 + 296) = v5;
    *(v0 + 304) = v6;
    *(v0 + 312) = v7;
    v8 = swift_task_alloc();
    *(v0 + 792) = v8;
    *v8 = v0;
    v8[1] = sub_1D1C7E51C;
    v9 = *(v0 + 400);

    return HomeState.Stream.write(characteristicValueSet:timeout:)(v9, (v0 + 296), 0, 1);
  }

  else
  {
    while (1)
    {
      *(v0 + 696) = v3;
      *(v0 + 688) = v2;
      v11 = *(v0 + 672);
      if (v3 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_32;
      }

      v12 = *(v0 + 520);
      v13 = *(v0 + 504);
      sub_1D1C3EB34(v11 + ((*(v0 + 804) + 32) & ~*(v0 + 804)) + *(*(v0 + 512) + 72) * v3, v12, type metadata accessor for StaticService);
      v14 = *(v12 + *(v13 + 104));
      if (v14 <= 0x30)
      {
        if (((1 << v14) & 0x1940000320008) != 0)
        {
          v15 = 3;
          goto LABEL_15;
        }

        if (((1 << v14) & 0x20410010000) != 0)
        {
          v15 = 105;
          goto LABEL_15;
        }

        if (((1 << v14) & 0x4080000000) != 0)
        {
          break;
        }
      }

      sub_1D1C80150(*(v0 + 520), type metadata accessor for StaticService);
      v3 = *(v0 + 696) + 1;
      if (v3 == *(v0 + 680))
      {
        goto LABEL_2;
      }
    }

    v15 = 84;
LABEL_15:
    *(v0 + 808) = v15;
    if (qword_1EE07AF78 == -1)
    {
      goto LABEL_16;
    }

LABEL_32:
    swift_once();
LABEL_16:
    os_unfair_lock_lock(&dword_1EE07AF80);
    v16 = byte_1EE07AF84;
    os_unfair_lock_unlock(&dword_1EE07AF80);
    if (v16 == 2 || (v16 & 1) == 0)
    {
      goto LABEL_27;
    }

    if (qword_1EC642308 != -1)
    {
      swift_once();
    }

    sub_1D1E693FC();
    v17 = *(v0 + 352);
    if (v17)
    {
      goto LABEL_24;
    }

    if (qword_1EC642310 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EC649BC0);
    v17 = off_1EC649BC8;

    os_unfair_lock_unlock(&dword_1EC649BC0);
    if (v17)
    {
LABEL_24:
      *(v0 + 704) = v17;
      if (qword_1EC642358 != -1)
      {
        swift_once();
      }

      v18 = qword_1EC64ABE8;
      v19 = sub_1D1C7CFF0;
      v20 = 0;
    }

    else
    {
LABEL_27:
      *(v0 + 728) = sub_1D1E67E1C();
      *(v0 + 736) = sub_1D1E67E0C();
      v21 = sub_1D1E67D4C();
      v23 = v22;
      v19 = sub_1D1C7DD04;
      v18 = v21;
      v20 = v23;
    }

    return MEMORY[0x1EEE6DFA0](v19, v18, v20);
  }
}

uint64_t sub_1D1C7D7A4()
{
  v1 = *(v0 + 704);

  v2 = *(v0 + 720);
  v3 = *(v0 + 712);
  v4 = *(v0 + 592);
  v5 = *(v0 + 520);
  LOBYTE(v5) = StaticService.isActivated.getter();
  v6 = [v2 uniqueIdentifier];
  sub_1D1E66A5C();

  *(v0 + 176) = (v5 & 1) == 0;
  *(v0 + 200) = MEMORY[0x1E69E6370];
  v7 = *(v0 + 272);
  if (!*(v7 + 16) || (sub_1D1742188(*(v0 + 592)), (v8 & 1) == 0))
  {
    v9 = *(v0 + 592);
    v10 = sub_1D18D7C94(MEMORY[0x1E69E7CC0]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1752B8C(v10, v9, isUniquelyReferenced_nonNull_native);
    *(v0 + 272) = v7;
  }

  (*(*(v0 + 576) + 16))(*(v0 + 584), *(v0 + 592), *(v0 + 568));
  v12 = sub_1D1C76E38((v0 + 208));
  if (*v13)
  {
    v14 = *(v0 + 808);
    sub_1D1741970(v0 + 176, v0 + 240);
    sub_1D1B0CE00(v0 + 240, v14);
  }

  (v12)(v0 + 208, 0);
  v15 = *(v0 + 592);
  v16 = *(v0 + 568);
  v17 = *(v0 + 520);
  v18 = *(*(v0 + 576) + 8);
  v18(*(v0 + 584), v16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));

  v18(v15, v16);
  sub_1D1C80150(v17, type metadata accessor for StaticService);
  v19 = *(v0 + 696) + 1;
  if (v19 == *(v0 + 680))
  {
LABEL_7:
    v20 = *(v0 + 672);

    v21 = *(v0 + 272);
    v22 = *(v0 + 280);
    v23 = *(v0 + 288);
    *(v0 + 784) = _s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0();
    *(v0 + 296) = v21;
    *(v0 + 304) = v22;
    *(v0 + 312) = v23;
    v24 = swift_task_alloc();
    *(v0 + 792) = v24;
    *v24 = v0;
    v24[1] = sub_1D1C7E51C;
    v25 = *(v0 + 400);

    return HomeState.Stream.write(characteristicValueSet:timeout:)(v25, (v0 + 296), 0, 1);
  }

  else
  {
    while (1)
    {
      *(v0 + 696) = v19;
      *(v0 + 688) = v3;
      v27 = *(v0 + 672);
      if (v19 >= *(v27 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      v28 = *(v0 + 520);
      v29 = *(v0 + 504);
      sub_1D1C3EB34(v27 + ((*(v0 + 804) + 32) & ~*(v0 + 804)) + *(*(v0 + 512) + 72) * v19, v28, type metadata accessor for StaticService);
      v30 = *(v28 + *(v29 + 104));
      if (v30 <= 0x30)
      {
        if (((1 << v30) & 0x1940000320008) != 0)
        {
          v31 = 3;
          goto LABEL_20;
        }

        if (((1 << v30) & 0x20410010000) != 0)
        {
          v31 = 105;
          goto LABEL_20;
        }

        if (((1 << v30) & 0x4080000000) != 0)
        {
          break;
        }
      }

      sub_1D1C80150(*(v0 + 520), type metadata accessor for StaticService);
      v19 = *(v0 + 696) + 1;
      if (v19 == *(v0 + 680))
      {
        goto LABEL_7;
      }
    }

    v31 = 84;
LABEL_20:
    *(v0 + 808) = v31;
    if (qword_1EE07AF78 == -1)
    {
      goto LABEL_21;
    }

LABEL_37:
    swift_once();
LABEL_21:
    os_unfair_lock_lock(&dword_1EE07AF80);
    v32 = byte_1EE07AF84;
    os_unfair_lock_unlock(&dword_1EE07AF80);
    if (v32 == 2 || (v32 & 1) == 0)
    {
      goto LABEL_32;
    }

    if (qword_1EC642308 != -1)
    {
      swift_once();
    }

    sub_1D1E693FC();
    v33 = *(v0 + 352);
    if (v33)
    {
      goto LABEL_29;
    }

    if (qword_1EC642310 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EC649BC0);
    v33 = off_1EC649BC8;

    os_unfair_lock_unlock(&dword_1EC649BC0);
    if (v33)
    {
LABEL_29:
      *(v0 + 704) = v33;
      if (qword_1EC642358 != -1)
      {
        swift_once();
      }

      v34 = qword_1EC64ABE8;
      v35 = sub_1D1C7CFF0;
      v36 = 0;
    }

    else
    {
LABEL_32:
      *(v0 + 728) = sub_1D1E67E1C();
      *(v0 + 736) = sub_1D1E67E0C();
      v37 = sub_1D1E67D4C();
      v39 = v38;
      v35 = sub_1D1C7DD04;
      v34 = v37;
      v36 = v39;
    }

    return MEMORY[0x1EEE6DFA0](v35, v34, v36);
  }
}

uint64_t sub_1D1C7DD04()
{
  v1 = *(v0 + 736);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1C7DD9C, 0, 0);
}

uint64_t sub_1D1C7DD9C()
{
  v1 = *(v0 + 728);
  *(v0 + 744) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1C7DE28, v3, v2);
}

uint64_t sub_1D1C7DE28()
{
  v1 = *(v0 + 744);

  *(v0 + 752) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1C7DE9C, 0, 0);
}

uint64_t sub_1D1C7DE9C()
{
  v1 = v0[91];
  v2 = v0[65];
  v0[95] = sub_1D1E66A2C();
  v0[96] = sub_1D1E67E0C();
  v4 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1C7DF34, v4, v3);
}

uint64_t sub_1D1C7DF34()
{
  v1 = v0[96];
  v2 = v0[95];
  v3 = v0[94];

  v0[97] = [v3 serviceFor_];

  return MEMORY[0x1EEE6DFA0](sub_1D1C7DFC8, 0, 0);
}

uint64_t sub_1D1C7DFC8()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 688);
  if (v1)
  {
    v3 = *(v0 + 592);
    v4 = *(v0 + 520);
    LOBYTE(v4) = StaticService.isActivated.getter();
    v5 = [v1 uniqueIdentifier];
    sub_1D1E66A5C();

    *(v0 + 200) = MEMORY[0x1E69E6370];
    *(v0 + 176) = (v4 & 1) == 0;
    v6 = *(v0 + 272);
    if (!*(v6 + 16) || (sub_1D1742188(*(v0 + 592)), (v7 & 1) == 0))
    {
      v8 = *(v0 + 592);
      v9 = sub_1D18D7C94(MEMORY[0x1E69E7CC0]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1D1752B8C(v9, v8, isUniquelyReferenced_nonNull_native);
      *(v0 + 272) = v6;
    }

    (*(*(v0 + 576) + 16))(*(v0 + 584), *(v0 + 592), *(v0 + 568));
    v11 = sub_1D1C76E38((v0 + 208));
    if (*v12)
    {
      v13 = *(v0 + 808);
      sub_1D1741970(v0 + 176, v0 + 240);
      sub_1D1B0CE00(v0 + 240, v13);
    }

    (v11)(v0 + 208, 0);
    v14 = *(v0 + 592);
    v15 = *(v0 + 568);
    v16 = *(v0 + 520);
    v17 = *(*(v0 + 576) + 8);
    v17(*(v0 + 584), v15);
    __swift_destroy_boxed_opaque_existential_1((v0 + 176));

    v17(v14, v15);
  }

  else
  {
    v16 = *(v0 + 520);
  }

  sub_1D1C80150(v16, type metadata accessor for StaticService);
  v18 = *(v0 + 696) + 1;
  if (v18 == *(v0 + 680))
  {
LABEL_10:
    v19 = *(v0 + 672);

    v20 = *(v0 + 272);
    v21 = *(v0 + 280);
    v22 = *(v0 + 288);
    *(v0 + 784) = _s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0();
    *(v0 + 296) = v20;
    *(v0 + 304) = v21;
    *(v0 + 312) = v22;
    v23 = swift_task_alloc();
    *(v0 + 792) = v23;
    *v23 = v0;
    v23[1] = sub_1D1C7E51C;
    v24 = *(v0 + 400);

    return HomeState.Stream.write(characteristicValueSet:timeout:)(v24, (v0 + 296), 0, 1);
  }

  else
  {
    while (1)
    {
      *(v0 + 696) = v18;
      *(v0 + 688) = v2;
      v26 = *(v0 + 672);
      if (v18 >= *(v26 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      v27 = *(v0 + 520);
      v28 = *(v0 + 504);
      sub_1D1C3EB34(v26 + ((*(v0 + 804) + 32) & ~*(v0 + 804)) + *(*(v0 + 512) + 72) * v18, v27, type metadata accessor for StaticService);
      v29 = *(v27 + *(v28 + 104));
      if (v29 <= 0x30)
      {
        if (((1 << v29) & 0x1940000320008) != 0)
        {
          v30 = 3;
          goto LABEL_23;
        }

        if (((1 << v29) & 0x20410010000) != 0)
        {
          v30 = 105;
          goto LABEL_23;
        }

        if (((1 << v29) & 0x4080000000) != 0)
        {
          break;
        }
      }

      sub_1D1C80150(*(v0 + 520), type metadata accessor for StaticService);
      v18 = *(v0 + 696) + 1;
      if (v18 == *(v0 + 680))
      {
        goto LABEL_10;
      }
    }

    v30 = 84;
LABEL_23:
    *(v0 + 808) = v30;
    if (qword_1EE07AF78 == -1)
    {
      goto LABEL_24;
    }

LABEL_40:
    swift_once();
LABEL_24:
    os_unfair_lock_lock(&dword_1EE07AF80);
    v31 = byte_1EE07AF84;
    os_unfair_lock_unlock(&dword_1EE07AF80);
    if (v31 == 2 || (v31 & 1) == 0)
    {
      goto LABEL_35;
    }

    if (qword_1EC642308 != -1)
    {
      swift_once();
    }

    sub_1D1E693FC();
    v32 = *(v0 + 352);
    if (v32)
    {
      goto LABEL_32;
    }

    if (qword_1EC642310 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EC649BC0);
    v32 = off_1EC649BC8;

    os_unfair_lock_unlock(&dword_1EC649BC0);
    if (v32)
    {
LABEL_32:
      *(v0 + 704) = v32;
      if (qword_1EC642358 != -1)
      {
        swift_once();
      }

      v33 = qword_1EC64ABE8;
      v34 = sub_1D1C7CFF0;
      v35 = 0;
    }

    else
    {
LABEL_35:
      *(v0 + 728) = sub_1D1E67E1C();
      *(v0 + 736) = sub_1D1E67E0C();
      v36 = sub_1D1E67D4C();
      v38 = v37;
      v34 = sub_1D1C7DD04;
      v33 = v36;
      v35 = v38;
    }

    return MEMORY[0x1EEE6DFA0](v34, v33, v35);
  }
}

uint64_t sub_1D1C7E51C()
{
  v1 = *v0;
  v2 = *(*v0 + 792);
  v3 = *(*v0 + 784);
  v4 = *(*v0 + 400);
  v7 = *v0;

  v5 = *(v1 + 296);

  sub_1D1741A30(v4, &qword_1EC646080, &qword_1D1E7E488);

  return MEMORY[0x1EEE6DFA0](sub_1D1C7E684, 0, 0);
}

uint64_t sub_1D1C7E684()
{
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[75];
  v5 = v0[74];
  v6 = v0[73];
  v7 = v0[70];
  v8 = v0[69];
  v9 = v0[68];
  v10 = v0[67];
  v13 = v0[66];
  v14 = v0[65];
  v15 = v0[62];
  v16 = v0[61];
  v17 = v0[60];
  v18 = v0[59];
  v19 = v0[56];
  v20 = v0[55];
  v21 = v0[54];
  v22 = v0[51];
  v23 = v0[50];

  v11 = v0[1];

  return v11();
}

uint64_t StateSnapshot.userIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for StateSnapshot(0) + 64));

  return sub_1D1785BE4(v2);
}

uint64_t (*sub_1D1C7E834(uint64_t *a1, uint64_t a2))()
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x68uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = sub_1D1E66A7C();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v7[9] = v9;
  if (v5)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v12 = v11;
  v7[10] = v11;
  v13 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v10 + 16))(v12, a2, v8);
  v7[11] = sub_1D1C7FBA8(v7);
  v7[12] = sub_1D1C7F000(v7 + 4, v12, isUniquelyReferenced_nonNull_native);
  return sub_1D1C7E970;
}

void (*sub_1D1C7E974(uint64_t *a1, unsigned __int16 a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1D1C7FBDC(v6);
  v6[9] = sub_1D1C7F1DC(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1D1C7EA18;
}

void sub_1D1C7EA18(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t (*sub_1D1C7EA78(uint64_t *a1, uint64_t a2))()
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x68uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = sub_1D1E66A7C();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v7[9] = v9;
  if (v5)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v12 = v11;
  v7[10] = v11;
  v13 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v10 + 16))(v12, a2, v8);
  v7[11] = sub_1D1C7FBDC(v7);
  v7[12] = sub_1D1C7F3D4(v7 + 4, v12, isUniquelyReferenced_nonNull_native);
  return sub_1D1C801B8;
}

uint64_t (*sub_1D1C7EBB4(uint64_t *a1, uint64_t a2))()
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x68uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = sub_1D1E66A7C();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v7[9] = v9;
  if (v5)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v12 = v11;
  v7[10] = v11;
  v13 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v10 + 16))(v12, a2, v8);
  v7[11] = sub_1D1C7FBDC(v7);
  v7[12] = sub_1D1C7F584(v7 + 4, v12, isUniquelyReferenced_nonNull_native);
  return sub_1D1C801B8;
}

uint64_t (*sub_1D1C7ECF0(uint64_t *a1, uint64_t a2))()
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x68uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = sub_1D1E66A7C();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v7[9] = v9;
  if (v5)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v12 = v11;
  v7[10] = v11;
  v13 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v10 + 16))(v12, a2, v8);
  v7[11] = sub_1D1C7FBDC(v7);
  v7[12] = sub_1D1C7F734(v7 + 4, v12, isUniquelyReferenced_nonNull_native);
  return sub_1D1C801B8;
}

uint64_t (*sub_1D1C7EE2C(uint64_t *a1, uint64_t a2))()
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x68uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = sub_1D1E66A7C();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v7[9] = v9;
  if (v5)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v12 = v11;
  v7[10] = v11;
  v13 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v10 + 16))(v12, a2, v8);
  v7[11] = sub_1D1C7FBDC(v7);
  v7[12] = sub_1D1C7F8E4(v7 + 4, v12, isUniquelyReferenced_nonNull_native);
  return sub_1D1C801B8;
}

void sub_1D1C7EF68(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_1D1C7F000(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, uint64_t a2)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_1D1E66A7C();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_1D1742188(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_1D1734AF0();
      v15 = v23;
      goto LABEL_14;
    }

    sub_1D1721C88(v20, a3 & 1);
    v24 = *v4;
    v15 = sub_1D1742188(a2);
    if ((v21 & 1) == (v25 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v26 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v26 = 0;
  }

  *v10 = v26;
  return sub_1D1C7F1B0;
}

void (*sub_1D1C7F1DC(uint64_t *a1, unsigned __int16 a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 16) = v3;
  *(v8 + 32) = a2;
  v10 = *v3;
  v11 = sub_1D171D15C(a2);
  *(v9 + 34) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1D1737FB4();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1D1726C68(v16, a3 & 1);
    v20 = *v4;
    v11 = sub_1D171D15C(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_15:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  v22 = 0uLL;
  if (v17)
  {
    v22 = *(*(*v4 + 56) + 16 * v11);
  }

  *v9 = v22;
  return sub_1D1C7F324;
}

void sub_1D1C7F324(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = **a1;
  v4 = *(*a1 + 34);
  v5 = (*a1)[1];
  if (v3)
  {
    v6 = v1[3];
    v7 = *v1[2];
    if (v4)
    {
      *(v7[7] + 16 * v6) = v2;
    }

    else
    {
      sub_1D19DB5A0(v6, *(v1 + 16), v3, v5, v7);
    }
  }

  else if (*(*a1 + 34))
  {
    sub_1D174F8DC(v1[3], *v1[2]);
  }

  v8 = *v1;
  v9 = v1[1];
  sub_1D1C2B374(v3);
  sub_1D1791518(v8);

  free(v1);
}

void (*sub_1D1C7F3D4(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, uint64_t a2)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_1D1E66A7C();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_1D1742188(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_1D1738B78();
      v15 = v23;
      goto LABEL_14;
    }

    sub_1D1728014(v20, a3 & 1);
    v24 = *v4;
    v15 = sub_1D1742188(a2);
    if ((v21 & 1) == (v25 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v26 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v26 = 0;
  }

  *v10 = v26;
  return sub_1D1C7F1B0;
}

void (*sub_1D1C7F584(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, uint64_t a2)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_1D1E66A7C();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_1D1742188(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_1D1738B3C();
      v15 = v23;
      goto LABEL_14;
    }

    sub_1D1727FD8(v20, a3 & 1);
    v24 = *v4;
    v15 = sub_1D1742188(a2);
    if ((v21 & 1) == (v25 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v26 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v26 = 0;
  }

  *v10 = v26;
  return sub_1D1C7F1B0;
}

void (*sub_1D1C7F734(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, uint64_t a2)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_1D1E66A7C();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_1D1742188(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_1D173BFB0();
      v15 = v23;
      goto LABEL_14;
    }

    sub_1D172DC94(v20, a3 & 1);
    v24 = *v4;
    v15 = sub_1D1742188(a2);
    if ((v21 & 1) == (v25 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v26 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v26 = 0;
  }

  *v10 = v26;
  return sub_1D1C7F1B0;
}

void (*sub_1D1C7F8E4(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, uint64_t a2)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_1D1E66A7C();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_1D1742188(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_1D173C234();
      v15 = v23;
      goto LABEL_14;
    }

    sub_1D172E068(v20, a3 & 1);
    v24 = *v4;
    v15 = sub_1D1742188(a2);
    if ((v21 & 1) == (v25 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_1D1E690FC();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v26 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v26 = 0;
  }

  *v10 = v26;
  return sub_1D1C7F1B0;
}

void sub_1D1C7FA94(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = **a1;
  v6 = *(*a1 + 56);
  if (v5)
  {
    v7 = *v4[2];
    v8 = v4[6];
    if ((*a1)[7])
    {
      *(*(v7 + 56) + 8 * v8) = v5;
    }

    else
    {
      v12 = v4[5];
      (*(v4[4] + 16))(v12, v4[1], v4[3]);
      a3(v8, v12, v5, v7);
    }
  }

  else if ((*a1)[7])
  {
    v9 = v4[6];
    v10 = *v4[2];
    (*(v4[4] + 8))(*(v10 + 48) + *(v4[4] + 72) * v9, v4[3]);
    a4(v9, v10);
  }

  v14 = v4[5];
  v15 = *v4;

  free(v14);

  free(v4);
}

uint64_t (*sub_1D1C7FBA8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1D1C7FBD0;
}

uint64_t (*sub_1D1C7FBDC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1D1C801B0;
}

uint64_t sub_1D1C7FC04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t dispatch thunk of TileInfoBearer.toggle()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 200);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D17C4BFC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of TileInfoBearer.set(showInDashboard:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 208);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D17C4CF0;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of TileInfoBearer.set(includeInStatus:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 216);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D17C4BFC;

  return v11(a1, a2, a3);
}

uint64_t sub_1D1C80150(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AccessoryNoResponseContextFlags.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  return sub_1D1E6922C();
}

uint64_t AccessoryNoResponseContextFlags.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D1C802D0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

unint64_t sub_1D1C803C0()
{
  result = qword_1EC64CC48;
  if (!qword_1EC64CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CC48);
  }

  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t Collection<>.sorted(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DashboardSortableData();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436D8, &unk_1D1E71E30);
  v12 = a3;
  v13 = 0;
  v15 = sub_1D18CE91C(sub_1D1C823C0, 0, a2, v11, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v14);
  if (*(v15 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AD0, &qword_1D1E6E818);
    v16 = sub_1D1E68BCC();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC8];
  }

  v44 = v16;
  sub_1D1C84198(v15, 1, &v44);

  v17 = v44;
  v18 = v44[2];
  if (v18)
  {
    v38 = 0;
    v19 = sub_1D1804444(v18, 0);
    v40 = v7;
    v41 = sub_1D18085B4(&v44, v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v18, v17);
    v13 = v45;
    swift_retain_n();
    v39 = a1;

    sub_1D1716918();
    if (v41 != v18)
    {
      __break(1u);
      goto LABEL_24;
    }

    a1 = v39;
    v7 = v40;
    v13 = v38;
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
  }

  v44 = v19;

  sub_1D1C86C80(&v44, a1, sub_1D1D26390);
  if (v13)
  {
LABEL_24:
    swift_bridgeObjectRelease_n();

    __break(1u);
    return result;
  }

  swift_bridgeObjectRelease_n();
  v20 = v44[2];
  if (v20)
  {
    v21 = *(v7 + 80);
    v40 = v44;
    v22 = v44 + ((v21 + 32) & ~v21);
    v23 = v7[9];
    v24 = MEMORY[0x1E69E7CC0];
    v41 = v23;
    do
    {
      sub_1D1C86EA8(v22, v10, type metadata accessor for DashboardSortableData);
      if (v17[2] && (v25 = sub_1D171DC84(v10), (v26 & 1) != 0))
      {
        sub_1D17419CC(v17[7] + 40 * v25, v42);
        sub_1D1C86FC0(v10, type metadata accessor for DashboardSortableData);
        sub_1D16EEE20(v42, &v44);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = sub_1D177F2B8(0, v24[2] + 1, 1, v24);
          v43 = v24;
        }

        v29 = v24[2];
        v28 = v24[3];
        if (v29 >= v28 >> 1)
        {
          v24 = sub_1D177F2B8((v28 > 1), v29 + 1, 1, v24);
          v43 = v24;
        }

        v30 = v45;
        v31 = v46;
        v32 = __swift_mutable_project_boxed_opaque_existential_1(&v44, v45);
        v33 = *(*(v30 - 8) + 64);
        MEMORY[0x1EEE9AC00](v32);
        v35 = &v38 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v36 + 16))(v35);
        sub_1D1D20B74(v29, v35, &v43, v30, v31);
        __swift_destroy_boxed_opaque_existential_1(&v44);
        v23 = v41;
      }

      else
      {
        sub_1D1C86FC0(v10, type metadata accessor for DashboardSortableData);
      }

      v22 += v23;
      --v20;
    }

    while (v20);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v24;
}

{
  v3 = *(a3 + 8);
  return sub_1D1E67ABC();
}

{
  v6 = type metadata accessor for DashboardSortableData();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CC50, &qword_1D1EA2260);
  v12 = a3;
  v13 = 0;
  v15 = sub_1D18CE91C(sub_1D1C82A18, 0, a2, v11, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v14);
  if (*(v15 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A48, &unk_1D1E6E7A0);
    v16 = sub_1D1E68BCC();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC8];
  }

  *&v44 = v16;
  sub_1D1C84678(v15, 1, &v44);

  v17 = v44;
  v18 = *(v44 + 16);
  if (v18)
  {
    v39 = 0;
    v19 = sub_1D1804444(v18, 0);
    v41 = v7;
    v42 = sub_1D18085B4(&v44, v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v18, v17);
    v13 = *(&v45 + 1);
    swift_retain_n();
    v40 = a1;

    sub_1D1716918();
    if (v42 != v18)
    {
      __break(1u);
      goto LABEL_24;
    }

    v7 = v41;
    a1 = v40;
    v13 = v39;
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
  }

  *&v44 = v19;

  sub_1D1C86C80(&v44, a1, sub_1D1D26390);
  if (v13)
  {
LABEL_24:
    swift_bridgeObjectRelease_n();

    __break(1u);
    return result;
  }

  swift_bridgeObjectRelease_n();
  v20 = *(v44 + 16);
  if (v20)
  {
    v21 = v44 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v22 = *(v7 + 72);
    v23 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D1C86EA8(v21, v10, type metadata accessor for DashboardSortableData);
      if (*(v17 + 16) && (v24 = sub_1D171DC84(v10), (v25 & 1) != 0))
      {
        v26 = (*(v17 + 56) + 96 * v24);
        v27 = v26[1];
        v44 = *v26;
        v45 = v27;
        v28 = v26[5];
        v30 = v26[2];
        v29 = v26[3];
        v48 = v26[4];
        v49 = v28;
        v46 = v30;
        v47 = v29;
        sub_1D1741914(&v44, v43);
        sub_1D1C86FC0(v10, type metadata accessor for DashboardSortableData);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D177FD04(0, *(v23 + 2) + 1, 1, v23);
        }

        v32 = *(v23 + 2);
        v31 = *(v23 + 3);
        if (v32 >= v31 >> 1)
        {
          v23 = sub_1D177FD04((v31 > 1), v32 + 1, 1, v23);
        }

        *(v23 + 2) = v32 + 1;
        v33 = &v23[96 * v32];
        v34 = v45;
        *(v33 + 2) = v44;
        *(v33 + 3) = v34;
        v35 = v46;
        v36 = v47;
        v37 = v49;
        *(v33 + 6) = v48;
        *(v33 + 7) = v37;
        *(v33 + 4) = v35;
        *(v33 + 5) = v36;
      }

      else
      {
        sub_1D1C86FC0(v10, type metadata accessor for DashboardSortableData);
      }

      v21 += v22;
      --v20;
    }

    while (v20);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v23;
}

uint64_t type metadata accessor for DashboardSortableData()
{
  result = qword_1EC64CC60;
  if (!qword_1EC64CC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1C8098C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v53 = *(v3 - 8);
  v4 = *(v53 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v58 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v54 = &v50 - v13;
  v14 = type metadata accessor for StaticAccessory(0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C86EA8(v2, v18, type metadata accessor for StaticAccessory);
  v19 = *(v15 + 88);
  v52 = v18;
  v20 = *&v18[v19];
  v21 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 64);
  v25 = (v22 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v27 = 0;
  v59 = v3;
  v56 = v9;
  v57 = v20;
  if (v24)
  {
    while (1)
    {
      v28 = v27;
LABEL_8:
      v29 = __clz(__rbit64(v24)) | (v28 << 6);
      v30 = *(v20 + 48);
      v31 = sub_1D1E66A7C();
      v32 = *(v31 - 8);
      v60 = v31;
      v61 = v32;
      v33 = v55;
      (*(v32 + 16))(v55, v30 + *(v32 + 72) * v29, v31);
      v34 = *(v20 + 56);
      v35 = (type metadata accessor for StaticService(0) - 8);
      v36 = v59;
      sub_1D1C86EA8(v34 + *(*v35 + 72) * v29, v33 + *(v59 + 48), type metadata accessor for StaticService);
      v37 = v56;
      sub_1D1741A90(v33, v56, &qword_1EC642DB0, &unk_1D1E6F360);
      v38 = v58;
      sub_1D1741C08(v37, v58, &qword_1EC642DB0, &unk_1D1E6F360);
      v39 = v38 + *(v36 + 48);
      LODWORD(v35) = *(v39 + v35[8]);
      sub_1D1C86FC0(v39, type metadata accessor for StaticService);
      (*(v61 + 8))(v38, v60);
      if (v35 == 1)
      {
        break;
      }

      v24 &= v24 - 1;
      result = sub_1D1741A30(v37, &qword_1EC642DB0, &unk_1D1E6F360);
      v27 = v28;
      v20 = v57;
      if (!v24)
      {
        goto LABEL_5;
      }
    }

    sub_1D1C86FC0(v52, type metadata accessor for StaticAccessory);

    v41 = v54;
    sub_1D1741A90(v37, v54, &qword_1EC642DB0, &unk_1D1E6F360);
    v40 = v53;
    v42 = *(v53 + 56);
    v43 = v41;
    v44 = 0;
LABEL_12:
    v45 = v59;
    v42(v43, v44, 1, v59);

    if ((*(v40 + 48))(v41, 1, v45) == 1)
    {
      sub_1D1741A30(v41, &qword_1EC643C68, &unk_1D1E764C0);
      v46 = type metadata accessor for StaticService(0);
      return (*(*(v46 - 8) + 56))(v51, 1, 1, v46);
    }

    else
    {
      v47 = v51;
      sub_1D1C86F58(v41 + *(v45 + 48), v51, type metadata accessor for StaticService);
      v48 = type metadata accessor for StaticService(0);
      (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
      v49 = sub_1D1E66A7C();
      return (*(*(v49 - 8) + 8))(v41, v49);
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v25)
      {
        sub_1D1C86FC0(v52, type metadata accessor for StaticAccessory);

        v40 = v53;
        v41 = v54;
        v42 = *(v53 + 56);
        v43 = v54;
        v44 = 1;
        goto LABEL_12;
      }

      v24 = *(v21 + 8 * v28);
      ++v27;
      if (v24)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}