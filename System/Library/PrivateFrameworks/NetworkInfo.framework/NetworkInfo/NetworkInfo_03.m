uint64_t sub_25B8C13D0()
{
  v111 = v0;
  v110 = *MEMORY[0x277D85DE8];
  v94 = v0[385];
  v1 = v0[382];
  v91 = v0[381];
  v92 = v0[380];
  v2 = v0[309];
  v82 = v0[307];
  v84 = v0[306];
  v85 = v0[302];
  v89 = v0[301];
  v87 = v0[300];
  v86 = v0[299];
  v90 = v0[298];
  v83 = v0[293];
  v0[220] = v0;
  MEMORY[0x277D82BD8](v1);
  v3 = v94;
  v0[241] = v94;
  (*(v82 + 16))(v2, v83 + OBJC_IVAR___NetworkInfoAssessment_logger, v84);
  (*(v86 + 16))(v89, v85, v90);
  v88 = (*(v86 + 80) + 16) & ~*(v86 + 80);
  v93 = swift_allocObject();
  v92(v93 + v88, v89, v90);

  v95 = swift_allocObject();
  *(v95 + 16) = sub_25B8D0888;
  *(v95 + 24) = v93;

  v4 = v94;
  v97 = swift_allocObject();
  *(v97 + 16) = v94;
  sub_25B8A1C38();

  v107 = sub_25B946C18();
  v108 = sub_25B947458();
  v100 = swift_allocObject();
  *(v100 + 16) = 32;
  v101 = swift_allocObject();
  *(v101 + 16) = 8;
  v96 = swift_allocObject();
  *(v96 + 16) = sub_25B8D093C;
  *(v96 + 24) = v95;
  v102 = swift_allocObject();
  *(v102 + 16) = sub_25B88B668;
  *(v102 + 24) = v96;
  v103 = swift_allocObject();
  *(v103 + 16) = 64;
  v104 = swift_allocObject();
  *(v104 + 16) = 8;
  v98 = swift_allocObject();
  *(v98 + 16) = sub_25B8A3B24;
  *(v98 + 24) = v97;
  v99 = swift_allocObject();
  *(v99 + 16) = sub_25B8A3C9C;
  *(v99 + 24) = v98;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_25B8A3CE8;
  *(v105 + 24) = v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
  sub_25B947838();
  v106 = v5;

  *v106 = sub_25B88B5F4;
  v106[1] = v100;

  v106[2] = sub_25B88B5F4;
  v106[3] = v101;

  v106[4] = sub_25B88B6B4;
  v106[5] = v102;

  v106[6] = sub_25B88B5F4;
  v106[7] = v103;

  v106[8] = sub_25B88B5F4;
  v106[9] = v104;

  v106[10] = sub_25B8A3EB8;
  v106[11] = v105;
  sub_25B8860FC();

  if (os_log_type_enabled(v107, v108))
  {
    buf = sub_25B9474D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v44 = sub_25B8895FC(1);
    v45 = sub_25B8895FC(1);
    *(v81 + 1960) = buf;
    *(v81 + 1968) = v44;
    *(v81 + 1976) = v45;
    sub_25B889650(2, (v81 + 1960));
    sub_25B889650(2, (v81 + 1960));
    *(v81 + 1328) = sub_25B88B5F4;
    *(v81 + 1336) = v100;
    sub_25B889664(v81 + 1328, v81 + 1960, v81 + 1968, v81 + 1976);
    *(v81 + 1328) = sub_25B88B5F4;
    *(v81 + 1336) = v101;
    sub_25B889664(v81 + 1328, v81 + 1960, v81 + 1968, v81 + 1976);
    *(v81 + 1328) = sub_25B88B6B4;
    *(v81 + 1336) = v102;
    sub_25B889664(v81 + 1328, v81 + 1960, v81 + 1968, v81 + 1976);
    *(v81 + 1328) = sub_25B88B5F4;
    *(v81 + 1336) = v103;
    sub_25B889664(v81 + 1328, v81 + 1960, v81 + 1968, v81 + 1976);
    *(v81 + 1328) = sub_25B88B5F4;
    *(v81 + 1336) = v104;
    sub_25B889664(v81 + 1328, v81 + 1960, v81 + 1968, v81 + 1976);
    *(v81 + 1328) = sub_25B8A3EB8;
    *(v81 + 1336) = v105;
    sub_25B889664(v81 + 1328, v81 + 1960, v81 + 1968, v81 + 1976);
    _os_log_impl(&dword_25B859000, v107, v108, "Error retrieving %s: %@", buf, 0x16u);
    sub_25B8896B0(v44);
    sub_25B8896B0(v45);
    sub_25B9474B8();
  }

  v38 = *(v81 + 3080);
  v35 = *(v81 + 2576);
  v32 = *(v81 + 2472);
  v33 = *(v81 + 2448);
  v34 = *(v81 + 2416);
  v31 = *(v81 + 2456);
  MEMORY[0x277D82BD8](v107);
  (*(v31 + 8))(v32, v33);
  type metadata accessor for NetworkInfoURLRetrievalResult();
  v37 = NetworkInfoURLRetrievalResult.__allocating_init()();
  *(v81 + 1936) = v37;
  v23 = sub_25B946B18();
  sub_25B8E3D54(v23, v24);
  swift_getErrorValue();
  v25 = *(v81 + 1120);
  v26 = *(v81 + 1128);
  v27 = *(v81 + 1136);
  v28 = sub_25B9478F8();
  sub_25B8E41D8(v28, v29);
  MEMORY[0x277D82BE0](v37);
  *(v81 + 1952) = v37;
  v36 = sub_25B8DD7B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB030, &unk_25B94A9C0);
  sub_25B947208();
  v36();
  MEMORY[0x277D82BD8](v37);

  (*(*(v81 + 2392) + 8))(*(v81 + 2416), *(v81 + 2384));
  v41 = *(v81 + 2896);
  v42 = *(v81 + 2888);
  v30 = *(v81 + 2880);
  v39 = *(v81 + 2432);
  v40 = *(v81 + 2384);
  sub_25B9475E8();
  if (v42(v39, 1, v40) == 1)
  {
    v78 = *(v81 + 2376);
    sub_25B86CFA0((v81 + 1296));
    sub_25B946CA8();
    sub_25B946F48();
    sub_25B946C68();
    v79 = sub_25B946C58();
    v77 = *(v81 + 2368);
    v14 = *(v81 + 2344);
    *(v81 + 1888) = v79;
    v73 = sub_25B8A93FC();
    sub_25B8F9B00();
    sub_25B947228();
    v74 = *(v81 + 1312);
    v75 = *(v81 + 1320);
    MEMORY[0x277D82BD8](v73);
    TracerouteRequest.init(hostname:)(v74, v75, v109);

    v76 = v109[0];
    *(v81 + 1896) = v109[0];

    sub_25B86897C(2.0);

    sub_25B868B8C(2);

    sub_25B869894(1);

    *(v81 + 1904) = v76;
    sub_25B8D06CC();
    sub_25B946C98();
    v15 = *(v81 + 2368);
    sub_25B8D0744();
    sub_25B946CB8();
    v72 = *(v81 + 1912);
    if (v72)
    {
      v16 = *(v81 + 2576);
      *(v81 + 1920) = v72;
      sub_25B946ED8();
      sub_25B8DD970(v72);
    }

    v70 = *(v81 + 2368);
    v71 = *(v81 + 2352);
    v69 = *(v81 + 2360);
    sub_25B946F48();
    sub_25B946C88();

    (*(v69 + 8))(v70, v71);

    v17 = *(v81 + 2344);
    v67 = sub_25B8A93FC();
    v68 = sub_25B8FA848();
    MEMORY[0x277D82BD8](v67);
    if ((v68 & 1) == 0)
    {
      v18 = *(v81 + 2344);
      sub_25B8A90D4();
      sub_25B90BE08();
    }

    v47 = *(v81 + 2712);
    v46 = *(v81 + 2576);
    MEMORY[0x277D82BD8](*(v81 + 2952));

    sub_25B8A7238((v81 + 1808));
    sub_25B86AEEC(v81 + 1168);
    v19 = *(v81 + 2824);
    v48 = *(v81 + 2552);
    v49 = *(v81 + 2544);
    v50 = *(v81 + 2536);
    v51 = *(v81 + 2528);
    v52 = *(v81 + 2520);
    v53 = *(v81 + 2512);
    v54 = *(v81 + 2504);
    v55 = *(v81 + 2496);
    v56 = *(v81 + 2488);
    v57 = *(v81 + 2480);
    v58 = *(v81 + 2472);
    v59 = *(v81 + 2464);
    v60 = *(v81 + 2440);
    v61 = *(v81 + 2432);
    v62 = *(v81 + 2424);
    v63 = *(v81 + 2416);
    v64 = *(v81 + 2408);
    v65 = *(v81 + 2376);
    v66 = *(v81 + 2368);
    sub_25B8D0430(*(v81 + 2816));

    v20 = *MEMORY[0x277D85DE8] - v110;
    v21 = *(*(v81 + 1760) + 8);
    v22 = *(v81 + 1760);

    return v21(v46);
  }

  else
  {
    v6 = *(v81 + 2432);
    v7 = *(v81 + 2416);
    v8 = *(v81 + 2384);
    v9 = *(v81 + 2392) + 32;
    v10 = *v9;
    *(v81 + 3040) = *v9;
    *(v81 + 3048) = v9 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v10(v7, v6, v8);
    type metadata accessor for HTTP();
    *(v81 + 3056) = HTTP.__allocating_init()();
    v80 = swift_task_alloc();
    *(v81 + 3064) = v80;
    *v80 = *(v81 + 1760);
    v80[1] = sub_25B8B8928;
    v11 = __OFSUB__(*MEMORY[0x277D85DE8], v110);
    v12 = *(v81 + 2416);

    return sub_25B93C328(v12);
  }
}

uint64_t sub_25B8C3318()
{
  v0 = sub_25B8A9270();
  v2 = *v0;
  v3 = v0[1];
  sub_25B946ED8();
  return v2;
}

uint64_t sub_25B8C3354(uint64_t a1, char a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a3);
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v9[0] = a2;
  MEMORY[0x277D82BE0](a3);
  v10 = sub_25B9471C8();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAB0F0, &qword_25B94AF68);
  sub_25B8A57DC(v7, v9, v3);
  MEMORY[0x277D82BD8](a3);
  return MEMORY[0x277D82BD8](a3);
}

uint64_t sub_25B8C3444@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_25B8C3570(const void *a1, uint64_t a2)
{
  v2[3] = a2;
  v2[2] = v2;
  v2[4] = _Block_copy(a1);
  MEMORY[0x277D82BE0](a2);
  v4 = swift_task_alloc();
  *(v6 + 40) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_25B8C363C;

  return sub_25B8A9A14();
}

uint64_t sub_25B8C363C(void *a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  *(v3 + 16) = *v2;
  v12 = v3 + 16;
  v13 = v3 + 16;

  if (v1)
  {
    v8 = *(v12 + 16);
    v7 = sub_25B946AF8();
    v8[2](v8, 0);

    _Block_release(v8);
  }

  else
  {
    aBlock = *(v12 + 16);
    aBlock[2]();
    _Block_release(aBlock);
  }

  v5 = *(*v13 + 8);

  return v5();
}

uint64_t sub_25B8C3808()
{
  v1[26] = v0;
  v1[12] = v1;
  v1[13] = 0;
  v1[14] = 0;
  v1[15] = 0;
  v1[16] = 0;
  v1[17] = 0;
  v1[6] = 0;
  v1[7] = 0;
  v1[10] = 0;
  v1[11] = 0;
  v5 = *(*(type metadata accessor for SCUtil() - 8) + 64);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v2 = sub_25B946C48();
  v1[34] = v2;
  v6 = *(v2 - 8);
  v1[35] = v6;
  v7 = *(v6 + 64);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[13] = v0;
  v3 = v1[12];

  return MEMORY[0x2822009F8](sub_25B8C3A0C, 0);
}

uint64_t sub_25B8C3A0C()
{
  v1 = v0[39];
  v2 = v0[35];
  v3 = v0[34];
  v4 = v0[26];
  v0[12] = v0;
  v5 = OBJC_IVAR___NetworkInfoAssessment_logger;
  v6 = v2 + 16;
  v7 = *(v2 + 16);
  v0[40] = v7;
  v0[41] = v6 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4 + v5, v3);
  v24 = sub_25B946C18();
  v23 = sub_25B947448();
  v0[42] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
  v25 = sub_25B947838();
  if (os_log_type_enabled(v24, v23))
  {
    buf = sub_25B9474D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v19 = sub_25B8895FC(0);
    v20 = sub_25B8895FC(0);
    *(v22 + 176) = buf;
    *(v22 + 184) = v19;
    *(v22 + 192) = v20;
    sub_25B889650(0, (v22 + 176));
    sub_25B889650(0, (v22 + 176));
    *(v22 + 200) = v25;
    v21 = swift_task_alloc();
    v21[2] = v22 + 176;
    v21[3] = v22 + 184;
    v21[4] = v22 + 192;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
    sub_25B8A3F58();
    sub_25B947158();

    _os_log_impl(&dword_25B859000, v24, v23, "capturing current system configuration", buf, 2u);
    sub_25B8896B0(v19);
    sub_25B8896B0(v20);
    sub_25B9474B8();
  }

  v14 = *(v22 + 312);
  v15 = *(v22 + 272);
  v17 = *(v22 + 264);
  v16 = *(v22 + 208);
  v13 = *(v22 + 280);
  MEMORY[0x277D82BD8](v24);
  v8 = *(v13 + 8);
  *(v22 + 344) = v8;
  *(v22 + 352) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v14, v15);
  type metadata accessor for NetworkInfoSystemConfiguration();
  v9 = NetworkInfoSystemConfiguration.__allocating_init()();
  *(v22 + 360) = v9;
  *(v22 + 112) = v9;
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  sub_25B8A8DB4(v17);
  v10 = swift_task_alloc();
  *(v22 + 368) = v10;
  *v10 = *(v22 + 96);
  v10[1] = sub_25B8C3E1C;
  v11 = *(v22 + 264);

  return SCUtil.getIPv6Gateway()(v22 + 536);
}

uint64_t sub_25B8C3E1C()
{
  v7 = *v1;
  v2 = *(*v1 + 368);
  v7[12] = *v1;
  v8 = v7 + 12;
  v7[47] = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_25B8C5A4C;
  }

  else
  {
    sub_25B8CEEA8(v7[33]);
    v3 = *v8;
    v4 = sub_25B8C3F98;
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t sub_25B8C3F98()
{
  v12 = v0;
  v1 = *(v0 + 360);
  v8 = *(v0 + 256);
  v7 = *(v0 + 208);
  *(v0 + 96) = v0;
  v2 = *(v0 + 544);
  v3 = *(v0 + 552);
  v10[0] = *(v0 + 536);
  v10[1] = v2;
  v11 = v3 & 1;
  sub_25B8A5C60(v10);
  sub_25B8A8DB4(v8);
  v4 = swift_task_alloc();
  v9[48] = v4;
  *v4 = v9[12];
  v4[1] = sub_25B8C4098;
  v5 = v9[32];

  return sub_25B8FEBD0();
}

uint64_t sub_25B8C4098(uint64_t a1, uint64_t a2)
{
  v10 = *v3;
  v5 = *(*v3 + 384);
  v10[12] = *v3;
  v11 = v10 + 12;
  v10[49] = v2;
  v10[50] = a1;
  v10[51] = a2;

  if (v2)
  {
    v8 = *v11;
    v7 = sub_25B8C611C;
  }

  else
  {
    sub_25B8CEEA8(v10[32]);
    v6 = *v11;
    v7 = sub_25B8C4220;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_25B8C4220()
{
  v1 = *(v0 + 408);
  *(v0 + 96) = v0;
  if (v1)
  {
    v11 = v12[51];
    v2 = v12[31];
    v3 = v12[26];
    v12[10] = v12[50];
    v12[11] = v11;
    sub_25B8A8DB4(v2);
    v4 = swift_task_alloc();
    v12[52] = v4;
    *v4 = v12[12];
    v4[1] = sub_25B8C43D0;
    v5 = v12[50];
    v6 = v12[31];

    return SCUtil.getIPv6Addresses(bsdName:)(v5, v11);
  }

  else
  {
    v8 = v12[26];
    sub_25B8A8DB4(v12[30]);
    v9 = swift_task_alloc();
    v12[55] = v9;
    *v9 = v12[12];
    v9[1] = sub_25B8C4678;
    v10 = v12[30];

    return sub_25B900EA8(v12 + 556);
  }
}

uint64_t sub_25B8C43D0(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 416);
  v9[12] = *v2;
  v10 = v9 + 12;
  v9[53] = a1;
  v9[54] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = sub_25B8C67EC;
  }

  else
  {
    sub_25B8CEEA8(v9[31]);
    v5 = *v10;
    v6 = sub_25B8C4554;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_25B8C4554()
{
  v1 = v0[53];
  v9 = v0[51];
  v8 = v0[50];
  v2 = v0[45];
  v0[12] = v0;
  sub_25B8A5F88(v1);
  sub_25B946ED8();
  v3 = v0[3];
  v0[2] = v8;
  v0[3] = v9;

  v4 = v0[26];
  sub_25B8A8DB4(v0[30]);
  v5 = swift_task_alloc();
  v10[55] = v5;
  *v5 = v10[12];
  v5[1] = sub_25B8C4678;
  v6 = v10[30];

  return sub_25B900EA8(v10 + 556);
}

uint64_t sub_25B8C4678()
{
  v7 = *v1;
  v2 = *(*v1 + 440);
  v7[12] = *v1;
  v8 = v7 + 12;
  v7[56] = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_25B8C6ED0;
  }

  else
  {
    sub_25B8CEEA8(v7[30]);
    v3 = *v8;
    v4 = sub_25B8C47F4;
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t sub_25B8C47F4()
{
  v11 = v0;
  v1 = *(v0 + 360);
  v7 = *(v0 + 232);
  v6 = *(v0 + 208);
  *(v0 + 96) = v0;
  v2 = *(v0 + 560);
  v9 = *(v0 + 556);
  v10 = v2 & 1;
  sub_25B8A5E10(&v9);
  sub_25B8A8DB4(v7);
  v3 = swift_task_alloc();
  v8[57] = v3;
  *v3 = v8[12];
  v3[1] = sub_25B8C48EC;
  v4 = v8[29];

  return sub_25B901E4C();
}

uint64_t sub_25B8C48EC(uint64_t a1, uint64_t a2)
{
  v10 = *v3;
  v5 = *(*v3 + 456);
  v10[12] = *v3;
  v11 = v10 + 12;
  v10[58] = v2;
  v10[59] = a1;
  v10[60] = a2;

  if (v2)
  {
    v8 = *v11;
    v7 = sub_25B8C7944;
  }

  else
  {
    sub_25B8CEEA8(v10[29]);
    v6 = *v11;
    v7 = sub_25B8C4A74;
  }

  return MEMORY[0x2822009F8](v7, 0);
}

uint64_t sub_25B8C4A74()
{
  v1 = *(v0 + 480);
  *(v0 + 96) = v0;
  if (v1)
  {
    v30 = *(v31 + 480);
    v2 = *(v31 + 224);
    v3 = *(v31 + 208);
    *(v31 + 48) = *(v31 + 472);
    *(v31 + 56) = v30;
    sub_25B8A8DB4(v2);
    v4 = swift_task_alloc();
    *(v31 + 488) = v4;
    *v4 = *(v31 + 96);
    v4[1] = sub_25B8C4FCC;
    v5 = *(v31 + 472);
    v6 = *(v31 + 224);

    return sub_25B902DE8(v5, v30);
  }

  else
  {
    v27 = *(v31 + 464);
    v28 = *(v31 + 16);
    v29 = *(v31 + 24);
    sub_25B946ED8();
    *(v31 + 32) = v28;
    *(v31 + 40) = v29;
    if (*(v31 + 40))
    {
      sub_25B86AEEC(v31 + 32);
      v8 = *(v31 + 360);
      v25 = *(v31 + 16);
      v26 = *(v31 + 24);
      sub_25B946ED8();
      sub_25B8A6244(v25, v26);
    }

    else
    {
      sub_25B86AEEC(v31 + 32);
      v21 = *(v31 + 336);
      v9 = *(v31 + 328);
      (*(v31 + 320))(*(v31 + 304), *(v31 + 208) + OBJC_IVAR___NetworkInfoAssessment_logger, *(v31 + 272));
      oslog = sub_25B946C18();
      v22 = sub_25B947458();
      v24 = sub_25B947838();
      if (os_log_type_enabled(oslog, v22))
      {
        buf = sub_25B9474D8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
        v18 = sub_25B8895FC(0);
        v19 = sub_25B8895FC(0);
        *(v31 + 144) = buf;
        *(v31 + 152) = v18;
        *(v31 + 160) = v19;
        sub_25B889650(0, (v31 + 144));
        sub_25B889650(0, (v31 + 144));
        *(v31 + 168) = v24;
        v20 = swift_task_alloc();
        v20[2] = v31 + 144;
        v20[3] = v31 + 152;
        v20[4] = v31 + 160;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
        sub_25B8A3F58();
        sub_25B947158();
        if (v27)
        {
        }

        _os_log_impl(&dword_25B859000, oslog, v22, "no primary interface discovered", buf, 2u);
        sub_25B8896B0(v18);
        sub_25B8896B0(v19);
        sub_25B9474B8();
      }

      else
      {
      }

      v15 = *(v31 + 352);
      v16 = *(v31 + 344);
      v13 = *(v31 + 304);
      v14 = *(v31 + 272);
      MEMORY[0x277D82BD8](oslog);
      v16(v13, v14);
    }

    v10 = *(v31 + 208);
    sub_25B8A8DB4(*(v31 + 216));
    v11 = swift_task_alloc();
    *(v31 + 512) = v11;
    *v11 = *(v31 + 96);
    v11[1] = sub_25B8C56E0;
    v12 = *(v31 + 216);

    return SCUtil.getDNSConfiguration()();
  }
}

uint64_t sub_25B8C4FCC(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 488);
  v9[12] = *v2;
  v10 = v9 + 12;
  v9[62] = a1;
  v9[63] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = sub_25B8C83B8;
  }

  else
  {
    sub_25B8CEEA8(v9[28]);
    v5 = *v10;
    v6 = sub_25B8C5150;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_25B8C5150()
{
  v1 = v0[62];
  v2 = v0[45];
  v0[12] = v0;
  sub_25B8A60E0(v1);
  v31 = v0[2];
  v32 = v0[3];
  sub_25B946ED8();
  v0[8] = v31;
  v0[9] = v32;
  if (v0[9])
  {
    sub_25B86AEEC(v30 + 64);
  }

  else
  {
    sub_25B86AEEC(v30 + 64);
    v29 = *(v30 + 480);
    v28 = *(v30 + 472);
    sub_25B946ED8();
    v3 = *(v30 + 24);
    *(v30 + 16) = v28;
    *(v30 + 24) = v29;
  }

  v4 = *(v30 + 480);

  v25 = *(v30 + 504);
  v26 = *(v30 + 16);
  v27 = *(v30 + 24);
  sub_25B946ED8();
  *(v30 + 32) = v26;
  *(v30 + 40) = v27;
  if (*(v30 + 40))
  {
    sub_25B86AEEC(v30 + 32);
    v5 = *(v30 + 360);
    v23 = *(v30 + 16);
    v24 = *(v30 + 24);
    sub_25B946ED8();
    sub_25B8A6244(v23, v24);
  }

  else
  {
    sub_25B86AEEC(v30 + 32);
    v19 = *(v30 + 336);
    v6 = *(v30 + 328);
    (*(v30 + 320))(*(v30 + 304), *(v30 + 208) + OBJC_IVAR___NetworkInfoAssessment_logger, *(v30 + 272));
    oslog = sub_25B946C18();
    v20 = sub_25B947458();
    v22 = sub_25B947838();
    if (os_log_type_enabled(oslog, v20))
    {
      buf = sub_25B9474D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v16 = sub_25B8895FC(0);
      v17 = sub_25B8895FC(0);
      *(v30 + 144) = buf;
      *(v30 + 152) = v16;
      *(v30 + 160) = v17;
      sub_25B889650(0, (v30 + 144));
      sub_25B889650(0, (v30 + 144));
      *(v30 + 168) = v22;
      v18 = swift_task_alloc();
      v18[2] = v30 + 144;
      v18[3] = v30 + 152;
      v18[4] = v30 + 160;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
      sub_25B8A3F58();
      sub_25B947158();
      if (v25)
      {
      }

      _os_log_impl(&dword_25B859000, oslog, v20, "no primary interface discovered", buf, 2u);
      sub_25B8896B0(v16);
      sub_25B8896B0(v17);
      sub_25B9474B8();
    }

    else
    {
    }

    v13 = *(v30 + 352);
    v14 = *(v30 + 344);
    v11 = *(v30 + 304);
    v12 = *(v30 + 272);
    MEMORY[0x277D82BD8](oslog);
    v14(v11, v12);
  }

  v8 = *(v30 + 208);
  sub_25B8A8DB4(*(v30 + 216));
  v9 = swift_task_alloc();
  *(v30 + 512) = v9;
  *v9 = *(v30 + 96);
  v9[1] = sub_25B8C56E0;
  v10 = *(v30 + 216);

  return SCUtil.getDNSConfiguration()();
}

uint64_t sub_25B8C56E0(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 512);
  v9[12] = *v2;
  v10 = v9 + 12;
  v9[65] = a1;
  v9[66] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = sub_25B8C8E40;
  }

  else
  {
    sub_25B8CEEA8(v9[27]);
    v5 = *v10;
    v6 = sub_25B8C5864;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_25B8C5864()
{
  v1 = *(v0 + 520);
  *(v0 + 96) = v0;
  if (v1)
  {
    v19 = v20[65];
    v18 = v20[45];
    v20[17] = v19;
    type metadata accessor for NetworkInfoDNSConfiguration();
    MEMORY[0x277D82BE0](v19);
    v2 = sub_25B8A7ED4(v19);
    sub_25B8A63BC(v2);
    MEMORY[0x277D82BD8](v19);
  }

  v7 = v20[39];
  v8 = v20[38];
  v9 = v20[37];
  v10 = v20[36];
  v11 = v20[33];
  v12 = v20[32];
  v13 = v20[31];
  v14 = v20[30];
  v15 = v20[29];
  v16 = v20[28];
  v17 = v20[27];
  sub_25B86AEEC((v20 + 2));

  v3 = *(v20[12] + 8);
  v4 = v20[12];
  v5 = v20[45];

  return v3(v5);
}

uint64_t sub_25B8C5A4C()
{
  v38 = v0;
  v1 = v0[33];
  v0[12] = v0;
  sub_25B8CEEA8(v1);
  v22 = v0[47];
  v30 = v0[42];
  v20 = v0[41];
  v21 = v0[40];
  v2 = v0[37];
  v19 = v0[34];
  v18 = v0[26];
  v3 = v22;
  v0[15] = v22;
  v21(v2, v18 + OBJC_IVAR___NetworkInfoAssessment_logger, v19);
  v4 = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  sub_25B8A1C38();

  v31 = sub_25B946C18();
  v32 = sub_25B947438();
  v26 = swift_allocObject();
  *(v26 + 16) = 64;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_25B8A3B24;
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_25B8A3C9C;
  *(v25 + 24) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_25B8A3CE8;
  *(v28 + 24) = v25;
  sub_25B947838();
  v29 = v5;

  *v29 = sub_25B88B5F4;
  v29[1] = v26;

  v29[2] = sub_25B88B5F4;
  v29[3] = v27;

  v29[4] = sub_25B8A3EB8;
  v29[5] = v28;
  sub_25B8860FC();

  if (os_log_type_enabled(v31, v32))
  {
    buf = sub_25B9474D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v15 = sub_25B8895FC(1);
    v16 = sub_25B8895FC(0);
    v33 = buf;
    v34 = v15;
    v35 = v16;
    sub_25B889650(2, &v33);
    sub_25B889650(1, &v33);
    v36 = sub_25B88B5F4;
    v37 = v26;
    sub_25B889664(&v36, &v33, &v34, &v35);
    v36 = sub_25B88B5F4;
    v37 = v27;
    sub_25B889664(&v36, &v33, &v34, &v35);
    v36 = sub_25B8A3EB8;
    v37 = v28;
    sub_25B889664(&v36, &v33, &v34, &v35);
    _os_log_impl(&dword_25B859000, v31, v32, "Could not get IPv6 configuration: %@", buf, 0xCu);
    sub_25B8896B0(v15);
    sub_25B8896B0(v16);
    sub_25B9474B8();
  }

  else
  {
  }

  v12 = v17[44];
  v13 = v17[43];
  v10 = v17[37];
  v11 = v17[34];
  MEMORY[0x277D82BD8](v31);
  v13(v10, v11);

  v6 = v17[26];
  sub_25B8A8DB4(v17[30]);
  v7 = swift_task_alloc();
  v17[55] = v7;
  *v7 = v17[12];
  v7[1] = sub_25B8C4678;
  v8 = v17[30];

  return sub_25B900EA8(v17 + 556);
}

uint64_t sub_25B8C611C()
{
  v38 = v0;
  v1 = v0[32];
  v0[12] = v0;
  sub_25B8CEEA8(v1);
  v22 = v0[49];
  v30 = v0[42];
  v20 = v0[41];
  v21 = v0[40];
  v2 = v0[37];
  v19 = v0[34];
  v18 = v0[26];
  v3 = v22;
  v0[15] = v22;
  v21(v2, v18 + OBJC_IVAR___NetworkInfoAssessment_logger, v19);
  v4 = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  sub_25B8A1C38();

  v31 = sub_25B946C18();
  v32 = sub_25B947438();
  v26 = swift_allocObject();
  *(v26 + 16) = 64;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_25B8A3B24;
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_25B8A3C9C;
  *(v25 + 24) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_25B8A3CE8;
  *(v28 + 24) = v25;
  sub_25B947838();
  v29 = v5;

  *v29 = sub_25B88B5F4;
  v29[1] = v26;

  v29[2] = sub_25B88B5F4;
  v29[3] = v27;

  v29[4] = sub_25B8A3EB8;
  v29[5] = v28;
  sub_25B8860FC();

  if (os_log_type_enabled(v31, v32))
  {
    buf = sub_25B9474D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v15 = sub_25B8895FC(1);
    v16 = sub_25B8895FC(0);
    v33 = buf;
    v34 = v15;
    v35 = v16;
    sub_25B889650(2, &v33);
    sub_25B889650(1, &v33);
    v36 = sub_25B88B5F4;
    v37 = v26;
    sub_25B889664(&v36, &v33, &v34, &v35);
    v36 = sub_25B88B5F4;
    v37 = v27;
    sub_25B889664(&v36, &v33, &v34, &v35);
    v36 = sub_25B8A3EB8;
    v37 = v28;
    sub_25B889664(&v36, &v33, &v34, &v35);
    _os_log_impl(&dword_25B859000, v31, v32, "Could not get IPv6 configuration: %@", buf, 0xCu);
    sub_25B8896B0(v15);
    sub_25B8896B0(v16);
    sub_25B9474B8();
  }

  else
  {
  }

  v12 = v17[44];
  v13 = v17[43];
  v10 = v17[37];
  v11 = v17[34];
  MEMORY[0x277D82BD8](v31);
  v13(v10, v11);

  v6 = v17[26];
  sub_25B8A8DB4(v17[30]);
  v7 = swift_task_alloc();
  v17[55] = v7;
  *v7 = v17[12];
  v7[1] = sub_25B8C4678;
  v8 = v17[30];

  return sub_25B900EA8(v17 + 556);
}

uint64_t sub_25B8C67EC()
{
  v39 = v0;
  v18 = v0[51];
  v1 = v0[31];
  v0[12] = v0;
  sub_25B8CEEA8(v1);

  v23 = v0[54];
  v31 = v0[42];
  v21 = v0[41];
  v22 = v0[40];
  v2 = v0[37];
  v20 = v0[34];
  v19 = v0[26];
  v3 = v23;
  v0[15] = v23;
  v22(v2, v19 + OBJC_IVAR___NetworkInfoAssessment_logger, v20);
  v4 = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  sub_25B8A1C38();

  v32 = sub_25B946C18();
  v33 = sub_25B947438();
  v27 = swift_allocObject();
  *(v27 + 16) = 64;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_25B8A3B24;
  *(v25 + 24) = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_25B8A3C9C;
  *(v26 + 24) = v25;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_25B8A3CE8;
  *(v29 + 24) = v26;
  sub_25B947838();
  v30 = v5;

  *v30 = sub_25B88B5F4;
  v30[1] = v27;

  v30[2] = sub_25B88B5F4;
  v30[3] = v28;

  v30[4] = sub_25B8A3EB8;
  v30[5] = v29;
  sub_25B8860FC();

  if (os_log_type_enabled(v32, v33))
  {
    buf = sub_25B9474D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v15 = sub_25B8895FC(1);
    v16 = sub_25B8895FC(0);
    v34 = buf;
    v35 = v15;
    v36 = v16;
    sub_25B889650(2, &v34);
    sub_25B889650(1, &v34);
    v37 = sub_25B88B5F4;
    v38 = v27;
    sub_25B889664(&v37, &v34, &v35, &v36);
    v37 = sub_25B88B5F4;
    v38 = v28;
    sub_25B889664(&v37, &v34, &v35, &v36);
    v37 = sub_25B8A3EB8;
    v38 = v29;
    sub_25B889664(&v37, &v34, &v35, &v36);
    _os_log_impl(&dword_25B859000, v32, v33, "Could not get IPv6 configuration: %@", buf, 0xCu);
    sub_25B8896B0(v15);
    sub_25B8896B0(v16);
    sub_25B9474B8();
  }

  else
  {
  }

  v12 = v17[44];
  v13 = v17[43];
  v10 = v17[37];
  v11 = v17[34];
  MEMORY[0x277D82BD8](v32);
  v13(v10, v11);

  v6 = v17[26];
  sub_25B8A8DB4(v17[30]);
  v7 = swift_task_alloc();
  v17[55] = v7;
  *v7 = v17[12];
  v7[1] = sub_25B8C4678;
  v8 = v17[30];

  return sub_25B900EA8(v17 + 556);
}

uint64_t sub_25B8C6ED0()
{
  v56 = v0;
  v1 = v0[30];
  v0[12] = v0;
  sub_25B8CEEA8(v1);
  v40 = v0[56];
  v48 = v0[42];
  v38 = v0[41];
  v39 = v0[40];
  v2 = v0[36];
  v37 = v0[34];
  v36 = v0[26];
  v3 = v40;
  v0[16] = v40;
  v39(v2, v36 + OBJC_IVAR___NetworkInfoAssessment_logger, v37);
  v4 = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = v40;
  sub_25B8A1C38();

  v49 = sub_25B946C18();
  v50 = sub_25B947438();
  v44 = swift_allocObject();
  *(v44 + 16) = 64;
  v45 = swift_allocObject();
  *(v45 + 16) = 8;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_25B8A3B24;
  *(v42 + 24) = v41;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_25B8A3C9C;
  *(v43 + 24) = v42;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_25B8A3CE8;
  *(v46 + 24) = v43;
  sub_25B947838();
  v47 = v5;

  *v47 = sub_25B88B5F4;
  v47[1] = v44;

  v47[2] = sub_25B88B5F4;
  v47[3] = v45;

  v47[4] = sub_25B8A3EB8;
  v47[5] = v46;
  sub_25B8860FC();

  if (os_log_type_enabled(v49, v50))
  {
    v18 = sub_25B9474D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v19 = sub_25B8895FC(1);
    v20 = sub_25B8895FC(0);
    v51 = v18;
    v52 = v19;
    v53 = v20;
    sub_25B889650(2, &v51);
    sub_25B889650(1, &v51);
    v54 = sub_25B88B5F4;
    v55 = v44;
    sub_25B889664(&v54, &v51, &v52, &v53);
    v54 = sub_25B88B5F4;
    v55 = v45;
    sub_25B889664(&v54, &v51, &v52, &v53);
    v54 = sub_25B8A3EB8;
    v55 = v46;
    sub_25B889664(&v54, &v51, &v52, &v53);
    _os_log_impl(&dword_25B859000, v49, v50, "Could not get IPv4 configuration: %@", v18, 0xCu);
    sub_25B8896B0(v19);
    sub_25B8896B0(v20);
    sub_25B9474B8();
  }

  else
  {
  }

  v14 = *(v35 + 352);
  v15 = *(v35 + 344);
  v12 = *(v35 + 288);
  v13 = *(v35 + 272);
  MEMORY[0x277D82BD8](v49);
  v15(v12, v13);

  v16 = *(v35 + 16);
  v17 = *(v35 + 24);
  sub_25B946ED8();
  *(v35 + 32) = v16;
  *(v35 + 40) = v17;
  if (*(v35 + 40))
  {
    sub_25B86AEEC(v35 + 32);
    v6 = *(v35 + 360);
    v33 = *(v35 + 16);
    v34 = *(v35 + 24);
    sub_25B946ED8();
    sub_25B8A6244(v33, v34);
  }

  else
  {
    sub_25B86AEEC(v35 + 32);
    v29 = *(v35 + 336);
    v7 = *(v35 + 328);
    (*(v35 + 320))(*(v35 + 304), *(v35 + 208) + OBJC_IVAR___NetworkInfoAssessment_logger, *(v35 + 272));
    oslog = sub_25B946C18();
    v30 = sub_25B947458();
    v32 = sub_25B947838();
    if (os_log_type_enabled(oslog, v30))
    {
      buf = sub_25B9474D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v26 = sub_25B8895FC(0);
      v27 = sub_25B8895FC(0);
      *(v35 + 144) = buf;
      *(v35 + 152) = v26;
      *(v35 + 160) = v27;
      sub_25B889650(0, (v35 + 144));
      sub_25B889650(0, (v35 + 144));
      *(v35 + 168) = v32;
      v28 = swift_task_alloc();
      v28[2] = v35 + 144;
      v28[3] = v35 + 152;
      v28[4] = v35 + 160;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
      sub_25B8A3F58();
      sub_25B947158();

      _os_log_impl(&dword_25B859000, oslog, v30, "no primary interface discovered", buf, 2u);
      sub_25B8896B0(v26);
      sub_25B8896B0(v27);
      sub_25B9474B8();
    }

    v23 = *(v35 + 352);
    v24 = *(v35 + 344);
    v21 = *(v35 + 304);
    v22 = *(v35 + 272);
    MEMORY[0x277D82BD8](oslog);
    v24(v21, v22);
  }

  v8 = *(v35 + 208);
  sub_25B8A8DB4(*(v35 + 216));
  v9 = swift_task_alloc();
  *(v35 + 512) = v9;
  *v9 = *(v35 + 96);
  v9[1] = sub_25B8C56E0;
  v10 = *(v35 + 216);

  return SCUtil.getDNSConfiguration()();
}

uint64_t sub_25B8C7944()
{
  v56 = v0;
  v1 = v0[29];
  v0[12] = v0;
  sub_25B8CEEA8(v1);
  v40 = v0[58];
  v48 = v0[42];
  v38 = v0[41];
  v39 = v0[40];
  v2 = v0[36];
  v37 = v0[34];
  v36 = v0[26];
  v3 = v40;
  v0[16] = v40;
  v39(v2, v36 + OBJC_IVAR___NetworkInfoAssessment_logger, v37);
  v4 = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = v40;
  sub_25B8A1C38();

  v49 = sub_25B946C18();
  v50 = sub_25B947438();
  v44 = swift_allocObject();
  *(v44 + 16) = 64;
  v45 = swift_allocObject();
  *(v45 + 16) = 8;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_25B8A3B24;
  *(v42 + 24) = v41;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_25B8A3C9C;
  *(v43 + 24) = v42;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_25B8A3CE8;
  *(v46 + 24) = v43;
  sub_25B947838();
  v47 = v5;

  *v47 = sub_25B88B5F4;
  v47[1] = v44;

  v47[2] = sub_25B88B5F4;
  v47[3] = v45;

  v47[4] = sub_25B8A3EB8;
  v47[5] = v46;
  sub_25B8860FC();

  if (os_log_type_enabled(v49, v50))
  {
    v18 = sub_25B9474D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v19 = sub_25B8895FC(1);
    v20 = sub_25B8895FC(0);
    v51 = v18;
    v52 = v19;
    v53 = v20;
    sub_25B889650(2, &v51);
    sub_25B889650(1, &v51);
    v54 = sub_25B88B5F4;
    v55 = v44;
    sub_25B889664(&v54, &v51, &v52, &v53);
    v54 = sub_25B88B5F4;
    v55 = v45;
    sub_25B889664(&v54, &v51, &v52, &v53);
    v54 = sub_25B8A3EB8;
    v55 = v46;
    sub_25B889664(&v54, &v51, &v52, &v53);
    _os_log_impl(&dword_25B859000, v49, v50, "Could not get IPv4 configuration: %@", v18, 0xCu);
    sub_25B8896B0(v19);
    sub_25B8896B0(v20);
    sub_25B9474B8();
  }

  else
  {
  }

  v14 = *(v35 + 352);
  v15 = *(v35 + 344);
  v12 = *(v35 + 288);
  v13 = *(v35 + 272);
  MEMORY[0x277D82BD8](v49);
  v15(v12, v13);

  v16 = *(v35 + 16);
  v17 = *(v35 + 24);
  sub_25B946ED8();
  *(v35 + 32) = v16;
  *(v35 + 40) = v17;
  if (*(v35 + 40))
  {
    sub_25B86AEEC(v35 + 32);
    v6 = *(v35 + 360);
    v33 = *(v35 + 16);
    v34 = *(v35 + 24);
    sub_25B946ED8();
    sub_25B8A6244(v33, v34);
  }

  else
  {
    sub_25B86AEEC(v35 + 32);
    v29 = *(v35 + 336);
    v7 = *(v35 + 328);
    (*(v35 + 320))(*(v35 + 304), *(v35 + 208) + OBJC_IVAR___NetworkInfoAssessment_logger, *(v35 + 272));
    oslog = sub_25B946C18();
    v30 = sub_25B947458();
    v32 = sub_25B947838();
    if (os_log_type_enabled(oslog, v30))
    {
      buf = sub_25B9474D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v26 = sub_25B8895FC(0);
      v27 = sub_25B8895FC(0);
      *(v35 + 144) = buf;
      *(v35 + 152) = v26;
      *(v35 + 160) = v27;
      sub_25B889650(0, (v35 + 144));
      sub_25B889650(0, (v35 + 144));
      *(v35 + 168) = v32;
      v28 = swift_task_alloc();
      v28[2] = v35 + 144;
      v28[3] = v35 + 152;
      v28[4] = v35 + 160;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
      sub_25B8A3F58();
      sub_25B947158();

      _os_log_impl(&dword_25B859000, oslog, v30, "no primary interface discovered", buf, 2u);
      sub_25B8896B0(v26);
      sub_25B8896B0(v27);
      sub_25B9474B8();
    }

    v23 = *(v35 + 352);
    v24 = *(v35 + 344);
    v21 = *(v35 + 304);
    v22 = *(v35 + 272);
    MEMORY[0x277D82BD8](oslog);
    v24(v21, v22);
  }

  v8 = *(v35 + 208);
  sub_25B8A8DB4(*(v35 + 216));
  v9 = swift_task_alloc();
  *(v35 + 512) = v9;
  *v9 = *(v35 + 96);
  v9[1] = sub_25B8C56E0;
  v10 = *(v35 + 216);

  return SCUtil.getDNSConfiguration()();
}

uint64_t sub_25B8C83B8()
{
  v57 = v0;
  v36 = v0[60];
  v1 = v0[28];
  v0[12] = v0;
  sub_25B8CEEA8(v1);

  v41 = v0[63];
  v49 = v0[42];
  v39 = v0[41];
  v40 = v0[40];
  v2 = v0[36];
  v38 = v0[34];
  v37 = v0[26];
  v3 = v41;
  v0[16] = v41;
  v40(v2, v37 + OBJC_IVAR___NetworkInfoAssessment_logger, v38);
  v4 = v41;
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  sub_25B8A1C38();

  v50 = sub_25B946C18();
  v51 = sub_25B947438();
  v45 = swift_allocObject();
  *(v45 + 16) = 64;
  v46 = swift_allocObject();
  *(v46 + 16) = 8;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_25B8A3B24;
  *(v43 + 24) = v42;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_25B8A3C9C;
  *(v44 + 24) = v43;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_25B8A3CE8;
  *(v47 + 24) = v44;
  sub_25B947838();
  v48 = v5;

  *v48 = sub_25B88B5F4;
  v48[1] = v45;

  v48[2] = sub_25B88B5F4;
  v48[3] = v46;

  v48[4] = sub_25B8A3EB8;
  v48[5] = v47;
  sub_25B8860FC();

  if (os_log_type_enabled(v50, v51))
  {
    v18 = sub_25B9474D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
    v19 = sub_25B8895FC(1);
    v20 = sub_25B8895FC(0);
    v52 = v18;
    v53 = v19;
    v54 = v20;
    sub_25B889650(2, &v52);
    sub_25B889650(1, &v52);
    v55 = sub_25B88B5F4;
    v56 = v45;
    sub_25B889664(&v55, &v52, &v53, &v54);
    v55 = sub_25B88B5F4;
    v56 = v46;
    sub_25B889664(&v55, &v52, &v53, &v54);
    v55 = sub_25B8A3EB8;
    v56 = v47;
    sub_25B889664(&v55, &v52, &v53, &v54);
    _os_log_impl(&dword_25B859000, v50, v51, "Could not get IPv4 configuration: %@", v18, 0xCu);
    sub_25B8896B0(v19);
    sub_25B8896B0(v20);
    sub_25B9474B8();
  }

  else
  {
  }

  v14 = *(v35 + 352);
  v15 = *(v35 + 344);
  v12 = *(v35 + 288);
  v13 = *(v35 + 272);
  MEMORY[0x277D82BD8](v50);
  v15(v12, v13);

  v16 = *(v35 + 16);
  v17 = *(v35 + 24);
  sub_25B946ED8();
  *(v35 + 32) = v16;
  *(v35 + 40) = v17;
  if (*(v35 + 40))
  {
    sub_25B86AEEC(v35 + 32);
    v6 = *(v35 + 360);
    v33 = *(v35 + 16);
    v34 = *(v35 + 24);
    sub_25B946ED8();
    sub_25B8A6244(v33, v34);
  }

  else
  {
    sub_25B86AEEC(v35 + 32);
    v29 = *(v35 + 336);
    v7 = *(v35 + 328);
    (*(v35 + 320))(*(v35 + 304), *(v35 + 208) + OBJC_IVAR___NetworkInfoAssessment_logger, *(v35 + 272));
    oslog = sub_25B946C18();
    v30 = sub_25B947458();
    v32 = sub_25B947838();
    if (os_log_type_enabled(oslog, v30))
    {
      buf = sub_25B9474D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v26 = sub_25B8895FC(0);
      v27 = sub_25B8895FC(0);
      *(v35 + 144) = buf;
      *(v35 + 152) = v26;
      *(v35 + 160) = v27;
      sub_25B889650(0, (v35 + 144));
      sub_25B889650(0, (v35 + 144));
      *(v35 + 168) = v32;
      v28 = swift_task_alloc();
      v28[2] = v35 + 144;
      v28[3] = v35 + 152;
      v28[4] = v35 + 160;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
      sub_25B8A3F58();
      sub_25B947158();

      _os_log_impl(&dword_25B859000, oslog, v30, "no primary interface discovered", buf, 2u);
      sub_25B8896B0(v26);
      sub_25B8896B0(v27);
      sub_25B9474B8();
    }

    v23 = *(v35 + 352);
    v24 = *(v35 + 344);
    v21 = *(v35 + 304);
    v22 = *(v35 + 272);
    MEMORY[0x277D82BD8](oslog);
    v24(v21, v22);
  }

  v8 = *(v35 + 208);
  sub_25B8A8DB4(*(v35 + 216));
  v9 = swift_task_alloc();
  *(v35 + 512) = v9;
  *v9 = *(v35 + 96);
  v9[1] = sub_25B8C56E0;
  v10 = *(v35 + 216);

  return SCUtil.getDNSConfiguration()();
}

uint64_t sub_25B8C8E40()
{
  v6 = v0[45];
  v7 = v0[39];
  v8 = v0[38];
  v9 = v0[37];
  v10 = v0[36];
  v11 = v0[33];
  v12 = v0[32];
  v13 = v0[31];
  v14 = v0[30];
  v15 = v0[29];
  v16 = v0[28];
  v1 = v0[27];
  v0[12] = v0;
  sub_25B8CEEA8(v1);
  sub_25B86AEEC((v0 + 2));
  MEMORY[0x277D82BD8](v6);

  v2 = *(*(v17 + 96) + 8);
  v3 = *(v17 + 96);
  v4 = *(v17 + 528);

  return v2();
}

uint64_t sub_25B8C8FAC()
{
  *(v1 + 120) = v0;
  *(v1 + 64) = v1;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 192) = 0;
  v2 = sub_25B946F98();
  *(v1 + 128) = v2;
  v8 = *(v2 - 8);
  *(v1 + 136) = v8;
  v3 = *(v8 + 64) + 15;
  *(v1 + 144) = swift_task_alloc();
  v4 = sub_25B946C48();
  *(v1 + 152) = v4;
  v9 = *(v4 - 8);
  *(v1 + 160) = v9;
  v5 = *(v9 + 64) + 15;
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 72) = v0;
  v6 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_25B8C9114, 0);
}

uint64_t sub_25B8C9114()
{
  v1 = v0[15];
  v0[8] = v0;
  type metadata accessor for NetworkInfoPingResult();
  v0[10] = sub_25B947838();
  v38 = sub_25B8A8A68();
  v39 = sub_25B8A61D0();
  v40 = v2;
  MEMORY[0x277D82BD8](v38);
  v0[2] = v39;
  v0[3] = v40;
  if (v0[3])
  {
    sub_25B86AEEC(v37 + 16);
    v3 = *(v37 + 120);
    v36 = sub_25B8A8A68();
    *(v37 + 32) = sub_25B8A61D0();
    *(v37 + 40) = v4;
    if (*(v37 + 40))
    {
      v21 = *(v37 + 144);
      v20 = *(v37 + 128);
      v19 = *(v37 + 136);
      v17 = *(v37 + 32);
      v18 = *(v37 + 40);
      sub_25B946ED8();
      sub_25B86AEEC(v37 + 32);
      MEMORY[0x277D82BD8](v36);
      *(v37 + 48) = v17;
      *(v37 + 56) = v18;
      sub_25B946F68();
      sub_25B88BE14();
      v22 = sub_25B947528();
      (*(v19 + 8))(v21, v20);
      sub_25B86AEEC(v37 + 48);
      v23 = v22;
    }

    else
    {
      sub_25B86AEEC(v37 + 32);
      MEMORY[0x277D82BD8](v36);
      v23 = 0;
    }

    if (v23)
    {
      sub_25B946ED8();

      v16 = (v23 + 32);
    }

    else
    {
      v16 = 0;
    }

    v11 = *(v37 + 120);
    v12 = if_nametoindex(v16);
    swift_unknownObjectRelease();
    *(v37 + 192) = v12;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB050, &qword_25B94AA08);
    MEMORY[0x277D82BE0](v11);
    v13 = swift_task_alloc();
    *(v37 + 176) = v13;
    *(v13 + 16) = v11;
    *(v13 + 24) = v12;
    *(v13 + 32) = v37 + 80;
    sub_25B87140C(v14, MEMORY[0x277D84F78] + 8);
    v9 = *(MEMORY[0x277D858E8] + 4);
    v10 = swift_task_alloc();
    *(v37 + 184) = v10;
    *v10 = *(v37 + 64);
    v10[1] = sub_25B8C987C;

    return MEMORY[0x282200600](v15, v14);
  }

  else
  {
    sub_25B86AEEC(v37 + 16);
    (*(*(v37 + 160) + 16))(*(v37 + 168), *(v37 + 120) + OBJC_IVAR___NetworkInfoAssessment_logger, *(v37 + 152));
    v34 = sub_25B946C18();
    v33 = sub_25B947458();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v35 = sub_25B947838();
    if (os_log_type_enabled(v34, v33))
    {
      v29 = sub_25B9474D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v30 = sub_25B8895FC(0);
      v31 = sub_25B8895FC(0);
      *(v37 + 88) = v29;
      *(v37 + 96) = v30;
      *(v37 + 104) = v31;
      sub_25B889650(0, (v37 + 88));
      sub_25B889650(0, (v37 + 88));
      *(v37 + 112) = v35;
      v32 = swift_task_alloc();
      v32[2] = v37 + 88;
      v32[3] = v37 + 96;
      v32[4] = v37 + 104;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
      sub_25B8A3F58();
      sub_25B947158();

      _os_log_impl(&dword_25B859000, v34, v33, "No primary interface? No ping.", v29, 2u);
      sub_25B8896B0(v30);
      sub_25B8896B0(v31);
      sub_25B9474B8();
    }

    v25 = *(v37 + 168);
    v26 = *(v37 + 152);
    v24 = *(v37 + 160);
    MEMORY[0x277D82BD8](v34);
    (*(v24 + 8))(v25, v26);
    v28 = sub_25B947838();
    sub_25B86CFA0((v37 + 80));
    v5 = *(v37 + 168);
    v27 = *(v37 + 144);

    v6 = *(*(v37 + 64) + 8);
    v7 = *(v37 + 64);

    return v6(v28);
  }
}

uint64_t sub_25B8C987C()
{
  v6 = *v0;
  v1 = *(*v0 + 184);
  v4 = *(*v0 + 176);
  v5 = *(*v0 + 120);
  *(v6 + 64) = *v0;

  v2 = *(v6 + 64);

  return MEMORY[0x2822009F8](sub_25B8C99D4, 0);
}

uint64_t sub_25B8C99D4()
{
  v0[8] = v0;
  v6 = v0[10];
  sub_25B946ED8();
  sub_25B86CFA0(v0 + 10);
  v1 = v0[21];
  v5 = v0[18];

  v2 = *(v0[8] + 8);
  v3 = v0[8];

  return v2(v6);
}

uint64_t sub_25B8C9AA0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *(v5 + 144) = a5;
  *(v5 + 228) = a4;
  *(v5 + 136) = a3;
  *(v5 + 128) = a2;
  *(v5 + 64) = v5;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 224) = 0;
  *(v5 + 88) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 96) = 0;
  *(v5 + 232) = 0;
  *(v5 + 112) = 0;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 120) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB0B0, &qword_25B94AF08);
  *(v5 + 152) = v6;
  v12 = *(v6 - 8);
  *(v5 + 160) = v12;
  v7 = *(v12 + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB180, &qword_25B94AF00) - 8) + 64) + 15;
  *(v5 + 176) = swift_task_alloc();
  v9 = sub_25B946C48();
  *(v5 + 184) = v9;
  v13 = *(v9 - 8);
  *(v5 + 192) = v13;
  v14 = *(v13 + 64);
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 72) = a2;
  *(v5 + 80) = a3;
  *(v5 + 224) = a4;
  *(v5 + 88) = a5;
  v10 = *(v5 + 64);

  return MEMORY[0x2822009F8](sub_25B8C9CE0, 0);
}

uint64_t sub_25B8C9CE0()
{
  v97 = v0;
  v1 = *(v0 + 136);
  *(v0 + 64) = v0;
  v82 = sub_25B8A8A68();
  sub_25B8A5BC8(&v83);
  if (v84)
  {
    MEMORY[0x277D82BD8](v82);
  }

  else
  {
    v66 = v83;
    v2 = *(v81 + 208);
    v65 = *(v81 + 184);
    v67 = *(v81 + 228);
    v63 = *(v81 + 136);
    v64 = *(v81 + 192);
    *(v81 + 48) = v83;
    MEMORY[0x277D82BD8](v82);
    (*(v64 + 16))(v2, v63 + OBJC_IVAR___NetworkInfoAssessment_logger, v65);
    v68 = swift_allocObject();
    *(v68 + 16) = v66;
    v70 = swift_allocObject();
    *(v70 + 16) = v67;
    oslog = sub_25B946C18();
    v80 = sub_25B947448();
    v72 = swift_allocObject();
    *(v72 + 16) = 32;
    v73 = swift_allocObject();
    *(v73 + 16) = 8;
    v69 = swift_allocObject();
    *(v69 + 16) = sub_25B8D367C;
    *(v69 + 24) = v68;
    v74 = swift_allocObject();
    *(v74 + 16) = sub_25B88B668;
    *(v74 + 24) = v69;
    v75 = swift_allocObject();
    *(v75 + 16) = 0;
    v76 = swift_allocObject();
    *(v76 + 16) = 4;
    v71 = swift_allocObject();
    *(v71 + 16) = sub_25B89C9A8;
    *(v71 + 24) = v70;
    v77 = swift_allocObject();
    *(v77 + 16) = sub_25B8D2E30;
    *(v77 + 24) = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    sub_25B947838();
    v78 = v3;

    *v78 = sub_25B88B5F4;
    v78[1] = v72;

    v78[2] = sub_25B88B5F4;
    v78[3] = v73;

    v78[4] = sub_25B88B6B4;
    v78[5] = v74;

    v78[6] = sub_25B88B5F4;
    v78[7] = v75;

    v78[8] = sub_25B88B5F4;
    v78[9] = v76;

    v78[10] = sub_25B8D2E7C;
    v78[11] = v77;
    sub_25B8860FC();

    if (os_log_type_enabled(oslog, v80))
    {
      buf = sub_25B9474D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v61 = sub_25B8895FC(0);
      v62 = sub_25B8895FC(1);
      v92 = buf;
      v93 = v61;
      v94 = v62;
      sub_25B889650(2, &v92);
      sub_25B889650(2, &v92);
      v95 = sub_25B88B5F4;
      v96 = v72;
      sub_25B889664(&v95, &v92, &v93, &v94);
      v95 = sub_25B88B5F4;
      v96 = v73;
      sub_25B889664(&v95, &v92, &v93, &v94);
      v95 = sub_25B88B6B4;
      v96 = v74;
      sub_25B889664(&v95, &v92, &v93, &v94);
      v95 = sub_25B88B5F4;
      v96 = v75;
      sub_25B889664(&v95, &v92, &v93, &v94);
      v95 = sub_25B88B5F4;
      v96 = v76;
      sub_25B889664(&v95, &v92, &v93, &v94);
      v95 = sub_25B8D2E7C;
      v96 = v77;
      sub_25B889664(&v95, &v92, &v93, &v94);
      _os_log_impl(&dword_25B859000, oslog, v80, "Starting ping of %s via ifIndex %u", buf, 0x12u);
      sub_25B8896B0(v61);
      sub_25B8896B0(v62);
      sub_25B9474B8();
    }

    v51 = *(v81 + 208);
    v52 = *(v81 + 184);
    v58 = *(v81 + 176);
    v55 = *(v81 + 228);
    v56 = *(v81 + 136);
    v54 = *(v81 + 128);
    v50 = *(v81 + 192);
    MEMORY[0x277D82BD8](oslog);
    (*(v50 + 8))(v51, v52);
    sub_25B8D2F68();
    v53 = *(v56 + OBJC_IVAR___NetworkInfoAssessment_dispatchQueue);
    MEMORY[0x277D82BE0](v53);
    v59 = sub_25B8A99D4(v53);
    *(v81 + 120) = v59;
    v4 = sub_25B9472A8();
    (*(*(v4 - 8) + 56))(v58, 1);
    MEMORY[0x277D82BE0](v59);
    MEMORY[0x277D82BE0](v56);
    v57 = swift_allocObject();
    *(v57 + 16) = 0;
    *(v57 + 24) = 0;
    *(v57 + 32) = v59;
    *(v57 + 40) = v66;
    *(v57 + 56) = v55;
    *(v57 + 64) = v56;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB0C8, &qword_25B94AF20);
    sub_25B8A5420(v58, &unk_25B94AF60, v57, v5);
    sub_25B8992C8(v58);
    MEMORY[0x277D82BD8](v59);
  }

  v6 = *(v81 + 136);
  v48 = sub_25B8A8A68();
  sub_25B8A5D88(&v85);
  v49 = v85;
  if (v86)
  {
    MEMORY[0x277D82BD8](v48);
  }

  else
  {
    v7 = *(v81 + 200);
    v33 = *(v81 + 184);
    v34 = *(v81 + 228);
    v31 = *(v81 + 136);
    v32 = *(v81 + 192);
    *(v81 + 232) = v85;
    MEMORY[0x277D82BD8](v48);
    (*(v32 + 16))(v7, v31 + OBJC_IVAR___NetworkInfoAssessment_logger, v33);
    v35 = swift_allocObject();
    *(v35 + 16) = v49;
    v37 = swift_allocObject();
    *(v37 + 16) = v34;
    log = sub_25B946C18();
    v47 = sub_25B947448();
    v39 = swift_allocObject();
    *(v39 + 16) = 32;
    v40 = swift_allocObject();
    *(v40 + 16) = 8;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_25B8D3310;
    *(v36 + 24) = v35;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_25B88B668;
    *(v41 + 24) = v36;
    v42 = swift_allocObject();
    *(v42 + 16) = 0;
    v43 = swift_allocObject();
    *(v43 + 16) = 4;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_25B89C9A8;
    *(v38 + 24) = v37;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_25B8D2E30;
    *(v44 + 24) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    sub_25B947838();
    v45 = v8;

    *v45 = sub_25B88B5F4;
    v45[1] = v39;

    v45[2] = sub_25B88B5F4;
    v45[3] = v40;

    v45[4] = sub_25B88B6B4;
    v45[5] = v41;

    v45[6] = sub_25B88B5F4;
    v45[7] = v42;

    v45[8] = sub_25B88B5F4;
    v45[9] = v43;

    v45[10] = sub_25B8D2E7C;
    v45[11] = v44;
    sub_25B8860FC();

    if (os_log_type_enabled(log, v47))
    {
      v28 = sub_25B9474D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v29 = sub_25B8895FC(0);
      v30 = sub_25B8895FC(1);
      v87 = v28;
      v88 = v29;
      v89 = v30;
      sub_25B889650(2, &v87);
      sub_25B889650(2, &v87);
      v90 = sub_25B88B5F4;
      v91 = v39;
      sub_25B889664(&v90, &v87, &v88, &v89);
      v90 = sub_25B88B5F4;
      v91 = v40;
      sub_25B889664(&v90, &v87, &v88, &v89);
      v90 = sub_25B88B6B4;
      v91 = v41;
      sub_25B889664(&v90, &v87, &v88, &v89);
      v90 = sub_25B88B5F4;
      v91 = v42;
      sub_25B889664(&v90, &v87, &v88, &v89);
      v90 = sub_25B88B5F4;
      v91 = v43;
      sub_25B889664(&v90, &v87, &v88, &v89);
      v90 = sub_25B8D2E7C;
      v91 = v44;
      sub_25B889664(&v90, &v87, &v88, &v89);
      _os_log_impl(&dword_25B859000, log, v47, "Starting ping of %s via ifIndex %u", v28, 0x12u);
      sub_25B8896B0(v29);
      sub_25B8896B0(v30);
      sub_25B9474B8();
    }

    v19 = *(v81 + 200);
    v20 = *(v81 + 184);
    v26 = *(v81 + 176);
    v23 = *(v81 + 228);
    v24 = *(v81 + 136);
    v22 = *(v81 + 128);
    v18 = *(v81 + 192);
    MEMORY[0x277D82BD8](log);
    (*(v18 + 8))(v19, v20);
    sub_25B8D2F68();
    v21 = *(v24 + OBJC_IVAR___NetworkInfoAssessment_dispatchQueue);
    MEMORY[0x277D82BE0](v21);
    v27 = sub_25B8A99D4(v21);
    *(v81 + 112) = v27;
    v9 = sub_25B9472A8();
    (*(*(v9 - 8) + 56))(v26, 1);
    MEMORY[0x277D82BE0](v27);
    MEMORY[0x277D82BE0](v24);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = v27;
    *(v25 + 40) = v49;
    *(v25 + 44) = v23;
    *(v25 + 48) = v24;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB0C8, &qword_25B94AF20);
    sub_25B8A5420(v26, &unk_25B94AF50, v25, v10);
    sub_25B8992C8(v26);
    MEMORY[0x277D82BD8](v27);
  }

  v16 = *(v81 + 168);
  v17 = **(v81 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB050, &qword_25B94AA08);
  sub_25B947278();
  v11 = *(MEMORY[0x277D856B0] + 4);
  v12 = swift_task_alloc();
  *(v81 + 216) = v12;
  *v12 = *(v81 + 64);
  v12[1] = sub_25B8CB438;
  v13 = *(v81 + 168);
  v14 = *(v81 + 152);

  return MEMORY[0x2822002E8](v81 + 16, 0, 0, v14);
}

uint64_t sub_25B8CB438()
{
  v4 = *v0;
  v1 = *(*v0 + 216);
  *(v4 + 64) = *v0;

  v2 = *(v4 + 64);

  return MEMORY[0x2822009F8](sub_25B8CB550, 0);
}

uint64_t sub_25B8CB550()
{
  v0[8] = v0;
  v15 = v0[3];
  if (v15 == 1)
  {
    v10 = *(v14 + 208);
    v11 = *(v14 + 200);
    v12 = *(v14 + 176);
    v13 = *(v14 + 168);
    v1 = *(v14 + 152);
    (*(*(v14 + 160) + 8))();

    v2 = *(*(v14 + 64) + 8);
    v3 = *(v14 + 64);

    return v2();
  }

  else
  {
    *(v14 + 32) = v0[2] & 1;
    *(v14 + 40) = v15;
    sub_25B946ED8();
    if (v15)
    {
      v9 = *(v14 + 144);
      *(v14 + 96) = v15;
      type metadata accessor for NetworkInfoPingResult();
      sub_25B946ED8();
      *(v14 + 104) = NetworkInfoPingResult.__allocating_init(raw:)(v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAFF0, &unk_25B94A9A0);
      sub_25B947208();
    }

    v5 = *(MEMORY[0x277D856B0] + 4);
    v6 = swift_task_alloc();
    *(v14 + 216) = v6;
    *v6 = *(v14 + 64);
    v6[1] = sub_25B8CB438;
    v7 = *(v14 + 168);
    v8 = *(v14 + 152);

    return MEMORY[0x2822002E8](v14 + 16, 0, 0, v8);
  }
}

uint64_t sub_25B8CB864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  *(v8 + 232) = a8;
  *(v8 + 260) = a7;
  *(v8 + 224) = a4;
  *(v8 + 216) = a1;
  *(v8 + 192) = v8;
  *(v8 + 200) = 0;
  *(v8 + 160) = 0;
  *(v8 + 168) = 0;
  *(v8 + 256) = 0;
  *(v8 + 208) = 0;
  *&v11 = a5;
  *(&v11 + 1) = a6;
  *(v8 + 80) = v11;
  *(v8 + 200) = a4;
  *(v8 + 160) = v11;
  *(v8 + 256) = a7;
  *(v8 + 208) = a8;
  v9 = *(v8 + 192);
  return MEMORY[0x2822009F8](sub_25B8CB8F0, 0);
}

uint64_t sub_25B8CB8F0()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 232);
  v7 = *(v0 + 260);
  v9 = *(v0 + 224);
  *(v0 + 192) = v0;
  IPv6Address.description.getter();
  v5 = sub_25B946F58();
  *(v0 + 240) = v5;

  sub_25B946F48();
  v6 = sub_25B946F58();
  *(v0 + 248) = v6;

  v8 = sub_25B8CC1FC();
  *(v0 + 16) = *(v0 + 192);
  *(v0 + 56) = v0 + 176;
  *(v0 + 24) = sub_25B8CBAE0;
  v4 = swift_continuation_init();
  *(v0 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB0D0, &qword_25B94AF38);
  *(v0 + 128) = v4;
  *(v0 + 96) = MEMORY[0x277D85DD0];
  *(v0 + 104) = 1107296256;
  *(v0 + 108) = 0;
  *(v0 + 112) = sub_25B8CBCA8;
  *(v0 + 120) = &block_descriptor_512;
  [v9 startPing:v5 hostName:v6 interface:v7 pingCount:5 interPingInterval:1 burstCount:v8 & 1 interBurstInterval:0.25 timeout:1.0 stopTestOnFirstSuccess:2.0 withCompletion:v0 + 96];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_25B8CBAE0()
{
  v3 = *v0;
  *(v3 + 192) = *v0;
  v1 = *(v3 + 192);

  return MEMORY[0x2822009F8](sub_25B8CBBDC, 0);
}

uint64_t sub_25B8CBBDC()
{
  v1 = *(v0 + 248);
  v7 = *(v0 + 240);
  v2 = *(v0 + 216);
  *(v0 + 192) = v0;
  v3 = *(v0 + 184);
  *v2 = *(v0 + 176);
  *(v2 + 8) = v3;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);
  v4 = *(*(v0 + 192) + 8);
  v5 = *(v0 + 192);

  return v4();
}

uint64_t sub_25B8CBCA8(uint64_t a1, char a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a3);
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v9[0] = a2;
  MEMORY[0x277D82BE0](a3);
  v10 = sub_25B946EA8();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB0D8, &qword_25B94AF40);
  sub_25B8A57DC(v7, v9, v3);
  MEMORY[0x277D82BD8](a3);
  return MEMORY[0x277D82BD8](a3);
}

uint64_t sub_25B8CBDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  *(v7 + 200) = a7;
  *(v7 + 236) = a6;
  *(v7 + 228) = a5;
  *(v7 + 192) = a4;
  *(v7 + 184) = a1;
  *(v7 + 160) = v7;
  *(v7 + 168) = 0;
  *(v7 + 224) = 0;
  *(v7 + 232) = 0;
  *(v7 + 176) = 0;
  *(v7 + 168) = a4;
  *(v7 + 224) = a5;
  *(v7 + 232) = a6;
  *(v7 + 176) = a7;
  v8 = *(v7 + 160);
  return MEMORY[0x2822009F8](sub_25B8CBE44, 0);
}

uint64_t sub_25B8CBE44()
{
  v3 = *(v0 + 200);
  v7 = *(v0 + 236);
  v1 = *(v0 + 228);
  v9 = *(v0 + 192);
  *(v0 + 160) = v0;
  IPv4Address.description.getter();
  v5 = sub_25B946F58();
  *(v0 + 208) = v5;

  sub_25B946F48();
  v6 = sub_25B946F58();
  *(v0 + 216) = v6;

  v8 = sub_25B8CC1FC();
  *(v0 + 16) = *(v0 + 160);
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_25B8CC034;
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB0D0, &qword_25B94AF38);
  *(v0 + 112) = v4;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 92) = 0;
  *(v0 + 96) = sub_25B8CBCA8;
  *(v0 + 104) = &block_descriptor_515;
  [v9 startPing:v5 hostName:v6 interface:v7 pingCount:5 interPingInterval:1 burstCount:v8 & 1 interBurstInterval:0.25 timeout:1.0 stopTestOnFirstSuccess:2.0 withCompletion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_25B8CC034()
{
  v3 = *v0;
  *(v3 + 160) = *v0;
  v1 = *(v3 + 160);

  return MEMORY[0x2822009F8](sub_25B8CC130, 0);
}

uint64_t sub_25B8CC130()
{
  v1 = *(v0 + 216);
  v7 = *(v0 + 208);
  v2 = *(v0 + 184);
  *(v0 + 160) = v0;
  v3 = *(v0 + 152);
  *v2 = *(v0 + 144);
  *(v2 + 8) = v3;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);
  v4 = *(*(v0 + 160) + 8);
  v5 = *(v0 + 160);

  return v4();
}

uint64_t sub_25B8CC1FC()
{
  v2 = (v0 + OBJC_IVAR___NetworkInfoAssessment_stopPingTestOnFirstSuccess);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_25B8CC264(char a1)
{
  v3 = (v1 + OBJC_IVAR___NetworkInfoAssessment_stopPingTestOnFirstSuccess);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8CC344(uint64_t a1, uint64_t a2)
{
  *(v3 + 136) = v2;
  *(v3 + 128) = a2;
  *(v3 + 120) = a1;
  *(v3 + 64) = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 216) = 0;
  v4 = sub_25B946C48();
  *(v3 + 144) = v4;
  v10 = *(v4 - 8);
  *(v3 + 152) = v10;
  v5 = *(v10 + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  v6 = sub_25B946F98();
  *(v3 + 168) = v6;
  v11 = *(v6 - 8);
  *(v3 + 176) = v11;
  v7 = *(v11 + 64) + 15;
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 72) = v2;
  v8 = *(v3 + 64);

  return MEMORY[0x2822009F8](sub_25B8CC4EC, 0);
}

uint64_t sub_25B8CC4EC()
{
  v1 = v0[17];
  v0[8] = v0;
  type metadata accessor for NetworkInfoPingResult();
  v0[10] = sub_25B947838();
  v38 = sub_25B8A8A68();
  v39 = sub_25B8A61D0();
  v40 = v2;
  v0[24] = v2;
  if (v2)
  {
    v35 = *(v37 + 184);
    v34 = *(v37 + 168);
    v33 = *(v37 + 176);
    *(v37 + 32) = v39;
    *(v37 + 40) = v2;
    MEMORY[0x277D82BD8](v38);
    *(v37 + 48) = v39;
    *(v37 + 56) = v40;
    sub_25B946F68();
    sub_25B88BE14();
    v36 = sub_25B947528();
    (*(v33 + 8))(v35, v34);
    if (v36)
    {
      sub_25B946ED8();

      v32 = (v36 + 32);
    }

    else
    {
      v32 = 0;
    }

    v25 = *(v37 + 136);
    v27 = *(v37 + 128);
    v26 = *(v37 + 120);
    v28 = if_nametoindex(v32);
    swift_unknownObjectRelease();
    *(v37 + 216) = v28;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB050, &qword_25B94AA08);
    MEMORY[0x277D82BE0](v25);
    sub_25B946ED8();
    v29 = swift_task_alloc();
    *(v37 + 200) = v29;
    *(v29 + 16) = v25;
    *(v29 + 24) = v26;
    *(v29 + 32) = v27;
    *(v29 + 40) = v28;
    *(v29 + 48) = v37 + 80;
    sub_25B87140C(v30, MEMORY[0x277D84F78] + 8);
    v3 = *(MEMORY[0x277D858E8] + 4);
    v4 = swift_task_alloc();
    *(v37 + 208) = v4;
    *v4 = *(v37 + 64);
    v4[1] = sub_25B8CCC00;

    return MEMORY[0x282200600](v31, v30);
  }

  else
  {
    v5 = *(v37 + 160);
    v21 = *(v37 + 144);
    v19 = *(v37 + 136);
    v20 = *(v37 + 152);
    MEMORY[0x277D82BD8](v38);
    (*(v20 + 16))(v5, v19 + OBJC_IVAR___NetworkInfoAssessment_logger, v21);
    oslog = sub_25B946C18();
    v22 = sub_25B947458();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    v24 = sub_25B947838();
    if (os_log_type_enabled(oslog, v22))
    {
      buf = sub_25B9474D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v16 = sub_25B8895FC(0);
      v17 = sub_25B8895FC(0);
      *(v37 + 88) = buf;
      *(v37 + 96) = v16;
      *(v37 + 104) = v17;
      sub_25B889650(0, (v37 + 88));
      sub_25B889650(0, (v37 + 88));
      *(v37 + 112) = v24;
      v18 = swift_task_alloc();
      v18[2] = v37 + 88;
      v18[3] = v37 + 96;
      v18[4] = v37 + 104;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAD88, &qword_25B94A9F0);
      sub_25B8A3F58();
      sub_25B947158();

      _os_log_impl(&dword_25B859000, oslog, v22, "No primary interface? No ping.", buf, 2u);
      sub_25B8896B0(v16);
      sub_25B8896B0(v17);
      sub_25B9474B8();
    }

    v11 = *(v37 + 160);
    v12 = *(v37 + 144);
    v10 = *(v37 + 152);
    MEMORY[0x277D82BD8](oslog);
    (*(v10 + 8))(v11, v12);
    v14 = sub_25B947838();
    sub_25B86CFA0((v37 + 80));
    v6 = *(v37 + 184);
    v13 = *(v37 + 160);

    v7 = *(*(v37 + 64) + 8);
    v8 = *(v37 + 64);

    return v7(v14);
  }
}

uint64_t sub_25B8CCC00()
{
  v7 = *v0;
  v1 = *(*v0 + 208);
  v4 = *(*v0 + 200);
  v5 = *(*v0 + 136);
  v6 = *(*v0 + 128);
  *(v7 + 64) = *v0;

  v2 = *(v7 + 64);

  return MEMORY[0x2822009F8](sub_25B8CCD78, 0);
}

uint64_t sub_25B8CCD78()
{
  v5 = v0[24];
  v0[8] = v0;
  v7 = v0[10];
  sub_25B946ED8();

  sub_25B86CFA0(v0 + 10);
  v1 = v0[23];
  v6 = v0[20];

  v2 = *(v0[8] + 8);
  v3 = v0[8];

  return v2(v7);
}

uint64_t sub_25B8CCE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  *(v7 + 368) = a7;
  *(v7 + 468) = a6;
  *(v7 + 360) = a5;
  *(v7 + 352) = a4;
  *(v7 + 344) = a3;
  *(v7 + 336) = a2;
  *(v7 + 272) = v7;
  *(v7 + 280) = 0;
  *(v7 + 288) = 0;
  *(v7 + 144) = 0;
  *(v7 + 152) = 0;
  *(v7 + 464) = 0;
  *(v7 + 296) = 0;
  *(v7 + 176) = 0;
  *(v7 + 184) = 0;
  *(v7 + 192) = 0;
  *(v7 + 200) = 0;
  *(v7 + 240) = 0;
  *(v7 + 248) = 0;
  *(v7 + 312) = 0;
  *(v7 + 256) = 0;
  *(v7 + 264) = 0;
  *(v7 + 328) = 0;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB180, &qword_25B94AF00) - 8) + 64) + 15;
  *(v7 + 376) = swift_task_alloc();
  v9 = sub_25B946C48();
  *(v7 + 384) = v9;
  v15 = *(v9 - 8);
  *(v7 + 392) = v15;
  v10 = *(v15 + 64) + 15;
  *(v7 + 400) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB0B0, &qword_25B94AF08);
  *(v7 + 408) = v11;
  v16 = *(v11 - 8);
  *(v7 + 416) = v16;
  v12 = *(v16 + 64) + 15;
  *(v7 + 424) = swift_task_alloc();
  *(v7 + 280) = a2;
  *(v7 + 288) = a3;
  *(v7 + 144) = a4;
  *(v7 + 152) = a5;
  *(v7 + 464) = a6;
  *(v7 + 296) = a7;
  v13 = *(v7 + 272);

  return MEMORY[0x2822009F8](sub_25B8CD0C8, 0);
}

uint64_t sub_25B8CD0C8()
{
  v4 = *(v0 + 360);
  v3 = *(v0 + 352);
  v1 = *(v0 + 344);
  *(v0 + 272) = v0;
  v7 = sub_25B8A8F5C();
  *(v0 + 432) = v7;
  sub_25B946ED8();
  v6 = sub_25B946F58();
  *(v0 + 440) = v6;

  *(v0 + 16) = *(v0 + 272);
  *(v0 + 56) = v0 + 160;
  *(v0 + 24) = sub_25B8CD24C;
  v5 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB040, &qword_25B94A9D8);
  *(v0 + 112) = v5;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 92) = 0;
  *(v0 + 96) = sub_25B8C3354;
  *(v0 + 104) = &block_descriptor_375;
  [v7 resolveHostname:v6 withCompletion:?];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_25B8CD24C()
{
  v3 = *v0;
  *(v3 + 272) = *v0;
  v1 = *(v3 + 272);

  return MEMORY[0x2822009F8](sub_25B8CD348, 0);
}

uint64_t sub_25B8CD348()
{
  v63 = v0;
  v55 = *(v0 + 440);
  v1 = *(v0 + 432);
  *(v0 + 272) = v0;
  v2 = *(v0 + 160);
  v56 = *(v0 + 168);
  *(v0 + 448) = v56;
  *(v0 + 176) = v2;
  *(v0 + 184) = v56;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v55);
  sub_25B946ED8();
  *(v0 + 304) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAADA0, &unk_25B949920);
  sub_25B89906C();
  sub_25B947418();
  v57 = 0;
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAC80, &qword_25B94A5C8);
    sub_25B9475E8();
    v52 = *(v54 + 208);
    v53 = *(v54 + 216);
    if (!v53)
    {
      break;
    }

    v3 = *(v54 + 400);
    v4 = *(v54 + 392);
    v5 = *(v54 + 384);
    v37 = *(v54 + 468);
    v36 = *(v54 + 360);
    v35 = *(v54 + 352);
    v6 = *(v54 + 344);
    *(v54 + 256) = v52;
    *(v54 + 264) = v53;
    (*(v4 + 16))(v3, v6 + OBJC_IVAR___NetworkInfoAssessment_logger, v5);
    sub_25B946ED8();
    v38 = swift_allocObject();
    *(v38 + 16) = v35;
    *(v38 + 24) = v36;
    v40 = swift_allocObject();
    *(v40 + 16) = v37;
    oslog = sub_25B946C18();
    v50 = sub_25B947448();
    v42 = swift_allocObject();
    *(v42 + 16) = 32;
    v43 = swift_allocObject();
    *(v43 + 16) = 8;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_25B8994FC;
    *(v39 + 24) = v38;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_25B88B668;
    *(v44 + 24) = v39;
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    v46 = swift_allocObject();
    *(v46 + 16) = 4;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_25B89C9A8;
    *(v41 + 24) = v40;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_25B8D2E30;
    *(v47 + 24) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    sub_25B947838();
    v48 = v7;

    *v48 = sub_25B88B5F4;
    v48[1] = v42;

    v48[2] = sub_25B88B5F4;
    v48[3] = v43;

    v48[4] = sub_25B88B6B4;
    v48[5] = v44;

    v48[6] = sub_25B88B5F4;
    v48[7] = v45;

    v48[8] = sub_25B88B5F4;
    v48[9] = v46;

    v48[10] = sub_25B8D2E7C;
    v48[11] = v47;
    sub_25B8860FC();

    if (os_log_type_enabled(oslog, v50))
    {
      buf = sub_25B9474D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v30 = sub_25B8895FC(0);
      v31 = sub_25B8895FC(1);
      v58 = buf;
      v59 = v30;
      v60 = v31;
      sub_25B889650(2, &v58);
      sub_25B889650(2, &v58);
      v61 = sub_25B88B5F4;
      v62 = v42;
      sub_25B889664(&v61, &v58, &v59, &v60);
      v61 = sub_25B88B5F4;
      v62 = v43;
      sub_25B889664(&v61, &v58, &v59, &v60);
      v61 = sub_25B88B6B4;
      v62 = v44;
      sub_25B889664(&v61, &v58, &v59, &v60);
      v61 = sub_25B88B5F4;
      v62 = v45;
      sub_25B889664(&v61, &v58, &v59, &v60);
      v61 = sub_25B88B5F4;
      v62 = v46;
      sub_25B889664(&v61, &v58, &v59, &v60);
      v61 = sub_25B8D2E7C;
      v62 = v47;
      sub_25B889664(&v61, &v58, &v59, &v60);
      _os_log_impl(&dword_25B859000, oslog, v50, "Starting ping of %s via ifIndex %u", buf, 0x12u);
      sub_25B8896B0(v30);
      sub_25B8896B0(v31);
      sub_25B9474B8();

      v27 = 0;
      v28 = 0;
    }

    else
    {

      v27 = v57;
      v28 = v51;
    }

    v16 = *(v54 + 400);
    v17 = *(v54 + 384);
    v25 = *(v54 + 376);
    v22 = *(v54 + 468);
    v21 = *(v54 + 360);
    v20 = *(v54 + 352);
    v23 = *(v54 + 344);
    v19 = *(v54 + 336);
    v15 = *(v54 + 392);
    MEMORY[0x277D82BD8](oslog);
    (*(v15 + 8))(v16, v17);
    sub_25B8D2F68();
    v18 = *(v23 + OBJC_IVAR___NetworkInfoAssessment_dispatchQueue);
    MEMORY[0x277D82BE0](v18);
    v26 = sub_25B8A99D4(v18);
    *(v54 + 328) = v26;
    v12 = sub_25B9472A8();
    (*(*(v12 - 8) + 56))(v25, 1);
    MEMORY[0x277D82BE0](v26);
    sub_25B946ED8();
    MEMORY[0x277D82BE0](v23);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    *(v24 + 32) = v26;
    *(v24 + 40) = v52;
    *(v24 + 48) = v53;
    *(v24 + 56) = v20;
    *(v24 + 64) = v21;
    *(v24 + 72) = v22;
    *(v24 + 80) = v23;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB0C8, &qword_25B94AF20);
    sub_25B8A5420(v25, &unk_25B94AF18, v24, v13);
    sub_25B8992C8(v25);
    MEMORY[0x277D82BD8](v26);
    v57 = v27;
    v51 = v28;
  }

  v33 = *(v54 + 424);
  v32 = *(v54 + 336);
  sub_25B86CFA0((v54 + 192));
  v34 = *v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB050, &qword_25B94AA08);
  sub_25B947278();
  v8 = *(MEMORY[0x277D856B0] + 4);
  v9 = swift_task_alloc();
  *(v54 + 456) = v9;
  *v9 = *(v54 + 272);
  v9[1] = sub_25B8CE268;
  v10 = *(v54 + 424);
  v11 = *(v54 + 408);

  return MEMORY[0x2822002E8](v54 + 224, 0, 0, v11);
}

uint64_t sub_25B8CE268()
{
  v4 = *v0;
  v1 = *(*v0 + 456);
  *(v4 + 272) = *v0;

  v2 = *(v4 + 272);

  return MEMORY[0x2822009F8](sub_25B8CE380, 0);
}

uint64_t sub_25B8CE380()
{
  v0[34] = v0;
  v15 = v0[29];
  if (v15 == 1)
  {
    v10 = *(v14 + 448);
    v11 = *(v14 + 424);
    v1 = *(v14 + 408);
    v12 = *(v14 + 400);
    v13 = *(v14 + 376);
    (*(*(v14 + 416) + 8))();

    v2 = *(*(v14 + 272) + 8);
    v3 = *(v14 + 272);

    return v2();
  }

  else
  {
    *(v14 + 240) = v0[28] & 1;
    *(v14 + 248) = v15;
    sub_25B946ED8();
    if (v15)
    {
      v9 = *(v14 + 368);
      *(v14 + 312) = v15;
      type metadata accessor for NetworkInfoPingResult();
      sub_25B946ED8();
      *(v14 + 320) = NetworkInfoPingResult.__allocating_init(raw:)(v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAFF0, &unk_25B94A9A0);
      sub_25B947208();
    }

    v5 = *(MEMORY[0x277D856B0] + 4);
    v6 = swift_task_alloc();
    *(v14 + 456) = v6;
    *v6 = *(v14 + 272);
    v6[1] = sub_25B8CE268;
    v7 = *(v14 + 424);
    v8 = *(v14 + 408);

    return MEMORY[0x2822002E8](v14 + 224, 0, 0, v8);
  }
}

uint64_t sub_25B8CE678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 264) = v12;
  *(v8 + 292) = v11;
  *(v8 + 256) = a8;
  *(v8 + 248) = a7;
  *(v8 + 240) = a6;
  *(v8 + 232) = a5;
  *(v8 + 224) = a4;
  *(v8 + 216) = a1;
  *(v8 + 192) = v8;
  *(v8 + 200) = 0;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 160) = 0;
  *(v8 + 168) = 0;
  *(v8 + 288) = 0;
  *(v8 + 208) = 0;
  *(v8 + 200) = a4;
  *(v8 + 144) = a5;
  *(v8 + 152) = a6;
  *(v8 + 160) = a7;
  *(v8 + 168) = a8;
  *(v8 + 288) = v11;
  *(v8 + 208) = v12;
  v9 = *(v8 + 192);
  return MEMORY[0x2822009F8](sub_25B8CE724, 0);
}

uint64_t sub_25B8CE724()
{
  v1 = *(v0 + 264);
  v10 = *(v0 + 292);
  v6 = *(v0 + 256);
  v5 = *(v0 + 248);
  v4 = *(v0 + 240);
  v3 = *(v0 + 232);
  v12 = *(v0 + 224);
  *(v0 + 192) = v0;
  sub_25B946ED8();
  v8 = sub_25B946F58();
  *(v0 + 272) = v8;

  sub_25B946ED8();
  v9 = sub_25B946F58();
  *(v0 + 280) = v9;

  v11 = sub_25B8CC1FC();
  *(v0 + 16) = *(v0 + 192);
  *(v0 + 56) = v0 + 176;
  *(v0 + 24) = sub_25B8CE918;
  v7 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB0D0, &qword_25B94AF38);
  *(v0 + 112) = v7;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 92) = 0;
  *(v0 + 96) = sub_25B8CBCA8;
  *(v0 + 104) = &block_descriptor_424;
  [v12 startPing:v8 hostName:v9 interface:v10 pingCount:5 interPingInterval:1 burstCount:v11 & 1 interBurstInterval:0.25 timeout:1.0 stopTestOnFirstSuccess:2.0 withCompletion:{v0 + 80, v3, v4, v5, v6}];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_25B8CE918()
{
  v3 = *v0;
  *(v3 + 192) = *v0;
  v1 = *(v3 + 192);

  return MEMORY[0x2822009F8](sub_25B8CEA14, 0);
}

uint64_t sub_25B8CEA14()
{
  v1 = *(v0 + 280);
  v7 = *(v0 + 272);
  v2 = *(v0 + 216);
  *(v0 + 192) = v0;
  v3 = *(v0 + 184);
  *v2 = *(v0 + 176);
  *(v2 + 8) = v3;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);
  v4 = *(*(v0 + 192) + 8);
  v5 = *(v0 + 192);

  return v4();
}

id NetworkInfoAssessment.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkInfoAssessment();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25B8CECE8()
{
  v2 = qword_27FBAAF98;
  if (!qword_27FBAAF98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAF98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8CED64()
{
  v2 = qword_27FBAAFA0;
  if (!qword_27FBAAFA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAFA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8CEDE0(uint64_t a1, uint64_t a2)
{
  v2 = sub_25B946C48();
  (*(*(v2 - 8) + 16))(a2, a1);
  return a2;
}

uint64_t sub_25B8CEE44(uint64_t a1, uint64_t a2)
{
  v2 = sub_25B946C48();
  (*(*(v2 - 8) + 40))(a2, a1);
  return a2;
}

uint64_t sub_25B8CEEA8(uint64_t a1)
{
  v1 = sub_25B946C48();
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_25B8CEF04(uint64_t a1, uint64_t a2)
{
  v2 = sub_25B946C48();
  (*(*(v2 - 8) + 32))(a2, a1);
  return a2;
}

unint64_t sub_25B8CEF68()
{
  v2 = qword_27FBAAFE0;
  if (!qword_27FBAAFE0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27FBAAFE0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata accessor for NetworkInfoAssessment()
{
  v1 = qword_27FBAB060;
  if (!qword_27FBAB060)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_25B8CF040()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8CF080()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_25B8C32CC();
  return result;
}

id sub_25B8CF0CC(uint64_t a1)
{
  v4 = [v1 initWithQueue_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

uint64_t sub_25B8CF154(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  sub_25B9473C8();
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  sub_25B947638();
  __break(1u);
LABEL_12:
  result = sub_25B947618();
  __break(1u);
  return result;
}

uint64_t sub_25B8CF480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        MEMORY[0x28223BE20](v17);
        v15 = sub_25B8D2B90;
        v16 = &v37;
        sub_25B8CF154(sub_25B8D2BAC, v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      v13[0] = 2;
      sub_25B947618();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    v13[0] = 2;
    sub_25B947618();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        v13[0] = 2;
        sub_25B947618();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            v13[0] = 2;
            sub_25B947618();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    v13[0] = 2;
                    sub_25B947618();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  v13[0] = 2;
                  sub_25B947618();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                v13[0] = 2;
                sub_25B947618();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              v13[0] = 2;
              sub_25B947618();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            v13[0] = 2;
            sub_25B947618();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          v13[0] = 2;
          sub_25B947618();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        v13[0] = 2;
        sub_25B947618();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      v13[0] = 2;
      sub_25B947618();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    v13[0] = 2;
    sub_25B947638();
    __break(1u);
  }

  result = sub_25B947618();
  __break(1u);
  return result;
}

uint64_t sub_25B8CFCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_25B947618();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_25B947618();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_25B947618();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                sub_25B947618();
                __break(1u);
              }

              sub_25B947618();
              __break(1u);
            }

            sub_25B947618();
            __break(1u);
          }

          sub_25B947618();
          __break(1u);
        }

        sub_25B947618();
        __break(1u);
      }

      sub_25B947618();
      __break(1u);
    }

    sub_25B947618();
    __break(1u);
  }

  result = sub_25B947618();
  __break(1u);
  return result;
}

uint64_t sub_25B8D0298()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D02D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D0370()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D03B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D03F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D0430(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_25B8D0464()
{
  v2 = qword_27FBAAFF8;
  if (!qword_27FBAAFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAAFF0, &unk_25B94A9A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAAFF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8D04EC()
{
  v2 = qword_27FBAB008;
  if (!qword_27FBAB008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB000, &qword_25B94A9B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB008);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8D060C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D064C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D068C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_25B8D06CC()
{
  v2 = qword_27FBAB018;
  if (!qword_27FBAB018)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB018);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8D0744()
{
  v2 = qword_27FBAB020;
  if (!qword_27FBAB020)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB020);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8D07BC()
{
  v3 = *(sub_25B946B48() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_25B8D0888@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25B946B48();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_25B8C3480(v3, a1);
}

uint64_t sub_25B8D08FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D093C()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_25B946B48();
  v1 = sub_25B8D0998();

  return sub_25B889718(v5, v3, v4, v1);
}

unint64_t sub_25B8D0998()
{
  v2 = qword_27FBAB028;
  if (!qword_27FBAB028)
  {
    sub_25B946B48();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB028);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8D0AB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D0AF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D0B88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D0BC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D0C08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D0CC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D0DA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D0DE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D0E78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D0EB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D0EF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D0F38()
{
  v3 = *(sub_25B946B48() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_25B8D1004()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D10DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D111C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D11B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D11F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D1234()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D12EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D13C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D1404()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D149C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D14DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D151C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D15F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D1634()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D16B4()
{
  _Block_release(*(v0 + 16));
  MEMORY[0x277D82BD8](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_25B8D1704()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_25B88B7A0;

  return sub_25B8C3570(v6, v5);
}

uint64_t sub_25B8D187C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D18BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D18FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D19D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D1A14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D1A54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D1A94(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_25B88B7A0;

  return sub_25B8C9AA0(a1, a2, v8, v9, v10);
}

uint64_t sub_25B8D1B74(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  v12 = *(v2 + 48);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_25B88B7A0;

  return sub_25B8CCE64(a1, a2, v8, v9, v10, v11, v12);
}

unint64_t sub_25B8D1C84()
{
  v2 = qword_27FBAB058;
  if (!qword_27FBAB058)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB058);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8D1D94(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFA)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 5) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 250;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 6;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_25B8D1EFC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFA)
  {
    v5 = ((a3 + 5) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFA)
  {
    v4 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_25B8D210C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_25B8D2274(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_25B8D24BC()
{
  v2 = sub_25B946C48();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t dispatch thunk of NetworkInfoAssessment.run()()
{
  v6 = v1;
  *(v1 + 16) = v1;
  v2 = *((*v0 & *MEMORY[0x277D85000]) + 0x110);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_25B8A4CA0;

  return v7();
}

unint64_t sub_25B8D279C()
{
  v2 = qword_27FBAB070;
  if (!qword_27FBAB070)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB070);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8D2830()
{
  v2 = qword_27FBAB078;
  if (!qword_27FBAB078)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB078);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8D28C4()
{
  v2 = qword_27FBAB080;
  if (!qword_27FBAB080)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB080);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8D2958()
{
  v2 = qword_27FBAB088;
  if (!qword_27FBAB088)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB088);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8D29EC()
{
  v2 = qword_27FBAB090;
  if (!qword_27FBAB090)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB090);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8D2A80()
{
  v2 = qword_27FBAB098;
  if (!qword_27FBAB098)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB098);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8D2AFC()
{
  v2 = qword_27FBAB0A8;
  if (!qword_27FBAB0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAADA0, &unk_25B949920);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB0A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8D2C18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D2CDC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D2D1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D2DB4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_25B8D2DF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D2E3C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D2E7C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_25B8D2EF0();
  v5 = MEMORY[0x277D84CC0];

  return sub_25B8A34EC(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_25B8D2EF0()
{
  v2 = qword_27FBAB0B8;
  if (!qword_27FBAB0B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB0B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8D2F68()
{
  v2 = qword_27FBAB0C0;
  if (!qword_27FBAB0C0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27FBAB0C0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_25B8D2FCC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v0[4]);
  v2 = v0[6];

  v3 = v0[8];

  MEMORY[0x277D82BD8](v0[10]);
  return swift_deallocObject();
}

uint64_t sub_25B8D303C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v12 = *(v1 + 48);
  v13 = *(v1 + 56);
  v14 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25B88B7A0;

  return sub_25B8CE678(a1, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_25B8D3168()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_25B8D31B0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25B88B7A0;

  return sub_25B8A317C(a1, v6);
}

uint64_t sub_25B8D339C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D33DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D3474()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D34B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D34F4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v0[4]);
  MEMORY[0x277D82BD8](v0[6]);
  return swift_deallocObject();
}

uint64_t sub_25B8D3554(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 44);
  v11 = *(v1 + 48);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25B88B7A0;

  return sub_25B8CBDC8(a1, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_25B8D371C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D375C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D37F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D3834()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8D3874()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v0[4]);
  MEMORY[0x277D82BD8](v0[8]);
  return swift_deallocObject();
}

uint64_t sub_25B8D38D4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 56);
  v11 = *(v1 + 64);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25B8D39E4;

  return sub_25B8CB864(a1, v6, v7, v8, v9, *(&v9 + 1), v10, v11);
}

uint64_t sub_25B8D39E4()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

unint64_t sub_25B8D3B4C()
{
  v2 = qword_27FBAB0E0;
  if (!qword_27FBAB0E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB0E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8D3C04()
{
  v2 = qword_27FBAB0E8;
  if (!qword_27FBAB0E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB0E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8D3CC0()
{
  sub_25B947838();
  *v0 = "type";
  *(v0 + 8) = 4;
  *(v0 + 16) = 2;
  *(v0 + 24) = "errorMessage";
  *(v0 + 32) = 12;
  *(v0 + 40) = 2;
  sub_25B8860FC();
  v4 = sub_25B947658();

  if (!v4)
  {
    v3 = 0;
LABEL_6:

    return v3;
  }

  if (v4 == 1)
  {
    v3 = 1;
    goto LABEL_6;
  }

  return 2;
}

uint64_t sub_25B8D3DF4()
{
  sub_25B946ED8();
  v2 = sub_25B8D3CC0();

  if (v2 == 2)
  {
    return 2;
  }

  else
  {
    return v2 & 1;
  }
}

uint64_t sub_25B8D4074@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_25B8D3CC0();
  *a2 = result;
  return result;
}

uint64_t sub_25B8D40AC@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_25B8D3E98();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25B8D4104@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25B8D3DF4();
  *a1 = result;
  return result;
}

uint64_t TCPConnectionState.encode(to:)(uint64_t a1)
{
  v39 = a1;
  v59 = 0;
  v58 = 0;
  v56 = 0;
  v57 = 0;
  v52 = 0;
  v53 = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB110, &qword_25B94AF70);
  v41 = *(v40 - 8);
  v42 = v40 - 8;
  v43 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v45 = v12 - v43;
  v59 = v12 - v43;
  v58 = MEMORY[0x28223BE20](v39);
  v44 = *v1;
  v48 = v1[1];
  v56 = v44;
  v57 = v48;
  v46 = v58[3];
  v47 = v58[4];
  __swift_project_boxed_opaque_existential_1(v58, v46);
  sub_25B8D4D90();
  sub_25B9479C8();
  if (v48)
  {
    if (v48 == 1)
    {
      sub_25B946F48();
      v7 = v38;
      v22 = v8;
      v54 = 0;
      sub_25B947738();
      v23 = v7;
      v24 = v7;
      if (!v7)
      {

        v32 = v23;
        goto LABEL_14;
      }

      v13 = v24;

      result = (*(v41 + 8))(v45, v40);
      v17 = v13;
    }

    else if (v48 == 2)
    {
      sub_25B946F48();
      v9 = v38;
      v19 = v10;
      v55 = 0;
      sub_25B947738();
      v20 = v9;
      v21 = v9;
      if (!v9)
      {

        v32 = v20;
        goto LABEL_14;
      }

      v12[1] = v21;

      return (*(v41 + 8))(v45, v40);
    }

    else
    {
      v36 = v44;
      v37 = v48;
      v28 = v48;
      v27 = v44;
      sub_25B946ED8();
      v52 = v27;
      v53 = v28;
      sub_25B946F48();
      v4 = v38;
      v29 = v5;
      v51 = 0;
      sub_25B947738();
      v30 = v4;
      v31 = v4;
      if (v4)
      {
        v15 = v31;

        result = (*(v41 + 8))(v45, v40);
        v17 = v15;
      }

      else
      {

        v6 = v30;
        v50 = 1;
        sub_25B947738();
        v25 = v6;
        v26 = v6;
        if (!v6)
        {

          v32 = v25;
          goto LABEL_14;
        }

        v14 = v26;

        result = (*(v41 + 8))(v45, v40);
        v17 = v14;
      }
    }
  }

  else
  {
    sub_25B946F48();
    v2 = v38;
    v33 = v3;
    v49 = 0;
    sub_25B947738();
    v34 = v2;
    v35 = v2;
    if (!v2)
    {

      v32 = v34;
LABEL_14:
      v18 = v32;
      return (*(v41 + 8))(v45, v40);
    }

    v16 = v35;

    result = (*(v41 + 8))(v45, v40);
    v17 = v16;
  }

  return result;
}

uint64_t sub_25B8D477C@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC11NetworkInfo8TCPProbe_logger;
  v2 = sub_25B946C48();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_25B8D47F0()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo8TCPProbe_metrics);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8D4860(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC11NetworkInfo8TCPProbe_metrics);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_25B8D4964()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo8TCPProbe_dispatchQueue);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8D49D4(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC11NetworkInfo8TCPProbe_dispatchQueue);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

char *TCPProbe.init(metrics:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v13 = a1;
  v12 = a2;
  sub_25B946F48();
  sub_25B946F48();
  sub_25B946C28();
  *OBJC_IVAR____TtC11NetworkInfo8TCPProbe_metrics = 0;
  *&v14[OBJC_IVAR____TtC11NetworkInfo8TCPProbe_dispatchQueue] = 0;
  MEMORY[0x277D82BE0](a1);
  v5 = &v14[OBJC_IVAR____TtC11NetworkInfo8TCPProbe_metrics];
  swift_beginAccess();
  v2 = *v5;
  *v5 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  v6 = v14;
  MEMORY[0x277D82BE0](a2);
  v7 = &v6[OBJC_IVAR____TtC11NetworkInfo8TCPProbe_dispatchQueue];
  swift_beginAccess();
  v3 = *v7;
  *v7 = a2;
  MEMORY[0x277D82BD8](v3);
  swift_endAccess();
  v11.receiver = v14;
  v11.super_class = type metadata accessor for TCPProbe();
  v10 = objc_msgSendSuper2(&v11, sel_init);
  MEMORY[0x277D82BE0](v10);
  v14 = v10;
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v14);
  return v10;
}

unint64_t sub_25B8D4D14()
{
  v2 = qword_27FBAB100;
  if (!qword_27FBAB100)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB100);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8D4D90()
{
  v2 = qword_27FBAB108;
  if (!qword_27FBAB108)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB108);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for TCPProbe()
{
  v1 = qword_27FBAB158;
  if (!qword_27FBAB158)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_25B8D4E80(uint64_t a1, uint64_t a2)
{
  v3[29] = v2;
  v3[28] = a2;
  v3[27] = a1;
  v3[20] = v3;
  v3[10] = 0;
  v3[11] = 0;
  v3[21] = 0;
  v3[22] = 0;
  v3[24] = 0;
  v3[25] = 0;
  v4 = sub_25B946B98();
  v3[30] = v4;
  v14 = *(v4 - 8);
  v3[31] = v14;
  v5 = *(v14 + 64) + 15;
  v3[32] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB120, &qword_25B94AF80) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v7 = *(*(sub_25B946BB8() - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v8 = sub_25B946BD8();
  v3[35] = v8;
  v15 = *(v8 - 8);
  v3[36] = v15;
  v9 = *(v15 + 64) + 15;
  v3[37] = swift_task_alloc();
  v10 = sub_25B946D38();
  v3[38] = v10;
  v16 = *(v10 - 8);
  v3[39] = v16;
  v17 = *(v16 + 64);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v11 = sub_25B946D08();
  v3[43] = v11;
  v18 = *(v11 - 8);
  v3[44] = v18;
  v19 = *(v18 + 64);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[10] = a1;
  v3[11] = a2;
  v3[21] = v2;
  v12 = v3[20];

  return MEMORY[0x2822009F8](sub_25B8D51B0, 0);
}

uint64_t sub_25B8D51B0()
{
  v78 = v0;
  v75 = v0[42];
  v74 = v0[28];
  v73 = v0[27];
  v0[20] = v0;
  sub_25B946ED8();
  v0[12] = v73;
  v0[13] = v74;
  v0[14] = sub_25B946F48();
  v0[15] = v1;
  sub_25B8D5FC8();
  sub_25B8D5FB0();
  v76 = sub_25B947408();
  v0[47] = v76;
  sub_25B86AEEC((v0 + 14));
  v0[22] = v76;
  sub_25B946D28();
  v0[23] = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB130, &qword_25B94AF88);
  sub_25B8D6040();
  if (sub_25B9473E8())
  {
    v63 = v72[46];
    v64 = v72[45];
    v65 = v72[42];
    v66 = v72[41];
    v67 = v72[40];
    v62 = v72[38];
    v68 = v72[37];
    v60 = v72[35];
    v69 = v72[34];
    v70 = v72[33];
    v71 = v72[32];
    v53 = v72[28];
    v52 = v72[27];
    v61 = v72[39];
    v59 = v72[36];
    sub_25B946BA8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB140, &qword_25B94AF90);
    sub_25B947838();
    v56 = v2;
    v57 = *MEMORY[0x277CCA450];
    MEMORY[0x277D82BE0](*MEMORY[0x277CCA450]);
    *v56 = sub_25B946F78();
    v56[1] = v3;
    v72[16] = sub_25B947818();
    v72[17] = v4;
    v5 = sub_25B946F48();
    MEMORY[0x25F8715F0](v5);

    v72[18] = v52;
    v72[19] = v53;
    v58 = MEMORY[0x277D837D0];
    sub_25B9477F8();
    v6 = sub_25B946F48();
    MEMORY[0x25F8715F0](v6);

    v55 = v72[16];
    v54 = v72[17];
    sub_25B946ED8();
    sub_25B86AEEC((v72 + 16));
    v7 = sub_25B946FE8();
    v56[5] = v58;
    v56[2] = v7;
    v56[3] = v8;
    sub_25B8860FC();
    MEMORY[0x277D82BD8](v57);
    sub_25B946EC8();
    sub_25B8DAAF8();
    sub_25B946AE8();
    sub_25B946BC8();
    swift_willThrow();
    (*(v59 + 8))(v68, v60);
    (*(v61 + 8))(v65, v62);

    v9 = *(v72[20] + 8);
    v10 = v72[20];

    return v9();
  }

  else
  {
    v49 = v72[46];
    v50 = v72[45];
    v51 = v72[43];
    v48 = v72[44];
    sub_25B947228();
    v12 = v72[2];
    v13 = v72[3];
    v14 = v72[4];
    v47 = v72[5];
    sub_25B9474F8();

    sub_25B946D18();
    (*(v48 + 32))(v49, v50, v51);
    if (sub_25B9471E8() == 2)
    {
      v45 = v72[38];
      v44 = v72[33];
      v43 = v72[39];
      sub_25B947228();
      v15 = v72[6];
      v16 = v72[7];
      v17 = v72[8];
      v42 = v72[9];
      sub_25B9470E8();

      sub_25B946D48();
      v46 = *(v43 + 48);
      if (v46(v44, 1, v45) == 1)
      {
        v18 = v72[41];
        v41 = v72[38];
        v40 = v72[33];
        sub_25B946D28();
        if (v46(v40, 1, v41) != 1)
        {
          sub_25B8DAA50(v72[33]);
        }
      }

      else
      {
        (*(v72[39] + 32))(v72[41], v72[33], v72[38]);
      }

      (*(v72[39] + 40))(v72[42], v72[41], v72[38]);
    }

    v24 = v72[46];
    v29 = v72[45];
    v23 = v72[43];
    v26 = v72[42];
    v28 = v72[40];
    v27 = v72[38];
    v31 = v72[32];
    v33 = v72[29];
    v35 = v72[28];
    v34 = v72[27];
    v22 = v72[44];
    v25 = v72[39];
    v39 = type metadata accessor for NetworkInfoTCPConnectResult();
    v32 = NetworkInfoTCPConnectResult.__allocating_init()();
    v72[48] = v32;
    v72[24] = v32;
    sub_25B946ED8();
    sub_25B8E2738(v34, v35);
    v77[0] = 0;
    v77[1] = 2;
    sub_25B8E29D0(v77);
    sub_25B946B88();
    sub_25B946DF8();
    (*(v22 + 16))(v29, v24, v23);
    (*(v25 + 16))(v28, v26, v27);
    sub_25B946E18();
    sub_25B946E08();
    v30 = sub_25B946DA8();
    v72[49] = v30;
    v72[25] = v30;
    v36 = sub_25B946F48();
    v37 = v19;
    v72[50] = v19;

    MEMORY[0x277D82BE0](v32);
    MEMORY[0x277D82BE0](v33);
    sub_25B946ED8();
    v38 = swift_task_alloc();
    v72[51] = v38;
    v38[2] = v30;
    v38[3] = v31;
    v38[4] = v32;
    v38[5] = v33;
    v38[6] = v34;
    v38[7] = v35;
    v20 = *(MEMORY[0x277D859E0] + 4);
    v21 = swift_task_alloc();
    v72[52] = v21;
    *v21 = v72[20];
    v21[1] = sub_25B8D5BE4;

    return MEMORY[0x2822007B8](v72 + 26, 0, 0, v36, v37, sub_25B8DAA34, v38, v39);
  }
}

uint64_t sub_25B8D5BE4()
{
  v10 = *v0;
  v1 = *(*v0 + 416);
  v4 = *(*v0 + 408);
  v9 = *(*v0 + 400);
  v5 = *(*v0 + 392);
  v6 = *(*v0 + 384);
  v7 = *(*v0 + 232);
  v8 = *(*v0 + 224);
  *(v10 + 160) = *v0;

  v2 = *(v10 + 160);

  return MEMORY[0x2822009F8](sub_25B8D5DBC, 0);
}

uint64_t sub_25B8D5DBC()
{
  v1 = v0[49];
  v7 = v0[48];
  v12 = v0[47];
  v13 = v0[46];
  v14 = v0[45];
  v10 = v0[44];
  v11 = v0[43];
  v15 = v0[42];
  v16 = v0[41];
  v17 = v0[40];
  v8 = v0[39];
  v9 = v0[38];
  v18 = v0[37];
  v19 = v0[34];
  v20 = v0[33];
  v21 = v0[32];
  v5 = v0[31];
  v6 = v0[30];
  v0[20] = v0;
  v22 = v0[26];

  (*(v5 + 8))(v21, v6);
  MEMORY[0x277D82BD8](v7);
  (*(v8 + 8))(v15, v9);
  (*(v10 + 8))(v13, v11);

  v2 = *(v0[20] + 8);
  v3 = v0[20];

  return v2(v22);
}

unint64_t sub_25B8D5FC8()
{
  v2 = qword_27FBAB128;
  if (!qword_27FBAB128)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB128);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8D6040()
{
  v2 = qword_27FBAB138;
  if (!qword_27FBAB138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB130, &qword_25B94AF88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB138);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8D60C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v62 = a1;
  v48 = a2;
  v58 = a3;
  v78 = a4;
  v90 = a5;
  v56 = a6;
  v57 = a7;
  v89 = sub_25B8DB698;
  v49 = &unk_25B94B1C8;
  v50 = "Fatal error";
  v51 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v52 = "NetworkInfo/TCPProbe.swift";
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v92 = 0;
  v93 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB180, &qword_25B94AF00);
  v53 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v54 = &v39 - v53;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB188, &qword_25B94B1B8);
  v81 = *(v85 - 8);
  v82 = v85 - 8;
  v67 = v81;
  v68 = *(v81 + 64);
  v55 = (v68 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v85);
  v84 = &v39 - v55;
  v75 = sub_25B946B98();
  v71 = *(v75 - 8);
  v72 = v75 - 8;
  v65 = v71;
  v66 = v71[8];
  v59 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v75);
  v74 = &v39 - v59;
  v98 = v62;
  v97 = a2;
  v96 = v9;
  v95 = v10;
  v94 = v11;
  v92 = v12;
  v93 = v13;
  v60 = v71[2];
  v61 = v71 + 2;
  v60();
  MEMORY[0x277D82BE0](v78);

  v63 = *(v81 + 16);
  v64 = v81 + 16;
  v63(v84, v62, v85);
  v69 = *(v65 + 20);
  v73 = (v69 + 16) & ~v69;
  v79 = (v73 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
  v70 = *(v67 + 80);
  v83 = (v80 + 8 + v70) & ~v70;
  v88 = swift_allocObject();
  v76 = v71[4];
  v77 = v71 + 4;
  v76(v88 + v73, v74, v75);
  v14 = v80;
  v15 = v81;
  v16 = v83;
  v17 = v84;
  v18 = v85;
  v19 = v88;
  *(v88 + v79) = v78;
  *(v19 + v14) = a2;
  v86 = *(v15 + 32);
  v87 = v15 + 32;
  v86(v19 + v16, v17, v18);
  sub_25B946D98();
  v91 = sub_25B8D4964();
  if (v91)
  {
    v47 = v91;
  }

  else
  {
    sub_25B947618();
    __break(1u);
  }

  v39 = v47;
  sub_25B946DC8();
  MEMORY[0x277D82BD8](v39);
  v45 = 0;
  v20 = sub_25B9472A8();
  (*(*(v20 - 8) + 56))(v54, 1);
  MEMORY[0x277D82BE0](v78);
  (v60)(v74, v58, v75);
  MEMORY[0x277D82BE0](v90);
  sub_25B946ED8();

  v63(v84, v62, v85);
  v40 = (v69 + 40) & ~v69;
  v44 = (v40 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 8 + v70) & ~v70;
  v21 = swift_allocObject();
  v22 = v78;
  v23 = v40;
  v24 = v74;
  v25 = v75;
  v26 = v76;
  v46 = v21;
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v22;
  v26(v21 + v23, v24, v25);
  v27 = v41;
  v28 = v56;
  v29 = v57;
  v30 = v48;
  v31 = v42;
  v32 = v43;
  v33 = v84;
  v34 = v85;
  v35 = v86;
  v36 = v46;
  *(v46 + v44) = v90;
  v37 = (v36 + v27);
  *v37 = v28;
  v37[1] = v29;
  *(v36 + v31) = v30;
  v35(v36 + v32, v33, v34);
  sub_25B8DA2CC(v45, v45, v54, v49, v46, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_25B8D68AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v147 = a1;
  v148 = a2;
  v149 = a3;
  v145 = a4;
  v146 = a5;
  v97 = "Fatal error";
  v98 = "Double value cannot be converted to UInt32 because it is either infinite or NaN";
  v99 = "Swift/IntegerTypes.swift";
  v100 = "Double value cannot be converted to UInt32 because the result would be less than UInt32.min";
  v101 = "Double value cannot be converted to UInt32 because the result would be greater than UInt32.max";
  v198 = 0;
  v197 = 0;
  v196 = 0;
  v195 = 0;
  v194 = 0;
  v193 = 0;
  v192 = 0;
  v191 = 0;
  v202 = 0;
  v190 = 0.0;
  v187 = 0.0;
  v183 = 0;
  v184 = 0;
  v181 = 0;
  v182 = 0;
  v179 = 0;
  v180 = 0;
  v177 = 0;
  v178 = 0;
  v201 = 0;
  v171 = 0;
  v172 = 0;
  v159 = 0;
  v160 = 0;
  v199 = 0;
  v200 = 0;
  v155 = 0;
  v156 = 0;
  v137 = 0;
  v102 = sub_25B946E48();
  v103 = *(v102 - 8);
  v104 = v102 - 8;
  v105 = (*(v103 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v106 = v48 - v105;
  v202 = v48 - v105;
  v107 = sub_25B946D58();
  v108 = *(v107 - 8);
  v109 = v107 - 8;
  v110 = (*(v108 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v107);
  v111 = v48 - v110;
  v112 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB1A0, &qword_25B94B1F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v137);
  v113 = v48 - v112;
  v114 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v115 = v48 - v114;
  v201 = v48 - v114;
  v116 = sub_25B946D38();
  v117 = *(v116 - 8);
  v118 = v116 - 8;
  v119 = (*(v117 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v137);
  v120 = v48 - v119;
  v200 = v48 - v119;
  v121 = sub_25B946D08();
  v122 = *(v121 - 8);
  v123 = v121 - 8;
  v124 = (*(v122 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v121);
  v125 = v48 - v124;
  v199 = v48 - v124;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB1A8, &qword_25B94B200);
  v126 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v7);
  v127 = v48 - v126;
  v128 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v129 = v48 - v128;
  v130 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB1B0, &qword_25B94B208) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v137);
  v131 = v48 - v130;
  v132 = sub_25B946E38();
  v133 = *(v132 - 8);
  v134 = v132 - 8;
  v135 = (*(v133 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v137);
  v136 = v48 - v135;
  v198 = v48 - v135;
  v138 = sub_25B946B98();
  v139 = *(v138 - 8);
  v140 = v138 - 8;
  v141 = (*(v139 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v137);
  v142 = v48 - v141;
  v197 = v48 - v141;
  v143 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v144 = v48 - v143;
  v196 = v48 - v143;
  v152 = sub_25B946DB8();
  v150 = *(v152 - 8);
  v151 = v152 - 8;
  v12 = (*(v150 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v152);
  v153 = v48 - v13;
  v195 = v14;
  v194 = v148;
  v193 = v149;
  v192 = v15;
  v191 = v16;
  (*(v150 + 16))();
  result = (*(v150 + 88))(v153, v152);
  v154 = result;
  if (result == *MEMORY[0x277CD8DE8])
  {
    (*(v150 + 96))(v153, v152);
    return (*(v103 + 8))(v153, v102);
  }

  if (v154 == *MEMORY[0x277CD8DE0])
  {
    (*(v150 + 96))(v153, v152);
    (*(v103 + 32))(v106, v153, v102);
    v202 = v106;
    sub_25B946B88();
    sub_25B946B58();
    v49 = v46 * 1000.0;
    v190 = v46 * 1000.0;
    sub_25B8DC85C();
    v189[0] = sub_25B9478F8();
    v189[1] = v47;
    sub_25B8E29D0(v189);
    if (((*&v49 >> 52) & 0x7FFLL) == 0x7FF)
    {
      sub_25B947618();
      __break(1u);
    }

    if (v49 <= -1.0)
    {
      sub_25B947618();
      __break(1u);
    }

    if (v49 >= 4294967300.0)
    {
      sub_25B947618();
      __break(1u);
    }

    sub_25B8E2C1C(v49);
    sub_25B946DD8();
    MEMORY[0x277D82BE0](v149);
    v48[1] = &v188;
    v188 = v149;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB188, &qword_25B94B1B8);
    sub_25B947258();
    (*(v139 + 8))(v142, v138);
    return (*(v103 + 8))(v106, v102);
  }

  else if (v154 != *MEMORY[0x277CD8DD8] && v154 != *MEMORY[0x277CD8DF8])
  {
    if (v154 != *MEMORY[0x277CD8DD0])
    {
      if (v154 != *MEMORY[0x277CD8DF0])
      {
        return (*(v150 + 8))(v153, v152);
      }

      return result;
    }

    sub_25B946B88();
    sub_25B946B58();
    v96 = v18 * 1000.0;
    v187 = v18 * 1000.0;
    v186[0] = 0;
    v186[1] = 0;
    sub_25B8E29D0(v186);
    if (((*&v96 >> 52) & 0x7FFLL) == 0x7FF)
    {
      sub_25B947618();
      __break(1u);
    }

    if (v96 <= -1.0)
    {
      sub_25B947618();
      __break(1u);
    }

    if (v96 >= 4294967300.0)
    {
      sub_25B947618();
      __break(1u);
    }

    sub_25B8E2C1C(v96);
    sub_25B946D88();
    if ((*(v133 + 48))(v131, 1, v132) == 1)
    {
      sub_25B8DC8DC(v131);
LABEL_32:
      sub_25B946DD8();
      MEMORY[0x277D82BE0](v149);
      v50 = &v185;
      v185 = v149;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB188, &qword_25B94B1B8);
      sub_25B947258();
      return (*(v139 + 8))(v144, v138);
    }

    (*(v133 + 32))(v136, v131, v132);
    sub_25B946E28();
    if (!(*(v108 + 48))(v129, 1, v107))
    {
      sub_25B8DCA2C(v129, v127);
      v95 = (*(v108 + 88))(v127, v107);
      if (v95 == *MEMORY[0x277CD8B08])
      {
        (*(v108 + 96))(v127, v107);
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB1C8, &qword_25B94B218);
        v84 = &v127[*(v19 + 48)];
        (*(v122 + 32))(v125);
        (*(v117 + 32))(v120, v84, v116);
        v199 = v125;
        v200 = v120;
        v86 = 1;
        v20 = sub_25B947818();
        v92 = &v157;
        v157 = v20;
        v158 = v21;
        v88 = "";
        v89 = 0;
        v90 = 1;
        v22 = sub_25B946F48();
        v85 = v23;
        MEMORY[0x25F8715F0](v22);

        sub_25B9477D8();
        v24 = sub_25B946F48();
        v87 = v25;
        MEMORY[0x25F8715F0](v24);

        sub_25B9477D8();
        v26 = sub_25B946F48();
        v91 = v27;
        MEMORY[0x25F8715F0](v26);

        v94 = v157;
        v93 = v158;
        sub_25B946ED8();
        sub_25B86AEEC(v92);
        v155 = sub_25B946FE8();
        v156 = v28;
        sub_25B8E2E5C(v155, v28);
        (*(v117 + 8))(v120, v116);
        (*(v122 + 8))(v125, v121);
        sub_25B8DC984(v129);
LABEL_31:
        (*(v133 + 8))(v136, v132);
        goto LABEL_32;
      }

      if (v95 == *MEMORY[0x277CD8B00])
      {
        (*(v108 + 96))(v127, v107);
        v75 = *v127;
        v76 = *(v127 + 1);
        v77 = *(v127 + 2);
        v78 = *(v127 + 3);
        v79 = *(v127 + 4);
        v80 = *(v127 + 5);
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB1C0, &qword_25B94B210);
        sub_25B8DCB54(&v127[*(v29 + 80)], v115);
        v181 = v75;
        v182 = v76;
        v179 = v77;
        v180 = v78;
        v177 = v79;
        v178 = v80;
        v201 = v115;
        sub_25B8DCC7C(v115, v113);
        v81 = sub_25B946D78();
        v82 = *(v81 - 8);
        v83 = v81 - 8;
        if ((*(v82 + 48))(v113, 1) == 1)
        {
          sub_25B8DCDA4(v113);
          v73 = 0;
          v74 = 0;
        }

        else
        {
          v71 = sub_25B946D68();
          v72 = v30;
          (*(v82 + 8))(v113, v81);
          v73 = v71;
          v74 = v72;
        }

        v173 = v73;
        v174 = v74;
        if (v74)
        {
          v175 = v173;
          v176 = v174;
        }

        else
        {
          v175 = sub_25B946F48();
          v176 = v31;
          if (v174)
          {
            sub_25B86AEEC(&v173);
          }
        }

        v59 = v175;
        v70 = v176;
        v171 = v175;
        v172 = v176;
        v32 = sub_25B947818();
        v67 = &v169;
        v169 = v32;
        v170 = v33;
        v63 = "";
        v64 = 0;
        v65 = 1;
        v34 = sub_25B946F48();
        v53 = v35;
        MEMORY[0x25F8715F0](v34);

        v167 = v75;
        v168 = v76;
        v60 = MEMORY[0x277D837D0];
        v61 = MEMORY[0x277D83838];
        v62 = MEMORY[0x277D83830];
        sub_25B9477F8();
        v55 = ".";
        v57 = 1;
        v36 = sub_25B946F48();
        v54 = v37;
        MEMORY[0x25F8715F0](v36);

        v165 = v77;
        v166 = v78;
        sub_25B9477F8();
        v38 = sub_25B946F48();
        v56 = v39;
        MEMORY[0x25F8715F0](v38);

        v163 = v79;
        v164 = v80;
        sub_25B9477F8();
        v40 = sub_25B946F48();
        v58 = v41;
        MEMORY[0x25F8715F0](v40);

        v161 = v59;
        v162 = v70;
        sub_25B9477F8();
        v42 = sub_25B946F48();
        v66 = v43;
        MEMORY[0x25F8715F0](v42);

        v69 = v169;
        v68 = v170;
        sub_25B946ED8();
        sub_25B86AEEC(v67);
        v159 = sub_25B946FE8();
        v160 = v44;
        sub_25B8E2E5C(v159, v44);

        sub_25B8DCDA4(v115);

        sub_25B8DC984(v129);
        goto LABEL_31;
      }

      (*(v108 + 8))(v127, v107);
    }

    sub_25B946DE8();
    v51 = sub_25B946CF8();
    v52 = v45;
    v183 = v51;
    v184 = v45;
    (*(v108 + 8))(v111, v107);
    sub_25B8E2E5C(v51, v52);
    sub_25B8DC984(v129);
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_25B8D7DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = v27;
  v8[23] = v26;
  v8[22] = a8;
  v8[21] = a7;
  v8[20] = a6;
  v8[19] = a5;
  v8[18] = a4;
  v8[9] = v8;
  v8[10] = 0;
  v8[11] = 0;
  v8[12] = 0;
  v8[5] = 0;
  v8[6] = 0;
  v8[13] = 0;
  v8[14] = 0;
  v8[16] = 0;
  v9 = sub_25B946C48();
  v8[25] = v9;
  v17 = *(v9 - 8);
  v8[26] = v17;
  v10 = *(v17 + 64) + 15;
  v8[27] = swift_task_alloc();
  v11 = sub_25B946B98();
  v8[28] = v11;
  v18 = *(v11 - 8);
  v8[29] = v18;
  v12 = *(v18 + 64) + 15;
  v8[30] = swift_task_alloc();
  v13 = sub_25B9475C8();
  v8[31] = v13;
  v19 = *(v13 - 8);
  v8[32] = v19;
  v14 = *(v19 + 64) + 15;
  v8[33] = swift_task_alloc();
  v8[10] = a4;
  v8[11] = a5;
  v8[12] = a6;
  v8[5] = a7;
  v8[6] = a8;
  v8[13] = v26;
  v8[14] = v27;
  v15 = v8[9];

  return MEMORY[0x2822009F8](sub_25B8D804C, 0);
}

uint64_t sub_25B8D804C()
{
  v6 = *(v0 + 264);
  v7 = *(v0 + 248);
  *(v0 + 72) = v0;
  *(v0 + 120) = 3;
  sub_25B8DBF4C();
  *(v0 + 56) = sub_25B9479E8();
  *(v0 + 64) = v1;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v9 = sub_25B8DBFC4();
  sub_25B8DA030();
  v2 = swift_task_alloc();
  v8[34] = v2;
  *v2 = v8[9];
  v2[1] = sub_25B8D81C8;
  v3 = v8[33];
  v4 = v8[31];

  return sub_25B8DA054(v0 + 56, v0 + 16, v3, v4, v9);
}

uint64_t sub_25B8D81C8()
{
  v7 = *v1;
  v2 = *(*v1 + 272);
  v7[9] = *v1;
  v8 = v7 + 9;
  v7[35] = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = sub_25B8D91B4;
  }

  else
  {
    (*(v7[32] + 8))(v7[33], v7[31]);
    v3 = *v8;
    v4 = sub_25B8D8360;
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t sub_25B8D8360()
{
  v56 = v0;
  v0[9] = v0;
  v47 = v0[35];
  v1 = v0[18];
  sub_25B8E294C(&v48);
  if (v49 == 2)
  {
    v2 = *(v46 + 240);
    v43 = *(v46 + 152);
    v44 = *(v46 + 144);
    sub_25B946B88();
    sub_25B946B58();
    v45 = v3 * 1000.0;
    *(v46 + 128) = v3 * 1000.0;
    v50[0] = 0;
    v50[1] = 1;
    sub_25B8E29D0(v50);
    if (((*&v45 >> 52) & 0x7FFLL) == 0x7FF || v45 <= -1.0 || v45 >= 4294967300.0)
    {
      return sub_25B947618();
    }

    v24 = *(v46 + 216);
    v27 = *(v46 + 200);
    v29 = *(v46 + 176);
    v28 = *(v46 + 168);
    v25 = *(v46 + 160);
    v5 = *(v46 + 144);
    v26 = *(v46 + 208);
    sub_25B8E2C1C(v45);
    (*(v26 + 16))(v24, v25 + OBJC_IVAR____TtC11NetworkInfo8TCPProbe_logger, v27);
    sub_25B946ED8();
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = v29;
    v32 = swift_allocObject();
    *(v32 + 16) = v45;
    oslog = sub_25B946C18();
    v42 = sub_25B947448();
    v34 = swift_allocObject();
    *(v34 + 16) = 32;
    v35 = swift_allocObject();
    *(v35 + 16) = 8;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_25B8994FC;
    *(v31 + 24) = v30;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_25B88B668;
    *(v36 + 24) = v31;
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    v38 = swift_allocObject();
    *(v38 + 16) = 8;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_25B8DC0EC;
    *(v33 + 24) = v32;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_25B8DC798;
    *(v39 + 24) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    sub_25B947838();
    v40 = v6;

    *v40 = sub_25B88B5F4;
    v40[1] = v34;

    v40[2] = sub_25B88B5F4;
    v40[3] = v35;

    v40[4] = sub_25B88B6B4;
    v40[5] = v36;

    v40[6] = sub_25B88B5F4;
    v40[7] = v37;

    v40[8] = sub_25B88B5F4;
    v40[9] = v38;

    v40[10] = sub_25B8DC850;
    v40[11] = v39;
    sub_25B8860FC();

    if (os_log_type_enabled(oslog, v42))
    {
      buf = sub_25B9474D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v22 = sub_25B8895FC(0);
      v23 = sub_25B8895FC(1);
      v51 = buf;
      v52 = v22;
      v53 = v23;
      sub_25B889650(2, &v51);
      sub_25B889650(2, &v51);
      v54 = sub_25B88B5F4;
      v55 = v34;
      sub_25B889664(&v54, &v51, &v52, &v53);
      if (v47)
      {
      }

      v54 = sub_25B88B5F4;
      v55 = v35;
      sub_25B889664(&v54, &v51, &v52, &v53);
      v54 = sub_25B88B6B4;
      v55 = v36;
      sub_25B889664(&v54, &v51, &v52, &v53);
      v54 = sub_25B88B5F4;
      v55 = v37;
      sub_25B889664(&v54, &v51, &v52, &v53);
      v54 = sub_25B88B5F4;
      v55 = v38;
      sub_25B889664(&v54, &v51, &v52, &v53);
      v54 = sub_25B8DC850;
      v55 = v39;
      sub_25B889664(&v54, &v51, &v52, &v53);
      _os_log_impl(&dword_25B859000, oslog, v42, "TCP connection to %s timed out after %f ms", buf, 0x16u);
      sub_25B8896B0(v22);
      sub_25B8896B0(v23);
      sub_25B9474B8();
    }

    else
    {
    }

    v19 = *(v46 + 240);
    v20 = *(v46 + 224);
    v14 = *(v46 + 216);
    v15 = *(v46 + 200);
    v16 = *(v46 + 192);
    v7 = *(v46 + 184);
    v17 = *(v46 + 144);
    v18 = *(v46 + 232);
    v13 = *(v46 + 208);
    MEMORY[0x277D82BD8](oslog);
    (*(v13 + 8))(v14, v15);
    sub_25B946DD8();
    MEMORY[0x277D82BE0](v17);
    *(v46 + 136) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB188, &qword_25B94B1B8);
    sub_25B947258();
    (*(v18 + 8))(v19, v20);
  }

  else
  {
    sub_25B8DC044(v48, v49);
  }

  v8 = *(v46 + 264);
  v11 = *(v46 + 240);
  v12 = *(v46 + 216);

  v9 = *(*(v46 + 72) + 8);
  v10 = *(v46 + 72);

  return v9();
}

uint64_t sub_25B8D91B4()
{
  v59 = v0;
  v50 = v0[35];
  v1 = v0[33];
  v2 = v0[32];
  v3 = v0[31];
  v0[9] = v0;
  (*(v2 + 8))(v1, v3);

  v4 = v0[18];
  sub_25B8E294C(&v51);
  if (v52 == 2)
  {
    v5 = *(v49 + 240);
    v46 = *(v49 + 152);
    v47 = *(v49 + 144);
    sub_25B946B88();
    sub_25B946B58();
    v48 = v6 * 1000.0;
    *(v49 + 128) = v6 * 1000.0;
    v53[0] = 0;
    v53[1] = 1;
    sub_25B8E29D0(v53);
    if (((*&v48 >> 52) & 0x7FFLL) == 0x7FF || v48 <= -1.0 || v48 >= 4294967300.0)
    {
      return sub_25B947618();
    }

    v27 = *(v49 + 216);
    v30 = *(v49 + 200);
    v32 = *(v49 + 176);
    v31 = *(v49 + 168);
    v28 = *(v49 + 160);
    v8 = *(v49 + 144);
    v29 = *(v49 + 208);
    sub_25B8E2C1C(v48);
    (*(v29 + 16))(v27, v28 + OBJC_IVAR____TtC11NetworkInfo8TCPProbe_logger, v30);
    sub_25B946ED8();
    v33 = swift_allocObject();
    *(v33 + 16) = v31;
    *(v33 + 24) = v32;
    v35 = swift_allocObject();
    *(v35 + 16) = v48;
    oslog = sub_25B946C18();
    v45 = sub_25B947448();
    v37 = swift_allocObject();
    *(v37 + 16) = 32;
    v38 = swift_allocObject();
    *(v38 + 16) = 8;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_25B8994FC;
    *(v34 + 24) = v33;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_25B88B668;
    *(v39 + 24) = v34;
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    v41 = swift_allocObject();
    *(v41 + 16) = 8;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_25B8DC0EC;
    *(v36 + 24) = v35;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_25B8DC798;
    *(v42 + 24) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBAAD60, &unk_25B94A860);
    sub_25B947838();
    v43 = v9;

    *v43 = sub_25B88B5F4;
    v43[1] = v37;

    v43[2] = sub_25B88B5F4;
    v43[3] = v38;

    v43[4] = sub_25B88B6B4;
    v43[5] = v39;

    v43[6] = sub_25B88B5F4;
    v43[7] = v40;

    v43[8] = sub_25B88B5F4;
    v43[9] = v41;

    v43[10] = sub_25B8DC850;
    v43[11] = v42;
    sub_25B8860FC();

    if (os_log_type_enabled(oslog, v45))
    {
      buf = sub_25B9474D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB50, &unk_25B94C500);
      v25 = sub_25B8895FC(0);
      v26 = sub_25B8895FC(1);
      v54 = buf;
      v55 = v25;
      v56 = v26;
      sub_25B889650(2, &v54);
      sub_25B889650(2, &v54);
      v57 = sub_25B88B5F4;
      v58 = v37;
      sub_25B889664(&v57, &v54, &v55, &v56);
      v57 = sub_25B88B5F4;
      v58 = v38;
      sub_25B889664(&v57, &v54, &v55, &v56);
      v57 = sub_25B88B6B4;
      v58 = v39;
      sub_25B889664(&v57, &v54, &v55, &v56);
      v57 = sub_25B88B5F4;
      v58 = v40;
      sub_25B889664(&v57, &v54, &v55, &v56);
      v57 = sub_25B88B5F4;
      v58 = v41;
      sub_25B889664(&v57, &v54, &v55, &v56);
      v57 = sub_25B8DC850;
      v58 = v42;
      sub_25B889664(&v57, &v54, &v55, &v56);
      _os_log_impl(&dword_25B859000, oslog, v45, "TCP connection to %s timed out after %f ms", buf, 0x16u);
      sub_25B8896B0(v25);
      sub_25B8896B0(v26);
      sub_25B9474B8();
    }

    v22 = *(v49 + 240);
    v23 = *(v49 + 224);
    v17 = *(v49 + 216);
    v18 = *(v49 + 200);
    v19 = *(v49 + 192);
    v10 = *(v49 + 184);
    v20 = *(v49 + 144);
    v21 = *(v49 + 232);
    v16 = *(v49 + 208);
    MEMORY[0x277D82BD8](oslog);
    (*(v16 + 8))(v17, v18);
    sub_25B946DD8();
    MEMORY[0x277D82BE0](v20);
    *(v49 + 136) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB188, &qword_25B94B1B8);
    sub_25B947258();
    (*(v21 + 8))(v22, v23);
  }

  else
  {
    sub_25B8DC044(v51, v52);
  }

  v11 = *(v49 + 264);
  v14 = *(v49 + 240);
  v15 = *(v49 + 216);

  v12 = *(*(v49 + 72) + 8);
  v13 = *(v49 + 72);

  return v12();
}

uint64_t sub_25B8DA054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_25B8DA140;

  return sub_25B8DC0F4(a1, a2, a4, a5);
}

uint64_t sub_25B8DA140()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(v2 + 16) = *v1;
  v6 = v2 + 16;

  if (v0)
  {
    v4 = *(*v6 + 8);
  }

  else
  {
    v4 = *(*v6 + 8);
  }

  return v4();
}

uint64_t sub_25B8DA2CC(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a1;
  v47 = a2;
  v55 = a3;
  v56 = a4;
  v57 = a5;
  v48 = a6;
  v49 = "Fatal error";
  v50 = "Unexpectedly found nil while unwrapping an Optional value";
  v51 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v52 = &unk_25B94B1D8;
  v53 = 0;
  v66 = a6;
  v54 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB180, &qword_25B94AF00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v57);
  v58 = &v15 - v54;

  v64 = v56;
  v65 = v57;
  sub_25B8A5160(v55, v58);
  v59 = sub_25B9472A8();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  if ((*(v60 + 48))(v58, 1) == 1)
  {
    sub_25B8992C8(v58);
    v45 = 0;
  }

  else
  {
    v44 = sub_25B947298();
    (*(v60 + 8))(v58, v59);
    v45 = v44;
  }

  v41 = v45 | 0x1C00;
  v43 = *(v57 + 16);
  v42 = *(v57 + 24);
  swift_unknownObjectRetain();

  if (v43)
  {
    v39 = v43;
    v40 = v42;
    v33 = v42;
    v34 = v43;
    swift_getObjectType();
    v35 = sub_25B947238();
    v36 = v6;
    swift_unknownObjectRelease();
    v37 = v35;
    v38 = v36;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v31 = v38;
  v32 = v37;
  sub_25B946ED8();
  if (v47)
  {
    v29 = v46;
    v30 = v47;
    v7 = v53;
    v26 = v47;
    v27 = sub_25B946FC8();

    v8 = *(v27 + 16);
    sub_25B8DBC08(v27 + 32, &v64, v48, &v62);
    if (v7)
    {
      __break(1u);
    }

    v25 = v62;

    v28 = v25;
  }

  else
  {
    v28 = 0;
  }

  v24 = v28;
  if (v28)
  {
    v18 = v24;
    v17 = v24;
    sub_25B8992C8(v55);

    v19 = v17;
  }

  else
  {

    sub_25B8992C8(v55);
    v20 = v64;
    v21 = v65;

    v9 = swift_allocObject();
    v10 = v20;
    v11 = v21;
    v12 = v32;
    v13 = v31;
    v22 = v9;
    v9[2] = v48;
    v9[3] = v10;
    v9[4] = v11;
    v23 = 0;
    if (v12 != 0 || v13 != 0)
    {
      v63[0] = 0;
      v63[1] = 0;
      v63[2] = v32;
      v63[3] = v31;
      v23 = v63;
    }

    v19 = swift_task_create();
  }

  v16 = v19;

  return v16;
}

id TCPProbe.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TCPProbe();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B8DAA50(uint64_t a1)
{
  v3 = sub_25B946D38();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_25B8DAAF8()
{
  v2 = qword_27FBAB148;
  if (!qword_27FBAB148)
  {
    sub_25B946BD8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB148);
    return WitnessTable;
  }

  return v2;
}

uint64_t get_enum_tag_for_layout_string_11NetworkInfo18TCPConnectionStateO(uint64_t a1)
{
  v2 = -1;
  if (*(a1 + 8) < 0x100000000uLL)
  {
    v2 = *(a1 + 8);
  }

  return (v2 + 1);
}

uint64_t sub_25B8DACB4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFC && *(a1 + 16))
    {
      v5 = *a1 + 2147483644;
    }

    else
    {
      v4 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v4 = *(a1 + 8);
      }

      v2 = v4 - 3;
      if (v4 - 3 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25B8DAE04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *result = a2 - 2147483645;
    if (a3 > 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_25B8DB064()
{
  v2 = sub_25B946C48();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t dispatch thunk of TCPProbe.probeHost(endpoint:)(uint64_t a1, uint64_t a2)
{
  v8 = v3;
  *(v3 + 16) = v3;
  v4 = *((*v2 & *MEMORY[0x277D85000]) + 0xA0);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_25B8A4CA0;

  return v10(a1, a2);
}

unint64_t sub_25B8DB30C()
{
  v2 = qword_27FBAB168;
  if (!qword_27FBAB168)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB168);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8DB3A0()
{
  v2 = qword_27FBAB170;
  if (!qword_27FBAB170)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB170);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8DB434()
{
  v2 = qword_27FBAB178;
  if (!qword_27FBAB178)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB178);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8DB4B0()
{
  v4 = sub_25B946B98();
  v5 = *(v4 - 8);
  v3 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v6 = (v3 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB188, &qword_25B94B1B8);
  v8 = *(v10 - 8);
  v9 = (v7 + 8 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = v9 + *(v8 + 64);
  (*(v5 + 8))(v0 + v3, v4);
  MEMORY[0x277D82BD8](*(v0 + v6));
  v1 = *(v0 + v7);

  (*(v8 + 8))(v0 + v9, v10);
  return swift_deallocObject();
}

uint64_t sub_25B8DB698(uint64_t a1)
{
  v7 = *(sub_25B946B98() - 8);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v8 = (v9 + *(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB188, &qword_25B94B1B8);
  v3 = *(v1 + v8);
  v4 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v5 = v1 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8 + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80));

  return sub_25B8D68AC(a1, v1 + v9, v3, v4, v5);
}

uint64_t sub_25B8DB7C0()
{
  v7 = sub_25B946B98();
  v5 = *(v7 - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v8 = (v6 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB188, &qword_25B94B1B8);
  v11 = *(v13 - 8);
  v12 = (v10 + 8 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = v12 + *(v11 + 64);
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));
  (*(v5 + 8))(v0 + v6, v7);
  MEMORY[0x277D82BD8](*(v0 + v8));
  v2 = *(v0 + v9 + 8);

  v3 = *(v0 + v10);

  (*(v11 + 8))(v0 + v12, v13);
  return swift_deallocObject();
}

uint64_t sub_25B8DB9E8(uint64_t a1)
{
  v9 = v2;
  *(v2 + 16) = v2;
  v6 = *(sub_25B946B98() - 8);
  v15 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v7 = (v15 + *(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB188, &qword_25B94B1B8);
  v11 = (((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8 + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];
  v16 = *(v1 + v7);
  v17 = *(v1 + v8);
  v18 = *(v1 + v8 + 8);
  v10 = *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  v4 = swift_task_alloc();
  *(v9 + 24) = v4;
  *v4 = *(v9 + 16);
  v4[1] = sub_25B88B7A0;

  return sub_25B8D7DB8(a1, v12, v13, v14, v1 + v15, v16, v17, v18);
}

uint64_t sub_25B8DBC08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
    sub_25B947618();
    __break(1u);
  }

  v5 = *a2;
  v6 = a2[1];

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v5;
  v7[4] = v6;
  result = swift_task_create();
  *a4 = result;
  return result;
}

uint64_t sub_25B8DBDC8()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_25B8DBE10(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_25B88B7A0;

  return sub_25B8A317C(a1, v6);
}

uint64_t sub_25B8DBF04()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

unint64_t sub_25B8DBF4C()
{
  v2 = qword_27FBAB190;
  if (!qword_27FBAB190)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB190);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8DBFC4()
{
  v2 = qword_27FBAB198;
  if (!qword_27FBAB198)
  {
    sub_25B9475C8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB198);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8DC044(uint64_t a1, unint64_t a2)
{
  if (a2 > 2)
  {
  }

  return result;
}

uint64_t sub_25B8DC080()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8DC0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = v4;
  v5[6] = a4;
  v5[5] = a3;
  v5[4] = a2;
  v5[3] = a1;
  v5[2] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[8] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v5[9] = v9;
  v10 = *(v9 + 64);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v7 = v5[2];

  return MEMORY[0x2822009F8](sub_25B8DC220, 0);
}

uint64_t sub_25B8DC220()
{
  v13 = v0[11];
  v16 = v0[10];
  v15 = v0[9];
  v17 = v0[8];
  v1 = v0[7];
  v11 = v0[6];
  v12 = v0[5];
  v14 = v0[3];
  v0[2] = v0;
  sub_25B9478C8();
  swift_getAssociatedConformanceWitness();
  sub_25B9475D8();
  v2 = *(v15 + 8);
  v0[12] = v2;
  v0[13] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v16, v17);
  v3 = *(MEMORY[0x277D85A58] + 4);
  v4 = swift_task_alloc();
  v18[14] = v4;
  *v4 = v18[2];
  v4[1] = sub_25B8DC388;
  v5 = v18[11];
  v6 = v18[7];
  v7 = v18[6];
  v8 = v18[5];
  v9 = v18[4];

  return MEMORY[0x2822008C8](v5, v9, v8, v7);
}

uint64_t sub_25B8DC388()
{
  v11 = *v1;
  v2 = *(*v1 + 112);
  *(v11 + 16) = *v1;
  v12 = (v11 + 16);
  *(v11 + 120) = v0;

  if (v0)
  {
    v3 = *(v11 + 104);
    (*(v11 + 96))(*(v11 + 88), *(v11 + 64));
    v4 = *v12;

    return MEMORY[0x2822009F8](sub_25B8DC558, 0);
  }

  else
  {
    v5 = *(v11 + 104);
    v9 = *(v11 + 88);
    v10 = *(v11 + 80);
    v6 = *(v11 + 64);
    (*(v11 + 96))();

    v7 = *(*v12 + 8);

    return v7();
  }
}

uint64_t sub_25B8DC558()
{
  v1 = v0[11];
  v7 = v0[10];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[15];

  return v3();
}

uint64_t sub_25B8DC658()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8DC698()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_25B8DC758()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *sub_25B8DC7A4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  v5 = *a1;
  sub_25B947508();
  result = a1;
  *a1 = v5 + 8;
  return result;
}

uint64_t sub_25B8DC810()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_25B8DC85C()
{
  v2 = qword_27FBAB1B8;
  if (!qword_27FBAB1B8)
  {
    sub_25B946E48();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB1B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8DC8DC(uint64_t a1)
{
  v3 = sub_25B946E38();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_25B8DC984(uint64_t a1)
{
  v3 = sub_25B946D58();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_25B8DCA2C(const void *a1, void *a2)
{
  v6 = sub_25B946D58();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB1A8, &qword_25B94B200);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_25B8DCB54(const void *a1, void *a2)
{
  v6 = sub_25B946D78();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB1A0, &qword_25B94B1F8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_25B8DCC7C(const void *a1, void *a2)
{
  v6 = sub_25B946D78();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB1A0, &qword_25B94B1F8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_25B8DCDA4(uint64_t a1)
{
  v3 = sub_25B946D78();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_25B8DCF00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8DCFF8();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8DCF6C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v5 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8DD068(v3);
  return MEMORY[0x277D82BD8](v5);
}

uint64_t sub_25B8DCFF8()
{
  v2 = (v0 + OBJC_IVAR___NetworkInfoResults_systemConfiguration);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8DD068(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___NetworkInfoResults_systemConfiguration);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_25B8DD170@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8DD254();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8DD1DC(uint64_t *a1, void *a2)
{
  sub_25B86CF68(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8DD2BC(v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8DD254()
{
  v2 = (v0 + OBJC_IVAR___NetworkInfoResults_dnsResults);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8DD2BC(uint64_t a1)
{
  sub_25B946ED8();
  v4 = (v1 + OBJC_IVAR___NetworkInfoResults_dnsResults);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_25B8DD3AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8DD490();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8DD418(uint64_t *a1, void *a2)
{
  sub_25B86CF68(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8DD4F8(v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8DD490()
{
  v2 = (v0 + OBJC_IVAR___NetworkInfoResults_pings);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8DD4F8(uint64_t a1)
{
  sub_25B946ED8();
  v4 = (v1 + OBJC_IVAR___NetworkInfoResults_pings);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_25B8DD5E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8DD6CC();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8DD654(uint64_t *a1, void *a2)
{
  sub_25B86CF68(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8DD734(v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8DD6CC()
{
  v2 = (v0 + OBJC_IVAR___NetworkInfoResults_httpFetches);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8DD734(uint64_t a1)
{
  sub_25B946ED8();
  v4 = (v1 + OBJC_IVAR___NetworkInfoResults_httpFetches);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_25B8DD824@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8DD908();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8DD890(uint64_t *a1, void *a2)
{
  sub_25B86CF68(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8DD970(v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8DD908()
{
  v2 = (v0 + OBJC_IVAR___NetworkInfoResults_traceroutes);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8DD970(uint64_t a1)
{
  sub_25B946ED8();
  v4 = (v1 + OBJC_IVAR___NetworkInfoResults_traceroutes);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_25B8DDA60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8DDB44();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8DDACC(uint64_t *a1, void *a2)
{
  sub_25B86CF68(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8DDBAC(v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8DDB44()
{
  v2 = (v0 + OBJC_IVAR___NetworkInfoResults_tcpConnects);
  swift_beginAccess();
  v3 = *v2;
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8DDBAC(uint64_t a1)
{
  sub_25B946ED8();
  v4 = (v1 + OBJC_IVAR___NetworkInfoResults_tcpConnects);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_25B8DDC9C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8DDD90();
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8DDD0C(void *a1, void *a2)
{
  sub_25B898FF0(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8DDE04(v6, v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8DDD90()
{
  v2 = (v0 + OBJC_IVAR___NetworkInfoResults_packetCaptureFilename);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8DDE04(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  v6 = (v2 + OBJC_IVAR___NetworkInfoResults_packetCaptureFilename);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_25B8DDF0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8DE000();
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8DDF7C(void *a1, void *a2)
{
  sub_25B898FF0(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8DE074(v6, v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8DE000()
{
  v2 = (v0 + OBJC_IVAR___NetworkInfoResults_droptapCaptureFilename);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8DE074(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  v6 = (v2 + OBJC_IVAR___NetworkInfoResults_droptapCaptureFilename);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

char *NetworkInfoResults.init()()
{
  v10 = 0;
  v3 = OBJC_IVAR___NetworkInfoResults_dnsResults;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB270, &unk_25B94B220);
  sub_25B947838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAADA0, &unk_25B949920);
  *v3 = sub_25B946EC8();
  v4 = OBJC_IVAR___NetworkInfoResults_pings;
  type metadata accessor for NetworkInfoPingResult();
  *&v10[v4] = sub_25B947838();
  v5 = OBJC_IVAR___NetworkInfoResults_httpFetches;
  type metadata accessor for NetworkInfoURLRetrievalResult();
  *&v10[v5] = sub_25B947838();
  v6 = OBJC_IVAR___NetworkInfoResults_traceroutes;
  *&v10[v6] = sub_25B947838();
  v7 = OBJC_IVAR___NetworkInfoResults_tcpConnects;
  type metadata accessor for NetworkInfoTCPConnectResult();
  *&v10[v7] = sub_25B947838();
  v0 = &v10[OBJC_IVAR___NetworkInfoResults_packetCaptureFilename];
  *v0 = 0;
  *(v0 + 1) = 0;
  v1 = &v10[OBJC_IVAR___NetworkInfoResults_droptapCaptureFilename];
  *v1 = 0;
  *(v1 + 1) = 0;
  type metadata accessor for NetworkInfoSystemConfiguration();
  *&v10[OBJC_IVAR___NetworkInfoResults_systemConfiguration] = NetworkInfoSystemConfiguration.__allocating_init()();
  v9.receiver = v10;
  v9.super_class = type metadata accessor for NetworkInfoResults();
  v8 = objc_msgSendSuper2(&v9, sel_init);
  MEMORY[0x277D82BE0](v8);
  v10 = v8;
  MEMORY[0x277D82BD8](v8);
  return v8;
}

uint64_t sub_25B8DE3DC(uint64_t a1)
{
  v80 = &v105;
  v73 = a1;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v92 = 0;
  v93 = 0;
  v89 = 0;
  v90 = 0;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB278, &unk_25B94B230);
  v74 = *(v82 - 8);
  v75 = v82 - 8;
  v76 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v73);
  v79 = v21 - v76;
  v3[3] = v21 - v76;
  v3[2] = v2;
  v3[1] = v1;
  v77 = v2[3];
  v78 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v77);
  sub_25B8E103C();
  sub_25B9479C8();
  v4 = sub_25B8DCFF8();
  v85 = &v105;
  *v80 = v4;
  v81 = &v104;
  v104 = 0;
  v83 = type metadata accessor for NetworkInfoSystemConfiguration();
  sub_25B8E10B8();
  v5 = v84;
  sub_25B947778();
  v86 = v5;
  v87 = v5;
  if (v5)
  {
    v28 = v87;
    MEMORY[0x277D82BD8](*v80);
    result = (*(v74 + 8))(v79, v82);
    v29 = v28;
    return result;
  }

  MEMORY[0x277D82BD8](*v80);
  v6 = sub_25B8DD254();
  v70 = &v103;
  v103 = v6;
  v68 = &v102;
  v102 = 1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB048, &qword_25B94A9E0);
  sub_25B8E1138();
  v7 = v86;
  sub_25B947778();
  v71 = v7;
  v72 = v7;
  if (v7)
  {
    v27 = v72;
    sub_25B86CFA0(&v103);
    result = (*(v74 + 8))(v79, v82);
    v29 = v27;
    return result;
  }

  sub_25B86CFA0(&v103);
  v8 = sub_25B8DD490();
  v65 = &v101;
  v101 = v8;
  v63 = &v100;
  v100 = 2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAFF0, &unk_25B94A9A0);
  sub_25B8E11DC();
  v9 = v71;
  sub_25B947778();
  v66 = v9;
  v67 = v9;
  if (v9)
  {
    v26 = v67;
    sub_25B86CFA0(&v101);
    result = (*(v74 + 8))(v79, v82);
    v29 = v26;
    return result;
  }

  sub_25B86CFA0(&v101);
  v10 = sub_25B8DD6CC();
  v60 = &v99;
  v99 = v10;
  v58 = &v98;
  v98 = 3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB030, &unk_25B94A9C0);
  sub_25B8E12F4();
  v11 = v66;
  sub_25B947778();
  v61 = v11;
  v62 = v11;
  if (v11)
  {
    v25 = v62;
    sub_25B86CFA0(&v99);
    result = (*(v74 + 8))(v79, v82);
    v29 = v25;
    return result;
  }

  sub_25B86CFA0(&v99);
  v12 = sub_25B8DD908();
  v55 = &v97;
  v97 = v12;
  v53 = &v96;
  v96 = 4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAAB10, &unk_25B94B240);
  sub_25B86D4E0();
  v13 = v61;
  sub_25B947778();
  v56 = v13;
  v57 = v13;
  if (v13)
  {
    v24 = v57;
    sub_25B86CFA0(&v97);
    result = (*(v74 + 8))(v79, v82);
    v29 = v24;
    return result;
  }

  sub_25B86CFA0(&v97);
  v14 = sub_25B8DDB44();
  v50 = &v95;
  v95 = v14;
  v48 = &v94;
  v94 = 5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB038, &qword_25B94A9D0);
  sub_25B8E140C();
  v15 = v56;
  sub_25B947778();
  v51 = v15;
  v52 = v15;
  if (v15)
  {
    v23 = v52;
    sub_25B86CFA0(&v95);
    result = (*(v74 + 8))(v79, v82);
    v29 = v23;
    return result;
  }

  sub_25B86CFA0(&v95);
  v46 = sub_25B8DDD90();
  v47 = v16;
  if (v16)
  {
    v44 = v46;
    v45 = v47;
    v17 = v51;
    v40 = v47;
    v89 = v46;
    v90 = v47;
    v88 = 6;
    sub_25B947738();
    v41 = v17;
    v42 = v17;
    if (v17)
    {
      v22 = v42;

      result = (*(v74 + 8))(v79, v82);
      v29 = v22;
      return result;
    }

    v43 = v41;
  }

  else
  {
    v43 = v51;
  }

  v37 = v43;
  v38 = sub_25B8DE000();
  v39 = v18;
  if (!v18)
  {
    v34 = v37;
LABEL_17:
    v30 = v34;
    return (*(v74 + 8))(v79, v82);
  }

  v35 = v38;
  v36 = v39;
  v19 = v37;
  v31 = v39;
  v92 = v38;
  v93 = v39;
  v91 = 7;
  sub_25B947738();
  v32 = v19;
  v33 = v19;
  if (!v19)
  {

    v34 = v32;
    goto LABEL_17;
  }

  v21[1] = v33;

  return (*(v74 + 8))(v79, v82);
}

uint64_t sub_25B8DEE2C(uint64_t a1, uint64_t a2)
{
  v30[2] = a1;
  v30[3] = a2;
  sub_25B946ED8();
  v30[0] = sub_25B946F48();
  v30[1] = v2;
  v29[2] = a1;
  v29[3] = a2;
  v22 = MEMORY[0x25F870E10](v30[0], v2, a1, a2);
  sub_25B86AEEC(v30);
  if (v22)
  {

    v31 = 0;
    v19 = 0;
LABEL_18:

    return v19;
  }

  sub_25B946ED8();
  v29[0] = sub_25B946F48();
  v29[1] = v3;
  v28[2] = a1;
  v28[3] = a2;
  v18 = MEMORY[0x25F870E10](v29[0], v3, a1, a2);
  sub_25B86AEEC(v29);
  if (v18)
  {

    v31 = 1;
    v19 = 1;
    goto LABEL_18;
  }

  sub_25B946ED8();
  v28[0] = sub_25B946F48();
  v28[1] = v4;
  v27[2] = a1;
  v27[3] = a2;
  v17 = MEMORY[0x25F870E10](v28[0], v4, a1, a2);
  sub_25B86AEEC(v28);
  if (v17)
  {

    v31 = 2;
    v19 = 2;
    goto LABEL_18;
  }

  sub_25B946ED8();
  v27[0] = sub_25B946F48();
  v27[1] = v5;
  v26[2] = a1;
  v26[3] = a2;
  v16 = MEMORY[0x25F870E10](v27[0], v5, a1, a2);
  sub_25B86AEEC(v27);
  if (v16)
  {

    v31 = 3;
    v19 = 3;
    goto LABEL_18;
  }

  sub_25B946ED8();
  v26[0] = sub_25B946F48();
  v26[1] = v6;
  v25[2] = a1;
  v25[3] = a2;
  v15 = MEMORY[0x25F870E10](v26[0], v6, a1, a2);
  sub_25B86AEEC(v26);
  if (v15)
  {

    v31 = 4;
    v19 = 4;
    goto LABEL_18;
  }

  sub_25B946ED8();
  v25[0] = sub_25B946F48();
  v25[1] = v7;
  v24[2] = a1;
  v24[3] = a2;
  v14 = MEMORY[0x25F870E10](v25[0], v7, a1, a2);
  sub_25B86AEEC(v25);
  if (v14)
  {

    v31 = 5;
    v19 = 5;
    goto LABEL_18;
  }

  sub_25B946ED8();
  v24[0] = sub_25B946F48();
  v24[1] = v8;
  v23[2] = a1;
  v23[3] = a2;
  v13 = MEMORY[0x25F870E10](v24[0], v8, a1, a2);
  sub_25B86AEEC(v24);
  if (v13)
  {

    v31 = 6;
    v19 = 6;
    goto LABEL_18;
  }

  sub_25B946ED8();
  v23[0] = sub_25B946F48();
  v23[1] = v9;
  v12 = MEMORY[0x25F870E10](v23[0], v9, a1, a2);
  sub_25B86AEEC(v23);
  if (v12)
  {

    v31 = 7;
    v19 = 7;
    goto LABEL_18;
  }

  return 8;
}

BOOL sub_25B8DF380(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      case 6:
        v4 = 6;
        break;
      default:
        v4 = 7;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      case 6:
        v3 = 6;
        break;
      default:
        v3 = 7;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_25B8DF9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25B8DEE2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25B8DFA20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25B8DF368();
  *a1 = result;
  return result;
}

id NetworkInfoResults.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkInfoResults();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B8DFC20@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8DFCF4();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8DFC8C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8DFD58(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8DFCF4()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_durationMillis);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8DFD58(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_durationMillis);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8DFE30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8DFF04();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8DFE9C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8DFF68(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8DFF04()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_sequence);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8DFF68(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_sequence);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E0040@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E0134();
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E00B0(void *a1, void *a2)
{
  sub_25B898FF0(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E01A8(v6, v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E0134()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_destination);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E01A8(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  v6 = (v2 + OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_destination);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_25B8E02B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E03A8();
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E0324(void *a1, void *a2)
{
  sub_25B898FF0(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E041C(v6, v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E03A8()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_host);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E041C(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  v6 = (v2 + OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_host);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_25B8E0528@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E061C();
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E0598(void *a1, void *a2)
{
  sub_25B898FF0(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E0690(v6, v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E061C()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_error);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E0690(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  v6 = (v2 + OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_error);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

char *NetworkInfoPingResult.init(raw:)(uint64_t a1)
{
  v79 = 0;
  v78[4] = a1;
  v1 = OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_error;
  *OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_error = 0;
  *(v1 + 8) = 0;
  v47 = v79;
  v77[0] = sub_25B946F48();
  v77[1] = v2;
  sub_25B946F18();
  sub_25B86AEEC(v77);
  if (v78[3])
  {
    if (swift_dynamicCast())
    {
      v43 = v48;
      v44 = 0;
    }

    else
    {
      v43 = 0;
      v44 = 1;
    }

    v45 = v43;
    v46 = v44;
  }

  else
  {
    sub_25B88BBA0(v78);
    v45 = 0;
    v46 = 1;
  }

  v75 = v45;
  v76 = v46 & 1;
  if (v46)
  {
    v42 = 0;
  }

  else
  {
    v42 = v75;
  }

  *&v47[OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_durationMillis] = v42;
  v41 = v79;
  v73[0] = sub_25B946F48();
  v73[1] = v3;
  sub_25B946F18();
  sub_25B86AEEC(v73);
  if (v74[3])
  {
    v4 = swift_dynamicCast();
    if (v4)
    {
      v37 = v49;
      v38 = 0;
    }

    else
    {
      v37 = 0;
      v38 = 1;
    }

    v39 = v37;
    v40 = v38;
  }

  else
  {
    sub_25B88BBA0(v74);
    v39 = 0;
    v40 = 1;
  }

  v71 = v39;
  v72 = v40 & 1;
  if (v40)
  {
    v36 = 0;
  }

  else
  {
    v36 = v71;
  }

  *&v41[OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_sequence] = v36;
  v35 = v79;
  v67[0] = sub_25B946F48();
  v67[1] = v5;
  sub_25B946F18();
  sub_25B86AEEC(v67);
  if (v68[3])
  {
    v6 = swift_dynamicCast();
    if (v6)
    {
      v31 = v50;
      v32 = v51;
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    v33 = v31;
    v34 = v32;
  }

  else
  {
    sub_25B88BBA0(v68);
    v33 = 0;
    v34 = 0;
  }

  v65 = v33;
  v66 = v34;
  if (v34)
  {
    v69 = v65;
    v70 = v66;
  }

  else
  {
    v69 = sub_25B946F48();
    v70 = v7;
  }

  v8 = v70;
  v9 = &v35[OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_destination];
  *v9 = v69;
  v9[1] = v8;
  v30 = v79;
  v61[0] = sub_25B946F48();
  v61[1] = v10;
  sub_25B946F18();
  sub_25B86AEEC(v61);
  if (v62[3])
  {
    v11 = swift_dynamicCast();
    if (v11)
    {
      v26 = v52;
      v27 = v53;
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    v28 = v26;
    v29 = v27;
  }

  else
  {
    sub_25B88BBA0(v62);
    v28 = 0;
    v29 = 0;
  }

  v59 = v28;
  v60 = v29;
  if (v29)
  {
    v63 = v59;
    v64 = v60;
  }

  else
  {
    v63 = sub_25B946F48();
    v64 = v12;
  }

  v13 = v64;
  v14 = &v30[OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_host];
  *v14 = v63;
  v14[1] = v13;
  v25 = v79;
  v57[0] = sub_25B946F48();
  v57[1] = v15;
  sub_25B946F18();
  sub_25B86AEEC(v57);
  if (v58[3])
  {
    v16 = swift_dynamicCast();
    if (v16)
    {
      v21 = v54;
      v22 = v55;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    v23 = v21;
    v24 = v22;
  }

  else
  {
    sub_25B88BBA0(v58);
    v23 = 0;
    v24 = 0;
  }

  v19 = &v25[OBJC_IVAR____TtC11NetworkInfo21NetworkInfoPingResult_error];
  swift_beginAccess();
  v17 = *(v19 + 1);
  *v19 = v23;
  *(v19 + 1) = v24;

  swift_endAccess();
  v56.receiver = v79;
  v56.super_class = type metadata accessor for NetworkInfoPingResult();
  v20 = objc_msgSendSuper2(&v56, sel_init);
  MEMORY[0x277D82BE0](v20);
  v79 = v20;

  MEMORY[0x277D82BD8](v79);
  return v20;
}

unint64_t sub_25B8E103C()
{
  v2 = qword_27FBAB280;
  if (!qword_27FBAB280)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB280);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8E10B8()
{
  v2 = qword_27FBAB288;
  if (!qword_27FBAB288)
  {
    type metadata accessor for NetworkInfoSystemConfiguration();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB288);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8E1138()
{
  v2 = qword_27FBAB290;
  if (!qword_27FBAB290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB048, &qword_25B94A9E0);
    sub_25B8D2AFC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB290);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8E11DC()
{
  v2 = qword_27FBAB298;
  if (!qword_27FBAB298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAAFF0, &unk_25B94A9A0);
    sub_25B8E1274();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB298);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8E1274()
{
  v2 = qword_27FBAB2A0;
  if (!qword_27FBAB2A0)
  {
    type metadata accessor for NetworkInfoPingResult();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB2A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8E12F4()
{
  v2 = qword_27FBAB2A8;
  if (!qword_27FBAB2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB030, &unk_25B94A9C0);
    sub_25B8E138C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB2A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8E138C()
{
  v2 = qword_27FBAB2B0;
  if (!qword_27FBAB2B0)
  {
    type metadata accessor for NetworkInfoURLRetrievalResult();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB2B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8E140C()
{
  v2 = qword_27FBAB2B8;
  if (!qword_27FBAB2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBAB038, &qword_25B94A9D0);
    sub_25B8E14A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB2B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8E14A4()
{
  v2 = qword_27FBAB2C0;
  if (!qword_27FBAB2C0)
  {
    type metadata accessor for NetworkInfoTCPConnectResult();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB2C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_25B8E1524()
{
  v2 = qword_27FBAB2C8;
  if (!qword_27FBAB2C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB2C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8E15A0(uint64_t a1)
{
  v34 = a1;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v46 = 0;
  v47 = 0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB2F8, &qword_25B94B250);
  v35 = *(v41 - 8);
  v36 = v41 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v40 = &v11 - v37;
  v54 = &v11 - v37;
  v53 = MEMORY[0x28223BE20](v34);
  v52 = v1;
  v38 = v53[3];
  v39 = v53[4];
  __swift_project_boxed_opaque_existential_1(v53, v38);
  sub_25B8E1A60();
  sub_25B9479C8();
  sub_25B8DFCF4();
  v2 = v42;
  v51 = 0;
  sub_25B947798();
  v43 = v2;
  v44 = v2;
  if (v2)
  {
    v15 = v44;
    result = (*(v35 + 8))(v40, v41);
    v16 = v15;
  }

  else
  {
    sub_25B8DFF04();
    v3 = v43;
    v50 = 1;
    sub_25B947798();
    v32 = v3;
    v33 = v3;
    if (v3)
    {
      v14 = v33;
      result = (*(v35 + 8))(v40, v41);
      v16 = v14;
    }

    else
    {
      sub_25B8E0134();
      v4 = v32;
      v29 = v5;
      v49 = 2;
      sub_25B947738();
      v30 = v4;
      v31 = v4;
      if (v4)
      {
        v13 = v31;

        result = (*(v35 + 8))(v40, v41);
        v16 = v13;
      }

      else
      {

        sub_25B8E03A8();
        v6 = v30;
        v26 = v7;
        v48 = 3;
        sub_25B947738();
        v27 = v6;
        v28 = v6;
        if (v6)
        {
          v12 = v28;

          result = (*(v35 + 8))(v40, v41);
          v16 = v12;
        }

        else
        {

          v24 = sub_25B8E061C();
          v25 = v8;
          if (!v8)
          {
            v21 = v27;
LABEL_10:
            v17 = v21;
            return (*(v35 + 8))(v40, v41);
          }

          v22 = v24;
          v23 = v25;
          v9 = v27;
          v18 = v25;
          v46 = v24;
          v47 = v25;
          v45 = 4;
          sub_25B947738();
          v19 = v9;
          v20 = v9;
          if (!v9)
          {

            v21 = v19;
            goto LABEL_10;
          }

          v11 = v20;

          return (*(v35 + 8))(v40, v41);
        }
      }
    }
  }

  return result;
}

unint64_t sub_25B8E1A60()
{
  v2 = qword_27FBAB300;
  if (!qword_27FBAB300)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB300);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8E1ADC(uint64_t a1, uint64_t a2)
{
  v21[2] = a1;
  v21[3] = a2;
  sub_25B946ED8();
  v21[0] = sub_25B946F48();
  v21[1] = v2;
  v20[2] = a1;
  v20[3] = a2;
  v16 = MEMORY[0x25F870E10](v21[0], v2, a1, a2);
  sub_25B86AEEC(v21);
  if (v16)
  {

    v22 = 0;
    v13 = 0;
LABEL_12:

    return v13;
  }

  sub_25B946ED8();
  v20[0] = sub_25B946F48();
  v20[1] = v3;
  v19[2] = a1;
  v19[3] = a2;
  v12 = MEMORY[0x25F870E10](v20[0], v3, a1, a2);
  sub_25B86AEEC(v20);
  if (v12)
  {

    v22 = 1;
    v13 = 1;
    goto LABEL_12;
  }

  sub_25B946ED8();
  v19[0] = sub_25B946F48();
  v19[1] = v4;
  v18[2] = a1;
  v18[3] = a2;
  v11 = MEMORY[0x25F870E10](v19[0], v4, a1, a2);
  sub_25B86AEEC(v19);
  if (v11)
  {

    v22 = 2;
    v13 = 2;
    goto LABEL_12;
  }

  sub_25B946ED8();
  v18[0] = sub_25B946F48();
  v18[1] = v5;
  v17[2] = a1;
  v17[3] = a2;
  v10 = MEMORY[0x25F870E10](v18[0], v5, a1, a2);
  sub_25B86AEEC(v18);
  if (v10)
  {

    v22 = 3;
    v13 = 3;
    goto LABEL_12;
  }

  sub_25B946ED8();
  v17[0] = sub_25B946F48();
  v17[1] = v6;
  v9 = MEMORY[0x25F870E10](v17[0], v6, a1, a2);
  sub_25B86AEEC(v17);
  if (v9)
  {

    v22 = 4;
    v13 = 4;
    goto LABEL_12;
  }

  return 5;
}

BOOL sub_25B8E1E68(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      default:
        v4 = 4;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      default:
        v3 = 4;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_25B8E2128()
{
  v2 = qword_27FBAB308;
  if (!qword_27FBAB308)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27FBAB308);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25B8E2360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25B8E1ADC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25B8E238C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25B8E1E50();
  *a1 = result;
  return result;
}

id NetworkInfoPingResult.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkInfoPingResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B8E25D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E26C4();
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E2640(void *a1, void *a2)
{
  sub_25B898FF0(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E2738(v6, v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E26C4()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo27NetworkInfoTCPConnectResult_endpoint);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E2738(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  v6 = (v2 + OBJC_IVAR____TtC11NetworkInfo27NetworkInfoTCPConnectResult_endpoint);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_25B8E2844@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v6[2] = v4;
  sub_25B8E294C(v6);
  v2 = v6[1];
  *a2 = v6[0];
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E28BC(void *a1, uint64_t *a2)
{
  sub_25B8F003C(a1, v8);
  v5 = v8[0];
  v6 = v8[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  v7[2] = v4;
  v7[0] = v5;
  v7[1] = v6;
  sub_25B8E29D0(v7);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E294C@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo27NetworkInfoTCPConnectResult_connectionState);
  swift_beginAccess();
  v4 = *v3;
  v6 = v3[1];
  sub_25B8EBA40(*v3, v6);
  result = swift_endAccess();
  *a1 = v4;
  a1[1] = v6;
  return result;
}

uint64_t sub_25B8E29D0(uint64_t *a1)
{
  v6 = *a1;
  v7 = a1[1];
  sub_25B8EBA40(*a1, v7);
  v5 = (v1 + OBJC_IVAR____TtC11NetworkInfo27NetworkInfoTCPConnectResult_connectionState);
  swift_beginAccess();
  v2 = *v5;
  v3 = v5[1];
  *v5 = v6;
  v5[1] = v7;
  sub_25B8DC044(v2, v3);
  swift_endAccess();
  return sub_25B8DC044(v6, v7);
}

uint64_t sub_25B8E2AE4@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E2BB8();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E2B50(int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E2C1C(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E2BB8()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo27NetworkInfoTCPConnectResult_connectionTime);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E2C1C(int a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo27NetworkInfoTCPConnectResult_connectionTime);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E2CF4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E2DE8();
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E2D64(void *a1, void *a2)
{
  sub_25B898FF0(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E2E5C(v6, v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E2DE8()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo27NetworkInfoTCPConnectResult_resolvedRemoteEndpoint);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E2E5C(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  v6 = (v2 + OBJC_IVAR____TtC11NetworkInfo27NetworkInfoTCPConnectResult_resolvedRemoteEndpoint);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_25B8E2F64()
{
  sub_25B947838();
  *v0 = "endpoint";
  *(v0 + 8) = 8;
  *(v0 + 16) = 2;
  *(v0 + 24) = "connectionState";
  *(v0 + 32) = 15;
  *(v0 + 40) = 2;
  *(v0 + 48) = "connectionTimeMs";
  *(v0 + 56) = 16;
  *(v0 + 64) = 2;
  *(v0 + 72) = "resolvedRemoteEndpoint";
  *(v0 + 80) = 22;
  *(v0 + 88) = 2;
  sub_25B8860FC();
  v4 = sub_25B947658();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_10:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_10;
    case 2:
      v3 = 2;
      goto LABEL_10;
    case 3:
      v3 = 3;
      goto LABEL_10;
  }

  return 4;
}

uint64_t sub_25B8E312C()
{
  sub_25B946ED8();
  v2 = sub_25B8E2F64();

  if (v2 == 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25B8E3428@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_25B8E2F64();
  *a2 = result;
  return result;
}

uint64_t sub_25B8E3460@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_25B8E31DC();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25B8E34B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25B8E312C();
  *a1 = result;
  return result;
}

uint64_t sub_25B8E34DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25B8E31C4();
  *a1 = result;
  return result;
}

uint64_t sub_25B8E3568(uint64_t a1)
{
  v27 = a1;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v40 = 0;
  v41 = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBAB340, &qword_25B94B258);
  v28 = *(v34 - 8);
  v29 = v34 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = v9 - v30;
  v48 = v9 - v30;
  v47 = MEMORY[0x28223BE20](v27);
  v46 = v1;
  v31 = v47[3];
  v32 = v47[4];
  __swift_project_boxed_opaque_existential_1(v47, v31);
  sub_25B8EBAF8();
  sub_25B9479C8();
  sub_25B8E26C4();
  v2 = v35;
  v36 = v3;
  v45 = 0;
  sub_25B947738();
  v37 = v2;
  v38 = v2;
  if (v2)
  {
    v12 = v38;

    result = (*(v28 + 8))(v33, v34);
    v13 = v12;
  }

  else
  {

    sub_25B8E294C(v44);
    v4 = v37;
    v43[0] = v44[0];
    v43[1] = v44[1];
    TCPConnectionState.encode(to:)(v27);
    v25 = v4;
    v26 = v4;
    if (v4)
    {
      v11 = v26;
      sub_25B8EBB74(v43);
      result = (*(v28 + 8))(v33, v34);
      v13 = v11;
    }

    else
    {
      sub_25B8EBB74(v43);
      sub_25B8E2BB8();
      v5 = v25;
      v42 = 2;
      sub_25B9477A8();
      v23 = v5;
      v24 = v5;
      if (v5)
      {
        v10 = v24;
        result = (*(v28 + 8))(v33, v34);
        v13 = v10;
      }

      else
      {
        v21 = sub_25B8E2DE8();
        v22 = v6;
        if (!v6)
        {
          v18 = v23;
LABEL_9:
          v14 = v18;
          return (*(v28 + 8))(v33, v34);
        }

        v19 = v21;
        v20 = v22;
        v7 = v23;
        v15 = v22;
        v40 = v21;
        v41 = v22;
        v39 = 3;
        sub_25B947738();
        v16 = v7;
        v17 = v7;
        if (!v7)
        {

          v18 = v16;
          goto LABEL_9;
        }

        v9[1] = v17;

        return (*(v28 + 8))(v33, v34);
      }
    }
  }

  return result;
}

char *NetworkInfoTCPConnectResult.init()()
{
  v7 = 0;
  v4 = OBJC_IVAR____TtC11NetworkInfo27NetworkInfoTCPConnectResult_endpoint;
  *v4 = sub_25B946F48();
  v4[1] = v0;
  v1 = &v7[OBJC_IVAR____TtC11NetworkInfo27NetworkInfoTCPConnectResult_connectionState];
  *v1 = 0;
  *(v1 + 1) = 2;
  *&v7[OBJC_IVAR____TtC11NetworkInfo27NetworkInfoTCPConnectResult_connectionTime] = 0;
  v2 = &v7[OBJC_IVAR____TtC11NetworkInfo27NetworkInfoTCPConnectResult_resolvedRemoteEndpoint];
  *v2 = 0;
  *(v2 + 1) = 0;
  v6.receiver = v7;
  v6.super_class = type metadata accessor for NetworkInfoTCPConnectResult();
  v5 = objc_msgSendSuper2(&v6, sel_init);
  MEMORY[0x277D82BE0](v5);
  v7 = v5;
  MEMORY[0x277D82BD8](v5);
  return v5;
}

id NetworkInfoTCPConnectResult.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkInfoTCPConnectResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25B8E3BEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E3CE0();
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E3C5C(void *a1, void *a2)
{
  sub_25B898FF0(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E3D54(v6, v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E3CE0()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_url);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E3D54(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  v6 = (v2 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_url);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_25B8E3E60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E3F34();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E3ECC(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E3F98(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E3F34()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_statusCode);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E3F98(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_statusCode);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E4070@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E4164();
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E40E0(void *a1, void *a2)
{
  sub_25B898FF0(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E41D8(v6, v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E4164()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_error);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E41D8(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  v6 = (v2 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_error);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_25B8E42E0@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E43B4();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E434C(int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E4418(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E43B4()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_totalTime);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E4418(int a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_totalTime);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E44F0@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E45C4();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E455C(int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E4628(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E45C4()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_fetchStart);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E4628(int a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_fetchStart);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E4700@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E47D4();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E476C(int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E4838(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E47D4()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_domainLookupStart);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E4838(int a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_domainLookupStart);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E4910@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E49E4();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E497C(int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E4A48(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E49E4()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_domainLookupEnd);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E4A48(int a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_domainLookupEnd);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E4B20@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E4BF4();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E4B8C(int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E4C58(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E4BF4()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_connectStart);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E4C58(int a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_connectStart);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E4D30@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E4E04();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E4D9C(int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E4E68(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E4E04()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_secureConnectionStart);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E4E68(int a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_secureConnectionStart);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E4F40@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E5014();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E4FAC(int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E5078(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E5014()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_secureConnectionEnd);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E5078(int a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_secureConnectionEnd);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E5150@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E5224();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E51BC(int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E5288(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E5224()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_connectEnd);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E5288(int a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_connectEnd);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E5360@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E5434();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E53CC(int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E5498(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E5434()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_requestStart);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E5498(int a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_requestStart);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E5570@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E5644();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E55DC(int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E56A8(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E5644()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_requestEnd);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E56A8(int a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_requestEnd);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E5780@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E5854();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E57EC(int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E58B8(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E5854()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_responseStart);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E58B8(int a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_responseStart);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E5990@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E5A64();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E59FC(int *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E5AC8(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E5A64()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_responseEnd);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E5AC8(int a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_responseEnd);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E5BA0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E5C94();
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E5C10(void *a1, void *a2)
{
  sub_25B898FF0(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E5D08(v6, v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E5C94()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_networkProtocolName);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E5D08(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  v6 = (v2 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_networkProtocolName);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_25B8E5E14@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E5F08();
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E5E84(void *a1, void *a2)
{
  sub_25B898FF0(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E5F7C(v6, v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E5F08()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_localAddress);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E5F7C(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  v6 = (v2 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_localAddress);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_25B8E6088@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E617C();
  a2[1] = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E60F8(void *a1, void *a2)
{
  sub_25B898FF0(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E61F0(v6, v5);
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_25B8E617C()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_remoteAddress);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  sub_25B946ED8();
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E61F0(uint64_t a1, uint64_t a2)
{
  sub_25B946ED8();
  v6 = (v2 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_remoteAddress);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_25B8E62FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E63D0();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E6368(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E6434(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E63D0()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_countOfResponseBodyBytesReceived);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E6434(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_countOfResponseBodyBytesReceived);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_25B8E650C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_25B8E65E0();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E6578(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_25B8E6644(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_25B8E65E0()
{
  v2 = (v0 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_countOfResponseBodyBytesAfterDecoding);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_25B8E6644(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_countOfResponseBodyBytesAfterDecoding);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

char *NetworkInfoURLRetrievalResult.init()()
{
  v18 = 0;
  v12 = OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_url;
  *v12 = sub_25B946F48();
  v12[1] = v0;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_statusCode] = 0;
  v1 = &v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_error];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_totalTime] = 0;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_fetchStart] = 0;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_domainLookupStart] = 0;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_domainLookupEnd] = 0;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_connectStart] = 0;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_secureConnectionStart] = 0;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_secureConnectionEnd] = 0;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_connectEnd] = 0;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_requestStart] = 0;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_requestEnd] = 0;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_responseStart] = 0;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_responseEnd] = 0;
  v13 = OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_networkProtocolName;
  v2 = sub_25B946F48();
  v3 = &v18[v13];
  *v3 = v2;
  v3[1] = v4;
  v14 = OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_localAddress;
  v5 = sub_25B946F48();
  v6 = &v18[v14];
  *v6 = v5;
  v6[1] = v7;
  v15 = OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_remoteAddress;
  v8 = sub_25B946F48();
  v9 = &v18[v15];
  *v9 = v8;
  v9[1] = v10;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_countOfResponseBodyBytesReceived] = 0;
  *&v18[OBJC_IVAR____TtC11NetworkInfo29NetworkInfoURLRetrievalResult_countOfResponseBodyBytesAfterDecoding] = 0;
  v17.receiver = v18;
  v17.super_class = type metadata accessor for NetworkInfoURLRetrievalResult();
  v16 = objc_msgSendSuper2(&v17, sel_init);
  MEMORY[0x277D82BE0](v16);
  v18 = v16;
  MEMORY[0x277D82BD8](v16);
  return v16;
}