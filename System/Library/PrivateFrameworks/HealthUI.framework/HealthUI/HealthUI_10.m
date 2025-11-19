uint64_t sub_1C3CAF0EC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void sub_1C3CAF2E0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for SleepScoreChartData();
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v40 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v15 = (a2 - a1) / v13;
  v53 = a1;
  v52 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v17;
    if (v17 >= 1)
    {
      v26 = -v13;
      v27 = v25;
      v44 = a4;
      v45 = a1;
      v48 = v8;
      v43 = -v13;
      do
      {
        v41 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v46 = a2;
        v47 = a2 + v26;
        while (1)
        {
          if (v28 <= a1)
          {
            v53 = v28;
            v51 = v41;
            goto LABEL_60;
          }

          v31 = a3;
          v42 = v25;
          a3 += v26;
          v32 = v27 + v26;
          v33 = v49;
          sub_1C3CAF8F0(v27 + v26, v49, type metadata accessor for SleepScoreChartData);
          v34 = v50;
          sub_1C3CAF8F0(v29, v50, type metadata accessor for SleepScoreChartData);
          v35 = *(v8 + 20);
          v36 = *(v33 + v35);
          v37 = *(v34 + v35);
          sub_1C3CAF9C8(v34, type metadata accessor for SleepScoreChartData);
          sub_1C3CAF9C8(v33, type metadata accessor for SleepScoreChartData);
          if (v36 < v37)
          {
            break;
          }

          v25 = v32;
          if (v31 < v27 || a3 >= v27)
          {
            v30 = v48;
            swift_arrayInitWithTakeFrontToBack();
            v29 = v47;
            v8 = v30;
            v26 = v43;
          }

          else
          {
            v29 = v47;
            v8 = v48;
            v26 = v43;
            if (v31 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v32;
          a1 = v45;
          v28 = v46;
          if (v32 <= v44)
          {
            a2 = v46;
            goto LABEL_59;
          }
        }

        v38 = v44;
        if (v31 < v46 || a3 >= v46)
        {
          a2 = v47;
          v8 = v48;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v42;
          v26 = v43;
        }

        else
        {
          v39 = v31 == v46;
          a2 = v47;
          v8 = v48;
          v25 = v42;
          v26 = v43;
          if (!v39)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v45;
      }

      while (v27 > v38);
    }

LABEL_59:
    v53 = a2;
    v51 = v25;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v51 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v46 = a3;
      v48 = v8;
      do
      {
        v19 = v49;
        sub_1C3CAF8F0(a2, v49, type metadata accessor for SleepScoreChartData);
        v20 = v50;
        sub_1C3CAF8F0(a4, v50, type metadata accessor for SleepScoreChartData);
        v21 = *(v8 + 20);
        v22 = *(v19 + v21);
        v23 = *(v20 + v21);
        sub_1C3CAF9C8(v20, type metadata accessor for SleepScoreChartData);
        sub_1C3CAF9C8(v19, type metadata accessor for SleepScoreChartData);
        if (v22 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            v8 = v48;
            swift_arrayInitWithTakeFrontToBack();
            v24 = v46;
          }

          else
          {
            v24 = v46;
            v8 = v48;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v52 = a4 + v13;
          a4 += v13;
        }

        else if (a1 < a2 || a1 >= a2 + v13)
        {
          v8 = v48;
          swift_arrayInitWithTakeFrontToBack();
          a2 += v13;
          v24 = v46;
        }

        else
        {
          v24 = v46;
          v8 = v48;
          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v53 = a1;
      }

      while (a4 < v47 && a2 < v24);
    }
  }

LABEL_60:
  sub_1C3CAF80C(&v53, &v52, &v51);
}

uint64_t sub_1C3CAF80C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for SleepScoreChartData();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1C3CAF8F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3CAF958(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C3CB04AC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C3CAF9C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C3CAFA30()
{
  result = type metadata accessor for SleepScoreDataSourceContext(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1C3CAFB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      sub_1C3CAFF04(v10, v7, a3, v5);
      MEMORY[0x1C69321D0](v10, -1, -1);
      return;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v9 = v11 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v9, v8);
  sub_1C3CAFCAC(v9, v7, a3, v5);
  if (v3)
  {
    swift_willThrow();
  }
}

void sub_1C3CAFCAC(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t *))
{
  v34 = a4;
  v28 = a2;
  v29 = a1;
  v37 = sub_1C3D1E6E4();
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v37);
  v35 = a3;
  v36 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v32 = v5 + 16;
  v33 = v5;
  v30 = 0;
  v31 = (v5 + 8);
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v17 = v16 | (v8 << 6);
    v18 = v36;
    v19 = v37;
LABEL_11:
    v22 = v35;
    (*(v33 + 16))(v18, v35[6] + *(v33 + 72) * v17, v19, v6);
    v39 = *(v22[7] + 8 * v17);
    v23 = v38;
    v24 = v34(v18, &v39);
    v38 = v23;
    if (v23)
    {
      (*v31)(v18, v19);
      return;
    }

    v25 = v24;
    (*v31)(v18, v19);
    if (v25)
    {
      *(v29 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1C3CAFF94(v29, v28, v30, v35);
        return;
      }
    }
  }

  v20 = v8;
  v18 = v36;
  v19 = v37;
  while (1)
  {
    v8 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      goto LABEL_16;
    }

    v21 = v10[v8];
    ++v20;
    if (v21)
    {
      v14 = (v21 - 1) & v21;
      v17 = __clz(__rbit64(v21)) | (v8 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1C3CAFF04(void *result, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1C3CAFCAC(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1C3CAFF94(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v47 = sub_1C3D1E6E4();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v36 - v11;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_1C3C76540();
  result = sub_1C3D20994();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v38 = v45 + 16;
  v39 = result;
  v46 = v45 + 32;
  v16 = result + 64;
  v40 = a1;
  v37 = a4;
  v17 = v47;
  while (v14)
  {
    v18 = v9;
    v19 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v22 = v19 | (v15 << 6);
    v23 = a4[6];
    v24 = v45;
    v44 = *(v45 + 72);
    v25 = v41;
    (*(v45 + 16))(v41, v23 + v44 * v22, v17);
    v43 = *(a4[7] + 8 * v22);
    v26 = *(v24 + 32);
    v9 = v18;
    v26(v18, v25, v17);
    v13 = v39;
    sub_1C3CB05A4(&qword_1EC086D10, MEMORY[0x1E69D36D8]);
    result = sub_1C3D1FF74();
    v27 = -1 << *(v13 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      a1 = v40;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v16 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    a1 = v40;
LABEL_26:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    result = (v26)(*(v13 + 48) + v30 * v44, v9, v47);
    *(*(v13 + 56) + 8 * v30) = v43;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v37;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v20 = v15;
  while (1)
  {
    v15 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v21 = a1[v15];
    ++v20;
    if (v21)
    {
      v18 = v9;
      v19 = __clz(__rbit64(v21));
      v42 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1C3CB0320()
{
  if (!qword_1EC086F48)
  {
    sub_1C3D1E6E4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC086F48);
    }
  }
}

uint64_t sub_1C3CB038C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3CB0418(uint64_t a1, uint64_t a2)
{
  sub_1C3CB04AC(0, &unk_1EC086F50, sub_1C3CB0320, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C3CB04AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1C3CB0510(uint64_t a1, uint64_t a2)
{
  sub_1C3CB04AC(0, &unk_1EC086F60, MEMORY[0x1E69D36C8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3CB05A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3CB05EC()
{
  v1 = v0;
  v2 = sub_1C3D1E654();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SleepScoreDataSourceContext(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CB3F74(v1, v8, type metadata accessor for SleepScoreDataSourceContext);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return swift_getKeyPath();
  }

  (*(v3 + 32))(v5, v8, v2);
  v9 = (*(v3 + 88))(v5, v2);
  if (v9 == *MEMORY[0x1E69D36C0] || v9 == *MEMORY[0x1E69D36B8] || v9 == *MEMORY[0x1E69D36B0])
  {
    return swift_getKeyPath();
  }

  KeyPath = swift_getKeyPath();
  (*(v3 + 8))(v5, v2);
  return KeyPath;
}

uint64_t SleepScoreDataSourceContext.hash(into:)()
{
  v1 = sub_1C3D1E654();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SleepScoreDataSourceContext(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CB3F74(v0, v7, type metadata accessor for SleepScoreDataSourceContext);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return MEMORY[0x1C6930170](0);
  }

  (*(v2 + 32))(v4, v7, v1);
  MEMORY[0x1C6930170](1);
  sub_1C3CB3F2C(&qword_1EC086F80, MEMORY[0x1E69D36C8]);
  sub_1C3D1FF84();
  return (*(v2 + 8))(v4, v1);
}

uint64_t SleepScoreDataSourceContext.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1C3D1E654();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SleepScoreDataSourceContext(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D20B04();
  sub_1C3CB3F74(v1, v8, type metadata accessor for SleepScoreDataSourceContext);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    MEMORY[0x1C6930170](0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1C6930170](1);
    sub_1C3CB3F2C(&qword_1EC086F80, MEMORY[0x1E69D36C8]);
    sub_1C3D1FF84();
    (*(v3 + 8))(v5, v2);
  }

  return sub_1C3D20B34();
}

uint64_t sub_1C3CB0BCC()
{
  v1 = sub_1C3D1E654();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CB3F74(v0, v7, type metadata accessor for SleepScoreDataSourceContext);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return MEMORY[0x1C6930170](0);
  }

  (*(v2 + 32))(v4, v7, v1);
  MEMORY[0x1C6930170](1);
  sub_1C3CB3F2C(&qword_1EC086F80, MEMORY[0x1E69D36C8]);
  sub_1C3D1FF84();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1C3CB0D98()
{
  v1 = v0;
  v2 = sub_1C3D1E654();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D20B04();
  sub_1C3CB3F74(v1, v8, type metadata accessor for SleepScoreDataSourceContext);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    MEMORY[0x1C6930170](0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1C6930170](1);
    sub_1C3CB3F2C(&qword_1EC086F80, MEMORY[0x1E69D36C8]);
    sub_1C3D1FF84();
    (*(v3 + 8))(v5, v2);
  }

  return sub_1C3D20B34();
}

id SleepScoreChartDataSource.__allocating_init(displayType:healthStore:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithDisplayType:a1 healthStore:a2];

  return v5;
}

char *SleepScoreChartDataSource.init(displayType:healthStore:)(void *a1, void *a2)
{
  v4 = sub_1C3D1E3C4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C3D1E6F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  sub_1C3D1E7E4();
  sub_1C3D1E7D4();
  sub_1C3D1E7C4();

  v14 = [objc_opt_self() hk_gregorianCalendarWithFirstWeekdayFromRegion];
  sub_1C3D1E384();

  (*(v8 + 16))(v10, v13, v7);
  v15 = objc_allocWithZone(type metadata accessor for SleepScoreChartDataSource(0));
  v16 = sub_1C3CB37BC(a1, a2, v6, v10, v15);
  (*(v8 + 8))(v13, v7);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v16;
}

uint64_t sub_1C3CB1404(void *a1, uint64_t a2, uint64_t a3)
{
  v125 = a2;
  v126 = a3;
  ObjectType = swift_getObjectType();
  v130 = sub_1C3D1DCF4();
  v128 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v123 = &v113[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v122 = &v113[-v7];
  sub_1C3C29314();
  v119 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v127 = &v113[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v113[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v113[-v14];
  v16 = sub_1C3D1E1E4();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v113[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v113[-v22];
  v24 = [a1 startDate];
  sub_1C3D1E1A4();

  sub_1C3D1E1B4();
  LOBYTE(v24) = sub_1C3D1E194();
  v25 = *(v17 + 8);
  v25(v19, v16);
  v120 = v16;
  v121 = v17 + 8;
  v124 = v25;
  v25(v23, v16);
  if (v24)
  {
    sub_1C3CB2A24(a1, v15);
    if (qword_1EC0850B8 != -1)
    {
      swift_once();
    }

    v26 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v26, qword_1EC08DCC8);
    v117 = v12;
    sub_1C3CB3F74(v15, v12, sub_1C3C29314);
    v118 = v15;
    v27 = v15;
    v28 = v127;
    sub_1C3CB3F74(v27, v127, sub_1C3C29314);
    v29 = a1;
    v30 = v3;
    v31 = sub_1C3D1ED84();
    v32 = sub_1C3D20514();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v131 = v115;
      *v33 = 136447746;
      v34 = sub_1C3D20CD4();
      v114 = v32;
      v36 = sub_1C3C22C28(v34, v35, &v131);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_1C3C22C28(*&v30[OBJC_IVAR___HKSleepScoreChartDataSource_debugIdentifier], *&v30[OBJC_IVAR___HKSleepScoreChartDataSource_debugIdentifier + 8], &v131);
      *(v33 + 22) = 2082;
      v37 = [v29 statisticsInterval];
      v116 = v30;
      v38 = v122;
      sub_1C3D1DCA4();

      sub_1C3CB3F2C(&unk_1EC087600, MEMORY[0x1E6968278]);
      v39 = v130;
      v40 = sub_1C3D20A14();
      v42 = v41;
      v43 = v128;
      (*(v128 + 8))(v38, v39);
      v44 = sub_1C3C22C28(v40, v42, &v131);

      *(v33 + 24) = v44;
      *(v33 + 32) = 2082;
      v45 = [v29 startDate];
      sub_1C3D1E1A4();

      sub_1C3CB3F2C(&unk_1EC086A00, MEMORY[0x1E6969530]);
      v46 = v120;
      v47 = sub_1C3D20A14();
      v49 = v48;
      v50 = v124;
      v122 = v31;
      v124(v23, v46);
      v51 = sub_1C3C22C28(v47, v49, &v131);

      *(v33 + 34) = v51;
      *(v33 + 42) = 2082;
      v52 = [v29 endDate];
      sub_1C3D1E1A4();

      v53 = sub_1C3D20A14();
      v55 = v54;
      v50(v23, v46);
      v30 = v116;
      v56 = sub_1C3C22C28(v53, v55, &v131);

      *(v33 + 44) = v56;
      *(v33 + 52) = 2048;
      v57 = v117;
      v58 = sub_1C3D1FE34();
      sub_1C3CB483C(v57, sub_1C3C29314);
      *(v33 + 54) = v58;
      *(v33 + 62) = 2048;
      v59 = v130;
      v60 = v127;
      v61 = sub_1C3D1FE34();
      sub_1C3CB483C(v60, sub_1C3C29314);
      *(v33 + 64) = v61;
      v62 = v122;
      _os_log_impl(&dword_1C3942000, v122, v114, "[%{public}s.%s] Creating query: %{public}s dates: %{public}s to %{public}s day indices: %ld-%ld", v33, 0x48u);
      v63 = v115;
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v63, -1, -1);
      MEMORY[0x1C69321D0](v33, -1, -1);
    }

    else
    {
      sub_1C3CB483C(v28, sub_1C3C29314);
      sub_1C3CB483C(v117, sub_1C3C29314);

      v59 = v130;
      v43 = v128;
    }

    v94 = &v30[OBJC_IVAR___HKSleepScoreChartDataSource_debugIdentifier];
    v95 = v30;
    v97 = *&v30[OBJC_IVAR___HKSleepScoreChartDataSource_debugIdentifier];
    v96 = *(v94 + 1);

    v98 = [v29 statisticsInterval];
    v99 = v123;
    sub_1C3D1DCA4();

    v100 = sub_1C3D1DC84();
    LODWORD(v128) = v101;
    (*(v43 + 8))(v99, v59);
    v102 = *&v95[OBJC_IVAR___HKSleepScoreChartDataSource_queryProvider + 24];
    v103 = *&v95[OBJC_IVAR___HKSleepScoreChartDataSource_queryProvider + 32];
    __swift_project_boxed_opaque_existential_0(&v95[OBJC_IVAR___HKSleepScoreChartDataSource_queryProvider], v102);
    v104 = OBJC_IVAR___HKSleepScoreChartDataSource_gregorianCalendar;
    v105 = OBJC_IVAR___HKSleepScoreChartDataSource_algorithmVersion;
    v106 = swift_allocObject();
    v106[2] = v97;
    v106[3] = v96;
    v106[4] = v125;
    v107 = ObjectType;
    v106[5] = v126;
    v106[6] = v107;
    v108 = *(v103 + 8);

    v109 = v118;
    v110 = v108(v118, &v95[v104], (v100 == 1) & ~v128, &v95[v105], sub_1C3CB3FDC, v106, v102, v103);

    v111 = [v95 queryDescription];
    [v110 setDebugIdentifier_];

    sub_1C396C43C(0, &qword_1EC080D60, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v112 = swift_allocObject();
    *(v112 + 16) = xmmword_1C3D5EAE0;
    *(v112 + 32) = v110;
    sub_1C3CB483C(v109, sub_1C3C29314);
    return v112;
  }

  else
  {
    if (qword_1EC0850B8 != -1)
    {
      swift_once();
    }

    v64 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v64, qword_1EC08DCC8);
    v65 = a1;
    v66 = v3;
    v67 = sub_1C3D1ED84();
    v68 = sub_1C3D20514();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v131 = v127;
      *v69 = 136447234;
      v70 = sub_1C3D20CD4();
      LODWORD(ObjectType) = v68;
      v72 = sub_1C3C22C28(v70, v71, &v131);

      *(v69 + 4) = v72;
      *(v69 + 12) = 2080;
      *(v69 + 14) = sub_1C3C22C28(*&v66[OBJC_IVAR___HKSleepScoreChartDataSource_debugIdentifier], *&v66[OBJC_IVAR___HKSleepScoreChartDataSource_debugIdentifier + 8], &v131);
      *(v69 + 22) = 2082;
      v73 = [v65 statisticsInterval];
      v74 = v122;
      sub_1C3D1DCA4();

      sub_1C3CB3F2C(&unk_1EC087600, MEMORY[0x1E6968278]);
      v75 = v130;
      v76 = sub_1C3D20A14();
      v78 = v77;
      (*(v128 + 8))(v74, v75);
      v79 = sub_1C3C22C28(v76, v78, &v131);

      *(v69 + 24) = v79;
      *(v69 + 32) = 2082;
      v80 = [v65 startDate];
      sub_1C3D1E1A4();

      sub_1C3CB3F2C(&unk_1EC086A00, MEMORY[0x1E6969530]);
      v81 = v120;
      v82 = sub_1C3D20A14();
      v84 = v83;
      v85 = v124;
      v124(v23, v81);
      v86 = sub_1C3C22C28(v82, v84, &v131);

      *(v69 + 34) = v86;
      *(v69 + 42) = 2082;
      v87 = [v65 endDate];
      sub_1C3D1E1A4();

      v88 = sub_1C3D20A14();
      v90 = v89;
      v85(v23, v81);
      v91 = sub_1C3C22C28(v88, v90, &v131);

      *(v69 + 44) = v91;
      _os_log_impl(&dword_1C3942000, v67, ObjectType, "[%{public}s.%s] Skipping query: %{public}s dates: %{public}s to %{public}s", v69, 0x34u);
      v92 = v127;
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v92, -1, -1);
      MEMORY[0x1C69321D0](v69, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1C3CB2060(void *a1, char a2, uint64_t a3, unint64_t a4, void (*a5)(void, void))
{
  v9 = qword_1EC0850B8;
  if (a2)
  {
    if (qword_1EC0850B8 != -1)
    {
      swift_once();
    }

    v10 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v10, qword_1EC08DCC8);
    sub_1C3CB4764(a1, 1);

    v11 = sub_1C3D1ED84();
    v12 = sub_1C3D204F4();

    sub_1C3C7DFB8(a1, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v42 = a5;
      v14 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v43 = v41;
      *v13 = 136446722;
      v15 = sub_1C3D20CD4();
      v17 = sub_1C3C22C28(v15, v16, &v43);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_1C3C22C28(a3, a4, &v43);
      *(v13 + 22) = 2114;
      v18 = a1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 24) = v19;
      *v14 = v19;
      _os_log_impl(&dword_1C3942000, v11, v12, "[%{public}s.%s] Query failed with error: %{public}@", v13, 0x20u);
      sub_1C3CB483C(v14, sub_1C3C346D8);
      v20 = v14;
      a5 = v42;
      MEMORY[0x1C69321D0](v20, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v41, -1, -1);
      MEMORY[0x1C69321D0](v13, -1, -1);
    }

    v43 = 0u;
    v44 = 0u;
    a5(&v43, a1);
    v21 = MEMORY[0x1E69E6720];
    v22 = MEMORY[0x1E69E7CA0] + 8;
  }

  else
  {

    if (v9 != -1)
    {
      swift_once();
    }

    v23 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v23, qword_1EC08DCC8);
    sub_1C3CB4764(a1, 0);

    v24 = sub_1C3D1ED84();
    v25 = sub_1C3D204D4();

    sub_1C3C7DFB8(a1, 0);
    v26 = os_log_type_enabled(v24, v25);
    v27 = MEMORY[0x1E69E7CA0];
    if (v26)
    {
      v28 = a5;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v43 = v30;
      *v29 = 136446722;
      v31 = sub_1C3D20CD4();
      v33 = sub_1C3C22C28(v31, v32, &v43);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_1C3C22C28(a3, a4, &v43);
      *(v29 + 22) = 2080;
      v34 = sub_1C3D20A14();
      v36 = sub_1C3C22C28(v34, v35, &v43);

      *(v29 + 24) = v36;
      _os_log_impl(&dword_1C3942000, v24, v25, "[%{public}s.%s] Query found %s data", v29, 0x20u);
      swift_arrayDestroy();
      v37 = v30;
      v27 = MEMORY[0x1E69E7CA0];
      MEMORY[0x1C69321D0](v37, -1, -1);
      v38 = v29;
      a5 = v28;
      MEMORY[0x1C69321D0](v38, -1, -1);
    }

    sub_1C3CB4700(0, &unk_1EC087000, type metadata accessor for SleepScoreChartData, MEMORY[0x1E69E62F8]);
    *(&v44 + 1) = v39;
    *&v43 = a1;
    a5(&v43, 0);
    v21 = MEMORY[0x1E69E6720];
    v22 = v27 + 8;
  }

  return sub_1C3CB41C0(&v43, &qword_1EC0810F0, v22, v21, sub_1C396C43C);
}

id sub_1C3CB2628(uint64_t a1, uint64_t a2)
{
  sub_1C3CB4700(0, &unk_1EC086FF0, type metadata accessor for SleepScoreDataSourceContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v17 - v5;
  v7 = type metadata accessor for SleepScoreDataSourceContext(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C396C578(a1, v18);
  if (!v19)
  {
    sub_1C3CB41C0(v18, &qword_1EC0810F0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1C396C43C);
    return 0;
  }

  sub_1C3CB4700(0, &unk_1EC087000, type metadata accessor for SleepScoreChartData, MEMORY[0x1E69E62F8]);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v11 = v17[1];
  sub_1C3C233C8(a2, v18);
  v12 = swift_dynamicCast();
  v13 = *(v8 + 56);
  if (v12)
  {
    v13(v6, 0, 1, v7);
    sub_1C3CB4770(v6, v10, type metadata accessor for SleepScoreDataSourceContext);
  }

  else
  {
    v13(v6, 1, 1, v7);
    v15 = sub_1C3D1E654();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  }

  v16 = sub_1C3CB2EE8(v11, v10);

  sub_1C3CB483C(v10, type metadata accessor for SleepScoreDataSourceContext);
  return v16;
}

uint64_t sub_1C3CB2A24@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v49 = a1;
  v47 = a2;
  sub_1C3C29A0C();
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v44 - v8;
  v53 = sub_1C3D1E3C4();
  v9 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C3D1E1E4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1C3D1FE54();
  v52 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v50 = &v44 - v19;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v44 - v22;
  v24 = [a1 startDate];
  sub_1C3D1E1A4();

  v25 = OBJC_IVAR___HKSleepScoreChartDataSource_gregorianCalendar;
  v26 = *(v9 + 16);
  v48 = v9 + 16;
  v27 = v53;
  v26(v11, v3 + OBJC_IVAR___HKSleepScoreChartDataSource_gregorianCalendar, v53);
  sub_1C3D1FE14();
  v28 = [v49 endDate];
  sub_1C3D1E1A4();

  v29 = v23;
  v30 = v27;
  v31 = v52;
  v26(v11, v3 + v25, v30);
  v32 = v50;
  sub_1C3D1FE14();
  v33 = v51;
  sub_1C3D1FDD4();
  sub_1C3D1FDF4();
  v34 = *(v31 + 8);
  v34(v33, v13);
  v34(v17, v13);
  sub_1C3CB3F2C(&qword_1EC086290, MEMORY[0x1E696B418]);
  result = sub_1C3D20004();
  if (result)
  {
    v36 = *(v31 + 32);
    v37 = v44;
    v36(v44, v29, v13);
    v38 = v45;
    v36((v37 + *(v45 + 48)), v32, v13);
    v39 = v46;
    sub_1C3CB3F74(v37, v46, sub_1C3C29A0C);
    v40 = *(v38 + 48);
    v41 = v47;
    v36(v47, v39, v13);
    v34((v39 + v40), v13);
    sub_1C3CB4770(v37, v39, sub_1C3C29A0C);
    v42 = *(v38 + 48);
    sub_1C3C29314();
    v36(&v41[*(v43 + 36)], (v39 + v42), v13);
    return (v34)(v39, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C3CB2EE8(uint64_t a1, uint64_t a2)
{
  sub_1C3CB4700(0, &qword_1EC085770, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_1C3D1E1E4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  v22 = [objc_allocWithZone(HKGraphSeriesDataBlock) init];
  sub_1C3D1E1B4();
  sub_1C3D1E354();
  v21 = *(v9 + 8);
  v21(v11, v8);
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_1C3D1E1B4();
    v16 = v15(v7, 1, v8);
    if (v16 != 1)
    {
      v16 = sub_1C3CB41C0(v7, &qword_1EC085770, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1C3CB4700);
    }
  }

  else
  {
    v16 = (*(v9 + 32))(v14, v7, v8);
  }

  MEMORY[0x1EEE9AC00](v16);
  *(&v20 - 4) = v2;
  *(&v20 - 3) = v14;
  *(&v20 - 2) = a2;
  if (sub_1C3C2877C(sub_1C3CB4220, (&v20 - 6), a1) >> 62)
  {
    sub_1C3C315FC();
    sub_1C3D20954();
  }

  else
  {

    sub_1C3D20A64();
    sub_1C3C315FC();
  }

  sub_1C3C315FC();
  v17 = sub_1C3D202A4();

  v18 = v22;
  [v22 setChartPoints_];

  v21(v14, v8);
  return v18;
}

id sub_1C3CB3260@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v36 = a5;
  v34 = a4;
  v37 = a3;
  v7 = sub_1C3D1E3C4();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SleepScoreChartData();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v33 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C3D1E1E4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_opt_self();
  v16 = a1;
  v17 = sub_1C3D1FE34();
  v18 = OBJC_IVAR___HKSleepScoreChartDataSource_gregorianCalendar;
  v35 = a2;
  v19 = sub_1C3D1E364();
  v20 = [v15 hk:v17 dateOnDayIndex:0 atHour:v19 calendar:?];

  sub_1C3D1E1A4();
  if ((sub_1C3D1E194() & 1) == 0)
  {
    result = (*(v12 + 8))(v14, v11);
    v29 = 0;
    goto LABEL_5;
  }

  v21 = v16;
  v22 = v33;
  sub_1C3CB3F74(v21, v33, type metadata accessor for SleepScoreChartData);
  v23 = sub_1C3CB05EC();
  v24 = v35;
  result = [v35 displayType];
  if (result)
  {
    v26 = result;
    sub_1C3C27CB4(0, &unk_1EC086FE0);
    v27 = &v24[v18];
    v28 = v30;
    (*(v31 + 16))(v30, v27, v32);
    v29 = sub_1C3CB4240(v22, v23, v26, v28);

    result = (*(v12 + 8))(v14, v11);
LABEL_5:
    *v36 = v29;
    return result;
  }

  __break(1u);
  return result;
}

id SleepScoreChartDataSource.__allocating_init(dataType:healthStore:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithDataType:a1 healthStore:a2];

  return v5;
}

id SleepScoreChartDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SleepScoreChartDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepScoreChartDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1C3CB37BC(void *a1, void *a2, uint64_t a3, uint64_t a4, char *a5)
{
  v57 = a1;
  v58 = a2;
  ObjectType = swift_getObjectType();
  v8 = sub_1C3D1E224();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = &type metadata for HealthSleepScoreChartDataQueryProvider;
  v63 = &off_1F42FCA28;
  v12 = &a5[OBJC_IVAR___HKSleepScoreChartDataSource_debugIdentifier];
  sub_1C3D1E214();
  v13 = sub_1C3D1E1F4();
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  v17 = sub_1C3CE44DC(5, v13, v15, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = MEMORY[0x1C692F7B0](v17, v19, v21, v23);
  v26 = v25;

  *v12 = v24;
  v12[1] = v26;
  v27 = OBJC_IVAR___HKSleepScoreChartDataSource_gregorianCalendar;
  v28 = sub_1C3D1E3C4();
  v29 = *(v28 - 8);
  v30 = a3;
  (*(v29 + 16))(&a5[v27], a3, v28);
  sub_1C3C4D7A4(v61, &a5[OBJC_IVAR___HKSleepScoreChartDataSource_queryProvider]);
  v31 = OBJC_IVAR___HKSleepScoreChartDataSource_algorithmVersion;
  v32 = sub_1C3D1E6F4();
  v33 = *(v32 - 8);
  v34 = *(v33 + 16);
  v56 = a4;
  v34(&a5[v31], a4, v32);
  v35 = type metadata accessor for SleepScoreChartDataSource(0);
  v60.receiver = a5;
  v60.super_class = v35;
  v36 = objc_msgSendSuper2(&v60, sel_initWithDisplayType_healthStore_, v57, v58);
  v37 = qword_1EC0850B8;
  v38 = v36;
  if (v37 != -1)
  {
    swift_once();
  }

  v39 = sub_1C3D1EDA4();
  __swift_project_value_buffer(v39, qword_1EC08DCC8);
  v40 = sub_1C3D1ED84();
  v41 = sub_1C3D20514();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v54 = v30;
    v43 = v42;
    v44 = swift_slowAlloc();
    v59 = v44;
    *v43 = 136446466;
    v45 = sub_1C3D20CD4();
    v47 = sub_1C3C22C28(v45, v46, &v59);
    ObjectType = v28;
    v48 = v47;

    *(v43 + 4) = v48;
    *(v43 + 12) = 2080;
    v49 = *&v38[OBJC_IVAR___HKSleepScoreChartDataSource_debugIdentifier];
    v50 = *&v38[OBJC_IVAR___HKSleepScoreChartDataSource_debugIdentifier + 8];

    v51 = sub_1C3C22C28(v49, v50, &v59);

    *(v43 + 14) = v51;
    _os_log_impl(&dword_1C3942000, v40, v41, "[%{public}s.%s] init", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C69321D0](v44, -1, -1);
    MEMORY[0x1C69321D0](v43, -1, -1);

    (*(v33 + 8))(v56, v32);
    (*(v29 + 8))(v54, ObjectType);
  }

  else
  {

    (*(v33 + 8))(v56, v32);
    (*(v29 + 8))(v30, v28);
  }

  __swift_destroy_boxed_opaque_existential_0(v61);
  return v38;
}

uint64_t _s8HealthUI27SleepScoreDataSourceContextO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C3D1E654();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SleepScoreDataSourceContext(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CB47D8();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 56);
  sub_1C3CB3F74(a1, v13, type metadata accessor for SleepScoreDataSourceContext);
  sub_1C3CB3F74(a2, &v13[v15], type metadata accessor for SleepScoreDataSourceContext);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    v17 = 1;
    v18 = v16(&v13[v15], 1, v4);
    v19 = type metadata accessor for SleepScoreDataSourceContext;
    if (v18 == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1C3CB3F74(v13, v10, type metadata accessor for SleepScoreDataSourceContext);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v17 = sub_1C3D1E634();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      v19 = type metadata accessor for SleepScoreDataSourceContext;
      goto LABEL_8;
    }

    (*(v5 + 8))(v10, v4);
  }

  v17 = 0;
  v19 = sub_1C3CB47D8;
LABEL_8:
  sub_1C3CB483C(v13, v19);
  return v17 & 1;
}

uint64_t sub_1C3CB3F2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3CB3F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3CB406C()
{
  v0 = sub_1C3D1E654();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1C3CB40CC()
{
  result = sub_1C3D1E3C4();
  if (v1 <= 0x3F)
  {
    result = sub_1C3D1E6F4();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C3CB41C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1C3CB4240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SleepScoreChartData();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C3D1E1E4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C3D1FE34();
  sub_1C3C29314();
  result = sub_1C3D1FE34();
  if (v15 > result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v17 = ceil((result - v15) * 0.5 + v15);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v17 < 9.22337204e18)
  {
    v39 = v4;
    v18 = v12;
    v19 = v17;
    v20 = objc_opt_self();
    v41 = v11;
    v21 = v20;
    v22 = sub_1C3D1E364();
    v23 = [v21 hk:v19 noonWithDayIndex:v22 calendar:?];

    sub_1C3D1E1A4();
    v24 = [objc_allocWithZone(HKQuantityTypeDataSourceValue) init];
    swift_getAtKeyPath();
    v25 = v43;
    v26 = objc_opt_self();
    v40 = a4;
    v27 = [v26 countUnit];
    v28 = [objc_opt_self() quantityWithUnit:v27 doubleValue:v25];

    [v24 setAverageQuantity_];
    v29 = sub_1C3D1E174();
    [v24 setStartDate_];

    v30 = sub_1C3D1E174();
    [v24 setEndDate_];

    v31 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v32 = [v26 countUnit];
    v33 = [v31 initWithDataSourceValue:v24 options:2 unit:v32 displayType:a3];

    sub_1C3CB3F74(a1, v10, type metadata accessor for SleepScoreChartData);
    v34 = type metadata accessor for SleepScoreCoordinateInfo();
    v35 = objc_allocWithZone(v34);
    sub_1C3CB3F74(v10, v35 + OBJC_IVAR____TtC8HealthUI24SleepScoreCoordinateInfo_chartData, type metadata accessor for SleepScoreChartData);
    v42.receiver = v35;
    v42.super_class = v34;
    v36 = v33;
    v37 = objc_msgSendSuper2(&v42, sel_init);
    sub_1C3CB483C(v10, type metadata accessor for SleepScoreChartData);
    [v36 setUserInfo_];

    v38 = sub_1C3D1E3C4();
    (*(*(v38 - 8) + 8))(v40, v38);
    sub_1C3CB483C(a1, type metadata accessor for SleepScoreChartData);
    (*(v18 + 8))(v14, v41);
    return v36;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t objectdestroy_2Tm()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C3CB4700(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

id sub_1C3CB4764(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1C3CB4770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C3CB47D8()
{
  if (!qword_1EC087010)
  {
    type metadata accessor for SleepScoreDataSourceContext(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC087010);
    }
  }
}

uint64_t sub_1C3CB483C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C3CB4A1C(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v25 = a4;
  v24 = a2;
  v10 = sub_1C3D1FD54();
  v28 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_1C3D1FD74();
  v13 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C3D20374();
  v26 = sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1C3C27CB4(0, &qword_1EC087070);
  v16 = sub_1C3D205C4();
  v17 = swift_allocObject();
  *(v17 + 16) = v24 & 1;
  *(v17 + 24) = v25;
  *(v17 + 32) = a5;
  *(v17 + 40) = a3;
  *(v17 + 48) = a6;
  *(v17 + 56) = a1;
  aBlock[4] = sub_1C3CB70A8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C3C95F84;
  aBlock[3] = &block_descriptor_37;
  v18 = a6;
  v19 = _Block_copy(aBlock);

  v20 = a3;
  v21 = v18;

  sub_1C3D1FD64();
  v29 = MEMORY[0x1E69E7CC0];
  sub_1C3CB7114(&qword_1EC087078, MEMORY[0x1E69E7F60]);
  sub_1C3CB70BC();
  sub_1C3CB7114(&qword_1EC087088, sub_1C3CB70BC);
  sub_1C3D207B4();
  MEMORY[0x1C692FC30](0, v15, v12, v19);
  _Block_release(v19);

  (*(v28 + 8))(v12, v10);
  (*(v13 + 8))(v15, v27);
}

uint64_t sub_1C3CB4DB4(char a1, void (*a2)(uint64_t, id), uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    v11 = sub_1C3CB5354(a6);
    v12 = *(a5 + OBJC_IVAR____TtC8HealthUI61AudiogramLongitudinalHearingLevelClassificationOverlayContext_hearingLevelClassification);
    v13 = *(a5 + OBJC_IVAR____TtC8HealthUI61AudiogramLongitudinalHearingLevelClassificationOverlayContext_baseDisplayType);
    v14 = [*(a5 + OBJC_IVAR____TtC8HealthUI61AudiogramLongitudinalHearingLevelClassificationOverlayContext_applicationItems) unitController];
    v15 = sub_1C3CB6650(v12, v11, v13, v14);

    v16 = *(a5 + OBJC_IVAR____TtC8HealthUI61AudiogramLongitudinalHearingLevelClassificationOverlayContext_lastUpdatedItem);
    *(a5 + OBJC_IVAR____TtC8HealthUI61AudiogramLongitudinalHearingLevelClassificationOverlayContext_lastUpdatedItem) = v15;

    a2(1, 0);
  }

  else
  {
    if (a4)
    {
      v17 = a4;
    }

    else
    {
      v17 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) init];
    }

    v18 = a4;
    a2(0, v17);
  }
}

void sub_1C3CB4F5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  sub_1C3C315FC();
  v7 = sub_1C3D202B4();

  v8 = a4;
  v6(v7, a3, a4);
}

void sub_1C3CB51AC(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1C3D1DF94();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

unint64_t sub_1C3CB5354(unint64_t a1)
{
  result = sub_1C3C81F7C(a1);
  if (!result)
  {
    return 0;
  }

  v2 = result;
  if (result >> 62)
  {
    goto LABEL_19;
  }

  v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_20:
    v4 = 0;
LABEL_21:

    return v4;
  }

  while (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = OBJC_IVAR____TtC8HealthUI61AudiogramLongitudinalHearingLevelClassificationOverlayContext_hearingLevelClassification;
    v21 = v2 & 0xC000000000000001;
    while (1)
    {
      v7 = v21 ? MEMORY[0x1C692FEB0](v5, v2) : *(v2 + 8 * v5 + 32);
      v8 = v7;
      v9 = OBJC_IVAR____TtC8HealthUI31AudiogramLongitudinalChartPoint_audiogramChartData;
      v10 = [*(*&v7[OBJC_IVAR____TtC8HealthUI31AudiogramLongitudinalChartPoint_audiogramChartData] + OBJC_IVAR____TtC8HealthUI30AudiogramLongitudinalChartData_aggregateSummary) leftEarMetrics];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 averageSensitivity];
        v13 = HKHearingLevelClassificationForSensitivity();

        v14 = *(v22 + v6) == v13;
        v15 = __OFADD__(v4, v14);
        v4 += v14;
        if (v15)
        {
          break;
        }
      }

      v16 = [*(*&v8[v9] + OBJC_IVAR____TtC8HealthUI30AudiogramLongitudinalChartData_aggregateSummary) rightEarMetrics];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 averageSensitivity];
        v19 = HKHearingLevelClassificationForSensitivity();

        v20 = *(v22 + v6) == v19;
        v15 = __OFADD__(v4, v20);
        v4 += v20;
        if (v15)
        {
          __break(1u);
          return 0;
        }
      }

      else
      {
      }

      if (v3 == ++v5)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    result = sub_1C3D20964();
    v3 = result;
    if (!result)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

void sub_1C3CB5684()
{
  v0 = objc_opt_self();
  v1 = sub_1C3D200C4();

  v2 = [v0 hk:v1 chartOverlayAccessibilityIdentifier:?];

  if (v2)
  {
    sub_1C3D20104();
  }

  else
  {
    __break(1u);
  }
}

id sub_1C3CB57F0(void *a1, void *a2)
{
  v66 = a2;
  v3 = sub_1C3D1DC54();
  v65 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v68 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1C3D1DCF4();
  v67 = *(v64 - 8);
  v5 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v56 - v7;
  v8 = sub_1C3D1E1E4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v69 = &v56 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v56 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v56 - v24;
  v26 = [a1 startDate];
  if (!v26)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v27 = v26;
  v58 = v3;
  sub_1C3D1E1A4();

  v28 = *(v9 + 32);
  v28(v25, v21, v8);
  v29 = [a1 endDate];
  if (!v29)
  {
    (*(v9 + 8))(v25, v8);
    return MEMORY[0x1E69E7CC0];
  }

  v59 = v25;
  v60 = v9;
  v30 = v29;
  sub_1C3D1E1A4();

  v31 = v69;
  v28(v69, v16, v8);
  v32 = objc_opt_self();
  v66 = [v32 configurationForZoomLevel_];
  v33 = [v66 seriesPointIntervalComponentsAtResolution_];
  v34 = v70;
  sub_1C3D1DCA4();

  result = [v32 defaultCalendar];
  v57 = result;
  if (result)
  {
    v36 = *(v60 + 16);
    v36(v13, v59, v8);
    v56 = v8;
    v36(v61, v31, v8);
    sub_1C3D1DC24();
    v37 = swift_allocObject();
    *(v37 + 16) = MEMORY[0x1E69E7CC0];
    v38 = (v37 + 16);
    v61 = sub_1C3D1DBE4();
    v39 = sub_1C3D1DC94();
    v40 = v67;
    v41 = v62;
    v42 = v64;
    (*(v67 + 16))(v62, v34, v64);
    v43 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v44 = swift_allocObject();
    v45 = v63;
    *(v44 + 16) = v37;
    *(v44 + 24) = v45;
    (*(v40 + 32))(v44 + v43, v41, v42);
    aBlock[4] = sub_1C3CB65B4;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C3CE55C4;
    aBlock[3] = &block_descriptor_16;
    v46 = _Block_copy(aBlock);

    v47 = v45;

    v48 = v57;
    v49 = v61;
    [v57 hk:v61 enumerateDateInterval:v39 byDateComponents:v46 block:?];
    _Block_release(v46);

    swift_beginAccess();
    v50 = *v38;
    v51 = v58;
    if (*v38 >> 62)
    {
      sub_1C3C315FC();

      v52 = sub_1C3D20954();
    }

    else
    {
      swift_bridgeObjectRetain_n();
      sub_1C3D20A64();
      sub_1C3C315FC();
      v52 = v50;
    }

    v53 = v65;

    (*(v53 + 8))(v68, v51);
    (*(v67 + 8))(v70, v42);
    v54 = *(v60 + 8);
    v55 = v56;
    v54(v69, v56);
    v54(v59, v55);

    return v52;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3CB5E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1C3CB5FA4(a1, a5);
  v6 = swift_beginAccess();
  MEMORY[0x1C692F8F0](v6);
  if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C3D202C4();
  }

  sub_1C3D202F4();
  return swift_endAccess();
}

void sub_1C3CB5FA4(uint64_t a1, void *a2)
{
  v40 = a2;
  v42 = a1;
  v43 = sub_1C3D1E1E4();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v2;
  v5 = HKMaximumDecibelQuantityForHearingLevelClassification();
  if (!v5 || (v6 = v5, v7 = objc_opt_self(), v8 = [v7 decibelHearingLevelUnit], objc_msgSend(v6, sel_doubleValueForUnit_, v8), v10 = v9, v8, v11 = objc_msgSend(v7, sel_decibelHearingLevelUnit), v12 = objc_opt_self(), v13 = objc_msgSend(v12, sel_quantityWithUnit_doubleValue_, v11, floor(v10)), v6, v11, !v13))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = *(v44 + OBJC_IVAR____TtC8HealthUIP33_092EC19E3FD96CFEDE476DA46BB43D0653HearingLevelClassificationDateRangeDataSourceDelegate_dBHL);
  [v13 doubleValueForUnit_];
  v16 = [v12 quantityWithUnit:v14 doubleValue:-v15];

  v17 = HKMinimumDecibelQuantityForHearingLevelClassification();
  if (!v17)
  {
    goto LABEL_8;
  }

  v18 = v17;
  v19 = [v7 decibelHearingLevelUnit];
  [v18 doubleValueForUnit_];
  v21 = v20;

  v22 = [v7 decibelHearingLevelUnit];
  v23 = [v12 quantityWithUnit:v22 doubleValue:ceil(v21)];

  if (!v23)
  {
    goto LABEL_8;
  }

  [v23 doubleValueForUnit_];
  v25 = [v12 quantityWithUnit:v14 doubleValue:-v24];

  v26 = [objc_allocWithZone(HKInteractiveChartSinglePointData) init];
  [v26 setUnit_];
  [v16 doubleValueForUnit_];
  [v26 setMinValue_];
  [v25 doubleValueForUnit_];
  [v26 setMaxValue_];
  [v26 setRepresentsRange_];
  [v26 setRecordCount_];
  v27 = sub_1C3D1DC94();
  [v26 setStatisticsInterval_];

  v28 = [objc_allocWithZone(HKQuantityTypeDataSourceValue) init];
  [v28 setMinQuantity_];
  [v28 setMaxQuantity_];
  sub_1C3D1DC34();
  v29 = sub_1C3D1E174();
  v40 = v16;
  v30 = *(v41 + 8);
  v31 = v43;
  v30(v4, v43);
  [v28 setStartDate_];

  sub_1C3D1DC14();
  v32 = sub_1C3D1E174();
  v30(v4, v31);
  [v28 setEndDate_];

  v33 = [*(v44 + OBJC_IVAR____TtC8HealthUIP33_092EC19E3FD96CFEDE476DA46BB43D0653HearingLevelClassificationDateRangeDataSourceDelegate_applicationItems) displayTypeController];
  v34 = [objc_opt_self() audiogramSampleType];
  v35 = [v33 displayTypeForObjectType_];

  if (v35)
  {
    v36 = objc_allocWithZone(HKHealthChartPoint);
    v37 = v28;
    v38 = [v36 initWithDataSourceValue:v37 options:12 unit:v14 displayType:v35];

    [v38 setUserInfo_];
    return;
  }

LABEL_9:
  __break(1u);
}

id sub_1C3CB650C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1C3CB65B4(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1C3D1DCF4() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = (v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));

  return sub_1C3CB5E6C(a1, a2, v6, v7, v8);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1C3CB6650(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(HKDisplayTypeContextItem) init];
  v8 = HKLocalizedStringForHearingLevelClassification();
  if (v8)
  {
    v9 = v8;
    sub_1C3D20104();
  }

  v10 = sub_1C3D200C4();

  [v7 setTitle_];

  v11 = [objc_opt_self() defaultMetricColorsForOverlayMode_];
  [v7 setMetricColors_];

  v12 = [objc_opt_self() hearingHealthColors];
  [v7 setSelectedMetricColors_];

  [v7 setInfoHidden_];
  v13 = sub_1C3D200C4();

  [v7 setAnalyticsIdentifier_];

  sub_1C3CB5684();
  v14 = sub_1C3D200C4();

  [v7 setAccessibilityIdentifier_];

  if (a2)
  {
    sub_1C3D20A14();
    v15 = sub_1C3D200C4();

    [v7 setValue_];

    v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v17 = [a4 localizedDisplayNameForDisplayType:a3 value:v16];

    if (!v17)
    {
      sub_1C3D20104();
      v17 = sub_1C3D200C4();
    }
  }

  else
  {
    v18 = HKLocalizedNoDataString();
    [v7 setValue_];

    v17 = sub_1C3D200C4();
  }

  [v7 setUnit_];

  return v7;
}

id sub_1C3CB69F0(uint64_t a1, void *a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC8HealthUI61AudiogramLongitudinalHearingLevelClassificationOverlayContext_applicationItems] = a3;
  *&v3[OBJC_IVAR____TtC8HealthUI61AudiogramLongitudinalHearingLevelClassificationOverlayContext_hearingLevelClassification] = a1;
  *&v3[OBJC_IVAR____TtC8HealthUI61AudiogramLongitudinalHearingLevelClassificationOverlayContext_baseDisplayType] = a2;
  v6 = a3;
  v7 = a2;
  v8 = [v6 unitController];
  v9 = sub_1C3CB6650(a1, 0, v7, v8);

  *&v3[OBJC_IVAR____TtC8HealthUI61AudiogramLongitudinalHearingLevelClassificationOverlayContext_lastUpdatedItem] = v9;
  v10 = type metadata accessor for HearingLevelClassificationDateRangeDataSourceDelegate();
  v11 = objc_allocWithZone(v10);
  v12 = OBJC_IVAR____TtC8HealthUIP33_092EC19E3FD96CFEDE476DA46BB43D0653HearingLevelClassificationDateRangeDataSourceDelegate_dBHL;
  v13 = objc_opt_self();
  v14 = v6;
  *&v11[v12] = [v13 decibelHearingLevelUnit];
  *&v11[OBJC_IVAR____TtC8HealthUIP33_092EC19E3FD96CFEDE476DA46BB43D0653HearingLevelClassificationDateRangeDataSourceDelegate_applicationItems] = v14;
  *&v11[OBJC_IVAR____TtC8HealthUIP33_092EC19E3FD96CFEDE476DA46BB43D0653HearingLevelClassificationDateRangeDataSourceDelegate_hearingLevelClassification] = a1;
  v39.receiver = v11;
  v39.super_class = v10;
  v15 = objc_msgSendSuper2(&v39, sel_init);
  *&v3[OBJC_IVAR____TtC8HealthUI61AudiogramLongitudinalHearingLevelClassificationOverlayContext_dataSourceDelegate] = v15;
  v16 = v15;
  v17 = [v14 unitController];
  v18 = 7;
  if (a1 == 5)
  {
    v18 = 5;
  }

  if (a1 == 1)
  {
    v19 = 6;
  }

  else
  {
    v19 = v18;
  }

  v20 = [objc_allocWithZone(HKDateRangeDataSource) initWithSourceDelegate_];
  v21 = [objc_allocWithZone(HKLevelOverlaySeries) initWithDisplayType:v7 dataSource:v20 options:v19];
  sub_1C3CD7580();
  v23 = v22;
  v24 = type metadata accessor for AudiogramNumericAxis.AudiogramAxisScalingRules();
  v25 = objc_allocWithZone(v24);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v38.receiver = v25;
  v38.super_class = v24;
  v26 = objc_msgSendSuper2(&v38, sel_init);
  [v21 setYAxis_];
  [v21 setAxisScalingRule_];

  v37.receiver = objc_allocWithZone(type metadata accessor for AudiogramLongitudinalChartFormatter());
  v37.super_class = type metadata accessor for AudiogramChartDataFormatter();
  v27 = v7;
  v28 = v17;
  v29 = objc_msgSendSuper2(&v37, sel_init);
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 hk_chartCurrentValueValueFont];
  [v31 setMajorFont_];

  v33 = [v30 hk_chartCurrentValueKindFont];
  [v31 setMinorFont_];

  [v31 setUnitController_];
  [v31 setDisplayType_];

  v34 = [objc_allocWithZone(HKInteractiveChartDisplayType) initWithGraphSeries:v21 baseDisplayType:v27 valueFormatter:v31 dataTypeCode:145];
  *&v3[OBJC_IVAR____TtC8HealthUI61AudiogramLongitudinalHearingLevelClassificationOverlayContext_overlayDisplayType] = v34;
  v36.receiver = v3;
  v36.super_class = type metadata accessor for AudiogramLongitudinalHearingLevelClassificationOverlayContext();
  return objc_msgSendSuper2(&v36, sel_init);
}

void sub_1C3CB6DA4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void (**a6)(void, void, void))
{
  v27 = a5;
  v28 = a3;
  v9 = sub_1C3D1E1E4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a6;
  _Block_copy(a6);
  v14 = [a2 primaryDisplayType];
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15 && (v16 = [v15 graphSeriesForTimeScope_]) != 0)
  {
    v17 = v16;
    v26 = a4;
    sub_1C3D1DC34();
    v25 = sub_1C3D1E174();
    v18 = *(v10 + 8);
    v18(v12, v9);
    sub_1C3D1DC14();
    v19 = sub_1C3D1E174();
    v18(v12, v9);
    v20 = swift_allocObject();
    v20[2] = sub_1C3CB7094;
    v20[3] = v13;
    v21 = v27;
    v20[4] = v27;
    aBlock[4] = sub_1C3CB709C;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C3CB4F5C;
    aBlock[3] = &block_descriptor_31;
    v22 = _Block_copy(aBlock);

    v23 = v21;

    v24 = v25;
    [a2 cachedDataForCustomGraphSeries:v17 timeScope:v28 resolution:v26 startDate:v25 endDate:v19 completion:v22];
    _Block_release(v22);
  }

  else
  {

    a6[2](a6, 0, 0);
  }
}

void sub_1C3CB70BC()
{
  if (!qword_1EC087080)
  {
    sub_1C3D1FD54();
    v0 = sub_1C3D20304();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087080);
    }
  }
}

uint64_t sub_1C3CB7114(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3CB716C(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C3D20964())
  {
    result = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v15 = MEMORY[0x1E69E7CC0];
    sub_1C3D208C4();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1C692FEB0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v13 = v11;
      a1(&v14, &v13);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v14;
      sub_1C3D20894();
      sub_1C3D208D4();
      sub_1C3D208E4();
      sub_1C3D208A4();
      if (v10 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

void sub_1C3CB72E0(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C3D20964())
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1C3C23CBC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v8 = 0;
    v9 = v19;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1C692FEB0](v8, a3);
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v11 = *(a3 + 8 * v8 + 32);
      }

      v4 = v11;
      v17 = v11;
      a1(&v18, &v17);
      if (v5)
      {
        goto LABEL_20;
      }

      v5 = 0;

      v12 = v18;
      v19 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      v4 = (v14 + 1);
      if (v14 >= v13 >> 1)
      {
        v15 = v18;
        sub_1C3C23CBC((v13 > 1), v14 + 1, 1);
        v12 = v15;
        v9 = v19;
      }

      *(v9 + 16) = v4;
      *(v9 + 8 * v14 + 32) = v12;
      ++v8;
      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_1C3CB747C(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v16 = MEMORY[0x1E69E7CC0];
  sub_1C3C23CBC(0, v4, 0);
  v5 = v16;
  v8 = *(sub_1C3D1E9C4() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    a1(&v15, v9);
    if (v3)
    {
      break;
    }

    v11 = v15;
    v16 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1C3C23CBC((v12 > 1), v13 + 1, 1);
      v5 = v16;
    }

    *(v5 + 16) = v13 + 1;
    *(v5 + 8 * v13 + 32) = v11;
    v9 += v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

void sub_1C3CB75DC(unint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 || a2 != 6)
  {
    sub_1C3CB7C5C(a1);
  }

  else
  {
    v5 = sub_1C3CB7638(a1);
  }

  sub_1C3CB86A0(v5, a2, a3 & 1);
}

char *sub_1C3CB7638(unint64_t a1)
{
  v53 = sub_1C3D1E974();
  v2 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C3D1E9C4();
  v54 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v36 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v36 - v9;
  v39 = a1;
  if (a1 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C3D20964())
  {
    v11 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v61 = MEMORY[0x1E69E7CC0];
    result = sub_1C3C23CBC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v44 = v61;
    v57 = sub_1C3D20374();
    v13 = 0;
    v49 = OBJC_IVAR____TtC8HealthUI35BalanceClassificationOverlayContext_selectedClassification;
    v41 = v39 & 0xC000000000000001;
    v38 = v39 & 0xFFFFFFFFFFFFFF8;
    v37 = v39 + 32;
    v59 = v54 + 16;
    v46 = (v54 + 8);
    v47 = (v54 + 32);
    v48 = (v2 + 8);
    v40 = i;
    while (!__OFADD__(v13, 1))
    {
      v43 = v13 + 1;
      if (v41)
      {
        v14 = MEMORY[0x1C692FEB0]();
      }

      else
      {
        if (v13 >= *(v38 + 16))
        {
          goto LABEL_40;
        }

        v14 = *(v37 + 8 * v13);
      }

      v45 = v14;
      v42 = sub_1C3D20364();
      sub_1C3D20314();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      __swift_project_boxed_opaque_existential_0(&v45[OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_collection], *&v45[OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_collection + 24]);
      v15 = sub_1C3D1EA34();
      v56 = *(v15 + 16);
      if (v56)
      {
        v16 = 0;
        v17 = MEMORY[0x1E69E7CC0];
        v18 = v58;
        v55 = v15;
        while (v16 < *(v15 + 16))
        {
          v19 = (*(v54 + 80) + 32) & ~*(v54 + 80);
          v20 = *(v54 + 72);
          v21 = *(v54 + 16);
          v21(v18, v15 + v19 + v20 * v16, v4);
          sub_1C3D20364();
          sub_1C3D20314();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v18 = v58;
          v21(v50, v58, v4);
          v22 = v52;
          sub_1C3D1E954();
          v23 = sub_1C3D1E964();
          (*v48)(v22, v53);

          if (v23)
          {
            v24 = *v47;
            (*v47)(v51, v18, v4);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v60 = v17;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1C3C23CDC(0, *(v17 + 16) + 1, 1);
              v18 = v58;
              v17 = v60;
            }

            v27 = *(v17 + 16);
            v26 = *(v17 + 24);
            if (v27 >= v26 >> 1)
            {
              sub_1C3C23CDC(v26 > 1, v27 + 1, 1);
              v18 = v58;
              v17 = v60;
            }

            *(v17 + 16) = v27 + 1;
            v24((v17 + v19 + v27 * v20), v51, v4);
          }

          else
          {
            (*v46)(v18, v4);
          }

          ++v16;
          v15 = v55;
          if (v56 == v16)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
        goto LABEL_37;
      }

      v17 = MEMORY[0x1E69E7CC0];
LABEL_27:

      v2 = *(v17 + 16);

      v28 = v44;
      v61 = v44;
      v30 = *(v44 + 16);
      v29 = *(v44 + 24);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        sub_1C3C23CBC((v29 > 1), v30 + 1, 1);
        v28 = v61;
      }

      *(v28 + 16) = v31;
      v44 = v28;
      *(v28 + 8 * v30 + 32) = v2;
      v13 = v43;
      if (v43 == v40)
      {
        v11 = v44;
        goto LABEL_32;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

  v31 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v31)
  {
LABEL_32:
    v32 = 0;
    v33 = 32;
    while (1)
    {
      v34 = *(v11 + v33);
      v35 = __OFADD__(v32, v34);
      v32 += v34;
      if (v35)
      {
        break;
      }

      v33 += 8;
      if (!--v31)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

LABEL_37:
  v32 = 0;
LABEL_35:

  return v32;
}

void sub_1C3CB7C5C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      v19 = MEMORY[0x1E69E7CC0];
      sub_1C3C23CBC(0, v2 & ~(v2 >> 63), 0);
      if (v2 < 0)
      {
        break;
      }

      v3 = 0;
      v4 = v19;
      while (1)
      {
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1C692FEB0](v3, a1);
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v6 = *(a1 + 8 * v3 + 32);
        }

        v7 = v6;
        v17 = v6;
        sub_1C3CB7E0C(&v17, v16, &v18);

        v8 = v18;
        v19 = v4;
        v10 = *(v4 + 16);
        v9 = *(v4 + 24);
        v11 = v10 + 1;
        if (v10 >= v9 >> 1)
        {
          sub_1C3C23CBC((v9 > 1), v10 + 1, 1);
          v4 = v19;
        }

        *(v4 + 16) = v11;
        *(v4 + 8 * v10 + 32) = v8;
        ++v3;
        if (v5 == v2)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v2 = sub_1C3D20964();
      if (!v2)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    v4 = MEMORY[0x1E69E7CC0];
    v11 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v11)
    {
LABEL_21:

      return;
    }

LABEL_18:
    v12 = 0;
    v13 = 32;
    while (1)
    {
      v14 = *(v4 + v13);
      v15 = __OFADD__(v12, v14);
      v12 += v14;
      if (v15)
      {
        break;
      }

      v13 += 8;
      if (!--v11)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C3CB7E0C@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v53 = a3;
  v63 = a2;
  v4 = sub_1C3D1E9C4();
  v71 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v61 = (v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v65 = v52 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v70 = (v52 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v60 = v52 - v11;
  v12 = sub_1C3D1E974();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v52 - v17;
  v19 = *a1;
  v20 = sub_1C3D20374();
  v52[1] = sub_1C3D20364();
  v67 = v20;
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = OBJC_IVAR____TtC8HealthUI35BalanceClassificationOverlayContext_selectedClassification;
  v22 = *MEMORY[0x1E69A2EF0];
  v58 = *(v13 + 104);
  v58(v18, v22, v12);
  v62 = v21;
  LODWORD(v57) = sub_1C3D1E964();
  v23 = *(v13 + 8);
  v68 = v13 + 8;
  v66 = v23;
  v23(v18, v12);
  v24 = (v19 + OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_collection);
  __swift_project_boxed_opaque_existential_0(v24, v24[3]);
  result = sub_1C3D1EA34();
  v64 = result;
  v26 = *(result + 16);
  v69 = v12;
  v59 = v26;
  if ((v57 & 1) == 0)
  {
    if (v26)
    {
      v33 = 0;
      v65 = (v64 + ((*(v71 + 80) + 32) & ~*(v71 + 80)));
      v34 = (v71 + 8);
      while (v33 < *(v64 + 16))
      {
        v35 = *(v71 + 16);
        v35(v61, &v65[*(v71 + 72) * v33], v4);
        sub_1C3D20364();
        sub_1C3D20314();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v36 = v61;
        v35(v70, v61, v4);
        sub_1C3D1E954();
        v37 = sub_1C3D1E964();
        v66(v18, v69);
        (*v34)(v36, v4);

        if (v37)
        {

          v51 = 1;
          goto LABEL_36;
        }

        if (v59 == ++v33)
        {
          goto LABEL_34;
        }
      }

      goto LABEL_38;
    }

LABEL_34:

LABEL_35:
    v51 = 0;
LABEL_36:
    *v53 = v51;
    return result;
  }

  v56 = v24;
  v57 = v13 + 104;
  v27 = v65;
  if (!v26)
  {
    v52[0] = 0;
LABEL_23:

    __swift_project_boxed_opaque_existential_0(v56, v56[3]);
    v38 = sub_1C3D1EA34();
    v39 = v38;
    v56 = *(v38 + 16);
    if (v56)
    {
      v40 = 0;
      v60 = (v38 + ((*(v71 + 80) + 32) & ~*(v71 + 80)));
      LODWORD(v59) = *MEMORY[0x1E69A2EE8];
      LODWORD(v55) = *MEMORY[0x1E69A2EE0];
      v61 = (v71 + 8);
      v62 = v38;
      result = v27;
      v54 = v71 + 16;
      while (v40 < *(v39 + 16))
      {
        v41 = *(v71 + 72);
        v63 = v40;
        v42 = *(v71 + 16);
        v42(result, &v60[v41 * v40], v4);
        v64 = sub_1C3D20364();
        sub_1C3D20314();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v42(v70, v65, v4);
        sub_1C3D1E954();
        v43 = v69;
        v44 = v58;
        v58(v18, v59, v69);
        v45 = sub_1C3D1E964();
        v46 = v18;
        v47 = v18;
        v48 = v66;
        v66(v46, v43);
        if (v45)
        {

          v48(v15, v43);
          (*v61)(v65, v4);

          goto LABEL_35;
        }

        v44(v47, v55, v43);
        v49 = sub_1C3D1E964();
        v48(v47, v43);
        v48(v15, v43);
        v50 = v65;
        (*v61)(v65, v4);

        if (v49)
        {
          goto LABEL_34;
        }

        result = v50;
        v40 = v63 + 1;
        v18 = v47;
        v39 = v62;
        if (v56 == (v63 + 1))
        {
          goto LABEL_31;
        }
      }

      goto LABEL_39;
    }

LABEL_31:

    v51 = v52[0];
    goto LABEL_36;
  }

  v55 = v15;
  v28 = 0;
  v61 = (v64 + ((*(v71 + 80) + 32) & ~*(v71 + 80)));
  v29 = (v71 + 8);
  v52[0] = 1;
  while (v28 < *(v64 + 16))
  {
    v30 = *(v71 + 16);
    v30(v60, v61 + *(v71 + 72) * v28, v4);
    sub_1C3D20364();
    sub_1C3D20314();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v31 = v60;
    v30(v70, v60, v4);
    sub_1C3D1E954();
    v32 = sub_1C3D1E964();
    v66(v18, v69);
    (*v29)(v31, v4);

    if (v32)
    {
      v27 = v65;
      goto LABEL_22;
    }

    if (v59 == ++v28)
    {
      v27 = v65;
      v52[0] = 0;
LABEL_22:
      v15 = v55;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

void sub_1C3CB86A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1C3D1E974();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  if (a1 < 1)
  {
    v19 = sub_1C3D200C4();
    v20 = HKUILocalizedString(v19);

    if (!v20)
    {
      __break(1u);
      return;
    }

    v21 = sub_1C3D20104();
    v49 = v22;

    v48 = v21;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1C3C702E8();
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E6530];
    *(v14 + 16) = xmmword_1C3D5F370;
    v16 = MEMORY[0x1E69E65A8];
    *(v14 + 56) = v15;
    *(v14 + 64) = v16;
    *(v14 + 32) = a1;
    v17 = sub_1C3D200D4();
    v49 = v18;

    v48 = v17;
    if (a3)
    {
LABEL_3:
      v44 = 0;
      v47 = 0;
      goto LABEL_7;
    }
  }

  v44 = sub_1C3CB8E28(a1, a2, 0);
  v47 = v23;
LABEL_7:
  v24 = [objc_allocWithZone(HKDisplayTypeContextItem) init];
  v25 = OBJC_IVAR____TtC8HealthUI35BalanceClassificationOverlayContext_selectedClassification;
  v46 = *(v9 + 16);
  v46(v13, v4 + OBJC_IVAR____TtC8HealthUI35BalanceClassificationOverlayContext_selectedClassification, v8);
  v43 = v9;
  v45 = *(v9 + 88);
  v26 = v45(v13, v8);
  v27 = *MEMORY[0x1E69A2EE8];
  if (v26 != *MEMORY[0x1E69A2EE8] && v26 != *MEMORY[0x1E69A2EE0] && v26 != *MEMORY[0x1E69A2EF0] && v26 != *MEMORY[0x1E69A2ED8])
  {
    (*(v43 + 8))(v13, v8);
  }

  v28 = objc_opt_self();
  v29 = sub_1C3D200C4();

  v30 = [v28 hk:v29 chartOverlayAccessibilityIdentifier:?];

  if (v30)
  {
    v51 = 0;
    v52 = 0;
    sub_1C3D200F4();

    if (v52)
    {
      v30 = sub_1C3D200C4();
    }

    else
    {
      v30 = 0;
    }
  }

  [v24 setAccessibilityIdentifier_];

  v31 = *(v4 + OBJC_IVAR____TtC8HealthUI35BalanceClassificationOverlayContext_mode);
  if (v31 == 1)
  {
    sub_1C3CE05BC();
  }

  else
  {
    sub_1C3CE0874();
  }

  v32 = sub_1C3D200C4();

  [v24 setTitle_];

  v33 = [objc_opt_self() defaultMetricColorsForOverlayMode_];
  [v24 setMetricColors_];

  v34 = v4 + v25;
  v35 = v50;
  v46(v50, v34, v8);
  v36 = v45(v35, v8);
  if (v36 == v27 || v36 == *MEMORY[0x1E69A2EE0])
  {
    sub_1C3C31BA4();
    v38 = v39;
  }

  else
  {
    sub_1C3C31A34();
    v38 = v37;
    (*(v43 + 8))(v35, v8);
  }

  v40 = v47;
  [v24 setSelectedMetricColors_];

  v41 = sub_1C3D200C4();

  [v24 setValue_];

  if (v40)
  {
    v42 = sub_1C3D200C4();
  }

  else
  {
    v42 = 0;
  }

  [v24 setUnit_];
}

void sub_1C3CB8BFC()
{
  v1 = OBJC_IVAR____TtC8HealthUI35BalanceClassificationOverlayContext_selectedClassification;
  v2 = sub_1C3D1E974();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC8HealthUI35BalanceClassificationOverlayContext_dataSourceDelegate);
}

id sub_1C3CB8C74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BalanceClassificationOverlayContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BalanceClassificationOverlayContext()
{
  result = qword_1EC087090;
  if (!qword_1EC087090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C3CB8D7C()
{
  result = sub_1C3D1E974();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C3CB8E28(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1C3D1E294();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1C3D20094();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1C3D200B4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  if ((a3 & 1) == 0)
  {
    if (a2 == 3)
    {
      if (a1 < 1)
      {
        sub_1C3D20044();
      }

      else
      {
        sub_1C3D20084();
        sub_1C3D20074();
        sub_1C3D20054();
        sub_1C3D20074();
        sub_1C3D200A4();
      }

      if (qword_1EC080DC0 != -1)
      {
        goto LABEL_19;
      }

      goto LABEL_10;
    }

    if (a2 == 6)
    {
      if (a1 < 1)
      {
        sub_1C3D20044();
      }

      else
      {
        sub_1C3D20084();
        sub_1C3D20074();
        sub_1C3D20054();
        sub_1C3D20074();
        sub_1C3D200A4();
      }

      if (qword_1EC080DC0 == -1)
      {
        goto LABEL_10;
      }

LABEL_19:
      swift_once();
      goto LABEL_10;
    }
  }

  if (a1 < 1)
  {
    sub_1C3D20044();
  }

  else
  {
    sub_1C3D20084();
    sub_1C3D20074();
    sub_1C3D20054();
    sub_1C3D20074();
    sub_1C3D200A4();
  }

  if (qword_1EC080DC0 != -1)
  {
    goto LABEL_19;
  }

LABEL_10:
  v11 = qword_1EC08DBD8;
  sub_1C3D1E284();
  return sub_1C3D20124();
}

uint64_t sub_1C3CB929C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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
          v8 = MEMORY[0x1C692FEB0](v5, a3);
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
      v13 = sub_1C3D20964();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1C3CB93C4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

HealthUI::StandardQuantityDataEntryValidator __swiftcall StandardQuantityDataEntryValidator.init()()
{
  v1 = v0;
  result.valueValidationController.super.isa = [objc_allocWithZone(HKManualEntryValidationController) init];
  v1->valueValidationController.super.isa = result.valueValidationController.super.isa;
  return result;
}

void StandardQuantityDataEntryValidator.validate(value:unit:dateInterval:metadata:hkType:displayType:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>, double a7@<D0>)
{
  v165 = a2;
  v166 = a4;
  v156 = a3;
  v164 = a1;
  v162 = a6;
  v11 = sub_1C3D1E1E4();
  v157 = *(v11 - 8);
  v158 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v155 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v154 = &v143 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v153 = &v143 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v150 = &v143 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v152 = &v143 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v149 = &v143 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v147 = &v143 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v146 = &v143 - v26;
  v27 = sub_1C3D1DC54();
  v160 = *(v27 - 8);
  v161 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v151 = &v143 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v145 = &v143 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v148 = &v143 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v144 = &v143 - v34;
  sub_1C3CBA6C4();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v163 = (&v143 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v159 = type metadata accessor for StandardDateDataEntryValidator.ValidationResult();
  v38 = MEMORY[0x1EEE9AC00](v159);
  v40 = &v143 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *v7;
  v42 = [*v7 supportedQuantityTypes];
  v43 = sub_1C3D202B4();

  v44 = [a5 objectType];
  v45 = [v44 identifier];

  v46 = sub_1C3D20104();
  v48 = v47;

  v169 = v46;
  v170 = v48;
  v168 = &v169;
  LOBYTE(v46) = sub_1C3CB93C4(sub_1C3CBACB8, v167, v43);

  if (v46)
  {
    v49 = [a5 presentation];
    v50 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v51 = [v49 adjustedValueForClientValue_];

    [v51 doubleValue];
    v53 = [objc_opt_self() quantityWithUnit:v164 doubleValue:v52];

    v54 = [v41 validateQuantity:v53 ofType:v166];
    v55 = [objc_allocWithZone(HKManualEntryValidationController) init];
    v169 = v55;
    StandardDateDataEntryValidator.validateDuration(dateInterval:for:)(v165, a5, v40);
    if (v8)
    {

      return;
    }

    v71 = v40;
    v72 = v166;
    v165 = v53;
    v73 = *(v36 + 48);
    v74 = v163;
    v75 = v163 + v73;
    *v163 = v54;
    sub_1C3CBAD64(v71, v74 + v73);
    if (v54 == 2)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v91 = v165;
        if (EnumCaseMultiPayload == 1)
        {

          sub_1C3CBADC8(v71, type metadata accessor for StandardDateDataEntryValidator.ValidationResult);
          v92 = v161;
          v93 = v162;
          *v162 = &unk_1F42FA740;
          v93[1] = 0;
          *(v93 + 16) = 2;
          (*(v160 + 8))(v75, v92);
        }

        else
        {
          v118 = *v75;
          sub_1C396C48C(0, &qword_1EC0870B0);
          v119 = swift_allocObject();
          *(v119 + 16) = xmmword_1C3D5DCD0;
          *(v119 + 32) = 2;
          *(v119 + 33) = v118;

          sub_1C3CBADC8(v71, type metadata accessor for StandardDateDataEntryValidator.ValidationResult);
          v120 = v162;
          *v162 = v119;
          v120[1] = 0;
          *(v120 + 16) = 2;
        }
      }

      else
      {

        sub_1C3CBADC8(v71, type metadata accessor for StandardDateDataEntryValidator.ValidationResult);
        v114 = v162;
        *v162 = &unk_1F42FA718;
        v114[1] = 0;
        *(v114 + 16) = 2;
        sub_1C3CBADC8(v75, type metadata accessor for StandardDateDataEntryValidator.ValidationResult);
      }
    }

    else
    {
      if (v54 == 1)
      {
        v83 = swift_getEnumCaseMultiPayload();
        if (!v83)
        {
          (*(v160 + 32))(v145, v75, v161);
          sub_1C3D1DC34();
          sub_1C3D1DC14();
          v111 = sub_1C3D1E174();
          v112 = sub_1C3D1E174();
          v164 = v55;
          if (v156)
          {
            v113 = sub_1C3D1FEE4();
          }

          else
          {
            v113 = 0;
          }

          v127 = objc_opt_self();
          v128 = v165;
          v129 = [v127 quantitySampleWithType:v72 quantity:v165 startDate:v111 endDate:v112 metadata:v113];

          v130 = v158;
          v131 = *(v157 + 8);
          v131(v153, v158);
          v131(v150, v130);

          (*(v160 + 8))(v145, v161);
          sub_1C3CBADC8(v71, type metadata accessor for StandardDateDataEntryValidator.ValidationResult);
          v132 = v162;
          *v162 = v129;
          v132[1] = &unk_1F42FA6F0;
          goto LABEL_42;
        }

        if (v83 == 1)
        {
          v84 = v55;
          v163 = 0;
          sub_1C3CBAE28();
          v86 = v75[*(v85 + 48)];
          (*(v160 + 32))(v151, v75, v161);
          sub_1C3D1DC34();
          sub_1C3D1DC14();
          v87 = sub_1C3D1E174();
          v88 = sub_1C3D1E174();
          if (v156)
          {
            v89 = sub_1C3D1FEE4();
          }

          else
          {
            v89 = 0;
          }

          v121 = objc_opt_self();
          v122 = v165;
          v123 = [v121 quantitySampleWithType:v72 quantity:v165 startDate:v87 endDate:v88 metadata:v89];

          v124 = v158;
          v125 = *(v157 + 8);
          v125(v155, v158);
          v125(v154, v124);
          sub_1C396C48C(0, &qword_1EC0870C0);
          v126 = swift_allocObject();
          *(v126 + 16) = xmmword_1C3D5DCD0;
          *(v126 + 32) = 2;
          *(v126 + 33) = v86;

          (*(v160 + 8))(v151, v161);
          goto LABEL_41;
        }

LABEL_28:
        v108 = *v75;
        sub_1C396C48C(0, &qword_1EC0870B0);
        v109 = swift_allocObject();
        *(v109 + 16) = xmmword_1C3D5F370;
        *(v109 + 32) = v108;

        sub_1C3CBADC8(v71, type metadata accessor for StandardDateDataEntryValidator.ValidationResult);
        v110 = v162;
        *v162 = v109;
        v110[1] = 0;
        *(v110 + 16) = 2;
        return;
      }

      if (v54)
      {
        v164 = v55;
        v169 = 0;
        v170 = 0xE000000000000000;
        sub_1C3D20834();
        MEMORY[0x1C692F800](0xD00000000000001BLL, 0x80000001C3D86530);
        v172[0] = v54;
        type metadata accessor for HKManualEntryValidationResult(0);
        sub_1C3D20924();
        v95 = v169;
        v94 = v170;
        if (qword_1EC0850A8 != -1)
        {
          swift_once();
        }

        v96 = sub_1C3D1EDA4();
        __swift_project_value_buffer(v96, qword_1EC08DCB0);

        v97 = sub_1C3D1ED84();
        v98 = sub_1C3D204F4();

        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v172[0] = v100;
          *v99 = 136315394;
          *(v99 + 4) = sub_1C3C22C28(0xD000000000000022, 0x80000001C3D620D0, v172);
          *(v99 + 12) = 2080;
          v169 = v95;
          v170 = v94;
          v171 = 1;

          v101 = sub_1C3D20134();
          v103 = v71;
          v104 = v95;
          v105 = sub_1C3C22C28(v101, v102, v172);

          *(v99 + 14) = v105;
          v95 = v104;
          v71 = v103;
          _os_log_impl(&dword_1C3942000, v97, v98, "[%s]: Error: %s", v99, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1C69321D0](v100, -1, -1);
          MEMORY[0x1C69321D0](v99, -1, -1);
        }

        v106 = v165;
        sub_1C3CBAD10();
        swift_allocError();
        *v107 = v95;
        *(v107 + 8) = v94;
        *(v107 + 16) = 1;
        swift_willThrow();

        sub_1C3CBADC8(v71, type metadata accessor for StandardDateDataEntryValidator.ValidationResult);
        sub_1C3CBADC8(v163, sub_1C3CBA6C4);
      }

      else
      {
        v76 = swift_getEnumCaseMultiPayload();
        if (v76)
        {
          if (v76 == 1)
          {
            v77 = v55;
            v163 = 0;
            sub_1C3CBAE28();
            v79 = v75[*(v78 + 48)];
            (*(v160 + 32))(v148, v75, v161);
            sub_1C3D1DC34();
            sub_1C3D1DC14();
            v80 = sub_1C3D1E174();
            v81 = sub_1C3D1E174();
            if (v156)
            {
              v82 = sub_1C3D1FEE4();
            }

            else
            {
              v82 = 0;
            }

            v133 = objc_opt_self();
            v134 = v165;
            v123 = [v133 quantitySampleWithType:v72 quantity:v165 startDate:v80 endDate:v81 metadata:v82];

            v135 = v158;
            v136 = *(v157 + 8);
            v136(v152, v158);
            v136(v149, v135);
            sub_1C396C48C(0, &qword_1EC0870C0);
            v126 = swift_allocObject();
            *(v126 + 16) = xmmword_1C3D5F370;
            *(v126 + 32) = v79;

            (*(v160 + 8))(v148, v161);
LABEL_41:
            sub_1C3CBADC8(v71, type metadata accessor for StandardDateDataEntryValidator.ValidationResult);
            v132 = v162;
            *v162 = v123;
            v132[1] = v126;
LABEL_42:
            *(v132 + 16) = 1;
            return;
          }

          goto LABEL_28;
        }

        (*(v160 + 32))(v144, v75, v161);
        sub_1C3D1DC34();
        sub_1C3D1DC14();
        v115 = sub_1C3D1E174();
        v116 = sub_1C3D1E174();
        v164 = v55;
        if (v156)
        {
          v117 = sub_1C3D1FEE4();
        }

        else
        {
          v117 = 0;
        }

        v137 = objc_opt_self();
        v138 = v165;
        v139 = [v137 quantitySampleWithType:v72 quantity:v165 startDate:v115 endDate:v116 metadata:v117];

        v140 = v158;
        v141 = *(v157 + 8);
        v141(v147, v158);
        v141(v146, v140);
        (*(v160 + 8))(v144, v161);
        sub_1C3CBADC8(v71, type metadata accessor for StandardDateDataEntryValidator.ValidationResult);
        v142 = v162;
        *v162 = v139;
        v142[1] = 0;
        *(v142 + 16) = 0;
      }
    }
  }

  else
  {
    v169 = 0;
    v170 = 0xE000000000000000;
    sub_1C3D20834();

    v169 = 0xD00000000000001ELL;
    v170 = 0x80000001C3D86510;
    v56 = [a5 description];
    v57 = sub_1C3D20104();
    v59 = v58;

    MEMORY[0x1C692F800](v57, v59);

    v61 = v169;
    v60 = v170;
    if (qword_1EC0850A8 != -1)
    {
      swift_once();
    }

    v62 = sub_1C3D1EDA4();
    __swift_project_value_buffer(v62, qword_1EC08DCB0);

    v63 = sub_1C3D1ED84();
    v64 = sub_1C3D204F4();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v172[0] = v66;
      *v65 = 136315394;
      *(v65 + 4) = sub_1C3C22C28(0xD000000000000022, 0x80000001C3D620D0, v172);
      *(v65 + 12) = 2080;
      v169 = v61;
      v170 = v60;
      v171 = 0;

      v67 = sub_1C3D20134();
      v69 = sub_1C3C22C28(v67, v68, v172);

      *(v65 + 14) = v69;
      _os_log_impl(&dword_1C3942000, v63, v64, "[%s]: Error: %s", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C69321D0](v66, -1, -1);
      MEMORY[0x1C69321D0](v65, -1, -1);
    }

    sub_1C3CBAD10();
    swift_allocError();
    *v70 = v61;
    *(v70 + 8) = v60;
    *(v70 + 16) = 0;
    swift_willThrow();
  }
}

void sub_1C3CBA6C4()
{
  if (!qword_1EC0870A0)
  {
    type metadata accessor for HKManualEntryValidationResult(255);
    type metadata accessor for StandardDateDataEntryValidator.ValidationResult();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC0870A0);
    }
  }
}

BOOL static StandardQuantityDataEntryValidator.ValidationResult.WarningKind.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t _s8HealthUI34StandardQuantityDataEntryValidatorV16ValidationResultO11WarningKindO4hash4intoys6HasherVz_tF_0()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x1C6930170](0);
    v2 = v1 & 1;
  }

  return MEMORY[0x1C6930170](v2);
}

uint64_t _s8HealthUI34StandardQuantityDataEntryValidatorV16ValidationResultO11WarningKindO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1C3D20B04();
  if (v1 == 2)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x1C6930170](0);
    v2 = v1 & 1;
  }

  MEMORY[0x1C6930170](v2);
  return sub_1C3D20B34();
}

uint64_t sub_1C3CBA838()
{
  v1 = *v0;
  sub_1C3D20B04();
  if (v1 == 2)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x1C6930170](0);
    v2 = v1 & 1;
  }

  MEMORY[0x1C6930170](v2);
  return sub_1C3D20B34();
}

uint64_t sub_1C3CBA89C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      if (v6 == 2)
      {
        if (v7 != 2)
        {
          return 0;
        }
      }

      else
      {
        v8 = (v7 ^ v5) & 1;
        if (v7 == 2 || v8 != 0)
        {
          return 0;
        }
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t StandardQuantityDataEntryValidator.ValidationResult.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      v4 = *(v1 + 8);
      MEMORY[0x1C6930170](1);
      sub_1C3D206C4();
      v5 = a1;
      v6 = v4;
    }

    else
    {
      MEMORY[0x1C6930170](2);
      v5 = a1;
      v6 = v3;
    }

    return sub_1C3CBAC48(v5, v6);
  }

  else
  {
    MEMORY[0x1C6930170](0);
    return sub_1C3D206C4();
  }
}

uint64_t StandardQuantityDataEntryValidator.ValidationResult.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1C3D20B04();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x1C6930170](1);
      sub_1C3D206C4();
      v4 = v2;
    }

    else
    {
      MEMORY[0x1C6930170](2);
      v4 = v1;
    }

    sub_1C3CBAC48(v6, v4);
  }

  else
  {
    MEMORY[0x1C6930170](0);
    sub_1C3D206C4();
  }

  return sub_1C3D20B34();
}

uint64_t sub_1C3CBAA58()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1C3D20B04();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x1C6930170](1);
      sub_1C3D206C4();
      v4 = v2;
    }

    else
    {
      MEMORY[0x1C6930170](2);
      v4 = v1;
    }

    sub_1C3CBAC48(v6, v4);
  }

  else
  {
    MEMORY[0x1C6930170](0);
    sub_1C3D206C4();
  }

  return sub_1C3D20B34();
}

uint64_t sub_1C3CBAB04(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      v4 = *(v1 + 8);
      MEMORY[0x1C6930170](1);
      sub_1C3D206C4();
      v5 = a1;
      v6 = v4;
    }

    else
    {
      MEMORY[0x1C6930170](2);
      v5 = a1;
      v6 = v3;
    }

    return sub_1C3CBAC48(v5, v6);
  }

  else
  {
    MEMORY[0x1C6930170](0);
    return sub_1C3D206C4();
  }
}

uint64_t sub_1C3CBAB9C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1C3D20B04();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x1C6930170](1);
      sub_1C3D206C4();
      v4 = v2;
    }

    else
    {
      MEMORY[0x1C6930170](2);
      v4 = v1;
    }

    sub_1C3CBAC48(v6, v4);
  }

  else
  {
    MEMORY[0x1C6930170](0);
    sub_1C3D206C4();
  }

  return sub_1C3D20B34();
}

uint64_t sub_1C3CBAC48(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1C6930170](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v8 = *v5++;
      v7 = v8;
      if (v8 == 2)
      {
        v6 = 1;
      }

      else
      {
        MEMORY[0x1C6930170](0);
        v6 = v7 & 1;
      }

      result = MEMORY[0x1C6930170](v6);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1C3CBACB8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C3D20A54() & 1;
  }
}

unint64_t sub_1C3CBAD10()
{
  result = qword_1EC0870A8;
  if (!qword_1EC0870A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0870A8);
  }

  return result;
}

uint64_t sub_1C3CBAD64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandardDateDataEntryValidator.ValidationResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3CBADC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C3CBAE28()
{
  if (!qword_1EC0870B8)
  {
    sub_1C3D1DC54();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC0870B8);
    }
  }
}

uint64_t _s8HealthUI34StandardQuantityDataEntryValidatorV16ValidationResultO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_1C3C5589C();
      sub_1C3CBB4A8(v5, v6, 0);
      sub_1C3CBB4A8(v2, v3, 0);
      v8 = sub_1C3D206B4();
      LOBYTE(v4) = 0;
      LOBYTE(v7) = 0;
      goto LABEL_12;
    }

LABEL_11:
    sub_1C3CBB4A8(*a2, *(a2 + 8), v7);
    sub_1C3CBB4A8(v2, v3, v4);
    v8 = 0;
    goto LABEL_12;
  }

  if (v4 != 1)
  {
    if (v7 == 2)
    {
      v8 = sub_1C3CBA89C(*a1, *a2);
      LOBYTE(v4) = 2;
      sub_1C3CBB4A8(v5, v6, 2);
      sub_1C3CBB4A8(v2, v3, 2);
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v7 != 1)
  {
    goto LABEL_11;
  }

  sub_1C3C5589C();
  LOBYTE(v4) = 1;
  sub_1C3CBB4A8(v5, v6, 1);
  sub_1C3CBB4A8(v2, v3, 1);
  if (sub_1C3D206B4())
  {
    v8 = sub_1C3CBA89C(v3, v6);
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v7) = 1;
LABEL_12:
  sub_1C3CBB50C(v2, v3, v4);
  sub_1C3CBB50C(v5, v6, v7);
  return v8 & 1;
}

unint64_t sub_1C3CBB024()
{
  result = qword_1EC0870C8;
  if (!qword_1EC0870C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0870C8);
  }

  return result;
}

unint64_t sub_1C3CBB07C()
{
  result = qword_1EC0870D0;
  if (!qword_1EC0870D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0870D0);
  }

  return result;
}

unint64_t sub_1C3CBB0D4()
{
  result = qword_1EC0870D8;
  if (!qword_1EC0870D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0870D8);
  }

  return result;
}

uint64_t sub_1C3CBB128(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1C3CBB170(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C3CBB1DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C3CBB224(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C3CBB290(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C3CBB2D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C3CBB344(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C3CBB3E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

id sub_1C3CBB4A8(id result, uint64_t a2, char a3)
{
  if (a3 != 2)
  {
    if (a3 != 1)
    {
      if (!a3)
      {

        return result;
      }

      return result;
    }

    v4 = result;
  }
}

void sub_1C3CBB50C(void *a1, uint64_t a2, char a3)
{
  if (a3 != 2)
  {
    if (a3 != 1)
    {
      if (!a3)
      {
      }

      return;
    }
  }
}

uint64_t sub_1C3CBB59C(char *a1, double a2)
{
  v19 = a1;

  sub_1C3CBE488(&v19);
  v3 = v19;
  v4 = *(v19 + 2);
  if (v4 < 2)
  {
    return v3;
  }

  v5 = 0;
  v6 = 1;
  while (v5 < v4)
  {
    if (v6 >= v4)
    {
      goto LABEL_23;
    }

    v7 = *&v3[16 * v5 + 32];
    v8 = *&v3[16 * v5 + 40];
    v9 = v8 + a2;
    if (*v7.i64 - a2 > v8 + a2)
    {
      goto LABEL_24;
    }

    v10 = *&v3[16 * v6 + 32];
    if (*v7.i64 - a2 > *v10.i64 || *v10.i64 > v9)
    {
      if (__OFADD__(v6++, 1))
      {
        goto LABEL_25;
      }

      ++v5;
      if (v6 >= v4)
      {
        return v3;
      }
    }

    else
    {
      v13.f64[0] = *&v3[16 * v5 + 32];
      v13.f64[1] = *&v3[16 * v6 + 40];
      v14.f64[0] = *&v3[16 * v6 + 32];
      v14.f64[1] = *&v3[16 * v5 + 40];
      v15 = vbslq_s8(vcgtq_f64(v14, v13), v7, v10);
      if (vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v15, 1), v15))).u8[0])
      {
        goto LABEL_26;
      }

      v18 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1C3CFF12C(v3);
      }

      v16 = *(v3 + 2);
      if (v5 >= v16)
      {
        goto LABEL_27;
      }

      *&v3[16 * v5 + 32] = v18;
      if (v6 >= v16)
      {
        goto LABEL_28;
      }

      v4 = v16 - 1;
      memmove(&v3[16 * v6 + 32], &v3[16 * v6 + 48], 16 * (v16 - 1 - v6));
      *(v3 + 2) = v4;
      if (v6 >= v4)
      {
        return v3;
      }
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);

  __break(1u);
  return result;
}

id sub_1C3CBB780()
{
  v1 = OBJC_IVAR___HKBalanceSeries____lazy_storage___metricsLineStrokeStyle;
  v2 = *(v0 + OBJC_IVAR___HKBalanceSeries____lazy_storage___metricsLineStrokeStyle);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___HKBalanceSeries____lazy_storage___metricsLineStrokeStyle);
  }

  else
  {
    v4 = [objc_opt_self() strokeStyleWithColor:0 lineWidth:2.0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1C3CBB90C(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v9 = [objc_allocWithZone(HKSolidFillStyle) init];
    v10 = *a2;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    [v11 setColor_];

    v12 = *(v3 + v4);
    *(v3 + v4) = v11;
    v6 = v11;

    v5 = 0;
  }

  v13 = v5;
  return v6;
}

double sub_1C3CBB9D4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x1C8))();
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetWidth(v11);
  sub_1C3C25750();
  sub_1C3D1FFD4();
  return v10;
}

id BalanceSeries.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BalanceSeries.init()()
{
  sub_1C3CBBE58(0, &qword_1EC0862F0, MEMORY[0x1E69A2E68]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v20 - v2;
  v4 = OBJC_IVAR___HKBalanceSeries_selectedMetric;
  v5 = sub_1C3D1E8C4();
  v6 = *(*(v5 - 8) + 56);
  v6(&v0[v4], 1, 1, v5);
  *&v0[OBJC_IVAR___HKBalanceSeries____lazy_storage___backgroundInactiveFillStyle] = 0;
  *&v0[OBJC_IVAR___HKBalanceSeries____lazy_storage___innerFillStyle] = 0;
  *&v0[OBJC_IVAR___HKBalanceSeries____lazy_storage___metricsLineStrokeStyle] = 0;
  *&v0[OBJC_IVAR___HKBalanceSeries____lazy_storage___primaryInRangeFillStyle] = 0;
  *&v0[OBJC_IVAR___HKBalanceSeries____lazy_storage___primaryOutOfRangeFillStyle] = 0;
  *&v0[OBJC_IVAR___HKBalanceSeries____lazy_storage___secondaryInRangeFillStyle] = 0;
  *&v0[OBJC_IVAR___HKBalanceSeries____lazy_storage___secondaryOutOfRangeFillStyle] = 0;
  *&v0[OBJC_IVAR___HKBalanceSeries____lazy_storage___warmupFillStyle] = 0;
  *&v0[OBJC_IVAR___HKBalanceSeries____lazy_storage___warmupInnerFillStyle] = 0;
  v6(v3, 1, 1, v5);
  swift_beginAccess();
  sub_1C3C38074(v3, &v0[v4]);
  swift_endAccess();
  v23 = 1;
  sub_1C3CBBDD4();
  v7 = swift_allocObject();
  *(v7 + 84) = 0;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = v23;
  *&v0[OBJC_IVAR___HKBalanceSeries_lollipopPathRangeLock] = v7;
  v8 = type metadata accessor for BalanceSeries();
  v22.receiver = v0;
  v22.super_class = v8;
  v9 = objc_msgSendSuper2(&v22, sel_init);
  v10 = type metadata accessor for BalanceYAxis();
  v11 = objc_allocWithZone(v10);
  v12 = objc_allocWithZone(HKNumericAxisConfiguration);
  v13 = v9;
  v14 = [v12 init];
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 preferredAxisStyle];
  [v16 setPreferredStyle_];

  v21.receiver = v11;
  v21.super_class = v10;
  v18 = objc_msgSendSuper2(&v21, sel_initWithConfiguration_, v16);

  [v13 setYAxis_];
  return v13;
}

void sub_1C3CBBDD4()
{
  if (!qword_1EC087130)
  {
    sub_1C3CBBE58(255, &qword_1EC087138, type metadata accessor for HKGraphSeriesDataPointPathRange);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1C3D20874();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087130);
    }
  }
}

void sub_1C3CBBE58(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C3D206E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for BalanceSeries()
{
  result = qword_1EC087148;
  if (!qword_1EC087148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C3CBBF1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v125 = a6;
  v124 = a5;
  v108 = a4;
  v107 = a3;
  v106 = a2;
  swift_getObjectType();
  v7 = sub_1C3D1EDA4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CBBE58(0, &qword_1EC0862F0, MEMORY[0x1E69A2E68]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v123 = &v105 - v12;
  v122 = type metadata accessor for BalanceCoordinateInfo.Context(0);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1C3D1FE54();
  v14 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v118 = &v105 - v17;
  sub_1C3C29314();
  v117 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v116 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v115 = &v105 - v22;
  v23 = [a1 chartPoints];
  if (!v23 || (v24 = v23, sub_1C3C77FEC(0, &qword_1EC085850), v25 = sub_1C3D202B4(), v24, v26 = sub_1C3C81C30(v25), , !v26))
  {
    sub_1C3D1ED64();
    v92 = sub_1C3D1ED84();
    v93 = sub_1C3D204F4();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v134 = v95;
      *v94 = 136446210;
      v96 = sub_1C3D20CD4();
      v98 = sub_1C3C22C28(v96, v97, &v134);

      *(v94 + 4) = v98;
      _os_log_impl(&dword_1C3942000, v92, v93, "[%{public}s] Unable to create coordinates from unsupported chart points", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v95);
      MEMORY[0x1C69321D0](v95, -1, -1);
      MEMORY[0x1C69321D0](v94, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    sub_1C3C77FEC(0, &unk_1EC086B40);
    v99 = sub_1C3D202A4();
    v100 = objc_opt_self();
    v134 = v106;
    v135 = v107;
    v136 = v108;
    v101 = [v100 coordinateListWithCoordinates:v99 blockPath:&v134];

    if (!v101)
    {
      __break(1u);
      goto LABEL_44;
    }

    return;
  }

  v137 = MEMORY[0x1E69E7CC0];
  if (v26 >> 62)
  {
    goto LABEL_43;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v27)
  {
LABEL_5:
    if (v27 >= 1)
    {
      v114 = v26 & 0xC000000000000001;
      v113 = OBJC_IVAR___HKBalanceSeries_selectedMetric;
      swift_beginAccess();
      v28 = 0;
      v29 = 0;
      v112 = (v14 + 2);
      v111 = (v14 + 1);
      v30 = &selRef_startOfRollingYear_;
      v14 = &selRef_chartDataRangeForTimeScope_dataRange_firstWeekday_calendar_cadence_alignment_;
      v110 = v26;
      v109 = v27;
      while (1)
      {
        if (v114)
        {
          v31 = MEMORY[0x1C692FEB0](v28, v26);
        }

        else
        {
          v31 = *(v26 + 8 * v28 + 32);
        }

        v26 = v31;
        v32 = [v124 v30[372]];
        v33 = sub_1C3D1E174();
        [v32 v14[313]];
        v35 = v34;

        v36 = *(v26 + OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_valuesByMetric);
        v37 = v125;
        v38 = sub_1C3CBF090(v36, v37);

        sub_1C3D1E994();
        if (v39 > v40)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          v27 = sub_1C3D20964();
          if (!v27)
          {
            goto LABEL_44;
          }

          goto LABEL_5;
        }

        v41 = [v37 v30[372]];
        v42 = sub_1C3D1E804();
        [v41 v14[313]];
        v44 = v43;

        v45 = sub_1C3D1E804();
        [v41 v14[313]];
        v47 = v46;

        if (v44 > v47)
        {
          goto LABEL_40;
        }

        v49 = *(v26 + OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_warmupRange);
        v48 = *(v26 + OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_warmupRange + 8);
        v50 = *(v26 + OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_warmupRange + 16);
        v129 = v28;
        v128 = v29;
        v131 = v38;
        v130 = v50;
        if ((v50 & 1) == 0)
        {
          v51 = [v37 v30[372]];
          v52 = sub_1C3D1E804();
          [v51 v14[313]];
          v49 = v53;

          v54 = sub_1C3D1E804();
          [v51 v14[313]];
          v48 = v55;

          if (v49 > v48)
          {
            goto LABEL_41;
          }
        }

        v127 = v26;
        v56 = (v26 + OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_collection);
        __swift_project_boxed_opaque_existential_0((v26 + OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_collection), *(v26 + OBJC_IVAR____TtC8HealthUI17BalanceChartPoint_collection + 24));
        v57 = v115;
        sub_1C3D1EA14();
        v58 = *v112;
        v59 = v118;
        v60 = v120;
        (*v112)(v118, v57 + *(v117 + 36), v120);
        sub_1C3CBF418(v57, sub_1C3C29314);
        __swift_project_boxed_opaque_existential_0(v56, v56[3]);
        v61 = v116;
        sub_1C3D1EA14();
        v62 = v119;
        v58(v119, v61, v60);
        sub_1C3CBF418(v61, sub_1C3C29314);
        sub_1C3CC0F54(&unk_1EC0862A0, MEMORY[0x1E696B418]);
        v63 = sub_1C3D20034();
        v64 = *v111;
        (*v111)(v62, v60);
        v64(v59, v60);
        sub_1C3C4D7A4(v56, &v134);
        v65 = v123;
        sub_1C3C37FE0(v126 + v113, v123);
        if (v63)
        {
          v66 = 1;
        }

        else
        {
          v66 = 2;
        }

        v67 = v121;
        sub_1C3C61798(v65, v121);
        *(v67 + *(v122 + 20)) = v66;
        v68 = type metadata accessor for BalanceCoordinateInfo(0);
        v69 = objc_allocWithZone(v68);
        sub_1C3C4D7A4(&v134, v69 + OBJC_IVAR____TtC8HealthUI21BalanceCoordinateInfo_collection);
        sub_1C3C61994(v67, v69 + OBJC_IVAR____TtC8HealthUI21BalanceCoordinateInfo_context);
        v133.receiver = v69;
        v133.super_class = v68;
        v70 = objc_msgSendSuper2(&v133, sel_init);
        sub_1C3CBF418(v67, type metadata accessor for BalanceCoordinateInfo.Context);
        __swift_destroy_boxed_opaque_existential_0(&v134);
        v71 = type metadata accessor for BalanceCoordinate();
        v14 = objc_allocWithZone(v71);
        *(v14 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_xValue) = v35;
        v72 = v131;
        *(v14 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValuesByMetric) = v131;
        v73 = (v14 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueMedialRange);
        *v73 = v44;
        v73[1] = v47;
        v74 = (v14 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueWarmupRange);
        *v74 = v49;
        v74[1] = v48;
        v75 = v130;
        *(v74 + 16) = v130;
        *(v14 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_userInfo) = v70;

        v76 = v70;
        v77 = sub_1C3CA2E48(v72);

        if ((v75 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v77 = sub_1C3C46D00(0, *(v77 + 16) + 1, 1, v77);
          }

          v79 = *(v77 + 16);
          v78 = *(v77 + 24);
          v80 = v78 >> 1;
          v81 = v79 + 1;
          if (v78 >> 1 <= v79)
          {
            v77 = sub_1C3C46D00((v78 > 1), v79 + 1, 1, v77);
            v78 = *(v77 + 24);
            v80 = v78 >> 1;
          }

          *(v77 + 16) = v81;
          *(v77 + 8 * v79 + 32) = v49;
          v82 = v79 + 2;
          if (v80 < v82)
          {
            v77 = sub_1C3C46D00((v78 > 1), v82, 1, v77);
          }

          *(v77 + 16) = v82;
          *(v77 + 8 * v81 + 32) = v48;
        }

        *&v83 = COERCE_DOUBLE(sub_1C3C9D880(v77));
        if (v84)
        {
          break;
        }

        v85 = *&v83;
        v86 = COERCE_DOUBLE(sub_1C3C9DAB0(v77));
        v26 = v87;

        if (v26)
        {
          goto LABEL_28;
        }

        if (v85 > v86)
        {
          goto LABEL_42;
        }

        v89 = (v14 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueRange);
        *v89 = v85;
        v89[1] = v86;
        *(v89 + 16) = 0;
LABEL_31:
        v132.receiver = v14;
        v132.super_class = v71;
        v90 = objc_msgSendSuper2(&v132, sel_init);

        v91 = v90;
        MEMORY[0x1C692F8F0]();
        v26 = v110;
        if (*((v137 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v137 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C3D202C4();
        }

        v28 = v129 + 1;
        sub_1C3D202F4();

        v29 = v128;
        v30 = &selRef_startOfRollingYear_;
        v14 = &selRef_chartDataRangeForTimeScope_dataRange_firstWeekday_calendar_cadence_alignment_;
        if (v109 == v28)
        {
          goto LABEL_44;
        }
      }

LABEL_28:
      v88 = v14 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueRange;
      *v88 = 0;
      *(v88 + 1) = 0;
      v88[16] = 1;
      goto LABEL_31;
    }

    __break(1u);
LABEL_48:
    __break(1u);
  }

  else
  {
LABEL_44:
    sub_1C3C77FEC(0, &unk_1EC086B40);
    v102 = sub_1C3D202A4();
    v103 = objc_opt_self();
    v134 = v106;
    v135 = v107;
    v136 = v108;
    v104 = [v103 coordinateListWithCoordinates:v102 blockPath:&v134];

    if (!v104)
    {
      goto LABEL_48;
    }
  }
}

uint64_t sub_1C3CBCDB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17, uint64_t a18, void *a19, uint64_t a20, char a21, void *a22, void *a23, void *a24, void *a25, uint64_t a26)
{
  if (result)
  {
    v34 = a26;
    v35 = a23;
    type metadata accessor for BalanceCoordinate();
    result = swift_dynamicCastClass();
    if (result)
    {
      v36 = result;
      v37 = OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_xValue;
      v38 = *(result + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_xValue);
      swift_unknownObjectRetain();
      v100.origin.x = a6;
      v100.origin.y = a7;
      v100.size.width = a8;
      v100.size.height = a9;
      if (CGRectGetMinX(v100) - a10 <= v38 && (v39 = *(v36 + v37), v101.origin.x = a6, v101.origin.y = a7, v101.size.width = a8, v101.size.height = a9, v39 <= CGRectGetMaxX(v101) + a10))
      {
        v40 = (v36 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueWarmupRange);
        if ((*(v36 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueWarmupRange + 16) & 1) == 0)
        {
          v41 = *v40;
          v89 = v40[1];
          v42 = *(v36 + v37) - a10 * 0.5;
          v43 = a10 * 0.5 + v89 - (*v40 - a10 * 0.5);
          v44 = objc_opt_self();
          v45 = [v44 bezierPathWithRoundedRect:v42 cornerRadius:{v41 - a10 * 0.5, a10, v43, a10 * 0.5}];
          [a15 appendPath_];

          v34 = a26;
          v46 = [v44 bezierPathWithRoundedRect:*(v36 + v37) - a11 * 0.5 cornerRadius:{v41 - a11 * 0.5, a11, a11 * 0.5 + v89 - (v41 - a11 * 0.5)}];
          [a17 appendPath_];
        }

        v47 = sub_1C3CD7F88(a18);
        v48 = *(v47 + 16);
        if (v48)
        {
          *&v97[0] = MEMORY[0x1E69E7CC0];
          v90 = v47;
          sub_1C3C23D2C(0, v48, 0);
          v49 = v90;
          v50 = 32;
          v51 = *&v97[0];
          do
          {
            v52 = *(v49 + v50);
            *&v97[0] = v51;
            v54 = *(v51 + 16);
            v53 = *(v51 + 24);
            if (v54 >= v53 >> 1)
            {
              v87 = v52;
              sub_1C3C23D2C((v53 > 1), v54 + 1, 1);
              v52 = v87;
              v49 = v90;
              v51 = *&v97[0];
            }

            *(v51 + 16) = v54 + 1;
            *(v51 + 16 * v54 + 32) = vdupq_lane_s64(v52, 0);
            v50 += 8;
            --v48;
          }

          while (v48);
          v35 = a23;

          v34 = a26;
        }

        else
        {

          v51 = MEMORY[0x1E69E7CC0];
        }

        v91 = sub_1C3CBB59C(v51, 8.0);

        v55 = sub_1C3CD8244(a18);
        v56 = *(v55 + 16);
        if (v56)
        {
          *&v97[0] = MEMORY[0x1E69E7CC0];
          v88 = v55;
          sub_1C3C23D2C(0, v56, 0);
          v58 = v88;
          v59 = 32;
          v60 = *&v97[0];
          do
          {
            v57.i64[0] = *(v58 + v59);
            *&v97[0] = v60;
            v62 = *(v60 + 16);
            v61 = *(v60 + 24);
            if (v62 >= v61 >> 1)
            {
              v86 = v57;
              sub_1C3C23D2C((v61 > 1), v62 + 1, 1);
              v57.i64[0] = v86.i64[0];
              v58 = v88;
              v60 = *&v97[0];
            }

            *(v60 + 16) = v62 + 1;
            v57 = vdupq_lane_s64(v57.i64[0], 0);
            *(v60 + 16 * v62 + 32) = v57;
            v59 += 8;
            --v56;
          }

          while (v56);
          v35 = a23;

          v34 = a26;
        }

        else
        {

          v60 = MEMORY[0x1E69E7CC0];
        }

        v63 = sub_1C3CBB59C(v60, 8.0);

        v64 = COERCE_DOUBLE(sub_1C3CD8500(a18));
        if ((v66 & 1) == 0)
        {
          v67 = [objc_opt_self() bezierPathWithRoundedRect:*(v36 + v37) - a10 * 0.5 cornerRadius:{v64 - a10 * 0.5, a10, a10 * 0.5 + v65 - (v64 - a10 * 0.5), a10 * 0.5}];
          [a19 appendPath_];
        }

        if (*(a20 + 64) & 1) == 0 && (v68 = *(a20 + 16), v97[0] = *a20, v97[1] = v68, v69 = *(a20 + 48), v97[2] = *(a20 + 32), v97[3] = v69, v98[0] = a2, v98[1] = a3, v98[2] = a4, v98[3] = a5, HKGraphSeriesDataPointPathInRangeInclusive(v98, v97)) && (a21)
        {
          v96 = v63;
          v70 = *(v91 + 16);
          if (v70)
          {
            v71 = objc_opt_self();
            v72 = (v91 + 40);
            do
            {
              v73 = *(v72 - 1);
              v74 = *v72;
              v75 = [v71 bezierPathWithRoundedRect:*(v36 + v37) - a10 * 0.5 cornerRadius:{v73 - a10 * 0.5, a10, a10 * 0.5 + *v72 - (v73 - a10 * 0.5), a10 * 0.5, *&v86}];
              [a22 appendPath_];

              v76 = [v71 bezierPathWithRoundedRect:*(v36 + v37) - a12 * 0.5 cornerRadius:{v73 - a12 * 0.5, a12, a12 * 0.5 + v74 - (v73 - a12 * 0.5), a12 * 0.5}];
              [v35 appendPath_];

              v72 += 2;
              --v70;
            }

            while (v70);
          }

          v77 = *(v96 + 16);
          if (v77)
          {
            v78 = objc_opt_self();
            v79 = (v96 + 40);
            do
            {
              v80 = *(v79 - 1);
              v81 = *v79;
              v82 = [v78 bezierPathWithRoundedRect:*(v36 + v37) - a10 * 0.5 cornerRadius:{v80 - a10 * 0.5, a10, a10 * 0.5 + *v79 - (v80 - a10 * 0.5), a10 * 0.5, *&v86}];
              [a24 appendPath_];

              v83 = [v78 bezierPathWithRoundedRect:*(v36 + v37) - a12 * 0.5 cornerRadius:{v80 - a12 * 0.5, a12, a12 * 0.5 + v81 - (v80 - a12 * 0.5), a12 * 0.5}];
              [a25 appendPath_];

              v79 += 2;
              --v77;
            }

            while (v77);
          }

          v34 = a26;
        }

        else
        {
        }

        v84 = *(v36 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueMedialRange);
        v85 = *(v36 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueMedialRange + 8);
        swift_unknownObjectRelease();
        result = swift_beginAccess();
        *(v34 + 16) = v84;
        *(v34 + 24) = v85;
        *(v34 + 32) = 0;
      }

      else
      {

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

_BYTE *sub_1C3CBD4D8(_BYTE *result, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *a18, CGContext *a19, void *a20, uint64_t a21, void *a22, void *a23, void *a24, uint64_t a25)
{
  if (!result)
  {
    return result;
  }

  type metadata accessor for BalanceCoordinate();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {
    goto LABEL_5;
  }

  v33 = v32;
  v34 = *(v32 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_xValue);
  swift_unknownObjectRetain();
  v58.origin.x = a2;
  v58.origin.y = a3;
  v58.size.width = a4;
  v58.size.height = a5;
  if (CGRectGetMinX(v58) > v34)
  {
    swift_unknownObjectRelease();
LABEL_5:
    result = swift_dynamicCastClass();
    if (result)
    {
      v35 = result;
      v36 = sub_1C3CD8740(a15);
      if (*(v36 + 2))
      {
        v37 = v36[4];
        v38 = v36[5];

        return [a16 moveToPoint_];
      }

      else
      {

        if ((v35[OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueWarmupRange + 16] & 1) == 0)
        {
          result = swift_beginAccess();
          *(a17 + 16) = 0;
        }
      }
    }

    return result;
  }

  v39 = sub_1C3CD8740(a15);
  if (*(v39 + 16))
  {
    v41 = *(v39 + 32);
    v40 = *(v39 + 40);

    [a16 currentPoint];
    v43 = vabdd_f64(v41, v42);
    swift_beginAccess();
    if (v43 < a6)
    {
      v44 = *(a17 + 16);
    }

    else
    {
      v44 = 0;
    }

    swift_beginAccess();
    *(a17 + 16) = v44;
    if (v44 == 1)
    {
      [a16 addLineToPoint_];
      v45 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
      [v45 appendPath_];
      [a18 applyToContext_];
      v46 = [v45 CGPath];
      CGContextAddPath(a19, v46);
    }

    else
    {
      swift_beginAccess();
      *(a17 + 16) = 1;
    }

    if (*(v33 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueMedialRange) > v40 || v40 > *(v33 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueMedialRange + 8))
    {
      a20 = a23;
      a22 = a24;
    }

    v50 = objc_opt_self();
    v51 = [v50 bezierPathWithRoundedRect:v41 - a7 * 0.5 cornerRadius:{v40 - a7 * 0.5, a7, a7 * 0.5 + v40 - (v40 - a7 * 0.5), a7 * 0.5}];
    [a20 appendPath_];

    v52 = [v50 bezierPathWithRoundedRect:v41 - a8 * 0.5 cornerRadius:?];
    [a22 appendPath_];

    [a16 moveToPoint_];
  }

  else
  {

    if ((*(v33 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueWarmupRange + 16) & 1) == 0)
    {
      swift_beginAccess();
      *(a17 + 16) = 0;
    }
  }

  v53 = v33 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueMedialRange;
  v54 = *(v33 + OBJC_IVAR____TtC8HealthUI17BalanceCoordinate_yValueMedialRange);
  v55 = *(v53 + 8);
  swift_unknownObjectRelease();
  result = swift_beginAccess();
  *(a25 + 16) = v54;
  *(a25 + 24) = v55;
  *(a25 + 32) = 0;
  return result;
}

uint64_t sub_1C3CBD950(void *a1)
{
  v2 = sub_1C3D1DCF4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 canonicalSize];
  v8 = v7;
  v9 = [a1 seriesPointIntervalComponentsAtResolution_];
  sub_1C3D1DCA4();

  v10 = sub_1C3D1DC94();
  [v10 hk_approximateDuration];
  v12 = v11;

  v13 = floor(v8 / fmax(v12, 1.0));
  result = (*(v3 + 8))(v6, v2);
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v13 < 9.22337204e18)
  {
    return v13;
  }

LABEL_7:
  __break(1u);
  return result;
}

id BalanceSeries.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BalanceSeries();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C3CBE068()
{
  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC08DBD8;
  v1 = sub_1C3D200C4();
  v2 = [objc_opt_self() colorNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1EC08DD38 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1C3CBE134()
{
  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC08DBD8;
  v1 = sub_1C3D200C4();
  v2 = [objc_opt_self() colorNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1EC08DD40 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1C3CBE200()
{
  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC08DBD8;
  v1 = sub_1C3D200C4();
  v2 = [objc_opt_self() colorNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1EC08DD48 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1C3CBE2CC()
{
  if (qword_1EC080DC0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC08DBD8;
  v1 = sub_1C3D200C4();
  v2 = [objc_opt_self() colorNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1EC08DD50 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1C3CBE398()
{
  v0 = objc_opt_self();
  v1 = [v0 systemGray6Color];
  v2 = [v0 systemGray5Color];
  v3 = HKUIDynamicColorWithColors(v1, v2);

  if (v3)
  {
    qword_1EC08DD58 = v3;
  }

  else
  {
    __break(1u);
  }
}

id sub_1C3CBE444(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

uint64_t sub_1C3CBE488(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C3CA8310(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1C3D20A04();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[16 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_1C3C256F4();
      v7 = sub_1C3D202E4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1C3CBE5D0(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1C3CBE5D0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v87 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v87;
    if (!*v87)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1C3CA7838(v8);
      v8 = result;
    }

    v79 = (v8 + 16);
    v80 = *(v8 + 16);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = (v8 + 16 * v80);
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        sub_1C3CBEB48((*a3 + 16 * *v81), (*a3 + 16 * *v83), (*a3 + 16 * v84), v5);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        result = memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v14 = *v12;
      v13 = v12 + 4;
      v15 = v14;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v13;
        v13 += 2;
        v19 = v18 >= v17;
        ++v16;
        v17 = v18;
        if ((((v10 < v15) ^ v19) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 16 * v7 - 16;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 16;
          v11 += 16;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C3C4622C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v33 = *(v8 + 24);
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      result = sub_1C3C4622C((v33 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v34;
    v35 = v8 + 32;
    v36 = (v8 + 32 + 16 * v5);
    *v36 = v9;
    v36[1] = v7;
    v88 = *v87;
    if (!*v87)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = *(v8 + 32);
          v38 = *(v8 + 40);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = (v8 + 16 * v34);
          v55 = *v53;
          v54 = v53[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = (v35 + 16 * v5);
          v61 = *v59;
          v60 = v59[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = (v8 + 16 * v34);
        v65 = *v63;
        v64 = v63[1];
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = (v35 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v74 = (v35 + 16 * (v5 - 1));
        v75 = *v74;
        v76 = (v35 + 16 * v5);
        v77 = v76[1];
        sub_1C3CBEB48((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), v88);
        if (v4)
        {
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v74 = v75;
        v74[1] = v77;
        v78 = *(v8 + 16);
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        result = memmove((v35 + 16 * v5), v76 + 2, 16 * (v78 - 1 - v5));
        *(v8 + 16) = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = v35 + 16 * v34;
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = (v8 + 16 * v34);
      v50 = *v48;
      v49 = v48[1];
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = (v35 + 16 * v5);
        v72 = *v70;
        v71 = v70[1];
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 16 * v7 - 16;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 16 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (v28 >= *v30)
    {
LABEL_29:
      ++v7;
      v26 += 16;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 24);
    *(v30 + 16) = *v30;
    *v30 = v28;
    *(v30 + 8) = v31;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1C3CBEB48(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 2;
    v5 -= 2;
    v18 = v14;
    do
    {
      v19 = v5 + 2;
      v20 = *(v18 - 2);
      v18 -= 2;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 2, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

id sub_1C3CBED4C(char a1, double a2, double a3)
{
  if (a2 + a3 < a2)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (a1)
  {
    if (qword_1EC085100 == -1)
    {
LABEL_4:
      v3 = qword_1EC0850F0;
      v4 = qword_1EC08DD50;
      if (v3 != -1)
      {
        swift_once();
      }

      v5 = &qword_1EC08DD40;
      goto LABEL_12;
    }

LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1EC0850F8 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC0850E8;
  v4 = qword_1EC08DD48;
  if (v6 != -1)
  {
    swift_once();
  }

  v5 = &qword_1EC08DD38;
LABEL_12:
  v7 = *v5;
  sub_1C396C528(0, &qword_1EC080D60, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C3D61370;
  v9 = v7;
  v10 = v4;
  v11 = sub_1C3D1E804();
  v12 = [objc_allocWithZone(HKMultiGradientFillColor) initWithColor:v10 location:v11];

  *(v8 + 32) = v12;
  v13 = v9;
  v14 = sub_1C3D1E804();
  v15 = [objc_allocWithZone(HKMultiGradientFillColor) initWithColor:v13 location:v14];

  *(v8 + 40) = v15;
  v16 = v13;
  v17 = sub_1C3D1E804();
  v18 = [objc_allocWithZone(HKMultiGradientFillColor) initWithColor:v16 location:v17];

  *(v8 + 48) = v18;
  v19 = v10;
  v20 = sub_1C3D1E804();
  v21 = [objc_allocWithZone(HKMultiGradientFillColor) initWithColor:v19 location:v20];

  *(v8 + 56) = v21;
  v22 = objc_allocWithZone(HKMultiGradientFillStyle);
  sub_1C3CC0E38();
  v23 = sub_1C3D202A4();

  v24 = [v22 initWithColors_];

  return v24;
}

uint64_t sub_1C3CBF090(uint64_t a1, void *a2)
{
  v4 = sub_1C3D1E8C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v43 - v9;
  sub_1C3CC0E84();
  result = sub_1C3D20974();
  v11 = result;
  v12 = 0;
  v53 = v5;
  v54 = a1;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v44 = (v16 + 63) >> 6;
  v45 = v14;
  v50 = v5 + 16;
  v51 = result;
  v47 = v4;
  v48 = result + 64;
  v46 = v7;
  v49 = v5 + 32;
  if (v18)
  {
    while (1)
    {
      v19 = __clz(__rbit64(v18));
      v55 = (v18 - 1) & v18;
LABEL_10:
      v22 = v19 | (v12 << 6);
      v24 = v53;
      v23 = v54;
      v25 = *(v54 + 48);
      v26 = *(v53 + 16);
      v57 = *(v53 + 72) * v22;
      v27 = v52;
      v26(v52, v25 + v57, v4);
      v28 = *(v23 + 56);
      v58 = v22;
      v29 = *(v28 + 8 * v22);
      v56 = *(v24 + 32);
      v56(v7, v27, v4);
      v30 = *(v29 + 16);
      if (v30)
      {
        v59 = MEMORY[0x1E69E7CC0];

        sub_1C3C23DF8(0, v30, 0);
        v31 = v59;
        v32 = 32;
        do
        {
          v33 = [a2 transform];
          v34 = sub_1C3D1E804();
          [v33 coordinateForValue_];
          v36 = v35;

          v59 = v31;
          v38 = *(v31 + 16);
          v37 = *(v31 + 24);
          if (v38 >= v37 >> 1)
          {
            sub_1C3C23DF8((v37 > 1), v38 + 1, 1);
            v31 = v59;
          }

          *(v31 + 16) = v38 + 1;
          *(v31 + 8 * v38 + 32) = v36;
          v32 += 8;
          --v30;
        }

        while (v30);

        v7 = v46;
        v4 = v47;
      }

      else
      {
        v31 = MEMORY[0x1E69E7CC0];
      }

      v39 = v58;
      *(v48 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
      v11 = v51;
      result = (v56)(*(v51 + 48) + v57, v7, v4);
      *(*(v11 + 56) + 8 * v39) = v31;
      v40 = *(v11 + 16);
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        break;
      }

      *(v11 + 16) = v42;
      v18 = v55;
      if (!v55)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v44)
      {
        return v11;
      }

      v21 = *(v45 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v55 = (v21 - 1) & v21;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C3CBF418(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C3CBF478(void *a1, void *a2, uint64_t *a3, void *a4, void *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v137 = a5;
  v143 = a1;
  v16 = *a3;
  v138 = a3[1];
  v17 = a3[3];
  v139 = a3[2];
  v140 = v17;
  v18 = a3[5];
  v141 = a3[4];
  v142 = v18;
  sub_1C3CBBE58(0, &qword_1EC0862F0, MEMORY[0x1E69A2E68]);
  v136 = *(v19 - 8);
  v20 = v136[8];
  MEMORY[0x1EEE9AC00](v19 - 8);
  v147 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v148 = &v119 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v119 - v24;
  v26 = sub_1C3D1E8C4();
  v27 = *(v26 - 1);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v145 = &v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v119 - v30;
  v32 = OBJC_IVAR___HKBalanceSeries_selectedMetric;
  swift_beginAccess();
  v146 = v9;
  sub_1C3C37FE0(&v9[v32], v25);
  v33 = (*(v27 + 48))(v25, 1, v26);
  v135 = a4;
  if (v33 == 1)
  {
    sub_1C3CC0A94(v25);
  }

  else
  {
    v134 = *(v27 + 32);
    v134(v31, v25, v26);
    if ([a2 intendedTimeScope] != 3)
    {
      v65 = a4;
      CGContextSaveGState(a4);
      v129 = v27 + 32;
      v137 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
      *&v128 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
      *&v127 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
      *&v126 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
      v136 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
      v144 = v26;
      v66 = sub_1C3CBB9D4(a6, a7, a8, a9);
      v133 = sub_1C3CBB780();
      v67 = swift_allocObject();
      v148 = v67;
      *(v67 + 24) = 0;
      *(v67 + 16) = 0;
      v130 = (v67 + 16);
      *(v67 + 32) = 1;
      v147 = swift_allocObject();
      v147[16] = 1;
      v156.origin.x = a6;
      v156.origin.y = a7;
      v156.size.width = a8;
      v156.size.height = a9;
      v68 = CGRectGetWidth(v156) * 1.4;
      v132 = v27;
      v69 = *(v27 + 16);
      v131 = v31;
      v69(v145, v31, v26);
      v123 = (*(v27 + 80) + 48) & ~*(v27 + 80);
      *&v125 = (v28 + v123 + 7) & 0xFFFFFFFFFFFFFFF8;
      v124 = (v125 + 15) & 0xFFFFFFFFFFFFFFF8;
      v122 = (v124 + 15) & 0xFFFFFFFFFFFFFFF8;
      v121 = (v122 + 15) & 0xFFFFFFFFFFFFFFF8;
      v120 = (v121 + 15) & 0xFFFFFFFFFFFFFFF8;
      v70 = (v120 + 15) & 0xFFFFFFFFFFFFFFF8;
      v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
      v72 = (v71 + 15) & 0xFFFFFFFFFFFFFFF8;
      v73 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
      v74 = (v73 + 15) & 0xFFFFFFFFFFFFFFF8;
      v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
      v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
      v77 = swift_allocObject();
      v77[2] = a6;
      v77[3] = a7;
      v77[4] = a8;
      v77[5] = a9;
      v134(v77 + v123, v145, v144);
      *(v77 + v125) = v137;
      *(v77 + v124) = v147;
      *(v77 + v122) = v68;
      *(v77 + v121) = v133;
      *(v77 + v120) = v65;
      v78 = v128;
      *(v77 + v70) = v128;
      v79 = v146;
      *(v77 + v71) = v146;
      *(v77 + v72) = v66;
      v80 = v127;
      *(v77 + v73) = v127;
      *(v77 + v74) = v66 * 0.5;
      v81 = v148;
      v82 = v126;
      *(v77 + v75) = v126;
      *(v77 + v76) = v136;
      *(v77 + ((v76 + 15) & 0xFFFFFFFFFFFFFFF8)) = v81;
      v153 = sub_1C3CC0CAC;
      v154 = v77;
      aBlock = MEMORY[0x1E69E9820];
      v150 = 1107296256;
      v151 = sub_1C3C71C64;
      v152 = &block_descriptor_42;
      v83 = _Block_copy(&aBlock);
      v84 = v137;

      v137 = v133;
      v85 = v135;
      v145 = v78;
      v86 = v79;
      v87 = v84;
      v146 = v80;
      v88 = v82;
      v89 = v136;

      aBlock = v16;
      v150 = v138;
      v151 = v139;
      v152 = v140;
      v153 = v141;
      v154 = v142;
      [v143 enumerateCoordinatesWithTransform:&aBlock roundToViewScale:1 block:v83];
      _Block_release(v83);
      swift_beginAccess();
      if ((*(v81 + 32) & 1) == 0)
      {
        v90 = sub_1C3CBED4C(0, a7, a9);
        if (([v87 isEmpty] & 1) == 0)
        {
          CGContextReplacePathWithStrokedPath(v85);
          v91 = [v87 CGPath];
          [v90 renderPath:v91 context:v85 axisRect:a6 alpha:{a7, a8, a9, 1.0}];
        }

        v143 = v90;
        v92 = sub_1C3CBB804();
        if (([v145 isEmpty] & 1) == 0)
        {
          v93 = [v145 CGPath];
          [v92 renderPath:v93 context:v85 axisRect:a6 alpha:{a7, a8, a9, 1.0}];
        }

        v94 = sub_1C3CBB754();
        if (([v146 isEmpty] & 1) == 0)
        {
          v95 = [v146 CGPath];
          [v94 renderPath:v95 context:v85 axisRect:a6 alpha:{a7, a8, a9, 1.0}];
        }

        v96 = sub_1C3CBB830();
        if (([v88 isEmpty] & 1) == 0)
        {
          v97 = [v88 CGPath];
          [v96 renderPath:v97 context:v85 axisRect:a6 alpha:{a7, a8, a9, 1.0}];
        }

        v98 = *&v86[OBJC_IVAR___HKBalanceSeries____lazy_storage___innerFillStyle];
        if (([v89 isEmpty] & 1) == 0)
        {
          v99 = [v89 CGPath];
          [v98 renderPath:v99 context:v85 axisRect:a6 alpha:{a7, a8, a9, 1.0}];
        }
      }

      CGContextRestoreGState(v85);

      v132[1](v131, v144);

      goto LABEL_42;
    }

    (*(v27 + 8))(v31, v26);
  }

  v34 = v146;
  v35 = v148;
  sub_1C3C37FE0(&v146[v32], v148);
  v134 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  v133 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  v132 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  v131 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  v130 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  v145 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  v144 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  if ([v137 seriesDrawingDuringTiling])
  {
    v36 = 1;
    v128 = 0u;
    v127 = 0u;
    v125 = 0u;
    v126 = 0u;
  }

  else
  {
    v37 = *&v34[OBJC_IVAR___HKBalanceSeries_lollipopPathRangeLock];
    os_unfair_lock_lock((v37 + 84));
    v38 = *(v37 + 16);
    v127 = *(v37 + 32);
    v128 = v38;
    v39 = *(v37 + 48);
    v126 = *(v37 + 64);
    v125 = v39;
    v36 = *(v37 + 80);
    os_unfair_lock_unlock((v37 + 84));
  }

  LODWORD(v123) = v36;
  v155 = v36;
  LODWORD(v137) = [v34 allowsSelection];
  v40 = sub_1C3CBB9D4(a6, a7, a8, a9);
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  *(v41 + 16) = 0;
  v129 = v41 + 16;
  *(v41 + 32) = 1;
  sub_1C3C37FE0(v35, v147);
  v42 = (*(v136 + 80) + 88) & ~*(v136 + 80);
  v43 = (v20 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
  v136 = ((v44 + 73) & 0xFFFFFFFFFFFFFFF8);
  v124 = (v136 + 15) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v124 + 15) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  *(v48 + 16) = a6;
  *(v48 + 24) = a7;
  *(v48 + 32) = a8;
  *(v48 + 40) = a9;
  *(v48 + 48) = v40;
  *(v48 + 56) = v145;
  *(v48 + 64) = v34;
  *(v48 + 72) = v144;
  *(v48 + 80) = v40 * 0.7;
  sub_1C3C61798(v147, v48 + v42);
  v49 = v134;
  *(v48 + v43) = v134;
  v50 = v48 + v44;
  v51 = v127;
  *v50 = v128;
  *(v50 + 16) = v51;
  v52 = v126;
  *(v50 + 32) = v125;
  *(v50 + 48) = v52;
  *(v50 + 64) = v123;
  *(v50 + 65) = v137;
  v53 = v133;
  *(v136 + v48) = v133;
  v54 = v132;
  *(v48 + v124) = v132;
  *(v48 + v45) = v40 * 0.5;
  v55 = v131;
  *(v48 + v46) = v131;
  v56 = v130;
  *(v48 + v47) = v130;
  *(v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8)) = v41;
  v153 = sub_1C3CC0B0C;
  v154 = v48;
  aBlock = MEMORY[0x1E69E9820];
  v150 = 1107296256;
  v151 = sub_1C3C71C64;
  v152 = &block_descriptor_17;
  v57 = _Block_copy(&aBlock);
  v147 = v34;
  v145 = v145;
  v146 = v144;
  v58 = v49;
  v59 = v53;
  v60 = v54;
  v61 = v55;
  v62 = v56;

  aBlock = v16;
  v150 = v138;
  v151 = v139;
  v152 = v140;
  v153 = v141;
  v154 = v142;
  [v143 enumerateCoordinatesWithTransform:&aBlock roundToViewScale:1 block:v57];
  _Block_release(v57);
  swift_beginAccess();
  if (*(v41 + 32))
  {
    sub_1C3CC0A94(v148);

    return;
  }

  v63 = v145;
  v144 = v59;
  v143 = v58;
  v122 = v41;
  if (v137)
  {
    v64 = sub_1C3CBED4C((v155 & 1) == 0, a7, a9);
  }

  else
  {
    v64 = sub_1C3CBB728();
  }

  v100 = v64;
  v101 = v135;
  v102 = v143;
  v103 = v144;
  if (([v143 isEmpty] & 1) == 0)
  {
    v104 = [v102 CGPath];
    [v100 renderPath:v104 context:v101 axisRect:a6 alpha:{a7, a8, a9, 1.0}];
  }

  v145 = v100;
  v105 = sub_1C3CBB804();
  if (([v103 isEmpty] & 1) == 0)
  {
    v106 = [v144 CGPath];
    [v105 renderPath:v106 context:v101 axisRect:a6 alpha:{a7, a8, a9, 1.0}];
  }

  v107 = v147;
  v108 = sub_1C3CBB754();
  if (([v60 isEmpty] & 1) == 0)
  {
    v109 = [v60 CGPath];
    [v108 renderPath:v109 context:v101 axisRect:a6 alpha:{a7, a8, a9, 1.0}];
  }

  v110 = sub_1C3CBB830();
  if (([v61 isEmpty] & 1) == 0)
  {
    v111 = [v61 CGPath];
    [v110 renderPath:v111 context:v101 axisRect:a6 alpha:{a7, a8, a9, 1.0}];
  }

  v112 = *&v107[OBJC_IVAR___HKBalanceSeries____lazy_storage___innerFillStyle];
  if (([v62 isEmpty] & 1) == 0)
  {
    v113 = [v62 CGPath];
    [v112 renderPath:v113 context:v101 axisRect:a6 alpha:{a7, a8, a9, 1.0}];
  }

  v114 = sub_1C3CBB8B4();
  if (([v63 isEmpty] & 1) == 0)
  {
    v115 = [v63 CGPath];
    [v114 renderPath:v115 context:v101 axisRect:a6 alpha:{a7, a8, a9, 1.0}];
  }

  v116 = sub_1C3CBB8E0();
  v117 = v146;
  if ([v146 isEmpty])
  {
  }

  else
  {
    v118 = [v117 CGPath];
    [v116 renderPath:v118 context:v101 axisRect:a6 alpha:{a7, a8, a9, 1.0}];
  }

  sub_1C3CC0A94(v148);
LABEL_42:
}

id sub_1C3CC07AC(id result)
{
  if (result)
  {
    v1 = result;
    result = [result minValue];
    if (result)
    {
      v2 = result;
      [result doubleValue];
      v4 = v3;

      result = [v1 maxValue];
      if (result)
      {
        v5 = result;
        [result doubleValue];
        v7 = v6;

        v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        v10 = [objc_opt_self() valueRangeWithMinValue:v8 maxValue:v9];

        return v10;
      }
    }
  }

  return result;
}

void sub_1C3CC09A8()
{
  sub_1C3CBBE58(319, &qword_1EC0862F0, MEMORY[0x1E69A2E68]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C3CC0A94(uint64_t a1)
{
  sub_1C3CBBE58(0, &qword_1EC0862F0, MEMORY[0x1E69A2E68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C3CC0B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1C3CBBE58(0, &qword_1EC0862F0, MEMORY[0x1E69A2E68]);
  v16 = (*(*(v15 - 8) + 80) + 88) & ~*(*(v15 - 8) + 80);
  v17 = (*(*(v15 - 8) + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 73) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1C3CBCDB0(a1, a2, a3, a4, a5, *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), *(v7 + 48), *(v7 + 80), *(v7 + v21), a6, a7, *(v7 + 56), *(v7 + 64), *(v7 + 72), v7 + v16, *(v7 + v17), v7 + v18, *(v7 + v18 + 65), *(v7 + v19), *(v7 + v20), *(v7 + v22), *(v7 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v7 + ((((v22 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_BYTE *sub_1C3CC0CAC(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(sub_1C3D1E8C4() - 8);
  v16 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v17 = (*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1C3CBD4D8(a1, v7[2], v7[3], v7[4], v7[5], *(v7 + v19), *(v7 + v24), *(v7 + v26), a2, a3, a4, a5, a6, a7, v7 + v16, *(v7 + v17), *(v7 + v18), *(v7 + v20), *(v7 + v21), *(v7 + v22), *(v7 + v23), *(v7 + v25), *(v7 + v27), *(v7 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v7 + ((((v27 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_1C3CC0E38()
{
  result = qword_1EC086B50;
  if (!qword_1EC086B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC086B50);
  }

  return result;
}

void sub_1C3CC0E84()
{
  if (!qword_1EC086D28)
  {
    sub_1C3D1E8C4();
    sub_1C396C528(255, &unk_1EC086D30, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
    sub_1C3CC0F54(&unk_1EC086CD0, MEMORY[0x1E69A2E68]);
    v0 = sub_1C3D209A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC086D28);
    }
  }
}

uint64_t sub_1C3CC0F54(unint64_t *a1, void (*a2)(uint64_t))
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

id AudiogramAverageSensitivityChartFormatter.__allocating_init(displayType:unitController:)(void *a1, void *a2)
{
  v3 = v2;
  v12.receiver = objc_allocWithZone(v3);
  v12.super_class = type metadata accessor for AudiogramChartDataFormatter();
  v6 = objc_msgSendSuper2(&v12, sel_init);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 hk_chartCurrentValueValueFont];
  [v8 setMajorFont_];

  v10 = [v7 hk_chartCurrentValueKindFont];
  [v8 setMinorFont_];

  [v8 setUnitController_];
  [v8 setDisplayType_];

  return v8;
}

id AudiogramAverageSensitivityDataSource.__allocating_init(audiogramSample:isLeftEar:)(void *a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = [objc_allocWithZone(HKGraphSeriesDataBlock) init];
  sub_1C3CC1AD0(a1, a2);
  sub_1C3C77FEC(0, &qword_1EC085850);
  v7 = sub_1C3D202A4();

  [v6 setChartPoints_];

  *&v5[OBJC_IVAR___HKAudiogramAverageSensitivityDataSource_dataBlock] = v6;
  v10.receiver = v5;
  v10.super_class = v2;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

id AudiogramAverageSensitivityDataSource.init(audiogramSample:isLeftEar:)(void *a1, char a2)
{
  v5 = [objc_allocWithZone(HKGraphSeriesDataBlock) init];
  sub_1C3CC1AD0(a1, a2);
  sub_1C3C77FEC(0, &qword_1EC085850);
  v6 = sub_1C3D202A4();

  [v5 setChartPoints_];

  *&v2[OBJC_IVAR___HKAudiogramAverageSensitivityDataSource_dataBlock] = v5;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for AudiogramAverageSensitivityDataSource();
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

id AudiogramAverageSensitivityChartData.__allocating_init(averageSensitivity:isLeftEar:)(char a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC8HealthUI36AudiogramAverageSensitivityChartData_averageSensitivity] = a2;
  v5[OBJC_IVAR____TtC8HealthUI36AudiogramAverageSensitivityChartData_isLeftEar] = a1;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id AudiogramAverageSensitivityChartData.init(averageSensitivity:isLeftEar:)(char a1, double a2)
{
  *&v2[OBJC_IVAR____TtC8HealthUI36AudiogramAverageSensitivityChartData_averageSensitivity] = a2;
  v2[OBJC_IVAR____TtC8HealthUI36AudiogramAverageSensitivityChartData_isLeftEar] = a1;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AudiogramAverageSensitivityChartData();
  return objc_msgSendSuper2(&v4, sel_init);
}

id AudiogramAverageSensitivityChartData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudiogramAverageSensitivityChartFormatter.init(displayType:unitController:)(void *a1, void *a2)
{
  v11.receiver = v2;
  v11.super_class = type metadata accessor for AudiogramChartDataFormatter();
  v5 = objc_msgSendSuper2(&v11, sel_init);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 hk_chartCurrentValueValueFont];
  [v7 setMajorFont_];

  v9 = [v6 hk_chartCurrentValueKindFont];
  [v7 setMinorFont_];

  [v7 setUnitController_];
  [v7 setDisplayType_];

  return v7;
}

id sub_1C3CC1A98(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1C3CC1AD0(void *a1, char a2)
{
  LOBYTE(v2) = a2;
  v4 = &selRef_averageLeftEarSensitivity;
  if ((a2 & 1) == 0)
  {
    v4 = &selRef_averageRightEarSensitivity;
  }

  v5 = [a1 *v4];
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = v5;
    v8 = objc_opt_self();
    v9 = [v8 decibelHearingLevelUnit];
    [v7 doubleValueForUnit_];
    v11 = v10;

    v12 = [a1 sensitivityPoints];
    sub_1C3C27CB4(0, &qword_1EC086170);
    v13 = sub_1C3D202B4();

    v43 = v6;
    if (v13 >> 62)
    {
      goto LABEL_36;
    }

    v41 = v13 & 0xFFFFFFFFFFFFFF8;
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v35 = v7;
    v36 = v13;
    while (v14)
    {
      v34 = v8;
      v8 = 0;
      v39 = v13 + 32;
      v40 = v13 & 0xC000000000000001;
      v15 = (v2 & 1) == 0;
      v33 = v2 & 1;
      v37 = MEMORY[0x1E69E7CC0];
      v38 = v14;
      while (1)
      {
        if (v40)
        {
          v16 = MEMORY[0x1C692FEB0](v8, v36);
        }

        else
        {
          if (v8 >= *(v41 + 16))
          {
            goto LABEL_35;
          }

          v16 = *(v39 + 8 * v8);
        }

        v17 = v16;
        if (__OFADD__(v8++, 1))
        {
          break;
        }

        v19 = [v16 tests];
        sub_1C3C27CB4(0, &unk_1EC0871B0);
        v20 = sub_1C3D202B4();

        if (v20 >> 62)
        {
          v13 = sub_1C3D20964();
          if (v13)
          {
LABEL_15:
            v21 = 0;
            while (1)
            {
              if ((v20 & 0xC000000000000001) != 0)
              {
                v22 = MEMORY[0x1C692FEB0](v21, v20);
              }

              else
              {
                if (v21 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_33;
                }

                v22 = *(v20 + 8 * v21 + 32);
              }

              v7 = v22;
              v2 = (v21 + 1);
              if (__OFADD__(v21, 1))
              {
                __break(1u);
LABEL_33:
                __break(1u);
                goto LABEL_34;
              }

              if ([v22 side] == v15)
              {
                break;
              }

              ++v21;
              if (v2 == v13)
              {
                goto LABEL_7;
              }
            }

            v23 = [v7 sensitivity];

            if (v23)
            {
              v24 = [v17 frequency];
              v25 = [v34 hertzUnit];
              [v24 doubleValueForUnit_];
              v27 = v26;

              v28 = (log(v27) + -4.82831374) / 0.693147181;
              v29 = type metadata accessor for AudiogramAverageSensitivityChartPoint();
              v13 = objc_allocWithZone(v29);
              v7 = &selRef_hk_enumerateDateInterval_byDateComponents_block_;
              v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
              *(v13 + OBJC_IVAR____TtC8HealthUIP33_2A1C24F28D3D74C6BE1A5464632B356C37AudiogramAverageSensitivityChartPoint_xCoord) = v30;
              v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
              *(v13 + OBJC_IVAR____TtC8HealthUIP33_2A1C24F28D3D74C6BE1A5464632B356C37AudiogramAverageSensitivityChartPoint_yCoord) = v31;
              *(v13 + OBJC_IVAR____TtC8HealthUIP33_2A1C24F28D3D74C6BE1A5464632B356C37AudiogramAverageSensitivityChartPoint_averageSensitivity) = v11;
              *(v13 + OBJC_IVAR____TtC8HealthUIP33_2A1C24F28D3D74C6BE1A5464632B356C37AudiogramAverageSensitivityChartPoint_isLeftEar) = v33;
              v42.receiver = v13;
              v42.super_class = v29;
              objc_msgSendSuper2(&v42, sel_init);

              MEMORY[0x1C692F8F0]();
              if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v13 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_1C3D202C4();
              }

              v2 = &v43;
              sub_1C3D202F4();
              v37 = v43;
            }

            else
            {
            }

            goto LABEL_8;
          }
        }

        else
        {
          v13 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v13)
          {
            goto LABEL_15;
          }
        }

LABEL_7:

LABEL_8:
        if (v8 == v38)
        {
          goto LABEL_38;
        }
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      v41 = v13 & 0xFFFFFFFFFFFFFF8;
      v14 = sub_1C3D20964();
      v35 = v7;
      v36 = v13;
    }

    v37 = MEMORY[0x1E69E7CC0];
LABEL_38:

    if (v37 >> 62)
    {
      sub_1C3C77FEC(0, &qword_1EC085850);

      v6 = sub_1C3D20954();
    }

    else
    {

      sub_1C3D20A64();
      sub_1C3C77FEC(0, &qword_1EC085850);

      v6 = v37;
    }
  }

  return v6;
}

uint64_t sub_1C3CC2060(unint64_t a1)
{
  v6 = a1;
  if (!(a1 >> 62))
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_30:
    v3 = 0;
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_31;
  }

  v7 = sub_1C3D20964();
  if (!v7)
  {
    goto LABEL_30;
  }

LABEL_3:
  if (v7 < 1)
  {
    __break(1u);
    goto LABEL_34;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    v3 = 0;
    for (i = 0; i != v7; ++i)
    {
      MEMORY[0x1C692FEB0](i, v6);
      type metadata accessor for AudiogramAverageSensitivityChartData();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = v9;
        if (*(v9 + OBJC_IVAR____TtC8HealthUI36AudiogramAverageSensitivityChartData_isLeftEar) == 1)
        {

          v3 = v10;
        }

        else
        {

          v4 = v10;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v11 = (v6 + 32);
    type metadata accessor for AudiogramAverageSensitivityChartData();
    v4 = 0;
    v3 = 0;
    do
    {
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = *(v12 + OBJC_IVAR____TtC8HealthUI36AudiogramAverageSensitivityChartData_isLeftEar);
        v14 = v12;
        swift_unknownObjectRetain();
        if (v13)
        {
          v15 = v3;
        }

        else
        {
          v15 = v4;
        }

        if (v13)
        {
          v3 = v14;
        }

        else
        {
          v4 = v14;
        }
      }

      v11 += 8;
      --v7;
    }

    while (v7);
  }

  v16 = v1;
  v17 = MEMORY[0x1E69E7CC0];
  v38 = MEMORY[0x1E69E7CC0];
  v18 = &selRef_reverseColumnsInRightToLeftLayoutDirection;
  if (v3)
  {
    v19 = objc_opt_self();
    v6 = v3;
    v20 = v1;
    v21 = [v19 decibelHearingLevelUnit];
    v2 = [objc_opt_self() quantityWithUnit:v21 doubleValue:*(v6 + OBJC_IVAR____TtC8HealthUI36AudiogramAverageSensitivityChartData_averageSensitivity)];

    v22 = [v19 &selRef_enumerateCoordinatesWithTransform_roundToViewScale_block_ + 5];
    [v2 doubleValueForUnit_];
    v24 = v23;
    v25 = [objc_allocWithZone(HKSelectedRangeData) initWithStatisticsType_];
    [v25 setDataType_];
    v5 = v20;
    v26 = [v20 attributedStringWithValue:v22 unit:1 showUnit:v24];
    [v25 setAttributedString_];

    v27 = sub_1C3D1E804();
    [v25 setValueAsNumber_];

    MEMORY[0x1C692F8F0]();
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_24:
      sub_1C3D202F4();

      v17 = v38;
      v16 = v5;
      v18 = &selRef_reverseColumnsInRightToLeftLayoutDirection;
      goto LABEL_25;
    }

LABEL_34:
    sub_1C3D202C4();
    goto LABEL_24;
  }

LABEL_25:
  if (!v4)
  {
LABEL_31:

    return v17;
  }

  v28 = objc_opt_self();
  v29 = [v28 decibelHearingLevelUnit];
  v30 = [objc_opt_self() quantityWithUnit:v29 doubleValue:*&v4[OBJC_IVAR____TtC8HealthUI36AudiogramAverageSensitivityChartData_averageSensitivity]];

  v31 = [v28 decibelHearingLevelUnit];
  [v30 doubleValueForUnit_];
  v33 = v32;
  v34 = [objc_allocWithZone(HKSelectedRangeData) initWithStatisticsType_];
  [v34 setDataType_];
  v35 = [v16 attributedStringWithValue:v31 unit:1 showUnit:v33];
  [v34 v18[341]];

  v36 = sub_1C3D1E804();
  [v34 setValueAsNumber_];

  MEMORY[0x1C692F8F0]();
  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C3D202C4();
  }

  sub_1C3D202F4();

  return v38;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C3CC2618(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1C3CC2660(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C3CC26DC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ClinicalAccountBrandLogoView();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22[-v8];
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *a1;
  sub_1C3C4D7A4((a1 + 2), (v9 + 1));
  *v9 = v10;
  v26[0] = 0x4042000000000000;
  sub_1C3C4C46C();
  v11 = v10;
  sub_1C3D1F084();
  v12 = sub_1C3D1F434();
  LOBYTE(v26[0]) = 1;
  sub_1C3CC2988(a1, v23);
  *&v22[7] = v23[0];
  *&v22[23] = v23[1];
  *&v22[39] = v23[2];
  *&v22[55] = v23[3];
  LOBYTE(v10) = v26[0];
  sub_1C3CC2FD8(v9, v6, type metadata accessor for ClinicalAccountBrandLogoView);
  sub_1C3CC2FD8(v6, a2, type metadata accessor for ClinicalAccountBrandLogoView);
  sub_1C3CC2DB4();
  v14 = a2 + *(v13 + 48);
  v24[0] = v12;
  v24[1] = 0;
  v25[0] = v10;
  *&v25[1] = *v22;
  *&v25[17] = *&v22[16];
  *&v25[33] = *&v22[32];
  *&v25[49] = *&v22[48];
  v15 = *&v22[63];
  *&v25[64] = *&v22[63];
  v16 = *v25;
  *v14 = v12;
  *(v14 + 16) = v16;
  v17 = *&v25[16];
  v18 = *&v25[32];
  v19 = *&v25[48];
  *(v14 + 80) = v15;
  *(v14 + 48) = v18;
  *(v14 + 64) = v19;
  *(v14 + 32) = v17;
  v20 = a2 + *(v13 + 64);
  *v20 = 0;
  *(v20 + 8) = 1;
  sub_1C3CC2FD8(v24, v26, sub_1C3CC2E2C);
  sub_1C3CC3040(v9, type metadata accessor for ClinicalAccountBrandLogoView);
  v26[0] = v12;
  v26[1] = 0;
  v27 = v10;
  v29 = *&v22[16];
  v30 = *&v22[32];
  *v31 = *&v22[48];
  *&v31[15] = *&v22[63];
  v28 = *v22;
  sub_1C3CC3040(v26, sub_1C3CC2E2C);
  sub_1C3CC3040(v6, type metadata accessor for ClinicalAccountBrandLogoView);
}

void sub_1C3CC2988(id *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *a1;
  v5 = [*a1 title];
  sub_1C3D20104();

  sub_1C3C4999C();
  v6 = sub_1C3D1F994();
  v8 = v7;
  v10 = v9;
  sub_1C3D1F834();
  v11 = sub_1C3D1F904();
  v13 = v12;
  v38 = v14;
  v16 = v15;
  sub_1C3C2EE8C(v6, v8, v10 & 1);

  if (![v4 needsRelogin])
  {
    v29 = 0;
    v31 = 0;
    v35 = 0;
    v34 = 0;
    goto LABEL_7;
  }

  v36 = v11;
  v37 = v16;
  v17 = sub_1C3D200C4();
  v18 = HKHealthRecordsAPILocalizedString(v17);

  if (v18)
  {
    sub_1C3D20104();

    v19 = sub_1C3D1F994();
    v21 = v20;
    v23 = v22;
    sub_1C3D1F8B4();
    v24 = sub_1C3D1F954();
    v26 = v25;
    v28 = v27;

    sub_1C3C2EE8C(v19, v21, v23 & 1);

    sub_1C3D1FB04();
    v29 = sub_1C3D1F924();
    v31 = v30;
    LOBYTE(v21) = v32;
    v34 = v33;
    sub_1C3C2EE8C(v24, v26, v28 & 1);

    v35 = v21 & 1;
    sub_1C3C4C328(v29, v31, v21 & 1);

    v11 = v36;
    v16 = v37;
LABEL_7:
    sub_1C3C4C328(v11, v13, v38 & 1);

    sub_1C3CC30A0(v29, v31, v35, v34);
    sub_1C3CC30E4(v29, v31, v35, v34);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v38 & 1;
    *(a2 + 24) = v16;
    *(a2 + 32) = v29;
    *(a2 + 40) = v31;
    *(a2 + 48) = v35;
    *(a2 + 56) = v34;
    sub_1C3CC30E4(v29, v31, v35, v34);
    sub_1C3C2EE8C(v11, v13, v38 & 1);

    return;
  }

  __break(1u);
}

uint64_t sub_1C3CC2CE8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1C3D1F3F4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1C3CC2D30();
  return sub_1C3CC26DC(v1, a1 + *(v3 + 44));
}

void sub_1C3CC2D30()
{
  if (!qword_1EC0871C0)
  {
    sub_1C3CC2ECC(255, &qword_1EC0871C8, sub_1C3CC2DB4);
    v0 = sub_1C3D1F144();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0871C0);
    }
  }
}

void sub_1C3CC2DB4()
{
  if (!qword_1EC0871D0)
  {
    type metadata accessor for ClinicalAccountBrandLogoView();
    sub_1C3CC2E2C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC0871D0);
    }
  }
}

void sub_1C3CC2E2C()
{
  if (!qword_1EC0871D8)
  {
    sub_1C3CC2ECC(255, &qword_1EC0871E0, sub_1C3CC2F20);
    sub_1C3CC3220(&qword_1EC0871F8, &qword_1EC0871E0, sub_1C3CC2F20);
    v0 = sub_1C3D1FC84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0871D8);
    }
  }
}

void sub_1C3CC2ECC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C3D1FD34();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C3CC2F20()
{
  if (!qword_1EC0871E8)
  {
    sub_1C3CC2F88();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC0871E8);
    }
  }
}

void sub_1C3CC2F88()
{
  if (!qword_1EC0871F0)
  {
    v0 = sub_1C3D206E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0871F0);
    }
  }
}

uint64_t sub_1C3CC2FD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C3CC3040(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C3CC30A0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C3C4C328(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C3CC30E4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C3C2EE8C(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_1C3CC3128()
{
  result = qword_1EC087200;
  if (!qword_1EC087200)
  {
    sub_1C3CC3180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC087200);
  }

  return result;
}

void sub_1C3CC3180()
{
  if (!qword_1EC087208)
  {
    sub_1C3CC2ECC(255, &qword_1EC0871C8, sub_1C3CC2DB4);
    sub_1C3CC3220(&qword_1EC087210, &qword_1EC0871C8, sub_1C3CC2DB4);
    v0 = sub_1C3D1FC64();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC087208);
    }
  }
}

uint64_t sub_1C3CC3220(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1C3CC2ECC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id HKInteractiveChartInteractionAnalyticsEvent.__allocating_init(showMoreDataForDisplayType:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1C3CC3C70(a1);

  return v4;
}

id HKInteractiveChartInteractionAnalyticsEvent.__allocating_init(for:timeScopeSelected:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1C3CC3D50(a1, a2);

  return v6;
}

id HKInteractiveChartInteractionAnalyticsEvent.init(for:timeScopeSelected:)(void *a1, uint64_t a2)
{
  v3 = sub_1C3CC3D50(a1, a2);

  return v3;
}

id HKInteractiveChartInteractionAnalyticsEvent.init(showMoreDataForDisplayType:)(void *a1)
{
  v2 = sub_1C3CC3C70(a1);

  return v2;
}

id HKInteractiveChartInteractionAnalyticsEvent.__allocating_init(showMoreDataForDataType:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1C3CC3EF0(a1);

  return v4;
}

id HKInteractiveChartInteractionAnalyticsEvent.init(showMoreDataForDataType:)(void *a1)
{
  v2 = sub_1C3CC3EF0(a1);

  return v2;
}

id HKInteractiveChartInteractionAnalyticsEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HKInteractiveChartInteractionAnalyticsEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HKInteractiveChartInteractionAnalyticsEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C3CC3760@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1C3CA0224(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C3CF8AF4();
      v10 = v12;
    }

    sub_1C3C233B8((*(v10 + 56) + 32 * v8), a3);
    sub_1C3CF8794(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1C3CC3804(void *a1)
{
  *&v48 = MEMORY[0x1E69E7CC0];
  sub_1C3C23BDC(0, 8, 0);
  v1 = 0;
  v2 = v48;
  v3 = 0x6E6F69746361;
  do
  {
    v4 = byte_1F42FA530[v1 + 32];
    v5 = 0xD00000000000001CLL;
    if (v4 == 6)
    {
      v5 = 0xD000000000000012;
      v6 = 0x80000001C3D86C00;
    }

    else
    {
      v6 = 0x80000001C3D86BE0;
    }

    v7 = 0xD000000000000018;
    if (v4 == 4)
    {
      v8 = 0x80000001C3D86C20;
    }

    else
    {
      v7 = 0x64657463656C6573;
      v8 = 0xEF79616C7265764FLL;
    }

    if (byte_1F42FA530[v1 + 32] <= 5u)
    {
      v5 = v7;
      v6 = v8;
    }

    if (v4 == 2)
    {
      v9 = 0x747865746E6F63;
    }

    else
    {
      v9 = 0x706F6353656D6974;
    }

    if (v4 == 2)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = 0xE900000000000065;
    }

    if (byte_1F42FA530[v1 + 32])
    {
      v11 = 0x6E616E65766F7270;
    }

    else
    {
      v11 = v3;
    }

    if (byte_1F42FA530[v1 + 32])
    {
      v12 = 0xEA00000000006563;
    }

    else
    {
      v12 = 0xE600000000000000;
    }

    if (byte_1F42FA530[v1 + 32] <= 1u)
    {
      v9 = v11;
      v10 = v12;
    }

    if (byte_1F42FA530[v1 + 32] <= 3u)
    {
      v13 = v9;
    }

    else
    {
      v13 = v5;
    }

    if (byte_1F42FA530[v1 + 32] <= 3u)
    {
      v14 = v10;
    }

    else
    {
      v14 = v6;
    }

    *&v48 = v2;
    v16 = v2[2];
    v15 = v2[3];
    if (v16 >= v15 >> 1)
    {
      v18 = v3;
      sub_1C3C23BDC((v15 > 1), v16 + 1, 1);
      v3 = v18;
      v2 = v48;
    }

    ++v1;
    v2[2] = v16 + 1;
    v17 = &v2[2 * v16];
    v17[4] = v13;
    v17[5] = v14;
  }

  while (v1 != 8);
  v19 = 0;
  v20 = v16 + 1;
  v21 = MEMORY[0x1E69E7CC8];
  v22 = v2 + 5;
  while (v19 < v2[2])
  {
    v26 = *(v22 - 1);
    v25 = *v22;
    v49 = MEMORY[0x1E69E6158];
    *&v48 = 776023630;
    *(&v48 + 1) = 0xE400000000000000;
    sub_1C3C233B8(&v48, v47);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = sub_1C3CA0224(v26, v25);
    v30 = v21[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_49;
    }

    v34 = v29;
    if (v21[3] < v33)
    {
      sub_1C3CA068C(v33, isUniquelyReferenced_nonNull_native);
      v28 = sub_1C3CA0224(v26, v25);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_51;
      }

LABEL_42:
      if (v34)
      {
        goto LABEL_34;
      }

      goto LABEL_43;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_42;
    }

    v39 = v28;
    sub_1C3CF8AF4();
    v28 = v39;
    if (v34)
    {
LABEL_34:
      v23 = v28;

      v24 = (v21[7] + 32 * v23);
      __swift_destroy_boxed_opaque_existential_0(v24);
      sub_1C3C233B8(v47, v24);
      goto LABEL_35;
    }

LABEL_43:
    v21[(v28 >> 6) + 8] |= 1 << v28;
    v36 = (v21[6] + 16 * v28);
    *v36 = v26;
    v36[1] = v25;
    sub_1C3C233B8(v47, (v21[7] + 32 * v28));
    v37 = v21[2];
    v32 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v32)
    {
      goto LABEL_50;
    }

    v21[2] = v38;
LABEL_35:
    ++v19;
    v22 += 2;
    if (v20 == v19)
    {

      v40 = [a1 identifier];
      v41 = sub_1C3D20104();
      v43 = v42;

      v49 = MEMORY[0x1E69E6158];
      *&v48 = v41;
      *(&v48 + 1) = v43;
      sub_1C3C233B8(&v48, v47);
      v44 = swift_isUniquelyReferenced_nonNull_native();
      sub_1C3CA1F98(v47, 0xD000000000000012, 0x80000001C3D86C00, v44);
      return v21;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = sub_1C3D20AA4();
  __break(1u);
  return result;
}

id sub_1C3CC3C70(void *a1)
{
  v2 = v1;
  v3 = [a1 objectType];
  v4 = sub_1C3CC3804(v3);

  v11 = MEMORY[0x1E69E6158];
  strcpy(&v10, "showMoreData");
  BYTE13(v10) = 0;
  HIWORD(v10) = -5120;
  sub_1C3C233B8(&v10, v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v4;
  sub_1C3CA1F98(v9, 0x6E6F69746361, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  *&v2[OBJC_IVAR____TtC8HealthUI43HKInteractiveChartInteractionAnalyticsEvent_eventPayload] = v4;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for HKInteractiveChartInteractionAnalyticsEvent();
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_1C3CC3D50(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = [a1 objectType];
  v6 = sub_1C3CC3804(v5);

  v7 = MEMORY[0x1E69E6158];
  v22 = MEMORY[0x1E69E6158];
  *&v21 = 0x695465676E616863;
  *(&v21 + 1) = 0xEF65706F6353656DLL;
  sub_1C3C233B8(&v21, v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v6;
  sub_1C3CA1F98(v20, 0x6E6F69746361, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v9 = v6;
  v23 = v6;
  v10 = HKStringForHKTimeScope(a2, 0);
  if (v10)
  {
    v11 = v10;
    v12 = sub_1C3D20104();
    v14 = v13;

    v22 = v7;
    *&v21 = v12;
    *(&v21 + 1) = v14;
    sub_1C3C233B8(&v21, v20);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v19 = v9;
    sub_1C3CA1F98(v20, 0x706F6353656D6974, 0xE900000000000065, v15);
    v16 = v9;
  }

  else
  {
    sub_1C3CC3760(0x706F6353656D6974, 0xE900000000000065, &v21);
    sub_1C396C69C(&v21);
    v16 = v23;
  }

  *&v3[OBJC_IVAR____TtC8HealthUI43HKInteractiveChartInteractionAnalyticsEvent_eventPayload] = v16;
  v18.receiver = v3;
  v18.super_class = type metadata accessor for HKInteractiveChartInteractionAnalyticsEvent();
  return objc_msgSendSuper2(&v18, sel_init);
}

id sub_1C3CC3EF0(void *a1)
{
  v2 = v1;
  v3 = sub_1C3CC3804(a1);
  v10 = MEMORY[0x1E69E6158];
  strcpy(&v9, "showMoreData");
  BYTE13(v9) = 0;
  HIWORD(v9) = -5120;
  sub_1C3C233B8(&v9, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v3;
  sub_1C3CA1F98(v8, 0x6E6F69746361, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  *&v2[OBJC_IVAR____TtC8HealthUI43HKInteractiveChartInteractionAnalyticsEvent_eventPayload] = v3;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for HKInteractiveChartInteractionAnalyticsEvent();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_1C3CC3FAC()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 getActivePairedDevice];

  if (!v1)
  {
    goto LABEL_7;
  }

  if (![v1 valueForProperty_])
  {

LABEL_7:
    v5 = 0u;
    v6 = 0u;
    goto LABEL_8;
  }

  sub_1C3D20774();
  swift_unknownObjectRelease();

  if (!*(&v6 + 1))
  {
LABEL_8:
    v2 = 776023630;
    sub_1C396C69C(&v5);
    return v2;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 776023630;
  }
}

uint64_t sub_1C3CC40C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8HealthUI43HKInteractiveChartInteractionAnalyticsEvent_eventPayload);

  v2 = sub_1C3CC3FAC();
  v8 = MEMORY[0x1E69E6158];
  *&v7 = v2;
  *(&v7 + 1) = v3;
  sub_1C3C233B8(&v7, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v1;
  sub_1C3CA1F98(v6, 0xD00000000000001CLL, 0x80000001C3D86BE0, isUniquelyReferenced_nonNull_native);
  return v9;
}

void *sub_1C3CC42D8(unint64_t a1, uint64_t *a2)
{
  v48 = a2;
  sub_1C3C29314();
  v53 = v3;
  v39 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - v12;
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C3D20964())
  {
    v15 = 0;
    v46 = a1 & 0xC000000000000001;
    v45 = a1 & 0xFFFFFFFFFFFFFF8;
    v49 = MEMORY[0x1E69E7CC0];
    v42 = a1 + 32;
    v43 = a1;
    v54 = v13;
    v44 = i;
    while (v46)
    {
      v16 = MEMORY[0x1C692FEB0](v15, a1, v11);
      v17 = __OFADD__(v15, 1);
      v18 = v15 + 1;
      if (v17)
      {
        goto LABEL_26;
      }

LABEL_9:
      v51 = v18;
      v19 = *v48;
      v50 = v16;
      v20 = &v16[OBJC_IVAR____TtC8HealthUI21BalanceCoordinateInfo_collection];
      v21 = *(v20 + 3);
      v47 = v20;
      __swift_project_boxed_opaque_existential_0(v20, v21);

      sub_1C3D1EA14();
      v59 = v19;
      if (*(v19 + 16))
      {
        v22 = v59;
        sub_1C3D20B04();
        sub_1C3D1FE54();
        sub_1C3CC7E04(&unk_1EC087240, MEMORY[0x1E696B418]);
        sub_1C3D1FF84();
        v52 = *(v53 + 36);
        sub_1C3D1FF84();
        v23 = sub_1C3D20B34();
        v24 = v22 + 56;
        v25 = -1 << *(v22 + 32);
        v26 = v23 & ~v25;
        if ((*(v22 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
        {
          v27 = ~v25;
          v28 = *(v39 + 72);
          do
          {
            sub_1C3CC7D9C(*(v59 + 48) + v28 * v26, v9, sub_1C3C29314);
            sub_1C3CC7E04(&unk_1EC0862A0, MEMORY[0x1E696B418]);
            if (sub_1C3D20034())
            {
              v29 = sub_1C3D20034();
              sub_1C3CBF418(v9, sub_1C3C29314);
              if (v29)
              {

                v13 = v54;
                sub_1C3CBF418(v54, sub_1C3C29314);
                v56 = 0u;
                v57 = 0u;
                v58 = 0;
                goto LABEL_18;
              }
            }

            else
            {
              sub_1C3CBF418(v9, sub_1C3C29314);
            }

            v26 = (v26 + 1) & v27;
          }

          while (((*(v24 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0);
        }
      }

      v13 = v54;
      sub_1C3CBF418(v54, sub_1C3C29314);
      v30 = v47;
      __swift_project_boxed_opaque_existential_0(v47, *(v47 + 3));
      v31 = v41;
      sub_1C3D1EA14();
      v32 = v40;
      sub_1C3C66348(v40, v31);
      sub_1C3CBF418(v32, sub_1C3C29314);
      sub_1C3C4D7A4(v30, &v56);
LABEL_18:
      v33 = v44;

      a1 = v43;
      v15 = v51;
      if (*(&v57 + 1))
      {
        sub_1C3972F30(&v56, v55);
        sub_1C3972F30(v55, &v56);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_1C3C46E08(0, v49[2] + 1, 1, v49);
        }

        v35 = v49[2];
        v34 = v49[3];
        if (v35 >= v34 >> 1)
        {
          v49 = sub_1C3C46E08((v34 > 1), v35 + 1, 1, v49);
        }

        v36 = v49;
        v49[2] = v35 + 1;
        sub_1C3972F30(&v56, &v36[5 * v35 + 4]);
      }

      else
      {
        sub_1C3CC7AC4(&v56, &qword_1EC087250, sub_1C3C47190);
      }

      if (v15 == v33)
      {
        return v49;
      }
    }

    if (v15 >= *(v45 + 16))
    {
      goto LABEL_27;
    }

    v16 = *(v42 + 8 * v15);
    v17 = __OFADD__(v15, 1);
    v18 = v15 + 1;
    if (!v17)
    {
      goto LABEL_9;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

id BalanceChartFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1C3CC4918()
{
  v1 = OBJC_IVAR___HKBalanceChartFormatter____lazy_storage___relativeStatFormatter;
  v2 = *&v0[OBJC_IVAR___HKBalanceChartFormatter____lazy_storage___relativeStatFormatter];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___HKBalanceChartFormatter____lazy_storage___relativeStatFormatter];
  }

  else
  {
    v4 = [objc_allocWithZone(HKInteractiveChartBaselineRelativeStatFormatter) init];
    v5 = [v0 unitController];
    [v4 setUnitController_];

    v6 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

unint64_t sub_1C3CC4A08(uint64_t *a1, SEL *a2, SEL *a3)
{
  v4 = *a1;
  v5 = *&v3[*a1];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = sub_1C3CC4A6C(v3, a2, a3);
    *&v3[v4] = v6;
  }

  return v6;
}

unint64_t sub_1C3CC4A6C(void *a1, SEL *a2, SEL *a3)
{
  sub_1C3CC7E4C(0, &qword_1EC080D80, sub_1C3C54BC4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C3D5DCD0;
  v7 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v8 = v7;
  v9 = [a1 *a2];
  if (!v9)
  {
    v9 = [objc_opt_self() preferredFontForTextStyle_];
  }

  v10 = sub_1C3C27CB4(0, &qword_1EC080DF0);
  *(inited + 40) = v9;
  v11 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 *a3];
  *(inited + 104) = sub_1C3C27CB4(0, &qword_1EC080DD0);
  *(inited + 80) = v14;
  v15 = sub_1C3C7556C(inited);
  swift_setDeallocating();
  sub_1C3C54BC4();
  swift_arrayDestroy();
  return v15;
}

unint64_t sub_1C3CC4C08(unint64_t a1, uint64_t (**a2)(uint64_t, char *, uint64_t))
{
  sub_1C3CC7E4C(0, &qword_1EC087220, type metadata accessor for BalanceCoordinateInfo.Context, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  result = sub_1C3C81F94(a1);
  if (!result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  v17 = result;
  v18 = sub_1C3D20964();
  result = v17;
  if (!v18)
  {
LABEL_13:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_4:
  v11 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v19 = result;
    v12 = sub_1C3D20964();
    result = v19;
    if (v12)
    {
LABEL_6:
      v13 = __OFSUB__(v12, 1);
      v14 = v12 - 1;
      if (v13)
      {
        __break(1u);
      }

      else if ((result & 0xC000000000000001) == 0)
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v14 < *(v11 + 16))
        {
          v15 = result;
          sub_1C3CC7D9C(*(result + 8 * v14 + 32) + OBJC_IVAR____TtC8HealthUI21BalanceCoordinateInfo_context, v9, type metadata accessor for BalanceCoordinateInfo.Context);
LABEL_11:
          v16 = type metadata accessor for BalanceCoordinateInfo.Context(0);
          (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
          goto LABEL_17;
        }

        __break(1u);
        return result;
      }

      v15 = result;
      v23 = MEMORY[0x1C692FEB0](v14);
      sub_1C3CC7D9C(v23 + OBJC_IVAR____TtC8HealthUI21BalanceCoordinateInfo_context, v9, type metadata accessor for BalanceCoordinateInfo.Context);
      swift_unknownObjectRelease();
      goto LABEL_11;
    }
  }

  else
  {
    v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_6;
    }
  }

  v15 = result;
  v20 = type metadata accessor for BalanceCoordinateInfo.Context(0);
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
LABEL_17:
  sub_1C3CC4F3C(v9, v6, &qword_1EC087220, type metadata accessor for BalanceCoordinateInfo.Context);
  if (sub_1C3CC75BC(a2, v6))
  {
    v21 = sub_1C3CC506C(v15, a2);

    sub_1C3CC7AC4(v9, &qword_1EC087220, type metadata accessor for BalanceCoordinateInfo.Context);
    return v21;
  }

  else
  {
    v22 = sub_1C3CC5ADC(v15);

    sub_1C3CC7AC4(v9, &qword_1EC087220, type metadata accessor for BalanceCoordinateInfo.Context);
    return v22;
  }
}

uint64_t sub_1C3CC4F3C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C3CC7E4C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1C3CC506C(unint64_t a1, uint64_t (**a2)(uint64_t, char *, uint64_t))
{
  v62 = a2;
  v65 = sub_1C3D1E9C4();
  v67 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v56 - v7;
  v64 = sub_1C3D1E8C4();
  v66 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3CC7E4C(0, &qword_1EC0862F0, MEMORY[0x1E69A2E68], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  v61 = type metadata accessor for BalanceCoordinateInfo.Context(0);
  MEMORY[0x1EEE9AC00](v61);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56 - v19;
  v21 = sub_1C3CC7B34(a1);
  if (a1 >> 62)
  {
LABEL_61:
    v22 = sub_1C3D20964();
    if (!v22)
    {
LABEL_20:

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      goto LABEL_20;
    }
  }

  v23 = __OFSUB__(v22, 1);
  result = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else if ((a1 & 0xC000000000000001) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v25 = *(a1 + 8 * result + 32);
      goto LABEL_8;
    }

    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

  v25 = MEMORY[0x1C692FEB0](result, a1);
LABEL_8:
  v26 = v25;
  sub_1C3CC7D9C(v25 + OBJC_IVAR____TtC8HealthUI21BalanceCoordinateInfo_context, v17, type metadata accessor for BalanceCoordinateInfo.Context);

  sub_1C3CC7CD4(v17, v20);
  v17 = *(v21 + 16);
  if (!v17)
  {
    sub_1C3CBF418(v20, type metadata accessor for BalanceCoordinateInfo.Context);
    goto LABEL_20;
  }

  v59 = v5;
  v60 = v9;
  v57 = KeyPath;
  v58 = v20;
  KeyPath = swift_getKeyPath();
  v9 = *(v21 + 16);
  a1 = v21 + 32;
  v20 = -v9;
  v5 = -1;
  v27 = v21 + 32;
  do
  {
    if (v5 - v9 == -1)
    {

      v12 = -v9;
      v20 = -1;
      v5 = v58;
      while (v12 + v20 != -1)
      {
        if (++v20 >= *(v21 + 16))
        {
          goto LABEL_58;
        }

        v9 = a1 + 40;
        sub_1C3C4D7A4(a1, v69);
        v17 = v71;
        __swift_project_boxed_opaque_existential_0(v69, v70);
        KeyPath = sub_1C3D020F4();
        __swift_destroy_boxed_opaque_existential_0(v69);
        a1 += 40;
        if (KeyPath)
        {

LABEL_28:
          sub_1C396C48C(0, &qword_1EC080D60);
          v33 = swift_allocObject();
          *(v33 + 16) = xmmword_1C3D5EAE0;
          (*(v66 + 56))(v15, 1, 1, v64);
          v34 = sub_1C3CC61AC(v15);
          sub_1C3CC7AC4(v15, &qword_1EC0862F0, MEMORY[0x1E69A2E68]);
          *(v33 + 32) = v34;
          sub_1C3CBF418(v5, type metadata accessor for BalanceCoordinateInfo.Context);
          return v33;
        }
      }

      if (v62)
      {
        goto LABEL_28;
      }

      sub_1C3CBF418(v5, type metadata accessor for BalanceCoordinateInfo.Context);
      return MEMORY[0x1E69E7CC0];
    }

    if (++v5 >= *(v21 + 16))
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v28 = v27 + 40;
    sub_1C3C4D7A4(v27, v69);
    swift_getAtKeyPath();
    __swift_destroy_boxed_opaque_existential_0(v69);
    v27 = v28;
  }

  while ((v68 & 1) != 0);

  v9 = -v9;
  v20 = -1;
  v29 = v21 + 32;
  v30 = v58;
  do
  {
    if (v9 + v20 == -1)
    {

      sub_1C3CBF418(v30, type metadata accessor for BalanceCoordinateInfo.Context);
      return MEMORY[0x1E69E7CC0];
    }

    if (++v20 >= *(v21 + 16))
    {
      goto LABEL_59;
    }

    v5 = v29 + 40;
    sub_1C3C4D7A4(v29, v69);
    v15 = v71;
    __swift_project_boxed_opaque_existential_0(v69, v70);
    KeyPath = sub_1C3D02260();
    __swift_destroy_boxed_opaque_existential_0(v69);
    v29 = v5;
  }

  while ((KeyPath & 1) == 0);
  sub_1C3CC4F3C(v30, v12, &qword_1EC0862F0, MEMORY[0x1E69A2E68]);
  v31 = v66;
  v32 = v64;
  if ((*(v66 + 48))(v12, 1, v64) == 1)
  {
    sub_1C3CC7AC4(v12, &qword_1EC0862F0, MEMORY[0x1E69A2E68]);
LABEL_44:
    v68 = MEMORY[0x1E69E7CC0];
    sub_1C3C23CBC(0, v17, 0);
    v15 = v68;
    do
    {
      sub_1C3C4D7A4(a1, v69);
      __swift_project_boxed_opaque_existential_0(v69, v70);
      v12 = sub_1C3D1EA44();
      __swift_destroy_boxed_opaque_existential_0(v69);
      v68 = v15;
      v9 = *(v15 + 2);
      v49 = *(v15 + 3);
      v20 = v9 + 1;
      if (v9 >= v49 >> 1)
      {
        sub_1C3C23CBC((v49 > 1), v9 + 1, 1);
        v15 = v68;
      }

      *(v15 + 2) = v20;
      *&v15[8 * v9 + 32] = v12;
      a1 += 40;
      --v17;
    }

    while (v17);

    v50 = *(v15 + 2);
    if (v50)
    {
      v21 = 0;
      v51 = (v15 + 32);
      KeyPath = v57;
      while (1)
      {
        v52 = *v51++;
        v23 = __OFADD__(v21, v52);
        v21 += v52;
        if (v23)
        {
          break;
        }

        if (!--v50)
        {
          goto LABEL_54;
        }
      }

LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v21 = 0;
LABEL_54:

    sub_1C396C48C(0, &qword_1EC080D60);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1C3D5EAE0;
    *(v53 + 32) = sub_1C3CC6630(v21);
    sub_1C3CBF418(v30, type metadata accessor for BalanceCoordinateInfo.Context);
    return v53;
  }

  else
  {
    v35 = v60;
    v36 = (*(v31 + 32))(v60, v12, v32);
    if (!*(v30 + *(v61 + 20)))
    {
      (*(v31 + 8))(v35, v32);
      goto LABEL_44;
    }

    MEMORY[0x1EEE9AC00](v36);
    *(&v56 - 2) = v35;
    v37 = sub_1C3C630FC(sub_1C3CC7D38, (&v56 - 4), v21);

    v38 = *(v37 + 2);
    if (v38)
    {
      v39 = 0;
      v56 = (v67 + 8);
      v62 = (v67 + 32);
      v40 = MEMORY[0x1E69E7CC0];
      v41 = v65;
      v42 = v63;
      v61 = v67 + 16;
      while (v39 < *(v37 + 2))
      {
        v43 = (*(v67 + 80) + 32) & ~*(v67 + 80);
        v44 = *(v67 + 72);
        (*(v67 + 16))(v42, &v37[v43 + v44 * v39], v41);
        if (sub_1C3D1E944())
        {
          v45 = *v62;
          (*v62)(v59, v42, v41);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v69[0] = v40;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C3C23CDC(0, *(v40 + 16) + 1, 1);
            v42 = v63;
            v40 = v69[0];
          }

          v48 = *(v40 + 16);
          v47 = *(v40 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_1C3C23CDC(v47 > 1, v48 + 1, 1);
            v42 = v63;
            v40 = v69[0];
          }

          *(v40 + 16) = v48 + 1;
          v41 = v65;
          result = v45(v40 + v43 + v48 * v44, v59, v65);
          v31 = v66;
        }

        else
        {
          result = (*v56)(v42, v41);
        }

        ++v39;
        v35 = v60;
        if (v38 == v39)
        {
          goto LABEL_56;
        }
      }

      goto LABEL_67;
    }

    v40 = MEMORY[0x1E69E7CC0];
LABEL_56:

    v54 = *(v40 + 16);

    sub_1C396C48C(0, &qword_1EC080D60);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1C3D5EAE0;
    *(v55 + 32) = sub_1C3CC6630(v54);
    sub_1C3CBF418(v58, type metadata accessor for BalanceCoordinateInfo.Context);
    (*(v31 + 8))(v35, v64);
    return v55;
  }
}

uint64_t sub_1C3CC5ADC(unint64_t a1)
{
  v2 = v1;
  v13 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C3D20964())
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C692FEB0](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a1 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v12 = v7;
      sub_1C3CC5C48(&v12, v2, &v11);

      if (v11)
      {
        MEMORY[0x1C692F8F0]();
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C3D202C4();
        }

        sub_1C3D202F4();
        v6 = v13;
      }

      ++v5;
      if (v9 == i)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}