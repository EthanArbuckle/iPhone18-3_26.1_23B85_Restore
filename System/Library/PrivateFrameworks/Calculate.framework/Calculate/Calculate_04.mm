uint64_t sub_1C1EC0448()
{
  v1 = sub_1C1F52304();
  v0[3] = v1;
  v2 = *(v1 - 8);
  v0[4] = v2;
  v3 = *(v2 + 64) + 15;
  v0[5] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21260, &qword_1C1F56D28) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v0[6] = v5;
  v0[7] = sub_1C1F52284();
  v0[8] = sub_1C1F52274();
  v6 = sub_1C1F52244();
  v0[9] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v0[10] = v7;
  v9 = *(v7 + 64) + 15;
  v10 = swift_task_alloc();
  v0[11] = v10;
  v11 = *MEMORY[0x1E69D4800];
  (*(v8 + 104))();
  v12 = *(MEMORY[0x1E69D4810] + 4);
  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_1C1EC0648;

  return MEMORY[0x1EEE42B58](v5, v10, 0x158E460913D00000, 1, 0);
}

uint64_t sub_1C1EC0648()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;

  v5 = v2[11];
  v6 = v2[10];
  v7 = v2[9];
  v8 = v2[8];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v9 = sub_1C1EC1298;
  }

  else
  {
    (*(v6 + 8))(v5, v7);

    v9 = sub_1C1EC080C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1C1EC080C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  (*(v4 + 56))(v1, 0, 1, v3);
  (*(v4 + 32))(v2, v1, v3);

  v5 = sub_1C1F52204();
  v0[13] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v0[14] = v6;
  v8 = *(v6 + 64) + 15;
  v9 = swift_task_alloc();
  v0[15] = v9;
  v10 = sub_1C1F52234();
  v0[16] = v10;
  v11 = *(v10 - 8);
  v0[17] = *(v11 + 64);
  v12 = swift_task_alloc();
  sub_1C1F522D4();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF212B8, &qword_1C1F56DB0) - 8) + 64) + 15;
  v14 = swift_task_alloc();
  sub_1C1F52214();
  v15 = *(v11 + 8);
  v0[18] = v15;
  v0[19] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v12, v10);
  if ((*(v7 + 48))(v14, 1, v5) == 1)
  {
    sub_1C1E83580(v14, &qword_1EBF212B8, &qword_1C1F56DB0);

    v16 = v0[18];
    v17 = v0[16];
    v18 = v0[15];
    v20 = v0[4];
    v19 = v0[5];
    v21 = v0[2];
    v42 = v0[3];
    v22 = v0[17] + 15;

    v23 = swift_task_alloc();
    sub_1C1F522D4();
    v24 = sub_1C1F52224();
    v40 = v25;
    v41 = v24;
    v16(v23, v17);
    v26 = swift_task_alloc();
    sub_1C1F522D4();
    v27 = type metadata accessor for StocksKitCurrencyCache.ProviderData();
    v28 = v21 + *(v27 + 20);
    sub_1C1F521B4();
    v16(v26, v17);
    (*(v20 + 8))(v19, v42);
    *v21 = v41;
    v21[1] = v40;
    v29 = v21 + *(v27 + 24);
    *v29 = xmmword_1C1F56CF0;
    *(v29 + 3) = 0;
    *(v29 + 4) = 0;
    *(v29 + 2) = 0;

    (*(*(v27 - 8) + 56))(v21, 0, 1, v27);

    v30 = v0[1];

    return v30();
  }

  else
  {
    v32 = v0[7];
    (*(v7 + 32))(v9, v14, v5);

    v33 = sub_1C1F521F4();
    v0[20] = v33;
    v34 = *(v33 - 8);
    v0[21] = v34;
    v35 = *(v34 + 64) + 15;
    v0[22] = swift_task_alloc();
    v36 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF212C0, &qword_1C1F56DB8) - 8) + 64) + 15;
    v37 = swift_task_alloc();
    v0[23] = v37;
    v0[24] = sub_1C1F52274();
    v38 = *(MEMORY[0x1E69D4818] + 4);
    v39 = swift_task_alloc();
    v0[25] = v39;
    *v39 = v0;
    v39[1] = sub_1C1EC0CEC;

    return MEMORY[0x1EEE42B60](v37, v9);
  }
}

uint64_t sub_1C1EC0CEC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;

  v5 = *(v2 + 192);
  if (v0)
  {

    v6 = sub_1C1EC0E34;
  }

  else
  {

    v6 = sub_1C1EC1040;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C1EC0E34()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v3 + 56))(v1, 1, 1, v2);
  sub_1C1E83580(v1, &qword_1EBF212C0, &qword_1C1F56DB8);

  v4 = v0[22];
  v5 = v0[18];
  v6 = v0[16];
  v7 = v0[15];
  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[2];
  v23 = v0[3];
  v11 = v0[17] + 15;

  v12 = swift_task_alloc();
  sub_1C1F522D4();
  v13 = sub_1C1F52224();
  v21 = v14;
  v22 = v13;
  v5(v12, v6);
  v15 = swift_task_alloc();
  sub_1C1F522D4();
  v16 = type metadata accessor for StocksKitCurrencyCache.ProviderData();
  v17 = v10 + *(v16 + 20);
  sub_1C1F521B4();
  v5(v15, v6);
  (*(v9 + 8))(v8, v23);
  *v10 = v22;
  v10[1] = v21;
  v18 = v10 + *(v16 + 24);
  *v18 = xmmword_1C1F56CF0;
  *(v18 + 3) = 0;
  *(v18 + 4) = 0;
  *(v18 + 2) = 0;

  (*(*(v16 - 8) + 56))(v10, 0, 1, v16);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1C1EC1040()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[13];
  (*(v3 + 56))(v1, 0, 1, v4);
  (*(v3 + 32))(v2, v1, v4);

  v8 = sub_1C1F521D4();
  v36 = v9;
  v37 = v8;
  v10 = sub_1C1F521C4();
  v34 = v11;
  v35 = v10;
  sub_1C1F521E4();
  v13 = v12;
  (*(v3 + 8))(v2, v4);
  (*(v5 + 8))(v6, v7);
  v14 = v0[22];
  v15 = v0[18];
  v16 = v0[16];
  v17 = v0[15];
  v18 = v0[4];
  v19 = v0[5];
  v20 = v0[2];
  v33 = v0[3];
  v21 = v0[17] + 15;

  v22 = swift_task_alloc();
  sub_1C1F522D4();
  v23 = sub_1C1F52224();
  v31 = v24;
  v32 = v23;
  v15(v22, v16);
  v25 = swift_task_alloc();
  sub_1C1F522D4();
  v26 = type metadata accessor for StocksKitCurrencyCache.ProviderData();
  v27 = v20 + *(v26 + 20);
  sub_1C1F521B4();
  v15(v25, v16);
  (*(v18 + 8))(v19, v33);
  *v20 = v32;
  v20[1] = v31;
  v28 = (v20 + *(v26 + 24));
  *v28 = v37;
  v28[1] = v36;
  v28[2] = v35;
  v28[3] = v34;
  v28[4] = v13;

  (*(*(v26 - 8) + 56))(v20, 0, 1, v26);

  v29 = v0[1];

  return v29();
}

uint64_t sub_1C1EC1298()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  (*(v5 + 56))(v3, 1, 1, v4);
  sub_1C1E83580(v3, &qword_1EBF21260, &qword_1C1F56D28);

  v7 = type metadata accessor for StocksKitCurrencyCache.ProviderData();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = v0[1];

  return v8();
}

id StocksKitCurrencyCacheImpl.init()()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21270, &qword_1C1F56D38);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - v4;
  v6 = OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21260, &qword_1C1F56D28);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v24 - v9;
  v11 = sub_1C1F52304();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21268, &qword_1C1F56D30);
  v13 = *(v12 + 52);
  v14 = (*(v12 + 48) + 3) & 0x1FFFFFFFCLL;
  v15 = swift_allocObject();
  *(v15 + ((*(*v15 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v16 = MEMORY[0x1E69E6B68];
  sub_1C1EC281C(v10, v15 + *(*v15 + *MEMORY[0x1E69E6B68] + 16), &qword_1EBF21260, &qword_1C1F56D28);
  *&v0[v6] = v15;
  v17 = OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_lastRefreshDateLock;
  v18 = sub_1C1F52004();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21278, &qword_1C1F56D40);
  v20 = *(v19 + 52);
  v21 = (*(v19 + 48) + 3) & 0x1FFFFFFFCLL;
  v22 = swift_allocObject();
  *(v22 + ((*(*v22 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1C1EC281C(v5, v22 + *(*v22 + *v16 + 16), &qword_1EBF21270, &qword_1C1F56D38);
  *&v0[v17] = v22;
  v24.receiver = v0;
  v24.super_class = ObjectType;
  return objc_msgSendSuper2(&v24, sel_init);
}

uint64_t sub_1C1EC16C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_currencyDataLock);

  v2 = *(v0 + OBJC_IVAR____TtC9Calculate26StocksKitCurrencyCacheImpl_lastRefreshDateLock);
}

id StocksKitCurrencyCacheImpl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1EC1788(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1C1EC3D1C;

  return v7();
}

uint64_t sub_1C1EC1870(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1C1EC1958;

  return v8();
}

uint64_t sub_1C1EC1958()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C1EC1A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21288, &qword_1C1F56D58);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1C1EB1D18(a3, v25 - v11, &qword_1EBF21288, &qword_1C1F56D58);
  v13 = sub_1C1F527A4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1C1E83580(v12, &qword_1EBF21288, &qword_1C1F56D58);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1C1F52794();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1C1F52764();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1C1F52474() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_1C1E83580(a3, &qword_1EBF21288, &qword_1C1F56D58);

    return v23;
  }

LABEL_8:
  sub_1C1E83580(a3, &qword_1EBF21288, &qword_1C1F56D58);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1C1EC1D48(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C1EC3D20;

  return v7(a1);
}

uint64_t sub_1C1EC1E40(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C1EC1F38;

  return v7(a1);
}

uint64_t sub_1C1EC1F38()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C1EC2030(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF212D0, &unk_1C1F57080);
  v39 = a2;
  result = sub_1C1F52BC4();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1C1F52CD4();
      sub_1C1F524A4();
      result = sub_1C1F52CF4();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C1EC22D4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C1F52964() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1C1F52CD4();

      sub_1C1F524A4();
      v13 = sub_1C1F52CF4();

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
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
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

id sub_1C1EC2484()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF212D0, &unk_1C1F57080);
  v2 = *v0;
  v3 = sub_1C1F52BB4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_1C1EC25F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF212D0, &unk_1C1F57080);
    v3 = sub_1C1F52BE4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1C1EAC150(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t type metadata accessor for StocksKitCurrencyCache.ProviderData()
{
  result = qword_1EDC2F3A0;
  if (!qword_1EDC2F3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1EC2740(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_1C1EC2790(result, a2);

    return sub_1C1EC27E4(a3, a4);
  }

  return result;
}

uint64_t sub_1C1EC2790(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C1EC27E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C1EC2790(a1, a2);
  }

  return a1;
}

uint64_t sub_1C1EC281C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C1EC2884(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1C1E83580(a1, &qword_1EBF21260, &qword_1C1F56D28);
  v4 = sub_1C1F52304();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, v3, v4);
  return (*(v5 + 56))(a1, 0, 1, v4);
}

uint64_t sub_1C1EC2948()
{
  v2 = v0[4];
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1C1EC3D1C;

  return sub_1C1EBD440(v2, v6, v7, v8, v3, v4, v5);
}

uint64_t sub_1C1EC29F8()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C1EC3D1C;

  return sub_1C1EBE638(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1C1EC2AA0(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1C1E83580(a1, &qword_1EBF21270, &qword_1C1F56D38);
  sub_1C1F522F4();
  v4 = sub_1C1F52004();
  return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
}

uint64_t dispatch thunk of StocksKitCurrencyCache.refresh()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C1EC3D28;

  return v6();
}

uint64_t dispatch thunk of StocksKitCurrencyCache.refresh(timeout:)(double a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C1EC2D98;
  v7.n128_f64[0] = a1;

  return v9(v7);
}

uint64_t sub_1C1EC2D98(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of StocksKitCurrencyCache.lastRefreshDate.getter(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C1EC3D1C;

  return v8(a1);
}

uint64_t dispatch thunk of StocksKitCurrencyCache.providerData.getter(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C1EC1958;

  return v8(a1);
}

void sub_1C1EC3228()
{
  sub_1C1EC32E0();
  if (v0 <= 0x3F)
  {
    sub_1C1EC34EC(319, &qword_1EBF212C8, &type metadata for StocksKitCurrencyCache.ProviderLogo, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C1EC32E0()
{
  if (!qword_1EDC2E900)
  {
    sub_1C1F51FD4();
    v0 = sub_1C1F528D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC2E900);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C1EC3390(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 40))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C1EC33E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1C1EC347C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1EC349C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_1C1EC34EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1C1EC353C()
{
  result = qword_1EDC2C298;
  if (!qword_1EDC2C298)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC2C298);
  }

  return result;
}

uint64_t sub_1C1EC3588()
{
  v2 = v0[2];
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C1EC3D1C;

  return sub_1C1EBD0AC(v3, v4, v2);
}

uint64_t sub_1C1EC363C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1C1EC3D1C;

  return sub_1C1EC1788(v2, v3, v5);
}

uint64_t sub_1C1EC36FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C1EC3D1C;

  return sub_1C1EC1870(a1, v4, v5, v7);
}

uint64_t sub_1C1EC37C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C1EC3D1C;

  return sub_1C1EC1D48(a1, v5);
}

uint64_t sub_1C1EC3880()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C1EC3D1C;

  return sub_1C1EBC868(v2, v3);
}

uint64_t objectdestroy_32Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1EC396C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C1EC3D1C;

  return sub_1C1EBBC7C(v3);
}

uint64_t objectdestroy_57Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1EC3A60()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C1EC3D1C;

  return sub_1C1EBBA80(v2);
}

uint64_t objectdestroy_36Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C1EC3B78(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C1EC3D1C;

  return sub_1C1EC1E40(a1, v5);
}

uint64_t sub_1C1EC3C30(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C1EC1958;

  return sub_1C1EC1E40(a1, v5);
}

uint64_t sub_1C1EC3D2C(uint64_t a1)
{
  v3 = *(*a1 + 176);
  v4 = (*a1 + 176);
  result = (v3)();
  if (result)
  {
    v6 = CalculateExpression.format.getter();

    if (v6 != 2)
    {
      return 0;
    }

    if (!(v3)(v7))
    {
      return 1;
    }

    v8 = CalculateExpression.postfixStack.getter();

    if (v8 >> 62)
    {
      if (sub_1C1F52994())
      {
LABEL_6:
        if ((v8 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C6911DB0](0, v8);
        }

        else
        {
          if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_26;
          }

          v9 = *(v8 + 32);
        }

        v10 = CalculateExpression.rich.getter();
        v11 = (*(*v10 + 392))(v10);

        if (v11 >> 62)
        {
          v3 = sub_1C1F52994();
        }

        else
        {
          v3 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v12 = (*a1 + 408);
        v1 = *v12;
        v4 = (*v12)(v17);
        if (!v3)
        {
          goto LABEL_17;
        }

        if ((v3 & 0x8000000000000000) == 0)
        {
          if (!(*v13 >> 62))
          {
            result = *((*v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if ((result & 0x8000000000000000) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_16;
          }

LABEL_27:
          result = sub_1C1F52994();
          if ((result & 0x8000000000000000) == 0)
          {
LABEL_15:
            if (result < v3)
            {
              __break(1u);
              return result;
            }
          }

LABEL_16:
          sub_1C1E98F60(0, v3);
LABEL_17:
          v4(v17, 0);
          v14 = *CalculateExpression.rich.getter();
          v15 = (*(v14 + 392))();

          v16 = v1(v17);
          sub_1C1E8CECC(v15);
          v16(v17, 0);
          (*(*a1 + 232))(0);
          (*(*a1 + 256))(1);

          return 1;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    return 1;
  }

  return result;
}

uint64_t CalculateExpression.RollOutOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

BOOL sub_1C1EC40B4(void *a1)
{
  v1 = a1;
  v2 = NSNumberFormatter.shouldIgnoreChanges.getter();

  return v2;
}

BOOL NSNumberFormatter.shouldIgnoreChanges.getter()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_1EBF21C80);
  swift_endAccess();
  if (v1)
  {
    sub_1C1F52944();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  sub_1C1EC418C(v5);
  return *(&v4 + 1) != 0;
}

uint64_t sub_1C1EC418C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF212D8, &qword_1C1F574F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NSNumberFormatter.ignoreChanges(_:)(void (*a1)(void))
{
  swift_beginAccess();
  v3 = objc_getAssociatedObject(v1, &unk_1EBF21C80);
  swift_endAccess();
  if (v3)
  {
    sub_1C1F52944();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  swift_beginAccess();
  objc_setAssociatedObject(v1, &unk_1EBF21C80, v4, 1);
  swift_endAccess();

  a1();
  sub_1C1EC4384(v1, v8);
  return sub_1C1EC418C(v8);
}

void sub_1C1EC4314(void *a1, int a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v4 = a1;
  NSNumberFormatter.ignoreChanges(_:)(sub_1C1EC44EC);
  _Block_release(v5);
}

uint64_t sub_1C1EC4384(void *a1, uint64_t a2)
{
  sub_1C1E83510(a2, v11);
  v3 = v12;
  if (v12)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v11, v12);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    MEMORY[0x1EEE9AC00](v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8);
    v9 = sub_1C1F52C54();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v9 = 0;
  }

  swift_beginAccess();
  objc_setAssociatedObject(a1, &unk_1EBF21C80, v9, 1);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1C1EC4540(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1EC5418, v94);
  v4 = v94[0];
  if (!v94[0])
  {
    return 0;
  }

  v5 = v94[1];
  v6 = v94[2];
  v7 = v94[3];
  v8 = *(*v94[0] + 416);
  v9 = *v94[0] + 416;

  v85 = v9;
  v86 = v8;
  v10 = v8(v5);
  type metadata accessor for CalculateExpression.RichToken();
  LOBYTE(v94[0]) = 16;
  v11 = sub_1C1E7DD60();
  v12 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v94, v11 & 1);
  v84 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    goto LABEL_91;
  }

  v89 = v10;
  v90 = v12;
  if (v5 < 0)
  {
LABEL_18:

    sub_1C1E98278(v4);

    return 0;
  }

  v87 = v7;
  v13 = 0;
  v2 = *(*v4 + 392);
  v6 = v5;
  v5 = 16;
  v14 = 15;
  v88 = v6;
  do
  {
    v18 = v2();
    if ((v18 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1C6911DB0](v6, v18);
    }

    else
    {
      if (v6 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_30;
      }

      v10 = *(v18 + 8 * v6 + 32);
    }

    v19 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
    LOBYTE(v94[0]) = *(v10 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    LOBYTE(v91) = 16;
    if (static CalculateExpression.TokenType.== infix(_:_:)(v94, &v91))
    {

      v16 = __OFADD__(v13++, 1);
      if (v16)
      {
        __break(1u);
        goto LABEL_47;
      }
    }

    else
    {
      LOBYTE(v94[0]) = *(v10 + v19);
      LOBYTE(v91) = 15;
      v20 = static CalculateExpression.TokenType.== infix(_:_:)(v94, &v91);

      if (v20)
      {
        v16 = __OFSUB__(v13--, 1);
        if (v16)
        {
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          if (((*(*v6 + 256))() & 1) == 0)
          {
            goto LABEL_99;
          }

          v63 = v2();
          if (v63 >> 62)
          {
            goto LABEL_140;
          }

          v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_95;
        }
      }
    }
  }

  while (v6-- > 0);
  v14 = v87;
  v5 = v88;
  if ((v13 & 0x8000000000000000) == 0)
  {
    goto LABEL_18;
  }

  v10 = v89;
  if (!v89)
  {
    v22 = *(*v4 + 408);
    v2 = v90;

    v10 = v22(v94);
    if (*v23 >> 62)
    {
LABEL_119:
      if (sub_1C1F52994() < 0)
      {
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
    }

    sub_1C1E98664(0, 0, v2);

    (v10)(v94, 0);

    v24 = v4;
LABEL_28:
    sub_1C1E98278(v24);
    return 1;
  }

  if ((*(*a1 + 224))(v15) & 1) != 0 || ((*(*v4 + 584))() & 1) != 0 || ((*(*v4 + 568))() & 1) != 0 || ((*(*v4 + 576))())
  {
LABEL_25:

    sub_1C1E98278(v4);
    return 0;
  }

LABEL_30:
  v25 = v86(v5);
  v81 = v5;
  if (v25)
  {
    v10 = v25;
    v26 = ~v5;
    v81 = v5;
    while (1)
    {
      v83 = v26;
      v27 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
      LOBYTE(v94[0]) = *(v10 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      if ((CalculateExpression.TokenType.isOperator.getter() & 1) == 0)
      {
        break;
      }

      LOBYTE(v91) = *(v10 + v27);
      v80 = v10;
      if (CalculateExpression.TokenType.isPostfixOperator.getter())
      {
        LOBYTE(v91) = *(v10 + v27);
        v93 = 9;
        if ((static CalculateExpression.TokenType.== infix(_:_:)(&v91, &v93) & 1) == 0)
        {
          break;
        }

        if (!(*(*a1 + 176))())
        {
          break;
        }

        v28 = CalculateExpression.engine.getter();

        v29 = v28 == 1;
        v10 = v80;
        if (!v29)
        {
          break;
        }
      }

      LOBYTE(v94[0]) = *(v10 + v27);
      LOBYTE(v91) = 7;
      sub_1C1E9019C();
      if (sub_1C1F52414())
      {
        break;
      }

      v30 = (*(*v4 + 408))(v94);
      v32 = v31;
      v10 = *v31;
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v32 = v10;
      if (!isUniquelyReferenced_nonNull_bridgeObject || v10 < 0 || (v10 & 0x4000000000000000) != 0)
      {
        v10 = sub_1C1E98444(v10);
        *v32 = v10;
      }

      v34 = v81;
      v35 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v81 >= v35)
      {
        goto LABEL_125;
      }

      v82 = v35 - 1;
      v36 = *((v10 & 0xFFFFFFFFFFFFFF8) + 8 * v34 + 0x20);
      memmove(((v10 & 0xFFFFFFFFFFFFFF8) + 8 * v34 + 32), ((v10 & 0xFFFFFFFFFFFFFF8) + 8 * v34 + 40), 8 * (v83 + v35));
      *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v82;
      *v32 = v10;

      v30(v94, 0);

      v81 = v34 - 1;
      v10 = v86(v34 - 1);
      v26 = v83 + 1;
      v5 = v88;
      if (!v10)
      {
        goto LABEL_48;
      }
    }

LABEL_47:
  }

LABEL_48:
  v37 = v86(v81);
  if (v37)
  {
    LOBYTE(v94[0]) = *(v37 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    LOBYTE(v91) = 15;
    v10 = v37;
    v38 = static CalculateExpression.TokenType.== infix(_:_:)(v94, &v91);

    if (v38)
    {
      goto LABEL_25;
    }
  }

  v39 = v81 + 1;
  if (__OFADD__(v81, 1))
  {
    goto LABEL_129;
  }

  v40 = v86(v81 + 1);
  if (!v40)
  {
    goto LABEL_62;
  }

  v41 = v40;
  v42 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  LOBYTE(v94[0]) = *(v40 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  LOBYTE(v91) = 16;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v94, &v91) & 1) == 0 || ((*(*v41 + 256))() & 1) == 0)
  {

LABEL_62:
    v14 = *(*v4 + 408);

    v10 = (v14)(v94);
    if (!(*v53 >> 62))
    {
      v54 = *((*v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_64;
    }

LABEL_130:
    v54 = sub_1C1F52994();
LABEL_64:
    if (v54 < v84)
    {
      __break(1u);
    }

    else if ((v84 & 0x8000000000000000) == 0)
    {
      sub_1C1E98664(v84, v84, v90);

      v55 = (v10)(v94, 0);
      v56 = (v2)(v55);
      if (!(v56 >> 62))
      {
        v10 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_68;
      }

LABEL_133:
      v10 = sub_1C1F52994();
LABEL_68:
      v85 = v14;

      if (v84 < v10)
      {
        v58 = 0;
        v5 = v88;
        do
        {
          v59 = v5 + 1;
          v60 = (v2)(v57);
          v10 = v60;
          if ((v60 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x1C6911DB0](v5 + 1, v60);
          }

          else
          {
            if ((v59 & 0x8000000000000000) != 0)
            {
              goto LABEL_121;
            }

            if (v59 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_122;
            }

            v6 = *(v60 + 8 * v5 + 40);
          }

          v10 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
          LOBYTE(v94[0]) = *(v6 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
          LOBYTE(v91) = 15;
          if (static CalculateExpression.TokenType.== infix(_:_:)(v94, &v91))
          {

            v16 = __OFADD__(v58++, 1);
            if (v16)
            {
              goto LABEL_126;
            }
          }

          else
          {
            LOBYTE(v94[0]) = *(v6 + v10);
            LOBYTE(v91) = 16;
            if (static CalculateExpression.TokenType.== infix(_:_:)(v94, &v91))
            {
              if (!v58)
              {
                goto LABEL_92;
              }

              v16 = __OFSUB__(v58--, 1);
              if (v16)
              {
                goto LABEL_128;
              }
            }

            else
            {
            }
          }

          v14 = v5 + 2;
          if (__OFADD__(v59, 1))
          {
            goto LABEL_123;
          }

          v62 = (v2)(v61);
          if (v62 >> 62)
          {
            v10 = sub_1C1F52994();
          }

          else
          {
            v10 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          ++v5;
        }

        while (v14 < v10);
      }

      goto LABEL_100;
    }

    __break(1u);
    goto LABEL_133;
  }

  v43 = (*(*v41 + 232))();
  v45 = v44;
  LOBYTE(v94[0]) = *(v41 + v42);
  v46 = sub_1C1E7DD60();
  v2 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v43, v45, v94, v46 & 1);
  v47 = (*(*v4 + 408))(v94);
  v49 = v48;
  v50 = *v48;
  v51 = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v49 = v50;
  if (!v51 || (v50 & 0x8000000000000000) != 0 || (v50 & 0x4000000000000000) != 0)
  {
    v50 = sub_1C1E98444(v50);
    *v49 = v50;
  }

  if ((v39 & 0x8000000000000000) != 0)
  {
    goto LABEL_138;
  }

  if (v39 < *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v52 = *((v50 & 0xFFFFFFFFFFFFFF8) + 8 * v39 + 0x20);
    *((v50 & 0xFFFFFFFFFFFFFF8) + 8 * v39 + 0x20) = v2;

    v47(v94, 0);

    v24 = v4;
    goto LABEL_28;
  }

  while (1)
  {
    __break(1u);
LABEL_140:
    v64 = sub_1C1F52994();
LABEL_95:

    if (__OFSUB__(v64, 1))
    {
      break;
    }

    if (v64 - 2 != v5)
    {
      goto LABEL_117;
    }

    v65 = (*v4 + 272);
    v66 = *v65;
    (*v65)(&v93, result);
    v92 = 1;
    v10 = sub_1C1EBB52C();
    sub_1C1F52684();
    v67 = sub_1C1F52684();
    if (v94[0] != v91)
    {
      v66(&v93, v67);
      v92 = 2;
      sub_1C1F52684();
      sub_1C1F52684();
      if (v94[0] != v91)
      {
LABEL_117:
        v78 = v85(v94);
        sub_1C1E98338(v5 + 1);

        v78(v94, 0);

        v24 = v4;
        goto LABEL_28;
      }
    }

LABEL_99:

LABEL_100:
    v68 = 0;
    v69 = v84 - 1;
    v14 = 15;
    do
    {
      v70 = (v2)(v57);
      if ((v70 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1C6911DB0](v69, v70);
      }

      else
      {
        if (v69 >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_119;
        }

        v10 = *(v70 + 8 * v69 + 32);
      }

      v71 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
      LOBYTE(v94[0]) = *(v10 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      LOBYTE(v91) = 16;
      if (static CalculateExpression.TokenType.== infix(_:_:)(v94, &v91))
      {

        v16 = __OFADD__(v68++, 1);
        if (v16)
        {
          goto LABEL_124;
        }
      }

      else
      {
        LOBYTE(v94[0]) = *(v10 + v71);
        LOBYTE(v91) = 15;
        v72 = static CalculateExpression.TokenType.== infix(_:_:)(v94, &v91);

        if (v72)
        {
          if (!v68)
          {
            goto LABEL_114;
          }

          v16 = __OFSUB__(v68--, 1);
          if (v16)
          {
            goto LABEL_127;
          }
        }
      }

      --v69;
    }

    while (v69 >= 0);
    v69 = -1;
LABEL_114:
    LOBYTE(v94[0]) = 15;
    v73 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v94, 1);
    v74 = v69 + 1;
    v76 = v85(v94);
    v77 = *v75;
    v5 = v88;
    if (*v75 >> 62)
    {
      if (v77 < 0)
      {
        v79 = *v75;
      }

      if (sub_1C1F52994() >= v74)
      {
        goto LABEL_116;
      }
    }

    else if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v74)
    {
LABEL_116:
      sub_1C1E98664(v74, v74, v73);

      v76(v94, 0);

      v24 = v4;
      goto LABEL_28;
    }

    __break(1u);
LABEL_138:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1EC5418(uint64_t *a1)
{
  v1 = *a1;
  if ((*(**a1 + 568))() & 1) != 0 || ((*(*v1 + 576))())
  {
    return 1;
  }

  else
  {
    return (*(*v1 + 552))() & 1;
  }
}

uint64_t CalculateExpression.CloseParenthesisOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1C1EC5504@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1C1EC5550(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 144);

  return v4(v2, v3);
}

uint64_t sub_1C1EC55B8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1C1EC5604(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1C1EC56A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1C1EC56F4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 168);

  return v4(v2, v3);
}

uint64_t sub_1C1EC575C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_1C1EC57A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_1C1EC5890()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_1C1EC58E0(uint64_t *a1))(uint64_t a1, char a2)
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
  return sub_1C1EC5970;
}

void sub_1C1EC5970(uint64_t a1, char a2)
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

uint64_t sub_1C1EC59F0()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
}

uint64_t sub_1C1EC5A28(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

uint64_t sub_1C1EC5AC0()
{
  v1 = v0;
  v2 = (*(*v0 + 184))();
  if (v2)
  {
    v3 = v2;
    if (((*(*v2 + 232))(v2) & 1) == 0)
    {
      (*(*v3 + 256))();
    }
  }

  v4 = *(*v1 + 208);

  return v4();
}

uint64_t sub_1C1EC5B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v13 = *a5;
  *(v12 + 40) = 0;
  *(v12 + 32) = 0;
  swift_weakInit();
  *(v12 + 88) = 0u;
  *(v12 + 72) = 0u;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  swift_beginAccess();
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = v13;
  *(v12 + 64) = a6;
  return v12;
}

uint64_t sub_1C1EC5C54()
{
  v1 = v0;
  v3 = v0[11];
  v2 = v0[12];
  v4 = *(*v0 + 136);

  v6 = (v4)(v5);
  if (!v2)
  {

    goto LABEL_10;
  }

  if (v3 == v6 && v2 == v7)
  {

LABEL_12:

    if (v1[10])
    {
      goto LABEL_8;
    }

LABEL_13:
    v11 = v4();
    goto LABEL_14;
  }

  v9 = sub_1C1F52C64();

  if ((v9 & 1) == 0)
  {
LABEL_10:
    v12 = (v4)(v10);
    v13 = v0[12];
    v0[11] = v12;
    v0[12] = v14;

    v16 = (v4)(v15);
    v18 = v17;
    v19 = sub_1C1E7DD60() & 1;
    v20._countAndFlagsBits = v16;
    v20._object = v18;
    v25.value.super.super.isa = 0;
    v25.is_nil = 0;
    v26.value = 1;
    v26.is_nil = 2;
    v22 = CalculateExpression.formatLiteral(_:presentation:formatter:significantDigits:forceScientificNotation:)(v20, v19, v25, v26, v21);

    v23 = v1[10];
    *(v1 + 9) = v22;
    goto LABEL_12;
  }

  if (!v0[10])
  {
    goto LABEL_13;
  }

LABEL_8:
  v11 = v1[9];
LABEL_14:

  return v11;
}

uint64_t sub_1C1EC5DD8()
{
  v14 = v0[48];
  v13 = 10;
  if (static CalculateExpression.TokenType.== infix(_:_:)(&v14, &v13))
  {
    v1 = (*(*v0 + 160))();
    if (!v2)
    {
      (*(*v0 + 136))(v1);
    }

    v3 = sub_1C1F52464();
    v5 = v4;

    v6 = objc_opt_self();
    v7 = [v6 trigonometricSet];
    v8 = sub_1C1F527C4();

    LOBYTE(v7) = sub_1C1EA68E0(v3, v5, v8);

    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v10 = [v6 laTeXTrigonometricSet];
      v11 = sub_1C1F527C4();

      v9 = sub_1C1EA68E0(v3, v5, v11);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void *CalculateExpression.Token.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  swift_weakDestroy();
  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  return v0;
}

uint64_t CalculateExpression.Token.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  swift_weakDestroy();
  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  return MEMORY[0x1EEE6BDC0](v0, 104, 7);
}

uint64_t sub_1C1EC6010@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

uint64_t sub_1C1EC605C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 192);

  return v3(v4);
}

void (*sub_1C1EC60B0(uint64_t *a1))(uint64_t a1, char a2)
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
  return sub_1C1E9E790;
}

uint64_t sub_1C1EC6190()
{
  v1 = v0;
  result = (*(*v0 + 232))();
  if ((result & 1) == 0)
  {
    result = (*(*v0 + 184))();
    if (result)
    {
      v3 = CalculateExpression.plain.getter();

      if (v3 == v1)
      {
        type metadata accessor for CalculateExpression.RichExpression();

        v5 = sub_1C1E88104(v4);
        sub_1C1E917DC(v5);
        sub_1C1EE4254(0);
      }
    }
  }

  return result;
}

uint64_t sub_1C1EC6274@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result;
  return result;
}

uint64_t sub_1C1EC62C8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 272);

  return v3(v4);
}

uint64_t sub_1C1EC6324(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;

  *(v1 + 24) = 1;
  return result;
}

uint64_t (*sub_1C1EC637C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C1EC63D0;
}

uint64_t sub_1C1EC63D0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    *(*(a1 + 24) + 24) = 1;
  }

  return result;
}

char *sub_1C1EC6408()
{
  v1 = (*(*v0 + 264))();
  v2 = v1;
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211B8, &qword_1C1F57100);
    sub_1C1E785EC(&qword_1EDC2C328, &qword_1EBF211B8, &qword_1C1F57100);
    v13 = sub_1C1F523E4();

    return v13;
  }

  v3 = sub_1C1F52994();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v14 = MEMORY[0x1E69E7CC0];
  result = sub_1C1EAF018(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1C6911DB0](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = (*(*v6 + 136))();
      v9 = v8;

      v11 = *(v14 + 16);
      v10 = *(v14 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1C1EAF018((v10 > 1), v11 + 1, 1);
      }

      ++v5;
      *(v14 + 16) = v11 + 1;
      v12 = v14 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
    }

    while (v3 != v5);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1EC6620()
{
  v4 = 0;
  v5 = 0;
  v1 = (*(*v0 + 264))();

  sub_1C1ECD060(v1, v0, &v5, &v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211B8, &qword_1C1F57100);
  sub_1C1E785EC(&qword_1EDC2C328, &qword_1EBF211B8, &qword_1C1F57100);
  v2 = sub_1C1F523E4();

  return v2;
}

uint64_t sub_1C1EC6740@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v77 = a2;
  v78 = a4;
  v84 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21310, &qword_1C1F572A8);
  v73 = *(v8 - 8);
  v74 = v8;
  v9 = *(v73 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v75 = v68 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21318, &qword_1C1F572B0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = v68 - v17;
  v19 = *a1;
  v20 = *(**a1 + 136);
  countAndFlagsBits = (v20)(v16);
  v23 = v22;
  LOBYTE(v82) = *(v19 + 48);
  LOBYTE(v81[0]) = 1;
  if (static CalculateExpression.TokenType.== infix(_:_:)(&v82, v81))
  {
    object = v23;
    v72 = a5;
    type metadata accessor for CalculateExpression();
    v20();
    v24 = static CalculateExpression.isHighPrecisionLiteral(_:)();

    if (v24)
    {
      v71 = v18;
      v26 = v77;
      if ((*(*v77 + 184))(v25))
      {
        v28._countAndFlagsBits = countAndFlagsBits;
        v28._object = object;
        v85.value.super.super.isa = 0;
        v85.is_nil = 0;
        v86.value = 1;
        v86.is_nil = 2;
        v29 = CalculateExpression.formatLiteral(_:presentation:formatter:significantDigits:forceScientificNotation:)(v28, 1, v85, v86, v27);
        countAndFlagsBits = v29._countAndFlagsBits;

        object = v29._object;
        v26 = v77;
      }

      v30 = v5;
      v18 = v71;
    }

    else
    {
      v26 = v77;
      v30 = v5;
    }

    v33 = *(*v26 + 184);
    v34 = *v26 + 184;
    if (!v33())
    {
      goto LABEL_14;
    }

    v35 = CalculateExpression.isArabic.getter();

    if ((v35 & 1) == 0)
    {
      goto LABEL_14;
    }

    v68[1] = v34;
    v69 = v33;
    sub_1C1F52164();
    sub_1C1F525F4();
    v70 = v37;
    v71 = v36;
    sub_1C1E785EC(&qword_1EBF21320, &qword_1EBF21310, &qword_1C1F572A8);
    v38 = v74;
    sub_1C1F52154();
    sub_1C1F52174();
    if (v30)
    {

      v39 = *(v73 + 8);
      v39(v12, v38);
      v39(v75, v38);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21328, &qword_1C1F572B8);
      (*(*(v40 - 8) + 56))(v18, 1, 1, v40);
    }

    else
    {

      v41 = *(v73 + 8);
      v41(v12, v38);
      v41(v75, v38);
    }

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21328, &qword_1C1F572B8);
    v43 = (*(*(v42 - 8) + 48))(v18, 1, v42);
    sub_1C1E83580(v18, &qword_1EBF21318, &qword_1C1F572B0);
    if (v43 == 1)
    {
LABEL_14:
      a5 = v72;
      v31 = v84;
      v32 = v78;
      v23 = object;
      goto LABEL_15;
    }

    v73 = type metadata accessor for CalculateExpression.Token();
    v71 = type metadata accessor for CalculateExpression.RichToken();
    LOBYTE(v82) = 5;
    v47 = sub_1C1E7DD60();
    v48 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, &v82, v47 & 1);
    v49 = v69;
    v50 = v69();
    v75 = countAndFlagsBits;
    v51 = sub_1C1ECCBD0(v48, v50);

    v53 = (*(*v51 + 136))(v52);
    v74 = v54;

    LOBYTE(v82) = 1;
    (v49)(v55);
    v56 = sub_1C1E8FBEC(12337, 0xE200000000000000, &v82);
    v57 = v49();
    v58 = sub_1C1ECCBD0(v56, v57);

    v60 = (*(*v58 + 136))(v59);
    v62 = v61;

    v82 = v75;
    v83 = object;
    v81[0] = 101;
    v81[1] = 0xE100000000000000;
    v79 = v53;
    v80 = v74;
    MEMORY[0x1C69117F0](v60, v62);

    MEMORY[0x1C69117F0](94, 0xE100000000000000);
    sub_1C1E94E48();
    countAndFlagsBits = sub_1C1F52914();
    v23 = v63;

    v31 = v84;
    v64 = *v84;
    if (!*v84)
    {
      a5 = v72;
      v32 = v78;
      goto LABEL_15;
    }

    a5 = v72;
    v32 = v78;
    if (*(v64 + 48) != 53)
    {
      v65 = countAndFlagsBits;
      v66 = v23;
      LOBYTE(v82) = *(v64 + 48);
      LOBYTE(v81[0]) = 6;
      sub_1C1E9019C();
      if (sub_1C1F52414())
      {
LABEL_19:
        v82 = 40;
        v83 = 0xE100000000000000;
        MEMORY[0x1C69117F0](v65, v66);

        MEMORY[0x1C69117F0](41, 0xE100000000000000);
        countAndFlagsBits = v82;
        v23 = v83;
        goto LABEL_15;
      }

      v64 = *v31;
      countAndFlagsBits = v65;
      if (!*v31)
      {
        goto LABEL_15;
      }
    }

    v67 = *(v64 + 48);
    if (v67 == 53)
    {
      goto LABEL_15;
    }

    v65 = countAndFlagsBits;
    v66 = v23;
    LOBYTE(v82) = v67;
    LOBYTE(v81[0]) = 4;
    sub_1C1E9019C();
    if ((sub_1C1F52414() & 1) == 0)
    {
      goto LABEL_28;
    }

    if (!*v32 || *(*v32 + 48) == 53)
    {
      countAndFlagsBits = v65;
      goto LABEL_15;
    }

    LOBYTE(v82) = *(*v32 + 48);
    LOBYTE(v81[0]) = 6;
    if ((sub_1C1F52414() & 1) == 0)
    {
LABEL_28:
      countAndFlagsBits = v65;
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  v31 = v84;
  v32 = v78;
LABEL_15:
  v44 = *v32;
  *v32 = *v31;

  v45 = *v31;
  *v31 = v19;

  *a5 = countAndFlagsBits;
  a5[1] = v23;
  return result;
}

uint64_t CalculateExpression.PlainExpression.init()()
{
  swift_weakInit();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 1;
  *(v0 + 32) = v1;
  *(v0 + 40) = 1;
  v2 = MEMORY[0x1E69E7CD0];
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0;
  *(v0 + 80) = v1;
  *(v0 + 88) = 0;
  return v0;
}

void sub_1C1EC7008()
{
  if (v0[40] != 1)
  {
    return;
  }

  v1 = v0;
  v2 = MEMORY[0x1E69E7CD0];
  v0[40] = 0;
  v28 = v2;
  v3 = (*(*v0 + 264))();
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_60;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_61:

    v17 = 0;
LABEL_62:
    v10 = 0;
    v14 = 0;
    goto LABEL_63;
  }

LABEL_4:
  v21 = v1;
  v6 = 0;
  v22 = 0;
  v7 = 0;
  v8 = 0;
  v23 = 0;
  v24 = 0;
  v9 = v4 & 0xC000000000000001;
  v1 = 1;
  v25 = 0;
  while (1)
  {
    if (v9)
    {
      v11 = MEMORY[0x1C6911DB0](v6, v4);
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_59;
      }

      v11 = *(v4 + 8 * v6 + 32);

      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        v5 = sub_1C1F52994();
        if (!v5)
        {
          goto LABEL_61;
        }

        goto LABEL_4;
      }
    }

    LOBYTE(v26) = v11[48];
    v27 = 17;
    if (static CalculateExpression.TokenType.== infix(_:_:)(&v26, &v27))
    {

      if (v12 == v5)
      {
        goto LABEL_46;
      }

      goto LABEL_6;
    }

    if (v7)
    {
      LOBYTE(v26) = v11[48];
      v27 = 35;
      HIDWORD(v25) |= static CalculateExpression.TokenType.== infix(_:_:)(&v26, &v27);
    }

    else
    {
      LOBYTE(v25) = BYTE4(v25) | v25;
    }

    LOBYTE(v26) = v11[48];
    v27 = 14;
    if (static CalculateExpression.TokenType.== infix(_:_:)(&v26, &v27) & 1) != 0 || (LOBYTE(v26) = v11[48], v27 = 0, (static CalculateExpression.TokenType.== infix(_:_:)(&v26, &v27)))
    {
      (*(*v11 + 136))();
      v10 = sub_1C1F52464();
      v14 = v13;

      if (v1)
      {

        if (v12 != v5)
        {
          v1 = 0;
          v7 = 1;
          v23 = v14;
          v24 = v11;
          v9 = v4 & 0xC000000000000001;
          goto LABEL_7;
        }

        v1 = v21;
        goto LABEL_48;
      }

      sub_1C1EACF44(&v26, v10, v14);

      LOBYTE(v26) = v11[48];
      v27 = 14;
      v15 = static CalculateExpression.TokenType.== infix(_:_:)(&v26, &v27);

      if ((v15 & 1) == 0)
      {
        v9 = v4 & 0xC000000000000001;
        if (v12 != v5)
        {
          goto LABEL_34;
        }

LABEL_46:

        v10 = v8;
        v1 = v21;
        v14 = v23;
        v11 = v24;
LABEL_48:
        v17 = v22;
        if ((v25 & 1) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_49;
      }

      v9 = v4 & 0xC000000000000001;
      if (v12 == v5)
      {
        goto LABEL_45;
      }

LABEL_28:
      v1 = 0;
      v7 = 0;
      v22 = 1;
      goto LABEL_6;
    }

    if (v22)
    {

      if (v12 == v5)
      {
        goto LABEL_45;
      }

      goto LABEL_28;
    }

    LOBYTE(v26) = v11[48];
    if (CalculateExpression.TokenType.isOperator.getter())
    {

      if (v12 == v5)
      {
        goto LABEL_50;
      }

      goto LABEL_33;
    }

    LOBYTE(v26) = v11[48];
    v27 = 35;
    sub_1C1E9019C();
    if ((sub_1C1F52414() & 1) == 0)
    {
      break;
    }

    if (v12 == v5)
    {
      goto LABEL_50;
    }

    v22 = 0;
    v1 = 0;
    v7 = 0;
    v10 = v8;
    v9 = v4 & 0xC000000000000001;
LABEL_7:
    ++v6;
    v8 = v10;
  }

  LOBYTE(v26) = v11[48];
  v27 = 19;
  if (sub_1C1F52414())
  {

    v9 = v4 & 0xC000000000000001;
    if (v12 == v5)
    {
      goto LABEL_50;
    }

LABEL_33:
    v22 = 0;
LABEL_34:
    v1 = 0;
    v7 = 0;
LABEL_6:
    v10 = v8;
    goto LABEL_7;
  }

  LOBYTE(v26) = v11[48];
  v16 = CalculateExpression.TokenType.isAnyUnknown.getter();

  v9 = v4 & 0xC000000000000001;
  if ((v16 & 1) == 0)
  {
    if (v12 == v5)
    {
LABEL_45:

      v17 = 1;
      goto LABEL_51;
    }

    goto LABEL_28;
  }

  if (v12 != v5)
  {
    goto LABEL_33;
  }

LABEL_50:

  v17 = 0;
LABEL_51:
  v10 = v8;
  v1 = v21;
  v14 = v23;
  v11 = v24;
  if (v25)
  {
LABEL_49:

    goto LABEL_63;
  }

LABEL_52:
  if (v14)
  {
    sub_1C1EACF44(&v26, v10, v14);

    if (!v11 || v11[48] == 53)
    {

      goto LABEL_62;
    }

    LOBYTE(v26) = v11[48];
    v27 = 14;
    sub_1C1E9019C();
    v18 = sub_1C1F52414();

    v10 = 0;
    v14 = 0;
    v17 |= v18;
  }

  else
  {

    v10 = 0;
  }

LABEL_63:
  v19 = *(v1 + 56);
  *(v1 + 48) = v10;
  *(v1 + 56) = v14;

  v20 = *(v1 + 64);
  *(v1 + 64) = v28;

  *(v1 + 88) = v17 & 1;
}

uint64_t sub_1C1EC7570(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_1C1EC7600()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
}

uint64_t sub_1C1EC7638(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  *(v1 + 80) = a1;
}

uint64_t sub_1C1EC76D0()
{
  if (*(v0 + 40) == 1)
  {
    sub_1C1EC7008();
  }

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_1C1EC7710()
{
  if (*(v0 + 40) == 1)
  {
    sub_1C1EC7008();
  }

  v1 = *(v0 + 64);
}

uint64_t sub_1C1EC7748()
{
  if (*(v0 + 40) == 1)
  {
    sub_1C1EC7008();
  }

  return *(v0 + 88);
}

uint64_t sub_1C1EC7770()
{
  v0 = sub_1C1F52424();
  v1 = sub_1C1F52424();
  v6[4] = sub_1C1EC7868;
  v6[5] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1C1EC7874;
  v6[3] = &block_descriptor_50;
  v2 = _Block_copy(v6);
  v3 = [v0 calc:v1 stringByReplacingOccurrencesOfRegex:v2 usingBlockWithResult:?];
  _Block_release(v2);

  v4 = sub_1C1F52454();
  return v4;
}

id sub_1C1EC7874(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();

  v6 = sub_1C1F52424();

  return v6;
}

id sub_1C1EC78F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = sub_1C1F52454();
  v10 = v9;

  v7(v8, v10, a3, a4);

  v11 = sub_1C1F52424();

  return v11;
}

unint64_t sub_1C1EC79C0(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1C1ECC744(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = sub_1C1F52A64();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = sub_1C1F52AE4();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

uint64_t CalculateExpression.PlainExpression.__allocating_init(_:)(unint64_t a1)
{
  swift_allocObject();
  v2 = sub_1C1ECD7BC(a1);

  return v2;
}

uint64_t CalculateExpression.PlainExpression.init(_:)(unint64_t a1)
{
  v1 = sub_1C1ECD7BC(a1);

  return v1;
}

uint64_t sub_1C1EC7B8C(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
  }

  else if (!(*v1 >> 62))
  {
    v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = -v2;
    if (!__OFSUB__(0, v2))
    {
      goto LABEL_5;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = result;
  v2 = sub_1C1F52994();
  result = v6;
  v3 = -v2;
  if (__OFSUB__(0, v2))
  {
    goto LABEL_19;
  }

LABEL_5:
  v4 = -result;
  if (v3 <= 0 && v3 > v4)
  {
    goto LABEL_22;
  }

  result = v2 - result;
  if (__OFADD__(v2, v4))
  {
    goto LABEL_20;
  }

  if (v2 < result)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  return sub_1C1ECD5C4(result, v2);
}

void sub_1C1EC7C98()
{
  if (v0[24] != 1)
  {
    return;
  }

  v0[24] = 0;
  v4 = (*v0 + 264);
  v5 = *v4;
  v6 = (*v4)();
  if (v6 >> 62)
  {
LABEL_91:
    v1 = v6;
    v7 = sub_1C1F52994();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 < 1)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v9 = (v5)(v8);
  v10 = v9;
  if ((v9 & 0xC000000000000001) != 0)
  {
    goto LABEL_97;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v9 + 32);

    goto LABEL_8;
  }

  __break(1u);
LABEL_99:
  v2 = MEMORY[0x1C6911DB0](v10, v1);
LABEL_16:

  v17 = *(v2 + 48);

  v49 = v17;
  v48 = 10;
  v10 += static CalculateExpression.TokenType.== infix(_:_:)(&v49, &v48) & 1;
LABEL_17:
  v18 = v5();
  if (v18 >> 62)
  {
    v2 = v18;
    v19 = sub_1C1F52994();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10 >= v19)
  {
    goto LABEL_48;
  }

  v21 = (v5)(v20);
  LOBYTE(v1) = v21;
  if ((v21 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1C6911DB0](v10, v21);
LABEL_23:

    v22 = *(v2 + 48);

    v49 = v22;
    v48 = 15;
    if (static CalculateExpression.TokenType.== infix(_:_:)(&v49, &v48))
    {
      v23 = v5();
      if (!(v23 >> 62))
      {
        v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_26;
      }

      goto LABEL_110;
    }

LABEL_48:
    LOBYTE(v1) = 0;
    ++v10;
LABEL_50:
    v31 = v5();
    if (v31 >> 62)
    {
      LOBYTE(v3) = v31;
      v32 = sub_1C1F52994();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10 >= v32)
    {
      goto LABEL_58;
    }

    v23 = (v5)(v33);
    v2 = v23;
    if ((v23 & 0xC000000000000001) != 0)
    {
      goto LABEL_103;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_106;
    }

    if (v10 < *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v3 = *(v23 + 8 * v10 + 32);

      goto LABEL_57;
    }

LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  if (v10 < *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v21 + 8 * v10 + 32);

    goto LABEL_23;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  v3 = MEMORY[0x1C6911DB0](v10, v2);
LABEL_57:

  v34 = *(v3 + 48);

  v49 = v34;
  v48 = 8;
  v35 = static CalculateExpression.TokenType.== infix(_:_:)(&v49, &v48);
  LOBYTE(v1) = (v35 ^ 1) & v1;
  v10 += v35 & 1;
LABEL_58:
  v36 = v5();
  if (v36 >> 62)
  {
    LOBYTE(v3) = v36;
    v37 = sub_1C1F52994();
  }

  else
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10 >= v37)
  {
    goto LABEL_67;
  }

  v23 = (v5)(v38);
  if ((v23 & 0xC000000000000001) != 0)
  {
    v39 = MEMORY[0x1C6911DB0](v10, v23);
LABEL_65:

    v40 = *(v39 + 48);

    v49 = v40;
    v48 = 7;
    if (static CalculateExpression.TokenType.== infix(_:_:)(&v49, &v48))
    {
      LOBYTE(v1) = 0;
      ++v10;
      LOBYTE(v3) = 1;
    }

    else
    {
LABEL_67:
      LOBYTE(v3) = 0;
    }

    if ((*(*v0 + 624))())
    {
      v41 = 0;
LABEL_73:
      v0[89] = v41;
      v0[90] = v3;
      v0[91] = v1 & 1;
      return;
    }

    v42 = v5();
    if (!(v42 >> 62))
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_72:

      v41 = v10 == v43;
      goto LABEL_73;
    }

LABEL_106:
    v43 = sub_1C1F52994();
    goto LABEL_72;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_108;
  }

  if (v10 < *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v39 = *(v23 + 8 * v10 + 32);

    goto LABEL_65;
  }

LABEL_109:
  __break(1u);
LABEL_110:
  v2 = v23;
  v24 = sub_1C1F52994();
LABEL_26:

  if (v10 >= v24)
  {
LABEL_49:
    LOBYTE(v1) = 0;
    goto LABEL_50;
  }

  v3 = 0;
  while (1)
  {
    v6 = (v5)(v25);
    if ((v6 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x1C6911DB0](v10, v6);
    }

    else
    {
      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_88;
      }

      v2 = *(v6 + 8 * v10 + 32);
    }

    v26 = *(v2 + 48);

    v49 = v26;
    v48 = 15;
    v6 = static CalculateExpression.TokenType.== infix(_:_:)(&v49, &v48);
    if (v6)
    {
      v27 = __OFADD__(v3++, 1);
      if (v27)
      {
        goto LABEL_89;
      }

      goto LABEL_41;
    }

    v6 = v5();
    if ((v6 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x1C6911DB0](v10, v6);
    }

    else
    {
      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_90;
      }

      v2 = *(v6 + 8 * v10 + 32);
    }

    v28 = *(v2 + 48);

    v49 = v28;
    v48 = 16;
    if (static CalculateExpression.TokenType.== infix(_:_:)(&v49, &v48))
    {
      v27 = __OFSUB__(v3--, 1);
      if (v27)
      {
        __break(1u);
LABEL_97:
        v11 = MEMORY[0x1C6911DB0](0, v10);
LABEL_8:

        v12 = *(v11 + 48);

        v49 = v12;
        v48 = 4;
        v10 = static CalculateExpression.TokenType.== infix(_:_:)(&v49, &v48) & 1;
LABEL_10:
        v13 = v5();
        if (v13 >> 62)
        {
          v2 = v13;
          v14 = sub_1C1F52994();
        }

        else
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v10 >= v14)
        {
          goto LABEL_17;
        }

        v16 = (v5)(v15);
        v1 = v16;
        if ((v16 & 0xC000000000000001) != 0)
        {
          goto LABEL_99;
        }

        if (v10 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v2 = *(v16 + 8 * v10 + 32);

          goto LABEL_16;
        }

        __break(1u);
        goto LABEL_102;
      }

      if (v3 <= 0)
      {
        break;
      }
    }

LABEL_41:
    v29 = v5();
    if (v29 >> 62)
    {
      v2 = v29;
      v30 = sub_1C1F52994();
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v10;

    if (v10 >= v30)
    {
      goto LABEL_49;
    }
  }

  v44 = v5();
  if (v44 >> 62)
  {
    v2 = v44;
    v45 = sub_1C1F52994();
  }

  else
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v45, 1))
  {
    __break(1u);
    goto LABEL_113;
  }

  if (v45 - 1 != v10)
  {
    LOBYTE(v1) = 0;
    goto LABEL_85;
  }

  v46 = (v5)(v6);
  v45 = v46;
  if ((v46 & 0xC000000000000001) != 0)
  {
LABEL_113:
    v2 = MEMORY[0x1C6911DB0](v10, v45);
LABEL_83:

    v47 = *(v2 + 48);

    v49 = v47;
    v48 = 16;
    v6 = static CalculateExpression.TokenType.== infix(_:_:)(&v49, &v48);
    LOBYTE(v1) = v6;
LABEL_85:
    v27 = __OFADD__(v10++, 1);
    if (!v27)
    {
      goto LABEL_50;
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v10 < *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v46 + 8 * v10 + 32);

    goto LABEL_83;
  }

  __break(1u);
}

uint64_t sub_1C1EC849C(char a1)
{
  if ((a1 & 1) != 0 || ((*(*v1 + 568))() & 1) == 0)
  {
    if ((*(*v1 + 600))() & 1) != 0 || ((*(*v1 + 536))())
    {
      v2 = 0;
    }

    else
    {
      v2 = (*(*v1 + 624))() ^ 1;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

BOOL sub_1C1EC8580()
{
  v1 = (*(*v0 + 264))();
  if (v1 >> 62)
  {
    v2 = sub_1C1F52994();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 == 0;
}

uint64_t sub_1C1EC8608()
{
  v1 = (*(*v0 + 280))(v7);
  v3 = v2;

  MEMORY[0x1C6911980](v4);
  if (*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v6 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1C1F526E4();
  }

  sub_1C1F52724();
  return v1(v7, 0);
}

uint64_t sub_1C1EC86DC(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  v4 = a1;
  v5 = MEMORY[0x1E69E7CC0];
  if (a2 - 1 >= 2)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  a1 = (*(*a1 + 616))(a2 == 1);
  if ((a1 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for CalculateExpression.Token();
  v6 = swift_allocObject();
  *(v6 + 40) = 0;
  *(v6 + 32) = 0;
  swift_weakInit();
  *(v6 + 88) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 16) = 40;
  *(v6 + 24) = 0xE100000000000000;
  swift_beginAccess();
  v7 = *(v6 + 40);
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;

  *(v6 + 48) = 15;
  *(v6 + 64) = v5;
  v8 = (*(*v2 + 280))(v24);
  v10 = v9;
  MEMORY[0x1C6911980]();
  if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v22 = *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1C1F526E4();
  }

  sub_1C1F52724();
  a1 = v8(v24, 0);
  v11 = 1;
LABEL_8:
  v12 = (*(*v4 + 264))(a1);
  v13 = (*v3 + 280);
  v14 = *v13;
  v15 = (*v13)(v24);
  sub_1C1EC8A24(v12);
  result = v15(v24, 0);
  if (v11)
  {
    type metadata accessor for CalculateExpression.Token();
    v17 = swift_allocObject();
    *(v17 + 40) = 0;
    *(v17 + 32) = 0;
    swift_weakInit();
    *(v17 + 88) = 0u;
    *(v17 + 72) = 0u;
    *(v17 + 16) = 41;
    *(v17 + 24) = 0xE100000000000000;
    swift_beginAccess();
    v18 = *(v17 + 40);
    *(v17 + 32) = 0;
    *(v17 + 40) = 0;

    *(v17 + 48) = 16;
    *(v17 + 64) = v5;
    v19 = v14(v24);
    v21 = v20;
    MEMORY[0x1C6911980]();
    if (*((*v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v23 = *((*v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1C1F526E4();
    }

    sub_1C1F52724();
    return v19(v24, 0);
  }

  return result;
}

uint64_t sub_1C1EC8A24(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1C1F52994();
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

  v15 = sub_1C1F52994();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1C1E8CFBC(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1C1ECC964(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
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

uint64_t sub_1C1EC8B14()
{
  v15 = 0;
  v16 = 0xE000000000000000;
  v1 = (*v0 + 288);
  v2 = *v1;
  v3 = (*v1)(0);
  if (v3)
  {
    v14 = *(v3 + 48);
    v13 = 4;
    if (static CalculateExpression.TokenType.== infix(_:_:)(&v14, &v13))
    {
      MEMORY[0x1C69117F0](45, 0xE100000000000000);
      v4 = 1;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v2(v4);
  if (v5)
  {
    v6 = v5;
    v14 = *(v5 + 48);
    v13 = 1;
    if (static CalculateExpression.TokenType.== infix(_:_:)(&v14, &v13))
    {
      v7 = (*(*v6 + 136))();
      MEMORY[0x1C69117F0](v7);

      v9 = v4 + 1;
      v10 = (*(*v0 + 264))(v8);
      if (v10 >> 62)
      {
        v11 = sub_1C1F52994();
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9 == v11)
      {
        return v15;
      }
    }

    else
    {
    }
  }

  return 0;
}

unint64_t sub_1C1EC8D04(void *a1, unint64_t *a2, uint64_t a3)
{
  v5 = v3;
  v7 = a2;
  v8 = a1;
  v9 = *a2;
  v10 = (*a1 + 392);
  v11 = *v10;
  v12 = v10;
  v13 = (*v10)();
  v14 = v13;
  if ((v13 & 0xC000000000000001) == 0)
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v13 + 8 * v9 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_65;
  }

  v9 = MEMORY[0x1C6911DB0](v9, v13);
LABEL_5:

  sub_1C1ECD230(v8, v7);
  v4 = sub_1C1ECAE48(v8, v7, a3);
  v172 = v4;
  type metadata accessor for CalculateExpression.PlainExpression();
  v14 = swift_allocObject();
  v15 = swift_weakInit();
  *(v14 + 24) = 1;
  v16 = MEMORY[0x1E69E7CC0];
  *(v14 + 32) = MEMORY[0x1E69E7CC0];
  *(v14 + 40) = 1;
  *(v14 + 48) = 0;
  *(v14 + 56) = 0;
  *(v14 + 64) = MEMORY[0x1E69E7CD0];
  *(v14 + 72) = 0;
  *(v14 + 80) = v16;
  *(v14 + 88) = 0;
  v17 = (*(*v9 + 368))(v15);
  v18 = *v9;
  if ((v17 & 1) == 0)
  {
    v20 = (*(v18 + 384))();
    v21 = *v9;
    if (v20)
    {
      v167 = a3;
      v22 = (*(v21 + 304))();
      if (!v22)
      {
        goto LABEL_42;
      }

      v23 = v22;
      if ((*(*v22 + 568))() & 1) != 0 || ((*(*v23 + 576))())
      {

        goto LABEL_42;
      }

      *v171 = 0;
      v55 = sub_1C1ECBCC4(v23, v171, v167);
      v56 = v4;
      v57 = v55;
      if (v56 >> 62)
      {
        goto LABEL_183;
      }

      goto LABEL_41;
    }

    if ((*(v21 + 392))())
    {
      v24 = (*(*v9 + 304))();
      if (v24)
      {
        v12 = v11;
        v170[0] = 0;
        v25 = a3;
        v167 = sub_1C1ECBCC4(v24, v170, a3);
        v26 = v4 >> 62;
        if (!(v4 >> 62))
        {
          if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
          {
LABEL_19:
            v27 = v4;
            v7 = type metadata accessor for CalculateExpression.Token();
            v28 = *(*v5 + 184);

            v30 = v28(v29);
            v31 = sub_1C1ECCBD0(v9, v30);

            v32 = *(*v14 + 632);
            v32(v31);

            v33 = *(*v14 + 640);
            v33(v167, 0);
            v34 = swift_allocObject();
            *(v34 + 40) = 0;
            *(v34 + 32) = 0;
            swift_weakInit();
            *(v34 + 88) = 0u;
            *(v34 + 72) = 0u;
            *(v34 + 16) = 40;
            *(v34 + 24) = 0xE100000000000000;
            swift_beginAccess();
            v35 = *(v34 + 40);
            *(v34 + 32) = 0;
            *(v34 + 40) = 0;

            *(v34 + 48) = 15;
            *(v34 + 64) = MEMORY[0x1E69E7CC0];
            v32(v34);

            if (v26)
            {
              v36 = sub_1C1F52994();
            }

            else
            {
              v36 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v36)
            {
              v53 = __OFSUB__(v36, 1);
              result = v36 - 1;
              if (v53)
              {
                __break(1u);
              }

              else if ((v27 & 0xC000000000000001) == 0)
              {
                if ((result & 0x8000000000000000) != 0)
                {
                  __break(1u);
                }

                else if (result < *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v73 = *(v27 + 8 * result + 32);

LABEL_61:
                  v33(v73, 0);

                  v74 = swift_allocObject();
                  *(v74 + 40) = 0;
                  *(v74 + 32) = 0;
                  swift_weakInit();
                  *(v74 + 88) = 0u;
                  *(v74 + 72) = 0u;
                  *(v74 + 16) = 41;
                  *(v74 + 24) = 0xE100000000000000;
                  swift_beginAccess();
                  v75 = *(v74 + 40);
                  *(v74 + 32) = 0;
                  *(v74 + 40) = 0;

                  *(v74 + 48) = 16;
                  *(v74 + 64) = MEMORY[0x1E69E7CC0];
                  v32(v74);

                  goto LABEL_157;
                }

                __break(1u);
                goto LABEL_191;
              }

              v73 = MEMORY[0x1C6911DB0](result, v27);
              goto LABEL_61;
            }

LABEL_185:
            __break(1u);
            goto LABEL_186;
          }

LABEL_172:
          *v25 = 1;
          v160 = v12();
          if (!(v160 >> 62))
          {
            v161 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_174:

            *v7 = v161;
            return v14;
          }

LABEL_186:
          v161 = sub_1C1F52994();
          goto LABEL_174;
        }

LABEL_171:
        if (sub_1C1F52994() == 1)
        {
          goto LABEL_19;
        }

        goto LABEL_172;
      }
    }

    if (v4 >> 62)
    {
      if (sub_1C1F52994() == 1)
      {
        goto LABEL_23;
      }

      v37 = sub_1C1F52994();
    }

    else
    {
      v37 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37 == 1)
      {
LABEL_23:
        v7 = type metadata accessor for CalculateExpression.Token();
        v38 = *(*v3 + 184);

        v40 = v38(v39);
        v41 = sub_1C1ECCBD0(v9, v40);

        v25 = (*v14 + 632);
        a3 = *v25;
        (*v25)(v41);

        v5 = swift_allocObject();
        *(v5 + 40) = 0;
        *(v5 + 32) = 0;
        swift_weakInit();
        *(v5 + 88) = 0u;
        *(v5 + 72) = 0u;
        *(v5 + 16) = 40;
        *(v5 + 24) = 0xE100000000000000;
        swift_beginAccess();
        v42 = *(v5 + 40);
        *(v5 + 32) = 0;
        *(v5 + 40) = 0;

        *(v5 + 48) = 15;
        v8 = MEMORY[0x1E69E7CC0];
        *(v5 + 64) = MEMORY[0x1E69E7CC0];
        v26 = v14;
        (a3)(v5);

        if ((v4 & 0xC000000000000001) != 0)
        {
LABEL_169:
          v43 = MEMORY[0x1C6911DB0](0, v4);
          goto LABEL_26;
        }

        if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v43 = *(v4 + 32);

LABEL_26:
          (*(*v14 + 640))(v43, 0);

          v44 = swift_allocObject();
          *(v44 + 40) = 0;
          *(v44 + 32) = 0;
          swift_weakInit();
          *(v44 + 88) = 0u;
          *(v44 + 72) = 0u;
          *(v44 + 16) = 41;
          *(v44 + 24) = 0xE100000000000000;
          swift_beginAccess();
          v45 = *(v44 + 40);
          *(v44 + 32) = 0;
          *(v44 + 40) = 0;

          *(v44 + 48) = 16;
          *(v44 + 64) = v8;
          (a3)(v44);
          goto LABEL_156;
        }

        __break(1u);
        goto LABEL_171;
      }
    }

    if (!v37)
    {
      type metadata accessor for CalculateExpression.Token();
      v152 = *(*v3 + 184);

      v154 = v152(v153);
      v155 = sub_1C1ECCBD0(v9, v154);

      v124 = *(*v14 + 632);
      v124(v155);

      v156 = swift_allocObject();
      *(v156 + 40) = 0;
      *(v156 + 32) = 0;
      swift_weakInit();
      *(v156 + 88) = 0u;
      *(v156 + 72) = 0u;
      *(v156 + 16) = 40;
      *(v156 + 24) = 0xE100000000000000;
      swift_beginAccess();
      v157 = *(v156 + 40);
      *(v156 + 32) = 0;
      *(v156 + 40) = 0;

      *(v156 + 48) = 15;
      v158 = MEMORY[0x1E69E7CC0];
      *(v156 + 64) = MEMORY[0x1E69E7CC0];
      v124(v156);

      v141 = swift_allocObject();
      *(v141 + 40) = 0;
      *(v141 + 32) = 0;
      swift_weakInit();
      *(v141 + 88) = 0u;
      *(v141 + 72) = 0u;
      *(v141 + 16) = 41;
      *(v141 + 24) = 0xE100000000000000;
      swift_beginAccess();
      v159 = *(v141 + 40);
      *(v141 + 32) = 0;
      *(v141 + 40) = 0;

      *(v141 + 48) = 16;
      *(v141 + 64) = v158;
      goto LABEL_155;
    }

    *a3 = 1;
    v151 = (v11)();
    if (!(v151 >> 62))
    {
      v87 = *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_153;
    }

LABEL_179:
    v87 = sub_1C1F52994();
    goto LABEL_153;
  }

  v167 = a3;
  v19 = (*(v18 + 280))();
  v164 = v3;
  v166 = v11;
  if (v19)
  {
    a3 = v19;
    if ((*(*v19 + 568))() & 1) != 0 || ((*(*a3 + 576))())
    {
    }

    else
    {
      *v171 = 0;
      v46 = sub_1C1ECBCC4(a3, v171, v167);
      v47 = v4;
      v48 = v46;
      if (v47 >> 62 && sub_1C1F52994() < 0)
      {
        __break(1u);
        goto LABEL_177;
      }

      sub_1C1ECD3D4(0, 0, v48);

      v4 = v172;
    }
  }

  v11 = v4 >> 62;
  if (!(v4 >> 62))
  {
    v49 = v4;
    v50 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v50 == 1)
    {
      goto LABEL_31;
    }

LABEL_67:
    if (v50 == 2)
    {
      v67 = v49;
      if ((v49 & 0xC000000000000001) != 0)
      {
        goto LABEL_164;
      }

      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        a3 = *(v49 + 32);

        goto LABEL_71;
      }

      __break(1u);
      goto LABEL_166;
    }

LABEL_76:
    if (v11)
    {
      v11 = v49;
      v79 = sub_1C1F52994();
    }

    else
    {
      v11 = v49;
      v79 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v79 == 2)
    {
      v49 = v11 & 0xC000000000000001;
      if ((v11 & 0xC000000000000001) != 0)
      {
LABEL_166:
        v82 = MEMORY[0x1C6911DB0](0, v11);
        v81 = v82;
        v80 = v164;
        goto LABEL_83;
      }

      v80 = v164;
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v81 = *(v11 + 32);

LABEL_83:
        v83 = (*(*v81 + 648))(v82);
        v85 = v84;

        if (v85)
        {
          if (v83 == 51 && v85 == 0xE100000000000000)
          {

LABEL_90:
            type metadata accessor for CalculateExpression.Token();
            v89 = swift_allocObject();
            *(v89 + 40) = 0;
            *(v89 + 32) = 0;
            swift_weakInit();
            *(v89 + 88) = 0u;
            *(v89 + 72) = 0u;
            *(v89 + 16) = 10193122;
            *(v89 + 24) = 0xA300000000000000;
            swift_beginAccess();
            v90 = *(v89 + 40);
            *(v89 + 32) = 0;
            *(v89 + 40) = 0;

            *(v89 + 48) = 10;
            *(v89 + 64) = MEMORY[0x1E69E7CC0];
            (*(*v14 + 632))(v89);

            if (v49)
            {
              v54 = MEMORY[0x1C6911DB0](1, v11);
LABEL_103:
              (*(*v14 + 640))(v54, 2);
              goto LABEL_156;
            }

            if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
            {
              v54 = *(v11 + 40);

              goto LABEL_103;
            }

LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
LABEL_195:
            __break(1u);
LABEL_196:
            __break(1u);
LABEL_197:
            __break(1u);
            return result;
          }

          v88 = sub_1C1F52C64();

          if (v88)
          {
            goto LABEL_90;
          }
        }

        v162 = v11;
        type metadata accessor for CalculateExpression.Token();
        type metadata accessor for CalculateExpression.RichToken();
        v171[0] = 10;
        v91 = sub_1C1E7DD60();
        v92 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(1953460082, 0xE400000000000000, v171, v91 & 1);
        v93 = (*(*v80 + 184))();
        v94 = sub_1C1ECCBD0(v92, v93);

        v95 = *(*v14 + 632);
        v95(v94);

        v96 = swift_allocObject();
        *(v96 + 40) = 0;
        *(v96 + 32) = 0;
        swift_weakInit();
        *(v96 + 88) = 0u;
        *(v96 + 72) = 0u;
        *(v96 + 16) = 40;
        *(v96 + 24) = 0xE100000000000000;
        swift_beginAccess();
        v97 = *(v96 + 40);
        *(v96 + 32) = 0;
        *(v96 + 40) = 0;

        *(v96 + 48) = 15;
        *(v96 + 64) = MEMORY[0x1E69E7CC0];
        v95(v96);

        if (v49)
        {
          v98 = MEMORY[0x1C6911DB0](1, v162);
LABEL_96:
          v168 = *(*v14 + 640);
          v168(v98, 0);

          v99 = swift_allocObject();
          *(v99 + 40) = 0;
          *(v99 + 32) = 0;
          swift_weakInit();
          *(v99 + 88) = 0u;
          *(v99 + 72) = 0u;
          *(v99 + 16) = 44;
          *(v99 + 24) = 0xE100000000000000;
          swift_beginAccess();
          v100 = *(v99 + 40);
          *(v99 + 32) = 0;
          *(v99 + 40) = 0;

          *(v99 + 48) = 11;
          v101 = MEMORY[0x1E69E7CC0];
          *(v99 + 64) = MEMORY[0x1E69E7CC0];
          v95(v99);

          v102 = swift_allocObject();
          *(v102 + 40) = 0;
          *(v102 + 32) = 0;
          swift_weakInit();
          *(v102 + 88) = 0u;
          *(v102 + 72) = 0u;
          *(v102 + 16) = 32;
          *(v102 + 24) = 0xE100000000000000;
          swift_beginAccess();
          v103 = *(v102 + 40);
          *(v102 + 32) = 0;
          *(v102 + 40) = 0;

          *(v102 + 48) = 17;
          *(v102 + 64) = v101;
          v95(v102);

          if (v49)
          {
            v104 = MEMORY[0x1C6911DB0](0, v162);
LABEL_100:
            v168(v104, 0);

            v105 = swift_allocObject();
            *(v105 + 40) = 0;
            *(v105 + 32) = 0;
            swift_weakInit();
            *(v105 + 88) = 0u;
            *(v105 + 72) = 0u;
            *(v105 + 16) = 41;
            *(v105 + 24) = 0xE100000000000000;
            swift_beginAccess();
            v106 = *(v105 + 40);
            *(v105 + 32) = 0;
            *(v105 + 40) = 0;

            *(v105 + 48) = 16;
            *(v105 + 64) = MEMORY[0x1E69E7CC0];
            v95(v105);
            goto LABEL_156;
          }

          if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v104 = *(v162 + 32);

            goto LABEL_100;
          }

LABEL_192:
          __break(1u);
          goto LABEL_193;
        }

        if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
        {
          v98 = *(v162 + 40);

          goto LABEL_96;
        }

LABEL_191:
        __break(1u);
        goto LABEL_192;
      }

      __break(1u);
      goto LABEL_169;
    }

    *v167 = 1;
    v86 = v166();
    if (!(v86 >> 62))
    {
      v87 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_153:

      *v7 = v87;
      return v14;
    }

    goto LABEL_179;
  }

LABEL_65:
  v49 = v4;
  if (sub_1C1F52994() != 1)
  {
    v50 = sub_1C1F52994();
    goto LABEL_67;
  }

  while (1)
  {
LABEL_31:
    type metadata accessor for CalculateExpression.Token();
    v5 = swift_allocObject();
    *(v5 + 40) = 0;
    *(v5 + 32) = 0;
    swift_weakInit();
    *(v5 + 88) = 0u;
    *(v5 + 72) = 0u;
    *(v5 + 16) = 10127586;
    *(v5 + 24) = 0xA300000000000000;
    swift_beginAccess();
    v51 = *(v5 + 40);
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;

    *(v5 + 48) = 10;
    *(v5 + 64) = MEMORY[0x1E69E7CC0];
    (*(*v14 + 632))(v5);

    if (v11)
    {
      v52 = sub_1C1F52994();
    }

    else
    {
      v52 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v52)
    {
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      v54 = MEMORY[0x1C6911DB0](v52, v49);
      goto LABEL_103;
    }

    v53 = __OFSUB__(v52--, 1);
    if (v53)
    {
      goto LABEL_105;
    }

    if ((v49 & 0xC000000000000001) != 0)
    {
      goto LABEL_106;
    }

    if ((v52 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v52 < *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v54 = *(v49 + 8 * v52 + 32);

      goto LABEL_103;
    }

    __break(1u);
LABEL_109:
    v58 = v4;
    if (sub_1C1F52994() != 1)
    {
      break;
    }

LABEL_44:
    v7 = type metadata accessor for CalculateExpression.Token();
    v60 = *(*v5 + 184);

    v62 = v60(v61);
    v63 = sub_1C1ECCBD0(v9, v62);

    v11 = *v14 + 632;
    v64 = *v11;
    (*v11)(v63);

    v65 = swift_allocObject();
    *(v65 + 40) = 0;
    *(v65 + 32) = 0;
    swift_weakInit();
    *(v65 + 88) = 0u;
    *(v65 + 72) = 0u;
    *(v65 + 16) = 40;
    *(v65 + 24) = 0xE100000000000000;
    swift_beginAccess();
    v66 = *(v65 + 40);
    *(v65 + 32) = 0;
    *(v65 + 40) = 0;

    *(v65 + 48) = 15;
    v8 = MEMORY[0x1E69E7CC0];
    *(v65 + 64) = MEMORY[0x1E69E7CC0];
    v64(v65);

    if (v163)
    {
      v68 = sub_1C1F52994();
    }

    else
    {
      v68 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v68)
    {
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      v69 = MEMORY[0x1C6911DB0](v68, v58);
LABEL_53:
      (*(*v14 + 640))(v69, 0);

      v70 = swift_allocObject();
      *(v70 + 40) = 0;
      *(v70 + 32) = 0;
      swift_weakInit();
      *(v70 + 88) = 0u;
      *(v70 + 72) = 0u;
      *(v70 + 16) = 41;
      *(v70 + 24) = 0xE100000000000000;
      swift_beginAccess();
      v71 = *(v70 + 40);
      *(v70 + 32) = 0;
      *(v70 + 40) = 0;

      *(v70 + 48) = 16;
      *(v70 + 64) = v8;
      v64(v70);
      goto LABEL_156;
    }

    v53 = __OFSUB__(v68--, 1);
    if (v53)
    {
      goto LABEL_160;
    }

    if ((v58 & 0xC000000000000001) != 0)
    {
      goto LABEL_161;
    }

    if ((v68 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v68 < *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v69 = *(v58 + 8 * v68 + 32);

      goto LABEL_53;
    }

    __break(1u);
LABEL_164:
    v49 = v67;
    v76 = MEMORY[0x1C6911DB0](0);
    a3 = v76;
LABEL_71:
    v4 = (*(*a3 + 648))(v76);
    v78 = v77;

    if (!v78)
    {
      goto LABEL_76;
    }

    if (v4 == 50 && v78 == 0xE100000000000000)
    {
    }

    else
    {
      a3 = sub_1C1F52C64();

      if ((a3 & 1) == 0)
      {
        goto LABEL_76;
      }
    }
  }

  v59 = sub_1C1F52994();
  while (1)
  {
    if (v59 == 2)
    {
      v107 = v58;
      if ((v58 & 0xC000000000000001) != 0)
      {
LABEL_177:
        v58 = v107;
        v109 = MEMORY[0x1C6911DB0](0);
        v108 = v109;
      }

      else
      {
        if (!*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_179;
        }

        v108 = *(v58 + 32);
      }

      v110 = (*(*v108 + 648))(v109);
      v112 = v111;

      if (v112)
      {
        if (v110 == 12337 && v112 == 0xE200000000000000)
        {

          goto LABEL_44;
        }

        v113 = sub_1C1F52C64();

        if (v113)
        {
          goto LABEL_44;
        }
      }
    }

    if (v163)
    {
      v114 = sub_1C1F52994();
    }

    else
    {
      v114 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v114 != 2)
    {
      *v167 = 1;
      v126 = (v11)();
      if (v126 >> 62)
      {
        goto LABEL_179;
      }

      v87 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_153;
    }

    v57 = v58 & 0xC000000000000001;
    if ((v58 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v115 = *(v58 + 32);

      goto LABEL_127;
    }

    __break(1u);
LABEL_183:
    if (sub_1C1F52994() < 0)
    {
      __break(1u);
      goto LABEL_185;
    }

LABEL_41:
    sub_1C1ECD3D4(0, 0, v57);

    v4 = v172;
LABEL_42:
    v163 = v4 >> 62;
    if (v4 >> 62)
    {
      goto LABEL_109;
    }

    v58 = v4;
    v59 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v59 == 1)
    {
      goto LABEL_44;
    }
  }

  v116 = MEMORY[0x1C6911DB0](0, v58);
  v115 = v116;
LABEL_127:
  v117 = (*(*v115 + 648))(v116);
  v119 = v118;

  v169 = v58 & 0xC000000000000001;
  if (v119)
  {

    type metadata accessor for CalculateExpression.Token();
    v120 = *(*v5 + 184);

    v122 = v120(v121);
    v123 = sub_1C1ECCBD0(v9, v122);

    v124 = *(*v14 + 632);
    v124(v123);

    if (v57)
    {
      v125 = MEMORY[0x1C6911DB0](0, v58);
    }

    else
    {
      if (!*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_194;
      }

      v125 = *(v58 + 32);
    }

    v136 = (*v14 + 640);
    v137 = *v136;
    (*v136)(v125, 0);

    v138 = swift_allocObject();
    *(v138 + 40) = 0;
    *(v138 + 32) = 0;
    swift_weakInit();
    *(v138 + 88) = 0u;
    *(v138 + 72) = 0u;
    *(v138 + 16) = 40;
    *(v138 + 24) = 0xE100000000000000;
    swift_beginAccess();
    v139 = *(v138 + 40);
    *(v138 + 32) = 0;
    *(v138 + 40) = 0;

    *(v138 + 48) = 15;
    *(v138 + 64) = MEMORY[0x1E69E7CC0];
    v124(v138);

    if (v169)
    {
      v140 = MEMORY[0x1C6911DB0](1, v58);
    }

    else
    {
      if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_195;
      }

      v140 = *(v58 + 40);
    }

    v137(v140, 0);

    v141 = swift_allocObject();
    *(v141 + 40) = 0;
    *(v141 + 32) = 0;
    swift_weakInit();
    *(v141 + 88) = 0u;
    *(v141 + 72) = 0u;
    *(v141 + 16) = 41;
    *(v141 + 24) = 0xE100000000000000;
    swift_beginAccess();
    v142 = *(v141 + 40);
    *(v141 + 32) = 0;
    *(v141 + 40) = 0;

    *(v141 + 48) = 16;
    *(v141 + 64) = MEMORY[0x1E69E7CC0];
LABEL_155:
    v124(v141);
  }

  else
  {
    type metadata accessor for CalculateExpression.Token();
    v127 = *(*v5 + 184);

    v129 = v127(v128);
    v130 = sub_1C1ECCBD0(v9, v129);

    v131 = (*v14 + 632);
    v132 = *v131;
    (*v131)(v130);

    v133 = swift_allocObject();
    *(v133 + 32) = v117;
    *(v133 + 40) = 0;
    swift_weakInit();
    *(v133 + 72) = v117;
    *(v133 + 80) = 0;
    *(v133 + 88) = v117;
    *(v133 + 96) = 0;
    *(v133 + 16) = 40;
    *(v133 + 24) = 0xE100000000000000;
    swift_beginAccess();
    v134 = *(v133 + 40);
    *(v133 + 32) = v117;
    *(v133 + 40) = 0;

    *(v133 + 48) = 15;
    *(v133 + 64) = MEMORY[0x1E69E7CC0];
    v132(v133);

    if (v169)
    {
      v135 = MEMORY[0x1C6911DB0](0, v58);
    }

    else
    {
      if (!*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_196;
      }

      v135 = *(v58 + 32);
    }

    v165 = *(*v14 + 640);
    v165(v135, 0);

    v143 = swift_allocObject();
    *(v143 + 32) = v117;
    *(v143 + 40) = 0;
    swift_weakInit();
    *(v143 + 72) = v117;
    *(v143 + 80) = 0;
    *(v143 + 88) = v117;
    *(v143 + 96) = 0;
    *(v143 + 16) = 44;
    *(v143 + 24) = 0xE100000000000000;
    swift_beginAccess();
    v144 = *(v143 + 40);
    *(v143 + 32) = v117;
    *(v143 + 40) = 0;

    *(v143 + 48) = 11;
    v145 = MEMORY[0x1E69E7CC0];
    *(v143 + 64) = MEMORY[0x1E69E7CC0];
    v132(v143);

    v146 = swift_allocObject();
    *(v146 + 32) = v117;
    *(v146 + 40) = 0;
    swift_weakInit();
    *(v146 + 72) = v117;
    *(v146 + 80) = 0;
    *(v146 + 88) = v117;
    *(v146 + 96) = 0;
    *(v146 + 16) = 32;
    *(v146 + 24) = 0xE100000000000000;
    swift_beginAccess();
    v147 = *(v146 + 40);
    *(v146 + 32) = v117;
    *(v146 + 40) = 0;

    *(v146 + 48) = 17;
    *(v146 + 64) = v145;
    v132(v146);

    if (v169)
    {
      v148 = MEMORY[0x1C6911DB0](1, v58);
    }

    else
    {
      if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_197;
      }

      v148 = *(v58 + 40);
    }

    v165(v148, 0);

    v149 = swift_allocObject();
    *(v149 + 32) = v117;
    *(v149 + 40) = 0;
    swift_weakInit();
    *(v149 + 72) = v117;
    *(v149 + 80) = 0;
    *(v149 + 88) = v117;
    *(v149 + 96) = 0;
    *(v149 + 16) = 41;
    *(v149 + 24) = 0xE100000000000000;
    swift_beginAccess();
    v150 = *(v149 + 40);
    *(v149 + 32) = v117;
    *(v149 + 40) = 0;

    *(v149 + 48) = 16;
    *(v149 + 64) = MEMORY[0x1E69E7CC0];
    v132(v149);
  }

LABEL_156:

LABEL_157:

  return v14;
}

uint64_t sub_1C1ECAE48(void *a1, uint64_t *a2, _BYTE *a3)
{
  v5 = v3;
  v9 = *a2;
  v10 = (*a1 + 392);
  v11 = *v10;
  v12 = (*v10)();
  if (v12 >> 62)
  {
    v4 = v12;
    v13 = sub_1C1F52994();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 >= v13)
  {
    goto LABEL_18;
  }

  v15 = (v11)(v14);
  if ((v15 & 0xC000000000000001) == 0)
  {
    if (v9 < 0)
    {
      __break(1u);
    }

    else if (v9 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v15 + 8 * v9 + 32);

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_25;
  }

  v16 = MEMORY[0x1C6911DB0](v9, v15);
LABEL_8:

  v4 = &OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  v17 = *(v16 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

  v28 = v17;
  v27 = 15;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(&v28, &v27) & 1) == 0)
  {
LABEL_18:
    v24 = sub_1C1ECB468(a1, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C1F563C0;
    *(result + 32) = v24;
    return result;
  }

  sub_1C1ECD230(a1, a2);
  v5 = sub_1C1ECB11C(a1, a2, a3);
  v9 = *a2;
  v18 = v11();
  if (v18 >> 62)
  {
LABEL_25:
    v19 = sub_1C1F52994();
    goto LABEL_11;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:

  if (v9 >= v19)
  {
LABEL_20:
    *a3 = 1;
    return v5;
  }

  result = (v11)(v20);
  if ((result & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x1C6911DB0](v9, result);
LABEL_16:

    v23 = *(v22 + *v4);

    v26 = v23;
    v25 = 16;
    if (static CalculateExpression.TokenType.== infix(_:_:)(&v26, &v25))
    {
      sub_1C1ECD230(a1, a2);
      return v5;
    }

    goto LABEL_20;
  }

  if (v9 < 0)
  {
    __break(1u);
  }

  else if (v9 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(result + 8 * v9 + 32);

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1ECB11C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v31 = MEMORY[0x1E69E7CC0];
  v6 = *(*a1 + 392);
  while (1)
  {
    sub_1C1ECBCC4(a1, a2, a3);

    MEMORY[0x1C6911980](v7);
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v26 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1C1F526E4();
    }

    v8 = sub_1C1F52724();
    v9 = v31;
    v10 = *a2;
    v11 = (v6)(v8);
    if (v11 >> 62)
    {
      v12 = sub_1C1F52994();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10 >= v12)
    {
LABEL_31:

      return v9;
    }

    result = (v6)(v13);
    if ((result & 0xC000000000000001) == 0)
    {
      break;
    }

    v15 = MEMORY[0x1C6911DB0](v10, result);
LABEL_12:

    v16 = *(v15 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    v30 = v16;
    v29 = 11;
    if ((static CalculateExpression.TokenType.== infix(_:_:)(&v30, &v29) & 1) == 0)
    {
      goto LABEL_31;
    }

    v17 = v6();
    if (v17 >> 62)
    {
      v18 = sub_1C1F52994();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10 < v18)
    {
      *a2 = ++v10;
    }

    v20 = (v6)(v19);
    if (v20 >> 62)
    {
      v21 = sub_1C1F52994();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10 >= v21)
    {
    }

    else
    {
      result = (v6)(v22);
      if ((result & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1C6911DB0](v10, result);
      }

      else
      {
        if (v10 < 0)
        {
          goto LABEL_34;
        }

        if (v10 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v23 = *(result + 8 * v10 + 32);
      }

      v24 = *(v23 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

      v28 = v24;
      v27 = 17;
      v25 = static CalculateExpression.TokenType.== infix(_:_:)(&v28, &v27);

      if (v25)
      {
        *a2 = v10 + 1;
      }
    }
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    if (v10 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }

    v15 = *(result + 8 * v10 + 32);

    goto LABEL_12;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1C1ECB468(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for CalculateExpression.PlainExpression();
  v8 = swift_allocObject();
  v9 = swift_weakInit();
  v10 = MEMORY[0x1E69E7CC0];
  *(v8 + 24) = 1;
  *(v8 + 32) = v10;
  *(v8 + 40) = 1;
  v11 = MEMORY[0x1E69E7CD0];
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = v11;
  *(v8 + 72) = 0;
  *(v8 + 80) = v10;
  *(v8 + 88) = 0;
  v12 = *a2;
  v13 = (*a1 + 392);
  v14 = *v13;
  v15 = (*v13)(v9);
  if (v15 >> 62)
  {
    v16 = sub_1C1F52994();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12 >= v16)
  {
    return v8;
  }

  v18 = (v14)(v17);
  v19 = v18;
  v52 = v14;
  if ((v18 & 0xC000000000000001) == 0)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(v18 + 8 * v12 + 32);

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_61;
  }

  v14 = MEMORY[0x1C6911DB0](v12, v18);
LABEL_8:

  v20 = *(v14 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

  v60 = v20;
  v59 = 4;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(&v60, &v59) & 1) == 0)
  {
    v14 = v52;
    goto LABEL_18;
  }

  v21 = v52();
  v22 = v21;
  if ((v21 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x1C6911DB0](v12, v21);
  }

  else
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_67;
    }

    if (v12 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_69;
    }

    v23 = *(v21 + 8 * v12 + 32);
  }

  type metadata accessor for CalculateExpression.Token();
  v24 = (*(*a1 + 176))();
  v25 = sub_1C1ECCBD0(v23, v24);

  (*(*v8 + 632))(v25);

  v26 = sub_1C1ECD230(a1, a2);
  v12 = *a2;
  v14 = v52;
  v27 = (v52)(v26);
  if (!(v27 >> 62))
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_15;
  }

LABEL_67:
  v28 = sub_1C1F52994();
LABEL_15:

  if (v12 >= v28)
  {
    return v8;
  }

LABEL_18:
  v29 = v14();
  v19 = v29;
  if ((v29 & 0xC000000000000001) == 0)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 < *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v30 = *(v29 + 8 * v12 + 32);

      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_64;
  }

LABEL_61:
  v30 = MEMORY[0x1C6911DB0](v12, v19);
LABEL_22:

  v31 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  v58 = *(v30 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  v57 = 15;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(&v58, &v57) & 1) == 0)
  {
    v56 = *(v30 + v31);
    v55 = 10;
    if (static CalculateExpression.TokenType.== infix(_:_:)(&v56, &v55))
    {
      v36 = sub_1C1EC8D04(a1, a2, a3);
      (*(*v8 + 640))(v36, 0);
    }

    else
    {
      v54[1] = *(v30 + v31);
      v37 = CalculateExpression.TokenType.isOperand.getter();
      if (v37)
      {
        type metadata accessor for CalculateExpression.Token();
        v38 = *(*v4 + 184);

        v40 = v38(v39);
        v41 = sub_1C1ECCBD0(v30, v40);

        (*(*v8 + 632))(v41);

        v37 = sub_1C1ECD230(a1, a2);
      }

      else
      {
        *a3 = 1;
      }
    }

    goto LABEL_42;
  }

  v22 = v4;
  v32 = sub_1C1ECAE48(a1, a2, a3);
  v4 = v32;
  v20 = v32 >> 62;
  if (!(v32 >> 62))
  {
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_69:
  if (sub_1C1F52994() != 1)
  {
LABEL_25:
    *a3 = 1;
  }

LABEL_26:
  if (v20)
  {
    a3 = sub_1C1F52994();
    if (a3)
    {
      goto LABEL_28;
    }

LABEL_38:

    goto LABEL_42;
  }

  a3 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!a3)
  {
    goto LABEL_38;
  }

LABEL_28:
  if (a3 < 1)
  {
    goto LABEL_74;
  }

  v33 = 0;
  v34 = *(*v8 + 640);
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x1C6911DB0](v33, v4);
    }

    else
    {
      v35 = *(v4 + 8 * v33 + 32);
    }

    ++v33;
    v34(v35, 0);
  }

  while (a3 != v33);

  v14 = v52;
LABEL_42:
  a3 = *a2;
  v42 = (v14)(v37);
  if (!(v42 >> 62))
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_44;
  }

LABEL_64:
  v43 = sub_1C1F52994();
LABEL_44:

  if (a3 >= v43)
  {
LABEL_55:

    return v8;
  }

  v45 = (v14)(v44);
  v22 = v45;
  if ((v45 & 0xC000000000000001) == 0)
  {
    if (a3 < 0)
    {
      __break(1u);
    }

    else if (a3 < *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v46 = *(v45 + 8 * a3 + 32);

      goto LABEL_49;
    }

    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v46 = MEMORY[0x1C6911DB0](a3, v45);
LABEL_49:

  v47 = *(v46 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

  v54[0] = v47;
  v53 = 8;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v54, &v53) & 1) == 0)
  {
    goto LABEL_55;
  }

  result = v14();
  v22 = result;
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_75:
    v49 = MEMORY[0x1C6911DB0](a3, v22);
    goto LABEL_54;
  }

  if (a3 < 0)
  {
    __break(1u);
  }

  else if (a3 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v49 = *(result + 8 * a3 + 32);

LABEL_54:

    type metadata accessor for CalculateExpression.Token();
    v50 = (*(*a1 + 176))();
    v51 = sub_1C1ECCBD0(v49, v50);

    (*(*v8 + 632))(v51);

    sub_1C1ECD230(a1, a2);
    goto LABEL_55;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1ECBCC4(void *a1, unint64_t *a2, _BYTE *a3)
{
  type metadata accessor for CalculateExpression.PlainExpression();
  v6 = swift_allocObject();
  v7 = swift_weakInit();
  v8 = MEMORY[0x1E69E7CC0];
  *(v6 + 24) = 1;
  *(v6 + 32) = v8;
  *(v6 + 40) = 1;
  v9 = MEMORY[0x1E69E7CD0];
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = v9;
  *(v6 + 72) = 0;
  *(v6 + 80) = v8;
  *(v6 + 88) = 0;
  v10 = (*a1 + 392);
  v11 = *v10;
  v12 = *a2;
  v13 = (*v10)(v7);
  if (v13 >> 62)
  {
    goto LABEL_50;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v12 < v14)
  {
    v16 = 0;
    v49 = a3;
    v50 = v10;
    v51 = a2;
    v52 = v11;
    v54 = a1;
    do
    {
      v17 = v11(v15);
      if ((v17 & 0xC000000000000001) != 0)
      {
        a1 = v57;
        v12 = MEMORY[0x1C6911DB0](v12, v17);
      }

      else
      {
        if (v12 < 0)
        {
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          v14 = sub_1C1F52994();
          goto LABEL_3;
        }

        if (v12 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        a1 = v57;
        v12 = *(v17 + 8 * v12 + 32);
      }

      v18 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
      v57[0] = *(v12 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      LOBYTE(v56) = 15;
      if (static CalculateExpression.TokenType.== infix(_:_:)(v57, &v56))
      {
        v19 = __OFADD__(v16++, 1);
        if (v19)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v57[0] = *(v12 + v18);
        LOBYTE(v56) = 16;
        if (static CalculateExpression.TokenType.== infix(_:_:)(v57, &v56))
        {
          if (!v16)
          {
            goto LABEL_44;
          }

          v19 = __OFSUB__(v16--, 1);
          if (v19)
          {
            goto LABEL_49;
          }
        }

        else if (!v16)
        {
          v57[0] = *(v12 + v18);
          LOBYTE(v56) = 11;
          if (static CalculateExpression.TokenType.== infix(_:_:)(v57, &v56))
          {
LABEL_44:

            return v6;
          }

          v16 = 0;
        }
      }

      v57[0] = *(v12 + v18);
      LOBYTE(v56) = 10;
      if (static CalculateExpression.TokenType.== infix(_:_:)(v57, &v56))
      {
        a1 = v54;
        v20 = sub_1C1EC8D04(v54, a2, a3);
        (*(*v6 + 640))(v20, 0);
        v11 = v52;
      }

      else
      {
        v57[0] = *(v12 + v18);
        LOBYTE(v56) = 7;
        if (static CalculateExpression.TokenType.== infix(_:_:)(v57, &v56))
        {
          v22 = (*(*v12 + 280))();
          if (v22)
          {
            v56 = 0;
            v55 = 0;
            v23 = *sub_1C1ECBCC4(v22, &v56, &v55);
            v24 = (*(v23 + 264))();
            v25 = (*(*v6 + 280))(v57);
            sub_1C1EC8A24(v24);
            v25(v57, 0);
          }

          type metadata accessor for CalculateExpression.Token();
          v26 = swift_allocObject();
          *(v26 + 40) = 0;
          *(v26 + 32) = 0;
          swift_weakInit();
          *(v26 + 88) = 0u;
          *(v26 + 72) = 0u;
          *(v26 + 16) = 94;
          *(v26 + 24) = 0xE100000000000000;
          swift_beginAccess();
          v27 = *(v26 + 40);
          *(v26 + 32) = 0;
          *(v26 + 40) = 0;

          *(v26 + 48) = 7;
          *(v26 + 64) = MEMORY[0x1E69E7CC0];
          v28 = *(*v6 + 280);
          v29 = v28(v57);
          v31 = v30;
          MEMORY[0x1C6911980]();
          if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v47 = *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1C1F526E4();
          }

          sub_1C1F52724();
          v29(v57, 0);
          v32 = sub_1C1ECD230(v54, v51);
          v33 = (*(*v12 + 304))(v32);
          if (v33)
          {
            v56 = 0;
            v55 = 0;
            v34 = *sub_1C1ECBCC4(v33, &v56, &v55);
            v35 = (*(v34 + 264))();
            v36 = v28(v57);
            sub_1C1EC8A24(v35);
            v36(v57, 0);
          }

          a3 = v49;
          v10 = v50;
          a2 = v51;
          v11 = v52;
          a1 = v54;
          goto LABEL_38;
        }

        v57[0] = *(v12 + v18);
        if ((CalculateExpression.TokenType.isAnyUnknown.getter() & 1) == 0)
        {
          v57[0] = *(v12 + v18);
          LOBYTE(v56) = 1;
          a1 = v54;
          if (static CalculateExpression.TokenType.== infix(_:_:)(v57, &v56))
          {
            type metadata accessor for CalculateExpression.Token();
            v37 = *(*v53 + 184);

            v39 = v37(v38);
            v40 = sub_1C1ECCBD0(v12, v39);

            (*(*v6 + 632))(v40);

            sub_1C1ECD230(v54, a2);
          }

          else
          {
            sub_1C1ECD230(v54, a2);
            type metadata accessor for CalculateExpression.Token();
            v41 = *(*v54 + 176);

            v43 = v41(v42);
            v44 = sub_1C1ECCBD0(v12, v43);

            (*(*v6 + 632))(v44);
          }

          v10 = v50;
          v11 = v52;
          goto LABEL_38;
        }

        *a3 = 1;
        a1 = v54;
        sub_1C1ECD230(v54, a2);
      }

LABEL_38:
      v12 = *a2;
      v45 = v11(v21);
      if (v45 >> 62)
      {
        v46 = sub_1C1F52994();
      }

      else
      {
        v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    while (v12 < v46);
  }

  return v6;
}

void *CalculateExpression.PlainExpression.deinit()
{
  swift_weakDestroy();
  v1 = v0[4];

  v2 = v0[7];

  v3 = v0[8];

  v4 = v0[10];

  return v0;
}

uint64_t CalculateExpression.Token._notesFormattedText.getter()
{
  v1 = sub_1C1E90090(&unk_1F418DCA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21148, &unk_1C1F564B0);
  swift_arrayDestroy();
  if (*(v1 + 16) && (v2 = sub_1C1E901F0(v0[48]), (v3 & 1) != 0))
  {
    v4 = (*(v1 + 56) + 16 * v2);
    v6 = *v4;
    v5 = v4[1];

    return v6;
  }

  else
  {

    return (*(*v0 + 136))(v8);
  }
}

char *sub_1C1ECC638(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211C0, &qword_1C1F568B0);
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

unint64_t sub_1C1ECC744(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1C1ECC7DC(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1C1ECC850(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1C1ECC7DC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1C1E9B32C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C1ECC850(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1C1F52AE4();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t sub_1C1ECC964(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C1F52994();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C1F52994();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C1E785EC(&qword_1EBF21300, &qword_1EBF212F8, &qword_1C1F57298);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF212F8, &qword_1C1F57298);
            v9 = sub_1C1E98D2C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CalculateExpression.Token();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1ECCB04(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = result;
  result = sub_1C1F524B4();
  if (__OFSUB__(result, v1))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1C1F524E4();

  return sub_1C1F525F4();
}

uint64_t sub_1C1ECCBD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*a1 + 232);
  countAndFlagsBits = v6();
  v9 = v8;
  v10 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  v71 = *(a1 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  v70 = 1;
  if (static CalculateExpression.TokenType.== infix(_:_:)(&v71, &v70))
  {
    v11 = sub_1C1E982B8(countAndFlagsBits, v9);
    if (v12)
    {
      if (v11 == 45 && v12 == 0xE100000000000000)
      {
        goto LABEL_17;
      }

      v14 = sub_1C1F52C64();

      if (v14)
      {
        goto LABEL_18;
      }
    }

    v15 = sub_1C1E982B8(countAndFlagsBits, v9);
    if (!v16)
    {
      goto LABEL_19;
    }

    if (v15 != 43 || v16 != 0xE100000000000000)
    {
      v18 = sub_1C1F52C64();

      if ((v18 & 1) == 0)
      {
LABEL_19:
        v35 = sub_1C1E982B8(countAndFlagsBits, v9);
        if (!v36)
        {
          goto LABEL_29;
        }

        if (v35 == 101 && v36 == 0xE100000000000000)
        {
        }

        else
        {
          v38 = sub_1C1F52C64();

          if ((v38 & 1) == 0)
          {
LABEL_29:
            v48 = sub_1C1E982B8(countAndFlagsBits, v9);
            if (!v49)
            {
              goto LABEL_38;
            }

            if (v48 == 46 && v49 == 0xE100000000000000)
            {
            }

            else
            {
              v51 = sub_1C1F52C64();

              if ((v51 & 1) == 0)
              {
LABEL_38:
                (*(*a1 + 400))(v48);
                if (v61)
                {
                  v20 = countAndFlagsBits;
                  if (a2)
                  {
LABEL_40:

                    v62 = sub_1C1E7DD60() & 1;
                    v63._countAndFlagsBits = v20;
                    v63._object = v9;
                    v72.value.super.super.isa = 0;
                    v72.is_nil = 0;
                    v73.value = 1;
                    v73.is_nil = 2;
                    v65 = CalculateExpression.formatLiteral(_:presentation:formatter:significantDigits:forceScientificNotation:)(v63, v62, v72, v73, v64);
                    countAndFlagsBits = v65._countAndFlagsBits;
                    object = v65._object;

                    v25 = v9;
                    goto LABEL_41;
                  }
                }

                else
                {
                  v20 = sub_1C1F52C34();
                  v67 = v66;

                  v9 = v67;
                  if (a2)
                  {
                    goto LABEL_40;
                  }
                }

                v25 = v9;
                countAndFlagsBits = v20;
                goto LABEL_44;
              }
            }

            v52 = sub_1C1ECCB04(1);
            v54 = v53;
            v56 = v55;
            v58 = v57;

            countAndFlagsBits = MEMORY[0x1C6911770](v52, v54, v56, v58);
            v60 = v59;

            v9 = v60;
            goto LABEL_38;
          }
        }

        v39 = sub_1C1ECCB04(1);
        v41 = v40;
        v43 = v42;
        v45 = v44;

        countAndFlagsBits = MEMORY[0x1C6911770](v39, v41, v43, v45);
        v47 = v46;

        v9 = v47;
        goto LABEL_29;
      }

LABEL_18:

      v26 = sub_1C1ECCB04(1);
      v28 = v27;
      v30 = v29;
      v32 = v31;

      countAndFlagsBits = MEMORY[0x1C6911770](v26, v28, v30, v32);
      v34 = v33;

      v9 = v34;
      goto LABEL_19;
    }

LABEL_17:

    goto LABEL_18;
  }

  if (a2)
  {

    v20 = (v6)(v19);
    v22 = v21;
    countAndFlagsBits = (*(*a1 + 736))(a2);
    object = v23;

    v25 = v22;
LABEL_41:
    v9 = object;
    goto LABEL_44;
  }

  v20 = 0;
  v25 = 0;
LABEL_44:
  v69 = *(a1 + v10);
  return (*(v3 + 240))(countAndFlagsBits, v9, v20, v25, &v69, MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1C1ECD060(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C1F52994())
  {
    v8 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      return v8;
    }

    v24 = MEMORY[0x1E69E7CC0];
    sub_1C1EAF018(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v9 = 0;
    v8 = v24;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1C6911DB0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v11 = *(a1 + 8 * v9 + 32);
      }

      v22 = v11;
      sub_1C1EC6740(&v22, a2, a3, a4, v23);
      if (v5)
      {
        goto LABEL_20;
      }

      v5 = 0;

      v12 = v23[0];
      v13 = v23[1];
      v24 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        v18 = v23[0];
        sub_1C1EAF018((v14 > 1), v15 + 1, 1);
        v12 = v18;
        v8 = v24;
      }

      *(v8 + 16) = v15 + 1;
      v16 = v8 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      ++v9;
      if (v10 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

uint64_t sub_1C1ECD230(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = (*a1 + 392);
  v5 = *v4;
  v6 = (*v4)();
  if (v6 >> 62)
  {
    v7 = sub_1C1F52994();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < v7)
  {
    *a2 = ++v3;
  }

  v9 = (v5)(v8);
  if (v9 >> 62)
  {
    v10 = sub_1C1F52994();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < v10)
  {
    result = (v5)(result);
    if ((result & 0xC000000000000001) == 0)
    {
      if (v3 < 0)
      {
        __break(1u);
      }

      else if (v3 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v12 = *(result + 8 * v3 + 32);

        goto LABEL_12;
      }

      __break(1u);
      return result;
    }

    v12 = MEMORY[0x1C6911DB0](v3, result);
LABEL_12:

    v13 = *(v12 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    v15 = v13;
    v14 = 17;
    result = static CalculateExpression.TokenType.== infix(_:_:)(&v15, &v14);
    if (result)
    {
      *a2 = v3 + 1;
    }
  }

  return result;
}

uint64_t sub_1C1ECD3D4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_1C1F52994();
  if (result < v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8)
  {
    v12 = sub_1C1F52994();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (!v13)
  {
    sub_1C1E8CFBC(result);
    return sub_1C1ECD69C(v6, v5, 1, v3, type metadata accessor for CalculateExpression.PlainExpression);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1C1ECD4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for CalculateExpression.Token();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1C1F52994();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1C1F52994();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1ECD5C4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1C1F52994();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_1C1F52994();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1C1E8CFBC(result);

  return sub_1C1ECD4C8(v4, v2, 0);
}

uint64_t sub_1C1ECD69C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  a5();
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = result - v8;
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1C1F52994();
    v16 = result - v8;
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = sub_1C1F52994();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = result + v12;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v5 > 0)
  {
    *v7 = v9;

    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1C1ECD7BC(unint64_t a1)
{
  v2 = v1;
  v4 = swift_weakInit();
  v5 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  v6 = v1 + 32;
  *(v1 + 24) = 1;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = MEMORY[0x1E69E7CD0];
  *(v1 + 72) = 0;
  *(v1 + 80) = v5;
  *(v1 + 88) = 0;
  v101 = *(*a1 + 176);
  (v101)(v4);
  swift_beginAccess();
  swift_weakAssign();

  v108 = 0;
  v107 = 0;
  if (!swift_weakLoadStrong() || (v7 = CalculateExpression.format.getter(), v8 = , v7 != 2))
  {
    v33 = *sub_1C1ECBCC4(a1, &v108, &v107);
    v34 = (*(v33 + 264))();

    swift_beginAccess();
    v35 = *(v1 + 32);
    *(v1 + 32) = v34;

    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      goto LABEL_57;
    }

    v36 = CalculateExpression.allowPartialExpressions.getter();

    if ((v36 & 1) == 0)
    {
      goto LABEL_57;
    }

    if (*v6 >> 62)
    {
      goto LABEL_179;
    }

    v10 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v37 = v10 - 1;
    if (__OFSUB__(v10, 1))
    {
      goto LABEL_181;
    }

LABEL_31:
    if (v37 < 0)
    {
      goto LABEL_57;
    }

    while (1)
    {
      v18 = v10 - 1;
      swift_beginAccess();
      v38 = *v6;
      if ((*v6 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x1C6911DB0](v10 - 1);
      }

      else
      {
        if (v18 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          v6 = sub_1C1F52994();
          if (v6)
          {
            goto LABEL_143;
          }

          return v2;
        }

        v39 = *(v38 + 8 * v10 + 24);
      }

      swift_endAccess();
      v40 = *(v39 + 48);

      LOBYTE(v105[0]) = v40;
      v104[0] = 16;
      Strong = static CalculateExpression.TokenType.== infix(_:_:)(v105, v104);
      if ((Strong & 1) == 0)
      {
        swift_beginAccess();
        v41 = *v6;
        if ((*v6 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x1C6911DB0](v10 - 1);
        }

        else
        {
          if (v18 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_164;
          }

          v42 = *(v41 + 8 * v10 + 24);
        }

        swift_endAccess();
        v43 = *(v42 + 48);

        LOBYTE(v105[0]) = v43;
        v104[0] = 17;
        Strong = static CalculateExpression.TokenType.== infix(_:_:)(v105, v104);
        if ((Strong & 1) == 0)
        {
          break;
        }
      }

      --v10;
      if (v18 < 1)
      {
        goto LABEL_57;
      }
    }

    swift_beginAccess();
    v44 = *v6;
    if ((*v6 & 0xC000000000000001) != 0)
    {
LABEL_188:
      v45 = MEMORY[0x1C6911DB0](v18);
    }

    else
    {
      if (v18 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_190;
      }

      v45 = *(v44 + 8 * v10 + 24);
    }

    swift_endAccess();
    v46 = *(v45 + 48);

    v104[0] = v46;
    if (CalculateExpression.TokenType.isBinaryOperator.getter())
    {
      goto LABEL_53;
    }

    result = swift_beginAccess();
    v48 = *v6;
    if ((*v6 & 0xC000000000000001) != 0)
    {
      goto LABEL_194;
    }

    if (v18 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_196:
      __break(1u);
      return result;
    }

    v49 = *(v48 + 8 * v10 + 24);

    while (1)
    {
      swift_endAccess();
      v50 = *(v49 + 48);

      LOBYTE(v105[0]) = v50;
      v102[0] = 15;
      Strong = static CalculateExpression.TokenType.== infix(_:_:)(v105, v102);
      if ((Strong & 1) == 0)
      {
        goto LABEL_57;
      }

LABEL_53:
      if (*v6 >> 62)
      {
LABEL_190:
        v100 = sub_1C1F52994();
        v52 = v100 - v18;
        if (__OFSUB__(v100, v18))
        {
LABEL_192:
          __break(1u);
          goto LABEL_193;
        }
      }

      else
      {
        v51 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v52 = v51 - v18;
        if (__OFSUB__(v51, v18))
        {
          goto LABEL_192;
        }
      }

      v53 = v52 - 1;
      if (!__OFSUB__(v52, 1))
      {
        swift_beginAccess();
        sub_1C1EC7B8C(v53);
        Strong = swift_endAccess();
        goto LABEL_57;
      }

LABEL_193:
      __break(1u);
LABEL_194:
      v49 = MEMORY[0x1C6911DB0](v18);
    }
  }

  v105[0] = MEMORY[0x1E69E7CC0];
  v9 = (*a1 + 392);
  v10 = *v9;
  v11 = (*v9)(v8);
  if (v11 >> 62)
  {
    v12 = sub_1C1F52994();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v12, 2))
  {
    __break(1u);
    goto LABEL_172;
  }

  v13 = (*(*a1 + 416))(v12 - 2);
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = *(v13 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

  if (v14 == 53)
  {
    goto LABEL_18;
  }

  v106 = v14;
  v104[0] = 4;
  sub_1C1E9019C();
  v13 = sub_1C1F52414();
  if ((v13 & 1) == 0)
  {
    goto LABEL_18;
  }

  v15 = (v10)();
  if (v15 >> 62)
  {
    goto LABEL_182;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C1F52994())
  {

    v18 = i - 2;
    if (__OFSUB__(i, 2))
    {
      __break(1u);
LABEL_184:
      MEMORY[0x1C6911DB0](v18, i);
      goto LABEL_16;
    }

    v19 = (v10)(v17);
    i = v19;
    if ((v19 & 0xC000000000000001) != 0)
    {
      goto LABEL_184;
    }

    if ((v18 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_186:
      sub_1C1F526E4();
      goto LABEL_17;
    }

    if (v18 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_188;
    }

    v20 = *(v19 + 8 * v18 + 32);

LABEL_16:

    MEMORY[0x1C6911980](v21);
    if (*((v105[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_186;
    }

LABEL_17:
    v13 = sub_1C1F52724();
LABEL_18:
    v22 = (v10)(v13);
    v12 = v22;
    if (v22 >> 62)
    {
LABEL_172:
      v23 = sub_1C1F52994();
      if (!v23)
      {
LABEL_173:

        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        MEMORY[0x1C6911DB0](v25, v12);
LABEL_25:

        MEMORY[0x1C6911980](v27);
        if (*((v105[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_177;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
        goto LABEL_173;
      }
    }

    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v24)
    {
      goto LABEL_174;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      goto LABEL_175;
    }

    if ((v25 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v25 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v26 = *(v12 + 8 * v25 + 32);

      goto LABEL_25;
    }

    __break(1u);
LABEL_179:
    Strong = sub_1C1F52994();
    v10 = Strong;
    v37 = Strong - 1;
    if (!__OFSUB__(Strong, 1))
    {
      goto LABEL_31;
    }

LABEL_181:
    __break(1u);
LABEL_182:
    ;
  }

  __break(1u);
LABEL_177:
  sub_1C1F526E4();
LABEL_26:
  sub_1C1F52724();
  type metadata accessor for CalculateExpression.RichExpression();
  swift_weakLoadStrong();
  v28 = CalculateExpression.RichExpression.__allocating_init(tokens:parent:)(v105[0]);
  v29 = *sub_1C1ECBCC4(v28, &v108, &v107);
  v30 = (*(v29 + 264))();

  swift_beginAccess();
  v31 = *(v2 + 32);
  *(v2 + 32) = v30;

LABEL_57:
  if (v107)
  {
    goto LABEL_60;
  }

  v54 = (*(*a1 + 392))(Strong);
  if (v54 >> 62)
  {
LABEL_168:
    v99 = sub_1C1F52994();

    if (v99)
    {
      goto LABEL_61;
    }

LABEL_60:
    swift_beginAccess();
    v56 = *v6;
    *v6 = MEMORY[0x1E69E7CC0];

    goto LABEL_61;
  }

  v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v55)
  {
    goto LABEL_60;
  }

LABEL_61:
  v57 = 0;
  while (2)
  {
    swift_beginAccess();
    v59 = *v6;
    if (*v6 >> 62)
    {
      if (v59 < 0)
      {
        v90 = *v6;
      }

      if (v57 >= sub_1C1F52994())
      {
        goto LABEL_141;
      }
    }

    else if (v57 >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_141;
    }

    swift_beginAccess();
    v60 = *v6;
    if ((*v6 & 0xC000000000000001) != 0)
    {
      v61 = MEMORY[0x1C6911DB0](v57);
    }

    else
    {
      if (v57 < 0)
      {
        __break(1u);
LABEL_152:
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
        goto LABEL_161;
      }

      if (v57 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_152;
      }

      v61 = *(v60 + 8 * v57 + 32);
    }

    swift_endAccess();
    v62 = *(v61 + 48);

    v103[1] = v62;
    if ((CalculateExpression.TokenType.isWordBasedBitwiseOperator.getter() & 1) == 0)
    {
      goto LABEL_62;
    }

    swift_beginAccess();
    v63 = *v6;
    if ((*v6 & 0xC000000000000001) != 0)
    {
      v64 = MEMORY[0x1C6911DB0](v57);
    }

    else
    {
      if (v57 < 0)
      {
        goto LABEL_154;
      }

      if (v57 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_155;
      }

      v64 = *(v63 + 8 * v57 + 32);
    }

    swift_endAccess();
    v65 = *(v64 + 48);

    v104[0] = v65;
    v103[0] = 9;
    if (static CalculateExpression.TokenType.== infix(_:_:)(v104, v103))
    {
      if (!v101() || (v66 = CalculateExpression.engine.getter(), , v66 != 1))
      {
LABEL_62:
        v58 = v57;
        goto LABEL_63;
      }
    }

    v67 = *v6;
    if (*v6 >> 62)
    {
      if (v67 < 0)
      {
        v91 = *v6;
      }

      v68 = sub_1C1F52994();
    }

    else
    {
      v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v58 = v57 + 1;
    if (v57 + 1 < v68)
    {
      type metadata accessor for CalculateExpression.Token();
      v69 = swift_allocObject();
      *(v69 + 40) = 0;
      *(v69 + 32) = 0;
      swift_weakInit();
      *(v69 + 88) = 0u;
      *(v69 + 72) = 0u;
      *(v69 + 16) = 32;
      *(v69 + 24) = 0xE100000000000000;
      swift_beginAccess();
      v70 = *(v69 + 40);
      *(v69 + 32) = 0;
      *(v69 + 40) = 0;

      *(v69 + 48) = 17;
      *(v69 + 64) = MEMORY[0x1E69E7CC0];
      swift_beginAccess();
      v71 = *v6;
      v72 = *v6 >> 62;
      if (v72)
      {
        if (v71 < 0)
        {
          v92 = *v6;
        }

        else
        {
          v92 = *v6 & 0xFFFFFFFFFFFFFF8;
        }

        if (sub_1C1F52994() < v58)
        {
          goto LABEL_157;
        }
      }

      else if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < v58)
      {
        goto LABEL_157;
      }

      if (v58 < 0)
      {
        goto LABEL_158;
      }

      if (v72)
      {
        if (sub_1C1F52994() < v58)
        {
          goto LABEL_163;
        }

        v73 = sub_1C1F52994();
      }

      else
      {
        v73 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v73 < v58)
        {
          goto LABEL_162;
        }
      }

      v74 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        goto LABEL_159;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v6 = v71;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v72)
        {
          v76 = v71 & 0xFFFFFFFFFFFFFF8;
          if (v74 > *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_96:
            v77 = *(v76 + 16);
            goto LABEL_98;
          }

          goto LABEL_99;
        }
      }

      else if (!v72)
      {
        v76 = v71 & 0xFFFFFFFFFFFFFF8;
        goto LABEL_96;
      }

      sub_1C1F52994();
LABEL_98:
      v71 = sub_1C1F52AD4();
      *v6 = v71;
LABEL_99:
      sub_1C1ECD69C(v57 + 1, v57 + 1, 1, v69, type metadata accessor for CalculateExpression.Token);
      *v6 = v71;
      swift_endAccess();
    }

    if (v57 < 1)
    {
      goto LABEL_63;
    }

    swift_beginAccess();
    v78 = *v6;
    if ((*v6 & 0xC000000000000001) != 0)
    {
      v79 = MEMORY[0x1C6911DB0](v57);
    }

    else
    {
      if (v57 >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_156;
      }

      v79 = *(v78 + 8 * v57 + 32);
    }

    swift_endAccess();
    v80 = *(v79 + 48);

    v104[0] = v80;
    if (CalculateExpression.TokenType.isPrefixOperator.getter())
    {
LABEL_63:
      v57 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        goto LABEL_153;
      }

      continue;
    }

    break;
  }

  type metadata accessor for CalculateExpression.Token();
  v81 = swift_allocObject();
  *(v81 + 40) = 0;
  *(v81 + 32) = 0;
  swift_weakInit();
  *(v81 + 88) = 0u;
  *(v81 + 72) = 0u;
  *(v81 + 16) = 32;
  *(v81 + 24) = 0xE100000000000000;
  swift_beginAccess();
  v82 = *(v81 + 40);
  *(v81 + 32) = 0;
  *(v81 + 40) = 0;

  *(v81 + 48) = 17;
  *(v81 + 64) = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v83 = *v6;
  v84 = *v6 >> 62;
  if (!v84)
  {
    v85 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v85 < v57)
    {
      goto LABEL_160;
    }

    v86 = v85 + 1;
    if (__OFADD__(v85, 1))
    {
      goto LABEL_140;
    }

LABEL_108:
    v87 = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *v6 = v83;
    if (v87)
    {
      if (!v84)
      {
        v88 = v83 & 0xFFFFFFFFFFFFFF8;
        if (v86 > *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_114:
          v89 = *(v88 + 16);
          goto LABEL_116;
        }

        goto LABEL_117;
      }
    }

    else if (!v84)
    {
      v88 = v83 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_114;
    }

    sub_1C1F52994();
LABEL_116:
    v83 = sub_1C1F52AD4();
    *v6 = v83;
LABEL_117:
    sub_1C1ECD69C(v57, v57, 1, v81, type metadata accessor for CalculateExpression.Token);
    *v6 = v83;
    swift_endAccess();

    goto LABEL_63;
  }

  if (v83 < 0)
  {
    v93 = *v6;
  }

  else
  {
    v93 = *v6 & 0xFFFFFFFFFFFFFF8;
  }

  if (sub_1C1F52994() < v57)
  {
    goto LABEL_160;
  }

  result = sub_1C1F52994();
  if (result < v57)
  {
    goto LABEL_196;
  }

  v94 = sub_1C1F52994();
  v86 = v94 + 1;
  if (!__OFADD__(v94, 1))
  {
    goto LABEL_108;
  }

LABEL_140:
  __break(1u);
LABEL_141:
  a1 = *v6;
  if (*v6 >> 62)
  {
    goto LABEL_165;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
LABEL_143:
    if (v6 < 1)
    {
      __break(1u);
      goto LABEL_168;
    }

    v95 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v96 = MEMORY[0x1C6911DB0](v95, a1);
      }

      else
      {
        v96 = *(a1 + 8 * v95 + 32);
      }

      ++v95;
      v97 = *(*v96 + 192);

      v97(v98);
    }

    while (v6 != v95);
  }

  return v2;
}

unint64_t sub_1C1ECE720()
{
  result = qword_1EBF212E8;
  if (!qword_1EBF212E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF212E8);
  }

  return result;
}

void type metadata accessor for CalculateGraphableType()
{
  if (!qword_1EBF212F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EBF212F0);
    }
  }
}

uint64_t sub_1C1ECEABC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  v10 = v2;
  if (((*(*a1 + 224))() & 1) == 0)
  {
    goto LABEL_14;
  }

  v11 = (*(*a1 + 392))();
  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_13:

    goto LABEL_14;
  }

  v19 = v11;
  v20 = sub_1C1F52994();
  v11 = v19;
  if (!v20)
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x1C6911DB0](0, v11);

    v13 = *(v37 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    swift_unknownObjectRelease();
    if (v13 == 53)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_49;
    }

    v12 = *(v11 + 32);

    v13 = *(v12 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v13 == 53)
    {
      goto LABEL_14;
    }
  }

  LOBYTE(v41) = v13;
  v40 = 4;
  sub_1C1E9019C();
  if ((sub_1C1F52414() & 1) == 0)
  {
    goto LABEL_14;
  }

  type metadata accessor for CalculateExpression.RichToken();
  LOBYTE(v41) = 15;
  v14 = sub_1C1E7DD60();
  v3 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, &v41, v14 & 1);
  v6 = *(*a1 + 408);
  v4 = (v6)(&v41);
  if (*v15 >> 62)
  {
    goto LABEL_53;
  }

LABEL_10:
  sub_1C1E98664(0, 0, v3);

  (v4)(&v41, 0);
  LOBYTE(v41) = 16;
  v16 = sub_1C1E7DD60();
  CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, &v41, v16 & 1);
  v3 = (v6)(&v41);
  v18 = v17;
  MEMORY[0x1C6911980]();
  if (*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    sub_1C1F52724();
    v3(&v41, 0);
LABEL_14:
    CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1ECF290, &v41);
    v3 = v41;
    if (!v41)
    {
      return 0;
    }

    v4 = v42;
    v21 = v43;
    v22 = v44;
    v23 = *(*v41 + 416);

    v6 = v23(v4);
    type metadata accessor for CalculateExpression.RichToken();
    LOBYTE(v41) = 8;
    v24 = sub_1C1E7DD60();
    v5 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, &v41, v24 & 1);
    if (!v6)
    {

      sub_1C1E98278(v3);

      return 0;
    }

    v7 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
    LOBYTE(v41) = *(v6 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    if (CalculateExpression.TokenType.isOperator.getter())
    {
      break;
    }

    LOBYTE(v41) = v7[v6];
    if ((CalculateExpression.TokenType.isOperand.getter() & 1) == 0)
    {
      v40 = v7[v6];
      v39 = 16;
      if ((static CalculateExpression.TokenType.== infix(_:_:)(&v40, &v39) & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
LABEL_49:
      __break(1u);
    }

    else
    {
      v26 = *(*v3 + 408);
      v8 = (*v3 + 408);

      v7 = v26(&v41);
      if (!(*v27 >> 62))
      {
        if (*((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10) < v10)
        {
          goto LABEL_51;
        }

        goto LABEL_27;
      }
    }

    if (sub_1C1F52994() < v10)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_27:
    if ((v10 & 0x8000000000000000) == 0)
    {
      sub_1C1E98664(v10, v10, v5);

      (v7)(&v41, 0);
      goto LABEL_40;
    }

LABEL_52:
    __break(1u);
LABEL_53:
    if ((sub_1C1F52994() & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_55:
    sub_1C1F526E4();
  }

  LOBYTE(v41) = v7[v6];
  v40 = 8;
  if (static CalculateExpression.TokenType.== infix(_:_:)(&v41, &v40) & 1) != 0 || (LOBYTE(v41) = v7[v6], v40 = 9, (static CalculateExpression.TokenType.== infix(_:_:)(&v41, &v40)))
  {
    v41 = v3;
    v42 = v4;
    v43 = v21;
    v44 = v22;
    sub_1C1EBA244(v5, &v41);
LABEL_40:

    sub_1C1E98278(v3);
    return 1;
  }

  LOBYTE(v41) = v7[v6];
  v40 = 7;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(&v41, &v40) & 1) == 0 || (v28 = (*(*v6 + 304))()) == 0)
  {
LABEL_33:
    v29 = *(*v3 + 408);

    v30 = v29(&v41);
    v32 = v31;
    v33 = *v31;
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *v32 = v33;
    if (!isUniquelyReferenced_nonNull_bridgeObject || (v33 & 0x8000000000000000) != 0 || (v33 & 0x4000000000000000) != 0)
    {
      v33 = sub_1C1E98444(v33);
      *v32 = v33;
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
      *((v33 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v5;

      v30(&v41, 0);
      goto LABEL_40;
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    result = sub_1C1F52994();
    if (result >= v32)
    {
      goto LABEL_44;
    }

    goto LABEL_60;
  }

  if ((*(*v28 + 576))())
  {

    goto LABEL_33;
  }

  v32 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    goto LABEL_58;
  }

  v38 = *(*v3 + 408);

  v8 = v38(&v41);
  if (*v36 >> 62)
  {
    goto LABEL_59;
  }

  result = *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result < v32)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_44:
  if ((v32 & 0x8000000000000000) == 0)
  {
    sub_1C1E98664(v32, v32, v5);

    v8(&v41, 0);

    goto LABEL_40;
  }

LABEL_61:
  __break(1u);
  return result;
}

uint64_t CalculateExpression.FactorialOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1C1ECF314(uint64_t a1)
{
  v3 = *(*a1 + 176);
  result = v3();
  if (!result)
  {
    return result;
  }

  v5 = CalculateExpression.format.getter();

  if (v5 != 2)
  {
    return 0;
  }

  v7 = (v3)(v6);
  if (v7)
  {
    v8 = v7;
    v9 = CalculateExpression.postfixStack.getter();

    if (v9 >> 62)
    {
      v10 = sub_1C1F52994();
      if (v10)
      {
LABEL_6:
        v11 = __OFSUB__(v10, 1);
        v12 = v10 - 1;
        if (v11)
        {
          __break(1u);
        }

        else if ((v9 & 0xC000000000000001) == 0)
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_31;
          }

          if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_33;
          }

          v13 = *(v9 + 8 * v12 + 32);

LABEL_11:

          v14 = CalculateExpression.rich.getter();
          v15 = (*(*v14 + 392))(v14);

          if (!(v15 >> 62))
          {
            v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:

            v17 = (*(*a1 + 408))(v25);
            sub_1C1E98C40(v16);
            v17(v25, 0);

            goto LABEL_17;
          }

LABEL_31:
          v16 = sub_1C1F52994();
          goto LABEL_13;
        }

        MEMORY[0x1C6911DB0](v12, v9);
        goto LABEL_11;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_17:
  v18 = (*(*a1 + 392))(v7);
  if (v18 >> 62)
  {
    v8 = sub_1C1F52994();

    if (v8)
    {
      goto LABEL_21;
    }

LABEL_19:
    type metadata accessor for CalculateExpression.RichToken();
    v19 = (*(*a1 + 384))(v25);
    (v3)(v19);
    sub_1C1E8FBEC(48, 0xE100000000000000, v25);
    v1 = (*(*a1 + 408))(v25);
    v21 = v20;
    MEMORY[0x1C6911980]();
    if (*((*v21 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_20:
      sub_1C1F52724();
      v1(v25, 0);
      goto LABEL_21;
    }

LABEL_33:
    sub_1C1F526E4();
    goto LABEL_20;
  }

  v8 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_21:
  v22 = v8 == 0;
  v23 = v8 != 0;
  v24 = v22;
  (*(*a1 + 232))(v24);
  (*(*a1 + 256))(v23);
  return 1;
}

uint64_t CalculateExpression.DropOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1C1ECF768(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  v3 = v2;
  v5 = *(*a1 + 176);
  v6 = (*a1 + 176);
  if (!v5())
  {
    goto LABEL_10;
  }

  v7 = CalculateExpression.format.getter();

  if (v7 != 2 || ((*(*a1 + 248))(v8) & 1) == 0 || *(v2 + 16) == 101 && *(v2 + 24) == 0xE100000000000000)
  {
    goto LABEL_10;
  }

  if (sub_1C1F52C64())
  {
    goto LABEL_10;
  }

  type metadata accessor for CalculateExpression.RichToken();
  v9 = (*(*a1 + 384))(&v101);
  (v5)(v9);
  sub_1C1E8FBEC(48, 0xE100000000000000, &v101);
  v10 = (*(*a1 + 408))(&v101);
  v12 = v11;
  MEMORY[0x1C6911980]();
  if (*((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_136;
  }

  while (1)
  {
    sub_1C1F52724();
    v10(&v101, 0);
    (*(*a1 + 232))(1);
    (*(*a1 + 256))(0);
LABEL_10:
    CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1ED0E04, &v101);
    v13 = v101;
    if (!v101)
    {
      return 0;
    }

    v14 = v102;
    v15 = *(*v101 + 416);

    v96 = v14;
    v94 = v13;
    v93 = v15;
    v16 = v15(v14);
    type metadata accessor for CalculateExpression.RichToken();
    v18 = *(v3 + 16);
    v17 = *(v3 + 24);
    v19 = *(*a1 + 384);

    v21 = v19(&v101, v20);
    (v5)(v21);
    v95 = v17;
    v97 = sub_1C1E8FBEC(v18, v17, &v101);
    v22 = (v19)(&v101);
    (v5)(v22);
    v23 = sub_1C1E8FBEC(48, 0xE100000000000000, &v101);
    if (!v16)
    {
      if (v18 == 12336 && v17 == 0xE200000000000000 || (sub_1C1F52C64() & 1) != 0)
      {

        v30 = v23;
      }

      else
      {
        v30 = v97;
      }

      v31 = *(*v13 + 408);

      v33 = v31(&v101);
      LOBYTE(v13) = v32;
      if (!(*v32 >> 62))
      {
        goto LABEL_42;
      }

      if (*v32 < 0)
      {
        v91 = *v32;
      }

      if ((sub_1C1F52994() & 0x8000000000000000) == 0)
      {
LABEL_42:
        sub_1C1E98664(0, 0, v30);

        v33(&v101, 0);
        (*(*a1 + 232))(0);

        sub_1C1E98278(v94);
LABEL_83:

        return 1;
      }

      __break(1u);
      goto LABEL_129;
    }

    v24 = v18;
    v25 = (*(*v16 + 408))();
    if (v25)
    {
      v25 = (*(*v16 + 264))(0);
    }

    v26 = v17;
    if (((*(*v16 + 376))(v25) & 1) != 0 && (v24 != 46 || v17 != 0xE100000000000000) && (sub_1C1F52C64() & 1) == 0)
    {
      break;
    }

    if (((*(*a1 + 224))() & 1) != 0 && (v24 != 101 || v17 != 0xE100000000000000) && (sub_1C1F52C64() & 1) == 0)
    {
      if (v24 == 12336 && v17 == 0xE200000000000000 || (sub_1C1F52C64() & 1) != 0)
      {

        v97 = v23;
      }

      if (v24 == 46 && v17 == 0xE100000000000000 || (v35 = sub_1C1F52C64(), (v35 & 1) != 0))
      {
        v35 = (*(*v97 + 240))(11824, 0xE200000000000000);
      }

      if (!(v5)(v35) || (v36 = CalculateExpression.format.getter(), , v36 != 2))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1C1F563C0;
        *(v46 + 32) = v97;
        v47 = *(*v13 + 400);

        v47(v46);
LABEL_69:
        (*(*a1 + 232))(0);

        sub_1C1E98278(v94);
        goto LABEL_83;
      }

      v37 = *(*v13 + 408);

      v38 = v37(&v101);
      v40 = v39;
      v41 = *v39;
      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v40 = v41;
      if (!result || (v41 & 0x8000000000000000) != 0 || (v41 & 0x4000000000000000) != 0)
      {
        result = sub_1C1E98444(v41);
        v41 = result;
        *v40 = result;
      }

      if ((v96 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v96 < *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 8 * v96 + 0x20);
        *((v41 & 0xFFFFFFFFFFFFFF8) + 8 * v96 + 0x20) = v97;

        v38(&v101, 0);
        v43 = v93(v96 - 1);
        if (v43)
        {
          v44 = *(v43 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

          if (v44 != 53)
          {
            LOBYTE(v101) = v44;
            LOBYTE(v98) = 4;
            sub_1C1E9019C();
            if (sub_1C1F52414())
            {
              v45 = v37(&v101);
              sub_1C1E98338(v96 - 1);

              v45(&v101, 0);
            }
          }
        }

        goto LABEL_69;
      }

      __break(1u);
LABEL_139:
      __break(1u);
      return result;
    }

    v27 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
    LOBYTE(v101) = *(v16 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    if ((CalculateExpression.TokenType.isOperator.getter() & 1) == 0)
    {
      LOBYTE(v98) = *(v16 + v27);
      v100 = 15;
      v28 = v24;
      if (static CalculateExpression.TokenType.== infix(_:_:)(&v98, &v100))
      {
        goto LABEL_33;
      }

      LOBYTE(v101) = *(v16 + v27);
      v28 = v24;
      if (CalculateExpression.TokenType.isConstant.getter())
      {
        goto LABEL_33;
      }

      LOBYTE(v101) = *(v16 + v27);
      LOBYTE(v98) = 18;
      if (static CalculateExpression.TokenType.== infix(_:_:)(&v101, &v98))
      {
        goto LABEL_33;
      }

      LOBYTE(v101) = *(v16 + v27);
      LOBYTE(v98) = 16;
      if (static CalculateExpression.TokenType.== infix(_:_:)(&v101, &v98))
      {
        goto LABEL_33;
      }

      LOBYTE(v101) = *(v16 + v27);
      LOBYTE(v98) = 1;
      if (static CalculateExpression.TokenType.== infix(_:_:)(&v101, &v98))
      {
        if (v5())
        {
          (*(*v16 + 744))();
        }

        if (v24 == 101 && v17 == 0xE100000000000000 || (sub_1C1F52C64() & 1) != 0)
        {
          v101 = (*(*v16 + 232))();
          v102 = v52;
          v98 = 101;
          v99 = 0xE100000000000000;
          sub_1C1E94E48();
          v53 = sub_1C1F52934();

          if (v53)
          {
            goto LABEL_46;
          }
        }

        if (v24 == 46 && v17 == 0xE100000000000000 || (sub_1C1F52C64() & 1) != 0)
        {
          v54 = *(*v16 + 232);
          v101 = v54();
          v102 = v55;
          v98 = 46;
          v99 = 0xE100000000000000;
          sub_1C1E94E48();
          v56 = sub_1C1F52934();

          if (v56 & 1) != 0 || (v101 = (v54)(v57), v102 = v58, v98 = 101, v99 = 0xE100000000000000, v59 = sub_1C1F52934(), , (v59))
          {
LABEL_46:

            v34 = v94;
LABEL_47:
            sub_1C1E98278(v34);
            return 0;
          }
        }

        v60 = *(*v16 + 232);
        v60();
        v61 = sub_1C1F525A4();

        if (v61 & 1) != 0 || ((v60)(v62), v63 = sub_1C1F525A4(), v64 = , (v63) || ((v60)(v64), v65 = sub_1C1F525A4(), v66 = , (v65))
        {
          v67 = (*(*v16 + 248))(&v101);
          sub_1C1ED0F68();

          v66 = v67(&v101, 0);
        }

        v68 = (v60)(v66);
        sub_1C1EAAEDC(45, 0xE100000000000000, v68, v69);
        v71 = v70;

        v73 = v94;
        if (v71)
        {
          v74 = (v60)(v72);
          sub_1C1EAAEDC(43, 0xE100000000000000, v74, v75);
          v77 = v76;

          if (v77)
          {
            v79 = (v60)(v78);
            sub_1C1EAAEDC(101, 0xE100000000000000, v79, v80);
            v82 = v81;

            if ((v82 & 1) == 0)
            {
              (v60)(v83);
              v60();

              v84 = sub_1C1F52574();

              if (v84 >= 4)
              {
                goto LABEL_114;
              }
            }

LABEL_124:
            v101 = (v60)(v83);
            v102 = v90;

            MEMORY[0x1C69117F0](v24, v95);

            (*(*v16 + 240))(v101, v102);
            (*(*a1 + 232))(0);
            (*(*a1 + 256))(0);

            v51 = v73;
            goto LABEL_82;
          }

          (v60)(v78);
          v60();
        }

        else
        {
          (v60)(v72);
          v60();

          v73 = v94;
        }

        v89 = sub_1C1F52574();

        if (v89 >= 4)
        {
LABEL_114:

          v34 = v73;
          goto LABEL_47;
        }

        goto LABEL_124;
      }

LABEL_120:

      v51 = v94;
LABEL_82:
      sub_1C1E98278(v51);
      goto LABEL_83;
    }

    v28 = v24;
LABEL_33:
    if (v28 == 101 && v17 == 0xE100000000000000 || (sub_1C1F52C64() & 1) != 0)
    {
      goto LABEL_46;
    }

    if (v28 == 12336 && v17 == 0xE200000000000000 || (sub_1C1F52C64() & 1) != 0)
    {
      v3 = v96;

      v97 = v23;
    }

    else
    {
      v3 = v96;
    }

    v10 = v94;
    if (v28 == 46 && v95 == 0xE100000000000000 || (sub_1C1F52C64() & 1) != 0)
    {
      (*(*v97 + 240))(11824, 0xE200000000000000);
    }

    v48 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
    }

    else
    {
      v6 = *(*v94 + 408);
      v5 = (*v94 + 408);

      v26 = v6(&v101);
      if (!(*v49 >> 62))
      {
        if (*((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10) < v48)
        {
          goto LABEL_134;
        }

        goto LABEL_78;
      }
    }

    if (sub_1C1F52994() < v48)
    {
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

LABEL_78:
    if ((v48 & 0x8000000000000000) == 0)
    {
      sub_1C1E98664(v3 + 1, v3 + 1, v97);

      v26(&v101, 0);
      LOBYTE(v101) = *(v16 + v27);
      LOBYTE(v98) = 18;
      if (static CalculateExpression.TokenType.== infix(_:_:)(&v101, &v98))
      {
        v50 = v6(&v101);
        sub_1C1E98338(v3);

        v50(&v101, 0);
      }

      (*(*a1 + 232))(0);

      v51 = v94;
      goto LABEL_82;
    }

LABEL_135:
    __break(1u);
LABEL_136:
    sub_1C1F526E4();
  }

  if (v24 == 101 && v17 == 0xE100000000000000 || (sub_1C1F52C64() & 1) != 0)
  {
    goto LABEL_46;
  }

  (*(*a1 + 232))(0);
  if ((v24 != 48 || v17 != 0xE100000000000000) && (sub_1C1F52C64() & 1) == 0 && (v24 != 12336 || v17 != 0xE200000000000000) && (sub_1C1F52C64() & 1) == 0)
  {
    v85 = *(*v16 + 240);

    v86 = v85(v24, v17);
    if (!(v5)(v86))
    {
      goto LABEL_131;
    }

    v87 = CalculateExpression.format.getter();

    if (v87 != 2)
    {
      goto LABEL_131;
    }

    v33 = (v96 - 1);
    if (__OFSUB__(v96, 1))
    {
      goto LABEL_139;
    }

    v88 = v93(v96 - 1);
    if (!v88)
    {
      goto LABEL_120;
    }

    LODWORD(v13) = *(v88 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v13 == 53)
    {
      goto LABEL_120;
    }

LABEL_129:
    LOBYTE(v101) = v13;
    LOBYTE(v98) = 4;
    sub_1C1E9019C();
    if (sub_1C1F52414())
    {
      v92 = (*(*v94 + 408))(&v101);
      sub_1C1E98338(v33);

      v92(&v101, 0);

      v51 = v94;
      goto LABEL_82;
    }

LABEL_131:

    sub_1C1E98278(v94);

    goto LABEL_83;
  }

  sub_1C1E98278(v13);
  return 1;
}

uint64_t sub_1C1ED0E04(void *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  if (((*(**a1 + 568))() & 1) == 0 && ((*(*v2 + 576))() & 1) == 0 && ((*(*v2 + 552))() & 1) == 0)
  {
    if ((*(*v2 + 464))())
    {
      v5 = CalculateExpression.RichExpression.EditingToken.token.getter();
      if (!v5)
      {
        return v5 & 1;
      }

      v7 = *(v5 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

      if (v7 != 53)
      {
        sub_1C1E9019C();
        LOBYTE(v5) = sub_1C1F52414();
        return v5 & 1;
      }
    }

    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  LOBYTE(v5) = 1;
  return v5 & 1;
}

uint64_t sub_1C1ED0F68()
{
  v1 = v0[1];
  if ((v1 & 0x2000000000000000) == 0)
  {
    if ((*v0 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v1 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return result;
  }

LABEL_5:
  sub_1C1F524D4();

  return sub_1C1F52524();
}

uint64_t CalculateExpression.LiteralOperation.deinit()
{
  v0 = CalculateExpression.Operation.deinit();
  v1 = *(v0 + 24);

  return v0;
}

uint64_t CalculateExpression.LiteralOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_1C1ED1090(char *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = v4 == 121 && v3 == 0xE100000000000000;
  if (v5 || (v6 = *(v1 + 16), v7 = *(v1 + 24), (sub_1C1F52C64() & 1) != 0))
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
    if (v4 || v3 != 0xE000000000000000)
    {
      if (sub_1C1F52C64())
      {
        v8 = 3;
      }

      else
      {
        v8 = 1;
      }
    }
  }

  *a1 = v8;
}

uint64_t sub_1C1ED1128()
{
  type metadata accessor for CalculateExpression.RichToken();
  v33 = 10;
  v1 = sub_1C1E7DD60();
  v2 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(10127586, 0xA300000000000000, &v33, v1 & 1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v3 == 50 && v4 == 0xE100000000000000;
  if (!v5 && (sub_1C1F52C64() & 1) == 0)
  {
    if (v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4 == 0xE000000000000000;
    }

    v7 = v6;
    if (v6 || (v21 = sub_1C1F52C64(), v3 == 121 ? (v22 = v4 == 0xE100000000000000) : (v22 = 0), !v22 ? (v23 = 0) : (v23 = 1), (v21 & 1) != 0 || (v23 & 1) != 0 || (sub_1C1F52C64() & 1) != 0))
    {
      v30 = 18;
      v8 = sub_1C1E7DD60();
      v9 = &v30;
      v10 = v8 & 1;
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v32 = 1;

      v24 = sub_1C1E7DD60();
      v9 = &v32;
      v10 = v24 & 1;
      v11 = v3;
      v12 = v4;
    }

    v13 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v11, v12, v9, v10);
    type metadata accessor for CalculateExpression.RichExpression();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C1F563C0;
    *(v14 + 32) = v13;

    v15 = CalculateExpression.RichExpression.__allocating_init(tokens:parent:)(v14);
    v16 = (*(*v2 + 288))(v15);
    v17 = *(*v2 + 280);
    v18 = v17(v16);
    if (v18)
    {
      v19 = v18;
      if (v7)
      {
        v20 = 1;
      }

      else
      {
        v25 = sub_1C1F52C64();
        v27 = v3 == 121 && v4 == 0xE100000000000000;
        v20 = 1;
        if ((v25 & 1) == 0 && !v27)
        {
          v20 = sub_1C1F52C64();
        }
      }

      (*(*v19 + 304))(v20 & 1);
    }

    v28 = v17(v18);
    if (v28)
    {
      v31 = 1;
      (*(*v28 + 280))(&v31);
    }
  }

  return v2;
}

uint64_t CalculateExpression.RootOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.FunctionOperation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 33, 7);
}

uint64_t CalculateExpression.AllClearOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

unint64_t sub_1C1ED14F8(uint64_t a1)
{
  v2 = *(*a1 + 176);
  result = (v2)();
  if (result)
  {
    v4 = CalculateExpression.format.getter();

    if (v4 != 2)
    {
      return 0;
    }

    v6 = (v2)(v5);
    if (v6)
    {
      v7 = CalculateExpression.postfixStack.getter();

      if (v7 >> 62)
      {
        v6 = sub_1C1F52994();
      }

      else
      {
        v6 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    if (v6 >= *sub_1C1ED52A0())
    {
      return 0;
    }

    if (!(v2)())
    {
      return 1;
    }

    v8 = CalculateExpression.postfixStack.getter();

    if (v8 >> 62)
    {
      v9 = sub_1C1F52994();
      if (v9)
      {
LABEL_11:
        v10 = __OFSUB__(v9, 1);
        result = v9 - 1;
        if (v10)
        {
          __break(1u);
        }

        else if ((v8 & 0xC000000000000001) == 0)
        {
          if ((result & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_32;
          }

          if (result >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_38;
          }

          v11 = *(v8 + 8 * result + 32);

LABEL_16:

          v12 = CalculateExpression.rich.getter();
          v2 = (*(*v12 + 392))(v12);

          if (!(v2 >> 62))
          {
            v13 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v13)
            {
              goto LABEL_18;
            }

            goto LABEL_33;
          }

LABEL_32:
          v13 = sub_1C1F52994();
          if (v13)
          {
LABEL_18:
            v20[0] = MEMORY[0x1E69E7CC0];
            result = sub_1C1F52B14();
            if ((v13 & 0x8000000000000000) == 0)
            {
              type metadata accessor for CalculateExpression.RichToken();
              v14 = 0;
              do
              {
                if ((v2 & 0xC000000000000001) != 0)
                {
                  v15 = MEMORY[0x1C6911DB0](v14, v2);
                }

                else
                {
                  v17 = *(v2 + 8 * v14 + 32);
                }

                ++v14;
                sub_1C1E9C29C(v15);
                sub_1C1F52AF4();
                v16 = *(v20[0] + 16);
                sub_1C1F52B24();
                sub_1C1F52B34();
                sub_1C1F52B04();
              }

              while (v13 != v14);

              v18 = v20[0];
              goto LABEL_34;
            }

LABEL_38:
            __break(1u);
            return result;
          }

LABEL_33:

          v18 = MEMORY[0x1E69E7CC0];
LABEL_34:
          v19 = (*(*a1 + 408))(v20);
          sub_1C1E8CECC(v18);
          v19(v20, 0);
          (*(*a1 + 256))(0);
          (*(*a1 + 232))(1);

          return 1;
        }

        MEMORY[0x1C6911DB0](result, v8);
        goto LABEL_16;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        goto LABEL_11;
      }
    }

    return 1;
  }

  return result;
}

uint64_t CalculateExpression.EnterOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1C1ED18E8()
{
  v1 = sub_1C1ED1A68(&unk_1F418DE70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21330, &qword_1C1F573B0);
  swift_arrayDestroy();
  result = type metadata accessor for CalculateExpression.RichToken();
  if (*(v1 + 16))
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);

    result = sub_1C1EAC150(v3, v4);
    if (v5)
    {
      v6 = *(*(v1 + 56) + result);

      v8 = v6;
      v7 = sub_1C1E7DD60();
      return CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v3, v4, &v8, v7 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t CalculateExpression.ConstantOperation.deinit()
{
  v0 = CalculateExpression.OperandOperation.deinit();
  v1 = *(v0 + 24);

  return v0;
}

uint64_t CalculateExpression.ConstantOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.OperandOperation.deinit();
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1C1ED1A68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21338, &qword_1C1F573E8);
    v3 = sub_1C1F52BE4();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C1EAC150(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1C1ED1B7C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1C1F52B64();

    if (v4)
    {
      type metadata accessor for _NumberFormatterObserver();
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1C1ED2A90(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_1C1ED1D68(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Calculate23NumberFormatterObserver_id;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21348, &qword_1C1F573F0);

  v4 = sub_1C1EB9370();
  v5 = OBJC_IVAR____TtC9Calculate24_NumberFormatterObserver_observers;
  swift_beginAccess();
  v6 = *(v1 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v5);
  *(v1 + v5) = 0x8000000000000000;
  sub_1C1ED3A14(v4, a1 + v3, isUniquelyReferenced_nonNull_native);
  *(v1 + v5) = v9;
  return swift_endAccess();
}

uint64_t sub_1C1ED1E2C(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9Calculate23NumberFormatterObserver_id;
  v5 = OBJC_IVAR____TtC9Calculate24_NumberFormatterObserver_observers;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = sub_1C1EB4BE4(a1 + v4);
  if (v8)
  {
    v9 = v7;
    v10 = *(v2 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v2 + v5);
    *(v2 + v5) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C1ED3D58();
    }

    v13 = *(v12 + 48);
    v14 = sub_1C1F52034();
    (*(*(v14 - 8) + 8))(v13 + *(*(v14 - 8) + 72) * v9, v14);
    v15 = *(*(v12 + 56) + 8 * v9);

    sub_1C1ED3568(v9, v12);
    *(v2 + v5) = v12;
  }

  return swift_endAccess();
}

BOOL sub_1C1ED1F30()
{
  v1 = OBJC_IVAR____TtC9Calculate24_NumberFormatterObserver_observers;
  swift_beginAccess();
  return *(*(v0 + v1) + 16) == 0;
}