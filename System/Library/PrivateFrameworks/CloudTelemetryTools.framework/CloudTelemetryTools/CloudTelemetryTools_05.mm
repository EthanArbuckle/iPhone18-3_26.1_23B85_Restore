uint64_t sub_22DF4E330()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 240);
  if (v0)
  {
    v6 = sub_22DF4F298;
  }

  else
  {
    v6 = sub_22DF4E488;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22DF4E488()
{
  v121 = v0;
  v120[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 400);
  v2 = *(v0 + 336);
  v3 = *(v0 + 272);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47470, &unk_22DF65BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22DF65900;
  v5 = *MEMORY[0x277CBE7B0];
  *(inited + 32) = *MEMORY[0x277CBE7B0];
  v6 = v5;
  sub_22DEF9A50(inited);
  swift_setDeallocating();
  sub_22DF515E0(inited + 32, type metadata accessor for URLResourceKey);
  sub_22DF63354();
  if (v1)
  {
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));

LABEL_5:
    v20 = *(v0 + 376);
    v19 = *(v0 + 384);
    v22 = *(v0 + 344);
    v21 = *(v0 + 352);
    v23 = *(v0 + 336);
    v25 = *(v0 + 304);
    v24 = *(v0 + 312);
    v26 = *(v0 + 296);
    v27 = *(v0 + 272);
    v28 = *(v0 + 248);

    v29 = *(v0 + 8);
    v30 = *MEMORY[0x277D85DE8];
LABEL_6:

    return v29();
  }

  v7 = *(v0 + 280);
  v8 = *(v0 + 288);
  v10 = *(v0 + 264);
  v9 = *(v0 + 272);
  v12 = *(v0 + 248);
  v11 = *(v0 + 256);

  sub_22DF632B4();
  (*(v10 + 8))(v9, v11);
  result = (*(v8 + 48))(v12, 1, v7);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v14 = *(v0 + 336);
  (*(*(v0 + 288) + 32))(*(v0 + 312), *(v0 + 248), *(v0 + 280));
  v15 = sub_22DF63464();
  v17 = v16;
  v18 = sub_22DF0BE94();
  sub_22DF0C6B0(v15, v17, v18, v0 + 56);
  v31 = *(v0 + 304);
  v32 = *(v0 + 312);
  v34 = *(v0 + 288);
  v33 = *(v0 + 296);
  v35 = *(v0 + 280);
  v36 = *(v0 + 64);
  sub_22DF63504();
  sub_22DF63554();
  LOBYTE(v32) = sub_22DF63524();
  v37 = *(v34 + 8);
  *(v0 + 408) = v37;
  *(v0 + 416) = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v33, v35);
  if ((v32 & 1) == 0)
  {
    v116 = v36;
    v118 = v37;
    v60 = *(v0 + 368);
    v59 = *(v0 + 376);
    v61 = *(v0 + 360);
    v62 = *(v0 + 344);
    v63 = *(v0 + 240);
    v107 = *(v0 + 232);
    v109 = *(v0 + 224);
    v64 = *(v0 + 56);
    v65 = *(v0 + 80);
    v114 = *(v0 + 72);
    v66 = *(v0 + 88);
    (*(*(v0 + 288) + 16))(v59 + *(v61 + 20), *(v0 + 304), *(v0 + 280));
    v67 = *(v0 + 88);
    v68 = *(v0 + 72);
    *v59 = *(v0 + 56);
    *(v59 + 16) = v68;
    *(v59 + 32) = v67;
    sub_22DF51578(v59, v62, type metadata accessor for CachedStorebag);
    (*(v60 + 56))(v62, 0, 1, v61);
    v69 = *(*v63 + 144);

    v111 = v64;

    v113 = v65;

    v112 = v66;

    v70 = v69(v0 + 136);
    sub_22DF4F520(v62, v109, v107);
    v70(v0 + 136, 0);
    if (qword_27DA4DB90 != -1)
    {
      swift_once();
    }

    v71 = *(v0 + 232);
    v72 = sub_22DF63734();
    __swift_project_value_buffer(v72, qword_27DA4E6C8);

    v73 = sub_22DF63714();
    v74 = sub_22DF63CF4();

    v75 = os_log_type_enabled(v73, v74);
    v76 = *(v0 + 376);
    v77 = *(v0 + 328);
    v78 = *(v0 + 336);
    v80 = *(v0 + 312);
    v79 = *(v0 + 320);
    v110 = *(v0 + 304);
    v81 = *(v0 + 280);
    if (v75)
    {
      v108 = *(v0 + 336);
      v105 = *(v0 + 376);
      v82 = *(v0 + 224);
      v83 = *(v0 + 232);
      v106 = *(v0 + 320);
      v84 = swift_slowAlloc();
      v104 = v80;
      v85 = swift_slowAlloc();
      v120[0] = v85;
      *v84 = 136446210;
      *(v84 + 4) = sub_22DEF0354(v82, v83, v120);
      _os_log_impl(&dword_22DEEA000, v73, v74, "storing storebag %{public}s in cache", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v85);
      MEMORY[0x2318DDBE0](v85, -1, -1);
      MEMORY[0x2318DDBE0](v84, -1, -1);

      sub_22DF515E0(v105, type metadata accessor for CachedStorebag);
      v118(v110, v81);
      v118(v104, v81);
      (*(v77 + 8))(v108, v106);
    }

    else
    {

      sub_22DF515E0(v76, type metadata accessor for CachedStorebag);
      v118(v110, v81);
      v118(v80, v81);
      (*(v77 + 8))(v78, v79);
    }

    v94 = *(v0 + 376);
    v93 = *(v0 + 384);
    v96 = *(v0 + 344);
    v95 = *(v0 + 352);
    v97 = *(v0 + 336);
    v99 = *(v0 + 304);
    v98 = *(v0 + 312);
    v100 = *(v0 + 296);
    v101 = *(v0 + 272);
    v119 = *(v0 + 248);
    v102 = *(v0 + 216);

    *v102 = v111;
    *(v102 + 8) = v116;
    *(v102 + 16) = v114;
    *(v102 + 24) = v113;
    *(v102 + 32) = v112;
    v29 = *(v0 + 8);
    v103 = *MEMORY[0x277D85DE8];
    goto LABEL_6;
  }

  *(v0 + 184) = *(v0 + 56);
  sub_22DEF1364(v0 + 184, &qword_27DA477F8, &unk_22DF670D0);
  *(v0 + 168) = *(v0 + 72);
  sub_22DF13A04(v0 + 168);
  *(v0 + 192) = *(v0 + 88);
  sub_22DEF1364(v0 + 192, &qword_27DA47C00, &qword_22DF670A0);
  if (qword_27DA4DB90 != -1)
  {
    swift_once();
  }

  v38 = *(v0 + 232);
  v39 = sub_22DF63734();
  __swift_project_value_buffer(v39, qword_27DA4E6C8);

  v40 = sub_22DF63714();
  v41 = sub_22DF63D24();

  if (os_log_type_enabled(v40, v41))
  {
    v43 = *(v0 + 224);
    v42 = *(v0 + 232);
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v120[0] = v45;
    *v44 = 136446210;
    *(v44 + 4) = sub_22DEF0354(v43, v42, v120);
    _os_log_impl(&dword_22DEEA000, v40, v41, "removing expired storebag %{public}s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x2318DDBE0](v45, -1, -1);
    MEMORY[0x2318DDBE0](v44, -1, -1);
  }

  v46 = *(v0 + 336);
  v47 = [objc_opt_self() defaultManager];
  v48 = sub_22DF63394();
  *(v0 + 208) = 0;
  v49 = [v47 removeItemAtURL:v48 error:v0 + 208];

  v50 = *(v0 + 208);
  if (!v49)
  {
    v86 = *(v0 + 328);
    v117 = *(v0 + 336);
    v88 = *(v0 + 312);
    v87 = *(v0 + 320);
    v89 = *(v0 + 304);
    v90 = v37;
    v91 = *(v0 + 280);
    v92 = v50;
    sub_22DF63334();

    swift_willThrow();
    v90(v89, v91);
    v90(v88, v91);
    (*(v86 + 8))(v117, v87);
    goto LABEL_5;
  }

  v51 = *(**(v0 + 240) + 232);
  v52 = v50;
  v115 = (v51 + *v51);
  v53 = v51[1];
  v54 = swift_task_alloc();
  *(v0 + 424) = v54;
  *v54 = v0;
  v54[1] = sub_22DF4EFA8;
  v55 = *(v0 + 232);
  v56 = *(v0 + 240);
  v57 = *(v0 + 224);
  v58 = *MEMORY[0x277D85DE8];

  return v115(v0 + 16, v57, v55);
}

uint64_t sub_22DF4EFA8()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;
  *(*v1 + 432) = v0;

  v5 = *(v2 + 240);
  if (v0)
  {
    v6 = sub_22DF4F3C8;
  }

  else
  {
    v6 = sub_22DF4F100;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22DF4F100()
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  v7 = *(v0 + 280);
  v2(*(v0 + 304), v7);
  v2(v6, v7);
  (*(v4 + 8))(v3, v5);
  v25 = *(v0 + 32);
  v24 = *(v0 + 24);
  v23 = *(v0 + 16);
  v9 = *(v0 + 376);
  v8 = *(v0 + 384);
  v11 = *(v0 + 344);
  v10 = *(v0 + 352);
  v12 = *(v0 + 336);
  v14 = *(v0 + 304);
  v13 = *(v0 + 312);
  v15 = *(v0 + 296);
  v16 = *(v0 + 272);
  v21 = *(v0 + 248);
  v17 = *(v0 + 216);
  v22 = *(v0 + 40);

  *v17 = v23;
  *(v17 + 8) = v24;
  *(v17 + 16) = v25;
  *(v17 + 24) = v22;
  v18 = *(v0 + 8);
  v19 = *MEMORY[0x277D85DE8];

  return v18();
}

uint64_t sub_22DF4F298()
{
  v15 = *MEMORY[0x277D85DE8];
  (*(v0[41] + 8))(v0[42], v0[40]);
  v14 = v0[50];
  v2 = v0[47];
  v1 = v0[48];
  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[42];
  v7 = v0[38];
  v6 = v0[39];
  v8 = v0[37];
  v9 = v0[34];
  v10 = v0[31];

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_22DF4F3C8()
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = v0[51];
  v1 = v0[52];
  v4 = v0[41];
  v3 = v0[42];
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[35];
  v2(v0[38], v7);
  v2(v6, v7);
  (*(v4 + 8))(v3, v5);
  v21 = v0[54];
  v9 = v0[47];
  v8 = v0[48];
  v11 = v0[43];
  v10 = v0[44];
  v12 = v0[42];
  v14 = v0[38];
  v13 = v0[39];
  v15 = v0[37];
  v16 = v0[34];
  v17 = v0[31];

  v18 = v0[1];
  v19 = *MEMORY[0x277D85DE8];

  return v18();
}

uint64_t sub_22DF4F520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47BF0, &unk_22DF697A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for CachedStorebag(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_22DEF1364(a1, &unk_27DA47BF0, &unk_22DF697A0);
    sub_22DF508B0(a2, a3, v10);

    return sub_22DEF1364(v10, &unk_27DA47BF0, &unk_22DF697A0);
  }

  else
  {
    sub_22DF51640(a1, v14);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_22DF51188(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_22DF4F6E0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47460, &qword_22DF65310) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF4F780, v2, 0);
}

uint64_t sub_22DF4F780()
{
  v1 = v0[6];
  v2 = *(*v1 + 152);
  v3 = (*v1 + 152) & 0xFFFFFFFFFFFFLL | 0x6EC9000000000000;
  v0[8] = v2;
  v0[9] = v3;
  v4 = v2();
  if (v4)
  {
    v0[10] = v4;
    v5 = *(MEMORY[0x277D857D0] + 4);
    v6 = v4;
    v7 = swift_task_alloc();
    v0[11] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CC0, &qword_22DF661F0);
    *v7 = v0;
    v7[1] = sub_22DF4FA80;
    v9 = MEMORY[0x277D84950];
    v10 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 2, v6, v10, v8, v9);
  }

  else
  {
    v12 = v0[6];
    v11 = v0[7];
    v14 = v0[4];
    v13 = v0[5];
    v15 = os_transaction_create();
    (*(*v12 + 184))(v15);
    v16 = sub_22DF63C34();
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
    v17 = sub_22DF4BFFC(&qword_27DA47CB8, type metadata accessor for StorebagCache);
    v18 = swift_allocObject();
    v18[2] = v12;
    v18[3] = v17;
    v18[4] = v12;
    v18[5] = v14;
    v18[6] = v13;
    swift_retain_n();

    v19 = sub_22DEF61B8(0, 0, v11, &unk_22DF69918, v18);
    v0[12] = v19;
    v20 = *(*v12 + 160);

    v20(v21);
    v22 = *(MEMORY[0x277D857C8] + 4);
    v23 = swift_task_alloc();
    v0[13] = v23;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CC0, &qword_22DF661F0);
    *v23 = v0;
    v23[1] = sub_22DF4FE94;
    v25 = MEMORY[0x277D84950];
    v26 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200430](v24, v19, v26, v24, v25);
  }
}

uint64_t sub_22DF4FA80()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 48);
  v5 = *v0;

  sub_22DF51AC4(*(v1 + 16), *(v1 + 24));

  return MEMORY[0x2822009F8](sub_22DF4FBB4, v3, 0);
}

uint64_t sub_22DF4FBB4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[6];

  v6 = v3(v5);
  if (v6)
  {
    v0[10] = v6;
    v7 = *(MEMORY[0x277D857D0] + 4);
    v8 = v6;
    v9 = swift_task_alloc();
    v0[11] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CC0, &qword_22DF661F0);
    *v9 = v0;
    v9[1] = sub_22DF4FA80;
    v11 = MEMORY[0x277D84950];
    v12 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 2, v8, v12, v10, v11);
  }

  else
  {
    v14 = v0[6];
    v13 = v0[7];
    v16 = v0[4];
    v15 = v0[5];
    v17 = os_transaction_create();
    (*(*v14 + 184))(v17);
    v18 = sub_22DF63C34();
    (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
    v19 = sub_22DF4BFFC(&qword_27DA47CB8, type metadata accessor for StorebagCache);
    v20 = swift_allocObject();
    v20[2] = v14;
    v20[3] = v19;
    v20[4] = v14;
    v20[5] = v16;
    v20[6] = v15;
    swift_retain_n();

    v21 = sub_22DEF61B8(0, 0, v13, &unk_22DF69918, v20);
    v0[12] = v21;
    v22 = *(*v14 + 160);

    v22(v23);
    v24 = *(MEMORY[0x277D857C8] + 4);
    v25 = swift_task_alloc();
    v0[13] = v25;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CC0, &qword_22DF661F0);
    *v25 = v0;
    v25[1] = sub_22DF4FE94;
    v27 = MEMORY[0x277D84950];
    v28 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200430](v26, v21, v28, v26, v27);
  }
}

uint64_t sub_22DF4FE94()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_22DF50030;
  }

  else
  {
    v6 = sub_22DF4FFC0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22DF4FFC0()
{
  v1 = v0[12];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22DF50030()
{
  v1 = v0[12];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_22DF500A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = sub_22DF63444();
  v6[5] = v8;
  v9 = *(v8 - 8);
  v6[6] = v9;
  v10 = *(v9 + 64) + 15;
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF50168, a4, 0);
}

uint64_t sub_22DF50168()
{
  v1 = v0[7];
  v2 = *(v0[2] + OBJC_IVAR____TtC19CloudTelemetryTools13StorebagCache_storebagSource);
  v11 = v0[3];
  v12 = v0[4];

  MEMORY[0x2318DCA20](0x7473696C702ELL, 0xE600000000000000);
  sub_22DF633B4();

  v3 = *(*v2 + 136);
  v10 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_22DF502FC;
  v6 = v0[7];
  v8 = v0[3];
  v7 = v0[4];

  return v10(v8, v7, v6);
}

uint64_t sub_22DF502FC()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 72) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 16);
  if (v0)
  {
    v9 = sub_22DF50540;
  }

  else
  {
    v9 = sub_22DF50484;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_22DF50484()
{
  v1 = v0[7];
  v2 = v0[2];
  (*(*v2 + 160))(0);
  (*(*v2 + 184))(0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22DF50540()
{
  v1 = v0[7];
  v2 = v0[2];
  (*(*v2 + 160))(0);
  (*(*v2 + 184))(0);

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_22DF505FC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47BF0, &unk_22DF697A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v17 - v8;
  if (qword_27DA4DB90 != -1)
  {
    swift_once();
  }

  v10 = sub_22DF63734();
  __swift_project_value_buffer(v10, qword_27DA4E6C8);

  v11 = sub_22DF63714();
  v12 = sub_22DF63CF4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17[0] = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_22DEF0354(a1, a2, v17);
    _os_log_impl(&dword_22DEEA000, v11, v12, "evicting storebag %{public}s from cache", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x2318DDBE0](v14, -1, -1);
    MEMORY[0x2318DDBE0](v13, -1, -1);
  }

  v15 = (*(*v3 + 144))(v17);
  sub_22DF508B0(a1, a2, v9);
  sub_22DEF1364(v9, &unk_27DA47BF0, &unk_22DF697A0);
  return v15(v17, 0);
}

uint64_t sub_22DF50810()
{
  v1 = *(v0 + 14);

  v2 = *(v0 + 15);

  v3 = *(v0 + 16);
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC19CloudTelemetryTools13StorebagCache_storebagCacheURL;
  v5 = sub_22DF63444();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *&v0[OBJC_IVAR____TtC19CloudTelemetryTools13StorebagCache_storebagSource];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22DF508B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_22DEF08FC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22DF50F44();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for CachedStorebag(0);
    v22 = *(v15 - 8);
    sub_22DF51640(v14 + *(v22 + 72) * v9, a3);
    sub_22DF50D58(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for CachedStorebag(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_22DF50A08(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for CachedStorebag(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CB0, &qword_22DF69908);
  v44 = a2;
  result = sub_22DF64034();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_22DF51640(v31, v45);
      }

      else
      {
        sub_22DF51578(v31, v45, type metadata accessor for CachedStorebag);
      }

      v32 = *(v12 + 40);
      sub_22DF642A4();
      sub_22DF63A54();
      result = sub_22DF642D4();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_22DF51640(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_22DF50D58(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22DF63E64() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_22DF642A4();

      sub_22DF63A54();
      v13 = sub_22DF642D4();

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
      v19 = *(*(type metadata accessor for CachedStorebag(0) - 8) + 72);
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

void *sub_22DF50F44()
{
  v1 = v0;
  v2 = type metadata accessor for CachedStorebag(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CB0, &qword_22DF69908);
  v5 = *v0;
  v6 = sub_22DF64024();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_22DF51578(*(v5 + 56) + v27, v31, type metadata accessor for CachedStorebag);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_22DF51640(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_22DF51188(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22DEF08FC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_22DF50F44();
      goto LABEL_7;
    }

    sub_22DF50A08(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_22DEF08FC(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_22DF64234();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for CachedStorebag(0) - 8) + 72) * v12;

    return sub_22DF519B8(a1, v20);
  }

LABEL_13:
  sub_22DF512EC(v12, a2, a3, a1, v18);
}

uint64_t sub_22DF512EC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for CachedStorebag(0);
  result = sub_22DF51640(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_22DF51384(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CC8, &qword_22DF69928);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CB0, &qword_22DF69908);
    v8 = sub_22DF64044();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22DEF12FC(v10, v6, &qword_27DA47CC8, &qword_22DF69928);
      v12 = *v6;
      v13 = v6[1];
      result = sub_22DEF08FC(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for CachedStorebag(0);
      result = sub_22DF51640(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22DF51578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DF515E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22DF51640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedStorebag(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DF51714()
{
  result = sub_22DF63594();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22DF51790()
{
  sub_22DF51840(319, &qword_27DA47C08, MEMORY[0x277CC8620]);
  if (v0 <= 0x3F)
  {
    sub_22DF51840(319, &qword_27DA47C10, sub_22DF5188C);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22DF51840(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
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

unint64_t sub_22DF5188C()
{
  result = qword_27DA47C18;
  if (!qword_27DA47C18)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DA47C18);
  }

  return result;
}

uint64_t sub_22DF518F8()
{
  result = sub_22DF63444();
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

uint64_t sub_22DF519B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedStorebag(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DF51A1C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22DEEFBD4;

  return sub_22DF500A0(v5, v6, v7, v2, v3, v4);
}

void sub_22DF51AC4(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_22DF51AD4()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4DD48);
  __swift_project_value_buffer(v0, qword_27DA4DD48);
  return sub_22DF63724();
}

uint64_t sub_22DF51B8C()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_22DF51BDC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  return sub_22DF51C6C;
}

void sub_22DF51C6C(uint64_t a1, char a2)
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

uint64_t sub_22DF51CEC()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
}

uint64_t sub_22DF51D24(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
}

uint64_t sub_22DF51D6C()
{
  swift_beginAccess();
  v1 = *(v0 + 136);
}

uint64_t sub_22DF51DA4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 136);
  *(v1 + 136) = a1;
}

uint64_t sub_22DF51E3C()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
}

uint64_t sub_22DF51E74(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  *(v1 + 144) = a1;
}

uint64_t sub_22DF51F0C(char a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22DEF4014;

  return sub_22DF51FCC(a1, a2, a3);
}

uint64_t sub_22DF51FCC(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 96) = a3;
  *(v4 + 104) = v3;
  *(v4 + 88) = a2;
  *(v4 + 176) = a1;
  *(v4 + 112) = *v3;
  v5 = sub_22DF63444();
  *(v4 + 120) = v5;
  v6 = *(v5 - 8);
  *(v4 + 128) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF520BC, 0, 0);
}

uint64_t sub_22DF520BC()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  swift_defaultActor_initialize();
  swift_weakInit();
  v6 = MEMORY[0x277D84F90];
  v7 = sub_22DF56BC0(MEMORY[0x277D84F90]);
  v8 = MEMORY[0x277D84FA0];
  v4[16] = v7;
  v4[17] = v8;
  v4[18] = sub_22DF56CBC(v6);
  type metadata accessor for StorebagCoordinator();
  (*(v2 + 16))(v1, v5, v3);
  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = sub_22DF521D8;
  v10 = v0[17];

  return sub_22DF587D4(v10);
}

uint64_t sub_22DF521D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v7 = sub_22DF527C4;
  }

  else
  {
    *(v4 + 160) = a1;
    v7 = sub_22DF52300;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22DF52300()
{
  v1 = *(v0 + 104);
  *(v1 + 112) = *(v0 + 160);
  return MEMORY[0x2822009F8](sub_22DF52324, v1, 0);
}

uint64_t sub_22DF52324()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 176);
  swift_beginAccess();
  swift_weakAssign();
  if (v3)
  {
    v4 = *(v0 + 88);
    (*(*(v0 + 128) + 8))(*(v0 + 96), *(v0 + 120));

    v5 = *(v0 + 136);

    v6 = *(v0 + 8);
    v7 = *(v0 + 104);

    return v6(v7);
  }

  else
  {
    v9 = *(**(v0 + 104) + 264);
    v13 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    *(v0 + 168) = v11;
    *v11 = v0;
    v11[1] = sub_22DF524E0;
    v12 = *(v0 + 104);

    return v13();
  }
}

uint64_t sub_22DF524E0()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 104);
  v6 = *v0;

  sub_22DF56DE4();
  swift_getObjectType();
  v4 = sub_22DF63BE4();

  return MEMORY[0x2822009F8](sub_22DF52610, v4, v3);
}

uint64_t sub_22DF52610()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = [objc_opt_self() defaultCenter];
  v8 = *MEMORY[0x277D25CA0];
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v4;
  v0[6] = sub_22DF56E38;
  v0[7] = v9;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22DF52B98;
  v0[5] = &block_descriptor_3;
  v10 = _Block_copy(v0 + 2);
  v11 = v0[7];

  v12 = [v7 addObserverForName:v8 object:0 queue:0 usingBlock:v10];
  _Block_release(v10);

  swift_unknownObjectRelease();

  (*(v2 + 8))(v5, v1);
  v13 = v0[17];

  v14 = v0[1];
  v15 = v0[13];

  return v14(v15);
}

uint64_t sub_22DF527C4()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  swift_weakDestroy();
  v7 = v4[16];

  v8 = v4[17];

  v9 = v4[18];

  type metadata accessor for SessionCoordinator();
  swift_defaultActor_destroy();

  (*(v2 + 8))(v5, v3);
  swift_deallocPartialClassInstance();

  v10 = v0[1];
  v11 = v0[19];

  return v10();
}

uint64_t sub_22DF528B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47460, &qword_22DF65310);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  if (qword_27DA4DD40 != -1)
  {
    swift_once();
  }

  v6 = sub_22DF63734();
  __swift_project_value_buffer(v6, qword_27DA4DD48);
  v7 = sub_22DF63714();
  v8 = sub_22DF63D24();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22DEEA000, v7, v8, "received notification for MC effective settings change", v9, 2u);
    MEMORY[0x2318DDBE0](v9, -1, -1);
  }

  v10 = sub_22DF63C34();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;

  sub_22DEEFE64(0, 0, v5, &unk_22DF69A40, v11);
}

uint64_t sub_22DF52A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*a4 + 264);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_22DEEFBD4;

  return v9();
}

uint64_t sub_22DF52B98(uint64_t a1)
{
  v2 = sub_22DF631D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_22DF631C4();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22DF52C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[42] = a4;
  v5[43] = v4;
  v5[40] = a2;
  v5[41] = a3;
  v5[39] = a1;
  return MEMORY[0x2822009F8](sub_22DF52CB4, v4, 0);
}

uint64_t sub_22DF52CB4()
{
  v1 = *(v0 + 320);
  v2 = *(*(v0 + 344) + 112);
  *(v0 + 352) = v2;
  v10 = *(v0 + 328);
  *(v0 + 216) = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 192));
  v4 = *(v10 - 8);
  v5 = *(v4 + 16);
  *(v0 + 360) = v5;
  *(v0 + 368) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(boxed_opaque_existential_1, v1);
  v6 = *(*v2 + 128);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 376) = v8;
  *v8 = v0;
  v8[1] = sub_22DF52E3C;

  return v11(v0 + 192);
}

uint64_t sub_22DF52E3C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *(*v1 + 344);
  v6 = *v1;
  *(v2 + 416) = a1;

  __swift_destroy_boxed_opaque_existential_0((v2 + 192));

  return MEMORY[0x2822009F8](sub_22DF52F5C, v4, 0);
}

uint64_t sub_22DF52F5C()
{
  if (static SessionConfiguration.Availability.__derived_enum_equals(_:_:)(*(v0 + 416), 3) || static SessionConfiguration.Availability.__derived_enum_equals(_:_:)(*(v0 + 416), 2))
  {
    v2 = *(v0 + 360);
    v1 = *(v0 + 368);
    v3 = *(v0 + 352);
    v5 = *(v0 + 328);
    v4 = *(v0 + 336);
    v6 = *(v0 + 320);
    *(v0 + 296) = v5;
    *(v0 + 304) = v4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 272));
    v2(boxed_opaque_existential_1, v6, v5);
    v8 = *(*v3 + 136);
    v30 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    *(v0 + 384) = v10;
    *v10 = v0;
    v10[1] = sub_22DF53274;
    v11 = *(v0 + 352);
    v12 = v0 + 152;
    v13 = v0 + 272;
LABEL_4:

    return v30(v12, v13);
  }

  if (static SessionConfiguration.Availability.__derived_enum_equals(_:_:)(*(v0 + 416), 1))
  {
    v15 = *(v0 + 320);
    (*(*(v0 + 336) + 8))(*(v0 + 328));
    sub_22DEF0FA8(v0 + 16);
    if (*(v0 + 49))
    {
      v17 = *(v0 + 360);
      v16 = *(v0 + 368);
      v18 = *(v0 + 352);
      v19 = *(v0 + 320);
      v31 = *(v0 + 328);
      *(v0 + 256) = v31;
      v20 = __swift_allocate_boxed_opaque_existential_1((v0 + 232));
      v17(v20, v19, v31);
      v21 = *(*v18 + 136);
      v30 = (v21 + *v21);
      v22 = v21[1];
      v23 = swift_task_alloc();
      *(v0 + 400) = v23;
      *v23 = v0;
      v23[1] = sub_22DF533CC;
      v24 = *(v0 + 352);
      v12 = v0 + 112;
      v13 = v0 + 232;
      goto LABEL_4;
    }
  }

  sub_22DF09680(v0 + 72);
  v25 = *(v0 + 312);
  v26 = *(v0 + 96);
  v27 = *(v0 + 104);
  v28 = *(v0 + 88);
  *v25 = *(v0 + 72);
  *(v25 + 16) = v28;
  *(v25 + 24) = v26;
  *(v25 + 32) = v27;
  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_22DF53274()
{
  v2 = *(*v1 + 384);
  v3 = *v1;
  *(v3 + 392) = v0;

  if (v0)
  {
    v4 = *(v3 + 344);

    return MEMORY[0x2822009F8](sub_22DF53524, v4, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 272));
    v5 = *(v3 + 312);
    v6 = *(v3 + 176);
    v7 = *(v3 + 184);
    v8 = *(v3 + 168);
    *v5 = *(v3 + 152);
    *(v5 + 16) = v8;
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    v9 = *(v3 + 8);

    return v9();
  }
}

uint64_t sub_22DF533CC()
{
  v2 = *(*v1 + 400);
  v3 = *v1;
  *(v3 + 408) = v0;

  if (v0)
  {
    v4 = *(v3 + 344);

    return MEMORY[0x2822009F8](sub_22DF53588, v4, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 232));
    v5 = *(v3 + 312);
    v6 = *(v3 + 136);
    v7 = *(v3 + 144);
    v8 = *(v3 + 128);
    *v5 = *(v3 + 112);
    *(v5 + 16) = v8;
    *(v5 + 24) = v6;
    *(v5 + 32) = v7;
    v9 = *(v3 + 8);

    return v9();
  }
}

uint64_t sub_22DF53524()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 34);
  v1 = v0[49];
  v2 = v0[1];

  return v2();
}

uint64_t sub_22DF53588()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 29);
  v1 = v0[51];
  v2 = v0[1];

  return v2();
}

void sub_22DF535EC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = (*(*v2 + 168))(v39);
  v8 = v7;
  v9 = *v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v8;
  v38 = *v8;
  *v8 = 0x8000000000000000;
  v13 = sub_22DEF08FC(a1, a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_20;
  }

  v17 = v12;
  if (v11[3] >= v16)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22DF56548();
    }
  }

  else
  {
    sub_22DF562A8(v16, isUniquelyReferenced_nonNull_native);
    v18 = sub_22DEF08FC(a1, a2);
    if ((v17 & 1) != (v19 & 1))
    {
LABEL_23:
      sub_22DF64234();
      __break(1u);
      return;
    }

    v13 = v18;
  }

  v20 = *v8;
  *v8 = v38;

  v21 = *v8;
  if (v17)
  {
    goto LABEL_10;
  }

  v21[(v13 >> 6) + 8] |= 1 << v13;
  v22 = (v21[6] + 16 * v13);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 8 * v13) = 0;
  v23 = v21[2];
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
    goto LABEL_23;
  }

  v21[2] = v25;

LABEL_10:
  v26 = v21[7];
  v27 = *(v26 + 8 * v13);
  v24 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v24)
  {
    *(v26 + 8 * v13) = v28;
    v6(v39, 0);
    if (qword_27DA4DD40 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  swift_once();
LABEL_12:
  v29 = sub_22DF63734();
  __swift_project_value_buffer(v29, qword_27DA4DD48);

  v30 = sub_22DF63714();
  v31 = sub_22DF63CF4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v39[0] = v33;
    *v32 = 136446466;
    *(v32 + 4) = sub_22DEF0354(a1, a2, v39);
    *(v32 + 12) = 2048;
    v34 = (*(*v3 + 152))();
    if (*(v34 + 16) && (v35 = sub_22DEF08FC(a1, a2), (v36 & 1) != 0))
    {
      v37 = *(*(v34 + 56) + 8 * v35);
    }

    else
    {
      v37 = 0;
    }

    *(v32 + 14) = v37;

    _os_log_impl(&dword_22DEEA000, v30, v31, "registered use for session config for %{public}s, now %lld uses", v32, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x2318DDBE0](v33, -1, -1);
    MEMORY[0x2318DDBE0](v32, -1, -1);
  }

  else
  {
  }
}

void sub_22DF53944(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47460, &qword_22DF65310);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = v64 - v12;
  v14 = (*(v8 + 152))(v11);
  if (*(v14 + 16))
  {
    v15 = sub_22DEF08FC(a1, a2);
    if (v16)
    {
      v17 = *(*(v14 + 56) + 8 * v15);

      v18 = v17 - 1;
      if (__OFSUB__(v17, 1))
      {
        __break(1u);
      }

      else if (qword_27DA4DD40 == -1)
      {
        goto LABEL_5;
      }

      swift_once();
LABEL_5:
      LODWORD(v66) = a3;
      v19 = sub_22DF63734();
      v20 = __swift_project_value_buffer(v19, qword_27DA4DD48);

      v64[1] = v20;
      v21 = sub_22DF63714();
      v22 = sub_22DF63CF4();

      v23 = os_log_type_enabled(v21, v22);
      v65 = a1;
      if (v23)
      {
        v24 = v17 - 1;
        v25 = v8;
        v26 = v13;
        v27 = a1;
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v68[0] = v29;
        *v28 = 136446466;
        v30 = v27;
        v13 = v26;
        v8 = v25;
        v18 = v24;
        *(v28 + 4) = sub_22DEF0354(v30, a2, v68);
        *(v28 + 12) = 2050;
        *(v28 + 14) = v24;
        _os_log_impl(&dword_22DEEA000, v21, v22, "session config finished for %{public}s with %{public}lld uses remaining", v28, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x2318DDBE0](v29, -1, -1);
        MEMORY[0x2318DDBE0](v28, -1, -1);
      }

      v31 = *(*v4 + 168);
      if (v18 > 0)
      {
        v32 = v31(v68);
        v34 = v33;
        v35 = *v33;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67 = *v34;
        *v34 = 0x8000000000000000;
        sub_22DF5675C(v18, v65, a2, isUniquelyReferenced_nonNull_native);
        v37 = *v34;
        *v34 = v67;

        v32(v68, 0);
        return;
      }

      v43 = v31(v68);
      v44 = v65;
      sub_22DF566B0(v65, a2);
      v45 = v43(v68, 0);
      if (v66)
      {
        v46 = v8;
        v47 = (*(*v4 + 176))(v45);
        v48 = sub_22DF3629C(v44, a2, v47);

        v49 = sub_22DF63714();
        v50 = sub_22DF63CF4();

        v51 = os_log_type_enabled(v49, v50);
        if (v48)
        {
          if (v51)
          {
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v68[0] = v53;
            *v52 = 136446210;
            *(v52 + 4) = sub_22DEF0354(v44, a2, v68);
            _os_log_impl(&dword_22DEEA000, v49, v50, "not evicting %{public}s: already running", v52, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v53);
            MEMORY[0x2318DDBE0](v53, -1, -1);
            MEMORY[0x2318DDBE0](v52, -1, -1);
          }

          return;
        }

        if (v51)
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v68[0] = v58;
          *v57 = 136446210;
          *(v57 + 4) = sub_22DEF0354(v44, a2, v68);
          _os_log_impl(&dword_22DEEA000, v49, v50, "starting eviction timer for %{public}s", v57, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v58);
          MEMORY[0x2318DDBE0](v58, -1, -1);
          MEMORY[0x2318DDBE0](v57, -1, -1);
        }

        v59 = *(*v4 + 192);

        v60 = v59(v68);
        sub_22DF110A8(&v67, v44, a2);

        v60(v68, 0);
        v61 = sub_22DF63C34();
        (*(*(v61 - 8) + 56))(v13, 1, 1, v61);
        v62 = sub_22DF56DE4();
        v63 = swift_allocObject();
        v63[2] = v4;
        v63[3] = v62;
        v63[4] = v4;
        v63[5] = v44;
        v63[6] = a2;
        v63[7] = v46;
        swift_retain_n();

        sub_22DEF61B8(0, 0, v13, &unk_22DF69978, v63);
      }

      else
      {
        v54 = sub_22DF63C34();
        (*(*(v54 - 8) + 56))(v13, 1, 1, v54);
        v55 = sub_22DF56DE4();
        v56 = swift_allocObject();
        v56[2] = v4;
        v56[3] = v55;
        v56[4] = v44;
        v56[5] = a2;
        v56[6] = v4;
        v56[7] = v8;
        swift_retain_n();

        sub_22DEEFE64(0, 0, v13, &unk_22DF69968, v56);
      }

      return;
    }
  }

  if (qword_27DA4DD40 != -1)
  {
    swift_once();
  }

  v38 = sub_22DF63734();
  __swift_project_value_buffer(v38, qword_27DA4DD48);

  v66 = sub_22DF63714();
  v39 = sub_22DF63D04();

  if (os_log_type_enabled(v66, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v68[0] = v41;
    *v40 = 136446210;
    *(v40 + 4) = sub_22DEF0354(a1, a2, v68);
    _os_log_impl(&dword_22DEEA000, v66, v39, "session config finished with no use count for %{public}s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x2318DDBE0](v41, -1, -1);
    MEMORY[0x2318DDBE0](v40, -1, -1);
  }

  else
  {
    v42 = v66;
  }
}

uint64_t sub_22DF54144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = *(MEMORY[0x277D857E8] + 4);
  v8 = swift_task_alloc();
  v6[13] = v8;
  *v8 = v6;
  v8[1] = sub_22DF541EC;

  return MEMORY[0x282200480](10000000000);
}

uint64_t sub_22DF541EC()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_22DF54914;
  }

  else
  {
    v4 = sub_22DF54314;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22DF54314()
{
  v32 = v0;
  if (qword_27DA4DD40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_22DF63734();
  __swift_project_value_buffer(v2, qword_27DA4DD48);

  v3 = sub_22DF63714();
  v4 = sub_22DF63CF4();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_22DEF0354(v6, v5, &v31);
    _os_log_impl(&dword_22DEEA000, v3, v4, "eviction timer fired: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2318DDBE0](v8, -1, -1);
    MEMORY[0x2318DDBE0](v7, -1, -1);
  }

  v9 = (*(**(v0 + 80) + 152))();
  if (*(v9 + 16) && (v10 = sub_22DEF08FC(*(v0 + 88), *(v0 + 96)), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);

    if (v12)
    {
      v14 = *(v0 + 88);
      v13 = *(v0 + 96);
      v15 = (*(**(v0 + 80) + 192))(v0 + 48);
      sub_22DF568C0(v14, v13);

      v15(v0 + 48, 0);
      v16 = *(v0 + 8);

      return v16();
    }
  }

  else
  {
  }

  v18 = *(v0 + 96);

  v19 = sub_22DF63714();
  v20 = sub_22DF63CF4();

  if (os_log_type_enabled(v19, v20))
  {
    v22 = *(v0 + 88);
    v21 = *(v0 + 96);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v31 = v24;
    *v23 = 136446210;
    *(v23 + 4) = sub_22DEF0354(v22, v21, &v31);
    _os_log_impl(&dword_22DEEA000, v19, v20, "requesting eviction for %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x2318DDBE0](v24, -1, -1);
    MEMORY[0x2318DDBE0](v23, -1, -1);
  }

  v25 = *(**(*(v0 + 80) + 112) + 152);
  v30 = (v25 + *v25);
  v26 = v25[1];
  v27 = swift_task_alloc();
  *(v0 + 120) = v27;
  *v27 = v0;
  v27[1] = sub_22DF54734;
  v29 = *(v0 + 88);
  v28 = *(v0 + 96);

  return v30(v29, v28);
}

uint64_t sub_22DF54734()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22DF54844, v2, 0);
}

uint64_t sub_22DF54844()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = (*(**(v0 + 80) + 192))(v0 + 48);
  sub_22DF568C0(v2, v1);

  v3(v0 + 48, 0);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22DF54914()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = (*(**(v0 + 80) + 192))(v0 + 16);
  sub_22DF568C0(v2, v1);

  v3(v0 + 16, 0);
  v4 = *(v0 + 8);
  v5 = *(v0 + 112);

  return v4();
}

uint64_t sub_22DF549E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22DF54A08, a6, 0);
}

uint64_t sub_22DF54A08()
{
  v17 = v0;
  if (qword_27DA4DD40 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_22DF63734();
  __swift_project_value_buffer(v2, qword_27DA4DD48);

  v3 = sub_22DF63714();
  v4 = sub_22DF63CF4();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_22DEF0354(v6, v5, &v16);
    _os_log_impl(&dword_22DEEA000, v3, v4, "requesting immediate eviction for %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2318DDBE0](v8, -1, -1);
    MEMORY[0x2318DDBE0](v7, -1, -1);
  }

  v9 = *(**(v0[4] + 112) + 152);
  v15 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[5] = v11;
  *v11 = v0;
  v11[1] = sub_22DF54C54;
  v13 = v0[2];
  v12 = v0[3];

  return v15(v13, v12);
}

uint64_t sub_22DF54C54()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22DF54D68()
{
  v1 = (*(**(v0 + 48) + 128))();
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_22DF54F1C;

    return sub_22DF037E8();
  }

  else
  {
    if (qword_27DA4DD40 != -1)
    {
      swift_once();
    }

    v4 = sub_22DF63734();
    __swift_project_value_buffer(v4, qword_27DA4DD48);
    v5 = sub_22DF63714();
    v6 = sub_22DF63D14();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22DEEA000, v5, v6, "failed to check last DNU setting : diskCache nil", v7, 2u);
      MEMORY[0x2318DDBE0](v7, -1, -1);
    }

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_22DF54F1C(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 72) = v1;

  v7 = *(v3 + 48);
  if (v1)
  {
    v8 = sub_22DF5597C;
  }

  else
  {
    v8 = sub_22DF55054;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22DF55054()
{
  v1 = *(v0 + 144);
  if (v1 == 2)
  {
    if (qword_27DA4DD40 != -1)
    {
      swift_once();
    }

    v2 = sub_22DF63734();
    __swift_project_value_buffer(v2, qword_27DA4DD48);
    v3 = sub_22DF63714();
    v4 = sub_22DF63D24();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22DEEA000, v3, v4, "resetting clientIDs due to missing lastDNU setting", v5, 2u);
      MEMORY[0x2318DDBE0](v5, -1, -1);
    }

    v6 = *(v0 + 56);

    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v8 = sub_22DF55620;
LABEL_13:
    v7[1] = v8;

    return sub_22DF035BC();
  }

  if ((sub_22DF2EB24() & 1) != (v1 & 1))
  {
    if (qword_27DA4DD40 != -1)
    {
      swift_once();
    }

    v9 = sub_22DF63734();
    __swift_project_value_buffer(v9, qword_27DA4DD48);
    v10 = sub_22DF63714();
    v11 = sub_22DF63D24();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 144);
      v13 = swift_slowAlloc();
      *v13 = 67240448;
      *(v13 + 4) = v12 & 1;
      *(v13 + 8) = 1026;
      *(v13 + 10) = sub_22DF2EB24() & 1;
      _os_log_impl(&dword_22DEEA000, v10, v11, "DNU status changed (%{BOOL,public}d -> %{BOOL,public}d), resetting clientIDs", v13, 0xEu);
      MEMORY[0x2318DDBE0](v13, -1, -1);
    }

    v14 = *(v0 + 56);

    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v8 = sub_22DF55324;
    goto LABEL_13;
  }

  v16 = *(v0 + 56);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_22DF55324()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_22DF55B40;
  }

  else
  {
    v6 = sub_22DF55450;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22DF55450()
{
  v1 = *(v0 + 56);
  v2 = sub_22DF2EB24();
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_22DF554F4;

  return sub_22DF03A9C(v2 & 1);
}

uint64_t sub_22DF554F4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_22DF55D04;
  }

  else
  {
    v6 = sub_22DF5704C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22DF55620()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_22DF55EC8;
  }

  else
  {
    v6 = sub_22DF5574C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22DF5574C()
{
  v1 = *(v0 + 56);
  v2 = sub_22DF2EB24();
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_22DF557F0;

  return sub_22DF03A9C(v2 & 1);
}

uint64_t sub_22DF557F0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_22DF5608C;
  }

  else
  {
    v6 = sub_22DF5591C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22DF5591C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22DF5597C()
{
  v18 = v0;
  v1 = v0[9];
  v2 = v0[7];

  if (qword_27DA4DD40 != -1)
  {
    swift_once();
  }

  v3 = sub_22DF63734();
  __swift_project_value_buffer(v3, qword_27DA4DD48);
  v4 = v1;
  v5 = sub_22DF63714();
  v6 = sub_22DF63D14();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = sub_22DF64244();
    v14 = sub_22DEF0354(v12, v13, &v17);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_22DEEA000, v5, v6, "failed to check last DNU setting: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2318DDBE0](v8, -1, -1);
    MEMORY[0x2318DDBE0](v7, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_22DF55B40()
{
  v18 = v0;
  v1 = v0[11];
  v2 = v0[7];

  if (qword_27DA4DD40 != -1)
  {
    swift_once();
  }

  v3 = sub_22DF63734();
  __swift_project_value_buffer(v3, qword_27DA4DD48);
  v4 = v1;
  v5 = sub_22DF63714();
  v6 = sub_22DF63D14();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = sub_22DF64244();
    v14 = sub_22DEF0354(v12, v13, &v17);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_22DEEA000, v5, v6, "failed to check last DNU setting: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2318DDBE0](v8, -1, -1);
    MEMORY[0x2318DDBE0](v7, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_22DF55D04()
{
  v18 = v0;
  v1 = v0[13];
  v2 = v0[7];

  if (qword_27DA4DD40 != -1)
  {
    swift_once();
  }

  v3 = sub_22DF63734();
  __swift_project_value_buffer(v3, qword_27DA4DD48);
  v4 = v1;
  v5 = sub_22DF63714();
  v6 = sub_22DF63D14();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = sub_22DF64244();
    v14 = sub_22DEF0354(v12, v13, &v17);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_22DEEA000, v5, v6, "failed to check last DNU setting: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2318DDBE0](v8, -1, -1);
    MEMORY[0x2318DDBE0](v7, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_22DF55EC8()
{
  v18 = v0;
  v1 = v0[15];
  v2 = v0[7];

  if (qword_27DA4DD40 != -1)
  {
    swift_once();
  }

  v3 = sub_22DF63734();
  __swift_project_value_buffer(v3, qword_27DA4DD48);
  v4 = v1;
  v5 = sub_22DF63714();
  v6 = sub_22DF63D14();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = sub_22DF64244();
    v14 = sub_22DEF0354(v12, v13, &v17);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_22DEEA000, v5, v6, "failed to check last DNU setting: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2318DDBE0](v8, -1, -1);
    MEMORY[0x2318DDBE0](v7, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_22DF5608C()
{
  v18 = v0;
  v1 = v0[17];
  v2 = v0[7];

  if (qword_27DA4DD40 != -1)
  {
    swift_once();
  }

  v3 = sub_22DF63734();
  __swift_project_value_buffer(v3, qword_27DA4DD48);
  v4 = v1;
  v5 = sub_22DF63714();
  v6 = sub_22DF63D14();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = sub_22DF64244();
    v14 = sub_22DEF0354(v12, v13, &v17);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_22DEEA000, v5, v6, "failed to check last DNU setting: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2318DDBE0](v8, -1, -1);
    MEMORY[0x2318DDBE0](v7, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_22DF56250()
{
  v1 = v0[14];

  swift_weakDestroy();
  v2 = v0[16];

  v3 = v0[17];

  v4 = v0[18];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22DF562A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CD8, &unk_22DF69A28);
  v38 = a2;
  result = sub_22DF64034();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_22DF642A4();
      sub_22DF63A54();
      result = sub_22DF642D4();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_22DF56548()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CD8, &unk_22DF69A28);
  v2 = *v0;
  v3 = sub_22DF64024();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

uint64_t sub_22DF566B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_22DEF08FC(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_22DF56548();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_22DF3BD14(v7, v10);
  *v3 = v10;
  return v12;
}

unint64_t sub_22DF5675C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22DEF08FC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22DF562A8(v16, a4 & 1);
      v20 = *v5;
      result = sub_22DEF08FC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_22DF64234();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_22DF56548();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_22DF568C0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_22DF642A4();
  sub_22DF63A54();
  v7 = sub_22DF642D4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_22DF64184() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22DF115D8();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_22DF569FC(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_22DF569FC(unint64_t result)
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

    v9 = sub_22DF63E64();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_22DF642A4();

        sub_22DF63A54();
        v15 = sub_22DF642D4();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_22DF56BC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CD8, &unk_22DF69A28);
    v3 = sub_22DF64044();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22DEF08FC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22DF56CBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CE0, qword_22DF69A48);
    v3 = sub_22DF64044();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22DEF08FC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22DF56DE4()
{
  result = qword_27DA47CD0;
  if (!qword_27DA47CD0)
  {
    type metadata accessor for SessionCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47CD0);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22DF56E58()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22DEEFBD4;

  return sub_22DF549E4(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_22DF56F00()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22DEEFBD4;

  return sub_22DF54144(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_22DF56FB8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22DEF1598;

  return sub_22DF52A7C(v3, v4, v5, v2);
}

uint64_t variable initialization expression of StorebagCoordinator.pathMonitorQueue()
{
  v16 = sub_22DF63824();
  v0 = *(v16 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v16);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22DF63D54();
  v4 = *(v15 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v15);
  v14 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22DF63D44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22DF63854();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13[0] = sub_22DF3D47C();
  v13[1] = "session_coordinator";
  sub_22DF63834();
  v17 = MEMORY[0x277D84F90];
  sub_22DF59814(&qword_27DA47B40, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47B80, &qword_22DF69400);
  sub_22DEF7E88(&qword_27DA47B48, &unk_27DA47B80, &qword_22DF69400);
  sub_22DF63E54();
  (*(v4 + 104))(v14, *MEMORY[0x277D85268], v15);
  v11 = v16;
  (*(v0 + 104))(v3, *MEMORY[0x277D851A8], v16);
  sub_22DF63D84();
  (*(v0 + 8))(v3, v11);
  return sub_22DF63D74();
}

uint64_t static StorebagCoordinator.mockAvailability.setter(char a1)
{
  result = swift_beginAccess();
  static StorebagCoordinator.mockAvailability = a1;
  return result;
}

uint64_t sub_22DF57458(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DF63814();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22DF63854();
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D00, qword_22DF69B40);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v21 - v15;
  v21[1] = *(a2 + 120);
  (*(v13 + 16))(v21 - v15, a1, v12);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v16, v12);
  *(v18 + ((v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_22DF59764;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22DEF6464;
  aBlock[3] = &block_descriptor_4;
  v19 = _Block_copy(aBlock);

  sub_22DF63844();
  v25 = MEMORY[0x277D84F90];
  sub_22DF59814(&qword_27DA47448, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47450, &unk_22DF65B98);
  sub_22DEF7E88(&qword_27DA47458, &qword_27DA47450, &unk_22DF65B98);
  sub_22DF63E54();
  MEMORY[0x2318DCCF0](0, v11, v7, v19);
  _Block_release(v19);
  (*(v24 + 8))(v7, v4);
  (*(v22 + 8))(v11, v23);
}

uint64_t sub_22DF577F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_22DF637E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-v9];
  v11 = sub_22DF63804();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (static StorebagCoordinator.mockAvailability == 4)
  {
    v16 = *(a2 + 112);
    sub_22DF63774();
    sub_22DF637F4();
    (*(v4 + 104))(v8, *MEMORY[0x277CD8F68], v3);
    LOBYTE(v16) = sub_22DF637D4();
    v17 = *(v4 + 8);
    v17(v8, v3);
    v17(v10, v3);
    if (v16 & 1) != 0 || (sub_22DF637C4())
    {
      v21 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D00, qword_22DF69B40);
      sub_22DF63C04();
      return (*(v12 + 8))(v15, v11);
    }

    else
    {
      if (sub_22DF637B4())
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      v21 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D00, qword_22DF69B40);
      sub_22DF63C04();
      return (*(v12 + 8))(v15, v11);
    }
  }

  else
  {
    v21 = static StorebagCoordinator.mockAvailability;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D00, qword_22DF69B40);
    return sub_22DF63C04();
  }
}

uint64_t sub_22DF57AD0(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x2822009F8](sub_22DF57AF0, v1, 0);
}

uint64_t sub_22DF57AF0()
{
  v1 = v0[9];
  v2 = *(v0[10] + 128);
  v0[11] = v2;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 8))(v3, v4);
  v5 = v0[3];
  v0[12] = v0[2];
  v0[13] = v5;

  sub_22DEF0FA8((v0 + 2));
  v6 = (*v2 + 224) & 0xFFFFFFFFFFFFLL | 0xE7F4000000000000;
  v0[14] = *(*v2 + 224);
  v0[15] = v6;

  return MEMORY[0x2822009F8](sub_22DF57BC4, v2, 0);
}

uint64_t sub_22DF57BC4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  LOBYTE(v2) = (*(v0 + 112))(*(v0 + 96), *(v0 + 104));

  if (v2)
  {
    v3 = *(v0 + 8);

    return v3(3);
  }

  else
  {
    v5 = *(v0 + 80);

    return MEMORY[0x2822009F8](sub_22DF57C7C, v5, 0);
  }
}

uint64_t sub_22DF57C7C()
{
  v1 = *(v0 + 80);
  v2 = sub_22DF59814(&qword_27DA47CF0, type metadata accessor for StorebagCoordinator);
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *v4 = v0;
  v4[1] = sub_22DF57D98;
  v5 = *(v0 + 80);

  return MEMORY[0x2822007B8](v0 + 136, v1, v2, 0xD000000000000013, 0x800000022DF6F980, sub_22DF57F0C, v5, &type metadata for SessionConfiguration.Availability);
}

uint64_t sub_22DF57D98()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22DF57EA8, v2, 0);
}

uint64_t type metadata accessor for StorebagCoordinator()
{
  result = qword_28150A860;
  if (!qword_28150A860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22DF57F14(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  return MEMORY[0x2822009F8](sub_22DF57F38, v2, 0);
}

uint64_t sub_22DF57F38()
{
  v1 = v0[24];
  v2 = *(v0[25] + 128);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 8))(v3, v4);
  v5 = v0[2];
  v6 = v0[3];
  v0[26] = v6;

  sub_22DEF0FA8((v0 + 2));
  v7 = *(*v2 + 232);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[27] = v9;
  *v9 = v0;
  v9[1] = sub_22DF580BC;

  return (v11)(v0 + 14, v5, v6);
}

uint64_t sub_22DF580BC()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v9 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = *(v2 + 200);
    v5 = sub_22DF582B0;
  }

  else
  {
    v7 = *(v2 + 200);
    v6 = *(v2 + 208);

    v5 = sub_22DF581E0;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22DF581E0()
{
  v1 = *(v0 + 184);
  sub_22DF0D334(*(v0 + 192), (v0 + 72));
  *(v0 + 168) = *(v0 + 112);
  sub_22DEF1364(v0 + 168, &qword_27DA477F8, &unk_22DF670D0);
  *(v0 + 152) = *(v0 + 128);
  sub_22DF13A04(v0 + 152);
  *(v0 + 176) = *(v0 + 144);
  sub_22DEF1364(v0 + 176, &qword_27DA47C00, &qword_22DF670A0);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  *(v1 + 32) = *(v0 + 104);
  *v1 = v3;
  *(v1 + 16) = v2;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22DF582B0()
{
  v1 = v0[26];

  v2 = v0[1];
  v3 = v0[28];

  return v2();
}

uint64_t sub_22DF58314(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_22DF58334, v1, 0);
}

uint64_t sub_22DF58334()
{
  v1 = v0[18];
  v2 = *(v0[19] + 128);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 8))(v3, v4);
  v5 = v0[2];
  v6 = v0[3];
  v0[20] = v6;

  sub_22DEF0FA8((v0 + 2));
  v7 = *(*v2 + 232);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_22DF584B8;

  return (v11)(v0 + 9, v5, v6);
}

uint64_t sub_22DF584B8()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v9 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);
    v5 = sub_22DF5869C;
  }

  else
  {
    v7 = *(v2 + 152);
    v6 = *(v2 + 160);

    v5 = sub_22DF585DC;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22DF585DC()
{
  v1 = sub_22DF0C880(*(v0 + 144));
  *(v0 + 128) = *(v0 + 72);
  sub_22DEF1364(v0 + 128, &qword_27DA477F8, &unk_22DF670D0);
  *(v0 + 112) = *(v0 + 88);
  sub_22DF13A04(v0 + 112);
  *(v0 + 136) = *(v0 + 104);
  sub_22DEF1364(v0 + 136, &qword_27DA47C00, &qword_22DF670A0);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22DF5869C()
{
  v1 = v0[20];

  v2 = v0[1];
  v3 = v0[22];

  return v2();
}

uint64_t sub_22DF58700(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22DF58724, v2, 0);
}

uint64_t sub_22DF58724()
{
  v1 = *(v0[4] + 128);
  v0[5] = v1;
  v2 = *v1 + 256;
  v0[6] = *v2;
  v0[7] = v2 & 0xFFFFFFFFFFFFLL | 0xA38A000000000000;
  return MEMORY[0x2822009F8](sub_22DF5876C, v1, 0);
}

uint64_t sub_22DF5876C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  (*(v0 + 48))(*(v0 + 16), *(v0 + 24));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22DF587D4(uint64_t a1)
{
  v4 = *(v1 + 48);
  v5 = *(v1 + 52);
  swift_allocObject();
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22DEF4014;

  return sub_22DF5887C(a1);
}

uint64_t sub_22DF5887C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_22DF63444();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_22DF63824();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = sub_22DF63D54();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v12 = sub_22DF63D44();
  v2[14] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v14 = *(*(sub_22DF63854() - 8) + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF58A50, 0, 0);
}

uint64_t sub_22DF58A50()
{
  v1 = v0[14];
  v22 = v0[15];
  v2 = v0[12];
  v3 = v0[10];
  v23 = v0[13];
  v24 = v0[11];
  v4 = v0[9];
  v25 = v0[8];
  v26 = v0[16];
  v29 = v0[7];
  v30 = v0[5];
  v31 = v0[4];
  v27 = v0[6];
  v28 = v0[3];
  swift_defaultActor_initialize();
  sub_22DF3D47C();
  sub_22DF63834();
  v0[2] = MEMORY[0x277D84F90];
  sub_22DF59814(&qword_27DA47B40, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47B80, &qword_22DF69400);
  sub_22DEF7E88(&qword_27DA47B48, &unk_27DA47B80, &qword_22DF69400);
  sub_22DF63E54();
  (*(v2 + 104))(v23, *MEMORY[0x277D85268], v24);
  (*(v4 + 104))(v3, *MEMORY[0x277D851A8], v25);
  sub_22DF63D84();
  (*(v4 + 8))(v3, v25);
  *(v31 + 120) = sub_22DF63D74();
  type metadata accessor for StorebagCache(0);
  v5 = *(v27 + 16);
  v5(v29, v28, v30);
  v6 = sub_22DF4C9BC();
  v7 = sub_22DF4C9C8(v6, 0, 0, v29);
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];
  *(v8 + 128) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CF8, &qword_22DF69A88);
  v11 = sub_22DF63764();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22DF65900;
  (*(v12 + 104))(v15 + v14, *MEMORY[0x277CD8CC0], v11);
  v16 = sub_22DF637A4();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v8 + 112) = sub_22DF63784();
  v19 = *(v31 + 120);

  v20 = v19;
  sub_22DF63794();

  v5(v8 + OBJC_IVAR____TtC19CloudTelemetryTools19StorebagCoordinator_rootCacheURL, v10, v9);

  return MEMORY[0x2822009F8](sub_22DF58EEC, v8, 0);
}

uint64_t sub_22DF58EEC()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[7];
  (*(v0[6] + 8))(v0[3], v0[5]);

  v6 = v0[1];
  v7 = v0[4];

  return v6(v7);
}

uint64_t StorebagCoordinator.deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  v3 = OBJC_IVAR____TtC19CloudTelemetryTools19StorebagCoordinator_rootCacheURL;
  v4 = sub_22DF63444();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t StorebagCoordinator.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  v3 = OBJC_IVAR____TtC19CloudTelemetryTools19StorebagCoordinator_rootCacheURL;
  v4 = sub_22DF63444();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22DF590C8(uint64_t a1)
{
  v4 = *(*v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22DF591E8;

  return v8(a1);
}

uint64_t sub_22DF591E8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_22DF592E4(uint64_t a1, uint64_t a2)
{
  *(v3 + 56) = a1;
  v5 = *(*v2 + 136);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v3 + 64) = v7;
  *v7 = v3;
  v7[1] = sub_22DF59410;

  return v9(v3 + 16, a2);
}

uint64_t sub_22DF59410()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (!v0)
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 32);
    v7 = *(v2 + 56);
    *(v7 + 32) = *(v2 + 48);
    *v7 = v5;
    *(v7 + 16) = v6;
  }

  v8 = *(v4 + 8);

  return v8();
}

uint64_t sub_22DF59524(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 152);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22DEEFBD4;

  return v10(a1, a2);
}

uint64_t sub_22DF5964C(uint64_t a1)
{
  result = sub_22DF59814(&qword_27DA47CF0, type metadata accessor for StorebagCoordinator);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22DF596AC()
{
  result = sub_22DF63444();
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

uint64_t sub_22DF59764()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D00, qword_22DF69B40) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_22DF577F4(v0 + v2, v3);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22DF59814(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22DF5985C()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4E6E0);
  __swift_project_value_buffer(v0, qword_27DA4E6E0);
  return sub_22DF63724();
}

uint64_t sub_22DF598D8()
{
  v1[6] = v0;
  v2 = sub_22DF63594();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF599A4, v0, 0);
}

uint64_t sub_22DF599A4()
{
  v1 = *(v0[6] + 112);
  v0[11] = v1;
  if (v1)
  {
    v3 = v0[9];
    v2 = v0[10];
    v4 = v0[7];
    v5 = v0[8];

    sub_22DF63554();
    sub_22DF63504();
    v6 = *(v5 + 8);
    v0[12] = v6;
    v0[13] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v3, v4);
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_22DF59BB0;
    v8 = v0[10];

    return sub_22DF02B6C(v8);
  }

  else
  {
    if (qword_27DA4DEE0 != -1)
    {
      swift_once();
    }

    v10 = sub_22DF63734();
    __swift_project_value_buffer(v10, qword_27DA4E6E0);
    v11 = sub_22DF63714();
    v12 = sub_22DF63D24();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22DEEA000, v11, v12, "cleanup cache activity skipped due to bad initialization", v13, 2u);
      MEMORY[0x2318DDBE0](v13, -1, -1);
    }

    v15 = v0[9];
    v14 = v0[10];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_22DF59BB0()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {
    v4 = v3[6];

    return MEMORY[0x2822009F8](sub_22DF59ED8, v4, 0);
  }

  else
  {
    v5 = v3[11];
    v6 = swift_task_alloc();
    v3[16] = v6;
    *v6 = v3;
    v6[1] = sub_22DF59D20;

    return sub_22DF03C94();
  }
}

uint64_t sub_22DF59D20()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_22DF5A0D0;
  }

  else
  {
    v6 = sub_22DF59E4C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22DF59E4C()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[7];

  v2(v4, v5);
  v7 = v0[9];
  v6 = v0[10];

  v8 = v0[1];

  return v8();
}

uint64_t sub_22DF59ED8()
{
  v22 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  (*(v0 + 96))(*(v0 + 80), *(v0 + 56));
  if (qword_27DA4DEE0 != -1)
  {
    swift_once();
  }

  v3 = sub_22DF63734();
  __swift_project_value_buffer(v3, qword_27DA4E6E0);
  v4 = v1;
  v5 = sub_22DF63714();
  v6 = sub_22DF63D14();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 88);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v12 = *(v0 + 16);
    v11 = *(v0 + 24);
    v13 = *(v0 + 32);
    v14 = sub_22DF64244();
    v16 = sub_22DEF0354(v14, v15, &v21);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_22DEEA000, v5, v6, "failed to delete outdated sessions: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x2318DDBE0](v10, -1, -1);
    MEMORY[0x2318DDBE0](v9, -1, -1);
  }

  else
  {
  }

  v18 = *(v0 + 72);
  v17 = *(v0 + 80);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_22DF5A0D0()
{
  v22 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  (*(v0 + 96))(*(v0 + 80), *(v0 + 56));
  if (qword_27DA4DEE0 != -1)
  {
    swift_once();
  }

  v3 = sub_22DF63734();
  __swift_project_value_buffer(v3, qword_27DA4E6E0);
  v4 = v1;
  v5 = sub_22DF63714();
  v6 = sub_22DF63D14();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 88);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v12 = *(v0 + 16);
    v11 = *(v0 + 24);
    v13 = *(v0 + 32);
    v14 = sub_22DF64244();
    v16 = sub_22DEF0354(v14, v15, &v21);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_22DEEA000, v5, v6, "failed to delete outdated sessions: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x2318DDBE0](v10, -1, -1);
    MEMORY[0x2318DDBE0](v9, -1, -1);
  }

  else
  {
  }

  v18 = *(v0 + 72);
  v17 = *(v0 + 80);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_22DF5A2C8()
{
  v2 = *(*v0 + 104);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22DEEFBD4;

  return v6();
}

uint64_t sub_22DF5A3D8()
{
  v0 = CacheCleanupActivityConfig.activityFlags.unsafeMutableAddressor();
  swift_beginAccess();
  v1 = *v0;
}

uint64_t sub_22DF5A41C()
{
  v0 = CacheCleanupActivityConfig.identifier.unsafeMutableAddressor();
  v1 = *v0;
  v2 = *(v0 + 1);

  return v1;
}

unint64_t sub_22DF5A450(uint64_t a1)
{
  result = sub_22DF5A478();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22DF5A478()
{
  result = qword_27DA47D08;
  if (!qword_27DA47D08)
  {
    type metadata accessor for CacheCleanupActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47D08);
  }

  return result;
}

uint64_t sub_22DF5A4F8()
{
  type metadata accessor for RequestOptions();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  result = swift_beginAccess();
  *(v0 + 16) = 0;
  static RequestOptions.globalRequestOptions = v0;
  return result;
}

uint64_t RequestOptions.__allocating_init(networkingDelegate:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  swift_beginAccess();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t *RequestOptions.globalRequestOptions.unsafeMutableAddressor()
{
  if (qword_27DA4DFF0 != -1)
  {
    swift_once();
  }

  return &static RequestOptions.globalRequestOptions;
}

uint64_t static RequestOptions.globalRequestOptions.getter()
{
  if (qword_27DA4DFF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static RequestOptions.globalRequestOptions.setter(uint64_t a1)
{
  if (qword_27DA4DFF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static RequestOptions.globalRequestOptions = a1;
}

uint64_t (*static RequestOptions.globalRequestOptions.modify())()
{
  if (qword_27DA4DFF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t RequestOptions.init(networkingDelegate:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  swift_beginAccess();
  *(v1 + 16) = a1;
  return v1;
}

id sub_22DF5A7E4(unsigned int a1)
{
  v2 = a1;
  v3 = (a1 >> 8) & 1;
  v4 = [objc_allocWithZone(MEMORY[0x277CF36E0]) init];
  [v4 set:5.0 timeoutIntervalForRequest:?];
  [v4 setAllowsCellularAccess_];
  [v4 set:v3 allowsExpensiveAccess:?];
  v5 = sub_22DF63984();
  [v4 set:v5 sourceApplicationBundleIdentifier:?];

  swift_beginAccess();
  if (*(v1 + 16))
  {
    [v4 setNetworkingDelegate_];
  }

  return v4;
}

uint64_t RequestOptions.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t RequestOptions.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22DF5AA30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D70, &qword_22DF69C80);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D78, &qword_22DF69C88);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22DF69C00;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = *MEMORY[0x277D86360];
  *(v4 + v5) = 1;
  type metadata accessor for XPCObject();
  swift_storeEnumTagMultiPayload();
  v6 = (v4 + v1);
  v7 = *(v0 + 48);
  *v6 = *MEMORY[0x277D86250];
  *(v6 + v7) = 86400;
  swift_storeEnumTagMultiPayload();
  v8 = (v4 + 2 * v1);
  v9 = *(v0 + 48);
  *v8 = *MEMORY[0x277D86270];
  *(v8 + v9) = 43200;
  swift_storeEnumTagMultiPayload();
  v10 = (v4 + 3 * v1);
  v11 = (v10 + *(v0 + 48));
  *v10 = *MEMORY[0x277D86340];
  v12 = *MEMORY[0x277D86348];
  *v11 = sub_22DF63AA4();
  v11[1] = v13;
  swift_storeEnumTagMultiPayload();
  v14 = (v4 + 4 * v1);
  v15 = *(v0 + 48);
  *v14 = *MEMORY[0x277D86230];
  *(v14 + v15) = 0;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86330])
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = *(v0 + 48);
  v18 = (v4 + 5 * v1);
  *v18 = *MEMORY[0x277D86330];
  *(v18 + v17) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86358])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v19 = (v4 + 6 * v1);
  v20 = *(v0 + 48);
  *v19 = *MEMORY[0x277D86358];
  *(v19 + v20) = 43200;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86398])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v21 = (&v4[v1] - v1);
  v22 = *(v0 + 48);
  *v21 = *MEMORY[0x277D86398];
  *(v21 + v22) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86390])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v23 = *(v0 + 48);
  v24 = &v4[v1];
  *v24 = *MEMORY[0x277D86390];
  *(v24 + v23) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86320])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v25 = (v4 + 9 * v1);
  v26 = *(v0 + 48);
  *v25 = *MEMORY[0x277D86320];
  *(v25 + v26) = 5242880;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86268])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v27 = (v4 + 10 * v1);
  v28 = *(v0 + 48);
  *v27 = *MEMORY[0x277D86268];
  *(v27 + v28) = *MEMORY[0x277D862C0];
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86280])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v29 = (v4 + 11 * v1);
  v30 = (v29 + *(v0 + 48));
  *v29 = *MEMORY[0x277D86280];
  *v30 = 0xD000000000000025;
  v30[1] = 0x800000022DF6FAB0;
  result = swift_storeEnumTagMultiPayload();
  if (*MEMORY[0x277D86278])
  {
    v31 = (v4 + 12 * v1);
    v32 = *(v0 + 48);
    *v31 = *MEMORY[0x277D86278];
    *(v31 + v32) = 1;
    swift_storeEnumTagMultiPayload();
    v33 = sub_22DF5B164(v3);
    swift_setDeallocating();
    swift_arrayDestroy();
    result = swift_deallocClassInstance();
    static SubmitEventsActivityConfig.activityFlags = v33;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t *SubmitEventsActivityConfig.activityFlags.unsafeMutableAddressor()
{
  if (qword_27DA4DFF8 != -1)
  {
    swift_once();
  }

  return &static SubmitEventsActivityConfig.activityFlags;
}

uint64_t static SubmitEventsActivityConfig.activityFlags.getter()
{
  if (qword_27DA4DFF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static SubmitEventsActivityConfig.activityFlags.setter(uint64_t a1)
{
  if (qword_27DA4DFF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static SubmitEventsActivityConfig.activityFlags = a1;
}

uint64_t (*static SubmitEventsActivityConfig.activityFlags.modify())()
{
  if (qword_27DA4DFF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22DF5B018()
{
  if (qword_27DA4DFF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

unint64_t sub_22DF5B0B4(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_22DF64294();

  return sub_22DF5B0F8(a1, v4);
}

unint64_t sub_22DF5B0F8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22DF5B164(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D78, &qword_22DF69C88);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D80, &unk_22DF69C90);
    v8 = sub_22DF64044();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_22DF5B314(v10, v6);
      v12 = *v6;
      result = sub_22DF5B0B4(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for XPCObject();
      result = sub_22DF3FF98(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22DF5B314(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D78, &qword_22DF69C88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unsigned __int8 *XPCObject.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22DF63604();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for XPCObject();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v47 - v15);
  MEMORY[0x28223BE20](v14);
  v19 = (&v47 - v18);
  if (a1)
  {
    v48 = v17;
    v20 = swift_unknownObjectRetain();
    v21 = MEMORY[0x2318DE010](v20);
    if (XPCTypeNull.getter() == v21)
    {
      swift_unknownObjectRelease_n();
    }

    else if (XPCTypeConnection.getter() == v21 || XPCTypeEndpoint.getter() == v21)
    {
      swift_unknownObjectRelease();
      *v19 = a1;
    }

    else if (XPCTypeBool.getter() == v21)
    {
      value = xpc_BOOL_get_value(a1);
      swift_unknownObjectRelease_n();
      *v19 = value;
    }

    else if (XPCTypeInt64.getter() == v21)
    {
      v25 = xpc_int64_get_value(a1);
      swift_unknownObjectRelease_n();
      *v19 = v25;
    }

    else if (XPCTypeUInt64.getter() == v21)
    {
      v26 = xpc_uint64_get_value(a1);
      swift_unknownObjectRelease_n();
      *v19 = v26;
    }

    else if (XPCTypeDouble.getter() == v21)
    {
      v27 = xpc_double_get_value(a1);
      swift_unknownObjectRelease_n();
      *v19 = v27;
    }

    else
    {
      if (XPCTypeDate.getter() != v21)
      {
        if (XPCTypeData.getter() == v21)
        {
          result = xpc_data_get_bytes_ptr(a1);
          if (result)
          {
            v29 = result;
            length = xpc_data_get_length(a1);
            v31 = sub_22DF5C7EC(v29, length);
            v33 = v32;
            swift_unknownObjectRelease_n();
            *v16 = v31;
            v16[1] = v33;
            swift_storeEnumTagMultiPayload();
            v34 = v16;
LABEL_34:
            sub_22DF3FF98(v34, v19);
            goto LABEL_29;
          }

          __break(1u);
        }

        else
        {
          if (XPCTypeString.getter() != v21)
          {
            if (XPCTypeUUID.getter() != v21)
            {
              swift_unknownObjectRelease();
              if (XPCTypeShmem.getter() == v21)
              {
                *v19 = a1;
              }

              else if (XPCTypeArray.getter() == v21)
              {
                *v19 = a1;
              }

              else
              {
                if (XPCTypeDictionary.getter() != v21)
                {
                  swift_unknownObjectRelease();
                  v17 = v48;
                  goto LABEL_17;
                }

                *v19 = a1;
              }

              goto LABEL_28;
            }

            result = xpc_uuid_get_bytes(a1);
            if (result)
            {
              v38 = *(result + 1);
              v39 = result[7];
              v40 = result[6];
              v41 = result[5];
              v42 = result[4];
              v43 = result[3];
              v44 = result[2];
              v45 = result[1];
              v46 = *result;
              sub_22DF635D4();
              swift_unknownObjectRelease_n();
              (*(v5 + 32))(v19, v8, v4);
              goto LABEL_28;
            }

LABEL_42:
            __break(1u);
            return result;
          }

          result = xpc_string_get_string_ptr(a1);
          if (result)
          {
            v35 = sub_22DF63AA4();
            v37 = v36;
            swift_unknownObjectRelease_n();
            *v13 = v35;
            v13[1] = v37;
            swift_storeEnumTagMultiPayload();
            v34 = v13;
            goto LABEL_34;
          }
        }

        __break(1u);
        goto LABEL_42;
      }

      v28 = xpc_date_get_value(a1);
      swift_unknownObjectRelease_n();
      *v19 = v28;
    }

LABEL_28:
    swift_storeEnumTagMultiPayload();
LABEL_29:
    sub_22DF3FF98(v19, a2);
    return (*(v48 + 56))(a2, 0, 1, v9);
  }

LABEL_17:
  v22 = *(v17 + 56);

  return v22(a2, 1, 1, v9);
}

uint64_t type metadata accessor for XPCObject()
{
  result = qword_27DA4E100;
  if (!qword_27DA4E100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

xpc_object_t XPCObject.obj.getter()
{
  v1 = v0;
  v42 = *MEMORY[0x277D85DE8];
  v2 = sub_22DF63604();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &uuid[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = type metadata accessor for XPCObject();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &uuid[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_22DF3FFFC(v1, v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      result = xpc_BOOL_create(*v10);
      goto LABEL_3;
    case 3u:
      result = xpc_int64_create(*v10);
      goto LABEL_3;
    case 4u:
      result = xpc_uint64_create(*v10);
      goto LABEL_3;
    case 5u:
      result = xpc_double_create(*v10);
      goto LABEL_3;
    case 6u:
      result = xpc_date_create(*v10);
      goto LABEL_3;
    case 7u:
      v22 = *v10;
      v21 = *(v10 + 1);
      v23 = v21 >> 62;
      if ((v21 >> 62) > 1)
      {
        if (v23 != 2)
        {
          memset(uuid, 0, 14);
          v25 = uuid;
          v24 = 0;
          goto LABEL_34;
        }

        v30 = *(v22 + 16);
        v31 = *(v22 + 24);
        v32 = sub_22DF63204();
        if (v32)
        {
          v33 = sub_22DF63234();
          if (__OFSUB__(v30, v33))
          {
            goto LABEL_36;
          }

          v32 += v30 - v33;
        }

        v34 = __OFSUB__(v31, v30);
        v35 = v31 - v30;
        if (!v34)
        {
          goto LABEL_26;
        }

        __break(1u);
LABEL_22:
        v35 = (v22 >> 32) - v22;
        if (v22 >> 32 >= v22)
        {
          v32 = sub_22DF63204();
          if (!v32)
          {
LABEL_26:
            v37 = sub_22DF63224();
            if (v37 >= v35)
            {
              v38 = v35;
            }

            else
            {
              v38 = v37;
            }

            if (v32)
            {
              v24 = v38;
            }

            else
            {
              v24 = 0;
            }

            v25 = v32;
            goto LABEL_34;
          }

          v36 = sub_22DF63234();
          if (!__OFSUB__(v22, v36))
          {
            v32 += v22 - v36;
            goto LABEL_26;
          }

LABEL_37:
          __break(1u);
        }

        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if (v23)
      {
        goto LABEL_22;
      }

      *uuid = *v10;
      *&uuid[8] = v21;
      uuid[10] = BYTE2(v21);
      uuid[11] = BYTE3(v21);
      uuid[12] = BYTE4(v21);
      v24 = BYTE6(v21);
      uuid[13] = BYTE5(v21);
      v25 = uuid;
LABEL_34:
      v39 = xpc_data_create(v25, v24);
      sub_22DEF7A34(v22, v21);
      result = v39;
LABEL_3:
      v12 = *MEMORY[0x277D85DE8];
      return result;
    case 8u:
      v26 = *v10;
      v27 = *(v10 + 1);
      v28 = sub_22DF63A34();

      v29 = xpc_string_create((v28 + 32));

      result = v29;
      goto LABEL_3;
    case 9u:
      (*(v3 + 32))(v6, v10, v2);
      *uuid = sub_22DF635E4();
      *&uuid[8] = v13;
      uuid[10] = v14;
      uuid[11] = v15;
      uuid[12] = v16;
      uuid[13] = v17;
      uuid[14] = v18;
      uuid[15] = v19;
      v20 = xpc_uuid_create(uuid);
      (*(v3 + 8))(v6, v2);
      result = v20;
      goto LABEL_3;
    case 0xDu:
      result = xpc_null_create();
      goto LABEL_3;
    default:
      result = *v10;
      goto LABEL_3;
  }
}

BOOL static XPCObject.== infix(_:_:)()
{
  v0 = XPCObject.obj.getter();
  v1 = XPCObject.obj.getter();
  v2 = xpc_equal(v0, v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

BOOL sub_22DF5BD98()
{
  v0 = XPCObject.obj.getter();
  v1 = XPCObject.obj.getter();
  v2 = xpc_equal(v0, v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

xpc_object_t XPCDictionary.init(dictionaryLiteral:)(uint64_t a1)
{
  v1 = sub_22DF5C89C(a1);

  return v1;
}

uint64_t XPCDictionary.subscript.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47600, &unk_22DF660C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *v1;
  sub_22DEF12FC(a1, &v12 - v5, &unk_27DA47600, &unk_22DF660C0);
  v8 = type metadata accessor for XPCObject();
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_22DEF1364(v6, &unk_27DA47600, &unk_22DF660C0);
    v9 = 0;
  }

  else
  {
    v9 = XPCObject.obj.getter();
    sub_22DF40060(v6);
  }

  v10 = sub_22DF63A34();

  xpc_dictionary_set_value(v7, (v10 + 32), v9);
  swift_unknownObjectRelease();
  sub_22DEF1364(a1, &unk_27DA47600, &unk_22DF660C0);
}

uint64_t XPCDictionary.keys.getter(void *a1)
{
  count = xpc_dictionary_get_count(a1);
  v3 = MEMORY[0x277D84F90];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || count > *(v3 + 3) >> 1)
  {
    if (*(v3 + 2) <= count)
    {
      v5 = count;
    }

    else
    {
      v5 = *(v3 + 2);
    }

    v3 = sub_22DF03FB0(isUniquelyReferenced_nonNull_native, v5, 0, v3);
  }

  v13 = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = &v13;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_22DF5CC84;
  *(v7 + 24) = v6;
  aBlock[4] = sub_22DEFF554;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22DEFBBE8;
  aBlock[3] = &block_descriptor_5;
  v8 = _Block_copy(aBlock);

  xpc_dictionary_apply(a1, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

unsigned __int8 *XPCDictionary.subscript.getter@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_22DF63A34();
  v5 = xpc_dictionary_get_value(a1, (v4 + 32));

  return XPCObject.init(_:)(v5, a2);
}

void (*XPCDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = a3;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47600, &unk_22DF660C0) - 8) + 64);
  if (v7)
  {
    v9[2] = swift_coroFrameAlloc();
    v9[3] = swift_coroFrameAlloc();
    v9[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v9[2] = malloc(v10);
    v9[3] = malloc(v10);
    v9[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v9[5] = v11;
  v13 = *v3;
  v9[6] = v13;
  v14 = sub_22DF63A34();
  v15 = xpc_dictionary_get_value(v13, (v14 + 32));

  XPCObject.init(_:)(v15, v12);
  return sub_22DF5C31C;
}

void sub_22DF5C31C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v4 = v2[3];
    v6 = v2[1];
    sub_22DEF12FC(v3, v4, &unk_27DA47600, &unk_22DF660C0);
    sub_22DEF12FC(v4, v5, &unk_27DA47600, &unk_22DF660C0);
    v7 = type metadata accessor for XPCObject();
    LODWORD(v5) = (*(*(v7 - 8) + 48))(v5, 1, v7);

    v8 = v2[2];
    if (v5 == 1)
    {
      sub_22DEF1364(v2[2], &unk_27DA47600, &unk_22DF660C0);
      v9 = 0;
    }

    else
    {
      v9 = XPCObject.obj.getter();
      sub_22DF40060(v8);
    }

    v16 = v2[5];
    v17 = v2[6];
    v19 = v2[3];
    v18 = v2[4];
    v21 = v2[1];
    v20 = v2[2];
    v22 = *v2;
    v23 = sub_22DF63A34();

    xpc_dictionary_set_value(v17, (v23 + 32), v9);
    swift_unknownObjectRelease();
    sub_22DEF1364(v19, &unk_27DA47600, &unk_22DF660C0);

    sub_22DEF1364(v16, &unk_27DA47600, &unk_22DF660C0);
  }

  else
  {
    v10 = v2[4];
    v11 = v2[1];
    sub_22DEF12FC(v3, v10, &unk_27DA47600, &unk_22DF660C0);
    v12 = type metadata accessor for XPCObject();
    v13 = (*(*(v12 - 8) + 48))(v10, 1, v12);

    v14 = v2[4];
    if (v13 == 1)
    {
      sub_22DEF1364(v2[4], &unk_27DA47600, &unk_22DF660C0);
      v15 = 0;
    }

    else
    {
      v15 = XPCObject.obj.getter();
      sub_22DF40060(v14);
    }

    v16 = v2[5];
    v24 = v2[6];
    v19 = v2[3];
    v18 = v2[4];
    v25 = v2[1];
    v20 = v2[2];
    v26 = *v2;
    v27 = sub_22DF63A34();

    xpc_dictionary_set_value(v24, (v27 + 32), v15);
    swift_unknownObjectRelease();
    sub_22DEF1364(v16, &unk_27DA47600, &unk_22DF660C0);
  }

  free(v16);
  free(v18);
  free(v19);
  free(v20);

  free(v2);
}

Swift::Bool __swiftcall XPCDictionary.contains(key:)(Swift::String key)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47600, &unk_22DF660C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_22DF63A34();
  v8 = xpc_dictionary_get_value(v2, (v7 + 32));

  XPCObject.init(_:)(v8, v6);
  v9 = type metadata accessor for XPCObject();
  LOBYTE(v8) = (*(*(v9 - 8) + 48))(v6, 1, v9) != 1;
  sub_22DEF1364(v6, &unk_27DA47600, &unk_22DF660C0);
  return v8;
}

uint64_t sub_22DF5C6F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_22DF5C89C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_22DF5C734(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22DF5C7EC(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_22DF5C734(a1, &a1[a2]);
  }

  v3 = sub_22DF63244();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_22DF631F4();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_22DF63484();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

xpc_object_t sub_22DF5C89C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47600, &unk_22DF660C0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47D90, &qword_22DF69D58);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v43 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v39 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v39 - v17);
  MEMORY[0x28223BE20](v16);
  v42 = (&v39 - v19);
  empty = xpc_dictionary_create_empty();
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = *(v8 + 48);
    v22 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v39 = *(v9 + 72);
    v40 = v21;
    v41 = v15;
    do
    {
      v26 = v42;
      sub_22DEF12FC(v22, v42, &unk_27DA47D90, &qword_22DF69D58);
      v27 = v26[1];
      v28 = *(v8 + 48);
      *v18 = *v26;
      v18[1] = v27;
      sub_22DF3FF98(v26 + v40, v18 + v28);
      sub_22DEF12FC(v18, v15, &unk_27DA47D90, &qword_22DF69D58);
      v46 = *v15;
      v29 = v15[1];
      v30 = v43;
      sub_22DEF12FC(v18, v43, &unk_27DA47D90, &qword_22DF69D58);
      v31 = *(v30 + 8);

      v32 = v8;
      sub_22DF3FF98(v30 + *(v8 + 48), v7);
      v33 = type metadata accessor for XPCObject();
      v34 = *(v33 - 8);
      (*(v34 + 56))(v7, 0, 1, v33);
      v35 = v7;
      v36 = v7;
      v37 = v44;
      sub_22DEF12FC(v36, v44, &unk_27DA47600, &unk_22DF660C0);
      if ((*(v34 + 48))(v37, 1, v33) == 1)
      {
        sub_22DEF1364(v37, &unk_27DA47600, &unk_22DF660C0);
        v23 = 0;
      }

      else
      {
        v23 = XPCObject.obj.getter();
        sub_22DF40060(v37);
      }

      v8 = v32;
      v24 = *(v32 + 48);
      v25 = sub_22DF63A34();

      xpc_dictionary_set_value(empty, (v25 + 32), v23);
      swift_unknownObjectRelease();
      v7 = v35;
      sub_22DEF1364(v35, &unk_27DA47600, &unk_22DF660C0);
      sub_22DEF1364(v18, &unk_27DA47D90, &qword_22DF69D58);

      v15 = v41;
      sub_22DF40060(v41 + v24);
      v22 += v39;
      --v20;
    }

    while (v20);
  }

  return empty;
}

uint64_t sub_22DF5CC84()
{
  v1 = *(v0 + 16);
  v2 = sub_22DF63AA4();
  v4 = v3;
  v5 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_22DF03FB0(0, *(v5 + 2) + 1, 1, v5);
    *v1 = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_22DF03FB0((v7 > 1), v8 + 1, 1, v5);
    *v1 = v5;
  }

  *(v5 + 2) = v8 + 1;
  v9 = &v5[16 * v8];
  *(v9 + 4) = v2;
  *(v9 + 5) = v4;
  return 1;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22DF5CD54()
{
  result = sub_22DF5CE18();
  if (v1 <= 0x3F)
  {
    result = sub_22DF63604();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22DF5CE18()
{
  result = qword_27DA47D88;
  if (!qword_27DA47D88)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DA47D88);
  }

  return result;
}

uint64_t sub_22DF5CE90(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_22DF5CEC4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22DF5CEFC()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4E118);
  __swift_project_value_buffer(v0, qword_27DA4E118);
  return sub_22DF63724();
}

uint64_t sub_22DF5CF7C()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
}

uint64_t sub_22DF5CFB4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
}

uint64_t sub_22DF5D088(char a1)
{
  result = swift_beginAccess();
  *(v1 + 136) = a1;
  return result;
}

uint64_t static XPCActivity.makeHandler.getter()
{
  swift_beginAccess();
  v0 = static XPCActivity.makeHandler;
  sub_22DF5D12C(static XPCActivity.makeHandler);
  return v0;
}

uint64_t sub_22DF5D12C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t static XPCActivity.makeHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = static XPCActivity.makeHandler;
  static XPCActivity.makeHandler = a1;
  qword_27DA4E710 = a2;
  return sub_22DEEB93C(v4);
}

Swift::Void __swiftcall XPCActivity.register(disabled:)(Swift::Bool_optional disabled)
{
  v2 = v1;
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = sub_22DF639B4();
    v8 = v7;

    if (disabled.value != 2)
    {
      (*(*v2 + 144))(disabled.value);
    }

    sub_22DF63F24();

    aBlock = 0x6C655464756F6C43;
    v30 = 0xEF2E797274656D65;
    MEMORY[0x2318DCA20](v6, v8);

    MEMORY[0x2318DCA20](46, 0xE100000000000000);
    v9 = v2[14];
    v10 = (*(v2[15] + 32))();
    MEMORY[0x2318DCA20](v10);

    v11 = *MEMORY[0x277D86238];
    v33 = sub_22DF5EE74;
    v34 = v2;
    aBlock = MEMORY[0x277D85DD0];
    v30 = 1107296256;
    v31 = sub_22DF5D694;
    v32 = &block_descriptor_6;
    v12 = _Block_copy(&aBlock);

    v13 = sub_22DF63A34();
    xpc_activity_register((v13 + 32), v11, v12);

    _Block_release(v12);
    if (qword_27DA4E110 != -1)
    {
      swift_once();
    }

    v14 = sub_22DF63734();
    __swift_project_value_buffer(v14, qword_27DA4E118);

    v15 = sub_22DF63714();
    v16 = sub_22DF63CF4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock = v18;
      *v17 = 136315138;
      v19 = sub_22DEF0354(0x6C655464756F6C43, 0xEF2E797274656D65, &aBlock);

      *(v17 + 4) = v19;
      _os_log_impl(&dword_22DEEA000, v15, v16, "registered: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x2318DDBE0](v18, -1, -1);
      MEMORY[0x2318DDBE0](v17, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_27DA4E110 != -1)
    {
      swift_once();
    }

    v20 = sub_22DF63734();
    __swift_project_value_buffer(v20, qword_27DA4E118);

    oslog = sub_22DF63714();
    v21 = sub_22DF63CF4();

    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock = v23;
      *v22 = 136315138;
      v24 = v2[14];
      v25 = (*(v2[15] + 32))();
      v27 = sub_22DEF0354(v25, v26, &aBlock);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_22DEEA000, oslog, v21, "unable to register: %s, nil bundleIdentifier", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x2318DDBE0](v23, -1, -1);
      MEMORY[0x2318DDBE0](v22, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_22DF5D694(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_22DF5D6F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47600, &unk_22DF660C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v48 = &v44 - v3;
  v47 = type metadata accessor for XPCObject();
  v4 = *(v47 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v47);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47E10, &qword_22DF69E68);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v15 = *(v0 + 112);
  v16 = *(v0 + 120);
  v17 = *(v16 + 24);
  v18 = *(v17(v15, v16) + 16);

  if (!v18)
  {
    return 0;
  }

  v49 = v14;
  v50 = v12;
  v51 = XPCDictionary.init()();
  result = v17(v15, v16);
  v20 = 0;
  v22 = result + 64;
  v21 = *(result + 64);
  v44 = v4;
  v45 = result;
  v23 = 1 << *(result + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v21;
  v26 = (v23 + 63) >> 6;
  v46 = (v4 + 56);
  v27 = &unk_27DA47E18;
  while (v25)
  {
    v28 = v20;
    v30 = v49;
    v29 = v50;
LABEL_14:
    v33 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v34 = v33 | (v28 << 6);
    v35 = *(*(v45 + 48) + 8 * v34);
    sub_22DF3FFFC(*(v45 + 56) + *(v44 + 72) * v34, v7);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, &unk_22DF69E70);
    v37 = *(v36 + 48);
    *v29 = v35;
    sub_22DF3FF98(v7, v29 + v37);
    (*(*(v36 - 8) + 56))(v29, 0, 1, v36);
    v32 = v28;
LABEL_15:
    sub_22DF5F298(v29, v30);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, &unk_22DF69E70);
    if ((*(*(v38 - 8) + 48))(v30, 1, v38) == 1)
    {

      return v51;
    }

    v39 = *v30;
    sub_22DF3FF98(v30 + *(v38 + 48), v7);
    sub_22DF63AA4();
    v40 = v27;
    v41 = v48;
    sub_22DF3FFFC(v7, v48);
    (*v46)(v41, 0, 1, v47);
    v42 = v41;
    v27 = v40;
    XPCDictionary.subscript.setter(v42);
    result = sub_22DF40060(v7);
    v20 = v32;
  }

  if (v26 <= v20 + 1)
  {
    v31 = v20 + 1;
  }

  else
  {
    v31 = v26;
  }

  v32 = v31 - 1;
  v30 = v49;
  v29 = v50;
  while (1)
  {
    v28 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v28 >= v26)
    {
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, &unk_22DF69E70);
      (*(*(v43 - 8) + 56))(v29, 1, 1, v43);
      v25 = 0;
      goto LABEL_15;
    }

    v25 = *(v22 + 8 * v28);
    ++v20;
    if (v25)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22DF5DB2C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47460, &qword_22DF65310);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v46 - v6;
  type metadata accessor for XPCActivityHandle();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = swift_unknownObjectRetain();
  state = xpc_activity_get_state(v9);
  if (state == 2)
  {
    if (qword_27DA4E110 != -1)
    {
      swift_once();
    }

    v22 = sub_22DF63734();
    __swift_project_value_buffer(v22, qword_27DA4E118);

    v23 = sub_22DF63714();
    v24 = sub_22DF63D24();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v47 = v26;
      *v25 = 136315138;
      v27 = *(v2 + 112);
      v28 = (*(*(v2 + 120) + 32))();
      v30 = sub_22DEF0354(v28, v29, &v47);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_22DEEA000, v23, v24, "run: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x2318DDBE0](v26, -1, -1);
      MEMORY[0x2318DDBE0](v25, -1, -1);
    }

    should_defer = xpc_activity_should_defer(*(v8 + 16));
    v32 = *(v8 + 16);
    if (!should_defer)
    {
      xpc_activity_set_state(v32, 4);
      v44 = sub_22DF63C34();
      (*(*(v44 - 8) + 56))(v7, 1, 1, v44);
      v45 = swift_allocObject();
      v45[2] = 0;
      v45[3] = 0;
      v45[4] = v2;
      v45[5] = v8;

      sub_22DEEFE64(0, 0, v7, &unk_22DF69E58, v45);
    }

    xpc_activity_set_state(v32, 3);
LABEL_16:
  }

  if (!state)
  {
    if (qword_27DA4E110 != -1)
    {
      swift_once();
    }

    v11 = sub_22DF63734();
    __swift_project_value_buffer(v11, qword_27DA4E118);

    v12 = sub_22DF63714();
    v13 = sub_22DF63CF4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v47 = v15;
      *v14 = 136315138;
      v16 = *(v2 + 112);
      v17 = (*(*(v2 + 120) + 32))();
      v19 = sub_22DEF0354(v17, v18, &v47);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_22DEEA000, v12, v13, "checkin: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x2318DDBE0](v15, -1, -1);
      MEMORY[0x2318DDBE0](v14, -1, -1);
    }

    v20 = sub_22DF5D6F4();
    if (v20)
    {
      v21 = v20;
      if (xpc_activity_copy_criteria(*(v8 + 16)))
      {

        swift_unknownObjectRelease();
      }

      else
      {
        xpc_activity_set_criteria(*(v8 + 16), v21);
      }

      return swift_unknownObjectRelease();
    }

    goto LABEL_16;
  }

  if (qword_27DA4E110 != -1)
  {
    swift_once();
  }

  v34 = sub_22DF63734();
  __swift_project_value_buffer(v34, qword_27DA4E118);
  swift_retain_n();

  v35 = sub_22DF63714();
  v36 = sub_22DF63D04();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v47 = v38;
    *v37 = 136315394;
    v39 = *(v2 + 112);
    v40 = (*(*(v2 + 120) + 32))();
    v42 = sub_22DEF0354(v40, v41, &v47);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2048;
    v43 = xpc_activity_get_state(*(v8 + 16));

    *(v37 + 14) = v43;

    _os_log_impl(&dword_22DEEA000, v35, v36, "activity: %s, encountered unrecognized XPC activity state: %ld", v37, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x2318DDBE0](v38, -1, -1);
    MEMORY[0x2318DDBE0](v37, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_22DF5E130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22DF5E150, a4, 0);
}

uint64_t sub_22DF5E150()
{
  v1 = v0[2];
  sub_22DF5E1B0(v0[3]);
  v2 = v0[1];

  return v2();
}

void sub_22DF5E1B0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47460, &qword_22DF65310);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v27 - v8;
  v10 = (*(v4 + 136))(v7);
  v11 = *(a1 + 16);
  if (v10)
  {
    xpc_activity_set_state(*(a1 + 16), 5);
    if (qword_27DA4E110 != -1)
    {
      swift_once();
    }

    v12 = sub_22DF63734();
    __swift_project_value_buffer(v12, qword_27DA4E118);

    v28 = sub_22DF63714();
    v13 = sub_22DF63D04();

    if (os_log_type_enabled(v28, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136315138;
      v16 = v2[14];
      v17 = (*(v2[15] + 32))();
      v19 = sub_22DEF0354(v17, v18, aBlock);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_22DEEA000, v28, v13, "disabled: skipping %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x2318DDBE0](v15, -1, -1);
      MEMORY[0x2318DDBE0](v14, -1, -1);
    }

    else
    {
      v26 = v28;
    }
  }

  else
  {
    aBlock[4] = sub_22DF5EED8;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22DF5D694;
    aBlock[3] = &block_descriptor_8;
    v20 = _Block_copy(aBlock);

    v21 = xpc_activity_add_eligibility_changed_handler();
    _Block_release(v20);
    v22 = sub_22DF63C34();
    (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
    v23 = sub_22DF5EEE0();
    v24 = swift_allocObject();
    v24[2] = v2;
    v24[3] = v23;
    v24[4] = v21;
    v24[5] = a1;
    v24[6] = v2;
    v24[7] = v4;
    swift_retain_n();

    v25 = sub_22DEF61B8(0, 0, v9, &unk_22DF69E38, v24);
    (*(*v2 + 120))(v25);
  }
}

uint64_t sub_22DF5E558(_xpc_activity_s *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47460, &qword_22DF65310);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  result = xpc_activity_should_defer(a1);
  if (result)
  {
    v9 = sub_22DF63C34();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a2;

    sub_22DEEFE64(0, 0, v7, &unk_22DF69E48, v10);
  }

  return result;
}

uint64_t sub_22DF5E694()
{
  if ((*(**(v0 + 16) + 112))())
  {
    v1 = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CC0, &qword_22DF661F0);
    sub_22DF63C54();
    (*(*v1 + 120))(0);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22DF5E784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return MEMORY[0x2822009F8](sub_22DF5E7A8, a6, 0);
}

uint64_t sub_22DF5E7A8()
{
  result = swift_beginAccess();
  v2 = static XPCActivity.makeHandler;
  v0[11] = static XPCActivity.makeHandler;
  if (v2)
  {
    v3 = v0[10];
    v0[12] = qword_27DA4E710;
    v4 = *(v3 + 112);
    v5 = *(v3 + 120);

    v9 = (v2 + *v2);
    v6 = v2[1];
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_22DF5E8F0;
    v8 = v0[10];

    return v9(v4, v5, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22DF5E8F0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = a2;
  v5 = v3[13];
  v6 = v3[12];
  v7 = v3[11];
  v8 = v3[10];
  v10 = *v2;
  v4[14] = a1;

  sub_22DEEB93C(v7);

  return MEMORY[0x2822009F8](sub_22DF5EA4C, v8, 0);
}

uint64_t sub_22DF5EA4C()
{
  sub_22DF63C84();
  v1 = v0[14];
  v2 = v0[7];
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 16);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_22DF5EBDC;
  v7 = v0[14];

  return v9(ObjectType, v2);
}

uint64_t sub_22DF5EBDC()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22DF5ECEC, v2, 0);
}

uint64_t sub_22DF5ECEC()
{
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  swift_unknownObjectRelease();
  sub_22DF5EFDC(v4, v2, v3);
  v5 = v0[1];

  return v5();
}

uint64_t XPCActivity.__allocating_init(handlerType:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 120) = a2;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 112) = a1;
  return v4;
}

uint64_t XPCActivity.init(handlerType:)(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(v2 + 120) = a2;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 112) = a1;
  return v2;
}

uint64_t XPCActivity.deinit()
{
  v1 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t XPCActivity.__deallocating_deinit()
{
  v1 = *(v0 + 128);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22DF5EEE0()
{
  result = qword_27DA47E08;
  if (!qword_27DA47E08)
  {
    type metadata accessor for XPCActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47E08);
  }

  return result;
}

uint64_t sub_22DF5EF34()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22DEEFBD4;

  return sub_22DF5E784(v5, v6, v7, v2, v3, v4);
}

void sub_22DF5EFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    xpc_activity_remove_eligibility_changed_handler();
  }

  xpc_activity_set_state(*(a2 + 16), 5);
  if (qword_27DA4E110 != -1)
  {
    swift_once();
  }

  v5 = sub_22DF63734();
  __swift_project_value_buffer(v5, qword_27DA4E118);

  oslog = sub_22DF63714();
  v6 = sub_22DF63D24();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = *(a3 + 112);
    v10 = (*(*(a3 + 120) + 32))();
    v12 = sub_22DEF0354(v10, v11, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_22DEEA000, oslog, v6, "done: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2318DDBE0](v8, -1, -1);
    MEMORY[0x2318DDBE0](v7, -1, -1);
  }
}

uint64_t sub_22DF5F16C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22DEF1598;

  return sub_22DF5E674(v3, v4, v5, v2);
}

uint64_t sub_22DF5F200()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22DEEFBD4;

  return sub_22DF5E130(v4, v5, v6, v2, v3);
}

uint64_t sub_22DF5F298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47E10, &qword_22DF69E68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t XPCError.description.getter(void *a1)
{
  if (xpc_dictionary_get_string(a1, "XPCErrorDescription"))
  {
    return sub_22DF63AA4();
  }

  else
  {
    return 0x64696C61766E693CLL;
  }
}

uint64_t XPCError.errorDescription.getter(void *a1)
{
  if (xpc_dictionary_get_string(a1, "XPCErrorDescription"))
  {
    return sub_22DF63AA4();
  }

  else
  {
    return 0x64696C61766E693CLL;
  }
}

uint64_t sub_22DF5F590()
{
  if (xpc_dictionary_get_string(*v0, "XPCErrorDescription"))
  {
    return sub_22DF63AA4();
  }

  else
  {
    return 0x64696C61766E693CLL;
  }
}

uint64_t XPCIncomingConnection.auditToken.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  xpc_connection_get_audit_token();
  result = 0;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned __int8 *XPCIncomingConnection.entitlementValue(forKey:)@<X0>(uint64_t a1@<X8>)
{
  sub_22DF63A34();
  v2 = xpc_connection_copy_entitlement_value();

  return XPCObject.init(_:)(v2, a1);
}

void *XPCIncomingConnection.makeConnection(targetQ:delegate:)(void *a1, uint64_t a2, uint64_t a3, _xpc_connection_s *a4)
{
  type metadata accessor for XPCConnection();
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = a1;
  v9 = sub_22DF609AC(a4, v8, a2, a3);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v9;
}

uint64_t XPCConnection.conn.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  return swift_unknownObjectRetain();
}

uint64_t XPCConnection.conn.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  return swift_unknownObjectRelease();
}

uint64_t XPCConnection.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 32);
  return result;
}

uint64_t XPCConnection.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*XPCConnection.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_22DF5F9A8;
}

void sub_22DF5F9A8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_22DF5FA34()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4E1B8);
  __swift_project_value_buffer(v0, qword_27DA4E1B8);
  return sub_22DF63724();
}

void *XPCConnection.__allocating_init(targetQ:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_22DF60BC8(a1, a2, a3);

  swift_unknownObjectRelease();
  return v6;
}

void *XPCConnection.init(targetQ:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22DF60BC8(a1, a2, a3);

  swift_unknownObjectRelease();
  return v4;
}

uint64_t XPCConnection.__allocating_init(machService:targetQ:listen:delegate:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, _xpc_connection_s *a6)
{
  swift_allocObject();
  v12 = sub_22DF60DFC(a1, a2, a3, a4, a5, a6);

  swift_unknownObjectRelease();
  return v12;
}

uint64_t XPCConnection.init(machService:targetQ:listen:delegate:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, _xpc_connection_s *a6)
{
  v7 = sub_22DF60DFC(a1, a2, a3, a4, a5, a6);

  swift_unknownObjectRelease();
  return v7;
}

uint64_t XPCConnection.__allocating_init(serviceName:targetQ:listen:delegate:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  XPCConnection.init(serviceName:targetQ:listen:delegate:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

void XPCConnection.init(serviceName:targetQ:listen:delegate:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v7[2] = 0;
  v11 = (v7 + 2);
  v7[4] = 0;
  swift_unknownObjectWeakInit();
  if (a4)
  {

    swift_beginAccess();
    v7[4] = a6;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    swift_beginAccess();
    v12 = v7[2];
    v7[2] = 0;
    swift_unknownObjectRelease();
    v7[5] = a3;
    return;
  }

  v13 = sub_22DF63A34();
  v14 = a3;
  v15 = xpc_connection_create((v13 + 32), v14);

  swift_beginAccess();
  v7[4] = a6;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v16 = v7[2];
  v7[2] = v15;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v7[5] = v14;
  v17 = qword_27DA4E1B0;
  v18 = v14;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = sub_22DF63734();
  __swift_project_value_buffer(v19, qword_27DA4E1B8);
  v20 = sub_22DF63714();
  v21 = sub_22DF63D24();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_22DEEA000, v20, v21, "C.", v22, 2u);
    MEMORY[0x2318DDBE0](v22, -1, -1);
  }

  if (!*v11)
  {
    __break(1u);
    goto LABEL_12;
  }

  v23 = *v11;
  v24 = swift_unknownObjectRetain();
  xpc_connection_set_target_queue(v24, v18);
  swift_unknownObjectRelease();

  v25 = *v11;
  if (!*v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v29[4] = j___s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF;
  v29[5] = v7;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 1107296256;
  v29[2] = sub_22DF5D694;
  v29[3] = &block_descriptor_7;
  v26 = _Block_copy(v29);

  swift_unknownObjectRetain();

  xpc_connection_set_event_handler(v25, v26);
  _Block_release(v26);
  swift_unknownObjectRelease();
  v27 = v7[2];
  if (v27)
  {
    v28 = v7[2];
    swift_unknownObjectRetain();

    xpc_connection_activate(v27);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_22DF60040(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *, uint64_t, uint64_t), void (*a6)(uint64_t))
{
  swift_allocObject();
  v12 = a5(a1, a2, a3, a4);
  a6(a1);

  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_22DF60104(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t))
{
  v9 = a5();
  a6(a1);

  swift_unknownObjectRelease();
  return v9;
}

_xpc_connection_s *XPCConnection.endpoint()()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    return xpc_endpoint_create(result);
  }

  __break(1u);
  return result;
}

uint64_t XPCConnection.send(_:)()
{
  result = swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2)
  {
    swift_unknownObjectRetain();
    v3 = j__swift_unknownObjectRetain();
    xpc_connection_send_message(v2, v3);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t XPCConnection.sendWithReply(_:)(uint64_t a1, char a2)
{
  *(v3 + 96) = a2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  return MEMORY[0x2822009F8](sub_22DF60254, 0, 0);
}

uint64_t sub_22DF60254()
{
  v1 = *(v0 + 56);
  v2 = swift_beginAccess();
  v10 = *(v1 + 16);
  *(v0 + 64) = v10;
  if (v10)
  {
    v11 = *(v0 + 96);
    v12 = *(v0 + 48);
    v13 = *(*(v0 + 56) + 40);
    v14 = swift_task_alloc();
    *(v0 + 72) = v14;
    *(v14 + 16) = v10;
    *(v14 + 24) = v12;
    *(v14 + 32) = v11;
    *(v14 + 40) = v13;
    v15 = *(MEMORY[0x277D85A40] + 4);
    swift_unknownObjectRetain();
    v16 = swift_task_alloc();
    *(v0 + 80) = v16;
    *v16 = v0;
    v16[1] = sub_22DF60398;
    v9 = &type metadata for XPCDictionary;
    v7 = sub_22DF612E4;
    v2 = v0 + 40;
    v6 = 0x800000022DF6FBB0;
    v3 = 0;
    v4 = 0;
    v5 = 0xD000000000000011;
    v8 = v14;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822008A0](v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22DF60398()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_22DF6051C;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_22DF604B4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22DF604B4()
{
  v1 = v0[8];
  swift_unknownObjectRelease();
  v2 = v0[5];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_22DF6051C()
{
  v1 = v0[8];
  v2 = v0[9];
  swift_unknownObjectRelease();

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_22DF60588(uint64_t a1, _xpc_connection_s *a2, uint64_t a3, NSObject *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47E28, &unk_22DF6A120);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - v10;
  v12 = j__swift_unknownObjectRetain();
  (*(v8 + 16))(v11, a1, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v11, v7);
  aBlock[4] = sub_22DF61390;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22DF5D694;
  aBlock[3] = &block_descriptor_8_0;
  v15 = _Block_copy(aBlock);

  xpc_connection_send_message_with_reply(a2, v12, a4, v15);
  _Block_release(v15);
  return swift_unknownObjectRelease();
}

uint64_t XPCConnection.auditToken.getter()
{
  v3 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  if (!*(v0 + 16))
  {
    __break(1u);
  }

  xpc_connection_get_audit_token();
  result = 0;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

_xpc_connection_s *XPCConnection.remoteUID.getter()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    return xpc_connection_get_euid(result);
  }

  __break(1u);
  return result;
}

uint64_t XPCConnection.deinit()
{
  v1 = v0;
  if (qword_27DA4E1B0 != -1)
  {
    swift_once();
  }

  v2 = sub_22DF63734();
  __swift_project_value_buffer(v2, qword_27DA4E1B8);
  v3 = sub_22DF63714();
  v4 = sub_22DF63D04();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22DEEA000, v3, v4, "connection released", v5, 2u);
    MEMORY[0x2318DDBE0](v5, -1, -1);
  }

  swift_beginAccess();
  v6 = *(v1 + 16);
  if (v6)
  {
    xpc_connection_cancel(v6);
    v7 = *(v1 + 16);
  }

  swift_unknownObjectRelease();
  sub_22DF612F0(v1 + 24);

  return v1;
}

uint64_t XPCConnection.__deallocating_deinit()
{
  XPCConnection.deinit();

  return swift_deallocClassInstance();
}

void *sub_22DF609AC(_xpc_connection_s *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v5[2] = 0;
  v5[4] = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v9 = v5[2];
  v5[2] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_beginAccess();
  v5[4] = a4;
  swift_unknownObjectWeakAssign();
  v5[5] = a2;
  v10 = qword_27DA4E1B0;
  v11 = a2;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = sub_22DF63734();
  __swift_project_value_buffer(v12, qword_27DA4E1B8);
  v13 = sub_22DF63714();
  v14 = sub_22DF63D24();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22DEEA000, v13, v14, "D.", v15, 2u);
    MEMORY[0x2318DDBE0](v15, -1, -1);
  }

  xpc_connection_set_target_queue(a1, v11);
  v18[4] = j___s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF;
  v18[5] = v5;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_22DF5D694;
  v18[3] = &block_descriptor_20;
  v16 = _Block_copy(v18);

  xpc_connection_set_event_handler(a1, v16);
  _Block_release(v16);
  xpc_connection_activate(a1);
  return v5;
}

void *sub_22DF60BC8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v4[2] = 0;
  v4[4] = 0;
  swift_unknownObjectWeakInit();
  v7 = a1;
  v8 = xpc_connection_create(0, v7);
  swift_beginAccess();
  v4[4] = a3;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v9 = v4[2];
  v4[2] = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v4[5] = v7;
  v10 = qword_27DA4E1B0;
  v11 = v7;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = sub_22DF63734();
  __swift_project_value_buffer(v12, qword_27DA4E1B8);
  v13 = sub_22DF63714();
  v14 = sub_22DF63D24();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22DEEA000, v13, v14, "A.", v15, 2u);
    MEMORY[0x2318DDBE0](v15, -1, -1);
  }

  xpc_connection_set_target_queue(v8, v11);
  v18[4] = j___s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF;
  v18[5] = v4;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_22DF5D694;
  v18[3] = &block_descriptor_17;
  v16 = _Block_copy(v18);

  xpc_connection_set_event_handler(v8, v16);
  _Block_release(v16);
  xpc_connection_activate(v8);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_22DF60DFC(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, _xpc_connection_s *a6)
{
  v7 = v6;
  *(v6 + 16) = 0;
  v11 = (v6 + 16);
  v11[2] = 0;
  swift_unknownObjectWeakInit();
  if (a4)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v13 = sub_22DF63A34();
  v14 = a3;

  mach_service = xpc_connection_create_mach_service((v13 + 32), v14, v12);

  swift_beginAccess();
  v11[2] = a6;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v16 = *v11;
  *v11 = mach_service;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v11[3] = v14;
  v17 = qword_27DA4E1B0;
  v18 = v14;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = sub_22DF63734();
  __swift_project_value_buffer(v19, qword_27DA4E1B8);
  v20 = sub_22DF63714();
  v21 = sub_22DF63D24();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_22DEEA000, v20, v21, "B.", v22, 2u);
    MEMORY[0x2318DDBE0](v22, -1, -1);
  }

  xpc_connection_set_target_queue(mach_service, v18);
  v25[4] = j___s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF;
  v25[5] = v7;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 1107296256;
  v25[2] = sub_22DF5D694;
  v25[3] = &block_descriptor_14;
  v23 = _Block_copy(v25);

  xpc_connection_set_event_handler(mach_service, v23);
  _Block_release(v23);
  xpc_connection_activate(mach_service);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_xpc_connection_s *sub_22DF61088(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v5[2] = 0;
  v5[4] = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  result = *(a1 + 16);
  if (result)
  {
    v10 = xpc_endpoint_create(result);
    v11 = xpc_connection_create_from_endpoint(v10);
    swift_beginAccess();
    v12 = v5[2];
    v5[2] = v11;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_beginAccess();
    v5[4] = a4;
    swift_unknownObjectWeakAssign();
    v5[5] = a2;
    v13 = qword_27DA4E1B0;
    v14 = a2;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = sub_22DF63734();
    __swift_project_value_buffer(v15, qword_27DA4E1B8);
    v16 = sub_22DF63714();
    v17 = sub_22DF63D24();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22DEEA000, v16, v17, "E.", v18, 2u);
      MEMORY[0x2318DDBE0](v18, -1, -1);
    }

    xpc_connection_set_target_queue(v11, v14);
    aBlock[4] = j___s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22DF5D694;
    aBlock[3] = &block_descriptor_11;
    v19 = _Block_copy(aBlock);

    xpc_connection_set_event_handler(v11, v19);
    _Block_release(v19);
    xpc_connection_activate(v11);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22DF6131C()
{
  result = qword_27DA47E20;
  if (!qword_27DA47E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47E20);
  }

  return result;
}

uint64_t sub_22DF61390(uint64_t a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47E28, &unk_22DF6A120) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = MEMORY[0x2318DE010](a1);
  if (v4 == XPCTypeError.getter())
  {
    sub_22DF6131C();
    swift_allocError();
    *v7 = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47E28, &unk_22DF6A120);
    return sub_22DF63BF4();
  }

  else
  {
    v5 = swift_unknownObjectRetain();
    XPCDictionary.init(_:)(v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47E28, &unk_22DF6A120);
    return sub_22DF63C04();
  }
}

uint64_t _s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF_0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 32);
    v5 = MEMORY[0x2318DE010](a1);
    v6 = XPCTypeError.getter();
    ObjectType = swift_getObjectType();
    if (v5 == v6)
    {
      (*(v4 + 8))(a1, ObjectType, v4);
    }

    else
    {
      (*(v4 + 16))(a1, ObjectType, v4);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t getTimeIntervalSince1970(Date:)()
{
  result = sub_22DF63544();
  v2 = (*&v1 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v3 = v1 < 0.0 && ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v1 >= 0.0)
  {
    v2 = 0;
  }

  v4 = (*&v1 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v2;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v4 = 1;
  }

  if ((v4 | v3))
  {
    return 0;
  }

  if (v1 <= -9.22337204e18)
  {
    __break(1u);
  }

  else if (v1 < 9.22337204e18)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_22DF61678()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D70, &qword_22DF69C80);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D78, &qword_22DF69C88);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22DF689A0;
  v4 = (v3 + v2);
  v5 = (v4 + *(v0 + 48));
  *v4 = *MEMORY[0x277D86340];
  v6 = *MEMORY[0x277D86348];
  *v5 = sub_22DF63AA4();
  v5[1] = v7;
  type metadata accessor for XPCObject();
  result = swift_storeEnumTagMultiPayload();
  if (*MEMORY[0x277D86330])
  {
    v9 = (v4 + v1);
    v10 = *(v0 + 48);
    *v9 = *MEMORY[0x277D86330];
    *(v9 + v10) = 1;
    result = swift_storeEnumTagMultiPayload();
    if (*MEMORY[0x277D86328])
    {
      v11 = *(v0 + 48);
      v12 = (v4 + 2 * v1);
      *v12 = *MEMORY[0x277D86328];
      *(v12 + v11) = 1;
      swift_storeEnumTagMultiPayload();
      v13 = sub_22DF5B164(v3);
      swift_setDeallocating();
      swift_arrayDestroy();
      result = swift_deallocClassInstance();
      static PostInstallActivityConfig.activityFlags = v13;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *PostInstallActivityConfig.activityFlags.unsafeMutableAddressor()
{
  if (qword_27DA4E350 != -1)
  {
    swift_once();
  }

  return &static PostInstallActivityConfig.activityFlags;
}

uint64_t static PostInstallActivityConfig.activityFlags.getter()
{
  if (qword_27DA4E350 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static PostInstallActivityConfig.activityFlags.setter(uint64_t a1)
{
  if (qword_27DA4E350 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static PostInstallActivityConfig.activityFlags = a1;
}

uint64_t (*static PostInstallActivityConfig.activityFlags.modify())()
{
  if (qword_27DA4E350 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22DF61A0C()
{
  if (qword_27DA4E350 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_22DF61ADC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D70, &qword_22DF69C80);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47D78, &qword_22DF69C88);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22DF6A180;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = *MEMORY[0x277D86360];
  *(v4 + v5) = 1;
  type metadata accessor for XPCObject();
  swift_storeEnumTagMultiPayload();
  v6 = (v4 + v1);
  v7 = *(v0 + 48);
  *v6 = *MEMORY[0x277D86250];
  *(v6 + v7) = 86400;
  swift_storeEnumTagMultiPayload();
  v8 = (v4 + 2 * v1);
  v9 = *(v0 + 48);
  *v8 = *MEMORY[0x277D86270];
  *(v8 + v9) = 43200;
  swift_storeEnumTagMultiPayload();
  v10 = (v4 + 3 * v1);
  v11 = (v10 + *(v0 + 48));
  *v10 = *MEMORY[0x277D86340];
  v12 = *MEMORY[0x277D86348];
  *v11 = sub_22DF63AA4();
  v11[1] = v13;
  swift_storeEnumTagMultiPayload();
  v14 = (v4 + 4 * v1);
  v15 = *(v0 + 48);
  *v14 = *MEMORY[0x277D86230];
  *(v14 + v15) = 0;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86330])
  {
    __break(1u);
    goto LABEL_9;
  }

  v17 = *(v0 + 48);
  v18 = (v4 + 5 * v1);
  *v18 = *MEMORY[0x277D86330];
  *(v18 + v17) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86358])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v19 = (v4 + 6 * v1);
  v20 = *(v0 + 48);
  *v19 = *MEMORY[0x277D86358];
  *(v19 + v20) = 43200;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86268])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v21 = (&v4[v1] - v1);
  v22 = *(v0 + 48);
  *v21 = *MEMORY[0x277D86268];
  *(v21 + v22) = *MEMORY[0x277D862A8];
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86280])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v23 = &v4[v1];
  v24 = (v23 + *(v0 + 48));
  *v23 = *MEMORY[0x277D86280];
  *v24 = 0xD000000000000025;
  v24[1] = 0x800000022DF6FAB0;
  result = swift_storeEnumTagMultiPayload();
  if (!*MEMORY[0x277D86278])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v25 = (v4 + 9 * v1);
  v26 = *(v0 + 48);
  *v25 = *MEMORY[0x277D86278];
  *(v25 + v26) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (*MEMORY[0x277D86258])
  {
    v27 = *(v0 + 48);
    v28 = (v4 + 10 * v1);
    *v28 = *MEMORY[0x277D86258];
    *(v28 + v27) = 1;
    swift_storeEnumTagMultiPayload();
    v29 = sub_22DF5B164(v3);
    swift_setDeallocating();
    swift_arrayDestroy();
    result = swift_deallocClassInstance();
    static CacheCleanupActivityConfig.activityFlags = v29;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t *CacheCleanupActivityConfig.activityFlags.unsafeMutableAddressor()
{
  if (qword_27DA4E358 != -1)
  {
    swift_once();
  }

  return &static CacheCleanupActivityConfig.activityFlags;
}

uint64_t static CacheCleanupActivityConfig.activityFlags.getter()
{
  if (qword_27DA4E358 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static CacheCleanupActivityConfig.activityFlags.setter(uint64_t a1)
{
  if (qword_27DA4E358 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CacheCleanupActivityConfig.activityFlags = a1;
}

uint64_t (*static CacheCleanupActivityConfig.activityFlags.modify())()
{
  if (qword_27DA4E358 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22DF6204C()
{
  if (qword_27DA4E358 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_22DF620FC()
{
  v1 = *v0;
  sub_22DF642A4();
  MEMORY[0x2318DD250](v1);
  return sub_22DF642D4();
}

uint64_t sub_22DF62170()
{
  v1 = *v0;
  sub_22DF642A4();
  MEMORY[0x2318DD250](v1);
  return sub_22DF642D4();
}

unint64_t sub_22DF621B4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s20CloudTelemetryShared10XPCMessageV11MessageTypeO8rawValueAESgs5Int64V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t XPCMessage.init(ty:payload:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47600, &unk_22DF660C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  v11 = a2;
  swift_unknownObjectRetain();
  v8 = xpc_int64_create(a1);
  XPCObject.init(_:)(v8, v7);
  XPCDictionary.subscript.setter(v7);
  swift_unknownObjectRelease();
  return v11;
}

void XPCMessage.init(fromXPC:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47600, &unk_22DF660C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  swift_getObjectType();
  OS_xpc_object.type()();
}

void *sub_22DF6232C(uint64_t a1)
{
  if (a1 != XPCTypeDictionary.getter())
  {
    goto LABEL_2;
  }

  v2 = swift_unknownObjectRetain();
  v3 = XPCDictionary.init(_:)(v2);
  XPCDictionary.subscript.getter(v3, v1);
  swift_unknownObjectRelease();
  v4 = type metadata accessor for XPCObject();
  if ((*(*(v4 - 8) + 48))(v1, 1, v4) == 1)
  {
    swift_unknownObjectRelease();
    sub_22DF62D58(v1);
    return 0;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    swift_unknownObjectRelease();
    sub_22DF40060(v1);
    return 0;
  }

  result = v3;
  if (*v1 >= 5uLL)
  {
LABEL_2:
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t XPCMessage.description.getter(void *a1, char a2)
{
  v43 = type metadata accessor for XPCObject();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v43);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47600, &unk_22DF660C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v39 - v10;
  v45 = 0;
  v46 = 0xE000000000000000;
  LOBYTE(v44) = a2;
  sub_22DF63FF4();
  MEMORY[0x2318DCA20](2683, 0xE200000000000000);
  v42 = a1;
  v12 = XPCDictionary.keys.getter(a1);
  v41 = *(v12 + 16);
  if (!v41)
  {
LABEL_17:

    v35 = sub_22DF638F4();
    v37 = v36;

    MEMORY[0x2318DCA20](v35, v37);

    MEMORY[0x2318DCA20](125, 0xE100000000000000);
    return v45;
  }

  v13 = 0;
  v40 = (v4 + 48);
  v14 = (v12 + 40);
  v15 = MEMORY[0x277D84F98];
  v39 = v12;
  while (v13 < *(v12 + 16))
  {
    v19 = *(v14 - 1);
    v18 = *v14;

    XPCDictionary.subscript.getter(v42, v11);
    if ((*v40)(v11, 1, v43) == 1)
    {
      goto LABEL_21;
    }

    v20 = v11;
    v21 = v7;
    sub_22DF3FF98(v11, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v15;
    v23 = sub_22DEF08FC(v19, v18);
    v25 = v15[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_19;
    }

    v29 = v24;
    if (v15[3] < v28)
    {
      sub_22DF627DC(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_22DEF08FC(v19, v18);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      if (v29)
      {
        goto LABEL_3;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v34 = v23;
    sub_22DF62B18();
    v23 = v34;
    if (v29)
    {
LABEL_3:
      v16 = v23;

      v15 = v44;
      v17 = v44[7] + *(v4 + 72) * v16;
      v7 = v21;
      sub_22DF62DC0(v21, v17);
      goto LABEL_4;
    }

LABEL_13:
    v15 = v44;
    v44[(v23 >> 6) + 8] |= 1 << v23;
    v31 = (v15[6] + 16 * v23);
    *v31 = v19;
    v31[1] = v18;
    v7 = v21;
    sub_22DF3FF98(v21, v15[7] + *(v4 + 72) * v23);
    v32 = v15[2];
    v27 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v27)
    {
      goto LABEL_20;
    }

    v15[2] = v33;
LABEL_4:
    ++v13;
    v14 += 2;
    v12 = v39;
    v11 = v20;
    if (v41 == v13)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_22DF64234();
  __break(1u);
  return result;
}

uint64_t sub_22DF627DC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for XPCObject();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47E38, &qword_22DF6A300);
  v44 = a2;
  result = sub_22DF64034();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_22DF3FF98(v31, v45);
      }

      else
      {
        sub_22DF3FFFC(v31, v45);
      }

      v32 = *(v12 + 40);
      sub_22DF642A4();
      sub_22DF63A54();
      result = sub_22DF642D4();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_22DF3FF98(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

void *sub_22DF62B18()
{
  v1 = v0;
  v2 = type metadata accessor for XPCObject();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47E38, &qword_22DF6A300);
  v5 = *v0;
  v6 = sub_22DF64024();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_22DF3FFFC(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_22DF3FF98(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

unint64_t _s20CloudTelemetryShared10XPCMessageV11MessageTypeO8rawValueAESgs5Int64V_tcfC_0(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_22DF62D58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47600, &unk_22DF660C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22DF62DC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCObject();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_22DF62E28()
{
  result = qword_27DA47E30;
  if (!qword_27DA47E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47E30);
  }

  return result;
}

uint64_t sub_22DF62E7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_22DF62EC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCMessage.MessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCMessage.MessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}