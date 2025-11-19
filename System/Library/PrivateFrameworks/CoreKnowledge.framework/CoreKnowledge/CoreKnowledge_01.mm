void *sub_1C869D46C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C869D5A4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADBA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C869D6DC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA18);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C869D814(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C869DEA8(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_43_0();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1C869DF00()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *v0;
  sub_1C86F954C();
  sub_1C86F8F9C();
  sub_1C86F956C();
  OUTLINED_FUNCTION_60();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    if (((1 << (v8 & v10)) & *(v7 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v11);
    v13 = *v12 == v4 && v12[1] == v2;
    if (v13 || (sub_1C86F948C() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v11);
      v15 = v14[1];
      *v6 = *v14;
      v6[1] = v15;

      goto LABEL_11;
    }

    v8 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v0;

  sub_1C869E8EC(v4, v2, v11, isUniquelyReferenced_nonNull_native);
  *v0 = v17;
  *v6 = v4;
  v6[1] = v2;
LABEL_11:
  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C869E05C(void *a1, void *a2, void (*a3)(void), uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_1C86F92FC();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v31;
    }

    else
    {
      result = sub_1C86F92EC();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v25 = sub_1C869E2A4(v15, result + 1, a4, a5, a6);
        if (*(v25 + 24) <= *(v25 + 16))
        {
          sub_1C869E6D8();
        }

        v26 = v16;
        sub_1C869E86C(v26, v25);

        *v11 = v25;
        *a1 = v26;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    sub_1C86F923C();
    OUTLINED_FUNCTION_60();
    v21 = ~v20;
    while (1)
    {
      v22 = v19 & v21;
      if (((*(v14 + 56 + (((v19 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v21)) & 1) == 0)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v32 = *v11;
        v27 = a2;
        sub_1C869EA54();
        *v11 = v32;
        *a1 = v27;
        return 1;
      }

      v23 = *(*(v14 + 48) + 8 * v22);
      v24 = sub_1C86F924C();

      if (v24)
      {
        break;
      }

      v19 = v22 + 1;
    }

    v28 = *(*(v14 + 48) + 8 * v22);
    *a1 = v28;
    v29 = v28;
    return 0;
  }

  return result;
}

uint64_t sub_1C869E2A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v6 = sub_1C86F933C();
    v18 = v6;
    sub_1C86F92DC();
    while (1)
    {
      if (!sub_1C86F930C())
      {

        return v6;
      }

      a5(0);
      swift_dynamicCast();
      if (*(v6 + 24) <= *(v6 + 16))
      {
        sub_1C869E6D8();
      }

      v6 = v18;
      result = sub_1C86F923C();
      v8 = v18 + 56;
      v9 = -1 << *(v18 + 32);
      v10 = result & ~v9;
      v11 = v10 >> 6;
      if (((-1 << v10) & ~*(v18 + 56 + 8 * (v10 >> 6))) == 0)
      {
        break;
      }

      v12 = __clz(__rbit64((-1 << v10) & ~*(v18 + 56 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v18 + 48) + 8 * v12) = v17;
      ++*(v18 + 16);
    }

    v13 = 0;
    v14 = (63 - v9) >> 6;
    while (++v11 != v14 || (v13 & 1) == 0)
    {
      v15 = v11 == v14;
      if (v11 == v14)
      {
        v11 = 0;
      }

      v13 |= v15;
      v16 = *(v8 + 8 * v11);
      if (v16 != -1)
      {
        v12 = __clz(__rbit64(~v16)) + (v11 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1C869E47C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA38);
  result = sub_1C86F932C();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_1C869CD18(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    sub_1C86F954C();
    sub_1C86F8F9C();
    result = sub_1C86F956C();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v16;
    v26[1] = v17;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_1C869E6D8()
{
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_40_0(v2, v3);
  OUTLINED_FUNCTION_86();
  v4 = sub_1C86F932C();
  v5 = v4;
  if (!*(v1 + 16))
  {
LABEL_27:

    *v0 = v5;
    OUTLINED_FUNCTION_108();
    return;
  }

  v6 = 0;
  v7 = (v1 + 56);
  v8 = 1 << *(v1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v1 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = v4 + 56;
  if (!v10)
  {
LABEL_7:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      ++v13;
      if (v7[v6])
      {
        OUTLINED_FUNCTION_53();
        v10 = v15 & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v1 + 32);
    if (v24 >= 64)
    {
      sub_1C869CD18(0, (v24 + 63) >> 6, v1 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_60();
      *v7 = v25;
    }

    *(v1 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_97();
LABEL_12:
    v16 = sub_1C86F923C() & ~(-1 << *(v5 + 32));
    if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_94();
LABEL_21:
    OUTLINED_FUNCTION_89();
    *(v12 + v21) |= v22;
    OUTLINED_FUNCTION_65(v23);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_93();
  while (++v17 != v19 || (v18 & 1) == 0)
  {
    v20 = v17 == v19;
    if (v17 == v19)
    {
      v17 = 0;
    }

    v18 |= v20;
    if (*(v12 + 8 * v17) != -1)
    {
      OUTLINED_FUNCTION_90();
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

unint64_t sub_1C869E86C(uint64_t a1, uint64_t a2)
{
  sub_1C86F923C();
  OUTLINED_FUNCTION_60();
  result = sub_1C86F92CC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1C869E8EC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1C869E47C();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1C869EE14();
LABEL_10:
      v15 = *v4;
      sub_1C86F954C();
      sub_1C86F8F9C();
      result = sub_1C86F956C();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_1C86F948C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1C869EB90();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1C86F94AC();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void sub_1C869EA54()
{
  OUTLINED_FUNCTION_107();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(*v0 + 16);
  v10 = *(*v0 + 24);
  if (v10 <= v9 || (v1 & 1) == 0)
  {
    if (v1)
    {
      OUTLINED_FUNCTION_80(v9);
      sub_1C869E6D8();
      goto LABEL_10;
    }

    if (v10 <= v9)
    {
      v15 = OUTLINED_FUNCTION_80(v9);
      sub_1C869F048(v15, v16);
LABEL_10:
      v17 = *v0;
      sub_1C86F923C();
      OUTLINED_FUNCTION_60();
      v20 = ~v19;
      while (1)
      {
        v6 = v18 & v20;
        if (((*(v17 + 56 + (((v18 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v20)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v4(0);
        v21 = *(*(v17 + 48) + 8 * v6);
        v22 = sub_1C86F924C();

        if (v22)
        {
          goto LABEL_15;
        }

        v18 = v6 + 1;
      }
    }

    sub_1C869ECE8(v2);
  }

LABEL_7:
  v11 = *v0;
  *(*v0 + 8 * (v6 >> 6) + 56) |= 1 << v6;
  *(*(v11 + 48) + 8 * v6) = v8;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_15:
    sub_1C86F94AC();
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v14;
    OUTLINED_FUNCTION_108();
  }
}

void *sub_1C869EB90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA38);
  v2 = *v0;
  v3 = sub_1C86F931C();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

id sub_1C869ECE8(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1C86F931C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_97();
LABEL_17:
        v19 = v15 | (v9 << 6);
        v20 = *(*(v3 + 48) + 8 * v19);
        *(*(v5 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      ++v16;
      if (*(v3 + 56 + 8 * v9))
      {
        OUTLINED_FUNCTION_53();
        v13 = v18 & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1C869EE14()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA38);
  result = sub_1C86F932C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        sub_1C86F954C();

        sub_1C86F8F9C();
        result = sub_1C86F956C();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

void sub_1C869F048(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_40_0(a1, a2);
  v4 = sub_1C86F932C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v2;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v16 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        OUTLINED_FUNCTION_58();
        v17 = sub_1C86F923C() & ~(-1 << *(v5 + 32));
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_94();
LABEL_21:
        OUTLINED_FUNCTION_89();
        *(v11 + v22) |= v23;
        OUTLINED_FUNCTION_65(v24);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      OUTLINED_FUNCTION_93();
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        if (*(v11 + 8 * v18) != -1)
        {
          OUTLINED_FUNCTION_90();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v25;
          goto LABEL_25;
        }

        ++v13;
        if (*(v3 + 56 + 8 * v6))
        {
          OUTLINED_FUNCTION_53();
          v9 = v15 & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

uint64_t sub_1C869F1E8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1C86F8C3C();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1CCA7AE90]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1CCA7AEB0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

unint64_t sub_1C869F268()
{
  result = qword_1EC2AD7D0;
  if (!qword_1EC2AD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2AD7D0);
  }

  return result;
}

uint64_t sub_1C869F2D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C869F33C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C869F384(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1C869F398(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_3(uint64_t a1, uint64_t a2)
{
  *a2 = 2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 3;

  return swift_willThrow();
}

unint64_t OUTLINED_FUNCTION_9_3(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

__n128 OUTLINED_FUNCTION_15_0(__n128 *a1)
{
  result = v1[3];
  a1[1] = result;
  a1[3].n128_u64[1] = v2;
  return result;
}

void OUTLINED_FUNCTION_29_0()
{

  JUMPOUT(0x1CCA7C540);
}

uint64_t OUTLINED_FUNCTION_40_0(uint64_t a1, uint64_t *a2)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2);
}

void *OUTLINED_FUNCTION_45_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[8] = a2;
  result[4] = *(v2 + 40);
  result[5] = v3;
  return result;
}

void OUTLINED_FUNCTION_59()
{
  *(v1 + 16) = v3;
  v5 = v1 + 16 * v2;
  *(v5 + 32) = v4;
  *(v5 + 40) = v0;
}

uint64_t OUTLINED_FUNCTION_68()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_69()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_70()
{

  return swift_allocObject();
}

BOOL OUTLINED_FUNCTION_71(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_73()
{

  return sub_1C86A90CC(v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_74()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_106@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = v2;
  *(a1 + 8) = a2;
  *(a1 + 32) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_109()
{

  return sub_1C86F93FC();
}

_OWORD *OUTLINED_FUNCTION_110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10)
{
  *(v11 + 16) = v12;

  return sub_1C8689930(&a10, (v11 + 32 * v10 + 32));
}

void OUTLINED_FUNCTION_111(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

unint64_t OUTLINED_FUNCTION_112()
{

  return sub_1C869C918(v0, v1);
}

uint64_t OUTLINED_FUNCTION_113@<X0>(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_1C869C0F0(va, a1);
}

uint64_t OUTLINED_FUNCTION_114()
{

  return swift_dynamicCast();
}

uint64_t CKKnowledgeStore.dictionaryRepresentation(completionHandler:)()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_5_4(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_8_5();
  return v1(v0);
}

void sub_1C869FC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = sub_1C86F8B9C();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_1C86F8E8C();
  (*(a3 + 16))(a3, v4, v5);
}

uint64_t CKKnowledgeStore.dictionaryRepresentation()()
{
  OUTLINED_FUNCTION_7_5(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_9_4();
  return v1(v0);
}

uint64_t CKKnowledgeStore.dictionaryRepresentation(forKeysMatching:completionHandler:)()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_21(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_14();
  return v1(v0);
}

uint64_t CKKnowledgeStore.dictionaryRepresentation(forKeysMatching:)()
{
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_0_4(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_4_4();
  return v1(v0);
}

uint64_t CKKnowledgeStore.keys(completionHandler:)()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_5_4(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_8_5();
  return v1(v0);
}

uint64_t CKKnowledgeStore.keys()()
{
  OUTLINED_FUNCTION_7_5(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_9_4();
  return v1(v0);
}

uint64_t CKKnowledgeStore.keys(matching:completionHandler:)()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_21(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_14();
  return v1(v0);
}

uint64_t CKKnowledgeStore.keys(matching:)()
{
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_0_4(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_4_4();
  return v1(v0);
}

uint64_t CKKnowledgeStore.values(completionHandler:)()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_5_4(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_8_5();
  return v1(v0);
}

uint64_t CKKnowledgeStore.values()()
{
  OUTLINED_FUNCTION_7_5(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_9_4();
  return v1(v0);
}

id sub_1C86A02E4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  v6 = sub_1C86F908C();

  return v6;
}

uint64_t CKKnowledgeStore.value(forKey:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR___CKKnowledgeStore_backingStore + 24);
  v10 = *(v4 + OBJC_IVAR___CKKnowledgeStore_backingStore + 32);
  __swift_project_boxed_opaque_existential_0((v4 + OBJC_IVAR___CKKnowledgeStore_backingStore), v9);
  return (*(*(v10 + 8) + 24))(a1, a2, a3, a4, v9);
}

uint64_t CKKnowledgeStore.values(forKeys:completionHandler:)()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_21(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_14();
  return v1(v0);
}

{
  OUTLINED_FUNCTION_10();
  v4 = *(v1 + OBJC_IVAR___CKKnowledgeStore_backingStore + 24);
  v5 = *(v1 + OBJC_IVAR___CKKnowledgeStore_backingStore + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR___CKKnowledgeStore_backingStore), v4);
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;
  v7 = *(v5 + 8);
  v8 = *(v7 + 40);

  v8(v3, sub_1C86A1920, v6, v4, v7);
}

uint64_t CKKnowledgeStore.values(forKeys:)()
{
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_0_4(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_4_4();
  return v1(v0);
}

uint64_t sub_1C86A066C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = a2 + 32;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1C868FEF0(v6, v15);
      if (v16)
      {
        result = sub_1C868FEF0(v15, &v13);
        if (!v14)
        {
          __break(1u);
          return result;
        }
      }

      else
      {
        v9 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
        v14 = sub_1C86A1A20();
        *&v13 = v9;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C86C4C68();
        v7 = v11;
      }

      v10 = *(v7 + 16);
      if (v10 >= *(v7 + 24) >> 1)
      {
        sub_1C86C4C68();
        v7 = v12;
      }

      *(v7 + 16) = v10 + 1;
      sub_1C8689930(&v13, (v7 + 32 * v10 + 32));
      sub_1C86885EC(v15);
      v6 += 32;
      if (!--v5)
      {
        goto LABEL_14;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_14:
  a3(a1, v7);
}

uint64_t CKKnowledgeStore.values(forKeysMatching:completionHandler:)()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_21(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_14();
  return v1(v0);
}

uint64_t sub_1C86A090C(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_6_1();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

uint64_t CKKnowledgeStore.values(forKeysMatching:)()
{
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_0_4(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_4_4();
  return v1(v0);
}

id sub_1C86A0A28(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  v7 = a3;
  v8 = a1;
  a5(v7);

  v9 = sub_1C86F908C();

  return v9;
}

id CKKnowledgeStore.entity(withIdentifier:)()
{
  OUTLINED_FUNCTION_10_4();
  v3 = objc_allocWithZone(type metadata accessor for CKKnowledgeStoreEntity());

  return sub_1C86C7E1C(v2, v0, v1);
}

uint64_t CKKnowledgeStore.entities(completionHandler:)()
{
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_6_1();
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CD0];
  v4 = *&v1[OBJC_IVAR___CKKnowledgeStore_backingStore + 24];
  v5 = *&v1[OBJC_IVAR___CKKnowledgeStore_backingStore + 32];
  __swift_project_boxed_opaque_existential_0(&v1[OBJC_IVAR___CKKnowledgeStore_backingStore], v4);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v0;
  v6[4] = v3;
  v6[5] = v1;
  v7 = *(v5 + 8);
  v8 = *(v7 + 32);

  v9 = v1;
  v8(sub_1C86A1928, v6, v4, v7);
}

void sub_1C86A0CE8(void *a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, void *a6)
{
  if (a1)
  {
    v8 = a1;
    a3(a1, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v10 = *(a2 + 16);
    if (v10)
    {
      v11 = a2 + 32;
      v12 = MEMORY[0x1E69E7D40];
      do
      {
        sub_1C8686320(v11, v41);
        type metadata accessor for CKTriple();
        if (swift_dynamicCast())
        {
          (*((*v12 & *v39) + 0x58))();
          swift_beginAccess();
          sub_1C869DF00();
          swift_endAccess();

          (*((*v12 & *v39) + 0x68))(v13);
          swift_beginAccess();
          sub_1C869DF00();
          swift_endAccess();
        }

        v11 += 32;
        --v10;
      }

      while (v10);
    }

    swift_beginAccess();
    v14 = *(a5 + 16);
    v15 = *(v14 + 16);
    v16 = MEMORY[0x1E69E7CC0];
    if (v15)
    {
      v40 = MEMORY[0x1E69E7CC0];

      sub_1C86F93BC();
      v18 = sub_1C86A1934();
      v20 = v19;
      v21 = 0;
      v22 = v14 + 56;
      v35 = v19;
      v36 = v15;
      while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(v14 + 32))
      {
        v23 = v18 >> 6;
        if ((*(v22 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
        {
          goto LABEL_31;
        }

        if (*(v14 + 36) != v20)
        {
          goto LABEL_32;
        }

        v38 = v17;

        v24 = sub_1C86F8EEC();
        v25 = [a6 entityWithIdentifier_];

        sub_1C86F939C();
        sub_1C86F93CC();
        sub_1C86F93DC();
        sub_1C86F93AC();
        if (v38)
        {
          goto LABEL_36;
        }

        v26 = 1 << *(v14 + 32);
        if (v18 >= v26)
        {
          goto LABEL_33;
        }

        v27 = *(v22 + 8 * v23);
        if ((v27 & (1 << v18)) == 0)
        {
          goto LABEL_34;
        }

        if (*(v14 + 36) != v20)
        {
          goto LABEL_35;
        }

        v28 = v27 & (-2 << (v18 & 0x3F));
        if (v28)
        {
          v26 = __clz(__rbit64(v28)) | v18 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v29 = v23 << 6;
          v30 = v23 + 1;
          v31 = (v14 + 64 + 8 * v23);
          while (v30 < (v26 + 63) >> 6)
          {
            v33 = *v31++;
            v32 = v33;
            v29 += 64;
            ++v30;
            if (v33)
            {
              sub_1C86A1A14(v18, v20, 0);
              v26 = __clz(__rbit64(v32)) + v29;
              goto LABEL_27;
            }
          }

          sub_1C86A1A14(v18, v20, 0);
        }

LABEL_27:
        v17 = 0;
        ++v21;
        v18 = v26;
        v20 = v35;
        if (v21 == v36)
        {

          v16 = v40;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_31:
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
    }

    else
    {
LABEL_29:
      a3(0, v16);
    }
  }
}

uint64_t sub_1C86A1158(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_6_1();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t CKKnowledgeStore.entities()()
{
  v19 = sub_1C86F8E6C();
  MEMORY[0x1EEE9AC00](v19, v1);
  v17 = v0;
  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = (v2 + 16);
  OUTLINED_FUNCTION_6_1();
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  v5 = dispatch_semaphore_create(0);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v4;
  v6[4] = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1C86934D4;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1C86933E0;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C86A150C;
  aBlock[3] = &block_descriptor_0;
  v8 = _Block_copy(aBlock);

  v9 = v5;

  [v17 entitiesWithCompletionHandler_];
  _Block_release(v8);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    swift_allocError();
    *v10 = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 3;
  }

  else
  {
    swift_beginAccess();
    if (!*v3)
    {

      swift_beginAccess();
      v7 = *(v4 + 16);

      v15 = OUTLINED_FUNCTION_12();
      v16(v15);
      return v7;
    }

    v11 = *v3;
  }

  swift_willThrow();

  v12 = OUTLINED_FUNCTION_12();
  v13(v12);
  return v7;
}

uint64_t sub_1C86A150C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  type metadata accessor for CKKnowledgeStoreEntity();
  v4 = sub_1C86F909C();

  v5 = a2;
  v3(a2, v4);
}

uint64_t CKKnowledgeStore.triples(matching:)()
{
  OUTLINED_FUNCTION_11_4();
  OUTLINED_FUNCTION_0_4(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_4_4();
  return v1(v0);
}

uint64_t CKKnowledgeStore.triples(matching:completionHandler:)()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_21(OBJC_IVAR___CKKnowledgeStore_backingStore);
  v0 = OUTLINED_FUNCTION_14();
  return v1(v0);
}

void sub_1C86A1888(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (a1)
  {
    v6 = sub_1C86F8B9C();
  }

  else
  {
    v6 = 0;
  }

  a4(0);
  v7 = sub_1C86F908C();
  (*(a3 + 16))(a3, v6, v7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C86A1A14(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1C86A1A20()
{
  result = qword_1ED5BC4C0;
  if (!qword_1ED5BC4C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5BC4C0);
  }

  return result;
}

void sub_1C86A1B2C(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C8686320(a1, v5);
  sub_1C869F398(0, &qword_1ED5BC4C0);
  if (OUTLINED_FUNCTION_31_1())
  {

    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    sub_1C8686320(a1, a2);
  }
}

uint64_t DatabaseExtension.getter()
{
  swift_beginAccess();
  v0 = qword_1EC2ADA90;

  return v0;
}

uint64_t DatabaseExtension.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  qword_1EC2ADA90 = a1;
  qword_1EC2ADA98 = a2;
}

uint64_t sub_1C86A1CB4()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1C86A1CE4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21_0();
  v4 = swift_allocObject();
  sub_1C86A1D30(a1, a2);
  return v4;
}

uint64_t sub_1C86A1D30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_1C869F398(0, &qword_1EC2AD7C8);
  v4 = sub_1C86A2014(0xD000000000000018, 0x80000001C8700050, 0);
  *(v3 + 32) = v4;
  v5 = type metadata accessor for CoreKnowledgeXPCUtils();
  v6 = v4;
  v7 = [v5 CKServiceXPCInterface];
  [v6 setRemoteObjectInterface_];

  v8 = *(v3 + 32);
  v26 = sub_1C86A2090;
  v27 = 0;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C86A209C;
  v25 = &block_descriptor_1;
  v9 = _Block_copy(&v22);
  v10 = v8;
  [v10 setInterruptionHandler_];
  _Block_release(v9);

  v11 = *(v3 + 32);
  v26 = sub_1C86A20E0;
  v27 = 0;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C86A209C;
  v25 = &block_descriptor_11;
  v12 = _Block_copy(&v22);
  v13 = v11;
  [v13 setInvalidationHandler_];
  _Block_release(v12);

  [*(v3 + 32) resume];
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v14 = sub_1C86F8DBC();
  __swift_project_value_buffer(v14, qword_1ED5BC790);

  v15 = sub_1C86F8DAC();
  v16 = sub_1C86F910C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = *(v3 + 32);
    *(v17 + 4) = v19;
    *v18 = v19;
    v20 = v19;
    _os_log_impl(&dword_1C8683000, v15, v16, "XPC connection established. %@", v17, 0xCu);
    sub_1C86A5148(v18, &unk_1EC2ADAA0);
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_11_1();
  }

  return v3;
}

id sub_1C86A2014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1C86F8EEC();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

uint64_t sub_1C86A209C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1C86A20EC(const char *a1)
{
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = sub_1C86F8DBC();
  __swift_project_value_buffer(v2, qword_1ED5BC790);
  oslog = sub_1C86F8DAC();
  v3 = sub_1C86F910C();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C8683000, oslog, v3, a1, v4, 2u);
    OUTLINED_FUNCTION_11_1();
  }
}

uint64_t sub_1C86A21F4()
{
  [*(v0 + 32) invalidate];

  return v0;
}

uint64_t sub_1C86A222C()
{
  sub_1C86A21F4();
  OUTLINED_FUNCTION_21_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C86A227C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  OUTLINED_FUNCTION_11();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  OUTLINED_FUNCTION_2_3();
  v12 = 1107296256;
  v13 = sub_1C86A2520;
  v14 = &block_descriptor_207;
  v7 = _Block_copy(aBlock);

  v8 = [v5 remoteObjectProxyWithErrorHandler_];
  _Block_release(v7);
  sub_1C86F929C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAB0);
  if (OUTLINED_FUNCTION_31_1())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C86A2390(void *a1, uint64_t (*a2)(void *))
{
  if (qword_1ED5BC708 != -1)
  {
    swift_once();
  }

  v4 = sub_1C86F8DBC();
  __swift_project_value_buffer(v4, qword_1ED5BC790);
  v5 = a1;
  v6 = sub_1C86F8DAC();
  v7 = sub_1C86F912C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v8 = 136315138;
    swift_getErrorValue();
    sub_1C86F94EC();
    v9 = sub_1C8685FDC();

    *(v8 + 4) = v9;
    _os_log_impl(&dword_1C8683000, v6, v7, "XPC connection error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1CCA7C540](v11, -1, -1);
    MEMORY[0x1CCA7C540](v8, -1, -1);
  }

  return a2(a1);
}

void sub_1C86A2520(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1C86A2588()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9B8);
  __swift_allocate_value_buffer(v0, qword_1EC2AEFB0);
  v1 = __swift_project_value_buffer(v0, qword_1EC2AEFB0);
  return sub_1C86A25E0(v1);
}

uint64_t sub_1C86A25E0@<X0>(uint64_t a1@<X8>)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1C86F8C1C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v29[-v10];
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v29[-v13];
  v15 = [objc_opt_self() defaultManager];
  v30[0] = 0;
  v16 = [v15 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:v30];

  v17 = v30[0];
  if (!v16)
  {
    v21 = v30[0];
    v22 = sub_1C86F8BAC();

    swift_willThrow();
    if (qword_1ED5BC708 != -1)
    {
      swift_once();
    }

    v23 = sub_1C86F8DBC();
    __swift_project_value_buffer(v23, qword_1ED5BC790);
    v24 = sub_1C86F8DAC();
    v25 = sub_1C86F913C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1C8683000, v24, v25, "Could not find library directory", v26, 2u);
      MEMORY[0x1CCA7C540](v26, -1, -1);
    }

    v27 = 1;
    return __swift_storeEnumTagSinglePayload(a1, v27, 1, v2);
  }

  sub_1C86F8BFC();
  v18 = v17;

  v19 = getpwnam("mobile");
  if (!v19)
  {
    (*(v3 + 16))(v14, v11, v2);
    goto LABEL_11;
  }

  result = v19->pw_dir;
  if (result)
  {
    sub_1C86F8FCC();
    sub_1C86F8BBC();

    sub_1C86F8BDC();
    (*(v3 + 8))(v7, v2);
LABEL_11:
    sub_1C86F8BDC();
    v28 = *(v3 + 8);
    v28(v11, v2);
    v28(v14, v2);
    v27 = 0;
    return __swift_storeEnumTagSinglePayload(a1, v27, 1, v2);
  }

  __break(1u);
  return result;
}

void sub_1C86A2C0C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11();
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = a2;
  OUTLINED_FUNCTION_11();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1C86A5328;
  *(v5 + 24) = v4;

  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_36_1();
  if (v4)
  {
    OUTLINED_FUNCTION_9_5();
    (*(v6 + 96))();
    v7 = sub_1C86F8EEC();

    v9[4] = a1;
    v9[5] = a2;
    v9[0] = MEMORY[0x1E69E9820];
    OUTLINED_FUNCTION_10_5();
    v9[2] = sub_1C86A2D70;
    v9[3] = &block_descriptor_201;
    v8 = _Block_copy(v9);

    [v4 keysInStoreWithIdentifier:v7 completionHandler:{v8, v9[0]}];
    swift_unknownObjectRelease();
    _Block_release(v8);
  }
}

void sub_1C86A2D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t a1, void *a2), void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_1();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11();
  v28 = swift_allocObject();
  OUTLINED_FUNCTION_28_1(v28);
  OUTLINED_FUNCTION_11();
  v29 = swift_allocObject();
  v29[2] = sub_1C86A5328;
  v29[3] = v24;

  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_19_2();

  if (v24)
  {
    OUTLINED_FUNCTION_9_5();
    (*(v30 + 96))();
    sub_1C86F8EEC();
    OUTLINED_FUNCTION_25_1();
    OUTLINED_FUNCTION_21_0();
    v31 = swift_allocObject();
    OUTLINED_FUNCTION_27_1(v31);
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_10_5();
    a11 = sub_1C86A2D70;
    a12 = &block_descriptor_190;
    _Block_copy(&a9);
    OUTLINED_FUNCTION_17_2();

    OUTLINED_FUNCTION_12_3(v32, sel_keysMatchingCondition_inStoreWithIdentifier_completionHandler_);
    swift_unknownObjectRelease();
    _Block_release(v25);
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_1C86A2EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t a1, void *a2, uint64_t a3), void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_1();
  a23 = v27;
  a24 = v28;
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_11();
  v29 = swift_allocObject();
  OUTLINED_FUNCTION_33_0(v29);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_37_1();
  if (v24)
  {
    v30 = sub_1C86F8EEC();
    OUTLINED_FUNCTION_9_5();
    (*(v31 + 96))();
    sub_1C86F8EEC();
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_21_0();
    v32 = swift_allocObject();
    OUTLINED_FUNCTION_16_0(v32);
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_10_5();
    a11 = sub_1C86A2FF8;
    a12 = &block_descriptor_178;
    _Block_copy(&a9);
    OUTLINED_FUNCTION_23_0();

    v33 = OUTLINED_FUNCTION_4_5();
    [v33 v34];
    swift_unknownObjectRelease();
    _Block_release(v26);
  }

  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_1C86A2FF8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a3;
    sub_1C8689930(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v6 = a2;
  swift_unknownObjectRetain();
  v5(a2, v10);

  return sub_1C86A5148(v10, &qword_1EC2AD810);
}

void sub_1C86A30B0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  OUTLINED_FUNCTION_11();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1C86A5328;
  *(v6 + 24) = v5;

  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_36_1();
  if (v5)
  {
    OUTLINED_FUNCTION_9_5();
    (*(v7 + 96))();
    v8 = sub_1C86F8EEC();

    OUTLINED_FUNCTION_21_0();
    v9 = swift_allocObject();
    v9[2] = v2;
    v9[3] = a1;
    v9[4] = a2;
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_3_5();
    v12[2] = v10;
    v12[3] = &block_descriptor_169;
    v11 = _Block_copy(v12);

    [v5 valuesInStoreWithIdentifier:v8 completionHandler:v11];
    swift_unknownObjectRelease();
    _Block_release(v11);
  }
}

uint64_t sub_1C86A322C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = sub_1C86F909C();

  v5 = a2;
  v3(a2, v4);
}

void sub_1C86A32B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_1();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  OUTLINED_FUNCTION_11();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v28;
  OUTLINED_FUNCTION_11();
  v32 = swift_allocObject();
  v32[2] = sub_1C86A5328;
  v32[3] = v31;

  v33 = OUTLINED_FUNCTION_20_1();

  if (v33)
  {
    v34 = sub_1C86F908C();
    OUTLINED_FUNCTION_9_5();
    (*(v35 + 96))();
    sub_1C86F8EEC();
    OUTLINED_FUNCTION_25_1();
    OUTLINED_FUNCTION_21_0();
    v36 = swift_allocObject();
    v36[2] = v24;
    v36[3] = v30;
    v36[4] = v28;
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_3_5();
    a11 = v37;
    a12 = &block_descriptor_155;
    v38 = _Block_copy(&a9);

    [v33 valuesForKeys:v34 inStoreWithIdentifier:v32 completionHandler:v38];
    swift_unknownObjectRelease();
    _Block_release(v38);
  }

  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_1C86A3434(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void))
{
  v5 = *(a2 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v14 = a4;
    v19 = MEMORY[0x1E69E7CC0];
    sub_1C869CF08(0, v5, 0);
    v6 = v19;
    v8 = a2 + 32;
    do
    {
      sub_1C8686320(v8, v16);
      sub_1C8686320(v16, &v17);
      sub_1C869F398(0, &qword_1ED5BC4C0);
      if (swift_dynamicCast())
      {

        v17 = 0u;
        v18 = 0u;
      }

      else
      {
        sub_1C8686320(v16, &v17);
      }

      __swift_destroy_boxed_opaque_existential_0(v16);
      v19 = v6;
      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1C869CF08((v9 > 1), v10 + 1, 1);
        v6 = v19;
      }

      *(v6 + 16) = v10 + 1;
      v11 = v6 + 32 * v10;
      v12 = v18;
      *(v11 + 32) = v17;
      *(v11 + 48) = v12;
      v8 += 32;
      --v5;
    }

    while (v5);
    a4 = v14;
  }

  a4(a1, v6);
}

void sub_1C86A35AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_1();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11();
  v28 = swift_allocObject();
  OUTLINED_FUNCTION_28_1(v28);
  OUTLINED_FUNCTION_11();
  v29 = swift_allocObject();
  v29[2] = sub_1C86A5328;
  v29[3] = v24;

  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_19_2();

  if (v24)
  {
    OUTLINED_FUNCTION_9_5();
    (*(v30 + 96))();
    sub_1C86F8EEC();
    OUTLINED_FUNCTION_25_1();
    OUTLINED_FUNCTION_21_0();
    v31 = swift_allocObject();
    OUTLINED_FUNCTION_27_1(v31);
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_3_5();
    a11 = v32;
    a12 = &block_descriptor_143;
    _Block_copy(&a9);
    OUTLINED_FUNCTION_17_2();

    OUTLINED_FUNCTION_12_3(v33, sel_valuesForKeysMatchingCondition_inStoreWithIdentifier_completionHandler_);
    swift_unknownObjectRelease();
    _Block_release(v25);
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_1C86A36E8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  OUTLINED_FUNCTION_11();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1C86A5324;
  *(v6 + 24) = v5;

  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_36_1();
  if (v5)
  {
    OUTLINED_FUNCTION_9_5();
    (*(v7 + 96))();
    v8 = sub_1C86F8EEC();

    OUTLINED_FUNCTION_21_0();
    v9 = swift_allocObject();
    v9[2] = v2;
    v9[3] = a1;
    v9[4] = a2;
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_10_5();
    v11[2] = sub_1C86A3860;
    v11[3] = &block_descriptor_131;
    v10 = _Block_copy(v11);

    [v5 keysAndValuesInStoreWithIdentifier:v8 completionHandler:v10];
    swift_unknownObjectRelease();
    _Block_release(v10);
  }
}

uint64_t sub_1C86A3860(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = sub_1C86F8E9C();

  v5 = a2;
  v3(a2, v4);
}

void sub_1C86A3900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t a1, void *a2), void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_1();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11();
  v28 = swift_allocObject();
  OUTLINED_FUNCTION_28_1(v28);
  OUTLINED_FUNCTION_11();
  v29 = swift_allocObject();
  v29[2] = sub_1C86A4FD0;
  v29[3] = v24;

  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_19_2();

  if (v24)
  {
    OUTLINED_FUNCTION_9_5();
    (*(v30 + 96))();
    sub_1C86F8EEC();
    OUTLINED_FUNCTION_25_1();
    OUTLINED_FUNCTION_21_0();
    v31 = swift_allocObject();
    OUTLINED_FUNCTION_27_1(v31);
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_10_5();
    a11 = sub_1C86A3860;
    a12 = &block_descriptor_117;
    _Block_copy(&a9);
    OUTLINED_FUNCTION_17_2();

    OUTLINED_FUNCTION_12_3(v32, sel_keysAndValuesForKeysMatchingCondition_inStoreWithIdentifier_completionHandler_);
    swift_unknownObjectRelease();
    _Block_release(v25);
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_1C86A3A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t a1, void *a2), void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_1();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11();
  v28 = swift_allocObject();
  OUTLINED_FUNCTION_28_1(v28);
  OUTLINED_FUNCTION_11();
  v29 = swift_allocObject();
  v29[2] = sub_1C86A4F70;
  v29[3] = v24;

  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_19_2();

  if (v24)
  {
    OUTLINED_FUNCTION_9_5();
    (*(v30 + 96))();
    sub_1C86F8EEC();
    OUTLINED_FUNCTION_25_1();
    OUTLINED_FUNCTION_21_0();
    v31 = swift_allocObject();
    OUTLINED_FUNCTION_27_1(v31);
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_10_5();
    a11 = sub_1C86A3B90;
    a12 = &block_descriptor_105;
    _Block_copy(&a9);
    OUTLINED_FUNCTION_17_2();

    OUTLINED_FUNCTION_12_3(v32, sel_triplesComponentsMatching_inStoreWithIdentifier_completionHandler_);
    swift_unknownObjectRelease();
    _Block_release(v25);
  }

  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_1C86A3B90(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  type metadata accessor for CKTriple();
  v4 = sub_1C86F909C();

  v5 = a2;
  v3(a2, v4);
}

void sub_1C86A3C24(uint64_t a1, void (*a2)(void))
{
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v3 = sub_1C86F8DBC();
  __swift_project_value_buffer(v3, qword_1ED5BC790);
  v4 = sub_1C86F8DAC();
  v5 = sub_1C86F912C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C8683000, v4, v5, "path search in .SQL store not yet supported.", v6, 2u);
    OUTLINED_FUNCTION_11_1();
  }

  sub_1C868B6E4();
  v7 = swift_allocError();
  OUTLINED_FUNCTION_1_1(v7, v8);
  a2();
}

uint64_t sub_1C86A3D3C()
{
  type metadata accessor for CKSQLWriteBatch();
  v0 = swift_allocObject();

  return sub_1C86AEC48(v1, v0);
}

void sub_1C86A3D8C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char aBlock, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_29_1();
  a27 = v30;
  a28 = v31;
  v33 = v32;
  v35 = v34;
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_11();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = v33;
  OUTLINED_FUNCTION_11();
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1C86A5320;
  *(v37 + 24) = v36;

  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_37_1();
  if (v36)
  {
    sub_1C86F8EEC();
    OUTLINED_FUNCTION_22_1();
    v38 = OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_9_5();
    (*(v39 + 96))();
    v40 = sub_1C86F8EEC();

    OUTLINED_FUNCTION_21_0();
    v41 = swift_allocObject();
    OUTLINED_FUNCTION_16_0(v41);
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_11_5();
    a13 = v42;
    a14 = &block_descriptor_93;
    v43 = _Block_copy(&aBlock);

    v44 = OUTLINED_FUNCTION_4_5();
    [v44 v45];
    swift_unknownObjectRelease();
    _Block_release(v43);
  }

  OUTLINED_FUNCTION_30_1();
}

void sub_1C86A3F18(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

void sub_1C86A3F90(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char aBlock, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_29_1();
  a27 = v30;
  a28 = v31;
  v33 = v32;
  v35 = v34;
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_11();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = v33;
  OUTLINED_FUNCTION_11();
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1C86A4EE0;
  *(v37 + 24) = v36;

  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_37_1();
  if (v36)
  {
    sub_1C86F8EEC();
    OUTLINED_FUNCTION_22_1();
    v38 = OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_9_5();
    (*(v39 + 96))();
    v40 = sub_1C86F8EEC();

    OUTLINED_FUNCTION_21_0();
    v41 = swift_allocObject();
    OUTLINED_FUNCTION_16_0(v41);
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_11_5();
    a13 = v42;
    a14 = &block_descriptor_79;
    v43 = _Block_copy(&aBlock);

    v44 = OUTLINED_FUNCTION_4_5();
    [v44 v45];
    swift_unknownObjectRelease();
    _Block_release(v43);
  }

  OUTLINED_FUNCTION_30_1();
}

void sub_1C86A411C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_1();
  a23 = v27;
  a24 = v28;
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_11();
  v29 = swift_allocObject();
  OUTLINED_FUNCTION_33_0(v29);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_37_1();
  if (v24)
  {
    v30 = sub_1C86F8EEC();
    OUTLINED_FUNCTION_9_5();
    (*(v31 + 96))();
    sub_1C86F8EEC();
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_21_0();
    v32 = swift_allocObject();
    OUTLINED_FUNCTION_16_0(v32);
    OUTLINED_FUNCTION_0_5();
    a10 = 1107296256;
    OUTLINED_FUNCTION_1_4();
    a11 = v33;
    a12 = &block_descriptor_67;
    _Block_copy(&a9);
    OUTLINED_FUNCTION_23_0();

    v34 = OUTLINED_FUNCTION_4_5();
    [v34 v35];
    swift_unknownObjectRelease();
    _Block_release(v26);
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_1C86A4248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_1();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  OUTLINED_FUNCTION_11();
  v29 = swift_allocObject();
  OUTLINED_FUNCTION_33_0(v29);
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_36_1();
  if (v24)
  {
    v30 = sub_1C86F908C();
    OUTLINED_FUNCTION_9_5();
    (*(v31 + 96))();
    sub_1C86F8EEC();
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_21_0();
    v32 = swift_allocObject();
    OUTLINED_FUNCTION_16_0(v32);
    OUTLINED_FUNCTION_0_5();
    a10 = 1107296256;
    OUTLINED_FUNCTION_1_4();
    a11 = v33;
    a12 = &block_descriptor_57;
    _Block_copy(&a9);
    OUTLINED_FUNCTION_23_0();

    v34 = OUTLINED_FUNCTION_4_5();
    [v34 v35];
    swift_unknownObjectRelease();
    _Block_release(v28);
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_1C86A4380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_1();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  OUTLINED_FUNCTION_11();
  v33 = swift_allocObject();
  v33[2] = v30;
  v33[3] = v28;

  v34 = OUTLINED_FUNCTION_24_0();

  if (v34)
  {
    OUTLINED_FUNCTION_9_5();
    (*(v35 + 96))();
    sub_1C86F8EEC();
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_21_0();
    v36 = swift_allocObject();
    v36[2] = v24;
    v36[3] = v30;
    v36[4] = v28;
    OUTLINED_FUNCTION_0_5();
    a10 = 1107296256;
    OUTLINED_FUNCTION_1_4();
    a11 = v37;
    a12 = &block_descriptor_47;
    v38 = _Block_copy(&a9);

    [v34 removeValuesMatchingCondition:v32 fromStoreWithIdentifier:v33 completionHandler:v38];
    swift_unknownObjectRelease();
    _Block_release(v38);
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_1C86A44C8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;

  v6 = sub_1C86A227C(sub_1C86A5338, v5);

  if (v6)
  {
    OUTLINED_FUNCTION_9_5();
    (*(v7 + 96))();
    sub_1C86F8EEC();
    OUTLINED_FUNCTION_19_2();

    OUTLINED_FUNCTION_21_0();
    v8 = swift_allocObject();
    v8[2] = v2;
    v8[3] = a1;
    v8[4] = a2;
    OUTLINED_FUNCTION_0_5();
    v13[1] = 1107296256;
    OUTLINED_FUNCTION_1_4();
    v13[2] = v9;
    v13[3] = &block_descriptor_37;
    v10 = _Block_copy(v13);

    v11 = OUTLINED_FUNCTION_4_5();
    [v11 v12];
    swift_unknownObjectRelease();
    _Block_release(v10);
  }
}

void sub_1C86A4614(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char aBlock, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_29_1();
  a27 = v31;
  a28 = v32;
  v34 = v33;
  v36 = v35;
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_11();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = v34;

  v38 = OUTLINED_FUNCTION_20_1();

  if (v38)
  {
    sub_1C86F8EEC();
    OUTLINED_FUNCTION_22_1();
    v39 = OUTLINED_FUNCTION_21_2();
    OUTLINED_FUNCTION_9_5();
    (*(v40 + 96))();
    v41 = sub_1C86F8EEC();

    OUTLINED_FUNCTION_21_0();
    v42 = swift_allocObject();
    v42[2] = v28;
    v42[3] = v36;
    v42[4] = v34;
    OUTLINED_FUNCTION_2_3();
    a12 = 1107296256;
    OUTLINED_FUNCTION_1_4();
    a13 = v43;
    a14 = &block_descriptor_27_0;
    v44 = _Block_copy(&aBlock);

    v45 = OUTLINED_FUNCTION_4_5();
    [v45 v46];
    swift_unknownObjectRelease();
    _Block_release(v44);
  }

  OUTLINED_FUNCTION_30_1();
}

void sub_1C86A4788(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_11();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_33_0(v3);
  v4 = sub_1C86A227C(sub_1C86A4EB0, v3);

  if (v4)
  {
    if (a2)
    {
      a2 = sub_1C86F8EEC();
    }

    v5 = sub_1C86F8EEC();
    OUTLINED_FUNCTION_9_5();
    (*(v6 + 96))();
    v7 = sub_1C86F8EEC();

    OUTLINED_FUNCTION_21_0();
    v8 = swift_allocObject();
    OUTLINED_FUNCTION_16_0(v8);
    OUTLINED_FUNCTION_0_5();
    v13[1] = 1107296256;
    OUTLINED_FUNCTION_1_4();
    v13[2] = v9;
    v13[3] = &block_descriptor_17;
    v10 = _Block_copy(v13);

    v11 = OUTLINED_FUNCTION_4_5();
    [v11 v12];
    swift_unknownObjectRelease();
    _Block_release(v10);
  }
}

void sub_1C86A4920(void (*a1)(void))
{
  sub_1C868B6E4();
  v2 = swift_allocError();
  OUTLINED_FUNCTION_1_1(v2, v3);
  a1();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C86A4E58(uint64_t a1, void (*a2)(uint64_t, _OWORD *))
{
  memset(v3, 0, sizeof(v3));
  a2(a1, v3);
  return sub_1C86A5148(v3, &qword_1EC2AD810);
}

uint64_t sub_1C86A4F38(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = 0;
  return v2(a1, &v4);
}

uint64_t objectdestroy_13Tm()
{

  OUTLINED_FUNCTION_21_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C86A50D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9B8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C86A5148(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C86A51A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id OUTLINED_FUNCTION_12_3(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void *OUTLINED_FUNCTION_16_0(void *result)
{
  result[2] = v2;
  result[3] = v3;
  result[4] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_2()
{
}

uint64_t OUTLINED_FUNCTION_20_1()
{

  return sub_1C86A227C(v0, v1);
}

uint64_t OUTLINED_FUNCTION_21_2()
{

  return sub_1C86F8EEC();
}

uint64_t OUTLINED_FUNCTION_22_1()
{

  return sub_1C86F8EEC();
}

uint64_t OUTLINED_FUNCTION_23_0()
{
}

uint64_t OUTLINED_FUNCTION_24_0()
{

  return sub_1C86A227C(v0, v1);
}

uint64_t OUTLINED_FUNCTION_25_1()
{
}

void *OUTLINED_FUNCTION_27_1(void *result)
{
  result[2] = v1;
  result[3] = v3;
  result[4] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_1(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_1()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_32_1()
{

  return sub_1C86A227C(v0, v1);
}

uint64_t OUTLINED_FUNCTION_33_0(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

uint64_t OUTLINED_FUNCTION_34_0()
{
}

uint64_t OUTLINED_FUNCTION_36_1()
{
}

uint64_t OUTLINED_FUNCTION_37_1()
{
}

uint64_t static CKPermanentEventStore.createEvent(withIdentifier:dateInterval:metadata:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v72 = a4;
  v73 = a5;
  v70 = a1;
  v71 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAB8);
  v7 = OUTLINED_FUNCTION_9_6(v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_2_4();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v66 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAC0);
  v17 = OUTLINED_FUNCTION_9_6(v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v66 - v19;
  v21 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_99();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  OUTLINED_FUNCTION_2_4();
  v69 = v26 - v27;
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v32 = &v66 - v31;
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v36 = &v66 - v35;
  MEMORY[0x1EEE9AC00](v34, v37);
  v39 = &v66 - v38;
  sub_1C86A5B58(a3, v15);
  v40 = sub_1C86F8B5C();
  v41 = OUTLINED_FUNCTION_14_3();
  if (__swift_getEnumTagSinglePayload(v41, v42, v40) == 1)
  {
    sub_1C86A5BC8(v15, &qword_1EC2ADAB8);
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
    sub_1C86F8CFC();
    if (__swift_getEnumTagSinglePayload(v20, 1, v21) != 1)
    {
      sub_1C86A5BC8(v20, &qword_1EC2ADAC0);
    }
  }

  else
  {
    sub_1C86F8B3C();
    OUTLINED_FUNCTION_13_3();
    (*(v43 + 8))(v15, v40);
    OUTLINED_FUNCTION_12_4();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v21);
    (*(v23 + 32))(v39, v20, v21);
  }

  sub_1C86A5B58(a3, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v40) == 1)
  {
    sub_1C86A5BC8(v11, &qword_1EC2ADAB8);
    v47 = 0.0;
  }

  else
  {
    sub_1C86F8B4C();
    v47 = v48;
    OUTLINED_FUNCTION_13_3();
    (*(v49 + 8))(v11, v40);
  }

  v50 = *(v23 + 16);
  v50(v36, v39, v21);
  if (!v73)
  {
    v57 = 1;
    v59 = v47;
    goto LABEL_12;
  }

  v67 = v39;
  v51 = MEMORY[0x1E69E7D40];
  v52 = *((*MEMORY[0x1E69E7D40] & *v73) + 0x118);
  v53 = v73;
  v52();
  (*(v23 + 8))(v36, v21);
  v54 = *(v23 + 32);
  v68 = v32;
  v55 = v54(v36, v32, v21);
  result = (*((*v51 & *v53) + 0x128))(v55);
  v57 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v58 = (*((*MEMORY[0x1E69E7D40] & *v53) + 0x138))();

    v59 = v47 + v58;
    v39 = v67;
    v32 = v68;
LABEL_12:
    v50(v32, v36, v21);
    v60 = v69;
    v50(v69, v39, v21);
    v61 = objc_allocWithZone(type metadata accessor for CKHistoricEvent());
    v62 = v71;

    v63 = v72;

    v64 = sub_1C86BDBB8(v70, v62, v32, v60, v57, v63, v47, v59);
    v65 = *(v23 + 8);
    v65(v36, v21);
    v65(v39, v21);
    return v64;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C86A5B58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C86A5BC8(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_13_3();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1C86A5D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAB8);
  v13 = OUTLINED_FUNCTION_11_6(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13, v18);
  v20 = v25 - v19;
  v21 = sub_1C86F8EEC();
  sub_1C86A5B58(a3, v20);
  v22 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v23 = swift_allocObject();
  v23[2] = a5;
  v23[3] = a6;
  v23[4] = a1;
  v23[5] = a2;
  sub_1C86A8DE4(v20, v23 + v22);
  *(v23 + ((v17 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v30 = sub_1C86A8E5C;
  v31 = v23;
  OUTLINED_FUNCTION_5_2();
  v27 = 1107296256;
  v28 = sub_1C86AD098;
  v29 = &block_descriptor_58;
  v24 = _Block_copy(aBlock);

  [v25[1] historicEventWithIdentifier:v21 completionHandler:v24];
  _Block_release(v24);

  OUTLINED_FUNCTION_108();
}

void sub_1C86A5F50(void *a1, void *a2, void (*a3)(void *, id), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v10 = a1;
    a3(a1, 0);
    v11 = a1;
  }

  else
  {
    type metadata accessor for CKPermanentEventStore();
    v17 = static CKPermanentEventStore.createEvent(withIdentifier:dateInterval:metadata:from:)(a5, a6, a7, a8, a2);
    a3(0, v17);
    v11 = v17;
  }
}

void CKPermanentEventStore.record(_:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAB8);
  v6 = OUTLINED_FUNCTION_9_6(v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v38 - v8;
  v10 = sub_1C86F8D0C();
  v11 = OUTLINED_FUNCTION_9_6(v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_2_4();
  MEMORY[0x1EEE9AC00](v13, v14);
  v15 = sub_1C86F8B5C();
  OUTLINED_FUNCTION_99();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a1 startDate];
  sub_1C86F8CDC();

  v23 = [a1 endDate];
  sub_1C86F8CDC();

  sub_1C86F8B2C();
  v24 = [a1 identifier];
  v25 = sub_1C86F8EFC();
  v27 = v26;

  (*(v17 + 16))(v9, v21, v15);
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v15);
  v31 = [a1 metadata];
  v32 = sub_1C86F8E9C();

  v33 = sub_1C86A6354(v32);

  v34 = swift_allocObject();
  v34[2] = v38;
  v34[3] = a3;
  v34[4] = a1;
  v35 = v39;
  v34[5] = v39;

  v36 = a1;
  v37 = v35;
  sub_1C86A5D8C(v25, v27, v9, v33, sub_1C86A8C1C, v34);

  sub_1C86A5BC8(v9, &qword_1EC2ADAB8);
  (*(v17 + 8))(v21, v15);
  OUTLINED_FUNCTION_108();
}

unint64_t sub_1C86A6354(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADD20);
    v2 = sub_1C86F943C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    sub_1C86A8F14(*(a1 + 48) + 40 * v11, __src);
    sub_1C8686320(*(a1 + 56) + 32 * v11, &__src[5]);
    memcpy(__dst, __src, sizeof(__dst));
    swift_dynamicCast();
    sub_1C8689930(&__dst[5], v22);
    sub_1C8689930(v22, v24);
    sub_1C8689930(v24, v25);
    sub_1C8689930(v25, &v23);
    result = sub_1C869C918(v20, v21);
    v12 = result;
    if (v13)
    {
      v14 = (v2[6] + 16 * result);
      *v14 = v20;
      v14[1] = v21;

      v15 = (v2[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_0(v15);
      result = sub_1C8689930(&v23, v15);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v2[6] + 16 * result);
      *v16 = v20;
      v16[1] = v21;
      result = sub_1C8689930(&v23, (v2[7] + 32 * result));
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_20;
      }

      v2[2] = v19;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void sub_1C86A65D4(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4, void *a5, uint64_t a6)
{
  if (a1)
  {
    a3();
  }

  else if (a2)
  {
    v10 = qword_1ED5BC708;
    v11 = a2;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = sub_1C86F8DBC();
    __swift_project_value_buffer(v12, qword_1ED5BC790);
    v13 = v11;
    v14 = a5;
    v15 = sub_1C86F8DAC();
    v16 = sub_1C86F910C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412546;
      *(v17 + 4) = v14;
      *(v17 + 12) = 2112;
      *(v17 + 14) = v13;
      *v18 = v14;
      v18[1] = a2;
      v19 = v13;
      v20 = v14;
      _os_log_impl(&dword_1C8683000, v15, v16, "Updating the store with event=%@. New historic event is %@", v17, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADAA0);
      swift_arrayDestroy();
      MEMORY[0x1CCA7C540](v18, -1, -1);
      MEMORY[0x1CCA7C540](v17, -1, -1);
    }

    v21 = v13;
    v22 = v14;
    v23 = sub_1C86F8DAC();
    v24 = sub_1C86F911C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      aBlock[0] = v37;
      *v25 = 136315394;
      v36 = v24;
      v26 = [v22 metadata];
      sub_1C86F8E9C();

      sub_1C86F8EAC();

      v27 = sub_1C8685FDC();

      *(v25 + 4) = v27;
      *(v25 + 12) = 2080;
      (*((*MEMORY[0x1E69E7D40] & *v21) + 0x140))(v28);
      sub_1C86F8EAC();

      v29 = sub_1C8685FDC();

      *(v25 + 14) = v29;
      _os_log_impl(&dword_1C8683000, v23, v36, "event.metadata=%s. historicEvent.metadata=%s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA7C540](v37, -1, -1);
      MEMORY[0x1CCA7C540](v25, -1, -1);
    }

    v30 = *(a6 + OBJC_IVAR___CKPermanentEventStore_knowledgeStore);
    v31 = v21;

    v32 = sub_1C86F8EEC();

    aBlock[4] = a3;
    aBlock[5] = a4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C868E054;
    aBlock[3] = &block_descriptor_61;
    v33 = _Block_copy(aBlock);

    [v30 setValue:v31 forKey:v32 completionHandler:v33];
    _Block_release(v33);
  }

  else
  {
    sub_1C868B6E4();
    v34 = swift_allocError();
    *v35 = 0xD000000000000056;
    *(v35 + 8) = 0x80000001C8700150;
    *(v35 + 32) = 1;
    a3();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CKPermanentEventStore.record(_:)(CKEvent *a1)
{
  v27 = sub_1C86F8E6C();
  OUTLINED_FUNCTION_99();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_1_5();
  v5 = v1;
  v6 = a1;
  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_11();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  v25 = sub_1C8690344;
  v26 = v9;
  OUTLINED_FUNCTION_5_2();
  v22 = 1107296256;
  OUTLINED_FUNCTION_1_4();
  v23 = v10;
  v24 = &block_descriptor_2;
  v11 = _Block_copy(aBlock);

  v12 = v8;

  [v5 recordEvent:v6 completionHandler:v11];
  _Block_release(v11);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    v13 = swift_allocError();
    OUTLINED_FUNCTION_3_6(v13, v14);
  }

  else
  {
    swift_beginAccess();
    v15 = *(v7 + 16);
    if (!v15)
    {

      v19 = OUTLINED_FUNCTION_7();
      v20(v19);
      return;
    }

    v16 = v15;
  }

  swift_willThrow();

  v17 = OUTLINED_FUNCTION_7();
  v18(v17);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CKPermanentEventStore.record(_:)(INInteraction a1)
{
  v2 = v1;
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_self() mainBundle];
  sub_1C86A8D74(v4);
  if (v5)
  {
    v6 = sub_1C86F8EEC();
  }

  else
  {
    v6 = 0;
  }

  v10[0] = 0;
  v7 = [v2 recordInteraction:a1.super.isa bundleId:v6 error:v10];

  if (v7)
  {
    v8 = v10[0];
  }

  else
  {
    v9 = v10[0];
    sub_1C86F8BAC();

    swift_willThrow();
  }
}

uint64_t sub_1C86A6EAC(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  v7 = a3;
  v8 = a1;
  a5(v7);

  return 1;
}

void CKPermanentEventStore.record(_:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [objc_opt_self() mainBundle];
  sub_1C86A8D74(v7);
  if (v8)
  {
    v9 = sub_1C86F8EEC();
  }

  else
  {
    v9 = 0;
  }

  v16 = a2;
  v17 = a3;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  OUTLINED_FUNCTION_1_4();
  v14 = v10;
  v15 = &block_descriptor_9;
  v11 = _Block_copy(&v12);

  [v3 recordInteraction:a1 bundleId:v9 completionHandler:{v11, v12, v13}];
  _Block_release(v11);
}

uint64_t sub_1C86A7088(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_6_1();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CKPermanentEventStore.record(_:withBundleId:)(INInteraction _, Swift::String_optional withBundleId)
{
  countAndFlagsBits = withBundleId.value._countAndFlagsBits;
  object = withBundleId.value._object;
  sub_1C86F8E6C();
  OUTLINED_FUNCTION_99();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_1_5();

  v7 = v2;
  v8 = _.super.isa;
  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_11();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;

  v12 = v10;
  sub_1C86A7344(sub_1C8690408, v11, v7, v8, countAndFlagsBits, object);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    v13 = swift_allocError();
    OUTLINED_FUNCTION_3_6(v13, v14);
  }

  else
  {
    swift_beginAccess();
    v15 = *(v9 + 16);
    if (!v15)
    {

      v19 = OUTLINED_FUNCTION_7();
      v20(v19);
      return;
    }

    v16 = v15;
  }

  swift_willThrow();

  v17 = OUTLINED_FUNCTION_7();
  v18(v17);
}

void sub_1C86A7344(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    v10 = sub_1C86F8EEC();
  }

  else
  {
    v10 = 0;
  }

  v12[4] = a1;
  v12[5] = a2;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1C868E054;
  v12[3] = &block_descriptor_52;
  v11 = _Block_copy(v12);

  [a3 recordInteraction:a4 bundleId:v10 completionHandler:v11];
  _Block_release(v11);
}

void sub_1C86A7500(void *a1, uint64_t a2, uint64_t a3, void *a4, const void *a5)
{
  v92 = a4;
  v95 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAB8);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v90 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v86 = &v80 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v87 = &v80 - v17;
  MEMORY[0x1EEE9AC00](v16, v18);
  v88 = &v80 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAC0);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v91 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v24);
  v89 = &v80 - v25;
  v26 = sub_1C86F8D0C();
  v93 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v31);
  v33 = &v80 - v32;
  v34 = swift_allocObject();
  *(v34 + 16) = a5;
  _Block_copy(a5);
  v94 = a1;
  v35 = [a1 intent];
  type metadata accessor for CKHistoricEvent();
  v36 = v35;
  v37 = a2;
  v38 = sub_1C86BD734(a2, v95, v35);
  v40 = v39;

  v80 = v37;
  v82 = v40;
  v83 = v38;
  v85 = v33;
  v41 = v86;
  v84 = v30;
  v42 = v34;
  v81 = v36;
  *&aBlock = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAC8);
  v43 = sub_1C86F8F5C();
  v44 = MEMORY[0x1E69E6158];
  v98 = MEMORY[0x1E69E6158];
  *&aBlock = v43;
  *(&aBlock + 1) = v45;
  sub_1C8689930(&aBlock, v102);
  v46 = MEMORY[0x1E69E7CC8];
  swift_isUniquelyReferenced_nonNull_native();
  v101 = v46;
  sub_1C868968C(v102, 0x6C43746E65746E69, 0xEB00000000737361);
  v47 = v101;
  if (v95)
  {
    v98 = v44;
    *&aBlock = v80;
    *(&aBlock + 1) = v95;
    sub_1C8689930(&aBlock, v102);

    swift_isUniquelyReferenced_nonNull_native();
    v101 = v47;
    sub_1C868968C(v102, 0x6C646E7542707061, 0xEB00000000644965);
    v47 = v101;
  }

  v48 = a5;
  v49 = v93;
  type metadata accessor for INInteractionEncoder();
  *(swift_initStackObject() + 16) = v94;
  v50 = sub_1C868B7E0();
  v51 = v41;
  v98 = v44;
  *&aBlock = v50;
  *(&aBlock + 1) = v52;
  sub_1C8689930(&aBlock, v102);
  swift_isUniquelyReferenced_nonNull_native();
  v101 = v47;
  sub_1C868968C(v102, 0xD000000000000011, 0x80000001C87000E0);
  v53 = v101;
  v54 = v87;
  v55 = [v94 dateInterval];
  if (v55)
  {
    v56 = v55;
    sub_1C86F8B0C();

    v57 = 0;
  }

  else
  {
    v57 = 1;
  }

  v95 = v53;
  v58 = sub_1C86F8B5C();
  __swift_storeEnumTagSinglePayload(v54, v57, 1, v58);
  v59 = v88;
  sub_1C86A8DE4(v54, v88);
  if (__swift_getEnumTagSinglePayload(v59, 1, v58))
  {
    sub_1C86A5BC8(v59, &qword_1EC2ADAB8);
    v60 = v89;
    __swift_storeEnumTagSinglePayload(v89, 1, 1, v26);
    v61 = v85;
    sub_1C86F8CFC();
    v62 = v42;
    if (__swift_getEnumTagSinglePayload(v60, 1, v26) != 1)
    {
      sub_1C86A5BC8(v60, &qword_1EC2ADAC0);
    }
  }

  else
  {
    v63 = v48;
    v64 = v89;
    sub_1C86F8B3C();
    sub_1C86A5BC8(v59, &qword_1EC2ADAB8);
    __swift_storeEnumTagSinglePayload(v64, 0, 1, v26);
    v61 = v85;
    v65 = v64;
    v48 = v63;
    (*(v49 + 32))(v85, v65, v26);
    v62 = v42;
  }

  v66 = [v94 dateInterval];
  v67 = v84;
  if (v66)
  {
    v68 = v66;
    v69 = v90;
    sub_1C86F8B0C();

    v70 = v69;
    v71 = 0;
    v72 = v92;
    v73 = v81;
  }

  else
  {
    v71 = 1;
    v72 = v92;
    v73 = v81;
    v70 = v90;
  }

  __swift_storeEnumTagSinglePayload(v70, v71, 1, v58);
  sub_1C86A8DE4(v70, v51);
  if (__swift_getEnumTagSinglePayload(v51, 1, v58))
  {
    sub_1C86A5BC8(v51, &qword_1EC2ADAB8);
    v74 = v91;
    __swift_storeEnumTagSinglePayload(v91, 1, 1, v26);
    sub_1C86F8CFC();
    if (__swift_getEnumTagSinglePayload(v74, 1, v26) != 1)
    {
      sub_1C86A5BC8(v74, &qword_1EC2ADAC0);
    }
  }

  else
  {
    v75 = v91;
    sub_1C86F8B1C();
    sub_1C86A5BC8(v51, &qword_1EC2ADAB8);
    __swift_storeEnumTagSinglePayload(v75, 0, 1, v26);
    v76 = v75;
    v61 = v85;
    (*(v93 + 32))(v67, v76, v26);
  }

  v77 = objc_allocWithZone(CKEvent);
  v78 = sub_1C86A8C40(v83, v82, v61, v67, v95);
  v99 = sub_1C869040C;
  v100 = v62;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v97 = sub_1C868E054;
  v98 = &block_descriptor_38;
  v79 = _Block_copy(&aBlock);

  [v72 recordEvent:v78 completionHandler:v79];

  _Block_release(v79);

  _Block_release(v48);
}

void CKPermanentEventStore.record(_:withBundleId:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v110 = a5;
  v111 = a4;
  v112 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAB8);
  v8 = OUTLINED_FUNCTION_9_6(v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_10_6();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_10_6();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_10_6();
  MEMORY[0x1EEE9AC00](v14, v15);
  v108 = &v96 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAC0);
  v18 = OUTLINED_FUNCTION_9_6(v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_2_4();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v96 - v25;
  v27 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_99();
  v109 = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  OUTLINED_FUNCTION_2_4();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v96 - v36;
  v38 = a1;
  v39 = [a1 intent];
  type metadata accessor for CKHistoricEvent();
  v113 = v39;
  v40 = a2;
  v41 = sub_1C86BD734(a2, v112, v39);
  v43 = v42;

  v96 = v40;
  v97 = v26;
  v98 = v38;
  v99 = v43;
  v100 = v41;
  v44 = v105;
  v101 = v37;
  v45 = v104;
  v102 = v33;
  v103 = v22;
  *&aBlock = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAC8);
  v46 = sub_1C86F8F5C();
  v47 = MEMORY[0x1E69E6158];
  v116 = MEMORY[0x1E69E6158];
  *&aBlock = v46;
  *(&aBlock + 1) = v48;
  sub_1C8689930(&aBlock, v120);
  v49 = MEMORY[0x1E69E7CC8];
  swift_isUniquelyReferenced_nonNull_native();
  v119 = v49;
  sub_1C868968C(v120, 0x6C43746E65746E69, 0xEB00000000737361);
  v50 = v119;
  v51 = v47;
  if (v112)
  {
    v116 = v47;
    *&aBlock = v96;
    *(&aBlock + 1) = v112;
    sub_1C8689930(&aBlock, v120);

    swift_isUniquelyReferenced_nonNull_native();
    v119 = v50;
    sub_1C868968C(v120, 0x6C646E7542707061, 0xEB00000000644965);
    v50 = v119;
  }

  v52 = v44;
  v53 = v107;
  type metadata accessor for INInteractionEncoder();
  inited = swift_initStackObject();
  v55 = v98;
  *(inited + 16) = v98;
  v56 = sub_1C868B7E0();
  v57 = v27;
  v116 = v51;
  *&aBlock = v56;
  *(&aBlock + 1) = v58;
  sub_1C8689930(&aBlock, v120);
  swift_isUniquelyReferenced_nonNull_native();
  v119 = v50;
  sub_1C868968C(v120, 0xD000000000000011, 0x80000001C87000E0);
  v59 = v119;
  v60 = [v55 dateInterval];
  if (v60)
  {
    v61 = v60;
    sub_1C86F8B0C();

    v62 = 0;
  }

  else
  {
    v62 = 1;
  }

  v112 = v59;
  v63 = sub_1C86F8B5C();
  __swift_storeEnumTagSinglePayload(v53, v62, 1, v63);
  v64 = v108;
  sub_1C86A8DE4(v53, v108);
  v65 = OUTLINED_FUNCTION_14_3();
  if (__swift_getEnumTagSinglePayload(v65, v66, v63))
  {
    sub_1C86A5BC8(v64, &qword_1EC2ADAB8);
    v67 = v97;
    v68 = OUTLINED_FUNCTION_14_3();
    __swift_storeEnumTagSinglePayload(v68, v69, 1, v57);
    v70 = v101;
    sub_1C86F8CFC();
    v71 = OUTLINED_FUNCTION_14_3();
    if (__swift_getEnumTagSinglePayload(v71, v72, v57) != 1)
    {
      sub_1C86A5BC8(v67, &qword_1EC2ADAC0);
    }
  }

  else
  {
    v73 = v97;
    sub_1C86F8B3C();
    sub_1C86A5BC8(v64, &qword_1EC2ADAB8);
    OUTLINED_FUNCTION_12_4();
    __swift_storeEnumTagSinglePayload(v74, v75, v76, v57);
    v70 = v101;
    (*(v109 + 32))(v101, v73, v57);
  }

  v77 = [v55 dateInterval];
  if (v77)
  {
    v78 = v77;
    sub_1C86F8B0C();

    v79 = 0;
  }

  else
  {
    v79 = 1;
  }

  v80 = v52;
  v81 = v106;
  v82 = v110;
  v83 = v111;
  v84 = v102;
  __swift_storeEnumTagSinglePayload(v80, v79, 1, v63);
  sub_1C86A8DE4(v80, v45);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, 1, v63);
  v86 = v109;
  if (EnumTagSinglePayload)
  {
    sub_1C86A5BC8(v45, &qword_1EC2ADAB8);
    v87 = v103;
    __swift_storeEnumTagSinglePayload(v103, 1, 1, v57);
    sub_1C86F8CFC();
    if (__swift_getEnumTagSinglePayload(v87, 1, v57) != 1)
    {
      sub_1C86A5BC8(v87, &qword_1EC2ADAC0);
    }
  }

  else
  {
    v88 = v103;
    sub_1C86F8B1C();
    sub_1C86A5BC8(v45, &qword_1EC2ADAB8);
    OUTLINED_FUNCTION_12_4();
    __swift_storeEnumTagSinglePayload(v89, v90, v91, v57);
    (*(v86 + 32))(v84, v88, v57);
  }

  v92 = objc_allocWithZone(CKEvent);
  v93 = sub_1C86A8C40(v100, v99, v70, v84, v112);
  v117 = v83;
  v118 = v82;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  OUTLINED_FUNCTION_1_4();
  v115 = v94;
  v116 = &block_descriptor_17_0;
  v95 = _Block_copy(&aBlock);

  [v81 recordEvent:v93 completionHandler:v95];

  _Block_release(v95);
  OUTLINED_FUNCTION_108();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CKPermanentEventStore.deleteInteractions(withBundleId:)(Swift::String withBundleId)
{
  sub_1C86F8E6C();
  OUTLINED_FUNCTION_99();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_1_5();
  v4 = v1;

  sub_1C86D0150();
  OUTLINED_FUNCTION_6_1();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = (v5 + 16);
  v7 = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_11();
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;

  v9 = v7;
  sub_1C86A882C(sub_1C8690408, v8, v4);

  if (sub_1C86F91EC())
  {
    sub_1C868B6E4();
    v10 = swift_allocError();
    OUTLINED_FUNCTION_3_6(v10, v11);
  }

  else
  {
    swift_beginAccess();
    if (!*v6)
    {

      v15 = OUTLINED_FUNCTION_7();
      v16(v15);
      return;
    }

    v12 = *v6;
  }

  swift_willThrow();

  v13 = OUTLINED_FUNCTION_7();
  v14(v13);
}

void sub_1C86A882C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1C86F8EEC();
  v8[4] = a1;
  v8[5] = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1C868E054;
  v8[3] = &block_descriptor_49;
  v7 = _Block_copy(v8);

  [a3 deleteInteractionsWithBundleId:v6 completionHandler:v7];
  _Block_release(v7);
}

void CKPermanentEventStore.deleteInteractions(withBundleId:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v13 = a1;
  v14 = a2;

  MEMORY[0x1CCA7B200](35, 0xE100000000000000);
  v8 = objc_allocWithZone(type metadata accessor for CKGenericCondition());
  v9 = CKGenericCondition.init(_:value:negated:)();
  v10 = *(v5 + OBJC_IVAR___CKPermanentEventStore_knowledgeStore);
  OUTLINED_FUNCTION_11();
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v17 = sub_1C86A8E54;
  v18 = v11;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1C868E054;
  v16 = &block_descriptor_28;
  v12 = _Block_copy(&v13);

  [v10 removeValuesMatching:v9 completionHandler:v12];
  _Block_release(v12);
}

void sub_1C86A8AF4(void *a1, void (*a2)(void))
{
  if (a1)
  {
    v4 = a1;
    (a2)(a1);
  }

  else
  {
    a2();
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1C86A8C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_1C86F8EEC();

  v11 = sub_1C86F8CCC();
  v12 = sub_1C86F8CCC();
  if (a5)
  {
    v13 = sub_1C86F8E8C();
  }

  else
  {
    v13 = 0;
  }

  v14 = [v6 initWithIdentifier:v10 startDate:v11 endDate:v12 metadata:v13];

  v15 = sub_1C86F8D0C();
  v16 = *(*(v15 - 8) + 8);
  v16(a4, v15);
  v16(a3, v15);
  return v14;
}

uint64_t sub_1C86A8D74(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C86F8EFC();

  return v3;
}

uint64_t sub_1C86A8DE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C86A8E5C(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAB8);
  OUTLINED_FUNCTION_11_6(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v11 = v2[2];
  v12 = v2[3];
  v13 = v2[4];
  v14 = v2[5];
  v15 = *(v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1C86A5F50(a1, a2, v11, v12, v13, v14, v2 + v10, v15);
}

uint64_t sub_1C86A9000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    result = sub_1C86A9000(a1, a2, MEMORY[0x1E69E7CC0]);
    if (!v3)
    {
      v6 = sub_1C86D452C(a3);

      return v6;
    }
  }

  else
  {
    type metadata accessor for Statement();
    swift_allocObject();

    return sub_1C86D46BC(v7);
  }

  return result;
}

uint64_t sub_1C86A90CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C86A9000(a1, a2, MEMORY[0x1E69E7CC0]);
  if (!v4)
  {
    sub_1C86D452C(a3);
    v3 = sub_1C86D5020(MEMORY[0x1E69E7CC0]);
  }

  return v3;
}

uint64_t sub_1C86A9154()
{
  OUTLINED_FUNCTION_14_4();
  v5 = v4;
  OUTLINED_FUNCTION_13_4();

  sub_1C86F936C();

  OUTLINED_FUNCTION_2_5();
  if (v5)
  {
    OUTLINED_FUNCTION_12_5();
    v7 = v6 | 0x54414944454D0000;
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0x564953554C435845;
    }

    v10 = 0xE900000000000045;
  }

  else
  {
    v10 = 0xE800000000000000;
    v9 = OUTLINED_FUNCTION_3_7();
  }

  MEMORY[0x1CCA7B200](v9, v10);

  v11 = OUTLINED_FUNCTION_0_6();
  MEMORY[0x1CCA7B200](v11);

  OUTLINED_FUNCTION_5_5();
  v12 = OUTLINED_FUNCTION_4_6();
  sub_1C86AA924(v12, v13, v14, v15, v16, v17, v2, v0, v3, v1);
  OUTLINED_FUNCTION_8_6();
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_9_7();
}

uint64_t sub_1C86A92AC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_13_4();
  v8 = v7;

  sub_1C86F936C();

  OUTLINED_FUNCTION_2_5();
  if (a1)
  {
    OUTLINED_FUNCTION_12_5();
    v10 = v9 | 0x54414944454D0000;
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0x564953554C435845;
    }

    v13 = 0xE900000000000045;
  }

  else
  {
    v13 = 0xE800000000000000;
    v12 = OUTLINED_FUNCTION_3_7();
  }

  MEMORY[0x1CCA7B200](v12, v13);

  v14 = OUTLINED_FUNCTION_0_6();
  MEMORY[0x1CCA7B200](v14);
  v15 = v8;

  OUTLINED_FUNCTION_5_5();
  v16 = OUTLINED_FUNCTION_6_4();
  sub_1C86AAC18(v16, v17, v18, v19, v20, v21, a2, v15, a4);
  OUTLINED_FUNCTION_9_7();
  swift_bridgeObjectRelease_n();
}

uint64_t sub_1C86A93FC(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_13_4();
  v8 = v7;
  v9 = a4;
  sub_1C86F936C();

  OUTLINED_FUNCTION_2_5();
  if (a1)
  {
    OUTLINED_FUNCTION_12_5();
    v11 = v10 | 0x54414944454D0000;
    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0x564953554C435845;
    }

    v14 = 0xE900000000000045;
  }

  else
  {
    v14 = 0xE800000000000000;
    v13 = OUTLINED_FUNCTION_3_7();
  }

  MEMORY[0x1CCA7B200](v13, v14);

  v15 = OUTLINED_FUNCTION_0_6();
  MEMORY[0x1CCA7B200](v15);
  v16 = v8;
  v17 = v9;
  OUTLINED_FUNCTION_5_5();
  v26 = v18;
  v19 = OUTLINED_FUNCTION_6_4();
  sub_1C86AAF00(v19, v20, v21, v22, v23, v24, a2, v16, v26);
}

void sub_1C86A954C(char a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{

  v12 = a6;
  sub_1C86F936C();

  OUTLINED_FUNCTION_2_5();
  v47 = v13;
  v48 = v14;
  if (a1)
  {
    OUTLINED_FUNCTION_12_5();
    v16 = v15 | 0x54414944454D0000;
    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0x564953554C435845;
    }

    v19 = 0xE900000000000045;
  }

  else
  {
    v19 = 0xE800000000000000;
    v18 = OUTLINED_FUNCTION_3_7();
  }

  MEMORY[0x1CCA7B200](v18, v19);

  v20 = OUTLINED_FUNCTION_0_6();
  v21 = MEMORY[0x1CCA7B200](v20);
  v49 = &v39;
  v46 = &v39;
  v22 = v48;
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v45 = v38;
  v38[2] = a3;
  v38[3] = a4;
  v42 = a4;
  v38[4] = a5;
  v38[5] = v12;
  MEMORY[0x1EEE9AC00](v24, v25);
  v43 = v26;
  v40 = v28;
  v41 = v27;
  sub_1C8685A98();
  v29 = qword_1EC2AD780;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v30 = v12;

  v31 = v22;

  if (v29 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  sub_1C86F917C();
  v32 = v47;
  v33 = v48;
  v34 = sub_1C86AA4C0();
  if ((v33 & 1) != 0 || v32 != v34)
  {
    v35 = *(a2 + 88);
    v37 = v44;
    sub_1C86F91AC();

    if (!v37)
    {

      goto LABEL_15;
    }

LABEL_17:

    OUTLINED_FUNCTION_8_6();

    swift_bridgeObjectRelease_n();

    OUTLINED_FUNCTION_15_2();

    goto LABEL_18;
  }

  v35 = v30;
  v36 = v44;
  sub_1C86A90CC(v43, v31, MEMORY[0x1E69E7CC0]);
  if (v36)
  {

    goto LABEL_17;
  }

  sub_1C8697FE8(a3, v42, a5, v35);
  sub_1C86A90CC(0xD000000000000012, v40, MEMORY[0x1E69E7CC0]);

LABEL_15:

  OUTLINED_FUNCTION_8_6();

  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_15_2();

LABEL_18:
  OUTLINED_FUNCTION_15_2();
}

uint64_t sub_1C86A9A00(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  sub_1C86F936C();

  OUTLINED_FUNCTION_2_5();
  if (a1)
  {
    if (a1 == 1)
    {
      v11 = 0x54414944454D4D49;
    }

    else
    {
      v11 = 0x564953554C435845;
    }

    v12 = 0xE900000000000045;
  }

  else
  {
    v12 = 0xE800000000000000;
    v11 = OUTLINED_FUNCTION_3_7();
  }

  MEMORY[0x1CCA7B200](v11, v12);

  v13 = OUTLINED_FUNCTION_0_6();
  MEMORY[0x1CCA7B200](v13);

  OUTLINED_FUNCTION_5_5();
  v14 = OUTLINED_FUNCTION_4_6();
  sub_1C86ABAF8(v14, v15, v16, v17, v18, v19, a2, a3, a4, a5, a6);
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_8_6();
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_9_7();
}

uint64_t sub_1C86A9BA0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_1C86F936C();

  OUTLINED_FUNCTION_2_5();
  if (a1)
  {
    OUTLINED_FUNCTION_12_5();
    v15 = v14 | 0x54414944454D0000;
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0x564953554C435845;
    }

    v18 = 0xE900000000000045;
  }

  else
  {
    v18 = 0xE800000000000000;
    v17 = OUTLINED_FUNCTION_3_7();
  }

  MEMORY[0x1CCA7B200](v17, v18);

  v19 = OUTLINED_FUNCTION_0_6();
  MEMORY[0x1CCA7B200](v19);

  OUTLINED_FUNCTION_5_5();
  v20 = OUTLINED_FUNCTION_4_6();
  sub_1C86AB1D4(v20, v21, v22, v23, v24, v25, a2, a3, a4, a5, a6, a7);
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_8_6();
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_9_7();
}

uint64_t sub_1C86A9D34(char a1, uint64_t a2, uint64_t a3)
{

  sub_1C86F936C();

  OUTLINED_FUNCTION_2_5();
  if (a1)
  {
    OUTLINED_FUNCTION_12_5();
    v7 = v6 | 0x54414944454D0000;
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0x564953554C435845;
    }

    v10 = 0xE900000000000045;
  }

  else
  {
    v10 = 0xE800000000000000;
    v9 = OUTLINED_FUNCTION_3_7();
  }

  MEMORY[0x1CCA7B200](v9, v10);

  v11 = OUTLINED_FUNCTION_0_6();
  MEMORY[0x1CCA7B200](v11);

  OUTLINED_FUNCTION_5_5();
  v12 = OUTLINED_FUNCTION_4_6();
  sub_1C86AB51C(v12, v13, v14, v15, v16, v17, a2, a3);
  OUTLINED_FUNCTION_9_7();
}

uint64_t sub_1C86A9E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  OUTLINED_FUNCTION_14_4();
  v12 = v11;

  sub_1C86F936C();

  OUTLINED_FUNCTION_2_5();
  if (v12)
  {
    OUTLINED_FUNCTION_12_5();
    v14 = v13 | 0x54414944454D0000;
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0x564953554C435845;
    }

    v17 = 0xE900000000000045;
  }

  else
  {
    v17 = 0xE800000000000000;
    v16 = OUTLINED_FUNCTION_3_7();
  }

  MEMORY[0x1CCA7B200](v16, v17);

  v18 = OUTLINED_FUNCTION_0_6();
  MEMORY[0x1CCA7B200](v18);

  OUTLINED_FUNCTION_5_5();
  v19 = OUTLINED_FUNCTION_4_6();
  sub_1C86AB7AC(v19, v20, v21, v22, v23, v24, v8, v6, v9, v7, a6);
  OUTLINED_FUNCTION_8_6();
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_9_7();
}

uint64_t sub_1C86AA01C()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C86AA058(uint64_t a1, uint64_t a2, char a3)
{
  v21 = sub_1C86F919C();
  v4 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v5);
  OUTLINED_FUNCTION_3_2();
  v8 = v7 - v6;
  v9 = sub_1C86F8E3C();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  OUTLINED_FUNCTION_3_2();
  v11 = sub_1C86F916C();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_3_2();
  *(v3 + 16) = 0u;
  v13 = (v3 + 16);
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  v14 = MEMORY[0x1E69E7CC8];
  *(v3 + 64) = 0;
  *(v3 + 72) = v14;
  *(v3 + 80) = v14;
  sub_1C8685A98();
  sub_1C86859E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAE0);
  sub_1C8685ADC();
  sub_1C86F92AC();
  sub_1C86F8E1C();
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8090], v21);
  *(v3 + 88) = sub_1C86F91CC();
  *(v3 + 96) = 0;
  *(v3 + 104) = 1;
  OUTLINED_FUNCTION_11_7();
  if (a3)
  {
    v15 = 65537;
  }

  else
  {
    v15 = 65542;
  }

  v16 = sub_1C86F8F6C();

  swift_beginAccess();
  v17 = sqlite3_open_v2((v16 + 32), v13, v15, 0);
  swift_endAccess();

  sub_1C86AA3E4(v17, 0);
  if (v24)
  {
  }

  else
  {
    v18 = qword_1EC2AD780;
    v19 = *(v22 + 88);
    if (v18 != -1)
    {
      OUTLINED_FUNCTION_1_7();
    }

    sub_1C86AA4C0();
    sub_1C86F918C();
  }

  return v22;
}

uint64_t sub_1C86AA39C()
{
  OUTLINED_FUNCTION_11_7();
  if (v1 == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v0;
  }

  if (v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  sub_1C869F384(v0, v1);
  return v4;
}

const char *sub_1C86AA3E4(uint64_t a1, uint64_t a2)
{
  if (qword_1EC2AD768 != -1)
  {
    swift_once();
  }

  if (sub_1C86ABFD4(a1, qword_1EC2AD770))
  {
    return a1;
  }

  v4 = sub_1C86AA01C();
  result = sqlite3_errmsg(v4);
  if (result)
  {
    v6 = sub_1C86F8FCC();
    v8 = v7;
    sub_1C86AC270();
    swift_allocError();
    *v9 = v6;
    *(v9 + 8) = v8;
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    swift_willThrow();

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C86AA4C0()
{
  result = v0;
  if (*(v0 + 104) != 1)
  {
    return *(v0 + 96);
  }

  *(v0 + 96) = v0;
  *(v0 + 104) = 0;
  return result;
}

uint64_t sub_1C86AA4E4()
{
  v1 = sub_1C86AA01C();
  sqlite3_close(v1);
  sqlite3_release_memory(0x7FFFFFFF);
  _Block_release(*(v0 + 32));
  _Block_release(*(v0 + 40));
  _Block_release(*(v0 + 48));
  _Block_release(*(v0 + 56));
  _Block_release(*(v0 + 64));

  return v0;
}

uint64_t sub_1C86AA54C()
{
  sub_1C86AA4E4();

  return MEMORY[0x1EEE6BDC0](v0, 105, 7);
}

const char *sub_1C86AA5A4@<X0>(_DWORD *a1@<X8>)
{
  v3 = sub_1C86AA01C();
  v4 = sub_1C86F8F6C();
  v5 = sqlite3_exec(v3, (v4 + 32), 0, 0, 0);

  result = sub_1C86AA3E4(v5, 0);
  if (!v1)
  {
    *a1 = v5;
  }

  return result;
}

BOOL sub_1C86AA638(uint64_t a1, uint64_t a2)
{
  sub_1C8685A98();
  if (qword_1EC2AD780 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  sub_1C86F917C();
  v5 = sub_1C86AA4C0();
  if ((v12 & 1) != 0 || v11 != v5)
  {
    v9 = *(a1 + 88);
    sub_1C86F91AC();

    if (!v2)
    {
      return v13;
    }
  }

  else
  {
    swift_beginAccess();
    v6 = sqlite3_step(*(a2 + 16));
    v7 = v6;
    sub_1C86AA3E4(v6, 0);

    if (!v2)
    {
      return v7 == 100;
    }
  }

  return v8;
}

uint64_t sub_1C86AA77C(uint64_t a1)
{
  sub_1C8685A98();
  if (qword_1EC2AD780 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  sub_1C86F917C();
  v3 = sub_1C86AA4C0();
  if ((v9 & 1) != 0 || v8 != v3)
  {
    v6 = *(a1 + 88);
    sub_1C86F91AC();
    if (v1)
    {

      return v6;
    }

    v6 = v10;
LABEL_11:

    return v6;
  }

  v4 = sub_1C86AA01C();
  v5 = sub_1C86F8F6C();
  v6 = sqlite3_exec(v4, (v5 + 32), 0, 0, 0);

  sub_1C86AA3E4(v6, 0);
  if (!v1)
  {

    goto LABEL_11;
  }

  return v6;
}

uint64_t sub_1C86AA924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C8685A98();
  v14 = qword_1EC2AD780;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  if (v14 != -1)
  {
    swift_once();
  }

  sub_1C86F917C();
  v15 = sub_1C86AA4C0();
  if ((v22 & 1) != 0 || v21 != v15)
  {
    v16 = *(a7 + 88);
    sub_1C86F91AC();
  }

  else
  {

    sub_1C86A90CC(a1, a2, MEMORY[0x1E69E7CC0]);
    if (v20)
    {
    }

    else
    {

      sub_1C8698AAC(a8, a9, a10);
      sub_1C86A90CC(a3, a4, MEMORY[0x1E69E7CC0]);
    }
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1C86AAC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  sub_1C8685A98();
  v13 = qword_1EC2AD780;
  v14 = a8;
  swift_bridgeObjectRetain_n();
  v15 = v14;

  v23 = a2;

  if (v13 != -1)
  {
    swift_once();
  }

  sub_1C86F917C();
  v16 = sub_1C86AA4C0();
  if ((v25 & 1) != 0 || v24 != v16)
  {
    v18 = *(a7 + 88);
    sub_1C86F91AC();
  }

  else
  {
    v17 = v15;

    sub_1C86A90CC(a1, v23, MEMORY[0x1E69E7CC0]);
    if (v22)
    {
    }

    else
    {

      sub_1C8698DC0(a9);
      sub_1C86A90CC(a3, a4, MEMORY[0x1E69E7CC0]);
    }
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1C86AAF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  sub_1C8685A98();
  v13 = qword_1EC2AD780;
  v14 = a8;
  v15 = a9;
  v27 = v14;
  v16 = v15;

  if (v13 != -1)
  {
    swift_once();
  }

  sub_1C86F917C();
  v17 = sub_1C86AA4C0();
  if ((v29 & 1) != 0 || (v18 = a2, v28 != v17))
  {
    v22 = *(a7 + 88);
    sub_1C86F91AC();

    v19 = v27;
  }

  else
  {
    v19 = v27;
    v20 = v27;
    v21 = v16;
    sub_1C86A90CC(a1, v18, MEMORY[0x1E69E7CC0]);
    if (v26)
    {
    }

    else
    {

      sub_1C86992AC();
      sub_1C86A90CC(a3, a4, MEMORY[0x1E69E7CC0]);
    }
  }
}

uint64_t sub_1C86AB1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C8685A98();
  v16 = qword_1EC2AD780;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  if (v16 != -1)
  {
    swift_once();
  }

  sub_1C86F917C();
  v17 = sub_1C86AA4C0();
  if ((v24 & 1) != 0 || v23 != v17)
  {
    v18 = *(a7 + 88);
    sub_1C86F91AC();
  }

  else
  {

    sub_1C86A90CC(a1, a2, MEMORY[0x1E69E7CC0]);
    if (v22)
    {
    }

    else
    {

      sub_1C869B71C(a8, a9, a10, a11, a12);
      sub_1C86A90CC(a3, a4, MEMORY[0x1E69E7CC0]);
    }
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
}

uint64_t sub_1C86AB51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  sub_1C8685A98();
  v15 = qword_1EC2AD780;
  swift_retain_n();

  if (v15 != -1)
  {
    swift_once();
  }

  sub_1C86F917C();
  v16 = sub_1C86AA4C0();
  if ((v40 & 1) != 0 || v39 != v16)
  {
    v24 = *(a7 + 88);
    sub_1C86F91AC();
  }

  else
  {

    sub_1C86A90CC(a1, a2, MEMORY[0x1E69E7CC0]);
    if (v9)
    {
    }

    else
    {

      sub_1C86996C0(a8, v17, v18, v19, v20, v21, v22, v23, a3, a5, v29, a7, a1, a2, sub_1C86AC424, a8, a3, a4, a5, a6, v38, v39, v40);
      sub_1C86A90CC(v27, a4, MEMORY[0x1E69E7CC0]);
    }
  }
}

uint64_t sub_1C86AB7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  sub_1C8685A98();
  v14 = qword_1EC2AD780;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  if (v14 != -1)
  {
    swift_once();
  }

  sub_1C86F917C();
  v15 = sub_1C86AA4C0();
  if ((v23 & 1) != 0 || v22 != v15)
  {
    v16 = *(a7 + 88);
    sub_1C86F91AC();
  }

  else
  {

    sub_1C86A90CC(a1, a2, MEMORY[0x1E69E7CC0]);
    if (v21)
    {
    }

    else
    {

      v17 = *a11;

      sub_1C86A90CC(a9, a10, v17);

      sub_1C86A90CC(a3, a4, MEMORY[0x1E69E7CC0]);
    }
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1C86ABAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_1C8685A98();
  v14 = qword_1EC2AD780;
  OUTLINED_FUNCTION_8_6();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  sub_1C86F917C();
  v15 = sub_1C86AA4C0();
  if ((v22 & 1) != 0 || v21 != v15)
  {
    v16 = *(a7 + 88);
    sub_1C86F91AC();
  }

  else
  {

    sub_1C86A90CC(a1, a2, MEMORY[0x1E69E7CC0]);
    if (v20)
    {
    }

    else
    {

      sub_1C86A90CC(a9, a10, a11);

      sub_1C86A90CC(a3, a4, MEMORY[0x1E69E7CC0]);
    }
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
}

uint64_t sub_1C86ABE00(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1C86A90CC(a2, a3, MEMORY[0x1E69E7CC0]);
  if (!v7)
  {

    a4(v12);
    sub_1C86A90CC(a6, a7, MEMORY[0x1E69E7CC0]);
  }

  return result;
}

uint64_t sub_1C86ABEFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAD0);
  swift_allocObject();
  result = sub_1C86F8DDC();
  qword_1EC2AD788 = result;
  return result;
}

const char *sub_1C86ABF48()
{
  v0 = sub_1C86AA01C();
  result = sqlite3_db_filename(v0, 0);
  if (result)
  {

    return sub_1C86F8FCC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C86ABFAC()
{
  result = sub_1C86AC2C4(&unk_1F484E620);
  qword_1EC2AD770 = result;
  return result;
}

uint64_t sub_1C86ABFD4(unsigned int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = MEMORY[0x1CCA7B780](*(a2 + 40), a1, 4);
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 4 * v7) != a1);
  }

  return v2;
}

uint64_t sub_1C86AC074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    OUTLINED_FUNCTION_13_4();

    sub_1C86F936C();

    v9 = a1;
    MEMORY[0x1CCA7B200](10272, 0xE200000000000000);
    v5 = sub_1C86D55B8();
    MEMORY[0x1CCA7B200](v5);

    MEMORY[0x1CCA7B200](0x3A65646F63282029, 0xE900000000000020);
    v6 = sub_1C86F946C();
    MEMORY[0x1CCA7B200](v6);

    MEMORY[0x1CCA7B200](41, 0xE100000000000000);
  }

  else
  {
    v9 = a1;

    MEMORY[0x1CCA7B200](0x203A65646F632820, 0xE800000000000000);
    v7 = sub_1C86F946C();
    MEMORY[0x1CCA7B200](v7);

    MEMORY[0x1CCA7B200](41, 0xE100000000000000);
  }

  return v9;
}

unint64_t sub_1C86AC270()
{
  result = qword_1EC2AD748;
  if (!qword_1EC2AD748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2AD748);
  }

  return result;
}

uint64_t sub_1C86AC2C4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAD8);
  result = sub_1C86F934C();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  v7 = a1 + 32;
  v8 = *(result + 40);
  v9 = ~(-1 << *(result + 32));
  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v11 = *(v7 + 4 * v5++);
    for (result = MEMORY[0x1CCA7B780](v8, v11, 4); ; result = v12 + 1)
    {
      v12 = result & v9;
      v13 = (result & v9) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v9);
      if ((v15 & v14) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + 4 * v12) == v11)
      {
        goto LABEL_11;
      }
    }

    *(v6 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 4 * v12) = v11;
    v16 = *(v3 + 16);
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      goto LABEL_16;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v10 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_13CoreKnowledge10ConnectionC8LocationO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C86AC52C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C86AC580(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1C86AC5E0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C86AC61C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C86AC65C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_2()
{
}

void sub_1C86AC7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  switch(a7)
  {
    case 1:
      OUTLINED_FUNCTION_9_8();
      v61 = MEMORY[0x1CCA7B260](7368563, 0xE300000000000000);
      v62 = OUTLINED_FUNCTION_6_5();
      v63 = MEMORY[0x1CCA7B260](v62);
      v10 = __OFADD__(v61, v63);
      v64 = v61 + v63;
      if (v10)
      {
        goto LABEL_52;
      }

      v65 = OUTLINED_FUNCTION_7_8();
      v66 = MEMORY[0x1CCA7B260](v65);
      v10 = __OFADD__(v64, v66);
      v67 = v64 + v66;
      if (v10)
      {
        goto LABEL_58;
      }

      v68 = OUTLINED_FUNCTION_8_7();
      v69 = MEMORY[0x1CCA7B260](v68);
      v10 = __OFADD__(v67, v69);
      v70 = v67 + v69;
      if (v10)
      {
        goto LABEL_64;
      }

      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_0_7();
      if (!v19)
      {
        goto LABEL_70;
      }

      if (__OFADD__(v70, v71))
      {
        goto LABEL_76;
      }

      MEMORY[0x1CCA7B1D0](v70 + v71);
      MEMORY[0x1CCA7B200](7368563, 0xE300000000000000);
      OUTLINED_FUNCTION_2_6();
      v72 = OUTLINED_FUNCTION_3_8();
      MEMORY[0x1CCA7B200](v72);
      OUTLINED_FUNCTION_2_6();
      v60 = OUTLINED_FUNCTION_4_7();
      goto LABEL_38;
    case 2:
      OUTLINED_FUNCTION_9_8();
      v35 = MEMORY[0x1CCA7B260](7565423, 0xE300000000000000);
      v36 = OUTLINED_FUNCTION_7_8();
      v37 = MEMORY[0x1CCA7B260](v36);
      v10 = __OFADD__(v35, v37);
      v38 = v35 + v37;
      if (v10)
      {
        goto LABEL_49;
      }

      v39 = OUTLINED_FUNCTION_8_7();
      v40 = MEMORY[0x1CCA7B260](v39);
      v10 = __OFADD__(v38, v40);
      v41 = v38 + v40;
      if (v10)
      {
        goto LABEL_55;
      }

      v42 = OUTLINED_FUNCTION_6_5();
      v43 = MEMORY[0x1CCA7B260](v42);
      v10 = __OFADD__(v41, v43);
      v44 = v41 + v43;
      if (v10)
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_0_7();
      if (!v19)
      {
        goto LABEL_67;
      }

      if (__OFADD__(v44, v45))
      {
        goto LABEL_73;
      }

      MEMORY[0x1CCA7B1D0](v44 + v45);
      MEMORY[0x1CCA7B200](7565423, 0xE300000000000000);
      OUTLINED_FUNCTION_2_6();
      v46 = OUTLINED_FUNCTION_4_7();
      MEMORY[0x1CCA7B200](v46);
      OUTLINED_FUNCTION_2_6();
      v47 = OUTLINED_FUNCTION_5_6();
      goto LABEL_46;
    case 3:
      OUTLINED_FUNCTION_9_8();
      v48 = MEMORY[0x1CCA7B260](7369583, 0xE300000000000000);
      v49 = OUTLINED_FUNCTION_7_8();
      v50 = MEMORY[0x1CCA7B260](v49);
      v10 = __OFADD__(v48, v50);
      v51 = v48 + v50;
      if (v10)
      {
        goto LABEL_50;
      }

      v52 = OUTLINED_FUNCTION_6_5();
      v53 = MEMORY[0x1CCA7B260](v52);
      v10 = __OFADD__(v51, v53);
      v54 = v51 + v53;
      if (v10)
      {
        goto LABEL_56;
      }

      v55 = OUTLINED_FUNCTION_8_7();
      v56 = MEMORY[0x1CCA7B260](v55);
      v10 = __OFADD__(v54, v56);
      v57 = v54 + v56;
      if (v10)
      {
        goto LABEL_62;
      }

      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_0_7();
      if (!v19)
      {
        goto LABEL_68;
      }

      if (__OFADD__(v57, v58))
      {
        goto LABEL_74;
      }

      MEMORY[0x1CCA7B1D0](v57 + v58);
      MEMORY[0x1CCA7B200](7369583, 0xE300000000000000);
      OUTLINED_FUNCTION_2_6();
      v59 = OUTLINED_FUNCTION_4_7();
      MEMORY[0x1CCA7B200](v59);
      OUTLINED_FUNCTION_2_6();
      v60 = OUTLINED_FUNCTION_3_8();
LABEL_38:
      MEMORY[0x1CCA7B200](v60);
      OUTLINED_FUNCTION_2_6();
      v34 = OUTLINED_FUNCTION_5_6();
      goto LABEL_47;
    case 4:
      OUTLINED_FUNCTION_9_8();
      v22 = MEMORY[0x1CCA7B260](7304048, 0xE300000000000000);
      v23 = OUTLINED_FUNCTION_8_7();
      v24 = MEMORY[0x1CCA7B260](v23);
      v10 = __OFADD__(v22, v24);
      v25 = v22 + v24;
      if (v10)
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
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
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        return;
      }

      v26 = OUTLINED_FUNCTION_6_5();
      v27 = MEMORY[0x1CCA7B260](v26);
      v10 = __OFADD__(v25, v27);
      v28 = v25 + v27;
      if (v10)
      {
        goto LABEL_54;
      }

      v29 = OUTLINED_FUNCTION_7_8();
      v30 = MEMORY[0x1CCA7B260](v29);
      v10 = __OFADD__(v28, v30);
      v31 = v28 + v30;
      if (v10)
      {
        goto LABEL_60;
      }

      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_0_7();
      if (!v19)
      {
        goto LABEL_66;
      }

      if (__OFADD__(v31, v32))
      {
        goto LABEL_72;
      }

      MEMORY[0x1CCA7B1D0](v31 + v32);
      MEMORY[0x1CCA7B200](7304048, 0xE300000000000000);
      OUTLINED_FUNCTION_2_6();
      v33 = OUTLINED_FUNCTION_5_6();
      MEMORY[0x1CCA7B200](v33);
      OUTLINED_FUNCTION_2_6();
      v21 = OUTLINED_FUNCTION_3_8();
LABEL_16:
      MEMORY[0x1CCA7B200](v21);
      OUTLINED_FUNCTION_2_6();
      v34 = OUTLINED_FUNCTION_4_7();
LABEL_47:
      MEMORY[0x1CCA7B200](v34);

      return;
    case 5:
      OUTLINED_FUNCTION_9_8();
      v73 = MEMORY[0x1CCA7B260](7565168, 0xE300000000000000);
      v74 = OUTLINED_FUNCTION_8_7();
      v75 = MEMORY[0x1CCA7B260](v74);
      v10 = __OFADD__(v73, v75);
      v76 = v73 + v75;
      if (v10)
      {
        goto LABEL_53;
      }

      v77 = OUTLINED_FUNCTION_7_8();
      v78 = MEMORY[0x1CCA7B260](v77);
      v10 = __OFADD__(v76, v78);
      v79 = v76 + v78;
      if (v10)
      {
        goto LABEL_59;
      }

      v80 = OUTLINED_FUNCTION_6_5();
      v81 = MEMORY[0x1CCA7B260](v80);
      v10 = __OFADD__(v79, v81);
      v82 = v79 + v81;
      if (v10)
      {
        goto LABEL_65;
      }

      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_0_7();
      if (!v19)
      {
        goto LABEL_71;
      }

      if (__OFADD__(v82, v83))
      {
        goto LABEL_77;
      }

      MEMORY[0x1CCA7B1D0](v82 + v83);
      MEMORY[0x1CCA7B200](7565168, 0xE300000000000000);
      OUTLINED_FUNCTION_2_6();
      v84 = OUTLINED_FUNCTION_5_6();
      MEMORY[0x1CCA7B200](v84);
      OUTLINED_FUNCTION_2_6();
      v47 = OUTLINED_FUNCTION_4_7();
LABEL_46:
      MEMORY[0x1CCA7B200](v47);
      OUTLINED_FUNCTION_2_6();
      v34 = OUTLINED_FUNCTION_3_8();
      goto LABEL_47;
    default:
      OUTLINED_FUNCTION_9_8();
      v7 = MEMORY[0x1CCA7B260](7303283, 0xE300000000000000);
      v8 = OUTLINED_FUNCTION_6_5();
      v9 = MEMORY[0x1CCA7B260](v8);
      v10 = __OFADD__(v7, v9);
      v11 = v7 + v9;
      if (v10)
      {
        goto LABEL_51;
      }

      v12 = OUTLINED_FUNCTION_8_7();
      v13 = MEMORY[0x1CCA7B260](v12);
      v10 = __OFADD__(v11, v13);
      v14 = v11 + v13;
      if (v10)
      {
        goto LABEL_57;
      }

      v15 = OUTLINED_FUNCTION_7_8();
      v16 = MEMORY[0x1CCA7B260](v15);
      v10 = __OFADD__(v14, v16);
      v17 = v14 + v16;
      if (v10)
      {
        goto LABEL_63;
      }

      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_0_7();
      if (!v19)
      {
        goto LABEL_69;
      }

      if (__OFADD__(v17, v18))
      {
        goto LABEL_75;
      }

      MEMORY[0x1CCA7B1D0](v17 + v18);
      MEMORY[0x1CCA7B200](7303283, 0xE300000000000000);
      OUTLINED_FUNCTION_2_6();
      v20 = OUTLINED_FUNCTION_3_8();
      MEMORY[0x1CCA7B200](v20);
      OUTLINED_FUNCTION_2_6();
      v21 = OUTLINED_FUNCTION_5_6();
      goto LABEL_16;
  }
}

uint64_t OUTLINED_FUNCTION_1_8()
{

  return sub_1C86F900C();
}

void OUTLINED_FUNCTION_2_6()
{

  JUMPOUT(0x1CCA7B200);
}

void *sub_1C86ACCE4(const void *a1, int64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a2 < 1)
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9A0);
    v4 = swift_allocObject();
    v5 = _swift_stdlib_malloc_size(v4);
    v4[2] = a2;
    v4[3] = 2 * v5 - 64;
  }

  memcpy(v4 + 4, a1, a2);
  return v4;
}

uint64_t sub_1C86ACD7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1C869CE68(0, v1, 0);
    v3 = (a1 + 32);
    sub_1C86ACFE0();
    do
    {
      v4 = *v3++;
      v5 = v4 >= 0x10;
      if (v4 >= 0x10)
      {
        v6 = 0;
      }

      else
      {
        v6 = 48;
      }

      if (v5)
      {
        v7 = 0xE000000000000000;
      }

      else
      {
        v7 = 0xE100000000000000;
      }

      v8 = sub_1C86F905C();
      v10 = v9;

      MEMORY[0x1CCA7B200](v8, v10);

      v12 = *(v16 + 16);
      v11 = *(v16 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1C869CE68((v11 > 1), v12 + 1, 1);
      }

      *(v16 + 16) = v12 + 1;
      v13 = v16 + 16 * v12;
      *(v13 + 32) = v6;
      *(v13 + 40) = v7;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9C0);
  sub_1C86AD034();
  v14 = sub_1C86F8EDC();

  return v14;
}

uint64_t sub_1C86ACF10(uint64_t a1)
{
  v1 = sub_1C86ACD7C(a1);
  MEMORY[0x1CCA7B200](v1);

  MEMORY[0x1CCA7B200](39, 0xE100000000000000);
  return 10104;
}

uint64_t sub_1C86ACF84(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C86ACFE0()
{
  result = qword_1EC2ADAE8;
  if (!qword_1EC2ADAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2ADAE8);
  }

  return result;
}

unint64_t sub_1C86AD034()
{
  result = qword_1EC2AD738;
  if (!qword_1EC2AD738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2AD9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2AD738);
  }

  return result;
}

void sub_1C86AD098(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = a3;
  v5(a2, a3);
}

void CKPermanentEventStore.historicEvent(withIdentifier:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + OBJC_IVAR___CKPermanentEventStore_knowledgeStore);
  v8 = sub_1C86F8EEC();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v11[4] = sub_1C86AD34C;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1C86AD354;
  v11[3] = &block_descriptor_3;
  v10 = _Block_copy(v11);

  [v7 valueForKey:v8 completionHandler:v10];
  _Block_release(v10);
}

void sub_1C86AD22C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a1 || !*(a2 + 24))
  {
    a3();
    return;
  }

  sub_1C868FEF0(a2, v10);
  if (v11)
  {
    type metadata accessor for CKHistoricEvent();
    if (swift_dynamicCast())
    {
      v5 = v9;
      (a3)(0);

      return;
    }
  }

  else
  {
    sub_1C86885EC(v10);
  }

  sub_1C868B6E4();
  v6 = swift_allocError();
  v8 = v7;
  sub_1C868FEF0(a2, v7);
  *(v8 + 32) = 2;
  (a3)(v6, 0);
}

uint64_t sub_1C86AD354(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a3;
    sub_1C8689930(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v6 = a2;
  swift_unknownObjectRetain();
  v5(a2, v10);

  return sub_1C86885EC(v10);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C86AD4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = sub_1C86F8B9C();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  (*(a3 + 16))(a3);
}

void sub_1C86AD538(uint64_t a1, uint64_t a2, void *a3, void *a4, void (**a5)(void, void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  type metadata accessor for CKHistoricEvent();
  _Block_copy(a5);
  v11 = sub_1C86BD734(a1, a2, a3);
  v13 = v12;
  if (a3)
  {
    v14 = v11;
    v15 = sub_1C86F8EEC();
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = v13;
    v16[4] = sub_1C86AE000;
    v16[5] = v10;
    v27 = sub_1C86AE060;
    v28 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = sub_1C86AD098;
    v26 = &block_descriptor_22;
    v17 = _Block_copy(&aBlock);

    [a4 historicEventWithIdentifier:v15 completionHandler:v17];
    _Block_release(v17);

LABEL_7:
    _Block_release(a5);
    return;
  }

  if (!a2)
  {
    v27 = sub_1C86AE000;
    v28 = v10;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = sub_1C86ADE9C;
    v26 = &block_descriptor_15;
    v22 = _Block_copy(&aBlock);

    [a4 historicEventsWithCompletionHandler_];
    _Block_release(v22);

    goto LABEL_7;
  }

  sub_1C868B6E4();
  v18 = swift_allocError();
  *v19 = 1;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = 3;
  sub_1C86F8EBC();
  v20 = sub_1C86F8B9C();
  v21 = sub_1C86F8E8C();
  (a5)[2](a5, v20, v21);

  _Block_release(a5);
}

void CKPermanentEventStore.historicEvents(withSourceBundleIdentifier:andIntent:completionHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void *a1, void *a2), void *a5)
{
  v6 = v5;
  type metadata accessor for CKHistoricEvent();
  v12 = sub_1C86BD734(a1, a2, a3);
  v14 = v13;
  if (a3)
  {
    v15 = v12;
    v16 = sub_1C86F8EEC();
    v17 = swift_allocObject();
    v17[2] = v15;
    v17[3] = v14;
    v17[4] = a4;
    v17[5] = a5;
    v27 = sub_1C86ADF40;
    v28 = v17;
    OUTLINED_FUNCTION_0_8();
    v24 = 1107296256;
    v25 = sub_1C86AD098;
    v26 = &block_descriptor_9_0;
    v18 = _Block_copy(aBlock);

    [v6 historicEventWithIdentifier:v16 completionHandler:v18];
    _Block_release(v18);
  }

  else
  {

    if (a2)
    {
      sub_1C868B6E4();
      v19 = swift_allocError();
      *v20 = 1;
      *(v20 + 8) = 0;
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      *(v20 + 32) = 3;
      sub_1C86F8EBC();
      v21 = OUTLINED_FUNCTION_1_9();
      (a4)(v21);
    }

    else
    {
      v27 = a4;
      v28 = a5;
      OUTLINED_FUNCTION_0_8();
      v24 = 1107296256;
      v25 = sub_1C86ADE9C;
      v26 = &block_descriptor_3;
      v22 = _Block_copy(aBlock);

      [v6 historicEventsWithCompletionHandler_];
      _Block_release(v22);
    }
  }
}

uint64_t sub_1C86ADB88(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t))
{
  if (a1)
  {
    if (qword_1ED5BC708 != -1)
    {
      swift_once();
    }

    v9 = sub_1C86F8DBC();
    __swift_project_value_buffer(v9, qword_1ED5BC790);

    v10 = a1;
    v11 = sub_1C86F8DAC();
    v12 = sub_1C86F912C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_1C8685FDC();
      *(v13 + 12) = 2080;
      swift_getErrorValue();
      sub_1C86F94EC();
      v14 = sub_1C8685FDC();

      *(v13 + 14) = v14;
      _os_log_impl(&dword_1C8683000, v11, v12, "could not retrieve event with identifier %s. %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA7C540](v22, -1, -1);
      MEMORY[0x1CCA7C540](v13, -1, -1);
    }

    type metadata accessor for CKHistoricEvent();
    v15 = sub_1C86F8EBC();
    a5(a1, v15);
  }

  else if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADAF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C86FCC70;
    *(inited + 32) = a3;
    *(inited + 40) = a4;
    *(inited + 48) = a2;
    type metadata accessor for CKHistoricEvent();

    v18 = a2;
    v19 = sub_1C86F8EBC();
    a5(0, v19);
  }

  else
  {
    type metadata accessor for CKHistoricEvent();
    v21 = sub_1C86F8EBC();
    a5(0, v21);
  }
}

uint64_t sub_1C86ADE9C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  type metadata accessor for CKHistoricEvent();
  v4 = sub_1C86F8E9C();

  v5 = a2;
  v3(a2, v4);
}

uint64_t objectdestroy_5Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1C86AE0D4(uint64_t a1, void (*a2)(void))
{
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v5 = sub_1C86F8DBC();
  __swift_project_value_buffer(v5, qword_1ED5BC790);
  v6 = sub_1C86F8DAC();
  v7 = sub_1C86F913C();
  if (OUTLINED_FUNCTION_5_0(v7))
  {
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_14_5();
    *v3 = 136315138;
    OUTLINED_FUNCTION_3_9();
    *(v3 + 4) = OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_5_7(&dword_1C8683000, v8, v9, "%s store is not meant to store graphs");
    OUTLINED_FUNCTION_6_6();
    OUTLINED_FUNCTION_8_8();
  }

  sub_1C868B6E4();
  v10 = OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_4_8(v10, v11);
  a2();
}

uint64_t sub_1C86AE1DC()
{
  type metadata accessor for CKCloudKitWriteBatch();
  v0 = swift_allocObject();

  return sub_1C86AEC64(v1, v0, v2, type metadata accessor for CKCloudKitBackingStore);
}

void sub_1C86AE238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v10 = sub_1C86F8DBC();
  __swift_project_value_buffer(v10, qword_1ED5BC790);
  v11 = sub_1C86F8DAC();
  v12 = sub_1C86F913C();
  if (OUTLINED_FUNCTION_5_0(v12))
  {
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_14_5();
    *v8 = 136315138;
    OUTLINED_FUNCTION_3_9();
    *(v8 + 4) = OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_5_7(&dword_1C8683000, v13, v14, "%s store is not meant to store graphs");
    OUTLINED_FUNCTION_6_6();
    OUTLINED_FUNCTION_8_8();
  }

  sub_1C868B6E4();
  v15 = OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_4_8(v15, v16);
  a7();
}

void sub_1C86AE340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_11();
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;

  v8 = sub_1C86A227C(sub_1C86A5338, v7);

  if (v8)
  {
    v9 = sub_1C86F8EEC();
    OUTLINED_FUNCTION_3_9();
    v10 = sub_1C86F8EEC();
    OUTLINED_FUNCTION_21_0();
    v11 = swift_allocObject();
    v11[2] = v4;
    v11[3] = a3;
    v11[4] = a4;
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_1();
    v16[2] = v12;
    v16[3] = &block_descriptor_49_0;
    v13 = _Block_copy(v16);

    v14 = OUTLINED_FUNCTION_4_5();
    [v14 v15];
    swift_unknownObjectRelease();
    _Block_release(v13);
  }
}

void sub_1C86AE490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_1C86A227C(sub_1C86A5338, v6);

  if (v7)
  {
    v8 = sub_1C86F908C();
    OUTLINED_FUNCTION_3_9();
    v9 = sub_1C86F8EEC();
    OUTLINED_FUNCTION_21_0();
    v10 = swift_allocObject();
    v10[2] = v3;
    v10[3] = a2;
    v10[4] = a3;
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_1();
    v15[2] = v11;
    v15[3] = &block_descriptor_39_0;
    v12 = _Block_copy(v15);

    v13 = OUTLINED_FUNCTION_4_5();
    [v13 v14];
    swift_unknownObjectRelease();
    _Block_release(v12);
  }
}

void sub_1C86AE5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  v8 = sub_1C86A227C(sub_1C86A5338, v7);

  if (v8)
  {
    OUTLINED_FUNCTION_3_9();
    v9 = sub_1C86F8EEC();
    OUTLINED_FUNCTION_21_0();
    v10 = swift_allocObject();
    v10[2] = v3;
    v10[3] = a2;
    v10[4] = a3;
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_1();
    v13[2] = v11;
    v13[3] = &block_descriptor_29;
    v12 = _Block_copy(v13);

    [v8 removeValuesMatchingCondition:a1 fromSynchedStoreWithIdentifier:v9 completionHandler:v12];
    swift_unknownObjectRelease();
    _Block_release(v12);
  }
}

void sub_1C86AE720(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  v6 = sub_1C86A227C(sub_1C86A5338, v5);

  if (v6)
  {
    OUTLINED_FUNCTION_3_9();
    v7 = sub_1C86F8EEC();
    OUTLINED_FUNCTION_21_0();
    v8 = swift_allocObject();
    v8[2] = v2;
    v8[3] = a1;
    v8[4] = a2;
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_1();
    v13[2] = v9;
    v13[3] = &block_descriptor_19;
    v10 = _Block_copy(v13);

    v11 = OUTLINED_FUNCTION_4_5();
    [v11 v12];
    swift_unknownObjectRelease();
    _Block_release(v10);
  }
}

void sub_1C86AE848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v10 = sub_1C86F8DBC();
  __swift_project_value_buffer(v10, qword_1ED5BC790);
  v11 = sub_1C86F8DAC();
  v12 = sub_1C86F913C();
  if (OUTLINED_FUNCTION_5_0(v12))
  {
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_14_5();
    *v8 = 136315138;
    OUTLINED_FUNCTION_3_9();
    *(v8 + 4) = OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_5_7(&dword_1C8683000, v13, v14, "%s store is not meant to store graphs");
    OUTLINED_FUNCTION_6_6();
    OUTLINED_FUNCTION_8_8();
  }

  sub_1C868B6E4();
  v15 = OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_4_8(v15, v16);
  a7();
}

void sub_1C86AE94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v8 = sub_1C86F8DBC();
  __swift_project_value_buffer(v8, qword_1ED5BC790);
  v9 = sub_1C86F8DAC();
  v10 = sub_1C86F913C();
  if (OUTLINED_FUNCTION_5_0(v10))
  {
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_14_5();
    *v6 = 136315138;
    OUTLINED_FUNCTION_3_9();
    *(v6 + 4) = OUTLINED_FUNCTION_15_3();
    OUTLINED_FUNCTION_5_7(&dword_1C8683000, v11, v12, "%s store is not meant to store graphs");
    OUTLINED_FUNCTION_6_6();
    OUTLINED_FUNCTION_8_8();
  }

  sub_1C868B6E4();
  v13 = OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_4_8(v13, v14);
  a5();
}

void sub_1C86AEA50(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  v6 = sub_1C86A227C(sub_1C86A4EB0, v5);

  if (v6)
  {
    OUTLINED_FUNCTION_21_0();
    v7 = swift_allocObject();
    v7[2] = v2;
    v7[3] = a1;
    v7[4] = a2;
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_1();
    v10[2] = v8;
    v10[3] = &block_descriptor_4;
    v9 = _Block_copy(v10);

    [v6 disableSyncAndDeleteCloudDataWithCompletionHandler_];
    swift_unknownObjectRelease();
    _Block_release(v9);
  }
}

uint64_t sub_1C86AEB68(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21_0();
  swift_allocObject();
  return sub_1C86A1D30(a1, a2);
}

uint64_t sub_1C86AEBE0()
{
  sub_1C86A21F4();
  OUTLINED_FUNCTION_21_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C86AEC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v18 = sub_1C86F919C();
  v8 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v9);
  OUTLINED_FUNCTION_3_2();
  v12 = v11 - v10;
  v13 = sub_1C86F916C();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_3_2();
  v15 = sub_1C86F8E3C();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  OUTLINED_FUNCTION_3_2();
  v20 = a4(a3);
  v21 = &off_1F484F640;
  *&v19 = a1;
  sub_1C8685A98();
  sub_1C86F8E2C();
  sub_1C86859E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAE0);
  sub_1C8685ADC();
  sub_1C86F92AC();
  (*(v8 + 104))(v12, *MEMORY[0x1E69E8090], v18);
  *(a2 + 64) = sub_1C86F91CC();
  *(a2 + 16) = MEMORY[0x1E69E7CC8];
  sub_1C8687B6C(&v19, a2 + 24);
  return a2;
}

void OUTLINED_FUNCTION_4_8(uint64_t a1, uint64_t a2)
{
  *a2 = 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 3;
}

void OUTLINED_FUNCTION_5_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_8_8()
{

  JUMPOUT(0x1CCA7C540);
}

unint64_t OUTLINED_FUNCTION_15_3()
{

  return sub_1C8685FDC();
}

uint64_t OUTLINED_FUNCTION_16_1()
{

  return swift_slowAlloc();
}

uint64_t sub_1C86AEFE4()
{
  v1 = *(v0 + OBJC_IVAR___CKTriple_value);

  return v1;
}

uint64_t sub_1C86AF038()
{
  v1 = *(v0 + OBJC_IVAR___CKTriple_value + 16);

  return v1;
}

uint64_t sub_1C86AF0A8()
{
  v1 = *(v0 + OBJC_IVAR___CKTriple_value + 32);

  return v1;
}

id sub_1C86AF150(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1C86F8EEC();

  return v5;
}

uint64_t sub_1C86AF1C0()
{
  sub_1C86F936C();

  OUTLINED_FUNCTION_2_7();
  v1 = (*(v0 + 88))();
  MEMORY[0x1CCA7B200](v1);

  MEMORY[0x1CCA7B200](8236, 0xE200000000000000);
  OUTLINED_FUNCTION_2_7();
  v3 = (*(v2 + 96))();
  MEMORY[0x1CCA7B200](v3);

  MEMORY[0x1CCA7B200](8236, 0xE200000000000000);
  OUTLINED_FUNCTION_2_7();
  v5 = (*(v4 + 104))();
  MEMORY[0x1CCA7B200](v5);

  MEMORY[0x1CCA7B200](23421, 0xE200000000000000);
  OUTLINED_FUNCTION_2_7();
  (*(v6 + 112))();
  v7 = sub_1C86F946C();
  MEMORY[0x1CCA7B200](v7);

  MEMORY[0x1CCA7B200](93, 0xE100000000000000);
  return 123;
}

uint64_t sub_1C86AF3A4()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x58))();
  v2 = MEMORY[0x1CCA7B280](v1);

  OUTLINED_FUNCTION_0_9();
  v4 = (*(v3 + 96))();
  v5 = MEMORY[0x1CCA7B280](v4);

  OUTLINED_FUNCTION_0_9();
  v7 = (*(v6 + 104))();
  v8 = MEMORY[0x1CCA7B280](v7);

  return v5 ^ v2 ^ v8;
}

uint64_t sub_1C86AF488(uint64_t a1)
{
  sub_1C868FEF0(a1, v14);
  if (v15)
  {
    type metadata accessor for CKTriple();
    if (swift_dynamicCast())
    {
      v3 = == infix(_:_:)(v1);

      return v3 & 1;
    }
  }

  else
  {
    sub_1C86885EC(v14);
  }

  sub_1C868FEF0(a1, v14);
  v4 = v15;
  if (v15)
  {
    v5 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v6 = *(v4 - 8);
    MEMORY[0x1EEE9AC00](v5, v5);
    v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = sub_1C86F947C();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v9 = 0;
  }

  v10 = type metadata accessor for CKTriple();
  v13.receiver = v1;
  v13.super_class = v10;
  v3 = objc_msgSendSuper2(&v13, sel_isEqual_, v9);
  swift_unknownObjectRelease();
  return v3 & 1;
}

uint64_t == infix(_:_:)(void *a1)
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x58))();
  v3 = v2;
  OUTLINED_FUNCTION_3_10();
  if (v1 == (*(v4 + 88))() && v3 == v5)
  {
  }

  else
  {
    v7 = OUTLINED_FUNCTION_5_8();

    if ((v7 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  OUTLINED_FUNCTION_7_9();
  v9 = (*(v8 + 96))();
  v11 = v10;
  OUTLINED_FUNCTION_3_10();
  if (v9 == (*(v12 + 96))() && v11 == v13)
  {
  }

  else
  {
    v15 = OUTLINED_FUNCTION_5_8();

    if ((v15 & 1) == 0)
    {
LABEL_13:
      v16 = 0;
      return v16 & 1;
    }
  }

  OUTLINED_FUNCTION_7_9();
  v18 = (*(v17 + 104))();
  v20 = v19;
  OUTLINED_FUNCTION_3_10();
  if (v18 == (*(v21 + 104))() && v20 == v22)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_1C86F948C();
  }

  return v16 & 1;
}

id CKTriple.init(subject:predicate:object:weight:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = &v7[OBJC_IVAR___CKTriple_value];
  *v8 = a1;
  *(v8 + 1) = a2;
  *(v8 + 2) = a3;
  *(v8 + 3) = a4;
  *(v8 + 4) = a5;
  *(v8 + 5) = a6;
  *(v8 + 6) = a7;
  v10.receiver = v7;
  v10.super_class = type metadata accessor for CKTriple();
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1C86AF9B4(void *a1)
{
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x58))();
  v3 = sub_1C86F8EEC();

  v4 = sub_1C86F8EEC();
  OUTLINED_FUNCTION_4_9();

  OUTLINED_FUNCTION_0_9();
  (*(v5 + 96))();
  v6 = sub_1C86F8EEC();

  v7 = sub_1C86F8EEC();
  OUTLINED_FUNCTION_4_9();

  OUTLINED_FUNCTION_0_9();
  (*(v8 + 104))();
  v9 = sub_1C86F8EEC();

  v10 = sub_1C86F8EEC();
  OUTLINED_FUNCTION_4_9();

  OUTLINED_FUNCTION_0_9();
  v12 = (*(v11 + 112))();
  v13 = OUTLINED_FUNCTION_8_9();
  [a1 encodeInteger:v12 forKey:v13];
}

id CKTriple.init(coder:)(void *a1)
{
  v2 = v1;
  sub_1C86AFF14();
  v4 = sub_1C86F920C();
  v5 = sub_1C86F920C();
  v6 = sub_1C86F920C();
  v7 = OUTLINED_FUNCTION_8_9();
  v8 = [a1 decodeIntegerForKey_];

  if (!v4)
  {
    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v10 = sub_1C86F8DBC();
    __swift_project_value_buffer(v10, qword_1ED5BC790);
    v11 = sub_1C86F8DAC();
    v12 = sub_1C86F912C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      OUTLINED_FUNCTION_6_7(&dword_1C8683000, v14, v12, "unexpected value for subject when decoding CKTriple object");
      v4 = v5;
LABEL_13:
      v5 = v6;
LABEL_14:
      MEMORY[0x1CCA7C540](v13, -1, -1);
LABEL_17:

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return 0;
    }

    v4 = v5;
LABEL_16:
    v5 = v6;
    goto LABEL_17;
  }

  if (!v5)
  {
    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v15 = sub_1C86F8DBC();
    __swift_project_value_buffer(v15, qword_1ED5BC790);
    v11 = sub_1C86F8DAC();
    v16 = sub_1C86F912C();
    if (os_log_type_enabled(v11, v16))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      OUTLINED_FUNCTION_6_7(&dword_1C8683000, v17, v16, "unexpected value for predicate when decoding CKTriple object");
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  if (!v6)
  {
    if (qword_1ED5BC708 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v19 = sub_1C86F8DBC();
    __swift_project_value_buffer(v19, qword_1ED5BC790);
    v11 = sub_1C86F8DAC();
    v20 = sub_1C86F912C();
    if (!os_log_type_enabled(v11, v20))
    {
      goto LABEL_17;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    OUTLINED_FUNCTION_6_7(&dword_1C8683000, v21, v20, "unexpected value for object when decoding CKTriple object");
    goto LABEL_14;
  }

  v9 = [v2 initWithSubject:v4 predicate:v5 object:v6 weight:v8];

  return v9;
}

unint64_t sub_1C86AFF14()
{
  result = qword_1ED5BC4A0;
  if (!qword_1ED5BC4A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED5BC4A0);
  }

  return result;
}

id CKTriple.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKTriple.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKTriple();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id OUTLINED_FUNCTION_4_9()
{

  return [v0 (v3 + 3842)];
}

uint64_t OUTLINED_FUNCTION_5_8()
{

  return sub_1C86F948C();
}

uint64_t OUTLINED_FUNCTION_8_9()
{

  return sub_1C86F8EEC();
}

uint64_t getEnumTagSinglePayload for CKOntology(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for CKOntology(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

id CoreKnowledgeXPCUtils.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CoreKnowledgeXPCUtils.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreKnowledgeXPCUtils();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CoreKnowledgeXPCUtils.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreKnowledgeXPCUtils();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static CoreKnowledgeXPCUtils.CKServiceXPCInterface()()
{
  [objc_opt_self() interfaceWithProtocol_];
  if (qword_1ED5BC500 != -1)
  {
    swift_once();
  }

  sub_1C86B132C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C86FD050;
  *(inited + 32) = sub_1C869F398(0, &qword_1ED5BC4C0);
  *(inited + 40) = sub_1C869F398(0, &qword_1ED5BC4A0);
  *(inited + 48) = sub_1C869F398(0, &qword_1ED5BC4B0);
  *(inited + 56) = sub_1C869F398(0, &qword_1ED5BC4B8);
  *(inited + 64) = sub_1C869F398(0, &unk_1ED5BC4F0);

  sub_1C86B1394(inited);
  sub_1C869F398(0, &qword_1EC2AD7C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADB70);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C86FCC70;
  v3 = type metadata accessor for CKGenericCondition();
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADB78);
  *(v1 + 32) = v3;
  OUTLINED_FUNCTION_27_2();
  result = sub_1C86F90DC();
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

id sub_1C86B128C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1C86F908C();

  v2 = [v0 initWithArray_];

  return v2;
}

uint64_t sub_1C86B132C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA30);
  if (dynamic_cast_existential_0_class_conditional(v0))
  {
    v1 = &unk_1EC2ADBB8;
  }

  else
  {
    v1 = &unk_1EC2ADBB0;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1);
}

uint64_t sub_1C86B1394(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1C86B15E8(result, 1, sub_1C86C4DDC);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1C86B1460(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_22_2(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C86B15E8(v4, 1, sub_1C86C5008);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_28_2();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADBA0);
  OUTLINED_FUNCTION_29_2();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C86B1524(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_22_2(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C86B15E8(v4, 1, sub_1C86C518C);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_28_2();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADA18);
  OUTLINED_FUNCTION_29_2();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1C86B15E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_0_11()
{
  *(v0 - 168) = 0;

  return sub_1C86F90DC();
}

id OUTLINED_FUNCTION_5_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19)
{
  *(a1 + 16) = a19;
  *(a1 + 56) = a17;
  *(a1 + 32) = v19;

  return sub_1C86B128C();
}

uint64_t OUTLINED_FUNCTION_7_10()
{
  *(v0 - 168) = 0;

  return sub_1C86F90DC();
}

uint64_t OUTLINED_FUNCTION_8_10()
{
  *(v0 - 168) = 0;

  return sub_1C86F90DC();
}

id OUTLINED_FUNCTION_9_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19)
{
  *(a1 + 16) = a19;
  *(a1 + 56) = a12;
  *(a1 + 32) = a13;

  return sub_1C86B128C();
}

__n128 OUTLINED_FUNCTION_11_8(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15)
{
  result = a15;
  a1[1] = a15;
  a1[2].n128_u64[0] = v16;
  a1[2].n128_u64[1] = v15;
  *(v17 - 168) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_6()
{

  return sub_1C86F90CC();
}

__n128 OUTLINED_FUNCTION_13_5(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a19)
{
  result = a19;
  a1[1] = a19;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_6()
{

  return sub_1C86F90CC();
}

id OUTLINED_FUNCTION_15_4(id a1, SEL a2, uint64_t a3)
{

  return [a1 a2];
}

id OUTLINED_FUNCTION_16_2(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id OUTLINED_FUNCTION_17_3(uint64_t a1)
{
  *(a1 + 56) = v2;
  *(a1 + 32) = v1;

  return sub_1C86B128C();
}

uint64_t OUTLINED_FUNCTION_18_1()
{
}

uint64_t OUTLINED_FUNCTION_19_3()
{
}

id OUTLINED_FUNCTION_20_2(id a1, SEL a2, uint64_t a3)
{

  return [a1 a2];
}

id OUTLINED_FUNCTION_21_3(id a1, SEL a2, uint64_t a3, uint64_t a4)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_23_1()
{
  v2 = *(v0 - 168);

  return sub_1C8693E54(v2);
}

uint64_t OUTLINED_FUNCTION_24_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_25_2()
{

  return sub_1C86F90CC();
}

id OUTLINED_FUNCTION_26_2()
{

  return sub_1C86B128C();
}

id OUTLINED_FUNCTION_27_2()
{

  return sub_1C86B128C();
}

uint64_t OUTLINED_FUNCTION_29_2()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_30_2()
{
}

uint64_t sub_1C86B19B0(char a1)
{
  sub_1C86F954C();
  MEMORY[0x1CCA7B7A0](a1 & 1);
  return sub_1C86F956C();
}

uint64_t sub_1C86B1A14()
{
  v1 = *v0;
  sub_1C86F954C();
  MEMORY[0x1CCA7B7A0](v1);
  return sub_1C86F956C();
}

id CKJSONLDGraph.init(withEntities:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C86F919C();
  OUTLINED_FUNCTION_99();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_3_2();
  v11 = v10 - v9;
  v12 = sub_1C86F8E3C();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  OUTLINED_FUNCTION_3_2();
  v14 = sub_1C86F916C();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  OUTLINED_FUNCTION_3_2();
  v16 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v16 = a1;
  }

  *&v2[OBJC_IVAR___CKJSONLDGraph__entities] = v16;
  sub_1C8685A98();
  sub_1C86F915C();
  sub_1C86F8E1C();
  (*(v6 + 104))(v11, *MEMORY[0x1E69E8090], v4);
  *&v2[OBJC_IVAR___CKJSONLDGraph_queue] = sub_1C86F91CC();
  v18.receiver = v2;
  v18.super_class = type metadata accessor for CKJSONLDGraph();
  return objc_msgSendSuper2(&v18, sel_init);
}

char *sub_1C86B1D04()
{
  v1 = *(v0 + OBJC_IVAR___CKJSONLDGraph__entities);
  if (v1 >> 62)
  {
    v2 = sub_1C86F92EC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1C869CE68(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v13;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1CCA7B5C0](v5, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
      }

      v7 = v6;
      v9 = *&v6[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];
      v8 = *&v6[OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8];

      v11 = *(v13 + 16);
      v10 = *(v13 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1C869CE68((v10 > 1), v11 + 1, 1);
      }

      ++v5;
      *(v13 + 16) = v11 + 1;
      v12 = v13 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

void sub_1C86B1E4C()
{
  OUTLINED_FUNCTION_107();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C86F8DFC();
  OUTLINED_FUNCTION_99();
  v28 = v5;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_3_2();
  v10 = v9 - v8;
  v27 = sub_1C86F8E3C();
  OUTLINED_FUNCTION_99();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_3_2();
  v17 = v16 - v15;
  v18 = swift_allocObject();
  *(v18 + 16) = MEMORY[0x1E69E7CC0];

  sub_1C86B210C(v19);
  v21 = sub_1C869CD7C(v20);

  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = v18;
  v22[4] = v3;
  v22[5] = v1;
  v29[4] = sub_1C86B4C9C;
  v29[5] = v22;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  OUTLINED_FUNCTION_5_10();
  v29[2] = v23;
  v29[3] = &block_descriptor_5;
  v24 = _Block_copy(v29);

  sub_1C86F8E1C();
  OUTLINED_FUNCTION_4_11();
  sub_1C86B5068(v25, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADBD0);
  sub_1C86B4CC0();
  sub_1C86F92AC();
  MEMORY[0x1CCA7B400](0, v17, v10, v24);
  _Block_release(v24);
  (*(v28 + 8))(v10, v4);
  (*(v12 + 8))(v17, v27);

  OUTLINED_FUNCTION_108();
}

void sub_1C86B210C(unint64_t a1)
{
  v2 = sub_1C86B50B8();
  v3 = type metadata accessor for CKKnowledgeStoreEntity();
  v4 = sub_1C86B5068(&qword_1EC2ADBF8, type metadata accessor for CKKnowledgeStoreEntity);
  v8[1] = MEMORY[0x1CCA7B330](v2, v3, v4);
  v5 = sub_1C86B4BD8(a1);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1CCA7B5C0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1C869E030(v8, v7);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1C86B2228(unint64_t a1, uint64_t a2, void (*a3)(void, uint64_t))
{
  v6 = sub_1C86B4BD8(a1);
  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {
      swift_beginAccess();
      v15 = *(a2 + 16);

      a3(0, v15);

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1CCA7B5C0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v8 = *(a1 + 8 * i + 32);
    }

    v3 = v8;
    if (__OFADD__(i, 1))
    {
      break;
    }

    type metadata accessor for CKJSONLDGraph();
    v9 = sub_1C86B25A0(v3);
    swift_beginAccess();
    v10 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C86C4E94();
      v10 = v13;
      *(a2 + 16) = v13;
    }

    v12 = *(v10 + 16);
    if (v12 >= *(v10 + 24) >> 1)
    {
      sub_1C86C4E94();
      v10 = v14;
    }

    *(v10 + 16) = v12 + 1;
    *(v10 + 8 * v12 + 32) = v9;
    *(a2 + 16) = v10;
    swift_endAccess();
  }

  __break(1u);
LABEL_18:
  __break(1u);
  swift_once();
  v16 = sub_1C86F8DBC();
  __swift_project_value_buffer(v16, qword_1ED5BC790);
  v17 = v3;
  v18 = 0;
  v19 = sub_1C86F8DAC();
  v20 = sub_1C86F912C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v21 = 138478083;
    *(v21 + 4) = v17;
    *v22 = v17;
    *(v21 + 12) = 2080;
    swift_getErrorValue();
    v23 = v17;
    sub_1C86F94EC();
    v24 = sub_1C8685FDC();

    *(v21 + 14) = v24;
    _os_log_impl(&dword_1C8683000, v19, v20, "serialization %{private}@ failed. %s", v21, 0x16u);
    sub_1C86A5148(v22, &unk_1EC2ADAA0);
    MEMORY[0x1CCA7C540](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1CCA7C540](v27, -1, -1);
    MEMORY[0x1CCA7C540](v21, -1, -1);
  }

  v25 = 0;
  a3(0, MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1C86B25A0(void *a1)
{
  v3 = *(a1 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier);
  v4 = *(a1 + OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8);
  v5 = MEMORY[0x1E69E6158];
  v29 = MEMORY[0x1E69E6158];
  *&v27 = v3;
  *(&v27 + 1) = v4;
  sub_1C8689930(&v27, v26);

  v6 = MEMORY[0x1E69E7CC8];
  swift_isUniquelyReferenced_nonNull_native();
  v25 = v6;
  v7 = sub_1C868968C(v26, 6580544, 0xE300000000000000);
  v8 = v6;
  v31 = v6;
  v9 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xF8))(v7);
  if (v1)
  {
  }

  else
  {
    v10 = *(v9 + 16);
    if (v10)
    {
      v24 = v9;
      v11 = (v9 + 48);
      do
      {
        v12 = *(v11 - 2);
        v13 = *(v11 - 1);
        v14 = *v11;
        v11 += 3;
        v15 = *&v14[OBJC_IVAR___CKKnowledgeStoreEntity_identifier];
        v16 = *&v14[OBJC_IVAR___CKKnowledgeStoreEntity_identifier + 8];
        v29 = v5;
        *&v27 = v15;
        *(&v27 + 1) = v16;

        v17 = v14;

        sub_1C8697B58(v12, v13, &v27, v18, v19, v20, v21, v22, v24, v25, v26[0], v26[1], v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, vars0, vars8);

        __swift_destroy_boxed_opaque_existential_0(&v27);
        --v10;
      }

      while (v10);

      return v31;
    }

    else
    {
    }
  }

  return v8;
}

void sub_1C86B27C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = sub_1C86F8B9C();
  }

  else
  {
    v4 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADCB0);
  v5 = sub_1C86F908C();
  (*(a3 + 16))(a3, v4, v5);
}

id CKJSONLDGraph.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKJSONLDGraph.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKJSONLDGraph();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CKKnowledgeStore.subgraph(withEntities:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1C86F93BC();
    v5 = a1 + 40;
    do
    {

      v6 = sub_1C86F8EEC();
      v7 = [v2 entityWithIdentifier_];

      sub_1C86F939C();
      sub_1C86F93CC();
      sub_1C86F93DC();
      sub_1C86F93AC();
      v5 += 16;
      --v3;
    }

    while (v3);
  }

  v8 = objc_allocWithZone(type metadata accessor for CKJSONLDGraph());
  v9 = OUTLINED_FUNCTION_3_12();
  return CKJSONLDGraph.init(withEntities:)(v9);
}

void sub_1C86B2ACC()
{
  OUTLINED_FUNCTION_107();
  v109 = v0;
  v2 = v1;
  v4 = v3;
  v111 = v5;
  v110 = v6;
  v8 = v7;
  v112 = v9;
  v10 = sub_1C86F8D3C();
  OUTLINED_FUNCTION_99();
  v106 = v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_3_2();
  v16 = v15 - v14;
  v17 = sub_1C86F8DEC();
  OUTLINED_FUNCTION_99();
  v108 = v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_3_2();
  v23 = (v22 - v21);
  v24 = sub_1C86F8E6C();
  OUTLINED_FUNCTION_99();
  v107 = v25;
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v31);
  v113 = v8;
  sub_1C8686320(v8, &v118);
  v114 = v4;

  OUTLINED_FUNCTION_6_9();
  if (!swift_dynamicCast())
  {
    if (qword_1ED5BC708 == -1)
    {
LABEL_15:
      v36 = sub_1C86F8DBC();
      __swift_project_value_buffer(v36, qword_1ED5BC790);
      v37 = v113;
      sub_1C8686320(v113, &v118);
      sub_1C8686320(v37, &v115);
      v38 = sub_1C86F8DAC();
      v39 = sub_1C86F912C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        *v40 = 136380931;
        sub_1C8689930(&v118, &v120);
        swift_dynamicCast();
        v41 = sub_1C8685FDC();

        *(v40 + 4) = v41;
        *(v40 + 12) = 2080;
        __swift_project_boxed_opaque_existential_0(&v115, *(&v116 + 1));
        *&v120 = swift_getDynamicType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADBF0);
        sub_1C86F8F5C();
        __swift_destroy_boxed_opaque_existential_0(&v115);
        v42 = sub_1C8685FDC();

        *(v40 + 14) = v42;
        _os_log_impl(&dword_1C8683000, v38, v39, "key=%{private}s is not a string. class = %s", v40, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_11_1();
        OUTLINED_FUNCTION_11_1();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(&v115);
        __swift_destroy_boxed_opaque_existential_0(&v118);
      }

      sub_1C868B6E4();
      v43 = OUTLINED_FUNCTION_31();
      v45 = v44;
      sub_1C8686320(v37, v44);
      *(v45 + 32) = 2;
      goto LABEL_19;
    }

LABEL_55:
    OUTLINED_FUNCTION_0();
    goto LABEL_15;
  }

  v105 = v2;
  v32 = v115;
  v33 = v115 == 0x747865746E6F6340 && *(&v115 + 1) == 0xE800000000000000;
  if (v33 || (sub_1C86F948C() & 1) != 0 || (v32 == 6580544 ? (v34 = *(&v32 + 1) == 0xE300000000000000) : (v34 = 0), v34 || (v104 = v32, (sub_1C86F948C() & 1) != 0)))
  {

    OUTLINED_FUNCTION_7_11();
    v35 = sub_1C86D0334();
    dispatch_group_leave(v35);
    OUTLINED_FUNCTION_13_6();
LABEL_13:

    goto LABEL_20;
  }

  v47 = v110;
  sub_1C8686320(v110, &v118);
  OUTLINED_FUNCTION_6_9();
  if (swift_dynamicCast())
  {
    v48 = sub_1C86F8EEC();

    v49 = [v111 entityWithIdentifier_];

    (*((*MEMORY[0x1E69E7D40] & *v112) + 0x98))(v49, v104, *(&v32 + 1), v105, v114);

LABEL_23:

    goto LABEL_20;
  }

  v103 = *(&v32 + 1);
  sub_1C8686320(v47, &v118);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AD9C0);
  OUTLINED_FUNCTION_6_9();
  if (!swift_dynamicCast())
  {
    sub_1C8686320(v47, &v118);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADCB0);
    OUTLINED_FUNCTION_6_9();
    v65 = swift_dynamicCast();
    v66 = v111;
    if ((v65 & 1) == 0)
    {

      sub_1C8686320(v47, &v118);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADBE8);
      OUTLINED_FUNCTION_6_9();
      if (swift_dynamicCast())
      {
        v72 = v115;
        sub_1C86F8E4C();
        type metadata accessor for CKTimedDispatch();
        OUTLINED_FUNCTION_14_7();
        v73 = OUTLINED_FUNCTION_3_12();
        v74 = sub_1C86D038C(v73);
        v75 = *(v72 + 16);
        v76 = v112;
        v77 = v113;
        if (v75)
        {
          v78 = (v72 + 32);
          do
          {
            v79 = *v78++;

            v80 = sub_1C86D0334();
            dispatch_group_enter(v80);

            *(&v119[0] + 1) = v64;
            *&v118 = v79;
            swift_retain_n();
            sub_1C86B2ACC(v76, v77, &v118, v66, v74, sub_1C86B504C, sub_1C86B50C0);

            __swift_destroy_boxed_opaque_existential_0(&v118);
            --v75;
          }

          while (v75);
        }

        sub_1C86D05FC();
        OUTLINED_FUNCTION_7_11();
        v35 = sub_1C86D0334();
        dispatch_group_leave(v35);
        OUTLINED_FUNCTION_13_6();

        goto LABEL_13;
      }

      sub_1C868B6E4();
      v43 = OUTLINED_FUNCTION_31();
      *v82 = 1;
      *(v82 + 8) = 0;
      *(v82 + 16) = 0;
      *(v82 + 24) = 0;
      *(v82 + 32) = 3;
LABEL_19:
      OUTLINED_FUNCTION_7_11();
      sub_1C86D05C4(v46);

      OUTLINED_FUNCTION_13_6();
      goto LABEL_20;
    }

    v67 = v115;
    sub_1C86F8E4C();
    type metadata accessor for CKTimedDispatch();
    OUTLINED_FUNCTION_14_7();
    v68 = OUTLINED_FUNCTION_3_12();
    v69 = sub_1C86D038C(v68);
    OUTLINED_FUNCTION_11_9(&v115);
    if (*(&v116 + 1))
    {
      v70 = OUTLINED_FUNCTION_6_9();
      sub_1C8689930(v70, v71);
    }

    else
    {
      *&v118 = 14943;
      *(&v118 + 1) = 0xE200000000000000;
      sub_1C86F8D2C();
      v83 = sub_1C86F8D1C();
      v85 = v84;
      (*(v106 + 8))(v16, v10);
      MEMORY[0x1CCA7B200](v83, v85);

      *(&v119[0] + 1) = MEMORY[0x1E69E6158];
      if (*(&v116 + 1))
      {
        sub_1C86A5148(&v115, &qword_1EC2AD810);
      }
    }

    OUTLINED_FUNCTION_6_9();
    swift_dynamicCast();
    v86 = sub_1C86F8EEC();

    v113 = [v66 entityWithIdentifier_];

    v87 = 0;
    v88 = 1 << *(v67 + 32);
    v89 = -1;
    if (v88 < 64)
    {
      v89 = ~(-1 << v88);
    }

    v90 = v89 & *(v67 + 64);
    v91 = (v88 + 63) >> 6;
    if (v90)
    {
      while (1)
      {
        v92 = v87;
LABEL_48:
        v93 = __clz(__rbit64(v90));
        v90 &= v90 - 1;
        v94 = v93 | (v92 << 6);
        v95 = (*(v67 + 48) + 16 * v94);
        v97 = *v95;
        v96 = v95[1];
        sub_1C8686320(*(v67 + 56) + 32 * v94, &v120);
        *&v115 = v97;
        *(&v115 + 1) = v96;
        sub_1C8689930(&v120, &v116);

LABEL_49:
        v118 = v115;
        v119[0] = v116;
        v119[1] = v117;
        v98 = *(&v115 + 1);
        if (!*(&v115 + 1))
        {
          break;
        }

        v99 = v118;
        sub_1C8689930(v119, &v115);
        v100 = objc_autoreleasePoolPush();
        v101 = sub_1C86D0334();
        dispatch_group_enter(v101);

        v121 = MEMORY[0x1E69E6158];
        *&v120 = v99;
        *(&v120 + 1) = v98;
        swift_retain_n();
        sub_1C86B2ACC(v113, &v120, &v115, v111, v69, sub_1C86B50C0, sub_1C86B50C0);

        __swift_destroy_boxed_opaque_existential_0(&v120);
        objc_autoreleasePoolPop(v100);
        __swift_destroy_boxed_opaque_existential_0(&v115);
        if (!v90)
        {
          goto LABEL_44;
        }
      }

      sub_1C86D05FC();
      v102 = v113;
      (*((*MEMORY[0x1E69E7D40] & *v112) + 0x98))(v113, v104, v103, v105, v114);

      goto LABEL_23;
    }

LABEL_44:
    while (1)
    {
      v92 = v87 + 1;
      if (__OFADD__(v87, 1))
      {
        break;
      }

      if (v92 >= v91)
      {
        v90 = 0;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        goto LABEL_49;
      }

      v90 = *(v67 + 64 + 8 * v92);
      ++v87;
      if (v90)
      {
        v87 = v92;
        goto LABEL_48;
      }
    }

    __break(1u);
    goto LABEL_55;
  }

  v50 = v115;
  sub_1C86F8E5C();
  *v23 = *(v50 + 16);
  v51 = v108;
  (*(v108 + 104))(v23, *MEMORY[0x1E69E7F48], v17);
  MEMORY[0x1CCA7B0C0](v30, v23);
  (*(v51 + 8))(v23, v17);
  (*(v107 + 8))(v30, v24);
  type metadata accessor for CKTimedDispatch();
  OUTLINED_FUNCTION_14_7();
  v52 = OUTLINED_FUNCTION_3_12();
  v53 = sub_1C86D038C(v52);
  v107 = v50;
  v54 = *(v50 + 16);
  v55 = v111;
  v56 = v103;
  v57 = v104;
  v58 = v109;
  if (v54)
  {
    v59 = (*MEMORY[0x1E69E7D40] & *v112) + 152;
    v110 = *((*MEMORY[0x1E69E7D40] & *v112) + 0x98);
    v108 = v59;
    v60 = v107 + 40;
    do
    {

      v113 = objc_autoreleasePoolPush();
      v61 = sub_1C86D0334();
      dispatch_group_enter(v61);

      v62 = sub_1C86F8EEC();

      v63 = [v55 entityWithIdentifier_];

      v110(v63, v57, v56, v58, v53);

      objc_autoreleasePoolPop(v113);
      v60 += 16;
      --v54;
    }

    while (v54);
  }

  sub_1C86D05FC();
  v81 = sub_1C86D0334();
  dispatch_group_leave(v81);

LABEL_20:
  OUTLINED_FUNCTION_108();
}

void sub_1C86B38D0()
{
  OUTLINED_FUNCTION_107();
  v1 = v0;
  v2 = sub_1C86F8E6C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  OUTLINED_FUNCTION_3_2();
  sub_1C8686320(v1, &v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADCB0);
  if (!swift_dynamicCast())
  {
    sub_1C86B4D24();
    v22 = OUTLINED_FUNCTION_31();
    *v23 = 0;
    sub_1C86D05C4(v22);

LABEL_17:
    OUTLINED_FUNCTION_108();
    return;
  }

  v4 = v27;
  sub_1C86F8E4C();
  type metadata accessor for CKTimedDispatch();
  OUTLINED_FUNCTION_14_7();
  v5 = OUTLINED_FUNCTION_3_12();
  sub_1C86D038C(v5);
  v6 = 0;
  v7 = 1 << *(v27 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v27 + 64;
  v10 = v8 & *(v27 + 64);
  v11 = (v7 + 63) >> 6;
  if (v10)
  {
    while (1)
    {
      v12 = v6;
LABEL_10:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v14 = v13 | (v12 << 6);
      v15 = (*(v4 + 48) + 16 * v14);
      v17 = *v15;
      v16 = v15[1];
      sub_1C8686320(*(v4 + 56) + 32 * v14, &v25);
      *&v27 = v17;
      *(&v27 + 1) = v16;
      sub_1C8689930(&v25, &v28);

LABEL_11:
      v30 = v27;
      v31[0] = v28;
      v31[1] = v29;
      v18 = *(&v27 + 1);
      if (!*(&v27 + 1))
      {
        break;
      }

      v19 = v30;
      sub_1C8689930(v31, &v27);
      v20 = objc_autoreleasePoolPush();
      v21 = sub_1C86D0334();
      dispatch_group_enter(v21);

      v26 = MEMORY[0x1E69E6158];
      *&v25 = v19;
      *(&v25 + 1) = v18;
      swift_retain_n();
      sub_1C86B2ACC();

      __swift_destroy_boxed_opaque_existential_0(&v25);
      objc_autoreleasePoolPop(v20);
      __swift_destroy_boxed_opaque_existential_0(&v27);
      if (!v10)
      {
        goto LABEL_6;
      }
    }

    sub_1C86D05FC();
    v24 = sub_1C86D0334();
    dispatch_group_leave(v24);

    goto LABEL_17;
  }

LABEL_6:
  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      v10 = 0;
      v28 = 0u;
      v29 = 0u;
      v27 = 0u;
      goto LABEL_11;
    }

    v10 = *(v9 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1C86B3BE8(void *a1)
{
  if (a1)
  {
    sub_1C86D05C4(a1);
  }

  else
  {
    v1 = sub_1C86D0334();
    dispatch_group_leave(v1);
  }
}

uint64_t sub_1C86B3C48(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id *))
{
  v22[4] = *MEMORY[0x1E69E9840];
  v5 = sub_1C86F8E6C();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = sub_1C86F8C9C();
  v22[0] = 0;
  v11 = [v9 JSONObjectWithData:v10 options:0 error:v22];

  v12 = v22[0];
  if (v11)
  {
    sub_1C86F929C();
    swift_unknownObjectRelease();
    sub_1C86F8E4C();
    type metadata accessor for CKTimedDispatch();
    swift_allocObject();
    sub_1C86D038C(v8);
    sub_1C8686320(v22, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADBE8);
    if (swift_dynamicCast())
    {
      v13 = *(v20[1] + 16);
      if (v13)
      {
        v14 = 32;
        do
        {

          v15 = sub_1C86D0334();
          dispatch_group_enter(v15);

          swift_retain_n();
          sub_1C86B3FA8();

          v14 += 8;
          --v13;
        }

        while (v13);
      }
    }

    else
    {
      sub_1C8686320(v22, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADCB0);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_11:
        sub_1C86D05FC();
        v21[0] = 0;
        a4(v21);

        __swift_destroy_boxed_opaque_existential_0(v22);
      }

      sub_1C86B3FA8();
    }

    goto LABEL_11;
  }

  v16 = v12;
  v17 = sub_1C86F8BAC();

  swift_willThrow();
  v22[0] = v17;
  v18 = v17;
  a4(v22);
}

void sub_1C86B3FA8()
{
  OUTLINED_FUNCTION_107();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C86F8D3C();
  OUTLINED_FUNCTION_99();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_3_2();
  v15 = v14 - v13;

  OUTLINED_FUNCTION_11_9(&v22);
  if (v23)
  {
    sub_1C8689930(&v22, &v24);
  }

  else
  {
    v16 = MEMORY[0x1E69E6158];
    *&v24 = 14943;
    *(&v24 + 1) = 0xE200000000000000;
    sub_1C86F8D2C();
    v17 = sub_1C86F8D1C();
    v19 = v18;
    (*(v10 + 8))(v15, v8);
    MEMORY[0x1CCA7B200](v17, v19);

    v25 = v16;
    if (v23)
    {
      sub_1C86A5148(&v22, &qword_1EC2AD810);
    }
  }

  swift_dynamicCast();
  v20 = sub_1C86F8EEC();

  v21 = [v5 entityWithIdentifier_];

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2ADCB0);
  *&v24 = v7;

  v1(v21, &v24, v5, v3);

  __swift_destroy_boxed_opaque_existential_0(&v24);

  OUTLINED_FUNCTION_108();
}

void CKKnowledgeStore.importContentsOfJSONLD(atPath:completionHandler:)()
{
  OUTLINED_FUNCTION_107();
  v50 = v0;
  v57 = v2;
  v58 = v1;
  sub_1C86F8DFC();
  OUTLINED_FUNCTION_99();
  v55 = v4;
  v56 = v3;
  MEMORY[0x1EEE9AC00](v3, v5);
  OUTLINED_FUNCTION_3_2();
  v53 = v7 - v6;
  v54 = sub_1C86F8E3C();
  OUTLINED_FUNCTION_99();
  v52 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_3_2();
  v51 = v12 - v11;
  v13 = sub_1C86F8E0C();
  OUTLINED_FUNCTION_99();
  v49 = v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_3_2();
  v19 = v18 - v17;
  v20 = sub_1C86F8C1C();
  OUTLINED_FUNCTION_99();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_3_2();
  v27 = v26 - v25;
  v28 = [objc_opt_self() defaultManager];
  v29 = sub_1C86F8EEC();
  v30 = [v28 fileExistsAtPath_];

  if (v30)
  {
    sub_1C86F8BBC();
    v39 = sub_1C86F8C5C();
    v41 = v40;
    (*(v22 + 8))(v27, v20);
    sub_1C8685A98();
    (*(v49 + 104))(v19, *MEMORY[0x1E69E7F80], v13);
    v42 = sub_1C86F91DC();
    (*(v49 + 8))(v19, v13);
    v43 = swift_allocObject();
    v43[2] = v50;
    v43[3] = v39;
    v43[4] = v41;
    v43[5] = v58;
    v43[6] = v57;
    v59[4] = sub_1C86B4D78;
    v59[5] = v43;
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 1107296256;
    OUTLINED_FUNCTION_5_10();
    v59[2] = v44;
    v59[3] = &block_descriptor_9_1;
    v45 = _Block_copy(v59);
    v46 = v50;
    sub_1C868BE68(v39, v41);
    sub_1C86B4D88(v58);
    sub_1C86F8E1C();
    OUTLINED_FUNCTION_4_11();
    sub_1C86B5068(v47, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADBD0);
    sub_1C86B4CC0();
    sub_1C86F92AC();
    MEMORY[0x1CCA7B400](0, v51, v53, v45);
    _Block_release(v45);

    sub_1C868BED4(v39, v41);
    (*(v55 + 8))(v53, v56);
    (*(v52 + 8))(v51, v54);

LABEL_11:
    OUTLINED_FUNCTION_108();
    return;
  }

  if (qword_1ED5BC708 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v31 = sub_1C86F8DBC();
  __swift_project_value_buffer(v31, qword_1ED5BC790);

  v32 = sub_1C86F8DAC();
  v33 = sub_1C86F912C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v59[0] = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_1C8685FDC();
    _os_log_impl(&dword_1C8683000, v32, v33, "no such JSONLD file at path %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    OUTLINED_FUNCTION_11_1();
    OUTLINED_FUNCTION_11_1();
  }

  if (!v58)
  {
    goto LABEL_11;
  }

  sub_1C86B4D24();
  OUTLINED_FUNCTION_31();
  *v36 = 1;
  v58();
  OUTLINED_FUNCTION_108();
}

uint64_t sub_1C86B48CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a4;
    *(v10 + 24) = a5;
    v11 = sub_1C86B5020;
  }

  else
  {
    v11 = sub_1C86B49A4;
  }

  sub_1C86B4D88(a4);
  sub_1C86B3C48(a2, a3, a1, v11);
}

void sub_1C86B49A4()
{
  if (qword_1ED5BC708 != -1)
  {
    swift_once();
  }

  v0 = sub_1C86F8DBC();
  __swift_project_value_buffer(v0, qword_1ED5BC790);
  oslog = sub_1C86F8DAC();
  v1 = sub_1C86F912C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1C8683000, oslog, v1, "error importing JSONLD data", v2, 2u);
    MEMORY[0x1CCA7C540](v2, -1, -1);
  }
}

uint64_t sub_1C86B4B58(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for CKKnowledgeStoreEntity();
      result = sub_1C86F90BC();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1C86B4BD8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1C86F92EC();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void (*sub_1C86B4C08(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1C86B4BFC(a3);
  sub_1C86B6A74(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1CCA7B5C0](a2, a3);
  }

  *a1 = v7;
  return sub_1C86B4C94;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C86B4CC0()
{
  result = qword_1EC2AD790;
  if (!qword_1EC2AD790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2ADBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2AD790);
  }

  return result;
}

unint64_t sub_1C86B4D24()
{
  result = qword_1EC2ADBD8;
  if (!qword_1EC2ADBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2ADBD8);
  }

  return result;
}

uint64_t sub_1C86B4D88(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONLDParseError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for JSONLDParseError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C86B4FB4()
{
  result = qword_1EC2ADBE0;
  if (!qword_1EC2ADBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2ADBE0);
  }

  return result;
}

uint64_t sub_1C86B5008(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C86B5068(unint64_t *a1, void (*a2)(uint64_t))
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

double OUTLINED_FUNCTION_11_9@<D0>(_OWORD *a1@<X8>)
{

  return sub_1C8688AB8(6580544, 0xE300000000000000, v1, a1);
}

uint64_t OUTLINED_FUNCTION_13_6()
{
}

uint64_t OUTLINED_FUNCTION_14_7()
{

  return swift_allocObject();
}

id sub_1C86B514C()
{
  type metadata accessor for CKKnowledgeStore();
  result = sub_1C86D11F4();
  qword_1EC2AEFD8 = result;
  return result;
}

uint64_t sub_1C86B5180(void *a1, uint64_t a2)
{
  v3 = sub_1C86F8D0C();
  OUTLINED_FUNCTION_99();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_3_2();
  v10 = v9 - v8;
  v11 = [a1 identifier];
  v32 = sub_1C86F8EFC();
  v13 = v12;
  v14 = [a1 startDate];
  sub_1C86F8CDC();

  v15 = sub_1C86D8CCC(0xD00000000000001CLL, 0x80000001C8700720);
  v17 = v16;
  v18 = *(v5 + 8);
  result = v18(v10, v3);
  if (!v17)
  {
    goto LABEL_12;
  }

  v30 = a1;
  v20 = [a1 endDate];
  sub_1C86F8CDC();

  v21 = sub_1C86D8CCC(0xD00000000000001CLL, 0x80000001C8700720);
  v23 = v22;
  result = v18(v10, v3);
  if (v23)
  {

    v24 = MEMORY[0x1CCA7B260](v32, v13);
    result = MEMORY[0x1CCA7B260](v15, v17);
    v25 = v24 + result;
    if (__OFADD__(v24, result))
    {
      __break(1u);
    }

    else
    {
      result = MEMORY[0x1CCA7B260](v21, v23);
      v26 = __OFADD__(v25, result);
      v27 = v25 + result;
      if (!v26)
      {
        result = sub_1C86F900C();
        if (result + 0x4000000000000000 >= 0)
        {
          v26 = __OFADD__(v27, 2 * result);
          result = v27 + 2 * result;
          if (!v26)
          {
            MEMORY[0x1CCA7B1D0](result);
            MEMORY[0x1CCA7B200](v32, v13);
            MEMORY[0x1CCA7B200](95, 0xE100000000000000);
            MEMORY[0x1CCA7B200](v15, v17);
            MEMORY[0x1CCA7B200](95, 0xE100000000000000);
            MEMORY[0x1CCA7B200](v21, v23);

            v28 = objc_allocWithZone(type metadata accessor for CKKnowledgeStoreEntity());
            v29 = sub_1C86C7E1C(0, 0xE000000000000000, a2);

            return v29;
          }

          goto LABEL_11;
        }

LABEL_10:
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}