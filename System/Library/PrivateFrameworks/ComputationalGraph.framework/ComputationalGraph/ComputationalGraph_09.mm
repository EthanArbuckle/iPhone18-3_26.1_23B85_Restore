unint64_t sub_1C6EC07FC()
{
  result = qword_1EC1F9830;
  if (!qword_1EC1F9830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9830);
  }

  return result;
}

unint64_t sub_1C6EC0854()
{
  result = qword_1EC1F9838;
  if (!qword_1EC1F9838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9838);
  }

  return result;
}

unint64_t sub_1C6EC08AC()
{
  result = qword_1EC1F9840;
  if (!qword_1EC1F9840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9840);
  }

  return result;
}

uint64_t sub_1C6EC0900(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496567616B636170 && a2 == 0xEA00000000007344 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x55657475706D6F63 && a2 == 0xEC0000007374696ELL || (sub_1C6EE54B0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6F506568636163 && a2 == 0xEB00000000796369)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C6EE54B0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1C6EC0A6C()
{
  result = qword_1EC1F9848;
  if (!qword_1EC1F9848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9848);
  }

  return result;
}

uint64_t RequestEventProcessorRegistry.__allocating_init()()
{
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC8];
  *(result + 16) = MEMORY[0x1E69E7CC0];
  *(result + 24) = v1;
  return result;
}

uint64_t RequestEventProcessorRegistry.init()()
{
  result = v0;
  v2 = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = v2;
  return result;
}

uint64_t sub_1C6EC0B38(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = a1;
  MEMORY[0x1CCA58080]();
  if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v6 = *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1C6EE4CE0();
  }

  sub_1C6EE4D20();
  return swift_endAccess();
}

uint64_t sub_1C6EC0BE0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + 24);
  *(v4 + 24) = 0x8000000000000000;
  v11 = sub_1C6DEC784(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = v12;
  if (v10[3] < v16)
  {
    sub_1C6E08158(v16, isUniquelyReferenced_nonNull_native);
    v11 = sub_1C6DEC784(a2, a3);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_6;
    }

    v11 = sub_1C6EE5500();
    __break(1u);
  }

  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_6:
    *(v4 + 24) = v10;
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v23 = v11;
  sub_1C6E0A468();
  v11 = v23;
  *(v4 + 24) = v10;
  if ((v17 & 1) == 0)
  {
LABEL_7:
    v19 = v11;
    sub_1C6E0D448(v11, a2, a3, MEMORY[0x1E69E7CC0], v10);

    v11 = v19;
  }

LABEL_8:
  v20 = (v10[7] + 8 * v11);
  v21 = a1;
  MEMORY[0x1CCA58080]();
  if (*((*v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_11:
    sub_1C6EE4CE0();
  }

  sub_1C6EE4D20();
  return swift_endAccess();
}

id sub_1C6EC0D80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v3 + 24);
  if (*(v6 + 16))
  {
    v7 = *(v3 + 24);

    v8 = sub_1C6DEC784(a1, a2);
    if (v9)
    {
      v10 = *(*(v6 + 56) + 8 * v8);

      if (v10 >> 62)
      {
        if (sub_1C6EE5110())
        {
          goto LABEL_5;
        }
      }

      else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        swift_beginAccess();
        v11 = *(v3 + 16);
        v17 = v10;

        sub_1C6ED20F8(v12);
        v13 = type metadata accessor for ComputationalGraphRequestEventMultiProcessor();
        v14 = objc_allocWithZone(v13);
        *&v14[OBJC_IVAR____TtC18ComputationalGraph44ComputationalGraphRequestEventMultiProcessor_eventProcessors] = v10;
        v16.receiver = v14;
        v16.super_class = v13;
        return objc_msgSendSuper2(&v16, sel_init);
      }
    }
  }

  return 0;
}

uint64_t RequestEventProcessorRegistry.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t RequestEventProcessorRegistry.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_1C6EC0F0C(__int128 *a1)
{
  v9 = *a1;
  v2 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph44ComputationalGraphRequestEventMultiProcessor_eventProcessors);
  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C6EE5110())
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7D40];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1CCA585E0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = v9;
      (*((*v5 & *v6) + 0x50))(&v10);

      ++v4;
      if (v8 == i)
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

id sub_1C6EC1068()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComputationalGraphRequestEventMultiProcessor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1C6EC1168(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1CCA585E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1C6EC11E8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6EC11F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1 >> 62)
  {
    goto LABEL_38;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v37 = a1;
  if (v4)
  {
    v5 = 0;
    v40 = a1 & 0xFFFFFFFFFFFFFF8;
    v41 = a1 & 0xC000000000000001;
    v39 = a1 + 32;
    v6 = MEMORY[0x1E69E7CC8];
    v7 = MEMORY[0x1E69E7CC8];
    v38 = v4;
    while (1)
    {
      if (v41)
      {
        v9 = MEMORY[0x1CCA585E0](v5, v37);
        v10 = __OFADD__(v5, 1);
        v11 = v5 + 1;
        if (v10)
        {
LABEL_29:
          __break(1u);
LABEL_30:
          sub_1C6EC1E30();
          swift_allocError();
          *v29 = v3;
          v29[1] = v4;
          swift_willThrow();
        }
      }

      else
      {
        if (v5 >= *(v40 + 16))
        {
LABEL_37:
          __break(1u);
LABEL_38:
          v34 = a1;
          v4 = sub_1C6EE5110();
          a1 = v34;
          goto LABEL_3;
        }

        v9 = *(v39 + 8 * v5);

        v10 = __OFADD__(v5, 1);
        v11 = v5 + 1;
        if (v10)
        {
          goto LABEL_29;
        }
      }

      v42 = v11;
      v12 = (*(*v9 + 136))();
      v13 = *(v12 + 16);

      if (v13)
      {
        v14 = (v12 + 40);
        v8 = v6;
        while (1)
        {
          v3 = *(v14 - 1);
          v4 = *v14;
          v16 = v8[2];

          if (v16)
          {
            sub_1C6DEC784(v3, v4);
            if (v17)
            {
              goto LABEL_30;
            }
          }

          v43 = v13;
          v18 = v9;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v20 = v3;
          v22 = sub_1C6DEC784(v3, v4);
          v23 = v7[2];
          v24 = (v21 & 1) == 0;
          a1 = v23 + v24;
          if (__OFADD__(v23, v24))
          {
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          v3 = v21;
          if (v7[3] >= a1)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v8 = v7;
              if (v21)
              {
                goto LABEL_12;
              }
            }

            else
            {
              a1 = sub_1C6E0A5DC();
              v8 = v7;
              if (v3)
              {
                goto LABEL_12;
              }
            }
          }

          else
          {
            sub_1C6E0840C(a1, isUniquelyReferenced_nonNull_native);
            a1 = sub_1C6DEC784(v20, v4);
            if ((v3 & 1) != (v25 & 1))
            {
              result = sub_1C6EE5500();
              __break(1u);
              return result;
            }

            v22 = a1;
            v8 = v7;
            if (v3)
            {
LABEL_12:
              v15 = v8[7];
              v3 = *(v15 + 8 * v22);
              *(v15 + 8 * v22) = v18;
              v9 = v18;
              swift_bridgeObjectRelease_n();

              goto LABEL_13;
            }
          }

          v8[(v22 >> 6) + 8] |= 1 << v22;
          v26 = (v8[6] + 16 * v22);
          *v26 = v20;
          v26[1] = v4;
          *(v8[7] + 8 * v22) = v18;
          v27 = v8[2];
          v10 = __OFADD__(v27, 1);
          v28 = v27 + 1;
          if (v10)
          {
            goto LABEL_36;
          }

          v9 = v18;
          v8[2] = v28;

LABEL_13:
          v14 += 2;
          v6 = v8;
          v7 = v8;
          v13 = v43 - 1;
          if (v43 == 1)
          {
            goto LABEL_6;
          }
        }
      }

      v8 = v7;
LABEL_6:

      v7 = v8;
      v4 = v38;
      v5 = v42;
      if (v42 == v38)
      {
        goto LABEL_32;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC8];
LABEL_32:

  v32 = sub_1C6EC15F4(v31);

  if (v32)
  {
    sub_1C6EC1E30();
    swift_allocError();
    *v33 = 0;
    v33[1] = 0;
    swift_willThrow();
  }

  else
  {
    *a3 = v6;
    a3[1] = a2;
  }

  return result;
}

uint64_t sub_1C6EC15F4(uint64_t a1)
{
  v24 = MEMORY[0x1E69E7CD0];
  v25 = MEMORY[0x1E69E7CD0];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = )
  {
LABEL_13:
    while (1)
    {
      v11 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v12 = *(*(a1 + 56) + ((i << 9) | (8 * v11)));
      v13 = v25;
      if ((v25 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*(v25 + 16))
      {
        v14 = *(v25 + 40);
        sub_1C6EE5580();
        v15 = *(v12 + 16);
        v16 = *(v12 + 24);

        sub_1C6EE4B30();
        v17 = sub_1C6EE55A0();
        v18 = -1 << *(v13 + 32);
        v19 = v17 & ~v18;
        if ((*(v13 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
        {
          v20 = ~v18;
          do
          {
            v21 = *(*(v13 + 48) + 8 * v19);
            v22 = *(v21 + 16) == *(v12 + 16) && *(v21 + 24) == *(v12 + 24);
            if (v22 || (sub_1C6EE54B0() & 1) != 0)
            {
              goto LABEL_15;
            }

            v19 = (v19 + 1) & v20;
          }

          while (((*(v13 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
        }
      }

      else
      {
      }

LABEL_7:
      v9 = sub_1C6EC18D0(v12, &v25, &v24, a1);

      if (v9)
      {
        v23 = 1;
LABEL_28:

        return v23;
      }

      if (!v5)
      {
        goto LABEL_9;
      }
    }

    if ((sub_1C6EE5140() & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    ;
  }

LABEL_9:
  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      v23 = 0;
      goto LABEL_28;
    }

    v5 = *(v2 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6EC180C(uint64_t a1)
{
  v3 = *(v1 + 8);
  result = MEMORY[0x1E69E7CC8];
  v13 = MEMORY[0x1E69E7CC8];
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 40);
    do
    {
      if (*(v3 + 16))
      {
        v7 = *(v6 - 1);
        v8 = *v6;

        v9 = sub_1C6DEC784(v7, v8);
        if (v10)
        {
          v11 = *(*(v3 + 56) + 8 * v9);

          sub_1C6E269D0(v12, 0, 1);
        }
      }

      v6 += 2;
      --v5;
    }

    while (v5);
    return v13;
  }

  return result;
}

uint64_t sub_1C6EC18D0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{

  v47 = a2;
  sub_1C6E03580(v49, a1);

  v48 = a3;
  sub_1C6E03580(v49, a1);

  result = (*(*a1 + 128))(v8);
  v10 = result;
  v11 = *(result + 16);
  if (!v11)
  {
LABEL_38:

    sub_1C6E0495C(a1);

    return 0;
  }

  v12 = 0;
  v13 = result + 32;
  v46 = result + 32;
  while (v12 < *(v10 + 16))
  {
    if (!*(a4 + 16))
    {
      goto LABEL_6;
    }

    v16 = (v13 + 16 * v12);
    v17 = *v16;
    v18 = v16[1];

    v19 = sub_1C6DEC784(v17, v18);
    v21 = v20;

    if ((v21 & 1) == 0)
    {
      goto LABEL_6;
    }

    v22 = *(*(a4 + 56) + 8 * v19);
    v23 = *v47;
    if ((*v47 & 0xC000000000000001) != 0)
    {
      if (v23 < 0)
      {
        v24 = *v47;
      }

      swift_retain_n();
      v25 = sub_1C6EE5140();

      if (v25)
      {
        goto LABEL_27;
      }
    }

    else if (*(v23 + 16))
    {
      v26 = *(v23 + 40);
      sub_1C6EE5580();
      v27 = *(v22 + 16);
      v28 = *(v22 + 24);

      sub_1C6EE4B30();
      v29 = sub_1C6EE55A0();
      v30 = -1 << *(v23 + 32);
      v31 = v29 & ~v30;
      if ((*(v23 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
      {
        v32 = ~v30;
        do
        {
          v33 = *(*(v23 + 48) + 8 * v31);
          v34 = *(v33 + 16) == *(v22 + 16) && *(v33 + 24) == *(v22 + 24);
          if (v34 || (sub_1C6EE54B0() & 1) != 0)
          {
            goto LABEL_27;
          }

          v31 = (v31 + 1) & v32;
        }

        while (((*(v23 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0);
      }
    }

    else
    {
      v35 = *(*(a4 + 56) + 8 * v19);
    }

    if (sub_1C6EC18D0(v22, v47, v48, a4))
    {
      goto LABEL_39;
    }

LABEL_27:
    v36 = *v48;
    if ((*v48 & 0xC000000000000001) != 0)
    {
      if (v36 < 0)
      {
        v14 = *v48;
      }

      v15 = sub_1C6EE5140();

      v13 = v46;
      if (v15)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (*(v36 + 16))
      {
        v37 = *(v36 + 40);
        sub_1C6EE5580();
        v38 = *(v22 + 16);
        v39 = *(v22 + 24);
        sub_1C6EE4B30();
        v40 = sub_1C6EE55A0();
        v41 = -1 << *(v36 + 32);
        v42 = v40 & ~v41;
        if ((*(v36 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
        {
          v43 = ~v41;
          while (1)
          {
            v44 = *(*(v36 + 48) + 8 * v42);
            v45 = *(v44 + 16) == *(v22 + 16) && *(v44 + 24) == *(v22 + 24);
            if (v45 || (sub_1C6EE54B0() & 1) != 0)
            {
              break;
            }

            v42 = (v42 + 1) & v43;
            if (((*(v36 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
            {
              goto LABEL_37;
            }
          }

LABEL_39:

LABEL_40:

          return 1;
        }
      }

LABEL_37:

      v13 = v46;
    }

LABEL_6:
    if (++v12 == v11)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s18ComputationalGraph06GlobalB0V6ErrorsO2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_1C6EE54B0();
}

uint64_t sub_1C6EC1CAC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1C6EC1CF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6EC1D40(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6EC1D90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t sub_1C6EC1DE4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1C6EC1E00(void *result, int a2)
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

unint64_t sub_1C6EC1E30()
{
  result = qword_1EC1F9858;
  if (!qword_1EC1F9858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F9858);
  }

  return result;
}

uint64_t sub_1C6EC1E84(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77F8, &unk_1C6EE69B0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1C6ECE3C4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1C6EC9070(v6, &qword_1EC1F77F8, &unk_1C6EE69B0, sub_1C6EC9890, sub_1C6EC91C4);
  *a1 = v3;
  return result;
}

uint64_t sub_1C6EC1F70(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A30, &qword_1C6EF6B38) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1C6ECE354(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1C6EC9070(v6, &unk_1EC1F9A30, &qword_1C6EF6B38, sub_1C6ECAD68, sub_1C6EC9424);
  *a1 = v3;
  return result;
}

uint64_t sub_1C6EC2060(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v7 = v3 + 2;
  v6 = *v3;
  v67 = v3;
  v63[1] = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D48, &qword_1C6EE8990);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v77 = v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D58, &qword_1C6EE89A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v63 - v13;
  v15 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v79 = v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
  v19 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76);
  v81 = v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77F8, &unk_1C6EE69B0);
  v21 = *(v75 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v75);
  v74 = (v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v80 = v63 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A30, &qword_1C6EF6B38);
  v72 = *(v26 - 8);
  v73 = v26;
  v27 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = v63 - v28;
  v65 = a1;
  sub_1C6ECEDD8(a1, v7);
  v66 = a2;
  v30 = *a2;
  v31 = *(*a2 + 16);
  v32 = MEMORY[0x1E69E7CC0];
  if (v31)
  {
    v33 = sub_1C6E031D8(*(*a2 + 16), 0);
    v34 = sub_1C6E0B3CC(v82, v33 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v31, v30);
    v68 = v82[1];
    v69 = v34;
    v64 = v82[2];
    v63[3] = v82[3];
    v63[2] = v82[4];

    sub_1C6ECEE3C();
    if (v69 != v31)
    {
      __break(1u);

      __swift_destroy_boxed_opaque_existential_1(v7);
      v61 = *(*v67 + 48);
      v62 = *(*v67 + 52);
      result = swift_deallocPartialClassInstance();
      __break(1u);
      return result;
    }

    v32 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
  }

  v83 = v33;
  sub_1C6EC1E84(&v83);
  v35 = v83;
  v36 = v83[2];
  if (v36)
  {
    v82[0] = v32;
    sub_1C6E15C30(0, v36, 0);
    v37 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v64 = v35;
    v38 = v35 + v37;
    v32 = v82[0];
    v68 = *(v21 + 72);
    v69 = (v16 + 48);
    v70 = v14;
    v71 = v15;
    v78 = v29;
    do
    {
      v39 = v80;
      sub_1C6ECEE44(v38, v80, &qword_1EC1F77F8, &unk_1C6EE69B0);
      v40 = v29;
      v41 = v74;
      sub_1C6ECEE44(v39, v74, &qword_1EC1F77F8, &unk_1C6EE69B0);
      v42 = *v41;
      v43 = v41[1];
      v44 = v41 + *(v75 + 48);
      v45 = v81;
      sub_1C6ECEF0C(v44, v81, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
      *v40 = v42;
      v40[1] = v43;
      sub_1C6ECEE44(v45 + *(v76 + 24), v14, &qword_1EC1F7D58, &qword_1C6EE89A0);
      v46 = *v69;
      if ((*v69)(v14, 1, v15) == 1)
      {
        v47 = v79;
        *v79 = 0;
        v48 = &v47[*(v15 + 20)];
        sub_1C6EE4420();
        v49 = *(v15 + 24);
        v50 = sub_1C6EE43E0();
        (*(*(v50 - 8) + 56))(&v47[v49], 1, 1, v50);
        if (v46(v14, 1, v15) != 1)
        {
          sub_1C6ECEEAC(v14, &qword_1EC1F7D58, &qword_1C6EE89A0);
        }
      }

      else
      {
        sub_1C6ECEF0C(v14, v79, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
      }

      v51 = *(v73 + 48);
      v52 = v79;
      v53 = v77;
      sub_1C6ECEE44(&v79[*(v15 + 24)], v77, &qword_1EC1F7D48, &qword_1C6EE8990);
      v54 = sub_1C6EE43E0();
      v55 = *(v54 - 8);
      v56 = *(v55 + 48);
      if (v56(v53, 1, v54) == 1)
      {
        sub_1C6EE43D0();
        sub_1C6ECEC10(v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
        sub_1C6ECEC10(v81, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
        sub_1C6ECEEAC(v80, &qword_1EC1F77F8, &unk_1C6EE69B0);
        if (v56(v53, 1, v54) != 1)
        {
          sub_1C6ECEEAC(v77, &qword_1EC1F7D48, &qword_1C6EE8990);
        }
      }

      else
      {
        sub_1C6ECEC10(v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
        sub_1C6ECEC10(v81, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
        sub_1C6ECEEAC(v80, &qword_1EC1F77F8, &unk_1C6EE69B0);
        (*(v55 + 32))(&v78[v51], v53, v54);
      }

      v82[0] = v32;
      v58 = *(v32 + 16);
      v57 = *(v32 + 24);
      v14 = v70;
      if (v58 >= v57 >> 1)
      {
        sub_1C6E15C30(v57 > 1, v58 + 1, 1);
        v32 = v82[0];
      }

      *(v32 + 16) = v58 + 1;
      v29 = v78;
      sub_1C6ECEF74(v78, v32 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v58, &unk_1EC1F9A30, &qword_1C6EF6B38);
      v38 += v68;
      --v36;
      v15 = v71;
    }

    while (v36);
    __swift_destroy_boxed_opaque_existential_1(v65);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v65);
  }

  v59 = v67;
  v67[7] = v32;
  sub_1C6ECEF0C(v66, v59 + OBJC_IVAR____TtCC18ComputationalGraph13FeaturesStore17FeaturesStoreData_store, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesStore);
  return v59;
}

uint64_t sub_1C6EC2920(uint64_t a1, uint64_t a2)
{
  v88 = a2;
  v81 = a1;
  v2 = sub_1C6EE42C0();
  v85 = *(v2 - 8);
  v86 = v2;
  v3 = *(v85 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v84 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v89 = &v73 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D48, &qword_1C6EE8990);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v83 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v78 = (&v73 - v11);
  v76 = sub_1C6EE43E0();
  v87 = *(v76 - 1);
  v12 = *(v87 + 64);
  v13 = MEMORY[0x1EEE9AC00](v76);
  v82 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v77 = &v73 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D58, &qword_1C6EE89A0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v79 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v73 - v20;
  v22 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0);
  v90 = *(v22 - 8);
  v23 = *(v90 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v80 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v73 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77F8, &unk_1C6EE69B0);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v73 - v31;
  v33 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = &v73 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v73 - v38;
  sub_1C6ECEE44(v81, v32, &qword_1EC1F77F8, &unk_1C6EE69B0);
  v40 = *(v32 + 1);

  sub_1C6ECEF0C(&v32[*(v29 + 56)], v39, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
  sub_1C6ECEE44(v88, v32, &qword_1EC1F77F8, &unk_1C6EE69B0);
  v41 = *(v32 + 1);

  v42 = &v32[*(v29 + 56)];
  v43 = v90;
  v88 = v37;
  sub_1C6ECEF0C(v42, v37, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
  v75 = v33;
  v44 = *(v33 + 24);
  v81 = v39;
  sub_1C6ECEE44(&v39[v44], v21, &qword_1EC1F7D58, &qword_1C6EE89A0);
  v45 = *(v43 + 48);
  v46 = v45(v21, 1, v22);
  v90 = v43 + 48;
  v74 = v45;
  if (v46 == 1)
  {
    *v27 = 0;
    v47 = &v27[*(v22 + 20)];
    sub_1C6EE4420();
    v48 = v87;
    v49 = v76;
    (*(v87 + 56))(&v27[*(v22 + 24)], 1, 1, v76);
    if (v45(v21, 1, v22) != 1)
    {
      sub_1C6ECEEAC(v21, &qword_1EC1F7D58, &qword_1C6EE89A0);
    }
  }

  else
  {
    sub_1C6ECEF0C(v21, v27, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
    v49 = v76;
    v48 = v87;
  }

  v50 = v78;
  sub_1C6ECEE44(&v27[*(v22 + 24)], v78, &qword_1EC1F7D48, &qword_1C6EE8990);
  v51 = *(v48 + 48);
  v52 = (v51)(v50, 1, v49);
  v53 = v77;
  v76 = v51;
  if (v52 == 1)
  {
    sub_1C6EE43D0();
    sub_1C6ECEC10(v27, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
    if ((v51)(v50, 1, v49) != 1)
    {
      sub_1C6ECEEAC(v50, &qword_1EC1F7D48, &qword_1C6EE8990);
    }
  }

  else
  {
    sub_1C6ECEC10(v27, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
    (*(v48 + 32))(v53, v50, v49);
  }

  sub_1C6EE43B0();
  v54 = v48;
  v78 = *(v48 + 8);
  (v78)(v53, v49);
  v55 = v79;
  sub_1C6ECEE44(&v88[*(v75 + 24)], v79, &qword_1EC1F7D58, &qword_1C6EE89A0);
  v56 = v74;
  v57 = v49;
  if (v74(v55, 1, v22) == 1)
  {
    v58 = v55;
    v59 = v80;
    *v80 = 0;
    v60 = &v59[*(v22 + 20)];
    sub_1C6EE4420();
    (*(v54 + 56))(&v59[*(v22 + 24)], 1, 1, v57);
    if (v56(v58, 1, v22) != 1)
    {
      sub_1C6ECEEAC(v58, &qword_1EC1F7D58, &qword_1C6EE89A0);
    }
  }

  else
  {
    v61 = v55;
    v59 = v80;
    sub_1C6ECEF0C(v61, v80, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
  }

  v62 = v83;
  sub_1C6ECEE44(&v59[*(v22 + 24)], v83, &qword_1EC1F7D48, &qword_1C6EE8990);
  v63 = v76;
  if ((v76)(v62, 1, v57) == 1)
  {
    v64 = v82;
    sub_1C6EE43D0();
    sub_1C6ECEC10(v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
    v65 = v57;
    if (v63(v62, 1, v57) != 1)
    {
      sub_1C6ECEEAC(v62, &qword_1EC1F7D48, &qword_1C6EE8990);
    }
  }

  else
  {
    sub_1C6ECEC10(v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
    v64 = v82;
    (*(v87 + 32))(v82, v62, v57);
    v65 = v57;
  }

  v66 = v84;
  sub_1C6EE43B0();
  (v78)(v64, v65);
  v67 = v89;
  v68 = sub_1C6EE4270();
  v69 = *(v85 + 8);
  v70 = v66;
  v71 = v86;
  v69(v70, v86);
  v69(v67, v71);
  sub_1C6ECEC10(v88, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
  sub_1C6ECEC10(v81, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
  return v68 & 1;
}

uint64_t sub_1C6EC3220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D48, &qword_1C6EE8990);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v55 = &v50 - v8;
  v9 = sub_1C6EE43E0();
  v56 = *(v9 - 8);
  v10 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D58, &qword_1C6EE89A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v51 = &v50 - v15;
  v52 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0);
  v16 = *(v52 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7780, &unk_1C6EE6930);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v50 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9868, &unk_1C6EF6B40);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v50 - v25;
  v27 = OBJC_IVAR____TtCC18ComputationalGraph13FeaturesStore17FeaturesStoreData_store;
  swift_beginAccess();
  v28 = *(v3 + v27);
  if (*(v28 + 16) && (v29 = sub_1C6DEC784(a1, a2), (v30 & 1) != 0))
  {
    v31 = v29;
    v32 = *(v28 + 56);
    v33 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
    v34 = *(v33 - 8);
    v50 = v26;
    v35 = v12;
    v36 = v16;
    v37 = v34;
    sub_1C6ECEC70(v32 + *(v34 + 72) * v31, v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
    (*(v37 + 56))(v22, 0, 1, v33);
    v16 = v36;
    v12 = v35;
    v26 = v50;
  }

  else
  {
    v33 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
    (*(*(v33 - 8) + 56))(v22, 1, 1, v33);
  }

  v39 = v54;
  v38 = v55;
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
  if ((*(*(v33 - 8) + 48))(v22, 1, v33))
  {
    sub_1C6ECEEAC(v22, &qword_1EC1F7780, &unk_1C6EE6930);
    swift_endAccess();
    v40 = sub_1C6EE42C0();
    v41 = *(v40 - 8);
    (*(v41 + 56))(v26, 1, 1, v40);
    sub_1C6EE4250();
    result = (*(v41 + 48))(v26, 1, v40);
    if (result != 1)
    {
      return sub_1C6ECEEAC(v26, &qword_1EC1F9868, &unk_1C6EF6B40);
    }
  }

  else
  {
    v43 = v51;
    sub_1C6ECEE44(&v22[*(v33 + 24)], v51, &qword_1EC1F7D58, &qword_1C6EE89A0);
    v44 = *(v16 + 48);
    v45 = v52;
    if (v44(v43, 1, v52) == 1)
    {
      *v39 = 0;
      v46 = &v39[*(v45 + 20)];
      sub_1C6EE4420();
      (*(v56 + 56))(&v39[*(v45 + 24)], 1, 1, v9);
      if (v44(v43, 1, v45) != 1)
      {
        sub_1C6ECEEAC(v43, &qword_1EC1F7D58, &qword_1C6EE89A0);
      }
    }

    else
    {
      sub_1C6ECEF0C(v43, v39, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
    }

    sub_1C6ECEE44(&v39[*(v45 + 24)], v38, &qword_1EC1F7D48, &qword_1C6EE8990);
    v47 = *(v56 + 48);
    if (v47(v38, 1, v9) == 1)
    {
      sub_1C6EE43D0();
      sub_1C6ECEC10(v39, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
      if (v47(v38, 1, v9) != 1)
      {
        sub_1C6ECEEAC(v38, &qword_1EC1F7D48, &qword_1C6EE8990);
      }
    }

    else
    {
      sub_1C6ECEC10(v39, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
      (*(v56 + 32))(v12, v38, v9);
    }

    sub_1C6ECEEAC(v22, &qword_1EC1F7780, &unk_1C6EE6930);
    swift_endAccess();
    sub_1C6EE43B0();
    (*(v56 + 8))(v12, v9);
    v48 = sub_1C6EE42C0();
    v49 = *(v48 - 8);
    (*(v49 + 56))(v26, 0, 1, v48);
    return (*(v49 + 32))(v53, v26, v48);
  }

  return result;
}

uint64_t sub_1C6EC394C(uint64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v5 = *(v40 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7780, &unk_1C6EE6930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D68, &unk_1C6EE89B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v38 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v38 - v21);
  v23 = OBJC_IVAR____TtCC18ComputationalGraph13FeaturesStore17FeaturesStoreData_store;
  swift_beginAccess();
  v24 = *(v2 + v23);
  if (*(v24 + 16) && (v25 = sub_1C6DEC784(a1, a2), (v26 & 1) != 0))
  {
    v27 = v25;
    v28 = *(v24 + 56);
    v29 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
    v30 = *(v29 - 8);
    v39 = v8;
    v31 = v30;
    sub_1C6ECEC70(v28 + *(v30 + 72) * v27, v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
    (*(v31 + 56))(v12, 0, 1, v29);
    v8 = v39;
  }

  else
  {
    v29 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
    (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
  }

  v32 = v40;
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
  if ((*(*(v29 - 8) + 48))(v12, 1, v29))
  {
    sub_1C6ECEEAC(v12, &qword_1EC1F7780, &unk_1C6EE6930);
    swift_endAccess();
    v33 = 1;
  }

  else
  {
    sub_1C6ECEE44(&v12[*(v29 + 20)], v20, &qword_1EC1F7D68, &unk_1C6EE89B0);
    v34 = *(v5 + 48);
    if (v34(v20, 1, v32) == 1)
    {
      *v22 = sub_1C6E0B978(MEMORY[0x1E69E7CC0]);
      v35 = v22 + *(v32 + 20);
      sub_1C6EE4420();
      if (v34(v20, 1, v32) != 1)
      {
        sub_1C6ECEEAC(v20, &qword_1EC1F7D68, &unk_1C6EE89B0);
      }
    }

    else
    {
      sub_1C6ECEF0C(v20, v22, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    }

    sub_1C6ECEEAC(v12, &qword_1EC1F7780, &unk_1C6EE6930);
    swift_endAccess();
    v33 = 0;
  }

  (*(v5 + 56))(v22, v33, 1, v32);
  sub_1C6ECEE44(v22, v17, &qword_1EC1F7D68, &unk_1C6EE89B0);
  if ((*(v5 + 48))(v17, 1, v32) == 1)
  {
    v36 = 0;
  }

  else
  {
    sub_1C6ECEF0C(v17, v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
    v36 = sub_1C6E29CBC(v8);
    sub_1C6ECEC10(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  }

  sub_1C6ECEEAC(v22, &qword_1EC1F7D68, &unk_1C6EE89B0);
  return v36;
}

uint64_t sub_1C6EC3E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v61 = a2;
  v62 = a4;
  v60 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9860, &qword_1C6EF6B30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v59 = &v53 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A30, &qword_1C6EF6B38);
  v54 = *(v56 - 8);
  v10 = *(v54 + 64);
  v11 = MEMORY[0x1EEE9AC00](v56);
  v58 = (&v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9868, &unk_1C6EF6B40);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v55 = &v53 - v17;
  v18 = sub_1C6EE42C0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v53 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7780, &unk_1C6EE6930);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v53 - v28;
  v30 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v53 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  sub_1C6ECED54(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  sub_1C6EE4600();
  v34 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
  v57 = v33;
  v63 = v33;
  v64 = v62;
  sub_1C6ECED54(&qword_1EDEF6320, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
  sub_1C6EE4600();
  v53 = 0;
  (*(*(v34 - 8) + 56))(v29, 0, 1, v34);
  swift_beginAccess();
  v35 = v60;

  sub_1C6E02148(v29, v61, v35);
  swift_endAccess();
  swift_beginAccess();
  v36 = *(v5 + 56);
  if (*(v36 + 16))
  {
    sub_1C6ECEE44(v36 + ((*(v54 + 80) + 32) & ~*(v54 + 80)), v14, &unk_1EC1F9A30, &qword_1C6EF6B38);
    v37 = *(v14 + 1);

    v38 = v56;
    v39 = *(v56 + 48);
    v40 = v55;
    sub_1C6EE43B0();
    v41 = sub_1C6EE43E0();
    (*(*(v41 - 8) + 8))(&v14[v39], v41);
    (*(v19 + 56))(v40, 0, 1, v18);
    (*(v19 + 32))(v25, v40, v18);
  }

  else
  {
    v42 = v55;
    (*(v19 + 56))(v55, 1, 1, v18);
    sub_1C6EE4250();
    v43 = (*(v19 + 48))(v42, 1, v18);
    v38 = v56;
    if (v43 != 1)
    {
      sub_1C6ECEEAC(v42, &qword_1EC1F9868, &unk_1C6EF6B40);
    }
  }

  v44 = v62;
  sub_1C6EE43B0();
  v45 = sub_1C6EE4280();
  v46 = *(v19 + 8);
  v46(v23, v18);
  v46(v25, v18);
  v47 = *(v38 + 48);
  v48 = v60;
  v49 = v58;
  *v58 = v61;
  *(v49 + 8) = v48;
  v50 = sub_1C6EE43E0();
  (*(*(v50 - 8) + 16))(v49 + v47, v44, v50);
  swift_beginAccess();
  v51 = v59;
  sub_1C6ECEF74(v49, v59, &unk_1EC1F9A30, &qword_1C6EF6B38);

  sub_1C6EC8770(0, 0, v51);
  swift_endAccess();
  if ((v45 & 1) == 0)
  {
    if (qword_1EDEF8458 != -1)
    {
      swift_once();
    }

    sub_1C6EE4ED0();
    sub_1C6EE4730();
    swift_beginAccess();
    sub_1C6EC1F70((v5 + 56));
    swift_endAccess();
  }

  sub_1C6EC4D7C();
  return sub_1C6ECEC10(v57, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
}

void sub_1C6EC457C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6ECEC70(a2, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
  v15 = *(v14 + 20);
  sub_1C6ECEEAC(a1 + v15, &qword_1EC1F7D68, &unk_1C6EE89B0);
  sub_1C6ECEF0C(v13, a1 + v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  (*(v10 + 56))(a1 + v15, 0, 1, v9);
  v25 = v23;
  v26 = a2;
  sub_1C6ECED54(&qword_1EDEF62C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
  v16 = v24;
  sub_1C6EE4600();
  if (v16)
  {
    if (qword_1EDEF8458 != -1)
    {
      swift_once();
    }

    sub_1C6EE4EC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C6EE6590;
    v27 = 0;
    v28 = 0xE000000000000000;
    swift_getErrorValue();
    sub_1C6EE5480();
    v18 = v27;
    v19 = v28;
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1C6DF10E0();
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    sub_1C6EE4730();
  }

  else
  {
    v20 = *(v14 + 24);
    sub_1C6ECEEAC(a1 + v20, &qword_1EC1F7D58, &qword_1C6EE89A0);
    sub_1C6ECEF0C(v8, a1 + v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
    (*(v22 + 56))(a1 + v20, 0, 1, v5);
  }
}

unint64_t sub_1C6EC4908(char *a1, uint64_t a2)
{
  v5 = sub_1C6EE43E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a2, v5);
  v10 = *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0) + 24);
  sub_1C6ECEEAC(&a1[v10], &qword_1EC1F7D48, &qword_1C6EE8990);
  (*(v6 + 32))(&a1[v10], v9, v5);
  (*(v6 + 56))(&a1[v10], 0, 1, v5);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  sub_1C6ECED54(qword_1EDEF7B08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features);
  result = sub_1C6EE45C0();
  if (!v2)
  {
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        result = sub_1C6DF1134(result, v12);
        v15 = 0;
        goto LABEL_12;
      }

      v17 = *(result + 16);
      v16 = *(result + 24);
      result = sub_1C6DF1134(result, v12);
      v15 = v16 - v17;
      if (!__OFSUB__(v16, v17))
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    else if (!v13)
    {
      v14 = BYTE6(v12);
      result = sub_1C6DF1134(result, v12);
      v15 = v14;
LABEL_12:
      *a1 = v15;
      return result;
    }

    v18 = HIDWORD(result);
    v19 = result;
    result = sub_1C6DF1134(result, v12);
    LODWORD(v15) = v18 - v19;
    if (__OFSUB__(v18, v19))
    {
      __break(1u);
      return result;
    }

    v15 = v15;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1C6EC4B1C(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = sub_1C6EE42C0();
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A30, &qword_1C6EF6B38);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - v15;
  sub_1C6ECEE44(a1, &v27 - v15, &unk_1EC1F9A30, &qword_1C6EF6B38);
  v17 = *(v16 + 1);

  v18 = *(v10 + 56);
  sub_1C6EE43B0();
  v19 = sub_1C6EE43E0();
  v20 = *(*(v19 - 8) + 8);
  v20(&v16[v18], v19);
  sub_1C6ECEE44(v28, v14, &unk_1EC1F9A30, &qword_1C6EF6B38);
  v21 = *(v14 + 8);

  v22 = *(v10 + 56);
  v23 = v27;
  sub_1C6EE43B0();
  v20((v14 + v22), v19);
  LOBYTE(v14) = sub_1C6EE4270();
  v24 = v30;
  v25 = *(v29 + 8);
  v25(v23, v30);
  v25(v8, v24);
  return v14 & 1;
}

uint64_t sub_1C6EC4D7C()
{
  if (qword_1EDEF8458 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C6EE6590;
  v2 = OBJC_IVAR____TtCC18ComputationalGraph13FeaturesStore17FeaturesStoreData_store;
  swift_beginAccess();
  v3 = MEMORY[0x1E69E6530];
  v4 = *(*(v0 + v2) + 16);
  v5 = MEMORY[0x1E69E65A8];
  *(v1 + 56) = MEMORY[0x1E69E6530];
  *(v1 + 64) = v5;
  *(v1 + 32) = v4;
  sub_1C6EE4EE0();
  sub_1C6EE4730();

  sub_1C6EC4F00();
  sub_1C6EC5934();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C6EE6590;
  v7 = *(*(v0 + v2) + 16);
  *(v6 + 56) = v3;
  *(v6 + 64) = v5;
  *(v6 + 32) = v7;
  sub_1C6EE4EE0();
  sub_1C6EE4730();
}

uint64_t sub_1C6EC4F00()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7780, &unk_1C6EE6930);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v94 = &v93 - v4;
  v104 = sub_1C6EE42C0();
  v5 = *(v104 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A30, &qword_1C6EF6B38);
  v102 = *(v106 - 8);
  v8 = *(v102 + 64);
  v9 = MEMORY[0x1EEE9AC00](v106);
  v99 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v105 = &v93 - v11;
  if (qword_1EDEF8458 != -1)
  {
LABEL_38:
    swift_once();
  }

  v12 = qword_1EDEF8460;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v13 = swift_allocObject();
  v95 = xmmword_1C6EE6590;
  *(v13 + 16) = xmmword_1C6EE6590;
  v112 = 0;
  v113 = 0xE000000000000000;
  v14 = *(v1 + 40);
  v15 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v14);
  (*(v15 + 32))(v14, v15);
  sub_1C6EE4DD0();
  v16 = v112;
  v17 = v113;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v97 = sub_1C6DF10E0();
  *(v13 + 64) = v97;
  *(v13 + 32) = v16;
  *(v13 + 40) = v17;
  sub_1C6EE4EE0();
  v98 = v12;
  sub_1C6EE4730();

  swift_beginAccess();
  v107 = v1;
  v18 = *(*(v1 + 56) + 16);

  v101 = v18;
  if (!v18)
  {
LABEL_7:

    v33 = swift_allocObject();
    *(v33 + 16) = v95;
    v110 = 0;
    v111 = 0xE000000000000000;
    v34 = v107[5];
    v35 = v107[6];
    __swift_project_boxed_opaque_existential_1(v107 + 2, v34);
    (*(v35 + 32))(v34, v35);
    sub_1C6EE4DD0();
    v36 = v110;
    v37 = v111;
    v38 = v97;
    *(v33 + 56) = MEMORY[0x1E69E6158];
    *(v33 + 64) = v38;
    *(v33 + 32) = v36;
    *(v33 + 40) = v37;
    sub_1C6EE4EE0();
LABEL_34:
    sub_1C6EE4730();
  }

  v20 = 0;
  v100 = (v5 + 8);
  v21 = 1;
  while (1)
  {
    if (v20 >= *(v19 + 16))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v108 = v21;
    v22 = (*(v102 + 80) + 32) & ~*(v102 + 80);
    v23 = v19;
    v5 = *(v102 + 72);
    v24 = v105;
    sub_1C6ECEE44(v19 + v22 + v5 * v20, v105, &unk_1EC1F9A30, &qword_1C6EF6B38);
    v25 = v24 + *(v106 + 48);
    v26 = v103;
    sub_1C6EE43B0();
    sub_1C6EE4290();
    v28 = v27;
    (*v100)(v26, v104);
    v29 = -v28;
    v30 = v107;
    v1 = v107[5];
    v31 = v107[6];
    __swift_project_boxed_opaque_existential_1(v107 + 2, v1);
    v32 = (*(v31 + 32))(v1, v31);
    sub_1C6ECEEAC(v24, &unk_1EC1F9A30, &qword_1C6EF6B38);
    if (v32 <= v29)
    {
      break;
    }

    ++v20;
    v21 = v108 + 2;
    v19 = v23;
    if (v101 == v20)
    {
      goto LABEL_7;
    }
  }

  v102 = v22;

  v40 = v30[7];
  v103 = v20;
  v104 = v40;
  v41 = *(v40 + 16);
  v1 = &v41[-v20];
  if (v41 < v20)
  {
    __break(1u);
    goto LABEL_40;
  }

  v42 = MEMORY[0x1E69E7CC0];
  if (v41 == v20)
  {
LABEL_17:
    v105 = v42;
    v54 = *(v42 + 16);
    v55 = OBJC_IVAR____TtCC18ComputationalGraph13FeaturesStore17FeaturesStoreData_store;
    v5 = v94;
    if (v54)
    {
      v56 = 0;
      v57 = (v105 + 40);
      v104 = v54;
      while (v56 < *(v105 + 16))
      {
        v62 = *(v57 - 1);
        v61 = *v57;
        swift_beginAccess();
        v63 = *(v30 + v55);

        v106 = v62;
        v107 = v61;
        v64 = sub_1C6DEC784(v62, v61);
        if (v65)
        {
          v66 = v64;
          v67 = *(v30 + v55);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v69 = v55;
          v70 = *(v30 + v55);
          v109 = v70;
          *(v30 + v69) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1C6E0A74C();
            v70 = v109;
          }

          v71 = *(*(v70 + 48) + 16 * v66 + 8);

          v72 = *(v70 + 56);
          v73 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
          v74 = *(v73 - 8);
          v75 = v72 + *(v74 + 72) * v66;
          v5 = v94;
          sub_1C6ECEF0C(v75, v94, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
          sub_1C6ECE140(v66, v70);
          v76 = *(v30 + v69);
          *(v30 + v69) = v70;

          v77 = *(v74 + 56);
          v1 = v74 + 56;
          v77(v5, 0, 1, v73);
          v55 = v69;
          v54 = v104;
        }

        else
        {
          v73 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
          (*(*(v73 - 8) + 56))(v5, 1, 1, v73);
        }

        swift_endAccess();
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
        if ((*(*(v73 - 8) + 48))(v5, 1, v73) == 1)
        {
          sub_1C6ECEEAC(v5, &qword_1EC1F7780, &unk_1C6EE6930);
          sub_1C6EE4ED0();
          v58 = swift_allocObject();
          *(v58 + 16) = v95;
          v59 = v97;
          *(v58 + 56) = MEMORY[0x1E69E6158];
          *(v58 + 64) = v59;
          v60 = v107;
          *(v58 + 32) = v106;
          *(v58 + 40) = v60;

          sub_1C6EE4730();
        }

        else
        {

          sub_1C6ECEEAC(v5, &qword_1EC1F7780, &unk_1C6EE6930);
        }

        ++v56;
        v57 += 2;
        if (v54 == v56)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_36;
    }

LABEL_29:
    result = v30[7];
    v78 = *(result + 16);
    if (v78 >= v103)
    {
      if (v78 == v103)
      {
      }

      else
      {
        sub_1C6EC8EB8(result, result + v102, 0, v108);
        v80 = v79;
        v81 = v30[7];
      }

      v30[7] = v80;

      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_1C6EE65B0;
      v83 = MEMORY[0x1E69E6530];
      v84 = v105;
      v85 = *(v105 + 16);
      v86 = MEMORY[0x1E69E65A8];
      *(v82 + 56) = MEMORY[0x1E69E6530];
      *(v82 + 64) = v86;
      *(v82 + 32) = v85;
      swift_beginAccess();
      v87 = *(*(v30 + v55) + 16);
      *(v82 + 96) = v83;
      *(v82 + 104) = v86;
      *(v82 + 72) = v87;
      v88 = MEMORY[0x1E69E6158];
      v89 = MEMORY[0x1CCA580B0](v84, MEMORY[0x1E69E6158]);
      v91 = v90;

      v92 = v97;
      *(v82 + 136) = v88;
      *(v82 + 144) = v92;
      *(v82 + 112) = v89;
      *(v82 + 120) = v91;
      sub_1C6EE4EE0();
      goto LABEL_34;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v110 = MEMORY[0x1E69E7CC0];
  v43 = v104;

  result = sub_1C6E15A10(0, v1 & ~(v1 >> 63), 0);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v42 = v110;
    v44 = v5;
    v45 = v43 + v102 + v5 * v103;
    while (v1)
    {
      v46 = v105;
      sub_1C6ECEE44(v45, v105, &unk_1EC1F9A30, &qword_1C6EF6B38);
      v47 = v99;
      sub_1C6ECEF74(v46, v99, &unk_1EC1F9A30, &qword_1C6EF6B38);
      v49 = *v47;
      v48 = *(v47 + 1);
      v50 = *(v106 + 48);
      v51 = sub_1C6EE43E0();
      (*(*(v51 - 8) + 8))(&v47[v50], v51);
      v110 = v42;
      v5 = *(v42 + 16);
      v52 = *(v42 + 24);
      if (v5 >= v52 >> 1)
      {
        sub_1C6E15A10((v52 > 1), v5 + 1, 1);
        v42 = v110;
      }

      *(v42 + 16) = v5 + 1;
      v53 = v42 + 16 * v5;
      *(v53 + 32) = v49;
      *(v53 + 40) = v48;
      v45 += v44;
      --v1;
      v30 = v107;
      if (!v1)
      {

        goto LABEL_17;
      }
    }

    goto LABEL_37;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1C6EC5934()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7780, &unk_1C6EE6930);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v114 = &v103 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D58, &qword_1C6EE89A0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v105 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v108 = &v103 - v9;
  v113 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0);
  v10 = *(v113 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v113);
  v14 = (&v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v107 = (&v103 - v15);
  v118 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
  v115 = *(v118 - 8);
  v16 = v115[8];
  v17 = MEMORY[0x1EEE9AC00](v118);
  v106 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v103 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A30, &qword_1C6EF6B38);
  v22 = *(v21 - 8);
  v125 = v21;
  v126 = v22;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v116 = (&v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x1EEE9AC00](v24);
  v124 = (&v103 - v27);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v103 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v123 = &v103 - v31;
  if (qword_1EDEF8458 != -1)
  {
LABEL_46:
    swift_once();
  }

  v32 = qword_1EDEF8460;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v33 = swift_allocObject();
  v127 = xmmword_1C6EE6590;
  *(v33 + 16) = xmmword_1C6EE6590;
  v34 = v1[5];
  v35 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v34);
  v36 = (*(v35 + 24))(v34, v35);
  v37 = MEMORY[0x1E69E65A8];
  *(v33 + 56) = MEMORY[0x1E69E6530];
  *(v33 + 64) = v37;
  *(v33 + 32) = v36;
  sub_1C6EE4EE0();
  v129 = v32;
  sub_1C6EE4730();

  swift_beginAccess();
  v38 = v1[7];
  v39 = *(v38 + 16);
  if (!v39)
  {
    v40 = 0;
LABEL_40:
    if (v39 == v40)
    {
    }

    else
    {
      sub_1C6EC8EB8(v38, v38 + ((*(v126 + 80) + 32) & ~*(v126 + 80)), 0, (2 * v40) | 1);
      v99 = v1[7];
    }

    v1[7] = v98;

    v100 = swift_allocObject();
    *(v100 + 16) = v127;
    v101 = OBJC_IVAR____TtCC18ComputationalGraph13FeaturesStore17FeaturesStoreData_store;
    swift_beginAccess();
    v102 = *(*(v1 + v101) + 16);
    *(v100 + 56) = MEMORY[0x1E69E6530];
    *(v100 + 64) = MEMORY[0x1E69E65A8];
    *(v100 + 32) = v102;
    sub_1C6EE4EE0();
    sub_1C6EE4730();
  }

  v122 = *(v125 + 48);
  v121 = OBJC_IVAR____TtCC18ComputationalGraph13FeaturesStore17FeaturesStoreData_store;
  v104 = (*(v126 + 80) + 32) & ~*(v126 + 80);
  v120 = v38 + v104;

  v40 = 0;
  v117 = 0;
  v135 = v1;
  v112 = v20;
  v119 = v39;
  v111 = (v10 + 48);
  v133 = v38;
  while (1)
  {
    if (v40 >= *(v38 + 16))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v42 = v14;
    v132 = *(v126 + 72);
    v43 = v123;
    v1 = &qword_1C6EF6B38;
    sub_1C6ECEE44(v120 + v132 * v40, v123, &unk_1EC1F9A30, &qword_1C6EF6B38);
    v44 = *(v43 + 1);
    v45 = v125;
    v46 = *(v125 + 48);
    *v30 = *v43;
    *(v30 + 1) = v44;
    v47 = sub_1C6EE43E0();
    v10 = *(v47 - 8);
    (*(v10 + 32))(&v30[v46], &v43[v122], v47);
    v48 = v124;
    sub_1C6ECEE44(v30, v124, &unk_1EC1F9A30, &qword_1C6EF6B38);
    v49 = *v48;
    v50 = v48[1];
    v51 = *(v10 + 8);
    v52 = v48 + *(v45 + 48);
    v134 = v47;
    v130 = v51;
    v131 = v10 + 8;
    v51(v52, v47);
    v53 = v135;
    v20 = v121;
    swift_beginAccess();
    v54 = *(v20 + v53);
    if (!*(v54 + 16) || (v55 = sub_1C6DEC784(v49, v50), (v56 & 1) == 0))
    {
      swift_endAccess();
      sub_1C6EE4ED0();
      v10 = swift_allocObject();
      *(v10 + 16) = v127;
      *(v10 + 56) = MEMORY[0x1E69E6158];
      *(v10 + 64) = sub_1C6DF10E0();
      *(v10 + 32) = v49;
      *(v10 + 40) = v50;
      sub_1C6EE4730();

      sub_1C6ECEEAC(v30, &unk_1EC1F9A30, &qword_1C6EF6B38);
      v14 = v42;
      v38 = v133;
      goto LABEL_5;
    }

    v57 = *(v54 + 56) + v115[9] * v55;
    v58 = v106;
    sub_1C6ECEC70(v57, v106, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
    v59 = v58;
    v60 = v112;
    sub_1C6ECEF0C(v59, v112, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
    swift_endAccess();

    v109 = *(v118 + 24);
    v61 = v60 + v109;
    v62 = v108;
    sub_1C6ECEE44(v61, v108, &qword_1EC1F7D58, &qword_1C6EE89A0);
    v63 = *v111;
    v64 = v113;
    v65 = (*v111)(v62, 1, v113);
    v14 = v42;
    v110 = v63;
    if (v65 == 1)
    {
      v20 = v107;
      *v107 = 0;
      v66 = v20 + *(v64 + 20);
      sub_1C6EE4420();
      (*(v10 + 56))(v20 + *(v64 + 24), 1, 1, v134);
      v67 = (v63)(v62, 1, v64);
      v38 = v133;
      if (v67 != 1)
      {
        sub_1C6ECEEAC(v62, &qword_1EC1F7D58, &qword_1C6EE89A0);
      }
    }

    else
    {
      v20 = v107;
      sub_1C6ECEF0C(v62, v107, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
      v38 = v133;
    }

    v68 = *v20;
    sub_1C6ECEC10(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
    v1 = (v117 + v68);
    if (__OFADD__(v117, v68))
    {
      goto LABEL_45;
    }

    v69 = v135[5];
    v70 = v135[6];
    __swift_project_boxed_opaque_existential_1(v135 + 2, v69);
    if ((*(v70 + 24))(v69, v70) < v1)
    {

      sub_1C6ECEC10(v112, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
      result = sub_1C6ECEEAC(v30, &unk_1EC1F9A30, &qword_1C6EF6B38);
      goto LABEL_25;
    }

    v20 = v112;
    v71 = v105;
    sub_1C6ECEE44(v112 + v109, v105, &qword_1EC1F7D58, &qword_1C6EE89A0);
    v72 = v113;
    v1 = v110;
    if ((v110)(v71, 1, v113) == 1)
    {
      *v14 = 0;
      v73 = v14 + *(v72 + 20);
      sub_1C6EE4420();
      sub_1C6ECEC10(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
      sub_1C6ECEEAC(v30, &unk_1EC1F9A30, &qword_1C6EF6B38);
      v74 = *(v10 + 56);
      v10 += 56;
      v74(v14 + *(v72 + 24), 1, 1, v134);
      if ((v1)(v71, 1, v72) != 1)
      {
        sub_1C6ECEEAC(v71, &qword_1EC1F7D58, &qword_1C6EE89A0);
      }
    }

    else
    {
      sub_1C6ECEC10(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
      sub_1C6ECEEAC(v30, &unk_1EC1F9A30, &qword_1C6EF6B38);
      sub_1C6ECEF0C(v71, v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
    }

    v41 = *v14;
    sub_1C6ECEC10(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
    v75 = __OFADD__(v117, v41);
    v117 += v41;
    if (v75)
    {
      break;
    }

LABEL_5:
    ++v40;
    v41 = v119;
    if (v119 == v40)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_22:

  v40 = v41;
LABEL_25:
  v1 = v135;
  v38 = v135[7];
  v77 = *(v38 + 16);
  if (v77 < v40)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v77 == v40)
  {
LABEL_39:
    v39 = *(v38 + 16);
    if (v39 >= v40)
    {
      goto LABEL_40;
    }

    goto LABEL_48;
  }

  v78 = v77 - v40;
  if (v77 > v40)
  {
    v125 = *(v125 + 48);
    v79 = OBJC_IVAR____TtCC18ComputationalGraph13FeaturesStore17FeaturesStoreData_store;
    v123 = (v115 + 6);
    v124 = v115 + 7;

    v80 = v38 + v104 + v40 * v132;
    v81 = v116;
    v133 = v38;
    do
    {
      v83 = v114;
      sub_1C6ECEE44(v80, v81, &unk_1EC1F9A30, &qword_1C6EF6B38);
      v84 = *v81;
      v85 = v81[1];
      v86 = v135;
      swift_beginAccess();
      v87 = *(v86 + v79);
      v88 = sub_1C6DEC784(v84, v85);
      if (v89)
      {
        v90 = v88;
        v91 = *(v86 + v79);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v93 = *(v86 + v79);
        v136 = v93;
        *(v86 + v79) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1C6E0A74C();
          v93 = v136;
        }

        v94 = *(*(v93 + 48) + 16 * v90 + 8);

        sub_1C6ECEF0C(*(v93 + 56) + v115[9] * v90, v83, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
        sub_1C6ECE140(v90, v93);
        v95 = *(v86 + v79);
        *(v86 + v79) = v93;

        v96 = 0;
      }

      else
      {
        v96 = 1;
      }

      v97 = v118;
      (*v124)(v83, v96, 1, v118);
      swift_endAccess();
      if ((*v123)(v83, 1, v97) == 1)
      {
        sub_1C6ECEEAC(v83, &qword_1EC1F7780, &unk_1C6EE6930);
        sub_1C6EE4ED0();
        v82 = swift_allocObject();
        *(v82 + 16) = v127;
        *(v82 + 56) = MEMORY[0x1E69E6158];
        *(v82 + 64) = sub_1C6DF10E0();
        *(v82 + 32) = v84;
        *(v82 + 40) = v85;
        sub_1C6EE4730();
      }

      else
      {

        sub_1C6ECEEAC(v83, &qword_1EC1F7780, &unk_1C6EE6930);
      }

      v81 = v116;
      v130(v116 + v125, v134);
      v80 += v132;
      --v78;
    }

    while (v78);

    v1 = v135;
    v38 = v135[7];
    goto LABEL_39;
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1C6EC6794()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  sub_1C6ECEC10(v0 + OBJC_IVAR____TtCC18ComputationalGraph13FeaturesStore17FeaturesStoreData_store, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesStore);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C6EC681C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtCC18ComputationalGraph13FeaturesStore17FeaturesStoreData_store;
  swift_beginAccess();
  v3 = *(v1 + v2);

  return sub_1C6E0D450(v4);
}

uint64_t sub_1C6EC68B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1C6EE42C0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1C6EE43E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  sub_1C6EE42B0();
  sub_1C6EE43C0();
  sub_1C6EC3E24(a1, a2, a3, v13);
  return (*(v10 + 8))(v13, v9);
}

void sub_1C6EC69F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v74 = a3;
  v5 = v4;
  v76 = a1;
  v77 = a4;
  v79 = a2;
  v66 = sub_1C6EE3ED0();
  v65 = *(v66 - 8);
  v6 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v73 = &v64 - v10;
  v11 = sub_1C6EE41A0();
  v80 = *(v11 - 8);
  v81 = v11;
  v12 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C6EE4F20();
  v71 = *(v14 - 8);
  v72 = v14;
  v15 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v70 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C6EE4F00();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = sub_1C6EE48C0();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F98A8, &qword_1C6EF6BA8);
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  *(v21 + 16) = 0;
  v4[4] = v21;
  v69 = OBJC_IVAR____TtC18ComputationalGraph13FeaturesStore_writeQueue;
  v22 = sub_1C6DEC5E8();
  v67 = "Keys should not be requested";
  v68 = v22;
  sub_1C6EE48A0();
  v82 = MEMORY[0x1E69E7CC0];
  sub_1C6ECED54(&qword_1EDEF6770, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7FE8, &qword_1C6EE9E10);
  sub_1C6DEC6D0(&qword_1EDEF67A8, &qword_1EC1F7FE8, &qword_1C6EE9E10);
  sub_1C6EE50C0();
  (*(v71 + 104))(v70, *MEMORY[0x1E69E8090], v72);
  v23 = v73;
  v24 = v77;
  v25 = sub_1C6EE4F50();
  v27 = v80;
  v26 = v81;
  *(v5 + v69) = v25;
  v5[3] = v74;
  swift_unknownObjectWeakAssign();
  sub_1C6ECEE44(v24, v5 + OBJC_IVAR____TtC18ComputationalGraph13FeaturesStore_url, &unk_1EC1F9AB0, &qword_1C6EE9250);
  sub_1C6ECEE44(v24, v23, &unk_1EC1F9AB0, &qword_1C6EE9250);
  if ((*(v27 + 48))(v23, 1, v26) != 1)
  {
    (*(v27 + 32))(v78, v23, v26);
    v32 = v75;
    v33 = sub_1C6EE41C0();
    if (v32)
    {
      v43 = v32;
      v44 = v64;
      sub_1C6EE3EC0();
      sub_1C6ECED54(&qword_1EDEF66E8, MEMORY[0x1E6967E70]);
      v45 = v66;
      v46 = sub_1C6EE4030();

      (*(v65 + 8))(v44, v45);
      if (v46)
      {

        if (qword_1EDEF8458 != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_1C6EE6590;
        sub_1C6ECED54(qword_1EDEF8FC0, MEMORY[0x1E6968FB0]);
        v48 = v81;
        v49 = sub_1C6EE5460();
        v51 = v50;
        *(v47 + 56) = MEMORY[0x1E69E6158];
        *(v47 + 64) = sub_1C6DF10E0();
        *(v47 + 32) = v49;
        *(v47 + 40) = v51;
        sub_1C6EE4EE0();
        sub_1C6EE4730();

        v53 = v5[4];
        MEMORY[0x1EEE9AC00](v52);
        v30 = v76;
        *(&v64 - 2) = v76;
        os_unfair_lock_lock((v53 + 24));
        sub_1C6ECED9C((v53 + 16));
        os_unfair_lock_unlock((v53 + 24));
        swift_unknownObjectRelease();
        sub_1C6ECEEAC(v24, &unk_1EC1F9AB0, &qword_1C6EE9250);
        (*(v80 + 8))(v78, v48);
        goto LABEL_16;
      }

      v75 = v5;
      if (qword_1EDEF8458 != -1)
      {
        swift_once();
      }

      v74 = qword_1EDEF8460;
      LODWORD(v73) = sub_1C6EE4ED0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1C6EE6B40;
      sub_1C6ECED54(qword_1EDEF8FC0, MEMORY[0x1E6968FB0]);
      v55 = v78;
      v56 = v81;
      v57 = sub_1C6EE5460();
      v59 = v58;
      v60 = MEMORY[0x1E69E6158];
      *(v54 + 56) = MEMORY[0x1E69E6158];
      v61 = sub_1C6DF10E0();
      *(v54 + 64) = v61;
      *(v54 + 32) = v57;
      *(v54 + 40) = v59;
      v82 = 0;
      v83 = 0xE000000000000000;
      swift_getErrorValue();
      sub_1C6EE5480();
      v62 = v82;
      v63 = v83;
      *(v54 + 96) = v60;
      *(v54 + 104) = v61;
      *(v54 + 72) = v62;
      *(v54 + 80) = v63;
      sub_1C6EE4730();
      swift_unknownObjectRelease();

      sub_1C6ECEEAC(v77, &unk_1EC1F9AB0, &qword_1C6EE9250);
      (*(v80 + 8))(v55, v56);
    }

    else
    {
      v35 = v33;
      v36 = v34;
      if (qword_1EDEF8458 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1C6EE6590;
      sub_1C6ECED54(qword_1EDEF8FC0, MEMORY[0x1E6968FB0]);
      v38 = sub_1C6EE5460();
      v40 = v39;
      *(v37 + 56) = MEMORY[0x1E69E6158];
      *(v37 + 64) = sub_1C6DF10E0();
      *(v37 + 32) = v38;
      *(v37 + 40) = v40;
      sub_1C6EE4EE0();
      sub_1C6EE4730();

      v42 = v5[4];
      MEMORY[0x1EEE9AC00](v41);
      *(&v64 - 4) = v76;
      *(&v64 - 3) = v35;
      *(&v64 - 2) = v36;

      os_unfair_lock_lock((v42 + 24));
      sub_1C6ECEDB8((v42 + 16));
      os_unfair_lock_unlock((v42 + 24));
      swift_unknownObjectRelease();
      sub_1C6DF1134(v35, v36);
      sub_1C6ECEEAC(v24, &unk_1EC1F9AB0, &qword_1C6EE9250);
      (*(v80 + 8))(v78, v81);
    }

    v30 = v76;
LABEL_16:
    __swift_destroy_boxed_opaque_existential_1(v30);
    return;
  }

  v28 = sub_1C6ECEEAC(v23, &unk_1EC1F9AB0, &qword_1C6EE9250);
  v29 = v5[4];
  MEMORY[0x1EEE9AC00](v28);
  v30 = v76;
  *(&v64 - 2) = v76;
  os_unfair_lock_lock((v29 + 24));
  v31 = v75;
  sub_1C6ECEFDC((v29 + 16));
  if (!v31)
  {
    os_unfair_lock_unlock((v29 + 24));
    swift_unknownObjectRelease();
    sub_1C6ECEEAC(v24, &unk_1EC1F9AB0, &qword_1C6EE9250);
    goto LABEL_16;
  }

  os_unfair_lock_unlock((v29 + 24));
  __break(1u);
}

uint64_t sub_1C6EC7524(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = sub_1C6EE4450();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesStore(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6ECEDD8(a2, v25);
  v23 = a3;
  v24 = a4;
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  sub_1C6E00D18(a3, a4);
  sub_1C6EE4440();
  sub_1C6ECED54(&qword_1EDEF62F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesStore);
  sub_1C6EE45D0();
  if (v4)
  {
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v16 = *a1;

  v17 = type metadata accessor for FeaturesStore.FeaturesStoreData(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  result = sub_1C6EC2060(v25, v14);
  *a1 = v20;
  return result;
}

uint64_t sub_1C6EC76E8(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesStore(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;

  sub_1C6ECEDD8(a2, v17);
  *v8 = sub_1C6E0CA44(MEMORY[0x1E69E7CC0]);
  v10 = v8 + *(v5 + 28);
  sub_1C6EE4420();
  v11 = type metadata accessor for FeaturesStore.FeaturesStoreData(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  result = sub_1C6EC2060(v17, v8);
  *a1 = v14;
  return result;
}

uint64_t sub_1C6EC77CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9868, &unk_1C6EF6B40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17 - v10;
  if (*a1)
  {
    sub_1C6EC3220(a2, a3, &v17 - v10);
    v12 = sub_1C6EE42C0();
    v13 = *(v12 - 8);
    (*(v13 + 56))(v11, 0, 1, v12);
    return (*(v13 + 32))(a4, v11, v12);
  }

  else
  {
    v15 = sub_1C6EE42C0();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v11, 1, 1, v15);
    sub_1C6EE4250();
    result = (*(v16 + 48))(v11, 1, v15);
    if (result != 1)
    {
      return sub_1C6ECEEAC(v11, &qword_1EC1F9868, &unk_1C6EF6B40);
    }
  }

  return result;
}

uint64_t sub_1C6EC79A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*a1)
  {
    v7 = *a1;

    v8 = sub_1C6EC394C(a2, a3);
  }

  else
  {
    if (qword_1EDEF8458 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C6EE6590;
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = sub_1C6DF10E0();
    *(v10 + 32) = a2;
    *(v10 + 40) = a3;

    sub_1C6EE4EE0();
    sub_1C6EE4730();

    v8 = 0;
  }

  *a4 = v8;
  return result;
}

void sub_1C6EC7AD8()
{
  v1 = v0[4];
  v2 = *v0;
  os_unfair_lock_lock((v1 + 24));
  sub_1C6EC874C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1C6EC7B58(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a5;
  v32 = a3;
  v29 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AB0, &qword_1C6EE9250);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v29 - v9;
  v11 = sub_1C6EE41A0();
  v30 = *(v11 - 8);
  v12 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C6EE42C0();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = sub_1C6EE43E0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  if (v22)
  {

    sub_1C6EE42B0();
    sub_1C6EE43C0();
    sub_1C6EC3E24(v29, a2, v32, v21);
    (*(v18 + 8))(v21, v17);
    v23 = v31;
    sub_1C6ECEE44(v31 + OBJC_IVAR____TtC18ComputationalGraph13FeaturesStore_url, v10, &unk_1EC1F9AB0, &qword_1C6EE9250);
    v24 = v30;
    if ((*(v30 + 48))(v10, 1, v11) == 1)
    {

      return sub_1C6ECEEAC(v10, &unk_1EC1F9AB0, &qword_1C6EE9250);
    }

    else
    {
      (*(v24 + 32))(v14, v10, v11);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1C6ECE40C(Strong, *(v23 + 24), *(v23 + OBJC_IVAR____TtC18ComputationalGraph13FeaturesStore_writeQueue), v22, v14);
      swift_unknownObjectRelease();

      return (*(v24 + 8))(v14, v11);
    }
  }

  else
  {
    v26 = v32;
    if (qword_1EDEF8458 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1C6EE6590;
    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = sub_1C6DF10E0();
    *(v27 + 32) = a2;
    *(v27 + 40) = v26;

    sub_1C6EE4EE0();
    sub_1C6EE4730();
  }
}

uint64_t sub_1C6EC7F34(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EDEF8458 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C6EE6590;
  sub_1C6EE41A0();
  sub_1C6ECED54(qword_1EDEF8FC0, MEMORY[0x1E6968FB0]);
  v7 = sub_1C6EE5460();
  v9 = v8;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1C6DF10E0();
  *(v6 + 64) = v10;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  sub_1C6EE4EE0();
  sub_1C6EE4730();

  sub_1C6EE4230();
  v11 = MEMORY[0x1E69E6158];
  if (a4)
  {
    ObjectType = swift_getObjectType();
    (*(a5 + 8))(ObjectType);
  }

  result = swift_allocObject();
  v14 = result;
  *(result + 16) = xmmword_1C6EE6B40;
  v15 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v15 != 2)
    {
      v16 = 0;
      goto LABEL_14;
    }

    v18 = *(a2 + 16);
    v17 = *(a2 + 24);
    v16 = v17 - v18;
    if (!__OFSUB__(v17, v18))
    {
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (v15)
  {
    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      v16 = HIDWORD(a2) - a2;
      goto LABEL_14;
    }

LABEL_18:
    __break(1u);
    return result;
  }

  v16 = BYTE6(a3);
LABEL_14:
  v19 = v11;
  v20 = [objc_opt_self() stringFromByteCount:v16 countStyle:0];
  v21 = sub_1C6EE4A90();
  v23 = v22;

  v14[7] = v19;
  v14[8] = v10;
  v14[4] = v21;
  v14[5] = v23;
  v24 = sub_1C6EE5460();
  v14[12] = v19;
  v14[13] = v10;
  v14[9] = v24;
  v14[10] = v25;
  sub_1C6EE4EE0();
  sub_1C6EE4730();
}

uint64_t sub_1C6EC82D0()
{
  sub_1C6ECED2C((v0 + 2));
  v1 = v0[4];

  sub_1C6ECEEAC(v0 + OBJC_IVAR____TtC18ComputationalGraph13FeaturesStore_url, &unk_1EC1F9AB0, &qword_1C6EE9250);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C6EC8394()
{
  result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesStore(319);
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

uint64_t sub_1C6EC843C()
{
  v1 = *(*v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = OBJC_IVAR____TtCC18ComputationalGraph13FeaturesStore17FeaturesStoreData_store;
    swift_beginAccess();
    v4 = *(v2 + v3);

    v6 = sub_1C6E0D450(v5);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CD0];
  }

  os_unfair_lock_unlock((v1 + 24));
  return v6;
}

uint64_t sub_1C6EC84C4()
{
  v1 = *(*v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  sub_1C6ECED10((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

void sub_1C6EC8524(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 32);
  os_unfair_lock_lock((v3 + 24));
  sub_1C6ECECF4((v3 + 16), a1);
  os_unfair_lock_unlock((v3 + 24));
}

unint64_t sub_1C6EC8770(unint64_t result, uint64_t a2, uint64_t a3)
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

    v5 = sub_1C6ED98A8(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_1C6EC8904(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1C6EC8844(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 8 * result);
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + 8 * a2);
      if (result != v12 || result >= v12 + 8 * v11)
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, 8 * v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1C6EC8904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A30, &qword_1C6EF6B38);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
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
    return sub_1C6ECEEAC(a4, &qword_1EC1F9860, &qword_1C6EF6B30);
  }

  if (v17 < 1)
  {
    return sub_1C6ECEEAC(a4, &qword_1EC1F9860, &qword_1C6EF6B30);
  }

  result = sub_1C6ECEE44(a4, v15, &unk_1EC1F9A30, &qword_1C6EF6B38);
  if (v12 >= v17)
  {
    return sub_1C6ECEEAC(a4, &qword_1EC1F9860, &qword_1C6EF6B30);
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_1C6EC8A98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 4 * a3), 4 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AC0, &qword_1C6EE6A50);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size_2(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 29;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 2);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1C6EC8B68(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F79C8, &qword_1C6EE6C38);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size_2(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1C6EC8C38(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 4 * a3), 4 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AD0, &qword_1C6EE6C30);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size_2(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 29;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 2);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1C6EC8D08(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F79D0, &qword_1C6EE6C40);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_2(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1C6EC8DE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A60, &qword_1C6EE6950);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_2(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1C6EC8EB8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9870, &unk_1C6EF7590);
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A30, &qword_1C6EF6B38) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_2(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A30, &qword_1C6EF6B38) - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_1C6EC9070(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  result = sub_1C6EE5450();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v14 = sub_1C6EE4D00();
        *(v14 + 16) = v13;
      }

      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
      v16[0] = v14 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v16[1] = v13;
      a4(v16, v17, a1, v12);
      *(v14 + 16) = 0;
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
    return a5(0, v10, 1, a1);
  }

  return result;
}

uint64_t sub_1C6EC91C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77F8, &unk_1C6EE69B0);
  v9 = *(*(v38 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v38);
  v37 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v28 - v17;
  v30 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v35 = -v20;
    v36 = v19;
    v22 = a1 - a3;
    v29 = v20;
    v23 = v19 + v20 * a3;
LABEL_4:
    v33 = v21;
    v34 = a3;
    v31 = v23;
    v32 = v22;
    v24 = v21;
    while (1)
    {
      sub_1C6ECEE44(v23, v18, &qword_1EC1F77F8, &unk_1C6EE69B0);
      sub_1C6ECEE44(v24, v14, &qword_1EC1F77F8, &unk_1C6EE69B0);
      v25 = sub_1C6EC2920(v18, v14);
      sub_1C6ECEEAC(v14, &qword_1EC1F77F8, &unk_1C6EE69B0);
      result = sub_1C6ECEEAC(v18, &qword_1EC1F77F8, &unk_1C6EE69B0);
      if (v4)
      {
        break;
      }

      if (v25)
      {
        if (!v36)
        {
          __break(1u);
          return result;
        }

        v26 = v37;
        sub_1C6ECEF74(v23, v37, &qword_1EC1F77F8, &unk_1C6EE69B0);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1C6ECEF74(v26, v24, &qword_1EC1F77F8, &unk_1C6EE69B0);
        v24 += v35;
        v23 += v35;
        if (!__CFADD__(v22++, 1))
        {
          continue;
        }
      }

      a3 = v34 + 1;
      v21 = v33 + v29;
      v22 = v32 - 1;
      v23 = v31 + v29;
      if (v34 + 1 != v30)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1C6EC9424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = sub_1C6EE42C0();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v62);
  v61 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v48 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A30, &qword_1C6EF6B38);
  v13 = *(*(v63 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v63);
  v57 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v60 = &v48 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v59 = &v48 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v66 = &v48 - v21;
  result = MEMORY[0x1EEE9AC00](v20);
  v65 = &v48 - v24;
  v50 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v26 = *(v23 + 72);
    v58 = (v8 + 8);
    v27 = v25 + v26 * (a3 - 1);
    v55 = -v26;
    v56 = v25;
    v28 = a1 - a3;
    v49 = v26;
    v29 = v25 + v26 * a3;
LABEL_5:
    v53 = v27;
    v54 = a3;
    v51 = v29;
    v52 = v28;
    v64 = v28;
    v30 = v63;
    while (1)
    {
      v31 = v65;
      sub_1C6ECEE44(v29, v65, &unk_1EC1F9A30, &qword_1C6EF6B38);
      v32 = v66;
      sub_1C6ECEE44(v27, v66, &unk_1EC1F9A30, &qword_1C6EF6B38);
      v33 = v59;
      sub_1C6ECEE44(v31, v59, &unk_1EC1F9A30, &qword_1C6EF6B38);
      v34 = *(v33 + 8);

      v35 = *(v30 + 48);
      sub_1C6EE43B0();
      v36 = sub_1C6EE43E0();
      v37 = *(*(v36 - 8) + 8);
      v37(v33 + v35, v36);
      v38 = v60;
      sub_1C6ECEE44(v32, v60, &unk_1EC1F9A30, &qword_1C6EF6B38);
      v39 = *(v38 + 8);

      v40 = *(v30 + 48);
      v41 = v61;
      sub_1C6EE43B0();
      v37(v38 + v40, v36);
      v42 = v67;
      v43 = sub_1C6EE4270();
      v44 = *v58;
      v45 = v62;
      v30 = v63;
      (*v58)(v41, v62);
      v44(v42, v45);
      sub_1C6ECEEAC(v66, &unk_1EC1F9A30, &qword_1C6EF6B38);
      result = sub_1C6ECEEAC(v65, &unk_1EC1F9A30, &qword_1C6EF6B38);
      if ((v43 & 1) == 0)
      {
LABEL_4:
        a3 = v54 + 1;
        v27 = v53 + v49;
        v28 = v52 - 1;
        v29 = v51 + v49;
        if (v54 + 1 == v50)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v56)
      {
        break;
      }

      v46 = v57;
      sub_1C6ECEF74(v29, v57, &unk_1EC1F9A30, &qword_1C6EF6B38);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1C6ECEF74(v46, v27, &unk_1EC1F9A30, &qword_1C6EF6B38);
      v27 += v55;
      v29 += v55;
      if (__CFADD__(v64++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C6EC9890(unint64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v189 = a1;
  v219 = sub_1C6EE42C0();
  v6 = *(v219 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v219);
  v218 = &v184 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v230 = &v184 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D48, &qword_1C6EE8990);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v217 = &v184 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v184 - v15;
  v216 = sub_1C6EE43E0();
  v17 = *(v216 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v216);
  v21 = &v184 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v215 = &v184 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7D58, &qword_1C6EE89A0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v214 = &v184 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v213 = &v184 - v27;
  v232 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata(0);
  v28 = *(v232 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v232);
  v212 = &v184 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v211 = &v184 - v32;
  v229 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0);
  v33 = *(*(v229 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v229);
  v231 = &v184 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v228 = &v184 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77F8, &unk_1C6EE69B0);
  v198 = *(v37 - 8);
  v38 = *(v198 + 64);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v190 = &v184 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v204 = &v184 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v210 = &v184 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v227 = &v184 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v49 = &v184 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47);
  v194 = &v184 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v187 = &v184 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v186 = &v184 - v55;
  result = MEMORY[0x1EEE9AC00](v54);
  v185 = &v184 - v57;
  v200 = a3;
  v58 = *(a3 + 8);
  if (v58 < 1)
  {
    v60 = MEMORY[0x1E69E7CC0];
LABEL_115:
    a3 = *v189;
    if (!*v189)
    {
      goto LABEL_160;
    }

    v6 = v60;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a4 = v201;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_151;
    }

    result = v6;
LABEL_118:
    v233 = result;
    v6 = *(result + 16);
    if (v6 >= 2)
    {
      while (*v200)
      {
        v179 = *(result + 16 * v6);
        v180 = result;
        v181 = *(result + 16 * (v6 - 1) + 40);
        sub_1C6ECBAB8(*v200 + *(v198 + 72) * v179, *v200 + *(v198 + 72) * *(result + 16 * (v6 - 1) + 32), *v200 + *(v198 + 72) * v181, a3);
        if (a4)
        {
        }

        if (v181 < v179)
        {
          goto LABEL_146;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v180 = sub_1C6ECCA74(v180);
        }

        if (v6 - 2 >= *(v180 + 2))
        {
          goto LABEL_147;
        }

        v182 = &v180[16 * v6];
        *v182 = v179;
        *(v182 + 1) = v181;
        v233 = v180;
        sub_1C6ECC9E8(v6 - 1);
        result = v233;
        v6 = *(v233 + 16);
        if (v6 <= 1)
        {
        }
      }

      goto LABEL_157;
    }
  }

  v59 = 0;
  v222 = (v28 + 48);
  v208 = (v17 + 56);
  v226 = (v17 + 48);
  v207 = (v17 + 32);
  v225 = (v17 + 8);
  v206 = (v6 + 8);
  v60 = MEMORY[0x1E69E7CC0];
  v188 = a4;
  v209 = v21;
  v220 = v16;
  v221 = v37;
  while (1)
  {
    v61 = v59;
    v193 = v60;
    if (v59 + 1 >= v58)
    {
      v86 = v59 + 1;
      goto LABEL_25;
    }

    v62 = v59;
    v199 = v58;
    v63 = *v200;
    a3 = *(v198 + 72);
    v64 = *v200 + a3 * (v59 + 1);
    v65 = v185;
    sub_1C6ECEE44(v64, v185, &qword_1EC1F77F8, &unk_1C6EE69B0);
    v66 = v62;
    v224 = v63;
    v67 = v63 + a3 * v62;
    v6 = &qword_1EC1F77F8;
    v68 = v186;
    sub_1C6ECEE44(v67, v186, &qword_1EC1F77F8, &unk_1C6EE69B0);
    v69 = v201;
    LODWORD(v223) = sub_1C6EC2920(v65, v68);
    v201 = v69;
    v70 = v187;
    if (v69)
    {
      sub_1C6ECEEAC(v68, &qword_1EC1F77F8, &unk_1C6EE69B0);
      v183 = v65;
LABEL_129:
      sub_1C6ECEEAC(v183, &qword_1EC1F77F8, &unk_1C6EE69B0);
    }

    sub_1C6ECEEAC(v68, &qword_1EC1F77F8, &unk_1C6EE69B0);
    result = sub_1C6ECEEAC(v65, &qword_1EC1F77F8, &unk_1C6EE69B0);
    v184 = v66;
    v71 = v66 + 2;
    v72 = v224 + a3 * (v66 + 2);
    v73 = a3;
    v224 = a3;
    do
    {
      v86 = v199;
      if (v199 == v71)
      {
        goto LABEL_12;
      }

      sub_1C6ECEE44(v72, v70, &qword_1EC1F77F8, &unk_1C6EE69B0);
      v74 = v194;
      sub_1C6ECEE44(v64, v194, &qword_1EC1F77F8, &unk_1C6EE69B0);
      v75 = v201;
      v76 = sub_1C6EC2920(v70, v74);
      a3 = v70;
      v201 = v75;
      if (v75)
      {
        sub_1C6ECEEAC(v74, &qword_1EC1F77F8, &unk_1C6EE69B0);
        v183 = v70;
        goto LABEL_129;
      }

      v77 = v76;
      v78 = v74;
      v6 = &qword_1EC1F77F8;
      sub_1C6ECEEAC(v78, &qword_1EC1F77F8, &unk_1C6EE69B0);
      result = sub_1C6ECEEAC(a3, &qword_1EC1F77F8, &unk_1C6EE69B0);
      v79 = v223 ^ v77;
      ++v71;
      v73 = v224;
      v72 += v224;
      v64 += v224;
      v70 = a3;
    }

    while ((v79 & 1) == 0);
    v86 = v71 - 1;
LABEL_12:
    a4 = v188;
    v16 = v220;
    v61 = v184;
    if (v223)
    {
      break;
    }

LABEL_25:
    v87 = v200[1];
    if (v86 >= v87)
    {
      goto LABEL_34;
    }

    if (__OFSUB__(v86, v61))
    {
      goto LABEL_150;
    }

    if (v86 - v61 >= a4)
    {
      goto LABEL_34;
    }

    if (__OFADD__(v61, a4))
    {
      __break(1u);
LABEL_153:
      __break(1u);
      goto LABEL_154;
    }

    if (v61 + a4 >= v87)
    {
      v88 = v200[1];
    }

    else
    {
      v88 = v61 + a4;
    }

    a4 = &unk_1C6EE69B0;
    if (v88 < v61)
    {
      goto LABEL_153;
    }

    if (v86 == v88)
    {
LABEL_34:
      v89 = v86;
      if (v86 < v61)
      {
        goto LABEL_149;
      }
    }

    else
    {
      v136 = *v200;
      v137 = *(v198 + 72);
      v138 = *v200 + v137 * (v86 - 1);
      v202 = -v137;
      v184 = v61;
      v139 = v61 - v86;
      v203 = v136;
      v191 = v137;
      v6 = v136 + v86 * v137;
      v205 = v49;
      v192 = v88;
      do
      {
        v199 = v86;
        v195 = v6;
        v196 = v139;
        v140 = v139;
        v197 = v138;
        v141 = v138;
        while (1)
        {
          v223 = v6;
          v224 = v140;
          v142 = v16;
          sub_1C6ECEE44(v6, v49, &qword_1EC1F77F8, &unk_1C6EE69B0);
          v143 = v227;
          sub_1C6ECEE44(v141, v227, &qword_1EC1F77F8, &unk_1C6EE69B0);
          v144 = v49;
          v145 = v210;
          sub_1C6ECEE44(v144, v210, &qword_1EC1F77F8, &unk_1C6EE69B0);
          v146 = *(v145 + 8);

          v147 = v228;
          sub_1C6ECEF0C(v145 + *(v37 + 48), v228, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
          v148 = v222;
          sub_1C6ECEE44(v143, v145, &qword_1EC1F77F8, &unk_1C6EE69B0);
          v149 = *(v145 + 8);

          sub_1C6ECEF0C(v145 + *(v37 + 48), v231, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
          v150 = v213;
          sub_1C6ECEE44(v147 + *(v229 + 24), v213, &qword_1EC1F7D58, &qword_1C6EE89A0);
          v151 = *v148;
          v152 = v232;
          if ((*v148)(v150, 1, v232) == 1)
          {
            v153 = v211;
            *v211 = 0;
            v154 = &v153[*(v152 + 20)];
            sub_1C6EE4420();
            v155 = v216;
            (*v208)(&v153[*(v152 + 24)], 1, 1, v216);
            v156 = v142;
            if (v151(v150, 1, v152) != 1)
            {
              sub_1C6ECEEAC(v150, &qword_1EC1F7D58, &qword_1C6EE89A0);
            }
          }

          else
          {
            v153 = v211;
            sub_1C6ECEF0C(v150, v211, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
            v155 = v216;
            v156 = v142;
          }

          sub_1C6ECEE44(&v153[*(v152 + 24)], v156, &qword_1EC1F7D48, &qword_1C6EE8990);
          v157 = *v226;
          if ((*v226)(v156, 1, v155) == 1)
          {
            v158 = v215;
            sub_1C6EE43D0();
            sub_1C6ECEC10(v153, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
            v159 = v158;
            if (v157(v156, 1, v155) != 1)
            {
              sub_1C6ECEEAC(v156, &qword_1EC1F7D48, &qword_1C6EE8990);
            }
          }

          else
          {
            sub_1C6ECEC10(v153, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
            v159 = v215;
            (*v207)(v215, v156, v155);
          }

          sub_1C6EE43B0();
          v160 = *v225;
          (*v225)(v159, v155);
          v161 = v214;
          sub_1C6ECEE44(v231 + *(v229 + 24), v214, &qword_1EC1F7D58, &qword_1C6EE89A0);
          v162 = v232;
          if (v151(v161, 1, v232) == 1)
          {
            v163 = v212;
            *v212 = 0;
            v164 = &v163[*(v162 + 20)];
            sub_1C6EE4420();
            (*v208)(&v163[*(v162 + 24)], 1, 1, v155);
            v165 = v162;
            v166 = v163;
            a4 = &unk_1C6EE69B0;
            if (v151(v161, 1, v165) != 1)
            {
              sub_1C6ECEEAC(v161, &qword_1EC1F7D58, &qword_1C6EE89A0);
            }
          }

          else
          {
            v166 = v212;
            sub_1C6ECEF0C(v161, v212, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
            a4 = &unk_1C6EE69B0;
          }

          v167 = v217;
          sub_1C6ECEE44(&v166[*(v232 + 24)], v217, &qword_1EC1F7D48, &qword_1C6EE8990);
          if (v157(v167, 1, v155) == 1)
          {
            v168 = v209;
            sub_1C6EE43D0();
            sub_1C6ECEC10(v166, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
            if (v157(v167, 1, v155) != 1)
            {
              sub_1C6ECEEAC(v167, &qword_1EC1F7D48, &qword_1C6EE8990);
            }
          }

          else
          {
            sub_1C6ECEC10(v166, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesMetadata);
            v168 = v209;
            (*v207)(v209, v167, v155);
          }

          v169 = v218;
          sub_1C6EE43B0();
          v160(v168, v155);
          v170 = v230;
          v171 = sub_1C6EE4270();
          v172 = *v206;
          v173 = v169;
          v174 = v219;
          (*v206)(v173, v219);
          v172(v170, v174);
          a3 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures;
          sub_1C6ECEC10(v231, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
          sub_1C6ECEC10(v228, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures);
          sub_1C6ECEEAC(v227, &qword_1EC1F77F8, &unk_1C6EE69B0);
          v49 = v205;
          result = sub_1C6ECEEAC(v205, &qword_1EC1F77F8, &unk_1C6EE69B0);
          if ((v171 & 1) == 0)
          {
            break;
          }

          v16 = v220;
          v37 = v221;
          v175 = v224;
          if (!v203)
          {
            goto LABEL_155;
          }

          v176 = v223;
          a3 = v204;
          sub_1C6ECEF74(v223, v204, &qword_1EC1F77F8, &unk_1C6EE69B0);
          swift_arrayInitWithTakeFrontToBack();
          sub_1C6ECEF74(a3, v141, &qword_1EC1F77F8, &unk_1C6EE69B0);
          v141 += v202;
          v6 = v176 + v202;
          v177 = __CFADD__(v175, 1);
          v140 = v175 + 1;
          if (v177)
          {
            goto LABEL_87;
          }
        }

        v16 = v220;
        v37 = v221;
LABEL_87:
        v86 = v199 + 1;
        v138 = v197 + v191;
        v139 = v196 - 1;
        v6 = v195 + v191;
        v89 = v192;
      }

      while (v199 + 1 != v192);
      v61 = v184;
      if (v192 < v184)
      {
        goto LABEL_149;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v60 = v193;
    }

    else
    {
      result = sub_1C6ED92D4(0, *(v193 + 2) + 1, 1, v193);
      v60 = result;
    }

    a3 = *(v60 + 2);
    v90 = *(v60 + 3);
    v6 = a3 + 1;
    if (a3 >= v90 >> 1)
    {
      result = sub_1C6ED92D4((v90 > 1), a3 + 1, 1, v60);
      v60 = result;
    }

    *(v60 + 2) = v6;
    v91 = &v60[16 * a3];
    *(v91 + 4) = v61;
    *(v91 + 5) = v89;
    v92 = v89;
    v93 = *v189;
    if (!*v189)
    {
      goto LABEL_159;
    }

    if (a3)
    {
      while (1)
      {
        a4 = v6 - 1;
        if (v6 >= 4)
        {
          break;
        }

        if (v6 == 3)
        {
          v94 = *(v60 + 4);
          v95 = *(v60 + 5);
          v104 = __OFSUB__(v95, v94);
          v96 = v95 - v94;
          v97 = v104;
LABEL_54:
          if (v97)
          {
            goto LABEL_138;
          }

          v110 = &v60[16 * v6];
          v112 = *v110;
          v111 = *(v110 + 1);
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_141;
          }

          v116 = &v60[16 * a4 + 32];
          v118 = *v116;
          v117 = *(v116 + 1);
          v104 = __OFSUB__(v117, v118);
          v119 = v117 - v118;
          if (v104)
          {
            goto LABEL_144;
          }

          if (__OFADD__(v114, v119))
          {
            goto LABEL_145;
          }

          if (v114 + v119 >= v96)
          {
            if (v96 < v119)
            {
              a4 = v6 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v120 = &v60[16 * v6];
        v122 = *v120;
        v121 = *(v120 + 1);
        v104 = __OFSUB__(v121, v122);
        v114 = v121 - v122;
        v115 = v104;
LABEL_68:
        if (v115)
        {
          goto LABEL_140;
        }

        v123 = &v60[16 * a4];
        v125 = *(v123 + 4);
        v124 = *(v123 + 5);
        v104 = __OFSUB__(v124, v125);
        v126 = v124 - v125;
        if (v104)
        {
          goto LABEL_143;
        }

        if (v126 < v114)
        {
          goto LABEL_3;
        }

LABEL_75:
        a3 = a4 - 1;
        if (a4 - 1 >= v6)
        {
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          result = sub_1C6ECCA74(v6);
          goto LABEL_118;
        }

        if (!*v200)
        {
          goto LABEL_156;
        }

        v131 = v60;
        v6 = *&v60[16 * a3 + 32];
        v132 = *&v60[16 * a4 + 40];
        v133 = v201;
        sub_1C6ECBAB8(*v200 + *(v198 + 72) * v6, *v200 + *(v198 + 72) * *&v60[16 * a4 + 32], *v200 + *(v198 + 72) * v132, v93);
        v201 = v133;
        if (v133)
        {
        }

        if (v132 < v6)
        {
          goto LABEL_134;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v134 = v131;
        }

        else
        {
          v134 = sub_1C6ECCA74(v131);
        }

        v37 = v221;
        if (a3 >= *(v134 + 2))
        {
          goto LABEL_135;
        }

        v135 = &v134[16 * a3];
        *(v135 + 4) = v6;
        *(v135 + 5) = v132;
        v233 = v134;
        result = sub_1C6ECC9E8(a4);
        v60 = v233;
        v6 = *(v233 + 16);
        if (v6 <= 1)
        {
          goto LABEL_3;
        }
      }

      v98 = &v60[16 * v6 + 32];
      v99 = *(v98 - 64);
      v100 = *(v98 - 56);
      v104 = __OFSUB__(v100, v99);
      v101 = v100 - v99;
      if (v104)
      {
        goto LABEL_136;
      }

      v103 = *(v98 - 48);
      v102 = *(v98 - 40);
      v104 = __OFSUB__(v102, v103);
      v96 = v102 - v103;
      v97 = v104;
      if (v104)
      {
        goto LABEL_137;
      }

      v105 = &v60[16 * v6];
      v107 = *v105;
      v106 = *(v105 + 1);
      v104 = __OFSUB__(v106, v107);
      v108 = v106 - v107;
      if (v104)
      {
        goto LABEL_139;
      }

      v104 = __OFADD__(v96, v108);
      v109 = v96 + v108;
      if (v104)
      {
        goto LABEL_142;
      }

      if (v109 >= v101)
      {
        v127 = &v60[16 * a4 + 32];
        v129 = *v127;
        v128 = *(v127 + 1);
        v104 = __OFSUB__(v128, v129);
        v130 = v128 - v129;
        if (v104)
        {
          goto LABEL_148;
        }

        if (v96 < v130)
        {
          a4 = v6 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v58 = v200[1];
    v59 = v92;
    a4 = v188;
    if (v92 >= v58)
    {
      goto LABEL_115;
    }
  }

  if (v86 >= v184)
  {
    if (v184 < v86)
    {
      v205 = v49;
      v80 = v220;
      v81 = v73 * (v86 - 1);
      v82 = v86 * v73;
      v83 = v86;
      v84 = v184 * v73;
      do
      {
        if (v61 != --v83)
        {
          a3 = *v200;
          if (!*v200)
          {
            goto LABEL_158;
          }

          v85 = v86;
          v6 = a3 + v84;
          sub_1C6ECEF74(a3 + v84, v190, &qword_1EC1F77F8, &unk_1C6EE69B0);
          if (v84 < v81 || v6 >= a3 + v82)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v84 != v81)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_1C6ECEF74(v190, a3 + v81, &qword_1EC1F77F8, &unk_1C6EE69B0);
          v86 = v85;
          v73 = v224;
        }

        ++v61;
        v81 -= v73;
        v82 -= v73;
        v84 += v73;
      }

      while (v61 < v83);
      a4 = v188;
      v16 = v80;
      v37 = v221;
      v49 = v205;
      v61 = v184;
    }

    goto LABEL_25;
  }

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
  return result;
}

uint64_t sub_1C6ECAD68(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v5 = v4;
  v154 = a1;
  v173 = sub_1C6EE42C0();
  v8 = *(v173 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v173);
  v172 = &v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v176 = &v150 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A30, &qword_1C6EF6B38);
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v157 = &v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v168 = &v150 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v171 = &v150 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v170 = &v150 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v178 = &v150 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v177 = &v150 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v151 = &v150 - v29;
  result = MEMORY[0x1EEE9AC00](v28);
  v150 = &v150 - v32;
  v33 = *(a3 + 8);
  v164 = a3;
  if (v33 < 1)
  {
    v35 = MEMORY[0x1E69E7CC0];
LABEL_98:
    v34 = *v154;
    if (!*v154)
    {
      goto LABEL_138;
    }

    a3 = v31;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_100;
  }

  v34 = 0;
  v169 = (v8 + 8);
  v35 = MEMORY[0x1E69E7CC0];
  v36 = &unk_1EC1F9A30;
  v163 = v14;
  v153 = a4;
  v37 = result;
  v174 = result;
LABEL_4:
  v38 = v34 + 1;
  v158 = v34;
  if (v34 + 1 >= v33)
  {
    v50 = v34 + 1;
  }

  else
  {
    v165 = v33;
    v39 = *v31;
    v40 = v14[9];
    v41 = *v31 + v40 * v38;
    v42 = v36;
    v43 = v150;
    sub_1C6ECEE44(v41, v150, v42, &qword_1C6EF6B38);
    v44 = v40;
    v175 = v39;
    v45 = v39 + v40 * v158;
    v34 = v158;
    v46 = v151;
    sub_1C6ECEE44(v45, v151, v42, &qword_1C6EF6B38);
    LODWORD(v162) = sub_1C6EC4B1C(v43, v46);
    if (v5)
    {
      sub_1C6ECEEAC(v46, &unk_1EC1F9A30, &qword_1C6EF6B38);
      sub_1C6ECEEAC(v43, &unk_1EC1F9A30, &qword_1C6EF6B38);
    }

    v152 = v35;
    v47 = v46;
    a3 = &qword_1C6EF6B38;
    sub_1C6ECEEAC(v47, v42, &qword_1C6EF6B38);
    result = sub_1C6ECEEAC(v43, v42, &qword_1C6EF6B38);
    v48 = v34 + 2;
    v35 = (v175 + v44 * (v34 + 2));
    v36 = v42;
    v49 = v44;
    v166 = v44;
    v161 = 0;
    while (1)
    {
      v50 = v165;
      if (v165 == v48)
      {
        break;
      }

      v51 = v177;
      v175 = v48;
      sub_1C6ECEE44(v35, v177, v36, &qword_1C6EF6B38);
      v167 = v41;
      sub_1C6ECEE44(v41, v178, v36, &qword_1C6EF6B38);
      v52 = v51;
      v53 = v170;
      sub_1C6ECEE44(v52, v170, v36, &qword_1C6EF6B38);
      v54 = *(v53 + 8);

      v55 = *(v174 + 48);
      v56 = v176;
      sub_1C6EE43B0();
      v57 = sub_1C6EE43E0();
      v58 = *(*(v57 - 8) + 8);
      v58(v53 + v55, v57);
      v59 = v171;
      sub_1C6ECEE44(v178, v171, v36, &qword_1C6EF6B38);
      v60 = *(v59 + 8);

      v61 = *(v174 + 48);
      v62 = v172;
      sub_1C6EE43B0();
      v58(v59 + v61, v57);
      v34 = sub_1C6EE4270() & 1;
      a3 = v169;
      v63 = *v169;
      v64 = v62;
      v36 = &unk_1EC1F9A30;
      v65 = v173;
      (*v169)(v64, v173);
      v66 = v56;
      v5 = v161;
      v67 = v65;
      v37 = v174;
      v63(v66, v67);
      sub_1C6ECEEAC(v178, &unk_1EC1F9A30, &qword_1C6EF6B38);
      result = sub_1C6ECEEAC(v177, &unk_1EC1F9A30, &qword_1C6EF6B38);
      v49 = v166;
      v48 = v175 + 1;
      v35 += v166;
      v41 = v167 + v166;
      if ((v162 & 1) != v34)
      {
        v50 = v175;
        break;
      }
    }

    a4 = v153;
    v14 = v163;
    v31 = v164;
    if ((v162 & 1) == 0)
    {
      goto LABEL_24;
    }

    if (v50 < v158)
    {
      goto LABEL_131;
    }

    if (v158 < v50)
    {
      a3 = v49 * (v50 - 1);
      v68 = v50 * v49;
      v165 = v50;
      v69 = v50;
      v70 = v158;
      v71 = v158 * v49;
      do
      {
        if (v70 != --v69)
        {
          v72 = *v31;
          if (!*v31)
          {
            goto LABEL_135;
          }

          v34 = v72 + v71;
          sub_1C6ECEF74(v72 + v71, v157, v36, &qword_1C6EF6B38);
          if (v71 < a3 || v34 >= (v72 + v68))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v71 != a3)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_1C6ECEF74(v157, v72 + a3, v36, &qword_1C6EF6B38);
          v31 = v164;
          v49 = v166;
        }

        ++v70;
        a3 -= v49;
        v68 -= v49;
        v71 += v49;
      }

      while (v70 < v69);
      v14 = v163;
      v35 = v152;
      a4 = v153;
      v37 = v174;
      v50 = v165;
    }

    else
    {
LABEL_24:
      v35 = v152;
    }
  }

  v73 = v31[1];
  if (v50 >= v73)
  {
    goto LABEL_35;
  }

  if (__OFSUB__(v50, v158))
  {
    goto LABEL_128;
  }

  if (v50 - v158 >= a4)
  {
LABEL_35:
    v34 = v50;
    goto LABEL_36;
  }

  if (__OFADD__(v158, a4))
  {
    goto LABEL_129;
  }

  if (v158 + a4 >= v73)
  {
    v34 = v31[1];
  }

  else
  {
    v34 = v158 + a4;
  }

  if (v34 < v158)
  {
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    result = sub_1C6ECCA74(v35);
    v35 = result;
LABEL_100:
    v179 = v35;
    v145 = *(v35 + 2);
    if (v145 >= 2)
    {
      while (1)
      {
        v146 = *a3;
        if (!*a3)
        {
          goto LABEL_136;
        }

        a3 = v145 - 1;
        v147 = *&v35[16 * v145];
        v148 = *&v35[16 * v145 + 24];
        sub_1C6ECC1A4(v146 + v14[9] * v147, v146 + v14[9] * *&v35[16 * v145 + 16], v146 + v14[9] * v148, v34);
        if (v5)
        {
        }

        if (v148 < v147)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1C6ECCA74(v35);
        }

        if (v145 - 2 >= *(v35 + 2))
        {
          goto LABEL_126;
        }

        v149 = &v35[16 * v145];
        *v149 = v147;
        *(v149 + 1) = v148;
        v179 = v35;
        result = sub_1C6ECC9E8(a3);
        v35 = v179;
        v145 = *(v179 + 2);
        a3 = v164;
        if (v145 <= 1)
        {
        }
      }
    }
  }

  if (v50 == v34)
  {
    goto LABEL_35;
  }

  v152 = v35;
  v161 = v5;
  v119 = *v31;
  v120 = v14[9];
  v121 = *v31 + v120 * (v50 - 1);
  v166 = -v120;
  v167 = v119;
  v122 = v158 - v50;
  v155 = v120;
  v123 = v119 + v50 * v120;
  v124 = v37;
  v156 = v34;
LABEL_90:
  v165 = v50;
  v159 = v123;
  v160 = v122;
  v125 = v122;
  v162 = v121;
  while (1)
  {
    v175 = v125;
    v126 = v177;
    sub_1C6ECEE44(v123, v177, v36, &qword_1C6EF6B38);
    v127 = v178;
    sub_1C6ECEE44(v121, v178, v36, &qword_1C6EF6B38);
    v128 = v170;
    sub_1C6ECEE44(v126, v170, v36, &qword_1C6EF6B38);
    v129 = *(v128 + 8);

    v130 = *(v124 + 48);
    sub_1C6EE43B0();
    v131 = sub_1C6EE43E0();
    v132 = v124;
    v133 = *(*(v131 - 8) + 8);
    v133(v128 + v130, v131);
    v134 = v171;
    sub_1C6ECEE44(v127, v171, &unk_1EC1F9A30, &qword_1C6EF6B38);
    v135 = *(v134 + 8);

    v136 = *(v132 + 48);
    v137 = v172;
    sub_1C6EE43B0();
    v133(v134 + v136, v131);
    v14 = &qword_1C6EF6B38;
    v138 = v176;
    LOBYTE(v132) = sub_1C6EE4270();
    a3 = v169;
    v139 = *v169;
    v140 = v173;
    (*v169)(v137, v173);
    v141 = v140;
    v36 = &unk_1EC1F9A30;
    v139(v138, v141);
    sub_1C6ECEEAC(v178, &unk_1EC1F9A30, &qword_1C6EF6B38);
    result = sub_1C6ECEEAC(v177, &unk_1EC1F9A30, &qword_1C6EF6B38);
    if ((v132 & 1) == 0)
    {
      v124 = v174;
LABEL_89:
      v50 = v165 + 1;
      v121 = v162 + v155;
      v122 = v160 - 1;
      v123 = v159 + v155;
      v34 = v156;
      if (v165 + 1 != v156)
      {
        goto LABEL_90;
      }

      v37 = v124;
      v5 = v161;
      v35 = v152;
LABEL_36:
      if (v34 < v158)
      {
        goto LABEL_127;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C6ED92D4(0, *(v35 + 2) + 1, 1, v35);
        v35 = result;
      }

      a3 = *(v35 + 2);
      v74 = *(v35 + 3);
      v75 = a3 + 1;
      v31 = v164;
      if (a3 >= v74 >> 1)
      {
        result = sub_1C6ED92D4((v74 > 1), a3 + 1, 1, v35);
        v31 = v164;
        v35 = result;
      }

      *(v35 + 2) = v75;
      v76 = &v35[16 * a3];
      *(v76 + 4) = v158;
      *(v76 + 5) = v34;
      if (!*v154)
      {
        goto LABEL_137;
      }

      if (a3)
      {
        v14 = *v154;
        while (1)
        {
          v77 = v75 - 1;
          if (v75 >= 4)
          {
            break;
          }

          if (v75 == 3)
          {
            v78 = *(v35 + 4);
            v79 = *(v35 + 5);
            v88 = __OFSUB__(v79, v78);
            v80 = v79 - v78;
            v81 = v88;
LABEL_57:
            if (v81)
            {
              goto LABEL_116;
            }

            v94 = &v35[16 * v75];
            v96 = *v94;
            v95 = *(v94 + 1);
            v97 = __OFSUB__(v95, v96);
            v98 = v95 - v96;
            v99 = v97;
            if (v97)
            {
              goto LABEL_119;
            }

            v100 = &v35[16 * v77 + 32];
            v102 = *v100;
            v101 = *(v100 + 1);
            v88 = __OFSUB__(v101, v102);
            v103 = v101 - v102;
            if (v88)
            {
              goto LABEL_122;
            }

            if (__OFADD__(v98, v103))
            {
              goto LABEL_123;
            }

            if (v98 + v103 >= v80)
            {
              if (v80 < v103)
              {
                v77 = v75 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v104 = &v35[16 * v75];
          v106 = *v104;
          v105 = *(v104 + 1);
          v88 = __OFSUB__(v105, v106);
          v98 = v105 - v106;
          v99 = v88;
LABEL_71:
          if (v99)
          {
            goto LABEL_118;
          }

          v107 = &v35[16 * v77];
          v109 = *(v107 + 4);
          v108 = *(v107 + 5);
          v88 = __OFSUB__(v108, v109);
          v110 = v108 - v109;
          if (v88)
          {
            goto LABEL_121;
          }

          if (v110 < v98)
          {
            goto LABEL_3;
          }

LABEL_78:
          a3 = v77 - 1;
          if (v77 - 1 >= v75)
          {
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

          if (!*v31)
          {
            goto LABEL_134;
          }

          v115 = *&v35[16 * a3 + 32];
          v116 = v77;
          v117 = *&v35[16 * v77 + 40];
          sub_1C6ECC1A4(*v31 + v163[9] * v115, *v31 + v163[9] * *&v35[16 * v77 + 32], *v31 + v163[9] * v117, v14);
          if (v5)
          {
          }

          if (v117 < v115)
          {
            goto LABEL_112;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_1C6ECCA74(v35);
          }

          if (a3 >= *(v35 + 2))
          {
            goto LABEL_113;
          }

          v118 = &v35[16 * a3];
          *(v118 + 4) = v115;
          *(v118 + 5) = v117;
          v179 = v35;
          result = sub_1C6ECC9E8(v116);
          v35 = v179;
          v75 = *(v179 + 2);
          v37 = v174;
          v31 = v164;
          if (v75 <= 1)
          {
            goto LABEL_3;
          }
        }

        v82 = &v35[16 * v75 + 32];
        v83 = *(v82 - 64);
        v84 = *(v82 - 56);
        v88 = __OFSUB__(v84, v83);
        v85 = v84 - v83;
        if (v88)
        {
          goto LABEL_114;
        }

        v87 = *(v82 - 48);
        v86 = *(v82 - 40);
        v88 = __OFSUB__(v86, v87);
        v80 = v86 - v87;
        v81 = v88;
        if (v88)
        {
          goto LABEL_115;
        }

        v89 = &v35[16 * v75];
        v91 = *v89;
        v90 = *(v89 + 1);
        v88 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v88)
        {
          goto LABEL_117;
        }

        v88 = __OFADD__(v80, v92);
        v93 = v80 + v92;
        if (v88)
        {
          goto LABEL_120;
        }

        if (v93 >= v85)
        {
          v111 = &v35[16 * v77 + 32];
          v113 = *v111;
          v112 = *(v111 + 1);
          v88 = __OFSUB__(v112, v113);
          v114 = v112 - v113;
          if (v88)
          {
            goto LABEL_124;
          }

          if (v80 < v114)
          {
            v77 = v75 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v33 = v31[1];
      a4 = v153;
      v14 = v163;
      if (v34 >= v33)
      {
        goto LABEL_98;
      }

      goto LABEL_4;
    }

    v142 = v175;
    if (!v167)
    {
      break;
    }

    v143 = v168;
    sub_1C6ECEF74(v123, v168, &unk_1EC1F9A30, &qword_1C6EF6B38);
    v124 = v174;
    swift_arrayInitWithTakeFrontToBack();
    sub_1C6ECEF74(v143, v121, &unk_1EC1F9A30, &qword_1C6EF6B38);
    v121 += v166;
    v123 += v166;
    v144 = __CFADD__(v142, 1);
    v125 = v142 + 1;
    if (v144)
    {
      goto LABEL_89;
    }
  }

  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
  return result;
}

unint64_t sub_1C6ECBAB8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77F8, &unk_1C6EE69B0);
  v10 = *(*(v72 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v72);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v63 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v21 = &v63 - v20;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  result = a2;
  v24 = a1;
  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_67;
  }

  v25 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v23 != -1)
  {
    v26 = (a2 - a1) / v23;
    v77 = a1;
    v27 = a4;
    v76 = a4;
    if (v26 < v25 / v23)
    {
      v28 = v26 * v23;
      if (a4 < v24 || v24 + v28 <= a4)
      {
        v29 = v24;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == v24)
        {
          goto LABEL_17;
        }

        v29 = v24;
        swift_arrayInitWithTakeBackToFront();
      }

      v24 = v29;
      v27 = a4;
      result = a2;
LABEL_17:
      v73 = v4;
      v71 = v27 + v28;
      v75 = v27 + v28;
      if (v28 >= 1 && result < a3)
      {
        v69 = v17;
        v70 = v21;
        v68 = a3;
        while (1)
        {
          v74 = v24;
          v34 = v23;
          v35 = result;
          v36 = v70;
          sub_1C6ECEE44(result, v70, &qword_1EC1F77F8, &unk_1C6EE69B0);
          sub_1C6ECEE44(v27, v17, &qword_1EC1F77F8, &unk_1C6EE69B0);
          v37 = v73;
          v38 = sub_1C6EC2920(v36, v17);
          v73 = v37;
          if (v37)
          {
            sub_1C6ECEEAC(v17, &qword_1EC1F77F8, &unk_1C6EE69B0);
            sub_1C6ECEEAC(v36, &qword_1EC1F77F8, &unk_1C6EE69B0);
            goto LABEL_65;
          }

          v39 = v38;
          sub_1C6ECEEAC(v17, &qword_1EC1F77F8, &unk_1C6EE69B0);
          sub_1C6ECEEAC(v36, &qword_1EC1F77F8, &unk_1C6EE69B0);
          if ((v39 & 1) == 0)
          {
            v23 = v34;
            v41 = v27;
            v27 += v34;
            v40 = v74;
            if (v74 < v41 || v74 >= v27)
            {
              swift_arrayInitWithTakeFrontToBack();
              v40 = v74;
            }

            else if (v74 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
              v40 = v74;
            }

            v76 = v27;
            result = v35;
            goto LABEL_37;
          }

          v23 = v34;
          v40 = v74;
          if (v74 < v35 || v74 >= v35 + v34)
          {
            break;
          }

          if (v74 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
LABEL_33:
            v40 = v74;
          }

          result = v35 + v34;
LABEL_37:
          v24 = v40 + v23;
          v77 = v24;
          if (v27 < v71)
          {
            v17 = v69;
            if (result < v68)
            {
              continue;
            }
          }

          goto LABEL_65;
        }

        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_33;
      }

      goto LABEL_65;
    }

    v30 = v25 / v23 * v23;
    v70 = v19;
    if (a4 < result || result + v30 <= a4)
    {
      v31 = result;
      v32 = v24;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == result)
      {
LABEL_42:
        v42 = v27 + v30;
        if (v30 < 1)
        {
LABEL_60:
          v73 = v5;
          v77 = result;
          v75 = v42;
          goto LABEL_65;
        }

        v43 = -v23;
        v44 = &qword_1EC1F77F8;
        v45 = v27 + v30;
        v46 = &unk_1C6EE69B0;
        v66 = v27;
        v74 = v24;
        v69 = -v23;
LABEL_44:
        v64 = v42;
        v47 = result + v43;
        v67 = result + v43;
        v68 = result;
        while (1)
        {
          if (result <= v24)
          {
            v73 = v5;
            v77 = result;
            v75 = v64;
            goto LABEL_65;
          }

          v48 = a3;
          v65 = v42;
          v50 = v69;
          v49 = v70;
          v71 = v45;
          v51 = v45 + v69;
          v52 = v5;
          v53 = v44;
          v54 = v46;
          sub_1C6ECEE44(v45 + v69, v70, v44, v46);
          sub_1C6ECEE44(v47, v13, v53, v54);
          v55 = sub_1C6EC2920(v49, v13);
          v56 = v13;
          if (v52)
          {
            break;
          }

          v57 = v55;
          a3 = v48 + v50;
          v58 = v56;
          sub_1C6ECEEAC(v56, v53, v54);
          sub_1C6ECEEAC(v49, v53, v54);
          if (v57)
          {
            v73 = 0;
            if (v48 < v68 || a3 >= v68)
            {
              v62 = v67;
              swift_arrayInitWithTakeFrontToBack();
              v13 = v58;
              result = v62;
              v24 = v74;
            }

            else
            {
              v13 = v58;
              result = v67;
              v24 = v74;
              if (v48 != v68)
              {
                v60 = v67;
                v61 = v74;
                swift_arrayInitWithTakeBackToFront();
                v24 = v61;
                result = v60;
              }
            }

            v42 = v65;
            v45 = v71;
            v43 = v69;
            v44 = v53;
            v46 = v54;
            v5 = v73;
            if (v71 <= v66)
            {
              goto LABEL_60;
            }

            goto LABEL_44;
          }

          v42 = v51;
          if (v48 < v71 || a3 >= v71)
          {
            swift_arrayInitWithTakeFrontToBack();
            v42 = v51;
            v13 = v58;
            v24 = v74;
          }

          else
          {
            v13 = v58;
            v24 = v74;
            if (v48 != v71)
            {
              v59 = v74;
              swift_arrayInitWithTakeBackToFront();
              v24 = v59;
              v42 = v51;
            }
          }

          v45 = v42;
          v47 = v67;
          v44 = v53;
          v46 = v54;
          v5 = 0;
          result = v68;
          if (v51 <= v66)
          {
            goto LABEL_60;
          }
        }

        sub_1C6ECEEAC(v13, &qword_1EC1F77F8, &unk_1C6EE69B0);
        sub_1C6ECEEAC(v49, &qword_1EC1F77F8, &unk_1C6EE69B0);
        v77 = v68;
        v75 = v65;
LABEL_65:
        sub_1C6ECCB80(&v77, &v76, &v75, &qword_1EC1F77F8, &unk_1C6EE69B0);
        return 1;
      }

      v31 = result;
      v32 = v24;
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = v32;
    v27 = a4;
    result = v31;
    goto LABEL_42;
  }

LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_1C6ECC1A4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v85 = sub_1C6EE42C0();
  v8 = *(v85 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v85);
  v84 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v83 = v72 - v12;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A30, &qword_1C6EF6B38);
  v13 = *(*(v90 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v90);
  v82 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v81 = v72 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v80 = v72 - v19;
  result = MEMORY[0x1EEE9AC00](v18);
  v91 = v72 - v21;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_60;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_61;
  }

  v25 = (a2 - a1) / v23;
  v94 = a1;
  v93 = a4;
  if (v25 >= v24 / v23)
  {
    v27 = v24 / v23 * v23;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v27;
    if (v27 >= 1)
    {
      v49 = -v23;
      v74 = (v8 + 8);
      v75 = -v23;
      v50 = v48;
      v87 = a4;
      v88 = a1;
      while (2)
      {
        while (1)
        {
          v72[0] = v48;
          v51 = a2 + v49;
          v89 = a2 + v49;
          v76 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v94 = a2;
              v92 = v72[0];
              goto LABEL_58;
            }

            v73 = v48;
            v86 = a3 + v49;
            v77 = (v50 + v49);
            v53 = v91;
            v79 = a3;
            sub_1C6ECEE44(v50 + v49, v91, &unk_1EC1F9A30, &qword_1C6EF6B38);
            v54 = v80;
            sub_1C6ECEE44(v51, v80, &unk_1EC1F9A30, &qword_1C6EF6B38);
            v78 = v50;
            v55 = v81;
            sub_1C6ECEE44(v53, v81, &unk_1EC1F9A30, &qword_1C6EF6B38);
            v56 = *(v55 + 8);

            v57 = v90;
            v58 = *(v90 + 48);
            v59 = v83;
            sub_1C6EE43B0();
            v60 = sub_1C6EE43E0();
            v61 = *(*(v60 - 8) + 8);
            v61(v55 + v58, v60);
            v62 = v82;
            sub_1C6ECEE44(v54, v82, &unk_1EC1F9A30, &qword_1C6EF6B38);
            v63 = *(v62 + 8);

            v64 = *(v57 + 48);
            v65 = v84;
            sub_1C6EE43B0();
            v61(v62 + v64, v60);
            v66 = sub_1C6EE4270();
            v67 = *v74;
            v68 = v85;
            (*v74)(v65, v85);
            v67(v59, v68);
            sub_1C6ECEEAC(v54, &unk_1EC1F9A30, &qword_1C6EF6B38);
            sub_1C6ECEEAC(v91, &unk_1EC1F9A30, &qword_1C6EF6B38);
            if (v66)
            {
              break;
            }

            v69 = v77;
            v48 = v77;
            a3 = v86;
            v70 = v87;
            if (v79 < v78 || v86 >= v78)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v88;
              v51 = v89;
              v49 = v75;
            }

            else
            {
              a1 = v88;
              v51 = v89;
              v49 = v75;
              if (v79 != v78)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v50 = v48;
            v52 = v69 > v70;
            a2 = v76;
            if (!v52)
            {
              goto LABEL_56;
            }
          }

          v50 = v78;
          a3 = v86;
          v71 = v87;
          if (v79 < v76 || v86 >= v76)
          {
            break;
          }

          a1 = v88;
          a2 = v89;
          v48 = v73;
          v49 = v75;
          if (v79 != v76)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v50 <= v71)
          {
            goto LABEL_56;
          }
        }

        a2 = v89;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v88;
        v48 = v73;
        v49 = v75;
        if (v50 > v71)
        {
          continue;
        }

        break;
      }
    }

LABEL_56:
    v94 = a2;
    v92 = v48;
  }

  else
  {
    v26 = v25 * v23;
    if (a4 < a1 || a1 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v79 = a4 + v26;
    v92 = a4 + v26;
    if (v26 >= 1 && a2 < a3)
    {
      v77 = (v8 + 8);
      v78 = v23;
      v86 = a3;
      do
      {
        v88 = a1;
        v89 = a2;
        v87 = a4;
        v29 = v91;
        sub_1C6ECEE44(a2, v91, &unk_1EC1F9A30, &qword_1C6EF6B38);
        v30 = v80;
        sub_1C6ECEE44(a4, v80, &unk_1EC1F9A30, &qword_1C6EF6B38);
        v31 = v81;
        sub_1C6ECEE44(v29, v81, &unk_1EC1F9A30, &qword_1C6EF6B38);
        v32 = *(v31 + 8);

        v33 = v90;
        v34 = *(v90 + 48);
        v35 = v83;
        sub_1C6EE43B0();
        v36 = sub_1C6EE43E0();
        v37 = *(*(v36 - 8) + 8);
        v37(v31 + v34, v36);
        v38 = v82;
        sub_1C6ECEE44(v30, v82, &unk_1EC1F9A30, &qword_1C6EF6B38);
        v39 = *(v38 + 8);

        v40 = *(v33 + 48);
        v41 = v84;
        sub_1C6EE43B0();
        v37(v38 + v40, v36);
        v42 = sub_1C6EE4270();
        v43 = *v77;
        v44 = v85;
        (*v77)(v41, v85);
        v43(v35, v44);
        sub_1C6ECEEAC(v30, &unk_1EC1F9A30, &qword_1C6EF6B38);
        sub_1C6ECEEAC(v91, &unk_1EC1F9A30, &qword_1C6EF6B38);
        if (v42)
        {
          v45 = v78;
          v46 = v88;
          a2 = v89 + v78;
          a4 = v87;
          if (v88 < v89 || v88 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v47 = v86;
          }

          else
          {
            v47 = v86;
            if (v88 != v89)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        else
        {
          v46 = v88;
          a2 = v89;
          v45 = v78;
          a4 = v87 + v78;
          if (v88 < v87 || v88 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v47 = v86;
          }

          else
          {
            v47 = v86;
            if (v88 != v87)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v93 = a4;
        }

        a1 = v46 + v45;
        v94 = a1;
      }

      while (a4 < v79 && a2 < v47);
    }
  }

LABEL_58:
  sub_1C6ECCB80(&v94, &v93, &v92, &unk_1EC1F9A30, &qword_1C6EF6B38);
  return 1;
}

uint64_t sub_1C6ECC9E8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C6ECCA74(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1C6ECCA88(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1C6EE41A0();
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

uint64_t sub_1C6ECCB80(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1C6ECCC68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A20, &qword_1C6EF6B50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_2(v10);
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

char *sub_1C6ECCD94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A60, &qword_1C6EE6950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_2(v10);
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

void *sub_1C6ECCF0C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size_2(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1C6ECD040(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AC8, &qword_1C6EF6BE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_2(v10);
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

char *sub_1C6ECD144(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F79D0, &qword_1C6EE6C40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_2(v10);
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

char *sub_1C6ECD250(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AC0, &qword_1C6EE6A50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_2(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C6ECD354(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AD0, &qword_1C6EE6C30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_2(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C6ECD458(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F98C0, &qword_1C6EF6BE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_2(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1F7DF0, &qword_1C6EE8DF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6ECD5B0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C50, &qword_1C6EE8020);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_2(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C58, &qword_1C6EF6BC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6ECD71C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9888, &qword_1C6EF6B70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_2(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F9890, &qword_1C6EF6B78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1C6ECD8AC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
  result = _swift_stdlib_malloc_size_2(v17);
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

char *sub_1C6ECDA88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7848, &qword_1C6EE6A00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_2(v10);
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

size_t sub_1C6ECDBB8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
  result = _swift_stdlib_malloc_size_2(v19);
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

uint64_t sub_1C6ECDDA0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C6EE50E0() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1C6EE5580();

      sub_1C6EE4B30();
      v14 = sub_1C6EE55A0();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = v19 + 24 * v3;
        v21 = (v19 + 24 * v6);
        if (24 * v3 < (24 * v6) || v20 >= v21 + 24 || v3 != v6)
        {
          v9 = *v21;
          *(v20 + 16) = *(v21 + 2);
          *v20 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1C6ECDF70(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C6EE50E0() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1C6EE5580();

      sub_1C6EE4B30();
      v14 = sub_1C6EE55A0();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = v19 + 24 * v3;
        v21 = (v19 + 24 * v6);
        if (24 * v3 < (24 * v6) || v20 >= v21 + 24 || v3 != v6)
        {
          v9 = *v21;
          *(v20 + 16) = *(v21 + 2);
          *v20 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1C6ECE140(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C6EE50E0() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1C6EE5580();

      sub_1C6EE4B30();
      v13 = sub_1C6EE55A0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeatures(0) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1C6ECE40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v53 = a3;
  v47 = a2;
  v48 = a1;
  v6 = sub_1C6EE4880();
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1C6EE48C0();
  v50 = *(v52 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v49 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1C6EE41A0();
  v11 = *(v45 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesStore(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEF8458 != -1)
  {
    swift_once();
  }

  sub_1C6EE4EE0();
  sub_1C6EE4730();
  v18 = OBJC_IVAR____TtCC18ComputationalGraph13FeaturesStore17FeaturesStoreData_store;
  swift_beginAccess();
  sub_1C6ECEC70(a4 + v18, v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesStore);
  sub_1C6ECED54(&qword_1EDEF62F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesStore);
  v19 = sub_1C6EE45C0();
  v21 = v20;
  sub_1C6ECEC10(v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_RichFeaturesStore);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  result = swift_allocObject();
  v23 = result;
  *(result + 16) = xmmword_1C6EE6590;
  v24 = v21 >> 62;
  v44 = v6;
  if ((v21 >> 62) > 1)
  {
    if (v24 != 2)
    {
      v25 = 0;
      goto LABEL_13;
    }

    v27 = *(v19 + 16);
    v26 = *(v19 + 24);
    v25 = v26 - v27;
    if (!__OFSUB__(v26, v27))
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v24)
  {
    v25 = BYTE6(v21);
LABEL_13:
    v28 = [objc_opt_self() stringFromByteCount:v25 countStyle:0];
    v29 = sub_1C6EE4A90();
    v31 = v30;

    v23[7] = MEMORY[0x1E69E6158];
    v23[8] = sub_1C6DF10E0();
    v23[4] = v29;
    v23[5] = v31;
    sub_1C6EE4EE0();
    sub_1C6EE4730();

    v32 = v45;
    (*(v11 + 16))(&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v46, v45);
    v33 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v34 = (v12 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    (*(v11 + 32))(v35 + v33, v13, v32);
    v36 = (v35 + v34);
    *v36 = v19;
    v36[1] = v21;
    v37 = (v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8));
    v38 = v47;
    *v37 = v48;
    v37[1] = v38;
    aBlock[4] = sub_1C6ECEB38;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C6DEDCF0;
    aBlock[3] = &block_descriptor_0;
    v39 = _Block_copy(aBlock);
    sub_1C6E00D18(v19, v21);
    swift_unknownObjectRetain();
    v40 = v49;
    sub_1C6EE48A0();
    v55 = MEMORY[0x1E69E7CC0];
    sub_1C6ECED54(&qword_1EDEF6858, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7FE0, &unk_1C6EE9B68);
    sub_1C6DEC6D0(&qword_1EDEF67D8, &qword_1EC1F7FE0, &unk_1C6EE9B68);
    v41 = v51;
    v42 = v44;
    sub_1C6EE50C0();
    MEMORY[0x1CCA58340](0, v40, v41, v39);
    _Block_release(v39);
    sub_1C6DF1134(v19, v21);
    (*(v54 + 8))(v41, v42);
    (*(v50 + 8))(v40, v52);
  }

  if (!__OFSUB__(HIDWORD(v19), v19))
  {
    v25 = HIDWORD(v19) - v19;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6ECEB38()
{
  v1 = *(sub_1C6EE41A0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);

  return sub_1C6EC7F34(v0 + v2, v6, v7, v8, v9);
}

uint64_t sub_1C6ECEC10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6ECEC70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6ECED54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6ECEDD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C6ECEE44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6ECEEAC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6ECEF0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6ECEF74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for TextNormalizerError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TextNormalizerError(_WORD *result, int a2, int a3)
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

uint64_t sub_1C6ECF0E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C6ECF128(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C6ECF178()
{
  result = qword_1EC1F98C8;
  if (!qword_1EC1F98C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F98C8);
  }

  return result;
}

uint64_t sub_1C6ECF1D4()
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](0);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6ECF240()
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](0);
  return sub_1C6EE55A0();
}

ComputationalGraph::ComputeServiceCachePolicy __swiftcall ComputeServiceCachePolicy.init(maxCacheAge:maxCacheSize:)(Swift::Double maxCacheAge, Swift::Int maxCacheSize)
{
  *v2 = maxCacheAge;
  *(v2 + 8) = maxCacheSize;
  result.maxCacheAge = maxCacheAge;
  result.maxCacheSize = maxCacheSize;
  return result;
}

uint64_t sub_1C6ECF29C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0xEB00000000656741;
  }

  else
  {
    v2 = 0xEC000000657A6953;
  }

  if (*a2)
  {
    v3 = 0xEB00000000656741;
  }

  else
  {
    v3 = 0xEC000000657A6953;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1C6EE54B0();
  }

  return v4 & 1;
}

uint64_t sub_1C6ECF33C()
{
  v1 = *v0;
  sub_1C6EE5580();
  sub_1C6EE4B30();

  return sub_1C6EE55A0();
}

uint64_t sub_1C6ECF3BC()
{
  *v0;
  sub_1C6EE4B30();
}

uint64_t sub_1C6ECF428()
{
  v1 = *v0;
  sub_1C6EE5580();
  sub_1C6EE4B30();

  return sub_1C6EE55A0();
}

uint64_t sub_1C6ECF4A4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C6EE5360();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1C6ECF504(void *a1@<X8>)
{
  v2 = 0xEC000000657A6953;
  if (*v1)
  {
    v2 = 0xEB00000000656741;
  }

  *a1 = 0x656863614378616DLL;
  a1[1] = v2;
}

uint64_t sub_1C6ECF578@<X0>(char *a1@<X8>)
{
  v2 = sub_1C6EE5360();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1C6ECF5F4(uint64_t a1)
{
  v2 = sub_1C6ECF810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6ECF630(uint64_t a1)
{
  v2 = sub_1C6ECF810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ComputeServiceCachePolicy.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F98D0, &qword_1C6EF6CE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-v7];
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6ECF810();
  sub_1C6EE55C0();
  v13[15] = 0;
  sub_1C6EE5430();
  if (!v2)
  {
    v13[14] = 1;
    sub_1C6EE5420();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1C6ECF810()
{
  result = qword_1EC1F98D8;
  if (!qword_1EC1F98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F98D8);
  }

  return result;
}

uint64_t ComputeServiceCachePolicy.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F98E0, &qword_1C6EF6CE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6ECF810();
  sub_1C6EE55B0();
  if (!v2)
  {
    v15[15] = 0;
    v11 = sub_1C6EE53C0();
    v15[14] = 1;
    sub_1C6EE53B0();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1C6ECFA24(uint64_t a1)
{
  *(a1 + 8) = sub_1C6EC007C();
  result = sub_1C6EBFC4C();
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ComputeServiceCachePolicy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ComputeServiceCachePolicy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ComputeServiceCachePolicy.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ComputeServiceCachePolicy.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C6ECFC70()
{
  result = qword_1EC1F98E8;
  if (!qword_1EC1F98E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F98E8);
  }

  return result;
}

unint64_t sub_1C6ECFCC8()
{
  result = qword_1EC1F98F0;
  if (!qword_1EC1F98F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F98F0);
  }

  return result;
}

unint64_t sub_1C6ECFD20()
{
  result = qword_1EC1F98F8;
  if (!qword_1EC1F98F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F98F8);
  }

  return result;
}

id RequestEventProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RequestEventProcessor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RequestEventProcessor();
  return objc_msgSendSuper2(&v2, sel_init);
}

id RequestEventProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RequestEventProcessor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C6ECFE8C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1C6ECFED4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1C6ECFF6C(uint64_t a1)
{
  v38 = *v1;
  v4 = v38[10];
  v5 = sub_1C6EE4FE0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v39 = v36 - v7;
  v8 = sub_1C6EE41A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v36 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v36 - v17;
  v40 = a1;
  sub_1C6ED3B5C();
  if (!v2)
  {
    v19 = v38[11];
    v36[1] = v38[12];
    v36[2] = v19;
    v38 = 0;
    v37 = type metadata accessor for FileStore.FileContainer();
    v20 = v4;
    v21 = *(v9 + 16);
    v21(v16, &v1[qword_1EDEF6920], v8);
    v21(v13, &v1[qword_1EDEF6938], v8);
    v22 = *&v1[qword_1EDEF6928];
    v23 = v1[qword_1EDEF6910];
    if (v23)
    {
      v24 = 18;
    }

    else
    {
      v24 = 12;
    }

    v25 = *(v4 - 8);
    v26 = v39;
    (*(v25 + 16))(v39, v40, v20);
    v27 = *(v25 + 56);
    v40 = v20;
    v27(v26, 0, 1, v20);
    v28 = *(v37 + 48);
    v29 = *(v37 + 52);
    v30 = swift_allocObject();

    v31 = v23;
    v1 = v30;
    v32 = v38;
    v33 = sub_1C6DEEE64(v18, v16, v13, v22, v24, v31, v26);
    if (!v32)
    {
      v1 = v33;
      if (sub_1C6ED3DA8())
      {
        type metadata accessor for FileStore.Errors();
        swift_getWitnessTable();
        swift_allocError();
        *v34 = 1;
        swift_willThrow();
      }
    }
  }

  return v1;
}

void sub_1C6ED02E4()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 160));
  v4 = v0;
  v5 = v1;
  sub_1C6ED61A4(sub_1C6EDA78C, &v3);
}

uint64_t sub_1C6ED0370()
{
  v2 = v1;
  v154 = *MEMORY[0x1E69E9840];
  v3 = *v0;
  v145 = sub_1C6EE41A0();
  v141 = *(v145 - 8);
  v4 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v145);
  v6 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v3[10];
  v8 = v3[11];
  if ((*(v0 + qword_1EDEF6910) & 1) == 0)
  {
    *&v140 = v3[12];
    v142 = v8;
    if (qword_1EDEF8F80 != -1)
    {
      goto LABEL_64;
    }

    while (1)
    {
      v12 = qword_1EDEF8F88;
      sub_1C6EE4EE0();
      sub_1C6EE4730();
      result = sub_1C6DEE4A0(0, 1);
      if (v2)
      {
        goto LABEL_61;
      }

      v13 = result;
      v135 = v0;
      v143 = 0;
      v137 = v6;
      v14 = v142;
      v15 = v140;
      v16 = type metadata accessor for FileStore.FileContainer();
      v17 = sub_1C6EE4980();
      v149 = v17;
      v148 = sub_1C6EE4980();
      v18 = sub_1C6EE4D40();
      v147 = v16;
      if (!v18)
      {

        goto LABEL_26;
      }

      *&v139 = v7;
      LODWORD(v144) = 0;
      v19 = 0;
      v20 = 4;
      v146 = xmmword_1C6EE6590;
      while (1)
      {
        v26 = v20 - 4;
        v27 = sub_1C6EE4D10();
        sub_1C6EE4CD0();
        if ((v27 & 1) == 0)
        {
          break;
        }

        v28 = *(v13 + 8 * v20);

        v29 = v20 - 3;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_23;
        }

LABEL_11:
        if (sub_1C6ED3DA8())
        {
          v150 = v28;
          sub_1C6EE4D50();

          sub_1C6EE4D30();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
          v21 = swift_allocObject();
          *(v21 + 16) = v146;
          v22 = &v28[*(*v28 + 120)];
          v23 = sub_1C6EE40E0();
          v25 = v24;
          *(v21 + 56) = MEMORY[0x1E69E6158];
          *(v21 + 64) = sub_1C6DF10E0();
          *(v21 + 32) = v23;
          *(v21 + 40) = v25;
          sub_1C6EE4EE0();
          sub_1C6EE4730();
        }

        else if (v19)
        {
          if ((v144 & 1) != 0 || (sub_1C6DF280C(31) & 1) == 0)
          {
            v40 = *v28;
            v41 = *&v28[*(*v28 + 160)];
            v152 = v28;
            v153 = v40;
            v42 = v143;
            sub_1C6ED61A4(sub_1C6EDA78C, &v150);
            if (v42)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
              v43 = swift_allocObject();
              *(v43 + 16) = v146;
              v44 = &v28[*(*v28 + 120)];
              v45 = sub_1C6EE40E0();
              v47 = v46;
              *(v43 + 56) = MEMORY[0x1E69E6158];
              *(v43 + 64) = sub_1C6DF10E0();
              *(v43 + 32) = v45;
              *(v43 + 40) = v47;
              sub_1C6EE4EE0();
              sub_1C6EE4730();

              v150 = v28;
              sub_1C6EE4D50();
              sub_1C6EE4D30();

              v143 = 0;
            }

            else
            {
              v143 = 0;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
              v48 = swift_allocObject();
              *(v48 + 16) = v146;
              v49 = &v28[*(*v28 + 120)];
              v50 = sub_1C6EE40E0();
              v52 = v51;
              *(v48 + 56) = MEMORY[0x1E69E6158];
              *(v48 + 64) = sub_1C6DF10E0();
              *(v48 + 32) = v50;
              *(v48 + 40) = v52;
              sub_1C6EE4EE0();
              sub_1C6EE4730();

              v150 = v28;
              sub_1C6EE4D50();
              sub_1C6EE4D30();
            }

            v19 = 1;
          }

          else
          {
            v150 = v28;
            sub_1C6EE4D50();

            sub_1C6EE4D30();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
            v30 = swift_allocObject();
            *(v30 + 16) = v146;
            v31 = &v28[*(*v28 + 120)];
            v32 = sub_1C6EE40E0();
            v34 = v33;
            *(v30 + 56) = MEMORY[0x1E69E6158];
            *(v30 + 64) = sub_1C6DF10E0();
            *(v30 + 32) = v32;
            *(v30 + 40) = v34;
            sub_1C6EE4EE0();
            sub_1C6EE4730();

            LODWORD(v144) = 1;
            v19 = 1;
          }
        }

        else
        {
          LODWORD(v144) = sub_1C6DF280C(31);
          v150 = v28;
          sub_1C6EE4D50();

          sub_1C6EE4D30();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
          v35 = swift_allocObject();
          *(v35 + 16) = v146;
          v36 = &v28[*(*v28 + 120)];
          v37 = sub_1C6EE40E0();
          v39 = v38;
          *(v35 + 56) = MEMORY[0x1E69E6158];
          *(v35 + 64) = sub_1C6DF10E0();
          *(v35 + 32) = v37;
          *(v35 + 40) = v39;
          sub_1C6EE4EE0();
          sub_1C6EE4730();

          v19 = 1;
        }

        ++v20;
        if (v29 == sub_1C6EE4D40())
        {
          goto LABEL_24;
        }
      }

      v28 = sub_1C6EE51D0();
      v29 = v20 - 3;
      if (!__OFADD__(v26, 1))
      {
        goto LABEL_11;
      }

LABEL_23:
      __break(1u);
LABEL_24:

      v17 = v149;
      v7 = v139;
      v14 = v142;
      v15 = v140;
LABEL_26:
      *&v146 = v12;
      v150 = v17;
      MEMORY[0x1EEE9AC00](v53);
      *(&v133 - 4) = v7;
      *(&v133 - 3) = v14;
      *(&v133 - 2) = v15;
      sub_1C6EE4D50();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AE0, &qword_1C6EF7620);
      swift_getWitnessTable();
      sub_1C6EDA944(&qword_1EDEF6208, &unk_1EC1F9AE0, &qword_1C6EF7620);
      v54 = v143;
      v55 = sub_1C6EE4C40();
      v56 = v54;

      v138 = sub_1C6E0B8E0(v55);

      v57 = v148;
      v58 = &off_1E829C000;
      if (!sub_1C6EE4D40())
      {
        goto LABEL_37;
      }

      v143 = objc_opt_self();
      v59 = 4;
      v140 = xmmword_1C6EE6590;
      v139 = xmmword_1C6EE6B40;
      v144 = v57;
      while (2)
      {
        v66 = v59 - 4;
        v67 = sub_1C6EE4D10();
        sub_1C6EE4CD0();
        if (v67)
        {
          v68 = *(v57 + 8 * v59);

          v69 = v59 - 3;
          if (__OFADD__(v66, 1))
          {
            break;
          }

          goto LABEL_32;
        }

        v68 = sub_1C6EE51D0();
        v69 = v59 - 3;
        if (!__OFADD__(v66, 1))
        {
LABEL_32:
          v70 = [v143 v58[136]];
          v71 = *(*v68 + 120);
          v72 = sub_1C6EE4100();
          v150 = 0;
          v73 = [v70 removeItemAtURL:v72 error:&v150];

          v74 = v150;
          if (v73)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
            v60 = swift_allocObject();
            *(v60 + 16) = v140;
            v61 = *(*v68 + 120);
            v62 = v74;
            v63 = sub_1C6EE40E0();
            v65 = v64;
            *(v60 + 56) = MEMORY[0x1E69E6158];
            *(v60 + 64) = sub_1C6DF10E0();
            *(v60 + 32) = v63;
            *(v60 + 40) = v65;
            sub_1C6EE4EE0();
            sub_1C6EE4730();
          }

          else
          {
            v75 = v150;
            v76 = sub_1C6EE4050();

            swift_willThrow();
            LODWORD(v142) = sub_1C6EE4EC0();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
            v77 = swift_allocObject();
            *(v77 + 16) = v139;
            sub_1C6DF1088();
            v78 = sub_1C6EE5460();
            v80 = v79;
            v81 = MEMORY[0x1E69E6158];
            *(v77 + 56) = MEMORY[0x1E69E6158];
            v82 = sub_1C6DF10E0();
            *(v77 + 64) = v82;
            *(v77 + 32) = v78;
            *(v77 + 40) = v80;
            v58 = &off_1E829C000;
            v150 = 0;
            v151 = 0xE000000000000000;
            swift_getErrorValue();
            sub_1C6EE5480();
            v83 = v150;
            v84 = v151;
            *(v77 + 96) = v81;
            *(v77 + 104) = v82;
            *(v77 + 72) = v83;
            *(v77 + 80) = v84;
            sub_1C6EE4730();

            v56 = 0;
          }

          v57 = v144;
          ++v59;
          if (v69 == sub_1C6EE4D40())
          {
            goto LABEL_37;
          }

          continue;
        }

        break;
      }

      __break(1u);
LABEL_37:

      v85 = objc_opt_self();
      v86 = [v85 v58[136]];
      v87 = sub_1C6EE4100();
      v150 = 0;
      v88 = [v86 contentsOfDirectoryAtURL:v87 includingPropertiesForKeys:0 options:4 error:&v150];

      v89 = v150;
      if (!v88)
      {
        v127 = v150;
        goto LABEL_59;
      }

      v90 = sub_1C6EE4CA0();
      v91 = v89;

      v92 = v58[136];
      v136 = v85;
      v93 = [v85 v92];
      v7 = sub_1C6EE4100();
      v150 = 0;
      v94 = [v93 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:0 options:4 error:&v150];

      v95 = v150;
      if (!v94)
      {
        v127 = v150;

LABEL_59:

        v128 = sub_1C6EE4050();

        swift_willThrow();
        sub_1C6EE4EC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
        v129 = swift_allocObject();
        *(v129 + 16) = xmmword_1C6EE6590;
        v150 = 0;
        v151 = 0xE000000000000000;
        swift_getErrorValue();
        sub_1C6EE5480();
        v130 = v150;
        v131 = v151;
        *(v129 + 56) = MEMORY[0x1E69E6158];
        *(v129 + 64) = sub_1C6DF10E0();
        *(v129 + 32) = v130;
        *(v129 + 40) = v131;
        sub_1C6EE4730();

LABEL_60:
        sub_1C6EE4EE0();
        result = sub_1C6EE4730();
        goto LABEL_61;
      }

      v6 = sub_1C6EE4CA0();
      v96 = v95;

      v150 = v90;
      v0 = &v150;
      sub_1C6ED1F9C(v6, &qword_1EC1F9910, &unk_1C6EF6B80, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0]);
      v2 = v150;
      v144 = *(v150 + 2);
      if (!v144)
      {
LABEL_57:

        goto LABEL_60;
      }

      v97 = 0;
      v142 = &v150[(*(v141 + 80) + 32) & ~*(v141 + 80)];
      *&v140 = v141 + 16;
      v147 = v138 + 56;
      *&v139 = v141 + 8;
      v134 = xmmword_1C6EE6590;
      v133 = xmmword_1C6EE6B40;
      v98 = v145;
      v143 = v150;
      while (v97 < *(v2 + 2))
      {
        v105 = v137;
        (*(v141 + 16))(v137, &v142[*(v141 + 72) * v97], v98);
        v106 = sub_1C6EE40E0();
        v108 = v107;
        v109 = v138;
        if (*(v138 + 16) && (v6 = v106, v110 = *(v138 + 40), sub_1C6EE5580(), sub_1C6EE4B30(), v111 = sub_1C6EE55A0(), v112 = -1 << *(v109 + 32), v0 = v111 & ~v112, ((*(v147 + ((v0 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v0) & 1) != 0))
        {
          v7 = ~v112;
          while (1)
          {
            v113 = (*(v109 + 48) + 16 * v0);
            v114 = *v113 == v6 && v113[1] == v108;
            if (v114 || (sub_1C6EE54B0() & 1) != 0)
            {
              break;
            }

            v0 = (v0 + 1) & v7;
            if (((*(v147 + ((v0 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v0) & 1) == 0)
            {
              goto LABEL_53;
            }
          }

          v99 = v56;

          v101 = v105;
          v102 = v145;
        }

        else
        {
LABEL_53:

          v115 = [v136 v58[136]];
          v116 = sub_1C6EE4100();
          v150 = 0;
          v117 = [v115 removeItemAtURL:v116 error:&v150];

          v118 = v150;
          if (v117)
          {
            v99 = v56;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
            v6 = swift_allocObject();
            *(v6 + 1) = v134;
            v7 = sub_1C6DF1088();
            v100 = v118;
            v101 = v105;
            v102 = v145;
            v103 = sub_1C6EE5460();
            v0 = v104;
            *(v6 + 7) = MEMORY[0x1E69E6158];
            *(v6 + 8) = sub_1C6DF10E0();
            *(v6 + 4) = v103;
            *(v6 + 5) = v0;
            sub_1C6EE4EE0();
            sub_1C6EE4730();
          }

          else
          {
            v119 = v150;
            v120 = sub_1C6EE4050();

            swift_willThrow();
            LODWORD(v135) = sub_1C6EE4EC0();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
            v7 = swift_allocObject();
            *(v7 + 16) = v133;
            sub_1C6DF1088();
            v101 = v105;
            v102 = v145;
            v121 = sub_1C6EE5460();
            v123 = v122;
            v6 = MEMORY[0x1E69E6158];
            *(v7 + 56) = MEMORY[0x1E69E6158];
            v124 = sub_1C6DF10E0();
            *(v7 + 64) = v124;
            *(v7 + 32) = v121;
            *(v7 + 40) = v123;
            v150 = 0;
            v151 = 0xE000000000000000;
            swift_getErrorValue();
            v0 = &v150;
            sub_1C6EE5480();
            v125 = v150;
            v126 = v151;
            *(v7 + 96) = v6;
            *(v7 + 104) = v124;
            *(v7 + 72) = v125;
            *(v7 + 80) = v126;
            sub_1C6EE4730();

            v99 = 0;
          }
        }

        ++v97;
        (*v139)(v101, v102);
        v98 = v102;
        v56 = v99;
        v58 = &off_1E829C000;
        v2 = v143;
        if (v97 == v144)
        {
          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_64:
      swift_once();
    }
  }

  v9 = v3[10];
  type metadata accessor for FileStore.Errors();
  swift_getWitnessTable();
  swift_allocError();
  *v10 = 0;
  result = swift_willThrow();
LABEL_61:
  v132 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C6ED1770()
{
  v0 = sub_1C6ED28FC();
  v1 = sub_1C6ED2988();
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C6EE6590;
  v3 = MEMORY[0x1E69E6158];
  v4 = sub_1C6EE4DF0();
  v6 = v5;
  *(v2 + 56) = v3;
  *(v2 + 64) = sub_1C6DF10E0();
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  sub_1C6EE4EE0();
  sub_1C6EE4730();

  if (*(v1 + 16) <= *(v0 + 16) >> 3)
  {
    sub_1C6E038DC(v1);

    return v0;
  }

  else
  {
    v7 = sub_1C6E04178(v1, v0);

    return v7;
  }
}

void sub_1C6ED18D8(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + *(*v1 + 168)))
  {
    v4 = v3[10];
    v5 = v3[11];
    v6 = v3[12];
    type metadata accessor for FileStore.FileContainer.Errors();
    swift_getWitnessTable();
    swift_allocError();
    *v7 = xmmword_1C6EE91C0;
    *(v7 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v9 = sub_1C6ED2988();
    v15[1] = v15;
    v16 = a1;
    MEMORY[0x1EEE9AC00](v9);
    v10 = v3[11];
    v15[0] = v3[10];
    v14 = v3[12];
    sub_1C6EE4D50();

    swift_getWitnessTable();
    v11 = sub_1C6EE5250();

    v16 = v11;
    swift_getWitnessTable();
    sub_1C6EE4C50();

    if (!v2)
    {
      v12 = *(sub_1C6ED1770() + 16);

      if (!v12)
      {
        type metadata accessor for FileStore.FileContainer.Flags();
        sub_1C6EE5470();
        swift_allocObject();
        sub_1C6EE4CC0();
        *v13 = 4;
        sub_1C6EE4D50();
        swift_getWitnessTable();
        sub_1C6EE5040();
        sub_1C6ED5300(v16);
      }
    }
  }
}

uint64_t sub_1C6ED1B98(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1C6ED93D8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v8 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C6ED1C84(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1C6ED94DC(result, v12, 1, v3, &qword_1EC1F79C8, &qword_1C6EE6C38);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C6ED1D80(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1C6ED95D8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v8 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C6ED1E6C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C6ED96DC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C6ED1F9C(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v24 = v8 + v6;
  }

  else
  {
    v24 = v8;
  }

  v7 = sub_1C6DEE840(isUniquelyReferenced_nonNull_native, v24, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v17 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  v18 = *(result - 8);
  if (v17 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = *(v18 + 72);
  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v21 = v7[2];
  v22 = __OFADD__(v21, v6);
  v23 = v21 + v6;
  if (!v22)
  {
    v7[2] = v23;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C6ED20F8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1C6EE5110();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1C6EE5110();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1C6ED9B08(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1C6ED9BA8(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}