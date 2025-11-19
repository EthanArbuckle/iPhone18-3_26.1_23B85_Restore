uint64_t objectdestroy_3Tm(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 24);

  return MEMORY[0x1EEE6BDD0](v1, 32, 7);
}

uint64_t sub_1DB384B90(uint64_t a1, void *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v4 = qword_1ECC42080;

  v5 = a2;

  if (v4 != -1)
  {
    swift_once();
  }

  [v5 addObserver:v2 selector:sel_accountStoreDidChange_ name:qword_1ECC44160 object:0];

  v6 = qword_1ECC42088;

  if (v6 != -1)
  {
    swift_once();
  }

  [v5 addObserver:v2 selector:sel_accountCookiesDidChange_ name:qword_1ECC44168 object:0];

  return v2;
}

uint64_t sub_1DB384CD0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3[40] = a1;
  v3[41] = v4;
  v5 = v2[1];
  v3[42] = *v2;
  v3[43] = v5;
  return MEMORY[0x1EEE6DFA0](sub_1DB384CFC, 0, 0);
}

uint64_t sub_1DB384CFC()
{
  v1 = v0[42];
  v2 = v0[40];
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = (*(v4 + 24))(v3, v4);
  LOBYTE(v1) = sub_1DB3C7148(v5, v1);

  if (v1)
  {
    v6 = v0[43];
    v7 = sub_1DB50A620();
    v8 = [v6 dictionaryForKey_];

    v0[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46780, &qword_1DB5142C0);
    v9 = swift_allocObject();
    v0[45] = v9;
    v9[2] = v8;
    v9[3] = sub_1DB3C8F68;
    v9[4] = 0;
    v10 = swift_task_alloc();
    v0[46] = v10;
    *v10 = v0;
    v10[1] = sub_1DB384EC4;

    return (sub_1DB3C7238)(v9);
  }

  else
  {
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1DB384EC4(uint64_t a1)
{
  v2 = *(*v1 + 368);
  v3 = *(*v1 + 360);
  v5 = *v1;
  *(*v1 + 376) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DB384FE4, 0, 0);
}

uint64_t sub_1DB384FE4()
{
  result = sub_1DB4F0D44(0xD000000000000019, 0x80000001DB5297E0, *(v0 + 328));
  if (v2)
  {
    v3 = result;
    v4 = v2;
    v6 = *(v0 + 344);
    v5 = *(v0 + 352);
    sub_1DB50B320();

    MEMORY[0x1E1285C70](v3, v4);

    MEMORY[0x1E1285C70](0x7363697274656D2FLL, 0xEC00000065736142);
    v7 = sub_1DB50A620();

    v8 = [v6 dictionaryForKey_];

    v9 = swift_allocObject();
    *(v0 + 384) = v9;
    v9[2] = v8;
    v9[3] = sub_1DB3C8F68;
    v9[4] = 0;
    v10 = swift_task_alloc();
    *(v0 + 392) = v10;
    *v10 = v0;
    v10[1] = sub_1DB385424;

    return sub_1DB38582C(v9);
  }

  else
  {
    v11 = 0;
    v12 = *(v0 + 376);
    v15 = *(v12 + 64);
    v14 = v12 + 64;
    v13 = v15;
    v38 = *(v0 + 376);
    v16 = -1;
    v17 = -1 << *(v38 + 32);
    if (-v17 < 64)
    {
      v16 = ~(-1 << -v17);
    }

    v18 = v16 & v13;
    v19 = (63 - v17) >> 6;
    v20 = MEMORY[0x1E69E69B8];
    v37 = v14;
    if ((v16 & v13) == 0)
    {
      goto LABEL_11;
    }

    do
    {
      while (1)
      {
        v21 = v11;
LABEL_18:
        v24 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v25 = v24 | (v21 << 6);
        sub_1DB314C3C(*(v38 + 48) + 40 * v25, v0 + 160);
        sub_1DB300B14(*(v38 + 56) + 32 * v25, v0 + 240);
        v26 = *(v0 + 176);
        *(v0 + 88) = *(v0 + 160);
        *(v0 + 104) = v26;
        *(v0 + 120) = *(v0 + 192);
        sub_1DB30C200((v0 + 240), (v0 + 128));
        v23 = v21;
LABEL_19:
        *(v0 + 80) = *(v0 + 152);
        v27 = *(v0 + 136);
        *(v0 + 48) = *(v0 + 120);
        *(v0 + 64) = v27;
        v28 = *(v0 + 104);
        *(v0 + 16) = *(v0 + 88);
        *(v0 + 32) = v28;
        if (!*(v0 + 40))
        {

          v36 = *(v0 + 8);

          return v36();
        }

        sub_1DB30C200((v0 + 56), (v0 + 272));
        v29 = *(v0 + 32);
        *(v0 + 200) = *(v0 + 16);
        *(v0 + 216) = v29;
        *(v0 + 232) = *(v0 + 48);
        if (swift_dynamicCast())
        {
          break;
        }

        result = __swift_destroy_boxed_opaque_existential_0((v0 + 272));
        v11 = v23;
        if (!v18)
        {
          goto LABEL_11;
        }
      }

      v30 = v20;
      v32 = *(v0 + 312);
      v31 = *(v0 + 320);
      v33 = *(v0 + 304);
      v34 = *(v31 + 24);
      v35 = *(v31 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v31, v34);
      (*(v35 + 16))(v0 + 272, v33, v32, v34, v35);
      __swift_destroy_boxed_opaque_existential_0((v0 + 272));

      v11 = v23;
      v20 = v30;
      v14 = v37;
    }

    while (v18);
LABEL_11:
    if (v19 <= v11 + 1)
    {
      v22 = v11 + 1;
    }

    else
    {
      v22 = v19;
    }

    v23 = v22 - 1;
    while (1)
    {
      v21 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v21 >= v19)
      {
        v18 = 0;
        *(v0 + 152) = 0;
        *(v0 + 136) = 0u;
        *(v0 + 120) = 0u;
        *(v0 + 104) = 0u;
        *(v0 + 88) = 0u;
        goto LABEL_19;
      }

      v18 = *(v14 + 8 * v21);
      ++v11;
      if (v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DB385424(uint64_t a1)
{
  v2 = *(*v1 + 392);
  v3 = *(*v1 + 384);
  v5 = *v1;
  *(*v1 + 400) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DB385544, 0, 0);
}

void sub_1DB385544()
{
  v31 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  if (v1)
  {
    v3 = *(v0 + 376);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v2;
    sub_1DB385E7C(v1, sub_1DB385E38, 0, isUniquelyReferenced_nonNull_native, &v30);

    v2 = v30;
  }

  v5 = 0;
  v6 = v2 + 64;
  v7 = -1;
  v8 = -1 << *(v2 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v2 + 64);
  v10 = (63 - v8) >> 6;
  v11 = MEMORY[0x1E69E69B8];
  v28 = v2 + 64;
  v29 = v2;
  if (!v9)
  {
    goto LABEL_9;
  }

  do
  {
    while (1)
    {
      v12 = v5;
LABEL_16:
      v15 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v16 = v15 | (v12 << 6);
      sub_1DB314C3C(*(v2 + 48) + 40 * v16, v0 + 160);
      sub_1DB300B14(*(v2 + 56) + 32 * v16, v0 + 240);
      v17 = *(v0 + 176);
      *(v0 + 88) = *(v0 + 160);
      *(v0 + 104) = v17;
      *(v0 + 120) = *(v0 + 192);
      sub_1DB30C200((v0 + 240), (v0 + 128));
      v14 = v12;
LABEL_17:
      *(v0 + 80) = *(v0 + 152);
      v18 = *(v0 + 136);
      *(v0 + 48) = *(v0 + 120);
      *(v0 + 64) = v18;
      v19 = *(v0 + 104);
      *(v0 + 16) = *(v0 + 88);
      *(v0 + 32) = v19;
      if (!*(v0 + 40))
      {

        v27 = *(v0 + 8);

        v27();
        return;
      }

      sub_1DB30C200((v0 + 56), (v0 + 272));
      v20 = *(v0 + 32);
      *(v0 + 200) = *(v0 + 16);
      *(v0 + 216) = v20;
      *(v0 + 232) = *(v0 + 48);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 272));
      v5 = v14;
      if (!v9)
      {
        goto LABEL_9;
      }
    }

    v21 = v11;
    v23 = *(v0 + 312);
    v22 = *(v0 + 320);
    v24 = *(v0 + 304);
    v25 = *(v22 + 24);
    v26 = *(v22 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v22, v25);
    (*(v26 + 16))(v0 + 272, v24, v23, v25, v26);
    __swift_destroy_boxed_opaque_existential_0((v0 + 272));

    v5 = v14;
    v11 = v21;
    v6 = v28;
    v2 = v29;
  }

  while (v9);
LABEL_9:
  if (v10 <= v5 + 1)
  {
    v13 = v5 + 1;
  }

  else
  {
    v13 = v10;
  }

  v14 = v13 - 1;
  while (1)
  {
    v12 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      v9 = 0;
      *(v0 + 152) = 0;
      *(v0 + 136) = 0u;
      *(v0 + 120) = 0u;
      *(v0 + 104) = 0u;
      *(v0 + 88) = 0u;
      goto LABEL_17;
    }

    v9 = *(v6 + 8 * v12);
    ++v5;
    if (v9)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1DB38584C()
{
  *(v0 + 296) = (*(**(v0 + 288) + 88))();

  return MEMORY[0x1EEE6DFA0](sub_1DB3858D8, 0, 0);
}

uint64_t sub_1DB3858D8()
{
  v1 = v0 + 2;
  v2 = v0[37];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1DB3859A4;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1DB308440(v3);
  sub_1DB30623C(v3, &qword_1ECC42840, &qword_1DB5142D0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB3859A4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 304) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1DB385AF4, 0, 0);
  }

  else
  {
    v4 = *(v1 + 296);

    v5 = *(v1 + 160);
    v6 = *(v2 + 8);

    return v6(v5);
  }
}

uint64_t sub_1DB385AF4()
{
  v24 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);

  swift_getErrorValue();
  v3 = *(v0 + 224);
  v4 = *(v0 + 240);
  if (sub_1DB3C8450(*(v0 + 232)))
  {
    v5 = *(v0 + 304);
  }

  else
  {
    if (qword_1ECC422A8 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 304);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1DB50EE90;
    v22 = sub_1DB301BC0(0, 34, 0, MEMORY[0x1E69E7CC0]);
    v8._object = 0x80000001DB52BB40;
    v8._countAndFlagsBits = 0xD000000000000021;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    swift_getErrorValue();
    v9 = *(v0 + 248);
    v10 = *(v0 + 256);
    *(v0 + 184) = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 160));
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, v9, v10);
    sub_1DB301CDC(v0 + 160, v0 + 192);
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    sub_1DB301D4C(v0 + 192, v0 + 80);
    *(v0 + 112) = 0;
    v12 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1DB301BC0(0, *(v22 + 2) + 1, 1, v22);
    }

    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_1DB301BC0((v13 > 1), v14 + 1, 1, v12);
    }

    v15 = *(v0 + 304);
    *(v12 + 2) = v14 + 1;
    v16 = &v12[40 * v14];
    v17 = *(v0 + 80);
    v18 = *(v0 + 96);
    v16[64] = *(v0 + 112);
    *(v16 + 2) = v17;
    *(v16 + 3) = v18;
    sub_1DB30623C(v0 + 160, &qword_1ECC426B0, &qword_1DB50EEB0);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    *(v7 + 32) = v12;
    v23 = 0;
    OSLogger.log(contentsOf:withLevel:)(v7, &v23);

    v5 = v15;
  }

  v20 = *(v0 + 8);

  return v20(0);
}

uint64_t sub_1DB385D94(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB306AF4;

  return sub_1DB384CD0(a1, a2);
}

uint64_t sub_1DB385E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB314C3C(a1, a2);

  return sub_1DB300B14(a1 + 40, a2 + 40);
}

unint64_t sub_1DB385E7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v54 = a1;
  v55 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v56 = v8;
  v57 = 0;
  v58 = v11 & v9;
  v59 = a2;
  v60 = a3;

  sub_1DB3AF910(&v50);
  if (!*(&v51 + 1))
  {
    goto LABEL_25;
  }

  v47 = v50;
  v48 = v51;
  v49 = v52;
  sub_1DB30C200(v53, v46);
  v12 = *a5;
  result = sub_1DB30EDA8(&v47);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = v14;
  if (v12[3] < v18)
  {
    sub_1DB31A3F4(v18, a4 & 1);
    v20 = *a5;
    result = sub_1DB30EDA8(&v47);
    if ((v19 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1DB50BC20();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_1DB311B6C();
    result = v25;
    v22 = *a5;
    if (v19)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v19)
  {
LABEL_11:
    v23 = result;
    sub_1DB314BE8(&v47);
    v24 = (v22[7] + 32 * v23);
    __swift_destroy_boxed_opaque_existential_0(v24);
    sub_1DB30C200(v46, v24);
    goto LABEL_15;
  }

LABEL_13:
  v22[(result >> 6) + 8] |= 1 << result;
  v26 = v22[6] + 40 * result;
  v27 = v47;
  v28 = v48;
  *(v26 + 32) = v49;
  *v26 = v27;
  *(v26 + 16) = v28;
  result = sub_1DB30C200(v46, (v22[7] + 32 * result));
  v29 = v22[2];
  v17 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v17)
  {
    v22[2] = v30;
LABEL_15:
    sub_1DB3AF910(&v50);
    if (*(&v51 + 1))
    {
      v19 = 1;
      do
      {
        v47 = v50;
        v48 = v51;
        v49 = v52;
        sub_1DB30C200(v53, v46);
        v33 = *a5;
        result = sub_1DB30EDA8(&v47);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v17 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v17)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_1DB31A3F4(v37, 1);
          v38 = *a5;
          result = sub_1DB30EDA8(&v47);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;
          sub_1DB314BE8(&v47);
          v32 = (v40[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_0(v32);
          sub_1DB30C200(v46, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = v40[6] + 40 * result;
          v42 = v47;
          v43 = v48;
          *(v41 + 32) = v49;
          *v41 = v42;
          *(v41 + 16) = v43;
          result = sub_1DB30C200(v46, (v40[7] + 32 * result));
          v44 = v40[2];
          v17 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v17)
          {
            goto LABEL_27;
          }

          v40[2] = v45;
        }

        sub_1DB3AF910(&v50);
      }

      while (*(&v51 + 1));
    }

LABEL_25:
    sub_1DB2FEA60();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t SyncEvent.__allocating_init()()
{
  v0 = swift_allocObject();
  SyncEvent.init()();
  return v0;
}

id SyncEvent.post(_:)()
{
  v1 = v0[2];
  [v1 lock];
  sub_1DB3866CC(v0);

  return [v1 unlock];
}

uint64_t *SyncEvent.init()()
{
  v1 = *v0;
  v0[2] = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  v2 = *(v1 + 80);
  type metadata accessor for EventSubscription();
  v0[3] = sub_1DB50A9D0();
  return v0;
}

id SyncEvent.addObserver<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *v3;
  v7 = *(*(a2 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = *(v6 + 80);
  EventSubscription.init<A>(_:)(v10, a2, &v17);
  v13 = v17;
  v14 = v3[2];
  [v14 lock];
  sub_1DB38645C(v3);
  result = [v14 unlock];
  *a3 = v13;
  return result;
}

uint64_t sub_1DB38645C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 80);
  type metadata accessor for EventSubscription();
  sub_1DB50AA60();

  sub_1DB50AA10();
  return swift_endAccess();
}

id SyncEvent.removeObserver(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = v1[2];
  [v3 lock];
  sub_1DB386598(v1);

  return [v3 unlock];
}

uint64_t sub_1DB386598(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v6 = a1[3];
  v3 = *(v2 + 80);
  type metadata accessor for EventSubscription();
  sub_1DB50AA60();
  swift_getWitnessTable();
  swift_getWitnessTable();
  result = sub_1DB50AE80();
  if (v5 != 1)
  {
    swift_beginAccess();
    sub_1DB50AA20();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1DB3866CC(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v17 = a1[3];
  v3 = *(v2 + 80);
  type metadata accessor for EventSubscription();
  v4 = sub_1DB50AA60();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1E1285D90](&v15, v4, WitnessTable);
  v18 = v15;
  sub_1DB50B5C0();
  sub_1DB50B590();
  sub_1DB50B5B0();
  sub_1DB50B5A0();
  v6 = v16;
  if (v16)
  {
    v7 = v15;
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v15 = v6;
      if (EventSubscription.isValid.getter() & 1) != 0 && (v15 = v6, EventSubscription.notify(_:)(), v15 = v6, (EventSubscription.isValid.getter()))
      {
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1DB302EC8(0, *(v8 + 2) + 1, 1, v8);
        }

        v10 = *(v8 + 2);
        v9 = *(v8 + 3);
        if (v10 >= v9 >> 1)
        {
          v8 = sub_1DB302EC8((v9 > 1), v10 + 1, 1, v8);
        }

        *(v8 + 2) = v10 + 1;
        *&v8[8 * v10 + 32] = v7;
      }

      sub_1DB50B5A0();
      v7 = v15;
      v6 = v16;
    }

    while (v16);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v8 + 2);
  if (!v12)
  {
  }

  while (v12 <= *(v8 + 2))
  {
    v13 = v12 - 1;
    v14 = *&v8[8 * v12 + 24];
    swift_beginAccess();
    sub_1DB50AA20();
    swift_endAccess();

    v12 = v13;
    if (!v13)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t SyncEvent.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t SyncEvent.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

__n128 CompoundAction.init(actionMetrics:subactions:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u64[0] = a2;
  return result;
}

uint64_t sub_1DB386A80()
{
  if (*v0)
  {
    result = 0x6F69746361627573;
  }

  else
  {
    result = 0x654D6E6F69746361;
  }

  *v0;
  return result;
}

uint64_t sub_1DB386ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v6 || (sub_1DB50BA30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69746361627573 && a2 == 0xEA0000000000736ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB50BA30();

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

uint64_t sub_1DB386BB8(uint64_t a1)
{
  v2 = sub_1DB386EBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB386BF4(uint64_t a1)
{
  v2 = sub_1DB386EBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CompoundAction.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44190, &qword_1DB514340);
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v23 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB386EBC();
  sub_1DB50BDF0();
  if (!v2)
  {
    v25 = v5;
    v28 = 0;
    sub_1DB37C0CC();
    v10 = v26;
    sub_1DB50B710();
    v11 = v27[0];
    if (!v27[0])
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    v24 = v11;
    v12 = MEMORY[0x1E69E7CC8];
    if (v27[0])
    {
      v12 = v27[1];
    }

    v23 = v12;
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v14 = sub_1DB50BDE0();
    v15 = sub_1DB31F3BC(0xD000000000000023, 0x80000001DB5298A0, v14);
    v17 = v16;

    if (v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = &type metadata for EmptyActionKindTable;
    }

    if (v15)
    {
      v19 = v17;
    }

    else
    {
      v19 = &off_1F56F1850;
    }

    LOBYTE(v27[0]) = 1;
    v20 = sub_1DB386F10(v18, v8, v27, v18, &type metadata for CompoundAction.CodingKeys, v19);
    (*(v25 + 8))(v8, v10);
    v21 = v23;
    *a2 = v24;
    a2[1] = v21;
    a2[2] = v20;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1DB386EBC()
{
  result = qword_1ECC44198;
  if (!qword_1ECC44198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44198);
  }

  return result;
}

uint64_t sub_1DB386F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 + 8);
  type metadata accessor for _CodeByKind_Many();
  sub_1DB50B7C0();
  swift_getWitnessTable();
  result = sub_1DB50B780();
  if (!v6)
  {
    return v9;
  }

  return result;
}

uint64_t CompoundAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC441A0, &qword_1DB514348);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v21 - v6;
  v8 = *v1;
  v9 = v1[1];
  v22 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1DB386EBC();

  v21[1] = v11;
  sub_1DB50BE40();
  v24[0] = v8;
  v24[1] = v9;
  v25 = 0;
  sub_1DB37BCC8();
  v12 = v23;
  sub_1DB50B8A0();

  if (!v12)
  {
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v14 = sub_1DB50BE30();
    v15 = sub_1DB31F3BC(0xD000000000000023, 0x80000001DB5298A0, v14);
    v17 = v16;

    if (v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = &type metadata for EmptyActionKindTable;
    }

    if (v15)
    {
      v19 = v17;
    }

    else
    {
      v19 = &off_1F56F1850;
    }

    LOBYTE(v24[0]) = 1;
    sub_1DB3871F8(v22, v18, v7, v24, v18, &type metadata for CompoundAction.CodingKeys, v19);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1DB3871F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a7 + 8);
  _CodeByKind_Many.init(wrappedValue:)();
  sub_1DB50B8C0();
  type metadata accessor for _CodeByKind_Many();

  swift_getWitnessTable();
  sub_1DB50B8A0();
}

uint64_t CompoundAction.actionMetrics.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 CompoundAction.actionMetrics.setter(__n128 *a1)
{
  v4 = v1->n128_u64[0];
  v3 = v1->n128_i64[1];

  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t CompoundAction.subactions.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t CompoundAction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(0x654D6E6F69746361, 0xED00007363697274, &v28);

  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v27);

  v7 = sub_1DB320870(v27, v6);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, v27);
  v31 = v6;
  ScalarDictionary.init(tryDeserializing:using:)(v27, &v31, &v24);
  sub_1DB3151CC(&v28);
  v8 = v24;
  JSONObject.subscript.getter(0x6F69746361627573, 0xEA0000000000736ELL, v27);
  JSONObject.array.getter(&v24);
  v9 = sub_1DB3151CC(v27);
  if (*(&v25 + 1))
  {
    v22 = v8;
    v23 = v7;
    v21[0] = a3;
    v21[1] = v21;
    v28 = v24;
    v29 = v25;
    v30 = v26;
    MEMORY[0x1EEE9AC00](v9);
    v20[2] = v6;
    v11 = *(&v29 + 1);
    v10 = v30;
    __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
    v12 = *(v10 + 48);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC441A8, &qword_1DB514350);
    v14 = v12(sub_1DB387744, v20, v13, v11, v10);

    if (v3)
    {

      sub_1DB3151CC(a1);
      return sub_1DB314F08(&v28);
    }

    else
    {
      sub_1DB3151CC(a1);
      result = sub_1DB314F08(&v28);
      v18 = v21[0];
      v19 = v22;
      *v21[0] = v23;
      *(v18 + 8) = v19;
      *(v18 + 16) = v14;
    }
  }

  else
  {

    sub_1DB3876DC(&v24);
    sub_1DB315178();
    swift_allocError();
    *v16 = xmmword_1DB514330;
    v17 = MEMORY[0x1E69E7CC0];
    *(v16 + 16) = 0x40000001F56F5018uLL;
    *(v16 + 24) = v17;
    swift_willThrow();
    return sub_1DB3151CC(a1);
  }

  return result;
}

uint64_t sub_1DB3876DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E28, &qword_1DB50FB20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DB387784()
{
  result = qword_1ECC441B0;
  if (!qword_1ECC441B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC441B0);
  }

  return result;
}

unint64_t sub_1DB3877DC()
{
  result = qword_1ECC441B8;
  if (!qword_1ECC441B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC441B8);
  }

  return result;
}

unint64_t sub_1DB387834()
{
  result = qword_1ECC441C0;
  if (!qword_1ECC441C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC441C0);
  }

  return result;
}

uint64_t sub_1DB387888()
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;

  result = sub_1DB4ABE94(0xD000000000000014, 0x80000001DB52BBF0, v0, v20, v17);
  if (v1)
  {
    goto LABEL_13;
  }

  v3 = v20[0];
  if (v20[0])
  {
    v4 = sqlite3_step(v20[0]);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    if (!sub_1DB331244(v4, qword_1EE312D90) || (v5 = sub_1DB3AD5F0(&unk_1F56F0548), v6 = sub_1DB331244(v4, v5), , !v6))
    {
      sub_1DB388320();
      swift_allocError();
      *v12 = v4;
      *(v12 + 8) = 0;
      *(v12 + 16) = 0;
LABEL_12:
      swift_willThrow();
      result = sqlite3_finalize(v3);
LABEL_13:
      v13 = *MEMORY[0x1E69E9840];
      return result;
    }

    if (sqlite3_column_type(v3, 0) == 5)
    {
      if (qword_1EE30C928 != -1)
      {
        swift_once();
      }

      sub_1DB50BEB0();
      v7 = v18;
      v8 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1DB50EE90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1DB50EE90;
      v16[3] = MEMORY[0x1E69E6158];
      v16[0] = 0xD00000000000002ALL;
      v16[1] = 0x80000001DB52BC10;
      *(v10 + 48) = 0u;
      *(v10 + 32) = 0u;
      sub_1DB301D4C(v16, v10 + 32);
      *(v10 + 64) = 0;
      *(v9 + 32) = v10;
      Logger.error(_:)(v9, v7, v8);

      __swift_destroy_boxed_opaque_existential_0(v17);
      sub_1DB388320();
      swift_allocError();
      *v11 = 0xD00000000000002ALL;
      *(v11 + 8) = 0x80000001DB52BC10;
      *(v11 + 16) = 1;
      goto LABEL_12;
    }

    v14 = sqlite3_column_int(v3, 0);
    sqlite3_finalize(v3);
    v15 = *MEMORY[0x1E69E9840];
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DB387B90(unsigned int a1)
{
  v13[2] = *MEMORY[0x1E69E9840];
  sub_1DB50B320();

  v13[1] = 0x80000001DB52BBD0;
  v12 = a1;
  v4 = sub_1DB50B8F0();
  MEMORY[0x1E1285C70](v4);

  MEMORY[0x1E1285C70](59, 0xE100000000000000);
  v13[0] = 0;

  result = sub_1DB4ABE94(0xD000000000000016, 0x80000001DB52BBD0, v1, v13, &v12);
  if (v2)
  {

LABEL_10:
    v11 = *MEMORY[0x1E69E9840];
    return result;
  }

  v6 = v13[0];
  if (v13[0])
  {

    v7 = sqlite3_step(v6);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    if (!sub_1DB331244(v7, qword_1EE312D90) || (v8 = sub_1DB3AD5F0(&unk_1F56F0598), v9 = sub_1DB331244(v7, v8), , !v9))
    {
      sub_1DB388320();
      swift_allocError();
      *v10 = v7;
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      swift_willThrow();
    }

    result = sqlite3_finalize(v6);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB387D84(sqlite3_stmt *a1, sqlite3_stmt *a2)
{
  v24[5] = *MEMORY[0x1E69E9840];
  MEMORY[0x1E1285C10](59);
  MEMORY[0x1E1285C70](0xD00000000000003BLL, 0x80000001DB52BB90);
  v24[3] = MEMORY[0x1E69E6158];
  v24[4] = &off_1F5700098;
  v24[0] = a1;
  v24[1] = a2;
  sub_1DB388374(v24, v22);

  v6 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1DB302D80((v7 > 1), v8 + 1, 1, v6);
  }

  v6[2] = v8 + 1;
  v9 = &v6[5 * v8];
  v10 = v22[0];
  v11 = v22[1];
  v9[8] = v23;
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB3883E4(v24);
  v24[0] = 0;

  sub_1DB4ABE94(0, 0xE000000000000000, v2, v24, v22);

  if (v3)
  {
    goto LABEL_10;
  }

  v13 = v24[0];
  if (v24[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v13;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v6);

    v15 = *(inited + 16);
    v16 = sqlite3_step(v15);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    if (sub_1DB331244(v16, qword_1EE312D90))
    {
      swift_setDeallocating();
      sqlite3_finalize(v15);
      v17 = *(inited + 24);

      v18 = v16 == 100;
LABEL_11:
      v21 = *MEMORY[0x1E69E9840];
      return v18;
    }

    sub_1DB388320();
    swift_allocError();
    *v19 = v16;
    *(v19 + 8) = 0;
    *(v19 + 16) = 0;
    swift_willThrow();
    swift_setDeallocating();
    sqlite3_finalize(v15);
    v20 = *(inited + 24);
LABEL_10:

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB388044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[1] = *MEMORY[0x1E69E9840];
  sub_1DB50B320();

  v24[0] = 0xD000000000000012;
  v24[1] = 0x80000001DB52BB70;
  MEMORY[0x1E1285C70](a1, a2);
  MEMORY[0x1E1285C70](41, 0xE100000000000000);
  v25[0] = 0;

  result = sub_1DB4ABE94(0xD000000000000012, 0x80000001DB52BB70, v4, v25, v24);
  if (v5)
  {

LABEL_20:
    v23 = *MEMORY[0x1E69E9840];
    return v6 & 1;
  }

  v12 = v25[0];
  if (v25[0])
  {

    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v12;
    *(inited + 24) = 0;
    while (1)
    {
      do
      {
        v14 = sqlite3_step(v12);
        if (qword_1EE30C820 != -1)
        {
          swift_once();
        }

        v6 = qword_1EE312D90;
        if (!*(qword_1EE312D90 + 16) || (v15 = *(qword_1EE312D90 + 40), sub_1DB50BCF0(), sub_1DB50BD20(), v16 = sub_1DB50BD30(), v17 = -1 << *(v6 + 32), v18 = v16 & ~v17, ((*(v6 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0))
        {
LABEL_19:
          sub_1DB388320();
          swift_allocError();
          *v22 = v14;
          *(v22 + 8) = 0;
          *(v22 + 16) = 0;
          swift_willThrow();
          swift_setDeallocating();
          sqlite3_finalize(v12);
          goto LABEL_20;
        }

        v19 = ~v17;
        while (*(*(v6 + 48) + 4 * v18) != v14)
        {
          v18 = (v18 + 1) & v19;
          if (((*(v6 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        LOBYTE(v6) = v14 == 100;
        if (v14 != 100)
        {
LABEL_21:

          goto LABEL_20;
        }
      }

      while (!sqlite3_column_text(v12, 1));
      if (sub_1DB50A7A0() == a3 && v20 == a4)
      {
        break;
      }

      v21 = sub_1DB50BA30();

      if (v21)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

unint64_t sub_1DB388320()
{
  result = qword_1ECC441C8;
  if (!qword_1ECC441C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC441C8);
  }

  return result;
}

uint64_t sub_1DB388374(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42798, &qword_1DB50F210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB3883E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42798, &qword_1DB50F210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ClientEntitlementChecker.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_1DB388A48();
  v6 = *(a2 - 8);
  a3[4] = &type metadata for ClientEntitlementReader;
  a3[5] = &off_1F56F5160;
  v7 = *(v6 + 8);

  return v7(a1, a2);
}

Swift::Bool __swiftcall ClientEntitlementChecker.hasEntitlement(_:)(Swift::String a1)
{
  sub_1DB38856C(a1._countAndFlagsBits, a1._object, v1);
  if (v2)
  {
    LODWORD(v2) = swift_dynamicCast();
    if (v2)
    {
      LOBYTE(v2) = v4;
    }
  }

  return v2;
}

void sub_1DB38856C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v6 = *(a3 + 16);
  v7 = a1;
  v8 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC441E0, qword_1DB514650);
  sub_1DB47D0C4(sub_1DB388D40, v5, v4);
}

Swift::Bool __swiftcall ClientEntitlementChecker.hasEntitlements(_:)(Swift::OpaquePointer a1)
{
  if (*(a1._rawValue + 2))
  {
    sub_1DB388754(a1._rawValue, v1);
    v4 = v2;
    if (v2)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_1DB50A4A0();

        return 0;
      }
    }

    return 0;
  }

  return 1;
}

void sub_1DB388754(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v5 = *(a2 + 16);
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC441D0, &qword_1DB514648);
  sub_1DB47D0C4(sub_1DB388C0C, v4, v3);
}

void sub_1DB3887E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v6 = SecTaskCreateWithAuditToken(0, &token);
  if (v6)
  {
    v7 = v6;
    *token.val = 0;
    v8 = sub_1DB50A620();
    v9 = SecTaskCopyValueForEntitlement(v7, v8, &token);

    v10 = *token.val;
    if (*token.val)
    {
      type metadata accessor for CFError(0);
      sub_1DB388CE8();
      swift_allocError();
      *v11 = v10;
      swift_willThrow();
      swift_unknownObjectRelease();
    }

    else
    {

      *a5 = v9;
    }
  }

  else
  {
    *a5 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1DB388914(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, CFDictionaryRef *a5@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v6 = SecTaskCreateWithAuditToken(0, &token);
  if (v6)
  {
    v7 = v6;
    *token.val = 0;
    v8 = sub_1DB50A980();
    v9 = SecTaskCopyValuesForEntitlements(v7, v8, &token);

    v10 = *token.val;
    if (*token.val)
    {
      type metadata accessor for CFError(0);
      sub_1DB388CE8();
      swift_allocError();
      *v11 = v10;
      swift_willThrow();
    }

    else
    {

      *a5 = v9;
    }
  }

  else
  {
    *a5 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DB388A48()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1DB50B430();
  return sub_1DB50B420();
}

uint64_t sub_1DB388B14()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB388B50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DB388B98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB388C0C()
{
  v1 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = v1;
  v2 = *(v7 + 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC441D0, &qword_1DB514648);
  return v2(sub_1DB388CC8, &v5, v3, v6, v7);
}

void sub_1DB388CC8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, CFDictionaryRef *a5@<X8>)
{
  v6 = v5[2];
  v7 = v5[3];
  v8 = v5[4];
  v9 = v5[5];
  sub_1DB388914(a1, a2, a3, a4, a5);
}

unint64_t sub_1DB388CE8()
{
  result = qword_1ECC441D8;
  if (!qword_1ECC441D8)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC441D8);
  }

  return result;
}

uint64_t sub_1DB388D40()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = v1;
  v10 = v2;
  v3 = *(v8 + 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC441E0, qword_1DB514650);
  return v3(sub_1DB388DFC, &v6, v4, v7, v8);
}

void sub_1DB388DFC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5[2];
  v7 = v5[4];
  v8 = v5[5];
  v9 = v5[6];
  v10 = v5[3];
  sub_1DB3887E4(a1, a2, a3, a4, a5);
}

uint64_t sub_1DB388E2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

uint64_t sub_1DB388F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1DB38AED0(a3, v27 - v11);
  v13 = sub_1DB50ABA0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1DB38AF40(v12);
  }

  else
  {
    sub_1DB50AB90();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1DB50AAD0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1DB50A6F0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1DB38AF40(a3);

      return v25;
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

  sub_1DB38AF40(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1DB3891D4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 16) = v5;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = 0;
  return v4;
}

char *sub_1DB389248()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v52 - v5;
  v7 = sub_1DB50A230();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  v15 = v0[2];
  os_unfair_lock_lock(v15 + 4);
  v16 = v0[3];
  if (v1[5])
  {

    os_unfair_lock_unlock(v15 + 4);
  }

  else
  {
    v53 = v15;
    v56 = v16;
    v57 = v6;
    v17 = qword_1EE30EAE8;
    v55 = v1[4];

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = sub_1DB50A270();
    __swift_project_value_buffer(v18, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v19 = sub_1DB50A250();
    v20 = sub_1DB50B070();
    v21 = sub_1DB50B0E0();
    v54.tv_sec = v2;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v2;
      v25 = v23;
      v58.tv_sec = v23;
      *v22 = 136315138;
      v26 = *(v24 + 80);
      v27 = sub_1DB50BEE0();
      v29 = sub_1DB3D4EE8(v27, v28, &v58.tv_sec);
      v52 = v8;
      v30 = v7;
      v31 = v20;
      v32 = v29;

      *(v22 + 4) = v32;
      v33 = sub_1DB50A210();
      v34 = v31;
      v7 = v30;
      v8 = v52;
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v19, v34, v33, "MakeDependency", "object=%s,type=async", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1E1288220](v25, -1, -1);
      MEMORY[0x1E1288220](v22, -1, -1);
    }

    (*(v8 + 16))(v11, v14, v7);
    v35 = sub_1DB50A2C0();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    v38 = sub_1DB50A2B0();
    (*(v8 + 8))(v14, v7);
    static MonotonicTime.now.getter(&v58);
    v39 = v58;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    tv_sec = v58.tv_sec;
    v41 = *(v54.tv_sec + 80);
    type metadata accessor for Promise();
    v16 = Promise.__allocating_init()();
    v42 = v1[3];
    v43 = v1[4];
    v44 = *(v1 + 40);
    v1[3] = v16;
    v1[4] = 0;
    *(v1 + 40) = 1;

    sub_1DB2FEB54();
    os_unfair_lock_unlock(v53 + 4);

    sub_1DB330B68(&v58, v45);
    v46 = sub_1DB50ABA0();
    v54 = v58;
    v47 = v57;
    (*(*(v46 - 8) + 56))(v57, 1, 1, v46);
    v48 = swift_allocObject();
    swift_weakInit();
    v49 = swift_allocObject();
    *(v49 + 16) = 0;
    *(v49 + 24) = 0;
    v50 = v55;
    *(v49 + 32) = v56;
    *(v49 + 40) = v50;
    *(v49 + 48) = v54;
    *(v49 + 64) = v39;
    *(v49 + 80) = v38;
    *(v49 + 88) = tv_sec;
    *(v49 + 96) = v16;
    *(v49 + 104) = v48;

    sub_1DB388F14(0, 0, v47, &unk_1DB5147C0, v49);
  }

  return v16;
}

uint64_t sub_1DB389728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v16;
  *(v8 + 120) = v17;
  *(v8 + 104) = v15;
  *(v8 + 88) = v14;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 48) = a4;
  v9 = *(*v16 + 80);
  *(v8 + 128) = v9;
  v10 = *(v9 - 8);
  *(v8 + 136) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB389818, 0, 0);
}

uint64_t sub_1DB389818()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v1 = swift_allocObject();
  *(v0 + 152) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 128);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v12 = *(v0 + 80);
  *(v0 + 40) = v1;
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  v6 = *(v0 + 48);
  v7 = *(v0 + 64);
  *(v5 + 16) = v2;
  *(v5 + 24) = v6;
  *(v5 + 40) = v7;
  *(v5 + 56) = v12;
  *(v5 + 72) = v4;
  *(v5 + 80) = v1;
  *(v5 + 88) = v3;
  v8 = *(MEMORY[0x1E69E8950] + 4);
  v9 = swift_task_alloc();
  *(v0 + 168) = v9;
  *v9 = v0;
  v9[1] = sub_1DB3899C4;
  v10 = *(v0 + 144);
  v14 = *(v0 + 128);

  return MEMORY[0x1EEE6DE98](v10, v0 + 40, &unk_1DB5147F0, v5, 0, 0, 0xD00000000000001FLL, 0x80000001DB52BC50);
}

uint64_t sub_1DB3899C4()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  v4 = *(v2 + 160);

  if (v0)
  {
    v5 = sub_1DB389B8C;
  }

  else
  {
    v5 = sub_1DB389AE8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB389AE8()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[14];
  Promise.resolve(_:)(v1);

  (*(v3 + 8))(v1, v2);
  v5 = v0[18];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DB389B8C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 120);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + 16);
    v6 = swift_task_alloc();
    v7 = *(v0 + 48);
    *(v6 + 16) = v4;
    *(v6 + 24) = v7;
    v8 = swift_task_alloc();
    *(v8 + 16) = sub_1DB38B15C;
    *(v8 + 24) = v6;

    os_unfair_lock_lock(v5 + 4);
    sub_1DB38B1A4();
    os_unfair_lock_unlock(v5 + 4);
  }

  v9 = *(v0 + 176);
  v10 = *(v0 + 112);
  Promise.reject(_:)(v9);

  v11 = *(v0 + 144);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1DB389CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = v8;
  *(v13 + 56) = v24;
  *(v13 + 64) = v25;
  *(v13 + 40) = a7;
  *(v13 + 48) = a8;
  *(v13 + 32) = a6;
  v15 = sub_1DB50A280();
  *(v13 + 72) = v15;
  v16 = *(v15 - 8);
  *(v13 + 80) = v16;
  v17 = *(v16 + 64) + 15;
  *(v13 + 88) = swift_task_alloc();
  v18 = sub_1DB50A230();
  *(v13 + 96) = v18;
  v19 = *(v18 - 8);
  *(v13 + 104) = v19;
  v20 = *(v19 + 64) + 15;
  *(v13 + 112) = swift_task_alloc();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v21 = swift_task_alloc();
  *(v13 + 120) = v21;
  *v21 = v13;
  v21[1] = sub_1DB389EA0;

  return sub_1DB330250(a1, a2, a3, (v13 + 16), v26);
}

uint64_t sub_1DB389EA0()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1DB38A280;
  }

  else
  {
    v3 = sub_1DB389FB4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB389FB4()
{
  v31 = v0;
  static MonotonicTime.now.getter(&v30);
  tv_sec = v30.tv_sec;
  tv_nsec = v30.tv_nsec;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  v3 = tv_nsec / *&qword_1EE30ED50 + tv_sec;
  v4 = v0[5] / *&qword_1EE30ED50 + v0[4];
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v5 = v3 - v4;
  v6 = v0[14];
  v8 = v0[6];
  v7 = v0[7];
  v9 = sub_1DB50A270();
  __swift_project_value_buffer(v9, qword_1EE312DE8);

  v10 = sub_1DB50A250();
  sub_1DB50A2A0();
  v11 = sub_1DB50B060();

  if (sub_1DB50B0E0())
  {
    v13 = v0[10];
    v12 = v0[11];
    v14 = v0[9];
    v15 = v0[6];

    sub_1DB50A2D0();

    if ((*(v13 + 88))(v12, v14) == *MEMORY[0x1E69E93E8])
    {
      v16 = 0;
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[10] + 8))(v0[11], v0[9]);
      v17 = "selfTime=%f";
      v16 = 1;
    }

    v18 = v0[14];
    v19 = v0[7];
    v20 = swift_slowAlloc();
    *v20 = 0;
    *(v20 + 1) = v16;
    *(v20 + 2) = 2048;
    os_unfair_lock_lock((v19 + 24));
    v21 = *(v19 + 16);
    os_unfair_lock_unlock((v19 + 24));
    *(v20 + 4) = v5 - v21;
    v22 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v10, v11, v22, "MakeDependency", v17, v20, 0xCu);
    MEMORY[0x1E1288220](v20, -1, -1);
  }

  v24 = v0[13];
  v23 = v0[14];
  v26 = v0[11];
  v25 = v0[12];
  v27 = v0[8];

  (*(v24 + 8))(v23, v25);
  os_unfair_lock_lock((v27 + 24));
  *(v27 + 16) = v5 + *(v27 + 16);
  os_unfair_lock_unlock((v27 + 24));

  v28 = v0[1];

  return v28();
}

uint64_t sub_1DB38A280()
{
  v1 = v0[14];
  v2 = v0[11];

  v3 = v0[1];
  v4 = v0[16];

  return v3();
}

uint64_t sub_1DB38A2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_1DB330B68(&v12, v10);
  sub_1DB330884(&v12);
  sub_1DB389248();
  Promise.then(perform:orCatchError:on:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1DB38A44C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB38A46C, 0, 0);
}

uint64_t sub_1DB38A46C()
{
  v8 = v0;
  v1 = v0[3];

  sub_1DB330B68(v7, v2);
  sub_1DB330884(v7);
  v3 = v0[3];
  v0[4] = sub_1DB389248();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1DB38A57C;
  v5 = v0[2];

  return Promise.then()(v5);
}

uint64_t sub_1DB38A57C()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB38A6B8, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1DB38A6B8()
{
  v1 = v0[4];

  v2 = v0[6];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB38A71C()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Result();
  v4 = sub_1DB50B120();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v20 - v7;
  v9 = *(v2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - v12;
  if (os_unfair_lock_trylock((*(v0 + 16) + 16)))
  {
    if (*(v0 + 40) == 1)
    {
      v14 = *(v0 + 24);
      v20[1] = *(v0 + 32);

      sub_1DB4B3E04();
      v15 = *(v3 - 8);
      if ((*(v15 + 48))(v8, 1, v3) == 1)
      {
        v3 = v4;
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          (*(v9 + 32))(v13, v8, v2);
          v21 = 0;
          v22 = 0xE000000000000000;
          sub_1DB50BA00();
          sub_1DB2FEB54();
          v17 = v21;
          (*(v9 + 8))(v13, v2);
          goto LABEL_10;
        }

        v5 = v15;
      }

      sub_1DB2FEB54();
      (*(v5 + 8))(v8, v3);
    }

    v21 = 60;
    v22 = 0xE100000000000000;
    v18 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v18);

    MEMORY[0x1E1285C70](62, 0xE100000000000000);
    v17 = v21;
LABEL_10:
    os_unfair_lock_unlock((*(v1 + 16) + 16));
    return v17;
  }

  v21 = 60;
  v22 = 0xE100000000000000;
  v16 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v16);

  MEMORY[0x1E1285C70](62, 0xE100000000000000);
  return v21;
}

uint64_t sub_1DB38AA30()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_1DB2FEB54();

  return MEMORY[0x1EEE6BDC0](v0, 41, 7);
}

uint64_t sub_1DB38AA8C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB38AAF0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DB306AF4;

  return sub_1DB38A44C(a1);
}

uint64_t sub_1DB38ABAC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB38ACA4;

  return v7(a1);
}

uint64_t sub_1DB38ACA4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DB38ADC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 88);
  v15 = *(v1 + 72);
  v11 = *(v1 + 104);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DB306AF4;

  return sub_1DB389728(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DB38AED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB38AF40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DB38AFA8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DB30C7A0;

  return sub_1DB38ABAC(a1, v5);
}

uint64_t sub_1DB38B060(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v13 = *(v1 + 80);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DB306AF4;

  return sub_1DB389CF0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DB38B15C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = 0;
  sub_1DB2FEB54();
}

uint64_t sub_1DB38B1A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t BaseVersionFieldProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 64) = a1;
  *(v2 + 72) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DB38B29C, 0, 0);
}

uint64_t sub_1DB38B29C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v6 = v5;
  if (!v2)
  {

LABEL_9:
    v11 = v0[8];
    v0[5] = MEMORY[0x1E69E6530];
    v0[2] = 1;
    v13 = v1[3];
    v12 = v1[4];
    __swift_mutable_project_boxed_opaque_existential_1(v11, v13);
    (*(v12 + 16))(v0 + 2, 0x7372655665736162, 0xEB000000006E6F69, v13, v12);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    goto LABEL_10;
  }

  if (!*(v5 + 16) || (v7 = v0[9], v8 = sub_1DB306160(0x707954746E657665, 0xE900000000000065), (v9 & 1) == 0) || (sub_1DB300B14(*(v6 + 56) + 32 * v8, (v0 + 2)), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_10;
  }

  v10 = sub_1DB33114C(v0[6], v0[7], v7);

  if (v10)
  {
    goto LABEL_9;
  }

LABEL_10:
  v14 = v0[1];

  return v14();
}

uint64_t sub_1DB38B46C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DB306AF4;

  return BaseVersionFieldProvider.addExpensiveMetricsFields(into:using:)(a1);
}

uint64_t JSONDictionary.bridgedPrimitiveValues<A, B>()()
{
  v1 = *__swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return sub_1DB49FB28(v1);
}

id JSONDictionary.count.getter()
{
  v1 = *__swift_project_boxed_opaque_existential_1(v0, v0[3]);

  return [v1 count];
}

uint64_t JSONDictionary.subscript.getter@<X0>(void *a1@<X8>)
{
  v3 = *__swift_project_boxed_opaque_existential_1(v1, v1[3]);

  return sub_1DB49FA44(v3, a1);
}

uint64_t static ShelfID.forShelves(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = 0;
  *(a2 + 8) = sub_1DB38B8F0;
  *(a2 + 16) = v5;
  *(a2 + 24) = 0;
}

uint64_t sub_1DB38B810@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a1;

  v9 = sub_1DB50B8F0();
  MEMORY[0x1E1285C70](v9);

  *a4 = a2;
  a4[1] = a3;
  a4[2] = 35;
  a4[3] = 0xE100000000000000;
  v11 = v8 + 1;
  if (v8 == -1)
  {

    sub_1DB3DB408("JetCore/ShelfID.swift", 21, 2, 50, a2, a3);

    v11 = 0;
  }

  *a1 = v11;
  return result;
}

JetCore::ShelfID __swiftcall ShelfID.init(at:in:)(Swift::UInt64 at, JetCore::PageID in)
{
  v3 = v2;
  v4 = *in.value._countAndFlagsBits;
  v5 = *(in.value._countAndFlagsBits + 8);
  v6 = sub_1DB50B8F0();
  MEMORY[0x1E1285C70](v6);

  v3[2] = 35;
  v3[3] = 0xE100000000000000;
  *v3 = v4;
  v3[1] = v5;
  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  result.parent.value._object = v8;
  result.parent.value._countAndFlagsBits = v7;
  return result;
}

JetCore::ShelfID __swiftcall ShelfID.init(randomIn:)(JetCore::PageID randomIn)
{
  countAndFlagsBits = randomIn.value._countAndFlagsBits;
  v3 = v1;
  v4 = sub_1DB509E00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *countAndFlagsBits;
  v10 = countAndFlagsBits[1];
  sub_1DB509DF0();
  v11 = sub_1DB509DE0();
  v13 = v12;
  (*(v5 + 8))(v8, v4);
  v21[4] = v11;
  v21[5] = v13;
  v21[2] = 45;
  v21[3] = 0xE100000000000000;
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_1DB301E30();
  v14 = sub_1DB50B1A0();
  v16 = v15;

  v3[2] = v14;
  v3[3] = v16;
  *v3 = v9;
  v3[1] = v10;
  result.value._object = v20;
  result.value._countAndFlagsBits = v19;
  result.parent.value._object = v18;
  result.parent.value._countAndFlagsBits = v17;
  return result;
}

uint64_t ShelfID.init<A>(id:kind:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = *a4;
  v12 = a4[1];
  sub_1DB50A910();
  MEMORY[0x1E1285C70](a1, a2);

  result = (*(*(a5 - 8) + 8))(a3, a5);
  a6[2] = v14;
  a6[3] = v15;
  *a6 = v11;
  a6[1] = v12;
  return result;
}

uint64_t sub_1DB38BBA0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1DB50B3D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DB324840(0x746E65726170, 0xE600000000000000, 1, a2);
  sub_1DB3F0EF4(a1, v12, v29);
  if (v3)
  {
  }

  v15 = *a1;
  v14 = a1[1];
  if (v14 == *(*a1 + 16))
  {
    sub_1DB324840(0x65756C6176, 0xE500000000000000, 1, a2);

    sub_1DB50B3C0();
    v16 = sub_1DB50B3E0();
    swift_allocError();
    v18 = v17;
    (*(v8 + 16))(v17, v11, v7);
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B00], v16);
    swift_willThrow();
    (*(v8 + 8))(v11, v7);
  }

  v30 = v29[1];
  v19 = v29[0];

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v14 < *(v15 + 16))
  {
    v20 = (v15 + 32 * v14);
    v22 = v20[6];
    v21 = v20[7];
    v24 = v20[4];
    v23 = v20[5];
    a1[1] = v14 + 1;

    v25 = MEMORY[0x1E1285BF0](v24, v23, v22, v21);
    v27 = v26;

    v28 = v30;
    *a3 = v19;
    a3[1] = v28;
    a3[2] = v25;
    a3[3] = v27;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t ShelfID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1DB50B3D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  v11 = sub_1DB50BA40();
  v37 = v6;
  v30 = 45;
  v31 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v11);
  *(&v27 - 2) = &v30;
  v14 = sub_1DB38C5AC(0x7FFFFFFFFFFFFFFFLL, 1, sub_1DB357AF0, (&v27 - 4), v12, v13, &v27);
  v34 = v14;
  v35 = 0;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_1DB50BDB0();
  sub_1DB38BBA0(&v34, v16, &v30);
  v18 = v31;
  v19 = v33;
  v28 = v32;
  v29 = v30;
  v20 = *(v14 + 16);

  if (v35 == v20)
  {
    __swift_destroy_boxed_opaque_existential_0(v36);
    v21 = v28;
    *a2 = v29;
    a2[1] = v18;
    a2[2] = v21;
    a2[3] = v19;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  if (v35 >= v20)
  {
    __break(1u);
  }

  else
  {
    v22 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DB50BDB0();
    sub_1DB50B3C0();
    v23 = sub_1DB50B3E0();
    swift_allocError();
    v25 = v24;
    v26 = v37;
    (*(v37 + 16))(v24, v9, v5);
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6B00], v23);
    swift_willThrow();
    (*(v26 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(v36);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return result;
}

uint64_t ShelfID.encode(to:)(void *a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();

  MEMORY[0x1E1285C70](45, 0xE100000000000000);
  MEMORY[0x1E1285C70](v4, v5);
  __swift_mutable_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_1DB50BAC0();

  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t ShelfID.debugDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

Swift::Bool __swiftcall ShelfID.isChild(of:)(JetCore::PageID of)
{
  if (*v1 == *of.value._countAndFlagsBits && v1[1] == *(of.value._countAndFlagsBits + 8))
  {
    return 1;
  }

  else
  {
    return sub_1DB50BA30();
  }
}

Swift::Bool __swiftcall ShelfID.isParent(of:)(JetCore::ComponentID *of)
{
  countAndFlagsBits = of->parent.value._countAndFlagsBits;
  object = of->parent.value._object;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = of->parent.parent.value._countAndFlagsBits == *v1 && of->parent.parent.value._object == *(v1 + 8);
  if (v6 || (v7 = sub_1DB50BA30(), result = 0, (v7 & 1) != 0))
  {
    if (countAndFlagsBits == v4 && object == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DB50BA30();
    }
  }

  return result;
}

uint64_t ShelfID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DB50A740();

  return sub_1DB50A740();
}

uint64_t ShelfID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DB50BCF0();
  sub_1DB50A740();
  sub_1DB50A740();
  return sub_1DB50BD30();
}

uint64_t sub_1DB38C42C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DB50BCF0();
  sub_1DB50A740();
  sub_1DB50A740();
  return sub_1DB50BD30();
}

uint64_t sub_1DB38C494()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DB50A740();

  return sub_1DB50A740();
}

uint64_t sub_1DB38C4E4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DB50BCF0();
  sub_1DB50A740();
  sub_1DB50A740();
  return sub_1DB50BD30();
}

uint64_t sub_1DB38C578()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

unint64_t sub_1DB38C5AC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1DB50A870();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1DB302534(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1DB302534((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1DB50A850();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1DB50A750();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1DB50A750();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1DB50A870();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1DB302534(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1DB50A870();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1DB302534(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1DB302534((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1DB50A750();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB38C96C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DB50BA30() & 1;
  }
}

uint64_t _s7JetCore7ShelfIDV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DB50BA30(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DB50BA30();
    }
  }

  return result;
}

unint64_t sub_1DB38CA6C()
{
  result = qword_1ECC44268;
  if (!qword_1ECC44268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44268);
  }

  return result;
}

unint64_t sub_1DB38CAD0()
{
  result = qword_1ECC44270;
  if (!qword_1ECC44270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44278, &unk_1DB514B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44270);
  }

  return result;
}

uint64_t sub_1DB38CB34()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    v1 = 1;
  }

  else
  {
    v1 = 3;
  }

  byte_1ECC44280 = v1;
  return result;
}

uint64_t ClientBuildTypeFieldProvider.addTimeSensitiveMetricsFields(into:using:)(void *a1)
{
  v3 = *v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 24))(v4, v5);
  v7 = v6;
  if (!v3)
  {

LABEL_9:
    if (qword_1ECC42098 != -1)
    {
      swift_once();
    }

    v12 = 0xE500000000000000;
    v13 = 0x6775626564;
    v14 = 0xE400000000000000;
    v15 = 1684366707;
    if (byte_1ECC44280 != 2)
    {
      v15 = 0x69746375646F7270;
      v14 = 0xEA00000000006E6FLL;
    }

    if (byte_1ECC44280)
    {
      v13 = 0x6C616E7265746E69;
      v12 = 0xE800000000000000;
    }

    if (byte_1ECC44280 <= 1u)
    {
      v16 = v13;
    }

    else
    {
      v16 = v15;
    }

    if (byte_1ECC44280 > 1u)
    {
      v12 = v14;
    }

    v21[3] = MEMORY[0x1E69E6158];
    v21[0] = v16;
    v21[1] = v12;
    v17 = a1[3];
    v18 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v17);
    (*(v18 + 16))(v21, 0x7542746E65696C63, 0xEF65707954646C69, v17, v18);
    return __swift_destroy_boxed_opaque_existential_0(v21);
  }

  if (!*(v6 + 16))
  {
  }

  v8 = sub_1DB306160(0x707954746E657665, 0xE900000000000065);
  if ((v9 & 1) == 0)
  {
  }

  sub_1DB300B14(*(v7 + 56) + 32 * v8, v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v10 = sub_1DB33114C(v19, v20, v3);

  if (v10)
  {
    goto LABEL_9;
  }

  return result;
}

double sub_1DB38CDC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v25 = 0;
  *v9 = 0u;
  v9[1] = 0u;
  (*(v10 + 16))(v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44288, &qword_1DB514C28);
  if (swift_dynamicCast() || (v20 = 0, v18 = 0u, v19 = 0u, sub_1DB38D218(&v18), sub_1DB38D280(v24, &v18), *(&v19 + 1)))
  {
    v11 = &v18;
  }

  else
  {
    sub_1DB38D218(&v18);
    (*(a2 + 40))(&v18, a1, a2);
    v15[1] = swift_getAssociatedTypeWitness();
    swift_getExtendedExistentialTypeMetadata();
    if (!swift_dynamicCast())
    {
      v17 = 0;
      memset(v16, 0, sizeof(v16));
      sub_1DB38D218(v24);
      sub_1DB38D218(v16);
      *(a3 + 32) = 0;
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v11 = v16;
  }

  sub_1DB2FEA0C(v11, v21);
  v12 = v22;
  v13 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(v13 + 8))(v12, v13);
  sub_1DB38D218(v24);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return result;
}

void static IntentModel<>.kind.getter()
{
  sub_1DB50B320();
  sub_1DB50BEE0();

  MEMORY[0x1E1285C70](0xD00000000000001CLL, 0x80000001DB52BD00);
  sub_1DB50B580();
  __break(1u);
}

uint64_t sub_1DB38D0BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_0, v3, a1);
}

BOOL static IntentModel._isContinuous.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (swift_conformsToProtocol2())
  {
    v1 = AssociatedTypeWitness == 0;
  }

  else
  {
    v1 = 1;
  }

  return !v1;
}

uint64_t sub_1DB38D218(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC44290, &unk_1DB514C30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DB38D280(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC44290, &unk_1DB514C30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ClosureActionImplementation.scheduler.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0(v1);

  return sub_1DB2FEA0C(a1, v1);
}

uint64_t ClosureActionImplementation.perform(_:asPartOf:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *a1;
  v9 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43F60, &unk_1DB514C40);
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  *(v11 + 16) = 0;
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = 0;
  v13 = v4[3];
  v14 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v13);
  v15 = swift_allocObject();
  *(v15 + 16) = *(a3 + 16);
  *(v15 + 24) = a2;
  *(v15 + 32) = v8;
  *(v15 + 40) = *(a1 + 1);
  *(v15 + 56) = v9;
  *(v15 + 64) = v10;
  v16 = *(v14 + 8);

  v16(sub_1DB38D58C, v15, v13, v14);

  return v10;
}

void sub_1DB38D4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  (*(*a1 + 104))(sub_1DB38D604, v5, MEMORY[0x1E69E7CA8] + 8);
  sub_1DB3F8B6C(0);
}

void sub_1DB38D58C()
{
  v1 = v0[2];
  v2 = v0[8];
  sub_1DB38D4E0(v0[3], v0[4], v0[5], v0[6], v0[7]);
}

uint64_t sub_1DB38D5B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double sub_1DB38D620@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, &v11, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v11, v13);
    sub_1DB300B14(v6, v10);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v11);
      sub_1DB3171C0(a1, v10);
      v15 = a2;

      MetricsData.init(deserializing:using:)(v10, &v15, &v11);
      sub_1DB3151CC(a1);

      v8 = v12;
      v9 = v14;
      *a3 = v11;
      *(a3 + 16) = v8;
      result = *&v13;
      *(a3 + 24) = v13;
      *(a3 + 40) = v9;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v11);
  }

  else
  {

    sub_1DB30623C(&v11, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

uint64_t sub_1DB38D8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1DB30C4B8(a1, v28, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!v29)
  {
    sub_1DB3151CC(a1);

    v12 = &qword_1ECC42E38;
    v13 = &qword_1DB50FB80;
    v14 = v28;
LABEL_5:
    result = sub_1DB30623C(v14, v12, v13);
    goto LABEL_6;
  }

  v10 = __swift_project_boxed_opaque_existential_1(v28, v29);
  sub_1DB300B14(v10, v24);
  sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v28);
    sub_1DB3171C0(a1, v28);
    v15 = JSONObject.string.getter();
    if (v16)
    {
      v17 = v15;
      v18 = v16;

      sub_1DB3151CC(a1);
      result = sub_1DB3151CC(v28);
      *a5 = v17;
      a5[1] = v18;
      return result;
    }

    sub_1DB315178();
    v19 = swift_allocError();
    v20 = MEMORY[0x1E69E7CC0];
    *v21 = a3;
    v21[1] = v20;
    v21[2] = 0;
    v21[3] = 0;
    swift_willThrow();
    sub_1DB3151CC(v28);
    sub_1DB31556C(0xD000000000000027, 0x80000001DB529830, a2, v28);

    sub_1DB30C4B8(v28, v24, &qword_1ECC42E48, &qword_1DB50FB90);
    v22 = v25;
    if (v25)
    {
      v23 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      (*(v23 + 8))(a4, v19, v22, v23);

      sub_1DB3151CC(a1);
      sub_1DB30623C(v28, &qword_1ECC42E48, &qword_1DB50FB90);
      result = __swift_destroy_boxed_opaque_existential_0(v24);
      goto LABEL_6;
    }

    sub_1DB3151CC(a1);
    sub_1DB30623C(v28, &qword_1ECC42E48, &qword_1DB50FB90);
    v14 = v24;
    v12 = &qword_1ECC42E48;
    v13 = &qword_1DB50FB90;
    goto LABEL_5;
  }

  __swift_destroy_boxed_opaque_existential_0(v28);
  sub_1DB3151CC(a1);

LABEL_6:
  *a5 = 0;
  a5[1] = 0;
  return result;
}

double sub_1DB38DB3C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, &v10, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v12)
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v10, v12);
    sub_1DB300B14(v6, v9);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v10);
      sub_1DB3171C0(a1, v9);
      v14 = a2;

      PageMetrics.Instruction.init(deserializing:using:)(v9, &v14, &v10);
      sub_1DB3151CC(a1);

      v8 = v11;
      *a3 = v10;
      *(a3 + 16) = v8;
      *(a3 + 24) = v12;
      result = *&v13;
      *(a3 + 40) = v13;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v10);
  }

  else
  {

    sub_1DB30623C(&v10, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  *(a3 + 48) = 0;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

double sub_1DB38DDAC@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, v14, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v15)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v14, v15);
    sub_1DB300B14(v6, &v10);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v14);
      sub_1DB3171C0(a1, v14);

      sub_1DB392C8C(v14, a2, &v10);
      sub_1DB3151CC(a1);

      result = *&v10;
      v8 = v11;
      v9 = v12;
      *a3 = v10;
      *(a3 + 16) = v8;
      *(a3 + 24) = v9;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {

    sub_1DB30623C(v14, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_1DB38E000@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_1DB30C4B8(a1, v10, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v11)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v10, v11);
    sub_1DB300B14(v6, v9);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v10);
      sub_1DB3171C0(a1, v10);

      sub_1DB392F64(v10, a2, v9);
      sub_1DB3151CC(a1);

      v8 = v9[1];
      *a3 = v9[0];
      a3[1] = v8;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {

    sub_1DB30623C(v10, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  result = sub_1DB3151CC(a1);
  *a3 = 0;
  a3[1] = 0;
  return result;
}

double sub_1DB38E248@<D0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1DB30C4B8(a1, &v13, &qword_1ECC42E38, &qword_1DB50FB80);
  if (*(&v14 + 1))
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
    sub_1DB300B14(v6, v12);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v13);
      sub_1DB3171C0(a1, v12);
      v21 = a2;

      Models.Menu.init(deserializing:using:)(v12, &v21, &v13);
      sub_1DB3151CC(a1);

      v8 = v18;
      a3[4] = v17;
      a3[5] = v8;
      v9 = v20;
      a3[6] = v19;
      a3[7] = v9;
      v10 = v14;
      *a3 = v13;
      a3[1] = v10;
      result = *&v15;
      v11 = v16;
      a3[2] = v15;
      a3[3] = v11;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v13);
  }

  else
  {

    sub_1DB30623C(&v13, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  result = 0.0;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

__n128 sub_1DB38E4D4@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, &v13, &qword_1ECC42E38, &qword_1DB50FB80);
  if (*(&v14 + 1))
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
    sub_1DB300B14(v6, v12);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v13);
      sub_1DB3171C0(a1, v12);
      v24 = a2;

      Models.Menu.Child.init(deserializing:using:)(v12, &v24, &v13);
      sub_1DB3151CC(a1);

      v8 = v22;
      *(a3 + 128) = v21;
      *(a3 + 144) = v8;
      *(a3 + 160) = v23;
      v9 = v18;
      *(a3 + 64) = v17;
      *(a3 + 80) = v9;
      v10 = v20;
      *(a3 + 96) = v19;
      *(a3 + 112) = v10;
      v11 = v14;
      *a3 = v13;
      *(a3 + 16) = v11;
      result = v16;
      *(a3 + 32) = v15;
      *(a3 + 48) = result;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v13);
  }

  else
  {

    sub_1DB30623C(&v13, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  result.n128_u64[0] = 0;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 160) = -256;
  return result;
}

__n128 sub_1DB38E76C@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, &v13, &qword_1ECC42E38, &qword_1DB50FB80);
  if (*(&v14 + 1))
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
    sub_1DB300B14(v6, v12);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v13);
      sub_1DB3171C0(a1, v12);
      v24 = a2;

      Models.Menu.Item.init(deserializing:using:)(v12, &v24, &v13);
      sub_1DB3151CC(a1);

      v8 = v22;
      *(a3 + 128) = v21;
      *(a3 + 144) = v8;
      *(a3 + 160) = v23;
      v9 = v18;
      *(a3 + 64) = v17;
      *(a3 + 80) = v9;
      v10 = v20;
      *(a3 + 96) = v19;
      *(a3 + 112) = v10;
      v11 = v14;
      *a3 = v13;
      *(a3 + 16) = v11;
      result = v16;
      *(a3 + 32) = v15;
      *(a3 + 48) = result;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v13);
  }

  else
  {

    sub_1DB30623C(&v13, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  *(a3 + 160) = 0;
  result.n128_u64[0] = 0;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

double sub_1DB38EA40@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1DB30C4B8(a1, v13, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
    sub_1DB300B14(v6, v9);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v13);
      sub_1DB3171C0(a1, v13);
      v9[0] = a2;

      Models.HTTPTemplateAction.Parameter.init(deserializing:using:)(v13, v9, v10);
      sub_1DB3151CC(a1);

      v8 = v10[1];
      *a3 = v10[0];
      a3[1] = v8;
      a3[2] = v11[0];
      result = *(v11 + 9);
      *(a3 + 41) = *(v11 + 9);
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {

    sub_1DB30623C(v13, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  result = 0.0;
  *(a3 + 41) = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  return result;
}

uint64_t sub_1DB38ECE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(uint64_t *, void *)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = a3(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v19 - v14;
  sub_1DB30C4B8(a1, v20, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v21)
  {
    v16 = __swift_project_boxed_opaque_existential_1(v20, v21);
    sub_1DB300B14(v16, v19);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v20);
      sub_1DB3171C0(a1, v20);
      v19[0] = a2;

      a4(v20, v19);
      sub_1DB3151CC(a1);

      sub_1DB398BF8(v15, a6, a5);
      v17 = 0;
      return (*(v12 + 56))(a6, v17, 1, v11);
    }

    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {

    sub_1DB30623C(v20, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  v17 = 1;
  return (*(v12 + 56))(a6, v17, 1, v11);
}

__n128 sub_1DB38EFF4@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, &v12, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v13.n128_u64[1])
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v12, v13.n128_i64[1]);
    sub_1DB300B14(v6, v11);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v12);
      sub_1DB3171C0(a1, v11);
      v21 = a2;

      Models.ToastAction.init(deserializing:using:)(v11, &v21, &v12);
      sub_1DB3151CC(a1);

      v8 = v19;
      *(a3 + 96) = v18;
      *(a3 + 112) = v8;
      *(a3 + 128) = v20;
      v9 = v15;
      *(a3 + 32) = v14;
      *(a3 + 48) = v9;
      v10 = v17;
      *(a3 + 64) = v16;
      *(a3 + 80) = v10;
      result = v13;
      *a3 = v12;
      *(a3 + 16) = result;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v12);
  }

  else
  {

    sub_1DB30623C(&v12, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  result.n128_u64[0] = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

double sub_1DB38F28C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, &v13, &qword_1ECC42E38, &qword_1DB50FB80);
  if (*(&v14 + 1))
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
    sub_1DB300B14(v6, v12);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v13);
      sub_1DB3171C0(a1, v12);
      v23 = a2;

      Models.AlertAction.init(deserializing:using:)(v12, &v23, &v13);
      sub_1DB3151CC(a1);

      v8 = v20;
      *(a3 + 96) = v19;
      *(a3 + 112) = v8;
      *(a3 + 128) = v21;
      *(a3 + 144) = v22;
      v9 = v16;
      *(a3 + 32) = v15;
      *(a3 + 48) = v9;
      v10 = v18;
      *(a3 + 64) = v17;
      *(a3 + 80) = v10;
      result = *&v13;
      v11 = v14;
      *a3 = v13;
      *(a3 + 16) = v11;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v13);
  }

  else
  {

    sub_1DB30623C(&v13, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  *(a3 + 144) = 0;
  result = 0.0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

__n128 sub_1DB38F520@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, &v10, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v11.n128_u64[1])
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v10, v11.n128_i64[1]);
    sub_1DB300B14(v6, v9);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v10);
      sub_1DB3171C0(a1, v9);
      v15 = a2;

      Models.AlertAction.Button.init(deserializing:using:)(v9, &v15, &v10);
      sub_1DB3151CC(a1);

      v8 = v13;
      *(a3 + 32) = v12;
      *(a3 + 48) = v8;
      *(a3 + 64) = v14;
      result = v11;
      *a3 = v10;
      *(a3 + 16) = result;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v10);
  }

  else
  {

    sub_1DB30623C(&v10, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  *(a3 + 64) = 0;
  result.n128_u64[0] = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

double sub_1DB38F7C8@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, v12, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
    sub_1DB300B14(v6, v9);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v12);
      sub_1DB3171C0(a1, v12);
      v11 = a2;

      sub_1DB48CD98(v12, &v11, v9);
      sub_1DB3151CC(a1);

      v8 = v9[1];
      *a3 = v9[0];
      *(a3 + 8) = v8;
      result = *&v10;
      *(a3 + 16) = v10;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {

    sub_1DB30623C(v12, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_1DB38FA20@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, v13, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
    sub_1DB300B14(v6, v10);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v13);
      sub_1DB3171C0(a1, v13);
      v12 = a2;

      sub_1DB368E88(v13, &v12, v10);
      sub_1DB3151CC(a1);

      v8 = v10[1];
      v9 = v11;
      *a3 = v10[0];
      *(a3 + 8) = v8;
      *(a3 + 16) = v9;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {

    sub_1DB30623C(v13, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  result = sub_1DB3151CC(a1);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_1DB38FCA8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(void *__return_ptr, uint64_t *, id *)@<X2>, void *a4@<X8>)
{
  sub_1DB30C4B8(a1, v13, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v14)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v13, v14);
    sub_1DB300B14(v8, v11);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v13);
      sub_1DB3171C0(a1, v13);
      v12 = a2;

      a3(v11, v13, &v12);
      sub_1DB3151CC(a1);

      v10 = v11[1];
      *a4 = v11[0];
      a4[1] = v10;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {

    sub_1DB30623C(v13, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  result = sub_1DB3151CC(a1);
  *a4 = 0;
  a4[1] = 0;
  return result;
}

void *sub_1DB38FEFC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_1DB30C4B8(a1, __src, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!__src[3])
  {

    sub_1DB30623C(__src, &qword_1ECC42E38, &qword_1DB50FB80);
    goto LABEL_5;
  }

  v6 = __swift_project_boxed_opaque_existential_1(__src, __src[3]);
  sub_1DB300B14(v6, v8);
  sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_0(__src);

LABEL_5:
    sub_1DB3151CC(a1);
    sub_1DB398C60(__src);
    return memcpy(a3, __src, 0x158uLL);
  }

  __swift_destroy_boxed_opaque_existential_0(__src);
  sub_1DB3171C0(a1, v8);
  v9 = a2;
  JSNetworkPerformanceMetrics.init(deserializing:using:)(__src, v8, &v9);
  sub_1DB3151CC(a1);
  memcpy(a3, __src, 0x158uLL);
  return nullsub_8(a3);
}

double sub_1DB390048@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, v10, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v11)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v10, v11);
    sub_1DB300B14(v6, v8);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v10);
      sub_1DB3171C0(a1, v10);
      v9 = a2;

      LintedMetricsEvent.init(deserializing:using:)(v10, &v9, v8);
      sub_1DB3151CC(a1);

      result = v8[0];
      *a3 = *v8;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {

    sub_1DB30623C(v10, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  *a3 = 0;
  *(a3 + 8) = 0;
  return result;
}

uint64_t sub_1DB390294@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1DB30C4B8(a1, v9, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v10)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v9, v10);
    sub_1DB300B14(v4, v8);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v9);
      sub_1DB3151CC(a1);

      v6 = 0;
      goto LABEL_7;
    }

    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {

    sub_1DB30623C(v9, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  result = sub_1DB3151CC(a1);
  v6 = 1;
LABEL_7:
  *a2 = v6;
  return result;
}

__n128 sub_1DB3903A4@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, v12, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
    sub_1DB300B14(v6, v9);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v12);
      sub_1DB3171C0(a1, v12);
      v9[0] = a2;

      ImpressionMetrics.init(deserializing:using:)(v12, v9, v10);
      sub_1DB3151CC(a1);

      v8 = v10[3];
      *(a3 + 32) = v10[2];
      *(a3 + 48) = v8;
      *(a3 + 64) = v10[4];
      result = v10[1];
      *a3 = v10[0];
      *(a3 + 16) = result;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {

    sub_1DB30623C(v12, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  result.n128_u64[0] = 0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

double sub_1DB39060C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, &v12, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v12, v14);
    sub_1DB300B14(v6, v11);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v12);
      sub_1DB3171C0(a1, v11);
      v17 = a2;

      ImpressionMetrics.ID.init(deserializing:using:)(v11, &v17, &v12);
      sub_1DB3151CC(a1);

      v8 = v13;
      v9 = v14;
      v10 = v16;
      *a3 = v12;
      *(a3 + 16) = v8;
      *(a3 + 24) = v9;
      result = *&v15;
      *(a3 + 32) = v15;
      *(a3 + 48) = v10;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v12);
  }

  else
  {

    sub_1DB30623C(&v12, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  *(a3 + 48) = 0;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

double sub_1DB39087C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, v12, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
    sub_1DB300B14(v6, &v9);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v12);
      sub_1DB3171C0(a1, v12);
      v11 = a2;

      CompoundAction.init(deserializing:using:)(v12, &v11, &v9);
      sub_1DB3151CC(a1);

      v8 = v10;
      result = *&v9;
      *a3 = v9;
      *(a3 + 16) = v8;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {

    sub_1DB30623C(v12, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_1DB390AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1DB30C4B8(a1, v13, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!v14)
  {
    sub_1DB3151CC(a1);

    result = sub_1DB30623C(v13, &qword_1ECC42E38, &qword_1DB50FB80);
    goto LABEL_5;
  }

  v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
  sub_1DB300B14(v6, v11);
  sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_0(v13);
    sub_1DB3151CC(a1);

LABEL_5:
    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  __swift_destroy_boxed_opaque_existential_0(v13);
  sub_1DB3171C0(a1, v13);
  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v11);

  v8 = sub_1DB320870(v11, a2);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, v11);
  v10 = a2;
  ScalarDictionary.init(tryDeserializing:using:)(v11, &v10, &v12);
  sub_1DB3151CC(a1);
  result = sub_1DB3151CC(v13);
  v9 = v12;
  *a3 = v8;
  a3[1] = v9;
  return result;
}

double sub_1DB390C60@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, &v11, &qword_1ECC42E38, &qword_1DB50FB80);
  if (*(&v12 + 1))
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    sub_1DB300B14(v6, v10);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v11);
      sub_1DB3171C0(a1, v10);
      v17 = a2;

      MediaArtwork.init(deserializing:using:)(v10, &v17, &v11);
      sub_1DB3151CC(a1);

      v8 = v14;
      *(a3 + 32) = v13;
      *(a3 + 48) = v8;
      *(a3 + 64) = v15;
      *(a3 + 80) = v16;
      result = *&v11;
      v9 = v12;
      *a3 = v11;
      *(a3 + 16) = v9;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v11);
  }

  else
  {

    sub_1DB30623C(&v11, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  *(a3 + 80) = 0;
  result = 0.0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

double sub_1DB390ED4@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, v12, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
    sub_1DB300B14(v6, v9);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v12);
      sub_1DB3171C0(a1, v12);
      v11 = a2;

      PageMetrics.init(deserializing:using:)(v12, &v11, v9);
      sub_1DB3151CC(a1);

      v8 = v9[1];
      *a3 = v9[0];
      *(a3 + 8) = v8;
      result = *&v10;
      *(a3 + 16) = v10;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {

    sub_1DB30623C(v12, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

double sub_1DB39112C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, &v10, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v12)
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v10, v12);
    sub_1DB300B14(v6, v9);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v10);
      sub_1DB3171C0(a1, v9);
      v14 = a2;

      PageMetrics.Instruction.init(deserializing:using:)(v9, &v14, &v10);
      sub_1DB3151CC(a1);

      v8 = v11;
      *a3 = v10;
      *(a3 + 16) = v8;
      *(a3 + 24) = v12;
      result = *&v13;
      *(a3 + 40) = v13;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v10);
  }

  else
  {

    sub_1DB30623C(&v10, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  *(a3 + 48) = 0;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

double sub_1DB39139C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, &v11, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v11, v13);
    sub_1DB300B14(v6, v10);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v11);
      sub_1DB3171C0(a1, v10);
      v15 = a2;

      MetricsData.init(deserializing:using:)(v10, &v15, &v11);
      sub_1DB3151CC(a1);

      v8 = v12;
      v9 = v14;
      *a3 = v11;
      *(a3 + 16) = v8;
      result = *&v13;
      *(a3 + 24) = v13;
      *(a3 + 40) = v9;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v11);
  }

  else
  {

    sub_1DB30623C(&v11, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

uint64_t sub_1DB391608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1DB30C4B8(a1, v14, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!v15)
  {

    sub_1DB30623C(v14, &qword_1ECC42E38, &qword_1DB50FB80);
    goto LABEL_5;
  }

  v6 = __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_1DB300B14(v6, v13);
  sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_0(v14);

LABEL_5:
    result = sub_1DB3151CC(a1);
    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  __swift_destroy_boxed_opaque_existential_0(v14);
  sub_1DB3171C0(a1, v14);

  JSONObject.subscript.getter(0x654D6E6F69746361, 0xED00007363697274, v13);
  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v12);

  v8 = sub_1DB320870(v12, a2);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, v12);
  v10 = a2;
  ScalarDictionary.init(tryDeserializing:using:)(v12, &v10, &v11);
  sub_1DB3151CC(v14);
  sub_1DB3151CC(v13);
  v9 = v11;
  sub_1DB3151CC(a1);

  *a3 = v8;
  a3[1] = v9;
  return result;
}

double sub_1DB3917D0@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, &v12, &qword_1ECC42E38, &qword_1DB50FB80);
  if (*(&v13 + 1))
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    sub_1DB300B14(v6, v11);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v12);
      sub_1DB3171C0(a1, v11);

      sub_1DB393234(v11, a2, &v12);
      sub_1DB3151CC(a1);

      result = *&v12;
      v8 = v13;
      v9 = v14;
      v10 = v15;
      *a3 = v12;
      *(a3 + 16) = v8;
      *(a3 + 32) = v9;
      *(a3 + 40) = v10;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v12);
  }

  else
  {

    sub_1DB30623C(&v12, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

double sub_1DB391A2C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, &v12, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v12, v14);
    sub_1DB300B14(v6, v11);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v12);
      sub_1DB3171C0(a1, v11);
      v17 = a2;

      ImpressionMetrics.ID.init(deserializing:using:)(v11, &v17, &v12);
      sub_1DB3151CC(a1);

      v8 = v13;
      v9 = v14;
      v10 = v16;
      *a3 = v12;
      *(a3 + 16) = v8;
      *(a3 + 24) = v9;
      result = *&v15;
      *(a3 + 32) = v15;
      *(a3 + 48) = v10;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v12);
  }

  else
  {

    sub_1DB30623C(&v12, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  *(a3 + 48) = 0;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

uint64_t sub_1DB391C9C(uint64_t a1, uint64_t a2)
{
  sub_1DB30C4B8(a1, v23, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!v24)
  {

    sub_1DB30623C(v23, &qword_1ECC42E38, &qword_1DB50FB80);
    goto LABEL_5;
  }

  v4 = __swift_project_boxed_opaque_existential_1(v23, v24);
  sub_1DB300B14(v4, v19);
  sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_0(v23);

LABEL_5:
    sub_1DB3151CC(a1);
    return 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v23);
  sub_1DB3171C0(a1, v23);
  v6 = JSONObject.string.getter();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = sub_1DB3EF7E4(v6, v7);
    if ((v11 & 1) == 0)
    {
      v18 = v10;
      sub_1DB3151CC(v23);

      sub_1DB3151CC(a1);

      return v18;
    }

    type metadata accessor for CachePolicy(0);
    v12 = 0;
    v14 = v13 | 0x8000000000000000;
  }

  else
  {
    v8 = 0;
    v14 = 0x40000001F56F25D8uLL;
    v12 = MEMORY[0x1E69E7CC0];
    v9 = 0xE000000000000000;
  }

  sub_1DB315178();
  v15 = swift_allocError();
  *v16 = v8;
  v16[1] = v9;
  v16[2] = v14;
  v16[3] = v12;
  swift_willThrow();
  sub_1DB3151CC(v23);
  sub_1DB31556C(0xD000000000000027, 0x80000001DB529830, a2, v23);

  sub_1DB30C4B8(v23, v19, &qword_1ECC42E48, &qword_1DB50FB90);
  if (v20)
  {
    v17 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    type metadata accessor for CachePolicy(0);
    (*(v17 + 8))();

    sub_1DB3151CC(a1);
    sub_1DB30623C(v23, &qword_1ECC42E48, &qword_1DB50FB90);
    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {

    sub_1DB3151CC(a1);
    sub_1DB30623C(v23, &qword_1ECC42E48, &qword_1DB50FB90);
    sub_1DB30623C(v19, &qword_1ECC42E48, &qword_1DB50FB90);
  }

  return 0;
}

uint64_t sub_1DB391F64@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, v13, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
    sub_1DB300B14(v6, v10);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v13);
      sub_1DB3171C0(a1, v13);
      v12 = a2;

      sub_1DB368E88(v13, &v12, v10);
      sub_1DB3151CC(a1);

      v8 = v10[1];
      v9 = v11;
      *a3 = v10[0];
      *(a3 + 8) = v8;
      *(a3 + 16) = v9;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {

    sub_1DB30623C(v13, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  result = sub_1DB3151CC(a1);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_1DB3921BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NetRequest();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB30C4B8(a1, v15, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!v16)
  {
    sub_1DB3151CC(a1);

    sub_1DB30623C(v15, &qword_1ECC42E38, &qword_1DB50FB80);
    goto LABEL_6;
  }

  v11 = __swift_project_boxed_opaque_existential_1(v15, v16);
  sub_1DB300B14(v11, v14);
  sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_0(v15);
    sub_1DB3151CC(a1);

LABEL_6:
    v13 = 1;
    return (*(v7 + 56))(a3, v13, 1, v6);
  }

  __swift_destroy_boxed_opaque_existential_0(v15);
  sub_1DB3171C0(a1, v15);
  v14[0] = a2;

  NetRequest.init(deserializing:using:)(v15, v14, v10);
  sub_1DB3151CC(a1);

  sub_1DB398BF8(v10, a3, type metadata accessor for NetRequest);
  v13 = 0;
  return (*(v7 + 56))(a3, v13, 1, v6);
}

uint64_t sub_1DB3924C8(uint64_t a1, uint64_t a2)
{
  sub_1DB30C4B8(a1, v24, &qword_1ECC42E38, &qword_1DB50FB80);
  if (!v25)
  {

    sub_1DB30623C(v24, &qword_1ECC42E38, &qword_1DB50FB80);
    goto LABEL_5;
  }

  v5 = __swift_project_boxed_opaque_existential_1(v24, v25);
  sub_1DB300B14(v5, v20);
  sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_0(v24);

LABEL_5:
    sub_1DB3151CC(a1);
    return 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v24);
  sub_1DB3171C0(a1, v24);
  v7 = JSONObject.string.getter();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = sub_1DB3EF7E4(v7, v8);
    if ((v12 & 1) == 0)
    {
      v19 = v11;
      sub_1DB3151CC(v24);

      sub_1DB3151CC(a1);

      return v19;
    }

    v13 = 0;
    v14 = v2 | 0x8000000000000000;
  }

  else
  {
    v9 = 0;
    v14 = 0x40000001F56F25D8uLL;
    v13 = MEMORY[0x1E69E7CC0];
    v10 = 0xE000000000000000;
  }

  sub_1DB315178();
  v15 = swift_allocError();
  *v16 = v9;
  v16[1] = v10;
  v16[2] = v14;
  v16[3] = v13;
  swift_willThrow();
  sub_1DB3151CC(v24);
  sub_1DB31556C(0xD000000000000027, 0x80000001DB529830, a2, v24);

  sub_1DB30C4B8(v24, v20, &qword_1ECC42E48, &qword_1DB50FB90);
  v17 = v21;
  if (v21)
  {
    v18 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (*(v18 + 8))(v2, v15, v17, v18);

    sub_1DB3151CC(a1);
    sub_1DB30623C(v24, &qword_1ECC42E48, &qword_1DB50FB90);
    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {

    sub_1DB3151CC(a1);
    sub_1DB30623C(v24, &qword_1ECC42E48, &qword_1DB50FB90);
    sub_1DB30623C(v20, &qword_1ECC42E48, &qword_1DB50FB90);
  }

  return 0;
}

unint64_t sub_1DB392794(uint64_t a1, void *a2)
{
  sub_1DB30C4B8(a1, v8, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v9)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v8, v9);
    sub_1DB300B14(v4, v7);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v8);
      sub_1DB3171C0(a1, v8);
      v7[0] = a2;

      v6 = sub_1DB39350C(v8, v7);
      sub_1DB3151CC(a1);

      return v6;
    }

    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {

    sub_1DB30623C(v8, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  return 0;
}

__n128 sub_1DB3929E4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB30C4B8(a1, &v13, &qword_1ECC42E38, &qword_1DB50FB80);
  if (*(&v14 + 1))
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
    sub_1DB300B14(v6, v12);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v13);
      sub_1DB3171C0(a1, v12);

      JSONObject.subscript.getter(0x6575676573, 0xE500000000000000, v10);
      v9 = a2;
      static AnyActionTypes.makeInstance(byDeserializing:using:)(v10, &v9, v11);
      sub_1DB3151CC(v12);
      sub_1DB3151CC(v10);

      sub_1DB30C7A8(v11, &v13);
      sub_1DB3151CC(a1);

      result = v13;
      v8 = v14;
      *a3 = v13;
      *(a3 + 16) = v8;
      *(a3 + 32) = v15;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(&v13);
  }

  else
  {

    sub_1DB30623C(&v13, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  sub_1DB3151CC(a1);
  *(a3 + 32) = 0;
  result.n128_u64[0] = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

void sub_1DB392C8C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1DB50B3E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v23 - v13;
  v24[0] = a2;
  v15 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(v24);
  sub_1DB3171C0(a1, v24);
  v24[5] = v15;
  v24[6] = MEMORY[0x1E69E7CC0];
  v23[3] = &type metadata for _JSONObjectDecoder;
  v23[4] = sub_1DB34A154();
  v23[0] = swift_allocObject();
  sub_1DB34A1A8(v24, v23[0] + 16);
  ShelfID.init(from:)(v23, &v25);
  if (v3)
  {
    sub_1DB34A204(v24);
    v24[0] = v3;
    v16 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {

      (*(v8 + 32))(v11, v14, v7);
      sub_1DB315178();
      swift_allocError();
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470F0, &unk_1DB50F4B0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1DB50EE90;
      *(v19 + 32) = swift_allocError();
      (*(v8 + 16))(v20, v11, v7);
      *v18 = &type metadata for ShelfID;
      v18[1] = v19;
      v18[2] &= 0xFFFFFFFFFFFFFF8uLL;
      swift_willThrow();
      sub_1DB3151CC(a1);
      (*(v8 + 8))(v11, v7);
    }

    else
    {
      sub_1DB3151CC(a1);
    }
  }

  else
  {
    sub_1DB3151CC(a1);
    sub_1DB34A204(v24);
    v21 = v26;
    v22 = v27;
    *a3 = v25;
    *(a3 + 16) = v21;
    *(a3 + 24) = v22;
  }
}

void sub_1DB392F64(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1DB50B3E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v22 - v13;
  v23[0] = a2;
  v15 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(v23);
  sub_1DB3171C0(a1, v23);
  v23[5] = v15;
  v23[6] = MEMORY[0x1E69E7CC0];
  v22[3] = &type metadata for _JSONObjectDecoder;
  v22[4] = sub_1DB34A154();
  v22[0] = swift_allocObject();
  sub_1DB34A1A8(v23, v22[0] + 16);
  PageID.init(from:)(v22, v24);
  if (v3)
  {
    sub_1DB34A204(v23);
    v23[0] = v3;
    v16 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {

      (*(v8 + 32))(v11, v14, v7);
      sub_1DB315178();
      swift_allocError();
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470F0, &unk_1DB50F4B0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1DB50EE90;
      *(v19 + 32) = swift_allocError();
      (*(v8 + 16))(v20, v11, v7);
      *v18 = &type metadata for PageID;
      v18[1] = v19;
      v18[2] &= 0xFFFFFFFFFFFFFF8uLL;
      swift_willThrow();
      sub_1DB3151CC(a1);
      (*(v8 + 8))(v11, v7);
    }

    else
    {
      sub_1DB3151CC(a1);
    }
  }

  else
  {
    sub_1DB3151CC(a1);
    sub_1DB34A204(v23);
    v21 = v24[1];
    *a3 = v24[0];
    a3[1] = v21;
  }
}

void sub_1DB393234(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1DB50B3E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v24 - v13;
  v25[0] = a2;
  v15 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(v25);
  sub_1DB3171C0(a1, v25);
  v25[5] = v15;
  v25[6] = MEMORY[0x1E69E7CC0];
  v24[3] = &type metadata for _JSONObjectDecoder;
  v24[4] = sub_1DB34A154();
  v24[0] = swift_allocObject();
  sub_1DB34A1A8(v25, v24[0] + 16);
  ComponentID.init(from:)(v24, v26);
  if (v3)
  {
    sub_1DB34A204(v25);
    v25[0] = v3;
    v16 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {

      (*(v8 + 32))(v11, v14, v7);
      sub_1DB315178();
      swift_allocError();
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470F0, &unk_1DB50F4B0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1DB50EE90;
      *(v19 + 32) = swift_allocError();
      (*(v8 + 16))(v20, v11, v7);
      *v18 = &type metadata for ComponentID;
      v18[1] = v19;
      v18[2] &= 0xFFFFFFFFFFFFFF8uLL;
      swift_willThrow();
      sub_1DB3151CC(a1);
      (*(v8 + 8))(v11, v7);
    }

    else
    {
      sub_1DB3151CC(a1);
    }
  }

  else
  {
    sub_1DB3151CC(a1);
    sub_1DB34A204(v25);
    v21 = v26[1];
    v22 = v27;
    v23 = v28;
    *a3 = v26[0];
    *(a3 + 16) = v21;
    *(a3 + 32) = v22;
    *(a3 + 40) = v23;
  }
}

unint64_t sub_1DB39350C(uint64_t a1, id *a2)
{
  v5 = sub_1DB50B3E0();
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v27[0] = *a2;

  v12 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(v27);
  sub_1DB3171C0(a1, v27);
  v27[5] = v12;
  v27[6] = MEMORY[0x1E69E7CC0];
  v26[3] = &type metadata for _JSONObjectDecoder;
  v26[4] = sub_1DB34A154();
  v26[0] = swift_allocObject();
  sub_1DB34A1A8(v27, v26[0] + 16);

  v13 = sub_1DB413864(v26);
  v27[8] = v14;
  if (v2)
  {
    sub_1DB34A204(v27);

    v27[0] = v2;
    v15 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {

      v16 = v25;
      (*(v25 + 32))(v8, v11, v5);
      sub_1DB315178();
      swift_allocError();
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470F0, &unk_1DB50F4B0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1DB50EE90;
      *(v19 + 32) = swift_allocError();
      (*(v16 + 16))(v20, v8, v5);
      *v18 = &type metadata for Models.AdamID;
      v18[1] = v19;
      v18[2] &= 0xFFFFFFFFFFFFFF8uLL;
      swift_willThrow();
      v21 = *a2;

      sub_1DB3151CC(a1);
      (*(v16 + 8))(v8, v5);
    }

    else
    {
      v22 = *a2;

      sub_1DB3151CC(a1);
    }
  }

  else
  {
    sub_1DB34A204(v27);

    sub_1DB3151CC(a1);
  }

  return v13;
}

uint64_t sub_1DB393828@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1DB50B120();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20[-v12 - 8];
  sub_1DB349C18();
  if (*(a1 + 16) && (v14 = sub_1DB30EDA8(v20), (v15 & 1) != 0))
  {
    sub_1DB300B14(*(a1 + 56) + 32 * v14, v21);
    sub_1DB314BE8(v20);
    sub_1DB300B14(v21, v20);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v21);
      v16 = *(AssociatedTypeWitness - 8);
      (*(v16 + 56))(v13, 0, 1, AssociatedTypeWitness);
      return (*(v16 + 32))(a4, v13, AssociatedTypeWitness);
    }

    else
    {
      (*(*(AssociatedTypeWitness - 8) + 56))(v13, 1, 1, AssociatedTypeWitness);
      result = (*(v10 + 8))(v13, v9);
      __break(1u);
    }
  }

  else
  {
    v18 = sub_1DB314BE8(v20);
    MEMORY[0x1EEE9AC00](v18);
    *(&v19 - 2) = a2;
    *(&v19 - 1) = a3;
    if (qword_1ECC420A0 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    if (v20[0] == 1)
    {
      sub_1DB3D66F0("JetCore/NetRequest.swift", 24, 2, 160, sub_1DB398CA0);
    }

    return (*(a3 + 16))(a2, a3);
  }

  return result;
}

uint64_t NetRequest.ScopeContainer.subscript.setter(uint64_t a1)
{
  sub_1DB397E58(a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(a1, AssociatedTypeWitness);
}

void (*NetRequest.ScopeContainer.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a5;
  v12[4] = v5;
  v12[1] = a3;
  v12[2] = a4;
  *v12 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[5] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v13[6] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[8] = v17;
  sub_1DB393828(*v5, a4, a5, v17);
  return sub_1DB393D1C;
}

void sub_1DB393D1C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v8 = (*a1)[3];
  v7 = (*a1)[4];
  v10 = (*a1)[1];
  v9 = (*a1)[2];
  v11 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[7], v4, v5);
    sub_1DB397E58(v3);
    v12 = *(v6 + 8);
    v12(v3, v5);
    v12(v4, v5);
  }

  else
  {
    sub_1DB397E58((*a1)[8]);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t NetRequest.ScopeContainer.subscript.setter(uint64_t a1, void *a2)
{
  v3 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  sub_1DB397F20(a1);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 8);

  return v5(a1, AssociatedTypeWitness);
}

void (*NetRequest.ScopeContainer.subscript.modify(void *a1, void *a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x48uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  v12 = MEMORY[0x1E69E77B0];
  v13 = *MEMORY[0x1E69E77B0];
  v10[4] = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[5] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v11[6] = v15;
  v16 = *(v15 + 64);
  if (v9)
  {
    v11[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
    v13 = *v12;
  }

  else
  {
    v11[7] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v11[8] = v17;
  sub_1DB393828(*v4, *(*a2 + v13 + 8), a4, v17);
  return sub_1DB394150;
}

void sub_1DB394150(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v7 = (*a1)[3];
  v8 = (*a1)[4];
  v10 = (*a1)[1];
  v9 = (*a1)[2];
  if (a2)
  {
    (*(v6 + 16))((*a1)[7], v4, v5);
    sub_1DB397E58(v3);
    v11 = *(v6 + 8);
    v11(v3, v5);
    v11(v4, v5);
  }

  else
  {
    v12 = *v2;

    sub_1DB397E58(v4);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t NetRequest.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NetRequest();
  v5 = (a2 + v4[5]);
  *v5 = 5522759;
  v5[1] = 0xE300000000000000;
  *(a2 + v4[6]) = 0;
  v6 = v4[7];
  v7 = MEMORY[0x1E69E7CC0];
  *(a2 + v6) = sub_1DB3136F0(MEMORY[0x1E69E7CC0]);
  *(a2 + v4[8]) = 0x403E000000000000;
  v8 = a2 + v4[9];
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  v9 = (a2 + v4[10]);
  *v9 = 0;
  v9[1] = 0;
  v10 = v4[11];
  *(a2 + v10) = sub_1DB313804(v7);
  v11 = sub_1DB509CA0();
  v12 = *(*(v11 - 8) + 32);

  return v12(a2, a1, v11);
}

uint64_t NetRequest.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v106 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v93 - v7;
  v9 = sub_1DB509CA0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = *a2;
  v14 = type metadata accessor for NetRequest();
  v15 = &a3[*(v14 + 20)];
  *v15 = 5522759;
  v15[1] = 0xE300000000000000;
  v100 = *(v14 + 24);
  *&a3[v100] = 0;
  v16 = *(v14 + 28);
  v17 = MEMORY[0x1E69E7CC0];
  v102 = sub_1DB3136F0(MEMORY[0x1E69E7CC0]);
  v98 = v16;
  *&a3[v16] = v102;
  v99 = *(v14 + 32);
  *&a3[v99] = 0x403E000000000000;
  v18 = &a3[*(v14 + 36)];
  *v18 = 0;
  *(v18 + 1) = 0;
  v103 = v18;
  v18[16] = 0;
  v19 = &a3[*(v14 + 40)];
  *v19 = 0;
  v19[1] = 0;
  v101 = v19;
  v20 = *(v14 + 44);
  v21 = sub_1DB313804(v17);
  *&v107 = v20;
  *&a3[v20] = v21;
  JSONObject.subscript.getter(7107189, 0xE300000000000000, &v115);
  JSONObject.url.getter(v8);
  sub_1DB3151CC(&v115);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_1DB30623C(v8, &unk_1ECC42B20, &unk_1DB50F6A0);
    sub_1DB315178();
    swift_allocError();
    *v22 = xmmword_1DB511610;
    *(v22 + 16) = v14 | 0x4000000000000000;
    *(v22 + 24) = MEMORY[0x1E69E7CC0];
    swift_willThrow();
    sub_1DB3151CC(v106);
LABEL_3:

    v23 = *(v103 + 1);
  }

  (*(v10 + 32))(v13, v8, v9);
  v96 = v10;
  v25 = *(v10 + 16);
  v95 = v13;
  v25(a3, v13, v9);
  JSONObject.subscript.getter(0x646F6874656DLL, 0xE600000000000000, &v115);
  v26 = JSONObject.string.getter();
  v28 = v27;
  sub_1DB3151CC(&v115);
  if (v28)
  {
    *v15 = v26;
    v15[1] = v28;
    v94 = v28;
  }

  else
  {
    v94 = 0xE300000000000000;
  }

  v29 = v105;
  v30 = v104;
  JSONObject.subscript.getter(0x6568636163, 0xE500000000000000, &v115);

  v31 = sub_1DB391C9C(&v115, v30);
  if ((v32 & 1) == 0)
  {
    *&a3[v100] = v31;
  }

  JSONObject.subscript.getter(0x73726564616568, 0xE700000000000000, v112);
  sub_1DB30C4B8(v112, &v110, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v111)
  {
    __swift_project_boxed_opaque_existential_1(&v110, v111);
    sub_1DB408B14(&v115);
    sub_1DB3151CC(v112);
    __swift_destroy_boxed_opaque_existential_0(&v110);
    if (*(&v116 + 1))
    {
      v33 = *__swift_project_boxed_opaque_existential_1(&v115, *(&v116 + 1));
      *&v110 = 0;
      sub_1DB50A4A0();
      v34 = v110;
      sub_1DB317740(&v115);
      if (v34)
      {

        *&a3[v98] = v34;
        v102 = v34;
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_1DB3151CC(v112);
    sub_1DB30623C(&v110, &qword_1ECC42E38, &qword_1DB50FB80);
    v115 = 0u;
    v116 = 0u;
    v117 = 0;
  }

  sub_1DB30623C(&v115, &qword_1ECC42EA0, &qword_1DB50FB88);
LABEL_15:
  JSONObject.subscript.getter(0x74756F656D6974, 0xE700000000000000, &v115);
  sub_1DB30C4B8(&v115, v112, &qword_1ECC42E38, &qword_1DB50FB80);
  v97 = v9;
  if (v114)
  {
    v35 = __swift_project_boxed_opaque_existential_1(v112, v114);
    sub_1DB300B14(v35, &v110);
    sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v36 = *&v109[0];
      [*&v109[0] doubleValue];
      v38 = v37;

      sub_1DB3151CC(&v115);
      __swift_destroy_boxed_opaque_existential_0(v112);
      *&a3[v99] = v38;
    }

    else
    {
      sub_1DB3151CC(&v115);
      __swift_destroy_boxed_opaque_existential_0(v112);
    }
  }

  else
  {
    sub_1DB3151CC(&v115);
    sub_1DB30623C(v112, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  v39 = 0xD00000000000001ALL;
  JSONObject.subscript.getter(0xD00000000000001ALL, 0x80000001DB52BD20, &v115);

  sub_1DB391F64(&v115, v30, v112);
  v40 = v112[0];
  v41 = v112[1];
  v42 = v113;
  v43 = v103;
  v44 = *(v103 + 1);

  *v43 = v40;
  *(v43 + 1) = v41;
  v43[16] = v42;
  JSONObject.subscript.getter(2036625250, 0xE400000000000000, &v115);
  v45 = JSONObject.string.getter();
  v47 = v46;
  sub_1DB3151CC(&v115);
  if (v47)
  {
    v48 = v101;
    *v101 = v45;
    v48[1] = v47;
  }

  v49 = v104;
  v50 = sub_1DB315A38(0xD00000000000001FLL, 0x80000001DB52A450, v104);
  if (!v50)
  {

    if (qword_1ECC42218 != -1)
    {
      goto LABEL_52;
    }

    goto LABEL_41;
  }

  v51 = v50;
  v105 = *(v50 + 16);
  if (!v105)
  {
LABEL_39:
    v105 = v29;

    goto LABEL_48;
  }

  v101 = v47;
  v39 = 0;
  v52 = (v50 + 40);
  while (v39 < *(v51 + 16))
  {
    v54 = *(v52 - 1);
    v55 = *v52;
    *&v115 = v49;
    sub_1DB349864(v106, &v115, v54, v55, v112);
    if (v29)
    {

      sub_1DB3151CC(v106);
      v89 = *(v96 + 8);
      v90 = v97;
      v89(v95, v97);

      v89(a3, v90);

      goto LABEL_3;
    }

    sub_1DB349C18();
    v56 = v114;
    v57 = __swift_project_boxed_opaque_existential_1(v112, v114);
    v111 = v56;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v110);
    (*(*(v56 - 8) + 16))(boxed_opaque_existential_0, v57, v56);
    sub_1DB30C200(&v110, v109);
    v59 = v107;
    v60 = *&a3[v107];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = *&a3[v59];
    v108 = v62;
    v63 = sub_1DB30EDA8(&v115);
    v65 = v62[2];
    v66 = (v64 & 1) == 0;
    v67 = __OFADD__(v65, v66);
    v68 = v65 + v66;
    if (v67)
    {
      goto LABEL_50;
    }

    v69 = v64;
    if (v62[3] < v68)
    {
      sub_1DB31A3F4(v68, isUniquelyReferenced_nonNull_native);
      v63 = sub_1DB30EDA8(&v115);
      if ((v69 & 1) != (v70 & 1))
      {
        result = sub_1DB50BC20();
        __break(1u);
        return result;
      }

LABEL_34:
      v71 = v108;
      if (v69)
      {
        goto LABEL_25;
      }

      goto LABEL_35;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_34;
    }

    v75 = v63;
    sub_1DB311B6C();
    v63 = v75;
    v71 = v108;
    if (v69)
    {
LABEL_25:
      v53 = (v71[7] + 32 * v63);
      __swift_destroy_boxed_opaque_existential_0(v53);
      sub_1DB30C200(v109, v53);
      sub_1DB314BE8(&v115);
      goto LABEL_26;
    }

LABEL_35:
    v71[(v63 >> 6) + 8] |= 1 << v63;
    v72 = v63;
    sub_1DB314C3C(&v115, v71[6] + 40 * v63);
    sub_1DB30C200(v109, (v71[7] + 32 * v72));
    sub_1DB314BE8(&v115);
    v73 = v71[2];
    v67 = __OFADD__(v73, 1);
    v74 = v73 + 1;
    if (v67)
    {
      goto LABEL_51;
    }

    v71[2] = v74;
LABEL_26:
    ++v39;
    *&a3[v107] = v71;
    __swift_destroy_boxed_opaque_existential_0(v112);
    v52 += 2;
    if (v105 == v39)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  swift_once();
LABEL_41:
  v76 = qword_1ECC466E8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1DB50F8D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v78 = swift_allocObject();
  v107 = xmmword_1DB50EE90;
  *(v78 + 16) = xmmword_1DB50EE90;
  v79 = MEMORY[0x1E69E6158];
  *(&v116 + 1) = MEMORY[0x1E69E6158];
  *&v115 = v39 + 24;
  *(&v115 + 1) = 0x80000001DB52BD40;
  *(v78 + 48) = 0u;
  *(v78 + 32) = 0u;
  sub_1DB301D4C(&v115, v78 + 32);
  *(v78 + 64) = 0;
  *(v77 + 32) = v78;
  v80 = swift_allocObject();
  *(v80 + 16) = v107;
  *(&v116 + 1) = v79;
  *&v115 = v39 + 20;
  *(&v115 + 1) = 0x80000001DB52BD80;
  *(v80 + 48) = 0u;
  *(v80 + 32) = 0u;
  sub_1DB301D4C(&v115, v80 + 32);
  *(v80 + 64) = 0;
  *(v77 + 40) = v80;
  v81 = sub_1DB50AF40();
  if (os_log_type_enabled(v76, v81))
  {
    if (qword_1EE30EDD8 != -1)
    {
      swift_once();
    }

    v82 = off_1EE30EDE0;
    os_unfair_lock_lock(off_1EE30EDE0 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v82[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v82 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v84 = swift_allocObject();
    *(v84 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v115 = v77;
    *(&v115 + 1) = sub_1DB31485C;
    *&v116 = v84;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
    sub_1DB314864();
    v85 = sub_1DB50A5E0();
    v87 = v86;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
    v88 = swift_allocObject();
    *(v88 + 16) = v107;
    *(v88 + 56) = v79;
    *(v88 + 64) = sub_1DB31494C();
    *(v88 + 32) = v85;
    *(v88 + 40) = v87;
    sub_1DB50A1E0();
  }

LABEL_48:

  v91 = v96;
  v92 = v95;
  sub_1DB3151CC(v106);
  return (*(v91 + 8))(v92, v97);
}

uint64_t NetRequest.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DB509CA0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NetRequest.url.setter(uint64_t a1)
{
  v3 = sub_1DB509CA0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NetRequest.method.getter()
{
  v1 = (v0 + *(type metadata accessor for NetRequest() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t NetRequest.method.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NetRequest() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t NetRequest.cache.setter(uint64_t a1)
{
  result = type metadata accessor for NetRequest();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t NetRequest.headers.getter()
{
  v1 = *(v0 + *(type metadata accessor for NetRequest() + 28));
}

uint64_t NetRequest.headers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NetRequest() + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t NetRequest.timeout.setter(double a1)
{
  result = type metadata accessor for NetRequest();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t NetRequest.body.getter()
{
  v1 = (v0 + *(type metadata accessor for NetRequest() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t NetRequest.body.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NetRequest() + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1DB3954C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44488, qword_1DB514F28);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1ECC44318 = result;
  return result;
}

uint64_t sub_1DB39551C()
{
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB52BE30);
  v0 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v0);

  MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB52BE50);

  MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52BE80);

  return 0;
}

uint64_t NetRequest.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *(v3 + *(type metadata accessor for NetRequest() + 44));

  return sub_1DB393828(v7, a1, a2, a3);
}

uint64_t NetRequest.subscript.setter(uint64_t a1)
{
  sub_1DB397F80(a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(a1, AssociatedTypeWitness);
}

void (*NetRequest.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v11[7] = v15;
  v17 = type metadata accessor for NetRequest();
  sub_1DB393828(*(v4 + *(v17 + 44)), a3, a4, v16);
  return sub_1DB395854;
}

void sub_1DB395854(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    sub_1DB397F80(v3);
    v11 = *(v6 + 8);
    v11(v3, v5);
    v11(v4, v5);
  }

  else
  {
    sub_1DB397F80((*a1)[7]);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t NetRequest.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  v7 = *(v3 + *(type metadata accessor for NetRequest() + 44));

  return sub_1DB393828(v7, v6, a2, a3);
}

uint64_t NetRequest.subscript.setter(uint64_t a1, void *a2)
{
  v3 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  sub_1DB398054(a1);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 8);

  return v5(a1, AssociatedTypeWitness);
}

void (*NetRequest.subscript.modify(void *a1, void *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v8[3] = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[4] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v9[5] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[6] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[6] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[7] = v13;
  NetRequest.subscript.getter(a2, a3, v13);
  return sub_1DB395C40;
}

void sub_1DB395C40(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v9 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    sub_1DB397F80(v3);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    v11 = *v2;

    sub_1DB397F80(v4);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t NetRequest.subscript.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for NetRequest() + 44));
}

{
  *a1 = *(v1 + *(type metadata accessor for NetRequest() + 44));
}

uint64_t NetRequest.subscript.setter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *a1;
  v7 = (*(a4 + 8))(a3, a4);
  v8 = v7;
  v9 = *(v7 + 16);
  if (!v9)
  {
LABEL_25:
  }

  v10 = 0;
  v11 = (v7 + 40);
  v12 = &qword_1ECC426B0;
  v46 = v7;
  while (v10 < *(v8 + 16))
  {
    v13 = *v11;
    v14 = *(v11 - 1);
    sub_1DB349C18();
    sub_1DB314C3C(v52, v51);
    v49[0] = v52[0];
    v49[1] = v52[1];
    v50 = v53;
    if (!*(v6 + 16))
    {
      goto LABEL_14;
    }

    v15 = sub_1DB30EDA8(v49);
    if ((v16 & 1) == 0)
    {

LABEL_14:
      sub_1DB314BE8(v49);
      v31 = *(type metadata accessor for NetRequest() + 44);
      v32 = *(v5 + v31);
      v33 = sub_1DB30EDA8(v51);
      if (v34)
      {
        v35 = v33;
        v36 = *(v5 + v31);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = *(v5 + v31);
        *&v47[0] = v38;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1DB311B6C();
          v38 = *&v47[0];
        }

        sub_1DB314BE8(*(v38 + 48) + 40 * v35);
        sub_1DB30C200((*(v38 + 56) + 32 * v35), v48);
        sub_1DB310394(v35, v38);
        sub_1DB314BE8(v51);
        *(v5 + v31) = v38;
      }

      else
      {
        sub_1DB314BE8(v51);
        memset(v48, 0, sizeof(v48));
      }

      sub_1DB30623C(v48, v12, &qword_1DB50EEB0);
      goto LABEL_5;
    }

    v17 = v9;
    v18 = v12;
    sub_1DB300B14(*(v6 + 56) + 32 * v15, v48);
    sub_1DB314BE8(v49);

    v19 = *(type metadata accessor for NetRequest() + 44);
    sub_1DB30C200(v48, v47);
    v20 = *(v5 + v19);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v5 + v19);
    v23 = sub_1DB30EDA8(v51);
    v25 = v22[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_27;
    }

    v29 = v24;
    if (v22[3] < v28)
    {
      sub_1DB31A3F4(v28, v21);
      v23 = sub_1DB30EDA8(v51);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_29;
      }

LABEL_19:
      v39 = v22;
      if ((v29 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    if (v21)
    {
      goto LABEL_19;
    }

    v41 = v23;
    sub_1DB311B6C();
    v23 = v41;
    v39 = v22;
    if ((v29 & 1) == 0)
    {
LABEL_22:
      v39[(v23 >> 6) + 8] |= 1 << v23;
      v42 = v23;
      sub_1DB314C3C(v51, v39[6] + 40 * v23);
      sub_1DB30C200(v47, (v39[7] + 32 * v42));
      sub_1DB314BE8(v51);
      v43 = v39[2];
      v27 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v27)
      {
        goto LABEL_28;
      }

      v39[2] = v44;
      goto LABEL_24;
    }

LABEL_20:
    v40 = (v39[7] + 32 * v23);
    __swift_destroy_boxed_opaque_existential_0(v40);
    sub_1DB30C200(v47, v40);
    sub_1DB314BE8(v51);
LABEL_24:
    *(v5 + v19) = v39;
    v12 = v18;
    v9 = v17;
    v8 = v46;
LABEL_5:
    ++v10;
    v11 += 2;
    if (v9 == v10)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

{
  sub_1DB398060(a1, a3, a4);
}

void (*NetRequest.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x28uLL);
  }

  *a1 = v9;
  v9[3] = a4;
  v9[4] = v4;
  v9[1] = a2;
  v9[2] = a3;
  *v9 = *(v4 + *(type metadata accessor for NetRequest() + 44));

  return sub_1DB396188;
}

void sub_1DB396188(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {

    NetRequest.subscript.setter(&v8, v6, v5, v4);
    v7 = *v2;
  }

  else
  {
    NetRequest.subscript.setter(&v8, a2, v5, v4);
  }

  free(v2);
}

uint64_t (*NetRequest.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, uint64_t a2)
{
  a1[2] = a4;
  a1[3] = v4;
  a1[1] = a3;
  *a1 = *(v4 + *(type metadata accessor for NetRequest() + 44));

  return sub_1DB3962F8;
}

uint64_t sub_1DB3962F8(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *a1;
  v5 = a1[1];
  if (a2)
  {
    v6 = *a1;

    v9 = v4;
    NetRequest.subscript.setter(&v9, v7, v5, v2);
  }

  else
  {
    v9 = *a1;
    return NetRequest.subscript.setter(&v9, a2, v5, v2);
  }
}

uint64_t sub_1DB3963A0()
{
  v1 = *v0;
  v2 = 7107189;
  v3 = 0x74756F656D6974;
  v4 = 0x6568636163;
  if (v1 != 4)
  {
    v4 = 0x73726564616568;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 2036625250;
  if (v1 != 1)
  {
    v5 = 0x646F6874656DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DB396444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB398A04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB396478(uint64_t a1)
{
  v2 = sub_1DB398094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB3964B4(uint64_t a1)
{
  v2 = sub_1DB398094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NetRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a1;
  v105 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v110 = &v97 - v4;
  v112 = sub_1DB509CA0();
  v109 = *(v112 - 8);
  v5 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v108 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44320, &qword_1DB514CF0);
  v111 = *(v113 - 8);
  v7 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v9 = &v97 - v8;
  v10 = type metadata accessor for NetRequest();
  v11 = (v10 - 8);
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v14[v11[7]];
  *v15 = 5522759;
  *(v15 + 1) = 0xE300000000000000;
  v107 = v11[8];
  *&v14[v107] = 0;
  v16 = v11[9];
  v17 = MEMORY[0x1E69E7CC0];
  *&v117 = sub_1DB3136F0(MEMORY[0x1E69E7CC0]);
  v106 = v16;
  *&v14[v16] = v117;
  v18 = v11[10];
  *(v18 + v14) = 0x403E000000000000;
  v19 = &v14[v11[11]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v114 = v19;
  v19[16] = 0;
  v20 = &v14[v11[12]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = v11[13];
  v116 = sub_1DB313804(v17);
  *&v14[v21] = v116;
  v22 = v118[4];
  __swift_project_boxed_opaque_existential_1(v118, v118[3]);
  sub_1DB398094();
  v23 = v115;
  sub_1DB50BDF0();
  if (v23)
  {
    v24 = v118;
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0(v24);

    v36 = *(v114 + 1);
  }

  v103 = v15;
  v25 = v110;
  v115 = v14;
  v104 = v18;
  v101 = v20;
  v102 = v21;
  LOBYTE(v125) = 0;
  sub_1DB50B740();
  v26 = v25;
  sub_1DB509C60();

  v27 = v109;
  v28 = v112;
  if ((*(v109 + 48))(v26, 1, v112) == 1)
  {
    v29 = v9;
    sub_1DB30623C(v26, &unk_1ECC42B20, &unk_1DB50F6A0);
    v30 = sub_1DB50B3E0();
    swift_allocError();
    v32 = v31;
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
    *v32 = v28;
    v34 = v118;
    v35 = v118[4];
    __swift_project_boxed_opaque_existential_1(v118, v118[3]);
    sub_1DB50BDB0();
    sub_1DB50B3C0();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    (*(v111 + 8))(v29, v113);
    v24 = v34;
    goto LABEL_5;
  }

  v38 = v108;
  (*(v27 + 32))(v108, v26, v28);
  (*(v27 + 16))(v115, v38, v28);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44330, &unk_1DB516CE0);
  LOBYTE(v124) = 2;
  v40 = sub_1DB3980E8();
  sub_1DB50B780();
  v99 = v40;
  v41 = v126;
  v100 = v39;
  if (v126)
  {
    v42 = v103;
    *v103 = v125;
    *(v42 + 1) = v41;
    v110 = v41;
  }

  else
  {
    v110 = 0xE300000000000000;
  }

  v43 = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44348, &qword_1DB514CF8);
  LOBYTE(v124) = 4;
  sub_1DB398244(&qword_1ECC44350, &qword_1ECC44348, &qword_1DB514CF8, sub_1DB398190);
  sub_1DB50B780();
  v44 = v115;
  if (v126 != 1)
  {
    *&v115[v107] = v125;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44370, &qword_1DB514D08);
  LOBYTE(v124) = 5;
  sub_1DB398244(&qword_1ECC44378, &qword_1ECC44370, &qword_1DB514D08, sub_1DB3982C0);
  sub_1DB50B710();
  v45 = v118;
  v46 = v125;
  if (v125)
  {

    *(v44 + v106) = v46;
    *&v117 = v46;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44390, &unk_1DB51EB60);
  LOBYTE(v124) = 3;
  sub_1DB398244(&qword_1ECC44398, &qword_1ECC44390, &unk_1DB51EB60, sub_1DB39833C);
  sub_1DB50B780();
  if ((v126 & 1) == 0)
  {
    *(v43 + v44) = v125;
  }

  LOBYTE(v124) = 1;
  sub_1DB50B710();
  v47 = v126;
  if (v126 >= 2)
  {
    v48 = v101;
    *v101 = v125;
    *(v48 + 1) = v47;
  }

  v49 = v45[4];
  __swift_project_boxed_opaque_existential_1(v45, v45[3]);
  v50 = sub_1DB50BDE0();
  JSONContext.init(userInfo:)(v50);
  v106 = v125;
  v107 = sub_1DB315A38(0xD00000000000001FLL, 0x80000001DB52A450, v125);
  v98 = v9;
  if (!v107)
  {

    if (qword_1ECC42218 != -1)
    {
LABEL_48:
      swift_once();
    }

    v51 = qword_1ECC466E8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1DB50F8D0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v53 = swift_allocObject();
    v117 = xmmword_1DB50EE90;
    *(v53 + 16) = xmmword_1DB50EE90;
    v54 = MEMORY[0x1E69E6158];
    v128 = MEMORY[0x1E69E6158];
    v125 = 0xD000000000000032;
    v126 = 0x80000001DB52BD40;
    *(v53 + 48) = 0u;
    *(v53 + 32) = 0u;
    sub_1DB301D4C(&v125, v53 + 32);
    *(v53 + 64) = 0;
    *(v52 + 32) = v53;
    v55 = swift_allocObject();
    *(v55 + 16) = v117;
    v128 = v54;
    v125 = 0xD00000000000002ELL;
    v126 = 0x80000001DB52BD80;
    *(v55 + 48) = 0u;
    *(v55 + 32) = 0u;
    sub_1DB301D4C(&v125, v55 + 32);
    *(v55 + 64) = 0;
    *(v52 + 40) = v55;
    v56 = sub_1DB50AF40();
    if (os_log_type_enabled(v51, v56))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v57 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v57[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v57 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v59 = swift_allocObject();
      *(v59 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      v125 = v52;
      v126 = sub_1DB314CB0;
      v127 = v59;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v60 = sub_1DB50A5E0();
      v62 = v61;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v63 = swift_allocObject();
      *(v63 + 16) = v117;
      *(v63 + 56) = v54;
      *(v63 + 64) = sub_1DB31494C();
      *(v63 + 32) = v60;
      *(v63 + 40) = v62;
      sub_1DB50A1E0();

      v45 = v118;
    }

    else
    {
    }

    v96 = v111;
    (*(v109 + 8))(v108, v112);
    (*(v96 + 8))(v98, v113);
    v44 = v115;
    goto LABEL_44;
  }

  sub_1DB30BE90(v45, &v124);
  JSONObject.init(from:)(&v124, &v125);
  v64 = *(v107 + 16);
  if (!v64)
  {
LABEL_43:

    sub_1DB3151CC(&v125);
    (*(v109 + 8))(v108, v112);
    (*(v111 + 8))(v98, v113);
    v45 = v118;
LABEL_44:
    sub_1DB3983B8(v44, v105);
    __swift_destroy_boxed_opaque_existential_0(v45);
    return sub_1DB39841C(v44);
  }

  v45 = 0;
  v65 = (v107 + 40);
  v66 = v116;
  v104 = *(v107 + 16);
  while (1)
  {
    v116 = v66;
    if (v45 >= *(v107 + 16))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v71 = *(v65 - 1);
    v70 = *v65;
    v124 = v106;
    sub_1DB349864(&v125, &v124, v71, v70, v122);
    sub_1DB349C18();
    v72 = v123;
    v73 = __swift_project_boxed_opaque_existential_1(v122, v123);
    v121 = v72;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v120);
    (*(*(v72 - 8) + 16))(boxed_opaque_existential_0, v73, v72);
    sub_1DB30C200(&v120, v119);
    v75 = v102;
    v76 = *(v44 + v102);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v44;
    v79 = isUniquelyReferenced_nonNull_native;
    v80 = v78;
    v81 = *(v78 + v75);
    v129 = v81;
    v83 = sub_1DB30EDA8(&v124);
    v84 = v81[2];
    v85 = (v82 & 1) == 0;
    v86 = v84 + v85;
    if (__OFADD__(v84, v85))
    {
      goto LABEL_46;
    }

    if (v81[3] < v86)
    {
      break;
    }

    if ((v79 & 1) == 0)
    {
      v94 = v83;
      v95 = v82;
      sub_1DB311B6C();
      v82 = v95;
      v64 = v104;
      v83 = v94;
    }

    v44 = v80;
LABEL_38:
    v66 = v129;
    if (v82)
    {
      v67 = v129;
      v68 = (v129[7] + 32 * v83);
      __swift_destroy_boxed_opaque_existential_0(v68);
      v69 = v68;
      v66 = v67;
      sub_1DB30C200(v119, v69);
      sub_1DB314BE8(&v124);
    }

    else
    {
      v90 = v83;
      v129[(v83 >> 6) + 8] |= 1 << v83;
      sub_1DB314C3C(&v124, v66[6] + 40 * v83);
      sub_1DB30C200(v119, (v66[7] + 32 * v90));
      sub_1DB314BE8(&v124);
      v91 = v66[2];
      v92 = __OFADD__(v91, 1);
      v93 = v91 + 1;
      if (v92)
      {
        goto LABEL_47;
      }

      v66[2] = v93;
    }

    v45 = (v45 + 1);
    *(v44 + v102) = v66;
    __swift_destroy_boxed_opaque_existential_0(v122);
    v65 += 2;
    if (v64 == v45)
    {
      goto LABEL_43;
    }
  }

  v87 = v82;
  sub_1DB31A3F4(v86, v79);
  v88 = sub_1DB30EDA8(&v124);
  if ((v87 & 1) == (v89 & 1))
  {
    v83 = v88;
    v82 = v87;
    v44 = v80;
    v64 = v104;
    goto LABEL_38;
  }

  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

uint64_t NetRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC443B0, &qword_1DB514D18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB398094();
  sub_1DB50BE40();
  LOBYTE(v39) = 0;
  sub_1DB509CA0();
  sub_1DB398478(&qword_1ECC440B0, MEMORY[0x1E6968FB0]);
  sub_1DB50B8A0();
  if (!v2)
  {
    v11 = type metadata accessor for NetRequest();
    v12 = (v1 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v39) = 2;
    sub_1DB50B860();
    *&v39 = *(v1 + v11[6]);
    LOBYTE(v42[0]) = 4;
    type metadata accessor for CachePolicy(0);
    sub_1DB398478(&qword_1ECC443B8, type metadata accessor for CachePolicy);
    sub_1DB50B8A0();
    *&v39 = *(v1 + v11[7]);
    LOBYTE(v42[0]) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44388, &unk_1DB51BD70);
    sub_1DB3984C0();
    sub_1DB50B8A0();
    v15 = *(v1 + v11[8]);
    LOBYTE(v39) = 3;
    sub_1DB50B880();
    v39 = *(v1 + v11[10]);
    LOBYTE(v42[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46C00, &qword_1DB516350);
    sub_1DB32500C(&qword_1ECC42FF0);
    sub_1DB50B8A0();
    v16 = a1[3];
    *&v37 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v16);
    v17 = sub_1DB50BE30();
    JSONContext.init(userInfo:)(v17);
    v18 = sub_1DB315A38(0xD00000000000001FLL, 0x80000001DB52A450, v39);

    if (v18)
    {
      v36 = *(v18 + 16);
      if (!v36)
      {
LABEL_19:

        return (*(v6 + 8))(v9, v5);
      }

      v19 = 0;
      *&v37 = *(v3 + v11[11]);
      v20 = (v18 + 40);
      v35 = v18;
      while (v19 < *(v18 + 16))
      {
        v11 = *(v20 - 1);
        v43 = *v20;
        sub_1DB349C18();
        if (*(v37 + 16) && (v21 = sub_1DB30EDA8(&v39), (v22 & 1) != 0))
        {
          sub_1DB300B14(*(v37 + 56) + 32 * v21, v38);
          sub_1DB314BE8(&v39);
          sub_1DB30C200(v38, v42);
          sub_1DB34991C(v42, a1, v11, v43);
          __swift_destroy_boxed_opaque_existential_0(v42);
        }

        else
        {
          sub_1DB314BE8(&v39);
        }

        v18 = v35;
        ++v19;
        v20 += 2;
        if (v36 == v19)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    else
    {
      v11 = 0xD00000000000001FLL;
      if (qword_1ECC42218 == -1)
      {
        goto LABEL_13;
      }
    }

    swift_once();
LABEL_13:
    v23 = qword_1ECC466E8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v24 = swift_allocObject();
    v37 = xmmword_1DB50EE90;
    *(v24 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v25 = swift_allocObject();
    *(v25 + 16) = v37;
    v41 = MEMORY[0x1E69E6158];
    *&v39 = v11 + 57;
    *(&v39 + 1) = 0x80000001DB52BDB0;
    *(v25 + 48) = 0u;
    *(v25 + 32) = 0u;
    sub_1DB301D4C(&v39, v25 + 32);
    *(v25 + 64) = 0;
    *(v24 + 32) = v25;
    v26 = sub_1DB50AF40();
    if (os_log_type_enabled(v23, v26))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v27 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v27[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v27 + 5);
      v43 = v23;
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v29 = swift_allocObject();
      *(v29 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v39 = v24;
      *(&v39 + 1) = sub_1DB314CB0;
      v40 = v29;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v30 = sub_1DB50A5E0();
      v32 = v31;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v33 = swift_allocObject();
      *(v33 + 16) = v37;
      *(v33 + 56) = MEMORY[0x1E69E6158];
      *(v33 + 64) = sub_1DB31494C();
      *(v33 + 32) = v30;
      *(v33 + 40) = v32;
      sub_1DB50A1E0();
    }

    goto LABEL_19;
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DB397E58(uint64_t a1)
{
  sub_1DB349C18();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a1, AssociatedTypeWitness);
  return sub_1DB30D524(v5, v6);
}

uint64_t type metadata accessor for NetRequest()
{
  result = qword_1ECC443C8;
  if (!qword_1ECC443C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB397F80(uint64_t a1)
{
  v2 = v1;
  sub_1DB349C18();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v8);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a1, AssociatedTypeWitness);
  v6 = v2 + *(type metadata accessor for NetRequest() + 44);
  return sub_1DB30D524(v8, v9);
}

unint64_t sub_1DB398094()
{
  result = qword_1ECC44328;
  if (!qword_1ECC44328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44328);
  }

  return result;
}

unint64_t sub_1DB3980E8()
{
  result = qword_1ECC44338;
  if (!qword_1ECC44338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44330, &unk_1DB516CE0);
    sub_1DB32500C(&qword_1ECC44340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44338);
  }

  return result;
}

unint64_t sub_1DB398190()
{
  result = qword_1ECC44358;
  if (!qword_1ECC44358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44360, &qword_1DB514D00);
    sub_1DB398478(&qword_1ECC44368, type metadata accessor for CachePolicy);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44358);
  }

  return result;
}

uint64_t sub_1DB398244(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB3982C0()
{
  result = qword_1ECC44380;
  if (!qword_1ECC44380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44388, &unk_1DB51BD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44380);
  }

  return result;
}

unint64_t sub_1DB39833C()
{
  result = qword_1ECC443A0;
  if (!qword_1ECC443A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC443A8, &qword_1DB514D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC443A0);
  }

  return result;
}

uint64_t sub_1DB3983B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB39841C(uint64_t a1)
{
  v2 = type metadata accessor for NetRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DB398478(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DB3984C0()
{
  result = qword_1ECC443C0;
  if (!qword_1ECC443C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44388, &unk_1DB51BD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC443C0);
  }

  return result;
}

void sub_1DB398564()
{
  sub_1DB509CA0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CachePolicy(319);
    if (v1 <= 0x3F)
    {
      sub_1DB398704(319, &qword_1ECC443D8);
      if (v2 <= 0x3F)
      {
        sub_1DB3986B8(319, &qword_1ECC443E0);
        if (v3 <= 0x3F)
        {
          sub_1DB3986B8(319, &qword_1EE30C860);
          if (v4 <= 0x3F)
          {
            sub_1DB398704(319, qword_1ECC443E8);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1DB3986B8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1DB50B120();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1DB398704(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1DB50A540();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1DB398758()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for NetRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DB398900()
{
  result = qword_1ECC44470;
  if (!qword_1ECC44470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44470);
  }

  return result;
}

unint64_t sub_1DB398958()
{
  result = qword_1ECC44478;
  if (!qword_1ECC44478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44478);
  }

  return result;
}

unint64_t sub_1DB3989B0()
{
  result = qword_1ECC44480;
  if (!qword_1ECC44480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44480);
  }

  return result;
}

uint64_t sub_1DB398A04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F6874656DLL && a2 == 0xE600000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6568636163 && a2 == 0xE500000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73726564616568 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DB50BA30();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1DB398BF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1DB398C60(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_1DB514CE0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  return result;
}

uint64_t sub_1DB398CA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1DB39551C();
}

uint64_t sub_1DB398D08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44490, &qword_1DB514F80);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44498, &qword_1DB514F88);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CD0];
  *(v0 + 16) = result;
  qword_1EE312DD8 = v0;
  return result;
}

uint64_t ActionMetrics.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v9);

  *a3 = sub_1DB320870(v9, v5);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, v9);
  v7 = v5;
  ScalarDictionary.init(tryDeserializing:using:)(v9, &v7, &v8);
  result = sub_1DB3151CC(a1);
  a3[1] = v8;
  return result;
}

void static ActionMetrics.notInstrumented.getter(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC8];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
}

JetCore::ActionMetrics __swiftcall ActionMetrics.init(data:custom:)(Swift::OpaquePointer data, JetCore::ScalarDictionary custom)
{
  v3 = *custom.values._rawValue;
  v2->_rawValue = data._rawValue;
  v2[1]._rawValue = v3;
  result.custom = custom;
  result.data = data;
  return result;
}

uint64_t ActionMetrics.data.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ActionMetrics.custom.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);

  *(v1 + 8) = v2;
  return result;
}

JetCore::ActionMetrics __swiftcall ActionMetrics.mergingWith(_:)(JetCore::ActionMetrics a1)
{
  v3 = v1;
  v4 = *a1.data._rawValue;
  v5 = *(a1.data._rawValue + 1);
  v6 = *v2;
  v7 = v2[1];
  v16 = MEMORY[0x1E69E7CC0];

  sub_1DB3990F8(v8);
  sub_1DB3990F8(v4);
  v9 = v16;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v7;
  sub_1DB399DEC(v5, sub_1DB34208C, 0, isUniquelyReferenced_nonNull_native, &v15);

  v11 = v15;

  *v3 = v9;
  v3[1] = v11;
  result.custom.values._rawValue = v13;
  result.data._rawValue = v12;
  return result;
}

uint64_t sub_1DB39900C(uint64_t result)
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

  result = sub_1DB302640(result, v12, 1, v3);
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

  memcpy((v3 + 16 * v8 + 32), (v6 + 32), 16 * v2);

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

uint64_t sub_1DB3990F8(uint64_t result)
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

  result = sub_1DB303390(result, v11, 1, v3);
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

uint64_t sub_1DB3991F0(uint64_t result)
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

  result = sub_1DB3034B0(result, v11, 1, v3);
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

uint64_t sub_1DB3992E4(uint64_t result)
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

  result = sub_1DB302404(result, v11, 1, v3);
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

uint64_t sub_1DB3993D8(uint64_t result)
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

  result = sub_1DB3041D0(result, v11, 1, v3);
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

uint64_t sub_1DB399510(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6D6F74737563;
  }

  else
  {
    v4 = 1635017060;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x6D6F74737563;
  }

  else
  {
    v6 = 1635017060;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DB50BA30();
  }

  return v9 & 1;
}

uint64_t sub_1DB3995AC()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB399624()
{
  *v0;
  sub_1DB50A740();
}

uint64_t sub_1DB399688()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB3996FC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DB50B680();

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

void sub_1DB39975C(uint64_t *a1@<X8>)
{
  v2 = 1635017060;
  if (*v1)
  {
    v2 = 0x6D6F74737563;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DB399790()
{
  if (*v0)
  {
    result = 0x6D6F74737563;
  }

  else
  {
    result = 1635017060;
  }

  *v0;
  return result;
}

uint64_t sub_1DB3997C0@<X0>(char *a1@<X8>)
{
  v2 = sub_1DB50B680();

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

uint64_t sub_1DB399824(uint64_t a1)
{
  v2 = sub_1DB39A0D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB399860(uint64_t a1)
{
  v2 = sub_1DB39A0D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActionMetrics.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC444A0, &qword_1DB514F90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB39A0D4();
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v16) = 0;
  if (sub_1DB50B7B0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC444C0, &qword_1DB514FA0);
    v15 = 0;
    sub_1DB39A1B0(&qword_1ECC444C8, sub_1DB39A128);
    sub_1DB50B780();
    v12 = v16;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  LOBYTE(v16) = 1;
  if (sub_1DB50B7B0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC444B0, &qword_1DB514F98);
    v15 = 1;
    sub_1DB39A328(&qword_1ECC444B8);
    sub_1DB50B780();
    (*(v6 + 8))(v9, v5);
    v13 = v16;
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    v13 = MEMORY[0x1E69E7CC8];
  }

  *a2 = v12;
  a2[1] = v13;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t ActionMetrics.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC444E0, &qword_1DB514FA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB39A0D4();

  sub_1DB50BE40();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC444C0, &qword_1DB514FA0);
  sub_1DB39A1B0(&qword_1ECC444E8, sub_1DB39A228);
  sub_1DB50B8A0();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC444B0, &qword_1DB514F98);
    sub_1DB39A328(&qword_1ECC44500);
    sub_1DB50B8A0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DB399DEC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v67 = a5;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v51 = -1 << *(a1 + 32);
  v9 = (63 - v6) >> 6;

  v10 = 0;
  v52 = v9;
  v53 = v5;
  while (1)
  {
    v15 = v8;
    v16 = v10;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v18 = __clz(__rbit64(v15)) | (v16 << 6);
    v19 = (*(a1 + 48) + 16 * v18);
    v20 = v19[1];
    v21 = *(a1 + 56) + 24 * v18;
    v23 = *v21;
    v22 = *(v21 + 8);
    v24 = *(v21 + 16);
    v58[0] = *v19;
    v58[1] = v20;
    v59 = v23;
    v60 = v22;
    v61 = v24;

    sub_1DB314BBC(v23, v22, v24);
    a2(&v62, v58);
    v25 = v59;
    v26 = v60;
    v27 = v61;

    sub_1DB31EB94(v25, v26, v27);
    v28 = v63;
    if (!v63)
    {
LABEL_22:
      sub_1DB2FEA60();
    }

    v29 = v62;
    v30 = v64;
    v31 = v65;
    v56 = v66;
    v32 = *v67;
    v34 = sub_1DB306160(v62, v63);
    v35 = *(v32 + 16);
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_24;
    }

    v38 = v33;
    if (*(v32 + 24) >= v37)
    {
      if ((a4 & 1) == 0)
      {
        sub_1DB3119D4();
      }
    }

    else
    {
      v39 = v67;
      sub_1DB31A114(v37, a4 & 1);
      v40 = *v39;
      v41 = sub_1DB306160(v29, v28);
      if ((v38 & 1) != (v42 & 1))
      {
        goto LABEL_26;
      }

      v34 = v41;
    }

    v43 = (v15 - 1) & v15;
    v44 = *v67;
    if (v38)
    {

      v11 = v44[7] + 24 * v34;
      v12 = *v11;
      v13 = *(v11 + 8);
      *v11 = v30;
      *(v11 + 8) = v31;
      v14 = *(v11 + 16);
      *(v11 + 16) = v56;
      sub_1DB31EB94(v12, v13, v14);
    }

    else
    {
      v44[(v34 >> 6) + 8] |= 1 << v34;
      v45 = (v44[6] + 16 * v34);
      *v45 = v29;
      v45[1] = v28;
      v46 = v44[7] + 24 * v34;
      *v46 = v30;
      *(v46 + 8) = v31;
      *(v46 + 16) = v56;
      v47 = v44[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_25;
      }

      v44[2] = v49;
    }

    a4 = 1;
    v10 = v16;
    v9 = v52;
    v5 = v53;
    v8 = v43;
  }

  v17 = v10;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v9)
    {
      goto LABEL_22;
    }

    v15 = *(v5 + 8 * v16);
    ++v17;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

unint64_t sub_1DB39A0D4()
{
  result = qword_1ECC444A8;
  if (!qword_1ECC444A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC444A8);
  }

  return result;
}

unint64_t sub_1DB39A15C()
{
  result = qword_1ECC444D8;
  if (!qword_1ECC444D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC444D8);
  }

  return result;
}

uint64_t sub_1DB39A1B0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC444C0, &qword_1DB514FA0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DB39A25C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC43090, &qword_1DB510230);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB39A2D4()
{
  result = qword_1ECC444F8;
  if (!qword_1ECC444F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC444F8);
  }

  return result;
}

uint64_t sub_1DB39A328(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC444B0, &qword_1DB514F98);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB39A3B8()
{
  result = qword_1ECC44508;
  if (!qword_1ECC44508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44508);
  }

  return result;
}

unint64_t sub_1DB39A410()
{
  result = qword_1ECC44510;
  if (!qword_1ECC44510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44510);
  }

  return result;
}

unint64_t sub_1DB39A468()
{
  result = qword_1ECC44518;
  if (!qword_1ECC44518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44518);
  }

  return result;
}

uint64_t sub_1DB39A4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1DB3171C0(a1, v6);
  v7 = a2;

  return Models.AlertAction.Button.init(deserializing:using:)(v6, &v7, a3);
}

uint64_t sub_1DB39A51C()
{
  sub_1DB30C4B8(v0, v5, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v6)
  {
    v1 = __swift_project_boxed_opaque_existential_1(v5, v6);
    sub_1DB300B14(v1, v4);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v5);
      return v3;
    }

    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    sub_1DB30623C(v5, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  return 0;
}

void *sub_1DB39A64C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1DB39A658@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1DB39A664()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DB50BCF0();
  sub_1DB50A740();
  return sub_1DB50BD30();
}

uint64_t sub_1DB39A6B0()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1DB50A740();
}

uint64_t sub_1DB39A6B8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DB50BCF0();
  sub_1DB50A740();
  return sub_1DB50BD30();
}

uint64_t _s7JetCore6ModelsO18HTTPTemplateActionV8FormBodyV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DB50BA30();
  }
}

__n128 Models.AlertAction.Button.init(title:role:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  result = *a5;
  v7 = *(a5 + 16);
  *(a6 + 32) = *a5;
  *(a6 + 48) = v7;
  *(a6 + 64) = *(a5 + 32);
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  return result;
}

__n128 Models.AlertAction.Button.init(title:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v5 = *(a3 + 16);
  *(a4 + 32) = *a3;
  *(a4 + 48) = v5;
  *(a4 + 64) = *(a3 + 32);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  return result;
}

uint64_t Models.AlertAction.Button.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  JSONObject.subscript.getter(0x656C746974, 0xE500000000000000, v15);
  v6 = JSONObject.string.getter();
  v8 = v7;
  sub_1DB3151CC(v15);
  if (v8)
  {
    *a3 = v6;
    a3[1] = v8;
    JSONObject.subscript.getter(0x6E6F69746361, 0xE600000000000000, v15);
    v14 = v5;
    static AnyActionTypes.tryToMakeInstance(byDeserializing:using:)(v15, &v14, (a3 + 4));
    sub_1DB3151CC(v15);

    JSONObject.subscript.getter(1701605234, 0xE400000000000000, v15);
    v9 = sub_1DB39A51C();
    v11 = v10;
    sub_1DB3151CC(a1);
    result = sub_1DB3151CC(v15);
    a3[2] = v9;
    a3[3] = v11;
  }

  else
  {

    sub_1DB315178();
    swift_allocError();
    *v13 = xmmword_1DB5151C0;
    *(v13 + 16) = 0x20000001F56F5DA8uLL;
    *(v13 + 24) = 0;
    swift_willThrow();
    return sub_1DB3151CC(a1);
  }

  return result;
}

uint64_t Models.AlertAction.Button.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Models.AlertAction.Button.role.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Models.AlertAction.Severity.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1DB50B680();

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

uint64_t Models.AlertAction.Severity.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6C61636974697263;
  }

  else
  {
    result = 0x74616D726F666E69;
  }

  *v0;
  return result;
}

uint64_t sub_1DB39AA10(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6C61636974697263;
  }

  else
  {
    v4 = 0x74616D726F666E69;
  }

  if (v3)
  {
    v5 = 0xED00006C616E6F69;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x6C61636974697263;
  }

  else
  {
    v6 = 0x74616D726F666E69;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xED00006C616E6F69;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DB50BA30();
  }

  return v9 & 1;
}

uint64_t sub_1DB39AAC4()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB39AB54()
{
  *v0;
  sub_1DB50A740();
}

uint64_t sub_1DB39ABD0()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB39AC5C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DB50B680();

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

void sub_1DB39ACBC(uint64_t *a1@<X8>)
{
  v2 = 0x74616D726F666E69;
  if (*v1)
  {
    v2 = 0x6C61636974697263;
  }

  v3 = 0xED00006C616E6F69;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

__n128 Models.AlertAction.init(actionMetrics:severity:icon:title:message:buttons:)@<Q0>(_OWORD *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = *a1;
  v9 = *(a3 + 48);
  *(a9 + 56) = *(a3 + 32);
  *(a9 + 72) = v9;
  *(a9 + 88) = *(a3 + 64);
  result = *a3;
  v11 = *(a3 + 16);
  *(a9 + 24) = *a3;
  *(a9 + 16) = *a2;
  v12 = *(a3 + 80);
  *(a9 + 40) = v11;
  *(a9 + 104) = v12;
  *(a9 + 112) = a4;
  *(a9 + 120) = a5;
  *(a9 + 128) = a6;
  *(a9 + 136) = a7;
  *(a9 + 144) = a8;
  return result;
}

uint64_t Models.AlertAction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(0x736E6F74747562, 0xE700000000000000, v38);
  JSONObject.array.getter(&v40);
  sub_1DB3151CC(v38);
  if (!*(&v41 + 1))
  {

    sub_1DB30623C(&v40, &qword_1ECC42E28, &qword_1DB50FB20);
    sub_1DB315178();
    swift_allocError();
    *v13 = xmmword_1DB5151D0;
    *(v13 + 16) = 0x20000001F56F5C98uLL;
    *(v13 + 24) = 0;
    swift_willThrow();
    return sub_1DB3151CC(a1);
  }

  v43[0] = v40;
  v43[1] = v41;
  v44 = v42;
  JSONObject.subscript.getter(0x654D6E6F69746361, 0xED00007363697274, v38);

  JSONObject.subscript.getter(1635017060, 0xE400000000000000, &v40);

  v7 = sub_1DB320870(&v40, v6);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, &v40);
  v34 = v6;
  ScalarDictionary.init(tryDeserializing:using:)(&v40, &v34, v37);
  sub_1DB3151CC(v38);
  v8 = v37[0];
  JSONObject.subscript.getter(0x7974697265766573, 0xE800000000000000, v38);
  sub_1DB30C4B8(v38, &v40, &qword_1ECC42E38, &qword_1DB50FB80);
  if (*(&v41 + 1))
  {
    v9 = __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
    sub_1DB300B14(v9, v37);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(&v40);
      v10 = sub_1DB50B680();

      sub_1DB3151CC(v38);
      if (v10 == 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_14;
    }

    sub_1DB3151CC(v38);
    __swift_destroy_boxed_opaque_existential_0(&v40);
  }

  else
  {
    sub_1DB3151CC(v38);
    sub_1DB30623C(&v40, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  v12 = 2;
LABEL_14:
  JSONObject.subscript.getter(1852793705, 0xE400000000000000, &v40);
  v37[0] = v6;

  MediaArtwork.init(deserializing:using:)(&v40, v37, v38);
  if (v3)
  {

    sub_1DB3151CC(a1);
    return sub_1DB314F08(v43);
  }

  else
  {
    v30 = v12;
    v33 = v8;
    v45 = v7;
    JSONObject.subscript.getter(0x656C746974, 0xE500000000000000, &v40);
    v29 = JSONObject.string.getter();
    v32 = v15;
    sub_1DB3151CC(&v40);
    JSONObject.subscript.getter(0x6567617373656DLL, 0xE700000000000000, v37);
    v28 = JSONObject.string.getter();
    v31 = v16;
    sub_1DB3151CC(v37);
    v17 = sub_1DB315220(v43, &v34);
    MEMORY[0x1EEE9AC00](v17);
    v27[2] = v6;
    v19 = v35;
    v18 = v36;
    __swift_project_boxed_opaque_existential_1(&v34, v35);
    v20 = (*(v18 + 48))(sub_1DB39B2FC, v27, &type metadata for Models.AlertAction.Button, v19, v18);

    sub_1DB3151CC(a1);
    sub_1DB314F08(v43);
    result = sub_1DB314F08(&v34);
    v21 = v38[3];
    *(a3 + 56) = v38[2];
    *(a3 + 72) = v21;
    *(a3 + 88) = v38[4];
    v22 = v38[1];
    *(a3 + 24) = v38[0];
    v23 = v33;
    *a3 = v45;
    *(a3 + 8) = v23;
    *(a3 + 16) = v30;
    v24 = v39;
    *(a3 + 40) = v22;
    v25 = v29;
    *(a3 + 104) = v24;
    *(a3 + 112) = v25;
    v26 = v28;
    *(a3 + 120) = v32;
    *(a3 + 128) = v26;
    *(a3 + 136) = v31;
    *(a3 + 144) = v20;
  }

  return result;
}

uint64_t Models.AlertAction.actionMetrics.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

double Models.AlertAction.icon.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1DB30C4B8(v1 + 24, v6, &qword_1ECC44520, &qword_1DB5151E0);
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  return result;
}

uint64_t Models.AlertAction.title.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t Models.AlertAction.message.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t sub_1DB39B488()
{
  v1 = *v0;
  v2 = 0x654D6E6F69746361;
  v3 = 0x656C746974;
  v4 = 0x6567617373656DLL;
  if (v1 != 4)
  {
    v4 = 0x736E6F74747562;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7974697265766573;
  if (v1 != 1)
  {
    v5 = 1852793705;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DB39B544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB39D4E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB39B56C(uint64_t a1)
{
  v2 = sub_1DB39C380();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB39B5A8(uint64_t a1)
{
  v2 = sub_1DB39C380();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB39B6AC()
{
  v1 = 0x6E6F69746361;
  if (*v0 != 1)
  {
    v1 = 1701605234;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1DB39B6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB39D6E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB39B720(uint64_t a1)
{
  v2 = sub_1DB39BAAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB39B75C(uint64_t a1)
{
  v2 = sub_1DB39BAAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.AlertAction.Button.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44528, &qword_1DB5151E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_1DB39BAAC();
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21[2] = v10;
  LOBYTE(v23[0]) = 0;
  v25[0] = sub_1DB50B740();
  v25[1] = v12;
  v21[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44538, &qword_1DB5151F0);
  v29 = 2;
  sub_1DB39BB00();
  sub_1DB50B710();
  v13 = *(&v23[0] + 1);
  v14 = *&v23[0];
  if (*(&v23[0] + 1) == 1)
  {
    v14 = 0;
    v13 = 0;
  }

  v25[2] = v14;
  v25[3] = v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_1DB50BDE0();
  v17 = sub_1DB31F3BC(0xD000000000000023, 0x80000001DB5298A0, v16);
  v19 = v18;

  if (v17)
  {
    v20 = v19;
  }

  else
  {
    v20 = &off_1F56F1850;
  }

  v29 = 1;
  decodeActionModel<A, B>(using:container:forKey:)(v20, v23);
  (*(v5 + 8))(v8, v4);
  v26 = v23[0];
  v27 = v23[1];
  v28 = v24;
  sub_1DB39BC5C(v25, v22);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1DB39BC94(v25);
}

unint64_t sub_1DB39BAAC()
{
  result = qword_1ECC44530;
  if (!qword_1ECC44530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44530);
  }

  return result;
}

unint64_t sub_1DB39BB00()
{
  result = qword_1ECC44540;
  if (!qword_1ECC44540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44538, &qword_1DB5151F0);
    sub_1DB39BB84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44540);
  }

  return result;
}

unint64_t sub_1DB39BB84()
{
  result = qword_1ECC44548;
  if (!qword_1ECC44548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44550, &qword_1DB5151F8);
    sub_1DB39BC08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44548);
  }

  return result;
}

unint64_t sub_1DB39BC08()
{
  result = qword_1ECC44558;
  if (!qword_1ECC44558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44558);
  }

  return result;
}

uint64_t Models.AlertAction.Button.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44560, &qword_1DB515200);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_1DB39BAAC();
  sub_1DB50BE40();
  v10 = *v1;
  v11 = v1[1];
  LOBYTE(v23) = 0;
  v12 = v22;
  sub_1DB50B860();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v21 = v9;
  v22 = v4;
  v23 = *(v1 + 1);
  v24 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44550, &qword_1DB5151F8);
  sub_1DB39BF44();
  sub_1DB50B8A0();
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_1DB50BE30();
  v16 = sub_1DB31F3BC(0xD000000000000023, 0x80000001DB5298A0, v15);
  v18 = v17;

  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = &type metadata for EmptyActionKindTable;
  }

  if (v16)
  {
    v20 = v18;
  }

  else
  {
    v20 = &off_1F56F1850;
  }

  LOBYTE(v23) = 1;
  encodeActionModel<A, B>(_:using:container:forKey:)((v1 + 4), v19, v7, &v23, v19, &_s11AlertActionV6ButtonV10CodingKeysON, v20);
  return (*(v22 + 8))(v7, v3);
}

unint64_t sub_1DB39BF44()
{
  result = qword_1ECC44568;
  if (!qword_1ECC44568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44550, &qword_1DB5151F8);
    sub_1DB39BFC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44568);
  }

  return result;
}

unint64_t sub_1DB39BFC8()
{
  result = qword_1ECC44570;
  if (!qword_1ECC44570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44570);
  }

  return result;
}

uint64_t Models.AlertAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44578, &qword_1DB515208);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB39C380();
  sub_1DB50BE40();
  v11 = *(v3 + 8);
  *&v15 = *v3;
  *(&v15 + 1) = v11;
  v14 = 0;
  sub_1DB37BCC8();

  sub_1DB50B8A0();
  if (v2)
  {
  }

  else
  {

    LOBYTE(v15) = *(v3 + 16);
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44588, &qword_1DB515210);
    sub_1DB39C3D4();
    sub_1DB50B8A0();
    LOBYTE(v15) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44520, &qword_1DB5151E0);
    sub_1DB39CD20(&qword_1ECC445B0);
    sub_1DB50B8A0();
    v15 = *(v3 + 112);
    v14 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44330, &unk_1DB516CE0);
    sub_1DB39C530();
    sub_1DB50B8A0();
    v15 = *(v3 + 128);
    v14 = 4;
    sub_1DB50B8A0();
    *&v15 = *(v3 + 144);
    v14 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC445C8, &qword_1DB515220);
    sub_1DB39C5D8();
    sub_1DB50B8A0();
  }

  return (*(v6 + 8))(v9, v5);
}