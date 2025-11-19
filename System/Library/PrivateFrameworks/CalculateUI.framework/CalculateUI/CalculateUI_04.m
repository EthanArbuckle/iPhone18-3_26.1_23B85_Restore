uint64_t sub_1C1E263C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 80);
    for (i = (a2 + 80); ; i += 7)
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v12 = *(i - 5);
      v13 = *(v3 - 5);
      v8 = *(i - 2);
      v9 = *i;
      v14 = *(i - 1);
      if ((*(v3 - 4) != *(i - 4) || *(v3 - 3) != *(i - 3)) && (sub_1C1E54D2C() & 1) == 0)
      {
        break;
      }

      if ((v5 != v8 || v6 != v14) && (sub_1C1E54D2C() & 1) == 0)
      {
        break;
      }

      if (v7)
      {
        if (!v9)
        {
          return 0;
        }

        swift_retain_n();
        v11 = sub_1C1E5354C();

        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v9)
      {
        return 0;
      }

      v3 += 7;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1C1E26580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Function();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_1C1DE160C(v14, v11);
        sub_1C1DE160C(v15, v8);
        v17 = *(v4 + 48);
        v18 = sub_1C1E51F7C();
        sub_1C1DE1670(v8);
        sub_1C1DE1670(v11);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

size_t sub_1C1E26700(size_t a1, int64_t a2, char a3)
{
  result = sub_1C1E26740(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C1E26720(char *a1, int64_t a2, char a3)
{
  result = sub_1C1E26918(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1C1E26740(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D600, &qword_1C1E59550);
  v10 = *(type metadata accessor for Function() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Function() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1C1E26918(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D618, &qword_1C1E59560);
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

uint64_t sub_1C1E26A24(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v3 = result + 40;
  v4 = MEMORY[0x1E69E7CC0];
  v13 = result + 40;
  do
  {
    v5 = (v3 + 16 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v8 = *(v5 - 1);
      v7 = *v5;
      swift_bridgeObjectRetain_n();
      v9 = sub_1C1E34624(&v14, v8, v7);

      if (v9)
      {
        break;
      }

      v5 += 2;
      if (v2 == v1)
      {
        return v4;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v15 = v4;
    if ((result & 1) == 0)
    {
      result = sub_1C1E26720(0, *(v4 + 16) + 1, 1);
      v4 = v15;
    }

    v11 = *(v4 + 16);
    v10 = *(v4 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_1C1E26720((v10 > 1), v11 + 1, 1);
      v4 = v15;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v7;
    v3 = v13;
  }

  while (v2 != v1);
  return v4;
}

uint64_t keypath_set_70Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

unint64_t sub_1C1E26BCC()
{
  result = qword_1EBF1D5C0;
  if (!qword_1EBF1D5C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBF1D5C0);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C1E26CAC()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Function() + 48);
  return sub_1C1E51F7C() & 1;
}

uint64_t sub_1C1E26CFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__graphType;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

unint64_t sub_1C1E26D84()
{
  result = qword_1EBF1D5E8;
  if (!qword_1EBF1D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D5E8);
  }

  return result;
}

unint64_t sub_1C1E26DDC()
{
  result = qword_1EBF1D5F0;
  if (!qword_1EBF1D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D5F0);
  }

  return result;
}

double keypath_get_151Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

uint64_t keypath_set_144Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t keypath_get_163Tm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v6;
  return result;
}

uint64_t keypath_set_164Tm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2 + *a5;
  result = swift_beginAccess();
  *v7 = v5;
  *(v7 + 8) = v6;
  return result;
}

void sub_1C1E26F90()
{
  v0 = sub_1C1E51F5C();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_1C1E286D0(319, &qword_1EDE73BE0, MEMORY[0x1E695AF78]);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_1C1E286D0(319, &qword_1EBF1D5F8, MEMORY[0x1E69695A8]);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        v6 = sub_1C1E5232C();
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          v8 = sub_1C1E520FC();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of GraphViewModel.plotRect.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*v1 + 1048);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

void sub_1C1E286D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C1E549CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C1E28744(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C758, &qword_1C1E579C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1E287F8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16) + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
  result = swift_beginAccess();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  return result;
}

uint64_t sub_1C1E28868(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1E51F9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5E0, &qword_1C1E592F8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D608, &qword_1C1E59558);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  sub_1C1DC1424(a1, &v24 - v15, &qword_1EBF1D5E0, &qword_1C1E592F8);
  sub_1C1DC1424(a2, &v16[v18], &qword_1EBF1D5E0, &qword_1C1E592F8);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1C1DC1424(v16, v12, &qword_1EBF1D5E0, &qword_1C1E592F8);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      sub_1C1DC4DB0(&qword_1EBF1D610, MEMORY[0x1E69695A8]);
      v21 = sub_1C1E545AC();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1C1DC1870(v16, &qword_1EBF1D5E0, &qword_1C1E592F8);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1C1DC1870(v16, &qword_1EBF1D608, &qword_1C1E59558);
    v20 = 1;
    return v20 & 1;
  }

  sub_1C1DC1870(v16, &qword_1EBF1D5E0, &qword_1C1E592F8);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1C1E28BBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C1E28CA0(void *a1)
{
  v2 = v1[4];
  v3 = (v1[2] + *a1);
  v4 = v3[1];
  *v3 = v1[3];
  v3[1] = v2;
}

uint64_t sub_1C1E28CEC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

uint64_t CalculateGraph.viewModel.getter()
{
  sub_1C1E36158();
}

uint64_t sub_1C1E28F4C(unint64_t a1, uint64_t *a2, int a3, int a4)
{
  v5 = v4;
  v29 = a3;
  v30 = a4;
  v28 = a2;
  v7 = type metadata accessor for Function();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v24)
  {
    v14 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      return v14;
    }

    v15 = v10;
    v32 = MEMORY[0x1E69E7CC0];
    sub_1C1E26700(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v16 = 0;
    v14 = v32;
    v17 = v15;
    v26 = v15;
    v27 = v15 & 0xC000000000000001;
    v25 = v15 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v27)
      {
        v19 = MEMORY[0x1C6910730](v16, v17);
      }

      else
      {
        if (v16 >= *(v25 + 16))
        {
          goto LABEL_17;
        }

        v19 = *(v17 + 8 * v16 + 32);
      }

      v31 = v19;
      sub_1C1E3027C(&v31, v28, v29 & 1, v30 & 1, v12);
      if (v5)
      {
        goto LABEL_20;
      }

      v5 = 0;

      v32 = v14;
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1C1E26700(v20 > 1, v21 + 1, 1);
        v14 = v32;
      }

      *(v14 + 16) = v21 + 1;
      sub_1C1DF7E98(v12, v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v21);
      ++v16;
      v17 = v26;
      if (v18 == i)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v23 = v10;
    v24 = sub_1C1E54ACC();
    v10 = v23;
  }

  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

uint64_t Graph3DBounds.viewModel.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void (*Graph3DBounds.xBounds.modify(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 48) = *v1;
  swift_getKeyPath();
  *(v4 + 56) = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v5;
  *(v4 + 64) = sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v6 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds;
  *(v4 + 72) = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + v6);
  return sub_1C1E29350;
}

void (*Graph3DBounds.yBounds.modify(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 48) = *v1;
  swift_getKeyPath();
  *(v4 + 56) = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v5;
  *(v4 + 64) = sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v6 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds;
  *(v4 + 72) = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + v6);
  return sub_1C1E29500;
}

double sub_1C1E2955C(uint64_t a1, void *a2)
{
  v4 = *v2;
  swift_getKeyPath();
  sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v5 = v4 + *a2;
  swift_beginAccess();
  result = *v5;
  v7 = *(v5 + 8);
  return result;
}

__n128 sub_1C1E29614@<Q0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, __n128 *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v6 = *a2;
  swift_beginAccess();
  result = *(v5 + v6);
  *a3 = result;
  return result;
}

uint64_t sub_1C1E29718(void *a1, uint64_t (*a2)(uint64_t, __n128, __n128), double a3, double a4)
{
  v8 = (*v4 + *a1);
  v9 = swift_beginAccess();
  v10.n128_f64[0] = *v8;
  v11.n128_f64[0] = v8[1];
  if (*v8 == a3 && v11.n128_f64[0] == a4)
  {
    *v8 = a3;
    v8[1] = a4;
    return a2(v9, v10, v11);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }
}

void (*Graph3DBounds.zBounds.modify(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 48) = *v1;
  swift_getKeyPath();
  *(v4 + 56) = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___observationRegistrar;
  *v4 = v5;
  *(v4 + 64) = sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v6 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds;
  *(v4 + 72) = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + v6);
  return sub_1C1E29970;
}

void sub_1C1E299B8(uint64_t a1, char a2, void (*a3)(__n128), __n128 a4)
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 48);
  v7 = v6 + *(*a1 + 72);
  v8 = *(*a1 + 32);
  a4.n128_u64[0] = *v7;
  v9 = *v7 == v5;
  if (*(v7 + 8) != v8)
  {
    v9 = 0;
  }

  if (a2)
  {
    if (!v9)
    {
      v11 = v4[7];
      v10 = v4[8];
LABEL_9:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v4[5] = v6;
      sub_1C1E520AC();

      goto LABEL_10;
    }
  }

  else if (!v9)
  {
    v13 = v4[7];
    v12 = v4[8];
    goto LABEL_9;
  }

  *v7 = v5;
  *(v7 + 8) = v8;
  a3(a4);
LABEL_10:
  free(v4);
}

uint64_t sub_1C1E29AE8(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 24);
  *(v2 + 24) = a1;

  swift_getKeyPath();
  sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression);
  sub_1C1E520BC();

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C1E33630();
  }
}

uint64_t (*sub_1C1E29BEC(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C1E29C40;
}

uint64_t sub_1C1E29C40(void *a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = a1[3];
    swift_getKeyPath();
    *a1 = v5;
    sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression);
    sub_1C1E520BC();

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1C1E33630();
    }
  }

  return result;
}

uint64_t sub_1C1E29D30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression);
  sub_1C1E520BC();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_1C1E29DF0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C1E29ED4(v4);
}

uint64_t sub_1C1E29E1C()
{
  swift_getKeyPath();
  sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression);
  sub_1C1E520BC();

  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_1C1E29ED4(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 24))
  {
    if (a1)
    {
      v3 = *(v1 + 24);

      v4 = sub_1C1E5354C();

      if (v4)
      {
        return sub_1C1E29AE8(a1);
      }
    }
  }

  else if (!a1)
  {
    return sub_1C1E29AE8(a1);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression);
  sub_1C1E520AC();
}

void (*sub_1C1E2A024(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11CalculateUI24CalculateGraphExpression___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E29BEC(v4);
  return sub_1C1E2A15C;
}

uint64_t sub_1C1E2A168()
{
  v1 = swift_allocObject();
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = v0;
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = v0;
  swift_retain_n();
  sub_1C1E537BC();
  return v4;
}

uint64_t sub_1C1E2A228@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1E2A918();
  *a1 = result;
  return result;
}

uint64_t sub_1C1E2A254(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  swift_beginAccess();
  if (*(a4 + 24))
  {

    v6 = sub_1C1E5354C();

    if (v6)
    {
      return sub_1C1E29AE8(v5);
    }
  }

  else
  {
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression);
  sub_1C1E520AC();
}

void (*sub_1C1E2A3B0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_1C1E2A440;
}

void sub_1C1E2A440(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  swift_weakAssign();
  if (a2)
  {
    v6 = v3[3];

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1C1E2A4C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression);
  sub_1C1E520BC();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1C1E2A580(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C1E2A664(v4);
}

uint64_t sub_1C1E2A5AC()
{
  swift_getKeyPath();
  sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression);
  sub_1C1E520BC();

  swift_beginAccess();
  return swift_weakLoadStrong();
}

uint64_t sub_1C1E2A664(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a1)
    {
      v2 = sub_1C1E51F7C();

      if ((v2 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      swift_weakAssign();
    }
  }

  else if (!a1)
  {
    goto LABEL_6;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression);
  sub_1C1E520AC();
}

void (*sub_1C1E2A7D4(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11CalculateUI24CalculateGraphExpression___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E2A3B0(v4);
  return sub_1C1E2A90C;
}

uint64_t sub_1C1E2A918()
{
  v1 = sub_1C1E51F9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v17 = v0;
  sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression);
  sub_1C1E520BC();

  swift_beginAccess();
  if (*(v0 + 24))
  {
    v6 = *(v0 + 24);
  }

  else
  {
    swift_getKeyPath();
    v16[4] = v0;
    sub_1C1E520BC();

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = *(v0 + 16);
      sub_1C1E53C9C();
      swift_getKeyPath();
      v16[1] = v8;
      sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
      sub_1C1E520BC();

      v10 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphColors;
      swift_beginAccess();
      v11 = *(v8 + v10);

      if (*(v11 + 16))
      {
        v12 = sub_1C1E33C94(v5);
        if (v13)
        {
          v6 = *(*(v11 + 56) + 8 * v12);
          v14 = *(v2 + 8);

          v14(v5, v1);

          goto LABEL_11;
        }
      }

      (*(v2 + 8))(v5, v1);
    }

    if (qword_1EBF1C160 != -1)
    {
      swift_once();
    }

    v6 = qword_1EBF20D90;
  }

LABEL_11:

  return v6;
}

uint64_t sub_1C1E2AC64()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression);
    sub_1C1E520BC();

    swift_beginAccess();
    Strong = swift_weakLoadStrong();

    if (Strong)
    {
      if (*(Strong + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__needsUpdate) == 1)
      {
        *(Strong + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__needsUpdate) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
        sub_1C1E520AC();
      }
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C1E5209C();
  }

  return result;
}

void (*CalculateGraphExpression.deinit())(uint64_t *, void)
{
  v1 = v0;
  v2 = *(v0 + 16);

  result = sub_1C1E53C0C();
  if (__OFSUB__(*v4, 1))
  {
    __break(1u);
  }

  else
  {
    --*v4;
    result(&v9, 0);

    v5 = *(v1 + 16);

    v6 = *(v1 + 24);

    swift_weakDestroy();
    v7 = OBJC_IVAR____TtC11CalculateUI24CalculateGraphExpression___observationRegistrar;
    v8 = sub_1C1E520FC();
    (*(*(v8 - 8) + 8))(v1 + v7, v8);
    return v1;
  }

  return result;
}

void (*CalculateGraphExpression.__deallocating_deinit())(uint64_t *, void)
{
  v1 = v0;
  v2 = *(v0 + 2);

  result = sub_1C1E53C0C();
  if (__OFSUB__(*v4, 1))
  {
    __break(1u);
  }

  else
  {
    --*v4;
    result(&v11, 0);

    v5 = *(v1 + 2);

    v6 = *(v1 + 3);

    swift_weakDestroy();
    v7 = OBJC_IVAR____TtC11CalculateUI24CalculateGraphExpression___observationRegistrar;
    v8 = sub_1C1E520FC();
    (*(*(v8 - 8) + 8))(&v1[v7], v8);
    v9 = *(*v1 + 48);
    v10 = *(*v1 + 52);
    return swift_deallocClassInstance();
  }

  return result;
}

void (*CalculateGraphExpression.__allocating_init(_:color:)(uint64_t a1, uint64_t a2))(_BYTE *, void)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v7 = sub_1C1E363C0(a1, a2);

  return v7;
}

void (*CalculateGraphExpression.init(_:color:)(uint64_t a1, uint64_t a2))(_BYTE *, void)
{
  v2 = sub_1C1E363C0(a1, a2);

  return v2;
}

uint64_t CalculateGraph.GraphType.init(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1C1E53B6C();
  v5 = *(v4 - 8);
  result = (*(v5 + 88))(a1, v4);
  if (result == *MEMORY[0x1E69920D0])
  {
    goto LABEL_5;
  }

  if (result != *MEMORY[0x1E69920D8])
  {
    result = (*(v5 + 8))(a1, v4);
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:
  *a2 = v7;
  return result;
}

uint64_t sub_1C1E2B250()
{
  if (*v0)
  {
    return 0x443365707974;
  }

  else
  {
    return 0x443265707974;
  }
}

uint64_t sub_1C1E2B27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x443265707974 && a2 == 0xE600000000000000;
  if (v6 || (sub_1C1E54D2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x443365707974 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C1E54D2C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1C1E2B35C(uint64_t a1)
{
  v2 = sub_1C1E365DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1E2B398(uint64_t a1)
{
  v2 = sub_1C1E365DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1E2B3E0(uint64_t a1)
{
  v2 = sub_1C1E36684();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1E2B41C(uint64_t a1)
{
  v2 = sub_1C1E36684();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1E2B458(uint64_t a1)
{
  v2 = sub_1C1E36630();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1E2B494(uint64_t a1)
{
  v2 = sub_1C1E36630();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CalculateGraph.GraphType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D620, &qword_1C1E59660);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D628, &qword_1C1E59668);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D630, &qword_1C1E59670);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C1E365DC();
  sub_1C1E54DCC();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1C1E36630();
    v18 = v22;
    sub_1C1E54CBC();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1C1E36684();
    sub_1C1E54CBC();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t CalculateGraph.GraphType.hashValue.getter()
{
  v1 = *v0;
  sub_1C1E54D7C();
  MEMORY[0x1C6910960](v1);
  return sub_1C1E54DAC();
}

uint64_t CalculateGraph.GraphType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D650, &qword_1C1E59678);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D658, &qword_1C1E59680);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D660, &qword_1C1E59688);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C1E365DC();
  v17 = v37;
  sub_1C1E54DBC();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_1C1E54CAC();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_1C1E54B8C();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D668, &qword_1C1E59690) + 48);
    *v25 = &type metadata for CalculateGraph.GraphType;
    sub_1C1E54C6C();
    sub_1C1E54B7C();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_1C1E36630();
    sub_1C1E54C5C();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_1C1E36684();
    sub_1C1E54C5C();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_0(v28);
}

uint64_t CalculateGraph.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph_id;
  v4 = sub_1C1E51F9C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1C1E2BD04(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1E53B6C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v19 = v1;
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  v9 = *(v1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions);
  if (v9 >> 62)
  {
    if (v9 < 0)
    {
      v17 = *(v2 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions);
    }

    result = sub_1C1E54ACC();
    if (!result)
    {
      return sub_1C1E3205C(a1);
    }
  }

  else
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return sub_1C1E3205C(a1);
    }
  }

  if ((v9 & 0xC000000000000001) != 0)
  {

    v11 = MEMORY[0x1C6910730](0, v9);

LABEL_6:
    v12 = *(v11 + 16);
    sub_1C1E53C6C();
    v13 = (*(v5 + 88))(v8, v4);
    if (v13 != *MEMORY[0x1E69920D0])
    {
      if (v13 == *MEMORY[0x1E69920D8])
      {
        v14 = 1;
        goto LABEL_11;
      }

      (*(v5 + 8))(v8, v4);
    }

    v14 = 0;
LABEL_11:
    v15 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType;
    swift_beginAccess();
    if (v14 == *(v2 + v15))
    {

      *(v2 + v15) = v14;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v18[-2] = v2;
      LOBYTE(v18[-1]) = v14;
      v18[2] = v2;
      sub_1C1E520AC();
    }

    return sub_1C1E3205C(a1);
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v9 + 32);

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1C1E2BFFC(void *a1))(void *a1, char a2)
{
  v2 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions;
  a1[2] = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions;
  *a1 = *(v1 + v2);
  a1[1] = v1;

  return sub_1C1E2C054;
}

uint64_t sub_1C1E2C054(void *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *(v3 + v2);
  *(v3 + v2) = *a1;
  if (a2)
  {

    sub_1C1E2BD04(v4);
  }

  else
  {
    sub_1C1E2BD04(v4);
  }
}

uint64_t sub_1C1E2C0C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  *a2 = *(v3 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions);
}

uint64_t sub_1C1E2C198()
{
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  v1 = *(v0 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions);
}

uint64_t sub_1C1E2C244()
{
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520AC();
}

void (*sub_1C1E2C314(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11CalculateUI14CalculateGraph___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E2BFFC(v4);
  return sub_1C1E2C44C;
}

uint64_t sub_1C1E2C458@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1C1E36158();
  swift_getKeyPath();
  sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel);

  sub_1C1E520BC();

  swift_beginAccess();
  LOBYTE(v3) = *(v4 + 17);

  *a2 = v3;
  return result;
}

uint64_t sub_1C1E2C538()
{
  v0 = sub_1C1E36158();
  swift_getKeyPath();
  sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel);

  sub_1C1E520BC();

  swift_beginAccess();
  v1 = *(v0 + 17);

  return v1;
}

uint64_t sub_1C1E2C608(char a1)
{
  v1 = a1 & 1;
  v2 = sub_1C1E36158();
  result = swift_beginAccess();
  if (*(v2 + 17) == v1)
  {
    *(v2 + 17) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel);

    sub_1C1E520AC();
  }

  return result;
}

void (*sub_1C1E2C748(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1C1E36158();
  swift_getKeyPath();
  *v4 = v5;
  *(v4 + 80) = sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel);

  sub_1C1E520BC();

  swift_beginAccess();
  v6 = *(v5 + 17);

  *(v4 + 88) = v6;
  return sub_1C1E2C868;
}

void sub_1C1E2C868(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 88);
  v6 = sub_1C1E36158();
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    if (v5 != *(v6 + 17))
    {
      v9 = v3[10];
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v3[3] = v6;

      goto LABEL_6;
    }

LABEL_7:
    *(v6 + 17) = v5;
    goto LABEL_8;
  }

  swift_beginAccess();
  if (v5 == *(v6 + 17))
  {
    goto LABEL_7;
  }

  v7 = v3[10];
  v8 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v8);
  v3[6] = v6;

LABEL_6:
  sub_1C1E520AC();

LABEL_8:
  free(v3);
}

uint64_t sub_1C1E2CA28()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  v1 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphColors;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_1C1E2CAE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  v4 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphColors;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1C1E2CBB0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphColors;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = sub_1C1E35760(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
    sub_1C1E520AC();
  }
}

uint64_t sub_1C1E2CD00(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphColors;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

uint64_t sub_1C1E2CD70()
{
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  return *(v0 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__needsUpdate);
}

uint64_t sub_1C1E2CE18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  *a2 = *(v3 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__needsUpdate);
  return result;
}

uint64_t sub_1C1E2CEF0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__needsUpdate) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__needsUpdate) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
    sub_1C1E520AC();
  }

  return result;
}

uint64_t sub_1C1E2D018()
{
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  v1 = *(v0 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel);
}

uint64_t sub_1C1E2D0C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  *a2 = *(v3 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel);
}

uint64_t sub_1C1E2D178(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C1E2D1A4(v4);
}

uint64_t sub_1C1E2D1A4(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
    sub_1C1E520AC();
  }
}

uint64_t sub_1C1E2D340@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  v3 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

uint64_t sub_1C1E2D404(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType;
  result = swift_beginAccess();
  if (v2 == *(v1 + v3))
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
    sub_1C1E520AC();
  }

  return result;
}

void (*sub_1C1E2D530(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11CalculateUI14CalculateGraph___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E2D2E0();
  return sub_1C1E2D668;
}

uint64_t sub_1C1E2D6D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  v4 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__animation;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1C1E2D79C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C1E2D888(v4);
}

uint64_t sub_1C1E2D7C8()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  v1 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__animation;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_1C1E2D888(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__animation;
  swift_beginAccess();
  if (!*(v1 + v3))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
    sub_1C1E520AC();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = *(v1 + v3);

  v5 = sub_1C1E5390C();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v1 + v3);
LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_1C1E2D9EC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__animation;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

void (*sub_1C1E2DA5C(uint64_t *a1))(void *a1)
{
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11CalculateUI14CalculateGraph___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C1E520DC();

  v4[7] = sub_1C1E2D674();
  return sub_1C1E2DB94;
}

uint64_t (*sub_1C1E2DBF4(void *a1))(uint64_t a1)
{
  a1[3] = v1;
  swift_getKeyPath();
  a1[2] = v1;
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  v3 = *(v1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel);

  sub_1C1E24AC8();
  v5 = v4;
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  return sub_1C1E2DCEC;
}

uint64_t (*sub_1C1E2DD68(void *a1))(uint64_t a1)
{
  a1[3] = v1;
  swift_getKeyPath();
  a1[2] = v1;
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  v3 = *(v1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel);

  sub_1C1E24CD4();
  v5 = v4;
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  return sub_1C1E2DE60;
}

uint64_t sub_1C1E2DE88@<X0>(uint64_t *a1@<X0>, double (*a2)(uint64_t)@<X3>, double *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  v6 = *(v5 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel);

  v8 = a2(v7);
  v10 = v9;

  *a3 = v8;
  *(a3 + 1) = v10;
  return result;
}

double sub_1C1E2DF84(double (*a1)(uint64_t))
{
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  v3 = *(v1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel);

  v5 = a1(v4);

  return v5;
}

uint64_t sub_1C1E2E09C(void *a1, void (*a2)(uint64_t), double a3, double a4)
{
  sub_1C1E36158();

  sub_1C1E2473C();

  v8 = (sub_1C1E36158() + *a1);
  swift_beginAccess();
  if (*v8 == a3 && v8[1] == a4)
  {
    *v8 = a3;
    v8[1] = a4;

    a2(v12);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel);

    sub_1C1E520AC();
  }
}

uint64_t (*sub_1C1E2E234(void *a1))(uint64_t a1)
{
  a1[3] = v1;
  swift_getKeyPath();
  a1[2] = v1;
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  v3 = *(v1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel);

  sub_1C1E24EE0();
  v5 = v4;
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  return sub_1C1E2E32C;
}

uint64_t sub_1C1E2E354@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  *a2 = *(v3 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__bounds);
}

uint64_t sub_1C1E2E428(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520AC();
}

uint64_t sub_1C1E2E4E4()
{
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  v1 = *(v0 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__bounds);
}

uint64_t sub_1C1E2E590@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C1E36158();
}

uint64_t sub_1C1E2E5C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1C1E36158();
  swift_getKeyPath();
  sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel);

  sub_1C1E520BC();

  v3 = (v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = (v2 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  swift_beginAccess();
  if (*v6 == v5 && v6[1] == v4)
  {
    *v6 = v5;
    v6[1] = v4;
    sub_1C1E1B224();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10 = *(v9 + 2152);
    sub_1C1E520AC();
  }

  v11 = sub_1C1E36158();
  swift_getKeyPath();

  sub_1C1E520BC();

  v12 = (v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  swift_beginAccess();
  v14 = *v12;
  v13 = v12[1];
  v15 = (v11 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  swift_beginAccess();
  if (*v15 == v14 && v15[1] == v13)
  {
    *v15 = v14;
    v15[1] = v13;
    sub_1C1E1B784();
  }

  else
  {
    v16 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v16);
    sub_1C1E520AC();
  }

  v17 = sub_1C1E36158();
  swift_getKeyPath();

  sub_1C1E520BC();

  v18 = (v1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  swift_beginAccess();
  v20 = *v18;
  v19 = v18[1];

  v21 = (v17 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  swift_beginAccess();
  if (*v21 == v20 && v21[1] == v19)
  {
    *v21 = v20;
    v21[1] = v19;
    sub_1C1E1BEA8();
  }

  else
  {
    v23 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v23);
    sub_1C1E520AC();
  }
}

uint64_t (*sub_1C1E2EA1C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1C1E36158();

  return sub_1C1E2EA6C;
}

uint64_t sub_1C1E2EA6C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v5 = *a1;

    sub_1C1E2E5C8(&v5);
  }

  else
  {
    v5 = *a1;
    return sub_1C1E2E5C8(&v5);
  }
}

uint64_t sub_1C1E2EB3C()
{
  if (*v0)
  {
    result = 0x74616E696C636E69;
  }

  else
  {
    result = 0x6874756D697A61;
  }

  *v0;
  return result;
}

uint64_t sub_1C1E2EB80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874756D697A61 && a2 == 0xE700000000000000;
  if (v6 || (sub_1C1E54D2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74616E696C636E69 && a2 == 0xEB000000006E6F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C1E54D2C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1C1E2EC60(uint64_t a1)
{
  v2 = sub_1C1E36758();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1E2EC9C(uint64_t a1)
{
  v2 = sub_1C1E36758();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CalculateGraph.Pose.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D670, &qword_1C1E59788);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-v7];
  v10 = *v1;
  v9 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C1E36758();
  sub_1C1E54DCC();
  v13[15] = 0;
  sub_1C1E54CDC();
  if (!v2)
  {
    v13[14] = 1;
    sub_1C1E54CDC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t CalculateGraph.Pose.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D680, &qword_1C1E59790);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C1E36758();
  sub_1C1E54DBC();
  if (!v2)
  {
    v18 = 0;
    sub_1C1E54C8C();
    v12 = v11;
    v17 = 1;
    sub_1C1E54C8C();
    v14 = v13;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1C1E2F038(double *a1, uint64_t *a2)
{
  v4 = sub_1C1E5232C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  v10 = *a2;
  sub_1C1E36158();
  SPAngleMakeWithDegrees(v8);
  SPAngleMakeWithDegrees(v9);

  sub_1C1E522FC();
  sub_1C1E16220(v7);
}

void sub_1C1E2F104(double *a1@<X8>)
{
  v22 = a1;
  v1 = sub_1C1E5232C();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1E36158();
  swift_getKeyPath();
  v24 = v6;
  v21 = sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel);

  sub_1C1E520BC();

  v7 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose;
  swift_beginAccess();
  v8 = v2[2];
  v8(v5, v6 + v7, v1);
  sub_1C1E5230C();
  v10 = v9;
  v11 = v2[1];
  v11(v5, v1);

  v12.radians = v10;
  Degrees = SPAngleGetDegrees(v12);
  v14 = sub_1C1E36158();
  swift_getKeyPath();
  v23 = v14;

  sub_1C1E520BC();

  v15 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose;
  swift_beginAccess();
  v8(v5, v14 + v15, v1);
  sub_1C1E522EC();
  v17 = v16;
  v11(v5, v1);

  v18.radians = v17;
  v19 = SPAngleGetDegrees(v18);
  v20 = v22;
  *v22 = Degrees;
  v20[1] = v19;
}

uint64_t sub_1C1E2F380(double *a1)
{
  v2 = sub_1C1E5232C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = a1[1];
  sub_1C1E36158();
  SPAngleMakeWithDegrees(v6);
  SPAngleMakeWithDegrees(v7);

  sub_1C1E522FC();
  sub_1C1E16220(v5);
}

void (*sub_1C1E2F444(uint64_t a1))(double *a1)
{
  *(a1 + 16) = v1;
  v3 = *(*(sub_1C1E5232C() - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  *(a1 + 24) = v4;
  sub_1C1E2F104(a1);
  return sub_1C1E2F4C8;
}

void sub_1C1E2F4C8(double *a1)
{
  v2 = *(a1 + 2);
  v1 = *(a1 + 3);
  v3 = *a1;
  v4 = a1[1];
  sub_1C1E36158();
  SPAngleMakeWithDegrees(v3);
  SPAngleMakeWithDegrees(v4);

  sub_1C1E522FC();
  sub_1C1E16220(v1);

  free(v1);
}

double CalculateGraph.ViewState.xAxisBounds.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

double CalculateGraph.ViewState.yAxisBounds.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t CalculateGraph.ViewState.zAxisBounds.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  return result;
}

__n128 CalculateGraph.ViewState.pose.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[5].n128_u8[0];
  result = v1[4];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 CalculateGraph.ViewState.init(graphType:xAxisBounds:yAxisBounds:zAxisBounds:pose:)@<Q0>(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, __n128 *a5@<X4>, __n128 *a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  v10 = a5[1].n128_u8[0];
  a6->n128_u8[0] = *a1;
  v11 = 0xC014000000000000;
  if ((a4 & 1) == 0)
  {
    v11 = a2;
  }

  v12 = 0x4014000000000000;
  if ((a4 & 1) == 0)
  {
    v12 = a3;
  }

  a6->n128_f64[1] = a7;
  a6[1].n128_f64[0] = a8;
  a6[1].n128_f64[1] = a9;
  a6[2].n128_f64[0] = a10;
  a6[2].n128_u64[1] = v11;
  a6[3].n128_u64[0] = v12;
  a6[3].n128_u8[8] = 0;
  result = *a5;
  a6[4] = *a5;
  a6[5].n128_u8[0] = v10;
  return result;
}

uint64_t sub_1C1E2F5DC()
{
  v1 = *v0;
  v2 = 0x7079546870617267;
  v3 = 0x756F42736978417ALL;
  if (v1 != 3)
  {
    v3 = 1702063984;
  }

  if (v1 == 2)
  {
    v3 = 0x756F427369784179;
  }

  if (*v0)
  {
    v2 = 0x756F427369784178;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C1E2F684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1E369D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1E2F6B8(uint64_t a1)
{
  v2 = sub_1C1E367C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1E2F6F4(uint64_t a1)
{
  v2 = sub_1C1E367C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CalculateGraph.ViewState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D688, &unk_1C1E597C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v11 = *(v1 + 2);
  v12 = *(v1 + 3);
  v13 = *(v1 + 4);
  v14 = *(v1 + 5);
  v22 = *(v1 + 6);
  v23 = v14;
  v27 = v1[56];
  v15 = *(v1 + 9);
  v19 = *(v1 + 8);
  v21 = v15;
  v20 = v1[80];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C1E367C8();
  sub_1C1E54DCC();
  LOBYTE(v24) = v9;
  v28 = 0;
  sub_1C1E3681C();
  sub_1C1E54CEC();
  if (!v2)
  {
    v17 = v23;
    v24 = v10;
    v25 = v11;
    v28 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D3F0, &qword_1C1E58AB8);
    sub_1C1E36918(&qword_1EBF1D6A0);
    sub_1C1E54CEC();
    v24 = v12;
    v25 = v13;
    v28 = 2;
    sub_1C1E54CEC();
    v24 = v17;
    v25 = v22;
    v26 = v27;
    v28 = 3;
    sub_1C1E54CCC();
    v24 = v19;
    v25 = v21;
    v26 = v20;
    v28 = 4;
    sub_1C1E36870();
    sub_1C1E54CCC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t CalculateGraph.ViewState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D6B0, &qword_1C1E597D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C1E367C8();
  sub_1C1E54DBC();
  if (!v2)
  {
    v23 = 0;
    sub_1C1E368C4();
    sub_1C1E54C9C();
    v18 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D3F0, &qword_1C1E58AB8);
    v23 = 1;
    sub_1C1E36918(&qword_1EBF1D6C0);
    sub_1C1E54C9C();
    v11 = v19;
    v23 = 2;
    sub_1C1E54C9C();
    v12 = v19;
    v23 = 3;
    sub_1C1E54C7C();
    v14 = v19;
    v22 = v20;
    v23 = 4;
    sub_1C1E36984();
    sub_1C1E54C7C();
    (*(v6 + 8))(v9, v5);
    v15 = v20;
    v21 = v20;
    v16 = v22;
    *a2 = v18;
    *(a2 + 8) = v11;
    *(a2 + 24) = v12;
    *(a2 + 40) = v14;
    *(a2 + 56) = v16;
    *(a2 + 64) = v19;
    *(a2 + 80) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

double sub_1C1E2FD38@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  v24 = v1;
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  v4 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType;
  swift_beginAccess();
  v5 = *(*&v2 + v4);
  swift_getKeyPath();
  v23[0] = v2;
  sub_1C1E520BC();

  v6 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel;
  v7 = *(*&v2 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel);

  sub_1C1E24AC8();
  v9 = v8;
  v11 = v10;

  swift_getKeyPath();
  v23[0] = v2;
  sub_1C1E520BC();

  v12 = *(*&v2 + v6);

  sub_1C1E24CD4();
  v14 = v13;
  v16 = v15;

  swift_getKeyPath();
  v23[0] = v2;
  sub_1C1E520BC();

  v17 = *(*&v2 + v6);

  sub_1C1E24EE0();
  v19 = v18;
  v21 = v20;

  sub_1C1E2F104(v23);
  *a1 = v5;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11;
  *(a1 + 24) = v14;
  *(a1 + 32) = v16;
  *(a1 + 40) = v19;
  *(a1 + 48) = v21;
  *(a1 + 56) = 0;
  result = v23[0];
  *(a1 + 64) = *v23;
  *(a1 + 80) = 0;
  return result;
}

uint64_t sub_1C1E2FF58(double *a1)
{
  v2 = v1;
  v4 = sub_1C1E5232C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = a1[4];
  v13 = a1[5];
  v14 = a1[6];
  v15 = *(a1 + 56);
  v17 = a1[8];
  v16 = a1[9];
  v18 = *(a1 + 80);
  v19 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType;
  swift_beginAccess();
  if (v8 == *(v2 + v19))
  {
    *(v2 + v19) = v8;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v24[-2] = v2;
    LOBYTE(v24[-1]) = v8;
    v24[2] = v2;
    sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
    sub_1C1E520AC();
  }

  sub_1C1E2DBB8(v9, v10);
  sub_1C1E2DD2C(v11, v12);
  if (v15)
  {
    v21 = 5.0;
  }

  else
  {
    v21 = v14;
  }

  v22 = -5.0;
  if (!v15)
  {
    v22 = v13;
  }

  result = sub_1C1E2E060(v22, v21);
  if ((v18 & 1) == 0)
  {
    sub_1C1E36158();
    SPAngleMakeWithDegrees(v17);
    SPAngleMakeWithDegrees(v16);

    sub_1C1E522FC();
    sub_1C1E16220(v7);
  }

  return result;
}

void (*sub_1C1E3019C(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  *a1 = v3;
  *(v3 + 88) = v1;
  sub_1C1E2FD38(v3);
  return sub_1C1E30214;
}

void sub_1C1E30214(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v3 = *(*a1 + 48);
  v5[2] = *(*a1 + 32);
  v5[3] = v3;
  v5[4] = v1[4];
  v6 = *(v1 + 80);
  v4 = v1[1];
  v5[0] = *v1;
  v5[1] = v4;
  sub_1C1E2FF58(v5);

  free(v1);
}

uint64_t sub_1C1E3027C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v123 = a5;
  v120 = a4;
  LODWORD(v121) = a3;
  v125 = sub_1C1E51F9C();
  v7 = *(v125 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v125);
  v118 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v119 = &v112 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v112 - v13;
  v124 = type metadata accessor for Function();
  v117 = *(v124 - 1);
  v15 = *(v117 + 64);
  v16 = MEMORY[0x1EEE9AC00](v124);
  v18 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (&v112 - v20);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v112 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = (&v112 - v25);
  v122 = *a1;
  v27 = *(v122 + 16);
  sub_1C1E53C9C();
  v28 = *a2;
  if (*(*a2 + 16) && (v29 = sub_1C1E33C94(v14), (v30 & 1) != 0))
  {
    sub_1C1DE160C(*(v28 + 56) + *(v117 + 72) * v29, v24);
    (*(v7 + 8))(v14, v125);
    sub_1C1DF7E98(v24, v26);
    v31 = sub_1C1E53B0C();
    v33 = v32;
    v34 = v26[1];

    *v26 = v31;
    v26[1] = v33;
    v35 = *(v122 + 16);
    if (v121)
    {
      v36 = sub_1C1E53C2C();
      v38 = v37;
      v39 = v26[11];
      sub_1C1DD0EB8(v26[10]);
      v26[10] = v36;
      v26[11] = v38;
      v40 = v26[3];

      v41 = 0xE100000000000000;
      v26[2] = 120;
      v26[3] = 0xE100000000000000;
      v42 = 122;
      v43 = 121;
      v44 = 0xE100000000000000;
    }

    else
    {
      v90 = sub_1C1E53C1C();
      v92 = v91;
      v93 = v26[9];

      v26[8] = v90;
      v26[9] = v92;
      type metadata accessor for Function.FunctionSamplerWrapper();
      v94 = swift_allocObject();
      *(v94 + 24) = 0;
      *(v94 + 32) = 0;
      *(v94 + 40) = 1;
      *(v94 + 48) = 0;
      *(v94 + 56) = 0;
      *(v94 + 64) = 1;
      v95 = sub_1C1E5247C();
      v96 = *(v95 + 48);
      v97 = *(v95 + 52);
      swift_allocObject();
      *(v94 + 16) = sub_1C1E5248C();
      v98 = v26[12];

      v26[12] = v94;
      v99 = sub_1C1E53BEC();
      if (v100)
      {
        v101 = v99;
      }

      else
      {
        v101 = 120;
      }

      if (v100)
      {
        v102 = v100;
      }

      else
      {
        v102 = 0xE100000000000000;
      }

      v103 = v26[3];

      v26[2] = v101;
      v26[3] = v102;
      v104 = sub_1C1E53BAC();
      v42 = 0;
      if (v105)
      {
        v43 = v104;
      }

      else
      {
        v43 = 121;
      }

      if (v105)
      {
        v41 = v105;
      }

      else
      {
        v41 = 0xE100000000000000;
      }

      v44 = 0xE000000000000000;
    }

    v106 = v26[5];

    v26[4] = v43;
    v26[5] = v41;
    v107 = v26[7];

    v26[6] = v42;
    v26[7] = v44;
    v108 = sub_1C1E2A918();
    v109 = v124[13];
    v110 = *(v26 + v109);

    *(v26 + v109) = v108;
  }

  else
  {
    v45 = v125;
    v116 = *(v7 + 8);
    v117 = v7 + 8;
    v116(v14, v125);
    if (v121)
    {
      v46 = v119;
      sub_1C1E53C9C();
      v47 = sub_1C1E53B0C();
      v49 = v48;
      v50 = sub_1C1E53C2C();
      v52 = v51;
      v53 = sub_1C1E2A918();
      v54 = v124[12];
      v121 = v124[13];
      v122 = v53;
      (*(v7 + 16))(v21 + v54, v46, v45);
      *v21 = v47;
      v21[1] = v49;
      v21[2] = 120;
      v21[3] = 0xE100000000000000;
      v21[4] = 121;
      v21[5] = 0xE100000000000000;
      v21[6] = 122;
      v21[7] = 0xE100000000000000;
      v21[8] = sub_1C1E28F40;
      v21[9] = 0;
      v21[10] = v50;
      v21[11] = v52;
      v55 = swift_allocObject();
      *(v55 + 16) = v50;
      *(v55 + 24) = v52;
      type metadata accessor for Function.FunctionSamplerWrapper();
      v56 = swift_allocObject();
      *(v56 + 24) = 0;
      *(v56 + 32) = 0;
      *(v56 + 40) = 1;
      *(v56 + 48) = 0;
      *(v56 + 56) = 0;
      *(v56 + 64) = 1;
      v57 = sub_1C1E5247C();
      v58 = *(v57 + 48);
      v59 = *(v57 + 52);
      swift_allocObject();
      swift_retain_n();
      *(v56 + 16) = sub_1C1E5248C();
      v21[12] = v56;
      v60 = swift_allocObject();
      *(v60 + 16) = v50;
      *(v60 + 24) = v52;
      v61 = swift_allocObject();
      *(v61 + 24) = 0;
      *(v61 + 32) = 0;
      *(v61 + 40) = 1;
      *(v61 + 48) = 0;
      *(v61 + 56) = 0;
      *(v61 + 64) = 1;
      v62 = *(v57 + 48);
      v63 = *(v57 + 52);
      swift_allocObject();
      *(v61 + 16) = sub_1C1E5248C();
      v21[13] = v61;
      *(v21 + v121) = v122;
      v64 = v124[14];
      if (v120)
      {
        sub_1C1E51F3C();
      }

      else
      {
        sub_1C1E51EEC();
      }

      v116(v119, v125);
      v26 = v21;
    }

    else
    {
      v65 = v118;
      sub_1C1E53C9C();
      v119 = sub_1C1E53B0C();
      v115 = v66;
      v67 = sub_1C1E53BEC();
      if (v68)
      {
        v69 = v67;
      }

      else
      {
        v69 = 120;
      }

      v70 = 0xE100000000000000;
      if (v68)
      {
        v70 = v68;
      }

      v113 = v70;
      v114 = v69;
      v71 = sub_1C1E53BAC();
      if (v72)
      {
        v73 = v71;
      }

      else
      {
        v73 = 121;
      }

      if (v72)
      {
        v74 = v72;
      }

      else
      {
        v74 = 0xE100000000000000;
      }

      v112 = v74;
      v75 = sub_1C1E53C1C();
      v77 = v76;
      v78 = sub_1C1E2A918();
      *(v18 + 13) = 0;
      v79 = v124;
      v80 = v124[12];
      v121 = v124[13];
      v122 = v78;
      (*(v7 + 16))(&v18[v80], v65, v45);
      v82 = v114;
      v81 = v115;
      *v18 = v119;
      *(v18 + 1) = v81;
      v83 = v112;
      v84 = v113;
      *(v18 + 2) = v82;
      *(v18 + 3) = v84;
      *(v18 + 4) = v73;
      *(v18 + 5) = v83;
      *(v18 + 6) = 122;
      *(v18 + 7) = 0xE100000000000000;
      *(v18 + 8) = v75;
      *(v18 + 9) = v77;
      type metadata accessor for Function.FunctionSamplerWrapper();
      *(v18 + 10) = 0;
      *(v18 + 11) = 0;
      v85 = swift_allocObject();
      *(v85 + 24) = 0;
      *(v85 + 32) = 0;
      *(v85 + 40) = 1;
      *(v85 + 48) = 0;
      *(v85 + 56) = 0;
      *(v85 + 64) = 1;
      v86 = sub_1C1E5247C();
      v87 = *(v86 + 48);
      v88 = *(v86 + 52);
      swift_allocObject();
      swift_retain_n();
      *(v85 + 16) = sub_1C1E5248C();
      *(v18 + 12) = v85;
      *&v18[v121] = v122;
      v89 = v79[14];
      if (v120)
      {
        sub_1C1E51F3C();
      }

      else
      {
        sub_1C1E51EEC();
      }

      v116(v118, v125);
      v26 = v18;
    }
  }

  return sub_1C1DF7E98(v26, v123);
}

uint64_t CalculateGraph.__allocating_init(graphExpressions:graphType:xAxisBounds:yAxisBounds:zAxisBounds:pose:animation:isSelected:)(unint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v12 = v11;
  v102 = a5;
  v98 = sub_1C1E53B6C();
  v97 = *(v98 - 8);
  v23 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v25 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1C1E5232C();
  v106 = *(v103 - 8);
  v26 = v106[8];
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v105 = &v96 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v96 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v96 - v34;
  v36 = *(v12 + 48);
  v37 = *(v12 + 52);
  v38 = swift_allocObject();
  v39 = *a2;
  v41 = *a3;
  v40 = *(a3 + 8);
  LODWORD(v100) = *(a3 + 16);
  sub_1C1E51F8C();
  v42 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions;
  v43 = MEMORY[0x1E69E7CC0];
  *(v38 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions) = MEMORY[0x1E69E7CC0];
  *(v38 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphColors) = sub_1C1DF7B9C(v43);
  *(v38 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__needsUpdate) = 1;
  *(v38 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType) = 0;
  v44 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__animation;
  *(v38 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__animation) = 0;
  *(v38 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__bounds) = 0;
  sub_1C1E520EC();
  v45 = *(v38 + v42);

  *(v38 + v42) = a1;
  v46 = *(v38 + v44);

  v104 = a4;
  *(v38 + v44) = a4;
  if (a1 >> 62)
  {
    result = sub_1C1E54ACC();
    if (!result)
    {
      goto LABEL_11;
    }

LABEL_3:
    if ((a1 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x1C6910730](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v48 = *(a1 + 32);
    }

    v49 = *(v48 + 16);
    sub_1C1E53C6C();

    v50 = v97;
    v51 = v98;
    v52 = (*(v97 + 88))(v25, v98);
    if (v52 != *MEMORY[0x1E69920D0])
    {
      if (v52 == *MEMORY[0x1E69920D8])
      {
        v39 = 1;
        goto LABEL_11;
      }

      (*(v50 + 8))(v25, v51);
    }

    v39 = 0;
    goto LABEL_11;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    goto LABEL_3;
  }

LABEL_11:
  *(v38 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType) = v39;
  if (v100)
  {
    sub_1C1E5231C();
  }

  else
  {
    SPAngleMakeWithDegrees(v41);
    SPAngleMakeWithDegrees(v40);
    sub_1C1E522FC();
  }

  v53 = v106;
  v97 = v106[4];
  v54 = v35;
  v55 = v35;
  v99 = v35;
  v56 = v103;
  (v97)(v55, v32, v103);
  v108[0] = 2;
  v57 = MEMORY[0x1E69E7CC0];
  v98 = sub_1C1E35BDC(a1, MEMORY[0x1E69E7CC0], v108, 0);

  v100 = v53[2];
  v100(v105, v54, v56);
  v58 = type metadata accessor for GraphViewModel();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  v61 = swift_allocObject();
  *(v61 + 16) = 0;
  sub_1C1E51F3C();
  *(v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterX) = 0;
  *(v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterY) = 0;
  *(v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterZ) = 0;
  *(v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakX) = 0x4008000000000000;
  *(v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakY) = 0x4008000000000000;
  *(v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakZ) = 0x4008000000000000;
  *(v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) = 0;
  *(v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom) = 0x3FF0000000000000;
  *(v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX) = 0;
  *(v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY) = 0;
  *(v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ) = 0;
  *(v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatio) = 0x3FE0000000000000;
  *(v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioY) = 0x3FE0000000000000;
  *(v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioZ) = 0x3FE0000000000000;
  *(v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX) = 0x4008000000000000;
  *(v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY) = 0x4008000000000000;
  *(v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ) = 0x4008000000000000;
  v62 = v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__plotRect;
  *v62 = 0u;
  *(v62 + 16) = 0u;
  *(v62 + 32) = 1;
  *(v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter) = 0;
  *(v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowEqualizeAxes) = 0;
  *(v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowCenterOrigin) = 0;
  v63 = v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_xDragStartPlottable;
  *v63 = 0;
  *(v63 + 8) = 1;
  v64 = v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_yDragStartPlottable;
  *v64 = 0;
  *(v64 + 8) = 1;
  v65 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_lock;
  *(v61 + v65) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v66 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock;
  *(v61 + v66) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions) = v57;
  v67 = (v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___xAxisLabel);
  *v67 = 0;
  v67[1] = 0;
  v68 = (v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___yAxisLabel);
  *v68 = 0;
  v68[1] = 0;
  v69 = (v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___zAxisLabel);
  *v69 = 0;
  v69[1] = 0;
  v70 = v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
  *v70 = 0;
  *(v70 + 8) = 0;
  *(v70 + 16) = 1;
  v71 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartProxy;
  v72 = sub_1C1E522DC();
  (*(*(v72 - 8) + 56))(v61 + v71, 1, 1, v72);
  v73 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__selectedFunctionID3D;
  v74 = sub_1C1E51F9C();
  (*(*(v74 - 8) + 56))(v61 + v73, 1, 1, v74);
  *(v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_baseAxesIntervals) = &unk_1F41870E8;
  *(v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__isAnimatingFunction) = 0;
  v75 = v101;
  sub_1C1E5231C();
  v76 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose;
  v77 = v97;
  (v97)(v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose, v75, v56);
  sub_1C1E520EC();
  v78 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions;
  v79 = *(v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  *(v61 + v78) = v98;
  v80 = (v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  *v80 = a6;
  v80[1] = a7;
  v81 = (v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  *v81 = a8;
  v81[1] = a9;
  v82 = (v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  *v82 = a10;
  v82[1] = a11;
  v83 = v105;
  v100(v75, v105, v56);
  v84 = v106[1];
  ++v106;
  v84(v61 + v76, v56);
  v77(v61 + v76, v75, v56);
  *(v61 + 17) = v102 & 1;
  *(v61 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__graphType) = 1;
  v85 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
  swift_beginAccess();
  *(v61 + v85) = (a6 + a7) * 0.5;
  v86 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
  swift_beginAccess();
  *(v61 + v86) = (a8 + a9) * 0.5;
  v87 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ;
  swift_beginAccess();
  *(v61 + v87) = (a10 + a11) * 0.5;
  v88 = sqrt(a7 - a6);
  v89 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
  swift_beginAccess();
  *(v61 + v89) = v88;
  v90 = sqrt(a9 - a8);
  v91 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
  swift_beginAccess();
  *(v61 + v91) = v90;
  v92 = sqrt(a11 - a10);
  v93 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
  swift_beginAccess();
  *(v61 + v93) = v92;
  sub_1C1E1A2C0();
  v84(v83, v56);
  *(v38 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel) = v61;
  type metadata accessor for CalculateGraph.Bounds();
  swift_allocObject();

  v94 = sub_1C1E03FC4();

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v96 - 2) = v38;
  *(&v96 - 1) = v94;
  v107 = v38;
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520AC();

  sub_1C1E3205C(MEMORY[0x1E69E7CC0]);

  v84(v99, v56);

  return v38;
}

uint64_t CalculateGraph.init(graphExpressions:graphType:xAxisBounds:yAxisBounds:zAxisBounds:pose:animation:isSelected:)(unint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v11 = sub_1C1E36B84(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);

  return v11;
}

void CalculateGraph.__allocating_init(graphExpressions:state:animation:isSelected:)(unint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = sub_1C1E53B6C();
  v87 = *(v8 - 8);
  v9 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C1E5232C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v17 = *a2 == 2;
  v93 = v18;
  v94 = &v84 - v19;
  v92 = v20;
  v91 = a4;
  v90 = v21;
  if (v17)
  {
    v22 = -5.0;
    v23 = 5.0;
    v24 = 5.0;
    v25 = -5.0;
    v26 = 5.0;
    v27 = -5.0;
  }

  else
  {
    if (*(a2 + 56))
    {
      goto LABEL_21;
    }

    v22 = *(a2 + 40);
    v23 = *(a2 + 48);
    v25 = *(a2 + 24);
    v24 = *(a2 + 32);
    v27 = *(a2 + 8);
    v26 = *(a2 + 16);
  }

  v28 = type metadata accessor for CalculateGraph(0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();
  sub_1C1E51F8C();
  v32 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions;
  v33 = MEMORY[0x1E69E7CC0];
  *(v31 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions) = MEMORY[0x1E69E7CC0];
  *(v31 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphColors) = sub_1C1DF7B9C(v33);
  *(v31 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__needsUpdate) = 1;
  *(v31 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType) = 0;
  v34 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__animation;
  *(v31 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__animation) = 0;
  *(v31 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__bounds) = 0;
  sub_1C1E520EC();
  v35 = *(v31 + v32);

  *(v31 + v32) = a1;
  v36 = *(v31 + v34);

  *(v31 + v34) = a3;
  if (a1 >> 62)
  {
    v37 = sub_1C1E54ACC();
  }

  else
  {
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v89 = a3;
  if (!v37)
  {
    goto LABEL_16;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v38 = MEMORY[0x1C6910730](0, a1);
LABEL_12:
    v39 = *(v38 + 16);
    sub_1C1E53C6C();

    v40 = v87;
    v41 = (*(v87 + 88))(v11, v8);
    if (v41 != *MEMORY[0x1E69920D0])
    {
      if (v41 == *MEMORY[0x1E69920D8])
      {
        v42 = 1;
LABEL_17:
        *(v31 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType) = v42;
        v43 = v92;
        sub_1C1E5231C();
        v44 = v13;
        v88 = v13;
        v85 = *(v13 + 32);
        v45 = v94;
        v46 = v93;
        v85(v94, v43, v93);
        v96[0] = 2;
        v86 = sub_1C1E35BDC(a1, MEMORY[0x1E69E7CC0], v96, 0);

        v87 = *(v44 + 16);
        (v87)(v43, v45, v46);
        v47 = type metadata accessor for GraphViewModel();
        v48 = *(v47 + 48);
        v49 = *(v47 + 52);
        v50 = swift_allocObject();
        *(v50 + 16) = 0;
        sub_1C1E51F3C();
        *(v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterX) = 0;
        *(v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterY) = 0;
        *(v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterZ) = 0;
        *(v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakX) = 0x4008000000000000;
        *(v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakY) = 0x4008000000000000;
        *(v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakZ) = 0x4008000000000000;
        *(v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) = 0;
        *(v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom) = 0x3FF0000000000000;
        *(v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX) = 0;
        *(v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY) = 0;
        *(v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ) = 0;
        *(v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatio) = 0x3FE0000000000000;
        *(v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioY) = 0x3FE0000000000000;
        *(v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioZ) = 0x3FE0000000000000;
        *(v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX) = 0x4008000000000000;
        *(v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY) = 0x4008000000000000;
        *(v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ) = 0x4008000000000000;
        v51 = v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__plotRect;
        *v51 = 0u;
        *(v51 + 16) = 0u;
        *(v51 + 32) = 1;
        *(v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter) = 0;
        *(v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowEqualizeAxes) = 0;
        *(v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowCenterOrigin) = 0;
        v52 = v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_xDragStartPlottable;
        *v52 = 0;
        *(v52 + 8) = 1;
        v53 = v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_yDragStartPlottable;
        *v53 = 0;
        *(v53 + 8) = 1;
        v54 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_lock;
        *(v50 + v54) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
        v55 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock;
        *(v50 + v55) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
        *(v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions) = MEMORY[0x1E69E7CC0];
        v56 = (v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___xAxisLabel);
        *v56 = 0;
        v56[1] = 0;
        v57 = (v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___yAxisLabel);
        *v57 = 0;
        v57[1] = 0;
        v58 = (v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___zAxisLabel);
        *v58 = 0;
        v58[1] = 0;
        v59 = v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
        *v59 = 0;
        *(v59 + 8) = 0;
        *(v59 + 16) = 1;
        v60 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartProxy;
        v61 = sub_1C1E522DC();
        (*(*(v61 - 8) + 56))(v50 + v60, 1, 1, v61);
        v62 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__selectedFunctionID3D;
        v63 = sub_1C1E51F9C();
        (*(*(v63 - 8) + 56))(v50 + v62, 1, 1, v63);
        *(v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_baseAxesIntervals) = &unk_1F41870E8;
        *(v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__isAnimatingFunction) = 0;
        v64 = v90;
        sub_1C1E5231C();
        v65 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose;
        v66 = v85;
        v85((v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose), v64, v46);
        sub_1C1E520EC();
        v67 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions;
        v68 = *(v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

        *(v50 + v67) = v86;
        v69 = (v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
        *v69 = v27;
        v69[1] = v26;
        v70 = (v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
        *v70 = v25;
        v70[1] = v24;
        v71 = (v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
        *v71 = v22;
        v71[1] = v23;
        (v87)(v64, v43, v46);
        v72 = *(v88 + 8);
        v72(v50 + v65, v46);
        v66(v50 + v65, v64, v46);
        *(v50 + 17) = v91 & 1;
        *(v50 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__graphType) = 1;
        v73 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
        swift_beginAccess();
        *(v50 + v73) = (v26 + v27) * 0.5;
        v74 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
        swift_beginAccess();
        *(v50 + v74) = (v24 + v25) * 0.5;
        v75 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ;
        swift_beginAccess();
        *(v50 + v75) = (v23 + v22) * 0.5;
        v76 = sqrt(v26 - v27);
        v77 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
        swift_beginAccess();
        *(v50 + v77) = v76;
        v78 = sqrt(v24 - v25);
        v79 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
        swift_beginAccess();
        *(v50 + v79) = v78;
        v80 = sqrt(v23 - v22);
        v81 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
        swift_beginAccess();
        *(v50 + v81) = v80;
        sub_1C1E1A2C0();
        v72(v43, v46);
        *(v31 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel) = v50;
        type metadata accessor for CalculateGraph.Bounds();
        swift_allocObject();

        v82 = sub_1C1E03FC4();

        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v84 - 2) = v31;
        *(&v84 - 1) = v82;
        v95 = v31;
        sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
        sub_1C1E520AC();

        sub_1C1E3205C(MEMORY[0x1E69E7CC0]);

        v72(v94, v46);

        return;
      }

      (*(v40 + 8))(v11, v8);
    }

LABEL_16:
    v42 = 0;
    goto LABEL_17;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v38 = *(a1 + 32);

    goto LABEL_12;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1C1E3205C(unint64_t a1)
{
  v2 = v1;
  v107 = sub_1C1E51F9C();
  v94 = *(v107 - 8);
  v4 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v88 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v98 = &v88 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v105 = &v88 - v12;
  result = sub_1C1DF7B9C(MEMORY[0x1E69E7CC0]);
  if (a1 >> 62)
  {
    v77 = result;
    v14 = sub_1C1E54ACC();
    result = v77;
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v100 = v14;
  v99 = a1;
  v89 = v6;
  v104 = v2;
  v97 = result;
  if (v14)
  {
    if (v14 >= 1)
    {
      v106 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph___observationRegistrar;
      v15 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphColors;
      v96 = a1 & 0xC000000000000001;
      swift_beginAccess();
      v16 = 0;
      v102 = (v94 + 8);
      v95 = (v94 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v101 = v15;
      while (1)
      {
        if (v96)
        {
          v18 = MEMORY[0x1C6910730](v16, a1);
        }

        else
        {
          v18 = *(a1 + 8 * v16 + 32);
        }

        v19 = v107;
        v20 = *(v18 + 16);
        sub_1C1E53C9C();
        swift_getKeyPath();
        v110 = v2;
        sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
        sub_1C1E520BC();

        v21 = *(v2 + v15);
        if (!*(v21 + 16))
        {
          goto LABEL_15;
        }

        v22 = *(v2 + v15);

        v23 = sub_1C1E33C94(v105);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v25 = *(*(v21 + 56) + 8 * v23);
        v26 = *v102;

        v26(v105, v19);

        v27 = *(v18 + 16);
        v28 = v98;
        sub_1C1E53C9C();
        v29 = v97;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v110 = v29;
        sub_1C1E343A0(v25, v28, isUniquelyReferenced_nonNull_native);
        v26(v28, v19);
        v97 = v110;
LABEL_16:
        v31 = *(v18 + 16);
        v32 = v103;
        sub_1C1E53C9C();
        swift_getKeyPath();
        v2 = v104;
        v110 = v104;
        sub_1C1E520BC();

        v110 = v2;
        swift_getKeyPath();
        sub_1C1E520DC();

        v15 = v101;
        swift_beginAccess();
        v33 = *(v2 + v15);
        v34 = sub_1C1E33C94(v32);
        if (v35)
        {
          v36 = v34;
          v37 = *(v2 + v15);
          v38 = swift_isUniquelyReferenced_nonNull_native();
          v39 = *(v2 + v15);
          v109 = v39;
          *(v2 + v15) = 0x8000000000000000;
          v40 = v107;
          if (!v38)
          {
            v45 = v107;
            sub_1C1E50B9C();
            v40 = v45;
            v39 = v109;
          }

          v26(*(v39 + 48) + *(v94 + 72) * v36, v40);
          v41 = *(*(v39 + 56) + 8 * v36);
          sub_1C1E34080(v36, v39);
          *(v2 + v15) = v39;
          v42 = v107;
        }

        else
        {
          v42 = v107;
        }

        v26(v103, v42);
        swift_endAccess();
        v110 = v2;
        swift_getKeyPath();
        sub_1C1E520CC();

        swift_getKeyPath();
        v110 = v18;
        sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression);
        sub_1C1E520BC();

        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v44 = Strong;

          v17 = v44 == v2;
        }

        else
        {
          v17 = 0;
        }

        v14 = v100;
        a1 = v99;
        ++v16;
        *(v18 + 32) = v17;

        if (v14 == v16)
        {
          goto LABEL_23;
        }
      }

LABEL_15:
      v26 = *v102;
      (*v102)(v105, v19);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_23:
  swift_getKeyPath();
  v46 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph___observationRegistrar;
  v110 = v2;
  v47 = sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  v96 = v46;
  v95 = v47;
  sub_1C1E520BC();

  v48 = *(v2 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions);
  if (v48 >> 62)
  {
    if (v48 < 0)
    {
      v78 = *(v2 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions);
    }

    v79 = *(v2 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions);
    result = sub_1C1E54ACC();
    v48 = v79;
    v49 = result;
    v50 = &unk_1EDE75000;
    if (result)
    {
      goto LABEL_25;
    }

LABEL_53:
    v101 = 0;
    if (!v14)
    {
      goto LABEL_69;
    }

    goto LABEL_54;
  }

  v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v50 = &unk_1EDE75000;
  if (!v49)
  {
    goto LABEL_53;
  }

LABEL_25:
  if (v49 < 1)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return result;
  }

  v92 = v50[35];
  v88 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph_id;
  v91 = v48 & 0xC000000000000001;
  v90 = (v94 + 8);
  v51 = v48;

  v52 = v51;
  v53 = 0;
  v101 = 0;
  v94 = v51;
  v93 = v49;
  do
  {
    v106 = v53;
    if (v91)
    {
      v56 = MEMORY[0x1C6910730]();
    }

    else
    {
      v56 = *(v52 + 8 * v53 + 32);
    }

    *(v56 + 32) = 0;
    swift_getKeyPath();
    v57 = OBJC_IVAR____TtC11CalculateUI24CalculateGraphExpression___observationRegistrar;
    v109 = v56;
    v58 = sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression);
    sub_1C1E520BC();

    swift_beginAccess();
    v59 = *(v56 + 24);
    v105 = v57;
    v103 = v58;
    if (!v59)
    {
      v62 = *(v56 + 16);
      v63 = v89;
      sub_1C1E53C9C();
      if (*(v97 + 16))
      {
        v64 = v97;
        v65 = sub_1C1E33C94(v63);
        v61 = v90;
        v66 = *v90;
        if (v67)
        {
          v60 = *(*(v64 + 56) + 8 * v65);

          v66(v63, v107);
LABEL_39:

          goto LABEL_40;
        }
      }

      else
      {
        v61 = v90;
        v66 = *v90;
      }

      v66(v89, v107);
      v60 = sub_1C1E33088();
      goto LABEL_39;
    }

    v60 = v59;
    v61 = v90;
LABEL_40:
    v68 = *(v56 + 16);
    swift_retain_n();
    v69 = v98;
    sub_1C1E53C9C();
    swift_getKeyPath();
    v70 = v104;
    v109 = v104;
    sub_1C1E520BC();

    v109 = v70;
    swift_getKeyPath();
    sub_1C1E520DC();

    v71 = v92;
    swift_beginAccess();
    v72 = *(v70 + v71);
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v108 = *(v70 + v71);
    *(v70 + v71) = 0x8000000000000000;
    v102 = v60;
    sub_1C1E343A0(v60, v69, v73);
    (*v61)(v69, v107);
    *(v70 + v71) = v108;
    swift_endAccess();
    v109 = v70;
    swift_getKeyPath();
    sub_1C1E520CC();

    swift_getKeyPath();
    v109 = v56;
    sub_1C1E520BC();

    swift_beginAccess();
    v74 = swift_weakLoadStrong();
    if (v74 && (v75 = v74, , v75 == v70))
    {
    }

    else
    {
      if (!swift_weakLoadStrong() || (v76 = sub_1C1E51F7C(), , (v76 & 1) == 0))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v88 - 2) = v56;
        *(&v88 - 1) = v70;
        v109 = v56;
        v55 = v101;
        sub_1C1E520AC();
        v101 = v55;

        goto LABEL_28;
      }

      swift_weakAssign();
    }

LABEL_28:
    v53 = v106 + 1;
    v52 = v94;
  }

  while (v93 != v106 + 1);

  v14 = v100;
  if (!v100)
  {
    goto LABEL_69;
  }

LABEL_54:
  if (v14 < 1)
  {
    goto LABEL_72;
  }

  if ((v99 & 0xC000000000000001) != 0)
  {
    v80 = 0;
    while (1)
    {
      v81 = MEMORY[0x1C6910730](v80, v99);
      if (*(v81 + 32) == 1)
      {
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {

          v82 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v82);
          *(&v88 - 2) = v81;
          *(&v88 - 1) = 0;
          v108 = v81;
          sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression);
          v83 = v101;
          sub_1C1E520AC();
          v101 = v83;
          swift_unknownObjectRelease();

          goto LABEL_59;
        }

        swift_weakAssign();
      }

      swift_unknownObjectRelease();
LABEL_59:
      if (v100 == ++v80)
      {
        goto LABEL_69;
      }
    }
  }

  v84 = (v99 + 32);
  do
  {
    v85 = *v84;
    if (*(*v84 + 32) == 1)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {

        v86 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v86);
        *(&v88 - 2) = v85;
        *(&v88 - 1) = 0;
        v108 = v85;
        sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression);
        v87 = v101;
        sub_1C1E520AC();
        v101 = v87;
      }

      else
      {
        swift_weakAssign();
      }
    }

    ++v84;
    --v14;
  }

  while (v14);
LABEL_69:
  sub_1C1E33630();
}

uint64_t sub_1C1E32F20(void (*a1)(void))
{
  sub_1C1E36158();

  a1(0);
}

uint64_t sub_1C1E32FA8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C1E36158();
  swift_getKeyPath();
  sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel);

  sub_1C1E520BC();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v3 + v4);

  return v5;
}

uint64_t sub_1C1E33088()
{
  v1 = v0;
  v49[12] = *MEMORY[0x1E69E9840];
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph___observationRegistrar;
  v49[0] = v0;
  v3 = sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  v4 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphColors;
  swift_beginAccess();
  v5 = *(v0 + v4);

  v7 = sub_1C1E33518(v6);
  if (qword_1EBF1C158 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v8 = qword_1EBF20D88;
    if (!*(qword_1EBF20D88 + 16))
    {
      break;
    }

    v9 = 0;
    v10 = qword_1EBF20D88 + 32;
    v45 = v7 + 56;
    v44 = v7;
    v38 = v2;
    v39 = v1;
    v36 = v4;
    v37 = v3;
    v41 = *(qword_1EBF20D88 + 16);
    v42 = qword_1EBF20D88;
    v40 = qword_1EBF20D88 + 32;
    while (1)
    {
      if (v9 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      v43 = v9;
      v11 = *(v10 + 8 * v9);
      if (!*(v7 + 16))
      {
        break;
      }

      v12 = *(v7 + 40);
      sub_1C1E54D7C();

      sub_1C1E5359C();
      v13 = sub_1C1E54DAC();
      v14 = -1 << *(v7 + 32);
      v15 = v13 & ~v14;
      if (((*(v45 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_12;
      }

      v16 = ~v14;
      while (1)
      {
        v17 = *(*(v7 + 48) + 8 * v15);

        v18 = sub_1C1E5354C();

        if (v18)
        {
          break;
        }

        v15 = (v15 + 1) & v16;
        if (((*(v45 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

LABEL_26:
      v9 = v43 + 1;

      v8 = v42;
      v10 = v40;
      if (v43 + 1 == v41)
      {
        goto LABEL_27;
      }
    }

    v19 = *(v10 + 8 * v9);

LABEL_12:
    swift_getKeyPath();
    v49[0] = v1;
    sub_1C1E520BC();

    v4 = *(v1 + v4);
    v20 = 1 << *(v4 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v4 + 64);
    v23 = (v20 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v1 = 0;
    while (v22)
    {
LABEL_21:
      v2 = *(*(v4 + 56) + ((v1 << 9) | (8 * __clz(__rbit64(v22)))));
      v48 = 0.0;
      v49[0] = 0;
      v22 &= v22 - 1;
      v46 = 0.0;
      v47 = 0.0;
      sub_1C1DF1D54();
      swift_retain_n();
      v3 = sub_1C1E5499C();
      [v3 getRed:v49 green:&v48 blue:&v47 alpha:&v46];

      v25 = v48;
      v26 = *v49;
      v27 = v46;
      v28 = v47;
      v48 = 0.0;
      v49[0] = 0;
      v46 = 0.0;
      v47 = 0.0;

      v29 = sub_1C1E5499C();
      [v29 getRed:v49 green:&v48 blue:&v47 alpha:&v46];

      v31 = v48;
      v30 = *v49;
      v32 = v46;
      v33 = v47;

      v7 = v44;
      if (vabdd_f64(v26, v30) <= 0.07 && vabdd_f64(v25, v31) <= 0.07 && vabdd_f64(v28, v33) <= 0.07 && vabdd_f64(v27, v32) <= 0.07)
      {

        v2 = v38;
        v1 = v39;
        v4 = v36;
        v3 = v37;
        goto LABEL_26;
      }
    }

    while (1)
    {
      v24 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v24 >= v23)
      {

        goto LABEL_30;
      }

      v22 = *(v4 + 64 + 8 * v24);
      ++v1;
      if (v22)
      {
        v1 = v24;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

LABEL_27:

  if (qword_1EBF1C160 != -1)
  {
LABEL_34:
    swift_once();
  }

  v11 = qword_1EBF20D90;

LABEL_30:
  v34 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t sub_1C1E33518(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1C1E3872C();
  result = MEMORY[0x1C69104B0](v2, MEMORY[0x1E69815C0], v3);
  v5 = 0;
  v14 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = )
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a1 + 56) + ((v10 << 9) | (8 * v11)));

    sub_1C1E34774(&v13, v12);
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v14;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1E33630()
{
  swift_getKeyPath();
  v9 = v0;
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  v1 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel;
  v2 = *(v0 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel);
  swift_getKeyPath();
  v9 = v0;

  sub_1C1E520BC();

  v3 = *(v0 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions);
  swift_getKeyPath();

  sub_1C1E520BC();

  v4 = *(v0 + v1);
  v5 = *(v4 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);

  [v5 lock];
  swift_getKeyPath();
  v9 = v4;
  sub_1C1DC4DF8(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v6 = *(v4 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  [v5 unlock];

  LOBYTE(v9) = 2;
  v7 = sub_1C1E35BDC(v3, v6, &v9, 1);

  sub_1C1E235A0(v7);
}

uint64_t sub_1C1E33874(uint64_t a1)
{
  v2 = sub_1C1E51F9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*a1 + 16);
  sub_1C1E53C9C();
  LOBYTE(v7) = sub_1C1E51F7C();
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

uint64_t CalculateGraph.deinit()
{
  v1 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph_id;
  v2 = sub_1C1E51F9C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions);

  v4 = *(v0 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphColors);

  v5 = *(v0 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel);

  v6 = *(v0 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__animation);

  v7 = *(v0 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__bounds);

  v8 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph___observationRegistrar;
  v9 = sub_1C1E520FC();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t CalculateGraph.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph_id;
  v2 = sub_1C1E51F9C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions);

  v4 = *(v0 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphColors);

  v5 = *(v0 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel);

  v6 = *(v0 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__animation);

  v7 = *(v0 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__bounds);

  v8 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph___observationRegistrar;
  v9 = sub_1C1E520FC();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(*v0 + 48);
  v11 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C1E33B84@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph_id;
  v5 = sub_1C1E51F9C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1C1E33C00(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1C1E51F7C();
}

unint64_t sub_1C1E33C1C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1C1E54D7C();
  sub_1C1E5468C();
  v6 = sub_1C1E54DAC();

  return sub_1C1E33D98(a1, a2, v6);
}

unint64_t sub_1C1E33C94(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1C1E51F9C();
  sub_1C1DC4DF8(&qword_1EDE750A0, MEMORY[0x1E69695A8]);
  v5 = sub_1C1E5453C();

  return sub_1C1E33E50(a1, v5);
}

unint64_t sub_1C1E33D2C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1C1E54D7C();
  MEMORY[0x1C6910960](a1);
  v4 = sub_1C1E54DAC();

  return sub_1C1E34010(a1, v4);
}

unint64_t sub_1C1E33D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1C1E54D2C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C1E33E50(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1C1E51F9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1C1DC4DF8(&qword_1EBF1D610, MEMORY[0x1E69695A8]);
      v16 = sub_1C1E545AC();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1C1E34010(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_1C1E34080(int64_t a1, uint64_t a2)
{
  v41 = sub_1C1E51F9C();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = sub_1C1E54A7C();
    v13 = v41;
    v6 = v42;
    v14 = v11;
    v39 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v37 = a2 + 64;
    v38 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v23 = v6;
      v38(v40, *(v6 + 48) + v17 * v10, v13);
      v24 = *(v23 + 40);
      sub_1C1DC4DF8(&qword_1EDE750A0, MEMORY[0x1E69695A8]);
      v25 = sub_1C1E5453C();
      (*v36)(v20, v13);
      v14 = v21;
      v26 = v25 & v21;
      if (a1 >= v39)
      {
        if (v26 >= v39 && a1 >= v26)
        {
LABEL_15:
          v6 = v42;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, *(v42 + 48) + v18 * a1 >= (*(v42 + 48) + v19 + v18)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v29 = *(v6 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v10);
          if (a1 != v10 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v39 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }
}

uint64_t sub_1C1E343A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1C1E51F9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1C1E33C94(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1C1E50B9C();
      goto LABEL_7;
    }

    sub_1C1E50318(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_1C1E33C94(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1C1E3456C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1C1E54D4C();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_1C1E3456C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1C1E51F9C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1C1E34624(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1C1E54D7C();
  sub_1C1E5468C();
  v9 = sub_1C1E54DAC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1C1E54D2C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1C1E34D64(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1C1E34774(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_1C1E54D7C();
  sub_1C1E5359C();
  v8 = sub_1C1E54DAC();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);

      v13 = sub_1C1E5354C();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v6 + 48) + 8 * v10);

    return 0;
  }

  else
  {
LABEL_5:
    v14 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1C1E34EE4(v16, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_1C1E348B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D760, &qword_1C1E5AE10);
  result = sub_1C1E54B1C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1C1E54D7C();
      sub_1C1E5468C();
      result = sub_1C1E54DAC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1C1E34B14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D748, &qword_1C1E5A0B8);
  result = sub_1C1E54B1C();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1C1E54D7C();
      sub_1C1E5359C();
      result = sub_1C1E54DAC();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1C1E34D64(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1C1E348B4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1C1E35054();
      goto LABEL_16;
    }

    sub_1C1E35300(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1C1E54D7C();
  sub_1C1E5468C();
  result = sub_1C1E54DAC();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1C1E54D2C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1C1E54D3C();
  __break(1u);
  return result;
}

uint64_t sub_1C1E34EE4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C1E34B14(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1C1E351B0();
      goto LABEL_12;
    }

    sub_1C1E35538(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_1C1E54D7C();
  sub_1C1E5359C();
  result = sub_1C1E54DAC();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v9 + 48) + 8 * a2);

      v14 = sub_1C1E5354C();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = v6;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C1E54D3C();
  __break(1u);
  return result;
}

void *sub_1C1E35054()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D760, &qword_1C1E5AE10);
  v2 = *v0;
  v3 = sub_1C1E54B0C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C1E351B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D748, &qword_1C1E5A0B8);
  v2 = *v0;
  v3 = sub_1C1E54B0C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1C1E35300(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D760, &qword_1C1E5AE10);
  result = sub_1C1E54B1C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1C1E54D7C();

      sub_1C1E5468C();
      result = sub_1C1E54DAC();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1C1E35538(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D748, &qword_1C1E5A0B8);
  result = sub_1C1E54B1C();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1C1E54D7C();

      sub_1C1E5359C();
      result = sub_1C1E54DAC();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1C1E35760(uint64_t a1, uint64_t a2)
{
  v59 = sub_1C1E51F9C();
  v54 = *(v59 - 8);
  v4 = *(v54 + 64);
  v5 = MEMORY[0x1EEE9AC00](v59);
  v55 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v53 = v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D750, &qword_1C1E5A0E8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v56 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v52 = v49 - v13;
  v14 = 0;
  v50 = a1;
  v17 = *(a1 + 64);
  v16 = a1 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v49[0] = v16;
  v49[1] = v54 + 16;
  v57 = (v54 + 32);
  v51 = (v54 + 8);
  while (v20)
  {
    v58 = (v20 - 1) & v20;
    v22 = __clz(__rbit64(v20)) | (v14 << 6);
LABEL_16:
    v27 = v50;
    v28 = v53;
    v29 = v54;
    v30 = v59;
    (*(v54 + 16))(v53, *(v50 + 48) + *(v54 + 72) * v22, v59);
    v31 = *(*(v27 + 56) + 8 * v22);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D758, &qword_1C1E5A0F0);
    v33 = *(v32 + 48);
    v34 = *(v29 + 32);
    v35 = v56;
    v34(v56, v28, v30);
    *(v35 + v33) = v31;
    (*(*(v32 - 8) + 56))(v35, 0, 1, v32);

LABEL_17:
    v36 = v52;
    sub_1C1E387F8(v35, v52);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D758, &qword_1C1E5A0F0);
    v38 = (*(*(v37 - 8) + 48))(v36, 1, v37);
    v39 = v38 == 1;
    if (v38 == 1)
    {
      return v39;
    }

    v40 = *(v37 + 48);
    v41 = v55;
    v42 = v59;
    (*v57)(v55, v36, v59);
    v43 = *(v36 + v40);
    v44 = sub_1C1E33C94(v41);
    LOBYTE(v40) = v45;
    (*v51)(v41, v42);
    if ((v40 & 1) == 0)
    {

      return 0;
    }

    v46 = *(*(a2 + 56) + 8 * v44);

    v47 = sub_1C1E5354C();

    v20 = v58;
    if ((v47 & 1) == 0)
    {
      return v39;
    }
  }

  if (v21 <= v14 + 1)
  {
    v23 = v14 + 1;
  }

  else
  {
    v23 = v21;
  }

  v24 = v23 - 1;
  while (1)
  {
    v25 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v25 >= v21)
    {
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D758, &qword_1C1E5A0F0);
      v35 = v56;
      (*(*(v48 - 8) + 56))(v56, 1, 1, v48);
      v58 = 0;
      v14 = v24;
      goto LABEL_17;
    }

    v26 = *(v49[0] + 8 * v25);
    ++v14;
    if (v26)
    {
      v58 = (v26 - 1) & v26;
      v22 = __clz(__rbit64(v26)) | (v25 << 6);
      v14 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1E35BDC(unint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v57 = a4;
  v59 = a1;
  v6 = sub_1C1E53B6C();
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v53 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v52 - v10;
  v65 = sub_1C1E51F9C();
  v11 = *(v65 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Function();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v64 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v52 - v20;
  v58 = *a3;
  v67 = sub_1C1DF7994(MEMORY[0x1E69E7CC0]);
  v22 = *(a2 + 16);
  if (v22)
  {
    v23 = a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v24 = *(v16 + 72);
    v62 = *(v15 + 48);
    v63 = (v11 + 16);
    v60 = v11;
    v61 = (v11 + 8);
    do
    {
      sub_1C1DE160C(v23, v21);
      v25 = *v63;
      (*v63)(v14, &v21[v62], v65);
      sub_1C1DF7E98(v21, v64);
      v26 = v67;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v26;
      v29 = sub_1C1E33C94(v14);
      v30 = *(v26 + 16);
      v31 = (v28 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        v41 = sub_1C1E54ACC();
        goto LABEL_19;
      }

      v16 = v28;
      if (*(v26 + 24) >= v32)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v35 = v66;
          if (v28)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_1C1E50878();
          v35 = v66;
          if (v16)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_1C1E4FE78(v32, isUniquelyReferenced_nonNull_native);
        v33 = sub_1C1E33C94(v14);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_37;
        }

        v29 = v33;
        v35 = v66;
        if (v16)
        {
LABEL_3:
          sub_1C1E388C0(v64, v35[7] + v29 * v24);
          (*v61)(v14, v65);
          goto LABEL_4;
        }
      }

      v35[(v29 >> 6) + 8] |= 1 << v29;
      v16 = v60;
      v36 = v65;
      v25((v35[6] + *(v60 + 72) * v29), v14, v65);
      sub_1C1DF7E98(v64, v35[7] + v29 * v24);
      (*(v16 + 8))(v14, v36);
      v37 = v35[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_33;
      }

      v35[2] = v39;
LABEL_4:
      v67 = v35;
      v23 += v24;
      --v22;
    }

    while (v22);
  }

  v40 = v58;
  if (v58 != 2)
  {
    v16 = v59;
LABEL_31:
    v50 = sub_1C1E28F4C(v16, &v67, v40 & 1, v57 & 1);

    return v50;
  }

  v16 = v59;
  if (v59 >> 62)
  {
    goto LABEL_34;
  }

  v41 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:
  v43 = v55;
  v42 = v56;
  v44 = v54;
  if (!v41)
  {
    v48 = *MEMORY[0x1E69920D0];
    (*(v55 + 104))(v54, *MEMORY[0x1E69920D0], v56);
LABEL_26:
    v49 = (*(v43 + 88))(v44, v42);
    if (v49 != v48)
    {
      if (v49 == *MEMORY[0x1E69920D8])
      {
        v40 = 1;
        goto LABEL_31;
      }

      (*(v43 + 8))(v44, v42);
    }

    v40 = 0;
    goto LABEL_31;
  }

  if ((v16 & 0xC000000000000001) != 0)
  {
    v45 = MEMORY[0x1C6910730](0, v16);
    goto LABEL_23;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v45 = *(v16 + 32);

LABEL_23:
    v46 = *(v45 + 16);
    v47 = v53;
    sub_1C1E53C6C();

    (*(v43 + 32))(v44, v47, v42);
    v48 = *MEMORY[0x1E69920D0];
    goto LABEL_26;
  }

  __break(1u);
LABEL_37:
  result = sub_1C1E54D4C();
  __break(1u);
  return result;
}

uint64_t sub_1C1E36158()
{
  swift_getKeyPath();
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  if (*(v0 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__needsUpdate) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E520AC();

    sub_1C1E33630();
  }

  swift_getKeyPath();
  sub_1C1E520BC();

  return *(v0 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel);
}

uint64_t sub_1C1E3637C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  result = sub_1C1E2A918();
  *a1 = result;
  return result;
}

void (*sub_1C1E363C0(uint64_t a1, uint64_t a2))(_BYTE *, void)
{
  v3 = v2;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  swift_weakInit();
  sub_1C1E520EC();
  *(v3 + 16) = a1;

  result = sub_1C1E53C0C();
  if (!__OFADD__(*v7, 1))
  {
    ++*v7;
    result(v10, 0);
    swift_beginAccess();
    if (*(v3 + 24))
    {
      if (a2)
      {

        v8 = sub_1C1E5354C();

        if (v8)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      if (!a2)
      {
LABEL_9:
        sub_1C1E29AE8(a2);
        goto LABEL_10;
      }
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DC4DF8(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression);
    sub_1C1E520AC();

LABEL_10:
    sub_1C1E5209C();
    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C1E365DC()
{
  result = qword_1EBF1D638;
  if (!qword_1EBF1D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D638);
  }

  return result;
}

unint64_t sub_1C1E36630()
{
  result = qword_1EBF1D640;
  if (!qword_1EBF1D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D640);
  }

  return result;
}

unint64_t sub_1C1E36684()
{
  result = qword_1EBF1D648;
  if (!qword_1EBF1D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D648);
  }

  return result;
}

uint64_t keypath_set_19Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

unint64_t sub_1C1E36758()
{
  result = qword_1EBF1D678;
  if (!qword_1EBF1D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D678);
  }

  return result;
}

unint64_t sub_1C1E367C8()
{
  result = qword_1EBF1D690;
  if (!qword_1EBF1D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D690);
  }

  return result;
}

unint64_t sub_1C1E3681C()
{
  result = qword_1EBF1D698;
  if (!qword_1EBF1D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D698);
  }

  return result;
}

unint64_t sub_1C1E36870()
{
  result = qword_1EBF1D6A8;
  if (!qword_1EBF1D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D6A8);
  }

  return result;
}

unint64_t sub_1C1E368C4()
{
  result = qword_1EBF1D6B8;
  if (!qword_1EBF1D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D6B8);
  }

  return result;
}

uint64_t sub_1C1E36918(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D3F0, &qword_1C1E58AB8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1E36984()
{
  result = qword_1EBF1D6C8;
  if (!qword_1EBF1D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D6C8);
  }

  return result;
}

uint64_t sub_1C1E369D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079546870617267 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C1E54D2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F427369784178 && a2 == 0xEB0000000073646ELL || (sub_1C1E54D2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F427369784179 && a2 == 0xEB0000000073646ELL || (sub_1C1E54D2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F42736978417ALL && a2 == 0xEB0000000073646ELL || (sub_1C1E54D2C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1702063984 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1C1E54D2C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1C1E36B84(unint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v12 = v11;
  v96 = a5;
  v97 = sub_1C1E5232C();
  v100 = *(v97 - 8);
  v23 = v100[8];
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v98 = &v92 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v92 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v99 = &v92 - v31;
  v32 = sub_1C1E53B6C();
  v93 = *(v32 - 8);
  v33 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v92 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *a2;
  v38 = *a3;
  v37 = *(a3 + 8);
  LODWORD(v94) = *(a3 + 16);
  sub_1C1E51F8C();
  v39 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions;
  v40 = MEMORY[0x1E69E7CC0];
  *(v12 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions) = MEMORY[0x1E69E7CC0];
  *(v12 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphColors) = sub_1C1DF7B9C(v40);
  *(v12 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__needsUpdate) = 1;
  *(v12 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType) = 0;
  v41 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__animation;
  *(v12 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__animation) = 0;
  *(v12 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__bounds) = 0;
  sub_1C1E520EC();
  v42 = *(v12 + v39);

  *(v12 + v39) = a1;
  v43 = *(v12 + v41);

  *(v12 + v41) = a4;
  if (a1 >> 62)
  {
    result = sub_1C1E54ACC();
    if (!result)
    {
      goto LABEL_11;
    }

LABEL_3:
    if ((a1 & 0xC000000000000001) != 0)
    {
      v45 = MEMORY[0x1C6910730](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v45 = *(a1 + 32);
    }

    v46 = *(v45 + 16);
    sub_1C1E53C6C();

    v47 = v93;
    v48 = (*(v93 + 88))(v35, v32);
    if (v48 != *MEMORY[0x1E69920D0])
    {
      if (v48 == *MEMORY[0x1E69920D8])
      {
        v36 = 1;
        goto LABEL_11;
      }

      (*(v47 + 8))(v35, v32);
    }

    v36 = 0;
    goto LABEL_11;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    goto LABEL_3;
  }

LABEL_11:
  *(v12 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType) = v36;
  if (v94)
  {
    sub_1C1E5231C();
  }

  else
  {
    SPAngleMakeWithDegrees(v38);
    SPAngleMakeWithDegrees(v37);
    sub_1C1E522FC();
  }

  v49 = v100;
  v92 = v100[4];
  v50 = v99;
  v51 = v29;
  v52 = v97;
  v92(v99, v51, v97);
  v102[0] = 2;
  v53 = MEMORY[0x1E69E7CC0];
  v93 = sub_1C1E35BDC(a1, MEMORY[0x1E69E7CC0], v102, 0);

  v94 = v49[2];
  v94(v98, v50, v52);
  v54 = type metadata accessor for GraphViewModel();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  v57 = swift_allocObject();
  *(v57 + 16) = 0;
  sub_1C1E51F3C();
  *(v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterX) = 0;
  *(v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterY) = 0;
  *(v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomCenterZ) = 0;
  *(v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakX) = 0x4008000000000000;
  *(v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakY) = 0x4008000000000000;
  *(v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_cachedZoomTweakZ) = 0x4008000000000000;
  *(v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) = 0;
  *(v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom) = 0x3FF0000000000000;
  *(v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX) = 0;
  *(v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY) = 0;
  *(v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ) = 0;
  *(v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatio) = 0x3FE0000000000000;
  *(v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioY) = 0x3FE0000000000000;
  *(v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatioZ) = 0x3FE0000000000000;
  *(v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX) = 0x4008000000000000;
  *(v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY) = 0x4008000000000000;
  *(v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ) = 0x4008000000000000;
  v58 = v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__plotRect;
  *v58 = 0u;
  *(v58 + 16) = 0u;
  *(v58 + 32) = 1;
  *(v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter) = 0;
  *(v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowEqualizeAxes) = 0;
  *(v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowCenterOrigin) = 0;
  v59 = v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_xDragStartPlottable;
  *v59 = 0;
  *(v59 + 8) = 1;
  v60 = v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_yDragStartPlottable;
  *v60 = 0;
  *(v60 + 8) = 1;
  v61 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_lock;
  *(v57 + v61) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v62 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock;
  *(v57 + v62) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions) = v53;
  v63 = (v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___xAxisLabel);
  *v63 = 0;
  v63[1] = 0;
  v64 = (v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___yAxisLabel);
  *v64 = 0;
  v64[1] = 0;
  v65 = (v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___zAxisLabel);
  *v65 = 0;
  v65[1] = 0;
  v66 = v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
  *v66 = 0;
  *(v66 + 8) = 0;
  *(v66 + 16) = 1;
  v67 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartProxy;
  v68 = sub_1C1E522DC();
  (*(*(v68 - 8) + 56))(v57 + v67, 1, 1, v68);
  v69 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__selectedFunctionID3D;
  v70 = sub_1C1E51F9C();
  (*(*(v70 - 8) + 56))(v57 + v69, 1, 1, v70);
  *(v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_baseAxesIntervals) = &unk_1F41870E8;
  *(v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__isAnimatingFunction) = 0;
  v71 = v95;
  sub_1C1E5231C();
  v72 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose;
  v73 = v92;
  v92((v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartPose), v71, v52);
  sub_1C1E520EC();
  v74 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions;
  v75 = *(v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  *(v57 + v74) = v93;
  v76 = (v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialXAxisBounds);
  *v76 = a6;
  v76[1] = a7;
  v77 = (v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialYAxisBounds);
  *v77 = a8;
  v77[1] = a9;
  v78 = (v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__initialZAxisBounds);
  *v78 = a10;
  v78[1] = a11;
  v79 = v98;
  v94(v71, v98, v52);
  v80 = v100[1];
  v80(v57 + v72, v52);
  v73(v57 + v72, v71, v52);
  *(v57 + 17) = v96 & 1;
  *(v57 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__graphType) = 1;
  v81 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
  swift_beginAccess();
  *(v57 + v81) = (a6 + a7) * 0.5;
  v82 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
  swift_beginAccess();
  *(v57 + v82) = (a8 + a9) * 0.5;
  v83 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterZ;
  swift_beginAccess();
  *(v57 + v83) = (a10 + a11) * 0.5;
  v84 = sqrt(a7 - a6);
  v85 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
  swift_beginAccess();
  *(v57 + v85) = v84;
  v86 = sqrt(a9 - a8);
  v87 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
  swift_beginAccess();
  *(v57 + v87) = v86;
  v88 = sqrt(a11 - a10);
  v89 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakZ;
  swift_beginAccess();
  *(v57 + v89) = v88;
  sub_1C1E1A2C0();
  v80(v79, v52);
  *(v12 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel) = v57;
  type metadata accessor for CalculateGraph.Bounds();
  swift_allocObject();

  v90 = sub_1C1E03FC4();

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v92 - 2) = v12;
  *(&v92 - 1) = v90;
  v101 = v12;
  sub_1C1DC4DF8(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520AC();

  sub_1C1E3205C(MEMORY[0x1E69E7CC0]);

  v80(v99, v52);
  return v12;
}

unint64_t sub_1C1E376A8()
{
  result = qword_1EBF1D6D0;
  if (!qword_1EBF1D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D6D0);
  }

  return result;
}

uint64_t sub_1C1E37714()
{
  result = sub_1C1E520FC();
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

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1C1E38018(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[81])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C1E3805C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalculateGraph.ViewState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CalculateGraph.ViewState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C1E3825C()
{
  result = qword_1EBF1D6D8;
  if (!qword_1EBF1D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D6D8);
  }

  return result;
}

unint64_t sub_1C1E382B4()
{
  result = qword_1EBF1D6E0;
  if (!qword_1EBF1D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D6E0);
  }

  return result;
}

unint64_t sub_1C1E3830C()
{
  result = qword_1EBF1D6E8;
  if (!qword_1EBF1D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D6E8);
  }

  return result;
}

unint64_t sub_1C1E38364()
{
  result = qword_1EBF1D6F0;
  if (!qword_1EBF1D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D6F0);
  }

  return result;
}

unint64_t sub_1C1E383BC()
{
  result = qword_1EBF1D6F8;
  if (!qword_1EBF1D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D6F8);
  }

  return result;
}

unint64_t sub_1C1E38414()
{
  result = qword_1EBF1D700;
  if (!qword_1EBF1D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D700);
  }

  return result;
}

unint64_t sub_1C1E3846C()
{
  result = qword_1EBF1D708;
  if (!qword_1EBF1D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D708);
  }

  return result;
}

unint64_t sub_1C1E384C4()
{
  result = qword_1EBF1D710;
  if (!qword_1EBF1D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D710);
  }

  return result;
}

unint64_t sub_1C1E3851C()
{
  result = qword_1EBF1D718;
  if (!qword_1EBF1D718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D718);
  }

  return result;
}

unint64_t sub_1C1E38574()
{
  result = qword_1EBF1D720;
  if (!qword_1EBF1D720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D720);
  }

  return result;
}

unint64_t sub_1C1E385CC()
{
  result = qword_1EBF1D728;
  if (!qword_1EBF1D728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D728);
  }

  return result;
}

unint64_t sub_1C1E38624()
{
  result = qword_1EBF1D730;
  if (!qword_1EBF1D730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D730);
  }

  return result;
}

unint64_t sub_1C1E3867C()
{
  result = qword_1EBF1D738;
  if (!qword_1EBF1D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D738);
  }

  return result;
}

uint64_t sub_1C1E386D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

unint64_t sub_1C1E3872C()
{
  result = qword_1EBF1D740;
  if (!qword_1EBF1D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D740);
  }

  return result;
}

uint64_t sub_1C1E38780()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel);
  *(v1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel) = *(v0 + 24);
}

uint64_t sub_1C1E387F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D750, &qword_1C1E5A0E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1E38868()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  return swift_weakAssign();
}

uint64_t sub_1C1E388C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Function();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1E38934()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__bounds);
  *(v1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__bounds) = *(v0 + 24);
}

uint64_t sub_1C1E38978()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions);
  *(v1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions) = *(v0 + 24);

  sub_1C1E2BD04(v2);
}

uint64_t (*sub_1C1E389F4())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1C1E38A4C;
}

uint64_t sub_1C1E38A54()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  return sub_1C1E29AE8(v3);
}

uint64_t CalculateExpressionTypesetImage(expression:fontSize:)(uint64_t a1, double a2)
{
  v4 = sub_1C1E53D7C();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 formattedResult];

    v7 = sub_1C1E545FC();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = _s11CalculateUI0A22ExpressionTypesetImage10expression6result10showResult8fontSize05SwiftB00E0V0A00aC0C_SSSgSb12CoreGraphics7CGFloatVtF_0(a1, v7, v9, 1, a2);

  return v10;
}

uint64_t _s11CalculateUI0A22ExpressionTypesetImage10expression6result10showResult8fontSize05SwiftB00E0V0A00aC0C_SSSgSb12CoreGraphics7CGFloatVtF_0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v9 = a3;
  if (!a3)
  {
    v10 = sub_1C1E53D7C();
    if (v10)
    {
      v11 = v10;
      v12 = [v10 formattedResult];

      a2 = sub_1C1E545FC();
      v9 = v13;
    }

    else
    {
      a2 = 0;
      v9 = 0;
    }
  }

  LOBYTE(v21) = 1;
  LOBYTE(v18) = a4 & 1;
  LOBYTE(v19) = sub_1C1E5300C();
  LOBYTE(v20) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D768, &qword_1C1E5A0F8);
  sub_1C1E5289C();
  v14 = objc_opt_self();

  v15 = [v14 mainScreen];
  [v15 scale];

  sub_1C1E5288C();

  result = sub_1C1E5287C();
  if (result)
  {
    v17 = sub_1C1E5369C();

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for TypesetCanvasView()
{
  result = qword_1EBF1D770;
  if (!qword_1EBF1D770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1E38E30()
{
  result = sub_1C1E5226C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C1E38EC0(void *a1)
{
  v2 = sub_1C1E521BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1;
  sub_1C1E521AC();
  sub_1C1E5221C();
  sub_1C1E5220C();
  sub_1C1E5224C();
  sub_1C1E521CC();
  return (*(v3 + 8))(v6, v2);
}

double sub_1C1E38FE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C1E52C1C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C1E13EE8(v2, v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  sub_1C1E13E84(v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  (*(v6 + 104))(v9, *MEMORY[0x1E697F3A0], v5);
  sub_1C1E5374C();
  sub_1C1E5219C();
  CGRectGetWidth(v20);
  sub_1C1E5219C();
  CGRectGetHeight(v21);
  sub_1C1E538DC();
  sub_1C1E5281C();
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D780, &qword_1C1E5A168) + 36));
  v16 = v18[1];
  *v15 = v18[0];
  v15[1] = v16;
  result = *&v19;
  v15[2] = v19;
  return result;
}

uint64_t sub_1C1E39208(uint64_t *a1)
{
  v3 = *(type metadata accessor for TypesetCanvasView() - 8);
  v4 = *a1;
  v6 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_1C1E5295C();
}

uint64_t sub_1C1E392B0(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1C1E38EC0(a1);
}

unint64_t sub_1C1E392D0()
{
  result = qword_1EBF1D788;
  if (!qword_1EBF1D788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D780, &qword_1C1E5A168);
    sub_1C1E3935C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D788);
  }

  return result;
}

unint64_t sub_1C1E3935C()
{
  result = qword_1EBF1D790;
  if (!qword_1EBF1D790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D798, &unk_1C1E5A170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D790);
  }

  return result;
}

uint64_t sub_1C1E393C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1C1E3941C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1C1E394A8@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D7A0, &qword_1C1E5A268);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D7A8, &qword_1C1E5A270);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = *v1;
  if (*(v1 + 16))
  {
    *v5 = sub_1C1E52CAC();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v11 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D7B0, &qword_1C1E5A278) + 44)];
    v12 = sub_1C1E538FC();
    v13 = *(v1 + 48) / 18.0;
    *v11 = v12;
    *(v11 + 1) = v14;
    *(v11 + 2) = round(v13 * 10.0);
    v11[24] = 0;
    *(v11 + 4) = round(v13 * 5.0);
    v11[40] = 0;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D7B8, &qword_1C1E5A280);
    sub_1C1E39B18(v10, v1, &v11[*(v15 + 44)]);
    sub_1C1E538FC();
    sub_1C1E5281C();
    v16 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D7C0, &qword_1C1E5A288) + 36)];
    v17 = v56;
    *v16 = v55;
    *(v16 + 1) = v17;
    *(v16 + 2) = v57;
    *&v5[*(v2 + 36)] = 257;
    sub_1C1DC1424(v5, v9, &qword_1EBF1D7A0, &qword_1C1E5A268);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D7C8, &qword_1C1E5A290);
    sub_1C1DC1124(&qword_1EBF1D7D0, &qword_1EBF1D7C8, &qword_1C1E5A290);
    sub_1C1E3A19C();
    sub_1C1E52CEC();
    return sub_1C1DC1870(v5, &qword_1EBF1D7A0, &qword_1C1E5A268);
  }

  else
  {
    v19 = *(v1 + 8);
    v20 = round(*(v1 + 48) / 18.0 * 7.0);
    v28 = sub_1C1E52C0C();
    v43 = 0;
    sub_1C1E39984(v10, v19, v1, &v31);
    v52 = v39;
    v53 = v40;
    v48 = v35;
    v49 = v36;
    v50 = v37;
    v51 = v38;
    v44 = v31;
    v45 = v32;
    v46 = v33;
    v47 = v34;
    v63 = v39;
    v64 = v40;
    v59 = v35;
    v60 = v36;
    v61 = v37;
    v62 = v38;
    v55 = v31;
    v56 = v32;
    v54 = v41;
    v65 = v41;
    v57 = v33;
    v58 = v34;
    sub_1C1DC1424(&v44, &v30, &qword_1EBF1D7F8, &qword_1C1E5A2A0);
    sub_1C1DC1870(&v55, &qword_1EBF1D7F8, &qword_1C1E5A2A0);
    *(&v42[7] + 7) = v51;
    *(&v42[8] + 7) = v52;
    *(&v42[9] + 7) = v53;
    *(&v42[3] + 7) = v47;
    *(&v42[4] + 7) = v48;
    *(&v42[10] + 7) = v54;
    *(&v42[5] + 7) = v49;
    *(&v42[6] + 7) = v50;
    *(v42 + 7) = v44;
    *(&v42[1] + 7) = v45;
    *(&v42[2] + 7) = v46;
    *(v9 + 1) = v20;
    v21 = v42[6];
    *(v9 + 129) = v42[7];
    v22 = v42[9];
    *(v9 + 145) = v42[8];
    *(v9 + 161) = v22;
    *(v9 + 11) = *(&v42[9] + 15);
    v23 = v42[2];
    *(v9 + 65) = v42[3];
    v24 = v42[5];
    *(v9 + 81) = v42[4];
    *(v9 + 97) = v24;
    *(v9 + 113) = v21;
    v25 = v42[1];
    *(v9 + 17) = v42[0];
    v26 = v43;
    *v9 = v28;
    v9[16] = v26;
    *(v9 + 33) = v25;
    *(v9 + 49) = v23;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D7C8, &qword_1C1E5A290);
    sub_1C1DC1124(&qword_1EBF1D7D0, &qword_1EBF1D7C8, &qword_1C1E5A290);
    sub_1C1E3A19C();
    return sub_1C1E52CEC();
  }
}

uint64_t sub_1C1E39984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 48);

  if ((*(a3 + 40) & 1) == 0)
  {
    v15 = 0;
    v14 = 0;
    v11 = 0;
    v9 = 0;
LABEL_6:
    v13 = 0;
    goto LABEL_7;
  }

  v9 = *(a3 + 32);
  if (!v9)
  {
    v15 = 0;
    v14 = 0;
    v11 = 0;
    goto LABEL_6;
  }

  v10 = *(a3 + 24);

  v11 = sub_1C1E09E10();
  v9 = v12;
  swift_bridgeObjectRelease_n();
  v13 = v8;
  v14 = 0xE100000000000000;
  v15 = 61;
LABEL_7:
  *&v22 = v15;
  *(&v22 + 1) = v14;
  v23 = 0uLL;
  *&v24 = 0;
  *(&v24 + 1) = v13;
  *&v25 = 0;
  *(&v25 + 1) = v11;
  v26 = v9;
  v27 = 0uLL;
  v28 = v13;
  *(a4 + 40) = v8;
  v16 = v25;
  *(a4 + 88) = v24;
  v17 = v23;
  *(a4 + 56) = v22;
  v18 = v27;
  *(a4 + 152) = v28;
  v19 = v26;
  *(a4 + 136) = v18;
  *(a4 + 120) = v19;
  *(a4 + 104) = v16;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 48) = 0;
  *(a4 + 72) = v17;
  v29[0] = v15;
  v29[1] = v14;
  memset(&v29[2], 0, 24);
  v29[5] = v13;
  v29[6] = 0;
  v29[7] = v11;
  v29[8] = v9;
  memset(&v29[9], 0, 24);
  v29[12] = v13;
  v29[13] = 0;

  sub_1C1DC1424(&v22, &v21, &qword_1EBF1D800, &qword_1C1E5A2A8);
  sub_1C1DC1870(v29, &qword_1EBF1D800, &qword_1C1E5A2A8);
}

uint64_t sub_1C1E39B18@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char *a3@<X8>)
{
  v49 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D808, &unk_1C1E5A2B0);
  v50 = *(v5 - 8);
  v6 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  *&v54 = a1;
  v11 = *a2;
  v69 = *(a2 + 16);
  v67 = *(a2 + 24);
  v68 = v11;
  v12 = swift_allocObject();
  v13 = a2[1];
  *(v12 + 16) = *a2;
  *(v12 + 32) = v13;
  *(v12 + 48) = a2[2];
  *(v12 + 64) = *(a2 + 6);

  sub_1C1E3A380(&v68, v61);
  sub_1C1DC1424(&v67, v61, &qword_1EBF1C840, &qword_1C1E571F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D810, &qword_1C1E5A2C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D818, &qword_1C1E5A2C8);
  sub_1C1DC1124(&qword_1EBF1D820, &qword_1EBF1D810, &qword_1C1E5A2C0);
  sub_1C1E3A3DC();
  sub_1C1E3A494();
  v14 = v10;
  sub_1C1E5380C();
  if ((*(a2 + 40) & 1) != 0 && *(&v67 + 1))
  {
    v15 = *(a2 + 6);
    v16 = [objc_opt_self() labelColor];
    v17 = [v16 CGColor];

    v48 = sub_1C1E5351C();
    sub_1C1E538DC();
    sub_1C1E5281C();
    v52 = v61[14];
    v18 = v62;
    LOBYTE(v16) = v64;
    v46 = v65;
    v47 = v63;
    v45 = v66;
    v44 = sub_1C1E09E10();
    v51 = v19;

    LOBYTE(v61[0]) = v18;
    LOBYTE(v54) = v16;
    v20 = v18;
    v21 = v16;

    v43 = v15;
  }

  else
  {
    v47 = 0;
    v48 = 0;
    v51 = 0;
    v52 = 0;
    v45 = 0;
    v46 = 0;
    v43 = 0;
    v44 = 0;
    v21 = 0;
    v20 = 0;
  }

  v40 = v21;
  v41 = v20;
  v22 = v50;
  v23 = *(v50 + 16);
  v24 = v53;
  v42 = v14;
  v23(v53, v14, v5);
  v25 = v49;
  v23(v49, v24, v5);
  v26 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D848, &qword_1C1E5A2D8) + 48)];
  v27 = v47;
  v28 = v48;
  *&v54 = v48;
  *(&v54 + 1) = v52;
  *&v55 = v20;
  *(&v55 + 1) = v47;
  v29 = v45;
  v30 = v46;
  *&v56 = v21;
  *(&v56 + 1) = v46;
  v31 = v43;
  v32 = v44;
  *&v57 = v45;
  *(&v57 + 1) = v44;
  v58 = v51;
  v59 = 0uLL;
  v60 = v43;
  v33 = v55;
  *v26 = v54;
  *(v26 + 1) = v33;
  v34 = v56;
  v35 = v57;
  v36 = v60;
  *(v26 + 5) = v59;
  *(v26 + 6) = v36;
  v37 = v58;
  *(v26 + 3) = v35;
  *(v26 + 4) = v37;
  *(v26 + 2) = v34;
  sub_1C1DC1424(&v54, v61, &qword_1EBF1D850, &unk_1C1E5A2E0);
  v38 = *(v22 + 8);
  v38(v42, v5);
  v61[0] = v28;
  v61[1] = v52;
  v61[2] = v41;
  v61[3] = v27;
  v61[4] = v40;
  v61[5] = v30;
  v61[6] = v29;
  v61[7] = v32;
  v61[8] = v51;
  memset(&v61[9], 0, 24);
  v61[12] = v31;
  v61[13] = 0;
  sub_1C1DC1870(v61, &qword_1EBF1D850, &unk_1C1E5A2E0);
  return (v38)(v53, v5);
}

uint64_t sub_1C1E39FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v17 = *(a1 + 32);
  v5 = *(a2 + 48);
  v16 = *(a1 + 48);
  v6 = v16;
  v7 = v17;
  sub_1C1E0839C(&v17, &v31);
  sub_1C1DC1424(&v16, &v31, &qword_1EBF1D260, &qword_1C1E58658);

  v8 = sub_1C1E52C9C();
  v15 = *(a1 + 16);
  v9 = v15;
  sub_1C1E0839C(&v15, &v31);

  v10 = sub_1C1E52CAC();
  v18[0] = v7;
  v18[1] = 0uLL;
  LOBYTE(v19) = 0;
  *(&v19 + 1) = v5;
  *&v20 = v6;
  *(&v20 + 1) = v8;
  v21[0] = v9;
  v21[1] = 0uLL;
  LOBYTE(v22) = 0;
  *(&v22 + 1) = v5;
  *&v23 = 0;
  *(&v23 + 1) = v10;
  v13 = v22;
  v14 = v23;
  v11 = v20;
  a3[2] = v19;
  a3[3] = v11;
  *a3 = v7;
  a3[1] = 0uLL;
  a3[6] = v13;
  a3[7] = v14;
  a3[4] = v9;
  a3[5] = 0uLL;
  v24 = v9;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = v5;
  v29 = 0;
  v30 = v10;
  sub_1C1DC1424(v18, &v31, &qword_1EBF1D858, &qword_1C1E5A2F0);
  sub_1C1DC1424(v21, &v31, &qword_1EBF1D858, &qword_1C1E5A2F0);
  sub_1C1DC1870(&v24, &qword_1EBF1D858, &qword_1C1E5A2F0);
  v31 = v7;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = v5;
  v36 = v6;
  v37 = v8;
  return sub_1C1DC1870(&v31, &qword_1EBF1D858, &qword_1C1E5A2F0);
}

uint64_t sub_1C1E3A158@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return sub_1C1E394A8(a1);
}

unint64_t sub_1C1E3A19C()
{
  result = qword_1EBF1D7D8;
  if (!qword_1EBF1D7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D7A0, &qword_1C1E5A268);
    sub_1C1E3A228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D7D8);
  }

  return result;
}

unint64_t sub_1C1E3A228()
{
  result = qword_1EBF1D7E0;
  if (!qword_1EBF1D7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D7C0, &qword_1C1E5A288);
    sub_1C1DC1124(&qword_1EBF1D7E8, &qword_1EBF1D7F0, &qword_1C1E5A298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D7E0);
  }

  return result;
}

__n128 sub_1C1E3A2EC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  v11[2] = *(a1 + 32);
  v12 = *(a1 + 48);
  *&v9 = 0;
  BYTE8(v9) = 1;
  sub_1C1E39FB0(v11, v2 + 16, v10);
  v5 = v10[6];
  *(a2 + 96) = v10[5];
  *(a2 + 112) = v5;
  *(a2 + 128) = v10[7];
  v6 = v10[2];
  *(a2 + 32) = v10[1];
  *(a2 + 48) = v6;
  v7 = v10[4];
  *(a2 + 64) = v10[3];
  *(a2 + 80) = v7;
  result = v10[0];
  *a2 = v9;
  *(a2 + 16) = result;
  *(a2 + 144) = 1;
  return result;
}

unint64_t sub_1C1E3A3DC()
{
  result = qword_1EBF1D828;
  if (!qword_1EBF1D828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D818, &qword_1C1E5A2C8);
    sub_1C1DC1124(&qword_1EBF1D830, &qword_1EBF1D838, &qword_1C1E5A2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D828);
  }

  return result;
}

unint64_t sub_1C1E3A494()
{
  result = qword_1EBF1D840;
  if (!qword_1EBF1D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D840);
  }

  return result;
}

unint64_t sub_1C1E3A4E8()
{
  result = qword_1EBF1D860;
  if (!qword_1EBF1D860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D868, &qword_1C1E5A2F8);
    sub_1C1DC1124(&qword_1EBF1D7D0, &qword_1EBF1D7C8, &qword_1C1E5A290);
    sub_1C1E3A19C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D860);
  }

  return result;
}

uint64_t sub_1C1E3A5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1E549CC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1C1E3A60C(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_1C1E5398C();
}

uint64_t sub_1C1E3A7DC(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1C1E54BCC();
    for (i = (a3 + 32); ; ++i)
    {
      v11 = *i;
      a1(&v12, &v11);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_1C1E54BAC();
      v10 = *(v13 + 16);
      sub_1C1E54BDC();
      sub_1C1E54BEC();
      sub_1C1E54BBC();
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C1E3A8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C1E52B7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C770, &qword_1C1E57A30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v18 - v12);
  sub_1C1DC1424(v2 + *(a1 + 40), &v18 - v12, &qword_1EBF1C770, &qword_1C1E57A30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1C1E526EC();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_1C1E5490C();
    v17 = sub_1C1E52FBC();
    sub_1C1E5227C();

    sub_1C1E52B6C();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_1C1E3AAD0(uint64_t a1)
{
  v3 = sub_1C1E52B7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1 + *(a1 + 44);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    sub_1C1E5490C();
    v10 = sub_1C1E52FBC();
    sub_1C1E5227C();

    sub_1C1E52B6C();
    swift_getAtKeyPath();
    sub_1C1DDEC6C(v9, 0);
    (*(v4 + 8))(v7, v3);
    LOBYTE(v9) = v12[15];
  }

  return v9 & 1;
}

uint64_t sub_1C1E3AC24(uint64_t a1)
{
  v3 = sub_1C1E52B7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1 + *(a1 + 48);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    sub_1C1E5490C();
    v10 = sub_1C1E52FBC();
    sub_1C1E5227C();

    sub_1C1E52B6C();
    swift_getAtKeyPath();
    sub_1C1DDEC6C(v9, 0);
    (*(v4 + 8))(v7, v3);
    LOBYTE(v9) = v12[15];
  }

  return v9 & 1;
}

uint64_t sub_1C1E3AD78(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4D0, &qword_1C1E58BC0);
  sub_1C1E536EC();
  return v4;
}

uint64_t sub_1C1E3ADE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + *(a3 + 52));
  v6 = *v4;
  v7 = *(v4 + 8);
  v8 = v4[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4D0, &qword_1C1E58BC0);
  return sub_1C1E536FC();
}

uint64_t sub_1C1E3AE58(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4D0, &qword_1C1E58BC0);
  sub_1C1E536EC();
  return v4;
}

uint64_t sub_1C1E3AEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + *(a3 + 56));
  v6 = *v4;
  v7 = *(v4 + 8);
  v8 = v4[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4D0, &qword_1C1E58BC0);
  return sub_1C1E536FC();
}

uint64_t sub_1C1E3AF38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C758, &qword_1C1E579C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = *(a2 + 68);
  sub_1C1DC1424(a1, &v9 - v7, &qword_1EBF1C758, &qword_1C1E579C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DA08, &qword_1C1E5A480);
  sub_1C1E536FC();
  return sub_1C1DC1870(a1, &qword_1EBF1C758, &qword_1C1E579C0);
}

uint64_t sub_1C1E3B010(uint64_t a1)
{
  v2 = (v1 + *(a1 + 72));
  v5 = *v2;
  v6 = *(v2 + 16);
  v7 = *(v2 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD30, &qword_1C1E5AA20);
  sub_1C1E536EC();
  return v4;
}

__n128 sub_1C1E3B07C@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v4 = (v2 + *(a1 + 72));
  v10 = *v4;
  v11 = *(v4 + 16);
  v12 = *(v4 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD30, &qword_1C1E5AA20);
  sub_1C1E5370C();
  result = v8;
  a2->n128_u64[0] = v6;
  a2->n128_u64[1] = v7;
  a2[1] = v8;
  a2[2].n128_u8[0] = v9;
  return result;
}

uint64_t sub_1C1E3B0FC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 76));
  v5 = *v2;
  v6 = *(v2 + 16);
  v7 = *(v2 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD18, &qword_1C1E5AA08);
  sub_1C1E536EC();
  return v4;
}

__n128 sub_1C1E3B168@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v4 = (v2 + *(a1 + 76));
  v10 = *v4;
  v11 = *(v4 + 16);
  v12 = *(v4 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD18, &qword_1C1E5AA08);
  sub_1C1E5370C();
  result = v8;
  a2->n128_u64[0] = v6;
  a2->n128_u64[1] = v7;
  a2[1] = v8;
  a2[2].n128_u8[0] = v9;
  return result;
}

uint64_t sub_1C1E3B1E8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 80));
  v5 = *v2;
  v6 = *(v2 + 2);
  v7 = *(v2 + 24);
  v8 = *(v2 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD28, &qword_1C1E5AA18);
  sub_1C1E536EC();
  return v4;
}

__n128 sub_1C1E3B260@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v4 = (v2 + *(a1 + 80));
  v11 = *v4;
  v12 = *(v4 + 2);
  v13 = *(v4 + 24);
  v14 = *(v4 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD28, &qword_1C1E5AA18);
  sub_1C1E5370C();
  result = v8;
  a2->n128_u64[0] = v6;
  a2->n128_u64[1] = v7;
  a2[1] = v8;
  a2[2].n128_u64[0] = v9;
  a2[2].n128_u8[8] = v10;
  return result;
}

double sub_1C1E3B2F0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 84));
  v5 = *v2;
  v6 = *(v2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD20, &qword_1C1E5AA10);
  sub_1C1E536EC();
  return v4;
}

double sub_1C1E3B350(uint64_t a1)
{
  v2 = (v1 + *(a1 + 84));
  v5 = *v2;
  v6 = *(v2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD20, &qword_1C1E5AA10);
  sub_1C1E5370C();
  return v4;
}

double sub_1C1E3B3B4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 88));
  v5 = *v2;
  v6 = *(v2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DCB0, &qword_1C1E5A8F0);
  sub_1C1E536EC();
  return v4;
}

uint64_t sub_1C1E3B414(uint64_t a1)
{
  v2 = (v1 + *(a1 + 88));
  v4 = *v2;
  v5 = *(v2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DCB0, &qword_1C1E5A8F0);
  return sub_1C1E536FC();
}

double sub_1C1E3B478(uint64_t a1)
{
  v2 = (v1 + *(a1 + 92));
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DCC0, &unk_1C1E5A900);
  sub_1C1E536EC();
  return v4;
}

uint64_t sub_1C1E3B4DC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 92));
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DCC0, &unk_1C1E5A900);
  return sub_1C1E536FC();
}

double sub_1C1E3B544(uint64_t a1)
{
  v2 = (v1 + *(a1 + 96));
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DCC0, &unk_1C1E5A900);
  sub_1C1E536EC();
  return v4;
}

uint64_t sub_1C1E3B5A8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 96));
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DCC0, &unk_1C1E5A900);
  return sub_1C1E536FC();
}

uint64_t GraphView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v115 = a1;
  v2 = a1 - 8;
  v114 = *(a1 - 8);
  v3 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v112 = v4;
  v113 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1C1E52E1C();
  v5 = *(*(v119 - 8) + 64);
  MEMORY[0x1EEE9AC00](v119);
  v116 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D878, &unk_1C1E5A320);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D2A0, &qword_1C1E58810);
  v106 = v7;
  v9 = *(v2 + 32);
  v131 = *(v2 + 24);
  v8 = v131;
  v132 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v105 = OpaqueTypeMetadata2;
  v11 = sub_1C1E0F2FC();
  v104 = v11;
  v111 = v8;
  v131 = v8;
  v132 = v9;
  v110 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v131 = v7;
  v132 = OpaqueTypeMetadata2;
  v133 = v11;
  v134 = OpaqueTypeConformance2;
  v102 = &unk_1C1E68C54;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D880, &qword_1C1E5A340);
  v107 = sub_1C1E5299C();
  v108 = sub_1C1E549CC();
  v101 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D888, &qword_1C1E5A348);
  v100 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D890, &qword_1C1E5A350);
  v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D898, &qword_1C1E5A358);
  v98 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8A0, &qword_1C1E5A360);
  v97 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8A8, &qword_1C1E5A368);
  v96 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8B0, &qword_1C1E5A370);
  v95 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8B8, &qword_1C1E5A378);
  v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8C0, &qword_1C1E5A380);
  v93 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8C8, &qword_1C1E5A388);
  v92 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8D0, &qword_1C1E5A390);
  v91 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8D8, &qword_1C1E5A398);
  v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8E0, &qword_1C1E5A3A0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8E8, &qword_1C1E5A3A8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8F0, &unk_1C1E5A3B0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D3F0, &qword_1C1E58AB8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8F8, &qword_1C1E5A3C0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D900, &qword_1C1E5A3C8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D908, &unk_1C1E5A3D0);
  v18 = sub_1C1DC1124(&qword_1EBF1D910, &qword_1EBF1D900, &qword_1C1E5A3C8);
  v19 = sub_1C1DC1124(&qword_1EBF1D918, &qword_1EBF1D908, &unk_1C1E5A3D0);
  v131 = v16;
  v132 = v17;
  v133 = v18;
  v134 = v19;
  v135 = MEMORY[0x1E6981568];
  v20 = swift_getOpaqueTypeConformance2();
  v21 = sub_1C1E0FB50();
  v131 = v15;
  v132 = v14;
  v133 = v20;
  v134 = v21;
  v22 = swift_getOpaqueTypeConformance2();
  v131 = v13;
  v132 = v14;
  v133 = v22;
  v134 = v21;
  v23 = swift_getOpaqueTypeConformance2();
  v131 = v12;
  v132 = v23;
  v24 = swift_getOpaqueTypeConformance2();
  v131 = v90;
  v132 = v24;
  v25 = swift_getOpaqueTypeConformance2();
  v131 = v91;
  v132 = v25;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = sub_1C1E3C4FC();
  v131 = v93;
  v132 = v92;
  v133 = v26;
  v134 = v27;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = sub_1C1E3C5E4();
  v131 = v94;
  v132 = &type metadata for MagnifyRepresentable;
  v133 = v28;
  v134 = v29;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = sub_1C1E3C638();
  v131 = v95;
  v132 = &type metadata for TwoFingerDragRepresentable;
  v133 = v30;
  v134 = v31;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = sub_1C1E3C68C();
  v131 = v96;
  v132 = &type metadata for TapRepresentable;
  v133 = v32;
  v134 = v33;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = sub_1C1E3C6E0();
  v131 = v97;
  v132 = &type metadata for OneFingerDragRepresentable;
  v133 = v34;
  v134 = v35;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = sub_1C1E3C734();
  v131 = v99;
  v132 = v98;
  v133 = v36;
  v134 = v37;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = sub_1C1E4D288(&qword_1EBF1D9A0, &qword_1EBF1D890, &qword_1C1E5A350, sub_1C1E3CAA8);
  v131 = v101;
  v132 = v100;
  v133 = v38;
  v134 = v39;
  v40 = swift_getOpaqueTypeConformance2();
  v131 = v106;
  v132 = v105;
  v133 = v104;
  v134 = OpaqueTypeConformance2;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = sub_1C1DC1124(&qword_1EBF1D998, &qword_1EBF1D880, &qword_1C1E5A340);
  v129 = v41;
  v130 = v42;
  WitnessTable = swift_getWitnessTable();
  v43 = v108;
  v44 = swift_getWitnessTable();
  v45 = v109;
  v131 = v109;
  v132 = v43;
  v46 = v43;
  v133 = v40;
  v134 = v44;
  v47 = swift_getOpaqueTypeMetadata2();
  v131 = v45;
  v132 = v46;
  v133 = v40;
  v134 = v44;
  v48 = swift_getOpaqueTypeConformance2();
  v131 = v47;
  v132 = v48;
  v49 = swift_getOpaqueTypeMetadata2();
  v131 = v47;
  v132 = v48;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = sub_1C1E3CC44();
  v131 = v49;
  v132 = &type metadata for SparklineViewAccessibilityChartDescriptorRepresentable;
  v133 = v50;
  v134 = v51;
  swift_getOpaqueTypeMetadata2();
  sub_1C1E52F2C();
  v52 = sub_1C1E5299C();
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D9F0, &qword_1C1E5A428);
  v131 = v49;
  v132 = &type metadata for SparklineViewAccessibilityChartDescriptorRepresentable;
  v133 = v50;
  v134 = v51;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = sub_1C1E4D7A4(&qword_1EBF1C690, MEMORY[0x1E697CBE8]);
  v126 = v54;
  v127 = v55;
  v56 = swift_getWitnessTable();
  v57 = sub_1C1DC1124(&qword_1EBF1D9F8, &qword_1EBF1D9F0, &qword_1C1E5A428);
  v131 = v52;
  v132 = v53;
  v133 = v56;
  v134 = v57;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C248, &unk_1C1E5A430);
  sub_1C1E5299C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D298, &qword_1C1E58808);
  swift_getTupleTypeMetadata2();
  sub_1C1E5397C();
  swift_getWitnessTable();
  v58 = sub_1C1E5378C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CC60, &qword_1C1E5A440);
  v106 = v58;
  v59 = sub_1C1E5299C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DA00, &qword_1C1E5A448);
  v107 = v59;
  v60 = sub_1C1E5299C();
  v61 = sub_1C1E4D7A4(qword_1EBF1D2E0, MEMORY[0x1E697C998]);
  v109 = v60;
  v108 = v61;
  v62 = sub_1C1E5280C();
  v63 = *(v62 - 8);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v66 = &v89 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v89 - v68;
  v70 = *v118;
  swift_getKeyPath();
  v131 = v70;
  sub_1C1E4D7A4(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  swift_beginAccess();
  if (!*(v70 + 16))
  {
    swift_getKeyPath();
    v120 = v70;
    sub_1C1E520BC();

    v71 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__isAnimatingFunction;
    swift_beginAccess();
    v72 = *(v70 + v71) ^ 1u;
  }

  v73 = v116;
  sub_1C1E52E0C();
  v74 = v114;
  v75 = v113;
  v76 = v115;
  (*(v114 + 16))(v113, v118, v115);
  v77 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v78 = swift_allocObject();
  v79 = v110;
  *(v78 + 16) = v111;
  *(v78 + 24) = v79;
  (*(v74 + 32))(v78 + v77, v75, v76);
  v80 = swift_getWitnessTable();
  v81 = sub_1C1DC1124(&qword_1EBF1CC58, &qword_1EBF1CC60, &qword_1C1E5A440);
  v124 = v80;
  v125 = v81;
  v82 = swift_getWitnessTable();
  v83 = sub_1C1DC1124(&qword_1EBF1DA10, &qword_1EBF1DA00, &qword_1C1E5A448);
  v122 = v82;
  v123 = v83;
  v84 = v109;
  v85 = swift_getWitnessTable();
  sub_1C1E0EFC0(v73, sub_1C1E3DB88, v78, v119, v84, v108, v85);
  v121 = v85;
  v86 = swift_getWitnessTable();
  sub_1C1E105BC(v66, v62, v86);
  v87 = *(v63 + 8);
  v87(v66, v62);
  sub_1C1E105BC(v69, v62, v86);
  return (v87)(v69, v62);
}

unint64_t sub_1C1E3C4FC()
{
  result = qword_1EBF1D920;
  if (!qword_1EBF1D920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8D0, &qword_1C1E5A390);
    sub_1C1E4D7A4(&qword_1EBF1D928, MEMORY[0x1E695B190]);
    sub_1C1DC1124(&qword_1EBF1CD40, &qword_1EBF1CD48, &qword_1C1E57818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D920);
  }

  return result;
}

unint64_t sub_1C1E3C5E4()
{
  result = qword_1EBF1D930;
  if (!qword_1EBF1D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D930);
  }

  return result;
}

unint64_t sub_1C1E3C638()
{
  result = qword_1EBF1D938;
  if (!qword_1EBF1D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D938);
  }

  return result;
}

unint64_t sub_1C1E3C68C()
{
  result = qword_1EBF1D940;
  if (!qword_1EBF1D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D940);
  }

  return result;
}

unint64_t sub_1C1E3C6E0()
{
  result = qword_1EBF1D948;
  if (!qword_1EBF1D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D948);
  }

  return result;
}

unint64_t sub_1C1E3C734()
{
  result = qword_1EBF1D950;
  if (!qword_1EBF1D950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8A0, &qword_1C1E5A360);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D958, &unk_1C1E5A3E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C778, &qword_1C1E56FC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D960, &qword_1C1E5A3F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D968, &qword_1C1E5A3F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D970, &qword_1C1E5A400);
    sub_1C1E3C958();
    swift_getOpaqueTypeConformance2();
    sub_1C1E3C9AC();
    swift_getOpaqueTypeConformance2();
    sub_1C1E3CA00();
    swift_getOpaqueTypeConformance2();
    sub_1C1E3CA54();
    swift_getOpaqueTypeConformance2();
    sub_1C1E0FD50();
    swift_getOpaqueTypeConformance2();
    sub_1C1DC1124(&qword_1EBF1D998, &qword_1EBF1D880, &qword_1C1E5A340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D950);
  }

  return result;
}

unint64_t sub_1C1E3C958()
{
  result = qword_1EBF1D978;
  if (!qword_1EBF1D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D978);
  }

  return result;
}

unint64_t sub_1C1E3C9AC()
{
  result = qword_1EBF1D980;
  if (!qword_1EBF1D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D980);
  }

  return result;
}

unint64_t sub_1C1E3CA00()
{
  result = qword_1EBF1D988;
  if (!qword_1EBF1D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D988);
  }

  return result;
}

unint64_t sub_1C1E3CA54()
{
  result = qword_1EBF1D990;
  if (!qword_1EBF1D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D990);
  }

  return result;
}

unint64_t sub_1C1E3CAA8()
{
  result = qword_1EBF1D9A8;
  if (!qword_1EBF1D9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D9B0, &qword_1C1E5A408);
    sub_1C1E3CB60();
    sub_1C1DC1124(&qword_1EBF1D9D8, &qword_1EBF1D9E0, &qword_1C1E5A420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D9A8);
  }

  return result;
}

unint64_t sub_1C1E3CB60()
{
  result = qword_1EBF1D9B8;
  if (!qword_1EBF1D9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D9C0, &qword_1C1E5A410);
    sub_1C1DC1124(&qword_1EBF1D9C8, &qword_1EBF1D9D0, &qword_1C1E5A418);
    sub_1C1DC1124(&qword_1EBF1D9D8, &qword_1EBF1D9E0, &qword_1C1E5A420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D9B8);
  }

  return result;
}

unint64_t sub_1C1E3CC44()
{
  result = qword_1EBF1D9E8;
  if (!qword_1EBF1D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1D9E8);
  }

  return result;
}

uint64_t sub_1C1E3CC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, ValueMetadata *a4@<X3>, uint64_t a5@<X8>)
{
  v111 = a4;
  v110 = a3;
  v112 = a2;
  v113 = a1;
  v116 = a5;
  v115 = sub_1C1E529CC();
  v7 = *(*(v115 - 8) + 64);
  MEMORY[0x1EEE9AC00](v115);
  v114 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D878, &unk_1C1E5A320);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D2A0, &qword_1C1E58810);
  v106 = v9;
  v130 = a3;
  v131 = a4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v105 = OpaqueTypeMetadata2;
  v11 = sub_1C1E0F2FC();
  v104 = v11;
  v130 = a3;
  v131 = a4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v130 = v9;
  v131 = OpaqueTypeMetadata2;
  v132 = v11;
  v133 = OpaqueTypeConformance2;
  v102 = &unk_1C1E68C54;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D880, &qword_1C1E5A340);
  v107 = sub_1C1E5299C();
  v108 = sub_1C1E549CC();
  v101 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D888, &qword_1C1E5A348);
  v100 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D890, &qword_1C1E5A350);
  v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D898, &qword_1C1E5A358);
  v98 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8A0, &qword_1C1E5A360);
  v97 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8A8, &qword_1C1E5A368);
  v96 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8B0, &qword_1C1E5A370);
  v95 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8B8, &qword_1C1E5A378);
  v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8C0, &qword_1C1E5A380);
  v93 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8C8, &qword_1C1E5A388);
  v92 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8D0, &qword_1C1E5A390);
  v91 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8D8, &qword_1C1E5A398);
  v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8E0, &qword_1C1E5A3A0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8E8, &qword_1C1E5A3A8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8F0, &unk_1C1E5A3B0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D3F0, &qword_1C1E58AB8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8F8, &qword_1C1E5A3C0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D900, &qword_1C1E5A3C8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D908, &unk_1C1E5A3D0);
  v18 = sub_1C1DC1124(&qword_1EBF1D910, &qword_1EBF1D900, &qword_1C1E5A3C8);
  v19 = sub_1C1DC1124(&qword_1EBF1D918, &qword_1EBF1D908, &unk_1C1E5A3D0);
  v130 = v16;
  v131 = v17;
  v132 = v18;
  v133 = v19;
  v134 = MEMORY[0x1E6981568];
  v20 = swift_getOpaqueTypeConformance2();
  v21 = sub_1C1E0FB50();
  v130 = v15;
  v131 = v14;
  v132 = v20;
  v133 = v21;
  v22 = swift_getOpaqueTypeConformance2();
  v130 = v13;
  v131 = v14;
  v132 = v22;
  v133 = v21;
  v23 = swift_getOpaqueTypeConformance2();
  v130 = v12;
  v131 = v23;
  v24 = swift_getOpaqueTypeConformance2();
  v130 = v90;
  v131 = v24;
  v25 = swift_getOpaqueTypeConformance2();
  v130 = v91;
  v131 = v25;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = sub_1C1E3C4FC();
  v130 = v93;
  v131 = v92;
  v132 = v26;
  v133 = v27;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = sub_1C1E3C5E4();
  v130 = v94;
  v131 = &type metadata for MagnifyRepresentable;
  v132 = v28;
  v133 = v29;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = sub_1C1E3C638();
  v130 = v95;
  v131 = &type metadata for TwoFingerDragRepresentable;
  v132 = v30;
  v133 = v31;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = sub_1C1E3C68C();
  v130 = v96;
  v131 = &type metadata for TapRepresentable;
  v132 = v32;
  v133 = v33;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = sub_1C1E3C6E0();
  v130 = v97;
  v131 = &type metadata for OneFingerDragRepresentable;
  v132 = v34;
  v133 = v35;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = sub_1C1E3C734();
  v130 = v99;
  v131 = v98;
  v132 = v36;
  v133 = v37;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = sub_1C1E4D288(&qword_1EBF1D9A0, &qword_1EBF1D890, &qword_1C1E5A350, sub_1C1E3CAA8);
  v130 = v101;
  v131 = v100;
  v132 = v38;
  v133 = v39;
  v40 = swift_getOpaqueTypeConformance2();
  v130 = v106;
  v131 = v105;
  v132 = v104;
  v133 = OpaqueTypeConformance2;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = sub_1C1DC1124(&qword_1EBF1D998, &qword_1EBF1D880, &qword_1C1E5A340);
  v128 = v41;
  v129 = v42;
  WitnessTable = swift_getWitnessTable();
  v43 = v108;
  v44 = swift_getWitnessTable();
  v45 = v109;
  v130 = v109;
  v131 = v43;
  v46 = v43;
  v132 = v40;
  v133 = v44;
  v47 = swift_getOpaqueTypeMetadata2();
  v130 = v45;
  v131 = v46;
  v132 = v40;
  v133 = v44;
  v48 = swift_getOpaqueTypeConformance2();
  v130 = v47;
  v131 = v48;
  v49 = swift_getOpaqueTypeMetadata2();
  v130 = v47;
  v131 = v48;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = sub_1C1E3CC44();
  v130 = v49;
  v131 = &type metadata for SparklineViewAccessibilityChartDescriptorRepresentable;
  v132 = v50;
  v133 = v51;
  swift_getOpaqueTypeMetadata2();
  sub_1C1E52F2C();
  v52 = sub_1C1E5299C();
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D9F0, &qword_1C1E5A428);
  v130 = v49;
  v131 = &type metadata for SparklineViewAccessibilityChartDescriptorRepresentable;
  v132 = v50;
  v133 = v51;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = sub_1C1E4D7A4(&qword_1EBF1C690, MEMORY[0x1E697CBE8]);
  v125 = v54;
  v126 = v55;
  v56 = swift_getWitnessTable();
  v57 = sub_1C1DC1124(&qword_1EBF1D9F8, &qword_1EBF1D9F0, &qword_1C1E5A428);
  v130 = v52;
  v131 = v53;
  v132 = v56;
  v133 = v57;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C248, &unk_1C1E5A430);
  sub_1C1E5299C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D298, &qword_1C1E58808);
  swift_getTupleTypeMetadata2();
  sub_1C1E5397C();
  swift_getWitnessTable();
  v58 = sub_1C1E5378C();
  v107 = *(v58 - 8);
  v59 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v89 - v60;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CC60, &qword_1C1E5A440);
  v62 = sub_1C1E5299C();
  v108 = *(v62 - 8);
  v63 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v89 - v64;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DA00, &qword_1C1E5A448);
  v66 = sub_1C1E5299C();
  v109 = *(v66 - 8);
  v67 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v89 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v89 - v71;
  sub_1C1E5389C();
  v117 = v110;
  v118 = v111;
  v119 = v112;
  v120 = v113;
  sub_1C1E5377C();
  if (qword_1EBF1C120 != -1)
  {
    swift_once();
  }

  v130 = qword_1EBF20D10;

  sub_1C1E5300C();
  v73 = swift_getWitnessTable();
  sub_1C1E532CC();

  (*(v107 + 8))(v61, v58);
  v74 = *(v115 + 20);
  v75 = *MEMORY[0x1E697F468];
  v76 = sub_1C1E52C8C();
  v77 = v114;
  (*(*(v76 - 8) + 104))(&v114[v74], v75, v76);
  __asm { FMOV            V0.2D, #8.0 }

  *v77 = _Q0;
  v83 = sub_1C1DC1124(&qword_1EBF1CC58, &qword_1EBF1CC60, &qword_1C1E5A440);
  v123 = v73;
  v124 = v83;
  v84 = swift_getWitnessTable();
  sub_1C1E4D7A4(&qword_1EBF1DC00, MEMORY[0x1E697EAF0]);
  sub_1C1E534DC();
  sub_1C1E4E154(v77, MEMORY[0x1E697EAF0]);
  (*(v108 + 8))(v65, v62);
  v85 = sub_1C1DC1124(&qword_1EBF1DA10, &qword_1EBF1DA00, &qword_1C1E5A448);
  v121 = v84;
  v122 = v85;
  v86 = swift_getWitnessTable();
  sub_1C1E105BC(v69, v66, v86);
  v87 = *(v109 + 8);
  v87(v69, v66);
  sub_1C1E105BC(v72, v66, v86);
  return (v87)(v72, v66);
}

uint64_t sub_1C1E3DBE4@<X0>(uint64_t *a1@<X0>, void (*a2)(char *, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v337 = a2;
  v375 = a1;
  v347 = a5;
  v7 = sub_1C1E5353C();
  v253 = *(v7 - 8);
  v254 = v7;
  v8 = *(v253 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v252 = &v246 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C1E52E7C();
  v250 = *(v10 - 8);
  v251 = v10;
  v11 = *(v250 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v249 = &v246 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D378, &qword_1C1E58A48);
  v13 = *(*(v247 - 8) + 64);
  MEMORY[0x1EEE9AC00](v247);
  v248 = &v246 - v14;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D380, &unk_1C1E5A730);
  v15 = *(*(v256 - 8) + 64);
  MEMORY[0x1EEE9AC00](v256);
  v255 = &v246 - v16;
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D298, &qword_1C1E58808);
  v17 = *(*(v345 - 8) + 64);
  MEMORY[0x1EEE9AC00](v345);
  v346 = &v246 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v351 = &v246 - v20;
  v344 = sub_1C1E5296C();
  v343 = *(v344 - 8);
  v21 = *(v343 + 64);
  MEMORY[0x1EEE9AC00](v344);
  v342 = &v246 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v341 = sub_1C1E52E5C();
  v340 = *(v341 - 8);
  v23 = *(v340 + 64);
  MEMORY[0x1EEE9AC00](v341);
  v339 = &v246 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v372 = type metadata accessor for GraphView();
  v370 = *(v372 - 8);
  v371 = *(v370 + 64);
  MEMORY[0x1EEE9AC00](v372);
  v350 = &v246 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D390, &qword_1C1E58A58);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v331 = &v246 - v28;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D900, &qword_1C1E5A3C8);
  v321 = *(v353 - 8);
  v29 = *(v321 + 64);
  MEMORY[0x1EEE9AC00](v353);
  v310 = &v246 - v30;
  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D8F8, &qword_1C1E5A3C0);
  v327 = *(v361 - 8);
  v31 = *(v327 + 64);
  MEMORY[0x1EEE9AC00](v361);
  v322 = &v246 - v32;
  v368 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D8F0, &unk_1C1E5A3B0);
  v330 = *(v368 - 1);
  v33 = *(v330 + 64);
  MEMORY[0x1EEE9AC00](v368);
  v326 = &v246 - v34;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D8E8, &qword_1C1E5A3A8);
  v325 = *(v360 - 8);
  v35 = *(v325 + 64);
  MEMORY[0x1EEE9AC00](v360);
  v320 = &v246 - v36;
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D8E0, &qword_1C1E5A3A0);
  v319 = *(v358 - 8);
  v37 = *(v319 + 64);
  MEMORY[0x1EEE9AC00](v358);
  v316 = &v246 - v38;
  v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D8D8, &qword_1C1E5A398);
  v315 = *(v356 - 8);
  v39 = *(v315 + 64);
  MEMORY[0x1EEE9AC00](v356);
  v312 = &v246 - v40;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D8C8, &qword_1C1E5A388);
  v313 = *(v355 - 8);
  v41 = *(v313 + 64);
  MEMORY[0x1EEE9AC00](v355);
  v311 = &v246 - v42;
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D8C0, &qword_1C1E5A380);
  v317 = *(v357 - 8);
  v43 = *(v317 + 64);
  MEMORY[0x1EEE9AC00](v357);
  v314 = &v246 - v44;
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D8B8, &qword_1C1E5A378);
  v324 = *(v359 - 8);
  v45 = *(v324 + 64);
  MEMORY[0x1EEE9AC00](v359);
  v318 = &v246 - v46;
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D8B0, &qword_1C1E5A370);
  v329 = *(v362 - 8);
  v47 = *(v329 + 64);
  MEMORY[0x1EEE9AC00](v362);
  v323 = &v246 - v48;
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D8A8, &qword_1C1E5A368);
  v333 = *(v369 - 1);
  v49 = *(v333 + 64);
  MEMORY[0x1EEE9AC00](v369);
  v332 = &v246 - v50;
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D898, &qword_1C1E5A358);
  v334 = *(v364 - 8);
  v51 = *(v334 + 64);
  MEMORY[0x1EEE9AC00](v364);
  v363 = &v246 - v52;
  v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D888, &qword_1C1E5A348);
  v335 = *(v366 - 8);
  v53 = *(v335 + 64);
  MEMORY[0x1EEE9AC00](v366);
  v365 = &v246 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D878, &unk_1C1E5A320);
  v336 = *(v55 - 8);
  v56 = *(v336 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v367 = &v246 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D2A0, &qword_1C1E58810);
  v349 = v58;
  v374 = a3;
  *&v416 = a3;
  *(&v416 + 1) = a4;
  v373 = a4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v348 = OpaqueTypeMetadata2;
  v60 = sub_1C1E0F2FC();
  v338 = v60;
  *&v416 = a3;
  *(&v416 + 1) = a4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v416 = v58;
  *(&v416 + 1) = OpaqueTypeMetadata2;
  *&v417 = v60;
  *(&v417 + 1) = OpaqueTypeConformance2;
  v308 = &unk_1C1E68C54;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D880, &qword_1C1E5A340);
  v352 = sub_1C1E5299C();
  v61 = sub_1C1E549CC();
  v354 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D890, &qword_1C1E5A350);
  v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8A0, &qword_1C1E5A360);
  v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D8D0, &qword_1C1E5A390);
  v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D3F0, &qword_1C1E58AB8);
  v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D908, &unk_1C1E5A3D0);
  v66 = sub_1C1DC1124(&qword_1EBF1D910, &qword_1EBF1D900, &qword_1C1E5A3C8);
  v67 = sub_1C1DC1124(&qword_1EBF1D918, &qword_1EBF1D908, &unk_1C1E5A3D0);
  *&v416 = v353;
  *(&v416 + 1) = v65;
  v259 = v66;
  v260 = v65;
  *&v417 = v66;
  *(&v417 + 1) = v67;
  v258 = v67;
  *&v418 = MEMORY[0x1E6981568];
  v68 = swift_getOpaqueTypeConformance2();
  v69 = sub_1C1E0FB50();
  *&v416 = v361;
  *(&v416 + 1) = v64;
  v261 = v68;
  *&v417 = v68;
  *(&v417 + 1) = v69;
  v70 = swift_getOpaqueTypeConformance2();
  *&v416 = v368;
  *(&v416 + 1) = v64;
  v276 = v64;
  v262 = v70;
  *&v417 = v70;
  *(&v417 + 1) = v69;
  v268 = v69;
  v71 = swift_getOpaqueTypeConformance2();
  *&v416 = v360;
  *(&v416 + 1) = v71;
  v265 = v71;
  v72 = swift_getOpaqueTypeConformance2();
  *&v416 = v358;
  *(&v416 + 1) = v72;
  v264 = v72;
  v73 = swift_getOpaqueTypeConformance2();
  *&v416 = v356;
  *(&v416 + 1) = v73;
  v263 = v73;
  v74 = swift_getOpaqueTypeConformance2();
  v75 = sub_1C1E3C4FC();
  *&v416 = v355;
  *(&v416 + 1) = v63;
  v296 = v63;
  v266 = v75;
  v267 = v74;
  *&v417 = v74;
  *(&v417 + 1) = v75;
  v76 = swift_getOpaqueTypeConformance2();
  v77 = sub_1C1E3C5E4();
  *&v416 = v357;
  *(&v416 + 1) = &type metadata for MagnifyRepresentable;
  v269 = v77;
  v270 = v76;
  *&v417 = v76;
  *(&v417 + 1) = v77;
  v78 = swift_getOpaqueTypeConformance2();
  v79 = sub_1C1E3C638();
  *&v416 = v359;
  *(&v416 + 1) = &type metadata for TwoFingerDragRepresentable;
  v273 = v78;
  *&v417 = v78;
  *(&v417 + 1) = v79;
  v271 = v79;
  v80 = swift_getOpaqueTypeConformance2();
  v81 = sub_1C1E3C68C();
  *&v416 = v362;
  *(&v416 + 1) = &type metadata for TapRepresentable;
  v274 = v81;
  v275 = v80;
  *&v417 = v80;
  *(&v417 + 1) = v81;
  v82 = swift_getOpaqueTypeConformance2();
  v83 = sub_1C1E3C6E0();
  *&v416 = v369;
  *(&v416 + 1) = &type metadata for OneFingerDragRepresentable;
  v277 = v83;
  v278 = v82;
  *&v417 = v82;
  *(&v417 + 1) = v83;
  v84 = swift_getOpaqueTypeConformance2();
  v85 = sub_1C1E3C734();
  *&v416 = v364;
  *(&v416 + 1) = v62;
  v309 = v62;
  v292 = v85;
  v293 = v84;
  *&v417 = v84;
  *(&v417 + 1) = v85;
  v86 = swift_getOpaqueTypeConformance2();
  v87 = sub_1C1E4D288(&qword_1EBF1D9A0, &qword_1EBF1D890, &qword_1C1E5A350, sub_1C1E3CAA8);
  *&v416 = v366;
  *(&v416 + 1) = v354;
  v305 = v86;
  *&v417 = v86;
  *(&v417 + 1) = v87;
  v302 = v87;
  v88 = swift_getOpaqueTypeConformance2();
  *&v416 = v349;
  *(&v416 + 1) = v348;
  *&v417 = v338;
  *(&v417 + 1) = OpaqueTypeConformance2;
  v89 = swift_getOpaqueTypeConformance2();
  v90 = sub_1C1DC1124(&qword_1EBF1D998, &qword_1EBF1D880, &qword_1C1E5A340);
  v407 = v89;
  v408 = v90;
  v349 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v91 = swift_getWitnessTable();
  *&v416 = v55;
  *(&v416 + 1) = v61;
  *&v417 = v88;
  *(&v417 + 1) = v91;
  v92 = swift_getOpaqueTypeMetadata2();
  v303 = *(v92 - 8);
  v93 = *(v303 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v301 = &v246 - v94;
  v338 = v55;
  *&v416 = v55;
  *(&v416 + 1) = v61;
  OpaqueTypeConformance2 = v61;
  v308 = v88;
  *&v417 = v88;
  *(&v417 + 1) = v91;
  v299 = v91;
  v95 = swift_getOpaqueTypeConformance2();
  *&v416 = v92;
  *(&v416 + 1) = v95;
  v96 = swift_getOpaqueTypeMetadata2();
  v295 = *(v96 - 8);
  v97 = *(v295 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v290 = &v246 - v98;
  v306 = v92;
  *&v416 = v92;
  *(&v416 + 1) = v95;
  v288 = v95;
  v99 = swift_getOpaqueTypeConformance2();
  v100 = sub_1C1E3CC44();
  *&v416 = v96;
  *(&v416 + 1) = &type metadata for SparklineViewAccessibilityChartDescriptorRepresentable;
  *&v417 = v99;
  *(&v417 + 1) = v100;
  v101 = swift_getOpaqueTypeMetadata2();
  v287 = *(v101 - 8);
  v102 = *(v287 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v285 = &v246 - v103;
  sub_1C1E52F2C();
  v289 = v101;
  v104 = sub_1C1E5299C();
  v300 = *(v104 - 8);
  v105 = *(v300 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v284 = &v246 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v107);
  v291 = &v246 - v108;
  v109 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D9F0, &qword_1C1E5A428);
  v297 = v96;
  *&v416 = v96;
  *(&v416 + 1) = &type metadata for SparklineViewAccessibilityChartDescriptorRepresentable;
  v283 = v99;
  *&v417 = v99;
  *(&v417 + 1) = v100;
  v280 = v100;
  v110 = swift_getOpaqueTypeConformance2();
  v111 = sub_1C1E4D7A4(&qword_1EBF1C690, MEMORY[0x1E697CBE8]);
  v272 = v110;
  v404 = v110;
  v405 = v111;
  v112 = swift_getWitnessTable();
  v113 = sub_1C1DC1124(&qword_1EBF1D9F8, &qword_1EBF1D9F0, &qword_1C1E5A428);
  v307 = v104;
  *&v416 = v104;
  *(&v416 + 1) = v109;
  v294 = v109;
  v281 = v112;
  *&v417 = v112;
  *(&v417 + 1) = v113;
  v279 = v113;
  v114 = swift_getOpaqueTypeMetadata2();
  v282 = *(v114 - 8);
  v115 = *(v282 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v352 = &v246 - v116;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C248, &unk_1C1E5A430);
  v286 = v114;
  v349 = sub_1C1E5299C();
  v304 = *(v349 - 8);
  v117 = *(v304 + 64);
  MEMORY[0x1EEE9AC00](v349);
  v348 = &v246 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v119);
  v298 = &v246 - v120;
  v376 = v374;
  v377 = v373;
  v378 = v375;
  v379 = v337;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DC08, &qword_1C1E5A740);
  sub_1C1E4CD28();
  v121 = v310;
  sub_1C1E5259C();
  if (qword_1EBF1C158 != -1)
  {
    swift_once();
  }

  v403 = qword_1EBF20D88;
  v122 = sub_1C1E5263C();
  v123 = *(v122 - 8);
  v124 = *(v123 + 56);
  v125 = v123 + 56;
  v126 = v331;
  v124(v331, 1, 1, v122);
  v257 = v125;
  v337 = v124;

  v127 = v322;
  v128 = v353;
  sub_1C1E5329C();
  sub_1C1DC1870(v126, &qword_1EBF1D390, &qword_1C1E58A58);

  (*(v321 + 8))(v121, v128);
  v129 = *v375;
  sub_1C1E24AC8();
  v401 = v130;
  v402 = v131;
  v124(v126, 1, 1, v122);
  v132 = v326;
  v133 = v361;
  sub_1C1E531BC();
  sub_1C1DC1870(v126, &qword_1EBF1D390, &qword_1C1E58A58);
  (*(v327 + 8))(v127, v133);
  sub_1C1E24CD4();
  v399 = v134;
  v400 = v135;
  v337(v126, 1, 1, v122);
  v136 = v320;
  v137 = v368;
  sub_1C1E531DC();
  sub_1C1DC1870(v126, &qword_1EBF1D390, &qword_1C1E58A58);
  (*(v330 + 8))(v132, v137);
  v138 = v316;
  v139 = v360;
  sub_1C1E5317C();
  (*(v325 + 8))(v136, v139);
  v140 = v312;
  v141 = v358;
  sub_1C1E5318C();
  (*(v319 + 8))(v138, v141);
  v142 = v311;
  v143 = v356;
  sub_1C1E531AC();
  (*(v315 + 8))(v140, v143);
  v144 = v314;
  v145 = v355;
  sub_1C1E5321C();
  (*(v313 + 8))(v142, v145);
  v146 = v372;
  v147 = v375;
  sub_1C1E3B260(v372, v409);
  v425[0] = v409[0].n128_u64[0];
  v395 = v409[0];
  v396 = v409[1];
  v397 = v410;
  v398 = v411;
  v148 = v318;
  v149 = v357;
  sub_1C1E534AC();
  sub_1C1E4D130(v425);

  (*(v317 + 8))(v144, v149);
  v150 = v146;
  v151 = v146;
  v152 = v147;
  sub_1C1E3B168(v151, v412);
  v424 = v412[0].n128_u64[0];
  v392 = v412[0];
  v393 = v412[1];
  v394 = v413;
  v153 = v323;
  v154 = v359;
  sub_1C1E534AC();
  sub_1C1E4D130(&v424);

  (*(v324 + 8))(v148, v154);
  v155 = sub_1C1E3B350(v150);
  v388 = v156;
  v389 = v157;
  v390 = v155;
  v391 = v158;
  v159 = v332;
  v160 = v362;
  sub_1C1E534AC();

  (*(v329 + 8))(v153, v160);
  v161 = v150;
  sub_1C1E3B07C(v150, v414);
  v423 = v414[0].n128_u64[0];
  v384 = v414[0];
  v385 = v414[1];
  v386 = v415;
  v387 = v129;
  v353 = v129;
  swift_retain_n();
  v162 = v369;
  sub_1C1E534AC();
  sub_1C1E4D130(&v423);

  (*(v333 + 8))(v159, v162);
  v163 = v370;
  v164 = v370 + 16;
  v369 = *(v370 + 16);
  v165 = v350;
  v166 = v152;
  v167 = v161;
  (v369)(v350, v152, v161);
  v168 = *(v163 + 80);
  v169 = (v168 + 32) & ~v168;
  v170 = swift_allocObject();
  v171 = v373;
  *(v170 + 16) = v374;
  *(v170 + 24) = v171;
  v368 = *(v163 + 32);
  (v368)(v170 + v169, v165, v167);
  sub_1C1E538DC();
  v172 = v364;
  v173 = v363;
  sub_1C1E5320C();

  (*(v334 + 8))(v173, v172);
  v174 = v372;
  (v369)(v165, v166, v372);
  v175 = swift_allocObject();
  v176 = v373;
  *(v175 + 16) = v374;
  *(v175 + 24) = v176;
  (v368)(v175 + v169, v165, v174);
  sub_1C1E538DC();
  v177 = v366;
  v178 = v365;
  sub_1C1E5320C();

  (*(v335 + 8))(v178, v177);
  v179 = v372;
  v362 = v164;
  (v369)(v165, v375, v372);
  v361 = v168;
  v180 = swift_allocObject();
  *(v180 + 16) = v374;
  *(v180 + 24) = v176;
  v363 = v169;
  v370 = v163 + 32;
  (v368)(v180 + v169, v165, v179);
  sub_1C1E538DC();
  swift_checkMetadataState();
  v181 = v301;
  v182 = v338;
  v183 = v367;
  sub_1C1E5320C();

  (*(v336 + 8))(v183, v182);
  v184 = v339;
  sub_1C1E52E4C();
  v185 = v290;
  v186 = v306;
  sub_1C1E5341C();
  (*(v340 + 8))(v184, v341);
  (*(v303 + 8))(v181, v186);
  v383[11] = v353;
  v187 = v285;
  v188 = v297;
  sub_1C1E5345C();

  (*(v295 + 8))(v185, v188);
  v383[9] = sub_1C1E461D8();
  v383[10] = v189;
  sub_1C1DC733C();
  v190 = v284;
  v191 = v289;
  sub_1C1E533BC();

  (*(v287 + 8))(v187, v191);
  v383[7] = sub_1C1E465C0(v179);
  v383[8] = v192;
  v193 = v291;
  v194 = v307;
  sub_1C1E5297C();

  v195 = *(v300 + 8);
  v196 = v195(v190, v194);
  v367 = &v246;
  MEMORY[0x1EEE9AC00](v196);
  v197 = v294;
  v198 = v281;
  v199 = v279;
  sub_1C1E5340C();
  v195(v193, v194);
  swift_getKeyPath();
  v200 = v343;
  v201 = v342;
  v202 = v344;
  (*(v343 + 104))(v342, *MEMORY[0x1E697E7D0], v344);
  *&v416 = v194;
  *(&v416 + 1) = v197;
  *&v417 = v198;
  *(&v417 + 1) = v199;
  v203 = swift_getOpaqueTypeConformance2();
  v204 = v348;
  v205 = v286;
  v206 = v352;
  sub_1C1E5330C();

  (*(v200 + 8))(v201, v202);
  (*(v282 + 8))(v206, v205);
  v207 = sub_1C1DC1124(&qword_1EDE73B28, &qword_1EBF1C248, &unk_1C1E5A430);
  v383[5] = v203;
  v383[6] = v207;
  v208 = v349;
  v209 = swift_getWitnessTable();
  v210 = v298;
  v364 = v209;
  sub_1C1E105BC(v204, v208, v209);
  v211 = v304;
  v212 = *(v304 + 8);
  v366 = v304 + 8;
  v365 = v212;
  (v212)(v204, v208);
  swift_getKeyPath();
  v213 = v353;
  *&v416 = v353;
  sub_1C1E4D7A4(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v214 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter;
  swift_beginAccess();
  v215 = *(v213 + v214);
  v216 = 1;
  if (v215 == 1)
  {
    swift_getKeyPath();
    *&v416 = v213;
    sub_1C1E520BC();

    swift_beginAccess();
    v216 = 1;
    if (*(v213 + 17) == 1)
    {
      v217 = v350;
      v218 = v372;
      (v369)(v350, v375, v372);
      v219 = v363;
      v220 = swift_allocObject();
      v221 = v373;
      *(v220 + 16) = v374;
      *(v220 + 24) = v221;
      (v368)(&v219[v220], v217, v218);
      v222 = v248;
      sub_1C1E5373C();
      v223 = &v222[*(v247 + 36)];
      v224 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4B0, &unk_1C1E5A800) + 28);
      v225 = *MEMORY[0x1E697DC20];
      v226 = sub_1C1E526FC();
      (*(*(v226 - 8) + 104))(v223 + v224, v225, v226);
      *v223 = swift_getKeyPath();
      v227 = v249;
      sub_1C1E52E6C();
      sub_1C1E102AC();
      sub_1C1E4D7A4(&qword_1EBF1D4B8, MEMORY[0x1E697CB70]);
      v228 = v255;
      v229 = v251;
      sub_1C1E532EC();
      (*(v250 + 8))(v227, v229);
      v230 = v222;
      v204 = v348;
      sub_1C1DC1870(v230, &qword_1EBF1D378, &qword_1C1E58A48);
      (*(v253 + 104))(v252, *MEMORY[0x1E69814D8], v254);
      v231 = sub_1C1E5368C();
      KeyPath = swift_getKeyPath();
      *&v416 = v231;
      v233 = sub_1C1E5282C();
      v234 = &v228[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D498, &unk_1C1E5A7F0) + 36)];
      *v234 = KeyPath;
      v234[1] = v233;
      *&v228[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D488, &qword_1C1E58B28) + 36)] = 0x3FE6666666666666;
      LOBYTE(v233) = sub_1C1E5300C();
      v235 = &v228[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D478, &unk_1C1E5A7E0) + 36)];
      *v235 = v233;
      *(v235 + 8) = 0u;
      *(v235 + 24) = 0u;
      v235[40] = 1;
      sub_1C1E538DC();
      sub_1C1E529FC();
      v236 = &v228[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D468, &qword_1C1E58B20) + 36)];
      v237 = v421;
      *(v236 + 4) = v420;
      *(v236 + 5) = v237;
      *(v236 + 6) = v422;
      v238 = v417;
      *v236 = v416;
      *(v236 + 1) = v238;
      v239 = v419;
      *(v236 + 2) = v418;
      *(v236 + 3) = v239;
      *&v228[*(v256 + 36)] = 0;
      sub_1C1E3AAD0(v218);
      sub_1C1E0FF0C();
      sub_1C1E533CC();
      v240 = v228;
      v208 = v349;
      sub_1C1DC1870(v240, &qword_1EBF1D380, &unk_1C1E5A730);
      v216 = 0;
    }
  }

  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D440, &unk_1C1E5A7D0);
  v242 = v351;
  (*(*(v241 - 8) + 56))(v351, v216, 1, v241);
  (*(v211 + 16))(v204, v210, v208);
  v383[0] = v204;
  v243 = v346;
  sub_1C1DD3BE0(v242, v346);
  v383[1] = v243;
  v382[0] = v208;
  v382[1] = v345;
  v380 = v364;
  v381 = sub_1C1E4D288(&qword_1EBF1D448, &qword_1EBF1D298, &qword_1C1E58808, sub_1C1E0FE50);
  sub_1C1E3A60C(v383, 2uLL, v382);
  sub_1C1DC1870(v242, &qword_1EBF1D298, &qword_1C1E58808);
  v244 = v365;
  (v365)(v210, v208);
  sub_1C1DC1870(v243, &qword_1EBF1D298, &qword_1C1E58808);
  return v244(v204, v208);
}