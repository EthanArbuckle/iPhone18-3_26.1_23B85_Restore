uint64_t sub_1D1510760()
{
  v1 = v0[51];
  v2 = v0[34];
  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = sub_1D1510950;
  v3 = swift_continuation_init();

  sub_1D15123C0(v4);

  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v6 = objc_allocWithZone(MEMORY[0x1E696C410]);
  sub_1D1453BA0(0, &qword_1EE056778);
  sub_1D1512508();
  v7 = sub_1D15A41D8();

  v0[22] = sub_1D1512500;
  v0[23] = v5;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1D1510EE0;
  v0[21] = &block_descriptor_11;
  v8 = _Block_copy(v0 + 18);
  v9 = [v6 initWithTransaction:v1 package:0 includedIdentifiers:0 includedObjectTypes:v7 resultsHandler:v8];

  _Block_release(v8);

  (*(v2 + 40))(v9);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1510950()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 416) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1D1510B20;
  }

  else
  {
    *(v1 + 424) = *(v1 + 248);
    v3 = sub_1D1510A74;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1510A74()
{
  v1 = *(v0 + 424);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D1510B20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1510BC4()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  sub_1D1510D38(&qword_1EC630DA0, MEMORY[0x1E69A3D98]);
  swift_allocError();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

void sub_1D1510CD0()
{
  if (!qword_1EC630DA8)
  {
    sub_1D1453BA0(255, &qword_1EC630DB0);
    v0 = sub_1D15A4118();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630DA8);
    }
  }
}

uint64_t sub_1D1510D38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1510D80(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D14B3A90;

  return DefaultHKSharedSummaryProvider.fetchSharedSummaries(for:)(a1);
}

uint64_t sub_1D1510E14(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a4)
  {
    sub_1D148F3FC();
    v7 = swift_allocError();
    *v8 = a4;
    v9 = a4;

    return MEMORY[0x1EEE6DEE8](a5, v7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    if (a2)
    {
      v10 = a2;
    }

    **(*(a5 + 64) + 40) = v10;

    return MEMORY[0x1EEE6DEE0](a5);
  }
}

uint64_t sub_1D1510EE0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v9 = *(a1 + 32);
  if (a3)
  {
    sub_1D1453BA0(0, &qword_1EC630DC8);
    v7 = sub_1D15A40C8();
  }

  v10 = a2;
  v11 = a5;
  v9(v10, v7, a4, a5);
}

uint64_t sub_1D1510FAC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1D15A4718();

    if (v9)
    {

      sub_1D1453BA0(0, &qword_1EE056778);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_1D15A4708();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1D1511334(v7, result + 1);
    if (*(v19 + 24) <= *(v19 + 16))
    {
      sub_1D1511514();
    }

    v18 = v8;
    sub_1D1511984(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1D1453BA0(0, &qword_1EE056778);
  v11 = sub_1D15A4588();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_1D1511A08(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1D15A4598();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_1D15111E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1D15A4C88();
  sub_1D15A3F88();
  v8 = sub_1D15A4CB8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1D15A4BA8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1D1511B78(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1D1511334(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D151298C();
    v2 = sub_1D15A4798();
    v14 = v2;
    sub_1D15A46B8();
    if (sub_1D15A4738())
    {
      sub_1D1453BA0(0, &qword_1EE056778);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1D1511514();
        }

        v2 = v14;
        result = sub_1D15A4588();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1D15A4738());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D1511514()
{
  v1 = v0;
  v2 = *v0;
  sub_1D151298C();
  result = sub_1D15A4788();
  v4 = result;
  if (*(v2 + 16))
  {
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1D15A4588();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1D1511730()
{
  v1 = v0;
  v2 = *v0;
  sub_1D1512934();
  result = sub_1D15A4788();
  v4 = result;
  if (*(v2 + 16))
  {
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
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1D15A4C88();
      sub_1D15A3F88();
      result = sub_1D15A4CB8();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_1D1511984(uint64_t a1, uint64_t a2)
{
  sub_1D15A4588();
  result = sub_1D15A4698();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1D1511A08(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D1511514();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1D1511CF8();
      goto LABEL_12;
    }

    sub_1D1511F8C();
  }

  v8 = *v3;
  v9 = sub_1D15A4588();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1D1453BA0(0, &qword_1EE056778);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1D15A4598();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D15A4BE8();
  __break(1u);
}

uint64_t sub_1D1511B78(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1D1511730();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1D1511E3C();
      goto LABEL_16;
    }

    sub_1D1512194();
  }

  v10 = *v4;
  sub_1D15A4C88();
  sub_1D15A3F88();
  result = sub_1D15A4CB8();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1D15A4BA8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1D15A4BE8();
  __break(1u);
  return result;
}

id sub_1D1511CF8()
{
  v1 = v0;
  sub_1D151298C();
  v2 = *v0;
  v3 = sub_1D15A4778();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_1D1511E3C()
{
  v1 = v0;
  sub_1D1512934();
  v2 = *v0;
  v3 = sub_1D15A4778();
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

uint64_t sub_1D1511F8C()
{
  v1 = v0;
  v2 = *v0;
  sub_1D151298C();
  result = sub_1D15A4788();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
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
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1D15A4588();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v23;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D1512194()
{
  v1 = v0;
  v2 = *v0;
  sub_1D1512934();
  result = sub_1D15A4788();
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
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1D15A4C88();

      sub_1D15A3F88();
      result = sub_1D15A4CB8();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D15123C0(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D15A4708())
  {
    v4 = sub_1D1453BA0(0, &qword_1EE056778);
    v5 = sub_1D1512508();
    result = MEMORY[0x1D388A560](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1D388AB50](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1D1510FAC(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1D15A4708();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1D1512508()
{
  result = qword_1EE056770;
  if (!qword_1EE056770)
  {
    sub_1D1453BA0(255, &qword_1EE056778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE056770);
  }

  return result;
}

uint64_t dispatch thunk of HKSharedSummaryProvider.fetchSharedSummaries(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D1512698;

  return v9(a1, a2, a3);
}

uint64_t sub_1D1512698(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1D1512794(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D15127DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D1512838(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1D151289C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D388A560](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1D15111E4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_1D1512934()
{
  if (!qword_1EC630DC0)
  {
    v0 = sub_1D15A47B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630DC0);
    }
  }
}

void sub_1D151298C()
{
  if (!qword_1EE0564B8)
  {
    sub_1D1453BA0(255, &qword_1EE056778);
    sub_1D1512508();
    v0 = sub_1D15A47B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0564B8);
    }
  }
}

uint64_t DefaultHKCodableSummaryTrendValueProvider.init(sharedSummaryProvider:summariesResultsParser:pluginSharableModelConstructor:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  result = sub_1D1450E94(a1, a6);
  a6[5] = a2;
  a6[6] = a3;
  a6[7] = a4;
  a6[8] = a5;
  return result;
}

uint64_t DefaultHKCodableSummaryTrendValueProvider.fetch(for:audience:)(uint64_t a1, char a2)
{
  *(v3 + 80) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_1D15A2C78();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1512B20, 0, 0);
}

uint64_t sub_1D1512B20()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1D1512C4C;
  v5 = v0[2];

  return v7(v5, v2, v3);
}

uint64_t sub_1D1512C4C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1512D9C, 0, 0);
  }
}

uint64_t sub_1D1512D9C()
{
  v31 = v2;
  v4 = *(v2 + 64);
  v5 = *(*(v2 + 24) + 56);
  if (v4 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D15A4708())
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1D14A78D4(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      goto LABEL_34;
    }

    v0 = *(v2 + 40);
    v8 = v30;
    v3 = *(v2 + 64);
    v1 = *(v2 + 72);
    v29 = v4 & 0xC000000000000001;
    v25 = v4 & 0xFFFFFFFFFFFFFF8;
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1D388AB50](0, v3);
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        sub_1D14A78D4(v7 > 1, v1, 1);
        v8 = v30;
        goto LABEL_11;
      }

      v9 = *(v3 + 32);
    }

    v10 = v9;
    v5();
    if (v1)
    {

      goto LABEL_27;
    }

    v4 = v30[2];
    v7 = v30[3];
    v1 = v4 + 1;
    if (v4 >= v7 >> 1)
    {
      goto LABEL_35;
    }

LABEL_11:
    v11 = *(v2 + 48);
    v12 = *(v2 + 32);
    v8[2] = v1;
    v28 = (*(v0 + 80) + 32) & ~*(v0 + 80);
    v27 = *(v0 + 72);
    v0 = *(v0 + 32);
    (v0)(v8 + v28 + v27 * v4, v11, v12);
    if (i == 1)
    {
LABEL_12:

      v13 = 0;
      goto LABEL_26;
    }

    v26 = v5;
    v14 = (v3 + 40);
    v3 = 1;
    while (1)
    {
      v5 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v29)
      {
        v15 = MEMORY[0x1D388AB50](v3, *(v2 + 64));
      }

      else
      {
        v7 = *(v25 + 16);
        if (v3 >= v7)
        {
          goto LABEL_33;
        }

        v15 = *v14;
      }

      v16 = v15;
      v26();

      v30 = v8;
      v4 = v8[2];
      v17 = v8[3];
      v1 = v4 + 1;
      if (v4 >= v17 >> 1)
      {
        sub_1D14A78D4(v17 > 1, v4 + 1, 1);
        v8 = v30;
      }

      v18 = *(v2 + 48);
      v19 = *(v2 + 32);
      v8[2] = v1;
      (v0)(v8 + v28 + v27 * v4, v18, v19);
      ++v3;
      ++v14;
      if (v5 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_24:
    ;
  }

  v13 = *(v2 + 72);
  v8 = MEMORY[0x1E69E7CC0];
LABEL_26:
  (*(*(v2 + 24) + 40))(&v30, v8, *(v2 + 80) & 1);

  v20 = v30;
  v21 = sub_1D1513114(&v30);
  sub_1D15135EC(v20);
  if (v13)
  {
LABEL_27:

    v22 = *(v2 + 8);

    return v22();
  }

  else
  {

    v24 = *(v2 + 8);

    return v24(v21);
  }
}

uint64_t sub_1D1513114(void **a1)
{
  v2 = sub_1D15A3268();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = &v22 - v8;
  v10 = *a1;
  if (*a1)
  {
    if (v10 == 1)
    {
      sub_1D15A3238();
      v11 = sub_1D15A3248();
      v12 = sub_1D15A4318();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v23 = v14;
        *v13 = 136315394;
        *(v13 + 4) = sub_1D1479780(0xD000000000000029, 0x80000001D15B3400, &v23);
        *(v13 + 12) = 2080;
        *(v13 + 14) = sub_1D1479780(0x28737365636F7270, 0xEB00000000293A5FLL, &v23);
        _os_log_impl(&dword_1D1446000, v11, v12, "[%s][%s]: Could not find a relevant trend summary", v13, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D388BF00](v14, -1, -1);
        MEMORY[0x1D388BF00](v13, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
      return MEMORY[0x1E69E7CC0];
    }

    v20 = [v10 trendValues];
    if (!v20 || (v21 = v20, v23 = 0, sub_1D15138E8(), sub_1D15A40B8(), v21, (result = v23) == 0))
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    sub_1D15A3238();
    v15 = sub_1D15A3248();
    v16 = sub_1D15A4318();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_1D1479780(0xD000000000000029, 0x80000001D15B3400, &v23);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_1D1479780(0x28737365636F7270, 0xEB00000000293A5FLL, &v23);
      _os_log_impl(&dword_1D1446000, v15, v16, "[%s][%s]: Could not fetch trend summaries: version mismatch", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D388BF00](v18, -1, -1);
      MEMORY[0x1D388BF00](v17, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
    sub_1D1513894();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t DefaultHKCodableSummaryTrendValueProvider.Failure.hashValue.getter()
{
  sub_1D15A4C88();
  MEMORY[0x1D388B000](0);
  return sub_1D15A4CB8();
}

uint64_t sub_1D1513548(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D14B3A90;

  return DefaultHKCodableSummaryTrendValueProvider.fetch(for:audience:)(a1, a2 & 1);
}

void *sub_1D15135EC(void *result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_1D1513634()
{
  result = qword_1EC630DD0;
  if (!qword_1EC630DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630DD0);
  }

  return result;
}

uint64_t dispatch thunk of HKCodableSummaryTrendValueProvider.fetch(for:audience:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D1512698;

  return v11(a1, a2 & 1, a3, a4);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D15137DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1D1513824(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D1513894()
{
  result = qword_1EC630DD8;
  if (!qword_1EC630DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630DD8);
  }

  return result;
}

unint64_t sub_1D15138E8()
{
  result = qword_1EE0566D0;
  if (!qword_1EE0566D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0566D0);
  }

  return result;
}

Swift::Void __swiftcall SignificantTimeChangeObserving.registerForSignificantTimeChanges()()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_significantTimeChangeDidOccur name:*MEMORY[0x1E69DDB88] object:0];
}

Swift::Void __swiftcall SignificantTimeChangeObserving.unregisterForSignificantTimeChanges()()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*MEMORY[0x1E69DDB88] object:0];
}

uint64_t QuantityTypeProviding.canonicalUnit.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  v3 = [v2 canonicalUnit];

  if (v3)
  {
    return v3;
  }

  result = sub_1D15A4908();
  __break(1u);
  return result;
}

uint64_t HKStatistics.dateInterval.getter()
{
  v1 = sub_1D15A26A8();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = [v0 startDate];
  sub_1D15A2668();

  v4 = [v0 endDate];
  sub_1D15A2668();

  return sub_1D15A2268();
}

Swift::Double_optional __swiftcall HKStatistics.aggregateValue(for:)(HKUnit a1)
{
  v3 = [v1 quantityType];
  v4 = [v3 aggregationStyle];

  if (v4 > 3)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = [v1 *off_1E83E6B28[v4]];
    if (v6)
    {
      v7 = v6;
      [v6 doubleValueForUnit_];
      v9 = v8;

      LOBYTE(v6) = v9;
    }
  }

  result.value = v5;
  result.is_nil = v6;
  return result;
}

HKQuantity_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HKStatistics.quantity(statisticsOptions:)(__C::HKStatisticsOptions statisticsOptions)
{
  if (statisticsOptions.rawValue > 15)
  {
    switch(statisticsOptions.rawValue)
    {
      case 0x10uLL:
        v2 = [v1 sumQuantity];
        goto LABEL_17;
      case 0x20uLL:
        v2 = [v1 mostRecentQuantity];
        goto LABEL_17;
      case 0x40uLL:
        v2 = [v1 duration];
        goto LABEL_17;
    }
  }

  else
  {
    switch(statisticsOptions.rawValue)
    {
      case 2uLL:
        v2 = [v1 averageQuantity];
        goto LABEL_17;
      case 4uLL:
        v2 = [v1 minimumQuantity];
        goto LABEL_17;
      case 8uLL:
        v2 = [v1 maximumQuantity];
        goto LABEL_17;
    }
  }

  if (_HKStatisticsOptionPresence() == statisticsOptions.rawValue)
  {
    v4 = [objc_opt_self() countUnit];
    v5 = [objc_opt_self() quantityWithUnit:v4 doubleValue:{objc_msgSend(v1, sel_dataCount)}];

    v2 = v5;
  }

  else
  {
    sub_1D15A47D8();
    MEMORY[0x1D388A330](0xD00000000000001ELL, 0x80000001D15C0CE0);
    type metadata accessor for HKStatisticsOptions(0);
    sub_1D15A48B8();
    sub_1D1514110();
    swift_allocError();
    *v6 = 0;
    v6[1] = 0xE000000000000000;
    v2 = swift_willThrow();
  }

LABEL_17:
  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

Swift::Double_optional __swiftcall HKStatistics.doubleValue(for:using:)(HealthVisualization::StatisticsOption a1, HKUnit using)
{
  v8 = *a1;
  v3 = HKStatistics.quantity(for:)(&v8);
  v5 = v3;
  if (v3)
  {
    [v3 doubleValueForUnit_];
    v7 = v6;

    LOBYTE(v3) = v7;
  }

  result.value = v4;
  result.is_nil = v3;
  return result;
}

HKQuantity_optional __swiftcall HKStatistics.quantity(for:)(HealthVisualization::StatisticsOption a1)
{
  v2 = *a1;
  v3 = &selRef_averageQuantity;
  if (v2 <= 4)
  {
    v4 = &selRef_maximumQuantity;
    v5 = &selRef_sumQuantity;
    if (v2 != 3)
    {
      v5 = &selRef_mostRecentQuantity;
    }

    if (v2 != 2)
    {
      v4 = v5;
    }

    if (*a1)
    {
      v3 = &selRef_minimumQuantity;
    }

    if (*a1 <= 1u)
    {
      v6 = v3;
    }

    else
    {
      v6 = v4;
    }

    goto LABEL_16;
  }

  if (*a1 > 7u)
  {
    v7 = v2 == 8;
    v6 = &selRef_mostRecentQuantity;
    if (!v7)
    {
      v6 = &selRef_averageQuantity;
    }

    goto LABEL_16;
  }

  if (v2 - 5 < 2)
  {
    v6 = &selRef_duration;
LABEL_16:
    v8.value.super.isa = [v1 *v6];
    return v8;
  }

  v9 = _HKStatisticsOptionPresence();
  v8 = HKStatistics.quantity(statisticsOptions:)(v9);
  if (v10)
  {
    ErrorValue = swift_getErrorValue();
    v12 = MEMORY[0x1EEE9AC00](ErrorValue);
    (*(v14 + 16))(&v15 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
    sub_1D15A3F68();
    v8.value.super.isa = sub_1D15A4908();
    __break(1u);
  }

  return v8;
}

unint64_t sub_1D1514110()
{
  result = qword_1EC630DE0;
  if (!qword_1EC630DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630DE0);
  }

  return result;
}

void sub_1D1514174()
{
  v0 = [objc_opt_self() percentUnit];
  v1 = [v0 unitString];

  v2 = sub_1D15A3F38();
  v4 = v3;

  qword_1EC63D618 = v2;
  unk_1EC63D620 = v4;
}

uint64_t sub_1D1514220(uint64_t a1, uint64_t a2)
{
  sub_1D1514284();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D1514284()
{
  if (!qword_1EC630DE8)
  {
    type metadata accessor for TimeBasedDistribution();
    v0 = sub_1D15A4608();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630DE8);
    }
  }
}

uint64_t AFibBurdenDistributionAnalysis.Result.dayOfWeek.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AFibBurdenDistributionAnalysis.Result() + 20);

  return sub_1D1514220(v3, a1);
}

uint64_t type metadata accessor for AFibBurdenDistributionAnalysis.Result()
{
  result = qword_1EC630DF8;
  if (!qword_1EC630DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AFibBurdenDistributionAnalysis.Result.init(timeOfDay:dayOfWeek:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D1516480(a1, a3, sub_1D1514284);
  v5 = type metadata accessor for AFibBurdenDistributionAnalysis.Result();
  return sub_1D1516480(a2, a3 + *(v5 + 20), sub_1D1514284);
}

uint64_t static AFibBurdenDistributionAnalysis.processHistogramResult@Sendable (histogramResult:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v185 = a2;
  v182 = sub_1D15A3268();
  v181 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v174 = &v170 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v179 = &v170 - v5;
  v184 = type metadata accessor for TimeBasedDistribution();
  v183 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v173 = &v170 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v172 = &v170 - v8;
  v9 = sub_1D15A2838();
  v190 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v187 = &v170 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v186 = &v170 - v12;
  sub_1D1514284();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v180 = &v170 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v189 = &v170 - v16;
  sub_1D14564BC(0, &qword_1EE059678);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D15B3510;
  v18 = [a1 dayOfWeekHistogram];
  v19 = [v18 mondayBurden];

  *(inited + 32) = v19;
  v20 = [a1 dayOfWeekHistogram];
  v21 = [v20 tuesdayBurden];

  *(inited + 40) = v21;
  v22 = [a1 dayOfWeekHistogram];
  v23 = [v22 wednesdayBurden];

  *(inited + 48) = v23;
  v24 = [a1 dayOfWeekHistogram];
  v25 = [v24 thursdayBurden];

  *(inited + 56) = v25;
  v26 = [a1 dayOfWeekHistogram];
  v27 = [v26 fridayBurden];

  *(inited + 64) = v27;
  v28 = [a1 dayOfWeekHistogram];
  v29 = [v28 saturdayBurden];

  *(inited + 72) = v29;
  v30 = [a1 dayOfWeekHistogram];
  v31 = [v30 sundayBurden];

  *(inited + 80) = v31;
  v32 = sub_1D15160C8(inited);
  v34 = v33;
  v36 = v35;
  swift_setDeallocating();
  swift_arrayDestroy();
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_1D15B3520;
  v38 = [a1 timeOfDayHistogram];
  v39 = [v38 midnightToFourAMBurden];

  *(v37 + 32) = v39;
  v40 = [a1 timeOfDayHistogram];
  v41 = [v40 fourAMtoEightAMBurden];

  *(v37 + 40) = v41;
  v42 = [a1 timeOfDayHistogram];
  v43 = [v42 eightAMToNoonBurden];

  *(v37 + 48) = v43;
  v44 = [a1 timeOfDayHistogram];
  v45 = [v44 noonToFourPMBurden];

  *(v37 + 56) = v45;
  v46 = [a1 timeOfDayHistogram];
  v47 = [v46 fourPMToEightPMBurden];

  *(v37 + 64) = v47;
  v48 = [a1 timeOfDayHistogram];
  v49 = [v48 eightPMToMidnightBurden];

  *(v37 + 72) = v49;
  v178 = sub_1D15160C8(v37);
  v177 = v50;
  v52 = v51;
  swift_setDeallocating();
  swift_arrayDestroy();
  if (qword_1EC62FF68 != -1)
  {
    swift_once();
  }

  v53 = __swift_project_value_buffer(v9, qword_1EC630FD0);
  v54 = *(v190 + 16);
  v188 = v9;
  v176 = v54;
  v54(v186, v53, v9);
  sub_1D14564BC(0, &qword_1EC630DF0);
  v175 = v55;
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1D15B3530;
  v57 = [a1 dayOfWeekHistogram];
  v58 = [v57 sundayBurden];

  sub_1D15156D0(v58, v32, v34, v36 & 1, &v191);
  v59 = v191;
  v60 = v192;
  v61 = v193;
  v62 = v194;
  *(v56 + 32) = xmmword_1D15B3540;
  *(v56 + 48) = v59;
  *(v56 + 56) = v60;
  *(v56 + 57) = v61;
  *(v56 + 64) = v62;
  v63 = [a1 dayOfWeekHistogram];
  v64 = [v63 mondayBurden];

  sub_1D15156D0(v64, v32, v34, v36 & 1, &v191);
  v65 = v191;
  v66 = v192;
  v67 = v193;
  v68 = v194;
  *(v56 + 72) = xmmword_1D15ACDD0;
  *(v56 + 88) = v65;
  *(v56 + 96) = v66;
  *(v56 + 97) = v67;
  *(v56 + 104) = v68;
  v69 = [a1 dayOfWeekHistogram];
  v70 = [v69 tuesdayBurden];

  sub_1D15156D0(v70, v32, v34, v36 & 1, &v191);
  v71 = v191;
  v72 = v192;
  v73 = v193;
  v74 = v194;
  *(v56 + 112) = xmmword_1D15B3550;
  *(v56 + 128) = v71;
  *(v56 + 136) = v72;
  *(v56 + 137) = v73;
  *(v56 + 144) = v74;
  v75 = [a1 dayOfWeekHistogram];
  v76 = [v75 wednesdayBurden];

  sub_1D15156D0(v76, v32, v34, v36 & 1, &v191);
  v77 = v191;
  v78 = v192;
  v79 = v193;
  v80 = v194;
  *(v56 + 152) = xmmword_1D15B3560;
  *(v56 + 168) = v77;
  *(v56 + 176) = v78;
  *(v56 + 177) = v79;
  *(v56 + 184) = v80;
  v81 = [a1 dayOfWeekHistogram];
  v82 = [v81 thursdayBurden];

  sub_1D15156D0(v82, v32, v34, v36 & 1, &v191);
  v83 = v191;
  v84 = v192;
  v85 = v193;
  v86 = v194;
  *(v56 + 192) = xmmword_1D15B3570;
  *(v56 + 208) = v83;
  *(v56 + 216) = v84;
  *(v56 + 217) = v85;
  *(v56 + 224) = v86;
  v87 = [a1 dayOfWeekHistogram];
  v88 = [v87 fridayBurden];

  sub_1D15156D0(v88, v32, v34, v36 & 1, &v191);
  v89 = v191;
  v90 = v192;
  v91 = v193;
  v92 = v194;
  *(v56 + 232) = xmmword_1D15B3580;
  *(v56 + 248) = v89;
  *(v56 + 256) = v90;
  *(v56 + 257) = v91;
  *(v56 + 264) = v92;
  v93 = [a1 dayOfWeekHistogram];
  v94 = [v93 saturdayBurden];

  sub_1D15156D0(v94, v32, v34, v36 & 1, &v191);
  v95 = v191;
  v96 = v192;
  v97 = v193;
  v98 = v194;
  *(v56 + 272) = xmmword_1D15B3590;
  *(v56 + 288) = v95;
  *(v56 + 296) = v96;
  *(v56 + 297) = v97;
  *(v56 + 304) = v98;
  if (qword_1EC62FF58 != -1)
  {
    swift_once();
  }

  v100 = qword_1EC63D618;
  v99 = unk_1EC63D620;

  v101 = sub_1D154B4D8(v56, 0, 7);
  v102 = v184;
  v103 = v183;
  v171 = v100;
  if (v101)
  {
    v104 = v172;
    v105 = v188;
    (*(v190 + 32))(v172, v186, v188);
    *&v104[*(v102 + 20)] = v56;
    v106 = &v104[*(v102 + 24)];
    *v106 = v100;
    v106[1] = v99;
    v107 = v104;
    v108 = v189;
    sub_1D1516480(v107, v189, type metadata accessor for TimeBasedDistribution);
    (*(v103 + 56))(v108, 0, 1, v102);
  }

  else
  {

    sub_1D15A31E8();
    v109 = sub_1D15A3248();
    v110 = sub_1D15A4328();
    v111 = os_log_type_enabled(v109, v110);
    v112 = v186;
    if (v111)
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&dword_1D1446000, v109, v110, "[TimeBasedDistribution] Attempted to create invalid distribution", v113, 2u);
      MEMORY[0x1D388BF00](v113, -1, -1);
    }

    (*(v181 + 8))(v179, v182);
    v105 = v188;
    (*(v190 + 8))(v112, v188);
    (*(v103 + 56))(v189, 1, 1, v102);
  }

  v186 = v99;
  v114 = v187;
  if (qword_1EC62FF60 != -1)
  {
    swift_once();
  }

  v115 = __swift_project_value_buffer(v105, qword_1EC630FB8);
  v176(v114, v115, v105);
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_1D15B35A0;
  v117 = [a1 timeOfDayHistogram];
  v118 = [v117 midnightToFourAMBurden];

  v119 = v178;
  v120 = v177;
  sub_1D15156D0(v118, v178, v177, v52 & 1, &v191);

  v121 = v191;
  v122 = v192;
  v123 = v193;
  v124 = v194;
  *(v116 + 32) = xmmword_1D15B35B0;
  *(v116 + 48) = v121;
  *(v116 + 56) = v122;
  *(v116 + 57) = v123;
  *(v116 + 64) = v124;
  v125 = [a1 timeOfDayHistogram];
  v126 = [v125 fourAMtoEightAMBurden];

  sub_1D15156D0(v126, v119, v120, v52 & 1, &v191);
  v127 = v191;
  v128 = v192;
  v129 = v193;
  v130 = v194;
  *(v116 + 72) = xmmword_1D15B35C0;
  *(v116 + 88) = v127;
  *(v116 + 96) = v128;
  *(v116 + 97) = v129;
  *(v116 + 104) = v130;
  v131 = [a1 timeOfDayHistogram];
  v132 = [v131 eightAMToNoonBurden];

  sub_1D15156D0(v132, v119, v120, v52 & 1, &v191);
  v133 = v191;
  v134 = v192;
  v135 = v193;
  v136 = v194;
  *(v116 + 112) = xmmword_1D15B35D0;
  *(v116 + 128) = v133;
  *(v116 + 136) = v134;
  *(v116 + 137) = v135;
  *(v116 + 144) = v136;
  v137 = [a1 timeOfDayHistogram];
  v138 = [v137 noonToFourPMBurden];

  sub_1D15156D0(v138, v119, v120, v52 & 1, &v191);
  v139 = v191;
  v140 = v192;
  v141 = v193;
  v142 = v194;
  *(v116 + 152) = xmmword_1D15B35E0;
  *(v116 + 168) = v139;
  *(v116 + 176) = v140;
  *(v116 + 177) = v141;
  *(v116 + 184) = v142;
  v143 = [a1 timeOfDayHistogram];
  v144 = [v143 fourPMToEightPMBurden];

  sub_1D15156D0(v144, v119, v120, v52 & 1, &v191);
  v145 = v191;
  v146 = v192;
  v147 = v193;
  v148 = v194;
  *(v116 + 192) = xmmword_1D15B35F0;
  *(v116 + 208) = v145;
  *(v116 + 216) = v146;
  *(v116 + 217) = v147;
  *(v116 + 224) = v148;
  v149 = [a1 timeOfDayHistogram];
  v150 = [v149 eightPMToMidnightBurden];

  sub_1D15156D0(v150, v119, v120, v52 & 1, &v191);
  v151 = v191;
  v152 = v192;
  v153 = v193;
  v154 = v194;
  *(v116 + 232) = xmmword_1D15B3600;
  *(v116 + 248) = v151;
  *(v116 + 256) = v152;
  *(v116 + 257) = v153;
  *(v116 + 264) = v154;
  if (sub_1D154B4D8(v116, 0, 24))
  {
    v155 = v173;
    (*(v190 + 32))(v173, v187, v188);
    *(v155 + *(v102 + 20)) = v116;
    v156 = (v155 + *(v102 + 24));
    v157 = v186;
    *v156 = v171;
    v156[1] = v157;
    v158 = v180;
    sub_1D1516480(v155, v180, type metadata accessor for TimeBasedDistribution);
    v159 = 0;
  }

  else
  {

    v160 = v174;
    sub_1D15A31E8();
    v161 = sub_1D15A3248();
    v162 = sub_1D15A4328();
    v163 = os_log_type_enabled(v161, v162);
    v164 = v190;
    if (v163)
    {
      v165 = swift_slowAlloc();
      *v165 = 0;
      _os_log_impl(&dword_1D1446000, v161, v162, "[TimeBasedDistribution] Attempted to create invalid distribution", v165, 2u);
      MEMORY[0x1D388BF00](v165, -1, -1);
    }

    (*(v181 + 8))(v160, v182);
    (*(v164 + 8))(v187, v188);
    v159 = 1;
    v158 = v180;
  }

  (*(v103 + 56))(v158, v159, 1, v102);
  v166 = v158;
  v167 = v185;
  sub_1D1516480(v166, v185, sub_1D1514284);
  v168 = type metadata accessor for AFibBurdenDistributionAnalysis.Result();
  return sub_1D1516480(v189, v167 + *(v168 + 20), sub_1D1514284);
}

void sub_1D15156D0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = [a1 burdenPercentage];
  v11 = v10;
  if (v10)
  {
    [v10 doubleValue];
    v13 = v12;

    if (a4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v13 = 0;
    if (a4)
    {
      goto LABEL_15;
    }
  }

  v14 = [a1 burdenPercentage];
  if (v14)
  {
    v15 = v14;
    [v14 doubleValue];
    v17 = v16;

    v18 = round(v17 * 1000.0);
    if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v18 > -9.22337204e18)
    {
      if (v18 < 9.22337204e18)
      {
        v20 = v18 >= a2 && v18 <= a3;
        goto LABEL_16;
      }

LABEL_21:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  v20 = 0;
LABEL_16:
  v21 = [a1 burdenPercentageWasClampedToLowerBound];
  v22 = MEMORY[0x1E69E7CC0];
  *a5 = v13;
  *(a5 + 8) = v11 == 0;
  if (v21)
  {
    v22 = &unk_1F4D3AB08;
  }

  *(a5 + 9) = v20;
  *(a5 + 16) = v22;
}

uint64_t sub_1D1515844(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D151E0A8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1D15A4B58();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
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
      v7 = sub_1D15A40F8();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1D1515978(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1D1515978(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D151DF58(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1D1515ED4((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
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
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
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
      result = sub_1D148B89C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_1D148B89C((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
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

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_1D1515ED4((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
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

uint64_t sub_1D1515ED4(double *__dst, double *__src, double *a3, double *a4)
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
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
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
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1D15160C8(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

LABEL_21:
  v3 = sub_1D15A4708();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D388AB50](v6, a1);
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 = [v7 burdenPercentage];
      if (v9)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    v10 = v9;
    [v9 doubleValue];
    v12 = v11;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1D145201C(0, *(v5 + 2) + 1, 1, v5);
    }

    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v5 = sub_1D145201C((v13 > 1), v14 + 1, 1, v5);
    }

    *(v5 + 2) = v14 + 1;
    *&v5[8 * v14 + 32] = v12;
  }

  while (v4 != v3);
LABEL_23:
  if (!*(v5 + 2))
  {

    return 0;
  }

  v28 = v5;

  sub_1D1515844(&v28);

  v15 = v28;
  v16 = *(v28 + 2);
  if (v16)
  {
    v18 = (v16 - 1) >> 1;
    if (v18 >= v16)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v17 = *&v28[8 * v18 + 32];
  }

  else
  {
    if (!v16)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v17 = (*&v28[4 * v16 + 32] + *&v28[4 * v16 + 24]) * 0.5;
  }

  v19 = round(v17 * 1000.0);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v20 = round(*&v28[8 * v16 + 24] * 1000.0);
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v21 = v19;
  if (v20 >= 151)
  {
    v22 = __OFADD__(v21, 125);
    v21 += 125;
    if (!v22)
    {
LABEL_41:
      for (i = 32; ; i += 8)
      {
        if (!v16)
        {
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v24 = round(*&v15[i] * 1000.0);
        if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_53;
        }

        if (v24 <= -9.22337204e18)
        {
          goto LABEL_54;
        }

        if (v24 >= 9.22337204e18)
        {
          goto LABEL_55;
        }

        v25 = v24;
        if (v21 <= v24)
        {
          break;
        }

        if (!--v16)
        {

          return 0;
        }
      }

      v26 = v20;

      if (v26 < v25)
      {
        goto LABEL_65;
      }

      return v25;
    }

    __break(1u);
  }

  v22 = __OFADD__(v21, 50);
  v21 += 50;
  if (!v22)
  {
    goto LABEL_41;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D1516480(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D1516530()
{
  sub_1D1514284();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D1516630(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_1D15166CC()
{
  v1 = qword_1EE059A18;
  v2 = *&v0[qword_1EE059A18];
  if (v2)
  {
    v3 = *&v0[qword_1EE059A18];
  }

  else
  {
    v4 = sub_1D1516730(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D1516730(char *a1)
{
  v2 = objc_opt_self();
  v3 = *&a1[qword_1EE059A30];
  v4 = *&a1[qword_1EE059A10];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = a1;
  v12[4] = sub_1D1518028;
  v12[5] = v5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D1516630;
  v12[3] = &block_descriptor_4;
  v7 = _Block_copy(v12);

  v8 = [v2 queryForMostRecentSampleOfType:v3 predicate:v4 completion:v7];
  _Block_release(v7);
  v9 = [v6 name];
  [v8 setDebugIdentifier_];

  [v8 setQualityOfService_];
  if ([v3 code] == 248)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      [v10 setIncludeAutomaticTimeZones_];
    }
  }

  return v8;
}

id MostRecentSampleQueryOperationCore.init(sampleType:predicate:name:queryQualityOfService:healthStore:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  *&v6[qword_1EE059A18] = 0;
  *&v6[qword_1EE059A30] = a1;
  *&v6[qword_1EE059A10] = a2;
  *&v6[qword_1EE059A20] = a5;
  *&v6[qword_1EE059A28] = a6;
  v18.receiver = v6;
  v18.super_class = type metadata accessor for MostRecentSampleQueryOperationCore();
  v11 = a1;
  v12 = a6;
  v13 = a2;
  v14 = objc_msgSendSuper2(&v18, sel_init);
  v15 = v14;
  if (a4)
  {
    v16 = sub_1D15A3EF8();
  }

  else
  {
    v16 = 0;
  }

  [v14 setName_];

  return v14;
}

void sub_1D1516AD0()
{
  v1 = [*(v0 + qword_1EE059A30) identifier];
  v2 = sub_1D15A3F38();
  v4 = v3;

  v5._countAndFlagsBits = 0x676E696E6E7572;
  v5._object = 0xE700000000000000;
  v6._countAndFlagsBits = v2;
  v6._object = v4;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v5, v6);

  v7 = *(v0 + qword_1EE059A28);
  v8 = sub_1D15166CC();
  [v7 executeQuery_];
}

void sub_1D1516B94(void *a1)
{
  v1 = a1;
  sub_1D1516AD0();
}

void sub_1D1516BDC()
{
  if ([v0 isCancelled])
  {
    v1 = [*&v0[qword_1EE059A30] identifier];
    v2 = sub_1D15A3F38();
    v4 = v3;

    v5._countAndFlagsBits = 0x656C6C65636E6163;
    v5._object = 0xE900000000000064;
    v6._countAndFlagsBits = v2;
    v6._object = v4;
    NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v5, v6);
  }

  v7 = *&v0[qword_1EE059A28];
  v8 = sub_1D15166CC();
  [v7 stopQuery_];
}

uint64_t sub_1D1516CB8(void *a1, void *a2)
{
  v5 = sub_1D15A3DC8();
  v33 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D15A4428();
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D15A4418();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1D15A3DE8();
  v31 = *(v12 - 8);
  v32 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1D388B740](v13);
  if (!v16)
  {
    v17 = sub_1D150F4D4();
    v27[1] = "inish(sample:error:)";
    v27[2] = v17;
    sub_1D15A3DD8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    v18 = MEMORY[0x1E69E8030];
    v19 = sub_1D1517F1C(&qword_1EE05AD30, MEMORY[0x1E69E8030]);
    v28 = a1;
    v27[0] = v19;
    sub_1D1517F64(0, &qword_1EE05AD98, v18);
    sub_1D1517EC0(&qword_1EE05AD90, &qword_1EE05AD98, v18);
    a1 = v28;
    sub_1D15A4678();
    (*(v29 + 104))(v10, *MEMORY[0x1E69E8090], v30);
    v16 = sub_1D15A4448();
  }

  v20 = swift_allocObject();
  v20[2] = v2;
  v20[3] = a2;
  v20[4] = a1;
  aBlock[4] = sub_1D1517F10;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1493D34;
  aBlock[3] = &block_descriptor_12;
  v21 = _Block_copy(aBlock);
  v22 = v2;
  v23 = a2;
  v24 = a1;
  sub_1D15A3DD8();
  v34 = MEMORY[0x1E69E7CC0];
  v25 = MEMORY[0x1E69E7F60];
  sub_1D1517F1C(&qword_1EE059798, MEMORY[0x1E69E7F60]);
  sub_1D1517F64(0, &qword_1EE059770, v25);
  sub_1D1517EC0(&qword_1EE059768, &qword_1EE059770, v25);
  sub_1D15A4678();
  MEMORY[0x1D388A7A0](0, v15, v7, v21);
  _Block_release(v21);

  (*(v33 + 8))(v7, v5);
  (*(v31 + 8))(v15, v32);
}

uint64_t sub_1D151716C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1D15A2DA8();
  v6 = (*((*MEMORY[0x1E69E7D40] & *a1) + class metadata base offset for MostRecentSampleQueryOperationCore + 96))(a3, a2);
  MEMORY[0x1EEE9AC00](v6);
  return sub_1D15A2DA8();
}

void sub_1D1517284(void *a1, _BYTE *a2, void *a3)
{
  if ([a1 isCancelled])
  {
    v6._object = 0x80000001D15BDC90;
    v6._countAndFlagsBits = 0xD00000000000002DLL;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v6, v7);
LABEL_4:
    *a2 = 1;
    return;
  }

  if ([a1 isFinished])
  {
    goto LABEL_4;
  }

  if (a3)
  {
    swift_getErrorValue();
    v8 = a3;
    v9._countAndFlagsBits = sub_1D15A4C08();
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    NSOperation.logErrorString(_:withInfo:)(v9, v10);
  }
}

uint64_t sub_1D1517374(uint64_t a1)
{
  v1 = [*(a1 + qword_1EE059A30) identifier];
  v2 = sub_1D15A3F38();
  v4 = v3;

  v5._countAndFlagsBits = 0x64656873696E6966;
  v5._object = 0xE800000000000000;
  v6._countAndFlagsBits = v2;
  v6._object = v4;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v5, v6);
}

id MostRecentSampleQueryOperationCore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1D1517524()
{
  v1 = *(v0 + qword_1EE059A18);
}

void sub_1D15175A4(uint64_t a1)
{
  v2 = *(a1 + qword_1EE059A18);
}

void sub_1D1517610(id *a1)
{
  v1 = *a1;
  sub_1D14E261C(*a1);
  sub_1D1517B94();

  sub_1D14A8208(v1);
}

uint64_t sub_1D1517670()
{

  sub_1D15A2D28();

  return v1;
}

id MostRecentSampleQueryOperation.init(sampleType:predicate:name:queryQualityOfService:healthStore:resultHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v16 = qword_1EE059C00;
  sub_1D15A4608();
  sub_1D148F3FC();
  sub_1D15A4CC8();
  sub_1D15A2D48();
  sub_1D1487B04();
  swift_allocError();
  *v17 = 0;
  *(v8 + v16) = sub_1D15A2D58();
  v18 = (v8 + qword_1EE059C08);
  *v18 = a7;
  v18[1] = a8;
  return MostRecentSampleQueryOperationCore.init(sampleType:predicate:name:queryQualityOfService:healthStore:)(a1, a2, a3, a4, a5, a6);
}

void sub_1D1517830()
{
  if ([v0 isCancelled])
  {
    sub_1D1487B04();
    v1 = swift_allocError();
    *v2 = 3;
    sub_1D1517B94();
  }

  sub_1D1516BDC();
}

void sub_1D15178A8(void *a1, id a2)
{
  if (a2)
  {
    v4 = a2;
    sub_1D1517B94();
  }

  else
  {
    if (a1)
    {
      v6 = swift_dynamicCastUnknownClass();
      if (v6)
      {
        v7 = a1;
      }
    }

    else
    {
      v6 = 0;
    }

    sub_1D1517B94();
  }

  v8 = *(v2 + qword_1EE059C08);
  v9 = sub_1D1517670();
  v8(v9, v10 & 1);

  sub_1D14A8208(v9);
}

uint64_t sub_1D1517A2C()
{
}

id sub_1D1517A90(void *a1, uint64_t (*a2)(void, void, void))
{
  v3 = a2(0, *((*MEMORY[0x1E69E7D40] & *v2) + *a1), *((*MEMORY[0x1E69E7D40] & *v2) + *a1 + 8));
  v5.receiver = v2;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1D1517B10()
{
}

uint64_t sub_1D1517B60@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D1517670();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1D1517B94()
{

  sub_1D15A2D38();
}

uint64_t sub_1D1517EC0(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D1517F64(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1517F1C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D1517F64(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D15A4118();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_1D1517FCC(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  sub_1D14A8208(*a1);
  *a1 = v3;
  *(a1 + 8) = v4;

  return sub_1D14E261C(v3);
}

void sub_1D1518128(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D15A4608();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t TimeAsleepSnidgetViewModelExtractor.Metadata.init(hasData:relevantDateInterval:selectionDateInterval:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v50 = a3;
  v7 = sub_1D15A26A8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69A3D00];
  sub_1D1518128(0, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v47 = &v43 - v11;
  v12 = sub_1D15A2CA8();
  v13 = *(v12 - 8);
  v48 = v12;
  v49 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1E6968130];
  sub_1D1518128(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v43 - v17;
  v19 = sub_1D15A22A8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v44 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v43 - v23;
  *a4 = a1;
  v25 = type metadata accessor for TimeAsleepSnidgetViewModelExtractor.Metadata(0);
  v26 = a4;
  v27 = &a4[*(v25 + 20)];
  v28 = a2;
  v29 = a2;
  v30 = v50;
  sub_1D151A5A8(v29, v27, &qword_1EE05B3E8, v9);
  sub_1D151A5A8(v30, v18, &qword_1EE05B520, v15);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v43 = v19;
    sub_1D151A54C(v18, &qword_1EE05B520, MEMORY[0x1E6968130]);
    v31 = v28;
    v32 = v47;
    sub_1D151A5A8(v28, v47, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
    v33 = v48;
    if ((*(v49 + 48))(v32, 1, v48) == 1)
    {
      sub_1D151A54C(v30, &qword_1EE05B520, MEMORY[0x1E6968130]);
      v34 = MEMORY[0x1E69A3D00];
      sub_1D151A54C(v28, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
      sub_1D151A54C(v32, &qword_1EE05B3E8, v34);
      return (*(v20 + 56))(&v26[*(v25 + 24)], 1, 1, v43);
    }

    else
    {
      v38 = v49;
      v39 = v45;
      (*(v49 + 32))(v45, v32, v33);
      v40 = *(v25 + 24);
      v41 = v44;
      sub_1D15A2C98();
      sub_1D15A2258();
      v42 = v43;
      (*(v20 + 8))(v41, v43);
      sub_1D15A2278();
      sub_1D151A54C(v50, &qword_1EE05B520, MEMORY[0x1E6968130]);
      sub_1D151A54C(v31, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
      (*(v38 + 8))(v39, v33);
      return (*(v20 + 56))(&v26[v40], 0, 1, v42);
    }
  }

  else
  {
    sub_1D151A54C(v30, &qword_1EE05B520, MEMORY[0x1E6968130]);
    sub_1D151A54C(v28, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
    v36 = *(v20 + 32);
    v36(v24, v18, v19);
    v37 = *(v25 + 24);
    v36(&v26[v37], v24, v19);
    return (*(v20 + 56))(&v26[v37], 0, 1, v19);
  }
}

uint64_t sub_1D1518708@<X0>(_BYTE *a1@<X8>)
{
  v55 = a1;
  v1 = sub_1D15A26A8();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v49 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D15A2CA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D15A22A8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v46 - v10;
  v11 = MEMORY[0x1E6968130];
  sub_1D1518128(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  v18 = MEMORY[0x1E69A3D00];
  sub_1D1518128(0, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v50 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v46 - v23;
  v52 = v3;
  v53 = v4;
  (*(v4 + 56))(&v46 - v23, 1, 1, v3, v22);
  v54 = *(v7 + 56);
  v54(v17, 1, 1, v6);
  v25 = v55;
  *v55 = 0;
  v26 = type metadata accessor for TimeAsleepSnidgetViewModelExtractor.Metadata(0);
  v27 = v18;
  v28 = v6;
  sub_1D151A5A8(v24, &v25[*(v26 + 20)], &qword_1EE05B3E8, v27);
  sub_1D151A5A8(v17, v14, &qword_1EE05B520, v11);
  if ((*(v7 + 48))(v14, 1, v6) == 1)
  {
    v51 = (v7 + 56);
    v46 = v6;
    sub_1D151A54C(v14, &qword_1EE05B520, MEMORY[0x1E6968130]);
    v29 = v50;
    sub_1D151A5A8(v24, v50, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
    v30 = v52;
    if ((*(v53 + 48))(v29, 1, v52) == 1)
    {
      sub_1D151A54C(v17, &qword_1EE05B520, MEMORY[0x1E6968130]);
      v31 = MEMORY[0x1E69A3D00];
      sub_1D151A54C(v24, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
      sub_1D151A54C(v29, &qword_1EE05B3E8, v31);
      v32 = &v55[*(v26 + 24)];
      v33 = 1;
      v34 = v46;
    }

    else
    {
      v39 = v7;
      v40 = v53;
      v41 = v48;
      (*(v53 + 32))(v48, v29, v30);
      v42 = *(v26 + 24);
      v43 = v47;
      sub_1D15A2C98();
      sub_1D15A2258();
      v44 = v46;
      (*(v39 + 8))(v43, v46);
      v45 = v55;
      sub_1D15A2278();
      (*(v40 + 8))(v41, v30);
      sub_1D151A54C(v17, &qword_1EE05B520, MEMORY[0x1E6968130]);
      sub_1D151A54C(v24, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
      v32 = &v45[v42];
      v33 = 0;
      v34 = v44;
    }

    return (v54)(v32, v33, 1, v34);
  }

  else
  {
    sub_1D151A54C(v17, &qword_1EE05B520, MEMORY[0x1E6968130]);
    sub_1D151A54C(v24, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
    v35 = *(v7 + 32);
    v36 = v51;
    v35(v51, v14, v6);
    v37 = *(v26 + 24);
    v35(&v25[v37], v36, v28);
    return (v54)(&v25[v37], 0, 1, v28);
  }
}

uint64_t TimeAsleepSnidgetViewModelExtractor.ViewModelComponents.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TimeAsleepSnidgetViewModelExtractor.ViewModelComponents(0) + 28);

  return sub_1D1518DA8(v3, a1);
}

uint64_t sub_1D1518DA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeAsleepSnidgetViewModelExtractor.Metadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TimeAsleepSnidgetViewModelExtractor.ViewModelComponents.currentValueDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TimeAsleepSnidgetViewModelExtractor.ViewModelComponents(0) + 32);
  v4 = sub_1D15A26A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TimeAsleepSnidgetViewModelExtractor.init(healthStore:unitPreferenceController:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void TimeAsleepSnidgetViewModelExtractor.makeViewModelComponents(currentValue:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v179 = a2;
  v5 = sub_1D15A2CA8();
  v172 = *(v5 - 8);
  v173 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v154 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_1D15A22A8();
  v163 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v153 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v156 = &v147 - v9;
  sub_1D1518128(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v162 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v167 = &v147 - v13;
  v14 = sub_1D15A26A8();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v165 = &v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1518128(0, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v155 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v166 = &v147 - v19;
  v175 = type metadata accessor for TimeAsleepSnidgetViewModelExtractor.Metadata(0);
  MEMORY[0x1EEE9AC00](v175);
  v176 = &v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v164 = &v147 - v22;
  sub_1D1518128(0, &qword_1EE05AAB8, MEMORY[0x1E69A3778]);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v161 = &v147 - v24;
  v177 = sub_1D15A23F8();
  v171 = *(v177 - 1);
  MEMORY[0x1EEE9AC00](v177);
  v160 = &v147 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D15A2458();
  MEMORY[0x1EEE9AC00](v26 - 8);
  v170 = &v147 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_1D15A3268();
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v29 = &v147 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v147 - v31;
  sub_1D1518128(0, &qword_1EE05AAE0, MEMORY[0x1E6968848]);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v159 = &v147 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v174 = &v147 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v168 = &v147 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v147 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v178 = &v147 - v43;
  sub_1D1518128(0, &qword_1EE0593B0, MEMORY[0x1E69A3670]);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v46 = &v147 - v45;
  v48 = *v2;
  v47 = *(v2 + 8);
  v49 = [objc_opt_self() displayTypeWithIdentifier_];
  if (!v49)
  {
    sub_1D151A4F8();
    swift_allocError();
    *v52 = 0;
    swift_willThrow();
    return;
  }

  v50 = v49;
  sub_1D14862D8(a1);
  if (v3)
  {

    return;
  }

  if (!v51)
  {
    goto LABEL_15;
  }

  v53 = v51;
  if (![v51 hasInBedDuration] || !objc_msgSend(v53, sel_hasEndOfSleepTimeIntervalSinceReferenceDate))
  {

LABEL_15:
    sub_1D15A2F28();
    v70 = sub_1D15A2EA8();
    (*(*(v70 - 8) + 56))(v46, 1, 1, v70);
    v71 = v50;
    v72 = sub_1D15A2F18();
    v73 = type metadata accessor for TimeAsleepSnidgetViewModelExtractor.ViewModelComponents(0);
    v74 = v179;
    sub_1D1518708(v179 + *(v73 + 28));
    _s19HealthVisualization25PresentationDateProvidingPAAE012presentationD010Foundation0D0VvgZ_0();

    v75 = 0;
LABEL_16:
    *v74 = v72;
    v74[1] = v75;
    v74[2] = MEMORY[0x1E69E7CC0];
    return;
  }

  v150 = sub_1D15A2F28();
  sub_1D14863E4();
  v152 = v53;
  v55 = *(v54 + 48);
  v151 = v50;
  [v152 endOfSleepTimeIntervalSinceReferenceDate];
  v56 = HKDecodeDateForValue();
  sub_1D15A2668();

  v46[v55] = 0;
  LODWORD(v149) = *MEMORY[0x1E69A3668];
  v57 = sub_1D15A2EA8();
  v58 = *(v57 - 8);
  (*(v58 + 104))(v46, v149, v57);
  v59 = v57;
  v60 = v152;
  (*(v58 + 56))(v46, 0, 1, v59);
  v61 = sub_1D15A2F18();
  v62 = objc_opt_self();
  v63 = v48;
  v148 = v47;
  v149 = v63;
  v147 = [v62 sharedInstanceForHealthStore_];
  v64 = v177;
  v171 = *(v171 + 56);
  (v171)(v178, 1, 1, v177);
  v65 = [v60 hasAsleepDuration];
  v150 = v61;
  if (v65 && ([v60 asleepDuration], v66 > 2.22507386e-308))
  {
    type metadata accessor for Localization();
    v181 = 0u;
    v182 = 0u;
    swift_initStaticObject();
    v67 = sub_1D144E91C(0xD000000000000027, 0x80000001D15C0EF0, &v181, 0, 0);
    v69 = HIBYTE(v68) & 0xF;
    if ((v68 & 0x2000000000000000) == 0)
    {
      v69 = v67 & 0xFFFFFFFFFFFFLL;
    }

    if (!v69)
    {

      sub_1D15A3238();
      v84 = sub_1D15A3248();
      v85 = sub_1D15A42F8();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v168 = v41;
        v87 = v86;
        v88 = v84;
        v89 = swift_slowAlloc();
        v180 = v89;
        *v87 = 136446210;
        *(v87 + 4) = sub_1D1479780(0xD000000000000027, 0x80000001D15C0EF0, &v180);
        v90 = v85;
        v91 = v88;
        _os_log_impl(&dword_1D1446000, v88, v90, "Localization: no localization found for '%{public}s'", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v89);
        MEMORY[0x1D388BF00](v89, -1, -1);
        v41 = v168;
        MEMORY[0x1D388BF00](v87, -1, -1);
      }

      else
      {
      }

      (*(v157 + 8))(v32, v158);
    }

    sub_1D151A678(&v181, sub_1D144ECF8);

    sub_1D15A2448();
    sub_1D15A2408();
    *&v181 = sub_1D15A3068();
    sub_1D149D7C8();
    sub_1D15A2418();
    *&v181 = [objc_opt_self() secondaryLabelColor];
    sub_1D149D81C();
    sub_1D15A2418();

    v83 = &selRef_asleepDuration;
  }

  else
  {
    type metadata accessor for Localization();
    v181 = 0u;
    v182 = 0u;
    swift_initStaticObject();
    v76 = sub_1D144E91C(0xD000000000000027, 0x80000001D15C0EC0, &v181, 0, 0);
    v78 = HIBYTE(v77) & 0xF;
    if ((v77 & 0x2000000000000000) == 0)
    {
      v78 = v76 & 0xFFFFFFFFFFFFLL;
    }

    if (v78)
    {
      v41 = v168;
    }

    else
    {

      sub_1D15A3238();
      v79 = sub_1D15A3248();
      v80 = sub_1D15A42F8();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v180 = v82;
        *v81 = 136446210;
        *(v81 + 4) = sub_1D1479780(0xD000000000000027, 0x80000001D15C0EC0, &v180);
        _os_log_impl(&dword_1D1446000, v79, v80, "Localization: no localization found for '%{public}s'", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v82);
        MEMORY[0x1D388BF00](v82, -1, -1);
        MEMORY[0x1D388BF00](v81, -1, -1);
      }

      (*(v157 + 8))(v29, v158);
      v41 = v168;
    }

    sub_1D151A678(&v181, sub_1D144ECF8);

    sub_1D15A2448();
    sub_1D15A2408();
    *&v181 = sub_1D15A3068();
    sub_1D149D7C8();
    sub_1D15A2418();
    *&v181 = [objc_opt_self() secondaryLabelColor];
    sub_1D149D81C();
    sub_1D15A2418();

    v83 = &selRef_inBedDuration;
  }

  v92 = v178;
  v93 = v152;
  sub_1D151A54C(v178, &qword_1EE05AAE0, MEMORY[0x1E6968848]);
  v94 = v64;
  v95 = v171;
  (v171)(v41, 0, 1, v94);
  sub_1D14A0F5C(v41, v92);
  [v93 *v83];
  v97 = v96;
  v98 = v151;
  v99 = [v151 presentation];
  v100 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v101 = [v99 adjustedValueForDaemonValue_];

  v102 = v101;
  v103 = sub_1D15A3048();
  v104 = sub_1D15A3068();
  v105 = HKTimePeriodStringWithFonts();

  if (v105)
  {
    v170 = v102;
    sub_1D151A5A8(v92, v174, &qword_1EE05AAE0, MEMORY[0x1E6968848]);
    v168 = v105;
    sub_1D15A2428();
    v95(v159, 1, 1, v177);
    *&v181 = 0x5F74656764696E53;
    *(&v181 + 1) = 0xE800000000000000;
    sub_1D1453BA0(0, &qword_1EE056758);
    v106 = MEMORY[0x1D388A6B0](*MEMORY[0x1E696B698]);
    v107 = [v106 description];
    v108 = sub_1D15A3F38();
    v110 = v109;

    MEMORY[0x1D388A330](v108, v110);

    v111 = v152;
    [v152 asleepDuration];
    v112 = v161;
    sub_1D15A3008();

    v113 = sub_1D15A3018();
    (*(*(v113 - 8) + 56))(v112, 0, 1, v113);
    sub_1D15A30E8();
    swift_allocObject();
    v75 = sub_1D15A30D8();
    [v111 endOfSleepTimeIntervalSinceReferenceDate];
    v114 = HKDecodeDateForValue();
    sub_1D15A2668();

    v115 = v166;
    sub_1D15A2C88();
    (*(v172 + 56))(v115, 0, 1, v173);
    v116 = v163;
    v117 = v163 + 56;
    v118 = v167;
    v119 = v169;
    v177 = *(v163 + 56);
    (v177)(v167, 1, 1, v169);
    v120 = v176;
    *v176 = 1;
    sub_1D151A5A8(v115, &v120[*(v175 + 20)], &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
    v121 = v162;
    sub_1D151A5A8(v118, v162, &qword_1EE05B520, MEMORY[0x1E6968130]);
    v122 = v119;
    if ((*(v116 + 48))(v121, 1, v119) == 1)
    {
      v174 = v117;
      sub_1D151A54C(v121, &qword_1EE05B520, MEMORY[0x1E6968130]);
      v123 = v155;
      sub_1D151A5A8(v115, v155, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
      v124 = v173;
      if ((*(v172 + 48))(v123, 1, v173) == 1)
      {
        sub_1D151A54C(v118, &qword_1EE05B520, MEMORY[0x1E6968130]);
        v125 = MEMORY[0x1E69A3D00];
        sub_1D151A54C(v115, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
        sub_1D151A54C(v123, &qword_1EE05B3E8, v125);
        v126 = v176;
        v127 = &v176[*(v175 + 24)];
        v128 = 1;
        v129 = v169;
      }

      else
      {
        v137 = v172;
        v138 = v154;
        (*(v172 + 32))(v154, v123, v124);
        v139 = *(v175 + 24);
        v140 = v153;
        sub_1D15A2C98();
        sub_1D15A2258();
        v141 = v140;
        v142 = v169;
        (*(v116 + 8))(v141, v169);
        sub_1D15A2278();
        v126 = v176;
        (*(v137 + 8))(v138, v173);
        sub_1D151A54C(v167, &qword_1EE05B520, MEMORY[0x1E6968130]);
        sub_1D151A54C(v166, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
        v127 = (v126 + v139);
        v128 = 0;
        v129 = v142;
      }

      (v177)(v127, v128, 1, v129);
    }

    else
    {
      sub_1D151A54C(v118, &qword_1EE05B520, MEMORY[0x1E6968130]);
      sub_1D151A54C(v115, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
      v131 = *(v116 + 32);
      v132 = v156;
      v133 = v121;
      v134 = v122;
      v131(v156, v133, v122);
      v135 = v176;
      v136 = *(v175 + 24);
      v131(&v176[v136], v132, v134);
      (v177)(&v135[v136], 0, 1, v134);
      v126 = v135;
    }

    v143 = v164;
    sub_1D151A614(v126, v164);
    v144 = type metadata accessor for TimeAsleepSnidgetViewModelExtractor.ViewModelComponents(0);
    v74 = v179;
    sub_1D1518DA8(v143, v179 + *(v144 + 28));

    v145 = v152;
    [v152 endOfSleepTimeIntervalSinceReferenceDate];
    v146 = HKDecodeDateForValue();
    sub_1D15A2668();

    sub_1D151A678(v143, type metadata accessor for TimeAsleepSnidgetViewModelExtractor.Metadata);
    sub_1D151A54C(v178, &qword_1EE05AAE0, MEMORY[0x1E6968848]);
    v72 = v150;
    goto LABEL_16;
  }

  sub_1D151A4F8();
  swift_allocError();
  *v130 = 1;
  swift_willThrow();

  sub_1D151A54C(v92, &qword_1EE05AAE0, MEMORY[0x1E6968848]);
}

unint64_t sub_1D151A4F8()
{
  result = qword_1EC630E08;
  if (!qword_1EC630E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630E08);
  }

  return result;
}

uint64_t sub_1D151A54C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D1518128(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D151A5A8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D1518128(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D151A614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeAsleepSnidgetViewModelExtractor.Metadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D151A678(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D151A710()
{
  sub_1D1518128(319, &qword_1EE05B3E8, MEMORY[0x1E69A3D00]);
  if (v0 <= 0x3F)
  {
    sub_1D1518128(319, &qword_1EE05B520, MEMORY[0x1E6968130]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D151A804()
{
  sub_1D15A2F28();
  if (v0 <= 0x3F)
  {
    sub_1D151A8D0();
    if (v1 <= 0x3F)
    {
      sub_1D151A98C();
      if (v2 <= 0x3F)
      {
        type metadata accessor for TimeAsleepSnidgetViewModelExtractor.Metadata(319);
        if (v3 <= 0x3F)
        {
          sub_1D15A26A8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D151A8D0()
{
  if (!qword_1EE059390)
  {
    sub_1D15A30F8();
    sub_1D151A934();
    v0 = sub_1D15A2EE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE059390);
    }
  }
}

unint64_t sub_1D151A934()
{
  result = qword_1EE059360;
  if (!qword_1EE059360)
  {
    sub_1D15A30F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE059360);
  }

  return result;
}

void sub_1D151A98C()
{
  if (!qword_1EE0567F0)
  {
    sub_1D1453BA0(255, &qword_1EE056710);
    v0 = sub_1D15A4118();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0567F0);
    }
  }
}

unint64_t sub_1D151AA08()
{
  result = qword_1EC630E10;
  if (!qword_1EC630E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630E10);
  }

  return result;
}

uint64_t Calendar.lastWeekday.getter()
{
  v0 = *(sub_1D15A2788() + 16);

  result = sub_1D15A2748();
  v2 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = __OFADD__(v2, v0 - 1);
  v4 = v2 + v0 - 1;
  if (v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v0)
  {
    return v4 % v0 + 1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t Calendar.Component.rawValue.getter()
{
  v1 = sub_1D15A2838();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1, v3);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x1E6969A50])
  {
    return 2;
  }

  if (v6 == *MEMORY[0x1E6969A68])
  {
    return 14;
  }

  if (v6 == *MEMORY[0x1E6969A78])
  {
    return 5;
  }

  if (v6 == *MEMORY[0x1E6969A48])
  {
    return 1;
  }

  if (v6 == *MEMORY[0x1E6969A58])
  {
    return 3;
  }

  if (v6 == *MEMORY[0x1E6969A88])
  {
    return 4;
  }

  if (v6 == *MEMORY[0x1E6969A98])
  {
    return 8;
  }

  if (v6 == *MEMORY[0x1E6969AB0])
  {
    return 10;
  }

  if (v6 == *MEMORY[0x1E6969A30])
  {
    return 11;
  }

  if (v6 == *MEMORY[0x1E6969AA8])
  {
    return 7;
  }

  if (v6 == *MEMORY[0x1E6969A20])
  {
    return 12;
  }

  if (v6 == *MEMORY[0x1E6969A10])
  {
    return 13;
  }

  if (v6 == *MEMORY[0x1E6969A38])
  {
    return 15;
  }

  if (v6 == *MEMORY[0x1E6969A00])
  {
    return 6;
  }

  if (v6 == *MEMORY[0x1E6969AB8])
  {
    return 0;
  }

  if (v6 == *MEMORY[0x1E6969AC0])
  {
    return 9;
  }

  if (v6 == *MEMORY[0x1E6969A18])
  {
    return 16;
  }

  if (v6 == *MEMORY[0x1E6969A28])
  {
    return 18;
  }

  if (v6 == *MEMORY[0x1E6969AC8])
  {
    return 17;
  }

  result = sub_1D15A4908();
  __break(1u);
  return result;
}

uint64_t Calendar.Component.init(rawValue:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D15A2838();
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >= 0x13)
  {
    v12 = *(v5 + 56);

    return v12(a2, 1, 1, v4, v6);
  }

  else
  {
    v9 = **(&unk_1E83E6BB8 + a1);
    v10 = *(v5 + 104);
    v14 = v5;
    v10(v8, v9, v4, v6);
    (*(v14 + 32))(a2, v8, v4);
    return (*(v14 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_1D151AF64@<X0>(uint64_t *a1@<X8>)
{
  result = Calendar.Component.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1D151B03C()
{
  result = qword_1EC630E18;
  if (!qword_1EC630E18)
  {
    sub_1D15A2838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630E18);
  }

  return result;
}

HealthVisualization::AudioExposureQueryConfiguration __swiftcall AudioExposureQueryConfiguration.init(statistics:)(HealthVisualization::AudioExposureQueryConfiguration statistics)
{
  v2 = *(*&statistics.statistics.dateRange + 8);
  v3 = *(*&statistics.statistics.dateRange + 16);
  *v1 = **&statistics.statistics.dateRange;
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return statistics;
}

uint64_t AudioExposureQueryConfiguration.statistics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t static AudioExposureQueryConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  v8 = *a2;
  v9 = *a1;

  if (sub_1D1477464(v9, v8) & 1) != 0 && (sub_1D1488F9C(v2, v5) & 1) != 0 && (sub_1D1477670(v3, v6))
  {
    v10 = sub_1D147783C(v4, v7);

    if (v10)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1D151B1BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6974736974617473 && a2 == 0xEA00000000007363)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D15A4BA8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D151B24C(uint64_t a1)
{
  v2 = sub_1D151B44C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D151B288(uint64_t a1)
{
  v2 = sub_1D151B44C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AudioExposureQueryConfiguration.encode(to:)(void *a1)
{
  sub_1D151B64C(0, &qword_1EE056318, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v15 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D151B44C();

  sub_1D15A4CE8();
  v12 = v7;
  v13 = v8;
  v14 = v9;
  sub_1D150C814();
  sub_1D15A4B38();

  return (*(v15 + 8))(v6, v4);
}

unint64_t sub_1D151B44C()
{
  result = qword_1EE05AFA8;
  if (!qword_1EE05AFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AFA8);
  }

  return result;
}

uint64_t AudioExposureQueryConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D151B64C(0, &qword_1EE05AC58, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D151B44C();
  sub_1D15A4CD8();
  if (!v2)
  {
    sub_1D150CBC0();
    sub_1D15A4A78();
    (*(v7 + 8))(v9, v6);
    v10 = v14;
    v11 = v15;
    *a2 = v13[8];
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D151B64C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D151B44C();
    v7 = a3(a1, &type metadata for AudioExposureQueryConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D151B6E0(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 8);
  v11[0] = *a1;
  v12 = v2;
  v13 = v3;
  v8[0] = v4;
  v9 = v5;
  v10 = v6;

  LOBYTE(v5) = _s19HealthVisualization28StatisticsQueryConfigurationV2eeoiySbAC_ACtFZ_0(v11, v8);

  return v5 & 1;
}

unint64_t sub_1D151B78C()
{
  result = qword_1EC630E20;
  if (!qword_1EC630E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630E20);
  }

  return result;
}

unint64_t sub_1D151B7E4()
{
  result = qword_1EE05AF98;
  if (!qword_1EE05AF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AF98);
  }

  return result;
}

unint64_t sub_1D151B83C()
{
  result = qword_1EE05AFA0;
  if (!qword_1EE05AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AFA0);
  }

  return result;
}

uint64_t sub_1D151B89C(uint64_t a1)
{
  v2 = sub_1D151BA7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D151B8D8(uint64_t a1)
{
  v2 = sub_1D151BA7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SampleCountQueryConfiguration.encode(to:)(void *a1)
{
  sub_1D151BA20();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D151BA7C();
  sub_1D15A4CE8();
  return (*(v4 + 8))(v6, v3);
}

void sub_1D151BA20()
{
  if (!qword_1EE056320)
  {
    sub_1D151BA7C();
    v0 = sub_1D15A4B48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056320);
    }
  }
}

unint64_t sub_1D151BA7C()
{
  result = qword_1EE058168[0];
  if (!qword_1EE058168[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE058168);
  }

  return result;
}

uint64_t sub_1D151BAF8(void *a1)
{
  sub_1D151BA20();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D151BA7C();
  sub_1D15A4CE8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D151BC28()
{
  result = qword_1EE058158;
  if (!qword_1EE058158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058158);
  }

  return result;
}

unint64_t sub_1D151BC80()
{
  result = qword_1EE058160;
  if (!qword_1EE058160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058160);
  }

  return result;
}

void sub_1D151BCD4(CGContext *a1, double *a2, _BYTE *a3, uint64_t *a4, double a5, double a6)
{
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  v13 = a2[6];
  v14 = a3[1];
  v43 = a3[3];
  v45 = a3[4];
  LODWORD(v15) = a3[5];
  v16 = a3[6];
  v53 = *a4;
  v62.x = sub_1D145664C();
  v51 = v9;
  v52 = v8;
  v61.a = v8;
  v61.b = v9;
  v61.c = v11;
  v61.d = v10;
  v61.tx = v12;
  v61.ty = v13;
  v62.y = 0.0;
  *&v17 = *&CGPointApplyAffineTransform(v62, &v61);
  if (*(v6 + 168))
  {
    v18 = 0.0;
  }

  else
  {
    v18 = *(v6 + 152);
  }

  if (v15 > 1)
  {
    v49 = 1;
  }

  else
  {
    v49 = sub_1D15A4BA8();
  }

  v15 = v15;

  c = a1;
  if (v16 && v16 != 1)
  {
    v46 = 1;
  }

  else
  {
    v46 = sub_1D15A4BA8();
  }

  v19 = flt_1D15B3C74[v15];
  LOBYTE(v61.a) = v14;
  DiagramConfiguration.TextAttributes.toTextAttributes()();
  path = CGPathCreateMutable();
  v20 = *(v53 + 16);
  if (!v20)
  {
LABEL_35:

    if (!CGPathIsEmpty(path))
    {
      CGContextSetBlendMode(c, kCGBlendModeNormal);
      CGContextSetLineCap(c, kCGLineCapRound);
      v40 = 2.0;
      if (v45)
      {
        v40 = 1.0;
      }

      CGContextSetLineWidth(c, v40);
      LOBYTE(v54.a) = v43;
      isa = DiagramConfiguration.Color.toColor()().super.isa;
      v42 = [(objc_class *)isa CGColor];

      CGContextSetStrokeColorWithColor(c, v42);
      CGContextAddPath(c, path);
      CGContextStrokePath(c);
    }

    return;
  }

  v21 = 0;
  v22 = -2.0;
  if (v45)
  {
    v22 = -1.0;
  }

  v23 = v19 + v22;
  if ((v19 + v22) < 0.0)
  {
    v23 = 0.0;
  }

  v48 = v17 - v18 - (v23 * 0.5) + -2.0;
  v24 = (v53 + 56);
  while (v21 < *(v53 + 16))
  {
    v28 = *(v24 - 2);
    v29 = *v24;
    *&v63.y = *(v24 - 1);
    v54.a = v52;
    v54.b = v51;
    v54.c = v11;
    v54.d = v10;
    v54.tx = v12;
    v54.ty = v13;
    v63.x = 0.0;
    y = CGPointApplyAffineTransform(v63, &v54).y;
    if (v29 >= 2)
    {
      if (v29 != 2)
      {
        goto LABEL_41;
      }

      if (v46)
      {
LABEL_26:

        if (!v28)
        {
          goto LABEL_19;
        }

        goto LABEL_30;
      }

      v61.b = 0.0;
      v61.c = 0.0;
      v61.a = 1.0;
      v61.d = 1.0;
      v61.tx = 0.0;
      v61.ty = 0.0;

      sub_1D15A43A8();
    }

    else
    {
      if (v49)
      {
        goto LABEL_26;
      }

      v56 = 0;
      v57 = 0;
      v55 = 0x3FF0000000000000;
      v58 = 0x3FF0000000000000;
      v59 = 0;
      v60 = 0;

      sub_1D15A43A8();
    }

    sub_1D15A43C8();
    if (!v28)
    {
      goto LABEL_19;
    }

LABEL_30:
    v31 = sub_1D15A3EF8();
    type metadata accessor for Key(0);
    sub_1D1458AD4(&qword_1EE05AD28, type metadata accessor for Key);
    v32 = sub_1D15A3E48();
    [v31 sizeWithAttributes_];
    v34 = v33;
    v36 = v35;

    v37 = v36 * 0.5;
    v38 = y - v36 * 0.5;
    v39 = y + v37;
    if (v38 >= 0.0)
    {
      v25 = 0.0;
      if (v39 <= a6)
      {
        goto LABEL_18;
      }
    }

    else if (v39 <= a6)
    {
      v25 = 0.0 - v38;
      goto LABEL_18;
    }

    v25 = a6 - v39;
LABEL_18:
    v26 = sub_1D15A3EF8();

    v27 = sub_1D15A3E48();
    [v26 drawAtPoint:v27 withAttributes:{v48 - v34, v38 + v25}];

LABEL_19:
    ++v21;
    v24 += 5;
    if (v20 == v21)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_41:
  sub_1D15A4908();
  __break(1u);
}

uint64_t DiagramAxis.deinit()
{

  return v0;
}

char *sub_1D151C2B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D1452A24(0, &qword_1EE059698, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
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

char *sub_1D151C3D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D1452A24(0, &qword_1EE05ABD8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

size_t sub_1D151C55C(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_1D14531D4(0, a5, a6, MEMORY[0x1E69E6F90]);
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

char *sub_1D151C750(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D1452A24(0, &qword_1EC630DF0, &type metadata for TimeBasedDistribution.Bucket, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D151C888(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D151E170(0, &qword_1EC630E40, &qword_1EC630E48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D151E2A0(0, &qword_1EC630E48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D151C9E0(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D14531D4(0, &qword_1EC630E38, sub_1D151E23C, MEMORY[0x1E69E6F90]);
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
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D151E23C();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D151CB40(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D1452A24(0, &qword_1EE059690, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D151CC5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D1452A24(0, &qword_1EE056268, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D151CD88(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D14531D4(0, &qword_1EE05ABE8, sub_1D144D748, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D144D748();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D151CED4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D14531D4(0, &qword_1EC630290, sub_1D148EE24, MEMORY[0x1E69E6F90]);
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

char *sub_1D151CFFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D1452A24(0, &qword_1EE056288, &type metadata for LevelView.DataConfiguration.Bucket, MEMORY[0x1E69E6F90]);
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
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1D151D124(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D14531D4(0, &qword_1EC630E28, sub_1D151E1C8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 48 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1D151D28C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D151E170(0, &qword_1EE056278, &qword_1EE0567C8);
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

void sub_1D151D404(double **a1, uint64_t a2, double *a3, int64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = *(a3 + 1);
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_98:
    v7 = v6;
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_137;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_100:
      v92 = v5;
      v93 = *(v9 + 2);
      if (v93 >= 2)
      {
        while (*v7)
        {
          v5 = v93 - 1;
          v94 = *&v9[16 * v93];
          v95 = *&v9[16 * v93 + 24];
          sub_1D151DBA0((*v7 + 40 * v94), (*v7 + 40 * *&v9[16 * v93 + 16]), *v7 + 40 * v95, v6);
          if (v92)
          {
            goto LABEL_108;
          }

          if (v95 < v94)
          {
            goto LABEL_124;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1D151DF58(v9);
          }

          if (v93 - 2 >= *(v9 + 2))
          {
            goto LABEL_125;
          }

          v96 = &v9[16 * v93];
          *v96 = v94;
          *(v96 + 1) = v95;
          sub_1D151DECC(v5);
          v93 = *(v9 + 2);
          if (v93 <= 1)
          {
            goto LABEL_108;
          }
        }

        goto LABEL_135;
      }

LABEL_108:

      return;
    }

LABEL_131:
    v9 = sub_1D151DF58(v9);
    goto LABEL_100;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v10 = v8++;
  if (v8 < v7)
  {
    v11 = *v6;
    v12 = *v6 + 40 * v8;
    v13 = *(v12 + 32);
    v101 = v10;
    v14 = *v6 + 40 * v10;
    v15 = *(v14 + 32);
    type metadata accessor for UILayoutPriority(0);
    v98 = v5;
    if (v13 == v15)
    {
      v16 = *(v12 + 16) < *(v14 + 16);
    }

    else
    {
      sub_1D1458AD4(&qword_1EE056728, type metadata accessor for UILayoutPriority);
      v16 = sub_1D15A3EA8();
    }

    v17 = 0;
    v18 = v101 + 2;
    v19 = (*&v11 + 40 * v101 + 112);
    do
    {
      v6 = v18;
      v21 = v8;
      v5 = v17;
      if (v18 >= v7)
      {
        break;
      }

      if (*v19 == *(v19 - 10))
      {
        v20 = *(v19 - 2) < *(v19 - 7);
      }

      else
      {
        sub_1D1458AD4(&qword_1EE056728, type metadata accessor for UILayoutPriority);
        v20 = sub_1D15A3EA8();
      }

      v18 = v6 + 1;
      v19 += 10;
      ++v8;
      v17 = v5 + 40;
    }

    while ((v16 & 1) == (v20 & 1));
    if (v16)
    {
      v10 = v101;
      if (v6 < v101)
      {
        goto LABEL_128;
      }

      if (v101 < v6)
      {
        v22 = 0;
        v23 = v101;
        do
        {
          if (v23 != v21)
          {
            if (!*a3)
            {
              goto LABEL_134;
            }

            v24 = *a3 + 40 * v101;
            v25 = (v24 + v22);
            v26 = *(v24 + v22 + 16);
            v27 = v24 + v5;
            v28 = *(v25 + 3);
            v29 = *(v25 + 8);
            v30 = *v25;
            v31 = *(v27 + 72);
            v32 = *(v27 + 56);
            *v25 = *(v27 + 40);
            v25[1] = v32;
            *(v25 + 4) = v31;
            *(v27 + 40) = v30;
            *(v27 + 56) = v26;
            *(v27 + 64) = v28;
            *(v27 + 72) = v29;
          }

          ++v23;
          v5 -= 40;
          v22 += 40;
        }

        while (v23 < v21--);
      }

      v8 = v6;
      v5 = v98;
      v6 = a3;
    }

    else
    {
      v8 = v6;
      v5 = v98;
      v10 = v101;
      v6 = a3;
    }
  }

  v34 = *(v6 + 1);
  if (v8 >= v34)
  {
    goto LABEL_47;
  }

  if (__OFSUB__(v8, v10))
  {
    goto LABEL_127;
  }

  if (v8 - v10 >= a4)
  {
    goto LABEL_47;
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_129;
  }

  if (v10 + a4 >= v34)
  {
    v35 = *(v6 + 1);
  }

  else
  {
    v35 = v10 + a4;
  }

  if (v35 < v10)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  if (v8 == v35)
  {
    goto LABEL_47;
  }

  v99 = v5;
  v36 = *v6;
  v37 = *&v36 + 40 * v8 - 40;
  v102 = v10;
  v38 = v10 - v8;
LABEL_37:
  v7 = v38;
  v39 = v37;
  while (1)
  {
    if (*(v39 + 72) == *(v39 + 32))
    {
      if (*(v39 + 56) >= *(v39 + 16))
      {
        goto LABEL_36;
      }
    }

    else
    {
      type metadata accessor for UILayoutPriority(0);
      sub_1D1458AD4(&qword_1EE056728, type metadata accessor for UILayoutPriority);
      if ((sub_1D15A3EA8() & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    if (v36 == 0.0)
    {
      break;
    }

    v40 = *(v39 + 56);
    v41 = *(v39 + 64);
    v42 = *(v39 + 40);
    v43 = *(v39 + 16);
    *(v39 + 40) = *v39;
    v44 = *(v39 + 72);
    *(v39 + 56) = v43;
    *(v39 + 72) = *(v39 + 32);
    *v39 = v42;
    *(v39 + 16) = v40;
    *(v39 + 24) = v41;
    *(v39 + 32) = v44;
    v39 -= 40;
    if (__CFADD__(v7++, 1))
    {
LABEL_36:
      ++v8;
      v37 += 40;
      --v38;
      if (v8 != v35)
      {
        goto LABEL_37;
      }

      v8 = v35;
      v5 = v99;
      v10 = v102;
      v6 = a3;
LABEL_47:
      if (v8 < v10)
      {
        goto LABEL_126;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1D148B89C(0, *(v9 + 2) + 1, 1, v9);
      }

      v47 = *(v9 + 2);
      v46 = *(v9 + 3);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        v9 = sub_1D148B89C((v46 > 1), v47 + 1, 1, v9);
      }

      *(v9 + 2) = v48;
      v49 = &v9[16 * v47];
      *(v49 + 4) = v10;
      *(v49 + 5) = v8;
      v50 = *a1;
      if (!*a1)
      {
        goto LABEL_136;
      }

      if (v47)
      {
        while (1)
        {
          v7 = v48 - 1;
          if (v48 >= 4)
          {
            break;
          }

          if (v48 == 3)
          {
            v51 = *(v9 + 4);
            v52 = *(v9 + 5);
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_67:
            if (v54)
            {
              goto LABEL_115;
            }

            v67 = &v9[16 * v48];
            v69 = *v67;
            v68 = *(v67 + 1);
            v70 = __OFSUB__(v68, v69);
            v71 = v68 - v69;
            v72 = v70;
            if (v70)
            {
              goto LABEL_118;
            }

            v73 = &v9[16 * v7 + 32];
            v75 = *v73;
            v74 = *(v73 + 1);
            v61 = __OFSUB__(v74, v75);
            v76 = v74 - v75;
            if (v61)
            {
              goto LABEL_121;
            }

            if (__OFADD__(v71, v76))
            {
              goto LABEL_122;
            }

            if (v71 + v76 >= v53)
            {
              if (v53 < v76)
              {
                v7 = v48 - 2;
              }

              goto LABEL_88;
            }

            goto LABEL_81;
          }

          v77 = &v9[16 * v48];
          v79 = *v77;
          v78 = *(v77 + 1);
          v61 = __OFSUB__(v78, v79);
          v71 = v78 - v79;
          v72 = v61;
LABEL_81:
          if (v72)
          {
            goto LABEL_117;
          }

          v80 = &v9[16 * v7];
          v82 = *(v80 + 4);
          v81 = *(v80 + 5);
          v61 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v61)
          {
            goto LABEL_120;
          }

          if (v83 < v71)
          {
            goto LABEL_3;
          }

LABEL_88:
          v88 = v7 - 1;
          if (v7 - 1 >= v48)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
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
LABEL_129:
            __break(1u);
            goto LABEL_130;
          }

          if (!*v6)
          {
            goto LABEL_133;
          }

          v89 = *&v9[16 * v88 + 32];
          v90 = *&v9[16 * v7 + 40];
          sub_1D151DBA0((*v6 + 40 * v89), (*v6 + 40 * *&v9[16 * v7 + 32]), *v6 + 40 * v90, v50);
          if (v5)
          {
            goto LABEL_108;
          }

          if (v90 < v89)
          {
            goto LABEL_111;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1D151DF58(v9);
          }

          if (v88 >= *(v9 + 2))
          {
            goto LABEL_112;
          }

          v91 = &v9[16 * v88];
          *(v91 + 4) = v89;
          *(v91 + 5) = v90;
          sub_1D151DECC(v7);
          v48 = *(v9 + 2);
          if (v48 <= 1)
          {
            goto LABEL_3;
          }
        }

        v55 = &v9[16 * v48 + 32];
        v56 = *(v55 - 64);
        v57 = *(v55 - 56);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_113;
        }

        v60 = *(v55 - 48);
        v59 = *(v55 - 40);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_114;
        }

        v62 = &v9[16 * v48];
        v64 = *v62;
        v63 = *(v62 + 1);
        v61 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v61)
        {
          goto LABEL_116;
        }

        v61 = __OFADD__(v53, v65);
        v66 = v53 + v65;
        if (v61)
        {
          goto LABEL_119;
        }

        if (v66 >= v58)
        {
          v84 = &v9[16 * v7 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v61 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v61)
          {
            goto LABEL_123;
          }

          if (v53 < v87)
          {
            v7 = v48 - 2;
          }

          goto LABEL_88;
        }

        goto LABEL_67;
      }

LABEL_3:
      v7 = *(v6 + 1);
      if (v8 >= v7)
      {
        goto LABEL_98;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
}

uint64_t sub_1D151DBA0(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 >= v11)
  {
    v18 = 5 * v11;
    if (a4 != __src || &__src[v18] <= a4)
    {
      memmove(a4, __src, 40 * v11);
    }

    v13 = &v4[v18];
    if (v10 >= 40 && v6 > v7)
    {
LABEL_23:
      v19 = v5;
      do
      {
        if (*(v13 - 2) == *(v6 - 2))
        {
          v5 = (v19 - 5);
          if (*(v13 - 3) < *(v6 - 3))
          {
            goto LABEL_31;
          }
        }

        else
        {
          type metadata accessor for UILayoutPriority(0);
          sub_1D1458AD4(&qword_1EE056728, type metadata accessor for UILayoutPriority);
          v5 = (v19 - 5);
          if (sub_1D15A3EA8())
          {
LABEL_31:
            v23 = v6 - 5;
            if (v19 != v6)
            {
              v24 = *v23;
              v25 = *(v6 - 3);
              *(v5 + 32) = *(v6 - 1);
              *v5 = v24;
              *(v5 + 16) = v25;
            }

            if (v13 <= v4 || (v6 -= 5, v23 <= v7))
            {
              v6 = v23;
              goto LABEL_37;
            }

            goto LABEL_23;
          }
        }

        v20 = v13 - 40;
        if (v13 != v19)
        {
          v21 = *v20;
          v22 = *(v13 - 24);
          *(v5 + 32) = *(v13 - 1);
          *v5 = v21;
          *(v5 + 16) = v22;
        }

        v13 -= 40;
        v19 = v5;
      }

      while (v20 > v4);
      v13 = v20;
    }
  }

  else
  {
    v12 = 5 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 8);
    }

    v13 = &v4[v12];
    if (v8 >= 40 && v6 < v5)
    {
      do
      {
        if (*(v6 + 8) == *(v4 + 8))
        {
          if (v6[2] >= v4[2])
          {
            goto LABEL_13;
          }
        }

        else
        {
          type metadata accessor for UILayoutPriority(0);
          sub_1D1458AD4(&qword_1EE056728, type metadata accessor for UILayoutPriority);
          if ((sub_1D15A3EA8() & 1) == 0)
          {
LABEL_13:
            v14 = v4;
            v15 = v7 == v4;
            v4 += 5;
            if (v15)
            {
              goto LABEL_15;
            }

LABEL_14:
            v16 = *v14;
            v17 = *(v14 + 1);
            v7[4] = v14[4];
            *v7 = v16;
            *(v7 + 1) = v17;
            goto LABEL_15;
          }
        }

        v14 = v6;
        v15 = v7 == v6;
        v6 += 5;
        if (!v15)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 5;
      }

      while (v4 < v13 && v6 < v5);
    }

    v6 = v7;
  }

LABEL_37:
  v26 = 5 * ((v13 - v4) / 40);
  if (v6 != v4 || v6 >= &v4[v26])
  {
    memmove(v6, v4, v26 * 8);
  }

  return 1;
}

uint64_t sub_1D151DECC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D151DF58(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1D151DF6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D14531D4(0, &qword_1EC630290, sub_1D148EE24, MEMORY[0x1E69E6F90]);
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

void sub_1D151E0D0()
{
  if (!qword_1EE059590)
  {
    sub_1D15A22A8();
    sub_1D14531D4(255, qword_1EE0588E8, type metadata accessor for SignificantChangeEngine.Changepoint, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE059590);
    }
  }
}

void sub_1D151E170(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D151E2A0(255, a3);
    v4 = sub_1D15A4B78();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D151E1C8()
{
  if (!qword_1EC630E30)
  {
    type metadata accessor for CGRect(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC630E30);
    }
  }
}

unint64_t sub_1D151E23C()
{
  result = qword_1EC630588;
  if (!qword_1EC630588)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC630588);
  }

  return result;
}

void sub_1D151E2A0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t StatisticsCollectionQueryOperation.__allocating_init(sampleType:configuration:configurationOverrides:name:queryQualityOfService:healthStore:environment:resultHandler:)(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, char *a7, char a8, unsigned int (*a9)(uint64_t, uint64_t, uint64_t), unsigned int (*a10)(void, void, void))
{
  v18 = objc_allocWithZone(v10);
  v19 = sub_1D151F094(a1, a2, a3, a4, a5, a6, a7, a8 & 1, a9, a10);

  return v19;
}

uint64_t sub_1D151E3AC@<X0>(uint64_t a1@<X8>)
{

  sub_1D15A2D28();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1D151E40C()
{

  sub_1D15A2D38();
}

uint64_t sub_1D151E47C()
{

  sub_1D15A2D28();

  return v1;
}

uint64_t StatisticsCollectionQueryOperation.init(sampleType:configuration:configurationOverrides:name:queryQualityOfService:healthStore:environment:resultHandler:)(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, char *a7, char a8, unsigned int (*a9)(uint64_t, uint64_t, uint64_t), unsigned int (*a10)(void, void, void))
{
  v12 = sub_1D151F094(a1, a2, a3, a4, a5, a6, a7, a8 & 1, a9, a10);

  return v12;
}

void sub_1D151E538(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D15A4468();
  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  sub_1D1487C24();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D15ACDD0;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1D1487C8C();
  *(v10 + 32) = a5;
  *(v10 + 40) = a6;

  sub_1D15A31A8();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if ([v12 isCancelled])
    {

LABEL_7:
      v14._countAndFlagsBits = 0xD00000000000002DLL;
      v14._object = 0x80000001D15BDC90;
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v14, v15);

      return;
    }

    v13 = [v12 isFinished];

    if (v13)
    {
      goto LABEL_7;
    }

    v16 = a2;
    if (!a2)
    {
      if (a3)
      {
        v17 = 0xD000000000000029;
      }

      else
      {
        v17 = 0;
      }

      if (a3)
      {
        v18 = 0x80000001D15C11D0;
      }

      else
      {
        v18 = 0;
      }

      if (a3)
      {
        v19 = a3 | 0x8000000000000000;
      }

      else
      {
        v19 = 0xC000000000000000;
      }

      sub_1D1487F34();
      v20 = swift_allocError();
      *v21 = v17;
      v21[1] = v18;
      v21[2] = v19;
      swift_getErrorValue();
      v22 = a3;
      sub_1D1487F88(v17, v18, v19);
      v23._countAndFlagsBits = sub_1D15A4C08();
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      NSOperation.logErrorString(_:withInfo:)(v23, v24);

      v16 = swift_allocError();
      *v25 = v17;
      v25[1] = v18;
      v25[2] = v19;
    }

    v26 = *&v12[qword_1EE0682D0];
    v27 = a2;
    if (v26)
    {
      sub_1D15210D8(v26);
      v26(v16, a2 == 0);
      v27 = sub_1D150F270(v26);
    }

    MEMORY[0x1EEE9AC00](v27);
    sub_1D15A2DA8();

    sub_1D14A8208(v16);
  }
}

uint64_t sub_1D151E8A4(uint64_t a1)
{

  sub_1D15A2D38();

  v2 = [*(a1 + qword_1EE05AF18) identifier];
  v3 = sub_1D15A3F38();
  v5 = v4;

  v6._countAndFlagsBits = 0x64656873696E6966;
  v6._object = 0xE800000000000000;
  v7._countAndFlagsBits = v3;
  v7._object = v5;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v6, v7);
}

uint64_t sub_1D151E978()
{
  v1 = v0;
  v2 = sub_1D15A31D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D1487B04();
  v6 = swift_allocError();
  *v7 = 2;
  v24 = v6;
  v25 = 1;

  sub_1D15A2D38();

  v8 = *&v0[qword_1EE05AF18];
  v9 = [v8 identifier];
  v10 = sub_1D15A3F38();
  v12 = v11;

  v13._countAndFlagsBits = 0x676E696E6E7572;
  v13._object = 0xE700000000000000;
  v14._countAndFlagsBits = v10;
  v14._object = v12;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v13, v14);

  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE05B398;
  v16 = v1;
  sub_1D15A31C8();
  sub_1D15A4478();
  sub_1D1487C24();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D15ACDD0;
  v18 = [v8 identifier];
  v19 = sub_1D15A3F38();
  v21 = v20;

  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = sub_1D1487C8C();
  *(v17 + 32) = v19;
  *(v17 + 40) = v21;
  sub_1D15A31A8();

  [*&v16[qword_1EE0682D8] executeQuery_];
  return (*(v3 + 8))(v5, v2);
}

void sub_1D151EC64(void *a1)
{
  v1 = a1;
  sub_1D151E978();
}

id sub_1D151ECAC()
{
  if ([v0 isCancelled])
  {
    v1._countAndFlagsBits = 0x656C6C65636E6163;
    v1._object = 0xE900000000000064;
    v2._countAndFlagsBits = 0;
    v2._object = 0xE000000000000000;
    NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v1, v2);
    sub_1D1487B04();
    v3 = swift_allocError();
    *v4 = 3;
    MEMORY[0x1EEE9AC00](v3);

    sub_1D15A2D38();
  }

  v5 = &v0[qword_1EE0682D0];
  v6 = *&v0[qword_1EE0682D0];
  *v5 = 0;
  *(v5 + 1) = 0;
  sub_1D150F270(v6);
  return [*&v0[qword_1EE0682D8] stopQuery_];
}

id StatisticsCollectionQueryOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D151EE88()
{

  sub_1D1520EC0(v0 + qword_1EE0682C8, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);

  v1 = *(v0 + qword_1EE0682D0);

  return sub_1D150F270(v1);
}

id StatisticsCollectionQueryOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StatisticsCollectionQueryOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D151EF74(uint64_t a1)
{

  sub_1D1520EC0(a1 + qword_1EE0682C8, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);

  v2 = *(a1 + qword_1EE0682D0);

  return sub_1D150F270(v2);
}

uint64_t sub_1D151F034@<X0>(uint64_t a1@<X8>)
{

  sub_1D15A2D28();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1D151F094(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, char *a7, int a8, unsigned int (*a9)(uint64_t, uint64_t, uint64_t), unsigned int (*a10)(void, void, void))
{
  v11 = v10;
  v198 = a8;
  v234 = a7;
  v217 = a6;
  v220 = a5;
  v225 = a4;
  v239 = a3;
  v214 = a1;
  v226 = a10;
  v221 = a9;
  ObjectType = swift_getObjectType();
  v211 = sub_1D15A31D8();
  v210 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v209 = &v191 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v228 = &v191 - v15;
  ConfigurationOverrides = type metadata accessor for StatisticsQueryConfigurationOverrides();
  v17 = *(ConfigurationOverrides - 1);
  v237 = ConfigurationOverrides;
  object = v17;
  MEMORY[0x1EEE9AC00](ConfigurationOverrides);
  v194 = &v191 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_1D15A3268();
  v200 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v204 = &v191 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D15A23A8();
  v230 = *(v20 - 8);
  v231 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v233 = &v191 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1E69E6720];
  sub_1D1520DC4(0, &qword_1EE05B520, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v219 = &v191 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v218 = &v191 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v236 = &v191 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v193 = &v191 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v192 = &v191 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v206 = &v191 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v205 = &v191 - v36;
  v227 = sub_1D15A22A8();
  v235 = *(v227 - 8);
  MEMORY[0x1EEE9AC00](v227);
  v203 = &v191 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v199 = &v191 - v39;
  v213 = type metadata accessor for StatisticsQueryConfigurationOverrides;
  sub_1D1520DC4(0, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides, v22);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v207 = &v191 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v197 = &v191 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v195 = &v191 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v212 = &v191 - v47;
  v223 = sub_1D15A26A8();
  v222 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v229 = &v191 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v202 = &v191 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v191 - v52;
  v54 = *a2;
  v55 = *(a2 + 1);
  v56 = a2[16];
  v57 = a2[17];
  v58 = qword_1EE05AF08;
  sub_1D1487B04();
  v59 = swift_allocError();
  *v60 = 0;
  aBlock = v59;
  LOBYTE(v241) = 1;
  sub_1D1520DC4(0, &qword_1EE05B3D0, sub_1D1520E30, MEMORY[0x1E69A3DC0]);
  swift_allocObject();
  *&v11[v58] = sub_1D15A2D68();
  v61 = &v11[qword_1EE0682D0];
  *v61 = 0;
  *(v61 + 1) = 0;
  v62 = v214;
  *&v11[qword_1EE05AF18] = v214;
  v63 = &v11[qword_1EE05AF10];
  v224 = v54;
  *v63 = v54;
  *(v63 + 1) = v55;
  v215 = v56;
  v63[16] = v56;
  LODWORD(v216) = v57;
  v63[17] = v57;
  v64 = v239;
  v65 = v213;
  sub_1D1520F30(v239, &v11[qword_1EE0682C8], &qword_1EE05AEE0, v213);
  v232 = v11;
  v66 = v234;
  *&v11[qword_1EE0682D8] = v234;
  v67 = v226;
  *v61 = v221;
  *(v61 + 1) = v67;
  v214 = v62;
  v68 = v55;

  v69 = v66;
  v70 = v235;

  v234 = v53;
  _s19HealthVisualization25PresentationDateProvidingPAAE012presentationD010Foundation0D0VvgZ_0();
  v71 = v212;
  sub_1D1520F30(v64, v212, &qword_1EE05AEE0, v65);
  v72 = object[6];
  object += 6;
  v226 = v72;
  if (v72(v71, 1, v237) == 1)
  {
    v73 = v227;
    sub_1D1520EC0(v71, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);
    v74 = v55;
    goto LABEL_3;
  }

  v80 = v205;
  sub_1D1520F30(v71, v205, &qword_1EE05B520, MEMORY[0x1E6968130]);
  v73 = v227;
  v221 = *(v70 + 48);
  if (v221(v80, 1, v227) == 1)
  {
    sub_1D1520EC0(v80, &qword_1EE05B520, MEMORY[0x1E6968130]);
    v81 = *(v71 + v237[5]);
    v74 = v55;
    if (!v81)
    {
      sub_1D14E2558(v71);
LABEL_3:
      v75 = v206;
      DateRange.dateInterval(endingAt:)(v234, v224, v206);
      v76 = v73;
      v221 = *(v70 + 48);
      if (v221(v75, 1, v73) == 1)
      {
        sub_1D1520EC0(v75, &qword_1EE05B520, MEMORY[0x1E6968130]);
        v77 = 0;
        v78 = *(v74 + 16);
        if (!v78)
        {
LABEL_5:
          v79 = 0;
          goto LABEL_43;
        }
      }

      else
      {
        v82 = v203;
        (*(v70 + 32))(v203, v75, v227);
        v213 = objc_opt_self();
        v83 = v202;
        sub_1D15A2288();
        v84 = sub_1D15A2618();
        v85 = *(v222 + 8);
        v86 = v223;
        v85(v83, v223);
        sub_1D15A2258();
        v87 = sub_1D15A2618();
        v85(v83, v86);
        v77 = [v213 predicateForSamplesWithStartDate:v84 endDate:v87 options:0];

        v88 = v82;
        v76 = v227;
        (*(v235 + 8))(v88, v227);
        v78 = *(v74 + 16);
        if (!v78)
        {
          goto LABEL_5;
        }
      }

      goto LABEL_11;
    }

    v77 = v81;
    sub_1D14E2558(v71);
    v76 = v73;
    v78 = *(v55 + 16);
    if (!v78)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v94 = v199;
    (*(v70 + 32))(v199, v80, v73);
    v95 = objc_opt_self();
    v96 = sub_1D15A2228();
    v77 = [v95 predicateForSamplesWithinDateInterval:v96 options:0];

    v97 = v94;
    v98 = v73;
    (*(v70 + 8))(v97, v73);
    v99 = *(v71 + v237[5]);
    v74 = v68;
    if (v99)
    {
      sub_1D1496034();
      v100 = swift_allocObject();
      *(v100 + 16) = xmmword_1D15B1320;
      *(v100 + 32) = v77;
      *(v100 + 40) = v99;
      sub_1D1453BA0(0, &qword_1EE056788);
      v101 = v99;
      v102 = v77;
      v103 = sub_1D15A40A8();

      v77 = [objc_opt_self() andPredicateWithSubpredicates_];
    }

    sub_1D14E2558(v71);
    v76 = v98;
    v78 = *(v74 + 16);
    if (!v78)
    {
      goto LABEL_5;
    }
  }

LABEL_11:

  v79 = 0;
  v89 = 32;
  do
  {
    v90 = *(v74 + v89);
    if (v90 > 4)
    {
      if (*(v74 + v89) > 6u)
      {
        if (v90 == 7)
        {
          v91 = _HKStatisticsOptionPresence();
          goto LABEL_40;
        }

        if (v90 == 8)
        {
          v91 = _HKStatisticsOptionBaselineRelativeQuantities();
          goto LABEL_40;
        }

        v92 = _HKStatisticsOptionAttenuateSamples();
        if ((v92 & 0xFFFFFFFFFFFFFFFDLL) != 0)
        {
          v91 = v92 | 2;
          goto LABEL_40;
        }

LABEL_37:
        if ((v79 & 2) == 0)
        {
          v91 = 2;
          goto LABEL_12;
        }

        goto LABEL_13;
      }

      if (v90 != 5)
      {
        v91 = _HKStatisticOptionsAverageSampleDuration();
LABEL_40:
        if ((v91 & ~v79) != 0)
        {
          goto LABEL_12;
        }

        goto LABEL_13;
      }

      if ((v79 & 0x40) == 0)
      {
        v91 = 64;
        goto LABEL_12;
      }
    }

    else if (*(v74 + v89) <= 1u)
    {
      if (!*(v74 + v89))
      {
        goto LABEL_37;
      }

      if ((v79 & 4) == 0)
      {
        v91 = 4;
        goto LABEL_12;
      }
    }

    else if (v90 == 2)
    {
      if ((v79 & 8) == 0)
      {
        v91 = 8;
        goto LABEL_12;
      }
    }

    else if (v90 == 3)
    {
      if ((v79 & 0x10) == 0)
      {
        v91 = 16;
LABEL_12:
        v79 |= v91;
      }
    }

    else if ((v79 & 0x20) == 0)
    {
      v91 = 32;
      goto LABEL_12;
    }

LABEL_13:
    ++v89;
    --v78;
  }

  while (v78);

LABEL_43:
  LOBYTE(aBlock) = v215;
  AnchorDate.date.getter();
  if (v216 <= 1)
  {
    if (v216)
    {
      if (qword_1EE05B410 != -1)
      {
        swift_once();
      }

      v93 = qword_1EE05B418;
    }

    else
    {
      if (qword_1EE059550 != -1)
      {
        swift_once();
      }

      v93 = qword_1EE059558;
    }
  }

  else if (v216 == 2)
  {
    if (qword_1EE059530 != -1)
    {
      swift_once();
    }

    v93 = qword_1EE059538;
  }

  else if (v216 == 3)
  {
    if (qword_1EE0594F0 != -1)
    {
      swift_once();
    }

    v93 = qword_1EE0594F8;
  }

  else
  {
    if (qword_1EE059510 != -1)
    {
      swift_once();
    }

    v93 = qword_1EE059518;
  }

  v104 = v231;
  v105 = __swift_project_value_buffer(v231, v93);
  (*(v230 + 16))(v233, v105, v104);
  v106 = objc_allocWithZone(MEMORY[0x1E696C4D8]);
  v107 = v214;
  v108 = v77;
  v109 = sub_1D15A2618();
  v110 = sub_1D15A22F8();
  v111 = [v106 initWithSampleType:v107 samplePredicate:v108 options:v79 anchorDate:v109 intervalComponents:v110];

  v216 = v108;
  v112 = qword_1EE0682C0;
  v113 = v232;
  *&v232[qword_1EE0682C0] = v111;
  v114 = v220;
  if (v220)
  {
    v115 = v111;

    v116 = sub_1D15A3EF8();
  }

  else
  {
    v117 = v111;
    v116 = 0;
  }

  v118 = v237;
  [v111 setDebugIdentifier_];

  [*&v113[v112] setQualityOfService_];
  if (![objc_opt_self() isAppleInternalInstall])
  {
    goto LABEL_94;
  }

  sub_1D1453BA0(0, &qword_1EE056748);
  v119 = sub_1D15A4368();
  v120 = sub_1D15A3EF8();
  v121 = [v119 BOOLForKey_];

  if (!v121)
  {
    goto LABEL_94;
  }

  v122 = v204;
  sub_1D15A31E8();
  v123 = sub_1D15A3248();
  v124 = sub_1D15A4338();
  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    aBlock = v126;
    *v125 = 136446210;
    v127 = sub_1D15A4D18();
    v129 = v76;
    v130 = sub_1D1479780(v127, v128, &aBlock);

    *(v125 + 4) = v130;
    v76 = v129;
    v114 = v220;
    v131 = v237;
    _os_log_impl(&dword_1D1446000, v123, v124, "[%{public}s] Manually enabling query caching due to override", v125, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v126);
    v132 = v126;
    v118 = v131;
    MEMORY[0x1D388BF00](v132, -1, -1);
    MEMORY[0x1D388BF00](v125, -1, -1);

    (*(v200 + 8))(v204, v201);
  }

  else
  {

    (*(v200 + 8))(v122, v201);
  }

  if (v226(v239, 1, v118) == 1)
  {
LABEL_77:
    aBlock = 0;
    v241 = 0xE000000000000000;
    if (v114)
    {
      v136 = v225;
    }

    else
    {
      v136 = 0xD000000000000022;
    }

    if (v114)
    {
      v137 = v114;
    }

    else
    {
      v137 = 0x80000001D15B3C70;
    }

    MEMORY[0x1D388A330](v136, v137);

    MEMORY[0x1D388A330](45, 0xE100000000000000);
    v138 = [v107 identifier];
    v139 = sub_1D15A3F38();
    v141 = v140;

    MEMORY[0x1D388A330](v139, v141);

    MEMORY[0x1D388A330](45, 0xE100000000000000);
    countAndFlagsBits = DateComponents.stringWithNonLocalizedAbbreviatedFormat()()._countAndFlagsBits;
    MEMORY[0x1D388A330](countAndFlagsBits);

    v143 = ~sub_1D15A2CF8();
    v144 = v232;
    v145 = *&v232[v112];
    v146 = objc_allocWithZone(MEMORY[0x1E696C4D0]);
    v147 = v145;
    v148 = sub_1D15A3EF8();

    v149 = [v146 initWithIdentifier:v148 mode:v143 & 1];

    [v147 setCacheSettings_];
    v150 = v197;
    sub_1D1520F30(v239, v197, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);
    if (v226(v150, 1, v237) == 1)
    {
      sub_1D1520EC0(v150, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);
      v151 = *&v144[v112];
      v152 = v192;
      DateRange.dateInterval(endingAt:)(v234, v224, v192);
      v153 = v235;
      if (v221(v152, 1, v76) == 1)
      {
        v154 = 0;
      }

      else
      {
        v154 = sub_1D15A2228();
        (*(v153 + 8))(v152, v76);
      }

      [v151 setDateInterval_];
    }

    else
    {
      v155 = v194;
      sub_1D1521074(v150, v194);
      v156 = *&v144[v112];
      v157 = v193;
      sub_1D1520F30(v155, v193, &qword_1EE05B520, MEMORY[0x1E6968130]);
      v158 = v235;
      v159 = v221(v157, 1, v76);
      v160 = v156;
      if (v159 == 1)
      {
        v161 = 0;
      }

      else
      {
        v161 = sub_1D15A2228();
        (*(v158 + 8))(v157, v76);
      }

      [v160 setDateInterval_];

      sub_1D14E2558(v155);
    }

    v118 = v237;
    goto LABEL_94;
  }

  v133 = v195;
  sub_1D1520F30(v239, v195, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);
  result = (v226)(v133, 1, v118);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v135 = *(v133 + v118[6]);
    sub_1D14E2558(v133);
    if (v135 == 1)
    {
      goto LABEL_77;
    }

LABEL_94:
    Operation = type metadata accessor for StatisticsCollectionQueryOperation();
    v246.receiver = v232;
    v246.super_class = Operation;
    v163 = objc_msgSendSuper2(&v246, sel_init);
    v164 = v163;
    if (v114)
    {
      v165 = sub_1D15A3EF8();
    }

    else
    {
      v165 = 0;
    }

    v166 = v235;
    v167 = v221;
    [v163 setName_];

    v168 = v207;
    sub_1D1520F30(v239, v207, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);
    if (v226(v168, 1, v118) == 1)
    {
      sub_1D1520EC0(v168, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);
      v169 = v218;
      (*(v166 + 56))(v218, 1, 1, v76);
LABEL_100:
      DateRange.dateInterval(endingAt:)(v234, v224, v236);

      if (v167(v169, 1, v76) != 1)
      {
        sub_1D1520EC0(v169, &qword_1EE05B520, MEMORY[0x1E6968130]);
      }
    }

    else
    {
      v169 = v218;
      sub_1D1520F30(v168, v218, &qword_1EE05B520, MEMORY[0x1E6968130]);
      sub_1D14E2558(v168);
      if (v167(v169, 1, v76) == 1)
      {
        goto LABEL_100;
      }

      v170 = v236;
      (*(v166 + 32))(v236, v169, v76);
      (*(v166 + 56))(v170, 0, 1, v76);
    }

    v171 = v219;
    sub_1D1520F30(v236, v219, &qword_1EE05B520, MEMORY[0x1E6968130]);
    if (v167(v171, 1, v76) == 1)
    {
      sub_1D1520EC0(v171, &qword_1EE05B520, MEMORY[0x1E6968130]);
      object = 0xE600000000000000;
      v172 = 0x3E656E6F6E3CLL;
    }

    else
    {
      v173 = DateInterval.stringWithISO8601Format()();
      v172 = v173._countAndFlagsBits;
      object = v173._object;
      (*(v166 + 8))(v171, v76);
    }

    if (qword_1EE05B390 != -1)
    {
      swift_once();
    }

    v174 = qword_1EE05B398;
    v175 = v163;
    v176 = v174;
    v177 = v228;
    sub_1D15A31C8();
    v237 = *&v175[qword_1EE0682C0];
    v178 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v179 = v210;
    v180 = v209;
    v181 = v211;
    (*(v210 + 16))(v209, v177, v211);
    v182 = (*(v179 + 80) + 16) & ~*(v179 + 80);
    v183 = (v208 + v182 + 7) & 0xFFFFFFFFFFFFFFF8;
    v184 = swift_allocObject();
    (*(v179 + 32))(v184 + v182, v180, v181);
    v185 = (v184 + v183);
    v186 = object;
    *v185 = v172;
    v185[1] = v186;
    *(v184 + ((v183 + 23) & 0xFFFFFFFFFFFFFFF8)) = v178;
    v244 = sub_1D1520FB0;
    v245 = v184;
    aBlock = MEMORY[0x1E69E9820];
    v241 = 1107296256;
    v242 = sub_1D14E2280;
    v243 = &block_descriptor_13;
    v187 = _Block_copy(&aBlock);
    v188 = v237;

    [v188 setInitialResultsHandler_];
    _Block_release(v187);

    (*(v179 + 8))(v228, v181);
    sub_1D1520EC0(v236, &qword_1EE05B520, MEMORY[0x1E6968130]);
    (*(v230 + 8))(v233, v231);
    v189 = *(v222 + 8);
    v190 = v223;
    v189(v229, v223);
    v189(v234, v190);
    sub_1D1520EC0(v239, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);
    return v175;
  }

  return result;
}

uint64_t type metadata accessor for StatisticsCollectionQueryOperation()
{
  result = qword_1EE05AEF8;
  if (!qword_1EE05AEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D1520C10()
{
  sub_1D1520DC4(319, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1D1520DC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D1520E30()
{
  if (!qword_1EE05AB88)
  {
    sub_1D1453BA0(255, &qword_1EE05AD08);
    sub_1D1453368(255, &qword_1EE05ABB8);
    v0 = sub_1D15A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE05AB88);
    }
  }
}

uint64_t sub_1D1520EC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D1520DC4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D1520F30(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D1520DC4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D1520FB0(uint64_t a1, void *a2, unint64_t a3)
{
  v7 = *(sub_1D15A31D8() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  sub_1D151E538(a1, a2, a3, v3 + v8, v10, v11);
}

uint64_t sub_1D1521074(uint64_t a1, uint64_t a2)
{
  ConfigurationOverrides = type metadata accessor for StatisticsQueryConfigurationOverrides();
  (*(*(ConfigurationOverrides - 8) + 32))(a2, a1, ConfigurationOverrides);
  return a2;
}

uint64_t sub_1D15210D8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D15210F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v60 = a1;
  v55 = a2;
  v2 = sub_1D15A3AB8();
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F19D0(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D15A3AE8();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *MEMORY[0x1E6980F20];
  v14 = v13;
  v15 = *(v13 + 104);
  v61 = v13 + 104;
  v62 = v15;
  v53 = v8;
  (v15)(v11, v12, v8, v9);
  v54 = *MEMORY[0x1E6980E28];
  v16 = v54;
  v17 = sub_1D15A3A38();
  v18 = *(v17 - 8);
  v19 = *(v18 + 104);
  v19(v7, v16, v17);
  v20 = v19;
  v51 = *(v18 + 56);
  v52 = v18 + 56;
  v51(v7, 0, 1, v17);
  sub_1D15A3A98();
  sub_1D1522B48(v7);
  v56 = *(v14 + 8);
  v63 = v14 + 8;
  v56(v11, v8);
  sub_1D15A3A48();
  sub_1D15A3AA8();

  v22 = v57;
  v21 = v58;
  (*(v57 + 104))(v4, *MEMORY[0x1E6980EA8], v58);
  v59 = sub_1D15A3AC8();

  (*(v22 + 8))(v4, v21);
  sub_1D15A3A78();
  v23 = v54;
  v24 = v20;
  v50 = v20;
  v20(v7, v54, v17);
  v25 = v51;
  v51(v7, 0, 1, v17);
  v58 = sub_1D15A3A88();
  sub_1D1522B48(v7);
  v26 = v53;
  v62(v11, *MEMORY[0x1E6980EF8], v53);
  v24(v7, v23, v17);
  v25(v7, 0, 1, v17);
  v27 = v25;
  sub_1D15A3A98();
  sub_1D1522B48(v7);
  v28 = v56;
  v56(v11, v26);
  sub_1D15A3A48();
  v57 = sub_1D15A3AA8();

  v62(v11, *MEMORY[0x1E6980F28], v26);
  v50(v7, *MEMORY[0x1E6980E20], v17);
  v27(v7, 0, 1, v17);
  sub_1D15A3A98();
  sub_1D1522B48(v7);
  v28(v11, v26);
  sub_1D15A3A78();
  v29 = sub_1D15A3AA8();

  v30 = type metadata accessor for TimeBasedDistributionChartDesign();
  v31 = v30[8];
  v32 = *MEMORY[0x1E697E6F8];
  v33 = sub_1D15A36F8();
  v34 = v55;
  (*(*(v33 - 8) + 104))(v55 + v31, v32, v33);
  v35 = v60[3];
  v36 = v60[4];
  __swift_project_boxed_opaque_existential_1(v60, v35);
  (*(v36 + 16))(v35, v36);
  v37 = sub_1D15A3C38();
  v38 = objc_opt_self();
  v39 = [v38 systemGray4Color];
  v40 = sub_1D15A3C38();
  v41 = [v38 tertiaryLabelColor];
  v42 = sub_1D15A3C38();
  v43 = [v38 labelColor];
  v44 = sub_1D15A3C38();
  v45 = [v38 secondaryLabelColor];
  v46 = sub_1D15A3C38();
  v47 = [v38 secondaryLabelColor];
  result = sub_1D15A3C38();
  v49 = v58;
  *v34 = v59;
  v34[1] = v49;
  v34[2] = v57;
  v34[3] = v29;
  *(v34 + v30[9]) = v37;
  *(v34 + v30[10]) = v40;
  *(v34 + v30[11]) = v42;
  *(v34 + v30[12]) = v44;
  *(v34 + v30[13]) = v46;
  *(v34 + v30[14]) = result;
  *(v34 + v30[15]) = 0x4021000000000000;
  *(v34 + v30[16]) = 0x4062000000000000;
  *(v34 + v30[17]) = 0xC000000000000000;
  *(v34 + v30[18]) = 0xBFF0000000000000;
  *(v34 + v30[19]) = 0xC010000000000000;
  *(v34 + v30[20]) = 0x3FF199999999999ALL;
  *(v34 + v30[21]) = 0x3FF4CCCCCCCCCCCDLL;
  *(v34 + v30[22]) = 0x3FF2666666666666;
  *(v34 + v30[23]) = 1;
  return result;
}

uint64_t sub_1D15217C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D14F19D0(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D15A3A38();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  sub_1D15A3A88();
  sub_1D1522B48(v6);
  sub_1D15A3A58();
  v32 = sub_1D15A3AA8();

  v8(v6, 1, 1, v7);
  sub_1D15A3A88();
  sub_1D1522B48(v6);
  sub_1D15A3A68();
  v31 = sub_1D15A3AA8();

  v8(v6, 1, 1, v7);
  sub_1D15A3A88();
  sub_1D1522B48(v6);
  sub_1D15A3A68();
  v30 = sub_1D15A3AA8();

  v8(v6, 1, 1, v7);
  sub_1D15A3A88();
  sub_1D1522B48(v6);
  sub_1D15A3A58();
  v9 = sub_1D15A3AA8();

  v10 = type metadata accessor for TimeBasedDistributionChartDesign();
  v11 = v10[8];
  v12 = *MEMORY[0x1E697E6F8];
  v13 = sub_1D15A36F8();
  (*(*(v13 - 8) + 104))(a2 + v11, v12, v13);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  (*(v15 + 16))(v14, v15);
  v16 = sub_1D15A3C38();
  v17 = objc_opt_self();
  v18 = [v17 systemGray4Color];
  v19 = sub_1D15A3C38();
  v20 = [v17 tertiaryLabelColor];
  v21 = sub_1D15A3C38();
  v22 = [v17 labelColor];
  v23 = sub_1D15A3C38();
  v24 = [v17 labelColor];
  v25 = sub_1D15A3C38();
  v26 = [v17 labelColor];
  result = sub_1D15A3C38();
  v28 = v31;
  *a2 = v32;
  a2[1] = v28;
  a2[2] = v30;
  a2[3] = v9;
  *(a2 + v10[9]) = v16;
  *(a2 + v10[10]) = v19;
  *(a2 + v10[11]) = v21;
  *(a2 + v10[12]) = v23;
  *(a2 + v10[13]) = v25;
  *(a2 + v10[14]) = result;
  *(a2 + v10[15]) = 0x401C000000000000;
  *(a2 + v10[16]) = 0x4062000000000000;
  *(a2 + v10[17]) = 0xC000000000000000;
  *(a2 + v10[18]) = 0;
  *(a2 + v10[19]) = 0x4000000000000000;
  *(a2 + v10[20]) = 0x3FF199999999999ALL;
  *(a2 + v10[21]) = 0x3FF3333333333333;
  *(a2 + v10[22]) = 0x3FF3333333333333;
  *(a2 + v10[23]) = 0;
  return result;
}

uint64_t TimeBasedDistributionChartDesign.nonMaxPointAnnotationFont.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t TimeBasedDistributionChartDesign.largeSizeMaxPointAnnotationFont.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t TimeBasedDistributionChartDesign.smallSizeMaxPointAnnotationFont.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t TimeBasedDistributionChartDesign.axisLabelFont.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t TimeBasedDistributionChartDesign.maximumDynamicTypeSize.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TimeBasedDistributionChartDesign() + 32);
  v4 = sub_1D15A36F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for TimeBasedDistributionChartDesign()
{
  result = qword_1EC630E50;
  if (!qword_1EC630E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TimeBasedDistributionChartDesign.maximumDynamicTypeSize.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TimeBasedDistributionChartDesign() + 32);
  v4 = sub_1D15A36F8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TimeBasedDistributionChartDesign.accentColor.getter()
{
  type metadata accessor for TimeBasedDistributionChartDesign();
}

uint64_t TimeBasedDistributionChartDesign.accentColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TimeBasedDistributionChartDesign() + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t TimeBasedDistributionChartDesign.nonMaxBarColor.getter()
{
  type metadata accessor for TimeBasedDistributionChartDesign();
}

uint64_t TimeBasedDistributionChartDesign.nonMaxBarColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TimeBasedDistributionChartDesign() + 40);

  *(v1 + v3) = a1;
  return result;
}

uint64_t TimeBasedDistributionChartDesign.noDataColor.getter()
{
  type metadata accessor for TimeBasedDistributionChartDesign();
}

uint64_t TimeBasedDistributionChartDesign.noDataColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TimeBasedDistributionChartDesign() + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t TimeBasedDistributionChartDesign.maxPointAnnotationColor.getter()
{
  type metadata accessor for TimeBasedDistributionChartDesign();
}

uint64_t TimeBasedDistributionChartDesign.maxPointAnnotationColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TimeBasedDistributionChartDesign() + 48);

  *(v1 + v3) = a1;
  return result;
}

uint64_t TimeBasedDistributionChartDesign.nonMaxPointAnnotationColor.getter()
{
  type metadata accessor for TimeBasedDistributionChartDesign();
}

uint64_t TimeBasedDistributionChartDesign.nonMaxPointAnnotationColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TimeBasedDistributionChartDesign() + 52);

  *(v1 + v3) = a1;
  return result;
}

uint64_t TimeBasedDistributionChartDesign.axisLabelColor.getter()
{
  type metadata accessor for TimeBasedDistributionChartDesign();
}

uint64_t TimeBasedDistributionChartDesign.axisLabelColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TimeBasedDistributionChartDesign() + 56);

  *(v1 + v3) = a1;
  return result;
}

uint64_t TimeBasedDistributionChartDesign.barToTickMargin.setter(double a1)
{
  result = type metadata accessor for TimeBasedDistributionChartDesign();
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t TimeBasedDistributionChartDesign.chartHeight.setter(double a1)
{
  result = type metadata accessor for TimeBasedDistributionChartDesign();
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t TimeBasedDistributionChartDesign.nonMaxPointAnnotationOffset.setter(double a1)
{
  result = type metadata accessor for TimeBasedDistributionChartDesign();
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t TimeBasedDistributionChartDesign.maxPointAnnotationOffset.setter(double a1)
{
  result = type metadata accessor for TimeBasedDistributionChartDesign();
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t TimeBasedDistributionChartDesign.noDataPointAnnotationOffset.setter(double a1)
{
  result = type metadata accessor for TimeBasedDistributionChartDesign();
  *(v1 + *(result + 76)) = a1;
  return result;
}

uint64_t TimeBasedDistributionChartDesign.noMaxYAxisScale.setter(double a1)
{
  result = type metadata accessor for TimeBasedDistributionChartDesign();
  *(v1 + *(result + 80)) = a1;
  return result;
}

uint64_t TimeBasedDistributionChartDesign.singleMaxYAxisScale.setter(double a1)
{
  result = type metadata accessor for TimeBasedDistributionChartDesign();
  *(v1 + *(result + 84)) = a1;
  return result;
}

uint64_t TimeBasedDistributionChartDesign.multipleMaxYAxisScale.setter(double a1)
{
  result = type metadata accessor for TimeBasedDistributionChartDesign();
  *(v1 + *(result + 88)) = a1;
  return result;
}

uint64_t TimeBasedDistributionChartDesign.shouldPreventLongBarAnnotationOverhang.setter(char a1)
{
  result = type metadata accessor for TimeBasedDistributionChartDesign();
  *(v1 + *(result + 92)) = a1;
  return result;
}

uint64_t static TimeBasedDistributionChartDesign.makeTestingDesign()@<X0>(uint64_t *a1@<X8>)
{
  sub_1D14F19D0(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D15A3A38();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  v21 = sub_1D15A3A88();
  sub_1D1522B48(v4);
  v6(v4, 1, 1, v5);
  v7 = sub_1D15A3A88();
  sub_1D1522B48(v4);
  v6(v4, 1, 1, v5);
  v8 = sub_1D15A3A88();
  sub_1D1522B48(v4);
  v6(v4, 1, 1, v5);
  v9 = sub_1D15A3A88();
  sub_1D1522B48(v4);
  v10 = type metadata accessor for TimeBasedDistributionChartDesign();
  v11 = v10[8];
  v12 = *MEMORY[0x1E697E6F8];
  v13 = sub_1D15A36F8();
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = sub_1D15A3C58();
  v15 = sub_1D15A3C88();
  v16 = sub_1D15A3C48();
  v17 = sub_1D15A3CB8();
  v18 = sub_1D15A3CA8();
  result = sub_1D15A3C98();
  *a1 = v21;
  a1[1] = v7;
  a1[2] = v8;
  a1[3] = v9;
  *(a1 + v10[9]) = v14;
  *(a1 + v10[10]) = v15;
  *(a1 + v10[11]) = v16;
  *(a1 + v10[12]) = v17;
  *(a1 + v10[13]) = v18;
  *(a1 + v10[14]) = result;
  *(a1 + v10[15]) = 0x4014000000000000;
  *(a1 + v10[16]) = 0x4034000000000000;
  *(a1 + v10[17]) = 0xC000000000000000;
  *(a1 + v10[18]) = 0xBFF0000000000000;
  *(a1 + v10[19]) = 0xC010000000000000;
  *(a1 + v10[20]) = 0x3FF199999999999ALL;
  *(a1 + v10[21]) = 0x3FF4CCCCCCCCCCCDLL;
  *(a1 + v10[22]) = 0x3FF3333333333333;
  *(a1 + v10[23]) = 1;
  return result;
}

uint64_t sub_1D1522B48(uint64_t a1)
{
  sub_1D14F19D0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1522BCC()
{
  result = sub_1D15A36F8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t DiagramLine.__allocating_init(lineDiagramConfig:diagramData:hbxViewControllerFactory:axisMetricsFactory:)(uint64_t *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  DiagramLine.init(lineDiagramConfig:diagramData:hbxViewControllerFactory:axisMetricsFactory:)(a1, a2, a3, a4);
  return v8;
}

double sub_1D1522D1C()
{
  v1 = *(v0 + 104);
  v2 = 0.0;
  if ((*(v1 + 144) & 1) == 0)
  {
    v2 = *(v1 + 112);
  }

  sub_1D14567B4();
  if ((*(v1 + 64) & 0xFE00000000) != 0x200000000)
  {
    DiagramConfiguration.TextAttributes.toTextAttributes()();
    v3 = sub_1D15A3EF8();
    type metadata accessor for Key(0);
    sub_1D14587E0();
    v4 = sub_1D15A3E48();

    [v3 sizeWithAttributes_];
  }

  return v2;
}

uint64_t DiagramLine.deinit()
{

  return v0;
}

uint64_t sub_1D1522EE4(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = v4[2];
  v7 = v4[3] >> 1;
  result = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
    goto LABEL_32;
  }

  v10 = *a1;
  v11 = *(*a1 + 16);
  v30 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v30)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v14 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v15 = result - a2;
  if (__OFSUB__(result, a2))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v30 = __OFSUB__(v15, v14);
  v16 = v15 - v14;
  if (v30)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v38 = v16;
  v18 = (v10 + 32);
  v19 = v10 + 32 + 16 * a2;
  v36 = v10;
  v37 = (v19 + 16 * a3);
  result = sub_1D15232F4(result);
  if (result)
  {
    v20 = result;
    v35 = a4;
    v21 = v4[2];
    v22 = (v4[1] + 16 * v21);
    v23 = &v22[16 * a2];
    if (v18 != v22 || v18 >= v23)
    {
      memmove(v18, v22, 16 * a2);
    }

    v35(v19, a3);
    v24 = &v23[16 * v38];
    if (v37 != v24 || v37 >= &v24[16 * v14])
    {
      memmove(v37, v24, 16 * v14);
    }

    *(v20 + 16) = 0;
  }

  else
  {
    v21 = v4[2];
    v26 = v21 + a2;
    if (__OFADD__(v21, a2))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v26 < v21)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v26, v21))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v27 = v4[1];
    memcpy(v18, (v27 + 16 * v21), 16 * a2);
    result = (a4)(&v18[16 * a2], a3);
    v28 = v26 + v38;
    if (__OFADD__(v26, v38))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v29 = v4[3] >> 1;
    v30 = __OFSUB__(v29, v28);
    v31 = v29 < v28;
    v32 = v29 - v28;
    if (v31)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v30)
    {
LABEL_45:
      __break(1u);
      return result;
    }

    memcpy(v37, (v27 + 16 * v28), 16 * v32);
  }

  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v21))
  {
    goto LABEL_36;
  }

  result = v36;
  v33 = *(v36 + 16);
  v30 = __OFADD__(v21, v33);
  v34 = v21 + v33;
  if (v30)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v34 < v21)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v34 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *v4 = v36;
  v4[1] = &v18[-16 * v21];
  v4[2] = v21;
  v4[3] = (2 * v34) | 1;
}

void *sub_1D1523118(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_1D15A4BC8();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);
  v13 = a4 + 16 * a5 + 16 * v8;
  if (v13 == v11 + 16 * v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x1E69E7CC0];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + 16 * v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + 16 * v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_1D145BC60(v6, v25);
}

uint64_t sub_1D15232F4(uint64_t a1)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = v1[1] + 16 * v6;
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1D15A4BC8();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  if (v8 + 16 * v7 != v9 + 16 * v10 + 32)
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = *(v9 + 24);

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v7, v13);
  v11 = v7 + v13;
  if (v14)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v11 < a1)
  {
    return 0;
  }

  sub_1D15A4BC8();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x1E69E7CC0];
  }

  v15 = v8 - result - 17;
  if (v8 - result - 32 >= 0)
  {
    v15 = v8 - result - 32;
  }

  v14 = __OFADD__(v7, v15 >> 4);
  v5 = v7 + (v15 >> 4);
  if (v14)
  {
    goto LABEL_20;
  }

  v4 = *(result + 16);
  if (v5 < v4)
  {
LABEL_21:
    v16 = result;
    sub_1D1523538(v5, v4, 0);
    return v16;
  }

  return result;
}

unint64_t sub_1D15234EC()
{
  result = qword_1EC630E60;
  if (!qword_1EC630E60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC630E60);
  }

  return result;
}

unint64_t sub_1D1523538(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D15235E0(uint64_t result, unint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = (v4 >> 1) - v3;
  if (__OFSUB__(v4 >> 1, v3))
  {
    goto LABEL_49;
  }

  v30 = v2[2];
  v6 = *(result + 16);
  if (v6 != a2)
  {
    if (v6 <= a2)
    {
LABEL_50:
      __break(1u);
      return result;
    }

    v7 = result + 32;
    v8 = a2 + 1;
    v9 = *(result + 32 + 16 * a2);
    v29 = v2;
    while (!__OFADD__(v5, 1))
    {
      v31 = v9;
      v10 = v7;
      v33 = sub_1D1523118(v5, v5 + 1, *v2, v2[1], v30, v4);
      v11 = sub_1D15232D8();
      sub_1D1522EE4(&v33, v5, 0, v11);

      v12 = v2[2];
      v4 = v2[3];
      v13 = (v4 >> 1) - v12;
      if (__OFSUB__(v4 >> 1, v12))
      {
        goto LABEL_43;
      }

      v28 = v4 >> 1;
      v30 = v2[2];
      v14 = v2[1] + 16 * v12;
      if (v4)
      {
        sub_1D15A4BC8();
        swift_unknownObjectRetain();
        v15 = swift_dynamicCastClass();
        if (!v15)
        {
          swift_unknownObjectRelease();
          v15 = MEMORY[0x1E69E7CC0];
        }

        v16 = *(v15 + 16);
        if (v14 + 16 * v13 == v15 + 16 * v16 + 32)
        {
          v18 = *(v15 + 24);

          v19 = (v18 >> 1) - v16;
          v20 = __OFADD__(v13, v19);
          v17 = v13 + v19;
          if (v20)
          {
            goto LABEL_48;
          }

          v7 = v10;
        }

        else
        {

          v17 = v13;
        }

        v2 = v29;
      }

      else
      {
        v17 = (v4 >> 1) - v12;
      }

      v9 = v31;
      if (v5 >= v17)
      {
        v21 = 0;
        v20 = __OFSUB__(v5, v13);
        v22 = v5 - v13;
        if (v20)
        {
          goto LABEL_44;
        }
      }

      else
      {
        *(v14 + 16 * v5++) = v31;
        if (v8 == v6)
        {
          v9 = 0uLL;
          v21 = 1;
          v8 = v6;
          v20 = __OFSUB__(v5, v13);
          v22 = v5 - v13;
          if (v20)
          {
            goto LABEL_44;
          }
        }

        else
        {
          while (1)
          {
            if (v8 >= v6)
            {
              __break(1u);
LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

            v23 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_41;
            }

            v24 = v5;
            v9 = *(v7 + 16 * v8);
            if (v17 == v5)
            {
              break;
            }

            *(v14 + 16 * v5++) = v9;
            ++v8;
            if (v23 == v6)
            {
              v9 = 0uLL;
              v8 = v6;
              goto LABEL_31;
            }
          }

          ++v8;
          v5 = v17;
LABEL_31:
          v21 = v24 < v17;
          v20 = __OFSUB__(v5, v13);
          v22 = v5 - v13;
          if (v20)
          {
            goto LABEL_44;
          }
        }
      }

      if (v22)
      {
        v32 = v9;
        sub_1D15A4BC8();
        swift_unknownObjectRetain();
        result = swift_dynamicCastClass();
        if (!result)
        {
          swift_unknownObjectRelease();
          result = MEMORY[0x1E69E7CC0];
        }

        v25 = *(result + 16);
        v20 = __OFADD__(v25, v22);
        v26 = v25 + v22;
        if (v20)
        {
          goto LABEL_45;
        }

        *(result + 16) = v26;

        v27 = v28 + v22;
        if (__OFADD__(v28, v22))
        {
          goto LABEL_46;
        }

        if ((v27 & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }

        v4 = v4 & 1 | (2 * v27);
        v2 = v29;
        v29[3] = v4;
        v9 = v32;
      }

      if (v21)
      {
        return result;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  return result;
}

uint64_t sub_1D15238A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != 1)
  {
    sub_1D147EA24(result);

    return sub_1D147EA24(a4);
  }

  return result;
}

uint64_t sub_1D1523904()
{
  sub_1D15A3F88();
}

uint64_t StatisticsOption.bitMaskValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    if (*v0 <= 6u)
    {
      if (v1 == 5)
      {
        return 64;
      }

      else
      {

        return _HKStatisticOptionsAverageSampleDuration();
      }
    }

    else if (v1 == 7)
    {

      return _HKStatisticsOptionPresence();
    }

    else if (v1 == 8)
    {

      return _HKStatisticsOptionBaselineRelativeQuantities();
    }

    else
    {
      v6 = _HKStatisticsOptionAttenuateSamples();
      if ((v6 & 0xFFFFFFFFFFFFFFFDLL) != 0)
      {
        return v6 | 2;
      }

      else
      {
        return 2;
      }
    }
  }

  else
  {
    v2 = 2;
    v3 = 8;
    v4 = 16;
    if (v1 != 3)
    {
      v4 = 32;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 4;
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
}

HealthVisualization::StatisticsOption_optional __swiftcall StatisticsOption.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D15A49B8();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StatisticsOption.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v4 = 0x65636E6573657270;
    if (v1 == 8)
    {
      v5 = 0xD00000000000001ALL;
    }

    else
    {
      v5 = 0xD000000000000019;
    }

    if (v1 != 7)
    {
      v4 = v5;
    }

    v6 = 0x6E6F697461727564;
    if (v1 != 5)
    {
      v6 = 0x4465676172657661;
    }

    if (*v0 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v2 = 0x6974616C756D7563;
    if (v1 != 3)
    {
      v2 = 0x6563655274736F6DLL;
    }

    if (v1 == 2)
    {
      v2 = 0x6574657263736964;
    }

    if (*v0 <= 1u)
    {
      return 0x6574657263736964;
    }

    else
    {
      return v2;
    }
  }
}