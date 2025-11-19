uint64_t sub_22BC2DE9C()
{
  sub_22BB2F35C();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  sub_22BC54414();
  v7 = sub_22BDB43E4();
  v1[14] = v7;
  sub_22BB30434(v7);
  v1[15] = v8;
  v10 = *(v9 + 64);
  v1[16] = sub_22BB30ACC();
  v11 = type metadata accessor for InvocationOptions(0);
  sub_22BB2F0C8(v11);
  v13 = *(v12 + 64);
  v1[17] = sub_22BB30ACC();
  v14 = sub_22BDBA014();
  v1[18] = v14;
  sub_22BB30434(v14);
  v1[19] = v15;
  v17 = *(v16 + 64);
  v1[20] = sub_22BB30ACC();
  v18 = sub_22BDB8E14();
  v1[21] = v18;
  sub_22BB30434(v18);
  v1[22] = v19;
  v21 = *(v20 + 64);
  v1[23] = sub_22BB30ACC();
  v22 = sub_22BDB9564();
  v1[24] = v22;
  sub_22BB30434(v22);
  v1[25] = v23;
  v25 = *(v24 + 64);
  v1[26] = sub_22BBB79B0();
  v1[27] = swift_task_alloc();
  v26 = sub_22BDB77D4();
  v1[28] = v26;
  sub_22BB30434(v26);
  v1[29] = v27;
  v29 = *(v28 + 64);
  v1[30] = sub_22BB30ACC();
  sub_22BB36F5C();
  v1[31] = *(v30 + 88);
  sub_22BB36F5C();
  v1[32] = *(v31 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[33] = AssociatedTypeWitness;
  sub_22BB30434(AssociatedTypeWitness);
  v1[34] = v33;
  v35 = *(v34 + 64);
  v1[35] = sub_22BB3307C();
  v1[36] = swift_task_alloc();
  v36 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v36, v37, v38);
}

uint64_t sub_22BC2E13C()
{
  v1 = v0[36];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[13];
  v5 = v0[8];
  v6 = sub_22BDB9524();
  v7 = *(v3 + 32);
  v8 = v4 + *(*v4 + 104);
  v9 = sub_22BB2F0E0();
  v10(v9);
  sub_22BC533EC(sub_22BC533D0, v4, v6);
  sub_22BB313B4();

  v83 = v8;
  v11 = v0[30];
  v12 = v0[27];
  v13 = v0[24];
  v14 = v0[25];
  v15 = v0[8];
  sub_22BDB63F4();
  v16 = *(v14 + 16);
  v17 = sub_22BB33728();
  v82 = v18;
  (v18)(v17);
  v19 = sub_22BDB77C4();
  sub_22BDBB134();
  sub_22BB3E2A4();
  v21 = os_log_type_enabled(v19, v20);
  v23 = v0[29];
  v22 = v0[30];
  v24 = v0[27];
  v26 = v0[24];
  v25 = v0[25];
  if (v21)
  {
    v89 = v0[28];
    v85 = v15;
    v28 = v0[22];
    v27 = v0[23];
    v80 = v0[21];
    v29 = sub_22BB31AD8();
    sub_22BB314C8();
    *v29 = 136315138;
    v87 = v22;
    sub_22BDB9544();
    v30 = sub_22BDB8E04();
    (*(v28 + 8))(v27, v80);
    v31 = *(v25 + 8);
    v32 = sub_22BB2F12C();
    v33(v32);
    v34 = sub_22BB2F3F0();
    sub_22BB32EE0(v34, v35, v36);
    sub_22BBBE854();

    *(v29 + 4) = v30;
    sub_22BC54ADC(&dword_22BB2C000, v37, v85, "DefaultRuntime: No active tool execution found, executing %s");
    sub_22BC53B6C();
    sub_22BB2F194();

    (*(v23 + 8))(v87, v89);
  }

  else
  {

    v38 = *(v25 + 8);
    v39 = sub_22BB2F12C();
    v40(v39);
    v41 = *(v23 + 8);
    v42 = sub_22BB2F324();
    v44(v42, v43);
  }

  v72 = v0[36];
  v84 = v0[35];
  v45 = v0[33];
  v73 = v0[34];
  v46 = v0[31];
  v47 = v0[32];
  v78 = v0[30];
  v79 = v0[27];
  v90 = v0[26];
  v69 = v0[24];
  v81 = v0[23];
  v48 = v0[19];
  v86 = v0[20];
  v65 = v0[18];
  v88 = v0[17];
  v74 = v0[15];
  v75 = v0[16];
  v76 = v0[14];
  v77 = v0[12];
  v49 = v0[9];
  v66 = v0[10];
  v67 = v0[8];
  v68 = v0[11];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BB38518();
  v71 = swift_getAssociatedConformanceWitness();
  sub_22BC54A54();
  v51 = type metadata accessor for ToolExecutionEventStream();
  v52 = *(v48 + 16);
  v53 = sub_22BB3B528();
  v54(v53);
  sub_22BBC02F0();
  v55 = sub_22BB3304C();
  v56(v55);
  v57 = sub_22BDB4374();
  sub_22BC2E800(v57, v58, v88);

  v59 = sub_22BC15B5C(v86, v83, v84, v88, v45, AssociatedConformanceWitness);
  v82(v90, v67, v69);
  v0[6] = v59;

  v0[7] = sub_22BDB9744();
  sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
  sub_22BB52D90(&qword_281428810);
  v60 = sub_22BDB9124();

  sub_22BB69984();
  WitnessTable = swift_getWitnessTable();
  v0[2] = AssociatedTypeWitness;
  v0[3] = v51;
  v0[4] = v71;
  v0[5] = WitnessTable;
  v62 = type metadata accessor for ToolExecution();
  (*(v74 + 16))(v75, v68, v76);
  sub_22BC91930(v90, (v0 + 6), v60 & 1, v75, v77);
  sub_22BC54D6C();

  (*(v73 + 8))(v72, v45);

  v63 = v0[1];

  return v63(v62);
}

uint64_t sub_22BC2E714()
{
  v0 = sub_22BDB8CB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB94F4();
  sub_22BC1F7D4();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_22BC2E800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v64 = a2;
  v62 = a1;
  v3 = sub_22BBE6DE0(&qword_27D8E2FE8, &qword_22BDBDA70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v58 = &v54 - v5;
  v61 = sub_22BDBA234();
  v59 = *(v61 - 8);
  v6 = *(v59 + 64);
  MEMORY[0x28223BE20](v61);
  v54 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BBE6DE0(&qword_27D8E2B20, &unk_22BDBF750);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v60 = &v54 - v10;
  v11 = sub_22BDB4414();
  v56 = *(v11 - 8);
  v57 = v11;
  v12 = *(v56 + 64);
  MEMORY[0x28223BE20](v11);
  v55 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BBE6DE0(&qword_27D8E2F70, &unk_22BDBD970);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v54 - v16;
  v18 = sub_22BBE6DE0(&qword_27D8E2968, &unk_22BDBD220);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v54 - v20;
  v22 = sub_22BBE6DE0(&qword_27D8E2F40, &qword_22BDCFFE0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v54 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v54 - v30;
  v65 = sub_22BDB9744();
  sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
  sub_22BC52D98(&qword_281428810);
  sub_22BDB9104();

  sub_22BBBEE60(v31, v29, &qword_27D8E2F40, &qword_22BDCFFE0);
  v32 = sub_22BDB6204();
  if (sub_22BB3AA28(v29, 1, v32) == 1)
  {
    sub_22BB58728(v29, &qword_27D8E2F40, &qword_22BDCFFE0);
    v33 = sub_22BDB8274();
    sub_22BB336D0(v21, 1, 1, v33);
  }

  else
  {
    sub_22BDB61A4();
    (*(*(v32 - 8) + 8))(v29, v32);
  }

  v65 = sub_22BDB9744();
  sub_22BC52D98(&qword_27D8E2F90);
  sub_22BDB9054();

  v34 = sub_22BDB4F64();
  if (sub_22BB3AA28(v17, 1, v34) == 1)
  {
    sub_22BB58728(v17, &qword_27D8E2F70, &unk_22BDBD970);
    v35 = 0;
    v36 = 0;
  }

  else
  {
    v37 = v55;
    sub_22BDB4F54();
    (*(*(v34 - 8) + 8))(v17, v34);
    v35 = sub_22BDB43F4();
    v36 = v38;
    (*(v56 + 8))(v37, v57);
  }

  sub_22BBBEE60(v31, v26, &qword_27D8E2F40, &qword_22BDCFFE0);
  if (sub_22BB3AA28(v26, 1, v32) == 1)
  {
    sub_22BB58728(v31, &qword_27D8E2F40, &qword_22BDCFFE0);
    v39 = v26;
    v40 = &qword_27D8E2F40;
    v41 = &qword_22BDCFFE0;
  }

  else
  {
    v42 = v58;
    sub_22BDB61D4();
    v43 = v42;
    (*(*(v32 - 8) + 8))(v26, v32);
    v44 = sub_22BDB61C4();
    if (sub_22BB3AA28(v43, 1, v44) != 1)
    {
      v47 = v54;
      sub_22BC55BE8(v54);
      sub_22BB58728(v31, &qword_27D8E2F40, &qword_22BDCFFE0);
      (*(*(v44 - 8) + 8))(v43, v44);
      v45 = v60;
      v46 = v61;
      (*(v59 + 32))(v60, v47, v61);
      goto LABEL_13;
    }

    sub_22BB58728(v31, &qword_27D8E2F40, &qword_22BDCFFE0);
    v40 = &qword_27D8E2FE8;
    v41 = &qword_22BDBDA70;
    v39 = v43;
  }

  sub_22BB58728(v39, v40, v41);
  v45 = v60;
  v46 = v61;
  (*(v59 + 104))(v60, *MEMORY[0x277D72600], v61);
LABEL_13:
  sub_22BB336D0(v45, 0, 1, v46);
  v48 = v63;
  sub_22BBDB5D0(v21, v63, &qword_27D8E2968, &unk_22BDBD220);
  v49 = type metadata accessor for InvocationOptions(0);
  v50 = (v48 + v49[5]);
  *v50 = v35;
  v50[1] = v36;
  v51 = (v48 + v49[6]);
  v52 = v64;
  *v51 = v62;
  v51[1] = v52;
  sub_22BBDB5D0(v45, v48 + v49[7], &qword_27D8E2B20, &unk_22BDBF750);
}

uint64_t sub_22BC2EF44()
{
  sub_22BB6B9D0();
  sub_22BB30F5C();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_22BBE6DE0(&qword_27D8E2F30, &qword_22BDC1240);
  sub_22BB2F0C8(v4);
  v6 = *(v5 + 64);
  v1[10] = sub_22BB30ACC();
  v7 = sub_22BDBA734();
  v1[11] = v7;
  sub_22BB30434(v7);
  v1[12] = v8;
  v10 = *(v9 + 64);
  v1[13] = sub_22BB30ACC();
  v11 = sub_22BDBA014();
  v1[14] = v11;
  sub_22BB30434(v11);
  v1[15] = v12;
  v14 = *(v13 + 64);
  v1[16] = sub_22BB30ACC();
  v15 = sub_22BBE6DE0(&qword_27D8E2FC8, &unk_22BDBD9C0);
  sub_22BB2F0C8(v15);
  v17 = *(v16 + 64);
  v1[17] = sub_22BC54698();
  v1[18] = swift_task_alloc();
  v18 = sub_22BDB8E14();
  v1[19] = v18;
  sub_22BB30434(v18);
  v1[20] = v19;
  v21 = *(v20 + 64);
  v1[21] = sub_22BC54698();
  v1[22] = swift_task_alloc();
  v22 = sub_22BDB5414();
  v1[23] = v22;
  sub_22BB30434(v22);
  v1[24] = v23;
  v25 = *(v24 + 64);
  v1[25] = sub_22BB30ACC();
  v26 = type metadata accessor for SearchToolExecutorError();
  v1[26] = v26;
  sub_22BB2F0C8(v26);
  v28 = *(v27 + 64);
  v1[27] = sub_22BB30ACC();
  v29 = sub_22BBE6DE0(&qword_27D8E2FF0, &qword_22BDBDA78);
  sub_22BB2F0C8(v29);
  v31 = *(v30 + 64);
  v1[28] = sub_22BB30ACC();
  v32 = sub_22BBE6DE0(&qword_27D8E2FF8, &unk_22BDBDA80);
  sub_22BB2F0C8(v32);
  v34 = *(v33 + 64);
  v1[29] = sub_22BC54698();
  v1[30] = swift_task_alloc();
  v35 = sub_22BDB5244();
  v1[31] = v35;
  sub_22BB30434(v35);
  v1[32] = v36;
  v38 = *(v37 + 64);
  v1[33] = sub_22BB30ACC();
  v39 = sub_22BDB53F4();
  v1[34] = v39;
  sub_22BB30434(v39);
  v1[35] = v40;
  v42 = *(v41 + 64);
  v1[36] = sub_22BB30ACC();
  v43 = sub_22BBE6DE0(&qword_27D8E2928, &qword_22BDBCFA0);
  sub_22BB2F0C8(v43);
  v45 = *(v44 + 64);
  v1[37] = sub_22BC54698();
  v1[38] = swift_task_alloc();
  v46 = sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0);
  sub_22BB2F0C8(v46);
  v48 = *(v47 + 64);
  v1[39] = sub_22BC54698();
  v1[40] = swift_task_alloc();
  v49 = sub_22BBE6DE0(&qword_27D8E2F60, &unk_22BDBD960);
  sub_22BB2F0C8(v49);
  v51 = *(v50 + 64);
  v1[41] = sub_22BC54698();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v52 = sub_22BDB5404();
  v1[44] = v52;
  sub_22BB30434(v52);
  v1[45] = v53;
  v55 = *(v54 + 64);
  v1[46] = sub_22BC54698();
  v1[47] = swift_task_alloc();
  v56 = sub_22BDB90B4();
  v1[48] = v56;
  sub_22BB30434(v56);
  v1[49] = v57;
  v59 = *(v58 + 64);
  v1[50] = sub_22BC54698();
  v1[51] = swift_task_alloc();
  Output = type metadata accessor for QueryOutput();
  v1[52] = Output;
  sub_22BB2F0C8(Output);
  v62 = *(v61 + 64);
  v1[53] = sub_22BB30ACC();
  swift_task_alloc();
  sub_22BB30B34();
  v1[54] = v63;
  *v63 = v64;
  v63[1] = sub_22BC2F448;
  sub_22BC53CBC();
  sub_22BB3A1C0();

  return sub_22BC30A78();
}

uint64_t sub_22BC2F448()
{
  sub_22BB2F35C();
  sub_22BB34764();
  sub_22BB33FF4();
  *v4 = v3;
  v5 = *(v1 + 432);
  *v4 = *v2;
  *(v3 + 440) = v0;

  sub_22BB33218();
  v7 = *(v6 + 72);
  sub_22BB3A3F4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BC2F55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_22BBBE6B4();
  sub_22BC53D54();
  v32 = v28[52];
  v31 = v28[53];
  v33 = v28[47];
  v34 = v28[44];
  v35 = v28[45];
  v36 = v28[40];
  v37 = sub_22BDB4E24();
  sub_22BB30ED8(v37);
  v39 = *(v38 + 16);
  v40 = sub_22BB2F324();
  v41(v40);
  v42 = *MEMORY[0x277D1CBF0];
  v43 = *(v35 + 104);
  v44 = sub_22BB97E2C();
  v45(v44);
  v46 = *(v32 + 20);
  sub_22BBBEE60(v31 + v46, v36, &qword_27D8E2530, &qword_22BDBCBF0);
  v47 = type metadata accessor for ResultResponse(0);
  v48 = sub_22BB3A840();
  v50 = sub_22BB3AA28(v48, v49, v47);
  v51 = v28[40];
  if (v50 == 1)
  {
    sub_22BB58728(v28[40], &qword_27D8E2530, &qword_22BDBCBF0);
    sub_22BC5430C();
    sub_22BB30B28();
    sub_22BC54814(v52, v53, v54, v55);
    sub_22BB32E04();
    sub_22BDB90A4();
    v56 = v30[2];
    v57 = sub_22BB73B58();
    v58(v57);
    v59 = *(v33 + *(v29 + 28));
    sub_22BC54C80();
    v60 = v30[1];
    v61 = sub_22BB33728();
    v62(v61);
    v63 = v30[4];
    sub_22BB7592C();
    v64();
    ResultPayload = type metadata accessor for QueryResultPayload(0);
    sub_22BB97F0C(ResultPayload);
    v66 = v28[53];
    v68 = v28[50];
    v67 = v28[51];
    v69 = v28[46];
    v70 = v28[47];
    v72 = v28[42];
    v71 = v28[43];
    v74 = v28[40];
    v73 = v28[41];
    v75 = v28[38];
    v76 = v28[39];
    sub_22BB396FC();
    sub_22BC545F0();

    sub_22BB360FC();
    sub_22BB3AAA8();

    return v78(v77, v78, v79, v80, v81, v82, v83, v84, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
  }

  else
  {
    v86 = v28[39];
    v28[56] = *(v51 + 8);
    v87 = *(v51 + 16);
    v28[57] = v87;
    v88 = v87;

    sub_22BB36CB8();
    sub_22BBBEE60(v31 + v46, v86, &qword_27D8E2530, &qword_22BDBCBF0);
    v89 = sub_22BB34748();
    v91 = sub_22BB3AA28(v89, v90, v47);
    v92 = v28[38];
    if (v91 == 1)
    {
      sub_22BB58728(v28[39], &qword_27D8E2530, &qword_22BDBCBF0);
      sub_22BDBA694();
      sub_22BB30B28();
      sub_22BB336D0(v93, v94, v95, v96);
    }

    else
    {
      sub_22BBBEE60(v28[39] + *(v47 + 20), v28[38], &qword_27D8E2928, &qword_22BDBCFA0);
      sub_22BB36CB8();
    }

    v28[58] = *(v28[53] + *(v28[52] + 24));
    swift_task_alloc();
    sub_22BB30B34();
    v28[59] = v97;
    *v97 = v98;
    v97[1] = sub_22BC2F908;
    v99 = v28[42];
    sub_22BB6F9A8();
    sub_22BB3AAA8();

    return sub_22BC2BCA8(v100, v101, v102, v103);
  }
}

uint64_t sub_22BC2F908()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = *(v1 + 472);
  v3 = *v0;
  sub_22BB3052C();
  *v4 = v3;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22BC2FC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_22BBBE6B4();
  sub_22BC53D54();
  sub_22BC5430C();
  sub_22BB331C8();
  sub_22BC54814(v32, v33, v34, v35);
  sub_22BB32E04();
  sub_22BDB90A4();
  v36 = v31[2];
  v37 = sub_22BB73B58();
  v38(v37);
  v39 = *(v28 + *(v30 + 28));
  sub_22BC54C80();
  v40 = v31[1];
  v41 = sub_22BB33728();
  v42(v41);
  v43 = v31[4];
  sub_22BB7592C();
  v44();
  ResultPayload = type metadata accessor for QueryResultPayload(0);
  sub_22BB97F0C(ResultPayload);
  v46 = v29[53];
  v48 = v29[50];
  v47 = v29[51];
  v49 = v29[46];
  v50 = v29[47];
  v52 = v29[42];
  v51 = v29[43];
  v54 = v29[40];
  v53 = v29[41];
  v55 = v29[38];
  v56 = v29[39];
  sub_22BB396FC();
  sub_22BC545F0();

  sub_22BB360FC();
  sub_22BB3AAA8();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_22BC2FE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22BC5496C();
  sub_22BC54D84();
  v31 = *(v30 + 440);
  *(v30 + 40) = v31;
  v33 = *(v30 + 208);
  v32 = *(v30 + 216);
  v34 = v31;
  sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
  sub_22BB31F54();
  if (swift_dynamicCast())
  {
    v35 = *(v30 + 208);
    v36 = *(v30 + 216);
    if (!swift_getEnumCaseMultiPayload())
    {
      v91 = *(v30 + 360);
      v90 = *(v30 + 368);
      v92 = *(v30 + 352);
      v93 = *(v30 + 328);
      v133 = *(v30 + 272);
      v94 = *(v30 + 192);
      v95 = *(v30 + 200);
      v96 = *(v30 + 184);
      v97 = *(v30 + 56);

      v98 = *(v94 + 32);
      v99 = sub_22BC5448C();
      v100(v99);
      sub_22BBC02F0();
      v101 = sub_22BB313A8();
      v102(v101);
      v103 = *MEMORY[0x277D1CBA0];
      v104 = *(v91 + 104);
      v105 = sub_22BB97E2C();
      v106(v105);
      v107 = sub_22BB3306C();
      sub_22BB336D0(v107, v108, v109, v133);
      sub_22BB345A8();
      sub_22BDB90A4();
      v110 = *(v94 + 8);
      v111 = sub_22BB35464();
      v112(v111);
      v113 = (v97 + *(type metadata accessor for QueryResultPayload(0) + 20));
      *v113 = 0;
      v113[1] = 0;

      v114 = *(v30 + 424);
      v116 = *(v30 + 400);
      v115 = *(v30 + 408);
      v117 = *(v30 + 368);
      v118 = *(v30 + 376);
      v120 = *(v30 + 336);
      v119 = *(v30 + 344);
      v122 = *(v30 + 320);
      v121 = *(v30 + 328);
      v123 = *(v30 + 312);
      a11 = *(v30 + 304);
      a12 = *(v30 + 296);
      a13 = *(v30 + 288);
      a14 = *(v30 + 264);
      a15 = *(v30 + 240);
      a16 = *(v30 + 232);
      a17 = *(v30 + 224);
      a18 = *(v30 + 216);
      a19 = *(v30 + 200);
      a20 = *(v30 + 176);
      a21 = *(v30 + 168);
      a22 = *(v30 + 144);
      a23 = *(v30 + 136);
      a24 = *(v30 + 128);
      a25 = *(v30 + 104);
      v132 = *(v30 + 80);

      sub_22BB360FC();
      goto LABEL_16;
    }

    sub_22BC52F5C(v36, type metadata accessor for SearchToolExecutorError);
  }

  v37 = *(v30 + 440);

  swift_getErrorValue();
  v38 = *(v30 + 16);
  v39 = *(v30 + 32);
  if (sub_22BC308E0(*(v30 + 24)))
  {
    v40 = *(v30 + 144);
    v41 = *(v30 + 64);
    sub_22BDB9CE4();
    sub_22BDB9044();
    sub_22BB36B74(v40);
    if (!v42)
    {
      v72 = *(v30 + 168);
      v71 = *(v30 + 176);
      v73 = *(v30 + 152);
      v74 = *(v30 + 160);
      v75 = *(v30 + 144);
      sub_22BDB9034();
      sub_22BB34E9C();
      v77 = *(v76 + 8);
      v78 = sub_22BB2F324();
      v79(v78);
      v80 = *(v74 + 32);
      v81 = sub_22BB2F0E0();
      v82(v81);
      swift_task_alloc();
      sub_22BB30B34();
      *(v30 + 480) = v83;
      *v83 = v84;
      v83[1] = sub_22BC303F4;
      v85 = *(v30 + 176);
      v86 = *(v30 + 128);
      v87 = *(v30 + 72);
      sub_22BB3E07C();

      return sub_22BC1EF68();
    }

    sub_22BB58728(*(v30 + 144), &qword_27D8E2FC8, &unk_22BDBD9C0);
  }

  v43 = *(v30 + 136);
  v44 = *(v30 + 64);
  sub_22BDB9CE4();
  v45 = sub_22BDB9044();
  v46 = sub_22BB2F3FC();
  if (sub_22BB3AA28(v46, v47, v45) == 1)
  {
    sub_22BB58728(*(v30 + 136), &qword_27D8E2FC8, &unk_22BDBD9C0);
    v48 = 1;
  }

  else
  {
    v49 = *(v30 + 80);
    sub_22BDB9034();
    sub_22BB34E9C();
    v51 = *(v50 + 8);
    v52 = sub_22BB2F324();
    v53(v52);
    v48 = 0;
  }

  v54 = *(v30 + 440);
  v55 = *(v30 + 80);
  sub_22BB336D0(v55, v48, 1, *(v30 + 152));
  v56 = sub_22BDB4234();
  sub_22BB72044();
  sub_22BC1DF1C(v57, v58, v59);

  sub_22BB58728(v55, &qword_27D8E2F30, &qword_22BDC1240);
  swift_willThrow();
  v132 = *(v30 + 440);
  v60 = *(v30 + 424);
  v62 = *(v30 + 400);
  v61 = *(v30 + 408);
  v64 = *(v30 + 368);
  v63 = *(v30 + 376);
  v66 = *(v30 + 336);
  v65 = *(v30 + 344);
  v68 = *(v30 + 320);
  v67 = *(v30 + 328);
  v69 = *(v30 + 304);
  v70 = *(v30 + 312);
  sub_22BB396FC();
  sub_22BC546D8();

  sub_22BB3ACAC();
LABEL_16:
  sub_22BB3E07C();

  return v125(v124, v125, v126, v127, v128, v129, v130, v131, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, v132, a27, a28, a29, a30);
}

uint64_t sub_22BC303F4()
{
  sub_22BB2F35C();
  sub_22BB34764();
  sub_22BB33FF4();
  *v4 = v3;
  v5 = *(v1 + 480);
  *v4 = *v2;
  *(v3 + 488) = v0;

  sub_22BB33218();
  v7 = *(v6 + 72);
  sub_22BB3A3F4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BC30508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_22BC5496C();
  sub_22BC54D84();
  v32 = v30[55];
  v33 = v30[20];
  v66 = v30[19];
  v67 = v30[22];
  v34 = v30[15];
  v35 = v30[16];
  v36 = v30[13];
  v65 = v30[14];
  v38 = v30[11];
  v37 = v30[12];
  sub_22BDB9FA4();
  sub_22BDBA714();
  sub_22BC54D78();
  v39 = *(v37 + 8);
  v40 = sub_22BB7031C();
  v41(v40);
  type metadata accessor for RuntimeError();
  sub_22BB326C8();
  sub_22BB8E56C(v42, v43);
  sub_22BB369E0();
  v68 = swift_allocError();
  *v44 = v36;
  v44[1] = v31;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  (*(v34 + 8))(v35, v65);
  (*(v33 + 8))(v67, v66);
  v45 = v30[53];
  v47 = v30[50];
  v46 = v30[51];
  v48 = v30[46];
  v49 = v30[47];
  v51 = v30[42];
  v50 = v30[43];
  v53 = v30[40];
  v52 = v30[41];
  v54 = v30[38];
  v55 = v30[39];
  sub_22BB396FC();
  sub_22BC546D8();

  sub_22BB3ACAC();
  sub_22BB3E07C();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v65, v66, v67, v68, a27, a28, a29, a30);
}

uint64_t sub_22BC3072C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_22BBBE6B4();
  sub_22BC53D54();
  v29 = *(v28 + 176);
  v30 = *(v28 + 152);
  v31 = *(v28 + 160);

  v32 = *(v31 + 8);
  v33 = sub_22BB2F324();
  v34(v33);
  v70 = *(v28 + 488);
  v35 = *(v28 + 424);
  v37 = *(v28 + 400);
  v36 = *(v28 + 408);
  v39 = *(v28 + 368);
  v38 = *(v28 + 376);
  v41 = *(v28 + 336);
  v40 = *(v28 + 344);
  v43 = *(v28 + 320);
  v42 = *(v28 + 328);
  v44 = *(v28 + 312);
  v54 = *(v28 + 304);
  v55 = *(v28 + 296);
  v56 = *(v28 + 288);
  v57 = *(v28 + 264);
  v58 = *(v28 + 240);
  v59 = *(v28 + 232);
  v60 = *(v28 + 224);
  v61 = *(v28 + 216);
  v62 = *(v28 + 200);
  v63 = *(v28 + 176);
  v64 = *(v28 + 168);
  v65 = *(v28 + 144);
  v66 = *(v28 + 136);
  v67 = *(v28 + 128);
  v68 = *(v28 + 104);
  v69 = *(v28 + 80);

  sub_22BB2F09C();
  sub_22BB3AAA8();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, a26, a27, a28);
}

BOOL sub_22BC308E0(uint64_t a1)
{
  v1 = sub_22BC54440(a1);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v1);
  v14 = sub_22BBC3B44(v6, v7, v8, v9, v10, v11, v12, v13, v34);
  v15(v14);
  sub_22BB3182C();
  v16 = sub_22BDBB6A4();
  if (v16)
  {
    v17 = v16;
    v18 = *(v3 + 8);
    v19 = sub_22BB3182C();
    v20(v19);
  }

  else
  {
    sub_22BB31F54();
    sub_22BB369E0();
    v17 = swift_allocError();
    v21 = *(v3 + 32);
    sub_22BB500B4();
    v22();
  }

  v23 = sub_22BDB4234();

  v24 = [v23 domain];
  v25 = sub_22BDBABF4();
  v27 = v26;

  v28 = *MEMORY[0x277D23A68];
  if (v25 == sub_22BDBABF4() && v27 == v29)
  {
  }

  else
  {
    v31 = sub_22BC54B28();

    if ((v31 & 1) == 0)
    {

      return 0;
    }
  }

  v33 = [v23 code];

  return v33 == 2400;
}

uint64_t sub_22BC30A78()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  v1[39] = v2;
  v1[40] = v0;
  v1[37] = v3;
  v1[38] = v4;
  v1[35] = v5;
  v1[36] = v6;
  sub_22BC54414();
  v7 = sub_22BDBA734();
  v1[41] = v7;
  sub_22BB30434(v7);
  v1[42] = v8;
  v10 = *(v9 + 64);
  v1[43] = sub_22BB30ACC();
  v11 = sub_22BBE6DE0(&qword_27D8E27B8, &unk_22BDBD9D0);
  sub_22BB2F0C8(v11);
  v13 = *(v12 + 64);
  v1[44] = sub_22BB30ACC();
  v14 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  sub_22BB2F0C8(v14);
  v16 = *(v15 + 64);
  v1[45] = sub_22BB30ACC();
  v17 = sub_22BBE6DE0(&qword_27D8E27C8, &qword_22BDBCDF8);
  sub_22BB2F0C8(v17);
  v19 = *(v18 + 64);
  v1[46] = sub_22BB30ACC();
  v20 = sub_22BBE6DE0(&qword_27D8E2FD8, &qword_22BDBD9E0);
  v1[47] = v20;
  sub_22BB2F0C8(v20);
  v22 = *(v21 + 64);
  v1[48] = sub_22BBB79B0();
  v1[49] = swift_task_alloc();
  v23 = sub_22BDB8224();
  v1[50] = v23;
  sub_22BB30434(v23);
  v1[51] = v24;
  v26 = *(v25 + 64);
  v1[52] = sub_22BB30ACC();
  v27 = sub_22BDB81E4();
  v1[53] = v27;
  sub_22BB30434(v27);
  v1[54] = v28;
  v30 = *(v29 + 64);
  v1[55] = sub_22BB30ACC();
  v31 = sub_22BBE6DE0(&qword_27D8E2FC0, &qword_22BDBFB90);
  sub_22BB2F0C8(v31);
  v33 = *(v32 + 64);
  v1[56] = sub_22BB30ACC();
  sub_22BB36F5C();
  v35 = *(v34 + 88);
  v1[57] = v35;
  sub_22BB36F5C();
  v37 = *(v36 + 80);
  v1[58] = v37;
  sub_22BC541B0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BB331D4();
  sub_22BC54A60();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1[59] = AssociatedConformanceWitness;
  v1[22] = AssociatedTypeWitness;
  v1[23] = v37;
  v1[24] = AssociatedConformanceWitness;
  v1[25] = v35;
  v40 = type metadata accessor for AppEntityCandidateGenerator.Results();
  v1[60] = v40;
  sub_22BB30434(v40);
  v1[61] = v41;
  v43 = *(v42 + 64);
  v1[62] = sub_22BB30ACC();
  sub_22BC53CBC();
  v1[63] = type metadata accessor for EntitySearchableItemCandidateGenerator();
  v44 = sub_22BDBB254();
  v1[64] = v44;
  sub_22BB30434(v44);
  v1[65] = v45;
  v47 = *(v46 + 64);
  v1[66] = sub_22BB73FD0();
  v1[67] = swift_task_alloc();
  v48 = sub_22BBE6DE0(&qword_27D8E2FE0, &qword_22BDBD9E8);
  sub_22BB2F0C8(v48);
  v50 = *(v49 + 64);
  v1[68] = sub_22BB30ACC();
  v51 = sub_22BDB8254();
  v1[69] = v51;
  sub_22BB30434(v51);
  v1[70] = v52;
  v54 = *(v53 + 64);
  v1[71] = sub_22BB73FD0();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v55 = sub_22BBE6DE0(&qword_27D8E27D0, &unk_22BDBCE00);
  sub_22BB2F0C8(v55);
  v57 = *(v56 + 64);
  v1[75] = sub_22BB30ACC();
  v58 = sub_22BDBA634();
  v1[76] = v58;
  sub_22BB30434(v58);
  v1[77] = v59;
  v61 = *(v60 + 64);
  v1[78] = sub_22BB73FD0();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v62 = sub_22BBE6DE0(&qword_27D8E2FD0, &unk_22BDBFB70);
  sub_22BB2F0C8(v62);
  v64 = *(v63 + 64);
  v1[82] = sub_22BB30ACC();
  v65 = sub_22BDBA764();
  v1[83] = v65;
  sub_22BB30434(v65);
  v1[84] = v66;
  v68 = *(v67 + 64);
  v1[85] = sub_22BB30ACC();
  v69 = sub_22BBE6DE0(&qword_27D8E2FC8, &unk_22BDBD9C0);
  sub_22BB2F0C8(v69);
  v71 = *(v70 + 64);
  v1[86] = sub_22BB73FD0();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v72 = sub_22BDB9044();
  v1[89] = v72;
  sub_22BB30434(v72);
  v1[90] = v73;
  v75 = *(v74 + 64);
  v1[91] = sub_22BB73FD0();
  v1[92] = swift_task_alloc();
  v76 = sub_22BDB77D4();
  v1[93] = v76;
  sub_22BB30434(v76);
  v1[94] = v77;
  v79 = *(v78 + 64);
  v1[95] = sub_22BB73FD0();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v80 = sub_22BDB8144();
  v1[103] = v80;
  sub_22BB30434(v80);
  v1[104] = v81;
  v83 = *(v82 + 64);
  v1[105] = sub_22BB30ACC();
  v84 = sub_22BDB9854();
  v1[106] = v84;
  sub_22BB30434(v84);
  v1[107] = v85;
  v87 = *(v86 + 64);
  v1[108] = sub_22BB30ACC();
  v88 = sub_22BDB9864();
  v1[109] = v88;
  sub_22BB30434(v88);
  v1[110] = v89;
  v91 = *(v90 + 64);
  v1[111] = sub_22BB30ACC();
  v92 = sub_22BDBA594();
  v1[112] = v92;
  sub_22BB30434(v92);
  v1[113] = v93;
  v95 = *(v94 + 64);
  v1[114] = sub_22BB73FD0();
  v1[115] = swift_task_alloc();
  v1[116] = swift_task_alloc();
  v96 = sub_22BDBA3A4();
  v1[117] = v96;
  sub_22BB30434(v96);
  v1[118] = v97;
  v99 = *(v98 + 64);
  v1[119] = sub_22BB30ACC();
  Type = type metadata accessor for ExecutorSELFLoggingInjector.QueryType();
  v1[120] = Type;
  sub_22BB2F0C8(Type);
  v102 = *(v101 + 64);
  v1[121] = sub_22BB73FD0();
  v1[122] = swift_task_alloc();
  v1[123] = swift_task_alloc();
  v1[124] = swift_task_alloc();
  v1[125] = swift_task_alloc();
  v1[126] = swift_task_alloc();
  v1[127] = swift_task_alloc();
  Output = type metadata accessor for QueryOutput();
  v1[128] = Output;
  sub_22BB2F0C8(Output);
  v105 = *(v104 + 64);
  v1[129] = sub_22BB30ACC();
  v106 = sub_22BDB43E4();
  v1[130] = v106;
  sub_22BB30434(v106);
  v1[131] = v107;
  v109 = *(v108 + 64);
  v1[132] = sub_22BB73FD0();
  v1[133] = swift_task_alloc();
  v1[134] = swift_task_alloc();
  v110 = sub_22BDB8204();
  v1[135] = v110;
  sub_22BB30434(v110);
  v1[136] = v111;
  v113 = *(v112 + 64);
  v1[137] = sub_22BB30ACC();
  v114 = sub_22BDB8264();
  v1[138] = v114;
  sub_22BB30434(v114);
  v1[139] = v115;
  v117 = *(v116 + 64);
  v1[140] = sub_22BB30ACC();
  v118 = sub_22BDB9C14();
  sub_22BB2F0C8(v118);
  v120 = *(v119 + 64);
  v1[141] = sub_22BB30ACC();
  v121 = type metadata accessor for HydrationConfiguration(0);
  sub_22BB2F0C8(v121);
  v123 = *(v122 + 64);
  v1[142] = sub_22BB30ACC();
  v124 = sub_22BDB9774();
  v1[143] = v124;
  sub_22BB30434(v124);
  v1[144] = v125;
  v127 = *(v126 + 64);
  v1[145] = sub_22BB73FD0();
  v1[146] = swift_task_alloc();
  v128 = type metadata accessor for InvocationOptions(0);
  sub_22BB2F0C8(v128);
  v130 = *(v129 + 64);
  v1[147] = sub_22BB73FD0();
  v1[148] = swift_task_alloc();
  v131 = swift_checkMetadataState();
  v1[149] = v131;
  sub_22BB30444(v131);
  v1[150] = v132;
  v134 = *(v133 + 64);
  v1[151] = sub_22BB30ACC();
  sub_22BB500B4();
  v135 = type metadata accessor for SearchToolExecutor();
  v1[152] = v135;
  sub_22BB30434(v135);
  v1[153] = v136;
  v138 = *(v137 + 64);
  v1[154] = sub_22BB30ACC();
  v139 = sub_22BDBA014();
  v1[155] = v139;
  sub_22BB30434(v139);
  v1[156] = v140;
  v142 = *(v141 + 64);
  v1[157] = sub_22BB3307C();
  v1[158] = swift_task_alloc();
  v1[159] = swift_task_alloc();
  v1[160] = swift_task_alloc();
  v1[161] = swift_task_alloc();
  v1[162] = swift_task_alloc();
  v1[163] = swift_task_alloc();
  v143 = sub_22BDB8E14();
  v1[164] = v143;
  sub_22BB30434(v143);
  v1[165] = v144;
  v146 = *(v145 + 64);
  v1[166] = sub_22BB3307C();
  v1[167] = swift_task_alloc();
  v1[168] = swift_task_alloc();
  v1[169] = swift_task_alloc();
  v1[170] = swift_task_alloc();
  v1[171] = swift_task_alloc();
  sub_22BB355F0();
  sub_22BB3478C();

  return MEMORY[0x2822009F8](v147, v148, v149);
}

uint64_t sub_22BC31670()
{
  sub_22BB2F0D4();
  v1 = v0[171];
  MEMORY[0x2318A2DC0]();
  sub_22BB31B88();
  sub_22BDB8DE4();
  swift_task_alloc();
  sub_22BB30B34();
  v0[172] = v2;
  *v2 = v3;
  v2[1] = sub_22BC31734;
  v4 = v0[171];
  v5 = v0[163];
  v6 = v0[40];

  return sub_22BC1EF68();
}

uint64_t sub_22BC31734()
{
  sub_22BB34E84();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 1376);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  v3[173] = v0;

  if (v0)
  {
    v9 = v3[40];

    return MEMORY[0x2822009F8](sub_22BC384B4, v9, 0);
  }

  else
  {
    v10 = v3[163];
    v11 = v3[162];
    v12 = v3[156];
    v13 = v3[155];
    v29 = v3[57];
    v14 = v3[40];
    (*(v3[165] + 16))(v3[170], v3[171], v3[164]);
    v15 = *(v12 + 16);
    v16 = sub_22BB3931C();
    v17(v16);
    v3[174] = *(*v14 + 104);
    v18 = *(v29 + 72);
    sub_22BB36CE0();
    v28 = (v19 + *v19);
    v21 = *(v20 + 4);
    swift_task_alloc();
    sub_22BB30B34();
    v3[175] = v22;
    *v22 = v23;
    v22[1] = sub_22BC3198C;
    v24 = v3[151];
    v26 = v3[57];
    v25 = v3[58];

    return v28(v24, v25, v26);
  }
}

uint64_t sub_22BC3198C()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 1400);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  v3[176] = v0;

  if (v0)
  {
    v9 = v3[170];
    v10 = v3[165];
    v11 = v3[164];
    v12 = v3[162];
    v13 = v3[156];
    v14 = v3[155];
    v15 = v3[40];
    v16 = *(v13 + 8);
    v3[227] = v16;
    v3[228] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v12, v14);
    v3[229] = *(v10 + 8);
    v3[230] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17 = sub_22BB2F3F0();
    v18(v17);
  }

  else
  {
    v19 = v3[40];
  }

  sub_22BB3478C();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_22BC31AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v13 = *(v12 + 1408);
  v14 = *(v12 + 1184);
  v15 = *(v12 + 1168);
  v16 = *(v12 + 1152);
  v17 = *(v12 + 1144);
  v18 = *(v12 + 1136);
  v19 = *(v12 + 320);
  v20 = *(v12 + 296);
  sub_22BDB96A4();
  sub_22BC2E800(0, 0, v14);
  v23 = *(v16 + 8);
  v21 = v16 + 8;
  v22 = v23;
  *(v12 + 1416) = v23;
  *(v12 + 1424) = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24 = sub_22BB331D4();
  v23(v24);
  v25 = (v19 + *(*v19 + 136));
  v26 = v25[4];
  sub_22BB69FEC(v25, v25[3]);
  sub_22BB2F324();
  sub_22BC2BA10(v27);
  if (v13)
  {
    v28 = *(v12 + 1320);
    v399 = *(v12 + 1360);
    v29 = *(v12 + 1312);
    v30 = *(v12 + 1304);
    v31 = *(v12 + 1296);
    v32 = *(v12 + 1248);
    v33 = *(v12 + 1240);
    v34 = *(v12 + 1208);
    v35 = *(v12 + 1200);
    v36 = *(v12 + 1192);
    sub_22BC52F5C(*(v12 + 1184), type metadata accessor for InvocationOptions);
    v37 = *(v35 + 8);
    v38 = sub_22BB35464();
    v39(v38);
    v40 = *(v32 + 8);
    v41 = sub_22BB331D4();
    v40(v41);
    v42 = *(v28 + 8);
    (v42)(v399, v29);
    v43 = sub_22BC54704();
    v40(v43);
    v44 = (v12 + 1312);
    v45 = (v12 + 1368);
LABEL_3:
    v46 = *v45;
    v47 = *v44;
    sub_22BBC05D8();
    v48 = *(v12 + 1328);
    v49 = *(v12 + 1304);
    v50 = *(v12 + 1296);
    v314 = *(v12 + 1288);
    v315 = *(v12 + 1280);
    v316 = *(v12 + 1272);
    v317 = *(v12 + 1264);
    v318 = *(v12 + 1256);
    v319 = *(v12 + 1232);
    v320 = *(v12 + 1208);
    v321 = *(v12 + 1184);
    v322 = *(v12 + 1176);
    v323 = *(v12 + 1168);
    v324 = *(v12 + 1160);
    v325 = *(v12 + 1136);
    v326 = *(v12 + 1128);
    v327 = *(v12 + 1120);
    v328 = *(v12 + 1096);
    v329 = *(v12 + 1072);
    v330 = *(v12 + 1064);
    v331 = *(v12 + 1056);
    v332 = *(v12 + 1032);
    v333 = *(v12 + 1016);
    v334 = *(v12 + 1008);
    v335 = *(v12 + 1000);
    v336 = *(v12 + 992);
    v337 = *(v12 + 984);
    v338 = *(v12 + 976);
    v339 = *(v12 + 968);
    v340 = *(v12 + 952);
    v341 = *(v12 + 928);
    v342 = *(v12 + 920);
    v343 = *(v12 + 912);
    v344 = *(v12 + 888);
    v345 = *(v12 + 864);
    v346 = *(v12 + 840);
    v347 = *(v12 + 816);
    v348 = *(v12 + 808);
    v349 = *(v12 + 800);
    v350 = *(v12 + 792);
    v351 = *(v12 + 784);
    v352 = *(v12 + 776);
    v353 = *(v12 + 768);
    v354 = *(v12 + 760);
    v355 = *(v12 + 736);
    v356 = *(v12 + 728);
    v357 = *(v12 + 704);
    v358 = *(v12 + 696);
    v359 = *(v12 + 688);
    v360 = *(v12 + 680);
    v361 = *(v12 + 656);
    v362 = *(v12 + 648);
    v363 = *(v12 + 640);
    v364 = *(v12 + 632);
    v365 = *(v12 + 624);
    v366 = *(v12 + 600);
    v367 = *(v12 + 592);
    v368 = *(v12 + 584);
    v369 = *(v12 + 576);
    v370 = *(v12 + 568);
    v371 = *(v12 + 544);
    v372 = *(v12 + 536);
    v373 = *(v12 + 528);
    v374 = *(v12 + 496);
    v375 = *(v12 + 448);
    v377 = *(v12 + 440);
    v379 = *(v12 + 416);
    v383 = *(v12 + 392);
    v386 = *(v12 + 384);
    v391 = *(v12 + 368);
    v396 = *(v12 + 360);
    v400 = *(v12 + 352);
    v406 = *(v12 + 344);
    v42();

    sub_22BB2F09C();
    sub_22BB33430();

    return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12);
  }

  v60 = *(v12 + 1160);
  v62 = *(v12 + 296);
  v61 = *(v12 + 304);
  sub_22BB690EC(*(v12 + 320) + *(**(v12 + 320) + 112), v12 + 16);
  sub_22BDB96A4();
  sub_22BBBEE60(v61, v12 + 96, &qword_27D8E2540, &unk_22BDBCC00);
  v63 = *(v12 + 120);
  v380 = v22;
  if (v63)
  {
    v64 = *(v12 + 128);
    sub_22BB69FEC((v12 + 96), v63);
    *(v12 + 80) = v63;
    *(v12 + 88) = *(v64 + 8);
    sub_22BB8B8A0((v12 + 56));
    sub_22BB30474(v63);
    (*(v65 + 16))();
    sub_22BB32FA4((v12 + 96));
  }

  else
  {
    sub_22BB58728(v12 + 96, &qword_27D8E2540, &unk_22BDBCC00);
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0;
  }

  v66 = *(v12 + 1392);
  v401 = *(v12 + 1296);
  v407 = *(v12 + 1360);
  v67 = *(v12 + 1232);
  v68 = *(v12 + 1192);
  v387 = *(v12 + 1184);
  v392 = *(v12 + 1160);
  v397 = *(v12 + 1208);
  sub_22BB980BC();
  v69 = *(v12 + 1120);
  v70 = *(v12 + 1112);
  v411 = *(v12 + 1104);
  v71 = *(v12 + 472);
  v72 = *(v12 + 288);
  v74 = *(v12 + 320) + v73;
  (*(*(v12 + 456) + 40))(*(v12 + 464));
  sub_22BBFC380(v407, v401, v397, v387, v21, (v12 + 16), v392, v12 + 56, v67, v22, v68);
  v75 = v72;
  sub_22BDB9CF4();
  v76 = (*(v70 + 88))(v69, v411);
  if (v76 == *MEMORY[0x277D1DBF0])
  {
    v412 = *(v12 + 1232);
    v77 = *(v12 + 1096);
    v78 = *(v12 + 1088);
    v79 = *(v12 + 1080);
    v80 = *(v12 + 1072);
    v81 = *(v12 + 1048);
    v82 = *(v12 + 1040);
    v83 = *(v12 + 1016);
    v402 = *(v12 + 960);
    v84 = *(v12 + 312);
    v408 = *(v12 + 456);
    (*(*(v12 + 1112) + 96))(*(v12 + 1120), *(v12 + 1104));
    v85 = *(v78 + 32);
    v86 = sub_22BB2F324();
    v87(v86);
    sub_22BDB43D4();
    sub_22BC54F58(v84);
    v88 = *(v81 + 16);
    sub_22BC541B0();
    v89();
    swift_storeEnumTagMultiPayload();
    v90 = swift_task_alloc();
    *(v12 + 1432) = v90;
    v90[1] = vextq_s8(v408, v408, 8uLL);
    v90[2].i64[0] = v77;
    v90[2].i64[1] = v412;
    v90[3].i64[0] = v80;
    sub_22BB32A48(&unk_22BDBDA68);
    swift_task_alloc();
    sub_22BB30B34();
    *(v12 + 1440) = v91;
    *v91 = v92;
    v91[1] = sub_22BC330BC;
    v93 = *(v12 + 1032);
    v94 = *(v12 + 1016);
    v95 = *(v12 + 312);
    sub_22BB33430();

    return v101(v96, v97, v98, v99, v100, v101, v102, v103, a9, a10, a11, a12);
  }

  v45 = (v12 + 1232);
  if (v76 == *MEMORY[0x277D1DC08])
  {
    sub_22BB3B500();
    v104 = *(v12 + 840);
    v105 = *(v12 + 832);
    v106 = *(v12 + 824);
    v107 = *(v12 + 816);
    v109 = sub_22BC54A3C(v108);
    v110(v109);
    v111 = *(v105 + 32);
    v112 = sub_22BB52868();
    v113(v112);
    sub_22BDB63A4();
    v114 = sub_22BDB77C4();
    v115 = sub_22BDBB104();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = sub_22BB37F30();
      sub_22BB360F0(v116);
      sub_22BBBFEF0(&dword_22BB2C000, v117, v118, "running person query");
      sub_22BB35600();
    }

    v119 = *(v12 + 816);
    v120 = *(v12 + 752);
    v121 = *(v12 + 744);
    v122 = *(v12 + 712);
    v123 = *(v12 + 704);
    v124 = *(v12 + 288);

    v125 = *(v120 + 8);
    *(v12 + 1456) = v125;
    v126 = sub_22BB30AE4();
    v125(v126);
    sub_22BDB9CE4();
    v127 = sub_22BB34748();
    sub_22BB31814(v127, v128, v122);
    if (!v129)
    {
      v197 = *(v12 + 1352);
      (*(*(v12 + 720) + 32))(*(v12 + 736), *(v12 + 704), *(v12 + 712));
      sub_22BDB9034();
      swift_task_alloc();
      sub_22BB30B34();
      *(v12 + 1464) = v198;
      *v198 = v199;
      v198[1] = sub_22BC33830;
      v200 = *(v12 + 1352);
      v201 = *(v12 + 1288);
      v202 = *(v12 + 320);
      sub_22BB33430();

      return sub_22BC1EF68();
    }

    v130 = *(v12 + 800);
    sub_22BB58728(*(v12 + 704), &qword_27D8E2FC8, &unk_22BDBD9C0);
    sub_22BDB63A4();
    v131 = sub_22BDB77C4();
    sub_22BDBB114();
    sub_22BB379BC();
    if (os_log_type_enabled(v131, v132))
    {
      *sub_22BB37F30() = 0;
      sub_22BC54DD8(&dword_22BB2C000, v133, v134, "query context is missing");
      sub_22BB89BBC();
    }

    v135 = *(v12 + 1320);
    v136 = *(v12 + 1248);
    v381 = *(v12 + 1240);
    v384 = *(v12 + 1304);
    v403 = *(v12 + 1368);
    v409 = *(v12 + 1224);
    v393 = *(v12 + 1312);
    v398 = *(v12 + 840);
    v137 = *(v12 + 832);
    v388 = *(v12 + 824);
    v138 = *(v12 + 800);
    v139 = *(v12 + 752);
    v140 = *(v12 + 744);

    v141 = sub_22BB2F12C();
    v125(v141);
    type metadata accessor for ExecutorError(0);
    sub_22BB3B760();
    sub_22BB8E56C(v142, v143);
    sub_22BB369E0();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v136 + 8))(v384, v381);
    (*(v135 + 8))(v403, v393);
    v144 = *(v137 + 8);
    v145 = sub_22BC54528();
    v146(v145);
LABEL_57:
    v42 = *(v409 + 8);
    v44 = (v12 + 1216);
    goto LABEL_3;
  }

  if (v76 == *MEMORY[0x277D1DC10])
  {
    sub_22BB3B500();
    v147 = *(v12 + 792);
    v148 = *(v12 + 592);
    sub_22BB8EA14();
    v150 = sub_22BC54A3C(v149);
    v151(v150);
    v152 = *(v68 + 32);
    v153 = sub_22BB3931C();
    v154(v153);
    sub_22BDB63A4();
    v155 = sub_22BDB77C4();
    v156 = sub_22BDBB104();
    if (os_log_type_enabled(v155, v156))
    {
      v157 = sub_22BB37F30();
      sub_22BB360F0(v157);
      sub_22BBBFEF0(&dword_22BB2C000, v158, v159, "running string query");
      sub_22BB35600();
    }

    v160 = *(v12 + 792);
    v161 = *(v12 + 752);
    v162 = *(v12 + 744);
    v163 = *(v12 + 640);
    v164 = *(v12 + 616);
    v165 = *(v12 + 608);
    v166 = *(v12 + 592);

    v167 = *(v161 + 8);
    *(v12 + 1528) = v167;
    v168 = sub_22BB30AE4();
    v167(v168);
    sub_22BDB81D4();
    v169 = *(v164 + 88);
    v170 = sub_22BB331D4();
    v172 = v171(v170);
    v173 = *MEMORY[0x277D72D50];
    *(v12 + 1888) = *MEMORY[0x277D72D50];
    if (v172 == v173)
    {
      v174 = *(v12 + 640);
      v175 = *(v12 + 632);
      v176 = *(v12 + 616);
      v177 = *(v12 + 608);
      sub_22BC549A0();
      v178 = sub_22BB3E460();
      v179(v178);
      v180 = *(v176 + 96);
      v181 = sub_22BB2F324();
      v182(v181);
      *(v12 + 1536) = *v175;
      sub_22BDBA604();
      sub_22BB2F1B0();
      swift_projectBox();
      sub_22BB34E9C();
      v184 = (*(v183 + 88))();
      if (v184 == *MEMORY[0x277D72D00])
      {
        v185 = *(v12 + 1168);
        v186 = *(v12 + 1144);
        v187 = *(v12 + 544);
        v188 = *(v12 + 296);
        sub_22BDB96A4();
        v189 = sub_22BDB9744();
        v190 = sub_22BB30AE4();
        v380(v190);
        *(v12 + 272) = v189;
        sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
        sub_22BB52D90(&qword_281428810);
        sub_22BDB9154();

        v191 = sub_22BDB8FA4();
        v192 = sub_22BB3A840();
        v194 = sub_22BB3AA28(v192, v193, v191);
        v195 = *(v12 + 544);
        if (v194 == 1)
        {
          sub_22BB58728(*(v12 + 544), &qword_27D8E2FE0, &qword_22BDBD9E8);
          v196 = 0;
        }

        else
        {
          v260 = *(v12 + 544);
          v196 = sub_22BDB8F64();
          sub_22BB34E9C();
          v262 = *(v261 + 8);
          v263 = sub_22BB3182C();
          v264(v263);
        }

        *(v12 + 1544) = v196;
        v265 = *(v12 + 1000);
        v266 = *(v12 + 960);
        v267 = *(v12 + 592);
        swift_storeEnumTagMultiPayload();
        v268 = swift_task_alloc();
        *(v12 + 1552) = v268;
        *(v268 + 16) = v267;
        *(v268 + 24) = v196;
        sub_22BB32A48(dword_22BDBDA00);
        v269 = swift_task_alloc();
        *(v12 + 1560) = v269;
        *v269 = v12;
        v269[1] = sub_22BC347A4;
        v270 = *(v12 + 1000);
        sub_22BB3487C(*(v12 + 312));
        goto LABEL_49;
      }

      if (v184 == *MEMORY[0x277D72C98])
      {
        v252 = *(v12 + 992);
        v253 = *(v12 + 960);
        v254 = *(v12 + 592);
        swift_storeEnumTagMultiPayload();
        v255 = swift_task_alloc();
        *(v12 + 1584) = v255;
        *(v255 + 16) = v254;
        sub_22BB32A48(dword_22BDBDA00);
        v256 = swift_task_alloc();
        *(v12 + 1592) = v256;
        *v256 = v12;
        v256[1] = sub_22BC34D4C;
        v257 = *(v12 + 992);
        v218 = *(v12 + 312);
        goto LABEL_33;
      }

LABEL_53:
      v279 = *(v12 + 776);
      v280 = *(v12 + 592);
      v281 = *(v12 + 576);
      sub_22BB8EA14();
      sub_22BDB63A4();
      v282 = *(v165 + 16);
      v283 = sub_22BB73B58();
      v284(v283);
      v285 = sub_22BDB77C4();
      sub_22BDBB114();
      sub_22BB379BC();
      v287 = os_log_type_enabled(v285, v286);
      v288 = *(v12 + 776);
      v289 = *(v12 + 752);
      v290 = *(v12 + 744);
      if (v287)
      {
        v414 = *(v12 + 744);
        v291 = *(v12 + 648);
        v394 = *(v12 + 752);
        v292 = *(v12 + 608);
        v389 = v279;
        v293 = *(v12 + 576);
        v410 = *(v12 + 776);
        v294 = *(v12 + 560);
        v404 = *(v12 + 552);
        v295 = sub_22BB31AD8();
        v415 = sub_22BB314C8();
        *v295 = 136315138;
        sub_22BDB81D4();
        sub_22BB2F12C();
        sub_22BDBAC14();
        sub_22BC54A00();
        v296 = v404;
        v405 = *(v294 + 8);
        v405(v293, v296);
        v297 = sub_22BB2F12C();
        sub_22BB32EE0(v297, v298, v299);
        sub_22BC54B88();
        *(v295 + 4) = v293;
        _os_log_impl(&dword_22BB2C000, v285, v389, "stringQuery is not supported for type %s", v295, 0xCu);
        sub_22BB32FA4(v415);
        sub_22BB35600();
        sub_22BB89BBC();

        v300 = v410;
        v301 = v414;
      }

      else
      {
        v302 = *(v12 + 576);
        v303 = *(v12 + 560);
        v304 = *(v12 + 552);

        v405 = *(v303 + 8);
        v305 = sub_22BB2F324();
        v306(v305);
        v300 = v288;
        v301 = v290;
      }

      (v167)(v300, v301);
      v307 = *(v12 + 1320);
      v376 = *(v12 + 1304);
      v308 = *(v12 + 1248);
      v309 = *(v12 + 1240);
      v409 = *(v12 + 1224);
      v385 = *(v12 + 640);
      v390 = *(v12 + 1368);
      v310 = *(v12 + 616);
      v378 = *(v12 + 608);
      v382 = *(v12 + 1312);
      v311 = *(v12 + 592);
      v395 = *(v12 + 552);
      type metadata accessor for ExecutorError(0);
      sub_22BB3B760();
      sub_22BB8E56C(v312, v313);
      sub_22BB369E0();
      swift_allocError();
      sub_22BDB81D4();
      sub_22BB3A84C();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v308 + 8))(v376, v309);
      (*(v307 + 8))(v390, v382);
      (*(v310 + 8))(v385, v378);
      v405(v311, v395);
      goto LABEL_57;
    }

    if (v172 != *MEMORY[0x277D72D28])
    {
      goto LABEL_53;
    }

    v219 = *(v12 + 640);
    v220 = *(v12 + 624);
    v221 = *(v12 + 616);
    v222 = *(v12 + 608);
    sub_22BC549A0();
    v223 = sub_22BB3E460();
    v224(v223);
    v225 = *(v221 + 96);
    v226 = sub_22BB2F324();
    v227(v226);
    *(v12 + 1616) = *v220;
    swift_task_alloc();
    sub_22BB30B34();
    *(v12 + 1624) = v228;
    *v228 = v229;
    v228[1] = sub_22BC352E0;
    v230 = *(v12 + 528);
    v231 = *(v12 + 320);
    v232 = *(v12 + 288);
    sub_22BB33430();

    return sub_22BC44E90();
  }

  else
  {
    if (v76 == *MEMORY[0x277D1DC00])
    {
      sub_22BB3B500();
      v204 = *(v12 + 968);
      v205 = *(v12 + 960);
      v207 = *(v12 + 432);
      v206 = *(v12 + 440);
      v208 = *(v12 + 424);
      v209 = *(v12 + 320);
      v210 = *(v12 + 304);
      v211 = *(v12 + 288);
      v213 = sub_22BC54A3C(v212);
      v214(v213);
      (*(v207 + 32))(v206, v75, v208);
      sub_22BB30AE4();
      swift_storeEnumTagMultiPayload();
      v215 = swift_task_alloc();
      *(v12 + 1744) = v215;
      v215[2] = v209;
      v215[3] = v211;
      v215[4] = v210;
      sub_22BB32A48(dword_22BDBDA00);
      v216 = swift_task_alloc();
      *(v12 + 1752) = v216;
      *v216 = v12;
      v216[1] = sub_22BC37618;
      v217 = *(v12 + 968);
      v218 = *(v12 + 312);
LABEL_33:
      sub_22BB3487C(v218);
LABEL_49:
      sub_22BB33430();

      return v275(v271, v272, v273, v274, v275, v276, v277, v278, a9, a10, a11, a12);
    }

    if (v76 == *MEMORY[0x277D1DBF8])
    {
      v234 = *(v12 + 1176);
      v235 = *(v12 + 1168);
      v413 = *(v12 + 1144);
      v236 = *(v12 + 1120);
      v237 = *(v12 + 1056);
      v238 = *(v12 + 408);
      v239 = *(v12 + 416);
      v240 = *(v12 + 400);
      v241 = *(v12 + 312);
      v242 = *(v12 + 296);
      (*(*(v12 + 1112) + 96))(v236, *(v12 + 1104));
      (*(v238 + 32))(v239, v236, v240);
      sub_22BDB43D4();
      sub_22BC54F58(v241);
      sub_22BDB96A4();
      sub_22BC2E800(0, 0, v234);
      (v380)(v235, v413);
      v243 = sub_22BDB5F44();
      v244 = *(v243 + 48);
      v245 = *(v243 + 52);
      swift_allocObject();
      sub_22BDB5F34();
      sub_22BB30F68();
      v246 = type metadata accessor for AnswerSynthesisResolver();
      v247 = *(v246 + 48);
      v248 = *(v246 + 52);
      swift_allocObject();
      v249 = swift_task_alloc();
      *(v12 + 1776) = v249;
      *v249 = v12;
      v249[1] = sub_22BC37BB4;
      v250 = *(v12 + 1176);
      sub_22BB33430();

      return sub_22BBF2C3C();
    }

    else
    {
      v258 = *(v12 + 1104);
      sub_22BB33430();

      return sub_22BDBB6C4();
    }
  }
}

uint64_t sub_22BC330BC()
{
  sub_22BB2F35C();
  sub_22BC549F4();
  sub_22BB33FF4();
  *v4 = v3;
  v5 = v0[180];
  *v4 = *v2;
  *(v3 + 1448) = v1;

  sub_22BBC087C();
  v7 = *(v6 + 1432);
  v8 = v0[127];
  v9 = v0[40];
  sub_22BC52F5C(v8, type metadata accessor for ExecutorSELFLoggingInjector.QueryType);

  sub_22BB89DEC();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22BC33218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v13 = v12[129];
  v14 = v12[116];
  v15 = v12[113];
  v16 = v12[112];
  sub_22BDB4DF4();
  v17 = *(v15 + 88);
  v18 = sub_22BB30AE4();
  if (v19(v18) == *MEMORY[0x277D729E0])
  {
    v20 = v12[119];
    v21 = v12[118];
    v22 = v12[117];
    v23 = v12[116];
    v24 = v12[38];
    (*(v12[113] + 96))(v23, v12[112]);
    v25 = *v23;
    swift_projectBox();
    v26 = *(v21 + 16);
    v27 = sub_22BB3E460();
    v28(v27);

    sub_22BBBEE60(v24, (v12 + 17), &qword_27D8E2540, &unk_22BDBCC00);
    v29 = v12[20];
    v30 = v12[165];
    v31 = v12[156];
    v32 = v12[119];
    v33 = v12[118];
    if (v29)
    {
      v34 = v12[111];
      v93 = v12[163];
      v94 = v12[155];
      v35 = v12[110];
      v91 = v12[109];
      v92 = v12[117];
      v95 = v12[171];
      v96 = v12[164];
      v36 = v12[108];
      v37 = v12[107];
      v38 = v12[106];
      sub_22BB69FEC(v12 + 17, v29);
      sub_22BDB9834();
      (*(v37 + 104))(v36, *MEMORY[0x277D1E660], v38);
      sub_22BDBA394();
      sub_22BDB9824();
      sub_22BD6EF84();
      (*(v35 + 8))(v34, v91);
      (*(v33 + 8))(v32, v92);
      (*(v31 + 8))(v93, v94);
      (*(v30 + 8))(v95, v96);
      sub_22BB32FA4(v12 + 17);
    }

    else
    {
      (*(v33 + 8))(v12[119], v12[117]);
      v52 = *(v31 + 8);
      v53 = sub_22BB8E9D0();
      v54(v53);
      v55 = *(v30 + 8);
      v56 = sub_22BB2F324();
      v57(v56);
      sub_22BB58728((v12 + 17), &qword_27D8E2540, &unk_22BDBCC00);
    }
  }

  else
  {
    v39 = v12[171];
    v40 = v12[165];
    v41 = sub_22BB976FC();
    v42 = v12[116];
    v43 = v12[113];
    v44 = v12[112];
    (*(v45 + 8))(v41);
    v46 = *(v40 + 8);
    v47 = sub_22BB2F324();
    v48(v47);
    v49 = *(v43 + 8);
    v50 = sub_22BB2F0E0();
    v51(v50);
  }

  v58 = v12[137];
  v59 = v12[136];
  v60 = v12[135];
  v61 = v12[134];
  v62 = v12[131];
  v63 = v12[130];
  v64 = v12[129];
  v65 = v12[128];
  v66 = v12[35];
  v67 = sub_22BDB4E24();
  sub_22BB30ED8(v67);
  v69 = *(v68 + 32);
  v70 = sub_22BB31528();
  v71(v70);
  sub_22BBDB5D0(v64 + v65[5], v66 + v65[5], &qword_27D8E2530, &qword_22BDBCBF0);
  *(v66 + v65[6]) = *(v64 + v65[6]);
  *(v66 + v65[7]) = 1;
  v72 = *(v62 + 8);
  v73 = sub_22BB2F0E0();
  v74(v73);
  v75 = *(v59 + 8);
  v76 = sub_22BB2F324();
  v77(v76);
  sub_22BB305CC();
  v90 = v12[82];
  v79 = sub_22BB37614(v78);
  v80(v79);

  sub_22BB360FC();
  sub_22BB33430();

  return v82(v81, v82, v83, v84, v85, v86, v87, v88, a9, a10, a11, a12);
}

uint64_t sub_22BC33830()
{
  sub_22BB2F35C();
  v2 = *v1;
  v3 = *v1;
  sub_22BB3052C();
  *v4 = v3;
  v5 = v2[183];
  *v4 = *v1;
  v3[184] = v0;

  v6 = v2[169];
  v7 = v2[165];
  v8 = v2[164];
  v9 = v2[40];
  v10 = *(v7 + 8);
  v11 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v3[231] = v10;
    v3[232] = v11;
    v10(v6, v8);
    v12 = sub_22BC38E28;
  }

  else
  {
    v3[185] = v10;
    v3[186] = v11;
    v10(v6, v8);
    v12 = sub_22BC339C4;
  }

  return MEMORY[0x2822009F8](v12, v9, 0);
}

uint64_t sub_22BC339C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v13 = v12[184];
  v14 = v12[161];
  v15 = v12[92];
  v16 = v12[83];
  v17 = v12[82];
  sub_22BDB9F94();
  *(sub_22BC54AF8() + 16) = v15;
  sub_22BBC7848();
  sub_22BD796F4();

  sub_22BB36B74(v17);
  if (v18)
  {
    v19 = v12[101];
    sub_22BB58728(v12[82], &qword_27D8E2FD0, &unk_22BDBFB70);
    sub_22BDB63A4();
    v20 = sub_22BDB77C4();
    sub_22BDBB114();
    sub_22BB379BC();
    if (os_log_type_enabled(v20, v21))
    {
      *sub_22BB37F30() = 0;
      sub_22BC54DD8(&dword_22BB2C000, v22, v23, "query context has an invalid parameter key");
      sub_22BB89BBC();
    }

    v122 = v12[185];
    v123 = v12[186];
    v24 = v12[182];
    v120 = v12[164];
    v121 = v12[171];
    v25 = v12[156];
    v26 = v12[155];
    v125 = v12[105];
    v126 = v12[153];
    v27 = v12[104];
    v124 = v12[103];
    v28 = v12[101];
    v29 = v12[94];
    v30 = v12[93];
    v118 = v12[163];
    v119 = v12[92];
    v31 = v12[90];
    v116 = v12[161];
    v117 = v12[89];

    v32 = sub_22BB33728();
    v24(v32);
    type metadata accessor for ExecutorError(0);
    sub_22BB3B760();
    sub_22BB8E56C(v33, v34);
    sub_22BC5436C();
    sub_22BB369E0();
    v35 = swift_allocError();
    sub_22BC548FC(v35, v36);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v37 = *(v25 + 8);
    v37(v116, v26);
    v37(v118, v26);
    v122(v121, v120);
    (*(v31 + 8))(v119, v117);
    (*(v27 + 8))(v125, v124);
    sub_22BB58170();
    v38 = v12[154];
    v39 = v12[152];
    v40 = v12[171];
    v41 = v12[170];
    v42 = v12[169];
    v43 = v12[168];
    v44 = v12[167];
    v45 = v12[166];
    v46 = v12[163];
    v67 = v12[162];
    v68 = v12[161];
    v69 = v12[160];
    v70 = v12[159];
    v71 = v12[158];
    v72 = v12[157];
    v73 = v12[151];
    v74 = v12[148];
    v75 = v12[147];
    v76 = v12[146];
    v77 = v12[145];
    v78 = v12[142];
    v79 = v12[141];
    v80 = v12[140];
    v81 = v12[137];
    v82 = v12[134];
    v83 = v12[133];
    v84 = v12[132];
    v85 = v12[129];
    v86 = v12[127];
    v87 = v12[126];
    v88 = v12[125];
    v89 = v12[124];
    v90 = v12[123];
    v91 = v12[122];
    v92 = v12[121];
    v93 = v12[119];
    v94 = v12[116];
    v95 = v12[115];
    v96 = v12[114];
    v97 = v12[111];
    v98 = v12[108];
    v99 = v12[105];
    v100 = v12[102];
    v101 = v12[101];
    v102 = v12[100];
    v103 = v12[99];
    v104 = v12[98];
    v105 = v12[97];
    v106 = v12[96];
    v107 = v12[95];
    v108 = v12[92];
    v109 = v12[91];
    v110 = v12[88];
    v111 = v12[87];
    v112 = v12[86];
    v113 = v12[85];
    v114 = v12[82];
    v115 = v12[81];
    sub_22BB389F8();
    v47 = v12[43];
    v48(v38);

    sub_22BB2F09C();
    sub_22BB8EA84();
    sub_22BB33430();

    __asm { BRAA            X1, X16 }
  }

  v51 = v12[126];
  v52 = v12[120];
  v53 = v12[105];
  v54 = v12[85];
  (*(v12[84] + 32))(v54, v12[82], v12[83]);
  sub_22BB2F324();
  swift_storeEnumTagMultiPayload();
  v55 = swift_task_alloc();
  v12[187] = v55;
  *(v55 + 16) = v53;
  *(v55 + 24) = v54;
  sub_22BB32A48(dword_22BDBDA00);
  v56 = swift_task_alloc();
  v12[188] = v56;
  *v56 = v12;
  v56[1] = sub_22BC340D0;
  v57 = v12[126];
  sub_22BB3487C(v12[39]);
  sub_22BB33430();

  return v62(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12);
}

uint64_t sub_22BC340D0()
{
  sub_22BB6B9D0();
  sub_22BB30F5C();
  v4 = v3;
  sub_22BB34764();
  v5 = v1;
  sub_22BB3052C();
  *v6 = v1;
  v7 = v1[188];
  *v6 = *v2;
  v1[189] = v0;

  sub_22BB33218();
  v9 = *(v8 + 1496);
  v10 = v1[126];
  v11 = v1[40];
  if (v0)
  {
    sub_22BC52F5C(v10, type metadata accessor for ExecutorSELFLoggingInjector.QueryType);
  }

  else
  {
    v5[190] = v4;
    sub_22BB2F3CC(v10);
  }

  sub_22BC53C94();
  sub_22BB3A1C0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22BC34240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v54 = v12[190];
  v64 = v12[185];
  v65 = v12[186];
  v61 = v12[164];
  v62 = v12[171];
  v58 = v12[161];
  v59 = v12[163];
  v13 = v12[156];
  v60 = v12[128];
  v14 = v12[117];
  v15 = v12[115];
  v56 = v12[114];
  v57 = v12[155];
  v16 = v12[113];
  v53 = v12[112];
  v72 = v12[103];
  v73 = v12[105];
  v70 = v12[92];
  v71 = v12[104];
  v68 = v12[90];
  v69 = v12[89];
  v63 = v12[84];
  v66 = v12[83];
  v67 = v12[85];
  v17 = v12[81];
  v18 = v12[77];
  v50 = v12[76];
  v55 = v12[75];
  v19 = v12[35];
  v52 = swift_allocBox();
  v20 = sub_22BDBA604();
  v21 = swift_allocBox();
  v22 = *MEMORY[0x277D72CD8];
  sub_22BB30474(v20);
  (*(v23 + 104))();
  *v17 = v21;
  (*(v18 + 104))(v17, *MEMORY[0x277D72D50], v50);
  sub_22BDBA374();
  *v15 = v52;
  (*(v16 + 104))(v15, *MEMORY[0x277D729E0], v53);
  sub_22BC549A0();
  v24 = sub_22BB3FBBC();
  v25(v24);
  sub_22BDB4D94();
  sub_22BB30B28();
  sub_22BB336D0(v26, v27, v28, v29);
  MEMORY[0x23189EDB0](v56, 0, v55);
  (*(v16 + 8))(v15, v53);
  v30 = *(v13 + 8);
  v30(v58, v57);
  v30(v59, v57);
  v64(v62, v61);
  v31 = v60[5];
  type metadata accessor for ResultResponse(0);
  sub_22BB30B28();
  sub_22BB336D0(v32, v33, v34, v35);
  *(v19 + v60[6]) = 0;
  *(v19 + v60[7]) = 0;
  (*(v63 + 8))(v67, v66);
  v36 = sub_22BC548BC();
  v37(v36);
  (*(v71 + 8))(v73, v72);
  sub_22BB305CC();
  v51 = v12[82];
  v39 = sub_22BB37614(v38);
  v40(v39);

  sub_22BB360FC();
  sub_22BB33430();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
}

uint64_t sub_22BC347A4()
{
  sub_22BB6B9D0();
  sub_22BB30F5C();
  v4 = v3;
  sub_22BB34764();
  v5 = v1;
  sub_22BB3052C();
  *v6 = v1;
  v7 = v1[195];
  *v6 = *v2;
  v1[196] = v0;

  sub_22BB33218();
  v9 = *(v8 + 1552);
  v10 = v1[125];
  v11 = v1[40];
  if (v0)
  {
    sub_22BC52F5C(v10, type metadata accessor for ExecutorSELFLoggingInjector.QueryType);
  }

  else
  {
    v5[197] = v4;
    sub_22BB2F3CC(v10);
  }

  sub_22BC53C94();
  sub_22BB3A1C0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22BC34914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v57 = v13[197];
  v15 = v13[193];
  v63 = v13[192];
  sub_22BC540F8();
  v61 = v13[163];
  v58 = v16;
  v59 = v13[156];
  v60 = v13[155];
  sub_22BC549AC();
  v17 = sub_22BC53DB4();
  sub_22BDB81D4();
  sub_22BDBA374();
  *v12 = v17;
  v18 = *MEMORY[0x277D729E0];
  sub_22BB72DD8();
  v19 = sub_22BC53C5C();
  v20(v19);
  sub_22BBC02F0();
  v21 = sub_22BB30AE4();
  v22(v21);
  sub_22BDB4D94();
  sub_22BB30B28();
  sub_22BB336D0(v23, v24, v25, v26);
  v27 = sub_22BC541D0();
  MEMORY[0x23189EDB0](v27);

  v28 = *(v14 + 8);
  v29 = sub_22BB2F0E0();
  v30(v29);
  v31 = sub_22BC548AC();
  v32(v31);
  v33 = sub_22BB70810();
  v34(v33);
  v35 = *(v62 + 20);
  type metadata accessor for ResultResponse(0);
  sub_22BB30B28();
  sub_22BB336D0(v36, v37, v38, v39);

  v40 = sub_22BC54420();
  v41(v40);
  v42 = sub_22BC54BD0();
  v43(v42);
  sub_22BB305CC();
  v56 = v13[82];
  v45 = sub_22BB37614(v44);
  v46(v45);

  sub_22BB360FC();
  sub_22BB33430();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
}

uint64_t sub_22BC34D4C()
{
  sub_22BB6B9D0();
  sub_22BB30F5C();
  v4 = v3;
  sub_22BB34764();
  v5 = v1;
  sub_22BB3052C();
  *v6 = v1;
  v7 = v1[199];
  *v6 = *v2;
  v1[200] = v0;

  sub_22BB33218();
  v9 = *(v8 + 1584);
  v10 = v1[124];
  v11 = v1[40];
  if (v0)
  {
    sub_22BC52F5C(v10, type metadata accessor for ExecutorSELFLoggingInjector.QueryType);
  }

  else
  {
    v5[201] = v4;
    sub_22BB2F3CC(v10);
  }

  sub_22BC53C94();
  sub_22BB3A1C0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22BC34EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v15 = v13[201];
  v60 = v13[192];
  sub_22BC540F8();
  v58 = v13[163];
  v56 = v13[156];
  v57 = v13[155];
  sub_22BC549AC();
  v16 = sub_22BC53DB4();
  sub_22BDB81D4();
  sub_22BDBA374();
  *v12 = v16;
  v17 = *MEMORY[0x277D729E0];
  sub_22BB72DD8();
  v18 = sub_22BC53C5C();
  v19(v18);
  sub_22BBC02F0();
  v20 = sub_22BB30AE4();
  v21(v20);
  sub_22BDB4D94();
  sub_22BB30B28();
  sub_22BB336D0(v22, v23, v24, v25);
  v26 = sub_22BC541D0();
  MEMORY[0x23189EDB0](v26);
  v27 = *(v14 + 8);
  v28 = sub_22BB2F0E0();
  v29(v28);
  v30 = sub_22BC548AC();
  v31(v30);
  v32 = sub_22BB70810();
  v33(v32);
  v34 = *(v59 + 20);
  type metadata accessor for ResultResponse(0);
  sub_22BB30B28();
  sub_22BB336D0(v35, v36, v37, v38);

  v39 = sub_22BC54420();
  v40(v39);
  v41 = sub_22BC54BD0();
  v42(v41);
  sub_22BB305CC();
  v55 = v13[82];
  v44 = sub_22BB37614(v43);
  v45(v44);

  sub_22BB360FC();
  sub_22BB33430();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
}

uint64_t sub_22BC352E0()
{
  sub_22BB2F35C();
  sub_22BB34764();
  sub_22BB33FF4();
  *v4 = v3;
  v5 = *(v1 + 1624);
  *v4 = *v2;
  *(v3 + 1632) = v0;

  sub_22BB33218();
  v7 = *(v6 + 320);
  sub_22BB3A3F4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BC353F4()
{
  sub_22BB36BC0();
  sub_22BB35458();
  (*(v1[65] + 32))(v1[67], v1[66], v1[64]);
  sub_22BC54590();
  v6 = sub_22BB331D4();
  sub_22BC54F58(v6);
  sub_22BDB96A4();
  v7 = v0;
  v8 = sub_22BDB9744();
  v9 = sub_22BB30AE4();
  (v3)(v9);
  v1[32] = v8;
  v10 = sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
  sub_22BB52D90(&qword_281428810);
  sub_22BB966C8();

  v11 = v1[28];
  v1[205] = v11;
  if (!v11)
  {
    sub_22BB6FE48();
    type metadata accessor for RuntimeError();
    sub_22BB326C8();
    sub_22BB8E56C(v20, v21);
    sub_22BC54D40();
    sub_22BB369E0();
    v22 = swift_allocError();
    sub_22BC548FC(v22, v23);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v10 + 8))(v43, v2);
    v24 = *(v4 + 8);
    v25 = sub_22BC54528();
    v26(v25);
    v27 = *(v5 + 8);
    v28 = sub_22BC54D90();
    v29(v28);
    (*(v7 + 8))();
    (*(v3 + 8))();
    v30 = sub_22BC549C4();
    v31(v30);
    sub_22BB58170();
    v32 = v1[154];
    v33 = v1[152];
    sub_22BBC05D8();
    v34 = v1[166];
    v35 = v1[163];
    v36 = v1[162];
    v40 = v1[161];
    v41 = v1[160];
    sub_22BC540C8();
    sub_22BC540BC();
    sub_22BC540B0();
    sub_22BC540A4();
    sub_22BB97594();
    sub_22BB97604();
    sub_22BC54098();
    sub_22BC5408C();
    sub_22BC54080();
    sub_22BC54074();
    sub_22BC54068();
    sub_22BC5405C();
    sub_22BC54050();
    sub_22BC54044();
    sub_22BC54038();
    sub_22BC5402C();
    sub_22BC54000();
    sub_22BC53FF4();
    sub_22BC53FE8();
    sub_22BC53FDC();
    sub_22BC53FD0();
    sub_22BB955C0();
    sub_22BB70790();
    v42 = v1[80];
    sub_22BB3907C();
    v44 = v1[44];
    v45 = v1[43];
    v37(v32);

    sub_22BB2F09C();
    sub_22BB8EA84();
    sub_22BB33430();

    __asm { BRAA            X1, X16 }
  }

  sub_22BC53D6C();
  v12 = *(v4 + 16);
  v13 = sub_22BB3FDB8();
  v14(v13);
  sub_22BB331D4();
  swift_storeEnumTagMultiPayload();
  v15 = swift_task_alloc();
  sub_22BB97CA0(v15);
  swift_task_alloc();
  sub_22BB30B34();
  v1[207] = v16;
  *v16 = v17;
  sub_22BB68ED4(v16);
  sub_22BB33430();

  return sub_22BC6E680();
}

uint64_t sub_22BC3599C()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  sub_22BB34764();
  v3 = v1;
  sub_22BB3052C();
  *v4 = v1;
  v5 = v1[207];
  *v4 = *v2;
  v1[208] = v0;

  sub_22BB33218();
  v7 = *(v6 + 1648);
  v8 = v1[205];
  if (v0)
  {
    v9 = v3[202];
    v10 = v3[123];
    v11 = v3[40];
    sub_22BB2F3CC(v10);
  }

  else
  {
    v12 = v3[40];
    sub_22BB2F3CC(v3[123]);
  }

  sub_22BB3478C();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22BC35B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  if (*(*v13[62] + 16))
  {
    v15 = v13[202];
    v276 = v13[171];
    v278 = v13[62];
    v272 = v13[165];
    v274 = v13[164];
    v269 = v13[163];
    v266 = v13[156];
    v268 = v13[155];
    v288 = v13[131];
    v290 = v13[130];
    v293 = v13[133];
    v271 = v13[128];
    v16 = v13[117];
    v17 = v13[115];
    v259 = v13[114];
    v18 = v13[113];
    v19 = v13[112];
    v20 = v13[81];
    v304 = v13[80];
    v296 = v13[77];
    v299 = v13[76];
    v261 = v13[75];
    sub_22BC54BE4();
    v308 = v21;
    v280 = v12;
    v282 = v13[65];
    v284 = v13[64];
    v286 = v13[67];
    v270 = v13[61];
    v264 = v13[60];
    v22 = v13[35];

    v23 = swift_allocBox();
    sub_22BDB81D4();

    sub_22BB7031C();
    sub_22BDBA374();
    *v17 = v23;
    (*(v18 + 104))(v17, *MEMORY[0x277D729E0], v19);
    v24 = *(v18 + 16);
    v25 = sub_22BB92810();
    v26(v25);
    sub_22BDB4D94();
    sub_22BB30B28();
    sub_22BB336D0(v27, v28, v29, v30);
    MEMORY[0x23189EDB0](v259, 0, v261);
    (*(v18 + 8))(v17, v19);
    (*(v266 + 8))(v269, v268);
    (*(v272 + 8))(v276, v274);
    sub_22BBBEE60(v278 + *(v264 + 52), v22 + v271[5], &qword_27D8E2530, &qword_22BDBCBF0);
    v31 = *(v278 + *(v264 + 60));
    *(v22 + v271[6]) = v31;
    *(v22 + v271[7]) = 1;
    v32 = *(v270 + 8);
    v33 = v31;
    v34 = sub_22BB33728();
    v32(v34);
    (*(v288 + 8))(v293, v290);
    v35 = sub_22BC548AC();
    v36(v35);
    (*(v296 + 8))(v304, v299);
    (*(v301 + 8))(v280, v308);
LABEL_3:
    sub_22BB305CC();
    v38 = sub_22BB353CC(v37);
    v39(v38);

    sub_22BB360FC();
LABEL_4:
    sub_22BB33430();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
  }

  v49 = v13[98];
  v50 = v13[74];
  v51 = v13[73];
  sub_22BB8EA14();
  sub_22BDB63A4();
  v13[209] = *(v14 + 16);
  v13[210] = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v52 = sub_22BB73B58();
  v53(v52);
  v54 = sub_22BDB77C4();
  v55 = sub_22BDBB104();
  v56 = sub_22BB73AEC(v55);
  v57 = v13[191];
  v58 = v13[98];
  v59 = v13[94];
  v60 = v13[93];
  if (v56)
  {
    v303 = v13[94];
    v307 = v13[93];
    v60 = v13[81];
    v59 = v13[76];
    v61 = v13[73];
    v62 = v13[70];
    v295 = v13[69];
    v301 = v13[191];
    v63 = sub_22BB31AD8();
    v298 = v58;
    v309 = sub_22BB314C8();
    *v63 = 136315138;
    sub_22BDB81D4();
    sub_22BB2F12C();
    sub_22BDBAC14();
    sub_22BC54A00();
    v64 = *(v62 + 8);
    v64(v61, v295);
    v65 = sub_22BB2F12C();
    sub_22BB32EE0(v65, v66, v67);
    sub_22BC54B88();
    *(v63 + 4) = v61;
    _os_log_impl(&dword_22BB2C000, v54, v55, "Falling back to AppEntityStringQuery to find candidates for %s", v63, 0xCu);
    sub_22BB32FA4(v309);
    sub_22BB3A3D8();
    sub_22BB2F194();

    (v301)(v58, v307);
  }

  else
  {
    v68 = v13[73];
    v69 = v13[70];
    v70 = v13[69];

    v64 = *(v69 + 8);
    v71 = sub_22BB2F324();
    (v64)(v71);
    v72 = sub_22BB38518();
    v57(v72);
  }

  v13[211] = v64;
  v73 = v13[89];
  v74 = v13[87];
  v75 = v13[36];
  sub_22BDB9CE4();
  sub_22BB36B74(v74);
  if (v120)
  {
    v76 = v13[202];
    v77 = v13[87];

    sub_22BB58728(v77, &qword_27D8E2FC8, &unk_22BDBD9C0);
    type metadata accessor for RuntimeError();
    sub_22BB326C8();
    sub_22BB8E56C(v78, v79);
    sub_22BB3E374();
    v80 = swift_allocError();
    sub_22BC54C4C(v80, v81);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22BBD2230();
    v82 = v13[29];
    v83 = v13[31];
    if (!sub_22BC308E0(v13[30]))
    {
      v127 = v13[210];
      v128 = v13[209];
      v129 = v13[95];
      v130 = v13[74];
      v131 = v13[71];
      v132 = v13[69];
      sub_22BDB63A4();
      v133 = sub_22BB39478();
      v128(v133);
      v134 = v80;
      v135 = sub_22BDB77C4();
      LOBYTE(v128) = sub_22BDBB114();

      os_log_type_enabled(v135, v128);
      v136 = v13[211];
      sub_22BBCC0D0();
      if (v137)
      {
        v138 = v13[81];
        v139 = v13[76];
        sub_22BC53F80();
        v292 = v140;
        sub_22BB3B778();
        v295 = v59;
        v141 = sub_22BBBEE2C();
        v60 = sub_22BB314C8();
        *v80 = 136315394;
        sub_22BDB81D4();
        sub_22BB331D4();
        sub_22BDBAC14();
        v142 = sub_22BB9573C(v303 + 8);
        v136(v142, v292);
        v143 = sub_22BB331D4();
        sub_22BB32EE0(v143, v144, v145);

        sub_22BC5484C();
        v146 = sub_22BC54A48();
        v147 = _swift_stdlib_bridgeErrorToNSError();
        *(v80 + 14) = v147;
        *v141 = v147;
        sub_22BC54620(&dword_22BB2C000, v148, v149, "AppEntityStringQuery encountered error for %s. Error: %@");
        sub_22BB58728(v141, &unk_27D8E6A70, &unk_22BDBCDB0);
        MEMORY[0x2318A6080](v141, -1, -1);
        sub_22BB32FA4(v60);
        sub_22BB38680();
        sub_22BB3A3D8();

        v150 = sub_22BC53F6C();
        v151(v150);
      }

      else
      {
        v182 = v13[71];
        sub_22BB8EA14();

        v183 = sub_22BB9573C(v132 + 8);
        v136(v183, v131);
        v184 = sub_22BB976C0();
        (v60)(v184);
      }

      sub_22BB3FC58();
      v185 = v13[156];
      sub_22BB36B94();
      v186 = v13[115];
      v187 = v13[113];
      v263 = v13[112];
      v188 = v13[81];
      sub_22BB3E0F4();
      sub_22BC54A00();
      v189 = sub_22BDBA604();
      v190 = swift_allocBox();
      v191 = *MEMORY[0x277D72CC8];
      sub_22BB30474(v189);
      (*(v192 + 104))();
      *v188 = v190;
      sub_22BB72DD8();
      v193(v188, v258);
      sub_22BDBA374();
      *v186 = v60;
      (*(v187 + 104))(v186, *MEMORY[0x277D729E0], v263);
      sub_22BDB4D94();
      sub_22BB30B28();
      sub_22BB336D0(v194, v195, v196, v197);
      MEMORY[0x23189EDB0](v186, 0);

      (*(v185 + 8))();
      v198 = sub_22BBC2530();
      v199(v198);
      sub_22BC54A84();
      sub_22BB30B28();
      sub_22BB336D0(v200, v201, v202, v203);
      v204 = sub_22BB31504();
      v205(v204);
      v206 = sub_22BB6B714();
      v207(v206);
      v208 = sub_22BC5482C();
      v209(v208);
      v210 = sub_22BC5486C();
      v211(v210);
      (v301)(v298, v295);
      goto LABEL_3;
    }

    v84 = v13[89];
    v85 = v13[86];
    v86 = v13[36];
    sub_22BDB9CE4();
    sub_22BB6BE24(v85);
    if (v120)
    {
      v305 = v13[211];
      v87 = v13[165];
      v277 = v13[164];
      v279 = v13[171];
      v88 = v13[156];
      v273 = v13[155];
      v275 = v13[163];
      v89 = v13[131];
      v285 = v13[130];
      v287 = v13[133];
      v90 = v13[77];
      v289 = v13[76];
      v300 = v13[74];
      v302 = v13[153];
      v291 = v13[70];
      v294 = v13[80];
      v297 = v13[69];
      v91 = v13[65];
      v281 = v13[64];
      v283 = v13[67];
      v92 = v13[61];
      v93 = v13[62];
      v94 = v13[60];
      sub_22BB58728(v13[86], &qword_27D8E2FC8, &unk_22BDBD9C0);
      swift_willThrow();
      (*(v88 + 8))(v275, v273);
      (*(v87 + 8))(v279, v277);
      v95 = *(v92 + 8);
      v96 = sub_22BB32E04();
      v97(v96);
      (*(v89 + 8))(v287, v285);
      (*(v91 + 8))(v283, v281);
      v98 = *(v90 + 8);
      v99 = sub_22BC54528();
      v100(v99);
      v101 = sub_22BC5429C();
      v102(v101);
      sub_22BC53F94();
      v103 = v13[171];
      v104 = v13[170];
      v105 = v13[169];
      sub_22BB3341C();
      v212 = v13[162];
      v213 = v13[161];
      v214 = v13[160];
      v215 = v13[159];
      v216 = v13[158];
      v217 = v13[157];
      v218 = v13[151];
      v219 = v13[148];
      v220 = v13[147];
      v221 = v13[146];
      v222 = v13[145];
      v223 = v13[142];
      v224 = v13[141];
      v225 = v13[140];
      v226 = v13[137];
      v227 = v13[134];
      v228 = v13[133];
      v229 = v13[132];
      v230 = v13[129];
      v231 = v13[127];
      v232 = v13[126];
      v233 = v13[125];
      v234 = v13[124];
      v235 = v13[123];
      v236 = v13[122];
      v237 = v13[121];
      v238 = v13[119];
      v239 = v13[116];
      v240 = v13[115];
      v241 = v13[114];
      v242 = v13[111];
      v243 = v13[108];
      v244 = v13[105];
      v245 = v13[102];
      v246 = v13[101];
      v247 = v13[100];
      v248 = v13[99];
      v249 = v13[98];
      v250 = v13[97];
      v251 = v13[96];
      v252 = v13[95];
      v253 = v13[92];
      v254 = v13[91];
      v255 = v13[88];
      v256 = v13[87];
      v257 = v13[86];
      v260 = v13[85];
      v262 = v13[82];
      v265 = v13[81];
      v267 = v13[80];
      sub_22BB3907C();
      v106 = v13[43];
      v306 = v13[44];
      v107(v94);

      sub_22BB2F09C();
      goto LABEL_4;
    }

    v169 = v13[167];
    v170 = v13[166];
    v171 = v13[165];
    v172 = v13[164];
    sub_22BC5483C();
    sub_22BDB9034();
    v173 = v80[1];
    v174 = sub_22BB393C4();
    v175(v174);
    v176 = *(v171 + 32);
    v177 = sub_22BB30AE4();
    v178(v177);
    swift_task_alloc();
    sub_22BB30B34();
    v13[234] = v179;
    *v179 = v180;
    sub_22BBADC08(v179);
  }

  else
  {
    v108 = v13[208];
    v109 = v13[202];
    v110 = v13[174];
    v111 = v13[155];
    v112 = v13[91];
    v114 = v13[57];
    v113 = v13[58];
    v115 = v13[56];
    v116 = v13[40];
    (*(v13[90] + 32))(v112, v13[87], v13[89]);
    v117 = *(v114 + 24);
    v118 = sub_22BB35464();
    v119(v118);
    *(sub_22BC54AF8() + 16) = v112;
    sub_22BD79720();

    sub_22BB36B74(v115);
    if (!v120)
    {
      v152 = v13[160];
      v153 = v13[159];
      v154 = v13[155];
      v155 = v13[56];
      v156 = *(v13[156] + 32);
      v157 = sub_22BBBE718();
      v156(v157);
      v158 = sub_22BB2F324();
      v156(v158);
      sub_22BC54560();
      v159 = swift_task_alloc();
      sub_22BB89BD8(v159);
      sub_22BB32A48(dword_22BDBDA00);
      v160 = swift_task_alloc();
      v13[215] = v160;
      *v160 = v13;
      sub_22BB97BC0(v160);
      sub_22BB33430();

      return v165(v161, v162, v163, v164, v165, v166, v167, v168, a9, a10, a11, a12);
    }

    v121 = v13[168];
    v122 = v13[91];
    sub_22BB58728(v13[56], &qword_27D8E2FC0, &qword_22BDBFB90);
    sub_22BDB9034();
    swift_task_alloc();
    sub_22BB30B34();
    v13[212] = v123;
    *v123 = v124;
    v123[1] = sub_22BC36D54;
    v125 = v13[168];
    v126 = v13[158];
  }

  sub_22BC5489C();
  sub_22BB33430();

  return sub_22BC1EF68();
}

uint64_t sub_22BC36D54()
{
  sub_22BB2F35C();
  sub_22BC549F4();
  sub_22BB33FF4();
  *v4 = v3;
  v5 = v0[212];
  *v4 = *v2;
  *(v3 + 1704) = v1;

  sub_22BBC087C();
  v7 = v0[165];
  v8 = v0[164];
  v9 = v0[40];
  (*(v7 + 8))(*(v6 + 1344), v8);
  sub_22BB89DEC();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22BC36EB4()
{
  sub_22BB34E84();
  (*(v0[156] + 32))(v0[160], v0[158], v0[155]);
  sub_22BC54560();
  v1 = swift_task_alloc();
  sub_22BB89BD8(v1);
  sub_22BB32A48(dword_22BDBDA00);
  v6 = v2;
  v3 = swift_task_alloc();
  v0[215] = v3;
  *v3 = v0;
  v4 = sub_22BB97BC0(v3);

  return v6(v4);
}

uint64_t sub_22BC36F70()
{
  sub_22BB6B9D0();
  sub_22BB30F5C();
  v4 = v3;
  sub_22BB34764();
  v5 = v1;
  sub_22BB3052C();
  *v6 = v1;
  v7 = v1[215];
  *v6 = *v2;
  v1[216] = v0;

  sub_22BB33218();
  v9 = *(v8 + 1712);
  v10 = v1[122];
  v11 = v1[40];
  if (v0)
  {
    sub_22BC52F5C(v10, type metadata accessor for ExecutorSELFLoggingInjector.QueryType);
  }

  else
  {
    v5[217] = v4;
    sub_22BB2F3CC(v10);
  }

  sub_22BC53C94();
  sub_22BB3A1C0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22BC370E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v48 = v13[217];
  v73 = v13[211];
  v56 = v13[165];
  v57 = v13[164];
  v58 = v13[171];
  v51 = v13[163];
  v65 = v13[160];
  sub_22BB6970C();
  v49 = v15;
  v50 = v14;
  v66 = v13[131];
  v68 = v13[130];
  v69 = v13[133];
  v53 = v13[128];
  v16 = v13[117];
  v17 = v13[115];
  v18 = v13[113];
  v47 = v13[112];
  v62 = v13[91];
  v59 = v13[90];
  v60 = v13[89];
  v19 = v13[81];
  v67 = v13[77];
  v70 = v13[76];
  v71 = v13[80];
  v20 = v13[75];
  sub_22BC54BE4();
  v72 = v21;
  v61 = v13[65];
  v63 = v13[64];
  v64 = v13[67];
  v22 = v13[61];
  v54 = v13[60];
  v55 = v13[62];
  v23 = v13[35];
  v24 = swift_allocBox();
  sub_22BDB81D4();
  sub_22BDBA374();
  *v17 = v24;
  (*(v18 + 104))(v17, *MEMORY[0x277D729E0], v47);
  sub_22BDB4D94();
  sub_22BB30B28();
  sub_22BB336D0(v25, v26, v27, v28);
  MEMORY[0x23189EDB0](v17, 0, v20);
  v29 = *(v49 + 8);
  v29(v51, v50);
  (*(v56 + 8))(v58, v57);
  v30 = v53[5];
  type metadata accessor for ResultResponse(0);
  sub_22BB30B28();
  sub_22BB336D0(v31, v32, v33, v34);
  *(v23 + v53[6]) = 0;
  *(v23 + v53[7]) = 0;
  (*(v22 + 8))(v55, v54);
  v29(v65, v50);
  (*(v59 + 8))(v62, v60);
  (*(v66 + 8))(v69, v68);
  (*(v61 + 8))(v64, v63);
  (*(v67 + 8))(v71, v70);
  v73(v12, v72);
  sub_22BB305CC();
  v52 = v13[82];
  v36 = sub_22BB37614(v35);
  v37(v36);

  sub_22BB360FC();
  sub_22BB33430();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
}

uint64_t sub_22BC37618()
{
  sub_22BB6B9D0();
  sub_22BB30F5C();
  v4 = v3;
  sub_22BB34764();
  v5 = v1;
  sub_22BB3052C();
  *v6 = v1;
  v7 = v1[219];
  *v6 = *v2;
  v1[220] = v0;

  sub_22BB33218();
  v9 = *(v8 + 1744);
  v10 = v1[121];
  v11 = v1[40];
  if (v0)
  {
    sub_22BC52F5C(v10, type metadata accessor for ExecutorSELFLoggingInjector.QueryType);
  }

  else
  {
    v5[221] = v4;
    sub_22BB2F3CC(v10);
  }

  sub_22BC53C94();
  sub_22BB3A1C0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22BC37788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v13 = v12[221];
  sub_22BC540F8();
  v55 = v14;
  v56 = v15;
  v52 = v12[163];
  v53 = v16;
  v17 = v12[156];
  v54 = v12[128];
  v18 = v12[117];
  v19 = v12[115];
  v20 = v12[113];
  v48 = v12[112];
  v21 = v12[81];
  v49 = v12[75];
  v23 = v12[54];
  v22 = v12[55];
  v50 = v12[53];
  v51 = v12[155];
  v24 = v12[35];
  v25 = swift_allocBox();
  sub_22BDB81D4();
  sub_22BDBA374();
  *v19 = v25;
  (*(v20 + 104))(v19, *MEMORY[0x277D729E0], v48);
  sub_22BDB4D94();
  sub_22BB30B28();
  sub_22BC54814(v26, v27, v28, v29);
  MEMORY[0x23189EDB0](v19, 0, v49);
  (*(v23 + 8))(v22, v50);
  (*(v17 + 8))(v52, v51);
  (*(v53 + 8))(v56, v55);
  v30 = v54[5];
  type metadata accessor for ResultResponse(0);
  sub_22BB30B28();
  sub_22BB336D0(v31, v32, v33, v34);
  *(v24 + v54[6]) = 0;
  *(v24 + v54[7]) = 0;
  sub_22BB305CC();
  v47 = v12[82];
  v36 = sub_22BB37614(v35);
  v37(v36);

  sub_22BB360FC();
  sub_22BB33430();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
}

uint64_t sub_22BC37BB4()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  sub_22BB37AB0();
  *v2 = v1;
  v4 = *(v3 + 1776);
  v5 = *(v3 + 320);
  v6 = *v0;
  sub_22BB3052C();
  *v7 = v6;
  *(v9 + 1784) = v8;

  v10 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22BC37CAC()
{
  sub_22BB2F35C();
  v1 = v0[52];
  v2 = v0[49];
  v3 = *(v0[47] + 48);
  MEMORY[0x2318A21E0]();
  sub_22BD4477C();
  v0[224] = v4;

  swift_task_alloc();
  sub_22BB30B34();
  v0[225] = v5;
  *v5 = v6;
  v5[1] = sub_22BC37D78;
  v7 = v0[223];
  v8 = v0[49];

  return sub_22BBF3364();
}

uint64_t sub_22BC37D78()
{
  sub_22BB2F35C();
  sub_22BC549F4();
  sub_22BB33FF4();
  *v4 = v3;
  v5 = *(v0 + 1800);
  *v4 = *v2;
  *(v3 + 1808) = v1;

  sub_22BBC087C();
  v7 = *(v6 + 1792);
  v8 = *(v0 + 320);

  sub_22BB89DEC();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BC37EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v13 = v12[223];
  sub_22BC540F8();
  v110 = v12[163];
  v107 = v12[156];
  v109 = v12[155];
  v105 = v12[132];
  v14 = v12[131];
  v111 = v12[128];
  v112 = v12[113];
  v113 = v12[112];
  v15 = v12[75];
  v16 = v12[51];
  v103 = v12[130];
  v104 = v12[52];
  v102 = v12[50];
  v18 = v12[47];
  v17 = v12[48];
  v108 = v12[49];
  v20 = v12[45];
  v19 = v12[46];
  v21 = v12[44];
  v22 = v12[35];
  sub_22BBBEE60(v108, v17, &qword_27D8E2FD8, &qword_22BDBD9E0);
  v106 = *(v18 + 48);
  v23 = sub_22BDB4D94();
  sub_22BB3591C(v15, v24, v25, v23);
  sub_22BDB4D54();
  v26 = sub_22BB33224();
  sub_22BB3591C(v26, v27, v28, v29);
  v30 = sub_22BDB4C34();
  sub_22BB3591C(v20, v31, v32, v30);
  sub_22BDB4BB4();
  v33 = sub_22BB3306C();
  sub_22BB336D0(v33, v34, v35, v36);
  sub_22BDB4DB4();
  sub_22BDB4DC4();
  sub_22BDB4DA4();

  (*(v14 + 8))(v105, v103);
  (*(v16 + 8))(v104, v102);
  (*(v107 + 8))(v110, v109);
  v37 = sub_22BC548BC();
  v38(v37);
  sub_22BB58728(v17 + v106, &qword_27D8E2530, &qword_22BDBCBF0);
  sub_22BBDB5D0(v108, v17, &qword_27D8E2FD8, &qword_22BDBD9E0);
  sub_22BBDB5D0(v17 + *(v18 + 48), v22 + v111[5], &qword_27D8E2530, &qword_22BDBCBF0);
  *(v22 + v111[6]) = 0;
  *(v22 + v111[7]) = 1;
  (*(v112 + 8))(v17, v113);
  v39 = v12[171];
  sub_22BB38668();
  v40 = v12[163];
  v41 = v12[162];
  v55 = v12[161];
  v56 = v12[160];
  v57 = v12[159];
  v58 = v12[158];
  v42 = v12[154];
  v43 = v12[152];
  v59 = v12[157];
  v60 = v12[151];
  v61 = v12[148];
  v62 = v12[147];
  v63 = v12[146];
  v64 = v12[145];
  v65 = v12[142];
  v66 = v12[141];
  v67 = v12[140];
  v68 = v12[137];
  v69 = v12[134];
  v70 = v12[133];
  v71 = v12[132];
  v72 = v12[129];
  v73 = v12[127];
  v74 = v12[126];
  v75 = v12[125];
  v76 = v12[124];
  v77 = v12[123];
  v78 = v12[122];
  v79 = v12[121];
  v80 = v12[119];
  v81 = v12[116];
  v82 = v12[115];
  v83 = v12[114];
  v84 = v12[111];
  v85 = v12[108];
  v86 = v12[105];
  v87 = v12[102];
  v88 = v12[101];
  v89 = v12[100];
  v90 = v12[99];
  v91 = v12[98];
  v92 = v12[97];
  v93 = v12[96];
  v94 = v12[95];
  v95 = v12[92];
  v96 = v12[91];
  v97 = v12[88];
  v98 = v12[87];
  v99 = v12[86];
  v100 = v12[85];
  v101 = v12[82];
  v44 = sub_22BB37614(v12[153]);
  v45(v44);

  sub_22BB360FC();
  sub_22BB33430();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
}

uint64_t sub_22BC384B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v13 = *(v12[165] + 8);
  v27 = v12[173];
  v14 = v12[171];
  v15 = v12[164];
  sub_22BB38668();
  v16 = sub_22BB34FD4();
  v17(v16);

  sub_22BB3ACAC();
  sub_22BB33430();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_22BC387B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v13 = *(v12 + 1824);
  (*(v12 + 1816))(*(v12 + 1304), *(v12 + 1240));
  v14 = *(v12 + 1840);
  v15 = *(v12 + 1832);
  v29 = *(v12 + 1408);
  v16 = *(v12 + 1368);
  v17 = *(v12 + 1312);
  sub_22BB38668();
  v18 = sub_22BB34FD4();
  v19(v18);

  sub_22BB3ACAC();
  sub_22BB33430();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_22BC38AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v13 = v12[171];
  v14 = v12[165];
  v15 = sub_22BB976FC();
  v44 = v12[153];
  v16 = v12[137];
  v17 = v12[136];
  v18 = v12[135];
  v19 = v12[134];
  v20 = v12[131];
  v21 = v12[130];
  (*(v22 + 8))(v15);
  v23 = *(v14 + 8);
  v24 = sub_22BB2F324();
  v25(v24);
  v26 = *(v20 + 8);
  v27 = sub_22BB32E04();
  v28(v27);
  v29 = *(v17 + 8);
  v30 = sub_22BB2F0E0();
  v31(v30);
  sub_22BB6F918();
  v32 = v12[181];
  sub_22BB34754();
  v33 = v12[170];
  sub_22BB37AD8();
  v34(v14 + 8);

  sub_22BB2F09C();
  sub_22BB33430();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t sub_22BC38E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v13 = v12[232];
  v14 = v12[231];
  v15 = v12[171];
  v16 = sub_22BB976FC();
  v39 = v12[105];
  v40 = v12[153];
  v17 = v12[104];
  v18 = v12[103];
  v19 = v12[92];
  v20 = v12[90];
  v21 = v12[89];
  (*(v22 + 8))(v16);
  v23 = sub_22BB2F324();
  v14(v23);
  v24 = *(v20 + 8);
  v25 = sub_22BB32E04();
  v26(v25);
  (*(v17 + 8))(v39, v18);
  sub_22BB6F918();
  v27 = v12[184];
  sub_22BB34754();
  v28 = v12[170];
  sub_22BB37AD8();
  v29(v13);

  sub_22BB2F09C();
  sub_22BB33430();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_22BC39194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v32 = v12[164];
  v33 = v12[171];
  v13 = v12[163];
  v39 = v12[105];
  v40 = v12[153];
  v14 = v12[104];
  v37 = v12[186];
  v38 = v12[103];
  v35 = v12[185];
  v36 = v12[92];
  v15 = v12[90];
  v34 = v12[89];
  v16 = v12[85];
  v17 = v12[84];
  v18 = v12[83];
  v19 = *(v12[156] + 8);
  (v19)(v12[161], v12[155]);
  v20 = sub_22BB2F0E0();
  v19(v20);
  v35(v33, v32);
  (*(v17 + 8))(v16, v18);
  (*(v15 + 8))(v36, v34);
  (*(v14 + 8))(v39, v38);
  sub_22BB6F918();
  v41 = v12[189];
  sub_22BB6B99C();
  sub_22BC540C8();
  sub_22BC540BC();
  sub_22BC540B0();
  sub_22BC540A4();
  sub_22BB97594();
  sub_22BB97604();
  sub_22BC54098();
  sub_22BC5408C();
  sub_22BC54080();
  sub_22BC54074();
  sub_22BC54068();
  sub_22BC5405C();
  sub_22BC54050();
  sub_22BC54044();
  sub_22BC54038();
  sub_22BC5402C();
  sub_22BC54000();
  sub_22BC53FF4();
  sub_22BC53FE8();
  sub_22BC53FDC();
  sub_22BC53FD0();
  sub_22BB955C0();
  sub_22BB70790();
  sub_22BB389F8();
  v21 = sub_22BC540E8();
  v22(v21);

  sub_22BB3ACAC();
  sub_22BB33430();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_22BC39618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v13 = *(v12 + 1368);
  v14 = *(v12 + 1320);
  v15 = *(v12 + 1312);
  v16 = *(v12 + 1304);
  v17 = *(v12 + 1248);
  v18 = *(v12 + 1240);
  v38 = *(v12 + 640);
  v39 = *(v12 + 1536);
  v19 = *(v12 + 616);
  v20 = *(v12 + 608);
  v41 = *(v12 + 592);
  v42 = *(v12 + 1224);
  v21 = *(v12 + 560);
  v40 = *(v12 + 552);

  v22 = *(v17 + 8);
  v23 = sub_22BB331D4();
  v24(v23);
  v25 = sub_22BB30C3C();
  v26(v25);

  (*(v19 + 8))(v38, v20);
  (*(v21 + 8))(v41, v40);
  sub_22BB6F918();
  v43 = *(v12 + 1568);
  sub_22BB6B99C();
  sub_22BC540C8();
  sub_22BC540BC();
  sub_22BC540B0();
  sub_22BC540A4();
  sub_22BB97594();
  sub_22BB97604();
  sub_22BC54098();
  sub_22BC5408C();
  sub_22BC54080();
  sub_22BC54074();
  sub_22BC54068();
  sub_22BC5405C();
  sub_22BC54050();
  sub_22BC54044();
  sub_22BC54038();
  sub_22BC5402C();
  sub_22BC54000();
  sub_22BC53FF4();
  sub_22BC53FE8();
  sub_22BC53FDC();
  sub_22BC53FD0();
  sub_22BB955C0();
  sub_22BB70790();
  sub_22BB389F8();
  v27 = sub_22BC540E8();
  v28(v27);

  sub_22BB3ACAC();
  sub_22BB33430();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_22BC39A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v13 = v12[192];
  v14 = v12[171];
  v15 = v12[165];
  v16 = v12[164];
  v17 = v12[80];
  v18 = v12[77];
  v19 = v12[76];
  v42 = v12[74];
  v43 = v12[153];
  v20 = v12[70];
  v21 = v12[69];
  (*(v12[156] + 8))(v12[163], v12[155]);
  v22 = *(v15 + 8);
  v23 = sub_22BB30AE4();
  v24(v23);

  v25 = sub_22BB51830();
  v26(v25);
  (*(v20 + 8))(v42, v21);
  sub_22BB6F918();
  v27 = v12[200];
  v28 = v12[154];
  v29 = v12[152];
  v30 = v12[171];
  v31 = v12[170];
  sub_22BB37AD8();
  v32(v28);

  sub_22BB2F09C();
  sub_22BB33430();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t sub_22BC39DFC()
{
  sub_22BB36BC0();
  sub_22BB35458();
  v6 = *(v0 + 1632);
  v7 = *(v0 + 768);
  sub_22BDB63F4();
  v8 = v6;
  v9 = sub_22BDB77C4();
  v10 = sub_22BDBB114();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1632);
  if (v11)
  {
    sub_22BB31AD8();
    v2 = sub_22BB2F340();
    *v1 = 138412290;
    v13 = v12;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    sub_22BB94CA4(v14);
    sub_22BB58D20();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    sub_22BB58728(v2, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB30458();
    sub_22BB32238();
  }

  else
  {
  }

  v20 = *(v0 + 536);
  v21 = *(v0 + 504);
  v22 = *(v0 + 752) + 8;
  (*(v0 + 1528))(*(v0 + 768), *(v0 + 744));
  sub_22BB30B28();
  sub_22BB336D0(v23, v24, v25, v21);
  sub_22BC54590();
  v26 = sub_22BB331D4();
  sub_22BC54F58(v26);
  sub_22BDB96A4();
  v27 = v21;
  v28 = sub_22BDB9744();
  v29 = sub_22BB30AE4();
  (v3)(v29);
  *(v0 + 256) = v28;
  v30 = sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
  sub_22BB52D90(&qword_281428810);
  sub_22BB966C8();

  v31 = *(v0 + 224);
  *(v0 + 1640) = v31;
  if (!v31)
  {
    sub_22BB6FE48();
    type metadata accessor for RuntimeError();
    sub_22BB326C8();
    sub_22BB8E56C(v40, v41);
    sub_22BC54D40();
    sub_22BB369E0();
    v42 = swift_allocError();
    sub_22BC548FC(v42, v43);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v30 + 8))(v63, v2);
    v44 = *(v4 + 8);
    v45 = sub_22BC54528();
    v46(v45);
    v47 = *(v5 + 8);
    v48 = sub_22BC54D90();
    v49(v48);
    (*(v27 + 8))();
    (*(v3 + 8))();
    v50 = sub_22BC549C4();
    v51(v50);
    sub_22BB58170();
    v52 = *(v0 + 1232);
    v53 = *(v0 + 1216);
    sub_22BBC05D8();
    v54 = *(v0 + 1328);
    v55 = *(v0 + 1304);
    v56 = *(v0 + 1296);
    v60 = *(v0 + 1288);
    v61 = *(v0 + 1280);
    sub_22BC540C8();
    sub_22BC540BC();
    sub_22BC540B0();
    sub_22BC540A4();
    sub_22BB97594();
    sub_22BB97604();
    sub_22BC54098();
    sub_22BC5408C();
    sub_22BC54080();
    sub_22BC54074();
    sub_22BC54068();
    sub_22BC5405C();
    sub_22BC54050();
    sub_22BC54044();
    sub_22BC54038();
    sub_22BC5402C();
    sub_22BC54000();
    sub_22BC53FF4();
    sub_22BC53FE8();
    sub_22BC53FDC();
    sub_22BC53FD0();
    sub_22BB955C0();
    sub_22BB70790();
    v62 = *(v0 + 640);
    sub_22BB3907C();
    v64 = *(v0 + 352);
    v65 = *(v0 + 344);
    v57(v52);

    sub_22BB2F09C();
    sub_22BB8EA84();
    sub_22BB33430();

    __asm { BRAA            X1, X16 }
  }

  sub_22BC53D6C();
  v32 = *(v4 + 16);
  v33 = sub_22BB3FDB8();
  v34(v33);
  sub_22BB331D4();
  swift_storeEnumTagMultiPayload();
  v35 = swift_task_alloc();
  sub_22BB97CA0(v35);
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 1656) = v36;
  *v36 = v37;
  sub_22BB68ED4(v36);
  sub_22BB33430();

  return sub_22BC6E680();
}

uint64_t sub_22BC3A488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v14 = v13[171];
  v15 = v13[165];
  v16 = sub_22BB976FC();
  v39 = v13[133];
  v40 = v17;
  v18 = v13[131];
  v19 = v13[130];
  v20 = v13[77];
  v41 = v13[76];
  v42 = v13[80];
  v44 = v13[74];
  v45 = v13[153];
  v21 = v13[70];
  v43 = v13[69];
  v22 = v13[67];
  v23 = v13[65];
  v24 = v13[64];
  (*(v25 + 8))(v16);
  (*(v15 + 8))(v40, v12);
  (*(v18 + 8))(v39, v19);
  (*(v23 + 8))(v22, v24);
  v26 = sub_22BC549C4();
  v27(v26);
  (*(v21 + 8))(v44, v43);
  sub_22BB6F918();
  v46 = v13[208];
  sub_22BB6B99C();
  sub_22BC540C8();
  sub_22BC540BC();
  sub_22BC540B0();
  sub_22BC540A4();
  sub_22BB97594();
  sub_22BB97604();
  sub_22BC54098();
  sub_22BC5408C();
  sub_22BC54080();
  sub_22BC54074();
  sub_22BC54068();
  sub_22BC5405C();
  sub_22BC54050();
  sub_22BC54044();
  sub_22BC54038();
  sub_22BC5402C();
  sub_22BC54000();
  sub_22BC53FF4();
  sub_22BC53FE8();
  sub_22BC53FDC();
  sub_22BC53FD0();
  sub_22BB955C0();
  sub_22BB70790();
  sub_22BB389F8();
  v28 = sub_22BC540E8();
  v29(v28);

  sub_22BB3ACAC();
  sub_22BB33430();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_22BC3A904()
{
  sub_22BB2F35C();
  sub_22BB34764();
  sub_22BB33FF4();
  *v4 = v3;
  v5 = *(v1 + 1872);
  *v4 = *v2;
  *(v3 + 1880) = v0;

  sub_22BB33218();
  v7 = *(v6 + 320);
  sub_22BB3A3F4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_22BC3AA18()
{
  sub_22BB36BC0();
  sub_22BB35458();
  v21 = v0[233];
  v44 = v0[211];
  v30 = v0[171];
  v1 = v0[165];
  v26 = v0[164];
  v27 = v0[167];
  v28 = v0[163];
  v18 = v0[157];
  v2 = v0[156];
  v20 = v0[155];
  v34 = v0[130];
  v35 = v0[133];
  v36 = v0[77];
  v37 = v0[76];
  v41 = v0[74];
  v42 = v0[153];
  v38 = v0[70];
  v39 = v0[80];
  v40 = v0[69];
  v33 = v0[67];
  v29 = v0[65];
  v31 = v0[131];
  v32 = v0[64];
  v25 = v0[62];
  v22 = v0[61];
  v24 = v0[60];
  v4 = v0[42];
  v3 = v0[43];
  v19 = v0[41];
  type metadata accessor for RuntimeError();
  sub_22BB326C8();
  sub_22BB8E56C(v5, v6);
  sub_22BB369E0();
  swift_allocError();
  v8 = v7;
  sub_22BDB9FA4();
  v9 = sub_22BDBA714();
  v11 = v10;
  (*(v4 + 8))(v3, v19);
  *v8 = v9;
  v8[1] = v11;
  sub_22BB37C88();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v12 = *(v2 + 8);
  v12(v18, v20);
  v13 = *(v1 + 8);
  v13(v27, v26);
  v12(v28, v20);
  v13(v30, v26);
  (*(v22 + 8))(v25, v24);
  (*(v31 + 8))(v35, v34);
  (*(v29 + 8))(v33, v32);
  (*(v36 + 8))(v39, v37);
  v44(v41, v40);
  v14 = *(v42 + 8);
  sub_22BB6B99C();
  sub_22BC540C8();
  sub_22BC540BC();
  sub_22BC540B0();
  sub_22BC540A4();
  sub_22BB97594();
  sub_22BB97604();
  sub_22BC54098();
  sub_22BC5408C();
  sub_22BC54080();
  sub_22BC54074();
  sub_22BC54068();
  sub_22BC5405C();
  sub_22BC54050();
  sub_22BC54044();
  sub_22BC54038();
  sub_22BC5402C();
  sub_22BC54000();
  sub_22BC53FF4();
  sub_22BC53FE8();
  sub_22BC53FDC();
  sub_22BC53FD0();
  sub_22BB955C0();
  sub_22BB70790();
  v23 = v0[80];
  sub_22BB3907C();
  v43 = v0[44];
  v45 = v0[43];
  v15(v2 + 8);

  sub_22BB2F09C();
  sub_22BB8EA84();
  sub_22BB33430();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22BC3B004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  (*(v13[90] + 8))(v13[91], v13[89]);
  v19 = v13[213];
  sub_22BBD2230();
  v20 = v13[29];
  v21 = v13[31];
  if (!sub_22BC308E0(v13[30]))
  {
    sub_22BC547BC();
    v38 = sub_22BB73B58();
    v16(v38);
    v39 = v19;
    v40 = sub_22BDB77C4();
    v41 = sub_22BDBB114();

    os_log_type_enabled(v40, v41);
    v42 = v13[211];
    sub_22BBCC0D0();
    if (v43)
    {
      v171 = v18;
      v44 = v13[81];
      v45 = v13[76];
      sub_22BC53F80();
      v170 = v46;
      sub_22BB3B778();
      v17 = sub_22BBBEE2C();
      v176 = sub_22BB314C8();
      *v19 = 136315394;
      sub_22BDB81D4();
      v47 = sub_22BDBAC14();
      v49 = v48;
      v50 = sub_22BB9573C(v174 + 8);
      v42(v50, v170);
      sub_22BB32EE0(v47, v49, &v176);
      sub_22BC54B88();
      sub_22BC5484C();
      v51 = v19;
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v52;
      *v17 = v52;
      sub_22BC54620(&dword_22BB2C000, v53, v54, "AppEntityStringQuery encountered error for %s. Error: %@");
      sub_22BB58728(v17, &unk_27D8E6A70, &unk_22BDBCDB0);
      sub_22BB38680();
      sub_22BC53B6C();
      sub_22BB3A3D8();

      v55 = sub_22BC53F6C();
      v56(v55);
    }

    else
    {
      v69 = v13[71];
      v70 = v13[70];
      v71 = v13[69];

      v72 = sub_22BB9573C(v70 + 8);
      v42(v72, v71);
      v73 = sub_22BB976C0();
      (v17)(v73);
    }

    sub_22BB3FC58();
    v74 = v13[156];
    sub_22BB36B94();
    v75 = v13[115];
    v76 = v13[113];
    v167 = v13[112];
    v77 = v13[81];
    sub_22BB3E0F4();
    sub_22BC54A00();
    v78 = sub_22BDBA604();
    v79 = swift_allocBox();
    v80 = *MEMORY[0x277D72CC8];
    sub_22BB30474(v78);
    v82 = (*(v81 + 104))();
    v90 = sub_22BC54534(v82, v83, v84, v85, v86, v87, v88, v89, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166);
    v91(v90);
    sub_22BDBA374();
    *v75 = v17;
    (*(v76 + 104))(v75, *MEMORY[0x277D729E0], v167);
    sub_22BDB4D94();
    v92 = sub_22BB3306C();
    sub_22BB336D0(v92, v93, v94, v95);
    v96 = sub_22BC541D0();
    MEMORY[0x23189EDB0](v96);

    (*(v74 + 8))();
    v97 = sub_22BBC2530();
    v98(v97);
    sub_22BC54A84();
    sub_22BB30B28();
    sub_22BB336D0(v99, v100, v101, v102);
    v103 = sub_22BB31504();
    v104(v103);
    v105 = sub_22BB6B714();
    v106(v105);
    v107 = sub_22BC5482C();
    v108(v107);
    v109 = sub_22BC5486C();
    v110(v109, v79);
    v173(v172, v171);
    sub_22BB305CC();
    v112 = sub_22BB353CC(v111);
    v113(v112);

    sub_22BB360FC();
    goto LABEL_11;
  }

  sub_22BC54E18();
  v22 = sub_22BB2F3FC();
  v24 = sub_22BB3AA28(v22, v23, v12);
  v25 = v13[165];
  v26 = v13[164];
  if (v24 == 1)
  {
    v27 = sub_22BB383F0();
    sub_22BB58728(v27, &qword_27D8E2FC8, &unk_22BDBD9C0);
    swift_willThrow();
    (*(v17 + 8))();
    (*(v25 + 8))(v169, v26);
    (*(v20 + 8))(v168, v14);
    (*(v19 + 1))();
    (*(v18 + 8))();
    v28 = *(v15 + 8);
    v29 = sub_22BC54528();
    v30(v29);
    v31 = sub_22BC5429C();
    v32(v31);
    sub_22BC53F94();
    v33 = v13[171];
    v34 = v13[170];
    v35 = v13[169];
    sub_22BB3341C();
    v36 = sub_22BB31848();
    v37(v36);

    sub_22BB2F09C();
LABEL_11:
    sub_22BB33430();

    return v115(v114, v115, v116, v117, v118, v119, v120, v121, a9, a10, a11, a12);
  }

  v57 = v13[167];
  v58 = v13[166];
  sub_22BC5483C();
  sub_22BDB9034();
  v59 = *(v19 + 1);
  v60 = sub_22BB393C4();
  v61(v60);
  v62 = *(v25 + 32);
  v63 = sub_22BB2F0E0();
  v64(v63);
  swift_task_alloc();
  sub_22BB30B34();
  v13[234] = v65;
  *v65 = v66;
  sub_22BBADC08(v65);
  sub_22BC5489C();
  sub_22BB33430();

  return sub_22BC1EF68();
}

uint64_t sub_22BC3BA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v18 = v12[91];
  v19 = v12[90];
  v20 = v12[89];
  (*(v12[156] + 8))(v12[160], v12[155]);
  v21 = *(v19 + 8);
  v22 = sub_22BB2F324();
  v23(v22);
  v24 = v12[216];
  sub_22BBD2230();
  v25 = v12[29];
  v26 = v12[31];
  if (!sub_22BC308E0(v12[30]))
  {
    sub_22BC547BC();
    v43 = sub_22BB73B58();
    v15(v43);
    v44 = v24;
    v45 = sub_22BDB77C4();
    v46 = sub_22BDBB114();

    os_log_type_enabled(v45, v46);
    v47 = v12[211];
    sub_22BBCC0D0();
    if (v48)
    {
      v176 = v17;
      v49 = v12[81];
      v50 = v12[76];
      sub_22BC53F80();
      v175 = v51;
      sub_22BB3B778();
      v16 = sub_22BBBEE2C();
      v181 = sub_22BB314C8();
      *v24 = 136315394;
      sub_22BDB81D4();
      v52 = sub_22BDBAC14();
      v54 = v53;
      v55 = sub_22BB9573C(v179 + 8);
      v47(v55, v175);
      sub_22BB32EE0(v52, v54, &v181);
      sub_22BC54B88();
      sub_22BC5484C();
      v56 = v24;
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v57;
      *v16 = v57;
      sub_22BC54620(&dword_22BB2C000, v58, v59, "AppEntityStringQuery encountered error for %s. Error: %@");
      sub_22BB58728(v16, &unk_27D8E6A70, &unk_22BDBCDB0);
      sub_22BB38680();
      sub_22BC53B6C();
      sub_22BB3A3D8();

      v60 = sub_22BC53F6C();
      v61(v60);
    }

    else
    {
      v74 = v12[71];
      v75 = v12[70];
      v76 = v12[69];

      v77 = sub_22BB9573C(v75 + 8);
      v47(v77, v76);
      v78 = sub_22BB976C0();
      (v16)(v78);
    }

    sub_22BB3FC58();
    v79 = v12[156];
    sub_22BB36B94();
    v80 = v12[115];
    v81 = v12[113];
    v172 = v12[112];
    v82 = v12[81];
    sub_22BB3E0F4();
    sub_22BC54A00();
    v83 = sub_22BDBA604();
    v84 = swift_allocBox();
    v85 = *MEMORY[0x277D72CC8];
    sub_22BB30474(v83);
    v87 = (*(v86 + 104))();
    v95 = sub_22BC54534(v87, v88, v89, v90, v91, v92, v93, v94, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171);
    v96(v95);
    sub_22BDBA374();
    *v80 = v16;
    (*(v81 + 104))(v80, *MEMORY[0x277D729E0], v172);
    sub_22BDB4D94();
    v97 = sub_22BB3306C();
    sub_22BB336D0(v97, v98, v99, v100);
    v101 = sub_22BC541D0();
    MEMORY[0x23189EDB0](v101);

    (*(v79 + 8))();
    v102 = sub_22BBC2530();
    v103(v102);
    sub_22BC54A84();
    sub_22BB30B28();
    sub_22BB336D0(v104, v105, v106, v107);
    v108 = sub_22BB31504();
    v109(v108);
    v110 = sub_22BB6B714();
    v111(v110);
    v112 = sub_22BC5482C();
    v113(v112);
    v114 = sub_22BC5486C();
    v115(v114, v84);
    v178(v177, v176);
    sub_22BB305CC();
    v117 = sub_22BB353CC(v116);
    v118(v117);

    sub_22BB360FC();
    goto LABEL_11;
  }

  sub_22BC54E18();
  v27 = sub_22BB2F3FC();
  v29 = sub_22BB3AA28(v27, v28, v20);
  v30 = v12[165];
  v31 = v12[164];
  if (v29 == 1)
  {
    v32 = sub_22BB383F0();
    sub_22BB58728(v32, &qword_27D8E2FC8, &unk_22BDBD9C0);
    swift_willThrow();
    (*(v16 + 8))();
    (*(v30 + 8))(v174, v31);
    (*(v25 + 8))(v173, v13);
    (*(v24 + 1))();
    (*(v17 + 8))();
    v33 = *(v14 + 8);
    v34 = sub_22BC54528();
    v35(v34);
    v36 = sub_22BC5429C();
    v37(v36);
    sub_22BC53F94();
    v38 = v12[171];
    v39 = v12[170];
    v40 = v12[169];
    sub_22BB3341C();
    v41 = sub_22BB31848();
    v42(v41);

    sub_22BB2F09C();
LABEL_11:
    sub_22BB33430();

    return v120(v119, v120, v121, v122, v123, v124, v125, v126, a9, a10, a11, a12);
  }

  v62 = v12[167];
  v63 = v12[166];
  sub_22BC5483C();
  sub_22BDB9034();
  v64 = *(v24 + 1);
  v65 = sub_22BB393C4();
  v66(v65);
  v67 = *(v30 + 32);
  v68 = sub_22BB2F0E0();
  v69(v68);
  swift_task_alloc();
  sub_22BB30B34();
  v12[234] = v70;
  *v70 = v71;
  sub_22BBADC08(v70);
  sub_22BC5489C();
  sub_22BB33430();

  return sub_22BC1EF68();
}

uint64_t sub_22BC3C434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v13 = *(v12 + 1320);
  v14 = *(v12 + 1312);
  v39 = *(v12 + 1304);
  v40 = *(v12 + 1368);
  v15 = *(v12 + 1248);
  v37 = *(v12 + 1336);
  v38 = *(v12 + 1240);
  v50 = *(v12 + 1224);
  v51 = *(v12 + 1688);
  v16 = *(v12 + 1048);
  v43 = *(v12 + 1040);
  v44 = *(v12 + 1064);
  v17 = *(v12 + 616);
  v45 = *(v12 + 608);
  v46 = *(v12 + 560);
  v47 = *(v12 + 640);
  v48 = *(v12 + 552);
  v49 = *(v12 + 592);
  v18 = *(v12 + 520);
  v41 = *(v12 + 512);
  v42 = *(v12 + 536);
  v19 = *(v12 + 488);
  v36 = *(v12 + 496);
  v20 = *(v12 + 480);

  v21 = *(v13 + 8);
  v21(v37, v14);
  (*(v15 + 8))(v39, v38);
  v21(v40, v14);
  (*(v19 + 8))(v36, v20);
  (*(v16 + 8))(v44, v43);
  (*(v18 + 8))(v42, v41);
  (*(v17 + 8))(v47, v45);
  v22 = sub_22BB8E99C();
  v23(v22);
  v24 = *(v50 + 8);
  v52 = *(v12 + 1880);
  sub_22BB6B99C();
  sub_22BC540C8();
  sub_22BC540BC();
  sub_22BC540B0();
  sub_22BC540A4();
  sub_22BB97594();
  sub_22BB97604();
  sub_22BC54098();
  sub_22BC5408C();
  sub_22BC54080();
  sub_22BC54074();
  sub_22BC54068();
  sub_22BC5405C();
  sub_22BC54050();
  sub_22BC54044();
  sub_22BC54038();
  sub_22BC5402C();
  sub_22BC54000();
  sub_22BC53FF4();
  sub_22BC53FE8();
  sub_22BC53FDC();
  sub_22BC53FD0();
  sub_22BB955C0();
  sub_22BB70790();
  sub_22BB389F8();
  v25 = sub_22BC540E8();
  v26(v25);

  sub_22BB3ACAC();
  sub_22BB33430();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_22BC3C918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v14 = v12[171];
  v15 = v12[165];
  v16 = v12[164];
  v17 = v12[163];
  v18 = v12[156];
  v19 = v12[155];
  v20 = v12[153];
  (*(v12[54] + 8))(v12[55], v12[53]);
  v21 = sub_22BB2F184();
  v22(v21);
  v23 = *(v15 + 8);
  v24 = sub_22BB2F324();
  v25(v24);
  v26 = *(v20 + 8);
  v113 = v12[220];
  sub_22BB34754();
  v27 = v12[170];
  v28 = v12[169];
  v29 = v12[168];
  v30 = v12[167];
  v31 = v12[166];
  v32 = v12[163];
  v43 = v12[162];
  v44 = v12[161];
  v45 = v12[160];
  v46 = v12[159];
  v47 = v12[158];
  v48 = v12[157];
  v49 = v12[151];
  v50 = v12[148];
  v51 = v12[147];
  v52 = v12[146];
  v53 = v12[145];
  v54 = v12[142];
  v55 = v12[141];
  v56 = v12[140];
  v57 = v12[137];
  v58 = v12[134];
  v59 = v12[133];
  v60 = v12[132];
  v61 = v12[129];
  v62 = v12[127];
  v63 = v12[126];
  v64 = v12[125];
  v65 = v12[124];
  v66 = v12[123];
  v67 = v12[122];
  v68 = v12[121];
  v69 = v12[119];
  v70 = v12[116];
  v71 = v12[115];
  v72 = v12[114];
  v73 = v12[111];
  v74 = v12[108];
  v75 = v12[105];
  v76 = v12[102];
  v77 = v12[101];
  v78 = v12[100];
  v79 = v12[99];
  v80 = v12[98];
  v81 = v12[97];
  v82 = v12[96];
  v83 = v12[95];
  v84 = v12[92];
  v85 = v12[91];
  v86 = v12[88];
  v87 = v12[87];
  v88 = v12[86];
  v89 = v12[85];
  v90 = v12[82];
  v91 = v12[81];
  v92 = v12[80];
  v93 = v12[79];
  v94 = v12[78];
  v95 = v12[75];
  v96 = v12[74];
  v97 = v12[73];
  v98 = v12[72];
  v99 = v12[71];
  v100 = v12[68];
  v101 = v12[67];
  v102 = v12[66];
  v103 = v12[62];
  v104 = v12[56];
  v105 = v12[55];
  v106 = v12[52];
  v107 = v12[49];
  v108 = v12[48];
  v109 = v12[46];
  v110 = v12[45];
  v111 = v12[44];
  v112 = v12[43];
  v33(v13);

  sub_22BB3ACAC();
  sub_22BB33430();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
}

uint64_t sub_22BC3CE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v13 = v12[223];
  v14 = v12[165];
  v46 = v12[164];
  v47 = v12[171];
  v15 = v12[156];
  v16 = v12[155];
  v44 = v12[163];
  v45 = v12[153];
  v17 = v12[132];
  v18 = v12[131];
  v19 = v12[130];
  v20 = v12[51];
  v21 = v12[52];
  v22 = v12[50];

  v23 = *(v18 + 8);
  v24 = sub_22BB32E04();
  v25(v24);
  v26 = *(v20 + 8);
  v27 = sub_22BB38518();
  v28(v27);
  (*(v15 + 8))(v44, v16);
  (*(v14 + 8))(v47, v46);
  sub_22BB58170();
  v29 = v12[226];
  v30 = v12[154];
  v31 = v12[152];
  v32 = v12[171];
  v33 = v12[170];
  sub_22BB37AD8();
  v34(v30);

  sub_22BB2F09C();
  sub_22BB33430();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t sub_22BC3D1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = swift_getAssociatedTypeWitness();
  v4[7] = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for SearchToolExecutor();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = sub_22BDB8204();
  v4[11] = v8;
  v9 = *(v8 - 8);
  v4[12] = v9;
  v10 = *(v9 + 64) + 15;
  v4[13] = swift_task_alloc();
  v11 = type metadata accessor for SearchToolCandidateGenerator();
  v4[14] = v11;
  v12 = *(v11 - 8);
  v4[15] = v12;
  v13 = *(v12 + 64) + 15;
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BC3D390, 0, 0);
}

uint64_t sub_22BC3D390()
{
  sub_22BB34E84();
  v1 = v0[16];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  (*(v0[12] + 16))(v0[13], v0[3], v0[11]);
  v8 = *(v4 + 16);
  v9 = sub_22BB8E9D0();
  v10(v9);
  v11 = sub_22BB30AE4();
  sub_22BBF15F4(v11, v12, v13);
  swift_task_alloc();
  sub_22BB30B34();
  v0[17] = v14;
  *v14 = v15;
  v14[1] = sub_22BC3D498;
  v16 = v0[16];
  v17 = v0[14];
  v18 = v0[5];
  v19 = v0[2];

  return sub_22BBEF89C(v19, v18, v17);
}

uint64_t sub_22BC3D498()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = v5[17];
  v7 = v5[16];
  v8 = v5[15];
  v9 = v5[14];
  v10 = *v1;
  sub_22BB3052C();
  *v11 = v10;
  v3[18] = v0;

  v12 = *(v8 + 8);
  v13 = sub_22BB2F0E0();
  v14(v13);
  if (v0)
  {
    sub_22BB31B20();
    sub_22BB3478C();

    return MEMORY[0x2822009F8](v15, v16, v17);
  }

  else
  {
    v19 = v3[16];
    v20 = v3[13];
    v21 = v3[10];

    sub_22BB360FC();
    sub_22BB3478C();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_22BC3D628()
{
  sub_22BB2F0D4();
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[10];

  sub_22BB2F09C();
  v5 = v0[18];

  return v4();
}

uint64_t sub_22BC3D69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[116] = a5;
  v5[115] = a4;
  v5[114] = a3;
  v5[113] = a2;
  v5[112] = a1;
  v6 = *(*(type metadata accessor for QueryOutput() - 8) + 64) + 15;
  v5[117] = swift_task_alloc();
  v5[118] = swift_task_alloc();
  v5[119] = swift_task_alloc();
  v5[120] = swift_task_alloc();
  v5[121] = swift_task_alloc();
  v5[122] = swift_task_alloc();
  v5[123] = swift_task_alloc();
  v5[124] = swift_task_alloc();
  v7 = sub_22BDB77D4();
  v5[125] = v7;
  v8 = *(v7 - 8);
  v5[126] = v8;
  v9 = *(v8 + 64) + 15;
  v5[127] = swift_task_alloc();
  v5[128] = swift_task_alloc();
  v5[129] = swift_task_alloc();
  v5[130] = swift_task_alloc();
  v10 = sub_22BDB43E4();
  v5[131] = v10;
  v11 = *(v10 - 8);
  v5[132] = v11;
  v12 = *(v11 + 64) + 15;
  v5[133] = swift_task_alloc();
  v5[134] = swift_task_alloc();
  v5[135] = swift_task_alloc();
  v5[136] = swift_task_alloc();
  v5[137] = swift_task_alloc();
  v5[138] = swift_task_alloc();
  v5[139] = swift_task_alloc();
  v5[140] = swift_task_alloc();
  v5[141] = swift_task_alloc();
  v5[142] = swift_task_alloc();
  v5[143] = swift_task_alloc();
  v5[144] = swift_task_alloc();
  Type = type metadata accessor for ExecutorSELFLoggingInjector.QueryType();
  v5[145] = Type;
  v14 = *(*(Type - 8) + 64) + 15;
  v5[146] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BC3D920, 0, 0);
}

uint64_t sub_22BC3E5E0()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 1176);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  *(v3 + 1184) = v0;

  if (!v0)
  {
    sub_22BB58728(v3 + 376, &dword_27D8E2F50, &unk_22BDBDEA0);
  }

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BC3E6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22BB34770();
  sub_22BC53EC8();
  v27 = v26[124];
  v28 = v26[112];
  sub_22BC71B44();
  sub_22BB58728((v26 + 42), &dword_27D8E2F50, &unk_22BDBDEA0);
  sub_22BB355D8();
  v29 = sub_22BB2F324();
  sub_22BC536E8(v29, v30);
  v31 = v26[146];
  v32 = v26[144];
  v33 = v26[143];
  sub_22BB980BC();
  sub_22BC53DFC();
  v34 = v26[138];
  v35 = v26[137];
  v36 = v26[136];
  sub_22BB3597C();
  sub_22BB36A00();

  sub_22BB360FC();
  sub_22BB38A6C();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_22BC3E864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_22BBBE6B4();
  sub_22BC53D54();
  v29 = v28[148];
  sub_22BC71C18();
  swift_willThrow();
  sub_22BB72044();
  sub_22BB58728(v30, v31, v32);
  sub_22BB72044();
  sub_22BB58728(v33, v34, v35);
  v55 = v28[148];
  v36 = v28[146];
  v37 = v28[144];
  v38 = v28[143];
  v39 = v28[142];
  v40 = v28[141];
  v41 = v28[140];
  v42 = v28[139];
  v43 = v28[138];
  v44 = v28[137];
  v45 = v28[136];
  sub_22BB3597C();
  sub_22BB34858();

  sub_22BB3ACAC();
  sub_22BB3AAA8();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, v55, a25, a26, a27, a28);
}

uint64_t sub_22BC3E9F0()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 1192);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  *(v3 + 1200) = v0;

  if (!v0)
  {
    sub_22BB58728(v3 + 296, &dword_27D8E2F50, &unk_22BDBDEA0);
  }

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BC3EB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22BB34770();
  sub_22BC53EC8();
  v27 = v26[123];
  v28 = v26[112];
  sub_22BC71DC0();
  sub_22BB58728((v26 + 32), &dword_27D8E2F50, &unk_22BDBDEA0);
  sub_22BB355D8();
  v29 = sub_22BB2F324();
  sub_22BC536E8(v29, v30);
  v31 = v26[146];
  v32 = v26[144];
  v33 = v26[143];
  sub_22BB980BC();
  sub_22BC53DFC();
  v34 = v26[138];
  v35 = v26[137];
  v36 = v26[136];
  sub_22BB3597C();
  sub_22BB36A00();

  sub_22BB360FC();
  sub_22BB38A6C();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_22BC3EC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_22BBBE6B4();
  sub_22BC53D54();
  v29 = v28[150];
  sub_22BC71E94();
  swift_willThrow();
  sub_22BB72044();
  sub_22BB58728(v30, v31, v32);
  sub_22BB72044();
  sub_22BB58728(v33, v34, v35);
  v55 = v28[150];
  v36 = v28[146];
  v37 = v28[144];
  v38 = v28[143];
  v39 = v28[142];
  v40 = v28[141];
  v41 = v28[140];
  v42 = v28[139];
  v43 = v28[138];
  v44 = v28[137];
  v45 = v28[136];
  sub_22BB3597C();
  sub_22BB34858();

  sub_22BB3ACAC();
  sub_22BB3AAA8();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, v55, a25, a26, a27, a28);
}

uint64_t sub_22BC3EE00()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 1208);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  *(v3 + 1216) = v0;

  if (!v0)
  {
    sub_22BB58728(v3 + 216, &dword_27D8E2F50, &unk_22BDBDEA0);
  }

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BC3EF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22BB34770();
  sub_22BC53EC8();
  v27 = v26[122];
  v28 = v26[112];
  sub_22BC7203C();
  sub_22BB58728((v26 + 22), &dword_27D8E2F50, &unk_22BDBDEA0);
  sub_22BB355D8();
  v29 = sub_22BB2F324();
  sub_22BC536E8(v29, v30);
  v31 = v26[146];
  v32 = v26[144];
  v33 = v26[143];
  sub_22BB980BC();
  sub_22BC53DFC();
  v34 = v26[138];
  v35 = v26[137];
  v36 = v26[136];
  sub_22BB3597C();
  sub_22BB36A00();

  sub_22BB360FC();
  sub_22BB38A6C();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_22BC3F084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_22BBBE6B4();
  sub_22BC53D54();
  v29 = v28[152];
  sub_22BC72110();
  swift_willThrow();
  sub_22BB72044();
  sub_22BB58728(v30, v31, v32);
  sub_22BB72044();
  sub_22BB58728(v33, v34, v35);
  v55 = v28[152];
  v36 = v28[146];
  v37 = v28[144];
  v38 = v28[143];
  v39 = v28[142];
  v40 = v28[141];
  v41 = v28[140];
  v42 = v28[139];
  v43 = v28[138];
  v44 = v28[137];
  v45 = v28[136];
  sub_22BB3597C();
  sub_22BB34858();

  sub_22BB3ACAC();
  sub_22BB3AAA8();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, v55, a25, a26, a27, a28);
}

uint64_t sub_22BC3F210()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 1224);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  *(v3 + 1232) = v0;

  if (!v0)
  {
    sub_22BB58728(v3 + 136, &dword_27D8E2F50, &unk_22BDBDEA0);
  }

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BC3F320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22BB34770();
  sub_22BC53EC8();
  v27 = v26[121];
  v28 = v26[112];
  sub_22BC722B8();
  sub_22BB58728((v26 + 12), &dword_27D8E2F50, &unk_22BDBDEA0);
  sub_22BB355D8();
  v29 = sub_22BB2F324();
  sub_22BC536E8(v29, v30);
  v31 = v26[146];
  v32 = v26[144];
  v33 = v26[143];
  sub_22BB980BC();
  sub_22BC53DFC();
  v34 = v26[138];
  v35 = v26[137];
  v36 = v26[136];
  sub_22BB3597C();
  sub_22BB36A00();

  sub_22BB360FC();
  sub_22BB38A6C();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_22BC3F494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_22BBBE6B4();
  sub_22BC53D54();
  v29 = v28[154];
  sub_22BC7238C();
  swift_willThrow();
  sub_22BB72044();
  sub_22BB58728(v30, v31, v32);
  sub_22BB72044();
  sub_22BB58728(v33, v34, v35);
  v55 = v28[154];
  v36 = v28[146];
  v37 = v28[144];
  v38 = v28[143];
  v39 = v28[142];
  v40 = v28[141];
  v41 = v28[140];
  v42 = v28[139];
  v43 = v28[138];
  v44 = v28[137];
  v45 = v28[136];
  sub_22BB3597C();
  sub_22BB34858();

  sub_22BB3ACAC();
  sub_22BB3AAA8();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, v55, a25, a26, a27, a28);
}

uint64_t sub_22BC3F620()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 1240);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  *(v3 + 1248) = v0;

  if (!v0)
  {
    sub_22BB58728(v3 + 56, &dword_27D8E2F50, &unk_22BDBDEA0);
  }

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BC3F730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22BB34770();
  sub_22BC53EC8();
  v27 = v26[120];
  v28 = v26[112];
  sub_22BC72534();
  sub_22BB58728((v26 + 2), &dword_27D8E2F50, &unk_22BDBDEA0);
  sub_22BB355D8();
  v29 = sub_22BB2F324();
  sub_22BC536E8(v29, v30);
  v31 = v26[146];
  v32 = v26[144];
  v33 = v26[143];
  sub_22BB980BC();
  sub_22BC53DFC();
  v34 = v26[138];
  v35 = v26[137];
  v36 = v26[136];
  sub_22BB3597C();
  sub_22BB36A00();

  sub_22BB360FC();
  sub_22BB38A6C();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_22BC3F8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_22BBBE6B4();
  sub_22BC53D54();
  v29 = v28[156];
  sub_22BC72608();
  swift_willThrow();
  sub_22BB72044();
  sub_22BB58728(v30, v31, v32);
  sub_22BB72044();
  sub_22BB58728(v33, v34, v35);
  v55 = v28[156];
  v36 = v28[146];
  v37 = v28[144];
  v38 = v28[143];
  v39 = v28[142];
  v40 = v28[141];
  v41 = v28[140];
  v42 = v28[139];
  v43 = v28[138];
  v44 = v28[137];
  v45 = v28[136];
  sub_22BB3597C();
  sub_22BB34858();

  sub_22BB3ACAC();
  sub_22BB3AAA8();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, v55, a25, a26, a27, a28);
}

uint64_t sub_22BC3FA30()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 1264);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  v3[159] = v0;

  if (!v0)
  {
    v9 = v3[157];
    v10 = v3[137];
    sub_22BB7057C();
    sub_22BB58728((v3 + 102), &dword_27D8E2F50, &unk_22BDBDEA0);
    sub_22BBC7F58();
    v3[160] = v11;
    v12 = sub_22BB2F3F0();
    v9(v12);
  }

  sub_22BB31B20();
  sub_22BB3478C();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22BC3FB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22BB34770();
  sub_22BC53EC8();
  v28 = v27[160];
  v29 = v27[157];
  sub_22BB960AC();
  v30 = v27[131];
  v31 = v27[119];
  v32 = v27[112];
  sub_22BC72B24(v27 + 97, v26);
  sub_22BB58728((v27 + 97), &dword_27D8E2F50, &unk_22BDBDEA0);
  v33 = sub_22BB30AE4();
  v29(v33);
  sub_22BB355D8();
  v34 = sub_22BB331D4();
  sub_22BC536E8(v34, v35);
  v36 = sub_22BB2F3F0();
  v29(v36);
  v37 = v27[146];
  v38 = v27[144];
  v39 = v27[143];
  sub_22BB980BC();
  sub_22BC53DFC();
  v40 = v27[138];
  v41 = v27[137];
  v42 = v27[136];
  sub_22BB3597C();
  sub_22BB36A00();

  sub_22BB360FC();
  sub_22BB38A6C();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_22BC3FD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_22BBBE6B4();
  sub_22BC53D54();
  sub_22BC54460();
  v30 = sub_22BC53C5C();
  sub_22BC72B2C(v30);
  swift_willThrow();
  sub_22BBBEDF0();
  sub_22BB58728(v31, v32, v33);
  v34 = sub_22BB331D4();
  v29(v34);
  sub_22BBBEDF0();
  sub_22BB58728(v35, v36, v37);
  v38 = sub_22BB31B54();
  v29(v38);
  v39 = sub_22BB393C4();
  v29(v39);
  v59 = v28[159];
  v40 = v28[146];
  v41 = v28[144];
  v42 = v28[143];
  v43 = v28[142];
  v44 = v28[141];
  v45 = v28[140];
  v46 = v28[139];
  v47 = v28[138];
  v48 = v28[137];
  v49 = v28[136];
  sub_22BB3597C();
  sub_22BB34858();

  sub_22BB3ACAC();
  sub_22BB3AAA8();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, v59, a25, a26, a27, a28);
}

uint64_t sub_22BC3FEC4()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 1296);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  v3[163] = v0;

  if (!v0)
  {
    v9 = v3[161];
    v10 = v3[135];
    sub_22BB7057C();
    sub_22BB58728((v3 + 82), &dword_27D8E2F50, &unk_22BDBDEA0);
    sub_22BBC7F58();
    v3[164] = v11;
    v12 = sub_22BB2F3F0();
    v9(v12);
  }

  sub_22BB31B20();
  sub_22BB3478C();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22BC40000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22BB34770();
  sub_22BC53EC8();
  v28 = v27[164];
  v29 = v27[161];
  sub_22BC54770();
  v30 = v27[131];
  v31 = v27[118];
  v32 = v27[112];
  sub_22BC72B24(v27 + 77, v26);
  sub_22BB58728((v27 + 77), &dword_27D8E2F50, &unk_22BDBDEA0);
  v33 = sub_22BB30AE4();
  v29(v33);
  sub_22BB355D8();
  v34 = sub_22BB331D4();
  sub_22BC536E8(v34, v35);
  v36 = sub_22BB2F3F0();
  v29(v36);
  v37 = v27[146];
  v38 = v27[144];
  v39 = v27[143];
  sub_22BB980BC();
  sub_22BC53DFC();
  v40 = v27[138];
  v41 = v27[137];
  v42 = v27[136];
  sub_22BB3597C();
  sub_22BB36A00();

  sub_22BB360FC();
  sub_22BB38A6C();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_22BC40198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_22BBBE6B4();
  sub_22BC53D54();
  sub_22BBBEAFC();
  v30 = sub_22BC53C5C();
  sub_22BC72B2C(v30);
  swift_willThrow();
  sub_22BBBEDF0();
  sub_22BB58728(v31, v32, v33);
  v34 = sub_22BB331D4();
  v29(v34);
  sub_22BBBEDF0();
  sub_22BB58728(v35, v36, v37);
  v38 = sub_22BB31B54();
  v29(v38);
  v39 = sub_22BB393C4();
  v29(v39);
  v59 = v28[163];
  v40 = v28[146];
  v41 = v28[144];
  v42 = v28[143];
  v43 = v28[142];
  v44 = v28[141];
  v45 = v28[140];
  v46 = v28[139];
  v47 = v28[138];
  v48 = v28[137];
  v49 = v28[136];
  sub_22BB3597C();
  sub_22BB34858();

  sub_22BB3ACAC();
  sub_22BB3AAA8();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, v59, a25, a26, a27, a28);
}

uint64_t sub_22BC40358()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 1328);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  v3[167] = v0;

  if (!v0)
  {
    v9 = v3[165];
    v10 = v3[133];
    sub_22BB7057C();
    sub_22BB58728((v3 + 62), &dword_27D8E2F50, &unk_22BDBDEA0);
    sub_22BBC7F58();
    v3[168] = v11;
    v12 = sub_22BB2F3F0();
    v9(v12);
  }

  sub_22BB31B20();
  sub_22BB3478C();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22BC40494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22BB34770();
  sub_22BC53EC8();
  v28 = v27[168];
  v29 = v27[165];
  sub_22BB6FCC4();
  v30 = v27[131];
  v31 = v27[117];
  v32 = v27[112];
  sub_22BC72B24(v27 + 57, v26);
  sub_22BB58728((v27 + 57), &dword_27D8E2F50, &unk_22BDBDEA0);
  v33 = sub_22BB30AE4();
  v29(v33);
  sub_22BB355D8();
  v34 = sub_22BB331D4();
  sub_22BC536E8(v34, v35);
  v36 = sub_22BB2F3F0();
  v29(v36);
  v37 = v27[146];
  v38 = v27[144];
  v39 = v27[143];
  sub_22BB980BC();
  sub_22BC53DFC();
  v40 = v27[138];
  v41 = v27[137];
  v42 = v27[136];
  sub_22BB3597C();
  sub_22BB36A00();

  sub_22BB360FC();
  sub_22BB38A6C();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_22BC4062C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_22BBBE6B4();
  sub_22BC53D54();
  sub_22BC544B0();
  v30 = sub_22BC53C5C();
  sub_22BC72B2C(v30);
  swift_willThrow();
  sub_22BBBEDF0();
  sub_22BB58728(v31, v32, v33);
  v34 = sub_22BB331D4();
  v29(v34);
  sub_22BBBEDF0();
  sub_22BB58728(v35, v36, v37);
  v38 = sub_22BB31B54();
  v29(v38);
  v39 = sub_22BB393C4();
  v29(v39);
  v59 = v28[167];
  v40 = v28[146];
  v41 = v28[144];
  v42 = v28[143];
  v43 = v28[142];
  v44 = v28[141];
  v45 = v28[140];
  v46 = v28[139];
  v47 = v28[138];
  v48 = v28[137];
  v49 = v28[136];
  sub_22BB3597C();
  sub_22BB34858();

  sub_22BB3ACAC();
  sub_22BB3AAA8();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, v59, a25, a26, a27, a28);
}

uint64_t sub_22BC407EC()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  sub_22BB37AB0();
  *v3 = v2;
  v5 = *(v4 + 1352);
  v6 = *v1;
  sub_22BB3052C();
  *v7 = v6;
  *(v8 + 1360) = v0;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BC408E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22BB34770();
  sub_22BC53EC8();
  sub_22BB2F3CC(v26[146]);
  v27 = v26[146];
  v28 = v26[144];
  v29 = v26[143];
  sub_22BB980BC();
  sub_22BC53DFC();
  v30 = v26[138];
  v31 = v26[137];
  v32 = v26[136];
  sub_22BB3597C();
  sub_22BB36A00();

  sub_22BB360FC();
  sub_22BB38A6C();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_22BC40A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_22BBBE6B4();
  sub_22BC53D54();
  sub_22BB2F3CC(v28[146]);
  v57 = v28[170];
  v29 = v28[146];
  v30 = v28[144];
  v31 = v28[143];
  v32 = v28[142];
  v33 = v28[141];
  v34 = v28[140];
  v35 = v28[139];
  v36 = v28[138];
  v37 = v28[137];
  v38 = v28[136];
  sub_22BB30FEC();
  v48 = v28[127];
  v49 = v28[124];
  v50 = v28[123];
  v51 = v28[122];
  v52 = v28[121];
  v53 = v28[120];
  v54 = v28[119];
  v55 = v28[118];
  v56 = v28[117];

  sub_22BB2F09C();
  sub_22BB3AAA8();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, a26, a27, a28);
}

uint64_t sub_22BC40BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[124] = a4;
  v4[123] = a3;
  v4[122] = a2;
  v4[121] = a1;
  v5 = sub_22BDB77D4();
  v4[125] = v5;
  v6 = *(v5 - 8);
  v4[126] = v6;
  v7 = *(v6 + 64) + 15;
  v4[127] = swift_task_alloc();
  v4[128] = swift_task_alloc();
  v4[129] = swift_task_alloc();
  v4[130] = swift_task_alloc();
  v8 = sub_22BDB43E4();
  v4[131] = v8;
  v9 = *(v8 - 8);
  v4[132] = v9;
  v10 = *(v9 + 64) + 15;
  v4[133] = swift_task_alloc();
  v4[134] = swift_task_alloc();
  v4[135] = swift_task_alloc();
  v4[136] = swift_task_alloc();
  v4[137] = swift_task_alloc();
  v4[138] = swift_task_alloc();
  v4[139] = swift_task_alloc();
  v4[140] = swift_task_alloc();
  v4[141] = swift_task_alloc();
  v4[142] = swift_task_alloc();
  v4[143] = swift_task_alloc();
  v4[144] = swift_task_alloc();
  Type = type metadata accessor for ExecutorSELFLoggingInjector.QueryType();
  v4[145] = Type;
  v12 = *(*(Type - 8) + 64) + 15;
  v4[146] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BC40DC0, 0, 0);
}

uint64_t sub_22BC41A78()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 1176);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  *(v3 + 1184) = v0;

  if (!v0)
  {
    sub_22BB58728(v3 + 576, &dword_27D8E2F50, &unk_22BDBDEA0);
  }

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BC41C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB68EA4();
  sub_22BB6F93C();
  v21 = v20[148];
  sub_22BC71C18();
  swift_willThrow();
  sub_22BB72044();
  sub_22BB58728(v22, v23, v24);
  sub_22BB72044();
  sub_22BB58728(v25, v26, v27);
  v41 = v20[148];
  sub_22BB38CBC();
  v28 = v20[139];
  v29 = v20[138];
  v30 = v20[137];
  v31 = v20[136];
  sub_22BB36450();
  sub_22BB970F4();

  sub_22BB3DF74();
  sub_22BB3CEF4();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, v41, a17, a18, a19, a20);
}

uint64_t sub_22BC41DC8()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 1192);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  *(v3 + 1200) = v0;

  if (!v0)
  {
    sub_22BB58728(v3 + 456, &dword_27D8E2F50, &unk_22BDBDEA0);
  }

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BC41FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB68EA4();
  sub_22BB6F93C();
  v21 = v20[150];
  sub_22BC71E94();
  swift_willThrow();
  sub_22BB72044();
  sub_22BB58728(v22, v23, v24);
  sub_22BB72044();
  sub_22BB58728(v25, v26, v27);
  v41 = v20[150];
  sub_22BB38CBC();
  v28 = v20[139];
  v29 = v20[138];
  v30 = v20[137];
  v31 = v20[136];
  sub_22BB36450();
  sub_22BB970F4();

  sub_22BB3DF74();
  sub_22BB3CEF4();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, v41, a17, a18, a19, a20);
}

uint64_t sub_22BC42118()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 1208);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  *(v3 + 1216) = v0;

  if (!v0)
  {
    sub_22BB58728(v3 + 336, &dword_27D8E2F50, &unk_22BDBDEA0);
  }

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BC42330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB68EA4();
  sub_22BB6F93C();
  v21 = v20[152];
  sub_22BC72110();
  swift_willThrow();
  sub_22BB72044();
  sub_22BB58728(v22, v23, v24);
  sub_22BB72044();
  sub_22BB58728(v25, v26, v27);
  v41 = v20[152];
  sub_22BB38CBC();
  v28 = v20[139];
  v29 = v20[138];
  v30 = v20[137];
  v31 = v20[136];
  sub_22BB36450();
  sub_22BB970F4();

  sub_22BB3DF74();
  sub_22BB3CEF4();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, v41, a17, a18, a19, a20);
}

uint64_t sub_22BC42468()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 1224);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  *(v3 + 1232) = v0;

  if (!v0)
  {
    sub_22BB58728(v3 + 216, &dword_27D8E2F50, &unk_22BDBDEA0);
  }

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BC42680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB68EA4();
  sub_22BB6F93C();
  v21 = v20[154];
  sub_22BC7238C();
  swift_willThrow();
  sub_22BB72044();
  sub_22BB58728(v22, v23, v24);
  sub_22BB72044();
  sub_22BB58728(v25, v26, v27);
  v41 = v20[154];
  sub_22BB38CBC();
  v28 = v20[139];
  v29 = v20[138];
  v30 = v20[137];
  v31 = v20[136];
  sub_22BB36450();
  sub_22BB970F4();

  sub_22BB3DF74();
  sub_22BB3CEF4();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, v41, a17, a18, a19, a20);
}

uint64_t sub_22BC427B8()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 1240);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  *(v3 + 1248) = v0;

  if (!v0)
  {
    sub_22BB58728(v3 + 96, &dword_27D8E2F50, &unk_22BDBDEA0);
  }

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BC429D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB68EA4();
  sub_22BB6F93C();
  v21 = v20[156];
  sub_22BC72608();
  swift_willThrow();
  sub_22BB72044();
  sub_22BB58728(v22, v23, v24);
  sub_22BB72044();
  sub_22BB58728(v25, v26, v27);
  v41 = v20[156];
  sub_22BB38CBC();
  v28 = v20[139];
  v29 = v20[138];
  v30 = v20[137];
  v31 = v20[136];
  sub_22BB36450();
  sub_22BB970F4();

  sub_22BB3DF74();
  sub_22BB3CEF4();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, v41, a17, a18, a19, a20);
}

uint64_t sub_22BC42B08()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 1264);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  v3[159] = v0;

  if (!v0)
  {
    v9 = v3[157];
    v10 = v3[137];
    sub_22BB7057C();
    sub_22BB58728((v3 + 17), &dword_27D8E2F50, &unk_22BDBDEA0);
    sub_22BBC7F58();
    v3[160] = v11;
    v12 = sub_22BB2F3F0();
    v9(v12);
  }

  sub_22BB31B20();
  sub_22BB3478C();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22BC42D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB68EA4();
  sub_22BB6F93C();
  sub_22BC54460();
  v22 = sub_22BC53C5C();
  sub_22BC72B2C(v22);
  swift_willThrow();
  sub_22BBBEDF0();
  sub_22BB58728(v23, v24, v25);
  v26 = sub_22BB331D4();
  v21(v26);
  sub_22BBBEDF0();
  sub_22BB58728(v27, v28, v29);
  v30 = sub_22BB31B54();
  v21(v30);
  v31 = sub_22BB393C4();
  v21(v31);
  v45 = v20[159];
  sub_22BB38CBC();
  v32 = v20[139];
  v33 = v20[138];
  v34 = v20[137];
  v35 = v20[136];
  sub_22BB36450();
  sub_22BB970F4();

  sub_22BB3DF74();
  sub_22BB3CEF4();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, v45, a17, a18, a19, a20);
}

uint64_t sub_22BC42EDC()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 1296);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  v3[163] = v0;

  if (!v0)
  {
    v9 = v3[161];
    v10 = v3[135];
    sub_22BB7057C();
    sub_22BB58728((v3 + 97), &dword_27D8E2F50, &unk_22BDBDEA0);
    sub_22BBC7F58();
    v3[164] = v11;
    v12 = sub_22BB2F3F0();
    v9(v12);
  }

  sub_22BB31B20();
  sub_22BB3478C();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22BC43144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB68EA4();
  sub_22BB6F93C();
  sub_22BBBEAFC();
  v22 = sub_22BC53C5C();
  sub_22BC72B2C(v22);
  swift_willThrow();
  sub_22BBBEDF0();
  sub_22BB58728(v23, v24, v25);
  v26 = sub_22BB331D4();
  v21(v26);
  sub_22BBBEDF0();
  sub_22BB58728(v27, v28, v29);
  v30 = sub_22BB31B54();
  v21(v30);
  v31 = sub_22BB393C4();
  v21(v31);
  v45 = v20[163];
  sub_22BB38CBC();
  v32 = v20[139];
  v33 = v20[138];
  v34 = v20[137];
  v35 = v20[136];
  sub_22BB36450();
  sub_22BB970F4();

  sub_22BB3DF74();
  sub_22BB3CEF4();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, v45, a17, a18, a19, a20);
}

uint64_t sub_22BC432B0()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 1328);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  v3[167] = v0;

  if (!v0)
  {
    v9 = v3[165];
    v10 = v3[133];
    sub_22BB7057C();
    sub_22BB58728((v3 + 92), &dword_27D8E2F50, &unk_22BDBDEA0);
    sub_22BBC7F58();
    v3[168] = v11;
    v12 = sub_22BB2F3F0();
    v9(v12);
  }

  sub_22BB31B20();
  sub_22BB3478C();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_22BC43518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB68EA4();
  sub_22BB6F93C();
  sub_22BC544B0();
  v22 = sub_22BC53C5C();
  sub_22BC72B2C(v22);
  swift_willThrow();
  sub_22BBBEDF0();
  sub_22BB58728(v23, v24, v25);
  v26 = sub_22BB331D4();
  v21(v26);
  sub_22BBBEDF0();
  sub_22BB58728(v27, v28, v29);
  v30 = sub_22BB31B54();
  v21(v30);
  v31 = sub_22BB393C4();
  v21(v31);
  v45 = v20[167];
  sub_22BB38CBC();
  v32 = v20[139];
  v33 = v20[138];
  v34 = v20[137];
  v35 = v20[136];
  sub_22BB36450();
  sub_22BB970F4();

  sub_22BB3DF74();
  sub_22BB3CEF4();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, v45, a17, a18, a19, a20);
}

uint64_t sub_22BC43684()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  sub_22BB37AB0();
  *v3 = v2;
  v5 = *(v4 + 1352);
  v6 = *v1;
  sub_22BB3052C();
  *v7 = v6;
  *(v8 + 1360) = v0;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BC43864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB68EA4();
  sub_22BB6F93C();
  sub_22BB2F3CC(v20[146]);
  v34 = v20[170];
  sub_22BB38CBC();
  v21 = v20[139];
  v22 = v20[138];
  v23 = v20[137];
  v24 = v20[136];
  sub_22BB30FEC();
  sub_22BB758C0();

  sub_22BB2F09C();
  sub_22BB3CEF4();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, v34, a18, a19, a20);
}

uint64_t sub_22BC4396C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_22BBE6DE0(&qword_27D8E2FD0, &unk_22BDBFB70) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_22BDB7DC4();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BC43A68, 0, 0);
}

uint64_t sub_22BC43A68()
{
  sub_22BB2F35C();
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[5];
  sub_22BDB7DB4();
  v4 = sub_22BDBA764();
  sub_22BB2F330(v4);
  v6 = *(v5 + 16);
  v7 = sub_22BB2F324();
  v8(v7);
  sub_22BB331C8();
  sub_22BB336D0(v9, v10, v11, v4);
  v12 = *(MEMORY[0x277D1D6B0] + 4);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_22BC43B58;
  v14 = v0[8];
  v15 = v0[5];
  v16 = sub_22BB3487C(v0[3]);

  return MEMORY[0x282176A18](v16);
}

uint64_t sub_22BC43B58()
{
  sub_22BB34E84();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_22BB3052C();
  *v6 = v5;
  v7 = v4[9];
  *v6 = *v1;
  v5[10] = v0;

  v8 = v4[8];
  v9 = v4[7];
  v10 = v4[6];
  v11 = v4[5];
  if (!v0)
  {
    v5[11] = v3;
  }

  sub_22BB58728(v11, &qword_27D8E2FD0, &unk_22BDBFB70);
  v12 = sub_22BB51830();
  v13(v12);
  sub_22BB31B20();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_22BC43D14()
{
  sub_22BB2F0D4();
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  **(v0 + 16) = *(v0 + 88);

  sub_22BB360FC();

  return v3();
}

uint64_t sub_22BC43D84()
{
  sub_22BB2F0D4();
  v1 = v0[8];
  v2 = v0[5];

  sub_22BB2F09C();
  v4 = v0[10];

  return v3();
}

uint64_t sub_22BC43DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(type metadata accessor for LocationCandidateGenerator() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BC43E80, 0, 0);
}

uint64_t sub_22BC43E80()
{
  sub_22BB2F0D4();
  v1 = v0[5];
  v2 = v0[3];
  v3 = sub_22BDB8254();
  sub_22BB30ED8(v3);
  v5 = *(v4 + 16);
  v6 = sub_22BB2F324();
  v7(v6);
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_22BC43F40;
  v9 = v0[5];
  v10 = sub_22BB3487C(v0[4]);

  return sub_22BBEDF18(v10);
}

uint64_t sub_22BC43F40()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  sub_22BB58678();
  sub_22BB3052C();
  *v4 = v3;
  v5 = v3[6];
  *v4 = *v2;
  v3[7] = v0;

  sub_22BC549E8();
  v7 = *(v6 + 40);
  if (!v0)
  {
    v3[8] = v1;
  }

  sub_22BC52F5C(v7, type metadata accessor for LocationCandidateGenerator);
  sub_22BB31B20();
  sub_22BB3478C();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BC4408C()
{
  sub_22BB2F0D4();
  v1 = *(v0 + 40);
  **(v0 + 16) = *(v0 + 64);

  sub_22BB360FC();

  return v2();
}

uint64_t sub_22BC440F0()
{
  sub_22BB2F0D4();
  v1 = *(v0 + 40);

  sub_22BB2F09C();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_22BC4414C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(type metadata accessor for EntityMatcherCandidateGenerator() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BC441DC, 0, 0);
}

uint64_t sub_22BC441DC()
{
  sub_22BB2F0D4();
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_22BDB8254();
  sub_22BB30ED8(v3);
  v5 = *(v4 + 16);
  v6 = sub_22BB2F324();
  v7(v6);
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_22BC44298;
  v9 = v0[4];

  return sub_22BBEB5C8();
}

uint64_t sub_22BC44298()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  sub_22BB58678();
  sub_22BB3052C();
  *v4 = v3;
  v5 = v3[5];
  *v4 = *v2;
  v3[6] = v0;

  sub_22BC549E8();
  v7 = *(v6 + 32);
  if (!v0)
  {
    v3[7] = v1;
  }

  sub_22BC52F5C(v7, type metadata accessor for EntityMatcherCandidateGenerator);
  sub_22BB31B20();
  sub_22BB3478C();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BC443E4()
{
  sub_22BB2F0D4();
  v1 = *(v0 + 32);
  **(v0 + 16) = *(v0 + 56);

  sub_22BB360FC();

  return v2();
}

uint64_t sub_22BC44448()
{
  sub_22BB2F0D4();
  v1 = *(v0 + 32);

  sub_22BB2F09C();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_22BC444A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = v25;
  v8[20] = v26;
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[13] = a3;
  v8[14] = a4;
  v8[11] = a1;
  v8[12] = a2;
  type metadata accessor for EntitySearchableItemCandidateGenerator();
  v9 = sub_22BDBB254();
  v8[21] = v9;
  v10 = *(v9 - 8);
  v8[22] = v10;
  v11 = *(v10 + 64) + 15;
  v8[23] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[24] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8[25] = AssociatedConformanceWitness;
  v14 = type metadata accessor for SearchToolExecutor();
  v8[26] = v14;
  v15 = *(v14 - 8);
  v8[27] = v15;
  v16 = *(v15 + 64) + 15;
  v8[28] = swift_task_alloc();
  v17 = sub_22BDB8254();
  v8[29] = v17;
  v18 = *(v17 - 8);
  v8[30] = v18;
  v19 = *(v18 + 64) + 15;
  v8[31] = swift_task_alloc();
  v8[7] = AssociatedTypeWitness;
  v8[8] = v25;
  v8[9] = AssociatedConformanceWitness;
  v8[10] = v26;
  v20 = type metadata accessor for AppEntityCandidateGenerator();
  v8[32] = v20;
  v21 = *(v20 - 8);
  v8[33] = v21;
  v22 = *(v21 + 64) + 15;
  v8[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BC44714, 0, 0);
}

uint64_t sub_22BC44714()
{
  sub_22BB30EEC();
  sub_22BB34E78();
  v1 = v0[28];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v35 = v0[34];
  v6 = v0[22];
  v5 = v0[23];
  v34 = v0[20];
  v32 = v0[21];
  v33 = v0[19];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[13];
  (*(v0[30] + 16))(v0[31], v0[12], v0[29]);
  v10 = *(v2 + 16);
  v11 = sub_22BB92810();
  v12(v11);
  sub_22BBBEE60(v8, (v0 + 2), &qword_27D8E2540, &unk_22BDBCC00);
  (*(v6 + 16))(v5, v7, v32);
  v13 = sub_22BB30AE4();
  sub_22BBE99FC(v13, v14, v15, v5, v16);
  swift_task_alloc();
  sub_22BB30B34();
  v0[35] = v17;
  *v17 = v18;
  v17[1] = sub_22BC44870;
  v19 = v0[34];
  v20 = v0[32];
  v21 = v0[17];
  v22 = v0[18];
  v23 = v0[16];
  v24 = v0[11];
  sub_22BB35ED4();

  return sub_22BBE7F00(v25, v26, v27, v28, v29);
}

uint64_t sub_22BC44870()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = v5[35];
  v7 = v5[34];
  v8 = v5[33];
  v9 = v5[32];
  v10 = *v1;
  sub_22BB3052C();
  *v11 = v10;
  v3[36] = v0;

  v12 = *(v8 + 8);
  v13 = sub_22BB2F0E0();
  v14(v13);
  if (v0)
  {
    sub_22BB31B20();
    sub_22BB3478C();

    return MEMORY[0x2822009F8](v15, v16, v17);
  }

  else
  {
    v19 = v3[34];
    v20 = v3[31];
    v21 = v3[28];
    v22 = v3[23];

    sub_22BB360FC();
    sub_22BB3478C();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30);
  }
}

uint64_t sub_22BC44A0C()
{
  sub_22BB2F35C();
  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[23];

  sub_22BB2F09C();
  v6 = v0[36];

  return v5();
}

uint64_t sub_22BC44A94(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22BC44B5C;

  return sub_22BC46A48();
}

uint64_t sub_22BC44B5C()
{
  sub_22BB2F35C();
  v3 = v2;
  sub_22BB32690();
  v5 = v4;
  sub_22BB33FF4();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_22BB3052C();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    sub_22BC54C94();
    sub_22BB31B20();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_22BC44C88()
{
  **(v0 + 16) = *(v0 + 32);
  sub_22BB360FC();
  return v1();
}

uint64_t sub_22BC44CB4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22BC44D64;

  return sub_22BC45F2C();
}

uint64_t sub_22BC44D64()
{
  sub_22BB2F35C();
  v3 = v2;
  sub_22BB32690();
  v5 = v4;
  sub_22BB33FF4();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_22BB3052C();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    sub_22BC54C94();
    sub_22BB31B20();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_22BC44E90()
{
  sub_22BB2F35C();
  v2[3] = v3;
  v2[4] = v1;
  v2[2] = v4;
  sub_22BC54414();
  v5 = sub_22BDB77D4();
  v2[5] = v5;
  sub_22BB30434(v5);
  v2[6] = v6;
  v8 = *(v7 + 64);
  v2[7] = sub_22BB30ACC();
  v2[8] = *(v0 + 80);
  sub_22BB30418();
  v2[9] = v9;
  v11 = *(v10 + 64);
  v2[10] = sub_22BB30ACC();
  sub_22BB36F5C();
  v2[11] = *(v12 + 88);
  Executor = type metadata accessor for QueryExecutor();
  sub_22BB2F0C8(Executor);
  v15 = *(v14 + 64);
  v2[12] = sub_22BB30ACC();
  v16 = sub_22BDBA5C4();
  v2[13] = v16;
  sub_22BB30434(v16);
  v2[14] = v17;
  v19 = *(v18 + 64);
  v2[15] = sub_22BB30ACC();
  v20 = sub_22BBE6DE0(&qword_27D8E2FD0, &unk_22BDBFB70);
  sub_22BB2F0C8(v20);
  v22 = *(v21 + 64);
  v2[16] = sub_22BB30ACC();
  v23 = sub_22BDBA764();
  v2[17] = v23;
  sub_22BB30434(v23);
  v2[18] = v24;
  v26 = *(v25 + 64);
  v2[19] = sub_22BB3307C();
  v2[20] = swift_task_alloc();
  v27 = sub_22BDB8E14();
  v2[21] = v27;
  sub_22BB30434(v27);
  v2[22] = v28;
  v30 = *(v29 + 64);
  v2[23] = sub_22BB30ACC();
  v31 = sub_22BBE6DE0(&qword_27D8E2FC0, &qword_22BDBFB90);
  sub_22BB2F0C8(v31);
  v33 = *(v32 + 64);
  v2[24] = sub_22BB30ACC();
  v34 = sub_22BDBA014();
  v2[25] = v34;
  sub_22BB30434(v34);
  v2[26] = v35;
  v37 = *(v36 + 64);
  v2[27] = sub_22BB3307C();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v38 = sub_22BBE6DE0(&qword_27D8E2FC8, &unk_22BDBD9C0);
  sub_22BB2F0C8(v38);
  v40 = *(v39 + 64);
  v2[31] = sub_22BB30ACC();
  v41 = sub_22BDB9044();
  v2[32] = v41;
  sub_22BB30434(v41);
  v2[33] = v42;
  v44 = *(v43 + 64);
  v2[34] = sub_22BB3307C();
  v2[35] = swift_task_alloc();
  v45 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v45, v46, v47);
}

uint64_t sub_22BC4584C()
{
  sub_22BB6B9D0();
  sub_22BB30F5C();
  sub_22BB34764();
  sub_22BB33FF4();
  *v4 = v3;
  v5 = v1[37];
  v6 = v1[23];
  v7 = v1[22];
  v8 = v1[21];
  *v4 = *v2;
  *(v3 + 304) = v0;

  v9 = *(v7 + 8);
  v10 = sub_22BB331D4();
  v11(v10);
  sub_22BB33218();
  v13 = *(v12 + 32);
  sub_22BB3A3F4();
  sub_22BB3A1C0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_22BC45D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22BB30EEC();
  sub_22BB34E78();
  (*(v18[33] + 8))(v18[35], v18[32]);
  v37 = v18[38];
  sub_22BC54C58();
  v20 = v18[23];
  v19 = v18[24];
  v21 = v18[20];
  v31 = v18[19];
  v32 = v18[16];
  v33 = v18[15];
  v34 = v18[12];
  v35 = v18[10];
  v36 = v18[7];

  sub_22BB2F09C();
  sub_22BB35ED4();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, v31, v32, v33, v34, v35, v36, v37, a16, a17, a18);
}

uint64_t sub_22BC45E94()
{
  v0 = sub_22BDBA744();
  v2 = v1;
  if (v0 == sub_22BDB9024() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_22BDBB6D4();
  }

  return v5 & 1;
}

uint64_t sub_22BC45F2C()
{
  sub_22BB2F0D4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  sub_22BB5413C();
  v1[5] = v4;
  v5 = sub_22BDB8E14();
  v1[6] = v5;
  sub_22BB30434(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = sub_22BB30ACC();
  v9 = sub_22BBE6DE0(&qword_27D8E2FC0, &qword_22BDBFB90);
  sub_22BB2F0C8(v9);
  v11 = *(v10 + 64);
  v1[9] = sub_22BB30ACC();
  v12 = sub_22BDBA014();
  v1[10] = v12;
  sub_22BB30434(v12);
  v1[11] = v13;
  v15 = *(v14 + 64);
  v1[12] = sub_22BB3307C();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v16 = sub_22BBE6DE0(&qword_27D8E2FC8, &unk_22BDBD9C0);
  sub_22BB2F0C8(v16);
  v18 = *(v17 + 64);
  v1[15] = sub_22BB30ACC();
  v19 = sub_22BDB9044();
  v1[16] = v19;
  sub_22BB30434(v19);
  v1[17] = v20;
  v22 = *(v21 + 64);
  v1[18] = sub_22BB30ACC();
  v23 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_22BC46100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BB345B4();
  sub_22BB34E84();
  v12 = v10[15];
  v11 = v10[16];
  v13 = v10[2];
  sub_22BDB9CE4();
  sub_22BB36B74(v12);
  if (v40)
  {
    sub_22BB58728(v10[15], &qword_27D8E2FC8, &unk_22BDBD9C0);
    type metadata accessor for RuntimeError();
    sub_22BB326C8();
    sub_22BB8E56C(v14, v15);
    sub_22BB3E374();
    v16 = swift_allocError();
    sub_22BC54C4C(v16, v17);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v18 = v10[18];
    v20 = v10[14];
    v19 = v10[15];
    v22 = v10[12];
    v21 = v10[13];
    v24 = v10[8];
    v23 = v10[9];

    sub_22BB2F09C();
    sub_22BB37AC0();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
  }

  else
  {
    v34 = v10[18];
    v36 = v10[9];
    v35 = v10[10];
    v38 = v10[4];
    v37 = v10[5];
    (*(v10[17] + 32))(v34, v10[15], v10[16]);
    v39 = *(*v38 + 104);
    (*(*(v37 + 88) + 24))(*(v37 + 80));
    *(sub_22BC54AF8() + 16) = v34;
    sub_22BBC7848();
    sub_22BD79720();

    sub_22BB36B74(v36);
    if (v40)
    {
      v41 = v10[18];
      v42 = v10[8];
      sub_22BB58728(v10[9], &qword_27D8E2FC0, &qword_22BDBFB90);
      sub_22BDB9034();
      swift_task_alloc();
      sub_22BB30B34();
      v10[19] = v43;
      *v43 = v44;
      v43[1] = sub_22BC463D4;
      v45 = v10[12];
      v46 = v10[8];
      v47 = v10[4];
      sub_22BB37AC0();

      return sub_22BC1EF68();
    }

    else
    {
      v49 = v10[13];
      v50 = v10[14];
      v51 = v10[10];
      v52 = v10[9];
      v53 = *(v10[11] + 32);
      v54 = sub_22BBBE718();
      v53(v54);
      v55 = sub_22BB2F324();
      v53(v55);
      v56 = swift_task_alloc();
      v10[21] = v56;
      *v56 = v10;
      sub_22BC53C24(v56);
      sub_22BB37AC0();

      return sub_22BC46A48();
    }
  }
}

uint64_t sub_22BC463D4()
{
  sub_22BB6B9D0();
  sub_22BB30F5C();
  sub_22BB34764();
  sub_22BB33FF4();
  *v4 = v3;
  v5 = v1[19];
  v6 = v1[8];
  v7 = v1[7];
  v8 = v1[6];
  *v4 = *v2;
  *(v3 + 160) = v0;

  v9 = *(v7 + 8);
  v10 = sub_22BB331D4();
  v11(v10);
  sub_22BB33218();
  v13 = *(v12 + 32);
  sub_22BB3A3F4();
  sub_22BB3A1C0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_22BC46538()
{
  sub_22BB2F0D4();
  (*(v0[11] + 32))(v0[14], v0[12], v0[10]);
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  sub_22BC53C24(v1);

  return sub_22BC46A48();
}

uint64_t sub_22BC465C0()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  sub_22BB58678();
  sub_22BB3052C();
  *v4 = v3;
  v5 = v3[21];
  *v4 = *v2;
  v3[22] = v0;

  sub_22BC549E8();
  v7 = *(v6 + 32);
  if (!v0)
  {
    v3[23] = v1;
  }

  sub_22BB3A3F4();
  sub_22BB3478C();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BC466D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22BB36BC0();
  sub_22BB35458();
  v14 = v12[17];
  v13 = v12[18];
  v16 = v12[15];
  v15 = v12[16];
  v17 = v12[13];
  v18 = v12[12];
  v19 = v12[9];
  v20 = v12[8];
  (*(v12[11] + 8))(v12[14], v12[10]);
  v21 = *(v14 + 8);
  v22 = sub_22BB2F324();
  v23(v22);

  v24 = v12[1];
  v25 = v12[23];
  sub_22BB33430();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_22BC467B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BB345B4();
  sub_22BB34E84();
  (*(v10[17] + 8))(v10[18], v10[16]);
  v11 = v10[20];
  sub_22BC54E98();

  sub_22BB2F09C();
  sub_22BB37AC0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_22BC4685C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BB345B4();
  sub_22BB34E84();
  v12 = v10[17];
  v11 = v10[18];
  v13 = v10[16];
  (*(v10[11] + 8))(v10[14], v10[10]);
  v14 = *(v12 + 8);
  v15 = sub_22BB2F324();
  v16(v15);
  v17 = v10[22];
  sub_22BC54E98();

  sub_22BB2F09C();
  sub_22BB37AC0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_22BC46920()
{
  sub_22BB30F68();
  v0 = sub_22BDB8E14();
  v1 = sub_22BB30444(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  v6 = sub_22BDB9FE4();
  v8 = v7;
  sub_22BDB9034();
  v9 = sub_22BDB8E04();
  v11 = v10;
  v12 = *(v3 + 8);
  v13 = sub_22BB3ACBC();
  v14(v13);
  if (v6 == v9 && v8 == v11)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_22BDBB6D4();
  }

  return v16 & 1;
}

uint64_t sub_22BC46A48()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  v1[18] = v2;
  v1[19] = v0;
  v1[16] = v3;
  v1[17] = v4;
  v1[15] = v5;
  sub_22BC54414();
  v6 = sub_22BDB9D04();
  v1[20] = v6;
  sub_22BB30434(v6);
  v1[21] = v7;
  v9 = *(v8 + 64);
  v1[22] = sub_22BBB79B0();
  v1[23] = swift_task_alloc();
  v10 = sub_22BDB9044();
  v1[24] = v10;
  sub_22BB30434(v10);
  v1[25] = v11;
  v13 = *(v12 + 64);
  v1[26] = sub_22BB30ACC();
  v14 = sub_22BDB9854();
  v1[27] = v14;
  sub_22BB30434(v14);
  v1[28] = v15;
  v17 = *(v16 + 64);
  v1[29] = sub_22BB30ACC();
  v18 = sub_22BDB9864();
  v1[30] = v18;
  sub_22BB30434(v18);
  v1[31] = v19;
  v21 = *(v20 + 64);
  v1[32] = sub_22BB30ACC();
  v22 = sub_22BDB8254();
  v1[33] = v22;
  sub_22BB30434(v22);
  v1[34] = v23;
  v25 = *(v24 + 64);
  v1[35] = sub_22BB30ACC();
  v26 = sub_22BBE6DE0(&qword_27D8E2988, &unk_22BDBD050);
  sub_22BB2F0C8(v26);
  v28 = *(v27 + 64);
  v1[36] = sub_22BB30ACC();
  v29 = sub_22BDBA014();
  v1[37] = v29;
  sub_22BB30434(v29);
  v1[38] = v30;
  v32 = *(v31 + 64);
  v1[39] = sub_22BB30ACC();
  v33 = sub_22BDBA044();
  v1[40] = v33;
  sub_22BB30434(v33);
  v1[41] = v34;
  v36 = *(v35 + 64);
  v1[42] = sub_22BB30ACC();
  sub_22BB36F5C();
  v1[43] = *(v37 + 88);
  sub_22BB36F5C();
  v39 = *(v38 + 80);
  v1[44] = v39;
  sub_22BC54330();
  swift_getAssociatedTypeWitness();
  sub_22BB500B4();
  v1[45] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[46] = AssociatedTypeWitness;
  sub_22BB30444(AssociatedTypeWitness);
  v1[47] = v41;
  v43 = *(v42 + 64);
  v1[48] = sub_22BB30ACC();
  v44 = sub_22BDB77D4();
  v1[49] = v44;
  sub_22BB30434(v44);
  v1[50] = v45;
  v47 = *(v46 + 64);
  v1[51] = sub_22BC54F10();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  sub_22BC54A54();
  v48 = type metadata accessor for QualifiedToolKitQuery();
  v1[54] = v48;
  sub_22BB30444(v48);
  v1[55] = v49;
  v51 = *(v50 + 64);
  v1[56] = sub_22BC54F10();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v52 = sub_22BDB8264();
  v1[59] = v52;
  sub_22BB30434(v52);
  v1[60] = v53;
  v55 = *(v54 + 64);
  v1[61] = sub_22BC54F10();
  v1[62] = swift_task_alloc();
  v56 = *(v39 - 8);
  v1[63] = v56;
  v57 = *(v56 + 64);
  v1[64] = sub_22BB30ACC();
  sub_22BC54A54();
  v58 = sub_22BDBB254();
  v1[65] = v58;
  sub_22BB30434(v58);
  v1[66] = v59;
  v61 = *(v60 + 64);
  v1[67] = sub_22BBB79B0();
  v1[68] = swift_task_alloc();
  v62 = swift_checkMetadataState();
  v1[69] = v62;
  sub_22BB30434(v62);
  v1[70] = v63;
  v65 = *(v64 + 64);
  v1[71] = sub_22BB30ACC();
  sub_22BB355F0();
  sub_22BB3478C();

  return MEMORY[0x2822009F8](v66, v67, v68);
}

void sub_22BC46FE0()
{
  sub_22BB348A0();
  v1 = *(v0 + 568);
  v3 = *(v0 + 504);
  v2 = *(v0 + 512);
  v4 = *(v0 + 496);
  v5 = *(v0 + 352);
  v6 = *(v0 + 152);
  v7 = *(v0 + 136);
  v8 = *(v0 + 120);
  v9 = *(*v6 + 104);
  (*(*(v0 + 344) + 32))(v5);
  (*(v3 + 16))(v2, v6 + v9, v5);
  sub_22BDB9024();
  *(v0 + 576) = v10;
  sub_22BDB9CF4();
  sub_22BC4860C();
  *(v0 + 584) = v11;
  *(v0 + 592) = v12;
  *(v0 + 73) = v13;
  v14 = *(v0 + 496);
  v15 = *(v0 + 472);
  v16 = *(v0 + 480);
  v31 = *(v0 + 344);
  v17 = *(v16 + 8);
  *(v0 + 600) = v17;
  *(v0 + 608) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v14, v15);
  v18 = *(v31 + 64);
  sub_22BB36CE0();
  v30 = v19 + *v19;
  v21 = *(v20 + 4);
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 616) = v22;
  *v22 = v23;
  v22[1] = sub_22BC47378;
  v24 = *(v0 + 544);
  v25 = *(v0 + 512);
  v26 = *(v0 + 352);
  v27 = *(v0 + 128);
  v32 = *(v0 + 344);
  sub_22BB374A0();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_22BC47378()
{
  sub_22BB345B4();
  sub_22BB34E84();
  sub_22BB34764();
  v3 = v1;
  sub_22BB3052C();
  *v4 = v1;
  v5 = v1[77];
  *v4 = *v2;
  v1[78] = v0;

  sub_22BB33218();
  v7 = *(v6 + 592);
  v8 = v1[73];
  v9 = v1[72];
  v10 = v1[64];
  v11 = v1[63];
  v12 = v1[44];
  v13 = v1[19];
  v14 = *(v3 + 73);
  (*(v11 + 8))(v10, v12);
  v15 = sub_22BB31528();
  sub_22BBF94C0(v15, v16, v14);

  sub_22BB37AC0();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_22BC47534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_22BB34770();
  a33 = v36;
  a34 = v37;
  sub_22BC53EC8();
  a32 = v34;
  v38 = *(v34 + 544);
  v39 = *(v34 + 536);
  v40 = *(v34 + 520);
  v41 = *(v34 + 432);
  v42 = sub_22BB3459C(*(v34 + 528));
  v43(v42);
  sub_22BB36B74(v39);
  if (v44)
  {
    v45 = *(v34 + 560);
    a19 = *(v34 + 552);
    v145 = *(v34 + 568);
    a18 = *(v34 + 544);
    v46 = *(v34 + 520);
    v47 = *(v34 + 168);
    v148 = *(v34 + 160);
    v48 = *(v34 + 120);
    v49 = *(*(v34 + 528) + 8);
    v49(*(v34 + 536), v46);
    type metadata accessor for RuntimeError();
    sub_22BB326C8();
    sub_22BB8E56C(v50, v51);
    sub_22BC54D34();
    sub_22BB369E0();
    v52 = swift_allocError();
    v53 = *(v47 + 16);
    v55 = sub_22BC54C4C(v52, v54);
    v56(v55);
    sub_22BB35470();
    swift_storeEnumTagMultiPayload();
    v149 = v52;
    swift_willThrow();
    v49(a18, v46);
    (*(v45 + 8))(v145, a19);
LABEL_9:
    sub_22BB38538();
    v116 = *(v34 + 448);
    v117 = *(v34 + 416);
    v118 = *(v34 + 424);
    sub_22BB94D5C();

    sub_22BB2F09C();
    sub_22BB38A6C();

    return v120(v119, v120, v121, v122, v123, v124, v125, v126, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v145, v149, a22, a23, a24, a25, a26);
  }

  v57 = *(v34 + 536);
  v58 = *(v34 + 456);
  v59 = *(v34 + 464);
  v60 = *(v34 + 440);
  v61 = *(v34 + 424);
  v62 = *(v60 + 32);
  v63 = sub_22BB97E2C();
  v64(v63);
  sub_22BDB63F4();
  v65 = *(v60 + 16);
  v66 = sub_22BB52868();
  v65(v66);
  v67 = sub_22BDB77C4();
  v68 = sub_22BDBB134();
  v69 = sub_22BB333C0(v68);
  v70 = *(v34 + 456);
  if (v69)
  {
    LODWORD(a18) = v58;
    v72 = *(v34 + 440);
    v71 = *(v34 + 448);
    v73 = *(v34 + 432);
    a19 = *(v34 + 400);
    v146 = *(v34 + 392);
    v150 = *(v34 + 424);
    sub_22BB31AD8();
    v74 = sub_22BB8B6BC();
    a22 = v74;
    *v35 = 136315138;
    v75 = sub_22BB3B528();
    v65(v75);
    sub_22BB37C88();
    v76 = sub_22BDBAC14();
    v78 = v77;
    v79 = v73;
    v80 = *(v72 + 8);
    v80(v70, v79);
    sub_22BB32EE0(v76, v78, &a22);
    sub_22BB96DE4();
    *(v35 + 4) = v70;
    sub_22BC54378(&dword_22BB2C000, v81, a18, "DefaultRuntime: Attempting to run query: %s");
    sub_22BB32FA4(v74);
    sub_22BB35600();
    sub_22BB30458();

    v82 = *(a19 + 8);
    v82(v150, v146);
  }

  else
  {
    v83 = *(v34 + 432);
    v84 = *(v34 + 440);
    v85 = *(v34 + 424);
    v86 = *(v34 + 392);
    v87 = *(v34 + 400);

    v80 = *(v84 + 8);
    v88 = sub_22BC5448C();
    (v80)(v88);
    v82 = *(v87 + 8);
    v89 = sub_22BB2F0E0();
    (v82)(v89);
  }

  *(v34 + 640) = v80;
  *(v34 + 632) = v82;
  v90 = *(v34 + 624);
  v91 = *(v34 + 336);
  v93 = *(v34 + 304);
  v92 = *(v34 + 312);
  v95 = *(v34 + 288);
  v94 = *(v34 + 296);
  v96 = *(v34 + 128);
  (*(*(v34 + 376) + 16))(*(v34 + 384), *(v34 + 464), *(v34 + 368));
  v97 = *(v93 + 16);
  sub_22BB3B07C();
  v98();
  sub_22BBE6DE0(&qword_27D8E27E0, &qword_22BDBCE10);
  sub_22BDBAB14();
  sub_22BDBA264();
  sub_22BB30B28();
  sub_22BC54CF4(v99, v100, v101, v102);
  sub_22BB33728();
  sub_22BDBA024();
  if (v90)
  {
    v145 = *(v34 + 568);
    v149 = v90;
    v103 = *(v34 + 560);
    v104 = *(v34 + 552);
    v105 = *(v34 + 544);
    v106 = *(v34 + 528);
    v107 = *(v34 + 520);
    v108 = *(v34 + 464);
    v109 = v80;
    v110 = *(v34 + 432);
    v111 = *(v34 + 440);
    (*(*(v34 + 376) + 8))(*(v34 + 384), *(v34 + 368));
    v112 = sub_22BB32E04();
    v109(v112);
    v113 = *(v106 + 8);
    v114 = sub_22BB2F0E0();
    v115(v114);
    (*(v103 + 8))(v145, v104);
    goto LABEL_9;
  }

  v151 = *(v34 + 360);
  sub_22BB690EC(*(v34 + 464) + *(*(v34 + 432) + 28), v34 + 16);
  *(v34 + 56) = 0;
  *(v34 + 64) = 0;
  *(v34 + 72) = 1;
  v128 = *(v151 + 72);
  v152 = v151 + 72;
  sub_22BB36CE0();
  v147 = v129 + *v129;
  v131 = *(v130 + 4);
  v132 = swift_task_alloc();
  *(v34 + 648) = v132;
  *v132 = v34;
  v132[1] = sub_22BC47B18;
  v133 = *(v34 + 568);
  v134 = *(v34 + 552);
  v135 = *(v34 + 360);
  v136 = *(v34 + 336);
  sub_22BB3487C(*(v34 + 384));
  sub_22BB38A6C();

  return v142(v137, v138, v139, v140, v141, v142, v143, v144, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v147, v152, a22, a23, a24, a25, a26);
}

uint64_t sub_22BC47B18()
{
  sub_22BB36BC0();
  sub_22BB35458();
  sub_22BB34764();
  v3 = v1;
  sub_22BB3052C();
  *v4 = v1;
  v5 = v1[81];
  v26 = *v2;
  v1[82] = v6;
  v1[83] = v0;

  sub_22BB33218();
  v8 = *(v7 + 384);
  v9 = v1[47];
  v10 = v1[46];
  v11 = v1[42];
  v12 = v1[41];
  v13 = v1[40];
  v14 = v1[19];
  sub_22BB58728((v3 + 2), &qword_27D8E2990, &qword_22BDBFAF0);
  v15 = *(v12 + 8);
  v16 = sub_22BB38518();
  v17(v16);
  v18 = *(v9 + 8);
  v19 = sub_22BB32E04();
  v20(v19);
  sub_22BB33430();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_22BC47CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void (*a17)(uint64_t, void (*)(void)), void (*a18)(uint64_t, uint64_t), uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_22BB3B558();
  a31 = v33;
  a32 = v34;
  sub_22BB348A0();
  a30 = v32;
  v36 = *(v32 + 480);
  v35 = *(v32 + 488);
  v37 = *(v32 + 472);
  v38 = *(v32 + 120);
  sub_22BDB9CF4();
  v39 = *(v36 + 88);
  v40 = sub_22BB30AE4();
  if (v41(v40) == *MEMORY[0x277D1DC10])
  {
    v42 = *(v32 + 488);
    v43 = *(v32 + 472);
    v45 = *(v32 + 272);
    v44 = *(v32 + 280);
    v46 = *(v32 + 264);
    v47 = *(v32 + 144);
    v48 = sub_22BC54A3C(*(v32 + 480));
    v49(v48);
    v50 = *(v45 + 32);
    v51 = sub_22BB52868();
    v52(v51);
    sub_22BBBEE60(v47, v32 + 80, &qword_27D8E2540, &unk_22BDBCC00);
    v53 = *(v32 + 104);
    if (v53)
    {
      v148 = *(v32 + 656);
      a17 = *(v32 + 280);
      a19 = *(v32 + 272);
      a20 = *(v32 + 264);
      v54 = *(v32 + 248);
      v55 = *(v32 + 256);
      v56 = *(v32 + 232);
      a18 = *(v32 + 240);
      v57 = *(v32 + 224);
      a14 = *(v32 + 216);
      v58 = *(v32 + 200);
      v59 = *(v32 + 208);
      v60 = *(v32 + 192);
      v61 = *(v32 + 136);
      sub_22BB69FEC((v32 + 80), v53);
      sub_22BDB8234();
      a13 = v62;
      (*(v58 + 16))(v59, v61, v60);
      sub_22BDB9844();
      (*(v57 + 104))(v56, *MEMORY[0x277D1E658], a14);

      sub_22BDB9824();
      sub_22BD6EF84();
      (*(v54 + 8))(v55, a18);
      (*(a19 + 8))(a17, a20);
      sub_22BB32FA4((v32 + 80));
    }

    else
    {
      (*(*(v32 + 272) + 8))(*(v32 + 280), *(v32 + 264));
      sub_22BB58728(v32 + 80, &qword_27D8E2540, &unk_22BDBCC00);
    }
  }

  else
  {
    v63 = *(v32 + 416);
    v64 = *(v32 + 184);
    v65 = *(v32 + 160);
    v66 = *(v32 + 168);
    v67 = *(v32 + 120);
    sub_22BDB63F4();
    v68 = *(v66 + 16);
    v69 = sub_22BB33728();
    v68(v69);
    v70 = sub_22BDB77C4();
    sub_22BDBB104();
    sub_22BB379BC();
    v72 = os_log_type_enabled(v70, v71);
    v73 = *(v32 + 632);
    a20 = *(v32 + 400);
    v74 = *(v32 + 184);
    if (v72)
    {
      a18 = *(v32 + 392);
      a19 = *(v32 + 416);
      v75 = *(v32 + 168);
      v76 = *(v32 + 176);
      v77 = *(v32 + 160);
      v146 = v70;
      v78 = sub_22BB31AD8();
      a17 = v73;
      v79 = sub_22BB314C8();
      a21 = v79;
      *v78 = 136315138;
      v80 = sub_22BB35470();
      v68(v80);
      sub_22BB2F12C();
      v81 = sub_22BDBAC14();
      v83 = v82;
      (*(v75 + 8))(v74, v77);
      v84 = sub_22BB32EE0(v81, v83, &a21);

      *(v78 + 4) = v84;
      sub_22BB58D20();
      _os_log_impl(v85, v86, v87, v88, v89, 0xCu);
      sub_22BB32FA4(v79);
      sub_22BB35600();
      sub_22BB32238();

      a17(a19, a18);
    }

    else
    {
      v90 = *(v32 + 160);
      v91 = *(v32 + 168);

      (*(v91 + 8))(v74, v90);
      v92 = sub_22BB2F12C();
      v73(v92);
    }

    v93 = *(v32 + 608);
    (*(v32 + 600))(*(v32 + 488), *(v32 + 472));
  }

  v94 = *(v32 + 656);
  v95 = *(v32 + 408);
  sub_22BDB63F4();

  v96 = sub_22BDB77C4();
  sub_22BDBB134();
  sub_22BC54DB0();

  if (sub_22BC54EF8())
  {
    v97 = *(v32 + 656);
    sub_22BC54D20();
    v98 = *(v32 + 560);
    sub_22BC54BF8();
    v99 = *(v32 + 528);
    v147 = v100;
    v149 = *(v32 + 520);
    a13 = *(v32 + 432);
    a14 = *(v32 + 464);
    v101 = *(v32 + 400);
    a11 = *(v32 + 408);
    a12 = *(v32 + 440);
    a10 = *(v32 + 392);
    v102 = sub_22BB31AD8();
    v103 = sub_22BB314C8();
    a21 = v103;
    *v102 = 136315138;
    sub_22BDBA594();
    v104 = sub_22BC54D40();
    v105 = MEMORY[0x2318A4D50](v104);
    v107 = sub_22BB32EE0(v105, v106, &a21);

    *(v102 + 4) = v107;
    sub_22BB379D4();
    _os_log_impl(v108, v109, v110, v111, v112, 0xCu);
    sub_22BB32FA4(v103);
    sub_22BB30458();
    sub_22BB35600();

    v147(a11, a10);
    a18(a14, a13);
    (*(v99 + 8))(a17, v149);
    (*(v98 + 8))(a20, a19);
  }

  else
  {
    sub_22BC54D20();
    v113 = *(v32 + 560);
    sub_22BC54BF8();
    v114 = *(v32 + 528);
    v147 = v115;
    v149 = *(v32 + 520);
    v116 = *(v32 + 464);
    v118 = *(v32 + 432);
    v117 = *(v32 + 440);
    v119 = *(v32 + 400);
    v120 = *(v32 + 408);
    v121 = *(v32 + 392);

    v122 = sub_22BB2F12C();
    (v147)(v122);
    v123 = sub_22BB35464();
    (a18)(v123);
    (*(v114 + 8))(a17, v149);
    (*(v113 + 8))(a20, a19);
  }

  v124 = *(v32 + 568);
  v125 = *(v32 + 544);
  v126 = *(v32 + 536);
  v127 = *(v32 + 512);
  v129 = *(v32 + 488);
  v128 = *(v32 + 496);
  v131 = *(v32 + 456);
  v130 = *(v32 + 464);
  v132 = *(v32 + 448);
  v133 = *(v32 + 416);
  v134 = *(v32 + 424);
  sub_22BB94D5C();

  v135 = *(v32 + 8);
  v136 = *(v32 + 656);
  sub_22BB374A0();

  return v139(v137, v138, v139, v140, v141, v142, v143, v144, a9, a10, a11, a12, a13, a14, v147, v149, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_22BC4835C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22BB3B558();
  sub_22BB348A0();
  (*(v24[70] + 8))(v24[71], v24[69]);
  v37 = v24[78];
  sub_22BB38538();
  v25 = v24[56];
  v26 = v24[52];
  v27 = v24[53];
  sub_22BB94D5C();

  sub_22BB2F09C();
  sub_22BB374A0();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v37, a22, a23, a24);
}

uint64_t sub_22BC48494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22BB3B558();
  sub_22BB348A0();
  v25 = *(v24 + 568);
  v26 = *(v24 + 560);
  v27 = *(v24 + 552);
  v28 = *(v24 + 544);
  v29 = *(v24 + 528);
  v30 = *(v24 + 520);
  v31 = *(v24 + 440) + 8;
  (*(v24 + 640))(*(v24 + 464), *(v24 + 432));
  v32 = *(v29 + 8);
  v33 = sub_22BB2F0E0();
  v34(v33);
  v35 = *(v26 + 8);
  v36 = sub_22BB2F324();
  v37(v36);
  v50 = *(v24 + 664);
  sub_22BB38538();
  v38 = *(v24 + 448);
  v39 = *(v24 + 416);
  v40 = *(v24 + 424);
  sub_22BB94D5C();

  sub_22BB2F09C();
  sub_22BB374A0();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v50, a22, a23, a24);
}

void sub_22BC4860C()
{
  sub_22BB31014();
  v0 = sub_22BDB8254();
  v1 = sub_22BB30444(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  v8 = v7 - v6;
  v9 = sub_22BDB81E4();
  v10 = sub_22BB30444(v9);
  v50 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB30574();
  v16 = v15 - v14;
  v17 = sub_22BDB8264();
  v18 = sub_22BB30444(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB30574();
  v25 = v24 - v23;
  v26 = v20[2];
  v27 = sub_22BB35470();
  v28(v27);
  v29 = v20[11];
  v30 = sub_22BB8E548();
  v32 = v31(v30);
  if (v32 == *MEMORY[0x277D1DBF0] || v32 == *MEMORY[0x277D1DC08])
  {
    goto LABEL_6;
  }

  if (v32 == *MEMORY[0x277D1DC10])
  {
    v38 = v20[12];
    v39 = sub_22BB8E548();
    v40(v39);
    (*(v3 + 32))(v8, v25, v0);
    sub_22BDB8234();
    v41 = *(v3 + 8);
    v42 = sub_22BB53C48();
    v43(v42);
    goto LABEL_11;
  }

  if (v32 == *MEMORY[0x277D1DC00])
  {
    v44 = v20[12];
    v45 = sub_22BB8E548();
    v46(v45);
    (*(v50 + 32))(v16, v25, v9);
    sub_22BDB81C4();
    v47 = *(v50 + 8);
    v48 = sub_22BB3FBBC();
    v49(v48);
    goto LABEL_11;
  }

  if (v32 == *MEMORY[0x277D1DBF8])
  {
LABEL_6:
    v34 = v20[1];
    v35 = sub_22BB8E548();
    v36(v35);
    sub_22BC52E28();
    sub_22BB369E0();
    swift_allocError();
    *v37 = 0u;
    *(v37 + 16) = 0u;
    *(v37 + 32) = 2;
    swift_willThrow();
LABEL_11:
    sub_22BB58D2C();
    sub_22BB376A8();
    return;
  }

  sub_22BDBB6C4();
  __break(1u);
}

uint64_t sub_22BC4892C()
{
  sub_22BB2F0D4();
  *(v1 + 176) = v2;
  *(v1 + 112) = v3;
  *(v1 + 120) = v0;
  *(v1 + 96) = v4;
  *(v1 + 104) = v5;
  *(v1 + 80) = v6;
  *(v1 + 88) = v7;
  sub_22BB5413C();
  *(v1 + 128) = v8;
  v9 = sub_22BBE6DE0(&qword_27D8E2F60, &unk_22BDBD960);
  sub_22BB2F0C8(v9);
  v11 = *(v10 + 64);
  *(v1 + 136) = sub_22BB30ACC();
  v12 = sub_22BDB5404();
  *(v1 + 144) = v12;
  sub_22BB30434(v12);
  *(v1 + 152) = v13;
  v15 = *(v14 + 64);
  *(v1 + 160) = sub_22BB30ACC();
  v16 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_22BC48A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BB345B4();
  sub_22BB34E84();
  v11 = *(v10 + 176);
  v12 = *(v10 + 88);
  if ((sub_22BDB9FF4() & 1) != 0 && (v13 = *(v10 + 120), v14 = *(v10 + 104), (sub_22BC52874() & 1) == 0))
  {
    v39 = *(v10 + 152);
    v38 = *(v10 + 160);
    v40 = *(v10 + 136);
    v41 = *(v10 + 144);
    v42 = *(v10 + 80);
    v43 = *MEMORY[0x277D1CCE8];
    v44 = sub_22BDB5484();
    sub_22BB30ED8(v44);
    v46 = *(v45 + 104);
    v47 = sub_22BB31B54();
    v48(v47);
    v49 = *MEMORY[0x277D1CC20];
    v50 = sub_22BDB5414();
    sub_22BB30ED8(v50);
    v52 = *(v51 + 104);
    v53 = sub_22BB31B54();
    v54(v53);
    v55 = *MEMORY[0x277D1CBA0];
    v56 = sub_22BBBE780();
    v57(v56);
    sub_22BDB53F4();
    sub_22BC54210();
    sub_22BB30B28();
    sub_22BC54CF4(v58, v59, v60, v61);
    sub_22BB30AE4();
    sub_22BDB90A4();
    sub_22BDB90B4();
    v35 = sub_22BB33224();
    v36 = 0;
  }

  else
  {
    v15 = *(v10 + 120);
    v16 = *(v10 + 128);
    v17 = *(v10 + 96);
    v18 = *(*v15 + 128);
    sub_22BB31B88();
    swift_beginAccess();
    v19 = *(v15 + v18);
    sub_22BDB4C34();
    v22 = v16 + 80;
    v21 = *(v16 + 80);
    v20 = *(v22 + 8);
    sub_22BC541B0();
    swift_getAssociatedTypeWitness();
    sub_22BB331D4();
    swift_getAssociatedConformanceWitness();
    sub_22BC54330();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v24 = sub_22BC54ED8();
    sub_22BB3B07C();
    v25 = type metadata accessor for ToolExecutionEventStream();

    sub_22BB69984();
    WitnessTable = swift_getWitnessTable();
    *(v10 + 16) = AssociatedTypeWitness;
    *(v10 + 24) = v25;
    *(v10 + 32) = v24;
    *(v10 + 40) = WitnessTable;
    type metadata accessor for ToolExecution();
    sub_22BB3A594();
    sub_22BB8E56C(v27, v28);
    sub_22BB2F324();
    sub_22BDBAB54();

    v29 = *(v10 + 72);
    *(v10 + 168) = v29;
    if (v29)
    {
      sub_22BB37AC0();

      return MEMORY[0x2822009F8](v30, v31, v32);
    }

    v34 = *(v10 + 80);
    sub_22BDB90B4();
    v35 = sub_22BB3B658();
  }

  sub_22BB336D0(v35, v36, 1, v37);
  v62 = *(v10 + 160);
  v63 = *(v10 + 136);

  sub_22BB2F09C();
  sub_22BB37AC0();

  return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10);
}

uint64_t sub_22BC48D18()
{
  sub_22BB2F0D4();
  v1 = *(v0 + 168);
  v2 = *(v0 + 120);
  *(v0 + 177) = sub_22BC924F4() & 1;

  return MEMORY[0x2822009F8](sub_22BC48D90, v2, 0);
}

uint64_t sub_22BC48D90()
{
  sub_22BB6B9D0();
  sub_22BB30F5C();
  if (*(v0 + 177) == 1 && (v1 = *(v0 + 112), (sub_22BDB9494() & 1) != 0) && (v2 = *(v0 + 120), v3 = *(v0 + 104), (sub_22BC52874() & 1) == 0))
  {
    v20 = *(v0 + 152);
    v19 = *(v0 + 160);
    v21 = *(v0 + 136);
    v22 = *(v0 + 144);
    v23 = *(v0 + 80);
    v24 = *MEMORY[0x277D1CCE8];
    v25 = sub_22BDB5484();
    sub_22BB30ED8(v25);
    v27 = *(v26 + 104);
    v28 = sub_22BB31B54();
    v29(v28);
    v30 = *MEMORY[0x277D1CC20];
    v31 = sub_22BDB5414();
    sub_22BB30ED8(v31);
    v33 = *(v32 + 104);
    v34 = sub_22BB31B54();
    v35(v34);
    v36 = *MEMORY[0x277D1CBA0];
    v37 = sub_22BBBE780();
    v38(v37);
    sub_22BDB53F4();
    sub_22BC54210();
    sub_22BB30B28();
    sub_22BC54CF4(v39, v40, v41, v42);
    sub_22BB30AE4();
    sub_22BDB90A4();
    sub_22BDB90B4();
    v5 = sub_22BB33224();
    v6 = 0;
  }

  else
  {
    v4 = *(v0 + 80);
    sub_22BDB90B4();
    v5 = sub_22BB3B658();
  }

  sub_22BB336D0(v5, v6, 1, v7);
  v8 = *(v0 + 160);
  v9 = *(v0 + 136);

  sub_22BB2F09C();
  sub_22BB3A1C0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_22BC48F04()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  v2[136] = v1;
  v2[135] = v3;
  v2[134] = v4;
  v2[133] = v5;
  v2[132] = v6;
  v2[131] = v7;
  sub_22BC54414();
  v8 = sub_22BDB4C84();
  v2[137] = v8;
  sub_22BB30434(v8);
  v2[138] = v9;
  v11 = *(v10 + 64);
  v2[139] = sub_22BB30ACC();
  v12 = sub_22BDB4CE4();
  v2[140] = v12;
  sub_22BB30434(v12);
  v2[141] = v13;
  v15 = *(v14 + 64);
  v2[142] = sub_22BB30ACC();
  v16 = sub_22BDB4414();
  v2[143] = v16;
  sub_22BB30434(v16);
  v2[144] = v17;
  v19 = *(v18 + 64);
  v2[145] = sub_22BB30ACC();
  v20 = sub_22BBE6DE0(&qword_27D8E2F70, &unk_22BDBD970);
  sub_22BB2F0C8(v20);
  v22 = *(v21 + 64);
  v2[146] = sub_22BB30ACC();
  v23 = sub_22BDBA734();
  v2[147] = v23;
  sub_22BB30434(v23);
  v2[148] = v24;
  v26 = *(v25 + 64);
  v2[149] = sub_22BB30ACC();
  v27 = sub_22BBE6DE0(&qword_27D8E2F60, &unk_22BDBD960);
  sub_22BB2F0C8(v27);
  v29 = *(v28 + 64);
  v2[150] = sub_22BB30ACC();
  v30 = sub_22BBE6DE0(&qword_27D8E2F30, &qword_22BDC1240);
  sub_22BB2F0C8(v30);
  v32 = *(v31 + 64);
  v2[151] = sub_22BB30ACC();
  v33 = sub_22BDB5404();
  v2[152] = v33;
  sub_22BB30434(v33);
  v2[153] = v34;
  v36 = *(v35 + 64);
  v2[154] = sub_22BBB79B0();
  v2[155] = swift_task_alloc();
  v2[156] = swift_task_alloc();
  v37 = sub_22BDBA0C4();
  v2[157] = v37;
  sub_22BB30434(v37);
  v2[158] = v38;
  v40 = *(v39 + 64);
  v2[159] = sub_22BBB79B0();
  v2[160] = swift_task_alloc();
  v2[161] = swift_task_alloc();
  v41 = sub_22BDBA0D4();
  v2[162] = v41;
  sub_22BB30434(v41);
  v2[163] = v42;
  v44 = *(v43 + 64);
  v2[164] = sub_22BB30ACC();
  v45 = sub_22BDB7614();
  v2[165] = v45;
  sub_22BB30434(v45);
  v2[166] = v46;
  v48 = *(v47 + 64);
  v2[167] = sub_22BB30ACC();
  v49 = sub_22BDB9F64();
  v2[168] = v49;
  sub_22BB30434(v49);
  v2[169] = v50;
  v52 = *(v51 + 64);
  v2[170] = sub_22BB30ACC();
  sub_22BB36F5C();
  v54 = *(v53 + 88);
  v55 = *(v0 + 80);
  sub_22BB500B4();
  swift_getAssociatedTypeWitness();
  sub_22BB3182C();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[171] = AssociatedTypeWitness;
  sub_22BC53CBC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2[172] = AssociatedConformanceWitness;
  sub_22BC54330();
  v58 = type metadata accessor for ToolExecutionEventStream();
  v2[173] = v58;
  sub_22BB69984();
  WitnessTable = swift_getWitnessTable();
  v2[174] = WitnessTable;
  v2[62] = AssociatedTypeWitness;
  v2[63] = v58;
  v2[64] = AssociatedConformanceWitness;
  v2[65] = WitnessTable;
  v60 = type metadata accessor for ToolExecution.Outcome();
  v2[175] = v60;
  sub_22BB30434(v60);
  v2[176] = v61;
  v63 = *(v62 + 64);
  v2[177] = sub_22BB3307C();
  v2[178] = swift_task_alloc();
  v2[179] = swift_task_alloc();
  v2[180] = swift_task_alloc();
  v2[181] = swift_task_alloc();
  v64 = sub_22BDB43E4();
  v2[182] = v64;
  sub_22BB30434(v64);
  v2[183] = v65;
  v67 = *(v66 + 64);
  v2[184] = sub_22BB3307C();
  v2[185] = swift_task_alloc();
  v2[186] = swift_task_alloc();
  v2[187] = swift_task_alloc();
  v68 = sub_22BBE6DE0(&qword_27D8E2F78, &unk_22BDBD980);
  sub_22BB2F0C8(v68);
  v70 = *(v69 + 64);
  v2[188] = sub_22BB30ACC();
  v71 = sub_22BDB8CB4();
  v2[189] = v71;
  sub_22BB30434(v71);
  v2[190] = v72;
  v74 = *(v73 + 64);
  v2[191] = sub_22BB30ACC();
  v75 = sub_22BBE6DE0(&qword_27D8E2F80, &qword_22BDC0600);
  sub_22BB2F0C8(v75);
  v77 = *(v76 + 64);
  v2[192] = sub_22BB30ACC();
  v78 = sub_22BDB77D4();
  v2[193] = v78;
  sub_22BB30434(v78);
  v2[194] = v79;
  v81 = *(v80 + 64);
  v2[195] = sub_22BB3307C();
  v2[196] = swift_task_alloc();
  v2[197] = swift_task_alloc();
  v2[198] = swift_task_alloc();
  v2[199] = swift_task_alloc();
  v2[200] = swift_task_alloc();
  v2[201] = swift_task_alloc();
  v2[202] = swift_task_alloc();
  v2[203] = swift_task_alloc();
  v2[204] = swift_task_alloc();
  v2[205] = swift_task_alloc();
  v2[206] = swift_task_alloc();
  v82 = sub_22BBE6DE0(&qword_27D8E2F88, &qword_22BDBD990);
  sub_22BB2F0C8(v82);
  v84 = *(v83 + 64);
  v2[207] = sub_22BB30ACC();
  v85 = sub_22BDB90B4();
  v2[208] = v85;
  sub_22BB30434(v85);
  v2[209] = v86;
  v88 = *(v87 + 64);
  v2[210] = sub_22BB30ACC();
  v89 = sub_22BDB7D94();
  v2[211] = v89;
  sub_22BB30434(v89);
  v2[212] = v90;
  v92 = *(v91 + 64);
  v2[213] = sub_22BB30ACC();
  v93 = sub_22BDB7C54();
  v2[214] = v93;
  sub_22BB30434(v93);
  v2[215] = v94;
  v96 = *(v95 + 64);
  v2[216] = sub_22BB30ACC();
  v97 = sub_22BDBA014();
  v2[217] = v97;
  sub_22BB30434(v97);
  v2[218] = v98;
  v100 = *(v99 + 64);
  v2[219] = sub_22BB30ACC();
  v101 = sub_22BDB4C34();
  v2[220] = v101;
  sub_22BB30434(v101);
  v2[221] = v102;
  v104 = *(v103 + 64);
  v2[222] = sub_22BB3307C();
  v2[223] = swift_task_alloc();
  v2[224] = swift_task_alloc();
  v2[225] = swift_task_alloc();
  v105 = sub_22BDB8E14();
  v2[226] = v105;
  sub_22BB30434(v105);
  v2[227] = v106;
  v108 = *(v107 + 64);
  v2[228] = sub_22BB3307C();
  v2[229] = swift_task_alloc();
  v2[230] = swift_task_alloc();
  v109 = sub_22BDB9564();
  v2[231] = v109;
  sub_22BB30434(v109);
  v2[232] = v110;
  v112 = *(v111 + 64);
  v2[233] = sub_22BB30ACC();
  sub_22BB355F0();
  sub_22BB3478C();

  return MEMORY[0x2822009F8](v113, v114, v115);
}

uint64_t sub_22BC49898()
{
  sub_22BB2F35C();
  v1 = v0[233];
  v2 = v0[231];
  v3 = v0[230];
  v4 = v0[225];
  v5 = v0[132];
  v6 = sub_22BB3459C(v0[232]);
  v7(v6);
  sub_22BDB9544();
  sub_22BDB8174();
  sub_22BDB9554();
  v0[234] = v8;
  swift_task_alloc();
  sub_22BB30B34();
  v0[235] = v9;
  *v9 = v10;
  v9[1] = sub_22BC49980;
  v11 = v0[230];
  v12 = v0[219];
  v13 = v0[136];
  sub_22BB500B4();

  return sub_22BC1F358();
}

uint64_t sub_22BC49980()
{
  sub_22BB2F35C();
  sub_22BC549F4();
  sub_22BB33FF4();
  *v4 = v3;
  v5 = *(v0 + 1880);
  *v4 = *v2;
  *(v3 + 1888) = v1;

  sub_22BBC087C();
  v7 = *(v6 + 1872);
  v8 = *(v0 + 1088);

  sub_22BB89DEC();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BC49AAC()
{
  sub_22BB2F35C();
  v1 = (v0[136] + *(*v0[136] + 112));
  v2 = v1[3];
  v3 = v1[4];
  sub_22BB69FEC(v1, v2);
  v4 = *(MEMORY[0x277D1D6E8] + 4);
  swift_task_alloc();
  sub_22BB30B34();
  v0[237] = v5;
  *v5 = v6;
  v5[1] = sub_22BC49B80;
  v7 = v0[219];
  v8 = v0[216];
  v9 = v0[133];

  return MEMORY[0x282176A68](v8, v7, v9, v2, v3);
}

uint64_t sub_22BC49B80()
{
  sub_22BB2F35C();
  sub_22BB34764();
  sub_22BB33FF4();
  *v4 = v3;
  v5 = *(v1 + 1896);
  *v4 = *v2;
  *(v3 + 1904) = v0;

  sub_22BB33218();
  v7 = *(v6 + 1088);
  sub_22BB3A3F4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BC49C94()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  v1 = *(v0 + 1728);
  v2 = *(v0 + 1704);
  v3 = *(v0 + 1696);
  v4 = *(v0 + 1688);
  sub_22BDB7C44();
  v5 = *MEMORY[0x277D1D690];
  sub_22BB72DD8();
  v6 = sub_22BBBE718();
  v7(v6);
  v8 = sub_22BB31F54();
  *(v0 + 2265) = sub_22BC1E4DC(v8, v9);

  v10 = *(v3 + 8);
  v11 = sub_22BB30AE4();
  v12(v11);
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 1912) = v13;
  *v13 = v14;
  v13[1] = sub_22BC49DA4;
  v15 = *(v0 + 1864);
  v16 = *(v0 + 1800);
  v17 = *(v0 + 1752);
  v18 = *(v0 + 1656);
  v19 = *(v0 + 1088);
  v20 = *(v0 + 1064);
  sub_22BB3478C();

  return sub_22BC4892C();
}

uint64_t sub_22BC49DA4()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = *(v1 + 1912);
  v3 = *(v1 + 1088);
  v4 = *v0;
  sub_22BB3052C();
  *v5 = v4;

  v6 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22BC49E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_22BC54114();
  a65 = v67;
  a66 = v68;
  sub_22BC54554();
  a64 = v66;
  v69 = *(v66 + 1664);
  v70 = *(v66 + 1656);
  sub_22BB2F164(v70);
  if (!v71)
  {
    v98 = *(v66 + 1856);
    v307 = *(v66 + 1848);
    v312 = *(v66 + 1864);
    v99 = *(v66 + 1816);
    v301 = *(v66 + 1808);
    v304 = *(v66 + 1840);
    v100 = *(v66 + 1768);
    v298 = *(v66 + 1760);
    v299 = *(v66 + 1800);
    v101 = *(v66 + 1752);
    v102 = *(v66 + 1744);
    v103 = *(v66 + 1736);
    v305 = *(v66 + 1680);
    v104 = *(v66 + 1672);
    v316 = *(v66 + 1048);
    (*(*(v66 + 1720) + 8))(*(v66 + 1728), *(v66 + 1712));
    v105 = *(v102 + 8);
    v106 = sub_22BB331D4();
    v107(v106);
    (*(v100 + 8))(v299, v298);
    (*(v99 + 8))(v304, v301);
    v108 = sub_22BC549C4();
    v109(v108);
    v110 = *(v104 + 32);
    v111 = sub_22BB3304C();
    v110(v111);
    v112 = *(sub_22BBE6DE0(&qword_27D8E2F98, &qword_22BDBD998) + 48);
    v113 = sub_22BB331D4();
    v110(v113);
    v114 = type metadata accessor for TypedValueResult(0);
    v117 = sub_22BB3591C(v316 + v112, v115, v116, v114);
    type metadata accessor for ActionExecutionResult(v117);
    sub_22BC54D40();
    swift_storeEnumTagMultiPayload();
    v118 = *(v66 + 1864);
    v119 = *(v66 + 1840);
    v120 = *(v66 + 1832);
    v121 = *(v66 + 1824);
    v122 = *(v66 + 1800);
    sub_22BC54240();
    v123 = *(v66 + 1752);
    v124 = *(v66 + 1728);
    sub_22BB54148();
    sub_22BB3AEE0();
    v317 = v125;

    sub_22BB360FC();
    sub_22BC53D38();

    return v127(v126, v127, v128, v129, v130, v131, v132, v133, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, v298, v299, v301, v304, v305, v307, v312, a52, v317, a54, a55, a56, a57, a58);
  }

  v72 = *(v66 + 2265);
  sub_22BB58728(v70, &qword_27D8E2F88, &qword_22BDBD990);
  if (v72 == 1)
  {
    v73 = v66 + 592;
    v74 = *(v66 + 1840);
    v75 = *(v66 + 1832);
    v76 = *(v66 + 1816);
    v77 = *(v66 + 1808);
    v78 = *(v66 + 1648);
    sub_22BDB63F4();
    v79 = *(v76 + 16);
    v80 = sub_22BB3931C();
    v81(v80);
    v82 = sub_22BDB77C4();
    v83 = sub_22BDBB134();
    v84 = sub_22BB73AEC(v83);
    v85 = *(v66 + 1832);
    v86 = *(v66 + 1816);
    v87 = *(v66 + 1808);
    v88 = *(v66 + 1648);
    v89 = *(v66 + 1552);
    v90 = *(v66 + 1544);
    if (v84)
    {
      v303 = v83;
      v91 = sub_22BB31AD8();
      v92 = sub_22BB314C8();
      a54 = v92;
      *v91 = 136315138;
      sub_22BDB8E04();
      (*(v86 + 8))(v85, v87);
      v93 = sub_22BB33728();
      v96 = sub_22BB32EE0(v93, v94, v95);

      *(v91 + 4) = v96;
      _os_log_impl(&dword_22BB2C000, v82, v303, "DefaultRuntime: Disabling OpenWhenRun for %s", v91, 0xCu);
      sub_22BB32FA4(v92);
      v97 = v92;
      v73 = v66 + 592;
      MEMORY[0x2318A6080](v97, -1, -1);
      sub_22BB3A3D8();

      (*(v89 + 8))(v88, v90);
    }

    else
    {

      (*(v86 + 8))(v85, v87);
      v135 = *(v89 + 8);
      v136 = sub_22BB33728();
      v138(v136, v137);
    }

    v139 = *(v66 + 1864);
    v140 = *(v66 + 1536);
    v141 = *(v66 + 1528);
    v142 = *(v66 + 1520);
    v143 = *(v66 + 1512);
    v144 = *(v66 + 1504);
    v145 = sub_22BDBA514();
    v146 = swift_allocBox();
    *v147 = 0;
    v148 = *MEMORY[0x277D72988];
    sub_22BB30474(v145);
    (*(v149 + 104))();
    *v141 = v146;
    v150 = *MEMORY[0x277D72A58];
    v151 = sub_22BDBA594();
    sub_22BB30ED8(v151);
    (*(v152 + 104))(v141, v150);
    (*(v142 + 104))(v141, *MEMORY[0x277D1E040], v143);
    sub_22BDB5284();
    sub_22BB30B28();
    sub_22BB336D0(v153, v154, v155, v156);
    sub_22BB331D4();
    sub_22BDB94E4();
    sub_22BDB9504();
    sub_22BC54210();
    sub_22BB331C8();
    sub_22BB336D0(v157, v158, v159, v160);
    v161 = sub_22BDB9514();
    sub_22BD80830(v140, 0x6E6568576E65704FLL, 0xEB000000006E7552);
    v161(v73, 0);
  }

  v162 = *(v66 + 1864);
  v163 = *(v66 + 1840);
  v164 = *(v66 + 1824);
  v165 = *(v66 + 1816);
  v166 = *(v66 + 1808);
  v308 = *(v66 + 1792);
  v313 = *(v66 + 1800);
  v167 = *(v66 + 1768);
  v168 = *(v66 + 1760);
  v169 = *(v66 + 1640);
  *(v66 + 1920) = sub_22BDB9524();
  sub_22BDB63F4();
  *(v66 + 1928) = *(v165 + 16);
  *(v66 + 1936) = (v165 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v170 = sub_22BB73B58();
  v171(v170);
  v172 = *(v167 + 16);
  *(v66 + 1944) = v172;
  *(v66 + 1952) = (v167 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v172(v308, v313, v168);

  v173 = sub_22BDB77C4();
  v174 = sub_22BDBB134();

  v175 = os_log_type_enabled(v173, v174);
  v176 = *(v66 + 1824);
  v177 = *(v66 + 1816);
  v178 = *(v66 + 1808);
  v179 = *(v66 + 1768);
  v306 = *(v66 + 1760);
  v309 = *(v66 + 1792);
  v180 = *(v66 + 1640);
  v181 = *(v66 + 1552);
  v314 = *(v66 + 1544);
  if (v175)
  {
    v302 = *(v66 + 1640);
    v182 = sub_22BB314C8();
    a54 = swift_slowAlloc();
    *v182 = 136315650;
    v297 = v174;
    v183 = sub_22BDB8E04();
    v185 = v184;
    v300 = *(v177 + 8);
    v186 = sub_22BB345A8();
    v187(v186);
    v188 = sub_22BB32EE0(v183, v185, &a54);

    *(v182 + 4) = v188;
    *(v182 + 12) = 2080;
    sub_22BDB9504();
    v189 = sub_22BDBAAF4();
    v191 = sub_22BB32EE0(v189, v190, &a54);

    *(v182 + 14) = v191;
    *(v182 + 22) = 2080;
    sub_22BB3A594();
    sub_22BB8E56C(v192, v193);
    sub_22BDBB684();
    v196 = *(v179 + 8);
    v195 = v179 + 8;
    v194 = v196;
    v197 = sub_22BB8E9D0();
    v196(v197);
    v198 = sub_22BB345A8();
    v201 = sub_22BB32EE0(v198, v199, v200);

    *(v182 + 24) = v201;
    _os_log_impl(&dword_22BB2C000, v173, v297, "DefaultRuntime: Running action %s with parameters - %s and statementId %s", v182, 0x20u);
    swift_arrayDestroy();
    sub_22BB35600();
    sub_22BB2F194();

    v202 = v300;
    v203 = *(v181 + 8);
    v203(v302, v314);
  }

  else
  {

    v204 = *(v179 + 8);
    v195 = v179 + 8;
    v194 = v204;
    (v204)(v309, v306);
    v202 = *(v177 + 8);
    v205 = sub_22BB345A8();
    v202(v205);
    v203 = *(v181 + 8);
    v203(v180, v314);
  }

  *(v66 + 1976) = v203;
  *(v66 + 1968) = v194;
  *(v66 + 1960) = v202;
  v206 = *(v66 + 1632);
  v207 = *(v66 + 1496);
  v208 = *(v66 + 1080);
  *(v66 + 1032) = 0;
  MEMORY[0x2318A60A0](v66 + 1032, 8);
  v209 = *(v66 + 1032);
  *(v66 + 1984) = v209;
  sub_22BDB43D4();
  sub_22BBBEE60(v208, v66 + 96, &dword_27D8E2F50, &unk_22BDBDEA0);
  sub_22BDB63F4();
  sub_22BBBEE60(v66 + 96, v66 + 136, &dword_27D8E2F50, &unk_22BDBDEA0);
  v210 = sub_22BDB77C4();
  sub_22BDBB134();
  sub_22BB3E2A4();
  if (os_log_type_enabled(v210, v211))
  {
    v212 = *(v66 + 1496);
    v213 = *(v66 + 1456);
    sub_22BB314C8();
    a54 = sub_22BB3869C();
    *v208 = 136315650;
    sub_22BB31B88();
    swift_beginAccess();
    sub_22BB371CC();
    sub_22BB8E56C(v214, v215);
    sub_22BBBE87C();
    v216 = sub_22BDBB684();
    v218 = sub_22BB32EE0(v216, v217, &a54);

    *(v208 + 4) = v218;
    *(v208 + 12) = 2048;
    *(v208 + 14) = v209;
    *(v208 + 22) = 2080;
    sub_22BBBEE60(v66 + 136, v66 + 56, &dword_27D8E2F50, &unk_22BDBDEA0);
    v310 = v203;
    if (*(v66 + 80))
    {
      v219 = *(v66 + 88);
      sub_22BB395AC((v66 + 56));
      sub_22BC54480();
      sub_22BB32FA4((v66 + 56));
    }

    else
    {
      sub_22BB58728(v66 + 56, &dword_27D8E2F50, &unk_22BDBDEA0);
      sub_22BC543C8();
    }

    v224 = *(v66 + 1632);
    v225 = *(v66 + 1552);
    v226 = *(v66 + 1544);
    sub_22BB58728(v66 + 136, &dword_27D8E2F50, &unk_22BDBDEA0);
    v227 = sub_22BB35470();
    sub_22BB32EE0(v227, v228, v229);
    sub_22BC54A6C();
    *(v208 + 24) = v195;
    _os_log_impl(&dword_22BB2C000, v210, &unk_22BDBDEA0, "DefaultRuntime: Invoking app intent with invocation request ID: %s, session ID %llu, Context: %s", v208, 0x20u);
    swift_arrayDestroy();
    sub_22BB30458();
    sub_22BB35600();

    v223 = sub_22BB313A8();
    v203 = v310;
  }

  else
  {
    v220 = *(v66 + 1632);
    v221 = *(v66 + 1552);
    v222 = *(v66 + 1544);

    sub_22BB58728(v66 + 136, &dword_27D8E2F50, &unk_22BDBDEA0);
    v223 = sub_22BB2F3F0();
  }

  (v203)(v223);
  v230 = *(v66 + 1800);
  v231 = *(v66 + 1760);
  v232 = *(v66 + 1392);
  v233 = *(v66 + 1368);
  v234 = *(v66 + 1088);
  v235 = *(*v234 + 128);
  *(v66 + 1992) = v235;
  v315 = *(v66 + 1376);
  swift_beginAccess();
  v236 = *(v234 + v235);

  *(v66 + 560) = v233;
  *(v66 + 568) = vextq_s8(v315, v315, 8uLL);
  *(v66 + 584) = v232;
  *(v66 + 2000) = type metadata accessor for ToolExecution();
  sub_22BB3A594();
  v239 = sub_22BB8E56C(v237, v238);
  *(v66 + 2008) = v239;
  sub_22BB393C4();
  sub_22BC54A60();
  sub_22BDBAB54();

  v240 = *(v66 + 968);
  *(v66 + 2016) = v240;
  if (v240)
  {
    v241 = *(v66 + 1624);
    sub_22BDB63F4();
    v242 = sub_22BDB77C4();
    v243 = sub_22BDBB134();
    if (sub_22BB333C0(v243))
    {
      v244 = sub_22BB37F30();
      sub_22BB3E4A8(v244);
      sub_22BC53D60();
      _os_log_impl(v245, v246, v247, v248, v239, 2u);
      sub_22BB32238();
    }

    v249 = *(v66 + 1624);
    v250 = *(v66 + 1552);
    v251 = *(v66 + 1544);
    v252 = *(v66 + 1496);

    v253 = sub_22BB33728();
    (v203)(v253);
    sub_22BB31B88();
    swift_beginAccess();

    sub_22BDB4374();
    sub_22BC54A30();
    *(v66 + 2024) = v254;
    v255 = swift_task_alloc();
    *(v66 + 2032) = v255;
    *v255 = v66;
    v255[1] = sub_22BC4AE3C;
    sub_22BB3487C(*(v66 + 1864));
    sub_22BB72044();
    sub_22BC53D38();

    return sub_22BC9595C(v256, v257, v258);
  }

  v260 = *(v66 + 1760);
  v261 = *(v234 + v235);

  sub_22BB72044();
  LOBYTE(v260) = MEMORY[0x2318A4B00]();

  if (v260)
  {
    goto LABEL_27;
  }

  v311 = v203;
  v269 = *(v66 + 1616);
  sub_22BDB63F4();
  v270 = sub_22BDB77C4();
  v271 = sub_22BDBB134();
  if (sub_22BB34888(v271))
  {
    v272 = sub_22BB37F30();
    *v272 = 0;
    _os_log_impl(&dword_22BB2C000, v270, v271, "DefaultRuntime: A new execution was requested while there's still an ongoing one. Cancelling current executions", v272, 2u);
    sub_22BB30458();
  }

  v273 = *(v66 + 1760);
  v274 = *(v66 + 1616);
  v275 = *(v66 + 1552);
  v276 = *(v66 + 1544);

  v277 = sub_22BB32E04();
  v311(v277);
  v278 = *(v234 + v235);

  sub_22BB500B4();
  v279 = sub_22BDBAB24();
  *(v66 + 2048) = v279;

  v280 = *(v279 + 32);
  *(v66 + 2266) = v280;
  v281 = -1;
  v282 = -1 << v280;
  if (-v282 < 64)
  {
    v281 = ~(-1 << -v282);
  }

  if ((v281 & *(v279 + 64)) == 0)
  {
    v285 = 0;
    v286 = ((63 - v282) >> 6) - 1;
    while (v286 != v285)
    {
      v283 = v285 + 1;
      if (*(*(v66 + 2048) + 8 * v285++ + 72))
      {
        goto LABEL_39;
      }
    }

    sub_22BC54AB8();
    sub_22BB500B4();
    swift_getTupleTypeMetadata2();
    sub_22BDBADB4();
    sub_22BB500B4();
    v295 = sub_22BDBAB14();
    v296 = *(v274 + v239);
    *(v274 + v239) = v295;

LABEL_27:
    v262 = *(v66 + 1496);
    v263 = *(v66 + 1488);
    sub_22BC53F10();
    sub_22BB31B88();
    swift_beginAccess();
    v264 = *(v239 + 16);
    v265 = sub_22BB52868();
    v266(v265);
    v267 = swift_task_alloc();
    *(v66 + 2088) = v267;
    *v267 = v66;
    sub_22BB75A38(v267);
    sub_22BC53D38();

    return sub_22BC2DE9C();
  }

  v283 = 0;
  v284 = *(v66 + 2048);
LABEL_39:
  sub_22BC54CCC(v283);
  v289 = *(v288 + 56);
  sub_22BB9660C(v290);

  v291 = swift_task_alloc();
  *(v66 + 2080) = v291;
  *v291 = v66;
  sub_22BC53C68(v291);
  sub_22BC53D38();

  return sub_22BC9607C(v292, v293);
}

uint64_t sub_22BC4AE3C()
{
  sub_22BB2F35C();
  sub_22BC549F4();
  sub_22BB33FF4();
  *v4 = v3;
  v5 = v0[254];
  *v4 = *v2;
  *(v3 + 2040) = v1;

  sub_22BBC087C();
  v7 = *(v6 + 2024);
  v8 = v0[252];
  v9 = v0[136];

  sub_22BB89DEC();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22BC4AF84()
{
  sub_22BB345B4();
  sub_22BB34E84();
  v2 = v0[255];
  v3 = v0[252];
  sub_22BC5418C();
  v4 = *MEMORY[0x277D72160];
  v5 = sub_22BC541BC();
  v6(v5);
  v7 = swift_task_alloc();
  LOBYTE(v2) = sub_22BB39484(v7);

  v8 = sub_22BC53B4C();
  v9(v8);
  if (v2)
  {
    sub_22BBBEE60(v0[134], (v0 + 52), &qword_27D8E2B28, &unk_22BDBD230);
  }

  else
  {
    v10 = v0[201];
    sub_22BDB63F4();
    sub_22BDB77C4();
    v11 = sub_22BDBB134();
    if (sub_22BB34888(v11))
    {
      v12 = sub_22BB37F30();
      sub_22BB3E4A8(v12);
      sub_22BB58D20();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
      sub_22BB32238();
    }

    sub_22BC54640();
    v18 = sub_22BB2F0E0();
    v1(v18);
    sub_22BC548DC();
  }

  sub_22BB3370C();
  sub_22BB37AC0();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_22BC4B0C0()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = *(v1 + 2080);
  v3 = *(v1 + 1088);
  v4 = *v0;
  sub_22BB3052C();
  *v5 = v4;

  v6 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22BC4B1B8()
{
  sub_22BB3156C();
  sub_22BB30F5C();
  v3 = *(v0 + 2072);

  v5 = *(v0 + 2064);
  if (((*(v0 + 2056) - 1) & *(v0 + 2056)) != 0)
  {
    v6 = *(v0 + 2048);
LABEL_7:
    sub_22BC54CCC(v5);
    v9 = *(v8 + 56);
    sub_22BB9660C(v10);

    v11 = swift_task_alloc();
    *(v0 + 2080) = v11;
    *v11 = v0;
    sub_22BC53C68();
    sub_22BB3478C();

    return sub_22BC9607C(v12, v13);
  }

  else
  {
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= (((1 << *(v0 + 2266)) + 63) >> 6))
      {
        break;
      }

      ++v5;
      if (*(*(v0 + 2048) + 8 * v7 + 64))
      {
        v5 = v7;
        goto LABEL_7;
      }
    }

    v15 = *(v0 + 2048);
    sub_22BC54AB8();
    sub_22BB500B4();
    swift_getTupleTypeMetadata2();
    sub_22BDBADB4();
    sub_22BB500B4();
    v16 = sub_22BDBAB14();
    v17 = *(v2 + v1);
    *(v2 + v1) = v16;

    v18 = *(v0 + 1496);
    v19 = *(v0 + 1488);
    sub_22BC53F10();
    sub_22BB31B88();
    swift_beginAccess();
    v20 = *(v1 + 16);
    v21 = sub_22BB52868();
    v22(v21);
    v23 = swift_task_alloc();
    *(v0 + 2088) = v23;
    *v23 = v0;
    sub_22BB75A38(v23);
    sub_22BB3478C();

    return sub_22BC2DE9C();
  }
}

uint64_t sub_22BC4B364()
{
  sub_22BB2F35C();
  v3 = v2;
  sub_22BB32690();
  v5 = v4;
  sub_22BB33FF4();
  *v6 = v5;
  v8 = *(v7 + 2088);
  v9 = *(v7 + 1464);
  v10 = *v1;
  sub_22BB3052C();
  *v11 = v10;
  v5[262] = v0;

  v12 = (v9 + 8);
  v5[263] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v13 = v5[240];
    v14 = v5[186];
    v15 = v5[182];
    v16 = v5[136];
    v17 = *v12;
    v5[281] = *v12;
    v17(v14, v15);

    v18 = sub_22BC4D83C;
    v19 = v16;
  }

  else
  {
    v20 = v5[186];
    v21 = v5[182];
    v22 = v5[136];
    v5[264] = v3;
    (*v12)(v20, v21);
    v18 = sub_22BC4B4E4;
    v19 = v22;
  }

  return MEMORY[0x2822009F8](v18, v19, 0);
}

uint64_t sub_22BC4B4E4()
{
  sub_22BB345B4();
  sub_22BB34E84();
  v1 = v0[264];
  v2 = v0[251];
  v3 = v0[250];
  v4 = v0[249];
  sub_22BC548CC();
  v5 = v0[223];
  v6 = v0[220];
  v7 = v0[136];
  v8 = sub_22BC544A4();
  v9(v8);
  v0[122] = v1;
  sub_22BB3B574();
  sub_22BC54A60();
  sub_22BDBAB44();
  sub_22BB2F1B0();

  sub_22BDBAB64();
  swift_endAccess();
  v10 = v0[264];
  v11 = v0[262];
  sub_22BC5418C();
  v12 = *MEMORY[0x277D72160];
  v13 = sub_22BC541BC();
  v14(v13);
  v15 = swift_task_alloc();
  LOBYTE(v11) = sub_22BB39484(v15);

  v16 = sub_22BC53B4C();
  v17(v16);
  if (v11)
  {
    sub_22BBBEE60(v0[134], (v0 + 52), &qword_27D8E2B28, &unk_22BDBD230);
  }

  else
  {
    v18 = v0[201];
    sub_22BDB63F4();
    sub_22BDB77C4();
    v19 = sub_22BDBB134();
    if (sub_22BB34888(v19))
    {
      v20 = sub_22BB37F30();
      sub_22BB3E4A8(v20);
      sub_22BB58D20();
      _os_log_impl(v21, v22, v23, v24, v25, 2u);
      sub_22BB32238();
    }

    sub_22BC54640();
    v26 = sub_22BB2F0E0();
    v6(v26);
    sub_22BC548DC();
  }

  sub_22BB3370C();
  sub_22BB37AC0();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

uint64_t sub_22BC4B68C()
{
  v1 = v0[136];
  v0[266] = *(v0[265] + *(*v0[265] + 192));
  return sub_22BB361CC(sub_22BC4B6C4, v1);
}

uint64_t sub_22BC4B6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_22BB31550();
  a21 = v23;
  a22 = v24;
  sub_22BB8DC94();
  a20 = v22;
  v25 = v22[200];
  v26 = v22[187];
  sub_22BBBEE60(v22[135], (v22 + 57), &dword_27D8E2F50, &unk_22BDBDEA0);
  sub_22BB31B88();
  swift_beginAccess();
  sub_22BC54F58((v22 + 57));
  sub_22BB7592C();
  sub_22BB58728(v27, v28, v29);
  sub_22BDB63F4();
  v30 = sub_22BDB77C4();
  v31 = sub_22BDBB134();
  v32 = os_log_type_enabled(v30, v31);
  v33 = v22[247];
  v34 = v22[200];
  v35 = v22[194];
  v36 = v22[193];
  if (v32)
  {
    v81 = v22[247];
    v37 = v22[187];
    v38 = sub_22BB31AD8();
    v39 = sub_22BB314C8();
    a11 = v39;
    *v38 = 136315138;
    v40 = sub_22BDB4374();
    v42 = sub_22BB32EE0(v40, v41, &a11);

    *(v38 + 4) = v42;
    sub_22BC54ADC(&dword_22BB2C000, v43, v31, "DefaultRuntime: Replacing original ExecutorSELFContext contextId with appIntentTurnId = %s");
    sub_22BB32FA4(v39);
    sub_22BB3A3D8();
    sub_22BB2F194();

    v44 = sub_22BB2F0E0();
    v81(v44);
  }

  else
  {

    v45 = sub_22BB2F0E0();
    v33(v45);
  }

  v46 = v22[135];
  if (*(v46 + 24))
  {
    v47 = v22[187];
    v48 = *(v46 + 32);
    v49 = sub_22BB30AE4();
    sub_22BB8D7AC(v49, v50);
    v51 = *(v48 + 72);
    sub_22BB7592C();
    v52();
    v53 = *(v46 + 24);
    if (v53)
    {
      v54 = v22[266];
      sub_22BBBD26C();
      sub_22BB69FEC(v22[135], v53);
      sub_22BB30418();
      v56 = v55;
      v58 = *(v57 + 64);
      v59 = sub_22BB30ACC();
      sub_22BC54498();
      sub_22BC53CBC();
      v60();
      sub_22BB690EC(v59, (v22 + 22));
      v61 = *(v56 + 8);
      v62 = sub_22BB58D2C();
      v63(v62);
      v64 = v22[25];
      v65 = v22[26];
      sub_22BB6FD20(v22 + 22);
      v66 = *(v65 + 24);
      v67 = sub_22BB31F54();
      v68(v67);
      v69 = sub_22BB30C3C();
      v70(v69);
      sub_22BB32FA4(v22 + 22);
    }
  }

  swift_task_alloc();
  sub_22BB30B34();
  v22[267] = v71;
  *v71 = v72;
  v71[1] = sub_22BC4B9C4;
  v73 = v22[265];
  v74 = v22[180];
  sub_22BB31B88();
  sub_22BB31534();

  return sub_22BC93528(v75, v76, v77, v78);
}

uint64_t sub_22BC4B9C4()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB33FF4();
  *v4 = v3;
  v6 = *(v5 + 2136);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  v3[268] = v0;

  if (v0)
  {
    v9 = v3[240];
    v10 = v3[136];

    v11 = &sub_22BC4DB24;
    v12 = v10;
  }

  else
  {
    v12 = v3[136];
    v11 = sub_22BC4BAD4;
  }

  return MEMORY[0x2822009F8](v11, v12, 0);
}

uint64_t sub_22BC4BAD4()
{
  sub_22BB345B4();
  sub_22BB34E84();
  v1 = v0[135];
  (*(v0[176] + 32))(v0[181], v0[180], v0[175]);
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = v0[167];
    v4 = v0[166];
    v5 = v0[165];
    v6 = sub_22BB69FEC(v0[135], v2);
    sub_22BB30418();
    v8 = v7;
    v10 = *(v9 + 64);
    v11 = sub_22BB30ACC();
    (*(v8 + 16))(v11, v6, v2);
    sub_22BB690EC(v11, (v0 + 27));
    (*(v8 + 8))(v11, v2);
    v12 = v0[31];
    sub_22BB69FEC(v0 + 27, v0[30]);
    sub_22BDB7604();
    v13 = *(v12 + 32);
    v14 = sub_22BB33728();
    v15(v14);
    v16 = *(v4 + 8);
    v17 = sub_22BB30AE4();
    v18(v17);
    sub_22BB32FA4(v0 + 27);
  }

  v19 = v0[265];
  sub_22BB37AC0();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_22BC4BC60()
{
  v1 = *(v0 + 1088);
  *(v0 + 2267) = *(*(v0 + 2120) + qword_28142F460);
  return sub_22BB361CC(sub_22BC4BC90, v1);
}

uint64_t sub_22BC4BC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_22BB34E78();
  v16 = *(v15 + 1448);
  v17 = *(v15 + 1432);
  v18 = *(v15 + 1400);
  v19 = *(*(v15 + 1408) + 16);
  v20 = sub_22BB3E460();
  v99 = v21;
  (v19)(v20);
  sub_22BB2F324();
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v95 = *(v15 + 2000);
    v97 = *(v15 + 2008);
    v91 = *(v15 + 1952);
    v93 = *(v15 + 1992);
    v89 = *(v15 + 1800);
    v90 = *(v15 + 1944);
    v22 = *(v15 + 1784);
    v23 = *(v15 + 1760);
    v24 = *(v15 + 1432);
    v25 = *(v15 + 1376);
    v26 = *(v15 + 1368);
    v27 = *(v15 + 1088);
    v28 = type metadata accessor for TypedValueExecutionResult();
    sub_22BBEB2E0(&qword_27D8E2530, &qword_22BDBCBF0);
    v29 = sub_22BB92810();
    sub_22BBEB2E0(v29, v30);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v32 = *(TupleTypeMetadata3 + 48);
    sub_22BB58728(v24 + *(TupleTypeMetadata3 + 64), &qword_27D8E2B40, &unk_22BDBD9B0);
    sub_22BB58728(v24 + v32, &qword_27D8E2530, &qword_22BDBCBF0);
    sub_22BB30474(v28);
    v34 = *(v33 + 8);
    v35 = sub_22BB35464();
    v36(v35);
    v90(v22, v89, v23);
    *(v15 + 952) = 0;
    sub_22BB3B574();
    sub_22BC54A54();
    sub_22BDBAB44();
    sub_22BDBAB64();
    swift_endAccess();
    sub_22BB58728(v15 + 416, &qword_27D8E2B28, &unk_22BDBD230);
  }

  else
  {
    v37 = *(v15 + 1432);
    v38 = *(v15 + 1408);
    v39 = *(v15 + 1400);
    sub_22BB58728(v15 + 416, &qword_27D8E2B28, &unk_22BDBD230);
    v40 = *(v38 + 8);
    v41 = sub_22BB2F324();
    v42(v41);
  }

  v43 = *(v15 + 1592);
  v44 = *(v15 + 1448);
  v45 = *(v15 + 1424);
  v46 = *(v15 + 1400);
  sub_22BDB63F4();
  v47 = sub_22BB73B58();
  v48 = v99;
  (v19)(v47);
  v49 = sub_22BDB77C4();
  sub_22BDBB104();
  sub_22BB379BC();
  v51 = os_log_type_enabled(v49, v50);
  v52 = *(v15 + 1976);
  v98 = *(v15 + 1552);
  v53 = *(v15 + 1424);
  if (v51)
  {
    v94 = *(v15 + 1544);
    v96 = *(v15 + 1592);
    v54 = *(v15 + 1416);
    v55 = *(v15 + 1408);
    v56 = *(v15 + 1400);
    sub_22BB31AD8();
    v92 = v52;
    v57 = sub_22BB8B6BC();
    v101 = v57;
    *v19 = 136315138;
    v58 = sub_22BB35470();
    (v19)(v58);
    sub_22BB2F12C();
    sub_22BDBAC14();
    v59 = sub_22BC53CA4();
    v60 = (v99)(v59);
    sub_22BC54F28(v60, v61, &v101);
    sub_22BC54AA0();
    *(v19 + 4) = v53;
    sub_22BC53E7C(&dword_22BB2C000, "Returning actionResult: %s", v43);
    sub_22BB32FA4(v57);
    sub_22BB2F194();
    sub_22BB30458();

    v92(v96, v94);
  }

  else
  {
    v62 = *(v15 + 1408);
    v63 = *(v15 + 1400);

    v48 = *(v62 + 8);
    v64 = sub_22BB36F68();
    v48(v64);
    v65 = sub_22BB2F12C();
    (v52)(v65);
  }

  *(v15 + 2152) = v48;
  v66 = *(v15 + 1864);
  v67 = *(v15 + 1776);
  v68 = *(v15 + 1064);
  *(v15 + 936) = sub_22BDB9744();
  sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
  sub_22BB52D90(&qword_281428810);
  *(v15 + 2160) = sub_22BDB90C4();

  sub_22BDB8174();
  swift_task_alloc();
  sub_22BB30B34();
  *(v15 + 2168) = v69;
  *v69 = v70;
  v69[1] = sub_22BC4C0E8;
  v71 = *(v15 + 2267);
  v72 = *(v15 + 1920);
  v73 = *(v15 + 2265);
  v74 = *(v15 + 1752);
  v75 = *(v15 + 1448);
  v76 = *(v15 + 1088);
  v77 = *(v15 + 1064);
  v78 = *(v15 + 1048);
  v100 = *(v15 + 1776);
  sub_22BB35ED4();

  return sub_22BC1F9AC(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_22BC4C0E8()
{
  sub_22BB2F35C();
  sub_22BB32690();
  v4 = v3;
  sub_22BB33FF4();
  *v5 = v4;
  v7 = *(v6 + 2168);
  v8 = *v1;
  sub_22BB3052C();
  *v9 = v8;
  v4[272] = v0;

  v10 = sub_22BB97E64();
  if (v0)
  {
    v4[282] = v12;
    v11(v10);

    v13 = sub_22BC4F558;
  }

  else
  {
    v4[273] = v12;
    v11(v10);

    v13 = sub_22BC4C234;
  }

  return MEMORY[0x2822009F8](v13, v2, 0);
}

void sub_22BC4C234()
{
  v27 = v0[269];
  v1 = v0[265];
  v46 = v0[273];
  v48 = v0[245];
  v2 = v0[232];
  v50 = v0[231];
  v52 = v0[233];
  v38 = v0[230];
  v40 = v0[246];
  sub_22BBC77EC();
  v37 = v3;
  v33 = v0[220];
  v35 = v0[225];
  v4 = v0[218];
  v29 = v0[217];
  v31 = v0[219];
  v5 = v0[216];
  v6 = v0[215];
  v7 = v0[214];
  v8 = v0[183];
  v42 = v0[182];
  v44 = v0[187];
  v9 = v0[181];
  v10 = v0[176];
  v11 = v0[175];

  v12 = sub_22BB2F0E0();
  v27(v12);
  sub_22BB58728((v0 + 12), &dword_27D8E2F50, &unk_22BDBDEA0);
  v13 = *(v6 + 8);
  v14 = sub_22BB2F324();
  v15(v14);
  (*(v4 + 8))(v31, v29);
  v40(v35, v33);
  v48(v38, v37);
  (*(v2 + 8))(v52, v50);
  (*(v8 + 8))(v44, v42);
  v16 = v0[233];
  v17 = v0[230];
  v18 = v0[229];
  v19 = v0[228];
  v20 = v0[225];
  sub_22BC54240();
  v21 = v0[219];
  v22 = v0[216];
  sub_22BB54148();
  v25 = v0[177];
  v26 = v0[170];
  v28 = v0[167];
  v30 = v0[164];
  v32 = v0[161];
  v34 = v0[160];
  v36 = v0[159];
  sub_22BB6970C();
  v39 = v0[154];
  v41 = v0[151];
  v43 = v0[150];
  v45 = v0[149];
  v47 = v0[146];
  v49 = v0[145];
  v51 = v0[142];
  v53 = v0[139];

  sub_22BB360FC();
  sub_22BC54DBC();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22BC4C5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  sub_22BC54114();
  sub_22BC54554();
  v59 = v58[233];
  v60 = v58[232];
  v61 = v58[231];
  v62 = v58[230];
  v63 = v58[227];
  v64 = v58[226];
  (*(v58[221] + 8))(v58[225], v58[220]);
  v65 = *(v63 + 8);
  v66 = sub_22BB2F0E0();
  v67(v66);
  v68 = *(v60 + 8);
  v69 = sub_22BB2F324();
  v70(v69);
  v80 = v58[236];
  sub_22BB37F98();
  sub_22BB58954();

  sub_22BB3ACAC();
  sub_22BC53D38();

  return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, v80, a55, a56, a57, a58);
}

uint64_t sub_22BC4C85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  sub_22BC54114();
  sub_22BC54554();
  v59 = v58[233];
  v60 = v58[232];
  v61 = v58[231];
  v62 = v58[230];
  v63 = v58[227];
  v64 = v58[226];
  v65 = v58[225];
  v66 = v58[221];
  v67 = v58[220];
  (*(v58[218] + 8))(v58[219], v58[217]);
  v68 = *(v66 + 8);
  v69 = sub_22BB32E04();
  v70(v69);
  v71 = *(v63 + 8);
  v72 = sub_22BB2F0E0();
  v73(v72);
  v74 = *(v60 + 8);
  v75 = sub_22BB2F324();
  v76(v75);
  v86 = v58[238];
  sub_22BB37F98();
  sub_22BB58954();

  sub_22BB3ACAC();
  sub_22BC53D38();

  return v78(v77, v78, v79, v80, v81, v82, v83, v84, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, v86, a55, a56, a57, a58);
}

uint64_t sub_22BC4CAE0()
{
  v1 = *(v0 + 2040);
  *(v0 + 992) = v1;
  v2 = v1;
  sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
  if (!swift_dynamicCast() || *(v0 + 2264))
  {
    v3 = *(v0 + 2016);
    v4 = *(v0 + 1920);
    v74 = *(v0 + 1864);
    v5 = *(v0 + 1856);
    v70 = *(v0 + 1960);
    v72 = *(v0 + 1848);
    v62 = *(v0 + 1840);
    v64 = *(v0 + 1968);
    sub_22BBC77EC();
    v60 = v6;
    v53 = *(v0 + 1768);
    v55 = *(v0 + 1760);
    v57 = *(v0 + 1800);
    v7 = *(v0 + 1752);
    v8 = *(v0 + 1744);
    v9 = *(v0 + 1736);
    v10 = *(v0 + 1728);
    v11 = *(v0 + 1720);
    v12 = *(v0 + 1712);
    v13 = *(v0 + 1464);
    v66 = *(v0 + 1456);
    v68 = *(v0 + 1496);

    sub_22BB58728(v0 + 96, &dword_27D8E2F50, &unk_22BDBDEA0);
    v14 = *(v11 + 8);
    v15 = sub_22BB2F0E0();
    v16(v15);
    v17 = *(v8 + 8);
    v18 = sub_22BB2F324();
    v19(v18);
    v64(v57, v55);
    v70(v62, v60);
    (*(v5 + 8))(v74, v72);

    (*(v13 + 8))(v68, v66);
    v75 = *(v0 + 2040);
    sub_22BB37F98();
    sub_22BB70390();
    v49 = *(v0 + 1336);
    v50 = *(v0 + 1312);
    v51 = *(v0 + 1288);
    v52 = *(v0 + 1280);
    v54 = *(v0 + 1272);
    v56 = *(v0 + 1248);
    v58 = *(v0 + 1240);
    v59 = *(v0 + 1232);
    v61 = *(v0 + 1208);
    v63 = *(v0 + 1200);
    v65 = *(v0 + 1192);
    v67 = *(v0 + 1168);
    v69 = *(v0 + 1160);
    v71 = *(v0 + 1136);
    v73 = *(v0 + 1112);

    sub_22BB3ACAC();
    sub_22BC54DBC();

    __asm { BRAA            X1, X16 }
  }

  v22 = *(v0 + 1584);

  sub_22BDB63F4();
  v23 = sub_22BDB77C4();
  v24 = sub_22BDBB134();
  if (sub_22BB333C0(v24))
  {
    v25 = sub_22BB37F30();
    sub_22BB360F0(v25);
    sub_22BB379D4();
    _os_log_impl(v26, v27, v28, v29, v30, 2u);
    sub_22BB35600();
  }

  v76 = *(v0 + 2016);
  v31 = *(v0 + 1976);
  v32 = *(v0 + 1584);
  v33 = *(v0 + 1552);
  v34 = *(v0 + 1544);
  v35 = *(v0 + 1496);
  v36 = *(v0 + 1480);
  v37 = *(v0 + 1464);
  v38 = *(v0 + 1456);

  v39 = sub_22BB2F0E0();
  v31(v39);
  sub_22BDB43D4();
  swift_beginAccess();
  v40 = *(v37 + 40);
  v41 = sub_22BB32E04();
  v42(v41);
  sub_22BDB4374();
  *(v0 + 2192) = v43;
  v44 = swift_task_alloc();
  *(v0 + 2200) = v44;
  *v44 = v0;
  v44[1] = sub_22BC4D00C;
  sub_22BB2F3F0();
  sub_22BC54DBC();

  return sub_22BC9607C(v45, v46);
}

uint64_t sub_22BC4D00C()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v2 = v1[275];
  v3 = v1[274];
  v4 = v1[136];
  v5 = *v0;
  sub_22BB3052C();
  *v6 = v5;

  return MEMORY[0x2822009F8](sub_22BC4D128, v4, 0);
}

uint64_t sub_22BC4D128()
{
  sub_22BB2F0D4();
  (*(v0[183] + 16))(v0[184], v0[187], v0[182]);
  v1 = swift_task_alloc();
  v0[276] = v1;
  *v1 = v0;
  v1[1] = sub_22BC4D1E8;
  v2 = v0[248];
  v3 = v0[219];
  v4 = v0[184];
  v5 = v0[136];
  v6 = v0[133];
  sub_22BB3487C(v0[233]);

  return sub_22BC2DE9C();
}

uint64_t sub_22BC4D1E8()
{
  sub_22BB2F35C();
  v3 = v2;
  sub_22BB32690();
  v5 = v4;
  sub_22BB33FF4();
  *v6 = v5;
  v8 = *(v7 + 2208);
  v9 = *(v7 + 1464);
  v10 = *v1;
  sub_22BB3052C();
  *v11 = v10;
  v5[277] = v0;

  v12 = (v9 + 8);
  v5[278] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v13 = v5[240];
    v14 = v5[184];
    v15 = v5[182];
    v16 = v5[136];
    v17 = *v12;
    v5[280] = *v12;
    v17(v14, v15);

    v18 = sub_22BC4D544;
    v19 = v16;
  }

  else
  {
    v20 = v5[184];
    v21 = v5[182];
    v22 = v5[136];
    v5[279] = v3;
    (*v12)(v20, v21);
    v18 = sub_22BC4D368;
    v19 = v22;
  }

  return MEMORY[0x2822009F8](v18, v19, 0);
}