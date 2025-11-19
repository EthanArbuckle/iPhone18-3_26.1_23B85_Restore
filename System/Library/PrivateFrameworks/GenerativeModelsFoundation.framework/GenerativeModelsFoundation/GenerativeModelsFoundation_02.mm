uint64_t sub_18E17E2F4()
{
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  v7 = *(*v1 + 64);
  v2 = *v1;
  sub_18E159064();
  *v8 = v2;
  v2[15] = v0;

  v5(v6, v7);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18E17E4A4, 0, 0);
  }

  else
  {
    v10 = v2[10];
    v9 = v2[11];

    sub_18E1594CC();

    return v11();
  }
}

uint64_t sub_18E17E4A4()
{
  v2 = v0[10];
  v1 = v0[11];

  sub_18E1594CC();
  v4 = v0[15];

  return v3();
}

uint64_t sub_18E17E50C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_18E17E554(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*(*a3 + 16) || (result = sub_18E177A80(a1), (v10 & 1) == 0))
  {
    v11 = swift_unknownObjectRetain();

    return sub_18E17E5E8(v11, a1, a3, a4, a5);
  }

  return result;
}

unint64_t sub_18E17E5E8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *a3;
  result = sub_18E17E664(a1, a2, isUniquelyReferenced_nonNull_native, &v13, a4, a5);
  *a3 = v13;
  return result;
}

unint64_t sub_18E17E664(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a4;
  v12 = sub_18E177A80(a2);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  sub_18E161880(&qword_1EABD0AE0, &qword_18E1AC168);
  if ((sub_18E1A7940() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *a4;
  v17 = sub_18E177A80(a2);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
    result = sub_18E1A7BB0();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *a4;
  if (v15)
  {
    v20 = (v19[7] + 16 * v14);
    v21 = *v20;
    *v20 = a1;
    v20[1] = a6;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_18E15DF6C(a2, v23, &qword_1EABD0988, &unk_18E1AB600);
    return sub_18E17E7D4(v14, v23, a1, v19, a5, a6);
  }
}

unint64_t sub_18E17E7D4(unint64_t result, _OWORD *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v6 = (a4[6] + 48 * result);
  v7 = a2[1];
  *v6 = *a2;
  v6[1] = v7;
  v6[2] = a2[2];
  v8 = (a4[7] + 16 * result);
  *v8 = a3;
  v8[1] = a6;
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

uint64_t ModelManagerSessionWrapper.__allocating_init(session:)()
{
  sub_18E1595A8();
  swift_allocObject();
  sub_18E161880(&qword_1EABD0AE8, &qword_18E1AC170);
  sub_18E159140();
  v0 = swift_allocObject();
  return sub_18E15D768(v0);
}

uint64_t ModelManagerSessionWrapper.init(session:)()
{
  sub_18E161880(&qword_1EABD0AE8, &qword_18E1AC170);
  sub_18E159140();
  v0 = swift_allocObject();
  return sub_18E15D768(v0);
}

uint64_t ModelManagerSessionWrapper.__allocating_init(from:)()
{
  sub_18E1595A8();
  swift_allocObject();
  sub_18E161880(&qword_1EABD0AE8, &qword_18E1AC170);
  sub_18E159140();
  v0 = swift_allocObject();
  return sub_18E15914C(v0);
}

uint64_t ModelManagerSessionWrapper.init(from:)()
{
  sub_18E161880(&qword_1EABD0AE8, &qword_18E1AC170);
  sub_18E159140();
  v0 = swift_allocObject();
  return sub_18E15914C(v0);
}

uint64_t ModelManagerSessionWrapper.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_18E17E9D4@<X0>(uint64_t *a1@<X8>)
{
  result = ModelManagerSessionWrapper.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_18E17EA1C()
{
  result = qword_1EABD0AF0;
  if (!qword_1EABD0AF0)
  {
    type metadata accessor for ModelManagerSessionWrapper();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0AF0);
  }

  return result;
}

uint64_t sub_18E17EACC(uint64_t a1)
{
  v2 = sub_18E17EB78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E17EB08(uint64_t a1)
{
  v2 = sub_18E17EB78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_18E17EB78()
{
  result = qword_1EABD01C0;
  if (!qword_1EABD01C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD01C0);
  }

  return result;
}

uint64_t InputDenyListBundle.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_18E1A75C0();
}

uint64_t _s16GenerativeModels19InputDenyListBundleV8resourceACx_tc12ModelCatalog05TokencdE0RzlufC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(*(a3 + 8) + 8);
  v8 = sub_18E1A6F60();
  v10 = v9;
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v8;
  a4[1] = v10;
  return result;
}

uint64_t _s16GenerativeModels19InputDenyListBundleV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_18E1A7B90();
  }
}

uint64_t sub_18E17ECF0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E1A7B90();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E17ED70(uint64_t a1)
{
  v2 = sub_18E15C358();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E17EDAC(uint64_t a1)
{
  v2 = sub_18E15C358();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E17EE1C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v19 = a4;
  v6 = sub_18E161880(a2, a3);
  v7 = sub_18E159050(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7, v12);
  v14 = &v18 - v13;
  v15 = v4[1];
  v18 = *v4;
  v16 = a1[4];
  sub_18E158E00(a1, a1[3]);
  v19();
  sub_18E1A7CD0();
  sub_18E1A7B00();
  return (*(v9 + 8))(v14, v6);
}

uint64_t _s16GenerativeModels19InputDenyListBundleV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18E1A7C60();
  sub_18E1A75C0();
  return sub_18E1A7CA0();
}

uint64_t sub_18E17EFA4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18E1A7C60();
  sub_18E1A75C0();
  return sub_18E1A7CA0();
}

unint64_t sub_18E17EFF0()
{
  result = qword_1EABD0B18;
  if (!qword_1EABD0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0B18);
  }

  return result;
}

unint64_t sub_18E17F048()
{
  result = qword_1EABD0B20;
  if (!qword_1EABD0B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0B20);
  }

  return result;
}

unint64_t sub_18E17F0D8()
{
  result = qword_1EABD0B28;
  if (!qword_1EABD0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0B28);
  }

  return result;
}

unint64_t sub_18E17F130()
{
  result = qword_1EABD0B30;
  if (!qword_1EABD0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0B30);
  }

  return result;
}

unint64_t sub_18E17F188()
{
  result = qword_1EABD01B0;
  if (!qword_1EABD01B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD01B0);
  }

  return result;
}

unint64_t sub_18E17F1E0()
{
  result = qword_1EABD01B8;
  if (!qword_1EABD01B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD01B8);
  }

  return result;
}

uint64_t sub_18E17F258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[60] = a2;
  v3[61] = a3;
  v3[59] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18E17F27C, 0, 0);
}

uint64_t sub_18E17F27C()
{
  sub_18E16BBD0(*(v0 + 480), v0 + 112);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 432);
    *(v0 + 496) = *(v0 + 440);
    v2 = swift_task_alloc();
    *(v0 + 504) = v2;
    *v2 = v0;
    v2[1] = sub_18E17F5F8;
    v3 = *(v0 + 488);
    sub_18E15A220();

    return StringResponseSanitizerWithConfiguration.scrub(_:)(v4, v5);
  }

  sub_18E16BBD0(*(v0 + 480), v0 + 144);
  *(v0 + 536) = sub_18E161880(&qword_1EABD0B40, &qword_18E1AC698);
  if (!swift_dynamicCast())
  {
    sub_18E16BBD0(*(v0 + 480), v0 + 176);
    *(v0 + 608) = sub_18E161880(&qword_1EABD0B48, &unk_18E1AC6A0);
    if (!swift_dynamicCast())
    {
      sub_18E16BBD0(*(v0 + 480), *(v0 + 472));
      goto LABEL_28;
    }

    result = *(v0 + 456);
    *(v0 + 616) = result;
    v18 = *(result + 16);
    *(v0 + 624) = v18;
    v10 = MEMORY[0x1E69E7CC0];
    *(v0 + 640) = MEMORY[0x1E69E7CC0];
    *(v0 + 632) = 0;
    if (v18)
    {
      if (!*(result + 16))
      {
        __break(1u);
        return result;
      }

      sub_18E16BBD0(result + 32, v0 + 208);
      swift_task_alloc();
      sub_18E15B77C();
      *(v0 + 648) = v19;
      *v19 = v20;
      sub_18E1595D0(v19);
      goto LABEL_21;
    }

    v34 = *(v0 + 608);
    v35 = *(v0 + 472);

LABEL_27:
    v35[3] = v34;
    *v35 = v10;
LABEL_28:
    sub_18E15A7EC();
    sub_18E15A220();

    __asm { BRAA            X1, X16 }
  }

  v8 = *(v0 + 448);
  *(v0 + 544) = v8;
  v9 = sub_18E1A7490();
  v10 = v9;
  v11 = *(v8 + 32);
  *(v0 + 664) = v11;
  v12 = -1;
  v13 = -1 << v11;
  v14 = *(v8 + 64);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  *(v0 + 552) = v9;
  v15 = v12 & v14;
  if (v15)
  {
    v16 = 0;
    v17 = *(v0 + 544);
LABEL_18:
    v23 = __clz(__rbit64(v15)) | (v16 << 6);
    v24 = (*(v17 + 48) + 16 * v23);
    v26 = *v24;
    v25 = v24[1];
    sub_18E16BBD0(*(v17 + 56) + 32 * v23, v0 + 304);
    *(v0 + 64) = v26;
    *(v0 + 72) = v25;
    sub_18E177BE0((v0 + 304), (v0 + 80));

    v27 = v16;
  }

  else
  {
    v21 = 0;
    v22 = ((63 - v13) >> 6) - 1;
    while (v22 != v21)
    {
      v16 = v21 + 1;
      v17 = *(v0 + 544);
      v15 = *(v17 + 8 * v21++ + 72);
      if (v15)
      {
        goto LABEL_18;
      }
    }

    sub_18E15D628();
  }

  *(v0 + 568) = v27;
  sub_18E15D9E4();
  if (!v28)
  {
    v33 = *(v0 + 544);
    v34 = *(v0 + 536);
    v35 = *(v0 + 472);

    goto LABEL_27;
  }

  sub_18E15A414();
  swift_task_alloc();
  sub_18E15B77C();
  *(v0 + 592) = v29;
  *v29 = v30;
  sub_18E159194(v29);
LABEL_21:
  sub_18E15A220();

  return sub_18E17F258(v31);
}

uint64_t sub_18E17F5F8(uint64_t a1, uint64_t a2)
{
  sub_18E15D468();
  v7 = v6;
  sub_18E15A7FC();
  *v8 = v7;
  v10 = *(v9 + 504);
  v11 = *v3;
  sub_18E159064();
  *v12 = v11;
  v7[64] = v2;

  if (!v2)
  {
    v13 = v7[62];

    v7[65] = a2;
    v7[66] = a1;
  }

  sub_18E159FD4();
  sub_18E15A220();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_18E17F720()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[59];
  v3[3] = MEMORY[0x1E69E6158];
  *v3 = v1;
  v3[1] = v2;
  sub_18E15A7EC();
  return v4();
}

uint64_t sub_18E17F75C()
{
  sub_18E15A288();
  sub_18E15D468();
  v3 = v2;
  sub_18E15A7FC();
  *v4 = v3;
  v6 = *(v5 + 592);
  v7 = *v1;
  sub_18E159064();
  *v8 = v7;
  v3[75] = v0;

  if (v0)
  {
    v9 = v3[72];
    v10 = v3[69];
  }

  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_18E17F86C()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 552);
  sub_18E177BE0((v0 + 368), (v0 + 400));
  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 464) = v3;
  result = sub_18E159728(v1, v2);
  if (__OFADD__(*(v3 + 16), (v5 & 1) == 0))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v6 = result;
  v7 = v5;
  sub_18E161880(&qword_1EABD0970, &unk_18E1AB558);
  if (sub_18E1A7940())
  {
    v8 = *(v0 + 464);
    v9 = sub_18E159728(*(v0 + 584), *(v0 + 576));
    if ((v7 & 1) != (v10 & 1))
    {
      sub_18E15A220();

      return sub_18E1A7BB0();
    }

    v6 = v9;
  }

  if (v7)
  {
    v12 = *(v0 + 576);

    v13 = *(v0 + 464);
    v14 = (v13[7] + 32 * v6);
    sub_18E158EC4(v14);
    sub_18E177BE0((v0 + 400), v14);
    result = sub_18E158EC4((v0 + 336));
  }

  else
  {
    v15 = *(v0 + 584);
    v16 = *(v0 + 576);
    v13 = *(v0 + 464);
    v13[(v6 >> 6) + 8] |= 1 << v6;
    v17 = (v13[6] + 16 * v6);
    *v17 = v15;
    v17[1] = v16;
    sub_18E177BE0((v0 + 400), (v13[7] + 32 * v6));
    result = sub_18E158EC4((v0 + 336));
    v18 = v13[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
LABEL_29:
      __break(1u);
      return result;
    }

    v13[2] = v20;
  }

  v21 = *(v0 + 568);
  v22 = *(v0 + 560);
  *(v0 + 552) = v13;
  if (!v22)
  {
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= (((1 << *(v0 + 664)) + 63) >> 6))
      {
        sub_18E15D628();
        goto LABEL_19;
      }

      v23 = *(v0 + 544);
      v22 = *(v23 + 8 * v24 + 64);
      ++v21;
      if (v22)
      {
        v21 = v24;
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v23 = *(v0 + 544);
LABEL_18:
  v25 = __clz(__rbit64(v22)) | (v21 << 6);
  v26 = (*(v23 + 48) + 16 * v25);
  v28 = *v26;
  v27 = v26[1];
  sub_18E16BBD0(*(v23 + 56) + 32 * v25, v0 + 304);
  *(v0 + 64) = v28;
  *(v0 + 72) = v27;
  sub_18E177BE0((v0 + 304), (v0 + 80));

LABEL_19:
  *(v0 + 568) = v21;
  sub_18E15D9E4();
  if (!v29)
  {
    v33 = *(v0 + 544);
    v34 = *(v0 + 536);
    v35 = *(v0 + 472);

    v35[3] = v34;
    *v35 = v13;
    sub_18E15A7EC();
    sub_18E15A220();

    __asm { BRAA            X1, X16 }
  }

  sub_18E15A414();
  swift_task_alloc();
  sub_18E15B77C();
  *(v0 + 592) = v30;
  *v30 = v31;
  sub_18E159194();
  sub_18E15A220();

  return sub_18E17F258();
}

uint64_t sub_18E17FB50()
{
  sub_18E15D468();
  v3 = v2;
  sub_18E15A7FC();
  *v4 = v3;
  v6 = *(v5 + 648);
  v7 = *v1;
  sub_18E159064();
  *v8 = v7;
  v3[82] = v0;

  if (v0)
  {
    v9 = v3[80];
    v10 = v3[77];
    sub_18E158EC4(v3 + 26);
  }

  else
  {
    sub_18E158EC4(v3 + 26);
  }

  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_18E17FC80()
{
  v1 = *(v0 + 640);
  sub_18E16BBD0(v0 + 240, v0 + 272);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 640);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v3 + 16);
    v14 = *(v0 + 640);
    sub_18E19EB8C();
    v3 = v15;
  }

  v4 = *(v3 + 16);
  if (v4 >= *(v3 + 24) >> 1)
  {
    sub_18E19EB8C();
    v3 = v16;
  }

  sub_18E158EC4((v0 + 240));
  *(v3 + 16) = v4 + 1;
  sub_18E177BE0((v0 + 272), (v3 + 32 * v4 + 32));
  v5 = *(v0 + 632) + 1;
  *(v0 + 640) = v3;
  *(v0 + 632) = v5;
  result = *(v0 + 616);
  if (v5 == *(v0 + 624))
  {
    v7 = *(v0 + 608);
    v8 = *(v0 + 472);

    v8[3] = v7;
    *v8 = v3;
    sub_18E15A7EC();

    return v9();
  }

  else if (v5 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    sub_18E16BBD0(result + 32 * v5 + 32, v0 + 208);
    swift_task_alloc();
    sub_18E15B77C();
    *(v0 + 648) = v10;
    *v10 = v11;
    v12 = sub_18E1595D0();

    return sub_18E17F258(v12);
  }

  return result;
}

uint64_t sub_18E17FE0C()
{
  sub_18E15A288();
  v1 = *(v0 + 496);

  v2 = *(v0 + 512);
  sub_18E1594CC();

  return v3();
}

uint64_t sub_18E17FE68()
{
  sub_18E15A288();
  v1 = v0[68];

  sub_18E158EC4(v0 + 42);
  v2 = v0[75];
  sub_18E1594CC();

  return v3();
}

uint64_t sub_18E17FECC()
{
  v1 = *(v0 + 656);
  sub_18E1594CC();
  return v2();
}

uint64_t static Generable.decode(data:sanitizerWithConfiguration:)()
{
  sub_18E15A288();
  v0[18] = v1;
  v0[19] = v2;
  v0[16] = v3;
  v0[17] = v4;
  v0[14] = v5;
  v0[15] = v6;
  v7 = sub_18E1A7260();
  v0[20] = v7;
  v8 = *(v7 - 8);
  v0[21] = v8;
  v9 = *(v8 + 64) + 15;
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v10 = *(*(sub_18E161880(&qword_1EABD0B38, &qword_18E1AC688) - 8) + 64) + 15;
  v0[24] = swift_task_alloc();
  v11 = type metadata accessor for StringResponseSanitizerWithConfiguration(0);
  v0[25] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v0[26] = swift_task_alloc();
  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_18E180024()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[18];
  sub_18E1A7280();
  v6 = v0[24];
  v7 = v0[25];
  sub_18E18056C(v0[17], v6);
  v8 = sub_18E15D690(v6, 1, v7);
  if (v8 == 1)
  {
    sub_18E1805DC(v0[24]);
    v9 = v0[22];
    v10 = v0[23];
    v11 = v0[20];
    v12 = v0[21];
    v14 = v0[18];
    v13 = v0[19];
    v15 = v0[14];
    sub_18E16BBD0((v0 + 2), (v0 + 6));
    sub_18E1A7250();
    (*(v12 + 16))(v9, v10, v11);
    sub_18E1A7270();
    v19 = sub_18E15A858();
    v20(v19);
    sub_18E158EC4(v0 + 2);

    sub_18E15A7EC();

    return v21();
  }

  else
  {
    sub_18E180644(v0[24], v0[26]);
    swift_task_alloc();
    sub_18E15B77C();
    v0[27] = v16;
    *v16 = v17;
    v16[1] = sub_18E180258;
    v18 = v0[26];

    return sub_18E17F258((v0 + 10), (v0 + 2), v18);
  }
}

uint64_t sub_18E180258()
{
  sub_18E15A288();
  sub_18E15D468();
  sub_18E15A7FC();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  sub_18E159064();
  *v7 = v6;
  *(v8 + 224) = v0;

  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18E180354()
{
  sub_18E1806A8(*(v0 + 208));
  sub_18E158EC4((v0 + 16));
  sub_18E177BE0((v0 + 80), (v0 + 16));
  v1 = *(v0 + 224);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v8 = *(v0 + 112);
  sub_18E16BBD0(v0 + 16, v0 + 48);
  sub_18E1A7250();
  (*(v5 + 16))(v2, v3, v4);
  sub_18E1A7270();
  if (v1)
  {
    (*(*(v0 + 168) + 8))(*(v0 + 184), *(v0 + 160));
    sub_18E158EC4((v0 + 16));
    v9 = *(v0 + 208);
    v10 = *(v0 + 184);
    v11 = *(v0 + 192);
    v12 = *(v0 + 176);

    sub_18E1594CC();
  }

  else
  {
    v14 = sub_18E15A858();
    v15(v14);
    sub_18E158EC4((v0 + 16));

    sub_18E15A7EC();
  }

  return v13();
}

uint64_t sub_18E1804D4()
{
  sub_18E1806A8(v0[26]);
  sub_18E158EC4(v0 + 2);
  v1 = v0[28];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];

  sub_18E1594CC();

  return v6();
}

uint64_t sub_18E18056C(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E161880(&qword_1EABD0B38, &qword_18E1AC688);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E1805DC(uint64_t a1)
{
  v2 = sub_18E161880(&qword_1EABD0B38, &qword_18E1AC688);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18E180644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StringResponseSanitizerWithConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E1806A8(uint64_t a1)
{
  v2 = type metadata accessor for StringResponseSanitizerWithConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_18E180704@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_18E159728(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_18E16BBD0(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_18E180768()
{
  v0 = sub_18E1A7400();
  sub_18E16BD84(v0, qword_1ED8D9BD8);
  sub_18E1592FC(v0, qword_1ED8D9BD8);
  return sub_18E1A7410();
}

uint64_t sub_18E1807F0()
{
  v0 = sub_18E1A7400();
  sub_18E16BD84(v0, qword_1ED8D99D8);
  sub_18E1592FC(v0, qword_1ED8D99D8);
  return sub_18E1A7410();
}

uint64_t sub_18E180878()
{
  v0 = sub_18E1A7400();
  sub_18E16BD84(v0, qword_1ED8D99B8);
  sub_18E1592FC(v0, qword_1ED8D99B8);
  return sub_18E1A7410();
}

uint64_t sub_18E1808DC()
{
  v0 = sub_18E1A7400();
  sub_18E16BD84(v0, qword_1ED8D9BB8);
  sub_18E1592FC(v0, qword_1ED8D9BB8);
  return sub_18E1A7410();
}

uint64_t sub_18E180964()
{
  v0 = sub_18E1A7400();
  sub_18E16BD84(v0, qword_1ED8D9998);
  sub_18E1592FC(v0, qword_1ED8D9998);
  return sub_18E1A7410();
}

uint64_t sub_18E1809EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_18E1A7400();
  v6 = sub_18E1592FC(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_18E180A84()
{
  v0 = sub_18E1A7400();
  sub_18E16BD84(v0, qword_1ED8D9978);
  sub_18E1592FC(v0, qword_1ED8D9978);
  return sub_18E1A7410();
}

void *GenerativeConfigurationProtocol.stringRenderedPromptSanitizer.getter@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v109 = a1;
  v106 = a2;
  v102 = sub_18E1A71C0();
  v2 = sub_18E159050(v102);
  v100 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2, v6);
  sub_18E15A808();
  v99 = v8 - v7;
  v9 = sub_18E1A71F0();
  v10 = sub_18E159050(v9);
  v103 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10, v14);
  sub_18E15A808();
  v101 = v16 - v15;
  v17 = sub_18E161880(&qword_1EABD0B50, &qword_18E1AC6D0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v21 = &v97 - v20;
  v22 = sub_18E1A73F0();
  v23 = sub_18E159050(v22);
  v104 = v24;
  v26 = *(v25 + 64);
  v28 = MEMORY[0x1EEE9AC00](v23, v27);
  v98 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v97 - v31;
  v33 = sub_18E1A7400();
  v34 = sub_18E159050(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34, v39);
  sub_18E15A808();
  v42 = v41 - v40;
  if (qword_1ED8D9BD0 != -1)
  {
    swift_once();
  }

  v43 = sub_18E1592FC(v33, qword_1ED8D9BD8);
  v107 = v36;
  v108 = v42;
  (*(v36 + 16))(v42, v43, v33);
  if (qword_1ED8D99B0 != -1)
  {
    swift_once();
  }

  sub_18E1592FC(v33, qword_1ED8D99B8);
  v44 = v112;
  sub_18E1A7440();
  if (LOBYTE(v110[0]) != 2 && (v110[0] & 1) != 0)
  {
    (*(v107 + 8))(v108, v33);
    sub_18E18208C(v110);
    goto LABEL_26;
  }

  v97 = v9;
  v105 = v33;
  sub_18E15AA6C();
  sub_18E182094(v45, v44);
  sub_18E15DA04(qword_1ED8D99F8);
  sub_18E1A7440();
  if (sub_18E15D690(v21, 1, v22) == 1)
  {
    sub_18E178150(v21, &qword_1EABD0B50, &qword_18E1AC6D0);
    sub_18E1814E4();
    sub_18E181538();
    sub_18E1A7440();
    memcpy(v110, __src, 0x88uLL);
    if (sub_18E18158C(v110) == 1)
    {
      if (qword_1ED8DA268 != -1)
      {
        sub_18E1591C0();
      }

      v46 = sub_18E1A7360();
      sub_18E1592FC(v46, qword_1ED8DA270);
      v47 = sub_18E1A7340();
      v48 = sub_18E1A7730();
      if (os_log_type_enabled(v47, v48))
      {
        *sub_18E15BCEC() = 0;
        sub_18E15A074(&dword_18E157000, v49, v50, "GenerativeConfigurationProtocol: stringRenderedPromptSanitizer set to use defaults.");
        sub_18E1590E4();
      }

      type metadata accessor for CachedSafetyModelsWrapper();
      v51 = sub_18E15B80C();
      type metadata accessor for CachedSafetyModels();
      v52 = sub_18E15B80C();
      sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
      sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
      sub_18E15A160();
      v53 = sub_18E1A7490();
      sub_18E161880(&qword_1EABD0A80, qword_18E1ABBC0);
      v54 = sub_18E15A434();
      *(v54 + 24) = 0;
      *(v54 + 16) = v53;
      *(v52 + 16) = v54;
      *(v51 + 16) = v52;
      type metadata accessor for ModelManagerSessionWrapper();
      v55 = sub_18E15B80C();
      sub_18E161880(&qword_1EABD0AE8, &qword_18E1AC170);
      v56 = sub_18E15A434();
      v57 = 0;
      *(v56 + 24) = 0;
      *(v56 + 16) = 0;
      *(v55 + 16) = v56;
      v58 = xmmword_18E1AC6B0;
      v59 = 0uLL;
      v60 = 0uLL;
      v61 = 0uLL;
      v62 = 0uLL;
      v63 = 0uLL;
      v64 = xmmword_18E1AC6C0;
    }

    else
    {
      v51 = v110[15];
      v55 = v110[16];
      v58 = sub_18E15A874();
    }

    goto LABEL_19;
  }

  v65 = v104;
  (*(v104 + 32))(v32, v21, v22);
  v66 = sub_18E1A7460();
  v67 = sub_18E1A73E0();
  sub_18E180704(v67, v68, v66, __src);

  if (*(&__src[1] + 1))
  {
    v69 = swift_dynamicCast();
    v70 = v97;
    if (v69)
    {
      (*(v65 + 8))(v32, v22);
      v58 = sub_18E15A874();
      v51 = v110[15];
      v55 = v110[16];
LABEL_19:
      __src[0] = v58;
      LOBYTE(__src[1]) = v57;
      *(&__src[1] + 8) = v64;
      *(&__src[2] + 8) = v59;
      *(&__src[3] + 8) = v60;
      *(&__src[4] + 8) = v61;
      *(&__src[5] + 8) = v62;
      *(&__src[6] + 8) = v63;
      *(&__src[7] + 1) = v51;
      *&__src[8] = v55;
      if (qword_1ED8D99D0 != -1)
      {
        swift_once();
      }

      v71 = v105;
      sub_18E1592FC(v105, qword_1ED8D99D8);
      sub_18E161880(&qword_1EABD0B58, &qword_18E1AC6D8);
      sub_18E1A7420();
      v72 = v110[0];
      if (v110[0])
      {
        v73 = v110[1];
        v74 = sub_18E15AB98();
        v76 = v71;
      }

      else
      {
        v77 = sub_18E18E478();
        if (!v77)
        {
          if (qword_1ED8DA268 != -1)
          {
            sub_18E1591C0();
          }

          v88 = sub_18E1A7360();
          sub_18E1592FC(v88, qword_1ED8DA270);
          v89 = sub_18E1A7340();
          v90 = sub_18E1A7720();
          v91 = os_log_type_enabled(v89, v90);
          v92 = v106;
          if (v91)
          {
            *sub_18E15BCEC() = 0;
            sub_18E15A074(&dword_18E157000, v93, v94, "GenerativeConfigurationProtocol: stringRenderedPromptSanitizer set to nil. Could not find a StringRenderedPromptSanitizerRunner.");
            sub_18E1590E4();
          }

          sub_18E182038(__src);

          v95 = sub_18E15AB98();
          v96(v95, v105);
          sub_18E18208C(v110);
          v79 = v92;
          return memcpy(v79, v110, 0x98uLL);
        }

        v72 = v77;
        v73 = v78;
        v74 = sub_18E15AB98();
        v76 = v105;
      }

      v75(v74, v76);
      memcpy(v110, __src, 0x88uLL);
      v110[17] = v72;
      v110[18] = v73;
      nullsub_1(v110);
LABEL_26:
      v79 = v106;
      return memcpy(v79, v110, 0x98uLL);
    }
  }

  else
  {
    sub_18E178150(__src, &qword_1EABD0960, &qword_18E1AB550);
    v70 = v97;
  }

  (*(v65 + 16))(v98, v32, v22);
  v81 = v99;
  sub_18E1A71B0();
  v82 = v65;
  v83 = v100;
  v84 = v102;
  (*(v100 + 104))(v81, *MEMORY[0x1E69A0A08], v102);
  v85 = v101;
  sub_18E1A71D0();
  (*(v83 + 8))(v81, v84);
  sub_18E1A7210();
  sub_18E15D0E0();
  sub_18E182094(v86, v87);
  swift_allocError();
  sub_18E1A7200();
  (*(v103 + 8))(v85, v70);
  swift_willThrow();
  (*(v82 + 8))(v32, v22);
  return (*(v107 + 8))(v108, v105);
}

unint64_t sub_18E1814E4()
{
  result = qword_1ED8D9AA8;
  if (!qword_1ED8D9AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D9AA8);
  }

  return result;
}

unint64_t sub_18E181538()
{
  result = qword_1ED8D9AB0;
  if (!qword_1ED8D9AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D9AB0);
  }

  return result;
}

uint64_t sub_18E18158C(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18E1815C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v5 = sub_18E1A7400();
  sub_18E1592FC(v5, a4);
  return sub_18E1A7450();
}

uint64_t GenerativeConfigurationProtocol.stringResponseSanitizer.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v103 = a1;
  v104 = a2;
  v100 = a3;
  v94 = sub_18E1A71C0();
  v4 = sub_18E159050(v94);
  v92 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  sub_18E15A808();
  v91 = v10 - v9;
  v96 = sub_18E1A71F0();
  v11 = sub_18E159050(v96);
  v95 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11, v15);
  sub_18E15A808();
  v93 = v17 - v16;
  v18 = sub_18E161880(&qword_1EABD0B50, &qword_18E1AC6D0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v22 = &v90 - v21;
  v23 = sub_18E1A73F0();
  v24 = sub_18E159050(v23);
  *&v98 = v25;
  v27 = *(v26 + 64);
  v29 = MEMORY[0x1EEE9AC00](v24, v28);
  v31 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v32);
  v34 = &v90 - v33;
  v35 = sub_18E1A7400();
  v36 = sub_18E159050(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36, v41);
  sub_18E15A808();
  v44 = v43 - v42;
  if (qword_1ED8D9BB0 != -1)
  {
    swift_once();
  }

  v45 = sub_18E1592FC(v35, qword_1ED8D9BB8);
  v101 = v38;
  v102 = v44;
  (*(v38 + 16))(v44, v45, v35);
  if (qword_1ED8D9970 != -1)
  {
    swift_once();
  }

  sub_18E1592FC(v35, qword_1ED8D9978);
  v46 = v112;
  sub_18E1A7440();
  if (v107 == 2 || (v107 & 1) == 0)
  {
    v99 = v35;
    v97 = v3;
    sub_18E15AA6C();
    sub_18E182094(v48, v46);
    sub_18E15DA04(qword_1ED8D99F8);
    sub_18E1A7440();
    if (sub_18E15D690(v22, 1, v23) == 1)
    {
      sub_18E178150(v22, &qword_1EABD0B50, &qword_18E1AC6D0);
      sub_18E1820DC();
      sub_18E182130();
      sub_18E1A7440();
      v49 = v110;
      if (v110)
      {
        v50 = v111;
        v51 = v109;
        v52 = v108;
        v53 = v107;
      }

      else
      {
        if (qword_1ED8DA268 != -1)
        {
          sub_18E1591C0();
        }

        v58 = sub_18E1A7360();
        sub_18E1592FC(v58, qword_1ED8DA270);
        v59 = sub_18E1A7340();
        v60 = sub_18E1A7730();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = sub_18E15BCEC();
          *v61 = 0;
          _os_log_impl(&dword_18E157000, v59, v60, "GenerativeConfigurationProtocol: stringResponseSanitizer set to use defaults", v61, 2u);
          sub_18E1590E4();
        }

        type metadata accessor for CachedSafetyModelsWrapper();
        v49 = sub_18E15B80C();
        type metadata accessor for CachedSafetyModels();
        v62 = sub_18E15B80C();
        sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
        sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
        sub_18E15A160();
        v63 = sub_18E1A7490();
        sub_18E161880(&qword_1EABD0A80, qword_18E1ABBC0);
        v64 = sub_18E15A434();
        *(v64 + 24) = 0;
        *(v64 + 16) = v63;
        *(v62 + 16) = v64;
        *(v49 + 16) = v62;
        type metadata accessor for ModelManagerSessionWrapper();
        v50 = sub_18E15B80C();
        sub_18E161880(&qword_1EABD0AE8, &qword_18E1AC170);
        v65 = sub_18E15A434();
        v52 = 0;
        v51 = 0;
        *(v65 + 24) = 0;
        *(v65 + 16) = 0;
        *(v50 + 16) = v65;
        v53 = xmmword_18E1AC6B0;
      }

      v98 = v53;
LABEL_20:
      if (qword_1ED8D9990 != -1)
      {
        swift_once();
      }

      v66 = v99;
      sub_18E1592FC(v99, qword_1ED8D9998);
      sub_18E161880(&qword_1EABD0B68, &qword_18E1AC6E0);
      sub_18E1A7420();
      v67 = v107;
      if (v107)
      {
        v68 = *(&v107 + 1);
        v69 = sub_18E15A2E0();
        v71 = v66;
      }

      else
      {
        v72 = sub_18E19298C();
        if (!v72)
        {
          if (qword_1ED8DA268 != -1)
          {
            sub_18E1591C0();
          }

          v83 = sub_18E1A7360();
          sub_18E1592FC(v83, qword_1ED8DA270);
          v84 = sub_18E1A7340();
          v85 = sub_18E1A7720();
          if (os_log_type_enabled(v84, v85))
          {
            v86 = sub_18E15BCEC();
            *v86 = 0;
            _os_log_impl(&dword_18E157000, v84, v85, "GenerativeConfigurationProtocol: stringResponseSanitizer set to nil. Could not find a StringResponseSanitizerRunner.", v86, 2u);
            sub_18E1590E4();
          }

          sub_18E15F0C0(v98, *(&v98 + 1), v52 & 1);

          v87 = sub_18E15A2E0();
          result = v88(v87, v99);
          goto LABEL_34;
        }

        v67 = v72;
        v68 = v73;
        v69 = sub_18E15A2E0();
        v71 = v99;
      }

      result = v70(v69, v71);
      LOBYTE(v107) = v52 & 1;
      v74 = v100;
      *v100 = v98;
      *(v74 + 16) = v52 & 1;
      *(v74 + 3) = v51;
      *(v74 + 4) = v49;
      *(v74 + 5) = v50;
      *(v74 + 6) = v67;
      *(v74 + 7) = v68;
      return result;
    }

    v54 = v98;
    (*(v98 + 32))(v34, v22, v23);
    v55 = sub_18E1A7460();
    v56 = sub_18E1A73E0();
    sub_18E180704(v56, v57, v55, &v105);

    if (v106)
    {
      if (swift_dynamicCast())
      {
        (*(v54 + 8))(v34, v23);
        v98 = v107;
        v52 = v108;
        v51 = v109;
        v49 = v110;
        v50 = v111;
        goto LABEL_20;
      }
    }

    else
    {
      sub_18E178150(&v105, &qword_1EABD0960, &qword_18E1AB550);
    }

    v75 = v101;
    v76 = v99;
    (*(v54 + 16))(v31, v34, v23);
    v77 = v91;
    sub_18E1A71B0();
    v78 = v92;
    v79 = v94;
    (*(v92 + 104))(v77, *MEMORY[0x1E69A0A08], v94);
    v80 = v93;
    sub_18E1A71D0();
    (*(v78 + 8))(v77, v79);
    sub_18E1A7210();
    sub_18E15D0E0();
    sub_18E182094(v81, v82);
    swift_allocError();
    sub_18E1A7200();
    (*(v95 + 8))(v80, v96);
    swift_willThrow();
    (*(v54 + 8))(v34, v23);
    return (*(v75 + 8))(v102, v76);
  }

  result = (*(v101 + 8))(v102, v35);
LABEL_34:
  v89 = v100;
  v100[2] = 0u;
  v89[3] = 0u;
  *v89 = 0u;
  v89[1] = 0u;
  return result;
}

uint64_t sub_18E182094(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_18E1820DC()
{
  result = qword_1ED8D9AB8;
  if (!qword_1ED8D9AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D9AB8);
  }

  return result;
}

unint64_t sub_18E182130()
{
  result = qword_1ED8D9AC0[0];
  if (!qword_1ED8D9AC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8D9AC0);
  }

  return result;
}

uint64_t LanguageRecognizer.init(supportedLanguageCodes:topK:tokenThreshold:includeEmojis:samples:checkOVSIfUnderTokenThreshold:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v14 = sub_18E1A7390();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  result = sub_18E1A7380();
  v18 = MEMORY[0x1E69E7CC0];
  *a7 = a1;
  *(a7 + 8) = v18;
  *(a7 + 16) = a2;
  *(a7 + 24) = a3;
  *(a7 + 32) = a4;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  *(a7 + 56) = result;
  return result;
}

uint64_t LanguageRecognizer.init(supportedLanguageCodes:preferredLanguages:topK:tokenThreshold:includeEmojis:samples:checkOVSIfUnderTokenThreshold:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  v9 = sub_18E1A7390();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = sub_18E1A7380();
  *(a8 + 56) = result;
  return result;
}

uint64_t sub_18E1822A4()
{
  v0 = sub_18E1A79E0();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_18E18230C(char a1)
{
  result = 1265659764;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0x7268546E656B6F74;
      break;
    case 4:
      result = 0x456564756C636E69;
      break;
    case 5:
      result = 0x73656C706D6173;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0x706552746E657665;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_18E182444@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E1822A4();
  *a2 = result;
  return result;
}

unint64_t sub_18E182474@<X0>(unint64_t *a1@<X8>)
{
  result = sub_18E18230C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_18E1824BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E1822F0();
  *a1 = result;
  return result;
}

uint64_t sub_18E1824E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E1822F4();
  *a1 = result;
  return result;
}

void *sub_18E18250C@<X0>(void *a1@<X8>)
{
  result = sub_18E1822FC();
  *a1 = result;
  return result;
}

uint64_t sub_18E182534(uint64_t a1)
{
  v2 = sub_18E1828E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E182570(uint64_t a1)
{
  v2 = sub_18E1828E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LanguageRecognizer.encode(to:)(void *a1)
{
  v4 = sub_18E161880(&qword_1EABD0B70, &qword_18E1AC6F0);
  v5 = sub_18E159050(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5, v10);
  v12 = &v20 - v11;
  v14 = *v1;
  v13 = v1[1];
  v15 = v1[3];
  v25 = v1[2];
  v26 = v13;
  v24 = v15;
  v23 = *(v1 + 32);
  v22 = v1[5];
  v21 = *(v1 + 48);
  v20 = v1[7];
  v16 = a1[4];
  sub_18E158E00(a1, a1[3]);
  sub_18E1828E4();

  sub_18E1A7CD0();
  v28 = v14;
  v27 = 0;
  sub_18E161880(&qword_1EABD0B80, &qword_18E1AC6F8);
  sub_18E182DFC(&qword_1EABD0B88, &qword_1EABD0B90);
  sub_18E1A7B30();
  if (v2)
  {
  }

  else
  {

    v28 = v26;
    v27 = 1;
    sub_18E161880(&qword_1EABD0B98, &qword_18E1AC700);
    sub_18E182E88(&qword_1EABD0BA0, &qword_1EABD0BA8);
    sub_18E15ABA8();
    sub_18E15A2F0(2);
    sub_18E15D77C();
    sub_18E1A7B20();
    sub_18E15A2F0(3);
    sub_18E15D77C();
    sub_18E1A7B20();
    sub_18E15A2F0(4);
    sub_18E15D77C();
    sub_18E1A7B10();
    sub_18E15A2F0(5);
    sub_18E15D77C();
    sub_18E1A7B20();
    sub_18E15A2F0(6);
    sub_18E15D77C();
    sub_18E1A7B10();
    v28 = v20;
    v27 = 7;
    sub_18E1A7390();
    sub_18E1591E0();
    sub_18E18400C(v17, v18);
    sub_18E15ABA8();
  }

  return (*(v7 + 8))(v12, v4);
}

unint64_t sub_18E1828E4()
{
  result = qword_1EABD0B78;
  if (!qword_1EABD0B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0B78);
  }

  return result;
}

uint64_t LanguageRecognizer.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_18E161880(&qword_1EABD0BB0, &qword_18E1AC708);
  v6 = sub_18E159050(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = a1[4];
  sub_18E158E00(a1, a1[3]);
  sub_18E1828E4();
  sub_18E1A7CC0();
  if (v2)
  {
    return sub_18E158EC4(a1);
  }

  sub_18E161880(&qword_1EABD0B80, &qword_18E1AC6F8);
  sub_18E182DFC(&qword_1EABD0BB8, &qword_1EABD0BC0);
  sub_18E15A898();
  sub_18E1A7A80();
  v12 = v39[0];
  sub_18E161880(&qword_1EABD0B98, &qword_18E1AC700);
  LOBYTE(v35) = 1;
  sub_18E182E88(&qword_1EABD0BC8, &qword_1EABD0BD0);
  sub_18E15A898();
  sub_18E1A7A30();
  if (v39[0])
  {
    v13 = v39[0];
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  sub_18E1595FC(2);
  v49 = sub_18E1A7A70();
  sub_18E1595FC(3);
  v34 = sub_18E1A7A70();
  sub_18E1595FC(4);
  v32 = sub_18E1A7A10();
  sub_18E1595FC(5);
  v14 = sub_18E1A7A20();
  v16 = 5;
  if ((v15 & 1) == 0)
  {
    v16 = v14;
  }

  v31 = v16;
  sub_18E1595FC(6);
  v29 = sub_18E1A7A10();
  v17 = sub_18E1A7390();
  LOBYTE(v39[0]) = 7;
  sub_18E1591E0();
  sub_18E18400C(v18, v19);
  sub_18E1A7A30();
  v28 = v32 & 1;
  v33 = (v29 == 2) | v29 & 1;
  if (v46)
  {
    v30 = v46;
  }

  else
  {
    v20 = *(v17 + 48);
    v21 = *(v17 + 52);
    swift_allocObject();
    v30 = sub_18E1A7380();
  }

  v22 = sub_18E15D0F8();
  v23(v22);
  *&v35 = v12;
  *(&v35 + 1) = v13;
  v24 = v49;
  *&v36 = v49;
  *(&v36 + 1) = v34;
  LOBYTE(v37) = v28;
  *(&v37 + 1) = v48[0];
  DWORD1(v37) = *(v48 + 3);
  *(&v37 + 1) = v31;
  LOBYTE(v38) = v33;
  *(&v38 + 1) = *v47;
  DWORD1(v38) = *&v47[3];
  *(&v38 + 1) = v30;
  v25 = v35;
  v26 = v36;
  v27 = v38;
  a2[2] = v37;
  a2[3] = v27;
  *a2 = v25;
  a2[1] = v26;
  sub_18E182F14(&v35, v39);
  sub_18E158EC4(a1);
  v39[0] = v12;
  v39[1] = v13;
  v39[2] = v24;
  v39[3] = v34;
  v40 = v28;
  *v41 = v48[0];
  *&v41[3] = *(v48 + 3);
  v42 = v31;
  v43 = v33;
  *v44 = *v47;
  *&v44[3] = *&v47[3];
  v45 = v30;
  return sub_18E182F4C(v39);
}

uint64_t sub_18E182DFC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_18E169A64(&qword_1EABD0B80, &qword_18E1AC6F8);
    sub_18E18400C(a2, MEMORY[0x1E6969610]);
    result = sub_18E15D4A4();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18E182E88(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_18E169A64(&qword_1EABD0B98, &qword_18E1AC700);
    sub_18E18400C(a2, MEMORY[0x1E6969720]);
    result = sub_18E15D4A4();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static LanguageRecognizer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v19 = *(a1 + 40);
  v18 = *(a1 + 48);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v16 = *(a2 + 56);
  v17 = *(a1 + 56);
  if ((sub_18E1830A0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_18E15AA84();
  if ((sub_18E1834F8(v2, v6, v12, v13, MEMORY[0x1E6969720], MEMORY[0x1E6969738]) & 1) == 0)
  {
    return 0;
  }

  v14 = v3 == v7 && v4 == v8;
  if (!v14 || ((v5 ^ v9) & 1) != 0 || v19 != v10 || ((v18 ^ v11) & 1) != 0)
  {
    return 0;
  }

  sub_18E1A7390();
  return sub_18E1A7370() & 1;
}

uint64_t sub_18E1830A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E1A6E00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v48 = &v37 - v13;
  result = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v37 - v16;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v18 = 0;
  v19 = *(a1 + 56);
  v38 = a1 + 56;
  v20 = 1 << *(a1 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v44 = v5 + 32;
  v46 = a2 + 56;
  v47 = v5 + 16;
  v24 = (v5 + 8);
  v39 = v23;
  v40 = &v37 - v16;
  v41 = v5;
  v42 = a1;
  if (v22)
  {
    while (2)
    {
      v25 = __clz(__rbit64(v22));
      v43 = (v22 - 1) & v22;
LABEL_13:
      v28 = *(a1 + 48);
      v45 = *(v5 + 72);
      v29 = *(v5 + 16);
      v29(v17, v28 + v45 * (v25 | (v18 << 6)), v4);
      (*(v5 + 32))(v48, v17, v4);
      v30 = *(a2 + 40);
      sub_18E18400C(&qword_1EABD0C30, MEMORY[0x1E6969610]);
      v31 = sub_18E1A74C0();
      v32 = a2;
      v33 = ~(-1 << *(a2 + 32));
      do
      {
        v34 = v31 & v33;
        if (((*(v46 + (((v31 & v33) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v31 & v33)) & 1) == 0)
        {
          (*v24)(v48, v4);
          return 0;
        }

        v29(v10, *(v32 + 48) + v34 * v45, v4);
        sub_18E18400C(&qword_1EABCFE60, MEMORY[0x1E6969610]);
        v35 = sub_18E1A74F0();
        v36 = *v24;
        (*v24)(v10, v4);
        v31 = v34 + 1;
      }

      while ((v35 & 1) == 0);
      result = (v36)(v48, v4);
      a2 = v32;
      v5 = v41;
      a1 = v42;
      v23 = v39;
      v17 = v40;
      v22 = v43;
      if (v43)
      {
        continue;
      }

      break;
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

    if (v18 >= v23)
    {
      return 1;
    }

    v27 = *(v38 + 8 * v18);
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v43 = (v27 - 1) & v27;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E183424(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_18E1A7B90() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_18E1834F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v38 = a5;
  v39 = a6;
  v37 = a4;
  v8 = a3(0);
  v9 = sub_18E159050(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v9, v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v34 - v19;
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
    v31 = 0;
    return v31 & 1;
  }

  if (!v21 || a1 == a2)
  {
    v31 = 1;
    return v31 & 1;
  }

  v22 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v23 = a1 + v22;
  v24 = a2 + v22;
  v26 = *(v11 + 16);
  v25 = v11 + 16;
  v27 = (v25 - 8);
  v35 = *(v25 + 56);
  v36 = v26;
  while (1)
  {
    v28 = v36;
    result = (v36)(v20, v23, v8);
    if (!v21)
    {
      break;
    }

    v30 = v25;
    v28(v17, v24, v8);
    sub_18E18400C(v37, v38);
    v31 = sub_18E1A74F0();
    v32 = *v27;
    (*v27)(v17, v8);
    v32(v20, v8);
    if (v31)
    {
      v24 += v35;
      v23 += v35;
      v33 = v21-- == 1;
      v25 = v30;
      if (!v33)
      {
        continue;
      }
    }

    return v31 & 1;
  }

  __break(1u);
  return result;
}

uint64_t LanguageRecognizer.hash(into:)(const void *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  sub_18E183A98(a1, *v1);
  sub_18E15AA84();
  sub_18E1839A4(a1, v3, v10, v11, MEMORY[0x1E6969720]);
  MEMORY[0x193ACB0A0](v4);
  MEMORY[0x193ACB0A0](v5);
  sub_18E1A7C80();
  MEMORY[0x193ACB0A0](v7);
  sub_18E1A7C80();
  sub_18E1A7390();
  sub_18E1591E0();
  sub_18E18400C(v12, v13);
  return sub_18E1A74D0();
}

uint64_t LanguageRecognizer.hashValue.getter()
{
  sub_18E1A7C60();
  LanguageRecognizer.hash(into:)(v1);
  return sub_18E1A7CA0();
}

uint64_t sub_18E183844()
{
  sub_18E1A7C60();
  LanguageRecognizer.hash(into:)(v1);
  return sub_18E1A7CA0();
}

void sub_18E1838B4(uint64_t a1, uint64_t a2)
{
  sub_18E15A094(a1, a2);
  if (v2)
  {
    v4 = (v3 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_18E1A75C0();

      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

void sub_18E183964(uint64_t a1, uint64_t a2)
{
  sub_18E15A094(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x193ACB0A0](v5);
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_18E1839A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = *(a2 + 16);
  result = MEMORY[0x193ACB0A0](v9);
  if (v9)
  {
    v11 = *(a3(0) - 8);
    v12 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    sub_18E18400C(a4, a5);
    do
    {
      result = sub_18E1A74D0();
      v12 += v13;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_18E183A98(const void *a1, uint64_t a2)
{
  v4 = sub_18E1A6E00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = a1;
  memcpy(__dst, a1, sizeof(__dst));
  v10 = sub_18E1A7CA0();
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;
  v21[3] = v5 + 16;
  v21[4] = v10;
  v21[2] = v5 + 8;

  v16 = 0;
  for (i = 0; v13; v16 ^= v20)
  {
    v18 = i;
LABEL_9:
    v19 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    (*(v5 + 16))(v9, *(a2 + 48) + *(v5 + 72) * (v19 | (v18 << 6)), v4);
    sub_18E18400C(&qword_1EABD0C30, MEMORY[0x1E6969610]);
    v20 = sub_18E1A74C0();
    result = (*(v5 + 8))(v9, v4);
  }

  while (1)
  {
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v18 >= v14)
    {

      return MEMORY[0x193ACB0A0](v16);
    }

    v13 = *(a2 + 56 + 8 * v18);
    ++i;
    if (v13)
    {
      i = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_18E183CC0()
{
  result = qword_1EABD0BE8;
  if (!qword_1EABD0BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0BE8);
  }

  return result;
}

__n128 sub_18E183D14(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LanguageRecognizer.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LanguageRecognizer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18E183EA0()
{
  result = qword_1EABD0BF0;
  if (!qword_1EABD0BF0)
  {
    sub_18E169A64(&qword_1EABD0BF8, qword_18E1AC890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0BF0);
  }

  return result;
}

unint64_t sub_18E183F08()
{
  result = qword_1EABD0C00;
  if (!qword_1EABD0C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0C00);
  }

  return result;
}

unint64_t sub_18E183F60()
{
  result = qword_1EABD0C08;
  if (!qword_1EABD0C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0C08);
  }

  return result;
}

unint64_t sub_18E183FB8()
{
  result = qword_1EABD0C10;
  if (!qword_1EABD0C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0C10);
  }

  return result;
}

uint64_t sub_18E18400C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LanguageScriptValidator.eventReporter.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t LanguageScriptValidator.init(locales:isEmojiAllowed:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  v4 = sub_18E1A7390();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  result = sub_18E1A7380();
  *(a3 + 16) = result;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LanguageScriptValidator.validate(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = v1[2];
  if (sub_18E184FAC())
  {
    v8 = v4;
    v9 = v5;
    v10 = v6;
    (*(v7 + 8))(countAndFlagsBits, object, &v8);
  }
}

uint64_t static LanguageScriptValidator.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = a2[2];
  v8 = sub_18E1834B0();
  result = 0;
  if ((v8 & 1) != 0 && ((v3 ^ v6) & 1) == 0)
  {
    if (v4)
    {
      if (v7)
      {
        sub_18E1A7390();
        sub_18E159614();
        sub_18E184C70(v10, v11);

        v12 = sub_18E1A74F0();

        if (v12)
        {
          return 1;
        }
      }
    }

    else if (!v7)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_18E1842A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C61636F6CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_18E1A7B90() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x41696A6F6D457369 && a2 == 0xEE006465776F6C6CLL;
    if (v6 || (sub_18E1A7B90() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x706552746E657665 && a2 == 0xED0000726574726FLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_18E1A7B90();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18E1843C4(char a1)
{
  if (!a1)
  {
    return 0x73656C61636F6CLL;
  }

  if (a1 == 1)
  {
    return 0x41696A6F6D457369;
  }

  return 0x706552746E657665;
}

uint64_t sub_18E18443C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E1842A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E184464(uint64_t a1)
{
  v2 = sub_18E1846F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E1844A0(uint64_t a1)
{
  v2 = sub_18E1846F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LanguageScriptValidator.encode(to:)(void *a1)
{
  v3 = sub_18E161880(&qword_1EABD0C48, &qword_18E1AC9F0);
  v4 = sub_18E159050(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4, v9);
  v11 = &v19 - v10;
  v12 = *v1;
  v20 = *(v1 + 8);
  v19 = v1[2];
  v13 = a1[4];
  sub_18E158E00(a1, a1[3]);
  v14 = sub_18E1846F8();

  sub_18E1A7CD0();
  v22 = v12;
  v21 = 0;
  sub_18E161880(&qword_1EABD0C58, &qword_18E1AC9F8);
  sub_18E184BD4(&qword_1EABD0C60, &qword_1EABD0C68);
  sub_18E15D78C();
  sub_18E1A7B30();

  if (!v14)
  {
    v15 = v19;
    LOBYTE(v22) = 1;
    sub_18E1A7B10();
    v22 = v15;
    v21 = 2;
    sub_18E1A7390();
    sub_18E159614();
    sub_18E184C70(v16, v17);
    sub_18E15D78C();
    sub_18E1A7AE0();
  }

  return (*(v6 + 8))(v11, v3);
}

unint64_t sub_18E1846F8()
{
  result = qword_1EABD0C50;
  if (!qword_1EABD0C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0C50);
  }

  return result;
}

uint64_t LanguageScriptValidator.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  sub_18E18391C();
  sub_18E1A7C80();
  if (!v3)
  {
    return sub_18E1A7C80();
  }

  sub_18E1A7C80();
  sub_18E1A7390();
  sub_18E159614();
  sub_18E184C70(v4, v5);
  return sub_18E1A74D0();
}

uint64_t LanguageScriptValidator.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  sub_18E1A7C60();
  sub_18E18391C();
  sub_18E1A7C80();
  sub_18E1A7C80();
  if (v3)
  {
    sub_18E1A7390();
    sub_18E159614();
    sub_18E184C70(v4, v5);
    sub_18E1A74D0();
  }

  return sub_18E1A7CA0();
}

uint64_t LanguageScriptValidator.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_18E161880(&qword_1EABD0C70, &qword_18E1ACA00);
  v6 = sub_18E159050(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = a1[4];
  sub_18E158E00(a1, a1[3]);
  sub_18E1846F8();
  sub_18E1A7CC0();
  if (v2)
  {
    return sub_18E158EC4(a1);
  }

  sub_18E161880(&qword_1EABD0C58, &qword_18E1AC9F8);
  sub_18E184BD4(&qword_1EABD0C78, &qword_1EABD0C80);
  sub_18E1591F8();
  sub_18E1A7A80();
  v11 = v17;
  LOBYTE(v17) = 1;
  v18 = sub_18E1A7A60() & 1;
  sub_18E1A7390();
  sub_18E159614();
  sub_18E184C70(v12, v13);
  sub_18E1591F8();
  sub_18E1A7A30();
  v14 = sub_18E159514();
  v15(v14);
  *a2 = v11;
  *(a2 + 8) = v18;
  *(a2 + 16) = v17;

  sub_18E158EC4(a1);
}

uint64_t sub_18E184B48()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v0[2];
  sub_18E1A7C60();
  LanguageScriptValidator.hash(into:)();
  return sub_18E1A7CA0();
}

uint64_t sub_18E184BD4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_18E169A64(&qword_1EABD0C58, &qword_18E1AC9F8);
    sub_18E184C70(a2, MEMORY[0x1E6969770]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18E184C70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_18E184CBC()
{
  result = qword_1EABD0C88;
  if (!qword_1EABD0C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0C88);
  }

  return result;
}

uint64_t sub_18E184D10(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_18E184D50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LanguageScriptValidator.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18E184E80()
{
  result = qword_1EABD0C90;
  if (!qword_1EABD0C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0C90);
  }

  return result;
}

unint64_t sub_18E184ED8()
{
  result = qword_1EABD0C98;
  if (!qword_1EABD0C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0C98);
  }

  return result;
}

unint64_t sub_18E184F30()
{
  result = qword_1EABD0CA0;
  if (!qword_1EABD0CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0CA0);
  }

  return result;
}

uint64_t sub_18E184FAC()
{
  v0 = sub_18E1A7500();
  v1 = NSClassFromString(v0);

  if (!v1)
  {
    return 0;
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  return sub_18E185020(ObjCClassMetadata);
}

uint64_t sub_18E185020(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t dispatch thunk of static RenderedPromptSanitizerRunnerProtocol.scrub(_:configuration:sanitizer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 40);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_18E15DC38;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t static ResponseSanitizerRunnerProtocol.scrub<A>(_:configuration:sanitizer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  (*(a6 + 48))(a1, sub_18E185354, v14, a2, a3, a5, a7, a4, a6);
}

uint64_t sub_18E1852AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a2, a1, AssociatedTypeWitness);

  return sub_18E159EBC(a2, 0, 1, AssociatedTypeWitness);
}

uint64_t sub_18E185354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return sub_18E1852AC(a1, a2);
}

uint64_t dispatch thunk of static ResponseSanitizerRunnerProtocol.scrub(_:configuration:sanitizer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 40);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_18E15DC38;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t StringResponseSanitizerWithConfiguration.init(stringResponseSanitizer:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 1) = v7;
  *(a3 + 2) = *(a1 + 32);
  a3[6] = v5;
  a3[7] = v6;
  v8 = *(type metadata accessor for StringResponseSanitizerWithConfiguration(0) + 20);
  sub_18E185EEC(a2, a3 + v8, type metadata accessor for StringResponseSanitizerRunnerConfiguration);
  v9 = a3[1];
  v10 = *(a3 + 16);
  v11 = a3[3];
  v12 = a3[4];
  v13 = a3[5];
  v18 = *a3;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v14 = *(v6 + 8);
  v15 = *(v14 + 56);
  sub_18E159D24(v18);

  v15(a3 + v8, &v18, 0, v5, v14);
  sub_18E185F54(a2, type metadata accessor for StringResponseSanitizerRunnerConfiguration);
  sub_18E15F0C0(v18, v19, v20);
}

uint64_t StringResponseSanitizerWithConfiguration.scrub<A>(_:elementToContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = v5[1];
  v21[0] = *v5;
  v21[1] = v11;
  v12 = v5[3];
  v14 = *v5;
  v13 = v5[1];
  v21[2] = v5[2];
  v21[3] = v12;
  v17 = v14;
  v18 = v13;
  v19 = v5[2];
  v20 = v5[3];
  v15 = *(type metadata accessor for StringResponseSanitizerWithConfiguration(0) + 20);
  sub_18E1856FC(v21, v22);
  StringResponseSanitizerWithRunner.scrub<A>(_:elementToContent:configuration:)(a1, a2, a3, v5 + v15, a4, a5);
  v22[0] = v17;
  v22[1] = v18;
  v22[2] = v19;
  v22[3] = v20;
  return sub_18E185758(v22);
}

uint64_t StringResponseSanitizerWithConfiguration._sanitize(_:)()
{
  sub_18E15A288();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_18E1A70C0();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18E18586C, 0, 0);
}

uint64_t sub_18E18586C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v2 + 16);
  v4(v1, *(v0 + 24), v3);
  v5 = (*(v2 + 88))(v1, v3);
  *(v0 + 104) = v5;
  if (v5 == *MEMORY[0x1E69A0898])
  {
    v6 = *(v0 + 56);
    (*(*(v0 + 48) + 96))(v6, *(v0 + 40));
    v7 = *v6;
    v8 = v6[1];
    *(v0 + 64) = v8;
    v9 = swift_task_alloc();
    *(v0 + 72) = v9;
    *v9 = v0;
    v9[1] = sub_18E185A0C;
    v10 = *(v0 + 32);

    return StringResponseSanitizerWithConfiguration.scrub(_:)(v7, v8);
  }

  else
  {
    v12 = *(v0 + 40);
    v14 = *(v0 + 16);
    v13 = *(v0 + 24);
    (*(*(v0 + 48) + 8))(*(v0 + 56), v12);
    v4(v14, v13, v12);
    v15 = *(v0 + 56);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_18E185A0C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 72);
  v8 = *v3;
  sub_18E159064();
  *v9 = v8;
  v6[10] = v2;

  if (v2)
  {
    v10 = sub_18E185BC4;
  }

  else
  {
    v11 = v6[8];

    v6[11] = a2;
    v6[12] = a1;
    v10 = sub_18E185B40;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_18E185B40()
{
  sub_18E15A288();
  v1 = *(v0 + 88);
  v2 = *(v0 + 104);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);
  *v5 = *(v0 + 96);
  v5[1] = v1;
  (*(v4 + 104))();
  v6 = *(v0 + 56);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_18E185BC4()
{
  sub_18E15A288();
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_18E185C2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18E185CD4;

  return StringResponseSanitizerWithConfiguration._sanitize(_:)();
}

uint64_t sub_18E185CD4()
{
  sub_18E15A288();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_18E159064();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t StringRenderedPromptSanitizerWithConfiguration.init(stringRenderedPromptSanitizer:configuration:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = __src[17];
  v6 = __src[18];
  memcpy(a3, __src, 0x88uLL);
  a3[17] = v5;
  a3[18] = v6;
  v7 = *(type metadata accessor for StringRenderedPromptSanitizerWithConfiguration(0) + 20);
  sub_18E185EEC(a2, a3 + v7, type metadata accessor for StringRenderedPromptSanitizerRunnerConfiguration);
  memcpy(__dst, a3, sizeof(__dst));
  memcpy(__srca, a3, sizeof(__srca));
  v8 = *(v6 + 8);
  v9 = *(v8 + 48);
  sub_18E178FF8(__dst, v13);
  v9(a3 + v7, __srca, 0, v5, v8);
  sub_18E185F54(a2, type metadata accessor for StringRenderedPromptSanitizerRunnerConfiguration);
  memcpy(v13, __srca, sizeof(v13));
  return sub_18E182038(v13);
}

uint64_t sub_18E185EEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18E185F54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t StringRenderedPromptSanitizerWithConfiguration.scrub(_:)(uint64_t a1, uint64_t a2)
{
  v3[97] = v2;
  v3[96] = a2;
  v3[95] = a1;
  return sub_18E159130();
}

uint64_t sub_18E185FD0()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[95];
  memcpy(v0 + 2, v1, 0x98uLL);
  v4 = *(type metadata accessor for StringRenderedPromptSanitizerWithConfiguration(0) + 20);
  v5 = v0[19];
  v6 = v0[20];
  sub_18E1862B8((v0 + 2), (v0 + 21));
  v0[93] = v3;
  v0[94] = v2;
  memcpy(v0 + 40, v0 + 2, 0x88uLL);
  v7 = *(v6 + 8);
  v11 = (*(v7 + 40) + **(v7 + 40));
  v8 = *(*(v7 + 40) + 4);
  v9 = swift_task_alloc();
  v0[98] = v9;
  *v9 = v0;
  v9[1] = sub_18E18615C;

  return v11(v0 + 91, v0 + 93, &v1[v4], v0 + 40, v5, v7);
}

uint64_t sub_18E18615C()
{
  sub_18E15A288();
  v3 = *(*v1 + 784);
  v2 = *v1;
  sub_18E159064();
  *v4 = v2;
  v2[99] = v0;

  if (v0)
  {
    memcpy(v2 + 57, v2 + 40, 0x88uLL);
    sub_18E182038((v2 + 57));
    v5 = sub_18E1862A0;
  }

  else
  {
    memcpy(v2 + 74, v2 + 40, 0x88uLL);
    sub_18E182038((v2 + 74));
    v5 = sub_18E186294;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_18E186294()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 736);
  return sub_18E15962C();
}

uint64_t StringRenderedPromptSanitizerWithConfiguration.useCaseIdentifier.getter()
{
  v1 = v0 + *(type metadata accessor for StringRenderedPromptSanitizerWithConfiguration(0) + 20);
  v2 = (v1 + *(type metadata accessor for StringRenderedPromptSanitizerRunnerConfiguration() + 20));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_18E1863CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  result = a5(319);
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18E186474@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_18E15FF58();
  *a2 = result;
  return result;
}

unint64_t sub_18E1864A4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_18E15FFA4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_18E1864D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E15FF58();
  *a1 = result;
  return result;
}

uint64_t sub_18E186500@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E17A4FC();
  *a1 = result;
  return result;
}

void *sub_18E186528@<X0>(void *a1@<X8>)
{
  result = sub_18E186444();
  *a1 = result;
  return result;
}

uint64_t sub_18E186550(uint64_t a1)
{
  v2 = sub_18E186718();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E18658C(uint64_t a1)
{
  v2 = sub_18E186718();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SensitiveContentSettings.Sanitizer.SanitizerBackendType.encode(to:)()
{
  sub_18E159F44();
  v3 = v2;
  v4 = sub_18E161880(&qword_1EABD0CA8, "\bx");
  sub_18E159050(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_18E15A114();
  v11 = *v0;
  v12 = v3[3];
  v13 = v3[4];
  sub_18E159D74(v3);
  sub_18E186718();
  sub_18E15A8D0();
  sub_18E1A7CD0();
  switch(v11)
  {
    case 3:
      break;
    default:
      sub_18E1A7B10();
      break;
  }

  (*(v6 + 8))(v1, v4);
  sub_18E15A29C();
}

unint64_t sub_18E186718()
{
  result = qword_1EABD0CB0;
  if (!qword_1EABD0CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0CB0);
  }

  return result;
}

void SensitiveContentSettings.Sanitizer.SanitizerBackendType.init(from:)()
{
  sub_18E159F44();
  v3 = v2;
  v50 = v4;
  v45 = sub_18E1A71F0();
  v5 = sub_18E159050(v45);
  v47 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5, v9);
  sub_18E15A808();
  v46 = v11 - v10;
  v52 = sub_18E1A78C0();
  v12 = sub_18E159050(v52);
  v49 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12, v16);
  sub_18E15A808();
  v19 = v18 - v17;
  v20 = sub_18E1A78B0();
  v21 = sub_18E159050(v20);
  v48 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21, v25);
  sub_18E15A808();
  v28 = v27 - v26;
  v29 = sub_18E161880(&qword_1EABD0CB8, &qword_18E1ACDC8);
  sub_18E159050(v29);
  v51 = v30;
  v32 = *(v31 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v33, v34);
  sub_18E15A114();
  v35 = v3[3];
  v36 = v3[4];
  sub_18E159D74(v3);
  sub_18E186718();
  sub_18E15A8D0();
  sub_18E1A7CC0();
  if (!v0)
  {
    v37 = 0;
    if ((sub_18E1A7AB0() & 1) == 0)
    {
      if (sub_18E15921C(1))
      {
        if (qword_1ED8DA268 != -1)
        {
          swift_once();
        }

        v38 = sub_18E1A7360();
        sub_18E1592FC(v38, qword_1ED8DA270);
        v39 = sub_18E1A7340();
        v40 = sub_18E1A7710();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_18E157000, v39, v40, "TextModerationLM has been removed. Decoding result is a no-op", v41, 2u);
          MEMORY[0x193ACB8D0](v41, -1, -1);
        }

        v37 = 3;
      }

      else if (sub_18E15921C(2))
      {
        v37 = 1;
      }

      else
      {
        if ((sub_18E15921C(3) & 1) == 0)
        {
          v53 = v1;
          v42 = v3[4];
          sub_18E158E00(v3, v3[3]);
          sub_18E1A7CB0();
          sub_18E1A7870();
          MEMORY[0x193ACAA20](0xD000000000000039, 0x800000018E1B2B40);
          v43 = MEMORY[0x193ACAAB0](&unk_1F0101EC0, &type metadata for SensitiveContentSettings.Sanitizer.SanitizerBackendType.CodingKeys);
          MEMORY[0x193ACAA20](v43);

          sub_18E1A78A0();
          (*(v48 + 16))(v19, v28, v20);
          (*(v49 + 104))(v19, *MEMORY[0x1E69E6B00], v52);
          swift_allocError();
          (*(v49 + 16))(v44, v19, v52);
          sub_18E1A71E0();
          (*(v47 + 104))(v46, *MEMORY[0x1E69A0A28], v45);
          sub_18E1A7210();
          sub_18E186CD4();
          swift_allocError();
          sub_18E1A7200();
          (*(v47 + 8))(v46, v45);
          swift_willThrow();
          (*(v49 + 8))(v19, v52);
          (*(v48 + 8))(v28, v20);
          (*(v51 + 8))(v53, v29);
          goto LABEL_14;
        }

        v37 = 2;
      }
    }

    (*(v51 + 8))(v1, v29);
    *v50 = v37;
  }

LABEL_14:
  sub_18E158EC4(v3);
  sub_18E15A29C();
}

unint64_t sub_18E186CD4()
{
  result = qword_1EABD0B60;
  if (!qword_1EABD0B60)
  {
    sub_18E1A7210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0B60);
  }

  return result;
}

uint64_t sub_18E186DC0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x800000018E1B2B80 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E1A7B90();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E186E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E186DC0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E186E8C(uint64_t a1)
{
  v2 = sub_18E187730();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E186EC8(uint64_t a1)
{
  v2 = sub_18E187730();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SensitiveContentSettings.Sanitizer.encode(to:)()
{
  sub_18E159F44();
  v3 = v2;
  v4 = sub_18E161880(&qword_1EABD0CC0, &qword_18E1ACDD0);
  sub_18E159050(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_18E15D458();
  v11 = *v0;
  v12 = v3[4];
  sub_18E158E00(v3, v3[3]);
  sub_18E187730();
  sub_18E1A7CD0();
  sub_18E187784();
  sub_18E1A7B30();
  (*(v6 + 8))(v1, v4);
  sub_18E15A29C();
}

uint64_t _s16GenerativeModels24SensitiveContentSettingsV9SanitizerV0F11BackendTypeO9hashValueSivg_0()
{
  v1 = *v0;
  sub_18E1A7C60();
  MEMORY[0x193ACB0A0](v1);
  return sub_18E1A7CA0();
}

void SensitiveContentSettings.Sanitizer.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_18E159F44();
  v15 = v14;
  v17 = v16;
  v18 = sub_18E161880(&qword_1EABD0CD8, &qword_18E1ACDD8);
  sub_18E159050(v18);
  v20 = *(v19 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v21, v22);
  sub_18E15D458();
  v23 = v15[3];
  v24 = v15[4];
  sub_18E159D74(v15);
  sub_18E187730();
  sub_18E15A8D0();
  sub_18E1A7CC0();
  if (!v13)
  {
    sub_18E1877D8();
    sub_18E1A7A80();
    v25 = sub_18E15C048();
    v26(v25);
    *v17 = a13;
  }

  sub_18E158EC4(v15);
  sub_18E15A29C();
}

uint64_t SensitiveContentSettings.init(locale:sanitizers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_18E1A6F50();
  result = (*(*(v6 - 8) + 8))(a1, v6);
  *a3 = a2;
  return result;
}

uint64_t sub_18E187248(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x657A6974696E6173 && a2 == 0xEA00000000007372)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E1A7B90();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E1872E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E187248(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E187314(uint64_t a1)
{
  v2 = sub_18E18782C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E187350(uint64_t a1)
{
  v2 = sub_18E18782C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SensitiveContentSettings.encode(to:)()
{
  sub_18E159F44();
  v3 = v2;
  v4 = sub_18E161880(&qword_1EABD0CE8, &qword_18E1ACDE0);
  sub_18E159050(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_18E15A114();
  v11 = *v0;
  v12 = v3[3];
  v13 = v3[4];
  sub_18E159D74(v3);
  sub_18E18782C();

  sub_18E15A8D0();
  sub_18E1A7CD0();
  sub_18E161880(&qword_1EABD0CF0, &qword_18E1ACDE8);
  sub_18E1878D4(&qword_1EABCFC80, sub_18E187880);
  sub_18E1A7B30();

  (*(v6 + 8))(v1, v4);
  sub_18E15A29C();
}

uint64_t SensitiveContentSettings.hashValue.getter()
{
  v1 = *v0;
  sub_18E1A7C60();
  sub_18E183964(v3, v1);
  return sub_18E1A7CA0();
}

void SensitiveContentSettings.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E159F44();
  v12 = v11;
  v14 = v13;
  v15 = sub_18E161880(&qword_1EABD0CF8, &qword_18E1ACDF0);
  sub_18E159050(v15);
  v17 = *(v16 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v18, v19);
  sub_18E15D458();
  v20 = v12[3];
  v21 = v12[4];
  sub_18E159D74(v12);
  sub_18E18782C();
  sub_18E15A8D0();
  sub_18E1A7CC0();
  if (!v10)
  {
    sub_18E161880(&qword_1EABD0CF0, &qword_18E1ACDE8);
    sub_18E1878D4(&qword_1EABD0D00, sub_18E18794C);
    sub_18E1A7A80();
    v22 = sub_18E15C048();
    v23(v22);
    *v14 = a10;
  }

  sub_18E158EC4(v12);
  sub_18E15A29C();
}

uint64_t sub_18E1876B8()
{
  v1 = *v0;
  sub_18E1A7C60();
  sub_18E183964(v3, v1);
  return sub_18E1A7CA0();
}

unint64_t sub_18E187730()
{
  result = qword_1EABD0CC8;
  if (!qword_1EABD0CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0CC8);
  }

  return result;
}

unint64_t sub_18E187784()
{
  result = qword_1EABD0CD0;
  if (!qword_1EABD0CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0CD0);
  }

  return result;
}

unint64_t sub_18E1877D8()
{
  result = qword_1EABD0CE0;
  if (!qword_1EABD0CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0CE0);
  }

  return result;
}

unint64_t sub_18E18782C()
{
  result = qword_1EABCFDF8;
  if (!qword_1EABCFDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFDF8);
  }

  return result;
}

unint64_t sub_18E187880()
{
  result = qword_1EABCFDE0;
  if (!qword_1EABCFDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFDE0);
  }

  return result;
}

uint64_t sub_18E1878D4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_18E169A64(&qword_1EABD0CF0, &qword_18E1ACDE8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18E18794C()
{
  result = qword_1EABD0D08;
  if (!qword_1EABD0D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0D08);
  }

  return result;
}

unint64_t sub_18E1879A4()
{
  result = qword_1EABD0D10;
  if (!qword_1EABD0D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0D10);
  }

  return result;
}

unint64_t sub_18E1879FC()
{
  result = qword_1EABD0D18;
  if (!qword_1EABD0D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0D18);
  }

  return result;
}

unint64_t sub_18E187A54()
{
  result = qword_1EABD0198;
  if (!qword_1EABD0198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0198);
  }

  return result;
}

_BYTE *sub_18E187AD0(_BYTE *result, int a2, int a3)
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

_BYTE *sub_18E187B7C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18E187C5C()
{
  result = qword_1EABD0D20;
  if (!qword_1EABD0D20)
  {
    sub_18E169A64(&qword_1EABD0D28, qword_18E1AD128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0D20);
  }

  return result;
}

unint64_t sub_18E187CC4()
{
  result = qword_1EABD0D30;
  if (!qword_1EABD0D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0D30);
  }

  return result;
}

unint64_t sub_18E187D1C()
{
  result = qword_1EABD0D38;
  if (!qword_1EABD0D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0D38);
  }

  return result;
}

unint64_t sub_18E187D74()
{
  result = qword_1EABD0D40;
  if (!qword_1EABD0D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0D40);
  }

  return result;
}

unint64_t sub_18E187DCC()
{
  result = qword_1EABCFDE8;
  if (!qword_1EABCFDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFDE8);
  }

  return result;
}

unint64_t sub_18E187E24()
{
  result = qword_1EABCFDF0;
  if (!qword_1EABCFDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFDF0);
  }

  return result;
}

unint64_t sub_18E187E7C()
{
  result = qword_1EABD0D48;
  if (!qword_1EABD0D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0D48);
  }

  return result;
}

unint64_t sub_18E187ED4()
{
  result = qword_1EABD0D50;
  if (!qword_1EABD0D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0D50);
  }

  return result;
}

unint64_t sub_18E187F2C()
{
  result = qword_1EABD0D58;
  if (!qword_1EABD0D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0D58);
  }

  return result;
}

unint64_t sub_18E187F84()
{
  result = qword_1EABD0D60;
  if (!qword_1EABD0D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0D60);
  }

  return result;
}

uint64_t StringRenderedPromptSanitizer.init(overrides:guardrails:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  memcpy((a3 + 24), a2, 0x60uLL);
  type metadata accessor for CachedSafetyModelsWrapper();
  sub_18E15B80C();
  sub_18E15933C();
  type metadata accessor for CachedSafetyModels();
  sub_18E15B80C();
  sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
  sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
  sub_18E15A160();
  sub_18E1A7490();
  sub_18E161880(&qword_1EABD0A80, qword_18E1ABBC0);
  v6 = sub_18E15A434();
  sub_18E15A8DC(v6);
  *(a3 + 120) = v3;
  type metadata accessor for ModelManagerSessionWrapper();
  v7 = sub_18E15B80C();
  sub_18E161880(&qword_1EABD0AE8, &qword_18E1AC170);
  v8 = sub_18E15A434();
  result = sub_18E15B9EC(v8);
  *(v7 + 16) = result;
  *(a3 + 128) = v7;
  return result;
}

uint64_t StringRenderedPromptSanitizer.Overrides.denyList.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

GenerativeModels::StringRenderedPromptSanitizer::Overrides __swiftcall StringRenderedPromptSanitizer.Overrides.init(denyList:)(GenerativeModels::InputDenyListBundle denyList)
{
  v2 = *(denyList.identifier._countAndFlagsBits + 8);
  *v1 = *denyList.identifier._countAndFlagsBits;
  v1[1] = v2;
  result.denyList.value = denyList;
  return result;
}

BOOL static StringRenderedPromptSanitizer.Overrides.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (v3)
    {
      v4 = *a1 == *a2 && v2 == v3;
      return v4 || (sub_18E15A124() & 1) != 0;
    }

    v6 = a1[1];
LABEL_12:

    return 0;
  }

  if (v3)
  {
    v5 = a2[1];
    goto LABEL_12;
  }

  return 1;
}

uint64_t sub_18E1881B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7473694C796E6564 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E1A7B90();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E18822C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E1881B4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E188258(uint64_t a1)
{
  v2 = sub_18E188410();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E188294(uint64_t a1)
{
  v2 = sub_18E188410();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StringRenderedPromptSanitizer.Overrides.encode(to:)()
{
  sub_18E159F44();
  v2 = v1;
  v3 = sub_18E161880(&qword_1EABD0D68, &qword_18E1AD470);
  sub_18E159050(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v15 - v10;
  v12 = *v0;
  v13 = v0[1];
  v14 = v2[4];
  sub_18E159D90(v2, v2[3]);
  sub_18E188410();

  sub_18E1A7CD0();
  v15[0] = v12;
  v15[1] = v13;
  sub_18E188464();
  sub_18E1A7AE0();

  (*(v5 + 8))(v11, v3);
  sub_18E15A29C();
}

unint64_t sub_18E188410()
{
  result = qword_1EABD0188;
  if (!qword_1EABD0188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0188);
  }

  return result;
}

unint64_t sub_18E188464()
{
  result = qword_1EABD0120;
  if (!qword_1EABD0120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0120);
  }

  return result;
}

uint64_t StringRenderedPromptSanitizer.Overrides.hash(into:)()
{
  if (!v0[1])
  {
    return sub_18E1A7C80();
  }

  v1 = *v0;
  sub_18E1A7C80();

  return sub_18E1A75C0();
}

uint64_t StringRenderedPromptSanitizer.Overrides.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18E159F00();
  sub_18E1A7C80();
  if (v2)
  {
    sub_18E1A75C0();
  }

  return sub_18E1A7CA0();
}

void StringRenderedPromptSanitizer.Overrides.init(from:)()
{
  sub_18E159F44();
  v3 = v2;
  v5 = v4;
  v6 = sub_18E161880(&qword_1EABD0D70, &qword_18E1AD478);
  sub_18E159050(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v11, v12);
  sub_18E15D458();
  v13 = v3[4];
  sub_18E159D90(v3, v3[3]);
  sub_18E188410();
  sub_18E1A7CC0();
  if (!v0)
  {
    sub_18E18874C();
    sub_18E15D5E8();
    sub_18E1A7A30();
    (*(v8 + 8))(v1, v6);
    *v5 = v14;
  }

  sub_18E158EC4(v3);
  sub_18E15A29C();
}

uint64_t sub_18E1886E0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18E1A7C60();
  sub_18E1A7C80();
  if (v2)
  {
    sub_18E1A75C0();
  }

  return sub_18E1A7CA0();
}

unint64_t sub_18E18874C()
{
  result = qword_1EABCFE50;
  if (!qword_1EABCFE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFE50);
  }

  return result;
}

uint64_t StringRenderedPromptSanitizer.Guardrails.languageRecognizer.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 24);
  v7[0] = *(v1 + 8);
  v7[1] = v2;
  v4 = *(v1 + 56);
  v8 = *(v1 + 40);
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_18E18CC14(v7, &v6, &qword_1EABD0D78, &qword_18E1AD480);
}

uint64_t StringRenderedPromptSanitizer.Guardrails.languageScriptValidator.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_18E18884C(v2);
}

uint64_t sub_18E18884C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

double StringRenderedPromptSanitizer.Guardrails.init(sensitiveContentSettings:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  return result;
}

__n128 StringRenderedPromptSanitizer.Guardrails.init(sensitiveContentSettings:languageRecognizer:languageScriptValidator:)@<Q0>(void *a1@<X0>, _OWORD *a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2[1];
  *(a4 + 8) = *a2;
  *(a4 + 24) = v4;
  v5 = a2[3];
  *(a4 + 40) = a2[2];
  v6 = a3[1].n128_u64[0];
  *a4 = *a1;
  *(a4 + 56) = v5;
  result = *a3;
  *(a4 + 72) = *a3;
  *(a4 + 88) = v6;
  return result;
}

BOOL static StringRenderedPromptSanitizer.Guardrails.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 24);
  v98[0] = *(a1 + 8);
  v98[1] = v5;
  v6 = *(a1 + 56);
  v98[2] = *(a1 + 40);
  v98[3] = v6;
  v8 = *(a1 + 72);
  v7 = *(a1 + 80);
  v9 = *(a1 + 88);
  v10 = *a2;
  v11 = *(a2 + 56);
  v99[2] = *(a2 + 40);
  v99[3] = v11;
  v12 = *(a2 + 24);
  v99[0] = *(a2 + 8);
  v99[1] = v12;
  v14 = *(a2 + 72);
  v13 = *(a2 + 80);
  v15 = *(a2 + 88);
  if (!v4)
  {
    if (!v10)
    {

      goto LABEL_8;
    }

LABEL_6:

    return 0;
  }

  if (!v10)
  {
    goto LABEL_6;
  }

  if ((sub_18E15DFE0(v4, v10) & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v77 = v7;
  v16 = *&v98[0];
  v17 = *&v99[0];
  if (*&v98[0])
  {
    sub_18E15ABD4();
    v25 = *(a1 + 64);
    *&v89 = *&v98[0];
    *(&v92 + 1) = v25;
    v85 = v89;
    v86 = v90;
    v87 = v91;
    v88 = v92;
    if (*&v99[0])
    {
      v26 = *(a2 + 32);
      *&v84[8] = *(a2 + 16);
      *&v84[24] = v26;
      *&v84[40] = *(a2 + 48);
      *&v84[56] = *(a2 + 64);
      *v84 = *&v99[0];
      sub_18E159348(v98, v18, v19, v20, v21, v22, v23, v24, v72, v77, *&v82[0]);
      sub_18E159348(v99, v27, v28, v29, v30, v31, v32, v33, v73, v78, *&v82[0]);
      sub_18E159348(&v89, v34, v35, v36, v37, v38, v39, v40, v74, v79, *&v82[0]);
      v41 = static LanguageRecognizer.== infix(_:_:)(&v85, v84);
      v82[0] = *v84;
      v82[1] = *&v84[16];
      v82[2] = *&v84[32];
      v82[3] = *&v84[48];
      sub_18E182F4C(v82);
      v83[0] = v85;
      v83[1] = v86;
      v83[2] = v87;
      v83[3] = v88;
      sub_18E182F4C(v83);
      v42 = *(a1 + 32);
      *&v84[8] = *(a1 + 16);
      *&v84[24] = v42;
      *&v84[40] = *(a1 + 48);
      v43 = *(a1 + 64);
      *v84 = v16;
      *&v84[56] = v43;
      sub_18E18CBB8(v84, &qword_1EABD0D78, &qword_18E1AD480);
      if ((v41 & 1) == 0)
      {
        return 0;
      }

      if (v8)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }

    *v84 = v89;
    *&v84[16] = v90;
    *&v84[32] = v91;
    *&v84[48] = v92;
    sub_18E18DFBC(v98, v18, v19, v20, v21, v22, v23, v24, v72, v77, *&v82[0]);
    sub_18E18DFBC(v99, v49, v50, v51, v52, v53, v54, v55, v75, v80, *&v82[0]);
    sub_18E18DFBC(&v89, v56, v57, v58, v59, v60, v61, v62, v76, v81, *&v82[0]);
    sub_18E182F4C(v84);
LABEL_18:
    sub_18E15ABD4();
    v63 = *(a2 + 32);
    v94 = *(a2 + 16);
    v64 = *(a1 + 64);
    *&v89 = v16;
    *(&v92 + 1) = v64;
    v93 = v17;
    v95 = v63;
    v96 = *(a2 + 48);
    v97 = *(a2 + 64);
    sub_18E18CBB8(&v89, &qword_1EABD0D80, &qword_18E1AD488);
    return 0;
  }

  if (*&v99[0])
  {
    sub_18E18CC14(v98, &v89, &qword_1EABD0D78, &qword_18E1AD480);
    sub_18E18CC14(v99, &v89, &qword_1EABD0D78, &qword_18E1AD480);
    goto LABEL_18;
  }

  sub_18E15ABD4();
  v65 = *(a1 + 64);
  *&v89 = 0;
  *(&v92 + 1) = v65;
  sub_18E18CC14(v98, &v85, &qword_1EABD0D78, &qword_18E1AD480);
  sub_18E18CC14(v99, &v85, &qword_1EABD0D78, &qword_18E1AD480);
  sub_18E18CBB8(&v89, &qword_1EABD0D78, &qword_18E1AD480);
  if (v8)
  {
LABEL_12:
    *&v89 = v8;
    *(&v89 + 1) = v77;
    *&v90 = v9;
    if (v14)
    {
      *&v85 = v14;
      BYTE8(v85) = v13 & 1;
      *&v86 = v15;
      v44 = sub_18E15D118();
      sub_18E18884C(v44);
      v45 = sub_18E158FD8();
      sub_18E18884C(v45);
      v46 = sub_18E15D118();
      sub_18E18884C(v46);
      v47 = static LanguageScriptValidator.== infix(_:_:)(&v89, &v85);

      v48 = sub_18E15D118();
      sub_18E188CFC(v48);
      return (v47 & 1) != 0;
    }

    v67 = sub_18E15D118();
    sub_18E18884C(v67);
    sub_18E18884C(0);
    v68 = sub_18E15D118();
    sub_18E18884C(v68);

LABEL_23:
    v69 = sub_18E15D118();
    sub_18E188CFC(v69);
    v70 = sub_18E158FD8();
    sub_18E188CFC(v70);
    return 0;
  }

LABEL_20:
  sub_18E18884C(0);
  if (v14)
  {
    v66 = sub_18E158FD8();
    sub_18E18884C(v66);
    goto LABEL_23;
  }

  sub_18E18884C(0);
  sub_18E188CFC(0);
  return 1;
}

uint64_t sub_18E188CFC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_18E188D3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x800000018E1B2BA0 == a2;
  if (v4 || (sub_18E1A7B90() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x800000018E1B2BC0 == a2;
    if (v6 || (sub_18E1A7B90() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000017 && 0x800000018E1B2BE0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_18E1A7B90();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_18E188E54(char a1)
{
  if (!a1)
  {
    return 0xD000000000000018;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000017;
}

uint64_t sub_18E188EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E188D3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E188ED8(uint64_t a1)
{
  v2 = sub_18E18921C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E188F14(uint64_t a1)
{
  v2 = sub_18E18921C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StringRenderedPromptSanitizer.Guardrails.encode(to:)()
{
  sub_18E159F44();
  v3 = v2;
  v4 = sub_18E161880(&qword_1EABD0D88, &qword_18E1AD490);
  sub_18E159050(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v21 - v11;
  v13 = *v0;
  v14 = *(v0 + 3);
  v34 = *(v0 + 1);
  v35 = v14;
  v15 = *(v0 + 7);
  v36 = *(v0 + 5);
  v37 = v15;
  v16 = v0[10];
  v24 = v0[9];
  v23 = v16;
  v22 = v0[11];
  v17 = v3[4];
  sub_18E159D90(v3, v3[3]);
  sub_18E18921C();

  sub_18E1A7CD0();
  *&v30 = v13;
  v29[0] = 0;
  sub_18E189270();
  sub_18E1A7AE0();
  if (v1)
  {
  }

  else
  {
    v18 = v22;
    v19 = v23;
    v20 = v24;

    v30 = v34;
    v31 = v35;
    v32 = v36;
    v33 = v37;
    v29[79] = 1;
    sub_18E18CC14(&v34, v29, &qword_1EABD0D78, &qword_18E1AD480);
    sub_18E1892C4();
    sub_18E1A7AE0();
    sub_18E15A240();
    sub_18E18CBB8(v29, &qword_1EABD0D78, &qword_18E1AD480);
    v26 = v20;
    v27 = v19;
    v28 = v18;
    v25 = 2;
    sub_18E18884C(v20);
    sub_18E189318();
    sub_18E1A7AE0();
    sub_18E188CFC(v26);
  }

  (*(v6 + 8))(v12, v4);
  sub_18E15C520();
  sub_18E15A29C();
}

unint64_t sub_18E18921C()
{
  result = qword_1EABD0D90;
  if (!qword_1EABD0D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0D90);
  }

  return result;
}

unint64_t sub_18E189270()
{
  result = qword_1EABCFDD8;
  if (!qword_1EABCFDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFDD8);
  }

  return result;
}

unint64_t sub_18E1892C4()
{
  result = qword_1EABD0D98;
  if (!qword_1EABD0D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0D98);
  }

  return result;
}

unint64_t sub_18E189318()
{
  result = qword_1EABD0DA0;
  if (!qword_1EABD0DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0DA0);
  }

  return result;
}

uint64_t StringRenderedPromptSanitizer.Guardrails.hash(into:)(const void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  if (*v1)
  {
    sub_18E15A1C4();
    sub_18E183964(a1, v3);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_18E1A7C80();
    if (!v5)
    {
      return sub_18E1A7C80();
    }

    goto LABEL_7;
  }

  sub_18E1A7C80();
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  *&v10[8] = *(v1 + 16);
  *&v10[24] = *(v1 + 32);
  *&v10[40] = *(v1 + 48);
  *&v10[56] = *(v1 + 64);
  *v10 = v4;
  sub_18E15A1C4();
  v11 = v4;
  v8 = *(v1 + 32);
  v12 = *(v1 + 16);
  v13 = v8;
  v14 = *(v1 + 48);
  v15 = *(v1 + 64);
  sub_18E182F14(&v11, v16);
  LanguageRecognizer.hash(into:)(a1);
  v16[0] = *v10;
  v16[1] = *&v10[16];
  v16[2] = *&v10[32];
  v16[3] = *&v10[48];
  sub_18E182F4C(v16);
  if (!v5)
  {
    return sub_18E1A7C80();
  }

LABEL_7:
  sub_18E15A1C4();
  sub_18E159F88();
  sub_18E18391C();
  sub_18E1A7C80();
  if (v7)
  {
    *&v16[0] = v7;
    sub_18E15A1C4();
    sub_18E1A7390();
    sub_18E18CF44(&qword_1EABD0BE0, MEMORY[0x1E69A0EC8]);
    sub_18E159F88();
    return sub_18E1A74D0();
  }

  return sub_18E1A7C80();
}

uint64_t StringRenderedPromptSanitizer.Guardrails.hashValue.getter()
{
  sub_18E159F00();
  StringRenderedPromptSanitizer.Guardrails.hash(into:)(v1);
  return sub_18E1A7CA0();
}

void StringRenderedPromptSanitizer.Guardrails.init(from:)()
{
  sub_18E159F44();
  v2 = v1;
  v4 = v3;
  v39 = sub_18E161880(&qword_1EABD0DA8, &qword_18E1AD498);
  sub_18E159050(v39);
  v6 = *(v5 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v7, v8);
  sub_18E15DAF8();
  v9 = v2[4];
  sub_18E159D90(v2, v2[3]);
  sub_18E18921C();
  sub_18E1A7CC0();
  if (v0)
  {
    sub_18E158EC4(v2);
  }

  else
  {
    v16 = v4;
    LOBYTE(v17[0]) = 0;
    sub_18E18C878();
    sub_18E18DFAC();
    sub_18E1A7A30();
    v15 = v18;
    v30 = 1;
    sub_18E18C8CC();
    sub_18E18DFAC();
    sub_18E1A7A30();
    v35 = v31;
    v36 = v32;
    v37 = v33;
    v38 = v34;
    v26 = 2;
    sub_18E18C920();
    sub_18E18DFAC();
    sub_18E1A7A30();
    v10 = sub_18E15D898();
    v11(v10);
    *&v17[1] = v35;
    *&v17[3] = v36;
    *&v17[5] = v37;
    v12 = v27;
    v13 = v28;
    v14 = v29;
    v17[0] = v15;
    *&v17[7] = v38;
    v17[9] = v27;
    v17[10] = v28;
    v17[11] = v29;
    memcpy(v16, v17, 0x60uLL);
    sub_18E18C974(v17, &v18);
    sub_18E158EC4(v2);
    v18 = v15;
    v19 = v35;
    v20 = v36;
    v21 = v37;
    v22 = v38;
    v23 = v12;
    v24 = v13;
    v25 = v14;
    sub_18E18C9AC(&v18);
  }

  sub_18E15C520();
  sub_18E15A29C();
}

uint64_t sub_18E1897F4()
{
  sub_18E1A7C60();
  StringRenderedPromptSanitizer.Guardrails.hash(into:)(v1);
  return sub_18E1A7CA0();
}

BOOL static StringRenderedPromptSanitizer.DefaultableOverrides.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((v4 & 1) == 0)
  {
    if ((v7 & 1) == 0)
    {
      if (v3 == 1)
      {
        v23 = sub_18E15D108();
        sub_18E159D24(v23);
        v24 = sub_18E15A4C8();
        sub_18E159D24(v24);
        v25 = sub_18E15A4C8();
        sub_18E159D24(v25);
        v26 = sub_18E15D108();
        sub_18E159D24(v26);
        v27 = sub_18E15A4C8();
        sub_18E15F0C0(v27, v28, 0);
        v29 = sub_18E15D108();
        sub_18E15F0C0(v29, v30, v31);
        if (v5 == 1)
        {
          goto LABEL_5;
        }

        goto LABEL_16;
      }

      v72 = *a1;
      v73 = v3;
      if (v5 != 1)
      {
        v70 = v6;
        v71 = v5;
        sub_18E15D108();
        sub_18E15923C();
        v59 = sub_18E15923C();
        sub_18E159D24(v59);
        sub_18E15D108();
        v60 = sub_18E15923C();
        sub_18E159D28(v60, v61);
        v62 = static StringRenderedPromptSanitizer.Overrides.== infix(_:_:)(&v72, &v70);
        v63 = sub_18E15A234();
        sub_18E15F0C0(v63, v64, 0);
        v65 = sub_18E15D108();
        sub_18E15F0C0(v65, v66, v67);

        v68 = sub_18E15A234();
        sub_18E15F0C4(v68, v69);
        return v62;
      }

      sub_18E15BCB0();
      sub_18E15923C();
      v40 = sub_18E15923C();
      sub_18E159D24(v40);
      sub_18E15BCB0();
      v41 = sub_18E15923C();
      sub_18E159D28(v41, v42);
      v43 = sub_18E15A234();
      sub_18E15F0C0(v43, v44, 0);
      v37 = sub_18E15BCB0();
      v39 = 0;
      goto LABEL_15;
    }

LABEL_7:
    v20 = sub_18E15A234();
    sub_18E159D24(v20);
    v21 = sub_18E15923C();
    sub_18E15F0C0(v21, v22, v4);
    sub_18E15F0C0(v6, v5, v7);
    return 0;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_7;
  }

  if (v3 != 1)
  {
    v72 = *a1;
    v73 = v3;
    if (v5 != 1)
    {
      v70 = v6;
      v71 = v5;
      v17 = 1;
      sub_18E15AAAC();
      sub_18E15923C();
      v48 = sub_18E15923C();
      sub_18E159D24(v48);
      sub_18E15AAAC();
      v49 = sub_18E15923C();
      sub_18E159D28(v49, v50);
      v51 = static StringRenderedPromptSanitizer.Overrides.== infix(_:_:)(&v72, &v70);
      v52 = sub_18E15A234();
      sub_18E15F0C0(v52, v53, 1);
      v54 = sub_18E15AAAC();
      sub_18E15F0C0(v54, v55, v56);

      v57 = sub_18E15A234();
      sub_18E15F0C4(v57, v58);
      if (v51)
      {
        return v17;
      }

      return 0;
    }

    sub_18E15BCB0();
    sub_18E15923C();
    v32 = sub_18E15923C();
    sub_18E159D24(v32);
    sub_18E15BCB0();
    v33 = sub_18E15923C();
    sub_18E159D28(v33, v34);
    v35 = sub_18E15A234();
    sub_18E15F0C0(v35, v36, 1);
    v37 = sub_18E15BCB0();
    v39 = 1;
LABEL_15:
    sub_18E15F0C0(v37, v38, v39);

    goto LABEL_16;
  }

  v8 = sub_18E15AAAC();
  sub_18E159D24(v8);
  v9 = sub_18E15A4C8();
  sub_18E159D24(v9);
  v10 = sub_18E15A4C8();
  sub_18E159D24(v10);
  v11 = sub_18E15AAAC();
  sub_18E159D24(v11);
  v12 = sub_18E15A4C8();
  sub_18E15F0C0(v12, v13, 1);
  v14 = sub_18E15AAAC();
  sub_18E15F0C0(v14, v15, v16);
  if (v5 != 1)
  {
LABEL_16:
    v45 = sub_18E15A234();
    sub_18E15F0C4(v45, v46);
    sub_18E15F0C4(v6, v5);
    return 0;
  }

LABEL_5:
  v17 = 1;
  v18 = sub_18E15A4C8();
  sub_18E15F0C4(v18, v19);
  return v17;
}

uint64_t sub_18E189B48(uint64_t a1)
{
  v2 = sub_18E18C9DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E189B84(uint64_t a1)
{
  v2 = sub_18E18C9DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E189BC0(uint64_t a1)
{
  v2 = sub_18E18CAD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E189BFC(uint64_t a1)
{
  v2 = sub_18E18CAD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E189C38(uint64_t a1)
{
  v2 = sub_18E18CA30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E189C74(uint64_t a1)
{
  v2 = sub_18E18CA30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StringRenderedPromptSanitizer.DefaultableOverrides.encode(to:)()
{
  sub_18E159F44();
  v4 = v3;
  v5 = sub_18E161880(&qword_1EABD0DC8, &qword_18E1AD4A0);
  v6 = sub_18E159050(v5);
  v36 = v7;
  v37 = v6;
  v9 = *(v8 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v10, v11);
  sub_18E159FE0();
  v12 = sub_18E161880(&qword_1EABD0DD0, &qword_18E1AD4A8);
  v13 = sub_18E159050(v12);
  v34 = v14;
  v35 = v13;
  v16 = *(v15 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v33 - v19;
  v40 = sub_18E161880(&qword_1EABD0DD8, &qword_18E1AD4B0);
  sub_18E159050(v40);
  v22 = v21;
  v24 = *(v23 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v25, v26);
  sub_18E15D458();
  v27 = v0[1];
  v38 = *v0;
  v39 = v27;
  v28 = *(v0 + 16);
  v29 = v4[4];
  sub_18E159D90(v4, v4[3]);
  sub_18E18C9DC();
  sub_18E1A7CD0();
  if (v28)
  {
    LOBYTE(v41) = 1;
    sub_18E18CA30();
    v30 = v40;
    sub_18E15D5E8();
    sub_18E1A7AD0();
    v41 = v38;
    v42 = v39;
    sub_18E18CA84();
    v31 = v37;
    sub_18E1A7AE0();
    (*(v36 + 8))(v2, v31);
  }

  else
  {
    LOBYTE(v41) = 0;
    sub_18E18CAD8();
    v30 = v40;
    sub_18E15D5E8();
    sub_18E1A7AD0();
    v41 = v38;
    v42 = v39;
    sub_18E18CA84();
    v32 = v35;
    sub_18E1A7AE0();
    (*(v34 + 8))(v20, v32);
  }

  (*(v22 + 8))(v1, v30);
  sub_18E15A29C();
}

uint64_t StringRenderedPromptSanitizer.DefaultableOverrides.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if ((*(v0 + 16) & 1) == 0)
  {
    MEMORY[0x193ACB0A0](0);
    if (v2 != 1)
    {
      sub_18E1A7C80();
      sub_18E1A7C80();
      if (v2)
      {
        v8 = sub_18E159F88();
        sub_18E159D28(v8, v9);
        sub_18E1A75C0();
        v5 = sub_18E159F88();
      }

      else
      {
        v5 = v1;
        v6 = 0;
      }

      v10 = 0;
      goto LABEL_13;
    }

    return sub_18E1A7C80();
  }

  MEMORY[0x193ACB0A0](1);
  if (v2 == 1)
  {
    return sub_18E1A7C80();
  }

  sub_18E1A7C80();
  sub_18E1A7C80();
  if (v2)
  {
    v3 = sub_18E159F88();
    sub_18E159D28(v3, v4);
    sub_18E1A75C0();
    v5 = sub_18E159F88();
  }

  else
  {
    v5 = v1;
    v6 = 0;
  }

  v10 = 1;
LABEL_13:

  return sub_18E15F0C0(v5, v6, v10);
}

uint64_t StringRenderedPromptSanitizer.DefaultableOverrides.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_18E159F00();
  StringRenderedPromptSanitizer.DefaultableOverrides.hash(into:)();
  return sub_18E1A7CA0();
}

void StringRenderedPromptSanitizer.DefaultableOverrides.init(from:)()
{
  sub_18E159F44();
  v4 = v3;
  v62 = v5;
  v6 = sub_18E161880(&qword_1EABD0DE0, &qword_18E1AD4B8);
  v7 = sub_18E159050(v6);
  v59 = v8;
  v60 = v7;
  v10 = *(v9 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v53 - v13;
  v15 = sub_18E161880(&qword_1EABD0DE8, &qword_18E1AD4C0);
  sub_18E159050(v15);
  v58 = v16;
  v18 = *(v17 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v19, v20);
  sub_18E159FE0();
  v21 = sub_18E161880(&qword_1EABD0DF0, &unk_18E1AD4C8);
  sub_18E159050(v21);
  v61 = v22;
  v24 = *(v23 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v25, v26);
  sub_18E15D458();
  v27 = v4[4];
  sub_18E159D90(v4, v4[3]);
  sub_18E18C9DC();
  sub_18E1A7CC0();
  if (v0)
  {
    goto LABEL_9;
  }

  v56 = v15;
  v57 = v2;
  v64 = v4;
  v28 = v62;
  v29 = sub_18E1A7AA0();
  sub_18E15AF14(v29, 0);
  if (v31 == v32 >> 1)
  {
    goto LABEL_8;
  }

  v55 = 0;
  if (v31 < (v32 >> 1))
  {
    v33 = *(v30 + v31);
    sub_18E15AF84(v31 + 1);
    v35 = v34;
    v37 = v36;
    swift_unknownObjectRelease();
    if (v35 == v37 >> 1)
    {
      v54 = v33;
      if (v33)
      {
        LOBYTE(v63) = 1;
        sub_18E18CA30();
        v38 = v14;
        sub_18E15D5E8();
        v39 = v55;
        sub_18E1A79F0();
        if (!v39)
        {
          sub_18E18CB2C();
          v40 = v60;
          sub_18E15A45C();
          swift_unknownObjectRelease();
          v50 = v59;
LABEL_14:
          (*(v50 + 8))(v38, v40);
          v51 = sub_18E15C598();
          v52(v51);
          *v28 = v63;
          *(v28 + 16) = v54;
          sub_18E158EC4(v64);
          goto LABEL_10;
        }
      }

      else
      {
        LOBYTE(v63) = 0;
        sub_18E18CAD8();
        v38 = v57;
        sub_18E15D5E8();
        v47 = v55;
        sub_18E1A79F0();
        if (!v47)
        {
          sub_18E18CB2C();
          v40 = v56;
          sub_18E15A45C();
          swift_unknownObjectRelease();
          v50 = v58;
          goto LABEL_14;
        }
      }

      v48 = sub_18E15C598();
      v49(v48);
      swift_unknownObjectRelease();
      v4 = v64;
LABEL_9:
      sub_18E158EC4(v4);
LABEL_10:
      sub_18E15A29C();
      return;
    }

LABEL_8:
    v41 = sub_18E1A78C0();
    swift_allocError();
    v43 = v42;
    v44 = *(sub_18E161880(&qword_1EABD06A0, &qword_18E1AA9F0) + 48);
    *v43 = &type metadata for StringRenderedPromptSanitizer.DefaultableOverrides;
    sub_18E1A7A00();
    sub_18E15B9CC();
    v45 = *MEMORY[0x1E69E6AF8];
    sub_18E1594D8(v41);
    (*(v46 + 104))(v43);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v61 + 8))(v1, v21);
    v4 = v64;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_18E18A5A4()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_18E1A7C60();
  StringRenderedPromptSanitizer.DefaultableOverrides.hash(into:)();
  return sub_18E1A7CA0();
}

BOOL static StringRenderedPromptSanitizer.DefaultableGuardrails.== infix(_:_:)(char *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0x61uLL);
  memcpy(v164, a2, 0x61uLL);
  memcpy(v165, __src, 0x61uLL);
  v4 = memcpy(v166, a2, sizeof(v166));
  v12 = __dst[0];
  v13 = v164[0];
  if ((__dst[12] & 1) == 0)
  {
    if ((v164[12] & 1) == 0)
    {
      if (__dst[0] == 1)
      {
        v50 = sub_18E18DF94(v4, v5, v6, v7, v8, v9, v10, v11, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
        v58 = sub_18E15DB68(v50, v51, v52, v53, v54, v55, v56, v57, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
        v66 = sub_18E15DB68(v58, v59, v60, v61, v62, v63, v64, v65, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
        sub_18E18DF94(v66, v67, v68, v69, v70, v71, v72, v73, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
        sub_18E18CBB8(v165, &qword_1EABD0DF8, &qword_18E1AD4D8);
        if (v13 == 1)
        {
          goto LABEL_5;
        }

        goto LABEL_13;
      }

LABEL_11:
      __srca[0] = __dst[0];
      memcpy(&__srca[1], __src + 8, 0x58uLL);
      v74 = memcpy(v159, __srca, sizeof(v159));
      if (v164[0] != 1)
      {
        v107 = memcpy(&v156[1], (a2 + 8), 0x58uLL);
        v115 = sub_18E18DF94(v107, v108, v109, v110, v111, v112, v113, v114, v164[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
        v123 = sub_18E15DB68(v115, v116, v117, v118, v119, v120, v121, v122, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
        v131 = sub_18E18DF94(v123, v124, v125, v126, v127, v128, v129, v130, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
        v139 = sub_18E15DB68(v131, v132, v133, v134, v135, v136, v137, v138, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
        v147 = sub_18E15DB68(v139, v140, v141, v142, v143, v144, v145, v146, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
        sub_18E18DF94(v147, v148, v149, v150, v151, v152, v153, v154, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
        sub_18E18CC14(__srca, v161, &qword_1EABD0E08, &qword_18E1AD4E8);
        v155 = static StringRenderedPromptSanitizer.Guardrails.== infix(_:_:)(v159, v156);
        sub_18E18CBB8(v165, &qword_1EABD0DF8, &qword_18E1AD4D8);
        sub_18E18CC74(v164);
        sub_18E18CC74(__dst);
        memcpy(v157, v156, sizeof(v157));
        sub_18E18C9AC(v157);
        memcpy(v158, v159, sizeof(v158));
        sub_18E18C9AC(v158);
        v161[0] = v12;
        memcpy(&v161[1], __src + 8, 0x58uLL);
        sub_18E18CBB8(v161, &qword_1EABD0E08, &qword_18E1AD4E8);
        return v155;
      }

      v82 = sub_18E18DF94(v74, v75, v76, v77, v78, v79, v80, v81, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
      v90 = sub_18E15DB68(v82, v83, v84, v85, v86, v87, v88, v89, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
      v98 = sub_18E15DB68(v90, v91, v92, v93, v94, v95, v96, v97, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
      sub_18E18DF94(v98, v99, v100, v101, v102, v103, v104, v105, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
      sub_18E18CC14(__srca, v161, &qword_1EABD0E08, &qword_18E1AD4E8);
      sub_18E18CBB8(v165, &qword_1EABD0DF8, &qword_18E1AD4D8);
      memcpy(v161, v159, 0x60uLL);
      sub_18E18C9AC(v161);
      goto LABEL_13;
    }

LABEL_7:
    v39 = sub_18E15DB68(v4, v5, v6, v7, v8, v9, v10, v11, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
    sub_18E18DF94(v39, v40, v41, v42, v43, v44, v45, v46, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
    v47 = &qword_1EABD0DF8;
    v48 = &qword_18E1AD4D8;
    v49 = v165;
LABEL_14:
    sub_18E18CBB8(v49, v47, v48);
    return 0;
  }

  if ((v164[12] & 1) == 0)
  {
    goto LABEL_7;
  }

  if (__dst[0] != 1)
  {
    goto LABEL_11;
  }

  v14 = sub_18E18DF94(v4, v5, v6, v7, v8, v9, v10, v11, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
  v22 = sub_18E15DB68(v14, v15, v16, v17, v18, v19, v20, v21, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
  v30 = sub_18E15DB68(v22, v23, v24, v25, v26, v27, v28, v29, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
  sub_18E18DF94(v30, v31, v32, v33, v34, v35, v36, v37, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
  sub_18E18CBB8(v165, &qword_1EABD0DF8, &qword_18E1AD4D8);
  if (v13 != 1)
  {
LABEL_13:
    v161[0] = v12;
    sub_18E159F18();
    v161[12] = v13;
    memcpy(v162, (a2 + 8), sizeof(v162));
    v47 = &unk_1EABD0E00;
    v48 = &unk_18E1AD4E0;
    v49 = v161;
    goto LABEL_14;
  }

LABEL_5:
  v38 = 1;
  v161[0] = 1;
  sub_18E159F18();
  sub_18E18CBB8(v161, &qword_1EABD0E08, &qword_18E1AD4E8);
  return v38;
}

uint64_t sub_18E18A970(char a1)
{
  sub_18E159F00();
  MEMORY[0x193ACB0A0](a1 & 1);
  return sub_18E1A7CA0();
}

uint64_t sub_18E18A9B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E15A124();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E18AA18()
{
  sub_18E159F00();
  MEMORY[0x193ACB0A0](0);
  return sub_18E1A7CA0();
}

uint64_t sub_18E18AA54(uint64_t a1)
{
  v2 = sub_18E18CCA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E18AA90(uint64_t a1)
{
  v2 = sub_18E18CCA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E18AACC(uint64_t a1)
{
  v2 = sub_18E18CDA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E18AB08(uint64_t a1)
{
  v2 = sub_18E18CDA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E18AB44(uint64_t a1)
{
  v2 = sub_18E18CCF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E18AB80(uint64_t a1)
{
  v2 = sub_18E18CCF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StringRenderedPromptSanitizer.DefaultableGuardrails.encode(to:)()
{
  sub_18E159F44();
  v4 = v3;
  v5 = sub_18E161880(&qword_1EABD0E10, &qword_18E1AD4F0);
  v6 = sub_18E159050(v5);
  v33 = v7;
  v34 = v6;
  v9 = *(v8 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v10, v11);
  sub_18E15DAF8();
  v12 = sub_18E161880(&qword_1EABD0E18, &qword_18E1AD4F8);
  v13 = sub_18E159050(v12);
  v31 = v14;
  v32 = v13;
  v16 = *(v15 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v31 - v19;
  v35 = sub_18E161880(&qword_1EABD0E20, &qword_18E1AD500);
  sub_18E159050(v35);
  v22 = v21;
  v24 = *(v23 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v25, v26);
  sub_18E159FE0();
  v36 = v0;
  v27 = v0[96];
  v28 = v4[4];
  sub_18E159D90(v4, v4[3]);
  sub_18E18CCA4();
  sub_18E1A7CD0();
  if (v27)
  {
    v37[0] = 1;
    sub_18E18CCF8();
    sub_18E18E004();
    memcpy(v37, v36, sizeof(v37));
    sub_18E18CD4C();
    v29 = v34;
    sub_18E1A7AE0();
    (*(v33 + 8))(v2, v29);
  }

  else
  {
    v37[0] = 0;
    sub_18E18CDA0();
    sub_18E18E004();
    memcpy(v37, v36, sizeof(v37));
    sub_18E18CD4C();
    v30 = v32;
    sub_18E1A7AE0();
    (*(v31 + 8))(v20, v30);
  }

  (*(v22 + 8))(v1, v4);
  sub_18E15A29C();
}

uint64_t StringRenderedPromptSanitizer.DefaultableGuardrails.hash(into:)(const void *a1)
{
  v2 = v1;
  v4 = v2[96];
  if (v4)
  {
    v5 = &v8;
  }

  else
  {
    v5 = &v7;
  }

  memcpy(v5, v2, 0x60uLL);
  MEMORY[0x193ACB0A0](v4 & 1);
  return sub_18E18C6AC(a1);
}

uint64_t StringRenderedPromptSanitizer.DefaultableGuardrails.hashValue.getter()
{
  v1 = *(v0 + 96);
  sub_18E159F00();
  v2 = sub_18E15A234();
  memcpy(v2, v3, 0x60uLL);
  MEMORY[0x193ACB0A0](v1 & 1);
  sub_18E18C6AC(v5);
  return sub_18E1A7CA0();
}

void StringRenderedPromptSanitizer.DefaultableGuardrails.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_18E159F44();
  a20 = v23;
  a21 = v24;
  v85 = v21;
  v26 = v25;
  v83 = v27;
  v82 = sub_18E161880(&qword_1EABD0E48, &qword_18E1AD508);
  sub_18E159050(v82);
  v81 = v28;
  v30 = *(v29 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v31, v32);
  sub_18E15D458();
  v33 = sub_18E161880(&qword_1EABD0E50, &qword_18E1AD510);
  sub_18E159050(v33);
  v80 = v34;
  v36 = *(v35 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v37, v38);
  sub_18E15DAF8();
  v39 = sub_18E161880(&qword_1EABD0E58, &qword_18E1AD518);
  sub_18E159050(v39);
  v41 = v40;
  v43 = *(v42 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = v78 - v46;
  v48 = v26[3];
  v49 = v26[4];
  v84 = v26;
  sub_18E159D90(v26, v48);
  sub_18E18CCA4();
  v50 = v85;
  sub_18E1A7CC0();
  if (v50)
  {
    goto LABEL_8;
  }

  v78[1] = v22;
  v79 = v41;
  v51 = v83;
  v85 = v47;
  v52 = sub_18E1A7AA0();
  sub_18E15AF14(v52, 0);
  if (v54 == v55 >> 1)
  {
LABEL_7:
    v62 = sub_18E1A78C0();
    swift_allocError();
    v64 = v63;
    v65 = *(sub_18E161880(&qword_1EABD06A0, &qword_18E1AA9F0) + 48);
    *v64 = &type metadata for StringRenderedPromptSanitizer.DefaultableGuardrails;
    v66 = v85;
    sub_18E1A7A00();
    sub_18E15B9CC();
    v67 = *MEMORY[0x1E69E6AF8];
    sub_18E1594D8(v62);
    (*(v68 + 104))(v64);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v79 + 8))(v66, v39);
LABEL_8:
    sub_18E158EC4(v84);
LABEL_9:
    sub_18E15C520();
    sub_18E15A29C();
    return;
  }

  if (v54 < (v55 >> 1))
  {
    a11 = *(v53 + v54);
    sub_18E15AF84(v54 + 1);
    v57 = v56;
    v59 = v58;
    swift_unknownObjectRelease();
    if (v57 == v59 >> 1)
    {
      if (a11)
      {
        LOBYTE(v86[0]) = 1;
        sub_18E18CCF8();
        sub_18E15AE98();
        v60 = v51;
        sub_18E18CDF4();
        v61 = v82;
        sub_18E18DFF8();
        sub_18E1A7A30();
        sub_18E15CA98(&a12);
        swift_unknownObjectRelease();
        v69 = sub_18E15C05C();
        v70(v69, v61);
        v71 = sub_18E15D63C();
        v72(v71);
        memcpy(v87, v86, sizeof(v87));
        v73 = 1;
        a10 = 1;
        v51 = v60;
      }

      else
      {
        LOBYTE(v86[0]) = 0;
        sub_18E18CDA0();
        sub_18E15AE98();
        sub_18E18CDF4();
        sub_18E18DFF8();
        sub_18E1A7A30();
        sub_18E15CA98(&a10);
        swift_unknownObjectRelease();
        v74 = sub_18E15C05C();
        v75(v74, v33);
        v76 = sub_18E15D63C();
        v77(v76);
        memcpy(v87, v86, sizeof(v87));
        v73 = 0;
        a10 = 0;
      }

      memcpy(v51, v87, 0x60uLL);
      v51[96] = v73;
      sub_18E158EC4(v84);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_18E18B4C4()
{
  v1 = v0[96];
  sub_18E1A7C60();
  if (v1)
  {
    v2 = &v6;
  }

  else
  {
    v2 = &v5;
  }

  memcpy(v2, v0, 0x60uLL);
  MEMORY[0x193ACB0A0](v1 & 1);
  sub_18E18C6AC(v4);
  return sub_18E1A7CA0();
}

void *StringRenderedPromptSanitizer.init(overrides:)@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  *v11 = *a1;
  v4 = 1;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  StringRenderedPromptSanitizer.init(overrides:guardrails:)(v11, &v4, __src);
  return memcpy(a2, __src, 0x88uLL);
}

void *StringRenderedPromptSanitizer.init(guardrails:)@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  v4 = xmmword_18E1AC6B0;
  StringRenderedPromptSanitizer.init(overrides:guardrails:)(&v4, a1, __src);
  return memcpy(a2, __src, 0x88uLL);
}

BOOL static StringRenderedPromptSanitizer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  memcpy(__dst, (a1 + 24), sizeof(__dst));
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  memcpy(v73, (a2 + 24), sizeof(v73));
  __src[0] = v3;
  __src[1] = v4;
  LOBYTE(__src[2]) = v5;
  v67[0] = v6;
  v67[1] = v7;
  LOBYTE(v67[2]) = v8;
  sub_18E159D24(v3);
  sub_18E159D24(v6);
  LOBYTE(a2) = static StringRenderedPromptSanitizer.DefaultableOverrides.== infix(_:_:)(__src, v67);
  sub_18E15F0C0(v6, v7, v8);
  sub_18E15F0C0(v3, v4, v5);
  if (a2)
  {
    v9 = __dst[0];
    memcpy(v71, &__dst[1], sizeof(v71));
    v10 = v73[0];
    v11 = memcpy(v70, &v73[1], sizeof(v70));
    if (__dst[0] == 1)
    {
      if (v73[0] == 1)
      {
        v19 = 1;
        sub_18E15D854(v11, v12, v13, v14, v15, v16, v17, v18, v64[0], v64[1], v64[2], v64[3], v64[4], v64[5], v64[6], v64[7], v64[8], v64[9], v64[10], v64[11], v65[0], v65[1], v65[2], v65[3], v65[4], v65[5], v65[6], v65[7], v65[8], v65[9], v65[10], v65[11], v66[0], v66[1], v66[2], v66[3], v66[4], v66[5], v66[6], v66[7], v66[8], v66[9], v66[10], v66[11], v67[0], v67[1], v67[2], v67[3], v67[4], v67[5], v67[6], v67[7], v67[8], v67[9], v67[10], v67[11], 1, __src[1]);
        sub_18E18CC14(__dst, v67, &qword_1EABD0E08, &qword_18E1AD4E8);
        sub_18E18CC14(v73, v67, &qword_1EABD0E08, &qword_18E1AD4E8);
        v20 = __src;
LABEL_11:
        sub_18E18CBB8(v20, &qword_1EABD0E08, &qword_18E1AD4E8);
        return v19;
      }

      sub_18E18CC14(__dst, __src, &qword_1EABD0E08, &qword_18E1AD4E8);
      sub_18E18CC14(v73, __src, &qword_1EABD0E08, &qword_18E1AD4E8);
    }

    else
    {
      sub_18E15D854(v11, v12, v13, v14, v15, v16, v17, v18, v64[0], v64[1], v64[2], v64[3], v64[4], v64[5], v64[6], v64[7], v64[8], v64[9], v64[10], v64[11], v65[0], v65[1], v65[2], v65[3], v65[4], v65[5], v65[6], v65[7], v65[8], v65[9], v65[10], v65[11], v66[0], v66[1], v66[2], v66[3], v66[4], v66[5], v66[6], v66[7], v66[8], v66[9], v66[10], v66[11], v67[0], v67[1], v67[2], v67[3], v67[4], v67[5], v67[6], v67[7], v67[8], v67[9], v67[10], v67[11], __dst[0], __src[1]);
      memcpy(v67, __src, sizeof(v67));
      if (v10 != 1)
      {
        memcpy(&v66[1], &v73[1], 0x58uLL);
        v66[0] = v10;
        sub_18E15B8EC(__dst, v42, v43, v44, v45, v46, v47, v48, v64[0], v64[1], v64[2], v64[3], v64[4]);
        sub_18E15B8EC(v73, v49, v50, v51, v52, v53, v54, v55, v64[0], v64[1], v64[2], v64[3], v64[4]);
        sub_18E15B8EC(__src, v56, v57, v58, v59, v60, v61, v62, v64[0], v64[1], v64[2], v64[3], v64[4]);
        v19 = static StringRenderedPromptSanitizer.Guardrails.== infix(_:_:)(v67, v66);
        memcpy(v64, v66, sizeof(v64));
        sub_18E18C9AC(v64);
        memcpy(v65, v67, sizeof(v65));
        sub_18E18C9AC(v65);
        v66[0] = v9;
        memcpy(&v66[1], v71, 0x58uLL);
        v20 = v66;
        goto LABEL_11;
      }

      memcpy(v66, __src, sizeof(v66));
      sub_18E15DB30(__dst, v21, v22, v23, v24, v25, v26, v27, v64[0], v64[1], v64[2], v64[3], v64[4]);
      sub_18E15DB30(v73, v28, v29, v30, v31, v32, v33, v34, v64[0], v64[1], v64[2], v64[3], v64[4]);
      sub_18E15DB30(__src, v35, v36, v37, v38, v39, v40, v41, v64[0], v64[1], v64[2], v64[3], v64[4]);
      sub_18E18C9AC(v66);
    }

    __src[0] = v9;
    memcpy(&__src[1], v71, 0x58uLL);
    __src[12] = v10;
    memcpy(v69, v70, sizeof(v69));
    sub_18E18CBB8(__src, &qword_1EABD0E00, &qword_18E1AD4E0);
  }

  return 0;
}

uint64_t sub_18E18BBAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656469727265766FLL && a2 == 0xE900000000000073;
  if (v4 || (sub_18E1A7B90() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6961726472617567 && a2 == 0xEA0000000000736CLL;
    if (v6 || (sub_18E1A7B90() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x800000018E1B2790 == a2;
      if (v7 || (sub_18E1A7B90() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000013 && 0x800000018E1B2C00 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_18E1A7B90();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_18E18BD20(unsigned __int8 a1)
{
  sub_18E159F00();
  MEMORY[0x193ACB0A0](a1);
  return sub_18E1A7CA0();
}

unint64_t sub_18E18BD60(char a1)
{
  result = 0x656469727265766FLL;
  switch(a1)
  {
    case 1:
      result = 0x6961726472617567;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18E18BE00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E18BBAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E18BE28(uint64_t a1)
{
  v2 = sub_18E18CE48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E18BE64(uint64_t a1)
{
  v2 = sub_18E18CE48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StringRenderedPromptSanitizer.encode(to:)()
{
  sub_18E159F44();
  v4 = v3;
  v23 = sub_18E161880(&qword_1EABD0E68, &qword_18E1AD520);
  sub_18E159050(v23);
  v24 = v5;
  v7 = *(v6 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v8, v9);
  sub_18E159FE0();
  v10 = *v0;
  v11 = v0[1];
  v12 = *(v0 + 16);
  sub_18E18DFD8();
  memcpy(v13, v14, v15);
  v21 = v0[16];
  v22 = v0[15];
  v16 = v4[4];
  sub_18E159D90(v4, v4[3]);
  sub_18E159D24(v10);
  sub_18E18CE48();
  sub_18E1A7CD0();
  v26[0] = v10;
  v26[1] = v11;
  LOBYTE(v26[2]) = v12;
  v25[0] = 0;
  sub_18E18CE9C();
  sub_18E1A7B30();
  if (v1)
  {
    sub_18E15F0C0(v26[0], v26[1], LOBYTE(v26[2]));
    (*(v24 + 8))(v2, v23);
  }

  else
  {
    sub_18E15F0C0(v26[0], v26[1], LOBYTE(v26[2]));
    memcpy(v26, v27, sizeof(v26));
    sub_18E18CC14(v27, v25, &qword_1EABD0E08, &qword_18E1AD4E8);
    sub_18E18CD4C();
    sub_18E1A7AE0();
    memcpy(v25, v26, sizeof(v25));
    sub_18E18CBB8(v25, &qword_1EABD0E08, &qword_18E1AD4E8);
    type metadata accessor for CachedSafetyModelsWrapper();
    sub_18E15B83C();
    sub_18E18CF44(v17, v18);
    sub_18E15DBB0();
    type metadata accessor for ModelManagerSessionWrapper();
    sub_18E15A2FC();
    sub_18E18CF44(v19, v20);
    sub_18E15DBB0();
    (*(v24 + 8))(v2, v23);
  }

  sub_18E15A29C();
}

uint64_t StringRenderedPromptSanitizer.hash(into:)(const void *a1)
{
  v3 = *(v1 + 16);
  sub_18E18DFD8();
  memcpy(v4, v5, v6);
  v8 = *v1;
  StringRenderedPromptSanitizer.DefaultableOverrides.hash(into:)();
  return sub_18E18C6AC(a1);
}

uint64_t StringRenderedPromptSanitizer.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_18E18DFD8();
  memcpy(v4, v5, v6);
  sub_18E1A7C60();
  StringRenderedPromptSanitizer.DefaultableOverrides.hash(into:)();
  sub_18E18C6AC(v8);
  return sub_18E1A7CA0();
}

void StringRenderedPromptSanitizer.init(from:)()
{
  sub_18E159F44();
  v2 = v1;
  v4 = v3;
  v5 = sub_18E161880(&qword_1EABD0E80, &qword_18E1AD528);
  sub_18E159050(v5);
  v7 = *(v6 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v8, v9);
  v10 = v2[4];
  v21 = v2;
  sub_18E159D90(v2, v2[3]);
  sub_18E18CE48();
  sub_18E1A7CC0();
  if (v0)
  {
    sub_18E158EC4(v2);
  }

  else
  {
    sub_18E18CEF0();
    sub_18E18DFF8();
    sub_18E1A7A80();
    v11 = v23;
    v20 = v24;
    v32 = v25;
    sub_18E18CDF4();
    sub_18E18DFF8();
    sub_18E1A7A30();
    memcpy(&v31[7], v30, 0x60uLL);
    type metadata accessor for CachedSafetyModelsWrapper();
    LOBYTE(v22[0]) = 2;
    sub_18E15B83C();
    sub_18E18CF44(v12, v13);
    sub_18E18DFE4();
    sub_18E1A7A80();
    v14 = v23;
    type metadata accessor for ModelManagerSessionWrapper();
    sub_18E15A2FC();
    sub_18E18CF44(v15, v16);
    sub_18E18DFE4();
    sub_18E1A7A80();
    v17 = sub_18E15A44C();
    v18(v17);
    v19 = v29;
    v22[0] = v11;
    v22[1] = v20;
    LOBYTE(v22[2]) = v32;
    memcpy(&v22[2] + 1, v31, 0x67uLL);
    v22[15] = v14;
    v22[16] = v29;
    memcpy(v4, v22, 0x88uLL);
    sub_18E178FF8(v22, &v23);
    sub_18E158EC4(v21);
    v23 = v11;
    v24 = v20;
    v25 = v32;
    memcpy(v26, v31, sizeof(v26));
    v27 = v14;
    v28 = v19;
    sub_18E182038(&v23);
  }

  sub_18E15C520();
  sub_18E15A29C();
}

uint64_t sub_18E18C5F4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  memcpy(__dst, v0 + 3, sizeof(__dst));
  sub_18E1A7C60();
  StringRenderedPromptSanitizer.DefaultableOverrides.hash(into:)();
  sub_18E18C6AC(v5);
  return sub_18E1A7CA0();
}

uint64_t sub_18E18C6AC(const void *a1)
{
  v3 = *v1;
  if (*v1 == 1)
  {
    return sub_18E1A7C80();
  }

  v4 = *(v1 + 8);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  sub_18E1A7C80();
  if (v3)
  {
    sub_18E1A7C80();
    sub_18E183964(a1, v3);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_18E1A7C80();
    if (!v5)
    {
      return sub_18E1A7C80();
    }

    goto LABEL_8;
  }

  sub_18E1A7C80();
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  *&v10[8] = *(v1 + 16);
  *&v10[24] = *(v1 + 32);
  *&v10[40] = *(v1 + 48);
  *&v10[56] = *(v1 + 64);
  *v10 = v4;
  sub_18E1A7C80();
  v11 = v4;
  v8 = *(v1 + 32);
  v12 = *(v1 + 16);
  v13 = v8;
  v14 = *(v1 + 48);
  v15 = *(v1 + 64);
  sub_18E182F14(&v11, v16);
  LanguageRecognizer.hash(into:)(a1);
  v16[0] = *v10;
  v16[1] = *&v10[16];
  v16[2] = *&v10[32];
  v16[3] = *&v10[48];
  sub_18E182F4C(v16);
  if (!v5)
  {
    return sub_18E1A7C80();
  }

LABEL_8:
  sub_18E1A7C80();
  sub_18E18391C();
  sub_18E1A7C80();
  if (v7)
  {
    *&v16[0] = v7;
    sub_18E1A7C80();
    sub_18E1A7390();
    sub_18E18CF44(&qword_1EABD0BE0, MEMORY[0x1E69A0EC8]);
    return sub_18E1A74D0();
  }

  return sub_18E1A7C80();
}

unint64_t sub_18E18C878()
{
  result = qword_1EABD0DB0;
  if (!qword_1EABD0DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0DB0);
  }

  return result;
}

unint64_t sub_18E18C8CC()
{
  result = qword_1EABD0DB8;
  if (!qword_1EABD0DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0DB8);
  }

  return result;
}

unint64_t sub_18E18C920()
{
  result = qword_1EABD0DC0;
  if (!qword_1EABD0DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0DC0);
  }

  return result;
}

unint64_t sub_18E18C9DC()
{
  result = qword_1ED8D98D0;
  if (!qword_1ED8D98D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D98D0);
  }

  return result;
}

unint64_t sub_18E18CA30()
{
  result = qword_1EABD00F0;
  if (!qword_1EABD00F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD00F0);
  }

  return result;
}

unint64_t sub_18E18CA84()
{
  result = qword_1ED8D96C8;
  if (!qword_1ED8D96C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D96C8);
  }

  return result;
}

unint64_t sub_18E18CAD8()
{
  result = qword_1ED8D96D0;
  if (!qword_1ED8D96D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D96D0);
  }

  return result;
}

unint64_t sub_18E18CB2C()
{
  result = qword_1EABCFDD0;
  if (!qword_1EABCFDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFDD0);
  }

  return result;
}

uint64_t sub_18E18CBB8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_18E161880(a2, a3);
  sub_18E1594D8(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_18E18CC14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_18E161880(a3, a4);
  sub_18E1594D8(v5);
  v7 = *(v6 + 16);
  v8 = sub_18E15A234();
  v9(v8);
  return a2;
}

unint64_t sub_18E18CCA4()
{
  result = qword_1EABD0E28;
  if (!qword_1EABD0E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0E28);
  }

  return result;
}

unint64_t sub_18E18CCF8()
{
  result = qword_1EABD0E30;
  if (!qword_1EABD0E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0E30);
  }

  return result;
}

unint64_t sub_18E18CD4C()
{
  result = qword_1EABD0E38;
  if (!qword_1EABD0E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0E38);
  }

  return result;
}

unint64_t sub_18E18CDA0()
{
  result = qword_1EABD0E40;
  if (!qword_1EABD0E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0E40);
  }

  return result;
}

unint64_t sub_18E18CDF4()
{
  result = qword_1EABD0E60;
  if (!qword_1EABD0E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0E60);
  }

  return result;
}

unint64_t sub_18E18CE48()
{
  result = qword_1EABD0E70;
  if (!qword_1EABD0E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0E70);
  }

  return result;
}

unint64_t sub_18E18CE9C()
{
  result = qword_1EABD0E78;
  if (!qword_1EABD0E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0E78);
  }

  return result;
}

unint64_t sub_18E18CEF0()
{
  result = qword_1EABD0E88;
  if (!qword_1EABD0E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0E88);
  }

  return result;
}

uint64_t sub_18E18CF44(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_18E18CF90()
{
  result = qword_1EABD0EA0;
  if (!qword_1EABD0EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0EA0);
  }

  return result;
}

unint64_t sub_18E18CFE8()
{
  result = qword_1EABD0EA8;
  if (!qword_1EABD0EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0EA8);
  }

  return result;
}

unint64_t sub_18E18D040()
{
  result = qword_1EABD0EB0;
  if (!qword_1EABD0EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0EB0);
  }

  return result;
}

unint64_t sub_18E18D098()
{
  result = qword_1EABD0EB8;
  if (!qword_1EABD0EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0EB8);
  }

  return result;
}

unint64_t sub_18E18D0F0()
{
  result = qword_1EABD0EC0;
  if (!qword_1EABD0EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0EC0);
  }

  return result;
}

uint64_t sub_18E18D154(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E18D194(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18E18D1EC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 97))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 96);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E18D22C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StringRenderedPromptSanitizer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_18E18D398(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for StringRenderedPromptSanitizer.Guardrails.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_18E18D570(_BYTE *result, int a2, int a3)
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

unint64_t sub_18E18D620()
{
  result = qword_1EABD0EC8;
  if (!qword_1EABD0EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0EC8);
  }

  return result;
}

unint64_t sub_18E18D678()
{
  result = qword_1EABD0ED0;
  if (!qword_1EABD0ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0ED0);
  }

  return result;
}

unint64_t sub_18E18D6D0()
{
  result = qword_1EABD0ED8;
  if (!qword_1EABD0ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0ED8);
  }

  return result;
}

unint64_t sub_18E18D728()
{
  result = qword_1EABD0EE0;
  if (!qword_1EABD0EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0EE0);
  }

  return result;
}

unint64_t sub_18E18D780()
{
  result = qword_1EABD0EE8;
  if (!qword_1EABD0EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0EE8);
  }

  return result;
}

unint64_t sub_18E18D7D8()
{
  result = qword_1EABD0EF0;
  if (!qword_1EABD0EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0EF0);
  }

  return result;
}

unint64_t sub_18E18D830()
{
  result = qword_1EABD0EF8;
  if (!qword_1EABD0EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0EF8);
  }

  return result;
}

unint64_t sub_18E18D888()
{
  result = qword_1EABD0F00;
  if (!qword_1EABD0F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0F00);
  }

  return result;
}

unint64_t sub_18E18D8E0()
{
  result = qword_1EABD0F08;
  if (!qword_1EABD0F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0F08);
  }

  return result;
}

unint64_t sub_18E18D938()
{
  result = qword_1EABD0F10;
  if (!qword_1EABD0F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0F10);
  }

  return result;
}

unint64_t sub_18E18D990()
{
  result = qword_1EABD0F18;
  if (!qword_1EABD0F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0F18);
  }

  return result;
}

unint64_t sub_18E18D9E8()
{
  result = qword_1EABD0F20;
  if (!qword_1EABD0F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0F20);
  }

  return result;
}

unint64_t sub_18E18DA40()
{
  result = qword_1EABD0F28;
  if (!qword_1EABD0F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0F28);
  }

  return result;
}

unint64_t sub_18E18DA98()
{
  result = qword_1EABD0F30;
  if (!qword_1EABD0F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0F30);
  }

  return result;
}

unint64_t sub_18E18DAF0()
{
  result = qword_1EABD0F38;
  if (!qword_1EABD0F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0F38);
  }

  return result;
}

unint64_t sub_18E18DB48()
{
  result = qword_1EABD0F40;
  if (!qword_1EABD0F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0F40);
  }

  return result;
}

unint64_t sub_18E18DBA0()
{
  result = qword_1EABD0F48;
  if (!qword_1EABD0F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0F48);
  }

  return result;
}

unint64_t sub_18E18DBF8()
{
  result = qword_1ED8D98C8;
  if (!qword_1ED8D98C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D98C8);
  }

  return result;
}

unint64_t sub_18E18DC50()
{
  result = qword_1ED8D98C0;
  if (!qword_1ED8D98C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D98C0);
  }

  return result;
}

unint64_t sub_18E18DCA8()
{
  result = qword_1ED8D98B8;
  if (!qword_1ED8D98B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D98B8);
  }

  return result;
}

unint64_t sub_18E18DD00()
{
  result = qword_1ED8D98B0;
  if (!qword_1ED8D98B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D98B0);
  }

  return result;
}

unint64_t sub_18E18DD58()
{
  result = qword_1ED8D98E0[0];
  if (!qword_1ED8D98E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8D98E0);
  }

  return result;
}

unint64_t sub_18E18DDB0()
{
  result = qword_1ED8D98D8;
  if (!qword_1ED8D98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D98D8);
  }

  return result;
}

unint64_t sub_18E18DE08()
{
  result = qword_1EABD0F50;
  if (!qword_1EABD0F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0F50);
  }

  return result;
}

unint64_t sub_18E18DE60()
{
  result = qword_1EABD0F58;
  if (!qword_1EABD0F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0F58);
  }

  return result;
}

unint64_t sub_18E18DEB8()
{
  result = qword_1EABD01F8;
  if (!qword_1EABD01F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD01F8);
  }

  return result;
}

unint64_t sub_18E18DF10()
{
  result = qword_1EABD0190;
  if (!qword_1EABD0190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0190);
  }

  return result;
}

uint64_t sub_18E18DF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return sub_18E18CB80(&STACK[0x2A0], &a69);
}

uint64_t sub_18E18DFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return sub_18E18CC14(a1, va, v11, v12);
}

uint64_t sub_18E18E004()
{
  v2 = *(v0 - 192);

  return sub_18E1A7AD0();
}

void *StringRenderedPromptSanitizerWithRunner.init(sanitizer:runner:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = memcpy(a4, __src, 0x88uLL);
  a4[17] = a2;
  a4[18] = a3;
  return result;
}

uint64_t StringRenderedPromptSanitizerWithRunner.scrub(_:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  memcpy(v4 + 2, v5, 0x88uLL);
  v9 = v5[17];
  v10 = v5[18];
  sub_18E178FF8((v4 + 2), (v4 + 19));
  v4[89] = a1;
  v4[90] = a2;
  memcpy(v4 + 36, v4 + 2, 0x88uLL);
  v11 = *(v10 + 8);
  v12 = *(v11 + 40);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v4[91] = v14;
  *v14 = v4;
  v14[1] = sub_18E18E1E4;

  return (v16)(v4 + 87, v4 + 89, a3, v4 + 36, v9, v11);
}

uint64_t sub_18E18E1E4()
{
  v2 = *v1;
  v3 = *(*v1 + 728);
  v6 = *v1;
  *(*v1 + 736) = v0;

  if (v0)
  {
    memcpy((v2 + 424), (v2 + 288), 0x88uLL);
    sub_18E182038(v2 + 424);
    v4 = sub_18E18E348;
  }

  else
  {
    memcpy((v2 + 560), (v2 + 288), 0x88uLL);
    sub_18E182038(v2 + 560);
    v4 = sub_18E18E328;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t StringRenderedPromptSanitizerWithRunner.sanitizer.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x88uLL);
  memcpy(a1, v1, 0x88uLL);
  return sub_18E178FF8(__dst, v4);
}

uint64_t StringRenderedPromptSanitizerWithRunner.runner.getter()
{
  result = *(v0 + 136);
  v2 = *(v0 + 144);
  return result;
}

uint64_t sub_18E18E3C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 120);
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

uint64_t sub_18E18E404(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18E18E478()
{
  v0 = sub_18E1A7500();
  v1 = NSClassFromString(v0);

  if (!v1)
  {
    return 0;
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  return sub_18E185020(ObjCClassMetadata);
}

uint64_t sub_18E18E4F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelBundleInfoForSanitizer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t StringRenderedPromptSanitizerRunnerConfiguration.userRequestIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StringRenderedPromptSanitizerRunnerConfiguration() + 28);
  v4 = sub_18E1A6D90();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StringRenderedPromptSanitizerRunnerConfiguration.init(modelBundleInfo:useCaseIdentifier:onBehalfOfProcessId:userRequestIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_18E15A594(a1, a6);
  v11 = type metadata accessor for StringRenderedPromptSanitizerRunnerConfiguration();
  v12 = (a6 + v11[5]);
  *v12 = a2;
  v12[1] = a3;
  *(a6 + v11[6]) = a4;
  v13 = v11[7];
  v14 = sub_18E1A6D90();
  v15 = *(*(v14 - 8) + 32);

  return v15(a6 + v13, a5, v14);
}

uint64_t sub_18E18E6B0()
{
  result = type metadata accessor for ModelBundleInfoForSanitizer();
  if (v1 <= 0x3F)
  {
    result = sub_18E1A6D90();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t StringResponseSanitizer.init(overrides:guardrails:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *a2;
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  type metadata accessor for CachedSafetyModelsWrapper();
  sub_18E15B80C();
  sub_18E15933C();
  type metadata accessor for CachedSafetyModels();
  sub_18E15B80C();
  sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
  sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
  sub_18E15A160();
  sub_18E15BAE0();
  sub_18E161880(&qword_1EABD0A80, qword_18E1ABBC0);
  v7 = sub_18E15A434();
  sub_18E15A8DC(v7);
  *(a3 + 32) = v3;
  type metadata accessor for ModelManagerSessionWrapper();
  v8 = sub_18E15B80C();
  sub_18E161880(&qword_1EABD0AE8, &qword_18E1AC170);
  result = sub_18E15A434();
  *(result + 24) = 0;
  *(result + 16) = 0;
  *(v8 + 16) = result;
  *(a3 + 40) = v8;
  return result;
}

uint64_t StringResponseSanitizer.Overrides.denyList.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

GenerativeModels::StringResponseSanitizer::Overrides __swiftcall StringResponseSanitizer.Overrides.init(denyList:)(GenerativeModels::OutputDenyListBundle denyList)
{
  v2 = *(denyList.identifier._countAndFlagsBits + 8);
  *v1 = *denyList.identifier._countAndFlagsBits;
  v1[1] = v2;
  result.denyList.value = denyList;
  return result;
}

BOOL static StringResponseSanitizer.Overrides.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (v3)
    {
      v4 = *a1 == *a2 && v2 == v3;
      return v4 || (sub_18E15A124() & 1) != 0;
    }

    v6 = a1[1];
LABEL_12:

    return 0;
  }

  if (v3)
  {
    v5 = a2[1];
    goto LABEL_12;
  }

  return 1;
}

uint64_t sub_18E18E8F8(uint64_t a1)
{
  v2 = sub_18E15BA04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E18E934(uint64_t a1)
{
  v2 = sub_18E15BA04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StringResponseSanitizer.Overrides.encode(to:)()
{
  sub_18E159F44();
  v3 = v2;
  sub_18E159050(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_18E15A114();
  v11 = *v0;
  v12 = v0[1];
  v13 = v3[4];
  sub_18E159D90(v3, v3[3]);
  sub_18E15BA04();

  sub_18E15A8D0();
  sub_18E1A7CD0();
  sub_18E18EAA4();
  sub_18E1A7AE0();

  (*(v6 + 8))(v1, v4);
  sub_18E15A29C();
}

unint64_t sub_18E18EAA4()
{
  result = qword_1EABCFFD8;
  if (!qword_1EABCFFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFFD8);
  }

  return result;
}

uint64_t StringResponseSanitizer.Overrides.hash(into:)()
{
  if (!v0[1])
  {
    return sub_18E1A7C80();
  }

  v1 = *v0;
  sub_18E1A7C80();

  return sub_18E1A75C0();
}

uint64_t StringResponseSanitizer.Overrides.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18E159F00();
  sub_18E1A7C80();
  if (v2)
  {
    sub_18E1A75C0();
  }

  return sub_18E1A7CA0();
}

uint64_t sub_18E18EC1C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000018 && 0x800000018E1B2BA0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E1A7B90();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E18ECBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E18EC1C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E18ECE8(uint64_t a1)
{
  v2 = sub_18E18EE8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E18ED24(uint64_t a1)
{
  v2 = sub_18E18EE8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StringResponseSanitizer.Guardrails.encode(to:)()
{
  sub_18E159F44();
  v3 = v2;
  v4 = sub_18E161880(&qword_1EABD0F70, &qword_18E1AE9B0);
  sub_18E159050(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_18E15D458();
  v11 = *v0;
  v12 = v3[4];
  sub_18E159D90(v3, v3[3]);
  sub_18E18EE8C();

  sub_18E15D900();
  sub_18E15A8D0();
  sub_18E1A7CD0();
  sub_18E189270();
  sub_18E1A7B30();

  (*(v6 + 8))(v1, v4);
  sub_18E15A29C();
}

unint64_t sub_18E18EE8C()
{
  result = qword_1EABCFE18;
  if (!qword_1EABCFE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFE18);
  }

  return result;
}

uint64_t StringResponseSanitizer.Guardrails.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x193ACB0A0](v2);
  if (v2)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = MEMORY[0x193ACB0A0](v5);
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t StringResponseSanitizer.Guardrails.hashValue.getter()
{
  v1 = *v0;
  sub_18E159F00();
  sub_18E183964(v3, v1);
  return sub_18E1A7CA0();
}

void StringResponseSanitizer.Guardrails.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E159F44();
  v12 = v11;
  v14 = v13;
  v15 = sub_18E161880(&qword_1EABD0F78, &qword_18E1AE9B8);
  sub_18E159050(v15);
  v17 = *(v16 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v18, v19);
  sub_18E15D458();
  v20 = v12[4];
  sub_18E159D90(v12, v12[3]);
  sub_18E18EE8C();
  sub_18E15D900();
  sub_18E15A8D0();
  sub_18E1A7CC0();
  if (!v10)
  {
    sub_18E18C878();
    sub_18E15D5E8();
    sub_18E1A7A80();
    v21 = sub_18E15C048();
    v22(v21);
    *v14 = a10;
  }

  sub_18E158EC4(v12);
  sub_18E15A29C();
}

BOOL static StringResponseSanitizer.DefaultableOverrides.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((v4 & 1) == 0)
  {
    if ((v7 & 1) == 0)
    {
      if (v3 == 1)
      {
        v23 = sub_18E15D108();
        sub_18E159D24(v23);
        v24 = sub_18E15A4C8();
        sub_18E159D24(v24);
        v25 = sub_18E15A4C8();
        sub_18E159D24(v25);
        v26 = sub_18E15D108();
        sub_18E159D24(v26);
        v27 = sub_18E15A4C8();
        sub_18E15F0C0(v27, v28, 0);
        v29 = sub_18E15D108();
        sub_18E15F0C0(v29, v30, v31);
        if (v5 == 1)
        {
          goto LABEL_5;
        }

        goto LABEL_16;
      }

      v72 = *a1;
      v73 = v3;
      if (v5 != 1)
      {
        v70 = v6;
        v71 = v5;
        sub_18E15D108();
        sub_18E15923C();
        v59 = sub_18E15923C();
        sub_18E159D24(v59);
        sub_18E15D108();
        v60 = sub_18E15923C();
        sub_18E159D28(v60, v61);
        v62 = static StringResponseSanitizer.Overrides.== infix(_:_:)(&v72, &v70);
        v63 = sub_18E15A234();
        sub_18E15F0C0(v63, v64, 0);
        v65 = sub_18E15D108();
        sub_18E15F0C0(v65, v66, v67);

        v68 = sub_18E15A234();
        sub_18E15F0C4(v68, v69);
        return v62;
      }

      sub_18E15BCB0();
      sub_18E15923C();
      v40 = sub_18E15923C();
      sub_18E159D24(v40);
      sub_18E15BCB0();
      v41 = sub_18E15923C();
      sub_18E159D28(v41, v42);
      v43 = sub_18E15A234();
      sub_18E15F0C0(v43, v44, 0);
      v37 = sub_18E15BCB0();
      v39 = 0;
      goto LABEL_15;
    }

LABEL_7:
    v20 = sub_18E15A234();
    sub_18E159D24(v20);
    v21 = sub_18E15923C();
    sub_18E15F0C0(v21, v22, v4);
    sub_18E15F0C0(v6, v5, v7);
    return 0;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_7;
  }

  if (v3 != 1)
  {
    v72 = *a1;
    v73 = v3;
    if (v5 != 1)
    {
      v70 = v6;
      v71 = v5;
      v17 = 1;
      sub_18E15AAAC();
      sub_18E15923C();
      v48 = sub_18E15923C();
      sub_18E159D24(v48);
      sub_18E15AAAC();
      v49 = sub_18E15923C();
      sub_18E159D28(v49, v50);
      v51 = static StringResponseSanitizer.Overrides.== infix(_:_:)(&v72, &v70);
      v52 = sub_18E15A234();
      sub_18E15F0C0(v52, v53, 1);
      v54 = sub_18E15AAAC();
      sub_18E15F0C0(v54, v55, v56);

      v57 = sub_18E15A234();
      sub_18E15F0C4(v57, v58);
      if (v51)
      {
        return v17;
      }

      return 0;
    }

    sub_18E15BCB0();
    sub_18E15923C();
    v32 = sub_18E15923C();
    sub_18E159D24(v32);
    sub_18E15BCB0();
    v33 = sub_18E15923C();
    sub_18E159D28(v33, v34);
    v35 = sub_18E15A234();
    sub_18E15F0C0(v35, v36, 1);
    v37 = sub_18E15BCB0();
    v39 = 1;
LABEL_15:
    sub_18E15F0C0(v37, v38, v39);

    goto LABEL_16;
  }

  v8 = sub_18E15AAAC();
  sub_18E159D24(v8);
  v9 = sub_18E15A4C8();
  sub_18E159D24(v9);
  v10 = sub_18E15A4C8();
  sub_18E159D24(v10);
  v11 = sub_18E15AAAC();
  sub_18E159D24(v11);
  v12 = sub_18E15A4C8();
  sub_18E15F0C0(v12, v13, 1);
  v14 = sub_18E15AAAC();
  sub_18E15F0C0(v14, v15, v16);
  if (v5 != 1)
  {
LABEL_16:
    v45 = sub_18E15A234();
    sub_18E15F0C4(v45, v46);
    sub_18E15F0C4(v6, v5);
    return 0;
  }

LABEL_5:
  v17 = 1;
  v18 = sub_18E15A4C8();
  sub_18E15F0C4(v18, v19);
  return v17;
}

uint64_t sub_18E18F3BC(uint64_t a1)
{
  v2 = sub_18E15C068();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E18F3F8(uint64_t a1)
{
  v2 = sub_18E15C068();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E18F434(uint64_t a1)
{
  v2 = sub_18E15BF34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E18F470(uint64_t a1)
{
  v2 = sub_18E15BF34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E18F4AC(uint64_t a1)
{
  v2 = sub_18E191214();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E18F4E8(uint64_t a1)
{
  v2 = sub_18E191214();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StringResponseSanitizer.DefaultableOverrides.encode(to:)()
{
  sub_18E159F44();
  v4 = v3;
  v5 = sub_18E161880(&qword_1EABD0F80, &qword_18E1AE9C0);
  sub_18E159050(v5);
  v33 = v6;
  v8 = *(v7 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_18E159FE0();
  v11 = sub_18E161880(&qword_1EABD0F88, &qword_18E1AE9C8);
  v12 = sub_18E159050(v11);
  v31 = v13;
  v32 = v12;
  v15 = *(v14 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v16, v17);
  sub_18E15BB5C();
  v36 = sub_18E161880(&qword_1EABD0F90, &qword_18E1AE9D0);
  sub_18E159050(v36);
  v19 = v18;
  v21 = *(v20 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v22, v23);
  sub_18E15D458();
  v34 = *v0;
  v35 = v0[1];
  v24 = *(v0 + 16);
  v25 = v4[4];
  sub_18E159D90(v4, v4[3]);
  sub_18E15C068();
  sub_18E15D900();
  sub_18E1A7CD0();
  if (v24)
  {
    sub_18E191214();
    v26 = v36;
    sub_18E15D5E8();
    sub_18E1A7AD0();
    sub_18E191268();
    sub_18E1A7AE0();
    v27 = *(v33 + 8);
    v28 = sub_18E192220();
  }

  else
  {
    sub_18E15BF34();
    v26 = v36;
    sub_18E15D5E8();
    sub_18E1A7AD0();
    sub_18E191268();
    sub_18E1A7AE0();
    v30 = *(v31 + 8);
    v28 = v2;
    v29 = v32;
  }

  v30(v28, v29);
  (*(v19 + 8))(v1, v26);
  sub_18E15A29C();
}

uint64_t StringResponseSanitizer.DefaultableOverrides.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if ((*(v0 + 16) & 1) == 0)
  {
    MEMORY[0x193ACB0A0](0);
    if (v2 != 1)
    {
      sub_18E1A7C80();
      sub_18E1A7C80();
      if (v2)
      {
        v8 = sub_18E159F88();
        sub_18E159D28(v8, v9);
        sub_18E15C5A8();
        sub_18E1A75C0();
        v5 = sub_18E159F88();
      }

      else
      {
        v5 = v1;
        v6 = 0;
      }

      v10 = 0;
      goto LABEL_13;
    }

    return sub_18E1A7C80();
  }

  MEMORY[0x193ACB0A0](1);
  if (v2 == 1)
  {
    return sub_18E1A7C80();
  }

  sub_18E1A7C80();
  sub_18E1A7C80();
  if (v2)
  {
    v3 = sub_18E159F88();
    sub_18E159D28(v3, v4);
    sub_18E15C5A8();
    sub_18E1A75C0();
    v5 = sub_18E159F88();
  }

  else
  {
    v5 = v1;
    v6 = 0;
  }

  v10 = 1;
LABEL_13:

  return sub_18E15F0C0(v5, v6, v10);
}

uint64_t StringResponseSanitizer.DefaultableOverrides.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_18E159F00();
  StringResponseSanitizer.DefaultableOverrides.hash(into:)();
  return sub_18E1A7CA0();
}

uint64_t sub_18E18F940()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_18E1A7C60();
  StringResponseSanitizer.DefaultableOverrides.hash(into:)();
  return sub_18E1A7CA0();
}

BOOL static StringResponseSanitizer.DefaultableGuardrails.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3)
  {
    if (*(a2 + 8))
    {
      if (v2)
      {
        if (v4)
        {
          v6 = sub_18E15C5A8();
          v8 = sub_18E15DFE0(v6, v7);
          v9 = 1;
          v10 = sub_18E15DBDC(v4);
          v11 = sub_18E15DBDC(v10);
          j__swift_bridgeObjectRetain(v11, 1);
          sub_18E15DBDC(v4);
          swift_bridgeObjectRetain_n();
          j__swift_bridgeObjectRelease();
          sub_18E15A4C8();
          j__swift_bridgeObjectRelease();
          swift_bridgeObjectRelease_n();

          if (v8)
          {
            return v9;
          }

          return 0;
        }

        v33 = sub_18E15DBDC(0);
        v34 = sub_18E15DBDC(v33);
        j__swift_bridgeObjectRetain(v34, 1);
        sub_18E15DBDC(0);

        j__swift_bridgeObjectRelease();
        sub_18E158FC0();
        goto LABEL_20;
      }

      v17 = sub_18E15A4C8();
      j__swift_bridgeObjectRetain(v17, v18);
      v19 = sub_18E158FC0();
      j__swift_bridgeObjectRetain(v19, v20);
      v21 = sub_18E158FC0();
      j__swift_bridgeObjectRetain(v21, v22);
      v23 = sub_18E15A4C8();
      j__swift_bridgeObjectRetain(v23, v24);
      sub_18E158FC0();
      j__swift_bridgeObjectRelease();
      sub_18E15A4C8();
      goto LABEL_15;
    }

LABEL_8:
    j__swift_bridgeObjectRetain(*a1, v3);
    j__swift_bridgeObjectRetain(v4, v5);
    j__swift_bridgeObjectRelease();
    j__swift_bridgeObjectRelease();
    return 0;
  }

  if (v5)
  {
    goto LABEL_8;
  }

  if (!v2)
  {
    v25 = sub_18E159DA8();
    j__swift_bridgeObjectRetain(v25, v26);
    v27 = sub_18E15DB08();
    j__swift_bridgeObjectRetain(v27, v28);
    v29 = sub_18E15DB08();
    j__swift_bridgeObjectRetain(v29, v30);
    v31 = sub_18E159DA8();
    j__swift_bridgeObjectRetain(v31, v32);
    sub_18E15DB08();
    j__swift_bridgeObjectRelease();
    sub_18E159DA8();
LABEL_15:
    j__swift_bridgeObjectRelease();
    if (v4)
    {
LABEL_21:

      return 0;
    }

    return 1;
  }

  if (!v4)
  {
    v35 = sub_18E15DAD0(0);
    v36 = sub_18E15DAD0(v35);
    j__swift_bridgeObjectRetain(v36, 0);
    sub_18E15DAD0(0);

    j__swift_bridgeObjectRelease();
    sub_18E15DB08();
LABEL_20:
    j__swift_bridgeObjectRelease();

    goto LABEL_21;
  }

  v12 = sub_18E15C5A8();
  v14 = sub_18E15DFE0(v12, v13);
  v15 = sub_18E15DAD0(v4);
  v16 = sub_18E15DAD0(v15);
  j__swift_bridgeObjectRetain(v16, 0);
  sub_18E15DAD0(v4);
  swift_bridgeObjectRetain_n();
  j__swift_bridgeObjectRelease();
  sub_18E159DA8();
  j__swift_bridgeObjectRelease();
  swift_bridgeObjectRelease_n();

  return (v14 & 1) != 0;
}

uint64_t sub_18E18FBE8(uint64_t a1)
{
  v2 = sub_18E1912C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E18FC24(uint64_t a1)
{
  v2 = sub_18E1912C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E18FC60(uint64_t a1)
{
  v2 = sub_18E1913C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E18FC9C(uint64_t a1)
{
  v2 = sub_18E1913C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E18FCD8(uint64_t a1)
{
  v2 = sub_18E191318();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E18FD14(uint64_t a1)
{
  v2 = sub_18E191318();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StringResponseSanitizer.DefaultableGuardrails.encode(to:)()
{
  sub_18E159F44();
  v4 = v3;
  v5 = sub_18E161880(&qword_1EABD0FB8, &qword_18E1AE9F8);
  sub_18E159050(v5);
  v33 = v6;
  v8 = *(v7 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_18E159FE0();
  v11 = sub_18E161880(&qword_1EABD0FC0, &qword_18E1AEA00);
  v12 = sub_18E159050(v11);
  v31 = v13;
  v32 = v12;
  v15 = *(v14 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v16, v17);
  sub_18E15BB5C();
  v35 = sub_18E161880(&qword_1EABD0FC8, &qword_18E1AEA08);
  sub_18E159050(v35);
  v19 = v18;
  v21 = *(v20 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v22, v23);
  sub_18E15D458();
  v34 = *v0;
  v24 = *(v0 + 8);
  v25 = v4[4];
  sub_18E159D90(v4, v4[3]);
  sub_18E1912C4();
  sub_18E15D900();
  sub_18E1A7CD0();
  if (v24)
  {
    sub_18E191318();
    v26 = v35;
    sub_18E15D5E8();
    sub_18E1A7AD0();
    sub_18E19136C();
    sub_18E1A7AE0();
    v27 = *(v33 + 8);
    v28 = sub_18E192220();
  }

  else
  {
    sub_18E1913C0();
    v26 = v35;
    sub_18E15D5E8();
    sub_18E1A7AD0();
    sub_18E19136C();
    sub_18E1A7AE0();
    v30 = *(v31 + 8);
    v28 = v2;
    v29 = v32;
  }

  v30(v28, v29);
  (*(v19 + 8))(v1, v26);
  sub_18E15A29C();
}

void StringResponseSanitizer.DefaultableGuardrails.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x193ACB0A0]((v0[1] & 1) != 0);
  if (v1)
  {
    sub_18E1A7C80();
    v2 = sub_18E15C5A8();

    sub_18E183964(v2, v3);
  }

  else
  {
    sub_18E1A7C80();
  }
}

uint64_t StringResponseSanitizer.DefaultableGuardrails.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18E159F00();
  MEMORY[0x193ACB0A0]((v2 & 1) != 0);
  sub_18E1A7C80();
  if (v1)
  {
    sub_18E183964(v4, v1);
  }

  return sub_18E1A7CA0();
}

void StringResponseSanitizer.DefaultableGuardrails.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E159F44();
  v47 = v12;
  v14 = v13;
  v15 = sub_18E161880(&qword_1EABD0FE8, &qword_18E1AEA10);
  sub_18E159050(v15);
  v17 = *(v16 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v18, v19);
  sub_18E15A114();
  v20 = sub_18E161880(&qword_1EABD0FF0, &qword_18E1AEA18);
  sub_18E159050(v20);
  v22 = *(v21 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v23, v24);
  sub_18E159FE0();
  v25 = sub_18E161880(&qword_1EABD0FF8, &qword_18E1AEA20);
  sub_18E159050(v25);
  v46 = v26;
  v28 = *(v27 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v29, v30);
  sub_18E15D458();
  v31 = v14[4];
  sub_18E159D90(v14, v14[3]);
  sub_18E1912C4();
  sub_18E15D900();
  sub_18E1A7CC0();
  if (v10)
  {
    goto LABEL_7;
  }

  v48 = v14;
  sub_18E192214();
  v32 = sub_18E1A7AA0();
  v36 = sub_18E15AF14(v32, 0);
  if (v34 == v35 >> 1)
  {
LABEL_6:
    v38 = sub_18E1A78C0();
    swift_allocError();
    v40 = v39;
    v41 = *(sub_18E161880(&qword_1EABD06A0, &qword_18E1AA9F0) + 48);
    *v40 = &type metadata for StringResponseSanitizer.DefaultableGuardrails;
    sub_18E192214();
    sub_18E1A7A00();
    sub_18E15AEBC();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v46 + 8))(v11, v25);
    v14 = v48;
LABEL_7:
    sub_18E158EC4(v14);
    goto LABEL_8;
  }

  if (v34 < (v35 >> 1))
  {
    v37 = sub_18E15C52C(v34, v33);
    sub_18E15AF84(v37);
    sub_18E19222C();
    if (!(v36 >> 1))
    {
      LOBYTE(a10) = 1;
      sub_18E191318();
      sub_18E15D5E8();
      sub_18E1A79F0();
      sub_18E191414();
      sub_18E15A45C();
      sub_18E15B9F8();
      swift_unknownObjectRelease();
      v42 = sub_18E1921E0();
      v43(v42);
      v44 = sub_18E15C598();
      v45(v44);
      *v47 = a10;
      *(v47 + 8) = v14;
      sub_18E158EC4(v14);
LABEL_8:
      sub_18E15A29C();
      return;
    }

    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_18E190574()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_18E1A7C60();
  StringResponseSanitizer.DefaultableGuardrails.hash(into:)();
  return sub_18E1A7CA0();
}

double StringResponseSanitizer.init(overrides:)(__int128 *a1)
{
  v13 = *a1;
  v12 = 0;
  v1 = StringResponseSanitizer.init(overrides:guardrails:)(&v13, &v12, &v14);
  *&result = sub_18E15D8A8(v1, v2, v3, v4, v5, v6, v7, v8, v11, v12, v13, *(&v13 + 1), v14, v15, v16, v9).n128_u64[0];
  return result;
}

double StringResponseSanitizer.init(guardrails:)(uint64_t *a1)
{
  v1 = *a1;
  v14 = xmmword_18E1AC6B0;
  v13 = v1;
  v2 = StringResponseSanitizer.init(overrides:guardrails:)(&v14, &v13, &v15);
  *&result = sub_18E15D8A8(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13, v14, *(&v14 + 1), v15, v16, v17, v10).n128_u64[0];
  return result;
}

BOOL static StringResponseSanitizer.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  v9 = a2[3];
  v16[0] = v2;
  v16[1] = v3;
  v17 = v4;
  v14[0] = v6;
  v14[1] = v7;
  v15 = v8;
  sub_18E159D24(v2);
  sub_18E159D24(v6);
  v10 = static StringResponseSanitizer.DefaultableOverrides.== infix(_:_:)(v16, v14);
  sub_18E15F0C0(v6, v7, v8);
  sub_18E15F0C0(v2, v3, v4);
  if (!v10)
  {
    return 0;
  }

  if (v5)
  {
    if (v9)
    {
      v11 = sub_18E15C5A8();
      return (sub_18E15DFE0(v11, v12) & 1) != 0;
    }

LABEL_7:

    return 0;
  }

  if (v9)
  {
    goto LABEL_7;
  }

  return 1;
}

unint64_t sub_18E1909C4(char a1)
{
  result = 0x656469727265766FLL;
  switch(a1)
  {
    case 1:
      result = 0x6961726472617567;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18E190A64(uint64_t a1)
{
  v2 = sub_18E191468();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E190AA0(uint64_t a1)
{
  v2 = sub_18E191468();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StringResponseSanitizer.encode(to:)()
{
  sub_18E159F44();
  v31 = v1;
  v3 = v2;
  v4 = sub_18E161880(&qword_1EABD1008, &qword_18E1AEA28);
  sub_18E159050(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v9, v10);
  v11 = *v0;
  v12 = v0[1];
  v13 = *(v0 + 16);
  v14 = v0[3];
  v29 = v0[4];
  v30 = v14;
  v28 = v0[5];
  v16 = v3[3];
  v15 = v3[4];
  v17 = v3;
  v19 = &v27 - v18;
  sub_18E159D90(v17, v16);
  sub_18E159D24(v11);
  sub_18E191468();
  sub_18E1A7CD0();
  v32 = v11;
  v33 = v12;
  v34 = v13;
  sub_18E1914BC();
  v20 = v31;
  sub_18E1A7B30();
  if (v20)
  {
    sub_18E15F0C0(v32, v33, v34);
  }

  else
  {
    v22 = v28;
    v21 = v29;
    sub_18E15F0C0(v32, v33, v34);
    v32 = v30;
    sub_18E19136C();

    sub_18E1A7AE0();

    v32 = v21;
    type metadata accessor for CachedSafetyModelsWrapper();
    sub_18E15D4C4();
    sub_18E191564(v23, v24);
    sub_18E15CAB0();
    v32 = v22;
    type metadata accessor for ModelManagerSessionWrapper();
    sub_18E15A0BC();
    sub_18E191564(v25, v26);
    sub_18E15CAB0();
  }

  (*(v6 + 8))(v19, v4);
  sub_18E15A29C();
}

void StringResponseSanitizer.hash(into:)()
{
  v1 = *(v0 + 3);
  v4 = *v0;
  v5 = *(v0 + 16);
  StringResponseSanitizer.DefaultableOverrides.hash(into:)();
  if (v1)
  {
    sub_18E1A7C80();
    v2 = sub_18E159F88();

    sub_18E183964(v2, v3);
  }

  else
  {
    sub_18E1A7C80();
  }
}

uint64_t StringResponseSanitizer.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  sub_18E1A7C60();
  StringResponseSanitizer.DefaultableOverrides.hash(into:)();
  sub_18E1A7C80();
  if (v4)
  {
    sub_18E183964(v6, v4);
  }

  return sub_18E1A7CA0();
}

void StringResponseSanitizer.init(from:)()
{
  sub_18E159F44();
  v2 = v1;
  v4 = v3;
  v5 = sub_18E161880(&qword_1EABD1010, &qword_18E1AEA30);
  sub_18E159050(v5);
  v7 = *(v6 + 64);
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v8, v9);
  sub_18E15BB5C();
  v10 = v2[4];
  sub_18E159D90(v2, v2[3]);
  sub_18E191468();
  sub_18E1A7CC0();
  if (v0)
  {
    sub_18E158EC4(v2);
  }

  else
  {
    sub_18E191510();
    sub_18E1921F8();
    sub_18E1A7A80();
    sub_18E191414();
    sub_18E1921F8();
    sub_18E1A7A30();
    type metadata accessor for CachedSafetyModelsWrapper();
    sub_18E15D4C4();
    sub_18E191564(v11, v12);
    sub_18E1598A0();
    sub_18E1A7A80();
    type metadata accessor for ModelManagerSessionWrapper();
    sub_18E15A0BC();
    sub_18E191564(v13, v14);
    sub_18E1598A0();
    sub_18E1A7A80();
    v15 = sub_18E15B854();
    v16(v15);
    *v4 = v20;
    *(v4 + 8) = v21;
    *(v4 + 16) = v22;
    *(v4 + 24) = v20;
    *(v4 + 32) = v20;
    *(v4 + 40) = v20;
    v17 = sub_18E192220();
    sub_18E159D24(v17);

    sub_18E158EC4(v2);
    v18 = sub_18E192220();
    sub_18E15F0C0(v18, v19, v22);
  }

  sub_18E15A29C();
}

uint64_t sub_18E191180()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 3);
  v5 = v0[2];
  sub_18E1A7C60();
  StringResponseSanitizer.hash(into:)();
  return sub_18E1A7CA0();
}

unint64_t sub_18E191214()
{
  result = qword_1EABD0F98;
  if (!qword_1EABD0F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0F98);
  }

  return result;
}

unint64_t sub_18E191268()
{
  result = qword_1EABD01A0;
  if (!qword_1EABD01A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD01A0);
  }

  return result;
}

unint64_t sub_18E1912C4()
{
  result = qword_1EABD0FD0;
  if (!qword_1EABD0FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0FD0);
  }

  return result;
}

unint64_t sub_18E191318()
{
  result = qword_1EABD0FD8;
  if (!qword_1EABD0FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0FD8);
  }

  return result;
}

unint64_t sub_18E19136C()
{
  result = qword_1EABCFE10;
  if (!qword_1EABCFE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFE10);
  }

  return result;
}

unint64_t sub_18E1913C0()
{
  result = qword_1EABD0FE0;
  if (!qword_1EABD0FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0FE0);
  }

  return result;
}

unint64_t sub_18E191414()
{
  result = qword_1EABD1000;
  if (!qword_1EABD1000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1000);
  }

  return result;
}

unint64_t sub_18E191468()
{
  result = qword_1EABCFE30;
  if (!qword_1EABCFE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFE30);
  }

  return result;
}

unint64_t sub_18E1914BC()
{
  result = qword_1EABCFE08;
  if (!qword_1EABCFE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFE08);
  }

  return result;
}

unint64_t sub_18E191510()
{
  result = qword_1EABD1018;
  if (!qword_1EABD1018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1018);
  }

  return result;
}

uint64_t sub_18E191564(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_18E1915B0()
{
  result = qword_1EABD1020;
  if (!qword_1EABD1020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1020);
  }

  return result;
}

unint64_t sub_18E191608()
{
  result = qword_1EABD1028;
  if (!qword_1EABD1028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1028);
  }

  return result;
}

unint64_t sub_18E191660()
{
  result = qword_1EABD1030;
  if (!qword_1EABD1030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1030);
  }

  return result;
}

unint64_t sub_18E1916B8()
{
  result = qword_1EABD1038;
  if (!qword_1EABD1038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1038);
  }

  return result;
}

unint64_t sub_18E191710()
{
  result = qword_1EABD1040;
  if (!qword_1EABD1040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1040);
  }

  return result;
}

uint64_t sub_18E191778(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18E1917B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StringResponseSanitizer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18E19194C()
{
  result = qword_1EABD1048;
  if (!qword_1EABD1048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1048);
  }

  return result;
}

unint64_t sub_18E1919A4()
{
  result = qword_1EABD1050;
  if (!qword_1EABD1050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1050);
  }

  return result;
}

unint64_t sub_18E1919FC()
{
  result = qword_1EABD1058;
  if (!qword_1EABD1058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1058);
  }

  return result;
}

unint64_t sub_18E191A54()
{
  result = qword_1EABD1060;
  if (!qword_1EABD1060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1060);
  }

  return result;
}

unint64_t sub_18E191AAC()
{
  result = qword_1EABD1068;
  if (!qword_1EABD1068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1068);
  }

  return result;
}

unint64_t sub_18E191B04()
{
  result = qword_1EABD1070;
  if (!qword_1EABD1070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1070);
  }

  return result;
}

unint64_t sub_18E191B5C()
{
  result = qword_1EABD1078;
  if (!qword_1EABD1078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1078);
  }

  return result;
}

unint64_t sub_18E191BB4()
{
  result = qword_1EABD1080;
  if (!qword_1EABD1080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1080);
  }

  return result;
}

unint64_t sub_18E191C0C()
{
  result = qword_1EABD1088;
  if (!qword_1EABD1088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1088);
  }

  return result;
}

unint64_t sub_18E191C64()
{
  result = qword_1EABCFE40;
  if (!qword_1EABCFE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFE40);
  }

  return result;
}

unint64_t sub_18E191CBC()
{
  result = qword_1EABCFE38;
  if (!qword_1EABCFE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFE38);
  }

  return result;
}

unint64_t sub_18E191D14()
{
  result = qword_1EABD1090;
  if (!qword_1EABD1090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1090);
  }

  return result;
}

unint64_t sub_18E191D6C()
{
  result = qword_1EABD1098;
  if (!qword_1EABD1098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1098);
  }

  return result;
}

unint64_t sub_18E191DC4()
{
  result = qword_1EABD10A0;
  if (!qword_1EABD10A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD10A0);
  }

  return result;
}

unint64_t sub_18E191E1C()
{
  result = qword_1EABD10A8;
  if (!qword_1EABD10A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD10A8);
  }

  return result;
}

unint64_t sub_18E191E74()
{
  result = qword_1EABD10B0;
  if (!qword_1EABD10B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD10B0);
  }

  return result;
}

unint64_t sub_18E191ECC()
{
  result = qword_1EABD10B8;
  if (!qword_1EABD10B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD10B8);
  }

  return result;
}

unint64_t sub_18E191F24()
{
  result = qword_1EABD0218;
  if (!qword_1EABD0218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0218);
  }

  return result;
}