uint64_t sub_25848D8B8(uint64_t a1)
{
  v2[60] = a1;
  v2[61] = v1;
  v3 = type metadata accessor for SessionMessage();
  v2[62] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[63] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390) - 8) + 64) + 15;
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v2[66] = v6;
  v7 = *(v6 - 8);
  v2[67] = v7;
  v8 = *(v7 + 64) + 15;
  v2[68] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25848D9F8, v1, 0);
}

uint64_t sub_25848D9F8()
{
  v1 = *(v0 + 488);
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 32))
  {
    v2 = *(v0 + 544);
    v3 = *(v0 + 520);
    v5 = *(v0 + 504);
    v4 = *(v0 + 512);

    v6 = *(v0 + 8);
LABEL_13:

    return v6();
  }

  v7 = *(v0 + 536);
  v8 = *(v0 + 528);
  v9 = *(v0 + 520);
  v10 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_remoteActivationContinuation;
  *(v0 + 552) = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_remoteActivationContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v1 + v10, v9, &unk_27F930DB0, &qword_258536390);
  if ((*(v7 + 48))(v9, 1, v8) == 1)
  {
    sub_258465168(*(v0 + 520), &unk_27F930DB0, &qword_258536390);
    return sub_258533C9C();
  }

  v12 = *(v0 + 488);
  (*(*(v0 + 536) + 32))(*(v0 + 544), *(v0 + 520), *(v0 + 528));
  v13 = v12 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
  swift_beginAccess();
  if (*(v13 + 24))
  {
    sub_258464C30(v13, v0 + 184);
    if (*(v0 + 208))
    {
      goto LABEL_7;
    }

LABEL_10:
    v29 = *(v0 + 544);
    v30 = *(v0 + 536);
    v31 = *(v0 + 528);
    sub_2584A5730();
    swift_allocError();
    *v32 = 8;
    swift_willThrow();
    (*(v30 + 8))(v29, v31);
LABEL_12:
    v37 = *(v0 + 544);
    v38 = *(v0 + 520);
    v40 = *(v0 + 504);
    v39 = *(v0 + 512);

    v6 = *(v0 + 8);
    goto LABEL_13;
  }

  v27 = *v13;
  v28 = *(v13 + 16);
  *(v0 + 216) = *(v13 + 32);
  *(v0 + 200) = v28;
  *(v0 + 184) = v27;
  if (!*(v0 + 208))
  {
    goto LABEL_10;
  }

LABEL_7:
  v14 = *(v0 + 480);
  sub_258464C18((v0 + 184), v0 + 144);
  v15 = type metadata accessor for ActivationRequestInfo();
  *(v0 + 560) = v15;
  v16 = (v14 + *(v15 + 32));
  v17 = *v16;
  *(v0 + 568) = *v16;
  v18 = v16[1];
  *(v0 + 576) = v18;
  v19 = v16[2];
  *(v0 + 584) = v19;
  v20 = v16[3];
  *(v0 + 592) = v20;
  sub_2584A7B8C(v19, v20);
  sub_2584A7B8C(v17, v18);
  sub_2584A7B8C(v19, v20);
  sub_2584A7B8C(v17, v18);
  sub_2584D5658(v19, v20, v17, v18, (v0 + 16));
  if (!*(v0 + 40))
  {
    v33 = *(v0 + 544);
    v34 = *(v0 + 536);
    v35 = *(v0 + 528);
    sub_258465168(v0 + 16, &qword_27F9303A0, &unk_258537F50);
    sub_2584A5730();
    swift_allocError();
    *v36 = 19;
    swift_willThrow();
    sub_258467E20(v19, v20);
    sub_258467E20(v17, v18);
    (*(v34 + 8))(v33, v35);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
    goto LABEL_12;
  }

  v22 = *(v0 + 480);
  v21 = *(v0 + 488);
  *(v0 + 288) = &type metadata for ControlConnectionInfoBackedNetworkPath;
  *(v0 + 296) = &off_28698F588;
  v23 = swift_allocObject();
  *(v0 + 264) = v23;
  v24 = *(v0 + 96);
  v23[5] = *(v0 + 80);
  v23[6] = v24;
  v23[7] = *(v0 + 112);
  *(v23 + 121) = *(v0 + 121);
  v25 = *(v0 + 32);
  v23[1] = *(v0 + 16);
  v23[2] = v25;
  v26 = *(v0 + 64);
  v23[3] = *(v0 + 48);
  v23[4] = v26;
  sub_258464C18((v0 + 264), v0 + 224);
  sub_258493BD8(*(v22 + *(v15 + 28)), *(v22 + *(v15 + 28) + 8), *(v22 + *(v15 + 28) + 16), 1, 0, 0);
  v41 = *(v0 + 488);
  sub_258464C30(v0 + 224, v0 + 304);
  v42 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionPath;
  swift_beginAccess();
  sub_2584AC5D0(v0 + 304, v41 + v42, &qword_27F92FB90, &qword_258535420);
  swift_endAccess();
  if (qword_27F92F958 != -1)
  {
    swift_once();
  }

  v44 = qword_27F93D258;
  v43 = qword_27F93D260;
  v45 = qword_27F92F950;

  if (v45 != -1)
  {
    swift_once();
  }

  v47 = *(v0 + 496);
  v46 = *(v0 + 504);
  v49 = qword_27F93D248;
  v48 = qword_27F93D250;
  v50 = *(v0 + 168);
  v51 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v50);
  *v46 = v44;
  v46[1] = v43;
  v46[2] = v49;
  v46[3] = v48;
  v46[5] = 0;
  v46[6] = 0;
  v46[4] = 1;
  swift_storeEnumTagMultiPayload();
  v52 = *(v51 + 80);

  v56 = (v52 + *v52);
  v53 = v52[1];
  v54 = swift_task_alloc();
  *(v0 + 600) = v54;
  *v54 = v0;
  v54[1] = sub_25848E0AC;
  v55 = *(v0 + 504);

  return v56(v55, v50, v51);
}

uint64_t sub_25848E0AC()
{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v4 = *v1;
  *(*v1 + 608) = v0;

  v5 = *(v2 + 504);
  v6 = *(v2 + 488);
  sub_2584ABB80(v5, type metadata accessor for SessionMessage);
  if (v0)
  {
    v7 = sub_25848E44C;
  }

  else
  {
    v7 = sub_25848E208;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_25848E208()
{
  v30 = v0[73];
  v31 = v0[74];
  v32 = v0[71];
  v33 = v0[72];
  v1 = v0[67];
  v2 = v0[66];
  v34 = v0[64];
  v35 = v0[69];
  v3 = v0[60];
  v4 = v3[1];
  v28 = *v3;
  v29 = v0[68];
  v5 = v3[3];
  v26 = v0[61];
  v27 = v3[2];
  v6 = *(v0[70] + 24);

  v7 = sub_25853294C();
  v9 = v8;
  v11 = v0[31];
  v10 = v0[32];
  __swift_project_boxed_opaque_existential_1(v0 + 28, v11);
  (*(v10 + 8))(v11, v10);
  __swift_project_boxed_opaque_existential_1(v0 + 43, v0[46]);
  LOBYTE(v3) = sub_25847B7F4();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 43);
  v12 = v26 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo;
  v13 = *(v26 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo);
  v14 = *(v26 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 8);
  v15 = *(v26 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 16);
  v16 = *(v26 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 24);
  v17 = *(v26 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 32);
  v18 = *(v26 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 40);
  *v12 = v28;
  *(v12 + 8) = v4;
  *(v12 + 16) = v27;
  *(v12 + 24) = v5;
  *(v12 + 32) = v7;
  *(v12 + 40) = v9;
  v19 = *(v12 + 48);
  *(v12 + 48) = v3;
  sub_2584A5834(v13, v14);
  sub_25853364C();
  sub_258467E20(v30, v31);
  sub_258467E20(v32, v33);
  (*(v1 + 8))(v29, v2);
  (*(v1 + 56))(v34, 1, 1, v2);
  swift_beginAccess();
  sub_2584AC5D0(v34, v26 + v35, &unk_27F930DB0, &qword_258536390);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);
  v20 = v0[68];
  v21 = v0[65];
  v23 = v0[63];
  v22 = v0[64];

  v24 = v0[1];

  return v24();
}

uint64_t sub_25848E44C()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];
  sub_258467E20(v0[73], v0[74]);
  sub_258467E20(v2, v1);
  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 28);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);
  v6 = v0[76];
  v7 = v0[68];
  v8 = v0[65];
  v10 = v0[63];
  v9 = v0[64];

  v11 = v0[1];

  return v11();
}

uint64_t sub_25848E534(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = *(*(type metadata accessor for ActivationRequestInfo() - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for SessionMessage();
  v2[12] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25848E600, v1, 0);
}

uint64_t sub_25848E600()
{
  v43 = v0;
  if (qword_27F92F8C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = sub_258532A4C();
  __swift_project_value_buffer(v4, qword_27F93CFA8);
  sub_2584AC4D0(v2, v1, type metadata accessor for SessionMessage);

  v5 = sub_258532A2C();
  v6 = sub_2585338BC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 112);
  if (v7)
  {
    v9 = *(v0 + 80);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v42[0] = v11;
    *v10 = 136315394;
    sub_258533B8C();

    v42[1] = 0xD000000000000017;
    v42[2] = 0x8000000258540530;
    sub_2585329BC();
    sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v12 = sub_258533DFC();
    MEMORY[0x259C81500](v12);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v13 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v42);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = sub_2584B019C();
    v16 = v15;
    sub_2584ABB80(v8, type metadata accessor for SessionMessage);
    v17 = sub_2584713B0(v14, v16, v42);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_25845E000, v5, v6, "%s received message:%s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v11, -1, -1);
    MEMORY[0x259C82900](v10, -1, -1);
  }

  else
  {

    sub_2584ABB80(v8, type metadata accessor for SessionMessage);
  }

  v18 = *(v0 + 96);
  sub_2584AC4D0(*(v0 + 72), *(v0 + 104), type metadata accessor for SessionMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v24 = *(v0 + 104);
      v25 = *v24;
      *(v0 + 152) = *v24;
      v26 = v24[1];
      *(v0 + 160) = v26;
      v27 = v24[2];
      *(v0 + 168) = v27;
      v28 = v24[3];
      *(v0 + 176) = v28;
      v29 = swift_task_alloc();
      *(v0 + 184) = v29;
      *v29 = v0;
      v29[1] = sub_25848EFC0;
      v30 = *(v0 + 80);

      return sub_25848F7E0(v25, v26, v27, v28);
    }

    else
    {
      v37 = byte_2585383A2[**(v0 + 104)];
      sub_2584A5730();
      v38 = swift_allocError();
      *(v0 + 200) = v38;
      *v39 = v37;
      v40 = swift_task_alloc();
      *(v0 + 208) = v40;
      *v40 = v0;
      v40[1] = sub_25848F1D0;
      v41 = *(v0 + 80);

      return sub_258491E14(v38);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v31 = *(v0 + 104);
    v33 = v31[1];
    v32 = v31[2];
    v34 = *v31;
    *(v0 + 64) = *(v31 + 6);
    *(v0 + 32) = v33;
    *(v0 + 48) = v32;
    *(v0 + 16) = v34;
    v35 = swift_task_alloc();
    *(v0 + 136) = v35;
    *v35 = v0;
    v35[1] = sub_25848EDB4;
    v36 = *(v0 + 80);

    return sub_25848D368(v0 + 16);
  }

  else
  {
    sub_2584A9D40(*(v0 + 104), *(v0 + 88), type metadata accessor for ActivationRequestInfo);
    v20 = swift_task_alloc();
    *(v0 + 120) = v20;
    *v20 = v0;
    v20[1] = sub_25848EBA0;
    v22 = *(v0 + 80);
    v21 = *(v0 + 88);

    return sub_25848D8B8(v21);
  }
}

uint64_t sub_25848EBA0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v5 = swift_task_alloc();
    *(v2 + 216) = v5;
    *v5 = v4;
    v5[1] = sub_25848F2FC;
    v6 = v0;
    v7 = *(v2 + 80);

    return sub_258491E14(v6);
  }

  else
  {
    v9 = *(v2 + 80);

    return MEMORY[0x2822009F8](sub_25848ED24, v9, 0);
  }
}

uint64_t sub_25848ED24()
{
  sub_2584ABB80(v0[11], type metadata accessor for ActivationRequestInfo);
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_25848EDB4()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    sub_2584A7C28(v2 + 16);
    v5 = swift_task_alloc();
    *(v2 + 224) = v5;
    *v5 = v4;
    v5[1] = sub_25848F4A4;
    v6 = v0;
    v7 = *(v2 + 80);

    return sub_258491E14(v6);
  }

  else
  {
    v9 = *(v2 + 80);
    sub_2584A7C28(v2 + 16);

    return MEMORY[0x2822009F8](sub_25848EF4C, v9, 0);
  }
}

uint64_t sub_25848EF4C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_25848EFC0()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = swift_task_alloc();
    *(v2 + 232) = v5;
    *v5 = v4;
    v5[1] = sub_25848F630;
    v6 = v0;
    v7 = *(v2 + 80);

    return sub_258491E14(v6);
  }

  else
  {
    v9 = *(v2 + 80);

    return MEMORY[0x2822009F8](sub_25848F144, v9, 0);
  }
}

uint64_t sub_25848F144()
{
  v1 = v0[21];
  v2 = v0[22];
  sub_258467E20(v0[19], v0[20]);
  sub_258467E20(v1, v2);
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];

  v6 = v0[1];

  return v6();
}

uint64_t sub_25848F1D0()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2584AC7E8, v3, 0);
}

uint64_t sub_25848F2FC()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25848F40C, v2, 0);
}

uint64_t sub_25848F40C()
{
  sub_2584ABB80(*(v0 + 88), type metadata accessor for ActivationRequestInfo);
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25848F4A4()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25848F5B4, v2, 0);
}

uint64_t sub_25848F5B4()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25848F630()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25848F740, v2, 0);
}

uint64_t sub_25848F740()
{
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  sub_258467E20(v0[19], v0[20]);
  sub_258467E20(v3, v2);

  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[11];

  v7 = v0[1];

  return v7();
}

uint64_t sub_25848F7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[31] = a4;
  v5[32] = v4;
  v5[29] = a2;
  v5[30] = a3;
  v5[28] = a1;
  return MEMORY[0x2822009F8](sub_25848F808, v4, 0);
}

uint64_t sub_25848F808()
{
  v49 = v0;
  if (*(*(v0 + 256) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 32))
  {
    if (qword_27F92F8C8 != -1)
    {
      swift_once();
      v43 = *(v0 + 256);
    }

    v1 = sub_258532A4C();
    __swift_project_value_buffer(v1, qword_27F93CFA8);

    v2 = sub_258532A2C();
    v3 = sub_2585338CC();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 256);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v46 = v6;
      *v5 = 136315138;
      sub_258533B8C();

      v47 = 0xD000000000000017;
      v48 = 0x8000000258540530;
      sub_2585329BC();
      sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
      v7 = sub_258533DFC();
      MEMORY[0x259C81500](v7);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v8 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, &v46);

      *(v5 + 4) = v8;
      _os_log_impl(&dword_25845E000, v2, v3, "%s unexpected controlConnectionPathUpdate received on client", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x259C82900](v6, -1, -1);
      MEMORY[0x259C82900](v5, -1, -1);
    }

LABEL_6:

    goto LABEL_7;
  }

  v11 = *(v0 + 240);
  v12 = *(v0 + 248);
  v14 = *(v0 + 224);
  v13 = *(v0 + 232);
  sub_2584A7B8C(v11, v12);
  sub_2584A7B8C(v14, v13);
  sub_2584A7B8C(v11, v12);
  sub_2584A7B8C(v14, v13);
  sub_2584D5658(v11, v12, v14, v13, (v0 + 16));
  if (!*(v0 + 40))
  {
    sub_258465168(v0 + 16, &qword_27F9303A0, &unk_258537F50);
    if (qword_27F92F8C8 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 256);
    v25 = sub_258532A4C();
    __swift_project_value_buffer(v25, qword_27F93CFA8);

    v2 = sub_258532A2C();
    v26 = sub_2585338CC();

    if (os_log_type_enabled(v2, v26))
    {
      v28 = *(v0 + 248);
      v27 = *(v0 + 256);
      v29 = *(v0 + 240);
      v44 = *(v0 + 224);
      v45 = *(v0 + 232);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v46 = v31;
      *v30 = 136315138;
      sub_258533B8C();

      v47 = 0xD000000000000017;
      v48 = 0x8000000258540530;
      sub_2585329BC();
      sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
      v32 = sub_258533DFC();
      MEMORY[0x259C81500](v32);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v33 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, &v46);

      *(v30 + 4) = v33;
      _os_log_impl(&dword_25845E000, v2, v26, "%s invalid controlConnectionPathUpdate", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x259C82900](v31, -1, -1);
      MEMORY[0x259C82900](v30, -1, -1);
      sub_258467E20(v29, v28);
      sub_258467E20(v44, v45);
    }

    else
    {
      v40 = *(v0 + 224);
      v39 = *(v0 + 232);
      sub_258467E20(*(v0 + 240), *(v0 + 248));
      sub_258467E20(v40, v39);
    }

    goto LABEL_6;
  }

  v15 = *(v0 + 256);
  *(v0 + 208) = &type metadata for ControlConnectionInfoBackedNetworkPath;
  *(v0 + 216) = &off_28698F588;
  v16 = swift_allocObject();
  *(v0 + 184) = v16;
  v17 = *(v0 + 96);
  v16[5] = *(v0 + 80);
  v16[6] = v17;
  v16[7] = *(v0 + 112);
  *(v16 + 121) = *(v0 + 121);
  v18 = *(v0 + 32);
  v16[1] = *(v0 + 16);
  v16[2] = v18;
  v19 = *(v0 + 64);
  v16[3] = *(v0 + 48);
  v16[4] = v19;
  sub_258464C18((v0 + 184), v0 + 144);
  __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
  sub_2584D60FC(v0 + 16);
  sub_258488DB8(v0 + 16);
  sub_258465168(v0 + 16, &qword_27F92FB70, &qword_2585353E8);
  sub_258464C30(v0 + 144, v0 + 16);
  v20 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionPath;
  swift_beginAccess();
  sub_2584AC5D0(v0 + 16, v15 + v20, &qword_27F92FB90, &qword_258535420);
  swift_endAccess();
  sub_258483754();
  v21 = *(v0 + 256);
  v22 = *(v0 + 168);
  v23 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), v22);
  (*(v23 + 8))(v22, v23);
  if (*(v21 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state) == 2 && *(v0 + 208))
  {
    v34 = *(v0 + 248);
    v36 = *(v0 + 232);
    v35 = *(v0 + 240);
    v37 = *(v0 + 224);
    __swift_project_boxed_opaque_existential_1((*(v0 + 256) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider), *(*(v0 + 256) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider + 24));
    *(v0 + 16) = 1;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 49) = 0u;
    *(v0 + 65) = 8;
    v38 = off_286990988;
    type metadata accessor for TelemetryProvider();
    v38(v0 + 16);
    sub_258467E20(v35, v34);
    sub_258467E20(v37, v36);
    sub_2584A57D8(v0 + 16);
  }

  else
  {
    v41 = *(v0 + 224);
    v42 = *(v0 + 232);
    sub_258467E20(*(v0 + 240), *(v0 + 248));
    sub_258467E20(v41, v42);
  }

  sub_258465168(v0 + 184, &qword_27F92FB70, &qword_2585353E8);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
LABEL_7:
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_258490008(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v13 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_remoteActivationContinuation;
  swift_beginAccess();
  sub_2584AC5D0(v8, a2 + v11, &unk_27F930DB0, &qword_258536390);
  swift_endAccess();
  return sub_258485038();
}

uint64_t sub_258490178(uint64_t a1)
{
  v2[60] = a1;
  v2[61] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v2[62] = v3;
  v4 = *(v3 - 8);
  v2[63] = v4;
  v5 = *(v4 + 64) + 15;
  v2[64] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F930DB0, &qword_258536390) - 8) + 64) + 15;
  v2[65] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25849027C, v1, 0);
}

uint64_t sub_25849027C()
{
  v1 = *(v0 + 488) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
  swift_beginAccess();
  if (*(v1 + 24))
  {
    sub_258464C30(v1, v0 + 16);
    if (*(v0 + 40))
    {
LABEL_3:
      sub_258464C30(v0 + 16, v0 + 296);
      if (*(v0 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      }

      v2 = *(v0 + 320);
      v3 = *(v0 + 328);
      __swift_project_boxed_opaque_existential_1((v0 + 296), v2);
      v4 = *(v3 + 72);
      v15 = (v4 + *v4);
      v5 = v4[1];
      v6 = swift_task_alloc();
      *(v0 + 528) = v6;
      *v6 = v0;
      v6[1] = sub_25849055C;

      return v15(v2, v3);
    }
  }

  else
  {
    v8 = *v1;
    v9 = *(v1 + 16);
    *(v0 + 48) = *(v1 + 32);
    *(v0 + 16) = v8;
    *(v0 + 32) = v9;
    if (*(v0 + 40))
    {
      goto LABEL_3;
    }
  }

  sub_2584AC3B8(*(v0 + 488) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionMigrationManager, v0 + 56, &qword_27F930360, &unk_258537A90);
  v10 = *(v0 + 80);
  if (v10)
  {
    v11 = *__swift_project_boxed_opaque_existential_1((v0 + 56), v10);
    v12 = swift_task_alloc();
    *(v0 + 536) = v12;
    *v12 = v0;
    v12[1] = sub_2584907DC;

    return sub_258463534();
  }

  else
  {
    sub_258465168(v0 + 56, &qword_27F930360, &unk_258537A90);
    v13 = *(*(v0 + 488) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_videoStreamManager);
    v14 = swift_task_alloc();
    *(v0 + 544) = v14;
    *v14 = v0;
    v14[1] = sub_2584909A4;

    return sub_2584A0EF8();
  }
}

uint64_t sub_25849055C()
{
  v1 = *(*v0 + 528);
  v2 = *(*v0 + 488);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25849066C, v2, 0);
}

uint64_t sub_25849066C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 37);
  sub_2584AC3B8(v0[61] + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionMigrationManager, (v0 + 7), &qword_27F930360, &unk_258537A90);
  v1 = v0[10];
  if (v1)
  {
    v2 = *__swift_project_boxed_opaque_existential_1(v0 + 7, v1);
    v3 = swift_task_alloc();
    v0[67] = v3;
    *v3 = v0;
    v3[1] = sub_2584907DC;

    return sub_258463534();
  }

  else
  {
    sub_258465168((v0 + 7), &qword_27F930360, &unk_258537A90);
    v5 = *(v0[61] + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_videoStreamManager);
    v6 = swift_task_alloc();
    v0[68] = v6;
    *v6 = v0;
    v6[1] = sub_2584909A4;

    return sub_2584A0EF8();
  }
}

uint64_t sub_2584907DC()
{
  v1 = *(*v0 + 536);
  v2 = *(*v0 + 488);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2584908EC, v2, 0);
}

uint64_t sub_2584908EC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = *(v0[61] + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_videoStreamManager);
  v2 = swift_task_alloc();
  v0[68] = v2;
  *v2 = v0;
  v2[1] = sub_2584909A4;

  return sub_2584A0EF8();
}

uint64_t sub_2584909A4()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 488);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_258490AB4, v2, 0);
}

uint64_t sub_258490AB4()
{
  v1 = *(*(v0 + 488) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_audioStreamManager);
  v2 = swift_task_alloc();
  *(v0 + 552) = v2;
  *v2 = v0;
  v2[1] = sub_258490B64;

  return sub_2584A1618();
}

uint64_t sub_258490B64()
{
  v1 = *(*v0 + 552);
  v2 = *(*v0 + 488);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_258490C74, v2, 0);
}

uint64_t sub_258490C74()
{
  v1 = *(v0 + 488);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_coexSession;
  swift_beginAccess();
  sub_2584AC3B8(v1 + v2, v0 + 96, &qword_27F930358, &qword_258537A88);
  if (*(v0 + 120))
  {
    sub_258464C30(v0 + 96, v0 + 256);
    sub_258465168(v0 + 96, &qword_27F930358, &qword_258537A88);
    v3 = *__swift_project_boxed_opaque_existential_1((v0 + 256), *(v0 + 280));
    v4 = swift_task_alloc();
    *(v0 + 560) = v4;
    *v4 = v0;
    v4[1] = sub_25849110C;

    return sub_258469FC0();
  }

  else
  {
    sub_258465168(v0 + 96, &qword_27F930358, &qword_258537A88);
    v6 = *(v0 + 520);
    v7 = *(v0 + 496);
    v8 = *(v0 + 504);
    v9 = *(v0 + 488);
    v10 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_remoteActivationContinuation;
    swift_beginAccess();
    sub_2584AC3B8(v9 + v10, v6, &unk_27F930DB0, &qword_258536390);
    v11 = (*(v8 + 48))(v6, 1, v7);
    v12 = *(v0 + 520);
    if (v11)
    {
      sub_258465168(*(v0 + 520), &unk_27F930DB0, &qword_258536390);
    }

    else
    {
      v14 = *(v0 + 504);
      v13 = *(v0 + 512);
      v15 = *(v0 + 496);
      v16 = *(v0 + 480);
      (*(v14 + 16))(v13, *(v0 + 520), v15);
      sub_258465168(v12, &unk_27F930DB0, &qword_258536390);
      *(v0 + 464) = v16;
      v17 = v16;
      sub_25853363C();
      (*(v14 + 8))(v13, v15);
    }

    v18 = *(v0 + 488);
    if (*(v18 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionEventMonitor))
    {
      v19 = *(v18 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionEventMonitor);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      sub_25853374C();

      v18 = *(v0 + 488);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930210, &qword_258537998);
    sub_2585336DC();
    v20 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendingTask;
    if (*(v18 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendingTask))
    {
      v21 = *(v18 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendingTask);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930198, &qword_258537910);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      sub_25853374C();

      v22 = *(v18 + v20);
    }

    v23 = *(v0 + 488);
    *(v18 + v20) = 0;

    *(v0 + 168) = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    v24 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizer;
    swift_beginAccess();
    sub_2584AC5D0(v0 + 136, v23 + v24, &qword_27F930340, &qword_258537A68);
    swift_endAccess();
    v25 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSyncHeartbeat;
    swift_beginAccess();
    sub_2584AC3B8(v23 + v25, v0 + 176, &qword_27F930348, &qword_258537A70);
    if (*(v0 + 200))
    {
      sub_258464C30(v0 + 176, v0 + 216);
      sub_258465168(v0 + 176, &qword_27F930348, &qword_258537A70);
      v26 = *__swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
      sub_258510D54();
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));
    }

    else
    {
      sub_258465168(v0 + 176, &qword_27F930348, &qword_258537A70);
    }

    v27 = *__swift_project_boxed_opaque_existential_1((*(v0 + 488) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider), *(*(v0 + 488) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider + 24));
    v28 = swift_task_alloc();
    *(v0 + 576) = v28;
    *v28 = v0;
    v28[1] = sub_258491AE8;

    return sub_2584FF510();
  }
}

uint64_t sub_25849110C()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v4 = *v1;
  *(*v1 + 568) = v0;

  v5 = *(v2 + 488);
  if (v0)
  {
    v6 = sub_2584915DC;
  }

  else
  {
    v6 = sub_258491238;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_258491238()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
  v1 = *(v0 + 520);
  v2 = *(v0 + 496);
  v3 = *(v0 + 504);
  v4 = *(v0 + 488);
  v5 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_remoteActivationContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v4 + v5, v1, &unk_27F930DB0, &qword_258536390);
  if ((*(v3 + 48))(v1, 1, v2))
  {
    sub_258465168(*(v0 + 520), &unk_27F930DB0, &qword_258536390);
  }

  else
  {
    v6 = *(v0 + 520);
    v8 = *(v0 + 504);
    v7 = *(v0 + 512);
    v9 = *(v0 + 496);
    v10 = *(v0 + 480);
    (*(v8 + 16))(v7, v6, v9);
    sub_258465168(v6, &unk_27F930DB0, &qword_258536390);
    *(v0 + 464) = v10;
    v11 = v10;
    sub_25853363C();
    (*(v8 + 8))(v7, v9);
  }

  v12 = *(v0 + 488);
  if (*(v12 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionEventMonitor))
  {
    v13 = *(v12 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionEventMonitor);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();

    v12 = *(v0 + 488);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930210, &qword_258537998);
  sub_2585336DC();
  v14 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendingTask;
  if (*(v12 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendingTask))
  {
    v15 = *(v12 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendingTask);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930198, &qword_258537910);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();

    v16 = *(v12 + v14);
  }

  v17 = *(v0 + 488);
  *(v12 + v14) = 0;

  *(v0 + 168) = 0;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  v18 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizer;
  swift_beginAccess();
  sub_2584AC5D0(v0 + 136, v17 + v18, &qword_27F930340, &qword_258537A68);
  swift_endAccess();
  v19 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSyncHeartbeat;
  swift_beginAccess();
  sub_2584AC3B8(v17 + v19, v0 + 176, &qword_27F930348, &qword_258537A70);
  if (*(v0 + 200))
  {
    sub_258464C30(v0 + 176, v0 + 216);
    sub_258465168(v0 + 176, &qword_27F930348, &qword_258537A70);
    v20 = *__swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
    sub_258510D54();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));
  }

  else
  {
    sub_258465168(v0 + 176, &qword_27F930348, &qword_258537A70);
  }

  v21 = *__swift_project_boxed_opaque_existential_1((*(v0 + 488) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider), *(*(v0 + 488) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider + 24));
  v22 = swift_task_alloc();
  *(v0 + 576) = v22;
  *v22 = v0;
  v22[1] = sub_258491AE8;

  return sub_2584FF510();
}

uint64_t sub_2584915DC()
{
  v39 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
  if (qword_27F92F8C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 568);
  v2 = sub_258532A4C();
  __swift_project_value_buffer(v2, qword_27F93CFA8);
  v3 = v1;
  v4 = sub_258532A2C();
  v5 = sub_2585338CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 568);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v38 = v9;
    *v8 = 136315138;
    *(v0 + 472) = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    v11 = sub_25853347C();
    v13 = sub_2584713B0(v11, v12, &v38);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_25845E000, v4, v5, "Failed to stop coex sesion, error=%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x259C82900](v9, -1, -1);
    MEMORY[0x259C82900](v8, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 520);
  v15 = *(v0 + 496);
  v16 = *(v0 + 504);
  v17 = *(v0 + 488);
  v18 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_remoteActivationContinuation;
  swift_beginAccess();
  sub_2584AC3B8(v17 + v18, v14, &unk_27F930DB0, &qword_258536390);
  v19 = (*(v16 + 48))(v14, 1, v15);
  v20 = *(v0 + 520);
  if (v19)
  {
    sub_258465168(*(v0 + 520), &unk_27F930DB0, &qword_258536390);
  }

  else
  {
    v22 = *(v0 + 504);
    v21 = *(v0 + 512);
    v23 = *(v0 + 496);
    v24 = *(v0 + 480);
    (*(v22 + 16))(v21, *(v0 + 520), v23);
    sub_258465168(v20, &unk_27F930DB0, &qword_258536390);
    *(v0 + 464) = v24;
    v25 = v24;
    sub_25853363C();
    (*(v22 + 8))(v21, v23);
  }

  v26 = *(v0 + 488);
  if (*(v26 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionEventMonitor))
  {
    v27 = *(v26 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionEventMonitor);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();

    v26 = *(v0 + 488);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930210, &qword_258537998);
  sub_2585336DC();
  v28 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendingTask;
  if (*(v26 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendingTask))
  {
    v29 = *(v26 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendingTask);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930198, &qword_258537910);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    sub_25853374C();

    v30 = *(v26 + v28);
  }

  v31 = *(v0 + 488);
  *(v26 + v28) = 0;

  *(v0 + 168) = 0;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  v32 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizer;
  swift_beginAccess();
  sub_2584AC5D0(v0 + 136, v31 + v32, &qword_27F930340, &qword_258537A68);
  swift_endAccess();
  v33 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSyncHeartbeat;
  swift_beginAccess();
  sub_2584AC3B8(v31 + v33, v0 + 176, &qword_27F930348, &qword_258537A70);
  if (*(v0 + 200))
  {
    sub_258464C30(v0 + 176, v0 + 216);
    sub_258465168(v0 + 176, &qword_27F930348, &qword_258537A70);
    v34 = *__swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
    sub_258510D54();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));
  }

  else
  {
    sub_258465168(v0 + 176, &qword_27F930348, &qword_258537A70);
  }

  v35 = *__swift_project_boxed_opaque_existential_1((*(v0 + 488) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider), *(*(v0 + 488) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider + 24));
  v36 = swift_task_alloc();
  *(v0 + 576) = v36;
  *v36 = v0;
  v36[1] = sub_258491AE8;

  return sub_2584FF510();
}

uint64_t sub_258491AE8()
{
  v2 = *(*v1 + 576);
  v3 = *v1;
  v3[73] = v0;

  if (v0)
  {
    v4 = v3[61];

    return MEMORY[0x2822009F8](sub_258491C30, v4, 0);
  }

  else
  {
    v5 = v3[65];
    v6 = v3[64];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_258491C30()
{
  v19 = v0;
  if (qword_27F92F8F8 != -1)
  {
    swift_once();
  }

  v1 = v0[73];
  v2 = sub_258532A4C();
  __swift_project_value_buffer(v2, qword_27F93D038);
  v3 = v1;
  v4 = sub_258532A2C();
  v5 = sub_2585338CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[73];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v0[57] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
    v11 = sub_25853347C();
    v13 = sub_2584713B0(v11, v12, &v18);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_25845E000, v4, v5, "Failed to invalidate telemetry provider: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x259C82900](v9, -1, -1);
    MEMORY[0x259C82900](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[65];
  v15 = v0[64];

  v16 = v0[1];

  return v16();
}

uint64_t sub_258491E14(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = type metadata accessor for SessionMessage();
  v2[17] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303A8, &unk_258537F60);
  v2[19] = v5;
  v6 = *(v5 - 8);
  v2[20] = v6;
  v7 = *(v6 + 64) + 15;
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258491F10, v1, 0);
}

uint64_t sub_258491F10()
{
  v44 = v0;
  v1 = *(v0 + 128);
  v2 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state;
  if (*(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state) > 2u)
  {
    v30 = *(v0 + 168);
    v31 = *(v0 + 144);

    v32 = *(v0 + 8);

    return v32();
  }

  else
  {
    v3 = *(v0 + 128);
    if (qword_27F92F8C8 != -1)
    {
      swift_once();
      v40 = *(v0 + 128);
    }

    v4 = *(v0 + 120);
    v5 = sub_258532A4C();
    __swift_project_value_buffer(v5, qword_27F93CFA8);

    v6 = v4;
    v7 = sub_258532A2C();
    v8 = sub_2585338CC();

    if (os_log_type_enabled(v7, v8))
    {
      v41 = *(v0 + 128);
      v42 = *(v0 + 120);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v43[0] = v11;
      *v9 = 136315394;
      sub_258533B8C();

      v43[1] = 0xD000000000000017;
      v43[2] = 0x8000000258540530;
      sub_2585329BC();
      sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
      v12 = sub_258533DFC();
      MEMORY[0x259C81500](v12);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v13 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v43);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2112;
      v14 = v42;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v15;
      *v10 = v15;
      _os_log_impl(&dword_25845E000, v7, v8, "%s interrupted, error:%@", v9, 0x16u);
      sub_258465168(v10, &qword_27F92FBC0, &qword_258537930);
      MEMORY[0x259C82900](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x259C82900](v11, -1, -1);
      MEMORY[0x259C82900](v9, -1, -1);
    }

    v17 = *(v0 + 160);
    v16 = *(v0 + 168);
    v18 = *(v0 + 152);
    v20 = *(v0 + 120);
    v19 = *(v0 + 128);
    *(v1 + v2) = 4;
    *(v0 + 96) = v20;
    *(v0 + 104) = 0x8000000000000000;
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930210, &qword_258537998);
    sub_2585336CC();
    (*(v17 + 8))(v16, v18);
    if (sub_2584AA770(v20))
    {
      v23 = *(v0 + 136);
      v22 = *(v0 + 144);
      v24 = *(v0 + 120);
      swift_getErrorValue();
      v25 = *(v0 + 72);
      *v22 = sub_25852F0FC(*(v0 + 80), *(v0 + 88));
      swift_storeEnumTagMultiPayload();
      v26 = swift_task_alloc();
      *(v0 + 176) = v26;
      *v26 = v0;
      v26[1] = sub_25849241C;
      v27 = *(v0 + 144);
      v28 = *(v0 + 128);

      return sub_25849279C(v27);
    }

    else
    {
      v34 = *(v0 + 120);
      v33 = *(v0 + 128);
      *(v0 + 16) = v34;
      *(v0 + 65) = 2;
      __swift_project_boxed_opaque_existential_1((v33 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider), *(v33 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider + 24));
      v35 = off_286990988;
      v36 = v34;
      type metadata accessor for TelemetryProvider();
      v35(v0 + 16);
      sub_2584A57D8(v0 + 16);
      v37 = swift_task_alloc();
      *(v0 + 184) = v37;
      *v37 = v0;
      v37[1] = sub_258492670;
      v38 = *(v0 + 120);
      v39 = *(v0 + 128);

      return sub_258490178(v38);
    }
  }
}

uint64_t sub_25849241C()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 128);
  v5 = *v0;

  sub_2584ABB80(v2, type metadata accessor for SessionMessage);

  return MEMORY[0x2822009F8](sub_25849255C, v3, 0);
}

uint64_t sub_25849255C()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  *(v0 + 16) = v2;
  *(v0 + 65) = 2;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider), *(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider + 24));
  v3 = off_286990988;
  v4 = v2;
  type metadata accessor for TelemetryProvider();
  v3(v0 + 16);
  sub_2584A57D8(v0 + 16);
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *v5 = v0;
  v5[1] = sub_258492670;
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);

  return sub_258490178(v6);
}

uint64_t sub_258492670()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v7 = *v0;

  v3 = *(v1 + 168);
  v4 = *(v1 + 144);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_25849279C(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = *(*(type metadata accessor for SessionMessage() - 8) + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25849282C, v1, 0);
}

uint64_t sub_25849282C()
{
  v1 = *(v0 + 128) + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
  swift_beginAccess();
  if (*(v1 + 24))
  {
    sub_258464C30(v1, v0 + 16);
    if (*(v0 + 40))
    {
LABEL_3:
      sub_258464C30(v0 + 16, v0 + 56);
      if (*(v0 + 40))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      }

      v2 = *(v0 + 80);
      v3 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v2);
      v4 = *(v3 + 80);
      v13 = (v4 + *v4);
      v5 = v4[1];
      v6 = swift_task_alloc();
      *(v0 + 144) = v6;
      *v6 = v0;
      v6[1] = sub_258492A40;
      v7 = *(v0 + 120);

      return v13(v7, v2, v3);
    }
  }

  else
  {
    v9 = *v1;
    v10 = *(v1 + 16);
    *(v0 + 48) = *(v1 + 32);
    *(v0 + 16) = v9;
    *(v0 + 32) = v10;
    if (*(v0 + 40))
    {
      goto LABEL_3;
    }
  }

  v11 = *(MEMORY[0x277D857E8] + 4);
  v12 = swift_task_alloc();
  *(v0 + 160) = v12;
  *v12 = v0;
  v12[1] = sub_258492C0C;

  return MEMORY[0x282200480](250000000);
}

uint64_t sub_258492A40()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    v6 = sub_258492D20;
  }

  else
  {
    v6 = sub_258492B6C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_258492B6C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = *(MEMORY[0x277D857E8] + 4);
  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  *v2 = v0;
  v2[1] = sub_258492C0C;

  return MEMORY[0x282200480](250000000);
}

uint64_t sub_258492C0C()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;

  if (v0)
  {
  }

  v5 = *(v2 + 136);

  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_258492D20()
{
  v23 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  if (qword_27F92F8C8 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = sub_258532A4C();
  __swift_project_value_buffer(v4, qword_27F93CFA8);
  sub_2584AC4D0(v3, v1, type metadata accessor for SessionMessage);

  v5 = sub_258532A2C();
  v6 = sub_2585338CC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[19];
  v9 = v0[17];
  if (v7)
  {
    v10 = v0[16];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22[0] = v12;
    *v11 = 136315394;
    sub_258533B8C();

    v22[1] = 0xD000000000000017;
    v22[2] = 0x8000000258540530;
    sub_2585329BC();
    sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v13 = sub_258533DFC();
    MEMORY[0x259C81500](v13);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v14 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v22);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v15 = sub_2584B019C();
    v17 = v16;
    sub_2584ABB80(v9, type metadata accessor for SessionMessage);
    v18 = sub_2584713B0(v15, v17, v22);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_25845E000, v5, v6, "%s failed to send message %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v12, -1, -1);
    MEMORY[0x259C82900](v11, -1, -1);
  }

  else
  {

    sub_2584ABB80(v9, type metadata accessor for SessionMessage);
  }

  v19 = *(MEMORY[0x277D857E8] + 4);
  v20 = swift_task_alloc();
  v0[20] = v20;
  *v20 = v0;
  v20[1] = sub_258492C0C;

  return MEMORY[0x282200480](250000000);
}

uint64_t sub_25849307C()
{
  v1[35] = v0;
  v2 = sub_258532D2C();
  v1[36] = v2;
  v3 = *(v2 - 8);
  v1[37] = v3;
  v4 = *(v3 + 64) + 15;
  v1[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25849313C, v0, 0);
}

uint64_t sub_25849313C()
{
  v1 = *(v0 + 280);
  v2 = v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint;
  v3 = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 32);
  *(v0 + 312) = *(v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 40);
  if (v3)
  {
    *(v0 + 320) = *(v2 + 48);

    v4 = v1 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
    swift_beginAccess();
    if (*(v4 + 24))
    {
      sub_258464C30(v4, v0 + 56);
    }

    else
    {
      v7 = *v4;
      v8 = *(v4 + 16);
      *(v0 + 88) = *(v4 + 32);
      *(v0 + 72) = v8;
      *(v0 + 56) = v7;
    }

    v9 = *(v0 + 80);
    *(v0 + 328) = v9;
    if (v9)
    {
      v10 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v9);
      v11 = *(v9 - 8);
      v12 = v11;
      *(v0 + 336) = v11;
      v13 = *(v11 + 64) + 15;
      *(v0 + 344) = swift_task_alloc();
      (*(v12 + 16))();
      if (*(v0 + 80))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
      }

      v14 = *(v10 + 104);
      v20 = (v14 + *v14);
      v15 = v14[1];
      v16 = swift_task_alloc();
      *(v0 + 352) = v16;
      *v16 = v0;
      v16[1] = sub_258493418;

      return v20(v0 + 16, v9, v10);
    }

    if (*(v0 + 80))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    }

    sub_2584A5730();
    swift_allocError();
    *v18 = 14;
    swift_willThrow();
    v19 = *(v0 + 304);

    v6 = *(v0 + 8);
  }

  else
  {
    v5 = *(v0 + 304);

    v6 = *(v0 + 8);
  }

  return v6();
}

uint64_t sub_258493418()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  v2[45] = v0;

  v5 = v2[43];
  v6 = v2[42];
  v7 = v2[41];
  if (v0)
  {
    v8 = v2[40];
    v9 = v2[35];
    (*(v6 + 8))(v5, v7);

    v10 = sub_258493B6C;
    v11 = v9;
  }

  else
  {
    v12 = v2[35];
    (*(v6 + 8))(v5, v7);
    v10 = sub_2584935B0;
    v11 = v12;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_2584935B0()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v3 = *(v0 + 296);
    v2 = *(v0 + 304);
    v4 = *(v0 + 288);
    v5 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    (*(v5 + 8))(v1, v5);
    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    sub_258532D6C();
    v6 = (*(v3 + 88))(v2, v4);
    if (v6 != *MEMORY[0x277CD8CB0])
    {
      if (v6 == *MEMORY[0x277CD8CA8])
      {
        v7 = 1;
        goto LABEL_9;
      }

      if (v6 != *MEMORY[0x277CD8CB8] && v6 != *MEMORY[0x277CD8CA0] && v6 != *MEMORY[0x277CD8CC0])
      {
        (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
      }
    }

    v7 = 0;
LABEL_9:
    v14 = *(v0 + 344);
    v16 = *(v0 + 312);
    v15 = *(v0 + 320);
    v17 = *(v0 + 280);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

    v18 = (v17 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage);
    v19 = *(v17 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage + 32);
    v20 = *(v17 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage + 33);
    v21 = type metadata accessor for MediaContinuityCoexSession.Configuration();
    v36 = v18[1];
    v37 = *v18;
    v22 = objc_allocWithZone(v21);
    v23 = &v22[OBJC_IVAR___MediaContinuityCoexSessionConfig_usage];
    *v23 = v37;
    *(v23 + 1) = v36;
    v23[32] = v19;
    v23[33] = v20;
    v24 = &v22[OBJC_IVAR___MediaContinuityCoexSessionConfig_remoteDeviceID];
    *v24 = v16;
    v24[1] = v15;
    v22[OBJC_IVAR___MediaContinuityCoexSessionConfig_interface] = v7;
    *(v0 + 264) = v22;
    *(v0 + 272) = v21;
    v25 = objc_msgSendSuper2((v0 + 264), sel_init);
    *(v0 + 368) = v25;
    v26 = type metadata accessor for MediaContinuityCoexSession();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    v29 = swift_allocObject();

    v30 = sub_2584A980C(v25, v17, v29);

    *(v0 + 160) = v26;
    *(v0 + 168) = &off_28698C6F8;
    *(v0 + 136) = v30;
    sub_258464C30(v0 + 136, v0 + 176);
    v31 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_coexSession;
    swift_beginAccess();
    sub_2584AC5D0(v0 + 176, v17 + v31, &qword_27F930358, &qword_258537A88);
    swift_endAccess();
    v32 = *__swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
    v33 = swift_task_alloc();
    *(v0 + 376) = v33;
    *v33 = v0;
    v33[1] = sub_258493958;

    return sub_258469268();
  }

  v8 = *(v0 + 344);
  v9 = *(v0 + 320);

  sub_258465168(v0 + 16, &qword_27F92FB90, &qword_258535420);
  sub_2584A5730();
  swift_allocError();
  *v10 = 14;
  swift_willThrow();
  v11 = *(v0 + 304);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_258493958()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = *(v2 + 280);
  if (v0)
  {
    v6 = sub_258493AF8;
  }

  else
  {
    v6 = sub_258493A84;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_258493A84()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  v1 = *(v0 + 304);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_258493AF8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  v1 = *(v0 + 384);
  v2 = *(v0 + 304);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_258493B6C()
{
  v1 = v0[43];

  v2 = v0[45];
  v3 = v0[38];

  v4 = v0[1];

  return v4();
}

uint64_t sub_258493BD8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (a4 >= result)
  {
    if (result >= a4)
    {
      return result;
    }

    if (qword_27F92F8C8 != -1)
    {
      swift_once();
    }

    v25 = sub_258532A4C();
    __swift_project_value_buffer(v25, qword_27F93CFA8);

    v26 = sub_258532A2C();
    v27 = sub_2585338CC();

    if (os_log_type_enabled(v26, v27))
    {
      v40 = v27;
      v28 = swift_slowAlloc();
      v44 = a5;
      v29 = swift_slowAlloc();
      v47 = v29;
      *v28 = 136315650;
      sub_258533B8C();

      sub_2585329BC();
      v42 = a6;
      sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
      v30 = sub_258533DFC();
      MEMORY[0x259C81500](v30);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v31 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, &v47);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      v32 = sub_2584B3D20(v9, a2, a3);
      v34 = sub_2584713B0(v32, v33, &v47);

      *(v28 + 14) = v34;
      *(v28 + 22) = 2080;
      v35 = sub_2584B3D20(a4, v44, v42);
      v37 = sub_2584713B0(v35, v36, &v47);

      *(v28 + 24) = v37;
      _os_log_impl(&dword_25845E000, v26, v40, "%s clientVersion: %s is too old, serverVersion: %s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v29, -1, -1);
      MEMORY[0x259C82900](v28, -1, -1);
    }

    v23 = 21;
  }

  else
  {
    if (qword_27F92F8C8 != -1)
    {
      swift_once();
    }

    v10 = sub_258532A4C();
    __swift_project_value_buffer(v10, qword_27F93CFA8);

    v11 = sub_258532A2C();
    v12 = sub_2585338CC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v41 = a6;
      v14 = swift_slowAlloc();
      v47 = v14;
      *v13 = 136315650;
      sub_258533B8C();

      sub_2585329BC();
      v39 = a3;
      sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
      v15 = sub_258533DFC();
      MEMORY[0x259C81500](v15);

      MEMORY[0x259C81500](93, 0xE100000000000000);
      v16 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, &v47);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      v17 = sub_2584B3D20(a4, a5, v41);
      v19 = sub_2584713B0(v17, v18, &v47);

      *(v13 + 14) = v19;
      *(v13 + 22) = 2080;
      v20 = sub_2584B3D20(v9, a2, v39);
      v22 = sub_2584713B0(v20, v21, &v47);

      *(v13 + 24) = v22;
      _os_log_impl(&dword_25845E000, v11, v12, "%s serverVersion: %s is too old, clientVersion: %s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v14, -1, -1);
      MEMORY[0x259C82900](v13, -1, -1);
    }

    v23 = 20;
  }

  sub_2584A5730();
  swift_allocError();
  *v38 = v23;
  return swift_willThrow();
}

uint64_t MediaContinuitySession.deinit()
{
  v1 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_id;
  v2 = sub_2585329BC();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 40);
  v5 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 48);
  sub_25847AC44(*(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 8), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 16), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 24), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint + 32));
  if (*(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection));
  }

  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connectionVendor, &qword_27F9302B8, &unk_2585379D0);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_mediaStreamVendor));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendor));
  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizer, &qword_27F930340, &qword_258537A68);
  v6 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendingTask);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSyncHeartbeatVendor));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_userDefaultsProvider));
  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSyncHeartbeat, &qword_27F930348, &qword_258537A70);
  v7 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_videoStreamManager);

  v8 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_audioStreamManager);

  v9 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_eventStream;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930218, &unk_2585379A0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_eventStreamContinuation;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930210, &qword_258537998);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionEventStream, &qword_27F930350, &unk_258537A78);
  v13 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionEventMonitor);

  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_remoteActivationContinuation, &unk_27F930DB0, &qword_258536390);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_coexSessionVendor));
  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_coexSession, &qword_27F930358, &qword_258537A88);
  v3(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_clientSessionID, v2);
  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionMigrationManager, &qword_27F930360, &unk_258537A90);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_networkPathVendor));
  sub_258465168(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionPath, &qword_27F92FB90, &qword_258535420);
  v14 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 16);
  v15 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 24);
  v16 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 32);
  v17 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 40);
  v18 = *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 48);
  sub_2584A5834(*(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo + 8));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t MediaContinuitySession.__deallocating_deinit()
{
  MediaContinuitySession.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25849449C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_id;
  v5 = sub_2585329BC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t MediaContinuitySession.description.getter()
{
  sub_258533B8C();

  sub_2585329BC();
  sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
  v0 = sub_258533DFC();
  MEMORY[0x259C81500](v0);

  MEMORY[0x259C81500](93, 0xE100000000000000);
  return 0xD000000000000017;
}

unint64_t sub_258494600()
{
  v1 = *v0;
  sub_258533B8C();

  sub_2585329BC();
  sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
  v2 = sub_258533DFC();
  MEMORY[0x259C81500](v2);

  MEMORY[0x259C81500](93, 0xE100000000000000);
  return 0xD000000000000017;
}

uint64_t MediaContinuitySession.sessionDidSuspend(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2584A680C();
}

uint64_t MediaContinuitySession.sessionDidResume(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2584A6A94();
}

uint64_t sub_258494828()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2584A680C();
}

uint64_t sub_2584948C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2584A6A94();
}

void *sub_25849497C(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[14] = sub_2584ABF5C;
  v1[15] = a1;
  v1[16] = &unk_2585382F8;
  v1[17] = a1;
  v1[18] = &unk_258538308;
  v1[19] = a1;
  v1[20] = &unk_258538318;
  v1[21] = a1;
  v1[22] = &unk_258538328;
  v1[23] = a1;
  v1[24] = &unk_258538338;
  v1[25] = a1;
  v1[26] = &unk_258538348;
  v1[27] = a1;
  swift_retain_n();
  return v1;
}

void *sub_258494A40(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[14] = sub_2584AB65C;
  v1[15] = a1;
  v1[16] = &unk_258538250;
  v1[17] = a1;
  v1[18] = &unk_258538260;
  v1[19] = a1;
  v1[20] = &unk_258538270;
  v1[21] = a1;
  v1[22] = &unk_258538280;
  v1[23] = a1;
  v1[24] = &unk_258538290;
  v1[25] = a1;
  v1[26] = &unk_2585382A0;
  v1[27] = a1;
  swift_retain_n();
  return v1;
}

uint64_t sub_258494B04(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for VideoStreamAVConference();
  sub_2584AC2F0(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference);
  v4 = sub_25853362C();
  v2[4] = v4;
  v2[5] = v3;

  return MEMORY[0x2822009F8](sub_258494BC0, v4, v3);
}

uint64_t sub_258494BC0()
{
  v1 = v0[3];
  if (*(v1 + 232))
  {
    sub_258476AE4();
    v2 = swift_allocError();
    v0[6] = v2;
    *v3 = 0;
    swift_willThrow();
    v4 = v2;
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_258494D58;
    v6 = v0[3];

    return sub_258519A34(v2);
  }

  else
  {
    v8 = v0[2];
    sub_2584A4B58();
    v9 = *(v1 + 232);
    *(v1 + 232) = 1;
    sub_2585084C8(v9);
    v10 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_internalEventStream;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210);
    (*(*(v11 - 8) + 16))(v8, v1 + v10, v11);
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_258494D58()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_258494E78, v4, v3);
}

uint64_t sub_258494E78()
{
  v1 = *(v0 + 48);
  swift_willThrow();

  v2 = *(v0 + 8);
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_258494EF0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_258494F0C, a2, 0);
}

uint64_t sub_258494F0C()
{
  v1 = v0[3];
  if (*(v1 + 121))
  {
    sub_258476AE4();
    v2 = swift_allocError();
    v0[4] = v2;
    *v3 = 0;
    swift_willThrow();
    v4 = v2;
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_2584950A4;
    v6 = v0[3];

    return sub_258519188(v2);
  }

  else
  {
    v8 = v0[2];
    sub_2584A4AB4();
    v9 = *(v1 + 121);
    *(v1 + 121) = 1;
    sub_25852FFD0(v9);
    v10 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_internalEventStream;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210);
    (*(*(v11 - 8) + 16))(v8, v1 + v10, v11);
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_2584950A4()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2584951B4, v2, 0);
}

uint64_t sub_2584951B4()
{
  v1 = *(v0 + 32);
  swift_willThrow();

  v2 = *(v0 + 8);
  v3 = *(v0 + 32);

  return v2();
}

uint64_t sub_25849522C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_25849D3EC();
}

uint64_t sub_2584952D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_25849B194();
}

uint64_t sub_258495374(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258472CF8;

  return (sub_2585154CC)(a1);
}

uint64_t sub_258495428(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258464F5C;

  return (sub_258513B98)(a1);
}

uint64_t sub_2584954DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_2585176A4();
}

uint64_t sub_258495580()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258464F5C;

  return sub_258516F24();
}

uint64_t sub_258495624()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_258518360();
}

uint64_t sub_2584956C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_258517F08();
}

uint64_t sub_25849576C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_258518CF0();
}

uint64_t sub_258495810()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_258472CF8;

  return sub_258518904();
}

uint64_t sub_2584958B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_258532ECC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930518, &qword_258538150);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_258532F4C();
  sub_258532DCC();

  sub_258532DDC();

  sub_258532E3C();

  (*(v5 + 104))(v9, *MEMORY[0x277CD8E18], v4);
  sub_258532E0C();

  (*(v5 + 8))(v9, v4);
  sub_2584B8F78();

  v13 = sub_2584B9434(a2);

  return v13;
}

uint64_t sub_258495A90(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v35 = a1;
  v36 = a3;
  v34 = a2;
  v3 = sub_258532F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25853318C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v32 - v17;
  v19 = sub_25853313C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v37 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v32 - v26;
  sub_25853312C();
  sub_25853317C();
  (*(v4 + 104))(v8, *MEMORY[0x277CD8E28], v3);
  v33 = v18;
  sub_25853316C();
  (*(v4 + 8))(v8, v3);
  v28 = *(v10 + 8);
  v28(v15, v9);
  v44 = *v34;
  v29 = v37;
  (*(v20 + 16))(v37, v27, v19);
  v42 = v29;
  (*(v10 + 16))(v15, v18, v9);
  v43 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930440, &qword_2585380A8);
  v40 = v19;
  v41 = v9;
  sub_2584ABBE0(&qword_27F930520, &qword_27F930440, &qword_2585380A8);
  v38 = MEMORY[0x277CD8F48];
  v39 = MEMORY[0x277CD8F50];
  sub_25853311C();
  v28(v33, v9);
  v30 = *(v20 + 8);
  v30(v27, v19);
  v28(v15, v9);
  return (v30)(v37, v19);
}

uint64_t sub_258495E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[15] = a1;
  v6[16] = a4;
  v9 = sub_2585328EC();
  v6[19] = v9;
  v10 = *(v9 - 8);
  v6[20] = v10;
  v11 = *(v10 + 64) + 15;
  v6[21] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303F8, &qword_258538008);
  v6[22] = v12;
  v13 = *(v12 - 8);
  v6[23] = v13;
  v14 = *(v13 + 64) + 15;
  v6[24] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930400, &qword_258538010);
  v6[25] = v15;
  v16 = *(v15 - 8);
  v6[26] = v16;
  v17 = *(v16 + 64) + 15;
  v6[27] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930408, &qword_258538018);
  v6[28] = v18;
  v19 = *(v18 - 8);
  v6[29] = v19;
  v20 = *(v19 + 64) + 15;
  v6[30] = swift_task_alloc();
  v6[12] = a2;
  v6[13] = a3;

  return MEMORY[0x2822009F8](sub_258496040, 0, 0);
}

uint64_t sub_258496040()
{
  type metadata accessor for FoundationBackedUserDefaultsProvider();
  inited = swift_initStackObject();
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_25853341C();
  v4 = [v2 initWithSuiteName_];

  *(inited + 16) = v4;
  LOBYTE(inited) = sub_2585138CC(2, 1);

  v22 = inited;
  if (inited)
  {
    if (qword_27F92F8C0 != -1)
    {
      swift_once();
    }

    v5 = sub_258532A4C();
    __swift_project_value_buffer(v5, qword_27F93CF90);
    v6 = sub_258532A2C();
    v7 = sub_2585338CC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_25845E000, v6, v7, "------- Timeouts disabled via defaults on internal builds only -------", v8, 2u);
      MEMORY[0x259C82900](v8, -1, -1);
    }
  }

  v9 = *(v0 + 240);
  v11 = *(v0 + 216);
  v10 = *(v0 + 224);
  v12 = *(v0 + 200);
  v13 = *(v0 + 208);
  v14 = *(v0 + 192);
  v15 = *(v0 + 128);
  v16 = swift_task_alloc();
  *(v16 + 16) = *(v0 + 136);
  *(v16 + 32) = v22 & 1;
  *(v16 + 40) = v0 + 96;
  *(v16 + 48) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930190, &unk_258537FF0);
  (*(v13 + 104))(v11, *MEMORY[0x277D858A0], v12);
  sub_25853385C();

  sub_2585336FC();
  v17 = *(MEMORY[0x277D858B8] + 4);
  v18 = swift_task_alloc();
  *(v0 + 248) = v18;
  *v18 = v0;
  v18[1] = sub_2584962F8;
  v19 = *(v0 + 192);
  v20 = *(v0 + 176);

  return MEMORY[0x2822005A8](v0 + 56, 0, 0, v20, v0 + 112);
}

uint64_t sub_2584962F8()
{
  v2 = *(*v1 + 248);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_2584AC7CC;
  }

  else
  {
    v3 = sub_258496408;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258496408()
{
  v30 = v0;
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  if (*(v0 + 80) == 1)
  {
    if (qword_27F92F8C0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 160);
    v1 = *(v0 + 168);
    v3 = *(v0 + 152);
    v4 = sub_258532A4C();
    __swift_project_value_buffer(v4, qword_27F93CF90);
    sub_2585328CC();
    v5 = sub_2585328DC();
    v7 = v6;
    (*(v2 + 8))(v1, v3);

    v8 = sub_258532A2C();
    v9 = sub_2585338BC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v29[0] = v11;
      *v10 = 136315650;
      v12 = sub_2584713B0(v5, v7, v29);

      *(v10 + 4) = v12;
      *(v10 + 12) = 2048;
      *(v10 + 14) = 71;
      *(v10 + 22) = 2080;
      *(v10 + 24) = sub_2584713B0(0xD000000000000029, 0x8000000258540920, v29);
      _os_log_impl(&dword_25845E000, v8, v9, "%s:%ld %s", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v11, -1, -1);
      MEMORY[0x259C82900](v10, -1, -1);
    }

    else
    {
    }

    v21 = *(v0 + 232);
    v20 = *(v0 + 240);
    v22 = *(v0 + 224);
    sub_2584AA020();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
    (*(v21 + 8))(v20, v22);
    v24 = *(v0 + 240);
    v25 = *(v0 + 216);
    v26 = *(v0 + 192);
    v27 = *(v0 + 168);

    v19 = *(v0 + 8);
  }

  else
  {
    v13 = *(v0 + 216);
    v14 = *(v0 + 192);
    v15 = *(v0 + 168);
    v16 = *(v0 + 120);
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    v17 = *(v0 + 56);
    v18 = *(v0 + 72);
    *(v16 + 32) = *(v0 + 88);
    *v16 = v17;
    *(v16 + 16) = v18;

    v19 = *(v0 + 8);
  }

  return v19();
}

uint64_t sub_258496758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[15] = a1;
  v6[16] = a4;
  v9 = sub_2585328EC();
  v6[19] = v9;
  v10 = *(v9 - 8);
  v6[20] = v10;
  v11 = *(v10 + 64) + 15;
  v6[21] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930528, &qword_258538188);
  v6[22] = v12;
  v13 = *(v12 - 8);
  v6[23] = v13;
  v14 = *(v13 + 64) + 15;
  v6[24] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930530, &qword_258538190);
  v6[25] = v15;
  v16 = *(v15 - 8);
  v6[26] = v16;
  v17 = *(v16 + 64) + 15;
  v6[27] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930538, &qword_258538198);
  v6[28] = v18;
  v19 = *(v18 - 8);
  v6[29] = v19;
  v20 = *(v19 + 64) + 15;
  v6[30] = swift_task_alloc();
  v6[12] = a2;
  v6[13] = a3;

  return MEMORY[0x2822009F8](sub_258496960, 0, 0);
}

uint64_t sub_258496960()
{
  type metadata accessor for FoundationBackedUserDefaultsProvider();
  inited = swift_initStackObject();
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_25853341C();
  v4 = [v2 initWithSuiteName_];

  *(inited + 16) = v4;
  LOBYTE(inited) = sub_2585138CC(2, 1);

  v22 = inited;
  if (inited)
  {
    if (qword_27F92F8C0 != -1)
    {
      swift_once();
    }

    v5 = sub_258532A4C();
    __swift_project_value_buffer(v5, qword_27F93CF90);
    v6 = sub_258532A2C();
    v7 = sub_2585338CC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_25845E000, v6, v7, "------- Timeouts disabled via defaults on internal builds only -------", v8, 2u);
      MEMORY[0x259C82900](v8, -1, -1);
    }
  }

  v9 = *(v0 + 240);
  v11 = *(v0 + 216);
  v10 = *(v0 + 224);
  v12 = *(v0 + 200);
  v13 = *(v0 + 208);
  v14 = *(v0 + 192);
  v15 = *(v0 + 128);
  v16 = swift_task_alloc();
  *(v16 + 16) = *(v0 + 136);
  *(v16 + 32) = v22 & 1;
  *(v16 + 40) = v0 + 96;
  *(v16 + 48) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930198, &qword_258537910);
  (*(v13 + 104))(v11, *MEMORY[0x277D858A0], v12);
  sub_25853385C();

  sub_2585336FC();
  v17 = *(MEMORY[0x277D858B8] + 4);
  v18 = swift_task_alloc();
  *(v0 + 248) = v18;
  *v18 = v0;
  v18[1] = sub_258496C18;
  v19 = *(v0 + 192);
  v20 = *(v0 + 176);

  return MEMORY[0x2822005A8](v0 + 56, 0, 0, v20, v0 + 112);
}

uint64_t sub_258496C18()
{
  v2 = *(*v1 + 248);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_25849706C;
  }

  else
  {
    v3 = sub_258496D28;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258496D28()
{
  v28 = v0;
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  if (*(v0 + 80))
  {
    v1 = *(v0 + 216);
    v2 = *(v0 + 192);
    v3 = *(v0 + 168);
    v4 = *(v0 + 120);
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    sub_258464C18((v0 + 56), v4);

    v5 = *(v0 + 8);
  }

  else
  {
    if (qword_27F92F8C0 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 160);
    v6 = *(v0 + 168);
    v8 = *(v0 + 152);
    v9 = sub_258532A4C();
    __swift_project_value_buffer(v9, qword_27F93CF90);
    sub_2585328CC();
    v10 = sub_2585328DC();
    v12 = v11;
    (*(v7 + 8))(v6, v8);

    v13 = sub_258532A2C();
    v14 = sub_2585338BC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27[0] = v16;
      *v15 = 136315650;
      v17 = sub_2584713B0(v10, v12, v27);

      *(v15 + 4) = v17;
      *(v15 + 12) = 2048;
      *(v15 + 14) = 71;
      *(v15 + 22) = 2080;
      *(v15 + 24) = sub_2584713B0(0xD000000000000029, 0x8000000258540920, v27);
      _os_log_impl(&dword_25845E000, v13, v14, "%s:%ld %s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v16, -1, -1);
      MEMORY[0x259C82900](v15, -1, -1);
    }

    else
    {
    }

    v19 = *(v0 + 232);
    v18 = *(v0 + 240);
    v20 = *(v0 + 224);
    sub_2584AA020();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();
    (*(v19 + 8))(v18, v20);
    v22 = *(v0 + 240);
    v23 = *(v0 + 216);
    v24 = *(v0 + 192);
    v25 = *(v0 + 168);

    v5 = *(v0 + 8);
  }

  return v5();
}

uint64_t sub_25849706C()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[14];
  v5 = v0[30];
  v6 = v0[27];
  v7 = v0[24];
  v8 = v0[21];

  v9 = v0[1];

  return v9();
}

uint64_t sub_258497134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a8;
  *(v8 + 64) = v16;
  *(v8 + 40) = a5;
  *(v8 + 48) = a7;
  *(v8 + 153) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 16) = a2;
  v9 = sub_258533C6C();
  *(v8 + 72) = v9;
  v10 = *(v9 - 8);
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 + 64);
  *(v8 + 96) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930418, &qword_258538020);
  *(v8 + 104) = v11;
  v12 = *(v11 - 8);
  *(v8 + 112) = v12;
  *(v8 + 120) = *(v12 + 64);
  *(v8 + 128) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0) - 8) + 64) + 15;
  *(v8 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584972BC, 0, 0);
}

uint64_t sub_2584972BC()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v29 = *(v0 + 120);
  v4 = *(v0 + 104);
  v34 = *(v0 + 153);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v31 = *(v0 + 24);
  v32 = *(v0 + 16);
  v27 = *(*(sub_25853368C() - 8) + 56);
  (v27)(v1, 1, 1);
  v28 = *(v3 + 16);
  v28(v2, v5, v4);
  v7 = *(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 4) = v31;
  *(v8 + 5) = v6;
  v30 = *(v3 + 32);
  v30(&v8[(v7 + 48) & ~v7], v2, v4);

  sub_258498584(v1, &unk_258538058, v8);
  sub_258465168(v1, &qword_27F92FB78, &qword_2585368F0);
  if ((v34 & 1) == 0)
  {
    v9 = *(v0 + 128);
    v33 = *(v0 + 136);
    v11 = *(v0 + 96);
    v10 = *(v0 + 104);
    v12 = *(v0 + 80);
    v23 = *(v0 + 88);
    v24 = *(v0 + 120);
    v13 = *(v0 + 64);
    v14 = *(v0 + 72);
    v25 = *(v0 + 48);
    v26 = *(v0 + 56);
    v15 = *(v0 + 40);
    v35 = *(v0 + 16);
    v27();
    (*(v12 + 16))(v11, v13, v14);
    v28(v9, v15, v10);
    v16 = (*(v12 + 80) + 48) & ~*(v12 + 80);
    v17 = swift_allocObject();
    *(v17 + 2) = 0;
    *(v17 + 3) = 0;
    *(v17 + 4) = v25;
    *(v17 + 5) = v26;
    (*(v12 + 32))(&v17[v16], v11, v14);
    v30(&v17[(v23 + v7 + v16) & ~v7], v9, v10);
    sub_258498584(v33, &unk_258538068, v17);
    sub_258465168(v33, &qword_27F92FB78, &qword_2585368F0);
  }

  v18 = *(MEMORY[0x277D856A0] + 4);
  v19 = swift_task_alloc();
  *(v0 + 144) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930420, &qword_258538070);
  *v19 = v0;
  v19[1] = sub_25849761C;
  v21 = *(v0 + 16);

  return MEMORY[0x2822002D0](v0 + 152, 0, 0, v20);
}

uint64_t sub_25849761C()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2584AC7B0, 0, 0);
}

uint64_t sub_258497718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a8;
  *(v8 + 64) = v16;
  *(v8 + 40) = a5;
  *(v8 + 48) = a7;
  *(v8 + 153) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 16) = a2;
  v9 = sub_258533C6C();
  *(v8 + 72) = v9;
  v10 = *(v9 - 8);
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 + 64);
  *(v8 + 96) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930540, &qword_2585381A0);
  *(v8 + 104) = v11;
  v12 = *(v11 - 8);
  *(v8 + 112) = v12;
  *(v8 + 120) = *(v12 + 64);
  *(v8 + 128) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0) - 8) + 64) + 15;
  *(v8 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584978A0, 0, 0);
}

uint64_t sub_2584978A0()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v29 = *(v0 + 120);
  v4 = *(v0 + 104);
  v34 = *(v0 + 153);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v31 = *(v0 + 24);
  v32 = *(v0 + 16);
  v27 = *(*(sub_25853368C() - 8) + 56);
  (v27)(v1, 1, 1);
  v28 = *(v3 + 16);
  v28(v2, v5, v4);
  v7 = *(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 4) = v31;
  *(v8 + 5) = v6;
  v30 = *(v3 + 32);
  v30(&v8[(v7 + 48) & ~v7], v2, v4);

  sub_258498584(v1, &unk_2585381D8, v8);
  sub_258465168(v1, &qword_27F92FB78, &qword_2585368F0);
  if ((v34 & 1) == 0)
  {
    v9 = *(v0 + 128);
    v33 = *(v0 + 136);
    v11 = *(v0 + 96);
    v10 = *(v0 + 104);
    v12 = *(v0 + 80);
    v23 = *(v0 + 88);
    v24 = *(v0 + 120);
    v13 = *(v0 + 64);
    v14 = *(v0 + 72);
    v25 = *(v0 + 48);
    v26 = *(v0 + 56);
    v15 = *(v0 + 40);
    v35 = *(v0 + 16);
    v27();
    (*(v12 + 16))(v11, v13, v14);
    v28(v9, v15, v10);
    v16 = (*(v12 + 80) + 48) & ~*(v12 + 80);
    v17 = swift_allocObject();
    *(v17 + 2) = 0;
    *(v17 + 3) = 0;
    *(v17 + 4) = v25;
    *(v17 + 5) = v26;
    (*(v12 + 32))(&v17[v16], v11, v14);
    v30(&v17[(v23 + v7 + v16) & ~v7], v9, v10);
    sub_258498584(v33, &unk_2585381E8, v17);
    sub_258465168(v33, &qword_27F92FB78, &qword_2585368F0);
  }

  v18 = *(MEMORY[0x277D856A0] + 4);
  v19 = swift_task_alloc();
  *(v0 + 144) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930420, &qword_258538070);
  *v19 = v0;
  v19[1] = sub_258497C00;
  v21 = *(v0 + 16);

  return MEMORY[0x2822002D0](v0 + 152, 0, 0, v20);
}

uint64_t sub_258497C00()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_258497CFC, 0, 0);
}

uint64_t sub_258497CFC()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 96);
  v4 = **(v0 + 16);
  sub_25853366C();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_258497D94(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930438, &qword_258538098);
  v6[15] = v8;
  v9 = *(v8 - 8);
  v6[16] = v9;
  v10 = *(v9 + 64) + 15;
  v6[17] = swift_task_alloc();
  v14 = (a4 + *a4);
  v11 = a4[1];
  v12 = swift_task_alloc();
  v6[18] = v12;
  *v12 = v6;
  v12[1] = sub_258497EF8;

  return v14(v6 + 2);
}

uint64_t sub_258497EF8()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_258498110;
  }

  else
  {
    v3 = sub_25849800C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25849800C()
{
  if (*(v0 + 40))
  {
    sub_258464C30(v0 + 16, v0 + 56);
  }

  else
  {
    v1 = *(v0 + 32);
    *(v0 + 56) = *(v0 + 16);
    *(v0 + 72) = v1;
    *(v0 + 88) = *(v0 + 48);
  }

  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930418, &qword_258538020);
  sub_2585337EC();
  (*(v3 + 8))(v2, v5);
  *(v0 + 104) = 0;
  sub_2585337FC();
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  v6 = *(v0 + 136);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_258498110()
{
  v1 = v0[14];
  v0[12] = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930418, &qword_258538020);
  sub_2585337FC();
  v2 = v0[17];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2584981A0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930548, &qword_2585381F8);
  v6[15] = v8;
  v9 = *(v8 - 8);
  v6[16] = v9;
  v10 = *(v9 + 64) + 15;
  v6[17] = swift_task_alloc();
  v14 = (a4 + *a4);
  v11 = a4[1];
  v12 = swift_task_alloc();
  v6[18] = v12;
  *v12 = v6;
  v12[1] = sub_258498304;

  return v14(v6 + 2);
}

uint64_t sub_258498304()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_2584984F4;
  }

  else
  {
    v3 = sub_258498418;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258498418()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  sub_258464C30((v0 + 2), (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930540, &qword_2585381A0);
  sub_2585337EC();
  (*(v2 + 8))(v1, v4);
  v0[13] = 0;
  sub_2585337FC();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v5 = v0[17];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2584984F4()
{
  v1 = v0[14];
  v0[12] = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930540, &qword_2585381A0);
  sub_2585337FC();
  v2 = v0[17];

  v3 = v0[1];

  return v3();
}

uint64_t sub_258498584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v23 - v11;
  sub_2584AC3B8(a1, v23 - v11, &qword_27F92FB78, &qword_2585368F0);
  v13 = sub_25853368C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_258465168(v12, &qword_27F92FB78, &qword_2585368F0);
    if (*(a3 + 16))
    {
LABEL_3:
      v15 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = sub_25853362C();
      v18 = v17;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_25853367C();
    (*(v14 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
  v18 = 0;
LABEL_6:
  v19 = *v4;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = (v18 | v16);
  if (v18 | v16)
  {
    v24[0] = 0;
    v24[1] = 0;
    v21 = v24;
    v24[2] = v16;
    v24[3] = v18;
  }

  v23[1] = 1;
  v23[2] = v21;
  v23[3] = v19;
  swift_task_create();
}

uint64_t sub_25849879C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  return MEMORY[0x2822009F8](sub_2584987C0, 0, 0);
}

uint64_t sub_2584987C0()
{
  v17 = v0;
  if (qword_27F92F8C0 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  v0[14] = __swift_project_value_buffer(v1, qword_27F93CF90);
  v2 = sub_258532A2C();
  v3 = sub_2585338BC();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v0[6] = v5;
    v0[7] = v4;
    v8 = sub_25853347C();
    v10 = sub_2584713B0(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25845E000, v2, v3, "Starting timeout for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_2584989B0;
  v12 = v0[11];
  v13 = v0[12];
  v14 = v0[10];

  return sub_2584A4F40(v14, v12, 0, 0, 1);
}

uint64_t sub_2584989B0()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_258498C58;
  }

  else
  {
    v3 = sub_258498AC4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258498AC4()
{
  v17 = v0;
  v1 = v0[14];
  v2 = sub_258532A2C();
  v3 = sub_2585338BC();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v0[4] = v5;
    v0[5] = v4;
    v8 = sub_25853347C();
    v10 = sub_2584713B0(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25845E000, v2, v3, "Timeout occurred after %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v11 = v0[13];
  sub_2584AA020();
  v12 = swift_allocError();
  *v13 = 0;
  v0[9] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930418, &qword_258538020);
  sub_2585337FC();
  v14 = v0[1];

  return v14();
}

uint64_t sub_258498C58()
{
  v15 = v0;
  v1 = v0[14];
  v2 = sub_258532A2C();
  v3 = sub_2585338BC();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    v0[3] = v4;
    v8 = sub_25853347C();
    v10 = sub_2584713B0(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25845E000, v2, v3, "Timeout of %s cancelled", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v11 = v0[13];
  v0[8] = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930418, &qword_258538020);
  sub_2585337FC();
  v12 = v0[1];

  return v12();
}

uint64_t sub_258498DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  return MEMORY[0x2822009F8](sub_258498DF4, 0, 0);
}

uint64_t sub_258498DF4()
{
  v17 = v0;
  if (qword_27F92F8C0 != -1)
  {
    swift_once();
  }

  v1 = sub_258532A4C();
  v0[14] = __swift_project_value_buffer(v1, qword_27F93CF90);
  v2 = sub_258532A2C();
  v3 = sub_2585338BC();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v0[6] = v5;
    v0[7] = v4;
    v8 = sub_25853347C();
    v10 = sub_2584713B0(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25845E000, v2, v3, "Starting timeout for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_258498FE4;
  v12 = v0[11];
  v13 = v0[12];
  v14 = v0[10];

  return sub_2584A4F40(v14, v12, 0, 0, 1);
}

uint64_t sub_258498FE4()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_25849928C;
  }

  else
  {
    v3 = sub_2584990F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2584990F8()
{
  v17 = v0;
  v1 = v0[14];
  v2 = sub_258532A2C();
  v3 = sub_2585338BC();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v0[4] = v5;
    v0[5] = v4;
    v8 = sub_25853347C();
    v10 = sub_2584713B0(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25845E000, v2, v3, "Timeout occurred after %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v11 = v0[13];
  sub_2584AA020();
  v12 = swift_allocError();
  *v13 = 0;
  v0[9] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930540, &qword_2585381A0);
  sub_2585337FC();
  v14 = v0[1];

  return v14();
}

uint64_t sub_25849928C()
{
  v15 = v0;
  v1 = v0[14];
  v2 = sub_258532A2C();
  v3 = sub_2585338BC();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    v0[3] = v4;
    v8 = sub_25853347C();
    v10 = sub_2584713B0(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25845E000, v2, v3, "Timeout of %s cancelled", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  v11 = v0[13];
  v0[8] = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930540, &qword_2585381A0);
  sub_2585337FC();
  v12 = v0[1];

  return v12();
}

uint64_t sub_258499404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = a3;
  v69 = a1;
  v70 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9304D0, &qword_258538110);
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = *(v67 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v64 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9304D8, &qword_258538118);
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = *(v65 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v63 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9304E0, &qword_258538120);
  v61 = *(v13 - 8);
  v62 = v13;
  v14 = *(v61 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v60 = &v57 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9304E8, &qword_258538128);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v57 - v21;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9304F0, &qword_258538130);
  v23 = *(v58 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v58, v25);
  v27 = &v57 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930278, &unk_2585379C0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v57 - v32;
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + *(*v4 + 216)) = 0;
  *(v4 + *(*v4 + 224)) = 0;
  *(v4 + *(*v4 + 232)) = 0;
  v34 = *(*v4 + 240);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  (*(*(v35 - 8) + 56))(v4 + v34, 1, 1, v35);
  *(v4 + *(*v4 + 248)) = 0;
  v36 = *(*v4 + 256);
  v37 = type metadata accessor for NetworkBackedNetworkPath();
  (*(*(v37 - 8) + 56))(v4 + v36, 1, 1, v37);
  if (*(v70 + 24))
  {
    v38 = 0;
    *(v4 + 176) = v69;
  }

  else
  {
    v38 = v69;
  }

  *(v4 + 128) = v38;
  sub_2584AC3B8(v70, v4 + 136, &qword_27F9304F8, &qword_258538138);
  *(v4 + 120) = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303E0, &qword_258537FB0);
  (*(v18 + 104))(v22, *MEMORY[0x277D858A0], v17);

  sub_2585337BC();
  (*(v18 + 8))(v22, v17);
  (*(v29 + 32))(v4 + *(*v4 + 184), v33, v28);
  (*(v23 + 32))(v4 + *(*v4 + 192), v27, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930500, &unk_258538140);
  v40 = v67;
  v39 = v68;
  v41 = v64;
  (*(v67 + 104))(v64, *MEMORY[0x277D85778], v68);
  v42 = v60;
  v43 = v63;
  sub_25853369C();
  (*(v40 + 8))(v41, v39);
  (*(v61 + 32))(v4 + *(*v4 + 200), v42, v62);
  (*(v65 + 32))(v4 + *(*v4 + 208), v43, v66);
  if (qword_27F92F8D8 != -1)
  {
    swift_once();
  }

  v44 = sub_258532A4C();
  __swift_project_value_buffer(v44, qword_27F93CFD8);

  v45 = sub_258532A2C();
  v46 = sub_2585338EC();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v72 = v48;
    *v47 = 136315394;
    v49 = sub_258499C54();
    v51 = v50;

    v52 = sub_2584713B0(v49, v51, &v72);

    *(v47 + 4) = v52;
    *(v47 + 12) = 2080;
    v71 = sub_258532C0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930508, &unk_25853C220);
    v53 = sub_25853347C();
    v55 = sub_2584713B0(v53, v54, &v72);

    *(v47 + 14) = v55;
    _os_log_impl(&dword_25845E000, v45, v46, "%s created with connection=%s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v48, -1, -1);
    MEMORY[0x259C82900](v47, -1, -1);
  }

  else
  {
  }

  sub_258465168(v70, &qword_27F9304F8, &qword_258538138);
  return v4;
}

uint64_t sub_258499C54()
{
  sub_258533B8C();
  MEMORY[0x259C81500](0xD00000000000001FLL, 0x8000000258540950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9304B0, &qword_258538108);
  sub_2584ABBE0(&qword_27F930510, &qword_27F9304B0, &qword_258538108);
  sub_258533B9C();
  sub_258533C8C();
  MEMORY[0x259C81500](0x6C6565507369205DLL, 0xED00003D656C6261);
  if (*(v0 + 128))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 128))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x259C81500](v1, v2);

  return 0;
}

uint64_t sub_258499DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a2;
  v4[13] = a4;
  v4[11] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930440, &qword_2585380A8);
  v4[14] = v6;
  v7 = *(v6 - 8);
  v4[15] = v7;
  v8 = *(v7 + 64) + 15;
  v4[16] = swift_task_alloc();
  v9 = sub_258532B0C();
  v4[17] = v9;
  v10 = *(v9 - 8);
  v4[18] = v10;
  v11 = *(v10 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930448, &qword_2585380B0) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930450, &qword_2585380B8);
  v4[23] = v13;
  v14 = *(v13 - 8);
  v4[24] = v14;
  v15 = *(v14 + 64) + 15;
  v4[25] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930458, &qword_2585380C0);
  v4[26] = v16;
  v17 = *(v16 - 8);
  v4[27] = v17;
  v18 = *(v17 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930460, &qword_2585380C8);
  v4[30] = v19;
  v20 = *(v19 - 8);
  v4[31] = v20;
  v21 = *(v20 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930468, &qword_2585380D0) - 8) + 64) + 15;
  v4[34] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930470, &qword_2585380D8);
  v4[35] = v23;
  v24 = *(v23 - 8);
  v4[36] = v24;
  v25 = *(v24 + 64) + 15;
  v4[37] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F931440, &qword_2585380E0) - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930478, &qword_2585380E8) - 8) + 64) + 15;
  v4[41] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930480, &qword_2585380F0) - 8) + 64) + 15;
  v4[42] = swift_task_alloc();
  sub_2584AA6C0(a3 + 24, (v4 + 6));

  return MEMORY[0x2822009F8](sub_25849A1E8, 0, 0);
}

uint64_t sub_25849A1E8()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  v17 = v0[37];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[12];
  sub_2584AA6C0((v0 + 6), (v0 + 2));
  v7 = v0[3];
  v0[43] = v0[2];
  v0[44] = v7;
  v8 = v0[5];
  v0[45] = v0[4];
  v0[46] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930490, &qword_2585380F8);
  v18 = *v6;
  v19 = v6[1];
  v20 = *(v6 + 16);
  sub_258465D4C();
  v9 = sub_25853333C();
  (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
  sub_25853319C();
  sub_25853314C();
  sub_258465168(v2, &qword_27F930478, &qword_2585380E8);
  _s7Network12NWParametersC18MediaContinuityKitE35compositorServicesBrowserParametersACvgZ_0();
  v0[47] = sub_25853325C();
  v10 = *(v4 + 56);
  v0[48] = v10;
  v0[49] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v3, 1, 1, v5);
  sub_25853326C();
  sub_25853324C();

  v11 = *(MEMORY[0x277D858B8] + 4);
  v12 = swift_task_alloc();
  v0[50] = v12;
  *v12 = v0;
  v12[1] = sub_25849A3F8;
  v13 = v0[37];
  v14 = v0[34];
  v15 = v0[35];

  return MEMORY[0x2822005A8](v14, 0, 0, v15, v0 + 10);
}

uint64_t sub_25849A3F8()
{
  v2 = *(*v1 + 400);
  v5 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = sub_25849B010;
  }

  else
  {
    v3 = sub_25849A50C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25849A50C()
{
  v130 = v0;
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[31];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[36] + 8))(v0[37], v0[35]);
    goto LABEL_20;
  }

  (*(v3 + 32))(v0[33], v1, v2);
  if (sub_25853376C())
  {
    v5 = v0[36];
    v4 = v0[37];
    v6 = v0[35];
    (*(v0[31] + 8))(v0[33], v0[30]);
    (*(v5 + 8))(v4, v6);
    goto LABEL_20;
  }

  v7 = v0[26];
  v8 = v0[27];
  v9 = v0[25];
  v11 = v0[22];
  v10 = v0[23];
  (*(v0[31] + 16))(v0[32], v0[33], v0[30]);
  sub_2584ABBE0(&qword_27F9304C0, &qword_27F930460, &qword_2585380C8);
  sub_25853355C();
  sub_2584ABBE0(&qword_27F9304C8, &qword_27F930450, &qword_2585380B8);
  sub_258533A2C();
  v12 = *(v8 + 48);
  if (v12(v11, 1, v7) == 1)
  {
LABEL_6:
    v13 = v0[33];
    v14 = v0[30];
    v15 = v0[31];
    (*(v0[24] + 8))(v0[25], v0[23]);
    (*(v15 + 8))(v13, v14);
    v16 = *(MEMORY[0x277D858B8] + 4);
    v17 = swift_task_alloc();
    v0[50] = v17;
    *v17 = v0;
    v17[1] = sub_25849A3F8;
    v18 = v0[37];
    v19 = v0[34];
    v20 = v0[35];

    return MEMORY[0x2822005A8](v19, 0, 0, v20, v0 + 10);
  }

  v21 = *(v0[27] + 32);
  while (1)
  {
    v26 = v0[18];
    v25 = v0[19];
    v27 = v0[17];
    v28 = v0[27] + 32;
    v21(v0[28], v0[22], v0[26]);
    sub_25853315C();
    v29 = sub_258532AFC();
    v31 = v30;
    (*(v26 + 8))(v25, v27);
    if (!v31)
    {
      goto LABEL_10;
    }

    if (v29 == v0[45] && v31 == v0[46])
    {
      break;
    }

    v33 = sub_258533E2C();

    if (v33)
    {
      goto LABEL_19;
    }

LABEL_10:
    v22 = v0[26];
    v24 = v0[22];
    v23 = v0[23];
    (*(v0[27] + 8))(v0[28], v22);
    sub_258533A2C();
    if (v12(v24, 1, v22) == 1)
    {
      goto LABEL_6;
    }
  }

LABEL_19:
  v125 = v0[48];
  v127 = v0[49];
  v34 = v0[38];
  v35 = v0[36];
  v115 = v0[35];
  v118 = v0[37];
  v36 = v0[31];
  v109 = v0[30];
  v112 = v0[33];
  v38 = v0[28];
  v37 = v0[29];
  v40 = v0[26];
  v39 = v0[27];
  v121 = v0[17];
  v123 = v0[40];
  (*(v0[24] + 8))(v0[25], v0[23]);
  v21(v37, v38, v40);
  sub_25853315C();
  (*(v39 + 8))(v37, v40);
  (*(v36 + 8))(v112, v109);
  (*(v35 + 8))(v118, v115);
  sub_258465168(v123, &unk_27F931440, &qword_2585380E0);
  v125(v34, 0, 1, v121);
  sub_2584AA828(v34, v123, &unk_27F931440, &qword_2585380E0);
LABEL_20:
  v41 = v0[39];
  v42 = v0[17];
  v43 = v0[18];
  sub_2584AC3B8(v0[40], v41, &unk_27F931440, &qword_2585380E0);
  if ((*(v43 + 48))(v41, 1, v42) == 1)
  {
    sub_258465168(v0[39], &unk_27F931440, &qword_2585380E0);
    if (qword_27F92F8D8 != -1)
    {
      swift_once();
    }

    v44 = v0[46];
    v45 = v0[44];
    v46 = sub_258532A4C();
    __swift_project_value_buffer(v46, qword_27F93CFD8);

    v47 = sub_258532A2C();
    v48 = sub_2585338CC();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v0[46];
    if (v49)
    {
      v52 = v0[44];
      v51 = v0[45];
      v53 = v0[43];
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v129[0] = v55;
      *v54 = 136315394;
      v56 = sub_2584713B0(v53, v52, v129);

      *(v54 + 4) = v56;
      *(v54 + 12) = 2080;
      v57 = sub_2584713B0(v51, v50, v129);

      *(v54 + 14) = v57;
      _os_log_impl(&dword_25845E000, v47, v48, "Failed to find endpoint for serviceName: %s deviceID: %s", v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v55, -1, -1);
      MEMORY[0x259C82900](v54, -1, -1);
    }

    else
    {
      v72 = v0[44];
    }

    v73 = v0[47];
    v65 = v0[40];
    sub_2584AA71C();
    swift_allocError();
    *v74 = 1;
    swift_willThrow();

LABEL_29:
    sub_258465168(v65, &unk_27F931440, &qword_2585380E0);
    v76 = v0[41];
    v75 = v0[42];
    v78 = v0[39];
    v77 = v0[40];
    v80 = v0[37];
    v79 = v0[38];
    v81 = v0[33];
    v82 = v0[34];
    v83 = v0[32];
    v84 = v0[29];
    v110 = v0[28];
    v113 = v0[25];
    v116 = v0[22];
    v119 = v0[21];
    v122 = v0[20];
    v124 = v0[19];
    v126 = v0[16];

    v85 = v0[1];
  }

  else
  {
    v58 = v0[51];
    v59 = v0[16];
    v60 = v0[13];
    (*(v0[18] + 32))(v0[21], v0[39], v0[17]);
    v61 = type metadata accessor for SessionMessage();
    v62 = sub_2584AC2F0(&qword_27F930498, type metadata accessor for SessionMessage);
    v63 = sub_2584AC2F0(&qword_27F9304A0, type metadata accessor for SessionMessage);
    MEMORY[0x259C80FA0](v61, v62, v63);
    sub_2584958B4(v59, v60);
    v64 = v0[47];
    if (v58)
    {
      v65 = v0[40];
      v66 = v0[21];
      v68 = v0[17];
      v67 = v0[18];
      v70 = v0[15];
      v69 = v0[16];
      v71 = v0[14];

      (*(v70 + 8))(v69, v71);
      (*(v67 + 8))(v66, v68);
      goto LABEL_29;
    }

    v103 = v0[42];
    v104 = v0[41];
    v102 = v0[40];
    v105 = v0[39];
    v106 = v0[38];
    v107 = v0[37];
    v108 = v0[34];
    v111 = v0[33];
    v114 = v0[32];
    v117 = v0[29];
    v120 = v0[28];
    v86 = v0[21];
    v87 = v0[20];
    v89 = v0[17];
    v88 = v0[18];
    v90 = v0[16];
    v128 = v0[19];
    v91 = v0[14];
    v92 = v0[11];
    (*(v0[15] + 8))();
    (*(v88 + 16))(v87, v86, v89);
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9304A8, &qword_258538100);
    v94 = *(v93 + 48);
    v95 = *(v93 + 52);
    swift_allocObject();

    sub_258532C1C();
    memset(v129, 0, 40);
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9304B0, &qword_258538108);
    v97 = *(v96 + 48);
    v98 = *(v96 + 52);
    swift_allocObject();

    v100 = sub_258499404(v99, v129, 1);
    v92[3] = v96;
    v92[4] = sub_2584ABBE0(&qword_27F9304B8, &qword_27F9304B0, &qword_258538108);

    *v92 = v100;
    (*(v88 + 8))(v86, v89);
    sub_258465168(v102, &unk_27F931440, &qword_2585380E0);

    v85 = v0[1];
  }

  return v85();
}

uint64_t sub_25849B010()
{
  v1 = v0[47];
  v2 = v0[40];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[35];

  (*(v4 + 8))(v3, v5);
  sub_258465168(v2, &unk_27F931440, &qword_2585380E0);
  v25 = v0[10];
  v7 = v0[41];
  v6 = v0[42];
  v9 = v0[39];
  v8 = v0[40];
  v11 = v0[37];
  v10 = v0[38];
  v13 = v0[33];
  v12 = v0[34];
  v14 = v0[32];
  v15 = v0[29];
  v18 = v0[28];
  v19 = v0[25];
  v20 = v0[22];
  v21 = v0[21];
  v22 = v0[20];
  v23 = v0[19];
  v24 = v0[16];

  v16 = v0[1];

  return v16();
}

uint64_t sub_25849B194()
{
  *(v1 + 904) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0) - 8) + 64) + 15;
  *(v1 + 912) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25849B230, v0, 0);
}

uint64_t sub_25849B230()
{
  v39 = v0;
  v1 = *(v0 + 904);
  v2 = *(v1 + 121);
  if (v2 < 2)
  {
    v9 = *(v0 + 912);

    v10 = *(v0 + 8);

    return v10();
  }

  else if (v2 == 4)
  {
    v12 = (v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection);
    v13 = v12[3];
    v14 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v15 = *(v14 + 104);
    v37 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    *(v0 + 928) = v17;
    *v17 = v0;
    v17[1] = sub_25849BC1C;

    return v37(v0 + 496, v13, v14);
  }

  else if (v2 == 2)
  {

    v3 = sub_258532A2C();
    v4 = sub_2585338EC();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 904);
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v38[0] = v8;
      *v7 = 136315138;

      *(v7 + 4) = sub_2584713B0(0xD000000000000021, 0x8000000258540A00, v38);
      _os_log_impl(&dword_25845E000, v3, v4, "%s Waiting for activation to complete before migrating", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x259C82900](v8, -1, -1);
      MEMORY[0x259C82900](v7, -1, -1);
    }

    else
    {
      v27 = *(v0 + 904);
    }

    v28 = *(v0 + 904);
    sub_2584AC2F0(&qword_27F930588, type metadata accessor for AudioStreamAVConference);
    v29 = *(MEMORY[0x277D859E0] + 4);
    v30 = swift_task_alloc();
    *(v0 + 920) = v30;
    *v30 = v0;
    v30[1] = sub_25849B7BC;
    v31 = *(v0 + 904);

    return MEMORY[0x2822007B8]();
  }

  else
  {

    v18 = sub_258532A2C();
    v19 = sub_2585338CC();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 904);
    if (v20)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38[0] = v23;
      *v22 = 136315394;

      *(v22 + 4) = sub_2584713B0(0xD000000000000021, 0x8000000258540A00, v38);
      *(v22 + 12) = 2080;
      *(v0 + 1106) = *(v21 + 121);
      v24 = sub_25853347C();
      v26 = sub_2584713B0(v24, v25, v38);

      *(v22 + 14) = v26;
      _os_log_impl(&dword_25845E000, v18, v19, "%s Migration attempted while in state:%s, failing", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v23, -1, -1);
      MEMORY[0x259C82900](v22, -1, -1);
    }

    else
    {
      v32 = *(v0 + 904);
    }

    sub_258476AE4();
    v33 = swift_allocError();
    *v34 = 0;
    swift_willThrow();
    *(v0 + 1088) = v33;
    v35 = swift_task_alloc();
    *(v0 + 1096) = v35;
    *v35 = v0;
    v35[1] = sub_25849D264;
    v36 = *(v0 + 904);

    return sub_258519188(v33);
  }
}

uint64_t sub_25849B7BC()
{
  v1 = *(*v0 + 920);
  v2 = *(*v0 + 904);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25849B8CC, v2, 0);
}

uint64_t sub_25849B8CC()
{
  v25 = v0;
  v1 = *(v0 + 904);
  if (*(v1 + 121) == 4)
  {
    v2 = (v1 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_controlConnection);
    v3 = v2[3];
    v4 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v3);
    v5 = *(v4 + 104);
    v23 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 928) = v7;
    *v7 = v0;
    v7[1] = sub_25849BC1C;

    return v23(v0 + 496, v3, v4);
  }

  else
  {

    v9 = sub_258532A2C();
    v10 = sub_2585338CC();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 904);
    if (v11)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24[0] = v14;
      *v13 = 136315394;

      *(v13 + 4) = sub_2584713B0(0xD000000000000021, 0x8000000258540A00, v24);
      *(v13 + 12) = 2080;
      *(v0 + 1106) = *(v12 + 121);
      v15 = sub_25853347C();
      v17 = sub_2584713B0(v15, v16, v24);

      *(v13 + 14) = v17;
      _os_log_impl(&dword_25845E000, v9, v10, "%s Migration attempted while in state:%s, failing", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v14, -1, -1);
      MEMORY[0x259C82900](v13, -1, -1);
    }

    else
    {
      v18 = *(v0 + 904);
    }

    sub_258476AE4();
    v19 = swift_allocError();
    *v20 = 0;
    swift_willThrow();
    *(v0 + 1088) = v19;
    v21 = swift_task_alloc();
    *(v0 + 1096) = v21;
    *v21 = v0;
    v21[1] = sub_25849D264;
    v22 = *(v0 + 904);

    return sub_258519188(v19);
  }
}

uint64_t sub_25849BC1C()
{
  v2 = *v1;
  v3 = *(*v1 + 928);
  v4 = *v1;
  *(*v1 + 936) = v0;

  v5 = *(v2 + 904);
  if (v0)
  {
    v6 = sub_25849C0A4;
  }

  else
  {
    v6 = sub_25849BD48;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_25849BD48()
{
  if (!*(v0 + 520))
  {
    sub_258465168(v0 + 496, &qword_27F92FB90, &qword_258535420);
    sub_258476AE4();
    v21 = swift_allocError();
    *v22 = 14;
    swift_willThrow();
LABEL_8:
    *(v0 + 1088) = v21;
    v24 = swift_task_alloc();
    *(v0 + 1096) = v24;
    *v24 = v0;
    v24[1] = sub_25849D264;
    v25 = *(v0 + 904);

    return sub_258519188(v21);
  }

  v1 = *(v0 + 904);
  sub_258464C18((v0 + 496), v0 + 456);
  if (*(v1 + 121) != 4)
  {
    sub_258476AE4();
    v21 = swift_allocError();
    *v23 = 0;
    swift_willThrow();
    goto LABEL_7;
  }

  v2 = *(v0 + 936);
  *(*(v0 + 904) + 121) = 3;
  sub_25852FFD0(4);
  v3 = type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider();
  *(v0 + 944) = v3;
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_2584EAE98();
  *(v0 + 560) = v3;
  *(v0 + 568) = &off_28698FE70;
  *(v0 + 536) = v6;
  v7 = __swift_project_boxed_opaque_existential_1((v0 + 536), v3);
  v8 = *(v0 + 480);
  v9 = *(v0 + 488);
  __swift_project_boxed_opaque_existential_1((v0 + 456), v8);
  (*(v9 + 8))(v8, v9);
  __swift_project_boxed_opaque_existential_1((v0 + 576), *(v0 + 600));
  v10 = sub_258532D5C();
  v12 = sub_2585226B0(v10, v11);
  v14 = v13;

  *(v0 + 952) = v14;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 576));
  v15 = *(v0 + 480);
  v16 = *(v0 + 488);
  __swift_project_boxed_opaque_existential_1((v0 + 456), v15);
  (*(v16 + 24))(v15, v16);
  v17 = __swift_project_boxed_opaque_existential_1((v0 + 616), *(v0 + 640));
  v19 = v17[2];
  v18 = v17[3];
  *(v0 + 960) = v18;

  v20 = sub_2584BC58C();
  if (v2)
  {
    v21 = v2;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 616));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 456));
    goto LABEL_8;
  }

  v27 = v20;
  v28 = *v7;
  v29 = swift_task_alloc();
  *(v0 + 968) = v29;
  *v29 = v0;
  v29[1] = sub_25849C158;

  return sub_2584EB264(v0 + 416, v12, v14, v19, v18, v27);
}

uint64_t sub_25849C0A4()
{
  v1 = v0[117];
  v0[136] = v1;
  v2 = swift_task_alloc();
  v0[137] = v2;
  *v2 = v0;
  v2[1] = sub_25849D264;
  v3 = v0[113];

  return sub_258519188(v1);
}

uint64_t sub_25849C158()
{
  v2 = *v1;
  v3 = *(*v1 + 968);
  v12 = *v1;
  *(*v1 + 976) = v0;

  v4 = *(v2 + 960);
  if (v0)
  {
    v5 = *(v2 + 952);
    v6 = *(v2 + 904);

    v7 = sub_25849C66C;
    v8 = v6;
  }

  else
  {
    v9 = *(v2 + 952);
    v10 = *(v2 + 904);
    *(v2 + 1104) = *(v2 + 416);
    *(v2 + 984) = *(v2 + 424);
    *(v2 + 992) = *(v2 + 432);
    *(v2 + 1008) = *(v2 + 448);

    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 616));
    v7 = sub_25849C2D4;
    v8 = v10;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t sub_25849C2D4()
{
  v1 = *(v0 + 904);
  if (*(v1 + 121) == 3)
  {
    v29 = *(v0 + 1000);
    v30 = *(v0 + 1008);
    v28 = *(v0 + 992);
    v2 = *(v0 + 984);
    v27 = *(v0 + 1104);
    v3 = *(v0 + 480);
    v4 = *(v0 + 488);
    __swift_project_boxed_opaque_existential_1((v0 + 456), v3);
    (*(v4 + 16))(v3, v4);
    v5 = __swift_project_boxed_opaque_existential_1((v0 + 656), *(v0 + 680));
    v6 = *v5;
    *(v0 + 1016) = *v5;
    v7 = v5[1];
    *(v0 + 1024) = v7;
    v8 = *(v0 + 480);
    v9 = *(v0 + 488);
    __swift_project_boxed_opaque_existential_1((v0 + 456), v8);
    v10 = *(v9 + 24);
    sub_2584A7B8C(v6, v7);
    v10(v8, v9);
    v11 = __swift_project_boxed_opaque_existential_1((v0 + 696), *(v0 + 720));
    v12 = *v11;
    *(v0 + 1032) = *v11;
    v13 = v11[1];
    *(v0 + 1040) = v13;
    sub_2584A7B8C(v12, v13);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 696));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 656));
    *&v14 = v6;
    *(&v14 + 1) = v7;
    *&v15 = v12;
    *(&v15 + 1) = v13;
    *(v0 + 304) = v14;
    *(v0 + 320) = v15;
    *(v0 + 336) = v27;
    *(v0 + 344) = v2;
    *(v0 + 352) = v28;
    *(v0 + 360) = v29;
    *(v0 + 368) = v30;
    v16 = *(v0 + 336);
    *(v0 + 32) = v15;
    *(v0 + 16) = v14;
    *(v0 + 48) = v16;
    *(v0 + 56) = v2;
    *(v0 + 64) = v28;
    *(v0 + 72) = v29;
    *(v0 + 80) = v30;
    *(v0 + 88) = 0x2000000000000000;
    *(v0 + 104) = 0x2000000000000000;
    sub_2584A7B8C(v6, v7);
    sub_2584A7B8C(v12, v13);
    sub_2584ABA3C(v0 + 416, v0 + 736);
    v17 = sub_2584AC2F0(&qword_27F930588, type metadata accessor for AudioStreamAVConference);
    v18 = swift_task_alloc();
    *(v0 + 1048) = v18;
    *(v18 + 16) = v1;
    *(v18 + 24) = v0 + 16;
    v19 = *(MEMORY[0x277D85A40] + 4);
    v20 = swift_task_alloc();
    *(v0 + 1056) = v20;
    *v20 = v0;
    v20[1] = sub_25849C738;

    return MEMORY[0x2822008A0](v0 + 112, v1, v17, 0xD000000000000021, 0x8000000258540A30, sub_2584ABA98, v18, &type metadata for StreamMessage);
  }

  else
  {
    sub_258476AE4();
    v22 = swift_allocError();
    if (*(v1 + 121) == 5)
    {
      v23 = 4;
    }

    else
    {
      v23 = 5;
    }

    *v21 = v23;
    swift_willThrow();
    sub_2584AB9E8(v0 + 416);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 456));
    *(v0 + 1088) = v22;
    v24 = swift_task_alloc();
    *(v0 + 1096) = v24;
    *v24 = v0;
    v24[1] = sub_25849D264;
    v25 = *(v0 + 904);

    return sub_258519188(v22);
  }
}

uint64_t sub_25849C66C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 77);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 67);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 57);
  v1 = v0[122];
  v0[136] = v1;
  v2 = swift_task_alloc();
  v0[137] = v2;
  *v2 = v0;
  v2[1] = sub_25849D264;
  v3 = v0[113];

  return sub_258519188(v1);
}

uint64_t sub_25849C738()
{
  v2 = *v1;
  v3 = *(*v1 + 1056);
  v11 = *v1;
  *(*v1 + 1064) = v0;

  if (v0)
  {
    v4 = v2[131];
    v5 = v2[130];
    v6 = v2[129];
    v7 = v2[113];
    sub_258467E20(v2[127], v2[128]);
    sub_258467E20(v6, v5);
    sub_2584AB9E8((v2 + 52));

    v8 = sub_25849CD0C;
    v9 = v7;
  }

  else
  {
    v9 = v2[113];
    v8 = sub_25849C89C;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_25849C89C()
{
  v1 = *(v0 + 904);
  v2 = *(v0 + 128);
  *(v0 + 208) = *(v0 + 112);
  *(v0 + 224) = v2;
  v3 = *(v0 + 192);
  *(v0 + 272) = *(v0 + 176);
  *(v0 + 288) = v3;
  v4 = *(v0 + 160);
  *(v0 + 240) = *(v0 + 144);
  *(v0 + 256) = v4;
  if (*(v1 + 121) != 3)
  {
    v19 = *(v0 + 1048);
    v20 = *(v0 + 1040);
    v21 = *(v0 + 1032);
    v22 = *(v0 + 1024);
    v23 = *(v0 + 1016);
    sub_258476AE4();
    v11 = swift_allocError();
    if (*(v1 + 121) == 5)
    {
      v25 = 4;
    }

    else
    {
      v25 = 5;
    }

    goto LABEL_9;
  }

  if (((*(v0 + 296) >> 59) & 6 | ((*(v0 + 280) & 0x2000000000000000) != 0)) != 6)
  {
    v26 = *(v0 + 1048);
    v20 = *(v0 + 1040);
    v21 = *(v0 + 1032);
    v22 = *(v0 + 1024);
    v23 = *(v0 + 1016);
    sub_258476AE4();
    v11 = swift_allocError();
    v25 = 19;
LABEL_9:
    *v24 = v25;
    swift_willThrow();
    sub_2584A975C(v0 + 208);
    sub_2584ABAA0(v0 + 304);
    sub_258467E20(v23, v22);
    v17 = v21;
    v18 = v20;
    goto LABEL_10;
  }

  v5 = *(v0 + 1064);
  v6 = *(v0 + 912);
  *(v0 + 376) = *(v0 + 208);
  v7 = *(v0 + 232);
  *(v0 + 384) = *(v0 + 216);
  *(v0 + 400) = v7;
  v8 = *__swift_project_boxed_opaque_existential_1((v0 + 536), *(v0 + 560));
  v9 = *(v0 + 232);
  v10 = *(v0 + 240);
  sub_2584ABAF4(*(v0 + 216), *(v0 + 224));
  sub_2584ABAF4(v9, v10);
  sub_2584EE23C((v0 + 376), v6);
  if (v5)
  {
    v11 = v5;
    v12 = *(v0 + 1048);
    v13 = *(v0 + 1040);
    v14 = *(v0 + 1032);
    v15 = *(v0 + 1024);
    v16 = *(v0 + 1016);
    sub_2584A975C(v0 + 208);
    sub_2584ABAA0(v0 + 304);
    sub_2584A975C(v0 + 208);
    sub_258467E20(v16, v15);
    v17 = v14;
    v18 = v13;
LABEL_10:
    sub_258467E20(v17, v18);
    sub_2584AB9E8(v0 + 416);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 456));

    *(v0 + 1088) = v11;
    v27 = swift_task_alloc();
    *(v0 + 1096) = v27;
    *v27 = v0;
    v27[1] = sub_25849D264;
    v28 = *(v0 + 904);

    return sub_258519188(v11);
  }

  v30 = *(v0 + 944);
  v31 = *(v0 + 912);
  v32 = *(v0 + 904);
  v33 = type metadata accessor for MediaConnectionPrerequisites();
  (*(*(v33 - 8) + 56))(v31, 0, 1, v33);
  v34 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC5D0(v31, v32 + v34, &qword_27F930580, &unk_2585382B0);
  swift_endAccess();
  sub_258464C30(v0 + 536, v0 + 776);
  v35 = *(v0 + 800);
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 776, v35);
  v37 = *(v35 - 8);
  v38 = *(v37 + 64) + 15;
  v39 = swift_task_alloc();
  (*(v37 + 16))(v39, v36, v35);
  v40 = *v39;
  *(v0 + 840) = v30;
  *(v0 + 848) = &off_28698FE70;
  *(v0 + 816) = v40;
  v41 = OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_mediaConnectionPrerequisitesProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v32 + v41));
  sub_258464C18((v0 + 816), v32 + v41);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 776));

  v42 = swift_task_alloc();
  *(v0 + 1072) = v42;
  *v42 = v0;
  v42[1] = sub_25849CDD8;
  v43 = *(v0 + 904);

  return sub_258522910();
}

uint64_t sub_25849CD0C()
{
  sub_2584ABAA0((v0 + 38));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 67);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 57);
  v1 = v0[133];
  v0[136] = v1;
  v2 = swift_task_alloc();
  v0[137] = v2;
  *v2 = v0;
  v2[1] = sub_25849D264;
  v3 = v0[113];

  return sub_258519188(v1);
}

uint64_t sub_25849CDD8()
{
  v2 = *v1;
  v3 = *(*v1 + 1072);
  v4 = *v1;
  *(*v1 + 1080) = v0;

  v5 = *(v2 + 904);
  if (v0)
  {
    v6 = sub_25849D140;
  }

  else
  {
    v6 = sub_25849CF04;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_25849CF04()
{
  v1 = v0[113];
  if (*(v1 + 121) == 3)
  {
    v2 = v0[131];
    v3 = v0[130];
    v4 = v0[129];
    v5 = v0[128];
    v6 = v0[127];
    *(v1 + 121) = 4;
    sub_25852FFD0(3);
    sub_2584A975C((v0 + 26));
    sub_2584A975C((v0 + 26));
    sub_2584ABAA0((v0 + 38));
    sub_258467E20(v6, v5);
    sub_258467E20(v4, v3);
    sub_2584AB9E8((v0 + 52));
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 67);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 57);

    v7 = v0[114];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[131];
    v11 = v0[130];
    v12 = v0[129];
    v13 = v0[128];
    v14 = v0[127];
    sub_258476AE4();
    v16 = swift_allocError();
    if (*(v1 + 121) == 5)
    {
      v17 = 4;
    }

    else
    {
      v17 = 5;
    }

    *v15 = v17;
    swift_willThrow();
    sub_2584A975C((v0 + 26));
    sub_2584A975C((v0 + 26));
    sub_2584ABAA0((v0 + 38));
    sub_258467E20(v14, v13);
    sub_258467E20(v12, v11);
    sub_2584AB9E8((v0 + 52));
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 67);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 57);

    v0[136] = v16;
    v18 = swift_task_alloc();
    v0[137] = v18;
    *v18 = v0;
    v18[1] = sub_25849D264;
    v19 = v0[113];

    return sub_258519188(v16);
  }
}

uint64_t sub_25849D140()
{
  v1 = v0[131];
  v2 = v0[130];
  v3 = v0[129];
  v4 = v0[128];
  v5 = v0[127];
  sub_2584A975C((v0 + 26));
  sub_2584A975C((v0 + 26));
  sub_2584ABAA0((v0 + 38));
  sub_258467E20(v5, v4);
  sub_258467E20(v3, v2);
  sub_2584AB9E8((v0 + 52));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 67);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 57);

  v6 = v0[135];
  v0[136] = v6;
  v7 = swift_task_alloc();
  v0[137] = v7;
  *v7 = v0;
  v7[1] = sub_25849D264;
  v8 = v0[113];

  return sub_258519188(v6);
}

uint64_t sub_25849D264()
{
  v1 = *(*v0 + 1096);
  v2 = *(*v0 + 904);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25849D374, v2, 0);
}

uint64_t sub_25849D374()
{
  v1 = v0[136];
  v2 = v0[114];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[136];

  return v3();
}

uint64_t sub_25849D3EC()
{
  v1[113] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930580, &unk_2585382B0) - 8) + 64) + 15;
  v1[114] = swift_task_alloc();
  type metadata accessor for VideoStreamAVConference();
  v1[115] = sub_2584AC2F0(&qword_27F9305B8, type metadata accessor for VideoStreamAVConference);
  v4 = sub_25853362C();
  v1[116] = v4;
  v1[117] = v3;

  return MEMORY[0x2822009F8](sub_25849D4E4, v4, v3);
}

uint64_t sub_25849D4E4()
{
  v40 = v0;
  v1 = *(v0 + 904);
  v2 = *(v1 + 232);
  if (v2 < 2)
  {
    v9 = *(v0 + 912);

    v10 = *(v0 + 8);

    return v10();
  }

  else if (v2 == 4)
  {
    v12 = (v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection);
    v13 = v12[3];
    v14 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v15 = *(v14 + 104);
    v38 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    *(v0 + 952) = v17;
    *v17 = v0;
    v17[1] = sub_25849DEAC;

    return v38(v0 + 496, v13, v14);
  }

  else if (v2 == 2)
  {

    v3 = sub_258532A2C();
    v4 = sub_2585338EC();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 904);
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v39[0] = v8;
      *v7 = 136315138;

      *(v7 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, v39);
      _os_log_impl(&dword_25845E000, v3, v4, "%s Waiting for activation to complete before migrating", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x259C82900](v8, -1, -1);
      MEMORY[0x259C82900](v7, -1, -1);
    }

    else
    {
      v27 = *(v0 + 904);
    }

    v28 = *(v0 + 920);
    v29 = *(v0 + 904);
    v30 = *(MEMORY[0x277D859E0] + 4);
    v31 = swift_task_alloc();
    *(v0 + 944) = v31;
    *v31 = v0;
    v31[1] = sub_25849DA3C;
    v32 = *(v0 + 904);

    return MEMORY[0x2822007B8]();
  }

  else
  {

    v18 = sub_258532A2C();
    v19 = sub_2585338CC();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 904);
    if (v20)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v39[0] = v23;
      *v22 = 136315394;

      *(v22 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, v39);
      *(v22 + 12) = 2080;
      *(v0 + 1130) = *(v21 + 232);
      v24 = sub_25853347C();
      v26 = sub_2584713B0(v24, v25, v39);

      *(v22 + 14) = v26;
      _os_log_impl(&dword_25845E000, v18, v19, "%s Migration attempted while in state:%s, failing", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v23, -1, -1);
      MEMORY[0x259C82900](v22, -1, -1);
    }

    else
    {
      v33 = *(v0 + 904);
    }

    sub_258476AE4();
    v34 = swift_allocError();
    *v35 = 0;
    swift_willThrow();
    *(v0 + 1112) = v34;
    v36 = swift_task_alloc();
    *(v0 + 1120) = v36;
    *v36 = v0;
    v36[1] = sub_25849F4C4;
    v37 = *(v0 + 904);

    return sub_258519A34(v34);
  }
}

uint64_t sub_25849DA3C()
{
  v1 = *v0;
  v2 = *(*v0 + 944);
  v6 = *v0;

  v3 = *(v1 + 936);
  v4 = *(v1 + 928);

  return MEMORY[0x2822009F8](sub_25849DB5C, v4, v3);
}

uint64_t sub_25849DB5C()
{
  v25 = v0;
  v1 = *(v0 + 904);
  if (*(v1 + 232) == 4)
  {
    v2 = (v1 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_controlConnection);
    v3 = v2[3];
    v4 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v3);
    v5 = *(v4 + 104);
    v23 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 952) = v7;
    *v7 = v0;
    v7[1] = sub_25849DEAC;

    return v23(v0 + 496, v3, v4);
  }

  else
  {

    v9 = sub_258532A2C();
    v10 = sub_2585338CC();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 904);
    if (v11)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24[0] = v14;
      *v13 = 136315394;

      *(v13 + 4) = sub_2584713B0(0xD000000000000026, 0x8000000258540A60, v24);
      *(v13 + 12) = 2080;
      *(v0 + 1130) = *(v12 + 232);
      v15 = sub_25853347C();
      v17 = sub_2584713B0(v15, v16, v24);

      *(v13 + 14) = v17;
      _os_log_impl(&dword_25845E000, v9, v10, "%s Migration attempted while in state:%s, failing", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C82900](v14, -1, -1);
      MEMORY[0x259C82900](v13, -1, -1);
    }

    else
    {
      v18 = *(v0 + 904);
    }

    sub_258476AE4();
    v19 = swift_allocError();
    *v20 = 0;
    swift_willThrow();
    *(v0 + 1112) = v19;
    v21 = swift_task_alloc();
    *(v0 + 1120) = v21;
    *v21 = v0;
    v21[1] = sub_25849F4C4;
    v22 = *(v0 + 904);

    return sub_258519A34(v19);
  }
}

uint64_t sub_25849DEAC()
{
  v2 = *v1;
  v3 = *(*v1 + 952);
  v4 = *v1;
  *(*v1 + 960) = v0;

  v5 = *(v2 + 936);
  v6 = *(v2 + 928);
  if (v0)
  {
    v7 = sub_25849E344;
  }

  else
  {
    v7 = sub_25849DFE8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_25849DFE8()
{
  if (!*(v0 + 520))
  {
    sub_258465168(v0 + 496, &qword_27F92FB90, &qword_258535420);
    sub_258476AE4();
    v21 = swift_allocError();
    *v22 = 14;
    swift_willThrow();
LABEL_8:
    *(v0 + 1112) = v21;
    v24 = swift_task_alloc();
    *(v0 + 1120) = v24;
    *v24 = v0;
    v24[1] = sub_25849F4C4;
    v25 = *(v0 + 904);

    return sub_258519A34(v21);
  }

  v1 = *(v0 + 904);
  sub_258464C18((v0 + 496), v0 + 456);
  if (*(v1 + 232) != 4)
  {
    sub_258476AE4();
    v21 = swift_allocError();
    *v23 = 0;
    swift_willThrow();
    goto LABEL_7;
  }

  v2 = *(v0 + 960);
  *(*(v0 + 904) + 232) = 3;
  sub_2585084C8(4);
  v3 = type metadata accessor for NetworkBackedMediaConnectionPrerequisitesProvider();
  *(v0 + 968) = v3;
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = sub_2584EAE98();
  *(v0 + 560) = v3;
  *(v0 + 568) = &off_28698FE70;
  *(v0 + 536) = v6;
  v7 = __swift_project_boxed_opaque_existential_1((v0 + 536), v3);
  v8 = *(v0 + 480);
  v9 = *(v0 + 488);
  __swift_project_boxed_opaque_existential_1((v0 + 456), v8);
  (*(v9 + 8))(v8, v9);
  __swift_project_boxed_opaque_existential_1((v0 + 576), *(v0 + 600));
  v10 = sub_258532D5C();
  v12 = sub_2585226BC(v10, v11);
  v14 = v13;

  *(v0 + 976) = v14;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 576));
  v15 = *(v0 + 480);
  v16 = *(v0 + 488);
  __swift_project_boxed_opaque_existential_1((v0 + 456), v15);
  (*(v16 + 24))(v15, v16);
  v17 = __swift_project_boxed_opaque_existential_1((v0 + 616), *(v0 + 640));
  v19 = v17[2];
  v18 = v17[3];
  *(v0 + 984) = v18;

  v20 = sub_2584BC58C();
  if (v2)
  {
    v21 = v2;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 616));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 456));
    goto LABEL_8;
  }

  v27 = v20;
  v28 = *v7;
  v29 = swift_task_alloc();
  *(v0 + 992) = v29;
  *v29 = v0;
  v29[1] = sub_25849E3F8;

  return sub_2584EB264(v0 + 416, v12, v14, v19, v18, v27);
}

uint64_t sub_25849E344()
{
  v1 = v0[120];
  v0[139] = v1;
  v2 = swift_task_alloc();
  v0[140] = v2;
  *v2 = v0;
  v2[1] = sub_25849F4C4;
  v3 = v0[113];

  return sub_258519A34(v1);
}

uint64_t sub_25849E3F8()
{
  v2 = *v1;
  v3 = *(*v1 + 992);
  v12 = *v1;
  *(*v1 + 1000) = v0;

  v4 = *(v2 + 984);
  if (v0)
  {
    v5 = *(v2 + 976);

    v6 = *(v2 + 936);
    v7 = *(v2 + 928);
    v8 = sub_25849E8C8;
  }

  else
  {
    v9 = *(v2 + 976);
    *(v2 + 1128) = *(v2 + 416);
    v10 = *(v2 + 440);
    *(v2 + 1008) = *(v2 + 424);
    *(v2 + 1024) = v10;

    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 616));
    v6 = *(v2 + 936);
    v7 = *(v2 + 928);
    v8 = sub_25849E560;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_25849E560()
{
  v1 = *(v0 + 904);
  if (*(v1 + 232) == 3)
  {
    v28 = *(v0 + 1024);
    v29 = *(v0 + 1032);
    v27 = *(v0 + 1016);
    v2 = *(v0 + 1008);
    v26 = *(v0 + 1128);
    v30 = *(v0 + 920);
    v3 = *(v0 + 480);
    v4 = *(v0 + 488);
    __swift_project_boxed_opaque_existential_1((v0 + 456), v3);
    (*(v4 + 16))(v3, v4);
    v5 = __swift_project_boxed_opaque_existential_1((v0 + 656), *(v0 + 680));
    v6 = *v5;
    *(v0 + 1040) = *v5;
    v7 = v5[1];
    *(v0 + 1048) = v7;
    v8 = *(v0 + 480);
    v9 = *(v0 + 488);
    __swift_project_boxed_opaque_existential_1((v0 + 456), v8);
    v10 = *(v9 + 24);
    sub_2584A7B8C(v6, v7);
    v10(v8, v9);
    v11 = __swift_project_boxed_opaque_existential_1((v0 + 696), *(v0 + 720));
    v12 = *v11;
    *(v0 + 1056) = *v11;
    v13 = v11[1];
    *(v0 + 1064) = v13;
    sub_2584A7B8C(v12, v13);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 696));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 656));
    *&v14 = v6;
    *(&v14 + 1) = v7;
    *&v15 = v12;
    *(&v15 + 1) = v13;
    *(v0 + 304) = v14;
    *(v0 + 320) = v15;
    *(v0 + 336) = v26;
    *(v0 + 344) = v2;
    *(v0 + 352) = v27;
    *(v0 + 360) = v28;
    *(v0 + 368) = v29;
    v16 = *(v0 + 336);
    *(v0 + 32) = v15;
    *(v0 + 16) = v14;
    *(v0 + 48) = v16;
    *(v0 + 56) = v2;
    *(v0 + 64) = v27;
    *(v0 + 72) = v28;
    *(v0 + 80) = v29;
    *(v0 + 88) = 0x2000000000000000;
    *(v0 + 104) = 0x2000000000000000;
    sub_2584A7B8C(v6, v7);
    sub_2584A7B8C(v12, v13);
    sub_2584ABA3C(v0 + 416, v0 + 736);
    v17 = swift_task_alloc();
    *(v0 + 1072) = v17;
    *(v17 + 16) = v1;
    *(v17 + 24) = v0 + 16;
    v18 = *(MEMORY[0x277D85A40] + 4);
    v19 = swift_task_alloc();
    *(v0 + 1080) = v19;
    *v19 = v0;
    v19[1] = sub_25849E994;

    return MEMORY[0x2822008A0](v0 + 112, v1, v30, 0xD000000000000021, 0x8000000258540A30, sub_2584AC338, v17, &type metadata for StreamMessage);
  }

  else
  {
    sub_258476AE4();
    v21 = swift_allocError();
    if (*(v1 + 232) == 5)
    {
      v22 = 4;
    }

    else
    {
      v22 = 5;
    }

    *v20 = v22;
    swift_willThrow();
    sub_2584AB9E8(v0 + 416);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 456));
    *(v0 + 1112) = v21;
    v23 = swift_task_alloc();
    *(v0 + 1120) = v23;
    *v23 = v0;
    v23[1] = sub_25849F4C4;
    v24 = *(v0 + 904);

    return sub_258519A34(v21);
  }
}

uint64_t sub_25849E8C8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 77);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 67);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 57);
  v1 = v0[125];
  v0[139] = v1;
  v2 = swift_task_alloc();
  v0[140] = v2;
  *v2 = v0;
  v2[1] = sub_25849F4C4;
  v3 = v0[113];

  return sub_258519A34(v1);
}

uint64_t sub_25849E994()
{
  v2 = *v1;
  v3 = *(*v1 + 1080);
  v11 = *v1;
  *(*v1 + 1088) = v0;

  if (v0)
  {
    v4 = v2[134];
    v5 = v2[133];
    v6 = v2[132];
    sub_258467E20(v2[130], v2[131]);
    sub_258467E20(v6, v5);
    sub_2584AB9E8((v2 + 52));

    v7 = v2[117];
    v8 = v2[116];
    v9 = sub_25849EF5C;
  }

  else
  {
    v7 = v2[117];
    v8 = v2[116];
    v9 = sub_25849EAEC;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_25849EAEC()
{
  v1 = *(v0 + 904);
  v2 = *(v0 + 128);
  *(v0 + 208) = *(v0 + 112);
  *(v0 + 224) = v2;
  v3 = *(v0 + 192);
  *(v0 + 272) = *(v0 + 176);
  *(v0 + 288) = v3;
  v4 = *(v0 + 160);
  *(v0 + 240) = *(v0 + 144);
  *(v0 + 256) = v4;
  if (*(v1 + 232) != 3)
  {
    v19 = *(v0 + 1072);
    v20 = *(v0 + 1064);
    v21 = *(v0 + 1056);
    v22 = *(v0 + 1048);
    v23 = *(v0 + 1040);
    sub_258476AE4();
    v11 = swift_allocError();
    if (*(v1 + 232) == 5)
    {
      v25 = 4;
    }

    else
    {
      v25 = 5;
    }

    goto LABEL_9;
  }

  if (((*(v0 + 296) >> 59) & 6 | ((*(v0 + 280) & 0x2000000000000000) != 0)) != 6)
  {
    v26 = *(v0 + 1072);
    v20 = *(v0 + 1064);
    v21 = *(v0 + 1056);
    v22 = *(v0 + 1048);
    v23 = *(v0 + 1040);
    sub_258476AE4();
    v11 = swift_allocError();
    v25 = 19;
LABEL_9:
    *v24 = v25;
    swift_willThrow();
    sub_2584A975C(v0 + 208);
    sub_2584ABAA0(v0 + 304);
    sub_258467E20(v23, v22);
    v17 = v21;
    v18 = v20;
    goto LABEL_10;
  }

  v5 = *(v0 + 1088);
  v6 = *(v0 + 912);
  *(v0 + 376) = *(v0 + 208);
  v7 = *(v0 + 232);
  *(v0 + 384) = *(v0 + 216);
  *(v0 + 400) = v7;
  v8 = *__swift_project_boxed_opaque_existential_1((v0 + 536), *(v0 + 560));
  v9 = *(v0 + 232);
  v10 = *(v0 + 240);
  sub_2584ABAF4(*(v0 + 216), *(v0 + 224));
  sub_2584ABAF4(v9, v10);
  sub_2584EE23C((v0 + 376), v6);
  if (v5)
  {
    v11 = v5;
    v12 = *(v0 + 1072);
    v13 = *(v0 + 1064);
    v14 = *(v0 + 1056);
    v15 = *(v0 + 1048);
    v16 = *(v0 + 1040);
    sub_2584A975C(v0 + 208);
    sub_2584ABAA0(v0 + 304);
    sub_2584A975C(v0 + 208);
    sub_258467E20(v16, v15);
    v17 = v14;
    v18 = v13;
LABEL_10:
    sub_258467E20(v17, v18);
    sub_2584AB9E8(v0 + 416);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 536));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 456));

    *(v0 + 1112) = v11;
    v27 = swift_task_alloc();
    *(v0 + 1120) = v27;
    *v27 = v0;
    v27[1] = sub_25849F4C4;
    v28 = *(v0 + 904);

    return sub_258519A34(v11);
  }

  v30 = *(v0 + 968);
  v31 = *(v0 + 912);
  v32 = *(v0 + 904);
  v33 = type metadata accessor for MediaConnectionPrerequisites();
  (*(*(v33 - 8) + 56))(v31, 0, 1, v33);
  v34 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_connectionPrerequisites;
  swift_beginAccess();
  sub_2584AC5D0(v31, v32 + v34, &qword_27F930580, &unk_2585382B0);
  swift_endAccess();
  sub_258464C30(v0 + 536, v0 + 776);
  v35 = *(v0 + 800);
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 776, v35);
  v37 = *(v35 - 8);
  v38 = *(v37 + 64) + 15;
  v39 = swift_task_alloc();
  (*(v37 + 16))(v39, v36, v35);
  v40 = *v39;
  *(v0 + 840) = v30;
  *(v0 + 848) = &off_28698FE70;
  *(v0 + 816) = v40;
  v41 = OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_mediaConnectionPrerequisitesProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v32 + v41));
  sub_258464C18((v0 + 816), v32 + v41);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 776));

  v42 = swift_task_alloc();
  *(v0 + 1096) = v42;
  *v42 = v0;
  v42[1] = sub_25849F028;
  v43 = *(v0 + 904);

  return sub_258523560();
}

uint64_t sub_25849EF5C()
{
  sub_2584ABAA0((v0 + 38));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 67);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 57);
  v1 = v0[136];
  v0[139] = v1;
  v2 = swift_task_alloc();
  v0[140] = v2;
  *v2 = v0;
  v2[1] = sub_25849F4C4;
  v3 = v0[113];

  return sub_258519A34(v1);
}

uint64_t sub_25849F028()
{
  v2 = *v1;
  v3 = *(*v1 + 1096);
  v4 = *v1;
  *(*v1 + 1104) = v0;

  v5 = *(v2 + 936);
  v6 = *(v2 + 928);
  if (v0)
  {
    v7 = sub_25849F3A0;
  }

  else
  {
    v7 = sub_25849F164;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_25849F164()
{
  v1 = v0[113];
  if (*(v1 + 232) == 3)
  {
    v2 = v0[134];
    v3 = v0[133];
    v4 = v0[132];
    v5 = v0[131];
    v6 = v0[130];
    *(v1 + 232) = 4;
    sub_2585084C8(3);
    sub_2584A975C((v0 + 26));
    sub_2584A975C((v0 + 26));
    sub_2584ABAA0((v0 + 38));
    sub_258467E20(v6, v5);
    sub_258467E20(v4, v3);
    sub_2584AB9E8((v0 + 52));
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 67);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 57);

    v7 = v0[114];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[134];
    v11 = v0[133];
    v12 = v0[132];
    v13 = v0[131];
    v14 = v0[130];
    sub_258476AE4();
    v16 = swift_allocError();
    if (*(v1 + 232) == 5)
    {
      v17 = 4;
    }

    else
    {
      v17 = 5;
    }

    *v15 = v17;
    swift_willThrow();
    sub_2584A975C((v0 + 26));
    sub_2584A975C((v0 + 26));
    sub_2584ABAA0((v0 + 38));
    sub_258467E20(v14, v13);
    sub_258467E20(v12, v11);
    sub_2584AB9E8((v0 + 52));
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 67);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 57);

    v0[139] = v16;
    v18 = swift_task_alloc();
    v0[140] = v18;
    *v18 = v0;
    v18[1] = sub_25849F4C4;
    v19 = v0[113];

    return sub_258519A34(v16);
  }
}

uint64_t sub_25849F3A0()
{
  v1 = v0[134];
  v2 = v0[133];
  v3 = v0[132];
  v4 = v0[131];
  v5 = v0[130];
  sub_2584A975C((v0 + 26));
  sub_2584A975C((v0 + 26));
  sub_2584ABAA0((v0 + 38));
  sub_258467E20(v5, v4);
  sub_258467E20(v3, v2);
  sub_2584AB9E8((v0 + 52));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 67);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 57);

  v6 = v0[138];
  v0[139] = v6;
  v7 = swift_task_alloc();
  v0[140] = v7;
  *v7 = v0;
  v7[1] = sub_25849F4C4;
  v8 = v0[113];

  return sub_258519A34(v6);
}

uint64_t sub_25849F4C4()
{
  v1 = *v0;
  v2 = *(*v0 + 1120);
  v6 = *v0;

  v3 = *(v1 + 936);
  v4 = *(v1 + 928);

  return MEMORY[0x2822009F8](sub_25849F5E4, v4, v3);
}

uint64_t sub_25849F5E4()
{
  v1 = v0[139];
  v2 = v0[114];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[139];

  return v3();
}

uint64_t sub_25849F65C(uint64_t a1)
{
  if (*(v1 + 152) == 1)
  {
    swift_beginAccess();
    v4 = *(v1 + 128);
    *(v1 + 128) = MEMORY[0x277D84F98];

    v6 = *(a1 + 16);
    if (v6)
    {
      for (i = a1 + 32; ; i += 40)
      {
        v8 = *(i + 16);
        v11[0] = *i;
        v11[1] = v8;
        v12 = *(i + 32);
        sub_2584AC420(v11, &v10);
        sub_25849F8D4(v11, v1);
        if (v2)
        {
          break;
        }

        result = sub_2584AC47C(v11);
        if (!--v6)
        {
          return result;
        }
      }

      return sub_2584AC47C(v11);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303D0, &unk_258537F90);
    sub_2584ABBE0(&qword_27F9303D8, &qword_27F9303D0, &unk_258537F90);
    swift_allocError();
    *v9 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25849F794(uint64_t a1)
{
  if (*(v1 + 152) == 1)
  {
    swift_beginAccess();
    v4 = *(v1 + 128);
    *(v1 + 128) = MEMORY[0x277D84F98];

    v6 = *(a1 + 16);
    if (v6)
    {
      for (i = (a1 + 40); ; i += 16)
      {
        v8 = *(i - 1);
        v9 = *i;
        sub_2584742A4(v8, *i);
        sub_25849FB68(v8, v9, v1);
        if (v2)
        {
          break;
        }

        result = sub_2584A9614(v8, v9);
        if (!--v6)
        {
          return result;
        }
      }

      return sub_2584A9614(v8, v9);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303C0, &qword_258537F88);
    sub_2584ABBE0(&qword_27F9303C8, &qword_27F9303C0, &qword_258537F88);
    swift_allocError();
    *v10 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25849F8D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(*(a2 + 128) + 16) && (v4 = *(a2 + 128), , sub_2584BC4BC(), v6 = v5, , (v6 & 1) != 0))
  {
    if (qword_27F92F8C8 != -1)
    {
      swift_once();
    }

    v7 = sub_258532A4C();
    __swift_project_value_buffer(v7, qword_27F93CFA8);
    sub_2584AC420(a1, v20);
    v8 = sub_258532A2C();
    v9 = sub_2585338CC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20[0] = v11;
      *v10 = 136315138;
      v12 = sub_25853347C();
      v14 = v13;
      sub_2584AC47C(a1);
      v15 = sub_2584713B0(v12, v14, v20);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_25845E000, v8, v9, "Multiple configurations for %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x259C82900](v11, -1, -1);
      MEMORY[0x259C82900](v10, -1, -1);
    }

    else
    {

      sub_2584AC47C(a1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303D0, &unk_258537F90);
    sub_2584ABBE0(&qword_27F9303D8, &qword_27F9303D0, &unk_258537F90);
    swift_allocError();
    *v19 = 2;
    return swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    sub_2584AC420(a1, v20);
    v16 = *(a2 + 128);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20[0] = *(a2 + 128);
    *(a2 + 128) = 0x8000000000000000;
    sub_25850CE78(a1, isUniquelyReferenced_nonNull_native);
    *(a2 + 128) = v20[0];
    return swift_endAccess();
  }
}

uint64_t sub_25849FB68(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(*(a3 + 128) + 16) && (v6 = *(a3 + 128), , sub_2584BC50C(), v8 = v7, , (v8 & 1) != 0))
  {
    if (qword_27F92F8C8 != -1)
    {
      swift_once();
    }

    v9 = sub_258532A4C();
    __swift_project_value_buffer(v9, qword_27F93CFA8);
    sub_2584742A4(a1, a2 & 1);
    v10 = sub_258532A2C();
    v11 = sub_2585338CC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = v13;
      *v12 = 136315138;
      v14 = sub_25853347C();
      v16 = v15;
      sub_2584A9614(a1, a2 & 1);
      v17 = sub_2584713B0(v14, v16, &v23);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_25845E000, v10, v11, "Multiple configurations for %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x259C82900](v13, -1, -1);
      MEMORY[0x259C82900](v12, -1, -1);
    }

    else
    {

      sub_2584A9614(a1, a2 & 1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303C0, &qword_258537F88);
    sub_2584ABBE0(&qword_27F9303C8, &qword_27F9303C0, &qword_258537F88);
    swift_allocError();
    *v21 = 2;
    return swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    sub_2584742A4(a1, a2 & 1);
    v18 = *(a3 + 128);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(a3 + 128);
    *(a3 + 128) = 0x8000000000000000;
    sub_25850CFC4(a1, a2 & 1, isUniquelyReferenced_nonNull_native);
    *(a3 + 128) = v22;
    return swift_endAccess();
  }
}

uint64_t sub_25849FE0C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210);
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25849FED8, v1, 0);
}

uint64_t sub_25849FED8()
{
  v15 = v0;
  v1 = v0[9];
  if (*(v1 + 152) != 1)
  {
    v7 = 0;
    goto LABEL_6;
  }

  v2 = v0[8];
  v3 = *(v2 + 112);
  v0[13] = v3;
  v0[14] = *(v2 + 120);
  v3(v13);
  sub_2584A96C0(v13[0], v13[1], v13[2], v13[3], v14);
  swift_beginAccess();
  if (*(*(v1 + 112) + 16))
  {
    v4 = *(v1 + 112);

    sub_2584BC4BC();
    v6 = v5;

    if (v6)
    {
      v7 = 1;
LABEL_6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303D0, &unk_258537F90);
      sub_2584ABBE0(&qword_27F9303D8, &qword_27F9303D0, &unk_258537F90);
      swift_allocError();
      *v8 = v7;
      swift_willThrow();
      v9 = v0[12];

      v10 = v0[1];

      return v10();
    }
  }

  v12 = v0[8];

  return MEMORY[0x2822009F8](sub_2584A007C, v12, 0);
}

uint64_t sub_2584A007C()
{
  v1 = v0[8];
  v2 = *(v1 + 136);
  v7 = (*(v1 + 128) + **(v1 + 128));
  v3 = *(*(v1 + 128) + 4);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_2584A0170;
  v5 = v0[12];

  return v7(v5);
}

uint64_t sub_2584A0170()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {
    v4 = v3[9];

    return MEMORY[0x2822009F8](sub_2584AC7C0, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[17] = v5;
    *v5 = v3;
    v5[1] = sub_2584A02E4;
    v6 = v3[12];
    v7 = v3[9];
    v8 = v3[8];

    return sub_2584A2808(v8, v6);
  }
}

uint64_t sub_2584A02E4()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_2584AC7BC;
  }

  else
  {
    v6 = sub_2584A0410;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584A0410()
{
  v28 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  (*(v0 + 104))(&v22);
  v3 = sub_2584A96C0(v22, v23, v24, v25, v26);
  if (*(*(v2 + 112) + 16) && (v4 = *(v2 + 112), , sub_2584BC4BC(), v6 = v5, v3 = , (v6 & 1) != 0))
  {
    v8 = *(v0 + 88);
    v7 = *(v0 + 96);
    v9 = *(v0 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303D0, &unk_258537F90);
    sub_2584ABBE0(&qword_27F9303D8, &qword_27F9303D0, &unk_258537F90);
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
    (*(v8 + 8))(v7, v9);
    v11 = *(v0 + 96);

    v12 = *(v0 + 8);
  }

  else
  {
    v13 = *(v0 + 112);
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v17 = *(v0 + 72);
    v16 = *(v0 + 80);
    v18 = *(v0 + 64);
    (*(v0 + 104))(&v22, v3);
    sub_2584A96C0(v22, v23, v24, v25, v26);
    swift_beginAccess();

    v19 = *(v17 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(v17 + 112);
    *(v17 + 112) = 0x8000000000000000;
    sub_25850D268(v18, isUniquelyReferenced_nonNull_native);
    *(v17 + 112) = v27;
    swift_endAccess();
    (*(v15 + 8))(v14, v16);

    v12 = *(v0 + 8);
  }

  return v12();
}

uint64_t sub_2584A0618(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210);
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584A06E4, v1, 0);
}

uint64_t sub_2584A06E4()
{
  v15 = v0;
  v1 = v0[9];
  if (*(v1 + 152) != 1)
  {
    v7 = 0;
    goto LABEL_6;
  }

  v2 = v0[8];
  v3 = *(v2 + 112);
  v0[13] = v3;
  v0[14] = *(v2 + 120);
  v3(&v13);
  sub_2584A9614(v13, v14);
  swift_beginAccess();
  if (*(*(v1 + 112) + 16))
  {
    v4 = *(v1 + 112);

    sub_2584BC50C();
    v6 = v5;

    if (v6)
    {
      v7 = 1;
LABEL_6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303C0, &qword_258537F88);
      sub_2584ABBE0(&qword_27F9303C8, &qword_27F9303C0, &qword_258537F88);
      swift_allocError();
      *v8 = v7;
      swift_willThrow();
      v9 = v0[12];

      v10 = v0[1];

      return v10();
    }
  }

  v12 = v0[8];

  return MEMORY[0x2822009F8](sub_2584A0884, v12, 0);
}

uint64_t sub_2584A0884()
{
  v1 = v0[8];
  v2 = *(v1 + 136);
  v7 = (*(v1 + 128) + **(v1 + 128));
  v3 = *(*(v1 + 128) + 4);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_2584A0978;
  v5 = v0[12];

  return v7(v5);
}

uint64_t sub_2584A0978()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {
    v4 = v3[9];

    return MEMORY[0x2822009F8](sub_2584A0C18, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[17] = v5;
    *v5 = v3;
    v5[1] = sub_2584A0AEC;
    v6 = v3[12];
    v7 = v3[9];
    v8 = v3[8];

    return sub_2584A2CB4(v8, v6);
  }
}

uint64_t sub_2584A0AEC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_2584A0E7C;
  }

  else
  {
    v6 = sub_2584A0C7C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584A0C18()
{
  v1 = v0[16];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2584A0C7C()
{
  v25 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  (*(v0 + 104))(&v22);
  v3 = sub_2584A9614(v22, v23);
  if (*(*(v2 + 112) + 16) && (v4 = *(v2 + 112), , sub_2584BC50C(), v6 = v5, v3 = , (v6 & 1) != 0))
  {
    v8 = *(v0 + 88);
    v7 = *(v0 + 96);
    v9 = *(v0 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303C0, &qword_258537F88);
    sub_2584ABBE0(&qword_27F9303C8, &qword_27F9303C0, &qword_258537F88);
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
    (*(v8 + 8))(v7, v9);
    v11 = *(v0 + 96);

    v12 = *(v0 + 8);
  }

  else
  {
    v13 = *(v0 + 112);
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v17 = *(v0 + 72);
    v16 = *(v0 + 80);
    v18 = *(v0 + 64);
    (*(v0 + 104))(&v22, v3);
    sub_2584A9614(v22, v23);
    swift_beginAccess();

    v19 = *(v17 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v17 + 112);
    *(v17 + 112) = 0x8000000000000000;
    sub_25850D560(v18, isUniquelyReferenced_nonNull_native);
    *(v17 + 112) = v24;
    swift_endAccess();
    (*(v15 + 8))(v14, v16);

    v12 = *(v0 + 8);
  }

  return v12();
}

uint64_t sub_2584A0E7C()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[18];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2584A0F18()
{
  v1 = *(v0 + 64);
  if (*(v1 + 152) == 1)
  {
    *(v1 + 152) = 0;
    swift_beginAccess();
    v2 = *(v1 + 112);
    *(v0 + 72) = v2;
    v3 = *(v2 + 32);
    *(v0 + 112) = v3;
    v4 = -1;
    v5 = -1 << v3;
    if (-(-1 << v3) < 64)
    {
      v4 = ~(-1 << -v5);
    }

    v6 = v4 & *(v2 + 64);

    if (v6)
    {
      v8 = 0;
LABEL_9:
      *(v0 + 80) = v6;
      *(v0 + 88) = v8;
      v10 = *(*(v7 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
      *(v0 + 96) = v10;

      v11 = sub_2584A11B8;
      v12 = v10;
      v13 = 0;
    }

    else
    {
      v9 = 0;
      while (((63 - v5) >> 6) - 1 != v9)
      {
        v8 = v9 + 1;
        v6 = *(v7 + 8 * v9++ + 72);
        if (v6)
        {
          goto LABEL_9;
        }
      }

      v14 = *(v0 + 64);

      swift_beginAccess();
      v15 = *(v14 + 120);
      v16 = -1;
      v17 = -1 << *(v15 + 32);
      if (-v17 < 64)
      {
        v16 = ~(-1 << -v17);
      }

      v18 = v16 & *(v15 + 64);
      v19 = (63 - v17) >> 6;

      for (i = 0; v18; v11 = )
      {
        v21 = i;
LABEL_20:
        v22 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v23 = *(*(v15 + 56) + ((v21 << 9) | (8 * v22)));

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
        sub_25853374C();
      }

      while (1)
      {
        v21 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v21 >= v19)
        {
          v24 = *(v0 + 64);

          v25 = *(v24 + 136);
          v26 = *(v24 + 144);
          *(v24 + 136) = 0;
          *(v24 + 144) = 0;
          sub_258464B24(v25);
          goto LABEL_23;
        }

        v18 = *(v15 + 64 + 8 * v21);
        ++i;
        if (v18)
        {
          i = v21;
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
LABEL_23:
    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_2584A11B8()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 184);
  v6 = (*(v1 + 176) + **(v1 + 176));
  v3 = *(*(v1 + 176) + 4);
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_2584A12A4;

  return v6();
}

uint64_t sub_2584A12A4()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2584A13B4, v2, 0);
}

uint64_t sub_2584A13B4()
{
  v1 = *(v0 + 96);

  v5 = *(v0 + 88);
  v6 = (*(v0 + 80) - 1) & *(v0 + 80);
  if (v6)
  {
    v2 = *(v0 + 72);
LABEL_7:
    *(v0 + 80) = v6;
    *(v0 + 88) = v5;
    v8 = *(*(v2 + 7) + ((v5 << 9) | (8 * __clz(__rbit64(v6)))));
    *(v0 + 96) = v8;

    v2 = sub_2584A11B8;
    v3 = v8;
    v4 = 0;
  }

  else
  {
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      v2 = *(v0 + 72);
      if (v7 >= (((1 << *(v0 + 112)) + 63) >> 6))
      {
        break;
      }

      v6 = *(v2 + v7 + 8);
      ++v5;
      if (v6)
      {
        v5 = v7;
        goto LABEL_7;
      }
    }

    v9 = *(v0 + 64);

    swift_beginAccess();
    v10 = *(v9 + 120);
    v11 = -1;
    v12 = -1 << *(v10 + 32);
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v13 = v11 & *(v10 + 64);
    v14 = (63 - v12) >> 6;

    for (i = 0; v13; v2 = )
    {
      v16 = i;
LABEL_18:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v18 = *(*(v10 + 56) + ((v16 << 9) | (8 * v17)));

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      sub_25853374C();
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
        v19 = *(v0 + 64);

        v20 = *(v19 + 136);
        v21 = *(v19 + 144);
        *(v19 + 136) = 0;
        *(v19 + 144) = 0;
        sub_258464B24(v20);
        v22 = *(v0 + 8);

        return v22();
      }

      v13 = *(v10 + 64 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_18;
      }
    }

LABEL_24:
    __break(1u);
  }

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2584A1638()
{
  v1 = *(v0 + 64);
  if (*(v1 + 152) == 1)
  {
    *(v1 + 152) = 0;
    swift_beginAccess();
    v2 = *(v1 + 112);
    *(v0 + 72) = v2;
    v3 = *(v2 + 32);
    *(v0 + 112) = v3;
    v4 = -1;
    v5 = -1 << v3;
    if (-(-1 << v3) < 64)
    {
      v4 = ~(-1 << -v5);
    }

    v6 = v4 & *(v2 + 64);

    if (v6)
    {
      v8 = 0;
LABEL_9:
      *(v0 + 80) = v6;
      *(v0 + 88) = v8;
      v10 = *(*(v7 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
      *(v0 + 96) = v10;

      v11 = sub_2584A18D8;
      v12 = v10;
      v13 = 0;
    }

    else
    {
      v9 = 0;
      while (((63 - v5) >> 6) - 1 != v9)
      {
        v8 = v9 + 1;
        v6 = *(v7 + 8 * v9++ + 72);
        if (v6)
        {
          goto LABEL_9;
        }
      }

      v14 = *(v0 + 64);

      swift_beginAccess();
      v15 = *(v14 + 120);
      v16 = -1;
      v17 = -1 << *(v15 + 32);
      if (-v17 < 64)
      {
        v16 = ~(-1 << -v17);
      }

      v18 = v16 & *(v15 + 64);
      v19 = (63 - v17) >> 6;

      for (i = 0; v18; v11 = )
      {
        v21 = i;
LABEL_20:
        v22 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v23 = *(*(v15 + 56) + ((v21 << 9) | (8 * v22)));

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
        sub_25853374C();
      }

      while (1)
      {
        v21 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v21 >= v19)
        {
          v24 = *(v0 + 64);

          v25 = *(v24 + 136);
          v26 = *(v24 + 144);
          *(v24 + 136) = 0;
          *(v24 + 144) = 0;
          sub_258464B24(v25);
          goto LABEL_23;
        }

        v18 = *(v15 + 64 + 8 * v21);
        ++i;
        if (v18)
        {
          i = v21;
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
LABEL_23:
    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_2584A18D8()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 184);
  v6 = (*(v1 + 176) + **(v1 + 176));
  v3 = *(*(v1 + 176) + 4);
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_2584A19C4;

  return v6();
}

uint64_t sub_2584A19C4()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2584A1AD4, v2, 0);
}

uint64_t sub_2584A1AD4()
{
  v1 = *(v0 + 96);

  v5 = *(v0 + 88);
  v6 = (*(v0 + 80) - 1) & *(v0 + 80);
  if (v6)
  {
    v2 = *(v0 + 72);
LABEL_7:
    *(v0 + 80) = v6;
    *(v0 + 88) = v5;
    v8 = *(*(v2 + 7) + ((v5 << 9) | (8 * __clz(__rbit64(v6)))));
    *(v0 + 96) = v8;

    v2 = sub_2584A18D8;
    v3 = v8;
    v4 = 0;
  }

  else
  {
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      v2 = *(v0 + 72);
      if (v7 >= (((1 << *(v0 + 112)) + 63) >> 6))
      {
        break;
      }

      v6 = *(v2 + v7 + 8);
      ++v5;
      if (v6)
      {
        v5 = v7;
        goto LABEL_7;
      }
    }

    v9 = *(v0 + 64);

    swift_beginAccess();
    v10 = *(v9 + 120);
    v11 = -1;
    v12 = -1 << *(v10 + 32);
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v13 = v11 & *(v10 + 64);
    v14 = (63 - v12) >> 6;

    for (i = 0; v13; v2 = )
    {
      v16 = i;
LABEL_18:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v18 = *(*(v10 + 56) + ((v16 << 9) | (8 * v17)));

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308C0, &qword_258537580);
      sub_25853374C();
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
        v19 = *(v0 + 64);

        v20 = *(v19 + 136);
        v21 = *(v19 + 144);
        *(v19 + 136) = 0;
        *(v19 + 144) = 0;
        sub_258464B24(v20);
        v22 = *(v0 + 8);

        return v22();
      }

      v13 = *(v10 + 64 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_18;
      }
    }

LABEL_24:
    __break(1u);
  }

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2584A1D58()
{
  v1 = *(v0 + 40);
  if ((*(v1 + 152) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303D0, &unk_258537F90);
    sub_2584ABBE0(&qword_27F9303D8, &qword_27F9303D0, &unk_258537F90);
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    v10 = *(v0 + 8);
LABEL_7:

    return v10();
  }

  swift_beginAccess();
  v2 = *(v1 + 112);
  *(v0 + 48) = v2;
  v3 = *(v2 + 32);
  *(v0 + 96) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);

  if (!v6)
  {
    v12 = 0;
    while (((63 - v5) >> 6) - 1 != v12)
    {
      v8 = v12 + 1;
      v6 = *(v7 + 8 * v12++ + 72);
      if (v6)
      {
        goto LABEL_13;
      }
    }

    v10 = *(v0 + 8);
    goto LABEL_7;
  }

  v8 = 0;
LABEL_13:
  *(v0 + 56) = v6;
  *(v0 + 64) = v8;
  v13 = *(*(v7 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
  *(v0 + 72) = v13;

  return MEMORY[0x2822009F8](sub_2584A1F30, v13, 0);
}

uint64_t sub_2584A1F30()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 152);
  v6 = (*(v1 + 144) + **(v1 + 144));
  v3 = *(*(v1 + 144) + 4);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_2584A201C;

  return v6();
}

uint64_t sub_2584A201C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_2584AC7DC;
  }

  else
  {
    v6 = sub_2584A2148;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584A2148()
{
  v1 = *(v0 + 72);

  v5 = *(v0 + 64);
  v6 = (*(v0 + 56) - 1) & *(v0 + 56);
  if (v6)
  {
    v2 = *(v0 + 48);
LABEL_7:
    *(v0 + 56) = v6;
    *(v0 + 64) = v5;
    v8 = *(*(v2 + 7) + ((v5 << 9) | (8 * __clz(__rbit64(v6)))));
    *(v0 + 72) = v8;

    v2 = sub_2584A1F30;
    v3 = v8;
    v4 = 0;

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  else
  {
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        return MEMORY[0x2822009F8](v2, v3, v4);
      }

      v2 = *(v0 + 48);
      if (v7 >= (((1 << *(v0 + 96)) + 63) >> 6))
      {
        break;
      }

      v6 = *(v2 + v7 + 8);
      ++v5;
      if (v6)
      {
        v5 = v7;
        goto LABEL_7;
      }
    }

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_2584A2288()
{
  v1 = *(v0 + 40);
  if ((*(v1 + 152) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303C0, &qword_258537F88);
    sub_2584ABBE0(&qword_27F9303C8, &qword_27F9303C0, &qword_258537F88);
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    v10 = *(v0 + 8);
LABEL_7:

    return v10();
  }

  swift_beginAccess();
  v2 = *(v1 + 112);
  *(v0 + 48) = v2;
  v3 = *(v2 + 32);
  *(v0 + 96) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);

  if (!v6)
  {
    v12 = 0;
    while (((63 - v5) >> 6) - 1 != v12)
    {
      v8 = v12 + 1;
      v6 = *(v7 + 8 * v12++ + 72);
      if (v6)
      {
        goto LABEL_13;
      }
    }

    v10 = *(v0 + 8);
    goto LABEL_7;
  }

  v8 = 0;
LABEL_13:
  *(v0 + 56) = v6;
  *(v0 + 64) = v8;
  v13 = *(*(v7 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
  *(v0 + 72) = v13;

  return MEMORY[0x2822009F8](sub_2584A2460, v13, 0);
}

uint64_t sub_2584A2460()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 152);
  v6 = (*(v1 + 144) + **(v1 + 144));
  v3 = *(*(v1 + 144) + 4);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_2584A254C;

  return v6();
}

uint64_t sub_2584A254C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_2584A2798;
  }

  else
  {
    v6 = sub_2584A2678;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2584A2678()
{
  v1 = *(v0 + 72);

  v5 = *(v0 + 64);
  v6 = (*(v0 + 56) - 1) & *(v0 + 56);
  if (v6)
  {
    v2 = *(v0 + 48);
LABEL_7:
    *(v0 + 56) = v6;
    *(v0 + 64) = v5;
    v8 = *(*(v2 + 7) + ((v5 << 9) | (8 * __clz(__rbit64(v6)))));
    *(v0 + 72) = v8;

    v2 = sub_2584A2460;
    v3 = v8;
    v4 = 0;

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  else
  {
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        return MEMORY[0x2822009F8](v2, v3, v4);
      }

      v2 = *(v0 + 48);
      if (v7 >= (((1 << *(v0 + 96)) + 63) >> 6))
      {
        break;
      }

      v6 = *(v2 + v7 + 8);
      ++v5;
      if (v6)
      {
        v5 = v7;
        goto LABEL_7;
      }
    }

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_2584A2798()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[11];
  v4 = v0[1];

  return v4();
}

uint64_t sub_2584A2808(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_2584A282C, v2, 0);
}

uint64_t sub_2584A282C()
{
  v25 = v0;
  v1 = v0[7];
  v2 = v0[5];
  v3 = *(v2 + 120);
  (*(v2 + 112))(v23);
  sub_2584A96C0(v23[0], v23[1], v23[2], v23[3], v24);
  swift_beginAccess();
  if (*(*(v1 + 120) + 16) && (v4 = *(v1 + 120), , sub_2584BC4BC(), v6 = v5, , (v6 & 1) != 0))
  {
    if (qword_27F92F8C8 != -1)
    {
      swift_once();
    }

    v7 = sub_258532A4C();
    __swift_project_value_buffer(v7, qword_27F93CFA8);
    v8 = sub_258532A2C();
    v9 = sub_2585338CC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23[0] = v11;
      *v10 = 136315138;
      v12 = sub_25853347C();
      v14 = sub_2584713B0(v12, v13, v23);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_25845E000, v8, v9, "State for %s is already monitored", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x259C82900](v11, -1, -1);
      MEMORY[0x259C82900](v10, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303D0, &unk_258537F90);
    sub_2584ABBE0(&qword_27F9303D8, &qword_27F9303D0, &unk_258537F90);
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
    v16 = v0[1];

    return v16();
  }

  else
  {
    v19 = v0[6];
    v18 = v0[7];
    sub_2584ABBE0(&qword_27F9305B0, &qword_27F930258, &qword_2585379B0);
    v20 = swift_task_alloc();
    v0[8] = v20;
    *(v20 + 16) = v18;
    *(v20 + 32) = v19;
    v21 = *(MEMORY[0x277D859E0] + 4);
    v22 = swift_task_alloc();
    v0[9] = v22;
    *v22 = v0;
    v22[1] = sub_2584A2B88;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_2584A2B88()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2584AC7C4, v3, 0);
}

uint64_t sub_2584A2CB4(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_2584A2CD8, v2, 0);
}

uint64_t sub_2584A2CD8()
{
  v25 = v0;
  v1 = v0[7];
  v2 = v0[5];
  v3 = *(v2 + 120);
  (*(v2 + 112))(&v23);
  sub_2584A9614(v23, v24);
  swift_beginAccess();
  if (*(*(v1 + 120) + 16) && (v4 = *(v1 + 120), , sub_2584BC50C(), v6 = v5, , (v6 & 1) != 0))
  {
    if (qword_27F92F8C8 != -1)
    {
      swift_once();
    }

    v7 = sub_258532A4C();
    __swift_project_value_buffer(v7, qword_27F93CFA8);
    v8 = sub_258532A2C();
    v9 = sub_2585338CC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136315138;
      v12 = sub_25853347C();
      v14 = sub_2584713B0(v12, v13, &v23);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_25845E000, v8, v9, "State for %s is already monitored", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x259C82900](v11, -1, -1);
      MEMORY[0x259C82900](v10, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9303C0, &qword_258537F88);
    sub_2584ABBE0(&qword_27F9303C8, &qword_27F9303C0, &qword_258537F88);
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
    v16 = v0[1];

    return v16();
  }

  else
  {
    v19 = v0[6];
    v18 = v0[7];
    sub_2584ABBE0(&qword_27F930568, &qword_27F930268, &qword_2585379B8);
    v20 = swift_task_alloc();
    v0[8] = v20;
    *(v20 + 16) = v18;
    *(v20 + 32) = v19;
    v21 = *(MEMORY[0x277D859E0] + 4);
    v22 = swift_task_alloc();
    v0[9] = v22;
    *v22 = v0;
    v22[1] = sub_2584A3030;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_2584A3030()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_258485020, v3, 0);
}

uint64_t sub_2584A315C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v36 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210);
  v33 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v31 - v8;
  v34 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220);
  v32 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v31 - v19;
  v21 = sub_25853368C();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v11 + 16))(v15, v35, v10);
  (*(v5 + 16))(v9, v36, v4);
  v22 = sub_2584ABBE0(&qword_27F9305B0, &qword_27F930258, &qword_2585379B0);
  v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v24 = (v12 + *(v5 + 80) + v23) & ~*(v5 + 80);
  v25 = (v6 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = v22;
  (*(v11 + 32))(v26 + v23, v15, v32);
  (*(v5 + 32))(v26 + v24, v34, v33);
  *(v26 + v25) = a2;
  swift_retain_n();
  v27 = sub_258476C88(0, 0, v20, &unk_2585382E0, v26);
  swift_beginAccess();
  v28 = *(a2 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(a2 + 120);
  *(a2 + 120) = 0x8000000000000000;
  sub_25850D3E4(v27, isUniquelyReferenced_nonNull_native);
  *(a2 + 120) = v37;
  return swift_endAccess();
}

uint64_t sub_2584A34C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v36 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210);
  v33 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v31 - v8;
  v34 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220);
  v32 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v31 - v19;
  v21 = sub_25853368C();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v11 + 16))(v15, v35, v10);
  (*(v5 + 16))(v9, v36, v4);
  v22 = sub_2584ABBE0(&qword_27F930568, &qword_27F930268, &qword_2585379B8);
  v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v24 = (v12 + *(v5 + 80) + v23) & ~*(v5 + 80);
  v25 = (v6 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = v22;
  (*(v11 + 32))(v26 + v23, v15, v32);
  (*(v5 + 32))(v26 + v24, v34, v33);
  *(v26 + v25) = a2;
  swift_retain_n();
  v27 = sub_258476C88(0, 0, v20, &unk_258538230, v26);
  swift_beginAccess();
  v28 = *(a2 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(a2 + 120);
  *(a2 + 120) = 0x8000000000000000;
  sub_25850D6D0(v27, isUniquelyReferenced_nonNull_native);
  *(a2 + 120) = v37;
  return swift_endAccess();
}

uint64_t sub_2584A3824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930578, &qword_258538240);
  v6[14] = v8;
  v9 = *(v8 - 8);
  v6[15] = v9;
  v10 = *(v9 + 64) + 15;
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584A38F8, a6, 0);
}

uint64_t sub_2584A38F8()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220);
  sub_25853364C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210);
  sub_2585336FC();
  v0[17] = sub_2584ABBE0(&qword_27F9305B0, &qword_27F930258, &qword_2585379B0);
  swift_beginAccess();
  v5 = v0[17];
  v6 = v0[13];
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_2584A3A40;
  v9 = v0[16];
  v10 = v0[14];

  return MEMORY[0x2822003E8](v0 + 23, v6, v5, v10);
}

uint64_t sub_2584A3A40()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2584A3B50, v2, 0);
}

uint64_t sub_2584A3B50()
{
  v30 = v0;
  v1 = *(v0 + 184);
  if (v1 == 3 || (sub_25853376C() & 1) != 0)
  {
LABEL_5:
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    v3 = *(v0 + 8);

    return v3();
  }

  v2 = *(v0 + 104);
  if ((v1 - 1) < 2)
  {
    swift_beginAccess();
    sub_2584F8780();
    swift_endAccess();

    swift_beginAccess();
    sub_2584F87CC();
    swift_endAccess();

    goto LABEL_5;
  }

  v5 = *(v2 + 112);
  if (!*(v5 + 16))
  {
    goto LABEL_15;
  }

  v6 = *(v2 + 112);

  v7 = sub_2584BC4BC();
  if ((v8 & 1) == 0)
  {

LABEL_15:
    if (qword_27F92F8C8 != -1)
    {
      swift_once();
    }

    v14 = sub_258532A4C();
    __swift_project_value_buffer(v14, qword_27F93CFA8);
    v15 = sub_258532A2C();
    v16 = sub_2585338CC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v29 = v18;
      *v17 = 136315138;
      v19 = sub_25853347C();
      v21 = sub_2584713B0(v19, v20, &v29);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_25845E000, v15, v16, "MediaStream with identifier=%s not found", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x259C82900](v18, -1, -1);
      MEMORY[0x259C82900](v17, -1, -1);
    }

    goto LABEL_20;
  }

  v9 = *(v0 + 104);
  v10 = *(*(v5 + 56) + 8 * v7);
  *(v0 + 152) = v10;

  v11 = *(v9 + 136);
  *(v0 + 160) = v11;
  if (v11)
  {
    *(v0 + 168) = *(*(v0 + 104) + 144);

    v28 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    *(v0 + 176) = v13;
    *v13 = v0;
    v13[1] = sub_2584A3F60;

    return v28(v10);
  }

LABEL_20:
  v22 = *(v0 + 136);
  v23 = *(v0 + 104);
  v24 = *(MEMORY[0x277D85798] + 4);
  v25 = swift_task_alloc();
  *(v0 + 144) = v25;
  *v25 = v0;
  v25[1] = sub_2584A3A40;
  v26 = *(v0 + 128);
  v27 = *(v0 + 112);

  return MEMORY[0x2822003E8](v0 + 184, v23, v22, v27);
}

uint64_t sub_2584A3F60()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 104);
  v6 = *v0;

  sub_258464B24(v3);

  return MEMORY[0x2822009F8](sub_2584A40AC, v4, 0);
}

uint64_t sub_2584A40AC()
{
  v1 = v0[19];

  v2 = v0[17];
  v3 = v0[13];
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_2584A3A40;
  v6 = v0[16];
  v7 = v0[14];

  return MEMORY[0x2822003E8](v0 + 23, v3, v2, v7);
}

uint64_t sub_2584A416C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930578, &qword_258538240);
  v6[14] = v8;
  v9 = *(v8 - 8);
  v6[15] = v9;
  v10 = *(v9 + 64) + 15;
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2584A4240, a6, 0);
}

uint64_t sub_2584A4240()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220);
  sub_25853364C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930560, &qword_258538210);
  sub_2585336FC();
  v0[17] = sub_2584ABBE0(&qword_27F930568, &qword_27F930268, &qword_2585379B8);
  swift_beginAccess();
  v5 = v0[17];
  v6 = v0[13];
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_2584A4388;
  v9 = v0[16];
  v10 = v0[14];

  return MEMORY[0x2822003E8](v0 + 23, v6, v5, v10);
}

uint64_t sub_2584A4388()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2584A4498, v2, 0);
}

uint64_t sub_2584A4498()
{
  v30 = v0;
  v1 = *(v0 + 184);
  if (v1 == 3 || (sub_25853376C() & 1) != 0)
  {
LABEL_5:
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    v3 = *(v0 + 8);

    return v3();
  }

  v2 = *(v0 + 104);
  if ((v1 - 1) < 2)
  {
    swift_beginAccess();
    sub_2584F8818();
    swift_endAccess();

    swift_beginAccess();
    sub_2584F8904();
    swift_endAccess();

    goto LABEL_5;
  }

  v5 = *(v2 + 112);
  if (!*(v5 + 16))
  {
    goto LABEL_15;
  }

  v6 = *(v2 + 112);

  v7 = sub_2584BC50C();
  if ((v8 & 1) == 0)
  {

LABEL_15:
    if (qword_27F92F8C8 != -1)
    {
      swift_once();
    }

    v14 = sub_258532A4C();
    __swift_project_value_buffer(v14, qword_27F93CFA8);
    v15 = sub_258532A2C();
    v16 = sub_2585338CC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v29 = v18;
      *v17 = 136315138;
      v19 = sub_25853347C();
      v21 = sub_2584713B0(v19, v20, &v29);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_25845E000, v15, v16, "MediaStream with identifier=%s not found", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x259C82900](v18, -1, -1);
      MEMORY[0x259C82900](v17, -1, -1);
    }

    goto LABEL_20;
  }

  v9 = *(v0 + 104);
  v10 = *(*(v5 + 56) + 8 * v7);
  *(v0 + 152) = v10;

  v11 = *(v9 + 136);
  *(v0 + 160) = v11;
  if (v11)
  {
    *(v0 + 168) = *(*(v0 + 104) + 144);

    v28 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    *(v0 + 176) = v13;
    *v13 = v0;
    v13[1] = sub_2584A48A8;

    return v28(v10);
  }

LABEL_20:
  v22 = *(v0 + 136);
  v23 = *(v0 + 104);
  v24 = *(MEMORY[0x277D85798] + 4);
  v25 = swift_task_alloc();
  *(v0 + 144) = v25;
  *v25 = v0;
  v25[1] = sub_2584A4388;
  v26 = *(v0 + 128);
  v27 = *(v0 + 112);

  return MEMORY[0x2822003E8](v0 + 184, v23, v22, v27);
}

uint64_t sub_2584A48A8()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 104);
  v6 = *v0;

  sub_258464B24(v3);

  return MEMORY[0x2822009F8](sub_2584A49F4, v4, 0);
}

uint64_t sub_2584A49F4()
{
  v1 = v0[19];

  v2 = v0[17];
  v3 = v0[13];
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_2584A4388;
  v6 = v0[16];
  v7 = v0[14];

  return MEMORY[0x2822003E8](v0 + 23, v3, v2, v7);
}

uint64_t sub_2584A4AB4()
{
  v4 = &type metadata for AudioStreamIdentifier;
  v5 = sub_2584ABB2C();
  v6 = *(v0 + 120);
  v7 = 4;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_telemetryProvider), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23AudioStreamAVConference_telemetryProvider + 24));
  v1 = off_286990988;
  type metadata accessor for TelemetryProvider();
  v1(v3);
  return sub_2584A57D8(v3);
}

uint64_t sub_2584A4B58()
{
  v4 = &type metadata for VideoStreamIdentifier;
  v5 = sub_2584AC364();
  v6 = *(v0 + 48) >> 7;
  v7 = 4;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_telemetryProvider), *(v0 + OBJC_IVAR____TtC18MediaContinuityKit23VideoStreamAVConference_telemetryProvider + 24));
  v1 = off_286990988;
  type metadata accessor for TelemetryProvider();
  v1(v3);
  return sub_2584A57D8(v3);
}

uint64_t sub_2584A4C00(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930590, &qword_25853F8A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v15 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930570, &qword_258538220);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v13 = *a3;
  swift_beginAccess();
  sub_2584AC5D0(v10, a2 + v13, &qword_27F930590, &qword_25853F8A0);
  return swift_endAccess();
}

uint64_t sub_2584A4D50(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2584A4E48;

  return v7(a1);
}

uint64_t sub_2584A4E48()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2584A4F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_258533C4C();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_2584A5040, 0, 0);
}

uint64_t sub_2584A5040()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_258533C6C();
  v7 = sub_2584AC2F0(&qword_27F930428, MEMORY[0x277D85928]);
  sub_258533E6C();
  sub_2584AC2F0(&qword_27F930430, MEMORY[0x277D858F8]);
  sub_258533C7C();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_2584A51D0;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_2584A51D0()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2584A538C, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_2584A538C()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_2584A53F8(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for NetworkBackedControlConnectionMigrationController();
  v7 = &off_28698FC50;
  *&v5 = a1;
  swift_defaultActor_initialize();
  *(a2 + 112) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0;
  sub_258464C18(&v5, a2 + 120);
  return a2;
}

uint64_t type metadata accessor for MediaContinuitySession()
{
  result = qword_27F930370;
  if (!qword_27F930370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

unint64_t sub_2584A56DC()
{
  result = qword_27F930308;
  if (!qword_27F930308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930308);
  }

  return result;
}

unint64_t sub_2584A5730()
{
  result = qword_27F930328;
  if (!qword_27F930328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930328);
  }

  return result;
}

unint64_t sub_2584A5784()
{
  result = qword_27F930330;
  if (!qword_27F930330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930330);
  }

  return result;
}

uint64_t sub_2584A5834(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2584A5884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a4;
  v13 = a4[1];
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_258472CF8;

  return sub_258495E38(a1, v12, v13, a5, a6, a7);
}

uint64_t sub_2584A5950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, _OWORD *a8)
{
  *(v8 + 56) = a6;
  *(v8 + 64) = v10;
  *(v8 + 88) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 32) = a1;
  *(v8 + 16) = *a8;
  return MEMORY[0x2822009F8](sub_2584A598C, 0, 0);
}

uint64_t sub_2584A598C()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  *(v4 + 48) = v0 + 16;
  *(v4 + 56) = v2;
  v5 = *(MEMORY[0x277D858E8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_2584AC7B4;
  v7 = *(v0 + 32);
  v8 = MEMORY[0x277D84F78] + 8;
  v9 = MEMORY[0x277D84F78] + 8;
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v7, v8, v9, 0, 0, &unk_258538040, v4, v10);
}

uint64_t sub_2584A5AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7)
{
  v14 = *a7;
  v15 = a7[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_258472CF8;

  return sub_258497134(a1, a2, a3, a4, a5, a6, v14, v15);
}

uint64_t sub_2584A5B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = *a4;
  v13 = a4[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_258472CF8;

  return sub_25849879C(a1, a2, a3, v12, v13, a5, a6);
}

uint64_t sub_2584A5C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a4;
  v13 = a4[1];
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_258472CF8;

  return sub_258496758(a1, v12, v13, a5, a6, a7);
}

uint64_t sub_2584A5D40(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v44 = a6;
  v45 = a3;
  v48 = a4;
  v43 = a1;
  v49 = a10;
  v46 = a9;
  v47 = a2;
  v13 = sub_258533C6C();
  v39 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v40 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v38 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v38 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FB78, &qword_2585368F0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v27 = &v38 - v26;
  v28 = *a5;
  v41 = a5[1];
  v42 = v28;
  v29 = sub_25853368C();
  (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
  (*(v18 + 16))(v22, v43, v17);
  (*(v14 + 16))(&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v44, v13);
  v30 = (*(v18 + 80) + 48) & ~*(v18 + 80);
  v31 = v30 + v19;
  v32 = (*(v14 + 80) + (v31 & 0xFFFFFFFFFFFFFFF8) + 24) & ~*(v14 + 80);
  v33 = swift_allocObject();
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  v34 = v45;
  *(v33 + 4) = v47;
  *(v33 + 5) = v34;
  (*(v18 + 32))(&v33[v30], v22, v38);
  v33[v31] = v48;
  v35 = &v33[v31 & 0xFFFFFFFFFFFFFFF8];
  v36 = v41;
  *(v35 + 1) = v42;
  *(v35 + 2) = v36;
  (*(v14 + 32))(&v33[v32], v40, v39);

  sub_2585135CC(0, 0, v27, v49, v33);
}

uint64_t sub_2584A6034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, _OWORD *a8)
{
  *(v8 + 56) = a6;
  *(v8 + 64) = v10;
  *(v8 + 88) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 32) = a1;
  *(v8 + 16) = *a8;
  return MEMORY[0x2822009F8](sub_2584A6070, 0, 0);
}

uint64_t sub_2584A6070()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  *(v4 + 48) = v0 + 16;
  *(v4 + 56) = v2;
  v5 = *(MEMORY[0x277D858E8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_2584A6184;
  v7 = *(v0 + 32);
  v8 = MEMORY[0x277D84F78] + 8;
  v9 = MEMORY[0x277D84F78] + 8;
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v7, v8, v9, 0, 0, &unk_2585381C0, v4, v10);
}

uint64_t sub_2584A6184()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2584A6294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7)
{
  v14 = *a7;
  v15 = a7[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_258472CF8;

  return sub_258497718(a1, a2, a3, a4, a5, a6, v14, v15);
}

uint64_t sub_2584A638C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = *a4;
  v13 = a4[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_258472CF8;

  return sub_258498DD0(a1, a2, a3, v12, v13, a5, a6);
}

void *sub_2584A6468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TimeSyncBackedSynchronizedClock();
  v28[3] = v8;
  v28[4] = &off_286990B40;
  v28[0] = a1;
  v9 = type metadata accessor for KTraceBackedSignpostReporter();
  v26 = v9;
  v27 = &off_28698F5E0;
  v25[0] = a4;
  type metadata accessor for TimeSyncHeartbeat();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v28, v8);
  v12 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v11, v11);
  v14 = (v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = v26;
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v17, v17);
  v20 = (v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v14;
  v23 = *v20;
  v10[5] = v8;
  v10[6] = &off_286990B40;
  v10[2] = v22;
  v10[12] = v9;
  v10[13] = &off_28698F5E0;
  v10[8] = a3;
  v10[9] = v23;
  v10[14] = 0;
  v10[7] = a2;
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  return v10;
}

uint64_t sub_2584A666C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_258472CF8;

  return sub_2584A3824(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2584A673C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_258472CF8;

  return sub_2584A416C(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2584A682C()
{
  v12 = v0;
  if (qword_27F92F8C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_258532A4C();
  __swift_project_value_buffer(v2, qword_27F93CFA8);

  v3 = sub_258532A2C();
  v4 = sub_2585338CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11[0] = v7;
    *v6 = 136315138;
    sub_258533B8C();

    v11[1] = 0xD000000000000017;
    v11[2] = 0x8000000258540530;
    sub_2585329BC();
    sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v8 = sub_258533DFC();
    MEMORY[0x259C81500](v8);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v9 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v11);

    *(v6 + 4) = v9;
    _os_log_impl(&dword_25845E000, v3, v4, "%s suspended by coex session", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  return sub_258533C9C();
}

uint64_t sub_2584A6AB4()
{
  v12 = v0;
  if (qword_27F92F8C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_258532A4C();
  __swift_project_value_buffer(v2, qword_27F93CFA8);

  v3 = sub_258532A2C();
  v4 = sub_2585338CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11[0] = v7;
    *v6 = 136315138;
    sub_258533B8C();

    v11[1] = 0xD000000000000017;
    v11[2] = 0x8000000258540530;
    sub_2585329BC();
    sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v8 = sub_258533DFC();
    MEMORY[0x259C81500](v8);

    MEMORY[0x259C81500](93, 0xE100000000000000);
    v9 = sub_2584713B0(0xD000000000000017, 0x8000000258540530, v11);

    *(v6 + 4) = v9;
    _os_log_impl(&dword_25845E000, v3, v4, "%s resumed by coex session", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x259C82900](v7, -1, -1);
    MEMORY[0x259C82900](v6, -1, -1);
  }

  return sub_258533C9C();
}

unint64_t sub_2584A6D20()
{
  result = qword_27F930368;
  if (!qword_27F930368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930368);
  }

  return result;
}

unint64_t sub_2584A6DBC(uint64_t a1)
{
  result = sub_2584A5730();
  *(a1 + 8) = result;
  return result;
}

void sub_2584A6DEC()
{
  v0 = sub_2585329BC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_2584A7840(319, &qword_27F930380, MEMORY[0x277D857B8]);
    if (v4 <= 0x3F)
    {
      v11 = *(v3 - 8) + 64;
      sub_2584A7840(319, &qword_27F930388, MEMORY[0x277D85788]);
      if (v6 <= 0x3F)
      {
        v12 = *(v5 - 8) + 64;
        sub_2584A7894(319, &qword_27F930390, &qword_27F930278, &unk_2585379C0);
        if (v8 <= 0x3F)
        {
          v13 = *(v7 - 8) + 64;
          sub_2584A7894(319, &qword_27F92FE88, &qword_27F9308F0, &qword_25853AC70);
          if (v10 <= 0x3F)
          {
            v14 = *(v9 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of MediaContinuitySession.activate(incomingVideoStreamConfigurations:incomingAudioStreamConfigurations:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 616);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_258472CF8;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MediaContinuitySession.invalidate()()
{
  v2 = *(*v0 + 624);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_258472CF8;

  return v6();
}

uint64_t dispatch thunk of MediaContinuitySession.makeVideoStream(withConfiguration:)(uint64_t a1)
{
  v4 = *(*v1 + 632);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2584AC7D8;

  return v8(a1);
}

uint64_t dispatch thunk of MediaContinuitySession.makeAudioStream(withConfiguration:)(uint64_t a1)
{
  v4 = *(*v1 + 640);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2584A7520;

  return v8(a1);
}

uint64_t sub_2584A7520(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of MediaContinuitySession.synchronizedClockIdentifier.getter()
{
  v2 = *(*v0 + 648);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2584A7744;

  return v6();
}

uint64_t sub_2584A7744(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void sub_2584A7840(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for MediaContinuitySession.Event);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2584A7894(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_258533A0C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2584A78F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 16))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2584A7950(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaContinuitySession.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaContinuitySession.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2584A7B34()
{
  result = qword_27F930398;
  if (!qword_27F930398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930398);
  }

  return result;
}

uint64_t sub_2584A7B8C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2584A7BE0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 137, 7);
}

uint64_t sub_2584A7C7C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930208, &qword_258537990);
  v216 = *(v4 - 8);
  v217 = v4;
  v5 = *(v216 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v213 = &v202 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930210, &qword_258537998);
  v214 = *(v8 - 8);
  v215 = v8;
  v9 = *(v214 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v212 = &v202 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930218, &unk_2585379A0);
  v209 = *(v12 - 8);
  v210 = v12;
  v13 = *(v209 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v208 = &v202 - v15;
  v16 = sub_2585329BC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v206 = &v202 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v226 = &v202 - v23;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F931360, &unk_25853CD10);
  v24 = *(*(v203 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v203, v25);
  v202 = &v202 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v218 = &v202 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  v205 = &v202 - v33;
  MEMORY[0x28223BE20](v32, v34);
  v35 = *(a1 + 8);
  v225 = *a1;
  v36 = *(a1 + 24);
  v236 = *(a1 + 16);
  v237 = v35;
  v239 = v36;
  v238 = *(a1 + 32);
  v240 = *(a1 + 33);
  v207 = v17;
  v37 = *(v17 + 56);
  v227 = v16;
  v228 = &v202 - v38;
  v37();
  v224 = a2;
  sub_258464C30(a2, &v286);
  v229 = type metadata accessor for MediaStreamVendorAVConference();
  memset(v284, 0, sizeof(v284));
  v285 = 0;
  v235 = swift_allocObject();
  v234 = type metadata accessor for TimeSyncBackedTimeSynchronizerVendor();
  v39 = swift_allocObject();
  v233 = type metadata accessor for TimeSyncHeartbeatVendor();
  v40 = swift_allocObject();
  v232 = type metadata accessor for FoundationBackedUserDefaultsProvider();
  v41 = swift_allocObject();
  v41[3] = 0xD00000000000001CLL;
  v41[4] = 0x800000025853FF50;
  v42 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v43 = sub_25853341C();
  v44 = [v42 initWithSuiteName_];

  v41[2] = v44;
  v231 = type metadata accessor for TelemetryProviderVendor();
  v45 = swift_allocObject();
  v230 = type metadata accessor for CoexSessionVendor();
  v46 = swift_allocObject();
  v47 = type metadata accessor for NetworkBackedControlConnectionMigrationController();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();

  v50 = sub_2584E7828();
  v282 = v47;
  v283 = &off_28698FC50;
  v281[0] = v50;
  v51 = type metadata accessor for ControlConnectionMigrationManager();
  v52 = swift_allocObject();
  v53 = __swift_mutable_project_boxed_opaque_existential_1(v281, v47);
  v54 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v53, v53);
  v56 = (&v202 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v57 + 16))(v56);
  v58 = sub_2584A53F8(*v56, v52);
  __swift_destroy_boxed_opaque_existential_1Tm(v281);
  v59 = type metadata accessor for DateBackedTimeProvider();
  v204 = v59;
  v60 = swift_allocObject();
  v61 = v229;
  v282 = v229;
  v283 = &off_2869917C8;
  v281[0] = v235;
  v279 = v234;
  v280 = &off_286990C38;
  v223 = v39;
  v278[0] = v39;
  v277 = &off_28698E5F8;
  v276 = v233;
  v221 = v41;
  v222 = v40;
  v275[0] = v40;
  v274 = &off_28698F5C8;
  v273 = v232;
  v272[0] = v41;
  v271 = &off_286990B00;
  v270 = v231;
  v220 = v45;
  v269[0] = v45;
  v265 = &off_28698BFD8;
  v268 = &off_28698F4C8;
  v267 = v230;
  v219 = v46;
  v266[0] = v46;
  v264 = v51;
  v263[0] = v58;
  v262 = &off_28698F1D0;
  v261 = v59;
  v260[0] = v60;
  v258 = &type metadata for NetworkBackedNetworkPathVendor;
  v259 = &off_286990B30;
  v62 = type metadata accessor for MediaContinuitySession();
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  v65 = swift_allocObject();
  v66 = __swift_mutable_project_boxed_opaque_existential_1(v281, v61);
  v67 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v66, v66);
  v211 = (&v202 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v69 + 16))();
  v70 = v279;
  v71 = __swift_mutable_project_boxed_opaque_existential_1(v278, v279);
  v72 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v71, v71);
  v74 = (&v202 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v75 + 16))(v74);
  v76 = v276;
  v77 = __swift_mutable_project_boxed_opaque_existential_1(v275, v276);
  v78 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v77, v77);
  v80 = (&v202 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v81 + 16))(v80);
  v82 = v273;
  v83 = __swift_mutable_project_boxed_opaque_existential_1(v272, v273);
  v84 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v83, v83);
  v86 = (&v202 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v87 + 16))(v86);
  v88 = v270;
  v89 = __swift_mutable_project_boxed_opaque_existential_1(v269, v270);
  v90 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v89, v89);
  v92 = (&v202 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v93 + 16))(v92);
  v94 = v267;
  v95 = __swift_mutable_project_boxed_opaque_existential_1(v266, v267);
  v96 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v95, v95);
  v98 = (&v202 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v99 + 16))(v98);
  v100 = v264;
  v101 = __swift_mutable_project_boxed_opaque_existential_1(v263, v264);
  v102 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v101, v101);
  v104 = (&v202 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v105 + 16))(v104);
  v106 = v261;
  v107 = __swift_mutable_project_boxed_opaque_existential_1(v260, v261);
  v108 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v107, v107);
  v110 = (&v202 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v111 + 16))(v110);
  __swift_mutable_project_boxed_opaque_existential_1(v257, v258);
  v112 = *v211;
  v113 = *v74;
  v114 = *v80;
  v115 = *v86;
  v116 = *v92;
  v117 = *v98;
  v211 = *v104;
  v118 = *v110;
  v256[4] = &off_2869917C8;
  v256[3] = v229;
  v256[0] = v112;
  v255[4] = &off_286990C38;
  v255[3] = v234;
  v255[0] = v113;
  v254[4] = &off_28698E5F8;
  v254[3] = v233;
  v254[0] = v114;
  v253[4] = &off_28698F5C8;
  v253[3] = v232;
  v253[0] = v115;
  v252 = &off_286990B00;
  v251 = v231;
  v250[0] = v116;
  v249[3] = v230;
  v249[4] = &off_28698F4C8;
  v249[0] = v117;
  v248[3] = v204;
  v248[4] = &off_28698F1D0;
  v248[0] = v118;
  v247[3] = &type metadata for NetworkBackedNetworkPathVendor;
  v247[4] = &off_286990B30;
  swift_defaultActor_initialize();
  v119 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_id;
  sub_2585329AC();
  *(v65 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_state) = 0;
  v120 = (v65 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_endpoint);
  v120[6] = 0;
  *(v120 + 1) = 0u;
  *(v120 + 2) = 0u;
  *v120 = 0u;
  v121 = v65 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connection;
  *v121 = 0u;
  *(v121 + 16) = 0u;
  *(v121 + 32) = 0;
  v122 = v65 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizer;
  *(v122 + 32) = 0;
  *v122 = 0u;
  *(v122 + 16) = 0u;
  *(v65 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendingTask) = 0;
  v123 = v65 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSyncHeartbeat;
  *(v123 + 32) = 0;
  *v123 = 0u;
  *(v123 + 16) = 0u;
  v124 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_videoStreamManager;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930258, &qword_2585379B0);
  v125 = swift_allocObject();
  swift_defaultActor_initialize();
  v126 = MEMORY[0x277D84F98];
  *(v125 + 112) = MEMORY[0x277D84F98];
  *(v125 + 120) = v126;
  *(v125 + 136) = 0;
  *(v125 + 144) = 0;
  *(v125 + 128) = v126;
  *(v125 + 152) = 1;
  *(v65 + v124) = v125;
  v127 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_audioStreamManager;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930268, &qword_2585379B8);
  v128 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v128 + 112) = v126;
  *(v128 + 120) = v126;
  *(v128 + 136) = 0;
  *(v128 + 144) = 0;
  *(v128 + 128) = v126;
  v129 = v225;
  *(v128 + 152) = 1;
  *(v65 + v127) = v128;
  v130 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionEventStream;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930278, &unk_2585379C0);
  (*(*(v131 - 8) + 56))(v65 + v130, 1, 1, v131);
  *(v65 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionEventMonitor) = 0;
  v132 = OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_remoteActivationContinuation;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  v134 = v65 + v132;
  v135 = v129;
  (*(*(v133 - 8) + 56))(v134, 1, 1, v133);
  v136 = v65 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_coexSession;
  *v136 = 0u;
  *(v136 + 16) = 0u;
  *(v136 + 32) = 0;
  v137 = v65 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionPath;
  *(v137 + 32) = 0;
  *v137 = 0u;
  *(v137 + 16) = 0u;
  v138 = v65 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_activatedEventInfo;
  *v138 = 0u;
  *(v138 + 16) = 0u;
  *(v138 + 32) = 0u;
  *(v138 + 48) = 0;
  v139 = v65 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_usage;
  v141 = v236;
  v140 = v237;
  *v139 = v129;
  *(v139 + 8) = v140;
  v142 = v239;
  *(v139 + 16) = v141;
  *(v139 + 24) = v142;
  *(v139 + 32) = v238;
  *(v139 + 33) = v240;
  swift_beginAccess();
  if (*(v121 + 24))
  {
    if (*(&v287 + 1))
    {
      __swift_assign_boxed_opaque_existential_1(v121, &v286);
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v121);
  }

  else if (*(&v287 + 1))
  {
    sub_258464C30(&v286, v121);
    goto LABEL_8;
  }

  v143 = v287;
  *v121 = v286;
  *(v121 + 16) = v143;
  *(v121 + 32) = v288;
LABEL_8:
  v144 = v228;
  v146 = v206;
  v145 = v207;
  v147 = v205;
  swift_endAccess();
  v148 = *v120;
  v149 = v120[1];
  v150 = v120[2];
  v151 = v120[3];
  v152 = v120[4];
  v153 = v120[5];
  v154 = v120[6];
  *v120 = 0u;
  *(v120 + 1) = 0u;
  *(v120 + 2) = 0u;
  v120[6] = 0;
  sub_25847AC44(v148, v149, v150, v151, v152);
  sub_2584AC3B8(v284, v65 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_connectionVendor, &qword_27F9302B8, &unk_2585379D0);
  sub_258464C30(v256, v65 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_mediaStreamVendor);
  sub_258464C30(v255, v65 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSynchronizerVendor);
  sub_258464C30(v254, v65 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeSyncHeartbeatVendor);
  sub_258464C30(v253, v65 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_userDefaultsProvider);
  sub_258464C30(v248, v65 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_timeProvider);
  v155 = __swift_project_boxed_opaque_existential_1(v250, v251);
  v241[0] = v135;
  v241[1] = v237;
  v241[2] = v236;
  v241[3] = v239;
  v242 = v238;
  v243 = v240;
  v156 = v65 + v119;
  v157 = v226;
  v158 = v227;
  v233 = *(v145 + 16);
  v234 = v145 + 16;
  v233(v226, v156, v227);
  v159 = *v155;
  sub_258502D04(v241, v157, &v244);
  v231 = *(v145 + 8);
  v232 = v145 + 8;
  v231(v157, v158);
  sub_258464C18(&v244, v65 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_telemetryProvider);
  sub_258464C30(v249, v65 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_coexSessionVendor);
  v160 = v144;
  sub_2584AC3B8(v144, v147, &qword_27F931360, &unk_25853CD10);
  v161 = *(v145 + 48);
  if (v161(v147, 1, v158) == 1)
  {
    sub_2585329AC();
    v162 = v161(v147, 1, v158);
    v163 = v218;
    if (v162 != 1)
    {
      sub_258465168(v147, &qword_27F931360, &unk_25853CD10);
    }
  }

  else
  {
    (*(v145 + 32))(v146, v147, v158);
    v163 = v218;
  }

  (*(v145 + 32))(v65 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_clientSessionID, v146, v158);
  sub_258464C30(v247, v65 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_networkPathVendor);
  v245 = &type metadata for MediaContinuityKitFeatureFlags;
  v246 = sub_2584A56DC();
  LOBYTE(v244) = 0;
  sub_2585329EC();
  __swift_destroy_boxed_opaque_existential_1Tm(&v244);
  v164 = v65 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_controlConnectionMigrationManager;
  *v164 = 0u;
  *(v164 + 16) = 0u;
  *(v164 + 32) = 0;
  v166 = v216;
  v165 = v217;
  v167 = v213;
  (*(v216 + 104))(v213, *MEMORY[0x277D85778], v217);
  v168 = v208;
  v169 = v212;
  sub_25853369C();
  (*(v166 + 8))(v167, v165);
  (*(v209 + 32))(v65 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_eventStream, v168, v210);
  (*(v214 + 32))(v65 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_eventStreamContinuation, v169, v215);
  if (qword_27F92F8C8 != -1)
  {
    swift_once();
  }

  v170 = sub_258532A4C();
  v171 = __swift_project_value_buffer(v170, qword_27F93CFA8);
  v172 = v160;
  sub_2584AC3B8(v160, v163, &qword_27F931360, &unk_25853CD10);

  v173 = sub_258532A2C();
  v174 = sub_2585338EC();

  if (os_log_type_enabled(v173, v174))
  {
    v175 = swift_slowAlloc();
    v230 = v171;
    LODWORD(v218) = v174;
    v176 = v175;
    v229 = swift_slowAlloc();
    v241[0] = v229;
    *v176 = 136315650;
    *&v244 = 0;
    *(&v244 + 1) = 0xE000000000000000;

    sub_258533B8C();

    *&v244 = 0xD000000000000017;
    *(&v244 + 1) = 0x8000000258540530;
    v217 = sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v177 = sub_258533DFC();
    MEMORY[0x259C81500](v177);

    MEMORY[0x259C81500](93, 0xE100000000000000);

    v178 = sub_2584713B0(v244, *(&v244 + 1), v241);

    *(v176 + 4) = v178;
    v179 = v163;
    *(v176 + 12) = 2080;
    sub_2584AC3B8(v163, v202, &qword_27F931360, &unk_25853CD10);
    v180 = sub_25853347C();
    v181 = v158;
    v183 = v182;
    v172 = v228;
    sub_258465168(v179, &qword_27F931360, &unk_25853CD10);
    v184 = sub_2584713B0(v180, v183, v241);

    *(v176 + 14) = v184;
    *(v176 + 22) = 2080;
    v185 = v226;
    v233(v226, v65 + OBJC_IVAR____TtC18MediaContinuityKit22MediaContinuitySession_clientSessionID, v181);
    v186 = sub_258533DFC();
    v188 = v187;
    v231(v185, v181);
    v189 = sub_2584713B0(v186, v188, v241);

    *(v176 + 24) = v189;
    _os_log_impl(&dword_25845E000, v173, v218, "%s clientSessionID=%s, effective clientSessionID=%s", v176, 0x20u);
    v190 = v229;
    swift_arrayDestroy();
    MEMORY[0x259C82900](v190, -1, -1);
    MEMORY[0x259C82900](v176, -1, -1);
  }

  else
  {

    sub_258465168(v163, &qword_27F931360, &unk_25853CD10);
  }

  v191 = sub_258532A2C();
  v192 = sub_2585338EC();

  if (os_log_type_enabled(v191, v192))
  {
    v193 = swift_slowAlloc();
    v194 = swift_slowAlloc();
    v241[0] = v194;
    *v193 = 136315394;
    *&v244 = 0;
    *(&v244 + 1) = 0xE000000000000000;

    sub_258533B8C();

    *&v244 = 0xD000000000000017;
    *(&v244 + 1) = 0x8000000258540530;
    sub_2584AC2F0(&qword_27F92FE48, MEMORY[0x277CC95F0]);
    v195 = sub_258533DFC();
    MEMORY[0x259C81500](v195);

    MEMORY[0x259C81500](93, 0xE100000000000000);

    v196 = sub_2584713B0(v244, *(&v244 + 1), v241);

    *(v193 + 4) = v196;
    *(v193 + 12) = 2080;
    if (v240)
    {
      if (v236 | v237 | v225 | v239 || v238)
      {
        v201 = v236 | v237 | v239;
        if (v238 || v225 != 1 || v201)
        {
          if (v238 || v225 != 2 || v201)
          {
            v197 = 0xEF676E69726F7272;
            v198 = 0x694D656E6F685069;
            if (!v238 && v225 == 3 && !v201)
            {
              v197 = 0x80000002585402B0;
              v198 = 0xD000000000000010;
            }
          }

          else
          {
            v197 = 0xE700000000000000;
            v198 = 0x72616365646973;
          }
        }

        else
        {
          v197 = 0xE700000000000000;
          v198 = 0x79616C70726961;
        }
      }

      else
      {
        v197 = 0x80000002585402D0;
        v198 = 0xD000000000000011;
      }
    }

    else
    {
      v197 = 0x80000002585402F0;
      v198 = 0xD000000000000012;
    }

    v199 = sub_2584713B0(v198, v197, v241);

    *(v193 + 14) = v199;
    _os_log_impl(&dword_25845E000, v191, v192, "Created %s usage:%s", v193, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C82900](v194, -1, -1);
    MEMORY[0x259C82900](v193, -1, -1);
  }

  sub_258465168(v284, &qword_27F9302B8, &unk_2585379D0);
  if (*(&v287 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v286);
  }

  sub_258465168(v172, &qword_27F931360, &unk_25853CD10);
  __swift_destroy_boxed_opaque_existential_1Tm(v247);
  __swift_destroy_boxed_opaque_existential_1Tm(v248);

  __swift_destroy_boxed_opaque_existential_1Tm(v249);
  __swift_destroy_boxed_opaque_existential_1Tm(v253);
  __swift_destroy_boxed_opaque_existential_1Tm(v254);
  __swift_destroy_boxed_opaque_existential_1Tm(v255);
  __swift_destroy_boxed_opaque_existential_1Tm(v256);
  __swift_destroy_boxed_opaque_existential_1Tm(v250);
  __swift_destroy_boxed_opaque_existential_1Tm(v257);
  __swift_destroy_boxed_opaque_existential_1Tm(v260);
  __swift_destroy_boxed_opaque_existential_1Tm(v263);
  __swift_destroy_boxed_opaque_existential_1Tm(v266);
  __swift_destroy_boxed_opaque_existential_1Tm(v269);
  __swift_destroy_boxed_opaque_existential_1Tm(v272);
  __swift_destroy_boxed_opaque_existential_1Tm(v275);
  __swift_destroy_boxed_opaque_existential_1Tm(v278);
  __swift_destroy_boxed_opaque_existential_1Tm(v281);

  __swift_destroy_boxed_opaque_existential_1Tm(v224);
  return v65;
}

uint64_t sub_2584A9614(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

id sub_2584A967C(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {
    v6 = result;
    swift_unknownObjectRetain();

    return v6;
  }

  return result;
}

void *sub_2584A96C0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2584A980C(void *a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FEC8, &qword_258536918);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v26 - v8;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FE08, &unk_258536380);
  v10 = *(v29 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v29, v12);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F92FE38, &qword_258536398);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v26 - v19;
  swift_defaultActor_initialize();
  *(a3 + 128) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0;
  sub_2585329AC();
  v21 = OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_startContinuation;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9308F0, &qword_25853AC70);
  (*(*(v22 - 8) + 56))(a3 + v21, 1, 1, v22);
  *(a3 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventMonitorTask) = 0;
  v23 = v27;
  *(a3 + 112) = v27;
  *(a3 + 128) = &protocol witness table for MediaContinuitySession;
  swift_unknownObjectWeakAssign();
  (*(v5 + 104))(v9, *MEMORY[0x277D858A0], v4);
  v24 = v23;
  sub_2585337BC();
  (*(v5 + 8))(v9, v4);
  (*(v16 + 32))(a3 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventStream, v20, v15);
  (*(v10 + 32))(a3 + OBJC_IVAR____TtC18MediaContinuityKit26MediaContinuityCoexSession_internalEventStreamContinuation, v14, v29);
  return a3;
}

uint64_t sub_2584A9B30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930278, &unk_2585379C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2584A9C14(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930278, &unk_2585379C0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_258472CF8;

  return sub_2584853EC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_2584A9D40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2584A9DA8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[12];

  v3 = v0[14];

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2584A9DF8(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258472CF8;

  return sub_258484DD4(a1, v1 + 16, v4, v1 + 64);
}

uint64_t sub_2584A9EAC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_258533C6C() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_258472CF8;

  return sub_2584A5884(a1, v7, v8, v1 + 4, v1 + v6, v10, v11);
}

unint64_t sub_2584AA020()
{
  result = qword_27F930410;
  if (!qword_27F930410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F930410);
  }

  return result;
}

void sub_2584AA088()
{
  v2 = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F930418, &qword_258538020) - 8);
  v4 = ((*(v3 + 80) + 48) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = v4 & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_258533C6C() - 8);
  v7 = v0[3];
  v13 = v0[2];
  v8 = *(v0 + v4);
  v9 = v0[4];
  v10 = v0[5];
  v11 = v0 + ((v5 + *(v6 + 80) + 24) & ~*(v6 + 80));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_258472CF8;

  JUMPOUT(0x2584A5950);
}

uint64_t sub_2584AA230(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v11 = *(v2 + 48);
  v10 = *(v2 + 56);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_258472CF8;

  return sub_2584A5AA0(a1, a2, v6, v7, v8, v9, v11);
}