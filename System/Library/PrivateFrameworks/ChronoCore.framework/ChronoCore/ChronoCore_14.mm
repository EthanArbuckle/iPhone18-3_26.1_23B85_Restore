uint64_t sub_224B5DB74(void *a1)
{
  v2 = *a1;
  v44[2] = a1;
  sub_224A33088(&qword_281350CF8, &unk_27D6F55E0, &unk_224DB65D0);
  v3 = sub_224DAEF48();
  v44[0] = MEMORY[0x277D84F90];
  sub_224A3DFD8(0, v3 & ~(v3 >> 63), 0);
  v4 = v44[0];
  v41 = a1;

  v5 = &v41;
  sub_224DAEF38();
  if (v3 < 0)
  {
    goto LABEL_43;
  }

  if (!v3)
  {
    goto LABEL_19;
  }

  v5 = v42;
  if (v42 >> 62)
  {
    goto LABEL_44;
  }

  v33 = v42 & 0xFFFFFFFFFFFFFF8;
  v6 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v7 = 0;
  v36 = v5 & 0xC000000000000001;
  v38 = v43;
  v34 = v5;
  v35 = v3;
  v32 = v5 + 8 * v43 + 32;
  v39 = (v43 - v6);
  do
  {
    if (v7 >= v3)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      v33 = v5 & 0xFFFFFFFFFFFFFF8;
      v6 = sub_224DAF838();
      goto LABEL_5;
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_38;
    }

    if (!&v39[v7])
    {
      goto LABEL_39;
    }

    v9 = v38 + v7;
    if (v36)
    {
      v10 = MEMORY[0x22AA5DCC0](v38 + v7, v34);
    }

    else
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_41;
      }

      if (v9 >= *(v33 + 16))
      {
        goto LABEL_42;
      }

      v10 = *(v32 + 8 * v7);
    }

    v5 = v10;
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      goto LABEL_40;
    }

    v12 = [v10 kind];
    v13 = sub_224DAEE18();
    v15 = v14;

    v44[0] = v4;
    v17 = *(v4 + 16);
    v16 = *(v4 + 24);
    if (v17 >= v16 >> 1)
    {
      v5 = v44;
      sub_224A3DFD8((v16 > 1), v17 + 1, 1);
      v4 = v44[0];
    }

    *(v4 + 16) = v17 + 1;
    v18 = v4 + 16 * v17;
    *(v18 + 32) = v13;
    *(v18 + 40) = v15;
    ++v7;
    v3 = v35;
  }

  while (v8 != v35);
  v43 = v11;
LABEL_19:
  v19 = v42 & 0xFFFFFFFFFFFFFF8;
  v40 = v42 & 0xC000000000000001;
  v3 = v42 + 32;
  v37 = v42;
  v20 = v42 >> 62;
  if (!(v42 >> 62))
  {
LABEL_20:
    v21 = *(v19 + 16);
    goto LABEL_22;
  }

  while (1)
  {
    v21 = sub_224DAF838();
LABEL_22:
    v5 = v43;
    if (v43 == v21)
    {
      break;
    }

    if (v40)
    {
      v22 = MEMORY[0x22AA5DCC0](v43, v37);
    }

    else
    {
      if ((v43 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if (v43 >= *(v19 + 16))
      {
        goto LABEL_36;
      }

      v22 = *(v3 + 8 * v43);
    }

    v23 = v22;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_35;
    }

    v43 = v5 + 1;
    v24 = [v22 kind];
    v25 = sub_224DAEE18();
    v27 = v26;

    v44[0] = v4;
    v29 = *(v4 + 16);
    v28 = *(v4 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_224A3DFD8((v28 > 1), v29 + 1, 1);
      v4 = v44[0];
    }

    *(v4 + 16) = v29 + 1;
    v30 = v4 + 16 * v29;
    *(v30 + 32) = v25;
    *(v30 + 40) = v27;
    if (!v20)
    {
      goto LABEL_20;
    }
  }

  return v4;
}

uint64_t sub_224B5DEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  return MEMORY[0x2822009F8](sub_224B5DF20, 0, 0);
}

uint64_t sub_224B5DF20()
{
  v1 = *(v0 + 56);
  v2 = v1[2];
  *(v0 + 88) = v2;
  if (v2)
  {
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    ObjectType = swift_getObjectType();
    *(v0 + 104) = 0;
    *(v0 + 112) = 0;
    *(v0 + 96) = ObjectType;
    v6 = v1[8];
    __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);
    *(v0 + 120) = sub_224DAE338();
    v7 = *(v4 + 8);
    v9 = sub_224DAF0C8();

    return MEMORY[0x2822009F8](sub_224B5E060, v9, v8);
  }

  else
  {
    v10 = *(*(v0 + 80) + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__widgetRelevanceEventPublisher);
    *(v0 + 16) = MEMORY[0x277D84F90];
    *(v0 + 24) = 1;
    sub_224DAB348();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_224B5E060()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[8];
  v4 = v0[9];
  sub_224DAD488();
  v0[16] = v3;
  v6 = v0[15];
  if (v3)
  {

    v7 = sub_224B5E2F8;
  }

  else
  {

    v7 = sub_224B5E104;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_224B5E104()
{
  v1 = *(v0 + 112) + 1;
  if (v1 == *(v0 + 88))
  {
    v2 = *(*(v0 + 80) + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__widgetRelevanceEventPublisher);
    v18 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v3 = 0;
    v4 = 32;
    do
    {
      v5 = *(v0 + 88);
      ++v3;
      sub_224A3317C(*(v0 + 56) + v4, v0 + 16);
      v6 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      sub_224DAE338();
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      sub_224DAF9B8();
      v7 = *(v18 + 16);
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      v4 += 40;
    }

    while (v3 != v5);
    *(v0 + 16) = v18;
    *(v0 + 24) = 1;
    sub_224DAB348();

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    *(v0 + 104) = *(v0 + 128);
    *(v0 + 112) = v1;
    v10 = *(v0 + 96);
    v11 = *(v0 + 64);
    v12 = *(v0 + 72);
    v13 = (*(v0 + 56) + 40 * v1);
    v14 = v13[8];
    __swift_project_boxed_opaque_existential_1(v13 + 4, v13[7]);
    *(v0 + 120) = sub_224DAE338();
    v15 = *(v12 + 8);
    v17 = sub_224DAF0C8();

    return MEMORY[0x2822009F8](sub_224B5E060, v17, v16);
  }
}

uint64_t sub_224B5E2F8()
{
  v1 = *(v0 + 112) + 1;
  if (v1 == *(v0 + 88))
  {
    v2 = *(*(v0 + 80) + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__widgetRelevanceEventPublisher);
    v18 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v3 = 0;
    v4 = 32;
    do
    {
      v5 = *(v0 + 88);
      ++v3;
      sub_224A3317C(*(v0 + 56) + v4, v0 + 16);
      v6 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      sub_224DAE338();
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      sub_224DAF9B8();
      v7 = *(v18 + 16);
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      v4 += 40;
    }

    while (v3 != v5);
    *(v0 + 16) = v18;
    *(v0 + 24) = 1;
    sub_224DAB348();

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    *(v0 + 104) = 0;
    *(v0 + 112) = v1;
    v10 = *(v0 + 96);
    v11 = *(v0 + 64);
    v12 = *(v0 + 72);
    v13 = (*(v0 + 56) + 40 * v1);
    v14 = v13[8];
    __swift_project_boxed_opaque_existential_1(v13 + 4, v13[7]);
    *(v0 + 120) = sub_224DAE338();
    v15 = *(v12 + 8);
    v17 = sub_224DAF0C8();

    return MEMORY[0x2822009F8](sub_224B5E060, v17, v16);
  }
}

uint64_t sub_224B5E4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v21 - v14;
  v16 = sub_224DAF128();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  v18[5] = a3;
  v18[6] = a4;
  v18[7] = a5;
  v18[8] = a6;
  v18[9] = a7;
  swift_unknownObjectRetain();
  v19 = a5;
  swift_unknownObjectRetain();
  sub_224D00D34(0, 0, v15, &unk_224DB6570, v18);
}

uint64_t sub_224B5E67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v20;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  v9 = sub_224DAB7B8();
  v8[18] = v9;
  v10 = *(v9 - 8);
  v8[19] = v10;
  v11 = *(v10 + 64) + 15;
  v8[20] = swift_task_alloc();
  v12 = sub_224DAB848();
  v8[21] = v12;
  v13 = *(v12 - 8);
  v8[22] = v13;
  v14 = *(v13 + 64) + 15;
  v8[23] = swift_task_alloc();
  v15 = sub_224DA9688();
  v8[24] = v15;
  v16 = *(v15 - 8);
  v8[25] = v16;
  v17 = *(v16 + 64) + 15;
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224B5E810, 0, 0);
}

uint64_t sub_224B5E810()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[28] = Strong;
  if (Strong)
  {
    v3 = v0[26];
    v4 = v0[13];
    v5 = v0[14];
    swift_getObjectType();
    sub_224DABCF8();
    v0[29] = 0;
    (*(v0[25] + 32))(v0[27], v0[26], v0[24]);
    if (qword_2813513D8 != -1)
    {
      swift_once();
    }

    v12 = v0[15];
    v13 = sub_224DAB258();
    __swift_project_value_buffer(v13, qword_281364CD0);
    v14 = v12;
    v15 = sub_224DAB228();
    v16 = sub_224DAF2A8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[15];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      *(v18 + 4) = v17;
      *v19 = v17;
      v20 = v17;
      _os_log_impl(&dword_224A2F000, v15, v16, "Accepted content of write handle for %{public}@", v18, 0xCu);
      sub_224A3311C(v19, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v19, -1, -1);
      MEMORY[0x22AA5EED0](v18, -1, -1);
    }

    v21 = v0[16];
    v22 = v0[17];

    v0[30] = swift_getObjectType();
    v23 = *(v22 + 8);
    v25 = sub_224DAF0C8();

    return MEMORY[0x2822009F8](sub_224B5EAFC, v25, v24);
  }

  else
  {
    v7 = v0[26];
    v6 = v0[27];
    v8 = v0[23];
    v9 = v0[20];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_224B5EAFC()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[27];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  sub_224DAD468();
  v0[31] = v2;
  if (v2)
  {
    v7 = sub_224B5EE24;
  }

  else
  {
    v7 = sub_224B5EB90;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_224B5EB90()
{
  v1 = v0[28];
  v21 = v0[24];
  v22 = v0[27];
  v2 = v0[23];
  v3 = v0[20];
  v19 = v0[21];
  v20 = v0[25];
  v4 = v0[18];
  v17 = v0[19];
  v18 = v0[22];
  v5 = v0[15];
  v16 = *(v1 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v1;
  v0[6] = sub_224B675D0;
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_224A39F40;
  v0[5] = &block_descriptor_36;
  v7 = _Block_copy(v0 + 2);
  v8 = v5;

  sub_224DAB7E8();
  v0[11] = MEMORY[0x277D84F90];
  sub_224A80F00(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v2, v3, v7);
  _Block_release(v7);
  (*(v17 + 8))(v3, v4);
  (*(v18 + 8))(v2, v19);
  (*(v20 + 8))(v22, v21);

  v9 = v0[7];

  v11 = v0[26];
  v10 = v0[27];
  v12 = v0[23];
  v13 = v0[20];

  v14 = v0[1];

  return v14();
}

uint64_t sub_224B5EE24()
{
  v1 = v0[31];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[24];
  v5 = v0[25];
  sub_224B67480();
  swift_allocError();
  *v6 = v1;
  *(v6 + 8) = 4;
  swift_willThrow();

  (*(v5 + 8))(v2, v4);
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[23];
  v10 = v0[20];

  v11 = v0[1];

  return v11();
}

uint64_t sub_224B5EF20(void *a1, uint64_t a2)
{
  v4 = sub_224DAB8C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2813513D8 != -1)
  {
    swift_once();
  }

  v9 = sub_224DAB258();
  __swift_project_value_buffer(v9, qword_281364CD0);
  v10 = a1;
  v11 = sub_224DAB228();
  v12 = sub_224DAF268();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_224A2F000, v11, v12, "Publishing change of %{public}@", v13, 0xCu);
    sub_224A3311C(v14, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v14, -1, -1);
    MEMORY[0x22AA5EED0](v13, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_224DB2780;
  *(v16 + 32) = v10;
  v17 = *(a2 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
  *v8 = v17;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v18 = v10;
  v19 = v17;
  LOBYTE(v17) = sub_224DAB8F8();
  result = (*(v5 + 8))(v8, v4);
  if (v17)
  {
    v21 = *(a2 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__widgetRelevanceEventPublisher);
    v22 = v16;
    v23 = 0;

    sub_224DAB348();
    return swift_bridgeObjectRelease_n();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224B5F1C4()
{
  v2 = *(*v0 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__widgetRelevanceEventPublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4268, &qword_224DB6560);
  sub_224A33088(&qword_281350F88, &qword_27D6F4268, &qword_224DB6560);
  return sub_224DAB3A8();
}

uint64_t sub_224B5F25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v9 = sub_224DAB7B8();
  v7[13] = v9;
  v10 = *(v9 - 8);
  v7[14] = v10;
  v11 = *(v10 + 64) + 15;
  v7[15] = swift_task_alloc();
  v12 = sub_224DAB848();
  v7[16] = v12;
  v13 = *(v12 - 8);
  v7[17] = v13;
  v14 = *(v13 + 64) + 15;
  v7[18] = swift_task_alloc();
  v7[19] = swift_getObjectType();
  v15 = *(a5 + 8);
  v17 = sub_224DAF0C8();

  return MEMORY[0x2822009F8](sub_224B5F3A0, v17, v16);
}

uint64_t sub_224B5F3A0()
{
  v1 = v0[19];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v0[20] = sub_224DAD498();
  v0[21] = 0;

  return MEMORY[0x2822009F8](sub_224B5F434, 0, 0);
}

uint64_t sub_224B5F434()
{
  v1 = v0[20];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v28 = v0[20];
    }

    v2 = sub_224DAF838();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v33 = MEMORY[0x277D84F90];
    result = sub_224DAF9E8();
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = v0[20];
        v7 = v5 + 1;
        v8 = [MEMORY[0x22AA5DCC0]() extensionIdentity];
        swift_unknownObjectRelease();
        sub_224DAF9B8();
        v9 = *(v33 + 16);
        sub_224DAF9F8();
        sub_224DAFA08();
        sub_224DAF9C8();
        v5 = v7;
      }

      while (v2 != v7);
    }

    else
    {
      v12 = (v0[20] + 32);
      do
      {
        v13 = *v12++;
        v14 = [v13 extensionIdentity];
        sub_224DAF9B8();
        v15 = *(v33 + 16);
        sub_224DAF9F8();
        sub_224DAFA08();
        sub_224DAF9C8();
        --v2;
      }

      while (v2);
    }

    v16 = v0[20];

    v11 = v33;
  }

  else
  {
    v10 = v0[20];

    v11 = MEMORY[0x277D84F90];
  }

  v17 = v0[18];
  v18 = v0[15];
  v31 = v0[17];
  v32 = v0[16];
  v19 = v0[13];
  v30 = v0[14];
  v20 = v0[12];
  v21 = sub_224A3DADC(v11);

  v29 = *(v20 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v21;
  v0[6] = sub_224B67E68;
  v0[7] = v22;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_224A39F40;
  v0[5] = &block_descriptor_141;
  v23 = _Block_copy(v0 + 2);

  sub_224DAB7E8();
  v0[8] = v3;
  sub_224A80F00(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v17, v18, v23);
  _Block_release(v23);
  (*(v30 + 8))(v18, v19);
  (*(v31 + 8))(v17, v32);
  v24 = v0[7];

  v25 = v0[18];
  v26 = v0[15];

  v27 = v0[1];

  return v27();
}

uint64_t sub_224B5F7DC()
{
  if (qword_2813513D8 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281364CD0);
  v3 = v1;
  v4 = sub_224DAB228();
  v5 = sub_224DAF288();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[21];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_224A2F000, v4, v5, "Failed to reap cache: %{public}@", v8, 0xCu);
    sub_224A3311C(v9, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v9, -1, -1);
    MEMORY[0x22AA5EED0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[18];
  v13 = v0[15];

  v14 = v0[1];

  return v14();
}

uint64_t sub_224B5F994(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__widgetRelevanceEventPublisher);
  sub_224D40590(a2);
  sub_224DAB348();
}

void sub_224B5F9EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v11 = sub_224DAB8C8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a2 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11);
  v17 = v16;
  LOBYTE(v16) = sub_224DAB8F8();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    if (a1)
    {
      swift_beginAccess();
      v18 = a1;

      sub_224B07E2C(a1, a4, a5);
      swift_endAccess();
    }

    dispatch_group_leave(a6);
  }

  else
  {
    __break(1u);
  }
}

void sub_224B5FB74(void (*a1)(id), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v6 = *(a4 + 16);

  v8 = sub_224B678A4(v7);

  a1(v8);
}

void sub_224B5FBF0(void *a1)
{
  v3 = sub_224DA9908();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DA9878();
  v147 = *(v8 - 8);
  v148 = v8;
  v9 = *(v147 + 8);
  MEMORY[0x28223BE20](v8);
  v142 = (&v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v144 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for ExtensionTask.Identifier(0);
  v14 = *(*(v141 - 1) + 64);
  MEMORY[0x28223BE20](v141);
  v146 = (&v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v133 - v18;
  v20 = sub_224DAB8C8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = (&v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v149 = v1;
  v25 = *(v1 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
  *v24 = v25;
  (*(v21 + 104))(v24, *MEMORY[0x277D85200], v20);
  v26 = v25;
  LOBYTE(v25) = sub_224DAB8F8();
  v28 = *(v21 + 8);
  v27 = v21 + 8;
  v28(v24, v20);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v27 = v149[22];
  if (v27)
  {
    v138 = v7;
    v139 = v4;
    v137 = v149[23];
    v7 = a1[2];
    v29 = a1[3];
    v4 = a1[4];
    v30 = objc_allocWithZone(MEMORY[0x277CFA418]);
    swift_unknownObjectRetain();

    v143 = v29;
    v31 = sub_224DAEDE8();
    v32 = [v30 initWithExtensionIdentity:v7 kind:v31];

    v33 = v32;
    sub_224DA9808();
    (*(v147 + 7))(v19, 0, 1, v148);
    swift_beginAccess();
    v145 = v33;
    sub_224B07F24(v19, v33);
    swift_endAccess();
    if (qword_2813513D8 == -1)
    {
LABEL_4:
      v34 = sub_224DAB258();
      v35 = __swift_project_value_buffer(v34, qword_281364CD0);

      v36 = v7;
      v37 = sub_224DAB228();
      v38 = sub_224DAF2A8();

      v39 = os_log_type_enabled(v37, v38);
      v140 = v3;
      if (v39)
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v135 = v35;
        v42 = a1;
        v43 = v41;
        v44 = v4;
        v45 = v27;
        v46 = swift_slowAlloc();
        v152[0] = v46;
        *v40 = 138543618;
        *(v40 + 4) = v36;
        *v43 = v36;
        *(v40 + 12) = 2082;
        v47 = v36;
        v48 = v143;
        *(v40 + 14) = sub_224A33F74(v143, v44, v152);
        _os_log_impl(&dword_224A2F000, v37, v38, "[%{public}@-%{public}s] _queue_reloadWidgetRelevances requested", v40, 0x16u);
        sub_224A3311C(v43, &unk_27D6F69F0, &unk_224DB3900);
        v49 = v43;
        a1 = v42;
        MEMORY[0x22AA5EED0](v49, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v46);
        v50 = v46;
        v27 = v45;
        v4 = v44;
        MEMORY[0x22AA5EED0](v50, -1, -1);
        MEMORY[0x22AA5EED0](v40, -1, -1);
      }

      else
      {

        v48 = v143;
      }

      sub_224B60BDC(v36, v48, v4);
      v136 = v27;
      v135 = a1;

      v55 = v36;
      v56 = sub_224DAB228();
      v57 = sub_224DAF2A8();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v152[0] = v60;
        *v58 = 138543618;
        *(v58 + 4) = v55;
        *v59 = v55;
        *(v58 + 12) = 2082;
        v61 = v55;
        *(v58 + 14) = sub_224A33F74(v48, v4, v152);
        _os_log_impl(&dword_224A2F000, v56, v57, "[%{public}@-%{public}s] _queue_reloadWidgetRelevances beginning", v58, 0x16u);
        sub_224A3311C(v59, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v59, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v60);
        MEMORY[0x22AA5EED0](v60, -1, -1);
        MEMORY[0x22AA5EED0](v58, -1, -1);
      }

      v62 = v142;
      v63 = v146;
      *v146 = v55;
      v63[1] = v48;
      v63[2] = v4;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5070, &unk_224DB3670);
      v64 = *(type metadata accessor for ExtensionTask.SchedulingOption(0) - 8);
      v65 = *(v64 + 72);
      v66 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_224DB3100;
      v68 = sub_224DAE8B8();
      (*(*(v68 - 8) + 56))(v67 + v66, 3, 5, v68);
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
      v70 = v144;
      (*(*(v69 - 8) + 56))(v144, 1, 1, v69);
      v142 = type metadata accessor for ExtensionTask(0);
      v71 = objc_allocWithZone(v142);
      v72 = v55;

      v73 = v72;
      sub_224DAE908();
      v74 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
      *&v71[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions] = MEMORY[0x277D84F90];
      v75 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
      v76 = sub_224DAC938();
      (*(*(v76 - 8) + 56))(&v71[v75], 1, 1, v76);
      v77 = &v71[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_syncWorkItem];
      *v77 = 0;
      v77[1] = 0;
      v78 = &v71[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
      *v78 = 0;
      v78[1] = 0;
      v79 = &v71[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem];
      *v79 = 0;
      v79[1] = 0;
      v80 = &v71[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
      *v80 = 0;
      v80[1] = 0;
      sub_224DA9868();
      (*(v147 + 4))(&v71[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_creationDate], v62, v148);
      *&v71[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_target] = v55;
      v147 = type metadata accessor for ExtensionTask.SchedulingConfiguration;
      sub_224A3F63C(v70, &v71[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration], type metadata accessor for ExtensionTask.SchedulingConfiguration);
      swift_beginAccess();
      v81 = *&v71[v74];
      *&v71[v74] = v67;
      v141 = v73;

      v82 = &v71[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_cost];
      *v82 = 0;
      v82[8] = 1;
      v134 = type metadata accessor for ExtensionTask.Identifier;
      sub_224A3F63C(v146, &v71[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier], type metadata accessor for ExtensionTask.Identifier);
      v83 = v138;
      sub_224DA98F8();
      v84 = v139;
      v85 = *(v139 + 16);
      v148 = v4;
      v86 = v140;
      v85(&v71[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier], v83, v140);
      v150 = sub_224DA98E8();
      sub_224A3F6A4();
      sub_224DAEF18();
      v87 = sub_224A3D19C(8);
      v89 = v88;
      v91 = v90;
      v93 = v92;

      v94 = MEMORY[0x22AA5D1C0](v87, v89, v91, v93);
      v96 = v95;

      v97 = &v71[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
      *v97 = v94;
      v97[1] = v96;
      v71[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_allowCostOverride] = 1;
      v151.receiver = v71;
      v151.super_class = v142;
      v98 = objc_msgSendSuper2(&v151, sel_init);
      v99 = v141;

      (*(v84 + 8))(v83, v86);
      sub_224A3D238(v144, v147);
      sub_224A3D238(v146, v134);
      swift_getObjectType();
      v100 = sub_224DAD478();
      v102 = v101;
      v103 = v100;
      v104 = swift_allocObject();
      *(v104 + 16) = 0;
      *(v104 + 24) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4270, &qword_224DB6580);
      v105 = swift_allocBox();
      v106 = v98;
      v142 = v98;
      v107 = v105;
      v109 = v108;
      v110 = sub_224DAB1F8();
      (*(*(v110 - 8) + 56))(v109, 1, 1, v110);
      v111 = swift_allocObject();
      v111[2] = v107;
      v111[3] = v99;
      v112 = v99;
      v113 = v149;
      v111[4] = v149;
      v111[5] = v103;
      v114 = v103;
      v115 = v143;
      v111[6] = v102;
      v111[7] = v115;
      v116 = v148;
      v111[8] = v148;
      v111[9] = v104;
      v117 = v145;
      v111[10] = v145;
      v118 = (v106 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem);
      v147 = v102;
      v119 = *(v106 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem);
      v120 = *(v106 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem + 8);
      *v118 = &unk_224DB6590;
      v118[1] = v111;
      v121 = v114;
      swift_unknownObjectRetain_n();

      v122 = v117;
      v123 = v112;

      sub_224A3D418(v119);
      v124 = swift_allocObject();
      *(v124 + 2) = v113;
      *(v124 + 3) = v123;
      *(v124 + 4) = v115;
      *(v124 + 5) = v116;
      *(v124 + 6) = v104;
      *(v124 + 7) = v121;
      *(v124 + 8) = v147;
      *(v124 + 9) = v107;
      *(v124 + 10) = v135;
      *(v124 + 11) = v122;
      v125 = v142;
      v126 = (v142 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion);
      v127 = *(v142 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion);
      v128 = *(v142 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion + 8);
      *v126 = sub_224B67710;
      v126[1] = v124;
      v129 = v122;
      v130 = v123;

      sub_224A3D418(v127);
      v131 = v113[5];
      v132 = v113[6];
      __swift_project_boxed_opaque_existential_1(v113 + 2, v131);
      (*(v132 + 16))(v125, v131, v132);

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();

      return;
    }

LABEL_16:
    swift_once();
    goto LABEL_4;
  }

  if (qword_2813513D8 != -1)
  {
    swift_once();
  }

  v51 = sub_224DAB258();
  __swift_project_value_buffer(v51, qword_281364CD0);
  v52 = sub_224DAB228();
  v53 = sub_224DAF298();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_224A2F000, v52, v53, "func _queue_debounced_reloadWidgetRelevances with nil relevanceCacheManager returning early. We should never get here", v54, 2u);
    MEMORY[0x22AA5EED0](v54, -1, -1);
  }
}

void sub_224B60BDC(void *a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - v8;
  v10 = sub_224DADA98();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v3[10]);
  v16 = *(v15 + 24);
  if (!sub_224DADA38())
  {
    goto LABEL_6;
  }

  v38 = a1;
  v39 = v9;
  sub_224DACA18();
  sub_224DACF08();

  (*(v11 + 8))(v14, v10);
  v17 = v46;
  v45 = v46;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F55E0, &unk_224DB65D0);
  sub_224A33088(&qword_281350CF8, &unk_27D6F55E0, &unk_224DB65D0);
  sub_224DAEF38();
  v40 = v17;
  v41 = v43;
  if (v43 >> 62)
  {
LABEL_33:
    v18 = sub_224DAF838();
  }

  else
  {
    v18 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = v44;
  if (v44 == v18)
  {
LABEL_5:

LABEL_6:
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    sub_224CBC42C(1u, 0xD00000000000003FLL, 0x8000000224DC7200);
    swift_willThrow();
    return;
  }

  v20 = v41 & 0xC000000000000001;
  v21 = v41 & 0xFFFFFFFFFFFFFF8;
  v22 = v41 + 32;
  while (1)
  {
    if (v20)
    {
      v23 = MEMORY[0x22AA5DCC0](v19, v41);
    }

    else
    {
      if ((v19 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (v19 >= *(v21 + 16))
      {
        goto LABEL_32;
      }

      v23 = *(v22 + 8 * v19);
    }

    v24 = v23;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_31;
    }

    v44 = v19 + 1;
    v25 = [v23 kind];
    v26 = sub_224DAEE18();
    v28 = v27;

    if (v26 == a2 && v28 == v42)
    {

      goto LABEL_24;
    }

    v30 = sub_224DAFD88();

    if (v30)
    {
      break;
    }

    v19 = v44;
    if (v44 == v18)
    {
      goto LABEL_5;
    }
  }

LABEL_24:
  v31 = v38;
  v32 = [v38 isRemote];
  v33 = v39;
  if (v32)
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v34 = 0x8000000224DC7280;
    v35 = 0xD000000000000030;
LABEL_28:
    sub_224CBC42C(0x18u, v35, v34);
    swift_willThrow();

    return;
  }

  v36 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v31 + v36, v33, &unk_27D6F5060, &qword_224DB5620);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  if ((*(*(v37 - 8) + 48))(v33, 1, v37) == 1)
  {
    sub_224A3311C(v33, &unk_27D6F5060, &qword_224DB5620);
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v35 = 0xD000000000000039;
    v34 = 0x8000000224DC7240;
    goto LABEL_28;
  }

  sub_224A3311C(v33, &unk_27D6F5060, &qword_224DB5620);
}

uint64_t sub_224B610D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[29] = v18;
  v8[30] = v19;
  v8[27] = a7;
  v8[28] = a8;
  v8[25] = a5;
  v8[26] = a6;
  v8[23] = a3;
  v8[24] = a4;
  v8[22] = a1;
  v9 = sub_224DA9688();
  v8[31] = v9;
  v10 = *(v9 - 8);
  v8[32] = v10;
  v11 = *(v10 + 64) + 15;
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v12 = sub_224DAB1F8();
  v8[35] = v12;
  v13 = *(v12 - 8);
  v8[36] = v13;
  v14 = *(v13 + 64) + 15;
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4270, &qword_224DB6580) - 8) + 64) + 15;
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v8[42] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_224B61284, 0, 0);
}

uint64_t sub_224B61284()
{
  v71 = v0;
  if (qword_2813507E8 != -1)
  {
    swift_once();
  }

  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  v4 = v0[35];
  v5 = v0[36];
  qword_281364CC0;
  sub_224DAB1E8();
  (*(v5 + 56))(v2, 0, 1, v4);
  swift_beginAccess();
  sub_224A92290(v2, v1);
  swift_beginAccess();
  sub_224A3796C(v1, v3, &qword_27D6F4270, &qword_224DB6580);
  v6 = *(v5 + 48);
  if (v6(v3, 1, v4) == 1)
  {
    sub_224A3311C(v0[40], &qword_27D6F4270, &qword_224DB6580);
  }

  else
  {
    v7 = v0[38];
    v8 = v0[36];
    v68 = v0[35];
    v9 = v0[23];
    (*(v8 + 32))(v7, v0[40]);
    sub_224DAF4B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4278, &unk_224DB79B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_224DB3100;
    v11 = [v9 description];
    v12 = sub_224DAEE18();
    v14 = v13;

    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_224A92300();
    *(v10 + 32) = v12;
    *(v10 + 40) = v14;
    sub_224DAB1D8();

    (*(v8 + 8))(v7, v68);
  }

  v15 = v0[24];
  v16 = *(v15 + 176);
  v0[43] = v16;
  if (v16)
  {
    v17 = v0[22];
    v0[44] = *(v15 + 184);
    sub_224A3796C(v17, (v0 + 2), &qword_27D6F4760, &unk_224DB3680);
    if (v0[5])
    {
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5080, &qword_224DB3690);
      if (swift_dynamicCast())
      {
        v18 = v0[25];
        v19 = v0[26];
        v0[45] = v0[21];
        v0[46] = swift_getObjectType();
        v20 = sub_224DABCE8();
        v0[47] = v20;
        v49 = qword_2813513D8;
        v50 = v20;
        if (v49 != -1)
        {
          swift_once();
        }

        v51 = v0[28];
        v52 = v0[23];
        v53 = sub_224DAB258();
        v0[48] = __swift_project_value_buffer(v53, qword_281364CD0);
        v54 = v52;

        v55 = sub_224DAB228();
        v56 = sub_224DAF2A8();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = v0[27];
          v69 = v0[28];
          v58 = v0[23];
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v70 = v61;
          *v59 = 138543618;
          *(v59 + 4) = v58;
          *v60 = v58;
          *(v59 + 12) = 2082;
          v62 = v58;
          *(v59 + 14) = sub_224A33F74(v57, v69, &v70);
          _os_log_impl(&dword_224A2F000, v55, v56, "[%{public}@-%{public}s] _queue_reloadWidgetRelevances fetching widget relevances", v59, 0x16u);
          sub_224A3311C(v60, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v60, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v61);
          MEMORY[0x22AA5EED0](v61, -1, -1);
          MEMORY[0x22AA5EED0](v59, -1, -1);
        }

        v64 = v0[27];
        v63 = v0[28];
        sub_224DAE5E8();

        v65 = sub_224DAE5D8();
        v0[49] = v65;
        ObjectType = swift_getObjectType();
        v67 = swift_task_alloc();
        v0[50] = v67;
        *v67 = v0;
        v67[1] = sub_224B61B24;

        return sub_224B623F4(v65, ObjectType);
      }
    }

    else
    {
      swift_unknownObjectRetain();
      sub_224A3311C((v0 + 2), &qword_27D6F4760, &unk_224DB3680);
    }

    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    sub_224CBC42C(6u, 0xD000000000000029, 0x8000000224DC7120);
    swift_willThrow();
    swift_unknownObjectRelease();
    v27 = v0[40];
    v26 = v0[41];
    v29 = v0[38];
    v28 = v0[39];
    v30 = v0[37];
    v32 = v0[33];
    v31 = v0[34];

    v33 = v0[1];
  }

  else
  {
    v21 = v0[42];
    v22 = v0[39];
    v23 = v0[35];
    swift_beginAccess();
    sub_224A3796C(v21, v22, &qword_27D6F4270, &qword_224DB6580);
    v24 = v6(v22, 1, v23);
    v25 = v0[39];
    if (v24 == 1)
    {
      sub_224A3311C(v0[39], &qword_27D6F4270, &qword_224DB6580);
    }

    else
    {
      v35 = v0[36];
      v34 = v0[37];
      v36 = v0[35];
      (*(v35 + 32))(v34, v0[39], v36);
      sub_224DAF4A8();
      sub_224DAB1D8();
      (*(v35 + 8))(v34, v36);
    }

    if (qword_2813513D8 != -1)
    {
      swift_once();
    }

    v37 = sub_224DAB258();
    __swift_project_value_buffer(v37, qword_281364CD0);
    v38 = sub_224DAB228();
    v39 = sub_224DAF298();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_224A2F000, v38, v39, "func _queue_reloadWidgetRelevances - Task with nil relevanceCacheManager should never occur", v40, 2u);
      MEMORY[0x22AA5EED0](v40, -1, -1);
    }

    v42 = v0[40];
    v41 = v0[41];
    v44 = v0[38];
    v43 = v0[39];
    v45 = v0[37];
    v47 = v0[33];
    v46 = v0[34];

    v33 = v0[1];
  }

  return v33();
}

uint64_t sub_224B61B24()
{
  v2 = *(*v1 + 400);
  v5 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = sub_224B6218C;
  }

  else
  {
    v3 = sub_224B61C38;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_224B61C38()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 368);
  v3 = *(v0 + 264);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);

  sub_224DABCF8();
  *(v0 + 416) = v1;
  if (v1)
  {
    v6 = *(v0 + 376);
    v7 = *(v0 + 360);
    v8 = *(v0 + 344);
    sub_224B67480();
    swift_allocError();
    *v9 = v1;
    *(v9 + 8) = 2;
    swift_willThrow();

    [v7 invalidate];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v11 = *(v0 + 320);
    v10 = *(v0 + 328);
    v13 = *(v0 + 304);
    v12 = *(v0 + 312);
    v14 = *(v0 + 296);
    v16 = *(v0 + 264);
    v15 = *(v0 + 272);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v20 = *(v0 + 344);
    v19 = *(v0 + 352);
    (*(*(v0 + 256) + 32))(*(v0 + 272), *(v0 + 264), *(v0 + 248));
    *(v0 + 424) = swift_getObjectType();
    v21 = *(v19 + 8);
    v23 = sub_224DAF0C8();

    return MEMORY[0x2822009F8](sub_224B61DFC, v23, v22);
  }
}

uint64_t sub_224B61DFC()
{
  v2 = v0[52];
  v1 = v0[53];
  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[34];
  v6 = v0[30];
  v0[54] = sub_224DAD468();
  v0[55] = v2;
  if (v2)
  {
    v7 = sub_224B622B0;
  }

  else
  {
    v7 = sub_224B61E90;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_224B61E90()
{
  v39 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 384);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 184);
  swift_beginAccess();
  *(v4 + 16) = v1;
  *(v4 + 24) = 0;
  swift_retain_n();
  v6 = v5;

  v7 = sub_224DAB228();
  v8 = sub_224DAF2A8();

  if (os_log_type_enabled(v7, v8))
  {
    v34 = *(v0 + 376);
    v35 = *(v0 + 256);
    v36 = *(v0 + 248);
    v37 = *(v0 + 272);
    v9 = *(v0 + 232);
    v33 = *(v0 + 224);
    v10 = *(v0 + 216);
    v11 = *(v0 + 184);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v38 = v14;
    *v12 = 138543874;
    *(v12 + 4) = v11;
    *v13 = v11;
    *(v12 + 12) = 2082;
    v15 = v11;
    *(v12 + 14) = sub_224A33F74(v10, v33, &v38);
    *(v12 + 22) = 2050;
    swift_beginAccess();
    v16 = *(v9 + 16);
    LODWORD(v10) = *(v4 + 24);

    if (v10)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16;
    }

    *(v12 + 24) = v17;

    _os_log_impl(&dword_224A2F000, v7, v8, "[%{public}@-%{public}s] _queue_reloadWidgetRelevances success, %{public}ld relevances", v12, 0x20u);
    sub_224A3311C(v13, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x22AA5EED0](v14, -1, -1);
    MEMORY[0x22AA5EED0](v12, -1, -1);

    (*(v35 + 8))(v37, v36);
  }

  else
  {
    v18 = *(v0 + 376);
    v19 = *(v0 + 272);
    v20 = *(v0 + 248);
    v21 = *(v0 + 256);
    v22 = *(v0 + 232);

    (*(v21 + 8))(v19, v20);
  }

  v23 = *(v0 + 344);
  [*(v0 + 360) invalidate];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v25 = *(v0 + 320);
  v24 = *(v0 + 328);
  v27 = *(v0 + 304);
  v26 = *(v0 + 312);
  v28 = *(v0 + 296);
  v30 = *(v0 + 264);
  v29 = *(v0 + 272);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_224B6218C()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 376);
  v3 = *(v0 + 360);
  v4 = *(v0 + 344);

  sub_224B67480();
  swift_allocError();
  *v5 = v1;
  *(v5 + 8) = 3;
  swift_willThrow();

  [v3 invalidate];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v7 = *(v0 + 320);
  v6 = *(v0 + 328);
  v9 = *(v0 + 304);
  v8 = *(v0 + 312);
  v10 = *(v0 + 296);
  v12 = *(v0 + 264);
  v11 = *(v0 + 272);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_224B622B0()
{
  v1 = v0[55];
  v2 = v0[47];
  v3 = v0[45];
  v4 = v0[43];
  v5 = v0[34];
  v6 = v0[31];
  v7 = v0[32];
  sub_224B67480();
  swift_allocError();
  *v8 = v1;
  *(v8 + 8) = 4;
  swift_willThrow();

  (*(v7 + 8))(v5, v6);
  [v3 invalidate];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v10 = v0[40];
  v9 = v0[41];
  v12 = v0[38];
  v11 = v0[39];
  v13 = v0[37];
  v15 = v0[33];
  v14 = v0[34];

  v16 = v0[1];

  return v16();
}

uint64_t sub_224B623F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_224B62418, 0, 0);
}

uint64_t sub_224B62418()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_224B62514;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_224B62514()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_224B62648;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_224B62630;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_224B62648()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_224B626AC(uint64_t a1, int a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v37 = a3;
  v38 = a8;
  v36 = a2;
  v34 = a13;
  v35 = a10;
  v40 = sub_224DAB7B8();
  v44 = *(v40 - 8);
  v18 = *(v44 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_224DAB848();
  v42 = *(v20 - 8);
  v43 = v20;
  v21 = *(v42 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(a4 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  *(v24 + 32) = a6;
  *(v24 + 40) = a7;
  *(v24 + 48) = v38;
  *(v24 + 56) = a1;
  *(v24 + 64) = v36 & 1;
  v25 = v37;
  *(v24 + 72) = v37;
  *(v24 + 80) = a9;
  *(v24 + 88) = v35;
  *(v24 + 96) = a11;
  *(v24 + 104) = a12;
  *(v24 + 112) = a13;
  aBlock[4] = sub_224B67754;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_65;
  v26 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v27 = a5;

  v28 = v25;

  v29 = v34;
  sub_224DAB7E8();
  v45 = MEMORY[0x277D84F90];
  sub_224A80F00(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  v31 = v39;
  v30 = v40;
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v23, v31, v26);
  _Block_release(v26);
  (*(v44 + 8))(v31, v30);
  (*(v42 + 8))(v23, v43);
}

void sub_224B62A20(unint64_t a1, void *a2, void *a3, unint64_t a4, uint64_t a5, void *a6, int a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13)
{
  LODWORD(v100) = a7;
  v99 = a6;
  v104 = a4;
  v102 = a13;
  v97 = a12;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4270, &qword_224DB6580);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v95 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v92 = &v90 - v22;
  v101 = sub_224DAB1F8();
  v96 = *(v101 - 8);
  v23 = *(v96 + 64);
  v24 = MEMORY[0x28223BE20](v101);
  v91 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v90 = &v90 - v26;
  v94 = sub_224DAB8C8();
  v93 = *(v94 - 8);
  v27 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v29 = (&v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = swift_projectBox();
  v103 = a1;
  sub_224A3317C(a1 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_powerlogReporter, &v108);
  v30 = v110;
  v31 = v111;
  __swift_project_boxed_opaque_existential_1(&v108, v110);
  v32 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v33 = a2;
  v34 = sub_224DA9FE8();
  v36 = v35;
  swift_endAccess();
  swift_beginAccess();
  v37.n128_u64[0] = v99;
  if (v100)
  {
    v37.n128_f64[0] = 0.0;
  }

  (*(v31 + 8))(v34, v36, a3, v104, *(a5 + 16), *(a5 + 24), v30, v31, v37);

  __swift_destroy_boxed_opaque_existential_1(&v108);
  if (a8)
  {
    v39 = v102;
    v38 = v103;
    swift_getObjectType();
    v40 = a8;
    sub_224DABD08();
    v41 = v98;
    swift_beginAccess();
    v42 = v41;
    v43 = v95;
    sub_224A3796C(v42, v95, &qword_27D6F4270, &qword_224DB6580);
    v44 = v96;
    v45 = v101;
    if ((*(v96 + 48))(v43, 1, v101) == 1)
    {
      sub_224A3311C(v43, &qword_27D6F4270, &qword_224DB6580);
      v46 = v97;
      v47 = v39;
    }

    else
    {
      v59 = v91;
      (*(v44 + 32))(v91, v43, v45);
      sub_224DAF4A8();
      v46 = v97;
      v47 = v39;
      if (qword_2813507E8 != -1)
      {
        swift_once();
      }

      sub_224DAB1D8();
      (*(v44 + 8))(v59, v45);
    }

    v60 = v46[5];
    v61 = v60 + 1;
    if (!__OFADD__(v60, 1))
    {
      swift_getErrorValue();
      if ((sub_224B6352C(v105) & 1) != 0 && v61 <= 2)
      {
        if (qword_2813513D8 != -1)
        {
          swift_once();
        }

        v62 = sub_224DAB258();
        __swift_project_value_buffer(v62, qword_281364CD0);
        v63 = v47;
        v64 = sub_224DAB228();
        v65 = sub_224DAF2A8();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          *v66 = 138412290;
          *(v66 + 4) = v63;
          *v67 = v63;
          v68 = v63;
          _os_log_impl(&dword_224A2F000, v64, v65, "Attempting to retry reload task for %@", v66, 0xCu);
          sub_224A3311C(v67, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v67, -1, -1);
          MEMORY[0x22AA5EED0](v66, -1, -1);
        }

        sub_224B63838(v46);
      }

      else
      {
        swift_beginAccess();
        v69 = v46[6];
        v70 = *(v69 + 16);
        if (v70)
        {
          v71 = a8;

          v72 = (v69 + 40);
          do
          {
            v74 = *(v72 - 1);
            v73 = *v72;
            v106 = a8;

            v74(&v106);

            v72 += 2;
            --v70;
          }

          while (v70);
        }
      }

      return;
    }

    __break(1u);
  }

  else
  {
    v48 = v98;
    v38 = v92;
    v100 = v33;
    v49 = v101;
    v99 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_224DB2780;
    v39 = v102;
    v51 = v103;
    *(v50 + 32) = v102;
    v52 = *(v51 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
    *v29 = v52;
    v53 = v93;
    v47 = v94;
    (*(v93 + 104))(v29, *MEMORY[0x277D85200], v94);
    v54 = v39;
    v55 = v52;
    LOBYTE(v52) = sub_224DAB8F8();
    (*(v53 + 8))(v29, v47);
    if (v52)
    {
      v56 = *(v51 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__widgetRelevanceEventPublisher);
      v108 = v50;
      v109 = 0;

      sub_224DAB348();
      swift_bridgeObjectRelease_n();
      swift_beginAccess();
      sub_224A3796C(v48, v38, &qword_27D6F4270, &qword_224DB6580);
      v57 = v96;
      v58 = v49;
      if ((*(v96 + 48))(v38, 1, v49) == 1)
      {
        sub_224A3311C(v38, &qword_27D6F4270, &qword_224DB6580);
        v29 = v97;
        v38 = v104;
        v39 = v99;
        v47 = v100;
      }

      else
      {
        v75 = v90;
        (*(v57 + 32))(v90, v38, v58);
        sub_224DAF4A8();
        v29 = v97;
        v38 = v104;
        v39 = v99;
        v47 = v100;
        if (qword_2813507E8 != -1)
        {
          swift_once();
        }

        sub_224DAB1D8();
        (*(v57 + 8))(v75, v58);
      }

      if (qword_2813513D8 == -1)
      {
        goto LABEL_29;
      }

      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_38:
  swift_once();
LABEL_29:
  v76 = sub_224DAB258();
  __swift_project_value_buffer(v76, qword_281364CD0);
  v77 = v47;

  v78 = sub_224DAB228();
  v79 = sub_224DAF2A8();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v107 = v82;
    *v80 = 138543618;
    *(v80 + 4) = v77;
    *v81 = v77;
    *(v80 + 12) = 2082;
    v83 = v77;
    *(v80 + 14) = sub_224A33F74(v39, v38, &v107);
    _os_log_impl(&dword_224A2F000, v78, v79, "[%{public}@-%{public}s] _queue_reloadWidgetRelevances calling completions", v80, 0x16u);
    sub_224A3311C(v81, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v81, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v82);
    MEMORY[0x22AA5EED0](v82, -1, -1);
    MEMORY[0x22AA5EED0](v80, -1, -1);
  }

  swift_beginAccess();
  v84 = v29[6];
  v85 = *(v84 + 16);
  if (v85)
  {
    v86 = v29[6];

    v87 = (v84 + 40);
    do
    {
      v89 = *(v87 - 1);
      v88 = *v87;
      v106 = 0;

      v89(&v106);

      v87 += 2;
      --v85;
    }

    while (v85);
  }
}

uint64_t sub_224B6352C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DAE6E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  (*(v12 + 16))(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  result = swift_dynamicCast();
  if (result)
  {
    v14 = v30;
    v15 = v31;
    if (v31 == 3)
    {
      if (!v30)
      {
        return 0;
      }

      v16 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v17 = v29;
        v18 = [v29 domain];
        v19 = sub_224DAEE18();
        v21 = v20;

        v22 = *MEMORY[0x277CFA188];
        if (v19 == sub_224DAEE18() && v21 == v23)
        {

LABEL_14:
          v26 = [v17 code];
          (*(v5 + 104))(v9, *MEMORY[0x277CE3C58], v4);
          v27 = sub_224DAE6D8();

          sub_224B67798(v14, 3u);
          (*(v5 + 8))(v9, v4);
          return v26 == v27;
        }

        v25 = sub_224DAFD88();

        if (v25)
        {
          goto LABEL_14;
        }

        sub_224B67798(v14, 3u);

        return 0;
      }

      v24 = v14;
      v15 = 3;
    }

    else
    {
      v24 = v30;
    }

    sub_224B67798(v24, v15);
    return 0;
  }

  return result;
}

void sub_224B63838(void *a1)
{
  v2 = v1;
  v59 = sub_224DAB798();
  v61 = *(v59 - 8);
  v4 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  v60 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAB878();
  v62 = *(v6 - 8);
  v63 = v6;
  v7 = *(v62 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v57 - v11;
  v13 = sub_224DAB7B8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[2];
  v18 = a1[3];
  v19 = a1[4];
  v20 = objc_allocWithZone(MEMORY[0x277CFA418]);
  v21 = sub_224DAEDE8();
  v22 = [v20 initWithExtensionIdentity:v17 kind:v21];

  v23 = OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_pendingReloadTasks;
  swift_beginAccess();
  if (sub_224D24244(v22, *&v2[v23]))
  {
    swift_endAccess();
    swift_beginAccess();
    v24 = a1[6];
    swift_beginAccess();

    sub_224B42914(v25);
    swift_endAccess();

    return;
  }

  v57 = v10;
  v58 = v12;
  swift_endAccess();
  v26 = a1[5];
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_12;
  }

  a1[5] = v28;
  v12 = v2;
  swift_beginAccess();
  v29 = *&v2[v23];
  if ((v29 & 0xC000000000000001) != 0)
  {
    if (v29 < 0)
    {
      v30 = *&v2[v23];
    }

    else
    {
      v30 = v29 & 0xFFFFFFFFFFFFFF8;
    }

    v31 = v22;

    v32 = sub_224DAF838();
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      return;
    }

    *&v2[v23] = sub_224D2CB80(v30, v32 + 1);
  }

  else
  {
    v33 = *&v2[v23];
    v34 = v22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = *&v2[v23];
  sub_224B208F8(a1, v22, isUniquelyReferenced_nonNull_native);
  *&v2[v23] = v64;

  swift_endAccess();
  v36 = swift_allocObject();
  v36[2] = v2;
  v36[3] = v22;
  v36[4] = a1;
  aBlock[4] = sub_224B680DC;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_71;
  _Block_copy(aBlock);
  v64 = MEMORY[0x277D84F90];
  sub_224A80F00(&qword_281350ED0, MEMORY[0x277D85198]);
  v16 = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  v13 = a1;
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  sub_224DAF788();
  v37 = sub_224DAB8B8();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  sub_224DAB8A8();

  if (qword_2813513D8 != -1)
  {
    goto LABEL_17;
  }

LABEL_12:
  v40 = sub_224DAB258();
  __swift_project_value_buffer(v40, qword_281364CD0);
  v41 = v16;

  v42 = sub_224DAB228();
  v43 = sub_224DAF2A8();

  v44 = os_log_type_enabled(v42, v43);
  v45 = v63;
  if (v44)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 134218242;
    *(v46 + 4) = *(v13 + 40);

    *(v46 + 12) = 2112;
    *(v46 + 14) = v41;
    *v47 = v41;
    v48 = v41;
    _os_log_impl(&dword_224A2F000, v42, v43, "Scheduling retry %ld for %@", v46, 0x16u);
    sub_224A3311C(v47, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v47, -1, -1);
    MEMORY[0x22AA5EED0](v46, -1, -1);
  }

  else
  {
  }

  v49 = v59;
  v50 = v60;
  v52 = v61;
  v51 = v62;
  v53 = *&v12[OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue];
  v54 = v57;
  sub_224DAB858();
  *v50 = *&v12[OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_retryTimeout];
  (*(v52 + 104))(v50, *MEMORY[0x277D85188], v49);
  v55 = v58;
  MEMORY[0x22AA59C40](v54, v50);
  (*(v52 + 8))(v50, v49);
  v56 = *(v51 + 8);
  v56(v54, v45);
  sub_224DAF328();

  v56(v55, v45);
}

void sub_224B63F0C(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  sub_224B0D4A8(a2);
  swift_endAccess();

  sub_224B5FBF0(a3);
}

void sub_224B63F8C(NSObject *a1, void *a2)
{
  if (!a1)
  {
    if (qword_2813513D8 != -1)
    {
      swift_once();
    }

    v14 = sub_224DAB258();
    __swift_project_value_buffer(v14, qword_281364CD0);
    v15 = a2;
    oslog = sub_224DAB228();
    v16 = sub_224DAF2A8();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138543362;
      *(v17 + 4) = v15;
      *v18 = v15;
      v19 = v15;
      _os_log_impl(&dword_224A2F000, oslog, v16, "Reloaded relevances for %{public}@", v17, 0xCu);
      sub_224A3311C(v18, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v18, -1, -1);
      MEMORY[0x22AA5EED0](v17, -1, -1);
    }

    goto LABEL_10;
  }

  v4 = a1;
  if (qword_2813513D8 != -1)
  {
    swift_once();
  }

  v5 = sub_224DAB258();
  __swift_project_value_buffer(v5, qword_281364CD0);
  v6 = a1;
  v7 = a2;
  oslog = sub_224DAB228();
  v8 = sub_224DAF288();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543618;
    *(v9 + 4) = v7;
    *v10 = v7;
    *(v9 + 12) = 2114;
    v11 = a1;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    v10[1] = v13;
    _os_log_impl(&dword_224A2F000, oslog, v8, "Failed to reload relevances for %{public}@: %{public}@", v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v10, -1, -1);
    MEMORY[0x22AA5EED0](v9, -1, -1);

LABEL_10:
    v20 = oslog;

    goto LABEL_12;
  }

  v20 = a1;

LABEL_12:
}

void sub_224B64278(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_224B677B8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224BC6D2C;
  aBlock[3] = &block_descriptor_81;
  v13 = _Block_copy(aBlock);

  [a2 getWidgetRelevancesWithRequest:a3 completion:v13];
  _Block_release(v13);
}

uint64_t sub_224B64430(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
    return sub_224DAF0D8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
    return sub_224DAF0E8();
  }
}

uint64_t sub_224B644A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v101 = a8;
  v86 = a4;
  v87 = a6;
  v108 = a5;
  v84 = a3;
  v95 = a2;
  v96 = a1;
  v85 = a19;
  v83 = a18;
  v82 = a16;
  v88 = a15;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v106 = v81 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4290, &qword_224DB6628);
  v98 = *(v23 - 8);
  v99 = v23;
  v24 = *(v98 + 64);
  MEMORY[0x28223BE20](v23);
  v97 = v81 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4298, &qword_224DB6630);
  v102 = *(v26 - 8);
  v103 = v26;
  v27 = *(v102 + 64);
  MEMORY[0x28223BE20](v26);
  v100 = v81 - v28;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F42A0, &qword_224DB6638);
  v105 = *(v107 - 8);
  v29 = *(v105 + 64);
  MEMORY[0x28223BE20](v107);
  v104 = v81 - v30;
  v31 = sub_224DAF3C8();
  v93 = *(v31 - 8);
  v94 = v31;
  v32 = *(v93 + 64);
  MEMORY[0x28223BE20](v31);
  v92 = v81 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_224DAF318();
  v34 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v91 = v81 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_224DAB848();
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v89 = v81 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_224DA92C8();
  v81[0] = *(v39 - 8);
  v81[1] = v39;
  v40 = *(v81[0] + 64);
  MEMORY[0x28223BE20](v39);
  v117[3] = a10;
  v117[4] = v88;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v117);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, v96, a10);
  v115 = a12;
  v116 = a17;
  v96 = a17;
  v42 = __swift_allocate_boxed_opaque_existential_1(v114);
  v43 = *(*(a12 - 8) + 32);
  v88 = v42;
  v44 = v95;
  v95 = a12;
  v43(v42, v44, a12);
  v113[3] = a11;
  v113[4] = v82;
  v45 = __swift_allocate_boxed_opaque_existential_1(v113);
  (*(*(a11 - 8) + 32))(v45, v84, a11);
  v112[3] = a13;
  v112[4] = v83;
  v46 = __swift_allocate_boxed_opaque_existential_1(v112);
  (*(*(a13 - 8) + 32))(v46, v86, a13);
  v111[3] = a14;
  v111[4] = v85;
  v47 = __swift_allocate_boxed_opaque_existential_1(v111);
  (*(*(a14 - 8) + 32))(v47, v87, a14);
  v48 = *(a9 + 48);
  v49 = *(a9 + 52);
  v50 = swift_allocObject();
  *(v50 + 176) = 0;
  *(v50 + 184) = 0;
  *(v50 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_finishLaunchingToken) = 0;
  v51 = MEMORY[0x277D84F98];
  *(v50 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_pendingReloadTasks) = MEMORY[0x277D84F98];
  *(v50 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_reloadDates) = v51;
  *(v50 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_subscriptions) = MEMORY[0x277D84FA0];
  v52 = (v50 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_powerlogReporter);
  v53 = type metadata accessor for RelevancePowerlogReporter();
  swift_allocObject();
  v54 = RelevancePowerlogReporter.init(subsystem:category:)(0x746567646957, 0xE600000000000000, 0xD000000000000016, 0x8000000224DC73F0);
  v52[3] = v53;
  v52[4] = &protocol witness table for RelevancePowerlogReporter;
  *v52 = v54;
  v55 = OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__widgetRelevanceEventPublisher;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4268, &qword_224DB6560);
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  *(v50 + v55) = sub_224DAB358();
  sub_224A3317C(v113, v50 + 96);
  sub_224A3317C(v117, v50 + 16);
  sub_224A3317C(v114, v50 + 56);
  sub_224A3317C(v112, v50 + 136);
  sub_224A3796C(a7, v50 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_relevanceCacheUrl, &unk_27D6F4680, &unk_224DB4610);
  sub_224A3317C(v108, v50 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_keybagStateProvider);
  v59 = OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_relevanceCacheManagerProvider;
  sub_224A3317C(v111, v50 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_relevanceCacheManagerProvider);
  *(v50 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_retryTimeout) = v101;
  sub_224A3317C(v50 + v59, v110);
  __swift_project_boxed_opaque_existential_1(v110, v110[3]);
  v60 = v115;
  v61 = v116;
  v62 = __swift_project_boxed_opaque_existential_1(v114, v115);
  v63 = *(v61 + 40);
  v109[3] = v60;
  v109[4] = v63;
  v64 = __swift_allocate_boxed_opaque_existential_1(v109);
  (*(*(v60 - 8) + 16))(v64, v62, v60);
  v101 = a7;
  v65 = sub_224DADE08();
  v67 = v66;
  __swift_destroy_boxed_opaque_existential_1(v109);
  v68 = *(v50 + 176);
  *(v50 + 176) = v65;
  *(v50 + 184) = v67;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v110);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224DAB7E8();
  v110[0] = MEMORY[0x277D84F90];
  sub_224A80F00(&qword_281350A88, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  (*(v93 + 104))(v92, *MEMORY[0x277D85260], v94);
  *(v50 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue) = sub_224DAF418();
  v69 = *(v96 + 40);
  v110[0] = sub_224DAD8B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F42B0, &unk_224DB8D60);
  sub_224A33088(&qword_2813510B0, &qword_27D6F42B0, &unk_224DB8D60);
  v70 = v97;
  sub_224DAB438();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F55E0, &unk_224DB65D0);
  sub_224A33088(&qword_281351360, &qword_27D6F4290, &qword_224DB6628);
  v71 = v99;
  v72 = v100;
  sub_224DAB3E8();
  (*(v98 + 8))(v70, v71);
  v110[0] = *(v50 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
  v73 = v110[0];
  v74 = sub_224DAF358();
  v75 = v106;
  (*(*(v74 - 8) + 56))(v106, 1, 1, v74);
  sub_224A33088(&qword_281351388, &qword_27D6F4298, &qword_224DB6630);
  sub_224B67CF4();
  v76 = v73;
  v78 = v103;
  v77 = v104;
  sub_224DAB448();
  sub_224A3311C(v75, &qword_27D6F5090, &qword_224DB5C30);
  (*(v102 + 8))(v72, v78);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_2813511D0, &qword_27D6F42A0, &qword_224DB6638);
  v79 = v107;
  sub_224DAB488();

  (*(v105 + 8))(v77, v79);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  sub_224A3311C(v101, &unk_27D6F4680, &unk_224DB4610);
  __swift_destroy_boxed_opaque_existential_1(v108);
  __swift_destroy_boxed_opaque_existential_1(v111);
  __swift_destroy_boxed_opaque_existential_1(v112);
  __swift_destroy_boxed_opaque_existential_1(v113);
  __swift_destroy_boxed_opaque_existential_1(v117);
  __swift_destroy_boxed_opaque_existential_1(v114);
  return v50;
}

void sub_224B652F4(void *a1, uint64_t a2, unint64_t a3, char *a4, char *a5, id a6, uint64_t a7, uint64_t a8, void *a9)
{
  v138 = a2;
  v139 = a3;
  v137 = a1;
  v121 = sub_224DAB798();
  v120 = *(v121 - 8);
  v14 = *(v120 + 64);
  MEMORY[0x28223BE20](v121);
  v119 = (&v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = sub_224DAB878();
  v122 = *(v123 - 8);
  v16 = *(v122 + 64);
  v17 = MEMORY[0x28223BE20](v123);
  v117 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v118 = &v117 - v19;
  v126 = sub_224DA9878();
  v127 = *(v126 - 8);
  v20 = *(v127 + 64);
  v21 = MEMORY[0x28223BE20](v126);
  v124 = &v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v125 = &v117 - v23;
  v128 = sub_224DAB7B8();
  v24 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v129 = &v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_224DAB8C8();
  v27 = *(v26 - 8);
  v28 = v27[8];
  MEMORY[0x28223BE20](v26);
  v30 = (&v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = swift_allocObject();
  v31[2] = a5;
  v31[3] = a6;
  v131 = a7;
  v31[4] = a7;
  v31[5] = a8;
  v140 = v31;
  v31[6] = a9;
  v32 = *&a4[OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue];
  *v30 = v32;
  v34 = (v27 + 13);
  v33 = v27[13];
  v135 = *MEMORY[0x277D85200];
  v134 = v33;
  v33(v30);
  v136 = a5;

  v133 = a6;

  v132 = a8;

  v35 = a9;
  v130 = v32;
  v36 = sub_224DAB8F8();
  v39 = v27[1];
  v37 = v27 + 1;
  v38 = v39;
  v39(v30, v26);
  if ((v36 & 1) == 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (!*(a4 + 22))
  {
    if (qword_2813513D8 != -1)
    {
      swift_once();
    }

    v60 = sub_224DAB258();
    __swift_project_value_buffer(v60, qword_281364CD0);
    v61 = sub_224DAB228();
    v62 = sub_224DAF2A8();
    if (os_log_type_enabled(v61, v62))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_224A2F000, v61, v62, "func _queue_reloadWidgetRelevances with nil relevanceCacheManager returning early", v36, 2u);
      MEMORY[0x22AA5EED0](v36, -1, -1);
    }

    sub_224B67480();
    v40 = swift_allocError();
    *v63 = 0;
    *(v63 + 8) = 5;
    v64 = *&v136[OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue];
    *v30 = v64;
    v134(v30, v135, v26);
    v65 = v64;
    LOBYTE(v64) = sub_224DAB8F8();
    (v38)(v30, v26);
    if (v64)
    {
      v66 = v133;
      swift_beginAccess();
      v67 = v132;

      v68 = v40;
      v69 = *(v66 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v142 = *(v66 + 2);
      sub_224B20A98(v40, v131, v67, isUniquelyReferenced_nonNull_native);

      *(v66 + 2) = v142;
      swift_endAccess();
      dispatch_group_leave(v35);

      return;
    }

    __break(1u);
LABEL_41:
    v30 = sub_224AD95EC(0, v30[2] + 1, 1, v30);
    *v37 = v30;
    goto LABEL_19;
  }

  v40 = a4;
  v41 = objc_allocWithZone(MEMORY[0x277CFA418]);
  v30 = v138;
  v34 = v139;
  v42 = sub_224DAEDE8();
  a6 = v137;
  a4 = [v41 initWithExtensionIdentity:v137 kind:v42];

  v35 = OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_pendingReloadTasks;
  swift_beginAccess();
  v43 = sub_224D24244(a4, *(&v35->isa + v40));
  if (v43)
  {
    v37 = v43;
    swift_endAccess();
    if (qword_2813513D8 == -1)
    {
LABEL_5:
      v44 = sub_224DAB258();
      __swift_project_value_buffer(v44, qword_281364CD0);
      v45 = a6;

      v46 = sub_224DAB228();
      v47 = sub_224DAF2A8();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = v30;
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        aBlock[0] = v51;
        *v48 = 138543618;
        *(v48 + 4) = v45;
        *v50 = v45;
        *(v48 + 12) = 2082;
        v52 = v45;
        *(v48 + 14) = sub_224A33F74(v49, v34, aBlock);
        _os_log_impl(&dword_224A2F000, v46, v47, "[%{public}@-%{public}s] debouncing _queue_reloadWidgetRelevances due to frequent calling", v48, 0x16u);
        sub_224A3311C(v50, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v50, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v51);
        MEMORY[0x22AA5EED0](v51, -1, -1);
        MEMORY[0x22AA5EED0](v48, -1, -1);
      }

      v53 = v140;
      v54 = swift_allocObject();
      *(v54 + 16) = sub_224B67C94;
      *(v54 + 24) = v53;
      swift_beginAccess();
      v55 = v37[6];

      v56 = swift_isUniquelyReferenced_nonNull_native();
      v37[6] = v55;
      if ((v56 & 1) == 0)
      {
        v55 = sub_224AD95EC(0, v55[2] + 1, 1, v55);
        v37[6] = v55;
      }

      v58 = v55[2];
      v57 = v55[3];
      if (v58 >= v57 >> 1)
      {
        v55 = sub_224AD95EC((v57 > 1), v58 + 1, 1, v55);
      }

      v55[2] = v58 + 1;
      v59 = &v55[2 * v58];
      v59[4] = sub_224B680D4;
      v59[5] = v54;
      v37[6] = v55;
      swift_endAccess();

      v37[5] = 0;

      return;
    }

LABEL_39:
    swift_once();
    goto LABEL_5;
  }

  swift_endAccess();
  type metadata accessor for WidgetRelevanceRefreshTask();
  v38 = swift_allocObject();
  *(v38 + 16) = a6;
  *(v38 + 24) = v30;
  *(v38 + 32) = v34;
  *(v38 + 40) = 0;
  *(v38 + 48) = MEMORY[0x277D84F90];
  v37 = (v38 + 48);
  v36 = swift_allocObject();
  v71 = v140;
  *(v36 + 16) = sub_224B67C94;
  *(v36 + 24) = v71;
  swift_beginAccess();
  v30 = *(v38 + 48);
  v72 = a6;

  v73 = swift_isUniquelyReferenced_nonNull_native();
  *(v38 + 48) = v30;
  v137 = v72;
  if ((v73 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_19:
  v75 = v30[2];
  v74 = v30[3];
  if (v75 >= v74 >> 1)
  {
    v30 = sub_224AD95EC((v74 > 1), v75 + 1, 1, v30);
  }

  v30[2] = v75 + 1;
  v76 = &v30[2 * v75];
  v76[4] = sub_224B680D4;
  v76[5] = v36;
  *v37 = v30;
  swift_endAccess();
  swift_beginAccess();
  v77 = *(&v35->isa + v40);
  if ((v77 & 0xC000000000000001) != 0)
  {
    if (v77 < 0)
    {
      v78 = *(&v35->isa + v40);
    }

    else
    {
      v78 = v77 & 0xFFFFFFFFFFFFFF8;
    }

    v79 = a4;

    v80 = sub_224DAF838();
    if (__OFADD__(v80, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    *(&v35->isa + v40) = sub_224D2CB80(v78, v80 + 1);
  }

  else
  {
    v81 = *(&v35->isa + v40);
    v82 = a4;
  }

  v83 = swift_isUniquelyReferenced_nonNull_native();
  v142 = *(&v35->isa + v40);
  sub_224B208F8(v38, a4, v83);
  *(&v35->isa + v40) = v142;

  swift_endAccess();
  v84 = swift_allocObject();
  v84[2] = v40;
  v84[3] = a4;
  v84[4] = v38;
  aBlock[4] = sub_224B680DC;
  aBlock[5] = v84;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_119_0;
  _Block_copy(aBlock);
  v142 = MEMORY[0x277D84F90];
  sub_224A80F00(&qword_281350ED0, MEMORY[0x277D85198]);
  a4 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  sub_224DAF788();
  v85 = sub_224DAB8B8();
  v86 = *(v85 + 48);
  v87 = *(v85 + 52);
  swift_allocObject();
  sub_224DAB8A8();

  v88 = OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService_reloadDates;
  swift_beginAccess();
  v89 = *&v40[v88];
  if (!*(v89 + 16) || (v90 = sub_224B0B854(a4), (v91 & 1) == 0))
  {
    swift_endAccess();
LABEL_36:
    sub_224DAF408();

    return;
  }

  v92 = v127;
  v93 = v125;
  v94 = v126;
  (*(v127 + 16))(v125, *(v89 + 56) + *(v127 + 72) * v90, v126);
  swift_endAccess();
  v95 = v124;
  sub_224DA9808();
  sub_224DA9758();
  v97 = v96;
  v100 = *(v92 + 8);
  v98 = v92 + 8;
  v99 = v100;
  (v100)(v95, v94);
  if (v97 >= 4.0)
  {
    (v99)(v93, v94);
    goto LABEL_36;
  }

  v136 = v99;
  v127 = v98;
  if (qword_2813513D8 != -1)
  {
LABEL_43:
    swift_once();
  }

  v101 = sub_224DAB258();
  __swift_project_value_buffer(v101, qword_281364CD0);
  v102 = v137;
  v103 = v139;

  v104 = sub_224DAB228();
  v105 = sub_224DAF2A8();

  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    aBlock[0] = v108;
    *v106 = 138543618;
    *(v106 + 4) = v102;
    *v107 = v102;
    *(v106 + 12) = 2082;
    v109 = v102;
    *(v106 + 14) = sub_224A33F74(v138, v103, aBlock);
    _os_log_impl(&dword_224A2F000, v104, v105, "[%{public}@-%{public}s] delaying _queue_reloadWidgetRelevances due to frequent calling", v106, 0x16u);
    sub_224A3311C(v107, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v107, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v108);
    MEMORY[0x22AA5EED0](v108, -1, -1);
    MEMORY[0x22AA5EED0](v106, -1, -1);
  }

  v110 = v117;
  sub_224DAB858();
  v111 = v119;
  *v119 = 4;
  v112 = v120;
  v113 = v121;
  (*(v120 + 104))(v111, *MEMORY[0x277D85188], v121);
  v114 = v118;
  MEMORY[0x22AA59C40](v110, v111);
  (*(v112 + 8))(v111, v113);
  v115 = *(v122 + 8);
  v116 = v123;
  v115(v110, v123);
  sub_224DAF328();

  v115(v114, v116);
  (v136)(v125, v126);
}

void sub_224B6627C(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_224DAB7B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v72 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_224DAB848();
  v71 = *(v73 - 8);
  v10 = *(v71 + 64);
  MEMORY[0x28223BE20](v73);
  v70 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DADA98();
  v75 = *(v12 - 8);
  v76 = v12;
  v13 = *(v75 + 64);
  MEMORY[0x28223BE20](v12);
  v74 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DAB8C8();
  v16 = *(v15 - 8);
  v17 = v16[8];
  MEMORY[0x28223BE20](v15);
  v19 = (&v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  v21 = *(a2 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
  *v19 = v21;
  v22 = v16[13];
  v79 = *MEMORY[0x277D85200];
  v80 = v16 + 13;
  v78 = v22;
  v22(v19);
  v82 = a3;
  v77 = v21;
  LOBYTE(v21) = sub_224DAB8F8();
  v23 = v16[1];
  v81 = v15;
  v23(v19, v15);
  if (v21)
  {
    v69 = v23;
    v67 = v7;
    v68 = v6;
    if (qword_2813513D8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v24 = sub_224DAB258();
  __swift_project_value_buffer(v24, qword_281364CD0);
  v25 = a1;
  v26 = sub_224DAB228();
  v27 = sub_224DAF2A8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = v20;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138543362;
    *(v29 + 4) = v25;
    *v30 = v25;
    v31 = v25;
    _os_log_impl(&dword_224A2F000, v26, v27, "[%{public}@] batch reload requested", v29, 0xCu);
    sub_224A3311C(v30, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v30, -1, -1);
    v32 = v29;
    v20 = v28;
    MEMORY[0x22AA5EED0](v32, -1, -1);
  }

  sub_224B5BA90(v25);
  if (!v33)
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v47 = sub_224CBC42C(0x18u, 0xD000000000000025, 0x8000000224DC72C0);
    sub_224B63F8C(v47, v82);

LABEL_11:

    return;
  }

  v34 = v33;
  v35 = *(a2 + 88);
  __swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
  v36 = *(v35 + 24);
  if (!sub_224DADA38())
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v47 = sub_224CBC42C(0x18u, 0xD000000000000034, 0x8000000224DC72F0);
    sub_224B63F8C(v47, v82);

    goto LABEL_11;
  }

  v37 = v74;
  sub_224DACA18();
  v38 = v76;
  sub_224DACF08();

  (*(v75 + 8))(v37, v38);
  v39 = sub_224B5DB74(aBlock[0]);

  v40 = v34;

  v41 = sub_224DAB228();
  v42 = sub_224DAF2A8();

  v43 = os_log_type_enabled(v41, v42);
  v66 = v20;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138543618;
    *(v44 + 4) = v40;
    *v45 = v34;
    *(v44 + 12) = 2050;
    *(v44 + 14) = v39[2];
    v46 = v40;

    _os_log_impl(&dword_224A2F000, v41, v42, "[%{public}@] batch reload beginning with %{public}ld kinds", v44, 0x16u);
    sub_224A3311C(v45, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v45, -1, -1);
    MEMORY[0x22AA5EED0](v44, -1, -1);
  }

  else
  {
  }

  v48 = v81;
  v49 = v79;
  v51 = v77;
  v50 = v78;
  *v19 = v77;
  v50(v19, v49, v48);
  v52 = v51;
  LOBYTE(v51) = sub_224DAB8F8();
  v69(v19, v48);
  if (v51)
  {
    v81 = v52;
    v53 = dispatch_group_create();
    v54 = swift_allocObject();
    v54[2] = MEMORY[0x277D84F98];
    v82 = v39;
    v55 = v39[2];
    if (v55)
    {
      v56 = v82 + 5;
      do
      {
        v57 = *(v56 - 1);
        v58 = *v56;

        dispatch_group_enter(v53);

        v59 = v53;
        sub_224B652F4(v40, v57, v58, a2, a2, v54, v57, v58, v59);

        swift_bridgeObjectRelease_n();
        v56 += 2;
        --v55;
      }

      while (v55);
    }

    v60 = swift_allocObject();
    v61 = v66;
    v60[2] = sub_224B67F74;
    v60[3] = v61;
    v60[4] = a2;
    v60[5] = v54;
    aBlock[4] = sub_224B680D8;
    aBlock[5] = v60;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_157;
    v62 = _Block_copy(aBlock);

    v63 = v70;
    sub_224DAB7E8();
    v83 = MEMORY[0x277D84F90];
    sub_224A80F00(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    v64 = v72;
    v65 = v68;
    sub_224DAF788();
    sub_224DAF308();
    _Block_release(v62);

    (*(v67 + 8))(v64, v65);
    (*(v71 + 8))(v63, v73);
  }

  else
  {
    __break(1u);
  }
}

void sub_224B66C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v10 = sub_224DAB7B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DAB848();
  v29 = *(v15 - 8);
  v30 = v15;
  v16 = *(v29 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  _Block_copy(a5);
  sub_224B5BA90(a1);
  if (v20)
  {
    v21 = v20;
    v28 = *(a4 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
    v22 = swift_allocObject();
    v22[2] = a4;
    v22[3] = v21;
    v22[4] = a2;
    v22[5] = a3;
    v22[6] = sub_224B67834;
    v22[7] = v19;
    aBlock[4] = sub_224B6783C;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_90;
    v23 = _Block_copy(aBlock);

    v27 = v21;

    sub_224DAB7E8();
    v31 = MEMORY[0x277D84F90];
    sub_224A80F00(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v18, v14, v23);
    _Block_release(v23);

    (*(v11 + 8))(v14, v10);
    (*(v29 + 8))(v18, v30);
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v24 = sub_224CBC42C(0x18u, 0xD000000000000025, 0x8000000224DC72C0);
    v30 = sub_224DA9518();
    a5[2](a5, v30);

    v25 = v30;
  }
}

void sub_224B66FF8(void *a1, uint64_t a2, void (**a3)(void, void, void, void))
{
  v4 = v3;
  v5 = a3;
  *(swift_allocObject() + 16) = a3;
  _Block_copy(v5);
  v8 = qword_2813513D8;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = sub_224DAB258();
  __swift_project_value_buffer(v9, qword_281364CD0);
  v10 = a1;
  v11 = sub_224DAB228();
  v12 = sub_224DAF268();

  if (os_log_type_enabled(v11, v12))
  {
    v39 = a2;
    v13 = v5;
    v14 = v4;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138543362;
    *(v15 + 4) = v10;
    *v16 = v10;
    v17 = v10;
    _os_log_impl(&dword_224A2F000, v11, v12, "Fetching write handle for %{public}@", v15, 0xCu);
    sub_224A3311C(v16, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v16, -1, -1);
    v18 = v15;
    v4 = v14;
    v5 = v13;
    a2 = v39;
    MEMORY[0x22AA5EED0](v18, -1, -1);
  }

  v19 = *(a2 + 176);
  if (v19)
  {
    v20 = *(a2 + 184);
    v21 = *(a2 + 176);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v22 = sub_224DAD478();
    if (!v4)
    {
      v28 = v23;
      v39 = v22;
      v29 = swift_allocObject();
      swift_weakInit();
      v30 = swift_allocObject();
      v31 = v39;
      v30[2] = v29;
      v30[3] = v31;
      v30[4] = v28;
      v30[5] = v10;
      v30[6] = v19;
      v30[7] = v20;
      aBlock[4] = sub_224B674D4;
      aBlock[5] = v30;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_224A3837C;
      aBlock[3] = &block_descriptor_12;
      v32 = _Block_copy(aBlock);
      v33 = objc_opt_self();
      v34 = v10;
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      v35 = [v33 responderWithHandler_];
      _Block_release(v32);

      swift_getObjectType();
      v36 = sub_224DABCE8();
      v37 = [objc_allocWithZone(MEMORY[0x277CF0B58]) initWithInfo:0 responder:v35];
      (v5)[2](v5, 0, v36, v37);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v24 = sub_224DAB228();
    v25 = sub_224DAF2A8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_224A2F000, v24, v25, "func withFileHandle with nil relevanceCacheManager returning early", v26, 2u);
      MEMORY[0x22AA5EED0](v26, -1, -1);
    }

    sub_224B67480();
    swift_allocError();
    *v27 = 0;
    *(v27 + 8) = 5;
    swift_willThrow();
  }
}

unint64_t sub_224B67480()
{
  result = qword_281358A00;
  if (!qword_281358A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281358A00);
  }

  return result;
}

uint64_t sub_224B674E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_224ACFF60;

  return sub_224B5E67C(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_224B675D8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_224B67624(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_224ACED1C;

  return sub_224B610D8(a1, v3, v4, v5, v6, v7, v8, v10);
}

void sub_224B67798(id a1, unsigned __int8 a2)
{
  if (a2 <= 5u)
  {
  }
}

uint64_t sub_224B677B8(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0) - 8) + 80);

  return sub_224B64430(a1);
}

void sub_224B6783C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[2];
  sub_224B5C188(v1, v2, v3, v4, v5);
}

void sub_224B6786C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  sub_224B5D240(v1, v2, v3);
}

id sub_224B678A4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_224B599FC(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
  sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0);
  v2 = sub_224DAEDA8();
  v4 = v3;

  sub_224B59CCC(a1);
  v5 = sub_224DAEDA8();
  v7 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32D8, &qword_224DC1AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB30F0;
  v9 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_224DAEE18();
  *(inited + 40) = v10;
  MEMORY[0x22AA5D210](v2, v4);

  MEMORY[0x22AA5D210](93, 0xE100000000000000);
  *(inited + 48) = 91;
  *(inited + 56) = 0xE100000000000000;
  v11 = *MEMORY[0x277CCA068];
  *(inited + 64) = sub_224DAEE18();
  *(inited + 72) = v12;
  MEMORY[0x22AA5D210](v5, v7);

  MEMORY[0x22AA5D210](93, 0xE100000000000000);
  *(inited + 80) = 91;
  *(inited + 88) = 0xE100000000000000;
  v13 = sub_224D9FE14(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32E0, &unk_224DB65F0);
  swift_arrayDestroy();
  sub_224B67B98();
  sub_224B67BEC();
  sub_224B67C40();
  v14 = sub_224DA93D8();
  sub_224D9F01C(v13);

  v15 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v16 = sub_224DAEDE8();
  v17 = sub_224DAECC8();

  v18 = [v15 initWithDomain:v16 code:v14 userInfo:v17];

  return v18;
}

unint64_t sub_224B67B98()
{
  result = qword_28135CCD0;
  if (!qword_28135CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135CCD0);
  }

  return result;
}

unint64_t sub_224B67BEC()
{
  result = qword_28135CCC8;
  if (!qword_28135CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135CCC8);
  }

  return result;
}

unint64_t sub_224B67C40()
{
  result = qword_281350BE8;
  if (!qword_281350BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350BE8);
  }

  return result;
}

uint64_t objectdestroy_41Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_224B67CF4()
{
  result = qword_281350A80;
  if (!qword_281350A80)
  {
    sub_224A3B79C(255, &qword_281350A70, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350A80);
  }

  return result;
}

uint64_t sub_224B67D94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_224ACED1C;

  return sub_224B5F25C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_224B67E70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_224ACFF60;

  return sub_224B5DEFC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_101Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t get_enum_tag_for_layout_string_10ChronoCore20WidgetRelevanceErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 7u) <= 5)
  {
    return *(a1 + 8) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_224B67FE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 9))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 8);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_224B68028(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_224B6806C(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    LOBYTE(a2) = 6;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_224B68144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x444974736F68 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_224DAFD88();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_224B681C8(uint64_t a1)
{
  v2 = sub_224B6B2B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224B68204(uint64_t a1)
{
  v2 = sub_224B6B2B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224B68240@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4360, &qword_224DB6B58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224B6B2B8();
  sub_224DAFEF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_224DAFC58();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_224B683BC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4368, &qword_224DB6B60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224B6B2B8();
  sub_224DAFF08();
  sub_224DAFCC8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_224B684F8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6E6F69746361;
  }

  else
  {
    v2 = 0x746567646977;
  }

  if (*a2)
  {
    v3 = 0x6E6F69746361;
  }

  else
  {
    v3 = 0x746567646977;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_224DAFD88();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_224B68578()
{
  v1 = *v0;
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224B685E8()
{
  *v0;
  sub_224DAEE78();
}

uint64_t sub_224B6863C()
{
  v1 = *v0;
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

void sub_224B686B4(uint64_t *a1@<X8>)
{
  v2 = 0x746567646977;
  if (*v1)
  {
    v2 = 0x6E6F69746361;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t sub_224B686E4()
{
  if (*v0)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 0x746567646977;
  }
}

uint64_t sub_224B6871C(uint64_t a1)
{
  v2 = sub_224B6AA28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224B68758(uint64_t a1)
{
  v2 = sub_224B6AA28();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_224B68794(void *a1)
{
  v3 = v1;
  v31 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4380, &qword_224DB6B70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v27 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224B6AA28();
  sub_224DAFF08();
  sub_224DAAD38();
  v11 = *(v3 + 16);
  v12 = sub_224DAAD08();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v14 = v12;
    v15 = v13;

    v29 = v14;
    v30 = v15;
    v28 = 0;
    v16 = sub_224B6B30C();
    sub_224DAFCE8();
    v17 = objc_opt_self();
    v18 = *(v3 + 24);
    v29 = 0;
    v19 = [v17 archivedDataWithRootObject:v18 requiringSecureCoding:1 error:&v29];
    v20 = v29;
    if (v19)
    {
      v21 = sub_224DA96D8();
      v27[1] = v16;
      v22 = v21;
      v24 = v23;

      v29 = v22;
      v30 = v24;
      v28 = 1;
      sub_224DAFCE8();
      (*(v6 + 8))(v9, v5);
      sub_224A78024(v14, v15);
      sub_224A78024(v22, v24);
    }

    else
    {
      v26 = v20;
      sub_224DA9528();

      swift_willThrow();
      sub_224A78024(v14, v15);
      (*(v6 + 8))(v9, v5);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t sub_224B68A7C(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F42B8, &qword_224DB6B20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224B6AA28();
  sub_224DAFEF8();
  if (v2)
  {
    type metadata accessor for InteractionMessage();
    swift_deallocPartialClassInstance();
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v3;
  }

  v22 = 0;
  sub_224B6AA7C();
  sub_224DAFC68();
  v11 = v20;
  v19 = v21;
  sub_224DAAD38();
  sub_224A3B79C(0, &qword_281350830, 0x277CFA358);
  v18 = v11;
  *(v1 + 16) = sub_224DAACF8();
  v22 = 1;
  sub_224DAFC68();
  v12 = v20;
  v13 = v21;
  sub_224A3B79C(0, &qword_27D6F42D0, 0x277CCAAC8);
  sub_224A3B79C(0, &qword_27D6F42D8, 0x277D23720);
  result = sub_224DAF2E8();
  v15 = v18;
  v17 = result;
  if (result)
  {
    (*(v6 + 8))(v9, v5);
    sub_224A78024(v12, v13);
    sub_224A78024(v15, v19);
    *(v3 + 24) = v17;
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_224B68DA4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_224B68E08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for InteractionMessage();
  v5 = swift_allocObject();
  result = sub_224B68A7C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_224B68E90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E6F69746361;
  }

  else
  {
    v4 = 0x496C6F72746E6F63;
  }

  if (v3)
  {
    v5 = 0xEF797469746E6564;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x6E6F69746361;
  }

  else
  {
    v6 = 0x496C6F72746E6F63;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xEF797469746E6564;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_224DAFD88();
  }

  return v9 & 1;
}

uint64_t sub_224B68F40()
{
  v1 = *v0;
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224B68FCC()
{
  *v0;
  sub_224DAEE78();
}

uint64_t sub_224B69044()
{
  v1 = *v0;
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224B690D8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_224DAFBF8();

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

void sub_224B69134(uint64_t *a1@<X8>)
{
  v2 = 0x496C6F72746E6F63;
  if (*v1)
  {
    v2 = 0x6E6F69746361;
  }

  v3 = 0xEF797469746E6564;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_224B6917C()
{
  if (*v0)
  {
    result = 0x6E6F69746361;
  }

  else
  {
    result = 0x496C6F72746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_224B691CC@<X0>(char *a1@<X8>)
{
  v2 = sub_224DAFBF8();

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

uint64_t sub_224B6922C(uint64_t a1)
{
  v2 = sub_224B6AB90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224B69268(uint64_t a1)
{
  v2 = sub_224B6AB90();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_224B692A4(void *a1)
{
  v2 = v1;
  v4 = sub_224DAE738();
  v22 = *(v4 - 8);
  v23 = v4;
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4370, &qword_224DB6B68);
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v25);
  v11 = &v22 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224B6AB90();
  sub_224DAFF08();
  sub_224DAAD38();
  v13 = *(v1 + 16);
  v14 = v24;
  v15 = sub_224DAAD08();
  if (v14)
  {
    (*(v8 + 8))(v11, v25);
  }

  else
  {
    v17 = v15;
    v18 = v16;
    v24 = v8;
    v19 = v2;
    v20 = v23;

    v26 = v17;
    v27 = v18;
    v28 = 0;
    sub_224B6B30C();
    sub_224DAFCE8();
    v21 = v22;
    (*(v22 + 16))(v7, v19 + OBJC_IVAR____TtC10ChronoCore25ControlInteractionMessage_action, v20);
    LOBYTE(v26) = 1;
    sub_224B6A434(&qword_27D6F4378, 255, MEMORY[0x277CE3C88]);
    sub_224DAFCE8();
    sub_224A78024(v17, v18);
    (*(v21 + 8))(v7, v20);
    (*(v24 + 8))(v11, v25);
  }
}

uint64_t sub_224B695B8(uint64_t *a1)
{
  v3 = sub_224DAE738();
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F42E0, &qword_224DB6B28);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v13 = a1[3];
  v12 = a1[4];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_224B6AB90();
  sub_224DAFEF8();
  if (v1)
  {
    v14 = v25;
    type metadata accessor for ControlInteractionMessage(0);
    v19 = *(*v14 + 48);
    v20 = *(*v14 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v22 = v6;
    v15 = v8;
    v28 = 0;
    sub_224B6AA7C();
    sub_224DAFC68();
    v17 = v26;
    v16 = v27;
    sub_224DAAD38();
    sub_224A3B79C(0, &qword_281350A50, 0x277CFA228);
    v18 = sub_224DAACF8();
    v14 = v25;
    *(v25 + 16) = v18;
    LOBYTE(v26) = 1;
    sub_224B6A434(&qword_27D6F42F0, 255, MEMORY[0x277CE3C88]);
    sub_224DAFC68();
    (*(v15 + 8))(v11, v7);
    sub_224A78024(v17, v16);
    (*(v23 + 32))(v14 + OBJC_IVAR____TtC10ChronoCore25ControlInteractionMessage_action, v22, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  return v14;
}

uint64_t sub_224B69960()
{
  v1 = OBJC_IVAR____TtC10ChronoCore25ControlInteractionMessage_action;
  v2 = sub_224DAE738();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_224B69A2C()
{
  result = sub_224DAE738();
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

void sub_224B69B24()
{
  sub_224B5A81C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_224B69BA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_224B69BE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_224B69C60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for ControlInteractionMessage(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = sub_224B695B8(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_224B69CEC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4350, &qword_224DB6B50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224B6B0CC();
  sub_224DAFF08();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_224DAFCC8();
  if (!v2)
  {
    v13 = *(type metadata accessor for RemoteActivityLaunchMessage(0) + 20);
    v15[14] = 1;
    sub_224DA9688();
    sub_224B6A434(&qword_27D6F4358, 255, MEMORY[0x277CC9260]);
    sub_224DAFCB8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_224B69EA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4338, &qword_224DB6B48);
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for RemoteActivityLaunchMessage(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = (&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v14 + 28);
  v18 = sub_224DA9688();
  v19 = *(*(v18 - 8) + 56);
  v27 = v17;
  v19(v16 + v17, 1, 1, v18);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224B6B0CC();
  sub_224DAFEF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_224B6B120(v16 + v27);
  }

  else
  {
    v21 = v25;
    v29 = 0;
    *v16 = sub_224DAFC58();
    v16[1] = v22;
    v28 = 1;
    sub_224B6A434(&qword_27D6F4348, 255, MEMORY[0x277CC9260]);
    sub_224DAFC48();
    (*(v21 + 8))(v11, v26);
    sub_224B6B188(v7, v16 + v27);
    sub_224B6B1F8(v16, v24);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_224B6B25C(v16);
  }
}

uint64_t sub_224B6A1D0()
{
  if (*v0)
  {
    result = 0x525568636E75616CLL;
  }

  else
  {
    result = 0x7974697669746361;
  }

  *v0;
  return result;
}

uint64_t sub_224B6A214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7974697669746361 && a2 == 0xEA00000000004449;
  if (v6 || (sub_224DAFD88() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x525568636E75616CLL && a2 == 0xE90000000000004CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_224DAFD88();

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

uint64_t sub_224B6A300(uint64_t a1)
{
  v2 = sub_224B6B0CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224B6A33C(uint64_t a1)
{
  v2 = sub_224B6B0CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224B6A3A8(uint64_t a1)
{
  *(a1 + 8) = sub_224B6A434(&qword_2813545A0, 255, type metadata accessor for RemoteActivityLaunchMessage);
  result = sub_224B6A434(qword_2813545A8, 255, type metadata accessor for RemoteActivityLaunchMessage);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_224B6A434(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_224B6A47C(uint64_t a1)
{
  v2 = sub_224B6B9F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224B6A4B8(uint64_t a1)
{
  v2 = sub_224B6B9F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224B6A4F4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F43F8, &qword_224DB7198);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224B6B9F8();
  sub_224DAFF08();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_224B6A608(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4320, &qword_224DB6B40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224B6AF58();
  sub_224DAFF08();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4308, &qword_224DB6B38);
  sub_224B6B000(&qword_27D6F4328, sub_224B6B078);
  sub_224DAFCE8();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_224B6A7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1937335659 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_224DAFD88();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_224B6A82C(uint64_t a1)
{
  v2 = sub_224B6AF58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224B6A868(uint64_t a1)
{
  v2 = sub_224B6AF58();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_224B6A8A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_224B6ADA4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_224B6A918(uint64_t a1)
{
  *(a1 + 8) = sub_224B6A434(&qword_281355990, 255, type metadata accessor for ControlInteractionMessage);
  result = sub_224B6A434(qword_281355998, 255, type metadata accessor for ControlInteractionMessage);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_224B6A9A4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_224B6A434(&unk_281359D90, a2, type metadata accessor for InteractionMessage);
  result = sub_224B6A434(qword_281359DA0, v3, type metadata accessor for InteractionMessage);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_224B6AA28()
{
  result = qword_27D6F42C0;
  if (!qword_27D6F42C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F42C0);
  }

  return result;
}

unint64_t sub_224B6AA7C()
{
  result = qword_27D6F42C8;
  if (!qword_27D6F42C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F42C8);
  }

  return result;
}

uint64_t sub_224B6AAD0(uint64_t a1, uint64_t a2)
{
  sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  v4 = *(a2 + 24);
  v5 = *(a1 + 24);
  v6 = v4;
  v7 = sub_224DAF6A8();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  v10 = v8;
  v11 = v9;
  v12 = sub_224DAF6A8();

  return v12 & 1;
}

unint64_t sub_224B6AB90()
{
  result = qword_27D6F42E8;
  if (!qword_27D6F42E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F42E8);
  }

  return result;
}

uint64_t sub_224B6ABE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAE738();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = v5[2];
  v12(&v20 - v10, a1 + OBJC_IVAR____TtC10ChronoCore25ControlInteractionMessage_action, v4);
  v12(v9, a2 + OBJC_IVAR____TtC10ChronoCore25ControlInteractionMessage_action, v4);
  v13 = MEMORY[0x22AA5CA70](v11, v9);
  v14 = v5[1];
  v14(v9, v4);
  v14(v11, v4);
  if (v13)
  {
    sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
    v15 = *(a2 + 16);
    v16 = *(a1 + 16);
    v17 = v15;
    v18 = sub_224DAF6A8();
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

void *sub_224B6ADA4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F42F8, &qword_224DB6B30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224B6AF58();
  sub_224DAFEF8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4308, &qword_224DB6B38);
    sub_224B6B000(&qword_27D6F4310, sub_224B6AFAC);
    sub_224DAFC68();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

unint64_t sub_224B6AF58()
{
  result = qword_27D6F4300;
  if (!qword_27D6F4300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4300);
  }

  return result;
}

unint64_t sub_224B6AFAC()
{
  result = qword_27D6F4318;
  if (!qword_27D6F4318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4318);
  }

  return result;
}

uint64_t sub_224B6B000(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F4308, &qword_224DB6B38);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_224B6B078()
{
  result = qword_27D6F4330;
  if (!qword_27D6F4330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4330);
  }

  return result;
}

unint64_t sub_224B6B0CC()
{
  result = qword_27D6F4340;
  if (!qword_27D6F4340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4340);
  }

  return result;
}

uint64_t sub_224B6B120(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224B6B188(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_224B6B1F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteActivityLaunchMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224B6B25C(uint64_t a1)
{
  v2 = type metadata accessor for RemoteActivityLaunchMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_224B6B2B8()
{
  result = qword_28135B178[0];
  if (!qword_28135B178[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28135B178);
  }

  return result;
}

unint64_t sub_224B6B30C()
{
  result = qword_281351A60;
  if (!qword_281351A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281351A60);
  }

  return result;
}

unint64_t sub_224B6B3C4()
{
  result = qword_27D6F4388;
  if (!qword_27D6F4388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4388);
  }

  return result;
}

unint64_t sub_224B6B41C()
{
  result = qword_27D6F4390;
  if (!qword_27D6F4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4390);
  }

  return result;
}

unint64_t sub_224B6B474()
{
  result = qword_27D6F4398;
  if (!qword_27D6F4398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4398);
  }

  return result;
}

unint64_t sub_224B6B4CC()
{
  result = qword_27D6F43A0;
  if (!qword_27D6F43A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F43A0);
  }

  return result;
}

unint64_t sub_224B6B524()
{
  result = qword_27D6F43A8;
  if (!qword_27D6F43A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F43A8);
  }

  return result;
}

uint64_t sub_224B6B5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_224B6B5E0()
{
  result = qword_27D6F43B0;
  if (!qword_27D6F43B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F43B0);
  }

  return result;
}

unint64_t sub_224B6B634()
{
  result = qword_27D6F5640;
  if (!qword_27D6F5640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5640);
  }

  return result;
}

unint64_t sub_224B6B68C()
{
  result = qword_28135B168;
  if (!qword_28135B168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135B168);
  }

  return result;
}

unint64_t sub_224B6B6E4()
{
  result = qword_28135B170;
  if (!qword_28135B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135B170);
  }

  return result;
}

unint64_t sub_224B6B73C()
{
  result = qword_27D6F43B8;
  if (!qword_27D6F43B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F43B8);
  }

  return result;
}

unint64_t sub_224B6B794()
{
  result = qword_27D6F43C0;
  if (!qword_27D6F43C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F43C0);
  }

  return result;
}

unint64_t sub_224B6B7EC()
{
  result = qword_27D6F43C8;
  if (!qword_27D6F43C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F43C8);
  }

  return result;
}

unint64_t sub_224B6B844()
{
  result = qword_27D6F43D0;
  if (!qword_27D6F43D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F43D0);
  }

  return result;
}

unint64_t sub_224B6B89C()
{
  result = qword_27D6F43D8;
  if (!qword_27D6F43D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F43D8);
  }

  return result;
}

unint64_t sub_224B6B8F4()
{
  result = qword_27D6F43E0;
  if (!qword_27D6F43E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F43E0);
  }

  return result;
}

unint64_t sub_224B6B94C()
{
  result = qword_27D6F43E8;
  if (!qword_27D6F43E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F43E8);
  }

  return result;
}

unint64_t sub_224B6B9A4()
{
  result = qword_27D6F43F0;
  if (!qword_27D6F43F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F43F0);
  }

  return result;
}

unint64_t sub_224B6B9F8()
{
  result = qword_27D6F4400;
  if (!qword_27D6F4400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4400);
  }

  return result;
}

unint64_t sub_224B6BA60()
{
  result = qword_27D6F4408;
  if (!qword_27D6F4408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4408);
  }

  return result;
}

unint64_t sub_224B6BAB8()
{
  result = qword_27D6F4410;
  if (!qword_27D6F4410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4410);
  }

  return result;
}

id sub_224B6BD00()
{
  v13 = v0;
  ObjectType = swift_getObjectType();
  v1 = sub_224DA9538();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3DD8, &qword_224DB4B60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_224DB30F0;
  *(v6 + 32) = sub_224A3B79C(0, &unk_27D6F3DE0, 0x277CBEA60);
  *(v6 + 40) = sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);

  sub_224DAF628();

  if (v22)
  {
    sub_224A739A4(&v21, &v23);
    swift_dynamicCast();
    v8 = v20;
    v9 = MEMORY[0x277D84F90];
    v19 = MEMORY[0x277D84F90];
    sub_224DAF618();
    sub_224B339F4();
    while (1)
    {
      sub_224DAF738();
      if (!v18)
      {
        break;
      }

      sub_224A739A4(&v17, &v14);
      if ((swift_dynamicCast() & 1) != 0 && v15)
      {
        MEMORY[0x22AA5D350]();
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v10 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_224DAF038();
        }

        sub_224DAF078();
        v9 = v19;
      }
    }

    (*(v2 + 8))(v5, v1);
    v11 = v13;
    *&v13[OBJC_IVAR___CHSReplicatedDescriptorsBox_descriptors] = v9;
    v16.receiver = v11;
    v16.super_class = ObjectType;
    return objc_msgSendSuper2(&v16, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_224B6BFF8()
{
  v0 = sub_224DA9908();
  if (v1 <= 0x3F)
  {
    v16 = *(v0 - 8) + 64;
    v2 = type metadata accessor for ExtensionTask.Identifier(319);
    if (v3 <= 0x3F)
    {
      v17 = *(v2 - 8) + 64;
      sub_224B6C2B4(319, &qword_281350CD0, MEMORY[0x277CF9D18]);
      if (v5 <= 0x3F)
      {
        v18 = *(v4 - 8) + 64;
        sub_224B48260();
        if (v7 <= 0x3F)
        {
          v19 = *(v6 - 8) + 64;
          v8 = sub_224DAE918();
          if (v9 <= 0x3F)
          {
            v20 = *(v8 - 8) + 64;
            v10 = type metadata accessor for ExtensionTask.SchedulingConfiguration(319);
            if (v11 <= 0x3F)
            {
              v21 = *(v10 - 8) + 64;
              sub_224B6C2B4(319, &qword_281350D50, MEMORY[0x277CF9B08]);
              if (v13 <= 0x3F)
              {
                v22 = *(v12 - 8) + 64;
                sub_224B6C2B4(319, &qword_281350D58, MEMORY[0x277CF9AC8]);
                if (v15 <= 0x3F)
                {
                  v23 = *(v14 - 8) + 64;
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_224B6C2B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_224DAF728();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_224B6C308()
{
  v1 = *v0;
  v2 = (*v0 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_name);
  v4 = *v2;
  v5 = v2[1];

  MEMORY[0x22AA5D210](46, 0xE100000000000000);
  MEMORY[0x22AA5D210](*(v1 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_logDigest), *(v1 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_logDigest + 8));
  return v4;
}

uint64_t sub_224B6C374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  v10 = v9;
  v150 = a8;
  v149 = a7;
  v155 = a6;
  v154 = a5;
  v144 = a4;
  v160 = a3;
  v161 = a2;
  v12 = sub_224DA9908();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v146 = &v132[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4020, &qword_224DB5618);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v132[-v18];
  v145 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v142 = *(v145 - 8);
  v20 = *(v142 + 64);
  MEMORY[0x28223BE20](v145);
  v143 = &v132[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v156 = sub_224DAD738();
  v158 = *(v156 - 8);
  v22 = *(v158 + 64);
  MEMORY[0x28223BE20](v156);
  v135 = &v132[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v166 = &v132[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27);
  v168 = &v132[-v29];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4440, &unk_224DBA100);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v136 = &v132[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = MEMORY[0x28223BE20](v32);
  v137 = &v132[-v35];
  MEMORY[0x28223BE20](v34);
  v139 = &v132[-v36];
  v141 = sub_224DABE18();
  v140 = *(v141 - 8);
  v37 = *(v140 + 64);
  v38 = MEMORY[0x28223BE20](v141);
  v165 = &v132[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v38);
  v41 = &v132[-v40];
  v42 = type metadata accessor for ExtensionTask.Identifier(0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v45 = &v132[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v147 = v13;
  v46 = *(v13 + 16);
  v151 = OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier;
  v148 = v12;
  v153 = v13 + 16;
  v152 = v46;
  v46((v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier), a1 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier, v12);
  v47 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier;
  v48 = sub_224A40C80();
  v49 = (v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_name);
  *v49 = v48;
  v49[1] = v50;
  sub_224A4152C(a1 + v47, v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_taskIdentifier, type metadata accessor for ExtensionTask.Identifier);
  v159 = a1;
  sub_224A4152C(a1 + v47, v45, type metadata accessor for ExtensionTask.Identifier);
  if (swift_getEnumCaseMultiPayload() != 7)
  {
    sub_224A42478(v45, type metadata accessor for ExtensionTask.Identifier);
    *(v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_rateLimitIdentifiers) = 0;
    *(v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_rateLimitedDeviceIdentifiers) = 0;
    (*(v158 + 56))(v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_duetBudgetIdentity, 1, 1, v156);
    v73 = 0;
    goto LABEL_25;
  }

  v138 = v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);
  v52 = *&v45[*(v51 + 48)];
  v167 = *&v45[*(v51 + 64)];
  v53 = v140;
  v54 = v141;
  (*(v140 + 32))(v41, v45, v141);
  v134 = v41;
  if (!v52)
  {
    v77 = v138;
    *(v138 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_rateLimitIdentifiers) = 0;
    *(v77 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_rateLimitedDeviceIdentifiers) = 0;
    (*(v53 + 16))(v165, v41, v54);
    v78 = v139;
    sub_224DAD728();
    v168 = *(v158 + 56);
    (v168)(v78, 0, 1, v156);
    v55 = v167;
    goto LABEL_48;
  }

  v171 = MEMORY[0x277D84FA0];
  v55 = v52 & 0xFFFFFFFFFFFFFF8;
  if (v52 >> 62)
  {
    goto LABEL_67;
  }

  v56 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v57 = v168;
  v165 = v19;
  v163 = v52;
  if (v56)
  {
    v157 = v55;
    v133 = 0;
    v55 = 0;
    v164 = v52 & 0xC000000000000001;
    v162 = v24;
    while (1)
    {
      while (1)
      {
        if (v164)
        {
          v63 = MEMORY[0x22AA5DCC0](v55, v52);
        }

        else
        {
          if (v55 >= *(v157 + 16))
          {
            goto LABEL_66;
          }

          v63 = *(v52 + 8 * v55 + 32);
        }

        v64 = v63;
        v19 = (v55 + 1);
        if (__OFADD__(v55, 1))
        {
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          v56 = sub_224DAF838();
          goto LABEL_5;
        }

        v65 = [v63 refreshStrategy];
        objc_opt_self();
        v66 = swift_dynamicCastObjCClass();
        if (v66)
        {
          break;
        }

        swift_unknownObjectRelease();
LABEL_8:
        ++v55;
        v62 = v19 == v56;
        v19 = v165;
        if (v62)
        {
          goto LABEL_28;
        }
      }

      v67 = [v66 rateLimitIdentifier];
      if (v67)
      {
        v68 = v67;
        v69 = v25;
        v70 = v56;
        v71 = [v64 extensionBundleIdentifier];
        if (!v71)
        {
          sub_224DAEE18();
          v71 = sub_224DAEDE8();
        }

        v72 = [v64 uniqueIdentifier];
        if (!v72)
        {
          sub_224DAEE18();
          v72 = sub_224DAEDE8();
        }

        v58 = _CHSUniqueWidgetRateLimitConfigurationName();

        v59 = sub_224DAEE18();
        v61 = v60;

        sub_224ADAF60(&v169, v59, v61);
        swift_unknownObjectRelease();

        v57 = v168;
        v56 = v70;
        v25 = v69;
        v24 = v162;
        v52 = v163;
        goto LABEL_8;
      }

      swift_unknownObjectRelease();
      v133 = 1;
      ++v55;
      v62 = v19 == v56;
      v19 = v165;
      v57 = v168;
      if (v62)
      {
        goto LABEL_28;
      }
    }
  }

  v133 = 0;
LABEL_28:
  v79 = v171;
  v80 = *(v171 + 16);
  if (v80)
  {
    v170 = MEMORY[0x277D84FA0];
    v81 = *(v167 + 16);
    if (v81)
    {
      v82 = *(v25 + 16);
      v83 = v167 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
      v84 = *(v25 + 72);
      do
      {
        v82(v57, v83, v24);
        v85 = sub_224DAA1F8();
        sub_224ADB950(&v169, v85, v86);
        v57 = v168;

        (*(v25 + 8))(v57, v24);
        v83 += v84;
        --v81;
      }

      while (v81);
      v87 = v170;
      v80 = *(v79 + 16);
      if (!v80)
      {
        goto LABEL_38;
      }

      v19 = v165;
    }

    else
    {
      v87 = MEMORY[0x277D84FA0];
    }

    v90 = sub_224B0CC2C(v80, 0);
    v91 = sub_224B2F374(&v169, v90 + 4, v80, v79);
    sub_224A3B7E4();
    if (v91 == v80)
    {
      goto LABEL_39;
    }

    __break(1u);
LABEL_38:

    v90 = MEMORY[0x277D84F90];
    v19 = v165;
LABEL_39:
    *(v138 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_rateLimitIdentifiers) = v90;
    v92 = *(v87 + 16);
    if (v92)
    {
      v88 = sub_224B0CC40(*(v87 + 16), 0);
      v93 = sub_224B2F218(&v169, v88 + 2, v92, v87);
      sub_224A3B7E4();
      if (v93 == v92)
      {
LABEL_43:
        v89 = v138;
        goto LABEL_44;
      }

      __break(1u);
    }

    v88 = MEMORY[0x277D84F90];
    goto LABEL_43;
  }

  v88 = 0;
  v89 = v138;
  *(v138 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_rateLimitIdentifiers) = 0;
LABEL_44:
  v94 = v137;
  v55 = v167;
  *(v89 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_rateLimitedDeviceIdentifiers) = v88;
  if (v133)
  {
    sub_224DAD708();
    v95 = 0;
  }

  else
  {

    v95 = 1;
  }

  v168 = *(v158 + 56);
  (v168)(v94, v95, 1, v156);
  sub_224A44E4C(v94, v139, &unk_27D6F4440, &unk_224DBA100);
LABEL_48:
  v96 = 0;
  v52 = *(v55 + 16);
  do
  {
    if (v52 == v96)
    {

      sub_224A3311C(v139, &unk_27D6F4440, &unk_224DBA100);
      (*(v140 + 8))(v134, v141);
      v10 = v138;
      v74 = v144;
      v75 = v143;
      v76 = v142;
      v101 = v156;
      goto LABEL_55;
    }

    if (v96 >= *(v167 + 16))
    {
      __break(1u);
      goto LABEL_65;
    }

    v97 = v166;
    (*(v25 + 16))(v166, v167 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v96++, v24);
    sub_224DAA1F8();
    v55 = sub_224DAA048();

    (*(v25 + 8))(v97, v24);
  }

  while ((v55 & 1) != 0);

  v98 = v139;
  v99 = v136;
  sub_224A3796C(v139, v136, &unk_27D6F4440, &unk_224DBA100);
  v100 = v158;
  v101 = v156;
  if ((*(v158 + 48))(v99, 1, v156) == 1)
  {
    sub_224A3311C(v98, &unk_27D6F4440, &unk_224DBA100);
    (*(v140 + 8))(v134, v141);
    sub_224A3311C(v99, &unk_27D6F4440, &unk_224DBA100);
    v10 = v138;
    v74 = v144;
    v75 = v143;
    v76 = v142;
LABEL_55:
    (v168)(v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_duetBudgetIdentity, 1, 1, v101);
    v73 = 0;
    goto LABEL_56;
  }

  v130 = v135;
  (*(v100 + 32))(v135, v99, v101);
  v131 = OBJC_IVAR____TtC10ChronoCore12TaskActivity_duetBudgetIdentity;
  v10 = v138;
  (*(v100 + 16))(v138 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_duetBudgetIdentity, v130, v101);
  (v168)(v10 + v131, 0, 1, v101);
  (*(v100 + 8))(v130, v101);
  sub_224A3311C(v98, &unk_27D6F4440, &unk_224DBA100);
  (*(v140 + 8))(v134, v141);
  v73 = &unk_283827E90;
LABEL_25:
  v74 = v144;
  v75 = v143;
  v76 = v142;
LABEL_56:
  v168 = a9;
  *(v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_budgetedDeviceIdentifiers) = v73;
  v102 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_requiredDataProtectionLevel;
  swift_beginAccess();
  v103 = OBJC_IVAR____TtC10ChronoCore12TaskActivity_requiredDataProtectionLevel;
  v104 = sub_224DAE918();
  v105 = *(v104 - 8);
  v106 = v10 + v103;
  v107 = v159;
  (*(v105 + 16))(v106, v159 + v102, v104);
  sub_224A3796C(v161, v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_containingAppIdentifier, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3796C(v160, v19, &qword_27D6F4020, &qword_224DB5618);
  v108 = *(v76 + 48);
  v109 = v145;
  if (v108(v19, 1, v145) == 1)
  {
    sub_224A4152C(v107 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration, v75, type metadata accessor for ExtensionTask.SchedulingConfiguration);
    if (v108(v19, 1, v109) != 1)
    {
      sub_224A3311C(v19, &qword_27D6F4020, &qword_224DB5618);
    }
  }

  else
  {
    sub_224A45320(v19, v75);
  }

  sub_224A45320(v75, v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_schedulingConfiguration);
  if (!v74)
  {
    v110 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
    swift_beginAccess();
    v74 = *(v107 + v110);
  }

  v111 = v152;
  v112 = v151;
  v113 = v155;
  v114 = v154;
  *(v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_schedulingOptions) = v74;
  v115 = (v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_activationHandler);
  *v115 = v114;
  v115[1] = v113;
  v116 = v146;
  v117 = v148;
  v111(v146, v10 + v112, v148);

  v170 = sub_224DA98E8();
  sub_224A3F6A4();
  sub_224DAEF18();
  v118 = sub_224A3D19C(8);
  v120 = v119;
  v122 = v121;
  v124 = v123;

  v125 = MEMORY[0x22AA5D1C0](v118, v120, v122, v124);
  v127 = v126;

  (*(v105 + 8))(v168, v104);
  sub_224A3311C(v160, &qword_27D6F4020, &qword_224DB5618);
  sub_224A3311C(v161, &unk_27D6F5060, &qword_224DB5620);
  (*(v147 + 8))(v116, v117);
  v128 = (v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_logDigest);
  *v128 = v125;
  v128[1] = v127;
  sub_224A44E4C(v149, v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_effectivePowerlogWakeReason, &qword_27D6F4030, &unk_224DB5630);
  sub_224A44E4C(v150, v10 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_effectivePowerlogWakeCost, &qword_27D6F4028, &qword_224DB5628);
  return v10;
}

uint64_t sub_224B6D57C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 37);
  if (v0[45])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 42);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_224B6D620@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_224DA9688();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  swift_getObjectType();
  v12 = *(v10 + 8);
  sub_224DAC3F8();
  if (v2)
  {

    v13 = 1;
  }

  else
  {
    sub_224DA9548();
    (*(v6 + 8))(v9, v5);
    v13 = 0;
  }

  return (*(v6 + 56))(a2, v13, 1, v5);
}

uint64_t sub_224B6D770(uint64_t a1)
{
  if (!*(v1 + 64))
  {
    return MEMORY[0x277D84FA0];
  }

  v2 = *(v1 + 56);
  MEMORY[0x28223BE20](a1);
  v7[2] = v1;
  v4 = sub_224AD80E8(sub_224B6D814, v7, v3);
  v5 = sub_224AE9040(v4);

  return v5;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_224B6D854(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_224B6D89C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10ChronoCore18SubscriptionStatusO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_224B6D92C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224B6D980(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double sub_224B6D9E4(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_224B6DA20(uint64_t a1)
{
  v37 = sub_224DA9688();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_224DAF798();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_224DA9648();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_224A3DFD8((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_224A3E204(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_224A3E204(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

id sub_224B6DD2C(void *a1, uint64_t a2)
{
  v4 = sub_224DAEDE8();
  [a1 setDomain_];

  v5 = [objc_opt_self() identifier];
  if (!v5)
  {
    sub_224DAEE18();
    v5 = sub_224DAEDE8();
  }

  [a1 setService_];

  return [a1 setDelegate_];
}

void sub_224B6DE08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v38 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4728, &unk_224DB7660);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = *(v0 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_connectionListener);
  if (v9)
  {
    v42 = &v38 - v7;
    v43 = v8;
    v10 = *(v0 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider), *(v0 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider + 24));
    v11 = v9;
    v47[0] = sub_224DAA168();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4730, &unk_224DBAF00);
    sub_224A33088(&qword_281351010, &unk_27D6F4730, &unk_224DBAF00);
    sub_224DAB488();

    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    sub_224A3317C(v0 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_taskService, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4600, &qword_224DB7568);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4608, &qword_224DB7570);
    if (swift_dynamicCast())
    {
      sub_224A36F98(v44, v47);
      v12 = v48;
      v13 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      v41 = (*(v13 + 24))(v12, v13);
      v46[0] = v41;
      *&v44[0] = *(v0 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_queue);
      v14 = *&v44[0];
      v15 = sub_224DAF358();
      (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
      v39 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4740, qword_224DB7670);
      v40 = v5;
      sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
      sub_224A33088(&qword_27D6F4748, &qword_27D6F4740, qword_224DB7670);
      sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78);
      v16 = v42;
      sub_224DAB448();
      sub_224A3311C(v4, &qword_27D6F5090, &qword_224DB5C30);

      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_224A33088(&qword_27D6F4750, &qword_27D6F4728, &unk_224DB7660);
      v17 = v40;
      sub_224DAB488();

      (v43[1].isa)(v16, v17);
      swift_beginAccess();
      sub_224DAB308();
      swift_endAccess();

      __swift_destroy_boxed_opaque_existential_1(v47);
    }

    else
    {
      v45 = 0;
      memset(v44, 0, sizeof(v44));
      sub_224A3311C(v44, &unk_27D6F4610, &qword_224DB7578);
    }

    if (qword_281351678 != -1)
    {
      swift_once();
    }

    v27 = sub_224DAB258();
    __swift_project_value_buffer(v27, qword_2813650A8);
    v28 = sub_224DAB228();
    v29 = sub_224DAF2A8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v47[0] = v31;
      *v30 = 136446210;
      v32 = [objc_opt_self() identifier];
      v33 = sub_224DAEE18();
      v35 = v34;

      v36 = sub_224A33F74(v33, v35, v47);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_224A2F000, v28, v29, "%{public}s begin listening for tools connections", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x22AA5EED0](v31, -1, -1);
      MEMORY[0x22AA5EED0](v30, -1, -1);
    }

    [v11 activate];
  }

  else
  {
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v18 = sub_224DAB258();
    __swift_project_value_buffer(v18, qword_281364E50);
    v43 = sub_224DAB228();
    v19 = sub_224DAF298();
    if (os_log_type_enabled(v43, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v47[0] = v21;
      *v20 = 136446210;
      v22 = [objc_opt_self() identifier];
      v23 = sub_224DAEE18();
      v25 = v24;

      v26 = sub_224A33F74(v23, v25, v47);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_224A2F000, v43, v19, "%{public}s unable to start tools server; listener is nil", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x22AA5EED0](v21, -1, -1);
      MEMORY[0x22AA5EED0](v20, -1, -1);
    }

    else
    {
      v37 = v43;
    }
  }
}

void sub_224B6E5D0(_BYTE *a1)
{
  if (*a1 == 1)
  {
    if (qword_281351678 != -1)
    {
      swift_once();
    }

    v1 = sub_224DAB258();
    __swift_project_value_buffer(v1, qword_2813650A8);
    oslog = sub_224DAB228();
    v2 = sub_224DAF2A8();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v11 = v4;
      *v3 = 136446210;
      v5 = [objc_opt_self() identifier];
      v6 = sub_224DAEE18();
      v8 = v7;

      v9 = sub_224A33F74(v6, v8, &v11);

      *(v3 + 4) = v9;
      _os_log_impl(&dword_224A2F000, oslog, v2, "%{public}s notified of first unlock; adjusting responses", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v4);
      MEMORY[0x22AA5EED0](v4, -1, -1);
      MEMORY[0x22AA5EED0](v3, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_224B6E77C(uint64_t *a1)
{
  v1 = 0;
  v99 = *MEMORY[0x277D85DE8];
  v88 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer__lock);
    v4 = *(v3 + 16);
    v5 = result;

    os_unfair_lock_lock(v4);
    v6 = OBJC_IVAR____TtC10ChronoCore18ToolServicesServer__lock_clients;
    swift_beginAccess();
    v85 = v5;
    v7 = *&v5[v6];
    v8 = *(v3 + 16);

    os_unfair_lock_unlock(v8);

    v83 = 0;
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x277D84FA0];
      v94 = MEMORY[0x277D84FA0];
      sub_224DAF7E8();
      v11 = sub_224DAF878();
      if (v11)
      {
        v12 = v11;
        type metadata accessor for ToolServicesClient();
        v13 = v12;
        v14 = -1;
        v1 = 1;
        do
        {
          *&v91 = v13;
          swift_dynamicCast();
          v15 = *(*&v93[0] + OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue);
          BSDispatchQueueAssert();
          v16 = *&v93[0];
          if (*(*&v93[0] + OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_taskServiceSubscriptionAssertion))
          {
            v17 = *(v10 + 16);
            if (*(v10 + 24) <= v17)
            {
              sub_224ADF914(v17 + 1);
            }

            v10 = v94;
            v18 = *(v94 + 40);
            v7 = *&v93[0];
            v19 = sub_224DAF698();
            v20 = v94 + 56;
            v21 = -1 << *(v94 + 32);
            v22 = v19 & ~v21;
            v23 = v22 >> 6;
            if (((-1 << v22) & ~*(v94 + 56 + 8 * (v22 >> 6))) != 0)
            {
              v24 = __clz(__rbit64((-1 << v22) & ~*(v94 + 56 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v25 = 0;
              v26 = (63 - v21) >> 6;
              do
              {
                if (++v23 == v26 && (v25 & 1) != 0)
                {
                  __break(1u);
LABEL_78:
                  __break(1u);
                  goto LABEL_79;
                }

                v27 = v23 == v26;
                if (v23 == v26)
                {
                  v23 = 0;
                }

                v25 |= v27;
                v28 = *(v20 + 8 * v23);
              }

              while (v28 == -1);
              v24 = __clz(__rbit64(~v28)) + (v23 << 6);
            }

            *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
            *(*(v10 + 48) + 8 * v24) = v16;
            ++*(v10 + 16);
          }

          else
          {
          }

          v13 = sub_224DAF878();
        }

        while (v13);
      }

      v29 = v10 & 0xC000000000000001;
      if ((v10 & 0xC000000000000001) == 0)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v30 = *(v7 + 32);
      v14 = ((1 << v30) + 63) >> 6;
      if ((v30 & 0x3Fu) > 0xD)
      {
        goto LABEL_82;
      }

LABEL_24:
      v87 = v14;
      v86 = &v82;
      MEMORY[0x28223BE20](v9);
      v32 = &v82 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v32, v31);
      v89 = 0;
      v33 = 0;
      v1 = v7 + 56;
      v34 = 1 << *(v7 + 32);
      v35 = -1;
      if (v34 < 64)
      {
        v35 = ~(-1 << v34);
      }

      v36 = v35 & *(v7 + 56);
      v37 = (v34 + 63) >> 6;
      while (1)
      {
        if (!v36)
        {
          v39 = v33;
          while (1)
          {
            v33 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              goto LABEL_80;
            }

            if (v33 >= v37)
            {
              goto LABEL_38;
            }

            v40 = *(v1 + 8 * v33);
            ++v39;
            if (v40)
            {
              v38 = __clz(__rbit64(v40));
              v36 = (v40 - 1) & v40;
              goto LABEL_34;
            }
          }
        }

        v38 = __clz(__rbit64(v36));
        v36 &= v36 - 1;
LABEL_34:
        v14 = v38 | (v33 << 6);
        v41 = *(*(v7 + 48) + 8 * v14);
        v42 = *&v41[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue];
        v43 = v41;
        BSDispatchQueueAssert();
        v44 = *&v43[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_taskServiceSubscriptionAssertion];

        if (v44)
        {
          *&v32[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
          v45 = __OFADD__(v89++, 1);
          if (v45)
          {
            break;
          }
        }
      }

      __break(1u);
LABEL_38:
      v10 = sub_224B05518(v32, v87, v89, v7);
      v29 = v10 & 0xC000000000000001;
      if ((v10 & 0xC000000000000001) == 0)
      {
        goto LABEL_85;
      }
    }

LABEL_39:
    if (!sub_224DAF838())
    {
      goto LABEL_86;
    }

LABEL_40:
    v84 = v29;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3C40, &qword_224DB7580);
    v46 = v88;
    v47 = sub_224DAFB88();
    v1 = 0;
    v49 = *(v46 + 64);
    v14 = v46 + 64;
    v48 = v49;
    v50 = 1 << *(v14 - 32);
    v51 = -1;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    v52 = v51 & v48;
    v53 = (v50 + 63) >> 6;
    v86 = (v47 + 64);
    v87 = v47;
    if ((v51 & v48) != 0)
    {
LABEL_43:
      v54 = __clz(__rbit64(v52));
      v52 &= v52 - 1;
      goto LABEL_49;
    }

    while (1)
    {
      v55 = v1;
      do
      {
        v1 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_78;
        }

        if (v1 >= v53)
        {
          if (v84)
          {
            v7 = sub_224DAF7E8();
            type metadata accessor for ToolServicesClient();
            sub_224B7A940(&qword_27D6F4758, type metadata accessor for ToolServicesClient);
            sub_224DAF1F8();
            v10 = v94;
            v1 = v95;
            v67 = v96;
            v68 = v97;
            v69 = v98;
          }

          else
          {
            v68 = 0;
            v70 = -1 << *(v10 + 32);
            v1 = v10 + 56;
            v67 = ~v70;
            v71 = -v70;
            if (v71 < 64)
            {
              v72 = ~(-1 << v71);
            }

            else
            {
              v72 = -1;
            }

            v69 = v72 & *(v10 + 56);
          }

          v89 = v67;
          v73 = (v67 + 64) >> 6;
          while (1)
          {
            if (v10 < 0)
            {
              v77 = sub_224DAF878();
              if (!v77 || (*&v91 = v77, type metadata accessor for ToolServicesClient(), swift_dynamicCast(), v7 = *&v93[0], v76 = v68, v14 = v69, !*&v93[0]))
              {
LABEL_77:
                sub_224A3B7E4();
                goto LABEL_86;
              }
            }

            else
            {
              v74 = v68;
              v75 = v69;
              v76 = v68;
              if (!v69)
              {
                while (1)
                {
                  v76 = v74 + 1;
                  if (__OFADD__(v74, 1))
                  {
                    break;
                  }

                  if (v76 >= v73)
                  {
                    goto LABEL_77;
                  }

                  v75 = *(v1 + 8 * v76);
                  ++v74;
                  if (v75)
                  {
                    goto LABEL_66;
                  }
                }

LABEL_79:
                __break(1u);
LABEL_80:
                __break(1u);
LABEL_81:
                __break(1u);
LABEL_82:

                if (swift_stdlib_isStackAllocationSafe())
                {

                  goto LABEL_24;
                }

                v80 = swift_slowAlloc();
                v10 = sub_224B76530(v80, v14, v7, sub_224B6F0C0, 0);
                v83 = v1;

                MEMORY[0x22AA5EED0](v80, -1, -1);
                v29 = v10 & 0xC000000000000001;
                if ((v10 & 0xC000000000000001) == 0)
                {
LABEL_85:
                  if (!*(v10 + 16))
                  {
LABEL_86:

                    goto LABEL_87;
                  }

                  goto LABEL_40;
                }

                goto LABEL_39;
              }

LABEL_66:
              v14 = (v75 - 1) & v75;
              v7 = *(*(v10 + 48) + ((v76 << 9) | (8 * __clz(__rbit64(v75)))));
              if (!v7)
              {
                goto LABEL_77;
              }
            }

            if ([*(v7 + OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_connection) remoteTarget])
            {
              sub_224DAF758();
              swift_unknownObjectRelease();
            }

            else
            {
              v91 = 0u;
              v92 = 0u;
            }

            v93[0] = v91;
            v93[1] = v92;
            if (*(&v92 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4768, &qword_224DB7688);
              if (swift_dynamicCast())
              {
                v78 = v90;
                sub_224A3B79C(0, &qword_281350850, 0x277CCABB0);
                v79 = sub_224DAECC8();
                [v78 taskServiceStateDidChange_];
                swift_unknownObjectRelease();
              }
            }

            else
            {

              sub_224A3311C(v93, &qword_27D6F4760, &unk_224DB3680);
            }

            v68 = v76;
            v69 = v14;
          }
        }

        v56 = *(v14 + 8 * v1);
        ++v55;
      }

      while (!v56);
      v54 = __clz(__rbit64(v56));
      v52 = (v56 - 1) & v56;
LABEL_49:
      v57 = v54 | (v1 << 6);
      v58 = *(v88 + 56);
      v59 = (*(v88 + 48) + 16 * v57);
      v7 = v59[1];
      v89 = *v59;
      v60 = *(v58 + 8 * v57);
      v61 = objc_allocWithZone(MEMORY[0x277CCABB0]);

      v62 = [v61 initWithInteger_];
      *(v86 + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v57;
      v63 = v87;
      v64 = (*(v87 + 48) + 16 * v57);
      *v64 = v89;
      v64[1] = v7;
      *(*(v63 + 56) + 8 * v57) = v62;
      v65 = *(v63 + 16);
      v45 = __OFADD__(v65, 1);
      v66 = v65 + 1;
      if (v45)
      {
        goto LABEL_81;
      }

      *(v63 + 16) = v66;
      if (v52)
      {
        goto LABEL_43;
      }
    }
  }

LABEL_87:
  v81 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_224B6F0C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue);
  BSDispatchQueueAssert();
  return *(v1 + OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_taskServiceSubscriptionAssertion) != 0;
}

void sub_224B6F35C(void *a1, char *a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = [v6 serviceQuality];
  [a1 setServiceQuality_];

  [a1 setTargetQueue_];
  v8 = [v6 interface];
  [a1 setInterface_];

  [a1 setInterfaceTarget_];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = v9;
  v25 = sub_224B7ACE4;
  v26 = v10;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_224A3837C;
  v24 = &block_descriptor_173;
  v11 = _Block_copy(&v21);
  v12 = a2;

  [a1 setActivationHandler_];
  _Block_release(v11);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  v25 = sub_224B7ACEC;
  v26 = v15;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_224A3837C;
  v24 = &block_descriptor_183;
  v16 = _Block_copy(&v21);

  [a1 setInterruptionHandler_];
  _Block_release(v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v18;
  v25 = sub_224B7AD34;
  v26 = v19;
  v21 = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_224A3837C;
  v24 = &block_descriptor_191;
  v20 = _Block_copy(&v21);

  [a1 setInvalidationHandler_];
  _Block_release(v20);
}

void sub_224B6F6D4(void *a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_queue);
  BSDispatchQueueAssert();
  if (qword_281351678 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_2813650A8);
  v5 = a1;
  v6 = sub_224DAB228();
  v7 = sub_224DAF2A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    v10 = [v5 remoteProcess];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 description];

      v13 = sub_224DAEE18();
      v15 = v14;
    }

    else
    {
      v15 = 0x8000000224DC7B00;
      v13 = 0xD00000000000001ALL;
    }

    v16 = sub_224A33F74(v13, v15, &v20);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_224A2F000, v6, v7, "Tool service connection from %{public}s activated", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x22AA5EED0](v9, -1, -1);
    MEMORY[0x22AA5EED0](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = *(Strong + OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue);
    v19 = Strong;
    BSDispatchQueueAssert();
  }
}

void sub_224B6F8E8(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_queue);
    BSDispatchQueueAssert();
    if (qword_281351678 != -1)
    {
      swift_once();
    }

    v5 = sub_224DAB258();
    __swift_project_value_buffer(v5, qword_2813650A8);
    v6 = a1;
    v7 = sub_224DAB228();
    v8 = sub_224DAF2A8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v27 = v10;
      *v9 = 136446210;
      v11 = [v6 remoteProcess];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 description];

        v14 = sub_224DAEE18();
        v16 = v15;
      }

      else
      {
        v16 = 0x8000000224DC7B00;
        v14 = 0xD00000000000001ALL;
      }

      v17 = sub_224A33F74(v14, v16, &v27);

      *(v9 + 4) = v17;
      _os_log_impl(&dword_224A2F000, v7, v8, "Tool service connection from %{public}s interrupted", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x22AA5EED0](v10, -1, -1);
      MEMORY[0x22AA5EED0](v9, -1, -1);
    }

    [v6 invalidate];
    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      v20 = *(v18 + OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue);
      BSDispatchQueueAssert();
      v21 = OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_taskServiceSubscriptionAssertion;
      v22 = *&v19[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_taskServiceSubscriptionAssertion];
      if (v22)
      {
        [v22 invalidate];
        v23 = *&v19[v21];
      }

      *&v19[v21] = 0;
      swift_unknownObjectRelease();
      v24 = *&v3[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer__lock];
      v25 = *(v24 + 16);

      os_unfair_lock_lock(v25);
      swift_beginAccess();
      v26 = sub_224B02420(v19);
      swift_endAccess();

      os_unfair_lock_unlock(*(v24 + 16));
    }
  }
}

void sub_224B6FBC8(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_queue);
    BSDispatchQueueAssert();
    if (qword_281351678 != -1)
    {
      swift_once();
    }

    v5 = sub_224DAB258();
    __swift_project_value_buffer(v5, qword_2813650A8);
    v6 = a1;
    v7 = sub_224DAB228();
    v8 = sub_224DAF2A8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v27 = v10;
      *v9 = 136446210;
      v11 = [v6 remoteProcess];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 description];

        v14 = sub_224DAEE18();
        v16 = v15;
      }

      else
      {
        v16 = 0x8000000224DC7B00;
        v14 = 0xD00000000000001ALL;
      }

      v17 = sub_224A33F74(v14, v16, &v27);

      *(v9 + 4) = v17;
      _os_log_impl(&dword_224A2F000, v7, v8, "Tool service connection from %{public}s invalidated", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x22AA5EED0](v10, -1, -1);
      MEMORY[0x22AA5EED0](v9, -1, -1);
    }

    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      v20 = *(v18 + OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue);
      BSDispatchQueueAssert();
      v21 = OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_taskServiceSubscriptionAssertion;
      v22 = *&v19[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_taskServiceSubscriptionAssertion];
      if (v22)
      {
        [v22 invalidate];
        v23 = *&v19[v21];
      }

      *&v19[v21] = 0;
      swift_unknownObjectRelease();
      v24 = *&v3[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer__lock];
      v25 = *(v24 + 16);

      os_unfair_lock_lock(v25);
      swift_beginAccess();
      v26 = sub_224B02420(v19);
      swift_endAccess();

      os_unfair_lock_unlock(*(v24 + 16));
    }
  }
}

void sub_224B6FF30(uint64_t a1, id a2, unint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v40 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v39 = *(v11 - 8);
  v12 = *(v39 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  v15 = *(a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider), *(a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider + 24));
  if (sub_224DAA158())
  {
    if (qword_281351678 != -1)
    {
      swift_once();
    }

    v16 = sub_224DAB258();
    __swift_project_value_buffer(v16, qword_2813650A8);

    v17 = sub_224DAB228();
    v18 = sub_224DAF2A8();

    if (os_log_type_enabled(v17, v18))
    {
      v36 = v11;
      v37 = a4;
      v38 = a5;
      v19 = 0x6E776F6E6B6E75;
      v20 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v43[0] = v35;
      *v20 = 136446466;
      *(v20 + 4) = sub_224A33F74(v40, a3, v43);
      *(v20 + 12) = 2082;
      v21 = [objc_opt_self() currentContext];
      if (v21 && (v22 = v21, v23 = [v21 remoteProcess], v22, v23))
      {
        v24 = [v23 description];

        v19 = sub_224DAEE18();
        v26 = v25;
      }

      else
      {
        v26 = 0xE700000000000000;
      }

      v28 = sub_224A33F74(v19, v26, v43);

      *(v20 + 14) = v28;
      _os_log_impl(&dword_224A2F000, v17, v18, "Requesting to refresh descriptors for %{public}s from %{public}s.", v20, 0x16u);
      v29 = v35;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v29, -1, -1);
      MEMORY[0x22AA5EED0](v20, -1, -1);

      a4 = v37;
      a5 = v38;
      v11 = v36;
    }

    else
    {
    }

    sub_224DA9FF8();
    sub_224DAA278();
    v30 = *(a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_extensionService + 32);
    __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_extensionService), *(a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_extensionService + 24));
    sub_224DAC6C8();
    if (v42)
    {
      sub_224A36F98(&v41, v43);
      v31 = *(a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_descriptorService + 32);
      __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_descriptorService), *(a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_descriptorService + 24));
      sub_224A3317C(v43, &v41);
      v32 = v11;
      v33 = swift_allocObject();
      sub_224A36F98(&v41, v33 + 16);
      *(v33 + 56) = a4;
      *(v33 + 64) = a5;

      sub_224DACA88();

      __swift_destroy_boxed_opaque_existential_1(v43);
      (*(v39 + 8))(v14, v32);
    }

    else
    {
      sub_224A3311C(&v41, &unk_27D6F4700, &unk_224DB3A10);
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v34 = sub_224CBC42C(0, 0, 0);
      a4(0, v34);

      (*(v39 + 8))(v14, v11);
    }
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v40 = sub_224CBC42C(8u, 0, 0);
    a4(0, v40);
    v27 = v40;
  }
}

void sub_224B704A4(void *a1, uint64_t a2, void *a3, void (*a4)(void))
{
  if (a1)
  {
    v5 = a1;
    v6 = sub_224A5B354(a3);
    v7 = sub_224DAE9E8();
    sub_224AE8D28(v7);

    sub_224A3B79C(0, &qword_2813508D0, 0x277CFA318);
    sub_224A3B758(&unk_2813508C0, &qword_2813508D0, 0x277CFA318);
    v8 = sub_224DAF1A8();

    [v6 setLiveActivityDescriptors_];

    sub_224DAE9C8();
    sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
    v9 = sub_224DAEFF8();

    [v6 setOrderedWidgetDescriptors_];

    sub_224DAE9D8();
    sub_224A3B79C(0, &qword_2813509B8, 0x277CFA210);
    v10 = sub_224DAEFF8();

    [v6 setOrderedControlDescriptors_];

    [v6 copy];
    sub_224DAF758();
    swift_unknownObjectRelease();
    sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_224DB2780;
    *(inited + 32) = v19;
    v12 = v19;
    sub_224D5767C(inited);
    swift_setDeallocating();
    v13 = *(inited + 16);
    swift_arrayDestroy();
    v14 = objc_allocWithZone(MEMORY[0x277CFA3C8]);
    sub_224A3B758(&qword_281350A30, &qword_281350A40, 0x277CFA3A8);
    v15 = sub_224DAF1A8();

    v16 = [v14 initWithExtensions_];

    v17 = v16;
    (a4)(v16, 0);
  }

  else
  {
    a4();
  }
}

uint64_t sub_224B707C4(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_281352038 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v5 = [a1 unsignedIntegerValue];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  sub_224C3F1E8(v5, sub_224B7AC78, v6);
}

uint64_t sub_224B708A4(void (*a1)(void))
{
  v31 = a1;
  v34 = sub_224DAB7B8();
  v37 = *(v34 - 8);
  v1 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_224DAB848();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAB798();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_224DAB878();
  v38 = *(v11 - 8);
  v12 = *(v38 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v18 = sub_224DAB7C8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31(0);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  (*(v19 + 104))(v22, *MEMORY[0x277D851B8], v18);
  v31 = sub_224DAF428();
  (*(v19 + 8))(v22, v18);
  sub_224DAB858();
  *v10 = 500;
  (*(v7 + 104))(v10, *MEMORY[0x277D85178], v6);
  sub_224DAB868();
  (*(v7 + 8))(v10, v6);
  v23 = *(v38 + 8);
  v38 += 8;
  v23(v15, v11);
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_137;
  v24 = _Block_copy(aBlock);
  v25 = v32;
  sub_224DAB7E8();
  v39 = MEMORY[0x277D84F90];
  sub_224B7A940(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  v27 = v33;
  v26 = v34;
  sub_224DAF788();
  v28 = v31;
  MEMORY[0x22AA5D6A0](v17, v25, v27, v24);
  _Block_release(v24);

  (*(v37 + 8))(v27, v26);
  (*(v35 + 8))(v25, v36);
  return (v23)(v17, v11);
}

uint64_t sub_224B70DF4()
{
  v0 = sub_224DAC378();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281352038 != -1)
  {
    swift_once();
  }

  v5 = qword_2813651B0;
  BSDispatchQueueAssertMain();
  sub_224B44674(v5 + 696, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4718, &unk_224DB7650);
  type metadata accessor for LocationService(0);
  swift_dynamicCast();
  sub_224DAC2E8();
  sub_224D251F8(v4);

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_224B70F4C(void (*a1)(uint64_t, void))
{
  v2 = [objc_opt_self() sharedManager];
  v3 = [v2 allCachedSnapshotURLs];

  sub_224DA9688();
  sub_224B7A940(&qword_281351A80, MEMORY[0x277CC9260]);
  v4 = sub_224DAF1B8();

  v5 = sub_224B6DA20(v4);

  v6 = sub_224B421FC(v5);

  a1(v6, 0);
}

void sub_224B71070(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_stateCaptureService + 32);
  v32 = (a2 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_stateCaptureService);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_stateCaptureService), *(a2 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_stateCaptureService + 24));
  v3 = sub_224DAA2A8();
  v4 = 0;
  v5 = v3 + 56;
  v33 = v3;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v3 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = MEMORY[0x277D84F90];
  while (v8)
  {
LABEL_11:
    v13 = (*(v33 + 48) + ((v4 << 10) | (16 * __clz(__rbit64(v8)))));
    v15 = *v13;
    v14 = v13[1];
    v16 = v32[4];
    __swift_project_boxed_opaque_existential_1(v32, v32[3]);

    v17 = sub_224DAA2E8();
    if (v17)
    {
      v18 = v17;

      v19 = sub_224DAA098();
      v19(&v34);

      if (swift_dynamicCast())
      {
        v34 = sub_224DAA0A8();
        v35 = v20;
        MEMORY[0x22AA5D210](10, 0xE100000000000000);
        MEMORY[0x22AA5D210]();
      }

      else
      {
        v34 = sub_224DAA0A8();
        v35 = v26;
        MEMORY[0x22AA5D210](0x3E6C696E3C0ALL, 0xE600000000000000);
      }

      v21 = v34;
      v22 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_224A865C4(0, *(v10 + 2) + 1, 1, v10);
      }

      v24 = *(v10 + 2);
      v27 = *(v10 + 3);
      v25 = v24 + 1;
      if (v24 >= v27 >> 1)
      {
        v10 = sub_224A865C4((v27 > 1), v24 + 1, 1, v10);
      }
    }

    else
    {
      v34 = v15;
      v35 = v14;
      MEMORY[0x22AA5D210](0x3E6C696E3C0ALL, 0xE600000000000000);
      v21 = v34;
      v22 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_224A865C4(0, *(v10 + 2) + 1, 1, v10);
      }

      v24 = *(v10 + 2);
      v23 = *(v10 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v10 = sub_224A865C4((v23 > 1), v24 + 1, 1, v10);
      }
    }

    v8 &= v8 - 1;
    *(v10 + 2) = v25;
    v11 = &v10[16 * v24];
    *(v11 + 4) = v21;
    *(v11 + 5) = v22;
  }

  while (1)
  {
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      v34 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
      sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0);
      v28 = sub_224DAEDA8();
      v30 = v29;

      *a1 = v28;
      a1[1] = v30;
      return;
    }

    v8 = *(v5 + 8 * v12);
    ++v4;
    if (v8)
    {
      v4 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

_OWORD *sub_224B713D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (a2 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_stateCaptureService);
  v8 = *(a2 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_stateCaptureService + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_stateCaptureService), *(a2 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_stateCaptureService + 24));
  v9 = sub_224DAA2B8();
  v11 = MEMORY[0x277D84F70];
  if (!v9)
  {
    goto LABEL_17;
  }

  v12 = v9;
  v13 = v10;
  v14 = sub_224DAA098();
  v14(&v41);

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_17:
    v28 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v29 = sub_224DAA2E8();
    if (v29)
    {
      v30 = a1;
      v31 = v29;
      v32 = sub_224DAA098();
      v32(&v41);

      if (swift_dynamicCast())
      {
        result = 0;
        *v30 = v39;
        v30[1] = v40;
        return result;
      }

      a1 = v30;
    }

    *a1 = 0x3E6C696E3CLL;
    a1[1] = 0xE500000000000000;
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_224DAF938();

    v41 = 0xD000000000000014;
    v42 = 0x8000000224DC7A10;
    MEMORY[0x22AA5D210](a3, a4);
    return sub_224CBC42C(7u, v41, v42);
  }

  v37 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
  result = swift_allocObject();
  result[1] = xmmword_224DB3100;
  *(result + 4) = v39;
  *(result + 5) = v40;
  v38 = result;
  if (v13 >> 62)
  {
    result = sub_224DAF838();
    v16 = result;
    v36 = v12;
    if (result)
    {
      goto LABEL_5;
    }

LABEL_23:

    v41 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
    sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0);
    v33 = sub_224DAEDA8();
    v35 = v34;

    result = 0;
    *v37 = v33;
    v37[1] = v35;
    return result;
  }

  v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v36 = v12;
  if (!v16)
  {
    goto LABEL_23;
  }

LABEL_5:
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = v13 & 0xC000000000000001;
    do
    {
      if (v18)
      {
        v19 = MEMORY[0x22AA5DCC0](v17, v13);
      }

      else
      {
        v19 = *(v13 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = sub_224DAA098();
      v21(&v41);

      if (swift_dynamicCast())
      {
        v22 = v16;
        v23 = v13;
        v24 = v11;
        v26 = *(v38 + 2);
        v25 = *(v38 + 3);
        if (v26 >= v25 >> 1)
        {
          v38 = sub_224A865C4((v25 > 1), v26 + 1, 1, v38);
        }

        *(v38 + 2) = v26 + 1;
        v27 = &v38[16 * v26];
        *(v27 + 4) = v39;
        *(v27 + 5) = v40;
        v11 = v24;
        v13 = v23;
        v16 = v22;
      }

      else
      {
      }

      ++v17;
    }

    while (v16 != v17);
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_224B717CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_224B7186C;

  return sub_224B719F4(a5);
}

uint64_t sub_224B7186C(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_224B7196C, 0, 0);
}

uint64_t sub_224B7196C()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v1;
  v3(v1, 0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_224B719F4(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v2[23] = v3;
  v4 = *(v3 - 8);
  v2[24] = v4;
  v5 = *(v4 + 64) + 15;
  v2[25] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D0, &unk_224DBD6D0) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v7 = sub_224DADF68();
  v2[27] = v7;
  v8 = *(v7 - 8);
  v2[28] = v8;
  v9 = *(v8 + 64) + 15;
  v2[29] = swift_task_alloc();
  v10 = sub_224DADA98();
  v2[30] = v10;
  v11 = *(v10 - 8);
  v2[31] = v11;
  v12 = *(v11 + 64) + 15;
  v2[32] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D8, &unk_224DB7630);
  v2[33] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v2[34] = swift_task_alloc();
  v15 = sub_224DA9688();
  v2[35] = v15;
  v16 = *(v15 - 8);
  v2[36] = v16;
  v17 = *(v16 + 64) + 15;
  v2[37] = swift_task_alloc();
  v18 = sub_224DA9878();
  v2[38] = v18;
  v19 = *(v18 - 8);
  v2[39] = v19;
  v20 = *(v19 + 64) + 15;
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224B71CA4, 0, 0);
}

void sub_224B71CA4()
{
  v1 = v0;
  v2 = v0[40];
  v3 = v0[37];
  v143 = v0[39];
  v144 = v0[38];
  v4 = v0[36];
  v145 = v1[35];
  v148 = v1[34];
  v5 = v1[23];
  v150 = v1[33];
  v152 = v1[22];
  v6 = v1[21];
  v7 = [objc_allocWithZone(MEMORY[0x277CFA2C8]) init];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v9 = sub_224DAE338();
  v10 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  sub_224DA9FE8();
  swift_endAccess();

  v11 = sub_224DAEDE8();

  [v7 setBundleIdentifier_];

  v12 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_224DAE328();
  v13 = sub_224DAEDE8();

  [v7 setContainerBundleIdentifier_];

  v14 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_224DAE348();
  v15 = sub_224DAEDE8();

  [v7 setEffectiveContainerBundleIdentifier_];

  v16 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_224DAE398();
  v17 = sub_224DAEDE8();

  [v7 setVersion_];

  v18 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_224DAE298();
  v19 = sub_224DA9778();
  (*(v143 + 8))(v2, v144);
  [v7 setLastModifiedDate_];

  v20 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_224DAE3B8();
  v21 = sub_224DA95F8();
  v22 = *(v4 + 8);
  v22(v3, v145);
  [v7 setBundleURL_];

  v23 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_224DAE2C8();
  v24 = sub_224DA95F8();
  v22(v3, v145);
  [v7 setContainerURL_];

  v25 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_224DAE2F8();
  v26 = sub_224DA95F8();
  v27 = v3;
  v28 = v7;
  v22(v27, v145);
  [v7 setSystemDataContainerURL_];

  v29 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_224DAE308();
  sub_224DAF708();
  sub_224A3311C(v148, &qword_27D6F46D8, &unk_224DB7630);
  v30 = sub_224DAEDE8();

  [v7 setDataProtectionLevel_];

  v31 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  [v28 setIsDevelopmentExtension_];
  v32 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  [v28 setWantsLocation_];
  v33 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_224DAE2E8();
  v34 = sub_224DAEFF8();

  [v28 setAvailableLocalizations_];

  v35 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  [v28 setAllowsMixedLocalizations_];
  v36 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_224DAE248();
  v37 = sub_224DAEDE8();

  [v28 setSdkVersion_];

  v38 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v39 = sub_224DAE268();
  [v28 setEntitlements_];

  v40 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  [v28 setDisablesImplicitDiscovery_];
  v41 = v6[4];
  v146 = v6;
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v42 = sub_224DAE338();
  v43 = (v152 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_descriptorService);
  v44 = *(v152 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_descriptorService + 32);
  __swift_project_boxed_opaque_existential_1((v152 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_descriptorService), *(v152 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_descriptorService + 24));
  v45 = *(v44 + 24);
  if (!sub_224DADA38())
  {
    v51 = v1;
    goto LABEL_6;
  }

  v47 = v1[31];
  v46 = v1[32];
  v48 = v1[30];
  sub_224DACA18();
  sub_224DACF08();

  (*(v47 + 8))(v46, v48);
  v49 = v1[18];
  v50 = sub_224DACF18();

  v51 = v1;
  if (v50 >> 62)
  {
    goto LABEL_33;
  }

  sub_224DAFD98();
  sub_224A3B79C(0, &unk_27D6F46E0, 0x277CFA1D0);
  v52 = v50;
  while (1)
  {

    sub_224B42A18(v52);
LABEL_6:
    v53 = v43[4];
    __swift_project_boxed_opaque_existential_1(v43, v43[3]);
    v54 = *(v53 + 24);
    if (sub_224DADA48())
    {
      v56 = v51[28];
      v55 = v51[29];
      v57 = v51[27];
      sub_224DACA18();
      sub_224DACF08();

      (*(v56 + 8))(v55, v57);
      v58 = v51[19];
      v59 = sub_224DACF18();

      if (v59 >> 62)
      {
        sub_224A3B79C(0, &unk_27D6F46E0, 0x277CFA1D0);

        v60 = sub_224DAFB68();
      }

      else
      {

        sub_224DAFD98();
        sub_224A3B79C(0, &unk_27D6F46E0, 0x277CFA1D0);
        v60 = v59;
      }

      sub_224B42A18(v60);
    }

    v61 = v51[22];
    sub_224A3B79C(0, &unk_27D6F46E0, 0x277CFA1D0);
    v62 = sub_224DAEFF8();
    [v28 setDescriptors_];

    v63 = *(v61 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_widgetHostService + 24);
    v64 = *(v61 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_widgetHostService + 32);
    __swift_project_boxed_opaque_existential_1((v61 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_widgetHostService), v63);
    (*(v64 + 32))(768, v63, v64);
    v149 = v28;
    v151 = v51;
    v153 = v42;
    if (v51[7])
    {
      v66 = v51[25];
      v65 = v51[26];
      v67 = v51[23];
      v68 = v51[24];
      v69 = *MEMORY[0x277CFA138];
      swift_beginAccess();
      (*(v68 + 16))(v66, v42 + v69, v67);
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
      (*(*(v70 - 8) + 56))(v65, 1, 1, v70);
      v71 = type metadata accessor for HostDescriptorPredicate();
      *(v65 + v71[5]) = 3;
      *(v65 + v71[6]) = 3;
      v72 = v71[7];
      v73 = *(v68 + 56);
      v73(v65 + v72, 1, 1, v67);
      v74 = v71[8];
      v75 = sub_224DABE18();
      (*(*(v75 - 8) + 56))(v65 + v74, 1, 1, v75);
      v76 = v71[9];
      v77 = sub_224DAC268();
      (*(*(v77 - 8) + 56))(v65 + v76, 1, 1, v77);
      v78 = v65 + v71[10];
      *v78 = 0;
      *(v78 + 8) = 1;
      sub_224A3311C(v65 + v72, &unk_27D6F6140, qword_224DBB6B0);
      (*(v68 + 32))(v65 + v72, v66, v67);
      v73(v65 + v72, 0, 1, v67);
      v51 = v151;
      (*(*(v71 - 1) + 56))(v65, 0, 1, v71);
      v79 = sub_224A6BAF8(v65);
      sub_224A3311C(v65, &qword_27D6F46D0, &unk_224DBD6D0);
      sub_224A699F0((v151 + 2));
      if (v79)
      {
        sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
        v80 = sub_224DAEFF8();
      }

      else
      {
        v80 = 0;
      }

      v28 = v149;
    }

    else
    {
      sub_224A3311C((v51 + 2), &qword_27D6F50E0, &qword_224DB41A0);
      v80 = 0;
    }

    v81 = v51[22];
    [v28 setWidgetConfigurations_];

    v82 = *(v81 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_controlHostService + 24);
    v83 = *(v81 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_controlHostService + 32);
    __swift_project_boxed_opaque_existential_1((v81 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_controlHostService), v82);
    v84 = (*(v83 + 24))(768, v82, v83);
    if (!v84)
    {
      v93 = 0;
      goto LABEL_37;
    }

    v85 = sub_224A7B208(v84);

    v154 = MEMORY[0x277D84F90];
    if (v85 >> 62)
    {
      break;
    }

    v42 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v42)
    {
      goto LABEL_36;
    }

LABEL_19:
    v143 = 0;
    v86 = 0;
    v28 = (v85 & 0xC000000000000001);
    v43 = (v85 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v28)
      {
        v87 = MEMORY[0x22AA5DCC0](v86, v85);
      }

      else
      {
        if (v86 >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v87 = *(v85 + 8 * v86 + 32);
      }

      v88 = v87;
      v89 = v86 + 1;
      if (__OFADD__(v86, 1))
      {
        break;
      }

      sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
      v51 = [v88 controlIdentity];
      v90 = [v51 extensionIdentity];

      v91 = sub_224DAF6A8();
      if (v91)
      {
        sub_224DAF9B8();
        v92 = *(v154 + 16);
        sub_224DAF9F8();
        sub_224DAFA08();
        sub_224DAF9C8();
      }

      else
      {
      }

      ++v86;
      if (v89 == v42)
      {
        v28 = v149;
        v51 = v151;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    sub_224A3B79C(0, &unk_27D6F46E0, 0x277CFA1D0);

    v52 = sub_224DAFB68();
  }

  v42 = sub_224DAF838();
  if (v42)
  {
    goto LABEL_19;
  }

LABEL_36:

  sub_224DAF5D8();
  v93 = sub_224DAEFF8();

LABEL_37:
  v94 = v51[22];
  [v28 setControlConfigurations_];

  if (!*(v94 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_liveControlCacheManager))
  {
    __break(1u);
    goto LABEL_49;
  }

  v95 = v51[21];

  sub_224DACED8();
  v96 = v51[35];

  v97 = sub_224DAEFF8();

  v98 = v51[22];
  [v28 setLiveControlURLs_];

  if (!*(v98 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_livePlaceholderControlCacheManager))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v99 = v51[21];
  v100 = *(v98 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_livePlaceholderControlCacheManager);

  sub_224DACED8();
  v101 = v51[35];

  v102 = sub_224DAEFF8();

  v103 = v51[22];
  [v28 setLivePlaceholderControlURLs_];

  if (!*(v103 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_previewControlCacheManager))
  {
LABEL_50:
    __break(1u);
    return;
  }

  v104 = v51[21];

  sub_224DACED8();
  v105 = v51[35];

  v106 = sub_224DAEFF8();

  v108 = v51[21];
  v107 = v51[22];
  [v28 setPreviewControlURLs_];

  v109 = *(v107 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_snapshotCacheManager);
  sub_224DAC9A8();
  v110 = v51[35];
  v111 = sub_224DAEFF8();

  v113 = v51[21];
  v112 = v51[22];
  [v28 setSnapshotURLs_];

  v114 = *(v112 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_timelineCacheManager);
  sub_224DAC9A8();
  v115 = v51[35];
  v116 = sub_224DAEFF8();

  v118 = v51[21];
  v117 = v51[22];
  [v28 setTimelineURLs_];

  v119 = *(v117 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_placeholderCacheManager);
  sub_224DAC9A8();
  v120 = v51[35];
  v121 = sub_224DAEFF8();

  v122 = v51[21];
  [v28 setPlaceholderURLs_];

  v123 = v146[4];
  __swift_project_boxed_opaque_existential_1(v122, v146[3]);
  v124 = sub_224DAE378();
  v125 = *(v124 + 16);
  if (v125)
  {
    v155 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v125, 0);
    v126 = 0;
    v127 = *(v155 + 16);
    v128 = 16 * v127;
    do
    {
      v130 = *(v124 + v126 + 32);
      v129 = *(v124 + v126 + 40);
      v131 = *(v155 + 24);
      v132 = v127 + 1;

      if (v127 >= v131 >> 1)
      {
        sub_224A3DFD8((v131 > 1), v132, 1);
      }

      *(v155 + 16) = v132;
      v133 = v155 + v128 + v126;
      *(v133 + 32) = v130;
      *(v133 + 40) = v129;
      v126 += 16;
      ++v127;
      --v125;
    }

    while (v125);
  }

  v134 = v151[40];
  v135 = v151[37];
  v136 = v151[34];
  v137 = v151[32];
  v138 = v151[29];
  v139 = v151[26];
  v147 = v151[25];
  v140 = sub_224DAEFF8();

  [v149 setNominatedContainerBundleIdentifiers_];

  [v149 copy];
  sub_224DAF758();
  swift_unknownObjectRelease();

  sub_224A3B79C(0, &unk_27D6F46F0, 0x277CFA3B0);
  swift_dynamicCast();
  v141 = v151[20];

  v142 = v151[1];

  v142(v141);
}

uint64_t sub_224B72F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return MEMORY[0x2822009F8](sub_224B72F50, 0, 0);
}

uint64_t sub_224B72F50()
{
  v0[7] = MEMORY[0x277D84F90];
  v1 = (v0[8] + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_extensionService);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = sub_224DAC678();
  v0[11] = v3;
  v4 = *(v3 + 16);
  v0[12] = v4;
  if (v4)
  {
    v0[13] = 0;
    sub_224A3317C(v3 + 32, (v0 + 2));
    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = sub_224B730BC;
    v6 = v0[8];

    return sub_224B719F4((v0 + 2));
  }

  else
  {

    v9 = v0[9];
    v8 = v0[10];
    v10 = sub_224B422FC(MEMORY[0x277D84F90]);

    v9(v10, 0);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_224B730BC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v5 = *v1;
  *(v2 + 120) = a1;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));

  return MEMORY[0x2822009F8](sub_224B731C4, 0, 0);
}

uint64_t sub_224B731C4()
{
  MEMORY[0x22AA5D350]();
  if (*((v0[7] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[7] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v14 = *((v0[7] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_224DAF038();
  }

  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13] + 1;
  sub_224DAF078();
  if (v3 == v2)
  {
    v4 = v0[11];
    v5 = v0[7];

    v7 = v0[9];
    v6 = v0[10];
    v8 = sub_224B422FC(v5);

    v7(v8, 0);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[13];
    v0[13] = v11 + 1;
    sub_224A3317C(v0[11] + 40 * v11 + 72, (v0 + 2));
    v12 = swift_task_alloc();
    v0[14] = v12;
    *v12 = v0;
    v12[1] = sub_224B730BC;
    v13 = v0[8];

    return sub_224B719F4((v0 + 2));
  }
}

uint64_t sub_224B73358(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v45 = a7;
  v46 = a1;
  v48 = a6;
  v11 = sub_224DACB98();
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v42 = *(v15 - 8);
  v43 = v15;
  v16 = *(v42 + 64);
  MEMORY[0x28223BE20](v15);
  v44 = &v39 - v17;
  if (qword_281351678 != -1)
  {
    swift_once();
  }

  v18 = sub_224DAB258();
  __swift_project_value_buffer(v18, qword_2813650A8);

  v19 = sub_224DAB228();
  v20 = sub_224DAF2A8();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v41 = v11;
    v22 = v21;
    v39 = swift_slowAlloc();
    v49[0] = v39;
    *v22 = 136446722;
    v40 = a5;
    if (a2)
    {
      v23 = v46;
    }

    else
    {
      v23 = 7104878;
    }

    if (a2)
    {
      v24 = a2;
    }

    else
    {
      v24 = 0xE300000000000000;
    }

    v25 = sub_224A33F74(v23, v24, v49);
    v26 = v48;

    *(v22 + 4) = v25;
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_224A33F74(a3, a4, v49);
    *(v22 + 22) = 2082;
    a5 = v40;
    *(v22 + 24) = sub_224A33F74(v40, v26, v49);
    _os_log_impl(&dword_224A2F000, v19, v20, "Reload controls of kind: %{public}s containedIn: %{public}s, reason: %{public}s", v22, 0x20u);
    v27 = v39;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v27, -1, -1);
    v28 = v22;
    v11 = v41;
    MEMORY[0x22AA5EED0](v28, -1, -1);
  }

  v29 = v44;
  sub_224DA9FF8();
  v30 = swift_allocObject();
  v31 = [objc_opt_self() currentContext];
  if (v31)
  {
    v32 = a5;
    v33 = v31;
    v34 = [v31 remoteProcess];

    a5 = v32;
  }

  else
  {
    v34 = 0;
  }

  v30[2] = v34;
  v30[3] = a5;
  v30[4] = v48;
  *v14 = v30;
  (*(v47 + 104))(v14, *MEMORY[0x277CF9B90], v11);
  v35 = OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_liveControlService;
  v36 = v45;
  swift_beginAccess();
  result = sub_224A3796C(v36 + v35, v49, &qword_27D6F46C0, &qword_224DB7608);
  if (v50)
  {
    v38 = *__swift_project_boxed_opaque_existential_1(v49, v50);

    sub_224C7F6A4(v29, v46, a2, v14);
    (*(v47 + 8))(v14, v11);
    (*(v42 + 8))(v29, v43);
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224B737DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v57 = a7;
  v65 = a3;
  v66 = a5;
  v67 = a1;
  v68 = a2;
  v58 = sub_224DACB98();
  v64 = *(v58 - 8);
  v9 = *(v64 + 64);
  MEMORY[0x28223BE20](v58);
  v11 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_224DACB08();
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DACB28();
  v54 = *(v16 - 8);
  v55 = v16;
  v17 = *(v54 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_224DACC88();
  v62 = *(v20 - 8);
  v63 = v20;
  v21 = *(v62 + 64);
  MEMORY[0x28223BE20](v20);
  v61 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v59 = *(v23 - 8);
  v60 = v23;
  v24 = *(v59 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v51 - v25;
  if (qword_281351678 != -1)
  {
    swift_once();
  }

  v27 = sub_224DAB258();
  __swift_project_value_buffer(v27, qword_2813650A8);

  v28 = sub_224DAB228();
  v29 = sub_224DAF2A8();

  v53 = v29;
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v69[0] = v31;
    *v30 = 136446722;
    v51 = v12;
    v32 = v26;
    v33 = v11;
    v34 = a6;
    v35 = v19;
    if (v68)
    {
      v36 = v67;
    }

    else
    {
      v36 = 7104878;
    }

    v52 = v15;
    if (v68)
    {
      v37 = v68;
    }

    else
    {
      v37 = 0xE300000000000000;
    }

    v38 = sub_224A33F74(v36, v37, v69);

    *(v30 + 4) = v38;
    v19 = v35;
    a6 = v34;
    v11 = v33;
    v39 = v65;
    v40 = v66;
    *(v30 + 12) = 2082;
    *(v30 + 14) = sub_224A33F74(v39, a4, v69);
    *(v30 + 22) = 2082;
    v15 = v52;
    v41 = v40;
    v26 = v32;
    v12 = v51;
    *(v30 + 24) = sub_224A33F74(v41, a6, v69);
    _os_log_impl(&dword_224A2F000, v28, v53, "Reload timelines of kind: %{public}s containedIn: %{public}s, reason: %{public}s", v30, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v31, -1, -1);
    MEMORY[0x22AA5EED0](v30, -1, -1);
  }

  sub_224A3317C(v57 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_timelineService, v69);
  v42 = __swift_project_boxed_opaque_existential_1(v69, v69[3]);

  sub_224DA9FF8();
  (*(v54 + 104))(v19, *MEMORY[0x277CF9B50], v55);
  (*(v56 + 104))(v15, *MEMORY[0x277CF9B40], v12);
  v43 = swift_allocObject();
  v44 = [objc_opt_self() currentContext];
  if (v44)
  {
    v45 = v44;
    v46 = [v44 remoteProcess];
  }

  else
  {
    v46 = 0;
  }

  v47 = v66;
  v43[2] = v46;
  v43[3] = v47;
  v43[4] = a6;
  *v11 = v43;
  (*(v64 + 104))(v11, *MEMORY[0x277CF9B90], v58);

  sub_224DACC48();
  v48 = v61;
  sub_224DACC38();
  v49 = *v42;
  sub_224D8AD10(v67, v68, v26, v48);
  (*(v62 + 8))(v48, v63);
  (*(v59 + 8))(v26, v60);
  return __swift_destroy_boxed_opaque_existential_1(v69);
}

uint64_t sub_224B73E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4660, &qword_224DB75D8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v21 - v12);
  result = swift_beginAccess();
  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = *(a2 + 24);
    swift_beginAccess();
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    sub_224A3796C(a1, v13, &qword_27D6F4660, &qword_224DB75D8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = *v13;
      v18 = sub_224DA9688();
      (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
      v19 = v17;
      v15(v9, v17);
      sub_224A3D418(v15);
    }

    else
    {
      sub_224B7A9A4(v13, v9);
      v15(v9, 0);
      sub_224A3D418(v15);
    }

    sub_224A3311C(v9, &unk_27D6F4680, &unk_224DB4610);
    swift_beginAccess();
    v20 = *(a3 + 16);
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t sub_224B74060(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4660, &qword_224DB75D8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (v29 - v11);
  if (*a1)
  {
    sub_224B7AA14();
    v13 = swift_allocError();
    *v14 = 0;
    v14[1] = 0;
  }

  else
  {
    v13 = swift_allocError();
  }

  v15 = v13;
  if (qword_281351458 != -1)
  {
    swift_once();
  }

  v16 = sub_224DAB258();
  __swift_project_value_buffer(v16, qword_281364DA8);

  v17 = v13;
  v18 = sub_224DAB228();
  v19 = sub_224DAF288();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v29[1] = v9;
    v22 = a4;
    v23 = v21;
    v24 = swift_slowAlloc();
    v31 = v24;
    *v20 = 136446466;
    *(v20 + 4) = sub_224A33F74(a2, a3, &v31);
    *(v20 + 12) = 2114;
    v25 = v13;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v26;
    *v23 = v26;
    _os_log_impl(&dword_224A2F000, v18, v19, "[ToolsService][ContentLoading][%{public}s] - Failed (error: %{public}@)", v20, 0x16u);
    sub_224A3311C(v23, &unk_27D6F69F0, &unk_224DB3900);
    v27 = v23;
    a4 = v22;
    MEMORY[0x22AA5EED0](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x22AA5EED0](v24, -1, -1);
    MEMORY[0x22AA5EED0](v20, -1, -1);
  }

  *v12 = v13;
  swift_storeEnumTagMultiPayload();
  sub_224B73E34(v12, a4, v30);

  return sub_224A3311C(v12, &qword_27D6F4660, &qword_224DB75D8);
}

uint64_t sub_224B7432C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = a6;
  v51 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v48 - v15;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4660, &qword_224DB75D8);
  v17 = *(*(v52 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v52);
  v20 = (&v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v22 = &v48 - v21;
  v23 = sub_224DAEC58();
  if ((*(*(v23 - 8) + 48))(a1, 1, v23) == 1)
  {
    if (qword_281351458 != -1)
    {
      swift_once();
    }

    v24 = sub_224DAB258();
    __swift_project_value_buffer(v24, qword_281364DA8);

    v25 = sub_224DAB228();
    v26 = sub_224DAF2A8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = a4;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v53[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_224A33F74(v51, a3, v53);
      _os_log_impl(&dword_224A2F000, v25, v26, "[ToolsService][ContentLoading][%s] - Failed - No content found", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x22AA5EED0](v29, -1, -1);
      v30 = v28;
      a4 = v27;
      MEMORY[0x22AA5EED0](v30, -1, -1);
    }

    sub_224B7AA14();
    v31 = swift_allocError();
    *v32 = 0;
    v32[1] = 0;
    *v20 = v31;
    swift_storeEnumTagMultiPayload();
    v22 = v20;
    goto LABEL_13;
  }

  if (qword_281351458 != -1)
  {
    swift_once();
  }

  v33 = sub_224DAB258();
  __swift_project_value_buffer(v33, qword_281364DA8);

  v34 = sub_224DAB228();
  v35 = sub_224DAF2A8();

  v36 = os_log_type_enabled(v34, v35);
  v48 = a7;
  v49 = a4;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = a5;
    v39 = swift_slowAlloc();
    v53[0] = v39;
    *v37 = 136315138;
    *(v37 + 4) = sub_224A33F74(v51, a3, v53);
    _os_log_impl(&dword_224A2F000, v34, v35, "[ToolsService][ContentLoading][%s] - Succeeded", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    v40 = v39;
    a5 = v38;
    MEMORY[0x22AA5EED0](v40, -1, -1);
    MEMORY[0x22AA5EED0](v37, -1, -1);
  }

  v41 = OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_activityService;
  v42 = v50;
  swift_beginAccess();
  result = sub_224A3796C(v42 + v41, v53, &unk_27D6F4FD0, &qword_224DB75F0);
  if (v54)
  {
    v44 = __swift_project_boxed_opaque_existential_1(v53, v54);
    sub_224DABF98();
    v45 = *(*v44 + 48);
    __swift_project_boxed_opaque_existential_1((*v44 + 16), *(*v44 + 40));
    v46 = *(v45 + 16);
    sub_224DACEA8();
    (*(v13 + 8))(v16, v12);
    v47 = sub_224DA9688();
    (*(*(v47 - 8) + 56))(v22, 0, 1, v47);
    __swift_destroy_boxed_opaque_existential_1(v53);
    a4 = v49;
    swift_storeEnumTagMultiPayload();
LABEL_13:
    sub_224B73E34(v22, a4, a5);
    return sub_224A3311C(v22, &qword_27D6F4660, &qword_224DB75D8);
  }

  __break(1u);
  return result;
}

void sub_224B748C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id, void))
{
  v5 = objc_allocWithZone(MEMORY[0x277CFA2E8]);
  sub_224DA9688();
  v6 = sub_224DAEFF8();
  v7 = sub_224DAEFF8();
  v8 = sub_224DAEFF8();
  v9 = [v5 initWithProposedURLs:v6 protectedURLs:v7 deletedURLs:v8];

  a4(v9, 0);
}

uint64_t sub_224B749CC()
{
  v9 = v0;
  v1 = *__swift_project_boxed_opaque_existential_1((v0[3] + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_rendererSessionProvider), *(v0[3] + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_rendererSessionProvider + 24));
  v8 = MEMORY[0x277D84F90];
  v2 = *(v1 + OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock);
  os_unfair_lock_lock(*(v2 + 16));
  sub_224CC77BC(v1, &v8);
  os_unfair_lock_unlock(*(v2 + 16));
  v0[2] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4630, &unk_224DB75B8);
  sub_224B7A774();
  v3 = sub_224DAED78();
  v5 = v4;

  v6 = v0[1];

  return v6(v3, v5);
}

uint64_t sub_224B74B50(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0xD00000000000002CLL;
  }

  sub_224DAF938();

  MEMORY[0x22AA5D210](a1, a2);
  MEMORY[0x22AA5D210](0x2064656D69742027, 0xEC0000002E74756FLL);
  return 0x2065636976726553;
}

unint64_t sub_224B74C18(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4780, qword_224DB77A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  v5 = *MEMORY[0x277CCA470];
  *(inited + 32) = sub_224DAEE18();
  *(inited + 40) = v6;
  if (a2)
  {
    sub_224DAF938();

    MEMORY[0x22AA5D210](a1, a2);
    MEMORY[0x22AA5D210](0x2064656D69742027, 0xEC0000002E74756FLL);
    v7 = 0x2065636976726553;
    v8 = 0xE900000000000027;
  }

  else
  {
    v8 = 0x8000000224DC7B40;
    v7 = 0xD00000000000002CLL;
  }

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  v9 = sub_224DA0AC0(inited);
  swift_setDeallocating();
  sub_224A3311C(inited + 32, &unk_27D6F58E0, &unk_224DB6450);
  return v9;
}

uint64_t sub_224B74D88()
{
  if (*(v0 + 8))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_224B74DB0(uint64_t a1)
{
  v2 = sub_224B7AD54();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_224B74DEC(uint64_t a1)
{
  v2 = sub_224B7AD54();

  return MEMORY[0x28211F4A8](a1, v2);
}

id sub_224B74E74(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_224B74F64(void *a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v7 = swift_allocObject();
    v7[2] = a1;
    v7[3] = a2;
    v7[4] = a3;
    v10[4] = sub_224B7AC6C;
    v10[5] = v7;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_224A39F40;
    v10[3] = &block_descriptor_131;
    v8 = _Block_copy(v10);
    v9 = a1;

    BSDispatchMain();
    _Block_release(v8);
  }
}

void sub_224B7531C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_224DAEFF8();
  if (a2)
  {
    v6 = sub_224DA9518();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_224B755D8(void *a1, int a2, void *aBlock, void (*a4)(id, void *))
{
  v6 = _Block_copy(aBlock);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    _Block_copy(v6);
    v8 = a1;
    a4(v9, v6);
    _Block_release(v6);

    _Block_release(v6);
  }

  else
  {

    _Block_release(v6);
  }
}

void sub_224B75774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  sub_224A3796C(a1, &v14 - v8, &unk_27D6F4680, &unk_224DB4610);
  v10 = sub_224DA9688();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v12 = sub_224DA95F8();
    (*(v11 + 8))(v9, v10);
  }

  if (a2)
  {
    v13 = sub_224DA9518();
  }

  else
  {
    v13 = 0;
  }

  (*(a3 + 16))(a3, v12, v13);
}

uint64_t sub_224B75900(void *a1, int a2, uint64_t a3, int a4, int a5, void *aBlock, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, id))
{
  v10 = _Block_copy(aBlock);
  if (a3)
  {
    v11 = sub_224DAEE18();
    a3 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = sub_224DAEE18();
  v15 = v14;
  v16 = sub_224DAEE18();
  v18 = v17;
  _Block_copy(v10);
  v19 = a1;
  sub_224B79E4C(v11, a3, v13, v15, v16, v18, v19, v10, a7);
  _Block_release(v10);
  _Block_release(v10);
}

void sub_224B75A28(void *a1, int a2, int a3, void *aBlock, void (*a5)(uint64_t, uint64_t, id, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = sub_224DAEE18();
  v10 = v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    _Block_copy(v7);
    v12 = a1;
    a5(v8, v10, v13, v7);

    _Block_release(v7);
    _Block_release(v7);
  }

  else
  {

    _Block_release(v7);
  }
}

uint64_t sub_224B75C38()
{
  v1 = v0[2];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[3] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_224B75D54;

    return sub_224B749AC();
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    sub_224CBC42C(8u, 0, 0);
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_224B75D54(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 32);
  v8 = *v3;
  *(*v3 + 40) = v2;

  if (v2)
  {
    v9 = sub_224B75EF0;
  }

  else
  {
    *(v6 + 48) = a2;
    *(v6 + 56) = a1;
    v9 = sub_224B75E88;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_224B75E88()
{
  v1 = *(v0 + 8);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1(v2, v3);
}

uint64_t sub_224B75EF0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_224B760C8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_224B76170;

  return sub_224B75C18();
}

uint64_t sub_224B76170(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 32);
  v9 = *(*v3 + 16);
  v10 = *v3;

  if (v4)
  {
    v11 = sub_224DA9518();

    v12 = v11;
    v13 = 0;
  }

  else
  {
    v14 = sub_224DA96B8();
    sub_224A78024(a1, a2);
    v13 = v14;
    v12 = 0;
    v11 = v14;
  }

  v15 = *(v7 + 24);
  (v15)[2](v15, v13, v12);

  _Block_release(v15);
  v16 = *(v10 + 8);

  return v16();
}

uint64_t sub_224B76304()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue;
    v3 = *(result + OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue);
    BSDispatchQueueAssert();
    if (qword_281351678 != -1)
    {
      swift_once();
    }

    v4 = sub_224DAB258();
    __swift_project_value_buffer(v4, qword_2813650A8);
    v5 = v1;
    v6 = sub_224DAB228();
    v7 = sub_224DAF2A8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      v10 = *&v1[v2];
      BSDispatchQueueAssert();
      v11 = [*&v5[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_connection] remoteProcess];
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_224A2F000, v6, v7, "Unsubscribed from task service state from client: %{public}@", v8, 0xCu);
      sub_224A3311C(v9, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v9, -1, -1);
      MEMORY[0x22AA5EED0](v8, -1, -1);
    }

    v12 = *&v5[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_taskServiceSubscriptionAssertion];
    *&v5[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_taskServiceSubscriptionAssertion] = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_224B76530(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_224B06E2C(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t sub_224B765C0(void *a1)
{
  sub_224A3317C(&v1[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_taskService], aBlock);
  v3 = *&v1[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_queue];
  v4 = type metadata accessor for ToolServicesClient();
  v5 = objc_allocWithZone(v4);
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_taskServiceSubscriptionAssertion] = 0;
  *&v5[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_connection] = a1;
  sub_224A3317C(aBlock, &v5[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient_taskService]);
  *&v5[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue] = v3;
  swift_unknownObjectWeakAssign();
  v30.receiver = v5;
  v30.super_class = v4;
  v6 = v3;
  v7 = a1;
  v8 = objc_msgSendSuper2(&v30, sel_init);
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  v10[2] = sub_224B7ACDC;
  v10[3] = v9;
  aBlock[4] = sub_224A75AA4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A37E38;
  aBlock[3] = &block_descriptor_166;
  v11 = _Block_copy(aBlock);
  v12 = v1;
  v13 = v8;

  [v7 configureConnection_];
  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  v10 = [v7 remoteProcess];
  v14 = sub_224DAEDE8();
  v15 = [v10 hasEntitlement_];

  if (v15)
  {
    v16 = *&v12[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer__lock];
    v17 = *(v16 + 16);

    os_unfair_lock_lock(v17);
    swift_beginAccess();
    sub_224ADBC84(&v28, v13);
    swift_endAccess();

    os_unfair_lock_unlock(*(v16 + 16));

    v18 = &selRef_activate;
    goto LABEL_8;
  }

  if (qword_281351678 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v19 = sub_224DAB258();
  __swift_project_value_buffer(v19, qword_2813650A8);
  v20 = v10;
  v21 = sub_224DAB228();
  v22 = sub_224DAF2A8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v23 = 138543618;
    *(v23 + 4) = v20;
    *v24 = v20;
    *(v23 + 12) = 2082;
    v26 = v20;
    *(v23 + 14) = sub_224A33F74(0x65736C6166, 0xE500000000000000, aBlock);
    _os_log_impl(&dword_224A2F000, v21, v22, "Tool service connection from %{public}@ failed to authenticate <entitled: %{public}s>", v23, 0x16u);
    sub_224A3311C(v24, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x22AA5EED0](v25, -1, -1);
    MEMORY[0x22AA5EED0](v23, -1, -1);
  }

  v18 = &selRef_invalidate;
LABEL_8:
  [v7 *v18];
}

void sub_224B76A3C(uint64_t a1, uint64_t a2, unint64_t a3, void (**a4)(void, void, void))
{
  v40 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  v14 = *(a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider), *(a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider + 24));
  _Block_copy(a4);
  if (sub_224DAA158())
  {
    if (qword_281351678 != -1)
    {
      swift_once();
    }

    v15 = sub_224DAB258();
    __swift_project_value_buffer(v15, qword_2813650A8);

    v16 = sub_224DAB228();
    v17 = sub_224DAF2A8();

    if (os_log_type_enabled(v16, v17))
    {
      v35 = a1;
      v37 = v17;
      v38 = v9;
      v18 = 0x6E776F6E6B6E75;
      v19 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v43[0] = v36;
      *v19 = 136446466;
      *(v19 + 4) = sub_224A33F74(v40, a3, v43);
      *(v19 + 12) = 2082;
      v20 = [objc_opt_self() currentContext];
      if (v20 && (v21 = v20, v22 = [v20 remoteProcess], v21, v22))
      {
        v23 = [v22 description];

        v18 = sub_224DAEE18();
        v25 = v24;
      }

      else
      {
        v25 = 0xE700000000000000;
      }

      v28 = sub_224A33F74(v18, v25, v43);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_224A2F000, v16, v37, "Requesting to refresh descriptors for %{public}s from %{public}s.", v19, 0x16u);
      v29 = v36;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v29, -1, -1);
      MEMORY[0x22AA5EED0](v19, -1, -1);

      v9 = v38;
      a1 = v35;
    }

    else
    {
    }

    sub_224DA9FF8();
    sub_224DAA278();
    v30 = *(a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_extensionService + 32);
    __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_extensionService), *(a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_extensionService + 24));
    sub_224DAC6C8();
    if (v42)
    {
      sub_224A36F98(&v41, v43);
      v31 = *(a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_descriptorService + 32);
      __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_descriptorService), *(a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_descriptorService + 24));
      sub_224A3317C(v43, &v41);
      v32 = swift_allocObject();
      sub_224A36F98(&v41, v32 + 16);
      *(v32 + 56) = sub_224A5A398;
      *(v32 + 64) = v13;

      sub_224DACA88();

      __swift_destroy_boxed_opaque_existential_1(v43);
    }

    else
    {
      sub_224A3311C(&v41, &unk_27D6F4700, &unk_224DB3A10);
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v33 = sub_224CBC42C(0, 0, 0);
      v34 = sub_224DA9518();
      (a4)[2](a4, 0, v34);
    }

    (*(v39 + 8))(v12, v9);
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v26 = sub_224CBC42C(8u, 0, 0);
    v40 = sub_224DA9518();
    (a4)[2](a4, 0, v40);

    v27 = v40;
  }
}

uint64_t sub_224B77004(uint64_t a1, unint64_t a2, char *a3, void *a4)
{
  v58 = a1;
  v7 = sub_224DAB7B8();
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  MEMORY[0x28223BE20](v7);
  v54 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_224DAB848();
  v53 = *(v55 - 8);
  v10 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v52 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DAB798();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = sub_224DAB878();
  v51 = *(v57 - 8);
  v17 = *(v51 + 64);
  v18 = MEMORY[0x28223BE20](v57);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v50 = &v48 - v21;
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  v61 = &type metadata for FeatureFlags.Widgets;
  v62 = sub_224A80FFC();
  LOBYTE(aBlock[0]) = 10;
  _Block_copy(a4);
  v23 = sub_224DA9C98();
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  if (v23)
  {
    if (qword_281351678 != -1)
    {
      swift_once();
    }

    v24 = sub_224DAB258();
    __swift_project_value_buffer(v24, qword_2813650A8);
    v25 = sub_224DAB228();
    v26 = sub_224DAF2A8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v49 = v7;
      v28 = v22;
      v29 = a3;
      v30 = a2;
      v31 = v27;
      *v27 = 0;
      _os_log_impl(&dword_224A2F000, v25, v26, "Using build and run hack.", v27, 2u);
      v32 = v31;
      a2 = v30;
      a3 = v29;
      v22 = v28;
      v7 = v49;
      MEMORY[0x22AA5EED0](v32, -1, -1);
    }

    v49 = *&a3[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_queue];
    sub_224DAB858();
    *v16 = 2;
    (*(v13 + 104))(v16, *MEMORY[0x277D85188], v12);
    v33 = v50;
    sub_224DAB868();
    (*(v13 + 8))(v16, v12);
    v51 = *(v51 + 8);
    (v51)(v20, v57);
    v34 = swift_allocObject();
    v35 = v58;
    v34[2] = a3;
    v34[3] = v35;
    v34[4] = a2;
    v34[5] = sub_224A5A398;
    v34[6] = v22;
    v62 = sub_224B7AC80;
    v63 = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    v61 = &block_descriptor_146;
    v36 = _Block_copy(aBlock);
    v37 = a3;

    v38 = v52;
    sub_224DAB7E8();
    v59 = MEMORY[0x277D84F90];
    sub_224B7A940(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    v39 = v54;
    sub_224DAF788();
    v40 = v49;
    MEMORY[0x22AA5D6A0](v33, v38, v39, v36);
    _Block_release(v36);

    (*(v56 + 8))(v39, v7);
    (*(v53 + 8))(v38, v55);
    (v51)(v33, v57);
  }

  else
  {
    if (qword_281351678 != -1)
    {
      swift_once();
    }

    v41 = sub_224DAB258();
    __swift_project_value_buffer(v41, qword_2813650A8);
    v42 = sub_224DAB228();
    v43 = sub_224DAF2A8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = a2;
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_224A2F000, v42, v43, "Skipping build and run hack.", v45, 2u);
      v46 = v45;
      a2 = v44;
      MEMORY[0x22AA5EED0](v46, -1, -1);
    }

    _Block_copy(a4);
    sub_224B76A3C(a3, v58, a2, a4);
    _Block_release(a4);
  }
}

void sub_224B776F4(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider);
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  if ((sub_224DAA158() & 1) == 0)
  {
    goto LABEL_5;
  }

  v6 = *(a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_stateCaptureService + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_stateCaptureService), *(a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_stateCaptureService + 24));
  v7 = sub_224DAA2A8();
  v8 = v7;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = sub_224B0CC2C(*(v7 + 16), 0);
    v11 = sub_224B2F374(&v15, v10 + 4, v9, v8);
    sub_224A3B7E4();
    if (v11 != v9)
    {
      __break(1u);
LABEL_5:
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v12 = sub_224CBC42C(8u, 0, 0);
      v13 = sub_224DAEFF8();
      v14 = sub_224DA9518();
      (*(a2 + 16))(a2, v13);

      goto LABEL_8;
    }
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  sub_224B421FC(v10);

  v14 = sub_224DAEFF8();
  (*(a2 + 16))(a2);

LABEL_8:
}