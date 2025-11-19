uint64_t sub_22BB883E8()
{
  sub_22BB30F94();
  v1 = type metadata accessor for SessionCoordinatorCommand(0);
  sub_22BD61DE0(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = (v0 + v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      type metadata accessor for SessionCoordinatorCommand.TransactionRequestPayload(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v8 = *v6;

      if (EnumCaseMultiPayload == 1)
      {
        v9 = *(v6 + 2);
      }

      else
      {
        v50 = &v6[*(sub_22BBE6DE0(&qword_27D8E6408, &qword_22BDCE240) + 48)];
        v51 = *(v50 + 2);

        v52 = type metadata accessor for SpanMetadata();
        v53 = v52[6];
        v54 = sub_22BDB43E4();
        sub_22BD618B8();
        if (!sub_22BB3AA28(v55, v56, v57))
        {
          sub_22BB30474(v54);
          (*(v58 + 8))(&v50[v53], v54);
        }

        v59 = *&v50[v52[7] + 8];

        v60 = *&v50[v52[8]];

        v61 = *&v50[v52[9]];
      }

      v62 = sub_22BBE6DE0(&qword_27D8E63F8, &qword_22BDCE220);
      sub_22BB8D2E4(v62);
      v64 = *(v63 + 8);

      break;
    case 1u:
      v37 = *v6;

      v38 = sub_22BBE6DE0(&qword_27D8E6538, &qword_22BDCE448);
      v39 = v38[16];
      v40 = sub_22BDB43E4();
      sub_22BD618B8();
      if (!sub_22BB3AA28(v41, v42, v43))
      {
        sub_22BB30474(v40);
        (*(v44 + 8))(&v6[v39], v40);
      }

      v45 = *&v6[v38[20] + 8];

      v46 = *&v6[v38[24]];

      break;
    case 2u:
      v15 = sub_22BDB98C4();
      sub_22BB31F70(v15);
      (*(v16 + 8))(v0 + v3);
      v17 = *(sub_22BBE6DE0(&qword_27D8E6540, &qword_22BDCE450) + 64);
      v18 = sub_22BDB43E4();
      sub_22BD623FC();
      if (!sub_22BB3AA28(v19, v20, v21))
      {
        sub_22BB30474(v18);
        (*(v22 + 8))(&v6[v17], v18);
      }

      break;
    case 3u:
      v23 = *(v6 + 2);

      v24 = *(v6 + 4);

      v25 = *(v6 + 6);

      v26 = *(v6 + 8);

      v27 = type metadata accessor for SessionCoordinatorInjectionRequest(0);
      v28 = v27[9];
      v29 = sub_22BDB43E4();
      sub_22BB31F70(v29);
      (*(v30 + 8))(&v6[v28]);
      v31 = *&v6[v27[10] + 8];

      sub_22BB3531C(*&v6[v27[11]], *&v6[v27[11] + 8]);
      v32 = *&v6[v27[12] + 8];

      v33 = v27[13];
      v34 = sub_22BBE6DE0(&qword_27D8E64C8, &qword_22BDCE3D0);
      sub_22BB31F70(v34);
      (*(v35 + 8))(&v6[v33], v36);
      break;
    case 4u:
      v10 = *(v6 + 2);

      v11 = *(v6 + 4);

      v12 = *(v6 + 6);

      v13 = *(v6 + 8);

      v14 = *(v6 + 10);

      sub_22BB3531C(*(v6 + 11), *(v6 + 12));
      break;
    case 5u:
      v47 = sub_22BDB5D14();
      sub_22BB31F70(v47);
      (*(v48 + 8))(v0 + v3, v49);
      break;
    default:
      break;
  }

  sub_22BB314EC();

  return MEMORY[0x2821FE8E8](v65, v66, v67);
}

uint64_t sub_22BB8882C()
{
  v2 = sub_22BBE6DE0(&qword_27D8E6038, &qword_22BDD0300);
  sub_22BB3A75C(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  sub_22BB32FA4((v1 + v4));
  v7 = *(v0 + 56);
  v8 = sub_22BBE6DE0(&qword_27D8E64A0, &qword_22BDCE358);
  sub_22BB31F70(v8);
  (*(v9 + 8))(v1 + v4 + v7);
  v10 = sub_22BBC20AC();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

uint64_t sub_22BB8890C()
{
  v1 = *(v0 + 24);

  sub_22BB322B0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22BB88940()
{
  v2 = sub_22BDB5664();
  sub_22BB3A75C(v2);
  v5 = *(v4 + 64);
  v6 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v7 = sub_22BDB43E4();
  sub_22BB31F70(v7);
  (*(v8 + 8))(v6);
  v9 = (v6 + *(v0 + 28));
  v10 = v9[1];

  v11 = v9[3];

  v12 = v9[5];

  v13 = sub_22BBC20AC();

  return MEMORY[0x2821FE8E8](v13, v14, v15);
}

uint64_t sub_22BB88A3C()
{
  v1 = type metadata accessor for SessionCoordinatorCommand.TransactionRequestPayload(0);
  sub_22BD61DE0(v1);
  v4 = *(v3 + 64);
  v5 = (v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *v5;

  if (EnumCaseMultiPayload == 1)
  {
    v8 = v5[2];
  }

  else
  {
    v9 = v5 + *(sub_22BBE6DE0(&qword_27D8E6408, &qword_22BDCE240) + 48);
    v10 = *(v9 + 2);

    v11 = type metadata accessor for SpanMetadata();
    v12 = v11[6];
    v13 = sub_22BDB43E4();
    sub_22BD623FC();
    if (!sub_22BB3AA28(v14, v15, v16))
    {
      sub_22BB30474(v13);
      (*(v17 + 8))(&v9[v12], v13);
    }

    v18 = *&v9[v11[7] + 8];

    v19 = *&v9[v11[8]];

    v20 = *&v9[v11[9]];
  }

  v21 = sub_22BBC20AC();

  return MEMORY[0x2821FE8E8](v21, v22, v23);
}

uint64_t sub_22BB88BA4()
{
  v1 = *(v0 + 16);

  sub_22BB366B8();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22BB88BF4()
{
  sub_22BB366B8();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22BB89354(uint64_t result)
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
      type metadata accessor for SessionCoordinatorCommand(0);
      v2 = sub_22BDBADC4();
      *(v2 + 16) = v1;
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    v3 = *(*(type metadata accessor for SessionCoordinatorCommand(0) - 8) + 80);
    return v2;
  }

  return result;
}

void *sub_22BB893E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_22BBE6DE0(&qword_27D8E6590, &qword_22BDCE490);
    v3 = *(type metadata accessor for SessionCoordinatorCommand(0) - 8);
    v4 = *(v3 + 72);
    v5 = (*(v3 + 80) + 40) & ~*(v3 + 80);
    v6 = swift_allocObject();
    v6[2] = sub_22BB89514();
    v6[3] = 0;
    v6[4] = 0;
    sub_22BD5E8B8((v6 + 2), v6 + v5, v2, a1);
  }

  else
  {
    v6 = *sub_22BDB6004();
  }

  return v6;
}

uint64_t sub_22BB89514()
{
  v2 = sub_22BD63964();
  j__malloc_size(v2);
  v3 = sub_22BB35760();
  v4 = v1(v3);
  result = sub_22BB30434(v4);
  v8 = *(v7 + 72);
  if (v8)
  {
    v9 = v0 - ((*(v6 + 80) + 40) & ~*(v6 + 80));
    if (v8 != -1 || v9 != 0x8000000000000000)
    {
      return v9 / v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BB895B0()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = *(v1 + 4536);
  v3 = *(v1 + 2496);
  v4 = *v0;
  sub_22BB3052C();
  *v5 = v4;

  v6 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void *sub_22BB896B4(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        v10 = type metadata accessor for SessionCoordinatorCommand(0);
        result = sub_22BB335C0(a3, a2 + *(*(v10 - 8) + 72) * v5);
        v11 = v8[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          v8[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_22BB897F0()
{
  STACK[0x458] = v0[561];
  v1 = v0[533];
  v2 = v0[528];
  v3 = v0[526];
  v4 = v0[524];
  v5 = v0[519];
  v6 = v0[478];
  STACK[0x448] = v0[453];
  v7 = v0[426];
}

uint64_t sub_22BB89820()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 120);
  return result;
}

uint64_t sub_22BB8985C()
{

  return sub_22BDBB554();
}

uint64_t sub_22BB898A4()
{
  *(v1 - 96) = v0;

  return sub_22BDBABA4();
}

uint64_t sub_22BB898C8()
{
  v2 = *(v0 + 232);
  v3 = *(v0 + 200);

  return sub_22BBBE2AC();
}

uint64_t sub_22BB898F4()
{
  v3 = v0[347];
  *(v1 - 256) = v0[348];
  *(v1 - 248) = v3;
  v4 = v0[343];
  *(v1 - 240) = v0[346];
  *(v1 - 232) = v4;
  v5 = v0[337];
  *(v1 - 224) = v0[340];
  *(v1 - 216) = v5;
  v6 = v0[331];
  *(v1 - 208) = v0[334];
  *(v1 - 200) = v6;
  *(v1 - 192) = v0[328];
  v7 = v0[322];
  *(v1 - 176) = v0[325];
  *(v1 - 168) = v7;
  v8 = v0[318];
  *(v1 - 160) = v0[319];
  *(v1 - 152) = v8;
  *(v1 - 136) = v0[315];
}

void sub_22BB89994(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_22BB899C0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22BBEB2E0(a2, a3);
    sub_22BB358DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BB89A2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[2];
  v7 = type metadata accessor for SessionCoordinatorCommand(0);
  result = sub_22BB3A518(a2 + *(*(v7 - 8) + 72) * v6, a3);
  v9 = a1[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = a1[1];
    if (v11 >= *a1)
    {
      v11 = 0;
    }

    a1[2] = v11;
    if (!__OFSUB__(v12, 1))
    {
      a1[1] = v12 - 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BB89ADC(unint64_t a1, unint64_t a2)
{
  STACK[0x438] = a1;
  STACK[0x428] = a2;
  STACK[0x458] = v2;

  return sub_22BDB8444();
}

uint64_t sub_22BB89B00(uint64_t result)
{
  *(v1 + 2192) = 0;
  *(v1 + 2160) = result;
  return result;
}

uint64_t sub_22BB89B20(uint64_t a1)
{
  *(a1 + 16) = sub_22BB8AE80;
  *(a1 + 24) = v1;
}

uint64_t sub_22BB89B94(uint64_t a1)
{
  result = a1 + v1;
  v4 = *(v2 - 160);
  return result;
}

void sub_22BB89BBC()
{

  JUMPOUT(0x2318A6080);
}

void *sub_22BB89BD8(void *result)
{
  *(v3 + 1712) = result;
  result[2] = v4;
  result[3] = v6;
  result[4] = v1;
  result[5] = v2;
  result[6] = v5;
  return result;
}

_BYTE **sub_22BB89BF8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_22BB89C0C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_22BB32EE0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_22BB89C70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_22BB58D74();
}

void sub_22BB89C84()
{
  v2 = v0[541];
  v3 = v0[518];
  v4 = v0[517];
  *(v1 - 152) = v0[515];
  v5 = v0[514];
  v6 = v0[512];
  v7 = v0[312];
}

uint64_t sub_22BB89CB4()
{
  v3 = *(v1 + *(v0 + 24));
  v4 = (v1 + *(v0 + 28));
  v5 = *v4;
  v6 = v4[1];
}

uint64_t sub_22BB89CD8()
{
  result = v0;
  v3 = *(v1 - 96);
  return result;
}

uint64_t sub_22BB89D04()
{
  result = v0[91];
  v2 = v0[88];
  v3 = v0[86];
  v4 = v0[85];
  return result;
}

uint64_t sub_22BB89D30(uint64_t result)
{
  *(result + 16) = sub_22BB8AE88;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB89D6C()
{

  return sub_22BDBAEF4();
}

uint64_t sub_22BB89DFC()
{

  return sub_22BCF8AE4(v0, type metadata accessor for FeedbackLearning.TaskFinalResolutionState);
}

uint64_t sub_22BB89E44(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  result = *v2;
  v5 = *(*v2 + 24);
  v6 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    if (*(*v2 + 16) < v6 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22BD5E0A4(isUniquelyReferenced_nonNull_native, v6);
      v9 = *v2;
    }

    v10 = type metadata accessor for SessionCoordinatorCommand(0);
    sub_22BB2F0C8(v10);
    return a2(v9 + 16, v9 + ((*(v11 + 80) + 40) & ~*(v11 + 80)), a1);
  }

  return result;
}

uint64_t sub_22BB89F30(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v2 = a1(0);
  sub_22BB2F0C8(v2);
  v4 = sub_22BD61764(*(v3 + 80));

  return a2(v4);
}

uint64_t sub_22BB89FA8()
{
  v2 = *(v0 - 160);

  return swift_allocObject();
}

uint64_t sub_22BB89FC4()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  sub_22BB3053C();
  *v3 = v2;
  v5 = *(v4 + 320);
  v6 = *v1;
  sub_22BB3052C();
  *v7 = v6;
  *(v8 + 328) = v0;

  if (v0)
  {
    v9 = sub_22BD3A1D0;
  }

  else
  {
    v9 = sub_22BB8A0C4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22BB8A0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BB30EEC();
  sub_22BB34E78();
  v47 = v18[38];
  v49 = v18[39];
  v19 = v18[24];
  v42 = v18[25];
  v51 = v18[23];
  v20 = v18[19];
  v21 = v18[16];
  v43 = v18[17];
  v45 = v18[37];
  v23 = v18[14];
  v22 = v18[15];
  v24 = v18[2];
  v25 = v18[3];
  v26 = v24[4];
  sub_22BB69FEC(v24, v24[3]);
  sub_22BB2F0E0();
  sub_22BDB7994();
  (*(v22 + 104))(v21, *MEMORY[0x277D1D9D8], v23);
  sub_22BDB96A4();
  sub_22BDB8E24();
  v47(v20, v43);
  (*(v22 + 8))(v21, v23);
  (*(v19 + 8))(v42, v51);
  sub_22BB3141C();
  v44 = v27;
  v46 = v28;
  v48 = v29;
  v50 = v18[9];
  v52 = v18[6];
  v30 = sub_22BBBE718();
  sub_22BB8A288(v30, v31, v32);

  sub_22BB2F09C();
  sub_22BB35ED4();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42, v44, v46, v48, v50, v52, a16, a17, a18);
}

uint64_t sub_22BB8A288(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v37 = a2;
  v4 = sub_22BDB7764();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BDB7734();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22BDB7754();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6114();

  v17 = sub_22BDB7744();
  sub_22BDB7774();
  v33 = sub_22BDBB1C4();
  v38 = a3;

  if (sub_22BDBB244())
  {
    v30 = v17;
    v31 = v8;
    v18 = v11;
    v32 = v7;

    v19 = v34;
    sub_22BDB77B4();

    v21 = v35;
    v20 = v36;
    if ((*(v35 + 88))(v19, v36) == *MEMORY[0x277D85B00])
    {
      v22 = 0;
      v23 = 0;
      v24 = "[Error] Interval already ended";
    }

    else
    {
      (*(v21 + 8))(v19, v20);
      v24 = "Service: %s";
      v23 = 2;
      v22 = 1;
    }

    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v39 = v26;
    *v25 = v23;
    *(v25 + 1) = v22;
    *(v25 + 2) = 2080;
    *(v25 + 4) = sub_22BB32EE0(v37, v38, &v39);
    v27 = sub_22BDB7714();
    v28 = v30;
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v30, v33, v27, "PlannerService.setup(_:)", v24, v25, 0xCu);
    sub_22BB32FA4(v26);
    MEMORY[0x2318A6080](v26, -1, -1);
    MEMORY[0x2318A6080](v25, -1, -1);

    (*(v31 + 8))(v18, v32);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  return (*(v13 + 8))(v16, v12);
}

unint64_t sub_22BB8A61C(unint64_t result)
{
  v2 = *(v1 - 144);
  *(v2 + 1640) = 0;
  STACK[0x290] = result;
  *(v2 + 1632) = result;
  return result;
}

uint64_t sub_22BB8A630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  sub_22BB30EEC();
  a25 = v27;
  a26 = v28;
  sub_22BB34E78();
  a24 = v26;
  v30 = v26[32];
  v29 = v26[33];
  v32 = v26[30];
  v31 = v26[31];
  v33 = v26[29];
  v34 = v26[2];
  v36 = *(v34 + 24);
  v35 = *(v34 + 32);
  v37 = sub_22BB30AE4();
  sub_22BB69FEC(v37, v38);
  v39 = *(v35 + 8);
  v40 = sub_22BDBB684();
  v42 = v41;
  v26[34] = v40;
  v26[35] = v41;
  sub_22BDB6114();
  sub_22BDB6114();
  sub_22BDB7744();
  sub_22BDB7704();
  v43 = *(v31 + 8);
  v44 = sub_22BB35464();
  v117 = v45;
  v45(v44);

  v46 = sub_22BDB7744();
  v47 = sub_22BDBB1D4();

  v112 = v40;
  v115 = v42;
  if (sub_22BDBB244())
  {
    v48 = v26[29];
    v49 = sub_22BB31AD8();
    v50 = sub_22BB314C8();
    a15 = v50;
    *v49 = 136315138;
    *(v49 + 4) = sub_22BB32EE0(v40, v42, &a15);
    v51 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v46, v47, v51, "PlannerService.setup(_:)", "Service: %s", v49, 0xCu);
    sub_22BB32FA4(v50);
    sub_22BB30AF0();
    sub_22BB3A3D8();
  }

  v52 = v26[33];
  v54 = v26[29];
  v53 = v26[30];
  v55 = v26[27];
  v56 = v26[26];
  v57 = v26[2];
  v58 = sub_22BB3459C(v55);
  v59(v58, v54, v56);
  v60 = sub_22BDB77A4();
  sub_22BB34ED4(v60);
  sub_22BB3A190();
  v26[36] = sub_22BDB7794();
  (*(v55 + 8))(v54, v56);
  v61 = sub_22BB32E04();
  v117(v61);
  sub_22BB69FEC(v57, *(v34 + 24));
  swift_getDynamicType();
  v62 = *(v34 + 32);
  if (sub_22BDB79C4())
  {
    v64 = v26[21];
    v63 = v26[22];
    v65 = v26[19];
    v108 = v26[20];
    v66 = v26[18];
    v67 = v26[2];
    v110 = v26[3];
    v113 = v26[25];
    v118 = v26[17];
    v26[37] = sub_22BDB8E54();
    v68 = *(v34 + 32);
    sub_22BB69FEC(v67, *(v34 + 24));
    sub_22BDB7994();
    (*(v64 + 104))(v63, *MEMORY[0x277D1DCA0], v108);
    sub_22BDB96A4();
    sub_22BDB8E44();
    v69 = *(v66 + 8);
    v26[38] = v69;
    v26[39] = (v66 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v69(v65, v118);
    v70 = *(v64 + 8);
    v71 = sub_22BB2F0E0();
    v72(v71);
    v74 = *(v34 + 24);
    v73 = *(v34 + 32);
    sub_22BB69FEC(v67, v74);
    v75 = *(MEMORY[0x277D1D588] + 4);
    v76 = swift_task_alloc();
    v26[40] = v76;
    *v76 = v26;
    v76[1] = sub_22BB89FC4;
    sub_22BB3487C(v26[3]);
    sub_22BB35ED4();

    return MEMORY[0x282176818](v77, v78, v79, v80, v81, v82, v83, v84, a9, v108, v110, v113, v67, v118, a15, a16, a17, a18);
  }

  else
  {
    v85 = v26[13];
    sub_22BDB63D4();

    v86 = sub_22BDB77C4();
    v87 = sub_22BDBB104();

    v88 = os_log_type_enabled(v86, v87);
    v89 = v26[13];
    v91 = v26[10];
    v90 = v26[11];
    if (v88)
    {
      v92 = swift_slowAlloc();
      a15 = swift_slowAlloc();
      *v92 = 136315394;
      *(v92 + 4) = sub_22BB32EE0(v112, v115, &a15);
      *(v92 + 12) = 2080;
      *(v92 + 14) = sub_22BB32EE0(v112, v115, &a15);
      _os_log_impl(&dword_22BB2C000, v86, v87, "%s is not enabled. Not calling %s.setup()", v92, 0x16u);
      swift_arrayDestroy();
      sub_22BB30AF0();
      sub_22BB3A3D8();
    }

    (*(v90 + 8))(v89, v91);
    sub_22BB3141C();
    v109 = v93;
    v111 = v94;
    v114 = v95;
    v116 = v26[9];
    v119 = v26[6];
    v96 = sub_22BBBE718();
    sub_22BB8A288(v96, v97, v98);

    sub_22BB2F09C();
    sub_22BB35ED4();

    return v100(v99, v100, v101, v102, v103, v104, v105, v106, a9, v109, v111, v114, v116, v119, a15, a16, a17, a18);
  }
}

uint64_t sub_22BB8AB80()
{

  return sub_22BDBB6D4();
}

uint64_t sub_22BB8ABD4()
{

  return swift_arrayDestroy();
}

void sub_22BB8ABF0()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[6];
}

uint64_t sub_22BB8AC18()
{

  return sub_22BC5E5C4();
}

void sub_22BB8AC30()
{
  v1 = *(v0 + 584);
  v2 = v0;
  v3 = *(v0 + 568);
  v4 = *(v2 + 560);
}

uint64_t sub_22BB8AC44()
{
  v2 = *(v0 - 192);

  return sub_22BDBB5D4();
}

uint64_t sub_22BB8AC8C()
{
  v2 = ((*(v0 + 48) + 32) & ~*(v0 + 48)) + *(v0 + 40);

  return swift_allocObject();
}

uint64_t sub_22BB8ACE0()
{

  return sub_22BDB8514();
}

void sub_22BB8AD4C()
{
  v1 = v0[401];
  v2 = v0[400];
  v3 = v0[399];
  v4 = v0[398];
  v5 = v0[397];
  v6 = v0[396];
}

uint64_t sub_22BB8ADB4()
{
  v4 = *(v2 + 16);
  v5 = v1 + *(v3 - 160);
  result = v0;
  v7 = *(v3 - 168);
  return result;
}

uint64_t sub_22BB8ADD4(uint64_t a1)
{
  *(a1 + 16) = sub_22BD5ED18;
  *(a1 + 24) = v1;
}

uint64_t sub_22BB8AE00()
{

  return sub_22BDB4DA4();
}

uint64_t sub_22BB8AE28(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v2);
  sub_22BB70194();
  return sub_22BDBB684();
}

uint64_t sub_22BB8AE8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22BBE6DE0(a3, a4);
  sub_22BB2F330(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22BB8AEF8(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB8AF28()
{

  return sub_22BDBABD4();
}

uint64_t sub_22BB8AF58(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_22BBE6DE0(a1, a2);
  sub_22BB30444(v3);
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 40) & ~v6;
  v9 = *(v8 + 64);
  v10 = *(v2 + 32);

  (*(v5 + 8))(v2 + v7, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + v9, v6 | 7);
}

uint64_t sub_22BB8B00C()
{
  v2 = sub_22BB2F41C();
  sub_22BB30444(v2);
  v4 = v3;
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = *(v1 + 2);
  swift_unknownObjectRelease();
  v9 = *(v1 + 4);

  v0(*(v1 + 5));
  (*(v4 + 8))(&v1[v5], v2);
  v10 = sub_22BB3B31C();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

uint64_t sub_22BB8B0D8()
{
  if (*(v0 + 40))
  {
    sub_22BB32FA4((v0 + 16));
  }

  sub_22BB2F434();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22BB8B114()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22BB8B154()
{
  v1 = *(sub_22BBE6DE0(&qword_27D8E6518, &unk_22BDCE420) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_22BBE6DE0(&qword_27D8E6560, &qword_22BDCE740);
  if (!sub_22BB3AA28(v0 + v3, 1, v5))
  {
    v6 = *(v5 + 48);
    v7 = sub_22BDB9B54();
    sub_22BB2F330(v7);
    (*(v8 + 8))(v0 + v3 + v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22BB8B260()
{
  v1 = sub_22BDB5894();
  sub_22BB30444(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 88) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  v9 = *(v0 + 5);

  v10 = *(v0 + 7);

  v11 = *(v0 + 9);

  v12 = *(v0 + 10);

  (*(v3 + 8))(&v0[v5], v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_22BB8B338()
{
  sub_22BB34E84();
  v2 = sub_22BDB5664();
  sub_22BB30434(v2);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = _s24StandardSessionResourcesVMa();
  sub_22BB30434(v7);
  v10 = *(v9 + 64) + ((v4 + v6 + *(v8 + 80)) & ~*(v8 + 80));
  sub_22BBC3AC8();
  v12 = *(v0 + v11);
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_22BB3C48C;
  sub_22BD62E70();
  sub_22BB37AC0();

  return sub_22BB8B6F8(v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_22BB8B4A8()
{
  sub_22BB34E84();
  v1 = v0[8];
  v2 = v1[3];
  v3 = v1[4];
  sub_22BB69FEC(v1, v2);
  v4 = *(v3 + 24);
  v0[5] = swift_getAssociatedTypeWitness();
  sub_22BB3182C();
  v0[6] = swift_getAssociatedConformanceWitness();
  v5 = sub_22BB8B8A0(v0 + 2);
  v13 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[12] = v7;
  v8 = _s24StandardSessionResourcesVMa();
  v9 = sub_22BB3B194(&qword_281428A30, _s24StandardSessionResourcesVMa);
  *v7 = v0;
  v7[1] = sub_22BB6A634;
  v10 = v0[9];
  v11 = v0[10];

  return v13(v5, v10, v11, v8, v9, v2, v3);
}

uint64_t sub_22BB8B6BC()
{

  return swift_slowAlloc();
}

uint64_t sub_22BB8B6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[7] = a1;
  return MEMORY[0x2822009F8](sub_22BB8B4A8, 0, 0);
}

uint64_t sub_22BB8B774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_22BDB9C14();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22BB8B82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_22BDB7F64();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t *sub_22BB8B8A0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

char *sub_22BB8B900(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v9 = *v6;
  swift_defaultActor_initialize();
  sub_22BB5413C();
  v11 = *(v10 + 128);
  sub_22BDB4C34();
  v12 = *(v9 + 88);
  v13 = *(v9 + 80);
  swift_getAssociatedTypeWitness();
  sub_22BC54A60();
  swift_getAssociatedConformanceWitness();
  sub_22BC53C18();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BB30AE4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for ToolExecutionEventStream();
  sub_22BB69984();
  *&v29 = AssociatedTypeWitness;
  *(&v29 + 1) = v16;
  v30 = AssociatedConformanceWitness;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for ToolExecution();
  swift_getTupleTypeMetadata2();
  sub_22BDBADB4();
  sub_22BB3A594();
  sub_22BB8E56C(v17, v18);
  sub_22BC54210();
  *&v6[v11] = sub_22BDBAB14();
  sub_22BB5413C();
  v20 = *(v13 - 8);
  (*(v20 + 16))(&v6[*(v19 + 104)], a1, v13);
  WitnessTable = a5;
  v32 = a6;
  sub_22BB8B8A0(&v29);
  sub_22BB30474(a5);
  (*(v21 + 32))();
  (*(v20 + 8))(a1, v13);
  sub_22BB5413C();
  sub_22BB382E8(&v29, &v6[*(v22 + 112)]);
  sub_22BB5413C();
  sub_22BB382E8(a3, &v6[*(v23 + 120)]);
  sub_22BB5413C();
  sub_22BB382E8(a4, &v6[*(v24 + 136)]);
  return v6;
}

uint64_t sub_22BB8BBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_22BDB4264();
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_22BDB4214();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_22BDB41D4();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_22BDB42A4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_22BB8BC90(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v10 = *(v6 + 48);
  v11 = *(v6 + 52);
  swift_allocObject();
  sub_22BB313B4();
  sub_22BC53CBC();
  sub_22BB8B900(v12, v13, v14, a4, a5, a6);
  return v6;
}

uint64_t sub_22BB8BD08()
{
  v40 = v0[11];
  v1 = v0[10];
  v37 = v0[12];
  v38 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = sub_22BDB5614();
  sub_22BB8C740(v6, v7);
  sub_22BB6914C(&qword_2814288D8, MEMORY[0x277CC5540]);
  sub_22BDBAAA4();
  v8 = sub_22BB2F12C();
  sub_22BB352C4(v8, v9);
  v10 = sub_22BB2F12C();
  sub_22BB8CD60(v10, v11);
  v12 = sub_22BB2F12C();
  sub_22BB3531C(v12, v13);
  sub_22BDBAA94();
  (*(v2 + 8))(v3, v5);
  v14 = sub_22BB2F12C();
  sub_22BB3531C(v14, v15);
  v16 = *(v1 + 16);
  v17 = sub_22BB2F3F0();
  v18(v17);
  sub_22BB6914C(&qword_2814288E0, MEMORY[0x277CC5290]);
  isUniquelyReferenced_nonNull_native = sub_22BDBACF4();
  v20 = v0[2];
  v21 = v0[3];
  v39 = v0;
  v22 = *(v20 + 16);
  if (v21 == v22)
  {
    v23 = MEMORY[0x277D84F90];
LABEL_3:

    v39[4] = v23;
    sub_22BBE6DE0(&qword_27D8E6798, qword_22BDD0540);
    sub_22BB8E600();
    sub_22BDBABC4();
    v25 = v24;

    v39[13] = v25;
    v26 = *(MEMORY[0x277D727B0] + 4);
    v27 = swift_task_alloc();
    v39[14] = v27;
    *v27 = v39;
    v27[1] = sub_22BB958DC;
    isUniquelyReferenced_nonNull_native = sub_22BB2F3F0();
  }

  else
  {
    if ((v21 & 0x8000000000000000) == 0)
    {
      v23 = MEMORY[0x277D84F90];
      while (v21 < *(v20 + 16))
      {
        v28 = *(v20 + 32 + v21);
        sub_22BBE6DE0(&qword_27D8E6790, &unk_22BDCEDF0);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_22BDBCBD0;
        *(v29 + 56) = MEMORY[0x277D84B78];
        *(v29 + 64) = MEMORY[0x277D84BC0];
        *(v29 + 32) = v28;
        v30 = sub_22BDBAC04();
        v32 = v31;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v35 = *(v23 + 16);
          sub_22BB8C414();
          v23 = isUniquelyReferenced_nonNull_native;
        }

        v33 = *(v23 + 16);
        if (v33 >= *(v23 + 24) >> 1)
        {
          sub_22BB8C414();
          v23 = isUniquelyReferenced_nonNull_native;
        }

        ++v21;
        *(v23 + 16) = v33 + 1;
        v34 = v23 + 16 * v33;
        *(v34 + 32) = v30;
        *(v34 + 40) = v32;
        if (v22 == v21)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return MEMORY[0x2821DADB8](isUniquelyReferenced_nonNull_native);
}

uint64_t sub_22BB8C06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_22BB8E060;

  return sub_22BB8C1CC(a3);
}

uint64_t sub_22BB8C10C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22BB6A0B4;

  return sub_22BB8C654(a1, v4, v5, v7);
}

uint64_t sub_22BB8C1CC(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_22BDBAAC4();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_22BDBAAB4();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BB8BD08, 0, 0);
}

uint64_t sub_22BB8C2F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB5F24();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BB8C358(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *(*(a3(0) - 8) + 16);
  v5 = sub_22BB31F54();
  v6(v5);
  return a2;
}

uint64_t sub_22BB8C3BC()
{
  sub_22BB35F54();
  v2 = v1(0);
  sub_22BB2F330(v2);
  v4 = *(v3 + 16);
  v5 = sub_22BB31F54();
  v6(v5);
  return v0;
}

void sub_22BB8C414()
{
  sub_22BB69BFC();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_22BB3665C();
  if (v6 == v7)
  {
LABEL_7:
    sub_22BB31E6C(v5);
    if (v2)
    {
      sub_22BBE6DE0(&qword_27D8E2B48, &qword_22BDBD250);
      v8 = swift_allocObject();
      sub_22BB3A7D8(v8);
      sub_22BB37430(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_22BB328BC();
        sub_22BD27424(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_22BB312FC();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_22BB368F8();
  if (!v6)
  {
    sub_22BB30DA4();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_22BB8C4F8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BB8C540(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BB8C588()
{
  sub_22BB2F35C();
  v1 = sub_22BDB5664();
  sub_22BB2F0C8(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  v7 = sub_22BB37580(v6);
  *v7 = v8;
  v7[1] = sub_22BB8DF68;
  v9 = sub_22BB30AE4();

  return sub_22BB8C06C(v9, v10, v11);
}

uint64_t sub_22BB8C654(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_22BB8E19C;

  return v8();
}

uint64_t sub_22BB8C740(uint64_t a1, unint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  *&v37 = a1;
  *(&v37 + 1) = a2;

  sub_22BBE6DE0(&qword_27D8E67A0, &qword_22BDCEE00);
  if (swift_dynamicCast())
  {
    sub_22BB382E8(v35, &v38);
    sub_22BB69FEC(&v38, v39);
    sub_22BDB4224();
    v35[0] = v37;
    sub_22BB32FA4(&v38);
    goto LABEL_59;
  }

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_22BB325EC(v35, &qword_27D8E67A8, &qword_22BDCEE08);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v35[0] = a1;
    *(&v35[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v35;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_22BDBB3D4();
  }

  sub_22BB8BBC8(v4, v5, &v38);
  v6 = *(&v38 + 1);
  v7 = v38;
  if (*(&v38 + 1) >> 60 != 15)
  {
    v35[0] = v38;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v35[0] = MEMORY[0x23189E290](v8);
  *(&v35[0] + 1) = v9;
  MEMORY[0x28223BE20](*&v35[0]);
  v10 = sub_22BD762F4(sub_22BD7699C);
  v12 = *(&v35[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v35[0]);
  switch(*(&v35[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v35[0]) - LODWORD(v35[0]);
      if (__OFSUB__(DWORD1(v35[0]), v35[0]))
      {
        goto LABEL_66;
      }

      v19 = v19;
LABEL_22:
      if (v11 == v19)
      {
        goto LABEL_23;
      }

      if (v12 == 2)
      {
        v18 = *(*&v35[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v35[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v21 = *(*&v35[0] + 16);
      v20 = *(*&v35[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v11)
      {
        v18 = 0;
LABEL_56:
        if (v18 < v11)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_22BDB42B4();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v34 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      *(&v37 + 7) = 0;
      *&v37 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v19 = BYTE14(v35[0]);
      goto LABEL_22;
  }

  while (4 * v24 != v17 >> 14)
  {
    v27 = v17;
    if ((v17 & 0xC) == v26)
    {
      v27 = sub_22BD769B8(v17, v13, v15);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v8 = sub_22BDBAC94();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = sub_22BDBACC4();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v38 = v13;
      *(&v38 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
      v30 = *(&v38 + v28);
    }

    else
    {
      v29 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = sub_22BDBB3D4();
      }

      v30 = *(v29 + v28);
    }

    if ((v17 & 0xC) == v26)
    {
      v17 = sub_22BD769B8(v17, v13, v15);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_62;
    }

    v17 = sub_22BDBACA4();
LABEL_46:
    *(&v37 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_61;
    }

    if (v23 == 14)
    {
      *&v38 = v37;
      *(&v38 + 6) = *(&v37 + 6);
      sub_22BDB42D4();
      LOBYTE(v23) = 0;
    }
  }

  if (v23)
  {
    *&v38 = v37;
    *(&v38 + 6) = *(&v37 + 6);
    sub_22BDB42D4();
    sub_22BB94C90(v34, v6);
    goto LABEL_58;
  }

  sub_22BB94C90(v34, v6);
LABEL_59:
  v31 = v35[0];
  sub_22BB352C4(*&v35[0], *(&v35[0] + 1));

  sub_22BB3531C(v31, *(&v31 + 1));
  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

uint64_t sub_22BB8CC58@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = sub_22BDB5F24();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + *(_s24StandardSessionResourcesVMa() + 40));
  os_unfair_lock_lock(v13 + 9);
  sub_22BB8CE0C(&v13[4]);
  os_unfair_lock_unlock(v13 + 9);
  v14 = a1(0);
  sub_22BB8C2F4(v4, v12);

  v16 = a2(v15, v12);
  a4[3] = v14;
  a4[4] = a3;

  *a4 = v16;
  return result;
}

uint64_t sub_22BB8CD60(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v6 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_9;
      }

      a1 = a1;
      v4 = v6;
LABEL_7:
      result = sub_22BB8DE60(a1, v4);
      if (v2)
      {
LABEL_8:

        __break(1u);
LABEL_9:
        __break(1u);
        JUMPOUT(0x22BB8CDFCLL);
      }

      return result;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
      goto LABEL_7;
    default:
      result = sub_22BD76890();
      if (!v2)
      {
        return result;
      }

      goto LABEL_8;
  }
}

uint64_t sub_22BB8CE0C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    v2 = *(a1 + 8);
    (*a1)(&v4);
    sub_22BB8DE54();
    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
  }
}

uint64_t sub_22BB8CE88()
{
  sub_22BB30F5C();
  v2 = v1;
  v4 = v3;
  v5 = sub_22BDB5F24();
  sub_22BB30434(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = sub_22BDB9C14();
  sub_22BB2F0C8(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v0 + 16);
  v14 = *(v0 + 24);
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_22BB3C48C;

  return sub_22BB8CFC8(v4, v13, v14, v0 + v7);
}

uint64_t sub_22BB8CFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = *(*(sub_22BDB5F24() - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v6 = *(*(sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BB8D090, 0, 0);
}

uint64_t sub_22BB8D090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BB75938();
  sub_22BB34E84();
  v11 = v10[4];
  v12 = v10[5];
  v14 = v10[2];
  v13 = v10[3];
  sub_22BDBAEF4();
  sub_22BB33224();
  sub_22BB30B28();
  sub_22BB336D0(v15, v16, v17, v18);
  sub_22BB322B0();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  sub_22BD4573C();
  v20 = sub_22BDB9274();
  sub_22BDB9304();

  sub_22BDB92F4();
  sub_22BB33748();
  sub_22BB3182C();
  sub_22BB8C3BC();
  sub_22BB2F324();
  v21 = sub_22BDB9264();
  v22 = MEMORY[0x277D1E338];
  v14[3] = v20;
  v14[4] = v22;
  *v14 = v21;
  sub_22BDBB004();
  v24 = v10[4];
  v23 = v10[5];

  sub_22BB2F09C();
  sub_22BB38474();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t sub_22BB8D1EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_22BB322B0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22BB8D2AC()
{
  v2 = *(v0 + 216);

  return _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
}

uint64_t sub_22BB8D2F8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v39 = a3;
  v7 = sub_22BDB9C14();
  v34 = v7;
  v8 = *(v7 - 8);
  v38 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v37 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BDB5F24();
  v11 = sub_22BB30434(v10);
  v36 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v15);
  v17 = *(v16 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v18);
  sub_22BB36FD8();
  swift_defaultActor_initialize();
  v19 = *(v8 + 16);
  v19(v4 + OBJC_IVAR____TtC23IntelligenceFlowRuntime20ShortcutsToolContext_toolbox, a2, v7);
  v20 = a2;
  v35 = a2;
  *(v4 + OBJC_IVAR____TtC23IntelligenceFlowRuntime20ShortcutsToolContext_clientActions) = sub_22BDB9B94();
  sub_22BB690EC(v39, v4 + OBJC_IVAR____TtC23IntelligenceFlowRuntime20ShortcutsToolContext_toolExecutionSession);
  sub_22BDBAEF4();
  sub_22BB30B28();
  sub_22BB336D0(v21, v22, v23, v24);
  sub_22BB33748();
  v25 = a1;
  sub_22BB8C3BC();
  v26 = v37;
  v27 = v20;
  v28 = v34;
  v19(v37, v27, v34);
  v29 = (v14 + *(v8 + 80) + ((*(v36 + 80) + 32) & ~*(v36 + 80))) & ~*(v8 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  sub_22BB8D7FC();
  (*(v8 + 32))(v30 + v29, v26, v28);
  sub_22BD454D0();
  v32 = v31;
  sub_22BB32FA4(v39);
  (*(v8 + 8))(v35, v28);
  sub_22BB8DA24(v25, MEMORY[0x277D1D2C8]);
  *(v4 + OBJC_IVAR____TtC23IntelligenceFlowRuntime20ShortcutsToolContext_candidateGenerationToolExecutionSessionSetupTask) = v32;
  return v4;
}

uint64_t sub_22BB8D61C()
{
  v1 = sub_22BDB5F24();
  sub_22BB30434(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);
  v7 = sub_22BDB9C14();
  sub_22BB30444(v7);
  v9 = v8;
  v11 = v10;
  v12 = *(v9 + 80);
  v13 = (v4 + v6 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = v3 | v12;
  v16 = *(v0 + 16);
  swift_unknownObjectRelease();
  v17 = sub_22BDB43E4();
  sub_22BB2F330(v17);
  (*(v18 + 8))(v0 + v4);
  (*(v9 + 8))(v0 + v13, v7);

  return MEMORY[0x2821FE8E8](v0, v13 + v14, v15 | 7);
}

uint64_t type metadata accessor for XPCClientAvatar()
{
  result = qword_28142D6A8;
  if (!qword_28142D6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BB8D7AC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_22BB8D7FC()
{
  sub_22BB35F54();
  v2 = v1(0);
  sub_22BB2F330(v2);
  v4 = *(v3 + 32);
  v5 = sub_22BB31F54();
  v6(v5);
  return v0;
}

uint64_t sub_22BB8D854(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v8 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16[-v10];
  v18 = type metadata accessor for SessionReverseClientDistributor(0);
  v19 = &off_283F7B530;
  *&v17 = a2;
  swift_defaultActor_initialize();
  v12 = OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_latestClientSentQueryEventId;
  v13 = sub_22BDB43E4();
  sub_22BB336D0(a4 + v12, 1, 1, v13);
  sub_22BB3D510(a1, a4 + OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_sessionId);
  sub_22BB382E8(&v17, a4 + OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_clientReverseClientDistributor);
  sub_22BB382E8(a3, a4 + OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_instrumentationSender);
  sub_22BB336D0(v11, 1, 1, v13);
  v14 = OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_latestClientSentQueryEventId;
  swift_beginAccess();
  sub_22BB8D9B4(v11, a4 + v14);
  swift_endAccess();
  return a4;
}

uint64_t sub_22BB8D9B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BB8DA24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BB2F330(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BB8DB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  sub_22BDB9304();
  v10 = sub_22BDBAEF4();
  sub_22BB336D0(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;

  sub_22BD4573C();
  result = sub_22BDB92F4();
  *a3 = result;
  return result;
}

uint64_t sub_22BB8DC30()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22BB8DC70()
{
  v2 = *(v0 + 8);
  v4 = *(v1 - 120);
  return *(v1 - 112);
}

uint64_t sub_22BB8DCB4()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22BB8DCE0(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

void sub_22BB8DD0C(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_22BB8DD28(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = type metadata accessor for SessionReverseClientDistributor(0);
  v19[3] = v6;
  v19[4] = &off_283F7B530;
  v19[0] = a2;
  v7 = type metadata accessor for XPCClientAvatar();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = sub_22BB8D7AC(v19, v6);
  v12 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v19[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = sub_22BB8D854(a1, *v14, a3, v10);
  sub_22BB32FA4(v19);
  return v16;
}

uint64_t sub_22BB8DE60(uint64_t a1, uint64_t a2)
{
  result = sub_22BDB41E4();
  if (!result || (result = sub_22BDB4204(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22BDB41F4();
      sub_22BDBAAC4();
      sub_22BB6914C(&qword_2814288D8, MEMORY[0x277CC5540]);
      return sub_22BDBAA84();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BB8DF68()
{
  sub_22BB2F35C();
  sub_22BB32690();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_22BB3052C();
  *v4 = v3;

  v5 = *(v3 + 8);
  v6 = sub_22BB3182C();

  return v7(v6);
}

uint64_t sub_22BB8E060()
{
  sub_22BB2F35C();
  sub_22BB32690();
  v3 = *(v2 + 32);
  v4 = *v1;
  sub_22BB3052C();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22BD75E74, 0, 0);
  }

  else
  {
    v7 = *(v4 + 8);
    v8 = sub_22BB30AE4();

    return v9(v8);
  }
}

uint64_t sub_22BB8E19C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return MEMORY[0x2822009F8](sub_22BB8DF40, 0, 0);
  }
}

char *sub_22BB8E2F8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_22BB308A8(a3, result);
  }

  return result;
}

uint64_t sub_22BB8E350()
{
  sub_22BB2F35C();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = sub_22BB31BAC(v5);
  *v6 = v7;
  v6[1] = sub_22BB3C48C;

  return sub_22BB8E3F0(v2);
}

uint64_t sub_22BB8E3F0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_22BDBA304();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BB8E4B0, 0, 0);
}

uint64_t sub_22BB8E4B0()
{
  sub_22BB2F0D4();
  v1 = *(v0 + 40);
  sub_22BDBA2F4();
  v2 = *(MEMORY[0x277D727A0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_22BBC0678;
  v4 = sub_22BB3487C(*(v0 + 40));

  return MEMORY[0x2821DADB0](v4);
}

uint64_t sub_22BB8E554(uint64_t result)
{
  *(result + 16) = sub_22BD5EBD0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB8E56C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_22BB358DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BB8E5D0()
{
  if (MEMORY[0x277D85020])
  {
    return sub_22BBE6DE0(&qword_27D8E31D8, &qword_22BDBE118);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

unint64_t sub_22BB8E600()
{
  result = qword_2814287E8;
  if (!qword_2814287E8)
  {
    sub_22BBEB2E0(&qword_27D8E6798, qword_22BDD0540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814287E8);
  }

  return result;
}

uint64_t sub_22BB8E688()
{
  if (MEMORY[0x277D85020])
  {
    return sub_22BBE6DE0(&qword_27D8E31D8, &qword_22BDBE118);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t _s17FastTaskEvaluatorVMa()
{
  result = qword_28142CB20;
  if (!qword_28142CB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FeedbackLearning.TaskEvaluator()
{
  result = qword_28142CED0;
  if (!qword_28142CED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BB8E770(uint64_t a1)
{
  v2 = sub_22BDB9C14();
  v3 = sub_22BB30444(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  v10 = v9 - v8;
  (*(v5 + 16))(v9 - v8, a1, v2);
  v11 = _s22StatementStepEvaluatorCMa();
  v28[3] = v11;
  v28[4] = &off_283F76DA8;
  v28[0] = swift_allocObject();
  v12 = _s22TaskCandidateEvaluatorCMa(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = sub_22BB8D7AC(v28, v11);
  v17 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  v20 = (v19 - v18);
  (*(v21 + 16))(v19 - v18);
  v22 = *v20;
  v23 = (v15 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning22TaskCandidateEvaluator_statementEvaluator);
  v23[3] = v11;
  v23[4] = &off_283F76DA8;
  *v23 = v22;
  (*(v5 + 32))(v15 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning22TaskCandidateEvaluator_toolbox, v10, v2);
  sub_22BB32FA4(v28);
  v24 = *(v5 + 8);
  v25 = sub_22BB31F54();
  v26(v25);
  return v15;
}

uint64_t sub_22BB8E99C()
{
  v1 = *(v0 - 128) + 8;
  v3 = *(v0 - 112);
  result = *(v0 - 104);
  v4 = *(v0 - 88);
  return result;
}

uint64_t sub_22BB8EA50()
{
  v2 = *(v0 + 1016);
  v4 = *(v0 + 960);
}

uint64_t sub_22BB8EA90(uint64_t result)
{
  *(result + 16) = sub_22BD5F064;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB8EAA8()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 168);
  return result;
}

uint64_t sub_22BB8EAB8()
{

  return sub_22BDBB4A4();
}

uint64_t sub_22BB8EAD8()
{
  result = v1[461];
  v3 = v1[403];
  v4 = *(v1[404] + 32);
  v5 = v1[448] + *(v0 + 48);
  return result;
}

uint64_t sub_22BB8EAF8()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v1[3];
  v4 = v1[4];
  sub_22BB69FEC(v1, v3);
  v5 = sub_22BB30F68();
  v6 = type metadata accessor for SessionCoordinatorAcceptPayload.Transaction(v5);
  v7 = (v2 + *(v6 + 20));
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v2 + *(v6 + 32));
  v0[5] = type metadata accessor for SessionCoordinatorResponseCallback();
  v0[6] = &off_283F80930;
  v0[2] = v10;
  v11 = *(v4 + 32);

  v16 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_22BBBD09C;
  v14 = v0[8];

  return (v16)(v14, v8, v9, v0 + 2, v3, v4);
}

uint64_t sub_22BB8ECA0()
{
  sub_22BB30F5C();
  v1 = sub_22BB35760();
  v2 = type metadata accessor for SessionCoordinatorAcceptPayload.Transaction(v1);
  sub_22BB2F0C8(v2);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = sub_22BB31BAC(v7);
  *v8 = v9;
  v8[1] = sub_22BBF90EC;
  v10 = sub_22BB37834();

  return sub_22BB8ED74(v10, v11, v12, v13, v14);
}

uint64_t sub_22BB8ED74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  return MEMORY[0x2822009F8](sub_22BB8EAF8, 0, 0);
}

uint64_t sub_22BB8ED94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a3;
  v5[11] = a5;
  v5[8] = a1;
  v5[9] = a2;
  v7 = sub_22BDB9B14();
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v9 = *(v8 + 64) + 15;
  v5[14] = swift_task_alloc();
  v10 = sub_22BDB8774();
  v5[15] = v10;
  v11 = *(v10 - 8);
  v5[16] = v11;
  v12 = *(v11 + 64) + 15;
  v5[17] = swift_task_alloc();
  v13 = sub_22BDB77D4();
  v5[18] = v13;
  v14 = *(v13 - 8);
  v5[19] = v14;
  v15 = *(v14 + 64) + 15;
  v5[20] = swift_task_alloc();
  v16 = sub_22BDB80D4();
  v5[21] = v16;
  v17 = *(v16 - 8);
  v5[22] = v17;
  v18 = *(v17 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v19 = *(sub_22BBE6DE0(&qword_27D8E6518, &unk_22BDCE420) - 8);
  v5[27] = v19;
  v5[28] = *(v19 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v20 = *(*(sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660) - 8) + 64) + 15;
  v5[31] = swift_task_alloc();
  v21 = sub_22BDB9774();
  v5[32] = v21;
  v22 = *(v21 - 8);
  v5[33] = v22;
  v23 = *(v22 + 64) + 15;
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v24 = sub_22BDB9B54();
  v5[36] = v24;
  v25 = *(v24 - 8);
  v5[37] = v25;
  v26 = *(v25 + 64) + 15;
  v5[38] = swift_task_alloc();
  v5[5] = type metadata accessor for SessionCoordinatorResponseCallback();
  v5[6] = &off_283F80930;
  v5[2] = a4;

  return MEMORY[0x2822009F8](sub_22BB8F1E4, 0, 0);
}

uint64_t sub_22BB8F12C()
{
  sub_22BB3A794();
  v1 = *v0;
  v3 = *sub_22BB69FEC(v2, v2[3]);
  v4 = sub_22BB52ED4(dword_22BDCEA30);
  v5 = sub_22BB37580(v4);
  *v5 = v6;
  v7 = sub_22BB33E88(v5);

  return v9(v7);
}

uint64_t sub_22BB8F1E4()
{
  sub_22BB38EBC();
  sub_22BDB9744();
  v7 = sub_22BB58B3C();
  v6(v7);
  sub_22BB8EC88(v5, v4, v1);
  sub_22BB69B78();
  sub_22BB36E88();
  swift_unknownObjectRelease();
  result = sub_22BB3AA28(v3, 1, v0);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_22BB30E1C();
    v10(v9);
    sub_22BDB96A4();
    v11 = sub_22BDB9744();
    v12 = sub_22BB30AE4();
    v6(v12);
    *(v2 + 56) = v11;
    sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
    sub_22BB8F3FC();
    sub_22BDB90D4();

    v13 = swift_task_alloc();
    *(v2 + 312) = v13;
    *v13 = v2;
    sub_22BB373C0(v13);

    return sub_22BD395AC();
  }

  return result;
}

void sub_22BB8F354(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 1 == a3)
  {
    sub_22BDB9B54();
    sub_22BB384BC();
    sub_22BB30B28();
  }

  else
  {
    if ((a4 >> 1) <= a3)
    {
      __break(1u);
      return;
    }

    v8 = sub_22BDB9B54();
    sub_22BB2F330(v8);
    v10 = *(v9 + 16);
    v11 = *(v9 + 72);
    v12 = sub_22BBBE718();
    v13(v12);
    v4 = sub_22BB72084();
    v7 = v8;
  }

  sub_22BB336D0(v4, v5, v6, v7);
}

unint64_t sub_22BB8F3FC()
{
  result = qword_281428810;
  if (!qword_281428810)
  {
    sub_22BBEB2E0(&qword_27D8E2F48, &unk_22BDBD950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281428810);
  }

  return result;
}

uint64_t sub_22BB8F460(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E6838, &qword_22BDCF7A8);
  v3 = sub_22BB2F0C8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB30B8C(v382 - v6);
  v405 = sub_22BDB5954();
  v7 = sub_22BB30444(v405);
  v399 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB305A8();
  sub_22BB30B8C(v11);
  v404 = sub_22BDB87F4();
  v12 = sub_22BB30444(v404);
  v403 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v16);
  sub_22BB2F39C();
  sub_22BB30B8C(v17);
  v412 = sub_22BDB8F04();
  v18 = sub_22BB30444(v412);
  v411 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v22);
  sub_22BB2F39C();
  sub_22BB30B8C(v23);
  v387 = sub_22BDB8FA4();
  v24 = sub_22BB30444(v387);
  v386 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v28);
  sub_22BB2F39C();
  sub_22BB30B8C(v29);
  v30 = sub_22BDB4C34();
  v31 = sub_22BB2F0C8(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BB305A8();
  sub_22BB30B8C(v34);
  v35 = sub_22BDB84B4();
  v36 = sub_22BB2F0C8(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22BB305A8();
  sub_22BB30B8C(v39);
  v40 = sub_22BDB5094();
  v41 = sub_22BB2F0C8(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22BB305A8();
  sub_22BB30B8C(v44);
  v391 = sub_22BDB8F44();
  v45 = sub_22BB30444(v391);
  v389 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22BB305A8();
  sub_22BB30B8C(v49);
  v393 = sub_22BDB9464();
  v50 = sub_22BB30444(v393);
  v392 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22BB305A8();
  sub_22BB30B8C(v54);
  v55 = sub_22BDB5404();
  v56 = sub_22BB2F0C8(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22BB305A8();
  sub_22BB30B8C(v59);
  v395 = sub_22BDB8D84();
  v60 = sub_22BB30444(v395);
  v394 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  sub_22BB305A8();
  sub_22BB30B8C(v64);
  v397 = sub_22BDB8DB4();
  v65 = sub_22BB30444(v397);
  v396 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v69);
  sub_22BB2F39C();
  sub_22BB30B8C(v70);
  v410 = sub_22BDB8D14();
  v71 = sub_22BB30444(v410);
  v409 = v72;
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v71);
  sub_22BB305A8();
  sub_22BB30B8C(v75);
  v76 = sub_22BDB9954();
  v77 = sub_22BB30444(v76);
  v437 = v78;
  v438 = v77;
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v77);
  sub_22BB30560();
  v435 = v81;
  MEMORY[0x28223BE20](v82);
  sub_22BB2F39C();
  v436 = v83;
  sub_22BB2F120();
  v425 = sub_22BDB4B94();
  v84 = sub_22BB30444(v425);
  v439 = v85;
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](v84);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v88);
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v89);
  sub_22BB2F39C();
  sub_22BB30B8C(v90);
  v420 = sub_22BDB8774();
  v91 = sub_22BB30444(v420);
  v419 = v92;
  v94 = *(v93 + 64);
  MEMORY[0x28223BE20](v91);
  sub_22BB305A8();
  sub_22BB30B8C(v95);
  v424 = sub_22BDB8294();
  v96 = sub_22BB30444(v424);
  v426 = v97;
  v99 = *(v98 + 64);
  MEMORY[0x28223BE20](v96);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v100);
  sub_22BB2F39C();
  v432 = v101;
  sub_22BB2F120();
  v385 = sub_22BDB5AD4();
  v102 = sub_22BB30444(v385);
  v384 = v103;
  v105 = *(v104 + 64);
  MEMORY[0x28223BE20](v102);
  sub_22BB305A8();
  sub_22BB30B8C(v106);
  v107 = sub_22BDB77D4();
  v108 = sub_22BB30444(v107);
  v422 = v109;
  v423 = v108;
  v111 = *(v110 + 64);
  MEMORY[0x28223BE20](v108);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v112);
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v113);
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v114);
  sub_22BB2F39C();
  sub_22BB30B8C(v115);
  v408 = sub_22BDB5264();
  v116 = sub_22BB30444(v408);
  v407 = v117;
  v119 = *(v118 + 64);
  MEMORY[0x28223BE20](v116);
  sub_22BB305A8();
  sub_22BB30B8C(v120);
  v121 = sub_22BDB43E4();
  v122 = sub_22BB2F0C8(v121);
  v124 = *(v123 + 64);
  MEMORY[0x28223BE20](v122);
  sub_22BB305A8();
  v431 = v125;
  sub_22BB2F120();
  v126 = sub_22BDB81A4();
  v127 = sub_22BB30444(v126);
  v429 = v128;
  v430 = v127;
  v130 = *(v129 + 64);
  MEMORY[0x28223BE20](v127);
  sub_22BB30560();
  v427 = v131;
  MEMORY[0x28223BE20](v132);
  sub_22BB2F39C();
  v428 = v133;
  sub_22BB2F120();
  v134 = sub_22BDB9564();
  v135 = sub_22BB30444(v134);
  v433 = v136;
  v434 = v135;
  v138 = *(v137 + 64);
  v139 = MEMORY[0x28223BE20](v135);
  v141 = v382 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v139);
  v143 = v382 - v142;
  v144 = sub_22BDB9624();
  v145 = sub_22BB30444(v144);
  v147 = v146;
  v149 = *(v148 + 64);
  v150 = MEMORY[0x28223BE20](v145);
  v152 = v382 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v150);
  v154 = v382 - v153;
  v155 = sub_22BDB9B14();
  v156 = sub_22BB30444(v155);
  v158 = v157;
  v160 = *(v159 + 64);
  MEMORY[0x28223BE20](v156);
  sub_22BB30574();
  v163 = v162 - v161;
  sub_22BDB9B24();
  v164 = (*(v158 + 88))(v163, v155);
  if (v164 != *MEMORY[0x277D1E858])
  {
    if (v164 == *MEMORY[0x277D1E6F8])
    {
      v173 = sub_22BB32878();
      v174(v173);
      v141 = v436;
      v155 = v437;
      v175 = v163;
      v163 = v438;
      v437[4](v436, v175, v438);
      sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
      v176 = sub_22BB6BD9C();
      sub_22BB30444(v176);
      v178 = v177;
      v180 = *(v179 + 72);
      sub_22BB30A14();
      v172 = swift_allocObject();
      sub_22BB38F14(v172, xmmword_22BDBCBD0);
      sub_22BB3B07C();
      v181();
      sub_22BDB50B4();
      v182 = MEMORY[0x277D1C860];
LABEL_5:
      (*(v178 + 104))(v172 + v147, *v182, v176);
LABEL_6:
      (*(v155 + 8))(v141, v163);
      return v172;
    }

    if (v164 == *MEMORY[0x277D1E710])
    {
      v183 = sub_22BB32878();
      v184(v183);
      v185 = v433;
      v186 = v163;
      v187 = v434;
      (*(v433 + 32))(v143, v186, v434);
      sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
      v188 = sub_22BB6BD9C();
      sub_22BB30444(v188);
      v190 = *(v189 + 72);
      sub_22BB30A14();
      v172 = swift_allocObject();
      sub_22BB38F14(v172, xmmword_22BDBCBD0);
      v191(v141, v143, v187);
      sub_22BDB4FC4();
      v192 = *MEMORY[0x277D1C710];
      v193 = sub_22BB9286C();
      v194(v193);
      (*(v185 + 8))(v143, v187);
      return v172;
    }

    if (v164 == *MEMORY[0x277D1E7A0])
    {
      v196 = sub_22BB32878();
      v197(v196);
      v199 = v428;
      v198 = v429;
      v200 = v430;
      (*(v429 + 32))(v428, v163, v430);
      sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
      v201 = sub_22BDB5154();
      sub_22BB30444(v201);
      v203 = v202;
      v205 = *(v204 + 72);
      v206 = *(v202 + 80);
      sub_22BB38C10();
      v207 = swift_allocObject();
      *(v207 + 16) = xmmword_22BDBCBD0;
      (*(v198 + 16))(v427, v199, v200);
      sub_22BDB8F24();
      sub_22BDB4F74();
      (*(v203 + 104))(v207 + v163, *MEMORY[0x277D1C690], v201);
      v172 = v207;
      (*(v198 + 8))(v199, v200);
      return v172;
    }

    if (v164 == *MEMORY[0x277D1E718])
    {
      v208 = sub_22BB32878();
      v209(v208);
      v210 = v426;
      v211 = v424;
      (*(v426 + 32))(v432, v163, v424);
      v212 = v416;
      sub_22BDB63B4();
      v213 = sub_22BDB77C4();
      v214 = sub_22BDBB104();
      if (sub_22BB374D8(v214))
      {
        v215 = sub_22BB37F30();
        sub_22BB360F0(v215);
        sub_22BB53E50(&dword_22BB2C000, v216, v217, "XPCClientAvatar criticalError");
        sub_22BB35600();
      }

      sub_22BB3953C();
      v218(v212);
      v158 = *(v421 + OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_instrumentationSender + 24);
      sub_22BB69FEC((v421 + OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_instrumentationSender), v158);
      sub_22BDB9C64();
      v219 = *(v210 + 16);
      v155 = v432;
      (v219)(v417, v432, v211);
      v220 = sub_22BDBAC14();
      v221 = v418;
      *v418 = v220;
      v221[1] = v222;
      (*(v419 + 104))(v221, *MEMORY[0x277D1DEB0], v420);
      v163 = sub_22BDB9C74();
      sub_22BDB81B4();

      sub_22BB69BC8();
      sub_22BB927BC(v223, v224);
      v225 = sub_22BDB8C24();
      v226 = sub_22BBC20A8();
      if (!v226)
      {

LABEL_31:
        sub_22BB69BC8();
        sub_22BB927BC(v251, v252);
        swift_allocError();
        (v219)(v253, v432, v211);
        v254 = v415;
        sub_22BDB4BA4();
        sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
        v255 = sub_22BDB5154();
        sub_22BB30444(v255);
        v257 = v256;
        v259 = *(v258 + 72);
        v260 = *(v256 + 80);
        sub_22BB38C10();
        v261 = swift_allocObject();
        *(v261 + 16) = xmmword_22BDBCBD0;
        v262 = v439;
        v263 = v425;
        (*(v439 + 16))(v414, v254, v425);
        v172 = v261;
        sub_22BDB4F84();
        (*(v257 + 104))(v261 + v163, *MEMORY[0x277D1C888], v255);
        (*(v262 + 8))(v254, v263);
        (*(v426 + 8))(v432, v211);
        return v172;
      }

      v227 = v226;
      v437 = v219;
      v438 = v210 + 16;
      v440 = MEMORY[0x277D84F90];
      sub_22BD28628();
      if ((v227 & 0x8000000000000000) == 0)
      {
        v163 = 0;
        v228 = v440;
        v229 = v425;
        v230 = v413;
        do
        {
          if ((v225 & 0xC000000000000001) != 0)
          {
            MEMORY[0x2318A5340](v163, v225);
          }

          else
          {
            v231 = *(v225 + 8 * v163 + 32);
          }

          sub_22BDB4BA4();
          v440 = v228;
          v232 = *(v228 + 16);
          if (v232 >= *(v228 + 24) >> 1)
          {
            sub_22BD28628();
            v229 = v425;
            v228 = v440;
          }

          ++v163;
          *(v228 + 16) = v232 + 1;
          (*(v439 + 32))(v228 + ((*(v439 + 80) + 32) & ~*(v439 + 80)) + *(v439 + 72) * v232, v230, v229);
        }

        while (v227 != v163);

        v211 = v424;
        v219 = v437;
        goto LABEL_31;
      }

      __break(1u);
LABEL_62:
      if (v164 == *MEMORY[0x277D1E868])
      {
        sub_22BDB63B4();
        v370 = sub_22BDB77C4();
        v371 = sub_22BDBB104();
        if (sub_22BB374D8(v371))
        {
          v372 = sub_22BB37F30();
          sub_22BB360F0(v372);
          sub_22BB53E50(&dword_22BB2C000, v373, v374, "XPCClientAvatar terminate");
          sub_22BB35600();
        }

        sub_22BB3953C();
        v375(v382[0]);
        sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
        v376 = sub_22BB6BD9C();
        sub_22BB30444(v376);
        v378 = *(v377 + 72);
        sub_22BB30A14();
        v172 = swift_allocObject();
        *(v172 + 16) = xmmword_22BDBCBD0;
        sub_22BDB5144();
        v369 = MEMORY[0x277D1C8C0];
        goto LABEL_66;
      }

      (*(v158 + 8))(v163, v155);
      return MEMORY[0x277D84F90];
    }

    if (v164 == *MEMORY[0x277D1E830])
    {
      v233 = sub_22BB32878();
      v234(v233);
      sub_22BB31CDC(&v441);
      sub_22BB3712C();
      sub_22BB36AD4();
      v235();
      sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
      v236 = sub_22BB6BD9C();
      sub_22BB30444(v236);
      v238 = v237;
      v240 = *(v239 + 72);
      sub_22BB30A14();
      v241 = swift_allocObject();
      sub_22BB38F14(v241, xmmword_22BDBCBD0);
      sub_22BB3B07C();
      v242();
      v172 = v241;
      sub_22BDB5964();
      v243 = MEMORY[0x277D1C850];
      goto LABEL_27;
    }

    if (v164 == *MEMORY[0x277D1E790])
    {
      sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
      v244 = sub_22BDB5154();
      sub_22BB30444(v244);
      v246 = v245;
      v248 = *(v247 + 72);
      v249 = (*(v245 + 80) + 32) & ~*(v245 + 80);
      v250 = swift_allocObject();
      *(v250 + 16) = xmmword_22BDBCBD0;
      sub_22BDB4FD4();
      (*(v246 + 104))(v250 + v249, *MEMORY[0x277D1C720], v244);
      (*(v158 + 8))(v163, v155);
      return v250;
    }

    if (v164 == *MEMORY[0x277D1E7A8])
    {
      v264 = sub_22BB32878();
      v265(v264);
      sub_22BB5430C(&v439);
      sub_22BB39284();
      sub_22BB3AB44();
      v266();
      sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
      v267 = sub_22BB6BD9C();
      sub_22BB30444(v267);
      v269 = v268;
      v271 = *(v270 + 72);
      v272 = *(v268 + 80);
      sub_22BB38C10();
      v172 = swift_allocObject();
      *(v172 + 16) = xmmword_22BDBCBD0;
      sub_22BDB8D04();
      sub_22BDB4CA4();
      v273 = MEMORY[0x277D1C750];
    }

    else
    {
      if (v164 == *MEMORY[0x277D1E820])
      {
        v274 = sub_22BB32878();
        v275(v274);
        sub_22BB31CDC(&v436);
        sub_22BB3712C();
        sub_22BB36AD4();
        v276();
        v147 = v406;
        sub_22BDB63B4();
        v277 = sub_22BDB77C4();
        v278 = sub_22BDBB104();
        if (sub_22BB374D8(v278))
        {
          v279 = sub_22BB37F30();
          sub_22BB360F0(v279);
          sub_22BB53E50(&dword_22BB2C000, v280, v281, "XPCClientAvatar systemResponseGenerated");
          sub_22BB35600();
        }

        sub_22BB3953C();
        v282(v147);
        sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
        v176 = sub_22BB6BD9C();
        sub_22BB30444(v176);
        v178 = v283;
        v285 = *(v284 + 72);
        sub_22BB30A14();
        v172 = swift_allocObject();
        sub_22BB38F14(v172, xmmword_22BDBCBD0);
        sub_22BB3B07C();
        v286();
        v182 = MEMORY[0x277D1C6E0];
        goto LABEL_5;
      }

      if (v164 == *MEMORY[0x277D1E798])
      {
        v287 = sub_22BB32878();
        v288(v287);
        v289 = v403;
        v290 = *(v403 + 32);
        v291 = v402;
        sub_22BB3AB44();
        v292();
        (*(v289 + 16))(v400, v291, v155);
        v293 = v401;
        sub_22BDB5944();
        v294 = v405;
        if (sub_22BB3AA28(v293, 1, v405) != 1)
        {
          sub_22BB5430C(&v427);
          v302 = v398;
          v303(v398, v293, v294);
          sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
          v304 = sub_22BB6BD9C();
          sub_22BB30444(v304);
          v306 = *(v305 + 72);
          sub_22BB30A14();
          v172 = swift_allocObject();
          *(v172 + 16) = xmmword_22BDBCBD0;
          (*(v141 + 2))(v172 + v147, v302, v294);
          v307 = *MEMORY[0x277D1C6C8];
          v308 = sub_22BB9286C();
          v309(v308);
          (*(v141 + 1))(v302, v294);
          (*(v289 + 8))(v291, v155);
          return v172;
        }

        sub_22BB58728(v293, &qword_27D8E6838, &qword_22BDCF7A8);
        (*(v289 + 8))(v291, v155);
        return MEMORY[0x277D84F90];
      }

      if (v164 == *MEMORY[0x277D1E7C8])
      {
        v295 = sub_22BB32878();
        v296(v295);
        sub_22BB31CDC(&v424);
        sub_22BB3712C();
        sub_22BB36AD4();
        v297();
        sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
        v176 = sub_22BB6BD9C();
        sub_22BB30444(v176);
        v178 = v298;
        v300 = *(v299 + 72);
        sub_22BB30A14();
        v172 = swift_allocObject();
        sub_22BB38F14(v172, xmmword_22BDBCBD0);
        sub_22BB3B07C();
        v301();
        sub_22BDB5074();
        v182 = MEMORY[0x277D1C778];
        goto LABEL_5;
      }

      if (v164 != *MEMORY[0x277D1E7C0])
      {
        if (v164 == *MEMORY[0x277D1E848])
        {
          v317 = sub_22BB32878();
          v318(v317);
          v319 = v392;
          v320 = *(v392 + 32);
          v321 = sub_22BB39284();
          v322 = v393;
          v323(v321);
          sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
          v324 = sub_22BB6BD9C();
          sub_22BB30444(v324);
          v326 = v325;
          v328 = *(v327 + 72);
          v329 = sub_22BB3A4AC();
          *(v329 + 16) = xmmword_22BDBCBD0;
          v330 = sub_22BDB9444();
          v332 = v331;
          v333 = sub_22BDB9454();
          v334 = v330;
          v172 = v329;
          MEMORY[0x23189F090](v334, v332, v333);
          (*(v326 + 104))(v329 + v155, *MEMORY[0x277D1C878], v324);
          (*(v319 + 8))(a1, v322);
          return v172;
        }

        if (v164 != *MEMORY[0x277D1E800])
        {
          if (v164 != *MEMORY[0x277D1E808])
          {
            if (v164 == *MEMORY[0x277D1E828])
            {
              v353 = sub_22BB32878();
              v354(v353);
              (*(v384 + 32))(v383, v163, v385);
              sub_22BDB63B4();
              v355 = sub_22BDB77C4();
              v356 = sub_22BDBB104();
              if (sub_22BB374D8(v356))
              {
                v357 = sub_22BB37F30();
                sub_22BB360F0(v357);
                sub_22BB53E50(&dword_22BB2C000, v358, v359, "XPCClientAvatar intermediateSystemResponse");
                sub_22BB35600();
              }

              sub_22BB3953C();
              v360(v382[1]);
              sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
              v176 = sub_22BB6BD9C();
              sub_22BB30444(v176);
              v178 = v361;
              v363 = *(v362 + 72);
              sub_22BB30A14();
              v172 = swift_allocObject();
              *(v172 + 16) = xmmword_22BDBCBD0;
              v155 = v384;
              v364 = *(v384 + 16);
              v141 = v383;
              sub_22BB36AD4();
              v365();
              v182 = MEMORY[0x277D1C868];
              goto LABEL_5;
            }

            if (v164 == *MEMORY[0x277D1E860])
            {
              sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
              v366 = sub_22BB6BD9C();
              sub_22BB30444(v366);
              v368 = *(v367 + 72);
              sub_22BB30A14();
              v172 = swift_allocObject();
              *(v172 + 16) = xmmword_22BDBCBD0;
              sub_22BDB5134();
              v369 = MEMORY[0x277D1C8B8];
LABEL_66:
              v379 = *v369;
              v380 = sub_22BB9286C();
              v381(v380);
              return v172;
            }

            goto LABEL_62;
          }

          v346 = sub_22BB32878();
          v347(v346);
          sub_22BB31CDC(&v409);
          sub_22BB3712C();
          sub_22BB36AD4();
          v348();
          sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
          v236 = sub_22BB6BD9C();
          sub_22BB30444(v236);
          v238 = v349;
          v351 = *(v350 + 72);
          sub_22BB30A14();
          v241 = swift_allocObject();
          sub_22BB38F14(v241, xmmword_22BDBCBD0);
          sub_22BB3B07C();
          v352();
          v172 = v241;
          sub_22BDB5454();
          v243 = MEMORY[0x277D1C718];
LABEL_27:
          (*(v238 + 104))(v241 + v147, *v243, v236);
          goto LABEL_6;
        }

        v335 = sub_22BB32878();
        v336(v335);
        sub_22BB5430C(&v411);
        sub_22BB39284();
        sub_22BB3AB44();
        v337();
        sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
        v338 = sub_22BDB5154();
        sub_22BB30444(v338);
        v340 = v339;
        v342 = *(v341 + 72);
        sub_22BB30A14();
        v343 = swift_allocObject();
        *(v343 + 16) = xmmword_22BDBCBD0;
        sub_22BDB8F24();
        v344 = v390;
        sub_22BDB8F34();
        sub_22BD80568(v344, v388);
        sub_22BDB8F14();
        sub_22BDB50A4();
        v345 = v338;
        v172 = v343;
        (*(v340 + 104))(v343 + v147, *MEMORY[0x277D1C848], v345);
LABEL_35:
        (*(v141 + 1))(a1, v155);
        return v172;
      }

      v310 = sub_22BB32878();
      v311(v310);
      sub_22BB5430C(&v420);
      sub_22BB39284();
      sub_22BB3AB44();
      v312();
      sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
      v267 = sub_22BB6BD9C();
      sub_22BB30444(v267);
      v269 = v313;
      v315 = *(v314 + 72);
      v316 = *(v313 + 80);
      sub_22BB38C10();
      v172 = swift_allocObject();
      *(v172 + 16) = xmmword_22BDBCBD0;
      sub_22BDB8D44();
      sub_22BDB8D74();
      sub_22BDB5034();
      v273 = MEMORY[0x277D1C770];
    }

    (*(v269 + 104))(v172 + v163, *v273, v267);
    goto LABEL_35;
  }

  v165 = sub_22BB32878();
  v166(v165);
  (*(v147 + 32))(v154, v163, v144);
  sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
  v167 = sub_22BB6BD9C();
  sub_22BB30444(v167);
  v169 = v168;
  v171 = *(v170 + 72);
  v172 = sub_22BB3A4AC();
  *(v172 + 16) = xmmword_22BDBCBD0;
  (*(v147 + 16))(v152, v154, v144);
  sub_22BDB5104();
  (*(v169 + 104))(v172 + v155, *MEMORY[0x277D1C890], v167);
  (*(v147 + 8))(v154, v144);
  return v172;
}

uint64_t sub_22BB91D64(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  sub_22BB31B20();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22BB91D90()
{
  sub_22BB2F35C();
  v1 = *(v0[3] + OBJC_IVAR____TtC23IntelligenceFlowRuntime31SessionReverseClientDistributor_switchboard);
  swift_task_alloc();
  sub_22BB30B34();
  v0[4] = v2;
  *v2 = v3;
  v2[1] = sub_22BB98218;
  v4 = v0[2];

  return sub_22BB91E40();
}

uint64_t sub_22BB91E40()
{
  sub_22BB2F35C();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = sub_22BBE6DE0(&qword_27D8E67E8, &qword_22BDCF4B0);
  sub_22BB2F0C8(v4);
  v6 = *(v5 + 64);
  v1[25] = sub_22BB30ACC();
  v7 = type metadata accessor for SessionSwitchboard.SessionInfo();
  v1[26] = v7;
  sub_22BB2F0C8(v7);
  v9 = *(v8 + 64);
  v1[27] = sub_22BB30ACC();
  if (qword_28142A928 != -1)
  {
    sub_22BB36324();
  }

  v1[28] = qword_28142F3F0;
  type metadata accessor for SessionControlActor();
  sub_22BB32860();
  v1[29] = sub_22BB3CC60(v10, v11);

  sub_22BB30AE4();
  v13 = sub_22BDBAE44();
  v1[30] = v13;
  v1[31] = v12;

  return MEMORY[0x2822009F8](sub_22BB91F78, v13, v12);
}

uint64_t sub_22BB91F78()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);
  sub_22BB89970();
  swift_beginAccess();
  sub_22BB52A38(v4, *(v3 + 16));
  sub_22BB8ACC0();
  if (sub_22BB3AA28(v5, v6, v7) == 1)
  {
    v8 = *(v0 + 224);
    sub_22BB58728(*(v0 + 200), &qword_27D8E67E8, &qword_22BDCF4B0);
    swift_endAccess();

    sub_22BBB7088();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
LABEL_9:
    v24 = *(v0 + 216);
    v25 = *(v0 + 200);

    sub_22BB2F09C();

    return v26();
  }

  v10 = *(v0 + 216);
  v11 = *(v0 + 192);
  sub_22BB31E54();
  sub_22BB38958();
  swift_endAccess();
  sub_22BB89970();
  swift_beginAccess();
  if (!*(*(v11 + 24) + 16) || (v12 = *(v0 + 216), v13 = sub_22BB3CB98(), (v14 & 1) == 0))
  {
    v21 = *(v0 + 216);
    v22 = *(v0 + 224);
    swift_endAccess();

    sub_22BBB7088();
    swift_allocError();
    *v23 = 2;
    swift_willThrow();
    sub_22BB33EB8();
    sub_22BB34698();
    goto LABEL_9;
  }

  v15 = *(v0 + 232);
  v16 = *(v0 + 216);
  sub_22BB3711C(v13);
  v28 = *(v0 + 184);
  sub_22BB37A5C(v17);
  swift_endAccess();
  *(v0 + 256) = qword_28142F3F0;
  v18 = swift_task_alloc();
  *(v0 + 264) = v18;
  *(v18 + 16) = v16;
  *(v18 + 24) = v28;
  *(v18 + 40) = v0 + 16;
  sub_22BB92898(v0 + 16, v0 + 72);
  v19 = *(MEMORY[0x277D859B8] + 4);

  v20 = swift_task_alloc();
  *(v0 + 272) = v20;
  *v20 = v0;
  v20[1] = sub_22BBCC184;

  return MEMORY[0x282200740]();
}

uint64_t sub_22BB92234()
{
  result = v0[28];
  v2 = v0[26];
  v3 = *(v0[27] + 88);
  return result;
}

uint64_t sub_22BB92244()
{

  return sub_22BDBB8A4();
}

void sub_22BB92270()
{

  JUMPOUT(0x2318A4C40);
}

uint64_t sub_22BB92298()
{
  v2 = *(v0 + 224);
  v3 = *(*(v0 + 104) + 168);

  return swift_task_alloc();
}

uint64_t sub_22BB922B8(uint64_t a1)
{

  return sub_22BB3AA28(v1, 1, a1);
}

uint64_t sub_22BB922D8(uint64_t result)
{
  *(result + 16) = sub_22BB89C78;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB9234C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SessionCoordinatorResponseCallback();
  v4[6] = &off_283F80930;
  v4[7] = v6;
  v4[5] = v6;
  v4[2] = a4;

  v7 = swift_task_alloc();
  v4[8] = v7;
  *v7 = v4;
  v7[1] = sub_22BBADD7C;

  return sub_22BB92430();
}

uint64_t sub_22BB92430()
{
  sub_22BB2F0D4();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v5 = sub_22BDB8774();
  v1[10] = v5;
  sub_22BB30434(v5);
  v1[11] = v6;
  v8 = *(v7 + 64);
  v1[12] = sub_22BB30ACC();
  v9 = sub_22BDB4354();
  sub_22BB2F0C8(v9);
  v11 = *(v10 + 64);
  v1[13] = sub_22BB30ACC();
  v12 = sub_22BDB9D54();
  v1[14] = v12;
  sub_22BB30434(v12);
  v1[15] = v13;
  v15 = *(v14 + 64);
  v1[16] = sub_22BB30ACC();
  v16 = sub_22BDB5894();
  v1[17] = v16;
  sub_22BB30434(v16);
  v1[18] = v17;
  v19 = *(v18 + 64);
  v1[19] = sub_22BB30ACC();
  v20 = sub_22BDB5154();
  v1[20] = v20;
  sub_22BB30434(v20);
  v1[21] = v21;
  v23 = *(v22 + 64);
  v1[22] = sub_22BB3307C();
  v1[23] = swift_task_alloc();
  v24 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v24);
  v26 = *(v25 + 64);
  v1[24] = sub_22BB3307C();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v27 = sub_22BDB43E4();
  v1[27] = v27;
  sub_22BB30434(v27);
  v1[28] = v28;
  v30 = *(v29 + 64);
  v1[29] = sub_22BB3307C();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v31 = sub_22BDB77D4();
  v1[33] = v31;
  sub_22BB30434(v31);
  v1[34] = v32;
  v34 = *(v33 + 64);
  v1[35] = sub_22BB3307C();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v35 = sub_22BDB9B54();
  v1[40] = v35;
  sub_22BB30434(v35);
  v1[41] = v36;
  v38 = *(v37 + 64);
  v1[42] = sub_22BB3307C();
  v1[43] = swift_task_alloc();
  v39 = sub_22BDB9774();
  v1[44] = v39;
  sub_22BB30434(v39);
  v1[45] = v40;
  v42 = *(v41 + 64);
  v1[46] = sub_22BB30ACC();
  v43 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v43, v44, v45);
}

uint64_t sub_22BB927BC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22BB9287C()
{

  sub_22BD28158(0, v0, 0);
}

uint64_t sub_22BB928D0()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    v9 = *(v3 + 40);
    v10 = *(v3 + 48);
    v11 = sub_22BD7C168;
  }

  else
  {
    *(v3 + 97) = *(v3 + 96);
    v9 = *(v3 + 40);
    v10 = *(v3 + 48);
    v11 = sub_22BBCBD70;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

unint64_t sub_22BB929E0@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  if (*(a2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = sub_22BDB9B54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v9 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v4;

  return v8(a3, v9, v6);
}

uint64_t sub_22BB92AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = v12[78];
  sub_22BB2F164(v12[80]);
  if (v15)
  {
    v16 = v12[86];
    v17 = v12[85];
    v18 = v12[77];
    v19 = v12[43];
    (*(v12[82] + 8))(v12[83], v12[81]);
    sub_22BDB63E4();
    sub_22BB32CE8();
    v20 = sub_22BB2F324();
    sub_22BB335C0(v20, v21);
    sub_22BB690EC(v19, (v12 + 13));
    v22 = sub_22BDB77C4();
    sub_22BDBB134();
    sub_22BB93938();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v12[86];
    v26 = v12[85];
    v27 = v12[77];
    v28 = v12[75];
    v29 = v12[74];
    if (v24)
    {
      sub_22BB3B778();
      sub_22BD62464();
      *v25 = 136446466;
      sub_22BDB5624();
      v215 = v27;
      sub_22BB3093C();
      sub_22BB34648();
      v30 = sub_22BB3A84C();
      sub_22BB32EE0(v30, v31, v32);
      sub_22BB3935C();

      *(v25 + 4) = v26;
      *(v25 + 12) = 2082;
      v33 = v12[17];
      sub_22BB69FEC(v12 + 13, v12[16]);
      v34 = *(v33 + 8);
      v35 = sub_22BB371E4();
      v12[33] = v36(v35, v33);
      v12[34] = v37;
      sub_22BBADE68();
      v38 = sub_22BDBB684();

      sub_22BB32FA4(v12 + 13);
      v39 = sub_22BB3CB04();
      sub_22BB32EE0(v39, v40, v41);
      sub_22BB3935C();

      *(v25 + 14) = v38;
      sub_22BD63F58(&dword_22BB2C000, v22, v13, "[SessionCoordinator %{public}s] %{public}s message loop closed.");
      sub_22BD63178();
      sub_22BD62140();
      sub_22BB3A3D8();

      (*(v28 + 8))(v215, v29);
      sub_22BB34648();
    }

    else
    {

      sub_22BB34648();
      (*(v28 + 8))(v27, v29);
      sub_22BB6BE18();
      sub_22BB34648();
      sub_22BB32FA4(v12 + 13);
    }

    v69 = v12[86];
    v70 = v12[85];
    v71 = v12[84];
    v72 = v12[83];
    v73 = v12[80];
    v74 = v12[79];
    v75 = v12[77];
    v76 = v12[76];
    v77 = v12[73];
    v78 = v12[72];
    v193 = v12[71];
    v194 = v12[69];
    v195 = v12[68];
    v196 = v12[67];
    v198 = v12[66];
    v200 = v12[65];
    v201 = v12[62];
    v203 = v12[61];
    v205 = v12[60];
    v207 = v12[59];
    v209 = v12[58];
    v212 = v12[55];
    v214 = v12[52];
    v217 = v12[49];
    v220 = v12[48];

    sub_22BB2F09C();
    sub_22BD6421C();

    return v79();
  }

  else
  {
    v42 = v12[79];
    v43 = sub_22BB30AE4();
    sub_22BB3A518(v43, v44);
    sub_22BB37494();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v46 = v12[43];
      (*(v12[54] + 32))(v12[55], v12[79], v12[53]);
      sub_22BB690EC(v46, (v12 + 18));
      sub_22BBE6DE0(&qword_27D8E64C0, &qword_22BDCE3C8);
      sub_22BB30F68();
      type metadata accessor for XPCClientAvatar();
      if (swift_dynamicCast())
      {
        v47 = v12[68];
        v48 = v12[66];
        v49 = v12[63];
        v50 = v12[64];
        v51 = v12[59];
        v52 = v12[45];
        v12[100] = v12[41];
        sub_22BDB6104();
        sub_22BDB6104();
        sub_22BDB7744();
        sub_22BDB7704();
        v53 = *(v50 + 8);
        v12[101] = v53;
        sub_22BD63D50();
        v12[102] = v54;
        v55 = sub_22BB345A8();
        v53(v55);

        v56 = sub_22BDB7744();
        v57 = sub_22BDBB1D4();

        if (sub_22BDBB244())
        {
          v58 = v12[87];
          v216 = v12[59];
          v59 = v12[45];
          sub_22BB3B778();
          sub_22BD62BD8();
          *v57 = 136315394;
          v60 = sub_22BDB5624();

          v61 = sub_22BB3A19C();
          sub_22BB32EE0(v61, v62, v63);
          sub_22BB36C3C();

          *(v57 + 4) = v60;
          *(v57 + 12) = 2080;
          v12[35] = sub_22BDB8404();
          v12[36] = v64;
          sub_22BBADE68();
          sub_22BDBB684();
          sub_22BC54D78();

          v65 = sub_22BB3A19C();
          sub_22BB32EE0(v65, v66, v67);
          sub_22BB36C3C();

          *(v57 + 14) = v12 + 35;
          v68 = sub_22BDB7714();
          _os_signpost_emit_with_name_impl(&dword_22BB2C000, v56, v57, v68, "StatusUpdateAccept", "[SessionCoordinator %s] - Part: %s - Accept Start", v57, 0x16u);
          sub_22BBBE764();
          sub_22BB2F194();
          sub_22BB32238();
        }

        else
        {
          v178 = v12[45];
        }

        v179 = v12[66];
        v180 = v12[63];
        v181 = v12[61];
        v182 = v12[59];
        v183 = v12[56];
        v184 = v12[57];
        sub_22BB97BA8();
        v185 = sub_22BB393C4();
        v186(v185);
        v187 = sub_22BDB77A4();
        sub_22BB34ED4(v187);
        sub_22BB3A190();
        v12[103] = sub_22BDB7794();
        v12[104] = *(v184 + 8);
        v12[105] = (v184 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v188 = sub_22BB32E04();
        v189(v188);
        v190 = sub_22BB2F0E0();
        v53(v190);
        v191 = swift_task_alloc();
        v12[106] = v191;
        *v191 = v12;
        v191[1] = sub_22BD595B0;
        sub_22BB3487C(v12[55]);
        sub_22BD6421C();

        return sub_22BD7FED8();
      }

      else
      {
        (*(v12[54] + 8))(v12[55], v12[53]);
        sub_22BD6484C();
        v125 = *(MEMORY[0x277D85798] + 4);
        swift_task_alloc();
        sub_22BB30B34();
        v12[91] = v126;
        *v126 = v127;
        sub_22BB6BBD8();
        sub_22BD6421C();

        return MEMORY[0x2822003E8](v128, v129, v130, v131, v132, v133, v134, v135, a9, a10, a11, a12);
      }
    }

    else
    {
      v82 = v12[73];
      v83 = v12[72];
      v221 = v12[71];
      v84 = v12[69];
      v85 = v12[68];
      v87 = v12[63];
      v86 = v12[64];
      v88 = v12[62];
      v89 = v12[45];
      v90 = v12[43];
      sub_22BD62A4C();
      sub_22BB3A518(v91, v82);
      sub_22BDB6104();
      sub_22BDB6104();
      sub_22BDB7744();
      sub_22BDB7704();
      v12[92] = *(v86 + 8);
      v12[93] = (v86 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v92 = sub_22BB8AB74();
      v213 = v93;
      v93(v92);
      sub_22BB335C0(v82, v83);
      sub_22BB690EC(v90, (v12 + 23));
      sub_22BB335C0(v82, v221);

      v94 = sub_22BDB7744();
      sub_22BDBB1D4();
      if (sub_22BD646BC())
      {
        v95 = v12[87];
        v96 = v12[72];
        v97 = v12[70];
        v210 = v12[71];
        v218 = v12[62];
        v98 = v12[45];
        v222 = v82;
        v99 = swift_slowAlloc();
        swift_slowAlloc();
        *v99 = 136315906;
        v100 = sub_22BDB5624();

        v101 = sub_22BB313A8();
        sub_22BB32EE0(v101, v102, v103);
        sub_22BB313B4();

        *(v99 + 4) = v100;
        *(v99 + 12) = 2080;
        v12[42] = *(v96 + *(v97 + 24));
        sub_22BB70194();
        v104 = sub_22BDBB684();
        sub_22BB34648();
        v105 = sub_22BB313A8();
        sub_22BB32EE0(v105, v106, v107);
        sub_22BB313B4();

        *(v99 + 14) = v104;
        *(v99 + 22) = 2080;
        v108 = v12[27];
        sub_22BB69FEC(v12 + 23, v12[26]);
        v109 = *(v108 + 8);
        v110 = sub_22BB313B4();
        v12[37] = v111(v110, v108);
        v12[38] = v112;
        sub_22BBADE68();
        sub_22BDBB684();
        sub_22BD6345C();

        sub_22BB32FA4(v12 + 23);
        v113 = sub_22BB8AB74();
        v116 = sub_22BB32EE0(v113, v114, v115);

        *(v99 + 24) = v116;
        *(v99 + 32) = 2080;
        v117 = (v210 + *(v97 + 28));
        v119 = *v117;
        v118 = v117[1];
        v12[39] = v119;
        v12[40] = v118;
        sub_22BDBB684();
        sub_22BD63450();
        sub_22BB34648();
        v120 = sub_22BB345A8();
        v123 = sub_22BB32EE0(v120, v121, v122);

        *(v99 + 34) = v123;
        v124 = sub_22BDB7714();
        _os_signpost_emit_with_name_impl(&dword_22BB2C000, v94, v222, v124, "Accept", "[SessionCoordinator %s] - Span %s - Part: %s (as %s) - Accept Start", v99, 0x2Au);
        sub_22BD62500();
        swift_arrayDestroy();
        sub_22BB30458();
        sub_22BB35600();
      }

      else
      {
        v136 = v12[72];
        v137 = v12[71];
        v138 = v12[45];

        sub_22BB34648();
        sub_22BB2F324();
        sub_22BB34648();
        sub_22BB32FA4(v12 + 23);
      }

      v208 = v12[89];
      v211 = v12[88];
      v219 = v12[73];
      v139 = v12[70];
      v140 = v12[69];
      v142 = v12[62];
      v141 = v12[63];
      v143 = v12[61];
      v144 = v12[56];
      v145 = v12[57];
      v146 = v12[51];
      v204 = v12[50];
      v206 = v12[52];
      v223 = v12[45];
      v147 = v12[43];
      v202 = v223 + v12[90];
      v148 = *(v145 + 16);
      sub_22BD62218();
      v149();
      v150 = sub_22BDB77A4();
      sub_22BB34ED4(v150);
      sub_22BB3A190();
      v12[94] = sub_22BDB7794();
      v12[95] = *(v145 + 8);
      v12[96] = (v145 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v151 = sub_22BB38518();
      v152(v151);
      v153 = sub_22BB31B54();
      v213(v153);
      v12[97] = sub_22BDB8C74();
      v199 = *(v219 + *(v139 + 24));
      v154 = *(v147 + 24);
      v155 = *(v147 + 32);
      v156 = sub_22BB30428();
      sub_22BB69FEC(v156, v157);
      v158 = *(v155 + 8);
      v159 = sub_22BB31B54();
      v160(v159);
      v161 = (v219 + *(v139 + 28));
      v162 = v161[1];
      v197 = *v161;
      v163 = *(v147 + 24);
      v164 = *(v147 + 32);
      v165 = sub_22BB30428();
      sub_22BB69FEC(v165, v166);
      v167 = *(v164 + 8);
      swift_bridgeObjectRetain_n();
      v168 = v167(v163, v164);
      v170 = v169;
      (*(v146 + 16))(v206, v223 + v208, v204);
      v171 = *(v202 + 8);
      v172 = type metadata accessor for SessionCoordinatorInjectionContext(0);
      sub_22BB34ED4(v172);
      sub_22BB36C3C();

      v173 = sub_22BBC3C24(v199, v168, v170, v197, v162, v206, v171);
      v12[31] = v172;
      v12[32] = sub_22BB3B194(&qword_281428EA8, type metadata accessor for SessionCoordinatorInjectionContext);
      v12[28] = v173;
      sub_22BDB8C84();
      v174 = swift_task_alloc();
      v12[98] = v174;
      v174[2] = v219;
      v174[3] = v223;
      v174[4] = v147;
      v175 = *(MEMORY[0x277D85A70] + 4);
      v176 = swift_task_alloc();
      v12[99] = v176;
      *v176 = v12;
      v176[1] = sub_22BBBCDF4;
      sub_22BD6421C();

      return MEMORY[0x282200908]();
    }
  }
}

void sub_22BB93884()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_22BD7DED4(v1);
    *v0 = v3;
  }
}

unint64_t sub_22BB938EC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_22BB93908()
{
  result = sub_22BB3AA28(v0, 1, v1);
  v4 = v2[476];
  v5 = v2[456];
  v6 = v2[414];
  return result;
}

void sub_22BB93944()
{
  v3 = v1[440];
  v4 = v1[437];
  v5 = v1[436];
  *(v2 - 176) = v0;
  *(v2 - 168) = v5;
  v6 = v1[312];
}

uint64_t sub_22BB9395C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  sub_22BB72B1C();
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v11;
  v14 = v12;
  sub_22BBE6DE0(&qword_27D8E68E0, &qword_22BDCFBE8);
  if ((sub_22BDBB4A4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v5;
  sub_22BB72B1C();
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_22BDBB744();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *v5;
  if (v14)
  {
    v19 = (*(v18 + 56) + 16 * v13);
    v20 = v19[1];
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_22BB97398(v13, a3, a4, a1, a2, v18);
  }
}

uint64_t sub_22BB93AB0(uint64_t a1)
{
  v2 = sub_22BDB9B14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BDB9B54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = *(a1 + 16);
  v37 = a1;
  v38 = v13;
  v35 = v8 + 8;
  v36 = v8 + 16;
  v14 = (v3 + 88);
  v15 = *MEMORY[0x277D1E710];
  v33 = *MEMORY[0x277D1E728];
  v34 = v15;
  v16 = *MEMORY[0x277D1E730];
  v31 = *MEMORY[0x277D1E790];
  v32 = v16;
  v17 = *MEMORY[0x277D1E750];
  v29 = *MEMORY[0x277D1E810];
  v30 = v17;
  v18 = (v3 + 8);
  v19 = *MEMORY[0x277D1E840];
  while (v38 != v12)
  {
    (*(v8 + 16))(v11, v37 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12++, v7);
    sub_22BDB9B24();
    (*(v8 + 8))(v11, v7);
    v20 = (*v14)(v6, v2);
    (*v18)(v6, v2);
    if (v20 == v34 || v20 == v33 || v20 == v32 || v20 == v31 || v20 == v30 || v20 == v29 || v20 == v19)
    {
      return sub_22BDB8434();
    }
  }

  return 0;
}

void sub_22BB93D5C()
{
  if (*(*v0 + 24) > v1)
  {
    v2 = *(*v0 + 24);
  }
}

uint64_t sub_22BB93D70()
{
  v2 = v0[468];
  v3 = v0[452];
  v4 = v0[404];
  v5 = v0[403];

  return sub_22BDB8F24();
}

uint64_t sub_22BB93D90()
{
  v4 = *(v0 - 240);
  result = *(v0 - 176);
  v2 = STACK[0x438];
  v3 = STACK[0x428];
  return result;
}

uint64_t SessionPersistenceManager.write(event:)(uint64_t a1)
{
  v175 = a1;
  v1 = sub_22BDB9B14();
  v2 = sub_22BB30444(v1);
  v156 = v3;
  v157 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v155 = v7 - v6;
  v8 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  v9 = sub_22BB2F0C8(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30560();
  v159 = v12;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v13);
  v162 = &v145[-v14];
  v153 = sub_22BDB9D54();
  v15 = sub_22BB30444(v153);
  v152 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BB30560();
  v151 = v19;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v20);
  v150 = &v145[-v21];
  sub_22BB30B70();
  MEMORY[0x28223BE20](v22);
  v149 = &v145[-v23];
  sub_22BB30B70();
  MEMORY[0x28223BE20](v24);
  v148 = &v145[-v25];
  v26 = sub_22BBE6DE0(&qword_27D8E6A80, &unk_22BDC0E70);
  sub_22BB2F0C8(v26);
  v28 = *(v27 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v29);
  v158 = &v145[-v30];
  v31 = sub_22BDB8E84();
  v32 = sub_22BB30444(v31);
  v161 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BB30574();
  v38 = v37 - v36;
  v39 = sub_22BDB43E4();
  v40 = sub_22BB30444(v39);
  v164 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BB30574();
  v46 = v45 - v44;
  v47 = sub_22BDB9B54();
  v48 = sub_22BB30444(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22BB30560();
  v171 = v53;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v54);
  v56 = &v145[-v55];
  v57 = sub_22BDB5664();
  v58 = sub_22BB2F0C8(v57);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22BB30574();
  v63 = v62 - v61;
  v64 = sub_22BDB77D4();
  v65 = sub_22BB30444(v64);
  v169 = v66;
  v170 = v65;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  sub_22BB30574();
  v71 = v70 - v69;
  sub_22BDB6334();
  sub_22BB35D58();
  sub_22BB6A1A8(v174, v63, v72);
  v167 = v50;
  v73 = *(v50 + 16);
  v165 = v56;
  v166 = v73;
  v172 = v47;
  v73(v56, v175, v47);
  v168 = v71;
  v74 = sub_22BDB77C4();
  v75 = sub_22BDBB104();
  v76 = os_log_type_enabled(v74, v75);
  v163 = v31;
  v154 = v46;
  if (v76)
  {
    v77 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    v176 = v147;
    *v77 = 136315394;
    v146 = v75;
    v78 = sub_22BDB5624();
    v160 = v38;
    v80 = v79;
    sub_22BB6B8A8(v63);
    v81 = sub_22BB32EE0(v78, v80, &v176);
    v82 = v39;
    v83 = v164;

    *(v77 + 4) = v81;
    *(v77 + 12) = 2080;
    v84 = v77;
    v85 = v165;
    sub_22BDB8F24();
    sub_22BB31E04();
    sub_22BBBE8A4(v86, v87);
    sub_22BDBB684();
    sub_22BB3A788();
    v88 = *(v83 + 8);
    v39 = v82;
    v38 = v160;
    v88(v46, v39);
    v89 = v85;
    v90 = v172;
    (*(v167 + 8))(v89, v172);
    v91 = sub_22BB31F54();
    v94 = sub_22BB32EE0(v91, v92, v93);

    *(v84 + 14) = v94;
    _os_log_impl(&dword_22BB2C000, v74, v146, "[SessionPersistenceManager %s] attempting to write event: %s", v84, 0x16u);
    swift_arrayDestroy();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  else
  {

    v90 = v172;
    (*(v167 + 8))(v165, v172);
    sub_22BB6B8A8(v63);
  }

  (v169)[1](v168, v170);
  v166(v171, v175, v90);
  v95 = v173;
  result = sub_22BDB8E64();
  if (!v95)
  {
    sub_22BBBE8A4(&qword_281428A70, MEMORY[0x277D1E148]);
    v97 = sub_22BDB6084();
    v171 = v98;
    v172 = v97;
    v160 = v38;
    v99 = v39;
    v100 = v148;
    sub_22BDB9B44();
    sub_22BDB9D44();
    v101 = *(v152 + 8);
    v102 = v153;
    v101(v100, v153);
    sub_22BDB4354();
    sub_22BB331C8();
    sub_22BB336D0(v103, v104, v105, v106);
    v107 = v149;
    sub_22BDB9B44();
    sub_22BDB9D14();
    v101(v107, v102);
    sub_22BB331C8();
    sub_22BB336D0(v108, v109, v110, v99);
    v111 = v150;
    sub_22BDB9B44();
    sub_22BDB9D34();
    v101(v111, v102);
    v112 = sub_22BDBB884();
    sub_22BDB9B44();
    sub_22BDB9D24();
    v113 = sub_22BB371E4();
    v101(v113, v102);
    v114 = sub_22BDBB884();
    v115 = objc_allocWithZone(MEMORY[0x277CF1378]);
    v170 = sub_22BB94830(v162, v112, v114);
    sub_22BDB9B34();
    sub_22BB331C8();
    v173 = v99;
    sub_22BB336D0(v116, v117, v118, v99);
    v119 = sub_22BDB99C4();
    v120 = 0;
    if ((v121 & 1) == 0)
    {
      v120 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
    }

    v169 = v120;
    v122 = sub_22BDB9A24();
    v167 = v123;
    v168 = v122;
    v166 = sub_22BDB9984();
    v125 = v124;
    v126 = sub_22BDB9A74();
    v128 = v127;
    v129 = sub_22BDB99F4();
    v131 = v130;
    v132 = v162;
    sub_22BDB9964();
    v133 = objc_allocWithZone(MEMORY[0x277CF1228]);
    v134 = sub_22BB948FC(v159, v169, v168, v167, v166, v125, v126, v128, v129, v131, v132);
    v135 = v154;
    sub_22BDB8F24();
    v136 = sub_22BDB4374();
    v138 = v137;
    (*(v164 + 8))(v135, v173);
    v139 = v155;
    sub_22BDB9B24();
    v140 = sub_22BDB9AE4();
    v142 = v141;
    (*(v156 + 8))(v139, v157);
    objc_allocWithZone(MEMORY[0x277CF1230]);
    v144 = v171;
    v143 = v172;
    sub_22BB352C4(v172, v171);
    sub_22BB94B00(v158, v170, v134, v136, v138, v140, v142, v143, v144);
    sub_22BB35760();
    [*(v174 + *(type metadata accessor for SessionPersistenceManager() + 20)) sendEvent_];

    sub_22BB3531C(v143, v144);
    return (*(v161 + 8))(v160, v163);
  }

  return result;
}

id sub_22BB94830(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_22BDB43E4();
  v9 = 0;
  if (sub_22BB3AA28(a1, 1, v8) != 1)
  {
    v9 = sub_22BDB43A4();
    (*(*(v8 - 8) + 8))(a1, v8);
  }

  v10 = [v4 initWithBootSessionUUID:v9 suspendingNanosecondsSinceBoot:a2 continuousNanosecondsSinceBoot:a3];

  return v10;
}

id sub_22BB948FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = sub_22BDB43E4();
  v17 = 0;
  if (sub_22BB3AA28(a1, 1, v16) != 1)
  {
    v17 = sub_22BDB43A4();
    (*(*(v16 - 8) + 8))(a1, v16);
  }

  if (a4)
  {
    v18 = sub_22BDBABE4();

    if (a6)
    {
LABEL_5:
      v19 = sub_22BDBABE4();

      goto LABEL_8;
    }
  }

  else
  {
    v18 = 0;
    if (a6)
    {
      goto LABEL_5;
    }
  }

  v19 = 0;
LABEL_8:
  if (a8)
  {
    v20 = sub_22BDBABE4();

    if (a10)
    {
LABEL_10:
      v21 = sub_22BDBABE4();

      goto LABEL_13;
    }
  }

  else
  {
    v20 = 0;
    if (a10)
    {
      goto LABEL_10;
    }
  }

  v21 = 0;
LABEL_13:
  if (sub_22BB3AA28(a11, 1, v16) == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_22BDB43A4();
    (*(*(v16 - 8) + 8))(a11, v16);
  }

  v23 = [v25 initWithSessionId:v17 spanId:a2 clientRequestId:v18 clientSessionId:v19 clientApplicationId:v20 clientGroupIdentifier:v21 requestEventId:v22];

  return v23;
}

id sub_22BB94B00(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v15 = sub_22BDB4354();
  v16 = 0;
  if (sub_22BB3AA28(a1, 1, v15) != 1)
  {
    v16 = sub_22BDB4314();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  if (a5)
  {
    v17 = sub_22BDBABE4();
  }

  else
  {
    v17 = 0;
  }

  if (a7)
  {
    v18 = sub_22BDBABE4();
  }

  else
  {
    v18 = 0;
  }

  if (a9 >> 60 == 15)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_22BDB42E4();
    sub_22BB94C90(a8, a9);
  }

  v20 = [v22 initWithAbsoluteTimestamp:v16 monotonicTimestamp:a2 identifiers:a3 eventId:v17 eventType:v18 data:v19];

  return v20;
}

uint64_t sub_22BB94C90(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22BB3531C(a1, a2);
  }

  return a1;
}

uint64_t sub_22BB94CA4(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t sub_22BB94CC8()
{
  v3 = v0[111];
  v4 = v0[110];
  v5 = v0[109];
  v6 = v0[108];
  v7 = v0[107];
  v8 = v0[106];
  v9 = v0[103];
  v10 = v0[102];
  v11 = v0[101];
  v17 = v0[100];
  v18 = v0[97];
  v19 = v0[96];
  v20 = v0[93];
  v21 = v0[90];
  v22 = v0[89];
  v23 = v0[88];
  v24 = v0[85];
  v12 = v0[79];
  *(v1 - 160) = v0[82];
  *(v1 - 152) = v12;
  v13 = v0[77];
  *(v1 - 144) = v0[78];
  *(v1 - 136) = v13;
  v14 = v0[74];
  *(v1 - 128) = v0[75];
  *(v1 - 120) = v14;
  v15 = v0[68];
  *(v1 - 112) = v0[71];
  *(v1 - 104) = v15;
}

uint64_t sub_22BB94D5C()
{
  v3 = v0[51];
  v4 = v0[48];
  v5 = v0[42];
  v6 = v0[39];
  v7 = v0[36];
  v8 = v0[35];
  v9 = v0[32];
  v10 = v0[29];
  v11 = v0[26];
  v12 = v0[23];
  v13 = v0[22];
}

uint64_t sub_22BB94DA8()
{

  return sub_22BDBAED4();
}

uint64_t sub_22BB94DC8()
{

  return sub_22BC55A68(v0, v1 - 104);
}

void sub_22BB94E08()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t sub_22BB94E5C()
{
  v2 = *(v0 + 4552);
  v3 = *(*(v1 - 144) + 3528);
  v4 = *(*(v1 - 144) + 3520);
  v5 = *(*(v1 - 144) + 3488);
  v6 = *(*(v1 - 144) + 2496) + *(*(v1 - 144) + 4448);
  return *(*(v1 - 144) + 3568);
}

void sub_22BB94EA0()
{
  v1 = v0[98];
  v2 = v0[97];
  v3 = v0[96];
  v4 = v0[92];
  v5 = v0[91];
}

uint64_t sub_22BB94EB8()
{

  return sub_22BDB81B4();
}

uint64_t sub_22BB94ED8()
{

  return swift_beginAccess();
}

uint64_t sub_22BB94F0C()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v7 = v0[8];
  v6 = v0[9];
  v9 = v0[4];
  v8 = v0[5];
  v10 = *(v0[17] + 8);
  return v0[18];
}

uint64_t sub_22BB94F70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BB95024()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = *(v1 + 136);
  v3 = *v0;
  sub_22BB3052C();
  *v4 = v3;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22BB9510C()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  sub_22BB3053C();
  *v3 = v2;
  v5 = *(v4 + 80);
  *v3 = *v1;
  *(v2 + 88) = v6;
  *(v2 + 96) = v0;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BB95210()
{
  sub_22BB34E84();
  v1 = *(v0[4] + OBJC_IVAR____TtCV23IntelligenceFlowRuntime23SessionXPCServiceServer6Server_jsonEncoder);
  v0[2] = v0[11];
  v2 = v0[12];
  sub_22BBE6DE0(&qword_27D8E6D28, &qword_22BDD0BD8);
  sub_22BB95334();
  v3 = sub_22BDB4144();
  v5 = v4;
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[7];
  if (v2)
  {
    (*(v7 + 8))(v0[9], v9);

    v10 = v0[9];

    sub_22BB3A80C();
  }

  else
  {
    v12 = v3;
    v13 = v0[3];
    (*(v7 + 8))(v0[9], v9);

    *v13 = v12;
    v13[1] = v5;

    sub_22BB360FC();
  }

  return v11();
}

unint64_t sub_22BB95334()
{
  result = qword_2814288C0;
  if (!qword_2814288C0)
  {
    sub_22BBEB2E0(&qword_27D8E6D28, &qword_22BDD0BD8);
    sub_22BB39B40(&qword_28142DD58, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814288C0);
  }

  return result;
}

uint64_t sub_22BB953F0(void *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, a1[1], a2);
}

void sub_22BB95464(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    v4 = 0;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v4 = sub_22BDB42E4();
  if (a3)
  {
LABEL_3:
    sub_22BDB4234();
  }

LABEL_5:
  v5 = sub_22BB32908();
  v8 = v6;
  v7(v5);
}

unint64_t sub_22BB954FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = ~(-1 << *(v3 + 32));
  for (i = a3 & v4; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v6 = (*(v3 + 48) + 16 * i);
    v8 = *v6;
    v9 = v6[1];
    sub_22BB3DF20();
    if (sub_22BDBABD4())
    {
      break;
    }
  }

  return i;
}

void sub_22BB955CC()
{
  v1 = *(*(v0 - 144) + 3184);
  v2 = *(*(v0 - 144) + 3176);
  v3 = *(*(v0 - 144) + 3168);
}

uint64_t sub_22BB955E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *v4;
  v10 = *sub_22BB69FEC(a4, a4[3]);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22BBF90EC;

  return sub_22BB9234C(a1, a2, a3, v10);
}

uint64_t sub_22BB956CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22BB95778()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];
}

uint64_t sub_22BB957A4(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_22BB32EE0(v3, v4, a3);
}

uint64_t sub_22BB957C0()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_22BB31B20();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 56);

    sub_22BB2F09C();

    return v13();
  }
}

uint64_t sub_22BB958DC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_22BB3052C();
  *v6 = v5;
  v7 = *(v4 + 112);
  *v6 = *v2;
  *(v5 + 120) = v1;

  v8 = *(v4 + 104);

  if (v1)
  {
    v9 = sub_22BD75E98;
  }

  else
  {
    *(v5 + 128) = a1;
    v9 = sub_22BB69458;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22BB95A50()
{
  sub_22BB2F0D4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_22BDB9B54();
  v1[5] = v4;
  sub_22BB30434(v4);
  v1[6] = v5;
  v7 = *(v6 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BB95C04, v0, 0);
}

uint64_t sub_22BB95B14()
{

  return sub_22BB58728(v1, v2, v0);
}

uint64_t sub_22BB95B9C(uint64_t result)
{
  *(result + 16) = sub_22BD5F210;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB95BD8(void *a1)
{
  a1[2] = v1;
  a1[3] = v3;
  a1[4] = v2;
}

void sub_22BB95C04()
{
  v1 = v0[3];
  if ((*(v0[4] + 112) & 1) == 0)
  {
    v22 = v0[7];
    v21 = v0[8];

    v23 = v0[1];
    sub_22BB35ED4();

    __asm { BRAA            X2, X16 }
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    v26 = v0[3];

    v8 = MEMORY[0x277D84F90];
LABEL_13:
    v0[9] = v8;
    v0[10] = *(v0[4] + 120);
    v28 = *(MEMORY[0x277D1CEC8] + 4);
    v33 = *MEMORY[0x277D1CEC8] + MEMORY[0x277D1CEC8];

    v29 = swift_task_alloc();
    v0[11] = v29;
    *v29 = v0;
    v29[1] = sub_22BD9F15C;
    sub_22BB3487C(v0[2]);
    sub_22BB35ED4();

    __asm { BR              X2 }
  }

  v3 = v0[6];
  v34 = MEMORY[0x277D84F90];
  v4 = sub_22BB3B700();
  sub_22BD286A0(v4, v5, v6);
  v7 = 0;
  v8 = v34;
  v9 = *(v3 + 80);
  sub_22BB2F390();
  v32 = v1 + v10;
  while (v7 < *(v1 + 16))
  {
    (*(v3 + 16))(v0[8], v32 + *(v3 + 72) * v7, v0[5]);
    sub_22BB392D4();
    sub_22BB39B40(&unk_27D8E6D00, v11);
    v12 = sub_22BDB9484();
    v14 = v13;
    (*(v3 + 8))(v0[8], v0[5]);
    v16 = *(v34 + 16);
    v15 = *(v34 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_22BB2F158(v15);
      sub_22BB36AFC();
      sub_22BD286A0(v18, v19, v20);
    }

    ++v7;
    *(v34 + 16) = v16 + 1;
    v17 = v34 + 16 * v16;
    *(v17 + 32) = v12;
    *(v17 + 40) = v14;
    if (v2 == v7)
    {
      v27 = v0[3];

      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_22BB95EF0()
{
  sub_22BB30F5C();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_22BB3052C();
  *v6 = v5;
  v7 = *(v4 + 4712);
  *v6 = *v1;
  *(v5 + 4720) = v0;

  v8 = *(v4 + 2496);
  if (v0)
  {
    v9 = sub_22BD49194;
  }

  else
  {
    *(v5 + 4728) = v3;
    v9 = sub_22BB40F60;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

void sub_22BB9602C()
{
  v1 = v0[168];
  v2 = v0[125];
  v3 = v0[115];
  v4 = v0[92];
  v5 = v0[88];
  v6 = v0[87];
}

void sub_22BB96048()
{
  v1 = v0[244];
  v2 = v0[243];
  v3 = v0[127];
  v4 = v0[120];
  v5 = v0[117];
  v6 = v0[89];
}

uint64_t sub_22BB960B8(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB960D0(uint64_t a1)
{
  v3 = *(sub_22BBE6DE0(&qword_27D8E6518, &unk_22BDCE420) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_22BB96150(a1, v4);
}

uint64_t sub_22BB96150(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v3 = sub_22BDB43E4();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v50 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v49 = &v45 - v7;
  v46 = sub_22BBE6DE0(&qword_27D8E60D8, &unk_22BDCD620);
  v8 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v10 = &v45 - v9;
  v11 = sub_22BDB9B54();
  v48 = *(v11 - 8);
  v12 = *(v48 + 64);
  MEMORY[0x28223BE20](v11);
  v47 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BBE6DE0(&qword_27D8E6518, &unk_22BDCE420);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  v21 = sub_22BBE6DE0(&qword_27D8E6560, &qword_22BDCE740);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v45 - v26;
  sub_22BD741AC(a2, v20, &qword_27D8E6518, &unk_22BDCE420);
  if (sub_22BB3AA28(v20, 1, v21) == 1)
  {
    v28 = &qword_27D8E6518;
    v29 = &unk_22BDCE420;
    v30 = v20;
  }

  else
  {
    sub_22BBBE62C(v20, v27, &qword_27D8E6560, &qword_22BDCE740);
    v54 = sub_22BDB9744();
    sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
    sub_22BB8F3FC();
    sub_22BDB90D4();

    if (sub_22BB3AA28(v18, 1, v21) != 1)
    {
      v32 = v46;
      v33 = v48;
      v34 = *(v48 + 32);
      v34(&v10[*(v46 + 48)], &v18[*(v21 + 48)], v11);
      v35 = &v10[*(v32 + 48)];
      v36 = v47;
      v34(v47, v35, v11);
      sub_22BD741AC(v27, v25, &qword_27D8E6560, &qword_22BDCE740);
      v37 = *(v21 + 48);
      v38 = v49;
      sub_22BDB8F24();
      v39 = *(v33 + 8);
      v39(&v25[v37], v11);
      v40 = v50;
      sub_22BDB8F24();
      v31 = sub_22BDB43B4();
      v41 = *(v51 + 8);
      v42 = v40;
      v43 = v52;
      v41(v42, v52);
      v41(v38, v43);
      v39(v36, v11);
      sub_22BB58728(v27, &qword_27D8E6560, &qword_22BDCE740);
      return v31 & 1;
    }

    sub_22BB58728(v18, &qword_27D8E6518, &unk_22BDCE420);
    v28 = &qword_27D8E6560;
    v29 = &qword_22BDCE740;
    v30 = v27;
  }

  sub_22BB58728(v30, v28, v29);
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_22BB96620(uint64_t a1)
{
  *(a1 + 16) = sub_22BD5F000;
  *(a1 + 24) = v1;
  v4 = *(v2 - 152);

  return sub_22BDB77C4();
}

void sub_22BB9664C()
{
  v3 = v1[401];
  *(v2 - 176) = v1[400];
  *(v2 - 168) = v0;
  v4 = v1[399];
  v5 = v1[398];
  v6 = v1[397];
  v7 = v1[396];
}

void sub_22BB9666C()
{
  v2 = v0[432];
  v3 = v0[429];
  *(v1 - 160) = v0[428];
  *(v1 - 152) = v2;
  v4 = v0[417];
  v5 = v0[402];
}

uint64_t sub_22BB96688()
{
  v4 = v1;
  v5 = *(v2 - 96);

  return sub_22BB32EE0(v4, v0, (v2 - 88));
}

void sub_22BB966A8()
{
  v1 = v0[578];
  v2 = v0[577];
  v3 = v0[576];
  v4 = v0[575];
  v5 = v0[574];
  v6 = v0[573];
  v7 = v0[570];
}

uint64_t sub_22BB966C8()
{

  return sub_22BDB9114();
}

void sub_22BB966E8(uint64_t a1@<X8>)
{
  v5 = *(a1 + 3040);
  *(v4 - 160) = v1;
  *(v4 - 152) = v5;
  v6 = v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v7 = *(v3 + 72);
}

uint64_t sub_22BB96708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[1] = a4;
  v25[2] = a5;
  v27 = a3;
  v26 = sub_22BDB5E04();
  v7 = *(v26 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v26);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BDB5E34();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_22BBE6DE0(&qword_27D8E6508, &qword_22BDCE410);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v25 - v16;
  v18 = sub_22BBE6DE0(&qword_27D8E64E8, &qword_22BDCE3F0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v25 - v20;
  v22 = type metadata accessor for SpanMetadata();
  sub_22BB336D0(v21, 1, 1, v22);
  v23 = *(*a1 + 136);
  swift_beginAccess();
  sub_22BB4F9D8(v21, a2);
  result = swift_endAccess();
  if (*(a1 + *(*a1 + 152)) == 1)
  {
    sub_22BDB8444();
    sub_22BDB5D24();
    (*(v7 + 104))(v10, *MEMORY[0x277D1D1C0], v26);
    sub_22BDB5E14();
    sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
    sub_22BDBAF34();
    return (*(v14 + 8))(v17, v13);
  }

  return result;
}

unint64_t sub_22BB96A28()
{
  result = qword_281428A50;
  if (!qword_281428A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281428A50);
  }

  return result;
}

uint64_t sub_22BB96A94()
{

  return swift_arrayDestroy();
}

void sub_22BB96B7C()
{
  v1 = v0[191];
  v2 = v0[190];
  v3 = v0[189];
  v4 = v0[188];
}

void sub_22BB96B90()
{
  v1 = v0[416];
  v2 = v0[415];
  v3 = v0[414];
  v4 = v0[347];
  v5 = v0[346];
  v6 = v0[345];
  v7 = v0[344];
  v8 = v0[325];
  v9 = v0[324];
  v10 = v0[323];
}

void sub_22BB96BBC(uint64_t a1@<X8>)
{
  v3 = *(*(v1 - 144) + 3112);
  v4 = *(*(v1 - 144) + 3104);
  v5 = *(*(v1 - 144) + 2496) + a1;

  sub_22BD7587C();
}

uint64_t sub_22BB96BE8()
{
  *(v0 - 176) = *(v0 - 104);
  v2 = *(v0 - 160);
}

void *sub_22BB96C08(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = result[2];
  if (!v6)
  {
LABEL_5:
    v7 = *result - 1;
    if (__OFSUB__(*result, 1))
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v7 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  v8 = type metadata accessor for SessionCoordinatorCommand(0);
  result = sub_22BB335C0(a3, a2 + *(*(v8 - 8) + 72) * v7);
  v5[2] = v7;
  v9 = v5[1];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (!v10)
  {
    v5[1] = v11;
    return result;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_22BB96CC0()
{
  v2 = *(v1 + 104);
  result = v0;
  v4 = LODWORD(STACK[0x448]);
  v5 = STACK[0x440];
  return result;
}

uint64_t sub_22BB96CD4()
{
  v1 = v0[30];
  v2 = v0[25];
  v3 = v0[26];
  result = v0[20];
  v5 = v0[17];
  v6 = *(v0[18] + 8);
  return result;
}

uint64_t sub_22BB96D60(uint64_t result)
{
  *(result + 16) = sub_22BB8AE88;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB96DB0(uint64_t a1, uint64_t a2)
{
  v3 = v2[461];
  v4 = v2[452];
  sub_22BB336D0(v3, a2, 1, v2[403]);
  return v3;
}

uint64_t sub_22BB96DE4()
{
}

void sub_22BB96E18(uint64_t a1, char a2)
{
  v3 = v2;
  v4 = *v2;
  if ((a2 & 1) == 0)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v15 = sub_22BB38F3C();
    sub_22BB96F14(v15, v16, v17);

    *v3 = v20;
    goto LABEL_5;
  }

  sub_22BB3AC54();
  sub_22BB72B1C();
  if (v5)
  {
    v6 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    sub_22BB34448();
    sub_22BBE6DE0(&qword_27D8E68D8, &qword_22BDCFBE0);
    v7 = sub_22BB2F694();
    sub_22BB37E78(v7, v8, v9, v10, v11, v12, v13, v14, v19, v20);
    sub_22BB97200();
    sub_22BDBB4C4();

    *v3 = v4;
LABEL_5:
    sub_22BB588E0();
    return;
  }

  sub_22BB588E0();
}

void sub_22BB96F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  sub_22BB72B1C();
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v9;
  v12 = v10;
  sub_22BBE6DE0(&qword_27D8E68D8, &qword_22BDCFBE0);
  if ((sub_22BDBB4A4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  sub_22BB72B1C();
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_11:
    sub_22BDBB744();
    __break(1u);
    return;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    *(*(v16 + 56) + 8 * v11) = a1;
  }

  else
  {
    sub_22BB9703C(v11, a2, a3, a1, v16);
  }
}

uint64_t sub_22BB9703C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_22BB36EC4(a1, a5 + 8 * (a1 >> 6));
  v7 = (v6[6] + 16 * result);
  *v7 = v8;
  v7[1] = v9;
  *(v6[7] + 8 * result) = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v6[2] = v13;
  }

  return result;
}

uint64_t sub_22BB97084(uint64_t a1)
{
  result = sub_22BB93AB0(a1);
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_22BB970B4()
{

  return swift_allocObject();
}

uint64_t sub_22BB970CC(__int128 *a1)
{
  result = sub_22BB382E8(a1, v2);
  v4 = *(v1 + 32);
  return result;
}

uint64_t sub_22BB970F4()
{
  v3 = *(v0 + 1016);
}

void sub_22BB97148(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, os_log_t log, uint64_t a15, uint64_t a16, os_log_type_t a17)
{

  _os_log_impl(a1, log, a17, a4, v17, 0x16u);
}

unint64_t sub_22BB971BC@<X0>(unint64_t a1@<X8>)
{
  STACK[0x438] = a1;
  STACK[0x450] = v3[387];
  v6 = v3[386];
  STACK[0x458] = v3[385];
  v7 = v3[312];
  STACK[0x448] = v3[309];
  v8 = *(v4 - 168);

  return sub_22BB929E0(v1, v8, v2);
}

unint64_t sub_22BB97200()
{
  result = qword_281428A98;
  if (!qword_281428A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281428A98);
  }

  return result;
}

void sub_22BB97254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v28 = *v4;
    sub_22BB9395C(a1, a2, a3, a4);

    *v4 = v28;
LABEL_5:
    sub_22BB588E0();
    return;
  }

  v11 = *v4;
  sub_22BB3AC54();
  sub_22BB72B1C();
  if (v13)
  {
    v14 = v12;
    v15 = *v5;
    swift_isUniquelyReferenced_nonNull_native();
    sub_22BB34448();
    sub_22BBE6DE0(&qword_27D8E68E0, &qword_22BDCFBE8);
    v16 = sub_22BB2F694();
    sub_22BB37E78(v16, v17, v18, v19, v20, v21, v22, v23, v26, v27);
    v24 = *(*(v11 + 56) + 16 * v14 + 8);
    sub_22BBE6DE0(&qword_27D8E6570, &qword_22BDCFBF0);
    sub_22BB97200();
    sub_22BDBB4C4();

    *v5 = v11;
    goto LABEL_5;
  }

  sub_22BB588E0();
}

uint64_t sub_22BB97398(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_22BB36EC4(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

uint64_t sub_22BB973E4(uint64_t result)
{
  *(v1 - 160) = result;
  *(result + 16) = 34;
  return result;
}

uint64_t sub_22BB97474(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB97500(uint64_t result)
{
  *(result + 16) = sub_22BB8AE88;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB97518()
{

  return sub_22BDBABD4();
}

uint64_t sub_22BB97548()
{
  v3 = v0[463];
  v4 = v0[462];
  v5 = v0[363];
  v6 = v0[362];
  v7 = v0[361];
  *(v1 - 160) = v0[464];
  *(v1 - 152) = v7;
  v8 = v0[360];
  v9 = v0[359];
  v10 = v0[351];
  v11 = v0[350];
  v12 = *(*(v1 - 144) + 2792);
  v13 = *(*(v1 - 144) + 1864);
}

uint64_t sub_22BB975AC(uint64_t a1)
{
  v1[218] = 0;
  v1[219] = a1;
  *v3 = 514;
  v1[198] = v3 + 1;
  v1[169] = sub_22BB89C08;
  v1[170] = v2;
  v6 = *(v4 - 136);

  return sub_22BB67984((v1 + 169), (v1 + 198), (v1 + 218), (v1 + 219));
}

void sub_22BB97628()
{
  v2 = *(v0 + 3784);
  *(v1 - 152) = *(v0 + 3216);
  v3 = *(*(v1 - 144) + 3208);
  *(v1 - 136) = *(*(v1 - 144) + 3200);
  v4 = *(*(v1 - 144) + 3192);
  v5 = *(*(v1 - 144) + 3184);
  v6 = *(*(v1 - 144) + 3176);
  v7 = *(*(v1 - 144) + 3168);
}

void sub_22BB9766C()
{
  v3 = STACK[0x438];
  *v2 = v0;
  v2[1] = v3;
  v2[2] = STACK[0x3D8];
  v4 = v2 + *(v1 + 28);
}

uint64_t sub_22BB97698()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 88);
  return result;
}

uint64_t sub_22BB976A8(uint64_t result)
{
  *(result + 16) = sub_22BD5ECA8;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB976C0()
{
  v2 = *(v1 - 120);
  v3 = *(v1 - 128) + 8;
  return v0;
}

uint64_t sub_22BB976D0(int *a1)
{
  v5 = a1[16];
  v6 = v2 + a1[20];
  v7 = a1[24];
  *v2 = v1;
  v2[1] = v3;

  return sub_22BDB5BD4();
}

uint64_t sub_22BB976FC()
{
  v1 = v0[164];
  result = v0[163];
  v3 = v0[156];
  v4 = v0[155];
  return result;
}

uint64_t sub_22BB97728(uint64_t result)
{
  *(result + 16) = sub_22BD5F658;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB97740()
{
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
}

uint64_t sub_22BB97758@<X0>(uint64_t a1@<X8>)
{

  return sub_22BB67984(a1 + 1560, a1 + 1968, a1 + 1976, a1 + 1984);
}

uint64_t sub_22BB977AC()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22BB977D0()
{
  v3 = *(v1 + 280);
  v4 = *(v2 + 32);
  return v0;
}

uint64_t sub_22BB977E8(uint64_t result)
{
  *(result + 16) = sub_22BB89C78;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB9781C()
{
  v2 = v0[27];
  v3 = v0[28];
  v6 = v0[26];
  v4 = v0[25];

  return swift_slowAlloc();
}

uint64_t sub_22BB97850(uint64_t a1, unint64_t a2)
{
  v4 = sub_22BB9789C(a1, a2);
  sub_22BB97A24(&unk_283F73608);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22BB9789C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_22BDBAC94())
  {
    result = sub_22BB979B4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_22BDBB324();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_22BDBB3D4();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_22BB979B4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_22BBE6DE0(&qword_27D8E3728, &unk_22BDBF4C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_22BB97A24(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_22BC7D9B8(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22BB97B18()
{
  result = v0;
  v3 = *(v1 - 144);
  return result;
}

uint64_t sub_22BB97B24(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_22BB31F70(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_22BB97BC0(uint64_t a1)
{
  *(a1 + 8) = sub_22BC36F70;
  v2 = *(v1 + 976);
  return *(v1 + 312);
}

uint64_t sub_22BB97C28()
{

  return sub_22BDBB5D4();
}

uint64_t sub_22BB97C5C()
{
  result = v0[40];
  v2 = v0[37];
  v3 = v0[36];
  v4 = v0[31];
  v5 = v0[32];
  v7 = v0[27];
  v6 = v0[28];
  v8 = *(v0[38] + 32);
  return result;
}

void *sub_22BB97CA0(void *result)
{
  *(v3 + 1648) = result;
  result[2] = v5;
  result[3] = v2;
  v8 = *(v7 - 112);
  v9 = *(v7 - 104);
  result[4] = *(v7 - 120);
  result[5] = v9;
  result[6] = v6;
  result[7] = v8;
  result[8] = *(v7 - 128);
  result[9] = v4;
  result[10] = v1;
  return result;
}

uint64_t sub_22BB97CF0(int a1)
{

  return sub_22BB336D0(v2, a1 ^ 1u, 1, v1);
}

uint64_t sub_22BB97D28()
{

  return sub_22BDBB894();
}

void sub_22BB97D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = *(v17 + 352);
  v21 = *(a17 + 336);
  v22 = *(a17 + 328);
}

uint64_t sub_22BB97D70(uint64_t result)
{
  v3 = *(result + 48);
  *v1 = v2;
  return result;
}

uint64_t sub_22BB97D80(uint64_t result)
{
  *(result + 16) = sub_22BD5ED18;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB97DCC()
{

  return swift_slowAlloc();
}

uint64_t sub_22BB97DF8()
{
  v2 = *(v0 - 200);

  return swift_allocObject();
}

uint64_t sub_22BB97E38(uint64_t a1)
{
  v4 = *(a1 + 48);
  *v2 = v1;

  return sub_22BDBB564();
}

uint64_t sub_22BB97E64()
{
  v1 = v0[270];
  v2 = v0[246];
  v3 = v0[240];
  result = v0[222];
  v5 = v0[220];
  v6 = v0[136];
  v7 = v0[221] + 8;
  return result;
}

uint64_t sub_22BB97E90()
{
  *(v4 - 200) = v0;
  *(v4 - 192) = v1;
  *(v4 - 184) = v2;
  v6 = *(v4 - 104);
  v7 = *(v4 - 96);
  *(v4 - 88) = v3;

  return sub_22BDBB5E4();
}

void sub_22BB97EEC()
{
  v1 = v0[411];
  v2 = v0[407];
  v3 = v0[405];
  v4 = v0[403];
  v5 = v0[312];
  v6 = v0[404] + 16;
}

uint64_t sub_22BB97F0C(uint64_t a1)
{
  v6 = (v4 + *(a1 + 20));
  *v6 = v2;
  v6[1] = v3;

  return sub_22BC52F5C(v1, type metadata accessor for QueryOutput);
}

uint64_t sub_22BB97F40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, unint64_t a3@<X5>, uint64_t a4@<X8>)
{

  return sub_22BCFD8E0(a2 + 1, a1, v4, a4, a2, a3);
}

uint64_t sub_22BB97F5C()
{
  v2 = v0[43];
  v3 = v0[28];
  v4 = v0[26];

  return _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
}

uint64_t sub_22BB97F7C(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v2);
  sub_22BBADE68();
  sub_22BDBB684();
  sub_22BB3A788();

  return sub_22BB31F54();
}

uint64_t sub_22BB97FE0()
{
  v2 = *(v0 + 8);
  result = *(v1 - 224);
  v4 = *(v1 - 176);
  return result;
}

void *sub_22BB97FF0(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    v8 = (*(a5 + 56) + 16 * a2);
    v9 = v8[1];
    *result = *v8;
    result[1] = v9;

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22BB980C8()
{
  v2 = *(v0 - 88);

  return sub_22BDBB664();
}

uint64_t sub_22BB980F8()
{
  sub_22BB35760();
  v2 = sub_22BDB5664();
  sub_22BB30434(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  v11 = sub_22BB37580(v10);
  *v11 = v12;
  v11[1] = sub_22BB3C48C;

  return sub_22BBABE74(v0, v6, v7, v8, v1 + v4, v9);
}

uint64_t sub_22BB98218()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = *(v1 + 32);
  v3 = *v0;
  sub_22BB3052C();
  *v4 = v3;

  sub_22BB2F09C();

  return v5();
}

uint64_t sub_22BB98310(uint64_t a1, uint64_t a2)
{
  sub_22BB30F68();
  v4 = sub_22BDB43E4();

  return sub_22BB336D0(v2, a2, a2, v4);
}

uint64_t sub_22BB98358()
{
  v2 = *(sub_22BDB9B54() - 8);
  v3 = (*(v2 + 80) + 128) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_22BDB96E4() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22BB6A0B4;

  return sub_22BBB756C(v0 + 16, v0 + v3, v0 + v6);
}

uint64_t sub_22BB9848C(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_22BBE6DE0(a1, a2);
  sub_22BB30444(v3);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = *(v2 + 16);
  swift_unknownObjectRelease();
  v9 = *(v2 + 32);

  v10 = sub_22BB541E8();
  v11(v10);
  v12 = sub_22BBC20AC();

  return MEMORY[0x2821FE8E8](v12, v13, v14);
}

_BYTE *sub_22BB9854C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = sub_22BBE6DE0(&qword_27D8E6870, &qword_22BDCF800);
    v9 = sub_22BB314BC(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(a4 + 20);
    }

    else
    {
      v11 = sub_22BBE6DE0(&qword_27D8E6878, &qword_22BDCF808);
      v12 = *(a4 + 24);
    }

    return sub_22BB336D0(&v5[v12], a2, a2, v11);
  }

  return result;
}

uint64_t sub_22BB98624()
{
  sub_22BB30F5C();
  v1 = *v0;
  v2 = *(*v0 + 440);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);
  v5 = *(*v0 + 192);
  v6 = *v0;
  sub_22BB3052C();
  *v7 = v6;

  (*(v4 + 8))(v3, v5);
  v8 = *(v1 + 320);
  v9 = *(v1 + 312);

  return MEMORY[0x2822009F8](sub_22BB987A8, v9, v8);
}

void sub_22BB987A8()
{
  v2 = *(v0 + 272);
  v3 = *(v0 + 224);
  sub_22BB309FC();
  sub_22BB34698();
  sub_22BB33EB8();
  sub_22BB34698();
  v5 = *(v0 + 424);
  v4 = *(v0 + 432);
  if (!v5)
  {
    goto LABEL_3;
  }

  do
  {
    v6 = *(v0 + 416);
    v8 = *(v0 + 280);
    v9 = *(v0 + 264);
    v1 = *(v0 + 232);
    v10 = *(v0 + 240);
    v5 &= v5 - 1;
    v11 = *(v6 + 48);
    v12 = *(*(v0 + 216) + 72);
    sub_22BB36720();
    sub_22BB33618();
    v13 = *(v6 + 56);
    v14 = *(v9 + 72);
    sub_22BB37890();
    sub_22BB33618();
    LODWORD(v9) = *(sub_22BBE6DE0(&qword_27D8E6760, &unk_22BDCE9D0) + 48);
    sub_22BB30E54();
    sub_22BB38958();
    sub_22BB31E54();
    sub_22BB38958();
    v15 = sub_22BB34914();
    sub_22BB336D0(v15, v16, v17, v18);
LABEL_6:
    sub_22BB53CA0();
    sub_22BC8D26C();
    v19 = sub_22BB31F54();
    v21 = sub_22BBE6DE0(v19, v20);
    sub_22BB34F58(v21);
    if (v22)
    {
      sub_22BB36AB0();

      sub_22BDB63E4();
      sub_22BB32564();
      sub_22BB33618();
      v33 = sub_22BDB77C4();
      sub_22BDBB134();
      sub_22BB3E2A4();
      os_log_type_enabled(v33, v34);
      sub_22BB3B494();
      if (v35)
      {
        v36 = *(v0 + 104);
        sub_22BB354D0();
        v63 = v10;
        v37 = swift_slowAlloc();
        sub_22BB2F440();
        v64 = swift_slowAlloc();
        *v37 = 136446210;
        sub_22BB32D54();
        sub_22BB3CC60(v38, v39);
        sub_22BDBB684();
        sub_22BB35D94();
        sub_22BB34698();
        v40 = sub_22BB2F12C();
        sub_22BB32EE0(v40, v41, v42);
        sub_22BB36C3C();

        *(v37 + 4) = &qword_27D8E6760;
        sub_22BB3163C(&dword_22BB2C000, v43, v44, "SessionClient %{public}s deregistered.");
        sub_22BB32FA4(v64);
        v45 = sub_22BB94EFC();
        MEMORY[0x2318A6080](v45);
        v46 = sub_22BB6BC10();
        MEMORY[0x2318A6080](v46);

        v47 = sub_22BB588D0();
        sub_22BBB7A1C(v47, v48);
        (qword_27D8E6768)(v63, v1);
      }

      else
      {

        v56 = sub_22BB588D0();
        sub_22BBB7A1C(v56, v57);
        sub_22BB35D94();
        sub_22BB34698();
        v58 = sub_22BB586F4();
        v60(v58, v59);
      }

      sub_22BB39248();

      sub_22BB2F09C();
      sub_22BB3CEF4();

      __asm { BRAA            X1, X16 }
    }

    v23 = *(v0 + 272);
    v1 = *(v0 + 248);
    v24 = *(v0 + 224);
    v25 = *(v0 + 88);
    v26 = *(v10 + 48);
    sub_22BB30E54();
    sub_22BB38958();
    sub_22BB31E54();
    sub_22BB38958();
    if (sub_22BDB43B4())
    {
      v49 = sub_22BB58B5C();
      v50(v49);
      sub_22BDB5144();
      v51 = sub_22BB3B144();
      v52(v51);
      sub_22BB31B20();
      sub_22BDB5744();
      sub_22BB32A48(&unk_22BDCE208);
      v53 = swift_task_alloc();
      *(v0 + 440) = v53;
      *v53 = v0;
      sub_22BB37E48();
      sub_22BB3CEF4();

      __asm { BR              X1 }
    }

    v27 = *(v0 + 272);
    v28 = *(v0 + 224);
    sub_22BB309FC();
    sub_22BB34698();
    sub_22BB33EB8();
    sub_22BB34698();
  }

  while (v5);
LABEL_3:
  while (1)
  {
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v7 >= (((1 << *(v0 + 453)) + 63) >> 6))
    {
      v10 = *(v0 + 240);
      sub_22BBE6DE0(&qword_27D8E6760, &unk_22BDCE9D0);
      sub_22BB30B28();
      sub_22BB336D0(v29, v30, v31, v32);
      v5 = 0;
      goto LABEL_6;
    }

    sub_22BB3B82C(v7);
  }

  __break(1u);
}

unint64_t sub_22BB98C20(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22BB98C40()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  sub_22BB3053C();
  *v2 = v1;
  v4 = v3[594];
  v5 = v3[593];
  v6 = v3[312];
  v7 = *v0;
  sub_22BB3052C();
  *v8 = v7;
  *(v10 + 4760) = v9;

  return MEMORY[0x2822009F8](sub_22BB98D60, v6, 0);
}

uint64_t sub_22BBAB210()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = *(v1 + 504);
  v3 = *(v1 + 176);
  v4 = *v0;
  sub_22BB3052C();
  *v5 = v4;

  v6 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22BBAB308(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *sub_22BB69FEC(a4, a4[3]);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_22BB6A0B4;

  return sub_22BBAB3E8(a1, a2, a3, v9, v4);
}

uint64_t sub_22BBAB3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[37] = a3;
  v5[38] = a5;
  v5[35] = a1;
  v5[36] = a2;
  v7 = sub_22BDB96E4();
  v5[39] = v7;
  v8 = *(v7 - 8);
  v5[40] = v8;
  v5[41] = *(v8 + 64);
  v5[42] = swift_task_alloc();
  v9 = sub_22BDB43E4();
  v5[43] = v9;
  v10 = *(v9 - 8);
  v5[44] = v10;
  v11 = *(v10 + 64) + 15;
  v5[45] = swift_task_alloc();
  v12 = sub_22BDB77D4();
  v5[46] = v12;
  v13 = *(v12 - 8);
  v5[47] = v13;
  v14 = *(v13 + 64) + 15;
  v5[48] = swift_task_alloc();
  v15 = sub_22BDB9B54();
  v5[49] = v15;
  v16 = *(v15 - 8);
  v5[50] = v16;
  v5[51] = *(v16 + 64);
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v17 = sub_22BDB9774();
  v5[55] = v17;
  v18 = *(v17 - 8);
  v5[56] = v18;
  v19 = *(v18 + 64) + 15;
  v5[57] = swift_task_alloc();
  v5[33] = type metadata accessor for SessionCoordinatorResponseCallback();
  v5[34] = &off_283F80930;
  v5[30] = a4;

  return MEMORY[0x2822009F8](sub_22BBAB69C, 0, 0);
}

uint64_t sub_22BBAB66C()
{
  if (MEMORY[0x277D85020])
  {
    return sub_22BBE6DE0(&qword_27D8E67D8, &qword_22BDCF230);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22BBAB69C()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];
  v4 = v0[37];
  v6 = v0[35];
  v5 = v0[36];
  sub_22BBABE3C(v0[38], (v0 + 2));
  v7 = swift_allocObject();
  memcpy((v7 + 16), v0 + 2, 0x70uLL);
  v8 = sub_22BDB64C4();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_22BDB64D4();
  sub_22BDB96A4();
  v11 = sub_22BDB9744();
  (*(v2 + 8))(v1, v3);
  sub_22BB8EC88(v5, v4, v11);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v19 = v17 >> 1;
  if (v17 >> 1 != v15)
  {
    v20 = v19 - v15;
    if (v19 <= v15)
    {
      __break(1u);
      return result;
    }

    v81 = *(v0[38] + 16);
    v21 = v0[50];
    v22 = v0[40];
    v23 = *(v21 + 16);
    v24 = (v21 + 8);
    v75 = (v0[47] + 8);
    v74 = (v0[44] + 8);
    v79 = v22;
    v80 = v21;
    v77 = *(v21 + 72);
    v25 = v13 + v15 * v77;
    v76 = (v21 + 8);
    v78 = v23;
    do
    {
      v87 = v25;
      v88 = v20;
      v26 = v0[53];
      v27 = v0[54];
      v29 = v0[48];
      v28 = v0[49];
      v23(v27);
      sub_22BDB6404();
      (v23)(v26, v27, v28);
      v30 = sub_22BDB77C4();
      v31 = sub_22BDBB104();
      v32 = os_log_type_enabled(v30, v31);
      v33 = v0[53];
      v34 = v0[48];
      v35 = v0[49];
      v36 = v0[46];
      if (v32)
      {
        v37 = v0[45];
        v85 = v0[49];
        v38 = v0[43];
        v39 = v24;
        v40 = swift_slowAlloc();
        v83 = v34;
        v89 = sub_22BB314C8();
        *v40 = 136315138;
        sub_22BDB8F24();
        sub_22BB30890();
        sub_22BBB8FCC(&qword_28142DD38, v41);
        sub_22BDBB684();
        (*v74)(v37, v38);
        v42 = v85;
        v86 = *v39;
        (*v39)(v33, v42);
        v43 = sub_22BB2F324();
        v46 = sub_22BB32EE0(v43, v44, v45);

        *(v40 + 4) = v46;
        _os_log_impl(&dword_22BB2C000, v30, v31, "Received event %s for evaluation. Queuing for processing.", v40, 0xCu);
        sub_22BB32FA4(v89);
        sub_22BB30AF0();
        sub_22BB30AF0();

        (*v75)(v83, v36);
      }

      else
      {

        v86 = *v24;
        (*v24)(v33, v35);
        v47 = *v75;
        v48 = sub_22BB2F324();
        v50(v48, v49);
      }

      v52 = v0[51];
      v51 = v0[52];
      v53 = v0[49];
      v54 = v0[42];
      v82 = v54;
      v84 = v0[54];
      v55 = v0[39];
      v56 = v0[35];
      sub_22BBABE3C(v0[38], (v0 + 16));
      v57 = sub_22BB2F324();
      v23 = v78;
      v78(v57);
      v58 = v54;
      v59 = v55;
      (*(v79 + 16))(v58, v56, v55);
      v60 = (*(v80 + 80) + 128) & ~*(v80 + 80);
      v61 = (v52 + *(v79 + 80) + v60) & ~*(v79 + 80);
      v62 = swift_allocObject();
      memcpy((v62 + 16), v0 + 16, 0x70uLL);
      (*(v80 + 32))(v62 + v60, v51, v53);
      (*(v79 + 32))(v62 + v61, v82, v59);
      sub_22BDB5FD4();

      v86(v84, v53);
      v24 = v76;
      v25 = v87 + v77;
      v20 = v88 - 1;
    }

    while (v88 != 1);
  }

  v63 = v0[57];
  v64 = v0[53];
  v65 = v0[54];
  v66 = v0[52];
  v67 = v0[48];
  v68 = v0[45];
  v69 = v0[42];
  v70 = v0[38];
  swift_unknownObjectRelease();
  v71 = *(v70 + 16);

  sub_22BDB5FD4();

  v72 = *sub_22BB69FEC(v0 + 30, v0[33]);
  sub_22BD790CC(MEMORY[0x277D84F90], sub_22BB35598, 0);

  sub_22BB32FA4(v0 + 30);

  v73 = v0[1];

  return v73();
}

uint64_t sub_22BBABC8C()
{
  v1 = v0[3];

  v2 = v0[4];

  sub_22BB32FA4(v0 + 5);
  sub_22BB32FA4(v0 + 10);
  v3 = v0[15];

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_22BBABCE4()
{
  v1 = sub_22BDB9B54();
  sub_22BB30444(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 128) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_22BDB96E4();
  sub_22BB30444(v8);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v5 + v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  v17 = v0[3];

  v18 = v0[4];

  sub_22BB32FA4(v0 + 5);
  sub_22BB32FA4(v0 + 10);
  v19 = v0[15];

  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x2821FE8E8](v0, v14 + v15, v16 | 7);
}

uint64_t sub_22BBABE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v7 = sub_22BDB43E4();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = sub_22BDB9684();
  v6[8] = v10;
  v11 = *(v10 - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();
  v13 = *(*(sub_22BDB5F24() - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v14 = sub_22BDB7734();
  v6[13] = v14;
  v15 = *(v14 - 8);
  v6[14] = v15;
  v16 = *(v15 + 64) + 15;
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v17 = *(*(sub_22BDB5664() - 8) + 64) + 15;
  v6[17] = swift_task_alloc();
  v18 = sub_22BDB7754();
  v6[18] = v18;
  v19 = *(v18 - 8);
  v6[19] = v19;
  v20 = *(v19 + 64) + 15;
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBAC0B8, 0, 0);
}

uint64_t sub_22BBAC0B8()
{
  v53 = v0;
  v1 = v0[20];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[3];
  sub_22BDB6124();
  sub_22BB35D70();
  sub_22BB388FC(v4, v2);
  sub_22BDB7724();
  v5 = sub_22BDB7744();
  v6 = sub_22BDBB1D4();
  if (sub_22BDBB244())
  {
    v8 = v0[16];
    v7 = v0[17];
    v9 = v0[4];
    v10 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = sub_22BDB5624();
    v13 = v12;
    sub_22BB309AC();
    sub_22BB698E8();
    v14 = sub_22BB32EE0(v11, v13, &v52);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v0[2] = v9;
    sub_22BB70194();
    v15 = sub_22BDBB684();
    v17 = sub_22BB32EE0(v15, v16, &v52);

    *(v10 + 14) = v17;
    v18 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v5, v6, v18, "FSWait", "[SessionCoordinator %s] | [TX %s] Notifying FeatureStore about session end.", v10, 0x16u);
    swift_arrayDestroy();
    sub_22BB30AF0();
    sub_22BB30AF0();
  }

  else
  {
    v19 = v0[17];

    sub_22BB309AC();
    sub_22BB698E8();
  }

  v20 = v0[19];
  v47 = v0[18];
  v48 = v0[20];
  v21 = v0[15];
  v22 = v0[16];
  v23 = v0[13];
  v24 = v0[14];
  v25 = v0[12];
  v51 = v0[10];
  v26 = v0[6];
  v49 = v0[11];
  v50 = v0[7];
  v27 = v0[5];
  v28 = v0[3];
  v29 = *(v24 + 16);
  v30 = sub_22BB2F3F0();
  v31(v30);
  v32 = sub_22BDB77A4();
  sub_22BB58B50(v32);
  swift_allocObject();
  sub_22BB3A190();
  v0[21] = sub_22BDB7794();
  v33 = *(v24 + 8);
  v34 = sub_22BB3182C();
  v35(v34);
  (*(v20 + 8))(v48, v47);
  sub_22BDB47A4();
  sub_22BB388FC(v28, v25);
  v36 = sub_22BDB4374();
  v38 = v37;
  v0[22] = v37;
  (*(v26 + 8))(v25, v27);
  sub_22BB388FC(v28, v49);
  (*(v26 + 32))(v50, v49, v27);
  sub_22BDB9674();
  v39 = *(MEMORY[0x277D08418] + 4);
  v40 = swift_task_alloc();
  v0[23] = v40;
  v41 = MEMORY[0x277D1E608];
  v42 = sub_22BB6914C(&qword_281428A38, MEMORY[0x277D1E608]);
  v43 = sub_22BB6914C(&qword_281428A40, v41);
  *v40 = v0;
  v40[1] = sub_22BBD86E8;
  v44 = v0[10];
  v45 = v0[8];

  return MEMORY[0x28215E6D8](v36, v38, v44, v45, v42, v43);
}

uint64_t sub_22BBACC08(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v44 = a3;
  v54 = sub_22BBE6DE0(&qword_27D8E6038, &qword_22BDD0300);
  v43 = *(v54 - 8);
  v7 = *(v43 + 64);
  v8 = MEMORY[0x28223BE20](v54);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v43 - v11);
  v52 = sub_22BBE6DE0(&qword_27D8E64C8, &qword_22BDCE3D0);
  v13 = *(v52 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v52);
  v16 = &v43 - v15;
  v17 = type metadata accessor for SessionCoordinatorInjectionRequest(0);
  v50 = *(v17 - 8);
  v51 = v17;
  v18 = *(v50 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1 + *(*a1 + 200);
  v22 = *(v21 + *(_s24StandardSessionResourcesVMa() + 36));
  SnippetStreamingRouter.Scoped.deallocateAllContexts()();
  v23 = *a2;
  v26 = *(*a2 + 64);
  v25 = *a2 + 64;
  v24 = v26;
  v27 = 1 << *(v23 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v24;
  v30 = (v27 + 63) >> 6;
  v48 = (v13 + 8);
  v49 = (v13 + 16);
  v53 = v23;

  v32 = 0;
  v47 = xmmword_22BDCE120;
  if (v29)
  {
    while (1)
    {
      v33 = v32;
LABEL_9:
      v34 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      sub_22BB335C0(*(v53 + 56) + *(v50 + 72) * (v34 | (v33 << 6)), v20);
      v35 = v52;
      (*v49)(v16, &v20[*(v51 + 52)], v52);
      sub_22BB34648();
      v55 = v47;
      sub_22BDBAE54();
      result = (*v48)(v16, v35);
      if (!v29)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      return result;
    }

    if (v33 >= v30)
    {
      break;
    }

    v29 = *(v25 + 8 * v33);
    ++v32;
    if (v29)
    {
      v32 = v33;
      goto LABEL_9;
    }
  }

  v36 = *(*v44 + 16);
  if (v36)
  {
    v37 = v54;
    v38 = *(v54 + 48);
    v39 = *v44 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
    v40 = *(v43 + 72);
    v53 = *v44;

    do
    {
      sub_22BB3CD70(v39, v12, &qword_27D8E6038, &qword_22BDD0300);
      v41 = *(v37 + 48);
      sub_22BB382E8(v12, v10);
      v42 = sub_22BBE6DE0(&qword_27D8E64A0, &qword_22BDCE358);
      (*(*(v42 - 8) + 32))(&v10[v41], v12 + v38, v42);
      v37 = v54;
      sub_22BDBAF44();
      sub_22BB325EC(v10, &qword_27D8E6038, &qword_22BDD0300);
      v39 += v40;
      --v36;
    }

    while (v36);
  }

  sub_22BBE6DE0(&qword_27D8E6488, &qword_22BDCE338);
  sub_22BDBAF44();
  sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
  return sub_22BDBAF44();
}

void sub_22BBAD098(uint64_t a1, void (*a2)(os_unfair_lock_s *, uint64_t))
{
  v5 = sub_22BB3B4B8(OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_contexts);
  os_unfair_lock_lock(v5);
  a2(v2 + 2, a1);

  os_unfair_lock_unlock(v2);
}

uint64_t sub_22BBAD11C(uint64_t *a1, uint64_t a2)
{
  v83 = a2;
  v3 = sub_22BBE6DE0(&qword_27D8E6860, &qword_22BDCF7F8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v71 = &v67 - v5;
  v6 = type metadata accessor for SnippetStreamingRouter.ScopeID(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v70 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BBE6DE0(&qword_27D8E6878, &qword_22BDCF808);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v80 = &v67 - v11;
  v82 = sub_22BBE6DE0(&qword_27D8E6908, &qword_22BDCFC40);
  v12 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v81 = &v67 - v13;
  v14 = type metadata accessor for SnippetStreamingRouter.Entry(0);
  v75 = *(v14 - 8);
  v15 = *(v75 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v87 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v73 = &v67 - v18;
  v67 = sub_22BDB5AB4();
  v74 = *(v67 - 8);
  v19 = *(v74 + 64);
  v20 = MEMORY[0x28223BE20](v67);
  v88 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v72 = &v67 - v22;
  v23 = sub_22BBE6DE0(&qword_27D8E6910, &qword_22BDCFC48);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v84 = &v67 - v28;
  v68 = a1;
  v29 = *a1 + 64;
  v30 = 1 << *(*a1 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(*a1 + 64);
  v33 = (v30 + 63) >> 6;

  v35 = 0;
  v76 = result;
  v77 = v33;
  v69 = result;
  v85 = v6;
  v86 = v27;
  v78 = v29;
  v79 = v14;
  if (v32)
  {
    while (1)
    {
      v36 = v14;
      v37 = v35;
LABEL_9:
      v38 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v39 = v38 | (v37 << 6);
      v40 = v76;
      v41 = *(v76 + 48) + *(v74 + 72) * v39;
      sub_22BB67A00();
      v42 = *(v40 + 56) + *(v75 + 72) * v39;
      sub_22BB67A00();
      v43 = sub_22BBE6DE0(&qword_27D8E6918, &qword_22BDCFC50);
      v44 = *(v43 + 48);
      v45 = v86;
      sub_22BB5005C();
      sub_22BB5005C();
      sub_22BB336D0(v45, 0, 1, v43);
      v6 = v85;
LABEL_10:
      v46 = v84;
      sub_22BC8D26C();
      v47 = sub_22BBE6DE0(&qword_27D8E6918, &qword_22BDCFC50);
      if (sub_22BB3AA28(v46, 1, v47) == 1)
      {
      }

      v48 = *(v47 + 48);
      sub_22BB5005C();
      sub_22BB5005C();
      v49 = *(v36 + 24);
      v50 = v81;
      v51 = *(v82 + 48);
      sub_22BC5E5C4();
      sub_22BC5E5C4();
      if (sub_22BB3AA28(v50, 1, v6) == 1)
      {
        break;
      }

      sub_22BC5E5C4();
      if (sub_22BB3AA28(v50 + v51, 1, v6) == 1)
      {
        sub_22BB67E48();
        sub_22BB67E48();
        sub_22BB67E48();
LABEL_16:
        v27 = v86;
        result = sub_22BB58728(v50, &qword_27D8E6908, &qword_22BDCFC40);
        goto LABEL_19;
      }

      sub_22BB5005C();
      v54 = sub_22BDB43B4();
      sub_22BB67E48();
      sub_22BB67E48();
      sub_22BB58728(v50, &qword_27D8E6878, &qword_22BDCF808);
      v53 = v71;
      v27 = v86;
      if (v54)
      {
        goto LABEL_24;
      }

      sub_22BB67E48();
      result = sub_22BB67E48();
      v6 = v85;
LABEL_19:
      v14 = v79;
LABEL_20:
      v33 = v77;
      v29 = v78;
      if (!v32)
      {
        goto LABEL_5;
      }
    }

    v52 = sub_22BB3AA28(v50 + v51, 1, v6);
    v53 = v71;
    if (v52 == 1)
    {
      sub_22BB58728(v50, &qword_27D8E6878, &qword_22BDCF808);
      v27 = v86;
LABEL_24:
      v56 = sub_22BD844E0(v88);
      v14 = v79;
      if (v57)
      {
        v58 = v56;
        v59 = v68;
        v60 = *v68;
        swift_isUniquelyReferenced_nonNull_native();
        v89 = *v59;
        v61 = *(v89 + 24);
        sub_22BBE6DE0(&qword_27D8E6920, &qword_22BDCFC58);
        v53 = v71;
        sub_22BDBB4A4();
        v62 = v89;
        v63 = *(v89 + 48) + *(v74 + 72) * v58;
        sub_22BB67E48();
        v64 = *(v62 + 56) + *(v75 + 72) * v58;
        sub_22BB5005C();
        sub_22BB3CC18(&qword_28142DC58, MEMORY[0x277D1D080]);
        sub_22BDBB4C4();
        v65 = 0;
        v69 = v62;
        *v59 = v62;
      }

      else
      {
        v65 = 1;
      }

      sub_22BB336D0(v53, v65, 1, v14);
      sub_22BB58728(v53, &qword_27D8E6860, &qword_22BDCF7F8);
      v66 = *(v14 + 20);
      sub_22BBE6DE0(&qword_27D8E6870, &qword_22BDCF800);
      sub_22BDBAF44();
      sub_22BB67E48();
      result = sub_22BB67E48();
      v6 = v85;
      goto LABEL_20;
    }

    sub_22BB67E48();
    sub_22BB67E48();
    v6 = v85;
    goto LABEL_16;
  }

LABEL_5:
  while (1)
  {
    v37 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v37 >= v33)
    {
      v36 = v14;
      v55 = sub_22BBE6DE0(&qword_27D8E6918, &qword_22BDCFC50);
      sub_22BB336D0(v27, 1, 1, v55);
      v32 = 0;
      goto LABEL_10;
    }

    v32 = *(v29 + 8 * v37);
    ++v35;
    if (v32)
    {
      v36 = v14;
      v35 = v37;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BBADB08(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22BBE6DE0(&qword_27D8E6870, &qword_22BDCF800);
    v9 = sub_22BB314BC(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(a3 + 20);
    }

    else
    {
      v11 = sub_22BBE6DE0(&qword_27D8E6878, &qword_22BDCF808);
      v12 = *(a3 + 24);
    }

    return sub_22BB3AA28(&a1[v12], a2, v11);
  }
}

uint64_t sub_22BBADBE0()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22BBADC08(uint64_t a1)
{
  *(a1 + 8) = sub_22BC3A904;
  v2 = *(v1 + 1336);
  return *(v1 + 1256);
}

uint64_t sub_22BBADC9C()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = *(v1 + 24);
  v3 = *v0;
  sub_22BB3052C();
  *v4 = v3;

  sub_22BB2F09C();

  return v5();
}

uint64_t sub_22BBADD7C()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = *(v1 + 64);
  v3 = *v0;
  sub_22BB3052C();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_22BBB7AA4, 0, 0);
}

unint64_t sub_22BBADE68()
{
  result = qword_281428A80;
  if (!qword_281428A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281428A80);
  }

  return result;
}

uint64_t sub_22BBADEBC()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_22BB3052C();
  *v4 = v3;

  sub_22BB360FC();

  return v5();
}

uint64_t sub_22BBADFBC()
{
  sub_22BB2F0D4();
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *v0;
  sub_22BB3052C();
  *v4 = v3;

  v5 = *(v1 + 120);
  v6 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_22BBB7C2C, v6, v5);
}

uint64_t sub_22BBAE0E0()
{
  sub_22BB31378();
  sub_22BB71610(v4);
  if (v5)
  {
    sub_22BB6BC64();
    sub_22BB325D8();
    sub_22BBE6DE0(&qword_27D8E68D0, &qword_22BDCFBD8);
    v6 = sub_22BB2F694();
    sub_22BB37974(v6, v7, v8, v9, v10, v11, v12, v13, v24, v25);
    v14 = sub_22BDB5F24();
    sub_22BB2F330(v14);
    sub_22BB34504(v3 + *(v15 + 72) * v2, MEMORY[0x277D1D2C8]);
    v16 = *(v1 + 56);
    v17 = type metadata accessor for SessionSwitchboard.SessionInfo();
    sub_22BB2F330(v17);
    sub_22BB52B00(v16 + *(v18 + 72) * v2, v0, type metadata accessor for SessionSwitchboard.SessionInfo);
    sub_22BB754D8(&qword_28142DC28, 255, MEMORY[0x277D1D2C8]);
    sub_22BB30EB4();
    v19 = sub_22BB32DF0();
    v22 = v17;
  }

  else
  {
    type metadata accessor for SessionSwitchboard.SessionInfo();
    v19 = sub_22BB31CB0();
  }

  return sub_22BB336D0(v19, v20, v21, v22);
}

char *sub_22BBAE224()
{
  v2 = v0;
  v3 = *v0;
  v4 = sub_22BDB77D4();
  v5 = sub_22BB30444(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  sub_22BB31580();
  v10 = sub_22BDB5664();
  v11 = sub_22BB2F0C8(v10);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v69 - v17;
  v73 = qword_28142AC88;
  sub_22BB388FC(&v0[qword_28142AC88], &v69 - v17);
  sub_22BDB63E4();
  sub_22BB388FC(v18, v16);
  v19 = sub_22BDB77C4();
  v20 = sub_22BDBB134();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v71 = v7;
    v22 = v21;
    v23 = swift_slowAlloc();
    v70 = v4;
    v24 = v23;
    v74 = v23;
    *v22 = 136446210;
    v25 = sub_22BDB5624();
    v72 = v3;
    v26 = v25;
    v28 = v27;
    sub_22BB309AC();
    sub_22BB698E8();
    v29 = sub_22BB32EE0(v26, v28, &v74);

    *(v22 + 4) = v29;
    v3 = v72;
    _os_log_impl(&dword_22BB2C000, v19, v20, "SessionCoordinator %{public}s deinit called.", v22, 0xCu);
    sub_22BB32FA4(v24);
    sub_22BB30AF0();
    sub_22BB30AF0();

    (*(v71 + 8))(v1, v70);
  }

  else
  {

    sub_22BB698E8();
    (*(v7 + 8))(v1, v4);
  }

  sub_22BB698E8();
  sub_22BB309AC();
  sub_22BB698E8();
  sub_22BB34070();
  (*(*(*(v3 + 80) - 8) + 8))(&v2[*(v30 + 112)], *(v3 + 80));
  sub_22BB34070();
  v32 = *&v2[*(v31 + 120)];

  sub_22BB34070();
  v34 = *(v33 + 128);
  v35 = sub_22BDB96E4();
  sub_22BB31F70(v35);
  (*(v36 + 8))(&v2[v34]);
  sub_22BB34070();
  v38 = *&v2[*(v37 + 136)];

  sub_22BB34070();
  v40 = *&v2[*(v39 + 152) + 8];

  sub_22BB34070();
  v42 = *(v41 + 160);
  v43 = *(v3 + 88);
  v44 = sub_22BB69358();
  sub_22BB31F70(v44);
  (*(v45 + 8))(&v2[v42]);
  sub_22BB34070();
  v47 = *(v46 + 168);
  v48 = sub_22BBE6DE0(&qword_27D8E6530, &qword_22BDCE440);
  sub_22BB31F70(v48);
  (*(v49 + 8))(&v2[v47]);
  sub_22BB34070();
  v51 = *(v50 + 176);
  v52 = sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  sub_22BB31F70(v52);
  (*(v53 + 8))(&v2[v51]);
  sub_22BB34070();
  v55 = *&v2[*(v54 + 184)];

  sub_22BB34070();
  v57 = *(v56 + 192);
  sub_22BB69358();
  sub_22BB37494();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BB31F70(AssociatedTypeWitness);
  (*(v59 + 8))(&v2[v57]);
  sub_22BB34070();
  v61 = *(v60 + 200);
  v62 = swift_checkMetadataState();
  sub_22BB31F70(v62);
  (*(v63 + 8))(&v2[v61]);
  sub_22BB34070();
  v65 = *(v64 + 208);
  v66 = sub_22BB69358();
  sub_22BB31F70(v66);
  (*(v67 + 8))(&v2[v65]);
  swift_defaultActor_destroy();
  return v2;
}

uint64_t sub_22BBAE7D0()
{
  sub_22BB6B8A8(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_sessionId);
  sub_22BB32FA4((v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_clientReverseClientDistributor));
  sub_22BB32FA4((v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_instrumentationSender));
  sub_22BB58728(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_latestClientSentQueryEventId, &qword_27D8E3218, &qword_22BDBE390);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22BBAE840()
{
  sub_22BB89D8C();
  sub_22BB34648();
  v1 = *(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime31SessionReverseClientDistributor_switchboard);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t *StandardPlanner.deinit()
{
  sub_22BB32FA4(v0 + 15);
  sub_22BB58728((v0 + 20), &qword_27D8E62F8, &qword_22BDCDB90);
  sub_22BB32FA4(v0 + 25);
  sub_22BB32FA4(v0 + 30);
  sub_22BB32FA4(v0 + 35);
  sub_22BB32FA4(v0 + 40);
  sub_22BB32FA4(v0 + 45);
  sub_22BB32FA4(v0 + 50);
  sub_22BB32FA4(v0 + 55);
  v1 = v0[61];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t StandardPlanner.__deallocating_deinit()
{
  StandardPlanner.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22BBAE984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v355 = a3;
  v360 = a2;
  v361 = a1;
  v359 = a4;
  v4 = type metadata accessor for FeedbackLearning.TaskFinalResolutionState(0);
  v5 = sub_22BB2F0C8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB305A8();
  sub_22BB2F14C(v8);
  v9 = sub_22BBE6DE0(&qword_27D8E3DF0, &qword_22BDC1230);
  sub_22BB2F0C8(v9);
  v11 = *(v10 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v12);
  sub_22BB30BA8();
  v14 = sub_22BB30B8C(v13);
  v15 = type metadata accessor for FeedbackLearning.TaskEvaluation(v14);
  v16 = sub_22BB33DA0(v15, &v356);
  v315 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v20);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v21);
  sub_22BB2F39C();
  sub_22BB2F14C(v22);
  v23 = sub_22BBE6DE0(&qword_27D8E3E08, &qword_22BDC1250);
  sub_22BB2F0C8(v23);
  v25 = *(v24 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v26);
  sub_22BB30BA8();
  v28 = sub_22BB30B8C(v27);
  v336 = type metadata accessor for FeedbackLearning.FlowTask(v28);
  v29 = sub_22BB2F330(v336);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v32);
  sub_22BB2F39C();
  sub_22BB30B8C(v33);
  v34 = sub_22BDB9B54();
  v35 = sub_22BB33DA0(v34, &v351);
  v322 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BB305A8();
  sub_22BB30B8C(v39);
  v40 = sub_22BDB77D4();
  v41 = sub_22BB33DA0(v40, v367);
  v339 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v45);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v46);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v47);
  sub_22BB2F39C();
  sub_22BB2F14C(v48);
  v49 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v49);
  v51 = *(v50 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v52);
  sub_22BB30BA8();
  sub_22BB2F14C(v53);
  v54 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  sub_22BB2F0C8(v54);
  v56 = *(v55 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v57);
  sub_22BB30BA8();
  sub_22BB30B8C(v58);
  v59 = sub_22BDB4C34();
  v60 = sub_22BB33DA0(v59, &v370);
  v342 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v64);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v65);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v66);
  sub_22BB2F39C();
  sub_22BB30B8C(v67);
  v68 = sub_22BDB43E4();
  v69 = sub_22BB33DA0(v68, &v366);
  v332 = v70;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v69);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v73);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v74);
  sub_22BB2F39C();
  sub_22BB30B8C(v75);
  v76 = sub_22BDB5F24();
  v77 = sub_22BB2F0C8(v76);
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v77);
  sub_22BB305A8();
  sub_22BB30B8C(v80);
  v81 = sub_22BDB9C14();
  v82 = sub_22BB33DA0(v81, &v372);
  v350 = v83;
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v82);
  sub_22BB305A8();
  sub_22BB30B8C(v86);
  v87 = sub_22BDB9774();
  v88 = sub_22BB33DA0(v87, &v371);
  v349 = v89;
  v91 = *(v90 + 64);
  MEMORY[0x28223BE20](v88);
  sub_22BB305A8();
  sub_22BB30B8C(v92);
  v353 = _s19TranscriptRetrieverVMa();
  v93 = sub_22BB2F330(v353);
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v93);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v96);
  sub_22BB2F39C();
  sub_22BB30B8C(v97);
  v98 = sub_22BDB9B14();
  v99 = sub_22BB30444(v98);
  v362 = v100;
  v102 = *(v101 + 64);
  MEMORY[0x28223BE20](v99);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v103);
  sub_22BB2F39C();
  v358 = v104;
  v357 = sub_22BDB7734();
  v105 = sub_22BB30444(v357);
  v107 = v106;
  v109 = *(v108 + 64);
  v110 = MEMORY[0x28223BE20](v105);
  v112 = &v313 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v110);
  v114 = &v313 - v113;
  v115 = sub_22BDB7754();
  v116 = sub_22BB30444(v115);
  v118 = v117;
  v120 = *(v119 + 64);
  v121 = MEMORY[0x28223BE20](v116);
  v123 = &v313 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v121);
  v125 = &v313 - v124;
  sub_22BDB6144();
  sub_22BDB6144();
  sub_22BDB7744();
  sub_22BDB7704();
  v356 = *(v118 + 8);
  v356(v123, v115);
  v126 = sub_22BDB7744();
  v127 = sub_22BDBB1D4();
  if (sub_22BDBB244())
  {
    v128 = swift_slowAlloc();
    v313 = v98;
    v129 = v128;
    *v128 = 0;
    v130 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v126, v127, v130, "FeedbackLearning.evaluate", "", v129, 2u);
    v131 = v129;
    v98 = v313;
    MEMORY[0x2318A6080](v131, -1, -1);
  }

  v132 = v357;
  (*(v107 + 16))(v112, v114, v357);
  v133 = sub_22BDB77A4();
  v134 = *(v133 + 48);
  v135 = *(v133 + 52);
  swift_allocObject();
  v136 = sub_22BDB7794();
  (*(v107 + 8))(v114, v132);
  v356(v125, v115);
  v137 = v358;
  v138 = v360;
  sub_22BDB9B24();
  v139 = v362;
  v140 = *(v362 + 88);
  v141 = v140(v137, v98);
  if (v141 != *MEMORY[0x277D1E718])
  {
    v143 = v141 == *MEMORY[0x277D1E860] || v141 == *MEMORY[0x277D1E868];
    v142 = v361;
    if (v143)
    {
      goto LABEL_10;
    }

    v357 = v136;
    v163 = *(v139 + 8);
    v162 = v139 + 8;
    v161 = v163;
    v164 = v98;
    v163(v137, v98);
    v165 = v340;
    sub_22BCD72D0(v340);
    sub_22BB692A0();
    v168 = sub_22BB3AA28(v166, v167, v98);
    if (v168 == 1)
    {
      sub_22BB58728(v165, &qword_27D8E27C0, &qword_22BDBCDF0);
      v169 = v359;
      *v359 = 1;
LABEL_31:
      *(v169 + 1) = MEMORY[0x277D84F90];
      goto LABEL_32;
    }

    v362 = v162;
    sub_22BB2F50C();
    v171 = v341;
    (*(v170 + 32))(v341, v165, v98);
    v172 = v337;
    sub_22BCD79B8(v337);
    v173 = v338;
    if (sub_22BB3AA28(v172, 1, v338) == 1)
    {
      v174 = v342;
      sub_22BB58728(v172, &qword_27D8E3218, &qword_22BDBE390);
      v175 = v329;
      sub_22BDB9B24();
      v176 = v140(v175, v164);
      v177 = *MEMORY[0x277D1E7C0];
      v161(v175, v164);
      if (v176 != v177)
      {
        v223 = *(v174 + 8);
        v224 = sub_22BB3AD60();
        v225(v224);
LABEL_30:
        v169 = v359;
        *v359 = 1;
        goto LABEL_31;
      }

      sub_22BDB6404();
      v178 = v322;
      v179 = v321;
      v180 = v323;
      (*(v322 + 16))(v321, v138, v323);
      v181 = v174;
      v182 = *(v174 + 16);
      v183 = v320;
      v98 = v343;
      v356 = v182;
      (v182)(v320, v341, v343);
      v184 = sub_22BDB77C4();
      v185 = sub_22BDBB0F4();
      if (os_log_type_enabled(v184, v185))
      {
        swift_slowAlloc();
        LODWORD(v346) = v185;
        v171 = v180;
        v186 = sub_22BB3869C();
        v345 = v184;
        v187 = v183;
        v188 = v173;
        v358 = v186;
        v366 = v186;
        *v180 = 136315394;
        v189 = v347;
        sub_22BDB8F24();
        sub_22BB362B8();
        sub_22BCBD270(v190, v191);
        sub_22BDBB684();
        sub_22BB6BAF8();
        (*(v332 + 8))(v189, v188);
        (*(v178 + 8))(v179, v180);
        v192 = sub_22BB38B20();
        sub_22BB32EE0(v192, v98, v193);
        sub_22BB3A254();

        sub_22BB34004();
        sub_22BB35B30();
        sub_22BCBD270(v194, v195);
        sub_22BDBB684();
        sub_22BB6BAF8();
        v362 = *(v181 + 8);
        (v362)(v187, v343);
        v196 = sub_22BB38B20();
        sub_22BB32EE0(v196, v98, v197);
        sub_22BB3A254();
        sub_22BB692A0();

        *(v180 + 14) = v187;
        v198 = v345;
        _os_log_impl(&dword_22BB2C000, v345, v346, "Event references external action id=%s and statement id=%s. Generating updated task evaluation.", v180, 0x16u);
        swift_arrayDestroy();
        sub_22BB380D8();
        sub_22BB35600();

        sub_22BB38B2C();
        sub_22BB38E20();
        v199();
        v200 = v334;
      }

      else
      {

        v362 = *(v181 + 8);
        (v362)(v183, v98);
        (*(v178 + 8))(v179, v180);
        sub_22BB38B2C();
        sub_22BB38E20();
        v229();
        v200 = v334;
        v171 = v341;
      }
    }

    else
    {
      v201 = v332;
      v202 = v333;
      (*(v332 + 32))(v333, v172, v173);
      sub_22BDB6404();
      v203 = v330;
      (*(v201 + 16))(v330, v202, v173);
      sub_22BB2F50C();
      v205 = v331;
      v356 = *(v204 + 16);
      (v356)(v331, v171, v98);
      v206 = sub_22BDB77C4();
      v207 = sub_22BDBB0F4();
      if (os_log_type_enabled(v206, v207))
      {
        swift_slowAlloc();
        v366 = sub_22BB3869C();
        *v201 = 136315394;
        sub_22BB362B8();
        sub_22BCBD270(v208, v209);
        sub_22BDBB684();
        v171 = v207;
        v211 = v210;
        v98 = v201 + 8;
        v347 = *(v201 + 8);
        v347(v203, v173);
        v212 = sub_22BB38B20();
        sub_22BB32EE0(v212, v211, v213);

        sub_22BB34004();
        sub_22BB35B30();
        sub_22BCBD270(v214, v215);
        sub_22BDBB684();
        v217 = v216;
        sub_22BB2F50C();
        v362 = *(v218 + 8);
        (v362)(v205, v343);
        v219 = sub_22BB38B20();
        v221 = sub_22BB32EE0(v219, v217, v220);

        *(v201 + 14) = v221;
        _os_log_impl(&dword_22BB2C000, v206, v171, "Event references action id=%s and statement id=%s. Generating updated task evaluation.", v201, 0x16u);
        swift_arrayDestroy();
        sub_22BB380D8();
        sub_22BB35600();

        sub_22BB38B2C();
        sub_22BB38E20();
        v222();
        v347(v333, v173);
        sub_22BB692A0();
      }

      else
      {

        sub_22BB2F50C();
        v362 = *(v226 + 8);
        (v362)(v205, v98);
        v227 = *(v201 + 8);
        v227(v203, v173);
        sub_22BB38B2C();
        sub_22BB38E20();
        v228();
        v227(v202, v173);
      }

      v200 = v334;
    }

    v230 = v335;
    v231 = v361;
    sub_22BD1D87C();
    v232 = v336;
    if (sub_22BB3AA28(v230, 1, v336) == 1)
    {
      sub_22BB58728(v230, &qword_27D8E3E08, &qword_22BDC1250);
      sub_22BDB6404();
      (v356)(v200, v171, v98);
      v233 = sub_22BDB77C4();
      v234 = sub_22BDBB0F4();
      if (os_log_type_enabled(v233, v234))
      {
        v171 = v200;
        v235 = swift_slowAlloc();
        v236 = swift_slowAlloc();
        v366 = v236;
        *v235 = 136315138;
        sub_22BB35B30();
        sub_22BCBD270(v237, v238);
        sub_22BDBB684();
        sub_22BB6BAF8();
        v239 = v362;
        (v362)(v171, v343);
        v240 = sub_22BB38B20();
        sub_22BB32EE0(v240, v98, v241);
        sub_22BB3A254();
        sub_22BB692A0();

        *(v235 + 4) = v171;
        _os_log_impl(&dword_22BB2C000, v233, v234, "Could not retrieve the task for event with statement id=%s", v235, 0xCu);
        sub_22BB32FA4(v236);
        sub_22BB380D8();
        sub_22BB35600();
      }

      else
      {

        v239 = v362;
        (v362)(v200, v98);
      }

      sub_22BB5425C();
      sub_22BB58AC4();
      v278();
      v239(v171, v98);
      goto LABEL_30;
    }

    v242 = v328;
    sub_22BCD7DF4(v230, v328);
    v243 = sub_22BDB9744();
    sub_22BBB04DC(v243, v244, v245, v246, v247, v248, v249, v250, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324);
    v252 = v251;

    v253 = sub_22BDB9744();
    v254 = *(v242 + *(v232 + 28));
    v255 = v350;
    v256 = v348;
    v257 = v354;
    v258 = v352;
    (*(v350 + 16))(v348, v354, v352);
    v259 = sub_22BBC975C(v254, v256);
    (*(v255 + 8))(v256, v258);

    sub_22BBB2510(v260, v257, v252, &v366);

    v261 = sub_22BD176A8(v254, v253);
    v262 = v326;
    (*(v349 + 16))(v326, v231, v351);
    v263 = v353;
    sub_22BB69088(&v366, v262 + *(v353 + 20));
    v264 = (v262 + *(v263 + 24));
    v264[3] = _s23PromptResponseRetrieverCMa();
    v264[4] = &off_283F767C8;
    *v264 = v261;
    v265 = (v262 + *(v263 + 28));
    v265[3] = &_s28StatementParameterResolutionVN;
    v265[4] = &off_283F76848;
    *v265 = v259;
    v266 = _s17FastTaskEvaluatorVMa();
    v267 = sub_22BB69FEC((v257 + *(v266 + 24)), *(v257 + *(v266 + 24) + 24));
    v364 = v263;
    v365 = &off_283F7A608;
    sub_22BB8B8A0(&v363);
    sub_22BB3431C();
    sub_22BBCE8A0(v262, v268);
    v269 = *v267;
    v270 = sub_22BB69FEC(&v363, v364);
    v271 = sub_22BBCE950(v254, v270, v269);
    sub_22BB32FA4(&v363);
    v364 = v263;
    v365 = &off_283F7A608;
    v272 = sub_22BB8B8A0(&v363);
    sub_22BBCE8A0(v262, v272);
    v273 = v325;
    sub_22BCD680C(v242, &v363, v271, v360, v355, v325);

    sub_22BB32FA4(&v363);
    v274 = v327;
    if (sub_22BB3AA28(v273, 1, v327) == 1)
    {
      sub_22BB58728(v273, &qword_27D8E3DF0, &qword_22BDC1230);
      sub_22BB32FA4(&v366);
      sub_22BB2F50C();
      v275 = sub_22BB3AD60();
      (v362)(v275);
      sub_22BB30818();
      sub_22BBDB99C(v262, v276);
      v277 = v359;
      *v359 = 1;
    }

    else
    {
      sub_22BB3A6CC();
      v280 = v273;
      v281 = v324;
      sub_22BCD7DF4(v280, v324);
      v282 = *(v274 + 32);
      v283 = sub_22BBE6DE0(&qword_27D8E3D90, &unk_22BDC2EE0);
      v284 = v319;
      sub_22BB336D0(v319, 1, 1, v283);
      static FeedbackLearning.TaskFinalResolutionState.== infix(_:_:)();
      LOBYTE(v282) = v285;
      sub_22BBDB99C(v284, type metadata accessor for FeedbackLearning.TaskFinalResolutionState);
      v286 = v343;
      if ((v282 & 1) == 0)
      {
        sub_22BBE6DE0(&qword_27D8E4330, &qword_22BDD03C0);
        v301 = *(v315 + 72);
        v302 = (*(v315 + 80) + 32) & ~*(v315 + 80);
        v303 = swift_allocObject();
        *(v303 + 16) = xmmword_22BDBCBD0;
        sub_22BB3A6CC();
        sub_22BCD7DF4(v281, v304 + v302);
        sub_22BB32FA4(&v366);
        sub_22BB2F50C();
        (v362)(v341, v286);
        sub_22BB30818();
        sub_22BBDB99C(v262, v305);
        v306 = v359;
        *v359 = 1;
        *(v306 + 1) = v303;
LABEL_40:
        sub_22BB30D44();
        sub_22BBDB99C(v242, v312);
        goto LABEL_32;
      }

      sub_22BDB6404();
      v287 = v316;
      sub_22BBCE8A0(v242, v316);
      sub_22BB35720();
      v288 = v317;
      sub_22BBCE8A0(v281, v317);
      v289 = sub_22BDB77C4();
      v290 = sub_22BDBB0F4();
      if (os_log_type_enabled(v289, v290))
      {
        swift_slowAlloc();
        v291 = sub_22BB3869C();
        LODWORD(v361) = v290;
        v292 = v291;
        v363 = v291;
        *v274 = 136315394;
        v293 = *(v336 + 20);
        sub_22BB35B30();
        sub_22BCBD270(v294, v295);
        sub_22BDBB684();
        sub_22BB6BAF8();
        sub_22BB30D44();
        sub_22BBDB99C(v287, v296);
        sub_22BB32EE0(v287 + v293, v259, &v363);
        sub_22BB3A254();

        sub_22BB34004();
        sub_22BB35720();
        v297 = v314;
        sub_22BBCE8A0(v288, v314);
        sub_22BDBAC14();
        sub_22BB6BAF8();
        sub_22BB327D0();
        sub_22BBDB99C(v288, v298);
        sub_22BB32EE0(v297, v259, &v363);
        sub_22BB3A254();
        v242 = v328;

        *(v274 + 14) = v297;
        _os_log_impl(&dword_22BB2C000, v289, v361, "Task with statement id=%s is incomplete, not generating task evaluation for result=%s", v274, 0x16u);
        swift_arrayDestroy();
        v299 = v341;
        MEMORY[0x2318A6080](v292, -1, -1);
        sub_22BB35600();

        sub_22BB5425C();
        sub_22BB58AC4();
        v300();
      }

      else
      {

        sub_22BB327D0();
        sub_22BBDB99C(v288, v307);
        sub_22BB30D44();
        sub_22BBDB99C(v287, v308);
        sub_22BB5425C();
        sub_22BB58AC4();
        v309();
        v299 = v341;
      }

      sub_22BB327D0();
      sub_22BBDB99C(v324, v310);
      sub_22BB32FA4(&v366);
      sub_22BB2F50C();
      (v362)(v299, v286);
      sub_22BB30818();
      sub_22BBDB99C(v262, v311);
      v277 = v359;
      *v359 = 1;
    }

    *(v277 + 1) = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

  (*(v139 + 8))(v137, v98);
  v142 = v361;
LABEL_10:
  v144 = v344;
  (*(v349 + 16))(v344, v142, v351);
  v145 = v348;
  v146 = v354;
  (*(v350 + 16))(v348, v354, v352);
  v147 = v345;
  sub_22BBB9080(v144, v145, v345);
  v148 = _s17FastTaskEvaluatorVMa();
  v149 = sub_22BB69FEC((v146 + *(v148 + 24)), *(v146 + *(v148 + 24) + 24));
  v150 = sub_22BDB9744();
  v368 = v353;
  v369 = &off_283F7A608;
  sub_22BB8B8A0(&v366);
  sub_22BB3431C();
  sub_22BBCE8A0(v147, v151);
  v152 = *v149;
  v153 = sub_22BB69FEC(&v366, v368);
  v154 = sub_22BBCE950(v150, v153, v152);

  sub_22BB32FA4(&v366);
  sub_22BDB8F24();
  v155 = v346;
  sub_22BDB5F04();
  sub_22BDB9744();
  sub_22BBD5E2C();

  v156 = sub_22BBDB99C(v155, MEMORY[0x277D1D2C8]);
  MEMORY[0x28223BE20](v156);
  *(&v313 - 6) = v146;
  *(&v313 - 5) = v147;
  *(&v313 - 4) = v154;
  *(&v313 - 3) = v138;
  *(&v313 - 2) = v355;
  sub_22BBDB9F4();
  v158 = v157;

  v159 = v359;
  *v359 = 0;
  *(v159 + 1) = v158;
  sub_22BB30818();
  sub_22BBDB99C(v147, v160);
LABEL_32:
  sub_22BBDBC94();
}

void sub_22BBB04DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB30F94();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  sub_22BB2F0C8(v26);
  v28 = *(v27 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v29);
  sub_22BB30B8C(&v221 - v30);
  v229 = sub_22BDB4C84();
  v31 = sub_22BB30444(v229);
  v286 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v35);
  sub_22BB2F39C();
  sub_22BB30B8C(v36);
  v242 = sub_22BDB5404();
  v37 = sub_22BB30444(v242);
  v284 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22BB305A8();
  sub_22BB30B8C(v41);
  v240 = sub_22BDB90B4();
  v42 = sub_22BB30444(v240);
  v280 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22BB305A8();
  sub_22BB30B8C(v46);
  v239 = sub_22BDB4CE4();
  v47 = sub_22BB30444(v239);
  v279 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22BB305A8();
  sub_22BB30B8C(v51);
  v249 = sub_22BDB87F4();
  v52 = sub_22BB30444(v249);
  v278 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22BB305A8();
  sub_22BB30B8C(v56);
  v248 = sub_22BDB8C14();
  v57 = sub_22BB30444(v248);
  v277 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22BB305A8();
  sub_22BB2F14C(v61);
  v62 = sub_22BBE6DE0(&qword_27D8E3EC0, &qword_22BDC1388);
  v275 = sub_22BB30444(v62);
  v276 = v63;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v275);
  sub_22BB30560();
  v288[0] = v66;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v67);
  sub_22BB2F39C();
  v283 = v68;
  sub_22BB2F120();
  v69 = sub_22BDB4C34();
  v70 = sub_22BB30444(v69);
  v72 = v71;
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v70);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v75);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v76);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v77);
  sub_22BB2F384();
  v285 = v78;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v79);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v80);
  sub_22BB2F39C();
  sub_22BB30B8C(v81);
  v82 = sub_22BDB80F4();
  v83 = sub_22BB30444(v82);
  v274 = v84;
  v86 = *(v85 + 64);
  MEMORY[0x28223BE20](v83);
  sub_22BB30574();
  sub_22BB3848C();
  v282 = sub_22BDB8964();
  v87 = sub_22BB30444(v282);
  v273 = v88;
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v87);
  sub_22BB305A8();
  v281 = v91;
  sub_22BB2F120();
  v92 = sub_22BDB89F4();
  v93 = sub_22BB30444(v92);
  v251[0] = v94;
  v96 = *(v95 + 64);
  MEMORY[0x28223BE20](v93);
  sub_22BB30574();
  sub_22BB39768();
  v263 = sub_22BDB9954();
  v97 = sub_22BB30444(v263);
  v99 = v98;
  v101 = *(v100 + 64);
  MEMORY[0x28223BE20](v97);
  sub_22BB305A8();
  sub_22BB30B8C(v102);
  v256[0] = sub_22BDB9B14();
  v103 = sub_22BB30444(v256[0]);
  v105 = v104;
  v107 = *(v106 + 64);
  MEMORY[0x28223BE20](v103);
  sub_22BB305A8();
  sub_22BB2F14C(v108);
  v289 = MEMORY[0x277D84FA0];
  v290 = MEMORY[0x277D84FA0];
  v109 = *(v25 + 16);
  v110 = v72;
  v287 = v72;
  v260 = v109;
  if (v109)
  {
    v111 = sub_22BDB9B54();
    v112 = 0;
    v113 = *(v111 - 8);
    v259 = v25 + ((*(v113 + 80) + 32) & ~*(v113 + 80));
    v258 = v105 + 88;
    v257 = *MEMORY[0x277D1E6F8];
    v253 = *MEMORY[0x277D1E728];
    v245 = *MEMORY[0x277D1E798];
    v238 = v105 + 8;
    v256[1] = v105 + 96;
    v237 = v278 + 32;
    v236 = v280 + 8;
    v235 = v284 + 88;
    v234 = *MEMORY[0x277D1CBE8];
    v233 = v278 + 8;
    v227 = v284 + 8;
    v226 = v284 + 96;
    v225 = v279 + 4;
    v224 = *MEMORY[0x277D1C3B0];
    v223 = v286 + 104;
    v222 = (v286 + 8);
    v221 = v279 + 1;
    v244 = v277 + 32;
    v243 = v277 + 8;
    v252 = v99 + 32;
    v280 = v274 + 88;
    LODWORD(v279) = *MEMORY[0x277D1DAB0];
    v269 = v274 + 8;
    v268[2] = v274 + 96;
    v256[2] = *(v113 + 72);
    v268[1] = v273 + 32;
    v268[0] = v273 + 8;
    v251[1] = v99 + 8;
    v250 = v72 + 8;
    v277 = v251[0] + 8;
    v278 = v251[0] + 16;
    v267 = (v72 + 32);
    v286 = MEMORY[0x277D84F90];
    v114 = v288[0];
    v272 = v21;
    v274 = v92;
    v115 = v256[0];
    v116 = v255;
    v266 = v82;
    while (1)
    {
      v265 = v112;
      sub_22BB3A210(&v289);
      sub_22BDB9B24();
      sub_22BB30F88(v288);
      v117(v110, v115);
      sub_22BB33FE8(&v287 + 4);
      if (v149)
      {
        v118 = sub_22BB38AC4(&v285);
        v119(v118, v115);
        sub_22BB30F88(&v280);
        v120(v262, v110, v263);
        v121 = *(sub_22BDB9914() + 16);
        if (v121)
        {
          sub_22BB2F374();
          v254 = v122;
          v124 = v122 + v123;
          v126 = *(v125 + 72);
          v284 = *(v125 + 16);
          v273 = v126;
          do
          {
            (v284)(v20, v124, v92);
            sub_22BDB89D4();
            v127 = (*v280)(v21, v82);
            if (v127 == v279)
            {
              sub_22BB30F88(&a15);
              v128(v21, v82);
              sub_22BB30F88(&a14);
              v129(v281, v21, v282);
              sub_22BB3A210(&a17);
              sub_22BDB8174();
              sub_22BB3E368(&a18);
              MEMORY[0x2318A2920](v130);
              v131 = *(v275 + 48);
              v132 = *v267;
              v133 = v283;
              (*v267)(v283, v110, v69);
              v110 = v69;
              v132(v133 + v131, v82, v69);
              v134 = v286;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v146 = *(v134 + 16);
                sub_22BB305BC();
                sub_22BD9003C();
                v134 = v147;
              }

              v136 = *(v134 + 16);
              v135 = *(v134 + 24);
              v286 = v134;
              v82 = v266;
              v21 = v272;
              if (v136 >= v135 >> 1)
              {
                sub_22BB2F138(v135);
                sub_22BD9003C();
                v286 = v148;
              }

              v92 = v274;
              sub_22BB30F88(&a13);
              v137(v281, v282);
              v138 = sub_22BB345F0();
              v139(v138);
              *(v286 + 16) = v136 + 1;
              sub_22BB2F374();
              sub_22BBDB5D0(v283, v141 + v140 + *(v142 + 72) * v136, &qword_27D8E3EC0, &qword_22BDC1388);
              v126 = v273;
            }

            else
            {
              v143 = sub_22BB345F0();
              v144(v143);
              sub_22BB30F88(&a16);
              v145(v21, v82);
            }

            v124 += v126;
            --v121;
          }

          while (v121);

          v161 = v287;
          v114 = v288[0];
          v116 = v255;
        }

        else
        {

          v161 = v287;
        }

        sub_22BB30F88(&v279);
        v183(v262, v263);
        v115 = v256[0];
        goto LABEL_32;
      }

      sub_22BB33FE8(&v281 + 4);
      if (v149)
      {
        v150 = sub_22BB38AC4(&v285);
        v151(v150, v115);
        sub_22BB30F88(&v270);
        v110 = v247;
        v152 = sub_22BB3627C();
        v153 = v248;
        v154(v152);
        sub_22BDB8BF4();
        v155 = v285;
        v21 = v272;
        sub_22BBB97EC();
        sub_22BB30F88(&v276);
        v156 = v155;
        v92 = v274;
        v116 = v255;
        v157(v156, v69);
        sub_22BB30F88(&v269);
        v159 = v110;
        v160 = v153;
        v115 = v256[0];
      }

      else
      {
        sub_22BB33FE8(&v271);
        if (v162)
        {
          v163 = sub_22BB38AC4(&v285);
          v164(v163, v115);
          sub_22BB30F88(&v264);
          v165(v246, v110, v249);
          sub_22BB3A210(v268);
          sub_22BDB87E4();
          v166 = v241;
          sub_22BDB9094();
          sub_22BB30F88(&v263);
          v167 = v110;
          v110 = v166;
          v168(v167, v240);
          sub_22BB30F88(&v262);
          v169(v166, v242);
          sub_22BB33FE8(&v261);
          if (v149)
          {
            sub_22BB30F88(&v255);
            v170 = sub_22BB3627C();
            v171(v170);
            sub_22BB30F88(&v254);
            v172(v116, v166, v239);
            v116 = v230;
            sub_22BDB4CD4();
            sub_22BB30F88(&v252);
            v110 = v229;
            v173(v231, v224, v229);
            LODWORD(v284) = sub_22BDB4C74();
            v174 = *v222;
            v175 = sub_22BB3AAD8();
            v174(v175);
            (v174)(v116, v110);
            if (v284)
            {
              sub_22BB3A210(&v277);
              v176 = v246;
              sub_22BDB8794();
              v177 = v285;
              sub_22BBB97EC();
              sub_22BB30F88(&v276);
              v178(v177, v69);
              sub_22BB30F88(v251);
              v179 = sub_22BB394E0();
              v180(v179);
              sub_22BB30F88(&v260);
              v182 = v176;
            }

            else
            {
              sub_22BB30F88(v251);
              v187 = sub_22BB394E0();
              v188(v187);
              sub_22BB30F88(&v260);
              v182 = v246;
            }

            v181(v182, v249);
            v114 = v288[0];
          }

          else
          {
            sub_22BB30F88(&v260);
            v184(v246, v249);
            sub_22BB30F88(v256);
            v185 = sub_22BB3627C();
            v186(v185);
          }

          v92 = v274;
          goto LABEL_31;
        }

        v159 = sub_22BB38AC4(&v265);
        v160 = v115;
      }

      v158(v159, v160);
LABEL_31:
      v161 = v287;
LABEL_32:
      v112 = v265 + 1;
      if (v265 + 1 == v260)
      {
        goto LABEL_35;
      }
    }
  }

  v286 = MEMORY[0x277D84F90];
  v114 = v288[0];
  v161 = v72;
LABEL_35:
  v189 = 0;
  v190 = v161;
  v284 = v161 + 8;
  v191 = v286;
  v282 = *(v286 + 16);
  v192 = &qword_22BDC1388;
  v279 = (v190 + 32);
  v280 = MEMORY[0x277D84F90];
  v193 = v264;
  while (1)
  {
    if (v189 == v282)
    {
      v220 = sub_22BBB1D4C(v290, &v289);

      v288[1] = v280;
      sub_22BBB22A0(v220);
      sub_22BBB2394();

      sub_22BB314EC();
      return;
    }

    if (v189 >= *(v191 + 16))
    {
      break;
    }

    sub_22BB2F374();
    sub_22BBBEE60(v191 + v194 + *(v195 + 72) * v189, v114, &qword_27D8E3EC0, v192);
    v196 = v289;
    if (*(v289 + 16))
    {
      v283 = v189;
      v281 = *(v275 + 48);
      v197 = *(v289 + 40);
      sub_22BB36584();
      sub_22BCB6774(&qword_28142DD18, v198);

      v199 = sub_22BDBABA4();
      v200 = ~(-1 << *(v196 + 32));
      while (1)
      {
        v201 = v199 & v200;
        if (((*(v196 + 56 + (((v199 & v200) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v199 & v200)) & 1) == 0)
        {
          break;
        }

        v202 = v287;
        v203 = *(v287 + 16);
        v204 = v285;
        v203(v285, *(v196 + 48) + *(v287 + 72) * v201, v69);
        sub_22BB36584();
        sub_22BCB6774(&qword_28142DD10, v205);
        v206 = sub_22BDBABD4();
        (*(v202 + 8))(v204, v69);
        v199 = v201 + 1;
        if (v206)
        {

          v114 = v288[0];
          v193 = v264;
          v203(v264, v288[0] + v281, v69);
          v207 = 0;
          goto LABEL_45;
        }
      }

      v207 = 1;
      v193 = v264;
      v114 = v288[0];
LABEL_45:
      v191 = v286;
      v189 = v283;
      v192 = &qword_22BDC1388;
    }

    else
    {
      v207 = 1;
    }

    ++v189;
    sub_22BB336D0(v193, v207, 1, v69);
    sub_22BB58728(v114, &qword_27D8E3EC0, v192);
    sub_22BB31814(v193, 1, v69);
    if (v149)
    {
      sub_22BB58728(v193, &qword_27D8E27C0, &qword_22BDBCDF0);
    }

    else
    {
      v208 = v192;
      v209 = *v279;
      v210 = v228;
      (*v279)(v228, v193, v69);
      v209(v232, v210, v69);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v217 = *(v280 + 16);
        sub_22BB305BC();
        sub_22BBB22CC();
        v280 = v218;
      }

      v213 = *(v280 + 16);
      v212 = *(v280 + 24);
      if (v213 >= v212 >> 1)
      {
        sub_22BB2F138(v212);
        sub_22BBB22CC();
        v280 = v219;
      }

      *(v280 + 16) = v213 + 1;
      sub_22BB2F374();
      v209(v215 + v214 + *(v216 + 72) * v213, v232, v69);
      v114 = v288[0];
      v192 = v208;
    }
  }

  __break(1u);
}

uint64_t sub_22BBB1804()
{
  sub_22BBB92F0();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22BBB1830()
{
  sub_22BBB9470();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22BBB186C()
{
  sub_22BBB9568();
  v1 = *(v0 + 16);

  sub_22BB6B8A8(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime21DefaultEventLogSender_id);
  return v0;
}

uint64_t sub_22BBB18A0()
{
  sub_22BBB186C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22BBB18F8(char a1)
{
  v3 = sub_22BDBAA14();
  v4 = sub_22BB30444(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v11 = v10 - v9;
  v27 = sub_22BDBAA44();
  v12 = sub_22BB30444(v27);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BB30574();
  v19 = v18 - v17;
  v26 = *(v1 + OBJC_IVAR____TtC23IntelligenceFlowRuntime19DefaultEventHandler_subscriptionQueue);
  v20 = swift_allocObject();
  *(v20 + 16) = v1;
  *(v20 + 24) = a1 & 1;
  sub_22BB33C94(v20);
  sub_22BB32B78(COERCE_DOUBLE(1107296256));
  v29 = v21;
  v30 = &unk_283F762B8;
  v22 = _Block_copy(aBlock);

  sub_22BDBAA34();
  sub_22BB322BC();
  sub_22BB6B80C(v23, v24);
  sub_22BBE6DE0(&qword_27D8E3C50, &unk_22BDC0D90);
  sub_22BB6B854(&qword_2814287F0, &qword_27D8E3C50, &unk_22BDC0D90);
  sub_22BB31C54();
  sub_22BDBB2B4();
  MEMORY[0x2318A5160](0, v19, v11, v22);
  _Block_release(v22);
  (*(v6 + 8))(v11, v3);
  (*(v14 + 8))(v19, v27);
}

uint64_t sub_22BBB1B4C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_22BBB1B84()
{
  sub_22BBB9770();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22BBB1BE8(uint64_t a1, char a2)
{
  v4 = sub_22BDB77D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22BDB6384();
  v9 = sub_22BDB77C4();
  v10 = sub_22BDBB104();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22BB2C000, v9, v10, "Subscribers: Received completion", v11, 2u);
    MEMORY[0x2318A6080](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v14[15] = a2 & 1;
  v12 = *(a1 + OBJC_IVAR____TtC23IntelligenceFlowRuntime19DefaultEventHandler_subscriber);
  return sub_22BDB9E74();
}

uint64_t sub_22BBB1D4C(uint64_t a1, uint64_t *a2)
{
  v54 = a2;
  v3 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v44 - v5;
  v7 = sub_22BDB4C34();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v47 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v57 = &v44 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v45 = &v44 - v15;
  MEMORY[0x28223BE20](v14);
  v63 = &v44 - v16;
  v17 = a1 + 56;
  v18 = 1 << *(a1 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(a1 + 56);
  v21 = (v18 + 63) >> 6;
  v61 = v8 + 16;
  v62 = (v8 + 8);
  v46 = (v8 + 32);

  v23 = 0;
  v48 = MEMORY[0x277D84F90];
  v49 = a1 + 56;
  v58 = v7;
  v52 = a1;
  v53 = v21;
  v50 = v8;
  v51 = v6;
LABEL_5:
  v24 = v23;
  if (!v20)
  {
    goto LABEL_7;
  }

  do
  {
    v23 = v24;
LABEL_10:
    v56 = v20;
    v25 = *(a1 + 48) + *(v8 + 72) * (__clz(__rbit64(v20)) | (v23 << 6));
    v26 = *(v8 + 16);
    v59 = *(v8 + 72);
    v60 = v26;
    v26(v63, v25, v7);
    v27 = *v54;
    v28 = *(*v54 + 16);
    v55 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v28)
    {
      v29 = *(v27 + 40);
      sub_22BCB6774(&qword_28142DD18, MEMORY[0x277D1C338]);

      v30 = sub_22BDBABA4();
      v31 = ~(-1 << *(v27 + 32));
      while (1)
      {
        v32 = v30 & v31;
        if (((*(v27 + 56 + (((v30 & v31) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v30 & v31)) & 1) == 0)
        {
          break;
        }

        v33 = v58;
        v34 = v57;
        v60(v57, *(v27 + 48) + v32 * v59, v58);
        sub_22BCB6774(&qword_28142DD10, MEMORY[0x277D1C338]);
        v35 = sub_22BDBABD4();
        v36 = *v62;
        (*v62)(v34, v33);
        v30 = v32 + 1;
        if (v35)
        {

          v6 = v51;
          v7 = v58;
          v60(v51, v63, v58);
          sub_22BB336D0(v6, 0, 1, v7);
          a1 = v52;
          v17 = v49;
          v8 = v50;
          goto LABEL_17;
        }
      }

      v6 = v51;
      a1 = v52;
      v17 = v49;
      v8 = v50;
      v7 = v58;
    }

    sub_22BB336D0(v6, 1, 1, v7);
    v36 = *v62;
LABEL_17:
    v20 = (v56 - 1) & v56;
    v36(v63, v7);
    if (sub_22BB3AA28(v6, 1, v7) != 1)
    {
      v56 = v20;
      v37 = v45;
      v38 = *v46;
      (*v46)(v45, v6, v7);
      v38(v47, v37, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = *(v48 + 16);
        sub_22BBB22CC();
        v48 = v42;
      }

      v39 = *(v48 + 16);
      if (v39 >= *(v48 + 24) >> 1)
      {
        sub_22BBB22CC();
        v48 = v43;
      }

      v40 = v48;
      *(v48 + 16) = v39 + 1;
      v7 = v58;
      result = (v38)(v40 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v39 * v59, v47, v58);
      v21 = v53;
      v20 = v56;
      goto LABEL_5;
    }

    result = sub_22BB58728(v6, &qword_27D8E27C0, &qword_22BDBCDF0);
    v24 = v23;
    v21 = v53;
  }

  while (v20);
LABEL_7:
  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      return v48;
    }

    v20 = *(v17 + 8 * v23);
    ++v24;
    if (v20)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_22BBB22CC()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_22BB36EDC(v2, v5, &qword_27D8E5EE0, &unk_22BDCCD60);
  sub_22BB38F5C();
  v9 = sub_22BDB4C34();
  sub_22BB314BC(v9);
  v11 = *(v10 + 80);
  sub_22BB2F390();
  if (v1)
  {
    v13 = sub_22BB32D98(v12);
    sub_22BD2761C(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BBB2394()
{
  sub_22BB30F94();
  sub_22BB35760();
  v5 = sub_22BDB4C34();
  v6 = sub_22BB30444(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB30C74();
  sub_22BB3E4D0();
  MEMORY[0x28223BE20](v11);
  sub_22BB72E1C();
  sub_22BB31D8C();
  sub_22BBB9968(v12, v13);
  v14 = sub_22BB2F3F0();
  MEMORY[0x2318A5070](v14);
  v15 = *(v0 + 16);
  if (v15)
  {
    v16 = *(v8 + 16);
    v17 = *(v8 + 80);
    sub_22BB2F390();
    sub_22BB32E54();
    do
    {
      v16(v1, v3, v5);
      sub_22BB3AAD8();
      sub_22BBB97EC();
      (*v0)(v2, v5);
      v3 += v4;
      --v15;
    }

    while (v15);
  }

  sub_22BB314EC();
}

uint64_t sub_22BBB2510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v435 = a2;
  v434 = a4;
  v511 = type metadata accessor for FeedbackLearning.ActionValue(0);
  v6 = sub_22BB2F330(v511);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  v11 = v10 - v9;
  v481 = sub_22BBE6DE0(&qword_27D8E42E8, &qword_22BDC2CE0);
  v12 = sub_22BB2F330(v481);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v15);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v16);
  sub_22BB2F39C();
  v478 = v17;
  v488 = sub_22BBE6DE0(&qword_27D8E42F0, &unk_22BDC2CE8);
  v18 = sub_22BB2F330(v488);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v21);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v22);
  sub_22BB2F39C();
  sub_22BB30B8C(v23);
  v24 = sub_22BDB8D84();
  v25 = sub_22BB30444(v24);
  v491 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BB305A8();
  sub_22BB30B8C(v29);
  v425 = sub_22BDB77D4();
  v30 = sub_22BB30444(v425);
  v496 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BB305A8();
  v428 = v34;
  v35 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  sub_22BB30B8C(&v412 - v37);
  v452 = sub_22BDB5404();
  v38 = sub_22BB30444(v452);
  v476 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v42);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v43);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v44);
  sub_22BB2F39C();
  sub_22BB30B8C(v45);
  v447 = sub_22BDB90B4();
  v46 = sub_22BB30444(v447);
  v475 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22BB305A8();
  sub_22BB30B8C(v50);
  v459 = sub_22BDB87F4();
  v51 = sub_22BB30444(v459);
  v53 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v56);
  sub_22BB2F39C();
  sub_22BB30B8C(v57);
  v498 = sub_22BDB4C34();
  v58 = sub_22BB30444(v498);
  v60 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v58);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v63);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v64);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v65);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v66);
  sub_22BB2F39C();
  sub_22BB30B8C(v67);
  v497 = sub_22BDB81A4();
  v68 = sub_22BB30444(v497);
  v70 = v69;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v68);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v73);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v74);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v75);
  sub_22BB2F39C();
  sub_22BB30B8C(v76);
  v501 = sub_22BDB43E4();
  v77 = sub_22BB30444(v501);
  v79 = v78;
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v77);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v82);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v83);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v84);
  sub_22BB2F39C();
  sub_22BB30B8C(v85);
  v507 = sub_22BDB9564();
  v86 = sub_22BB30444(v507);
  v88 = v87;
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v86);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v91);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v92);
  sub_22BB2F384();
  v503 = v93;
  MEMORY[0x28223BE20](v94);
  sub_22BB2F39C();
  sub_22BB30B8C(v95);
  v505 = sub_22BDB9B14();
  v96 = sub_22BB30444(v505);
  v98 = v97;
  v100 = *(v99 + 64);
  MEMORY[0x28223BE20](v96);
  sub_22BB305A8();
  v504 = v101;
  sub_22BB2F120();
  v506 = sub_22BDB9B54();
  v102 = sub_22BB30444(v506);
  v104 = *(v103 + 64);
  v105 = MEMORY[0x28223BE20](v102);
  MEMORY[0x28223BE20](v105);
  v514 = MEMORY[0x277D84FA0];
  v515 = MEMORY[0x277D84FA0];
  v109 = *(a1 + 16);
  v512 = v11;
  v460 = v70;
  v509 = v60;
  v510 = v88;
  v499 = v79;
  v502 = v109;
  v470 = a3;
  v436 = a1;
  if (v109)
  {
    v508 = &v412 - v106;
    v421 = v107;
    v437 = v24;
    v110 = 0;
    v500 = *(v108 + 16);
    v111 = *(v108 + 80);
    sub_22BB2F390();
    v494 = (a1 + v112);
    v493 = v98 + 88;
    v490 = (v113 - 8);
    v433 = v98 + 8;
    v483 = v98 + 96;
    v432 = v491 + 32;
    v450 = v476 + 16;
    v449 = v476 + 88;
    LODWORD(v492) = *MEMORY[0x277D1E710];
    v464 = (v60 + 8);
    v451 = (v476 + 8);
    v469 = *MEMORY[0x277D1E7A0];
    v431 = v491 + 8;
    v420 = a3 + 7;
    v456 = *MEMORY[0x277D1E798];
    v463 = v60 + 16;
    v444 = v53 + 32;
    v443 = *MEMORY[0x277D1E7C0];
    v442 = v475 + 1;
    v418 = v79 + 32;
    v448[1] = *MEMORY[0x277D1CBF0];
    v457[0] = v79 + 16;
    v474 = v79 + 8;
    v448[0] = *MEMORY[0x277D1CBE8];
    v441 = (v53 + 8);
    v417 = v53 + 16;
    v419 = v496 + 8;
    v462 = (v70 + 32);
    *&v114 = 136315394;
    v416 = v114;
    v455 = v70 + 16;
    v454 = v70 + 8;
    v440 = v70 + 40;
    v475 = (v88 + 32);
    v468 = v88 + 16;
    v467 = v88 + 8;
    v115 = MEMORY[0x277D84F98];
    v491 = *(v113 + 56);
    v476 = MEMORY[0x277D84F98];
    v453 = v88 + 40;
    v116 = v511;
    sub_22BB52E78();
    sub_22BB6B6A4();
    v117 = v506;
    v495 = v118;
    while (1)
    {
      v500(v508, v494 + v491 * v110, v117);
      v117 = v504;
      sub_22BDB9B24();
      v119 = sub_22BB355C8(&v518);
      v120 = v505;
      v121(v119, v505);
      sub_22BB33FE8(&v517);
      if (v133)
      {
        break;
      }

      sub_22BB33FE8(&v501 + 4);
      v496 = v115;
      if (v133)
      {
        v134 = sub_22BB31140();
        v135(v134);
        v136 = *v462;
        v137 = v471;
        v138 = v497;
        (*v462)(v471, v117, v497);
        v117 = v457[1];
        sub_22BDB8174();
        sub_22BB30F88(&v486);
        v139(v472, v137, v138);
        v140 = v476;
        swift_isUniquelyReferenced_nonNull_native();
        v513 = v140;
        sub_22BBDAE68();
        if (__OFADD__(*(v140 + 16), (v142 & 1) == 0))
        {
          goto LABEL_136;
        }

        v143 = v141;
        v88 = v142;
        sub_22BBE6DE0(&qword_27D8E42F8, &qword_22BDC2CF8);
        if (sub_22BB52994())
        {
          v140 = v513;
          sub_22BBDAE68();
          sub_22BB3A228();
          v11 = v512;
          v115 = v496;
          v145 = v464;
          if (!v133)
          {
            goto LABEL_139;
          }

          v143 = v144;
        }

        else
        {
          v11 = v512;
          v115 = v496;
          v145 = v464;
        }

        v476 = v513;
        if (v88)
        {
          v237 = sub_22BB3750C(*(v513 + 56));
          (*(v140 + 40))(v237, v472, v497);
          (*v145)(v117, v498);
          v194 = sub_22BB3B394();
LABEL_48:
          v238 = *(v196 - 32) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v195(v194);
          v239 = sub_22BB307E0();
          v240(v239);
          goto LABEL_49;
        }

        sub_22BB37698(v513 + 8 * (v143 >> 6));
        v88 = v509;
        (*(v509 + 16))(*(v241 + 48) + *(v509 + 72) * v143, v117, v498);
        v242 = sub_22BB3750C(*(v476 + 56));
        v136(v242, v472, v497);
        v243 = *(v88 + 8);
        v244 = sub_22BB362AC();
        v245(v244);
        v246 = sub_22BB3B394();
        v248 = *(v247 - 256) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v249(v246);
        v250 = sub_22BB307E0();
        v251(v250);
        v252 = *(v476 + 16);
        v206 = __OFADD__(v252, 1);
        v253 = v252 + 1;
        if (v206)
        {
          goto LABEL_138;
        }

        *(v476 + 16) = v253;
        v116 = v511;
        v115 = v496;
LABEL_50:
        sub_22BB52E78();
        v70 = v489;
        goto LABEL_63;
      }

      sub_22BB33FE8(&v487 + 4);
      if (v146)
      {
        v147 = sub_22BB31140();
        v148(v147);
        sub_22BB30F88(&v475);
        v149 = sub_22BB36DCC();
        v150(v149);
        sub_22BB3E368(&v477);
        sub_22BDB87E4();
        sub_22BDB9094();
        sub_22BB30F88(&v473);
        v151(v116, v447);
        v117 = v445;
        sub_22BDB8794();
        sub_22BB30F88(&v481);
        v152 = v452;
        v153(v88, v70, v452);
        sub_22BB30F88(&v480);
        v154(v88, v152);
        sub_22BB33FE8(&v479 + 4);
        if (v133)
        {
          v156 = 1;
        }

        else
        {
          v156 = v155 == v448[0];
        }

        if (!v156)
        {
          v254 = sub_22BB355C8(&v496);
          v255(v254, v498);
          v256 = v152;
          v257 = sub_22BB340C0(&v482);
          v152(v257);
          v258 = v88;
          goto LABEL_53;
        }

        v79 = v451;
        v157 = *v451;
        (*v451)(v88, v152);
        sub_22BBBCB1C();
        v88 = v152;
        v159 = v158;
        v426 = *v464;
        v426(v117, v498);
        sub_22BB52E78();
        v157();
        if ((v159 & 1) == 0)
        {
          sub_22BB3E368(&v460);
          v160 = v458;
          sub_22BDB87D4();
          v161 = v159;
          v162 = v159;
          v152 = v501;
          v163 = sub_22BB3AA28(v162, 1, v501);
          v164 = v459;
          if (v163 == 1)
          {
            sub_22BB58728(v161, &qword_27D8E3218, &qword_22BDBE390);
            v165 = v428;
            sub_22BDB6404();
            sub_22BB30F88(v446);
            v166 = v160;
            v167 = v424;
            v168(v424, v166, v164);
            v117 = v506;
            v500(v421, v508, v506);
            v169 = sub_22BDB77C4();
            v170 = sub_22BDBB104();
            v171 = sub_22BB31F54();
            if (os_log_type_enabled(v171, v172))
            {
              v88 = swift_slowAlloc();
              v415 = swift_slowAlloc();
              v513 = v415;
              *v88 = v416;
              v413 = v169;
              sub_22BB3E368(&v493);
              v414 = v170;
              sub_22BDB8794();
              sub_22BB33D70();
              sub_22BCD3F54(&qword_27D8E2F68, v173);
              v174 = v498;
              sub_22BDBB684();
              v426(v169, v174);
              v426 = *v441;
              v175 = v167;
              v176 = v459;
              v426(v175, v459);
              v177 = sub_22BB53C48();
              v180 = sub_22BB32EE0(v177, v178, v179);

              *(v88 + 4) = v180;
              *(v88 + 12) = 2080;
              sub_22BB3E368(v457);
              v181 = v421;
              sub_22BDB8F24();
              sub_22BCD3F54(&qword_28142DD38, MEMORY[0x277CC95F0]);
              v182 = v501;
              sub_22BDBB684();
              sub_22BB30F88(&v506);
              v183(v169, v182);
              v184 = v176;
              v70 = *v490;
              (*v490)(v181, v117);
              v185 = sub_22BB53C48();
              v188 = sub_22BB32EE0(v185, v186, v187);
              v115 = v496;

              *(v88 + 14) = v188;
              v189 = v413;
              _os_log_impl(&dword_22BB2C000, v413, v414, "Statement result with an executed outcome is not referencing an action in %s, eventId=%s", v88, 0x16u);
              v79 = v415;
              swift_arrayDestroy();
              sub_22BB2F368();
              MEMORY[0x2318A6080]();
              sub_22BB52E78();
              sub_22BB2F368();
              MEMORY[0x2318A6080]();

              sub_22BB30F88(v448);
              v190(v428, v425);
              v426(v458, v184);
              (v70)(v508, v117);
            }

            else
            {

              v281 = *v490;
              (*v490)(v421, v117);
              v79 = v117;
              v282 = *v441;
              v283 = v167;
              v70 = v459;
              (*v441)(v283, v459);
              sub_22BB30F88(v448);
              v284(v165, v425);
              v282(v458, v70);
              v281(v508, v117);
            }

            v116 = v511;
            v11 = v512;
            goto LABEL_62;
          }

          sub_22BB30F88(&v447);
          v117 = v422;
          v271(v422, v161, v152);
          sub_22BB30F88(&v488);
          v272 = sub_22BB36DCC();
          v273(v272);
          v70 = v427;
          sub_22BD2B944();
          v256 = v152;
          v274 = sub_22BB340C0(&v506);
          v152(v274);
          v258 = v117;
LABEL_53:
          (v152)(v258, v256);
        }

        sub_22BB30F88(&v472);
        v259(v458, v459);
        v260 = sub_22BB307E0();
        v261(v260);
        v116 = v511;
LABEL_62:
        sub_22BB6B6A4();
        goto LABEL_63;
      }

      sub_22BB33FE8(&v474 + 4);
      if (v208)
      {
        v209 = sub_22BB31140();
        v210(v209);
        sub_22BB30F88(&v462);
        v211 = v439;
        v88 = v437;
        v212(v439, v117, v437);
        v117 = v438;
        sub_22BDB8D44();
        v213 = v465;
        sub_22BDB8174();
        sub_22BB30F88(&v481);
        v214 = sub_22BB36DCC();
        v215 = v452;
        v216(v214);
        sub_22BB30F88(&v480);
        v217 = sub_22BB94E38();
        v218(v217);
        sub_22BB33FE8(&v479 + 4);
        if (v133)
        {
          v220 = 1;
        }

        else
        {
          v220 = v219 == v448[0];
        }

        if (v220)
        {
          v221 = *v451;
          v222 = sub_22BB94E38();
          v426 = v223;
          (v223)(v222);
          v224 = v464;
          if (v470[2])
          {
            v225 = v470[5];
            sub_22BB33D70();
            v227 = v226;
            sub_22BCD3F54(&qword_28142DD18, v228);
            v229 = sub_22BDBABA4();
            v230 = ~(-1 << *(v227 + 32));
            v117 = v420;
            do
            {
              v70 = v229 & v230;
              v231 = (1 << (v229 & v230)) & *(v117 + (((v229 & v230) >> 3) & 0xFFFFFFFFFFFFFF8));
              v88 = v231 != 0;
              if (!v231)
              {
                break;
              }

              v232 = v509;
              v79 = v461;
              v233 = v498;
              (*(v509 + 16))(v461, v470[6] + *(v509 + 72) * v70, v498);
              sub_22BB33D70();
              sub_22BCD3F54(&qword_28142DD10, v234);
              v235 = sub_22BDBABD4();
              v236 = *(v232 + 8);
              v115 = v496;
              v236(v79, v233);
              v229 = v70 + 1;
            }

            while ((v235 & 1) == 0);
          }

          else
          {
            v88 = 0;
          }

          v275 = *v224;
          v276 = v498;
          (*v224)(v465, v498);
          v426(v438, v452);
          if (v88)
          {
            sub_22BB30F88(&v461);
            v278 = v439;
          }

          else
          {
            v70 = v423;
            v88 = v439;
            sub_22BDB8174();
            v79 = v461;
            sub_22BB35470();
            sub_22BBB97EC();
            v275(v79, v276);
            sub_22BB30F88(&v461);
            v278 = v88;
          }

          v277(v278, v437);
          v279 = sub_22BB307E0();
          v280(v279);
          v116 = v511;
          v11 = v512;
        }

        else
        {
          sub_22BB30F88(&v496);
          v265(v213, v498);
          v70 = v211;
          v266 = *v451;
          (*v451)(v117, v215);
          sub_22BB30F88(&v461);
          v267(v70, v88);
          v268 = sub_22BB307E0();
          v269(v268);
          v270 = sub_22BB94E38();
          (v266)(v270);
          v116 = v511;
        }

        sub_22BB52E78();
        goto LABEL_62;
      }

      sub_22BB30F88(&v516);
      v262 = v117;
      v117 = v506;
      v263(v508, v506);
      sub_22BB30F88(&v463);
      v264(v262, v120);
LABEL_63:
      if (++v110 == v502)
      {
        goto LABEL_68;
      }
    }

    v122 = sub_22BB31140();
    v123(v122);
    v124 = *v475;
    v125 = v507;
    (*v475)(v79, v117, v507);
    v126 = v473;
    sub_22BDB8F24();
    sub_22BB30F88(&v500);
    v127(v503, v79, v125);
    swift_isUniquelyReferenced_nonNull_native();
    v513 = v115;
    v128 = v115;
    sub_22BD84660();
    if (__OFADD__(*(v115 + 16), (v130 & 1) == 0))
    {
      goto LABEL_135;
    }

    v131 = v129;
    v88 = v130;
    sub_22BBE6DE0(&qword_27D8E4300, &qword_22BDC2D00);
    if (sub_22BB52994())
    {
      v128 = v513;
      sub_22BD84660();
      sub_22BB3A228();
      v11 = v512;
      if (!v133)
      {
        goto LABEL_139;
      }

      v131 = v132;
    }

    else
    {
      v11 = v512;
    }

    v115 = v513;
    if (v88)
    {
      v191 = sub_22BB39790();
      (*(v128 + 40))(v191, v503, v507);
      sub_22BB30F88(&v506);
      v192(v126, v501);
      v193 = *(v128 + 8);
      v194 = sub_22BB94E38();
      v196 = &v499;
      goto LABEL_48;
    }

    sub_22BB37698(v513 + 8 * (v131 >> 6));
    v197 = v499;
    v88 = v501;
    (*(v499 + 16))(*(v115 + 48) + *(v499 + 72) * v131, v126, v501);
    v198 = sub_22BB39790();
    v124(v198, v503, v507);
    v199 = *(v197 + 8);
    v79 = v466;
    v199(v126, v88);
    v200 = *(v128 + 8);
    v201 = sub_22BB94E38();
    v202(v201);
    v203 = sub_22BB307E0();
    v204(v203);
    v205 = *(v115 + 16);
    v206 = __OFADD__(v205, 1);
    v207 = v205 + 1;
    if (v206)
    {
      goto LABEL_137;
    }

    *(v115 + 16) = v207;
LABEL_49:
    v116 = v511;
    goto LABEL_50;
  }

  v115 = MEMORY[0x277D84F98];
  v476 = MEMORY[0x277D84F98];
LABEL_68:
  v482 = sub_22BBB9F78(v436, v470);
  v496 = v115;
  v285 = sub_22BBC0978(v115, &v515, sub_22BBC0C10, sub_22BBC0C10);
  v286 = *(v285 + 16);
  if (v286)
  {
    v475 = 0;
    sub_22BB58868();
    sub_22BD28280();
    v508 = v513;
    v289 = sub_22BDB1D48(v285);
    v290 = 0;
    v291 = (v285 + 64);
    v292 = v499;
    v495 = v499 + 16;
    v293 = v510;
    v494 = (v510 + 16);
    v493 = v499 + 32;
    v294 = v510 + 32;
    v492 = (v499 + 8);
    v483 = v285 + 72;
    v489 = v286;
    v490 = (v285 + 64);
    v491 = v285;
    if ((v289 & 0x8000000000000000) == 0)
    {
      while (v289 < 1 << *(v285 + 32))
      {
        if ((v291[v289 >> 6] & (1 << v289)) == 0)
        {
          goto LABEL_124;
        }

        if (*(v285 + 36) != v287)
        {
          goto LABEL_125;
        }

        v504 = 1 << v289;
        v505 = v289 >> 6;
        LODWORD(v500) = v288;
        v502 = v290;
        v503 = v287;
        v295 = v488;
        v296 = *(v488 + 48);
        v297 = v485;
        v298 = v294;
        v299 = v501;
        (*(v292 + 16))(v485, *(v285 + 48) + *(v292 + 72) * v289, v501);
        v300 = *(v285 + 56);
        v506 = *(v293 + 72);
        v301 = v507;
        (*(v293 + 16))(v297 + v296, v300 + v506 * v289, v507);
        v302 = v486;
        (*(v292 + 32))(v486, v297, v299);
        v303 = v293;
        v304 = v292;
        v305 = *(v303 + 32);
        v305(v302 + *(v295 + 48), v297 + v296, v301);
        v306 = v302;
        v307 = v484;
        v308 = v487;
        sub_22BBCD82C(v306, v487, &qword_27D8E42F0, &unk_22BDC2CE8);
        v305(v307, v308 + *(v295 + 48), v301);
        (*(v304 + 8))(v308, v299);
        v309 = v508;
        v513 = v508;
        v311 = *(v508 + 2);
        v310 = *(v508 + 3);
        if (v311 >= v310 >> 1)
        {
          sub_22BB2F158(v310);
          sub_22BD28280();
          v309 = v513;
        }

        *(v309 + 2) = v311 + 1;
        v312 = *(v510 + 80);
        sub_22BB2F390();
        v508 = v313;
        v305(&v313[v314 + v311 * v506], v307, v301);
        v285 = v491;
        v315 = 1 << *(v491 + 32);
        if (v289 >= v315)
        {
          goto LABEL_126;
        }

        v291 = v490;
        if ((v490[v505] & v504) == 0)
        {
          goto LABEL_127;
        }

        if (*(v491 + 36) != v503)
        {
          goto LABEL_128;
        }

        v294 = v298;
        sub_22BB5424C();
        if (v133)
        {
          v320 = v318 << 6;
          v321 = v318 + 1;
          v322 = (v483 + 8 * v318);
          v11 = v512;
          v319 = v489;
          while (v321 < (v315 + 63) >> 6)
          {
            v324 = *v322++;
            v323 = v324;
            v320 += 64;
            ++v321;
            if (v324)
            {
              sub_22BBBFEB0(v289, v316, v500 & 1);
              v315 = __clz(__rbit64(v323)) + v320;
              goto LABEL_85;
            }
          }

          sub_22BBBFEB0(v289, v316, v500 & 1);
        }

        else
        {
          v315 = __clz(__rbit64(v317)) | v289 & 0x7FFFFFFFFFFFFFC0;
          v11 = v512;
          v319 = v489;
        }

LABEL_85:
        v290 = v502 + 1;
        if (v502 + 1 == v319)
        {

          goto LABEL_90;
        }

        v288 = 0;
        v287 = *(v285 + 36);
        v289 = v315;
        v293 = v510;
        v292 = v499;
        if (v315 < 0)
        {
          break;
        }
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
  }

  else
  {

    v508 = MEMORY[0x277D84F90];
LABEL_90:
    v325 = *(sub_22BBC0978(v476, &v514, sub_22BBC1668, sub_22BBC1668) + 16);
    v326 = v509;
    if (!v325)
    {

      v329 = MEMORY[0x277D84F90];
LABEL_112:
      v370 = *(v508 + 2);
      v506 = v329;
      if (v370)
      {
        sub_22BB58868();
        v372 = v371;
        sub_22BDBB414();
        v374 = v510 + 16;
        v373 = *(v510 + 16);
        v375 = *(v510 + 80);
        sub_22BB2F390();
        v377 = v372 + v376;
        v510 = *(v374 + 56);
        v511 = v378;
        v379 = v507;
        v380 = v429;
        do
        {
          v381 = sub_22BB362AC();
          v382 = v511;
          v511(v381);
          v382(v11, v380, v379);
          swift_storeEnumTagMultiPayload();
          v383 = _s13ActionCreatedCMa(0);
          v384 = *(v383 + 48);
          v385 = *(v383 + 52);
          v386 = swift_allocObject();
          *(v386 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated____lazy_storage___parameters) = 0;
          sub_22BB38DF4(v386, OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated_action);
          (*(v374 - 8))(v380, v379);
          sub_22BDBB3F4();
          v387 = *(v513 + 16);
          sub_22BDBB424();
          v11 = v512;
          sub_22BDBB434();
          sub_22BDBB404();
          v377 += v510;
          --v370;
        }

        while (v370);

        v388 = v513;
        v329 = v506;
      }

      else
      {

        v388 = MEMORY[0x277D84F90];
      }

      v389 = *(v329 + 16);
      if (v389)
      {
        v509 = v388;
        sub_22BB58868();
        sub_22BDBB414();
        v391 = v460 + 16;
        v390 = *(v460 + 16);
        v392 = *(v460 + 80);
        sub_22BB2F390();
        v395 = v394 + v393;
        v510 = *(v391 + 56);
        v511 = v396;
        v397 = v497;
        v398 = v430;
        do
        {
          v399 = v511;
          (v511)(v398, v395, v397);
          v399(v11, v398, v397);
          swift_storeEnumTagMultiPayload();
          v400 = _s13ActionCreatedCMa(0);
          v401 = *(v400 + 48);
          v402 = *(v400 + 52);
          v403 = swift_allocObject();
          *(v403 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated____lazy_storage___parameters) = 0;
          sub_22BB38DF4(v403, OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated_action);
          (*(v391 - 8))(v398, v397);
          sub_22BDBB3F4();
          v404 = *(v513 + 16);
          sub_22BDBB424();
          v11 = v512;
          sub_22BDBB434();
          sub_22BDBB404();
          v395 += v510;
          --v389;
        }

        while (v389);

        v405 = v513;
        v388 = v509;
      }

      else
      {

        v405 = MEMORY[0x277D84F90];
      }

      v513 = v388;
      sub_22BBC20BC(v405);
      v406 = v513;
      v407 = _s14ActionExecutedVMa(0);
      v408 = v434;
      v434[3] = v407;
      v408[4] = &off_283F76760;
      sub_22BB8B8A0(v408);
      sub_22BB30F68();
      v409 = sub_22BDB9C14();
      sub_22BB2F330(v409);
      (*(v410 + 16))(&v513, v435);
      *(&v513 + v407[5]) = v482;
      *(&v513 + v407[6]) = v406;
      *(&v513 + v407[7]) = v470;
    }

    sub_22BB58868();
    v328 = v327;
    sub_22BD28228();
    v329 = v513;
    v330 = sub_22BDB1D48(v328);
    v333 = 0;
    v505 = v328 + 64;
    v494 = v326 + 2;
    v493 = v460 + 16;
    v492 = v326 + 4;
    v334 = v460;
    v491 = v460 + 32;
    v490 = v326 + 1;
    v488 = v328 + 72;
    v489 = v325;
    if ((v330 & 0x8000000000000000) == 0)
    {
      while (v330 < 1 << *(v328 + 32))
      {
        if ((*(v505 + 8 * (v330 >> 6)) & (1 << v330)) == 0)
        {
          goto LABEL_130;
        }

        if (*(v328 + 36) != v331)
        {
          goto LABEL_131;
        }

        v501 = 1 << v330;
        v502 = v330 >> 6;
        LODWORD(v495) = v332;
        v499 = v333;
        v500 = v331;
        v335 = v481;
        v336 = *(v481 + 48);
        v337 = *(v328 + 48) + v326[9] * v330;
        v338 = v326[2];
        v506 = v329;
        v339 = v326;
        v340 = v478;
        v341 = v330;
        v342 = v498;
        v343 = v328;
        v338(v478, v337, v498);
        v344 = *(v328 + 56);
        v503 = *(v334 + 72);
        v504 = v341;
        v345 = v497;
        (*(v334 + 16))(v340 + v336, v344 + v503 * v341, v497);
        v346 = v479;
        (v339[4])(v479, v340, v342);
        v347 = *(v334 + 32);
        v347(v346 + *(v335 + 48), v340 + v336, v345);
        v348 = v480;
        sub_22BBCD82C(v346, v480, &qword_27D8E42E8, &qword_22BDC2CE0);
        v349 = v343;
        v350 = v477;
        v347(v477, v348 + *(v335 + 48), v345);
        v351 = *(v509 + 8);
        v329 = v506;
        v352 = sub_22BB2F324();
        v353(v352);
        v513 = v329;
        v355 = *(v329 + 16);
        v354 = *(v329 + 24);
        if (v355 >= v354 >> 1)
        {
          sub_22BB2F158(v354);
          sub_22BD28228();
          v329 = v513;
        }

        *(v329 + 16) = v355 + 1;
        v356 = *(v334 + 80);
        sub_22BB2F390();
        v347(v329 + v357 + v355 * v503, v350, v345);
        v358 = 1 << *(v349 + 32);
        if (v504 >= v358)
        {
          goto LABEL_132;
        }

        if ((*(v505 + 8 * v502) & v501) == 0)
        {
          goto LABEL_133;
        }

        v328 = v349;
        if (*(v349 + 36) != v500)
        {
          goto LABEL_134;
        }

        sub_22BB5424C();
        if (v133)
        {
          v365 = v362 << 6;
          v366 = v362 + 1;
          v367 = (v488 + 8 * v362);
          v326 = v509;
          v363 = v489;
          v364 = v499;
          while (v366 < (v358 + 63) >> 6)
          {
            v369 = *v367++;
            v368 = v369;
            v365 += 64;
            ++v366;
            if (v369)
            {
              sub_22BBBFEB0(v359, v360, v495 & 1);
              v358 = __clz(__rbit64(v368)) + v365;
              goto LABEL_107;
            }
          }

          sub_22BBBFEB0(v359, v360, v495 & 1);
        }

        else
        {
          v358 = __clz(__rbit64(v361)) | v359 & 0x7FFFFFFFFFFFFFC0;
          v326 = v509;
          v363 = v489;
          v364 = v499;
        }

LABEL_107:
        v333 = v364 + 1;
        if (v333 == v363)
        {

          v11 = v512;
          goto LABEL_112;
        }

        v332 = 0;
        v331 = *(v328 + 36);
        v330 = v358;
        if (v358 < 0)
        {
          break;
        }
      }
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
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
LABEL_138:
  __break(1u);
LABEL_139:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}