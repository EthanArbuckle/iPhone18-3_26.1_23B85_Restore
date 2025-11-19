uint64_t sub_1E4956E88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81570, &qword_1E49A4BF8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4956EF8(uint64_t a1, void *a2)
{
  v33 = a1;
  v4 = type metadata accessor for City();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v11);
  v31 = (&v31 - v12);
  v32 = v2;
  v13 = *v2;
  v14 = *(*v2 + 40);
  sub_1E499892C();
  v15 = *a2;
  v16 = a2[1];
  sub_1E4997F5C();
  v37 = a2[2];
  sub_1E499849C();
  v35 = v4;
  v17 = *(v4 + 24);
  sub_1E4996F4C();
  sub_1E49571D8(&unk_1ECF809B0, MEMORY[0x1E6969BC0]);
  v36 = a2;
  v34 = v17;
  sub_1E4997E5C();
  v18 = sub_1E499896C();
  v19 = -1 << *(v13 + 32);
  v20 = v18 & ~v19;
  if ((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v21 = ~v19;
    v22 = *(v5 + 72);
    while (1)
    {
      sub_1E4956D64(*(v13 + 48) + v22 * v20, v10);
      v23 = *v10 == v15 && v10[1] == v16;
      if (v23 || (sub_1E499884C() & 1) != 0)
      {
        sub_1E48D9CFC(0, &qword_1ECF80A10, 0x1E69E58C0);
        v24 = v10[2];
        if (sub_1E499848C() & 1) != 0 && (MEMORY[0x1E691A740](v10 + *(v35 + 24), v36 + v34))
        {
          break;
        }
      }

      sub_1E4956E2C(v10);
      v20 = (v20 + 1) & v21;
      if (((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    sub_1E4956E2C(v10);
    sub_1E4956E2C(v36);
    sub_1E4956D64(*(v13 + 48) + v22 * v20, v33);
    return 0;
  }

  else
  {
LABEL_12:
    v26 = v32;
    v27 = *v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v36;
    v30 = v31;
    sub_1E4956D64(v36, v31);
    v38 = *v26;
    sub_1E495790C(v30, v20, isUniquelyReferenced_nonNull_native);
    *v26 = v38;
    sub_1E4956DC8(v29, v33);
    return 1;
  }
}

uint64_t sub_1E49571D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4957220(double *a1, double a2, double a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1E499892C();
  CLLocationCoordinate2D.hash(into:)(a2, a3);
  v9 = sub_1E499896C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      if (*v13 == a2 && v13[1] == a3)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
    a2 = *v13;
    a3 = v13[1];
  }

  else
  {
LABEL_8:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1E4957BF0(v11, isUniquelyReferenced_nonNull_native, a2, a3);
    *v3 = v18;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_1E495733C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for City();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80EB0, &qword_1E49A4C00);
  result = sub_1E499856C();
  v12 = result;
  if (*(v9 + 16))
  {
    v40 = v2;
    v41 = v9;
    v13 = 0;
    v14 = (v9 + 56);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = result + 56;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v9 + 48);
      v25 = *(v42 + 72);
      sub_1E4956DC8(v24 + v25 * (v21 | (v13 << 6)), v8);
      v26 = *(v12 + 40);
      sub_1E499892C();
      v27 = *v8;
      v28 = v8[1];
      sub_1E4997F5C();
      v29 = v8[2];
      sub_1E499849C();
      v30 = *(v43 + 24);
      sub_1E4996F4C();
      sub_1E49571D8(&unk_1ECF809B0, MEMORY[0x1E6969BC0]);
      sub_1E4997E5C();
      result = sub_1E499896C();
      v31 = -1 << *(v12 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v19 + 8 * v33);
          if (v37 != -1)
          {
            v20 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_1E4956DC8(v8, *(v12 + 48) + v20 * v25);
      ++*(v12 + 16);
      v9 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    v38 = 1 << *(v9 + 32);
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    v2 = v40;
    *(v9 + 16) = 0;
  }

  *v2 = v12;
  return result;
}

uint64_t sub_1E495768C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80EE8, &unk_1E49A4C40);
  result = sub_1E499856C();
  v6 = result;
  if (*(v3 + 16))
  {
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
      sub_1E499892C();
      if (v20 == 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = v20;
      }

      MEMORY[0x1E691C170](*&v23);
      if (v21 == 0.0)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = v21;
      }

      MEMORY[0x1E691C170](*&v24);
      result = sub_1E499896C();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_38;
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

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero((v3 + 56), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1E495790C(void *a1, unint64_t a2, char a3)
{
  v34 = a1;
  v33 = type metadata accessor for City();
  v31 = *(v33 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33, v7);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v30 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    sub_1E495733C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1E4957D58();
      goto LABEL_19;
    }

    sub_1E4958080(v10 + 1);
  }

  v12 = *v3;
  v13 = *(*v3 + 40);
  sub_1E499892C();
  v14 = v34;
  v15 = *v34;
  v16 = v34[1];
  sub_1E4997F5C();
  v17 = v14[2];
  sub_1E499849C();
  v18 = *(v33 + 24);
  sub_1E4996F4C();
  sub_1E49571D8(&unk_1ECF809B0, MEMORY[0x1E6969BC0]);
  v32 = v18;
  sub_1E4997E5C();
  v19 = sub_1E499896C();
  v20 = -1 << *(v12 + 32);
  a2 = v19 & ~v20;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v21 = ~v20;
    v22 = *(v31 + 72);
    while (1)
    {
      sub_1E4956D64(*(v12 + 48) + v22 * a2, v9);
      v23 = *v9 == v15 && v9[1] == v16;
      if (v23 || (sub_1E499884C() & 1) != 0)
      {
        sub_1E48D9CFC(0, &qword_1ECF80A10, 0x1E69E58C0);
        v24 = v9[2];
        if (sub_1E499848C() & 1) != 0 && (MEMORY[0x1E691A740](v9 + *(v33 + 24), v34 + v32))
        {
          break;
        }
      }

      sub_1E4956E2C(v9);
      a2 = (a2 + 1) & v21;
      if (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    sub_1E4956E2C(v9);
    sub_1E499886C();
    __break(1u);
  }

LABEL_19:
  v25 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1E4956DC8(v34, *(v25 + 48) + *(v31 + 72) * a2);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }

  return result;
}

unint64_t sub_1E4957BF0(unint64_t result, char a2, double a3, double a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a2 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a2)
  {
    sub_1E495768C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = result;
      sub_1E4957F3C();
      result = v9;
      goto LABEL_15;
    }

    sub_1E4958418(v7 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1E499892C();
  CLLocationCoordinate2D.hash(into:)(a3, a4);
  v12 = sub_1E499896C();
  v13 = -1 << *(v10 + 32);
  result = v12 & ~v13;
  if ((*(v10 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v14 = ~v13;
    do
    {
      v15 = (*(v10 + 48) + 16 * result);
      if (*v15 == a3 && v15[1] == a4)
      {
        goto LABEL_18;
      }

      result = (result + 1) & v14;
    }

    while (((*(v10 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

LABEL_15:
  v17 = *v4;
  *(*v4 + 8 * (result >> 6) + 56) |= 1 << result;
  v18 = (*(v17 + 48) + 16 * result);
  *v18 = a3;
  v18[1] = a4;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v17 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_18:
  type metadata accessor for CLLocationCoordinate2D(0);
  result = sub_1E499886C();
  __break(1u);
  return result;
}

void *sub_1E4957D58()
{
  v1 = v0;
  v2 = type metadata accessor for City();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80EB0, &qword_1E49A4C00);
  v8 = *v0;
  v9 = sub_1E499855C();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 56);
    v12 = v8 + 56;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 56), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 56);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = *(v3 + 72) * (v20 | (v14 << 6));
        sub_1E4956D64(*(v8 + 48) + v23, v7);
        result = sub_1E4956DC8(v7, *(v10 + 48) + v23);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {
        goto LABEL_16;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v10;
  }

  return result;
}

void *sub_1E4957F3C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80EE8, &unk_1E49A4C40);
  v2 = *v0;
  v3 = sub_1E499855C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_1E4958080(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for City();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80EB0, &qword_1E49A4C00);
  result = sub_1E499856C();
  v12 = result;
  if (*(v9 + 16))
  {
    v39 = v2;
    v40 = v9;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = result + 56;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v9 + 48);
      v25 = *(v41 + 72);
      sub_1E4956D64(v24 + v25 * (v21 | (v13 << 6)), v8);
      v26 = *(v12 + 40);
      sub_1E499892C();
      v27 = *v8;
      v28 = v8[1];
      sub_1E4997F5C();
      v29 = v8[2];
      sub_1E499849C();
      v30 = *(v42 + 24);
      sub_1E4996F4C();
      sub_1E49571D8(&unk_1ECF809B0, MEMORY[0x1E6969BC0]);
      sub_1E4997E5C();
      result = sub_1E499896C();
      v31 = -1 << *(v12 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v19 + 8 * v33);
          if (v37 != -1)
          {
            v20 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_1E4956DC8(v8, *(v12 + 48) + v20 * v25);
      ++*(v12 + 16);
      v9 = v40;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v39;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
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
    *v2 = v12;
  }

  return result;
}

uint64_t sub_1E49583A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80EC0, &unk_1E49A4C10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4958418(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80EE8, &unk_1E49A4C40);
  result = sub_1E499856C();
  v6 = result;
  if (*(v3 + 16))
  {
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
      sub_1E499892C();
      if (v19 == 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v19;
      }

      MEMORY[0x1E691C170](*&v22);
      if (v20 == 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = v20;
      }

      MEMORY[0x1E691C170](*&v23);
      result = sub_1E499896C();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_34;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_32;
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
LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_32:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1E495865C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F30, &unk_1E49A4D40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v30 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    sub_1E48C12D0(a1, v6, &qword_1ECF80F30, &unk_1E49A4D40);
    v18 = type metadata accessor for SystemOverrideClockData();
    if ((*(*(v18 - 8) + 48))(v6, 1, v18) == 1)
    {
      sub_1E48C1338(v6, &qword_1ECF80F30, &unk_1E49A4D40);
      v19 = sub_1E4996D8C();
      (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
    }

    else
    {
      v20 = sub_1E4996D8C();
      v21 = *(v20 - 8);
      (*(v21 + 16))(v15, v6, v20);
      sub_1E495F350(v6);
      (*(v21 + 56))(v15, 0, 1, v20);
    }

    sub_1E4958FD8(v15);
    v22 = *(v17 + 32);
    v23 = *(v17 + 40);
    v24 = v23[2];
    swift_beginAccess();

    os_unfair_lock_lock(v24 + 4);
    swift_endAccess();
    v25 = *(*v23 + 96);
    swift_beginAccess();
    sub_1E48C12D0(v23 + v25, v12, &qword_1ECF809D0, &qword_1E499D6C0);
    v26 = v23[2];
    swift_beginAccess();
    os_unfair_lock_unlock(v26 + 4);
    swift_endAccess();

    v27 = *(*v22 + 104);
    v28 = *(v22 + v27);
    swift_beginAccess();
    os_unfair_lock_lock(v28 + 4);
    swift_endAccess();
    sub_1E4974E44(v12);
    v29 = *(v22 + v27);
    swift_beginAccess();
    os_unfair_lock_unlock(v29 + 4);
    swift_endAccess();
    sub_1E48C1338(v12, &qword_1ECF809D0, &qword_1E499D6C0);
  }

  return result;
}

uint64_t sub_1E4958A10@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A50, &unk_1E49A3A00);
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v55 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A58, &unk_1E49A4D50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v58 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v50 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF80A60, &unk_1E49A3A10);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v50 - v25;
  v27 = *(v1 + 32);
  v28 = *(*v27 + 104);
  v29 = *(v27 + v28);
  swift_beginAccess();
  os_unfair_lock_lock(v29 + 4);
  swift_endAccess();
  v30 = *(*v27 + 120);
  v31 = *(v27 + v30);
  if ((v31 & 1) == 0)
  {
    *(v27 + v30) = 1;
  }

  v32 = v28;
  v33 = *(v27 + v28);
  swift_beginAccess();
  os_unfair_lock_unlock(v33 + 4);
  swift_endAccess();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v35 = *(*(v34 - 8) + 56);
  v59 = v34;
  v35(v26, 1, 1);
  if ((v31 & 1) == 0)
  {
    v36 = *(v1 + 40);
    v37 = v36[2];
    swift_beginAccess();

    os_unfair_lock_lock(v37 + 4);
    swift_endAccess();
    v38 = *(*v36 + 96);
    swift_beginAccess();
    sub_1E48C12D0(v36 + v38, v22, &qword_1ECF809D0, &qword_1E499D6C0);
    v39 = v36[2];
    swift_beginAccess();
    os_unfair_lock_unlock(v39 + 4);
    swift_endAccess();

    (v35)(v22, 0, 1, v59);
    sub_1E48EC0CC(v22, v26, &unk_1ECF80A60, &unk_1E49A3A10);
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6B8, &qword_1E49A4D60);
  v41 = *(v40 - 8);
  v42 = v41;
  v53 = *(v41 + 56);
  v54 = v41 + 56;
  v53(v17, 1, 1, v40);
  v43 = *(v27 + v32);
  swift_beginAccess();
  os_unfair_lock_lock(v43 + 4);
  v44 = swift_endAccess();
  v46 = MEMORY[0x1EEE9AC00](v44, v45);
  *(&v50 - 2) = v27;
  *(&v50 - 1) = v26;
  v51 = v26;
  (*(v56 + 104))(v55, *MEMORY[0x1E69E8650], v57, v46);
  sub_1E49981BC();
  sub_1E48C1338(v17, &qword_1ECF80A58, &unk_1E49A4D50);
  v53(v13, 0, 1, v40);
  sub_1E495F178(v13, v17);
  v47 = *(v27 + v32);
  swift_beginAccess();
  os_unfair_lock_unlock(v47 + 4);
  swift_endAccess();
  v48 = v58;
  sub_1E48C12D0(v17, v58, &qword_1ECF80A58, &unk_1E49A4D50);
  result = (*(v42 + 48))(v48, 1, v40);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1E48C1338(v17, &qword_1ECF80A58, &unk_1E49A4D50);
    (*(v42 + 32))(v52, v48, v40);
    return sub_1E48C1338(v51, &unk_1ECF80A60, &unk_1E49A3A10);
  }

  return result;
}

uint64_t sub_1E4958FD8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v17 - v10;
  v12 = *(v1 + 40);
  sub_1E48C12D0(a1, &v17 - v10, &qword_1ECF809D0, &qword_1E499D6C0);
  v13 = v12[2];
  swift_beginAccess();

  os_unfair_lock_lock(v13 + 4);
  swift_endAccess();
  sub_1E48C12D0(v11, v8, &qword_1ECF809D0, &qword_1E499D6C0);
  v14 = *(*v12 + 96);
  swift_beginAccess();
  sub_1E48EC0CC(v8, v12 + v14, &qword_1ECF809D0, &qword_1E499D6C0);
  swift_endAccess();
  v15 = v12[2];
  swift_beginAccess();
  os_unfair_lock_unlock(v15 + 4);
  swift_endAccess();
  sub_1E48C1338(a1, &qword_1ECF809D0, &qword_1E499D6C0);
  sub_1E48C1338(v11, &qword_1ECF809D0, &qword_1E499D6C0);
}

uint64_t sub_1E4959180()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_1E4959200@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unsigned int (*a5)(char *, uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v294 = a6;
  v298 = a5;
  v313 = a4;
  v305 = a3;
  v318 = a2;
  v310 = a1;
  v295 = a8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v291 = &v269 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F00, &qword_1E49A4D28);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v304 = &v269 - v16;
  v311 = sub_1E49969CC();
  v301 = *(v311 - 8);
  v17 = *(v301 + 64);
  v19 = MEMORY[0x1EEE9AC00](v311, v18);
  v279 = &v269 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v278 = &v269 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v309 = &v269 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v314 = &v269 - v29;
  MEMORY[0x1EEE9AC00](v28, v30);
  v317 = &v269 - v31;
  v303 = sub_1E4996F4C();
  v319 = *(v303 - 8);
  v32 = v319[8];
  MEMORY[0x1EEE9AC00](v303, v33);
  v289 = &v269 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v288 = sub_1E4996E3C();
  v287 = *(v288 - 1);
  v35 = v287[8];
  MEMORY[0x1EEE9AC00](v288, v36);
  v286 = &v269 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v308 = sub_1E4996EDC();
  v307 = *(v308 - 8);
  v38 = *(v307 + 64);
  MEMORY[0x1EEE9AC00](v308, v39);
  v320 = &v269 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v42 = *(*(v41 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v41 - 8, v43);
  v274 = &v269 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v44, v46);
  v292 = &v269 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47, v49);
  v277 = &v269 - v51;
  MEMORY[0x1EEE9AC00](v50, v52);
  v272 = &v269 - v53;
  v312 = sub_1E499708C();
  v302 = *(v312 - 8);
  v54 = *(v302 + 64);
  v56 = MEMORY[0x1EEE9AC00](v312, v55);
  v275 = &v269 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v56, v58);
  v299 = &v269 - v60;
  v62 = MEMORY[0x1EEE9AC00](v59, v61);
  v281 = &v269 - v63;
  MEMORY[0x1EEE9AC00](v62, v64);
  v276 = &v269 - v65;
  v66 = sub_1E4996D8C();
  v67 = *(v66 - 8);
  v68 = v67[8];
  v70 = MEMORY[0x1EEE9AC00](v66, v69);
  v293 = &v269 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x1EEE9AC00](v70, v72);
  v300 = &v269 - v74;
  v76 = MEMORY[0x1EEE9AC00](v73, v75);
  v315 = &v269 - v77;
  v79 = MEMORY[0x1EEE9AC00](v76, v78);
  v284 = (&v269 - v80);
  v82 = MEMORY[0x1EEE9AC00](v79, v81);
  v273 = &v269 - v83;
  v85 = MEMORY[0x1EEE9AC00](v82, v84);
  v271 = &v269 - v86;
  v88 = MEMORY[0x1EEE9AC00](v85, v87);
  v90 = &v269 - v89;
  v92 = MEMORY[0x1EEE9AC00](v88, v91);
  v280 = &v269 - v93;
  MEMORY[0x1EEE9AC00](v92, v94);
  v316 = &v269 - v95;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v97 = *(*(v96 - 8) + 64);
  v99 = MEMORY[0x1EEE9AC00](v96 - 8, v98);
  v290 = &v269 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = MEMORY[0x1EEE9AC00](v99, v101);
  v306 = &v269 - v103;
  v105 = MEMORY[0x1EEE9AC00](v102, v104);
  *&v285 = &v269 - v106;
  v108 = MEMORY[0x1EEE9AC00](v105, v107);
  v283 = &v269 - v109;
  v111 = MEMORY[0x1EEE9AC00](v108, v110);
  v113 = &v269 - v112;
  v115 = MEMORY[0x1EEE9AC00](v111, v114);
  v282 = &v269 - v116;
  v118 = MEMORY[0x1EEE9AC00](v115, v117);
  v120 = &v269 - v119;
  v122 = MEMORY[0x1EEE9AC00](v118, v121);
  v124 = &v269 - v123;
  v126 = MEMORY[0x1EEE9AC00](v122, v125);
  v128 = &v269 - v127;
  v130 = MEMORY[0x1EEE9AC00](v126, v129);
  v132 = &v269 - v131;
  MEMORY[0x1EEE9AC00](v130, v133);
  v135 = &v269 - v134;
  sub_1E495B49C(v298, v294, a7, &v269 - v134);
  sub_1E495C234(v305, v313, a7, v132);
  v313 = v128;
  v305 = a7;
  sub_1E495C234(v310, v318, a7, v128);
  v318 = v67;
  v136 = v67[6];
  v310 = v135;
  v137 = v135;
  v138 = (v67 + 6);
  v139 = v136;
  if (v136(v137, 1, v66) == 1 && v139(v132, 1, v66) == 1 && v139(v313, 1, v66) == 1)
  {
    v140 = v66;
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v141 = qword_1EE2BB458;
    v142 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    v143 = v274;
    sub_1E48C12D0(v141 + v142, v274, &qword_1ECF7F008, &qword_1E499B170);
    v144 = v302;
    v145 = *(v302 + 48);
    v146 = v312;
    if (v145(v143, 1, v312) == 1)
    {
      v147 = v275;
      sub_1E4904BF4(v275);
      if (v145(v143, 1, v146) != 1)
      {
        sub_1E48C1338(v143, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      v246 = *(v144 + 32);
      v147 = v275;
      v246(v275, v143, v146);
    }

    v247 = sub_1E499706C();
    v248 = sub_1E49982EC();
    if (os_log_type_enabled(v247, v248))
    {
      v249 = swift_slowAlloc();
      *v249 = 0;
      _os_log_impl(&dword_1E48B0000, v247, v248, "Status bar overrides for all time & date entries are nil. Not using override time.", v249, 2u);
      MEMORY[0x1E691CED0](v249, -1, -1);
    }

    (*(v302 + 8))(v147, v312);
    sub_1E48C1338(v310, &qword_1ECF809D0, &qword_1E499D6C0);
    v235 = 1;
    v234 = v295;
    v194 = v318;
    goto LABEL_51;
  }

  sub_1E48C12D0(v132, v124, &qword_1ECF809D0, &qword_1E499D6C0);
  v148 = v139(v124, 1, v66);
  v298 = v139;
  v296 = v132;
  v294 = v138;
  if (v148 == 1)
  {
    sub_1E48C1338(v124, &qword_1ECF809D0, &qword_1E499D6C0);
    v149 = v66;
    v150 = v318;
  }

  else
  {
    v270 = v90;
    v151 = v139;
    v152 = v318;
    v153 = v318[4];
    v154 = v280;
    v153(v280, v124, v66);
    sub_1E48C12D0(v313, v120, &qword_1ECF809D0, &qword_1E499D6C0);
    v149 = v66;
    if (v151(v120, 1, v66) == 1)
    {
      (v152[1])(v154, v66);
      sub_1E48C1338(v120, &qword_1ECF809D0, &qword_1E499D6C0);
      v150 = v152;
    }

    else
    {
      v155 = v270;
      v153(v270, v120, v66);
      sub_1E495F110(&qword_1ECF7F440, MEMORY[0x1E6969530]);
      if ((sub_1E4997E9C() & 1) == 0)
      {
        v284 = v153;
        v237 = v318[2];
        v237(v316, v154, v66);
        if (qword_1EE2BB450 != -1)
        {
          swift_once();
        }

        v238 = qword_1EE2BB458;
        v239 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
        swift_beginAccess();
        v240 = v272;
        sub_1E48C12D0(v238 + v239, v272, &qword_1ECF7F008, &qword_1E499B170);
        v241 = v302;
        v242 = *(v302 + 48);
        v243 = v312;
        v244 = v242(v240, 1, v312);
        v245 = v276;
        if (v244 == 1)
        {
          sub_1E4904BF4(v276);
          if (v242(v240, 1, v243) != 1)
          {
            sub_1E48C1338(v240, &qword_1ECF7F008, &qword_1E499B170);
          }
        }

        else
        {
          (*(v241 + 32))(v276, v240, v243);
        }

        v250 = v271;
        v251 = v280;
        v237(v271, v280, v149);
        v252 = v273;
        v253 = v270;
        v237(v273, v270, v149);
        v254 = sub_1E499706C();
        v255 = sub_1E499830C();
        if (os_log_type_enabled(v254, v255))
        {
          v256 = swift_slowAlloc();
          v283 = swift_slowAlloc();
          v323 = v283;
          *v256 = 136446466;
          sub_1E495F110(&qword_1ECF7F8F0, MEMORY[0x1E6969530]);
          LODWORD(v282) = v255;
          v257 = sub_1E49987FC();
          v259 = v258;
          v260 = v250;
          v261 = v318[1];
          v261(v260, v149);
          v262 = sub_1E48CA094(v257, v259, &v323);

          *(v256 + 4) = v262;
          *(v256 + 12) = 2082;
          v263 = sub_1E49987FC();
          v265 = v264;
          v261(v252, v149);
          v266 = sub_1E48CA094(v263, v265, &v323);

          *(v256 + 14) = v266;
          _os_log_impl(&dword_1E48B0000, v254, v282, "Status bar overrides for timeEntry and shortTimeEntry are both set and do not match.\nChoosing timeEntry.\ntimeEntry=%{public}s\nshortTimeEntry=%{public}s'", v256, 0x16u);
          v267 = v283;
          swift_arrayDestroy();
          MEMORY[0x1E691CED0](v267, -1, -1);
          MEMORY[0x1E691CED0](v256, -1, -1);

          (*(v302 + 8))(v276, v312);
          v261(v270, v149);
          v261(v280, v149);
        }

        else
        {

          v268 = v318[1];
          v268(v252, v149);
          v268(v250, v149);
          (*(v302 + 8))(v245, v312);
          v268(v253, v149);
          v268(v251, v149);
        }

        v139 = v298;
        v158 = v285;
        v162 = v284;
        goto LABEL_25;
      }

      v150 = v318;
      v156 = v318[1];
      v156(v155, v66);
      v156(v154, v66);
    }

    v132 = v296;
    v139 = v298;
  }

  sub_1E48C12D0(v132, v113, &qword_1ECF809D0, &qword_1E499D6C0);
  v157 = v139(v113, 1, v149);
  v158 = v285;
  v159 = v284;
  v160 = v283;
  v161 = v282;
  if (v157 == 1)
  {
    sub_1E48C12D0(v313, v282, &qword_1ECF809D0, &qword_1E499D6C0);
    if (v139(v113, 1, v149) != 1)
    {
      sub_1E48C1338(v113, &qword_1ECF809D0, &qword_1E499D6C0);
    }
  }

  else
  {
    (v150[4])(v282, v113, v149);
    (v150[7])(v161, 0, 1, v149);
  }

  sub_1E48C12D0(v161, v160, &qword_1ECF809D0, &qword_1E499D6C0);
  if (v139(v160, 1, v149) == 1)
  {
    sub_1E4996D4C();
    sub_1E48C1338(v161, &qword_1ECF809D0, &qword_1E499D6C0);
    if (v139(v160, 1, v149) != 1)
    {
      sub_1E48C1338(v160, &qword_1ECF809D0, &qword_1E499D6C0);
    }
  }

  else
  {
    sub_1E48C1338(v161, &qword_1ECF809D0, &qword_1E499D6C0);
    (v150[4])(v159, v160, v149);
  }

  v162 = v150[4];
  v162(v316, v159, v149);
LABEL_25:
  sub_1E48C12D0(v310, v158, &qword_1ECF809D0, &qword_1E499D6C0);
  v163 = v139(v158, 1, v149);
  v297 = v149;
  if (v163 == 1)
  {
    sub_1E4996D4C();
    if (v139(v158, 1, v149) != 1)
    {
      sub_1E48C1338(v158, &qword_1ECF809D0, &qword_1E499D6C0);
    }
  }

  else
  {
    v162(v315, v158, v149);
  }

  v164 = v287;
  v165 = v286;
  v166 = v288;
  (v287[13])(v286, *MEMORY[0x1E6969868], v288);
  sub_1E4996E4C();
  (v164[1])(v165, v166);
  v167 = v319[2];
  v287 = v319 + 2;
  v288 = v167;
  (v167)(v289, v305, v303);
  sub_1E4996EBC();
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F08, &unk_1E49A5E20);
  v168 = sub_1E4996ECC();
  v169 = *(v168 - 8);
  v170 = *(v169 + 72);
  v171 = (*(v169 + 80) + 32) & ~*(v169 + 80);
  v286 = 3 * v170;
  v172 = swift_allocObject();
  v285 = xmmword_1E499E4C0;
  *(v172 + 16) = xmmword_1E499E4C0;
  v173 = *(v169 + 104);
  v173(v172 + v171, *MEMORY[0x1E6969A68], v168);
  v173(v172 + v171 + v170, *MEMORY[0x1E6969A78], v168);
  v173(v172 + v171 + 2 * v170, *MEMORY[0x1E6969A48], v168);
  sub_1E495EDF0(v172);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1E4996E6C();

  v174 = swift_allocObject();
  *(v174 + 16) = v285;
  v173(v174 + v171, *MEMORY[0x1E6969A58], v168);
  v173(v174 + v171 + v170, *MEMORY[0x1E6969A88], v168);
  v173(v174 + v171 + 2 * v170, *MEMORY[0x1E6969A98], v168);
  sub_1E495EDF0(v174);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1E4996E6C();

  (*(v307 + 56))(v304, 1, 1, v308);
  v175 = v319[7];
  v319 += 7;
  v289 = v175;
  v176 = v291;
  v177 = v303;
  (v175)(v291, 1, 1, v303);
  v286 = sub_1E499693C();
  LODWORD(v284) = v178;
  *&v285 = sub_1E499694C();
  LODWORD(v283) = v179;
  v282 = sub_1E49968FC();
  sub_1E499691C();
  sub_1E499696C();
  sub_1E499698C();
  sub_1E49969AC();
  (v288)(v176, v305, v177);
  (v289)(v176, 0, 1, v177);
  sub_1E49969BC();
  v180 = v306;
  sub_1E4996E8C();
  v181 = v180;
  v182 = v290;
  sub_1E48C12D0(v181, v290, &qword_1ECF809D0, &qword_1E499D6C0);
  v140 = v297;
  if (v298(v182, 1, v297) == 1)
  {
    sub_1E48C1338(v182, &qword_1ECF809D0, &qword_1E499D6C0);
    v183 = v301;
    v184 = v312;
    v185 = v302;
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v186 = qword_1EE2BB458;
    v187 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    v188 = v277;
    sub_1E48C12D0(v186 + v187, v277, &qword_1ECF7F008, &qword_1E499B170);
    v189 = *(v185 + 48);
    v190 = v189(v188, 1, v184);
    v191 = v279;
    v192 = v278;
    v193 = v281;
    if (v190 == 1)
    {
      sub_1E4904BF4(v281);
      if (v189(v188, 1, v184) != 1)
      {
        sub_1E48C1338(v188, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      (*(v185 + 32))(v281, v188, v184);
    }

    v198 = *(v183 + 16);
    v199 = v311;
    v198(v192, v317, v311);
    v198(v191, v314, v199);
    v200 = sub_1E499706C();
    v201 = sub_1E499830C();
    if (os_log_type_enabled(v200, v201))
    {
      v202 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      v322 = v203;
      *v202 = 136446466;
      sub_1E495F110(&qword_1ECF80F10, MEMORY[0x1E6968278]);
      v204 = sub_1E49987FC();
      v206 = v205;
      v207 = *(v183 + 8);
      v207(v192, v311);
      v208 = sub_1E48CA094(v204, v206, &v322);
      v185 = v302;

      *(v202 + 4) = v208;
      *(v202 + 12) = 2082;
      v209 = sub_1E49987FC();
      v211 = v210;
      v207(v191, v311);
      v212 = sub_1E48CA094(v209, v211, &v322);

      *(v202 + 14) = v212;
      _os_log_impl(&dword_1E48B0000, v200, v201, "Cannot combine date components.\nChoosing hours and minutes.\nday,month,year=%{public}s\nhour,minute=%{public}s'", v202, 0x16u);
      swift_arrayDestroy();
      v213 = v203;
      v184 = v312;
      MEMORY[0x1E691CED0](v213, -1, -1);
      MEMORY[0x1E691CED0](v202, -1, -1);

      (*(v185 + 8))(v281, v184);
    }

    else
    {

      v214 = *(v183 + 8);
      v214(v191, v199);
      v214(v192, v199);
      (*(v185 + 8))(v193, v184);
    }

    v194 = v318;
    v196 = v299;
    v197 = v292;
    v195 = v300;
    v140 = v297;
    (v318[2])(v300, v316, v297);
  }

  else
  {
    v194 = v318;
    v195 = v300;
    (v318[4])(v300, v182, v140);
    v184 = v312;
    v185 = v302;
    v196 = v299;
    v197 = v292;
  }

  if (qword_1EE2BB450 != -1)
  {
    swift_once();
  }

  v215 = qword_1EE2BB458;
  v216 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
  swift_beginAccess();
  sub_1E48C12D0(v215 + v216, v197, &qword_1ECF7F008, &qword_1E499B170);
  v217 = *(v185 + 48);
  if (v217(v197, 1, v184) == 1)
  {
    sub_1E4904BF4(v196);
    if (v217(v197, 1, v184) != 1)
    {
      sub_1E48C1338(v197, &qword_1ECF7F008, &qword_1E499B170);
    }
  }

  else
  {
    (*(v185 + 32))(v196, v197, v184);
  }

  v218 = v293;
  (v194[2])(v293, v195, v140);
  v219 = sub_1E499706C();
  v220 = sub_1E49982EC();
  if (os_log_type_enabled(v219, v220))
  {
    v221 = swift_slowAlloc();
    v222 = swift_slowAlloc();
    v321 = v222;
    *v221 = 136446210;
    sub_1E495F110(&qword_1ECF7F8F0, MEMORY[0x1E6969530]);
    v223 = sub_1E49987FC();
    v224 = v218;
    v226 = v225;
    v227 = v318[1];
    v227(v224, v140);
    v228 = sub_1E48CA094(v223, v226, &v321);

    *(v221 + 4) = v228;
    _os_log_impl(&dword_1E48B0000, v219, v220, "Status bar override date set: %{public}s", v221, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v222);
    MEMORY[0x1E691CED0](v222, -1, -1);
    MEMORY[0x1E691CED0](v221, -1, -1);

    (*(v185 + 8))(v299, v312);
    sub_1E48C1338(v306, &qword_1ECF809D0, &qword_1E499D6C0);
    v229 = *(v301 + 8);
    v230 = v311;
    v229(v309, v311);
    v229(v314, v230);
    v229(v317, v230);
    (*(v307 + 8))(v320, v308);
    v227(v315, v140);
    v227(v316, v140);
    v195 = v300;
    v194 = v318;
  }

  else
  {

    v231 = v194[1];
    v231(v218, v140);
    (*(v185 + 8))(v196, v184);
    sub_1E48C1338(v306, &qword_1ECF809D0, &qword_1E499D6C0);
    v232 = *(v301 + 8);
    v233 = v311;
    v232(v309, v311);
    v232(v314, v233);
    v232(v317, v233);
    (*(v307 + 8))(v320, v308);
    v231(v315, v140);
    v231(v316, v140);
  }

  sub_1E48C1338(v310, &qword_1ECF809D0, &qword_1E499D6C0);
  v234 = v295;
  (v194[4])(v295, v195, v140);
  v235 = 0;
  v132 = v296;
LABEL_51:
  (v194[7])(v234, v235, 1, v140);
  sub_1E48C1338(v313, &qword_1ECF809D0, &qword_1E499D6C0);
  return sub_1E48C1338(v132, &qword_1ECF809D0, &qword_1E499D6C0);
}

uint64_t sub_1E495B49C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v139 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v137 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v124 = &v117 - v13;
  v14 = sub_1E499708C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v125 = &v117 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8, v25);
  v138 = &v117 - v26;
  v27 = sub_1E4996F4C();
  v135 = *(v27 - 8);
  v136 = v27;
  v28 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v27, v29);
  v134 = &v117 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1E4996E3C();
  v132 = *(v31 - 8);
  v133 = v31;
  v32 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v31, v33);
  v131 = &v117 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1E4996EDC();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35, v38);
  v40 = &v117 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8, v43);
  v130 = &v117 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F00, &qword_1E49A4D28);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8, v47);
  v49 = &v117 - v48;
  v50 = sub_1E49969CC();
  v51 = *(*(v50 - 8) + 64);
  v53 = MEMORY[0x1EEE9AC00](v50, v52);
  v56 = &v117 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v120 = v20;
    v121 = v56;
    v118 = v54;
    v119 = v53;
    v122 = v40;
    v123 = v36;
    v128 = v14;
    v129 = v35;
    v126 = v15;
    v127 = a4;
    v140 = a1;
    v141 = a2;
    v142 = 47;
    v143 = 0xE100000000000000;
    sub_1E48D2EE4();
    v57 = sub_1E49984DC();
    v58 = v57;
    v59 = *(v57 + 16);
    if (v59)
    {
      v60 = 0;
      v61 = (v57 + 40);
      v62 = MEMORY[0x1E69E7CC0];
      while (v60 < *(v58 + 16))
      {
        v63 = *v61;
        v140 = *(v61 - 1);
        v141 = v63;
        sub_1E495C830(&v140, &v142);
        if ((v143 & 1) == 0)
        {
          v35 = v142;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v62 = sub_1E4905F5C(0, *(v62 + 2) + 1, 1, v62);
          }

          v65 = *(v62 + 2);
          v64 = *(v62 + 3);
          if (v65 >= v64 >> 1)
          {
            v62 = sub_1E4905F5C((v64 > 1), v65 + 1, 1, v62);
          }

          *(v62 + 2) = v65 + 1;
          *&v62[8 * v65 + 32] = v35;
        }

        ++v60;
        v61 += 2;
        if (v59 == v60)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
      v62 = MEMORY[0x1E69E7CC0];
LABEL_16:
      if (*(v62 + 2) == 3)
      {
        v70 = *(v62 + 4);
        v69 = *(v62 + 5);
        v71 = *(v62 + 6);

        v72 = v123;
        (*(v123 + 56))(v49, 1, 1, v129);
        v74 = v135;
        v73 = v136;
        (*(v135 + 56))(v130, 1, 1, v136);
        v75 = v121;
        sub_1E49969AC();
        v77 = v131;
        v76 = v132;
        v78 = v133;
        (*(v132 + 104))(v131, *MEMORY[0x1E6969868], v133);
        v79 = v122;
        sub_1E4996E4C();
        (*(v76 + 8))(v77, v78);
        (*(v74 + 16))(v134, v139, v73);
        sub_1E4996EBC();
        v80 = v138;
        sub_1E4996E8C();
        v81 = sub_1E4996D8C();
        v82 = *(v81 - 8);
        v83 = (*(v82 + 48))(v80, 1, v81);
        v84 = v128;
        if (v83 == 1)
        {
          sub_1E48C1338(v80, &qword_1ECF809D0, &qword_1E499D6C0);
          if (qword_1EE2BB450 != -1)
          {
            swift_once();
          }

          v85 = qword_1EE2BB458;
          v86 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
          swift_beginAccess();
          v87 = v124;
          sub_1E48C12D0(v85 + v86, v124, &qword_1ECF7F008, &qword_1E499B170);
          v88 = v126;
          v89 = *(v126 + 48);
          if (v89(v87, 1, v84) == 1)
          {
            v90 = v125;
            sub_1E4904BF4(v125);
            if (v89(v87, 1, v84) != 1)
            {
              sub_1E48C1338(v87, &qword_1ECF7F008, &qword_1E499B170);
            }
          }

          else
          {
            v108 = *(v88 + 32);
            v90 = v125;
            v108(v125, v87, v84);
          }

          v109 = sub_1E499706C();
          v110 = sub_1E499830C();

          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            v112 = swift_slowAlloc();
            v142 = v112;
            *v111 = 136446210;
            v113 = MEMORY[0x1E691B8E0](v58, MEMORY[0x1E69E6158]);
            v115 = v114;

            v116 = sub_1E48CA094(v113, v115, &v142);

            *(v111 + 4) = v116;
            _os_log_impl(&dword_1E48B0000, v109, v110, "Cannot convert date components ints to date. Components: '%{public}s'", v111, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v112);
            MEMORY[0x1E691CED0](v112, -1, -1);
            MEMORY[0x1E691CED0](v111, -1, -1);

            (*(v126 + 8))(v125, v84);
          }

          else
          {

            (*(v126 + 8))(v90, v84);
          }

          (*(v123 + 8))(v122, v129);
          (*(v118 + 8))(v121, v119);
          return (*(v82 + 56))(v127, 1, 1, v81);
        }

        else
        {

          (*(v72 + 8))(v79, v129);
          (*(v118 + 8))(v75, v119);
          v98 = v127;
          (*(v82 + 32))(v127, v80, v81);
          return (*(v82 + 56))(v98, 0, 1, v81);
        }
      }

      v35 = v128;
      if (qword_1EE2BB450 == -1)
      {
        goto LABEL_24;
      }
    }

    swift_once();
LABEL_24:
    v91 = qword_1EE2BB458;
    v92 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    v93 = v137;
    sub_1E48C12D0(v91 + v92, v137, &qword_1ECF7F008, &qword_1E499B170);
    v94 = v126;
    v95 = *(v126 + 48);
    v96 = v95(v93, 1, v35);
    v97 = v120;
    if (v96 == 1)
    {
      sub_1E4904BF4(v120);
      if (v95(v93, 1, v35) != 1)
      {
        sub_1E48C1338(v93, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      (*(v94 + 32))(v120, v93, v35);
    }

    v99 = sub_1E499706C();
    v100 = sub_1E499830C();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v142 = v102;
      *v101 = 136446210;
      v103 = MEMORY[0x1E691B8E0](v58, MEMORY[0x1E69E6158]);
      v105 = v104;

      v106 = sub_1E48CA094(v103, v105, &v142);

      *(v101 + 4) = v106;
      _os_log_impl(&dword_1E48B0000, v99, v100, "Expected 3 date components, not '%{public}s'", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v102);
      MEMORY[0x1E691CED0](v102, -1, -1);
      MEMORY[0x1E691CED0](v101, -1, -1);
    }

    else
    {
    }

    (*(v94 + 8))(v97, v35);
    v107 = sub_1E4996D8C();
    return (*(*(v107 - 8) + 56))(v127, 1, 1, v107);
  }

  v66 = sub_1E4996D8C();
  v67 = *(*(v66 - 8) + 56);

  return v67(a4, 1, 1, v66);
}

uint64_t sub_1E495C234@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v49 - v11;
  v13 = sub_1E499708C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v23 = &v49 - v22;
  if (a2)
  {
    v50 = v12;
    v51 = v18;
    v52 = v14;
    v53 = v13;
    v25 = *aHMmA;
    v24 = unk_1F5E82600;

    sub_1E495CE20(a1, a2, v25, v24, a3, v23);

    v26 = sub_1E4996D8C();
    v27 = *(v26 - 8);
    v28 = *(v27 + 48);
    if (v28(v23, 1, v26) != 1)
    {
      goto LABEL_10;
    }

    sub_1E48C1338(v23, &qword_1ECF809D0, &qword_1E499D6C0);
    v54 = a4;
    v29 = *aHhMm;
    v30 = unk_1F5E82610;

    v31 = v29;
    a4 = v54;
    sub_1E495CE20(a1, a2, v31, v30, a3, v23);

    if (v28(v23, 1, v26) != 1)
    {
      goto LABEL_10;
    }

    sub_1E48C1338(v23, &qword_1ECF809D0, &qword_1E499D6C0);
    v33 = aHhMmSs[0];
    v32 = aHhMmSs[1];

    sub_1E495CE20(a1, a2, v33, v32, a3, v23);
    a4 = v54;

    if (v28(v23, 1, v26) == 1)
    {
      v49 = a1;
      sub_1E48C1338(v23, &qword_1ECF809D0, &qword_1E499D6C0);
      swift_arrayDestroy();
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v34 = qword_1EE2BB458;
      v35 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
      swift_beginAccess();
      v36 = v50;
      sub_1E48C12D0(v34 + v35, v50, &qword_1ECF7F008, &qword_1E499B170);
      v38 = v52;
      v37 = v53;
      v39 = *(v52 + 48);
      if (v39(v36, 1, v53) == 1)
      {
        v40 = v51;
        sub_1E4904BF4(v51);
        if (v39(v36, 1, v37) != 1)
        {
          sub_1E48C1338(v36, &qword_1ECF7F008, &qword_1E499B170);
        }
      }

      else
      {
        v40 = v51;
        (*(v38 + 32))(v51, v36, v37);
      }

      v44 = sub_1E499706C();
      v45 = sub_1E499830C();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = v37;
        v48 = swift_slowAlloc();
        v55 = v48;
        *v46 = 136315138;
        *(v46 + 4) = sub_1E48CA094(v49, a2, &v55);
        _os_log_impl(&dword_1E48B0000, v44, v45, "Couldn't convert '%s' to override date", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v48);
        MEMORY[0x1E691CED0](v48, -1, -1);
        MEMORY[0x1E691CED0](v46, -1, -1);

        (*(v38 + 8))(v40, v47);
      }

      else
      {

        (*(v38 + 8))(v40, v37);
      }

      return (*(v27 + 56))(v54, 1, 1, v26);
    }

    else
    {
LABEL_10:
      swift_arrayDestroy();
      (*(v27 + 32))(a4, v23, v26);
      return (*(v27 + 56))(a4, 0, 1, v26);
    }
  }

  else
  {
    v42 = sub_1E4996D8C();
    v43 = *(*(v42 - 8) + 56);

    return v43(a4, 1, 1, v42);
  }
}

unsigned __int8 *sub_1E495C830@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v54 - v8;
  v10 = sub_1E499708C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  result = MEMORY[0x1EEE9AC00](v10, v13);
  v58 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a1[1];
  v18 = HIBYTE(v17) & 0xF;
  v19 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v17 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v17) & 0xF;
  }

  else
  {
    v20 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    goto LABEL_63;
  }

  if ((v17 & 0x1000000000000000) != 0)
  {
    v49 = a1[1];

    v22 = sub_1E495E3F0(v16, v17, 10);
    v51 = v50;

    if (v51)
    {
      goto LABEL_63;
    }

    goto LABEL_73;
  }

  if ((v17 & 0x2000000000000000) == 0)
  {
    if ((v16 & 0x1000000000000000) != 0)
    {
      result = ((v17 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v52 = *a1;
      v53 = a1[1];
      result = sub_1E49985DC();
    }

    v21 = *result;
    if (v21 == 43)
    {
      if (v19 >= 1)
      {
        v18 = v19 - 1;
        if (v19 != 1)
        {
          v22 = 0;
          if (result)
          {
            v29 = result + 1;
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                goto LABEL_61;
              }

              v31 = 10 * v22;
              if ((v22 * 10) >> 64 != (10 * v22) >> 63)
              {
                goto LABEL_61;
              }

              v22 = v31 + v30;
              if (__OFADD__(v31, v30))
              {
                goto LABEL_61;
              }

              ++v29;
              if (!--v18)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_78;
    }

    if (v21 != 45)
    {
      if (v19)
      {
        v22 = 0;
        if (result)
        {
          while (1)
          {
            v35 = *result - 48;
            if (v35 > 9)
            {
              goto LABEL_61;
            }

            v36 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_61;
            }

            v22 = v36 + v35;
            if (__OFADD__(v36, v35))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v19)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v22 = 0;
      LOBYTE(v18) = 1;
LABEL_62:
      LOBYTE(v60) = v18;
      if (v18)
      {
LABEL_63:
        v55 = v16;
        v56 = v2;
        v57 = a2;
        if (qword_1EE2BB450 != -1)
        {
          swift_once();
        }

        v40 = qword_1EE2BB458;
        v41 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
        swift_beginAccess();
        sub_1E48C12D0(v40 + v41, v9, &qword_1ECF7F008, &qword_1E499B170);
        v42 = *(v11 + 48);
        if (v42(v9, 1, v10) == 1)
        {
          v43 = v58;
          sub_1E4904BF4(v58);
          if (v42(v9, 1, v10) != 1)
          {
            sub_1E48C1338(v9, &qword_1ECF7F008, &qword_1E499B170);
          }
        }

        else
        {
          v43 = v58;
          (*(v11 + 32))(v58, v9, v10);
        }

        v44 = sub_1E499706C();
        v45 = sub_1E499830C();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v60 = v47;
          *v46 = 136446210;
          *(v46 + 4) = sub_1E48CA094(v55, v17, &v60);
          _os_log_impl(&dword_1E48B0000, v44, v45, "Couldn't covert '%{public}s' to int", v46, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v47);
          MEMORY[0x1E691CED0](v47, -1, -1);
          MEMORY[0x1E691CED0](v46, -1, -1);
        }

        result = (*(v11 + 8))(v43, v10);
        v22 = 0;
        v48 = 1;
        a2 = v57;
        goto LABEL_74;
      }

LABEL_73:
      v48 = 0;
LABEL_74:
      *a2 = v22;
      *(a2 + 8) = v48;
      return result;
    }

    if (v19 >= 1)
    {
      v18 = v19 - 1;
      if (v19 != 1)
      {
        v22 = 0;
        if (result)
        {
          v23 = result + 1;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              goto LABEL_61;
            }

            v25 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_61;
            }

            v22 = v25 - v24;
            if (__OFSUB__(v25, v24))
            {
              goto LABEL_61;
            }

            ++v23;
            if (!--v18)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v18) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v59[0] = *a1;
  v59[1] = v17 & 0xFFFFFFFFFFFFFFLL;
  if (v16 != 43)
  {
    if (v16 != 45)
    {
      if (v18)
      {
        v22 = 0;
        v37 = v59;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            break;
          }

          v39 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v39 + v38;
          if (__OFADD__(v39, v38))
          {
            break;
          }

          ++v37;
          if (!--v18)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v18)
    {
      if (--v18)
      {
        v22 = 0;
        v26 = v59 + 1;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v28 - v27;
          if (__OFSUB__(v28, v27))
          {
            break;
          }

          ++v26;
          if (!--v18)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_77;
  }

  if (v18)
  {
    if (--v18)
    {
      v22 = 0;
      v32 = v59 + 1;
      while (1)
      {
        v33 = *v32 - 48;
        if (v33 > 9)
        {
          break;
        }

        v34 = 10 * v22;
        if ((v22 * 10) >> 64 != (10 * v22) >> 63)
        {
          break;
        }

        v22 = v34 + v33;
        if (__OFADD__(v34, v33))
        {
          break;
        }

        ++v32;
        if (!--v18)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_79:
  __break(1u);
  return result;
}

uint64_t sub_1E495CE20@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v76 = a3;
  v77 = a4;
  v73 = a1;
  v74 = a2;
  v82 = a6;
  v7 = sub_1E4996E3C();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E4996EDC();
  v83 = v13;
  v88 = *(v13 - 8);
  v14 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E4996D8C();
  v80 = *(v18 - 8);
  v81 = v18;
  v19 = *(v80 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v67 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v66 - v24;
  sub_1E4996D4C();
  v26 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v69 = *MEMORY[0x1E6969868];
  v87 = v8[13];
  v87(v12);
  sub_1E4996E4C();
  v85 = v8[1];
  v86 = v8 + 1;
  v85(v12, v7);
  v27 = sub_1E4996E7C();
  v28 = *(v88 + 8);
  v88 += 8;
  v84 = v28;
  v28(v17, v13);
  [v26 setCalendar_];

  v68 = a5;
  v29 = sub_1E4996F1C();
  [v26 setTimeZone_];

  v30 = sub_1E4997EAC();
  [v26 setDateFormat_];

  v31 = sub_1E4996CEC();
  v78 = v26;
  v32 = [v26 stringFromDate_];

  v72 = sub_1E4997EEC();
  v71 = v33;

  v34 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v35 = v69;
  (v87)(v12, v69, v7);
  sub_1E4996E4C();
  v85(v12, v7);
  v36 = sub_1E4996E7C();
  v84(v17, v83);
  [v34 setCalendar_];

  v37 = sub_1E4996F1C();
  [v34 setTimeZone_];

  v38 = sub_1E4997EAC();
  [v34 setDateFormat_];

  v79 = v25;
  v39 = sub_1E4996CEC();
  v75 = v34;
  v40 = [v34 stringFromDate_];

  v70 = sub_1E4997EEC();
  v42 = v41;

  v43 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  (v87)(v12, v35, v7);
  sub_1E4996E4C();
  v44 = v12;
  v45 = v73;
  v85(v44, v7);
  v46 = sub_1E4996E7C();
  v84(v17, v83);
  v47 = v74;
  [v43 setCalendar_];

  v48 = sub_1E4996F1C();
  [v43 setTimeZone_];

  v91 = 0x2D4D4D2D79797979;
  v92 = 0xEB00000000206464;
  MEMORY[0x1E691B7A0](v76, v77);
  MEMORY[0x1E691B7A0](32, 0xE100000000000000);
  MEMORY[0x1E691B7A0](8026746, 0xE300000000000000);
  v49 = sub_1E4997EAC();

  [v43 setDateFormat_];

  v91 = v45;
  v92 = v47;
  v89 = 58;
  v90 = 0xE100000000000000;
  sub_1E48D2EE4();
  v50 = sub_1E49984DC();
  if (v50[2])
  {
    v51 = v50[4];
    v52 = v50[5];

    v53 = sub_1E4997F6C();

    v91 = 0;
    v92 = 0xE000000000000000;
    if (v53 == 1)
    {
      v54 = 48;
    }

    else
    {
      v54 = 0;
    }

    if (v53 == 1)
    {
      v55 = 0xE100000000000000;
    }

    else
    {
      v55 = 0xE000000000000000;
    }
  }

  else
  {

    v54 = 0;
    v55 = 0xE000000000000000;
    v91 = 0;
    v92 = 0xE000000000000000;
  }

  MEMORY[0x1E691B7A0](v54, v55);

  MEMORY[0x1E691B7A0](v45, v47);
  v56 = v91;
  v57 = v92;
  v91 = v72;
  v92 = v71;
  MEMORY[0x1E691B7A0](32, 0xE100000000000000);
  MEMORY[0x1E691B7A0](v56, v57);

  MEMORY[0x1E691B7A0](32, 0xE100000000000000);
  MEMORY[0x1E691B7A0](v70, v42);

  v58 = sub_1E4997EAC();

  v59 = [v43 dateFromString_];

  if (v59)
  {
    v60 = v67;
    sub_1E4996D3C();

    v61 = v80;
    v62 = v81;
    (*(v80 + 8))(v79, v81);
    v63 = v82;
    (*(v61 + 32))(v82, v60, v62);
    v64 = 0;
  }

  else
  {
    v61 = v80;
    v62 = v81;
    (*(v80 + 8))(v79, v81);

    v64 = 1;
    v63 = v82;
  }

  return (*(v61 + 56))(v63, v64, 1, v62);
}

uint64_t sub_1E495D620(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v23 - v8;
  v10 = sub_1E499708C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 16))
  {
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v16 = qword_1EE2BB458;
    v17 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    sub_1E48C12D0(v16 + v17, v9, &qword_1ECF7F008, &qword_1E499B170);
    v18 = *(v11 + 48);
    if (v18(v9, 1, v10) == 1)
    {
      sub_1E4904BF4(v15);
      if (v18(v9, 1, v10) != 1)
      {
        sub_1E48C1338(v9, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      (*(v11 + 32))(v15, v9, v10);
    }

    v20 = sub_1E499706C();
    v21 = sub_1E499830C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1E48B0000, v20, v21, "SystemSystemStatusBarOverrideProvider handler is not nil. Cannot replace it'", v22, 2u);
      MEMORY[0x1E691CED0](v22, -1, -1);
    }

    return (*(v11 + 8))(v15, v10);
  }

  else
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;

    return sub_1E495D8EC();
  }
}

uint64_t sub_1E495D8EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F30, &unk_1E49A4D40);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = aBlock - v4;
  v6 = v0[4];
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1E495F158;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E495DB80;
  aBlock[3] = &block_descriptor_11;
  v8 = _Block_copy(aBlock);

  [v6 observeDataWithBlock_];
  _Block_release(v8);
  v9 = [v6 data];
  sub_1E495DBEC(v9, v5);
  v10 = v0[2];
  if (v10)
  {
    v11 = v0[3];

    v10(v5);
    sub_1E48BFEC4(v10);
  }

  return sub_1E48C1338(v5, &qword_1ECF80F30, &unk_1E49A4D40);
}

uint64_t sub_1E495DA80(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F30, &unk_1E49A4D40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v11 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_1E495DBEC(a1, v6);
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = *(v8 + 24);

      v9(v6);
      sub_1E48BFEC4(v9);
    }

    return sub_1E48C1338(v6, &qword_1ECF80F30, &unk_1E49A4D40);
  }

  return result;
}

void sub_1E495DB80(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1E495DBEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v61 - v7;
  v9 = sub_1E4996D8C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SystemOverrideClockData();
  v70 = *(v15 - 8);
  v16 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E4996F4C();
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v65 = v24;
    v66 = v23;
    v61 = v19;
    v62 = v14;
    v67 = v10;
    v68 = v9;
    v69 = a2;
    v27 = a1;
    v28 = [v27 customOverrides];
    v29 = [v28 shortTimeEntry];

    if (v29)
    {
      v30 = [v29 isEnabled];

      if (v30)
      {
        goto LABEL_8;
      }
    }

    v31 = [v27 customOverrides];
    v32 = [v31 timeEntry];

    if (v32)
    {
      v33 = [v32 isEnabled];

      if (v33)
      {
        goto LABEL_8;
      }
    }

    v34 = [v27 customOverrides];
    v35 = [v34 dateEntry];

    if (v35)
    {
      v36 = [v35 isEnabled];

      if (v36)
      {
LABEL_8:
        v37 = [v27 customOverrides];
        v38 = [v37 shortTimeEntry];

        if (v38)
        {
          v39 = [v38 stringValue];

          v64 = sub_1E4997EEC();
          v41 = v40;
        }

        else
        {
          v64 = 0;
          v41 = 0;
        }

        v63 = v15;
        v44 = [v27 customOverrides];
        v45 = [v44 timeEntry];

        if (v45)
        {
          v46 = [v45 stringValue];

          v47 = sub_1E4997EEC();
          v45 = v48;
        }

        else
        {
          v47 = 0;
        }

        v49 = [v27 customOverrides];
        v50 = [v49 dateEntry];

        if (v50)
        {
          v51 = [v50 &selRef_setRadialShadowOpacity_];

          v52 = sub_1E4997EEC();
          v50 = v53;
        }

        else
        {
          v52 = 0;
        }

        v54 = v69;
        v55 = v63;
        sub_1E4996F3C();
        sub_1E4959200(v64, v41, v47, v45, v52, v50, v26, v8);

        (*(v65 + 8))(v26, v66);
        v57 = v67;
        v56 = v68;
        if ((*(v67 + 48))(v8, 1, v68) == 1)
        {
          sub_1E48C1338(v8, &qword_1ECF809D0, &qword_1E499D6C0);
          return (*(v70 + 56))(v54, 1, 1, v55);
        }

        else
        {
          v58 = *(v57 + 32);
          v59 = v62;
          v58(v62, v8, v56);
          v60 = v61;
          v58(v61, v59, v56);
          sub_1E495E318(v60, v54);
          return (*(v70 + 56))(v54, 0, 1, v55);
        }
      }
    }

    a2 = v69;
  }

  v42 = *(v70 + 56);

  return v42(a2, 1, 1, v15);
}

uint64_t sub_1E495E1D4()
{
  v1 = *(v0 + 24);
  sub_1E48BFEC4(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SystemOverrideClockData()
{
  result = qword_1ECF80EF0;
  if (!qword_1ECF80EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E495E2AC()
{
  result = sub_1E4996D8C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E495E318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemOverrideClockData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1E495E37C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F280, &qword_1E499B8A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_1E495E3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1E499803C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1E495E97C();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1E49985DC();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1E495E97C()
{
  v0 = sub_1E499804C();
  v4 = sub_1E495E9FC(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1E495E9FC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1E4997F4C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1E49984CC();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1E495E37C(v9, 0);
  v12 = sub_1E495EB54(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1E4997F4C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1E49985DC();
LABEL_4:

  return sub_1E4997F4C();
}

unint64_t sub_1E495EB54(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1E495ED74(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1E4997FDC();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1E49985DC();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1E495ED74(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1E4997FBC();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1E495ED74(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1E499800C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1E691B7E0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1E495EDF0(uint64_t a1)
{
  v2 = sub_1E4996ECC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v41 = &v34 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F18, &unk_1E49A4D30);
    v12 = sub_1E499857C();
    v13 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v39 = v15;
    v40 = v12 + 56;
    v16 = *(v14 + 64);
    v36 = v11;
    v37 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    v35 = (v14 + 16);
    while (1)
    {
      v38 = v13;
      v39(v41, v37 + v17 * v13, v2);
      v19 = *(v12 + 40);
      sub_1E495F110(&qword_1ECF80F20, MEMORY[0x1E6969AD0]);
      v20 = sub_1E4997E4C();
      v21 = ~(-1 << *(v12 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v40 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        while (1)
        {
          v26 = v14;
          v39(v8, *(v12 + 48) + v22 * v17, v2);
          sub_1E495F110(&qword_1ECF80F28, MEMORY[0x1E6969AD0]);
          v27 = sub_1E4997E9C();
          v28 = *v18;
          (*v18)(v8, v2);
          if (v27)
          {
            break;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v40 + 8 * (v22 >> 6));
          v25 = 1 << v22;
          v14 = v26;
          if (((1 << v22) & v24) == 0)
          {
            goto LABEL_8;
          }
        }

        v28(v41, v2);
        v14 = v26;
      }

      else
      {
LABEL_8:
        v29 = v41;
        *(v40 + 8 * v23) = v25 | v24;
        result = (*v35)(*(v12 + 48) + v22 * v17, v29, v2);
        v31 = *(v12 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          return result;
        }

        *(v12 + 16) = v33;
      }

      v13 = v38 + 1;
      if (v38 + 1 == v36)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E495F110(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E495F178(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A58, &unk_1E49A4D50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E495F1E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F38, qword_1E49A4D68);
    v3 = sub_1E499857C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1E499892C();

      sub_1E4997F5C();
      result = sub_1E499896C();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_1E499884C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1E495F350(uint64_t a1)
{
  v2 = type metadata accessor for SystemOverrideClockData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1E495F3AC(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11ClockPoster27PlayClockFaceViewController_clockFace;
  type metadata accessor for PlayClockFaceView();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v2[v4] = v5;
  sub_1E48C8304(a1, &v2[OBJC_IVAR____TtC11ClockPoster27PlayClockFaceViewController_look]);
  v2[OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_isDisplayStyleRedMode] = 0;
  v2[OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_canAnimateRedMode] = 0;
  v6 = objc_allocWithZone(type metadata accessor for ClockFaceHostView());
  v7 = v5;
  *&v2[OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_hostView] = sub_1E49120F8(v7);
  v13.receiver = v2;
  v13.super_class = type metadata accessor for ClockFaceViewController();
  v8 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);

  sub_1E48C8304(a1, v12);
  v9 = OBJC_IVAR____TtC11ClockPoster27PlayClockFaceViewController_look;
  swift_beginAccess();
  v10 = v8;
  sub_1E48D8EA8(v12, v8 + v9);
  swift_endAccess();
  sub_1E495F590();

  sub_1E48C8360(a1);
  sub_1E48C8360(v12);
  return v10;
}

uint64_t sub_1E495F590()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v102 - v5;
  v7 = sub_1E499708C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC11ClockPoster27PlayClockFaceViewController_look;
  swift_beginAccess();
  sub_1E48C8304(&v0[v13], v116);
  if (v118 == 2)
  {

    sub_1E48B7448(v116, v107);
    sub_1E48B7448(v117, v104);
    v50 = *&v0[OBJC_IVAR____TtC11ClockPoster27PlayClockFaceViewController_clockFace];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F108, &unk_1E49A18C0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1E49A0CA0;
    v52 = v108;
    v53 = v109;
    __swift_project_boxed_opaque_existential_1(v107, v108);
    v54 = (*(v53 + 56))(v52, v53);
    v55 = swift_allocObject();
    *(v55 + 16) = v54;
    *(v55 + 24) = 0x4063200000000000;
    v56 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v114 = sub_1E48CE188;
    v115 = v55;
    v110 = MEMORY[0x1E69E9820];
    v111 = 1107296256;
    v112 = sub_1E4923F24;
    v113 = &block_descriptor_12;
    v57 = _Block_copy(&v110);
    v58 = [v56 initWithDynamicProvider_];
    _Block_release(v57);

    *(v51 + 32) = v58;
    v59 = v105;
    v60 = v106;
    __swift_project_boxed_opaque_existential_1(v104, v105);
    v61 = (*(v60 + 40))(v59, v60);
    v62 = swift_allocObject();
    *(v62 + 16) = v61;
    *(v62 + 24) = 0x4063200000000000;
    v63 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v114 = sub_1E48CE240;
    v115 = v62;
    v110 = MEMORY[0x1E69E9820];
    v111 = 1107296256;
    v112 = sub_1E4923F24;
    v113 = &block_descriptor_29_0;
    v64 = _Block_copy(&v110);
    v65 = [v63 initWithDynamicProvider_];
    _Block_release(v64);

    *(v51 + 40) = v65;
    *(v51 + 48) = [objc_opt_self() clearColor];
    v66 = v108;
    v67 = v109;
    __swift_project_boxed_opaque_existential_1(v107, v108);
    v68 = (*(v67 + 40))(v66, v67);
    v69 = swift_allocObject();
    *(v69 + 16) = v68;
    *(v69 + 24) = 0x4063200000000000;
    v70 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v114 = sub_1E48CE240;
    v115 = v69;
    v110 = MEMORY[0x1E69E9820];
    v111 = 1107296256;
    v112 = sub_1E4923F24;
    v113 = &block_descriptor_36_0;
    v71 = _Block_copy(&v110);
    v72 = [v70 initWithDynamicProvider_];
    _Block_release(v71);

    *(v51 + 56) = v72;
    v73 = v105;
    v74 = v106;
    __swift_project_boxed_opaque_existential_1(v104, v105);
    v75 = (*(v74 + 56))(v73, v74);
    v76 = swift_allocObject();
    *(v76 + 16) = v75;
    *(v76 + 24) = 0x4063200000000000;
    v77 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v114 = sub_1E48CE240;
    v115 = v76;
    v110 = MEMORY[0x1E69E9820];
    v111 = 1107296256;
    v112 = sub_1E4923F24;
    v113 = &block_descriptor_43_0;
    v78 = _Block_copy(&v110);
    v79 = [v77 initWithDynamicProvider_];
    _Block_release(v78);

    *(v51 + 64) = v79;
    v80 = *(v50 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_tintColors);
    *(v50 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_tintColors) = v51;

    v81 = *(v50 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_timeView);
    v82 = *(v81 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeLabel);
    v83 = *(v82 + 32);
    *(v82 + 32) = v51;
    swift_bridgeObjectRetain_n();

    sub_1E48DB53C();
    v84 = *(v81 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_offScreenTimeLabel);
    v85 = *(v84 + 32);
    *(v84 + 32) = v51;

    sub_1E48DB53C();

    __swift_destroy_boxed_opaque_existential_0Tm(v104);
    return __swift_destroy_boxed_opaque_existential_0Tm(v107);
  }

  if (!v118)
  {

    sub_1E48B7448(v116, v107);
    v14 = *&v0[OBJC_IVAR____TtC11ClockPoster27PlayClockFaceViewController_clockFace];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F108, &unk_1E49A18C0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1E49A0CA0;
    v16 = v108;
    v17 = v109;
    __swift_project_boxed_opaque_existential_1(v107, v108);
    v18 = (*(v17 + 56))(v16, v17);
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = 0x4063200000000000;
    v20 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v114 = sub_1E48CE240;
    v115 = v19;
    v110 = MEMORY[0x1E69E9820];
    v111 = 1107296256;
    v112 = sub_1E4923F24;
    v113 = &block_descriptor_50_0;
    v21 = _Block_copy(&v110);
    v22 = [v20 initWithDynamicProvider_];
    _Block_release(v21);

    *(v15 + 32) = v22;
    v23 = v108;
    v24 = v109;
    __swift_project_boxed_opaque_existential_1(v107, v108);
    v25 = (*(v24 + 40))(v23, v24);
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = 0x4063200000000000;
    v27 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v114 = sub_1E48CE240;
    v115 = v26;
    v110 = MEMORY[0x1E69E9820];
    v111 = 1107296256;
    v112 = sub_1E4923F24;
    v113 = &block_descriptor_57;
    v28 = _Block_copy(&v110);
    v29 = [v27 initWithDynamicProvider_];
    _Block_release(v28);

    *(v15 + 40) = v29;
    *(v15 + 48) = [objc_opt_self() clearColor];
    v30 = v108;
    v31 = v109;
    __swift_project_boxed_opaque_existential_1(v107, v108);
    v32 = (*(v31 + 56))(v30, v31);
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    *(v33 + 24) = 0x4063200000000000;
    v34 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v114 = sub_1E48CE240;
    v115 = v33;
    v110 = MEMORY[0x1E69E9820];
    v111 = 1107296256;
    v112 = sub_1E4923F24;
    v113 = &block_descriptor_64;
    v35 = _Block_copy(&v110);
    v36 = [v34 initWithDynamicProvider_];
    _Block_release(v35);

    *(v15 + 56) = v36;
    v37 = v108;
    v38 = v109;
    __swift_project_boxed_opaque_existential_1(v107, v108);
    v39 = (*(v38 + 40))(v37, v38);
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    *(v40 + 24) = 0x4063200000000000;
    v41 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v114 = sub_1E48CE240;
    v115 = v40;
    v110 = MEMORY[0x1E69E9820];
    v111 = 1107296256;
    v112 = sub_1E4923F24;
    v113 = &block_descriptor_71;
    v42 = _Block_copy(&v110);
    v43 = [v41 initWithDynamicProvider_];
    _Block_release(v42);

    *(v15 + 64) = v43;
    v44 = *(v14 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_tintColors);
    *(v14 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_tintColors) = v15;

    v45 = *(v14 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_timeView);
    v46 = *(v45 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeLabel);
    v47 = *(v46 + 32);
    *(v46 + 32) = v15;
    swift_bridgeObjectRetain_n();

    sub_1E48DB53C();
    v48 = *(v45 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_offScreenTimeLabel);
    v49 = *(v48 + 32);
    *(v48 + 32) = v15;

    sub_1E48DB53C();

    return __swift_destroy_boxed_opaque_existential_0Tm(v107);
  }

  if (qword_1EE2BB450 != -1)
  {
    swift_once();
  }

  v87 = qword_1EE2BB458;
  v88 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
  swift_beginAccess();
  sub_1E48C12D0(v87 + v88, v6, &qword_1ECF7F008, &qword_1E499B170);
  v89 = *(v8 + 48);
  if (v89(v6, 1, v7) == 1)
  {
    sub_1E4904BF4(v12);
    if (v89(v6, 1, v7) != 1)
    {
      sub_1E48C1338(v6, &qword_1ECF7F008, &qword_1E499B170);
    }
  }

  else
  {
    (*(v8 + 32))(v12, v6, v7);
  }

  v90 = v1;
  v91 = sub_1E499706C();
  v92 = sub_1E499830C();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v104[0] = v103;
    *v93 = 136446466;
    sub_1E48C8304(v1 + v13, &v110);
    v94 = v91;
    v95 = sub_1E48C60D0();
    v97 = v96;
    sub_1E48C8360(&v110);
    v98 = sub_1E48CA094(v95, v97, v104);

    *(v93 + 4) = v98;
    *(v93 + 12) = 2114;
    *(v93 + 14) = v90;
    v99 = v102;
    *v102 = v90;
    v100 = v90;
    _os_log_impl(&dword_1E48B0000, v94, v92, "Unsupported look. Look: '%{public}s' for '%{public}@'", v93, 0x16u);
    sub_1E48C1338(v99, &qword_1ECF7F718, &unk_1E499CA90);
    MEMORY[0x1E691CED0](v99, -1, -1);
    v101 = v103;
    __swift_destroy_boxed_opaque_existential_0Tm(v103);
    MEMORY[0x1E691CED0](v101, -1, -1);
    MEMORY[0x1E691CED0](v93, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v12, v7);
  return sub_1E48C8360(v116);
}

uint64_t sub_1E4960284()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v13 - v4;
  v6 = type metadata accessor for PlayClockFaceViewController();
  v13.receiver = v0;
  v13.super_class = v6;
  objc_msgSendSuper2(&v13, sel_viewDidLoad);
  v7 = sub_1E499816C();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E499814C();

  v9 = sub_1E499813C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;

  sub_1E498DD1C(0, 0, v5, &unk_1E49A4E00, v10);
}

uint64_t sub_1E49603F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_1E4996D8C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F728, &unk_1E499CAB0);
  v4[11] = v9;
  v10 = *(v9 - 8);
  v4[12] = v10;
  v11 = *(v10 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81510, &unk_1E499E0A0) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F730, &qword_1E499CAC0);
  v4[17] = v13;
  v14 = *(v13 - 8);
  v4[18] = v14;
  v15 = *(v14 + 64) + 15;
  v4[19] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F738, &unk_1E49A2240);
  v4[20] = v16;
  v17 = *(v16 - 8);
  v4[21] = v17;
  v18 = *(v17 + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = sub_1E499814C();
  v4[24] = sub_1E499813C();
  v20 = sub_1E499811C();
  v4[25] = v20;
  v4[26] = v19;

  return MEMORY[0x1EEE6DFA0](sub_1E49606B4, v20, v19);
}

uint64_t sub_1E49606B4()
{
  if (qword_1ECF7EAE0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECF81910;
  *(v0 + 216) = qword_1ECF81910;

  return MEMORY[0x1EEE6DFA0](sub_1E496074C, v1, 0);
}

uint64_t sub_1E496074C()
{
  v1 = v0[27];
  sub_1E48F0638(v0[19]);
  v2 = v0[25];
  v3 = v0[26];

  return MEMORY[0x1EEE6DFA0](sub_1E49607B4, v2, v3);
}

uint64_t sub_1E49607B4()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = v0[5];
  sub_1E499819C();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v6 = v0[23];
  v7 = sub_1E499813C();
  v0[28] = v7;
  v8 = *(MEMORY[0x1E69E8678] + 4);
  v9 = swift_task_alloc();
  v0[29] = v9;
  *v9 = v0;
  v9[1] = sub_1E49608BC;
  v10 = v0[22];
  v11 = v0[20];
  v12 = v0[16];
  v13 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v12, v7, v13, v11);
}

uint64_t sub_1E49608BC()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);
  v7 = *v0;

  v4 = *(v1 + 208);
  v5 = *(v1 + 200);

  return MEMORY[0x1EEE6DFA0](sub_1E4960A00, v5, v4);
}

uint64_t sub_1E4960A00()
{
  v1 = v0[16];
  if ((*(v0[12] + 48))(v1, 1, v0[11]) == 1)
  {
    v2 = v0[24];
    (*(v0[21] + 8))(v0[22], v0[20]);

LABEL_7:
    v17 = v0[22];
    v18 = v0[19];
    v20 = v0[15];
    v19 = v0[16];
    v22 = v0[13];
    v21 = v0[14];
    v24 = v0[9];
    v23 = v0[10];
    v25 = v0[8];

    v26 = v0[1];

    return v26();
  }

  v3 = v0[5];
  sub_1E48D9004(v1, v0[15]);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v12 = v0[24];
    v14 = v0[21];
    v13 = v0[22];
    v15 = v0[20];
    v16 = v0[15];

    sub_1E48C1338(v16, &qword_1ECF7F728, &unk_1E499CAB0);
    (*(v14 + 8))(v13, v15);
    goto LABEL_7;
  }

  v5 = Strong;
  v6 = v0[14];
  sub_1E48C12D0(v0[15], v6, &qword_1ECF7F728, &unk_1E499CAB0);
  v7 = type metadata accessor for Alarm();
  v8 = *(*(v7 - 8) + 48);
  v9 = v8(v6, 1, v7);
  v10 = v0[14];
  if (v9 == 1)
  {
    sub_1E48C1338(v0[14], &qword_1ECF7F728, &unk_1E499CAB0);
    v11 = 1;
  }

  else
  {
    (*(v0[7] + 16))(v0[10], v0[14], v0[6]);
    sub_1E48D90D8(v10);
    v11 = 0;
  }

  v28 = v0[15];
  v29 = v0[13];
  (*(v0[7] + 56))(v0[10], v11, 1, v0[6]);
  sub_1E48C12D0(v28, v29, &qword_1ECF7F728, &unk_1E499CAB0);
  v30 = v8(v29, 1, v7);
  v31 = v0[13];
  if (v30 == 1)
  {
    sub_1E48C1338(v31, &qword_1ECF7F728, &unk_1E499CAB0);
  }

  else
  {
    sub_1E48D90D8(v31);
  }

  v32 = v0[10];
  v33 = v0[6];
  v34 = *(v0[7] + 48);
  if (v34(v32, 1, v33) == 1)
  {
    v35 = *&v5[OBJC_IVAR____TtC11ClockPoster27PlayClockFaceViewController_clockFace];
    v36 = OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_alarmComplicationView;
    v37 = *(v35 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_alarmComplicationView);
    if (v37)
    {
      [v37 removeFromSuperview];
      v38 = *(v35 + v36);
      *(v35 + v36) = 0;

      [*(v35 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_timeView) setNeedsLayout];
    }

    v39 = OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_onDeckAlarmComplicationView;
    v40 = *(v35 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_onDeckAlarmComplicationView);
    if (v40)
    {
      [v40 removeFromSuperview];
      v41 = *(v35 + v39);
      *(v35 + v39) = 0;

      [*(v35 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_timeView) setNeedsLayout];
    }
  }

  else
  {
    v42 = v0[9];
    sub_1E48C12D0(v32, v42, &qword_1ECF809D0, &qword_1E499D6C0);
    v43 = v34(v42, 1, v33);
    v44 = v0[9];
    if (v43 == 1)
    {
      sub_1E48C1338(v0[9], &qword_1ECF809D0, &qword_1E499D6C0);
    }

    else
    {
      (*(v0[7] + 32))(v0[8], v0[9], v0[6]);
      v45 = v0[8];
      if (v30 == 1)
      {
        (*(v0[7] + 8))(v0[8], v0[6]);
      }

      else
      {
        type metadata accessor for AlarmComplicationCurvedTextView();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v47 = [objc_allocWithZone(ObjCClassFromMetadata) init];
        v48 = [v47 layer];
        [v48 setGeometryFlipped_];

        v49 = *&v47[OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_timeFormatter];
        v50 = sub_1E4996CEC();
        [v49 setOverrideDate_];

        v51 = *&v5[OBJC_IVAR____TtC11ClockPoster27PlayClockFaceViewController_clockFace];
        v52 = OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_alarmComplicationView;
        v53 = *(v51 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_alarmComplicationView);
        if (v53)
        {
          [v53 removeFromSuperview];
          v54 = *(v51 + v52);
        }

        else
        {
          v54 = 0;
        }

        v55 = v0[8];
        *(v51 + v52) = v47;
        v56 = v47;

        v57 = OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_timeView;
        [*(v51 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_timeView) setNeedsLayout];

        v58 = [objc_allocWithZone(ObjCClassFromMetadata) init];
        v59 = [v58 layer];
        [v59 setGeometryFlipped_];

        v60 = *&v58[OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_timeFormatter];
        v61 = sub_1E4996CEC();
        [v60 setOverrideDate_];

        v62 = OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_onDeckAlarmComplicationView;
        v63 = *(v51 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_onDeckAlarmComplicationView);
        if (v63)
        {
          [v63 &off_1E8761078];
          v64 = *(v51 + v62);
        }

        else
        {
          v64 = 0;
        }

        v66 = v0[7];
        v65 = v0[8];
        v67 = v0[6];
        *(v51 + v62) = v58;
        v68 = v58;

        [*(v51 + v57) setNeedsLayout];
        (*(v66 + 8))(v65, v67);
      }
    }
  }

  v69 = v0[15];
  v70 = v0[10];

  sub_1E48C1338(v70, &qword_1ECF809D0, &qword_1E499D6C0);
  sub_1E48C1338(v69, &qword_1ECF7F728, &unk_1E499CAB0);
  v71 = v0[23];
  v72 = sub_1E499813C();
  v0[28] = v72;
  v73 = *(MEMORY[0x1E69E8678] + 4);
  v74 = swift_task_alloc();
  v0[29] = v74;
  *v74 = v0;
  v74[1] = sub_1E49608BC;
  v75 = v0[22];
  v76 = v0[20];
  v77 = v0[16];
  v78 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v77, v72, v78, v76);
}

id sub_1E4961114(uint64_t a1)
{
  sub_1E48C21E0(a1);
  v3 = *(v1 + OBJC_IVAR____TtC11ClockPoster27PlayClockFaceViewController_clockFace);
  v4 = *(v3 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_timeView);
  sub_1E4913F14(a1);
  v5 = *(v3 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_alarmComplicationView);
  if (v5)
  {
    [v5 setNeedsLayout];
  }

  result = *(v3 + OBJC_IVAR____TtC11ClockPoster17PlayClockFaceView_onDeckAlarmComplicationView);
  if (result)
  {

    return [result setNeedsLayout];
  }

  return result;
}

void sub_1E49611B8()
{
  sub_1E48C8360(v0 + OBJC_IVAR____TtC11ClockPoster27PlayClockFaceViewController_look);
  v1 = *(v0 + OBJC_IVAR____TtC11ClockPoster27PlayClockFaceViewController_clockFace);
}

id sub_1E49611F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayClockFaceViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E496129C(uint64_t a1)
{
  result = sub_1E49613E8(&qword_1ECF80F50);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E49612E0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11ClockPoster27PlayClockFaceViewController_look;
  swift_beginAccess();
  return sub_1E48C8304(v1 + v3, a1);
}

uint64_t sub_1E4961338(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11ClockPoster27PlayClockFaceViewController_look;
  swift_beginAccess();
  sub_1E48D8EA8(a1, v1 + v3);
  swift_endAccess();
  sub_1E495F590();
  return sub_1E48C8360(a1);
}

uint64_t sub_1E49613A4(uint64_t a1)
{
  result = sub_1E49613E8(&qword_1ECF80F58);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E49613E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PlayClockFaceViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E4961440(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48BFD3C;

  return sub_1E49603F0(a1, v4, v5, v6);
}

double sub_1E496152C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E496816C(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel);
  sub_1E4996FCC();

  result = *(v3 + 32);
  *a2 = result;
  return result;
}

uint64_t sub_1E49615FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E496816C(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel);
  sub_1E4996FCC();

  v4 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarPosition;
  swift_beginAccess();
  return sub_1E48C12D0(v3 + v4, a2, &unk_1ECF816F0, &qword_1E49A5090);
}

uint64_t sub_1E49616D4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v11 - v7;
  sub_1E48C12D0(a1, &v11 - v7, &unk_1ECF816F0, &qword_1E49A5090);
  v9 = *a2;
  return sub_1E491A6E4(v8);
}

uint64_t sub_1E4961780(uint64_t a1, char a2)
{
  v4 = sub_1E499758C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v10 = sub_1E499831C();
    v11 = sub_1E49977AC();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1E48CA094(0xD000000000000015, 0x80000001E49A88A0, &v16);
      _os_log_impl(&dword_1E48B0000, v11, v10, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x1E691CED0](v13, -1, -1);
      MEMORY[0x1E691CED0](v12, -1, -1);
    }

    sub_1E499757C();
    swift_getAtKeyPath();

    (*(v5 + 8))(v9, v4);
    return v16;
  }

  return a1;
}

uint64_t sub_1E4961948(uint64_t a1, char a2)
{
  v4 = sub_1E499758C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v10 = sub_1E499831C();
    v11 = sub_1E49977AC();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1E48CA094(0xD000000000000015, 0x80000001E49A87F0, &v16);
      _os_log_impl(&dword_1E48B0000, v11, v10, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x1E691CED0](v13, -1, -1);
      MEMORY[0x1E691CED0](v12, -1, -1);
    }

    sub_1E499757C();
    swift_getAtKeyPath();

    (*(v5 + 8))(v9, v4);
    return v16;
  }

  return a1;
}

uint64_t sub_1E4961B10(uint64_t a1, char a2)
{
  v4 = sub_1E499758C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v10 = sub_1E499831C();
    v11 = sub_1E49977AC();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1E48CA094(0x6C616E6F6974704FLL, 0xEE003E746E6F463CLL, &v16);
      _os_log_impl(&dword_1E48B0000, v11, v10, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x1E691CED0](v13, -1, -1);
      MEMORY[0x1E691CED0](v12, -1, -1);
    }

    sub_1E499757C();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v5 + 8))(v9, v4);
    return v16;
  }

  return a1;
}

uint64_t sub_1E4961D08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E499758C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FDC0, &qword_1E49A0460);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v22 - v13);
  sub_1E48C12D0(v2, &v22 - v13, &qword_1ECF7FDC0, &qword_1E49A0460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1E499732C();
    return (*(*(v15 - 8) + 32))(a1, v14, v15);
  }

  else
  {
    v17 = *v14;
    v18 = sub_1E499831C();
    v19 = sub_1E49977AC();
    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1E48CA094(0x694474756F79614CLL, 0xEF6E6F6974636572, &v23);
      _os_log_impl(&dword_1E48B0000, v19, v18, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x1E691CED0](v21, -1, -1);
      MEMORY[0x1E691CED0](v20, -1, -1);
    }

    sub_1E499757C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_1E4961FDC(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1E499758C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v14 = sub_1E499831C();
    v15 = sub_1E49977AC();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1E48CA094(a3, a4, &v20);
      _os_log_impl(&dword_1E48B0000, v15, v14, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x1E691CED0](v17, -1, -1);
      MEMORY[0x1E691CED0](v16, -1, -1);
    }

    sub_1E499757C();
    swift_getAtKeyPath();

    (*(v9 + 8))(v13, v8);
    return v20;
  }

  return a1;
}

uint64_t sub_1E49621A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F78, &qword_1E49A4F78);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v33[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F80, &qword_1E49A4F80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v33[-v16];
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v33[-v20];
  v35 = *(a1 + 56);
  v36 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F88, &qword_1E49A4F88);
  sub_1E4997B5C();
  v22 = v34;
  *v8 = sub_1E499762C();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F90, &qword_1E49A4F90);
  sub_1E496246C(a1, &v8[*(v23 + 44)]);
  v35 = *(a1 + 72);
  sub_1E4997B5C();
  if (v34 == 1)
  {
    v24 = sub_1E4997A4C();
  }

  else
  {
    v24 = sub_1E4997A3C();
  }

  v25 = v24;
  v26 = sub_1E49977CC();
  sub_1E48C15C8(v8, v17, &qword_1ECF80F78, &qword_1E49A4F78);
  v27 = &v17[*(v9 + 36)];
  *v27 = v25;
  v27[8] = v26;
  sub_1E48C15C8(v17, v21, &qword_1ECF80F80, &qword_1E49A4F80);
  v35 = v36;
  sub_1E4997B5C();
  v28 = v34;
  v29 = v34 ^ 1;
  sub_1E48C12D0(v21, v13, &qword_1ECF80F80, &qword_1E49A4F80);
  *a2 = 0;
  *(a2 + 8) = v22;
  *(a2 + 9) = v22 ^ 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F98, &qword_1E49A4F98);
  sub_1E48C12D0(v13, a2 + *(v30 + 48), &qword_1ECF80F80, &qword_1E49A4F80);
  v31 = a2 + *(v30 + 64);
  *v31 = 0;
  *(v31 + 8) = v29;
  *(v31 + 9) = v28;
  sub_1E48C1338(v21, &qword_1ECF80F80, &qword_1E49A4F80);
  return sub_1E48C1338(v13, &qword_1ECF80F80, &qword_1E49A4F80);
}

uint64_t sub_1E496246C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v88 = sub_1E499774C();
  v87 = *(v88 - 8);
  v3 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v88, v4);
  v86 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80FA0, &qword_1E49A4FA0);
  v6 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84, v7);
  v85 = &v83 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80FA8, &qword_1E49A4FA8);
  v10 = *(v9 - 8);
  v90 = v9;
  v91 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v83 = &v83 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80FB0, &qword_1E49A4FB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v97 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v99 = &v83 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80FB8, &qword_1E49A4FB8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8, v23);
  v25 = &v83 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80FC0, &qword_1E49A4FC0);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26, v29);
  v96 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v83 - v33;
  *v34 = sub_1E49975AC();
  *(v34 + 1) = 0;
  v34[16] = 1;
  v35 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80FC8, &qword_1E49A4FC8) + 44)];
  v89 = a1;
  sub_1E4963838(a1, v35);
  v36 = sub_1E49977CC();
  v37 = &v34[*(v27 + 44)];
  *v37 = v36;
  *(v37 + 1) = 0x4040000000000000;
  *(v37 + 2) = 0;
  *(v37 + 3) = 0;
  *(v37 + 4) = 0;
  v37[40] = 0;
  *&v101 = sub_1E49645C8();
  *(&v101 + 1) = v38;
  sub_1E48D2EE4();
  v39 = sub_1E49978DC();
  v41 = v40;
  v43 = v42;
  v44 = sub_1E499785C();
  v46 = v45;
  v48 = v47;
  v49 = v41;
  v50 = v90;
  sub_1E48C1564(v39, v49, v43 & 1);

  v51 = sub_1E49977EC();
  (*(*(v51 - 8) + 56))(v25, 1, 1, v51);
  sub_1E49977FC();
  sub_1E48C1338(v25, &qword_1ECF80FB8, &qword_1E49A4FB8);
  v52 = sub_1E499788C();
  v93 = v53;
  v94 = v52;
  v55 = v54;
  v95 = v56;
  v57 = v89;

  v58 = v44;
  v59 = v91;
  sub_1E48C1564(v58, v46, v48 & 1);

  KeyPath = swift_getKeyPath();
  v101 = *(v57 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F88, &qword_1E49A4F88);
  v60 = sub_1E4997B5C();
  v61 = 1;
  if ((v100 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v60, 1);
    *(&v83 - 2) = v57;
    sub_1E49977BC();
    v62 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80FD0, &qword_1E49A5000);
    sub_1E48C1B44(&qword_1ECF80FD8, &qword_1ECF80FD0, &qword_1E49A5000);
    v63 = v85;
    sub_1E499718C();
    sub_1E4997CEC();
    sub_1E499722C();
    v64 = v84;
    v65 = &v63[*(v84 + 36)];
    v66 = v102;
    *v65 = v101;
    *(v65 + 1) = v66;
    *(v65 + 2) = v103;
    v67 = v86;
    sub_1E499773C();
    v68 = sub_1E4968074();
    v69 = v83;
    MEMORY[0x1E691B180](v67, v64, v68, 16.0);
    (*(v87 + 8))(v67, v88);
    v70 = v63;
    v55 = v62;
    sub_1E48C1338(v70, &qword_1ECF80FA0, &qword_1E49A4FA0);
    (*(v59 + 32))(v99, v69, v50);
    v61 = 0;
  }

  v71 = v99;
  (*(v59 + 56))(v99, v61, 1, v50);
  v72 = v96;
  sub_1E48C12D0(v34, v96, &qword_1ECF80FC0, &qword_1E49A4FC0);
  v73 = v97;
  sub_1E48C12D0(v71, v97, &qword_1ECF80FB0, &qword_1E49A4FB0);
  v74 = v98;
  sub_1E48C12D0(v72, v98, &qword_1ECF80FC0, &qword_1E49A4FC0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80FF8, &qword_1E49A5010);
  v76 = v74 + *(v75 + 48);
  v78 = v94;
  v77 = v95;
  v91 = v34;
  v80 = KeyPath;
  v79 = v93;
  *v76 = v94;
  *(v76 + 8) = v79;
  v81 = v55 & 1;
  *(v76 + 16) = v81;
  *(v76 + 24) = v77;
  *(v76 + 32) = v80;
  *(v76 + 40) = 2;
  sub_1E48C12D0(v73, v74 + *(v75 + 64), &qword_1ECF80FB0, &qword_1E49A4FB0);
  sub_1E48C14F4(v78, v79, v81);

  sub_1E48C1338(v71, &qword_1ECF80FB0, &qword_1E49A4FB0);
  sub_1E48C1338(v91, &qword_1ECF80FC0, &qword_1E49A4FC0);
  sub_1E48C1338(v73, &qword_1ECF80FB0, &qword_1E49A4FB0);
  sub_1E48C1564(v78, v79, v81);

  return sub_1E48C1338(v72, &qword_1ECF80FC0, &qword_1E49A4FC0);
}

uint64_t sub_1E4962C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v55 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81000, &qword_1E49A5018);
  v2 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51, v3);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v47 - v8;
  v10 = type metadata accessor for ColorProviderGraph(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81008, &qword_1E49A5020);
  v52 = *(v15 - 8);
  v53 = v15;
  v16 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v54 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v49 = &v47 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81010, &qword_1E49A5028);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8, v24);
  v50 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v47 - v28;
  v47 = &v47 - v28;
  sub_1E4963160(&v47 - v28);
  type metadata accessor for SolarViewModel();
  sub_1E496816C(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel);
  *v14 = sub_1E49971EC();
  v14[8] = v30 & 1;
  LOBYTE(v56) = 1;
  sub_1E4997B4C();
  v31 = v58;
  v14[16] = v57;
  *(v14 + 3) = v31;
  v32 = *(v10 + 24);
  v33 = type metadata accessor for ColorProviderPoint(0);
  (*(*(v33 - 8) + 56))(v9, 1, 1, v33);
  sub_1E48C12D0(v9, v5, &qword_1ECF81000, &qword_1E49A5018);
  sub_1E4997B4C();
  sub_1E48C1338(v9, &qword_1ECF81000, &qword_1E49A5018);
  v34 = &v14[*(v10 + 28)];
  v56 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81018, &qword_1E49A5030);
  sub_1E4997B4C();
  v35 = v58;
  *v34 = v57;
  *(v34 + 1) = v35;
  sub_1E4961FDC(*v48, *(v48 + 8), 0x65695672616C6F53, 0xEE006C65646F4D77);
  sub_1E496816C(&qword_1ECF81020, type metadata accessor for ColorProviderGraph);
  v36 = v49;
  sub_1E499793C();

  sub_1E4968268(v14, type metadata accessor for ColorProviderGraph);
  v37 = v29;
  v38 = v50;
  sub_1E48C12D0(v37, v50, &qword_1ECF81010, &qword_1E49A5028);
  v39 = v52;
  v40 = v53;
  v41 = *(v52 + 16);
  v42 = v54;
  v41(v54, v36, v53);
  v43 = v55;
  sub_1E48C12D0(v38, v55, &qword_1ECF81010, &qword_1E49A5028);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81028, &qword_1E49A5038);
  v41((v43 + *(v44 + 48)), v42, v40);
  v45 = *(v39 + 8);
  v45(v36, v40);
  sub_1E48C1338(v47, &qword_1ECF81010, &qword_1E49A5028);
  v45(v42, v40);
  return sub_1E48C1338(v38, &qword_1ECF81010, &qword_1E49A5028);
}

uint64_t sub_1E4963160@<X0>(char *a1@<X8>)
{
  v61 = a1;
  v2 = sub_1E49975FC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81030, &unk_1E49A5040);
  v60 = *(v5 - 8);
  v6 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v63 = &v51 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v51 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v51 - v19;
  v71 = *(v1 + 40);
  v69 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF803F0, &qword_1E49A24B8);
  sub_1E4997B7C();
  v69 = v67;
  v70 = v68;
  v65 = xmmword_1E49A4E10;
  v21 = swift_allocObject();
  v22 = *(v1 + 48);
  *(v21 + 48) = *(v1 + 32);
  *(v21 + 64) = v22;
  *(v21 + 80) = *(v1 + 64);
  *(v21 + 96) = *(v1 + 80);
  v23 = *(v1 + 16);
  *(v21 + 16) = *v1;
  *(v21 + 32) = v23;
  sub_1E49681BC(v1, &v67);
  sub_1E49681F4();
  v64 = v20;
  v24 = MEMORY[0x1E69E63B0];
  sub_1E4997C1C();
  sub_1E49975EC();
  sub_1E49975DC();
  v67 = v71;
  result = sub_1E4997B5C();
  if ((v69 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*&v69 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*&v69 < 9.22337204e18)
  {
    *&v67 = *&v69;
    sub_1E49975BC();
    sub_1E49975DC();
    sub_1E499761C();
    v58 = sub_1E49978BC();
    v57 = v26;
    v28 = v27;
    v59 = v29;
    v67 = *(v1 + 16);
    v68 = *(v1 + 32);
    v69 = *(v1 + 16);
    v70 = *(v1 + 32);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81040, &unk_1E49A5050);
    sub_1E4997C5C();
    v69 = v65;
    v70 = v66;
    v65 = xmmword_1E49A4E20;
    v56 = v16;
    sub_1E4997C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB58, &unk_1E499E500);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1E499B670;
    v69 = v67;
    v70 = v68;
    MEMORY[0x1E691B460](&v65, v30);
    v32 = v65;
    v33 = MEMORY[0x1E69E6438];
    *(v31 + 56) = v24;
    *(v31 + 64) = v33;
    *(v31 + 32) = v32;
    *&v69 = sub_1E4997EFC();
    *(&v69 + 1) = v34;
    sub_1E48D2EE4();
    v53 = sub_1E49978DC();
    v52 = v35;
    v36 = v9;
    v62 = v9;
    v54 = v37;
    v55 = v38;
    v39 = v60;
    v40 = v61;
    v41 = *(v60 + 16);
    v42 = v63;
    v41(v63, v64, v5);
    v28 &= 1u;
    LOBYTE(v69) = v28;
    v41(v36, v16, v5);
    v41(v40, v42, v5);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81048, &qword_1E49A5060);
    v44 = &v40[v43[12]];
    v45 = v58;
    v46 = v57;
    *v44 = v58;
    *(v44 + 1) = v46;
    v44[16] = v28;
    *(v44 + 3) = v59;
    v41(&v40[v43[16]], v62, v5);
    v47 = &v40[v43[20]];
    v48 = v53;
    v49 = v52;
    *v47 = v53;
    *(v47 + 1) = v49;
    LOBYTE(v43) = v54 & 1;
    v47[16] = v54 & 1;
    *(v47 + 3) = v55;
    sub_1E48C14F4(v45, v46, v28);

    sub_1E48C14F4(v48, v49, v43);
    v50 = *(v39 + 8);

    v50(v56, v5);
    v50(v64, v5);
    sub_1E48C1564(v48, v49, v43);

    v50(v62, v5);
    sub_1E48C1564(v45, v46, v69);

    return (v50)(v63, v5);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1E4963838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81050, &qword_1E49A50C0);
  v3 = *(v41 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v41, v5);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81058, &qword_1E49A50C8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v39 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v38 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v38 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v38 - v25;
  v44 = *(a1 + 56);
  v45 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F88, &qword_1E49A4F88);
  sub_1E4997B5C();
  if (v43 == 1)
  {
    sub_1E4963CB0(sub_1E49682C8, sub_1E49682D0, v10);
    sub_1E48C15C8(v10, v26, &qword_1ECF81050, &qword_1E49A50C0);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = *(v3 + 56);
  v29 = 1;
  v28(v26, v27, 1, v41);
  sub_1E4963CB0(sub_1E49684D4, sub_1E49684DC, v42);
  v44 = v45;
  sub_1E4997B5C();
  if ((v43 & 1) == 0)
  {
    sub_1E4963CB0(sub_1E49682C8, sub_1E49682D0, v10);
    sub_1E48C15C8(v10, v22, &qword_1ECF81050, &qword_1E49A50C0);
    v29 = 0;
  }

  v30 = v22;
  v28(v22, v29, 1, v41);
  sub_1E48C12D0(v26, v18, &qword_1ECF81058, &qword_1E49A50C8);
  v41 = v26;
  v31 = v18;
  v32 = v42;
  sub_1E48C12D0(v42, v10, &qword_1ECF81050, &qword_1E49A50C0);
  v33 = v22;
  v34 = v39;
  sub_1E48C12D0(v33, v39, &qword_1ECF81058, &qword_1E49A50C8);
  v35 = v40;
  sub_1E48C12D0(v31, v40, &qword_1ECF81058, &qword_1E49A50C8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81060, &qword_1E49A50D0);
  sub_1E48C12D0(v10, v35 + *(v36 + 48), &qword_1ECF81050, &qword_1E49A50C0);
  sub_1E48C12D0(v34, v35 + *(v36 + 64), &qword_1ECF81058, &qword_1E49A50C8);
  sub_1E48C1338(v30, &qword_1ECF81058, &qword_1E49A50C8);
  sub_1E48C1338(v32, &qword_1ECF81050, &qword_1E49A50C0);
  sub_1E48C1338(v41, &qword_1ECF81058, &qword_1E49A50C8);
  sub_1E48C1338(v34, &qword_1ECF81058, &qword_1E49A50C8);
  sub_1E48C1338(v10, &qword_1ECF81050, &qword_1E49A50C0);
  return sub_1E48C1338(v31, &qword_1ECF81058, &qword_1E49A50C8);
}

__n128 sub_1E4963CB0@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v33[1] = a1;
  v33[2] = a2;
  v34 = a3;
  v4 = sub_1E499779C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81068, &qword_1E49A50D8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81070, &qword_1E49A50E0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = v33 - v19;
  v21 = swift_allocObject();
  v22 = *(v3 + 48);
  *(v21 + 48) = *(v3 + 32);
  *(v21 + 64) = v22;
  *(v21 + 80) = *(v3 + 64);
  *(v21 + 96) = *(v3 + 80);
  v23 = *(v3 + 16);
  *(v21 + 16) = *v3;
  *(v21 + 32) = v23;
  v35 = v3;
  sub_1E49681BC(v3, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81078, &qword_1E49A50E8);
  sub_1E49682D8();
  sub_1E4997B9C();
  v24 = sub_1E4997A9C();
  KeyPath = swift_getKeyPath();
  *&v36[0] = v24;
  v26 = sub_1E499723C();
  v27 = &v14[*(v10 + 36)];
  *v27 = KeyPath;
  v27[1] = v26;
  sub_1E499778C();
  sub_1E4968390();
  sub_1E496816C(&qword_1ECF810B0, MEMORY[0x1E697CB70]);
  sub_1E499792C();
  (*(v5 + 8))(v9, v4);
  sub_1E48C1338(v14, &qword_1ECF81068, &qword_1E49A50D8);
  sub_1E4997CEC();
  sub_1E499736C();
  v28 = v34;
  (*(v16 + 32))(v34, v20, v15);
  v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81050, &qword_1E49A50C0) + 36);
  v30 = v36[5];
  *(v29 + 64) = v36[4];
  *(v29 + 80) = v30;
  *(v29 + 96) = v36[6];
  v31 = v36[1];
  *v29 = v36[0];
  *(v29 + 16) = v31;
  result = v36[3];
  *(v29 + 32) = v36[2];
  *(v29 + 48) = result;
  return result;
}

uint64_t sub_1E4964050(uint64_t a1)
{
  v3 = *(a1 + 56);
  v4 = v3;
  v5 = *(&v3 + 1);
  sub_1E48C12D0(&v5, v2, &qword_1ECF810B8, &unk_1E49A5130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F88, &qword_1E49A4F88);
  sub_1E4997B5C();
  v3 = v4;
  v2[0] = !v2[0];
  sub_1E4997B6C();
  return sub_1E48C1338(&v4, &qword_1ECF80F88, &qword_1E49A4F88);
}

uint64_t sub_1E4964110@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1E49985BC();

  v10 = *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F88, &qword_1E49A4F88);
  sub_1E4997B5C();
  if (v9)
  {
    v4 = 1952867692;
  }

  else
  {
    v4 = 0x7468676972;
  }

  if (v9)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1E691B7A0](v4, v5);

  MEMORY[0x1E691B7A0](0x2E6572617571732ELL, 0xEC0000006C6C6966);
  v6 = sub_1E4997ADC();
  sub_1E4997A1C();
  KeyPath = swift_getKeyPath();
  result = sub_1E499723C();
  *a2 = v6;
  a2[1] = KeyPath;
  a2[2] = result;
  return result;
}

uint64_t sub_1E4964248(uint64_t a1)
{
  v3 = *(a1 + 72);
  v4 = v3;
  v5 = *(&v3 + 1);
  sub_1E48C12D0(&v5, v2, &qword_1ECF810B8, &unk_1E49A5130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F88, &qword_1E49A4F88);
  sub_1E4997B5C();
  v3 = v4;
  v2[0] = !v2[0];
  sub_1E4997B6C();
  return sub_1E48C1338(&v4, &qword_1ECF80F88, &qword_1E49A4F88);
}

uint64_t sub_1E4964308@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = *(a1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F88, &qword_1E49A4F88);
  sub_1E4997B5C();
  if (v9)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x6873616C732ELL;
  }

  if (v9)
  {
    v5 = 0xE000000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  MEMORY[0x1E691B7A0](v4, v5);

  MEMORY[0x1E691B7A0](0x6C6C69662ELL, 0xE500000000000000);
  v6 = sub_1E4997ADC();
  v11 = *(a1 + 72);
  sub_1E4997B5C();
  if (v10 == 1)
  {
    sub_1E4997A1C();
  }

  else
  {
    sub_1E4997A2C();
  }

  KeyPath = swift_getKeyPath();
  result = sub_1E499723C();
  *a2 = v6;
  a2[1] = KeyPath;
  a2[2] = result;
  return result;
}

uint64_t sub_1E4964444(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E4961FDC(*a2, *(a2 + 8), 0x65695672616C6F53, 0xEE006C65646F4D77);
  v8 = *(a2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF803F0, &qword_1E49A24B8);
  sub_1E4997B5C();
  if (*(v3 + 32) == v7)
  {
    *(v3 + 32) = v7;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v6);
    sub_1E496816C(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel);
    sub_1E4996FBC();
  }
}

uint64_t sub_1E49645C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v18 - v4;
  v6 = type metadata accessor for CurrentLocationSolarPosition(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  v12 = sub_1E493BCE8();
  v22 = v12;
  v23 = v13;
  v14 = sub_1E4961FDC(*v0, *(v0 + 8), 0x65695672616C6F53, 0xEE006C65646F4D77);
  swift_getKeyPath();
  v21 = v14;
  sub_1E496816C(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel);
  sub_1E4996FCC();

  v15 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarPosition;
  swift_beginAccess();
  sub_1E48C12D0(v14 + v15, v5, &unk_1ECF816F0, &qword_1E49A5090);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1E48C1338(v5, &unk_1ECF816F0, &qword_1E49A5090);
  }

  else
  {
    sub_1E4968DB4(v5, v11, type metadata accessor for CurrentLocationSolarPosition);
    v19 = 10;
    v20 = 0xE100000000000000;
    v16 = sub_1E48F4D00();
    MEMORY[0x1E691B7A0](v16);

    MEMORY[0x1E691B7A0](v19, v20);

    sub_1E4968268(v11, type metadata accessor for CurrentLocationSolarPosition);
    return v22;
  }

  return v12;
}

uint64_t sub_1E49648C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v3;
  v8[4] = *(v1 + 64);
  v9 = *(v1 + 80);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  *a1 = sub_1E49975AC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F68, &qword_1E49A4F68);
  sub_1E49621A4(v8, a1 + *(v5 + 44));
  v6 = sub_1E4997A6C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F70, &qword_1E49A4F70);
  *(a1 + *(result + 36)) = v6;
  return result;
}

id sub_1E49649EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SolarClockFaceDebugHUDUIKitBridgeView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1E4964A78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4964AC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E4964B40@<X0>(char *a1@<X8>)
{
  v159 = a1;
  v2 = type metadata accessor for ColorProviderGraph(0);
  v3 = *(v2 - 8);
  v181 = v2 - 8;
  v156 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v157 = v6;
  v158 = v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81130, &qword_1E49A5280);
  v149 = *(v151 - 8);
  v7 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v151, v8);
  v148 = v141 - v9;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81138, &qword_1E49A5288);
  v152 = *(v153 - 8);
  v10 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v153, v11);
  v150 = v141 - v12;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81140, &qword_1E49A5290);
  v154 = *(v155 - 8);
  v13 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v155, v14);
  v169 = v141 - v15;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81148, &qword_1E49A5298);
  v173 = *(v174 - 8);
  v16 = v173[8];
  MEMORY[0x1EEE9AC00](v174, v17);
  v185 = v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v184 = v141 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81150, &qword_1E49A52A0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8, v24);
  v147 = v141 - v25;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81158, &qword_1E49A52A8);
  v143 = *(v144 - 8);
  v26 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v144, v27);
  v142 = v141 - v28;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81160, &qword_1E49A52B0);
  v161 = *(v162 - 8);
  v29 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v162, v30);
  v145 = v141 - v31;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81168, &qword_1E49A52B8);
  v171 = *(v172 - 8);
  v32 = v171[8];
  MEMORY[0x1EEE9AC00](v172, v33);
  v170 = v141 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v183 = v141 - v37;
  v38 = type metadata accessor for ColorProviderPoint(0);
  v179 = *(v38 - 8);
  v180 = v38;
  v39 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v38, v40);
  v176 = (v141 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81000, &qword_1E49A5018);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8, v44);
  v178 = v141 - v45;
  v46 = sub_1E49975FC();
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8, v48);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81170, &qword_1E49A52C0);
  v167 = *(v168 - 8);
  v49 = v167[8];
  MEMORY[0x1EEE9AC00](v168, v50);
  v166 = v141 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = v141 - v54;
  sub_1E499760C();
  v177 = v1;
  v57 = *(v1 + 24);
  LOBYTE(v190) = *(v1 + 16);
  v56 = v190;
  v191 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F88, &qword_1E49A4F88);
  sub_1E4997B7C();
  v165 = v55;
  v58 = v178;
  sub_1E4997C2C();
  sub_1E49975EC();
  sub_1E49975DC();
  LOBYTE(v186) = v56;
  v187 = v57;
  sub_1E4997B5C();
  sub_1E49975CC();

  sub_1E49975DC();
  sub_1E499761C();
  v163 = sub_1E49978BC();
  v182 = v59;
  v146 = v60;
  v164 = v61;
  v62 = *(v181 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF810E0, &unk_1E49A5160);
  sub_1E4997B5C();
  if ((*(v179 + 48))(v58, 1, v180))
  {
    v63 = sub_1E48C1338(v58, &qword_1ECF81000, &qword_1E49A5018);
    v180 = 0;
    v181 = 0;
    v178 = 0;
    v179 = 0;
  }

  else
  {
    v65 = v176;
    sub_1E4968F24(v58, v176, type metadata accessor for ColorProviderPoint);
    sub_1E48C1338(v58, &qword_1ECF81000, &qword_1E49A5018);
    v66 = sub_1E496601C();
    v68 = v67;
    sub_1E4968268(v65, type metadata accessor for ColorProviderPoint);
    v186 = v66;
    v187 = v68;
    sub_1E48D2EE4();
    v69 = sub_1E49978DC();
    v71 = v70;
    v73 = v72;
    v74 = sub_1E499785C();
    v76 = v75;
    v78 = v77;
    sub_1E48C1564(v69, v71, v73 & 1);

    sub_1E499781C();
    v79 = sub_1E499788C();
    v81 = v80;
    LOBYTE(v71) = v82;
    v84 = v83;

    sub_1E48C1564(v74, v76, v78 & 1);

    v180 = v81;
    v181 = v79;
    v178 = (v71 & 1);
    sub_1E48C14F4(v79, v81, v71 & 1);
    v179 = v84;
  }

  MEMORY[0x1EEE9AC00](v63, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81178, &qword_1E49A52C8);
  sub_1E4968AF4();
  v85 = v142;
  sub_1E499712C();
  v186 = &unk_1F5E82D30;
  v86 = sub_1E499715C();
  v87 = *(v86 - 8);
  v176 = *(v87 + 56);
  v175 = v87 + 56;
  v88 = v147;
  v160 = v86;
  (v176)(v147, 1, 1, v86);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF811A0, &qword_1E49A52E0);
  v141[1] = MEMORY[0x1E695B218];
  v90 = sub_1E48C1B44(&qword_1ECF811A8, &qword_1ECF81158, &qword_1E49A52A8);
  v91 = sub_1E4968C7C(&qword_1ECF811B0, &qword_1ECF811A0, &qword_1E49A52E0);
  v92 = v145;
  v93 = v144;
  sub_1E49978FC();
  sub_1E48C1338(v88, &qword_1ECF81150, &qword_1E49A52A0);
  (*(v143 + 8))(v85, v93);
  v190 = sub_1E4966A4C();
  (v176)(v88, 1, 1, v86);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF811B8, &qword_1E49A52E8);
  v186 = v93;
  v187 = v89;
  v188 = v90;
  v189 = v91;
  v143 = MEMORY[0x1E695B368];
  swift_getOpaqueTypeConformance2();
  v141[0] = sub_1E4968C7C(&qword_1ECF811C0, &qword_1ECF811B8, &qword_1E49A52E8);
  v94 = v162;
  sub_1E49978EC();
  sub_1E48C1338(v88, &qword_1ECF81150, &qword_1E49A52A0);

  (*(v161 + 8))(v92, v94);
  sub_1E499760C();
  v161 = sub_1E49978BC();
  v144 = v95;
  LODWORD(v145) = v96;
  v162 = v97;
  MEMORY[0x1EEE9AC00](v161, v95);
  v98 = v177;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF811C8, &qword_1E49A52F0);
  sub_1E4968CEC();
  v99 = v148;
  sub_1E499712C();
  v186 = &unk_1F5E82D60;
  (v176)(v88, 1, 1, v160);
  v100 = sub_1E48C1B44(&qword_1ECF811D8, &qword_1ECF81130, &qword_1E49A5280);
  v101 = v150;
  v102 = v151;
  sub_1E49978FC();
  sub_1E48C1338(v88, &qword_1ECF81150, &qword_1E49A52A0);
  (*(v149 + 8))(v99, v102);
  v190 = sub_1E4966A4C();
  (v176)(v88, 1, 1, v160);
  v186 = v102;
  v187 = v89;
  v188 = v100;
  v189 = v91;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v104 = v153;
  v105 = v142;
  v106 = v141[0];
  sub_1E49978EC();
  sub_1E48C1338(v88, &qword_1ECF81150, &qword_1E49A52A0);

  (*(v152 + 8))(v101, v104);
  v107 = sub_1E4961FDC(*v98, *(v98 + 8), 0x65695672616C6F53, 0xEE006C65646F4D77);
  swift_getKeyPath();
  v186 = v107;
  sub_1E496816C(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel);
  sub_1E4996FCC();

  v108 = *(v107 + 24);

  v190 = v108;
  v109 = v158;
  sub_1E4968F24(v98, v158, type metadata accessor for ColorProviderGraph);
  v110 = (*(v156 + 80) + 16) & ~*(v156 + 80);
  v111 = swift_allocObject();
  sub_1E4968DB4(v109, v111 + v110, type metadata accessor for ColorProviderGraph);
  v186 = v104;
  v187 = v105;
  v188 = OpaqueTypeConformance2;
  v189 = v106;
  swift_getOpaqueTypeConformance2();
  v112 = v155;
  v113 = v169;
  sub_1E499799C();

  (*(v154 + 8))(v113, v112);
  v114 = v167[2];
  v115 = v166;
  v116 = v168;
  v114(v166, v165, v168);
  LOBYTE(v186) = v146 & 1;
  LOBYTE(v105) = v146 & 1;
  LODWORD(v175) = v146 & 1;
  v176 = v171[2];
  v117 = v170;
  v118 = v172;
  (v176)(v170, v183, v172);
  v177 = v173[2];
  v177(v185, v184, v174);
  v119 = v159;
  v114(v159, v115, v116);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF811E0, &qword_1E49A5320);
  v121 = &v119[v120[12]];
  v122 = v163;
  v123 = v182;
  *v121 = v163;
  *(v121 + 1) = v123;
  v121[16] = v105;
  *(v121 + 3) = v164;
  v124 = &v119[v120[16]];
  v125 = v180;
  *v124 = v181;
  *(v124 + 1) = v125;
  v126 = v179;
  *(v124 + 2) = v178;
  *(v124 + 3) = v126;
  (v176)(&v119[v120[20]], v117, v118);
  v127 = &v119[v120[24]];
  v128 = v161;
  v129 = v144;
  *v127 = v161;
  *(v127 + 1) = v129;
  LODWORD(v105) = v145 & 1;
  v127[16] = v105;
  LODWORD(v176) = v105;
  *(v127 + 3) = v162;
  v130 = &v119[v120[28]];
  v131 = v174;
  v177(v130, v185, v174);
  sub_1E48C14F4(v122, v182, v175);

  v133 = v180;
  v132 = v181;
  LOBYTE(v109) = v178;
  v134 = v179;
  sub_1E4968E9C(v181, v180, v178, v179);
  sub_1E48C14F4(v128, v129, v105);

  sub_1E4968EE0(v132, v133, v109, v134);
  v135 = v173[1];
  v135(v184, v131);
  v136 = v171[1];
  v137 = v172;
  v136(v183, v172);
  v138 = v167[1];
  v139 = v168;
  v138(v165, v168);
  v135(v185, v131);
  sub_1E48C1564(v161, v129, v176);

  v136(v170, v137);
  sub_1E4968EE0(v181, v180, v178, v179);
  sub_1E48C1564(v163, v182, v186);

  return (v138)(v166, v139);
}

uint64_t sub_1E496601C()
{
  sub_1E49985BC();

  sub_1E4967D80();
  MEMORY[0x1E691B7A0]();

  MEMORY[0x1E691B7A0](3822368, 0xE300000000000000);
  v0 = type metadata accessor for ColorProviderPoint(0);
  v1 = *(v0 + 20);
  sub_1E4967D80();
  MEMORY[0x1E691B7A0]();

  MEMORY[0x1E691B7A0](3818016, 0xE300000000000000);
  v2 = *(v0 + 24);
  sub_1E4967D80();
  MEMORY[0x1E691B7A0]();

  MEMORY[0x1E691B7A0](10, 0xE100000000000000);
  sub_1E49985BC();

  v3 = sub_1E4967EB0();
  MEMORY[0x1E691B7A0](v3);

  MEMORY[0x1E691B7A0](3822368, 0xE300000000000000);
  v4 = sub_1E4967EB0();
  MEMORY[0x1E691B7A0](v4);

  MEMORY[0x1E691B7A0](3818016, 0xE300000000000000);
  v5 = sub_1E4967EB0();
  MEMORY[0x1E691B7A0](v5);

  MEMORY[0x1E691B7A0](0x202D206573696F4ELL, 0xEA00000000003A48);

  return 0x202D2065756C6156;
}

uint64_t sub_1E496621C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for ColorProviderGraph(0) + 28));
  v3 = *v1;
  v4 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF811F0, &qword_1E49A5330);
  sub_1E4997B5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81018, &qword_1E49A5030);
  sub_1E4996DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81190, &qword_1E49A52D0);
  sub_1E48C1B44(&qword_1ECF81210, &qword_1ECF81018, &qword_1E49A5030);
  sub_1E4968B78();
  sub_1E496816C(&qword_1ECF81218, type metadata accessor for ColorProviderPoint);
  return sub_1E4997C7C();
}

uint64_t sub_1E4966378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = type metadata accessor for ColorProviderPoint(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81230, &qword_1E49A5390);
  v8 = *(type metadata accessor for ColorProviderPoint.Sample(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E499E4C0;
  v12 = v11 + v10;
  sub_1E4968F24(a1, v12, type metadata accessor for ColorProviderPoint.Sample);
  sub_1E4968F24(a1 + *(v4 + 28), v12 + v9, type metadata accessor for ColorProviderPoint.Sample);
  sub_1E4968F24(a1 + *(v4 + 32), v12 + 2 * v9, type metadata accessor for ColorProviderPoint.Sample);
  v23 = v11;
  sub_1E4968F24(a1, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ColorProviderPoint);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1E4968DB4(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for ColorProviderPoint);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81238, &qword_1E49A5398);
  sub_1E4996DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81240, &qword_1E49A53A0);
  sub_1E48C1B44(&qword_1ECF81248, &qword_1ECF81238, &qword_1E49A5398);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF81198, &qword_1E49A52D8);
  v19 = sub_1E499714C();
  v20 = MEMORY[0x1E69815C0];
  v21 = MEMORY[0x1E695B2E0];
  v22 = MEMORY[0x1E6981568];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = v15;
  v20 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1E496816C(&qword_1ECF81250, type metadata accessor for ColorProviderPoint.Sample);
  return sub_1E4997C7C();
}

uint64_t sub_1E49666F0@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a1;
  v32 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81220, &qword_1E49A5380);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v27 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v10 = sub_1E499714C();
  v29 = *(v10 - 8);
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81198, &qword_1E49A52D8);
  v16 = *(v15 - 8);
  v30 = v15;
  v31 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v27 - v19;
  sub_1E499760C();
  LODWORD(v33) = *(a2 + *(type metadata accessor for ColorProviderPoint(0) + 28));
  sub_1E499711C();

  sub_1E499760C();
  v21 = v28;
  LODWORD(v33) = *v28;
  sub_1E499711C();

  sub_1E499713C();
  v33 = *(v21 + 1);
  v22 = MEMORY[0x1E69815C0];
  v23 = MEMORY[0x1E695B2E0];
  v24 = MEMORY[0x1E6981568];
  sub_1E499710C();
  (*(v29 + 8))(v14, v10);
  v33 = v10;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v30;
  sub_1E49970FC();
  return (*(v31 + 8))(v20, v25);
}

uint64_t sub_1E4966A4C()
{
  v1 = type metadata accessor for ColorProviderPoint(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v28 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v28 - v13;
  v15 = (v0 + *(type metadata accessor for ColorProviderGraph(0) + 28));
  v16 = *v15;
  v17 = v15[1];
  v30 = *v15;
  v31 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF811F0, &qword_1E49A5330);
  sub_1E4997B5C();
  v18 = *(v29 + 16);

  v19 = 0.0;
  if (v18 >= 3)
  {
    v30 = v16;
    v31 = v17;
    result = sub_1E4997B5C();
    if (*(v29 + 16) < 2uLL)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v21 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    sub_1E4968F24(v29 + *(v2 + 72) + v21, v14, type metadata accessor for ColorProviderPoint);

    v22 = *&v14[*(v1 + 28)];
    sub_1E4968268(v14, type metadata accessor for ColorProviderPoint);
    v30 = v16;
    v31 = v17;
    result = sub_1E4997B5C();
    if (!*(v29 + 16))
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    sub_1E4968F24(v29 + v21, v10, type metadata accessor for ColorProviderPoint);

    v23 = *&v10[*(v1 + 28)];
    sub_1E4968268(v10, type metadata accessor for ColorProviderPoint);
    v19 = (v22 - v23) * 110.0;
  }

  v30 = v16;
  v31 = v17;
  sub_1E4997B5C();
  v24 = *(v29 + 16);

  if (v24 < 0x6F)
  {
    v30 = v16;
    v31 = v17;
    sub_1E4997B5C();
    if (*(v29 + 16))
    {
      sub_1E4968F24(v29 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v6, type metadata accessor for ColorProviderPoint);

      v27 = *&v6[*(v1 + 28)];
      sub_1E4968268(v6, type metadata accessor for ColorProviderPoint);
    }

    else
    {

      v27 = 0.0;
    }

    goto LABEL_12;
  }

  v30 = v16;
  v31 = v17;
  sub_1E4997B5C();
  v25 = *(v29 + 16);

  v30 = v16;
  v31 = v17;
  result = sub_1E4997B5C();
  v26 = v25 - 110;
  if (v25 < 0x6E)
  {
    goto LABEL_14;
  }

  if (v26 < *(v29 + 16))
  {
    sub_1E4968F24(v29 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v26, v14, type metadata accessor for ColorProviderPoint);

    v27 = *&v14[*(v1 + 28)];
    sub_1E4968268(v14, type metadata accessor for ColorProviderPoint);
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81228, &qword_1E49A5388);
    result = swift_allocObject();
    *(result + 16) = xmmword_1E499A180;
    *(result + 32) = v27;
    *(result + 36) = v19 + v27;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1E4966E44(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for ColorProviderGraph(0) + 28));
  v3 = *v1;
  v4 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF811F0, &qword_1E49A5330);
  sub_1E4997B5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81018, &qword_1E49A5030);
  sub_1E4996DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81198, &qword_1E49A52D8);
  sub_1E48C1B44(&qword_1ECF81210, &qword_1ECF81018, &qword_1E49A5030);
  sub_1E499714C();
  swift_getOpaqueTypeConformance2();
  sub_1E496816C(&qword_1ECF81218, type metadata accessor for ColorProviderPoint);
  return sub_1E4997C7C();
}

uint64_t sub_1E4966FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81220, &qword_1E49A5380);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  v8 = sub_1E499714C();
  v15 = *(v8 - 8);
  v16 = v8;
  v9 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E499760C();
  LODWORD(v18) = *(a1 + *(type metadata accessor for ColorProviderPoint(0) + 28));
  sub_1E499711C();

  sub_1E499760C();
  LODWORD(v18) = *(a1 + 16);
  sub_1E499711C();

  sub_1E499713C();
  v18 = *(a1 + 8);
  v13 = v16;
  sub_1E499710C();
  return (*(v15 + 8))(v12, v13);
}

uint64_t sub_1E4967248(uint64_t a1, double *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81000, &qword_1E49A5018);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for ColorProviderPoint(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v44 - v22;
  v24 = *a2;
  sub_1E49676BC(&v53);
  if (!*(&v54 + 1))
  {
    return sub_1E48C1338(&v53, &qword_1ECF811E8, &qword_1E49A5328);
  }

  v46 = v14;
  v49 = v9;
  v61[4] = v57;
  v61[5] = v58;
  v61[6] = v59;
  v62 = v60;
  v61[0] = v53;
  v61[1] = v54;
  v61[2] = v55;
  v61[3] = v56;
  sub_1E48CD45C(v61, &v53);
  v25 = v24;
  sub_1E496793C(&v53, v23, v25);
  v26 = type metadata accessor for ColorProviderGraph(0);
  v27 = *(v26 + 28);
  v50 = a3;
  v28 = (a3 + v27);
  v29 = v28[1];
  v44 = *v28;
  v45 = v26;
  *&v53 = v44;
  *(&v53 + 1) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF811F0, &qword_1E49A5330);
  sub_1E4997B5C();
  v30 = v52;
  sub_1E4968F24(v23, v19, type metadata accessor for ColorProviderPoint);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = sub_1E49069FC(0, v30[2] + 1, 1, v30);
  }

  v32 = v30[2];
  v31 = v30[3];
  v47 = v23;
  v48 = v13;
  if (v32 >= v31 >> 1)
  {
    v30 = sub_1E49069FC(v31 > 1, v32 + 1, 1, v30);
  }

  v30[2] = v32 + 1;
  v33 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v34 = *(v15 + 72);
  sub_1E4968DB4(v19, v30 + v33 + v34 * v32, type metadata accessor for ColorProviderPoint);
  if (v32 >= 0x64)
  {
    v35 = v30[2];
    if (v35)
    {
      v52 = v30;
      if ((v35 - 1) <= v30[3] >> 1)
      {
LABEL_9:
        sub_1E496EC18(0, 1, 0);
        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    v30 = sub_1E49069FC(1uLL, v35, 1, v30);
    v52 = v30;
    goto LABEL_9;
  }

LABEL_10:
  v36 = v44;
  *&v53 = v44;
  *(&v53 + 1) = v29;
  v51 = v30;
  sub_1E4997B6C();
  *&v53 = v36;
  *(&v53 + 1) = v29;
  sub_1E4997B5C();
  v37 = v51[2];
  if (v37)
  {
    v38 = v51 + v33 + (v37 - 1) * v34;
    v39 = v48;
    sub_1E4968F24(v38, v48, type metadata accessor for ColorProviderPoint);
    v40 = 0;
    v41 = v49;
  }

  else
  {
    v40 = 1;
    v41 = v49;
    v39 = v48;
  }

  (*(v15 + 56))(v39, v40, 1, v46);
  v43 = *(v45 + 24);
  sub_1E48C12D0(v39, v41, &qword_1ECF81000, &qword_1E49A5018);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF810E0, &unk_1E49A5160);
  sub_1E4997B6C();
  sub_1E48C1338(v39, &qword_1ECF81000, &qword_1E49A5018);
  sub_1E4968268(v47, type metadata accessor for ColorProviderPoint);
  return sub_1E4968F8C(v61);
}

uint64_t sub_1E49676BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  LOBYTE(v9[0]) = *(v1 + 16);
  v9[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F88, &qword_1E49A4F88);
  sub_1E4997B5C();
  v4 = sub_1E4961FDC(*v1, *(v1 + 8), 0x65695672616C6F53, 0xEE006C65646F4D77);
  if (LOBYTE(v12[0]) == 1)
  {
    swift_getKeyPath();
    v9[0] = v4;
    sub_1E496816C(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel);
    sub_1E4996FCC();

    v5 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__colorPalette;
    swift_beginAccess();
    sub_1E48C12D0(v4 + v5, v9, &qword_1ECF801E0, &qword_1E49A5370);

    if (v10)
    {
      v7 = &v11;
      goto LABEL_6;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  v9[0] = v4;
  sub_1E496816C(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel);
  sub_1E4996FCC();

  v8 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__colorPalette;
  swift_beginAccess();
  sub_1E48C12D0(v4 + v8, v9, &qword_1ECF801E0, &qword_1E49A5370);

  if (!v10)
  {
    goto LABEL_10;
  }

  v7 = v9;
LABEL_6:
  sub_1E48CD210(v7, v12);
  sub_1E4920094(v9);
  sub_1E48B7448(v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81208, &qword_1E49A5378);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *(a1 + 112) = 0;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_1E496793C@<X0>(void *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v6 = type metadata accessor for ColorProviderPoint.Sample(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v53[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v53[-v13 - 8];
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v53[-v17 - 8];
  v19 = type metadata accessor for ColorProviderPoint(0);
  v20 = a2 + v19[8];
  sub_1E4996DAC();
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v23 = (*(v22 + 8))(v21, v22);
  v24 = a1[8];
  v25 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v24);
  v26 = (*(v25 + 8))(v24, v25);
  v27 = a1[13];
  v28 = a1[14];
  __swift_project_boxed_opaque_existential_1(a1 + 10, v27);
  v29 = (*(v28 + 8))(v27, v28);
  *(a2 + v19[7]) = a3;
  v30 = sub_1E4997A0C();
  sub_1E48CD210(a1, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF811F8, &qword_1E49A5338);
  if (swift_dynamicCast())
  {
    v31 = __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
    v32 = *v31;
    v33 = *(v31 + 2);
    noise2();
    v35 = v34;
    sub_1E4968FE0(&v54);
  }

  else
  {
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    sub_1E48C1338(&v54, &qword_1ECF81200, &qword_1E49A5340);
    v35 = 0;
  }

  *v18 = v23;
  *(v18 + 1) = v30;
  *(v18 + 4) = v35;
  v36 = &v18[*(v6 + 28)];
  sub_1E4996DAC();
  sub_1E4968DB4(v18, a2, type metadata accessor for ColorProviderPoint.Sample);
  v37 = sub_1E4997A0C();
  sub_1E48CD210((a1 + 5), v53);
  if (swift_dynamicCast())
  {
    v38 = __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
    v39 = *v38;
    v40 = *(v38 + 2);
    noise2();
    v42 = v41;
    sub_1E4968FE0(&v54);
  }

  else
  {
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    sub_1E48C1338(&v54, &qword_1ECF81200, &qword_1E49A5340);
    v42 = 0;
  }

  *v14 = v26;
  *(v14 + 1) = v37;
  *(v14 + 4) = v42;
  v43 = &v14[*(v6 + 28)];
  sub_1E4996DAC();
  sub_1E4968DB4(v14, a2 + v19[5], type metadata accessor for ColorProviderPoint.Sample);
  v44 = sub_1E4997A0C();
  sub_1E48CD210((a1 + 10), v53);
  if (swift_dynamicCast())
  {
    v45 = __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
    v46 = *v45;
    v47 = *(v45 + 2);
    noise2();
    v49 = v48;
    sub_1E4968FE0(&v54);
  }

  else
  {
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    sub_1E48C1338(&v54, &qword_1ECF81200, &qword_1E49A5340);
    v49 = 0;
  }

  *v10 = v29;
  *(v10 + 1) = v44;
  *(v10 + 4) = v49;
  v50 = &v10[*(v6 + 28)];
  sub_1E4996DAC();
  sub_1E4968F8C(a1);
  return sub_1E4968DB4(v10, a2 + v19[6], type metadata accessor for ColorProviderPoint.Sample);
}

void sub_1E4967D80()
{
  v1 = roundf(*v0 * 100.0);
  if ((LODWORD(v1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v1 <= -9.2234e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v1 >= 9.2234e18)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v2 = v1;
  if (v1 < 0)
  {
    v3 = __OFSUB__(0, v2);
    v2 = -v2;
    if (v3)
    {
      goto LABEL_22;
    }
  }

  if (v2 >= 10)
  {
    v4 = 0;
  }

  else
  {
    v4 = 48;
  }

  if (v2 >= 10)
  {
    v5 = 0xE000000000000000;
  }

  else
  {
    v5 = 0xE100000000000000;
  }

  if (v2 >= 100)
  {
    v6 = 0;
  }

  else
  {
    v6 = 48;
  }

  if (v2 >= 100)
  {
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = 0xE100000000000000;
  }

  MEMORY[0x1E691B7A0](v4, v5);

  MEMORY[0x1E691B7A0](v6, v7);

  v8 = sub_1E49987FC();
  MEMORY[0x1E691B7A0](v8);
}

uint64_t sub_1E4967EB0()
{
  v1 = *(v0 + 16);
  if (v1 >= 0.0)
  {
    v2 = 0xE100000000000000;
  }

  else
  {
    v2 = 0xE000000000000000;
  }

  MEMORY[0x1E691B7A0](32 * (v1 >= 0.0), v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB58, &unk_1E499E500);
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E6448];
  *(v3 + 16) = xmmword_1E499B670;
  v5 = MEMORY[0x1E69E64A8];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = v1;
  v6 = sub_1E4997EFC();
  MEMORY[0x1E691B7A0](v6);

  return 0;
}

uint64_t sub_1E4967F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1E4996DBC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1E4967FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1E4996DBC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_1E4968074()
{
  result = qword_1ECF80FE0;
  if (!qword_1ECF80FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80FA0, &qword_1E49A4FA0);
    sub_1E48C1B44(&qword_1ECF80FE8, &qword_1ECF80FF0, &qword_1E49A5008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80FE0);
  }

  return result;
}

uint64_t sub_1E496816C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E49681F4()
{
  result = qword_1ECF81038;
  if (!qword_1ECF81038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF81038);
  }

  return result;
}

uint64_t sub_1E4968268(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E49682D8()
{
  result = qword_1ECF81080;
  if (!qword_1ECF81080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF81078, &qword_1E49A50E8);
    sub_1E48C1B44(&qword_1ECF81088, &qword_1ECF81090, &qword_1E49A50F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF81080);
  }

  return result;
}

unint64_t sub_1E4968390()
{
  result = qword_1ECF81098;
  if (!qword_1ECF81098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF81068, &qword_1E49A50D8);
    sub_1E48C1B44(&qword_1ECF810A0, &qword_1ECF810A8, &qword_1E49A5128);
    sub_1E48C1B44(&qword_1ECF81088, &qword_1ECF81090, &qword_1E49A50F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF81098);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1E49684E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for SolarViewModel();
  sub_1E496816C(&qword_1ECF7F2F0, type metadata accessor for SolarViewModel);
  v8 = sub_1E49971EC();
  v14 = v9 & 1;
  sub_1E4997B4C();
  sub_1E4997B4C();
  result = sub_1E4997B4C();
  if (!a2)
  {
    result = sub_1E4997C6C();
    a1 = v11;
    a2 = v12;
    a3 = v13;
  }

  *a4 = v8;
  *(a4 + 8) = v14;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  *(a4 + 40) = v11;
  *(a4 + 48) = v12;
  *(a4 + 56) = v11;
  *(a4 + 64) = v12;
  *(a4 + 72) = v11;
  *(a4 + 80) = v12;
  return result;
}

uint64_t sub_1E49686A0()
{
  result = type metadata accessor for ColorProviderPoint.Sample(319);
  if (v1 <= 0x3F)
  {
    result = sub_1E4996DBC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E4968758()
{
  result = sub_1E4996DBC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1E496880C()
{
  sub_1E49688F0();
  if (v0 <= 0x3F)
  {
    sub_1E4968948();
    if (v1 <= 0x3F)
    {
      sub_1E4968998(319, &qword_1ECF81108, &qword_1ECF81000, &qword_1E49A5018);
      if (v2 <= 0x3F)
      {
        sub_1E4968998(319, &qword_1ECF81110, &qword_1ECF81018, &qword_1E49A5030);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E49688F0()
{
  if (!qword_1ECF810F8)
  {
    type metadata accessor for SolarViewModel();
    v0 = sub_1E49971DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF810F8);
    }
  }
}

void sub_1E4968948()
{
  if (!qword_1ECF81100)
  {
    v0 = sub_1E4997B8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF81100);
    }
  }
}

void sub_1E4968998(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1E4997B8C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1E49689EC()
{
  result = qword_1ECF81118;
  if (!qword_1ECF81118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80F70, &qword_1E49A4F70);
    sub_1E48C1B44(&qword_1ECF81120, &qword_1ECF81128, &unk_1E49A5188);
    sub_1E48C1B44(&qword_1ECF7F6A0, &qword_1ECF7F690, &unk_1E499C150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF81118);
  }

  return result;
}

unint64_t sub_1E4968AF4()
{
  result = qword_1ECF81180;
  if (!qword_1ECF81180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF81178, &qword_1E49A52C8);
    sub_1E4968B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF81180);
  }

  return result;
}

unint64_t sub_1E4968B78()
{
  result = qword_1ECF81188;
  if (!qword_1ECF81188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF81190, &qword_1E49A52D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF81198, &qword_1E49A52D8);
    sub_1E499714C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF81188);
  }

  return result;
}

uint64_t sub_1E4968C7C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1E4968CEC()
{
  result = qword_1ECF811D0;
  if (!qword_1ECF811D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF811C8, &qword_1E49A52F0);
    sub_1E499714C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF811D0);
  }

  return result;
}

uint64_t sub_1E4968DB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4968E1C(uint64_t a1, double *a2)
{
  v5 = *(type metadata accessor for ColorProviderGraph(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E4967248(a1, a2, v6);
}

uint64_t sub_1E4968E9C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1E48C14F4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E4968EE0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1E48C1564(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E4968F24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4969034@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ColorProviderPoint(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E49666F0(a1, v6, a2);
}

uint64_t sub_1E49690B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = v25 - v11;
  sub_1E48C12D0(a3, v25 - v11, &qword_1ECF7EC60, &unk_1E49A0DC0);
  v13 = sub_1E499816C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1E48C1338(v12, &qword_1ECF7EC60, &unk_1E49A0DC0);
  }

  else
  {
    sub_1E499815C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1E499811C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1E4997F3C() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_1E48C1338(a3, &qword_1ECF7EC60, &unk_1E49A0DC0);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E48C1338(a3, &qword_1ECF7EC60, &unk_1E49A0DC0);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1E4969364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = v25 - v11;
  sub_1E48C12D0(a3, v25 - v11, &qword_1ECF7EC60, &unk_1E49A0DC0);
  v13 = sub_1E499816C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1E48C1338(v12, &qword_1ECF7EC60, &unk_1E49A0DC0);
  }

  else
  {
    sub_1E499815C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1E499811C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1E4997F3C() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF809C0, &qword_1E49A3978);
      v22 = (v20 | v18);
      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_1E48C1338(a3, &qword_1ECF7EC60, &unk_1E49A0DC0);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E48C1338(a3, &qword_1ECF7EC60, &unk_1E49A0DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF809C0, &qword_1E49A3978);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1E4969620()
{
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECF80790;

  v1 = sub_1E4998A1C();
  v3 = v2;
  type metadata accessor for Scheduler();
  v4 = swift_allocObject();
  result = sub_1E4969FA8(v0, v1, v3);
  qword_1ECF819B8 = v4;
  return result;
}

uint64_t sub_1E49696C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v12 - v7;
  v9 = sub_1E499816C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;

  sub_1E498DD1C(0, 0, v8, &unk_1E49A5568, v10);
}

uint64_t sub_1E49697D4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1E48BFD3C;

  return v8();
}

uint64_t (*sub_1E49698BC(void (**a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3))()
{
  v22 = a3;
  v6 = type metadata accessor for ScheduledTask();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF812B8, &qword_1E49A5550);
  v23 = swift_allocBox();
  v12 = v11;
  v13 = sub_1E4996DBC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v12, 1, 1, v13);
  v16 = *(v3 + 80);
  swift_beginAccess();
  os_unfair_lock_lock(v16 + 4);
  swift_endAccess();
  sub_1E496ABD0();
  sub_1E496BA38(a2, v22, a1, v10);
  sub_1E48C1338(v12, &qword_1ECF812B8, &qword_1E49A5550);
  (*(v14 + 16))(v12, v10, v13);
  v15(v12, 0, 1, v13);
  if (*(v3 + 48) == 1)
  {
    sub_1E496C128(v10);
  }

  sub_1E496D7EC(v10);
  swift_beginAccess();
  os_unfair_lock_unlock(v16 + 4);
  swift_endAccess();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v19 = v23;
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  return sub_1E496DEB8;
}

uint64_t sub_1E4969AF0()
{
  v0 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 80);
    v3 = result;
    swift_beginAccess();
    os_unfair_lock_lock(v2 + 4);
    swift_endAccess();
    sub_1E4969BB4(v3, v0);
    v4 = *(v3 + 80);
    swift_beginAccess();
    os_unfair_lock_unlock(v4 + 4);
    swift_endAccess();
  }

  return result;
}

int64_t sub_1E4969BB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81290, &qword_1E49A54F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF812B8, &qword_1E49A5550);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v34 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v33 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v33 - v19;
  swift_beginAccess();
  sub_1E48C12D0(a2, v20, &qword_1ECF812B8, &qword_1E49A5550);
  v21 = sub_1E4996DBC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  result = v23(v20, 1, v21);
  if (result == 1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v25 = type metadata accessor for ScheduledTask();
  (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
  swift_beginAccess();
  sub_1E4971254(v8, v20);
  swift_endAccess();
  swift_beginAccess();
  sub_1E48C12D0(a2, v16, &qword_1ECF812B8, &qword_1E49A5550);
  result = v23(v16, 1, v21);
  if (result != 1)
  {
    swift_beginAccess();
    v26 = *(a1 + 64);
    if (*(v26 + 16))
    {
      v27 = *(a1 + 64);

      v28 = sub_1E4947F28(v16);
      if (v29)
      {
        v30 = *(*(v26 + 56) + 8 * v28);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F268, &qword_1E49A3980);
        sub_1E49981DC();
      }

      else
      {
      }
    }

    (*(v22 + 8))(v16, v21);
    swift_beginAccess();
    v31 = v34;
    sub_1E48C12D0(a2, v34, &qword_1ECF812B8, &qword_1E49A5550);
    result = v23(v31, 1, v21);
    if (result == 1)
    {
      goto LABEL_13;
    }

    swift_beginAccess();
    sub_1E4971474(0, v31);
    swift_endAccess();
    swift_beginAccess();
    result = sub_1E496DEC0((a1 + 72), a2);
    v32 = *(*(a1 + 72) + 16);
    if (v32 >= result)
    {
      sub_1E496ED7C(result, v32);
      return swift_endAccess();
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1E4969FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF807E8, &qword_1E49A3200);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v30[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = &v30[-v15];
  v17 = MEMORY[0x1E69E7CC8];
  *(v3 + 40) = 0;
  *(v3 + 56) = v17;
  *(v3 + 64) = v17;
  *(v3 + 72) = MEMORY[0x1E69E7CC0];
  type metadata accessor for CPUnfairLock();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v3 + 80) = v18;
  *(v3 + 24) = a3;
  *(v3 + 32) = a1;
  *(v3 + 16) = a2;
  v19 = *(a1 + OBJC_IVAR____TtC11ClockPoster5Clock_overrideClock);
  v20 = type metadata accessor for OverrideTime(0);
  v21 = *(v20 - 8);
  (*(v21 + 56))(v11, 1, 1, v20);
  v22 = *(v19 + 40);
  swift_beginAccess();

  os_unfair_lock_lock(v22 + 4);
  swift_endAccess();
  sub_1E48C1338(v11, &qword_1ECF807E8, &qword_1E49A3200);
  v23 = OBJC_IVAR____TtC11ClockPosterP33_379590E2B70ADE273C4445A41EC4954213OverrideClock_locked_overrideTime;
  swift_beginAccess();
  sub_1E48C12D0(v19 + v23, v11, &qword_1ECF807E8, &qword_1E49A3200);
  v24 = *(v19 + 40);
  swift_beginAccess();
  os_unfair_lock_unlock(v24 + 4);
  swift_endAccess();

  v25 = (*(v21 + 48))(v11, 1, v20);
  if (v25)
  {
    sub_1E48C1338(v11, &qword_1ECF807E8, &qword_1E49A3200);
    v26 = sub_1E4996D8C();
    (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
  }

  else
  {
    v27 = sub_1E4996D8C();
    v28 = *(v27 - 8);
    (*(v28 + 16))(v16, v11, v27);
    sub_1E48C1338(v11, &qword_1ECF807E8, &qword_1E49A3200);
    (*(v28 + 56))(v16, 0, 1, v27);
  }

  sub_1E48C1338(v16, &qword_1ECF809D0, &qword_1E499D6C0);
  *(v3 + 48) = v25 != 0;
  return v3;
}

void sub_1E496A328(char a1)
{
  v3 = sub_1E4996DBC();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3, v6);
  v92 = v7;
  v91 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v103 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v104 = &v86 - v14;
  v90 = sub_1E4996D8C();
  v15 = *(v90 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v90, v17);
  v102 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF812B0, &qword_1E49A5540);
  v19 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101, v20);
  v108 = &v86 - v21;
  if (*(v1 + 48) != (a1 & 1))
  {
    swift_beginAccess();
    v22 = *(v1 + 56);
    v25 = *(v22 + 64);
    v24 = v22 + 64;
    v23 = v25;
    v26 = 1 << *(*(v1 + 56) + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & v23;
    v100 = *(v1 + 56);
    swift_bridgeObjectRetain_n();
    swift_beginAccess();
    v29 = 0;
    v30 = (v26 + 63) >> 6;
    v86 = (v4 + 1);
    v88 = v4 + 4;
    v87 = (v15 + 8);
    v107 = v1;
    v99 = v24;
    v98 = v30;
    v97 = v4 + 2;
    v106 = v3;
    v89 = v4;
    while (v28)
    {
LABEL_13:
      v33 = __clz(__rbit64(v28)) | (v29 << 6);
      v34 = v100;
      v35 = v4[9];
      v36 = *(v100 + 48) + v35 * v33;
      v37 = v108;
      v105 = v4[2];
      v105(v108, v36, v3);
      v38 = *(v34 + 56);
      v39 = type metadata accessor for ScheduledTask();
      v40 = v37 + *(v101 + 48);
      sub_1E496D724(v38 + *(*(v39 - 8) + 72) * v33, v40);
      v41 = v4;
      v42 = v107;
      if (*(v107 + 48))
      {
        v43 = *(v107 + 32);
        sub_1E493BA48(v102);
        v44 = v40 + *(v39 + 20);
        sub_1E4996BAC();
        v46 = v45;
        sub_1E4996BAC();
        v48 = v46 - v47;
        v49 = *(v42 + 24);
        v95 = *(v42 + 16);
        v94 = v49;
        v50 = sub_1E499816C();
        v93 = *(v50 - 8);
        v51 = v104;
        (*(v93 + 56))(v104, 1, 1, v50);
        v52 = swift_allocObject();
        swift_weakInit();
        v53 = v91;
        v96 = v40;
        v54 = v40;
        v55 = v106;
        v105(v91, v54, v106);
        v56 = (*(v41 + 80) + 64) & ~*(v41 + 80);
        v57 = swift_allocObject();
        *(v57 + 16) = 0;
        *(v57 + 24) = 0;
        *(v57 + 32) = v48;
        v58 = v94;
        *(v57 + 40) = v95;
        *(v57 + 48) = v58;
        *(v57 + 56) = v52;
        v59 = v53;
        v60 = v50;
        v61 = v93;
        v62 = v103;
        (v41[4])(v57 + v56, v59, v55);
        sub_1E48C12D0(v51, v62, &qword_1ECF7EC60, &unk_1E49A0DC0);
        LODWORD(v62) = (*(v61 + 48))(v62, 1, v60);

        if (v62 == 1)
        {
          sub_1E48C1338(v103, &qword_1ECF7EC60, &unk_1E49A0DC0);
        }

        else
        {
          v68 = v103;
          sub_1E499815C();
          (*(v61 + 8))(v68, v60);
        }

        v24 = v99;
        v69 = *(v57 + 16);
        v70 = *(v57 + 24);
        swift_unknownObjectRetain();

        v71 = v107;
        if (v69)
        {
          swift_getObjectType();
          v72 = sub_1E499811C();
          v74 = v73;
          swift_unknownObjectRelease();
        }

        else
        {
          v72 = 0;
          v74 = 0;
        }

        sub_1E48C1338(v104, &qword_1ECF7EC60, &unk_1E49A0DC0);
        if (v74 | v72)
        {
          v110 = 0;
          v111 = 0;
          v112 = v72;
          v113 = v74;
        }

        v4 = v89;
        v75 = swift_task_create();
        swift_beginAccess();
        v76 = *(v71 + 64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v109 = *(v71 + 64);
        *(v71 + 64) = 0x8000000000000000;
        sub_1E498725C(v75, v96, isUniquelyReferenced_nonNull_native);
        *(v71 + 64) = v109;
        swift_endAccess();
        (*v87)(v102, v90);
        v3 = v106;
        v30 = v98;
      }

      else
      {
        v63 = *(v107 + 64);
        v3 = v106;
        v4 = v41;
        v24 = v99;
        v64 = v40;
        if (*(v63 + 16))
        {

          v65 = sub_1E4947F28(v40);
          if (v66)
          {
            v67 = *(*(v63 + 56) + 8 * v65);

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F268, &qword_1E49A3980);
            sub_1E49981DC();
          }

          else
          {
          }
        }

        v78 = v107;
        swift_beginAccess();
        v79 = *(v78 + 64);
        v80 = sub_1E4947F28(v64);
        v30 = v98;
        if (v81)
        {
          v82 = v80;
          v83 = *(v78 + 64);
          v84 = swift_isUniquelyReferenced_nonNull_native();
          v85 = *(v78 + 64);
          v109 = v85;
          *(v78 + 64) = 0x8000000000000000;
          if (!v84)
          {
            sub_1E4989238();
            v85 = v109;
          }

          (*v86)(*(v85 + 48) + v82 * v35, v3);
          v31 = *(*(v85 + 56) + 8 * v82);

          sub_1E4985D3C(v82, v85);
          *(v78 + 64) = v85;
        }

        swift_endAccess();
      }

      v28 &= v28 - 1;
      sub_1E48C1338(v108, &qword_1ECF812B0, &qword_1E49A5540);
    }

    while (1)
    {
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v32 >= v30)
      {

        return;
      }

      v28 = *(v24 + 8 * v32);
      ++v29;
      if (v28)
      {
        v29 = v32;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_1E496ABD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v12 - v4;
  if (!*(v0 + 40))
  {
    v6 = *(v0 + 32);
    v7 = sub_1E499816C();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v6;
    v9[5] = v8;

    v10 = sub_1E49690B8(0, 0, v5, &unk_1E49A5528, v9);
    v11 = *(v0 + 40);
    *(v0 + 40) = v10;
  }
}

uint64_t sub_1E496AD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v7 = sub_1E4996D8C();
  v5[22] = v7;
  v8 = *(v7 - 8);
  v5[23] = v8;
  v9 = *(v8 + 64) + 15;
  v5[24] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v5[25] = v10;
  v11 = *(v10 - 8);
  v5[26] = v11;
  v12 = *(v11 + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF80A60, &unk_1E49A3A10) - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6B8, &qword_1E49A4D60);
  v5[30] = v14;
  v15 = *(v14 - 8);
  v5[31] = v15;
  v16 = *(v15 + 64) + 15;
  v5[32] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6C0, &qword_1E49A3A70);
  v5[33] = v17;
  v18 = *(v17 - 8);
  v5[34] = v18;
  v19 = *(v18 + 64) + 15;
  v5[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E496AF9C, 0, 0);
}

uint64_t sub_1E496AF9C()
{
  v1 = v0[35];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  v5 = v0[18];
  v6 = v0[19];
  sub_1E493C7A4(v2);
  sub_1E499819C();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v0[36] = 0;
  v7 = *(MEMORY[0x1E69E8678] + 4);
  v8 = swift_task_alloc();
  v0[37] = v8;
  *v8 = v0;
  v8[1] = sub_1E496B0AC;
  v9 = v0[35];
  v10 = v0[33];
  v11 = v0[29];

  return MEMORY[0x1EEE6D9C8](v11, 0, 0, v10);
}

uint64_t sub_1E496B0AC()
{
  v1 = *(*v0 + 296);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E496B1A8, 0, 0);
}

uint64_t sub_1E496B1A8()
{
  v1 = v0[29];
  if ((*(v0[26] + 48))(v1, 1, v0[25]) == 1)
  {
    goto LABEL_2;
  }

  v9 = v0[36];
  sub_1E48C15C8(v1, v0[28], &qword_1ECF809D0, &qword_1E499D6C0);
  sub_1E49981FC();
  if (v9)
  {
    v11 = v0[34];
    v10 = v0[35];
    v13 = v0[32];
    v12 = v0[33];
    v14 = v0[29];
    v15 = v0[27];
    v16 = v0[24];
    v17 = v0[21];
    v60 = v0[20];
    sub_1E48C1338(v0[28], &qword_1ECF809D0, &qword_1E499D6C0);
    (*(v11 + 8))(v10, v12);

    v8 = v0[1];
    goto LABEL_5;
  }

  v19 = v0[19];
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = *(Strong + 80);
    swift_beginAccess();
    os_unfair_lock_lock(v22 + 4);
    swift_endAccess();
    sub_1E49981FC();
    v24 = v0[27];
    v25 = v0[22];
    v26 = v0[23];
    sub_1E48C12D0(v0[28], v24, &qword_1ECF809D0, &qword_1E499D6C0);
    v27 = (*(v26 + 48))(v24, 1, v25);
    v28 = v0[27];
    if (v27 == 1)
    {
      sub_1E48C1338(v0[27], &qword_1ECF809D0, &qword_1E499D6C0);
      v29 = *(v21 + 48);
      *(v21 + 48) = 1;
      sub_1E496A328(v29);
      v30 = 0;
    }

    else
    {
      v32 = v0[23];
      v31 = v0[24];
      v33 = v0[22];
      (*(v32 + 32))(v31, v0[27], v33);
      v34 = *(v21 + 48);
      *(v21 + 48) = 0;
      sub_1E496A328(v34);
      v30 = sub_1E496B908(v31);
      (*(v32 + 8))(v31, v33);
    }

    v35 = *(v21 + 80);
    swift_beginAccess();
    os_unfair_lock_unlock(v35 + 4);
    v36 = swift_endAccess();
    if (v30)
    {
      v61 = v30[2];
      if (v61)
      {
        v40 = 0;
        v58 = v30;
        v59 = v30 + 4;
        while (v40 < v30[2])
        {
          v41 = v0[20];
          v42 = v0[21];
          v43 = swift_allocObject();
          *(v43 + 16) = *&v59[2 * v40];
          v44 = sub_1E499816C();
          v45 = *(v44 - 8);
          (*(v45 + 56))(v42, 1, 1, v44);
          v46 = swift_allocObject();
          v46[2] = 0;
          v46[3] = 0;
          v46[4] = sub_1E496DD04;
          v46[5] = v43;
          sub_1E48C12D0(v42, v41, &qword_1ECF7EC60, &unk_1E49A0DC0);
          LODWORD(v41) = (*(v45 + 48))(v41, 1, v44);
          swift_retain_n();

          v47 = v0[20];
          if (v41 == 1)
          {
            sub_1E48C1338(v0[20], &qword_1ECF7EC60, &unk_1E49A0DC0);
          }

          else
          {
            sub_1E499815C();
            (*(v45 + 8))(v47, v44);
          }

          v49 = v46[2];
          v48 = v46[3];
          swift_unknownObjectRetain();

          if (v49)
          {
            swift_getObjectType();
            v50 = sub_1E499811C();
            v52 = v51;
            swift_unknownObjectRelease();
          }

          else
          {
            v50 = 0;
            v52 = 0;
          }

          sub_1E48C1338(v0[21], &qword_1ECF7EC60, &unk_1E49A0DC0);
          v53 = swift_allocObject();
          *(v53 + 16) = &unk_1E49A5538;
          *(v53 + 24) = v46;
          if (v52 | v50)
          {
            v0[2] = 0;
            v0[3] = 0;
            v0[4] = v50;
            v0[5] = v52;
          }

          v30 = v58;
          ++v40;
          swift_task_create();

          if (v61 == v40)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
        return MEMORY[0x1EEE6D9C8](v36, v37, v38, v39);
      }

LABEL_28:
    }

    v54 = v0[28];

    sub_1E48C1338(v54, &qword_1ECF809D0, &qword_1E499D6C0);
    v0[36] = 0;
    v55 = *(MEMORY[0x1E69E8678] + 4);
    v56 = swift_task_alloc();
    v0[37] = v56;
    *v56 = v0;
    v56[1] = sub_1E496B0AC;
    v57 = v0[35];
    v39 = v0[33];
    v36 = v0[29];
    v37 = 0;
    v38 = 0;

    return MEMORY[0x1EEE6D9C8](v36, v37, v38, v39);
  }

  sub_1E48C1338(v0[28], &qword_1ECF809D0, &qword_1E499D6C0);
  v23 = v0[29];
LABEL_2:
  v2 = v0[32];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[24];
  v7 = v0[20];
  v6 = v0[21];
  (*(v0[34] + 8))(v0[35], v0[33]);

  v8 = v0[1];
LABEL_5:

  return v8();
}

uint64_t sub_1E496B884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E496B8A4, 0, 0);
}

uint64_t sub_1E496B8A4()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))();
  v2 = *(v0 + 8);

  return v2();
}

void *sub_1E496B908(void (*a1)(char *, uint64_t))
{
  v2 = sub_1E496CE18(a1);
  if (!v2)
  {
    return 0;
  }

  v4 = v2;
  v5 = v3;
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    if (!v6)
    {
      v6 = v7;
    }

    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = v5;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1E4906C28(0, v6[2] + 1, 1, v6);
    }

    v10 = v6[2];
    v9 = v6[3];
    if (v10 >= v9 >> 1)
    {
      v6 = sub_1E4906C28((v9 > 1), v10 + 1, 1, v6);
    }

    sub_1E48BFEC4(v4);
    v6[2] = v10 + 1;
    v11 = &v6[2 * v10];
    v11[4] = sub_1E496DC1C;
    v11[5] = v8;
    v4 = sub_1E496CE18(a1);
    v5 = v12;
  }

  while (v4);
  return v6;
}

uint64_t sub_1E496BA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v98 = a1;
  v93 = a2;
  v94 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81298, &qword_1E49A5508);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v81 = &v80 - v8;
  v9 = type metadata accessor for ScheduledTask();
  v87 = *(v9 - 8);
  v10 = v87[8];
  MEMORY[0x1EEE9AC00](v9, v11);
  v84 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v83 = &v80 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF812A0, &qword_1E49A5510);
  v92 = *(v16 - 8);
  v17 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v16, v18);
  v89 = (&v80 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF812A8, &qword_1E49A5518);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v96 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v80 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81290, &qword_1E49A54F0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8, v30);
  v32 = &v80 - v31;
  v33 = sub_1E4996DBC();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33, v36);
  v95 = &v80 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v80 - v40;
  v42 = *(v9 + 20);
  v43 = sub_1E4996D8C();
  v44 = *(*(v43 - 8) + 16);
  v82 = v42;
  v44(a4 + v42, v94, v43);
  sub_1E4996DAC();
  v45 = v9;
  v46 = (a4 + *(v9 + 24));
  v47 = v93;
  *v46 = v98;
  v46[1] = v47;
  v48 = *(v34 + 16);
  v98 = v33;
  v90 = v48;
  v91 = v34 + 16;
  v48(v41, a4, v33);
  v86 = a4;
  sub_1E496D724(a4, v32);
  v49 = v87[7];
  v85 = v45;
  v49(v32, 0, 1, v45);
  v50 = v97;
  swift_beginAccess();

  sub_1E4971254(v32, v41);
  swift_endAccess();
  swift_beginAccess();
  v51 = *(v50 + 72);
  v52 = *(v51 + 16);
  v53 = (v92 + 56);
  v54 = (v92 + 48);
  v94 = (v34 + 32);
  v88 = v34;
  v55 = (v34 + 8);
  v92 = v51;

  v57 = 0;
  v93 = v52;
  while (1)
  {
    if (v57 == v52)
    {
      v58 = 1;
      v57 = v52;
      v59 = v96;
    }

    else
    {
      if ((v57 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (v57 >= *(v92 + 16))
      {
        goto LABEL_19;
      }

      v60 = v89;
      v61 = v92 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v57;
      v62 = *(v16 + 48);
      *v89 = v57;
      v90(v60 + v62, v61, v98);
      v63 = v60;
      v59 = v96;
      sub_1E48C15C8(v63, v96, &qword_1ECF812A0, &qword_1E49A5510);
      v58 = 0;
      ++v57;
      v52 = v93;
    }

    (*v53)(v59, v58, 1, v16);
    sub_1E48C15C8(v59, v27, &qword_1ECF812A8, &qword_1E49A5518);
    if ((*v54)(v27, 1, v16) == 1)
    {
      break;
    }

    v64 = *v27;
    v65 = v16;
    v66 = *(v16 + 48);
    v67 = v95;
    (*v94)(v95, v27 + v66, v98);
    v68 = *(v97 + 56);
    if (*(v68 + 16))
    {
      v69 = *(v97 + 56);

      v70 = sub_1E4947F28(v67);
      if ((v71 & 1) == 0)
      {

        goto LABEL_3;
      }

      v72 = v84;
      sub_1E496D724(*(v68 + 56) + v87[9] * v70, v84);
      (*v55)(v67, v98);

      v73 = v72;
      v74 = v83;
      sub_1E496D788(v73, v83);
      v75 = *(v85 + 20);
      v76 = sub_1E4996D0C();
      v77 = v74;
      v52 = v93;
      result = sub_1E496D7EC(v77);
      v16 = v65;
      if (v76)
      {
        goto LABEL_15;
      }
    }

    else
    {
LABEL_3:
      result = (*v55)(v67, v98);
      v16 = v65;
    }
  }

  v64 = 0;
LABEL_15:

  v78 = v97;
  result = swift_beginAccess();
  if (*(*(v78 + 72) + 16) < v64)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((v64 & 0x8000000000000000) == 0)
  {
    v79 = v81;
    v90(v81, v86, v98);
    sub_1E496D9AC(v64, v64, v79);
    return swift_endAccess();
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1E496C128(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E4996DBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v8 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v36 - v12;
  v14 = sub_1E4996D8C();
  v38 = *(v14 - 8);
  v39 = v14;
  v15 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v1[4];
  sub_1E493BA48(v18);
  v20 = a1 + *(type metadata accessor for ScheduledTask() + 20);
  v37 = a1;
  sub_1E4996BAC();
  v22 = v21;
  sub_1E4996BAC();
  v24 = v22 - v23;
  v25 = v2[3];
  v36 = v2[2];
  v26 = sub_1E499816C();
  (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = a1;
  v29 = v4;
  (*(v5 + 16))(v8, v28, v4);
  v30 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v24;
  *(v31 + 40) = v36;
  *(v31 + 48) = v25;
  *(v31 + 56) = v27;
  (*(v5 + 32))(v31 + v30, v8, v29);
  v32 = sub_1E49690B8(0, 0, v13, &unk_1E49A5500, v31);
  swift_beginAccess();
  v33 = v2[8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = v2[8];
  v2[8] = 0x8000000000000000;
  sub_1E498725C(v32, v37, isUniquelyReferenced_nonNull_native);
  v2[8] = v40;
  swift_endAccess();
  return (*(v38 + 8))(v18, v39);
}

uint64_t sub_1E496C460(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = a7;
  *(v8 + 168) = a8;
  *(v8 + 144) = a5;
  *(v8 + 152) = a6;
  *(v8 + 136) = a1;
  v9 = sub_1E499866C();
  *(v8 + 176) = v9;
  v10 = *(v9 - 8);
  *(v8 + 184) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  v12 = sub_1E499865C();
  *(v8 + 200) = v12;
  v13 = *(v12 - 8);
  *(v8 + 208) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E496C590, 0, 0);
}

uint64_t sub_1E496C590()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v5 = *(v0 + 192);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v8 = *(v0 + 136);
  sub_1E499863C();
  sub_1E4998A1C();
  sub_1E499864C();
  v9 = *(v4 + 8);
  *(v0 + 232) = v9;
  *(v0 + 240) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v3);
  *(v0 + 112) = v7;
  *(v0 + 120) = v6;
  *(v0 + 128) = 0;
  sub_1E49988AC();
  v10 = *(MEMORY[0x1E69E86D0] + 4);
  v11 = swift_task_alloc();
  *(v0 + 248) = v11;
  v12 = sub_1E496D964(&qword_1ECF809D8, MEMORY[0x1E69E8820]);
  *v11 = v0;
  v11[1] = sub_1E496C6F0;
  v13 = *(v0 + 224);
  v14 = *(v0 + 192);
  v15 = *(v0 + 176);

  return MEMORY[0x1EEE6DA68](v13, v0 + 112, v14, v15, v12);
}

uint64_t sub_1E496C6F0()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 184);
  v14 = *v1;
  *(*v1 + 256) = v0;

  v5 = (v4 + 8);
  v7 = v2[29];
  v6 = v2[30];
  if (v0)
  {
    v8 = v2[28];
    v9 = v2[25];
    (*v5)(v2[24], v2[22]);
    v7(v8, v9);
    v10 = sub_1E496CA28;
  }

  else
  {
    v11 = v2[28];
    v12 = v2[25];
    (*v5)(v2[24], v2[22]);
    v7(v11, v12);
    v10 = sub_1E496C884;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1E496C884()
{
  v1 = v0[20];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[32];
    v5 = *(Strong + 80);
    swift_beginAccess();
    os_unfair_lock_lock(v5 + 4);
    swift_endAccess();
    sub_1E49981FC();
    if (v4)
    {
      v6 = *(v3 + 80);
      swift_beginAccess();
      os_unfair_lock_unlock(v6 + 4);
      swift_endAccess();
      swift_willThrow();

      v8 = v0[27];
      v7 = v0[28];
      v9 = v0[24];

      v10 = v0[1];
      goto LABEL_8;
    }

    v11 = sub_1E496CAA8(v0[21]);
    v12 = *(v3 + 80);
    swift_beginAccess();
    os_unfair_lock_unlock(v12 + 4);
    v13 = swift_endAccess();
    if (v11)
    {
      v11(v13);
      sub_1E48BFEC4(v11);
    }
  }

  v15 = v0[27];
  v14 = v0[28];
  v16 = v0[24];

  v10 = v0[1];
LABEL_8:

  return v10();
}

uint64_t sub_1E496CA28()
{
  v1 = v0[32];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[24];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E496CAA8(uint64_t a1)
{
  v3 = sub_1E4996DBC();
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ScheduledTask();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81290, &qword_1E49A54F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v37 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v35 - v20;
  swift_beginAccess();
  v22 = *(v1 + 56);
  v23 = *(v22 + 16);
  v40 = a1;
  if (v23)
  {

    v24 = sub_1E4947F28(a1);
    if (v25)
    {
      sub_1E496D724(*(v22 + 56) + *(v9 + 72) * v24, v21);
      v26 = 0;
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v26 = 1;
  }

  v27 = *(v9 + 56);
  v27(v21, v26, 1, v8);
  if ((*(v9 + 48))(v21, 1, v8))
  {
    sub_1E48C1338(v21, &qword_1ECF81290, &qword_1E49A54F0);
    v35 = 0;
    v36 = 0;
  }

  else
  {
    sub_1E496D724(v21, v13);
    sub_1E48C1338(v21, &qword_1ECF81290, &qword_1E49A54F0);
    v28 = &v13[*(v8 + 24)];
    v29 = *v28;
    v35 = *(v28 + 1);
    v36 = v29;

    sub_1E496D7EC(v13);
  }

  v30 = v39;
  v31 = *(v38 + 16);
  v32 = v40;
  v31(v7, v40, v39);
  v33 = v37;
  v27(v37, 1, 1, v8);
  swift_beginAccess();
  sub_1E4971254(v33, v7);
  swift_endAccess();
  v31(v7, v32, v30);
  swift_beginAccess();
  sub_1E4971474(0, v7);
  swift_endAccess();
  return v36;
}

size_t sub_1E496CE18(void (*a1)(char *, uint64_t))
{
  v55 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81290, &qword_1E49A54F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v49 - v5;
  v7 = type metadata accessor for ScheduledTask();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v49 - v15;
  v17 = sub_1E4996DBC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v49 - v25;
  swift_beginAccess();
  v27 = *(v1 + 72);
  v28 = *(v27 + 16);
  if (v28)
  {
    v51 = v6;
    v52 = v8;
    v53 = v16;
    v54 = v7;
    v29 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v30 = *(v18 + 72);
    v50 = *(v18 + 16);
    v50(v26, v27 + v29 + v30 * (v28 - 1), v17);
    swift_beginAccess();
    v31 = *(v1 + 56);
    if (*(v31 + 16))
    {
      v49 = v1;

      v32 = sub_1E4947F28(v26);
      if (v33)
      {
        sub_1E496D724(*(v31 + 56) + *(v52 + 72) * v32, v12);

        v34 = v53;
        sub_1E496D788(v12, v53);
        v35 = *(v54 + 20);
        if (sub_1E4996D0C())
        {
          v36 = v49;
          swift_beginAccess();
          v37 = *(v36 + 72);
          if (*(v37 + 2))
          {
            v38 = *(v36 + 72);
            result = swift_isUniquelyReferenced_nonNull_native();
            if (result)
            {
              v40 = *(v37 + 2);
              if (v40)
              {
LABEL_8:
                v41 = v40 - 1;
                v55 = *(v18 + 8);
                v55(&v37[v29 + (v40 - 1) * v30], v17);
                *(v37 + 2) = v41;
                *(v36 + 72) = v37;
                swift_endAccess();
                v42 = v50;
                v50(v22, v26, v17);
                v43 = v51;
                v44 = v54;
                (*(v52 + 56))(v51, 1, 1, v54);
                swift_beginAccess();
                sub_1E4971254(v43, v22);
                swift_endAccess();
                v42(v22, v26, v17);
                swift_beginAccess();
                sub_1E4971474(0, v22);
                swift_endAccess();
                v55(v26, v17);
                v45 = v53;
                v46 = &v53[*(v44 + 24)];
                v48 = *v46;
                v47 = *(v46 + 1);

                sub_1E496D7EC(v45);
                return v48;
              }

              goto LABEL_16;
            }
          }

          else
          {
            __break(1u);
          }

          result = sub_1E48EA4F8(v37);
          v37 = result;
          v40 = *(result + 16);
          if (v40)
          {
            goto LABEL_8;
          }

LABEL_16:
          __break(1u);
          return result;
        }

        sub_1E496D7EC(v34);
      }

      else
      {
      }
    }

    (*(v18 + 8))(v26, v17);
  }

  return 0;
}

uint64_t sub_1E496D274()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[9];

  v6 = v0[10];

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScheduledTask()
{
  result = qword_1ECF81268;
  if (!qword_1ECF81268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E496D36C()
{
  result = sub_1E4996DBC();
  if (v1 <= 0x3F)
  {
    result = sub_1E4996D8C();
    if (v2 <= 0x3F)
    {
      result = sub_1E496D408();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1E496D408()
{
  result = qword_1ECF81278;
  if (!qword_1ECF81278)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1ECF81278);
  }

  return result;
}

unint64_t sub_1E496D46C()
{
  result = qword_1ECF81280;
  if (!qword_1ECF81280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF81280);
  }

  return result;
}

uint64_t sub_1E496D4C0()
{
  sub_1E499892C();
  sub_1E4996DBC();
  sub_1E496D964(&qword_1ECF814C0, MEMORY[0x1E69695A8]);
  sub_1E4997E5C();
  return sub_1E499896C();
}

uint64_t sub_1E496D548()
{
  sub_1E4996DBC();
  sub_1E496D964(&qword_1ECF814C0, MEMORY[0x1E69695A8]);

  return sub_1E4997E5C();
}

uint64_t sub_1E496D5CC()
{
  sub_1E499892C();
  sub_1E4996DBC();
  sub_1E496D964(&qword_1ECF814C0, MEMORY[0x1E69695A8]);
  sub_1E4997E5C();
  return sub_1E499896C();
}

BOOL sub_1E496D650()
{
  sub_1E4996DBC();
  sub_1E496D964(&qword_1ECF80B70, MEMORY[0x1E69695A8]);
  return (sub_1E4997E9C() & 1) == 0;
}

uint64_t sub_1E496D724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduledTask();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E496D788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduledTask();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E496D7EC(uint64_t a1)
{
  v2 = type metadata accessor for ScheduledTask();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E496D848(uint64_t a1)
{
  v4 = *(sub_1E4996DBC() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = v1[4];
  v9 = *(v1 + 5);
  v10 = *(v1 + 6);
  v11 = *(v1 + 7);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1E48ECAA8;

  return sub_1E496C460(v8, a1, v6, v7, v9, v10, v11, v1 + v5);
}

uint64_t sub_1E496D964(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E496D9AC(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_1E4906A24(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_1E496DA80(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1E496DA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_1E4996DBC();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1E48C1338(v25, &qword_1ECF81298, &qword_1E49A5508);
  }

  if (v18 < 1)
  {
    return sub_1E48C1338(v25, &qword_1ECF81298, &qword_1E49A5508);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_1E48C1338(v25, &qword_1ECF81298, &qword_1E49A5508);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1E496DC1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1E496DC44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E48BFD3C;

  return sub_1E496AD1C(a1, v4, v5, v7, v6);
}

uint64_t sub_1E496DD04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1E496DD2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E48BFD3C;

  return sub_1E496B884(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_27Tm()
{
  v1 = sub_1E4996DBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 56);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1E496DEB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1E4969AF0();
}

uint64_t sub_1E496DEC0(uint64_t *a1, uint64_t a2)
{
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF812C0, &qword_1E49A5558);
  v4 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88, v5);
  v87 = &v69 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF812B8, &qword_1E49A5550);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v76 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v69 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v69 - v17;
  v97 = sub_1E4996DBC();
  v89 = *(v97 - 8);
  v19 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v97, v20);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v69 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v69 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v69 - v33;
  v35 = a1;
  v36 = *a1;
  v37 = v96;
  result = sub_1E496E6A4(v36, a2);
  if (v37)
  {
    return result;
  }

  v96 = v34;
  v73 = v30;
  v75 = v26;
  v74 = v22;
  v91 = v14;
  v92 = v18;
  v69 = 0;
  if (v39)
  {
    return *(v36 + 16);
  }

  v72 = v35;
  v93 = result;
  v40 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_34;
  }

  v41 = v36;
  result = swift_beginAccess();
  v43 = (v36 + 16);
  v42 = *(v36 + 16);
  v44 = v92;
  v45 = v89;
  if (v40 == v42)
  {
    return v93;
  }

  v86 = v89 + 16;
  v78 = v89 + 56;
  v70 = (v89 + 32);
  v80 = (v89 + 8);
  v71 = (v89 + 40);
  v79 = a2;
  v77 = v89 + 48;
  while (v40 < v42)
  {
    v46 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v94 = v41;
    v95 = v40;
    v81 = v46;
    v82 = *(v45 + 72);
    v47 = v45;
    v48 = v97;
    v49 = *(v45 + 16);
    v90 = v82 * v40;
    v84 = v41 + v46;
    v85 = v43;
    v50 = v96;
    v49(v96, v41 + v46 + v82 * v40, v97);
    v83 = v49;
    v49(v44, v50, v48);
    (*(v47 + 56))(v44, 0, 1, v48);
    v51 = v91;
    sub_1E48C12D0(a2, v91, &qword_1ECF812B8, &qword_1E49A5550);
    v52 = v87;
    v53 = *(v88 + 48);
    sub_1E48C12D0(v44, v87, &qword_1ECF812B8, &qword_1E49A5550);
    sub_1E48C12D0(v51, v52 + v53, &qword_1ECF812B8, &qword_1E49A5550);
    v54 = *(v47 + 48);
    if (v54(v52, 1, v48) == 1)
    {
      sub_1E48C1338(v51, &qword_1ECF812B8, &qword_1E49A5550);
      sub_1E48C1338(v44, &qword_1ECF812B8, &qword_1E49A5550);
      v55 = v54(v52 + v53, 1, v97);
      a2 = v79;
      if (v55 == 1)
      {
        sub_1E48C1338(v52, &qword_1ECF812B8, &qword_1E49A5550);
        result = (*v80)(v96, v97);
        v44 = v92;
        v45 = v89;
        v41 = v94;
        v56 = v95;
        goto LABEL_11;
      }
    }

    else
    {
      v57 = v76;
      sub_1E48C12D0(v52, v76, &qword_1ECF812B8, &qword_1E49A5550);
      if (v54(v52 + v53, 1, v97) != 1)
      {
        v65 = v73;
        (*v70)(v73, v52 + v53, v97);
        sub_1E496D964(&qword_1ECF80B70, MEMORY[0x1E69695A8]);
        v66 = v57;
        v67 = sub_1E4997E9C();
        v68 = *v80;
        (*v80)(v65, v48);
        sub_1E48C1338(v91, &qword_1ECF812B8, &qword_1E49A5550);
        sub_1E48C1338(v92, &qword_1ECF812B8, &qword_1E49A5550);
        v68(v66, v48);
        sub_1E48C1338(v52, &qword_1ECF812B8, &qword_1E49A5550);
        result = v68(v96, v48);
        a2 = v79;
        v56 = v95;
        if (v67)
        {
          v44 = v92;
          v45 = v89;
          v41 = v94;
          goto LABEL_11;
        }

        goto LABEL_19;
      }

      sub_1E48C1338(v91, &qword_1ECF812B8, &qword_1E49A5550);
      sub_1E48C1338(v92, &qword_1ECF812B8, &qword_1E49A5550);
      (*v80)(v57, v97);
      a2 = v79;
    }

    sub_1E48C1338(v52, &qword_1ECF812C0, &qword_1E49A5558);
    result = (*v80)(v96, v97);
    v56 = v95;
LABEL_19:
    v58 = v93;
    if (v56 == v93)
    {
      v44 = v92;
      v45 = v89;
      v41 = v94;
    }

    else
    {
      if ((v93 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      v59 = *v85;
      if (v93 >= *v85)
      {
        goto LABEL_31;
      }

      v60 = v83;
      v61 = v82 * v93;
      v62 = v84;
      result = (v83)(v75, &v84[v82 * v93], v97);
      if (v56 >= v59)
      {
        goto LABEL_32;
      }

      v60(v74, &v62[v90], v97);
      v41 = v94;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_1E48EA4F8(v41);
      }

      v45 = v89;
      v63 = v41 + v81;
      v64 = *v71;
      result = (*v71)(v41 + v81 + v61, v74, v97);
      if (v56 >= v41[2])
      {
        goto LABEL_33;
      }

      result = v64(&v63[v90], v75, v97);
      *v72 = v41;
      v44 = v92;
      v58 = v93;
    }

    v93 = v58 + 1;
LABEL_11:
    v40 = v56 + 1;
    v43 = v41 + 2;
    v42 = v41[2];
    if (v40 == v42)
    {
      return v93;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1E496E6A4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E4996DBC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v54 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF812C0, &qword_1E49A5558);
  v10 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65, v11);
  v64 = v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF812B8, &qword_1E49A5550);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v57 = v51 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v51 - v23;
  v25 = *(a1 + 16);
  v66 = a2;
  swift_beginAccess();
  v26 = v25 == 0;
  v63 = v25;
  if (!v25)
  {
    return 0;
  }

  v67 = v24;
  v56 = v17;
  v51[1] = v2;
  v27 = 0;
  v61 = (v6 + 56);
  v62 = v6 + 16;
  v28 = (v6 + 48);
  v52 = (v6 + 32);
  v53 = (v6 + 48);
  v55 = (v6 + 8);
  v29 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v30 = *(v6 + 16);
  v59 = *(v6 + 72);
  v60 = v30;
  v31 = &qword_1E49A5550;
  v32 = v57;
  v33 = v64;
  while (1)
  {
    v70 = v27;
    v58 = v26;
    v38 = v5;
    v39 = v67;
    v68 = v29;
    v60(v67);
    (*v61)(v39, 0, 1, v38);
    sub_1E48C12D0(v66, v32, &qword_1ECF812B8, v31);
    v40 = *(v65 + 48);
    sub_1E48C12D0(v39, v33, &qword_1ECF812B8, v31);
    v69 = v40;
    sub_1E48C12D0(v32, v33 + v40, &qword_1ECF812B8, v31);
    v41 = v31;
    v42 = *v28;
    if ((*v28)(v33, 1, v38) == 1)
    {
      break;
    }

    v43 = v56;
    sub_1E48C12D0(v33, v56, &qword_1ECF812B8, v41);
    v44 = v69;
    v5 = v38;
    if (v42(v33 + v69, 1, v38) != 1)
    {
      v45 = v54;
      (*v52)(v54, v33 + v44, v38);
      sub_1E496D964(&qword_1ECF80B70, MEMORY[0x1E69695A8]);
      v46 = sub_1E4997E9C();
      v47 = *v55;
      (*v55)(v45, v5);
      v48 = v57;
      sub_1E48C1338(v57, &qword_1ECF812B8, v41);
      sub_1E48C1338(v67, &qword_1ECF812B8, v41);
      v49 = v43;
      v50 = v41;
      v35 = v48;
      v28 = v53;
      v47(v49, v5);
      sub_1E48C1338(v33, &qword_1ECF812B8, v50);
      result = v70;
      v31 = v50;
      if (v46)
      {
        return result;
      }

      goto LABEL_5;
    }

    v31 = v41;
    v35 = v57;
    sub_1E48C1338(v57, &qword_1ECF812B8, v31);
    sub_1E48C1338(v67, &qword_1ECF812B8, v31);
    (*v55)(v43, v38);
LABEL_4:
    sub_1E48C1338(v33, &qword_1ECF812C0, &qword_1E49A5558);
    result = v70;
LABEL_5:
    v27 = result + 1;
    v29 = v68 + v59;
    v26 = v63 == v27;
    v32 = v35;
    if (v63 == v27)
    {
      return 0;
    }
  }

  v34 = v41;
  v35 = v32;
  sub_1E48C1338(v32, &qword_1ECF812B8, v34);
  sub_1E48C1338(v39, &qword_1ECF812B8, v34);
  v36 = v42(v33 + v69, 1, v38);
  v5 = v38;
  v31 = v34;
  if (v36 != 1)
  {
    goto LABEL_4;
  }

  sub_1E48C1338(v33, &qword_1ECF812B8, &qword_1E49A5550);
  return v70;
}

unint64_t sub_1E496EC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
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
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1E496ED7C(unint64_t result, uint64_t a2)
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

    v4 = sub_1E4906A24(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1E496EC30(v6, a2, 0, MEMORY[0x1E69695A8]);
  *v2 = v4;
  return result;
}