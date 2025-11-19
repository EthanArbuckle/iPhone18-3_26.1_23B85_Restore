void sub_22BD6E164()
{
  sub_22BB32FA4(v0 + 7);
  v32 = v0[80];
  v1 = v0[76];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];
  v6 = v0[65];
  v7 = v0[61];
  v8 = v0[62];
  v9 = v0[60];
  v12 = v0[57];
  v13 = v0[54];
  v14 = v0[53];
  v15 = v0[50];
  v16 = v0[49];
  v17 = v0[47];
  v18 = v0[46];
  v19 = v0[43];
  v20 = v0[42];
  v21 = v0[41];
  v22 = v0[40];
  v23 = v0[37];
  v24 = v0[36];
  v25 = v0[35];
  v26 = v0[34];
  v27 = v0[31];
  v28 = v0[28];
  v29 = v0[27];
  v30 = v0[24];
  v31 = v0[21];
  sub_22BD6E704();

  sub_22BB325EC((v0 + 2), &dword_27D8E2F50, &unk_22BDBDEA0);

  sub_22BB2F09C();
  sub_22BB385C0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22BD6E368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v38 = a3;
  v4 = sub_22BDB4C34();
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - v9;
  v11 = sub_22BDB9B14();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22BDB9564();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  sub_22BDB9B24();
  if ((*(v12 + 88))(v15, v11) != *MEMORY[0x277D1E710])
  {
    (*(v12 + 8))(v15, v11);
LABEL_6:
    v31 = sub_22BBE6DE0(&qword_27D8E66D0, &qword_22BDCE798);
    v29 = v38;
    v30 = 1;
    return sub_22BB336D0(v29, v30, 1, v31);
  }

  (*(v12 + 96))(v15, v11);
  v33 = *(v17 + 32);
  v33(v20, v15, v16);
  sub_22BDB8174();
  sub_22BDB8BF4();
  v21 = sub_22BDB4C04();
  v22 = *(v36 + 8);
  v23 = v8;
  v24 = v37;
  v22(v23, v37);
  v22(v10, v24);
  if ((v21 & 1) == 0)
  {
    (*(v17 + 8))(v20, v16);
    goto LABEL_6;
  }

  v25 = sub_22BBE6DE0(&qword_27D8E66D0, &qword_22BDCE798);
  v26 = *(v25 + 48);
  v27 = sub_22BDB9B54();
  v28 = v38;
  (*(*(v27 - 8) + 16))(v38, v34, v27);
  v33((v28 + v26), v20, v16);
  v29 = v28;
  v30 = 0;
  v31 = v25;
  return sub_22BB336D0(v29, v30, 1, v31);
}

void sub_22BD6E704()
{
  sub_22BB30F94();
  v30 = v1;
  v2 = sub_22BDB7764();
  v3 = sub_22BB30444(v2);
  v29 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  sub_22BB36FD8();
  v31 = sub_22BDB7734();
  v7 = sub_22BB30444(v31);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v14 = v13 - v12;
  v15 = sub_22BDB7754();
  v16 = sub_22BB30444(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  v23 = v22 - v21;
  sub_22BDB6134();
  v24 = sub_22BDB7744();
  sub_22BDB7774();
  v28 = sub_22BDBB1C4();
  if (sub_22BDBB244())
  {

    sub_22BDB77B4();

    if ((*(v29 + 88))(v0, v2) == *MEMORY[0x277D85B00])
    {
      v25 = "[Error] Interval already ended";
    }

    else
    {
      (*(v29 + 8))(v0, v2);
      v25 = "";
    }

    v26 = sub_22BB37F30();
    *v26 = 0;
    v27 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v24, v28, v27, v30, v25, v26, 2u);
    sub_22BB30AF0();
  }

  (*(v9 + 8))(v14, v31);
  (*(v18 + 8))(v23, v15);
  sub_22BB314EC();
}

uint64_t sub_22BD6E990@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_22BDB9014();
  v38 = *(v1 - 8);
  v39 = v1;
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v1);
  v37 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22BDB88E4();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BDB8C14();
  v44 = *(v7 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BDB9D04();
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22BDB9564();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22BDB9B14();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v24, v45, v20);
  v25 = (*(v21 + 88))(v24, v20);
  if (v25 == *MEMORY[0x277D1E710])
  {
    (*(v21 + 96))(v24, v20);
    (*(v16 + 32))(v19, v24, v15);
    v26 = v46;
    sub_22BDB8174();
    (*(v16 + 8))(v19, v15);
    v27 = sub_22BDB4C34();
    v28 = v26;
  }

  else
  {
    v29 = v46;
    if (v25 == *MEMORY[0x277D1E728])
    {
      (*(v21 + 96))(v24, v20);
      v30 = v44;
      (*(v44 + 32))(v10, v24, v7);
      sub_22BDB8C04();
      return (*(v30 + 8))(v10, v7);
    }

    if (v25 == *MEMORY[0x277D1E730])
    {
      (*(v21 + 96))(v24, v20);
      v32 = v43;
      (*(v43 + 32))(v14, v24, v11);
      sub_22BDB8174();
      (*(v32 + 8))(v14, v11);
    }

    else
    {
      if (v25 == *MEMORY[0x277D1E750])
      {
        (*(v21 + 96))(v24, v20);
        v33 = v40;
        v34 = v41;
        v35 = v42;
        (*(v41 + 32))(v40, v24, v42);
        sub_22BDB88A4();
      }

      else
      {
        if (v25 != *MEMORY[0x277D1E810])
        {
          v36 = sub_22BDB4C34();
          sub_22BB336D0(v29, 1, 1, v36);
          return (*(v21 + 8))(v24, v20);
        }

        (*(v21 + 96))(v24, v20);
        v33 = v37;
        v34 = v38;
        v35 = v39;
        (*(v38 + 32))(v37, v24, v39);
        sub_22BDB8FE4();
      }

      (*(v34 + 8))(v33, v35);
    }

    v27 = sub_22BDB4C34();
    v28 = v29;
  }

  return sub_22BB336D0(v28, 0, 1, v27);
}

void sub_22BD6EFA4()
{
  sub_22BB30F94();
  v29 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_22BDB9884();
  v7 = sub_22BB30444(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v14 = v13 - v12;
  v15 = sub_22BDB98C4();
  v16 = sub_22BB30444(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  v23 = v22 - v21;
  updated = type metadata accessor for EventScopedProgressUpdateHandler(0);
  v25 = sub_22BB69FEC((v0 + *(updated + 20)), *(v0 + *(updated + 20) + 24));
  v26 = v3(0);
  sub_22BB30ED8(v26);
  (*(v27 + 16))(v14, v5);
  (*(v9 + 104))(v14, *v29, v6);
  sub_22BDB9A84();
  (*(v9 + 8))(v14, v6);
  v28 = *v25;
  sub_22BD78EFC(v23);
  (*(v18 + 8))(v23, v15);
  sub_22BB314EC();
}

uint64_t sub_22BD6F19C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_22BDBB4F4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_22BD6F1D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

unint64_t sub_22BD6F250(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22BD6F274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[57] = a3;
  v5[58] = a5;
  v5[55] = a1;
  v5[56] = a2;
  v7 = sub_22BBE6DE0(&qword_27D8E6560, &qword_22BDCE740);
  v5[59] = v7;
  v8 = *(v7 - 8);
  v5[60] = v8;
  v9 = *(v8 + 64) + 15;
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();
  v10 = sub_22BDB80E4();
  v5[63] = v10;
  v11 = *(v10 - 8);
  v5[64] = v11;
  v12 = *(v11 + 64) + 15;
  v5[65] = swift_task_alloc();
  v13 = type metadata accessor for RuntimeError();
  v5[66] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v5[67] = swift_task_alloc();
  v15 = sub_22BDB7614();
  v5[68] = v15;
  v16 = *(v15 - 8);
  v5[69] = v16;
  v17 = *(v16 + 64) + 15;
  v5[70] = swift_task_alloc();
  v18 = *(*(sub_22BBE6DE0(&qword_27D8E3510, &qword_22BDBEF70) - 8) + 64) + 15;
  v5[71] = swift_task_alloc();
  v19 = sub_22BDB6774();
  v5[72] = v19;
  v20 = *(v19 - 8);
  v5[73] = v20;
  v21 = *(v20 + 64) + 15;
  v5[74] = swift_task_alloc();
  v22 = *(*(sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390) - 8) + 64) + 15;
  v5[75] = swift_task_alloc();
  v5[76] = swift_task_alloc();
  v23 = sub_22BDB43E4();
  v5[77] = v23;
  v24 = *(v23 - 8);
  v5[78] = v24;
  v25 = *(v24 + 64) + 15;
  v5[79] = swift_task_alloc();
  v5[80] = swift_task_alloc();
  v5[81] = swift_task_alloc();
  v26 = *(*(sub_22BBE6DE0(&qword_27D8E6698, &unk_22BDCE748) - 8) + 64) + 15;
  v5[82] = swift_task_alloc();
  v5[83] = swift_task_alloc();
  v5[84] = swift_task_alloc();
  v5[85] = swift_task_alloc();
  v27 = sub_22BDB9B14();
  v5[86] = v27;
  v28 = *(v27 - 8);
  v5[87] = v28;
  v29 = *(v28 + 64) + 15;
  v5[88] = swift_task_alloc();
  v5[89] = swift_task_alloc();
  v5[90] = swift_task_alloc();
  v30 = sub_22BDB9B54();
  v5[91] = v30;
  v31 = *(v30 - 8);
  v5[92] = v31;
  v32 = *(v31 + 64) + 15;
  v5[93] = swift_task_alloc();
  v5[94] = swift_task_alloc();
  v5[95] = swift_task_alloc();
  v33 = sub_22BBE6DE0(&qword_27D8E60D8, &unk_22BDCD620);
  v5[96] = v33;
  v34 = *(*(v33 - 8) + 64) + 15;
  v5[97] = swift_task_alloc();
  v35 = *(*(sub_22BBE6DE0(&qword_27D8E66A0, &unk_22BDCE758) - 8) + 64) + 15;
  v5[98] = swift_task_alloc();
  v5[99] = swift_task_alloc();
  v36 = sub_22BDB9774();
  v5[100] = v36;
  v37 = *(v36 - 8);
  v5[101] = v37;
  v38 = *(v37 + 64) + 15;
  v5[102] = swift_task_alloc();
  v5[5] = type metadata accessor for SessionCoordinatorResponseCallback();
  v5[6] = &off_283F80930;
  v5[2] = a4;

  return MEMORY[0x2822009F8](sub_22BD6F7CC, 0, 0);
}

uint64_t sub_22BD6F7CC()
{
  v1 = v0[102];
  v2 = v0[101];
  v3 = v0[100];
  v4 = v0[58];
  v5 = v0[55];
  v6 = MEMORY[0x277D84F90];
  v0[52] = MEMORY[0x277D84F90];
  sub_22BDB96A4();
  v7 = sub_22BDB9744();
  v10 = *(v2 + 8);
  v8 = v2 + 8;
  v9 = v10;
  v0[103] = v10;
  v0[104] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11 = sub_22BB30AE4();
  v10(v11);
  v0[53] = v7;
  v12 = OBJC_IVAR____TtC23IntelligenceFlowRuntime8Executor__isFirstAcceptSinceLoad;
  v0[105] = OBJC_IVAR____TtC23IntelligenceFlowRuntime8Executor__isFirstAcceptSinceLoad;
  v13 = *(v4 + v12);
  v14 = sub_22BB2F324();
  sub_22BBE6DE0(v14, v15);
  sub_22BB35554();
  sub_22BBB5F9C(v16, v17, &unk_22BDBD950);
  v18 = sub_22BDB9064();

  v19 = *(v18 + 16);
  v192 = v0;
  if (v19)
  {
    v183 = v9;
    v185 = v8;
    v20 = v0[92];
    v21 = v0[60];
    v190 = v0[59];
    sub_22BD27B30(0, v19, 0);
    v22 = v6;
    v23 = *(v21 + 80);
    sub_22BB2F390();
    v25 = v18 + v24;
    v187 = *(v21 + 72);
    v26 = (v20 + 8);
    v6 = &qword_22BDCE740;
    do
    {
      v27 = v0[91];
      v29 = v0[61];
      v28 = v0[62];
      sub_22BB8DC7C();
      sub_22BB72E5C();
      sub_22BBBEE60(v30, v31, v32, v33);
      sub_22BB72E5C();
      sub_22BBDB5D0(v34, v35, v36, v37);
      v38 = *v29;
      (*v26)(&v29[*(v190 + 48)], v27);
      v40 = *(v22 + 16);
      v39 = *(v22 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_22BD27B30((v39 > 1), v40 + 1, 1);
      }

      *(v22 + 16) = v40 + 1;
      *(v22 + 8 * v40 + 32) = v38;
      v25 += v187;
      --v19;
      v0 = v192;
    }

    while (v19);

    v9 = v183;
    v8 = v185;
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v41 = v0[102];
  v42 = v0[100];
  v43 = v0[55];
  v0[106] = sub_22BD1D2D0(v22);
  sub_22BDB96A4();
  v44 = sub_22BDB9744();
  v0[107] = v44;
  v45 = sub_22BB30AE4();
  result = v9(v45);
  v47 = 0;
  v48 = 0;
  v49 = *(v44 + 16);
  *(v0 + 236) = *MEMORY[0x277D1E710];
  *(v0 + 237) = *MEMORY[0x277D1E728];
  *(v0 + 238) = *MEMORY[0x277D1E730];
  *(v0 + 239) = *MEMORY[0x277D1E750];
  *(v0 + 240) = *MEMORY[0x277D1E810];
  *(v0 + 241) = *MEMORY[0x277D1E840];
  *(v0 + 242) = *MEMORY[0x277D1DCE0];
  *(v0 + 243) = *MEMORY[0x277D1DC58];
  *(v0 + 244) = *MEMORY[0x277D1E718];
  *(v0 + 245) = *MEMORY[0x277D1D9D0];
  v0[108] = v49;
LABEL_9:
  if (v48 != v49)
  {
    if (v48 >= v49)
    {
      __break(1u);
    }

    else
    {
      v9 = (v48 + 1);
      if (!__OFADD__(v48, 1))
      {
        if (v47 == v49)
        {
          ++v48;
          goto LABEL_14;
        }

        if ((v47 & 0x8000000000000000) == 0)
        {
          if (v47 < *(v0[107] + 16))
          {
            sub_22BB94EA0();
            v8 = v47 + 1;
            sub_22BB370D0();
            v58 = sub_22BB588AC();
            v59(v58);
            v60 = sub_22BBE6DE0(&qword_27D8E66A8, &unk_22BDCE768);
            v61 = sub_22BB36968(v60);
            v62(v61);
            sub_22BB331C8();
            sub_22BB336D0(v63, v64, v65, v6);
            v53 = 0;
            ++v47;
            ++v48;
            goto LABEL_18;
          }

          goto LABEL_62;
        }

LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

  while (1)
  {
LABEL_14:
    v50 = v0[98];
    v51 = sub_22BB30AE4();
    sub_22BBE6DE0(v51, v52);
    v53 = 1;
    v54 = sub_22BB34170();
    sub_22BB336D0(v54, v55, v56, v57);
LABEL_18:
    v0[110] = v48;
    v0[109] = v47;
    *(v0 + 984) = v53;
    v66 = sub_22BB8D28C();
    sub_22BBDB5D0(v66, v67, &qword_27D8E66A0, &unk_22BDCE758);
    v68 = sub_22BB30AE4();
    v70 = sub_22BBE6DE0(v68, v69);
    sub_22BB3B428(v70);
    if (v95)
    {
      v163 = v0[107];
      v164 = v0[106];
      v165 = v0[105];
      sub_22BB37E0C();
      sub_22BB381D8();
      v166 = v0[58];

      v167 = sub_22BB69FEC(v0 + 2, v0[5]);
      sub_22BB31254(v167);

      *(v166 + v165) = 0;
      sub_22BB32FA4(v0 + 2);

      sub_22BB2F09C();
      sub_22BB53C84();

      __asm { BRAA            X1, X16 }
    }

    v188 = v47;
    v71 = v48;
    v72 = *(v0 + 236);
    sub_22BB53DF8();
    v73 = v0[87];
    v75 = sub_22BB37394(v74);
    v76(v75);
    sub_22BDB9B24();
    v77 = sub_22BB8995C(v73);
    v78(v77);
    v80 = *(v73 + 88);
    v79 = v73 + 88;
    v81 = v80(v9, v53);
    if (v81 == v72)
    {
      sub_22BBC78C4();
LABEL_21:
      v48 = v71;
      v82 = sub_22BB31464();
      (v47)(v82);
      if (*(v79 + 16))
      {
        sub_22BB7201C();
        sub_22BB542C4();
        while (1)
        {
          sub_22BB33578(v83, v84);
          if ((v85 & 1) == 0)
          {
            break;
          }

          v83 = sub_22BB3B130();
          if (v95)
          {
            v102 = sub_22BB518BC();
            (v47)(v102);
            goto LABEL_47;
          }
        }
      }

      v99 = sub_22BB518BC();
      (v47)(v99);
      goto LABEL_45;
    }

    if (v81 == *(v0 + 237))
    {
      break;
    }

    sub_22BB3FCEC();
    v79 = v93 + 8;
    v47 = *(v93 + 8);
    v95 = v90 == v94 || v90 == v92;
    if (v95 || v90 == v91)
    {
      goto LABEL_21;
    }

    if (v90 == *(v0 + 241))
    {
      goto LABEL_29;
    }

    v97 = sub_22BB36E78();
    (v47)(v97, v53);
    v98 = sub_22BB345A8();
    (v47)(v98);
    v48 = v71;
LABEL_45:
    v100 = sub_22BB33814();
    result = v101(v100);
    v49 = v0[108];
    v47 = v188;
    if ((v53 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  sub_22BBC78C4();
LABEL_29:
  v86 = sub_22BB36E78();
  v8 = v0[56];
  v87 = v0[57];
  (v47)(v86, v53);
  v88 = sub_22BB345A8();
  (v47)(v88);
  v89 = v6 >= v8 && v6 < v87;
  v48 = v71;
  if (!v89)
  {
    goto LABEL_45;
  }

LABEL_47:
  v0[113] = v47;
  v180 = v0[104];
  v103 = v0[103];
  sub_22BB69B5C();
  v171 = v105;
  v173 = v104;
  v106 = v192[85];
  v184 = v192[81];
  v186 = v192[80];
  v175 = v192[79];
  v189 = v192[78];
  v179 = v192[77];
  v178 = v192[76];
  v191 = v192[75];
  v182 = v192[74];
  v176 = v192[73];
  v177 = v192[72];
  v108 = v107 + 8;
  v109 = v192[55];
  sub_22BB31630();
  sub_22BDB9B24();
  sub_22BB3CE30();
  sub_22BDB96A4();
  sub_22BB39678();
  v110 = sub_22BB39744();
  v171(v110);
  v192[114] = v108 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (v47)(v8, v173);
  sub_22BB31630();
  sub_22BDB9B34();
  v111 = sub_22BDB9A14();
  v112 = sub_22BDB8434();
  sub_22BD81020(v112, v113, v111);
  sub_22BB3FE44();

  v181 = v6 & 1;
  if (v6)
  {
    v114 = 0;
  }

  else
  {
    v114 = v109;
  }

  sub_22BDB9964();
  v115 = sub_22BDB9A24();
  v170 = v116;
  v117 = type metadata accessor for ExecutorSELFContext();
  v192[10] = v117;
  sub_22BB32D00();
  v192[11] = sub_22BD721F4(v118, v119);
  v120 = sub_22BB8B8A0(v192 + 7);
  v121 = v117[8];
  v122 = v120 + v117[7];
  sub_22BB30B28();
  sub_22BB336D0(v123, v124, v125, v179);
  v172 = v117[5];
  sub_22BDB43D4();
  v126 = *(v189 + 16);
  v126(v120 + v117[6], v184, v179);
  v174 = v114;
  *v122 = v114;
  v122[8] = v181;
  sub_22BD72114(v178, v120 + v121);
  v127 = (v120 + v117[10]);
  *v127 = v115;
  v127[1] = v170;
  sub_22BDB6764();
  sub_22BDB6744();
  v128 = sub_22BB8DC7C();
  (v126)(v128);
  sub_22BDB6754();
  v129 = v117[9];
  sub_22BDB6724();
  type metadata accessor for ExecutorSELFLogEmitter();
  sub_22BB3E424();
  v130 = sub_22BB70468();
  (v126)(v130);
  v126(v175, v120 + v129, v179);
  sub_22BBBEE60(v178, v191, &qword_27D8E3218, &qword_22BDBE390);
  v131 = type metadata accessor for ExecutorSELFLoggerASync(0);
  v132 = sub_22BB34ED4(v131);
  v126((v132 + OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB123ExecutorSELFLoggerASync_componentId), v175, v179);
  v133 = type metadata accessor for ExecutorSELFLoggerSync(0);
  v134 = sub_22BB34ED4(v133);
  *(v134 + 5) = v182;
  *(v134 + 6) = &off_283F74E60;
  *(v134 + 2) = v170;
  v135 = *(v189 + 32);
  v135(&v134[OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_contextId], v186, v179);
  v135(&v134[OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_componentId], v175, v179);
  v136 = &v134[OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_spanId];
  *v136 = v174;
  v136[8] = v181;
  sub_22BBDB5D0(v191, &v134[OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_ifRequestId], &qword_27D8E3218, &qword_22BDBE390);
  *(v132 + OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB123ExecutorSELFLoggerASync_logger) = v134;
  v120[3] = v131;
  v120[4] = &off_283F74C80;
  *v120 = v132;
  (*(v176 + 8))(v182, v177);
  sub_22BB325EC(v178, &qword_27D8E3218, &qword_22BDBE390);
  (*(v189 + 8))(v184, v179);
  sub_22BBBEE60((v192 + 7), (v192 + 12), &dword_27D8E2F50, &unk_22BDBDEA0);
  v137 = v192[15];
  if (v137)
  {
    v138 = v192[95];
    v139 = v192[86];
    v140 = v192[71];
    v141 = v192[70];
    v142 = v192[69];
    v143 = v192[68];
    v144 = sub_22BB69FEC(v192 + 12, v137);
    sub_22BB69088(v144, (v192 + 47));
    v145 = v192[50];
    v146 = v192[51];
    sub_22BB71F68(v192 + 47);
    sub_22BB331C8();
    sub_22BB336D0(v147, v148, v149, v139);
    sub_22BDB7604();
    v150 = sub_22BB2F5C8();
    v151(v150);
    v152 = *(v142 + 8);
    v153 = sub_22BB331D4();
    v154(v153);
    sub_22BB325EC(v140, &qword_27D8E3510, &qword_22BDBEF70);
    sub_22BB32FA4(v192 + 47);
    sub_22BB32FA4(v192 + 12);
  }

  else
  {
    sub_22BB325EC((v192 + 12), &dword_27D8E2F50, &unk_22BDBDEA0);
  }

  v155 = swift_task_alloc();
  v192[115] = v155;
  *v155 = v192;
  sub_22BB32840(v155);
  v156 = v192[95];
  v157 = v192[58];
  v158 = v192[55];
  sub_22BB53C84();

  return sub_22BD672A4(v159, v160, v161);
}

uint64_t sub_22BD7045C()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  sub_22BB3053C();
  *v3 = v2;
  v5 = *(v4 + 920);
  *v3 = *v1;
  *(v2 + 928) = v6;
  *(v2 + 936) = v0;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22BD70564()
{
  v1 = *(v0 + 936);
  v2 = *(v0 + 928);
  v3 = *(v0 + 760);
  v4 = *(v0 + 680);
  v5 = *(v0 + 672);
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  v7 = sub_22BD65B38(sub_22BD7223C, v6, v2, MEMORY[0x277D1E890], sub_22BB6FF1C, MEMORY[0x277D1E870]);

  sub_22BD669F8(v7);
  sub_22BBBEE60(v4, v5, &qword_27D8E6698, &unk_22BDCE748);
  v8 = type metadata accessor for ExecutorLogging(0);
  sub_22BB31814(v5, 1, v8);
  if (v90)
  {
    sub_22BB325EC(*(v0 + 672), &qword_27D8E6698, &unk_22BDCE748);
  }

  else
  {
    v9 = *(v0 + 980);
    v10 = *(v0 + 672);
    v4 = *(v0 + 520);
    v11 = *(v0 + 504);
    v12 = *(v0 + 512);
    sub_22BDB8E54();
    sub_22BD72588();
    v13 = sub_22BDB8F54();
    sub_22BB30ED8(v13);
    v15 = *(v14 + 16);
    v16 = sub_22BB39478();
    v17(v16);
    (*(v12 + 104))(v4, v9, v11);
    v19 = *(v8 + 20);
    v18 = *(v8 + 24);
    sub_22BDB8E24();
    v20 = *(v12 + 8);
    v21 = sub_22BB331D4();
    v22(v21);
    sub_22BB37848();
    sub_22BD721A4();
  }

  sub_22BBBEE60(v0 + 56, v0 + 296, &dword_27D8E2F50, &unk_22BDBDEA0);
  v23 = *(v0 + 320);
  v24 = *(v0 + 928);
  v25 = *(v0 + 680);
  if (v23)
  {
    v26 = *(v0 + 560);
    v27 = *(v0 + 552);
    v4 = *(v0 + 544);
    v28 = sub_22BB69FEC((v0 + 296), v23);
    sub_22BB69088(v28, v0 + 336);
    v3 = *(v0 + 368);
    sub_22BB69FEC((v0 + 336), *(v0 + 360));
    sub_22BD665FC(v24);

    sub_22BDB7604();
    v29 = *(v3 + 208);
    sub_22BB72E5C();
    v30();

    v31 = *(v27 + 8);
    v32 = sub_22BB2F0E0();
    v33(v32);
    sub_22BB325EC(v25, &qword_27D8E6698, &unk_22BDCE748);
    sub_22BB32FA4((v0 + 336));
    sub_22BB32FA4((v0 + 296));
  }

  else
  {
    sub_22BB325EC(*(v0 + 680), &qword_27D8E6698, &unk_22BDCE748);

    sub_22BB325EC(v0 + 296, &dword_27D8E2F50, &unk_22BDBDEA0);
  }

  v34 = *(v0 + 760);
  v35 = *(v0 + 736);
  v36 = *(v0 + 728);
  sub_22BB325EC(v0 + 56, &dword_27D8E2F50, &unk_22BDBDEA0);
  v37 = *(v35 + 8);
  v38 = sub_22BB2F324();
  result = v39(v38);
  v41 = *(v0 + 880);
  v42 = *(v0 + 872);
  if ((*(v0 + 984) & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_13:
  v44 = *(v0 + 784);
  v45 = sub_22BB5138C();
  sub_22BBE6DE0(v45, v46);
  v47 = 1;
  v48 = sub_22BB34170();
  sub_22BB336D0(v48, v49, v50, v51);
  while (1)
  {
    *(v0 + 880) = v41;
    v167 = v42;
    *(v0 + 872) = v42;
    *(v0 + 984) = v47;
    v60 = sub_22BB8D28C();
    sub_22BBDB5D0(v60, v61, &qword_27D8E66A0, &unk_22BDCE758);
    v62 = sub_22BB5138C();
    v64 = sub_22BBE6DE0(v62, v63);
    sub_22BB3B428(v64);
    if (v90)
    {
      v143 = *(v0 + 856);
      v144 = *(v0 + 848);
      v145 = *(v0 + 840);
      sub_22BB37E0C();
      sub_22BB381D8();
      v146 = *(v0 + 464);

      v147 = sub_22BB69FEC((v0 + 16), *(v0 + 40));
      sub_22BB31254(v147);

      *(v146 + v145) = 0;
      sub_22BB32FA4((v0 + 16));

      sub_22BB2F09C();
      sub_22BB53C84();

      __asm { BRAA            X1, X16 }
    }

    v164 = v41;
    v65 = *(v0 + 944);
    sub_22BB53DF8();
    v66 = *(v0 + 696);
    v68 = sub_22BB37394(v67);
    v69(v68);
    sub_22BDB9B24();
    v70 = sub_22BB8995C(v66);
    v71(v70);
    v72 = (*(v66 + 88))(&qword_27D8E66A8, v4);
    if (v72 == v65)
    {
      sub_22BBC78C4();
      goto LABEL_20;
    }

    if (v72 == *(v0 + 948))
    {
      sub_22BBC78C4();
      goto LABEL_28;
    }

    sub_22BB3FCEC();
    v41 = *(v88 + 8);
    v90 = v85 == v89 || v85 == v87;
    if (!v90 && v85 != v86)
    {
      break;
    }

LABEL_20:
    v73 = sub_22BB31464();
    v41(v73);
    if (*(v65 + 16))
    {
      sub_22BB7201C();
      sub_22BB542C4();
      while (1)
      {
        sub_22BB33578(v74, v75);
        if ((v76 & 1) == 0)
        {
          break;
        }

        v74 = sub_22BB3B130();
        if (v90)
        {
          v94 = sub_22BB518BC();
          v41(v94);
          goto LABEL_46;
        }
      }
    }

    v82 = sub_22BB518BC();
    v41(v82);
LABEL_35:
    v83 = sub_22BB33814();
    result = v84(v83);
    v41 = v164;
    v42 = v167;
    if (v47)
    {
      goto LABEL_13;
    }

LABEL_8:
    v43 = *(v0 + 864);
    if (v41 == v43)
    {
      goto LABEL_13;
    }

    if (v41 >= v43)
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      return result;
    }

    if (__OFADD__(v41, 1))
    {
      goto LABEL_59;
    }

    if (v42 == v43)
    {
      v41 = (v41 + 1);
      goto LABEL_13;
    }

    if ((v42 & 0x8000000000000000) != 0)
    {
      goto LABEL_60;
    }

    if (v42 >= *(*(v0 + 856) + 16))
    {
      goto LABEL_61;
    }

    sub_22BB94EA0();
    sub_22BB370D0();
    v52 = sub_22BB588AC();
    v53(v52);
    v54 = sub_22BBE6DE0(&qword_27D8E66A8, &unk_22BDCE768);
    v55 = sub_22BB36968(v54);
    v56(v55);
    sub_22BB331C8();
    sub_22BB336D0(v57, v58, v59, v3);
    v47 = 0;
    ++v42;
    v41 = (v41 + 1);
  }

  if (v85 != *(v0 + 964))
  {
    v92 = sub_22BB36E78();
    (v41)(v92, v4);
    v93 = sub_22BB345A8();
    v41(v93);
    goto LABEL_35;
  }

LABEL_28:
  v77 = sub_22BB36E78();
  v79 = *(v0 + 448);
  v78 = *(v0 + 456);
  (v41)(v77, v4);
  v80 = sub_22BB345A8();
  v41(v80);
  if (v3 < v79 || v3 >= v78)
  {
    goto LABEL_35;
  }

LABEL_46:
  *(v0 + 904) = v41;
  v95 = *(v0 + 832);
  v154 = *(v0 + 824);
  sub_22BB69B5C();
  v156 = v96;
  v97 = *(v0 + 680);
  v162 = *(v0 + 648);
  v163 = *(v0 + 640);
  v157 = *(v0 + 632);
  v165 = *(v0 + 624);
  v160 = *(v0 + 616);
  v166 = *(v0 + 600);
  v168 = *(v0 + 608);
  v161 = *(v0 + 592);
  v158 = *(v0 + 584);
  v159 = *(v0 + 576);
  v98 = *(v0 + 440);
  sub_22BB31630();
  sub_22BDB9B24();
  sub_22BB3CE30();
  sub_22BDB96A4();
  sub_22BB39678();
  v99 = sub_22BB39744();
  v154(v99);
  v100 = sub_22BBCBFAC();
  (v41)(v100, v156);
  sub_22BB31630();
  sub_22BDB9B34();
  v101 = sub_22BDB9A14();
  v102 = sub_22BDB8434();
  sub_22BD81020(v102, v103, v101);
  sub_22BB3FE44();

  if (v3)
  {
    v104 = 0;
  }

  else
  {
    v104 = v98;
  }

  sub_22BDB9964();
  v105 = sub_22BDB9A24();
  v151 = v106;
  v152 = v105;
  v107 = type metadata accessor for ExecutorSELFContext();
  *(v0 + 80) = v107;
  sub_22BB32D00();
  v110 = sub_22BD721F4(v108, v109);
  v111 = sub_22BD725E0(v110);
  v150 = v107[8];
  v112 = v111 + v107[7];
  sub_22BB30B28();
  sub_22BB336D0(v113, v114, v115, v160);
  v155 = v107[5];
  sub_22BDB43D4();
  v116 = sub_22BB72244(v107[6]);
  (v3)(v116);
  *v112 = v104;
  v112[8] = v3 & 1;
  sub_22BD72114(v168, v111 + v150);
  v117 = (v111 + v107[10]);
  *v117 = v152;
  v117[1] = v151;
  sub_22BDB6764();
  sub_22BDB6744();
  v118 = sub_22BB8DC7C();
  (v3)(v118);
  sub_22BDB6754();
  v119 = v107[9];
  sub_22BDB6724();
  type metadata accessor for ExecutorSELFLogEmitter();
  v153 = sub_22BB3E424();
  (v3)(v163, v111 + v155, v160);
  (v3)(v157, v111 + v119, v160);
  sub_22BBBEE60(v168, v166, &qword_27D8E3218, &qword_22BDBE390);
  v120 = type metadata accessor for ExecutorSELFLoggerASync(0);
  v121 = sub_22BB34ED4(v120);
  sub_22BB70C54();
  (v3)();
  v122 = type metadata accessor for ExecutorSELFLoggerSync(0);
  v123 = sub_22BB34ED4(v122);
  v123[5] = v161;
  v123[6] = &off_283F74E60;
  v123[2] = v153;
  v124 = sub_22BB39418(v123, OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_contextId);
  (v165)(v124);
  sub_22BB70C54();
  (v165)();
  v125 = v123 + OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_spanId;
  *v125 = v104;
  v125[8] = v3 & 1;
  sub_22BBDB5D0(v166, v123 + OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_ifRequestId, &qword_27D8E3218, &qword_22BDBE390);
  *(v121 + OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB123ExecutorSELFLoggerASync_logger) = v123;
  v111[3] = v120;
  v111[4] = &off_283F74C80;
  *v111 = v121;
  (*(v158 + 8))(v161, v159);
  sub_22BB325EC(v168, &qword_27D8E3218, &qword_22BDBE390);
  (*(v165 + 8))(v162, v160);
  v126 = sub_22BBBEE60(v0 + 56, v0 + 96, &dword_27D8E2F50, &unk_22BDBDEA0);
  v127 = *(v0 + 120);
  if (v127)
  {
    sub_22BBC7FC0(v126, v127);
    v128 = *(v0 + 400);
    v129 = *(v0 + 408);
    sub_22BB71F68((v0 + 376));
    sub_22BB331C8();
    sub_22BB336D0(v130, v131, v132, &qword_22BDBE390);
    sub_22BDB7604();
    v133 = sub_22BB2F5C8();
    v134(v133);
    v135 = *(v160 + 8);
    v136 = sub_22BB331D4();
    v137(v136);
    sub_22BB325EC(v121, &qword_27D8E3510, &qword_22BDBEF70);
    sub_22BB32FA4((v0 + 376));
    sub_22BB32FA4((v0 + 96));
  }

  else
  {
    sub_22BB325EC(v0 + 96, &dword_27D8E2F50, &unk_22BDBDEA0);
  }

  v138 = swift_task_alloc();
  *(v0 + 920) = v138;
  *v138 = v0;
  sub_22BB32840();
  sub_22BB6BEAC();
  sub_22BB53C84();

  return sub_22BD672A4(v139, v140, v141);
}

uint64_t sub_22BD71138()
{
  v2 = *(v0 + 936);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);
  *(v0 + 432) = v2;
  v5 = v2;
  sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v25 = *(v0 + 936);
    v244 = *(v0 + 904);
    v247 = *(v0 + 912);
    v30 = *(v0 + 976);
    v1 = *(v0 + 972);
    v31 = *(v0 + 968);
    v32 = *(v0 + 760);
    v33 = *(v0 + 744);
    v34 = *(v0 + 704);
    v35 = *(v0 + 696);
    v36 = *(v0 + 688);

    v37 = v25;
    sub_22BDB4BA4();
    v38 = sub_22BDB8314();
    sub_22BB30ED8(v38);
    (*(v39 + 104))(v34, v31);
    v40 = sub_22BDB8294();
    sub_22BB30ED8(v40);
    (*(v41 + 104))(v34, v1);
    (*(v35 + 104))(v34, v30, v36);
    sub_22BDB9A54();
    v42 = sub_22BB30AE4();
    v244(v42);
    v43 = *(v0 + 416);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_12;
    }

    goto LABEL_79;
  }

  v6 = *(v0 + 536);
  v7 = *(v0 + 528);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_22BD721A4();
    goto LABEL_11;
  }

  v8 = *(v0 + 760);
  v9 = *(v0 + 752);
  v10 = *(v0 + 440);

  v12 = *v6;
  v11 = v6[1];
  sub_22BB7592C();
  sub_22BD6B8AC(v13, v14, v15, v10, v16);
  v17 = *(v0 + 416);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v209 = *(v17 + 16);
    sub_22BD72594();
    sub_22BD8F6E4();
    v17 = v210;
  }

  v18 = *(v17 + 16);
  if (v18 >= *(v17 + 24) >> 1)
  {
    sub_22BD72594();
    sub_22BD8F6E4();
    v17 = v211;
  }

  v19 = *(v0 + 896);
  v20 = *(v0 + 888);
  v21 = *(v0 + 752);
  v22 = *(v0 + 736);
  v23 = *(v0 + 728);
  v24 = *(v0 + 680);
  v25 = *(v0 + 664);
  *(v17 + 16) = v18 + 1;
  sub_22BB97804();
  v28(v27 + v26 * v18);
  *(v0 + 416) = v17;
  sub_22BBBEE60(v24, v25, &qword_27D8E6698, &unk_22BDCE748);
  v29 = type metadata accessor for ExecutorLogging(0);
  sub_22BB3B428(v29);
  if (v144)
  {
    sub_22BB325EC(*(v0 + 664), &qword_27D8E6698, &unk_22BDCE748);
  }

  else
  {
    v74 = *(v0 + 980);
    v75 = *(v0 + 664);
    v25 = *(v0 + 520);
    v1 = *(v0 + 504);
    v76 = *(v0 + 512);
    sub_22BDB8E54();
    v77 = sub_22BDB8F54();
    sub_22BB30ED8(v77);
    (*(v78 + 16))(v25, v75);
    (*(v76 + 104))(v25, v74, v1);
    v80 = *(v17 + 20);
    v79 = *(v17 + 24);
    sub_22BDB8E24();
    (*(v76 + 8))(v25, v1);
    sub_22BB37848();
    sub_22BD721A4();
  }

  sub_22BBBEE60(v0 + 56, v0 + 216, &dword_27D8E2F50, &unk_22BDBDEA0);
  v81 = *(v0 + 240);
  v51 = *(v0 + 680);
  if (v81)
  {
    v82 = *(v0 + 560);
    v83 = *(v0 + 552);
    v248 = *(v0 + 544);
    v84 = *(v0 + 528);
    v85 = sub_22BB69FEC((v0 + 216), v81);
    sub_22BB69088(v85, v0 + 256);
    v1 = *(v0 + 280);
    v86 = *(v0 + 288);
    v25 = sub_22BB69FEC((v0 + 256), v1);
    sub_22BD721F4(&qword_27D8E2F58, type metadata accessor for RuntimeError);
    v87 = swift_allocError();
    v88 = v11;
    v89 = v87;
    *v90 = v12;
    v90[1] = v88;
    swift_storeEnumTagMultiPayload();
    sub_22BDB7604();
    (*(v86 + 216))(v89, v82, v1, v86);
    (*(v83 + 8))(v82, v248);
    sub_22BB325EC(v51, &qword_27D8E6698, &unk_22BDCE748);

    sub_22BB32FA4((v0 + 256));
    sub_22BB32FA4((v0 + 216));
  }

  else
  {
    sub_22BB325EC(*(v0 + 680), &qword_27D8E6698, &unk_22BDCE748);

    sub_22BB325EC(v0 + 216, &dword_27D8E2F50, &unk_22BDBDEA0);
  }

  while (1)
  {
    v43 = *(v0 + 760);
    v91 = *(v0 + 736);
    v92 = *(v0 + 728);
    sub_22BB325EC(v0 + 56, &dword_27D8E2F50, &unk_22BDBDEA0);
    v93 = *(v91 + 8);
    v94 = sub_22BB2F324();
    v95(v94);
    v96 = *(v0 + 880);
    v97 = *(v0 + 872);
    if (*(v0 + 984))
    {
      break;
    }

LABEL_25:
    v98 = *(v0 + 864);
    if (v96 == v98)
    {
      break;
    }

    if (v96 >= v98)
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v1 = v96 + 1;
    if (__OFADD__(v96, 1))
    {
      goto LABEL_76;
    }

    if (v97 == v98)
    {
      v96 = (v96 + 1);
      break;
    }

    if ((v97 & 0x8000000000000000) != 0)
    {
      goto LABEL_77;
    }

    if (v97 < *(*(v0 + 856) + 16))
    {
      sub_22BB94EA0();
      sub_22BB370D0();
      v107 = sub_22BB588AC();
      v108(v107);
      v109 = sub_22BBE6DE0(&qword_27D8E66A8, &unk_22BDCE768);
      v110 = sub_22BB36968(v109);
      v111(v110);
      sub_22BB331C8();
      sub_22BB336D0(v112, v113, v114, v25);
      v102 = 0;
      ++v97;
      v96 = (v96 + 1);
      goto LABEL_34;
    }

LABEL_78:
    __break(1u);
LABEL_79:
    v206 = *(v43 + 16);
    sub_22BD72594();
    sub_22BD8F6E4();
    v43 = v207;
LABEL_12:
    v44 = *(v43 + 16);
    if (v44 >= *(v43 + 24) >> 1)
    {
      sub_22BD72594();
      sub_22BD8F6E4();
      v43 = v208;
    }

    v45 = *(v0 + 896);
    v46 = *(v0 + 888);
    v47 = *(v0 + 744);
    v48 = *(v0 + 736);
    v49 = *(v0 + 728);
    v50 = *(v0 + 680);
    v51 = *(v0 + 656);
    *(v43 + 16) = v44 + 1;
    sub_22BB97804();
    v54(v53 + v52 * v44);
    *(v0 + 416) = v43;
    v55 = sub_22BB2F0E0();
    sub_22BBBEE60(v55, v56, v57, v58);
    v59 = type metadata accessor for ExecutorLogging(0);
    sub_22BB31814(v51, 1, v59);
    if (v144)
    {
      sub_22BB325EC(*(v0 + 656), &qword_27D8E6698, &unk_22BDCE748);
    }

    else
    {
      v60 = *(v0 + 936);
      v61 = *(v0 + 656);
      sub_22BD6C488();
      sub_22BB37848();
      sub_22BD721A4();
    }

    sub_22BBBEE60(v0 + 56, v0 + 136, &dword_27D8E2F50, &unk_22BDBDEA0);
    v62 = *(v0 + 160);
    v63 = *(v0 + 936);
    v64 = *(v0 + 680);
    if (v62)
    {
      v51 = *(v0 + 560);
      v65 = *(v0 + 552);
      v66 = *(v0 + 544);
      v67 = sub_22BB69FEC((v0 + 136), v62);
      sub_22BB69088(v67, v0 + 176);
      v25 = *(v0 + 200);
      v1 = *(v0 + 208);
      sub_22BB69FEC((v0 + 176), v25);
      sub_22BDB7604();
      v68 = *(v1 + 216);
      v69 = sub_22BB2F0E0();
      v70(v69);

      v71 = *(v65 + 8);
      v72 = sub_22BB331D4();
      v73(v72);
      sub_22BB325EC(v64, &qword_27D8E6698, &unk_22BDCE748);
      sub_22BB32FA4((v0 + 176));
      sub_22BB32FA4((v0 + 136));
    }

    else
    {
      sub_22BB325EC(*(v0 + 680), &qword_27D8E6698, &unk_22BDCE748);

      sub_22BB325EC(v0 + 136, &dword_27D8E2F50, &unk_22BDBDEA0);
    }
  }

  while (2)
  {
    v99 = *(v0 + 784);
    v100 = sub_22BB5138C();
    sub_22BBE6DE0(v100, v101);
    v102 = 1;
    v103 = sub_22BB34170();
    sub_22BB336D0(v103, v104, v105, v106);
LABEL_34:
    *(v0 + 880) = v96;
    v249 = v97;
    *(v0 + 872) = v97;
    *(v0 + 984) = v102;
    v115 = sub_22BB8D28C();
    sub_22BBDB5D0(v115, v116, &qword_27D8E66A0, &unk_22BDCE758);
    v117 = sub_22BB5138C();
    v119 = sub_22BBE6DE0(v117, v118);
    sub_22BB3B428(v119);
    if (v144)
    {
      v199 = *(v0 + 856);
      v200 = *(v0 + 848);
      v201 = *(v0 + 840);
      sub_22BB37E0C();
      v212 = *(v0 + 720);
      v213 = *(v0 + 712);
      v214 = *(v0 + 704);
      v216 = *(v0 + 680);
      v218 = *(v0 + 672);
      v220 = *(v0 + 664);
      v223 = *(v0 + 656);
      v225 = *(v0 + 648);
      v226 = *(v0 + 640);
      v228 = *(v0 + 632);
      v230 = *(v0 + 608);
      v232 = *(v0 + 600);
      v234 = *(v0 + 592);
      v236 = *(v0 + 568);
      v238 = *(v0 + 560);
      v240 = *(v0 + 536);
      v243 = *(v0 + 520);
      v246 = *(v0 + 496);
      v251 = *(v0 + 488);
      v202 = *(v0 + 464);

      v203 = sub_22BB69FEC((v0 + 16), *(v0 + 40));
      sub_22BB31254(v203);

      *(v202 + v201) = 0;
      sub_22BB32FA4((v0 + 16));

      sub_22BB2F09C();
      sub_22BB385C0();

      __asm { BRAA            X1, X16 }
    }

    v241 = v96;
    v120 = *(v0 + 944);
    sub_22BB53DF8();
    v121 = *(v0 + 696);
    v123 = sub_22BB37394(v122);
    v124(v123);
    v43 = v1;
    sub_22BDB9B24();
    v125 = sub_22BB8995C(v121);
    v126(v125);
    v127 = (*(v121 + 88))(&qword_27D8E66A8, v51);
    if (v127 == v120)
    {
      sub_22BBC78C4();
      goto LABEL_37;
    }

    if (v127 != *(v0 + 948))
    {
      sub_22BB3FCEC();
      v1 = v142 + 8;
      v96 = *(v142 + 8);
      v144 = v139 == v143 || v139 == v141;
      if (v144 || v139 == v140)
      {
LABEL_37:
        v128 = sub_22BB31464();
        v96(v128);
        if (*(v120 + 16))
        {
          sub_22BB7201C();
          sub_22BB542C4();
          while (1)
          {
            sub_22BB33578(v129, v130);
            if ((v131 & 1) == 0)
            {
              break;
            }

            v129 = sub_22BB3B130();
            if (v144)
            {
              v148 = sub_22BB518BC();
              v96(v148);
              goto LABEL_63;
            }
          }
        }

        v136 = sub_22BB518BC();
        v96(v136);
      }

      else
      {
        if (v139 == *(v0 + 964))
        {
          goto LABEL_45;
        }

        v146 = sub_22BB36E78();
        (v96)(v146, v51);
        v147 = sub_22BB345A8();
        v96(v147);
      }

LABEL_52:
      v137 = sub_22BB33814();
      v138(v137);
      v96 = v241;
      v97 = v249;
      if ((v102 & 1) == 0)
      {
        goto LABEL_25;
      }

      continue;
    }

    break;
  }

  sub_22BBC78C4();
LABEL_45:
  v132 = sub_22BB36E78();
  v1 = *(v0 + 448);
  v133 = *(v0 + 456);
  (v96)(v132, v51);
  v134 = sub_22BB345A8();
  v96(v134);
  if (v25 < v1 || v25 >= v133)
  {
    goto LABEL_52;
  }

LABEL_63:
  *(v0 + 904) = v96;
  v149 = *(v0 + 832);
  v221 = *(v0 + 824);
  sub_22BB69B5C();
  v224 = v150;
  v151 = *(v0 + 680);
  v237 = *(v0 + 648);
  v239 = *(v0 + 640);
  v227 = *(v0 + 632);
  v242 = *(v0 + 624);
  v233 = *(v0 + 616);
  v245 = *(v0 + 600);
  v250 = *(v0 + 608);
  v235 = *(v0 + 592);
  v229 = *(v0 + 584);
  v231 = *(v0 + 576);
  v152 = *(v0 + 440);
  sub_22BB31630();
  sub_22BDB9B24();
  sub_22BB3CE30();
  sub_22BDB96A4();
  sub_22BB39678();
  v153 = sub_22BB39744();
  v221(v153);
  v154 = sub_22BBCBFAC();
  (v96)(v154, v224);
  sub_22BB31630();
  sub_22BDB9B34();
  v155 = sub_22BDB9A14();
  v156 = sub_22BDB8434();
  sub_22BD81020(v156, v157, v155);
  sub_22BB3FE44();

  if (v25)
  {
    v158 = 0;
  }

  else
  {
    v158 = v152;
  }

  sub_22BDB9964();
  v159 = sub_22BDB9A24();
  v217 = v160;
  v219 = v159;
  v161 = type metadata accessor for ExecutorSELFContext();
  *(v0 + 80) = v161;
  sub_22BB32D00();
  v164 = sub_22BD721F4(v162, v163);
  v165 = sub_22BD725E0(v164);
  v215 = v161[8];
  v166 = v165 + v161[7];
  sub_22BB30B28();
  sub_22BB336D0(v167, v168, v169, v233);
  v222 = v161[5];
  sub_22BDB43D4();
  v170 = sub_22BB72244(v161[6]);
  (v25)(v170);
  *v166 = v158;
  v166[8] = v25 & 1;
  sub_22BD72114(v250, v165 + v215);
  v171 = (v165 + v161[10]);
  *v171 = v219;
  v171[1] = v217;
  sub_22BDB6764();
  sub_22BDB6744();
  v172 = sub_22BB8DC7C();
  (v25)(v172);
  sub_22BDB6754();
  v173 = v161[9];
  sub_22BDB6724();
  type metadata accessor for ExecutorSELFLogEmitter();
  sub_22BB3E424();
  v174 = sub_22BB70468();
  (v25)(v174);
  (v25)(v227, v165 + v173, v233);
  sub_22BBBEE60(v250, v245, &qword_27D8E3218, &qword_22BDBE390);
  v175 = type metadata accessor for ExecutorSELFLoggerASync(0);
  v176 = sub_22BB34ED4(v175);
  sub_22BB70C54();
  (v25)();
  v177 = type metadata accessor for ExecutorSELFLoggerSync(0);
  v178 = sub_22BB34ED4(v177);
  v178[5] = v235;
  v178[6] = &off_283F74E60;
  v178[2] = v219;
  v179 = sub_22BB39418(v178, OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_contextId);
  (v242)(v179);
  sub_22BB70C54();
  (v242)();
  v180 = v178 + OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_spanId;
  *v180 = v158;
  v180[8] = v25 & 1;
  sub_22BBDB5D0(v245, v178 + OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_ifRequestId, &qword_27D8E3218, &qword_22BDBE390);
  *(v176 + OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB123ExecutorSELFLoggerASync_logger) = v178;
  v165[3] = v175;
  v165[4] = &off_283F74C80;
  *v165 = v176;
  (*(v229 + 8))(v235, v231);
  sub_22BB325EC(v250, &qword_27D8E3218, &qword_22BDBE390);
  (*(v242 + 8))(v237, v233);
  v181 = sub_22BBBEE60(v0 + 56, v0 + 96, &dword_27D8E2F50, &unk_22BDBDEA0);
  v182 = *(v0 + 120);
  if (v182)
  {
    sub_22BBC7FC0(v181, v182);
    v183 = *(v0 + 400);
    v184 = *(v0 + 408);
    sub_22BB71F68((v0 + 376));
    sub_22BB331C8();
    sub_22BB336D0(v185, v186, v187, &qword_22BDBE390);
    sub_22BDB7604();
    v188 = sub_22BB2F5C8();
    v189(v188);
    v190 = *(v233 + 8);
    v191 = sub_22BB331D4();
    v192(v191);
    sub_22BB325EC(v176, &qword_27D8E3510, &qword_22BDBEF70);
    sub_22BB32FA4((v0 + 376));
    sub_22BB32FA4((v0 + 96));
  }

  else
  {
    sub_22BB325EC(v0 + 96, &dword_27D8E2F50, &unk_22BDBDEA0);
  }

  v193 = swift_task_alloc();
  *(v0 + 920) = v193;
  *v193 = v0;
  sub_22BB32840();
  sub_22BB6BEAC();
  sub_22BB385C0();

  return sub_22BD672A4(v194, v195, v196);
}

uint64_t sub_22BD72114(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BD721A4()
{
  v1 = sub_22BB35760();
  v3 = v2(v1);
  sub_22BB31F70(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_22BD721F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BD722A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionExecutionResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BD72308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_22BB30ED8(v4);
  v6 = *(v5 + 32);
  v7 = sub_22BB31F54();
  v8(v7);
  return a2;
}

unint64_t sub_22BD72388()
{
  result = sub_22BDB9B54();
  if (v1 <= 0x3F)
  {
    result = sub_22BD7240C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22BD7240C()
{
  result = qword_27D8E6720;
  if (!qword_27D8E6720)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D8E6720);
  }

  return result;
}

uint64_t sub_22BD72490()
{
  result = sub_22BDB8F54();
  if (v1 <= 0x3F)
  {
    result = sub_22BDB43E4();
    if (v2 <= 0x3F)
    {
      result = sub_22BDB9774();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22BD7252C(uint64_t a1)
{
  result = sub_22BD721F4(&qword_27D8E66E8, type metadata accessor for EventScopedProgressUpdateHandler);
  *(a1 + 8) = result;
  return result;
}

uint64_t *sub_22BD725E0(uint64_t a1)
{
  *(v1 + 88) = a1;

  return sub_22BB8B8A0((v1 + 56));
}

uint64_t sub_22BD726E8(uint64_t (*a1)(uint64_t *))
{
  sub_22BB37860();
  result = sub_22BBC20A8(v3);
  v5 = result;
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      return v5 != v7;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2318A5340](v6, v2);
      v8 = result;
    }

    else
    {
      if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(v2 + 8 * v6 + 32);
    }

    if (__OFADD__(v7, 1))
    {
      break;
    }

    v11 = v8;
    v9 = a1(&v11);

    if (!v1)
    {
      v6 = v7 + 1;
      if ((v9 & 1) == 0)
      {
        continue;
      }
    }

    return v5 != v7;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

BOOL sub_22BD7283C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL sub_22BD7291C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_22BB37860();
  v8 = v7;
  v9 = 0;
  v11 = *(v10 + 16);
  do
  {
    v12 = v9;
    if (v11 == v9)
    {
      break;
    }

    v13 = *(a4(0) - 8);
    v14 = v8(v5 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v12);
    if (v4)
    {
      break;
    }

    v9 = v12 + 1;
  }

  while ((v14 & 1) == 0);
  return v11 != v12;
}

__n128 SessionPersistenceManager.init(id:transactionStream:transactionStreamFilters:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_22BB35D58();
  sub_22BB6A1A8(v8, v10, v9);
  v11 = [BiomeLibrary() IntelligenceFlow];
  swift_unknownObjectRelease();
  v12 = [v11 Transcript];
  swift_unknownObjectRelease();
  v13 = [v12 Datastream];
  swift_unknownObjectRelease();
  v14 = [v13 source];

  sub_22BB6B8A8(a1);
  v15 = type metadata accessor for SessionPersistenceManager();
  *(a4 + v15[5]) = v14;
  v16 = a4 + v15[6];
  result = *a2;
  v18 = *(a2 + 16);
  *v16 = *a2;
  *(v16 + 16) = v18;
  *(v16 + 32) = *(a2 + 32);
  *(a4 + v15[7]) = a3;
  return result;
}

uint64_t sub_22BD72B10()
{
  v1 = v0[4];
  sub_22BB69FEC(v0, v0[3]);
  sub_22BB371E4();
  return sub_22BDB7684();
}

uint64_t sub_22BD72B60()
{
  sub_22BB35760();
  v1 = sub_22BDB43E4();
  v2 = sub_22BB30444(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v9 = v8 - v7;
  v0();
  sub_22BB31E04();
  sub_22BBBE8A4(v10, v11);
  sub_22BDBB684();
  sub_22BB3A788();
  (*(v4 + 8))(v9, v1);
  return sub_22BB31F54();
}

void sub_22BD72C80()
{
  sub_22BDB5664();
  if (v0 <= 0x3F)
  {
    sub_22BD72D8C();
    if (v1 <= 0x3F)
    {
      sub_22BD72DD0(319, qword_28142A2D0, &qword_27D8E6750, &qword_22BDCE8D0, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22BD72DD0(319, &qword_281428840, &qword_27D8E6758, qword_22BDCE8D8, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_22BD72D8C()
{
  result = qword_281428760;
  if (!qword_281428760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281428760);
  }

  return result;
}

void sub_22BD72DD0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_22BBEB2E0(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for IFRequestTelemetryFilterOnlyPRToExecutorAndRG(_BYTE *result, int a2, int a3)
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

uint64_t sub_22BD72F18()
{
  sub_22BB3A794();
  v1 = *v0;
  v3 = *sub_22BB69FEC(v2, v2[3]);
  v4 = sub_22BB52ED4(&unk_22BDCEA58);
  v5 = sub_22BB37580(v4);
  *v5 = v6;
  v7 = sub_22BB33E88(v5);

  return v9(v7);
}

uint64_t sub_22BD72FD0()
{
  sub_22BB2F0D4();
  sub_22BB36984(v0, v1, v2, v3, &off_2818A80F8, v4);
  sub_22BB2F09C();

  return v5();
}

uint64_t sub_22BD73034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, void *a4@<X5>, uint64_t a5@<X8>)
{
  v44 = a1;
  v39 = a3;
  v41 = a2;
  v43 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_22BB30444(AssociatedTypeWitness);
  v42 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v38 - v11;
  v40 = sub_22BDB9C14();
  v13 = sub_22BB30444(v40);
  v38 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a4[11];
  v20 = sub_22BB37C88();
  v21(v20);
  v22 = a4[7];
  v23 = sub_22BB37C88();
  v25 = v24(v23);
  v26 = a4[13];
  v27 = sub_22BB37C88();
  v28(v27);
  v29 = a4[9];
  v45[3] = swift_getAssociatedTypeWitness();
  v45[4] = swift_getAssociatedConformanceWitness();
  sub_22BB8B8A0(v45);
  v30 = sub_22BB37C88();
  v29(v30);
  v31 = a4[8];
  v32 = sub_22BB37C88();
  v33(v32);
  v34 = v39;
  v35 = *(v39 + 24);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35(v44, v18, v25, v46, v45, v12, AssociatedTypeWitness, AssociatedConformanceWitness, v41, v34);

  (*(v42 + 8))(v12, AssociatedTypeWitness);
  sub_22BB32FA4(v46);
  (*(v38 + 8))(v18, v40);
  return sub_22BB32FA4(v45);
}

uint64_t sub_22BD73314()
{
  sub_22BB2F0D4();
  sub_22BB36984(v0, v1, v2, v3, &off_2818A8138, v4);
  sub_22BB2F09C();

  return v5();
}

uint64_t sub_22BD73378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  return MEMORY[0x2822009F8](sub_22BD73710, 0, 0);
}

uint64_t sub_22BD73710()
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

    return sub_22BD31F98();
  }

  return result;
}

uint64_t sub_22BD73880()
{
  sub_22BB35850();
  v4 = v3;
  v5 = *(v3 + 312);
  v6 = *v2;
  sub_22BB3052C();
  *v7 = v6;

  if (v1)
  {
    v8 = sub_22BB31288();
    v9(v8);
    v10 = sub_22BD73B34;
  }

  else
  {
    *(v4 + 320) = v0;
    v10 = sub_22BD739A0;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_22BD739A0()
{
  v2 = v0[40];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  v7 = sub_22BBDB920();
  sub_22BB69338();
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_22BB53E14(v9);
  v10 = *v7;
  sub_22BD790CC(v2, sub_22BD741FC, v1);

  v11 = sub_22BB324FC();
  sub_22BB58728(v11, &qword_27D8E6518, &unk_22BDCE420);
  (*(v4 + 8))(v7, v1);
  sub_22BB32FA4(v0 + 2);

  sub_22BB2F09C();

  return v12();
}

uint64_t sub_22BD73B34()
{
  v3 = sub_22BB37870();
  v4(v3);
  v5 = sub_22BB38250();
  v6(v5);
  sub_22BB30AE4();
  v7 = sub_22BDBAC14();
  v9 = v8;
  sub_22BDB63D4();

  v10 = sub_22BDB77C4();
  v11 = sub_22BDBB114();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[19];
  v14 = v0[20];
  v15 = v0[18];
  if (v12)
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    *(v1 + 4) = sub_22BB370E8(4.8149e-34, v2, v16, v17, v18, v19, v20, v21, v22, v67, v71);
    sub_22BB3B450(&dword_22BB2C000, v23, v24, "Planner failed to process new Transcript: %s");
    sub_22BB32FA4(v2);
    sub_22BB30AF0();
    sub_22BB30AF0();
  }

  (*(v13 + 8))(v14, v15);
  sub_22BB32D18();
  v26 = v25[28];
  v68 = v25[29];
  v27 = sub_22BB69FEC(v25 + 25, v26);
  v28 = sub_22BDB9C64();
  v10->isa = (v13 + 8);
  v10[1].isa = v2;
  (*(v7 + 104))(v10, *MEMORY[0x277D1DEA8], v9);
  sub_22BDB9C74();
  sub_22BB94EB8();

  sub_22BBDB920();
  v29 = sub_22BBE6DE0(&qword_27D8E5FD0, &unk_22BDCEA40);
  v37 = sub_22BB36344(v29, v30, v31, v32, v33, v34, v35, v36, v68, v71);
  v38 = sub_22BB3440C(v37, xmmword_22BDBCBD0);
  v39(v38);
  v40 = *MEMORY[0x277D1DC50];
  v41 = sub_22BDB8294();
  sub_22BB2F330(v41);
  v43 = (*(v42 + 104))(v1, v40);
  v50 = sub_22BB2F5E8(v43, *MEMORY[0x277D1E718], v44, v45, v46, v47, v48, v49, v69, v72, v74, v76, v78);
  v51(v50);
  v52 = v81;
  sub_22BDB9A54();
  v53 = sub_22BB3A310();
  v54(v53);
  sub_22BB366C4();

  v63 = sub_22BB542E0(v55, v56, v57, v58, v59, v60, v61, v62, v70, v73, v75, v77, v79, v80, v81, v82);
  v64(v63);
  sub_22BB31E1C();
  sub_22BB58728(v52, &qword_27D8E6518, &unk_22BDCE420);
  (v27[1])(v28, v26);
  sub_22BB32FA4(v0 + 2);

  sub_22BB2F09C();

  return v65();
}

uint64_t sub_22BD73E70()
{
  v3 = sub_22BB37870();
  v4(v3);
  v5 = sub_22BB38250();
  v6(v5);
  sub_22BB30AE4();
  v7 = sub_22BDBAC14();
  v9 = v8;
  sub_22BDB63D4();

  v10 = sub_22BDB77C4();
  v11 = sub_22BDBB114();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[19];
  v14 = v0[20];
  v15 = v0[18];
  if (v12)
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    *(v1 + 4) = sub_22BB370E8(4.8149e-34, v2, v16, v17, v18, v19, v20, v21, v22, v67, v71);
    sub_22BB3B450(&dword_22BB2C000, v23, v24, "Planner failed to process new Transcript: %s");
    sub_22BB32FA4(v2);
    sub_22BB30AF0();
    sub_22BB30AF0();
  }

  (*(v13 + 8))(v14, v15);
  sub_22BB32D18();
  v26 = v25[18];
  v68 = v25[19];
  v27 = sub_22BB69FEC(v25 + 15, v26);
  v28 = sub_22BDB9C64();
  v10->isa = (v13 + 8);
  v10[1].isa = v2;
  (*(v7 + 104))(v10, *MEMORY[0x277D1DEA8], v9);
  sub_22BDB9C74();
  sub_22BB94EB8();

  sub_22BBDB920();
  v29 = sub_22BBE6DE0(&qword_27D8E5FD0, &unk_22BDCEA40);
  v37 = sub_22BB36344(v29, v30, v31, v32, v33, v34, v35, v36, v68, v71);
  v38 = sub_22BB3440C(v37, xmmword_22BDBCBD0);
  v39(v38);
  v40 = *MEMORY[0x277D1DC50];
  v41 = sub_22BDB8294();
  sub_22BB2F330(v41);
  v43 = (*(v42 + 104))(v1, v40);
  v50 = sub_22BB2F5E8(v43, *MEMORY[0x277D1E718], v44, v45, v46, v47, v48, v49, v69, v72, v74, v76, v78);
  v51(v50);
  v52 = v81;
  sub_22BDB9A54();
  v53 = sub_22BB3A310();
  v54(v53);
  sub_22BB366C4();

  v63 = sub_22BB542E0(v55, v56, v57, v58, v59, v60, v61, v62, v70, v73, v75, v77, v79, v80, v81, v82);
  v64(v63);
  sub_22BB31E1C();
  sub_22BB58728(v52, &qword_27D8E6518, &unk_22BDCE420);
  (v27[1])(v28, v26);
  sub_22BB32FA4(v0 + 2);

  sub_22BB2F09C();

  return v65();
}

uint64_t sub_22BD741AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22BB36C80(a1, a2, a3, a4);
  sub_22BB2F330(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_22BD74200()
{
  v0 = sub_22BDBB174();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BDBB154();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_22BDBAA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22BB6ECB0();
  sub_22BDBAA34();
  v10[1] = MEMORY[0x277D84F90];
  sub_22BB3B1D8(&unk_281428780, 255, MEMORY[0x277D85230]);
  sub_22BBE6DE0(&qword_27D8E3C48, &unk_22BDC0CD0);
  sub_22BD7454C();
  sub_22BDBB2B4();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v0);
  sub_22BDBB1A4();
  objc_opt_self();
  result = swift_dynamicCastObjCClassUnconditional();
  qword_28142F3F8 = result;
  return result;
}

uint64_t sub_22BD74464()
{
  type metadata accessor for SessionControlActor();
  result = swift_allocObject();
  qword_28142F3F0 = result;
  return result;
}

uint64_t sub_22BD744D8()
{
  if (qword_28142A928 != -1)
  {
    swift_once();
  }
}

unint64_t sub_22BD7454C()
{
  result = qword_2814287E0;
  if (!qword_2814287E0)
  {
    sub_22BBEB2E0(&qword_27D8E3C48, &unk_22BDC0CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814287E0);
  }

  return result;
}

uint64_t sub_22BD745B0(uint64_t a1)
{
  v2 = sub_22BDB5664();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    v21 = *(v2 - 8) + 64;
    v5 = *(a1 + 80);
    v6 = swift_checkMetadataState();
    v3 = v6;
    if (v7 <= 0x3F)
    {
      v22 = *(v6 - 8) + 64;
      AssociatedTypeWitness = sub_22BDB96E4();
      if (v9 > 0x3F)
      {
        return AssociatedTypeWitness;
      }

      v23 = *(AssociatedTypeWitness - 8) + 64;
      v10 = *(a1 + 88);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      if (v11 > 0x3F)
      {
        return AssociatedTypeWitness;
      }

      v24 = *(AssociatedTypeWitness - 8) + 64;
      sub_22BD758A0(319, &qword_2814287C0, MEMORY[0x277D857B8]);
      if (v12 > 0x3F)
      {
        return AssociatedTypeWitness;
      }

      v25 = *(AssociatedTypeWitness - 8) + 64;
      sub_22BD758A0(319, &qword_2814287C8, MEMORY[0x277D85788]);
      if (v13 > 0x3F)
      {
        return AssociatedTypeWitness;
      }

      v26 = *(AssociatedTypeWitness - 8) + 64;
      v14 = swift_getAssociatedTypeWitness();
      v16 = v15;
      swift_getAssociatedConformanceWitness();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      if (v17 > 0x3F)
      {
        return AssociatedTypeWitness;
      }

      else
      {
        v27 = *(AssociatedTypeWitness - 8) + 64;
        if (v16 > 0x3F)
        {
          return v14;
        }

        else
        {
          v28 = *(v14 - 8) + 64;
          v18 = swift_getAssociatedTypeWitness();
          v3 = v18;
          if (v19 <= 0x3F)
          {
            v29 = *(v18 - 8) + 64;
            return swift_initClassMetadata2();
          }
        }
      }
    }
  }

  return v3;
}

uint64_t sub_22BD74940()
{
  v0 = sub_22BB30F68();
  v1 = type metadata accessor for SessionCoordinatorCommand(v0);
  v2 = sub_22BB2F330(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  sub_22BB39070();
  v5 = sub_22BBE6DE0(&qword_27D8E63F0, &qword_22BDCEE10);
  sub_22BB30444(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB31580();
  sub_22BB3182C();
  swift_storeEnumTagMultiPayload();
  sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  sub_22BDBAF34();
  v11 = *(v7 + 8);
  v12 = sub_22BB3AAD8();
  return v13(v12);
}

uint64_t sub_22BD74A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22BDB43D4();
  v4 = *(type metadata accessor for EventPayloadWithPreassignedID(0) + 20);
  v5 = sub_22BDB9B14();
  sub_22BB2F330(v5);
  v7 = *(v6 + 16);

  return v7(a2 + v4, a1);
}

uint64_t sub_22BD74AD4()
{
  v0 = sub_22BB35760();
  v1 = type metadata accessor for SessionCoordinatorCommand.TransactionRequestPayload(v0);
  v2 = sub_22BB2F330(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  sub_22BB39070();
  v5 = sub_22BB30AE4();
  sub_22BB388FC(v5, v6);
  sub_22BB37494();
  return sub_22BDBAC14();
}

uint64_t sub_22BD74B58(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_22BBE6DE0(&qword_27D8E6778, &unk_22BDCED80);
  return sub_22BDBAC14();
}

uint64_t sub_22BD74C08()
{
  v1 = sub_22BB3A9D4();
  v3 = sub_22BBE6DE0(v1, v2);
  sub_22BB2F0C8(v3);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB69B9C(v7, v17);
  v8 = sub_22BDB43E4();
  v9 = sub_22BB3A190();
  if (sub_22BB3AA28(v9, v10, v8) == 1)
  {
    sub_22BB325EC(v0, &qword_27D8E3218, &qword_22BDBE390);
    return 7104878;
  }

  else
  {
    v11 = MEMORY[0x23189E350]();
    sub_22BB30474(v8);
    v13 = *(v12 + 8);
    v14 = sub_22BB2F324();
    v15(v14);
  }

  return v11;
}

uint64_t sub_22BD74CF8()
{
  sub_22BB30F68();
  v1 = sub_22BDB43E4();
  v2 = sub_22BB30444(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  sub_22BB39070();
  v7 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v7);
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB36858();
  swift_projectBox();
  swift_beginAccess();
  sub_22BDB9B54();
  v11 = sub_22BB3A190();
  if (!sub_22BB3AA28(v11, v12, v13))
  {
    sub_22BDB9964();
    if (!sub_22BB3AA28(v0, 1, v1))
    {
      v16 = *(v4 + 16);
      v17 = sub_22BB3A9D4();
      v18(v17);
      sub_22BB325EC(v0, &qword_27D8E3218, &qword_22BDBE390);
      v19 = swift_endAccess();
      v14 = MEMORY[0x23189E350](v19);
      v20 = *(v4 + 8);
      v21 = sub_22BB3182C();
      v22(v21);
      return v14;
    }

    sub_22BB325EC(v0, &qword_27D8E3218, &qword_22BDBE390);
  }

  swift_endAccess();
  return 7104878;
}

uint64_t sub_22BD74EB4()
{
  v1 = sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  sub_22BB2F0C8(v1);
  v3 = *(v2 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v7);
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB33230();
  v11 = sub_22BB37494();
  sub_22BB8AE8C(v11, v12, &unk_27D8E69E0, &qword_22BDC1660);
  v13 = sub_22BDB9B54();
  v14 = sub_22BB3A190();
  if (sub_22BB3AA28(v14, v15, v13) == 1)
  {
    v16 = &unk_27D8E69E0;
    v17 = &qword_22BDC1660;
    v18 = v6;
  }

  else
  {
    sub_22BDB9964();
    sub_22BB30474(v13);
    v20 = *(v19 + 8);
    v21 = sub_22BB2F3F0();
    v22(v21);
    v23 = sub_22BDB43E4();
    if (sub_22BB3AA28(v0, 1, v23) != 1)
    {
      MEMORY[0x23189E350]();
      sub_22BB30474(v23);
      (*(v24 + 8))(v0, v23);
      return sub_22BB37494();
    }

    v16 = &qword_27D8E3218;
    v17 = &qword_22BDBE390;
    v18 = v0;
  }

  sub_22BB325EC(v18, v16, v17);
  return sub_22BB37494();
}

uint64_t sub_22BD75080()
{
  sub_22BB30F68();
  v1 = sub_22BDB9B04();
  v2 = sub_22BB30444(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v2);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v0 + *(type metadata accessor for EventPayloadWithPreassignedID(0) + 20);
  sub_22BDB9AD4();
  (*(v4 + 104))(v9, *MEMORY[0x277D1E7E8], v1);
  LOBYTE(v10) = sub_22BDB9AF4();
  v11 = *(v4 + 8);
  v12 = sub_22BB3182C();
  v11(v12);
  v13 = sub_22BB37074();
  v11(v13);
  return v10 & 1;
}

uint64_t sub_22BD751C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_22BD751CC(uint64_t a1)
{
  v3 = sub_22BDB6034();
  v4 = sub_22BB30444(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  sub_22BB36858();
  v9 = sub_22BDB9B54();
  v10 = sub_22BB30444(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB30574();
  sub_22BB3ABC8();
  v15 = sub_22BDB8E84();
  v16 = sub_22BB30444(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  v23 = v22 - v21;
  (*(v12 + 16))(v1, a1, v9);
  sub_22BDB8E64();
  sub_22BDB8E74();
  sub_22BDB6024();
  sub_22BB6914C(&qword_281428A70, MEMORY[0x277D1E148]);
  v25 = sub_22BDB6064();
  v26 = *(v6 + 8);
  v27 = sub_22BB37074();
  v28(v27);
  (*(v18 + 8))(v23, v15);
  return v25;
}

uint64_t sub_22BD754C4()
{
  sub_22BB30F68();
  v0 = sub_22BDB9B14();
  v1 = sub_22BB30444(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  sub_22BB39070();
  sub_22BDB9B24();
  v6 = sub_22BDB9AE4();
  v7 = *(v3 + 8);
  v8 = sub_22BB3182C();
  v9(v8);
  return v6;
}

void sub_22BD75588(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = *a1, v6 = a1[1], sub_22BB72B1C(), (v9 & 1) != 0))
  {
    v10 = 0;
    v11 = *(a2 + 36);
  }

  else
  {
    v8 = 0;
    v11 = 0;
    v10 = -1;
  }

  *a3 = v8;
  *(a3 + 8) = v11;
  *(a3 + 16) = v10;
}

uint64_t sub_22BD755E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_22BB69FEC(a1, a1[3]);
  v4 = *(v3 + 8);
  v5 = sub_22BB3A9D4();
  result = v6(v5);
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t sub_22BD75634()
{
  v1 = sub_22BB3A9D4();
  v3 = sub_22BBE6DE0(v1, v2);
  sub_22BB2F0C8(v3);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB69B9C(v7, v17);
  v8 = sub_22BDB43E4();
  v9 = sub_22BB3A190();
  if (sub_22BB3AA28(v9, v10, v8) == 1)
  {
    sub_22BB325EC(v0, &qword_27D8E3218, &qword_22BDBE390);
    return 4271950;
  }

  else
  {
    v11 = MEMORY[0x23189E350]();
    sub_22BB30474(v8);
    v13 = *(v12 + 8);
    v14 = sub_22BB2F324();
    v15(v14);
  }

  return v11;
}

uint64_t sub_22BD75744@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  result = sub_22BDB8444();
  *a2 = result;
  a2[1] = v7;
  a2[2] = v5;
  return result;
}

uint64_t sub_22BD7577C(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  os_unfair_lock_lock((a2 + 20));
  v3 = *(a2 + 16);
  os_unfair_lock_unlock((a2 + 20));
  return v3;
}

uint64_t sub_22BD757D4()
{
  sub_22BB35760();
  v0 = sub_22BDB5D14();
  v1 = sub_22BB30444(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  sub_22BB39070();
  v5 = *(v4 + 16);
  v6 = sub_22BB3182C();
  v7(v6);
  sub_22BB37494();
  return sub_22BDBAC14();
}

void sub_22BD758A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SessionCoordinatorCommand(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_22BD75920()
{
  sub_22BD759D8();
  if (v0 <= 0x3F)
  {
    sub_22BD75A58();
    if (v1 <= 0x3F)
    {
      sub_22BD75BA8();
      if (v2 <= 0x3F)
      {
        type metadata accessor for SessionCoordinatorInjectionRequest(319);
        if (v3 <= 0x3F)
        {
          sub_22BDB5D14();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22BD759D8()
{
  if (!qword_281429BD0)
  {
    type metadata accessor for SessionCoordinatorCommand.TransactionRequestPayload(255);
    sub_22BBEB2E0(&qword_27D8E2E78, qword_22BDBD600);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281429BD0);
    }
  }
}

void sub_22BD75A58()
{
  if (!qword_281428820)
  {
    MEMORY[0x28223BE20](0);
    sub_22BBEB2E0(&qword_27D8E2F48, &unk_22BDBD950);
    sub_22BBEB2E0(&qword_27D8E3218, &qword_22BDBE390);
    sub_22BBEB2E0(&qword_27D8E6768, &qword_22BDCECD8);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_281428820);
    }
  }
}

void sub_22BD75BA8()
{
  if (!qword_281428980[0])
  {
    sub_22BDB98C4();
    sub_22BBEB2E0(&qword_27D8E3218, &qword_22BDBE390);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, qword_281428980);
    }
  }
}

void sub_22BD75C5C()
{
  if (!qword_281428808)
  {
    sub_22BBEB2E0(&qword_27D8E2F48, &unk_22BDBD950);
    type metadata accessor for SpanMetadata();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281428808);
    }
  }
}

void sub_22BD75CDC()
{
  if (!qword_281428838)
  {
    sub_22BBEB2E0(&qword_27D8E6770, &unk_22BDCED00);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281428838);
    }
  }
}

uint64_t sub_22BD75D54()
{
  result = sub_22BDB43E4();
  if (v1 <= 0x3F)
  {
    result = sub_22BDB9B14();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BD75E74()
{
  sub_22BB2F09C();
  v1 = *(v0 + 40);
  return v2();
}

uint64_t sub_22BD75E98()
{
  sub_22BB2F35C();
  v1 = sub_22BB3B470();
  v2(v1);

  sub_22BB2F09C();
  v4 = *(v0 + 120);

  return v3();
}

uint64_t sub_22BD75F1C@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_22BDB5664();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22BDB77D4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  sub_22BB388FC(a1, v11);
  v17 = sub_22BDB77C4();
  v18 = sub_22BDBB0F4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33[0] = v12;
    v20 = v19;
    v21 = swift_slowAlloc();
    v34 = a2;
    v35 = v21;
    v22 = v21;
    *v20 = 136315138;
    v23 = sub_22BDB5624();
    v33[1] = a3;
    v24 = a4;
    v26 = v25;
    sub_22BB698E8();
    v27 = sub_22BB32EE0(v23, v26, &v35);
    a4 = v24;

    *(v20 + 4) = v27;
    _os_log_impl(&dword_22BB2C000, v17, v18, "[SessionCoordinator %s] Forwarding SIGTERM.", v20, 0xCu);
    sub_22BB32FA4(v22);
    v28 = v22;
    a2 = v34;
    MEMORY[0x2318A6080](v28, -1, -1);
    MEMORY[0x2318A6080](v20, -1, -1);

    v29 = (*(v13 + 8))(v16, v33[0]);
  }

  else
  {

    sub_22BB698E8();
    v29 = (*(v13 + 8))(v16, v12);
  }

  a2(v29);
  v30 = *MEMORY[0x277D41D58];
  v31 = sub_22BDB64B4();
  return (*(*(v31 - 8) + 104))(a4, v30, v31);
}

uint64_t sub_22BD761F8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D41D50];
  v3 = sub_22BDB64B4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22BD7626C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result & 1;
  return result;
}

void *sub_22BD762A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_22BD76778(sub_22BD76A74, v5, a1, a2);
}

uint64_t sub_22BD762F4(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_22BB3531C(v6, v5);
      *v4 = xmmword_22BDCEAE0;
      sub_22BB3531C(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (sub_22BDB41E4() && __OFSUB__(v6, sub_22BDB4204()))
      {
        goto LABEL_24;
      }

      v13 = sub_22BDB4214();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_22BDB41C4();

      v11 = v16;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_22BD767DC(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_22BB3531C(v6, v5);
      v20 = v6;
      v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_22BDCEAE0;
      sub_22BB3531C(0, 0xC000000000000000);
      sub_22BDB4274();
      v6 = v20;
      v9 = sub_22BD767DC(*(v20 + 16), *(v20 + 24), a1);
      if (v2)
      {
        v10 = v21 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v21 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

LABEL_21:
      v17 = *MEMORY[0x277D85DE8];
      return v3;
    case 3uLL:
      memset(v22, 0, 15);
      a1(&v20, v22, v22);
      if (!v2)
      {
        v3 = v20;
      }

      goto LABEL_21;
    default:
      v3 = v6 >> 8;
      sub_22BB3531C(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        v3 = v20;
      }

      v8 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v4 = v22[0];
      v4[1] = v8;
      goto LABEL_21;
  }
}

uint64_t sub_22BD766B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
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
    result = sub_22BDB4264();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x23189E250]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x23189E260]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_22BD76730(uint64_t result)
{
  if (result)
  {
    result = sub_22BDBB344();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22BD76778(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_22BD767DC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_22BDB41E4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_22BDB4204();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_22BDB41F4();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_22BD76890()
{
  v2 = *MEMORY[0x277D85DE8];
  sub_22BDBAAC4();
  sub_22BB6914C(&qword_2814288D8, MEMORY[0x277CC5540]);
  result = sub_22BDBAA84();
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_22BD76964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_22BD762A0(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_22BD769B8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22BDBACD4();
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
    v5 = MEMORY[0x2318A4C80](15, a1 >> 16);
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

uint64_t sub_22BD76A34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  result = sub_22BD76730(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

uint64_t sub_22BD76A94@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22BDB5664();
  sub_22BB30434(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_22BD75F1C(v1 + v8, v10, v11, a1);
}

void sub_22BD76B54()
{
  sub_22BDB96E4();
  if (v0 <= 0x3F)
  {
    sub_22BD76C08();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SessionCoordinatorResponseCallback();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22BD76C08()
{
  if (!qword_2814287A8)
  {
    v0 = sub_22BDBB0D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2814287A8);
    }
  }
}

uint64_t sub_22BD76C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BD76D2C(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  do
  {
    if (!v6)
    {
      break;
    }

    --v6;
    v7 = *(sub_22BDB9B54() - 8);
    v8 = a1(a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6);
    if (v3)
    {
      break;
    }
  }

  while ((v8 & 1) == 0);
  return v6;
}

uint64_t sub_22BD76E2C()
{
  if (*(v0 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime29SessionCoordinatorConversions17ConversionContext_statementIdIsInert))
  {

    return sub_22BDB4C14();
  }

  else
  {
    sub_22BDB96C4();
    sub_22BDB98D4();
  }
}

uint64_t sub_22BD76EC0()
{
  result = sub_22BDB96E4();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_22BDB9C14();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22BD76FDC()
{
  v0 = sub_22BDB43E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  sub_22BDB8F24();
  sub_22BDB4FF4();
  v8 = sub_22BDB43B4();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return v8 & 1;
}

unint64_t sub_22BD77168()
{
  result = qword_27D8E67B8;
  if (!qword_27D8E67B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E67B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClientMessageError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22BD7729C()
{
  result = qword_27D8E67C8;
  if (!qword_27D8E67C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E67C8);
  }

  return result;
}

uint64_t sub_22BD772F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 136) = v28;
  *(v6 + 144) = v5;
  *(v6 + 120) = v27;
  *(v6 + 104) = v26;
  *(v6 + 88) = v24;
  *(v6 + 96) = v25;
  *(v6 + 72) = v22;
  *(v6 + 80) = v23;
  *(v6 + 56) = a4;
  *(v6 + 64) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  v7 = sub_22BDB77D4();
  *(v6 + 152) = v7;
  sub_22BB30434(v7);
  *(v6 + 160) = v8;
  v10 = *(v9 + 64);
  *(v6 + 168) = sub_22BB30ACC();
  v11 = *(v25 - 8);
  *(v6 + 176) = v11;
  v12 = *(v11 + 64);
  *(v6 + 184) = sub_22BB30ACC();
  v13 = sub_22BDB43E4();
  *(v6 + 192) = v13;
  sub_22BB30434(v13);
  *(v6 + 200) = v14;
  v16 = *(v15 + 64);
  *(v6 + 208) = sub_22BB30ACC();
  if (v22)
  {
    swift_getObjectType();
    v17 = sub_22BDBAE44();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  *(v6 + 216) = v17;
  *(v6 + 224) = v19;

  return MEMORY[0x2822009F8](sub_22BD774A0, v17, v19);
}

uint64_t sub_22BD774A0()
{
  v1 = *(*(v0 + 144) + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorInjectionContext_fastCheckInjectionEnabledState);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 == 1)
  {
    v3 = *(v0 + 136);
    v4 = *(v0 + 104);
    v5 = *(v0 + 88);
    v6 = *(*(v0 + 144) + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorInjectionContext_encoder);
    v7 = sub_22BDB4144();
    *(v0 + 232) = 0;
    *(v0 + 240) = v7;
    *(v0 + 248) = v8;
    v11 = v7;
    v12 = v8;
    v13 = *(v0 + 208);
    v14 = *(v0 + 144);
    v15 = *(v0 + 64);
    v16 = *(v0 + 40);
    v34 = *(v0 + 96);
    v35 = *(v0 + 48);
    v32 = *(v0 + 128);
    v33 = *(v0 + 112);
    sub_22BDB43D4();
    v17 = swift_task_alloc();
    *(v0 + 256) = v17;
    *(v17 + 16) = v34;
    *(v17 + 32) = v33;
    *(v17 + 48) = v32;
    *(v17 + 64) = v14;
    *(v17 + 72) = v16;
    *(v17 + 80) = v35;
    *(v17 + 96) = v15;
    *(v17 + 104) = v13;
    *(v17 + 112) = v11;
    *(v17 + 120) = v12;
    v18 = *(MEMORY[0x277D859E0] + 4);
    v19 = swift_task_alloc();
    *(v0 + 264) = v19;
    v20 = sub_22BBE6DE0(&qword_27D8E67D0, qword_22BDCF188);
    *v19 = v0;
    v19[1] = sub_22BD777A4;
    v21 = *(v0 + 72);
    v22 = *(v0 + 80);

    return MEMORY[0x2822007B8](v0 + 16, v21, v22, 0xD00000000000003BLL, 0x800000022BDD4350, sub_22BD78AA0, v17, v20);
  }

  else
  {
    v9 = *(v0 + 96);
    v10 = *(v0 + 32);
    sub_22BB30B28();
    sub_22BB336D0(v23, v24, v25, v26);
    v27 = *(v0 + 208);
    v28 = *(v0 + 184);
    v29 = *(v0 + 168);

    sub_22BB2F09C();

    return v30();
  }
}

uint64_t sub_22BD777A4()
{
  v1 = *v0;
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 256);
  v7 = *v0;

  v4 = *(v1 + 224);
  v5 = *(v1 + 216);

  return MEMORY[0x2822009F8](sub_22BD778E8, v5, v4);
}

uint64_t sub_22BD778E8()
{
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    v3 = v0[25];
    v2 = v0[26];
    v4 = v0[24];
    v5 = v0[12];
    v6 = v0[4];
    sub_22BB3531C(v0[30], v0[31]);
    sub_22BB30B28();
    sub_22BB336D0(v7, v8, v9, v5);
    (*(v3 + 8))(v2, v4);
  }

  else
  {
    v10 = v0[2];
    v11 = v0[29];
    v12 = v0[23];
    v13 = v0[14];
    v14 = v0[12];
    v15 = *(v0[18] + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorInjectionContext_decoder);
    v16 = v0[3];
    sub_22BDB4114();
    v17 = v0[30];
    v18 = v0[31];
    v20 = v0[25];
    v19 = v0[26];
    v21 = v0[24];
    if (v11)
    {
      sub_22BB3531C(v17, v18);
      sub_22BB94C90(v10, v1);
      (*(v20 + 8))(v19, v21);
      v22 = v0[21];
      sub_22BDB6414();
      v23 = v11;
      v24 = sub_22BDB77C4();
      v25 = sub_22BDBB124();

      if (os_log_type_enabled(v24, v25))
      {
        swift_slowAlloc();
        v26 = sub_22BB2F340();
        *v10 = 138412290;
        v27 = v11;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v10 + 4) = v28;
        *v26 = v28;
        sub_22BB309C4(&dword_22BB2C000, v29, v30, "Failed to inject value: %@");
        sub_22BBE6D78(v26);
        sub_22BB30458();
        sub_22BB32238();
      }

      else
      {
      }

      v35 = sub_22BB33EA0();
      v36(v35);
      sub_22BB30B28();
      sub_22BB336D0(v37, v38, v39, v24);
    }

    else
    {
      v32 = v0[22];
      v31 = v0[23];
      v33 = v0[12];
      v34 = v0[4];
      sub_22BB3531C(v17, v18);
      sub_22BB94C90(v10, v1);
      (*(v32 + 32))(v34, v31, v33);
      sub_22BB336D0(v34, 0, 1, v33);
      (*(v20 + 8))(v19, v21);
    }
  }

  v40 = v0[26];
  v41 = v0[23];
  v42 = v0[21];

  sub_22BB2F09C();

  return v43();
}

uint64_t sub_22BD77B78(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  v75 = a4;
  v76 = a8;
  v71 = a7;
  v72 = a3;
  v73 = a5;
  v74 = a6;
  v66 = a1;
  v61 = a10;
  v11 = sub_22BDB43E4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for SessionCoordinatorCommand(0);
  v16 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v56 - v22;
  v24 = sub_22BBE6DE0(&qword_27D8E63F0, &qword_22BDCEE10);
  v63 = *(v24 - 8);
  v64 = v24;
  v25 = *(v63 + 64);
  MEMORY[0x28223BE20](v24);
  v62 = &v56 - v26;
  v68 = v20;
  v27 = *(v20 + 16);
  v70 = v19;
  v27(v23, &a2[OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorInjectionContext_commandContinuation], v19);
  v28 = *(a2 + 2);
  v59 = *(a2 + 3);
  v60 = v28;
  v29 = *(a2 + 4);
  v58 = *(a2 + 5);
  v30 = *(a2 + 6);
  v69 = v12;
  v31 = *(v12 + 16);
  v65 = v15;
  v32 = v71;
  v71 = v11;
  v31(v15, v32, v11);

  v33 = sub_22BDBB484();
  if (v34)
  {
    v35 = v34;
    v57 = v33;
  }

  else
  {
    v57 = sub_22BDBB8F4();
    v35 = v36;
  }

  v37 = sub_22BDBB484();
  if (!v38)
  {
    v37 = sub_22BDBB8F4();
  }

  v39 = v37;
  v40 = v38;
  v41 = type metadata accessor for SessionCoordinatorInjectionRequest(0);
  v42 = v41[13];
  v43 = sub_22BBE6DE0(&qword_27D8E64C8, &qword_22BDCE3D0);
  (*(*(v43 - 8) + 16))(&v18[v42], v66, v43);
  v44 = v59;
  *v18 = v60;
  *(v18 + 1) = v44;
  v45 = v58;
  *(v18 + 2) = v29;
  *(v18 + 3) = v45;
  v47 = v72;
  v46 = v73;
  *(v18 + 4) = v30;
  *(v18 + 5) = v47;
  v48 = v74;
  *(v18 + 6) = v75;
  *(v18 + 7) = v46;
  *(v18 + 8) = v48;
  (*(v69 + 32))(&v18[v41[9]], v65, v71);
  v49 = &v18[v41[10]];
  *v49 = v57;
  v49[1] = v35;
  v50 = &v18[v41[11]];
  v51 = v76;
  *v50 = v76;
  v50[1] = a9;
  v52 = &v18[v41[12]];
  *v52 = v39;
  v52[1] = v40;
  swift_storeEnumTagMultiPayload();

  sub_22BB352C4(v51, a9);
  v53 = v62;
  v54 = v70;
  sub_22BDBAF34();
  (*(v68 + 8))(v23, v54);
  return (*(v63 + 8))(v53, v64);
}

uint64_t sub_22BD77FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 64) = v31;
  *(v9 + 72) = v8;
  *(v9 + 48) = v30;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v11 = sub_22BDB77D4();
  *(v9 + 80) = v11;
  sub_22BB30434(v11);
  *(v9 + 88) = v12;
  v14 = *(v13 + 64);
  *(v9 + 96) = sub_22BB30ACC();
  v15 = type metadata accessor for SessionCoordinatorCommand(0);
  *(v9 + 104) = v15;
  v16 = *(*(v15 - 8) + 64);
  *(v9 + 112) = sub_22BB30ACC();
  v17 = sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  *(v9 + 120) = v17;
  sub_22BB30434(v17);
  *(v9 + 128) = v18;
  v20 = *(v19 + 64);
  *(v9 + 136) = sub_22BB30ACC();
  v21 = sub_22BBE6DE0(&qword_27D8E63F0, &qword_22BDCEE10);
  *(v9 + 144) = v21;
  sub_22BB30434(v21);
  *(v9 + 152) = v22;
  v24 = *(v23 + 64);
  *(v9 + 160) = sub_22BB30ACC();
  if (a8)
  {
    swift_getObjectType();
    v25 = sub_22BDBAE44();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  return MEMORY[0x2822009F8](sub_22BD7818C, v25, v27);
}

uint64_t sub_22BD7818C()
{
  v1 = *(v0[9] + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorInjectionContext_fastCheckInjectionEnabledState);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 == 1)
  {
    v3 = v0[8];
    v4 = v0[6];
    v5 = v0[7];
    v6 = *(v0[9] + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorInjectionContext_encoder);
    v7 = sub_22BDB4144();
    v35 = v8;
    v36 = v7;
    v9 = v0[9];
    v10 = v0[7];
    (*(v0[16] + 16))(v0[17], v9 + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorInjectionContext_commandContinuation, v0[15]);
    v33 = v9[3];
    v34 = v9[2];
    v11 = v9[4];
    v32 = v9[5];
    v12 = v9[6];

    v13 = sub_22BDBB484();
    if (!v14)
    {
      v15 = v0[7];
      v13 = sub_22BDBB8F4();
    }

    v31 = v0[20];
    v17 = v0[16];
    v16 = v0[17];
    v19 = v0[14];
    v18 = v0[15];
    v20 = v0[13];
    v21 = v0[4];
    v22 = v0[5];
    v23 = v0[2];
    v24 = v0[3];
    *v19 = v34;
    v19[1] = v33;
    v19[2] = v11;
    v19[3] = v32;
    v19[4] = v12;
    v19[5] = v23;
    v19[6] = v24;
    v19[7] = v21;
    v19[8] = v22;
    v19[9] = v13;
    v19[10] = v14;
    v19[11] = v36;
    v19[12] = v35;
    swift_storeEnumTagMultiPayload();

    sub_22BDBAF34();
    (*(v17 + 8))(v16, v18);
    (*(v0[19] + 8))(v0[20], v0[18]);
  }

  v25 = v0[20];
  v26 = v0[17];
  v27 = v0[14];
  v28 = v0[12];

  sub_22BB2F09C();

  return v29();
}

void sub_22BD7846C()
{
  sub_22BD78528();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22BD78528()
{
  if (!qword_2814287C8)
  {
    type metadata accessor for SessionCoordinatorCommand(255);
    v0 = sub_22BDBAF54();
    if (!v1)
    {
      atomic_store(v0, &qword_2814287C8);
    }
  }
}

uint64_t sub_22BD78580(uint64_t a1)
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

uint64_t sub_22BD785A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_22BD785E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_22BD78674()
{
  sub_22BC05698();
  if (v0 <= 0x3F)
  {
    sub_22BDB43E4();
    if (v1 <= 0x3F)
    {
      sub_22BD78740();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22BD78740()
{
  if (!qword_2814287D8)
  {
    sub_22BBEB2E0(&qword_27D8E67D0, qword_22BDCF188);
    v0 = sub_22BDBAE64();
    if (!v1)
    {
      atomic_store(v0, &qword_2814287D8);
    }
  }
}

uint64_t sub_22BD787B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v8 = swift_task_alloc();
  *(v6 + 16) = v8;
  *v8 = v6;
  v8[1] = sub_22BD78AEC;

  return sub_22BD772F0(a1, a2, a3, a4, a5);
}

uint64_t sub_22BD788BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *v8;
  v15 = swift_task_alloc();
  *(v9 + 16) = v15;
  *v15 = v9;
  v15[1] = sub_22BD789B0;

  return sub_22BD77FB4(a1, a2, a3, a4, v16, v17, v18, a8);
}

uint64_t sub_22BD789B0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  sub_22BB2F09C();

  return v2();
}

uint64_t sub_22BD78AA0(uint64_t a1)
{
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v3 = *(v1 + 24);
  return sub_22BD77B78(a1, *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120), *(v1 + 16));
}

uint64_t sub_22BD78AF0(uint64_t *a1)
{
  v2 = sub_22BDB7764();
  v23 = *(v2 - 8);
  v3 = *(v23 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_22BDB7734();
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v25);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_22BDB7754();
  v10 = *(v24 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v24);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22BDB6104();
  v14 = *a1;
  v15 = sub_22BDB7744();
  sub_22BDB7774();
  v22 = sub_22BDBB1C4();
  if (sub_22BDBB244())
  {

    sub_22BDB77B4();

    v16 = v23;
    if ((*(v23 + 88))(v5, v2) == *MEMORY[0x277D85B00])
    {
      v17 = "[Error] Interval already ended";
    }

    else
    {
      (*(v16 + 8))(v5, v2);
      v17 = "";
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v15, v22, v19, "Span", v17, v18, 2u);
    MEMORY[0x2318A6080](v18, -1, -1);
  }

  (*(v6 + 8))(v9, v25);
  return (*(v10 + 8))(v13, v24);
}

void sub_22BD78DF0()
{
  v0 = sub_22BDB43E4();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for SpanMetadata();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_22BD78528();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_22BD78EFC(uint64_t a1)
{
  v3 = type metadata accessor for SessionCoordinatorCommand(0);
  v4 = sub_22BB2F330(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BBE6DE0(&qword_27D8E63F0, &qword_22BDCEE10);
  v10 = sub_22BB30444(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v25 - v15;
  v17 = sub_22BBE6DE0(&qword_27D8E6540, &qword_22BDCE450);
  v18 = *(v17 + 48);
  v19 = *(v17 + 64);
  v20 = sub_22BDB98C4();
  sub_22BB2F330(v20);
  (*(v21 + 16))(v8, a1);
  v22 = v1 + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorResponseCallback_spanMetadata;
  *&v8[v18] = *(v1 + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorResponseCallback_spanMetadata);
  v23 = type metadata accessor for SpanMetadata();
  sub_22BB956CC(v22 + *(v23 + 24), &v8[v19]);
  swift_storeEnumTagMultiPayload();
  sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  sub_22BDBAF34();
  return (*(v12 + 8))(v16, v9);
}

uint64_t sub_22BD790CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v6 = type metadata accessor for SessionCoordinatorCommand(0);
  v7 = sub_22BB2F330(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_22BBE6DE0(&qword_27D8E63F0, &qword_22BDCEE10);
  v13 = sub_22BB30444(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v23 - v18;
  v20 = (v11 + *(sub_22BBE6DE0(&qword_27D8E63F8, &qword_22BDCE220) + 48));
  v21 = *(sub_22BBE6DE0(&qword_27D8E6408, &qword_22BDCE240) + 48);
  *v11 = a1;
  sub_22BBBE904(v3 + OBJC_IVAR____TtC23IntelligenceFlowRuntime34SessionCoordinatorResponseCallback_spanMetadata, v11 + v21, type metadata accessor for SpanMetadata);
  type metadata accessor for SessionCoordinatorCommand.TransactionRequestPayload(0);
  swift_storeEnumTagMultiPayload();
  *v20 = v24;
  v20[1] = a3;
  swift_storeEnumTagMultiPayload();

  sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  sub_22BDBAF34();
  return (*(v15 + 8))(v19, v12);
}

void sub_22BD792BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 && a5 && (sub_22BBC03CC() & 1) != 0)
  {

    sub_22BCEF9C0();
  }
}

uint64_t sub_22BD79348(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22BD79360(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_22BD793B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_22BD79408(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_22BD79534()
{
  sub_22BDB5F24();
  if (v0 <= 0x3F)
  {
    sub_22BD79690(319, &qword_281428828, MEMORY[0x277D1E600], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_22BDB7F64();
      if (v2 <= 0x3F)
      {
        type metadata accessor for DefaultEventLogSender();
        if (v3 <= 0x3F)
        {
          sub_22BDB9C14();
          if (v4 <= 0x3F)
          {
            type metadata accessor for SnippetStreamingRouter.Scoped();
            if (v5 <= 0x3F)
            {
              sub_22BD79690(319, &qword_28142DC10, MEMORY[0x277D1E3D8], MEMORY[0x277D41D28]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_22BD79690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22BD7974C()
{
  sub_22BB31014();
  v2 = v1;
  v26 = v4;
  v27 = v3;
  v6 = v5(0);
  sub_22BB30444(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = 0;
  v15 = *(v2 + 16);
  v16 = (v8 + 8);
  while (1)
  {
    if (v15 == v14)
    {
      v21 = 1;
      v22 = v26;
      goto LABEL_9;
    }

    (*(v8 + 16))(v13, v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, v6);
    v17 = v27(v13);
    if (v0)
    {
      v23 = *v16;
      v24 = sub_22BB3ADA8();
      v25(v24);
      goto LABEL_10;
    }

    if (v17)
    {
      break;
    }

    v18 = *v16;
    v19 = sub_22BB3ADA8();
    v20(v19);
    ++v14;
  }

  v22 = v26;
  (*(v8 + 32))(v26, v13, v6);
  v21 = 0;
LABEL_9:
  sub_22BB336D0(v22, v21, 1, v6);
LABEL_10:
  sub_22BB376A8();
}

void sub_22BD799B0()
{
  sub_22BB31014();
  v3 = v2;
  v5 = v4;
  v21 = v6;
  v20 = v7(0);
  sub_22BB30444(v20);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v12);
  sub_22BB3721C();
  v13 = 0;
  v14 = *(v3 + 16);
  while (1)
  {
    if (v14 == v13)
    {
      v18 = 1;
      v19 = v21;
      goto LABEL_9;
    }

    v15 = v3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v16 = *(v9 + 72);
    sub_22BB33618();
    v17 = v5(v1);
    if (v0)
    {
      sub_22BB34698();
      goto LABEL_10;
    }

    if (v17)
    {
      break;
    }

    sub_22BB34698();
    ++v13;
  }

  v19 = v21;
  sub_22BB38958();
  v18 = 0;
LABEL_9:
  sub_22BB336D0(v19, v18, 1, v20);
LABEL_10:
  sub_22BB376A8();
}

uint64_t sub_22BD79B78@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = result;
  v6 = *(a2 + 16);
  v7 = a2 + 32;
  if (v6)
  {
    while (1)
    {
      sub_22BB69088(v7, v9);
      v8 = v4(v9);
      if (v3)
      {
        return sub_22BB32FA4(v9);
      }

      if (v8)
      {
        return sub_22BB382E8(v9, a3);
      }

      result = sub_22BB32FA4(v9);
      v7 += 40;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_22BD79C30@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v32[2] = a2;
  v33 = a1;
  v32[0] = a4;
  v34 = sub_22BBE6DE0(&qword_27D8E6760, &unk_22BDCE9D0);
  v7 = *(*(v34 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v34);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v32[1] = v32 - v11;
  v12 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 64);
  v16 = (v13 + 63) >> 6;
  v35 = a3;

  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v10;
      v36 = v5;
      v20 = v18;
LABEL_9:
      v21 = v35;
      v22 = *(v35 + 48);
      v23 = *(*(sub_22BDB5F24() - 8) + 72);
      sub_22BB33618();
      v24 = *(v21 + 56);
      v25 = v24 + *(*(type metadata accessor for SessionSwitchboard.SessionInfo() - 8) + 72) * (__clz(__rbit64(v15)) | (v20 << 6));
      v26 = *(v34 + 48);
      sub_22BB33618();
      v10 = v19;
      sub_22BC8D26C();
      v27 = v36;
      v28 = v33(v19);
      v5 = v27;
      if (v27)
      {
        sub_22BB58728(v19, &qword_27D8E6760, &unk_22BDCE9D0);
      }

      if (v28)
      {
        break;
      }

      v15 &= v15 - 1;
      result = sub_22BB58728(v19, &qword_27D8E6760, &unk_22BDCE9D0);
      v18 = v20;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v31 = v32[0];
    sub_22BC8D26C();
    v29 = v31;
    v30 = 0;
    return sub_22BB336D0(v29, v30, 1, v34);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v16)
      {

        v29 = v32[0];
        v30 = 1;
        return sub_22BB336D0(v29, v30, 1, v34);
      }

      v15 = *(v12 + 8 * v20);
      ++v18;
      if (v15)
      {
        v19 = v10;
        v36 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22BD79EFC()
{
  sub_22BB2F35C();
  v1 = v0[32];
  v2 = v0[33];
  v4 = v0[27];
  v3 = v0[28];

  sub_22BBCC320((v0 + 2));

  sub_22BB33EB8();
  sub_22BB34698();
  v5 = v0[35];
  v6 = v0[27];
  v7 = v0[25];

  sub_22BB2F09C();

  return v8();
}

void (*sub_22BD79F9C(void *a1))(uint64_t a1)
{
  v2 = sub_22BD7EA64(0x30uLL);
  *a1 = v2;
  v3 = sub_22BDB52C4();
  v2[4] = sub_22BD7EA64(*(*(v3 - 8) + 64));
  sub_22BB33618();
  v2[5] = sub_22BD7DEFC(v2);
  return sub_22BD7A058;
}

void sub_22BD7A058(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 32);
  v2 = *(*a1 + 40);
  v4 = sub_22BC541D0();
  v5(v4);
  sub_22BB35D94();
  sub_22BB34698();
  free(v3);

  free(v1);
}

uint64_t sub_22BD7A0B4()
{
  v1 = type metadata accessor for SessionCoordinatorCommand(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v3 = sub_22BBE6DE0(&qword_27D8E63F0, &qword_22BDCEE10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *(*v0 + 176);
  swift_storeEnumTagMultiPayload();
  sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  sub_22BDBAF34();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_22BD7A21C()
{
  type metadata accessor for SessionSwitchboard();
  v0 = swift_allocObject();
  result = sub_22BD7A258();
  qword_28142F400 = v0;
  return result;
}

uint64_t sub_22BD7A258()
{
  sub_22BDB5F24();
  sub_22BB35760();
  type metadata accessor for SessionSwitchboard.SessionInfo();
  sub_22BB3CC60(&qword_28142DC28, MEMORY[0x277D1D2C8]);
  *(v0 + 16) = sub_22BDBAB14();
  sub_22BDB52C4();
  sub_22BB32D54();
  sub_22BB3CC60(v1, v2);
  *(v0 + 24) = sub_22BDBAB14();
  return v0;
}

uint64_t sub_22BD7A334()
{
  sub_22BB2F0D4();
  v1 = v0[51];
  sub_22BD7A0B4();
  v2 = v0[39];
  v3 = v0[40];

  return MEMORY[0x2822009F8](sub_22BD7A394, v2, v3);
}

uint64_t sub_22BD7A394()
{
  v4 = *(v1 + 288);
  sub_22BB33EB8();
  v5 = sub_22BB34698();
  v8 = *(v1 + 400);
  v9 = (*(v1 + 392) - 1) & *(v1 + 392);
  if (v9)
  {
    while (1)
    {
      v10 = *(v1 + 384);
LABEL_7:
      *(v1 + 392) = v9;
      *(v1 + 400) = v8;
      sub_22BB3DF00();
      v13 = *(v12 + 56);
      v15 = *(v14 + 72);
      sub_22BB37890();
      sub_22BB33618();
      sub_22BB31E54();
      v16 = sub_22BB38958();
      if (*(v0 + *(v2 + 28)))
      {
        break;
      }

      v9 &= v9 - 1;
      v17 = *(v1 + 288);
      sub_22BB33EB8();
      v5 = sub_22BB34698();
      if (!v9)
      {
        goto LABEL_3;
      }
    }

    sub_22BB39808(v16);
    sub_22BB3CEF4();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v5 = *(v1 + 384);
      if (v11 >= (((1 << *(v1 + 452)) + 63) >> 6))
      {

        v18 = *(v1 + 96);
        sub_22BB31B88();
        swift_beginAccess();
        v19 = *(v18 + 16);
        *(v1 + 416) = v19;
        *(v1 + 453) = *(v19 + 32);
        sub_22BB52A10(v19);
        v22 = v20 & v21;
        *(v1 + 448) = *MEMORY[0x277D1C8C0];

        if (!v22)
        {
          goto LABEL_12;
        }

        while (1)
        {
          v23 = *(v1 + 416);
          v27 = *(v1 + 280);
          v28 = *(v1 + 264);
          v3 = *(v1 + 232);
          v29 = *(v1 + 240);
          v22 &= v22 - 1;
          v30 = *(v23 + 48);
          v31 = *(*(v1 + 216) + 72);
          sub_22BB36720();
          sub_22BB33618();
          v32 = *(v23 + 56);
          v33 = *(v28 + 72);
          sub_22BB37890();
          sub_22BB33618();
          LODWORD(v28) = *(sub_22BBE6DE0(&qword_27D8E6760, &unk_22BDCE9D0) + 48);
          sub_22BB30E54();
          sub_22BB38958();
          sub_22BB31E54();
          sub_22BB38958();
          v34 = sub_22BB34914();
          sub_22BB336D0(v34, v35, v36, v37);
          while (1)
          {
            sub_22BB53CA0();
            sub_22BC8D26C();
            v38 = sub_22BBE6DE0(&qword_27D8E6760, &unk_22BDCE9D0);
            sub_22BB34F58(v38);
            if (v39)
            {
              sub_22BB36AB0();

              sub_22BDB63E4();
              sub_22BB32564();
              sub_22BB33618();
              v50 = sub_22BDB77C4();
              sub_22BDBB134();
              sub_22BB3E2A4();
              os_log_type_enabled(v50, v51);
              sub_22BB3B494();
              if (v52)
              {
                v53 = *(v1 + 104);
                sub_22BB354D0();
                v82 = v29;
                v54 = swift_slowAlloc();
                sub_22BB2F440();
                v83 = swift_slowAlloc();
                *v54 = 136446210;
                sub_22BB32D54();
                sub_22BB3CC60(v55, v56);
                sub_22BDBB684();
                sub_22BB35D94();
                sub_22BB34698();
                v57 = sub_22BB2F12C();
                sub_22BB32EE0(v57, v58, v59);
                sub_22BB36C3C();

                *(v54 + 4) = &qword_27D8E6760;
                sub_22BB3163C(&dword_22BB2C000, v60, v61, "SessionClient %{public}s deregistered.");
                sub_22BB32FA4(v83);
                v62 = sub_22BB94EFC();
                MEMORY[0x2318A6080](v62);
                v63 = sub_22BB6BC10();
                MEMORY[0x2318A6080](v63);

                v64 = sub_22BB588D0();
                sub_22BBB7A1C(v64, v65);
                (qword_27D8E6768)(v82, v3);
              }

              else
              {

                v73 = sub_22BB588D0();
                sub_22BBB7A1C(v73, v74);
                sub_22BB35D94();
                sub_22BB34698();
                v75 = sub_22BB586F4();
                v77(v75, v76);
              }

              sub_22BB39248();

              sub_22BB2F09C();
              sub_22BB3CEF4();

              __asm { BRAA            X1, X16 }
            }

            v40 = *(v1 + 272);
            v3 = *(v1 + 248);
            v41 = *(v1 + 224);
            v42 = *(v1 + 88);
            v43 = *(v29 + 48);
            sub_22BB30E54();
            sub_22BB38958();
            sub_22BB31E54();
            sub_22BB38958();
            if (sub_22BDB43B4())
            {
              v66 = sub_22BB58B5C();
              v67(v66);
              sub_22BDB5144();
              v68 = sub_22BB3B144();
              v69(v68);
              sub_22BB31B20();
              sub_22BDB5744();
              sub_22BB32A48(&unk_22BDCE208);
              v70 = swift_task_alloc();
              *(v1 + 440) = v70;
              *v70 = v1;
              sub_22BB37E48(v70);
              sub_22BB3CEF4();

              __asm { BR              X1 }
            }

            v44 = *(v1 + 272);
            v45 = *(v1 + 224);
            sub_22BB309FC();
            sub_22BB34698();
            sub_22BB33EB8();
            sub_22BB34698();
            if (v22)
            {
              break;
            }

LABEL_12:
            while (1)
            {
              sub_22BB72258();
              if (v25 == v26)
              {
                break;
              }

              sub_22BB3B82C(v24);
            }

            v29 = *(v1 + 240);
            sub_22BBE6DE0(&qword_27D8E6760, &unk_22BDCE9D0);
            sub_22BB30B28();
            sub_22BB336D0(v46, v47, v48, v49);
            v22 = 0;
          }
        }
      }

      v9 = *(v5 + 8 * v11 + 64);
      ++v8;
      if (v9)
      {
        v8 = v11;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_22BD7A910()
{
  sub_22BB31014();
  v2 = sub_22BDB77D4();
  v3 = sub_22BB30444(v2);
  v42 = v4;
  v43 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  v9 = v8 - v7;
  v10 = sub_22BDB52C4();
  v11 = sub_22BB30444(v10);
  v41 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30C74();
  sub_22BB89D5C();
  MEMORY[0x28223BE20](v15);
  sub_22BB6C6EC();
  MEMORY[0x28223BE20](v16);
  sub_22BD7AD3C();
  if (!v0)
  {
    v40 = v1;
    sub_22BB32564();
    sub_22BB33618();
    sub_22BB31A60();
    swift_beginAccess();
    v18 = sub_22BD79F9C(&v44);
    if (*(v17 + 8))
    {
      v19 = v17;
      sub_22BB57FF8(sub_22BD91568);
      v20 = *(*(v19 + 40) + 16);
      v21 = sub_22BB32E04();
      sub_22BB5806C(v21, v22);
      *(*(v19 + 40) + 16) = v20 + 1;
      v23 = *(v41 + 80);
      v24 = *(v41 + 72);
      sub_22BB32564();
      sub_22BB33618();
    }

    v25 = sub_22BB68F7C();
    v18(v25);
    swift_endAccess();
    sub_22BB35D94();
    sub_22BB34698();
    sub_22BDB63E4();
    sub_22BB3A7A4();
    sub_22BB33618();
    sub_22BB33618();
    v26 = sub_22BDB77C4();
    v27 = sub_22BDBB134();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = sub_22BB3B778();
      v44 = sub_22BB3E490();
      *v28 = 136446466;
      sub_22BB32D54();
      sub_22BB3CC60(v29, v30);
      sub_22BDBB684();
      sub_22BB313B4();
      sub_22BB542F4();
      sub_22BB34698();
      v31 = sub_22BB7596C();
      sub_22BB32EE0(v31, v40, v32);
      sub_22BB313B4();

      *(v28 + 4) = v40;
      *(v28 + 12) = 2082;
      sub_22BDBB684();
      v34 = v33;
      sub_22BB34698();
      v35 = sub_22BB7596C();
      v37 = sub_22BB32EE0(v35, v34, v36);

      *(v28 + 14) = v37;
      _os_log_impl(&dword_22BB2C000, v26, v27, "SessionClient %{public}s registered to observe SessionClient %{public}s.", v28, 0x16u);
      swift_arrayDestroy();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      (*(v42 + 8))(v9, v43);
    }

    else
    {

      sub_22BB35860();
      sub_22BB34698();
      sub_22BB34698();
      v38 = sub_22BB720A0();
      v39(v38, v43);
    }
  }

  sub_22BB376A8();
}

void sub_22BD7AD3C()
{
  sub_22BB31014();
  v91 = v2;
  v3 = sub_22BDB52C4();
  v4 = sub_22BB2F330(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB30C74();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  sub_22BB34360();
  MEMORY[0x28223BE20](v11);
  sub_22BB2F384();
  v86 = v12;
  sub_22BB30B70();
  v14 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  sub_22BB2F384();
  v84 = v15;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v16);
  sub_22BB2F39C();
  sub_22BB2F120();
  v17 = sub_22BDB77D4();
  v18 = sub_22BB30444(v17);
  v88 = v19;
  v89 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB30C74();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  sub_22BB2F384();
  v27 = v26;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v28);
  sub_22BB2F39C();
  v85 = v29;
  sub_22BB89970();
  swift_beginAccess();
  if (*(*(v0 + 24) + 16))
  {
    v30 = sub_22BB3CB98();
    if (v31)
    {
      sub_22BB3711C(v30);
      v33 = *(v32 + 8);
      v83 = *(v32 + 16);
      v34 = *(v32 + 24);
      v35 = *(v32 + 32);
      v37 = *(v32 + 40);
      v36 = *(v32 + 48);
      swift_endAccess();
      sub_22BB89970();
      swift_beginAccess();
      v38 = v34;
      v39 = *(*(v0 + 24) + 16);

      if (!v39 || (v40 = sub_22BB3CB98(), (v41 & 1) == 0))
      {
        swift_endAccess();
        sub_22BDB63E4();
        sub_22BB33618();
        sub_22BB33618();
        v60 = sub_22BDB77C4();
        v61 = sub_22BDBB114();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = sub_22BB3B778();
          v90 = sub_22BB3E490();
          *v62 = 136446466;
          sub_22BB32D54();
          sub_22BB3CC60(v63, v64);
          sub_22BDBB684();
          sub_22BB542F4();
          sub_22BB34698();
          v65 = sub_22BB6BD90();
          sub_22BB32EE0(v65, v33, v66);
          sub_22BB313B4();

          sub_22BB8DCFC();
          sub_22BDBB684();
          sub_22BB3E440();
          sub_22BB34698();
          v67 = sub_22BB6BD90();
          sub_22BB32EE0(v67, v33, v68);
          sub_22BB313B4();

          *(v62 + 14) = v86;
          _os_log_impl(&dword_22BB2C000, v60, v61, "SessionClient %{public}s is not allowed to observe unknown SessionClient %{public}s.", v62, 0x16u);
          swift_arrayDestroy();
          sub_22BB2F368();
          MEMORY[0x2318A6080]();
          sub_22BB2F368();
          MEMORY[0x2318A6080]();
        }

        else
        {

          sub_22BB34698();
          sub_22BB31F54();
          sub_22BB34698();
        }

        (*(v88 + 8))(v27, v89);
        LOBYTE(v90) = 1;
        sub_22BBB7088();
        swift_willThrowTypedImpl();

        goto LABEL_17;
      }

      v42 = v35;
      sub_22BB3711C(v40);
      v44 = v43[2];
      v87 = v43[1];
      v45 = v43[3];
      v46 = v43[5];
      v82 = v43[6];
      swift_endAccess();
      if (v45)
      {
        v47 = v84;
        if (!v38)
        {

          if (v42)
          {
            goto LABEL_22;
          }

LABEL_24:
          sub_22BDB63E4();
          sub_22BB3A7A4();
          sub_22BB33618();
          v69 = v47;
          sub_22BB33618();
          v70 = sub_22BDB77C4();
          sub_22BDBB114();
          sub_22BB3E2A4();
          if (os_log_type_enabled(v70, v71))
          {
            v72 = sub_22BB3B778();
            v90 = sub_22BB3E490();
            *v72 = 136446466;
            sub_22BB32D54();
            v75 = sub_22BB3CC60(v73, v74);
            sub_22BB32E04();
            v76 = sub_22BDBB684();
            sub_22BB73C04();
            sub_22BB34698();
            v77 = sub_22BB32EE0(v76, v69, &v90);

            *(v72 + 4) = v77;
            *(v72 + 12) = 2082;
            sub_22BB32E04();
            sub_22BDBB684();
            sub_22BB3E440();
            sub_22BB34698();
            v78 = sub_22BB6BD90();
            sub_22BB32EE0(v78, v75, v79);
            sub_22BB313B4();

            *(v72 + 14) = v69;
            _os_log_impl(&dword_22BB2C000, v70, v91, "SessionClient %{public}s is not allowed to observe SessionClient %{public}s.", v72, 0x16u);
            swift_arrayDestroy();
            sub_22BB2F368();
            MEMORY[0x2318A6080]();
            sub_22BB2F368();
            MEMORY[0x2318A6080]();

            (*(v88 + 8))(v85, v89);
          }

          else
          {

            sub_22BB35860();
            sub_22BB34698();
            sub_22BB34698();
            v80 = sub_22BB720A0();
            v81(v80, v89);
          }

          LOBYTE(v90) = 4;
          sub_22BBB7088();
          swift_willThrowTypedImpl();

LABEL_17:

          goto LABEL_18;
        }

        swift_bridgeObjectRetain_n();

        v48 = sub_22BDB4E44();

        if (v48)
        {

LABEL_29:

          goto LABEL_30;
        }
      }

      else
      {

        v47 = v84;
        if (!v38)
        {

          goto LABEL_29;
        }
      }

      if (v42)
      {
LABEL_22:

LABEL_30:

        goto LABEL_18;
      }

      goto LABEL_24;
    }
  }

  swift_endAccess();
  sub_22BDB63E4();
  sub_22BB3A7A4();
  sub_22BB33618();
  sub_22BB33618();
  v49 = sub_22BDB77C4();
  v50 = sub_22BDBB114();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = sub_22BB3B778();
    v90 = sub_22BB3E490();
    *v51 = 136446466;
    sub_22BB32D54();
    sub_22BB3CC60(v52, v53);
    sub_22BDBB684();
    v55 = v54;
    sub_22BB34698();
    v56 = sub_22BB6BD90();
    sub_22BB32EE0(v56, v55, v57);
    sub_22BB3935C();

    sub_22BB8DCFC();
    sub_22BDBB684();
    sub_22BB3E440();
    sub_22BB34698();
    v58 = sub_22BB6BD90();
    sub_22BB32EE0(v58, v1, v59);
    sub_22BB313B4();

    *(v51 + 14) = v9;
    _os_log_impl(&dword_22BB2C000, v49, v50, "Unknown SessionClient %{public}s is not allowed to observe SessionClient %{public}s.", v51, 0x16u);
    sub_22BB69568();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  else
  {

    sub_22BB35860();
    sub_22BB34698();
    sub_22BB34698();
  }

  (*(v88 + 8))(v24, v89);
  LOBYTE(v90) = 1;
  sub_22BBB7088();
  swift_willThrowTypedImpl();
LABEL_18:
  sub_22BB376A8();
}

void sub_22BD7B758()
{
  sub_22BB31014();
  v4 = v3;
  v5 = sub_22BDB77D4();
  v6 = sub_22BB30444(v5);
  v47 = v7;
  v48 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  sub_22BB3ABC8();
  v10 = sub_22BDB52C4();
  v11 = sub_22BB2F330(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30C74();
  sub_22BB89D5C();
  MEMORY[0x28223BE20](v14);
  sub_22BB6C6EC();
  MEMORY[0x28223BE20](v15);
  sub_22BD7AD3C();
  if (v0)
  {
    goto LABEL_9;
  }

  v45 = v4;
  v46 = v1;
  v43 = v2;
  v44 = v16;
  sub_22BB32564();
  sub_22BB33618();
  sub_22BB31A60();
  swift_beginAccess();
  v17 = sub_22BD79F9C(&v49);
  v19 = v17;
  if (!*(v18 + 8))
  {
    v24 = sub_22BB68F7C();
    v19(v24);
    swift_endAccess();
LABEL_6:
    sub_22BB35D94();
    sub_22BB34698();
    sub_22BDB63E4();
    sub_22BB3A7A4();
    v25 = v43;
    sub_22BB33618();
    sub_22BB33618();
    v26 = sub_22BDB77C4();
    v27 = sub_22BDBB134();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = sub_22BB3B778();
      LODWORD(v45) = v27;
      v29 = v28;
      v49 = sub_22BB3E490();
      *v29 = 136446466;
      sub_22BB32D54();
      sub_22BB3CC60(v30, v31);
      sub_22BDBB684();
      sub_22BB73C04();
      sub_22BB34698();
      v32 = sub_22BB7596C();
      v34 = sub_22BB32EE0(v32, v25, v33);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2082;
      sub_22BDBB684();
      v36 = v35;
      sub_22BB34698();
      v37 = sub_22BB7596C();
      v39 = sub_22BB32EE0(v37, v36, v38);

      *(v29 + 14) = v39;
      _os_log_impl(&dword_22BB2C000, v26, v45, "SessionClient %{public}s deregistered to observe SessionClient %{public}s.", v29, 0x16u);
      sub_22BB69568();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      (*(v47 + 8))(v46, v48);
    }

    else
    {

      sub_22BB35860();
      sub_22BB34698();
      sub_22BB34698();
      v40 = sub_22BB720A0();
      v41(v40, v48);
    }

LABEL_9:
    sub_22BB376A8();
    return;
  }

  v20 = v18;
  v42 = &v42;
  MEMORY[0x28223BE20](v17);
  *(&v42 - 2) = v45;
  v21 = sub_22BD7E4E4(sub_22BD7DAD4, (&v42 - 4));
  v22 = *(*(v20 + 40) + 16);
  if (v22 >= v21)
  {
    sub_22BD7E8D0(v21, v22);
    v23 = sub_22BB68F7C();
    v19(v23);
    swift_endAccess();
    goto LABEL_6;
  }

  __break(1u);

  swift_endAccess();
  __break(1u);
}

uint64_t sub_22BD7BB90()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 1632);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  *(v3 + 1640) = v0;

  if (v0)
  {
    sub_22BB384F4();
    v11 = sub_22BD7BC94;
  }

  else
  {
    v12 = *(v3 + 1624);

    sub_22BB384F4();
    v11 = sub_22BBCBFE0;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_22BD7BC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22BB974BC();
  v17 = v16[203];
  v18 = v16[199];

  v19 = v16[205];
  v20 = v16[198];
  sub_22BB2F610();
  sub_22BD7F00C();

  sub_22BB2F09C();
  sub_22BB32660();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22BD7BD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22BB974BC();
  v17 = v16[206];
  v18 = v16[199];

  v19 = v16[208];
  v20 = v16[198];
  sub_22BB2F610();
  sub_22BD7F00C();

  sub_22BB2F09C();
  sub_22BB32660();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_22BD7BE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22BD7BE7C, 0, 0);
}

uint64_t sub_22BD7BE7C()
{
  sub_22BB2F35C();
  sub_22BD7F034();
  v1 = OBJC_IVAR____TtC23IntelligenceFlowRuntime20ClientSessionManager_clientProxy;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  if (qword_28142A928 != -1)
  {
    sub_22BB36324();
  }

  sub_22BB72E68();
  sub_22BB32860();
  sub_22BB3CC60(v3, v4);
  sub_22BD7F040();
  sub_22BB30AE4();
  sub_22BDBAE44();
  sub_22BB39694();
  v5 = sub_22BB72F98();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22BD7BF50()
{
  sub_22BB2F0D4();
  sub_22BB36050();

  v0 = sub_22BB3758C();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

void sub_22BD7BFB0()
{
  if (*(v0 + 56))
  {
    sub_22BB2F0D4();
    v1 = *(v0 + 48);

    sub_22BB32A48(MEMORY[0x277D1CED8]);
    v2 = swift_task_alloc();
    v3 = sub_22BB72038(v2);
    *v3 = v4;
    v5 = sub_22BB53E38(v3);

    v6(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22BD7C04C()
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

uint64_t sub_22BD7C168()
{
  sub_22BB2F35C();
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  v2 = v0[7];
  v3 = v0[8];
  if (sub_22BDBB034())
  {
    if (v1)
    {
      swift_willThrow();
    }

    sub_22BB2F09C();

    return v4();
  }

  else
  {
    v0[9] = v1;
    v6 = *(MEMORY[0x277D85818] + 4);
    v7 = swift_task_alloc();
    v0[10] = v7;
    sub_22BBE6DE0(&qword_27D8E62B8, &qword_22BDCDD50);
    sub_22BB95BC8();
    *v7 = v8;
    v9 = sub_22BB38268();

    return MEMORY[0x2822004D0](v9);
  }
}

uint64_t sub_22BD7C26C()
{
  sub_22BB2F0D4();
  v1 = *(v0 + 56);

  sub_22BB2F09C();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_22BD7C2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22BD7C2E8, 0, 0);
}

uint64_t sub_22BD7C2E8()
{
  sub_22BB2F35C();
  sub_22BD7F034();
  v1 = OBJC_IVAR____TtC23IntelligenceFlowRuntime20ClientSessionManager_clientProxy;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  if (qword_28142A928 != -1)
  {
    sub_22BB36324();
  }

  sub_22BB72E68();
  sub_22BB32860();
  sub_22BB3CC60(v3, v4);
  sub_22BD7F040();
  sub_22BB30AE4();
  sub_22BDBAE44();
  sub_22BB39694();
  v5 = sub_22BB72F98();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22BD7C3BC()
{
  sub_22BB2F0D4();
  sub_22BB36050();

  v0 = sub_22BB3758C();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

void sub_22BD7C41C()
{
  if (*(v0 + 56))
  {
    sub_22BB2F0D4();
    v1 = *(v0 + 48);

    sub_22BB32A48(MEMORY[0x277D1CED8]);
    v2 = swift_task_alloc();
    v3 = sub_22BB72038(v2);
    *v3 = v4;
    v5 = sub_22BB53E38(v3);

    v6(v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22BD7C4B8()
{
  sub_22BB2F35C();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;

  if (v0)
  {
  }

  v9 = *(v3 + 56);

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_22BD7C5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22BD7C5D8, 0, 0);
}

uint64_t sub_22BD7C5D8()
{
  sub_22BB2F35C();
  sub_22BD7F034();
  v1 = OBJC_IVAR____TtC23IntelligenceFlowRuntime20ClientSessionManager_clientProxy;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  if (qword_28142A928 != -1)
  {
    sub_22BB36324();
  }

  sub_22BB72E68();
  sub_22BB32860();
  sub_22BB3CC60(v3, v4);
  sub_22BD7F040();
  sub_22BB30AE4();
  sub_22BDBAE44();
  sub_22BB39694();
  v5 = sub_22BB72F98();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22BD7C6AC()
{
  sub_22BB2F0D4();
  sub_22BB36050();

  v0 = sub_22BB3758C();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

void sub_22BD7C70C()
{
  if (*(v0 + 56))
  {
    sub_22BB2F0D4();
    v1 = *(v0 + 48);

    sub_22BB32A48(MEMORY[0x277D1CED8]);
    v2 = swift_task_alloc();
    v3 = sub_22BB72038(v2);
    *v3 = v4;
    v5 = sub_22BB53E38(v3);

    v6(v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_22BD7C7A8()
{
  sub_22BB31014();
  v28[1] = v2;
  v4 = v3;
  v5 = sub_22BBE6DE0(&qword_27D8E6808, &qword_22BDCF4D8);
  sub_22BB2F0C8(v5);
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  v10 = v28 - v9;
  v11 = sub_22BBE6DE0(&qword_27D8E6810, &qword_22BDCF4E0);
  sub_22BB2F330(v11);
  v13 = *(v12 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v14);
  sub_22BB3ABC8();
  v15 = sub_22BDB5F24();
  v16 = sub_22BB2F0C8(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  v21 = v20 - v19;
  sub_22BB31B88();
  swift_beginAccess();
  v22 = *(v0 + 16);
  v29[2] = v4;

  sub_22BD79C30(sub_22BD7EFDC, v29, v22, v10);

  v23 = sub_22BBE6DE0(&qword_27D8E6760, &unk_22BDCE9D0);
  sub_22BB31814(v10, 1, v23);
  if (v24)
  {
    sub_22BB58728(v10, &qword_27D8E6808, &qword_22BDCF4D8);
    sub_22BBB7088();
    swift_willThrowTypedImpl();
  }

  else
  {
    v25 = *(v23 + 48);
    v28[0] = v1;
    v26 = *(v11 + 48);
    sub_22BB38958();
    sub_22BB31E54();
    sub_22BB38958();
    v27 = *(v11 + 48);
    sub_22BB38958();
    sub_22BB33EB8();
    sub_22BB34698();
    sub_22BD7CA00(v21);
    sub_22BB309FC();
    sub_22BB34698();
  }

  sub_22BB376A8();
}

uint64_t sub_22BD7CA00(uint64_t a1)
{
  v6 = sub_22BBE6DE0(&qword_27D8E67E8, &qword_22BDCF4B0);
  sub_22BB2F0C8(v6);
  v8 = *(v7 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BB3721C();
  v10 = type metadata accessor for SessionSwitchboard.SessionInfo();
  v11 = sub_22BB2F330(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  sub_22BB345CC();
  sub_22BD7CB98();
  if (v2)
  {
    return v14;
  }

  sub_22BB89970();
  swift_beginAccess();
  sub_22BB52A38(a1, *(v1 + 16));
  sub_22BB35204();
  sub_22BB31814(v16, v17, v18);
  if (v19)
  {
    sub_22BB58728(v3, &qword_27D8E67E8, &qword_22BDCF4B0);
    swift_endAccess();
    sub_22BBB7088();
    swift_willThrowTypedImpl();
    return 0;
  }

  else
  {
    sub_22BB31E54();
    sub_22BB38958();
    swift_endAccess();
    v15 = *(v4 + *(v10 + 32));

    sub_22BB33EB8();
    sub_22BB34698();
  }

  return v15;
}

void sub_22BD7CB98()
{
  sub_22BB31014();
  v3 = v2;
  v89 = v4;
  v5 = sub_22BDB5F24();
  v6 = sub_22BB2F0C8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB30C74();
  sub_22BB34360();
  MEMORY[0x28223BE20](v9);
  sub_22BB2F384();
  v87 = v10;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v11);
  sub_22BB2F39C();
  v85 = v12;
  sub_22BB2F120();
  v92 = sub_22BDB77D4();
  v13 = sub_22BB30444(v92);
  v90 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BB30C74();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  sub_22BB2F384();
  v88 = v21;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v22);
  sub_22BB2F39C();
  v86 = v23;
  v24 = sub_22BBE6DE0(&qword_27D8E67E8, &qword_22BDCF4B0);
  sub_22BB2F0C8(v24);
  v26 = *(v25 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v27);
  v29 = &v84 - v28;
  v30 = type metadata accessor for SessionSwitchboard.SessionInfo();
  v31 = sub_22BB2F330(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BB30574();
  sub_22BB89970();
  swift_beginAccess();
  sub_22BB52A38(v3, *(v0 + 16));
  sub_22BB35204();
  sub_22BB31814(v34, v35, v36);
  if (!v37)
  {
    sub_22BB31E54();
    sub_22BB38958();
    swift_endAccess();
    sub_22BB89970();
    swift_beginAccess();
    if (*(*(v0 + 24) + 16) && (v49 = sub_22BB3CB98(), (v50 & 1) != 0))
    {
      sub_22BB3711C(v49);
      v52 = v51[1];
      v53 = v51[2];
      v54 = v51[3];
      v56 = v51[5];
      v55 = v51[6];
      swift_endAccess();
      if (v54)
      {

        swift_bridgeObjectRetain_n();

        v57 = sub_22BDB4E44();

        if (v57)
        {
          sub_22BB33EB8();
          sub_22BB34698();

          goto LABEL_22;
        }
      }

      else
      {
      }

      v88 = v55;
      sub_22BDB63E4();
      sub_22BB36720();
      v69 = v85;
      sub_22BB33618();

      v70 = sub_22BDB77C4();
      v71 = sub_22BDBB114();

      if (os_log_type_enabled(v70, v71))
      {
        sub_22BB3B778();
        v87 = v52;
        v72 = sub_22BB3E030();
        v84 = v56;
        v91[0] = v72;
        *v69 = 136446466;
        v73 = sub_22BDB4E34();
        sub_22BB32EE0(v73, v74, v91);
        sub_22BB32EA4();

        sub_22BD7EFFC();
        MEMORY[0x23189FEB0]();
        v76 = v75;
        sub_22BB309FC();
        sub_22BB34698();
        v77 = sub_22BB6BD90();
        v79 = sub_22BB32EE0(v77, v76, v78);

        *(v69 + 14) = v79;
        sub_22BB3942C(&dword_22BB2C000, v80, v71, "Group %{public}s is not allowed to observe session %{public}s.");
        sub_22BB8ABD4();
        sub_22BB2F368();
        MEMORY[0x2318A6080]();
        v81 = sub_22BB6BC10();
        MEMORY[0x2318A6080](v81);

        (*(v90 + 8))(v86, v92);
      }

      else
      {

        sub_22BB309FC();
        sub_22BB34698();
        v82 = sub_22BB720A0();
        v83(v82, v92);
      }

      LOBYTE(v91[0]) = 4;
      sub_22BBB7088();
      swift_willThrowTypedImpl();
    }

    else
    {
      swift_endAccess();
      v58 = v88;
      sub_22BDB63E4();
      sub_22BB36720();
      sub_22BB33618();

      v59 = sub_22BDB77C4();
      v60 = sub_22BDBB114();

      if (os_log_type_enabled(v59, v60))
      {
        sub_22BB3B778();
        v91[0] = sub_22BB3E030();
        *v1 = 136446466;
        v61 = sub_22BDB4E34();
        sub_22BB32EE0(v61, v62, v91);
        sub_22BB32EA4();

        sub_22BD7EFFC();
        MEMORY[0x23189FEB0]();
        v64 = v63;
        sub_22BB309FC();
        sub_22BB34698();
        v65 = sub_22BB6BD90();
        v67 = sub_22BB32EE0(v65, v64, v66);

        *(v1 + 14) = v67;
        _os_log_impl(&dword_22BB2C000, v59, v60, "Group %{public}s is not allowed to observe session %{public}s because it has an unknown owning SessionClient.", v1, 0x16u);
        swift_arrayDestroy();
        sub_22BB2F368();
        MEMORY[0x2318A6080]();
        v68 = sub_22BB6BC10();
        MEMORY[0x2318A6080](v68);
      }

      else
      {

        sub_22BB309FC();
        sub_22BB34698();
      }

      (*(v90 + 8))(v58, v92);
      LOBYTE(v91[0]) = 1;
      sub_22BBB7088();
      swift_willThrowTypedImpl();
    }

    sub_22BB33EB8();
    sub_22BB34698();
    goto LABEL_22;
  }

  sub_22BB58728(v29, &qword_27D8E67E8, &qword_22BDCF4B0);
  swift_endAccess();
  sub_22BDB63E4();
  sub_22BB36720();
  sub_22BB33618();

  v38 = sub_22BDB77C4();
  v39 = sub_22BDBB114();

  if (os_log_type_enabled(v38, v39))
  {
    sub_22BB3B778();
    v91[0] = sub_22BB3E030();
    *v1 = 136446466;
    v40 = sub_22BDB4E34();
    sub_22BB32EE0(v40, v41, v91);
    sub_22BB32EA4();

    sub_22BD7EFFC();
    MEMORY[0x23189FEB0]();
    v43 = v42;
    sub_22BB309FC();
    sub_22BB34698();
    v44 = sub_22BB6BD90();
    v46 = sub_22BB32EE0(v44, v43, v45);

    *(v1 + 14) = v46;
    sub_22BB3942C(&dword_22BB2C000, v47, v39, "Group %{public}s is not allowed to observe session %{public}s.");
    sub_22BB8ABD4();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    v48 = sub_22BB6BC10();
    MEMORY[0x2318A6080](v48);
  }

  else
  {

    sub_22BB309FC();
    sub_22BB34698();
  }

  (*(v90 + 8))(v19, v92);
  LOBYTE(v91[0]) = 0;
  sub_22BBB7088();
  swift_willThrowTypedImpl();
LABEL_22:
  sub_22BB376A8();
}

void sub_22BD7D328()
{
  sub_22BB31014();
  v49 = v2;
  v50 = v3;
  v4 = sub_22BDB5984();
  v5 = sub_22BB30444(v4);
  v52 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v48 = v10 - v9;
  v11 = (sub_22BBE6DE0(&qword_27D8E67F0, &qword_22BDCF4B8) - 8);
  v12 = *(*v11 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v13);
  sub_22BB3721C();
  v14 = sub_22BBE6DE0(&qword_27D8E6410, &unk_22BDCE250);
  v15 = sub_22BB2F0C8(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BB30C74();
  v51 = v18 - v19;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v20);
  sub_22BB89D5C();
  MEMORY[0x28223BE20](v21);
  v23 = &v47 - v22;
  v24 = (sub_22BBE6DE0(&qword_27D8E6760, &unk_22BDCE9D0) - 8);
  v25 = *(*v24 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v26);
  v28 = &v47 - v27;
  sub_22BC5E5C4();
  v29 = v24[14];
  v49 = v28;
  v30 = *(type metadata accessor for SessionSwitchboard.SessionInfo() + 20);
  sub_22BC5E5C4();
  sub_22BB33EB8();
  sub_22BB34698();
  (*(v52 + 16))(v1, v50, v4);
  sub_22BB336D0(v1, 0, 1, v4);
  v31 = v11[14];
  sub_22BB3ADA8();
  sub_22BC5E5C4();
  sub_22BC5E5C4();
  sub_22BB8ACC0();
  sub_22BB31814(v32, v33, v34);
  if (!v41)
  {
    sub_22BC5E5C4();
    sub_22BB8ACC0();
    sub_22BB31814(v38, v39, v40);
    if (!v41)
    {
      v43 = v0 + v31;
      v44 = v48;
      (*(v52 + 32))(v48, v43, v4);
      sub_22BB3CC60(&qword_28142DC90, MEMORY[0x277D1CF60]);
      v45 = v51;
      sub_22BDBABD4();
      v46 = *(v52 + 8);
      v46(v44, v4);
      sub_22BB58728(v1, &qword_27D8E6410, &unk_22BDCE250);
      sub_22BB58728(v23, &qword_27D8E6410, &unk_22BDCE250);
      v46(v45, v4);
      sub_22BB58728(v0, &qword_27D8E6410, &unk_22BDCE250);
      goto LABEL_10;
    }

    sub_22BB757AC(v1);
    sub_22BB757AC(v23);
    sub_22BB3AB38();
    v42(v51, v4);
LABEL_9:
    sub_22BB58728(v0, &qword_27D8E67F0, &qword_22BDCF4B8);
    goto LABEL_10;
  }

  sub_22BB757AC(v1);
  sub_22BB757AC(v23);
  sub_22BB8ACC0();
  sub_22BB31814(v35, v36, v37);
  if (!v41)
  {
    goto LABEL_9;
  }

  sub_22BB58728(v0, &qword_27D8E6410, &unk_22BDCE250);
LABEL_10:
  sub_22BB34698();
  sub_22BB376A8();
}

uint64_t sub_22BD7D788()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_22BD7D7B0()
{
  sub_22BD7D788();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_22BD7D808(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_22BD7D848(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_22BD7D8A4()
{
  sub_22BDB52C4();
  if (v0 <= 0x3F)
  {
    sub_22BD7D9C0(319, &qword_28142DC80, MEMORY[0x277D1CF60], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22BD7D9C0(319, &qword_2814288A0, MEMORY[0x277D1CB28], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_22BD7DA24();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22BD7D9C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22BD7DA24()
{
  if (!qword_28142ABF8)
  {
    sub_22BD7DA80();
    v0 = type metadata accessor for SessionCoordinator();
    if (!v1)
    {
      atomic_store(v0, &qword_28142ABF8);
    }
  }
}

unint64_t sub_22BD7DA80()
{
  result = qword_281428EB0[0];
  if (!qword_281428EB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281428EB0);
  }

  return result;
}

void sub_22BD7DB94(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_22BB36EC4(a1, a5 + 8 * (a1 >> 6));
  v10 = (*(v9 + 48) + 16 * v8);
  *v10 = v11;
  v10[1] = v12;
  v13 = *(v9 + 56);
  v15 = v14(0);
  sub_22BB2F330(v15);
  (*(v16 + 32))(v13 + *(v16 + 72) * a1, a4);
  sub_22BB39384();
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v17;
  }
}

void sub_22BD7DC2C()
{
  sub_22BB3FE60();
  v3 = v2;
  v7 = sub_22BB34428(v2, v4, v5, v6);
  v11 = sub_22BB7047C(v7, v8, v9, v10);
  v12 = type metadata accessor for FeedbackLearning.CandidateParameter(v11);
  sub_22BB2F0C8(v12);
  v14 = *(v13 + 72);
  sub_22BB38958();
  *(*(v0 + 56) + 8 * v3) = v1;
  sub_22BB39384();
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v15;
  }
}

void sub_22BD7DD0C()
{
  sub_22BB3FE60();
  v3 = v2;
  v5 = v4;
  v8 = sub_22BB34428(v4, v2, v6, v7);
  sub_22BB7047C(v8, v9, v10, v11);
  v12 = sub_22BDB43E4();
  sub_22BB2F330(v12);
  (*(v13 + 32))(v1 + *(v13 + 72) * v5, v3);
  v14 = *(v0 + 56);
  v15 = type metadata accessor for SessionCoordinatorInjectionRequest(0);
  sub_22BB2F0C8(v15);
  v17 = *(v16 + 72);
  sub_22BB38958();
  sub_22BB39384();
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v18;
  }
}

void sub_22BD7DE20()
{
  sub_22BB3FE60();
  v4 = v3;
  v6 = v5;
  v9 = sub_22BB34428(v5, v3, v7, v8);
  sub_22BB7047C(v9, v10, v11, v12);
  v13 = sub_22BDB43E4();
  sub_22BB2F330(v13);
  (*(v14 + 32))(v2 + *(v14 + 72) * v6, v4);
  *(*(v0 + 56) + 8 * v6) = v1;
  sub_22BB39384();
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v15;
  }
}

void (*sub_22BD7DEFC(void *a1))(uint64_t a1)
{
  v3 = sub_22BD7EA64(0x58uLL);
  *a1 = v3;
  v4 = sub_22BDB52C4();
  v5 = sub_22BD7EA64(*(*(v4 - 8) + 64));
  v3[8] = v5;
  v6 = *v1;
  swift_isUniquelyReferenced_nonNull_native();
  sub_22BB33618();
  v3[9] = sub_22BD7E4BC(v3);
  v3[10] = sub_22BD7E054(v3 + 4, v5);
  return sub_22BD7DFD8;
}

void sub_22BD7DFD8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 64);
  (*(*a1 + 80))();
  sub_22BB35D94();
  sub_22BB34698();
  v4 = sub_22BC541D0();
  v2(v4);
  free(v3);

  free(v1);
}

void (*sub_22BD7E054(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v3 = v2;
  v6 = sub_22BD7EA64(0xE0uLL);
  *a1 = v6;
  *(v6 + 21) = a2;
  *(v6 + 22) = v2;
  v7 = sub_22BDB52C4();
  *(v6 + 23) = v7;
  v8 = *(v7 - 8);
  *(v6 + 24) = v8;
  *(v6 + 25) = sub_22BD7EA64(*(v8 + 64));
  v9 = *v2;
  v10 = sub_22BB3CB98();
  v6[216] = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  sub_22BBE6DE0(&qword_27D8E67E0, &qword_22BDCF4A8);
  if (sub_22BDBB4A4())
  {
    v14 = *v3;
    v15 = sub_22BB3CB98();
    if ((v13 & 1) == (v16 & 1))
    {
      v12 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_22BDBB744();
    __break(1u);
    return result;
  }

LABEL_5:
  *(v6 + 26) = v12;
  if (v13)
  {
    v17 = *(*v3 + 56) + 56 * v12;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v17 + 32);
    v22 = *(v17 + 40);
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v21 = 0;
    v20 = 0uLL;
    v22 = 0uLL;
  }

  *(v6 + 14) = v18;
  *(v6 + 15) = v19;
  *(v6 + 8) = v20;
  *(v6 + 18) = v21;
  *(v6 + 152) = v22;
  return sub_22BD7E210;
}

void sub_22BD7E210(uint64_t **a1, char a2)
{
  v7 = *a1;
  v8 = (*a1)[14];
  v10 = v7[15];
  v9 = v7[16];
  v11 = v7[17];
  v12 = v7[18];
  v13 = v7[19];
  v14 = v7[20];
  v15 = *(v7 + 216);
  if ((a2 & 1) == 0)
  {
    if (!v10)
    {
      if ((v7[27] & 1) == 0)
      {
        goto LABEL_15;
      }

      v27 = v7[26];
      v43 = v7[23];
      v28 = *(*v7[22] + 48);
      v29 = *(v7[24] + 72);
      v2 = v8;
      sub_22BB35D94();
      sub_22BB8D29C();
      sub_22BB34698();
      sub_22BB32D54();
      sub_22BB3CC60(v30, v31);
      sub_22BB2F12C();
      sub_22BDBB4C4();
      goto LABEL_14;
    }

    v16 = *v7[22];
    v17 = v7[26];
    if ((v7[27] & 1) == 0)
    {
      sub_22BB35570();
      v33 = v32;
      sub_22BB8D29C();
      sub_22BB33618();
      v7[7] = v2;
      v7[8] = v10;
      v7[9] = v3;
      v7[10] = v4;
      *(v7 + 88) = v33 & 1;
      v7[12] = v5;
      v7[13] = v6;
      goto LABEL_13;
    }

LABEL_7:
    v20 = *(v16 + 56) + 56 * v17;
    *v20 = v8;
    *(v20 + 8) = v10;
    *(v20 + 16) = v9;
    *(v20 + 24) = v11;
    *(v20 + 32) = v12 & 1;
    *(v20 + 40) = v13;
    *(v20 + 48) = v14;
    goto LABEL_15;
  }

  if (v10)
  {
    v16 = *v7[22];
    v17 = v7[26];
    if ((v7[27] & 1) == 0)
    {
      sub_22BB35570();
      v19 = v18;
      sub_22BB8D29C();
      sub_22BB33618();
      *v7 = v2;
      v7[1] = v10;
      v7[2] = v3;
      v7[3] = v4;
      *(v7 + 32) = v19 & 1;
      v7[5] = v5;
      v7[6] = v6;
LABEL_13:
      sub_22BB3C90C();
LABEL_14:
      v8 = v2;
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  if (v7[27])
  {
    v21 = v7[26];
    v42 = v7[23];
    v22 = *(*v7[22] + 48);
    v23 = *(v7[24] + 72);
    v24 = v8;
    sub_22BB35D94();
    sub_22BB34698();
    sub_22BB32D54();
    sub_22BB3CC60(v25, v26);
    sub_22BB345A8();
    sub_22BDBB4C4();
    v8 = v24;
  }

LABEL_15:
  v34 = v7[25];
  v36 = v7[14];
  v35 = v7[15];
  v37 = v7[16];
  v38 = v7[17];
  v39 = v7[18];
  v40 = v7[19];
  v41 = v7[20];
  sub_22BD7EA98(v8, v10);
  sub_22BBB7A1C(v36, v35);
  free(v34);

  free(v7);
}

uint64_t (*sub_22BD7E4BC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_22BBC4C70;
}

uint64_t sub_22BD7E4E4(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v4 = v2;
  v7 = sub_22BDB52C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v35 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = *v4;
  result = sub_22BD7E7EC(a1, a2, *v4);
  v42 = v3;
  if (!v3)
  {
    v37 = v12;
    v38 = v15;
    if (v20)
    {
      return *(v18 + 16);
    }

    else
    {
      v36 = v4;
      v21 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_29:
        __break(1u);
      }

      else
      {
        v22 = v18;
        v39 = v8;
        while (1)
        {
          v23 = *(v22 + 16);
          if (v21 == v23)
          {
            break;
          }

          if (v21 >= v23)
          {
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          v40 = (*(v8 + 80) + 32) & ~*(v8 + 80);
          v41 = result;
          v24 = *(v8 + 72);
          v43 = v21;
          v25 = v24 * v21;
          sub_22BB33618();
          v26 = v42;
          v27 = a1;
          v28 = a1(v17);
          result = sub_22BB34698();
          v42 = v26;
          if (v26)
          {
            return result;
          }

          if (v28)
          {
            a1 = v27;
            v8 = v39;
            result = v41;
            v29 = v43;
          }

          else
          {
            result = v41;
            v29 = v43;
            if (v43 == v41)
            {
              a1 = v27;
            }

            else
            {
              if ((v41 & 0x8000000000000000) != 0)
              {
                goto LABEL_25;
              }

              v30 = *(v22 + 16);
              if (v41 >= v30)
              {
                goto LABEL_26;
              }

              v31 = v24 * v41;
              result = sub_22BB33618();
              if (v43 >= v30)
              {
                goto LABEL_27;
              }

              v32 = v25;
              sub_22BB33618();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_22BD7DEE8(v22);
                v22 = v34;
              }

              a1 = v27;
              v33 = v22 + v40;
              sub_22BD7EA00(v37, v22 + v40 + v31);
              result = v38;
              if (v43 >= *(v22 + 16))
              {
                goto LABEL_28;
              }

              sub_22BD7EA00(v38, v33 + v32);
              v29 = v43;
              *v36 = v22;
              result = v41;
            }

            ++result;
            v8 = v39;
          }

          v21 = v29 + 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_22BD7E7EC(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(sub_22BDB52C4() - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

uint64_t sub_22BD7E8D0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_22BD6F1C0(result, 1);
  v8 = *v2;
  v9 = *(sub_22BDB52C4() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  result = sub_22BD279D0(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_22BD7EA00(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB52C4();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_22BD7EA64(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_22BD7EA98(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_22BD7EAFC()
{
  v1 = *(v0 + 16);
  sub_22BD7D328();
  return v2 & 1;
}

uint64_t sub_22BD7EB1C()
{
  sub_22BB30F5C();
  sub_22BB35760();
  v0 = sub_22BDB5894();
  sub_22BB2F0C8(v0);
  v2 = *(v1 + 80);
  sub_22BB3A9FC();
  v3 = swift_task_alloc();
  v4 = sub_22BB31BAC(v3);
  *v4 = v5;
  v6 = sub_22BB38EF4(v4);

  return sub_22BD7BE5C(v6, v7, v8, v9, v10);
}

uint64_t sub_22BD7EBDC()
{
  sub_22BB30F5C();
  sub_22BB35760();
  v0 = sub_22BDB5894();
  sub_22BB2F0C8(v0);
  v2 = *(v1 + 80);
  sub_22BB3A9FC();
  v3 = swift_task_alloc();
  v4 = sub_22BB31BAC(v3);
  *v4 = v5;
  v6 = sub_22BB38EF4(v4);

  return sub_22BD7C5B8(v6, v7, v8, v9, v10);
}

uint64_t sub_22BD7EC9C()
{
  sub_22BB30F5C();
  sub_22BB35760();
  v0 = sub_22BDB5894();
  sub_22BB2F0C8(v0);
  v2 = *(v1 + 80);
  sub_22BB3A9FC();
  v3 = swift_task_alloc();
  v4 = sub_22BB31BAC(v3);
  *v4 = v5;
  v6 = sub_22BB38EF4(v4);

  return sub_22BD7C2C8(v6, v7, v8, v9, v10);
}

uint64_t sub_22BD7ED5C()
{
  sub_22BB30F5C();
  sub_22BB35760();
  v0 = sub_22BDB5894();
  sub_22BB2F0C8(v0);
  v2 = *(v1 + 80);
  sub_22BB3A9FC();
  v3 = swift_task_alloc();
  v4 = sub_22BB31BAC(v3);
  *v4 = v5;
  v6 = sub_22BB38EF4(v4);

  return sub_22BD7BE5C(v6, v7, v8, v9, v10);
}

uint64_t getEnumTagSinglePayload for SessionRoutingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SessionRoutingError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22BD7EF84()
{
  result = qword_27D8E6818;
  if (!qword_27D8E6818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6818);
  }

  return result;
}

uint64_t sub_22BD7F00C()
{
  v2 = v0[187];
  v3 = v0[186];
  v5 = v0[182];
  v6 = v0[181];
}

uint64_t sub_22BD7F040()
{
}

void sub_22BD7F058()
{
  sub_22BD7F17C(319, &qword_28142DD30, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22BD7F17C(319, &qword_281428830, MEMORY[0x277D1E310], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_22BD7F1E0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22BD7F17C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22BD7F1E0()
{
  if (!qword_2814287B8)
  {
    sub_22BBEB2E0(&qword_27D8E6820, &qword_22BDCF638);
    v0 = sub_22BDBB254();
    if (!v1)
    {
      atomic_store(v0, &qword_2814287B8);
    }
  }
}

uint64_t static ToolboxManager.toolboxes()()
{
  v0 = sub_22BDB8694();
  v1 = sub_22BB30444(v0);
  v38 = v2;
  v39 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  v7 = v6 - v5;
  v8 = sub_22BDB77E4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_22BB30574();
  v37 = sub_22BDB7814();
  v10 = sub_22BB30444(v37);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB30574();
  v17 = v16 - v15;
  v18 = sub_22BDB80C4();
  v19 = sub_22BB30444(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BB30574();
  v26 = v25 - v24;
  _s23IntelligenceFlowRuntime28StandardToolboxConfigurationV011makeMutableE08delegate22planGenerationDelegate0aB14PlannerSupport0hE0Cx_q_tKAG0eL0RzAG0e4PlankL0R_r0_lFfA__0();
  sub_22BDB7804();
  sub_22BDB77F4();
  sub_22BBE6DE0(&qword_27D8E6828, &qword_22BDCF640);
  v27 = (sub_22BBE6DE0(&qword_27D8E6830, &unk_22BDCF648) - 8);
  v28 = *(*v27 + 72);
  v29 = (*(*v27 + 80) + 32) & ~*(*v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_22BDBCBD0;
  v31 = (v30 + v29 + v27[14]);
  sub_22BDB80A4();
  sub_22BDB8684();
  (*(v38 + 8))(v7, v39);
  v32 = MEMORY[0x277D1D938];
  v31[3] = v18;
  v31[4] = v32;
  v33 = sub_22BB8B8A0(v31);
  (*(v21 + 16))(v33, v26, v18);
  v31[8] = v37;
  v31[9] = sub_22BD7F604(&qword_281428AD8, MEMORY[0x277D1D528]);
  v34 = sub_22BB8B8A0(v31 + 5);
  (*(v12 + 16))(v34, v17, v37);
  sub_22BDB57A4();
  sub_22BD7F604(&qword_28142DCC8, MEMORY[0x277D1CE90]);
  v35 = sub_22BDBAB14();
  (*(v12 + 8))(v17, v37);
  (*(v21 + 8))(v26, v18);
  return v35;
}

uint64_t sub_22BD7F604(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for ToolboxManager(_BYTE *result, int a2, int a3)
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

uint64_t sub_22BD7F700(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_22BD7F740(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22BD7F7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22BDB5664();
  v8 = sub_22BB2F0C8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BB30574();
  v13 = v12 - v11;
  sub_22BB6A204(a1, v12 - v11, MEMORY[0x277D1CE18]);
  v14 = *(v4 + 16);
  sub_22BB69088(a4, v16);

  return sub_22BB8DD28(v13, v14, v16);
}

uint64_t sub_22BD7F858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = *v5;
  result = sub_22BD7F7A4(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_22BD7F884()
{
  sub_22BB2F0D4();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_22BDB5154();
  v1[7] = v3;
  sub_22BB30434(v3);
  v1[8] = v4;
  v6 = *(v5 + 64);
  v1[9] = sub_22BB30ACC();
  v7 = sub_22BDB4354();
  sub_22BB2F0C8(v7);
  v9 = *(v8 + 64);
  v1[10] = sub_22BB30ACC();
  v10 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v10);
  v12 = *(v11 + 64);
  v1[11] = sub_22BB30ACC();
  v13 = sub_22BDB43E4();
  v1[12] = v13;
  sub_22BB30434(v13);
  v1[13] = v14;
  v16 = *(v15 + 64);
  v1[14] = sub_22BB3307C();
  v1[15] = swift_task_alloc();
  v17 = sub_22BDB5F24();
  sub_22BB2F0C8(v17);
  v19 = *(v18 + 64);
  v1[16] = sub_22BB30ACC();
  v20 = sub_22BDB5894();
  v1[17] = v20;
  sub_22BB30434(v20);
  v1[18] = v21;
  v23 = *(v22 + 64);
  v1[19] = sub_22BB30ACC();
  v24 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_22BD7FA38()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v16 = v0[14];
  v17 = v0[10];
  v7 = v0[8];
  v19 = v0[7];
  v20 = v0[19];
  v8 = v0[6];
  v18 = v0[5];
  sub_22BB6A204(v8 + OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_sessionId, v1, MEMORY[0x277D1D2C8]);
  (*(v3 + 32))(v2, v1, v4);
  sub_22BDB43D4();
  v9 = OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_latestClientSentQueryEventId;
  swift_beginAccess();
  sub_22BB956CC(v8 + v9, v5);
  sub_22BDB5614();
  sub_22BDB4344();
  v10 = sub_22BDB5E34();
  sub_22BB2F330(v10);
  (*(v11 + 16))(v6, v18);
  (*(v7 + 104))(v6, *MEMORY[0x277D1C758], v19);
  sub_22BDB5884();
  v12 = *sub_22BB69FEC((v8 + OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_clientReverseClientDistributor), *(v8 + OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_clientReverseClientDistributor + 24));
  v13 = swift_task_alloc();
  v0[20] = v13;
  *v13 = v0;
  v13[1] = sub_22BD7FC44;
  v14 = v0[19];

  return sub_22BB91D64(v14);
}

uint64_t sub_22BD7FC44()
{
  v2 = *v1;
  sub_22BB33FF4();
  *v4 = v3;
  v5 = *(v2 + 160);
  *v4 = *v1;
  *(v3 + 168) = v0;

  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_22BD7FE20;
  }

  else
  {
    v7 = sub_22BD7FD68;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22BD7FD68()
{
  v0 = sub_22BB33590();
  v1(v0);

  sub_22BB2F09C();

  return v2();
}

uint64_t sub_22BD7FE20()
{
  v1 = sub_22BB33590();
  v2(v1);

  sub_22BB2F09C();
  v4 = *(v0 + 168);

  return v3();
}

uint64_t sub_22BD7FED8()
{
  sub_22BB2F0D4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_22BDB9884();
  sub_22BB2F0C8(v3);
  v5 = *(v4 + 64);
  v1[4] = sub_22BB30ACC();
  v6 = sub_22BDB5684();
  sub_22BB2F0C8(v6);
  v8 = *(v7 + 64);
  v1[5] = sub_22BB30ACC();
  v9 = sub_22BDB5154();
  v1[6] = v9;
  sub_22BB30434(v9);
  v1[7] = v10;
  v12 = *(v11 + 64);
  v1[8] = sub_22BB30ACC();
  v13 = sub_22BDB4354();
  sub_22BB2F0C8(v13);
  v15 = *(v14 + 64);
  v1[9] = sub_22BB30ACC();
  v16 = sub_22BDB9D54();
  v1[10] = v16;
  sub_22BB30434(v16);
  v1[11] = v17;
  v19 = *(v18 + 64);
  v1[12] = sub_22BB30ACC();
  v20 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v20);
  v22 = *(v21 + 64);
  v1[13] = sub_22BB30ACC();
  v23 = sub_22BDB43E4();
  sub_22BB2F0C8(v23);
  v25 = *(v24 + 64);
  v1[14] = sub_22BB3307C();
  v1[15] = swift_task_alloc();
  v26 = sub_22BDB5894();
  v1[16] = v26;
  sub_22BB30434(v26);
  v1[17] = v27;
  v29 = *(v28 + 64);
  v1[18] = sub_22BB30ACC();
  v30 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v30, v31, v32);
}

uint64_t sub_22BD800CC()
{
  v19 = v0[18];
  v15 = v0[14];
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  v16 = v0[6];
  v17 = v0[15];
  v14 = v0[5];
  v12 = v0[4];
  v13 = v0[10];
  v7 = v0[2];
  v18 = v0[3];
  sub_22BDB98A4();
  sub_22BDB9874();
  sub_22BDB97D4();
  sub_22BDB9814();
  sub_22BDB97F4();
  sub_22BDB98B4();
  sub_22BDB9D44();
  (*(v3 + 8))(v2, v13);
  sub_22BDB9894();
  sub_22BDB5674();
  sub_22BDB5694();
  (*(v6 + 104))(v5, *MEMORY[0x277D1C698], v16);
  sub_22BDB5884();
  v8 = *sub_22BB69FEC((v18 + OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_clientReverseClientDistributor), *(v18 + OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_clientReverseClientDistributor + 24));
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_22BD802A4;
  v10 = v0[18];

  return sub_22BB91D64(v10);
}

uint64_t sub_22BD802A4()
{
  v2 = *v1;
  sub_22BB33FF4();
  *v4 = v3;
  v5 = *(v2 + 152);
  *v4 = *v1;
  *(v3 + 160) = v0;

  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_22BD80498;
  }

  else
  {
    v7 = sub_22BD803C8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22BD803C8()
{
  v0 = sub_22BB94F0C();
  v1(v0);

  sub_22BB2F09C();

  return v2();
}

uint64_t sub_22BD80498()
{
  v1 = sub_22BB94F0C();
  v2(v1);

  sub_22BB2F09C();
  v4 = *(v0 + 160);

  return v3();
}

uint64_t sub_22BD80568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22BDB84B4();
  v5 = sub_22BB30444(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v12 = v11 - v10;
  (*(v7 + 16))(v11 - v10, a1, v4);
  v13 = (*(v7 + 88))(v12, v4);
  if (v13 == *MEMORY[0x277D1DD48])
  {
    v14 = MEMORY[0x277D1C788];
LABEL_5:
    (*(v7 + 8))(a1, v4);
    v15 = *v14;
    v16 = sub_22BDB5094();
    sub_22BB2F330(v16);
    return (*(v17 + 104))(a2, v15);
  }

  if (v13 == *MEMORY[0x277D1DD40])
  {
    v14 = MEMORY[0x277D1C780];
    goto LABEL_5;
  }

  result = sub_22BDBB6C4();
  __break(1u);
  return result;
}

void sub_22BD806E4()
{
  v0 = sub_22BDB5664();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_22BC5F80C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_22BD80830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v9 = sub_22BBE6DE0(&qword_27D8E2F80, &qword_22BDC0600);
  sub_22BB2F0C8(v9);
  v11 = *(v10 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v12);
  sub_22BB31580();
  v13 = sub_22BDB9504();
  v14 = sub_22BB30444(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BB30574();
  sub_22BB345CC();
  v19 = sub_22BB3A190();
  if (sub_22BB3AA28(v19, v20, v13) == 1)
  {
    sub_22BB58728(a1, &qword_27D8E2F80, &qword_22BDC0600);
    sub_22BB3AC54();
    sub_22BDB3A3C();

    return sub_22BB58728(v4, &qword_27D8E2F80, &qword_22BDC0600);
  }

  else
  {
    (*(v16 + 32))(v5, a1, v13);
    v22 = *v6;
    swift_isUniquelyReferenced_nonNull_native();
    v30 = *v6;
    v23 = sub_22BB52D78();
    sub_22BD851DC(v23, v24, a3, v25, v26, v27, v28, v29);

    *v6 = v30;
  }

  return result;
}

uint64_t sub_22BD80A04()
{
  sub_22BB35F54();
  v3 = sub_22BBE6DE0(&qword_27D8E64D8, &qword_22BDCE3E0);
  sub_22BB2F0C8(v3);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22BB334AC();
  v8 = type metadata accessor for SessionCoordinatorInjectionRequest(v7);
  v9 = sub_22BB2F330(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  sub_22BB31580();
  v12 = sub_22BB3A190();
  if (sub_22BB3AA28(v12, v13, v14) == 1)
  {
    v15 = sub_22BB345A8();
    sub_22BB58728(v15, v16, &qword_22BDCE3E0);
    sub_22BDB3B38();
    v17 = sub_22BDB43E4();
    sub_22BB2F330(v17);
    (*(v18 + 8))(v0);
    return sub_22BB58728(v2, &qword_27D8E64D8, &qword_22BDCE3E0);
  }

  else
  {
    sub_22BB345A8();
    sub_22BB5005C();
    v20 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_22BB38298();
    sub_22BD854A0(v21, v22);
    *v1 = v25;
    v23 = sub_22BDB43E4();
    sub_22BB2F330(v23);
    return (*(v24 + 8))(v0);
  }
}

void sub_22BD80B94(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    v4 = sub_22BB38F3C();
    sub_22BD85364(v4, v5, v6);

    *v1 = v23;
LABEL_5:
    sub_22BB588E0();
    return;
  }

  v7 = *v1;
  sub_22BB3AC54();
  sub_22BB72B1C();
  if (v9)
  {
    v10 = v8;
    v11 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    sub_22BB34448();
    sub_22BBE6DE0(&qword_27D8E68E8, &qword_22BDCFBF8);
    v12 = sub_22BB2F694();
    sub_22BB37E78(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23);
    v20 = *(*(v7 + 56) + 8 * v10);
    sub_22BBE6DE0(&qword_27D8E6558, &unk_22BDCFC00);
    sub_22BB97200();
    sub_22BDBB4C4();

    *v2 = v7;
    goto LABEL_5;
  }

  sub_22BB588E0();
}

uint64_t sub_22BD80CB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22BBE6DE0(&qword_27D8E6860, &qword_22BDCF7F8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for SnippetStreamingRouter.Entry(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_22BB3AA28(a1, 1, v14) == 1)
  {
    sub_22BB58728(a1, &qword_27D8E6860, &qword_22BDCF7F8);
    sub_22BDB38F8();
    sub_22BB67E48();
    return sub_22BB58728(v9, &qword_27D8E6860, &qword_22BDCF7F8);
  }

  else
  {
    sub_22BB5005C();
    v16 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_22BD85668(v13, a2);
    *v3 = v18;
    return sub_22BB67E48();
  }
}

double sub_22BD80E80@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_22BD8446C(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 40 * v4;

    sub_22BB69088(v6, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_22BD80F04@<X0>(uint64_t a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  if (*(a1 + 16) && (v6 = sub_22BD8446C(), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a1 + 56);
    v10 = a2(0);
    sub_22BB2F330(v10);
    (*(v11 + 16))(a3, v9 + *(v11 + 72) * v8, v10);
    v12 = sub_22BB36764();
  }

  else
  {
    a2(0);
    v12 = sub_22BB31CB0();
  }

  return sub_22BB336D0(v12, v13, v14, v15);
}

double sub_22BD80FBC@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_22BD8446C(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_22BB32FF0(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_22BD81020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22BB72B1C();
  if (v4)
  {
    return sub_22BB6BC30(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BD81074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 1;
  }

  v3 = sub_22BD8446C();
  if ((v4 & 1) == 0)
  {
    return 1;
  }

  sub_22BB6BC30(v3);
}

uint64_t sub_22BD810C0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = sub_22BB67B60(a1, FeedbackLearning.CandidateParameter.hash(into:), sub_22BD84A98);
  if ((v3 & 1) == 0)
  {
    return 1;
  }

  sub_22BB6BC30(v2);
}

uint64_t sub_22BD81174(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_22BBDAE68();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_22BB6BC30(v2);
}

uint64_t sub_22BD811C0(uint64_t a1, uint64_t a2)
{
  sub_22BB5431C(a1, a2);
  if (v4 && (v5 = v3, sub_22BBDAE68(), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = sub_22BDB4C34();
    sub_22BB2F330(v10);
    (*(v11 + 16))(v2, v9 + *(v11 + 72) * v8, v10);
    v12 = v2;
    v13 = 0;
    v14 = 1;
    v15 = v10;
  }

  else
  {
    sub_22BDB4C34();
    v12 = sub_22BB31CB0();
  }

  return sub_22BB336D0(v12, v13, v14, v15);
}

uint64_t sub_22BD812B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_22BB5431C(a1, a2);
  if (v6 && (v7 = v4, v5(), (v8 & 1) != 0))
  {
    v9 = *(v7 + 56);
    v10 = a3(0);
    sub_22BB2F330(v10);
    v12 = *(v11 + 72);
    sub_22BB67A00();
    v13 = sub_22BB36764();
  }

  else
  {
    a3(0);
    v13 = sub_22BB31CB0();
  }

  return sub_22BB336D0(v13, v14, v15, v16);
}

uint64_t sub_22BD8135C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_22BD84660();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_22BB6BC30(v2);
}

double sub_22BD813A8(uint64_t a1, uint64_t a2)
{
  sub_22BB5431C(a1, a2);
  if (v4 && (v5 = v3, sub_22BD84710(), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 80 * v6;

    sub_22BD5F464(v8, v2);
  }

  else
  {
    result = 0.0;
    v2[3] = 0u;
    v2[4] = 0u;
    v2[1] = 0u;
    v2[2] = 0u;
    *v2 = 0u;
  }

  return result;
}

uint64_t SnippetStreamingRouter.createScope()()
{
  v0 = type metadata accessor for SnippetStreamingRouter.Scoped();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();

  return SnippetStreamingRouter.Scoped.init(base:)(v3);
}

uint64_t sub_22BD81458()
{
  v0 = type metadata accessor for SnippetStreamingRouter(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = SnippetStreamingRouter.init()();
  qword_28142A0E0 = v3;
  return result;
}

uint64_t SnippetStreamingRouter.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  SnippetStreamingRouter.init()();
  return v3;
}

uint64_t static SnippetStreamingRouter.global.getter()
{
  if (qword_28142A0D8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22BD81530(void *a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E68C8, &unk_22BDCFBC8);
  sub_22BB30444(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB345CC();
  v8 = a1[4];
  sub_22BB69FEC(a1, a1[3]);
  sub_22BD84A44();
  sub_22BDBB8A4();
  sub_22BDB43E4();
  sub_22BB35DAC();
  sub_22BB3CC18(v9, v10);
  sub_22BDBB664();
  v11 = *(v4 + 8);
  v12 = sub_22BB52D78();
  return v13(v12);
}

uint64_t sub_22BD81680()
{
  sub_22BB35760();
  sub_22BDB43E4();
  sub_22BB35DAC();
  sub_22BB3CC18(v0, v1);

  return sub_22BDBABB4();
}

uint64_t sub_22BD816F0()
{
  sub_22BDBB814();
  sub_22BDB43E4();
  sub_22BB35DAC();
  sub_22BB3CC18(v0, v1);
  sub_22BDBABB4();
  return sub_22BDBB834();
}

uint64_t sub_22BD81768@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_22BDB43E4();
  v5 = sub_22BB30444(v4);
  v31 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v34 = v10 - v9;
  v11 = sub_22BBE6DE0(&qword_27D8E68B8, &qword_22BDCFBC0);
  sub_22BB30444(v11);
  v32 = v12;
  v14 = *(v13 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  v18 = type metadata accessor for SnippetStreamingRouter.ScopeID(0);
  v19 = sub_22BB2F0C8(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BB30574();
  v24 = v23 - v22;
  v25 = a1[4];
  sub_22BB69FEC(a1, a1[3]);
  sub_22BD84A44();
  sub_22BDBB894();
  if (!v2)
  {
    v26 = v31;
    sub_22BB35DAC();
    sub_22BB3CC18(v27, v28);
    sub_22BDBB5D4();
    (*(v32 + 8))(v17, v11);
    (*(v26 + 32))(v24, v34, v4);
    sub_22BB5005C();
  }

  return sub_22BB32FA4(a1);
}

uint64_t sub_22BD819C4(uint64_t a1)
{
  v2 = sub_22BD84A44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD81A00(uint64_t a1)
{
  v2 = sub_22BD84A44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD81A44()
{
  sub_22BDBB814();
  sub_22BDB43E4();
  sub_22BB3CC18(&qword_28142DD50, MEMORY[0x277CC95F0]);
  sub_22BDBABB4();
  return sub_22BDBB834();
}

uint64_t SnippetStreamingRouter.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_id;
  v4 = sub_22BDB43E4();
  v5 = sub_22BB2F330(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t SnippetStreamingRouter.init()()
{
  v1 = sub_22BDB43E4();
  v2 = sub_22BB30444(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v9 = v8 - v7;
  sub_22BDB43D4();
  (*(v4 + 32))(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_id, v9, v1);
  sub_22BDB5AB4();
  v10 = sub_22BB35760();
  type metadata accessor for SnippetStreamingRouter.Entry(v10);
  sub_22BB3CC18(&qword_28142DC58, MEMORY[0x277D1D080]);
  v11 = sub_22BDBAB14();
  v12 = v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_contexts;
  *v12 = 0;
  *(v12 + 8) = v11;
  return v0;
}

void _s23IntelligenceFlowRuntime22SnippetStreamingRouterC13forwardUpdate_4withy0aB00dE6ClientC06StatusH0V_AC12CheckInProofVtAA0dE15ForwardingErrorOYKF(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v79 = a3;
  v75 = a1;
  v5 = sub_22BDB5AB4();
  v6 = sub_22BB2F0C8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  v71 = v10 - v9;
  v11 = sub_22BDB59A4();
  v12 = sub_22BB30444(v11);
  v77 = v13;
  v78 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BB30574();
  v76 = v17 - v16;
  v18 = sub_22BDB59D4();
  v19 = sub_22BB30444(v18);
  v73 = v20;
  v74 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BB30574();
  v25 = v24 - v23;
  v26 = sub_22BBE6DE0(&qword_27D8E6858, &qword_22BDCF7F0);
  sub_22BB30444(v26);
  v72 = v27;
  v29 = *(v28 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v30);
  sub_22BB345CC();
  v31 = sub_22BBE6DE0(&qword_27D8E6860, &qword_22BDCF7F8);
  v32 = sub_22BB2F0C8(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BB30C74();
  v70 = v35 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v67 - v38;
  v40 = type metadata accessor for SnippetStreamingRouter.Entry(0);
  v41 = sub_22BB2F330(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22BB30574();
  v44 = v3 + OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_contexts;
  os_unfair_lock_lock((v3 + OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_contexts));
  v45 = sub_22BDB43B4();
  if ((v45 & 1) == 0)
  {
    v81 = 0;
    sub_22BD83DAC();
    goto LABEL_5;
  }

  v46 = type metadata accessor for SnippetStreamingRouter.CheckInProof(0);
  v47 = *(v44 + 8);
  v68 = *(v46 + 20);
  v69 = a2;
  sub_22BD812B0(a2 + v68, v47, type metadata accessor for SnippetStreamingRouter.Entry);
  if (sub_22BB3AA28(v39, 1, v40) == 1)
  {
    sub_22BB58728(v39, &qword_27D8E6860, &qword_22BDCF7F8);
    v80 = 1;
    sub_22BD83DAC();
LABEL_5:
    swift_willThrowTypedImpl();
    *v79 = v45 & 1;
    os_unfair_lock_unlock(v44);
    return;
  }

  sub_22BB5005C();
  v48 = *(v40 + 20);
  (*(v73 + 16))(v25, v75, v74);
  sub_22BBE6DE0(&qword_27D8E6870, &qword_22BDCF800);
  v79 = v48;
  sub_22BDBAF34();
  v49 = *(v72 + 8);
  v50 = sub_22BB52D78();
  v51(v50);
  sub_22BDB59C4();
  v52 = v77;
  v53 = *(v77 + 88);
  v54 = sub_22BB37074();
  v56 = v55(v54);
  if (v56 == *MEMORY[0x277D1CFB8])
  {
    sub_22BB37408();
    v57 = *(v52 + 8);
    v58 = sub_22BB37074();
    v59(v58);
  }

  else
  {
    if (v56 != *MEMORY[0x277D1CFA0] && v56 != *MEMORY[0x277D1CFB0] && v56 != *MEMORY[0x277D1CFA8])
    {
      sub_22BDBB6C4();
      __break(1u);
      return;
    }

    v62 = *(v52 + 8);
    v63 = sub_22BB37074();
    v64(v63);
    sub_22BDBAF44();
    sub_22BB3257C();
    sub_22BB67A00();
    sub_22BB336D0(v70, 1, 1, v40);
    v65 = sub_22BB37074();
    sub_22BD80CB4(v65, v66);
    sub_22BB37408();
  }

  os_unfair_lock_unlock(v44);
}

uint64_t SnippetStreamingRouter.allocateContext()()
{
  v1 = sub_22BBE6DE0(&qword_27D8E6878, &qword_22BDCF808);
  sub_22BB2F0C8(v1);
  v3 = *(v2 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  sub_22BB31580();
  v5 = type metadata accessor for SnippetStreamingRouter.ScopeID(0);
  sub_22BB336D0(v0, 1, 1, v5);
  sub_22BD82268();
  v7 = v6;
  sub_22BB58728(v0, &qword_27D8E6878, &qword_22BDCF808);
  return v7;
}

void sub_22BD82268()
{
  sub_22BB30F94();
  v66 = v0;
  v67 = v1;
  v68 = v2;
  v3 = sub_22BBE6DE0(&qword_27D8E6860, &qword_22BDCF7F8);
  sub_22BB2F0C8(v3);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  v64 = &v59 - v7;
  v8 = sub_22BBE6DE0(&qword_27D8E6930, &qword_22BDCFC60);
  sub_22BB30444(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v13);
  v15 = &v59 - v14;
  v16 = sub_22BBE6DE0(&qword_27D8E6938, &qword_22BDCFC68);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB30C74();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v59 - v23;
  v25 = sub_22BDB5AB4();
  v26 = sub_22BB2F0C8(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BB30C74();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v59 - v33;
  v35 = sub_22BBE6DE0(&qword_27D8E6940, &unk_22BDCFC70);
  sub_22BB2F0C8(v35);
  v37 = *(v36 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v38);
  v65 = &v59 - v39;
  v63 = (v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_contexts);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_contexts));
  v60 = v34;
  sub_22BDB43D4();
  v40 = *(v17 + 56);
  sub_22BDB59D4();
  (*(v10 + 104))(v15, *MEMORY[0x277D85778], v8);
  v62 = v24;
  sub_22BDBAF04();
  (*(v10 + 8))(v15, v8);
  sub_22BB3257C();
  v61 = v41;
  sub_22BB67A00();
  sub_22BC5E5C4();
  v42 = *(v17 + 56);
  v43 = type metadata accessor for SnippetStreamingRouter.Entry(0);
  v44 = *(v43 + 24);
  v45 = v64;
  sub_22BC5E5C4();
  *v45 = 0;
  v46 = *(v43 + 20);
  v47 = sub_22BBE6DE0(&qword_27D8E6870, &qword_22BDCF800);
  sub_22BB314BC(v47);
  v49 = v48;
  (*(v48 + 32))(&v45[v46], v21 + v42, v47);
  v50 = sub_22BBE6DE0(&qword_27D8E6948, qword_22BDCFDF0);
  sub_22BB2F330(v50);
  (*(v51 + 8))(v21);
  sub_22BB336D0(v45, 0, 1, v43);
  v52 = v63;
  sub_22BD80CB4(v45, v31);
  v53 = v60;
  sub_22BB67A00();
  sub_22BC8D26C();
  v54 = *(v17 + 56);
  v55 = type metadata accessor for SnippetStreamingStream(0);
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();
  sub_22BD86680(v66, v53, v21);
  v58 = *(v49 + 8);

  v58(v21 + v54, v47);
  os_unfair_lock_unlock(v52);
  sub_22BB5005C();
  sub_22BB314EC();
}

uint64_t sub_22BD826EC()
{
  v0 = type metadata accessor for SnippetStreamingRouter.Entry(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_22BBE6DE0(&qword_27D8E6860, &qword_22BDCF7F8);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  sub_22BDB38F8();
  sub_22BC5E5C4();
  if (sub_22BB3AA28(v6, 1, v0) == 1)
  {
    sub_22BB58728(v8, &qword_27D8E6860, &qword_22BDCF7F8);
  }

  else
  {
    sub_22BB5005C();
    v9 = *(v0 + 20);
    sub_22BBE6DE0(&qword_27D8E6870, &qword_22BDCF800);
    sub_22BDBAF44();
    sub_22BB67E48();
    v6 = v8;
  }

  return sub_22BB58728(v6, &qword_27D8E6860, &qword_22BDCF7F8);
}

Swift::Void __swiftcall SnippetStreamingRouter.deallocateAllContexts()()
{
  v1 = v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_contexts;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_contexts));
  sub_22BD82930((v1 + 8));

  os_unfair_lock_unlock(v1);
}

uint64_t sub_22BD82930(uint64_t *a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E6860, &qword_22BDCF7F8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v59 = &v53 - v4;
  v65 = type metadata accessor for SnippetStreamingRouter.Entry(0);
  v63 = *(v65 - 8);
  v5 = *(v63 + 64);
  v6 = MEMORY[0x28223BE20](v65);
  v67 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v53 - v8;
  v54 = sub_22BDB5AB4();
  v62 = *(v54 - 8);
  v9 = *(v62 + 64);
  v10 = MEMORY[0x28223BE20](v54);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v56 = &v53 - v13;
  v14 = sub_22BBE6DE0(&qword_27D8E6910, &qword_22BDCFC48);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v61 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v60 = &v53 - v18;
  v55 = a1;
  v19 = *a1 + 64;
  v20 = 1 << *(*a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(*a1 + 64);
  v23 = (v20 + 63) >> 6;

  v25 = 0;
  v58 = result;
  v64 = result;
  v66 = v12;
  if (v22)
  {
    while (1)
    {
      v26 = v25;
LABEL_10:
      v28 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v29 = v28 | (v26 << 6);
      v30 = v58;
      v31 = *(v58 + 48) + *(v62 + 72) * v29;
      sub_22BB67A00();
      v32 = *(v30 + 56) + *(v63 + 72) * v29;
      sub_22BB67A00();
      v33 = sub_22BBE6DE0(&qword_27D8E6918, &qword_22BDCFC50);
      v34 = *(v33 + 48);
      v35 = v61;
      sub_22BB5005C();
      sub_22BB5005C();
      sub_22BB336D0(v35, 0, 1, v33);
      v12 = v66;
LABEL_11:
      v36 = v60;
      sub_22BC8D26C();
      v37 = sub_22BBE6DE0(&qword_27D8E6918, &qword_22BDCFC50);
      if (sub_22BB3AA28(v36, 1, v37) == 1)
      {
      }

      v38 = *(v37 + 48);
      sub_22BB5005C();
      sub_22BB5005C();
      v39 = sub_22BD844E0(v12);
      if (v40)
      {
        v41 = v39;
        v42 = v55;
        v43 = *v55;
        swift_isUniquelyReferenced_nonNull_native();
        v68 = *v42;
        v44 = *(v68 + 24);
        sub_22BBE6DE0(&qword_27D8E6920, &qword_22BDCFC58);
        sub_22BDBB4A4();
        v45 = v68;
        v46 = *(v68 + 48) + *(v62 + 72) * v41;
        sub_22BB67E48();
        v47 = *(v45 + 56) + *(v63 + 72) * v41;
        v48 = v59;
        sub_22BB5005C();
        sub_22BB3CC18(&qword_28142DC58, MEMORY[0x277D1D080]);
        sub_22BDBB4C4();
        sub_22BB67E48();
        v49 = 0;
        v64 = v45;
        *v42 = v45;
        v12 = v66;
      }

      else
      {
        sub_22BB67E48();
        v49 = 1;
        v48 = v59;
      }

      v50 = v65;
      sub_22BB336D0(v48, v49, 1, v65);
      sub_22BB58728(v48, &qword_27D8E6860, &qword_22BDCF7F8);
      v51 = *(v50 + 20);
      sub_22BBE6DE0(&qword_27D8E6870, &qword_22BDCF800);
      sub_22BDBAF44();
      result = sub_22BB67E48();
      if (!v22)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v27 = v61;
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v23)
      {
        v52 = sub_22BBE6DE0(&qword_27D8E6918, &qword_22BDCFC50);
        sub_22BB336D0(v27, 1, 1, v52);
        v22 = 0;
        goto LABEL_11;
      }

      v22 = *(v19 + 8 * v26);
      ++v25;
      if (v22)
      {
        v25 = v26;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void _s23IntelligenceFlowRuntime22SnippetStreamingRouterC16checkIntoContextyAC12CheckInProofV0aB00deI2IDVAA0dejK5ErrorOYKF(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = sub_22BB3B4B8(OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_contexts);
  os_unfair_lock_lock(v8);
  sub_22BD8302C((v3 + 8), a1, v3, &v9, a3);
  if (v4)
  {
    *a2 = v9;
  }

  os_unfair_lock_unlock(v3);
}

uint64_t sub_22BD8302C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a5;
  v9 = type metadata accessor for SnippetStreamingRouter.Entry(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (!*(*a1 + 16) || (v15 = sub_22BD844E0(a2), (v16 & 1) == 0))
  {
    *a4 = 0;
    v30 = 0;
    sub_22BD85A3C();
    return swift_willThrowTypedImpl();
  }

  v17 = v15;
  v25 = *(v14 + 36);
  v26 = a3;
  sub_22BD832A8(v15, v25, 0, v14);
  v18 = *v13;
  sub_22BB67E48();
  if (v18)
  {
    *a4 = 1;
    v29 = 1;
    sub_22BD85A3C();
    return swift_willThrowTypedImpl();
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    v28 = v14;
    sub_22BBE6DE0(&qword_27D8E6920, &qword_22BDCFC58);
    result = sub_22BDBB4B4();
    v14 = v28;
  }

  v20 = v26;
  if (v17 < 0 || v17 >= 1 << *(v14 + 32))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (((*(v14 + 8 * (v17 >> 6) + 64) >> v17) & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v25 == *(v14 + 36))
  {
    *(*(v14 + 56) + *(v10 + 72) * v17) = 1;
    *a1 = v14;
    v21 = *(type metadata accessor for SnippetStreamingRouter.CheckInProof(0) + 20);
    v22 = v27;
    sub_22BB67A00();
    v23 = OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_id;
    v24 = sub_22BDB43E4();
    return (*(*(v24 - 8) + 16))(v22, v20 + v23, v24);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_22BD832A8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(a4 + 56);
    v5 = *(*(type metadata accessor for SnippetStreamingRouter.Entry(0) - 8) + 72);
    return sub_22BB67A00();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t SnippetStreamingRouter.contextIsCheckedIn(_:)(uint64_t a1)
{
  v3 = sub_22BB3B4B8(OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_contexts);
  os_unfair_lock_lock(v3);
  sub_22BD833B8((v1 + 8), a1, &v5);
  os_unfair_lock_unlock(v1);
  return v5;
}

uint64_t sub_22BD833B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for SnippetStreamingRouter.Entry(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  result = MEMORY[0x28223BE20](v9);
  v12 = &v18 - v11;
  v13 = *a1;
  if (*(v13 + 16) && (result = sub_22BD844E0(a2), (v14 & 1) != 0))
  {
    v15 = *(v13 + 56);
    v16 = *(v7 + 72);
    sub_22BB67A00();
    sub_22BB5005C();
    v17 = *v12;
    result = sub_22BB67E48();
  }

  else
  {
    v17 = 2;
  }

  *a3 = v17;
  return result;
}

uint64_t sub_22BD83520(uint64_t a1, uint64_t a2)
{
  v5 = sub_22BB3B4B8(OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_contexts);
  os_unfair_lock_lock(v5);
  sub_22BD83588((v2 + 8), a1, a2, &v7);
  os_unfair_lock_unlock(v2);
  return v7;
}

uint64_t sub_22BD83588@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v26 = a3;
  v27 = a4;
  v6 = type metadata accessor for SnippetStreamingRouter.ScopeID(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_22BBE6DE0(&qword_27D8E6908, &qword_22BDCFC40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = sub_22BBE6DE0(&qword_27D8E6860, &qword_22BDCF7F8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v26 - v14;
  v16 = sub_22BBE6DE0(&qword_27D8E6878, &qword_22BDCF808);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v26 - v19;
  sub_22BD812B0(a2, *a1, type metadata accessor for SnippetStreamingRouter.Entry);
  v21 = type metadata accessor for SnippetStreamingRouter.Entry(0);
  if (sub_22BB3AA28(v15, 1, v21))
  {
    sub_22BB58728(v15, &qword_27D8E6860, &qword_22BDCF7F8);
    sub_22BB336D0(v20, 1, 1, v6);
  }

  else
  {
    v22 = *(v21 + 24);
    sub_22BC5E5C4();
    sub_22BB58728(v15, &qword_27D8E6860, &qword_22BDCF7F8);
  }

  v23 = *(v8 + 48);
  sub_22BC5E5C4();
  sub_22BC5E5C4();
  if (sub_22BB3AA28(v11, 1, v6) != 1)
  {
    sub_22BC5E5C4();
    if (sub_22BB3AA28(&v11[v23], 1, v6) != 1)
    {
      sub_22BB5005C();
      v25 = sub_22BDB43B4();
      sub_22BB67E48();
      sub_22BB58728(v20, &qword_27D8E6878, &qword_22BDCF808);
      sub_22BB67E48();
      result = sub_22BB58728(v11, &qword_27D8E6878, &qword_22BDCF808);
      goto LABEL_11;
    }

    sub_22BB58728(v20, &qword_27D8E6878, &qword_22BDCF808);
    sub_22BB67E48();
    goto LABEL_9;
  }

  sub_22BB58728(v20, &qword_27D8E6878, &qword_22BDCF808);
  if (sub_22BB3AA28(&v11[v23], 1, v6) != 1)
  {
LABEL_9:
    result = sub_22BB58728(v11, &qword_27D8E6908, &qword_22BDCFC40);
    v25 = 0;
    goto LABEL_11;
  }

  result = sub_22BB58728(v11, &qword_27D8E6878, &qword_22BDCF808);
  v25 = 1;
LABEL_11:
  *v27 = v25 & 1;
  return result;
}

uint64_t SnippetStreamingRouter.deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_id;
  v2 = sub_22BDB43E4();
  sub_22BB2F330(v2);
  (*(v3 + 8))(v0 + v1);
  sub_22BB58728(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_contexts + 8, &qword_27D8E6880, &qword_22BDCF810);
  return v0;
}

uint64_t SnippetStreamingRouter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_id;
  v2 = sub_22BDB43E4();
  sub_22BB2F330(v2);
  (*(v3 + 8))(v0 + v1);
  sub_22BB58728(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_contexts + 8, &qword_27D8E6880, &qword_22BDCF810);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_22BD83B08(uint64_t a1, uint64_t *a2)
{
  v4 = *v2;
  result = SnippetStreamingRouter.allocateContext()();
  *a2 = result;
  return result;
}

uint64_t SnippetStreamingRouter.CheckInProof.routerId.getter()
{
  v0 = sub_22BDB43E4();
  sub_22BB2F330(v0);
  v2 = *(v1 + 16);
  v3 = sub_22BB31F54();

  return v4(v3);
}

uint64_t SnippetStreamingRouter.CheckInProof.routerId.setter()
{
  sub_22BB35760();
  v2 = sub_22BDB43E4();
  v3 = sub_22BB2F330(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t SnippetStreamingRouter.CheckInProof.id.getter()
{
  v0 = *(type metadata accessor for SnippetStreamingRouter.CheckInProof(0) + 20);
  sub_22BB3257C();
  return sub_22BB67A00();
}

uint64_t SnippetStreamingRouter.CheckInProof.id.setter()
{
  v0 = sub_22BB35760();
  v1 = *(type metadata accessor for SnippetStreamingRouter.CheckInProof(v0) + 20);
  return sub_22BD85988();
}

uint64_t (*SnippetStreamingRouter.CheckInProof.id.modify())(void)
{
  v0 = sub_22BB35760();
  v1 = *(type metadata accessor for SnippetStreamingRouter.CheckInProof(v0) + 20);
  return nullsub_1;
}

unint64_t sub_22BD83DAC()
{
  result = qword_27D8E6868;
  if (!qword_27D8E6868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6868);
  }

  return result;
}

unint64_t sub_22BD83EB4()
{
  result = qword_27D8E6890;
  if (!qword_27D8E6890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6890);
  }

  return result;
}

unint64_t sub_22BD83F0C()
{
  result = qword_27D8E6898;
  if (!qword_27D8E6898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6898);
  }

  return result;
}

uint64_t sub_22BD83F88()
{
  result = sub_22BDB43E4();
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

uint64_t sub_22BD84074()
{
  result = sub_22BDB43E4();
  if (v1 <= 0x3F)
  {
    result = sub_22BDB5AB4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BD8412C()
{
  result = sub_22BDB43E4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22BD84198()
{
  sub_22BD8428C(319, &qword_2814287D0, MEMORY[0x277D1CFC0], MEMORY[0x277D85788]);
  if (v0 <= 0x3F)
  {
    sub_22BD8428C(319, &qword_28142A098, type metadata accessor for SnippetStreamingRouter.ScopeID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22BD8428C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

_BYTE *sub_22BD842F0(_BYTE *result, unsigned int a2, unsigned int a3)
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