id sub_20D06E8F8(void *a1)
{
  v2 = v1;
  v4 = sub_20D563818();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  v19 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CF9F128(v2, v21, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      (*(v5 + 32))(v9, v21, v4);
      v34 = v5;
      v35 = sub_20D5637C8();
      v24 = [a1 hf:v35 mediaSystemWithIdentifier:?];

      (*(v34 + 8))(v9, v4);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      (*(v5 + 32))(v43, v21, v4);
      v25 = [a1 accessories];
      sub_20CECF940(0, &qword_28111FFF0);
      v26 = sub_20D567A78();

      v44 = MEMORY[0x277D84F90];
      v41 = v5;
      v42 = v4;
      if (v26 >> 62)
      {
LABEL_28:
        v27 = sub_20D568768();
      }

      else
      {
        v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v28 = 0;
      v40 = 0;
      v29 = MEMORY[0x277D84F90];
      while (v27 != v28)
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v30 = MEMORY[0x20F31DD20](v28, v26);
        }

        else
        {
          if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v30 = *(v26 + 8 * v28 + 32);
        }

        v31 = v30;
        v32 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v33 = [v30 mediaProfile];

        ++v28;
        if (v33)
        {
          MEMORY[0x20F31CEE0]();
          if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20D567AB8();
          }

          sub_20D567B08();
          v29 = v44;
          v28 = v32;
        }
      }

      MEMORY[0x28223BE20](v37);
      v38 = v43;
      *(&v40 - 2) = v43;
      v24 = sub_20D06CD48(sub_20D0720E8, (&v40 - 4), v29);

      (*(v41 + 8))(v38, v42);
    }

    else
    {
      sub_20D071AA8(v21, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
      return 0;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v5 + 32))(v18, v21, v4);
      v23 = sub_20D5637C8();
      v24 = [a1 hf:v23 serviceWithIdentifier:?];

      (*(v5 + 8))(v18, v4);
    }

    else
    {
      (*(v5 + 32))(v12, v21, v4);
      v36 = sub_20D5637C8();
      v24 = [a1 hf:v36 serviceGroupWithIdentifier:?];

      (*(v5 + 8))(v12, v4);
    }
  }

  else
  {
    (*(v5 + 32))(v15, v21, v4);
    v24 = sub_20D0712F4(a1);
    (*(v5 + 8))(v15, v4);
  }

  return v24;
}

uint64_t sub_20D06EE5C(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v2[17] = swift_getObjectType();
  sub_20D567C18();
  v2[18] = sub_20D567C08();
  v4 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D06EF00, v4, v3);
}

uint64_t sub_20D06EF00()
{
  v29 = v0;
  v2 = v0[16];

  v3 = (v2 + qword_27C820498);
  swift_beginAccess();
  if (*(v3 + 8) == 1)
  {
    v4 = *(v0[16] + qword_27C8204C0);
    v5 = *(v4 + 16);
    goto LABEL_7;
  }

  if ((*v3 & 0x8000000000000000) == 0)
  {
    v4 = *(v0[16] + qword_27C8204C0);
    if (*(v4 + 16) >= *v3)
    {
      v5 = *v3;
    }

    else
    {
      v5 = *(v4 + 16);
    }

LABEL_7:
    v6 = *(type metadata accessor for ControlCenterModuleConfiguration.ElementID(0) - 8);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v28[0] = MEMORY[0x277D84F98];
    sub_20D5663C8();
    v1 = sub_20D071608(MEMORY[0x277D84F90], v4 + v7, 0, (2 * v5) | 1, v28);

    if (qword_281120950 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_14:
  swift_once();
LABEL_8:
  v8 = sub_20D565988();
  __swift_project_value_buffer(v8, qword_281120958);
  sub_20D5663C8();
  v9 = sub_20D565968();
  v10 = sub_20D567E88();

  if (os_log_type_enabled(v9, v10))
  {
    v27 = v1;
    v11 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28[0] = v26;
    *v11 = 136315394;
    v12 = sub_20D568E18();
    v14 = sub_20CEE913C(v12, v13, v28);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v15 = sub_20D568638();
    v17 = sub_20CEE913C(v15, v16, v28);

    *(v11 + 14) = v17;
    _os_log_impl(&dword_20CEB6000, v9, v10, "%s reloading with element IDs: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v26, -1, -1);
    v18 = v11;
    v1 = v27;
    MEMORY[0x20F31FC70](v18, -1, -1);
  }

  v19 = v0[16];
  v20 = v0[17];
  v21 = v0[15];
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8204D0);
  v0[6] = sub_20CF156D0(&qword_27C8204D8, &qword_27C8204D0);
  v0[2] = v1;
  v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8204E0);
  v0[11] = sub_20CF156D0(&unk_27C8204E8, &qword_27C8204E0);
  v0[7] = v21;
  v22 = swift_task_alloc();
  *(v22 + 16) = v19;
  *(v22 + 24) = v20;
  *(swift_task_alloc() + 16) = v19;
  type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID(0);
  sub_20CECF940(0, &qword_281120AC0);
  sub_20D0720A0(&qword_27C8204F8, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
  sub_20D5663C8();
  v23 = sub_20D565A58();

  __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v24 = v0[1];

  return v24(v23);
}

uint64_t sub_20D06F3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v33 = type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID(0);
  MEMORY[0x28223BE20](v33);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = sub_20D06FF58(a1);
  v14 = *(a2 + qword_27C8204B0);
  sub_20CF9F128(a1, v12, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
  v15 = type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementIDObject(0);
  v16 = objc_allocWithZone(v15);
  sub_20CF9F128(v12, v16 + OBJC_IVAR____TtCC6HomeUI41CustomizedControlCenterModuleItemProviderP33_D7BDC30BA4CA1D0244E55B62F4FA1CEA25EnumeratedElementIDObject_enumeratedElementID, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
  v35.receiver = v16;
  v35.super_class = v15;
  v17 = objc_msgSendSuper2(&v35, sel_init, v32);
  sub_20D071AA8(v12, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
  v34 = v13;
  [v14 setObject:v17 forKey:v13];

  if (qword_281120950 != -1)
  {
    swift_once();
  }

  v18 = sub_20D565988();
  __swift_project_value_buffer(v18, qword_281120958);
  sub_20CF9F128(a1, v9, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
  sub_20CF9F128(a1, v6, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
  v19 = sub_20D565968();
  v20 = sub_20D567E88();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v36 = v22;
    *v21 = 136315650;
    v23 = sub_20D568E18();
    v25 = sub_20CEE913C(v23, v24, &v36);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2048;
    v26 = *&v9[*(v33 + 20)];
    sub_20D071AA8(v9, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
    *(v21 + 14) = v26;
    *(v21 + 22) = 2080;
    v27 = ControlCenterModuleConfiguration.ElementID.description.getter();
    v29 = v28;
    sub_20D071AA8(v6, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
    v30 = sub_20CEE913C(v27, v29, &v36);

    *(v21 + 24) = v30;
    _os_log_impl(&dword_20CEB6000, v19, v20, "%s created #%ld item for elementID: %s", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v22, -1, -1);
    MEMORY[0x20F31FC70](v21, -1, -1);
  }

  else
  {
    sub_20D071AA8(v9, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);

    sub_20D071AA8(v6, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
  }

  return v34;
}

uint64_t sub_20D06F758@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820EB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_20D070828(a1, &v9 - v5);
  v7 = type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) != 1)
  {
    return sub_20D072108(v6, a2, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
  }

  sub_20CEF928C(v6, &unk_27C820EB0);
  sub_20D563808();
  type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + *(v7 + 20)) = 0;
  return result;
}

uint64_t sub_20D06F890()
{
  v1 = v0;
  v2 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CustomizedControlCenterModuleItemProvider(0);
  v22.receiver = v0;
  v22.super_class = v6;
  v7 = objc_msgSendSuper2(&v22, sel_invalidationReasons);
  v8 = sub_20D567D08();

  v23 = v8;
  v9 = sub_20D567838();
  sub_20CEE9D8C(&v21, v9, v10);

  v11 = sub_20D567838();
  sub_20CEE9D8C(&v21, v11, v12);

  v13 = *&v1[qword_27C8204C0];
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v16 = *(v3 + 72);
    sub_20D5663C8();
    do
    {
      sub_20CF9F128(v15, v5, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
      v17 = sub_20D06FAA8();
      sub_20D071AA8(v5, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
      v18 = sub_20D06D030(v17);

      sub_20D071A38(v18);

      v15 += v16;
      --v14;
    }

    while (v14);
  }

  return v23;
}

uint64_t sub_20D06FAA8()
{
  v1 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CF9F128(v0, v3, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820560);
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      inited = swift_initStackObject();
      v12 = inited;
      *(inited + 16) = xmmword_20D5BC410;
      v13 = MEMORY[0x277D13B50];
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload != 4)
    {
      inited = swift_initStackObject();
      v12 = inited;
      *(inited + 16) = xmmword_20D5BC410;
      v13 = MEMORY[0x277D13B30];
      goto LABEL_11;
    }

LABEL_7:
    inited = swift_initStackObject();
    v12 = inited;
    *(inited + 16) = xmmword_20D5BC410;
    v13 = MEMORY[0x277D13B28];
LABEL_11:
    v14 = *v13;
    *(inited + 32) = v14;
    v15 = inited + 32;
    v16 = v14;
    v10 = sub_20CEF8CF0(v12);
    swift_setDeallocating();
    sub_20D071AA8(v15, type metadata accessor for HFItemProviderInvalidationReason);
    goto LABEL_12;
  }

  if (!EnumCaseMultiPayload)
  {
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    inited = swift_initStackObject();
    v12 = inited;
    *(inited + 16) = xmmword_20D5BC410;
    v13 = MEMORY[0x277D13B70];
    goto LABEL_11;
  }

  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_20D5BC4B0;
  v6 = *MEMORY[0x277D13B28];
  *(v5 + 32) = *MEMORY[0x277D13B28];
  v7 = *MEMORY[0x277D13B68];
  *(v5 + 40) = *MEMORY[0x277D13B68];
  v8 = v6;
  v9 = v7;
  v10 = sub_20CEF8CF0(v5);
  swift_setDeallocating();
  type metadata accessor for HFItemProviderInvalidationReason(0);
  swift_arrayDestroy();
LABEL_12:
  sub_20D071AA8(v3, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
  return v10;
}

void sub_20D06FCF8(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_20D568718();
    sub_20CECF940(0, &qword_281120AC0);
    sub_20CEF7F74(&qword_281120AB0, &qword_281120AC0);
    sub_20D567D58();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_20CEC80DC();
      return;
    }

    while (1)
    {
      sub_20CEEA1BC(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_20D568798())
      {
        sub_20CECF940(0, &qword_281120AC0);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_20D06FEF0(void *a1)
{
  v1 = a1;
  sub_20D06F890();

  v2 = sub_20D567CD8();

  return v2;
}

uint64_t sub_20D06FF58(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20D563818();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v64[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v64[-v9];
  v11 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v64[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v64[-v15];
  v17 = qword_27C8204A8;
  swift_beginAccess();
  v18 = *&v2[v17];
  if (v18)
  {
    v68 = v18;
  }

  else
  {
    v68 = [*&v2[qword_27C820490] hf_characteristicValueManager];
  }

  sub_20CF9F128(a1, v16, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
  if (swift_getEnumCaseMultiPayload() > 4)
  {
    (*(v5 + 32))(v10, v16, v4);
    v24 = *&v2[qword_27C820490];
    swift_unknownObjectRetain();
    v25 = sub_20D5637C8();
    v26 = [v24 hf:v25 actionSetWithUUID:?];

    if (v26)
    {
      v27 = objc_allocWithZone(MEMORY[0x277D143A0]);
      v28 = v5;
      v29 = [v27 initWithActionSet:v26 actionSetItemStyle:2 valueSource:v68];

      swift_unknownObjectRelease();
      (*(v28 + 8))(v10, v4);
      return v29;
    }

    if (qword_281120950 != -1)
    {
      swift_once();
    }

    v42 = sub_20D565988();
    __swift_project_value_buffer(v42, qword_281120958);
    (*(v5 + 16))(v7, v10, v4);
    v43 = v2;
    v44 = sub_20D565968();
    v45 = sub_20D567EA8();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v70 = v67;
      *v46 = 136315394;
      sub_20D0720A0(&qword_2811209D0, MEMORY[0x277CC95F0]);
      v65 = v45;
      v47 = sub_20D568BB8();
      v49 = v48;
      v50 = *(v5 + 8);
      v50(v7, v4);
      v51 = sub_20CEE913C(v47, v49, &v70);

      *(v46 + 4) = v51;
      *(v46 + 12) = 2112;
      *(v46 + 14) = v24;
      v52 = v66;
      *v66 = v24;
      v53 = v24;
      _os_log_impl(&dword_20CEB6000, v44, v65, "Failed to find action set with id %s in home %@", v46, 0x16u);
      sub_20CEF928C(v52, &unk_27C81BE60);
      MEMORY[0x20F31FC70](v52, -1, -1);
      v54 = v67;
      __swift_destroy_boxed_opaque_existential_1(v67);
      MEMORY[0x20F31FC70](v54, -1, -1);
      MEMORY[0x20F31FC70](v46, -1, -1);

      swift_unknownObjectRelease();
      v50(v10, v4);
    }

    else
    {

      swift_unknownObjectRelease();
      v63 = *(v5 + 8);
      v63(v7, v4);
      v63(v10, v4);
    }
  }

  else
  {
    swift_unknownObjectRetain();
    sub_20D071AA8(v16, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
    v19 = *&v2[qword_27C820490];
    v20 = sub_20D06E8F8(v19);
    if (!v20)
    {
      if (qword_281120950 != -1)
      {
        swift_once();
      }

      v30 = sub_20D565988();
      __swift_project_value_buffer(v30, qword_281120958);
      sub_20CF9F128(a1, v13, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
      v31 = v2;
      v32 = sub_20D565968();
      v33 = sub_20D567EA8();

      if (!os_log_type_enabled(v32, v33))
      {

        swift_unknownObjectRelease();
        sub_20D071AA8(v13, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
        return 0;
      }

      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v70 = v36;
      *v34 = 136315394;
      v37 = ControlCenterModuleConfiguration.ElementID.description.getter();
      v39 = v38;
      sub_20D071AA8(v13, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
      v40 = sub_20CEE913C(v37, v39, &v70);

      *(v34 + 4) = v40;
      *(v34 + 12) = 2112;
      *(v34 + 14) = v19;
      *v35 = v19;
      v41 = v19;
      _os_log_impl(&dword_20CEB6000, v32, v33, "Failed to find homekit object for id %s in home %@", v34, 0x16u);
      sub_20CEF928C(v35, &unk_27C81BE60);
      MEMORY[0x20F31FC70](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x20F31FC70](v36, -1, -1);
      MEMORY[0x20F31FC70](v34, -1, -1);

      goto LABEL_9;
    }

    v21 = v20;
    swift_getObjectType();
    if (!sub_20D568248())
    {
      if (qword_281120950 != -1)
      {
        swift_once();
      }

      v55 = sub_20D565988();
      __swift_project_value_buffer(v55, qword_281120958);
      swift_unknownObjectRetain();
      v56 = sub_20D565968();
      v57 = sub_20D567EA8();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v69 = v21;
        v70 = v59;
        *v58 = 136315138;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F040);
        v60 = sub_20D567858();
        v62 = sub_20CEE913C(v60, v61, &v70);

        *(v58 + 4) = v62;
        _os_log_impl(&dword_20CEB6000, v56, v57, "Failed to get item class from object %s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v59);
        MEMORY[0x20F31FC70](v59, -1, -1);
        MEMORY[0x20F31FC70](v58, -1, -1);
      }

      swift_unknownObjectRelease();

LABEL_9:
      swift_unknownObjectRelease();
      return 0;
    }

    v22 = [swift_getObjCClassFromMetadata() itemWithAccessoryRepresentableObject:v21 valueSource:v68];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v22)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  return 0;
}

uint64_t sub_20D070828@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820568);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v37 - v6;
  v8 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v13 = a1;
    v14 = [v12 actionSet];
    v15 = [v14 hf_isValidObject];

    if ((v15 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v40 = &unk_28251AC90;
    v20 = swift_dynamicCastObjCProtocolConditional();
    if (!v20)
    {
      goto LABEL_19;
    }

    v21 = v20;
    v22 = v2;
    v23 = a1;
    [v21 accessoryRepresentableObject];
    swift_getObjectType();
    v24 = sub_20D5681A8();
    swift_unknownObjectRelease();
    if (([v24 respondsToSelector_] & 1) == 0)
    {

      swift_unknownObjectRelease();
      goto LABEL_19;
    }

    v25 = [v24 hf_isValidObject];
    swift_unknownObjectRelease();

    v2 = v22;
    if ((v25 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v16 = [*(v2 + qword_27C8204B0) objectForKey_];
  if (v16)
  {
    v17 = v16;
    sub_20CF9F128(v16 + OBJC_IVAR____TtCC6HomeUI41CustomizedControlCenterModuleItemProviderP33_D7BDC30BA4CA1D0244E55B62F4FA1CEA25EnumeratedElementIDObject_enumeratedElementID, a2, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);

    v18 = type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID(0);
    v19 = v18;
    return (*(*(v18 - 8) + 56))(a2, 0, 1, v19);
  }

  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (v26)
  {
    v27 = v26;
    v28 = a1;
    v29 = [v27 actionSet];
    v30 = [v29 uniqueIdentifier];

    sub_20D5637E8();
    swift_storeEnumTagMultiPayload();
    (*(v38 + 56))(v7, 0, 1, v8);
LABEL_11:
    sub_20D072108(v7, v10, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
    sub_20D072108(v10, a2, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
    v18 = type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID(0);
    v19 = v18;
    *(a2 + *(v18 + 20)) = 0;
    return (*(*(v18 - 8) + 56))(a2, 0, 1, v19);
  }

  v39 = &unk_28251AC90;
  v32 = swift_dynamicCastObjCProtocolConditional();
  if (v32)
  {
    v33 = v32;
    v34 = a1;
    v35 = [v33 accessoryRepresentableObject];
    swift_getObjectType();
    sub_20D070CD4(v7);

    swift_unknownObjectRelease();
    if ((*(v38 + 48))(v7, 1, v8) != 1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    (*(v38 + 56))(v7, 1, 1, v8);
  }

  sub_20CEF928C(v7, &qword_27C820568);
LABEL_19:
  v36 = type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID(0);
  return (*(*(v36 - 8) + 56))(a2, 1, 1, v36);
}

uint64_t sub_20D070CD4@<X0>(uint64_t a1@<X8>)
{
  sub_20D5681A8();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2 || (objc_opt_self(), (v2 = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (v2 = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (v2 = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (v2 = swift_dynamicCastObjCClass()) != 0))
  {
    v3 = [v2 uniqueIdentifier];
    sub_20D5637E8();
    swift_unknownObjectRelease();

    v4 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
    swift_storeEnumTagMultiPayload();
    v5 = *(*(v4 - 8) + 56);
    v6 = a1;
    v7 = 0;
    v8 = v4;
  }

  else
  {
    swift_unknownObjectRelease();
    v10 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
    v5 = *(*(v10 - 8) + 56);
    v8 = v10;
    v6 = a1;
    v7 = 1;
  }

  return v5(v6, v7, 1, v8);
}

uint64_t sub_20D070F7C(uint64_t a1)
{
  sub_20D568D48();
  ControlCenterModuleConfiguration.ElementID.hash(into:)();
  MEMORY[0x20F31E200](*(v1 + *(a1 + 20)));
  return sub_20D568D98();
}

uint64_t sub_20D071010(uint64_t a1, uint64_t a2)
{
  sub_20D568D48();
  ControlCenterModuleConfiguration.ElementID.hash(into:)();
  MEMORY[0x20F31E200](*(v2 + *(a2 + 20)));
  return sub_20D568D98();
}

id CustomizedControlCenterModuleItemProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_20D0711B0()
{

  swift_unknownObjectRelease();
}

id CustomizedControlCenterModuleItemProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomizedControlCenterModuleItemProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20D071268(uint64_t a1)
{

  swift_unknownObjectRelease();
}

uint64_t sub_20D0712F4(void *a1)
{
  v2 = sub_20D563818();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_20D5642E8();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_20D5637C8();
  v5 = [a1 hf:v4 accessoryWithIdentifier:?];

  if (!v5)
  {
    goto LABEL_7;
  }

  sub_20CECF940(0, &qword_28111FFF0);
  if (sub_20D568208() & 1) == 0 || (v6 = sub_20D567E38(), (v7) || !v6)
  {

LABEL_7:
    v11 = sub_20D5637C8();
    v10 = [a1 hf:v11 accessoryWithIdentifier:?];

    return v10;
  }

  v8 = [a1 uniqueIdentifier];
  sub_20D5637E8();

  sub_20D5642D8();
  v9 = objc_allocWithZone(sub_20D565E38());
  return sub_20D565E18();
}

uint64_t sub_20D0714BC(id *a1)
{
  v2 = sub_20D563818();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_20D5637E8();

  v8 = sub_20D5637D8();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_20D071608(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID(0);
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
  v49 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a4 >> 1;
  if (v14 == a3)
  {
    return a1;
  }

  if (a3 <= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = a3;
  }

  v45 = v14;
  v46 = v16;
  while (v46 != a3)
  {
    v17 = *(v49 + 72);
    sub_20CF9F128(v50 + v17 * a3, v13, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
    v18 = *a5;
    v19 = *(*a5 + 16);
    if (v19)
    {
      v20 = sub_20CEEDA88(v13);
      if (v21)
      {
        v19 = *(*(v18 + 56) + 8 * v20);
      }

      else
      {
        v19 = 0;
      }
    }

    if (__OFADD__(v19, 1))
    {
      goto LABEL_30;
    }

    v52 = a3;
    v53 = v19 + 1;
    v51 = v19;
    v22 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = a5;
    v25 = isUniquelyReferenced_nonNull_native;
    v54 = *v24;
    v26 = v54;
    v27 = v24;
    *v24 = 0x8000000000000000;
    v29 = sub_20CEEDA88(v13);
    v30 = v26[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_31;
    }

    v33 = v28;
    if (v26[3] >= v32)
    {
      if ((v25 & 1) == 0)
      {
        sub_20CF9D8D8();
      }
    }

    else
    {
      sub_20CF9A1F8(v32, v25);
      v34 = sub_20CEEDA88(v13);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_33;
      }

      v29 = v34;
    }

    a5 = v27;
    v36 = v54;
    if (v33)
    {
      *(v54[7] + 8 * v29) = v53;
    }

    else
    {
      v54[(v29 >> 6) + 8] |= 1 << v29;
      sub_20CF9F128(v13, v36[6] + v29 * v17, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
      *(v36[7] + 8 * v29) = v53;
      v37 = v36[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_32;
      }

      v36[2] = v39;
    }

    *v27 = v36;

    sub_20CF9F128(v13, v11, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
    *&v11[*(v48 + 20)] = v51;
    a1 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_20CEE8B08(0, v22[2] + 1, 1, v22);
    }

    v40 = v52;
    v42 = a1[2];
    v41 = a1[3];
    if (v42 >= v41 >> 1)
    {
      a1 = sub_20CEE8B08(v41 > 1, v42 + 1, 1, a1);
    }

    a3 = v40 + 1;
    a1[2] = v42 + 1;
    sub_20D072108(v11, a1 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v42, type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID);
    sub_20D071AA8(v13, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
    if (v45 == a3)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_20D568C68();
  __break(1u);
  return result;
}

uint64_t sub_20D071A38(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      sub_20D5663C8();
      sub_20CEE9D8C(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_20D071AA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20D071F2C()
{
  result = type metadata accessor for CustomizedControlCenterModuleItemProvider.EnumeratedElementID(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_20D071FE4()
{
  result = type metadata accessor for ControlCenterModuleConfiguration.ElementID(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20D0720A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D072108(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D072170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

HUActivityLogViewControllerFactory __swiftcall HUActivityLogViewControllerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for HUActivityLogViewControllerFactory()
{
  result = qword_27C820578;
  if (!qword_27C820578)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C820578);
  }

  return result;
}

unint64_t sub_20D0723B4()
{
  result = qword_27C820580;
  if (!qword_27C820580)
  {
    sub_20D565C28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820580);
  }

  return result;
}

id sub_20D07240C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D85000];
  *(v3 + *((*MEMORY[0x277D85000] & *v3) + 0x78)) = 0;
  *(v3 + *((*v4 & *v3) + 0x60)) = a1;
  v5 = (v3 + *((*v4 & *v3) + 0x68));
  *v5 = a2;
  v5[1] = a3;
  v11 = a2;
  v12 = a3;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820590));

  *(v3 + *((*v4 & *v3) + 0x70)) = sub_20D566C08();
  v10.receiver = v3;
  v10.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820588);
  v6 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
  v7 = sub_20D5677F8();
  v8 = HULocalizedString(v7);

  if (!v8)
  {
    sub_20D567838();
    v8 = sub_20D5677F8();
  }

  [v6 setTitle_];

  return v6;
}

uint64_t sub_20D0726D4(uint64_t a1)
{
  v3 = OBJC_IVAR___HUUtilityOnboardingNoAccountViewController_delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20D07272C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUUtilityOnboardingNoAccountViewController_delegate;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

char *UtilityOnboardingNoAccountViewController.init(context:)(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81CDF0);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = v38 - v5;
  *&v1[OBJC_IVAR___HUUtilityOnboardingNoAccountViewController_delegate] = 0;
  *&v1[OBJC_IVAR___HUUtilityOnboardingNoAccountViewController_loginManager] = 0;
  *&v1[OBJC_IVAR___HUUtilityOnboardingNoAccountViewController_editButton] = 0;
  *&v1[OBJC_IVAR___HUUtilityOnboardingNoAccountViewController_providerAccountButton] = 0;
  swift_getKeyPath();
  v43 = a1;
  v38[1] = sub_20CF34968(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
  sub_20D563908();

  v6 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__config;
  swift_beginAccess();
  v7 = *&a1[v6];
  if (v7)
  {
    v8 = v7;
    v9 = sub_20D564C08();
    if (!v10)
    {
      v9 = sub_20D564BE8();
    }

    v11 = v9;
    v12 = v10;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = sub_20D5677F8();
  v14 = HULocalizedString(v13);

  sub_20D567838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81C620);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20D5BC4B0;
  v16 = MEMORY[0x277D837D0];
  *(v15 + 56) = MEMORY[0x277D837D0];
  v17 = sub_20CED4498();
  *(v15 + 32) = v11;
  *(v15 + 40) = v12;
  *(v15 + 96) = v16;
  *(v15 + 104) = v17;
  *(v15 + 64) = v17;
  *(v15 + 72) = v11;
  *(v15 + 80) = v12;
  sub_20D5663C8();
  sub_20D567808();

  swift_getKeyPath();
  v42 = a1;
  sub_20D563908();

  v18 = &a1[OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__utilityID];
  swift_beginAccess();
  if (*(v18 + 1))
  {
    v19 = *v18;
    v20 = *(v18 + 1);
  }

  else
  {
    v19 = 0;
    v20 = 0xE000000000000000;
  }

  v21 = &v2[OBJC_IVAR___HUUtilityOnboardingNoAccountViewController_utilityID];
  *v21 = v19;
  *(v21 + 1) = v20;
  *&v2[OBJC_IVAR___HUUtilityOnboardingNoAccountViewController_onboardingContext] = a1;
  v22 = a1;
  sub_20D5663C8();
  v23 = sub_20D5677F8();
  v24 = HULocalizedString(v23);

  if (!v24)
  {
    sub_20D567838();
    v24 = sub_20D5677F8();
  }

  v25 = sub_20D5677F8();

  v26 = type metadata accessor for UtilityOnboardingNoAccountViewController();
  v41.receiver = v2;
  v41.super_class = v26;
  v27 = objc_msgSendSuper2(&v41, sel_initWithTitle_detailText_icon_contentLayout_, v24, v25, 0, 2);

  swift_getKeyPath();
  v40 = v22;
  v28 = v27;
  sub_20D563908();

  v29 = *&a1[v6];
  if (v29)
  {
    v30 = v29;
    v31 = v39;
    sub_20D564BF8();
  }

  else
  {
    v32 = sub_20D5636B8();
    v31 = v39;
    (*(*(v32 - 8) + 56))(v39, 1, 1, v32);
  }

  v33 = objc_allocWithZone(type metadata accessor for OAuthLoginManager());
  v34 = v28;
  v35 = sub_20CF349B0(v31, v34, v33);

  v36 = *&v34[OBJC_IVAR___HUUtilityOnboardingNoAccountViewController_loginManager];
  *&v34[OBJC_IVAR___HUUtilityOnboardingNoAccountViewController_loginManager] = v35;

  return v34;
}

uint64_t sub_20D072D18()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v36 - v3;
  v37 = sub_20D563BA8();
  v5 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UtilityOnboardingNoAccountViewController();
  v38.receiver = v0;
  v38.super_class = v8;
  objc_msgSendSuper2(&v38, sel_viewDidLoad);
  sub_20CEF3A4C(&unk_2823CE7F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E440);
  swift_arrayDestroy();
  v9 = [v0 headerView];
  v10 = [v9 subviews];

  if (!v10)
  {
    sub_20CECF940(0, &qword_28111FB70);
    sub_20D567A78();
    v10 = sub_20D567A58();
  }

  v11 = objc_opt_self();
  v12 = sub_20D567738();

  [v11 setAccessibilityIDForViews:v10 withIDDictionary:v12];

  v13 = *&v0[OBJC_IVAR___HUUtilityOnboardingNoAccountViewController_onboardingContext];
  v14 = [v1 headerView];
  sub_20CEE70AC(v14);

  [v1 setModalInPresentation_];
  v15 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:v1 action:sel_closeButtonWith_sender_];
  v16 = sub_20D5677F8();
  [v15 setAccessibilityIdentifier_];

  v17 = [v1 navigationItem];
  [v17 setLeftBarButtonItem_];

  v18 = [objc_opt_self() boldButton];
  v19 = *&v1[OBJC_IVAR___HUUtilityOnboardingNoAccountViewController_editButton];
  *&v1[OBJC_IVAR___HUUtilityOnboardingNoAccountViewController_editButton] = v18;
  v20 = v18;

  if (v20)
  {
    [v20 addTarget:v1 action:sel_editDetails_ forControlEvents:64];
    v21 = sub_20D5677F8();
    v22 = HULocalizedString(v21);

    if (!v22)
    {
      sub_20D567838();
      v22 = sub_20D5677F8();
    }

    [v20 setTitle:v22 forState:0];

    v23 = v20;
    v24 = sub_20D5677F8();
    [v23 setAccessibilityIdentifier_];

    v25 = [v1 buttonTray];
    [v25 addButton_];
  }

  v26 = [objc_opt_self() linkButton];
  v27 = *&v1[OBJC_IVAR___HUUtilityOnboardingNoAccountViewController_providerAccountButton];
  *&v1[OBJC_IVAR___HUUtilityOnboardingNoAccountViewController_providerAccountButton] = v26;
  v28 = v26;

  if (v28)
  {
    [v28 addTarget:v1 action:sel_providerAccount_ forControlEvents:64];
    v29 = sub_20D5677F8();
    v30 = HULocalizedString(v29);

    if (!v30)
    {
      sub_20D567838();
      v30 = sub_20D5677F8();
    }

    [v28 setTitle:v30 forState:0];

    v31 = v28;
    v32 = sub_20D5677F8();
    [v31 setAccessibilityIdentifier_];

    v33 = [v1 buttonTray];
    [v33 addButton_];
  }

  sub_20D563AE8();
  (*(v5 + 104))(v7, *MEMORY[0x277D16FE8], v37);
  sub_20D5663C8();
  sub_20D563B78();
  v34 = sub_20D563B98();
  (*(*(v34 - 8) + 56))(v4, 0, 1, v34);
  sub_20D563B48();
  swift_allocObject();
  sub_20D563B38();
  MEMORY[0x20F318F80]();
}

uint64_t sub_20D073478()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31 - v3;
  v5 = sub_20D563BA8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20D565988();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v13 = qword_27C838280;
  sub_20D565998();
  v14 = sub_20D565968();
  v15 = sub_20D567EC8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = v5;
    v33 = v1;
    v17 = v4;
    v18 = v8;
    v19 = v16;
    v20 = v6;
    v21 = swift_slowAlloc();
    v36[0] = v21;
    *v19 = 136315138;
    *(v19 + 4) = sub_20CEE913C(0xD000000000000015, 0x800000020D5D7C20, v36);
    _os_log_impl(&dword_20CEB6000, v14, v15, "%s Close button tapped", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v22 = v21;
    v6 = v20;
    MEMORY[0x20F31FC70](v22, -1, -1);
    v23 = v19;
    v8 = v18;
    v4 = v17;
    v5 = v32;
    v1 = v33;
    MEMORY[0x20F31FC70](v23, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v24 = OBJC_IVAR___HUUtilityOnboardingNoAccountViewController_delegate;
  swift_beginAccess();
  v25 = *(v1 + v24);
  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E520);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20D5BC410;
    v34 = sub_20D567838();
    v35 = v27;
    swift_unknownObjectRetain();
    sub_20D5687F8();
    *(inited + 96) = MEMORY[0x277D83E88];
    *(inited + 72) = 16;
    sub_20CEF49C8(inited);
    swift_setDeallocating();
    sub_20CEF928C(inited + 32, &qword_27C81D8D0);
    v28 = sub_20D567738();

    [v25 viewController:v1 didFinishWithConfigurationResults:v28];

    swift_unknownObjectRelease();
  }

  sub_20D563AE8();
  (*(v6 + 104))(v8, *MEMORY[0x277D16FC8], v5);
  sub_20D5663C8();
  sub_20D563B78();
  v29 = sub_20D563B98();
  (*(*(v29 - 8) + 56))(v4, 0, 1, v29);
  sub_20D563B48();
  swift_allocObject();
  sub_20D563B38();
  MEMORY[0x20F318F80]();
}

uint64_t sub_20D0739D0()
{
  v1 = v0;
  v2 = sub_20D565988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v6 = qword_27C838280;
  sub_20D565998();
  v7 = sub_20D565968();
  v8 = sub_20D567EC8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_20CEE913C(0x6174654474696465, 0xEF293A5F28736C69, v18);
    _os_log_impl(&dword_20CEB6000, v7, v8, "%s Edit details. Removing no account view controller", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F31FC70](v10, -1, -1);
    MEMORY[0x20F31FC70](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v11 = OBJC_IVAR___HUUtilityOnboardingNoAccountViewController_delegate;
  result = swift_beginAccess();
  v13 = *(v1 + v11);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E520);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20D5BC410;
    v17[0] = sub_20D567838();
    v17[1] = v15;
    swift_unknownObjectRetain();
    sub_20D5687F8();
    *(inited + 96) = MEMORY[0x277D83E88];
    *(inited + 72) = 4;
    sub_20CEF49C8(inited);
    swift_setDeallocating();
    sub_20CEF928C(inited + 32, &qword_27C81D8D0);
    v16 = sub_20D567738();

    [v13 viewController:v1 didFinishWithConfigurationResults:v16];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20D073CE4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_20D568628();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return __swift_destroy_boxed_opaque_existential_1(&v9);
}

uint64_t sub_20D073D58()
{
  v1 = v0;
  v2 = sub_20D565988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C81A2D8 != -1)
  {
    swift_once();
  }

  v6 = qword_27C838280;
  sub_20D565998();
  v7 = sub_20D565968();
  v8 = sub_20D567EC8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_20CEE913C(0xD000000000000013, 0x800000020D5D7C00, v20);
    _os_log_impl(&dword_20CEB6000, v7, v8, "%s Present OAuth view controller", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F31FC70](v10, -1, -1);
    MEMORY[0x20F31FC70](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v11 = *&v1[OBJC_IVAR___HUUtilityOnboardingNoAccountViewController_loginManager];
  if (v11)
  {
    v12 = v1;
    v13 = v11;
    sub_20CFD4C60(v12, v13, v12);
  }

  v14 = *&v1[OBJC_IVAR___HUUtilityOnboardingNoAccountViewController_onboardingContext];
  v15 = OBJC_IVAR____TtC6HomeUI24UtilityOnboardingContext__onboardingMethod;
  result = swift_beginAccess();
  if (*&v14[v15] != 2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v19[-2] = v14;
    v19[-1] = 2;
    v19[2] = v14;
    sub_20CF34968(&qword_27C81D080, type metadata accessor for UtilityOnboardingContext);
    v18 = v14;
    sub_20D5638F8();
  }

  return result;
}

uint64_t sub_20D074088(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v27 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D090);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - v8;
  v28 = sub_20D563BA8();
  v10 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v26 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v25 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = 13;
  v16 = swift_allocObject();
  *(v16 + 16) = MEMORY[0x277D84F98];
  v17 = sub_20D567C58();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  sub_20D567C18();
  v18 = a3;
  sub_20D5663C8();
  v19 = a4;

  v20 = sub_20D567C08();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = a3;
  v21[5] = v19;
  v21[6] = v16;
  v21[7] = v15;
  v21[8] = v27;
  v21[9] = a2;
  sub_20CF18960(0, 0, v14, &unk_20D5C7390, v21);

  sub_20D563AE8();
  (*(v10 + 104))(v26, *MEMORY[0x277D16FC0], v28);
  sub_20D5663C8();
  sub_20D563B78();
  v23 = sub_20D563B98();
  (*(*(v23 - 8) + 56))(v9, 0, 1, v23);
  sub_20D563B48();
  swift_allocObject();
  sub_20D563B38();
  MEMORY[0x20F318F80]();
}

uint64_t sub_20D074480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = a8;
  v8[33] = v14;
  v8[30] = a6;
  v8[31] = a7;
  v8[28] = a4;
  v8[29] = a5;
  v9 = sub_20D565988();
  v8[34] = v9;
  v8[35] = *(v9 - 8);
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v8[40] = sub_20D567C18();
  v8[41] = sub_20D567C08();
  v11 = sub_20D567BA8();
  v8[42] = v11;
  v8[43] = v10;

  return MEMORY[0x2822009F8](sub_20D0745AC, v11, v10);
}

uint64_t sub_20D0745AC()
{
  v52 = v0;
  v1 = v0[28];
  if (v1)
  {
    v0[23] = v1;
    v2 = v1;
    v3 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81CDD0);
    type metadata accessor for ASWebAuthenticationSessionError(0);
    if (swift_dynamicCast())
    {
      v4 = v0[24];
      v0[44] = v4;
      v0[26] = v4;
      sub_20CF34968(&qword_27C81B128, type metadata accessor for ASWebAuthenticationSessionError);
      sub_20D563598();
      if (v0[27] == 1)
      {
        if (qword_27C81A2D8 != -1)
        {
          swift_once();
        }

        v5 = qword_27C838280;
        sub_20D565998();
        v6 = sub_20D565968();
        v7 = sub_20D567EC8();
        v8 = os_log_type_enabled(v6, v7);
        v9 = v0[39];
        v10 = v0[34];
        v11 = v0[35];
        if (v8)
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v51[0] = v13;
          *v12 = 136315138;
          *(v12 + 4) = sub_20CEE913C(0xD000000000000013, 0x800000020D5D75E0, v51);
          _os_log_impl(&dword_20CEB6000, v6, v7, "%s Canceled OAuth session", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v13);
          MEMORY[0x20F31FC70](v13, -1, -1);
          MEMORY[0x20F31FC70](v12, -1, -1);
        }

        (*(v11 + 8))(v9, v10);
        v14 = sub_20D074C58;
        goto LABEL_22;
      }
    }

    if (qword_27C81A2D8 != -1)
    {
      swift_once();
    }

    v28 = qword_27C838280;
    sub_20D565998();
    v29 = v1;
    v30 = sub_20D565968();
    v31 = sub_20D567EA8();

    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[38];
    v34 = v0[34];
    v35 = v0[35];
    if (v32)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v51[0] = v38;
      *v36 = 136315394;
      *(v36 + 4) = sub_20CEE913C(0xD000000000000013, 0x800000020D5D75E0, v51);
      *(v36 + 12) = 2112;
      v39 = v1;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v40;
      *v37 = v40;
      _os_log_impl(&dword_20CEB6000, v30, v31, "%s OAuth Session failed. Error: %@", v36, 0x16u);
      sub_20CEF928C(v37, &unk_27C81BE60);
      MEMORY[0x20F31FC70](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x20F31FC70](v38, -1, -1);
      MEMORY[0x20F31FC70](v36, -1, -1);
    }

    (*(v35 + 8))(v33, v34);
    v41 = sub_20D567838();
    v43 = v42;
    swift_getErrorValue();
    v45 = v0[17];
    v44 = v0[18];
    v0[10] = v44;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    (*(*(v44 - 8) + 16))(boxed_opaque_existential_1, v45, v44);
    swift_beginAccess();
    sub_20CED9A44((v0 + 7), v41, v43);
    swift_endAccess();
    v14 = sub_20D074DF4;
  }

  else
  {
    v15 = v0[33];
    if (v15)
    {
      if (qword_27C81A2D8 != -1)
      {
        swift_once();
      }

      v16 = qword_27C838280;
      v0[47] = qword_27C838280;
      v17 = v16;
      sub_20D565998();
      sub_20D5663C8();
      v18 = sub_20D565968();
      v19 = sub_20D567EC8();

      v20 = os_log_type_enabled(v18, v19);
      v21 = v0[37];
      v22 = v0[34];
      v23 = v0[35];
      if (v20)
      {
        v24 = v0[32];
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v51[0] = v26;
        *v25 = 136315394;
        *(v25 + 4) = sub_20CEE913C(0xD000000000000013, 0x800000020D5D75E0, v51);
        *(v25 + 12) = 2080;
        *(v25 + 14) = sub_20CEE913C(v24, v15, v51);
        _os_log_impl(&dword_20CEB6000, v18, v19, "%s Found authCode: %s", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F31FC70](v26, -1, -1);
        MEMORY[0x20F31FC70](v25, -1, -1);
      }

      v27 = *(v23 + 8);
      v27(v21, v22);
      v0[48] = v27;
      v14 = sub_20D074FCC;
    }

    else
    {
      v47 = sub_20D567838();
      v49 = v48;
      v51[3] = &type metadata for UtilityOnboardingError;
      LOBYTE(v51[0]) = 2;
      swift_beginAccess();
      sub_20CED9A44(v51, v47, v49);
      swift_endAccess();
      v0[54] = 0;
      v14 = sub_20D075438;
    }
  }

LABEL_22:

  return MEMORY[0x2822009F8](v14, 0, 0);
}

uint64_t sub_20D074C58()
{
  *(v0 + 360) = sub_20D567C08();
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D074CE4, v2, v1);
}

uint64_t sub_20D074CE4()
{

  sub_20D075ABC();
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);

  return MEMORY[0x2822009F8](sub_20D074D50, v1, v2);
}

uint64_t sub_20D074D50()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20D074DF4()
{
  *(v0 + 368) = sub_20D567C08();
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D074E80, v2, v1);
}

uint64_t sub_20D074E80()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];

  sub_20D075834(v2 + 16, (v1 + 16), v3);
  v4 = v0[42];
  v5 = v0[43];

  return MEMORY[0x2822009F8](sub_20D074F34, v4, v5);
}

uint64_t sub_20D074F34()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20D074FCC()
{
  *(v0 + 392) = sub_20D567C08();
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D075058, v2, v1);
}

uint64_t sub_20D075058()
{

  sub_20D075998();
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);

  return MEMORY[0x2822009F8](sub_20D0750C4, v1, v2);
}

uint64_t sub_20D0750C4()
{
  v1 = v0[33];
  v2 = v0[29];
  v3 = OBJC_IVAR___HUUtilityOnboardingNoAccountViewController_onboardingContext;
  v0[50] = OBJC_IVAR___HUUtilityOnboardingNoAccountViewController_onboardingContext;
  v4 = *(v2 + v3);
  v0[51] = v4;
  v4;
  v5 = swift_task_alloc();
  v0[52] = v5;
  *v5 = v0;
  v5[1] = sub_20D075190;
  v6 = v0[32];

  return sub_20CEE310C(v6, v1);
}

uint64_t sub_20D075190()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = *(v2 + 344);
  v4 = *(v2 + 336);
  if (v0)
  {
    v5 = sub_20D07560C;
  }

  else
  {
    v5 = sub_20D0752E4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20D0752E4()
{
  v1 = v0[50];
  v2 = v0[31];
  v3 = v0[29];
  v4 = sub_20D564B68();
  v0[5] = v4;
  v0[6] = sub_20CF34968(&qword_27C81BEB0, MEMORY[0x277D073A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v4 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D07370], v4);
  LOBYTE(v4) = sub_20D563968();
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if (v4)
  {
    v6 = 7;
  }

  else
  {
    v6 = 17;
  }

  swift_beginAccess();
  *(v2 + 16) = v6;
  v7 = *(v3 + v1);
  sub_20CEDA5BC();

  v0[54] = v0[53];

  return MEMORY[0x2822009F8](sub_20D075438, 0, 0);
}

uint64_t sub_20D075438()
{
  *(v0 + 440) = sub_20D567C08();
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D0754C4, v2, v1);
}

void sub_20D0754C4()
{
  v1 = v0[54];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];

  sub_20D075834(v3 + 16, (v2 + 16), v4);
  if (v1)
  {
  }

  else
  {
    v5 = v0[42];
    v6 = v0[43];

    MEMORY[0x2822009F8](sub_20D075580, v5, v6);
  }
}

uint64_t sub_20D075580()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20D07560C()
{
  v19 = v0;
  v1 = *(v0 + 424);
  v2 = *(v0 + 376);
  sub_20D565998();
  v3 = v1;
  v4 = sub_20D565968();
  v5 = sub_20D567EA8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 424);
  v8 = *(v0 + 384);
  v9 = *(v0 + 288);
  v10 = *(v0 + 272);
  if (v6)
  {
    v17 = *(v0 + 384);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_20CEE913C(0xD000000000000013, 0x800000020D5D75E0, &v18);
    *(v11 + 12) = 2112;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_20CEB6000, v4, v5, "%s Couldn't generate tokens from OAuth. Error: %@", v11, 0x16u);
    sub_20CEF928C(v12, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x20F31FC70](v13, -1, -1);
    MEMORY[0x20F31FC70](v11, -1, -1);

    v17(v9, v10);
  }

  else
  {

    v8(v9, v10);
  }

  *(v0 + 432) = 0;

  return MEMORY[0x2822009F8](sub_20D075438, 0, 0);
}

uint64_t sub_20D075834(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_20D567838();
  v7 = v6;
  swift_beginAccess();
  v8 = *a2;
  v14[3] = MEMORY[0x277D83E88];
  v14[0] = v8;
  swift_beginAccess();
  sub_20CED9A44(v14, v5, v7);
  swift_endAccess();
  v9 = OBJC_IVAR___HUUtilityOnboardingNoAccountViewController_delegate;
  result = swift_beginAccess();
  v11 = *(a3 + v9);
  if (v11)
  {
    swift_beginAccess();
    swift_unknownObjectRetain();
    v12 = sub_20D5663C8();
    sub_20CF27E80(v12);

    v13 = sub_20D567738();

    [v11 viewController:a3 didFinishWithConfigurationResults:v13];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_20D075998()
{
  v1 = *&v0[OBJC_IVAR___HUUtilityOnboardingNoAccountViewController_editButton];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR___HUUtilityOnboardingNoAccountViewController_providerAccountButton];
    if (v2)
    {
      v3 = v1;
      v4 = v2;
      [v3 setEnabled_];
      [v4 setEnabled_];
    }
  }

  v7 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v5 = [v0 navigationItem];
  v6 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
  [v5 setRightBarButtonItem_];

  [v7 startAnimating];
}

void sub_20D075ABC()
{
  v1 = [v0 navigationItem];
  v2 = [v1 rightBarButtonItem];

  if (v2)
  {
    v3 = [v2 customView];

    if (v3)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = v4;
        [v4 stopAnimating];
        [v5 setHidesWhenStopped_];
      }
    }
  }

  v6 = *&v0[OBJC_IVAR___HUUtilityOnboardingNoAccountViewController_editButton];
  if (v6)
  {
    v7 = *&v0[OBJC_IVAR___HUUtilityOnboardingNoAccountViewController_providerAccountButton];
    if (v7)
    {
      v8 = v6;
      v9 = v7;
      [v8 setEnabled_];
      [v9 setEnabled_];
    }
  }
}

id UtilityOnboardingNoAccountViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_20D5677F8();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_20D5677F8();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_20D5677F8();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id UtilityOnboardingNoAccountViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_20D5677F8();

  if (a4)
  {
    v12 = sub_20D5677F8();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id UtilityOnboardingNoAccountViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UtilityOnboardingNoAccountViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20D075FC4()
{
  v1 = v0;
  v2 = sub_20D565988();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 view];
  if (result)
  {
    v8 = result;
    v9 = [result window];

    result = v9;
    if (!v9)
    {
      if (qword_27C81A2D8 != -1)
      {
        swift_once();
      }

      v10 = qword_27C838280;
      sub_20D565998();
      v11 = sub_20D565968();
      v12 = sub_20D567EC8();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v16 = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_20CEE913C(0xD000000000000018, 0x800000020D5CEE80, &v16);
        _os_log_impl(&dword_20CEB6000, v11, v12, "%s OAuth presentation anchor with self.view.window == nil", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x20F31FC70](v14, -1, -1);
        MEMORY[0x20F31FC70](v13, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      return [objc_allocWithZone(MEMORY[0x277D75DA0]) init];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20D07633C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_20CEF5FFC;

  return sub_20D074480(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_20D076438()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8205F0);
  MEMORY[0x28223BE20](v0 - 8);
  sub_20D567838();
  sub_20D567838();
  sub_20D0768B4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_20D566598();

  return sub_20D5665B8();
}

uint64_t sub_20D076574()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8205E0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - v2;
  v4 = sub_20D566438();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8205E8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  sub_20D566448();
  v12 = MEMORY[0x277CE1A00];
  MEMORY[0x20F31B8B0](v7, v4, MEMORY[0x277CE1A00]);
  (*(v5 + 8))(v7, v4);
  v16 = v4;
  v17 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x20F31B8D0](v11, v8, OpaqueTypeConformance2);
  v16 = v8;
  v17 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v14 = sub_20D566418();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v14;
}

unint64_t sub_20D076860()
{
  result = qword_2811207E8;
  if (!qword_2811207E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811207E8);
  }

  return result;
}

unint64_t sub_20D0768B4()
{
  result = qword_27C8205F8;
  if (!qword_27C8205F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C8205F8);
  }

  return result;
}

unint64_t sub_20D076900()
{
  result = qword_27C820600;
  if (!qword_27C820600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820608);
    sub_20D076984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820600);
  }

  return result;
}

unint64_t sub_20D076984()
{
  result = qword_27C820610;
  if (!qword_27C820610)
  {
    sub_20D5665A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820610);
  }

  return result;
}

void BaseIconView.startProgress(future:)(uint64_t a1)
{
  v3 = OBJC_IVAR___HUBaseIconView_progressView;
  v4 = *(v1 + OBJC_IVAR___HUBaseIconView_progressView);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR___HUBaseIconView_progressView);
    v6 = v5;
  }

  else
  {
    v6 = [objc_allocWithZone(HUPieProgressView) initWithStyle_];
    v5 = 0;
    v4 = *(v1 + v3);
  }

  *(v1 + v3) = v6;
  v7 = v6;
  v8 = v5;
  sub_20D077DA4(v4);

  v9 = *(v1 + v3);
  if (v9)
  {
    v10 = v1 + OBJC_IVAR___HUBaseIconView_configuration;
    swift_beginAccess();
    v11 = *(v10 + 112);
    v12 = *(v10 + 80);
    v39 = *(v10 + 96);
    v40 = v11;
    v13 = *(v10 + 16);
    v34[0] = *v10;
    v34[1] = v13;
    v14 = *(v10 + 48);
    v15 = *(v10 + 16);
    v35 = *(v10 + 32);
    v36 = v14;
    v16 = *(v10 + 80);
    v17 = *(v10 + 48);
    v37 = *(v10 + 64);
    v38 = v16;
    v18 = *(v10 + 96);
    v30 = *(v10 + 80);
    v31 = v18;
    v32 = *(v10 + 112);
    v19 = *(v10 + 32);
    v26 = *(v10 + 16);
    v27 = v19;
    v20 = *(v10 + 64);
    v28 = *(v10 + 48);
    v29 = v20;
    v42[4] = v37;
    v42[3] = v17;
    v42[2] = v35;
    v42[1] = v15;
    v42[7] = *(v10 + 112);
    v41 = *(v10 + 128);
    v33 = *(v10 + 128);
    v43 = *(v10 + 128);
    v42[6] = v39;
    v42[5] = v12;
    v42[0] = v34[0];
    v21 = 0;
    if (sub_20CFF743C(v42) != 1)
    {
      v21 = *(&v34[0] + 1);
    }

    v24[0] = v34[0];
    v24[5] = v30;
    v24[6] = v31;
    v24[7] = v32;
    v25 = v33;
    v24[1] = v26;
    v24[2] = v27;
    v24[3] = v28;
    v24[4] = v29;
    v22 = v9;
    sub_20CFFB178(v34, v23);
    sub_20CEF928C(v24, &qword_27C81F350);
    [v22 setTintColor_];

    [v22 startWithFuture_];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall BaseIconView.prepareForReuse()()
{
  sub_20D078190(0);
  sub_20D0780AC(0);
  sub_20CFDAF0C(v16);
  v1 = v0 + OBJC_IVAR___HUBaseIconView_configuration;
  swift_beginAccess();
  v2 = *(v1 + 80);
  v3 = *(v1 + 112);
  v24 = *(v1 + 96);
  v25 = v3;
  v4 = *(v1 + 16);
  v5 = *(v1 + 48);
  v20 = *(v1 + 32);
  v21 = v5;
  v6 = *(v1 + 48);
  v7 = *(v1 + 80);
  v22 = *(v1 + 64);
  v23 = v7;
  v8 = *(v1 + 16);
  v18 = *v1;
  v19 = v8;
  v9 = *(v1 + 112);
  v27[6] = v24;
  v27[7] = v9;
  v27[2] = v20;
  v27[3] = v6;
  v27[4] = v22;
  v27[5] = v2;
  v26 = *(v1 + 128);
  v28 = *(v1 + 128);
  v27[0] = v18;
  v27[1] = v4;
  v10 = v16[5];
  *(v1 + 64) = v16[4];
  *(v1 + 80) = v10;
  v11 = v16[7];
  *(v1 + 96) = v16[6];
  *(v1 + 112) = v11;
  *(v1 + 128) = v17;
  v12 = v16[3];
  *(v1 + 32) = v16[2];
  *(v1 + 48) = v12;
  v13 = v16[1];
  *v1 = v16[0];
  *(v1 + 16) = v13;
  sub_20CFFB178(&v18, v14);
  sub_20CEF928C(v27, &qword_27C81F350);
  v14[6] = v24;
  v14[7] = v25;
  v15 = v26;
  v14[2] = v20;
  v14[3] = v21;
  v14[4] = v22;
  v14[5] = v23;
  v14[0] = v18;
  v14[1] = v19;
  sub_20D077000(v14);
  sub_20CEF928C(&v18, &qword_27C81F350);
}

Swift::Bool __swiftcall BaseIconView.containsTouchPoint(_:)(CGPoint a1)
{
  y = a1.y;
  x = a1.x;
  [v1 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v1 _touchInsets];
  v16.origin.x = UIEdgeInsetsInsetRect(v5, v7, v9, v11, v12, v13);
  v15.x = x;
  v15.y = y;
  return CGRectContainsPoint(v16, v15);
}

uint64_t sub_20D076DC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___HUBaseIconView_configuration;
  swift_beginAccess();
  v16[0] = *v3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 64);
  v16[3] = *(v3 + 48);
  v16[4] = v6;
  v16[1] = v4;
  v16[2] = v5;
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  v9 = *(v3 + 112);
  v17 = *(v3 + 128);
  v16[6] = v8;
  v16[7] = v9;
  v16[5] = v7;
  v10 = *(v3 + 112);
  *(a2 + 96) = *(v3 + 96);
  *(a2 + 112) = v10;
  *(a2 + 128) = *(v3 + 128);
  v11 = *(v3 + 48);
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 48) = v11;
  v12 = *(v3 + 80);
  *(a2 + 64) = *(v3 + 64);
  *(a2 + 80) = v12;
  v13 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v13;
  return sub_20CFFB178(v16, &v15);
}

uint64_t sub_20D076E80(__int128 *a1, void *a2)
{
  v2 = a1[7];
  v34 = a1[6];
  v35 = v2;
  v36 = *(a1 + 16);
  v3 = a1[3];
  v30 = a1[2];
  v31 = v3;
  v4 = a1[5];
  v32 = a1[4];
  v33 = v4;
  v5 = a1[1];
  v6 = *a2 + OBJC_IVAR___HUBaseIconView_configuration;
  v28 = *a1;
  v29 = v5;
  swift_beginAccess();
  v37 = *v6;
  v7 = *(v6 + 16);
  v8 = *(v6 + 32);
  v9 = *(v6 + 64);
  v40 = *(v6 + 48);
  v41 = v9;
  v38 = v7;
  v39 = v8;
  v10 = *(v6 + 80);
  v11 = *(v6 + 96);
  v12 = *(v6 + 112);
  v45 = *(v6 + 128);
  v43 = v11;
  v44 = v12;
  v42 = v10;
  v46[0] = *v6;
  v13 = *(v6 + 16);
  v14 = *(v6 + 32);
  v15 = *(v6 + 64);
  v46[3] = *(v6 + 48);
  v46[4] = v15;
  v46[1] = v13;
  v46[2] = v14;
  v16 = *(v6 + 80);
  v17 = *(v6 + 96);
  v18 = *(v6 + 112);
  v47 = *(v6 + 128);
  v46[6] = v17;
  v46[7] = v18;
  v46[5] = v16;
  *v6 = v28;
  v19 = v29;
  v20 = v30;
  v21 = v32;
  *(v6 + 48) = v31;
  *(v6 + 64) = v21;
  *(v6 + 16) = v19;
  *(v6 + 32) = v20;
  v22 = v33;
  v23 = v34;
  v24 = v35;
  *(v6 + 128) = v36;
  *(v6 + 96) = v23;
  *(v6 + 112) = v24;
  *(v6 + 80) = v22;
  sub_20CFFB178(&v28, v26);
  sub_20CFFB178(&v37, v26);
  sub_20CEF928C(v46, &qword_27C81F350);
  v26[6] = v43;
  v26[7] = v44;
  v27 = v45;
  v26[2] = v39;
  v26[3] = v40;
  v26[4] = v41;
  v26[5] = v42;
  v26[0] = v37;
  v26[1] = v38;
  sub_20D077000(v26);
  return sub_20CEF928C(&v37, &qword_27C81F350);
}

uint64_t sub_20D077000(__int128 *a1)
{
  v2 = a1[7];
  v73 = a1[6];
  v74 = v2;
  v75 = *(a1 + 16);
  v3 = a1[3];
  v69 = a1[2];
  v70 = v3;
  v4 = a1[5];
  v71 = a1[4];
  v72 = v4;
  v5 = a1[1];
  v6 = (v1 + OBJC_IVAR___HUBaseIconView_configuration);
  v67 = *a1;
  v68 = v5;
  swift_beginAccess();
  v7 = v6[5];
  v8 = v6[7];
  v82 = v6[6];
  v83 = v8;
  v9 = v6[1];
  v10 = v6[3];
  v78 = v6[2];
  v79 = v10;
  v11 = v6[3];
  v12 = v6[5];
  v80 = v6[4];
  v81 = v12;
  v13 = v6[1];
  v76 = *v6;
  v77 = v13;
  v14 = v6[7];
  v85[6] = v82;
  v85[7] = v14;
  v85[2] = v78;
  v85[3] = v11;
  v85[4] = v80;
  v85[5] = v7;
  v84 = *(v6 + 16);
  v86 = *(v6 + 16);
  v85[0] = v76;
  v85[1] = v9;
  result = sub_20CFF743C(v85);
  if (result != 1)
  {
    __src[5] = v81;
    __src[6] = v82;
    __src[7] = v83;
    __src[1] = v77;
    __src[2] = v78;
    __src[3] = v79;
    __src[4] = v80;
    __src[0] = v76;
    *(&__src[13] + 8) = v72;
    *(&__src[14] + 8) = v73;
    *(&__src[15] + 8) = v74;
    *(&__src[9] + 8) = v68;
    *(&__src[10] + 8) = v69;
    *(&__src[11] + 8) = v70;
    *(&__src[12] + 8) = v71;
    *(&__src[8] + 8) = v67;
    v65[6] = v82;
    v65[7] = v83;
    v65[2] = v78;
    v65[3] = v79;
    v65[4] = v80;
    v65[5] = v81;
    *&__src[8] = v84;
    *(&__src[16] + 1) = v75;
    v66 = v84;
    v65[0] = v76;
    v65[1] = v77;
    if (sub_20CFF743C(v65) == 1)
    {
      __dst[6] = *(&__src[14] + 8);
      __dst[7] = *(&__src[15] + 8);
      *&__dst[8] = *(&__src[16] + 1);
      __dst[2] = *(&__src[10] + 8);
      __dst[3] = *(&__src[11] + 8);
      __dst[4] = *(&__src[12] + 8);
      __dst[5] = *(&__src[13] + 8);
      __dst[0] = *(&__src[8] + 8);
      __dst[1] = *(&__src[9] + 8);
      if (sub_20CFF743C(__dst) == 1)
      {
        v60 = __src[5];
        v61 = __src[6];
        v62 = __src[7];
        v63 = *&__src[8];
        v58 = __src[3];
        v59 = __src[4];
        v56 = __src[1];
        v57 = __src[2];
        v55 = __src[0];
        sub_20CFFB178(&v76, &v45);
        sub_20CFFB178(&v67, &v45);
        v16 = &v55;
        return sub_20CEF928C(v16, &qword_27C81F350);
      }

      sub_20CFFB178(&v76, &v55);
      sub_20CFFB178(&v76, &v55);
      sub_20CFFB178(&v67, &v55);
    }

    else
    {
      v60 = __src[5];
      v61 = __src[6];
      v62 = __src[7];
      v57 = __src[2];
      v58 = __src[3];
      v59 = __src[4];
      v55 = __src[0];
      v56 = __src[1];
      v51 = __src[6];
      v52 = __src[7];
      v47 = __src[2];
      v48 = __src[3];
      v63 = *&__src[8];
      v53 = *&__src[8];
      v49 = __src[4];
      v50 = __src[5];
      v45 = __src[0];
      v46 = __src[1];
      __dst[6] = *(&__src[14] + 8);
      __dst[7] = *(&__src[15] + 8);
      *&__dst[8] = *(&__src[16] + 1);
      __dst[2] = *(&__src[10] + 8);
      __dst[3] = *(&__src[11] + 8);
      __dst[4] = *(&__src[12] + 8);
      __dst[5] = *(&__src[13] + 8);
      __dst[0] = *(&__src[8] + 8);
      __dst[1] = *(&__src[9] + 8);
      if (sub_20CFF743C(__dst) != 1)
      {
        v29 = *(&__src[14] + 8);
        v30 = *(&__src[15] + 8);
        v31 = *(&__src[16] + 1);
        v25 = *(&__src[10] + 8);
        v26 = *(&__src[11] + 8);
        v27 = *(&__src[12] + 8);
        v28 = *(&__src[13] + 8);
        v23 = *(&__src[8] + 8);
        v24 = *(&__src[9] + 8);
        sub_20CFFB178(&v76, v22);
        sub_20CFFB178(&v76, v22);
        sub_20CFFB178(&v67, v22);
        sub_20CFFB178(&v55, v22);
        v17 = _s6HomeUI12BaseIconViewC13ConfigurationV2eeoiySbAE_AEtFZ_0(&v45, &v23);
        v32[6] = v29;
        v32[7] = v30;
        v33 = v31;
        v32[2] = v25;
        v32[3] = v26;
        v32[4] = v27;
        v32[5] = v28;
        v32[0] = v23;
        v32[1] = v24;
        sub_20CFF7478(v32);
        v34[6] = v51;
        v34[7] = v52;
        v35 = v53;
        v34[2] = v47;
        v34[3] = v48;
        v34[4] = v49;
        v34[5] = v50;
        v34[0] = v45;
        v34[1] = v46;
        sub_20CFF7478(v34);
        v42 = __src[6];
        v43 = __src[7];
        v44 = *&__src[8];
        v38 = __src[2];
        v39 = __src[3];
        v40 = __src[4];
        v41 = __src[5];
        v36 = __src[0];
        v37 = __src[1];
        sub_20CEF928C(&v36, &qword_27C81F350);
        if (v17)
        {
LABEL_23:
          v16 = &v76;
          return sub_20CEF928C(v16, &qword_27C81F350);
        }

LABEL_9:
        __src[6] = v73;
        __src[7] = v74;
        *&__src[8] = v75;
        __src[2] = v69;
        __src[3] = v70;
        __src[4] = v71;
        __src[5] = v72;
        __src[0] = v67;
        __src[1] = v68;
        if (sub_20CFF743C(__src) != 1)
        {
          if (*&v85[0] == v67)
          {
            sub_20D078630();
            goto LABEL_19;
          }

          v18 = *(v1 + OBJC_IVAR___HUBaseIconView_textLabel);
          if (v18)
          {
            [v18 removeFromSuperview];
          }

          v19 = *(v1 + OBJC_IVAR___HUBaseIconView_roundButtonView);
          if (v19)
          {
            [v19 removeFromSuperview];
          }
        }

        sub_20D0783F8();
LABEL_19:
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v21 = Strong;
          if ([Strong respondsToSelector_])
          {
            [v21 baseIconViewDidUpdateConfiguration_];
          }

          swift_unknownObjectRelease();
        }

        goto LABEL_23;
      }

      v42 = __src[6];
      v43 = __src[7];
      v44 = *&__src[8];
      v38 = __src[2];
      v39 = __src[3];
      v40 = __src[4];
      v41 = __src[5];
      v36 = __src[0];
      v37 = __src[1];
      sub_20CFFB178(&v76, v34);
      sub_20CFFB178(&v76, v34);
      sub_20CFFB178(&v67, v34);
      sub_20CFFB178(&v55, v34);
      sub_20CFF7478(&v36);
    }

    memcpy(__dst, __src, sizeof(__dst));
    sub_20CEF928C(__dst, &unk_27C81F498);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_20D0775AC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___HUBaseIconView_configuration;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23 = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  v24 = *(v3 + 128);
  *(a1 + 128) = *(v3 + 128);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_20CFFB178(v17, &v16);
}

uint64_t sub_20D07765C(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___HUBaseIconView_configuration;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v25 = *(v3 + 96);
  v26 = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v21 = *(v3 + 32);
  v22 = v7;
  v8 = *(v3 + 48);
  v9 = *(v3 + 80);
  v23 = *(v3 + 64);
  v24 = v9;
  v10 = *(v3 + 16);
  v19 = *v3;
  v20 = v10;
  v11 = *(v3 + 112);
  v28[6] = v25;
  v28[7] = v11;
  v28[2] = v21;
  v28[3] = v8;
  v28[4] = v23;
  v28[5] = v4;
  v27 = *(v3 + 128);
  v29 = *(v3 + 128);
  v28[0] = v19;
  v28[1] = v6;
  v12 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v12;
  v13 = *(a1 + 112);
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = v13;
  *(v3 + 128) = *(a1 + 128);
  v14 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v14;
  v15 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v15;
  sub_20CFFB178(&v19, v17);
  sub_20CEF928C(v28, &qword_27C81F350);
  v17[6] = v25;
  v17[7] = v26;
  v18 = v27;
  v17[2] = v21;
  v17[3] = v22;
  v17[4] = v23;
  v17[5] = v24;
  v17[0] = v19;
  v17[1] = v20;
  sub_20D077000(v17);
  return sub_20CEF928C(&v19, &qword_27C81F350);
}

void (*sub_20D077794(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x3E0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 976) = v1;
  v5 = OBJC_IVAR___HUBaseIconView_configuration;
  *(v3 + 984) = OBJC_IVAR___HUBaseIconView_configuration;
  v6 = v1 + v5;
  swift_beginAccess();
  *v4 = *v6;
  v7 = *(v6 + 16);
  v8 = *(v6 + 32);
  v9 = *(v6 + 64);
  *(v4 + 48) = *(v6 + 48);
  *(v4 + 64) = v9;
  *(v4 + 16) = v7;
  *(v4 + 32) = v8;
  v10 = *(v6 + 80);
  v11 = *(v6 + 96);
  v12 = *(v6 + 112);
  *(v4 + 128) = *(v6 + 128);
  *(v4 + 96) = v11;
  *(v4 + 112) = v12;
  *(v4 + 80) = v10;
  *(v4 + 136) = *v6;
  v13 = *(v6 + 16);
  v14 = *(v6 + 32);
  v15 = *(v6 + 48);
  *(v4 + 200) = *(v6 + 64);
  *(v4 + 184) = v15;
  *(v4 + 168) = v14;
  *(v4 + 152) = v13;
  v16 = *(v6 + 80);
  v17 = *(v6 + 96);
  v18 = *(v6 + 112);
  *(v4 + 264) = *(v6 + 128);
  *(v4 + 248) = v18;
  *(v4 + 232) = v17;
  *(v4 + 216) = v16;
  sub_20CFFB178(v4, v4 + 272);
  return sub_20D0778A0;
}

void sub_20D0778A0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 408;
  v4 = *a1 + 544;
  v5 = *(v2 + 976) + *(v2 + 984);
  if (a2)
  {
    v6 = *(v2 + 200);
    v7 = *(v2 + 184);
    *(v2 + 712) = *(v2 + 168);
    *(v2 + 728) = v7;
    v8 = *(v2 + 152);
    *(v2 + 808) = *(v2 + 264);
    v9 = *(v2 + 248);
    *(v2 + 776) = *(v2 + 232);
    *(v2 + 792) = v9;
    v10 = *(v2 + 216);
    *(v2 + 744) = v6;
    *(v2 + 760) = v10;
    *(v2 + 680) = *(v2 + 136);
    *(v2 + 696) = v8;
    *v4 = *v5;
    v11 = *(v5 + 16);
    v12 = *(v5 + 32);
    v13 = *(v5 + 64);
    *(v4 + 48) = *(v5 + 48);
    *(v4 + 64) = v13;
    *(v4 + 16) = v11;
    *(v4 + 32) = v12;
    v14 = *(v5 + 80);
    v15 = *(v5 + 96);
    v16 = *(v5 + 112);
    *(v4 + 128) = *(v5 + 128);
    *(v4 + 96) = v15;
    *(v4 + 112) = v16;
    *(v4 + 80) = v14;
    *v3 = *v5;
    v17 = *(v5 + 16);
    v18 = *(v5 + 32);
    v19 = *(v5 + 64);
    *(v3 + 48) = *(v5 + 48);
    *(v3 + 64) = v19;
    *(v3 + 16) = v17;
    *(v3 + 32) = v18;
    v20 = *(v5 + 80);
    v21 = *(v5 + 96);
    v22 = *(v5 + 112);
    *(v3 + 128) = *(v5 + 128);
    *(v3 + 96) = v21;
    *(v3 + 112) = v22;
    *(v3 + 80) = v20;
    *v5 = *(v2 + 136);
    v23 = *(v2 + 152);
    v24 = *(v2 + 168);
    v25 = *(v2 + 200);
    *(v5 + 48) = *(v2 + 184);
    *(v5 + 64) = v25;
    *(v5 + 16) = v23;
    *(v5 + 32) = v24;
    v26 = *(v2 + 216);
    v27 = *(v2 + 232);
    v28 = *(v2 + 248);
    *(v5 + 128) = *(v2 + 264);
    *(v5 + 96) = v27;
    *(v5 + 112) = v28;
    *(v5 + 80) = v26;
    sub_20CFFB178(v2 + 680, v2 + 816);
    sub_20CFFB178(v4, v2 + 816);
    sub_20CEF928C(v3, &qword_27C81F350);
    v29 = *(v4 + 112);
    v66 = *(v4 + 96);
    v67 = v29;
    v68 = *(v4 + 128);
    v30 = *(v4 + 48);
    v62 = *(v4 + 32);
    v63 = v30;
    v31 = *(v4 + 80);
    v64 = *(v4 + 64);
    v65 = v31;
    v32 = *(v4 + 16);
    v60 = *v4;
    v61 = v32;
    sub_20D077000(&v60);
    sub_20CEF928C(v4, &qword_27C81F350);
    v33 = *(v2 + 216);
    v34 = *(v2 + 248);
    *(v2 + 368) = *(v2 + 232);
    *(v2 + 384) = v34;
    *(v2 + 400) = *(v2 + 264);
    v35 = *(v2 + 152);
    v36 = *(v2 + 184);
    *(v2 + 304) = *(v2 + 168);
    *(v2 + 320) = v36;
    *(v2 + 336) = *(v2 + 200);
    *(v2 + 352) = v33;
    *(v2 + 272) = *(v2 + 136);
    *(v2 + 288) = v35;
    v37 = v2 + 272;
  }

  else
  {
    *v3 = *v5;
    v38 = *(v5 + 64);
    v40 = *(v5 + 16);
    v39 = *(v5 + 32);
    *(v3 + 48) = *(v5 + 48);
    *(v3 + 64) = v38;
    *(v3 + 16) = v40;
    *(v3 + 32) = v39;
    v42 = *(v5 + 96);
    v41 = *(v5 + 112);
    v43 = *(v5 + 80);
    *(v3 + 128) = *(v5 + 128);
    *(v3 + 96) = v42;
    *(v3 + 112) = v41;
    *(v3 + 80) = v43;
    v44 = *(v5 + 80);
    v45 = *(v5 + 96);
    v46 = *(v5 + 112);
    *(v2 + 400) = *(v5 + 128);
    *(v2 + 368) = v45;
    *(v2 + 384) = v46;
    *(v2 + 352) = v44;
    v47 = *(v5 + 16);
    v48 = *(v5 + 32);
    v49 = *(v5 + 64);
    *(v2 + 320) = *(v5 + 48);
    *(v2 + 336) = v49;
    *(v2 + 288) = v47;
    *(v2 + 304) = v48;
    *(v2 + 272) = *v5;
    *v5 = *(v2 + 136);
    v50 = *(v2 + 152);
    v51 = *(v2 + 168);
    v52 = *(v2 + 200);
    *(v5 + 48) = *(v2 + 184);
    *(v5 + 64) = v52;
    *(v5 + 16) = v50;
    *(v5 + 32) = v51;
    v53 = *(v2 + 216);
    v54 = *(v2 + 232);
    v55 = *(v2 + 248);
    *(v5 + 128) = *(v2 + 264);
    *(v5 + 96) = v54;
    *(v5 + 112) = v55;
    *(v5 + 80) = v53;
    sub_20CFFB178(v3, v4);
    sub_20CEF928C(v2 + 272, &qword_27C81F350);
    v56 = *(v3 + 112);
    v66 = *(v3 + 96);
    v67 = v56;
    v68 = *(v3 + 128);
    v57 = *(v3 + 48);
    v62 = *(v3 + 32);
    v63 = v57;
    v58 = *(v3 + 80);
    v64 = *(v3 + 64);
    v65 = v58;
    v59 = *(v3 + 16);
    v60 = *v3;
    v61 = v59;
    sub_20D077000(&v60);
    v37 = v3;
  }

  sub_20CEF928C(v37, &qword_27C81F350);

  free(v2);
}

uint64_t sub_20D077CAC()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_20D077D0C(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___HUBaseIconView_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_20CED1190;
}

void sub_20D077DA4(void *a1)
{
  if (a1)
  {
    [a1 removeFromSuperview];
  }

  v2 = *&v1[OBJC_IVAR___HUBaseIconView_progressView];
  if (v2)
  {
    v3 = *&v1[OBJC_IVAR___HUBaseIconView_roundButtonView];
    if (v3)
    {
      v4 = v2;
      v5 = v3;
      [v4 setHidesWhenStopped_];
      v6 = v4;
      [v1 addSubview_];
      [v6 setTranslatesAutoresizingMaskIntoConstraints_];
      v7 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_20D5BC4C0;
      v9 = [v6 centerXAnchor];
      v10 = v5;
      v11 = [v10 centerXAnchor];
      v12 = [v9 constraintEqualToAnchor_];

      *(v8 + 32) = v12;
      v13 = [v6 centerYAnchor];

      v14 = [v10 centerYAnchor];
      v15 = [v13 constraintEqualToAnchor_];

      *(v8 + 40) = v15;
      v16 = [v6 widthAnchor];

      v17 = [v10 heightAnchor];
      v18 = [v16 constraintEqualToAnchor_];

      *(v8 + 48) = v18;
      v19 = [v6 heightAnchor];

      v20 = [v10 heightAnchor];
      v21 = [v19 constraintEqualToAnchor_];

      *(v8 + 56) = v21;
      sub_20CF0AC18();
      v22 = sub_20D567A58();

      [v7 activateConstraints_];
    }
  }
}

void sub_20D0780AC(void *a1)
{
  v2 = OBJC_IVAR___HUBaseIconView_textLabel;
  v3 = *&v1[OBJC_IVAR___HUBaseIconView_textLabel];
  *&v1[OBJC_IVAR___HUBaseIconView_textLabel] = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    [v1 addSubview_];
    [v6 setAdjustsFontSizeToFitWidth_];
    [v6 setMinimumScaleFactor_];
  }

LABEL_4:
}

void sub_20D078190(void *a1)
{
  v2 = OBJC_IVAR___HUBaseIconView_roundButtonView;
  v3 = *&v1[OBJC_IVAR___HUBaseIconView_roundButtonView];
  *&v1[OBJC_IVAR___HUBaseIconView_roundButtonView] = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    [v6 _continuousCornerRadius];
    [v1 _setContinuousCornerRadius_];
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    [v1 addSubview_];
  }

LABEL_4:
}

id sub_20D0782B0()
{
  v1 = (v0 + OBJC_IVAR___HUBaseIconView_configuration);
  swift_beginAccess();
  v2 = v1[5];
  v3 = v1[7];
  v21 = v1[6];
  v22 = v3;
  v4 = v1[1];
  v5 = v1[3];
  v17 = v1[2];
  v18 = v5;
  v6 = v1[3];
  v7 = v1[5];
  v19 = v1[4];
  v20 = v7;
  v8 = v1[1];
  v15 = *v1;
  v16 = v8;
  v9 = v1[7];
  v24[6] = v21;
  v24[7] = v9;
  v24[2] = v17;
  v24[3] = v6;
  v24[4] = v19;
  v24[5] = v2;
  v23 = *(v1 + 16);
  v25 = *(v1 + 16);
  v24[0] = v15;
  v24[1] = v4;
  result = sub_20CFF743C(v24);
  if (result != 1)
  {
    if (*&v24[0])
    {
      if (*&v24[0] != 1)
      {
        v12[17] = *&v24[0];
        v13[6] = v21;
        v13[7] = v22;
        v14 = v23;
        v13[2] = v17;
        v13[3] = v18;
        v13[4] = v19;
        v13[5] = v20;
        v13[0] = v15;
        v13[1] = v16;
        sub_20CFDAFC8(v13, v12);
        result = sub_20D568C38();
        __break(1u);
        return result;
      }

      v11 = OBJC_IVAR___HUBaseIconView_textLabel;
    }

    else
    {
      v11 = OBJC_IVAR___HUBaseIconView_roundButtonView;
    }

    result = *(v0 + v11);
    if (result)
    {
      return [result intrinsicContentSize];
    }
  }

  return result;
}

uint64_t sub_20D0783F8()
{
  v1 = &v0[OBJC_IVAR___HUBaseIconView_configuration];
  swift_beginAccess();
  v2 = *(v1 + 5);
  v3 = *(v1 + 7);
  v28 = *(v1 + 6);
  v29 = v3;
  v4 = *(v1 + 1);
  v5 = *(v1 + 3);
  v24 = *(v1 + 2);
  v25 = v5;
  v6 = *(v1 + 3);
  v7 = *(v1 + 5);
  v26 = *(v1 + 4);
  v27 = v7;
  v8 = *(v1 + 1);
  v22 = *v1;
  v23 = v8;
  v9 = *(v1 + 7);
  v34 = v28;
  v35 = v9;
  v31[2] = v24;
  v31[3] = v6;
  v32 = v26;
  v33 = v2;
  v30 = *(v1 + 16);
  v36 = *(v1 + 16);
  v31[0] = v22;
  v31[1] = v4;
  result = sub_20CFF743C(v31);
  if (result != 1)
  {
    v20[6] = v28;
    v20[7] = v29;
    v21 = v30;
    v20[2] = v24;
    v20[3] = v25;
    v20[4] = v26;
    v20[5] = v27;
    v20[0] = v22;
    v20[1] = v23;
    sub_20CFDAFC8(v20, v19);
    [v0 _setTouchInsets_];
    if (*&v31[0] == 1)
    {
      v11 = *&v0[OBJC_IVAR___HUBaseIconView_textLabel];
      if (v11)
      {
        v12 = 0;
        v13 = *&v0[OBJC_IVAR___HUBaseIconView_textLabel];
      }

      else
      {
        v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
        v12 = 0;
      }
    }

    else
    {
      if (*&v31[0])
      {
        v19[0] = *&v31[0];
        result = sub_20D568C38();
        __break(1u);
        return result;
      }

      v11 = *&v0[OBJC_IVAR___HUBaseIconView_roundButtonView];
      if (v11)
      {
        v13 = 0;
        v12 = *&v0[OBJC_IVAR___HUBaseIconView_roundButtonView];
      }

      else
      {
        v14 = *(&v32 + 1);
        v12 = [objc_allocWithZone(type metadata accessor for IconRoundButtonView()) init];
        v15 = OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_dimension;
        swift_beginAccess();
        v13 = 0;
        *&v12[v15] = v14;
      }
    }

    v16 = v11;
    v17 = v12;
    sub_20D078190(v12);
    v18 = v13;
    sub_20D0780AC(v13);
    sub_20D078630();

    return sub_20CEF928C(&v22, &qword_27C81F350);
  }

  return result;
}

uint64_t sub_20D078630()
{
  v1 = &v0[OBJC_IVAR___HUBaseIconView_configuration];
  swift_beginAccess();
  v2 = *(v1 + 5);
  v3 = *(v1 + 7);
  v32 = *(v1 + 6);
  v33 = v3;
  v4 = *(v1 + 1);
  v5 = *(v1 + 3);
  v28 = *(v1 + 2);
  v29 = v5;
  v6 = *(v1 + 3);
  v7 = *(v1 + 5);
  v30 = *(v1 + 4);
  v31 = v7;
  v8 = *(v1 + 1);
  v26 = *v1;
  v27 = v8;
  v9 = *(v1 + 7);
  v37 = v32;
  v38 = v9;
  v35[2] = v28;
  v35[3] = v6;
  v35[4] = v30;
  v36 = v2;
  v34 = *(v1 + 16);
  v39 = *(v1 + 16);
  v35[0] = v26;
  v35[1] = v4;
  result = sub_20CFF743C(v35);
  if (result != 1)
  {
    v11 = v36;
    v12 = v37;
    v13 = v38;
    if ((*(&v38 + 1) & 0x8000000000000000) != 0)
    {
      v25 = v37 & 1;
      v17 = v36;
      v18 = v37 & 1;
      v19 = *(&v37 + 1);
      v20 = v38;
      v21 = WORD4(v38) & 0x101;
      v22 = v39;
      sub_20CFFB178(&v26, v23);
      sub_20CFD9D60(v11, *(&v11 + 1), v12, *(&v12 + 1), v13, *(&v13 + 1));
      sub_20D0788A0(&v17);
    }

    else
    {
      v14 = *&v0[OBJC_IVAR___HUBaseIconView_textLabel];
      if (!v14)
      {
        v23[6] = v32;
        v23[7] = v33;
        v24 = v34;
        v23[2] = v28;
        v23[3] = v29;
        v23[4] = v30;
        v23[5] = v31;
        v23[0] = v26;
        v23[1] = v27;
        sub_20CFDAFC8(v23, &v17);
        goto LABEL_8;
      }

      sub_20CFFB178(&v26, v23);
      sub_20CFD9D60(v11, *(&v11 + 1), v12, *(&v12 + 1), v13, *(&v13 + 1));
      v15 = v14;
      v16 = sub_20D5677F8();
      [v15 setText_];

      [v15 setTextAlignment_];
      [v15 setTextColor_];
      [v15 setFont_];
    }

    sub_20CFD9DD8(v11, *(&v11 + 1), v12, *(&v12 + 1), v13, *(&v13 + 1));
LABEL_8:
    [v0 setNeedsUpdateConstraints];
    return sub_20CEF928C(&v26, &qword_27C81F350);
  }

  return result;
}

void sub_20D0788A0(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR___HUBaseIconView_roundButtonView);
  if (v3)
  {
    v5 = v2 + OBJC_IVAR___HUBaseIconView_configuration;
    swift_beginAccess();
    v6 = *(v5 + 80);
    v7 = *(v5 + 112);
    v31 = *(v5 + 96);
    v32 = v7;
    v8 = *(v5 + 16);
    v9 = *(v5 + 48);
    v27 = *(v5 + 32);
    v28 = v9;
    v10 = *(v5 + 48);
    v11 = *(v5 + 80);
    v29 = *(v5 + 64);
    v30 = v11;
    v12 = *(v5 + 16);
    v26[0] = *v5;
    v26[1] = v12;
    v13 = *(v5 + 112);
    v37 = v31;
    v38 = v13;
    v34[2] = v27;
    v34[3] = v10;
    v35 = v29;
    v36 = v6;
    v33 = *(v5 + 128);
    v39 = *(v5 + 128);
    v34[0] = v26[0];
    v34[1] = v8;
    if (sub_20CFF743C(v34) == 1)
    {
      v14 = v3;
    }

    else
    {
      v15 = *(&v35 + 1);
      v16 = OBJC_IVAR____TtC6HomeUI19IconRoundButtonView_dimension;
      swift_beginAccess();
      v17 = *&v3[v16];
      *&v3[v16] = v15;
      v18 = v3;
      if (v15 == v17)
      {
        sub_20CFFB178(v26, v24);
      }

      else
      {
        v19 = v18;
        sub_20CFFB178(v26, v24);
        [v19 setNeedsUpdateConstraints];
      }

      v20 = *(v2 + OBJC_IVAR___HUBaseIconView_progressView);
      if (v20)
      {
        v21 = *(&v34[0] + 1);
        v22 = v20;
        [v22 setTintColor_];
        sub_20CEF928C(v26, &qword_27C81F350);
      }

      else
      {
        sub_20CEF928C(v26, &qword_27C81F350);
      }
    }

    v23 = *(a1 + 16);
    v24[0] = *a1;
    v24[1] = v23;
    v24[2] = *(a1 + 32);
    v25 = *(a1 + 48);
    sub_20D0F5D1C(v24);
  }
}

void sub_20D078A74()
{
  v1 = *(v0 + OBJC_IVAR___HUBaseIconView_roundButtonView);
  if (v1)
  {
    ObjectType = swift_getObjectType();
    v3 = objc_allocWithZone(MEMORY[0x277D75A60]);
    v4 = v1;
    v5 = [v3 initWithMass:1.0 stiffness:737.508 damping:54.3142 initialVelocity:{0.0, 0.0}];
    v6 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v5 timingParameters:0.4];
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    *(v7 + 24) = ObjectType;
    v10[4] = sub_20D078C70;
    v10[5] = v7;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_20CFFFE8C;
    v10[3] = &block_descriptor_36;
    v8 = _Block_copy(v10);
    v9 = v4;

    [v6 addAnimations_];
    _Block_release(v8);
    [v6 startAnimation];
  }
}

id sub_20D078BFC(void *a1)
{
  v4.a = 1.0;
  v4.b = 0.0;
  v4.c = 0.0;
  v4.d = 1.0;
  v4.tx = 0.0;
  v4.ty = 0.0;
  CGAffineTransformScale(&v3, &v4, 0.92, 0.92);
  v4 = v3;
  return [a1 setTransform_];
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_20D078C90()
{
  v1 = *(v0 + OBJC_IVAR___HUBaseIconView_roundButtonView);
  if (v1)
  {
    v2 = objc_allocWithZone(MEMORY[0x277D75A60]);
    v3 = v1;
    v4 = [v2 initWithMass:1.0 stiffness:341.024 damping:20.0 initialVelocity:{0.0, 0.0}];
    v5 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v4 timingParameters:0.7405];
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    v9[4] = sub_20D078E14;
    v9[5] = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_20CFFFE8C;
    v9[3] = &block_descriptor_6_0;
    v7 = _Block_copy(v9);
    v8 = v3;

    [v5 addAnimations_];
    _Block_release(v7);
    [v5 startAnimationAfterDelay_];
  }
}

id sub_20D078E14()
{
  v1 = *(v0 + 16);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform_];
}

void sub_20D078E54()
{
  v1 = v0;
  v51.receiver = v0;
  v51.super_class = type metadata accessor for BaseIconView();
  objc_msgSendSuper2(&v51, sel_updateConstraints);
  v2 = &v0[OBJC_IVAR___HUBaseIconView_configuration];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v4 = *(v2 + 7);
  v58 = *(v2 + 6);
  v59 = v4;
  v5 = *(v2 + 1);
  v6 = *(v2 + 3);
  v54 = *(v2 + 2);
  v55 = v6;
  v7 = *(v2 + 3);
  v8 = *(v2 + 5);
  v56 = *(v2 + 4);
  v57 = v8;
  v9 = *(v2 + 1);
  v52 = *v2;
  v53 = v9;
  v10 = *(v2 + 7);
  v67 = v58;
  v68 = v10;
  v63 = v54;
  v64 = v7;
  v65 = v56;
  v66 = v3;
  v60 = *(v2 + 16);
  v69 = *(v2 + 16);
  v61 = v52;
  v62 = v5;
  if (sub_20CFF743C(&v61) != 1)
  {
    if (!v61)
    {
      v11 = *&v1[OBJC_IVAR___HUBaseIconView_roundButtonView];
      if (!v11)
      {
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_20D5BC4C0;
      sub_20CFFB178(&v52, v48);
      v13 = v11;
      v14 = [v1 topAnchor];
      v15 = v13;
      v16 = [v15 topAnchor];
      v17 = [v14 constraintEqualToAnchor_];

      *(v12 + 32) = v17;
      v18 = [v1 bottomAnchor];
      v19 = [v15 bottomAnchor];
      v20 = [v18 constraintEqualToAnchor_];

      *(v12 + 40) = v20;
      v21 = [v1 leadingAnchor];
      v22 = [v15 leadingAnchor];
      v23 = [v21 constraintEqualToAnchor_];

      *(v12 + 48) = v23;
      v24 = [v1 trailingAnchor];
      v25 = [v15 trailingAnchor];

      v26 = [v24 constraintEqualToAnchor_];
      *(v12 + 56) = v26;
      goto LABEL_12;
    }

    if (v61 == 1)
    {
      v27 = *&v1[OBJC_IVAR___HUBaseIconView_textLabel];
      if (!v27)
      {
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_20D5BC4C0;
      sub_20CFFB178(&v52, v48);
      v28 = v27;
      v29 = [v1 topAnchor];
      v15 = v28;
      v30 = [v15 topAnchor];
      v31 = [v29 constraintEqualToAnchor_];

      *(v12 + 32) = v31;
      v32 = [v1 bottomAnchor];
      v33 = [v15 bottomAnchor];
      v34 = [v32 constraintEqualToAnchor_];

      *(v12 + 40) = v34;
      v35 = [v1 leadingAnchor];
      v36 = [v15 leadingAnchor];
      v37 = [v35 constraintEqualToAnchor_];

      *(v12 + 48) = v37;
      v38 = [v1 trailingAnchor];
      v39 = [v15 trailingAnchor];
      v40 = [v38 constraintEqualToAnchor_];

      *(v12 + 56) = v40;
      v50 = v12;
      if (*(&v62 + 1) <= 4uLL)
      {
        if (*(&v62 + 1) != 2 && ((*(&v68 + 1) & 0x8000000000000000) != 0 || (BYTE8(v68) & 1) != 0))
        {
          v45 = [v15 widthAnchor];

          v46 = [v45 constraintEqualToConstant_];
          MEMORY[0x20F31CEE0]();
          if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20D567AB8();
          }

          sub_20D567B08();

          v12 = v50;
          goto LABEL_13;
        }

LABEL_12:
LABEL_13:
        v41 = objc_opt_self();
        v42 = OBJC_IVAR___HUBaseIconView_iconConstraints;
        sub_20CF0AC18();
        sub_20D5663C8();
        v43 = sub_20D567A58();

        [v41 deactivateConstraints_];

        *&v1[v42] = v12;
        sub_20D5663C8();

        v44 = sub_20D567A58();

        [v41 activateConstraints_];
        sub_20CEF928C(&v52, &qword_27C81F350);

        return;
      }

      *&v48[0] = *(&v62 + 1);
    }

    else
    {
      v47[17] = v61;
      v48[6] = v58;
      v48[7] = v59;
      v49 = v60;
      v48[2] = v54;
      v48[3] = v55;
      v48[4] = v56;
      v48[5] = v57;
      v48[0] = v52;
      v48[1] = v53;
      sub_20CFDAFC8(v48, v47);
    }

    sub_20D568C38();
    __break(1u);
  }
}

id BaseIconView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id BaseIconView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___HUBaseIconView_iconConstraints] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR___HUBaseIconView_configurationWrapper] = 0;
  v9 = &v4[OBJC_IVAR___HUBaseIconView_configuration];
  sub_20CFDAF0C(v16);
  v10 = v16[7];
  *(v9 + 6) = v16[6];
  *(v9 + 7) = v10;
  *(v9 + 16) = v17;
  v11 = v16[3];
  *(v9 + 2) = v16[2];
  *(v9 + 3) = v11;
  v12 = v16[5];
  *(v9 + 4) = v16[4];
  *(v9 + 5) = v12;
  v13 = v16[1];
  *v9 = v16[0];
  *(v9 + 1) = v13;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___HUBaseIconView_progressView] = 0;
  *&v4[OBJC_IVAR___HUBaseIconView_textLabel] = 0;
  *&v4[OBJC_IVAR___HUBaseIconView_roundButtonView] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for BaseIconView();
  return objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
}

id BaseIconView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id BaseIconView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___HUBaseIconView_iconConstraints] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___HUBaseIconView_configurationWrapper] = 0;
  v3 = &v1[OBJC_IVAR___HUBaseIconView_configuration];
  sub_20CFDAF0C(v11);
  v4 = v11[7];
  *(v3 + 6) = v11[6];
  *(v3 + 7) = v4;
  *(v3 + 16) = v12;
  v5 = v11[3];
  *(v3 + 2) = v11[2];
  *(v3 + 3) = v5;
  v6 = v11[5];
  *(v3 + 4) = v11[4];
  *(v3 + 5) = v6;
  v7 = v11[1];
  *v3 = v11[0];
  *(v3 + 1) = v7;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___HUBaseIconView_progressView] = 0;
  *&v1[OBJC_IVAR___HUBaseIconView_textLabel] = 0;
  *&v1[OBJC_IVAR___HUBaseIconView_roundButtonView] = 0;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for BaseIconView();
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);

  if (v8)
  {
  }

  return v8;
}

id BaseIconView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseIconView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BaseIconView.startTransition(targetAppearance:)(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR___HUBaseIconView_configuration];
  swift_beginAccess();
  v4 = *(v3 + 5);
  v5 = *(v3 + 7);
  v76 = *(v3 + 6);
  v77 = v5;
  v6 = *(v3 + 1);
  v7 = *(v3 + 3);
  *&v72.tx = *(v3 + 2);
  v73 = v7;
  v8 = *(v3 + 3);
  v9 = *(v3 + 5);
  v74 = *(v3 + 4);
  v75 = v9;
  v10 = *(v3 + 1);
  *&v72.a = *v3;
  *&v72.c = v10;
  v11 = *(v3 + 7);
  v83 = v76;
  v84 = v11;
  *&v79.tx = *&v72.tx;
  v80 = v8;
  v81 = v74;
  v82 = v4;
  v78 = *(v3 + 16);
  v85 = *(v3 + 16);
  *&v79.a = *&v72.a;
  *&v79.c = v6;
  result = sub_20CFF743C(&v79);
  if (result != 1)
  {
    if ((*(&v84 + 1) & 0x8000000000000000) == 0)
    {
      if (a1 == 3 && *&v79.d == 2)
      {
        v13 = *&v1[OBJC_IVAR___HUBaseIconView_textLabel];
        if (v13)
        {
          sub_20CFFB178(&v72, &v63);
          v14 = v13;
          [v14 transform];
          CGAffineTransformScale(&v56, &v63, 0.523809524, 0.523809524);
          v63 = v56;
          [v14 setTransform_];
          [v14 setTextAlignment_];
          [v14 sizeToFit];

LABEL_12:
          sub_20D079E20(a1);
          return sub_20CEF928C(&v72, &qword_27C81F350);
        }
      }

      else if (a1 == 2)
      {
        CGAffineTransformMakeScale(&v63, 1.0, 1.0);
        tx = v63.tx;
        ty = v63.ty;
        v32 = *&v63.c;
        v33 = *&v63.a;
        v67 = v76;
        v68 = v77;
        v69 = v78;
        v63 = v72;
        v64 = v73;
        v65 = v74;
        v66 = v75;
        sub_20CFDAFC8(&v63, &v56);
        *&v56.a = v33;
        *&v56.c = v32;
        v56.tx = tx;
        v56.ty = ty;
        [v1 setTransform_];
        goto LABEL_12;
      }

      v67 = v76;
      v68 = v77;
      v69 = v78;
      v63 = v72;
      v64 = v73;
      v65 = v74;
      v66 = v75;
      sub_20CFDAFC8(&v63, &v56);
      goto LABEL_12;
    }

    c = v79.c;
    v17 = v79.ty;
    v16 = v79.tx;
    v70 = *&v80;
    v71 = WORD4(v80);
    sub_20CFFB178(&v72, &v63);
    sub_20CFD7ED4(&v79.c, &v63);
    if (a1 == 3)
    {

      v17 = 0.0;
    }

    v67 = v83;
    v68 = v84;
    v69 = v85;
    v63 = v79;
    v64 = v80;
    v65 = v81;
    v66 = v82;
    *&v41 = c;
    *(&v41 + 1) = a1;
    *v42 = v16;
    *&v42[8] = v17;
    *&v42[16] = v70;
    *&v42[24] = v71;
    *&v56.a = v41;
    *&v56.c = *v42;
    *(&v56.d + 2) = *&v42[10];
    sub_20CFD7ED4(&v41, &v47);
    BaseIconView.Configuration.updated(with:)(&v56, v45);
    v43 = *&v56.a;
    v44[0] = *&v56.c;
    *(v44 + 10) = *(&v56.d + 2);
    sub_20CFDAF98(&v43);
    v53 = v45[6];
    v54 = v45[7];
    v55 = v46;
    v49 = v45[2];
    v50 = v45[3];
    v51 = v45[4];
    v52 = v45[5];
    v47 = v45[0];
    v48 = v45[1];
    CGSizeMake(&v47);
    v20 = *(v3 + 5);
    v21 = *(v3 + 7);
    v60 = *(v3 + 6);
    v61 = v21;
    v22 = *(v3 + 1);
    v23 = *(v3 + 3);
    *&v56.tx = *(v3 + 2);
    v57 = v23;
    v24 = *(v3 + 3);
    v25 = *(v3 + 5);
    v58 = *(v3 + 4);
    v59 = v25;
    v26 = *(v3 + 1);
    *&v56.a = *v3;
    *&v56.c = v26;
    v27 = *(v3 + 7);
    v67 = v60;
    v68 = v27;
    *&v63.tx = *&v56.tx;
    v64 = v24;
    v65 = v58;
    v66 = v20;
    v62 = *(v3 + 16);
    v69 = *(v3 + 16);
    *&v63.a = *&v56.a;
    *&v63.c = v22;
    v28 = v52;
    *(v3 + 4) = v51;
    *(v3 + 5) = v28;
    v29 = v54;
    *(v3 + 6) = v53;
    *(v3 + 7) = v29;
    *(v3 + 16) = v55;
    v30 = v50;
    *(v3 + 2) = v49;
    *(v3 + 3) = v30;
    v31 = v48;
    *v3 = v47;
    *(v3 + 1) = v31;
    sub_20CFFB178(&v56, &v34);
    sub_20CEF928C(&v63, &qword_27C81F350);
    v38 = v60;
    v39 = v61;
    v40 = v62;
    v34 = v56;
    v35 = v57;
    v36 = v58;
    v37 = v59;
    sub_20D077000(&v34);
    sub_20CEF928C(&v56, &qword_27C81F350);
    sub_20D078630();
    sub_20CEF928C(&v72, &qword_27C81F350);
    v34.a = c;
    *&v34.b = a1;
    v34.c = v16;
    v34.d = v17;
    v34.tx = v70;
    LOWORD(v34.ty) = v71;
    return sub_20CFDAF98(&v34);
  }

  return result;
}

uint64_t sub_20D079E20(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___HUBaseIconView_configuration;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v45 = *(v3 + 96);
  v46 = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v41 = *(v3 + 32);
  v42 = v7;
  v8 = *(v3 + 48);
  v9 = *(v3 + 80);
  v43 = *(v3 + 64);
  v44 = v9;
  v10 = *(v3 + 16);
  v40[0] = *v3;
  v40[1] = v10;
  v11 = *(v3 + 112);
  v50 = v45;
  v51 = v11;
  v48[2] = v41;
  v48[3] = v8;
  v48[4] = v43;
  v49 = v4;
  v47 = *(v3 + 128);
  v52 = *(v3 + 128);
  v48[0] = v40[0];
  v48[1] = v6;
  result = sub_20CFF743C(v48);
  if (result != 1)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v13 = *(&v51 + 1);
      if ((*(&v51 + 1) & 0x8000000000000000) == 0)
      {
        v14 = v49;
        v15 = *(&v50 + 1);
        v16 = v50;
        v17 = v51;
        v18 = result;
        sub_20CFFB178(v40, __dst);
        swift_unknownObjectRetain();
        v37 = v16;
        v19 = v15;
        v20 = v15;
        v21 = v17;
        sub_20CFD9D60(v14, *(&v14 + 1), v16, v20, v17, v13);
        if (![v18 targetHeatingCoolingMode])
        {
          v22 = objc_opt_self();
          v23 = &selRef_systemGrayColor;
          if (a1 != 3)
          {
            v23 = &selRef_whiteColor;
          }

          v24 = [v22 *v23];

          v21 = v24;
        }

        v25 = sub_20D077794(v38);
        v27 = v26;
        memmove(__dst, v26, 0x88uLL);
        if (sub_20CFF743C(__dst) != 1)
        {
          v28 = v13 & 1;
          v29 = v27[10];
          v30 = v27[11];
          v32 = v27[12];
          v31 = v27[13];
          v35 = v27[15];
          v36 = v27[14];
          *(v27 + 5) = v14;
          v27[12] = v37;
          v27[13] = v19;
          v27[14] = v21;
          v27[15] = v28;
          v27[16] = 0;
          sub_20D5663C8();
          v33 = v19;
          v34 = v21;
          sub_20CFD9DD8(v29, v30, v32, v31, v36, v35);
        }

        v25(v38, 0);
        swift_unknownObjectRelease();
        sub_20CEF928C(v40, &qword_27C81F350);
      }
    }
  }

  return result;
}

uint64_t BaseIconView.prepareForTransition(targetAppearance:)(uint64_t a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___HUBaseIconView_configuration];
  swift_beginAccess();
  v5 = *(v4 + 5);
  v6 = *(v4 + 7);
  v63 = *(v4 + 6);
  v64 = v6;
  v7 = *(v4 + 1);
  v8 = *(v4 + 3);
  v59 = *(v4 + 2);
  v60 = v8;
  v9 = *(v4 + 3);
  v10 = *(v4 + 5);
  v61 = *(v4 + 4);
  v62 = v10;
  v11 = *(v4 + 1);
  v57 = *v4;
  v58 = v11;
  v12 = *(v4 + 7);
  v72 = v63;
  v73 = v12;
  v68 = v59;
  v69 = v9;
  v70 = v61;
  v71 = v5;
  v65 = *(v4 + 16);
  v74 = *(v4 + 16);
  v66 = v57;
  v67 = v7;
  result = sub_20CFF743C(&v66);
  if (result != 1 && (*(&v73 + 1) & 0x8000000000000000) == 0 && a1 == 2 && *(&v67 + 1) == 3)
  {
    LOWORD(v34) = v67;
    BYTE2(v34) = BYTE2(v67);
    *(&v34 + 1) = 2;
    LOBYTE(v35) = 0;
    *v36 = 0;
    *&v36[8] = 0;
    *&v36[16] = 512;
    v54 = v72;
    v55 = v73;
    v56 = v74;
    v50 = v68;
    v51 = v69;
    v52 = v70;
    v53 = v71;
    v48 = v66;
    v49 = v67;
    *&v27.a = v34;
    *&v27.c = v35;
    *(&v27.d + 2) = *&v36[2];
    v37[6] = v63;
    v37[7] = v64;
    v38 = v65;
    v37[2] = v59;
    v37[3] = v60;
    v37[4] = v61;
    v37[5] = v62;
    v37[0] = v57;
    v37[1] = v58;
    sub_20CFDAFC8(v37, &v41);
    BaseIconView.Configuration.updated(with:)(&v27, v39);
    CGSizeMake(v39);
    v14 = *(v4 + 5);
    v15 = *(v4 + 7);
    v45 = *(v4 + 6);
    v46 = v15;
    v16 = *(v4 + 1);
    v17 = *(v4 + 3);
    *&v41.tx = *(v4 + 2);
    v42 = v17;
    v18 = *(v4 + 3);
    v19 = *(v4 + 5);
    v43 = *(v4 + 4);
    v44 = v19;
    v20 = *(v4 + 1);
    *&v41.a = *v4;
    *&v41.c = v20;
    v21 = *(v4 + 7);
    v54 = v45;
    v55 = v21;
    v50 = *&v41.tx;
    v51 = v18;
    v47 = *(v4 + 16);
    v56 = *(v4 + 16);
    v52 = v43;
    v53 = v14;
    v48 = *&v41.a;
    v49 = v16;
    v22 = v39[5];
    v23 = v39[6];
    *(v4 + 4) = v39[4];
    *(v4 + 5) = v22;
    v24 = v39[7];
    *(v4 + 6) = v23;
    *(v4 + 7) = v24;
    *(v4 + 16) = v40;
    v25 = v39[3];
    *(v4 + 2) = v39[2];
    *(v4 + 3) = v25;
    v26 = v39[1];
    *v4 = v39[0];
    *(v4 + 1) = v26;
    sub_20CFFB178(&v41, &v27);
    sub_20CEF928C(&v48, &qword_27C81F350);
    v31 = v45;
    v32 = v46;
    v33 = v47;
    v27 = v41;
    v28 = v42;
    v29 = v43;
    v30 = v44;
    sub_20D077000(&v27);
    sub_20CEF928C(&v41, &qword_27C81F350);
    CGAffineTransformMakeScale(&v27, 0.523809524, 0.523809524);
    [v2 setTransform_];
    sub_20CEF928C(&v57, &qword_27C81F350);
    return sub_20CFDAF98(&v34);
  }

  return result;
}

void sub_20D07A608(uint64_t a1)
{
  v1 = a1;
  v22 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CECF940(0, &qword_28111FFF0);
    sub_20CEF7F74(&qword_27C820660, &qword_28111FFF0);
    sub_20D567D58();
    v1 = v17;
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);
    sub_20D5663C8();
    v4 = 0;
  }

  v15 = v3;
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_20D568798() || (sub_20CECF940(0, &qword_28111FFF0), swift_dynamicCast(), v13 = v16, v4 = v9, v5 = v10, !v16))
      {
LABEL_22:
        sub_20CEC80DC();
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_18:
    v14 = [v13 mediaProfile];

    v9 = v4;
    v10 = v5;
    if (v14)
    {
      MEMORY[0x20F31CEE0]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20D567AB8();
      }

      sub_20D567B08();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_20D07A88C(uint64_t a1)
{
  v3 = sub_20D563818();
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_20D568768();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v49 = MEMORY[0x277D84F90];
    sub_20CEF0B08(0, v7 & ~(v7 >> 63), 0);
    v44 = v49;
    if (v43)
    {
      result = sub_20D568708();
    }

    else
    {
      result = sub_20D5686C8();
      v9 = *(a1 + 36);
    }

    v46 = result;
    v47 = v9;
    v48 = v43 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v39 = v7;
      v40 = v42 + 32;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v37 = a1 + 56;
      v38 = v11;
      v35[1] = v1;
      v36 = a1 + 64;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v46;
        v15 = v47;
        v16 = v48;
        v17 = a1;
        sub_20CFB1600(v46, v47, v48, a1);
        v19 = v18;
        v20 = [v18 uniqueIdentifier];
        sub_20D5637E8();

        v21 = v44;
        v49 = v44;
        v23 = *(v44 + 16);
        v22 = *(v44 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_20CEF0B08(v22 > 1, v23 + 1, 1);
          v21 = v49;
        }

        *(v21 + 16) = v23 + 1;
        v24 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v44 = v21;
        result = (*(v42 + 32))(v21 + v24 + *(v42 + 72) * v23, v6, v41);
        if (v43)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          a1 = v17;
          if (sub_20D568728())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820730);
          v12 = sub_20D567D38();
          sub_20D5687C8();
          result = v12(v45, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_20CFAE618(v46, v47, v48);
            return v44;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v17;
          v25 = 1 << *(v17 + 32);
          if (v14 >= v25)
          {
            goto LABEL_38;
          }

          v26 = v14 >> 6;
          v27 = *(v37 + 8 * (v14 >> 6));
          if (((v27 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_40;
          }

          v28 = v27 & (-2 << (v14 & 0x3F));
          if (v28)
          {
            v25 = __clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v36 + 8 * v26);
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                result = sub_20CFAE618(v14, v15, 0);
                v25 = __clz(__rbit64(v32)) + v29;
                goto LABEL_33;
              }
            }

            result = sub_20CFAE618(v14, v15, 0);
          }

LABEL_33:
          v34 = *(v17 + 36);
          v46 = v25;
          v47 = v34;
          v48 = 0;
          v7 = v39;
          if (v10 == v39)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_20D07AC98(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    sub_20D5688F8();
    v4 = a1 + 40;
    do
    {
      sub_20D5663C8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820770);
      swift_dynamicCast();
      sub_20D5688C8();
      sub_20D568908();
      sub_20D568918();
      sub_20D5688D8();
      v4 += 16;
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

uint64_t sub_20D07AD8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v6 = MEMORY[0x277D84F90];
    sub_20D5688F8();
    v4 = a1 + 32;
    do
    {
      sub_20CEF9064(v4, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81DC80);
      swift_dynamicCast();
      sub_20D5688C8();
      sub_20D568908();
      sub_20D568918();
      sub_20D5688D8();
      v4 += 40;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

uint64_t sub_20D07AE80(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_20CEF0BF4(0, v1, 0);
    v4 = a1 + 32;
    v2 = v10;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820718);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820720);
      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_20CEF0BF4((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_20D07AFB4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CECF940(0, &qword_27C81AEC0);
    sub_20CEF7F74(&qword_27C81D290, &qword_27C81AEC0);
    result = sub_20D567D58();
    v1 = v44[4];
    v3 = v44[5];
    v4 = v44[6];
    v5 = v44[7];
    v6 = v44[8];
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);
    result = sub_20D5663C8();
    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  v42 = MEMORY[0x277D84F90];
  v39 = v1;
  v41 = v3;
  while (v1 < 0)
  {
    v16 = sub_20D568798();
    if (!v16 || (v44[10] = v16, sub_20CECF940(0, &qword_27C81AEC0), swift_dynamicCast(), v15 = v44[0], v13 = v5, v14 = v6, !v44[0]))
    {
LABEL_45:
      sub_20CEC80DC();
      return v42;
    }

LABEL_18:
    v17 = [v15 characteristics];
    sub_20CECF940(0, &unk_27C81AE40);
    v18 = sub_20D567A78();

    v19 = v18 >> 62;
    v20 = v18;
    if (v18 >> 62)
    {
      v21 = sub_20D568768();
    }

    else
    {
      v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v42;
    v23 = v42 >> 62;
    if (v42 >> 62)
    {
      result = sub_20D568768();
    }

    else
    {
      result = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v43 = v21;
    v24 = __OFADD__(result, v21);
    v25 = result + v21;
    if (v24)
    {
      goto LABEL_47;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v23)
      {
LABEL_28:
        sub_20D568768();
      }

LABEL_29:
      result = sub_20D568888();
      v22 = result;
      v26 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_30;
    }

    if (v23)
    {
      goto LABEL_28;
    }

    v26 = v42 & 0xFFFFFFFFFFFFFF8;
    if (v25 > *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_29;
    }

LABEL_30:
    v42 = v22;
    v27 = *(v26 + 16);
    v28 = *(v26 + 24);
    if (v19)
    {
      v30 = v26;
      result = sub_20D568768();
      v26 = v30;
      v29 = result;
      if (result)
      {
        goto LABEL_34;
      }

LABEL_8:

      v5 = v13;
      v6 = v14;
      v10 = (v4 + 64) >> 6;
      v3 = v41;
      if (v43 > 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v29 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v29)
      {
        goto LABEL_8;
      }

LABEL_34:
      if (((v28 >> 1) - v27) < v43)
      {
        goto LABEL_49;
      }

      v31 = v26 + 8 * v27 + 32;
      v40 = v26;
      if (v19)
      {
        if (v29 < 1)
        {
          goto LABEL_51;
        }

        sub_20CF7B340();
        v32 = 0;
        v33 = v20;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DA18);
          v34 = sub_20CEFDF58(v44, v32, v33);
          v36 = *v35;
          (v34)(v44, 0);
          *(v31 + 8 * v32++) = v36;
        }

        while (v29 != v32);
      }

      else
      {
        swift_arrayInitWithCopy();
      }

      v5 = v13;
      v6 = v14;
      v1 = v39;
      v10 = (v4 + 64) >> 6;
      v3 = v41;
      if (v43 >= 1)
      {
        v37 = *(v40 + 16);
        v24 = __OFADD__(v37, v43);
        v38 = v37 + v43;
        if (v24)
        {
          goto LABEL_50;
        }

        *(v40 + 16) = v38;
        v5 = v13;
        v6 = v14;
      }
    }
  }

  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_14:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_45;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_45;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

id sub_20D07B44C()
{
  v0 = sub_20D027D34();

  return v0;
}

void sub_20D07B478(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

double sub_20D07B4FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*v2 + 80);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v10 - v8, v2 + *(v6 + 112), v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820650);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void sub_20D07B614(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v5[0] = *a1;
  v6 = v2;
  v7 = v1;
  v3 = v1;
  v4 = v2;
  sub_20D07B6DC(v5);
}

id sub_20D07B65C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(*v1 + 128);
  swift_beginAccess();
  v4 = *(v3 + 16);
  v7 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v7;
  *(a1 + 16) = v4;
  v5 = v4;

  return v7;
}

void sub_20D07B6DC(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = v1 + *(*v1 + 128);
  swift_beginAccess();
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
}

uint64_t sub_20D07B7C4()
{
  sub_20D07EAD4();

  return swift_unknownObjectRetain();
}

uint64_t sub_20D07B7EC(uint64_t a1)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

BOOL sub_20D07B8BC(uint64_t a1)
{
  sub_20D07B4FC(a1, v3);
  v1 = v4 != 0;
  sub_20CEF928C(v3, &qword_27C820658);
  return v1;
}

uint64_t sub_20D07B910()
{
  v1 = *(*v0 + 144);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20D07B960(char a1)
{
  v3 = *(*v1 + 144);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20D07B9CC(void *a1, char a2)
{
  v4 = v2;
  v6 = sub_20CF38494(a1);
  sub_20D07CE14(a2, v6);

  v7 = *(*v2 + 144);
  swift_beginAccess();
  *(v4 + v7) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D5BA040;
  *(inited + 32) = a1;
  v9 = a1;
  v10 = sub_20CEF32E4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v10;
}

uint64_t sub_20D07BAE8(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_20D563818();
  v123 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v112 - v9;
  v11 = sub_20D5642E8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v112 - v16;
  v18 = sub_20CF38494(a1);
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    sub_20D07B4FC(v19, v129);
    v22 = v130;
    if (v130)
    {
      __swift_project_boxed_opaque_existential_1(v129, v130);
      v23 = [v21 actionSet];
      v22 = sub_20D565D48();

      __swift_destroy_boxed_opaque_existential_1(v129);
    }

    else
    {

      sub_20CEF928C(v129, &qword_27C820658);
    }

    return v22 & 1;
  }

  v122 = v10;
  v114 = v14;
  v117 = v17;
  v124 = v7;
  v128[6] = &unk_28251AFC0;
  v24 = swift_dynamicCastObjCProtocolConditional();
  if (!v24)
  {

    goto LABEL_103;
  }

  v25 = v18;
  v112 = v12;
  v113 = v11;
  v116 = v4;
  v125 = v24;
  v126 = v5;
  v26 = [v24 accessories];
  v27 = sub_20CECF940(0, &qword_28111FFF0);
  v28 = sub_20CEF7F74(&qword_27C820660, &qword_28111FFF0);
  v29 = sub_20D567D08();

  v118 = v25;
  v120 = v2;
  v115 = v28;
  if ((v29 & 0xC000000000000001) != 0)
  {
    sub_20D568718();
    sub_20D567D58();
    v29 = v129[0];
    v30 = v129[1];
    v31 = v129[2];
    v32 = v130;
    v33 = v131;
  }

  else
  {
    v32 = 0;
    v34 = -1 << *(v29 + 32);
    v30 = (v29 + 56);
    v31 = ~v34;
    v35 = -v34;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v33 = v36 & *(v29 + 56);
  }

  v119 = v31;
  v37 = (v31 + 64) >> 6;
  while ((v29 & 0x8000000000000000) == 0)
  {
    v38 = v32;
    v39 = v33;
    v40 = v32;
    if (!v33)
    {
      while (1)
      {
        v40 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v40 >= v37)
        {
          goto LABEL_29;
        }

        v39 = v30[v40];
        ++v38;
        if (v39)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      v57 = sub_20D568768();
      v121 = v27;
      if (v57)
      {
        goto LABEL_31;
      }

      goto LABEL_47;
    }

LABEL_20:
    v41 = (v39 - 1) & v39;
    v42 = *(*(v29 + 48) + ((v40 << 9) | (8 * __clz(__rbit64(v39)))));
    if (!v42)
    {
      goto LABEL_29;
    }

LABEL_24:
    if (sub_20D568208())
    {
      v121 = sub_20D567E38();
      if ((v44 & 1) == 0)
      {
        v45 = [v42 home];
        if (v45)
        {
          v46 = v45;
          v47 = [v45 uniqueIdentifier];
          sub_20D5637E8();

          v48 = v117;
          sub_20D5642D8();
          v49 = v112;
          (v112[2])(v114, v48, v113);
          v50 = objc_allocWithZone(sub_20D565E38());
          v51 = v42;
          v52 = sub_20D565E18();
          v53 = sub_20D565BB8();
          if ((v53 & 0xC000000000000001) != 0)
          {
            v54 = sub_20D568768();

            sub_20CEC80DC();

            v49[1](v117, v113);
          }

          else
          {
            v49[1](v117, v113);

            sub_20CEC80DC();
            v54 = *(v53 + 16);
          }

          v22 = v54 != 0;
          return v22 & 1;
        }
      }
    }

    v32 = v40;
    v33 = v41;
  }

  v43 = sub_20D568798();
  if (v43)
  {
    v127 = v43;
    swift_dynamicCast();
    v42 = v128[0];
    v40 = v32;
    v41 = v33;
    if (v128[0])
    {
      goto LABEL_24;
    }
  }

LABEL_29:
  sub_20CEC80DC();
  v55 = [v125 services];
  sub_20CECF940(0, &qword_27C81AEC0);
  sub_20CEF7F74(&qword_27C81D290, &qword_27C81AEC0);
  v56 = sub_20D567D08();

  v30 = 0;
  v29 = sub_20D07AFB4(v56);

  if (v29 >> 62)
  {
    goto LABEL_46;
  }

  v57 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v121 = v27;
  if (v57)
  {
LABEL_31:
    v58 = 0;
    v27 = v120;
    while (1)
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v59 = MEMORY[0x20F31DD20](v58, v29);
      }

      else
      {
        if (v58 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v59 = *(v29 + 8 * v58 + 32);
      }

      v60 = v59;
      v61 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        goto LABEL_44;
      }

      v128[0] = v59;
      v62 = sub_20D07C950();

      if (v62)
      {
        break;
      }

      ++v58;
      if (v61 == v57)
      {
        goto LABEL_47;
      }
    }

    v22 = 1;
    return v22 & 1;
  }

LABEL_47:

  v63 = [v125 accessories];
  v64 = sub_20D567D08();

  sub_20D07A608(v64);
  v117 = v65;

  v66 = sub_20D565B48();
  v67 = &selRef_isUserScrubbing;
  if (!v66)
  {
    goto LABEL_51;
  }

  v68 = v66;
  v69 = [v66 mediaProfiles];

  v70 = sub_20D567D08();
  v71 = *(v70 + 16);
  if (v71)
  {
    while (1)
    {
      v72 = sub_20CF4A7A8(v71, 0);
      v73 = sub_20CF4FF18(v128, (v72 + 4), v71, v70);
      sub_20CEC80DC();
      if (v73 == v71)
      {
        break;
      }

      __break(1u);
LABEL_51:
      v70 = MEMORY[0x277D84FA0];
      v71 = *(MEMORY[0x277D84FA0] + 16);
      if (!v71)
      {
        goto LABEL_52;
      }
    }
  }

  else
  {
LABEL_52:

    v72 = MEMORY[0x277D84F90];
  }

  v74 = sub_20D07AD8C(v72);

  if (!(v74 >> 62))
  {
    v125 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v125)
    {
      goto LABEL_55;
    }

LABEL_84:
    v76 = MEMORY[0x277D84F90];
LABEL_85:

    v91 = sub_20CEF3148(v76);

    if (v117 >> 62)
    {
LABEL_108:
      v92 = sub_20D568768();
    }

    else
    {
      v92 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v93 = v124;
    if (v92)
    {
      v112 = v30;
      v94 = 0;
      v116 = v117 & 0xC000000000000001;
      v115 = v117 & 0xFFFFFFFFFFFFFF8;
      v114 = v117 + 32;
      v125 = (v91 + 56);
      v121 = v123 + 16;
      v30 = (v123 + 8);
      v113 = v92;
      while (1)
      {
        if (v116)
        {
          v95 = MEMORY[0x20F31DD20](v94, v117);
        }

        else
        {
          if (v94 >= *(v115 + 16))
          {
            goto LABEL_107;
          }

          v95 = *&v114[8 * v94];
        }

        v96 = v95;
        v89 = __OFADD__(v94, 1);
        v97 = v94 + 1;
        if (v89)
        {
          __break(1u);
LABEL_107:
          __break(1u);
          goto LABEL_108;
        }

        v98 = [v95 uniqueIdentifier];
        sub_20D5637E8();

        v99 = *(v91 + 16);
        v119 = v97;
        v120 = v96;
        if (v99)
        {
          sub_20D07EB24(&qword_27C81C0E0);
          v100 = sub_20D5677B8();
          v101 = -1 << *(v91 + 32);
          v102 = v100 & ~v101;
          if ((*&v125[(v102 >> 3) & 0xFFFFFFFFFFFFFF8] >> v102))
          {
            break;
          }
        }

LABEL_89:

        (*v30)(v93, v126);
        v94 = v119;
        if (v119 == v113)
        {
          goto LABEL_102;
        }
      }

      v103 = ~v101;
      v104 = *(v123 + 72);
      v105 = *(v123 + 16);
      while (1)
      {
        v106 = v91;
        v107 = *(v91 + 48) + v104 * v102;
        v108 = v122;
        v109 = v126;
        v105(v122, v107, v126);
        sub_20D07EB24(qword_27C820680);
        v110 = sub_20D5677E8();
        v111 = *v30;
        (*v30)(v108, v109);
        if (v110)
        {
          break;
        }

        v102 = (v102 + 1) & v103;
        v93 = v124;
        v91 = v106;
        if (((*&v125[(v102 >> 3) & 0xFFFFFFFFFFFFFF8] >> v102) & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      v111(v124, v126);
      v22 = 1;
      return v22 & 1;
    }

LABEL_102:

LABEL_103:
    v22 = 0;
    return v22 & 1;
  }

  while (2)
  {
    v125 = sub_20D568768();
    if (!v125)
    {
      goto LABEL_84;
    }

LABEL_55:
    v75 = 0;
    v120 = (v74 & 0xFFFFFFFFFFFFFF8);
    v121 = v74 & 0xC000000000000001;
    v76 = MEMORY[0x277D84F90];
    v119 = v74;
LABEL_58:
    if (v121)
    {
      v77 = MEMORY[0x20F31DD20](v75, v74);
      v78 = (v75 + 1);
      if (__OFADD__(v75, 1))
      {
        goto LABEL_77;
      }
    }

    else
    {
      if (v75 >= *(v120 + 2))
      {
        goto LABEL_78;
      }

      v77 = *(v74 + 8 * v75 + 32);
      swift_unknownObjectRetain();
      v78 = (v75 + 1);
      if (__OFADD__(v75, 1))
      {
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        continue;
      }
    }

    break;
  }

  v79 = v67;
  v80 = [v77 v67[499]];
  v128[0] = 0;
  v74 = 0x277CD1BD8uLL;
  sub_20CECF940(0, &qword_27C81D130);
  sub_20CEF7F74(&unk_27C820670, &qword_27C81D130);
  result = sub_20D567CE8();
  v82 = v128[0];
  if (v128[0])
  {

    v83 = sub_20D07A88C(v82);

    swift_unknownObjectRelease();
    v84 = *(v83 + 16);
    v85 = v76[2];
    v67 = (v85 + v84);
    if (__OFADD__(v85, v84))
    {
      goto LABEL_79;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v67 <= v76[3] >> 1)
    {
      if (!*(v83 + 16))
      {
LABEL_56:

        v67 = v79;
        if (v84)
        {
          goto LABEL_80;
        }

LABEL_57:
        ++v75;
        v74 = v119;
        if (v78 == v125)
        {
          goto LABEL_85;
        }

        goto LABEL_58;
      }
    }

    else
    {
      if (v85 <= v67)
      {
        v87 = v85 + v84;
      }

      else
      {
        v87 = v85;
      }

      v76 = sub_20CEE8338(isUniquelyReferenced_nonNull_native, v87, 1, v76);
      if (!*(v83 + 16))
      {
        goto LABEL_56;
      }
    }

    if ((v76[3] >> 1) - v76[2] < v84)
    {
      goto LABEL_81;
    }

    swift_arrayInitWithCopy();

    v67 = v79;
    if (v84)
    {
      v88 = v76[2];
      v89 = __OFADD__(v88, v84);
      v90 = v88 + v84;
      if (v89)
      {
        goto LABEL_82;
      }

      v76[2] = v90;
    }

    goto LABEL_57;
  }

  __break(1u);
  return result;
}

BOOL sub_20D07C950()
{
  v0 = sub_20D565BA8();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

uint64_t sub_20D07C9D8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (sub_20D07BAE8(a1))
  {
    v4 = MEMORY[0x277D13250];
LABEL_5:
    v6 = *v4;
    goto LABEL_6;
  }

  v5 = sub_20D07CA8C(a1);
  if (v5)
  {
    *a2 = v5;
    v4 = MEMORY[0x277D13248];
    goto LABEL_5;
  }

  v6 = *MEMORY[0x277D13250];
LABEL_6:
  v7 = sub_20D565B18();
  v8 = *(*(v7 - 8) + 104);

  return v8(a2, v6, v7);
}

id sub_20D07CA8C(void *a1)
{
  v2 = v1;
  v3 = sub_20CF38494(a1);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v3 = v3;
  if (![v5 allowsAppleMusicAccount] || (objc_msgSend(v5, sel_supportsMediaAction) & 1) != 0 || (sub_20D07B65C(v13), v6 = v14, v7 = v15, LOBYTE(v12) = v13[0], v8 = sub_20D07CC58(objc_msgSend(v5, sel_mediaAccessoryItemType, v12, v14, v15)), v6, v7, !v8))
  {
    v9 = *(v2 + *(*v2 + 120));
    if (![v9 hf_hasEnabledResident] || (objc_msgSend(v9, sel_hf_enabledResidentsSupportsMediaActions) & 1) != 0)
    {

LABEL_8:
      return 0;
    }

    if ([v5 mediaAccessoryItemType] == 7)
    {
      swift_beginAccess();
      v11 = sub_20D07CD7C();
    }

    else
    {
      swift_beginAccess();
      v11 = sub_20D07CDC8();
    }

    v8 = v11;
    swift_endAccess();
  }

  return v8;
}

id sub_20D07CC58(uint64_t a1)
{
  sub_20D07E468(a1, *v1);
  if (!v2)
  {
    return 0;
  }

  v3 = sub_20D5677F8();
  v4 = HULocalizedString(v3);

  if (!v4)
  {
    sub_20D567838();
    v4 = sub_20D5677F8();
  }

  v5 = sub_20D5677F8();

  v6 = HFLocalizedString();

  if (!v6)
  {
    sub_20D567838();
    v6 = sub_20D5677F8();
  }

  v7 = [objc_opt_self() hf:84 errorWithCode:v4 title:v6 description:?];

  return v7;
}

id sub_20D07CD7C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = sub_20D07E32C();
    *(v0 + 16) = v3;
    v2 = v3;
    v1 = 0;
  }

  v4 = v1;
  return v2;
}

id sub_20D07CDC8()
{
  v1 = *(v0 + 8);
  if (v1)
  {
    v2 = *(v0 + 8);
  }

  else
  {
    v3 = sub_20D07E1F0();
    *(v0 + 8) = v3;
    v2 = v3;
    v1 = 0;
  }

  v4 = v1;
  return v2;
}

void sub_20D07CE14(char a1, void *a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v11 = a2;
    sub_20D07DF74(a1 & 1, v5);
  }

  else
  {
    if (a1)
    {
      v6 = swift_dynamicCastObjCProtocolConditional();
      if (!v6)
      {
        return;
      }

      v7 = v6;
      v8 = a2;
      sub_20D07DA98(v7);
    }

    else
    {
      v9 = swift_dynamicCastObjCProtocolConditional();
      if (!v9)
      {
        return;
      }

      v10 = v9;
      v8 = a2;
      sub_20D07CF18(v10);
    }
  }
}

uint64_t sub_20D07CF18(void *a1)
{
  v2 = [a1 accessoryRepresentableObject];
  swift_getObjectType();
  v3 = sub_20D568218();
  swift_unknownObjectRelease();
  sub_20D07D550(v3);

  v4 = [a1 accessoryRepresentableObject];
  v5 = swift_dynamicCastObjCProtocolConditional();
  if (v5)
  {
    [v5 mediaProfiles];
    sub_20CECF940(0, &qword_27C81D130);
    sub_20CEF7F74(&unk_27C820670, &qword_27C81D130);
    result = sub_20D567CE8();
    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    v7 = [a1 accessoryRepresentableObject];
    sub_20D565E38();
    if (swift_dynamicCastClass())
    {
      sub_20D07D804();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_20D07D0A4(uint64_t a1)
{
  v8 = sub_20D565B48();
  if (v8)
  {
    v2 = [v8 mediaProfiles];
    v3 = sub_20D567D08();

    sub_20D5663C8();
    sub_20D07E820(v3, a1);

    v4 = sub_20D567CD8();

    [v8 setMediaProfiles_];

    v5 = [v8 mediaProfiles];
    v6 = sub_20D567D08();

    v7 = *(v6 + 16);

    if (v7)
    {
      sub_20D565B98();
    }

    else
    {
      sub_20D565B88();
    }
  }
}

void sub_20D07D278(uint64_t a1, uint64_t a2)
{
  sub_20CEF9064(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81DC80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v18 = v20;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CECF940(0, &qword_27C81D130);
    sub_20CEF7F74(&unk_27C820670, &qword_27C81D130);
    sub_20D567D58();
    a2 = v19[0];
    v17 = v19[1];
    v3 = v19[2];
    v4 = v19[3];
    v5 = v19[4];
  }

  else
  {
    v6 = -1 << *(a2 + 32);
    v17 = a2 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a2 + 56);
    sub_20D5663C8();
    v4 = 0;
  }

  v16 = v3;
  while (a2 < 0)
  {
    if (!sub_20D568798() || (sub_20CECF940(0, &qword_27C81D130), swift_dynamicCast(), v12 = v20, v11 = v5, !v20))
    {
LABEL_20:
      swift_unknownObjectRelease();
      sub_20CEC80DC();
      return;
    }

LABEL_19:
    v5 = v11;
    v13 = a2;
    v14 = [v18 mediaProfiles];
    v15 = [v14 containsObject_];

    a2 = v13;
    if (v15)
    {
      goto LABEL_20;
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_15:
    v11 = (v10 - 1) & v10;
    v12 = *(*(a2 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v12)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v10 = *(v17 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_20D07D550(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CECF940(0, &unk_27C81AE40);
    sub_20CEF7F74(&qword_27C81FC10, &unk_27C81AE40);
    sub_20D567D58();
    v1 = v16;
    v2 = v17;
    v3 = v18;
    v4 = v19;
    v5 = v20;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);
    sub_20D5663C8();
    v4 = 0;
  }

  v9 = (v3 + 64) >> 6;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_20CEC80DC();
      return;
    }

    while (1)
    {
      v15 = v14;
      sub_20D07D75C();

      v4 = v12;
      v5 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_20D568798())
      {
        sub_20CECF940(0, &unk_27C81AE40);
        swift_dynamicCast();
        v14 = v15;
        v12 = v4;
        v13 = v5;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      goto LABEL_18;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_20D07D75C()
{
  v0 = sub_20D565BA8();
  if (v0)
  {
    v1 = v0;
    sub_20D565B88();
  }
}

void sub_20D07D804()
{
  v0 = sub_20D565BB8();
  if ((v0 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20D568718();
    sub_20CECF940(0, &qword_27C81AE50);
    sub_20CEF7F74(&qword_27C8217F0, &qword_27C81AE50);
    sub_20D567D58();
    v2 = v15;
    v1 = v16;
    v3 = v17;
    v4 = v18;
    v5 = v19;
  }

  else
  {
    v6 = -1 << *(v0 + 32);
    v1 = v0 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(v0 + 56);
    v4 = 0;
    v2 = sub_20D5663C8();
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v2 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_20CEC80DC();

      return;
    }

    while (1)
    {
      sub_20D565B88();

      v4 = v11;
      v5 = v12;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_20D568798())
      {
        sub_20CECF940(0, &qword_27C81AE50);
        swift_dynamicCast();
        v13 = v14;
        v11 = v4;
        v12 = v5;
        if (v14)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = *(v1 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_20D07DA98(void *a1)
{
  v2 = *v1;
  v3 = [a1 currentStateActionBuildersForHome_];
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = *(v2 + 80);
  v5[3] = *(v2 + 88);
  v5[4] = v4;
  v8[4] = sub_20D07EFC8;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_20CF13714;
  v8[3] = &block_descriptor_37;
  v6 = _Block_copy(v8);

  v7 = [v3 addSuccessBlock_];
  _Block_release(v6);
}

void sub_20D07DBFC()
{
  sub_20CECF940(0, &qword_27C81AE50);
  sub_20CEF7F74(&qword_27C8217F0, &qword_27C81AE50);
  sub_20D567CF8();
}

uint64_t sub_20D07DE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v4 + 16))(v6, result + *(*result + 112), a3);

    sub_20D565B68();
    return (*(v4 + 8))(v6, a3);
  }

  return result;
}

uint64_t sub_20D07DF74(uint64_t a1, void *a2)
{
  sub_20D07B4FC(a1, v5);
  if (!v6)
  {
    return sub_20CEF928C(v5, &qword_27C820658);
  }

  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = [a2 actionSet];
  sub_20D565D58();

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

id *ActionSelectionController.deinit()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 14));

  v2 = v0 + *(*v0 + 16);
  v3 = *(v2 + 2);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t ActionSelectionController.__deallocating_deinit()
{
  ActionSelectionController.deinit();

  return swift_deallocClassInstance();
}

void sub_20D07E1C4()
{
  byte_27C8381F0 = 0;
  qword_27C8381F8 = 0;
  unk_27C838200 = 0;
}

void sub_20D07E1D8()
{
  qword_27C838210 = 0;
  unk_27C838218 = 0;
  byte_27C838208 = 1;
}

id sub_20D07E1F0()
{
  v0 = sub_20D5677F8();
  v1 = HULocalizedString(v0);

  if (!v1)
  {
    sub_20D567838();
    v1 = sub_20D5677F8();
  }

  v2 = sub_20D5677F8();

  v3 = HULocalizedString(v2);

  if (!v3)
  {
    sub_20D567838();
    v3 = sub_20D5677F8();
  }

  v4 = [objc_opt_self() hf:84 errorWithCode:v1 title:v3 description:?];

  return v4;
}

id sub_20D07E32C()
{
  v0 = sub_20D5677F8();
  v1 = HULocalizedString(v0);

  if (!v1)
  {
    sub_20D567838();
    v1 = sub_20D5677F8();
  }

  v2 = sub_20D5677F8();

  v3 = HULocalizedString(v2);

  if (!v3)
  {
    sub_20D567838();
    v3 = sub_20D5677F8();
  }

  v4 = [objc_opt_self() hf:84 errorWithCode:v1 title:v3 description:?];

  return v4;
}

unint64_t sub_20D07E468(uint64_t a1, char a2)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        return 0xD000000000000034;
      }

      else
      {
        return 0xD000000000000032;
      }
    }

    if (a1 != 2)
    {
      goto LABEL_13;
    }

LABEL_11:
    if (a2)
    {
      return 0xD000000000000034;
    }

    else
    {
      return 0xD000000000000032;
    }
  }

  if (a1 == 3)
  {
    goto LABEL_11;
  }

  if (a1 == 4)
  {
    if (a2)
    {
      return 0xD00000000000003ELL;
    }

    else
    {
      return 0xD00000000000003CLL;
    }
  }

LABEL_13:
  v4 = sub_20D567EA8();
  sub_20CECF940(0, &qword_28111FAB8);
  v5 = sub_20D568518();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_20CEB6000, v5, v4, "Error: got media accessory item type %ld", v6, 0xCu);
    MEMORY[0x20F31FC70](v6, -1, -1);
  }

  return 0;
}

void *sub_20D07E61C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_20D5663C8();
    v8 = sub_20D07E6B8(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_20D07E6B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = result;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    sub_20CEF9064(*(a3 + 48) + 40 * v16, v22);
    sub_20D07D278(v22, a4);
    v18 = v17;
    result = sub_20CEF90C0(v22);
    if (v4)
    {
      return result;
    }

    if (v18)
    {
      *(v21 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_20D0C1108(v21, a2, v23, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20D07E820(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = sub_20D5663C8();
  if (v7 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v23 = v8;
    v25 = &v23;
    MEMORY[0x28223BE20](v10);
    v24 = &v23 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v24, v9);
    v26 = 0;
    v11 = 0;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v9 = v13 & *(a1 + 56);
    v8 = (v12 + 63) >> 6;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v17 = v14 | (v11 << 6);
      sub_20CEF9064(*(a1 + 48) + 40 * v17, v27);
      sub_20D07D278(v27, a2);
      v19 = v18;
      sub_20CEF90C0(v27);
      if (v3)
      {

        swift_willThrow();

        return v8;
      }

      if (v19)
      {
        *&v24[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v26++, 1))
        {
          __break(1u);
LABEL_17:
          v8 = sub_20D0C1108(v24, v23, v26, a1);

          return v8;
        }
      }
    }

    v15 = v11;
    while (1)
    {
      v11 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_17;
      }

      v16 = *(a1 + 56 + 8 * v11);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  sub_20D5663C8();
  v8 = sub_20D07E61C(v22, v8, a1, a2);

  MEMORY[0x20F31FC70](v22, -1, -1);

  return v8;
}

uint64_t sub_20D07EAD4()
{
  v1 = *(*v0 + 136);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20D07EB24(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_20D563818();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20D07EB68()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_20D07EEA0(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_20D07EEFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

unint64_t sub_20D07EF74()
{
  result = qword_27C820708;
  if (!qword_27C820708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820708);
  }

  return result;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20D07EFEC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  v2[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C180);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v3 = sub_20D563818();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = *(type metadata accessor for ControlCenterModuleConfiguration(0) - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D07F178, 0, 0);
}

uint64_t sub_20D07F178()
{
  v1 = objc_opt_self();
  v0[13] = v1;
  v0[14] = [v1 sharedDispatcher];
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_20D07F234;

  return MEMORY[0x28216DC50]();
}

uint64_t sub_20D07F234(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {

    v4 = sub_20D07F90C;
  }

  else
  {
    v4 = sub_20D07F35C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20D07F35C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);

  v3 = [v2 sharedDispatcher];
  v45 = [v3 home];

  v4 = v1 >> 62;
  if (v1 >> 62)
  {
    if (sub_20D568768())
    {
      goto LABEL_3;
    }

LABEL_28:

    sub_20D081AB4();
    swift_allocError();
    *v40 = 1;
    *(v40 + 8) = 2;
    swift_willThrow();

    v39 = *(v0 + 8);
    goto LABEL_29;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_28;
  }

LABEL_3:
  v5 = *(v0 + 24);
  v6 = *(v5 + 16);
  v44 = v6;
  if (v6)
  {
    v42 = v1 >> 62;
    v43 = v1;
    v7 = *(v0 + 88);
    v8 = *(v0 + 72);
    v9 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v10 = (v8 + 32);
    v48 = (v8 + 56);
    v11 = MEMORY[0x277D84F90];
    v12 = (v8 + 48);
    v46 = v8;
    v47 = *(v7 + 72);
    do
    {
      v13 = *(v0 + 96);
      v14 = *(v0 + 40);
      sub_20D081B08(v9, v13, type metadata accessor for ControlCenterModuleConfiguration);
      sub_20D081B08(v13, v14, type metadata accessor for ControlCenterModuleConfiguration.Content);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v16 = *(v0 + 64);
        if (EnumCaseMultiPayload == 1)
        {
          v18 = *(v0 + 40);
          v17 = *(v0 + 48);
          sub_20D081B70(*(v0 + 96), type metadata accessor for ControlCenterModuleConfiguration);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50);

          (*v10)(v17, v18, v16);
          (*v48)(v17, 0, 1, v16);
        }

        else
        {
          v27 = *(v0 + 40);
          v26 = *(v0 + 48);
          sub_20D081B70(*(v0 + 96), type metadata accessor for ControlCenterModuleConfiguration);
          (*v48)(v26, 1, 1, v16);
          sub_20D081B70(v27, type metadata accessor for ControlCenterModuleConfiguration.Content);
        }
      }

      else
      {
        sub_20D081B70(*(v0 + 40), type metadata accessor for ControlCenterModuleConfiguration.Content);
        v19 = *(v0 + 96);
        v20 = *(v0 + 64);
        v21 = *(v0 + 48);
        if (v45)
        {
          v22 = [v45 uniqueIdentifier];
          sub_20D5637E8();

          sub_20D081B70(v19, type metadata accessor for ControlCenterModuleConfiguration);
          v23 = *v48;
          v24 = v21;
          v25 = 0;
        }

        else
        {
          sub_20D081B70(v19, type metadata accessor for ControlCenterModuleConfiguration);
          v23 = *v48;
          v24 = v21;
          v25 = 1;
        }

        v23(v24, v25, 1, v20);
      }

      v29 = *(v0 + 56);
      v28 = *(v0 + 64);
      sub_20CF07438(*(v0 + 48), v29);
      if ((*v12)(v29, 1, v28) == 1)
      {
        sub_20CEF928C(*(v0 + 56), &qword_27C81C180);
      }

      else
      {
        v30 = *v10;
        (*v10)(*(v0 + 80), *(v0 + 56), *(v0 + 64));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_20CEE8338(0, *(v11 + 2) + 1, 1, v11);
        }

        v32 = *(v11 + 2);
        v31 = *(v11 + 3);
        if (v32 >= v31 >> 1)
        {
          v11 = sub_20CEE8338(v31 > 1, v32 + 1, 1, v11);
        }

        v33 = *(v0 + 80);
        v34 = *(v0 + 64);
        *(v11 + 2) = v32 + 1;
        v30(&v11[((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v32], v33, v34);
      }

      v9 += v47;
      --v6;
    }

    while (v6);

    v4 = v42;
    v1 = v43;
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v35 = sub_20CEF3148(v11);

  v36 = *(v35 + 16);

  if (v4)
  {
    v37 = sub_20D568768();
  }

  else
  {
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = *(v0 + 16);

  *v38 = v44;
  *(v38 + 8) = v36;
  *(v38 + 16) = v36 / v37;

  v39 = *(v0 + 8);
LABEL_29:

  return v39();
}

uint64_t sub_20D07F90C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20D07F9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a2;
  v7 = type metadata accessor for ControlCenterModuleConfiguration.ElementID(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - v12;
  v14 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = *a3;
  v66 = *(a3 + 8);
  v17 = *(a3 + 9);
  v61 = *(a3 + 10);
  v62 = v17;
  v18 = *(a3 + 11);
  v59 = *(a3 + 12);
  v60 = v18;
  v58 = *(a3 + 13);
  v19 = *(a3 + 14);
  v65 = 1;
  v64 = a1;
  sub_20D081B08(a1, v16, type metadata accessor for ControlCenterModuleConfiguration.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v56 = v19;
    v28 = *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50) + 48));
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = *(v8 + 80);
      v55 = v28;
      v31 = v28 + ((v30 + 32) & ~v30);
      v32 = *(v8 + 72);
      v33 = 0.0;
      do
      {
        sub_20D081B08(v31, v13, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
        sub_20CEFF99C(v13, v10);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v34 = 0.0;
        }

        else
        {
          v34 = 1.0;
        }

        sub_20D081B70(v10, type metadata accessor for ControlCenterModuleConfiguration.ElementID);
        v33 = v33 + v34;
        v31 += v32;
        --v29;
      }

      while (v29);
      v35 = *(v55 + 16);
    }

    else
    {
      v35 = 0.0;
      v33 = 0.0;
    }

    v65 = 0;
    v26 = v33 / v35;
    v41 = sub_20D563818();
    (*(*(v41 - 8) + 8))(v16, v41);
    v25 = 1;
    v27 = 3;
    v24 = v64;
    goto LABEL_17;
  }

  if (!EnumCaseMultiPayload)
  {
    v56 = v19;
    v21 = *v16;
    v22 = sub_20CEF82A0(&unk_2823CE688);
    v23 = sub_20CEE77F8(v22, v21);

    v24 = v64;
    if (v23)
    {

      v25 = 0;
      v26 = 0.0;
      v27 = 2;
    }

    else
    {
      v39 = sub_20CEF82A0(&unk_2823CE6B0);
      v40 = sub_20CEE77F8(v39, v21);

      if (v40)
      {

        v25 = 0;
        v26 = 0.0;
        v27 = 1;
      }

      else
      {
        v51 = sub_20CEF82A0(&unk_2823CE6D8);
        v52 = sub_20CEE77F8(v51, v21);

        if ((v52 & 1) == 0)
        {
          sub_20D081AB4();
          swift_allocError();
          *v53 = v21;
          *(v53 + 8) = 0;
LABEL_23:
          swift_willThrow();
          v37 = type metadata accessor for ControlCenterModuleConfiguration;
          v38 = v24;
          return sub_20D081B70(v38, v37);
        }

        v27 = 0;
        v25 = 0;
        v26 = 0.0;
      }
    }

LABEL_17:
    v42 = *(v24 + *(type metadata accessor for ControlCenterModuleConfiguration(0) + 20));
    v43 = v63;
    if (!v63)
    {
      v44 = 1;
      goto LABEL_21;
    }

    if (v63 == 1)
    {
      v44 = 0;
LABEL_21:
      result = sub_20D081B70(v24, type metadata accessor for ControlCenterModuleConfiguration);
      v46 = v65;
      *a4 = v25;
      *(a4 + 1) = v44;
      v47 = v57;
      *(a4 + 8) = v42;
      *(a4 + 16) = v47;
      *(a4 + 24) = v27;
      *(a4 + 32) = v26;
      *(a4 + 40) = v46;
      *(a4 + 41) = v66;
      v48 = v61;
      *(a4 + 42) = v62;
      *(a4 + 43) = v48;
      v49 = v59;
      *(a4 + 44) = v60;
      *(a4 + 45) = v49;
      *(a4 + 46) = v58;
      *(a4 + 47) = v56;
      return result;
    }

    sub_20D081AB4();
    swift_allocError();
    *v50 = v43;
    *(v50 + 8) = 1;
    goto LABEL_23;
  }

  sub_20D081AB4();
  swift_allocError();
  *v36 = 0;
  *(v36 + 8) = 2;
  swift_willThrow();
  sub_20D081B70(v64, type metadata accessor for ControlCenterModuleConfiguration);
  v37 = type metadata accessor for ControlCenterModuleConfiguration.Content;
  v38 = v16;
  return sub_20D081B70(v38, v37);
}

uint64_t sub_20D08008C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v41 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  MEMORY[0x28223BE20](v41);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8207C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v36 - v6;
  v8 = sub_20D568988();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ControlCenterModuleConfiguration(0);
  MEMORY[0x28223BE20](v39);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D081B08(a1, v13, type metadata accessor for ControlCenterModuleConfiguration);
  v14 = type metadata accessor for ControlCenterAnalytics.TileModuleAppearEvent.Interval();
  v38 = *(a1 + v14[5]);
  sub_20D568968();
  v15 = sub_20D568978();
  v36[0] = v16;
  v36[1] = v15;
  (*(v9 + 8))(v11, v8);
  v37 = *(a1 + v14[8]);
  v17 = v14[6];
  v18 = sub_20D5637A8();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v7, a1 + v17, v18);
  v20 = *(v19 + 56);
  v21 = v7;
  v20(v7, 0, 1, v18);
  v22 = *(type metadata accessor for ControlCenterAnalytics.TileModuleAppearEvent(0) + 36);
  v23 = v40;
  v20((v40 + v22), 1, 1, v18);
  sub_20D081B08(v13, v4, type metadata accessor for ControlCenterModuleConfiguration.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_20D081AB4();
      swift_allocError();
      *v29 = 0;
      *(v29 + 8) = 2;
      swift_willThrow();
      sub_20CEF928C(v7, &unk_27C8207C0);
      sub_20D081B70(v13, type metadata accessor for ControlCenterModuleConfiguration);
      v30 = type metadata accessor for ControlCenterModuleConfiguration.Content;
      v31 = v4;
      goto LABEL_12;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50);

    v25 = sub_20D563818();
    (*(*(v25 - 8) + 8))(v4, v25);
    v26 = 1;
  }

  else
  {
    sub_20D081B70(v4, type metadata accessor for ControlCenterModuleConfiguration.Content);
    v26 = 0;
  }

  *v23 = v26;
  v27 = v38;
  *(v23 + 8) = *&v13[*(v39 + 20)];
  if (!v27)
  {
    v28 = 1;
    goto LABEL_10;
  }

  if (v27 == 1)
  {
    v28 = 0;
LABEL_10:
    *(v23 + 1) = v28;
    sub_20D568DE8();
    v33 = v32;
    sub_20D081B70(v13, type metadata accessor for ControlCenterModuleConfiguration);
    *(v23 + 16) = v33;
    *(v23 + 24) = v37;
    return sub_20CFAF29C(v21, v23 + v22);
  }

  sub_20D081AB4();
  swift_allocError();
  *v35 = v27;
  *(v35 + 8) = 1;
  swift_willThrow();
  sub_20CEF928C(v21, &unk_27C8207C0);
  v30 = type metadata accessor for ControlCenterModuleConfiguration;
  v31 = v13;
LABEL_12:
  sub_20D081B70(v31, v30);
  return sub_20CEF928C(v23 + v22, &unk_27C8207C0);
}

Swift::Void __swiftcall ControlCenterAnalytics.TileModuleAppearEvent.Interval.addInteraction(predictionScore:)(Swift::Double_optional predictionScore)
{
  v3 = v1;
  v4 = *&predictionScore.is_nil;
  v5 = type metadata accessor for ControlCenterAnalytics.TileModuleAppearEvent.Interval();
  v6 = v5[8];
  v7 = *(v2 + v6);
  v8 = __CFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  *(v2 + v6) = v9;
  if (v3)
  {
    return;
  }

  v10 = v5[9];
  v11 = *(v2 + v10);
  v8 = __CFADD__(v11, 1);
  v12 = v11 + 1;
  if (v8)
  {
LABEL_9:
    __break(1u);
    return;
  }

  *(v2 + v10) = v12;
  v13 = v2 + v5[10];
  if ((*(v13 + 8) & 1) == 0)
  {
    v4 = *v13 + (v4 - *v13) / v12;
  }

  *v13 = v4;
  *(v13 + 8) = 0;
}

uint64_t type metadata accessor for ControlCenterAnalytics.TileModuleAppearEvent.Interval()
{
  result = qword_27C8207A0;
  if (!qword_27C8207A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ControlCenterAnalytics.TileModuleAppearEvent.Interval.hash(into:)(uint64_t a1)
{
  ControlCenterModuleConfiguration.Content.hash(into:)(a1);
  v2 = type metadata accessor for ControlCenterModuleConfiguration(0);
  MEMORY[0x20F31E200](*(v1 + *(v2 + 20)));
  v3 = *(v1 + *(v2 + 24));
  sub_20D568D68();
  if (v3 != 3)
  {
    MEMORY[0x20F31E200](v3);
  }

  v4 = type metadata accessor for ControlCenterAnalytics.TileModuleAppearEvent.Interval();
  MEMORY[0x20F31E200](*(v1 + v4[5]));
  sub_20D5637A8();
  sub_20D081874(&qword_27C820780, MEMORY[0x277CC9578]);
  sub_20D5677C8();
  sub_20D568988();
  sub_20D081874(&qword_27C820788, MEMORY[0x277D858F8]);
  sub_20D5677C8();
  MEMORY[0x20F31E200](*(v1 + v4[8]));
  MEMORY[0x20F31E200](*(v1 + v4[9]));
  v5 = (v1 + v4[10]);
  if (*(v5 + 8) == 1)
  {
    return sub_20D568D68();
  }

  v7 = *v5;
  sub_20D568D68();
  if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return MEMORY[0x20F31E230](v8);
}

uint64_t ControlCenterAnalytics.TileModuleAppearEvent.Interval.hashValue.getter()
{
  sub_20D568D48();
  ControlCenterAnalytics.TileModuleAppearEvent.Interval.hash(into:)(v1);
  return sub_20D568D98();
}

uint64_t sub_20D080878()
{
  sub_20D568D48();
  ControlCenterAnalytics.TileModuleAppearEvent.Interval.hash(into:)(v1);
  return sub_20D568D98();
}

uint64_t sub_20D0808BC()
{
  sub_20D568D48();
  ControlCenterAnalytics.TileModuleAppearEvent.Interval.hash(into:)(v1);
  return sub_20D568D98();
}

uint64_t sub_20D0808FC()
{
  swift_getObjectType();
  MEMORY[0x20F31D7A0](v6, *MEMORY[0x277D14058]);
  if (!v6[3])
  {
    sub_20CEF928C(v6, &qword_27C81BF00);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v2 = [swift_getObjCClassFromMetadata() description];
    v0 = sub_20D567838();

    return v0;
  }

  v0 = v4;
  v1 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v1 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v1)
  {

    goto LABEL_8;
  }

  return v0;
}

uint64_t sub_20D0809EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20D563E28();
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_22;
  }

  v31 = v5;
  v9 = sub_20D567838();
  v11 = v10;
  if (v9 == sub_20D567838() && v11 == v12)
  {

    goto LABEL_16;
  }

  v14 = sub_20D568BF8();

  if (v14)
  {
LABEL_16:

    v26 = MEMORY[0x277D15320];
LABEL_17:
    (*(v31 + 104))(v8, *v26, v4);
    (*(v31 + 32))(a2, v8, v4);
    return (*(v31 + 56))(a2, 0, 1, v4);
  }

  v15 = sub_20D567838();
  v17 = v16;
  if (v15 == sub_20D567838() && v17 == v18)
  {

    goto LABEL_19;
  }

  v20 = sub_20D568BF8();
  v21 = a1;

  if (v20)
  {
LABEL_19:

    v26 = MEMORY[0x277D15318];
    goto LABEL_17;
  }

  v22 = sub_20D567838();
  v24 = v23;
  if (v22 == sub_20D567838() && v24 == v25)
  {

LABEL_21:
    v26 = MEMORY[0x277D15328];
    goto LABEL_17;
  }

  v28 = sub_20D568BF8();

  v5 = v31;
  if (v28)
  {
    goto LABEL_21;
  }

LABEL_22:
  v29 = *(v5 + 56);

  return v29(a2, 1, 1, v4, v6);
}

uint64_t sub_20D080D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v35 = a3;
  v7 = type metadata accessor for ControlCenterModuleConfiguration.Content(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = type metadata accessor for ControlCenterModuleConfiguration(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  v19 = *(type metadata accessor for ControlCenterAnalytics.TileModuleConfigurationEditedEvent(0) + 28);
  sub_20D563788();
  v20 = sub_20D5637A8();
  (*(*(v20 - 8) + 56))(&a4[v19], 0, 1, v20);
  v36 = a1;
  sub_20D081B08(a1, v18, type metadata accessor for ControlCenterModuleConfiguration);
  sub_20D081B08(v18, v12, type metadata accessor for ControlCenterModuleConfiguration.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_20D081B70(v18, type metadata accessor for ControlCenterModuleConfiguration);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50);

    v23 = sub_20D563818();
    (*(*(v23 - 8) + 8))(v12, v23);
    v22 = 1;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_20D081AB4();
      swift_allocError();
      *v26 = 0;
      *(v26 + 8) = 2;
      swift_willThrow();
      sub_20D081B70(a2, type metadata accessor for ControlCenterModuleConfiguration);
      sub_20D081B70(v36, type metadata accessor for ControlCenterModuleConfiguration);
      sub_20D081B70(v18, type metadata accessor for ControlCenterModuleConfiguration);
      v27 = type metadata accessor for ControlCenterModuleConfiguration.Content;
      v28 = v12;
      goto LABEL_17;
    }

    sub_20D081B70(v18, type metadata accessor for ControlCenterModuleConfiguration);
    sub_20D081B70(v12, type metadata accessor for ControlCenterModuleConfiguration.Content);
    v22 = 0;
  }

  *a4 = v22;
  sub_20D081B08(a2, v15, type metadata accessor for ControlCenterModuleConfiguration);
  sub_20D081B08(v15, v9, type metadata accessor for ControlCenterModuleConfiguration.Content);
  v24 = swift_getEnumCaseMultiPayload();
  if (v24 == 1)
  {
    sub_20D081B70(v15, type metadata accessor for ControlCenterModuleConfiguration);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820E50);

    v29 = sub_20D563818();
    (*(*(v29 - 8) + 8))(v9, v29);
    v25 = 1;
  }

  else
  {
    if (v24)
    {
      sub_20D081AB4();
      swift_allocError();
      *v32 = 0;
      *(v32 + 8) = 2;
      swift_willThrow();
      sub_20D081B70(a2, type metadata accessor for ControlCenterModuleConfiguration);
      sub_20D081B70(v36, type metadata accessor for ControlCenterModuleConfiguration);
      sub_20D081B70(v15, type metadata accessor for ControlCenterModuleConfiguration);
      v27 = type metadata accessor for ControlCenterModuleConfiguration.Content;
      v28 = v9;
      goto LABEL_17;
    }

    sub_20D081B70(v15, type metadata accessor for ControlCenterModuleConfiguration);
    sub_20D081B70(v9, type metadata accessor for ControlCenterModuleConfiguration.Content);
    v25 = 0;
  }

  a4[1] = v25;
  v30 = v35;
  if (!v35)
  {
    v31 = 1;
    goto LABEL_15;
  }

  if (v35 == 1)
  {
    v31 = 0;
LABEL_15:
    sub_20D081B70(a2, type metadata accessor for ControlCenterModuleConfiguration);
    result = sub_20D081B70(v36, type metadata accessor for ControlCenterModuleConfiguration);
    a4[2] = v31;
    return result;
  }

  sub_20D081AB4();
  swift_allocError();
  *v34 = v30;
  *(v34 + 8) = 1;
  swift_willThrow();
  sub_20D081B70(a2, type metadata accessor for ControlCenterModuleConfiguration);
  v28 = v36;
  v27 = type metadata accessor for ControlCenterModuleConfiguration;
LABEL_17:
  sub_20D081B70(v28, v27);
  return sub_20CEF928C(&a4[v19], &unk_27C8207C0);
}

void ControlCenterAnalytics.TileModuleExistsEvent.ItemMetrics.init(items:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v7 = 0;
    v36 = *(a1 + 16);
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);
    goto LABEL_8;
  }

  v4 = sub_20D568768();
  if ((v4 & 0x8000000000000000) == 0)
  {
    v36 = v4;
    sub_20D568718();
    sub_20CF2C85C();
    sub_20D081874(&qword_281120AB0, sub_20CF2C85C);
    sub_20D567D58();
    v2 = v42;
    v5 = v43;
    v6 = v44;
    v7 = v45;
    v8 = v46;
LABEL_8:
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v12 = (v6 + 64) >> 6;
    while (1)
    {
      if (v2 < 0)
      {
        if (!sub_20D568798() || (sub_20CF2C85C(), swift_dynamicCast(), (v15 = v41) == 0))
        {
LABEL_36:
          sub_20CEC80DC();
          *a2 = v36;
          *(a2 + 8) = v40;
          *(a2 + 9) = BYTE4(v39);
          *(a2 + 10) = BYTE4(v40);
          *(a2 + 11) = v39;
          *(a2 + 12) = BYTE4(v38);
          *(a2 + 13) = v37;
          *(a2 + 14) = v38;
          return;
        }
      }

      else
      {
        v13 = v7;
        v14 = v8;
        if (!v8)
        {
          while (1)
          {
            v7 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              break;
            }

            if (v7 >= v12)
            {
              goto LABEL_36;
            }

            v14 = *(v5 + 8 * v7);
            ++v13;
            if (v14)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          break;
        }

LABEL_14:
        v8 = (v14 - 1) & v14;
        v15 = *(*(v2 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v14)))));
        if (!v15)
        {
          goto LABEL_36;
        }
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        LOBYTE(v40) = 1;
      }

      else
      {
        v16 = swift_dynamicCastObjCProtocolConditional();
        if (v16)
        {
          v17 = [v16 accessoryRepresentableObject];
          swift_getObjectType();
          v18 = sub_20D568198();
          swift_unknownObjectRelease();
          v34 = objc_opt_self();
          v19 = [v34 lightAccessoryTypeGroup];
          v35 = v18;
          LOBYTE(v18) = [v19 containsType_];

          if (v18)
          {
            v21 = v34;
            v20 = v35;
            BYTE4(v39) = 1;
          }

          else
          {
            v22 = [v34 climateAccessoryTypeGroup];
            v23 = [v22 containsType_];

            if (v23)
            {
              v21 = v34;
              v20 = v35;
              LOBYTE(v39) = 1;
            }

            else
            {
              v24 = [v34 securityAccessoryTypeGroup];
              v25 = [v24 containsType_];

              if (v25)
              {
                v21 = v34;
                v20 = v35;
                BYTE4(v38) = 1;
              }

              else
              {
                v26 = [v34 mediaAccessoryTypeGroup];
                v27 = [v26 containsType_];

                if (v27)
                {
                  v21 = v34;
                  v20 = v35;
                  v37 = 1;
                }

                else
                {
                  v21 = v34;
                  v28 = [v34 waterAccessoryTypeGroup];
                  v20 = v35;
                  v33 = [v28 containsType_];

                  v29 = v38;
                  if (v33)
                  {
                    v29 = 1;
                  }

                  LODWORD(v38) = v29;
                }
              }
            }
          }

          v30 = [v21 energyAccessoryTypeGroup];
          v31 = [v30 containsType_];

          v32 = HIDWORD(v40);
          if (v31)
          {
            v32 = 1;
          }

          HIDWORD(v40) = v32;
        }

        else
        {
        }
      }
    }
  }

  __break(1u);
}

BOOL _s6HomeUI22ControlCenterAnalyticsO21TileModuleAppearEventV8IntervalV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s6HomeUI32ControlCenterModuleConfigurationV7ContentO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ControlCenterModuleConfiguration(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 3)
  {
    if (v7 != 3)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = type metadata accessor for ControlCenterAnalytics.TileModuleAppearEvent.Interval();
  if (*(a1 + *(v8 + 20)) != *(a2 + *(v8 + 20)))
  {
    return 0;
  }

  v9 = v8;
  if ((sub_20D563768() & 1) == 0 || (sub_20D568958() & 1) == 0 || *(a1 + v9[8]) != *(a2 + v9[8]) || *(a1 + v9[9]) != *(a2 + v9[9]))
  {
    return 0;
  }

  v10 = v9[10];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if ((v12 & 1) == 0)
  {
    if (*v11 != *v13)
    {
      v14 = 1;
    }

    return (v14 & 1) == 0;
  }

  return (v14 & 1) != 0;
}

uint64_t sub_20D081874(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s11ItemMetricsVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s11ItemMetricsVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void sub_20D081988()
{
  type metadata accessor for ControlCenterModuleConfiguration(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for HUControlCenterModuleKind(319);
    if (v1 <= 0x3F)
    {
      sub_20D5637A8();
      if (v2 <= 0x3F)
      {
        sub_20D568988();
        if (v3 <= 0x3F)
        {
          sub_20D081A64();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_20D081A64()
{
  if (!qword_27C8207B0)
  {
    v0 = sub_20D568538();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8207B0);
    }
  }
}

unint64_t sub_20D081AB4()
{
  result = qword_27C820F00;
  if (!qword_27C820F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820F00);
  }

  return result;
}

uint64_t sub_20D081B08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20D081B70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_6HomeUI22ControlCenterAnalyticsO5ErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

void LocationTriggerEditorMapDragRadiusView.mapView.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*LocationTriggerEditorMapDragRadiusView.mapView.modify(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_mapView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_20D081D14;
}

void sub_20D081D14(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t LocationTriggerEditorMapDragRadiusView.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*LocationTriggerEditorMapDragRadiusView.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_20CED1190;
}

uint64_t LocationTriggerEditorMapDragRadiusView.proximity.getter()
{
  v1 = OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_proximity;
  swift_beginAccess();
  return *(v0 + v1);
}

id LocationTriggerEditorMapDragRadiusView.proximity.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_proximity;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return sub_20D081FFC(v4);
}

id sub_20D081FFC(uint64_t a1)
{
  v3 = OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_proximity;
  result = swift_beginAccess();
  v5 = *&v1[v3];
  if (v5 != a1)
  {
    if ((v5 - 1) >= 2)
    {
      if (v5)
      {
        result = sub_20D568C38();
        __break(1u);
      }

      else
      {
        [v1 setNeedsDisplay];
        v7 = *&v1[OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_radiusSlider];
        [v7 setHidden_];
        [v7 setUserInteractionEnabled_];
        v8 = OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_normalizedSliderValue;
        *&v1[OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_normalizedSliderValue] = 0;
        [v1 setNeedsDisplay];
        v9 = fmax(fmin(pow(*&v1[v8], 6.0) * 2413916.0 + 100.0, 2414016.0), 100.0);
        if (vabdd_f64(v9, *&v1[OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_radiusInMeters]) > 1.0)
        {
          sub_20D083118(v9);
          sub_20D082864();
        }

        return [v7 setValue_];
      }
    }

    else
    {
      [v1 setNeedsDisplay];
      v6 = *&v1[OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_radiusSlider];
      [v6 setHidden_];
      return [v6 setUserInteractionEnabled_];
    }
  }

  return result;
}

void (*LocationTriggerEditorMapDragRadiusView.proximity.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_proximity;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_20D082234;
}

void sub_20D082234(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 32);
  v2 = *(*a1 + 40);
  v4 = *(*a1 + 24);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  sub_20D081FFC(v5);

  free(v1);
}

char *LocationTriggerEditorMapDragRadiusView.init(frame:radiusInMeters:delegate:)(double a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_proximity] = 0;
  *&v5[OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_normalizedSliderValue] = 0;
  *&v5[OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_radiusInMeters] = 0;
  v12 = OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_radiusSlider;
  *&v5[v12] = sub_20D0831DC();
  v13 = OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_radiusLabel;
  *&v5[v13] = sub_20D0832CC();
  v30.receiver = v5;
  v30.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v30, sel_initWithFrame_, a1, a2, a3, a4);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v15 = v14;
  [v15 setExclusiveTouch_];
  v16 = v15;
  [v16 setContentMode_];
  v17 = OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_radiusSlider;
  [v16 addSubview_];
  [*&v16[v17] setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_20D5BECD0;
  v20 = [v18 constraintWithItem:v16 attribute:9 relatedBy:0 toItem:*&v16[v17] attribute:5 multiplier:1.0 constant:-78.0];

  *(v19 + 32) = v20;
  *(v19 + 40) = [v18 constraintWithItem:v16 attribute:6 relatedBy:0 toItem:*&v16[v17] attribute:6 multiplier:1.0 constant:20.0];
  *(v19 + 48) = [v18 constraintWithItem:v16 attribute:20 relatedBy:0 toItem:*&v16[v17] attribute:20 multiplier:1.0 constant:0.0];
  sub_20CECF940(0, &qword_28111FEC0);
  v21 = sub_20D567A58();

  [v18 activateConstraints_];

  [*&v16[v17] addTarget:v16 action:sel_dragHandleDidMove_ forControlEvents:4096];
  [*&v16[v17] setHidden_];
  [*&v16[v17] setUserInteractionEnabled_];
  v22 = 100.0;
  if (a5 > 100.0)
  {
    v22 = a5;
  }

  *&v16[OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_radiusInMeters] = v22;
  v23 = fmin(pow((a5 + -100.0) / 2413916.0, 0.166666667), 0.0);
  *&v16[OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_normalizedSliderValue] = v23;
  *&v23 = v23;
  [*&v16[v17] setValue_];
  sub_20D0827A4();
  v24 = OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_radiusLabel;
  [v16 addSubview_];
  sub_20D082864();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_20D5C27F0;
  *(v25 + 32) = [v18 constraintWithItem:v16 attribute:18 relatedBy:0 toItem:*&v16[v24] attribute:6 multiplier:1.0 constant:0.0];
  *(v25 + 40) = [v18 constraintWithItem:v16 attribute:15 relatedBy:0 toItem:*&v16[v24] attribute:3 multiplier:1.0 constant:0.0];
  v26 = sub_20D567A58();

  [v18 activateConstraints_];

  v27 = [v16 traitCollection];
  v28 = [v27 userInterfaceStyle];

  sub_20D082EEC(v28);
  swift_unknownObjectRelease();
  return v16;
}

uint64_t sub_20D0827A4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(v0 + OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_radiusInMeters);
    v4 = *(v0 + OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_normalizedSliderValue);
    [*(v0 + OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_radiusSlider) frame];
    [v2 mapRadiusView:v0 radiusDidChange:v3 radiusInPoints:v4 * CGRectGetWidth(v5) + 78.0];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20D082864()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820880);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v34 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820888);
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820890);
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  v35 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820898);
  v8 = *(v7 - 8);
  v41 = v7;
  v42 = v8;
  MEMORY[0x28223BE20](v7);
  v36 = &v34 - v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8208A0);
  v40 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v11 = &v34 - v10;
  v12 = sub_20D563648();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20D563838();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8208A8);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v34 - v22;
  sub_20D563828();
  sub_20D0842B8();
  sub_20D5635E8();
  sub_20D563638();
  MEMORY[0x20F318AA0](v15, v17);
  (*(v13 + 8))(v15, v12);
  v24 = *(v18 + 8);
  v24(v21, v17);
  v34 = *(v39 + OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_radiusLabel);
  v25 = [objc_opt_self() meters];
  sub_20CECF940(0, &qword_27C8208B8);
  sub_20D563388();
  v26 = v35;
  sub_20D563398();
  v27 = v38;
  sub_20D563618();
  (*(v18 + 16))(v2, v23, v17);
  (*(v18 + 56))(v2, 0, 1, v17);
  v28 = v36;
  sub_20D563348();
  sub_20D08430C(v2);
  (*(v45 + 8))(v27, v46);
  (*(v43 + 8))(v26, v44);
  sub_20D084374();
  v29 = v28;
  v30 = v37;
  v31 = v41;
  sub_20D5633A8();
  (*(v42 + 8))(v29, v31);
  (*(v40 + 8))(v11, v30);
  v47 = 8224;
  v48 = 0xE200000000000000;
  MEMORY[0x20F31CDB0](v49, v50);

  v49 = v47;
  v50 = v48;
  sub_20D5663C8();
  MEMORY[0x20F31CDB0](8224, 0xE200000000000000);

  v32 = sub_20D5677F8();

  [v34 setText_];

  return (v24)(v23, v17);
}

void sub_20D082EEC(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_radiusLabel);
  v4 = [v3 layer];
  v5 = objc_allocWithZone(MEMORY[0x277D75348]);
  v6 = 0.0;
  if (a1 == 1)
  {
    v6 = 1.0;
    v7 = &selRef_blackColor;
  }

  else
  {
    v7 = &selRef_whiteColor;
  }

  v8 = [v5 initWithWhite:v6 alpha:0.65];
  v9 = [v8 CGColor];

  [v4 setBackgroundColor_];
  v10 = [objc_opt_self() *v7];
  v11 = [v10 colorWithAlphaComponent_];

  [v3 setTextColor_];
}

id LocationTriggerEditorMapDragRadiusView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_20D083118(double a1)
{
  *(v1 + OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_radiusInMeters) = a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(v1 + OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_normalizedSliderValue);
    [*(v1 + OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_radiusSlider) frame];
    [v4 mapRadiusView:v1 radiusDidChange:a1 radiusInPoints:v5 * CGRectGetWidth(v6) + 78.0];
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_20D0831DC()
{
  v0 = [objc_allocWithZone(type metadata accessor for TracklessSlider()) initWithFrame_];
  v1 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  v2 = v0;
  [v2 setMinimumTrackImage:v1 forState:0];
  [v2 setMaximumTrackImage:v1 forState:0];
  v3 = [objc_opt_self() systemBlueColor];
  [v2 setThumbTintColor_];

  return v2;
}

id sub_20D0832CC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [v0 layer];
  [v1 setCornerCurve_];

  v2 = [v0 layer];
  [v2 setCornerRadius_];

  v3 = [v0 layer];
  [v3 setZPosition_];

  return v0;
}

id LocationTriggerEditorMapDragRadiusView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id LocationTriggerEditorMapDragRadiusView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20D08352C(void *a1)
{
  if (a1)
  {
    v5 = a1;
    [v5 value];
    v3 = OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_normalizedSliderValue;
    *&v1[OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_normalizedSliderValue] = v2;
    [v1 setNeedsDisplay];
    v4 = fmax(fmin(pow(*&v1[v3], 6.0) * 2413916.0 + 100.0, 2414016.0), 100.0);
    if (vabdd_f64(v4, *&v1[OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_radiusInMeters]) > 1.0)
    {
      sub_20D083118(v4);
      sub_20D082864();
    }
  }
}

Swift::Void __swiftcall LocationTriggerEditorMapDragRadiusView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  if (a1.value.super.isa)
  {
    v1 = a1.value.super.isa;
    sub_20D082EEC([(objc_class *)v1 userInterfaceStyle]);
  }
}

id LocationTriggerEditorMapDragRadiusView.mapView(_:viewFor:)(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    return 0;
  }

  v3 = objc_allocWithZone(MEMORY[0x277CD4ED0]);
  v4 = sub_20D5677F8();
  v5 = [v3 initWithAnnotation:a2 reuseIdentifier:v4];

  [v5 setTitleVisibility_];
  [v5 setSubtitleVisibility_];
  return v5;
}

unint64_t ProximityType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_20D0839C0()
{
  v1 = *v0;
  sub_20D568D48();
  MEMORY[0x20F31E230](v1);
  return sub_20D568D98();
}

uint64_t sub_20D083A34()
{
  v1 = *v0;
  sub_20D568D48();
  MEMORY[0x20F31E230](v1);
  return sub_20D568D98();
}

id sub_20D083BF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TracklessSlider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s6HomeUI38LocationTriggerEditorMapDragRadiusViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_proximity) = 0;
  *(v0 + OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_normalizedSliderValue) = 0;
  *(v0 + OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_radiusInMeters) = 0;
  v1 = OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_radiusSlider;
  *(v0 + v1) = sub_20D0831DC();
  v2 = OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_radiusLabel;
  *(v0 + v2) = sub_20D0832CC();
  sub_20D568A58();
  __break(1u);
}

void _s6HomeUI38LocationTriggerEditorMapDragRadiusViewC4drawyySo6CGRectVF_0()
{
  v1 = *&v0[OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_normalizedSliderValue];
  [*&v0[OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_radiusSlider] frame];
  v2 = v1 * CGRectGetWidth(v48) + 78.0;
  v3 = -v2;
  v4 = v2 + v2;
  v5 = [v0 safeAreaLayoutGuide];
  [v5 layoutFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v49.origin.x = v7;
  v49.origin.y = v9;
  v49.size.width = v11;
  v49.size.height = v13;
  MidX = CGRectGetMidX(v49);
  v15 = [v0 safeAreaLayoutGuide];
  [v15 layoutFrame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v50.origin.x = v17;
  v50.origin.y = v19;
  v50.size.width = v21;
  v50.size.height = v23;
  MidY = CGRectGetMidY(v50);
  v51.origin.x = v3;
  v51.origin.y = v3;
  v51.size.width = v4;
  v51.size.height = v4;
  v52 = CGRectOffset(v51, MidX, MidY);
  x = v52.origin.x;
  y = v52.origin.y;
  width = v52.size.width;
  height = v52.size.height;
  v29 = OBJC_IVAR___HULocationTriggerEditorMapDragRadiusView_proximity;
  swift_beginAccess();
  v30 = *&v0[v29];
  if (v30)
  {
    if (v30 == 2)
    {
      [v0 bounds];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v39 = objc_opt_self();
      v40 = [v39 bezierPathWithRect_];
      v41 = [v39 bezierPathWithOvalInRect_];
      [v40 appendPath_];

      [v40 setUsesEvenOddFillRule_];
      v42 = objc_opt_self();
      v43 = [v42 systemBlueColor];
      v44 = [v43 colorWithAlphaComponent_];
    }

    else
    {
      if (v30 != 1)
      {
        sub_20D568C38();
        __break(1u);
        return;
      }

      v39 = objc_opt_self();
      v40 = [v39 bezierPathWithOvalInRect_];
      v42 = objc_opt_self();
      v43 = [v42 systemBlueColor];
      v44 = [v43 colorWithAlphaComponent_];
    }

    v45 = v44;

    [v45 setFill];
    [v40 fill];
    v46 = [v39 bezierPathWithOvalInRect_];
    [v46 setLineWidth_];
    v47 = [v42 systemBlueColor];
    [v47 setStroke];

    [v46 stroke];
  }
}

unint64_t sub_20D0840CC()
{
  result = qword_27C820808;
  if (!qword_27C820808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C820808);
  }

  return result;
}

double sub_20D0841A4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, float a5)
{
  v11 = [v5 currentThumbImage];
  if (v11)
  {
    v12 = v11;
    [v11 size];
    v14 = v13;
    v16 = v15;

    v17 = v14 * -0.5;
    v18 = v16 * -0.5;
  }

  else
  {
    v17 = -8.0;
    v18 = -8.0;
  }

  v27.origin.x = a1;
  v27.origin.y = a2;
  v27.size.width = a3;
  v27.size.height = a4;
  MinX = CGRectGetMinX(v27);
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  v20 = MinX + CGRectGetWidth(v28) * a5;
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  MidY = CGRectGetMidY(v29);
  v22 = 0;
  v23 = 0;
  v24 = v20;

  *&result = CGRectInset(*&v24, v17, v18);
  return result;
}

unint64_t sub_20D0842B8()
{
  result = qword_27C8208B0;
  if (!qword_27C8208B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8208B0);
  }

  return result;
}

uint64_t sub_20D08430C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20D084374()
{
  result = qword_27C8208C0;
  if (!qword_27C8208C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C820898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8208C0);
  }

  return result;
}

id AccessoryDetailInfoListModuleController.__allocating_init(_:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___HUAccessoryDetailInfoListModuleController_delegate];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v7.receiver = v3;
  v7.super_class = v1;
  v5 = objc_msgSendSuper2(&v7, sel_initWithModule_, a1);

  return v5;
}

uint64_t sub_20D084444(uint64_t a1, uint64_t *a2)
{
  sub_20D084630(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR___HUAccessoryDetailInfoListModuleController_delegate;
  swift_beginAccess();
  sub_20CFDFF48(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_20D0844A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___HUAccessoryDetailInfoListModuleController_delegate;
  swift_beginAccess();
  return sub_20D084630(v1 + v3, a1);
}

uint64_t sub_20D084500(uint64_t a1)
{
  v3 = OBJC_IVAR___HUAccessoryDetailInfoListModuleController_delegate;
  swift_beginAccess();
  sub_20CFDFF48(a1, v1 + v3);
  return swift_endAccess();
}

id AccessoryDetailInfoListModuleController.init(_:)(void *a1)
{
  v3 = &v1[OBJC_IVAR___HUAccessoryDetailInfoListModuleController_delegate];
  v4 = type metadata accessor for AccessoryDetailInfoListModuleController();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithModule_, a1);

  return v5;
}

uint64_t sub_20D084630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20D08472C()
{
  result = qword_27C8208D8;
  if (!qword_27C8208D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C8208D8);
  }

  return result;
}

void sub_20D08488C(void *a1, void *a2, char a3)
{
  v4 = v3;
  v38.receiver = v4;
  v38.super_class = type metadata accessor for AccessoryDetailInfoListModuleController();
  objc_msgSendSuper2(&v38, sel_updateCell_forItem_animated_, a1, a2, a3 & 1);
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = a1;
    v11 = [a2 latestResults];
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = v11;
    v13 = sub_20D567758();

    v14 = sub_20D567838();
    if (*(v13 + 16))
    {
      v16 = sub_20CEED668(v14, v15);
      v18 = v17;

      if (v18)
      {
        sub_20CED43FC(*(v13 + 56) + 32 * v16, v37);

        if (swift_dynamicCast())
        {
          v19 = [v9 titleLabel];
          if (!v19)
          {
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          v20 = v19;
          v21 = sub_20D5677F8();

          [v20 setText_];
        }

LABEL_10:
        v22 = [a2 latestResults];
        if (v22)
        {
          v23 = v22;
          v24 = sub_20D567758();

          v25 = sub_20D567838();
          if (*(v24 + 16))
          {
            v27 = sub_20CEED668(v25, v26);
            v29 = v28;

            if (v29)
            {
              sub_20CED43FC(*(v24 + 56) + 32 * v27, v37);

              if (swift_dynamicCast())
              {
                v30 = [v9 descriptionLabel];
                if (v30)
                {
                  v31 = v30;
                  v32 = [v4 module];
                  type metadata accessor for AccessoryRepresentableItemModule();
                  v33 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR___HUAccessoryRepresentableItemModule_context);

                  v34 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_hideSourceItemDescriptions;
                  swift_beginAccess();
                  LODWORD(v34) = v33[v34];

                  if (v34 == 1)
                  {
                  }

                  v35 = sub_20D5677F8();

                  goto LABEL_22;
                }

LABEL_26:
                __break(1u);
                return;
              }

              goto LABEL_20;
            }
          }

          else
          {
          }
        }

LABEL_20:
        v36 = [v9 descriptionLabel];
        if (v36)
        {
          v31 = v36;
          v35 = sub_20D5677F8();
LABEL_22:
          [v31 setText_];

          return;
        }

        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
    }

    goto LABEL_10;
  }
}

uint64_t sub_20D084CDC(uint64_t a1)
{
  v3 = OBJC_IVAR___HUAccessoryDetailInfoListModuleController_delegate;
  swift_beginAccess();
  sub_20D084630(v1 + v3, v10);
  if (v11)
  {
    sub_20CECF7A0(v10, v7);
    sub_20D085004(v10);
    v4 = v8;
    v5 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v5 + 8))(a1, v1, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_20D085004(v10);
  }

  return 0;
}

uint64_t sub_20D084DF0(uint64_t a1)
{
  v3 = OBJC_IVAR___HUAccessoryDetailInfoListModuleController_delegate;
  swift_beginAccess();
  sub_20D084630(v1 + v3, v10);
  if (!v11)
  {
    return sub_20D085004(v10);
  }

  sub_20CECF7A0(v10, v7);
  sub_20D085004(v10);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 8))(a1, v1, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

id AccessoryDetailInfoListModuleController.__allocating_init(module:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithModule_];

  return v3;
}

id AccessoryDetailInfoListModuleController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryDetailInfoListModuleController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20D085004(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id DashboardTipModuleController.__allocating_init(module:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithModule_];

  return v3;
}

void sub_20D0851C8(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F5D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v50 - v6;
  v8 = sub_20D5662A8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DashboardTipModuleController();
  v56.receiver = v2;
  v56.super_class = v12;
  objc_msgSendSuper2(&v56, sel_configureCell_forItem_, a1, a2);
  v13 = OBJC_IVAR___HUDashboardTipModuleController_tipView;
  v14 = *&v2[OBJC_IVAR___HUDashboardTipModuleController_tipView];
  if (v14)
  {
    [v14 removeFromSuperview];
    v15 = *&v2[v13];
    *&v2[v13] = 0;
  }

  v16 = [a2 latestResults];
  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = v16;
  v18 = sub_20D567758();

  if (qword_28111FF90 != -1)
  {
    swift_once();
  }

  v19 = sub_20D567838();
  if (!*(v18 + 16))
  {

    goto LABEL_11;
  }

  v53 = v13;
  v54 = v2;
  v21 = sub_20CEED668(v19, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
LABEL_11:

LABEL_12:
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_13;
  }

  sub_20CED43FC(*(v18 + 56) + 32 * v21, v55);

  v24 = swift_dynamicCast();
  (*(v9 + 56))(v7, v24 ^ 1u, 1, v8);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(v11, v7, v8);
    v55[3] = v8;
    v55[4] = sub_20D085A94();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
    (*(v9 + 16))(boxed_opaque_existential_1, v11, v8);
    v26 = objc_allocWithZone(sub_20D566388());
    v27 = sub_20D566398();
    sub_20D566378();
    v28 = [a1 contentView];
    v29 = v27;
    [v28 addSubview_];

    [v29 setTranslatesAutoresizingMaskIntoConstraints_];
    v52 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_20D5BC4C0;
    v31 = [v29 topAnchor];

    v32 = [a1 contentView];
    v33 = [v32 topAnchor];
    v51 = v11;
    v34 = v33;

    v35 = [v31 constraintEqualToAnchor_];
    *(v30 + 32) = v35;
    v36 = [v29 leadingAnchor];

    v37 = [a1 contentView];
    v38 = [v37 leadingAnchor];

    v39 = [v36 constraintEqualToAnchor_];
    *(v30 + 40) = v39;
    v40 = [v29 trailingAnchor];

    v41 = [a1 contentView];
    v42 = [v41 trailingAnchor];

    v43 = [v40 constraintEqualToAnchor_];
    *(v30 + 48) = v43;
    v44 = [v29 bottomAnchor];

    v45 = [a1 contentView];
    v46 = [v45 bottomAnchor];

    v47 = [v44 constraintEqualToAnchor_];
    *(v30 + 56) = v47;
    sub_20CECF940(0, &qword_28111FEC0);
    v48 = sub_20D567A58();

    [v52 activateConstraints_];

    (*(v9 + 8))(v51, v8);
    v49 = *&v54[v53];
    *&v54[v53] = v29;

    return;
  }

LABEL_13:
  sub_20D085858(v7);
}

uint64_t sub_20D085858(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F5D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id DashboardTipModuleController.init(module:)(void *a1)
{
  *&v1[OBJC_IVAR___HUDashboardTipModuleController_tipView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DashboardTipModuleController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithModule_, a1);

  return v3;
}

id DashboardTipModuleController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DashboardTipModuleController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_20D085A94()
{
  result = qword_27C8208E8;
  if (!qword_27C8208E8)
  {
    sub_20D5662A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8208E8);
  }

  return result;
}

id sub_20D085AEC()
{
  v1 = v0;
  v2 = [v0 host];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  if (([v2 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_7:
    v6 = objc_opt_self();
    v5 = 0;
    goto LABEL_8;
  }

  v4 = [v1 asGeneric];
  v5 = [v3 presentingViewControllerForModuleController_];

  swift_unknownObjectRelease();
  v6 = objc_opt_self();
  if (!v5)
  {
LABEL_8:
    v15 = 0.0;
    v14 = 0.0;
LABEL_9:
    v16 = [v6 defaultOptionsForViewSize:0 columnStyle:0 overrideSizeSubclass:{v15, v14}];
    v17 = [v16 numberOfColumns];
    if (4.0 / v17 <= 1.0)
    {
      v18 = 4.0 / v17;
    }

    else
    {
      v18 = 1.0;
    }

    v19 = objc_opt_self();
    v20 = [v19 fractionalWidthDimension_];
    v21 = [v19 estimatedDimension_];
    v22 = objc_opt_self();
    v23 = [v22 sizeWithWidthDimension:v20 heightDimension:v21];

    v24 = [objc_opt_self() itemWithLayoutSize_];
    v25 = [v19 fractionalWidthDimension_];
    v26 = [v19 estimatedDimension_];
    v27 = [v22 sizeWithWidthDimension:v25 heightDimension:v26];

    result = objc_opt_self();
    v28 = 1.0 / v18;
    if (COERCE__INT64(fabs(1.0 / v18)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v28 > -9.22337204e18)
    {
      if (v28 < 9.22337204e18)
      {
        v29 = [result horizontalGroupWithLayoutSize:v27 repeatingSubitem:v24 count:v28];
        v30 = objc_opt_self();
        [v16 columnSpacing];
        v31 = [v30 fixedSpacing_];
        [v29 setInterItemSpacing_];

        v32 = [objc_opt_self() sectionWithGroup_];
        return v32;
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6;
  result = [v5 view];
  if (result)
  {
    v9 = result;
    [result frame];
    v11 = v10;
    v13 = v12;

    v14 = v13;
    v15 = v11;
    v6 = v7;
    goto LABEL_9;
  }

LABEL_19:
  __break(1u);
  return result;
}

__n128 sub_20D085EBC@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC6HomeUI39ActionSetContainerSummaryGridItemModule_config);
  swift_beginAccess();
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}