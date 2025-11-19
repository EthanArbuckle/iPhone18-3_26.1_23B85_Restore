uint64_t sub_22DF214F4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 288);
  v11 = *v3;
  *(*v3 + 296) = v2;

  if (v2)
  {
    v8 = v6[30];
    sub_22DF09508(v6[33], type metadata accessor for SessionConfiguration.Backend);
    sub_22DEF0FA8((v6 + 9));
    v9 = sub_22DF23140;
  }

  else
  {
    v8 = v6[30];
    v6[38] = a2;
    v6[39] = a1;
    sub_22DEF0FA8((v6 + 9));
    v9 = sub_22DF23138;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_22DF21650(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 344);
  v8 = *v3;
  *(*v3 + 352) = v2;

  if (v2)
  {
    v9 = v6[41];
    v10 = v6[30];
    sub_22DEF0FA8((v6 + 2));

    v11 = sub_22DF2313C;
    v12 = v10;
  }

  else
  {
    v13 = v6[30];
    v6[45] = a2;
    v6[46] = a1;
    sub_22DEF0FA8((v6 + 2));
    v11 = sub_22DF217B4;
    v12 = v13;
  }

  return MEMORY[0x2822009F8](v11, v12, 0);
}

uint64_t sub_22DF217B4()
{
  v1 = *(v0 + 328);
  v2 = (*(**(v0 + 240) + 144))(v0 + 128, *(v0 + 256), *(v0 + 368), *(v0 + 360));
  v4 = v3;

  __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v0 + 328);
  if (v6 >= v5 >> 1)
  {
    v7 = sub_22DF22F24((v5 > 1), v6 + 1, 1, *(v0 + 328));
  }

  v8 = *(v0 + 280);
  v9 = *(v0 + 336) + 1;
  sub_22DF09508(*(v0 + 256), type metadata accessor for SessionConfiguration.Backend);
  v7[2] = v6 + 1;
  v10 = &v7[2 * v6];
  v10[4] = v2;
  v10[5] = v4;
  if (v9 == v8)
  {
    type metadata accessor for BackendGroup();
    v11 = sub_22DF27764(v7);
    v13 = *(v0 + 256);
    v12 = *(v0 + 264);

    v14 = *(v0 + 8);

    return v14(v11, &off_284194AF0);
  }

  else
  {
    v16 = *(v0 + 336) + 1;
    *(v0 + 328) = v7;
    *(v0 + 336) = v16;
    v17 = *(v0 + 232);
    v18 = *(v0 + 240);
    v19 = *(v0 + 216);
    v20 = *(v0 + 224);
    sub_22DF23058(*(v0 + 272) + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(v0 + 320) * v16, *(v0 + 256), type metadata accessor for SessionConfiguration.Backend);
    *(v0 + 152) = v20;
    *(v0 + 160) = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 128));
    (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v19, v20);
    (*(v17 + 8))(v20, v17);
    v22 = *(*v18 + 152);
    v26 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    *(v0 + 344) = v24;
    *v24 = v0;
    v24[1] = sub_22DF21650;
    v25 = *(v0 + 240);

    return v26(v0 + 16);
  }
}

uint64_t sub_22DF21AC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  v16 = type metadata accessor for SessionConfiguration.Backend(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22DF23058(a2, v19, type metadata accessor for SessionConfiguration.Backend);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    type metadata accessor for BackendLocal();
    sub_22DEF2388(a1, v42);
    return sub_22DF194E8(v21, v22, v42);
  }

  else
  {
    sub_22DF094A4(v19, v15);
    v40 = type metadata accessor for BackendHTTP();
    v38 = *(v4 + 128);
    sub_22DEF2388(a1, v41);
    v39 = type metadata accessor for SessionConfiguration.BackendHTTP;
    sub_22DF23058(v15, v13, type metadata accessor for SessionConfiguration.BackendHTTP);

    v24 = RequestOptions.globalRequestOptions.unsafeMutableAddressor();
    swift_beginAccess();
    v25 = *v24;
    v37 = a3;
    v26 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v26);
    v28 = *(v27 + 8);

    v36 = a4;
    v29 = v4;
    v28(v42, v26, v27);
    v30 = v43;
    v31 = v44;

    sub_22DEF0FA8(v42);
    if (v31)
    {
      v32 = 256;
    }

    else
    {
      v32 = 0;
    }

    v33 = sub_22DF5A7E4(v32 | v30);

    v34 = sub_22DF14570(v38, v41, v29, v13, v37, v36, v33);
    sub_22DF09508(v15, v39);
    return v34;
  }
}

uint64_t sub_22DF21DB0(uint64_t a1)
{
  v2[30] = a1;
  v2[31] = v1;
  v3 = sub_22DF63604();
  v2[32] = v3;
  v4 = *(v3 - 8);
  v2[33] = v4;
  v5 = *(v4 + 64) + 15;
  v2[34] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47680, &qword_22DF661D0) - 8) + 64) + 15;
  v2[35] = swift_task_alloc();
  v7 = sub_22DF63594();
  v2[36] = v7;
  v8 = *(v7 - 8);
  v2[37] = v8;
  v9 = *(v8 + 64) + 15;
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF21F28, v1, 0);
}

uint64_t sub_22DF21F28()
{
  v1 = *(**(*(v0 + 248) + 112) + 264);
  v5 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 336) = v3;
  *v3 = v0;
  v3[1] = sub_22DF22048;

  return v5();
}

uint64_t sub_22DF22048()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 248);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22DF22158, v2, 0);
}

uint64_t sub_22DF22158()
{
  v0[43] = *(v0[31] + 120);
  v1 = swift_task_alloc();
  v0[44] = v1;
  *v1 = v0;
  v1[1] = sub_22DF22200;
  v2 = v0[35];
  v3 = v0[30];

  return sub_22DF02F58(v2, v3);
}

uint64_t sub_22DF22200()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 248);
  if (v0)
  {
    v6 = sub_22DF22D28;
  }

  else
  {
    v6 = sub_22DF2232C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22DF2232C()
{
  v63 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47698, &qword_22DF663E0);
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  v5 = (v1 + 8);
  v6 = *(v0 + 288);
  if (v4 == 1)
  {
    v7 = *(v0 + 320);
    v8 = *(v0 + 304);
    v10 = *(v0 + 264);
    v9 = *(v0 + 272);
    v11 = *(v0 + 256);
    sub_22DEF1364(v2, &qword_27DA47680, &qword_22DF661D0);
    sub_22DF635F4();
    v12 = sub_22DF635A4();
    v14 = v13;
    *(v0 + 416) = v12;
    *(v0 + 424) = v13;
    (*(v10 + 8))(v9, v11);

    sub_22DF63554();
    sub_22DF63504();
    v15 = *v5;
    *(v0 + 432) = *v5;
    *(v0 + 440) = v5 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v7, v6);
    v16 = swift_task_alloc();
    *(v0 + 448) = v16;
    *v16 = v0;
    v16[1] = sub_22DF22B00;
    v17 = *(v0 + 344);
    v18 = *(v0 + 304);
    v19 = *(v0 + 240);
    v20 = v12;
    v21 = v14;
LABEL_12:

    return sub_22DF03240(v19, v20, v21, v18);
  }

  v22 = *(v0 + 320);
  v24 = *v2;
  v23 = *(v2 + 1);
  (*(v1 + 32))(*(v0 + 328), &v2[*(v3 + 48)], *(v0 + 288));
  sub_22DF63554();
  v25 = sub_22DF63524();
  v26 = *(v1 + 8);
  *(v0 + 368) = v26;
  *(v0 + 376) = v5 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v22, v6);
  if ((v25 & 1) == 0)
  {

    if (qword_27DA4BEB0 != -1)
    {
      swift_once();
    }

    v61 = v26;
    v35 = *(v0 + 240);
    v36 = sub_22DF63734();
    __swift_project_value_buffer(v36, qword_27DA4E638);
    sub_22DEF0F4C(v35, v0 + 16);
    v37 = sub_22DF63714();
    v38 = sub_22DF63D24();
    sub_22DEF0FA8(v35);
    if (os_log_type_enabled(v37, v38))
    {
      v39 = *(v0 + 240);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v62 = v41;
      *v40 = 136446210;
      v43 = *(v39 + 16);
      v42 = *(v39 + 32);
      v44 = *v39;
      *(v0 + 176) = *(v39 + 48);
      *(v0 + 144) = v43;
      *(v0 + 160) = v42;
      *(v0 + 128) = v44;
      sub_22DEF0F4C(v39, v0 + 184);
      sub_22DF230C0();
      v45 = sub_22DF64154();
      v47 = v46;
      v48 = *(v0 + 144);
      *(v0 + 72) = *(v0 + 128);
      *(v0 + 88) = v48;
      *(v0 + 104) = *(v0 + 160);
      *(v0 + 120) = *(v0 + 176);
      sub_22DEF0FA8(v0 + 72);
      v49 = sub_22DEF0354(v45, v47, &v62);

      *(v40 + 4) = v49;
      _os_log_impl(&dword_22DEEA000, v37, v38, "CID expired for %{public}s, refreshing", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x2318DDBE0](v41, -1, -1);
      MEMORY[0x2318DDBE0](v40, -1, -1);
    }

    v51 = *(v0 + 312);
    v50 = *(v0 + 320);
    v52 = *(v0 + 288);
    v54 = *(v0 + 264);
    v53 = *(v0 + 272);
    v55 = *(v0 + 256);
    sub_22DF635F4();
    v56 = sub_22DF635A4();
    v58 = v57;
    *(v0 + 384) = v56;
    *(v0 + 392) = v57;
    (*(v54 + 8))(v53, v55);

    sub_22DF63554();
    sub_22DF63504();
    v61(v50, v52);
    v59 = swift_task_alloc();
    *(v0 + 400) = v59;
    *v59 = v0;
    v59[1] = sub_22DF22878;
    v60 = *(v0 + 344);
    v18 = *(v0 + 312);
    v19 = *(v0 + 240);
    v20 = v56;
    v21 = v58;
    goto LABEL_12;
  }

  v26(*(v0 + 328), *(v0 + 288));
  v28 = *(v0 + 320);
  v27 = *(v0 + 328);
  v30 = *(v0 + 304);
  v29 = *(v0 + 312);
  v32 = *(v0 + 272);
  v31 = *(v0 + 280);

  v33 = *(v0 + 8);

  return v33(v24, v23);
}

uint64_t sub_22DF22878()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *(*v1 + 392);
  v5 = *(*v1 + 376);
  v6 = *(*v1 + 368);
  v7 = *(*v1 + 312);
  v8 = *(*v1 + 288);
  v9 = *v1;
  *(*v1 + 408) = v0;

  v6(v7, v8);

  if (v0)
  {
    v10 = *(v2 + 392);
    v11 = *(v2 + 248);

    v12 = sub_22DF22DCC;
    v13 = v11;
  }

  else
  {
    v13 = *(v2 + 248);
    v12 = sub_22DF22A38;
  }

  return MEMORY[0x2822009F8](v12, v13, 0);
}

uint64_t sub_22DF22A38()
{
  v1 = *(v0 + 376);
  (*(v0 + 368))(*(v0 + 328), *(v0 + 288));
  v2 = *(v0 + 384);
  v3 = *(v0 + 392);
  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v7 = *(v0 + 304);
  v6 = *(v0 + 312);
  v9 = *(v0 + 272);
  v8 = *(v0 + 280);

  v10 = *(v0 + 8);

  return v10(v2, v3);
}

uint64_t sub_22DF22B00()
{
  v2 = *(*v1 + 448);
  v3 = *(*v1 + 440);
  v4 = *(*v1 + 432);
  v5 = *(*v1 + 424);
  v6 = *(*v1 + 304);
  v7 = *(*v1 + 288);
  v8 = *v1;
  v8[57] = v0;

  v4(v6, v7);

  v9 = v8[53];
  if (v0)
  {
    v10 = v8[31];
    v11 = v8[53];

    return MEMORY[0x2822009F8](sub_22DF22E80, v10, 0);
  }

  else
  {
    v12 = v8[52];
    v14 = v8[40];
    v13 = v8[41];
    v16 = v8[38];
    v15 = v8[39];
    v17 = v8[34];
    v18 = v8[35];

    v19 = v8[1];

    return v19(v12, v9);
  }
}

uint64_t sub_22DF22D28()
{
  v1 = v0[45];
  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v7 = v0[34];
  v6 = v0[35];

  v8 = v0[1];

  return v8();
}

uint64_t sub_22DF22DCC()
{
  v1 = *(v0 + 376);
  (*(v0 + 368))(*(v0 + 328), *(v0 + 288));
  v2 = *(v0 + 408);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v6 = *(v0 + 304);
  v5 = *(v0 + 312);
  v8 = *(v0 + 272);
  v7 = *(v0 + 280);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22DF22E80()
{
  v1 = v0[57];
  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v7 = v0[34];
  v6 = v0[35];

  v8 = v0[1];

  return v8();
}

void *sub_22DF22F24(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47980, "B/");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47988, &qword_22DF67EE8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22DF23058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_22DF230C0()
{
  result = qword_27DA47978;
  if (!qword_27DA47978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47978);
  }

  return result;
}

uint64_t sub_22DF23144()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4E650);
  __swift_project_value_buffer(v0, qword_27DA4E650);
  return sub_22DF63724();
}

uint64_t sub_22DF231C8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      sub_22DF63F24();

      v5 = 0xD000000000000012;
    }

    else
    {
      sub_22DF63F24();

      v5 = 0xD00000000000001FLL;
    }

    v8 = v5;
    MEMORY[0x2318DCA20](a1, a2);
    return v8;
  }

  if (a3 == 2)
  {
    sub_22DF63F24();

    v8 = 0xD000000000000021;
    v6 = sub_22DF64154();
    MEMORY[0x2318DCA20](v6);

    return v8;
  }

  return 0x656C74746F726874;
}

uint64_t type metadata accessor for StorebagSigningConfiguration()
{
  result = qword_28150A850;
  if (!qword_28150A850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22DF23384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22DF63444();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  type metadata accessor for Throttle();
  sub_22DF1B95C(a1, v12);
  if (v2)
  {
    return (*(v6 + 8))(a1, v5);
  }

  v14 = *(v6 + 32);
  v14(a2, v12, v5);
  sub_22DF2FA30(a1, 0x72756769666E6F63, 0xEF2F736E6F697461, v10);
  (*(v6 + 8))(a1, v5);
  v15 = type metadata accessor for StorebagSigningConfiguration();
  return (v14)(a2 + *(v15 + 20), v10, v5);
}

uint64_t sub_22DF23570()
{
  v117[9] = *MEMORY[0x277D85DE8];
  v1 = sub_22DF63594();
  v2 = *(v1 - 8);
  v111 = v1;
  v112 = v2;
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v108 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v109 = &v103 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v103 - v8;
  v10 = sub_22DF632E4();
  v110 = *(v10 - 8);
  v11 = *(v110 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47468, &qword_22DF697B0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v103 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v103 - v22;
  v113 = sub_22DF63444();
  v24 = *(v113 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v113);
  v27 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v0 + *(type metadata accessor for StorebagSigningConfiguration() + 20);
  sub_22DF633A4();
  v114 = v27;
  v29 = sub_22DF633C4();
  v105 = v21;
  v106 = v18;
  v107 = v9;
  v30 = v112;
  if ((v29 & 1) == 0)
  {
    if (qword_27DA4BF40 != -1)
    {
      swift_once();
    }

    v34 = sub_22DF63734();
    __swift_project_value_buffer(v34, qword_27DA4E650);
    v35 = sub_22DF63714();
    v36 = sub_22DF63CE4();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v114;
    if (v37)
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_22DEEA000, v35, v36, "configuration does not exist", v39, 2u);
      MEMORY[0x2318DDBE0](v39, -1, -1);
    }

    (*(v24 + 8))(v38, v113);
    goto LABEL_8;
  }

  v104 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47470, &unk_22DF65BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22DF65900;
  v32 = *MEMORY[0x277CBE7B0];
  *(inited + 32) = *MEMORY[0x277CBE7B0];
  v33 = v32;
  sub_22DEF9A50(inited);
  swift_setDeallocating();
  sub_22DEF9C44(inited + 32);
  sub_22DF63354();

  v41 = v105;
  sub_22DF632B4();
  (*(v110 + 8))(v13, v10);
  v42 = v111;
  result = (*(v30 + 48))(v41, 1, v111);
  if (result != 1)
  {
    v44 = v23;
    (*(v30 + 32))(v23, v41, v42);
    v45 = v104;
    v46 = v113;
    v47 = v106;
    (*(v30 + 56))(v23, 0, 1, v42);
    sub_22DF27578(v23, v47);
    v48 = (*(v30 + 48))(v47, 1, v42);
    v49 = v114;
    if (v48 == 1)
    {
      sub_22DF275E8(v47);
      if (qword_27DA4BF40 != -1)
      {
        swift_once();
      }

      v50 = sub_22DF63734();
      __swift_project_value_buffer(v50, qword_27DA4E650);
      v51 = sub_22DF63714();
      v52 = sub_22DF63D04();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_22DEEA000, v51, v52, "unable to determine configuration creation date", v53, 2u);
        MEMORY[0x2318DDBE0](v53, -1, -1);
      }
    }

    else
    {
      (*(v30 + 32))(v107, v47, v42);
      v54 = sub_22DF63464();
      v56 = v55;
      v57 = objc_opt_self();
      v58 = v54;
      v110 = v56;
      v59 = sub_22DF634A4();
      v117[0] = 0;
      v60 = [v57 propertyListWithData:v59 options:0 format:0 error:v117];

      if (v60)
      {
        v61 = v117[0];
        sub_22DF63E44();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47638, &qword_22DF660F0);
        if (swift_dynamicCast())
        {
          v62 = v115;
          if (*(*&v115 + 16) && (v63 = sub_22DEF08FC(0xD000000000000016, 0x800000022DF6ED10), (v64 & 1) != 0))
          {
            sub_22DEF12A0(*(*&v62 + 56) + 32 * v63, v117);

            v65 = swift_dynamicCast();
            v66 = v107;
            v67 = v109;
            v68 = v108;
            if (v65)
            {
              v116 = 0;
              if (v115 > 31536000.0 || v115 < 3600.0)
              {
                v115 = 86400.0;
                v116 = 0;
              }
            }

            else
            {
              v115 = 0.0;
              v116 = v65 ^ 1;
            }
          }

          else
          {

            v115 = 0.0;
            v116 = 1;
            v66 = v107;
            v67 = v109;
            v68 = v108;
          }

          sub_22DF63504();
          sub_22DF63554();
          v75 = sub_22DF63524();
          v78 = *(v30 + 8);
          v77 = v30 + 8;
          v76 = v78;
          v79 = v68;
          v80 = v111;
          v78(v79, v111);
          if ((v75 & 1) == 0)
          {
            v76(v67, v80);
            v76(v66, v80);
            sub_22DF275E8(v44);
            (*(v45 + 8))(v49, v113);
            result = v58;
            goto LABEL_9;
          }

          if (qword_27DA4BF40 != -1)
          {
            swift_once();
          }

          v81 = sub_22DF63734();
          __swift_project_value_buffer(v81, qword_27DA4E650);
          v82 = sub_22DF63714();
          v83 = sub_22DF63D24();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            *v84 = 0;
            _os_log_impl(&dword_22DEEA000, v82, v83, "removing expired config", v84, 2u);
            MEMORY[0x2318DDBE0](v84, -1, -1);
          }

          v85 = [objc_opt_self() defaultManager];
          v86 = sub_22DF63394();
          v117[0] = 0;
          v87 = [v85 removeItemAtURL:v86 error:v117];

          if (v87)
          {
            v88 = v117[0];
            sub_22DEF7A34(v58, v110);
          }

          else
          {
            v89 = v117[0];
            v90 = sub_22DF63334();

            swift_willThrow();
            v91 = v90;
            v92 = sub_22DF63714();
            v93 = sub_22DF63CE4();

            if (os_log_type_enabled(v92, v93))
            {
              v94 = swift_slowAlloc();
              v108 = v44;
              v95 = v94;
              v96 = swift_slowAlloc();
              v112 = v77;
              v97 = v96;
              v117[0] = v96;
              *v95 = 136446210;
              swift_getErrorValue();
              v98 = sub_22DF64244();
              v100 = sub_22DEF0354(v98, v99, v117);

              *(v95 + 4) = v100;
              _os_log_impl(&dword_22DEEA000, v92, v93, "failed to remove expired configuration: %{public}s", v95, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v97);
              MEMORY[0x2318DDBE0](v97, -1, -1);
              MEMORY[0x2318DDBE0](v95, -1, -1);
              sub_22DEF7A34(v58, v110);

              v101 = v111;
              v76(v109, v111);
              v76(v107, v101);
              sub_22DF275E8(v108);
              (*(v104 + 8))(v49, v113);
              goto LABEL_8;
            }

            sub_22DEF7A34(v58, v110);
          }

          v102 = v111;
          v76(v109, v111);
          v76(v107, v102);
          sub_22DF275E8(v44);
          (*(v45 + 8))(v49, v113);
          goto LABEL_8;
        }
      }

      else
      {
        v69 = v117[0];
        v70 = sub_22DF63334();

        swift_willThrow();
      }

      if (qword_27DA4BF40 != -1)
      {
        swift_once();
      }

      v71 = sub_22DF63734();
      __swift_project_value_buffer(v71, qword_27DA4E650);
      v72 = sub_22DF63714();
      v73 = sub_22DF63D04();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_22DEEA000, v72, v73, "failed to parse configuration", v74, 2u);
        MEMORY[0x2318DDBE0](v74, -1, -1);
      }

      sub_22DEF7A34(v58, v110);

      (*(v30 + 8))(v107, v42);
    }

    sub_22DF275E8(v44);
    (*(v45 + 8))(v49, v46);
LABEL_8:
    result = 0;
LABEL_9:
    v40 = *MEMORY[0x277D85DE8];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_22DF2438C()
{
  v11 = *MEMORY[0x277D85DE8];
  v1[15] = v0;
  v2 = sub_22DF63124();
  v1[16] = v2;
  v3 = *(v2 - 8);
  v1[17] = v3;
  v4 = *(v3 + 64) + 15;
  v1[18] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47410, &qword_22DF65B80) - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v6 = sub_22DF63444();
  v1[20] = v6;
  v7 = *(v6 - 8);
  v1[21] = v7;
  v8 = *(v7 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22DF24524, 0, 0);
}

uint64_t sub_22DF24524()
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = v0[15];
  v2 = sub_22DF23570();
  if (v3 >> 60 == 15)
  {
    v4 = v0[24];
    v5 = v0[15];
    type metadata accessor for Throttle();
    sub_22DF633B4();
    v6 = sub_22DF1B8C8(v4);
    v0[25] = v6;
    v7 = *(*v6 + 160);
    v21 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[26] = v9;
    *v9 = v0;
    v9[1] = sub_22DF24768;
    v10 = *MEMORY[0x277D85DE8];

    return v21();
  }

  else
  {
    v12 = v3;
    v13 = v2;
    v15 = v0[23];
    v14 = v0[24];
    v16 = v0[22];
    v18 = v0[18];
    v17 = v0[19];

    v19 = v0[1];
    v20 = *MEMORY[0x277D85DE8];

    return v19(v13, v12);
  }
}

uint64_t sub_22DF24768(char a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 208);
  v6 = *v1;
  *(*v1 + 320) = a1;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22DF24894, 0, 0);
}

uint64_t sub_22DF24894()
{
  v39 = *MEMORY[0x277D85DE8];
  if (*(v0 + 320))
  {
    if (qword_27DA4BF40 != -1)
    {
      swift_once();
    }

    v1 = sub_22DF63734();
    *(v0 + 216) = __swift_project_value_buffer(v1, qword_27DA4E650);
    v2 = sub_22DF63714();
    v3 = sub_22DF63D24();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_22DEEA000, v2, v3, "fetching configuration from server", v4, 2u);
      MEMORY[0x2318DDBE0](v4, -1, -1);
    }

    v5 = *(v0 + 160);
    v6 = *(v0 + 168);
    v7 = *(v0 + 152);

    sub_22DF63414();
    v8 = (*(v6 + 48))(v7, 1, v5);
    if (v8 == 1)
    {
      __break(1u);
    }

    else
    {
      (*(*(v0 + 168) + 32))(*(v0 + 184), *(v0 + 152), *(v0 + 160));
      v10 = RequestOptions.globalRequestOptions.unsafeMutableAddressor();
      swift_beginAccess();
      v11 = *v10;
      v12 = objc_opt_self();

      v13 = [v12 mainBundle];
      v14 = [v13 bundleIdentifier];

      if (v14)
      {
        v16 = *(v0 + 184);
        v15 = *(v0 + 192);
        v17 = *(v0 + 160);
        v18 = *(v0 + 168);
        v19 = *(v0 + 144);
        sub_22DF639B4();

        v20 = sub_22DF40530(1, 1);
        v21 = sub_22DF5A7E4(v20 & 0x101);
        *(v0 + 224) = v21;

        [v21 setTlsPinning_];
        *(v0 + 232) = [objc_allocWithZone(MEMORY[0x277CF36D8]) init];
        (*(v18 + 16))(v15, v16, v17);
        sub_22DF630E4();
        v22 = *(MEMORY[0x277CF3698] + 4);
        v23 = swift_task_alloc();
        *(v0 + 240) = v23;
        *v23 = v0;
        v23[1] = sub_22DF24D50;
        v24 = *MEMORY[0x277D85DE8];
        v8 = *(v0 + 144);
        v9 = v21;

        return MEMORY[0x2821463B8](v8, v9);
      }
    }

    __break(1u);
    return MEMORY[0x2821463B8](v8, v9);
  }

  if (qword_27DA4BF40 != -1)
  {
    swift_once();
  }

  v25 = sub_22DF63734();
  __swift_project_value_buffer(v25, qword_27DA4E650);
  v26 = sub_22DF63714();
  v27 = sub_22DF63D24();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_22DEEA000, v26, v27, "configuration fetch throttled", v28, 2u);
    MEMORY[0x2318DDBE0](v28, -1, -1);
  }

  sub_22DF26888();
  swift_allocError();
  *v29 = 0;
  *(v29 + 8) = 0;
  *(v29 + 16) = 3;
  v31 = *(v0 + 192);
  v30 = *(v0 + 200);
  v33 = *(v0 + 176);
  v32 = *(v0 + 184);
  v35 = *(v0 + 144);
  v34 = *(v0 + 152);
  swift_willThrow();

  v36 = *(v0 + 8);
  v37 = *MEMORY[0x277D85DE8];

  return v36();
}

uint64_t sub_22DF24D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 240);
  v8 = *v4;
  v6[31] = a1;
  v6[32] = a2;
  v6[33] = a3;
  v6[34] = v3;

  v9 = v5[29];
  (*(v5[17] + 8))(v5[18], v5[16]);

  if (v3)
  {
    v10 = sub_22DF25A9C;
  }

  else
  {
    v10 = sub_22DF24F10;
  }

  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_22DF24F10()
{
  v85 = v0;
  v84[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 264);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 264);
    v5 = [v3 statusCode];
    v6 = *(v0 + 264);
    if (v5 <= 199)
    {

LABEL_9:
      v30 = *(v0 + 256);
      v31 = *(v0 + 264);
      v32 = *(v0 + 248);
      v33 = *(v0 + 224);
      v82 = *(v0 + 184);
      v35 = *(v0 + 160);
      v34 = *(v0 + 168);
      v36 = [v3 statusCode];
      sub_22DF26888();
      v22 = swift_allocError();
      *v37 = v36;
      *(v37 + 8) = 0;
      *(v37 + 16) = 2;
      swift_willThrow();

      sub_22DEF7A34(v32, v30);
      (*(v34 + 8))(v82, v35);
      goto LABEL_12;
    }

    v7 = [v3 statusCode];

    if (v7 >= 300)
    {
      goto LABEL_9;
    }
  }

  v8 = *(v0 + 248);
  v9 = *(v0 + 256);
  v10 = objc_opt_self();
  v11 = sub_22DF634A4();
  *(v0 + 104) = 0;
  v12 = [v10 propertyListWithData:v11 options:0 format:0 error:v0 + 104];

  v13 = *(v0 + 104);
  if (!v12)
  {
    v38 = *(v0 + 256);
    v39 = *(v0 + 264);
    v40 = *(v0 + 248);
    v41 = *(v0 + 224);
    v83 = *(v0 + 184);
    v43 = *(v0 + 160);
    v42 = *(v0 + 168);
    v44 = v13;
    v22 = sub_22DF63334();

    swift_willThrow();
    sub_22DEF7A34(v40, v38);

    (*(v42 + 8))(v83, v43);
    goto LABEL_12;
  }

  v14 = v13;
  sub_22DF63E44();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47638, &qword_22DF660F0);
  if (!swift_dynamicCast())
  {
    v63 = *(v0 + 256);
    v64 = *(v0 + 264);
    v65 = *(v0 + 248);
    v66 = *(v0 + 224);
    v67 = *(v0 + 184);
    v68 = *(v0 + 160);
    v69 = *(v0 + 168);
    sub_22DF26888();
    v22 = swift_allocError();
    *v70 = 0xD000000000000028;
    *(v70 + 8) = 0x800000022DF6EB30;
    *(v70 + 16) = 0;
    swift_willThrow();
    sub_22DEF7A34(v65, v63);

    (*(v69 + 8))(v67, v68);
    goto LABEL_12;
  }

  v15 = *(v0 + 272);
  v17 = *(v0 + 248);
  v16 = *(v0 + 256);
  v18 = *(v0 + 176);
  v19 = *(v0 + 112);
  v20 = *(v0 + 120);

  v21 = v20 + *(type metadata accessor for StorebagSigningConfiguration() + 20);
  sub_22DF633A4();
  sub_22DF634D4();
  if (v15)
  {
    v22 = v15;
    v23 = *(v0 + 264);
    v24 = *(v0 + 224);
    v26 = *(v0 + 176);
    v25 = *(v0 + 184);
    v27 = *(v0 + 160);
    v28 = *(v0 + 168);
    sub_22DEF7A34(*(v0 + 248), *(v0 + 256));

    v29 = *(v28 + 8);
    v29(v26, v27);
    v29(v25, v27);
LABEL_12:
    *(v0 + 304) = v22;
    v45 = *(v0 + 216);
    v46 = v22;
    v47 = sub_22DF63714();
    v48 = sub_22DF63D24();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v84[0] = v50;
      *v49 = 136315138;
      swift_getErrorValue();
      v52 = *(v0 + 72);
      v51 = *(v0 + 80);
      v53 = *(v0 + 88);
      v54 = sub_22DF64244();
      v56 = sub_22DEF0354(v54, v55, v84);

      *(v49 + 4) = v56;
      _os_log_impl(&dword_22DEEA000, v47, v48, "failed to fetch configuration from server with error (%s)", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x2318DDBE0](v50, -1, -1);
      MEMORY[0x2318DDBE0](v49, -1, -1);
    }

    v57 = **(v0 + 200);
    v80 = (*(v57 + 168) + **(v57 + 168));
    v58 = *(*(v57 + 168) + 4);
    v59 = swift_task_alloc();
    *(v0 + 312) = v59;
    *v59 = v0;
    v59[1] = sub_22DF25888;
    v60 = *(v0 + 200);
    v61 = *MEMORY[0x277D85DE8];

    return v80();
  }

  v71 = *(v0 + 200);
  v73 = *(v0 + 168);
  v72 = *(v0 + 176);
  v74 = *(v0 + 160);
  v75 = *(v73 + 8);
  *(v0 + 280) = v75;
  *(v0 + 288) = (v73 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v75(v72, v74);
  v81 = (*(*v71 + 152) + **(*v71 + 152));
  v76 = *(*(*v71 + 152) + 4);
  v77 = swift_task_alloc();
  *(v0 + 296) = v77;
  *v77 = v0;
  v77[1] = sub_22DF255D0;
  v78 = *(v0 + 200);
  v79 = *MEMORY[0x277D85DE8];

  return v81();
}

uint64_t sub_22DF255D0()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 296);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22DF256F8, 0, 0);
}

uint64_t sub_22DF256F8()
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = v0[27];
  v2 = sub_22DF63714();
  v3 = sub_22DF63D24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22DEEA000, v2, v3, "successfully fetched configuration from server", v4, 2u);
    MEMORY[0x2318DDBE0](v4, -1, -1);
    v5 = v0[33];
    v6 = (v0 + 28);
  }

  else
  {
    v6 = (v0 + 33);
    v5 = v2;
    v2 = v0[28];
  }

  v7 = *v6;
  v9 = v0[35];
  v8 = v0[36];
  v10 = v0[25];
  v11 = v0[23];
  v12 = v0[20];

  v9(v11, v12);
  v13 = v0[31];
  v14 = v0[32];
  v16 = v0[23];
  v15 = v0[24];
  v17 = v0[22];
  v19 = v0[18];
  v18 = v0[19];

  v20 = v0[1];
  v21 = *MEMORY[0x277D85DE8];

  return v20(v13, v14);
}

uint64_t sub_22DF25888()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 312);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22DF259B0, 0, 0);
}

uint64_t sub_22DF259B0()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[38];
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[18];
  v6 = v0[19];
  swift_willThrow();

  v8 = v0[1];
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_22DF25A9C()
{
  v25 = v0;
  v24[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 272);
  *(v0 + 304) = v4;
  v5 = *(v0 + 216);
  v6 = v4;
  v7 = sub_22DF63714();
  v8 = sub_22DF63D24();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24[0] = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = *(v0 + 72);
    v11 = *(v0 + 80);
    v13 = *(v0 + 88);
    v14 = sub_22DF64244();
    v16 = sub_22DEF0354(v14, v15, v24);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_22DEEA000, v7, v8, "failed to fetch configuration from server with error (%s)", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x2318DDBE0](v10, -1, -1);
    MEMORY[0x2318DDBE0](v9, -1, -1);
  }

  v17 = **(v0 + 200);
  v23 = (*(v17 + 168) + **(v17 + 168));
  v18 = *(*(v17 + 168) + 4);
  v19 = swift_task_alloc();
  *(v0 + 312) = v19;
  *v19 = v0;
  v19[1] = sub_22DF25888;
  v20 = *(v0 + 200);
  v21 = *MEMORY[0x277D85DE8];

  return v23();
}

uint64_t sub_22DF25D10()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  *v1 = v0;
  v1[1] = sub_22DF25DC8;
  v2 = *MEMORY[0x277D85DE8];

  return sub_22DF2438C();
}

uint64_t sub_22DF25DC8(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(*v3 + 288);
  v5 = *v3;
  v5[37] = a1;
  v5[38] = a2;

  if (v2)
  {
    v6 = v5[1];
    v7 = *MEMORY[0x277D85DE8];

    return v6();
  }

  else
  {
    v9 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_22DF25F40, 0, 0);
  }
}

uint64_t sub_22DF25F40()
{
  v56 = *MEMORY[0x277D85DE8];
  v1 = v0[37];
  v2 = v0[38];
  v3 = objc_opt_self();
  v4 = sub_22DF634A4();
  v0[29] = 0;
  v5 = [v3 propertyListWithData:v4 options:0 format:0 error:v0 + 29];

  v6 = v0[29];
  if (!v5)
  {
    v38 = v6;
    v39 = sub_22DF63334();

    swift_willThrow();
    goto LABEL_36;
  }

  v7 = v6;
  sub_22DF63E44();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47638, &qword_22DF660F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:
    v41 = v0[37];
    v40 = v0[38];
    v42 = 0x800000022DF6EB30;
    sub_22DF26888();
    swift_allocError();
    v44 = 0xD000000000000028;
LABEL_38:
    *v43 = v44;
    *(v43 + 8) = v42;
    *(v43 + 16) = 0;
    swift_willThrow();
    sub_22DEF7A34(v41, v40);
    v45 = v0[1];
    v46 = *MEMORY[0x277D85DE8];

    return v45();
  }

  v8 = v0[30];
  if (!*(v8 + 16) || (v9 = v0[30], v10 = sub_22DEF08FC(0x67616265726F7453, 0xE800000000000000), (v11 & 1) == 0) || (sub_22DEF12A0(*(v8 + 56) + 32 * v10, (v0 + 6)), (swift_dynamicCast() & 1) == 0))
  {

    v41 = v0[37];
    v40 = v0[38];
    v42 = 0x800000022DF6EB60;
    sub_22DF26888();
    swift_allocError();
    v44 = 0xD00000000000004ALL;
    goto LABEL_38;
  }

  v12 = v0[31];
  if (!*(v12 + 16) || (v13 = v0[31], v14 = sub_22DEF08FC(0x676E696E676953, 0xE700000000000000), (v15 & 1) == 0) || (sub_22DEF12A0(*(v12 + 56) + 32 * v14, (v0 + 10)), (swift_dynamicCast() & 1) == 0))
  {

    v41 = v0[37];
    v40 = v0[38];
    v42 = 0x800000022DF6EBB0;
    sub_22DF26888();
    swift_allocError();
    v44 = 0xD000000000000049;
    goto LABEL_38;
  }

  v16 = v0[32];
  if (!*(v16 + 16) || (v17 = v0[32], v18 = sub_22DEF08FC(0x6D6E6F7269766E45, 0xEB00000000746E65), (v19 & 1) == 0) || (sub_22DEF12A0(*(v16 + 56) + 32 * v18, (v0 + 14)), (swift_dynamicCast() & 1) == 0))
  {

    v41 = v0[37];
    v40 = v0[38];
    v42 = 0x800000022DF6EC00;
    sub_22DF26888();
    swift_allocError();
    v44 = 0xD00000000000004DLL;
    goto LABEL_38;
  }

  v20 = v0[33];
  v55 = MEMORY[0x277D84F90];
  if (*(v20 + 16))
  {
    v21 = sub_22DEF08FC(0x64756F6C4369, 0xE600000000000000);
    if (v22)
    {
      sub_22DEF12A0(*(v20 + 56) + 32 * v21, (v0 + 18));
      if (swift_dynamicCast())
      {
        v53 = sub_22DF26E3C(v0[35]);

        sub_22DF26620(v53);
      }
    }
  }

  v23 = sub_22DF2E5EC();
  swift_beginAccess();
  if (*v23 == 1)
  {
    v50 = v20 + 64;
    v24 = -1;
    v25 = -1 << *(v20 + 32);
    if (-v25 < 64)
    {
      v24 = ~(-1 << -v25);
    }

    v26 = v20;
    v27 = v24 & *(v20 + 64);
    v28 = (63 - v25) >> 6;
    v54 = v26;

    v29 = 0;
    while (v27)
    {
LABEL_25:
      v31 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v32 = (v54[6] + ((v29 << 10) | (16 * v31)));
      v33 = *v32;
      if (*v32 != 0x64756F6C4369 || v32[1] != 0xE600000000000000)
      {
        v51 = v32[1];
        if ((sub_22DF64184() & 1) == 0)
        {
          if (v54[2])
          {

            v35 = sub_22DEF08FC(v33, v51);
            if (v36 & 1) != 0 && (sub_22DEF12A0(v54[7] + 32 * v35, (v0 + 22)), (swift_dynamicCast()))
            {
              v37 = v0[34];

              v52 = sub_22DF26E3C(v37);

              sub_22DF26620(v52);
            }

            else
            {
            }
          }
        }
      }
    }

    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
      }

      if (v30 >= v28)
      {
        break;
      }

      v27 = *(v50 + 8 * v30);
      ++v29;
      if (v27)
      {
        v29 = v30;
        goto LABEL_25;
      }
    }

    sub_22DEF7A34(v0[37], v0[38]);
  }

  else
  {
    sub_22DEF7A34(v0[37], v0[38]);
  }

  v48 = v0[1];
  v49 = *MEMORY[0x277D85DE8];

  return v48(v55);
}

uint64_t sub_22DF26620(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_22DF63E94();
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

  v15 = sub_22DF63E94();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_22DF26A9C(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_22DF26B3C(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
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

uint64_t sub_22DF26710()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_22DF63704();
}

uint64_t sub_22DF2675C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_22DF636F4();
}

uint64_t sub_22DF267B4()
{
  sub_22DF642A4();
  v1 = *v0;
  swift_getWitnessTable();
  sub_22DF636F4();
  return sub_22DF642D4();
}

uint64_t sub_22DF2681C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_22DF636E4();
}

unint64_t sub_22DF26888()
{
  result = qword_27DA47990;
  if (!qword_27DA47990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47990);
  }

  return result;
}

unint64_t sub_22DF268DC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22DF642A4();
  type metadata accessor for CFString();
  sub_22DF274E4(&qword_27DA479C8, type metadata accessor for CFString);
  sub_22DF636F4();
  v4 = sub_22DF642D4();

  return sub_22DF26990(a1, v4);
}

unint64_t sub_22DF26990(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString();
    sub_22DF274E4(&qword_27DA479C8, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_22DF636E4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_22DF26A9C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_22DF63E94();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_22DF63F54();
  *v1 = result;
  return result;
}

uint64_t sub_22DF26B3C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22DF63E94();
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
      result = sub_22DF63E94();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22DF27480();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47998, ":.");
            v9 = sub_22DF26CBC(v13, i, a3);
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
        type metadata accessor for SecKey(0);
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

void (*sub_22DF26CBC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2318DCED0](a2, a3);
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
    return sub_22DF26D3C;
  }

  __break(1u);
  return result;
}

unint64_t sub_22DF26D44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA479C0, &unk_22DF68050);
    v3 = sub_22DF64044();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_22DF268DC(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_22DF26E3C(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  v39 = MEMORY[0x277D84F90];
  v38 = *MEMORY[0x277CDC028];
  v37 = *MEMORY[0x277CDC060];
  v35 = *MEMORY[0x277CDC000];
  v36 = *MEMORY[0x277CDBFE0];
  do
  {
    v5 = v2;
    if (*(a1 + 16))
    {
      v6 = &unk_2841949F0 + 16 * v3;
      v7 = *(v6 + 4);
      v8 = *(v6 + 5);

      v9 = sub_22DEF08FC(v7, v8);
      if ((v10 & 1) == 0)
      {
        goto LABEL_2;
      }

      sub_22DEF12A0(*(a1 + 56) + 32 * v9, v40);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_2;
      }

      v11 = sub_22DF63474();
      v13 = v12;
      if (v12 >> 60 == 15)
      {
        if (qword_27DA4BF40 != -1)
        {
          swift_once();
        }

        v14 = sub_22DF63734();
        __swift_project_value_buffer(v14, qword_27DA4E650);
        v15 = sub_22DF63714();
        v16 = sub_22DF63D04();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          v18 = v16;
          v19 = v15;
          v20 = "failed to parse configuration, failed to read public key data";
          goto LABEL_21;
        }

        goto LABEL_23;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA479A8, "<.");
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22DF65910;
      *(inited + 32) = v38;
      *(inited + 40) = v37;
      *(inited + 48) = v36;
      *(inited + 56) = v35;
      v22 = v38;
      v23 = v37;
      v24 = v36;
      v25 = v35;
      sub_22DF26D44(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA479B0, &qword_22DF68048);
      swift_arrayDestroy();
      v26 = sub_22DF634A4();
      type metadata accessor for CFString();
      sub_22DF274E4(&qword_27DA479B8, type metadata accessor for CFString);
      v27 = sub_22DF638C4();

      v28 = SecKeyCreateWithData(v26, v27, 0);

      if (!v28)
      {
        if (qword_27DA4BF40 != -1)
        {
          swift_once();
        }

        v31 = sub_22DF63734();
        __swift_project_value_buffer(v31, qword_27DA4E650);
        v15 = sub_22DF63714();
        v32 = sub_22DF63D04();
        if (os_log_type_enabled(v15, v32))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          v18 = v32;
          v19 = v15;
          v20 = "failed to parse configuration, failed to decode public key";
LABEL_21:
          _os_log_impl(&dword_22DEEA000, v19, v18, v20, v17, 2u);
          MEMORY[0x2318DDBE0](v17, -1, -1);
        }

        sub_22DEF7A20(v11, v13);
LABEL_23:

LABEL_2:

        goto LABEL_3;
      }

      sub_22DEF7A20(v11, v13);

      v29 = v28;

      MEMORY[0x2318DCAF0](v30);
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v33 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22DF63B94();
      }

      sub_22DF63BB4();

      v4 = v39;
    }

LABEL_3:
    v2 = 1;
    v3 = 1;
  }

  while ((v5 & 1) == 0);
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_22DF2731C()
{
  result = sub_22DF63444();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19CloudTelemetryTools28StorebagSigningConfigurationV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22DF273B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22DF27400(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_22DF27444(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_22DF27480()
{
  result = qword_27DA479A0;
  if (!qword_27DA479A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA47998, ":.");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA479A0);
  }

  return result;
}

uint64_t sub_22DF274E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22DF2752C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_22DF27578(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47468, &qword_22DF697B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DF275E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47468, &qword_22DF697B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22DF276E0()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4C1D8);
  __swift_project_value_buffer(v0, qword_27DA4C1D8);
  return sub_22DF63724();
}

uint64_t sub_22DF27764(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  return v2;
}

uint64_t sub_22DF277A4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  return MEMORY[0x2822009F8](sub_22DF277EC, v1, 0);
}

uint64_t sub_22DF277EC()
{
  v1 = v0[6];
  swift_beginAccess();
  if (*(*(v1 + 112) + 16))
  {
    v3 = v0[6];
    v4 = v0[7];
    v5 = v0[5];
    sub_22DF293CC(&qword_27DA479E0, v2, type metadata accessor for BackendGroup);
    v6 = swift_task_alloc();
    v0[8] = v6;
    v6[2] = v3;
    v6[3] = v5;
    v6[4] = v4;
    v7 = *(MEMORY[0x277D858E8] + 4);
    v8 = swift_task_alloc();
    v0[9] = v8;
    *v8 = v0;
    v8[1] = sub_22DF279A4;

    return MEMORY[0x282200600]();
  }

  else
  {
    sub_22DF28164();
    swift_allocError();
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_22DF279A4()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22DF0340C, v3, 0);
}

uint64_t sub_22DF27AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47460, &qword_22DF65310) - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF27BA4, a3, 0);
}

uint64_t sub_22DF27BA4()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = *(v3 + 16);
  if (v4)
  {
    v34 = **(v0 + 96);
    v5 = sub_22DF63C34();
    v6 = *(v5 - 8);
    v32 = *(v6 + 56);
    v31 = (v6 + 48);
    v30 = (v6 + 8);

    v7 = 32;
    v33 = v5;
    v35 = v3;
    while (1)
    {
      v36 = v4;
      v11 = *(v0 + 128);
      v10 = *(v0 + 136);
      v12 = *(v0 + 112);
      v13 = *(v0 + 120);
      v14 = *(v0 + 104);
      v37 = *(v3 + v7);
      v32(v10, 1, 1, v5);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v16 = (v15 + 16);
      *(v15 + 24) = 0;
      *(v15 + 32) = v37;
      *(v15 + 48) = v12;
      *(v15 + 56) = v14;
      *(v15 + 64) = v13;
      sub_22DF28F90(v10, v11);
      LODWORD(v11) = (*v31)(v11, 1, v5);
      swift_unknownObjectRetain_n();

      v17 = *(v0 + 128);
      if (v11 == 1)
      {
        sub_22DEF1364(*(v0 + 128), &qword_27DA47460, &qword_22DF65310);
        if (*v16)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_22DF63C24();
        (*v30)(v17, v5);
        if (*v16)
        {
LABEL_9:
          v20 = *(v15 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v18 = sub_22DF63BE4();
          v19 = v21;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v18 = 0;
      v19 = 0;
LABEL_10:
      v22 = swift_allocObject();
      *(v22 + 16) = &unk_22DF68278;
      *(v22 + 24) = v15;

      if (v19 | v18)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v19;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 136);
      *(v0 + 72) = 1;
      *(v0 + 80) = v8;
      *(v0 + 88) = v34;
      swift_task_create();

      swift_unknownObjectRelease();

      sub_22DEF1364(v9, &qword_27DA47460, &qword_22DF65310);
      v7 += 16;
      v3 = v35;
      v4 = v36 - 1;
      v5 = v33;
      if (v36 == 1)
      {

        break;
      }
    }
  }

  v23 = *(v0 + 104);
  v24 = sub_22DF293CC(&qword_27DA479E0, v2, type metadata accessor for BackendGroup);
  v25 = *(MEMORY[0x277D85698] + 4);
  v26 = swift_task_alloc();
  *(v0 + 144) = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA479F8, &qword_22DF68288);
  *v26 = v0;
  v26[1] = sub_22DF27F88;
  v28 = *(v0 + 96);

  return MEMORY[0x2822002C8](v23, v24, v27);
}

uint64_t sub_22DF27F88()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22DF280B4(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22DEEFBD4;

  return sub_22DF27AF4(v8, a2, v5, v6, v7);
}

unint64_t sub_22DF28164()
{
  result = qword_27DA479E8;
  if (!qword_27DA479E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA479E8);
  }

  return result;
}

uint64_t sub_22DF281B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a5;
  v7[17] = a7;
  v7[15] = a4;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A00, &qword_22DF68290) - 8) + 64) + 15;
  v7[18] = swift_task_alloc();
  v11 = sub_22DF630C4();
  v7[19] = v11;
  v12 = *(v11 - 8);
  v7[20] = v12;
  v13 = *(v12 + 64) + 15;
  v7[21] = swift_task_alloc();
  v14 = sub_22DF636C4();
  v7[22] = v14;
  v15 = *(v14 - 8);
  v7[23] = v15;
  v16 = *(v15 + 64) + 15;
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A08, &qword_22DF68298) - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v18 = sub_22DF636D4();
  v7[27] = v18;
  v19 = *(v18 - 8);
  v7[28] = v19;
  v20 = *(v19 + 64) + 15;
  v7[29] = swift_task_alloc();
  ObjectType = swift_getObjectType();
  v22 = *(a5 + 8);
  v26 = (v22 + *v22);
  v23 = v22[1];
  v24 = swift_task_alloc();
  v7[30] = v24;
  *v24 = v7;
  v24[1] = sub_22DF28488;

  return v26(a6, ObjectType, a5);
}

uint64_t sub_22DF28488()
{
  v2 = *(*v1 + 240);
  v3 = *v1;
  v3[31] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22DF287A0, 0, 0);
  }

  else
  {
    v4 = v3[29];
    v6 = v3[25];
    v5 = v3[26];
    v7 = v3[24];
    v8 = v3[21];
    v9 = v3[18];

    v10 = v3[1];

    return v10();
  }
}

uint64_t sub_22DF28614()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  swift_beginAccess();
  swift_unknownObjectRetain();
  v4 = sub_22DF290CC(v2 + 112, v3);
  v5 = swift_unknownObjectRelease();
  v7 = *(*(v2 + 112) + 16);
  if (v7 < v4)
  {
    __break(1u);
  }

  else
  {
    sub_22DF2930C(v4, v7);
    swift_endAccess();
    v5 = sub_22DF286F0;
    v7 = 0;
    v6 = 0;
  }

  return MEMORY[0x2822009F8](v5, v7, v6);
}

uint64_t sub_22DF286F0()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *(v0 + 192);
  v5 = *(v0 + 168);
  v6 = *(v0 + 144);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22DF287A0()
{
  v59 = v0;
  v1 = *(v0 + 248);
  *(v0 + 80) = v1;
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CC0, &qword_22DF661F0);
  v6 = swift_dynamicCast();
  v7 = *(v3 + 56);
  if (v6)
  {
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v11 = *(v0 + 144);
    v10 = *(v0 + 152);
    v7(v11, 0, 1, v10);
    (*(v9 + 32))(v8, v11, v10);
    LOBYTE(v11) = sub_22DF63074();
    (*(v9 + 8))(v8, v10);
    if (v11)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12 = *(v0 + 144);
    v7(v12, 1, 1, *(v0 + 152));
    sub_22DEF1364(v12, &qword_27DA47A00, &qword_22DF68290);
  }

  v13 = *(v0 + 248);
  v14 = *(v0 + 216);
  v15 = *(v0 + 224);
  v16 = *(v0 + 208);
  *(v0 + 88) = v13;
  v17 = v13;
  v18 = swift_dynamicCast();
  v19 = *(v15 + 56);
  if (v18)
  {
    v21 = *(v0 + 224);
    v20 = *(v0 + 232);
    v22 = *(v0 + 208);
    v23 = *(v0 + 216);
    v24 = *(v0 + 192);
    v56 = *(v0 + 200);
    v26 = *(v0 + 176);
    v25 = *(v0 + 184);
    v19(v22, 0, 1, v23);
    (*(v21 + 32))(v20, v22, v23);
    sub_22DF293CC(&qword_27DA47A10, 255, MEMORY[0x277CC9AE8]);
    sub_22DF63324();
    sub_22DF636B4();
    sub_22DF293CC(&qword_27DA47A18, 255, MEMORY[0x277CC9AC8]);
    sub_22DF63B54();
    sub_22DF63B54();
    v27 = *(v25 + 8);
    v27(v24, v26);
    v27(v56, v26);
    (*(v21 + 8))(v20, v23);
    if (*(v0 + 104) == *(v0 + 112))
    {
LABEL_7:

      v28 = *(v0 + 232);
      v29 = *(v0 + 200);
      v30 = *(v0 + 208);
      v31 = *(v0 + 192);
      v32 = *(v0 + 168);
      v33 = *(v0 + 144);

      v34 = *(v0 + 8);

      return v34();
    }
  }

  else
  {
    v36 = *(v0 + 208);
    v19(v36, 1, 1, *(v0 + 216));
    sub_22DEF1364(v36, &qword_27DA47A08, &qword_22DF68298);
  }

  if (qword_27DA4C1D0 != -1)
  {
    swift_once();
  }

  v37 = *(v0 + 248);
  v38 = *(v0 + 120);
  v39 = sub_22DF63734();
  __swift_project_value_buffer(v39, qword_27DA4C1D8);
  v40 = v37;
  swift_unknownObjectRetain();
  v41 = sub_22DF63714();
  v42 = sub_22DF63D04();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = *(v0 + 248);
    v57 = *(v0 + 120);
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v58 = v45;
    *v44 = 136446466;
    *(v0 + 64) = v57;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47988, &qword_22DF67EE8);
    v46 = sub_22DF63A14();
    v48 = sub_22DEF0354(v46, v47, &v58);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2082;
    swift_getErrorValue();
    v50 = *(v0 + 40);
    v49 = *(v0 + 48);
    v51 = *(v0 + 56);
    v52 = sub_22DF64244();
    v54 = sub_22DEF0354(v52, v53, &v58);

    *(v44 + 14) = v54;
    _os_log_impl(&dword_22DEEA000, v41, v42, "disabling backend '%{public}s' which returned error: %{public}s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DDBE0](v45, -1, -1);
    MEMORY[0x2318DDBE0](v44, -1, -1);
  }

  v55 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_22DF28614, v55, 0);
}

uint64_t sub_22DF28D24()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_22DF28D60()
{
  result = qword_27DA479F0;
  if (!qword_27DA479F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA479F0);
  }

  return result;
}

uint64_t sub_22DF28DB4(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22DEEFBD4;

  return v8(a1);
}

uint64_t sub_22DF28EE4()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22DEF1598;

  return sub_22DF281B8(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_22DF28F90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47460, &qword_22DF65310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DF29000(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22DEEFBD4;

  return sub_22DEF0164(a1, v5);
}

uint64_t sub_22DF290CC(uint64_t result, uint64_t a2)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = result;
  v7 = 0;
  for (i = 4; v3[i] != a2; i += 2)
  {
    if (v4 == ++v7)
    {
      return *(*result + 16);
    }
  }

  if (v2)
  {
    return v7;
  }

  v9 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    if (v9 == v4)
    {
      return v7;
    }

    v10 = i * 8 + 16;
    while (v9 < v4)
    {
      v11 = *(v3 + v10);
      if (*(v3 + v10) != a2)
      {
        if (v9 != v7)
        {
          if (v7 >= v4)
          {
            goto LABEL_23;
          }

          v16 = *(v3 + v10);
          v15 = *&v3[2 * v7 + 4];
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_22DF290B8(v3);
          }

          v12 = &v3[2 * v7];
          v13 = v12[4];
          *(v12 + 2) = v16;
          result = swift_unknownObjectRelease();
          if (v9 >= v3[2])
          {
            goto LABEL_24;
          }

          v14 = *(v3 + v10);
          *(v3 + v10) = v15;
          result = swift_unknownObjectRelease();
          *v6 = v3;
        }

        ++v7;
      }

      ++v9;
      v4 = v3[2];
      v10 += 16;
      if (v9 == v4)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_22DF2923C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47988, &qword_22DF67EE8);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_22DF2930C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_22DF22F24(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_22DF2923C(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_22DF293CC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22DF29414()
{
  if (*v0)
  {
    result = 0x727574616E676973;
  }

  else
  {
    result = 6775138;
  }

  *v0;
  return result;
}

uint64_t sub_22DF2944C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6775138 && a2 == 0xE300000000000000;
  if (v5 || (sub_22DF64184() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22DF64184();

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

uint64_t sub_22DF29530(uint64_t a1)
{
  v2 = sub_22DF29B14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DF2956C(uint64_t a1)
{
  v2 = sub_22DF29B14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22DF295A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22DF29930(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_22DF295D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22DF63314();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_22DF63304();
  sub_22DF29750();
  sub_22DF632F4();
  if (!v2 && ((a2 = sub_22DF63474(), v8 = v7, v9 = sub_22DF63474(), v11 = v10, , , v8 >> 60 == 15) || v11 >> 60 == 15))
  {
    sub_22DF13B98();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();

    sub_22DEF7A20(v9, v11);
    sub_22DEF7A20(a2, v8);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_22DF29750()
{
  result = qword_27DA4C3F0[0];
  if (!qword_27DA4C3F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4C3F0);
  }

  return result;
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

uint64_t sub_22DF297E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
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

uint64_t sub_22DF29838(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_22DF29898(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22DF298E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22DF29930(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A20, &qword_22DF68420);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DF29B14();
  sub_22DF64304();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_22DF640C4();
    v11 = 1;
    sub_22DF640C4();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

unint64_t sub_22DF29B14()
{
  result = qword_27DA4C480[0];
  if (!qword_27DA4C480[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4C480);
  }

  return result;
}

unint64_t sub_22DF29B7C()
{
  result = qword_27DA4C590[0];
  if (!qword_27DA4C590[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4C590);
  }

  return result;
}

unint64_t sub_22DF29BD4()
{
  result = qword_27DA4C6A0;
  if (!qword_27DA4C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA4C6A0);
  }

  return result;
}

unint64_t sub_22DF29C2C()
{
  result = qword_27DA4C6A8[0];
  if (!qword_27DA4C6A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4C6A8);
  }

  return result;
}

uint64_t sub_22DF29C80()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4E668);
  __swift_project_value_buffer(v0, qword_27DA4E668);
  return sub_22DF63724();
}

unint64_t sub_22DF29CFC(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_22DF63F24();

    v7 = 0xD00000000000001FLL;
    MEMORY[0x2318DCA20](a1, a2);
    return v7;
  }

  if (a3 == 1)
  {
    v7 = 0;
    sub_22DF63F24();
    MEMORY[0x2318DCA20](0xD000000000000032, 0x800000022DF6ED70);
    v4 = sub_22DF64154();
    MEMORY[0x2318DCA20](v4);

    return v7;
  }

  return 0xD000000000000010;
}

uint64_t sub_22DF29E30()
{
  if (*v0)
  {
    result = 0x727574616E676973;
  }

  else
  {
    result = 1852797802;
  }

  *v0;
  return result;
}

uint64_t sub_22DF29E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1852797802 && a2 == 0xE400000000000000;
  if (v5 || (sub_22DF64184() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22DF64184();

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

uint64_t sub_22DF29F4C(uint64_t a1)
{
  v2 = sub_22DF2A158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DF29F88(uint64_t a1)
{
  v2 = sub_22DF2A158();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22DF29FC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A28, &unk_22DF68540);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DF2A158();
  sub_22DF64334();
  v16 = 0;
  sub_22DF64114();
  if (!v5)
  {
    v15 = 1;
    sub_22DF64114();
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_22DF2A158()
{
  result = qword_27DA4C738[0];
  if (!qword_27DA4C738[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4C738);
  }

  return result;
}

uint64_t sub_22DF2A1AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22DF2DBD4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_22DF2A1FC()
{
  v1 = OBJC_IVAR____TtC19CloudTelemetryTools14StorebagSource_throttlesByName;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_22DF2A244(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19CloudTelemetryTools14StorebagSource_throttlesByName;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_22DF2A2FC(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_22DF2A34C(a1);
  return v5;
}

uint64_t sub_22DF2A34C(uint64_t a1)
{
  v4 = type metadata accessor for StorebagSigningConfiguration();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22DF63444();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - v14;
  type metadata accessor for Throttle();
  sub_22DF1B95C(a1, v15);
  if (v2)
  {
    (*(v9 + 8))(a1, v8);
    type metadata accessor for StorebagSource();
    v16 = *(*v1 + 48);
    v17 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v9 + 32))(v1 + OBJC_IVAR____TtC19CloudTelemetryTools14StorebagSource_throttleCacheURL, v15, v8);
    (*(v9 + 16))(v13, a1, v8);
    sub_22DF23384(v13, v7);
    sub_22DF2DE04(v7, v1 + OBJC_IVAR____TtC19CloudTelemetryTools14StorebagSource_storebagSigningConfiguration);
    v19 = sub_22DF2DE68(MEMORY[0x277D84F90]);
    (*(v9 + 8))(a1, v8);
    *(v1 + OBJC_IVAR____TtC19CloudTelemetryTools14StorebagSource_throttlesByName) = v19;
  }

  return v1;
}

uint64_t sub_22DF2A5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4[44] = a3;
  v4[45] = v3;
  v4[42] = a1;
  v4[43] = a2;
  v5 = sub_22DF63A04();
  v4[46] = v5;
  v6 = *(v5 - 8);
  v4[47] = v6;
  v7 = *(v6 + 64) + 15;
  v4[48] = swift_task_alloc();
  v8 = sub_22DF63124();
  v4[49] = v8;
  v9 = *(v8 - 8);
  v4[50] = v9;
  v10 = *(v9 + 64) + 15;
  v4[51] = swift_task_alloc();
  v11 = sub_22DF63344();
  v4[52] = v11;
  v12 = *(v11 - 8);
  v4[53] = v12;
  v13 = *(v12 + 64) + 15;
  v4[54] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47410, &qword_22DF65B80) - 8) + 64) + 15;
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v15 = sub_22DF63444();
  v4[57] = v15;
  v16 = *(v15 - 8);
  v4[58] = v16;
  v17 = *(v16 + 64) + 15;
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v18 = swift_task_alloc();
  v4[61] = v18;
  *v18 = v4;
  v18[1] = sub_22DF2A86C;
  v19 = *MEMORY[0x277D85DE8];

  return sub_22DF25D10();
}

uint64_t sub_22DF2A86C(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *(*v2 + 488);
  v4 = *v2;
  v4[62] = a1;

  if (v1)
  {
    v6 = v4[59];
    v5 = v4[60];
    v8 = v4[55];
    v7 = v4[56];
    v9 = v4[54];
    v10 = v4[51];
    v11 = v4[48];

    v12 = v4[1];
    v13 = *MEMORY[0x277D85DE8];

    return v12();
  }

  else
  {
    v15 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_22DF2AA50, 0, 0);
  }
}

uint64_t sub_22DF2AA50()
{
  v43 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 496);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v29 = *(v0 + 496);
    }

    if (sub_22DF63E94())
    {
      goto LABEL_3;
    }

LABEL_14:
    v30 = *(v0 + 496);

    v27 = 0x800000022DF6EFE0;
    v28 = 0xD000000000000043;
    goto LABEL_15;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_3:
  v2 = *(**(v0 + 360) + 104);
  v3 = v2();
  if (*(v3 + 16))
  {
    v4 = sub_22DEF08FC(*(v0 + 336), *(v0 + 344));
    if (v5)
    {
      goto LABEL_7;
    }
  }

  v6 = *(v0 + 480);
  v7 = *(v0 + 360);
  v9 = *(v0 + 336);
  v8 = *(v0 + 344);

  type metadata accessor for Throttle();

  sub_22DF63F24();

  MEMORY[0x2318DCA20](v9, v8);
  MEMORY[0x2318DCA20](0x7473696C702ELL, 0xE600000000000000);
  sub_22DF633B4();

  v10 = sub_22DF1B8C8(v6);
  v11 = (*(*v7 + 120))(v0 + 16);
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v13;
  *v13 = 0x8000000000000000;
  sub_22DF2D8E8(v10, v9, v8, isUniquelyReferenced_nonNull_native);

  *v13 = v42;
  v16 = v11(v0 + 16, 0);
  v3 = (v2)(v16);
  if (*(v3 + 16))
  {
    v4 = sub_22DEF08FC(*(v0 + 336), *(v0 + 344));
    if (v17)
    {
LABEL_7:
      v18 = *(*(v3 + 56) + 8 * v4);

      *(v0 + 504) = v18;
      v19 = *(*v18 + 160);

      v41 = (v19 + *v19);
      v20 = v19[1];
      v21 = swift_task_alloc();
      *(v0 + 512) = v21;
      *v21 = v0;
      v21[1] = sub_22DF2AF1C;
      v22 = *MEMORY[0x277D85DE8];
      v23 = v41;

      return v23();
    }
  }

  v24 = *(v0 + 496);
  v26 = *(v0 + 336);
  v25 = *(v0 + 344);

  sub_22DF63F24();

  MEMORY[0x2318DCA20](v26, v25);
  v28 = 0xD00000000000001ELL;
  v27 = 0x800000022DF6EDF0;
LABEL_15:
  sub_22DF2DF6C();
  swift_allocError();
  *v31 = v28;
  *(v31 + 8) = v27;
  *(v31 + 16) = 0;
  swift_willThrow();
  v33 = *(v0 + 472);
  v32 = *(v0 + 480);
  v35 = *(v0 + 440);
  v34 = *(v0 + 448);
  v36 = *(v0 + 432);
  v37 = *(v0 + 408);
  v38 = *(v0 + 384);

  v23 = *(v0 + 8);
  v39 = *MEMORY[0x277D85DE8];

  return v23();
}

uint64_t sub_22DF2AF1C(char a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 512);
  v6 = *v1;
  *(*v1 + 736) = a1;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22DF2B048, 0, 0);
}

uint64_t sub_22DF2B048()
{
  v48 = *MEMORY[0x277D85DE8];
  if (*(v0 + 736))
  {
    v1 = RequestOptions.globalRequestOptions.unsafeMutableAddressor();
    swift_beginAccess();
    v2 = *v1;
    v3 = objc_opt_self();

    v4 = [v3 mainBundle];
    v5 = [v4 bundleIdentifier];

    if (v5)
    {
      v8 = *(v0 + 504);
      v9 = *(v0 + 456);
      v10 = *(v0 + 464);
      v11 = *(v0 + 440);
      v12 = *(v0 + 448);
      sub_22DF639B4();

      v13 = sub_22DF40530(1, 1);
      v46 = sub_22DF5A7E4(v13 & 0x101);
      *(v0 + 520) = v46;

      sub_22DF63414();

      sub_22DF2DFC0(v12, v11);
      v6 = (*(v10 + 48))(v11, 1, v9);
      if (v6 != 1)
      {
        v14 = *(v0 + 464);
        v15 = *(v0 + 472);
        v47 = *(v0 + 456);
        v17 = *(v0 + 432);
        v16 = *(v0 + 440);
        v19 = *(v0 + 416);
        v18 = *(v0 + 424);
        v21 = *(v0 + 336);
        v20 = *(v0 + 344);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA476A8, &qword_22DF663F0);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_22DF65910;
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        v24 = 0x800000022DF6EFC0;
        v25 = 0x67616265726F7473;
        if (has_internal_diagnostics)
        {
          v25 = 0xD000000000000011;
        }

        else
        {
          v24 = 0xE800000000000000;
        }

        *(v22 + 32) = v25;
        *(v22 + 40) = v24;
        *(v22 + 48) = v21;
        *(v22 + 56) = v20;
        (*(v18 + 104))(v17, *MEMORY[0x277CC91D0], v19);
        sub_22DF06E10();

        sub_22DF63424();

        (*(v18 + 8))(v17, v19);
        v26 = *(v14 + 8);
        *(v0 + 528) = v26;
        *(v0 + 536) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v26(v16, v47);
        v6 = [objc_opt_self() sharedManager];
        *(v0 + 544) = v6;
        if (v6)
        {
          v27 = *(v0 + 408);
          (*(*(v0 + 464) + 16))(*(v0 + 480), *(v0 + 472), *(v0 + 456));
          sub_22DF630E4();
          v28 = *(MEMORY[0x277CF3698] + 4);
          v29 = swift_task_alloc();
          *(v0 + 552) = v29;
          *v29 = v0;
          v29[1] = sub_22DF2B540;
          v30 = *MEMORY[0x277D85DE8];
          v6 = *(v0 + 408);
          v7 = v46;

          return MEMORY[0x2821463B8](v6, v7);
        }

LABEL_16:
        __break(1u);
        return MEMORY[0x2821463B8](v6, v7);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  v32 = *(v0 + 496);
  v31 = *(v0 + 504);
  v34 = *(v0 + 336);
  v33 = *(v0 + 344);

  sub_22DF63F24();

  MEMORY[0x2318DCA20](v34, v33);
  sub_22DF2DF6C();
  swift_allocError();
  *v35 = 0xD00000000000001DLL;
  *(v35 + 8) = 0x800000022DF6EE10;
  *(v35 + 16) = 0;
  swift_willThrow();

  v37 = *(v0 + 472);
  v36 = *(v0 + 480);
  v39 = *(v0 + 440);
  v38 = *(v0 + 448);
  v40 = *(v0 + 432);
  v41 = *(v0 + 408);
  v42 = *(v0 + 384);

  v43 = *(v0 + 8);
  v44 = *MEMORY[0x277D85DE8];

  return v43();
}

uint64_t sub_22DF2B540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 552);
  v8 = *v4;
  v6[70] = a1;
  v6[71] = a2;
  v6[72] = a3;
  v6[73] = v3;

  v9 = v5[68];
  if (v3)
  {
    v10 = v6[62];
    (*(v6[50] + 8))(v6[51], v6[49]);

    v11 = sub_22DF2D11C;
  }

  else
  {
    (*(v6[50] + 8))(v6[51], v6[49]);

    v11 = sub_22DF2B6FC;
  }

  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_22DF2B6FC()
{
  v226 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 576);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 576);
    v5 = [v3 statusCode];
    v6 = *(v0 + 576);
    if (v5 <= 199)
    {
      v7 = *(v0 + 496);

LABEL_10:

      v45 = *(v0 + 576);
      v46 = *(v0 + 568);
      v47 = *(v0 + 560);
      v48 = *(v0 + 528);
      v49 = *(v0 + 520);
      v50 = *(v0 + 472);
      v51 = *(v0 + 448);
      v52 = *(v0 + 456);
      v219 = v51;
      v225 = *(v0 + 536);
      v53 = [v3 statusCode];
      sub_22DF2DF6C();
      v23 = swift_allocError();
      *v54 = v53;
      *(v54 + 8) = 0;
      *(v54 + 16) = 1;
      swift_willThrow();

      v22 = v0;
      sub_22DEF7A34(v47, v46);

      v48(v50, v52);
      v25 = v219;
      goto LABEL_14;
    }

    v8 = [v3 statusCode];

    if (v8 >= 300)
    {
      v44 = *(v0 + 496);
      goto LABEL_10;
    }
  }

  v9 = *(v0 + 584);
  v10 = *(v0 + 568);
  v11 = *(v0 + 560);
  v12 = sub_22DF63154();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_22DF63144();
  sub_22DF2E030();
  sub_22DF63134();
  if (v9)
  {
    v15 = *(v0 + 568);
    v16 = *(v0 + 560);
    v216 = *(v0 + 528);
    v222 = *(v0 + 536);
    v17 = *(v0 + 520);
    v18 = *(v0 + 496);
    v204 = *(v0 + 472);
    v210 = *(v0 + 576);
    v19 = *(v0 + 456);
    v213 = *(v0 + 448);
    v20 = *(v0 + 336);
    v21 = *(v0 + 344);

    sub_22DF63F24();
    v22 = v0;
    MEMORY[0x2318DCA20](0xD000000000000019, 0x800000022DF6EE80);
    MEMORY[0x2318DCA20](v20, v21);
    MEMORY[0x2318DCA20](0xD000000000000020, 0x800000022DF6EEA0);
    sub_22DF2DF6C();
    v23 = swift_allocError();
    *v24 = 0;
    *(v24 + 8) = 0xE000000000000000;
    *(v24 + 16) = 0;
    swift_willThrow();
    sub_22DEF7A34(v16, v15);

    v216(v204, v19);
    v25 = v213;
    goto LABEL_14;
  }

  v26 = *(v0 + 48);
  v27 = *(v0 + 56);
  v28 = *(v0 + 64);
  v29 = *(v0 + 72);
  v30 = sub_22DF63474();
  v32 = v31;
  v217 = v30;
  *(v0 + 592) = v30;
  *(v0 + 600) = v31;
  v33 = sub_22DF63474();
  v35 = v34;

  *(v0 + 608) = v33;
  *(v0 + 616) = v35;
  v223 = v32;
  if (v32 >> 60 == 15)
  {
    v36 = *(v0 + 568);
    v37 = *(v0 + 560);
    v218 = *(v0 + 528);
    v224 = *(v0 + 536);
    v38 = v35;
    v39 = *(v0 + 520);
    v40 = *(v0 + 496);
    v193 = *(v0 + 472);
    v199 = *(v0 + 576);
    v188 = *(v0 + 456);
    v205 = *(v0 + 448);
    v42 = *(v0 + 336);
    v41 = *(v0 + 344);

    sub_22DF63F24();
    v22 = v0;
    MEMORY[0x2318DCA20](0xD000000000000019, 0x800000022DF6EE80);
    MEMORY[0x2318DCA20](v42, v41);
    MEMORY[0x2318DCA20](0xD00000000000001CLL, 0x800000022DF6EED0);
    sub_22DF2DF6C();
    v23 = swift_allocError();
    *v43 = 0;
    *(v43 + 8) = 0xE000000000000000;
    *(v43 + 16) = 0;
    swift_willThrow();
    sub_22DEF7A34(v37, v36);

    sub_22DEF7A20(v33, v38);
    v218(v193, v188);
LABEL_13:
    v25 = v205;
    goto LABEL_14;
  }

  if (v35 >> 60 == 15)
  {
    v55 = *(v0 + 568);
    v56 = *(v0 + 560);
    v211 = *(v0 + 528);
    v214 = *(v0 + 536);
    v57 = *(v0 + 520);
    v58 = *(v0 + 496);
    v59 = *(v0 + 472);
    v60 = *(v0 + 456);
    v200 = *(v0 + 576);
    v205 = *(v0 + 448);
    v62 = *(v0 + 336);
    v61 = *(v0 + 344);

    sub_22DF63F24();
    v22 = v0;
    MEMORY[0x2318DCA20](0xD000000000000019, 0x800000022DF6EE80);
    MEMORY[0x2318DCA20](v62, v61);
    MEMORY[0x2318DCA20](0xD000000000000027, 0x800000022DF6EEF0);
    sub_22DF2DF6C();
    v23 = swift_allocError();
    *v63 = 0;
    *(v63 + 8) = 0xE000000000000000;
    *(v63 + 16) = 0;
    swift_willThrow();
    sub_22DEF7A34(v56, v55);

    sub_22DEF7A20(v217, v223);
    v211(v59, v60);
    goto LABEL_13;
  }

  v70 = *(v0 + 496);
  v212 = v35;
  v215 = v33;
  v206 = v70 & 0xFFFFFFFFFFFFFF8;
  if (v70 >> 62)
  {
    v71 = sub_22DF63E94();
    v70 = *(v0 + 496);
  }

  else
  {
    v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v72 = 0;
  v73 = v70 & 0xC000000000000001;
  v74 = v70 + 32;
  v75 = *MEMORY[0x277CDC3B8];
  do
  {
    if (v71 == v72)
    {
      v81 = *(v0 + 576);
      v82 = *(v0 + 568);
      v83 = *(v0 + 560);
      v201 = *(v0 + 528);
      v207 = *(v0 + 536);
      v84 = *(v0 + 520);
      v85 = *(v0 + 496);
      v86 = *(v0 + 456);
      v189 = *(v0 + 472);
      v194 = *(v0 + 448);
      v88 = *(v0 + 336);
      v87 = *(v0 + 344);

      sub_22DF63F24();
      v22 = v0;
      MEMORY[0x2318DCA20](0xD000000000000019, 0x800000022DF6EE80);
      MEMORY[0x2318DCA20](v88, v87);
      MEMORY[0x2318DCA20](0xD00000000000001CLL, 0x800000022DF6EFA0);
      sub_22DF2DF6C();
      v23 = swift_allocError();
      *v89 = 0;
      *(v89 + 8) = 0xE000000000000000;
      *(v89 + 16) = 0;
      swift_willThrow();
      sub_22DEF7A34(v83, v82);

      sub_22DEF7A20(v215, v212);
      sub_22DEF7A20(v217, v223);

      v201(v189, v86);
      v25 = v194;
      goto LABEL_14;
    }

    if (v73)
    {
      v76 = MEMORY[0x2318DCED0](v72, *(v0 + 496));
    }

    else
    {
      if (v72 >= *(v206 + 16))
      {
        goto LABEL_46;
      }

      v76 = *(v74 + 8 * v72);
    }

    v77 = v76;
    if (__OFADD__(v72, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      v168 = **(v0 + 504);
      v221 = (*(v168 + 152) + **(v168 + 152));
      v169 = *(*(v168 + 152) + 4);
      v170 = swift_task_alloc();
      *(v0 + 712) = v170;
      *v170 = v0;
      v170[1] = sub_22DF2CAF8;
      v171 = *(v0 + 504);
      v172 = *MEMORY[0x277D85DE8];
      v69 = v221;

      return v69();
    }

    v78 = sub_22DF634A4();
    v79 = sub_22DF634A4();
    v80 = SecKeyVerifySignature(v77, v75, v78, v79, 0);

    ++v72;
  }

  while (!v80);
  v90 = *(v0 + 496);

  v91 = objc_opt_self();
  v92 = sub_22DF634A4();
  v93 = [v91 gzipDecode_];

  if (!v93)
  {
    v122 = *(v0 + 568);
    v123 = *(v0 + 560);
    v191 = *(v0 + 576);
    v195 = *(v0 + 528);
    v124 = *(v0 + 520);
    v183 = *(v0 + 456);
    v186 = *(v0 + 472);
    v203 = *(v0 + 448);
    v209 = *(v0 + 536);
    v126 = *(v0 + 336);
    v125 = *(v0 + 344);
    sub_22DF63F24();
    v22 = v0;
    MEMORY[0x2318DCA20](0xD000000000000019, 0x800000022DF6EE80);
    MEMORY[0x2318DCA20](v126, v125);
    MEMORY[0x2318DCA20](0xD00000000000001CLL, 0x800000022DF6EF20);
    sub_22DF2DF6C();
    v23 = swift_allocError();
    *v127 = 0;
    *(v127 + 8) = 0xE000000000000000;
    *(v127 + 16) = 0;
    swift_willThrow();
    sub_22DEF7A34(v123, v122);

    sub_22DEF7A20(v215, v212);
    sub_22DEF7A20(v217, v223);

    v195(v186, v183);
    v25 = v203;
    goto LABEL_14;
  }

  v94 = sub_22DF634C4();
  v96 = v95;

  *(v0 + 624) = v94;
  *(v0 + 632) = v96;
  v97 = objc_opt_self();
  v98 = sub_22DF634A4();
  *(v0 + 296) = 0;
  v99 = [v97 JSONObjectWithData:v98 options:0 error:v0 + 296];

  v100 = *(v0 + 296);
  v202 = v94;
  v208 = v96;
  if (!v99)
  {
    v128 = v100;
    v129 = sub_22DF63334();

    swift_willThrow();
    goto LABEL_38;
  }

  v101 = v100;
  sub_22DF63E44();
  swift_unknownObjectRelease();
  sub_22DF2E084();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_38:
    v130 = *(v0 + 568);
    v131 = *(v0 + 560);
    v184 = *(v0 + 576);
    v187 = *(v0 + 528);
    v132 = *(v0 + 520);
    v178 = *(v0 + 456);
    v180 = *(v0 + 472);
    v192 = *(v0 + 448);
    v196 = *(v0 + 536);
    v134 = *(v0 + 336);
    v133 = *(v0 + 344);
    sub_22DF63F24();

    v22 = v0;
    MEMORY[0x2318DCA20](v134, v133);
    MEMORY[0x2318DCA20](0xD000000000000016, 0x800000022DF6EF40);
    sub_22DF2DF6C();
    v23 = swift_allocError();
    *v135 = 0xD000000000000019;
    *(v135 + 8) = 0x800000022DF6EE80;
    *(v135 + 16) = 0;
    swift_willThrow();
    sub_22DEF7A34(v131, v130);

    sub_22DEF7A20(v215, v212);
    sub_22DEF7A20(v217, v223);
    sub_22DEF7A34(v94, v96);
LABEL_39:

    v187(v180, v178);
    v25 = v192;
    goto LABEL_14;
  }

  v102 = *(v0 + 304);
  *(v0 + 640) = v102;
  v103 = objc_opt_self();
  *(v0 + 312) = 0;
  v104 = v102;
  v105 = [v103 dataWithPropertyList:v104 format:100 options:0 error:v0 + 312];
  v106 = *(v0 + 312);
  if (!v105)
  {
    v136 = v106;
    v137 = *(v0 + 568);
    v138 = *(v0 + 560);
    v184 = *(v0 + 576);
    v187 = *(v0 + 528);
    v180 = *(v0 + 472);
    v176 = *(v0 + 520);
    v178 = *(v0 + 456);
    v192 = *(v0 + 448);
    v197 = *(v0 + 536);
    v140 = *(v0 + 336);
    v139 = *(v0 + 344);
    v141 = sub_22DF63334();

    swift_willThrow();
    sub_22DF63F24();
    MEMORY[0x2318DCA20](0xD000000000000019, 0x800000022DF6EE80);
    MEMORY[0x2318DCA20](v140, v139);
    MEMORY[0x2318DCA20](0xD00000000000001ELL, 0x800000022DF6EF60);
    sub_22DF2DF6C();
    v23 = swift_allocError();
    *v142 = 0;
    *(v142 + 8) = 0xE000000000000000;
    *(v142 + 16) = 0;
    swift_willThrow();
    v143 = v138;
    v22 = v0;
    sub_22DEF7A34(v143, v137);

    sub_22DEF7A20(v215, v212);
    sub_22DEF7A20(v217, v223);
    sub_22DEF7A34(v202, v208);

    goto LABEL_39;
  }

  v190 = v104;
  v107 = *(v0 + 376);
  v108 = *(v0 + 384);
  v109 = *(v0 + 368);
  v110 = sub_22DF634C4();
  v112 = v111;

  *(v0 + 648) = v110;
  *(v0 + 656) = v112;
  v182 = v110;
  v185 = v112;
  v113 = sub_22DF634B4();
  v114 = MEMORY[0x277D837D0];
  *(v0 + 136) = MEMORY[0x277D837D0];
  *(v0 + 112) = v113;
  *(v0 + 120) = v115;
  sub_22DEFFBF0((v0 + 112), (v0 + 144));
  v116 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22DF1CCA0((v0 + 144), 6775138, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
  *(v0 + 320) = v116;
  sub_22DF639F4();
  v118 = sub_22DF639C4();
  v120 = v119;
  (*(v107 + 8))(v108, v109);
  if (v120 >> 60 == 15)
  {
    sub_22DF2D3EC(0x727574616E676973, 0xE900000000000065, (v0 + 208));
    sub_22DEF1364(v0 + 208, &qword_27DA47A48, qword_22DF68550);
    v121 = *(v0 + 320);
  }

  else
  {
    v144 = sub_22DF634B4();
    v146 = v145;
    sub_22DEF7A20(v118, v120);
    *(v0 + 200) = v114;
    *(v0 + 176) = v144;
    *(v0 + 184) = v146;
    sub_22DEFFBF0((v0 + 176), (v0 + 240));
    v147 = *(v0 + 320);
    v148 = swift_isUniquelyReferenced_nonNull_native();
    sub_22DF1CCA0((v0 + 240), 0x727574616E676973, 0xE900000000000065, v148);
    *(v0 + 320) = v147;
  }

  v149 = sub_22DF638C4();

  *(v0 + 328) = 0;
  v150 = [v103 dataWithPropertyList:v149 format:100 options:0 error:v0 + 328];

  v151 = *(v0 + 328);
  if (v150)
  {
    v152 = sub_22DF634C4();
    v154 = v153;

    *(v0 + 664) = v152;
    *(v0 + 672) = v154;
    *(v0 + 680) = sub_22DF295D8(v152, v154);
    *(v0 + 688) = v155;
    *(v0 + 696) = v156;
    *(v0 + 704) = v157;
    v167 = *(v0 + 352);
    sub_22DF297A4();
    goto LABEL_47;
  }

  v158 = *(v0 + 568);
  v159 = *(v0 + 560);
  v198 = *(v0 + 536);
  v177 = *(v0 + 576);
  v179 = *(v0 + 528);
  v160 = *(v0 + 520);
  v174 = *(v0 + 456);
  v175 = *(v0 + 472);
  v181 = *(v0 + 448);
  v162 = *(v0 + 336);
  v161 = *(v0 + 344);
  v163 = v151;
  v164 = sub_22DF63334();

  swift_willThrow();
  sub_22DF63F24();
  MEMORY[0x2318DCA20](0xD000000000000019, 0x800000022DF6EE80);
  MEMORY[0x2318DCA20](v162, v161);
  MEMORY[0x2318DCA20](0xD00000000000001ELL, 0x800000022DF6EF80);
  sub_22DF2DF6C();
  v23 = swift_allocError();
  *v165 = 0;
  *(v165 + 8) = 0xE000000000000000;
  *(v165 + 16) = 0;
  swift_willThrow();
  v166 = v159;
  v22 = v0;
  sub_22DEF7A34(v166, v158);

  sub_22DEF7A20(v215, v212);
  sub_22DEF7A20(v217, v223);
  sub_22DEF7A34(v202, v208);
  sub_22DEF7A34(v182, v185);

  v179(v175, v174);
  v25 = v181;
LABEL_14:
  sub_22DEF1364(v25, &qword_27DA47410, &qword_22DF65B80);
  *(v22 + 720) = v23;
  v64 = **(v22 + 504);
  v220 = (*(v64 + 168) + **(v64 + 168));
  v65 = *(*(v64 + 168) + 4);
  v66 = swift_task_alloc();
  *(v22 + 728) = v66;
  *v66 = v22;
  v66[1] = sub_22DF2CEF8;
  v67 = *(v22 + 504);
  v68 = *MEMORY[0x277D85DE8];
  v69 = v220;

  return v69();
}

uint64_t sub_22DF2CAF8()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 712);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22DF2CC20, 0, 0);
}

uint64_t sub_22DF2CC20()
{
  v39 = *MEMORY[0x277D85DE8];
  if (qword_27DA4C730 != -1)
  {
    swift_once();
  }

  v1 = sub_22DF63734();
  __swift_project_value_buffer(v1, qword_27DA4E668);
  v2 = sub_22DF63714();
  v3 = sub_22DF63D24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22DEEA000, v2, v3, "sucessfully fetched storebag from server", v4, 2u);
    MEMORY[0x2318DDBE0](v4, -1, -1);
  }

  v20 = v0[86];
  v21 = v0[87];
  v23 = v0[88];
  v24 = v0[84];
  v22 = v0[83];
  v26 = v2;
  v27 = v0[82];
  v25 = v0[81];
  v5 = v0[80];
  v18 = v0[79];
  v19 = v0[85];
  v6 = v0[78];
  v7 = v0[77];
  v8 = v0[76];
  v9 = v0[75];
  v10 = v0[74];
  v11 = v0[71];
  v12 = v0[70];
  v33 = v0[67];
  v31 = v0[72];
  v32 = v0[66];
  v13 = v0[65];
  v14 = v0[63];
  v34 = v0[60];
  v28 = v0[59];
  v29 = v0[57];
  v30 = v0[56];
  v35 = v0[55];
  v36 = v0[54];
  v37 = v0[51];
  v38 = v0[48];

  sub_22DEF7A34(v12, v11);

  sub_22DEF7A20(v8, v7);
  sub_22DEF7A20(v10, v9);
  sub_22DEF7A34(v6, v18);
  sub_22DEF7A34(v19, v20);
  sub_22DEF7A34(v21, v23);
  sub_22DEF7A34(v22, v24);
  sub_22DEF7A34(v25, v27);

  v32(v28, v29);
  sub_22DEF1364(v30, &qword_27DA47410, &qword_22DF65B80);

  v15 = v0[1];
  v16 = *MEMORY[0x277D85DE8];

  return v15();
}

uint64_t sub_22DF2CEF8()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 728);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22DF2D020, 0, 0);
}

uint64_t sub_22DF2D020()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = v0[90];
  v2 = v0[63];
  swift_willThrow();

  v3 = v0[90];
  v5 = v0[59];
  v4 = v0[60];
  v7 = v0[55];
  v6 = v0[56];
  v8 = v0[54];
  v9 = v0[51];
  v10 = v0[48];

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_22DF2D11C()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 472);
  v5 = *(v0 + 448);
  v4 = *(v0 + 456);

  v2(v3, v4);
  sub_22DEF1364(v5, &qword_27DA47410, &qword_22DF65B80);
  *(v0 + 720) = *(v0 + 584);
  v6 = **(v0 + 504);
  v12 = (*(v6 + 168) + **(v6 + 168));
  v7 = *(*(v6 + 168) + 4);
  v8 = swift_task_alloc();
  *(v0 + 728) = v8;
  *v8 = v0;
  v8[1] = sub_22DF2CEF8;
  v9 = *(v0 + 504);
  v10 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t StorebagSource.deinit()
{
  v1 = OBJC_IVAR____TtC19CloudTelemetryTools14StorebagSource_throttleCacheURL;
  v2 = sub_22DF63444();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_22DF2E0D0(v0 + OBJC_IVAR____TtC19CloudTelemetryTools14StorebagSource_storebagSigningConfiguration);
  v3 = *(v0 + OBJC_IVAR____TtC19CloudTelemetryTools14StorebagSource_throttlesByName);

  return v0;
}

uint64_t StorebagSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC19CloudTelemetryTools14StorebagSource_throttleCacheURL;
  v2 = sub_22DF63444();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_22DF2E0D0(v0 + OBJC_IVAR____TtC19CloudTelemetryTools14StorebagSource_storebagSigningConfiguration);
  v3 = *(v0 + OBJC_IVAR____TtC19CloudTelemetryTools14StorebagSource_throttlesByName);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

double sub_22DF2D3EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
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
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22DF1CE5C();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_22DEFFBF0((*(v12 + 56) + 32 * v9), a3);
    sub_22DF2D738(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_22DF2D490(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A50, &qword_22DF68810);
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

uint64_t sub_22DF2D738(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22DF63E64() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_22DF642A4();

      sub_22DF63A54();
      v14 = sub_22DF642D4();

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
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
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

uint64_t sub_22DF2D8E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22DEF08FC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22DF2D490(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_22DEF08FC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_22DF64234();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22DF2DA64();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void *sub_22DF2DA64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A50, &qword_22DF68810);
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

uint64_t sub_22DF2DBD4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A58, &qword_22DF68818);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DF2A158();
  sub_22DF64304();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_22DF640C4();
    v11 = 1;
    sub_22DF640C4();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t type metadata accessor for StorebagSource()
{
  result = qword_28150A890;
  if (!qword_28150A890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22DF2DE04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorebagSigningConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22DF2DE68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A50, &qword_22DF68810);
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

unint64_t sub_22DF2DF6C()
{
  result = qword_27DA47A30;
  if (!qword_27DA47A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47A30);
  }

  return result;
}

uint64_t sub_22DF2DFC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47410, &qword_22DF65B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22DF2E030()
{
  result = qword_27DA47A38;
  if (!qword_27DA47A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47A38);
  }

  return result;
}

unint64_t sub_22DF2E084()
{
  result = qword_27DA47A40;
  if (!qword_27DA47A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA47A40);
  }

  return result;
}

uint64_t sub_22DF2E0D0(uint64_t a1)
{
  v2 = type metadata accessor for StorebagSigningConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22DF2E138()
{
  result = sub_22DF63444();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for StorebagSigningConfiguration();
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

uint64_t get_enum_tag_for_layout_string_19CloudTelemetryTools14StorebagSourceC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_22DF2E22C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22DF2E274(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_22DF2E2B8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_22DF2E304()
{
  result = qword_27DA4CA40[0];
  if (!qword_27DA4CA40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4CA40);
  }

  return result;
}

unint64_t sub_22DF2E35C()
{
  result = qword_27DA4CB50;
  if (!qword_27DA4CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA4CB50);
  }

  return result;
}

unint64_t sub_22DF2E3B4()
{
  result = qword_27DA4CB58[0];
  if (!qword_27DA4CB58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4CB58);
  }

  return result;
}

uint64_t Mode.hashValue.getter(unsigned __int8 a1)
{
  sub_22DF642A4();
  MEMORY[0x2318DD240](a1);
  return sub_22DF642D4();
}

uint64_t sub_22DF2E4EC()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4E680);
  __swift_project_value_buffer(v0, qword_27DA4E680);
  return sub_22DF63724();
}

uint64_t sub_22DF2E560()
{
  if (qword_27DA4CBE0 != -1)
  {
    swift_once();
  }

  v0 = sub_22DF63734();

  return __swift_project_value_buffer(v0, qword_27DA4E680);
}

uint64_t sub_22DF2E5C4()
{
  result = os_variant_has_internal_diagnostics();
  byte_27DA4E698 = result;
  return result;
}

char *sub_22DF2E5EC()
{
  if (qword_27DA4CBE8 != -1)
  {
    swift_once();
  }

  return &byte_27DA4E698;
}

void sub_22DF2E63C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_22DF63984();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_27DA4E6A0 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_22DF2E6B4()
{
  if (qword_27DA4CBF0 != -1)
  {
    swift_once();
  }

  return &qword_27DA4E6A0;
}

void sub_22DF2E704()
{
  if (qword_27DA4CBF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27DA4E6A0;
  v1 = sub_22DF63984();
  v2 = [v0 BOOLForKey_];

  byte_27DA4E6A8 = v2;
}

char *sub_22DF2E7D0()
{
  if (qword_27DA4CBF8 != -1)
  {
    swift_once();
  }

  return &byte_27DA4E6A8;
}

void sub_22DF2E820()
{
  if (qword_27DA4CBF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27DA4E6A0;
  v1 = sub_22DF63984();
  v2 = [v0 BOOLForKey_];

  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = qword_27DA4E6A0;
    v5 = sub_22DF63984();
    v6 = [v4 integerForKey_];

    v3 = v6 == 5;
  }

  byte_27DA4E6A9 = v3;
}

char *sub_22DF2E958()
{
  if (qword_27DA4CC00 != -1)
  {
    swift_once();
  }

  return &byte_27DA4E6A9;
}

void sub_22DF2E9A8()
{
  if (qword_27DA4CBE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_27DA4E698 == 1)
  {
    if (qword_27DA4CBF0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v0 = qword_27DA4E6A0;
    v1 = sub_22DF63984();
    v2 = [v0 BOOLForKey_];
  }

  else
  {
    v2 = 0;
  }

  byte_27DA4E6AA = v2;
}

char *sub_22DF2EAD4()
{
  if (qword_27DA4CC08 != -1)
  {
    swift_once();
  }

  return &byte_27DA4E6AA;
}

void sub_22DF2EB3C()
{
  if (!*v0)
  {
    sub_22DF63F24();

    v1 = [objc_opt_self() mainBundle];
    v2 = [v1 bundleIdentifier];

    if (v2)
    {
      v3 = sub_22DF639B4();
      v5 = v4;

      MEMORY[0x2318DCA20](v3, v5);

      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (*v0 == 1)
  {
    sub_22DF63F24();
    MEMORY[0x2318DCA20](0xD000000000000033, 0x800000022DF6F0E0);
    if (*(v0 + 16))
    {
      MEMORY[0x2318DCA20](*(v0 + 8));
LABEL_7:
      MEMORY[0x2318DCA20](47, 0xE100000000000000);
      return;
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

void sub_22DF2ECB8()
{
  if (!*v0)
  {
    sub_22DF63F24();

    v1 = [objc_opt_self() mainBundle];
    v2 = [v1 bundleIdentifier];

    if (v2)
    {
      v3 = sub_22DF639B4();
      v5 = v4;

      MEMORY[0x2318DCA20](v3, v5);

      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (*v0 == 1)
  {
    sub_22DF63F24();
    MEMORY[0x2318DCA20](0xD000000000000031, 0x800000022DF6F180);
    if (*(v0 + 16))
    {
      MEMORY[0x2318DCA20](*(v0 + 8));
LABEL_7:
      MEMORY[0x2318DCA20](47, 0xE100000000000000);
      return;
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

void sub_22DF2EE34(char *a1@<X8>)
{
  v103[6] = *MEMORY[0x277D85DE8];
  v3 = sub_22DF630B4();
  v4 = *(v3 - 8);
  v92 = v3;
  v93 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v91 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v90 = &v83 - v8;
  v95 = sub_22DF630C4();
  v97 = *(v95 - 8);
  v9 = *(v97 + 64);
  v10 = MEMORY[0x28223BE20](v95);
  v88 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v89 = &v83 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v96 = &v83 - v15;
  MEMORY[0x28223BE20](v14);
  v94 = &v83 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47650, &qword_22DF68840);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v83 - v19;
  v21 = sub_22DF63444();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v83 - v27;
  sub_22DEFFC78();
  sub_22DF2ECB8();
  sub_22DF633A4();

  v29 = *(v22 + 8);
  v99 = v22 + 8;
  v100 = v21;
  v98 = v29;
  v29(v28, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47470, &unk_22DF65BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22DF65900;
  v31 = *MEMORY[0x277CBE868];
  *(inited + 32) = *MEMORY[0x277CBE868];
  v32 = v31;
  sub_22DEF9A50(inited);
  swift_setDeallocating();
  sub_22DEF9C44(inited + 32);
  sub_22DF63354();
  if (v1)
  {

    v33 = sub_22DF632E4();
    (*(*(v33 - 8) + 56))(v20, 1, 1, v33);
    sub_22DEF1364(v20, &qword_27DA47650, &qword_22DF68840);
    goto LABEL_5;
  }

  v34 = a1;

  v35 = sub_22DF632E4();
  v36 = *(v35 - 8);
  (*(v36 + 56))(v20, 0, 1, v35);
  v37 = sub_22DF63284();
  (*(v36 + 8))(v20, v35);
  a1 = v34;
  if (v37 == 2 || (v37 & 1) == 0)
  {
LABEL_5:
    if (qword_27DA4CBE0 != -1)
    {
      swift_once();
    }

    v38 = sub_22DF63734();
    __swift_project_value_buffer(v38, qword_27DA4E680);
    v39 = v100;
    (*(v22 + 16))(v26, a1, v100);
    v40 = sub_22DF63714();
    v41 = sub_22DF63CE4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v87 = 0;
      v43 = v42;
      v44 = a1;
      v45 = swift_slowAlloc();
      v103[0] = v45;
      *v43 = 136446210;
      v46 = sub_22DF63404();
      v48 = v47;
      v98(v26, v100);
      v49 = sub_22DEF0354(v46, v48, v103);

      *(v43 + 4) = v49;
      _os_log_impl(&dword_22DEEA000, v40, v41, "creating log directory at %{public}s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      v50 = v45;
      a1 = v44;
      v39 = v100;
      MEMORY[0x2318DDBE0](v50, -1, -1);
      MEMORY[0x2318DDBE0](v43, -1, -1);
    }

    else
    {

      v98(v26, v39);
    }

    v51 = v97;
    v52 = [objc_opt_self() defaultManager];
    v53 = sub_22DF63394();
    v103[0] = 0;
    v54 = [v52 createDirectoryAtURL:v53 withIntermediateDirectories:1 attributes:0 error:v103];

    v55 = v96;
    if (v54)
    {
      v56 = v103[0];
      goto LABEL_23;
    }

    v57 = v103[0];
    v58 = sub_22DF63334();

    swift_willThrow();
    v103[0] = v58;
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CC0, &qword_22DF661F0);
    v60 = v94;
    if (swift_dynamicCast())
    {
      v87 = a1;
      v85 = *(v51 + 16);
      v85(v55, v60, v95);
      v61 = sub_22DF35770(&qword_27DA47348, MEMORY[0x277CC8620]);
      v62 = v90;
      v86 = v61;
      sub_22DF63324();
      v63 = v91;
      sub_22DF630A4();
      sub_22DF35770(&qword_27DA47350, MEMORY[0x277CC8608]);
      v64 = v92;
      sub_22DF63B54();
      sub_22DF63B54();
      v65 = v93 + 8;
      v66 = *(v93 + 8);
      v66(v63, v64);
      v66(v62, v64);
      if (v102 == v101)
      {
        v67 = v96;
        sub_22DF4C068(v96);

        v68 = *(v97 + 8);
        v69 = v67;
        v70 = v95;
        v68(v69, v95);
        v98(v87, v100);
        v68(v94, v70);
LABEL_19:
        v80 = v103[0];
LABEL_22:

        goto LABEL_23;
      }

      v71 = v96;
      v72 = *(v97 + 8);
      v93 = v65;
      v73 = v95;
      v96 = v97 + 8;
      v84 = v72;
      v72(v71, v95);
      v85(v89, v94, v73);
      sub_22DF63324();
      sub_22DF63094();
      sub_22DF63B54();
      sub_22DF63B54();
      v66(v63, v64);
      v66(v62, v64);
      if (v102 == v101)
      {
        v74 = v89;
        sub_22DF4C044(v89);

        v75 = v95;
        v76 = v84;
        v84(v74, v95);
        v98(v87, v100);
        v76(v94, v75);
        goto LABEL_19;
      }

      v77 = v62;
      v78 = v95;
      v84(v89, v95);
      v79 = v88;
      (*(v97 + 32))(v88, v94, v78);
      sub_22DF63324();
      sub_22DF63084();
      sub_22DF63B54();
      sub_22DF63B54();
      v66(v63, v64);
      v66(v77, v64);
      if (v102 == v101)
      {
        sub_22DF4C08C(v79);

        v84(v79, v95);
        v98(v87, v100);
        goto LABEL_19;
      }

      v84(v79, v95);
      a1 = v87;
      v39 = v100;
    }

    v81 = v58;
    sub_22DF4C448(v58);
    v98(a1, v39);

    v80 = v58;
    goto LABEL_22;
  }

LABEL_23:
  v82 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22DF2F9EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47AA8, &qword_22DF68958);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 0;
  qword_27DA4E6B0 = result;
  return result;
}

void sub_22DF2FA30(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v81 = a1;
  v86 = a4;
  v89[10] = *MEMORY[0x277D85DE8];
  v7 = sub_22DF630B4();
  v79 = *(v7 - 8);
  v80 = v7;
  v8 = *(v79 + 8);
  v9 = MEMORY[0x28223BE20](v7);
  v78 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v77 = &v71 - v11;
  v12 = sub_22DF630C4();
  v13 = *(v12 - 8);
  v82 = v12;
  v83 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v76 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v75 = &v71 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v84 = &v71 - v20;
  MEMORY[0x28223BE20](v19);
  v85 = &v71 - v21;
  v22 = sub_22DF632E4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47650, &qword_22DF68840);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v71 - v29;
  if (qword_27DA4CC10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v31 = qword_27DA4E6B0;

  os_unfair_lock_lock((v31 + 20));
  v32 = *(v31 + 16);
  os_unfair_lock_unlock((v31 + 20));

  if (v32 == 1)
  {
    sub_22DF4BE38();
    goto LABEL_22;
  }

  v89[0] = a2;
  v89[1] = a3;

  MEMORY[0x2318DCA20](47, 0xE100000000000000);
  v33 = v86;
  sub_22DF633A4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47470, &unk_22DF65BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22DF65900;
  v35 = *MEMORY[0x277CBE868];
  *(inited + 32) = *MEMORY[0x277CBE868];
  v36 = v35;
  sub_22DEF9A50(inited);
  swift_setDeallocating();
  sub_22DEF9C44(inited + 32);
  sub_22DF63354();
  if (v4)
  {

    (*(v23 + 56))(v30, 1, 1, v22);
    sub_22DEF1364(v30, &qword_27DA47650, &qword_22DF68840);
    goto LABEL_9;
  }

  (*(v23 + 56))(v30, 0, 1, v22);
  v37 = sub_22DF63284();
  (*(v23 + 8))(v30, v22);
  if (v37 == 2 || (v37 & 1) == 0)
  {
LABEL_9:
    v38 = [objc_opt_self() defaultManager];
    v39 = sub_22DF63394();
    v89[0] = 0;
    v40 = [v38 createDirectoryAtURL:v39 withIntermediateDirectories:1 attributes:0 error:v89];

    if (v40)
    {
      v41 = v89[0];
      sub_22DF632D4();
      sub_22DF632A4();
      sub_22DF63384();
      (*(v23 + 8))(v26, v22);
      goto LABEL_22;
    }

    v42 = v89[0];
    v43 = sub_22DF63334();

    swift_willThrow();
    v44 = v84;
    v89[0] = v43;
    v45 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CC0, &qword_22DF661F0);
    v46 = v85;
    v47 = v82;
    if (swift_dynamicCast())
    {
      v81 = 0;
      v73 = *(v83 + 16);
      v73(v44, v46, v47);
      v48 = sub_22DF35770(&qword_27DA47348, MEMORY[0x277CC8620]);
      v49 = v77;
      v74 = v48;
      sub_22DF63324();
      v50 = v78;
      sub_22DF630A4();
      sub_22DF35770(&qword_27DA47350, MEMORY[0x277CC8608]);
      v51 = v80;
      sub_22DF63B54();
      sub_22DF63B54();
      v52 = *(v79 + 1);
      v52(v50, v51);
      v52(v49, v51);
      if (v88 == v87)
      {
        v53 = v84;
        sub_22DF4C068(v84);

        v54 = *(v83 + 8);
        v54(v53, v47);
        v55 = sub_22DF63444();
        (*(*(v55 - 8) + 8))(v86, v55);
        v54(v85, v47);
LABEL_19:
        v67 = v89[0];
LABEL_21:

        goto LABEL_22;
      }

      v56 = v84;
      v57 = *(v83 + 8);
      v84 = v83 + 8;
      v79 = v57;
      v57(v56, v47);
      v72 = v52;
      v58 = v75;
      v73(v75, v85, v47);
      v59 = v58;
      v60 = v72;
      sub_22DF63324();
      sub_22DF63094();
      sub_22DF63B54();
      sub_22DF63B54();
      v60(v50, v51);
      v60(v49, v51);
      if (v88 == v87)
      {
        sub_22DF4C044(v58);

        v61 = v82;
        v62 = v79;
        v79(v59, v82);
        v63 = sub_22DF63444();
        (*(*(v63 - 8) + 8))(v86, v63);
        v62(v85, v61);
        goto LABEL_19;
      }

      v64 = v82;
      v79(v58, v82);
      (*(v83 + 32))(v76, v85, v64);
      sub_22DF63324();
      sub_22DF63084();
      sub_22DF63B54();
      sub_22DF63B54();
      v60(v50, v51);
      v60(v49, v51);
      v33 = v86;
      if (v88 == v87)
      {
        v65 = v76;
        sub_22DF4C08C(v76);

        v79(v65, v82);
        v66 = sub_22DF63444();
        (*(*(v66 - 8) + 8))(v33, v66);
        goto LABEL_19;
      }

      v79(v76, v82);
    }

    v68 = v43;
    sub_22DF4C448(v43);
    v69 = sub_22DF63444();
    (*(*(v69 - 8) + 8))(v33, v69);

    v67 = v43;
    goto LABEL_21;
  }

LABEL_22:
  v70 = *MEMORY[0x277D85DE8];
}

uint64_t Daemon.init(mode:clientBundleID:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  *(v4 + 776) = a4;
  *(v4 + 768) = a3;
  *(v4 + 140) = a2;
  *(v4 + 760) = a1;
  v5 = sub_22DF63444();
  *(v4 + 784) = v5;
  v6 = *(v5 - 8);
  *(v4 + 792) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 800) = swift_task_alloc();
  *(v4 + 808) = swift_task_alloc();
  *(v4 + 816) = swift_task_alloc();
  *(v4 + 824) = swift_task_alloc();
  *(v4 + 832) = swift_task_alloc();
  *(v4 + 840) = swift_task_alloc();
  *(v4 + 848) = swift_task_alloc();
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22DF30690, 0, 0);
}

uint64_t sub_22DF30690()
{
  v85 = v0;
  v84 = *MEMORY[0x277D85DE8];
  if (qword_27DA4CBE0 != -1)
  {
    swift_once();
  }

  v1 = sub_22DF63734();
  *(v0 + 856) = __swift_project_value_buffer(v1, qword_27DA4E680);
  v2 = sub_22DF63714();
  v3 = sub_22DF63D24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22DEEA000, v2, v3, "starting CloudTelemetryService", v4, 2u);
    MEMORY[0x2318DDBE0](v4, -1, -1);
  }

  v5 = *(v0 + 848);
  v6 = *(v0 + 792);
  v7 = *(v0 + 784);

  v8 = objc_opt_self();
  *(v0 + 864) = v8;
  v9 = [v8 defaultManager];
  sub_22DEFFC78();
  sub_22DF633F4();
  v10 = *(v6 + 8);
  *(v0 + 872) = v10;
  *(v0 + 880) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v7);
  v11 = sub_22DF63984();

  LOBYTE(v5) = [v9 fileExistsAtPath_];

  if (v5)
  {
    v12 = *(v0 + 840);
    *(v0 + 80) = *(v0 + 140);
    *(v0 + 88) = *(v0 + 768);
    *(v0 + 104) = 0u;
    *(v0 + 120) = 0u;
    *(v0 + 136) = 0;
    sub_22DF2EE34(v12);
    type metadata accessor for TransparencyLog();
    v34 = swift_task_alloc();
    *(v0 + 888) = v34;
    *v34 = v0;
    v34[1] = sub_22DF31308;
    v35 = *(v0 + 840);
    v36 = *MEMORY[0x277D85DE8];

    return sub_22DEF3F6C(v35);
  }

  v13 = sub_22DF63714();
  v14 = sub_22DF63D14();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 848);
    v79 = *(v0 + 784);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v82 = v17;
    *v16 = 136380675;
    sub_22DEFFC78();
    v18 = sub_22DF633F4();
    v20 = v19;
    v10(v15, v79);
    v21 = sub_22DEF0354(v18, v20, &v82);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_22DEEA000, v13, v14, "reporting disabled due to missing home directory: %{private}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x2318DDBE0](v17, -1, -1);
    MEMORY[0x2318DDBE0](v16, -1, -1);
  }

  v22 = *(v0 + 856);
  v23 = sub_22DF63714();
  v24 = sub_22DF63D14();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_22DEEA000, v23, v24, "reporting disabled due to startup failure.", v25, 2u);
    MEMORY[0x2318DDBE0](v25, -1, -1);
  }

  *(v0 + 1000) = 0;
  *(v0 + 142) = 257;
  *(v0 + 992) = 0;
  *(v0 + 984) = 0;
  *(v0 + 976) = 0;
  if ((*(v0 + 140) | 2) == 2)
  {
    v26 = XPCActivity.makeHandler.unsafeMutableAddressor();
    v27 = swift_allocObject();
    v27[3] = 0;
    v27[4] = 0;
    v27[2] = 0;
    swift_beginAccess();
    v28 = *v26;
    v29 = v26[1];
    *v26 = &unk_22DF68868;
    v26[1] = v27;
    sub_22DEEB93C(v28);
    if (qword_27DA4CC18 != -1)
    {
      swift_once();
    }

    v30 = qword_27DA4E6B8;
    *(v0 + 1008) = qword_27DA4E6B8;
    if (v30 >> 62)
    {
      v31 = sub_22DF63E94();
      *(v0 + 1016) = v31;
      if (v31)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 1016) = v31;
      if (v31)
      {
LABEL_16:
        if (v31 < 1)
        {
          __break(1u);
        }

        *(v0 + 1024) = 0;
        v32 = *(v0 + 1008);
        if ((v32 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x2318DCED0](0);
        }

        else
        {
          v33 = *(v32 + 32);
        }

        *(v0 + 1032) = v33;
        v38 = *v33 + 160;
        *(v0 + 1040) = *v38;
        *(v0 + 1048) = v38 & 0xFFFFFFFFFFFFLL | 0xD283000000000000;
        v39 = *MEMORY[0x277D85DE8];

        return MEMORY[0x2822009F8](sub_22DF32A3C, v33, 0);
      }
    }
  }

  v80 = MEMORY[0x277D84FA0];
  if (qword_27DA4CBF8 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6A8 == 1)
  {
    sub_22DF110A8(&v82, 0xD000000000000011, 0x800000022DF6F230);
  }

  if (qword_27DA4CBF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v40 = qword_27DA4E6A0;
  v41 = sub_22DF63984();
  v42 = [v40 valueForKey_];

  if (v42)
  {
    sub_22DF63E44();
    swift_unknownObjectRelease();
    sub_22DEF1364(v0 + 528, &qword_27DA47A48, qword_22DF68550);
    sub_22DF110A8(&v82, 0xD000000000000013, 0x800000022DF6F210);
  }

  else
  {
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    sub_22DEF1364(v0 + 528, &qword_27DA47A48, qword_22DF68550);
  }

  if (qword_27DA4CC00 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6A9 == 1)
  {
    sub_22DF110A8(&v82, 0x6976654474736574, 0xEA00000000006563);
  }

  if (qword_27DA4CC08 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6AA == 1)
  {
    sub_22DF110A8(&v82, 0xD000000000000014, 0x800000022DF6F1F0);
  }

  v43 = (v0 + 992);
  v44 = (v0 + 976);
  v45 = *(v0 + 856);

  v46 = sub_22DF63714();
  v47 = sub_22DF63D24();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v81 = v49;
    *v48 = 136315138;
    if (*(v80 + 16))
    {
      v82 = 0x6769666E6F632820;
      v83 = 0xEA0000000000203ALL;
      *(v0 + 688) = v80;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A60, &qword_22DF68858);
      sub_22DF35820();
      sub_22DF06E10();
      v50 = sub_22DF63B44();
      v52 = v51;

      MEMORY[0x2318DCA20](v50, v52);
      v44 = (v0 + 976);

      MEMORY[0x2318DCA20](41, 0xE100000000000000);

      v53 = v82;
      v54 = v83;
    }

    else
    {

      v53 = 0;
      v54 = 0xE000000000000000;
    }

    v57 = *v43;
    v58 = *v44;
    v59 = sub_22DEF0354(v53, v54, &v81);

    *(v48 + 4) = v59;
    _os_log_impl(&dword_22DEEA000, v46, v47, "started CloudTelemetryService%s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x2318DDBE0](v49, -1, -1);
    MEMORY[0x2318DDBE0](v48, -1, -1);
  }

  else
  {
    v55 = *v43;
    v56 = *v44;
  }

  v60 = *(v0 + 1000);
  v61 = *(v0 + 992);
  v62 = *(v0 + 143);
  v63 = *(v0 + 848);
  v64 = *(v0 + 840);
  v65 = *(v0 + 832);
  v66 = *(v0 + 824);
  v67 = *(v0 + 816);
  v68 = *(v0 + 808);
  v69 = *(v0 + 800);
  v70 = *(v0 + 140);
  v71 = *(v0 + 760);
  *(v0 + 464) = v70;
  *(v0 + 465) = *(v0 + 73);
  *(v0 + 468) = *(v0 + 76);
  v72 = *(v0 + 768);
  v73 = *(v0 + 976);
  *(v0 + 472) = v72;
  *(v0 + 488) = v73;
  *(v0 + 504) = v60;
  *(v0 + 512) = v61;
  *(v0 + 520) = v62;
  *(v0 + 400) = v70;
  *(v0 + 401) = *(v0 + 73);
  *(v0 + 404) = *(v0 + 76);
  *(v0 + 408) = v72;
  *(v0 + 424) = v73;
  *(v0 + 440) = v60;
  *(v0 + 448) = v61;
  *(v0 + 456) = v62;
  sub_22DF357B8(v0 + 464, v0 + 16);
  sub_22DF357F0(v0 + 400);
  v75 = *(v0 + 480);
  v74 = *(v0 + 496);
  v76 = *(v0 + 464);
  *(v71 + 41) = *(v0 + 505);
  v71[1] = v75;
  v71[2] = v74;
  *v71 = v76;

  v77 = *(v0 + 8);
  v78 = *MEMORY[0x277D85DE8];

  return v77();
}

uint64_t sub_22DF31308(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 888);
  v10 = *v2;

  if (v1)
  {

    v6 = sub_22DF33198;
  }

  else
  {
    *(v4 + 896) = a1;
    v6 = sub_22DF3145C;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22DF3145C()
{
  v13 = *MEMORY[0x277D85DE8];
  *(v0 + 904) = *(v0 + 896);
  v11 = *(v0 + 872);
  v12 = *(v0 + 880);
  v1 = *(v0 + 848);
  v2 = *(v0 + 832);
  v3 = *(v0 + 784);
  v4 = *(v0 + 776);
  v5 = *(v0 + 768);
  v6 = *(v0 + 140);
  *(v0 + 912) = type metadata accessor for DiskCache();
  *(v0 + 144) = v6;
  *(v0 + 152) = v5;
  *(v0 + 160) = v4;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;

  sub_22DEFFC78();
  sub_22DF2EB3C();
  sub_22DF633B4();

  v11(v1, v3);
  v7 = swift_task_alloc();
  *(v0 + 920) = v7;
  *v7 = v0;
  v7[1] = sub_22DF315D8;
  v8 = *(v0 + 832);
  v9 = *MEMORY[0x277D85DE8];

  return DiskCache.__allocating_init(rootCacheURL:)(v8);
}

uint64_t sub_22DF315D8(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 920);
  v10 = *v2;
  *(*v2 + 928) = v1;

  if (v1)
  {
    v6 = sub_22DF33DFC;
  }

  else
  {
    v4[117] = a1;
    v4[92] = 0;
    v4[88] = 0;
    v6 = sub_22DF31730;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22DF31730()
{
  v71 = v0;
  v70[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 936);
  *(v0 + 944) = v1;
  v2 = *(v0 + 904);

  sub_22DEF1364(v0 + 736, &qword_27DA47A70, &qword_22DF68870);
  sub_22DEF1364(v0 + 704, &qword_27DA47A78, &qword_22DF68878);
  v3 = *(v0 + 904);
  if (v2 && v1)
  {
    v66 = *(v0 + 880);
    v4 = *(v0 + 872);
    v5 = *(v0 + 848);
    v6 = *(v0 + 824);
    v7 = *(v0 + 784);
    v8 = *(v0 + 776);
    v9 = *(v0 + 768);
    v10 = *(v0 + 140);
    type metadata accessor for SessionCoordinator();
    *(v0 + 336) = v10;
    *(v0 + 337) = *(v0 + 73);
    *(v0 + 340) = *(v0 + 76);
    *(v0 + 344) = v9;
    *(v0 + 352) = v8;
    *(v0 + 360) = v1;
    *(v0 + 368) = 0;
    *(v0 + 376) = 0;
    *(v0 + 384) = v3;
    *(v0 + 392) = 0;

    sub_22DEFFC78();
    sub_22DF2EB3C();
    sub_22DF633B4();

    v4(v5, v7);
    v11 = swift_task_alloc();
    *(v0 + 952) = v11;
    *v11 = v0;
    v11[1] = sub_22DF320C8;
    v12 = *(v0 + 824);
    v13 = *MEMORY[0x277D85DE8];

    return sub_22DF51F0C(0, v1, v12);
  }

  v15 = *(v0 + 856);
  v16 = sub_22DF63714();
  v17 = sub_22DF63D14();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_22DEEA000, v16, v17, "reporting disabled due to startup failure.", v18, 2u);
    MEMORY[0x2318DDBE0](v18, -1, -1);
  }

  *(v0 + 1000) = 0;
  *(v0 + 992) = v3;
  *(v0 + 142) = 257;
  *(v0 + 984) = 0;
  *(v0 + 976) = v1;
  if ((*(v0 + 140) | 2) == 2)
  {
    v19 = XPCActivity.makeHandler.unsafeMutableAddressor();
    v20 = swift_allocObject();
    v20[3] = 0;
    v20[4] = 0;
    v20[2] = v1;
    swift_beginAccess();
    v21 = *v19;
    v22 = v19[1];
    *v19 = &unk_22DF68868;
    v19[1] = v20;

    sub_22DEEB93C(v21);
    if (qword_27DA4CC18 != -1)
    {
      swift_once();
    }

    v23 = qword_27DA4E6B8;
    *(v0 + 1008) = qword_27DA4E6B8;
    if (v23 >> 62)
    {
      v24 = sub_22DF63E94();
      *(v0 + 1016) = v24;
      if (v24)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 1016) = v24;
      if (v24)
      {
LABEL_13:
        if (v24 < 1)
        {
          __break(1u);
        }

        *(v0 + 1024) = 0;
        v25 = *(v0 + 1008);
        if ((v25 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x2318DCED0](0);
        }

        else
        {
          v26 = *(v25 + 32);
        }

        *(v0 + 1032) = v26;
        v27 = *v26 + 160;
        *(v0 + 1040) = *v27;
        *(v0 + 1048) = v27 & 0xFFFFFFFFFFFFLL | 0xD283000000000000;
        v28 = *MEMORY[0x277D85DE8];

        return MEMORY[0x2822009F8](sub_22DF32A3C, v26, 0);
      }
    }
  }

  v67 = MEMORY[0x277D84FA0];
  if (qword_27DA4CBF8 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6A8 == 1)
  {
    sub_22DF110A8(&v68, 0xD000000000000011, 0x800000022DF6F230);
  }

  if (qword_27DA4CBF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v29 = qword_27DA4E6A0;
  v30 = sub_22DF63984();
  v31 = [v29 valueForKey_];

  if (v31)
  {
    sub_22DF63E44();
    swift_unknownObjectRelease();
    sub_22DEF1364(v0 + 528, &qword_27DA47A48, qword_22DF68550);
    sub_22DF110A8(&v68, 0xD000000000000013, 0x800000022DF6F210);
  }

  else
  {
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    sub_22DEF1364(v0 + 528, &qword_27DA47A48, qword_22DF68550);
  }

  if (qword_27DA4CC00 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6A9 == 1)
  {
    sub_22DF110A8(&v68, 0x6976654474736574, 0xEA00000000006563);
  }

  if (qword_27DA4CC08 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6AA == 1)
  {
    sub_22DF110A8(&v68, 0xD000000000000014, 0x800000022DF6F1F0);
  }

  v32 = *(v0 + 856);

  v33 = sub_22DF63714();
  v34 = sub_22DF63D24();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v70[0] = v36;
    *v35 = 136315138;
    if (*(v67 + 16))
    {
      v68 = 0x6769666E6F632820;
      v69 = 0xEA0000000000203ALL;
      *(v0 + 688) = v67;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A60, &qword_22DF68858);
      sub_22DF35820();
      sub_22DF06E10();
      v37 = sub_22DF63B44();
      v39 = v38;

      MEMORY[0x2318DCA20](v37, v39);

      MEMORY[0x2318DCA20](41, 0xE100000000000000);

      v40 = v68;
      v41 = v69;
    }

    else
    {

      v40 = 0;
      v41 = 0xE000000000000000;
    }

    v44 = *(v0 + 992);
    v45 = *(v0 + 976);
    v46 = sub_22DEF0354(v40, v41, v70);

    *(v35 + 4) = v46;
    _os_log_impl(&dword_22DEEA000, v33, v34, "started CloudTelemetryService%s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x2318DDBE0](v36, -1, -1);
    MEMORY[0x2318DDBE0](v35, -1, -1);
  }

  else
  {
    v42 = *(v0 + 992);
    v43 = *(v0 + 976);
  }

  v47 = *(v0 + 1000);
  v48 = *(v0 + 992);
  v49 = *(v0 + 143);
  v50 = *(v0 + 848);
  v51 = *(v0 + 840);
  v52 = *(v0 + 832);
  v53 = *(v0 + 824);
  v54 = *(v0 + 816);
  v55 = *(v0 + 808);
  v56 = *(v0 + 800);
  v57 = *(v0 + 140);
  v58 = *(v0 + 760);
  *(v0 + 464) = v57;
  *(v0 + 465) = *(v0 + 73);
  *(v0 + 468) = *(v0 + 76);
  v59 = *(v0 + 768);
  v60 = *(v0 + 976);
  *(v0 + 472) = v59;
  *(v0 + 488) = v60;
  *(v0 + 504) = v47;
  *(v0 + 512) = v48;
  *(v0 + 520) = v49;
  *(v0 + 400) = v57;
  *(v0 + 401) = *(v0 + 73);
  *(v0 + 404) = *(v0 + 76);
  *(v0 + 408) = v59;
  *(v0 + 424) = v60;
  *(v0 + 440) = v47;
  *(v0 + 448) = v48;
  *(v0 + 456) = v49;
  sub_22DF357B8(v0 + 464, v0 + 16);
  sub_22DF357F0(v0 + 400);
  v62 = *(v0 + 480);
  v61 = *(v0 + 496);
  v63 = *(v0 + 464);
  *(v58 + 41) = *(v0 + 505);
  v58[1] = v62;
  v58[2] = v61;
  *v58 = v63;

  v64 = *(v0 + 8);
  v65 = *MEMORY[0x277D85DE8];

  return v64();
}

uint64_t sub_22DF320C8(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 952);
  v10 = *v2;
  *(*v2 + 960) = v1;

  if (v1)
  {
    v6 = sub_22DF34B58;
  }

  else
  {
    *(v4 + 968) = a1;
    *(v4 + 141) = *(v4 + 392);
    v6 = sub_22DF32220;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22DF32220(uint64_t (*a1)(), void *a2, uint64_t a3)
{
  v63 = v3;
  v62[1] = *MEMORY[0x277D85DE8];
  v4 = *(v3 + 141);
  v5 = *(v3 + 968);
  if (v4 == 1)
  {
    v6 = 0;
  }

  else
  {
    if (!v5)
    {
      __break(1u);
      return MEMORY[0x2822009F8](a1, a2, a3);
    }

    v7 = *(v3 + 944);
    v8 = *(v3 + 904);
    type metadata accessor for SubmissionCoordinator();

    v6 = sub_22DEEC750(v5, v7, v8);
  }

  v9 = *(v3 + 904);
  v10 = *(v3 + 944);
  *(v3 + 1000) = v6;
  *(v3 + 992) = v9;
  *(v3 + 143) = 0;
  *(v3 + 142) = v4;
  *(v3 + 984) = v5;
  *(v3 + 976) = v10;
  if ((*(v3 + 140) | 2) == 2)
  {
    v11 = XPCActivity.makeHandler.unsafeMutableAddressor();
    v12 = swift_allocObject();
    v12[2] = v10;
    v12[3] = v5;
    v12[4] = v6;
    swift_beginAccess();
    v13 = *v11;
    v14 = v11[1];
    *v11 = &unk_22DF68868;
    v11[1] = v12;

    sub_22DEEB93C(v13);
    if (qword_27DA4CC18 != -1)
    {
      swift_once();
    }

    v15 = qword_27DA4E6B8;
    *(v3 + 1008) = qword_27DA4E6B8;
    if (v15 >> 62)
    {
      v16 = sub_22DF63E94();
      *(v3 + 1016) = v16;
      if (v16)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v3 + 1016) = v16;
      if (v16)
      {
LABEL_10:
        if (v16 < 1)
        {
          __break(1u);
        }

        *(v3 + 1024) = 0;
        v17 = *(v3 + 1008);
        if ((v17 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x2318DCED0](0);
        }

        else
        {
          v18 = *(v17 + 32);
        }

        *(v3 + 1032) = v18;
        v19 = *v18 + 160;
        *(v3 + 1040) = *v19;
        *(v3 + 1048) = v19 & 0xFFFFFFFFFFFFLL | 0xD283000000000000;
        v20 = *MEMORY[0x277D85DE8];
        a1 = sub_22DF32A3C;
        a2 = v18;
        a3 = 0;

        return MEMORY[0x2822009F8](a1, a2, a3);
      }
    }
  }

  v59 = MEMORY[0x277D84FA0];
  if (qword_27DA4CBF8 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6A8 == 1)
  {
    sub_22DF110A8(&v60, 0xD000000000000011, 0x800000022DF6F230);
  }

  if (qword_27DA4CBF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v21 = qword_27DA4E6A0;
  v22 = sub_22DF63984();
  v23 = [v21 valueForKey_];

  if (v23)
  {
    sub_22DF63E44();
    swift_unknownObjectRelease();
    sub_22DEF1364(v3 + 528, &qword_27DA47A48, qword_22DF68550);
    sub_22DF110A8(&v60, 0xD000000000000013, 0x800000022DF6F210);
  }

  else
  {
    *(v3 + 528) = 0u;
    *(v3 + 544) = 0u;
    sub_22DEF1364(v3 + 528, &qword_27DA47A48, qword_22DF68550);
  }

  if (qword_27DA4CC00 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6A9 == 1)
  {
    sub_22DF110A8(&v60, 0x6976654474736574, 0xEA00000000006563);
  }

  if (qword_27DA4CC08 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6AA == 1)
  {
    sub_22DF110A8(&v60, 0xD000000000000014, 0x800000022DF6F1F0);
  }

  v24 = *(v3 + 856);

  v25 = sub_22DF63714();
  v26 = sub_22DF63D24();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v62[0] = v28;
    *v27 = 136315138;
    if (*(v59 + 16))
    {
      v60 = 0x6769666E6F632820;
      v61 = 0xEA0000000000203ALL;
      *(v3 + 688) = v59;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A60, &qword_22DF68858);
      sub_22DF35820();
      sub_22DF06E10();
      v29 = sub_22DF63B44();
      v31 = v30;

      MEMORY[0x2318DCA20](v29, v31);

      MEMORY[0x2318DCA20](41, 0xE100000000000000);

      v32 = v60;
      v33 = v61;
    }

    else
    {

      v32 = 0;
      v33 = 0xE000000000000000;
    }

    v36 = *(v3 + 992);
    v37 = *(v3 + 976);
    v38 = sub_22DEF0354(v32, v33, v62);

    *(v27 + 4) = v38;
    _os_log_impl(&dword_22DEEA000, v25, v26, "started CloudTelemetryService%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x2318DDBE0](v28, -1, -1);
    MEMORY[0x2318DDBE0](v27, -1, -1);
  }

  else
  {
    v34 = *(v3 + 992);
    v35 = *(v3 + 976);
  }

  v39 = *(v3 + 1000);
  v40 = *(v3 + 992);
  v41 = *(v3 + 143);
  v42 = *(v3 + 848);
  v43 = *(v3 + 840);
  v44 = *(v3 + 832);
  v45 = *(v3 + 824);
  v46 = *(v3 + 816);
  v47 = *(v3 + 808);
  v48 = *(v3 + 800);
  v49 = *(v3 + 140);
  v50 = *(v3 + 760);
  *(v3 + 464) = v49;
  *(v3 + 465) = *(v3 + 73);
  *(v3 + 468) = *(v3 + 76);
  v51 = *(v3 + 768);
  v52 = *(v3 + 976);
  *(v3 + 472) = v51;
  *(v3 + 488) = v52;
  *(v3 + 504) = v39;
  *(v3 + 512) = v40;
  *(v3 + 520) = v41;
  *(v3 + 400) = v49;
  *(v3 + 401) = *(v3 + 73);
  *(v3 + 404) = *(v3 + 76);
  *(v3 + 408) = v51;
  *(v3 + 424) = v52;
  *(v3 + 440) = v39;
  *(v3 + 448) = v40;
  *(v3 + 456) = v41;
  sub_22DF357B8(v3 + 464, v3 + 16);
  sub_22DF357F0(v3 + 400);
  v54 = *(v3 + 480);
  v53 = *(v3 + 496);
  v55 = *(v3 + 464);
  *(v50 + 41) = *(v3 + 505);
  v50[1] = v54;
  v50[2] = v53;
  *v50 = v55;

  v56 = *(v3 + 8);
  v57 = *MEMORY[0x277D85DE8];

  return v56();
}

uint64_t sub_22DF32A3C()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1032);
  (*(v0 + 1040))(*(v0 + 142));
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22DF32ADC, 0, 0);
}

uint64_t sub_22DF32ADC()
{
  v51 = v0;
  v50[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 1016);

  if (v2 + 1 == v3)
  {
    v47 = MEMORY[0x277D84FA0];
    if (qword_27DA4CBF8 != -1)
    {
      swift_once();
    }

    if (byte_27DA4E6A8 == 1)
    {
      sub_22DF110A8(&v48, 0xD000000000000011, 0x800000022DF6F230);
    }

    if (qword_27DA4CBF0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = qword_27DA4E6A0;
    v5 = sub_22DF63984();
    v6 = [v4 valueForKey_];

    if (v6)
    {
      sub_22DF63E44();
      swift_unknownObjectRelease();
      sub_22DEF1364(v0 + 528, &qword_27DA47A48, qword_22DF68550);
      sub_22DF110A8(&v48, 0xD000000000000013, 0x800000022DF6F210);
    }

    else
    {
      *(v0 + 528) = 0u;
      *(v0 + 544) = 0u;
      sub_22DEF1364(v0 + 528, &qword_27DA47A48, qword_22DF68550);
    }

    if (qword_27DA4CC00 != -1)
    {
      swift_once();
    }

    if (byte_27DA4E6A9 == 1)
    {
      sub_22DF110A8(&v48, 0x6976654474736574, 0xEA00000000006563);
    }

    if (qword_27DA4CC08 != -1)
    {
      swift_once();
    }

    if (byte_27DA4E6AA == 1)
    {
      sub_22DF110A8(&v48, 0xD000000000000014, 0x800000022DF6F1F0);
    }

    v10 = *(v0 + 856);

    v11 = sub_22DF63714();
    v12 = sub_22DF63D24();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v50[0] = v14;
      *v13 = 136315138;
      if (*(v47 + 16))
      {
        v48 = 0x6769666E6F632820;
        v49 = 0xEA0000000000203ALL;
        *(v0 + 688) = v47;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A60, &qword_22DF68858);
        sub_22DF35820();
        sub_22DF06E10();
        v15 = sub_22DF63B44();
        v17 = v16;

        MEMORY[0x2318DCA20](v15, v17);

        MEMORY[0x2318DCA20](41, 0xE100000000000000);

        v18 = v48;
        v19 = v49;
      }

      else
      {

        v18 = 0;
        v19 = 0xE000000000000000;
      }

      v24 = *(v0 + 992);
      v25 = *(v0 + 976);
      v26 = sub_22DEF0354(v18, v19, v50);

      *(v13 + 4) = v26;
      _os_log_impl(&dword_22DEEA000, v11, v12, "started CloudTelemetryService%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x2318DDBE0](v14, -1, -1);
      MEMORY[0x2318DDBE0](v13, -1, -1);
    }

    else
    {
      v20 = *(v0 + 992);
      v21 = *(v0 + 976);
    }

    v27 = *(v0 + 1000);
    v28 = *(v0 + 992);
    v29 = *(v0 + 143);
    v30 = *(v0 + 848);
    v31 = *(v0 + 840);
    v32 = *(v0 + 832);
    v33 = *(v0 + 824);
    v34 = *(v0 + 816);
    v35 = *(v0 + 808);
    v36 = *(v0 + 800);
    v37 = *(v0 + 140);
    v38 = *(v0 + 760);
    *(v0 + 464) = v37;
    *(v0 + 465) = *(v0 + 73);
    *(v0 + 468) = *(v0 + 76);
    v39 = *(v0 + 768);
    v40 = *(v0 + 976);
    *(v0 + 472) = v39;
    *(v0 + 488) = v40;
    *(v0 + 504) = v27;
    *(v0 + 512) = v28;
    *(v0 + 520) = v29;
    *(v0 + 400) = v37;
    *(v0 + 401) = *(v0 + 73);
    *(v0 + 404) = *(v0 + 76);
    *(v0 + 408) = v39;
    *(v0 + 424) = v40;
    *(v0 + 440) = v27;
    *(v0 + 448) = v28;
    *(v0 + 456) = v29;
    sub_22DF357B8(v0 + 464, v0 + 16);
    sub_22DF357F0(v0 + 400);
    v42 = *(v0 + 480);
    v41 = *(v0 + 496);
    v43 = *(v0 + 464);
    *(v38 + 41) = *(v0 + 505);
    v38[1] = v42;
    v38[2] = v41;
    *v38 = v43;

    v44 = *(v0 + 8);
    v45 = *MEMORY[0x277D85DE8];

    return v44();
  }

  else
  {
    v7 = *(v0 + 1024) + 1;
    *(v0 + 1024) = v7;
    v8 = *(v0 + 1008);
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x2318DCED0]();
    }

    else
    {
      v9 = *(v8 + 8 * v7 + 32);
    }

    *(v0 + 1032) = v9;
    v22 = *v9 + 160;
    *(v0 + 1040) = *v22;
    *(v0 + 1048) = v22 & 0xFFFFFFFFFFFFLL | 0xD283000000000000;
    v23 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_22DF32A3C, v9, 0);
  }
}

uint64_t sub_22DF33198()
{
  v13 = *MEMORY[0x277D85DE8];
  *(v0 + 904) = 0;
  v12 = *(v0 + 880);
  v1 = *(v0 + 872);
  v2 = *(v0 + 848);
  v3 = *(v0 + 832);
  v4 = *(v0 + 784);
  v5 = *(v0 + 776);
  v6 = *(v0 + 768);
  v7 = *(v0 + 140);
  *(v0 + 912) = type metadata accessor for DiskCache();
  *(v0 + 144) = v7;
  *(v0 + 152) = v6;
  *(v0 + 160) = v5;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  sub_22DEFFC78();
  sub_22DF2EB3C();
  sub_22DF633B4();

  v1(v2, v4);
  v8 = swift_task_alloc();
  *(v0 + 920) = v8;
  *v8 = v0;
  v8[1] = sub_22DF315D8;
  v9 = *(v0 + 832);
  v10 = *MEMORY[0x277D85DE8];

  return DiskCache.__allocating_init(rootCacheURL:)(v9);
}

uint64_t sub_22DF33308(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 1056);
  v10 = *v2;
  *(*v2 + 1064) = v1;

  if (v1)
  {
    v6 = sub_22DF34310;
  }

  else
  {
    *(v4 + 1072) = a1;
    v6 = sub_22DF33458;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22DF33458()
{
  v72 = v0;
  v71[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1072);

  v2 = *(v0 + 1072);
  *(v0 + 944) = v2;
  v3 = *(v0 + 904);

  sub_22DEF1364(v0 + 680, &qword_27DA47A70, &qword_22DF68870);
  sub_22DEF1364(v0 + 752, &qword_27DA47A78, &qword_22DF68878);
  v4 = *(v0 + 904);
  if (v3 && v2)
  {
    v67 = *(v0 + 880);
    v5 = *(v0 + 872);
    v6 = *(v0 + 848);
    v7 = *(v0 + 824);
    v8 = *(v0 + 784);
    v9 = *(v0 + 776);
    v10 = *(v0 + 768);
    v11 = *(v0 + 140);
    type metadata accessor for SessionCoordinator();
    *(v0 + 336) = v11;
    *(v0 + 337) = *(v0 + 73);
    *(v0 + 340) = *(v0 + 76);
    *(v0 + 344) = v10;
    *(v0 + 352) = v9;
    *(v0 + 360) = v2;
    *(v0 + 368) = 0;
    *(v0 + 376) = 0;
    *(v0 + 384) = v4;
    *(v0 + 392) = 0;

    sub_22DEFFC78();
    sub_22DF2EB3C();
    sub_22DF633B4();

    v5(v6, v8);
    v12 = swift_task_alloc();
    *(v0 + 952) = v12;
    *v12 = v0;
    v12[1] = sub_22DF320C8;
    v13 = *(v0 + 824);
    v14 = *MEMORY[0x277D85DE8];

    return sub_22DF51F0C(0, v2, v13);
  }

  v16 = *(v0 + 856);
  v17 = sub_22DF63714();
  v18 = sub_22DF63D14();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_22DEEA000, v17, v18, "reporting disabled due to startup failure.", v19, 2u);
    MEMORY[0x2318DDBE0](v19, -1, -1);
  }

  *(v0 + 1000) = 0;
  *(v0 + 992) = v4;
  *(v0 + 142) = 257;
  *(v0 + 984) = 0;
  *(v0 + 976) = v2;
  if ((*(v0 + 140) | 2) == 2)
  {
    v20 = XPCActivity.makeHandler.unsafeMutableAddressor();
    v21 = swift_allocObject();
    v21[3] = 0;
    v21[4] = 0;
    v21[2] = v2;
    swift_beginAccess();
    v22 = *v20;
    v23 = v20[1];
    *v20 = &unk_22DF68868;
    v20[1] = v21;

    sub_22DEEB93C(v22);
    if (qword_27DA4CC18 != -1)
    {
      swift_once();
    }

    v24 = qword_27DA4E6B8;
    *(v0 + 1008) = qword_27DA4E6B8;
    if (v24 >> 62)
    {
      v25 = sub_22DF63E94();
      *(v0 + 1016) = v25;
      if (v25)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 1016) = v25;
      if (v25)
      {
LABEL_13:
        if (v25 < 1)
        {
          __break(1u);
        }

        *(v0 + 1024) = 0;
        v26 = *(v0 + 1008);
        if ((v26 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x2318DCED0](0);
        }

        else
        {
          v27 = *(v26 + 32);
        }

        *(v0 + 1032) = v27;
        v28 = *v27 + 160;
        *(v0 + 1040) = *v28;
        *(v0 + 1048) = v28 & 0xFFFFFFFFFFFFLL | 0xD283000000000000;
        v29 = *MEMORY[0x277D85DE8];

        return MEMORY[0x2822009F8](sub_22DF32A3C, v27, 0);
      }
    }
  }

  v68 = MEMORY[0x277D84FA0];
  if (qword_27DA4CBF8 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6A8 == 1)
  {
    sub_22DF110A8(&v69, 0xD000000000000011, 0x800000022DF6F230);
  }

  if (qword_27DA4CBF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v30 = qword_27DA4E6A0;
  v31 = sub_22DF63984();
  v32 = [v30 valueForKey_];

  if (v32)
  {
    sub_22DF63E44();
    swift_unknownObjectRelease();
    sub_22DEF1364(v0 + 528, &qword_27DA47A48, qword_22DF68550);
    sub_22DF110A8(&v69, 0xD000000000000013, 0x800000022DF6F210);
  }

  else
  {
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    sub_22DEF1364(v0 + 528, &qword_27DA47A48, qword_22DF68550);
  }

  if (qword_27DA4CC00 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6A9 == 1)
  {
    sub_22DF110A8(&v69, 0x6976654474736574, 0xEA00000000006563);
  }

  if (qword_27DA4CC08 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6AA == 1)
  {
    sub_22DF110A8(&v69, 0xD000000000000014, 0x800000022DF6F1F0);
  }

  v33 = *(v0 + 856);

  v34 = sub_22DF63714();
  v35 = sub_22DF63D24();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v71[0] = v37;
    *v36 = 136315138;
    if (*(v68 + 16))
    {
      v69 = 0x6769666E6F632820;
      v70 = 0xEA0000000000203ALL;
      *(v0 + 688) = v68;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A60, &qword_22DF68858);
      sub_22DF35820();
      sub_22DF06E10();
      v38 = sub_22DF63B44();
      v40 = v39;

      MEMORY[0x2318DCA20](v38, v40);

      MEMORY[0x2318DCA20](41, 0xE100000000000000);

      v41 = v69;
      v42 = v70;
    }

    else
    {

      v41 = 0;
      v42 = 0xE000000000000000;
    }

    v45 = *(v0 + 992);
    v46 = *(v0 + 976);
    v47 = sub_22DEF0354(v41, v42, v71);

    *(v36 + 4) = v47;
    _os_log_impl(&dword_22DEEA000, v34, v35, "started CloudTelemetryService%s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x2318DDBE0](v37, -1, -1);
    MEMORY[0x2318DDBE0](v36, -1, -1);
  }

  else
  {
    v43 = *(v0 + 992);
    v44 = *(v0 + 976);
  }

  v48 = *(v0 + 1000);
  v49 = *(v0 + 992);
  v50 = *(v0 + 143);
  v51 = *(v0 + 848);
  v52 = *(v0 + 840);
  v53 = *(v0 + 832);
  v54 = *(v0 + 824);
  v55 = *(v0 + 816);
  v56 = *(v0 + 808);
  v57 = *(v0 + 800);
  v58 = *(v0 + 140);
  v59 = *(v0 + 760);
  *(v0 + 464) = v58;
  *(v0 + 465) = *(v0 + 73);
  *(v0 + 468) = *(v0 + 76);
  v60 = *(v0 + 768);
  v61 = *(v0 + 976);
  *(v0 + 472) = v60;
  *(v0 + 488) = v61;
  *(v0 + 504) = v48;
  *(v0 + 512) = v49;
  *(v0 + 520) = v50;
  *(v0 + 400) = v58;
  *(v0 + 401) = *(v0 + 73);
  *(v0 + 404) = *(v0 + 76);
  *(v0 + 408) = v60;
  *(v0 + 424) = v61;
  *(v0 + 440) = v48;
  *(v0 + 448) = v49;
  *(v0 + 456) = v50;
  sub_22DF357B8(v0 + 464, v0 + 16);
  sub_22DF357F0(v0 + 400);
  v63 = *(v0 + 480);
  v62 = *(v0 + 496);
  v64 = *(v0 + 464);
  *(v59 + 41) = *(v0 + 505);
  v59[1] = v63;
  v59[2] = v62;
  *v59 = v64;

  v65 = *(v0 + 8);
  v66 = *MEMORY[0x277D85DE8];

  return v65();
}

uint64_t sub_22DF33DFC()
{
  v55 = v0;
  v54[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 928);
  *(v0 + 712) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CC0, &qword_22DF661F0);
  if (!swift_dynamicCast() || (*(v0 + 138) = *(v0 + 137), *(v0 + 139) = 1, sub_22DF04FFC(), (sub_22DF63974() & 1) == 0))
  {
    v3 = *(v0 + 928);
    v4 = *(v0 + 856);
    v5 = v3;
    v6 = sub_22DF63714();
    v7 = sub_22DF63D04();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 928);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v54[0] = v10;
      *v9 = 136446210;
      swift_getErrorValue();
      v11 = *(v0 + 560);
      v12 = *(v0 + 568);
      v13 = *(v0 + 576);
      v14 = sub_22DF64244();
      v16 = sub_22DEF0354(v14, v15, v54);

      *(v9 + 4) = v16;
      _os_log_impl(&dword_22DEEA000, v6, v7, "failed to open database file: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x2318DDBE0](v10, -1, -1);
      MEMORY[0x2318DDBE0](v9, -1, -1);
    }
  }

  v17 = *(v0 + 880);
  v18 = *(v0 + 872);
  v19 = *(v0 + 848);
  v20 = *(v0 + 816);
  v21 = *(v0 + 808);
  v22 = *(v0 + 784);
  v23 = *(v0 + 776);
  v24 = *(v0 + 768);
  v25 = *(v0 + 140);
  v53 = [*(v0 + 864) defaultManager];
  *(v0 + 208) = v25;
  *(v0 + 209) = *(v0 + 73);
  *(v0 + 212) = *(v0 + 76);
  *(v0 + 216) = v24;
  *(v0 + 224) = v23;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 264) = 0;
  sub_22DEFFC78();
  sub_22DF2EB3C();
  sub_22DF633B4();

  v18(v21, v22);
  sub_22DF633D4();
  v18(v20, v22);
  v26 = sub_22DF63394();
  v18(v19, v22);
  *(v0 + 720) = 0;
  LODWORD(v19) = [v53 removeItemAtURL:v26 error:v0 + 720];

  v27 = *(v0 + 720);
  if (v19)
  {
    v28 = v27;
  }

  else
  {
    v29 = *(v0 + 856);
    v30 = v27;
    v31 = sub_22DF63334();

    swift_willThrow();
    v32 = v31;
    v33 = sub_22DF63714();
    v34 = sub_22DF63D04();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v54[0] = v36;
      *v35 = 136446210;
      swift_getErrorValue();
      v37 = *(v0 + 584);
      v38 = *(v0 + 592);
      v39 = *(v0 + 600);
      v40 = sub_22DF64244();
      v42 = sub_22DEF0354(v40, v41, v54);

      *(v35 + 4) = v42;
      _os_log_impl(&dword_22DEEA000, v33, v34, "failed to clear cache directory with error: %{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x2318DDBE0](v36, -1, -1);
      MEMORY[0x2318DDBE0](v35, -1, -1);
    }

    else
    {
    }
  }

  v43 = *(v0 + 880);
  v44 = *(v0 + 872);
  v45 = *(v0 + 848);
  v46 = *(v0 + 800);
  v47 = *(v0 + 784);
  *(v0 + 272) = *(v0 + 140);
  *(v0 + 273) = *(v0 + 73);
  *(v0 + 276) = *(v0 + 76);
  *(v0 + 280) = *(v0 + 768);
  *(v0 + 328) = 0;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 680) = 0;
  *(v0 + 752) = 0;
  sub_22DEFFC78();
  sub_22DF2EB3C();
  sub_22DF633B4();

  v44(v45, v47);
  v48 = swift_task_alloc();
  *(v0 + 1056) = v48;
  *v48 = v0;
  v48[1] = sub_22DF33308;
  v49 = *(v0 + 912);
  v50 = *(v0 + 800);
  v51 = *MEMORY[0x277D85DE8];

  return DiskCache.__allocating_init(rootCacheURL:)(v50);
}

uint64_t sub_22DF34310()
{
  v59 = v0;
  v58[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1064);

  sub_22DEF1364(v0 + 680, &qword_27DA47A70, &qword_22DF68870);
  sub_22DEF1364(v0 + 752, &qword_27DA47A78, &qword_22DF68878);
  v2 = *(v0 + 904);
  v3 = *(v0 + 856);
  v4 = sub_22DF63714();
  v5 = sub_22DF63D14();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_22DEEA000, v4, v5, "reporting disabled due to startup failure.", v6, 2u);
    MEMORY[0x2318DDBE0](v6, -1, -1);
  }

  *(v0 + 1000) = 0;
  *(v0 + 992) = v2;
  *(v0 + 142) = 257;
  *(v0 + 976) = 0u;
  if ((*(v0 + 140) | 2) == 2)
  {
    v7 = XPCActivity.makeHandler.unsafeMutableAddressor();
    v8 = swift_allocObject();
    v8[3] = 0;
    v8[4] = 0;
    v8[2] = 0;
    swift_beginAccess();
    v9 = *v7;
    v10 = v7[1];
    *v7 = &unk_22DF68868;
    v7[1] = v8;
    sub_22DEEB93C(v9);
    if (qword_27DA4CC18 != -1)
    {
      swift_once();
    }

    v11 = qword_27DA4E6B8;
    *(v0 + 1008) = qword_27DA4E6B8;
    if (v11 >> 62)
    {
      v12 = sub_22DF63E94();
      *(v0 + 1016) = v12;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 1016) = v12;
      if (v12)
      {
LABEL_8:
        if (v12 < 1)
        {
          __break(1u);
        }

        *(v0 + 1024) = 0;
        v13 = *(v0 + 1008);
        if ((v13 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x2318DCED0](0);
        }

        else
        {
          v14 = *(v13 + 32);
        }

        *(v0 + 1032) = v14;
        v15 = *v14 + 160;
        *(v0 + 1040) = *v15;
        *(v0 + 1048) = v15 & 0xFFFFFFFFFFFFLL | 0xD283000000000000;
        v16 = *MEMORY[0x277D85DE8];

        return MEMORY[0x2822009F8](sub_22DF32A3C, v14, 0);
      }
    }
  }

  v55 = MEMORY[0x277D84FA0];
  if (qword_27DA4CBF8 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6A8 == 1)
  {
    sub_22DF110A8(&v56, 0xD000000000000011, 0x800000022DF6F230);
  }

  if (qword_27DA4CBF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = qword_27DA4E6A0;
  v18 = sub_22DF63984();
  v19 = [v17 valueForKey_];

  if (v19)
  {
    sub_22DF63E44();
    swift_unknownObjectRelease();
    sub_22DEF1364(v0 + 528, &qword_27DA47A48, qword_22DF68550);
    sub_22DF110A8(&v56, 0xD000000000000013, 0x800000022DF6F210);
  }

  else
  {
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    sub_22DEF1364(v0 + 528, &qword_27DA47A48, qword_22DF68550);
  }

  if (qword_27DA4CC00 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6A9 == 1)
  {
    sub_22DF110A8(&v56, 0x6976654474736574, 0xEA00000000006563);
  }

  if (qword_27DA4CC08 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6AA == 1)
  {
    sub_22DF110A8(&v56, 0xD000000000000014, 0x800000022DF6F1F0);
  }

  v20 = *(v0 + 856);

  v21 = sub_22DF63714();
  v22 = sub_22DF63D24();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v58[0] = v24;
    *v23 = 136315138;
    if (*(v55 + 16))
    {
      v56 = 0x6769666E6F632820;
      v57 = 0xEA0000000000203ALL;
      *(v0 + 688) = v55;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A60, &qword_22DF68858);
      sub_22DF35820();
      sub_22DF06E10();
      v25 = sub_22DF63B44();
      v27 = v26;

      MEMORY[0x2318DCA20](v25, v27);

      MEMORY[0x2318DCA20](41, 0xE100000000000000);

      v28 = v56;
      v29 = v57;
    }

    else
    {

      v28 = 0;
      v29 = 0xE000000000000000;
    }

    v32 = *(v0 + 992);
    v33 = *(v0 + 976);
    v34 = sub_22DEF0354(v28, v29, v58);

    *(v23 + 4) = v34;
    _os_log_impl(&dword_22DEEA000, v21, v22, "started CloudTelemetryService%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x2318DDBE0](v24, -1, -1);
    MEMORY[0x2318DDBE0](v23, -1, -1);
  }

  else
  {
    v30 = *(v0 + 992);
    v31 = *(v0 + 976);
  }

  v35 = *(v0 + 1000);
  v36 = *(v0 + 992);
  v37 = *(v0 + 143);
  v38 = *(v0 + 848);
  v39 = *(v0 + 840);
  v40 = *(v0 + 832);
  v41 = *(v0 + 824);
  v42 = *(v0 + 816);
  v43 = *(v0 + 808);
  v44 = *(v0 + 800);
  v45 = *(v0 + 140);
  v46 = *(v0 + 760);
  *(v0 + 464) = v45;
  *(v0 + 465) = *(v0 + 73);
  *(v0 + 468) = *(v0 + 76);
  v47 = *(v0 + 768);
  v48 = *(v0 + 976);
  *(v0 + 472) = v47;
  *(v0 + 488) = v48;
  *(v0 + 504) = v35;
  *(v0 + 512) = v36;
  *(v0 + 520) = v37;
  *(v0 + 400) = v45;
  *(v0 + 401) = *(v0 + 73);
  *(v0 + 404) = *(v0 + 76);
  *(v0 + 408) = v47;
  *(v0 + 424) = v48;
  *(v0 + 440) = v35;
  *(v0 + 448) = v36;
  *(v0 + 456) = v37;
  sub_22DF357B8(v0 + 464, v0 + 16);
  sub_22DF357F0(v0 + 400);
  v50 = *(v0 + 480);
  v49 = *(v0 + 496);
  v51 = *(v0 + 464);
  *(v46 + 41) = *(v0 + 505);
  v46[1] = v50;
  v46[2] = v49;
  *v46 = v51;

  v52 = *(v0 + 8);
  v53 = *MEMORY[0x277D85DE8];

  return v52();
}

uint64_t sub_22DF34B58()
{
  v71 = v0;
  v70 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 960);
  v2 = *(v0 + 856);
  v3 = v1;
  v4 = sub_22DF63714();
  v5 = sub_22DF63D14();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 960);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v68 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v9 = *(v0 + 608);
    v10 = *(v0 + 616);
    v11 = *(v0 + 624);
    v12 = sub_22DF64244();
    v14 = sub_22DEF0354(v12, v13, &v68);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_22DEEA000, v4, v5, "reporting disabled due to failure setting up session coordinator. %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2318DDBE0](v8, -1, -1);
    MEMORY[0x2318DDBE0](v7, -1, -1);
  }

  else
  {
    v15 = *(v0 + 960);
  }

  v16 = *(v0 + 904);
  v17 = *(v0 + 944);
  *(v0 + 1000) = 0;
  *(v0 + 992) = v16;
  *(v0 + 142) = 257;
  *(v0 + 984) = 0;
  *(v0 + 976) = v17;
  if ((*(v0 + 140) | 2) == 2)
  {
    v18 = XPCActivity.makeHandler.unsafeMutableAddressor();
    v19 = swift_allocObject();
    v19[3] = 0;
    v19[4] = 0;
    v19[2] = v17;
    swift_beginAccess();
    v20 = *v18;
    v21 = v18[1];
    *v18 = &unk_22DF68868;
    v18[1] = v19;

    sub_22DEEB93C(v20);
    if (qword_27DA4CC18 != -1)
    {
      swift_once();
    }

    v22 = qword_27DA4E6B8;
    *(v0 + 1008) = qword_27DA4E6B8;
    if (v22 >> 62)
    {
      v23 = sub_22DF63E94();
      *(v0 + 1016) = v23;
      if (v23)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 1016) = v23;
      if (v23)
      {
LABEL_9:
        if (v23 < 1)
        {
          __break(1u);
        }

        *(v0 + 1024) = 0;
        v24 = *(v0 + 1008);
        if ((v24 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x2318DCED0](0);
        }

        else
        {
          v25 = *(v24 + 32);
        }

        *(v0 + 1032) = v25;
        v26 = *v25 + 160;
        *(v0 + 1040) = *v26;
        *(v0 + 1048) = v26 & 0xFFFFFFFFFFFFLL | 0xD283000000000000;
        v27 = *MEMORY[0x277D85DE8];

        return MEMORY[0x2822009F8](sub_22DF32A3C, v25, 0);
      }
    }
  }

  v66 = MEMORY[0x277D84FA0];
  if (qword_27DA4CBF8 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6A8 == 1)
  {
    sub_22DF110A8(&v68, 0xD000000000000011, 0x800000022DF6F230);
  }

  if (qword_27DA4CBF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v28 = qword_27DA4E6A0;
  v29 = sub_22DF63984();
  v30 = [v28 valueForKey_];

  if (v30)
  {
    sub_22DF63E44();
    swift_unknownObjectRelease();
    sub_22DEF1364(v0 + 528, &qword_27DA47A48, qword_22DF68550);
    sub_22DF110A8(&v68, 0xD000000000000013, 0x800000022DF6F210);
  }

  else
  {
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    sub_22DEF1364(v0 + 528, &qword_27DA47A48, qword_22DF68550);
  }

  if (qword_27DA4CC00 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6A9 == 1)
  {
    sub_22DF110A8(&v68, 0x6976654474736574, 0xEA00000000006563);
  }

  if (qword_27DA4CC08 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6AA == 1)
  {
    sub_22DF110A8(&v68, 0xD000000000000014, 0x800000022DF6F1F0);
  }

  v31 = *(v0 + 856);

  v32 = sub_22DF63714();
  v33 = sub_22DF63D24();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v67 = v35;
    *v34 = 136315138;
    if (*(v66 + 16))
    {
      v68 = 0x6769666E6F632820;
      v69 = 0xEA0000000000203ALL;
      *(v0 + 688) = v66;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A60, &qword_22DF68858);
      sub_22DF35820();
      sub_22DF06E10();
      v36 = sub_22DF63B44();
      v38 = v37;

      MEMORY[0x2318DCA20](v36, v38);

      MEMORY[0x2318DCA20](41, 0xE100000000000000);

      v39 = v68;
      v40 = v69;
    }

    else
    {

      v39 = 0;
      v40 = 0xE000000000000000;
    }

    v43 = *(v0 + 992);
    v44 = *(v0 + 976);
    v45 = sub_22DEF0354(v39, v40, &v67);

    *(v34 + 4) = v45;
    _os_log_impl(&dword_22DEEA000, v32, v33, "started CloudTelemetryService%s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x2318DDBE0](v35, -1, -1);
    MEMORY[0x2318DDBE0](v34, -1, -1);
  }

  else
  {
    v41 = *(v0 + 992);
    v42 = *(v0 + 976);
  }

  v46 = *(v0 + 1000);
  v47 = *(v0 + 992);
  v48 = *(v0 + 143);
  v49 = *(v0 + 848);
  v50 = *(v0 + 840);
  v51 = *(v0 + 832);
  v52 = *(v0 + 824);
  v53 = *(v0 + 816);
  v54 = *(v0 + 808);
  v55 = *(v0 + 800);
  v56 = *(v0 + 140);
  v57 = *(v0 + 760);
  *(v0 + 464) = v56;
  *(v0 + 465) = *(v0 + 73);
  *(v0 + 468) = *(v0 + 76);
  v58 = *(v0 + 768);
  v59 = *(v0 + 976);
  *(v0 + 472) = v58;
  *(v0 + 488) = v59;
  *(v0 + 504) = v46;
  *(v0 + 512) = v47;
  *(v0 + 520) = v48;
  *(v0 + 400) = v56;
  *(v0 + 401) = *(v0 + 73);
  *(v0 + 404) = *(v0 + 76);
  *(v0 + 408) = v58;
  *(v0 + 424) = v59;
  *(v0 + 440) = v46;
  *(v0 + 448) = v47;
  *(v0 + 456) = v48;
  sub_22DF357B8(v0 + 464, v0 + 16);
  sub_22DF357F0(v0 + 400);
  v61 = *(v0 + 480);
  v60 = *(v0 + 496);
  v62 = *(v0 + 464);
  *(v57 + 41) = *(v0 + 505);
  v57[1] = v61;
  v57[2] = v60;
  *v57 = v62;

  v63 = *(v0 + 8);
  v64 = *MEMORY[0x277D85DE8];

  return v63();
}

uint64_t sub_22DF35414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_22DF35438, 0, 0);
}

uint64_t sub_22DF35438()
{
  v1 = v0[2];
  if (type metadata accessor for SubmitEventsActivity() == v1)
  {
    v4 = v0[4];
    v3 = v0[5];
    v5 = v0[3];

    v6 = sub_22DEEC750(v5, v4, v3);
    v7 = &unk_27DA47A90;
    v8 = type metadata accessor for SubmitEventsActivity;
  }

  else if (type metadata accessor for CacheCleanupActivity() == v1)
  {
    v9 = v0[3];

    v6 = sub_22DF27764(v10);
    v7 = &unk_27DA47AA0;
    v8 = type metadata accessor for CacheCleanupActivity;
  }

  else
  {
    if (type metadata accessor for PostInstallActivity() != v1)
    {
      return sub_22DF64004();
    }

    v6 = sub_22DF05BD4();
    v7 = &unk_27DA47A98;
    v8 = type metadata accessor for PostInstallActivity;
  }

  v11 = sub_22DF35770(v7, v8);
  v12 = v0[1];

  return v12(v6, v11);
}

uint64_t sub_22DF35618()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A88, &qword_22DF68948);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22DF68820;
  type metadata accessor for XPCActivity();
  v1 = type metadata accessor for SubmitEventsActivity();
  v2 = sub_22DF35770(&qword_27DA47A90, type metadata accessor for SubmitEventsActivity);
  *(v0 + 32) = XPCActivity.__allocating_init(handlerType:)(v1, v2);
  v3 = type metadata accessor for PostInstallActivity();
  v4 = sub_22DF35770(&qword_27DA47A98, type metadata accessor for PostInstallActivity);
  *(v0 + 40) = XPCActivity.__allocating_init(handlerType:)(v3, v4);
  v5 = type metadata accessor for CacheCleanupActivity();
  v6 = sub_22DF35770(&qword_27DA47AA0, type metadata accessor for CacheCleanupActivity);
  result = XPCActivity.__allocating_init(handlerType:)(v5, v6);
  *(v0 + 48) = result;
  qword_27DA4E6B8 = v0;
  return result;
}

uint64_t sub_22DF35770(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22DF35820()
{
  result = qword_27DA47A68;
  if (!qword_27DA47A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA47A60, &qword_22DF68858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47A68);
  }

  return result;
}

uint64_t sub_22DF35884(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22DF35934;

  return sub_22DF35414(a1, v8, v9, v4, v5, v6);
}

uint64_t sub_22DF35934(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

unint64_t sub_22DF35A3C()
{
  result = qword_27DA47A80;
  if (!qword_27DA47A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47A80);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_22DF35ABC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22DF35B18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 sub_22DF35BA0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_22DF2E5EC();
  swift_beginAccess();
  v11 = 0;
  if (*v10 == 1)
  {
    v12 = sub_22DF2E958();
    v11 = 5;
    if (!*v12)
    {
      v11 = 1;
    }
  }

  *a5 = v11;
  v13 = *(a3 + 16);
  *(a5 + 8) = *a3;
  *(a5 + 24) = v13;
  result = *(a3 + 32);
  *(a5 + 40) = result;
  *(a5 + 56) = *(a3 + 48);
  *(a5 + 64) = a4 & 1;
  *(a5 + 72) = a1;
  *(a5 + 80) = a2;
  return result;
}

unint64_t sub_22DF35C50()
{
  v1 = type metadata accessor for ServiceEventValue();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = (v23 - v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47AB8, &unk_22DF689C0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47620, &unk_22DF660E0);
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22DF689A0;
  v12 = (v11 + v10);
  v13 = *(v8 + 48);
  *v12 = 0xD00000000000001BLL;
  v12[1] = 0x800000022DF6F280;
  v25 = *(v0 + 24);
  *(v12 + v13) = v25;
  swift_storeEnumTagMultiPayload();
  v14 = (v12 + v9);
  v15 = *(v8 + 48);
  *v14 = 0xD00000000000001FLL;
  v14[1] = 0x800000022DF6F2A0;
  *(v14 + v15) = *v0;
  swift_storeEnumTagMultiPayload();
  v16 = (v12 + 2 * v9);
  v17 = *(v8 + 48);
  *v16 = 0xD000000000000017;
  v16[1] = 0x800000022DF6F2C0;
  v24 = *(v0 + 8);
  *(v16 + v17) = v24;
  swift_storeEnumTagMultiPayload();
  sub_22DF051C0(&v25, v23);
  sub_22DF051C0(&v24, v23);
  v18 = sub_22DEFF370(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v0 + 64))
  {
    v19 = *(v0 + 72);
    v20 = *(v0 + 80);
    *v7 = v19;
    v7[1] = v20;
    swift_storeEnumTagMultiPayload();
    sub_22DEFE894(v7, v5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23[0] = v18;
    sub_22DEFDF04(v5, 0xD000000000000010, 0x800000022DF6F2E0, isUniquelyReferenced_nonNull_native);
    return v23[0];
  }

  return v18;
}

void sub_22DF35F28()
{
  v0 = MobileGestalt_get_current_device();
  if (!v0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v1 = v0;
  v2 = MobileGestalt_copy_deviceName_obj();
  if (!v2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  v4 = sub_22DF639B4();
  v6 = v5;

  v7 = MobileGestalt_copy_marketingProductName_obj();
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v7;
  v9 = sub_22DF639B4();
  v11 = v10;

  v12 = MobileGestalt_copy_productType_obj();
  if (!v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v12;
  v14 = sub_22DF639B4();
  v16 = v15;

  v17 = MobileGestalt_copy_productVersion_obj();
  if (!v17)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = v17;
  v41 = sub_22DF639B4();
  v20 = v19;

  v21 = MobileGestalt_copy_buildVersion_obj();
  if (!v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22 = v21;
  v39 = v20;
  v40 = v14;
  v37 = sub_22DF639B4();
  v38 = v23;

  v24 = sub_22DF2E5EC();
  swift_beginAccess();
  v25 = v16;
  v26 = v9;
  v27 = v11;
  if (*v24 != 1)
  {
    v30 = v4;
    v31 = 0;
    v33 = 0xE000000000000000;
    goto LABEL_11;
  }

  v28 = MobileGestalt_copy_serialNumber_obj();
  if (v28)
  {
    v29 = v28;
    v30 = v4;
    v31 = sub_22DF639B4();
    v33 = v32;

LABEL_11:
    v34 = _s19CloudTelemetryTools21AllEventFieldProviderV17getProjectVersionSSyFZ_0();
    v36 = v35;

    qword_27DA4CD28 = v30;
    qword_27DA4CD30 = v6;
    qword_27DA4CD38 = v26;
    qword_27DA4CD40 = v27;
    qword_27DA4CD48 = v40;
    qword_27DA4CD50 = v25;
    qword_27DA4CD58 = v41;
    qword_27DA4CD60 = v39;
    qword_27DA4CD68 = v37;
    qword_27DA4CD70 = v38;
    qword_27DA4CD78 = v34;
    qword_27DA4CD80 = v36;
    qword_27DA4CD88 = v31;
    qword_27DA4CD90 = v33;
    return;
  }

LABEL_18:
  __break(1u);
}

void sub_22DF36158()
{
  v0 = [objc_opt_self() automatedDeviceGroup];
  if (v0)
  {
    v1 = v0;
    v2 = sub_22DF639B4();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  qword_27DA4CDA0 = v2;
  qword_27DA4CDA8 = v4;
}

void sub_22DF361D0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_22DF63984();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_22DF63984();
    v4 = [v2 BOOLForKey_];
  }

  else
  {
    v4 = 2;
  }

  byte_27DA4CDB8 = v4;
}

uint64_t sub_22DF3629C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_22DF642A4();
  sub_22DF63A54();
  v7 = sub_22DF642D4();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_22DF64184() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_22DF36394@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27DA4CD98 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_27DA4CDA0;
  v3 = qword_27DA4CDA8;
  a1[3] = &type metadata for AllEventFieldProvider.OSASystemConfigurationFields;
  a1[4] = &off_2841953C0;
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_22DF36420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v17;
  v8[14] = v18;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  v8[5] = a1;
  v8[6] = a2;
  v9 = sub_22DF63594();
  v8[15] = v9;
  v10 = *(v9 - 8);
  v8[16] = v10;
  v11 = *(v10 + 64) + 15;
  v8[17] = swift_task_alloc();
  v12 = sub_22DF636A4();
  v8[18] = v12;
  v13 = *(v12 - 8);
  v8[19] = v13;
  v14 = *(v13 + 64) + 15;
  v8[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF36554, 0, 0);
}

uint64_t sub_22DF36554()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  *(v4 + 96) = *(v3 + 6);
  *(v4 + 64) = v6;
  *(v4 + 80) = v7;
  *(v4 + 48) = v5;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v8 = sub_22DF2E5EC();
  swift_beginAccess();
  v9 = 0;
  if (*v8 == 1)
  {
    v10 = sub_22DF2E958();
    v9 = 5;
    if (!*v10)
    {
      v9 = 1;
    }
  }

  v12 = *(v0 + 152);
  v11 = *(v0 + 160);
  v13 = *(v0 + 136);
  v14 = *(v0 + 120);
  v15 = *(v0 + 128);
  v25 = *(v0 + 112);
  v23 = *(v0 + 144);
  v24 = *(v0 + 104);
  v22 = *(v0 + 88);
  v17 = *(v0 + 56);
  v16 = *(v0 + 64);
  v18 = *(v0 + 40);
  *v18 = v9;
  sub_22DF63694();
  sub_22DF63584();
  v19 = sub_22DF63684();
  (*(v15 + 8))(v13, v14);
  (*(v12 + 8))(v11, v23);
  *(v18 + 8) = v19;
  *(v18 + 32) = v17;
  *(v18 + 40) = v16;
  *(v18 + 104) = v22;
  *(v18 + 120) = v24;
  sub_22DF07128(v25, v18 + 128);

  v20 = *(v0 + 8);

  return v20();
}

unint64_t sub_22DF366D8()
{
  v1 = v0;
  v2 = type metadata accessor for ServiceEventValue();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v64 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v63 = (&v61 - v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47AB8, &unk_22DF689C0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47620, &unk_22DF660E0);
  v8 = *(*(v7 - 8) + 72);
  v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22DF689B0;
  v62 = v10;
  v11 = (v10 + v9);
  v12 = (v10 + v9 + *(v7 + 48));
  *v11 = 0x7265646E65735FLL;
  v11[1] = 0xE700000000000000;
  v13 = *(v1 + 48);
  v61 = *(v1 + 56);
  v14 = v61;
  *v12 = v13;
  v12[1] = v14;
  swift_storeEnumTagMultiPayload();
  v15 = (v11 + v8);
  v16 = (v11 + v8 + *(v7 + 48));
  *v15 = 0x7954746E6576655FLL;
  v15[1] = 0xEA00000000006570;
  v17 = *(v1 + 72);
  *v16 = *(v1 + 64);
  v16[1] = v17;
  swift_storeEnumTagMultiPayload();
  v18 = (v11 + 2 * v8);
  v19 = (v18 + *(v7 + 48));
  *v18 = 0x6E6F69737365735FLL;
  v18[1] = 0xEA00000000004449;
  v20 = *(v1 + 24);
  *v19 = *(v1 + 16);
  v19[1] = v20;
  swift_storeEnumTagMultiPayload();
  v21 = (v11 + 3 * v8);
  v22 = *(v7 + 48);
  *v21 = 0x616E7265746E695FLL;
  v21[1] = 0xE90000000000006CLL;
  *(v21 + v22) = *v1;
  swift_storeEnumTagMultiPayload();
  v23 = (v11 + 4 * v8);
  v24 = *(v7 + 48);
  *v23 = 0x6E6F7A656D69745FLL;
  v23[1] = 0xEF74657366664F65;
  *(v23 + v24) = *(v1 + 8);
  swift_storeEnumTagMultiPayload();
  v25 = (v11 + 5 * v8);
  v26 = (v25 + *(v7 + 48));
  *v25 = 0x6449746E65696C63;
  v25[1] = 0xE800000000000000;
  v27 = *(v1 + 40);
  *v26 = *(v1 + 32);
  v26[1] = v27;
  swift_storeEnumTagMultiPayload();
  v28 = v11 + 6 * v8;
  v29 = &v28[*(v7 + 48)];
  strcpy(v28, "_productFamily");
  v28[15] = -18;
  v30 = qword_27DA4CD20;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = qword_27DA4CD30;
  *v29 = qword_27DA4CD28;
  *(v29 + 1) = v31;
  swift_storeEnumTagMultiPayload();
  v32 = (v11 + 7 * v8);
  v33 = (v32 + *(v7 + 48));
  *v32 = 0x656D614E736F5FLL;
  v32[1] = 0xE700000000000000;
  v34 = qword_27DA4CD40;
  *v33 = qword_27DA4CD38;
  v33[1] = v34;
  swift_storeEnumTagMultiPayload();
  v35 = (&v11[v8] + *(v7 + 48));
  strcpy(&v11[v8], "_productModel");
  HIWORD(v11[v8 + 1]) = -4864;
  v36 = qword_27DA4CD50;
  *v35 = qword_27DA4CD48;
  v35[1] = v36;
  swift_storeEnumTagMultiPayload();
  v37 = (v11 + 9 * v8);
  v38 = (v37 + *(v7 + 48));
  *v37 = 0x6973726556736F5FLL;
  v37[1] = 0xEA00000000006E6FLL;
  v39 = qword_27DA4CD60;
  *v38 = qword_27DA4CD58;
  v38[1] = v39;
  swift_storeEnumTagMultiPayload();
  v40 = (v11 + 10 * v8);
  v41 = (v40 + *(v7 + 48));
  *v40 = 0x646C6975625FLL;
  v40[1] = 0xE600000000000000;
  v42 = qword_27DA4CD70;
  *v41 = qword_27DA4CD68;
  v41[1] = v42;
  swift_storeEnumTagMultiPayload();
  v43 = (v11 + 11 * v8);
  v44 = (v43 + *(v7 + 48));
  *v43 = 0x5674726F7065725FLL;
  v43[1] = 0xEB00000000737265;
  v45 = qword_27DA4CD80;
  *v44 = qword_27DA4CD78;
  v44[1] = v45;
  swift_storeEnumTagMultiPayload();

  v46 = sub_22DEFF370(v62);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (!*(v1 + 104))
  {
    goto LABEL_7;
  }

  v66 = *(v1 + 104);
  v67 = *(v1 + 112);
  v47 = sub_22DF37634(&type metadata for EventAllowFilter, &off_2841953D0);
  v48 = sub_22DF3629C(0xD000000000000015, 0x800000022DF6F300, v47);

  if ((v48 & 1) == 0)
  {
    goto LABEL_7;
  }

  v49 = *(v1 + 152);
  v50 = *(v1 + 160);
  __swift_project_boxed_opaque_existential_1((v1 + 128), v49);
  v51 = (*(v50 + 8))(v49, v50);
  if (v52)
  {
    v53 = v63;
    *v63 = v51;
    *(v53 + 8) = v52;
    swift_storeEnumTagMultiPayload();
    v54 = v64;
    sub_22DEFE894(v53, v64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v46;
    sub_22DEFDF04(v54, 0xD000000000000015, 0x800000022DF6F300, isUniquelyReferenced_nonNull_native);
    v46 = v66;
  }

  else
  {
LABEL_7:
    v53 = v63;
    v54 = v64;
  }

  if (qword_27DA4CDB0 != -1)
  {
    swift_once();
  }

  if (byte_27DA4CDB8 != 2)
  {
    *v53 = byte_27DA4CDB8 & 1;
    swift_storeEnumTagMultiPayload();
    sub_22DEFE894(v53, v54);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v66 = v46;
    sub_22DEFDF04(v54, 0x654465726F74735FLL, 0xEE0065646F4D6F6DLL, v56);
    v46 = v66;
  }

  v57 = sub_22DF2E5EC();
  swift_beginAccess();
  if (*v57 == 1)
  {
    v58 = qword_27DA4CD90;
    *v53 = qword_27DA4CD88;
    *(v53 + 8) = v58;
    swift_storeEnumTagMultiPayload();
    sub_22DEFE894(v53, v54);

    v59 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v46;
    sub_22DEFDF04(v54, 0x754E6C6169726553, 0xE90000000000006DLL, v59);
    return v65;
  }

  return v46;
}

unint64_t sub_22DF36E80()
{
  v2 = *v0;
  v1 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47AB8, &unk_22DF689C0);
  v3 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47620, &unk_22DF660E0) - 8);
  v4 = *(*v3 + 72);
  v5 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22DF65900;
  v7 = (v6 + v5);
  v8 = (v7 + v3[14]);
  *v7 = 0x656C61636F4CLL;
  v7[1] = 0xE600000000000000;
  *v8 = v2;
  v8[1] = v1;
  type metadata accessor for ServiceEventValue();
  swift_storeEnumTagMultiPayload();

  v9 = sub_22DEFF370(v6);
  swift_setDeallocating();
  sub_22DEF1364(v7, &qword_27DA47620, &unk_22DF660E0);
  swift_deallocClassInstance();
  return v9;
}

unint64_t sub_22DF36FD8()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47AB8, &unk_22DF689C0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47620, &unk_22DF660E0);
  v5 = *(*(v4 - 8) + 72);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22DF65910;
  v8 = (v7 + v6);
  v9 = (v8 + *(v4 + 48));
  *v8 = 0x67616265726F7453;
  v8[1] = 0xEF6E6F6973726556;
  *v9 = v3;
  v9[1] = v2;
  type metadata accessor for ServiceEventValue();
  swift_storeEnumTagMultiPayload();
  v10 = (v8 + v5);
  v11 = *(v4 + 48);
  *v10 = 0xD000000000000013;
  v10[1] = 0x800000022DF6F320;
  *(v10 + v11) = v1;
  swift_storeEnumTagMultiPayload();

  v12 = sub_22DEFF370(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v12;
}

uint64_t _s19CloudTelemetryTools21AllEventFieldProviderV17getProjectVersionSSyFZ_0()
{
  v0 = 960051513;
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 infoDictionary];

  if (v2)
  {
    v3 = sub_22DF638E4();

    if (*(v3 + 16) && (v4 = sub_22DEF08FC(0x656C646E75424643, 0xEF6E6F6973726556), (v5 & 1) != 0))
    {
      sub_22DEF12A0(*(v3 + 56) + 32 * v4, v8);

      if (swift_dynamicCast())
      {
        return v7;
      }
    }

    else
    {
    }
  }

  return v0;
}

uint64_t sub_22DF372A0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_22DF37310(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22DF37358(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19CloudTelemetryTools16EventAllowFilterVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_22DF37410(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22DF37458(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22DF374E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22DF37528(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_22DF37578(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22DF375D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

uint64_t sub_22DF37634(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();

  return v2;
}

uint64_t sub_22DF37688(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_22DF110A8(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22DF3778C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_22DF377C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_27DA4CDC0 != -1)
  {
    swift_once();
  }

  v6 = qword_27DA4E6C0;

  result = sub_22DF37688(v7, v6);
  *a3 = a1;
  a3[1] = a2;
  a3[2] = result;
  return result;
}

uint64_t sub_22DF378AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v97 = a3;
  v101 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47BC0, &unk_22DF65300);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v112 = &v90 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47628, &unk_22DF68C40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v90 - v9;
  v11 = type metadata accessor for ServiceEventValue();
  v111 = *(v11 - 8);
  v12 = *(v111 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v107 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v106 = (&v90 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v105 = (&v90 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v104 = (&v90 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v109 = (&v90 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v90 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v91 = &v90 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v90 - v28;
  v30 = *(a2 + 56);
  v95 = a2 + 56;
  v31 = 1 << *(a2 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v30;
  v94 = (v31 + 63) >> 6;
  v34 = a2;

  v35 = 0;
  v36 = MEMORY[0x277D84F90];
  v37 = v101;
  v110 = v7;
  v92 = a2;
LABEL_4:
  v103 = v36;
  result = v34;
  v39 = v37;
  while (v33)
  {
    v40 = v33;
LABEL_11:
    v33 = (v40 - 1) & v40;
    v42 = *(v39 + 16);
    if (*(v42 + 16))
    {
      v102 = (v40 - 1) & v40;
      v43 = (*(result + 48) + ((v35 << 10) | (16 * __clz(__rbit64(v40)))));
      v44 = *v43;
      v45 = v43[1];
      v46 = result;

      v96 = v44;
      v47 = sub_22DEF08FC(v44, v45);
      if (v48)
      {
        v93 = v45;
        v49 = *(v42 + 56);
        v117 = *(v111 + 72);
        v50 = v91;
        sub_22DEF0974(v49 + v117 * v47, v91);
        sub_22DEFE894(v50, v29);
        v51 = *(v97 + 16);
        if (!v51)
        {
LABEL_42:
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v34 = v92;
            v36 = v103;
          }

          else
          {
            v36 = sub_22DF03FB0(0, *(v103 + 2) + 1, 1, v103);
            v34 = v92;
          }

          v73 = *(v36 + 2);
          v72 = *(v36 + 3);
          v117 = v73 + 1;
          if (v73 >= v72 >> 1)
          {
            v36 = sub_22DF03FB0((v72 > 1), v73 + 1, 1, v36);
          }

          sub_22DF1904C(v29);
          *(v36 + 2) = v117;
          v74 = &v36[16 * v73];
          v75 = v93;
          *(v74 + 4) = v96;
          *(v74 + 5) = v75;
          v37 = v101;
          v33 = v102;
          goto LABEL_4;
        }

        v52 = v97 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
LABEL_18:
        sub_22DEF0974(v52, v25);
        v53 = &v10[*(v7 + 48)];
        sub_22DEF0974(v25, v10);
        sub_22DEF0974(v29, v53);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          v58 = v7;
          v59 = v29;
          v60 = v109;
          if (!EnumCaseMultiPayload)
          {
            sub_22DEF0974(v10, v109);
            v108 = v60[1];
            if (!swift_getEnumCaseMultiPayload())
            {
              v99 = *v60;
              v66 = *v53;
              v67 = *(v53 + 1);
              v98 = sub_22DF63A24();
              v69 = v68;
              v100 = v68;

              v115 = v98;
              v116 = v69;
              v99 = sub_22DF63A24();
              v71 = v70;

              v113 = v99;
              v114 = v71;
              sub_22DF06E10();
              LODWORD(v108) = sub_22DF63E34();

              sub_22DF1904C(v25);
              sub_22DF1904C(v10);
              v29 = v59;
              v7 = v110;
              if (v108)
              {
LABEL_40:
                sub_22DF1904C(v29);

                v39 = v101;
                v33 = v102;
                result = v92;
                continue;
              }

              goto LABEL_17;
            }

            sub_22DF1904C(v25);

            v29 = v59;
            v7 = v110;
            goto LABEL_16;
          }

          v29 = v59;
          v7 = v58;
          if (EnumCaseMultiPayload != 1)
          {
            goto LABEL_15;
          }

          sub_22DF1904C(v25);
          sub_22DEF0974(v10, v104);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            goto LABEL_16;
          }

          v61 = v104;
        }

        else
        {
          if (EnumCaseMultiPayload != 2)
          {
            if (EnumCaseMultiPayload == 3)
            {
              sub_22DF1904C(v25);
              sub_22DEF0974(v10, v106);
              if (swift_getEnumCaseMultiPayload() == 3)
              {
                v64 = *v106;
                v65 = *v53;
                sub_22DF1904C(v10);
                if (v64 == v65)
                {
                  goto LABEL_40;
                }

                goto LABEL_17;
              }

              goto LABEL_16;
            }

            if (EnumCaseMultiPayload == 4)
            {
              sub_22DF1904C(v25);
              sub_22DEF0974(v10, v107);
              if (swift_getEnumCaseMultiPayload() == 4)
              {
                v55 = *v107;
                v56 = *v53;
                sub_22DF1904C(v10);
                v57 = v55 == v56;
LABEL_31:
                v7 = v110;
                if (v57)
                {
                  goto LABEL_40;
                }

LABEL_17:
                v52 += v117;
                if (!--v51)
                {
                  goto LABEL_42;
                }

                goto LABEL_18;
              }

LABEL_16:
              sub_22DEF1364(v10, &qword_27DA47628, &unk_22DF68C40);
              goto LABEL_17;
            }

LABEL_15:
            sub_22DF1904C(v25);
            goto LABEL_16;
          }

          sub_22DF1904C(v25);
          sub_22DEF0974(v10, v105);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            goto LABEL_16;
          }

          v61 = v105;
        }

        v62 = *v61;
        v63 = *v53;
        sub_22DF1904C(v10);
        v57 = v62 == *&v63;
        goto LABEL_31;
      }

      result = v46;
      v39 = v101;
      v33 = v102;
    }
  }

  while (1)
  {
    v41 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      return result;
    }

    if (v41 >= v94)
    {
      break;
    }

    v40 = *(v95 + 8 * v41);
    ++v35;
    if (v40)
    {
      v35 = v41;
      goto LABEL_11;
    }
  }

  v76 = *(v39 + 16);
  v77 = *(v103 + 2);
  if (v77)
  {
    v78 = (v111 + 56);
    v79 = (v103 + 40);

    v80 = v117;
    do
    {
      v83 = *(v79 - 1);
      v84 = *v79;

      v85 = sub_22DEF08FC(v83, v84);
      v87 = v86;

      if (v87)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v115 = v80;
        v82 = v112;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_22DEFD638();
          v80 = v115;
        }

        v89 = *(*(v80 + 48) + 16 * v85 + 8);

        sub_22DEFE894(*(v80 + 56) + *(v111 + 72) * v85, v82);
        sub_22DEFDD18(v85, v80);
        v81 = 0;
      }

      else
      {
        v81 = 1;
        v82 = v112;
      }

      (*v78)(v82, v81, 1, v11);
      sub_22DEF1364(v82, &qword_27DA47BC0, &unk_22DF65300);
      v79 += 2;
      --v77;
    }

    while (v77);

    v39 = v101;
  }

  else
  {
    v80 = *(v39 + 16);
  }

  *(v39 + 16) = v80;
  return result;
}