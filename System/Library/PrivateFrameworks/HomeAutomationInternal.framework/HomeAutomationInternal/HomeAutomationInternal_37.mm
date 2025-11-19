uint64_t sub_252BDA200(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252BD8174(a1);
}

uint64_t sub_252BDA29C()
{
  type metadata accessor for AutomateHomeFlow();

  return sub_252E33644();
}

unint64_t sub_252BDA310()
{
  result = qword_27F543CD0;
  if (!qword_27F543CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543CD0);
  }

  return result;
}

uint64_t sub_252BDA364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B6C8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25293B808;

  return MEMORY[0x2821BA0B8](a1, a2, a3);
}

uint64_t sub_252BDA4A8(uint64_t a1)
{
  result = sub_252BDB394(&qword_27F543CE0, type metadata accessor for AutomateHomeFlow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252BDA500(uint64_t a1)
{
  result = sub_252BDB394(&qword_27F543CE8, type metadata accessor for AutomateHomeFlow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252BDA558(__int128 *a1)
{
  v2 = sub_252E36AB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  v69 = *a1;
  v70 = v7;
  v71 = *(a1 + 4);
  v8 = *(a1 + 40);
  memcpy(v68, a1 + 41, sizeof(v68));
  if (qword_27F53F5D0 != -1)
  {
    swift_once();
  }

  v61 = v3;
  v62 = v2;
  v9 = qword_27F544F58;
  sub_252E36A94();
  sub_252E375D4();
  v59 = v9;
  v60 = v6;
  sub_252E36A84();
  v10 = a1[1];
  v63 = *a1;
  v64 = v10;
  v65 = *(a1 + 4);
  v66 = v8;
  memcpy(v67, a1 + 41, sizeof(v67));
  v11 = sub_252A0E1E8();
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v12 = sub_252E36AD4();
  __swift_project_value_buffer(v12, qword_27F544D60);
  *&v63 = 0;
  *(&v63 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v63 = 0x2073614820202020;
  *(&v63 + 1) = 0xEF203A746E657665;
  v13 = v8 != 4;
  if (v8 == 4)
  {
    v14 = 0x65736C6166;
  }

  else
  {
    v14 = 1702195828;
  }

  LODWORD(v58) = v8;
  if (v8 == 4)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v14, v15);

  MEMORY[0x2530AD570](0x736148202020200ALL, 0xEF203A6574616420);
  if (v11)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v11)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v16, v17);

  sub_252CC3D90(v63, *(&v63 + 1), 0xD000000000000078, 0x8000000252E872F0);

  if (((v13 | v11) & 1) == 0)
  {
    goto LABEL_23;
  }

  type metadata accessor for HomeStore();
  v18 = static HomeStore.shared.getter();
  v63 = v69;
  v64 = v70;
  v65 = v71;
  v66 = v58;
  memcpy(v67, v68, sizeof(v67));
  v19 = sub_252AEFEB0();
  v20 = v19;
  v21 = v18[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v21 != 2 && (v21 & 1) == 0)
  {

    v22 = 0;
    goto LABEL_24;
  }

  v22 = [v19 filters];
  if (!v22)
  {

    goto LABEL_24;
  }

  type metadata accessor for HomeFilter();
  v23 = sub_252E37264();

  v24 = [v20 userTask];
  v25 = HomeStore.accessories(matching:supporting:)(v23, v24);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
    v32 = v25 & 0xFFFFFFFFFFFFFF8;
    if (v25 >> 62)
    {
      goto LABEL_57;
    }

    v33 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v33)
    {
LABEL_58:
      sub_252929F10(v25, 0);
      v22 = 1;
      goto LABEL_24;
    }

LABEL_29:
    v34 = 0;
    v57 = v32;
    v58 = v25 + 32;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x2530ADF00](v34, v25);
        v37 = __OFADD__(v34++, 1);
        if (v37)
        {
LABEL_53:
          __break(1u);
LABEL_54:
          sub_252929F10(v25, 0);

          v22 = 0;
          goto LABEL_24;
        }
      }

      else
      {
        if (v34 >= *(v32 + 16))
        {
          __break(1u);
LABEL_57:
          v33 = sub_252E378C4();
          if (!v33)
          {
            goto LABEL_58;
          }

          goto LABEL_29;
        }

        v36 = *(v58 + 8 * v34);

        v37 = __OFADD__(v34++, 1);
        if (v37)
        {
          goto LABEL_53;
        }
      }

      v38 = (*v36 + 256);
      v39 = *v38;
      if ((*v38)() == 32)
      {
        sub_252929F10(v25, 0);

        v22 = 0;
        goto LABEL_24;
      }

      v40 = v33;
      v41 = (*(*v36 + 272))();
      v42 = v41;
      if (*(v41 + 16))
      {
        v43 = *(v41 + 40);
        sub_252E37EC4();
        MEMORY[0x2530AE390](32);
        v44 = sub_252E37F14();
        v45 = -1 << *(v42 + 32);
        v46 = v44 & ~v45;
        if ((*(v42 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
        {
          v47 = ~v45;
          while (*(*(v42 + 48) + 8 * v46) != 32)
          {
            v46 = (v46 + 1) & v47;
            if (((*(v42 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          goto LABEL_54;
        }
      }

LABEL_40:

      v49 = (v39)(v48);
      if (v49 == 38)
      {
        break;
      }

      v50 = MEMORY[0x277D84FA0];
      if (v49 == 41)
      {
        v51 = &unk_2864A9080;
LABEL_44:
        v50 = sub_2529FC004(v51);
      }

      if (*(v50 + 16))
      {
        v52 = *(v50 + 40);
        sub_252E37EC4();
        MEMORY[0x2530AE390](32);
        v53 = sub_252E37F14();
        v54 = -1 << *(v50 + 32);
        v55 = v53 & ~v54;
        if ((*(v50 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55))
        {
          v56 = ~v54;
          while (*(*(v50 + 48) + 8 * v55) != 32)
          {
            v55 = (v55 + 1) & v56;
            if (((*(v50 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          goto LABEL_54;
        }
      }

LABEL_30:

      v33 = v40;
      v35 = v34 == v40;
      v32 = v57;
      if (v35)
      {
        goto LABEL_58;
      }
    }

    v51 = &unk_2864A9058;
    goto LABEL_44;
  }

  sub_252929F10(v25, 1);
LABEL_23:
  v22 = 0;
LABEL_24:
  v29 = v61;
  v28 = v62;
  v30 = v60;
  sub_252E375C4();
  sub_252E36A74();
  (*(v29 + 8))(v30, v28);
  return v22;
}

uint64_t sub_252BDAC80()
{
  v0 = sub_252E37B74();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

id sub_252BDACCC(void *a1)
{
  v1 = [a1 automatableTask];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for ControlAutomateHomeIntent();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
      v5 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters);
      v6 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
      v7 = v4;

      v8 = [v6 init];
      [v8 setUserTask_];
      type metadata accessor for HomeFilter();
      v9 = sub_252E37254();

      [v8 setFilters_];

      [v8 setTime_];
      v10 = [v8 filters];
      if (v10)
      {
        v11 = v10;
        v12 = sub_252E37264();

        v13 = sub_252DD5A58(v12);
      }

      else
      {
        v13 = MEMORY[0x277D84F90];
      }

      v14 = sub_252C758E0(v13);

      v15 = sub_252DD6238(v14);

      if (v15)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  type metadata accessor for HomeStore();
  v16 = static HomeStore.shared.getter();
  v15 = sub_2529D9114();

  if (!v15)
  {
    v17 = static HomeStore.shared.getter();
    v15 = sub_2529F1BFC();

    if (!v15)
    {
      return 0;
    }
  }

LABEL_10:
  v18 = *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);

  return v18;
}

unint64_t sub_252BDAF00()
{
  result = qword_27F543D08;
  if (!qword_27F543D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543D08);
  }

  return result;
}

uint64_t sub_252BDAF54(uint64_t a1, const void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543D18, &qword_252E51670);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for LocationService();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543D20, &qword_252E51678);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  memcpy(v26, a2, 0x1F8uLL);
  if (qword_27F53F348 != -1)
  {
    swift_once();
  }

  v14 = sub_252E36C84();
  v15 = __swift_project_value_buffer(v14, qword_27F5432C0);
  (*(*(v14 - 8) + 16))(v8, v15, v14);
  type metadata accessor for AutomateHomeRCHStrategy();
  v16 = swift_allocObject();
  v16[5] = v5;
  v16[6] = &protocol witness table for LocationService;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16 + 2);
  sub_252BDB2CC(v8, boxed_opaque_existential_0);
  v25 = v16;
  sub_252BD6EC0(v26);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543D28, &qword_252E51680);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_252E335D4();
  sub_252BDB394(&qword_27F543D30, type metadata accessor for AutomateHomeRCHStrategy);
  sub_252E33A44();
  if (qword_27F53F720 != -1)
  {
    swift_once();
  }

  v21 = sub_252E33A34();
  (*(v10 + 8))(v13, v9);
  v25 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543D38, &qword_252E51688);
  sub_252BDB330();
  v22 = sub_252E33604();

  return v22;
}

uint64_t sub_252BDB2CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationService();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_252BDB330()
{
  result = qword_27F543D40;
  if (!qword_27F543D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F543D38, &qword_252E51688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543D40);
  }

  return result;
}

uint64_t sub_252BDB394(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252BDB3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = *(*(sub_252E33944() - 8) + 64) + 15;
  v7[9] = swift_task_alloc();
  v9 = sub_252E34014();
  v7[10] = v9;
  v10 = *(v9 - 8);
  v7[11] = v10;
  v11 = *(v10 + 64) + 15;
  v7[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BDB4D4, 0, 0);
}

uint64_t sub_252BDB4D4()
{
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[5];
  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544D18);
  sub_252CC3D90(0xD000000000000026, 0x8000000252E87730, 0xD000000000000077, 0x8000000252E875B0);
  sub_252E33934();
  *(swift_task_alloc() + 16) = v3;
  sub_252E33F54();

  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_252BDB668;
  v6 = v0[12];
  v7 = v0[8];
  v8 = v0[6];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[2];
  v14 = v0[7];

  return sub_252BDB88C(v11, v9, v10, v6, 0, 0, 0, v8);
}

uint64_t sub_252BDB668()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_252BDB804;
  }

  else
  {
    v3 = sub_252BDB77C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252BDB77C()
{
  v1 = v0[9];
  (*(v0[11] + 8))(v0[12], v0[10]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_252BDB804()
{
  v1 = v0[9];
  (*(v0[11] + 8))(v0[12], v0[10]);

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t sub_252BDB88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 144) = v16;
  *(v9 + 152) = v8;
  *(v9 + 128) = a6;
  *(v9 + 136) = a8;
  *(v9 + 240) = a7;
  *(v9 + 112) = a4;
  *(v9 + 120) = a5;
  *(v9 + 96) = a2;
  *(v9 + 104) = a3;
  *(v9 + 88) = a1;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450) - 8) + 64) + 15;
  *(v9 + 160) = swift_task_alloc();
  *(v9 + 168) = swift_task_alloc();
  v11 = sub_252E34014();
  *(v9 + 176) = v11;
  v12 = *(v11 - 8);
  *(v9 + 184) = v12;
  v13 = *(v12 + 64) + 15;
  *(v9 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BDB9AC, 0, 0);
}

uint64_t sub_252BDB9AC()
{
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 240);
  v2 = sub_252E36AD4();
  *(v0 + 200) = __swift_project_value_buffer(v2, qword_27F544D18);
  sub_252CC3D90(0xD00000000000001BLL, 0x8000000252E87590, 0xD000000000000077, 0x8000000252E875B0);
  if (v1)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(sub_252B680FC() + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_supressSnippet);
  }

  *(v0 + 241) = v3;
  v8 = (*(v0 + 96) + **(v0 + 96));
  v4 = *(*(v0 + 96) + 4);
  v5 = swift_task_alloc();
  *(v0 + 208) = v5;
  *v5 = v0;
  v5[1] = sub_252BDBB4C;
  v6 = *(v0 + 104);

  return v8();
}

uint64_t sub_252BDBB4C(uint64_t a1)
{
  v3 = *(*v2 + 208);
  v4 = *v2;
  v4[27] = a1;

  if (v1)
  {
    v5 = v4[24];
    v6 = v4[20];
    v7 = v4[21];

    v8 = v4[1];

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_252BDBCA8, 0, 0);
  }
}

uint64_t sub_252BDBCA8()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 241);
  v3 = *(v0 + 200);
  sub_252CC3D90(0xD000000000000021, 0x8000000252E87630, 0xD000000000000077, 0x8000000252E875B0);
  v4 = [v1 description];
  v5 = sub_252E36F34();
  v7 = v6;

  sub_252CC3D90(v5, v7, 0xD000000000000077, 0x8000000252E875B0);

  if (v2 == 1)
  {
    v8 = *(v0 + 216);
    v9 = *(v0 + 200);
    sub_252CC3D90(0xD000000000000025, 0x8000000252E876B0, 0xD000000000000077, 0x8000000252E875B0);
    [v8 setVisual_];
  }

  v10 = *(v0 + 128);
  (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 112), *(v0 + 176));
  if (v10)
  {
    v12 = *(v0 + 192);
    v11 = *(v0 + 200);
    v13 = *(v0 + 128);
    sub_252CC3D90(0xD000000000000021, 0x8000000252E87680, 0xD000000000000077, 0x8000000252E875B0);
    if (sub_252E33FE4())
    {
      v14 = *(v0 + 192);

      v16 = sub_252E33FD4();
      if (*v15)
      {
        v17 = v15;
        v18 = *(v0 + 168);
        v19 = *(v0 + 120);
        v20 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
        sub_252E32CA4();
        v21 = sub_252E32CB4();
        v22 = *(v21 - 8);
        v23 = (*(v22 + 48))(v18, 1, v21);
        v24 = 0;
        if (v23 != 1)
        {
          v25 = *(v0 + 168);
          v24 = sub_252E32C74();
          (*(v22 + 8))(v25, v21);
        }

        [v20 setPunchOutUri_];

        MEMORY[0x2530AD700]();
        if (*((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v43 = *((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
      }

      v16(v0 + 56, 0);
    }

    else
    {
      v26 = *(v0 + 160);
      v27 = *(v0 + 120);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_252E3C130;
      v29 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
      sub_252E32CA4();
      v30 = sub_252E32CB4();
      v31 = *(v30 - 8);
      v32 = 0;
      if ((*(v31 + 48))(v26, 1, v30) != 1)
      {
        v33 = *(v0 + 160);
        v32 = sub_252E32C74();
        (*(v31 + 8))(v33, v30);
      }

      v34 = *(v0 + 192);
      [v29 setPunchOutUri_];

      *(v28 + 32) = v29;
      sub_252E33FF4();
    }
  }

  v35 = *(v0 + 152);
  (*(*(v0 + 144) + 8))(*(v0 + 136));
  v36 = *(v0 + 40);
  v37 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v36);
  v38 = *(MEMORY[0x277D5BE50] + 4);
  v39 = swift_task_alloc();
  *(v0 + 224) = v39;
  *v39 = v0;
  v39[1] = sub_252BDC148;
  v40 = *(v0 + 216);
  v41 = *(v0 + 192);
  v42 = *(v0 + 88);

  return MEMORY[0x2821BB480](v42, v40, v41, v36, v37);
}

uint64_t sub_252BDC148()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_252BDC354;
  }

  else
  {
    v3 = sub_252BDC25C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252BDC25C()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_252CC3D90(0xD00000000000001BLL, 0x8000000252E87660, 0xD000000000000077, 0x8000000252E875B0);

  (*(v5 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_252BDC354()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v4 = *(v0 + 232);
  v5 = *(v0 + 192);
  v7 = *(v0 + 160);
  v6 = *(v0 + 168);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_252BDC404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = *(*(sub_252E33944() - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v7 = sub_252E34014();
  v5[18] = v7;
  v8 = *(v7 - 8);
  v5[19] = v8;
  v9 = *(v8 + 64) + 15;
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BDC4F8, 0, 0);
}

uint64_t sub_252BDC4F8()
{
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544D18);
  sub_252CC3D90(0xD000000000000026, 0x8000000252E876E0, 0xD000000000000077, 0x8000000252E875B0);
  sub_252E33924();
  sub_252E33F54();
  v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v4 + 96), v0 + 16);

  v5 = *(v0 + 40);
  *(v0 + 168) = v5;
  *(v0 + 184) = __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
  v6 = swift_task_alloc();
  *(v0 + 192) = v6;
  *v6 = v0;
  v6[1] = sub_252BDC6A4;
  v7 = *(v0 + 160);
  v8 = *(v0 + 128);
  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  v11 = *(v0 + 96);
  v14 = *(v0 + 120);

  return sub_252BDB88C(v0 + 56, v11, v9, v7, 0, 0, 0, v10);
}

uint64_t sub_252BDC6A4()
{
  v2 = *(*v1 + 192);
  v3 = *v1;
  v3[25] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252BDC9CC, 0, 0);
  }

  else
  {
    v4 = *(MEMORY[0x277D5BF40] + 4);
    v5 = swift_task_alloc();
    v3[26] = v5;
    *v5 = v3;
    v5[1] = sub_252BDC820;
    v6 = v3[22];
    v7 = v3[23];
    v8 = v3[21];

    return MEMORY[0x2821BB5D0](v3 + 7, v8, v6);
  }
}

uint64_t sub_252BDC820()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v6 = *v1;
  *(v2 + 216) = v0;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  if (v0)
  {
    v4 = sub_252BDCA64;
  }

  else
  {
    v4 = sub_252BDC93C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252BDC93C()
{
  v1 = v0[17];
  (*(v0[19] + 8))(v0[20], v0[18]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_252BDC9CC()
{
  v1 = v0[25];
  v2 = v0[17];
  (*(v0[19] + 8))(v0[20], v0[18]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_252BDCA64()
{
  v1 = v0[27];
  v2 = v0[17];
  (*(v0[19] + 8))(v0[20], v0[18]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_252BDCAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = *(*(sub_252E33944() - 8) + 64) + 15;
  v7[9] = swift_task_alloc();
  v9 = sub_252E34014();
  v7[10] = v9;
  v10 = *(v9 - 8);
  v7[11] = v10;
  v11 = *(v10 + 64) + 15;
  v7[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BDCBF4, 0, 0);
}

uint64_t sub_252BDCBF4()
{
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[5];
  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544D18);
  sub_252CC3D90(0xD000000000000026, 0x8000000252E87730, 0xD000000000000077, 0x8000000252E875B0);
  sub_252E33934();
  *(swift_task_alloc() + 16) = v3;
  sub_252E33F54();

  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_252BDCD88;
  v6 = v0[12];
  v7 = v0[8];
  v8 = v0[6];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[2];
  v14 = v0[7];

  return sub_252BDB88C(v11, v9, v10, v6, 0, 0, 0, v8);
}

uint64_t sub_252BDCD88()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_252BDE258;
  }

  else
  {
    v3 = sub_252BDE25C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252BDCE9C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540390, &qword_252E3C448);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  sub_252E33FB4();
  sub_252E34004();
  v7 = sub_252E33C44();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  return sub_252E33FC4();
}

uint64_t sub_252BDCFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[13] = a6;
  v7[14] = v6;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v7[8] = a1;
  return MEMORY[0x2822009F8](sub_252BDCFD8, 0, 0);
}

uint64_t sub_252BDCFD8()
{
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_252E36AD4();
  v0[15] = __swift_project_value_buffer(v2, qword_27F544D18);
  sub_252CC3D90(0xD00000000000001BLL, 0x8000000252E87590, 0xD000000000000077, 0x8000000252E875B0);
  v7 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_252BDD14C;
  v5 = v0[10];

  return v7();
}

uint64_t sub_252BDD14C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 136) = a1;

    return MEMORY[0x2822009F8](sub_252BDD298, 0, 0);
  }
}

uint64_t sub_252BDD298()
{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v14 = v0[11];
  v15 = v0[8];
  sub_252CC3D90(0xD000000000000021, 0x8000000252E87630, 0xD000000000000077, 0x8000000252E875B0);
  v6 = [v1 description];
  v7 = sub_252E36F34();
  v9 = v8;

  sub_252CC3D90(v7, v9, 0xD000000000000077, 0x8000000252E875B0);

  (*(v4 + 32))(v5, v4);
  v10 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v11 = sub_252E334D4();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E87710, 0xD000000000000077, 0x8000000252E875B0);
  v0[7] = v11;
  sub_252E33444();
  sub_252E33604();
  sub_252E33B04();

  v12 = v0[1];

  return v12();
}

uint64_t PatternExecutionResult.description.getter()
{
  v1 = v0;
  sub_252E379F4();
  MEMORY[0x2530AD570](540689481, 0xE400000000000000);
  v2 = [v0 patternId];
  v3 = sub_252E36F34();
  v5 = v4;

  MEMORY[0x2530AD570](v3, v5);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E874D0);
  v6 = [v1 responseMode];
  v7 = sub_252E36F34();
  v9 = v8;

  MEMORY[0x2530AD570](v7, v9);

  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E874F0);
  v10 = [v1 printSupportingDialog];
  v11 = [v10 description];
  v12 = sub_252E36F34();
  v14 = v13;

  MEMORY[0x2530AD570](v12, v14);

  MEMORY[0x2530AD570](0x676F6C616944202CLL, 0xEA0000000000203ALL);
  v15 = [v1 dialog];
  v16 = sub_25293F638(0, &qword_27F543D58, 0x277D052C8);
  v17 = sub_252E37264();

  v18 = MEMORY[0x2530AD730](v17, v16);
  v20 = v19;

  MEMORY[0x2530AD570](v18, v20);

  return 0;
}

uint64_t PatternExecutionDialog.description.getter()
{
  v1 = v0;
  sub_252E379F4();
  MEMORY[0x2530AD570](540689481, 0xE400000000000000);
  v2 = [v0 dialogId];
  v3 = sub_252E36F34();
  v5 = v4;

  MEMORY[0x2530AD570](v3, v5);

  MEMORY[0x2530AD570](0x3A70756F7247202CLL, 0xE900000000000020);
  v6 = [v1 groupName];
  v7 = sub_252E36F34();
  v9 = v8;

  MEMORY[0x2530AD570](v7, v9);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E87510);
  v10 = [v1 fullPrint];
  v11 = sub_252E36F34();
  v13 = v12;

  MEMORY[0x2530AD570](v11, v13);

  MEMORY[0x2530AD570](0x726F70707553202CLL, 0xEE00203A676E6974);
  v14 = [v1 supportingPrint];
  v15 = sub_252E36F34();
  v17 = v16;

  MEMORY[0x2530AD570](v15, v17);

  MEMORY[0x2530AD570](0x203A796C6E4F202CLL, 0xE800000000000000);
  v18 = [v1 printOnly];
  v19 = [v18 description];
  v20 = sub_252E36F34();
  v22 = v21;

  MEMORY[0x2530AD570](v20, v22);

  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E87530);
  v23 = [v1 fullSpeak];
  v24 = sub_252E36F34();
  v26 = v25;

  MEMORY[0x2530AD570](v24, v26);

  MEMORY[0x2530AD570](0x726F70707553202CLL, 0xEE00203A676E6974);
  v27 = [v1 supportingSpeak];
  v28 = sub_252E36F34();
  v30 = v29;

  MEMORY[0x2530AD570](v28, v30);

  MEMORY[0x2530AD570](0x203A796C6E4F202CLL, 0xE800000000000000);
  v31 = [v1 spokenOnly];
  v32 = [v31 description];
  v33 = sub_252E36F34();
  v35 = v34;

  MEMORY[0x2530AD570](v33, v35);

  MEMORY[0x2530AD570](32032, 0xE200000000000000);
  return 0;
}

char *DialogExecutionResult.description.getter()
{
  v1 = v0;
  sub_252E379F4();

  v2 = [v0 catId];
  v3 = sub_252E36F34();
  v5 = v4;

  MEMORY[0x2530AD570](v3, v5);

  MEMORY[0x2530AD570](0x676F6C616944202CLL, 0xEA0000000000203ALL);
  v6 = [v1 dialog];
  sub_25293F638(0, &qword_27F542128, 0x277D052B0);
  v7 = sub_252E37264();

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_13:

    v11 = MEMORY[0x277D84F90];
LABEL_14:
    v21 = MEMORY[0x2530AD730](v11, MEMORY[0x277D837D0]);
    v23 = v22;

    MEMORY[0x2530AD570](v21, v23);

    return 540689481;
  }

  v8 = sub_252E378C4();
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_3:
  v24 = MEMORY[0x277D84F90];
  result = sub_2529AA3A0(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v24;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x2530ADF00](v10, v7);
      }

      else
      {
        v12 = *(v7 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = [v12 description];
      v15 = sub_252E36F34();
      v17 = v16;

      v19 = *(v24 + 16);
      v18 = *(v24 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2529AA3A0((v18 > 1), v19 + 1, 1);
      }

      ++v10;
      *(v24 + 16) = v19 + 1;
      v20 = v24 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
    }

    while (v8 != v10);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_252BDDD40(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_252E36F04();

  return v5;
}

uint64_t DialogElement.description.getter()
{
  v1 = v0;
  sub_252E379F4();
  MEMORY[0x2530AD570](540689481, 0xE400000000000000);
  v2 = [v0 id];
  v3 = sub_252E36F34();
  v5 = v4;

  MEMORY[0x2530AD570](v3, v5);

  MEMORY[0x2530AD570](0x72506C6C7566202CLL, 0xED0000203A746E69);
  v6 = [v1 fullPrint];
  v7 = sub_252E36F34();
  v9 = v8;

  MEMORY[0x2530AD570](v7, v9);

  MEMORY[0x2530AD570](0x70536C6C7566202CLL, 0xED0000203A6B6165);
  v10 = [v1 fullSpeak];
  v11 = sub_252E36F34();
  v13 = v12;

  MEMORY[0x2530AD570](v11, v13);

  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E87550);
  v14 = [v1 supportingPrint];
  v15 = sub_252E36F34();
  v17 = v16;

  MEMORY[0x2530AD570](v15, v17);

  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E87570);
  v18 = [v1 supportingSpeak];
  v19 = sub_252E36F34();
  v21 = v20;

  MEMORY[0x2530AD570](v19, v21);

  MEMORY[0x2530AD570](0x4F746E697270202CLL, 0xED0000203A796C6ELL);
  v22 = [v1 printOnly];
  v23 = v22 == 0;
  if (v22)
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (v23)
  {
    v25 = 0xE500000000000000;
  }

  else
  {
    v25 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v24, v25);

  MEMORY[0x2530AD570](0x6E656B6F7073202CLL, 0xEE00203A796C6E4FLL);
  v26 = [v1 spokenOnly];
  v27 = v26 == 0;
  if (v26)
  {
    v28 = 1702195828;
  }

  else
  {
    v28 = 0x65736C6166;
  }

  if (v27)
  {
    v29 = 0xE500000000000000;
  }

  else
  {
    v29 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v28, v29);

  MEMORY[0x2530AD570](32, 0xE100000000000000);
  return 0;
}

void sub_252BDE100()
{
  v1 = [v0 dialog];
  sub_25293F638(0, &qword_27F542128, 0x277D052B0);
  v2 = sub_252E37264();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v3 = sub_252E378C4();
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x2530ADF00](v4, v2);
      }

      else
      {
        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      ++v4;
      v7 = sub_252E36F04();
      [v6 setSupportingPrint_];

      v8 = sub_252E36F04();
      [v6 setFullPrint_];
    }

    while (v3 != v4);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t dispatch thunk of DiscoverHomeHandleDelegate.handle(intent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25296BC70;

  return v11(a1, a2, a3);
}

uint64_t sub_252BDE3F8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TargetModeHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_252BDE42C(void *a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  v4 = [a1 userTask];
  if (!v4)
  {
    sub_252C515AC();
    goto LABEL_8;
  }

  v5 = v4;
  if ([v4 taskType] == 4)
  {

    goto LABEL_6;
  }

  v6 = [v5 taskType];

  if (v6 != 5)
  {
LABEL_8:
    v7 = 0;
    return v7 & 1;
  }

LABEL_6:
  memcpy(v18, a2, sizeof(v18));
  sub_252A10E18(&v19);
  if (v19 != 77)
  {
    v18[0] = v19;
    v9 = StateSemantic.rawValue.getter();
    v11 = v10;
    if (v9 == StateSemantic.rawValue.getter() && v11 == v12)
    {

      v7 = 1;
      return v7 & 1;
    }

    v17 = sub_252E37DB4();

    if (v17)
    {
      v7 = 1;
      return v7 & 1;
    }
  }

  memcpy(v18, __dst, sizeof(v18));
  sub_252A10E18(&v19);
  if (v19 == 77)
  {
    goto LABEL_8;
  }

  v18[0] = v19;
  v13 = StateSemantic.rawValue.getter();
  v15 = v14;
  if (v13 == StateSemantic.rawValue.getter() && v15 == v16)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_252E37DB4();
  }

  return v7 & 1;
}

id sub_252BDE620(void *a1)
{
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 userTask];
  if (v7)
  {
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v7 = sub_252D6CA80(v7);
    v7[2] = 5;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v2, qword_27F544DA8);
  (*(v3 + 16))(v6, v8, v2);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E87790);
  if (v7)
  {
    v9 = v7[2];
  }

  else
  {
    v9 = 0;
  }

  v19 = v9;
  v20 = v7 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F80, &unk_252E4E1F0);
  v10 = sub_252E36F94();
  MEMORY[0x2530AD570](v10);

  sub_252CC3D90(v21, v22, 0xD00000000000008ALL, 0x8000000252E877D0);

  (*(v3 + 8))(v6, v2);
  if (v7)
  {

    v11 = sub_252D6CB58();
  }

  else
  {
    v11 = 0;
  }

  v12 = [a1 filters];
  if (v12)
  {
    v13 = v12;
    type metadata accessor for HomeFilter();
    v14 = sub_252E37264();
  }

  else
  {
    v14 = 0;
  }

  v15 = [a1 time];
  v16 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v16 setUserTask_];
  if (v14)
  {
    type metadata accessor for HomeFilter();
    v17 = sub_252E37254();
  }

  else
  {
    v17 = 0;
  }

  [v16 setFilters_];

  [v16 setTime_];

  return v16;
}

uint64_t CorrectionState.hashValue.getter()
{
  v1 = *v0;
  sub_252E37EC4();
  MEMORY[0x2530AE390](v1);
  return sub_252E37F14();
}

uint64_t sub_252BDEA88(void *__src, uint64_t a2)
{
  v3 = v2;
  memcpy(__dst, __src, sizeof(__dst));
  *(v2 + 16) = 0;
  v5 = v2 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_correctionsExitValue;
  strcpy(v5, "Initial value");
  *(v5 + 14) = -4864;
  v6 = *MEMORY[0x277D5BF08];
  v7 = sub_252E33E14();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  v8 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_undoRequests;
  *(v3 + v8) = sub_252CC6468(MEMORY[0x277D84F90]);
  v9 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_previousHomeAutomationIntent;
  sub_25293DEE0(__srca);
  memcpy((v3 + v9), __srca, 0x1F8uLL);
  v10 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentInput;
  v11 = sub_252E34104();
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  memcpy((v3 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentHomeAutomationIntent), __srca, 0x1F8uLL);
  *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_shouldCorrect) = 0;
  memcpy(v39, __dst, sizeof(v39));
  GEOLocationCoordinate2DMake(v39);
  memcpy(v40, (v3 + v9), 0x1F8uLL);
  memcpy((v3 + v9), v39, 0x1F8uLL);
  sub_2529353AC(__dst, v36);
  sub_25293847C(v40, &qword_27F5404C8, &unk_252E3FD60);
  v12 = *(v3 + v8);
  *(v3 + v8) = a2;

  if (qword_27F53F540 != -1)
  {
    swift_once();
  }

  v13 = sub_252E36AD4();
  __swift_project_value_buffer(v13, qword_27F544E68);
  sub_2529353AC(__dst, v36);
  v14 = sub_252E36AC4();
  v15 = sub_252E374C4();
  sub_252935408(__dst);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35 = v17;
    *v16 = 136315138;
    memcpy(v36, __dst, sizeof(v36));
    v18 = HomeAutomationIntent.description.getter();
    v20 = v19;
    sub_252935408(__dst);
    v21 = sub_252BE2CE0(v18, v20, &v35);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_252917000, v14, v15, "CorrectionFlow - init stored prevHomeAutomationIntent %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x2530AED00](v17, -1, -1);
    MEMORY[0x2530AED00](v16, -1, -1);
  }

  else
  {

    sub_252935408(__dst);
  }

  v22 = sub_252E36AC4();
  v23 = sub_252E374C4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v36 = v25;
    *v24 = 136315138;
    type metadata accessor for Service();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EA8, qword_252E51A90);
    sub_252BE3234(&qword_27F541EB0, type metadata accessor for Service);
    v26 = sub_252E36E54();
    v28 = v27;

    v29 = sub_252BE2CE0(v26, v28, v36);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_252917000, v22, v23, "CorrectionFlow - init stored undoIntents %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x2530AED00](v25, -1, -1);
    MEMORY[0x2530AED00](v24, -1, -1);
  }

  else
  {
  }

  v30 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v30 + 96), v36);

  sub_252927BEC(v36, v3 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_outputPublisher);
  v31 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v32 = *(v31 + 22);

  *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_catProvider) = v32;
  v33 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v33 + 136), v36);

  sub_252927BEC(v36, v3 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_outputGenerator);
  return v3;
}

uint64_t ControlHomeCorrectionFlow.on(correction:)(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543798, &unk_252E4E410);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v31 - v5;
  v7 = sub_252E34164();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v40, (v1 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_previousHomeAutomationIntent), sizeof(v40));
  memcpy(v41, (v1 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_previousHomeAutomationIntent), 0x1F8uLL);
  if (sub_252956B94(v41) == 1)
  {
    goto LABEL_58;
  }

  v12 = LOBYTE(v41[26]);
  if (LOBYTE(v41[26]) == 9)
  {
    goto LABEL_58;
  }

  v32 = v2;
  memcpy(v39, v40, sizeof(v39));
  sub_2529353AC(v39, v38);
  if (byte_2864AE158 <= 3u)
  {
    v15 = 7628147;
    v16 = 0xE600000000000000;
    v17 = 0x656C67676F74;
    if (byte_2864AE158 != 2)
    {
      v17 = 2003789939;
      v16 = 0xE400000000000000;
    }

    if (byte_2864AE158)
    {
      v15 = 7628135;
    }

    if (byte_2864AE158 <= 1u)
    {
      v14 = v15;
    }

    else
    {
      v14 = v17;
    }

    if (byte_2864AE158 <= 1u)
    {
      v13 = 0xE300000000000000;
    }

    else
    {
      v13 = v16;
    }
  }

  else if (byte_2864AE158 <= 5u)
  {
    if (byte_2864AE158 == 4)
    {
      v13 = 0xE500000000000000;
      v14 = 0x746E756F63;
    }

    else
    {
      v13 = 0x8000000252E678A0;
      v14 = 0xD000000000000011;
    }
  }

  else if (byte_2864AE158 == 6)
  {
    v13 = 0x8000000252E678C0;
    v14 = 0xD000000000000010;
  }

  else if (byte_2864AE158 == 7)
  {
    v13 = 0x8000000252E678E0;
    v14 = 0xD000000000000012;
  }

  else
  {
    v14 = 0x656E4F6863696877;
    v13 = 0xEF64656C69614673;
  }

  v18 = v32;
  if (v12 <= 3)
  {
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v19 = 0xE600000000000000;
        if (v14 != 0x656C67676F74)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v19 = 0xE400000000000000;
        if (v14 != 2003789939)
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
      if (v12)
      {
        v20 = 7628135;
      }

      else
      {
        v20 = 7628147;
      }

      v19 = 0xE300000000000000;
      if (v14 != v20)
      {
        goto LABEL_50;
      }
    }
  }

  else if (v12 <= 5)
  {
    if (v12 == 4)
    {
      v19 = 0xE500000000000000;
      if (v14 != 0x746E756F63)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v19 = 0x8000000252E678A0;
      if (v14 != 0xD000000000000011)
      {
        goto LABEL_50;
      }
    }
  }

  else if (v12 == 6)
  {
    v19 = 0x8000000252E678C0;
    if (v14 != 0xD000000000000010)
    {
      goto LABEL_50;
    }
  }

  else if (v12 == 7)
  {
    v19 = 0x8000000252E678E0;
    if (v14 != 0xD000000000000012)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v19 = 0xEF64656C69614673;
    if (v14 != 0x656E4F6863696877)
    {
      goto LABEL_50;
    }
  }

  if (v13 == v19)
  {

    sub_25293847C(v40, &qword_27F5404C8, &unk_252E3FD60);
    goto LABEL_51;
  }

LABEL_50:
  v21 = sub_252E37DB4();

  sub_25293847C(v40, &qword_27F5404C8, &unk_252E3FD60);
  if ((v21 & 1) == 0)
  {
LABEL_58:
    if (qword_27F53F540 != -1)
    {
      swift_once();
    }

    v30 = sub_252E36AD4();
    __swift_project_value_buffer(v30, qword_27F544E68);
    sub_252CC4050(0xD000000000000031, 0x8000000252E87860, 0xD000000000000074, 0x8000000252E878A0, 0x6572726F63286E6FLL, 0xEF293A6E6F697463, 110);
    return 0;
  }

LABEL_51:
  v22 = v1;
  sub_252E340E4();
  sub_252AB3FEC(v11, 1, v36);
  (*(v8 + 8))(v11, v7);
  memcpy(v37, v36, sizeof(v37));
  memcpy(v38, v36, sizeof(v38));
  if (sub_252956B94(v38) == 1)
  {
    if (qword_27F53F540 != -1)
    {
      swift_once();
    }

    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_27F544E68);
    v36[0] = 0;
    v36[1] = 0xE000000000000000;
    sub_252E379F4();

    v36[0] = 0xD000000000000028;
    v36[1] = 0x8000000252E87920;
    v24 = sub_252E340C4();
    MEMORY[0x2530AD570](v24);

    sub_252CC4050(v36[0], v36[1], 0xD000000000000074, 0x8000000252E878A0, 0x6572726F63286E6FLL, 0xEF293A6E6F697463, 116);

    return 0;
  }

  memcpy(v34, (v1 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentHomeAutomationIntent), sizeof(v34));
  memcpy((v1 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentHomeAutomationIntent), v37, 0x1F8uLL);
  memcpy(v35, v37, sizeof(v35));
  sub_2529353AC(v35, &v33);
  sub_25293847C(v34, &qword_27F5404C8, &unk_252E3FD60);
  v25 = sub_252E34104();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v6, v18, v25);
  (*(v26 + 56))(v6, 0, 1, v25);
  v27 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentInput;
  swift_beginAccess();
  sub_252B7B518(v6, v22 + v27);
  swift_endAccess();
  *(v22 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_shouldCorrect) = 1;
  if (qword_27F53F540 != -1)
  {
    swift_once();
  }

  v28 = sub_252E36AD4();
  __swift_project_value_buffer(v28, qword_27F544E68);
  sub_252CC3D90(0xD00000000000004CLL, 0x8000000252E87950, 0xD000000000000074, 0x8000000252E878A0);
  sub_25293847C(v37, &qword_27F5404C8, &unk_252E3FD60);
  return 1;
}

uint64_t ControlHomeCorrectionFlow.execute()(uint64_t a1)
{
  v2[857] = v1;
  v2[856] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437A8, &qword_252E4E438) - 8) + 64) + 15;
  v2[858] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437B0, &qword_252E4E440);
  v2[859] = v4;
  v5 = *(v4 - 8);
  v2[860] = v5;
  v6 = *(v5 + 64) + 15;
  v2[861] = swift_task_alloc();
  v7 = sub_252E33E14();
  v2[862] = v7;
  v8 = *(v7 - 8);
  v2[863] = v8;
  v9 = *(v8 + 64) + 15;
  v2[864] = swift_task_alloc();
  v10 = sub_252E34164();
  v2[865] = v10;
  v11 = *(v10 - 8);
  v2[866] = v11;
  v12 = *(v11 + 64) + 15;
  v2[867] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543798, &unk_252E4E410) - 8) + 64) + 15;
  v2[868] = swift_task_alloc();
  v14 = sub_252E34104();
  v2[869] = v14;
  v15 = *(v14 - 8);
  v2[870] = v15;
  v16 = *(v15 + 64) + 15;
  v2[871] = swift_task_alloc();
  v2[872] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BDFA88, 0, 0);
}

uint64_t sub_252BDFA88()
{
  v97 = v0;
  if (qword_27F53F540 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544E68);
  v2 = sub_252E36AC4();
  v3 = sub_252E374C4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_252917000, v2, v3, "CorrectionFlow executing...", v4, 2u);
    MEMORY[0x2530AED00](v4, -1, -1);
  }

  v5 = *(v0 + 6856);

  if (!*(v5 + 16))
  {
    v15 = *(*(v0 + 6856) + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_undoRequests);
    if (MEMORY[0x277D84F90] >> 62 && sub_252E378C4())
    {

      v16 = sub_2529FF6A8(MEMORY[0x277D84F90]);
    }

    else
    {

      v16 = MEMORY[0x277D84FA0];
    }

    v17 = *(v0 + 6856);
    v18 = sub_252A565B8(v15, v16, 0, 1, 0, 0, 0, 0);

    if (*(v17 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_shouldCorrect) != 1)
    {
      v38 = *(v0 + 6912);
      v39 = *(v0 + 6904);
      v40 = *(v0 + 6896);
      v41 = *(v0 + 6856);
      v92 = *(v0 + 6848);
      v42 = *(v41 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_outputGenerator + 24);
      v43 = *(v41 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_outputGenerator + 32);
      __swift_project_boxed_opaque_existential_1((v41 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_outputGenerator), v42);

      sub_252943C10(sub_252BE327C, v41, v42, v43, v0 + 6568);

      (*(v39 + 104))(v38, *MEMORY[0x277D5BF10], v40);
      v44 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_correctionsExitValue;
      swift_beginAccess();
      (*(v39 + 40))(v41 + v44, v38, v40);
      swift_endAccess();
      sub_252929E74(v41 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_outputPublisher, v0 + 6664);
      sub_252938414(v0 + 6568, v0 + 6616, &qword_27F542198, &qword_252E53790);
      v45 = swift_allocObject();
      v46 = *(v0 + 6632);
      v45[1] = *(v0 + 6616);
      v45[2] = v46;
      *(v45 + 41) = *(v0 + 6641);
      v47 = sub_252E331C4();
      v48 = *(v47 + 48);
      v49 = *(v47 + 52);
      swift_allocObject();
      *(v0 + 6824) = sub_252E331B4();
      sub_252E33AF4();

      sub_25293847C(v0 + 6568, &qword_27F542198, &qword_252E53790);
      goto LABEL_20;
    }

    v19 = *(v0 + 6856);
    v20 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentHomeAutomationIntent;
    memcpy((v0 + 6064), (v19 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentHomeAutomationIntent), 0x1F8uLL);
    memcpy((v0 + 16), (v19 + v20), 0x1F8uLL);
    if (sub_252956B94((v0 + 16)) == 1)
    {
LABEL_16:
      v8 = *(v0 + 6912);
      v9 = *(v0 + 6904);
      v10 = *(v0 + 6896);
      v11 = *(v0 + 6856);
      v26 = *(v0 + 6848);
      v13 = 0x8000000252E879E0;
      v14 = 0xD00000000000002CLL;
      goto LABEL_17;
    }

    v21 = *(v0 + 6960);
    v22 = *(v0 + 6952);
    v23 = *(v0 + 6944);
    v24 = *(v0 + 6856);
    v25 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentInput;
    swift_beginAccess();
    sub_252938414(v24 + v25, v23, &qword_27F543798, &unk_252E4E410);
    if ((*(v21 + 48))(v23, 1, v22) == 1)
    {
      sub_25293847C(*(v0 + 6944), &qword_27F543798, &unk_252E4E410);
      goto LABEL_16;
    }

    (*(*(v0 + 6960) + 32))(*(v0 + 6976), *(v0 + 6944), *(v0 + 6952));
    memcpy((v0 + 5056), (v0 + 6064), 0x1F8uLL);
    sub_2529353AC(v0 + 5056, v0 + 4552);
    if (_s22HomeAutomationInternal20IntentSelectionCacheC6sharedACSgvgZ_0())
    {
      v70 = *(v0 + 6976);
      v71 = *(v0 + 6936);
      v72 = *(v0 + 6928);
      v73 = *(v0 + 6920);
      sub_252E340E4();
      sub_252D73864(v71);

      (*(v72 + 8))(v71, v73);
    }

    v74 = *(v0 + 6976);
    v75 = *(v0 + 6968);
    v76 = *(v0 + 6960);
    v77 = *(v0 + 6952);
    memcpy(v96, (v0 + 16), 0x1F8uLL);
    (*(v76 + 16))(v75, v74, v77);
    memcpy((v0 + 4048), (v0 + 6064), 0x1F8uLL);
    sub_2529353AC(v0 + 4048, v0 + 1528);
    if (qword_27F53F880 != -1)
    {
      swift_once();
    }

    v78 = qword_27F575DA0;
    v79 = *(qword_27F575DA0 + 16);
    if (v79 < 0xB)
    {
      __break(1u);
    }

    else
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = v78;
      if (!isUniquelyReferenced_nonNull_native || v79 >= *(v78 + 3) >> 1)
      {
        v78 = sub_2529F8F68(isUniquelyReferenced_nonNull_native, v79 + 1, 1, v78);
        __dst[0] = v78;
      }

      sub_252B7DA94(11, 11, 1, &type metadata for PrioritizeSceneNameOverEvent, &off_2864BEE58);
      if (qword_27F53F430 == -1)
      {
        goto LABEL_38;
      }
    }

    swift_once();
LABEL_38:
    v81 = qword_27F575A98;
    v82 = qword_27F53F218;

    if (v82 != -1)
    {
      swift_once();
    }

    v83 = qword_27F5753E0;
    v84 = qword_27F53F8A0;

    if (v84 != -1)
    {
      swift_once();
    }

    v85 = *(v0 + 6968);
    v86 = *(v0 + 6960);
    v91 = *(v0 + 6952);
    v94 = *(v0 + 6976);
    v87 = *(v0 + 6856);
    v89 = *(v0 + 6848);
    v88 = qword_27F575DC0;
    type metadata accessor for IntentSelectionFlow();
    swift_allocObject();

    *(v0 + 6840) = sub_252D3FCBC(v96, v85, v81, v83, v88, v78);
    sub_252BE3234(&qword_27F543808, type metadata accessor for IntentSelectionFlow);

    sub_252E33AC4();

    sub_25293847C(v0 + 6064, &qword_27F5404C8, &unk_252E3FD60);
    (*(v86 + 8))(v94, v91);

    goto LABEL_20;
  }

  if (*(v5 + 16) != 1)
  {
    v28 = *(v0 + 6848);
    goto LABEL_19;
  }

  v6 = *(v0 + 6856);
  v7 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentHomeAutomationIntent;
  memcpy((v0 + 1024), (v6 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentHomeAutomationIntent), 0x1F8uLL);
  memcpy((v0 + 520), (v6 + v7), 0x1F8uLL);
  if (sub_252956B94((v0 + 520)) == 1 || (memcpy((v0 + 2032), (*(v0 + 6856) + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_previousHomeAutomationIntent), 0x1F8uLL), sub_252956B94((v0 + 2032)) == 1))
  {
    v8 = *(v0 + 6912);
    v9 = *(v0 + 6904);
    v10 = *(v0 + 6896);
    v11 = *(v0 + 6856);
    v12 = *(v0 + 6848);
    v13 = 0x8000000252E879A0;
    v14 = 0xD00000000000003BLL;
LABEL_17:
    *v8 = v14;
    v8[1] = v13;
    (*(v9 + 104))(v8, *MEMORY[0x277D5BF08], v10);
    v27 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_correctionsExitValue;
    swift_beginAccess();
    (*(v9 + 40))(v11 + v27, v8, v10);
    swift_endAccess();
LABEL_19:
    sub_252E33B24();
    goto LABEL_20;
  }

  memcpy(__dst, (v0 + 2032), sizeof(__dst));
  memcpy(v96, (v0 + 520), 0x1F8uLL);
  memcpy((v0 + 2536), (v0 + 1024), 0x1F8uLL);
  sub_2529353AC(v0 + 2536, v0 + 3040);
  sub_252A18750(v96, v0 + 5560);
  sub_2529353AC(v0 + 5560, v0 + 3544);
  v50 = sub_252E36AC4();
  v51 = sub_252E374C4();
  sub_252935408(v0 + 5560);
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    __dst[0] = v53;
    *v52 = 136315138;
    memcpy(v96, (v0 + 5560), 0x1F8uLL);
    v54 = HomeAutomationIntent.description.getter();
    v56 = sub_252BE2CE0(v54, v55, __dst);

    *(v52 + 4) = v56;
    _os_log_impl(&dword_252917000, v50, v51, "CorrectionFlow - created correction command, will send to RCH flow! \n%s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v53);
    MEMORY[0x2530AED00](v53, -1, -1);
    MEMORY[0x2530AED00](v52, -1, -1);
  }

  v57 = *(v0 + 6888);
  v58 = *(v0 + 6864);
  type metadata accessor for ControlHomeRCHStrategyAsync();
  *(v0 + 6832) = swift_allocObject();
  sub_252B79980((v0 + 5560), v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437D0, &qword_252E4E458);
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  swift_allocObject();
  sub_252E335D4();
  sub_252BE3234(&qword_27F5437D8, type metadata accessor for ControlHomeRCHStrategyAsync);
  sub_252E33A44();
  if (qword_27F53F720 != -1)
  {
    swift_once();
  }

  v62 = *(v0 + 6904);
  v63 = *(v0 + 6896);
  v64 = *(v0 + 6888);
  v65 = *(v0 + 6880);
  v66 = *(v0 + 6872);
  v67 = *(v0 + 6856);
  v90 = *(v0 + 6912);
  v93 = *(v0 + 6848);
  memcpy(v96, (v0 + 5560), 0x1F8uLL);
  v68 = sub_252AEFEB0();
  sub_252E33A34();

  (*(v65 + 8))(v64, v66);
  (*(v62 + 104))(v90, *MEMORY[0x277D5BF10], v63);
  v69 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_correctionsExitValue;
  swift_beginAccess();
  (*(v62 + 40))(v67 + v69, v90, v63);
  swift_endAccess();
  sub_252E33B14();

  sub_252935408(v0 + 5560);
  sub_25293847C(v0 + 1024, &qword_27F5404C8, &unk_252E3FD60);
LABEL_20:
  v29 = *(v0 + 6976);
  v30 = *(v0 + 6968);
  v31 = *(v0 + 6944);
  v32 = *(v0 + 6936);
  v33 = *(v0 + 6912);
  v34 = *(v0 + 6888);
  v35 = *(v0 + 6864);

  v36 = *(v0 + 8);

  return v36();
}

void sub_252BE0764(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  *(v1 + 16) = 1;
  memcpy(__srca, __src, sizeof(__srca));
  GEOLocationCoordinate2DMake(__srca);
  memcpy(v15, (v1 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentHomeAutomationIntent), sizeof(v15));
  memcpy((v1 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentHomeAutomationIntent), __srca, 0x1F8uLL);
  sub_2529353AC(__dst, v12);
  sub_25293847C(v15, &qword_27F5404C8, &unk_252E3FD60);
  if (qword_27F53F540 != -1)
  {
    swift_once();
  }

  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544E68);
  sub_2529353AC(__dst, v12);
  v4 = sub_252E36AC4();
  v5 = sub_252E374C4();
  sub_252935408(__dst);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    memcpy(v12, __dst, sizeof(v12));
    v8 = HomeAutomationIntent.description.getter();
    v10 = sub_252BE2CE0(v8, v9, &v11);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_252917000, v4, v5, "CorrectionFlow - Best HomeIntent for new request: \n%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2530AED00](v7, -1, -1);
    MEMORY[0x2530AED00](v6, -1, -1);
  }
}

uint64_t sub_252BE0950(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x2822009F8](sub_252BE0970, 0, 0);
}

uint64_t sub_252BE0970()
{
  sub_252938414(*(v0 + 96), v0 + 16, &qword_27F542198, &qword_252E53790);
  if (*(v0 + 56) == 1)
  {
    v1 = *(v0 + 16);
    if (qword_27F53F540 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 88);
    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544E68);
    sub_252E379F4();
    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    MEMORY[0x2530AD570](0xD000000000000030, 0x8000000252E87BE0);
    *(v0 + 80) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(*(v0 + 64), *(v0 + 72), 0xD000000000000074, 0x8000000252E878A0, 0x2865747563657865, 0xE900000000000029, 181);

    sub_252E33964();
    sub_252E33954();
  }

  else
  {
    sub_252927BEC((v0 + 16), *(v0 + 88));
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t ControlHomeCorrectionFlow.deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_correctionsExitValue;
  v2 = sub_252E33E14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_undoRequests);

  memcpy(v6, (v0 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_previousHomeAutomationIntent), sizeof(v6));
  sub_25293847C(v6, &qword_27F5404C8, &unk_252E3FD60);
  sub_25293847C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentInput, &qword_27F543798, &unk_252E4E410);
  memcpy(__dst, (v0 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentHomeAutomationIntent), sizeof(__dst));
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_outputPublisher));
  v4 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_catProvider);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_outputGenerator));
  return v0;
}

uint64_t ControlHomeCorrectionFlow.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_correctionsExitValue;
  v2 = sub_252E33E14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_undoRequests);

  memcpy(v8, (v0 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_previousHomeAutomationIntent), sizeof(v8));
  sub_25293847C(v8, &qword_27F5404C8, &unk_252E3FD60);
  sub_25293847C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentInput, &qword_27F543798, &unk_252E4E410);
  memcpy(__dst, (v0 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_currentHomeAutomationIntent), sizeof(__dst));
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_outputPublisher));
  v4 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_catProvider);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlHomeCorrectionFlow_outputGenerator));
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_252BE0E14(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return ControlHomeCorrectionFlow.execute()(a1);
}

uint64_t sub_252BE0EBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = sub_252E33E14();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_252BE0F4C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = sub_252E33E14();
  (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t sub_252BE1038(const void *a1, char *a2, char *a3)
{
  v4 = v3;
  v8 = sub_252E32E84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v58 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v57 = &v56 - v13;
  memcpy(v65, a1, sizeof(v65));
  *(v4 + 16) = 0;
  v14 = v4 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_correctionsExitValue;
  strcpy((v4 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_correctionsExitValue), "Initial value");
  *(v14 + 14) = -4864;
  v15 = *MEMORY[0x277D5BF08];
  v16 = sub_252E33E14();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  v17 = OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_previousHomeAutomationIntent;
  sub_25293DEE0(v66);
  memcpy((v4 + v17), v66, 0x1F8uLL);
  v18 = OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_currentInput;
  v19 = sub_252E34104();
  (*(*(v19 - 8) + 56))(v4 + v18, 1, 1, v19);
  memcpy((v4 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_currentHomeAutomationIntent), v66, 0x1F8uLL);
  *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_shouldCorrect) = 0;
  memcpy(v67, v65, sizeof(v67));
  GEOLocationCoordinate2DMake(v67);
  memcpy(v68, (v4 + v17), 0x1F8uLL);
  memcpy((v4 + v17), v67, 0x1F8uLL);
  sub_2529353AC(v65, v64);
  sub_25293847C(v68, &qword_27F5404C8, &unk_252E3FD60);
  v59 = v9;
  v20 = *(v9 + 16);
  v21 = a2;
  v20(v4 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_undoTriggerID, a2, v8);
  v61 = a3;
  v62 = v8;
  v20(v4 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_undoHomeID, a3, v8);
  if (qword_27F53F540 != -1)
  {
    swift_once();
  }

  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544E68);
  sub_2529353AC(v65, v64);
  v23 = sub_252E36AC4();
  v24 = sub_252E374C4();
  sub_252935408(v65);
  v25 = os_log_type_enabled(v23, v24);
  v60 = v21;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v63 = v27;
    *v26 = 136315138;
    memcpy(v64, v65, sizeof(v64));
    v28 = HomeAutomationIntent.description.getter();
    v56 = v20;
    v30 = v29;
    sub_252935408(v65);
    v31 = sub_252BE2CE0(v28, v30, &v63);
    v20 = v56;

    *(v26 + 4) = v31;
    _os_log_impl(&dword_252917000, v23, v24, "CorrectionFlow - init stored prevHomeAutomationIntent %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x2530AED00](v27, -1, -1);
    v21 = v60;
    MEMORY[0x2530AED00](v26, -1, -1);
  }

  else
  {

    sub_252935408(v65);
  }

  v33 = v57;
  v32 = v58;
  v34 = v62;
  v20(v57, v21, v62);
  v20(v32, v61, v34);
  v35 = sub_252E36AC4();
  v36 = sub_252E374C4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v64 = v58;
    *v37 = 136315394;
    LODWORD(v57) = v36;
    v38 = MEMORY[0x2530A92F0]();
    v40 = v39;
    v41 = *(v59 + 8);
    v41(v33, v62);
    v42 = sub_252BE2CE0(v38, v40, v64);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2080;
    v44 = MEMORY[0x2530A92F0](v43);
    v46 = v45;
    v41(v32, v62);
    v47 = sub_252BE2CE0(v44, v46, v64);

    *(v37 + 14) = v47;
    _os_log_impl(&dword_252917000, v35, v57, "CorrectionFlow - init stored \n undoTrigger %s\n undoHomeID %s", v37, 0x16u);
    v48 = v58;
    swift_arrayDestroy();
    v21 = v60;
    MEMORY[0x2530AED00](v48, -1, -1);
    v49 = v37;
    v34 = v62;
    MEMORY[0x2530AED00](v49, -1, -1);
  }

  else
  {

    v41 = *(v59 + 8);
    v41(v32, v34);
    v41(v33, v34);
  }

  v50 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v50 + 96), v64);

  sub_252927BEC(v64, v4 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_outputPublisher);
  v51 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v52 = *(v51 + 22);

  *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_catProvider) = v52;
  v53 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v53 + 136), v64);

  sub_252927BEC(v64, v4 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_outputGenerator);
  v54 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 29);

  *&v64[24] = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  *&v64[32] = &off_2864BA730;
  *v64 = v54;
  v41(v61, v34);
  v41(v21, v34);
  sub_252927BEC(v64, v4 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_patternProvider);
  return v4;
}

uint64_t AutomateHomeCorrectionFlow.on(correction:)()
{
  if (qword_27F53F540 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_27F544E68);
  sub_252CC4050(0xD000000000000031, 0x8000000252E87860, 0xD000000000000074, 0x8000000252E878A0, 0x6572726F63286E6FLL, 0xEF293A6E6F697463, 279);
  return 0;
}

uint64_t sub_252BE1848(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  v5 = *v4;
  sub_252BE3234(a3, a4);
  return sub_252E33614();
}

uint64_t AutomateHomeCorrectionFlow.execute()(uint64_t a1)
{
  v2[39] = a1;
  v2[40] = v1;
  v3 = sub_252E32E84();
  v2[41] = v3;
  v4 = *(v3 - 8);
  v2[42] = v4;
  v5 = *(v4 + 64) + 15;
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BE19B4, 0, 0);
}

uint64_t sub_252BE19B4()
{
  if (!*(*(v0 + 40) + 16))
  {
    type metadata accessor for HomeStore();
    v2 = static HomeStore.shared.getter();
    v3 = sub_2529D8DC0();

    if (v3 >> 62)
    {
      goto LABEL_43;
    }

    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
LABEL_47:
      v48 = *(v0 + 39);

      goto LABEL_48;
    }

LABEL_5:
    v5 = 0;
    v57 = OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_undoHomeID;
    v59 = *(v0 + 40);
    v6 = *(v0 + 42);
    v61 = v3 & 0xFFFFFFFFFFFFFF8;
    v63 = v3 & 0xC000000000000001;
    v66 = (v6 + 16);
    v67 = v0;
    v68 = (v6 + 8);
    while (1)
    {
      if (v63)
      {
        v8 = MEMORY[0x2530ADF00](v5, v3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          v22 = v0;

LABEL_21:
          v0 = v67;

          v23 = *&v72[OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate];
          *(v67 + 47) = v23;
          v24 = v23;

          v55 = v24;
          v25 = [v24 triggers];
          sub_252BE3388();
          v3 = sub_252E37264();

          if (v3 >> 62)
          {
            v26 = sub_252E378C4();
            if (v26)
            {
              goto LABEL_23;
            }

LABEL_46:

            goto LABEL_47;
          }

          v26 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v26)
          {
            goto LABEL_46;
          }

LABEL_23:
          v27 = 0;
          v58 = OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_undoTriggerID;
          v60 = *(v67 + 40);
          v70 = v3 & 0xC000000000000001;
          v62 = v3;
          v64 = v3 & 0xFFFFFFFFFFFFFF8;
          v56 = v26;
          while (1)
          {
            if (v70)
            {
              v28 = MEMORY[0x2530ADF00](v27, v3);
            }

            else
            {
              if (v27 >= *(v64 + 16))
              {
                goto LABEL_42;
              }

              v28 = *(v3 + 8 * v27 + 32);
            }

            *(v0 + 48) = v28;
            v29 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            v31 = *(v0 + 44);
            v30 = *(v0 + 45);
            v32 = *(v0 + 41);
            v72 = v28;
            v33 = [v28 uniqueIdentifier];
            sub_252E32E64();

            v34 = MEMORY[0x2530A92F0]();
            v36 = v35;
            v22(v30, v32);
            v37 = v65(v31, v60 + v58, v32);
            v38 = MEMORY[0x2530A92F0](v37);
            v40 = v39;
            v22(v31, v32);
            if (v34 == v38 && v36 == v40)
            {

LABEL_35:
              v71 = v22;

              if (qword_27F53F540 != -1)
              {
                swift_once();
              }

              v42 = *(v67 + 43);
              v43 = *(v67 + 41);
              v44 = sub_252E36AD4();
              *(v67 + 49) = __swift_project_value_buffer(v44, qword_27F544E68);
              sub_252E379F4();

              v45 = [v72 uniqueIdentifier];
              sub_252E32E64();

              sub_252BE3234(&qword_27F5404A8, MEMORY[0x277CC95F0]);
              v46 = sub_252E37D94();
              MEMORY[0x2530AD570](v46);

              v71(v42, v43);
              MEMORY[0x2530AD570](41, 0xE100000000000000);
              sub_252CC3D90(0xD000000000000024, 0x8000000252E87A10, 0xD000000000000074, 0x8000000252E878A0);

              *(v67 + 2) = v67;
              *(v67 + 3) = sub_252BE20D4;
              v47 = swift_continuation_init();
              *(v67 + 17) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543D70, &unk_252E51750);
              *(v67 + 10) = MEMORY[0x277D85DD0];
              *(v67 + 11) = 1107296256;
              *(v67 + 12) = sub_252BE25A0;
              *(v67 + 13) = &block_descriptor_16;
              *(v67 + 14) = v47;
              [v55 removeTrigger:v72 completionHandler:v67 + 80];

              return MEMORY[0x282200938](v67 + 16);
            }

            v41 = sub_252E37DB4();

            v3 = v62;
            if (v41)
            {
              goto LABEL_35;
            }

            ++v27;
            v0 = v67;
            if (v29 == v56)
            {
              goto LABEL_46;
            }
          }

LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          v4 = sub_252E378C4();
          if (!v4)
          {
            goto LABEL_47;
          }

          goto LABEL_5;
        }
      }

      else
      {
        if (v5 >= *(v61 + 16))
        {
          __break(1u);
          goto LABEL_41;
        }

        v7 = *(v3 + 8 * v5 + 32);

        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_18;
        }
      }

      v69 = v9;
      v10 = v3;
      v11 = *(v0 + 46);
      v12 = *(v0 + 41);
      v72 = v8;
      v13 = MEMORY[0x2530A92F0]();
      v15 = v14;
      v65 = *v66;
      v16 = (*v66)(v11, v59 + v57, v12);
      v17 = MEMORY[0x2530A92F0](v16);
      v19 = v18;
      v0 = *v68;
      (*v68)(v11, v12);
      if (v13 == v17 && v15 == v19)
      {
        goto LABEL_19;
      }

      v21 = sub_252E37DB4();

      v3 = v10;
      if (v21)
      {
        v22 = v0;
        goto LABEL_21;
      }

      ++v5;
      v0 = v67;
      if (v69 == v4)
      {
        goto LABEL_47;
      }
    }
  }

  v1 = *(v0 + 39);
LABEL_48:
  sub_252E33B24();
  v50 = *(v0 + 45);
  v49 = *(v0 + 46);
  v52 = *(v0 + 43);
  v51 = *(v0 + 44);

  v53 = *(v0 + 1);

  return v53();
}

uint64_t sub_252BE20D4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 400) = v2;
  if (v2)
  {
    v3 = sub_252BE23F4;
  }

  else
  {
    v3 = sub_252BE21E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252BE21E4()
{
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 376);
  v4 = *(v0 + 312);
  v5 = *(v0 + 320);
  sub_252CC3D90(0xD000000000000016, 0x8000000252E87A90, 0xD000000000000074, 0x8000000252E878A0);
  v6 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_outputGenerator + 24);
  v7 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_outputGenerator + 32);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_outputGenerator), v6);

  sub_252943C10(sub_252BE3400, v5, v6, v7, v0 + 144);

  sub_252929E74(v5 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_outputPublisher, v0 + 240);
  sub_252938414(v0 + 144, v0 + 192, &qword_27F542198, &qword_252E53790);
  v8 = swift_allocObject();
  v9 = *(v0 + 208);
  v8[1] = *(v0 + 192);
  v8[2] = v9;
  *(v8 + 41) = *(v0 + 217);
  v10 = sub_252E331C4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v0 + 304) = sub_252E331B4();
  sub_252E33AF4();

  sub_25293847C(v0 + 144, &qword_27F542198, &qword_252E53790);
  v14 = *(v0 + 360);
  v13 = *(v0 + 368);
  v16 = *(v0 + 344);
  v15 = *(v0 + 352);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_252BE23F4()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[47];
  v4 = v0[48];
  v5 = v0[39];
  swift_willThrow();
  sub_252E379F4();
  v0[35] = 0;
  v0[36] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000025, 0x8000000252E87A40);
  v0[37] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC4050(v0[35], v0[36], 0xD000000000000074, 0x8000000252E878A0, 0x2865747563657865, 0xE900000000000029, 326);

  sub_2529515FC(6, 0, 0xD00000000000001FLL, 0x8000000252E87A70);
  sub_252E33B24();

  v7 = v0[45];
  v6 = v0[46];
  v9 = v0[43];
  v8 = v0[44];

  v10 = v0[1];

  return v10();
}

uint64_t sub_252BE25A0(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_252BE264C(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x2822009F8](sub_252BE266C, 0, 0);
}

uint64_t sub_252BE266C()
{
  sub_252938414(*(v0 + 96), v0 + 16, &qword_27F542198, &qword_252E53790);
  if (*(v0 + 56) == 1)
  {
    v1 = *(v0 + 16);
    if (qword_27F53F540 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 88);
    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544E68);
    sub_252E379F4();
    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    MEMORY[0x2530AD570](0xD000000000000030, 0x8000000252E87BE0);
    *(v0 + 80) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(*(v0 + 64), *(v0 + 72), 0xD000000000000074, 0x8000000252E878A0, 0x2865747563657865, 0xE900000000000029, 317);

    sub_252E33964();
    sub_252E33954();
  }

  else
  {
    sub_252927BEC((v0 + 16), *(v0 + 88));
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t AutomateHomeCorrectionFlow.deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_correctionsExitValue;
  v2 = sub_252E33E14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_undoTriggerID;
  v4 = sub_252E32E84();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_undoHomeID, v4);
  memcpy(v8, (v0 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_previousHomeAutomationIntent), sizeof(v8));
  sub_25293847C(v8, &qword_27F5404C8, &unk_252E3FD60);
  sub_25293847C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_currentInput, &qword_27F543798, &unk_252E4E410);
  memcpy(__dst, (v0 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_currentHomeAutomationIntent), sizeof(__dst));
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_outputPublisher));
  v6 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_catProvider);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_outputGenerator));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_patternProvider));
  return v0;
}

uint64_t AutomateHomeCorrectionFlow.__deallocating_deinit()
{
  AutomateHomeCorrectionFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_252BE2A48@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  swift_beginAccess();
  v6 = sub_252E33E14();
  return (*(*(v6 - 8) + 16))(a2, v4 + v5, v6);
}

uint64_t sub_252BE2AD0()
{
  if (qword_27F53F540 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_27F544E68);
  sub_252CC4050(0xD000000000000031, 0x8000000252E87860, 0xD000000000000074, 0x8000000252E878A0, 0x6572726F63286E6FLL, 0xEF293A6E6F697463, 279);
  return 0;
}

uint64_t sub_252BE2B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2529C9ED8;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_252BE2C44(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25294B954;

  return AutomateHomeCorrectionFlow.execute()(a1);
}

uint64_t sub_252BE2CE0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_252BE2DAC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_252974E7C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_252BE2DAC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_252BE2EB8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_252E37A84();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_252BE2EB8(uint64_t a1, unint64_t a2)
{
  v4 = sub_252BE2F04(a1, a2);
  sub_252BE3034(&unk_2864A0BF8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_252BE2F04(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2529AFD98(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_252E37A84();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_252E370E4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2529AFD98(v10, 0);
        result = sub_252E379B4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_252BE3034(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_252BE3120(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_252BE3120(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540E68, &qword_252E3F1E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_252BE3234(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252BE32C8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return sub_252BE0950(a1, v1 + 16);
}

unint64_t sub_252BE3388()
{
  result = qword_27F541320;
  if (!qword_27F541320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F541320);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  if (*(v0 + 56))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_252BE3498(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25294B954;

  return sub_252BE264C(a1, v1 + 16);
}

unint64_t sub_252BE3538()
{
  result = qword_27F543D78;
  if (!qword_27F543D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543D78);
  }

  return result;
}

uint64_t sub_252BE358C(uint64_t a1)
{
  result = sub_252BE3234(&qword_27F541E38, type metadata accessor for ControlHomeCorrectionFlow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252BE362C(uint64_t a1)
{
  result = sub_252BE3234(&qword_27F543D80, type metadata accessor for AutomateHomeCorrectionFlow);
  *(a1 + 8) = result;
  return result;
}

void sub_252BE36E4()
{
  v0 = sub_252E33E14();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_252B7D9D8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_252BE3814()
{
  v0 = sub_252E33E14();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_252E32E84();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_252B7D9D8();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_252BE3998()
{
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_27F544DA8);
  sub_252CC4050(0xD00000000000004CLL, 0x8000000252E87C50, 0xD000000000000088, 0x8000000252E87CA0, 0xD000000000000016, 0x8000000252E87D30, 58);

  return sub_252E33A04();
}

uint64_t sub_252BE3A64(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2529C9EDC;

  return sub_252BE481C(a1);
}

uint64_t sub_252BE3B0C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2529C9ED8;

  return (sub_252BE4BC0)(a1, a2);
}

uint64_t sub_252BE3BD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2529C8CCC;

  return sub_252BE481C(a1);
}

uint64_t sub_252BE3C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ControlHomeRCHStrategyAsync();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_252BE3CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B498] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for ControlHomeRCHStrategyAsync();
  *v11 = v5;
  v11[1] = sub_25294B954;

  return MEMORY[0x2821B9D90](a1, a2, a3, v12, a5);
}

uint64_t sub_252BE3D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B490] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for ControlHomeRCHStrategyAsync();
  *v11 = v5;
  v11[1] = sub_25294B954;

  return MEMORY[0x2821B9D88](a1, a2, a3, v12, a5);
}

uint64_t sub_252BE3E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B488] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for ControlHomeRCHStrategyAsync();
  *v11 = v5;
  v11[1] = sub_25294B954;

  return MEMORY[0x2821B9D80](a1, a2, a3, v12, a5);
}

uint64_t sub_252BE3F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B480] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for ControlHomeRCHStrategyAsync();
  *v13 = v6;
  v13[1] = sub_25293B808;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_252BE400C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B6D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for ControlHomeRCHStrategyAsync();
  *v13 = v6;
  v13[1] = sub_25294B954;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_252BE40E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25296BC70;

  return (sub_252BE4BC0)(a1, a2);
}

uint64_t sub_252BE419C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E33764();
  v69 = *(v4 - 8);
  v70 = v4;
  v5 = *(v69 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v66 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v65 = &v63 - v8;
  v9 = sub_252E34164();
  v67 = *(v9 - 8);
  v68 = v9;
  v10 = *(v67 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v64 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v63 - v13;
  v15 = type metadata accessor for HomeAutomationError();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v63 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v63 - v24);
  MEMORY[0x28223BE20](v23);
  v27 = &v63 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543DD0, &unk_252E51CC0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v32 = &v63 - v31;
  v33 = (&v63 + *(v30 + 56) - v31);
  sub_252BE533C(a1, &v63 - v31);
  sub_252BE533C(a2, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        goto LABEL_31;
      }

      sub_252BE533C(v32, v19);
      v35 = *v19;
      if (swift_getEnumCaseMultiPayload() != 5)
      {

        goto LABEL_31;
      }

      v36 = *v33;
      sub_25293F638(0, &qword_27F543DD8, 0x277D82BB8);
      v37 = sub_252E37694();

      goto LABEL_41;
    }

    if (EnumCaseMultiPayload == 6)
    {
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_31;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 7)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_252BE533C(v32, v25);
        v49 = *v25;
        v48 = v25[1];
        if (swift_getEnumCaseMultiPayload() != 1)
        {

          goto LABEL_31;
        }

        if (v49 == *v33 && v48 == v33[1])
        {
          v37 = 1;
        }

        else
        {
          v51 = v33[1];
          v37 = sub_252E37DB4();
        }
      }

      else
      {
        sub_252BE533C(v32, v27);
        if (swift_getEnumCaseMultiPayload())
        {
          (*(v67 + 8))(v27, v68);
LABEL_31:
          sub_252BE53A0(v32);
          v37 = 0;
          return v37 & 1;
        }

        v53 = v67;
        v52 = v68;
        v54 = *(v67 + 32);
        v54(v14, v27, v68);
        v55 = v64;
        v54(v64, v33, v52);
        sub_252BE5464(&qword_27F543DE0, 255, MEMORY[0x277D5C170]);
        v56 = sub_252E36E74();
        v58 = v57;
        if (v56 == sub_252E36E74() && v58 == v59)
        {
          v37 = 1;
        }

        else
        {
          v37 = sub_252E37DB4();
        }

        v61 = *(v53 + 8);
        v61(v55, v52);
        v61(v14, v52);
      }

LABEL_41:
      sub_252BE5408(v32);
      return v37 & 1;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_252BE533C(v32, v22);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v69 + 8))(v22, v70);
        goto LABEL_31;
      }

      v38 = v69;
      v39 = *(v69 + 32);
      v40 = v65;
      v41 = v22;
      v42 = v70;
      v39(v65, v41, v70);
      v43 = v66;
      v39(v66, v33, v42);
      v44 = sub_252E33754();
      v46 = v45;
      if (v44 == sub_252E33754() && v46 == v47)
      {
        v37 = 1;
      }

      else
      {
        v37 = sub_252E37DB4();
      }

      v60 = *(v38 + 8);
      v60(v43, v42);
      v60(v40, v42);
      goto LABEL_41;
    }

    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_31;
    }

    sub_252BE5408(v33);
  }

  sub_252BE5408(v32);
  v37 = 1;
  return v37 & 1;
}

uint64_t sub_252BE481C(uint64_t a1)
{
  v1[128] = a1;
  v2 = sub_252E34164();
  v1[129] = v2;
  v3 = *(v2 - 8);
  v1[130] = v3;
  v4 = *(v3 + 64) + 15;
  v1[131] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BE48DC, 0, 0);
}

uint64_t sub_252BE48DC()
{
  v15 = v0;
  sub_252AB3FEC(v0[128], 0, v0 + 2);
  if (sub_252956B94(v0 + 2) == 1)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v1 = v0[131];
    v2 = v0[130];
    v3 = v0[129];
    v4 = v0[128];
    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544DA8);
    sub_252E379F4();

    v14[0] = 0xD00000000000002ELL;
    v14[1] = 0x8000000252E87DD0;
    v6 = *(v2 + 16);
    v6(v1, v4, v3);
    v7 = sub_252AD2138(v1);
    MEMORY[0x2530AD570](v7);

    sub_252CC3D90(0xD00000000000002ELL, 0x8000000252E87DD0, 0xD000000000000088, 0x8000000252E87CA0);

    sub_2529515FC(0, 4, 0xD00000000000001BLL, 0x8000000252E87E00);
    type metadata accessor for HomeAutomationError();
    sub_252BE5464(&qword_27F540430, 255, type metadata accessor for HomeAutomationError);
    swift_allocError();
    v6(v8, v4, v3);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[131];
    memcpy(v14, v0 + 2, sizeof(v14));
    v12 = sub_252AEFEB0();
    memcpy(v0 + 65, v14, 0x1F8uLL);
    sub_252935408((v0 + 65));

    v13 = v0[1];

    return v13(v12);
  }
}

uint64_t sub_252BE4BC0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_252E336F4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BE4C80, 0, 0);
}

uint64_t sub_252BE4C80()
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v15 = v0[4];
  v4 = v0[2];
  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544C70);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E87D90);
  v6 = [v3 description];
  v7 = sub_252E36F34();
  v9 = v8;

  MEMORY[0x2530AD570](v7, v9);

  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000088, 0x8000000252E87CA0);

  v10 = objc_allocWithZone(type metadata accessor for ControlHomeIntentHandler());

  [v10 init];
  type metadata accessor for ControlHomeIntent();
  v11 = v3;
  sub_252E336E4();
  sub_252E33784();
  v12 = sub_252E33774();
  (*(v2 + 8))(v1, v15);

  v13 = v0[1];

  return v13(v12);
}

uint64_t dispatch thunk of ControlHomeRCHStrategyAsync.makeIntentFromParse(parse:currentIntent:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 96);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25294B7BC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of ControlHomeRCHStrategyAsync.makeIntentExecutionBehavior(app:intent:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 104);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25296BC70;

  return v10(a1, a2);
}

uint64_t type metadata accessor for HomeAutomationError()
{
  result = qword_27F543DC0;
  if (!qword_27F543DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252BE527C()
{
  result = sub_252E34164();
  if (v1 <= 0x3F)
  {
    result = sub_252E33764();
    if (v2 <= 0x3F)
    {
      result = sub_25293F638(319, &qword_27F543428, 0x277CD3D40);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ControlHomeIntent();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_252BE533C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeAutomationError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252BE53A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543DD0, &unk_252E51CC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252BE5408(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252BE5464(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_252BE54AC(unint64_t a1)
{
  v58 = sub_252E36CA4();
  v2 = *(v58 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v58);
  v57 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_252E36D04();
  v5 = *(v56 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v56);
  v55 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_61;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = 0;
    v53 = a1 & 0xFFFFFFFFFFFFFF8;
    v54 = a1 & 0xC000000000000001;
    v46[0] = a1;
    v48 = a1 + 32;
    v51 = (v2 + 1);
    v52 = v65;
    v50 = (v5 + 8);
    v2 = &unk_2814B0000;
    v49 = xmmword_252E3E810;
    v11 = MEMORY[0x277D84F90];
    v47 = v8;
    while (1)
    {
      if (v54)
      {
        v12 = MEMORY[0x2530ADF00](v10, v46[0]);
        v13 = __OFADD__(v10, 1);
        v14 = v10 + 1;
        if (v13)
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v10 >= *(v53 + 16))
        {
          goto LABEL_56;
        }

        v12 = *(v48 + 8 * v10);
        v13 = __OFADD__(v10, 1);
        v14 = v10 + 1;
        if (v13)
        {
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          v8 = sub_252E378C4();
          goto LABEL_3;
        }
      }

      v60 = v14;
      v61 = v12;
      v15 = type metadata accessor for HomeStore();
      if (qword_2814B0DB8 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      v16 = v2[440];
      v62 = v11;
      if (v16)
      {
      }

      else
      {
        type metadata accessor for LifeCycleManager();
        swift_allocObject();
        v16 = sub_252D7EAE8();
        v17 = v2[440];
        v2[440] = v16;

        sub_252D7E92C();
      }

      sub_252E37614();
      v18 = swift_allocObject();
      v59 = v15;
      *(v18 + 16) = v15;
      v19 = *(v16 + 16);
      v20 = swift_allocObject();
      *(v20 + 16) = v16;
      *(v20 + 24) = v49;
      *(v20 + 40) = 0xE900000000000065;
      *(v20 + 48) = sub_252990558;
      *(v20 + 56) = v18;
      v65[2] = sub_252990560;
      v65[3] = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v65[0] = sub_252AD686C;
      v65[1] = &block_descriptor_17;
      v21 = _Block_copy(aBlock);

      v22 = v55;
      sub_252E36CD4();
      v63 = v9;
      sub_252BE7468(qword_2814B0298, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
      sub_2529E6488(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
      v24 = v57;
      v23 = v58;
      sub_252E37824();
      MEMORY[0x2530ADA30](0, v22, v24, v21);
      _Block_release(v21);
      (*v51)(v24, v23);
      (*v50)(v22, v56);

      if (qword_2814B0E18 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      v25 = v62;
      if (qword_2814B0E30)
      {
        v26 = qword_2814B0E30;
      }

      else
      {
        v27 = [objc_allocWithZone(v59) init];
        v28 = qword_2814B0E30;
        qword_2814B0E30 = v27;
        v26 = v27;
      }

      sub_252E37614();
      v29 = v61;
      v5 = sub_2529F3704(v61);

      a1 = v5 >> 62;
      if (v5 >> 62)
      {
        v9 = sub_252E378C4();
      }

      else
      {
        v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v30 = v25 >> 62;
      if (v25 >> 62)
      {
        v44 = sub_252E378C4();
        v32 = v44 + v9;
        if (__OFADD__(v44, v9))
        {
LABEL_52:
          __break(1u);
          return v9;
        }
      }

      else
      {
        v31 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v32 = v31 + v9;
        if (__OFADD__(v31, v9))
        {
          goto LABEL_52;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v30)
        {
          goto LABEL_31;
        }

        v2 = (v25 & 0xFFFFFFFFFFFFFF8);
        if (v32 <= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v30)
        {
LABEL_31:
          sub_252E378C4();
          goto LABEL_32;
        }

        v2 = (v25 & 0xFFFFFFFFFFFFFF8);
      }

      v33 = v2[2];
LABEL_32:
      v62 = sub_252E37A54();
      v2 = (v62 & 0xFFFFFFFFFFFFFF8);
LABEL_33:
      v34 = v2[2];
      v35 = v2[3];
      if (a1)
      {
        v36 = sub_252E378C4();
        if (!v36)
        {
LABEL_5:

          v10 = v60;
          v11 = v62;
          if (v9 > 0)
          {
            goto LABEL_57;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v36 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v36)
        {
          goto LABEL_5;
        }
      }

      if (((v35 >> 1) - v34) < v9)
      {
        goto LABEL_58;
      }

      v37 = &v2[v34 + 4];
      if (a1)
      {
        if (v36 < 1)
        {
          goto LABEL_60;
        }

        a1 = sub_2529E6488(&qword_27F543610, &qword_27F543608, &unk_252E4D550);
        for (i = 0; i != v36; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543608, &unk_252E4D550);
          v39 = sub_2529FBE00(aBlock, i, v5);
          v41 = *v40;

          (v39)(aBlock, 0);
          *(v37 + 8 * i) = v41;
        }
      }

      else
      {
        a1 = v5 & 0xFFFFFFFFFFFFFF8;
        type metadata accessor for Home();
        swift_arrayInitWithCopy();
      }

      v10 = v60;
      v11 = v62;
      if (v9 >= 1)
      {
        v42 = v2[2];
        v13 = __OFADD__(v42, v9);
        v43 = v42 + v9;
        if (v13)
        {
          goto LABEL_59;
        }

        v2[2] = v43;
      }

LABEL_6:
      v9 = MEMORY[0x277D84F90];
      v2 = &unk_2814B0000;
      if (v10 == v47)
      {
        return v11;
      }
    }
  }

  return v9;
}

uint64_t sub_252BE5C8C(uint64_t a1, uint64_t a2)
{
  v3[53] = a2;
  v3[54] = v2;
  v3[52] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540570, &unk_252E50EE0) - 8) + 64) + 15;
  v3[55] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540788, &unk_252E3DC30);
  v3[56] = v5;
  v6 = *(v5 - 8);
  v3[57] = v6;
  v3[58] = *(v6 + 64);
  v3[59] = swift_task_alloc();
  v7 = sub_252E33DB4();
  v3[60] = v7;
  v8 = *(v7 - 8);
  v3[61] = v8;
  v9 = *(v8 + 64) + 15;
  v3[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BE5DF8, 0, 0);
}

uint64_t sub_252BE5DF8()
{
  if (qword_27F53F488 != -1)
  {
    swift_once();
  }

  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[60];
  v4 = v0[56];
  v5 = v0[53];
  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544C40);
  sub_252CC3D90(0xD00000000000004BLL, 0x8000000252E87E70, 0xD000000000000099, 0x8000000252E87EC0);
  sub_252E34044();
  v7 = sub_252E33DA4();
  v9 = v8;
  (*(v2 + 8))(v1, v3);
  if (v7 == 0x737265746C6966 && v9 == 0xE700000000000000)
  {
  }

  else
  {
    v10 = sub_252E37DB4();

    if ((v10 & 1) == 0)
    {
      v38 = v0[54];
      v37 = v0[55];
      v39 = v0[52];
      type metadata accessor for ErrorFilingHelper();
      inited = swift_initStackObject();
      v41 = sub_252E36884();
      v42 = *(v41 + 48);
      v43 = *(v41 + 52);
      swift_allocObject();
      *(inited + 16) = sub_252E36874();
      v44 = sub_252E36834();
      (*(*(v44 - 8) + 56))(v37, 1, 1, v44);
      sub_25295ADB4(0xD000000000000042, 0x8000000252E87F60, 0x4F6E776F6E6B6E55, 0xEE00656D6F637475, 0xD000000000000027, 0x8000000252E51CD0, v37);

      sub_25293847C(v37, &qword_27F540570, &unk_252E50EE0);
      sub_252929E74(v38 + 24, (v0 + 2));
      v45 = v0[5];
      v46 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v45);
      v47 = *(v38 + 16);

      sub_252943BD0(sub_252BE74B0, v47, 1, v45, v46);

      __swift_destroy_boxed_opaque_existential_1(v0 + 2);
      goto LABEL_15;
    }
  }

  v11 = v0[56];
  v12 = v0[53];
  v13 = sub_252E34034();
  v14 = [v13 unsupportedReason];

  v15 = sub_252E24DB4(v14);
  if (v16)
  {
    goto LABEL_8;
  }

  if (v15 != 1)
  {
    if (v15 == 2)
    {
      v49 = v0[54];
      v48 = v0[55];
      v50 = v0[52];
      type metadata accessor for ErrorFilingHelper();
      v51 = swift_initStackObject();
      v52 = sub_252E36884();
      v53 = *(v52 + 48);
      v54 = *(v52 + 52);
      swift_allocObject();
      *(v51 + 16) = sub_252E36874();
      v55 = sub_252E36834();
      (*(*(v55 - 8) + 56))(v48, 1, 1, v55);
      sub_25295ADB4(0xD000000000000044, 0x8000000252E88010, 0xD000000000000015, 0x8000000252E88060, 0xD000000000000027, 0x8000000252E51CD0, v48);

      sub_25293847C(v48, &qword_27F540570, &unk_252E50EE0);
      sub_252929E74(v49 + 24, (v0 + 12));
      v56 = v0[15];
      v57 = v0[16];
      __swift_project_boxed_opaque_existential_1(v0 + 12, v56);
      v58 = *(v49 + 16);

      sub_252943BD0(sub_252BE73A4, v58, 1, v56, v57);

      __swift_destroy_boxed_opaque_existential_1(v0 + 12);
      goto LABEL_15;
    }

    if (v15 == 3)
    {
      v29 = v0[58];
      v28 = v0[59];
      v30 = v0[56];
      v31 = v0[57];
      v33 = v0[53];
      v32 = v0[54];
      v91 = v0[52];
      sub_252929E74(v32 + 24, (v0 + 32));
      v34 = v0[35];
      v90 = v0[36];
      __swift_project_boxed_opaque_existential_1(v0 + 32, v34);
      (*(v31 + 16))(v28, v33, v30);
      v35 = (*(v31 + 80) + 24) & ~*(v31 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = v32;
      (*(v31 + 32))(v36 + v35, v28, v30);

      sub_252943BD0(sub_252BE73D0, v36, 1, v34, v90);

      __swift_destroy_boxed_opaque_existential_1(v0 + 32);
      goto LABEL_15;
    }

LABEL_8:
    v18 = v0[54];
    v17 = v0[55];
    v19 = v0[52];
    type metadata accessor for ErrorFilingHelper();
    v20 = swift_initStackObject();
    v21 = sub_252E36884();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    *(v20 + 16) = sub_252E36874();
    v24 = sub_252E36834();
    (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
    sub_25295ADB4(0xD000000000000037, 0x8000000252E87FB0, 0xD00000000000001ALL, 0x8000000252E87FF0, 0xD000000000000027, 0x8000000252E51CD0, v17);

    sub_25293847C(v17, &qword_27F540570, &unk_252E50EE0);
    sub_252929E74(v18 + 24, (v0 + 7));
    v25 = v0[10];
    v26 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v25);
    v27 = *(v18 + 16);

    sub_252943BD0(sub_252BE7380, v27, 1, v25, v26);

    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
LABEL_15:
    v59 = v0[62];
    v60 = v0[59];
    v61 = v0[55];

    v62 = v0[1];
LABEL_29:

    return v62();
  }

  v63 = v0[56];
  v64 = v0[53];
  v65 = sub_252E34024();
  v66 = [v65 filters];

  if (!v66)
  {
    v74 = v0[55];
    sub_252CC4050(0xD000000000000059, 0x8000000252E88080, 0xD000000000000099, 0x8000000252E87EC0, 0xD00000000000002ALL, 0x8000000252E880E0, 44);
    type metadata accessor for ErrorFilingHelper();
    v75 = swift_initStackObject();
    v76 = sub_252E36884();
    v77 = *(v76 + 48);
    v78 = *(v76 + 52);
    swift_allocObject();
    *(v75 + 16) = sub_252E36874();
    v79 = "alueOutput(resolveRecord:)";
    v80 = sub_252E36834();
    (*(*(v80 - 8) + 56))(v74, 1, 1, v80);
    v81 = 0xD000000000000059;
LABEL_28:
    sub_25295ADB4(v81, v79 | 0x8000000000000000, 0x4F6E776F6E6B6E55, 0xEE00656D6F637475, 0xD000000000000027, 0x8000000252E51CD0, v74);

    sub_25293847C(v74, &qword_27F540570, &unk_252E50EE0);
    type metadata accessor for HomeAutomationError();
    sub_252BE7468(&qword_27F540430, type metadata accessor for HomeAutomationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v87 = v0[62];
    v88 = v0[59];
    v89 = v0[55];

    v62 = v0[1];
    goto LABEL_29;
  }

  type metadata accessor for HomeFilter();
  v67 = sub_252E37264();

  v68 = sub_252BE54AC(v67);
  v0[63] = 0;

  if (v68 >> 62)
  {
    result = sub_252E378C4();
    if (result)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

  result = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_27:
    v74 = v0[55];

    sub_252CC4050(0xD00000000000006ELL, 0x8000000252E88170, 0xD000000000000099, 0x8000000252E87EC0, 0xD00000000000002ALL, 0x8000000252E880E0, 58);
    type metadata accessor for ErrorFilingHelper();
    v82 = swift_initStackObject();
    v83 = sub_252E36884();
    v84 = *(v83 + 48);
    v85 = *(v83 + 52);
    swift_allocObject();
    *(v82 + 16) = sub_252E36874();
    v79 = "home, this should never happen";
    v86 = sub_252E36834();
    (*(*(v86 - 8) + 56))(v74, 1, 1, v86);
    v81 = 0xD00000000000005ELL;
    goto LABEL_28;
  }

LABEL_19:
  if ((v68 & 0xC000000000000001) != 0)
  {
    v70 = MEMORY[0x2530ADF00](0, v68);
  }

  else
  {
    if (!*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v70 = *(v68 + 32);
  }

  v0[64] = v70;

  v71 = *(v70 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);
  v0[65] = v71;
  v72 = v71;
  v73 = swift_task_alloc();
  v0[66] = v73;
  *v73 = v0;
  v73[1] = sub_252BE6998;

  return static RestrictedGuestCheckUtils.makeRestrictedGuestBlockingOutput(forHome:)((v0 + 22), v72);
}

uint64_t sub_252BE6998()
{
  v1 = *(*v0 + 528);
  v2 = *(*v0 + 520);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_252BE6AAC, 0, 0);
}

uint64_t sub_252BE6AAC()
{
  v1 = *(v0 + 512);
  if (*(v0 + 200))
  {
    v2 = *(v0 + 416);
    v3 = *(v0 + 512);

    sub_252A52D18((v0 + 176), v0 + 136);
    sub_252A52D18((v0 + 136), v2);
  }

  else
  {
    v4 = *(v0 + 504);
    v5 = *(v0 + 432);
    v6 = *(v0 + 416);
    sub_25293847C(v0 + 176, &qword_27F542188, &qword_252E43C80);
    sub_252929E74(v5 + 24, v0 + 216);
    v7 = *(v0 + 240);
    v8 = *(v0 + 248);
    __swift_project_boxed_opaque_existential_1((v0 + 216), v7);
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    *(v9 + 24) = v1;

    sub_252943BD0(sub_252BE73C8, v9, 1, v7, v8);
    v10 = *(v0 + 512);

    __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  }

  v11 = *(v0 + 496);
  v12 = *(v0 + 472);
  v13 = *(v0 + 440);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_252BE6C64(uint64_t a1)
{
  v1 = *(a1 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540788, &unk_252E3DC30);
  v2 = sub_252E34024();
  v3 = sub_252B680FC();
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 504 * v5 - 472);
    memcpy(v10, v6, sizeof(v10));
    memmove(__dst, v6, 0x1F8uLL);
    GEOLocationCoordinate2DMake(__dst);
    sub_2529353AC(v10, __src);

    memcpy(__src, __dst, sizeof(__src));
  }

  else
  {

    sub_25293DEE0(__src);
  }

  memcpy(__dst, __src, sizeof(__dst));
  v7 = sub_252953488(v2, __dst, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_252E3C290;
  strcpy((v8 + 32), "intentContext");
  *(v8 + 46) = -4864;
  *(v8 + 72) = type metadata accessor for HomeAutomationIntentContext(0);
  *(v8 + 48) = v7;

  sub_252E362B4();
}

uint64_t sub_252BE6E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v36 - v7;
  v9 = *(a1 + 16);
  v10 = type metadata accessor for HomeAutomationIntentContext.Builder(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_2529930C0();
  v14 = *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v15 = *(a2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  sub_252E37024();
  v16 = sub_252E36324();
  v17 = *(*(v16 - 8) + 56);
  v17(v8, 0, 1, v16);
  v18 = type metadata accessor for HomeAutomationHomeLocation.Builder(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v22 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
  v17((v21 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name), 1, 1, v16);
  swift_beginAccess();
  sub_252956BAC(v8, v21 + v22);
  swift_endAccess();
  sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
  v23 = type metadata accessor for HomeAutomationHomeLocation(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  sub_252956C1C(v21 + v22, v26 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
  swift_setDeallocating();
  sub_25293847C(v21 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
  v27 = *(*v21 + 48);
  v28 = *(*v21 + 52);
  swift_deallocClassInstance();
  v29 = *(v13 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_targetedHomeName);
  *(v13 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_targetedHomeName) = v26;

  v30 = type metadata accessor for HomeAutomationIntentContext(0);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = sub_252996D9C(v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_252E3C290;
  strcpy((v34 + 32), "intentContext");
  *(v34 + 46) = -4864;
  *(v34 + 72) = v30;
  *(v34 + 48) = v33;

  sub_252E362B4();
}

uint64_t sub_252BE7178(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252BE5C8C(a1, a2);
}

uint64_t sub_252BE7244()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540788, &unk_252E3DC30);
  v2 = sub_252E34024();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_252BE72BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B4C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ControlHomeUnsupportedValueFlowStrategy();
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821B9E00](a1, a2, v10, a4);
}

uint64_t sub_252BE73D0()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540788, &unk_252E3DC30) - 8) + 80);
  v2 = *(v0 + 16);

  return sub_252BE6C64(v2);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252BE7468(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252BE74E0()
{
  type metadata accessor for GetThermostatModeHandleDelegate();

  return swift_allocObject();
}

void sub_252BE7510(void *a1, void (*a2)(char *))
{
  v4 = [a1 filters];
  if (!v4)
  {
    if (qword_27F53F498 == -1)
    {
LABEL_8:
      v16 = sub_252E36AD4();
      __swift_project_value_buffer(v16, qword_27F544C70);
      MEMORY[0x2530AD570](0x20726F727245, 0xE600000000000000);
      sub_252E37AE4();
      sub_252CC4050(0, 0xE000000000000000, 0xD00000000000008DLL, 0x8000000252E88320, 0xD000000000000021, 0x8000000252E68B10, 50);

      v17 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
      v18 = OBJC_IVAR___ControlHomeIntentResponse_code;
      swift_beginAccess();
      v19 = 5;
LABEL_11:
      *&v17[v18] = v19;
      [v17 setUserActivity_];
      type metadata accessor for HomeEntityResponse();
      v20 = sub_252E37254();
      [v17 setEntityResponses_];

      a2(v17);
      goto LABEL_12;
    }

LABEL_78:
    swift_once();
    goto LABEL_8;
  }

  v5 = v4;
  type metadata accessor for HomeFilter();
  v6 = sub_252E37264();

  type metadata accessor for HomeStore();
  v7 = static HomeStore.shared.getter();
  v8 = v7[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v8 != 2 && (v8 & 1) == 0 || (v9 = [a1 filters]) == 0)
  {

    goto LABEL_10;
  }

  v10 = v9;
  v11 = sub_252E37264();

  v12 = [a1 userTask];
  v13 = HomeStore.accessories(matching:supporting:)(v11, v12);
  v15 = v14;

  if (v15)
  {
    sub_252929F10(v13, 1);

LABEL_10:
    v17 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v18 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    v19 = 102;
    goto LABEL_11;
  }

  v105 = a2;
  if (v13 >> 62)
  {
LABEL_80:
    v21 = sub_252E378C4();
  }

  else
  {
    v21 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = 0;
  v23 = v13 & 0xC000000000000001;
  a2 = (v13 + 32);
  while (1)
  {
    v24 = v22;
    if (v21 == v22)
    {
      goto LABEL_25;
    }

    if (!v23)
    {
      if (v22 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v25 = *(v13 + 8 * v22 + 32);

        if (__OFADD__(v24, 1))
        {
          break;
        }

        goto LABEL_20;
      }

      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v25 = MEMORY[0x2530ADF00](v22, v13);
    if (__OFADD__(v24, 1))
    {
      break;
    }

LABEL_20:
    v26 = (*(*v25 + 256))();

    v22 = v24 + 1;
    if (v26 == 3)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_25:
  v27 = 0;
  do
  {
    v28 = v27;
    if (v21 == v27)
    {
      break;
    }

    if (v23)
    {
      v29 = MEMORY[0x2530ADF00](v27, v13);
      if (__OFADD__(v28, 1))
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v27 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }

      v29 = *(v13 + 8 * v27 + 32);

      if (__OFADD__(v28, 1))
      {
LABEL_34:
        __break(1u);
        break;
      }
    }

    v30 = (*(*v29 + 256))();

    v27 = v28 + 1;
  }

  while (v30 != 29);
  if (!v21)
  {
LABEL_50:
    v107 = 1;
    goto LABEL_51;
  }

  v31 = 0;
  while (2)
  {
    if (v23)
    {
      MEMORY[0x2530ADF00](v31, v13);
      v33 = __OFADD__(v31++, 1);
      if (v33)
      {
        break;
      }

      goto LABEL_40;
    }

    if (v31 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_80;
    }

    v32 = *(a2 + v31);

    v33 = __OFADD__(v31++, 1);
    if (!v33)
    {
LABEL_40:
      v34 = sub_252D4F520();
      v35 = *(v34 + 2);
      v36 = 32;
      while (v35)
      {
        v37 = *&v34[v36];
        v36 += 8;
        --v35;
        if (v37 == 6)
        {
          goto LABEL_49;
        }
      }

      if (v31 == v21)
      {
        goto LABEL_50;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_49:

  v107 = 0;
LABEL_51:
  sub_252929F10(v13, 0);
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v38 = sub_252E36AD4();
  __swift_project_value_buffer(v38, qword_27F544C70);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E883B0);
  if (v21 == v24)
  {
    v39 = 0x65736C6166;
  }

  else
  {
    v39 = 1702195828;
  }

  if (v21 == v24)
  {
    v40 = 0xE500000000000000;
  }

  else
  {
    v40 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v39, v40);

  MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E6D390);
  if (v21 == v28)
  {
    v41 = 0x65736C6166;
  }

  else
  {
    v41 = 1702195828;
  }

  if (v21 == v28)
  {
    v42 = 0xE500000000000000;
  }

  else
  {
    v42 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v41, v42);

  MEMORY[0x2530AD570](0xD000000000000021, 0x8000000252E79130);
  if (v107)
  {
    v43 = 0x65736C6166;
  }

  else
  {
    v43 = 1702195828;
  }

  if (v107)
  {
    v44 = 0xE500000000000000;
  }

  else
  {
    v44 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v43, v44);

  MEMORY[0x2530AD570](34, 0xE100000000000000);
  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000008DLL, 0x8000000252E88320);

  v45 = type metadata accessor for HomeUserTask();
  v46 = objc_allocWithZone(v45);
  v47 = sub_252E36F04();
  v48 = [v46 initWithIdentifier:0 displayString:v47];

  v49 = v48;
  [v49 setTaskType_];
  [v49 setAttribute_];
  [v49 setValue_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C130;
  *(inited + 32) = v49;
  v106 = v49;
  v51 = sub_252B4CA9C(v6, inited, 0, 1);
  v53 = v52;
  swift_setDeallocating();
  v54 = *(inited + 16);
  swift_arrayDestroy();
  v55 = sub_252C6D5D4(v51, v53 & 1);
  v57 = v55;
  if ((v56 & 1) == 0)
  {
    v60 = v56;
    v104 = v51;
    v61 = v55;
    v62 = sub_252C285CC();
    if (v62 >> 62)
    {
      v70 = v62;
      v71 = sub_252E378C4();
      v62 = v70;
      if (v71)
      {
        goto LABEL_75;
      }
    }

    else if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_75:
      v63 = v62;

      type metadata accessor for ControlHomeIntentResponse.Builder();
      v64 = swift_allocObject();
      v65 = MEMORY[0x277D84F90];
      *(v64 + 16) = 5;
      *(v64 + 24) = v65;
      v66 = sub_252B4EF24(v63);

      v67 = sub_252CADC6C(v66);

      v69 = (*(*v67 + 176))(v68);

      v105(v69);
      sub_252927D3C(v57);

      sub_252927D3C(v57);
      sub_252927D3C(v51);
      return;
    }

    v103 = v60 & 1;

    sub_252927D3C(v57);
    v72 = MEMORY[0x277D84F90];
    v73 = MEMORY[0x277D84F90];
    if ((v107 & 1) == 0)
    {
      v73 = sub_2529F7A6C(0, 1, 1, MEMORY[0x277D84F90]);
      v75 = *(v73 + 2);
      v74 = *(v73 + 3);
      if (v75 >= v74 >> 1)
      {
        v73 = sub_2529F7A6C((v74 > 1), v75 + 1, 1, v73);
      }

      *(v73 + 2) = v75 + 1;
      *&v73[8 * v75 + 32] = 6;
      v72 = MEMORY[0x277D84F90];
    }

    v102 = v57;
    if (v21 == v24)
    {
      v76 = v21 == v28;
      v77 = v106;
      v78 = v104;
      if (v76)
      {
        v79 = *(v73 + 2);
        if (!v79)
        {

          v96 = 0;
          v99 = -1;
LABEL_105:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402A8, &unk_252E3E850);
          v100 = swift_initStackObject();
          *(v100 + 16) = xmmword_252E3C3C0;
          *(v100 + 32) = v57;
          *(v100 + 40) = v103;
          *(v100 + 48) = v96;
          *(v100 + 56) = v99;
          sub_2529904E4(v57);
          sub_252B61F1C(v96, v99);
          v101 = combineResults(results:)(v100);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402B0, &qword_252E3C0E0);
          swift_arrayDestroy();
          sub_252990634(v101);
          v105(v101);
          sub_252B61F34(v96, v99);
          sub_252927D3C(v57);

          sub_252927D3C(v78);
          return;
        }

        v80 = v73;
        v81 = v45;
        v72 = MEMORY[0x277D84F90];
LABEL_102:
        v108 = v72;
        sub_252E37AB4();
        v87 = 32;
        v88 = v81;
        v89 = v80;
        do
        {
          v90 = *&v89[v87];
          v91 = objc_allocWithZone(v88);
          v92 = sub_252E36F04();
          v93 = [v91 initWithIdentifier:0 displayString:v92];

          v94 = v93;
          [v94 setTaskType_];
          [v94 setAttribute_];
          [v94 &selRef_lowerValue];

          sub_252E37A94();
          v95 = *(v108 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          v87 += 8;
          --v79;
        }

        while (v79);

        v96 = sub_252B4CA9C(v6, v108, 0, 1);
        v98 = v97;

        v99 = v98 & 1;
        v77 = v106;
        v78 = v104;
        v57 = v102;
        goto LABEL_105;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v73 = sub_2529F7A6C(0, *(v73 + 2) + 1, 1, v73);
      }

      v72 = MEMORY[0x277D84F90];
      v83 = *(v73 + 2);
      v86 = *(v73 + 3);
      v79 = v83 + 1;
      v81 = v45;
      if (v83 >= v86 >> 1)
      {
        v73 = sub_2529F7A6C((v86 > 1), v83 + 1, 1, v73);
      }

      v84 = 15;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = sub_2529F7A6C(0, *(v73 + 2) + 1, 1, v73);
      }

      v83 = *(v73 + 2);
      v82 = *(v73 + 3);
      v79 = v83 + 1;
      v81 = v45;
      if (v83 >= v82 >> 1)
      {
        v73 = sub_2529F7A6C((v82 > 1), v83 + 1, 1, v73);
      }

      v84 = 14;
    }

    *(v73 + 2) = v79;
    v80 = v73;
    *&v73[8 * v83 + 32] = v84;
    goto LABEL_102;
  }

  v17 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
  v58 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v17[v58] = 5;
  [v17 setUserActivity_];
  type metadata accessor for HomeEntityResponse();
  v59 = sub_252E37254();
  [v17 setEntityResponses_];

  v105(v17);
  sub_252927D3C(v57);

  sub_252927D3C(v51);
LABEL_12:
}

uint64_t sub_252BE82A0(void *a1)
{
  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v3 = result;
  type metadata accessor for HomeFilter();
  v4 = sub_252E37264();

  v5 = &off_279711000;
  v6 = [a1 userTask];
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  type metadata accessor for HomeStore();
  v8 = static HomeStore.shared.getter();
  v9 = HomeStore.accessories(matching:supporting:)(v4, 0);
  v11 = v10;

  if (v11)
  {
    sub_252929F10(v9, 1);
    if (qword_27F53F498 != -1)
    {
LABEL_86:
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544C70);
    sub_252CC3D90(0xD000000000000025, 0x8000000252E882F0, 0xD00000000000008DLL, 0x8000000252E88320);
LABEL_75:

    return 0;
  }

  v13 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
    v14 = sub_252E378C4();
  }

  else
  {
    v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = 0;
  v16 = v9 & 0xC000000000000001;
  v17 = v9 + 32;
  v71 = v9 & 0xC000000000000001;
  v72 = v9 & 0xFFFFFFFFFFFFFF8;
  v73 = v7;
  v74 = v9;
  v75 = v14;
  v70 = v9 + 32;
  while (1)
  {
    v18 = v15;
    if (v15 == v14)
    {
LABEL_81:
      sub_252929F10(v9, 0);
      goto LABEL_57;
    }

    if (v16)
    {
      v19 = MEMORY[0x2530ADF00](v15++, v9);
      if (__OFADD__(v18, 1))
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v15 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_86;
      }

      v19 = *(v17 + 8 * v15);

      ++v15;
      if (__OFADD__(v18, 1))
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

    v20 = (*v19 + 256);
    v21 = *v20;
    if ((*v20)() == 3)
    {

      sub_252929F10(v9, 0);
      goto LABEL_56;
    }

    v22 = (*v19 + 272);
    v23 = *v22;
    v24 = (*v22)();
    v25 = v24;
    if (*(v24 + 16))
    {
      v26 = *(v24 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](3);
      v27 = sub_252E37F14();
      v28 = -1 << *(v25 + 32);
      v29 = v27 & ~v28;
      if ((*(v25 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (*(*(v25 + 48) + 8 * v29) != 3)
        {
          v29 = (v29 + 1) & v30;
          if (((*(v25 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

LABEL_52:

        sub_252929F10(v74, 0);
LABEL_54:

LABEL_55:
        v7 = v73;
LABEL_56:
        v5 = &off_279711000;
        v14 = v75;
        goto LABEL_57;
      }
    }

LABEL_20:

    v32 = (v21)(v31);
    if (v32 == 38)
    {
      v34 = &unk_2864AC498;
      goto LABEL_24;
    }

    v33 = MEMORY[0x277D84FA0];
    if (v32 == 41)
    {
      v34 = &unk_2864AC4C0;
LABEL_24:
      v33 = sub_2529FC004(v34);
    }

    if (*(v33 + 16))
    {
      v35 = *(v33 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](3);
      v36 = sub_252E37F14();
      v37 = -1 << *(v33 + 32);
      v38 = v36 & ~v37;
      if ((*(v33 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
      {
        v39 = ~v37;
        while (*(*(v33 + 48) + 8 * v38) != 3)
        {
          v38 = (v38 + 1) & v39;
          if (((*(v33 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        goto LABEL_52;
      }
    }

LABEL_30:

    if (sub_252D4FE78(3))
    {

      sub_252929F10(v74, 0);
      goto LABEL_55;
    }

    if (v21() == 29)
    {
      sub_252929F10(v74, 0);

      goto LABEL_55;
    }

    v40 = v23();
    v41 = v40;
    v9 = v74;
    if (*(v40 + 16))
    {
      v42 = *(v40 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](29);
      v43 = sub_252E37F14();
      v44 = -1 << *(v41 + 32);
      v45 = v43 & ~v44;
      if ((*(v41 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
      {
        v46 = ~v44;
        while (*(*(v41 + 48) + 8 * v45) != 29)
        {
          v45 = (v45 + 1) & v46;
          if (((*(v41 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        sub_252929F10(v74, 0);

        goto LABEL_54;
      }
    }

LABEL_37:

    v48 = (v21)(v47);
    if (v48 == 38)
    {
      v50 = &unk_2864AC4E8;
      v5 = &off_279711000;
      v14 = v75;
      goto LABEL_41;
    }

    v49 = MEMORY[0x277D84FA0];
    v5 = &off_279711000;
    v14 = v75;
    if (v48 == 41)
    {
      v50 = &unk_2864AC510;
LABEL_41:
      v49 = sub_2529FC004(v50);
    }

    if (*(v49 + 16))
    {
      v51 = *(v49 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](29);
      v52 = sub_252E37F14();
      v53 = -1 << *(v49 + 32);
      v54 = v52 & ~v53;
      if ((*(v49 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
      {
        break;
      }
    }

LABEL_47:

    v56 = sub_252D4FE78(29);

    v13 = v72;
    v7 = v73;
    v17 = v70;
    v16 = v71;
    if (v56)
    {
      goto LABEL_81;
    }
  }

  v55 = ~v53;
  while (*(*(v49 + 48) + 8 * v54) != 29)
  {
    v54 = (v54 + 1) & v55;
    if (((*(v49 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  sub_252929F10(v74, 0);

  v7 = v73;
LABEL_57:
  v57 = [a1 v5[214]];
  if (v57)
  {
    v58 = v57;
    v59 = [v57 attribute];

    if (v59 == 15)
    {
      v60 = 1;
      goto LABEL_64;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v61 = [a1 v5[214]];
  if (v61)
  {
    v62 = v61;
    v63 = [v61 attribute];

    v60 = v63 == 14;
  }

  else
  {
    sub_252C515AC();
    v60 = 0;
  }

LABEL_64:
  if ([v7 taskType] == 5)
  {
    v64 = [a1 v5[214]];
    if (v64)
    {
      v65 = v64;
      v66 = [v64 attribute];

      if (v18 == v14)
      {
        goto LABEL_75;
      }

      if (v66 == 6)
      {

        return 1;
      }

      goto LABEL_71;
    }

    sub_252C515AC();
  }

  if (v18 == v14)
  {
    goto LABEL_75;
  }

LABEL_71:
  v67 = [a1 v5[214]];
  if (!v67)
  {
    sub_252C515AC();
    goto LABEL_75;
  }

  v68 = v67;
  if ([v67 taskType] == 4)
  {

    return v60;
  }

  v69 = [v68 taskType];

  result = v60;
  if (v69 != 5)
  {
    return 0;
  }

  return result;
}

id sub_252BE8A5C(void *a1)
{
  v2 = v1;
  v54 = a1;
  v3 = &off_279711000;
  v4 = [v1 dialog];
  v5 = sub_25293F638(0, &qword_27F543D58, 0x277D052C8);
  v6 = sub_252E37264();

  v55 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v52 = v5;
    v53 = v2;
    v2 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v2, v6);
      }

      else
      {
        if (v2 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v8 = *(v6 + 8 * v2 + 32);
      }

      v3 = v8;
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v9 = [(SEL *)v8 supportingSpeak];
      sub_252E36F34();

      sub_252BE9B34();

      v10 = sub_252E36F04();

      [(SEL *)v3 setSupportingSpeak:v10];

      v11 = [(SEL *)v3 fullSpeak];
      sub_252E36F34();

      sub_252BE9B34();

      v12 = sub_252E36F04();

      [(SEL *)v3 setFullSpeak:v12];

      MEMORY[0x2530AD700]();
      if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v2;
      if (v5 == i)
      {
        v14 = v55;
        v2 = v53;
        v3 = &off_279711000;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_17:

  v15 = [v54 v3[502]];
  v16 = sub_252E37264();

  v55 = v14;
  sub_25297AE84(v16);
  v17 = sub_252E37254();

  [v54 setDialog_];

  v18 = [v2 visual];
  if (v18)
  {
    v19 = v18;
    v20 = sub_252E32D34();
    v22 = v21;

    v23 = sub_252E32D14();
    sub_25296464C(v20, v22);
  }

  else
  {
    v23 = 0;
  }

  [v54 setVisual_];

  v24 = [v2 patternId];
  v25 = sub_252E36F34();
  v27 = v26;

  v55 = 35;
  v56 = 0xE100000000000000;
  MEMORY[0x28223BE20](v28);
  v51[2] = &v55;
  v29 = sub_252BE9D0C(sub_2529FBFE8, v51, v25, v27);
  LOBYTE(v25) = v30;

  if (v25)
  {

    v29 = 15;
  }

  v31 = [v2 patternId];
  sub_252E36F34();

  v32 = [v2 patternId];
  v33 = sub_252E36F34();
  v35 = v34;

  v37 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v37 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v37 < v29 >> 14)
  {
    __break(1u);
  }

  else
  {
    v38 = sub_252E37194();
    v40 = v39;
    v42 = v41;
    v44 = v43;

    v45 = [v54 patternId];
    v46 = sub_252E36F34();
    v48 = v47;

    v59 = v46;
    v60 = v48;
    v55 = v38;
    v56 = v40;
    v57 = v42;
    v58 = v44;
    sub_252AD6778();
    sub_252E37094();

    v49 = sub_252E36F04();

    [v54 setPatternId_];

    v50 = v54;

    return v50;
  }

  return result;
}

id sub_252BE8FD4()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D052B8]) init];
  v3 = [v0 patternId];
  if (!v3)
  {
    sub_252E36F34();
    v3 = sub_252E36F04();
  }

  [v2 setCatId_];

  v4 = [v1 dialog];
  sub_25293F638(0, &qword_27F543D58, 0x277D052C8);
  v5 = sub_252E37264();

  v16 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_252BE98D4();

      MEMORY[0x2530AD700]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v7;
      if (v10 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:

  sub_25293F638(0, &qword_27F542128, 0x277D052B0);
  v11 = sub_252E37254();

  [v2 setDialog_];

  v12 = [v1 meta];
  sub_252E36E44();

  v13 = sub_252E36E24();

  [v2 setMeta_];

  return v2;
}

id sub_252BE92A0(void *a1)
{
  v2 = v1;
  v47 = a1;
  v3 = &off_279711000;
  v4 = [v1 dialog];
  v5 = sub_25293F638(0, &qword_27F542128, 0x277D052B0);
  v6 = sub_252E37264();

  v48 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v45 = v5;
    v46 = v2;
    v2 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v2, v6);
      }

      else
      {
        if (v2 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v8 = *(v6 + 8 * v2 + 32);
      }

      v3 = v8;
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v9 = [(SEL *)v8 supportingSpeak];
      sub_252E36F34();

      sub_252BE9B34();

      v10 = sub_252E36F04();

      [(SEL *)v3 setSupportingSpeak:v10];

      v11 = [(SEL *)v3 fullSpeak];
      sub_252E36F34();

      sub_252BE9B34();

      v12 = sub_252E36F04();

      [(SEL *)v3 setFullSpeak:v12];

      MEMORY[0x2530AD700]();
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v2;
      if (v5 == i)
      {
        v2 = v46;
        v3 = &off_279711000;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v14 = [v47 v3[502]];
  v15 = sub_252E37264();

  sub_25297AEB0(v15);
  v16 = sub_252E37254();

  [v47 setDialog_];

  v17 = [v2 catId];
  v18 = sub_252E36F34();
  v20 = v19;

  v48 = 35;
  v49 = 0xE100000000000000;
  MEMORY[0x28223BE20](v21);
  v44[2] = &v48;
  v22 = sub_252BE9D0C(sub_252A00B98, v44, v18, v20);
  LOBYTE(v18) = v23;

  if (v18)
  {

    v22 = 15;
  }

  v24 = [v2 catId];
  sub_252E36F34();

  v25 = [v2 catId];
  v26 = sub_252E36F34();
  v28 = v27;

  v30 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v30 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v30 < v22 >> 14)
  {
    __break(1u);
  }

  else
  {
    v31 = sub_252E37194();
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v38 = [v47 catId];
    v39 = sub_252E36F34();
    v41 = v40;

    v52 = v39;
    v53 = v41;
    v48 = v31;
    v49 = v33;
    v50 = v35;
    v51 = v37;
    sub_252AD6778();
    sub_252E37094();

    v42 = sub_252E36F04();

    [v47 setCatId_];

    v43 = v47;

    return v43;
  }

  return result;
}

void *sub_252BE97AC(void *__src)
{
  memcpy(v1 + 14, __src, 0x1F8uLL);
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v3 = *(v2 + 22);

  v1[2] = v3;
  v4 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 29);

  v1[6] = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  v1[7] = &off_2864BA730;
  v1[3] = v4;
  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v5 + 136), v9);

  sub_252927BEC(v9, (v1 + 9));
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v7 = *(v6 + 23);

  v1[8] = v7;
  return v1;
}

id sub_252BE98D4()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D052B0]) init];
  v2 = [v0 dialogId];
  if (!v2)
  {
    sub_252E36F34();
    v2 = sub_252E36F04();
  }

  [v1 setId_];

  v3 = [v0 supportingPrint];
  if (!v3)
  {
    sub_252E36F34();
    v3 = sub_252E36F04();
  }

  [v1 setSupportingPrint_];

  v4 = [v0 supportingSpeak];
  if (!v4)
  {
    sub_252E36F34();
    v4 = sub_252E36F04();
  }

  [v1 setSupportingSpeak_];

  v5 = [v0 fullPrint];
  if (!v5)
  {
    sub_252E36F34();
    v5 = sub_252E36F04();
  }

  [v1 setFullPrint_];

  v6 = [v0 fullSpeak];
  if (!v6)
  {
    sub_252E36F34();
    v6 = sub_252E36F04();
  }

  [v1 setFullSpeak_];

  v7 = [v0 printOnly];
  v8 = [v7 BOOLValue];

  [v1 setPrintOnly_];
  v9 = [v0 spokenOnly];
  v10 = [v9 BOOLValue];

  [v1 setSpokenOnly_];
  return v1;
}

uint64_t sub_252BE9B34()
{
  sub_252947DBC();
  sub_252E377B4();
  sub_252E377B4();

  sub_252E377B4();

  v0 = sub_252E377B4();

  return v0;
}

unint64_t sub_252BE9D0C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_252E37074();
    v13[0] = sub_252E37174();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_252BE9E24(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 32;
    v4 = *(a1 + 16);
    while (1)
    {
      memcpy(__dst, &v1[v3], sizeof(__dst));
      if (sub_252AB51DC())
      {
        break;
      }

      v3 += 504;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    v5 = qword_27F53F520;

    if (v5 != -1)
    {
LABEL_52:
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544E08);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0xD00000000000002DLL;
    __dst[1] = 0x8000000252E884D0;
    v7 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
    MEMORY[0x2530AD570](v7);

    sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000098, 0x8000000252E88500);

    v8 = 0;
    v9 = 536;
    while (1)
    {
      memcpy(__dst, &v1[v9 - 504], sizeof(__dst));
      result = sub_252AB51DC();
      v11 = v8 + 1;
      v12 = __OFADD__(v8, 1);
      if (result)
      {
        break;
      }

      if (v12)
      {
        __break(1u);
        goto LABEL_46;
      }

      v9 += 504;
      ++v8;
      if (v11 == v2)
      {
        goto LABEL_18;
      }
    }

    if (v12)
    {
LABEL_56:
      __break(1u);
      return result;
    }

    if (v11 != v2)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        v16 = (v1 + 16);
        if (v11 < *(v1 + 2))
        {
          v2 = 504;
          do
          {
            memcpy(__dst, &v1[v9], sizeof(__dst));
            memcpy(__src, __dst, sizeof(__src));
            result = sub_252AB51DC();
            if ((result & 1) == 0)
            {
              if (v11 != v8)
              {
                if ((v8 & 0x8000000000000000) != 0)
                {
                  goto LABEL_48;
                }

                v17 = *v16;
                if (v8 >= *v16)
                {
                  goto LABEL_49;
                }

                memcpy(v21, &v1[504 * v8 + 32], sizeof(v21));
                if (v11 >= v17)
                {
                  goto LABEL_50;
                }

                memcpy(__src, &v1[v9], sizeof(__src));
                sub_2529353AC(v21, v20);
                sub_2529353AC(__src, v20);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v1 = sub_252D57AC0(v1);
                }

                v18 = &v1[504 * v8];
                memcpy(v19, v18 + 32, sizeof(v19));
                memcpy(v18 + 32, __src, 0x1F8uLL);
                sub_252935408(v19);
                if (v11 >= *(v1 + 2))
                {
                  goto LABEL_51;
                }

                memcpy(v20, &v1[v9], sizeof(v20));
                memcpy(&v1[v9], v21, 0x1F8uLL);
                result = sub_252935408(v20);
              }

              ++v8;
            }

            if (++v11 == *(v1 + 2))
            {
              goto LABEL_17;
            }

            v16 = (v1 + 16);
            v9 += 504;
          }

          while (v11 < *(v1 + 2));
        }

LABEL_46:
        __break(1u);
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_17:
    v2 = v8;
LABEL_18:
    v13 = *(v1 + 2);
    if (v2 > v13)
    {
      __break(1u);
    }

    else if ((v2 & 0x8000000000000000) == 0)
    {
      if (!__OFADD__(v13, v2 - v13))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        __dst[0] = v1;
        if (!isUniquelyReferenced_nonNull_native || v2 > *(v1 + 3) >> 1)
        {
          if (v13 <= v2)
          {
            v15 = v2;
          }

          else
          {
            v15 = v13;
          }

          v1 = sub_2529F7FB0(isUniquelyReferenced_nonNull_native, v15, 1, v1);
          __dst[0] = v1;
        }

        sub_252B7B280(v2, v13, 0);
        return v1;
      }

      goto LABEL_55;
    }

    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_5:

  return v1;
}

void *sub_252BEA1C0(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_252BEA20C(a1);
}

void *sub_252BEA20C(uint64_t *a1)
{
  v3 = sub_252E32E84();
  v55 = *(v3 - 8);
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540488, &unk_252E3C940);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  v13 = a1[3];
  v12 = a1[4];
  v56 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_252950A0C();
  sub_252E37F74();
  if (v1)
  {
    v16 = v56;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v16);
    type metadata accessor for Trigger();
    v17 = *(*v60 + 48);
    v18 = *(*v60 + 52);
    swift_deallocPartialClassInstance();
    return v14;
  }

  v15 = v8;
  LOBYTE(v57[0]) = 0;
  sub_252950ADC(&qword_27F540498);
  sub_252E37C64();
  v20 = v3;
  LOBYTE(v58) = 1;
  sub_252950A60();
  sub_252E37C64();
  v21 = v56;
  v22 = v6;
  v23 = v57[0];
  LOBYTE(v57[0]) = 2;
  v52 = sub_252E37C04();
  v53 = v23;
  v54 = v24;
  LOBYTE(v57[0]) = 3;
  v25 = sub_252E37BA4();
  v46 = v15;
  v48 = v11;
  v50 = v26;
  v51 = v20;
  v27 = v25;
  type metadata accessor for HomeStore();
  v28 = static HomeStore.shared.getter();
  v29 = sub_2529DA8AC();

  MEMORY[0x28223BE20](v30);
  v32 = v52;
  v31 = v53;
  *(&v44 - 6) = v22;
  *(&v44 - 5) = v32;
  *(&v44 - 4) = v54;
  *(&v44 - 3) = v27;
  v45 = v27;
  *(&v44 - 2) = v50;
  *(&v44 - 1) = v31;
  v33 = sub_2529A3DE8(sub_252BEB0B4, (&v44 - 8), v29);
  v47 = 0;

  v49 = v33;
  if (!v33)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v38 = sub_252E36AD4();
    v39 = __swift_project_value_buffer(v38, qword_27F544CB8);
    sub_252CC4050(0xD000000000000024, 0x8000000252E885D0, 0xD00000000000006DLL, 0x8000000252E88600, 0x6F72662874696E69, 0xEB00000000293A6DLL, 47);
    strcpy(v57, "identifier: ");
    BYTE5(v57[1]) = 0;
    HIWORD(v57[1]) = -5120;
    sub_252950ADC(&qword_27F5404A8);
    v40 = sub_252E37D94();
    MEMORY[0x2530AD570](v40);

    sub_252CC4050(v57[0], v57[1], 0xD00000000000006DLL, 0x8000000252E88600, 0x6F72662874696E69, 0xEB00000000293A6DLL, 48);

    v57[0] = 0x203A656D616ELL;
    v57[1] = 0xE600000000000000;
    MEMORY[0x2530AD570](v52, v54);

    sub_252CC4050(v57[0], v57[1], 0xD00000000000006DLL, 0x8000000252E88600, 0x6F72662874696E69, 0xEB00000000293A6DLL, 49);

    v57[0] = 0;
    v57[1] = 0xE000000000000000;
    sub_252E379F4();

    v57[0] = 0xD000000000000015;
    v57[1] = 0x8000000252E6AA20;
    v58 = v45;
    v59 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v41 = sub_252E36F94();
    MEMORY[0x2530AD570](v41);

    sub_252CC4050(v57[0], v57[1], 0xD00000000000006DLL, 0x8000000252E88600, 0x6F72662874696E69, 0xEB00000000293A6DLL, 50);

    strcpy(v57, "entityType: ");
    BYTE5(v57[1]) = 0;
    HIWORD(v57[1]) = -5120;
    v58 = v53;
    v42 = sub_252E36F94();
    MEMORY[0x2530AD570](v42);

    v14 = v39;
    sub_252CC4050(v57[0], v57[1], 0xD00000000000006DLL, 0x8000000252E88600, 0x6F72662874696E69, 0xEB00000000293A6DLL, 51);

    sub_252950B20();
    swift_allocError();
    swift_willThrow();
    (*(v46 + 8))(v48, v7);
    (*(v55 + 8))(v22, v51);
    v16 = v21;
    goto LABEL_4;
  }

  v34 = v49;

  v35 = *(v34 + OBJC_IVAR____TtC22HomeAutomationInternal7Trigger_delegate);

  v14 = v60;
  *(v60 + OBJC_IVAR____TtC22HomeAutomationInternal7Trigger_delegate) = v35;
  sub_252929E74(v21, v57);
  v36 = v47;
  v37 = Entity.init(from:)(v57);
  if (v36)
  {
    (*(v15 + 8))(v48, v7);

    (*(v55 + 8))(v22, v51);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    v14 = v37;
    (*(v15 + 8))(v48, v7);

    v43 = *(v55 + 8);

    v43(v22, v51);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return v14;
}

BOOL sub_252BEAA64(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  if (sub_252E32E54())
  {
    v13 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == a3 && *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == a4;
    if (v13 || (sub_252E37DB4() & 1) != 0)
    {
      v14 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
      if (a6)
      {
        if (v14)
        {
          v15 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == a5 && v14 == a6;
          if (v15 || (sub_252E37DB4() & 1) != 0)
          {
            return a7 == 6;
          }
        }
      }

      else if (!v14)
      {
        return a7 == 6;
      }
    }
  }

  return 0;
}

uint64_t sub_252BEAB60(void *a1)
{
  v2 = sub_252BEAC3C();
  if (v2)
  {
    v3 = v2;
    type metadata accessor for HomeStore();
    v4 = static HomeStore.shared.getter();
    v5 = sub_2529F3704(a1);

    v10 = v3;
    MEMORY[0x28223BE20](v6);
    v9[2] = &v10;
    v7 = sub_252A00B58(sub_2529E963C, v9, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_252BEAC3C()
{
  v1 = v0;
  type metadata accessor for HomeStore();
  v2 = static HomeStore.shared.getter();
  v3 = sub_2529D8DC0();

  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_28;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v5)
  {
    v6 = 0;
    v7 = OBJC_IVAR____TtC22HomeAutomationInternal7Trigger_delegate;
    v8 = v4 & 0xC000000000000001;
    v9 = v4 & 0xFFFFFFFFFFFFFF8;
    v10 = v4 + 32;
    v11 = &off_279711000;
    v26 = v5;
    v27 = v4;
    v24 = v4 & 0xFFFFFFFFFFFFFF8;
    v25 = v4 & 0xC000000000000001;
    v23 = v4 + 32;
    while (2)
    {
      if (v8)
      {
        v4 = MEMORY[0x2530ADF00](v6, v4);
        v13 = __OFADD__(v6++, 1);
        if (!v13)
        {
LABEL_7:
          v28 = v4;
          v14 = [*(v4 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) v11[379]];
          sub_25293F638(0, &qword_27F541320, 0x277CD1EC0);
          v15 = sub_252E37264();

          if (v15 >> 62)
          {
            v4 = sub_252E378C4();
            v16 = v4;
          }

          else
          {
            v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          for (i = 0; v16 != i; ++i)
          {
            if ((v15 & 0xC000000000000001) != 0)
            {
              v4 = MEMORY[0x2530ADF00](i, v15);
            }

            else
            {
              if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_25;
              }

              v4 = *(v15 + 8 * i + 32);
            }

            v18 = v4;
            if (__OFADD__(i, 1))
            {
              __break(1u);
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

            sub_25293F638(0, &qword_27F543DD8, 0x277D82BB8);
            v19 = *(v1 + v7);
            v20 = sub_252E37694();

            if (v20)
            {

              return v28;
            }
          }

          v4 = v27;
          v9 = v24;
          v8 = v25;
          v10 = v23;
          v11 = &off_279711000;
          if (v6 != v26)
          {
            continue;
          }

          goto LABEL_29;
        }
      }

      else
      {
        if (v6 >= *(v9 + 16))
        {
          goto LABEL_27;
        }

        v12 = *(v10 + 8 * v6);

        v13 = __OFADD__(v6++, 1);
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      break;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v22 = v4;
    v5 = sub_252E378C4();
    v4 = v22;
  }

LABEL_29:

  return 0;
}

uint64_t Trigger.deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v4 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

  return v0;
}

uint64_t Trigger.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v4 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Trigger()
{
  result = qword_27F543DE8;
  if (!qword_27F543DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252BEB0DC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BEB1D4, 0, 0);
}

uint64_t sub_252BEB1D4()
{
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544DA8);
  sub_252CC3D90(0xD000000000000028, 0x8000000252E887B0, 0xD000000000000085, 0x8000000252E886B0);
  v4 = *(v1 + 16);

  sub_252C51E70();
  v5 = v0[2];
  if (!v6)
  {
    sub_252C51FFC();
    v8 = v0[2];
    if (v9)
    {

      sub_252C51FFC();
      if (!v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_252C4BEAC();
      if (!v11)
      {
        goto LABEL_12;
      }

      v12 = v0[2];

      sub_252C4BEAC();
      if (!v13)
      {
        goto LABEL_12;
      }
    }

LABEL_11:
    v14 = v0[7];
    sub_252E37024();

    v15 = 0;
    goto LABEL_13;
  }

  sub_252C51E70();
  if (v7)
  {
    goto LABEL_11;
  }

LABEL_12:
  v15 = 1;
LABEL_13:
  v16 = v0[7];
  v17 = v0[2];
  v18 = sub_252E36324();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v21 = 1;
  v20(v16, v15, 1, v18);
  sub_252C4BEAC();
  if (v22)
  {
    v23 = v0[6];
    sub_252E37024();

    v21 = 0;
  }

  v24 = v0[2];
  v25 = 1;
  v20(v0[6], v21, 1, v18);
  if ((sub_252C4B680(0x24) & 1) == 0)
  {
    v26 = v0[2];
    v25 = sub_252C4B680(0x29);
  }

  v27 = v0[7];
  v28 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_252E3C280;
  *(v29 + 32) = 0xD00000000000001ELL;
  *(v29 + 40) = 0x8000000252E6DE40;
  sub_252956C1C(v27, v28);
  v30 = *(v19 + 48);
  v31 = v30(v28, 1, v18);
  v32 = v0[5];
  if (v31 == 1)
  {
    sub_25293847C(v0[5], &qword_27F540298, &unk_252E3C270);
    *(v29 + 48) = 0u;
    *(v29 + 64) = 0u;
  }

  else
  {
    *(v29 + 72) = v18;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v29 + 48));
    (*(v19 + 32))(boxed_opaque_existential_0, v32, v18);
  }

  v34 = v0[6];
  v35 = v0[4];
  *(v29 + 80) = 0x656D614E656D6F68;
  *(v29 + 88) = 0xE800000000000000;
  sub_252956C1C(v34, v35);
  v36 = v30(v35, 1, v18);
  v37 = v0[4];
  if (v36 == 1)
  {
    sub_25293847C(v0[4], &qword_27F540298, &unk_252E3C270);
    *(v29 + 96) = 0u;
    *(v29 + 112) = 0u;
  }

  else
  {
    *(v29 + 120) = v18;
    v38 = __swift_allocate_boxed_opaque_existential_0((v29 + 96));
    (*(v19 + 32))(v38, v37, v18);
  }

  v40 = v0[7];
  v39 = v0[8];
  v41 = v0[6];
  *(v29 + 128) = 0x7571655256547369;
  *(v29 + 136) = 0xEB00000000747365;
  *(v29 + 168) = MEMORY[0x277D839B0];
  *(v29 + 144) = v25 & 1;
  sub_252E362B4();

  sub_25293847C(v41, &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v40, &qword_27F540298, &unk_252E3C270);
  v42 = swift_task_alloc();
  v0[9] = v42;
  *v42 = v0;
  v42[1] = sub_252BEB698;
  v43 = v0[8];
  v44 = v0[3];

  return sub_252959034(v43);
}

uint64_t sub_252BEB698()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *v1;
  v4[10] = v0;

  sub_25293847C(v3, &qword_27F540330, &unk_252E3C7F0);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252BEB838, 0, 0);
  }

  else
  {
    v6 = v4[7];
    v5 = v4[8];
    v8 = v4[5];
    v7 = v4[6];
    v9 = v4[4];

    v10 = v4[1];

    return v10();
  }
}

uint64_t sub_252BEB838()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];

  v6 = v0[1];
  v7 = v0[10];

  return v6();
}

uint64_t sub_252BEB8F4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252BEB0DC(a1);
}

void *sub_252BEB98C@<X0>(void *a1@<X8>)
{
  type metadata accessor for BlockNoMatchingEntitiesHandler();
  swift_allocObject();
  result = sub_252D192A0();
  *a1 = result;
  return result;
}

uint64_t sub_252BEB9C8(void *a1)
{
  v1 = [a1 filters];
  if (!v1)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544DA8);
    sub_252CC4050(0xD00000000000001ELL, 0x8000000252E7D300, 0xD000000000000085, 0x8000000252E886B0, 0xD00000000000001ALL, 0x8000000252E7D3B0, 18);
    return 0;
  }

  v2 = v1;
  v3 = type metadata accessor for HomeFilter();
  v4 = sub_252E37264();

  type metadata accessor for HomeStore();
  v5 = static HomeStore.shared.getter();
  v6 = sub_2529F3D2C(v4);
  v8 = v7;

  if (v8)
  {
    sub_252929F10(v6, 1);

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544DA8);
    sub_252CC4050(0xD000000000000025, 0x8000000252E88740, 0xD000000000000085, 0x8000000252E886B0, 0xD00000000000001ALL, 0x8000000252E7D3B0, 23);
    return 1;
  }

  if (v6 >> 62)
  {
    v12 = sub_252E378C4();
  }

  else
  {
    v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_252929F10(v6, 0);
  if (v12)
  {

    return 0;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v13 = sub_252E36AD4();
  __swift_project_value_buffer(v13, qword_27F544DA8);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E88770);
  v14 = MEMORY[0x2530AD730](v4, v3);
  v16 = v15;

  MEMORY[0x2530AD570](v14, v16);

  sub_252CC4050(0, 0xE000000000000000, 0xD000000000000085, 0x8000000252E886B0, 0xD00000000000001ALL, 0x8000000252E7D3B0, 28);

  return 1;
}

uint64_t sub_252BEBD04(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  if (a1 > 5)
  {
    v2 = 0x65636976726573;
    v6 = 0x7241746567726174;
    v7 = 0x614D746567726174;
    if (a1 != 12)
    {
      v7 = 0x6E776F6E6B6E75;
    }

    if (a1 != 11)
    {
      v6 = v7;
    }

    if (a1 != 10)
    {
      v2 = v6;
    }

    if (a1 == 7)
    {
      v1 = 0x656369766564;
    }

    if (a1 == 6)
    {
      v1 = 0x72656767697274;
    }

    v5 = a1 <= 9;
  }

  else
  {
    v2 = 1836019570;
    v3 = 0x70756F7267;
    v4 = 0x656E656373;
    if (a1 != 5)
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (a1 != 4)
    {
      v3 = v4;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 == 2)
    {
      v1 = 1701736314;
    }

    if (a1 == 1)
    {
      v1 = 1701670760;
    }

    v5 = a1 <= 2;
  }

  if (v5)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t HomeDeviceType.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      result = 0x6C7562746867696CLL;
      break;
    case 2:
      result = 0x686374697773;
      break;
    case 3:
      result = 0x74736F6D72656874;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 7233894;
      break;
    case 6:
      result = 0x74656C74756FLL;
      break;
    case 7:
      result = 0x6B636F4C726F6F64;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x79726574746162;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0x53746361746E6F63;
      break;
    case 13:
      result = 1919905636;
      break;
    case 14:
      result = 0x79746964696D7568;
      break;
    case 15:
      result = 0x736E65536B61656CLL;
      break;
    case 16:
      v2 = 0x53746867696CLL;
      goto LABEL_42;
    case 17:
      result = 0x65536E6F69746F6DLL;
      break;
    case 18:
      result = 0x636E61707563636FLL;
      break;
    case 19:
      result = 0x7974697275636573;
      break;
    case 20:
      v2 = 0x53656B6F6D73;
LABEL_42:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
      break;
    case 21:
      result = 0xD000000000000011;
      break;
    case 22:
      result = 0x776F646E6977;
      break;
    case 23:
      result = 0x736564616873;
      break;
    case 24:
      result = 0x6172656D61437069;
      break;
    case 25:
      result = 0x6F68706F7263696DLL;
      break;
    case 26:
      result = 0x72656B61657073;
      break;
    case 27:
    case 28:
      result = 0x657A69726F746F6DLL;
      break;
    case 29:
      result = 0x6F43726574616568;
      break;
    case 30:
      result = 0xD000000000000016;
      break;
    case 31:
      result = 1952541811;
      break;
    case 32:
      result = 0x656C6B6E69727073;
      break;
    case 33:
      result = 0x65766C6176;
      break;
    case 34:
      result = 0x746563756166;
      break;
    case 35:
      result = 0x7265776F6873;
      break;
    case 36:
      result = 0x69736976656C6574;
      break;
    case 37:
      result = 0x6D6F74737563;
      break;
    case 38:
      result = 0x6C6C6542726F6F64;
      break;
    case 39:
      result = 0x6669727550726961;
      break;
    case 40:
      result = 0x7265746C6966;
      break;
    case 41:
      result = 0x5654656C707061;
      break;
    case 42:
      result = 0x65526172656D6163;
      break;
    case 43:
      result = 0x726F736E6573;
      break;
    case 44:
      result = 0x4574726F70726961;
      break;
    case 45:
      result = 1802398067;
      break;
    case 46:
      result = 0xD000000000000012;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

uint64_t HomeDeviceType.isReadOnlyType.getter(uint64_t a1)
{
  v2 = sub_2529FC004(&unk_2864ADC40);
  LOBYTE(a1) = sub_252DB4F4C(a1, v2);

  return a1 & 1;
}

uint64_t HomeFilter.description.getter()
{
  v1 = v0;
  sub_252E379F4();
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  swift_getObjectType();
  v2 = sub_252E37FB4();
  MEMORY[0x2530AD570](v2);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  sub_252E376B4();
  v3 = sub_252E37D94();
  MEMORY[0x2530AD570](v3);

  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E887E0);
  [v0 isExcludeFilter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540348, &qword_252E3C348);
  v4 = sub_252E36F94();
  MEMORY[0x2530AD570](v4);

  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E88800);
  v5 = [v0 entityIdentifiers];
  if (v5)
  {
    v6 = v5;
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = 0x29656E6F6E28;
  v9 = MEMORY[0x2530AD730](v7, MEMORY[0x277D837D0]);
  v11 = v10;

  MEMORY[0x2530AD570](v9, v11);

  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E88820);
  v12 = sub_252BEBD04([v1 entityType]);
  MEMORY[0x2530AD570](v12);

  MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E88840);
  v13 = [v1 homeEntityName];
  if (v13)
  {
    v14 = v13;
    v15 = sub_252E36F34();
    v17 = v16;
  }

  else
  {
    v17 = 0xE600000000000000;
    v15 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v15, v17);

  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E88860);
  v18 = HomeDeviceType.description.getter([v1 deviceType]);
  MEMORY[0x2530AD570](v18);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E88880);
  v19 = [v1 outerDeviceName];
  if (v19)
  {
    v20 = v19;
    v21 = sub_252E36F34();
    v23 = v22;
  }

  else
  {
    v23 = 0xE600000000000000;
    v21 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v21, v23);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E888A0);
  v24 = HomeDeviceType.description.getter([v1 outerDeviceType]);
  MEMORY[0x2530AD570](v24);

  MEMORY[0x2530AD570](0x7267202020200A2CLL, 0xED0000203A70756FLL);
  v25 = [v1 groupName];
  if (v25)
  {
    v26 = v25;
    v27 = sub_252E36F34();
    v29 = v28;
  }

  else
  {
    v29 = 0xE600000000000000;
    v27 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v27, v29);

  MEMORY[0x2530AD570](0x6F72202020200A2CLL, 0xEC000000203A6D6FLL);
  v30 = [v1 roomName];
  if (v30)
  {
    v31 = v30;
    v32 = sub_252E36F34();
    v34 = v33;
  }

  else
  {
    v34 = 0xE600000000000000;
    v32 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v32, v34);

  MEMORY[0x2530AD570](0x6F7A202020200A2CLL, 0xEC000000203A656ELL);
  v35 = [v1 zoneName];
  if (v35)
  {
    v36 = v35;
    v37 = sub_252E36F34();
    v39 = v38;
  }

  else
  {
    v39 = 0xE600000000000000;
    v37 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v37, v39);

  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E888C0);
  v40 = [v1 targetArea];
  if (v40)
  {
    v41 = v40;
    v42 = sub_252E36F34();
    v44 = v43;
  }

  else
  {
    v44 = 0xE600000000000000;
    v42 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v42, v44);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E888E0);
  v45 = [v1 targetMap];
  if (v45)
  {
    v46 = v45;
    v47 = sub_252E36F34();
    v49 = v48;
  }

  else
  {
    v49 = 0xE600000000000000;
    v47 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v47, v49);

  MEMORY[0x2530AD570](0x6F68202020200A2CLL, 0xEC000000203A656DLL);
  v50 = [v1 homeName];
  if (v50)
  {
    v51 = v50;
    v8 = sub_252E36F34();
    v53 = v52;
  }

  else
  {
    v53 = 0xE600000000000000;
  }

  MEMORY[0x2530AD570](v8, v53);

  MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E88900);
  [v1 hasAllQuantifier];
  v54 = sub_252E36F94();
  MEMORY[0x2530AD570](v54);

  MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E88920);
  v55 = [v1 referencesFavorites];
  sub_252956D08();
  v56 = sub_252E37674();
  v57 = v56;
  if (!v55)
  {

    goto LABEL_32;
  }

  v58 = sub_252E37694();

  if ((v58 & 1) == 0)
  {
LABEL_32:
    v59 = 0xE500000000000000;
    v60 = 0x65736C6166;
    goto LABEL_33;
  }

  v59 = 0xE400000000000000;
  v60 = 1702195828;
LABEL_33:
  MEMORY[0x2530AD570](v60, v59);

  MEMORY[0x2530AD570](32010, 0xE200000000000000);
  return 0;
}

uint64_t HomeAutomationEntityStateValue.Builder.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
  v5 = sub_252E36324();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue) = 0;
  *(v3 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_BOOLeanValue) = 0;
  return v3;
}

uint64_t HomeAutomationEntityStateValue.Builder.init()()
{
  v1 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
  v2 = sub_252E36324();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_BOOLeanValue) = 0;
  return v0;
}

uint64_t sub_252BECC90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  sub_252956C1C(a1, &v9 - v5);
  v7 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
  swift_beginAccess();
  sub_252956C98(v6, v1 + v7);
  swift_endAccess();
}

uint64_t sub_252BECD50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;

  sub_252E362F4();
  v5 = sub_252E36324();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
  swift_beginAccess();
  sub_252956C98(v4, v0 + v6);
  swift_endAccess();
}

uint64_t sub_252BECE80(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue);
  *(v1 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue) = a1;
}

uint64_t sub_252BECECC(uint64_t *a1)
{
  if (a1)
  {
    v2 = type metadata accessor for HomeAutomationAbstractMeasurement(0);
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();

    a1 = sub_252D859B8(v5);
  }

  v6 = *(v1 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue);
  *(v1 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue) = a1;
}

uint64_t sub_252BECF64(void *a1)
{
  sub_252BEEB34(a1);
}

uint64_t sub_252BECF8C(uint64_t a1, void *a2)
{
  sub_252BEE270(a1, a2);
}

uint64_t sub_252BECFB4()
{
  v1 = type metadata accessor for HomeAutomationEntityStateValue(0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
  swift_beginAccess();
  sub_252956C1C(v0 + v5, v4 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue);
  *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue) = *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue);
  *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue) = *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_BOOLeanValue);

  return v4;
}

uint64_t HomeAutomationEntityStateValue.Builder.deinit()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue);
  v1 = *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue);

  return v0;
}

uint64_t HomeAutomationEntityStateValue.Builder.__deallocating_deinit()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue);
  v1 = *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_252BED12C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

void *sub_252BED184()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_252BED1C8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_252BED260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  if (a1 == 0x6156676E69727473 && a2 == 0xEB0000000065756CLL || (sub_252E37DB4() & 1) != 0)
  {
    sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v13);
    v14 = sub_252E36324();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      v16 = v13;
LABEL_6:
      result = sub_252938BBC(v16);
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v14;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    return (*(v15 + 32))(boxed_opaque_existential_0, v13, v14);
  }

  else
  {
    result = 0x56636972656D756ELL;
    if (a1 == 0x56636972656D756ELL && a2 == 0xEC00000065756C61 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v19 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
      if (!v19)
      {
        goto LABEL_7;
      }

      *(a3 + 24) = type metadata accessor for HomeAutomationAbstractMeasurement(0);
      *a3 = v19;
    }

    else
    {
      result = 0x566E61656C6F6F62;
      if (a1 == 0x566E61656C6F6F62 && a2 == 0xEC00000065756C61 || (result = sub_252E37DB4(), (result & 1) != 0))
      {
        v20 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
        *(a3 + 24) = MEMORY[0x277D839B0];
        *a3 = v20;
      }

      else
      {
        if (a1 != 0x676E697274536F74 || a2 != 0xE800000000000000)
        {
          result = sub_252E37DB4();
          if ((result & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        sub_252BD646C(v11);
        v21 = sub_252E36324();
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(v11, 1, v21) == 1)
        {
          v16 = v11;
          goto LABEL_6;
        }

        *(a3 + 24) = v21;
        v23 = __swift_allocate_boxed_opaque_existential_0(a3);
        return (*(v22 + 32))(v23, v11, v21);
      }
    }
  }

  return result;
}

uint64_t sub_252BED5C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x56636972656D756ELL;
  if (v2 != 1)
  {
    v3 = 0x566E61656C6F6F62;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6156676E69727473;
  }

  if (v2)
  {
    v5 = 0xEC00000065756C61;
  }

  else
  {
    v5 = 0xEB0000000065756CLL;
  }

  v6 = 0x56636972656D756ELL;
  if (*a2 != 1)
  {
    v6 = 0x566E61656C6F6F62;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6156676E69727473;
  }

  if (*a2)
  {
    v8 = 0xEC00000065756C61;
  }

  else
  {
    v8 = 0xEB0000000065756CLL;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

uint64_t sub_252BED6BC()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BED778()
{
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252BED820()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BED8D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252BEF65C();
  *a2 = result;
  return result;
}

void sub_252BED908(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000065756CLL;
  v4 = 0x56636972656D756ELL;
  if (v2 != 1)
  {
    v4 = 0x566E61656C6F6F62;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6156676E69727473;
  }

  if (!v5)
  {
    v3 = 0xEC00000065756C61;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_252BED980()
{
  v1 = 0x56636972656D756ELL;
  if (*v0 != 1)
  {
    v1 = 0x566E61656C6F6F62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6156676E69727473;
  }
}

uint64_t sub_252BED9F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252BEF65C();
  *a1 = result;
  return result;
}

uint64_t sub_252BEDA1C(uint64_t a1)
{
  v2 = sub_252BEF01C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252BEDA58(uint64_t a1)
{
  v2 = sub_252BEF01C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeAutomationEntityStateValue.deinit()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue);
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

  return v0;
}

uint64_t HomeAutomationEntityStateValue.__deallocating_deinit()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue);
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

  v2 = *(*v0 + 12);
  v3 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_252BEDB50(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543DF8, &qword_252E51EC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252BEF01C();
  sub_252E37F84();
  v15 = 0;
  sub_252E36324();
  sub_252BEF070(&qword_27F540548, MEMORY[0x277D55C48]);
  sub_252E37CD4();
  if (!v2)
  {
    v14 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
    v13[15] = 1;
    type metadata accessor for HomeAutomationAbstractMeasurement(0);
    sub_252BEF070(&qword_27F540E18, type metadata accessor for HomeAutomationAbstractMeasurement);
    sub_252E37CD4();
    v11 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
    v13[14] = 2;
    sub_252E37D04();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t HomeAutomationEntityStateValue.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  HomeAutomationEntityStateValue.init(from:)(a1);
  return v5;
}

id *HomeAutomationEntityStateValue.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v20 - v7;
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543E08, &qword_252E51ED0);
  v9 = *(v20[0] - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v20[0]);
  v12 = v20 - v11;
  v1[2] = 0;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252BEF01C();
  sub_252E37F74();
  if (v2)
  {

    type metadata accessor for HomeAutomationEntityStateValue(0);
    v16 = *(*v1 + 12);
    v17 = *(*v1 + 26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v9;
    sub_252E36324();
    v23 = 0;
    sub_252BEF070(&qword_27F540538, MEMORY[0x277D55C48]);
    v15 = v20[0];
    sub_252E37BE4();
    sub_2529439A0(v8, v1 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue);
    type metadata accessor for HomeAutomationAbstractMeasurement(0);
    v22 = 1;
    sub_252BEF070(&qword_27F540E00, type metadata accessor for HomeAutomationAbstractMeasurement);
    sub_252E37BE4();
    *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue) = v20[1];
    v21 = 2;
    v19 = sub_252E37C14();
    (*(v14 + 8))(v12, v15);
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue) = v19 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t (*sub_252BEE178())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

id *sub_252BEE1F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for HomeAutomationEntityStateValue(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = HomeAutomationEntityStateValue.init(from:)(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_252BEE270(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - v8;
  v10 = sub_2529FC1F0(&unk_2864A1628);
  v11 = sub_252DB4F4C(a1, v10);

  if ((v11 & 1) == 0)
  {
    return v3;
  }

  v12 = 0x27F53F000uLL;
  if (a1 <= 26)
  {
    if (a1 == 25)
    {
      if (!a2)
      {
        goto LABEL_29;
      }

      v31 = [a2 runState];
      if (v31 <= 0x11 && ((1 << v31) & 0x2004E) != 0)
      {
        v32 = v31;
        HomeAttributeStateType.description.getter(v31);
        HomeAttributeStateType.description.getter(v32);
        sub_252E362F4();
        v33 = sub_252E36324();
        (*(*(v33 - 8) + 56))(v9, 0, 1, v33);
        v34 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
        swift_beginAccess();
        sub_252956C98(v9, v3 + v34);
        swift_endAccess();
        goto LABEL_29;
      }

      v40 = v31;
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v41 = sub_252E36AD4();
      __swift_project_value_buffer(v41, qword_27F544D60);
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0x74617473206E7552, 0xEA00000000002065);
      v42 = HomeAttributeStateType.description.getter(v40);
      MEMORY[0x2530AD570](v42);

      MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E88B90);
      v28 = v45;
      v29 = v46;
      v30 = 116;
      goto LABEL_24;
    }

    if (a1 != 26)
    {
LABEL_21:
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v27 = sub_252E36AD4();
      __swift_project_value_buffer(v27, qword_27F544D60);
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E88A20);
      v47 = a1;
      sub_252E37AE4();
      MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E88A40);
      v28 = v45;
      v29 = v46;
      v30 = 163;
LABEL_24:
      sub_252CC4050(v28, v29, 0xD000000000000093, 0x8000000252E88A60, 0xD000000000000022, 0x8000000252E88B00, v30);

      v12 = 0x27F53F000;
      goto LABEL_29;
    }

    if (a2)
    {
      v19 = a2;
      if ([v19 runState] != 3 && objc_msgSend(v19, sel_runState) != 1 && objc_msgSend(v19, sel_runState) != 17)
      {
        if ([v19 runState] != 6)
        {

          goto LABEL_29;
        }

        v43 = [v19 runState];
        HomeAttributeStateType.description.getter(v43);
      }

      sub_252E362F4();

      goto LABEL_17;
    }
  }

  else
  {
    if ((a1 - 27) >= 6)
    {
      if (a1 == 33)
      {
        sub_252E362F4();
        v22 = sub_252E36324();
        (*(*(v22 - 8) + 56))(v9, 0, 1, v22);
        v23 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
        swift_beginAccess();
        sub_252956C98(v9, v3 + v23);
        swift_endAccess();
        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        v24 = sub_252E36AD4();
        __swift_project_value_buffer(v24, qword_27F544D60);
        v45 = 0;
        v46 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD00000000000003ELL, 0x8000000252E88B50);
        v47 = a2;
        v25 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433C8, &qword_252E4B818);
        v26 = sub_252E36F94();
        MEMORY[0x2530AD570](v26);

        sub_252CC4050(v45, v46, 0xD000000000000093, 0x8000000252E88A60, 0xD000000000000022, 0x8000000252E88B00, 160);

        goto LABEL_29;
      }

      if (a1 != 34)
      {
        goto LABEL_21;
      }
    }

    v13 = sub_252CC496C(qword_2864A1698);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543E48, &unk_252E521C0);
    swift_arrayDestroy();
    if (v13[2])
    {
      v14 = sub_252A488EC(a1);
      if (v15)
      {
        v16 = (v13[7] + 16 * v14);
        v17 = *v16;
        v18 = v16[1];
        swift_bridgeObjectRetain_n();

        v12 = 0x27F53F000uLL;
        sub_252E362F4();
LABEL_17:
        v20 = sub_252E36324();
        (*(*(v20 - 8) + 56))(v9, 0, 1, v20);
        v21 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
        swift_beginAccess();
        sub_252956C98(v9, v3 + v21);
        swift_endAccess();
        goto LABEL_29;
      }
    }
  }

LABEL_29:
  if (*(v12 + 1256) != -1)
  {
    swift_once();
  }

  v35 = sub_252E36AD4();
  __swift_project_value_buffer(v35, qword_27F544D60);
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_252E379F4();

  v47 = 0xD000000000000018;
  v48 = 0x8000000252E88B30;
  v36 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
  swift_beginAccess();
  sub_252956C1C(v3 + v36, v9);
  v37 = sub_252E36F94();
  MEMORY[0x2530AD570](v37);

  MEMORY[0x2530AD570](0x74756F20726F6620, 0xED000020656D6F63);
  v38 = sub_252B9ACF0(a1);
  MEMORY[0x2530AD570](v38);

  sub_252CC3D90(v47, v48, 0xD000000000000093, 0x8000000252E88A60);

  return v3;
}

uint64_t sub_252BEEB34(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - v6;
  v8 = [a1 runState];
  v9 = [a1 cleanModes];
  v10 = sub_252E37264();

  if (v8 == 2)
  {
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = 32;
      v13 = *(v10 + 16);
      while (v13)
      {
        v14 = *(v10 + v12);
        v12 += 8;
        --v13;
        if (v14 == 1)
        {
          v15 = 32;
          v16 = *(v10 + 16);
          while (v16)
          {
            v17 = *(v10 + v15);
            v15 += 8;
            --v16;
            if (v17 == 2)
            {
LABEL_20:

              goto LABEL_11;
            }
          }

          break;
        }
      }

      v20 = 32;
      v21 = *(v10 + 16);
      while (v21)
      {
        v22 = *(v10 + v20);
        v20 += 8;
        --v21;
        if (v22 == 1)
        {
          goto LABEL_20;
        }
      }

      v23 = 32;
      while (v11)
      {
        v24 = *(v10 + v23);
        v23 += 8;
        --v11;
        if (v24 == 2)
        {
          goto LABEL_20;
        }
      }

      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v25 = sub_252E36AD4();
      __swift_project_value_buffer(v25, qword_27F544D60);
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_252E379F4();

      v37 = 0xD00000000000002ALL;
      v38 = 0x8000000252E88C20;
      v26 = [a1 description];
      v27 = sub_252E36F34();
      v29 = v28;

      MEMORY[0x2530AD570](v27, v29);

      sub_252CC4050(v37, v38, 0xD000000000000093, 0x8000000252E88A60, 0xD00000000000001CLL, 0x8000000252E88C00, 93);
    }
  }

  else
  {

    HomeAttributeStateType.description.getter(v8);

LABEL_11:
    sub_252E362F4();
    v18 = sub_252E36324();
    (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
    v19 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
    swift_beginAccess();
    sub_252956C98(v7, v2 + v19);
    swift_endAccess();
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v30 = sub_252E36AD4();
  __swift_project_value_buffer(v30, qword_27F544D60);
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_252E379F4();

  v35 = 0xD00000000000002BLL;
  v36 = 0x8000000252E88BD0;
  v31 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
  swift_beginAccess();
  sub_252956C1C(v2 + v31, v7);
  v32 = sub_252E36F94();
  MEMORY[0x2530AD570](v32);

  sub_252CC4050(v35, v36, 0xD000000000000093, 0x8000000252E88A60, 0xD00000000000001CLL, 0x8000000252E88C00, 97);

  return v2;
}

unint64_t sub_252BEF01C()
{
  result = qword_27F543E00;
  if (!qword_27F543E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543E00);
  }

  return result;
}

uint64_t sub_252BEF070(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_252BEF150()
{
  sub_2529576E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_252BEF350()
{
  sub_2529576E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of HomeAutomationEntityStateValue.Builder.withNumericValue(_:)()
{
  return (*(*v0 + 200))();
}

{
  return (*(*v0 + 208))();
}

unint64_t sub_252BEF558()
{
  result = qword_27F543E30;
  if (!qword_27F543E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543E30);
  }

  return result;
}

unint64_t sub_252BEF5B0()
{
  result = qword_27F543E38;
  if (!qword_27F543E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543E38);
  }

  return result;
}

unint64_t sub_252BEF608()
{
  result = qword_27F543E40;
  if (!qword_27F543E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543E40);
  }

  return result;
}

uint64_t sub_252BEF65C()
{
  v0 = sub_252E37B74();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252BEF6A8()
{
  v0 = sub_252E34164();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_252E340E4();
  sub_252AB3FEC(v4, 0, v13);
  (*(v1 + 8))(v4, v0);
  memcpy(v14, v13, sizeof(v14));
  memcpy(v15, v13, sizeof(v15));
  if (sub_252956B94(v15) != 1)
  {
    v8 = BYTE1(v15[1]);
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544DA8);
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_252E379F4();

    v13[0] = 0xD000000000000026;
    v13[1] = 0x8000000252E6C420;
    v12[7] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540790, &qword_252E48170);
    v10 = sub_252E36F94();
    MEMORY[0x2530AD570](v10);

    sub_252CC3D90(v13[0], v13[1], 0xD000000000000098, 0x8000000252E88C50);

    if (v8 == 3)
    {
      goto LABEL_10;
    }

    if (!v8)
    {
      swift_bridgeObjectRelease_n();
      goto LABEL_19;
    }

    v11 = sub_252E37DB4();

    if ((v11 & 1) == 0)
    {
LABEL_10:
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v9, qword_27F544D60);
      sub_252CC3D90(0xD000000000000017, 0x8000000252E6C450, 0xD00000000000006BLL, 0x8000000252E6C470);
      if (qword_27F53F388 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      qword_27F543738 = 0;

      sub_252E37614();
      if (v8 == 3)
      {
        sub_252E33A04();
        return sub_25299F5D4(v14);
      }
    }

    if (v8 == 2)
    {
      sub_252E339E4();
      return sub_25299F5D4(v14);
    }

LABEL_19:
    sub_252E339F4();
    return sub_25299F5D4(v14);
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544DA8);
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_252E379F4();

  v13[0] = 0xD000000000000026;
  v13[1] = 0x8000000252E6C3F0;
  v6 = sub_252E340C4();
  MEMORY[0x2530AD570](v6);

  sub_252CC3D90(v13[0], v13[1], 0xD000000000000098, 0x8000000252E88C50);

  return sub_252E33A04();
}

uint64_t sub_252BEFAF0(void *a1)
{
  v130 = sub_252E33044();
  v127 = *(v130 - 8);
  v3 = *(v127 + 64);
  MEMORY[0x28223BE20](v130);
  v123 = &v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543E78, &qword_252E52238);
  v5 = *(*(v125 - 8) + 64);
  MEMORY[0x28223BE20](v125);
  v129 = &v117 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5415C8, &qword_252E40550);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v124 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v126 = &v117 - v12;
  MEMORY[0x28223BE20](v11);
  v128 = &v117 - v13;
  v134 = sub_252E32BA4();
  v137 = *(v134 - 8);
  v14 = *(v137 + 64);
  MEMORY[0x28223BE20](v134);
  v16 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F58, &qword_252E3F7D0);
  v17 = *(*(v132 - 8) + 64);
  MEMORY[0x28223BE20](v132);
  v19 = &v117 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v131 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v133 = &v117 - v25;
  MEMORY[0x28223BE20](v24);
  v135 = &v117 - v26;
  v27 = sub_252E32E04();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v117 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v117 - v33;
  objc_opt_self();
  v136 = swift_dynamicCastObjCClass();
  if (v136)
  {
    objc_opt_self();
    v35 = swift_dynamicCastObjCClass();
    if (v35)
    {
      v36 = v35;
      v120 = v16;
      v121 = v19;
      v37 = v1;
      v38 = a1;
      v39 = v136;
      v40 = [v136 fireDate];
      sub_252E32DB4();

      v122 = v36;
      v41 = [v36 fireDate];
      sub_252E32DB4();

      LOBYTE(v41) = sub_252E32DA4();
      v42 = *(v28 + 8);
      v42(v32, v27);
      v42(v34, v27);
      if ((v41 & 1) == 0)
      {

        goto LABEL_28;
      }

      v118 = v38;
      v119 = v37;
      v43 = [v39 recurrence];
      if (v43)
      {
        v44 = v135;
        v45 = v43;
        sub_252E32B24();

        v46 = 0;
        v47 = v134;
      }

      else
      {
        v46 = 1;
        v47 = v134;
        v44 = v135;
      }

      v65 = v122;
      v66 = v133;
      v67 = *(v137 + 56);
      v68 = 1;
      v67(v44, v46, 1, v47);
      v69 = [v65 recurrence];
      if (v69)
      {
        v70 = v69;
        sub_252E32B24();

        v68 = 0;
      }

      v67(v66, v68, 1, v47);
      v71 = *(v132 + 48);
      v72 = v121;
      sub_252938414(v44, v121, &qword_27F540F00, &unk_252E3FEC0);
      sub_252938414(v66, v72 + v71, &qword_27F540F00, &unk_252E3FEC0);
      v73 = *(v137 + 48);
      if (v73(v72, 1, v47) == 1)
      {
        sub_25293847C(v66, &qword_27F540F00, &unk_252E3FEC0);
        sub_25293847C(v44, &qword_27F540F00, &unk_252E3FEC0);
        if (v73(v72 + v71, 1, v47) == 1)
        {
          sub_25293847C(v72, &qword_27F540F00, &unk_252E3FEC0);
          v74 = v119;
LABEL_31:
          v83 = v136;
          v84 = [v136 policy];
          v85 = [v65 policy];
          v86 = v85;
          if (v84)
          {
            v88 = v129;
            v87 = v130;
            v89 = v128;
            if (v85)
            {
              sub_25293F638(0, &qword_27F543E80, 0x277CD1ED8);
              v90 = sub_252E37694();

              if (v90)
              {
                goto LABEL_37;
              }
            }

            else
            {
            }
          }

          else
          {
            v88 = v129;
            v87 = v130;
            v89 = v128;
            if (!v85)
            {
LABEL_37:
              v91 = [v83 timeZone];
              if (v91)
              {
                v92 = v91;
                sub_252E33024();

                v93 = 0;
              }

              else
              {
                v93 = 1;
              }

              v98 = *(v127 + 56);
              v99 = 1;
              v98(v89, v93, 1, v87);
              v100 = [v122 timeZone];
              v101 = v126;
              if (v100)
              {
                v102 = v100;
                sub_252E33024();

                v99 = 0;
              }

              v98(v101, v99, 1, v87);
              v103 = *(v125 + 48);
              sub_252938414(v89, v88, &qword_27F5415C8, &qword_252E40550);
              sub_252938414(v101, v88 + v103, &qword_27F5415C8, &qword_252E40550);
              v104 = *(v127 + 48);
              if (v104(v88, 1, v87) == 1)
              {

                sub_25293847C(v101, &qword_27F5415C8, &qword_252E40550);
                sub_25293847C(v89, &qword_27F5415C8, &qword_252E40550);
                if (v104(v88 + v103, 1, v87) == 1)
                {
                  sub_25293847C(v88, &qword_27F5415C8, &qword_252E40550);
                  v76 = 1;
                  return v76 & 1;
                }
              }

              else
              {
                v105 = v124;
                sub_252938414(v88, v124, &qword_27F5415C8, &qword_252E40550);
                if (v104(v88 + v103, 1, v87) != 1)
                {
                  v109 = v127;
                  v110 = v88 + v103;
                  v111 = v123;
                  (*(v127 + 32))(v123, v110, v87);
                  sub_252BF6BD8(&qword_27F543E88, MEMORY[0x277CC9A70]);
                  v76 = sub_252E36EF4();

                  v112 = *(v109 + 8);
                  v112(v111, v87);
                  sub_25293847C(v126, &qword_27F5415C8, &qword_252E40550);
                  sub_25293847C(v89, &qword_27F5415C8, &qword_252E40550);
                  v112(v105, v87);
                  sub_25293847C(v88, &qword_27F5415C8, &qword_252E40550);
                  return v76 & 1;
                }

                sub_25293847C(v126, &qword_27F5415C8, &qword_252E40550);
                sub_25293847C(v89, &qword_27F5415C8, &qword_252E40550);
                (*(v127 + 8))(v105, v87);
              }

              sub_25293847C(v88, &qword_27F543E78, &qword_252E52238);
LABEL_28:
              v76 = 0;
              return v76 & 1;
            }
          }

LABEL_27:

          goto LABEL_28;
        }
      }

      else
      {
        v75 = v131;
        sub_252938414(v72, v131, &qword_27F540F00, &unk_252E3FEC0);
        if (v73(v72 + v71, 1, v47) != 1)
        {
          v78 = v137;
          v79 = v75;
          v80 = v120;
          (*(v137 + 32))(v120, v72 + v71, v47);
          sub_252BF6BD8(&qword_27F540F68, MEMORY[0x277CC8990]);
          v81 = sub_252E36EF4();
          v82 = *(v78 + 8);
          v82(v80, v47);
          sub_25293847C(v66, &qword_27F540F00, &unk_252E3FEC0);
          sub_25293847C(v135, &qword_27F540F00, &unk_252E3FEC0);
          v82(v79, v47);
          sub_25293847C(v72, &qword_27F540F00, &unk_252E3FEC0);
          v74 = v119;
          if ((v81 & 1) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_31;
        }

        sub_25293847C(v66, &qword_27F540F00, &unk_252E3FEC0);
        sub_25293847C(v44, &qword_27F540F00, &unk_252E3FEC0);
        (*(v137 + 8))(v75, v47);
      }

      sub_25293847C(v72, &qword_27F540F58, &qword_252E3F7D0);
      v74 = v119;
      goto LABEL_27;
    }
  }

  objc_opt_self();
  v48 = swift_dynamicCastObjCClass();
  if (!v48)
  {
    goto LABEL_28;
  }

  v49 = v48;
  objc_opt_self();
  v50 = swift_dynamicCastObjCClass();
  if (!v50)
  {
    goto LABEL_28;
  }

  v51 = v50;
  v52 = v1;
  v53 = a1;
  v54 = [v49 events];
  sub_25293F638(0, &qword_27F542120, 0x277CD19E8);
  v55 = sub_252E37264();

  if (v55 >> 62)
  {
    v56 = sub_252E378C4();
  }

  else
  {
    v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v56)
  {
    goto LABEL_16;
  }

  v57 = [v51 events];
  v58 = sub_252E37264();

  v59 = v58 >> 62 ? sub_252E378C4() : *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v59)
  {
    goto LABEL_16;
  }

  v60 = [v49 events];
  v61 = sub_252E37264();

  v62 = [v51 events];
  v63 = sub_252E37264();

  LOBYTE(v62) = sub_252BF4BF8(v63, v61);

  if ((v62 & 1) == 0)
  {
    goto LABEL_16;
  }

  v64 = [v49 executeOnce];
  if (v64 != [v51 executeOnce])
  {
    goto LABEL_16;
  }

  v94 = [v49 policy];
  v95 = [v51 policy];
  v96 = v95;
  if (v94)
  {
    if (!v95)
    {

      goto LABEL_16;
    }

    sub_25293F638(0, &qword_27F543E80, 0x277CD1ED8);
    v97 = sub_252E37694();

    if ((v97 & 1) == 0)
    {
LABEL_16:

      goto LABEL_28;
    }
  }

  else if (v95)
  {

    goto LABEL_16;
  }

  v106 = [v49 recurrences];
  if (v106)
  {
    v107 = v106;
    v108 = sub_252E37264();
  }

  else
  {
    v108 = 0;
  }

  v113 = [v51 recurrences];
  if (!v113)
  {
    if (v108)
    {
      goto LABEL_65;
    }

LABEL_69:
    v76 = 1;
    return v76 & 1;
  }

  v114 = v113;
  v115 = sub_252E37264();

  if (!v108)
  {

    if (v115)
    {
      goto LABEL_67;
    }

    goto LABEL_69;
  }

  if (!v115)
  {
LABEL_65:

LABEL_67:

    goto LABEL_28;
  }

  v116 = sub_252AE9CBC(v108, v115);

  return v116 & 1;
}

void sub_252BF09C4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_252BF0A50(void *a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6, void *a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v27[-v16];
  if (a1)
  {
    v18 = a1;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v19 = sub_252E36AD4();
    __swift_project_value_buffer(v19, qword_27F544D60);
    sub_252CC4050(0xD00000000000001DLL, 0x8000000252E88E20, 0xD000000000000071, 0x8000000252E801E0, 0xD000000000000041, 0x8000000252E88E40, 55);
    swift_beginAccess();
    sub_252BF5F1C(a1, (a3 + 16));
    swift_endAccess();
    v20 = a1;
    a4(a1);
  }

  else
  {
    swift_beginAccess();
    v21 = *(a3 + 16);
    if (v21)
    {
      v22 = v21;
      v23 = [a2 uniqueIdentifier];
      sub_252E32E64();

      v24 = sub_252E32E84();
      (*(*(v24 - 8) + 56))(v17, 0, 1, v24);
      sub_252C77BA4(v17);

      sub_25293847C(v17, &unk_27F541F20, &qword_252E3C180);
    }

    swift_beginAccess();
    sub_252BF62CC((a3 + 16));
    swift_endAccess();
    v25 = swift_allocObject();
    *(v25 + 16) = a2;
    *(v25 + 24) = a3;
    *(v25 + 32) = a4;
    *(v25 + 40) = a5;
    v26 = a2;

    sub_252BF155C(a6, a7, sub_252BF6578, v25);
  }
}

void sub_252BF0D2C(void *a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  if (a1)
  {
    v9 = a1;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544D60);
    sub_252CC4050(0xD000000000000028, 0x8000000252E89150, 0xD000000000000071, 0x8000000252E801E0, 0xD000000000000041, 0x8000000252E88E40, 69);
    swift_beginAccess();
    sub_252BF5F1C(a1, (a3 + 16));
    swift_endAccess();
    v11 = a1;
    a4(a1);
  }

  else
  {
    v13 = swift_allocObject();
    v13[2] = a2;
    v13[3] = a3;
    v13[4] = a4;
    v13[5] = a5;
    v16[4] = sub_252BF6BCC;
    v16[5] = v13;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_2529E0210;
    v16[3] = &block_descriptor_82;
    v14 = _Block_copy(v16);
    v15 = a2;

    [v15 enable:1 completionHandler:v14];
    _Block_release(v14);
  }
}

void sub_252BF0F2C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  if (a1)
  {
    v7 = a1;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544D60);
    sub_252CC4050(0xD000000000000018, 0x8000000252E89180, 0xD000000000000071, 0x8000000252E801E0, 0xD000000000000041, 0x8000000252E88E40, 77);
    swift_beginAccess();
    sub_252BF5F1C(a1, (a3 + 16));
    swift_endAccess();
    v9 = a1;
    a4(a1);
  }

  else
  {
    swift_beginAccess();
    sub_252BF109C((a3 + 16));
    swift_endAccess();
    a4(0);
  }
}

uint64_t sub_252BF109C(void **a1)
{
  v3 = v1;
  sub_252BF62CC(a1);
  v5 = *a1;
  if (v5)
  {
    v6 = sub_252DB7C84()[5];

    v7 = sub_252DB5924();

    if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_44;
    }

    if (HIDWORD(v7))
    {
      goto LABEL_45;
    }

    [v5 setCommandDuration_];
    v8 = [v5 homeAutomationRequests];
    if (v8)
    {
      v9 = v8;
      sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
      v7 = sub_252E37264();

      if (v7 >> 62)
      {
        goto LABEL_46;
      }

      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
      {
LABEL_47:

        goto LABEL_56;
      }

      while (1)
      {
        v29 = v5;
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x2530ADF00](0, v7);
        }

        else
        {
          if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_51;
          }

          v10 = *(v7 + 32);
        }

        v28 = v10;

        v7 = [v3 actionSets];
        sub_25293F638(0, &unk_2814B0260, 0x277CD1800);
        v11 = sub_252E37264();

        v30 = MEMORY[0x277D84F90];
        if (v11 >> 62)
        {
          v3 = sub_252E378C4();
        }

        else
        {
          v3 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v12 = MEMORY[0x277D84F90];
        if (!v3)
        {
          v3 = MEMORY[0x277D84F90];
LABEL_22:

          v30 = v12;
          v2 = v3 & 0xFFFFFFFFFFFFFF8;
          if (!(v3 >> 62))
          {
            v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v17)
            {
              goto LABEL_52;
            }

LABEL_24:
            v5 = 0;
            v7 = MEMORY[0x277D84F90];
LABEL_25:
            v18 = v5;
            while (1)
            {
              if ((v3 & 0xC000000000000001) != 0)
              {
                v19 = MEMORY[0x2530ADF00](v18, v3);
              }

              else
              {
                if (v18 >= *(v2 + 16))
                {
                  goto LABEL_43;
                }

                v19 = *(v3 + 8 * v18 + 32);
              }

              v20 = v19;
              v5 = (v18 + 1);
              if (__OFADD__(v18, 1))
              {
                goto LABEL_42;
              }

              objc_opt_self();
              v21 = swift_dynamicCastObjCClass();
              if (v21)
              {
                v22 = [v21 characteristic];
                v23 = [v22 service];

                if (v23)
                {
                  MEMORY[0x2530AD700]();
                  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v24 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    sub_252E372A4();
                  }

                  sub_252E372D4();
                  v7 = v30;
                  if (v5 != v17)
                  {
                    goto LABEL_25;
                  }

                  goto LABEL_53;
                }
              }

              else
              {
              }

              ++v18;
              if (v5 == v17)
              {
                goto LABEL_53;
              }
            }
          }

LABEL_51:
          v17 = sub_252E378C4();
          if (!v17)
          {
LABEL_52:
            v7 = MEMORY[0x277D84F90];
LABEL_53:

            v25 = sub_252DF9B38(v7);

            if (v25 >> 62)
            {
              v26 = sub_252E378C4();
            }

            else
            {
              v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v5 = v29;

            sub_252C77A20(v26);

            break;
          }

          goto LABEL_24;
        }

        v13 = 0;
        v5 = (v11 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x2530ADF00](v13, v11);
          }

          else
          {
            if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_41;
            }

            v14 = *(v11 + 8 * v13 + 32);
          }

          v7 = v14;
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          v16 = [v14 actions];
          sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
          sub_2529E6100();
          v2 = sub_252E373A4();

          v7 = &v30;
          sub_25297B314(v2);
          ++v13;
          if (v15 == v3)
          {
            v3 = v30;
            v12 = MEMORY[0x277D84F90];
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        if (sub_252E378C4() <= 0)
        {
          goto LABEL_47;
        }
      }
    }

LABEL_56:
    sub_252DB559C();
  }

  sub_252DB7C84();
  sub_252DB7138(v5);
}