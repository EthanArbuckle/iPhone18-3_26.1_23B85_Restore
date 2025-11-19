uint64_t sub_22BC98C08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v48 = a3;
  v47 = a4;
  v51 = sub_22BDB8CB4();
  v46 = *(v51 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x28223BE20](v51);
  v44 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_22BBE6DE0(&qword_27D8E3A98, &qword_22BDC0618);
  v8 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v10 = &v44 - v9;
  v11 = sub_22BBE6DE0(&qword_27D8E2F80, &qword_22BDC0600);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v44 - v16;
  v18 = sub_22BBE6DE0(&qword_27D8E3AA0, &unk_22BDC0620);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v45 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v44 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v44 - v25;
  v50 = *a1;
  v28 = *a2;
  v27 = a2[1];
  v29 = sub_22BDB9524();
  sub_22BD80EEC(v29, v17);

  v30 = sub_22BDB9504();
  if (sub_22BB3AA28(v17, 1, v30) == 1)
  {
    sub_22BB325EC(v17, &qword_27D8E2F80, &qword_22BDC0600);
    v31 = 1;
  }

  else
  {
    sub_22BDB94F4();
    (*(*(v30 - 8) + 8))(v17, v30);
    v31 = 0;
  }

  sub_22BB336D0(v26, v31, 1, v51);
  v32 = sub_22BDB9524();
  sub_22BD80EEC(v32, v15);

  if (sub_22BB3AA28(v15, 1, v30) == 1)
  {
    sub_22BB325EC(v15, &qword_27D8E2F80, &qword_22BDC0600);
    v33 = 1;
  }

  else
  {
    sub_22BDB94F4();
    (*(*(v30 - 8) + 8))(v15, v30);
    v33 = 0;
  }

  v34 = v51;
  sub_22BB336D0(v24, v33, 1, v51);
  v35 = *(v49 + 48);
  sub_22BB3CD70(v26, v10, &qword_27D8E3AA0, &unk_22BDC0620);
  sub_22BB3CD70(v24, &v10[v35], &qword_27D8E3AA0, &unk_22BDC0620);
  if (sub_22BB3AA28(v10, 1, v34) == 1)
  {
    sub_22BB325EC(v24, &qword_27D8E3AA0, &unk_22BDC0620);
    sub_22BB325EC(v26, &qword_27D8E3AA0, &unk_22BDC0620);
    if (sub_22BB3AA28(&v10[v35], 1, v34) == 1)
    {
      result = sub_22BB325EC(v10, &qword_27D8E3AA0, &unk_22BDC0620);
      v37 = v50;
LABEL_14:
      *v47 = v37;
      return result;
    }

    goto LABEL_12;
  }

  v38 = v45;
  sub_22BB3CD70(v10, v45, &qword_27D8E3AA0, &unk_22BDC0620);
  if (sub_22BB3AA28(&v10[v35], 1, v34) == 1)
  {
    sub_22BB325EC(v24, &qword_27D8E3AA0, &unk_22BDC0620);
    sub_22BB325EC(v26, &qword_27D8E3AA0, &unk_22BDC0620);
    (*(v46 + 8))(v38, v34);
LABEL_12:
    result = sub_22BB325EC(v10, &qword_27D8E3A98, &qword_22BDC0618);
    v37 = v50;
    goto LABEL_13;
  }

  v40 = v46;
  v41 = &v10[v35];
  v42 = v44;
  (*(v46 + 32))(v44, v41, v34);
  sub_22BC9D714(&qword_27D8E3AA8, MEMORY[0x277D1E048]);
  LODWORD(v49) = sub_22BDBABD4();
  v43 = *(v40 + 8);
  v43(v42, v34);
  sub_22BB325EC(v24, &qword_27D8E3AA0, &unk_22BDC0620);
  sub_22BB325EC(v26, &qword_27D8E3AA0, &unk_22BDC0620);
  v43(v38, v34);
  result = sub_22BB325EC(v10, &qword_27D8E3AA0, &unk_22BDC0620);
  v37 = v50;
  if (v49)
  {
    goto LABEL_14;
  }

LABEL_13:
  if (!__OFADD__(v37++, 1))
  {
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_22BC99200(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v20 = a1;
  v6 = a1;
  v7 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (*(a4 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v10)))));
      v16 = v15[1];
      v19[0] = *v15;
      v19[1] = v16;

      a2(&v18, &v20, v19);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;

      v6 = v18;
      v20 = v18;
      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    return v6;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v6;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22BC99354(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_22BC9D9E4(a1);
    return a2;
  }

  else
  {

    return sub_22BC9DB10(a1, a2);
  }
}

uint64_t sub_22BC993A8()
{
  sub_22BB2F35C();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = *v0;
  v7 = sub_22BDBA794();
  v1[7] = v7;
  sub_22BB30434(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = sub_22BB30ACC();
  v11 = sub_22BDB5284();
  v1[10] = v11;
  sub_22BB30434(v11);
  v1[11] = v12;
  v14 = *(v13 + 64);
  v1[12] = sub_22BBB79B0();
  v1[13] = swift_task_alloc();
  v15 = sub_22BDBA784();
  v1[14] = v15;
  sub_22BB30434(v15);
  v1[15] = v16;
  v18 = *(v17 + 64);
  v1[16] = sub_22BB30ACC();
  v19 = sub_22BBE6DE0(&qword_27D8E2ED0, &qword_22BDBD740);
  v1[17] = v19;
  sub_22BB30434(v19);
  v1[18] = v20;
  v22 = *(v21 + 64);
  v1[19] = sub_22BB30ACC();
  v23 = sub_22BDB8CB4();
  v1[20] = v23;
  sub_22BB30434(v23);
  v1[21] = v24;
  v26 = *(v25 + 64);
  v1[22] = sub_22BB30ACC();
  v27 = sub_22BDBA594();
  v1[23] = v27;
  sub_22BB30434(v27);
  v1[24] = v28;
  v30 = *(v29 + 64);
  v1[25] = sub_22BBB79B0();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v31 = sub_22BBE6DE0(&qword_27D8E2EE8, &qword_22BDBD760);
  v1[28] = v31;
  sub_22BB30434(v31);
  v1[29] = v32;
  v34 = *(v33 + 64);
  v1[30] = sub_22BB30ACC();
  v35 = type metadata accessor for DisambiguationListItem(0);
  sub_22BB30434(v35);
  v1[31] = v36;
  v38 = *(v37 + 64);
  v1[32] = sub_22BB30ACC();
  v39 = sub_22BBE6DE0(&qword_27D8E2EF8, &qword_22BDC0230);
  v1[33] = v39;
  sub_22BB30434(v39);
  v1[34] = v40;
  v42 = *(v41 + 64);
  v1[35] = sub_22BB30ACC();
  v43 = sub_22BBE6DE0(&qword_27D8E2F78, &unk_22BDBD980);
  sub_22BB2F0C8(v43);
  v45 = *(v44 + 64);
  v1[36] = sub_22BBB79B0();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v46 = sub_22BBE6DE0(&qword_27D8E2F80, &qword_22BDC0600);
  sub_22BB2F0C8(v46);
  v48 = *(v47 + 64);
  v1[39] = sub_22BBB79B0();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v49 = sub_22BDB9504();
  v1[43] = v49;
  sub_22BB30434(v49);
  v1[44] = v50;
  v52 = *(v51 + 64);
  v1[45] = sub_22BBB79B0();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v53 = sub_22BDBA084();
  v1[49] = v53;
  sub_22BB30434(v53);
  v1[50] = v54;
  v56 = *(v55 + 64);
  v1[51] = sub_22BB30ACC();
  sub_22BB36F5C();
  v1[52] = *(v57 + 80);
  sub_22BB36F5C();
  v1[53] = *(v58 + 96);
  v59 = type metadata accessor for ToolExecutionEvent();
  v1[54] = v59;
  sub_22BB30434(v59);
  v1[55] = v60;
  v62 = *(v61 + 64);
  v1[56] = sub_22BB3307C();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v63 = sub_22BDB77D4();
  v1[59] = v63;
  sub_22BB30434(v63);
  v1[60] = v64;
  v66 = *(v65 + 64);
  v1[61] = sub_22BB3307C();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v67 = sub_22BDB4C34();
  v1[70] = v67;
  sub_22BB30434(v67);
  v1[71] = v68;
  v70 = *(v69 + 64);
  v1[72] = sub_22BB3307C();
  v1[73] = swift_task_alloc();
  v71 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v71, v72, v73);
}

uint64_t sub_22BC999E4()
{
  v665 = v0;
  v1 = v0;
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[3];
  v8 = sub_22BDB9524();
  sub_22BDB8174();
  v622 = sub_22BDB9494();
  sub_22BDB63F4();
  v9 = *(v4 + 16);
  sub_22BB35FA0();
  v10();

  v11 = sub_22BDB77C4();
  v12 = sub_22BDBB134();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v1[72];
  v15 = v1[71];
  v16 = v1[70];
  v17 = v1[69];
  v18 = v1[59];
  v19 = v1[60];
  v655 = v8;
  if (v13)
  {
    v588 = v1[43];
    v645 = v1;
    v20 = swift_slowAlloc();
    v664[0] = swift_slowAlloc();
    *v20 = 136315650;
    sub_22BB6BA68();
    sub_22BC9D714(v21, v22);
    v598 = v18;
    v612 = v17;
    v23 = sub_22BDBB684();
    v25 = v24;
    v26 = *(v15 + 8);
    v27 = sub_22BB2F324();
    v633 = v28;
    (v28)(v27);
    v29 = sub_22BB32EE0(v23, v25, v664);

    *(v20 + 4) = v29;
    *(v20 + 12) = 2080;
    v30 = sub_22BDBAAF4();
    v32 = sub_22BB32EE0(v30, v31, v664);

    *(v20 + 14) = v32;
    *(v20 + 22) = 1024;
    *(v20 + 24) = v622 & 1;
    _os_log_impl(&dword_22BB2C000, v11, v12, "ToolExecution: Updating execution of %s with parameters - %s confirmation value %{BOOL}d", v20, 0x1Cu);
    swift_arrayDestroy();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    v1 = v645;
    sub_22BB2F368();
    MEMORY[0x2318A6080]();

    v33 = *(v19 + 8);
    v33(v612, v598);
  }

  else
  {

    v34 = *(v15 + 8);
    v35 = sub_22BB2F324();
    v633 = v36;
    (v36)(v35);
    v33 = *(v19 + 8);
    v33(v17, v18);
  }

  v37 = v1[68];
  v38 = v1[58];
  v39 = v1[54];
  v40 = v1[55];
  v41 = v1[2];
  sub_22BDB63F4();
  v44 = *(v40 + 16);
  v42 = v40 + 16;
  v43 = v44;
  v45 = sub_22BB33728();
  (v44)(v45);
  v46 = sub_22BDB77C4();
  v47 = sub_22BDBB134();
  v48 = os_log_type_enabled(v46, v47);
  v49 = v1[68];
  v636 = v1[60];
  v646 = v1[59];
  v50 = v1[58];
  if (v48)
  {
    v579 = v47;
    v51 = v1[57];
    v599 = v33;
    v613 = v43;
    v52 = v1[54];
    v53 = v1[55];
    log = v46;
    v54 = sub_22BB31AD8();
    v589 = v49;
    v55 = swift_slowAlloc();
    v664[0] = v55;
    *v54 = 136315138;
    v613(v51, v50, v52);
    sub_22BB345A8();
    v56 = sub_22BDBAC14();
    v58 = v57;
    v59 = *(v53 + 8);
    v60 = v52;
    v41 = v599;
    v59(v50, v60);
    v43 = v613;
    v61 = sub_22BB32EE0(v56, v58, v664);

    *(v54 + 4) = v61;
    _os_log_impl(&dword_22BB2C000, log, v579, "ToolExecution: Attempting to respond to event: %s", v54, 0xCu);
    sub_22BB32FA4(v55);
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    v62 = v59;
    v33 = v599;
    sub_22BB2F368();
    MEMORY[0x2318A6080]();

    v599(v589, v646);
  }

  else
  {
    v63 = v1[54];
    v64 = v1[55];

    v65 = *(v64 + 8);
    v56 = (v64 + 8);
    v62 = v65;
    (v65)(v50, v63);
    v33(v49, v646);
  }

  v66 = v1[56];
  v43(v66, v1[2], v1[54]);
  sub_22BB2F324();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BB347B4();

      if (!v66)
      {
        goto LABEL_42;
      }

      v106 = v1[42];
      v105 = v1[43];
      sub_22BB6BE44();

      sub_22BB36B74(v106);
      if (v107)
      {
        sub_22BB8AC30();
        v108 = v56[42];
        goto LABEL_33;
      }

      v661 = v41;
      v334 = v1[48];
      v336 = v1[43];
      v335 = v1[44];
      v337 = v1[42];
      v338 = v1[38];
      v297 = v1;
      v339 = v1[10];

      v340 = sub_22BB8DCA0();
      v341(v340);
      sub_22BDB94C4();
      v342 = sub_22BB3AA28(v338, 1, v339);
      v343 = v297[38];
      if (v342 == 1)
      {

        sub_22BB325EC(v343, &qword_27D8E2F78, &unk_22BDBD980);
LABEL_87:
        v499 = v297[73];
        v500 = v297[71];
        v501 = v297[70];
        v498 = v297[48];
        goto LABEL_88;
      }

      v433 = (*(v297[11] + 88))(v297[38], v297[10]);
      v434 = v297[38];
      v435 = v297[10];
      v436 = v297[11];
      if (v433 != *MEMORY[0x277D1CAF0])
      {

        v475 = *(v436 + 8);
        v476 = sub_22BB2F324();
        v477(v476);
        goto LABEL_87;
      }

      v437 = *(v436 + 96);
      v438 = sub_22BB2F324();
      v439(v438);
      v440 = *v434;
      if (*v434 >= *(v62 + 2))
      {

        goto LABEL_87;
      }

      v441 = v297[66];
      sub_22BDB63F4();
      v442 = sub_22BDB77C4();
      v443 = sub_22BDBB134();
      if (sub_22BB34888(v443))
      {
        v444 = sub_22BB31AD8();
        *v444 = 134217984;
        *(v444 + 4) = v440;
        sub_22BB395F0(&dword_22BB2C000, v445, v446, "ToolExecution: Disambiguating with index: %ld");
        sub_22BB2F368();
        MEMORY[0x2318A6080]();
      }

      v447 = v297[66];
      v449 = v297[59];
      v448 = v297[60];

      v450 = sub_22BB31B54();
      result = (v33)(v450);
      if ((v440 & 0x8000000000000000) != 0)
      {
        goto LABEL_99;
      }

      if (v440 >= *(v62 + 2))
      {
        goto LABEL_101;
      }

      v451 = v297[73];
      v642 = v297[70];
      v620 = v297[48];
      v631 = v297[71];
      v452 = v297[44];
      v453 = v297[34];
      v454 = v297[35];
      v455 = v297[32];
      v456 = v297[33];
      v595 = v297[5];
      v609 = v297[43];
      v585 = v297[4];
      sub_22BB5184C(v297[31]);
      sub_22BB3B328();
      sub_22BC9E554(v457, v455, v458);

      v460 = *v455;
      v459 = v455[1];

      sub_22BB386EC();
      sub_22BC9D3D4(v455, v461);
      *v454 = v460;
      v454[1] = v459;
      (*(v453 + 104))(v454, *MEMORY[0x277D72098], v456);
      (v661)(v454, v585, v595);

      v462 = v454;
      v1 = v297;
      (*(v453 + 8))(v462, v456);
      (*(v452 + 8))(v620, v609);
      v184 = v451;
      goto LABEL_74;
    case 2u:
      sub_22BB347B4();

      if (!v66)
      {
LABEL_42:
        sub_22BB3FDD8();
        v246 = v1[70];

        type metadata accessor for RuntimeError();
        sub_22BB31C10();
        sub_22BC9D714(v247, v248);
        v249 = sub_22BB38D10();
        sub_22BB51330(v249, v250);
        swift_storeEnumTagMultiPayload();
        sub_22BB6C6D4();

LABEL_89:
        v190 = sub_22BB2F324();
LABEL_90:
        v633(v190, v191);
        goto LABEL_91;
      }

      v105 = v1[43];
      v106 = v1[41];
      sub_22BB6BE44();

      sub_22BB36B74(v106);
      if (v107)
      {
        sub_22BB8AC30();
        v108 = v56[41];
LABEL_33:

        sub_22BB325EC(v108, &qword_27D8E2F80, &qword_22BDC0600);
        sub_22BBDB89C();
        sub_22BB35AA4();
        sub_22BC9D714(v185, v186);
        v187 = sub_22BB38D10();
        sub_22BB51330(v187, v188);
        *v189 = v42;
        v189[1] = v66;
        swift_storeEnumTagMultiPayload();
        sub_22BB6C6D4();

        v1 = v56;
        v190 = v105;
        v191 = v106;
        goto LABEL_90;
      }

      v659 = v41;
      v292 = v1[47];
      v294 = v1[43];
      v293 = v1[44];
      v295 = v1[41];
      v296 = v1[37];
      v297 = v1;
      v298 = v1[10];

      v299 = sub_22BB8DCA0();
      v300(v299);
      sub_22BDB94C4();
      v301 = sub_22BB3AA28(v296, 1, v298);
      v302 = v297[37];
      if (v301 == 1)
      {

        sub_22BB325EC(v302, &qword_27D8E2F78, &unk_22BDBD980);
        goto LABEL_85;
      }

      v371 = (*(v297[11] + 88))(v297[37], v297[10]);
      v372 = v297[37];
      v373 = v297[10];
      v374 = v297[11];
      if (v371 != *MEMORY[0x277D1CAF0])
      {

        v472 = *(v374 + 8);
        v473 = sub_22BB2F324();
        v474(v473);
        goto LABEL_85;
      }

      v375 = *(v374 + 96);
      v376 = sub_22BB2F324();
      v377(v376);
      v378 = *v372;
      if (*v372 >= *(v62 + 2))
      {

LABEL_85:
        v495 = v297[73];
        v496 = v297[71];
        v497 = v297[70];
        v498 = v297[47];
LABEL_88:
        v502 = v297[43];
        v503 = v297[44];
        sub_22BBDB89C();
        sub_22BB35AA4();
        sub_22BC9D714(v504, v505);
        sub_22BB38D10();
        (*(v503 + 16))(v506, v498, v502);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v507 = *(v503 + 8);
        v508 = sub_22BB32E04();
        v509(v508);
        v1 = v297;
        goto LABEL_89;
      }

      v379 = v297[65];
      sub_22BDB63F4();
      v380 = sub_22BDB77C4();
      v381 = sub_22BDBB134();
      if (sub_22BB34888(v381))
      {
        v382 = sub_22BB31AD8();
        *v382 = 134217984;
        *(v382 + 4) = v378;
        sub_22BB395F0(&dword_22BB2C000, v383, v384, "ToolExecution: Disambiguating with index: %ld");
        sub_22BB2F368();
        MEMORY[0x2318A6080]();
      }

      v385 = v297[65];
      v387 = v297[59];
      v386 = v297[60];

      v388 = sub_22BB31B54();
      (v33)(v388);
      sub_22BBE6DE0(&qword_27D8E2B48, &qword_22BDBD250);
      result = swift_allocObject();
      *(result + 16) = xmmword_22BDBCBD0;
      if ((v378 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
      }

      else
      {
        if (v378 >= *(v62 + 2))
        {
          goto LABEL_100;
        }

        v390 = result;
        v642 = v297[70];
        v618 = v297[47];
        v629 = v297[71];
        v391 = v297[44];
        v593 = v297[73];
        v606 = v297[43];
        v392 = v297[32];
        v393 = v297[29];
        v394 = v297[30];
        v395 = v297[28];
        loge = v297[4];
        v583 = v297[5];
        sub_22BB5184C(v297[31]);
        sub_22BB3B328();
        sub_22BC9E554(v396, v392, v397);

        v399 = *v392;
        v398 = v392[1];

        sub_22BB386EC();
        sub_22BC9D3D4(v392, v400);
        *(v390 + 32) = v399;
        *(v390 + 40) = v398;
        *v394 = v390;
        (*(v393 + 104))(v394, *MEMORY[0x277D72098], v395);
        v659(v394, loge, v583);

        v401 = v394;
        v1 = v297;
        (*(v393 + 8))(v401, v395);
        (*(v391 + 8))(v618, v606);
        v184 = v593;
LABEL_74:
        v183 = v642;
LABEL_38:
        v633(v184, v183);
LABEL_66:
        v421 = v1[73];
        v422 = v1[72];
        v423 = v1[69];
        v424 = v1[68];
        v425 = v1;
        v426 = v1[67];
        v427 = v425[66];
        v428 = v425[65];
        v429 = v425[63];
        v430 = v425[64];
        v431 = v425[62];
        v523 = v425[61];
        v525 = v425[58];
        v527 = v425[57];
        v529 = v425[56];
        v531 = v425[51];
        v533 = v425[48];
        v535 = v425[47];
        v537 = v425[46];
        v539 = v425[45];
        v541 = v425[42];
        v543 = v425[41];
        v545 = v425[40];
        v547 = v425[39];
        v550 = v425[38];
        v553 = v425[37];
        v556 = v425[36];
        v561 = v425[35];
        v566 = v425[32];
        logg = v425[30];
        v584 = v425[27];
        v594 = v425[26];
        v608 = v425[25];
        v619 = v425[22];
        v630 = v425[19];
        v634 = v425[16];
        v643 = v425[13];
        v653 = v425[12];
        v662 = v425[9];

        sub_22BB2F09C();
LABEL_92:

        return v432();
      }

      return result;
    case 3u:
      v109 = v1[56];
      v110 = *(v109 + 1);
      v111 = *(v109 + 2);

      v112 = *(v109 + 4);

      v113 = sub_22BBE6DE0(&qword_27D8E2EE0, &qword_22BDBD750);
      v114 = v113[16];
      v115 = &v109[v113[20]];
      v116 = *(v115 + 1);
      v117 = &v109[v113[24]];
      if (!v116)
      {
        sub_22BB3FDD8();
        v284 = v1[70];

        type metadata accessor for RuntimeError();
        sub_22BB31C10();
        sub_22BC9D714(v285, v286);
        v287 = sub_22BB38D10();
        sub_22BB51330(v287, v288);
        swift_storeEnumTagMultiPayload();
        sub_22BB6C6D4();

        v289 = sub_22BB2F324();
        (v633)(v289);
        v290 = sub_22BDBA5C4();
        sub_22BB31F70(v290);
        (*(v291 + 8))(&v109[v114]);
        goto LABEL_91;
      }

      v638 = *(v117 + 1);
      v648 = v113[16];
      v118 = *v115;
      v119 = *v117;
      v120 = v1[43];
      v121 = v1[40];
      sub_22BB31F54();
      sub_22BD80EEC(v655, v122);

      v123 = sub_22BB3A840();
      if (sub_22BB3AA28(v123, v124, v120) == 1)
      {
        v125 = v1[73];
        v126 = v1[71];
        v127 = v1[70];
        sub_22BB325EC(v1[40], &qword_27D8E2F80, &qword_22BDC0600);
        sub_22BBDB89C();
        sub_22BB35AA4();
        sub_22BC9D714(v128, v129);
        v130 = sub_22BB38D10();
        sub_22BB51330(v130, v131);
        *v132 = v118;
        v132[1] = v116;
        swift_storeEnumTagMultiPayload();
        sub_22BB6C6D4();

        v133 = sub_22BB32E04();
        (v633)(v133);
        v134 = sub_22BDBA5C4();
        sub_22BB31F70(v134);
        (*(v135 + 8))(&v109[v648]);
        goto LABEL_91;
      }

      v617 = v109;
      v627 = v119;
      v604 = v33;
      v581 = v1[64];
      v303 = v1[46];
      v305 = v1[43];
      v304 = v1[44];
      v306 = v1[40];
      v307 = v1[27];
      v660 = v1[26];
      v308 = v1[24];
      v590 = v1[23];
      v309 = v1[21];
      v310 = v1[22];
      logb = v1[20];

      (*(v304 + 32))(v303, v306, v305);
      sub_22BDB94F4();
      sub_22BDB8C94();
      (*(v309 + 8))(v310, logb);
      sub_22BDB63F4();
      v311 = *(v308 + 16);
      v311(v660, v307, v590);
      v312 = v311;
      v313 = sub_22BDB77C4();
      v314 = sub_22BDBB134();
      v315 = os_log_type_enabled(v313, v314);
      v316 = v1[64];
      v317 = v1[60];
      v318 = v1[26];
      v552 = v312;
      if (v315)
      {
        logc = v1[59];
        v319 = v1[24];
        v320 = v1[25];
        v321 = v1[23];
        v322 = sub_22BB31AD8();
        v559 = v316;
        v323 = swift_slowAlloc();
        v664[0] = v323;
        *v322 = 136315138;
        v324 = sub_22BB331D4();
        (v312)(v324);
        v325 = sub_22BDBAC14();
        v326 = v314;
        v328 = v327;
        v329 = sub_22BB394C8();
        v591 = v330;
        v330(v329, v321);
        v331 = sub_22BB32EE0(v325, v328, v664);

        *(v322 + 4) = v331;
        _os_log_impl(&dword_22BB2C000, v313, v326, "ToolExecution: Choosing value: %s", v322, 0xCu);
        sub_22BB32FA4(v323);
        sub_22BB2F368();
        MEMORY[0x2318A6080]();
        sub_22BB2F368();
        MEMORY[0x2318A6080]();

        v332 = v559;
        v333 = logc;
      }

      else
      {
        v402 = v1[23];
        v403 = v1[24];

        v404 = sub_22BB394C8();
        v591 = v405;
        v405(v404, v402);
        v332 = sub_22BB33728();
      }

      v604(v332, v333);
      v607 = v1[73];
      v565 = v1[71];
      logf = v1[70];
      v406 = v1[44];
      v555 = v1[43];
      v560 = v1[46];
      v407 = v1[27];
      v409 = v1[23];
      v408 = v1[24];
      v410 = v1[18];
      v411 = v1[19];
      v412 = v1[17];
      v413 = v1[4];
      v549 = v1[5];
      sub_22BBE6DE0(qword_27D8E2550, &unk_22BDBCC10);
      v414 = *(v408 + 72);
      v415 = (*(v408 + 80) + 32) & ~*(v408 + 80);
      v416 = swift_allocObject();
      *(v416 + 16) = xmmword_22BDBCBD0;
      v552(v416 + v415, v407, v409);
      *v411 = v416;
      v417 = *MEMORY[0x277D72098];
      sub_22BB379E4();
      v418(v411);
      v627(v411, v413, v549);

      (*(v410 + 8))(v411, v412);
      v591(v407, v409);
      (*(v406 + 8))(v560, v555);
      v633(v607, logf);
      v419 = sub_22BDBA5C4();
      sub_22BB31F70(v419);
      (*(v420 + 8))(&v617[v648]);
      goto LABEL_66;
    case 4u:
      v72 = v1[56];

      v73 = v72 + *(sub_22BBE6DE0(&qword_27D8E2EC8, &qword_22BDBD730) + 48);
      if ((v622 & 1) == 0)
      {
        sub_22BB3FDD8();
        v251 = v1[70];
        v252 = v1[56];
        sub_22BBDB89C();
        sub_22BB35AA4();
        sub_22BC9D714(v253, v254);
        sub_22BB38D10();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v255 = sub_22BB345A8();
        (v633)(v255);
        sub_22BB37238();
        sub_22BC9D3D4(v252, v256);
        goto LABEL_91;
      }

      v600 = v33;
      v647 = *v73;
      v656 = *(v73 + 8);
      v74 = v1[63];
      sub_22BDB63F4();
      v75 = sub_22BDB77C4();
      v76 = sub_22BDBB134();
      if (sub_22BB3FCAC(v76))
      {
        sub_22BB2F114();
        v77 = swift_slowAlloc();
        sub_22BB3E4A8(v77);
        sub_22BB5420C();
        _os_log_impl(v78, v79, v80, v81, v82, 2u);
        sub_22BB2F368();
        MEMORY[0x2318A6080]();
      }

      sub_22BB3ACE8();
      v83 = v1[63];
      v85 = v1[59];
      v84 = v1[60];
      v637 = v1[56];
      v87 = v1[15];
      v86 = v1[16];
      v88 = v1[14];
      v89 = v1[4];
      v90 = v1[5];

      v91 = sub_22BB32E04();
      v600(v91);
      (*(v87 + 104))(v86, *MEMORY[0x277D731B0], v88);
      v92 = sub_22BB30AE4();
      v647(v92);

      (*(v87 + 8))(v86, v88);
      v93 = sub_22BB53C54();
      v94(v93);
      sub_22BB37238();
      v96 = v637;
LABEL_41:
      sub_22BC9D3D4(v96, v95);
      goto LABEL_66;
    case 5u:
      v192 = v33;
      v193 = v1[56];
      v194 = v1[43];
      v195 = v1[39];
      v196 = *(v193 + 1);
      v197 = *(v193 + 2);

      v198 = *(v193 + 3);
      v199 = *(v193 + 4);
      v200 = sub_22BBE6DE0(&qword_27D8E2EC0, &qword_22BDBD720);
      v201 = v200[16];
      v641 = v200[20];
      v202 = *&v193[v200[24] + 8];

      v203 = *&v193[v200[28] + 8];

      v204 = &v193[v200[32]];
      v205 = *(v204 + 1);
      v624 = *v204;
      sub_22BB2F3F0();
      sub_22BD80EEC(v655, v206);
      sub_22BB36B74(v195);
      v651 = v201;
      if (v107)
      {
        v207 = v1[73];
        v208 = v1[71];
        v209 = v1[70];
        v210 = v1[39];
        v211 = v1;
        v212 = v1[24];
        v615 = v207;
        v625 = v211[23];

        sub_22BB325EC(v210, &qword_27D8E2F80, &qword_22BDC0600);
        type metadata accessor for DialogResponseError(0);
        sub_22BB35AA4();
        sub_22BC9D714(v213, v214);
        sub_22BB369E0();
        swift_allocError();
        *v215 = v198;
        v215[1] = v199;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v216 = (v633)(v615, v209);
        sub_22BB71F1C(v216, &qword_27D8E2928, &qword_22BDBCFA0);
        v217 = *(v212 + 8);
        v218 = sub_22BB313D4();
        v219(v218);
        v1 = v211;
        goto LABEL_91;
      }

      v261 = v1[36];
      v262 = v1[10];
      (*(v1[44] + 32))(v1[45], v1[39], v1[43]);
      sub_22BDB94C4();
      v263 = sub_22BB36B68();
      v265 = sub_22BB3AA28(v263, v264, v262);
      if (v265 == 1)
      {
        sub_22BB3ACE8();
        v603 = v266;
        v616 = v267;
        v268 = v1[44];
        v269 = v1[45];
        v270 = v1;
        v271 = v1[43];
        v272 = v270[36];
        v273 = v270[24];
        v626 = v270[23];

        sub_22BB325EC(v272, &qword_27D8E2F78, &unk_22BDBD980);
        type metadata accessor for DialogResponseError(0);
        sub_22BB35AA4();
        sub_22BC9D714(v274, v275);
        sub_22BB369E0();
        swift_allocError();
        v277 = sub_22BBC7F68(v276, v268);
        v278(v277);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v279 = v271;
        v1 = v270;
        (*(v268 + 8))(v269, v279);
        v280 = (v633)(v616, v603);
        sub_22BB71F1C(v280, &qword_27D8E2928, &qword_22BDBCFA0);
        v281 = *(v273 + 8);
        v282 = sub_22BB313D4();
        v283(v282);
        goto LABEL_91;
      }

      v344 = v1[12];
      v345 = v1[11];
      (*(v345 + 32))(v1[13], v1[36], v1[10]);
      v346 = *(v345 + 16);
      v347 = sub_22BB31F54();
      v348(v347);
      v349 = *(v345 + 88);
      v350 = sub_22BB31B54();
      v352 = v351(v350);
      if (v352 == *MEMORY[0x277D1CAF0])
      {
        v605 = v1[73];
        v582 = v1[71];
        v592 = v1[70];
        v353 = v1[44];
        v354 = v1[45];
        v355 = v1;
        v356 = v1[43];
        v357 = v355[24];
        v628 = v355[23];
        logd = v355[13];
        v358 = v355[11];
        v564 = v355[10];

        sub_22BBDB89C();
        sub_22BB35AA4();
        sub_22BC9D714(v359, v360);
        sub_22BB38D10();
        v362 = sub_22BBC7F68(v361, v353);
        v363(v362);
        sub_22BB2F3F0();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        (*(v358 + 8))(logd, v564);
        v364 = v356;
        v1 = v355;
        (*(v353 + 8))(v354, v364);
        v365 = sub_22BB58694();
        v367 = v366(v365);
        sub_22BB71F1C(v367, &qword_27D8E2928, &qword_22BDBCFA0);
        v368 = *(v357 + 8);
        v369 = sub_22BB313D4();
        v370(v369);
        goto LABEL_91;
      }

      if (v352 == *MEMORY[0x277D1CB00])
      {
        v463 = v1[61];

        sub_22BDB63F4();
        v464 = sub_22BDB77C4();
        v465 = sub_22BDBB134();
        if (sub_22BB34888(v465))
        {
          sub_22BB2F114();
          v466 = swift_slowAlloc();
          *v466 = 0;
          _os_log_impl(&dword_22BB2C000, v464, v465, "ToolExecution: Accepting parameter confirmation prompt", v466, 2u);
          sub_22BB2F368();
          MEMORY[0x2318A6080]();
        }

        v468 = v1[60];
        v467 = v1[61];
        v469 = v1[59];

        v470 = sub_22BB30AE4();
        v192(v470);
        v471 = MEMORY[0x277D731B0];
      }

      else
      {
        if (v352 != *MEMORY[0x277D1CAF8])
        {
          v521 = v1[10];

          return sub_22BDBB6C4();
        }

        v471 = MEMORY[0x277D731A0];
      }

      v610 = v1[73];
      v586 = v1[71];
      v596 = v1[70];
      v478 = v1[44];
      v567 = v1[43];
      logh = v1[45];
      v479 = v1[24];
      v663 = v1[23];
      v480 = v1[15];
      v481 = v1[16];
      v482 = v1[14];
      v483 = v1[11];
      v557 = v1[10];
      v562 = v1[13];
      v485 = v1[4];
      v484 = v1[5];
      v486 = *v471;
      sub_22BB379E4();
      v487(v481);
      v488 = sub_22BB331D4();
      v624(v488);

      v489 = *(v480 + 8);
      v490 = sub_22BB39744();
      v491(v490);
      (*(v483 + 8))(v562, v557);
      (*(v478 + 8))(logh, v567);
      v492 = sub_22BB58694();
      v494 = v493(v492);
      sub_22BB71F1C(v494, &qword_27D8E2928, &qword_22BDBCFA0);
      (*(v479 + 8))(&v193[v651], v663);
      goto LABEL_66;
    case 6u:
      v652 = v1[73];
      v220 = v1[71];
      v221 = v1[70];
      v222 = v1[56];
      v223 = v1[8];
      v224 = v1[9];
      v225 = v1[7];
      v227 = v1[4];
      v226 = v1[5];

      v228 = v222[1];
      v229 = v222[2];
      v230 = v222[3];

      v231 = *MEMORY[0x277D731C0];
      sub_22BB379E4();
      v232(v224);
      v233 = sub_22BB39744();
      v229(v233);

      v234 = *(v223 + 8);
      v235 = sub_22BB331D4();
      v236(v235);
      v184 = v652;
      v183 = v221;
      goto LABEL_38;
    case 7u:
      v136 = v1[56];

      v137 = *(v136 + 8);
      v138 = *(v136 + 16);

      v139 = sub_22BBE6DE0(&qword_27D8E2EA0, &unk_22BDC05E0);
      v140 = v139[12];
      sub_22BB37CAC(v139[16]);

      sub_22BB37CAC(v139[20]);

      v141 = v136 + v139[24];
      if (v622)
      {
        v649 = *(v141 + 8);
        v657 = v140;
        v601 = v33;
        v639 = *v141;
        v142 = v1[62];
        sub_22BDB63F4();
        v143 = sub_22BDB77C4();
        v144 = sub_22BDBB134();
        if (sub_22BB3FCAC(v144))
        {
          sub_22BB2F114();
          v145 = swift_slowAlloc();
          sub_22BB3E4A8(v145);
          sub_22BB5420C();
          _os_log_impl(v146, v147, v148, v149, v150, 2u);
          sub_22BB2F368();
          MEMORY[0x2318A6080]();
        }

        sub_22BB3ACE8();
        v151 = v1[62];
        v153 = v1[59];
        v152 = v1[60];
        v154 = v1[15];
        v155 = v1[16];
        v156 = v1[14];
        v157 = v1[6];
        loga = v1[4];
        v580 = v1[5];

        v158 = sub_22BB32E04();
        v601(v158);
        *(v157 + qword_28142F460) = 1;
        (*(v154 + 104))(v155, *MEMORY[0x277D731B0], v156);
        v639(v155, loga, v580);

        (*(v154 + 8))(v155, v156);
        v159 = sub_22BB53C54();
        v160(v159);
        v104 = v136 + v657;
LABEL_25:
        sub_22BB325EC(v104, &qword_27D8E2928, &qword_22BDBCFA0);
        goto LABEL_66;
      }

      sub_22BB3FDD8();
      v257 = v1[70];
      sub_22BBDB89C();
      sub_22BB35AA4();
      sub_22BC9D714(v258, v259);
      sub_22BB38D10();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v260 = sub_22BB345A8();
      (v633)(v260);
      sub_22BB325EC(v136 + v140, &qword_27D8E2928, &qword_22BDBCFA0);
LABEL_91:
      v510 = v1[73];
      v511 = v1[72];
      v512 = v1[69];
      v513 = v1;
      v514 = v1[68];
      v515 = v513[67];
      v516 = v513[66];
      v517 = v513[65];
      v518 = v513[63];
      v519 = v513[64];
      v520 = v513[62];
      v522 = v513[61];
      v524 = v513[58];
      v526 = v513[57];
      v528 = v513[56];
      v530 = v513[51];
      v532 = v513[48];
      v534 = v513[47];
      v536 = v513[46];
      v538 = v513[45];
      v540 = v513[42];
      v542 = v513[41];
      v544 = v513[40];
      v546 = v513[39];
      v548 = v513[38];
      v551 = v513[37];
      v554 = v513[36];
      v558 = v513[35];
      v563 = v513[32];
      v568 = v513[30];
      logi = v513[27];
      v587 = v513[26];
      v597 = v513[25];
      v611 = v513[22];
      v621 = v513[19];
      v632 = v513[16];
      v635 = v513[13];
      v644 = v513[12];
      v654 = v513[9];

      sub_22BB2F09C();
      goto LABEL_92;
    case 8u:
      sub_22BB3349C();
      v243 = v1[56];
      sub_22BB8D238();
      v244();

      v245 = *(v243 + *(sub_22BBE6DE0(&qword_27D8E2E90, &qword_22BDBD6D0) + 48) + 8);

      sub_22BB3650C();
      v96 = v243;
      goto LABEL_41;
    case 9u:
      sub_22BB3349C();
      v97 = v1[56];
      sub_22BB8D238();
      v98();

      v99 = *(v97 + 8);
      v100 = *(v97 + 16);

      v101 = sub_22BBE6DE0(&qword_27D8E2EB8, &qword_22BDBD710);
      v102 = *(v101 + 48);
      v103 = *(v97 + *(v101 + 64) + 8);

      v104 = v97 + v102;
      goto LABEL_25;
    case 0xAu:
    case 0xCu:
      sub_22BB3349C();
      v68 = v1[55];
      v67 = v1[56];
      v69 = v1[54];
      sub_22BB8D238();
      v70();

      v71 = sub_22BB2F324();
      v62(v71);
      goto LABEL_66;
    case 0xBu:
      sub_22BB3349C();
      v237 = v1[56];
      v239 = v1[52];
      v238 = v1[53];
      sub_22BB8D238();
      v240();

      sub_22BB36A38();
      v241 = type metadata accessor for TypedValueExecutionResult();
      sub_22BB31F70(v241);
      (*(v242 + 8))(v237);
      goto LABEL_66;
    default:
      v602 = v33;
      v161 = v1[67];
      v162 = v1[56];

      v164 = v162[1];
      v163 = v162[2];
      v165 = v162[4];
      v650 = v162[5];
      v658 = v162[6];

      sub_22BDB63F4();
      v166 = sub_22BDB77C4();
      v167 = sub_22BDBB114();
      if (sub_22BB3FCAC(v167))
      {
        sub_22BB2F114();
        v168 = swift_slowAlloc();
        sub_22BB3E4A8(v168);
        sub_22BB5420C();
        _os_log_impl(v169, v170, v171, v172, v173, 2u);
        sub_22BB2F368();
        MEMORY[0x2318A6080]();
      }

      v640 = v1[73];
      v614 = v1[71];
      v623 = v1[70];
      v174 = v1[67];
      v176 = v1[59];
      v175 = v1[60];
      v177 = v1[50];
      v178 = v1[51];
      v179 = v1[49];
      v180 = v1[4];
      v181 = v1[5];

      v182 = sub_22BB32E04();
      v602(v182);
      (*(v177 + 104))(v178, *MEMORY[0x277D722A8], v179);
      v650(v178, v180, v181);

      (*(v177 + 8))(v178, v179);
      v183 = v623;
      v184 = v640;
      goto LABEL_38;
  }
}

uint64_t sub_22BC9BD30@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v124 = a2;
  v4 = *v2;
  v5 = sub_22BBE6DE0(&qword_27D8E2928, &qword_22BDBCFA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  *&v122 = &v112 - v7;
  *&v120 = sub_22BDBA594();
  *&v119 = *(v120 - 8);
  v8 = *(v119 + 64);
  MEMORY[0x28223BE20](v120);
  v118 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BDBA5C4();
  v117 = *(v10 - 8);
  v11 = *(v117 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 80);
  v123 = v2;
  v15 = *(v4 + 96);
  v16 = type metadata accessor for ToolExecutionEvent();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v112 - v19;
  v21 = *(v17 + 16);
  *&v121 = a1;
  v21(&v112 - v19, a1, v16);
  v125 = v16;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v74 = *v20;
      v121 = *(v20 + 1);
      v122 = v74;
      v75 = *(v20 + 4);
      v76 = *(v20 + 5);
      v77 = swift_allocObject();
      v78 = v124;
      *(v77 + 16) = v123;
      *(v77 + 24) = *(v20 + 3);
      v79 = v121;
      *v78 = v122;
      v78[1] = v79;
      *(v78 + 4) = v75;
      *(v78 + 5) = v76;
      *(v78 + 6) = sub_22BC9D638;
      *(v78 + 7) = v77;
      goto LABEL_16;
    case 2u:
      v34 = *v20;
      v121 = *(v20 + 1);
      v122 = v34;
      v35 = *(v20 + 4);
      v36 = *(v20 + 5);
      v37 = swift_allocObject();
      v38 = v124;
      *(v37 + 16) = v123;
      *(v37 + 24) = *(v20 + 3);
      v39 = v121;
      *v38 = v122;
      v38[1] = v39;
      *(v38 + 4) = v35;
      *(v38 + 5) = v36;
      *(v38 + 6) = sub_22BC9D5F0;
      *(v38 + 7) = v37;
      goto LABEL_16;
    case 3u:
      v40 = *(v20 + 4);
      v41 = sub_22BBE6DE0(&qword_27D8E2EE0, &qword_22BDBD750);
      v42 = v41[16];
      v43 = &v20[v41[20]];
      v44 = *v43;
      v45 = *(v43 + 1);
      v46 = v41[24];
      v47 = *(v117 + 32);
      v48 = *v20;
      v120 = *(v20 + 1);
      v121 = v48;
      v122 = *&v20[v46];
      v47(v13, &v20[v42], v10);
      v49 = v41[16];
      v50 = v124;
      v51 = (v124 + v41[20]);
      v52 = (v124 + v41[24]);
      v53 = v120;
      *v124 = v121;
      v50[1] = v53;
      *(v50 + 4) = v40;
      v47(v50 + v49, v13, v10);
      *v51 = v44;
      v51[1] = v45;
      v54 = swift_allocObject();
      *(v54 + 16) = v123;
      *(v54 + 24) = v122;
      *v52 = sub_22BC9D5A8;
      v52[1] = v54;
      goto LABEL_16;
    case 4u:
      v23 = *(sub_22BBE6DE0(&qword_27D8E2EC8, &qword_22BDBD730) + 48);
      v24 = (v124 + v23);
      v122 = *&v20[v23];
      sub_22BC9D54C(v20, v124, type metadata accessor for ActionConfirmationDialogRequest);
      v25 = swift_allocObject();
      *(v25 + 16) = v123;
      *(v25 + 24) = v122;
      *v24 = sub_22BC9D4D8;
      v24[1] = v25;
      goto LABEL_16;
    case 5u:
      v115 = *(v20 + 4);
      v80 = sub_22BBE6DE0(&qword_27D8E2EC0, &qword_22BDBD720);
      v81 = v80[16];
      v82 = v80[20];
      v83 = &v20[v80[24]];
      v84 = *v83;
      v116 = *(v83 + 1);
      v117 = v84;
      v85 = &v20[v80[28]];
      v86 = *v85;
      v113 = *(v85 + 1);
      v114 = v86;
      v87 = v80[32];
      v88 = v118;
      v89 = *(v119 + 32);
      v90 = *(v20 + 1);
      v119 = *v20;
      v112 = v90;
      v121 = *&v20[v87];
      v91 = v120;
      v89(v118, &v20[v81], v120);
      v92 = v122;
      sub_22BB6BEE0(&v20[v82], v122, &qword_27D8E2928, &qword_22BDBCFA0);
      v93 = v80[16];
      v94 = v80[20];
      v95 = v124;
      v96 = (v124 + v80[24]);
      v97 = (v124 + v80[28]);
      v98 = (v124 + v80[32]);
      v99 = v112;
      *v124 = v119;
      v95[1] = v99;
      *(v95 + 4) = v115;
      v89(v95 + v93, v88, v91);
      sub_22BB6BEE0(v92, v95 + v94, &qword_27D8E2928, &qword_22BDBCFA0);
      v100 = v116;
      *v96 = v117;
      v96[1] = v100;
      v101 = v113;
      *v97 = v114;
      v97[1] = v101;
      v102 = swift_allocObject();
      *(v102 + 16) = v123;
      *(v102 + 24) = v121;
      *v98 = sub_22BC9D4D8;
      v98[1] = v102;
      goto LABEL_16;
    case 6u:
      v103 = *v20;
      v104 = *(v20 + 1);
      v105 = swift_allocObject();
      v106 = v124;
      *(v105 + 16) = v123;
      *(v105 + 24) = *(v20 + 1);
      *v106 = v103;
      v106[1] = v104;
      v106[2] = sub_22BC9D508;
      v106[3] = v105;
      goto LABEL_16;
    case 7u:
      v120 = *v20;
      *&v119 = *(v20 + 2);
      v55 = sub_22BBE6DE0(&qword_27D8E2EA0, &unk_22BDC05E0);
      v56 = v55[12];
      v57 = &v20[v55[16]];
      v58 = *v57;
      v59 = *(v57 + 1);
      v60 = &v20[v55[20]];
      v61 = *v60;
      v62 = *(v60 + 1);
      v121 = *&v20[v55[24]];
      v63 = v122;
      sub_22BB6BEE0(&v20[v56], v122, &qword_27D8E2928, &qword_22BDBCFA0);
      v64 = v55[12];
      v65 = v124;
      v66 = (v124 + v55[16]);
      v67 = (v124 + v55[20]);
      v68 = (v124 + v55[24]);
      *v124 = v120;
      *(v65 + 2) = v119;
      sub_22BB6BEE0(v63, v65 + v64, &qword_27D8E2928, &qword_22BDBCFA0);
      *v66 = v58;
      v66[1] = v59;
      *v67 = v61;
      v67[1] = v62;
      v69 = swift_allocObject();
      *(v69 + 16) = v123;
      *(v69 + 24) = v121;
      *v68 = sub_22BC9D4D8;
      v68[1] = v69;
      goto LABEL_16;
    case 8u:
      v109 = *(sub_22BBE6DE0(&qword_27D8E2E90, &qword_22BDBD6D0) + 48);
      v110 = (v124 + v109);
      v122 = *&v20[v109];
      sub_22BC9D54C(v20, v124, type metadata accessor for FollowUpActionRequest);
      v111 = swift_allocObject();
      *(v111 + 16) = v123;
      *(v111 + 24) = v122;
      *v110 = sub_22BC9D494;
      v110[1] = v111;
      goto LABEL_16;
    case 9u:
      v120 = *v20;
      v26 = *(v20 + 2);
      v27 = sub_22BBE6DE0(&qword_27D8E2EB8, &qword_22BDBD710);
      v28 = *(v27 + 48);
      v121 = *&v20[*(v27 + 64)];
      v29 = v122;
      sub_22BB6BEE0(&v20[v28], v122, &qword_27D8E2928, &qword_22BDBCFA0);
      v30 = *(v27 + 48);
      v31 = v124;
      v32 = (v124 + *(v27 + 64));
      *v124 = v120;
      *(v31 + 2) = v26;
      sub_22BB6BEE0(v29, v31 + v30, &qword_27D8E2928, &qword_22BDBCFA0);
      v33 = swift_allocObject();
      *(v33 + 16) = v123;
      *(v33 + 24) = v121;
      *v32 = sub_22BC9D450;
      v32[1] = v33;
      goto LABEL_16;
    case 0xAu:
    case 0xCu:
      v22 = v125;
      (*(v17 + 8))(v20, v125);
      goto LABEL_14;
    case 0xBu:
      v107 = type metadata accessor for TypedValueExecutionResult();
      (*(*(v107 - 8) + 8))(v20, v107);
      v22 = v125;
LABEL_14:
      result = (v21)(v124, v121, v22);
      break;
    default:
      v70 = *(v20 + 4);
      v71 = swift_allocObject();
      v72 = v124;
      *(v71 + 16) = v123;
      *(v71 + 24) = *(v20 + 40);
      v73 = *(v20 + 1);
      *v72 = *v20;
      v72[1] = v73;
      *(v72 + 4) = v70;
      *(v72 + 5) = sub_22BC9D680;
      *(v72 + 6) = v71;
LABEL_16:
      swift_storeEnumTagMultiPayload();

      break;
  }

  return result;
}

uint64_t sub_22BC9C70C(uint64_t a1)
{
  v3 = sub_22BB30444(a1);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  sub_22BB33230();
  (*(v5 + 16))(v1);
  sub_22BB31F54();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 3u:
      v14 = *(v1 + 1);
      v15 = *(v1 + 2);

      v16 = *(v1 + 4);

      v17 = sub_22BBE6DE0(&qword_27D8E2EE0, &qword_22BDBD750);
      v18 = sub_22BB3518C(v17);
      sub_22BB37CAC(*(v18 + 80));

      sub_22BB37CAC(v15[24]);

      v19 = sub_22BDBA5C4();
      goto LABEL_10;
    case 4u:
      v29 = sub_22BBE6DE0(&qword_27D8E2EC8, &qword_22BDBD730);
      sub_22BB37CAC(*(v29 + 48));

      v30 = type metadata accessor for ActionConfirmationDialogRequest;
      goto LABEL_14;
    case 5u:
      v31 = *(v1 + 1);
      v32 = *(v1 + 2);

      v33 = *(v1 + 4);

      v34 = sub_22BBE6DE0(&qword_27D8E2EC0, &qword_22BDBD720);
      v35 = sub_22BB3518C(v34);
      v36 = *(v35 + 80);
      sub_22BB37CAC(*(v35 + 96));

      sub_22BB37CAC(v32[28]);

      sub_22BB37CAC(v32[32]);

      sub_22BB325EC(&v1[v36], &qword_27D8E2928, &qword_22BDBCFA0);
      v19 = sub_22BDBA594();
LABEL_10:
      sub_22BB31F70(v19);
      (*(v37 + 8))(&v1[v5]);
      goto LABEL_15;
    case 7u:
      v25 = *(v1 + 1);
      v26 = *(v1 + 2);

      v27 = sub_22BBE6DE0(&qword_27D8E2EA0, &unk_22BDC05E0);
      v28 = v27[12];
      sub_22BB37CAC(v27[16]);

      sub_22BB37CAC(v27[20]);

      sub_22BB37CAC(v27[24]);

      v24 = &v1[v28];
      goto LABEL_7;
    case 8u:
      v43 = sub_22BBE6DE0(&qword_27D8E2E90, &qword_22BDBD6D0);
      sub_22BB37CAC(*(v43 + 48));

      v30 = type metadata accessor for FollowUpActionRequest;
LABEL_14:
      sub_22BC9D3D4(v1, v30);
      goto LABEL_15;
    case 9u:
      v20 = *(v1 + 1);
      v21 = *(v1 + 2);

      v22 = sub_22BBE6DE0(&qword_27D8E2EB8, &qword_22BDBD710);
      v23 = *(v22 + 48);
      sub_22BB37CAC(*(v22 + 64));

      v24 = &v1[v23];
LABEL_7:
      sub_22BB325EC(v24, &qword_27D8E2928, &qword_22BDBCFA0);
      goto LABEL_15;
    case 0xAu:
    case 0xCu:
      v11 = *(v5 + 8);
      v12 = sub_22BB31F54();
      v13(v12);
      goto LABEL_12;
    case 0xBu:
      v38 = *(a1 + 16);
      v39 = *(a1 + 24);
      v40 = type metadata accessor for TypedValueExecutionResult();
      sub_22BB31F70(v40);
      (*(v41 + 8))(v1);
LABEL_12:
      result = 0;
      break;
    default:
      v8 = *(v5 + 8);
      v9 = sub_22BB31F54();
      v10(v9);
LABEL_15:
      result = 1;
      break;
  }

  return result;
}

uint64_t sub_22BC9CA50(uint64_t a1, uint64_t a2, void (*a3)(char *, char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v33 = a4;
  v34 = a3;
  v32 = a2;
  v11 = *(*v6 + 80);
  v12 = *(*v6 + 96);
  v35 = type metadata accessor for ToolExecutionEvent();
  v13 = sub_22BDBB254();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v31 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v21 = *(TupleTypeMetadata2 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v24 = &v30 - v23;
  (*(*(a5 - 8) + 16))(&v30 - v23, a1, a5);
  v25 = *(TupleTypeMetadata2 + 48);
  (*(*(a6 - 8) + 16))(&v24[v25], v32, a6);
  v26 = *(*v7 + 112);
  swift_beginAccess();
  (*(v14 + 16))(v19, v7 + v26, v13);
  LODWORD(a6) = sub_22BB3AA28(v19, 1, v35);
  v27 = *(v14 + 8);
  v32 = v13;
  v27(v19, v13);
  if (a6 == 1)
  {
    result = sub_22BDBB4D4();
    __break(1u);
  }

  else
  {
    v34(v24, &v24[v25]);
    (*(v21 + 8))(v24, TupleTypeMetadata2);
    v28 = v31;
    sub_22BB336D0(v31, 1, 1, v35);
    swift_beginAccess();
    (*(v14 + 40))(v7 + v26, v28, v32);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_22BC9CDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, void (*a9)(char *, char *))
{
  v14[0] = a2;
  v14[1] = a3;
  v13[2] = a5;
  v13[3] = a6;
  v10 = sub_22BBE6DE0(a7, a8);
  v11 = sub_22BBE6DE0(&qword_27D8E2E70, &unk_22BDC05F0);
  return sub_22BC9CA50(a1, v14, a9, v13, v10, v11);
}

uint64_t sub_22BC9CE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), void (*a8)(char *, char *))
{
  v14[0] = a2;
  v14[1] = a3;
  v13[2] = a5;
  v13[3] = a6;
  v10 = a7(0);
  v11 = sub_22BBE6DE0(&qword_27D8E2E70, &unk_22BDC05F0);
  return sub_22BC9CA50(a1, v14, a8, v13, v10, v11);
}

uint64_t *sub_22BC9CEC8()
{
  v1 = *v0;
  sub_22BC96D00(0, 0);
  v2 = *(*v0 + 112);
  v3 = *(v1 + 80);
  v4 = *(v1 + 96);
  type metadata accessor for ToolExecutionEvent();
  v5 = sub_22BDBB254();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  return v0;
}

uint64_t sub_22BC9CF80()
{
  v0 = sub_22BC9CEC8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22BC9CFD4()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 96);
  v4 = type metadata accessor for ToolExecutionEvent();
  sub_22BB336D0(v0 + v1, 1, 1, v4);
  return v0;
}

uint64_t *sub_22BC9D050()
{
  v1 = *v0;
  v2 = qword_28142DA98;
  v3 = sub_22BDB8E14();
  sub_22BB31F70(v3);
  (*(v4 + 8))(v0 + v2);
  sub_22BB325EC(v0 + qword_28142F458, &qword_27D8E3A80, &qword_22BDC0608);
  v5 = *(v0 + qword_28142DAB0);

  sub_22BB325EC(v0 + qword_28142DAA0, &qword_27D8E2530, &qword_22BDBCBF0);
  sub_22BB325EC(v0 + qword_28142DAA8, &qword_27D8E2B40, &unk_22BDBD9B0);
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 168));
  v6 = *(*v0 + 184);
  v7 = sub_22BDB43E4();
  sub_22BB31F70(v7);
  (*(v8 + 8))(v0 + v6);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22BC9D1BC()
{
  sub_22BC9D050();

  return MEMORY[0x282200960](v0);
}

void sub_22BC9D1E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_22BB358DC();
    v4 = sub_22BDBB254();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22BC9D258(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 96);
  type metadata accessor for ToolExecutionEvent();
  result = sub_22BDBB254();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_22BC9D33C()
{
  sub_22BC9D1E8(319, &qword_2814288F0, MEMORY[0x277D72DC0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_22BC9D3D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BB31F70(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BC9D54C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_22BB2F330(v4);
  v6 = *(v5 + 32);
  v7 = sub_22BB31F54();
  v8(v7);
  return a2;
}

uint64_t sub_22BC9D6C4(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a1, *a2, a2[1]);
}

uint64_t sub_22BC9D714(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22BC9D758()
{
  result = qword_27D8E3A88;
  if (!qword_27D8E3A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3A88);
  }

  return result;
}

uint64_t sub_22BC9D7C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_22BBE6DE0(&qword_27D8E3A90, &qword_22BDC0610);
  result = sub_22BDBB314();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_22BDBB814();

    sub_22BDBAC54();
    result = sub_22BDBB834();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22BC9D9E4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_22BC9DFE8(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_22BC9DB10(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v59 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v50 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;

    v15 = 0;
    v52 = v12;
    v53 = v7;
    v54 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        v20 = *(v5 + 40);
        sub_22BDBB814();

        sub_22BDBAC54();
        v21 = sub_22BDBB834();
        v22 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v21 & v22;
          v4 = (v21 & v22) >> 6;
          v8 = 1 << (v21 & v22);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v23 = (*(v5 + 48) + 16 * v7);
          v24 = *v23 == v3 && v23[1] == v2;
          if (v24 || (sub_22BDBB6D4() & 1) != 0)
          {
            v56 = v50;
            v57 = v16;
            v58 = v11;
            v3 = v53;
            v12 = v54;
            v55[0] = v54;
            v55[1] = v53;

            v26 = *(v5 + 32);
            v47 = ((1 << v26) + 63) >> 6;
            v2 = 8 * v47;
            if ((v26 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v48 = &v46;
              MEMORY[0x28223BE20](v25);
              v7 = &v46 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v27 = *(v7 + 8 * v4) & ~v8;
              v28 = *(v5 + 16);
              v51 = v7;
              *(v7 + 8 * v4) = v27;
              v29 = v28 - 1;
              v30 = v52;
              while (1)
              {
                v49 = v29;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v32 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v33 = (*(v12 + 48) + ((v16 << 10) | (16 * v32)));
                v2 = *v33;
                v34 = v33[1];
                v35 = *(v5 + 40);
                sub_22BDBB814();

                sub_22BDBAC54();
                v36 = sub_22BDBB834();
                v37 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v36 & v37;
                  v7 = (v36 & v37) >> 6;
                  v8 = 1 << (v36 & v37);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v53;
                    v12 = v54;
                    v30 = v52;
                    goto LABEL_24;
                  }

                  v38 = (*(v5 + 48) + 16 * v4);
                  if (*v38 == v2 && v38[1] == v34)
                  {
                    break;
                  }

                  v40 = sub_22BDBB6D4();
                  v36 = v4 + 1;
                }

                while ((v40 & 1) == 0);

                v41 = v51[v7];
                v51[v7] = v41 & ~v8;
                v3 = v53;
                v12 = v54;
                v30 = v52;
                if ((v41 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v29 = v49 - 1;
                if (__OFSUB__(v49, 1))
                {
                  __break(1u);
                }

                if (v49 == 1)
                {

                  v5 = MEMORY[0x277D84FA0];
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v31 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v31 >= v30)
                {
                  v5 = sub_22BC9D7C8(v51, v47, v49, v5);
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v31);
                ++v16;
                if (v11)
                {
                  v16 = v31;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v44 = swift_slowAlloc();
            v45 = sub_22BC9E2FC(v44, v47, (v5 + 56), v47, v5, v7, v55);

            MEMORY[0x2318A6080](v44, -1, -1);
            v50 = v56;
            v5 = v45;
            goto LABEL_44;
          }

          v21 = v7 + 1;
        }

        v15 = v16;
        v7 = v53;
        v14 = v54;
        v12 = v52;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    sub_22BBCD888();
  }

  else
  {

    v5 = MEMORY[0x277D84FA0];
  }

  v42 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_22BC9DFE8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_22BDBB814();
  sub_22BDBAC54();
  v7 = sub_22BDBB834();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_22BDBB6D4() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22BD2D290();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_22BC9E384(v9);
  *v2 = v19;
  return v16;
}

uint64_t sub_22BC9E110(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v27 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    v16 = *(a3 + 40);
    sub_22BDBB814();

    sub_22BDBAC54();
    v17 = sub_22BDBB834();
    v18 = ~(-1 << *(a3 + 32));
    do
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = 1 << (v17 & v18);
      if ((v21 & *(v9 + 8 * v20)) == 0)
      {

        goto LABEL_3;
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 == v15 && v22[1] == v14)
      {
        break;
      }

      v24 = sub_22BDBB6D4();
      v17 = v19 + 1;
    }

    while ((v24 & 1) == 0);

    v25 = v28[v20];
    v28[v20] = v25 & ~v21;
    if ((v25 & v21) == 0)
    {
      goto LABEL_3;
    }

    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_23;
    }

    if (v27 == 1)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_22BC9D7C8(v28, a2, v27, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_22BC9E2FC(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_22BC9E110(a1, a2, a5, a6, a7);

  return v12;
}

unint64_t sub_22BC9E384(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_22BDBB2D4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_22BDBB814();

        sub_22BDBAC54();
        v15 = sub_22BDBB834();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_22BC9E554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_22BB2F330(v4);
  v6 = *(v5 + 16);
  v7 = sub_22BB31F54();
  v8(v7);
  return a2;
}

void sub_22BC9E5B0(uint64_t a1)
{
  sub_22BC9F160();
  if (v2 <= 0x3F)
  {
    sub_22BC9F1F4();
    if (v3 <= 0x3F)
    {
      sub_22BC9F5E4(319, &qword_27D8E3B48, type metadata accessor for ActionConfirmationDialogRequest);
      if (v4 <= 0x3F)
      {
        sub_22BC9F31C();
        if (v5 <= 0x3F)
        {
          sub_22BC72D30();
          if (v6 <= 0x3F)
          {
            v7 = *(a1 + 16);
            v8 = *(a1 + 32);
            type metadata accessor for TypedValueExecutionResult();
            sub_22BBEB2E0(&qword_27D8E2530, &qword_22BDBCBF0);
            sub_22BBEB2E0(&qword_27D8E2B40, &unk_22BDBD9B0);
            swift_getTupleTypeMetadata3();
            if (v9 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22BC9E6F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(sub_22BDBA5C4() - 8);
  v5 = ((*(v4 + 64) + ((*(v4 + 80) + 40) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v6 = *(sub_22BDBA694() - 8);
  v7 = *(v6 + 80);
  v45 = (v7 + 24) & ~v7;
  v43 = *(v6 + 84);
  v42 = *(v6 + 64);
  v8 = *(sub_22BDB54C4() - 8);
  v9 = *(v8 + 80);
  v40 = *(v8 + 84);
  v41 = *(v8 + 64);
  v10 = *(sub_22BDBA594() - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(*(*(a3 + 16) - 8) + 84);
  v44 = *(*(*(a3 + 16) - 8) + 64);
  v14 = *(sub_22BDB43E4() - 8);
  v15 = *(v14 + 80);
  v16 = *(v14 + 64);
  v17 = *(sub_22BDBA044() - 8);
  v18 = *(v17 + 80);
  v19 = *(v17 + 64);
  v20 = *(sub_22BBE6DE0(&qword_27D8E2E68, &unk_22BDBD5D0) - 8);
  v22 = v41;
  v21 = v42;
  if (!v43)
  {
    v21 = v42 + 1;
  }

  v23 = v45 + v21;
  if (!v40)
  {
    v22 = v41 + 1;
  }

  v24 = v22 + ((((((v45 + v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9) + 2;
  if (v5 > v24)
  {
    v24 = v5;
  }

  v25 = ((((v21 + ((v12 + v7 + ((v11 + 40) & ~v11)) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v24 > v25)
  {
    v25 = v24;
  }

  v26 = *(v20 + 80);
  v27 = v26 | 7;
  v28 = (*(v20 + 64) + ((v26 + 16) & ~v26) + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = v44;
  if (!v13)
  {
    v29 = v44 + 1;
  }

  v30 = (((((v7 | 7) + v19 + ((((((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v18 + ((v29 + (v15 & 0xF8 | 7)) & ~(v15 & 0xF8 | 7)) + 24) & ~v18) + 1) & ~(v7 | 7)) + v23 + v27) & ~v27) + v28 + 8;
  if (v25 > v30)
  {
    v30 = v25;
  }

  v31 = 48;
  if (v30 > 0x30)
  {
    v31 = v30;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_34;
  }

  v32 = v31 + 1;
  v33 = 8 * (v31 + 1);
  if ((v31 + 1) <= 3)
  {
    v36 = ((a2 + ~(-1 << v33) - 249) >> v33) + 1;
    if (HIWORD(v36))
    {
      v34 = *(a1 + v32);
      if (!v34)
      {
        goto LABEL_34;
      }

      goto LABEL_26;
    }

    if (v36 > 0xFF)
    {
      v34 = *(a1 + v32);
      if (!*(a1 + v32))
      {
        goto LABEL_34;
      }

      goto LABEL_26;
    }

    if (v36 < 2)
    {
LABEL_34:
      v38 = *(a1 + v31);
      if (v38 >= 7)
      {
        return (v38 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v34 = *(a1 + v32);
  if (!*(a1 + v32))
  {
    goto LABEL_34;
  }

LABEL_26:
  v37 = (v34 - 1) << v33;
  if (v32 > 3)
  {
    v37 = 0;
  }

  if (v32)
  {
    if (v32 > 3)
    {
      LODWORD(v32) = 4;
    }

    switch(v32)
    {
      case 2:
        LODWORD(v32) = *a1;
        break;
      case 3:
        LODWORD(v32) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v32) = *a1;
        break;
      default:
        LODWORD(v32) = *a1;
        break;
    }
  }

  return (v32 | v37) + 250;
}

void sub_22BC9EBE8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(sub_22BDBA5C4() - 8);
  v6 = ((*(v5 + 64) + ((*(v5 + 80) + 40) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = *(sub_22BDBA694() - 8);
  v8 = *(v7 + 80);
  v47 = (v8 + 24) & ~v8;
  v45 = *(v7 + 84);
  v44 = *(v7 + 64);
  v9 = *(sub_22BDB54C4() - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 84);
  v43 = *(v9 + 64);
  v12 = *(sub_22BDBA594() - 8);
  v13 = *(v12 + 80);
  v14 = *(v12 + 64);
  v42 = *(*(*(a4 + 16) - 8) + 84);
  v46 = *(*(*(a4 + 16) - 8) + 64);
  v15 = *(sub_22BDB43E4() - 8);
  v16 = *(v15 + 80);
  v17 = *(v15 + 64);
  v18 = *(sub_22BDBA044() - 8);
  v19 = *(v18 + 80);
  v20 = *(v18 + 64);
  v21 = *(sub_22BBE6DE0(&qword_27D8E2E68, &unk_22BDBD5D0) - 8);
  v23 = v43;
  v22 = v44;
  if (!v45)
  {
    v22 = v44 + 1;
  }

  v24 = v47 + v22;
  if (!v11)
  {
    v23 = v43 + 1;
  }

  v25 = v23 + ((((((v47 + v22 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10) + 2;
  if (v6 > v25)
  {
    v25 = v6;
  }

  v26 = ((((v22 + ((v14 + v8 + ((v13 + 40) & ~v13)) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v25 > v26)
  {
    v26 = v25;
  }

  v27 = *(v21 + 80);
  v28 = v27 | 7;
  v29 = (*(v21 + 64) + ((v27 + 16) & ~v27) + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = v46;
  if (!v42)
  {
    v30 = v46 + 1;
  }

  v31 = (((((v8 | 7) + v20 + ((((((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v19 + ((v30 + (v16 & 0xF8 | 7)) & ~(v16 & 0xF8 | 7)) + 24) & ~v19) + 1) & ~(v8 | 7)) + v24 + v28) & ~v28) + v29 + 8;
  if (v26 > v31)
  {
    v31 = v26;
  }

  if (v31 <= 0x30)
  {
    v31 = 48;
  }

  v32 = v31 + 1;
  v33 = 8 * (v31 + 1);
  if (a3 < 0xFA)
  {
    v36 = 0;
    v34 = a1;
    v35 = a2;
  }

  else
  {
    v34 = a1;
    v35 = a2;
    if (v32 <= 3)
    {
      v39 = ((a3 + ~(-1 << v33) - 249) >> v33) + 1;
      if (HIWORD(v39))
      {
        v36 = 4;
      }

      else
      {
        if (v39 < 0x100)
        {
          v40 = 1;
        }

        else
        {
          v40 = 2;
        }

        if (v39 >= 2)
        {
          v36 = v40;
        }

        else
        {
          v36 = 0;
        }
      }
    }

    else
    {
      v36 = 1;
    }
  }

  if (v35 > 0xF9)
  {
    v37 = v35 - 250;
    if (v32 < 4)
    {
      v38 = (v37 >> v33) + 1;
      if (v31 != -1)
      {
        v41 = v37 & ~(-1 << v33);
        bzero(v34, v32);
        if (v32 == 3)
        {
          *v34 = v41;
          v34[2] = BYTE2(v41);
        }

        else if (v32 == 2)
        {
          *v34 = v41;
        }

        else
        {
          *v34 = v37;
        }
      }
    }

    else
    {
      bzero(v34, v31 + 1);
      *v34 = v37;
      v38 = 1;
    }

    switch(v36)
    {
      case 1:
        v34[v32] = v38;
        break;
      case 2:
        *&v34[v32] = v38;
        break;
      case 3:
LABEL_49:
        __break(1u);
        break;
      case 4:
        *&v34[v32] = v38;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v36)
    {
      case 1:
        v34[v32] = 0;
        if (!v35)
        {
          return;
        }

        goto LABEL_38;
      case 2:
        *&v34[v32] = 0;
        goto LABEL_37;
      case 3:
        goto LABEL_49;
      case 4:
        *&v34[v32] = 0;
        if (!v35)
        {
          return;
        }

        goto LABEL_38;
      default:
LABEL_37:
        if (v35)
        {
LABEL_38:
          v34[v31] = -v35;
        }

        break;
    }
  }
}

void sub_22BC9F160()
{
  if (!qword_27D8E3B38)
  {
    sub_22BBEB2E0(&qword_27D8E2E80, qword_22BDC0650);
    sub_22BBEB2E0(&qword_27D8E2E70, &unk_22BDC05F0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27D8E3B38);
    }
  }
}

void sub_22BC9F1F4()
{
  if (!qword_27D8E3B40)
  {
    MEMORY[0x28223BE20](0);
    sub_22BBEB2E0(&qword_27D8E2E70, &unk_22BDC05F0);
    sub_22BDBA5C4();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27D8E3B40);
    }
  }
}

void sub_22BC9F31C()
{
  if (!qword_27D8E3B50)
  {
    MEMORY[0x28223BE20](0);
    sub_22BDBA594();
    sub_22BBEB2E0(&qword_27D8E2928, &qword_22BDBCFA0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27D8E3B50);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ToolExecutionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_22BC9F540()
{
  sub_22BC9F5E4(319, &qword_27D8E3B68, MEMORY[0x277D1E5B0]);
  if (v0 <= 0x3F)
  {
    sub_22BC9F630();
    if (v1 <= 0x3F)
    {
      sub_22BC9F69C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_22BC9F5E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22BC9F630()
{
  if (!qword_27D8E3B70)
  {
    sub_22BDB9504();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D8E3B70);
    }
  }
}

uint64_t sub_22BC9F69C()
{
  result = qword_27D8E3B78;
  if (!qword_27D8E3B78)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27D8E3B78);
  }

  return result;
}

unint64_t sub_22BC9F714()
{
  result = qword_27D8E3B80;
  if (!qword_27D8E3B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3B80);
  }

  return result;
}

unint64_t sub_22BC9F768()
{
  result = qword_27D8E3B90;
  if (!qword_27D8E3B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3B90);
  }

  return result;
}

void sub_22BC9F7C4()
{
  v2 = v0[79];
  v3 = v0[74];
  *(v1 - 104) = v0[73];
  *(v1 - 96) = v2;
}

uint64_t sub_22BC9F7EC(__n128 a1)
{
  *(v2 - 104) = a1;
  *(v2 - 88) = v1;
  type metadata accessor for ToolExecution.DialogState();

  return sub_22BC924C0();
}

uint64_t ToolInvocationSummaryInput.toolInvocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22BDBA044();
  v4 = sub_22BB2F330(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t sub_22BC9F89C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F766E496C6F6F74 && a2 == 0xEE006E6F69746163)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22BDBB6D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BC9F944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BC9F89C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BC9F970(uint64_t a1)
{
  v2 = sub_22BC9FB0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BC9F9AC(uint64_t a1)
{
  v2 = sub_22BC9FB0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ToolInvocationSummaryInput.encode(to:)(void *a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E3BA8, &qword_22BDC0850);
  sub_22BB30444(v2);
  v4 = *(v3 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  v6 = a1[4];
  sub_22BB69FEC(a1, a1[3]);
  sub_22BC9FB0C();
  sub_22BB38D30();
  sub_22BDBA044();
  sub_22BB33C7C();
  sub_22BCA0304(v7, v8);
  sub_22BB32728();
  v9 = sub_22BB3620C();
  return v10(v9);
}

unint64_t sub_22BC9FB0C()
{
  result = qword_27D8E3BB0;
  if (!qword_27D8E3BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3BB0);
  }

  return result;
}

uint64_t ToolInvocationSummaryInput.init(from:)@<X0>(uint64_t a1@<X8>)
{
  sub_22BB310A8(a1);
  v3 = sub_22BDBA044();
  v4 = sub_22BB30444(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v7 = sub_22BBE6DE0(&qword_27D8E3BB8, &qword_22BDC0858);
  sub_22BB30444(v7);
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BB3A5CC();
  v12 = type metadata accessor for ToolInvocationSummaryInput(v11);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_22BB30574();
  v16 = v15 - v14;
  v17 = v1[4];
  sub_22BB69FEC(v1, v1[3]);
  sub_22BC9FB0C();
  sub_22BB376EC();
  if (!v2)
  {
    sub_22BB33C7C();
    sub_22BCA0304(v18, v19);
    sub_22BB31C28();
    v20 = sub_22BB30CBC();
    v21(v20);
    v22 = sub_22BB3569C();
    v23(v22);
    sub_22BCA034C(v16, v25, type metadata accessor for ToolInvocationSummaryInput);
  }

  return sub_22BB32FA4(v1);
}

uint64_t sub_22BC9FDC4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  v6 = sub_22BB2F330(v5);
  v8 = *(v7 + 32);

  return v8(a3, a1, v6);
}

uint64_t sub_22BC9FE2C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000022BDD2700 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22BDBB6D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BC9FECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BC9FE2C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BC9FEF8(uint64_t a1)
{
  v2 = sub_22BCA0094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BC9FF34(uint64_t a1)
{
  v2 = sub_22BCA0094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ToolInvocationSummaryOutput.encode(to:)(void *a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E3BC0, &qword_22BDC0860);
  sub_22BB30444(v2);
  v4 = *(v3 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  v6 = a1[4];
  sub_22BB69FEC(a1, a1[3]);
  sub_22BCA0094();
  sub_22BB38D30();
  sub_22BDB5014();
  sub_22BB30778();
  sub_22BCA0304(v7, v8);
  sub_22BB32728();
  v9 = sub_22BB3620C();
  return v10(v9);
}

unint64_t sub_22BCA0094()
{
  result = qword_27D8E3BC8;
  if (!qword_27D8E3BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3BC8);
  }

  return result;
}

uint64_t ToolInvocationSummaryOutput.init(from:)@<X0>(uint64_t a1@<X8>)
{
  sub_22BB310A8(a1);
  v3 = sub_22BDB5014();
  v4 = sub_22BB30444(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v7 = sub_22BBE6DE0(&qword_27D8E3BD8, &qword_22BDC0868);
  sub_22BB30444(v7);
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BB3A5CC();
  v12 = type metadata accessor for ToolInvocationSummaryOutput(v11);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_22BB30574();
  v16 = v15 - v14;
  v17 = v1[4];
  sub_22BB69FEC(v1, v1[3]);
  sub_22BCA0094();
  sub_22BB376EC();
  if (!v2)
  {
    sub_22BB30778();
    sub_22BCA0304(v18, v19);
    sub_22BB31C28();
    v20 = sub_22BB30CBC();
    v21(v20);
    v22 = sub_22BB3569C();
    v23(v22);
    sub_22BCA034C(v16, v25, type metadata accessor for ToolInvocationSummaryOutput);
  }

  return sub_22BB32FA4(v1);
}

uint64_t sub_22BCA0304(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BCA034C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22BB2F330(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22BCA045C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_22BCA04DC(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BCA058C()
{
  result = qword_27D8E3C08;
  if (!qword_27D8E3C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3C08);
  }

  return result;
}

unint64_t sub_22BCA05E4()
{
  result = qword_27D8E3C10;
  if (!qword_27D8E3C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3C10);
  }

  return result;
}

unint64_t sub_22BCA063C()
{
  result = qword_27D8E3C18;
  if (!qword_27D8E3C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3C18);
  }

  return result;
}

unint64_t sub_22BCA0694()
{
  result = qword_27D8E3C20;
  if (!qword_27D8E3C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3C20);
  }

  return result;
}

unint64_t sub_22BCA06EC()
{
  result = qword_27D8E3C28;
  if (!qword_27D8E3C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3C28);
  }

  return result;
}

unint64_t sub_22BCA0744()
{
  result = qword_27D8E3C30;
  if (!qword_27D8E3C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E3C30);
  }

  return result;
}

uint64_t sub_22BCA07B0()
{
  result = sub_22BDB5664();
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

unint64_t sub_22BCA0844()
{
  result = qword_281429C88;
  if (!qword_281429C88)
  {
    type metadata accessor for CurareFSServiceSubscriber();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281429C88);
  }

  return result;
}

void sub_22BCA08B0()
{
  sub_22BCA094C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22BCA094C()
{
  if (!qword_281428940)
  {
    sub_22BDB9C64();
    v0 = sub_22BDB9E34();
    if (!v1)
    {
      atomic_store(v0, &qword_281428940);
    }
  }
}

uint64_t sub_22BCA09FC()
{
  v10 = sub_22BDBB174();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22BDBB154();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_22BDBAA44();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_22BB6ECB0();
  sub_22BDBAA24();
  v11 = MEMORY[0x277D84F90];
  sub_22BCA1FA8(&unk_281428780, MEMORY[0x277D85230]);
  sub_22BBE6DE0(&qword_27D8E3C48, &unk_22BDC0CD0);
  sub_22BB6B854(&qword_2814287E0, &qword_27D8E3C48, &unk_22BDC0CD0);
  sub_22BDBB2B4();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_22BDBB1A4();
  qword_27D906308 = result;
  return result;
}

uint64_t sub_22BCA0C4C()
{
  v0 = sub_22BDB8774();
  v1 = sub_22BB30444(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  v8 = v7 - v6;
  v9 = sub_22BDB77D4();
  v10 = sub_22BB30444(v9);
  v28 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB30574();
  v16 = v15 - v14;
  sub_22BDB6384();

  v17 = sub_22BDB77C4();
  v18 = sub_22BDBB104();

  if (os_log_type_enabled(v17, v18))
  {
    v27 = v9;
    v19 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v29 = v26;
    *v19 = 136315138;
    v20 = sub_22BDB9C34();
    v22 = v3;
    v23 = v0;
    v24 = sub_22BB32EE0(v20, v21, &v29);

    *(v19 + 4) = v24;
    v0 = v23;
    v3 = v22;
    _os_log_impl(&dword_22BB2C000, v17, v18, "InteractionStoreServiceSubscriber received event: %s", v19, 0xCu);
    sub_22BB32FA4(v26);
    sub_22BB30AF0();
    sub_22BB30AF0();

    (*(v28 + 8))(v16, v27);
  }

  else
  {

    (*(v28 + 8))(v16, v9);
  }

  sub_22BDB9C44();
  if ((*(v3 + 88))(v8, v0) == *MEMORY[0x277D1DE98])
  {
    sub_22BCA0EF8();
  }

  else
  {
    (*(v3 + 8))(v8, v0);
  }

  return sub_22BDB9E14();
}

uint64_t sub_22BCA0EF8()
{
  v1 = sub_22BDBAA14();
  v2 = sub_22BB30444(v1);
  v45 = v3;
  v46 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v42 = v7 - v6;
  v8 = sub_22BDBAA44();
  v9 = sub_22BB30444(v8);
  v43 = v10;
  v44 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v15 = v14 - v13;
  v16 = sub_22BDBAA04();
  v17 = sub_22BB30444(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BB30574();
  v24 = (v23 - v22);
  v25 = sub_22BDBAA64();
  v26 = sub_22BB30444(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v26);
  v33 = v41 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = v41 - v34;
  if (qword_27D8E22A0 != -1)
  {
    swift_once();
  }

  v41[1] = qword_27D906308;
  sub_22BDBAA54();
  *v24 = 60;
  (*(v19 + 104))(v24, *MEMORY[0x277D85188], v16);
  MEMORY[0x2318A4A40](v33, v24);
  (*(v19 + 8))(v24, v16);
  v36 = *(v28 + 8);
  v36(v33, v25);
  aBlock[4] = sub_22BCA1E84;
  aBlock[5] = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22BB682A4;
  aBlock[3] = &unk_283F763A8;
  v37 = _Block_copy(aBlock);

  sub_22BDBAA34();
  v47 = MEMORY[0x277D84F90];
  sub_22BCA1FA8(&qword_2814288E8, MEMORY[0x277D85198]);
  sub_22BBE6DE0(&qword_27D8E3C50, &unk_22BDC0D90);
  sub_22BB6B854(&qword_2814287F0, &qword_27D8E3C50, &unk_22BDC0D90);
  v38 = v42;
  v39 = v46;
  sub_22BDBB2B4();
  MEMORY[0x2318A5130](v35, v15, v38, v37);
  _Block_release(v37);
  (*(v45 + 8))(v38, v39);
  (*(v43 + 8))(v15, v44);
  v36(v35, v25);
}

uint64_t sub_22BCA1328(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_22BDB77D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6384();
  v11 = sub_22BDB77C4();
  v12 = sub_22BDBB104();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_22BB2C000, v11, v12, "Start the postInteractionEngagement collection", v13, 2u);
    MEMORY[0x2318A6080](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v14 = sub_22BDBAEF4();
  sub_22BB336D0(v5, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;

  sub_22BCA18E4(0, 0, v5, &unk_22BDC0DA8, v15);

  return sub_22BCA1F40(v5);
}

uint64_t sub_22BCA152C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_22BDB77D4();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BCA15EC, 0, 0);
}

uint64_t sub_22BCA15EC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC23IntelligenceFlowRuntime33InteractionStoreServiceSubscriber_pseCollector);
  v2 = *(MEMORY[0x277D3E918] + 4);
  v5 = (*MEMORY[0x277D3E918] + MEMORY[0x277D3E918]);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_22BCA169C;

  return v5();
}

uint64_t sub_22BCA169C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 40);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22BCA17E8, 0, 0);
  }
}

uint64_t sub_22BCA17E8()
{
  v1 = v0[5];
  sub_22BDB6384();
  v2 = sub_22BDB77C4();
  v3 = sub_22BDBB104();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22BB2C000, v2, v3, "Completed PSE data collection", v4, 2u);
    sub_22BB30AF0();
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_22BCA18E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  sub_22BBB5584(a3, v23 - v10);
  v12 = sub_22BDBAEF4();
  v13 = sub_22BB3AA28(v11, 1, v12);

  if (v13 == 1)
  {
    sub_22BCA1F40(v11);
  }

  else
  {
    sub_22BDBAEE4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22BDBAE44();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22BDBAC24() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = sub_22BB32B90();

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return sub_22BB32B90();
}

uint64_t sub_22BCA1AF4()
{
  v0 = sub_22BDB77D4();
  v1 = sub_22BB30444(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  v8 = v7 - v6;
  sub_22BDB6384();
  v9 = sub_22BDB77C4();
  v10 = sub_22BDBB104();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    sub_22BBE6DE0(&qword_27D8E3C38, &unk_22BDC0C20);
    v13 = sub_22BDBAC14();
    v15 = sub_22BB32EE0(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_22BB2C000, v9, v10, "InteractionStoreServiceSubscriber received completion: %s", v11, 0xCu);
    sub_22BB32FA4(v12);
    sub_22BB30AF0();
    sub_22BB30AF0();
  }

  return (*(v3 + 8))(v8, v0);
}

uint64_t sub_22BCA1C94()
{
  sub_22BB6B8A8(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime33InteractionStoreServiceSubscriber_id);
  v1 = *(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime33InteractionStoreServiceSubscriber_pseCollector);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t type metadata accessor for InteractionStoreServiceSubscriber()
{
  result = qword_27D8E3C68;
  if (!qword_27D8E3C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BCA1D5C()
{
  result = sub_22BDB5664();
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

uint64_t sub_22BCA1DF8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  return sub_22BCA0C4C();
}

uint64_t sub_22BCA1E8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22BB6A0B4;

  return sub_22BCA152C(a1, v4, v5, v6);
}

uint64_t sub_22BCA1F40(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BCA1FA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BCA1FF8()
{
  result = sub_22BDB5664();
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

unint64_t sub_22BCA20A4()
{
  result = qword_281429950;
  if (!qword_281429950)
  {
    type metadata accessor for TaskStepLoggingSubscriber();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281429950);
  }

  return result;
}

uint64_t sub_22BCA20FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v9);
  v11 = *(v10 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v12);
  v14 = v29 - v13;
  sub_22BBB5584(a3, v29 - v13);
  v15 = sub_22BDBAEF4();
  v16 = sub_22BB3AA28(v14, 1, v15);

  if (v16 == 1)
  {
    sub_22BB6B75C(v14, &qword_27D8E2978, &qword_22BDBD020);
  }

  else
  {
    sub_22BDBAEE4();
    sub_22BB30474(v15);
    (*(v17 + 8))(v14, v15);
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v20 = sub_22BDBAE44();
    v22 = v21;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23 = sub_22BDBAC24() + 32;
      sub_22BB322B0();
      v24 = swift_allocObject();
      *(v24 + 16) = a4;
      *(v24 + 24) = a5;

      if (v22 | v20)
      {
        v30[0] = 0;
        v30[1] = 0;
        v25 = v30;
        v30[2] = v20;
        v30[3] = v22;
      }

      else
      {
        v25 = 0;
      }

      v29[1] = 7;
      v29[2] = v25;
      v29[3] = v23;
      v27 = swift_task_create();

      sub_22BB6B75C(a3, &qword_27D8E2978, &qword_22BDBD020);

      return v27;
    }
  }

  else
  {
    v20 = 0;
    v22 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22BB6B75C(a3, &qword_27D8E2978, &qword_22BDBD020);
  sub_22BB322B0();
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  if (v22 | v20)
  {
    v30[4] = 0;
    v30[5] = 0;
    v30[6] = v20;
    v30[7] = v22;
  }

  return swift_task_create();
}

uint64_t sub_22BCA23BC()
{
  v1 = *v0;
  sub_22BB32BB0();
  sub_22BB6E87C(v2, v3);
  return sub_22BDB9F04();
}

uint64_t sub_22BCA2448()
{
  result = sub_22BDB5664();
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

uint64_t sub_22BCA24F4(uint64_t a1)
{
  v3 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v3);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  sub_22BDBAED4();
  v9 = sub_22BDBAEF4();
  sub_22BB336D0(v8, 0, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = v1;

  sub_22BCA20FC(0, 0, v8, &unk_22BDC0FA0, v10);
}

uint64_t sub_22BCA25E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_22BDB8774();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = sub_22BDB77D4();
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BCA2700, 0, 0);
}

uint64_t sub_22BCA2700()
{
  v27 = v0;
  v1 = v0[10];
  v2 = v0[3];
  sub_22BDB6384();

  v3 = sub_22BDB77C4();
  v4 = sub_22BDBB104();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];
  if (v5)
  {
    v10 = v0[6];
    v9 = v0[7];
    v23 = v0[5];
    v25 = v0[10];
    v11 = v0[3];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    sub_22BDB9C44();
    v14 = sub_22BDB8764();
    v24 = v8;
    v16 = v15;
    (*(v10 + 8))(v9, v23);
    v17 = sub_22BB32EE0(v14, v16, &v26);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_22BB2C000, v3, v4, "Sending async ODP event %s", v12, 0xCu);
    sub_22BB32FA4(v13);
    sub_22BB30AF0();
    sub_22BB30AF0();

    (*(v7 + 8))(v25, v24);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v18 = v0[10];
  v19 = v0[7];
  v20 = *(v0[4] + 16);
  v0[2] = v0[3];
  sub_22BDB9EB4();

  v21 = v0[1];

  return v21();
}

uint64_t sub_22BCA28EC()
{
  v1 = sub_22BDB77D4();
  v2 = sub_22BB30444(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  sub_22BB36220();
  v7 = sub_22BDB77C4();
  v8 = sub_22BDBB104();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_22BB37F30();
    *v9 = 0;
    _os_log_impl(&dword_22BB2C000, v7, v8, "Sending subscriptions is not supported (for now)", v9, 2u);
    sub_22BB30AF0();
  }

  return (*(v4 + 8))(v0, v1);
}

uint64_t sub_22BCA29F0(char a1)
{
  v2 = sub_22BDB77D4();
  v3 = sub_22BB30444(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v19[-v11];
  if (a1)
  {
    sub_22BDB6384();
    v13 = sub_22BDB77C4();
    v14 = sub_22BDBB104();
    if (!os_log_type_enabled(v13, v14))
    {
      v10 = v12;
      goto LABEL_8;
    }

    v15 = sub_22BB37F30();
    *v15 = 0;
    _os_log_impl(&dword_22BB2C000, v13, v14, "ODPEvent Publisher finished with .completed", v15, 2u);
    v10 = v12;
    goto LABEL_6;
  }

  sub_22BDB6384();
  v13 = sub_22BDB77C4();
  v16 = sub_22BDBB104();
  if (os_log_type_enabled(v13, v16))
  {
    v17 = sub_22BB37F30();
    *v17 = 0;
    _os_log_impl(&dword_22BB2C000, v13, v16, "ODPEvent Publisher finished with .failure", v17, 2u);
LABEL_6:
    sub_22BB30AF0();
  }

LABEL_8:

  (*(v5 + 8))(v10, v2);
  return sub_22BB37CB8();
}

uint64_t sub_22BCA2C24(uint64_t a1)
{
  v3 = *v1;
  sub_22BCA24F4(a1);
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_22BCA2CCC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = sub_22BB31BAC(v7);
  *v8 = v9;
  v8[1] = sub_22BB6A0B4;

  return sub_22BCA25E4(a1, v3, v4, v6, v5);
}

uint64_t sub_22BCA2D84()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_22BB31BAC(v3);
  *v4 = v5;
  v6 = sub_22BB31BBC(v4);

  return v7(v6);
}

uint64_t sub_22BCA2E58(void *a1)
{
  v1 = a1[4];
  sub_22BB69FEC(a1, a1[3]);
  return sub_22BDBB684();
}

uint64_t sub_22BCA2E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_22BDBB854();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BBE6DE0(&qword_27D8E3CA8, &qword_22BDC0FE8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = v24 - v13;
  v15 = *(a4 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = *(v15 + 16);
  v20(v24 - v21, a1, a4);
  sub_22BBE6DE0(&qword_27D8E3CB0, &qword_22BDC0FF0);
  if (swift_dynamicCast())
  {
    sub_22BB382E8(v24, v26);
    sub_22BB69FEC(v26, v26[3]);
    sub_22BDBB494();
    return sub_22BB32FA4(v26);
  }

  else
  {
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    sub_22BB6B75C(v24, &qword_27D8E3CB8, &qword_22BDC0FF8);
    v20(v19, a1, a4);
    v23 = sub_22BDBB844();
    sub_22BB336D0(v14, 1, 1, v23);
    sub_22BCA32DC(v9);
    return sub_22BDBB864();
  }
}

uint64_t sub_22BCA3110()
{
  v1 = *(v0 + 16);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = sub_22BDB9C64();
  v4 = MEMORY[0x277D84A98];

  return sub_22BCA2E98(v0 + v2, v3, v4, v1);
}

uint64_t sub_22BCA31A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = MEMORY[0x277D837D0];
  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_22BCA31C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_22BB69FEC(a1, a1[3]);
  result = sub_22BDBB684();
  a2[3] = MEMORY[0x277D837D0];
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_22BCA3224(void *a1)
{
  v1 = a1[4];
  sub_22BB69FEC(a1, a1[3]);
  return sub_22BDBB704();
}

uint64_t sub_22BCA327C(uint64_t result)
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
      sub_22BBE6DE0(&qword_27D8E3CC0, &qword_22BDC1000);
      result = sub_22BDBADC4();
      *(result + 16) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_22BCA32DC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D84C38];
  v3 = sub_22BDBB854();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22BCA3350(void *a1, void (*a2)(void))
{
  v4 = sub_22BDBB854();
  v5 = sub_22BB30444(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v12 = v11 - v10;
  v13 = sub_22BBE6DE0(&qword_27D8E3CA8, &qword_22BDC0FE8);
  sub_22BB2F0C8(v13);
  v15 = *(v14 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  v18 = v21 - v17;
  v21[1] = *a1;

  sub_22BCA327C(0);
  v19 = sub_22BDBB844();
  sub_22BB336D0(v18, 1, 1, v19);
  (*(v7 + 104))(v12, *MEMORY[0x277D84C38], v4);
  a2(0);
  return sub_22BDBB864();
}

void sub_22BCA358C()
{
  sub_22BB30F94();
  v149 = v2;
  v161 = v3;
  v159 = v4;
  v147 = v5;
  v6 = sub_22BBE6DE0(&qword_27D8E3D18, &unk_22BDC1070);
  sub_22BB2F0C8(v6);
  v8 = *(v7 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BB30BA8();
  v160 = v10;
  v11 = sub_22BBE6DE0(&qword_27D8E34D0, &qword_22BDBEF30);
  sub_22BB2F0C8(v11);
  v13 = *(v12 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v14);
  sub_22BB30BA8();
  v157 = v15;
  v16 = sub_22BBE6DE0(&qword_27D8E3D20, &unk_22BDC1080);
  sub_22BB2F0C8(v16);
  v18 = *(v17 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v19);
  sub_22BB30BA8();
  v151 = v20;
  sub_22BB2F120();
  v21 = sub_22BDB6664();
  v22 = sub_22BB30444(v21);
  v153 = v23;
  v154 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BB30574();
  v152 = v27 - v26;
  v28 = sub_22BBE6DE0(&qword_27D8E3D28, &unk_22BDCCD20);
  v29 = sub_22BB2F0C8(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BB30C74();
  v155 = v32 - v33;
  MEMORY[0x28223BE20](v34);
  sub_22BB30B8C(&v140[-v35]);
  v158 = sub_22BDB6714();
  v36 = sub_22BB30444(v158);
  v156 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22BB30574();
  v150 = v41 - v40;
  v42 = sub_22BBE6DE0(&qword_27D8E3D30, &unk_22BDC1090);
  sub_22BB2F0C8(v42);
  v44 = *(v43 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v45);
  sub_22BB30BA8();
  v143 = v46;
  v47 = sub_22BBE6DE0(&qword_27D8E3D38, &unk_22BDCCD30);
  sub_22BB2F0C8(v47);
  v49 = *(v48 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v50);
  sub_22BB30BA8();
  sub_22BB30B8C(v51);
  v142 = sub_22BDB6C84();
  v52 = sub_22BB30444(v142);
  v141 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22BB30574();
  sub_22BB31580();
  v56 = sub_22BBE6DE0(&qword_27D8E3D40, &unk_22BDC10A0);
  sub_22BB2F0C8(v56);
  v58 = *(v57 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v59);
  sub_22BB32750();
  v60 = sub_22BDB6A44();
  v61 = sub_22BB30444(v60);
  v63 = v62;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v61);
  sub_22BB30574();
  v68 = v67 - v66;
  v69 = sub_22BDB6D04();
  v70 = sub_22BB30444(v69);
  v163 = v71;
  v164 = v70;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v70);
  sub_22BB30574();
  v162 = v75 - v74;
  v76 = sub_22BBE6DE0(&qword_27D8E3DE0, &qword_22BDC1178);
  sub_22BB2F0C8(v76);
  v78 = *(v77 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v79);
  v81 = &v140[-v80];
  v82 = sub_22BDB6B54();
  v145 = v82;
  sub_22BB30418();
  v84 = v83;
  v146 = v83;
  v86 = *(v85 + 64);
  MEMORY[0x28223BE20](v87);
  sub_22BB30574();
  sub_22BB36858();
  sub_22BDB6B44();
  v88 = sub_22BDB6B24();
  sub_22BB2F330(v88);
  (*(v89 + 16))(v81, v147, v88);
  sub_22BB322E8();
  sub_22BB336D0(v90, v91, v92, v93);
  v144 = v0;
  sub_22BDB6B34();
  (*(v84 + 16))(v68, v0, v82);
  (*(v63 + 104))(v68, *MEMORY[0x277D1F860], v60);
  v94 = v162;
  sub_22BDB6CF4();
  sub_22BDB6CC4();
  v165 = v149;
  sub_22BB3ACFC();
  sub_22BB3B340();
  sub_22BB322E8();
  sub_22BB336D0(v95, v96, v97, v98);
  sub_22BDB6CD4();
  sub_22BDB6C74();
  v99 = *(v63 + 16);
  v100 = sub_22BB35F34();
  v101(v100, v68, v60);
  v102 = sub_22BB31C70();
  sub_22BB6BA80(v102, v103, v104, v60);
  sub_22BDB6A54();
  v105 = v141;
  v106 = *(v141 + 16);
  v107 = sub_22BB35F34();
  v108 = v142;
  v109(v107, v1, v142);
  v110 = sub_22BB31C70();
  sub_22BB6BA80(v110, v111, v112, v108);
  sub_22BDB6C94();
  (*(v105 + 8))(v1, v108);
  (*(v63 + 8))(v68, v60);
  v113 = v148;
  (*(v163 + 16))(v148, v94, v164);
  v114 = *MEMORY[0x277D1F700];
  v115 = sub_22BDB66E4();
  sub_22BB2F330(v115);
  (*(v116 + 104))(v113, v114, v115);
  sub_22BB322E8();
  sub_22BB336D0(v117, v118, v119, v120);
  v122 = v152;
  v121 = v153;
  v123 = v154;
  (*(v153 + 104))(v152, *MEMORY[0x277D1F6A8], v154);
  v124 = v150;
  sub_22BDB6704();
  sub_22BCA485C();
  sub_22BDB66C4();
  sub_22BB331C8();
  sub_22BB336D0(v125, v126, v127, v128);
  sub_22BDB66D4();
  sub_22BDB7604();
  sub_22BDB7614();
  v129 = sub_22BB31C70();
  sub_22BB6BA80(v129, v130, v131, v132);
  sub_22BDB6674();
  sub_22BB8AE8C(v113, v155, &qword_27D8E3D28, &unk_22BDCCD20);
  sub_22BDB66F4();
  v133 = sub_22BB38704(v121);
  v134(v133);
  sub_22BB331C8();
  sub_22BB336D0(v135, v136, v137, v123);
  sub_22BDB6684();
  (*(v121 + 8))(v122, v123);
  sub_22BB58728(v113, &qword_27D8E3D28, &unk_22BDCCD20);
  v138 = v161[3];
  v139 = v161[4];
  sub_22BB69FEC(v161, v138);
  (*(v139 + 8))(v124, v138, v139);
  (*(v156 + 8))(v124, v158);
  (*(v163 + 8))(v162, v164);
  (*(v146 + 8))(v144, v145);
  sub_22BB314EC();
}

void sub_22BCA3E68()
{
  sub_22BB30F94();
  v44 = v2;
  v4 = v3;
  v5 = sub_22BBE6DE0(&qword_27D8E3D58, &qword_22BDC10F0);
  sub_22BB2F0C8(v5);
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB36858();
  v9 = sub_22BBE6DE0(&qword_27D8E3D60, &qword_22BDC10F8);
  sub_22BB2F0C8(v9);
  v11 = *(v10 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v12);
  sub_22BB34298();
  v13 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v13);
  v15 = *(v14 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  sub_22BB2F484();
  v17 = sub_22BBE6DE0(&qword_27D8E34E0, &unk_22BDCE9E0);
  sub_22BB2F0C8(v17);
  v19 = *(v18 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v20);
  sub_22BB31580();
  sub_22BDB6AB4();
  v21 = sub_22BDB43E4();
  sub_22BB2F330(v21);
  (*(v22 + 16))(v1, v4, v21);
  sub_22BB322E8();
  sub_22BB336D0(v23, v24, v25, v26);
  sub_22BDB7674();
  v46 = v1;
  sub_22BB3ACFC();
  sub_22BB3B340();
  sub_22BB58728(v1, &qword_27D8E3218, &qword_22BDBE390);
  sub_22BB322E8();
  sub_22BB336D0(v27, v28, v29, v30);
  sub_22BDB6964();
  v31 = type metadata accessor for FeedbackLearning.TaskEvaluation(0);
  v32 = v4 + *(v31 + 20);
  sub_22BDB4C24();
  v47 = 0;
  sub_22BDB6A94();
  sub_22BCA4BE4();
  sub_22BDB6834();
  v33 = sub_22BB37710();
  sub_22BB336D0(v33, v34, v35, v36);
  sub_22BDB6A64();
  v37 = *(v4 + *(v31 + 28));
  v45[2] = v44;
  sub_22BD65560(sub_22BCA7840, v45, v37);
  sub_22BDB6AA4();
  v38 = *MEMORY[0x277D1F770];
  v39 = sub_22BDB67D4();
  sub_22BB2F330(v39);
  (*(v40 + 104))(v0, v38, v39);
  sub_22BB331C8();
  sub_22BB336D0(v41, v42, v43, v39);
  sub_22BDB6A84();
  sub_22BB314EC();
}

void sub_22BCA4138()
{
  sub_22BB30F94();
  v100 = v2;
  v4 = v3;
  v5 = sub_22BBE6DE0(&qword_27D8E3CE8, &qword_22BDC1048);
  sub_22BB2F0C8(v5);
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB30BA8();
  v97 = v9;
  sub_22BB2F120();
  v10 = sub_22BDB68A4();
  v11 = sub_22BB30444(v10);
  v98 = v12;
  v99 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v96 = v16 - v15;
  v17 = sub_22BBE6DE0(&qword_27D8E3CF0, &qword_22BDC1050);
  sub_22BB2F0C8(v17);
  v19 = *(v18 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v20);
  sub_22BB52928();
  v21 = sub_22BBE6DE0(&qword_27D8E3CF8, &unk_22BDC1058);
  sub_22BB2F0C8(v21);
  v23 = *(v22 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v24);
  sub_22BB2F484();
  v25 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  v26 = sub_22BB2F0C8(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BB30C74();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v95 - v33;
  v35 = sub_22BBE6DE0(&qword_27D8E34E0, &unk_22BDCE9E0);
  sub_22BB2F0C8(v35);
  v37 = *(v36 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v38);
  sub_22BB32750();
  v39 = sub_22BBE6DE0(&qword_27D8E6A80, &unk_22BDC0E70);
  v40 = sub_22BB2F0C8(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BB30C74();
  MEMORY[0x28223BE20](v43);
  v45 = &v95 - v44;
  sub_22BDB6BE4();
  v46 = [v4 absoluteTimestamp];
  if (v46)
  {
    v47 = v46;
    sub_22BDB4324();

    v48 = sub_22BDB4354();
    v49 = 0;
  }

  else
  {
    v48 = sub_22BDB4354();
    v49 = 1;
  }

  sub_22BB6BA80(v45, v49, 1, v48);
  sub_22BDB6B84();
  sub_22BDB4334();
  sub_22BDB4354();
  v50 = sub_22BB37710();
  sub_22BB336D0(v50, v51, v52, v48);
  sub_22BDB6B94();
  v53 = [v4 transcriptStatementId];
  if (v53)
  {
    v54 = v53;
    v55 = [v53 sessionId];

    if (v55)
    {
      sub_22BDB43C4();
    }

    v57 = sub_22BDB43E4();
    sub_22BB69234(v57);
    sub_22BCA6DCC(v31, v34);
  }

  else
  {
    v56 = sub_22BDB43E4();
    sub_22BB336D0(v34, 1, 1, v56);
  }

  v58 = sub_22BDB7674();
  MEMORY[0x28223BE20](v58);
  sub_22BB36D34();
  *(v59 - 16) = v34;
  sub_22BB3B340();
  sub_22BB58728(v34, &qword_27D8E3218, &qword_22BDBE390);
  sub_22BB322E8();
  sub_22BB336D0(v60, v61, v62, v63);
  sub_22BDB6B74();
  v64 = [v4 transcriptStatementId];
  v65 = v64;
  if (v64)
  {
    [v64 statementIndex];
  }

  v66 = v100;
  v101 = v65 == 0;
  sub_22BDB6BC4();
  v67 = [v4 trigger];
  v68 = MEMORY[0x277D1F8A0];
  v69 = MEMORY[0x277D1F8B0];
  if (v67 != 1)
  {
    v69 = MEMORY[0x277D1F8A8];
  }

  if (v67 != 2)
  {
    v68 = v69;
  }

  v70 = *v68;
  v71 = sub_22BDB6CA4();
  sub_22BB2F330(v71);
  (*(v72 + 104))(v1, v70, v71);
  sub_22BB331C8();
  sub_22BB336D0(v73, v74, v75, v71);
  sub_22BDB6BA4();
  v76 = [v4 tupleInteraction];
  if (v76)
  {
  }

  sub_22BDB6BB4();
  v77 = [v4 tupleInteraction];
  if (v77)
  {
    v78 = v77;
    v79 = v96;
    sub_22BDB6894();
    v80 = [v78 candidateIds];
    sub_22BBED848(0, &qword_27D8E3D08, 0x277CF11C8);
    sub_22BDBAD64();

    MEMORY[0x28223BE20](v81);
    sub_22BB36D34();
    *(v82 - 16) = v66;
    sub_22BCA7BE0();

    sub_22BDB6874();
    v83 = [v78 userAlignment];
    sub_22BCA6D48(v83, v97);
    sub_22BDB6A14();
    v84 = sub_22BB36558();
    sub_22BB336D0(v84, v85, v86, v87);
    sub_22BDB6884();

    (*(v98 + 32))(v0, v79, v99);
    sub_22BB322E8();
    sub_22BB336D0(v88, v89, v90, v91);
  }

  else
  {
    sub_22BB336D0(v0, 1, 1, v99);
  }

  sub_22BDB6BD4();
  v92 = [v4 candidateInteractions];
  sub_22BBED848(0, &qword_27D8E3D00, 0x277CF11D0);
  sub_22BDBAD64();

  MEMORY[0x28223BE20](v93);
  sub_22BB36D34();
  *(v94 - 16) = v66;
  sub_22BCA7E0C();

  sub_22BDB6B64();
  sub_22BB314EC();
}

uint64_t sub_22BCA485C()
{
  v0 = sub_22BBE6DE0(&qword_27D8E3D50, &unk_22BDC10B0);
  sub_22BB2F0C8(v0);
  v2 = *(v1 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v3);
  sub_22BB36858();
  v4 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v4);
  v6 = *(v5 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BDB66B4();
  sub_22BDB43D4();
  sub_22BDB43E4();
  v8 = sub_22BB31C70();
  sub_22BB6BA80(v8, v9, v10, v11);
  sub_22BDB66A4();
  sub_22BDB9A64();
  sub_22BDB6774();
  sub_22BB331C8();
  sub_22BB336D0(v12, v13, v14, v15);
  return sub_22BDB6694();
}

uint64_t sub_22BCA496C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB3B69C();
  v6 = sub_22BBE6DE0(v4, v5);
  sub_22BB2F0C8(v6);
  v8 = *(v7 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BB34298();
  v10 = sub_22BBE6DE0(&qword_27D8E34E0, &unk_22BDCE9E0);
  sub_22BB2F0C8(v10);
  v12 = *(v11 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v13);
  sub_22BB52928();
  v14 = sub_22BDB43E4();
  sub_22BB2F330(v14);
  (*(v15 + 16))(v2, a2, v14);
  v16 = sub_22BB37710();
  sub_22BB336D0(v16, v17, v18, v14);
  sub_22BDB7674();
  sub_22BDB76D4();
  sub_22BB58728(v2, &qword_27D8E3218, &qword_22BDBE390);
  sub_22BB322E8();
  sub_22BB336D0(v19, v20, v21, v22);
  return sub_22BDB6964();
}

uint64_t sub_22BCA4AE4(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_22BB8AE8C(a2, &v7 - v5, &qword_27D8E3218, &qword_22BDBE390);
  return sub_22BDB7654();
}

void sub_22BCA4BE4()
{
  sub_22BB30F94();
  v3 = v2;
  sub_22BB39128();
  v4 = sub_22BDB6904();
  v49 = sub_22BB30444(v4);
  v50 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  sub_22BB30574();
  sub_22BB36858();
  v8 = sub_22BBE6DE0(&qword_27D8E3D80, &qword_22BDC1118);
  sub_22BB2F0C8(v8);
  v10 = *(v9 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  sub_22BB34298();
  v12 = type metadata accessor for FeedbackLearning.TaskFinalResolutionState(0);
  v13 = sub_22BB2F0C8(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BB30574();
  sub_22BB36FD8();
  v16 = sub_22BBE6DE0(&qword_27D8E3D88, &unk_22BDC1120);
  sub_22BB2F0C8(v16);
  v18 = *(v17 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v19);
  v21 = v48 - v20;
  sub_22BDB6824();
  v22 = type metadata accessor for FeedbackLearning.TaskEvaluation(0);
  sub_22BCA786C(v3 + v22[8], v1, type metadata accessor for FeedbackLearning.TaskFinalResolutionState);
  v23 = sub_22BBE6DE0(&qword_27D8E3D90, &unk_22BDC2EE0);
  v24 = sub_22BB3AA28(v1, 1, v23);
  v25 = sub_22BDB69E4();
  sub_22BB2F330(v25);
  v27 = *(v26 + 104);
  if (v24 == 1)
  {
    v27(v21, *MEMORY[0x277D1F848], v25);
  }

  else
  {
    v27(v21, *MEMORY[0x277D1F850], v25);
    sub_22BB58728(v1, &qword_27D8E3D98, &qword_22BDC1130);
  }

  sub_22BB331C8();
  sub_22BB336D0(v28, v29, v30, v25);
  MEMORY[0x2318A07E0](v21);
  sub_22BCA54EC(v3 + v22[9]);
  sub_22BDB67C4();
  v31 = sub_22BB37710();
  sub_22BB336D0(v31, v32, v33, v34);
  sub_22BDB67F4();
  sub_22BCA56A4(*(v3 + v22[10]), *(v3 + v22[10] + 8), *(v3 + v22[10] + 16), *(v3 + v22[10] + 24));
  v36 = v35;
  v37 = *(v35 + 16);
  if (v37)
  {
    v51 = MEMORY[0x277D84F90];
    sub_22BD27BA8();
    v38 = v51;
    v48[1] = v36;
    v39 = (v36 + 56);
    v40 = v49;
    do
    {
      v41 = *(v39 - 1);
      v42 = *v39;
      v43 = *(v39 - 16);
      v44 = *(v39 - 24);

      sub_22BCA5864();

      v51 = v38;
      v45 = *(v38 + 16);
      if (v45 >= *(v38 + 24) >> 1)
      {
        sub_22BD27BA8();
        v40 = v49;
        v38 = v51;
      }

      *(v38 + 16) = v45 + 1;
      sub_22BB2F374();
      (*(v47 + 32))(v38 + v46 + *(v47 + 72) * v45, v0, v40);
      v39 += 4;
      --v37;
    }

    while (v37);
  }

  sub_22BDB6804();
  sub_22BB314EC();
}

void sub_22BCA4F90()
{
  sub_22BB30F94();
  v2 = v1;
  v3 = sub_22BBE6DE0(&qword_27D8E3D68, &qword_22BDC1100);
  sub_22BB2F0C8(v3);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB30BA8();
  v46 = v7;
  sub_22BB2F120();
  v8 = sub_22BDB6994();
  v9 = sub_22BB30444(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v16 = v15 - v14;
  v17 = sub_22BBE6DE0(&qword_27D8E3D70, &qword_22BDC1108);
  sub_22BB2F0C8(v17);
  v19 = *(v18 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v20);
  sub_22BB34298();
  v21 = sub_22BBE6DE0(&qword_27D8E3D10, &qword_22BDC1068);
  sub_22BB2F0C8(v21);
  v23 = *(v22 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v24);
  sub_22BB36FD8();
  v25 = sub_22BBE6DE0(&qword_27D8E3D78, &qword_22BDC1110);
  sub_22BB2F0C8(v25);
  v27 = *(v26 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v28);
  sub_22BB2F484();
  sub_22BDB6954();
  v29 = type metadata accessor for FeedbackLearning.CandidateEvaluation(0);
  sub_22BCA60C0(v2 + v29[5]);
  sub_22BDB68B4();
  sub_22BB331C8();
  sub_22BB336D0(v30, v31, v32, v33);
  sub_22BDB6924();
  v34 = v2 + v29[7];
  sub_22BCA62A8();
  sub_22BDB6984();
  sub_22BB331C8();
  sub_22BB336D0(v35, v36, v37, v38);
  sub_22BDB6934();
  (*(v11 + 104))(v16, **(&unk_278722E20 + *(v2 + v29[8])), v8);
  (*(v11 + 32))(v0, v16, v8);
  v39 = sub_22BB37710();
  sub_22BB336D0(v39, v40, v41, v8);
  sub_22BDB6914();
  v47 = *(v2 + v29[9]);
  sub_22BCA6464(&v47, v46);
  sub_22BDB6844();
  sub_22BB331C8();
  sub_22BB336D0(v42, v43, v44, v45);
  sub_22BDB6944();
  sub_22BB314EC();
}

void sub_22BCA5278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB30F94();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_22BBE6DE0(&qword_27D8E3CE8, &qword_22BDC1048);
  sub_22BB2F0C8(v27);
  v29 = *(v28 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = sub_22BBE6DE0(&qword_27D8E3D10, &qword_22BDC1068);
  v34 = sub_22BB2F0C8(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BB30C74();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &a9 - v41;
  v43 = sub_22BDB6984();
  v44 = sub_22BB30444(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22BB30574();
  sub_22BB31580();
  v49 = [v24 candidateId];
  sub_22BCA6B20();

  if (sub_22BB3AA28(v42, 1, v43) == 1)
  {
    sub_22BB58728(v42, &qword_27D8E3D10, &qword_22BDC1068);
    v50 = 1;
  }

  else
  {
    (*(v46 + 32))(v20, v42, v43);
    sub_22BDB69C4();
    (*(v46 + 16))(v39, v20, v43);
    v51 = sub_22BB36558();
    sub_22BB336D0(v51, v52, v53, v43);
    sub_22BDB69A4();
    sub_22BCA6D48([v24 userAlignment], v32);
    sub_22BDB6A14();
    sub_22BB331C8();
    sub_22BB336D0(v54, v55, v56, v57);
    sub_22BDB69B4();
    (*(v46 + 8))(v20, v43);
    v50 = 0;
  }

  v58 = sub_22BDB69D4();
  sub_22BB336D0(v26, v50, 1, v58);
  sub_22BB314EC();
}

uint64_t sub_22BCA54EC(uint64_t a1)
{
  sub_22BB39128();
  v5 = sub_22BDB6864();
  v6 = sub_22BB30444(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  sub_22BB36858();
  v11 = sub_22BBE6DE0(&qword_27D8E3DC8, &qword_22BDC1160);
  sub_22BB2F0C8(v11);
  v13 = *(v12 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v14);
  sub_22BB31580();
  v15 = sub_22BBE6DE0(&qword_27D8E3DD0, &qword_22BDC1168);
  sub_22BB2F0C8(v15);
  v17 = *(v16 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v18);
  sub_22BB32750();
  sub_22BDB67B4();
  sub_22BCA5E7C(a1, v3);
  sub_22BDB6784();
  v19 = sub_22BB36558();
  sub_22BB336D0(v19, v20, v21, v22);
  MEMORY[0x2318A0760](v3);
  v23 = type metadata accessor for FeedbackLearning.TaskOutcome(0);
  (*(v8 + 104))(v1, **(&unk_278722E40 + *(a1 + *(v23 + 20))), v5);
  (*(v8 + 32))(v2, v1, v5);
  sub_22BB331C8();
  sub_22BB336D0(v24, v25, v26, v5);
  return MEMORY[0x2318A0770](v2);
}

void sub_22BCA56A4(char a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_22BBE6DE0(&qword_27D8E3DC0, &qword_22BDC1158);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22BDBCBD0;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  v9 = *(a4 + 16);
  if (!v9)
  {

    return;
  }

  for (i = (a4 + 56); ; i += 4)
  {
    v11 = *(i - 1);
    v12 = *i;
    v13 = *(i - 16);
    v14 = *(i - 24);

    v15 = sub_22BCA56A4(v14, v13, v11, v12);

    v16 = *(v15 + 16);
    v17 = *(v8 + 16);
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      break;
    }

    if (v18 > *(v8 + 24) >> 1)
    {
      if (v17 > v18)
      {
        v23 = *(v8 + 16);
      }

      sub_22BD8F874();
      v8 = v24;
      v17 = *(v24 + 16);
      if (*(v15 + 16))
      {
LABEL_6:
        if (((*(v8 + 24) >> 1) - v17) < v16)
        {
          goto LABEL_19;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v20 = *(v8 + 16);
          v21 = __OFADD__(v20, v16);
          v22 = v20 + v16;
          if (v21)
          {
            goto LABEL_20;
          }

          *(v8 + 16) = v22;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v19 = *(v15 + 16);
      if (v16)
      {
        goto LABEL_6;
      }
    }

    if (v16)
    {
      goto LABEL_18;
    }

LABEL_14:
    if (!--v9)
    {
      return;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_22BCA5864()
{
  sub_22BB30F94();
  v3 = v2;
  v89 = v4;
  LODWORD(v92) = v5;
  v6 = sub_22BB39128();
  v77 = _s19EvaluatorVoteSourceOMa(v6);
  v7 = sub_22BB30444(v77);
  v87 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB30C74();
  v13 = (v11 - v12);
  MEMORY[0x28223BE20](v14);
  v93 = &v76[-v15];
  sub_22BB2F120();
  v91 = sub_22BDB6854();
  v16 = sub_22BB30444(v91);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB30C74();
  v90 = v21 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v76[-v24];
  v26 = sub_22BBE6DE0(&qword_27D8E3DA0, &qword_22BDC1138);
  sub_22BB2F0C8(v26);
  v28 = *(v27 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v29);
  sub_22BB2F484();
  v30 = sub_22BDB67E4();
  v31 = sub_22BB30444(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BB30574();
  v38 = v37 - v36;
  v39 = sub_22BBE6DE0(&qword_27D8E3DA8, &qword_22BDC1140);
  sub_22BB2F0C8(v39);
  v41 = *(v40 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v42);
  sub_22BB31580();
  sub_22BDB68F4();
  (*(v33 + 104))(v38, **(&unk_278722E60 + v89), v30);
  (*(v33 + 32))(v0, v38, v30);
  sub_22BB331C8();
  v43 = v30;
  v44 = v3;
  sub_22BB336D0(v45, v46, v47, v43);
  MEMORY[0x2318A0890](v0);
  sub_22BCA6038(v92);
  MEMORY[0x2318A08B0](v1);
  v48 = *(v3 + 16);
  if (v48)
  {
    v88 = v25;
    v94 = MEMORY[0x277D84F90];
    sub_22BD27C58();
    v49 = v94;
    sub_22BB2F374();
    v51 = v44 + v50;
    v86 = *(v52 + 72);
    v82 = *MEMORY[0x277D1F7D8];
    v92 = (v18 + 104);
    v81 = *MEMORY[0x277D1F7D0];
    v80 = *MEMORY[0x277D1F7F0];
    v79 = *MEMORY[0x277D1F7F8];
    v78 = *MEMORY[0x277D1F808];
    v89 = v18;
    v53 = (v18 + 32);
    v85 = *MEMORY[0x277D1F7E0];
    LODWORD(v52) = *MEMORY[0x277D1F7E8];
    v83 = *MEMORY[0x277D1F800];
    v84 = v52;
    v87 = v13;
    do
    {
      v54 = v93;
      sub_22BCA786C(v51, v93, _s19EvaluatorVoteSourceOMa);
      sub_22BCA786C(v54, v13, _s19EvaluatorVoteSourceOMa);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v55 = *v92;
        v56 = v90;
        if (*v13)
        {
          v57 = v91;
          v58 = v90;
          if (*v13 == 1)
          {
            v59 = v85;
          }

          else
          {
            v59 = v83;
          }
        }

        else
        {
          v58 = v90;
          v59 = v84;
          v57 = v91;
        }

        v64 = v57;
LABEL_12:
        v55(v58, v59, v64);
      }

      else
      {
        _s24StatementExecutionResultOMa(0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v56 = v90;
        v57 = v91;
        switch(EnumCaseMultiPayload)
        {
          case 1:
            v61 = sub_22BB3623C();
            v63 = v82;
            goto LABEL_17;
          case 2:
            v61 = sub_22BB3623C();
            v63 = v79;
            goto LABEL_17;
          case 3:
            v65 = *(sub_22BBE6DE0(&qword_27D8E3DB0, &qword_22BDC1148) + 48);
            v66 = sub_22BB3623C();
            v67(v66, v80, v57);
            v68 = sub_22BDB8294();
            sub_22BB2F330(v68);
            (*(v69 + 8))(&v13[v65]);
            sub_22BB58728(v13, &qword_27D8E3DB8, &qword_22BDC1150);
            break;
          case 4:
            v61 = sub_22BB3623C();
            v63 = v81;
            goto LABEL_17;
          case 5:
            v58 = sub_22BB3623C();
            v59 = v82;
            v64 = v57;
            goto LABEL_12;
          default:
            v61 = sub_22BB3623C();
            v63 = v78;
LABEL_17:
            v62(v61, v63, v57);
            sub_22BCA78CC(v13, _s24StatementExecutionResultOMa);
            break;
        }
      }

      v70 = *v53;
      v71 = v88;
      (*v53)(v88, v56, v57);
      sub_22BCA78CC(v93, _s19EvaluatorVoteSourceOMa);
      v94 = v49;
      v72 = v57;
      v73 = *(v49 + 16);
      if (v73 >= *(v49 + 24) >> 1)
      {
        sub_22BD27C58();
        v49 = v94;
      }

      *(v49 + 16) = v73 + 1;
      sub_22BB2F374();
      v70(v49 + v74 + *(v75 + 72) * v73, v71, v72);
      v13 = v87;
      v51 += v86;
      --v48;
    }

    while (v48);
  }

  sub_22BDB68D4();
  sub_22BB314EC();
}

uint64_t sub_22BCA5E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FeedbackLearning.TaskStatus(0);
  v5 = sub_22BB2F0C8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v10 = v9 - v8;
  sub_22BCA786C(a1, v9 - v8, type metadata accessor for FeedbackLearning.TaskStatus);
  v11 = sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
  switch(sub_22BB3AA28(v10, 4, v11))
  {
    case 1u:
      v16 = MEMORY[0x277D1F758];
      goto LABEL_8;
    case 2u:
      v16 = MEMORY[0x277D1F760];
      goto LABEL_8;
    case 3u:
      v16 = MEMORY[0x277D1F750];
      goto LABEL_8;
    case 4u:
      v16 = MEMORY[0x277D1F768];
LABEL_8:
      v17 = *v16;
      v18 = sub_22BDB6784();
      sub_22BB2F330(v18);
      result = (*(v19 + 104))(a2, v17);
      break;
    default:
      type metadata accessor for FeedbackLearning.TaskFailureReason(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v13 = sub_22BDB6784();
      sub_22BB2F330(v13);
      if (EnumCaseMultiPayload == 1)
      {
        v15 = MEMORY[0x277D1F740];
      }

      else
      {
        v15 = MEMORY[0x277D1F748];
      }

      (*(v14 + 104))(a2, *v15);
      result = sub_22BCA78CC(v10, type metadata accessor for FeedbackLearning.TaskFailureReason);
      break;
  }

  return result;
}

uint64_t sub_22BCA6038(char a1)
{
  sub_22BB39128();
  v3 = sub_22BDB6CE4();
  sub_22BB2F330(v3);
  (*(v4 + 104))(v1, **(&unk_278722E78 + a1), v3);
  v5 = sub_22BB31C70();

  return sub_22BB336D0(v5, v6, v7, v3);
}

uint64_t sub_22BCA60C0(uint64_t a1)
{
  sub_22BB39128();
  v5 = sub_22BDB4C34();
  v6 = sub_22BB30444(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  sub_22BB36858();
  v11 = type metadata accessor for FeedbackLearning.CandidateParameter(0);
  v12 = sub_22BB2F330(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BB30574();
  sub_22BB31580();
  sub_22BCA786C(a1, v3, type metadata accessor for FeedbackLearning.CandidateParameter);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v19 = *v3;
      v20 = v3[1];
      sub_22BCA6790();

      goto LABEL_5;
    case 2u:
    case 3u:
      sub_22BDB6A04();
      sub_22BDB69F4();
      v15 = MEMORY[0x277D1F818];
      break;
    default:
      v16 = *(v8 + 32);
      v17 = sub_22BB3B69C();
      v18(v17);
      sub_22BCA65FC();
      (*(v8 + 8))(v2, v5);
LABEL_5:
      v15 = MEMORY[0x277D1F820];
      break;
  }

  v21 = *v15;
  v22 = sub_22BDB68B4();
  sub_22BB2F330(v22);
  return (*(v23 + 104))(v1, v21);
}

void sub_22BCA62A8()
{
  sub_22BB30F94();
  v1 = sub_22BB3B69C();
  v3 = sub_22BBE6DE0(v1, v2);
  sub_22BB2F0C8(v3);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB32750();
  v7 = sub_22BBE6DE0(&qword_27D8E34E0, &unk_22BDCE9E0);
  sub_22BB2F0C8(v7);
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB52928();
  v11 = sub_22BDB55F4();
  v12 = sub_22BB30444(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BB30574();
  sub_22BB36FD8();
  sub_22BDB6974();
  sub_22BDB7AF4();
  sub_22BDB55E4();
  sub_22BDB43E4();
  v17 = sub_22BB36558();
  sub_22BB336D0(v17, v18, v19, v20);
  sub_22BDB7674();
  sub_22BB3B340();
  sub_22BB52E20();
  sub_22BB322E8();
  sub_22BB336D0(v21, v22, v23, v24);
  sub_22BDB6964();
  (*(v14 + 8))(v0, v11);
  sub_22BB314EC();
}

uint64_t sub_22BCA6464@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (!(v3 >> 6))
  {
    v10 = sub_22BDB6844();
    sub_22BB2F330(v10);
    v7 = *(v11 + 104);
    if (v3)
    {
      if (v3 == 1)
      {
        v9 = MEMORY[0x277D1F7A8];
      }

      else
      {
        v9 = MEMORY[0x277D1F7B0];
      }
    }

    else
    {
      v9 = MEMORY[0x277D1F7B8];
    }

LABEL_15:
    v13 = *v9;
    v14 = a2;
    goto LABEL_20;
  }

  if (v3 >> 6 == 1)
  {
    v4 = sub_22BDB6844();
    v5 = sub_22BB2F330(v4);
    v7 = *(v6 + 104);
    v8 = v5;
    switch(v3 & 0x3F)
    {
      case 1u:
        v9 = MEMORY[0x277D1F788];
        break;
      case 2u:
        v9 = MEMORY[0x277D1F7C8];
        break;
      case 3u:
        v9 = MEMORY[0x277D1F7C0];
        break;
      default:
        v9 = MEMORY[0x277D1F778];
        break;
    }

    goto LABEL_15;
  }

  switch(*a1)
  {
    case 0x81:
      v12 = MEMORY[0x277D1F790];
      break;
    case 0x82:
      v12 = MEMORY[0x277D1F7A0];
      break;
    case 0x83:
      v12 = MEMORY[0x277D1F780];
      break;
    default:
      v12 = MEMORY[0x277D1F798];
      break;
  }

  v15 = *v12;
  v16 = sub_22BDB6844();
  v17 = sub_22BB2F330(v16);
  v7 = *(v18 + 104);
  v8 = v17;
  v14 = a2;
  v13 = v15;
LABEL_20:

  return v7(v14, v13, v8);
}

uint64_t sub_22BCA65FC()
{
  v0 = sub_22BB3B69C();
  v2 = sub_22BBE6DE0(v0, v1);
  sub_22BB2F0C8(v2);
  v4 = *(v3 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  sub_22BB32750();
  v6 = sub_22BBE6DE0(&qword_27D8E34E0, &unk_22BDCE9E0);
  sub_22BB2F0C8(v6);
  v8 = *(v7 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BB34298();
  sub_22BDB6974();
  sub_22BDB4C24();
  v10 = sub_22BDBB684();
  MEMORY[0x2318A4C40](v10);

  sub_22BCA68DC();

  sub_22BDB43E4();
  v11 = sub_22BB36558();
  sub_22BB336D0(v11, v12, v13, v14);
  sub_22BDB7674();
  sub_22BB3ACFC();
  sub_22BB3B340();
  sub_22BB52E20();
  sub_22BB322E8();
  sub_22BB336D0(v15, v16, v17, v18);
  return sub_22BDB6964();
}

uint64_t sub_22BCA6790()
{
  v0 = sub_22BB3B69C();
  v2 = sub_22BBE6DE0(v0, v1);
  sub_22BB2F0C8(v2);
  v4 = *(v3 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  sub_22BB32750();
  v6 = sub_22BBE6DE0(&qword_27D8E34E0, &unk_22BDCE9E0);
  sub_22BB2F0C8(v6);
  v8 = *(v7 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BB34298();
  sub_22BDB6974();
  sub_22BCA68DC();
  sub_22BDB43E4();
  v10 = sub_22BB36558();
  sub_22BB336D0(v10, v11, v12, v13);
  sub_22BDB7674();
  sub_22BB3B340();
  sub_22BB52E20();
  sub_22BB322E8();
  sub_22BB336D0(v14, v15, v16, v17);
  return sub_22BDB6964();
}

void sub_22BCA68DC()
{
  sub_22BB30F94();
  v26 = v1;
  v2 = sub_22BDB5A64();
  v3 = sub_22BB30444(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  sub_22BB3A434();
  v8 = sub_22BDB5714();
  v9 = sub_22BB30444(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v16 = v15 - v14;
  v17 = sub_22BDB55F4();
  v18 = sub_22BB30444(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB30574();
  v25 = v24 - v23;
  (*(v11 + 16))(v16, v26, v8);
  (*(v5 + 104))(v0, *MEMORY[0x277D1D058], v2);

  sub_22BDB5A54();
  (*(v5 + 8))(v0, v2);
  sub_22BDB5604();
  sub_22BDB55E4();
  (*(v20 + 8))(v25, v17);
  sub_22BB314EC();
}

void sub_22BCA6AF0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  sub_22BCA6B20();
}

void sub_22BCA6B20()
{
  sub_22BB30F94();
  v2 = v1;
  v3 = sub_22BDB77D4();
  v4 = sub_22BB30444(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  sub_22BB3A434();
  v9 = sub_22BDB7B44();
  v10 = sub_22BB30444(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB30574();
  v17 = v16 - v15;
  if (v2)
  {
    sub_22BCA6E3C(v2, &selRef_identifier);
    if (v18)
    {
      sub_22BCA6E3C(v2, &selRef_bundleId);
      if (v19)
      {
        sub_22BDB7B14();
        sub_22BCA62A8();
        (*(v12 + 8))(v17, v9);
        goto LABEL_9;
      }
    }
  }

  sub_22BDB6404();
  v20 = sub_22BDB77C4();
  v21 = sub_22BDBB114();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_22BB2C000, v20, v21, "Unable to create a candidate identifier", v22, 2u);
    MEMORY[0x2318A6080](v22, -1, -1);
  }

  (*(v6 + 8))(v0, v3);
LABEL_9:
  v23 = sub_22BDB6984();
  sub_22BB69234(v23);
  sub_22BB314EC();
}

uint64_t sub_22BCA6D48@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_22BDB6A14();
  sub_22BB2F330(v4);
  v6 = *(v5 + 104);
  if (a1 > 9)
  {
    v7 = MEMORY[0x277D1F858];
  }

  else
  {
    v7 = qword_278722EA0[a1];
  }

  v8 = *v7;

  return v6(a2, v8);
}

uint64_t sub_22BCA6DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BCA6E3C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_22BDBABF4();

  return v4;
}

void sub_22BCA6E9C()
{
  sub_22BB30F94();
  v177 = v2;
  v4 = v3;
  v165 = v5;
  v162 = v6;
  v175 = v7;
  v163 = v8;
  v9 = sub_22BBE6DE0(&qword_27D8E3D18, &unk_22BDC1070);
  sub_22BB2F0C8(v9);
  v11 = *(v10 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v12);
  sub_22BB30BA8();
  v176 = v13;
  v14 = sub_22BBE6DE0(&qword_27D8E34D0, &qword_22BDBEF30);
  sub_22BB2F0C8(v14);
  v16 = *(v15 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v17);
  sub_22BB30BA8();
  v174 = v18;
  v19 = sub_22BBE6DE0(&qword_27D8E3D20, &unk_22BDC1080);
  sub_22BB2F0C8(v19);
  v21 = *(v20 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v22);
  sub_22BB30BA8();
  v171 = v23;
  sub_22BB2F120();
  v166 = sub_22BDB6664();
  v24 = sub_22BB30444(v166);
  v169 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BB30574();
  v168 = v29 - v28;
  v30 = sub_22BBE6DE0(&qword_27D8E3D28, &unk_22BDCCD20);
  v31 = sub_22BB2F0C8(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BB30C74();
  v170 = v34 - v35;
  MEMORY[0x28223BE20](v36);
  sub_22BB30B8C(&v152 - v37);
  v38 = sub_22BDB6714();
  v39 = sub_22BB30444(v38);
  v172 = v40;
  v173 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22BB30574();
  v167 = v44 - v43;
  v45 = sub_22BBE6DE0(&qword_27D8E3D30, &unk_22BDC1090);
  sub_22BB2F0C8(v45);
  v47 = *(v46 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v48);
  sub_22BB30BA8();
  v160 = v49;
  v50 = sub_22BBE6DE0(&qword_27D8E3D38, &unk_22BDCCD30);
  sub_22BB2F0C8(v50);
  v52 = *(v51 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v53);
  sub_22BB30BA8();
  sub_22BB30B8C(v54);
  v157 = sub_22BDB6C84();
  v55 = sub_22BB30444(v157);
  v153 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  sub_22BB30574();
  v61 = v60 - v59;
  v62 = sub_22BBE6DE0(&qword_27D8E3D40, &unk_22BDC10A0);
  sub_22BB2F0C8(v62);
  v64 = *(v63 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v65);
  sub_22BB32750();
  v66 = sub_22BDB6A44();
  v67 = sub_22BB30444(v66);
  v69 = v68;
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v67);
  sub_22BB30574();
  sub_22BB36FD8();
  v72 = sub_22BDB6D04();
  v73 = sub_22BB30444(v72);
  v179 = v74;
  v180 = v73;
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v73);
  sub_22BB30574();
  v178 = v78 - v77;
  v79 = sub_22BBE6DE0(&qword_27D8E3D48, &unk_22BDCCD40);
  sub_22BB2F0C8(v79);
  v81 = *(v80 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v82);
  sub_22BB3A434();
  v83 = sub_22BDB6C64();
  v155 = v83;
  sub_22BB30418();
  v85 = v84;
  v156 = v84;
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](v88);
  sub_22BB30574();
  v91 = v90 - v89;
  v158 = v4;
  sub_22BB30418();
  v161 = v92;
  v94 = *(v93 + 64);
  MEMORY[0x28223BE20](v95);
  sub_22BB30574();
  v159 = v97 - v96;
  (*(v98 + 16))();
  sub_22BDB6C54();
  v99 = sub_22BDB6C34();
  sub_22BB2F330(v99);
  (*(v100 + 16))(v0, v163, v99);
  v101 = sub_22BB31C70();
  sub_22BB6BA80(v101, v102, v103, v99);
  v154 = v91;
  sub_22BDB6C44();
  (*(v85 + 16))(v1, v91, v83);
  (*(v69 + 104))(v1, *MEMORY[0x277D1F868], v66);
  sub_22BDB6CF4();
  sub_22BDB6CC4();
  v181 = v165;
  sub_22BB3ACFC();
  sub_22BB3B340();
  sub_22BB322E8();
  sub_22BB336D0(v104, v105, v106, v107);
  sub_22BDB6CD4();
  sub_22BDB6C74();
  v108 = *(v69 + 16);
  v109 = sub_22BB35F34();
  v110(v109, v1, v66);
  v111 = sub_22BB31C70();
  sub_22BB6BA80(v111, v112, v113, v66);
  sub_22BDB6A54();
  v114 = v153;
  v115 = *(v153 + 16);
  v116 = sub_22BB35F34();
  v117 = v157;
  v118(v116, v61, v157);
  v119 = sub_22BB31C70();
  sub_22BB6BA80(v119, v120, v121, v117);
  sub_22BDB6C94();
  (*(v114 + 8))(v61, v117);
  (*(v69 + 8))(v1, v66);
  v122 = *(v179 + 16);
  v123 = v164;
  v124 = sub_22BB3B69C();
  v125(v124);
  v126 = *MEMORY[0x277D1F700];
  v127 = sub_22BDB66E4();
  sub_22BB2F330(v127);
  (*(v128 + 104))(v123, v126, v127);
  sub_22BB322E8();
  sub_22BB336D0(v129, v130, v131, v132);
  v134 = v168;
  v133 = v169;
  v135 = v166;
  (*(v169 + 104))(v168, *MEMORY[0x277D1F6D8], v166);
  v136 = v167;
  sub_22BDB6704();
  sub_22BCA485C();
  sub_22BDB66C4();
  v137 = sub_22BB31C70();
  sub_22BB6BA80(v137, v138, v139, v140);
  sub_22BDB66D4();
  sub_22BDB7604();
  sub_22BDB7614();
  v141 = sub_22BB31C70();
  sub_22BB6BA80(v141, v142, v143, v144);
  sub_22BDB6674();
  sub_22BB8AE8C(v123, v170, &qword_27D8E3D28, &unk_22BDCCD20);
  sub_22BDB66F4();
  v145 = sub_22BB38704(v133);
  v146(v145);
  sub_22BB331C8();
  sub_22BB336D0(v147, v148, v149, v135);
  sub_22BDB6684();
  (*(v133 + 8))(v134, v135);
  sub_22BB58728(v123, &qword_27D8E3D28, &unk_22BDCCD20);
  v150 = v159;
  v151 = v158;
  (*(v177 + 8))(v136, v158);
  (*(v172 + 8))(v136, v173);
  (*(v179 + 8))(v178, v180);
  (*(v156 + 8))(v154, v155);
  (*(v161 + 8))(v150, v151);
  sub_22BB314EC();
}

uint64_t sub_22BCA786C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22BB2F330(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22BCA78CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BB2F330(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_22BCA7954()
{
  sub_22BB31014();
  sub_22BB37250();
  v5 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  sub_22BB2F0C8(v5);
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB30CE4();
  v9 = sub_22BDBA594();
  v10 = sub_22BB33CD0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB30560();
  v42 = v13;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v14);
  v40 = v16;
  v41 = v37 - v15;
  v17 = 0;
  v18 = *(v1 + 16);
  v43 = (v16 + 32);
  v44 = MEMORY[0x277D84F90];
  while (v18 != v17)
  {
    v19 = sub_22BDB6194();
    sub_22BB30434(v19);
    v21 = v20;
    v23 = v22;
    v24 = v1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v25 = *(v23 + 72);
    sub_22BB6BA98();
    v2();
    if (v0)
    {
      sub_22BB3407C();
      break;
    }

    sub_22BB37720();
    if (v26)
    {
      sub_22BB58728(v3, &qword_27D8E2668, &unk_22BDBCCD0);
      ++v17;
    }

    else
    {
      v27 = *v43;
      (*v43)(v41, v3, v4);
      v39 = v27;
      v27(v42, v41, v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = *(v44 + 16);
        sub_22BB305BC();
        sub_22BD8EBF4();
        v44 = v35;
      }

      v29 = *(v44 + 16);
      v30 = v29 + 1;
      if (v29 >= *(v44 + 24) >> 1)
      {
        v37[1] = *(v44 + 16);
        v38 = v29 + 1;
        sub_22BD8EBF4();
        v30 = v38;
        v44 = v36;
      }

      ++v17;
      *(v44 + 16) = v30;
      sub_22BB31C80();
      v39((v31 + v32 * v33), v42, v4);
    }
  }

  sub_22BB38D50();
  sub_22BB376A8();
}

void sub_22BCA7BE0()
{
  sub_22BB31014();
  sub_22BB3A604();
  v5 = v4;
  v6 = sub_22BBE6DE0(&qword_27D8E3D10, &qword_22BDC1068);
  sub_22BB2F0C8(v6);
  v8 = *(v7 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BB30CE4();
  v10 = sub_22BDB6984();
  v11 = sub_22BB33CD0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30560();
  sub_22BB30B70();
  v15 = MEMORY[0x28223BE20](v14);
  v23 = sub_22BB69A4C(v15, v16, v17, v18, v19, v20, v21, v22, v38);
  v24 = sub_22BBC20A8(v23);
  sub_22BB2F494(v24);
  v25 = MEMORY[0x277D84F90];
  v39 = v5;
  v40 = v1;
  while (1)
  {
    if (v42 == v3)
    {
      goto LABEL_19;
    }

    if (v41)
    {
      v27 = MEMORY[0x2318A5340](v3, v1);
    }

    else
    {
      sub_22BB2F1F4();
      if (v26)
      {
        goto LABEL_21;
      }

      v27 = v1[v3 + 4];
    }

    v28 = v27;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    sub_22BB6BA98();
    v5();
    if (v0)
    {

LABEL_19:
      sub_22BB3A204();
      sub_22BB376A8();
      return;
    }

    sub_22BB37720();
    if (v29)
    {
      sub_22BB58728(v2, &qword_27D8E3D10, &qword_22BDC1068);
    }

    else
    {
      v30 = sub_22BB38040();
      (v1)(v30);
      v31 = sub_22BB58834();
      (v1)(v31);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = *(v25 + 16);
        sub_22BB305BC();
        sub_22BD8F934();
        v25 = v36;
      }

      sub_22BBDB8B8();
      if (v26)
      {
        sub_22BB36FE4();
        sub_22BD8F934();
        v25 = v37;
      }

      *(v25 + 16) = v28;
      sub_22BB2F374();
      v34 = sub_22BB53CF0(v33);
      (v1)(v34);
      v5 = v39;
      v1 = v40;
    }

    ++v3;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_22BCA7E0C()
{
  sub_22BB31014();
  sub_22BB3A604();
  v5 = v4;
  v6 = sub_22BBE6DE0(&qword_27D8E3E38, &qword_22BDC1280);
  sub_22BB2F0C8(v6);
  v8 = *(v7 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BB30CE4();
  v10 = sub_22BDB69D4();
  v11 = sub_22BB33CD0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30560();
  sub_22BB30B70();
  v15 = MEMORY[0x28223BE20](v14);
  v23 = sub_22BB69A4C(v15, v16, v17, v18, v19, v20, v21, v22, v38);
  v24 = sub_22BBC20A8(v23);
  sub_22BB2F494(v24);
  v25 = MEMORY[0x277D84F90];
  v39 = v5;
  v40 = v1;
  while (1)
  {
    if (v42 == v3)
    {
      goto LABEL_19;
    }

    if (v41)
    {
      v27 = MEMORY[0x2318A5340](v3, v1);
    }

    else
    {
      sub_22BB2F1F4();
      if (v26)
      {
        goto LABEL_21;
      }

      v27 = v1[v3 + 4];
    }

    v28 = v27;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    sub_22BB6BA98();
    v5();
    if (v0)
    {

LABEL_19:
      sub_22BB3A204();
      sub_22BB376A8();
      return;
    }

    sub_22BB37720();
    if (v29)
    {
      sub_22BB58728(v2, &qword_27D8E3E38, &qword_22BDC1280);
    }

    else
    {
      v30 = sub_22BB38040();
      (v1)(v30);
      v31 = sub_22BB58834();
      (v1)(v31);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = *(v25 + 16);
        sub_22BB305BC();
        sub_22BD8F9FC();
        v25 = v36;
      }

      sub_22BBDB8B8();
      if (v26)
      {
        sub_22BB36FE4();
        sub_22BD8F9FC();
        v25 = v37;
      }

      *(v25 + 16) = v28;
      sub_22BB2F374();
      v34 = sub_22BB53CF0(v33);
      (v1)(v34);
      v5 = v39;
      v1 = v40;
    }

    ++v3;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_22BCA8038()
{
  sub_22BB31014();
  sub_22BB37250();
  v5 = sub_22BBE6DE0(&qword_27D8E3E30, &unk_22BDC1270);
  sub_22BB2F0C8(v5);
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BB30CE4();
  v10 = type metadata accessor for FeedbackLearning.TypedCandidateInteraction(v9);
  v11 = sub_22BB33CD0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30790(v14, v42);
  v16 = MEMORY[0x28223BE20](v15);
  sub_22BB32BC8(v16, v17, v18, v19, v20, v21, v22, v23, v43);
  while (v4 != v3)
  {
    v24 = type metadata accessor for FeedbackLearning.CandidateEvaluation(0);
    sub_22BB30434(v24);
    v26 = v25;
    v28 = v27;
    v29 = v1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v30 = *(v28 + 72);
    v31 = sub_22BB37CD8(v29);
    v2(v31);
    if (v0)
    {
      sub_22BB3407C();
      break;
    }

    v32 = sub_22BB37720();
    if (v34)
    {
      v35 = sub_22BB33410();
      sub_22BB58728(v35, v36, &unk_22BDC1270);
      ++v3;
    }

    else
    {
      sub_22BB3871C(v32, v33, type metadata accessor for FeedbackLearning.TypedCandidateInteraction);
      sub_22BB39134();
      v37 = sub_22BB39750();
      if ((v37 & 1) == 0)
      {
        sub_22BB310BC();
        sub_22BD8FC50();
      }

      sub_22BB36568();
      if (v38)
      {
        sub_22BB342A8();
        sub_22BD8FC50();
        sub_22BB69254(v41);
      }

      v39 = sub_22BB35AD4();
      sub_22BCAD538(v39, v40, type metadata accessor for FeedbackLearning.TypedCandidateInteraction);
    }
  }

  sub_22BB38D50();
  sub_22BB376A8();
}

void *sub_22BCA823C(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v13 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v7 == v6)
    {
      return v13;
    }

    if (v6 >= v7)
    {
      break;
    }

    v8 = type metadata accessor for FeedbackLearning.TypedCandidateInteraction(0);
    v10 = *(v8 - 8);
    result = (v8 - 8);
    v9 = v10;
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_14;
    }

    result = v5(&v14, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v6);
    if (v3)
    {
      v12 = v13;

      return v12;
    }

    ++v6;
    if (v14)
    {
      MEMORY[0x2318A4D10](result);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22BDBADA4();
      }

      result = sub_22BDBADE4();
      v13 = v15;
      v6 = v11;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_22BCA83A8()
{
  sub_22BB31014();
  sub_22BB37250();
  v5 = sub_22BBE6DE0(&qword_27D8E3E00, &qword_22BDC1248);
  sub_22BB2F0C8(v5);
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BB30CE4();
  v10 = _s16CandidateSummaryVMa(v9);
  v11 = sub_22BB33CD0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30790(v14, v42);
  v16 = MEMORY[0x28223BE20](v15);
  sub_22BB32BC8(v16, v17, v18, v19, v20, v21, v22, v23, v43);
  while (v4 != v3)
  {
    v24 = _s15CandidateResultVMa();
    sub_22BB30434(v24);
    v26 = v25;
    v28 = v27;
    v29 = v1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v30 = *(v28 + 72);
    v31 = sub_22BB37CD8(v29);
    v2(v31);
    if (v0)
    {
      sub_22BB3407C();
      break;
    }

    v32 = sub_22BB37720();
    if (v34)
    {
      v35 = sub_22BB33410();
      sub_22BB58728(v35, v36, &qword_22BDC1248);
      ++v3;
    }

    else
    {
      sub_22BB3871C(v32, v33, _s16CandidateSummaryVMa);
      sub_22BB39134();
      v37 = sub_22BB39750();
      if ((v37 & 1) == 0)
      {
        sub_22BB310BC();
        sub_22BBD5D64();
      }

      sub_22BB36568();
      if (v38)
      {
        sub_22BB342A8();
        sub_22BBD5D64();
        sub_22BB69254(v41);
      }

      v39 = sub_22BB35AD4();
      sub_22BB3B358(v39, v40);
    }
  }

  sub_22BB38D50();
  sub_22BB376A8();
}

void sub_22BCA8598()
{
  sub_22BB31014();
  sub_22BB3A604();
  v5 = v4;
  v6 = sub_22BBE6DE0(&qword_27D8E2F30, &qword_22BDC1240);
  sub_22BB2F0C8(v6);
  v8 = *(v7 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BB30CE4();
  v10 = sub_22BDB8E14();
  v11 = sub_22BB33CD0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30560();
  sub_22BB30B70();
  v15 = MEMORY[0x28223BE20](v14);
  v23 = sub_22BB69A4C(v15, v16, v17, v18, v19, v20, v21, v22, v37);
  v24 = sub_22BBC20A8(v23);
  sub_22BB2F494(v24);
  v25 = MEMORY[0x277D84F90];
  v38 = v5;
  v39 = v1;
  while (1)
  {
    if (v41 == v3)
    {
      goto LABEL_19;
    }

    if (v40)
    {
      v27 = MEMORY[0x2318A5340](v3, v1);
    }

    else
    {
      sub_22BB2F1F4();
      if (v26)
      {
        goto LABEL_21;
      }

      v27 = *(v1 + v3 + 4);
    }

    if (__OFADD__(v3, 1))
    {
      break;
    }

    sub_22BB6BA98();
    v5();
    if (v0)
    {

LABEL_19:
      sub_22BB3A204();
      sub_22BB376A8();
      return;
    }

    sub_22BB37720();
    if (v28)
    {
      sub_22BB58728(v2, &qword_27D8E2F30, &qword_22BDC1240);
    }

    else
    {
      v29 = sub_22BB38040();
      v1(v29);
      v30 = sub_22BB58834();
      v1(v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = *(v25 + 16);
        sub_22BB305BC();
        sub_22BD90108();
        v25 = v35;
      }

      sub_22BBDB8B8();
      if (v26)
      {
        sub_22BB36FE4();
        sub_22BD90108();
        v25 = v36;
      }

      *(v25 + 16) = v27;
      sub_22BB2F374();
      v33 = sub_22BB53CF0(v32);
      v1(v33);
      v5 = v38;
      v1 = v39;
    }

    ++v3;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_22BCA87D0()
{
  sub_22BB31014();
  v2 = v1;
  v4 = v3;
  v49 = v5;
  v48 = v6;
  v7 = sub_22BBE6DE0(&qword_27D8E3DE8, &unk_22BDC1220);
  sub_22BB2F0C8(v7);
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  v12 = v40 - v11;
  v46 = _s20StatementResultEventVMa(0);
  v13 = sub_22BB30444(v46);
  v42 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BB30560();
  v44 = v17;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v18);
  v43 = v40 - v19;
  v20 = sub_22BDB9B54();
  v21 = sub_22BB30444(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  v27 = v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v2 >> 1;
  v47 = v23 + 16;
  v29 = (v23 + 8);
  v45 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v4 == v28)
    {
      goto LABEL_14;
    }

    if (__OFSUB__(v28--, 1))
    {
      break;
    }

    if (v28 < v4)
    {
      goto LABEL_17;
    }

    (*(v23 + 16))(v27, v49 + *(v23 + 72) * v28, v20);
    v48(v27);
    if (v0)
    {
      (*v29)(v27, v20);

LABEL_14:
      sub_22BB38D50();
      sub_22BB376A8();
      return;
    }

    (*v29)(v27, v20);
    if (sub_22BB3AA28(v12, 1, v46) == 1)
    {
      sub_22BB58728(v12, &qword_27D8E3DE8, &unk_22BDC1220);
    }

    else
    {
      v41 = _s20StatementResultEventVMa;
      sub_22BCAD538(v12, v43, _s20StatementResultEventVMa);
      sub_22BCAD538(v43, v44, v41);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = *(v45 + 16);
        sub_22BB305BC();
        sub_22BD90298();
        v45 = v38;
      }

      v31 = *(v45 + 16);
      v32 = (v31 + 1);
      if (v31 >= *(v45 + 24) >> 1)
      {
        v40[1] = *(v45 + 16);
        v41 = (v31 + 1);
        sub_22BD90298();
        v32 = v41;
        v45 = v39;
      }

      *(v45 + 16) = v32;
      sub_22BB31C80();
      sub_22BCAD538(v36, v33 + v34 * v35, _s20StatementResultEventVMa);
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_22BCA8B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB31014();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_22BBE6DE0(&qword_27D8E3E08, &qword_22BDC1250);
  sub_22BB2F0C8(v27);
  v29 = *(v28 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v30);
  v32 = &v50 - v31;
  v53 = type metadata accessor for FeedbackLearning.FlowTask(0);
  v33 = sub_22BB30444(v53);
  v50 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BB30560();
  v52 = v37;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v38);
  v40 = &v50 - v39;
  v41 = *(v24 + 16);
  v42 = (v24 + 32);
  v43 = MEMORY[0x277D84F90];
  v51 = v26;
  if (v41)
  {
    while (1)
    {
      a10 = *v42;

      v26(&a10);
      if (v20)
      {
        break;
      }

      if (sub_22BB3AA28(v32, 1, v53) == 1)
      {
        sub_22BB58728(v32, &qword_27D8E3E08, &qword_22BDC1250);
      }

      else
      {
        sub_22BCAD538(v32, v40, type metadata accessor for FeedbackLearning.FlowTask);
        sub_22BCAD538(v40, v52, type metadata accessor for FeedbackLearning.FlowTask);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = *(v43 + 16);
          sub_22BB305BC();
          sub_22BD90CCC();
          v43 = v48;
        }

        v44 = *(v43 + 16);
        if (v44 >= *(v43 + 24) >> 1)
        {
          sub_22BB36FE4();
          sub_22BD90CCC();
          v43 = v49;
        }

        *(v43 + 16) = v44 + 1;
        sub_22BB2F374();
        sub_22BCAD538(v52, v43 + v45 + *(v46 + 72) * v44, type metadata accessor for FeedbackLearning.FlowTask);
        v26 = v51;
      }

      ++v42;
      if (!--v41)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_13:
  sub_22BB3A204();
  sub_22BB376A8();
}

void sub_22BCA8D74()
{
  sub_22BB31014();
  sub_22BB37250();
  v5 = sub_22BBE6DE0(&qword_27D8E3DF8, &qword_22BDC1238);
  sub_22BB2F0C8(v5);
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BB30CE4();
  v10 = type metadata accessor for FeedbackLearning.CandidateEvaluation(v9);
  v11 = sub_22BB33CD0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30790(v14, v42);
  v16 = MEMORY[0x28223BE20](v15);
  sub_22BB32BC8(v16, v17, v18, v19, v20, v21, v22, v23, v43);
  while (v4 != v3)
  {
    v24 = sub_22BDBA994();
    sub_22BB30434(v24);
    v26 = v25;
    v28 = v27;
    v29 = v1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v30 = *(v28 + 72);
    v31 = sub_22BB37CD8(v29);
    v2(v31);
    if (v0)
    {
      sub_22BB3407C();
      break;
    }

    v32 = sub_22BB37720();
    if (v34)
    {
      v35 = sub_22BB33410();
      sub_22BB58728(v35, v36, &qword_22BDC1238);
      ++v3;
    }

    else
    {
      sub_22BB3871C(v32, v33, type metadata accessor for FeedbackLearning.CandidateEvaluation);
      sub_22BB39134();
      v37 = sub_22BB39750();
      if ((v37 & 1) == 0)
      {
        sub_22BB310BC();
        sub_22BD90F20();
      }

      sub_22BB36568();
      if (v38)
      {
        sub_22BB342A8();
        sub_22BD90F20();
        sub_22BB69254(v41);
      }

      v39 = sub_22BB35AD4();
      sub_22BCAD538(v39, v40, type metadata accessor for FeedbackLearning.CandidateEvaluation);
    }
  }

  sub_22BB38D50();
  sub_22BB376A8();
}

void sub_22BCA8F78()
{
  sub_22BB31014();
  sub_22BB37250();
  v5 = sub_22BBE6DE0(&qword_27D8E3E00, &qword_22BDC1248);
  sub_22BB2F0C8(v5);
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22BB30CE4();
  v10 = _s16CandidateSummaryVMa(v9);
  v11 = sub_22BB33CD0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30790(v14, v42);
  v16 = MEMORY[0x28223BE20](v15);
  sub_22BB32BC8(v16, v17, v18, v19, v20, v21, v22, v23, v43);
  while (v4 != v3)
  {
    v24 = _s27StatementParameterCandidateVMa(0);
    sub_22BB30434(v24);
    v26 = v25;
    v28 = v27;
    v29 = v1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v30 = *(v28 + 72);
    v31 = sub_22BB37CD8(v29);
    v2(v31);
    if (v0)
    {
      sub_22BB3407C();
      break;
    }

    v32 = sub_22BB37720();
    if (v34)
    {
      v35 = sub_22BB33410();
      sub_22BB58728(v35, v36, &qword_22BDC1248);
      ++v3;
    }

    else
    {
      sub_22BB3871C(v32, v33, _s16CandidateSummaryVMa);
      sub_22BB39134();
      v37 = sub_22BB39750();
      if ((v37 & 1) == 0)
      {
        sub_22BB310BC();
        sub_22BBD5D64();
      }

      sub_22BB36568();
      if (v38)
      {
        sub_22BB342A8();
        sub_22BBD5D64();
        sub_22BB69254(v41);
      }

      v39 = sub_22BB35AD4();
      sub_22BB3B358(v39, v40);
    }
  }

  sub_22BB38D50();
  sub_22BB376A8();
}

void *sub_22BCA9168(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  v7 = a3 + 32;
  v11 = a3 + 32;
LABEL_2:
  v8 = v7 + 40 * v5;
  while (1)
  {
    if (v6 == v5)
    {
      return v12;
    }

    if (v5 >= v6)
    {
      break;
    }

    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_15;
    }

    result = v4(&v13, v8);
    if (v3)
    {
      v10 = v12;

      return v10;
    }

    ++v5;
    v8 += 40;
    if (v13)
    {
      MEMORY[0x2318A4D10](result);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22BDBADA4();
      }

      result = sub_22BDBADE4();
      v12 = v14;
      v5 = v9;
      v7 = v11;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void FeedbackLearningBiomeDonator.FeedbackLearningBiomeStream.sendEvent(_:)(uint64_t a1)
{
  v2 = [BiomeLibrary() IntelligenceEngine];
  swift_unknownObjectRelease();
  v3 = [v2 Interaction];
  swift_unknownObjectRelease();
  v4 = [v3 Donation];
  swift_unknownObjectRelease();
  v5 = [v4 source];
  [v5 sendEvent_];
}

uint64_t FeedbackLearningBiomeDonator.donate(evaluation:event:telemetryStream:loggingId:trigger:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned __int8 *a5)
{
  v10 = a3[3];
  v11 = a3[4];
  v12 = sub_22BB69FEC(a3, v10);

  return sub_22BCACC48(a1, a2, v12, a4, a5, v5, v10, v11);
}

id FeedbackLearningBiomeDonator.donateInteractionTuples(tuple:candidates:sessionId:absoluteTimestamp:statementId:trigger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v7 = v6;
  v69 = a5;
  v70 = a4;
  v68 = a3;
  v72 = a2;
  v10 = sub_22BBE6DE0(&qword_27D8E6A80, &unk_22BDC0E70);
  sub_22BB2F0C8(v10);
  v12 = *(v11 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v13);
  v15 = &v66[-v14];
  v16 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  v17 = sub_22BB2F0C8(v16);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v66[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v24 = &v66[-v23];
  v74 = sub_22BDB77D4();
  v25 = sub_22BB30444(v74);
  v27 = v26;
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v25);
  v32 = &v66[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v30);
  v34 = &v66[-v33];
  v67 = *a6;
  sub_22BDB6404();
  v35 = sub_22BDB77C4();
  v36 = sub_22BDBB104();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v73 = v7;
    v38 = v15;
    v39 = v32;
    v40 = v22;
    v41 = a1;
    v42 = v27;
    v43 = v37;
    *v37 = 0;
    _os_log_impl(&dword_22BB2C000, v35, v36, "Sending a tuple interaction to Biome...", v37, 2u);
    v44 = v43;
    v27 = v42;
    a1 = v41;
    v22 = v40;
    v32 = v39;
    v15 = v38;
    v7 = v73;
    MEMORY[0x2318A6080](v44, -1, -1);
  }

  v45 = *(v27 + 8);
  v73 = (v27 + 8);
  v71 = v45;
  v45(v34, v74);
  v46 = sub_22BDB43E4();
  sub_22BB2F330(v46);
  (*(v47 + 16))(v24, v68, v46);
  sub_22BB336D0(v24, 0, 1, v46);
  sub_22BDB4C24();
  v48 = sub_22BDBB874();
  v49 = objc_allocWithZone(MEMORY[0x277CF1218]);
  v50 = sub_22BCAC6AC(v24, v48);
  v51 = sub_22BDB4354();
  sub_22BB2F330(v51);
  (*(v52 + 16))(v15, v70, v51);
  sub_22BB336D0(v15, 0, 1, v51);
  sub_22BB336D0(v22, 1, 1, v46);
  if (v67)
  {
    v53 = 1;
  }

  else
  {
    v53 = 2;
  }

  v54 = v72;
  v55 = sub_22BCA9930(a1, v72);
  MEMORY[0x28223BE20](v55);
  *&v66[-16] = v7;
  sub_22BCA823C(sub_22BCAD388, &v66[-32], v54);
  v56 = objc_allocWithZone(MEMORY[0x277CF11B8]);
  v57 = v50;
  v58 = sub_22BCAC76C(v15, v50, v22, 0, 0, v53, v55);
  v59 = v7[3];
  v60 = v7[4];
  sub_22BB69FEC(v7, v59);
  (*(v60 + 8))(v58, v59, v60);
  sub_22BDB6404();
  v61 = sub_22BDB77C4();
  v62 = sub_22BDBB0F4();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_22BB2C000, v61, v62, "Sent a tuple interaction to Biome", v63, 2u);
    MEMORY[0x2318A6080](v63, -1, -1);
    v64 = v57;
  }

  else
  {
    v64 = v61;
    v61 = v57;
  }

  v71(v32, v74);
  return v58;
}

id sub_22BCA9930(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v33 = sub_22BDB77D4();
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v33);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BDB7A94();
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BBE6DE0(&qword_27D8E3E20, &qword_22BDCCAB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v29 - v13;
  v15 = sub_22BDB7AD4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BB8AE8C(a1, v14, &qword_27D8E3E20, &qword_22BDCCAB0);
  if (sub_22BB3AA28(v14, 1, v15) == 1)
  {
    sub_22BB58728(v14, &qword_27D8E3E20, &qword_22BDCCAB0);
    sub_22BDB6404();
    v20 = sub_22BDB77C4();
    v21 = sub_22BDBB104();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22BB2C000, v20, v21, "FeedbackLearningBiomeDonator#donateInteractionTuples: No tuple interaction generated. Skipping Donation.", v22, 2u);
      MEMORY[0x2318A6080](v22, -1, -1);
    }

    (*(v3 + 8))(v6, v33);
    return 0;
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    v24 = sub_22BDB7AA4();
    MEMORY[0x28223BE20](v24);
    v25 = v32;
    *(&v29 - 2) = v29;
    *(&v29 - 1) = v25;
    v26 = sub_22BD655B4(sub_22BCAD4F8, (&v29 - 4), v24);

    sub_22BBED848(0, &qword_27D8E3E28, 0x277CF1220);
    sub_22BDB7AC4();
    v27 = sub_22BCAA9FC(v10);
    (*(v30 + 8))(v10, v31);
    v23 = sub_22BCAAE58(v26, v27);
    (*(v16 + 8))(v19, v15);
  }

  return v23;
}

id sub_22BCA9D1C(uint64_t a1)
{
  v2 = sub_22BDB7A94();
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v2);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BBE6DE0(&qword_27D8E3E18, &unk_22BDC1260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v32 - v7;
  v9 = sub_22BDB7BD4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v17 = *(type metadata accessor for FeedbackLearning.TypedCandidateInteraction(0) + 20);
  sub_22BDB7B84();
  v18 = sub_22BDB7BB4();
  v32 = v19;
  v33 = v18;
  v20 = *(v10 + 8);
  v20(v16, v9);
  sub_22BDB7B84();
  v21 = sub_22BDB7BC4();
  v23 = v22;
  v20(v14, v9);
  sub_22BCAD494(a1, v8);
  v24 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  sub_22BB336D0(v8, 0, 1, v24);
  v25 = sub_22BCAA450(v8);
  sub_22BB58728(v8, &qword_27D8E3E18, &unk_22BDC1260);
  v26 = objc_allocWithZone(MEMORY[0x277CF11C8]);
  v27 = sub_22BCAC938(v33, v32, v21, v23, v25);
  v28 = v34;
  sub_22BDB7B64();
  v29 = sub_22BCAA9FC(v28);
  (*(v35 + 8))(v28, v36);
  v30 = [objc_allocWithZone(MEMORY[0x277CF11D0]) initWithCandidateId:v27 userAlignment:v29];

  return v30;
}

uint64_t sub_22BCAA014@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3E30, &unk_22BDC1270);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25[-v6];
  v8 = sub_22BBE6DE0(&qword_27D8E3E18, &unk_22BDC1260);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25[-v10];
  v26 = a1;
  sub_22BD798E0();
  v12 = type metadata accessor for FeedbackLearning.TypedCandidateInteraction(0);
  if (sub_22BB3AA28(v7, 1, v12) == 1)
  {
    sub_22BB58728(v7, &qword_27D8E3E30, &unk_22BDC1270);
    v13 = 1;
  }

  else
  {
    sub_22BCAD494(v7, v11);
    sub_22BCAD598(v7, type metadata accessor for FeedbackLearning.TypedCandidateInteraction);
    v13 = 0;
  }

  v14 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  sub_22BB336D0(v11, v13, 1, v14);
  v15 = sub_22BDB7BB4();
  v17 = v16;
  v18 = sub_22BDB7BC4();
  v20 = v19;
  v21 = sub_22BCAA450(v11);
  v22 = objc_allocWithZone(MEMORY[0x277CF11C8]);
  v23 = sub_22BCAC938(v15, v17, v18, v20, v21);
  result = sub_22BB58728(v11, &qword_27D8E3E18, &unk_22BDC1260);
  *a2 = v23;
  return result;
}

uint64_t sub_22BCAA234(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = sub_22BDB7BD4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v26 - v9;
  v11 = *(type metadata accessor for FeedbackLearning.TypedCandidateInteraction(0) + 20);
  v26[1] = a1;
  sub_22BDB7B84();
  v12 = sub_22BDB7BB4();
  v14 = v13;
  v15 = *(v4 + 8);
  v27 = v3;
  v15(v10, v3);
  if (v12 == sub_22BDB7BB4() && v14 == v16)
  {
  }

  else
  {
    v18 = sub_22BDBB6D4();

    v19 = 0;
    if ((v18 & 1) == 0)
    {
      return v19 & 1;
    }
  }

  sub_22BDB7B84();
  v20 = sub_22BDB7BC4();
  v22 = v21;
  v15(v8, v27);
  if (v20 == sub_22BDB7BC4() && v22 == v23)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_22BDBB6D4();
  }

  return v19 & 1;
}

id sub_22BCAA450(uint64_t a1)
{
  v52 = a1;
  v1 = sub_22BDB77D4();
  v50 = *(v1 - 8);
  v51 = v1;
  v2 = *(v50 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BDBA994();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v5);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = &v42 - v10;
  v46 = sub_22BDBA594();
  v44 = *(v46 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BDBA014();
  v43 = *(v14 - 8);
  v15 = *(v43 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22BBE6DE0(&qword_27D8E3E18, &unk_22BDC1260);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v42 - v20;
  v22 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v42 - v27;
  sub_22BB8AE8C(v52, v21, &qword_27D8E3E18, &unk_22BDC1260);
  if (sub_22BB3AA28(v21, 1, v22) == 1)
  {
    sub_22BB58728(v21, &qword_27D8E3E18, &unk_22BDC1260);
    sub_22BDB6404();
    v29 = sub_22BDB77C4();
    v30 = sub_22BDBB114();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_22BB2C000, v29, v30, "FeedbackLearningBiomeDonator#extractInteractionCandidateType: No candidate definition, returning empty type", v31, 2u);
      MEMORY[0x2318A6080](v31, -1, -1);
    }

    (*(v50 + 8))(v4, v51);
    return sub_22BCAAEE8();
  }

  else
  {
    sub_22BCAD538(v21, v28, type metadata accessor for FeedbackLearning.CandidateDefinition);
    sub_22BCAD494(v28, v26);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v34 = v44;
        v35 = v46;
        (*(v44 + 32))(v13, v26, v46);
        v36 = v45;
        (*(v34 + 16))(v45, v13, v35);
        sub_22BB336D0(v36, 0, 1, v35);
        v32 = sub_22BCAB0A0(v36);
        sub_22BB58728(v36, &qword_27D8E2668, &unk_22BDBCCD0);
        (*(v34 + 8))(v13, v35);
      }

      else
      {
        v39 = v47;
        v38 = v48;
        v40 = v49;
        (*(v48 + 32))(v47, v26, v49);
        v32 = sub_22BCABF5C();
        (*(v38 + 8))(v39, v40);
      }
    }

    else
    {
      v37 = v43;
      (*(v43 + 32))(v17, v26, v14);
      v32 = sub_22BCAAF64();
      (*(v37 + 8))(v17, v14);
    }

    sub_22BCAD598(v28, type metadata accessor for FeedbackLearning.CandidateDefinition);
  }

  return v32;
}

uint64_t sub_22BCAA9FC(uint64_t a1)
{
  v2 = sub_22BDB77D4();
  v35 = *(v2 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BDB7A94();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v31 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  v17 = *(v7 + 16);
  v17(&v31 - v15, a1, v6);
  v18 = (*(v7 + 88))(v16, v6);
  if (v18 == *MEMORY[0x277D1D5C8])
  {
    return 1;
  }

  if (v18 == *MEMORY[0x277D1D5C0])
  {
    return 5;
  }

  if (v18 == *MEMORY[0x277D1D5D8])
  {
    return 2;
  }

  if (v18 == *MEMORY[0x277D1D5D0])
  {
    return 4;
  }

  if (v18 == *MEMORY[0x277D1D5F0])
  {
    return 3;
  }

  if (v18 == *MEMORY[0x277D1D5E8])
  {
    return 0;
  }

  if (v18 == *MEMORY[0x277D1D5E0])
  {
    return 6;
  }

  if (v18 == *MEMORY[0x277D1D5A8])
  {
    return 7;
  }

  if (v18 == *MEMORY[0x277D1D5B0])
  {
    return 8;
  }

  if (v18 != *MEMORY[0x277D1D5B8])
  {
    sub_22BDB6404();
    v17(v14, a1, v6);
    v20 = sub_22BDB77C4();
    v34 = sub_22BDBB114();
    if (os_log_type_enabled(v20, v34))
    {
      v21 = swift_slowAlloc();
      v32 = v20;
      v22 = v21;
      v33 = swift_slowAlloc();
      v36 = v33;
      *v22 = 136315138;
      v17(v11, v14, v6);
      v31 = sub_22BDBAC14();
      v24 = v23;
      v25 = *(v7 + 8);
      v25(v14, v6);
      v26 = sub_22BB32EE0(v31, v24, &v36);

      v27 = v22;
      *(v22 + 4) = v26;
      v28 = v32;
      v29 = v27;
      _os_log_impl(&dword_22BB2C000, v32, v34, "BiomeDonator#mapUserAlignment: Unknown user alignment %s", v27, 0xCu);
      v30 = v33;
      sub_22BB32FA4(v33);
      MEMORY[0x2318A6080](v30, -1, -1);
      MEMORY[0x2318A6080](v29, -1, -1);
    }

    else
    {

      v25 = *(v7 + 8);
      v25(v14, v6);
    }

    (*(v35 + 8))(v5, v2);
    v25(v16, v6);
    return 0;
  }

  return 9;
}

id sub_22BCAAE58(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_22BBED848(0, &qword_27D8E3D08, 0x277CF11C8);
  v4 = sub_22BDBAD54();

  v5 = [v3 initWithCandidateIds:v4 userAlignment:a2];

  return v5;
}

id sub_22BCAAEE8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CF11E8]) initWithExists_];
  v1 = objc_allocWithZone(MEMORY[0x277CF11D8]);
  return sub_22BCACA48(v0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
}

id sub_22BCAAF64()
{
  v0 = sub_22BDBA734();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB9FA4();
  v5 = sub_22BDBA714();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v8 = objc_allocWithZone(MEMORY[0x277CF1210]);
  v9 = sub_22BCAC9E4(v5, v7);
  v10 = objc_allocWithZone(MEMORY[0x277CF11D8]);
  return sub_22BCACA48(0, 0, 0, 0, v9, 0, 0, 0, 0, 0);
}

id sub_22BCAB0A0(uint64_t a1)
{
  v2 = sub_22BDBA424();
  v120 = *(v2 - 8);
  v121 = v2;
  v3 = *(v120 + 64);
  MEMORY[0x28223BE20](v2);
  v119 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BDBA634();
  v127 = *(v5 - 8);
  v128 = v5;
  v6 = *(v127 + 64);
  MEMORY[0x28223BE20](v5);
  v126 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BDBA4B4();
  v124 = *(v8 - 8);
  v125 = v8;
  v9 = *(v124 + 64);
  MEMORY[0x28223BE20](v8);
  v123 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BDBA3E4();
  v129 = *(v11 - 8);
  v12 = *(v129 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22BDB77D4();
  v134 = *(v15 - 8);
  v135 = v15;
  v16 = *(v134 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v118 = &v116 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v122 = &v116 - v23;
  MEMORY[0x28223BE20](v22);
  v117 = &v116 - v24;
  v25 = sub_22BDBA514();
  v131 = *(v25 - 8);
  v132 = v25;
  v26 = *(v131 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v130 = &v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v133 = &v116 - v29;
  v30 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v116 - v32;
  v34 = sub_22BDBA594();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = (&v116 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v37);
  v41 = &v116 - v40;
  v43 = v42;
  sub_22BB8AE8C(a1, v33, &qword_27D8E2668, &unk_22BDBCCD0);
  if (sub_22BB3AA28(v33, 1, v43) == 1)
  {
    sub_22BB58728(v33, &qword_27D8E2668, &unk_22BDBCCD0);
    sub_22BDB6404();
    v44 = sub_22BDB77C4();
    v45 = sub_22BDBB114();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_22BB2C000, v44, v45, "FeedbackLearningBiomeDonator#mapCandidateType: No typedValue, returning empty type", v46, 2u);
      MEMORY[0x2318A6080](v46, -1, -1);
    }

    (*(v134 + 8))(v19, v135);
    return sub_22BCAAEE8();
  }

  (*(v35 + 32))(v41, v33, v43);
  (*(v35 + 16))(v39, v41, v43);
  v48 = (*(v35 + 88))(v39, v43);
  if (v48 == *MEMORY[0x277D72A58])
  {
    (*(v35 + 96))(v39, v43);
    v49 = *v39;
    v50 = swift_projectBox();
    v52 = v131;
    v51 = v132;
    v53 = *(v131 + 16);
    v54 = v133;
    v53(v133, v50, v132);
    v55 = v130;
    v53(v130, v54, v51);
    v56 = (*(v52 + 88))(v55, v51);
    if (v56 != *MEMORY[0x277D72988] && v56 != *MEMORY[0x277D72978] && v56 != *MEMORY[0x277D729A8] && v56 != *MEMORY[0x277D729C0])
    {
      if (v56 == *MEMORY[0x277D729B8] || v56 == *MEMORY[0x277D72990] || v56 == *MEMORY[0x277D72958] || v56 == *MEMORY[0x277D72980] || v56 == *MEMORY[0x277D72968] || v56 == *MEMORY[0x277D72940] || v56 == *MEMORY[0x277D72950] || v56 == *MEMORY[0x277D72948])
      {
        goto LABEL_39;
      }

      if (v56 == *MEMORY[0x277D729D0])
      {
        v78 = [objc_allocWithZone(MEMORY[0x277CF1200]) initWithExists_];
        v79 = objc_allocWithZone(MEMORY[0x277CF11D8]);
        v115 = v78;
        v80 = 0;
LABEL_48:
        v81 = 0;
LABEL_49:
        v82 = 0;
LABEL_63:
        v92 = sub_22BCACA48(0, 0, 0, 0, 0, v80, v81, v82, v115, 0);
LABEL_64:
        v47 = v92;
        v93 = *(v52 + 8);
        v93(v54, v51);
        (*(v35 + 8))(v41, v43);
        v93(v55, v51);
        goto LABEL_65;
      }

      if (v56 == *MEMORY[0x277D729B0])
      {
        v90 = [objc_allocWithZone(MEMORY[0x277CF11F8]) initWithExists_];
        v91 = objc_allocWithZone(MEMORY[0x277CF11D8]);
        v115 = 0;
        v80 = 0;
        v81 = 0;
        v82 = v90;
        goto LABEL_63;
      }

      if (v56 == *MEMORY[0x277D72998])
      {
        v101 = [objc_allocWithZone(MEMORY[0x277CF11F0]) initWithExists_];
        v102 = objc_allocWithZone(MEMORY[0x277CF11D8]);
        v115 = 0;
        v80 = 0;
        v81 = v101;
        goto LABEL_49;
      }

      if (v56 == *MEMORY[0x277D72970])
      {
        v108 = [objc_allocWithZone(MEMORY[0x277CF11C0]) initWithExists_];
        v109 = objc_allocWithZone(MEMORY[0x277CF11D8]);
        v115 = 0;
        v80 = v108;
        goto LABEL_48;
      }

      if (v56 == *MEMORY[0x277D72960] || v56 == *MEMORY[0x277D72938])
      {
LABEL_39:
        (*(v52 + 8))(v55, v51);
      }

      else if (v56 != *MEMORY[0x277D729A0])
      {
        sub_22BDB6404();
        v111 = sub_22BDB77C4();
        v112 = sub_22BDBB114();
        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          *v113 = 0;
          _os_log_impl(&dword_22BB2C000, v111, v112, "FeedbackLearningBiomeDonator#mapCandidateType: Unknown primitive type, returning empty type", v113, 2u);
          v114 = v113;
          v54 = v133;
          MEMORY[0x2318A6080](v114, -1, -1);
        }

        (*(v134 + 8))(v117, v135);
        v92 = sub_22BCAAEE8();
        goto LABEL_64;
      }
    }

    v67 = [objc_allocWithZone(MEMORY[0x277CF11E8]) initWithExists_];
    v68 = objc_allocWithZone(MEMORY[0x277CF11D8]);
    v47 = sub_22BCACA48(0, v67, 0, 0, 0, 0, 0, 0, 0, 0);
    (*(v52 + 8))(v54, v51);
    (*(v35 + 8))(v41, v43);
LABEL_65:

    return v47;
  }

  if (v48 == *MEMORY[0x277D729E8])
  {
    (*(v35 + 96))(v39, v43);
    v69 = *v39;
    v70 = swift_projectBox();
    v71 = v129;
    (*(v129 + 16))(v14, v70, v11);
    v47 = sub_22BCABFD8();
    (*(v71 + 8))(v14, v11);
LABEL_45:
    (*(v35 + 8))(v41, v43);
    goto LABEL_65;
  }

  if (v48 == *MEMORY[0x277D72A38])
  {
    (*(v35 + 96))(v39, v43);
    v72 = *v39;
    v73 = swift_projectBox();
    v75 = v123;
    v74 = v124;
    v76 = v125;
    (*(v124 + 16))(v123, v73, v125);
    v77 = v126;
    sub_22BDBA3D4();
    v47 = sub_22BCAC36C(v77);
    (*(v127 + 8))(v77, v128);
    (*(v74 + 8))(v75, v76);
    goto LABEL_45;
  }

  if (v48 == *MEMORY[0x277D729E0] || v48 == *MEMORY[0x277D72A30] || v48 == *MEMORY[0x277D72A40])
  {
    goto LABEL_58;
  }

  if (v48 == *MEMORY[0x277D729F8])
  {
    (*(v35 + 96))(v39, v43);
    v95 = *v39;
    v96 = swift_projectBox();
    v98 = v119;
    v97 = v120;
    v99 = v121;
    (*(v120 + 16))(v119, v96, v121);
    v100 = v126;
    sub_22BDBA3D4();
    v47 = sub_22BCAC36C(v100);
    (*(v127 + 8))(v100, v128);
    (*(v97 + 8))(v98, v99);
    goto LABEL_45;
  }

  if (v48 == *MEMORY[0x277D72A60])
  {
LABEL_58:
    v85 = *(v35 + 8);
    v85(v39, v43);
    v86 = v122;
    sub_22BDB6404();
    v87 = sub_22BDB77C4();
    v88 = sub_22BDBB114();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_22BB2C000, v87, v88, "FeedbackLearningBiomeDonator#mapCandidateType: Received unsupported type, returning empty type", v89, 2u);
      MEMORY[0x2318A6080](v89, -1, -1);
    }

    (*(v134 + 8))(v86, v135);
    v47 = sub_22BCAAEE8();
    v85(v41, v43);
  }

  else
  {
    v103 = v118;
    sub_22BDB6404();
    v104 = sub_22BDB77C4();
    v105 = sub_22BDBB114();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_22BB2C000, v104, v105, "FeedbackLearningBiomeDonator#mapCandidateType: Received unsupported type, returning empty type", v106, 2u);
      MEMORY[0x2318A6080](v106, -1, -1);
    }

    (*(v134 + 8))(v103, v135);
    v47 = sub_22BCAAEE8();
    v107 = *(v35 + 8);
    v107(v41, v43);
    v107(v39, v43);
  }

  return v47;
}

id sub_22BCABF5C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CF1208]) initWithExists_];
  v1 = objc_allocWithZone(MEMORY[0x277CF11D8]);
  return sub_22BCACA48(0, 0, 0, v0, 0, 0, 0, 0, 0, 0);
}

id sub_22BCABFD8()
{
  v0 = sub_22BDBA634();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v39 - v6;
  sub_22BDBA3D4();
  v8 = (*(v1 + 88))(v7, v0);
  if (v8 != *MEMORY[0x277D72D50] && v8 != *MEMORY[0x277D72D30])
  {
    if (v8 == *MEMORY[0x277D72D28])
    {
      (*(v1 + 96))(v7, v0);
      v21 = *v7;
      v22 = *(*v7 + 16);
      v23 = *(*v7 + 24);
      v24 = *(v21 + 32);
      v25 = *(v21 + 40);
      objc_allocWithZone(MEMORY[0x277CF11E0]);

      v26 = sub_22BCACB14(v22, v23, v24, v25);
      v27 = objc_allocWithZone(MEMORY[0x277CF11D8]);
      v20 = sub_22BCACA48(0, 0, 0, 0, 0, 0, 0, 0, 0, v26);

      return v20;
    }

    if (v8 != *MEMORY[0x277D72D18])
    {
      sub_22BDBA3D4();
      v28 = sub_22BDBA5F4();
      v30 = v29;
      v31 = *(v1 + 8);
      v31(v5, v0);
      v32 = sub_22BDBA3B4();
      v34 = v33;
      v35 = objc_allocWithZone(MEMORY[0x277CF11E0]);
      v36 = sub_22BCACB14(v28, v30, v32, v34);
      v37 = objc_allocWithZone(MEMORY[0x277CF11D8]);
      v20 = sub_22BCACA48(0, 0, 0, 0, 0, 0, 0, 0, 0, v36);
      v31(v7, v0);
      return v20;
    }
  }

  v10 = *(v1 + 8);
  v10(v7, v0);
  sub_22BDBA3D4();
  v11 = sub_22BDBA5F4();
  v13 = v12;
  v10(v5, v0);
  v14 = sub_22BDBA3B4();
  v16 = v15;
  v17 = objc_allocWithZone(MEMORY[0x277CF11E0]);
  v18 = sub_22BCACB14(v11, v13, v14, v16);
  v19 = objc_allocWithZone(MEMORY[0x277CF11D8]);
  return sub_22BCACA48(0, 0, 0, 0, 0, 0, 0, 0, 0, v18);
}

id sub_22BCAC36C(uint64_t a1)
{
  v2 = sub_22BDB77D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BDBA634();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 != *MEMORY[0x277D72D50] && v12 != *MEMORY[0x277D72D30])
  {
    if (v12 == *MEMORY[0x277D72D28])
    {
      (*(v8 + 96))(v11, v7);
      v18 = *(*v11 + 16);
      v19 = *(*v11 + 24);
      v20 = *(*v11 + 32);
      v21 = *(*v11 + 40);
      objc_allocWithZone(MEMORY[0x277CF11E0]);

      v22 = sub_22BCACB14(v18, v19, v20, v21);
      v23 = objc_allocWithZone(MEMORY[0x277CF11D8]);
      v17 = sub_22BCACA48(0, 0, 0, 0, 0, 0, 0, 0, 0, v22);

      return v17;
    }

    if (v12 != *MEMORY[0x277D72D18])
    {
      v17 = sub_22BCAAEE8();
      (*(v8 + 8))(v11, v7);
      return v17;
    }
  }

  (*(v8 + 8))(v11, v7);
  sub_22BDB6404();
  v14 = sub_22BDB77C4();
  v15 = sub_22BDBB114();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_22BB2C000, v14, v15, "FeedbackLearningBiomeDonator#getCustomInteractionCandidateType: Received unsupported type, returning empty type", v16, 2u);
    MEMORY[0x2318A6080](v16, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return sub_22BCAAEE8();
}

id sub_22BCAC6AC(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_22BDB43E4();
  v7 = 0;
  if (sub_22BB3AA28(a1, 1, v6) != 1)
  {
    v7 = sub_22BDB43A4();
    (*(*(v6 - 8) + 8))(a1, v6);
  }

  v8 = [v3 initWithSessionId:v7 statementIndex:a2];

  return v8;
}

id sub_22BCAC76C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, void *a7)
{
  v8 = v7;
  v14 = sub_22BDB4354();
  v15 = 0;
  if (sub_22BB3AA28(a1, 1, v14) != 1)
  {
    v15 = sub_22BDB4314();
    (*(*(v14 - 8) + 8))(a1, v14);
  }

  v16 = sub_22BDB43E4();
  v17 = 0;
  if (sub_22BB3AA28(a3, 1, v16) != 1)
  {
    v17 = sub_22BDB43A4();
    (*(*(v16 - 8) + 8))(a3, v16);
  }

  if (a5)
  {
    v18 = sub_22BDBABE4();
  }

  else
  {
    v18 = 0;
  }

  sub_22BBED848(0, &qword_27D8E3D00, 0x277CF11D0);
  v19 = sub_22BDBAD54();

  v20 = [v8 initWithAbsoluteTimestamp:v15 transcriptStatementId:a2 appIntentInvocationUUID:v17 sirikitIntentItemId:v18 trigger:a6 tupleInteraction:a7 candidateInteractions:v19];

  return v20;
}

id sub_22BCAC938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_22BDBABE4();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_22BDBABE4();

LABEL_6:
  v10 = [v5 initWithIdentifier:v8 bundleId:v9 type:a5];

  return v10;
}

id sub_22BCAC9E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_22BDBABE4();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithBundleId_];

  return v4;
}

id sub_22BCACA48(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v11 = v10;
  v21 = [v11 initWithUnknown:a1 primitive:a2 device:a3 schema:a4 tool:a5 app:a6 file:a7 person:a8 placemark:a9 custom:a10];

  return v21;
}

id sub_22BCACB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = sub_22BDBABE4();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_22BDBABE4();

LABEL_6:
  v8 = [v4 initWithBundleId:v6 typeName:v7];

  return v8;
}

uint64_t (*sub_22BCACBB4(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v6 = sub_22BD5B8F8(a3);
  sub_22BD72584(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v8 = MEMORY[0x2318A5340](a2, a3);
  }

  *a1 = v8;
  return sub_22BCACC40;
}

uint64_t sub_22BCACC48(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v83 = a8;
  v76 = a6;
  v67 = a3;
  v68 = a5;
  v85 = a2;
  v86 = a4;
  v72 = a1;
  v80 = sub_22BDB5714();
  v78 = *(v80 - 8);
  v9 = *(v78 + 64);
  MEMORY[0x28223BE20](v80);
  v74 = &v60[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v77 = sub_22BDB6BF4();
  v75 = *(v77 - 8);
  v11 = *(v75 + 64);
  MEMORY[0x28223BE20](v77);
  v73 = &v60[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v81 = sub_22BDB4354();
  v79 = *(v81 - 8);
  v13 = *(v79 + 64);
  MEMORY[0x28223BE20](v81);
  v84 = &v60[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for FeedbackLearningInteractionRecord();
  v16 = *(v15 - 8);
  v66 = v15 - 8;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v82 = &v60[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_22BDB6C34();
  v20 = *(v19 - 8);
  v21 = v20[8];
  MEMORY[0x28223BE20](v19);
  v23 = &v60[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_22BDB6C24();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v60[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = sub_22BDB43E4();
  v70 = *(v29 - 8);
  v71 = v29;
  v30 = *(v70 + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v60[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = *(a7 - 8);
  v34 = *(v69 + 64);
  MEMORY[0x28223BE20](v31);
  v37 = *(v36 + 16);
  v65 = &v60[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = a7;
  v37(v65, v67, a7);
  v61 = *v68;
  v63 = v33;
  sub_22BDB43D4();
  sub_22BDB6A04();
  sub_22BDB69F4();
  (*(v25 + 16))(v23, v28, v24);
  v38 = *MEMORY[0x277D1F898];
  v67 = v20[13];
  v62 = v19;
  v67(v23, v38, v19);
  sub_22BCA6E9C();
  v39 = v20[1];
  v68 = (v20 + 1);
  v39(v23, v19);
  (*(v25 + 8))(v28, v24);
  v40 = v66;
  v41 = *(v66 + 28);
  v42 = v82;
  v43 = v72;
  sub_22BD18CBC(v72, &v82[v41]);
  v44 = sub_22BD19F48(v43);
  v45 = type metadata accessor for FeedbackLearning.TaskEvaluation(0);
  v46 = *(v45 + 24);
  v47 = sub_22BDB7A84();
  (*(*(v47 - 8) + 16))(v42, v43 + v46, v47);
  *&v42[*(v40 + 32)] = v44;
  v48 = v84;
  sub_22BDB7A64();
  v49 = *(v45 + 20);
  v87[0] = v61;
  v50 = FeedbackLearningBiomeDonator.donateInteractionTuples(tuple:candidates:sessionId:absoluteTimestamp:statementId:trigger:)(&v42[v41], v44, v43, v48, v43 + v49, v87);
  sub_22BDB9994();
  v51 = v74;
  sub_22BDB5704();

  v52 = v73;
  sub_22BCA4138();
  (*(v78 + 8))(v51, v80);
  v53 = v75;
  v54 = v77;
  (*(v75 + 16))(v23, v52, v77);
  v55 = v62;
  v67(v23, *MEMORY[0x277D1F890], v62);
  v56 = v63;
  v57 = v65;
  v58 = v64;
  sub_22BCA6E9C();

  v39(v23, v55);
  (*(v53 + 8))(v52, v54);
  (*(v79 + 8))(v84, v81);
  (*(v70 + 8))(v56, v71);
  sub_22BCAD598(v82, type metadata accessor for FeedbackLearningInteractionRecord);
  return (*(v69 + 8))(v57, v58);
}

id sub_22BCAD388@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  result = sub_22BCA9D1C(a1);
  *a2 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for FeedbackLearningBiomeDonator.FeedbackLearningBiomeStream(_BYTE *result, int a2, int a3)
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

uint64_t sub_22BCAD494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BCAD4F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_22BCAA014(a1, a2);
}

uint64_t sub_22BCAD538(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22BB2F330(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22BCAD598(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BB2F330(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BCAD5F0(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E3E00, &qword_22BDC1248);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v95 - v4;
  v6 = _s16CandidateSummaryVMa(0);
  v115 = *(v6 - 8);
  v7 = *(v115 + 64);
  MEMORY[0x28223BE20](v6);
  v114 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BB30B70();
  MEMORY[0x28223BE20](v9);
  sub_22BB2F384();
  v112 = v10;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v11);
  sub_22BB2F384();
  v111 = v12;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v13);
  sub_22BB2F384();
  v110 = v14;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v15);
  sub_22BB2F384();
  v97 = v16;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v17);
  sub_22BB2F384();
  v107 = v18;
  sub_22BB30B70();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v95 - v21;
  MEMORY[0x28223BE20](v20);
  v96 = &v95 - v23;
  v105 = sub_22BBE6DE0(&qword_27D8E3E40, &qword_22BDC1288);
  v24 = sub_22BB2F330(v105);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v95 - v27;

  v98 = a1;
  v30 = sub_22BCADEE8(v29);
  v31 = v30 + 64;
  v32 = 1 << *(v30 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v30 + 64);
  v35 = (v32 + 63) >> 6;
  v106 = v30;

  v37 = 0;
  v100 = MEMORY[0x277D84F90];
  v101 = v28;
  v103 = v31;
  v104 = v35;
  v102 = v5;
  v113 = v6;
LABEL_4:
  v38 = v37;
  v39 = v5;
  if (!v34)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v40 = v6;
    v37 = v38;
LABEL_10:
    v41 = __clz(__rbit64(v34)) | (v37 << 6);
    v42 = v106;
    v43 = *(v106 + 48);
    v44 = sub_22BDB7B44();
    sub_22BB2F330(v44);
    (*(v45 + 16))(v28, v43 + *(v45 + 72) * v41);
    v46 = *(*(v42 + 56) + 8 * v41);
    *&v28[*(v105 + 48)] = v46;
    v47 = *(v46 + 16);
    if (v47)
    {
      break;
    }

LABEL_74:
    v6 = v40;
    sub_22BB336D0(v39, 1, 1, v40);
LABEL_91:
    v34 &= v34 - 1;
    sub_22BB58728(v28, &qword_27D8E3E40, &qword_22BDC1288);
    v88 = sub_22BB3AA28(v39, 1, v6) == 1;
    v35 = v104;
    if (!v88)
    {
      sub_22BCAE924(v39, v96);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5 = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v92 = *(v100 + 16);
        sub_22BBD5D64();
        v100 = v93;
      }

      v90 = *(v100 + 16);
      if (v90 >= *(v100 + 24) >> 1)
      {
        sub_22BBD5D64();
        v100 = v94;
      }

      v91 = v100;
      *(v100 + 16) = v90 + 1;
      result = sub_22BCAE924(v96, v91 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v90);
      goto LABEL_4;
    }

    result = sub_22BB58728(v39, &qword_27D8E3E00, &qword_22BDC1248);
    v38 = v37;
    if (!v34)
    {
LABEL_6:
      while (1)
      {
        v37 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_102;
        }

        if (v37 >= v35)
        {

          return v100;
        }

        v34 = *(v31 + 8 * v37);
        ++v38;
        if (v34)
        {
          v40 = v6;
          goto LABEL_10;
        }
      }
    }
  }

  v48 = *(v40 + 32);
  v49 = (*(v115 + 80) + 32) & ~*(v115 + 80);
  v50 = v46 + v49;
  v116 = v46;

  v51 = 0;
  while (v51 < *(v116 + 16))
  {
    v52 = *(v115 + 72);
    sub_22BCAE790(v50 + v52 * v51, v22);
    v53 = v22[v48];
    if (v53 >> 6)
    {
      if (v53 >> 6 == 1)
      {
        if ((v53 & 0x3F) != 0)
        {
          goto LABEL_75;
        }
      }

      else if (v53 != 128)
      {
        result = sub_22BCAE7F4(v22);
        if (v53 == 129)
        {
          goto LABEL_76;
        }

        goto LABEL_21;
      }
    }

    else if (v22[v48])
    {
LABEL_75:
      result = sub_22BCAE7F4(v22);
LABEL_76:
      v83 = 0;
      v84 = *(v113 + 32);
      while (1)
      {
        if (v83 >= *(v116 + 16))
        {
          goto LABEL_103;
        }

        v85 = v114;
        sub_22BCAE790(v50, v114);
        v86 = *(v85 + v84);
        if (v86 >> 6)
        {
          if (v86 >> 6 == 1)
          {
            if ((v86 & 0x3F) == 0)
            {
              goto LABEL_87;
            }
          }

          else if (v86 == 128)
          {
LABEL_87:
            sub_22BCAE7F4(v114);
            v39 = v102;
            v6 = v113;
            sub_22BB336D0(v102, 1, 1, v113);
            goto LABEL_88;
          }
        }

        else if (!*(v85 + v84))
        {
          goto LABEL_87;
        }

        ++v83;
        result = sub_22BCAE7F4(v114);
        v50 += v52;
        if (v47 == v83)
        {
          v87 = v98;

          v39 = v102;
          sub_22BCAE2D4(v116, v87, v102);
          v6 = v113;
LABEL_88:
          v28 = v101;
          goto LABEL_90;
        }
      }
    }

    result = sub_22BCAE7F4(v22);
LABEL_21:
    if (v47 == ++v51)
    {
      v99 = v49;
      v54 = *(v116 + 16);
      v28 = v101;
      v39 = v102;
      v40 = v113;
      v31 = v103;
      if (!v54)
      {
        goto LABEL_74;
      }

      sub_22BCAE790(v50, v107);
      v55 = v54 - 1;
      if (v54 != 1)
      {
        v95 = v22;
        v56 = *(v40 + 36);
        v108 = *(v40 + 32);
        v109 = v56;
        v57 =  + v99 + v52;
        v58 = v97;
        v59 = v107;
        while (1)
        {
          sub_22BCAE790(v57, v58);
          v60 = *(v59 + v109);
          v61 = *(v58 + v109);
          v62 = *(v59 + v108);
          v63 = v62 >> 6;
          if (v62 >> 6)
          {
            if (v63 == 1)
            {
              LOBYTE(v64) = 0;
              LOBYTE(v65) = 0;
              LOBYTE(v66) = 0;
              v67 = (v62 & 0x3F) == 2;
              v68 = (v62 & 0x3F) != 2;
            }

            else
            {
              v67 = 0;
              v68 = 0;
              v64 = 8u >> (v62 & 0xF);
              v65 = 4u >> (v62 & 0xF);
              v66 = 3u >> (v62 & 0xF);
            }
          }

          else
          {
            LOBYTE(v64) = 0;
            LOBYTE(v65) = 0;
            LOBYTE(v66) = 0;
            v68 = v62 < 2;
            v67 = v62 > 1;
          }

          v69 = *(v58 + v108);
          v70 = v69 >> 6;
          if (v69 >> 6)
          {
            if (v70 != 1)
            {
              switch(*(v58 + v108))
              {
                case 0x82:
                  if (v65)
                  {
                    goto LABEL_46;
                  }

                  goto LABEL_38;
                case 0x83:
                  if (v64)
                  {
                    goto LABEL_46;
                  }

                  goto LABEL_38;
                default:
                  if (v66)
                  {
                    goto LABEL_46;
                  }

                  goto LABEL_38;
              }
            }

            if ((v69 & 0x3F) != 2)
            {
              if (v68)
              {
                goto LABEL_46;
              }

              goto LABEL_38;
            }
          }

          else if (v69 < 2)
          {
            if (v68)
            {
              goto LABEL_46;
            }

            goto LABEL_38;
          }

          if (v67)
          {
LABEL_46:
            v74 = sub_22BDB4BF4();
            v59 = v107;
            if (v74)
            {
              v75 = v58;
            }

            else
            {
              v75 = v107;
            }

            goto LABEL_66;
          }

LABEL_38:
          if (v63)
          {
            if (v63 == 1)
            {
              LOBYTE(v63) = 0;
              LOBYTE(v71) = 0;
              v72 = 0;
              v73 = (v62 & 0x3F) == 2;
              if (v70)
              {
                goto LABEL_53;
              }
            }

            else
            {
              v76 = v62 & 0xF;
              v63 = 8u >> v76;
              v71 = 0xCu >> v76;
              v72 = 1;
              v73 = 1;
              if (v70)
              {
LABEL_53:
                if (v70 != 1)
                {
                  switch(*(v58 + v108))
                  {
                    case 0x82:
                      v75 = v58;
                      if ((v63 & 1) == 0)
                      {
                        goto LABEL_65;
                      }

                      break;
                    case 0x83:
                      goto LABEL_65;
                    default:
                      v75 = v58;
                      if ((v71 & 1) == 0)
                      {
                        goto LABEL_65;
                      }

                      break;
                  }

                  goto LABEL_66;
                }

                if ((v69 & 0x3F) != 2)
                {
                  v75 = v58;
                  if (v73)
                  {
                    goto LABEL_66;
                  }

                  goto LABEL_65;
                }

                goto LABEL_61;
              }
            }
          }

          else
          {
            LOBYTE(v71) = 0;
            v72 = 0;
            v73 = v62 > 1;
            if (v70)
            {
              goto LABEL_53;
            }
          }

          if (v69 < 2)
          {
            v75 = v58;
            if (v73)
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          }

LABEL_61:
          v75 = v58;
          if (v72)
          {
            goto LABEL_66;
          }

LABEL_65:
          v75 = v59;
LABEL_66:
          v77 = v61 | v60;
          v78 = v112;
          sub_22BCAE790(v75, v112);
          v79 = v111;
          sub_22BCAE924(v78, v111);
          v80 = v79;
          v81 = v110;
          sub_22BCAE924(v80, v110);
          v82 = v113;
          *(v81 + *(v113 + 36)) = v77;
          sub_22BCAE7F4(v59);
          sub_22BCAE7F4(v58);
          sub_22BCAE924(v81, v59);
          v57 += v52;
          if (!--v55)
          {
            v40 = v82;

            v28 = v101;
            v39 = v102;
            v22 = v95;
            break;
          }
        }
      }

      sub_22BCAE924(v107, v39);
      v6 = v40;
      sub_22BB336D0(v39, 0, 1, v40);
LABEL_90:
      v31 = v103;
      goto LABEL_91;
    }
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
  return result;
}

uint64_t sub_22BCADEE8(uint64_t a1)
{
  v2 = sub_22BDB7B44();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v50 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s16CandidateSummaryVMa(0);
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v44 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v37 - v10;
  v11 = 0;
  v12 = MEMORY[0x277D84F98];
  v51 = MEMORY[0x277D84F98];
  v48 = *(a1 + 16);
  v45 = (v3 + 16);
  v40 = v3 + 32;
  v41 = v3;
  v39 = (v3 + 8);
  v38 = xmmword_22BDBCBD0;
  v42 = v2;
  v43 = a1;
  while (1)
  {
    if (v48 == v11)
    {

      return v12;
    }

    if (v11 >= *(a1 + 16))
    {
      break;
    }

    v13 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v14 = *(v46 + 72);
    v15 = v49;
    sub_22BCAE790(a1 + v13 + v14 * v11, v49);
    (*v45)(v50, v15 + *(v47 + 28), v2);
    sub_22BD84584();
    v18 = v17;
    v19 = v12[2];
    v20 = (v16 & 1) == 0;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_19;
    }

    v21 = v16;
    if (v12[3] < v19 + v20)
    {
      sub_22BD5BC2C();
      v12 = v51;
      sub_22BD84584();
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_21;
      }

      v18 = v22;
    }

    if (v21)
    {
      (*v39)(v50, v2);
      v24 = v12[7];
      sub_22BCAE924(v49, v44);
      v25 = *(v24 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v18) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = *(v25 + 16);
        sub_22BBD5D64();
        v25 = v34;
        *(v24 + 8 * v18) = v34;
      }

      v27 = *(v25 + 16);
      if (v27 >= *(v25 + 24) >> 1)
      {
        sub_22BBD5D64();
        v25 = v35;
        *(v24 + 8 * v18) = v35;
      }

      a1 = v43;
      v28 = v44;
      *(v25 + 16) = v27 + 1;
      sub_22BCAE924(v28, v25 + v13 + v27 * v14);
      v2 = v42;
    }

    else
    {
      sub_22BBE6DE0(&qword_27D8E3E48, &unk_22BDC2FF0);
      v29 = swift_allocObject();
      *(v29 + 16) = v38;
      sub_22BCAE924(v49, v29 + v13);
      v12[(v18 >> 6) + 8] |= 1 << v18;
      (*(v41 + 32))(v12[6] + *(v41 + 72) * v18, v50, v2);
      *(v12[7] + 8 * v18) = v29;
      v30 = v12[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_20;
      }

      v12[2] = v32;
    }

    ++v11;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t sub_22BCAE2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = _s16CandidateSummaryVMa(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v59 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v54 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v54 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v54 - v17;
  MEMORY[0x28223BE20](v16);
  v21 = &v54 - v20;
  if (*(a1 + 16))
  {
    v55 = a3;
    v56 = a2;
    v22 = v19;
    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);

    v54 = sub_22BCAE87C(1, a1, sub_22BD945B8, sub_22BD4630C);
    v58 = v24;
    v26 = v25;
    v28 = v27;
    result = sub_22BCAE790(a1 + v23, v21);
    v30 = (v28 >> 1) - v26;
    if (v28 >> 1 == v26)
    {
LABEL_3:
      swift_unknownObjectRelease();
      v31 = v55;
      sub_22BCAE924(v21, v55);
      sub_22BB336D0(v31, 0, 1, v6);
    }

    if ((v28 >> 1) > v26)
    {
      v32 = *(v22 + 72);
      v33 = v58 + v26 * v32;
      v34 = *(v6 + 32);
      v35 = *(v6 + 36);
      v57 = v32;
      v58 = v6;
      while (1)
      {
        sub_22BCAE790(v33, v18);
        v36 = v21[v34];
        v37 = v36 >> 6;
        if (v36 >> 6)
        {
          if (v37 == 1)
          {
            LOBYTE(v38) = 0;
            LOBYTE(v39) = 0;
            LOBYTE(v40) = 0;
            v41 = (v36 & 0x3F) == 2;
            v42 = (v36 & 0x3F) != 2;
          }

          else
          {
            v41 = 0;
            v42 = 0;
            v38 = 8u >> (v36 & 0xF);
            v39 = 4u >> (v36 & 0xF);
            v40 = 3u >> (v36 & 0xF);
          }
        }

        else
        {
          LOBYTE(v38) = 0;
          LOBYTE(v39) = 0;
          LOBYTE(v40) = 0;
          v42 = v36 < 2;
          v41 = v36 > 1;
        }

        v43 = *&v21[v35];
        v44 = *&v18[v35];
        v45 = v18[v34];
        v46 = v45 >> 6;
        if (v45 >> 6)
        {
          if (v46 != 1)
          {
            switch(v18[v34])
            {
              case -126:
                if (v39)
                {
                  goto LABEL_26;
                }

                goto LABEL_18;
              case -125:
                if (v38)
                {
                  goto LABEL_26;
                }

                goto LABEL_18;
              default:
                if (v40)
                {
                  goto LABEL_26;
                }

                goto LABEL_18;
            }
          }

          if ((v45 & 0x3F) != 2)
          {
            if (v42)
            {
              goto LABEL_26;
            }

            goto LABEL_18;
          }
        }

        else if (v45 < 2)
        {
          if (v42)
          {
            goto LABEL_26;
          }

          goto LABEL_18;
        }

        if (v41)
        {
LABEL_26:
          if (sub_22BDB4BF4())
          {
            v50 = v18;
          }

          else
          {
            v50 = v21;
          }

          goto LABEL_46;
        }

LABEL_18:
        if (v37)
        {
          if (v37 == 1)
          {
            LOBYTE(v37) = 0;
            LOBYTE(v47) = 0;
            v48 = 0;
            v49 = (v36 & 0x3F) == 2;
            if (v46)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v51 = v36 & 0xF;
            v37 = 8u >> v51;
            v47 = 0xCu >> v51;
            v48 = 1;
            v49 = 1;
            if (v46)
            {
LABEL_33:
              if (v46 != 1)
              {
                switch(v18[v34])
                {
                  case -126:
                    v50 = v18;
                    if ((v37 & 1) == 0)
                    {
                      goto LABEL_45;
                    }

                    break;
                  case -125:
                    goto LABEL_45;
                  default:
                    v50 = v18;
                    if ((v47 & 1) == 0)
                    {
                      goto LABEL_45;
                    }

                    break;
                }

                goto LABEL_46;
              }

              if ((v45 & 0x3F) != 2)
              {
                v50 = v18;
                if (v49)
                {
                  goto LABEL_46;
                }

                goto LABEL_45;
              }

              goto LABEL_41;
            }
          }
        }

        else
        {
          LOBYTE(v47) = 0;
          v48 = 0;
          v49 = v36 > 1;
          if (v46)
          {
            goto LABEL_33;
          }
        }

        if (v45 < 2)
        {
          v50 = v18;
          if (v49)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }

LABEL_41:
        v50 = v18;
        if (v48)
        {
          goto LABEL_46;
        }

LABEL_45:
        v50 = v21;
LABEL_46:
        v52 = v44 | v43;
        v53 = v59;
        sub_22BCAE790(v50, v59);
        sub_22BCAE924(v53, v12);
        sub_22BCAE924(v12, v15);
        v6 = v58;
        *&v15[*(v58 + 36)] = v52;
        sub_22BCAE7F4(v21);
        sub_22BCAE7F4(v18);
        sub_22BCAE924(v15, v21);
        v33 += v57;
        if (!--v30)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
  }

  else
  {
    sub_22BB336D0(a3, 1, 1, v6);
  }

  return result;
}