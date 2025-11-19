char *ScreenTimePasscodeController.init(passcodeControllerType:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_screentimePasscodeListener;
  *&v2[v5] = [objc_allocWithZone(type metadata accessor for ScreentimePasscodeListener()) init];
  v2[OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_isListening] = 0;
  v6 = &v2[OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_passcodeControllerType];
  *v6 = a1;
  v6[1] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for ScreenTimePasscodeController();
  v7 = objc_msgSendSuper2(&v10, sel_init);
  v8 = *&v7[OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_screentimePasscodeListener] + OBJC_IVAR____TtC14FamilyCircleUI26ScreentimePasscodeListener_delegate;
  swift_beginAccess();
  *(v8 + 8) = &protocol witness table for ScreenTimePasscodeController;
  swift_unknownObjectWeakAssign();
  return v7;
}

uint64_t sub_21BCA95F4()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_passcodeControllerType);
  v11 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_passcodeControllerType + 8);
  v12 = (*(v11 + 8))(v10, v11);
  if (v12)
  {
    sub_21BE261CC();
    v13 = sub_21BE26A2C();
    v14 = sub_21BE28FFC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21BB35000, v13, v14, "ST enabled, calling PIN UI", v15, 2u);
      MEMORY[0x21CF05C50](v15, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
    sub_21BCA98C4();
    (*(v11 + 16))(v10, v11);
  }

  else
  {
    sub_21BE261CC();
    v16 = sub_21BE26A2C();
    v17 = sub_21BE28FFC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21BB35000, v16, v17, "ST disabled, skipping PIN UI", v18, 2u);
      MEMORY[0x21CF05C50](v18, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    v19 = v1 + OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v20 = *(v19 + 8);
      ObjectType = swift_getObjectType();
      (*(v20 + 8))(v1, 1, ObjectType, v20);
      swift_unknownObjectRelease();
    }
  }

  return v12 & 1;
}

uint64_t sub_21BCA98C4()
{
  v1 = sub_21BE26A4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x28223BE20](v1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_isListening;
  if ((*(v0 + OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_isListening) & 1) == 0)
  {
    v8 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_screentimePasscodeListener);
    v9 = [objc_opt_self() defaultCenter];
    [v9 addObserver:v8 selector:sel_handleRestrictionsPINNotification_ name:*MEMORY[0x277D4BDE8] object:0 suspensionBehavior:4];

    *(v0 + v7) = 1;
    sub_21BE261CC();
    v10 = sub_21BE26A2C();
    v11 = sub_21BE28FCC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21BB35000, v10, v11, "Started listening for ST passcode events", v12, 2u);
      MEMORY[0x21CF05C50](v12, -1, -1);
    }

    return (*(v2 + 8))(v6, v1);
  }

  return result;
}

uint64_t sub_21BCA9A7C()
{
  v1 = sub_21BE26A4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x28223BE20](v1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_isListening;
  if (*(v0 + OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_isListening) == 1)
  {
    v8 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_screentimePasscodeListener);
    v9 = [objc_opt_self() defaultCenter];
    [v9 removeObserver:v8 name:*MEMORY[0x277D4BDE8] object:0];

    *(v0 + v7) = 0;
    sub_21BE261CC();
    v10 = sub_21BE26A2C();
    v11 = sub_21BE28FCC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21BB35000, v10, v11, "Stopped listening for ST passcode events", v12, 2u);
      MEMORY[0x21CF05C50](v12, -1, -1);
    }

    return (*(v2 + 8))(v6, v1);
  }

  return result;
}

id ScreenTimePasscodeController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ScreenTimePasscodeController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenTimePasscodeController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BCA9D70(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_21BE261CC();
  v10 = sub_21BE26A2C();
  v11 = sub_21BE28FFC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v9;
    _os_log_impl(&dword_21BB35000, v10, v11, "ST passcode state changed to: %ld", v12, 0xCu);
    MEMORY[0x21CF05C50](v12, -1, -1);
  }

  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (v9 == 1)
    {
      sub_21BCA9A7C();
      v14 = v2 + OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_delegate;
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      v15 = *(v14 + 8);
      ObjectType = swift_getObjectType();
      (*(v15 + 8))(v2, 1, ObjectType, v15);
    }

    else
    {
      sub_21BCA9A7C();
      v17 = v2 + OBJC_IVAR____TtC14FamilyCircleUI28ScreenTimePasscodeController_delegate;
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      v18 = *(v17 + 8);
      v19 = swift_getObjectType();
      (*(v18 + 16))(v2, v19, v18);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21BCAA0F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_21BCAA140(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BCAA1C8()
{
  v0 = sub_21BE278CC();
  __swift_allocate_value_buffer(v0, qword_27CDB8DF0);
  __swift_project_value_buffer(v0, qword_27CDB8DF0);
  return sub_21BE278AC();
}

uint64_t sub_21BCAA214()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 8);
  v6 = *v0;
  v11 = *v0;
  v7 = v12;

  if ((v7 & 1) == 0)
  {
    sub_21BE28FEC();
    v8 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v11, &qword_27CDB5C50, &qword_21BE33490);
    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_21BCAA370@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v3 = swift_allocBox();
  sub_21BCAA214();
  type metadata accessor for ChecklistStateVars();
  sub_21BBC7324(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
  sub_21BE2864C();
  v4 = *(v1 + 9);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  if ((v4 & 0x100) != 0)
  {
    v23 = sub_21BE2599C();
    v25 = v24;

    v26 = [v6 bundleForClass_];
    v27 = sub_21BE2599C();
    v29 = v28;

    *&v57 = v27;
    *(&v57 + 1) = v29;
    v30 = sub_21BE28B8C();
    v32 = v31;
    v33 = sub_21BCAE31C();
    v54 = &type metadata for ContactItem;
    v55 = sub_21BCAE444();
    v56 = 0;
    v53 = v4;
    v43 = v23;
    v44 = v25;
    v45 = 0;
    v46 = 0;
    v47 = v30;
    v48 = v32;
    v49 = v33;
    v50 = sub_21BCAE414;
    v51 = v3;
    v52 = 0;
    sub_21BBC7A18(&v43, v41);
    v42 = 0;
    sub_21BBC24D4();
    sub_21BBC2528();

    sub_21BE2784C();
    sub_21BBC7A74(&v43);
  }

  else
  {
    v8 = sub_21BE2599C();
    v39 = v9;
    v40 = v8;

    v10 = [v6 &selRef:ObjCClassFromMetadata :0x800000021BE5B140 launchScreenTimeSetupForUser:? inObjectModel:? isExpressSetup:? withCompletion:? + 3];
    v11 = sub_21BE2599C();
    v13 = v12;

    *&v57 = v11;
    *(&v57 + 1) = v13;
    v14 = sub_21BE28B8C();
    v16 = v15;
    v17 = sub_21BCAE31C();
    v18 = v3;

    v19 = [v6 bundleForClass_];
    v20 = sub_21BE2599C();
    v22 = v21;

    v54 = &type metadata for ContactItem;
    v55 = sub_21BCAE444();
    v56 = 0;
    v53 = v4;
    v43 = v40;
    v44 = v39;
    v45 = v14;
    v46 = v16;
    v47 = v17;
    v48 = sub_21BCAE414;
    v49 = v18;
    v50 = v20;
    v51 = v22;
    v52 = 0;
    sub_21BBC7968(&v43, v41);
    v42 = 1;
    sub_21BBC24D4();
    sub_21BBC2528();
    sub_21BE2784C();
    sub_21BBC79C4(&v43);
  }

  v34 = v64;
  *(a1 + 96) = v63;
  *(a1 + 112) = v34;
  *(a1 + 128) = v65;
  v35 = v60;
  *(a1 + 32) = v59;
  *(a1 + 48) = v35;
  v36 = v62;
  *(a1 + 64) = v61;
  *(a1 + 80) = v36;
  v37 = v58;
  *a1 = v57;
  *(a1 + 16) = v37;
}

uint64_t sub_21BCAA840()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - v3;
  v5 = swift_projectBox();
  (*(v1 + 16))(v4, v5, v0);
  sub_21BE2862C();
  (*(v1 + 8))(v4, v0);
  v6 = v9[3];
  swift_beginAccess();
  if (*(v6 + 25) == 1)
  {
    *(v6 + 25) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v9[-2] = v6;
    LOBYTE(v9[-1]) = 1;
    v9[2] = v6;
    sub_21BBC7324(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
    sub_21BE25F0C();
  }
}

uint64_t sub_21BCAAA40()
{
  v1 = v0;
  v2 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v3 = MEMORY[0x277D84F90];
  if (v19)
  {
    v4 = sub_21BE2905C();
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v20 = v3;
  if (v4 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21BE2951C())
  {
    v18 = v1;
    if (i)
    {
      v1 = 0;
      v3 = v4 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x21CF047C0](v1, v4);
        }

        else
        {
          if (v1 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v6 = *(v4 + 8 * v1 + 32);
        }

        v7 = v6;
        v8 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        v9 = [v6 contact];
        if (v9)
        {

          sub_21BE296BC();
          v10 = *(v20 + 16);
          sub_21BE296EC();
          sub_21BE296FC();
          sub_21BE296CC();
        }

        else
        {
        }

        ++v1;
        if (v8 == i)
        {
          v1 = v18;
          v3 = MEMORY[0x277D84F90];
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_18:
    v21 = *(v1 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8E60, &qword_21BE3E390);
    sub_21BE2840C();
    v20 = v3;
    if (!i)
    {
      break;
    }

    v11 = 0;
    v3 = v4 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x21CF047C0](v11, v4);
      }

      else
      {
        if (v11 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v13 = *(v4 + 8 * v11 + 32);
      }

      v14 = v13;
      v1 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v15 = [v13 contact];
      if (v15)
      {
        v12 = v15;
      }

      else
      {
        sub_21BE296BC();
        v16 = *(v20 + 16);
        sub_21BE296EC();
        sub_21BE296FC();
        sub_21BE296CC();
      }

      ++v11;
      if (v1 == i)
      {
        v1 = v18;
        goto LABEL_30;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

LABEL_30:

  v22 = *(v1 + 48);
  return sub_21BE2840C();
}

uint64_t sub_21BCAAD1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v49 - v9;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8E08, &qword_21BE3E2E0);
  v11 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v50 = v49 - v12;
  v53 = swift_allocBox();
  v14 = v13;
  sub_21BCAA214();
  type metadata accessor for ChecklistStateVars();
  sub_21BBC7324(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
  sub_21BE2864C();
  sub_21BCAA370(v56);
  (*(v4 + 16))(v8, v14, v3);
  sub_21BE2863C();
  v15 = *(v4 + 8);
  v15(v8, v3);
  swift_getKeyPath();
  sub_21BE2865C();

  v15(v10, v3);
  v49[3] = v55;
  v16 = swift_allocObject();
  v17 = v1[5];
  *(v16 + 80) = v1[4];
  *(v16 + 96) = v17;
  *(v16 + 112) = v1[6];
  v18 = v1[1];
  *(v16 + 16) = *v1;
  *(v16 + 32) = v18;
  v19 = v1[3];
  *(v16 + 48) = v1[2];
  *(v16 + 64) = v19;
  *(v16 + 128) = v53;
  sub_21BCABE7C(v1, v54);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BD0, &qword_21BE3E310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8E10, &qword_21BE3E318);
  sub_21BBC2448();
  v20 = v50;
  sub_21BB3B038(&qword_27CDB8E18, &qword_27CDB8E10, &qword_21BE3E318);
  sub_21BE2812C();

  sub_21BB3A4CC(v56, &qword_27CDB5BD0, &qword_21BE3E310);
  v21 = swift_allocObject();
  v22 = v1[5];
  *(v21 + 5) = v1[4];
  *(v21 + 6) = v22;
  *(v21 + 7) = v1[6];
  v23 = v1[1];
  *(v21 + 1) = *v1;
  *(v21 + 2) = v23;
  v24 = v1[3];
  *(v21 + 3) = v1[2];
  *(v21 + 4) = v24;
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8E20, &qword_21BE3E320) + 36);
  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_21BCABE7C(v2, v56);
  v27 = [ObjCClassFromMetadata defaultCenter];
  if (qword_280BD7030 != -1)
  {
    swift_once();
  }

  v28 = v20 + v25;
  sub_21BE2935C();

  v29 = type metadata accessor for ActiveStateChange(0);
  v30 = (v28 + *(v29 + 20));
  *v30 = sub_21BCABEB4;
  v30[1] = v21;
  v31 = (v28 + *(v29 + 24));
  *v31 = 0xD00000000000002ALL;
  v31[1] = 0x800000021BE5B0F0;
  v32 = swift_allocObject();
  v33 = v2[5];
  *(v32 + 5) = v2[4];
  *(v32 + 6) = v33;
  *(v32 + 7) = v2[6];
  v34 = v2[1];
  *(v32 + 1) = *v2;
  *(v32 + 2) = v34;
  v35 = v2[3];
  *(v32 + 3) = v2[2];
  *(v32 + 4) = v35;
  v36 = (v20 + *(v51 + 36));
  *v36 = sub_21BCAEAAC;
  v36[1] = v32;
  v36[2] = 0;
  v36[3] = 0;
  v54[0] = v2[5];
  sub_21BCABE7C(v2, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8E28, &qword_21BE3E328);
  sub_21BE283FC();
  v37 = v56[0];
  *&v54[0] = v56[0];
  v38 = swift_allocObject();
  v39 = v2[5];
  v38[5] = v2[4];
  v38[6] = v39;
  v38[7] = v2[6];
  v40 = v2[1];
  v38[1] = *v2;
  v38[2] = v40;
  v41 = v2[3];
  v38[3] = v2[2];
  v38[4] = v41;
  sub_21BCABE7C(v2, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8E30, &qword_21BE3E330);
  sub_21BCABEE0();
  sub_21BCAC0C4();
  v42 = v52;
  sub_21BE281BC();

  sub_21BB4E0F8(v20);
  v43 = swift_allocObject();
  v44 = v2[5];
  v43[5] = v2[4];
  v43[6] = v44;
  v43[7] = v2[6];
  v45 = v2[1];
  v43[1] = *v2;
  v43[2] = v45;
  v46 = v2[3];
  v43[3] = v2[2];
  v43[4] = v46;
  sub_21BCABE7C(v2, v56);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8E58, &unk_21BE3E338);
  v48 = (v42 + *(result + 36));
  *v48 = 0;
  v48[1] = 0;
  v48[2] = sub_21BCAC1F4;
  v48[3] = v43;
  return result;
}

uint64_t sub_21BCAB3AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8E68, &qword_21BE3E398);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6650, &qword_21BE34EA0);
  sub_21BCAE260();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB6660, &qword_21BE33470);
  sub_21BB3B038(&qword_27CDB5C38, &unk_27CDB6660, &qword_21BE33470);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_21BE271BC();
}

uint64_t sub_21BCAB4EC(_OWORD *a1)
{
  v4 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8E60, &qword_21BE3E390);
  sub_21BE2841C();
  v5 = a1[4];
  sub_21BE2841C();
  v6 = a1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8E28, &qword_21BE3E328);
  sub_21BE2841C();
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  type metadata accessor for FamilyCircleStore(0);
  sub_21BBC7324(&qword_27CDB5C40, type metadata accessor for FamilyCircleStore);

  *&v7 = sub_21BE270CC();
  *(&v7 + 1) = v2;
  *v8 = *v9;
  *&v8[8] = *&v9[8];
  *&v8[24] = *v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6650, &qword_21BE34EA0);
  sub_21BCAE260();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDB6660, &qword_21BE33470);
  sub_21BB3B038(&qword_27CDB5C38, &unk_27CDB6660, &qword_21BE33470);
  swift_getOpaqueTypeConformance2();
  sub_21BE2817C();
  v10 = *&v8[16];
  v11 = *&v9[8];
  v12 = *v9;
  v13 = *&v9[16];
  *v9 = v7;
  *&v9[16] = *v8;
  return sub_21BCAE2BC(v9);
}

uint64_t sub_21BCAB760()
{
  v0 = sub_21BE278CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB6660, &qword_21BE33470);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  if (qword_27CDB4F70 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_27CDB8DF0);
  (*(v1 + 16))(v4, v10, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460);
  sub_21BE26EDC();
  v11 = sub_21BB3B038(&qword_27CDB5C38, &unk_27CDB6660, &qword_21BE33470);
  MEMORY[0x21CF02AD0](v9, v5, v11);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21BCAB9CC()
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();

  return sub_21BE2845C();
}

uint64_t sub_21BCABAD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5BC0, &qword_21BE33380);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - v3;
  v5 = swift_projectBox();
  (*(v1 + 16))(v4, v5, v0);
  sub_21BE2862C();
  (*(v1 + 8))(v4, v0);
  v6 = v9[3];
  swift_beginAccess();
  if (*(v6 + 25))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v9[-2] = v6;
    LOBYTE(v9[-1]) = 0;
    v9[2] = v6;
    sub_21BBC7324(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
    sub_21BE25F0C();
  }

  else
  {
    *(v6 + 25) = 0;
  }
}

void *sub_21BCABCD0(void *result, void *a2, uint64_t a3)
{
  if (*result)
  {
    v3 = *a2 == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    sub_21BCAAA40();
    v5 = *(a3 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    return sub_21BE2840C();
  }

  return result;
}

void sub_21BCABD48(uint64_t a1)
{
  v3 = *(a1 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  if (v2 == 1)
  {
    sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
    v1 = [swift_getObjCClassFromMetadata() defaultCenter];
    if (qword_27CDB4EF8 != -1)
    {
      swift_once();
    }

    [v1 postNotificationName:qword_27CDB7EA0 object:0];
  }
}

uint64_t sub_21BCABE24@<X0>(uint64_t a1@<X8>)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_21BCAAD1C(a1);
}

unint64_t sub_21BCABEE0()
{
  result = qword_27CDB8E38;
  if (!qword_27CDB8E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8E08, &qword_21BE3E2E0);
    sub_21BCABF6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8E38);
  }

  return result;
}

unint64_t sub_21BCABF6C()
{
  result = qword_27CDB8E40;
  if (!qword_27CDB8E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8E20, &qword_21BE3E320);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5BD0, &qword_21BE3E310);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8E10, &qword_21BE3E318);
    sub_21BBC2448();
    sub_21BB3B038(&qword_27CDB8E18, &qword_27CDB8E10, &qword_21BE3E318);
    swift_getOpaqueTypeConformance2();
    sub_21BBC7324(&qword_27CDB5C18, type metadata accessor for ActiveStateChange);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8E40);
  }

  return result;
}

unint64_t sub_21BCAC0C4()
{
  result = qword_27CDB8E48;
  if (!qword_27CDB8E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8E30, &qword_21BE3E330);
    sub_21BB3CC48(&qword_27CDB8E50, &qword_280BD8A40, 0x277D08268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8E48);
  }

  return result;
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  v7 = *(v0 + 88);

  v8 = *(v0 + 104);

  v9 = *(v0 + 120);

  return swift_deallocObject();
}

uint64_t sub_21BCAC1FC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v130 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5C70, &unk_21BE3E470);
  v131 = *(v3 - 8);
  v132 = v3;
  v4 = *(v131 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v142 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v141 = &v127 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CE8, &unk_21BE363C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v133 = &v127 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8E98, &qword_21BE3E480);
  v129 = *(v11 - 8);
  v12 = *(v129 + 64);
  MEMORY[0x28223BE20](v11);
  v134 = &v127 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8EA0, &qword_21BE3E488);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v140 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v139 = &v127 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v143 = &v127 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v127 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8EA8, &qword_21BE3E490);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v127 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8EB0, &qword_21BE3E498);
  v137 = *(v28 - 8);
  v138 = v28;
  v29 = v137[8];
  v30 = MEMORY[0x28223BE20](v28);
  v136 = &v127 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v127 - v32;
  *v27 = sub_21BE2770C();
  *(v27 + 1) = 0;
  v27[16] = 1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8EB8, &qword_21BE3E4A0);
  sub_21BCACEBC(&v27[*(v34 + 44)]);
  sub_21BB3B038(&qword_27CDB8EC0, &qword_27CDB8EA8, &qword_21BE3E490);
  v135 = v33;
  v35 = a1;
  sub_21BE285EC();
  v145 = *(a1 + 16);
  v146 = *(a1 + 32);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8EC8, &unk_21BE3E4A8);
  MEMORY[0x21CF036E0](v148);
  if (v148[0] >> 62)
  {
    v37 = sub_21BE2951C();
    v35 = a1;
  }

  else
  {
    v37 = *((v148[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v144 = v23;
  if (v37)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v39 = [objc_opt_self() bundleForClass_];
    v40 = sub_21BE2599C();
    v41 = v36;
    v43 = v42;

    *&v145 = v40;
    *(&v145 + 1) = v43;
    sub_21BB41FA4();
    v44 = sub_21BE27DBC();
    v46 = v45;
    LOBYTE(v43) = v47;
    v49 = v48;
    v50 = *(v8 + 36);
    v51 = v8;
    v52 = v35;
    v53 = v133;
    v54 = &v133[v50];
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC2A0, &qword_21BE33660);
    v128 = v11;
    v56 = *(v55 + 28);
    v57 = sub_21BE27D7C();
    (*(*(v57 - 8) + 56))(v54 + v56, 1, 1, v57);
    KeyPath = swift_getKeyPath();
    *v54 = KeyPath;
    v35 = v52;
    v8 = v51;
    *v53 = v44;
    *(v53 + 1) = v46;
    v59 = v43 & 1;
    v36 = v41;
    v53[16] = v59;
    *(v53 + 3) = v49;
    MEMORY[0x28223BE20](KeyPath);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8ED0, &qword_21BE3E4E8);
    sub_21BC12B48();
    sub_21BCAE688();
    v60 = v134;
    v23 = v144;
    sub_21BE285EC();
    v11 = v128;
    v61 = v129;
    (*(v129 + 32))(v23, v60, v128);
    v62 = 0;
  }

  else
  {
    v62 = 1;
    v61 = v129;
  }

  v63 = *(v61 + 56);
  v63(v23, v62, 1, v11);
  v145 = *(v35 + 40);
  v146 = *(v35 + 56);
  MEMORY[0x21CF036E0](v148, v36);
  if (v148[0] >> 62)
  {
    v89 = sub_21BE2951C();

    if (v89)
    {
      goto LABEL_8;
    }

LABEL_11:
    v88 = 1;
    v86 = &selRef_bundleURL;
    v87 = 0x277CCA000uLL;
    goto LABEL_12;
  }

  v64 = *((v148[0] & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v64)
  {
    goto LABEL_11;
  }

LABEL_8:
  type metadata accessor for ConfirmChildAgeViewModel();
  v65 = swift_getObjCClassFromMetadata();
  v66 = [objc_opt_self() bundleForClass_];
  v67 = sub_21BE2599C();
  v69 = v68;

  *&v145 = v67;
  *(&v145 + 1) = v69;
  sub_21BB41FA4();
  v70 = sub_21BE27DBC();
  v72 = v71;
  LOBYTE(v69) = v73;
  v129 = v61 + 56;
  v75 = v74;
  v76 = *(v8 + 36);
  v128 = v63;
  v77 = v133;
  v78 = v61;
  v79 = v11;
  v80 = &v133[v76];
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC2A0, &qword_21BE33660);
  v127 = v8;
  v82 = *(v81 + 28);
  v83 = sub_21BE27D7C();
  (*(*(v83 - 8) + 56))(v80 + v82, 1, 1, v83);
  v84 = swift_getKeyPath();
  *v80 = v84;
  v11 = v79;
  *v77 = v70;
  *(v77 + 1) = v72;
  v77[16] = v69 & 1;
  *(v77 + 3) = v75;
  MEMORY[0x28223BE20](v84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8ED0, &qword_21BE3E4E8);
  sub_21BC12B48();
  sub_21BCAE688();
  v85 = v134;
  v63 = v128;
  v86 = &selRef_bundleURL;
  v87 = 0x277CCA000;
  sub_21BE285EC();
  (*(v78 + 32))(v143, v85, v11);
  v88 = 0;
LABEL_12:
  v90 = v143;
  v63(v143, v88, 1, v11);
  type metadata accessor for ConfirmChildAgeViewModel();
  v91 = swift_getObjCClassFromMetadata();
  v92 = *(v87 + 2264);
  v93 = [objc_opt_self() v86[363]];
  v94 = sub_21BE2599C();
  v96 = v95;

  *&v145 = v94;
  *(&v145 + 1) = v96;
  sub_21BB41FA4();
  v97 = sub_21BE27DBC();
  v99 = v98;
  LOBYTE(v96) = v100;
  sub_21BE27CCC();
  v101 = v90;
  v102 = sub_21BE27D9C();
  v104 = v103;
  v106 = v105;
  v108 = v107;

  sub_21BBC7C7C(v97, v99, v96 & 1);

  *&v145 = v102;
  *(&v145 + 1) = v104;
  LOBYTE(v146) = v106 & 1;
  v147 = v108;
  v109 = v141;
  sub_21BE2861C();
  v110 = v136;
  v111 = v137[2];
  v112 = v138;
  v111(v136, v135, v138);
  v113 = v139;
  sub_21BBA3854(v144, v139, &qword_27CDB8EA0, &qword_21BE3E488);
  sub_21BBA3854(v101, v140, &qword_27CDB8EA0, &qword_21BE3E488);
  v114 = v131;
  v115 = *(v131 + 16);
  v116 = v109;
  v117 = v132;
  v115(v142, v116, v132);
  v118 = v130;
  v111(v130, v110, v112);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8EE8, &unk_21BE3E4F0);
  sub_21BBA3854(v113, &v118[v119[12]], &qword_27CDB8EA0, &qword_21BE3E488);
  v120 = v140;
  sub_21BBA3854(v140, &v118[v119[16]], &qword_27CDB8EA0, &qword_21BE3E488);
  v121 = &v118[v119[20]];
  v122 = v142;
  v115(v121, v142, v117);
  v123 = *(v114 + 8);
  v123(v141, v117);
  sub_21BB3A4CC(v143, &qword_27CDB8EA0, &qword_21BE3E488);
  sub_21BB3A4CC(v144, &qword_27CDB8EA0, &qword_21BE3E488);
  v124 = v138;
  v125 = v137[1];
  v125(v135, v138);
  v123(v122, v117);
  sub_21BB3A4CC(v120, &qword_27CDB8EA0, &qword_21BE3E488);
  sub_21BB3A4CC(v139, &qword_27CDB8EA0, &qword_21BE3E488);
  return (v125)(v136, v124);
}

uint64_t sub_21BCACEBC@<X0>(uint64_t a1@<X8>)
{
  v110 = a1;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CE8, &unk_21BE363C0);
  v1 = *(*(v107 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v107);
  v109 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v108 = &v90 - v4;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7CC8, &unk_21BE398A0);
  v5 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v7 = &v90 - v6;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7CD0, &qword_21BE3E530);
  v8 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v99 = &v90 - v9;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8EF8, &qword_21BE3E538);
  v10 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v104 = &v90 - v11;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8F00, &qword_21BE3E540);
  v12 = *(*(v102 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v102);
  v106 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v103 = &v90 - v16;
  MEMORY[0x28223BE20](v15);
  v105 = &v90 - v17;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v96 = objc_opt_self();
  v100 = ObjCClassFromMetadata;
  v19 = [v96 bundleForClass_];
  v20 = sub_21BE2599C();
  v22 = v21;

  *&v115 = v20;
  *(&v115 + 1) = v22;
  v98 = sub_21BB41FA4();
  v23 = sub_21BE27DBC();
  v25 = v24;
  LOBYTE(v22) = v26;
  sub_21BE27C0C();
  v27 = sub_21BE27D9C();
  v29 = v28;
  LOBYTE(ObjCClassFromMetadata) = v30;

  sub_21BBC7C7C(v23, v25, v22 & 1);

  v91 = sub_21BE27D8C();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_21BBC7C7C(v27, v29, ObjCClassFromMetadata & 1);

  LOBYTE(v25) = sub_21BE27B8C();
  v37 = sub_21BE27BBC();
  sub_21BE27BBC();
  if (sub_21BE27BBC() != v25)
  {
    v37 = sub_21BE27BBC();
  }

  sub_21BE26E0C();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v34 & 1;
  v114 = v34 & 1;
  v113 = 0;
  v47 = &v7[*(v95 + 36)];
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC2A0, &qword_21BE33660);
  v48 = *(v95 + 28);
  v93 = sub_21BE27D7C();
  v49 = *(v93 - 8);
  v92 = *(v49 + 56);
  v94 = v49 + 56;
  v92(v47 + v48, 1, 1, v93);
  *v47 = swift_getKeyPath();
  *v7 = v91;
  *(v7 + 1) = v32;
  v7[16] = v46;
  *(v7 + 3) = v36;
  v7[32] = v37;
  *(v7 + 5) = v39;
  *(v7 + 6) = v41;
  *(v7 + 7) = v43;
  *(v7 + 8) = v45;
  v7[72] = 0;
  v50 = sub_21BE2832C();
  KeyPath = swift_getKeyPath();
  v52 = v99;
  sub_21BBB7D84(v7, v99, &qword_27CDB7CC8, &unk_21BE398A0);
  v53 = (v52 + *(v101 + 36));
  *v53 = KeyPath;
  v53[1] = v50;
  v54 = v104;
  sub_21BBB7D84(v52, v104, &qword_27CDB7CD0, &qword_21BE3E530);
  *(v54 + *(v97 + 36)) = 256;
  sub_21BE2869C();
  sub_21BE2725C();
  v55 = v54;
  v56 = v103;
  sub_21BBB7D84(v55, v103, &qword_27CDB8EF8, &qword_21BE3E538);
  v57 = (v56 + *(v102 + 36));
  v58 = v120;
  v57[4] = v119;
  v57[5] = v58;
  v57[6] = v121;
  v59 = v116;
  *v57 = v115;
  v57[1] = v59;
  v60 = v118;
  v57[2] = v117;
  v57[3] = v60;
  v61 = v105;
  sub_21BBB7D84(v56, v105, &qword_27CDB8F00, &qword_21BE3E540);
  v62 = [v96 bundleForClass_];
  v63 = sub_21BE2599C();
  v65 = v64;

  v111 = v63;
  v112 = v65;
  v66 = sub_21BE27DBC();
  v68 = v67;
  LOBYTE(v65) = v69;
  sub_21BE27CCC();
  v70 = sub_21BE27D9C();
  v72 = v71;
  LOBYTE(KeyPath) = v73;

  sub_21BBC7C7C(v66, v68, v65 & 1);

  sub_21BE2832C();
  v74 = sub_21BE27D4C();
  v76 = v75;
  v78 = v77;
  v80 = v79;

  sub_21BBC7C7C(v70, v72, KeyPath & 1);

  v81 = v108;
  v82 = &v108[*(v107 + 36)];
  v92(v82 + *(v95 + 28), 1, 1, v93);
  *v82 = swift_getKeyPath();
  *v81 = v74;
  *(v81 + 8) = v76;
  *(v81 + 16) = v78 & 1;
  *(v81 + 24) = v80;
  v83 = v106;
  sub_21BBA3854(v61, v106, &qword_27CDB8F00, &qword_21BE3E540);
  v84 = v109;
  sub_21BBA3854(v81, v109, &qword_27CDB5CE8, &unk_21BE363C0);
  v85 = v110;
  sub_21BBA3854(v83, v110, &qword_27CDB8F00, &qword_21BE3E540);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8F08, &qword_21BE3E578);
  v87 = v85 + v86[12];
  *v87 = 0;
  *(v87 + 8) = 1;
  sub_21BBA3854(v84, v85 + v86[16], &qword_27CDB5CE8, &unk_21BE363C0);
  v88 = v85 + v86[20];
  *v88 = 0;
  *(v88 + 8) = 1;
  sub_21BB3A4CC(v81, &qword_27CDB5CE8, &unk_21BE363C0);
  sub_21BB3A4CC(v61, &qword_27CDB8F00, &qword_21BE3E540);
  sub_21BB3A4CC(v84, &qword_27CDB5CE8, &unk_21BE363C0);
  return sub_21BB3A4CC(v83, &qword_27CDB8F00, &qword_21BE3E540);
}

uint64_t sub_21BCAD804(uint64_t a1)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8EC8, &unk_21BE3E4A8);
  MEMORY[0x21CF036E0](&v9, v2);
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = *(a1 + 48);
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a1 + 64);
  *(v3 + 96) = *(a1 + 80);
  v5 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;
  sub_21BCAE768(a1, &v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CC8, &qword_21BE36190);
  sub_21BB3B038(&qword_27CDB5CD0, &qword_27CDB5CC8, &qword_21BE36190);
  sub_21BB3CC48(&unk_280BD8A30, &qword_280BD8A40, 0x277D08268);
  sub_21BCAE70C();
  return sub_21BE285BC();
}

uint64_t sub_21BCAD988(uint64_t a1)
{
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8EC8, &unk_21BE3E4A8);
  MEMORY[0x21CF036E0](&v9, v2);
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = *(a1 + 48);
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a1 + 64);
  *(v3 + 96) = *(a1 + 80);
  v5 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;
  sub_21BCAE768(a1, &v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CC8, &qword_21BE36190);
  sub_21BB3B038(&qword_27CDB5CD0, &qword_27CDB5CC8, &qword_21BE36190);
  sub_21BB3CC48(&unk_280BD8A30, &qword_280BD8A40, 0x277D08268);
  sub_21BCAE70C();
  return sub_21BE285BC();
}

uint64_t sub_21BCADB0C@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v10 = *(a2 + 64);
  v11 = *(a2 + 80);
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8EF0, &unk_21BE3E520);
  sub_21BE2856C();
  if (qword_280BD83C0 != -1)
  {
    swift_once();
  }

  type metadata accessor for FamilyPictureStore(0);
  sub_21BBC7324(&qword_27CDB5CE0, type metadata accessor for FamilyPictureStore);

  result = sub_21BE270CC();
  *a3 = v4;
  a3[1] = v7;
  a3[2] = v8;
  a3[3] = v9;
  a3[4] = result;
  a3[5] = v6;
  return result;
}

uint64_t sub_21BCADC2C()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 10);
  v2 = *v0;
  v3 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8E88, &qword_21BE3E468);
  sub_21BB3B038(&qword_27CDB8E90, &qword_27CDB8E88, &qword_21BE3E468);
  return sub_21BE27D1C();
}

uint64_t sub_21BCADCF4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8EF0, &unk_21BE3E520);
  return sub_21BE2854C();
}

__n128 sub_21BCADD58@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE2771C();
  v23 = 1;
  v5 = sub_21BE275DC();
  v22 = 0;
  sub_21BCADEB8(a1, &v17);
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v28[0] = v17;
  v28[1] = v18;
  v28[2] = v19;
  v28[3] = v20;
  sub_21BBA3854(&v24, &v15, &qword_27CDB5DE0, &qword_21BE337F0);
  sub_21BB3A4CC(v28, &qword_27CDB5DE0, &qword_21BE337F0);
  *&v21[7] = v24;
  *&v21[23] = v25;
  *&v21[39] = v26;
  *&v21[55] = v27;
  v6 = v22;
  v7 = v23;
  v8 = *a1;
  v17 = *(a1 + 8);
  *&v18 = *(a1 + 24);
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8EF0, &unk_21BE3E520);
  sub_21BE2856C();
  v10 = *v21;
  *(a2 + 57) = *&v21[16];
  v11 = *&v21[48];
  *(a2 + 73) = *&v21[32];
  *(a2 + 89) = v11;
  result = v15;
  v13 = v16;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v7;
  *(a2 + 24) = v5;
  *(a2 + 32) = 0;
  *(a2 + 40) = v6;
  v14 = *&v21[63];
  *(a2 + 41) = v10;
  *(a2 + 104) = v14;
  *(a2 + 112) = v9;
  *(a2 + 120) = result;
  *(a2 + 136) = v13;
  return result;
}

uint64_t sub_21BCADEB8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27CDB4E58 != -1)
  {
    v21 = a1;
    swift_once();
    a1 = v21;
  }

  if (byte_27CDD41B0)
  {
    v3 = 48.0;
  }

  else
  {
    v3 = 46.0;
  }

  v4 = *a1;
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0);
  v22 = v4;
  v23 = sub_21BE2727C();
  v24 = v5;
  sub_21BCAE8D0(v22);
  sub_21BB41FA4();
  v6 = sub_21BE27DBC();
  v8 = v7;
  v10 = v9;
  sub_21BE2832C();
  v11 = sub_21BE27D4C();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_21BBC7C7C(v6, v8, v10 & 1);

  *a2 = v3;
  *(a2 + 8) = v22;
  *(a2 + 16) = v23;
  *(a2 + 24) = v24;
  *(a2 + 32) = v11;
  *(a2 + 40) = v13;
  *(a2 + 48) = v15 & 1;
  *(a2 + 56) = v17;
  v18 = v23;
  v19 = v22;
  sub_21BBA4A38(v11, v13, v15 & 1);

  sub_21BBC7C7C(v11, v13, v15 & 1);
}

uint64_t sub_21BCAE0C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v14 = *(v1 + 24);
  v6 = v14;
  v15 = v4;
  v16 = *(v1 + 32);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  *(v7 + 48) = *(v1 + 32);
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  *(v8 + 32) = v5;
  *(v8 + 40) = v6;
  *(v8 + 48) = *(v1 + 32);
  KeyPath = swift_getKeyPath();
  v17 = 0;
  *a1 = 1;
  *(a1 + 8) = sub_21BCAE8C8;
  *(a1 + 16) = v8;
  *(a1 + 24) = sub_21BCAE868;
  *(a1 + 32) = v7;
  *(a1 + 40) = 0;
  *(a1 + 48) = KeyPath;
  *(a1 + 56) = 0;
  v10 = v3;
  sub_21BBC7C94(&v15, v13);

  sub_21BBA3854(&v14, v13, &qword_27CDB8E30, &qword_21BE3E330);
  sub_21BBA3854(&v16, v13, &qword_27CDB8F20, &unk_21BE3E660);
  v11 = v10;
  sub_21BBC7C94(&v15, v13);

  sub_21BBA3854(&v14, v13, &qword_27CDB8E30, &qword_21BE3E330);
  return sub_21BBA3854(&v16, v13, &qword_27CDB8F20, &unk_21BE3E660);
}

unint64_t sub_21BCAE260()
{
  result = qword_27CDB8E70;
  if (!qword_27CDB8E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8E70);
  }

  return result;
}

uint64_t sub_21BCAE31C()
{
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_21BE289CC();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1 withConfiguration:0];

  if (v3)
  {
    return v3;
  }

  result = sub_21BE2978C();
  __break(1u);
  return result;
}

unint64_t sub_21BCAE444()
{
  result = qword_27CDB8E78;
  if (!qword_27CDB8E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8E78);
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

uint64_t sub_21BCAE4BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_21BCAE504(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_21BCAE568()
{
  result = qword_27CDB8E80;
  if (!qword_27CDB8E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8E58, &unk_21BE3E338);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8E08, &qword_21BE3E2E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8E30, &qword_21BE3E330);
    sub_21BCABEE0();
    sub_21BCAC0C4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8E80);
  }

  return result;
}

unint64_t sub_21BCAE688()
{
  result = qword_27CDB8ED8;
  if (!qword_27CDB8ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB8ED0, &qword_21BE3E4E8);
    sub_21BCAE70C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8ED8);
  }

  return result;
}

unint64_t sub_21BCAE70C()
{
  result = qword_27CDB8EE0;
  if (!qword_27CDB8EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB8EE0);
  }

  return result;
}

uint64_t objectdestroy_38Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 72);

  v8 = *(v0 + 80);

  v9 = *(v0 + 88);

  return swift_deallocObject();
}

uint64_t objectdestroy_54Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_21BCAE8D0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  v3 = [a1 contact];
  if (v3)
  {
    v4 = 1000;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
    v6 = [a1 firstName];
    [v5 setFirstName_];

    v7 = [a1 lastName];
    [v5 setLastName_];

    v3 = v5;
    v4 = 0;
  }

  v8 = v3;
  [v2 setStyle_];
  v9 = [v2 stringFromContact_];

  if (v9)
  {
    v10 = sub_21BE28A0C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = sub_21BB41E7C(v10, v12);
  v15 = v14;

  if (v15)
  {
  }

  else
  {
    v16 = [a1 appleID];
    if (v16)
    {
      v17 = v16;
      v13 = sub_21BE28A0C();
    }

    else
    {

      return 0;
    }
  }

  return v13;
}

uint64_t sub_21BCAEB64()
{
  v1 = v0;
  v2 = 0;
  v187 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v168 = &v152 - v5;
  v163 = sub_21BE26A4C();
  v162 = *(v163 - 8);
  v6 = *(v162 + 64);
  MEMORY[0x28223BE20](v163);
  v174 = &v152 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for TapToRadarDraft();
  v164 = *(v161 - 8);
  v8 = *(v164 + 64);
  v9 = MEMORY[0x28223BE20](v161);
  v166 = &v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = v10;
  MEMORY[0x28223BE20](v9);
  v167 = &v152 - v11;
  v12 = sub_21BE25ADC();
  v179 = *(v12 - 8);
  v180 = v12;
  v13 = *(v179 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21BE25D6C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v152 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21BE25D1C();
  v169 = *(v21 - 8);
  v170 = v21;
  v22 = *(v169 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v152 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_21BE25B9C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v158 = &v152 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v157 = &v152 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v152 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v159 = &v152 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v160 = &v152 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v173 = &v152 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v181 = &v152 - v43;
  MEMORY[0x28223BE20](v42);
  v176 = v26;
  v44 = *(v26 + 56);
  v178 = &v152 - v45;
  v171 = v44;
  v172 = v26 + 56;
  v44();
  v46 = UIImagePNGRepresentation(*(v1 + OBJC_IVAR___FamilySuggestionsTapToRadar_screenshot));
  v177 = v25;
  if (v46)
  {
    v154 = v17;
    v155 = v16;
    v156 = v1;
    v47 = v46;
    v48 = sub_21BE25BFC();
    v50 = v49;

    v153 = objc_opt_self();
    v51 = [v153 defaultManager];
    v52 = [v51 URLsForDirectory:13 inDomains:1];

    v53 = sub_21BE28C3C();
    if (*(v53 + 16))
    {
      i = 0;
      (*(v176 + 16))(v33, v53 + ((*(v176 + 80) + 32) & ~*(v176 + 80)), v25);

      v183 = 0;
      v184 = 0xE000000000000000;
      sub_21BE295EC();
      sub_21BE25D0C();
      sub_21BCB0370(&qword_27CDB8FD0, MEMORY[0x277CC9578]);
      v54 = v170;
      v55 = sub_21BE2992C();
      v57 = v56;

      v183 = v55;
      v184 = v57;
      (*(v169 + 8))(v24, v54);
      MEMORY[0x21CF03CA0](95, 0xE100000000000000);
      sub_21BE25D5C();
      sub_21BCB0370(&unk_27CDB8FD8, MEMORY[0x277CC95F0]);
      v58 = v155;
      v59 = sub_21BE2992C();
      MEMORY[0x21CF03CA0](v59);

      (*(v154 + 8))(v20, v58);
      MEMORY[0x21CF03CA0](0xD00000000000001CLL, 0x800000021BE5B700);
      v61 = v179;
      v60 = v180;
      (*(v179 + 104))(v15, *MEMORY[0x277CC91D8], v180);
      sub_21BB41FA4();
      v62 = v157;
      sub_21BE25B8C();
      (*(v61 + 8))(v15, v60);

      v63 = [v153 defaultManager];
      v64 = sub_21BE25B2C();
      v183 = 0;
      LODWORD(v60) = [v63 createDirectoryAtURL:v64 withIntermediateDirectories:1 attributes:0 error:&v183];

      if (v60)
      {
        v65 = v183;
        v2 = i;
      }

      else
      {
        v67 = v183;
        v68 = sub_21BE25A8C();

        swift_willThrow();
        v2 = 0;
      }

      v1 = v156;
      v69 = v48;
      sub_21BE25C0C();
      v71 = v176;
      v70 = v177;
      v66 = v181;
      if (v2)
      {

        v2 = 0;
      }

      sub_21BBBEF94(v69, v50);
      (*(v71 + 8))(v33, v70);
      v72 = v178;
      sub_21BC12FE4(v178);
      (*(v71 + 32))(v72, v62, v70);
      (v171)(v72, 0, 1, v70);
    }

    else
    {
      sub_21BBBEF94(v48, v50);

      v66 = v181;
      v1 = v156;
    }
  }

  else
  {
    v66 = v181;
  }

  v183 = 0;
  v184 = 0xE000000000000000;
  v73 = *(v1 + OBJC_IVAR___FamilySuggestionsTapToRadar_suggestions);
  if (v73 >> 62)
  {
    goto LABEL_34;
  }

  v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v2; v74; i = v2)
  {
    v2 = 0;
    v179 = v73 & 0xFFFFFFFFFFFFFF8;
    v180 = v73 & 0xC000000000000001;
    while (1)
    {
      if (v180)
      {
        v77 = MEMORY[0x21CF047C0](v2, v73);
      }

      else
      {
        if (v2 >= *(v179 + 16))
        {
          goto LABEL_33;
        }

        v77 = *(v73 + 8 * v2 + 32);
      }

      v66 = v77;
      v78 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v2)
      {
        MEMORY[0x21CF03CA0](2570, 0xE200000000000000);
      }

      v185 = 0;
      v186 = 0xE000000000000000;
      sub_21BE295EC();
      MEMORY[0x21CF03CA0](0x6974736567677553, 0xEC00000023206E6FLL);
      v182 = (v2 + 1);
      v79 = sub_21BE2992C();
      MEMORY[0x21CF03CA0](v79);

      MEMORY[0x21CF03CA0](0x79616C707369640ALL, 0xEE00203A656D614ELL);
      v80 = [v66 displayName];
      if (v80)
      {
        v81 = v80;
        v82 = sub_21BE28A0C();
        v84 = v83;
      }

      else
      {
        v84 = 0xE300000000000000;
        v82 = 7104878;
      }

      MEMORY[0x21CF03CA0](v82, v84);

      MEMORY[0x21CF03CA0](0x3A656C646E61680ALL, 0xE900000000000020);
      v85 = [v66 handle];
      if (v85)
      {
        v86 = v85;
        v87 = sub_21BE28A0C();
        v89 = v88;
      }

      else
      {
        v89 = 0xE300000000000000;
        v87 = 7104878;
      }

      MEMORY[0x21CF03CA0](v87, v89);

      MEMORY[0x21CF03CA0](0xD000000000000015, 0x800000021BE5B310);
      v90 = [v66 contact];
      if (v90)
      {
        v91 = v90;
        v92 = [v90 identifier];

        v76 = sub_21BE28A0C();
        v75 = v93;
      }

      else
      {
        v75 = 0xE300000000000000;
        v76 = 7104878;
      }

      MEMORY[0x21CF03CA0](v76, v75);

      MEMORY[0x21CF03CA0](v185, v186);

      ++v2;
      v66 = v181;
      if (v78 == v74)
      {
        v94 = v183;
        v95 = v184;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v74 = sub_21BE2951C();
  }

  v94 = 0;
  v95 = 0xE000000000000000;
LABEL_36:
  v185 = 0;
  v186 = 0xE000000000000000;
  sub_21BE295EC();
  MEMORY[0x21CF03CA0](0xD00000000000027DLL, 0x800000021BE5B380);
  MEMORY[0x21CF03CA0](v94, v95);

  v96 = v185;
  v97 = v186;
  sub_21BBF0D04(v178, v66);
  v98 = v176;
  v99 = v177;
  v100 = (v176 + 48);
  v101 = *(v176 + 48);
  if (v101(v66, 1, v177) == 1)
  {
    sub_21BC12FE4(v66);
    v102 = MEMORY[0x277D84F90];
  }

  else
  {
    v104 = *(v98 + 32);
    v103 = v98 + 32;
    v181 = v100;
    v105 = v101;
    v106 = v158;
    v104(v158, v66, v99);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8FC8, qword_21BE3E6B0);
    v107 = *(v103 + 40);
    v108 = (*(v103 + 48) + 32) & ~*(v103 + 48);
    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_21BE32770;
    v109 = v106;
    v101 = v105;
    v104((v102 + v108), v109, v99);
  }

  v110 = v167;
  v111 = v161;
  v112 = &v167[*(v161 + 44)];
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8FC0, &qword_21BE49120);
  (*(v169 + 56))(&v112[*(v113 + 36)], 1, 1, v170);
  *v112 = 0x7349664F656D6954;
  *(v112 + 1) = 0xEB00000000657573;
  *v110 = 0x4449656C646E7542;
  *(v110 + 8) = 0xE800000000000000;
  *(v110 + 16) = 0;
  *(v110 + 24) = 0;
  *(v110 + 32) = xmmword_21BE3E680;
  *(v110 + 48) = 0x800000021BE5B600;
  *(v110 + 56) = xmmword_21BE3E690;
  strcpy((v110 + 72), "Classification");
  *(v110 + 87) = -18;
  *(v110 + 88) = 4;
  *(v110 + 96) = 0x6375646F72706552;
  *(v110 + 104) = 0xEF7974696C696269;
  *(v110 + 112) = 5;
  *(v110 + 120) = 0x656C746954;
  *(v110 + 128) = 0xE500000000000000;
  *(v110 + 136) = 0xD000000000000042;
  *(v110 + 144) = 0x800000021BE5B330;
  *(v110 + 152) = 0x7470697263736544;
  *(v110 + 160) = 0xEB000000006E6F69;
  *(v110 + 168) = v96;
  *(v110 + 176) = v97;
  *(v110 + 184) = 0x7364726F7779654BLL;
  *(v110 + 192) = 0xE800000000000000;
  *(v110 + 200) = &unk_282D867C8;
  v114 = (v110 + v111[12]);
  *v114 = 0x656D686361747441;
  v114[1] = 0xEB0000000073746ELL;
  v114[2] = v102;
  v115 = (v110 + v111[13]);
  *v115 = 0xD000000000000011;
  v115[1] = 0x800000021BE5B660;
  v116 = MEMORY[0x277D84F90];
  v115[2] = MEMORY[0x277D84F90];
  v117 = (v110 + v111[14]);
  *v117 = 0xD000000000000014;
  v117[1] = 0x800000021BE5B680;
  v117[2] = &unk_282D867F0;
  v118 = (v110 + v111[15]);
  strcpy(v118, "DeleteOnAttach");
  v118[15] = -18;
  v118[16] = 0;
  v119 = (v110 + v111[16]);
  *v119 = 0x4449656369766544;
  v119[1] = 0xE900000000000073;
  v119[2] = v116;
  v120 = v110 + v111[17];
  strcpy(v120, "DeviceClasses");
  *(v120 + 14) = -4864;
  *(v120 + 16) = v116;
  v121 = v110 + v111[18];
  strcpy(v121, "DeviceModels");
  *(v121 + 13) = 0;
  *(v121 + 14) = -5120;
  *(v121 + 16) = v116;
  v122 = (v110 + v111[19]);
  *v122 = 0xD000000000000016;
  v122[1] = 0x800000021BE5B6A0;
  v122[2] = 0;
  v123 = v110 + v111[20];
  *v123 = 0xD00000000000001ALL;
  *(v123 + 8) = 0x800000021BE5B6C0;
  *(v123 + 16) = 0;
  v124 = v110 + v111[21];
  *v124 = 0x676169446F747541;
  *(v124 + 8) = 0xEF73636974736F6ELL;
  *(v124 + 16) = 0;
  v125 = (v110 + v111[22]);
  *v125 = 0xD00000000000001BLL;
  v125[1] = 0x800000021BE5B6E0;
  v125[2] = v116;
  v126 = (v110 + v111[23]);
  *v126 = 0xD000000000000018;
  v126[1] = 0x800000021BE5B620;
  v126[2] = 0;
  v126[3] = 0;
  v127 = (v110 + v111[24]);
  *v127 = 0xD000000000000012;
  v127[1] = 0x800000021BE5B640;
  v127[2] = 0;
  v127[3] = 0;
  v128 = v173;
  v129 = i;
  sub_21BD847BC(v173);
  if (v129)
  {

    v130 = 1;
  }

  else
  {
    v130 = 0;
  }

  v131 = v174;
  v132 = v177;
  v133 = v160;
  (v171)(v128, v130, 1, v177);
  sub_21BE260DC();
  sub_21BBF0D04(v128, v133);
  v134 = sub_21BE26A2C();
  v135 = sub_21BE28FFC();
  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v185 = v137;
    *v136 = 136315138;
    v138 = v159;
    sub_21BBF0D04(v133, v159);
    if (v101(v138, 1, v132) == 1)
    {
      v139 = v138;
      v140 = 7104878;
      sub_21BC12FE4(v139);
      v141 = 0xE300000000000000;
    }

    else
    {
      v143 = v138;
      v140 = sub_21BE25AFC();
      v141 = v144;
      (*(v176 + 8))(v143, v132);
    }

    v142 = v168;
    sub_21BC12FE4(v133);
    v145 = sub_21BB3D81C(v140, v141, &v185);

    *(v136 + 4) = v145;
    _os_log_impl(&dword_21BB35000, v134, v135, "Opening TTR with URL %s", v136, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v137);
    MEMORY[0x21CF05C50](v137, -1, -1);
    MEMORY[0x21CF05C50](v136, -1, -1);

    (*(v162 + 8))(v174, v163);
    v128 = v173;
  }

  else
  {

    sub_21BC12FE4(v133);
    (*(v162 + 8))(v131, v163);
    v142 = v168;
  }

  v146 = sub_21BE28DAC();
  (*(*(v146 - 8) + 56))(v142, 1, 1, v146);
  v147 = v166;
  sub_21BCB015C(v110, v166);
  v148 = (*(v164 + 80) + 32) & ~*(v164 + 80);
  v149 = swift_allocObject();
  *(v149 + 16) = 0;
  *(v149 + 24) = 0;
  sub_21BCB01C0(v147, v149 + v148);
  sub_21BC54908(0, 0, v142, &unk_21BE3E6A8, v149);

  sub_21BC12FE4(v128);
  sub_21BCB0314(v110);
  result = sub_21BC12FE4(v178);
  v151 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21BCAFF8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBA6A64;

  return sub_21BD84A0C();
}

void __swiftcall FamilySuggestionsTapToRadar.init()(FamilySuggestionsTapToRadar *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_21BCB015C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapToRadarDraft();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCB01C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapToRadarDraft();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCB0224()
{
  v2 = *(type metadata accessor for TapToRadarDraft() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21BBA6A64;

  return sub_21BCAFF8C();
}

uint64_t sub_21BCB0314(uint64_t a1)
{
  v2 = type metadata accessor for TapToRadarDraft();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BCB0370(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for CommLimitsManagedCell()
{
  result = qword_27CDB8FF0;
  if (!qword_27CDB8FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BCB042C()
{
  sub_21BCB04E8();
  if (v0 <= 0x3F)
  {
    sub_21BCB057C();
    if (v1 <= 0x3F)
    {
      sub_21BCB05D4();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CommLimitsItem(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21BCB04E8()
{
  if (!qword_27CDB9000)
  {
    sub_21BBDAF04();
    sub_21BCB11C0(&qword_280BD8A20, sub_21BBDAF04);
    v0 = sub_21BE2728C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB9000);
    }
  }
}

void sub_21BCB057C()
{
  if (!qword_27CDB56D8)
  {
    type metadata accessor for ChecklistStateVars();
    v0 = sub_21BE26E8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB56D8);
    }
  }
}

void sub_21BCB05D4()
{
  if (!qword_280BD69C0)
  {
    v0 = sub_21BE2946C();
    if (!v1)
    {
      atomic_store(v0, &qword_280BD69C0);
    }
  }
}

uint64_t sub_21BCB0640()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  if ((v7 & 1) == 0)
  {
    sub_21BE28FEC();
    v8 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_21BCB0780()
{
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_21BE289CC();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1 withConfiguration:0];

  if (v3)
  {
    return v3;
  }

  result = sub_21BE2978C();
  __break(1u);
  return result;
}

uint64_t sub_21BCB0880()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = v0 + *(type metadata accessor for CommLimitsManagedCell() + 36);
    v3 = *(v2 + *(type metadata accessor for CommLimitsItem(0) + 24));
    v4 = v1;
    v5 = [v4 profilePictureForFamilyMember:v3 pictureDiameter:36.0];
    if (v5)
    {
      v6 = v5;
      v7 = sub_21BE25BFC();
      v9 = v8;

      v10 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v11 = sub_21BE25BCC();
      v12 = [v10 initWithData_];

      sub_21BBBEF94(v7, v9);
    }

    else
    {

      return 0;
    }

    return v12;
  }

  else
  {
    v14 = *(v0 + 8);
    sub_21BBDAF04();
    sub_21BCB11C0(&qword_280BD8A20, sub_21BBDAF04);
    result = sub_21BE2726C();
    __break(1u);
  }

  return result;
}

void sub_21BCB09CC(void *a1)
{
  v3 = v1 + *(type metadata accessor for CommLimitsManagedCell() + 36);
  v4 = [*(v3 + *(type metadata accessor for CommLimitsItem(0) + 24)) dsid];
  if (v4)
  {
    if (a1)
    {
      v10 = v4;
      v5 = objc_opt_self();
      v6 = a1;
      v7 = [v5 communicationLimitsViewControllerForDSID_];
      [v6 pushViewController:v7 animated:1];

      v8 = sub_21BCB0640();
      swift_beginAccess();
      if (*(v8 + 23))
      {

        *(v8 + 23) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_21BCB11C0(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
        sub_21BE25F0C();
      }
    }

    else
    {
    }
  }
}

id sub_21BCB0BE8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CommLimitsManagedCell();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_21BCB1208(v1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CommLimitsManagedCell);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_21BCB1054(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v19 = v8;
  sub_21BE283EC();
  v9 = v17;
  v10 = v18;
  if (qword_27CDB4EA0 != -1)
  {
    swift_once();
  }

  v16 = qword_27CDB7E50;
  v11 = sub_21BCB0640();
  swift_getKeyPath();
  v17 = v11;
  sub_21BCB11C0(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars);
  sub_21BE25F1C();

  swift_beginAccess();
  v12 = *(v11 + 23);

  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = sub_21BCB10B8;
  *(a1 + 24) = v7;
  v13 = v16;
  *(a1 + 32) = v16;
  *(a1 + 40) = v12;

  return v13;
}

uint64_t sub_21BCB0E44@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for CommLimitsManagedCell();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = a2[4];
  v11 = a2[5];
  v12 = a2[7];
  v28 = a2[6];
  v29 = v10;
  v13 = a2[8];
  v14 = a2[9];
  v26 = v11;
  v27 = v13;

  v25 = sub_21BCB0780();
  sub_21BCB1208(a2, &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CommLimitsManagedCell);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_21BCB1054(&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  *(v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v17 = a1;
  v18 = sub_21BCB0880();
  v19 = *(v7 + 44);
  a3[13] = type metadata accessor for CommLimitsItem(0);
  a3[14] = sub_21BCB11C0(&qword_27CDB9008, type metadata accessor for CommLimitsItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3 + 10);
  result = sub_21BCB1208(a2 + v19, boxed_opaque_existential_1, type metadata accessor for CommLimitsItem);
  v22 = v26;
  *a3 = v29;
  a3[1] = v22;
  v23 = v27;
  a3[2] = v28;
  a3[3] = v12;
  a3[4] = v23;
  a3[5] = v14;
  a3[6] = v25;
  a3[7] = sub_21BCB1138;
  a3[8] = v16;
  a3[9] = v18;
  a3[15] = 0;
  return result;
}

uint64_t sub_21BCB1054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommLimitsManagedCell();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCB10B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for CommLimitsManagedCell() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_21BCB0E44(a1, v6, a2);
}

uint64_t sub_21BCB11C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BCB1208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21BCB1290()
{
  result = qword_27CDB9010;
  if (!qword_27CDB9010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9018, &qword_21BE3E768);
    sub_21BCB131C();
    sub_21BCB1380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9010);
  }

  return result;
}

unint64_t sub_21BCB131C()
{
  result = qword_27CDB9020;
  if (!qword_27CDB9020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9028, &qword_21BE3E770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9020);
  }

  return result;
}

unint64_t sub_21BCB1380()
{
  result = qword_27CDB9030;
  if (!qword_27CDB9030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9030);
  }

  return result;
}

uint64_t type metadata accessor for FamilyRowView()
{
  result = qword_27CDB9048;
  if (!qword_27CDB9048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BCB1448()
{
  sub_21BCB1514(319, &qword_27CDB9058, MEMORY[0x277CDF3E0]);
  if (v0 <= 0x3F)
  {
    sub_21BCB1514(319, &qword_27CDB9060, MEMORY[0x277CE0358]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21BCB1514(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21BE26E8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21BCB1584@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BE2754C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7D48, &qword_21BE39B88);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for FamilyRowView();
  sub_21BBA3854(v1 + *(v12 + 20), v11, &qword_27CDB7D48, &qword_21BE39B88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21BE26E6C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_21BE28FEC();
    v16 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

void sub_21BCB178C(uint64_t a1@<X8>)
{
  v56 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB90B0, &qword_21BE3E8A0);
  v1 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v3 = &v46 - v2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB90B8, &qword_21BE3E8A8);
  v4 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v54 = (&v46 - v5);
  v6 = sub_21BE2838C();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6);
  v46 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21BE26A4C();
  v50 = *(v9 - 8);
  v51 = v9;
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v9);
  v49 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v46 - v14;
  v16 = sub_21BE25B9C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v52 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21BE26E6C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v46 - v26;
  sub_21BCB1584(&v46 - v26);
  (*(v21 + 104))(v25, *MEMORY[0x277CDF3C0], v20);
  v28 = sub_21BE26E5C();
  v29 = *(v21 + 8);
  v29(v25, v20);
  v29(v27, v20);
  if (qword_280BD86B0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v30 = &v58;
  if ((v28 & 1) == 0)
  {
    v30 = &v57;
  }

  v31 = *v30;

  sub_21BE25B7C();

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_21BB3A4CC(v15, &unk_27CDB57F0, &qword_21BE328A0);
LABEL_8:
    *v3 = sub_21BE275DC();
    *(v3 + 1) = 0;
    v3[16] = 1;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB90C0, &qword_21BE3E8F8);
    sub_21BCB1F50(&v3[*(v33 + 44)]);
    sub_21BBA3854(v3, v54, &qword_27CDB90B0, &qword_21BE3E8A0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB90C8, &qword_21BE3E900);
    sub_21BCB2D08();
    sub_21BB3B038(&qword_27CDB90D8, &qword_27CDB90B0, &qword_21BE3E8A0);
    sub_21BE2784C();
    sub_21BB3A4CC(v3, &qword_27CDB90B0, &qword_21BE3E8A0);
    return;
  }

  v32 = v52;
  (*(v17 + 32))(v52, v15, v16);
  v34 = sub_21BE25BAC();
  v36 = v35;
  v37 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v38 = sub_21BE25BCC();
  v39 = [v37 initWithData_];

  sub_21BBBEF94(v34, v36);
  (*(v17 + 8))(v32, v16);
  if (!v39)
  {
    goto LABEL_8;
  }

  v40 = v39;
  sub_21BE2836C();
  v42 = v46;
  v41 = v47;
  v43 = v48;
  (*(v47 + 104))(v46, *MEMORY[0x277CE0FE0], v48);
  v44 = sub_21BE283CC();

  (*(v41 + 8))(v42, v43);
  v45 = v54;
  *v54 = v44;
  v45[1] = 0;
  *(v45 + 8) = 1;
  swift_storeEnumTagMultiPayload();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB90C8, &qword_21BE3E900);
  sub_21BCB2D08();
  sub_21BB3B038(&qword_27CDB90D8, &qword_27CDB90B0, &qword_21BE3E8A0);
  sub_21BE2784C();
}

uint64_t sub_21BCB1F50@<X0>(void *a1@<X8>)
{
  v24 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB90E0, &qword_21BE3E908);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB90E8, &qword_21BE3EFE0);
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v14 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v15 = sub_21BE289CC();
  [v14 initWithType_];

  sub_21BE269CC();
  sub_21BB3B038(&qword_27CDB90F0, &qword_27CDB90E0, &qword_21BE3E908);
  sub_21BE27DCC();
  (*(v2 + 8))(v5, v1);
  v16 = v7[2];
  v16(v11, v13, v6);
  v17 = v24;
  *v24 = 0;
  *(v17 + 8) = 1;
  v18 = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB90F8, &unk_21BE3E910);
  v16(&v18[*(v19 + 48)], v11, v6);
  v20 = &v18[*(v19 + 64)];
  *v20 = 0;
  v20[8] = 1;
  v21 = v7[1];
  v21(v13, v6);
  return (v21)(v11, v6);
}

uint64_t sub_21BCB2224@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BE2626C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9068, &qword_21BE3E7F8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  *v11 = sub_21BE275DC();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9070, &qword_21BE3E800);
  sub_21BCB2408(v1, &v11[*(v12 + 44)]);
  if (*v1)
  {
    v13 = *(v1 + 8);
    v14 = *v1;
    sub_21BE2909C();
    if ((v13 - 1) < 2)
    {
      v15 = sub_21BE2625C();
    }

    else
    {
      if ((v13 - 3) >= 2)
      {
LABEL_8:

        (*(v4 + 8))(v7, v3);
        goto LABEL_9;
      }

      v15 = sub_21BE2624C();
    }

    v13 = v15;
    goto LABEL_8;
  }

  v13 = 0;
LABEL_9:
  sub_21BBB7D84(v11, a1, &qword_27CDB9068, &qword_21BE3E7F8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9078, &qword_21BE3E808);
  v17 = a1 + *(result + 36);
  *v17 = v13;
  *(v17 + 8) = 0;
  return result;
}

uint64_t sub_21BCB2408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = sub_21BE2788C();
  v95 = *(v3 - 8);
  v96 = v3;
  v4 = *(v95 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v94 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v93 = &v87 - v7;
  v8 = sub_21BE2626C();
  v89 = *(v8 - 8);
  v90 = v8;
  v9 = *(v89 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9080, &qword_21BE3E810);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v87 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9088, &qword_21BE3E818);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v87 - v18;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9090, &qword_21BE3E820);
  v20 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v22 = &v87 - v21;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9098, &qword_21BE3E828);
  v23 = *(*(v92 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v92);
  v99 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v87 - v27;
  MEMORY[0x28223BE20](v26);
  v98 = &v87 - v29;
  sub_21BCB178C(v15);
  if (!*a1)
  {
    goto LABEL_4;
  }

  v30 = *a1;
  v88 = v28;
  v31 = v16;
  v32 = v30;
  sub_21BE2909C();
  v33 = sub_21BE2620C();

  v16 = v31;
  v28 = v88;
  (*(v89 + 8))(v11, v90);
  if (v33)
  {
    sub_21BE2869C();
  }

  else
  {
LABEL_4:
    sub_21BE286AC();
  }

  sub_21BE26F2C();
  sub_21BBB7D84(v15, v19, &qword_27CDB9080, &qword_21BE3E810);
  v34 = &v19[*(v16 + 36)];
  v35 = *(&v126[8] + 8);
  *v34 = *(&v126[7] + 8);
  *(v34 + 1) = v35;
  *(v34 + 2) = *(&v126[9] + 8);
  sub_21BE2869C();
  sub_21BE2725C();
  sub_21BBB7D84(v19, v22, &qword_27CDB9088, &qword_21BE3E818);
  v36 = &v22[*(v91 + 36)];
  v37 = *(&v126[15] + 8);
  *(v36 + 4) = *(&v126[14] + 8);
  *(v36 + 5) = v37;
  *(v36 + 6) = *(&v126[16] + 8);
  v38 = *(&v126[11] + 8);
  *v36 = *(&v126[10] + 8);
  *(v36 + 1) = v38;
  v39 = *(&v126[13] + 8);
  *(v36 + 2) = *(&v126[12] + 8);
  *(v36 + 3) = v39;
  sub_21BBB7D84(v22, v28, &qword_27CDB9090, &qword_21BE3E820);
  v28[*(v92 + 36)] = 1;
  sub_21BBB7D84(v28, v98, &qword_27CDB9098, &qword_21BE3E828);
  v40 = *(a1 + 8);
  v41 = *(a1 + 16);
  v42 = *(a1 + 24);
  v105 = *a1;
  LOBYTE(v106) = v40;
  v107 = v41;
  v108 = v42;
  v43 = v105;

  v44 = sub_21BC27368();
  v46 = v45;
  v47 = v105;

  v105 = v44;
  v106 = v46;
  sub_21BB41FA4();
  v48 = sub_21BE27DBC();
  v50 = v49;
  v52 = v51;
  v53 = a1 + *(type metadata accessor for FamilyRowView() + 24);
  v54 = v93;
  sub_21BD205E0(v93);
  v55 = v94;
  sub_21BE2787C();
  LOBYTE(v53) = sub_21BE2786C();
  v56 = *(v95 + 8);
  v57 = v55;
  v58 = v96;
  v56(v57, v96);
  v56(v54, v58);
  if (v53)
  {
    sub_21BE282FC();
  }

  else
  {
    sub_21BE2832C();
  }

  v59 = sub_21BE27D4C();
  v93 = v59;
  v95 = v60;
  v96 = v61;
  v63 = v62;

  sub_21BBC7C7C(v48, v50, v52 & 1);

  KeyPath = swift_getKeyPath();
  v92 = KeyPath;
  v65 = swift_getKeyPath();
  v125 = v63 & 1;
  v66 = v63 & 1;
  LODWORD(v94) = v63 & 1;
  v123 = 0;
  sub_21BE286AC();
  sub_21BE2725C();
  *(&v126[3] + 7) = *(&v126[20] + 8);
  *(&v126[4] + 7) = *(&v126[21] + 8);
  *(&v126[5] + 7) = *(&v126[22] + 8);
  *(&v126[6] + 7) = *(&v126[23] + 8);
  *(v126 + 7) = *(&v126[17] + 8);
  *(&v126[1] + 7) = *(&v126[18] + 8);
  *(&v126[2] + 7) = *(&v126[19] + 8);
  v68 = v98;
  v67 = v99;
  sub_21BBA3854(v98, v99, &qword_27CDB9098, &qword_21BE3E828);
  v69 = v67;
  v70 = v97;
  sub_21BBA3854(v69, v97, &qword_27CDB9098, &qword_21BE3E828);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB90A0, &qword_21BE3E890);
  v72 = v70 + v71[12];
  *v72 = 0;
  *(v72 + 8) = 1;
  v73 = v70 + v71[16];
  v74 = v95;
  v75 = v96;
  *&v100 = v59;
  *(&v100 + 1) = v95;
  LOBYTE(v101) = v66;
  *(&v101 + 1) = *v124;
  DWORD1(v101) = *&v124[3];
  *(&v101 + 1) = v96;
  *&v102 = KeyPath;
  *(&v102 + 1) = 1;
  LOBYTE(v103) = 0;
  *(&v103 + 1) = *v122;
  DWORD1(v103) = *&v122[3];
  *(&v103 + 1) = v65;
  v104[0] = 1;
  *&v104[1] = v126[0];
  *&v104[49] = v126[3];
  *&v104[33] = v126[2];
  *&v104[17] = v126[1];
  *&v104[112] = *(&v126[6] + 15);
  *&v104[97] = v126[6];
  *&v104[81] = v126[5];
  *&v104[65] = v126[4];
  v76 = v100;
  v77 = v101;
  v78 = v103;
  *(v73 + 32) = v102;
  *(v73 + 48) = v78;
  *v73 = v76;
  *(v73 + 16) = v77;
  v79 = *v104;
  v80 = *&v104[16];
  v81 = *&v104[48];
  *(v73 + 96) = *&v104[32];
  *(v73 + 112) = v81;
  *(v73 + 64) = v79;
  *(v73 + 80) = v80;
  v82 = *&v104[64];
  v83 = *&v104[80];
  v84 = *&v104[96];
  *(v73 + 176) = *&v104[112];
  *(v73 + 144) = v83;
  *(v73 + 160) = v84;
  *(v73 + 128) = v82;
  v85 = v70 + v71[20];
  *v85 = 0;
  *(v85 + 8) = 1;
  sub_21BBA3854(&v100, &v105, &qword_27CDB90A8, &qword_21BE3E898);
  sub_21BB3A4CC(v68, &qword_27CDB9098, &qword_21BE3E828);
  v119 = v126[4];
  v120 = v126[5];
  *v121 = v126[6];
  v115 = v126[0];
  v116 = v126[1];
  v117 = v126[2];
  v105 = v93;
  v106 = v74;
  LOBYTE(v107) = v94;
  *(&v107 + 1) = *v124;
  HIDWORD(v107) = *&v124[3];
  v108 = v75;
  v109 = v92;
  v110 = 1;
  v111 = 0;
  *v112 = *v122;
  *&v112[3] = *&v122[3];
  v113 = v65;
  v114 = 1;
  *&v121[15] = *(&v126[6] + 15);
  v118 = v126[3];
  sub_21BB3A4CC(&v105, &qword_27CDB90A8, &qword_21BE3E898);
  return sub_21BB3A4CC(v99, &qword_27CDB9098, &qword_21BE3E828);
}

unint64_t sub_21BCB2D08()
{
  result = qword_27CDB90D0;
  if (!qword_27CDB90D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB90C8, &qword_21BE3E900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB90D0);
  }

  return result;
}

unint64_t sub_21BCB2D8C()
{
  result = qword_27CDB9100;
  if (!qword_27CDB9100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9078, &qword_21BE3E808);
    sub_21BB3B038(&qword_27CDB9108, &qword_27CDB9068, &qword_21BE3E7F8);
    sub_21BCB2E44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9100);
  }

  return result;
}

unint64_t sub_21BCB2E44()
{
  result = qword_27CDB9110;
  if (!qword_27CDB9110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9110);
  }

  return result;
}

id sub_21BCB2FC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecoveryContactSetUpViewControllerWrapper.AAUICustodianSetupDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21BCB304C()
{
  result = qword_27CDB9128;
  if (!qword_27CDB9128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9128);
  }

  return result;
}

uint64_t sub_21BCB30AC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RecoveryContactSetUpViewControllerWrapper.Coordinator();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_21BCB30E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BCB31D4();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21BCB3148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BCB31D4();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21BCB31AC()
{
  sub_21BCB31D4();
  sub_21BE27ABC();
  __break(1u);
}

unint64_t sub_21BCB31D4()
{
  result = qword_27CDB9130;
  if (!qword_27CDB9130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9130);
  }

  return result;
}

uint64_t sub_21BCB3228(uint64_t a1, void *a2, char a3)
{
  v5 = sub_21BE2754C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v10 = a2;
  }

  else
  {

    sub_21BE28FEC();
    v11 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BBC9024(a2, 0);
    (*(v6 + 8))(v9, v5);
    a2 = v17;
  }

  if (a2)
  {
    v12 = [objc_allocWithZone(MEMORY[0x277CECA00]) initWithAccountManager_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9138, &qword_21BE3EAE8);
    sub_21BE27B1C();

    v13 = v17[2];
    v17[2] = v12;
    v14 = v12;

    return v14;
  }

  else
  {
    result = sub_21BE2978C();
    __break(1u);
  }

  return result;
}

_OWORD *sub_21BCB3464@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = v1[1];
  v5 = v1[2];
  v20 = *v1;
  v21 = v4;
  v22[0] = v5;
  *(v22 + 9) = *(v1 + 41);
  v6 = *(v1 + 8);
  v23 = *(v1 + 40);
  v24 = v6;
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  sub_21BBC8120(&v24, v19);
  sub_21BBC8120(&v23, v19);
  sub_21BCB36E0(v2, v19);
  v9 = [v8 bundleForClass_];
  v10 = sub_21BE289CC();
  v11 = [objc_opt_self() imageNamed:v10 inBundle:v9 withConfiguration:0];

  if (v11)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    v12 = [v8 bundleForClass_];
    v13 = sub_21BE2599C();
    v15 = v14;

    *(a1 + 104) = &type metadata for IcloudPlusDataItem;
    *(a1 + 112) = sub_21BBE4198();
    result = swift_allocObject();
    *(a1 + 72) = 0;
    *(a1 + 80) = result;
    v17 = v21;
    result[1] = v20;
    result[2] = v17;
    result[3] = v22[0];
    *(result + 57) = *(v22 + 9);
    v18 = v23;
    *a1 = v24;
    *(a1 + 16) = v18;
    *(a1 + 32) = v11;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = v13;
    *(a1 + 64) = v15;
    *(a1 + 120) = 0;
  }

  else
  {
    result = sub_21BE2978C();
    __break(1u);
  }

  return result;
}

_OWORD *sub_21BCB369C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *v5 = v1[2];
  *&v5[9] = *(v1 + 41);
  return sub_21BCB3464(a1);
}

uint64_t sub_21BCB3718@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21BE2754C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for AgeRangeSharingView();
  sub_21BBA3854(v1 + *(v12 + 44), v11, &qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21BE27B0C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_21BE28FEC();
    v16 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_21BCB3920@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_21BE283EC();
  *(a3 + 8) = v14;
  *(a3 + 16) = v15;
  [objc_allocWithZone(type metadata accessor for ScreentimePasscodeListener()) init];
  sub_21BE283EC();
  *(a3 + 24) = v14;
  *(a3 + 32) = v15;
  sub_21BE283EC();
  *(a3 + 40) = v14;
  *(a3 + 48) = v15;
  v6 = type metadata accessor for AgeRangeSharingView();
  v7 = v6[8];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + v6[9];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = v6[10];
  *(a3 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B90, &qword_21BE43960);
  swift_storeEnumTagMultiPayload();
  v10 = v6[11];
  *(a3 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  swift_storeEnumTagMultiPayload();
  v11 = v6[12];
  *(a3 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  result = swift_storeEnumTagMultiPayload();
  v13 = (a3 + v6[14]);
  *v13 = 0xD00000000000001DLL;
  v13[1] = 0x800000021BE5B930;
  *(a3 + v6[13]) = a2;
  *a3 = a1;
  return result;
}

uint64_t type metadata accessor for AgeRangeSharingView()
{
  result = qword_27CDB9140;
  if (!qword_27CDB9140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BCB3B6C(void *a1)
{
  if (a1)
  {
    v1 = [a1 navigationController];
    if (v1)
    {
      v2 = v1;
    }
  }
}

uint64_t sub_21BCB3BE4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v100 = a1;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9160, &qword_21BE3ED28);
  v105 = swift_allocBox();
  v86 = v3;
  v4 = *v1;
  type metadata accessor for AgeRangeSharingViewModel();
  v88 = sub_21BCBEAF0(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);

  sub_21BE2864C();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9168, &qword_21BE3ED30);
  v98 = *(v5 - 8);
  v99 = v5;
  v6 = *(v98 + 64);
  MEMORY[0x28223BE20](v5);
  v97 = &v82 - v7;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9170, &unk_21BE3ED38);
  v95 = *(v96 - 8);
  v8 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v94 = &v82 - v9;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5078, &unk_21BE31050);
  v90 = *(v93 - 8);
  v10 = *(v90 + 64);
  MEMORY[0x28223BE20](v93);
  v103 = &v82 - v11;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9178, &qword_21BE3ED48);
  v89 = *(v104 - 8);
  v12 = v89[8];
  MEMORY[0x28223BE20](v104);
  v102 = &v82 - v13;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9180, &unk_21BE3ED50);
  v14 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v16 = &v82 - v15;
  sub_21BCB4AFC(v1, &v82 - v15);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v91 = objc_opt_self();
  v92 = ObjCClassFromMetadata;
  v18 = [v91 bundleForClass_];
  v19 = sub_21BE2599C();
  v21 = v20;

  v114 = v19;
  v115 = v21;
  v85 = v2;
  v22 = *(v2 + 48);
  LOBYTE(v116) = *(v2 + 40);
  v117 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8130, &qword_21BE3ED60);
  v83 = sub_21BB3B038(&qword_27CDB9188, &qword_27CDB9180, &unk_21BE3ED50);
  v24 = sub_21BB41FA4();
  v84 = sub_21BB3B038(&qword_27CDB8138, &qword_27CDB8130, &qword_21BE3ED60);
  v25 = v105;
  sub_21BE280EC();

  v26 = sub_21BB3A4CC(v16, &qword_27CDB9180, &unk_21BE3ED50);
  v27 = v87;
  v28 = *(v87 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  v31 = &v82 - v30;
  (*(v28 + 16))(&v82 - v30, v86, v27);
  sub_21BE2862C();
  (*(v28 + 8))(v31, v27);
  v32 = v106;
  v33 = sub_21BE25D6C();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v82 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v106 = v32;
  sub_21BE25F1C();

  v38 = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__dismissToken;
  swift_beginAccess();
  (*(v34 + 16))(v37, v32 + v38, v33);

  v39 = type metadata accessor for AgeRangeSharingView();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39 - 8);
  sub_21BCBC8BC(v85, &v82 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v43 = swift_allocObject();
  sub_21BCBC92C(&v82 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0), v43 + v42);
  *(v43 + ((v41 + v42 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
  v44 = v25;

  v106 = v101;
  v107 = MEMORY[0x277D837D0];
  v108 = v23;
  v109 = MEMORY[0x277CE0BD8];
  v110 = v83;
  v101 = v24;
  v111 = v24;
  v112 = v84;
  v113 = MEMORY[0x277CE0BC8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = sub_21BCBEAF0(&qword_27CDB78D8, MEMORY[0x277CC95F0]);
  v47 = v104;
  v88 = v46;
  v48 = v102;
  sub_21BE281CC();

  (*(v34 + 8))(v37, v33);
  (v89[1])(v48, v47);
  sub_21BE28D7C();

  v49 = sub_21BE28D6C();
  v50 = swift_allocObject();
  v51 = MEMORY[0x277D85700];
  v50[2] = v49;
  v50[3] = v51;
  v50[4] = v44;
  v52 = sub_21BE28DAC();
  v53 = *(v52 - 8);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  v55 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  v56 = &v82 - v55;
  sub_21BE28D8C();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v87 = sub_21BE2715C();
    v89 = &v82;
    v86 = *(v87 - 8);
    v57 = *(v86 + 64);
    MEMORY[0x28223BE20](v87);
    v102 = v33;
    v85 = &v82 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
    v106 = 0;
    v107 = 0xE000000000000000;
    sub_21BE295EC();

    v106 = 0xD000000000000035;
    v107 = 0x800000021BE5B970;
    v116 = 131;
    v59 = sub_21BE2992C();
    MEMORY[0x21CF03CA0](v59);

    MEMORY[0x28223BE20](v60);
    (*(v53 + 16))(&v82 - v55, &v82 - v55, v52);
    v61 = v85;
    sub_21BE2714C();
    (*(v53 + 8))(v56, v52);
    v62 = v94;
    v63 = v93;
    (*(v90 + 32))(v94, v103, v93);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5080, &qword_21BE3EDA0);
    v33 = v102;
    (*(v86 + 32))(&v62[*(v64 + 36)], v61, v87);
  }

  else
  {
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5088, &unk_21BE31060);
    v66 = v94;
    v67 = &v94[*(v65 + 36)];
    v68 = sub_21BE2701C();
    v62 = v66;
    (*(v53 + 32))(&v67[*(v68 + 20)], &v82 - v55, v52);
    *v67 = &unk_21BE3ED98;
    *(v67 + 1) = v50;
    v63 = v93;
    (*(v90 + 32))(v66, v103, v93);
  }

  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9190, &qword_21BE3EDA8);
  v106 = v104;
  v107 = v33;
  v108 = OpaqueTypeConformance2;
  v109 = v88;
  v70 = swift_getOpaqueTypeConformance2();
  v106 = v63;
  v107 = v70;
  v71 = swift_getOpaqueTypeConformance2();
  v72 = sub_21BCBD140(&qword_27CDB9198, &qword_27CDB9190, &qword_21BE3EDA8, sub_21BCBCACC);
  v73 = v97;
  v74 = MEMORY[0x277D837D0];
  v75 = v96;
  sub_21BE2807C();

  (*(v95 + 8))(v62, v75);
  v76 = [v91 bundleForClass_];
  v77 = sub_21BE2599C();
  v79 = v78;

  v116 = v77;
  v117 = v79;
  v106 = v75;
  v107 = v74;
  v108 = v69;
  v109 = v71;
  v110 = MEMORY[0x277D837E0];
  v111 = v72;
  swift_getOpaqueTypeConformance2();
  v80 = v99;
  sub_21BE27E4C();

  (*(v98 + 8))(v73, v80);
}

uint64_t sub_21BCB4AFC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB91C0, &qword_21BE3EE50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB91C8, &qword_21BE3EE58);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v46 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = &v43 - v12;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB91D0, &qword_21BE3EE60);
  v48 = *(v44 - 8);
  v13 = *(v48 + 64);
  v14 = MEMORY[0x28223BE20](v44);
  v53 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB91D8, &qword_21BE3EE68);
  v45 = *(v47 - 8);
  v18 = *(v45 + 64);
  v19 = MEMORY[0x28223BE20](v47);
  v51 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v43 - v21;
  v56 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB91E0, &qword_21BE3EE70);
  v23 = sub_21BE288DC();
  v24 = sub_21BCBEAF0(&qword_27CDB91E8, MEMORY[0x277D4D7F8]);
  *&v57[0] = v23;
  *(&v57[0] + 1) = v24;
  swift_getOpaqueTypeConformance2();
  v50 = v22;
  sub_21BE2860C();
  v55 = a1;
  sub_21BCB5C4C(v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB91F0, &qword_21BE3EE78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB91F8, &qword_21BE3EE80);
  sub_21BCBCF54();
  sub_21BCBD00C();
  v52 = v17;
  sub_21BE2861C();
  v25 = *a1;
  swift_getKeyPath();
  *&v57[0] = v25;
  sub_21BCBEAF0(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  if ((*(v25 + 56) & 1) != 0 || *(v25 + 52) != 3)
  {
    MEMORY[0x28223BE20](v26);
    *(&v43 - 2) = a1;
    sub_21BCB6820(v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9230, &qword_21BE3EE98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9228, &qword_21BE3EE90);
    sub_21BCBD140(&qword_27CDB9238, &qword_27CDB9230, &qword_21BE3EE98, sub_21BCBD1C4);
    sub_21BCBD090();
    sub_21BE2861C();
    (*(v4 + 32))(v54, v7, v3);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = v54;
  (*(v4 + 56))(v54, v27, 1, v3);
  v29 = v45;
  v30 = *(v45 + 16);
  v31 = v51;
  v32 = v47;
  v30(v51, v50, v47);
  v33 = v48;
  v43 = *(v48 + 16);
  v34 = v44;
  v43(v53, v52, v44);
  v35 = v28;
  v36 = v46;
  sub_21BBA3854(v35, v46, &qword_27CDB91C8, &qword_21BE3EE58);
  v37 = v49;
  v30(v49, v31, v32);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9280, &unk_21BE3EEC0);
  v39 = v53;
  v43(&v37[*(v38 + 48)], v53, v34);
  sub_21BBA3854(v36, &v37[*(v38 + 64)], &qword_27CDB91C8, &qword_21BE3EE58);
  sub_21BB3A4CC(v54, &qword_27CDB91C8, &qword_21BE3EE58);
  v40 = *(v33 + 8);
  v40(v52, v34);
  v41 = *(v29 + 8);
  v41(v50, v32);
  sub_21BB3A4CC(v36, &qword_27CDB91C8, &qword_21BE3EE58);
  v40(v39, v34);
  return (v41)(v51, v32);
}

uint64_t sub_21BCB5264@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = type metadata accessor for AgeRangeSharingView();
  v26 = *(v1 - 8);
  v2 = *(v26 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_21BE288DC();
  v4 = *(v3 - 8);
  v28 = v3;
  v29 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  v10 = [v9 bundleForClass_];
  v11 = sub_21BE2599C();
  v25[1] = v12;
  v25[2] = v11;

  v31 = 0;
  v32 = 0xE000000000000000;
  sub_21BE295EC();
  v13 = [v9 bundleForClass_];
  v14 = sub_21BE2599C();
  v16 = v15;

  v31 = v14;
  v32 = v16;
  MEMORY[0x21CF03CA0](23328, 0xE200000000000000);
  v17 = [v9 bundleForClass_];
  v18 = sub_21BE2599C();
  v20 = v19;

  MEMORY[0x21CF03CA0](v18, v20);

  MEMORY[0x21CF03CA0](0xD000000000000018, 0x800000021BE5BB10);
  sub_21BE288CC();
  sub_21BCBC8BC(v27, v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v22 = swift_allocObject();
  sub_21BCBC92C(v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  sub_21BCBEAF0(&qword_27CDB91E8, MEMORY[0x277D4D7F8]);
  v23 = v28;
  sub_21BE27E2C();

  return (*(v29 + 8))(v7, v23);
}

uint64_t sub_21BCB5648@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB92E0, &qword_21BE3F018);
  v4 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v6 = v31 - v5;
  v7 = type metadata accessor for AgeRangeSharingView();
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9210, &qword_21BE3EE88);
  v34 = *(v36 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v33 = v31 - v10;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = sub_21BE2599C();
  v15 = v14;

  v16 = *v2;
  swift_getKeyPath();
  v37 = v16;
  sub_21BCBEAF0(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  if (*(v16 + 56))
  {
    v37 = v13;
    v38 = v15;
    sub_21BB41FA4();
    *v6 = sub_21BE27DBC();
    *(v6 + 1) = v17;
    v6[16] = v18 & 1;
    *(v6 + 3) = v19;
    swift_storeEnumTagMultiPayload();
    sub_21BB3B038(&qword_27CDB9208, &qword_27CDB9210, &qword_21BE3EE88);
    return sub_21BE2784C();
  }

  else
  {
    v31[3] = *(v16 + 52);
    v39 = v13;
    v40 = v15;
    sub_21BCBC8BC(v2, v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_21BE28D7C();
    v21 = sub_21BE28D6C();
    v22 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v23 = swift_allocObject();
    v32 = a1;
    v24 = MEMORY[0x277D85700];
    *(v23 + 16) = v21;
    *(v23 + 24) = v24;
    sub_21BCBC92C(v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
    sub_21BCBC8BC(v2, v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = sub_21BE28D6C();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = v24;
    sub_21BCBC92C(v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v22);
    type metadata accessor for AgeRangeGlobalState(0);
    v27 = sub_21BE2857C();
    MEMORY[0x28223BE20](v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB92E8, &qword_21BE3F020);
    sub_21BCBEAF0(&qword_27CDB92F0, type metadata accessor for AgeRangeGlobalState);
    sub_21BB3B038(&qword_27CDB92F8, &qword_27CDB92E8, &qword_21BE3F020);
    sub_21BB41FA4();
    sub_21BCBD7CC();
    v28 = v33;
    sub_21BE2849C();
    v29 = v34;
    v30 = v36;
    (*(v34 + 16))(v6, v28, v36);
    swift_storeEnumTagMultiPayload();
    sub_21BB3B038(&qword_27CDB9208, &qword_27CDB9210, &qword_21BE3EE88);
    sub_21BE2784C();
    return (*(v29 + 8))(v28, v30);
  }
}

double sub_21BCB5C4C@<D0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8858, &qword_21BE3CA18);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v43 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9160, &qword_21BE3ED28);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v43 - v9;
  v11 = swift_projectBox();
  (*(v7 + 16))(v10, v11, v6);
  sub_21BE2862C();
  (*(v7 + 8))(v10, v6);
  v12 = v57;
  swift_getKeyPath();
  *&v57 = v12;
  sub_21BCBEAF0(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v13 = *(v12 + 81);

  if (v13)
  {
    sub_21BCBD3F8(&v57);
  }

  else
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    v16 = sub_21BE2599C();
    v18 = v17;

    *&v57 = v16;
    *(&v57 + 1) = v18;
    sub_21BB41FA4();
    v19 = sub_21BE27DBC();
    v21 = v20;
    v23 = v22;
    v24 = sub_21BE27C1C();
    (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
    sub_21BE27C5C();
    sub_21BB3A4CC(v5, &qword_27CDB8858, &qword_21BE3CA18);
    v25 = sub_21BE27D9C();
    v27 = v26;
    v29 = v28;
    v43 = v30;

    sub_21BBC7C7C(v19, v21, v23 & 1);

    sub_21BE2833C();
    v44 = sub_21BE27D4C();
    v32 = v31;
    LOBYTE(v19) = v33;
    v35 = v34;

    sub_21BBC7C7C(v25, v27, v29 & 1);

    KeyPath = swift_getKeyPath();
    sub_21BE286AC();
    sub_21BE2725C();
    *&v48[23] = v51;
    *&v48[7] = v50;
    *&v48[55] = v53;
    *&v48[71] = v54;
    *&v48[87] = v55;
    *&v48[103] = v56;
    *&v48[39] = v52;
    *(&v47[4] + 9) = *&v48[64];
    *(&v47[5] + 9) = *&v48[80];
    *(&v47[6] + 9) = *&v48[96];
    *(v47 + 9) = *v48;
    *(&v47[1] + 9) = *&v48[16];
    *(&v47[2] + 9) = *&v48[32];
    v49 = v19 & 1;
    *&v45 = v44;
    *(&v45 + 1) = v32;
    LOBYTE(v46) = v19 & 1;
    *(&v46 + 1) = v35;
    *&v47[0] = KeyPath;
    BYTE8(v47[0]) = 0;
    *(&v47[7] + 1) = *(&v56 + 1);
    *(&v47[3] + 9) = *&v48[48];
    nullsub_1(&v45);
    v63 = v47[4];
    v64 = v47[5];
    v65 = v47[6];
    v66 = v47[7];
    v59 = v47[0];
    v60 = v47[1];
    v61 = v47[2];
    v62 = v47[3];
    v57 = v45;
    v58 = v46;
  }

  v37 = v64;
  a1[6] = v63;
  a1[7] = v37;
  v38 = v66;
  a1[8] = v65;
  a1[9] = v38;
  v39 = v60;
  a1[2] = v59;
  a1[3] = v39;
  v40 = v62;
  a1[4] = v61;
  a1[5] = v40;
  result = *&v57;
  v42 = v58;
  *a1 = v57;
  a1[1] = v42;
  return result;
}

uint64_t sub_21BCB6140@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = type metadata accessor for AgeRangeSharingView();
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9268, &qword_21BE3EEB0);
  v32 = *(v35 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v35);
  v31 = &KeyPath - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9288, &qword_21BE3EF00);
  v7 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v9 = &KeyPath - v8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9290, &qword_21BE3EF08);
  v10 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v12 = &KeyPath - v11;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9248, &qword_21BE3EEA0);
  v13 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v15 = &KeyPath - v14;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9258, &qword_21BE3EEA8);
  v16 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v18 = &KeyPath - v17;
  v19 = *v1;
  swift_getKeyPath();
  v39 = v19;
  sub_21BCBEAF0(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  if (*(v19 + 32))
  {
    if (*(v19 + 32) == 1)
    {
      swift_storeEnumTagMultiPayload();
      sub_21BCBD1C4();
      return sub_21BE2784C();
    }

    else
    {
      *v18 = sub_21BE275DC();
      *(v18 + 1) = 0;
      v18[16] = 1;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB92A8, &qword_21BE3EF78);
      sub_21BCB9D6C(&v18[*(v27 + 44)]);
      sub_21BBA3854(v18, v12, &qword_27CDB9258, &qword_21BE3EEA8);
      swift_storeEnumTagMultiPayload();
      sub_21BB3B038(&qword_27CDB9250, &qword_27CDB9258, &qword_21BE3EEA8);
      sub_21BCBD27C();
      sub_21BE2784C();
      sub_21BBA3854(v15, v9, &qword_27CDB9248, &qword_21BE3EEA0);
      swift_storeEnumTagMultiPayload();
      sub_21BCBD1C4();
      sub_21BE2784C();
      sub_21BB3A4CC(v15, &qword_27CDB9248, &qword_21BE3EEA0);
      return sub_21BB3A4CC(v18, &qword_27CDB9258, &qword_21BE3EEA8);
    }
  }

  else
  {
    v39 = *(v19 + 24);
    v21 = v39;
    KeyPath = swift_getKeyPath();
    sub_21BCBC8BC(v2, &KeyPath - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v23 = swift_allocObject();
    sub_21BCBC92C(&KeyPath - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
    v29 = v21;
    sub_21BCBD3B8(v21, 0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9298, &qword_21BE3EF70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9278, &qword_21BE3EEB8);
    sub_21BB3B038(&qword_27CDB92A0, &qword_27CDB9298, &qword_21BE3EF70);
    sub_21BB3B038(&qword_27CDB9270, &qword_27CDB9278, &qword_21BE3EEB8);
    v24 = v31;
    sub_21BE285BC();
    v25 = v32;
    v26 = v35;
    (*(v32 + 16))(v12, v24, v35);
    swift_storeEnumTagMultiPayload();
    sub_21BB3B038(&qword_27CDB9250, &qword_27CDB9258, &qword_21BE3EEA8);
    sub_21BCBD27C();
    sub_21BE2784C();
    sub_21BBA3854(v15, v9, &qword_27CDB9248, &qword_21BE3EEA0);
    swift_storeEnumTagMultiPayload();
    sub_21BCBD1C4();
    sub_21BE2784C();
    sub_21BCBD3D4(v29, 0);
    sub_21BB3A4CC(v15, &qword_27CDB9248, &qword_21BE3EEA0);
    return (*(v25 + 8))(v24, v26);
  }
}

double sub_21BCB6820@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8858, &qword_21BE3CA18);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v31 - v4;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v8 = sub_21BE2599C();
  v10 = v9;

  *&v34 = v8;
  *(&v34 + 1) = v10;
  sub_21BB41FA4();
  v11 = sub_21BE27DBC();
  v13 = v12;
  LOBYTE(v7) = v14;
  v15 = sub_21BE27C1C();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  sub_21BE27C5C();
  sub_21BB3A4CC(v5, &qword_27CDB8858, &qword_21BE3CA18);
  v16 = sub_21BE27D9C();
  v18 = v17;
  LOBYTE(v5) = v19;
  v31[1] = v20;

  sub_21BBC7C7C(v11, v13, v7 & 1);

  sub_21BE2833C();
  v32 = sub_21BE27D4C();
  v22 = v21;
  LOBYTE(v8) = v23;
  v25 = v24;

  sub_21BBC7C7C(v16, v18, v5 & 1);

  KeyPath = swift_getKeyPath();
  sub_21BE286AC();
  sub_21BE2725C();
  *(&v33[1] + 7) = v35;
  *(v33 + 7) = v34;
  *(&v33[3] + 7) = v37;
  *(&v33[4] + 7) = v38;
  *(&v33[5] + 7) = v39;
  *(&v33[6] + 7) = v40;
  *(&v33[2] + 7) = v36;
  v27 = v33[5];
  *(a1 + 105) = v33[4];
  *(a1 + 121) = v27;
  *(a1 + 137) = v33[6];
  v28 = v33[1];
  *(a1 + 41) = v33[0];
  *(a1 + 57) = v28;
  result = *&v33[2];
  v30 = v33[3];
  *(a1 + 73) = v33[2];
  *a1 = v32;
  *(a1 + 8) = v22;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v25;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  *(a1 + 152) = *(&v33[6] + 15);
  *(a1 + 89) = v30;
  return result;
}

uint64_t sub_21BCB6B68@<X0>(char *a1@<X8>)
{
  v50 = a1;
  v1 = sub_21BE271FC();
  v46 = *(v1 - 8);
  v47 = v1;
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v44 = *(v51 - 8);
  v5 = *(v44 + 64);
  v6 = MEMORY[0x28223BE20](v51);
  v49 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8160, &unk_21BE3AE60);
  v52 = *(v48 - 8);
  v10 = v52[8];
  v11 = MEMORY[0x28223BE20](v48);
  v45 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - v13;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();
  v17 = [v16 bundleForClass_];
  v18 = sub_21BE2599C();
  v20 = v19;

  v53 = v18;
  v54 = v20;
  sub_21BB41FA4();

  sub_21BE2845C();
  sub_21BE271EC();
  sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460);
  v21 = v14;
  v43 = v14;
  v22 = v51;
  sub_21BE27FBC();
  (*(v46 + 8))(v4, v47);
  v23 = v44;
  v47 = *(v44 + 8);
  v47(v9, v22);
  v24 = [v16 bundleForClass_];
  v25 = sub_21BE2599C();
  v27 = v26;

  v53 = v25;
  v54 = v27;
  v42 = v9;
  sub_21BE2845C();
  v28 = v52[2];
  v29 = v45;
  v30 = v21;
  v31 = v48;
  v28(v45, v30, v48);
  v32 = *(v23 + 16);
  v33 = v49;
  v34 = v9;
  v35 = v51;
  v32(v49, v34, v51);
  v36 = v50;
  v28(v50, v29, v31);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8168, &qword_21BE48080);
  v32(&v36[*(v37 + 48)], v33, v35);
  v38 = v47;
  v47(v42, v35);
  v39 = v52[1];
  v39(v43, v31);
  v38(v33, v35);
  return (v39)(v29, v31);
}

uint64_t sub_21BCB7070()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9160, &qword_21BE3ED28);
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0);
  v4 = &KeyPath - v3;
  v5 = swift_projectBox();
  v22 = v1[2];
  v23 = v5;
  v22(v4, v5, v0);
  sub_21BE2862C();
  v21 = v1[1];
  v21(v4, v0);
  v6 = v24;
  LODWORD(v24) = 1;
  BYTE4(v24) = 0;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v7 = *(v6 + 72);
  v8 = *(v6 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = 1;
  *(v9 + 32) = v7;
  *(v9 + 40) = v6;
  v20 = type metadata accessor for AgeRangeSharingViewModel;
  sub_21BCBEAF0(&qword_27CDB91B8, type metadata accessor for AgeRangeSharingViewModel);
  v10 = v8;
  swift_unknownObjectRetain();

  sub_21BE268AC();

  v12 = v22;
  v11 = v23;
  v22(v4, v23, v0);
  sub_21BE2862C();
  v13 = v21;
  v21(v4, v0);
  v14 = v24;
  v12(v4, v11, v0);
  sub_21BE2862C();
  v13(v4, v0);
  v15 = v24;
  swift_getKeyPath();
  v24 = v15;
  sub_21BCBEAF0(&qword_27CDB78D0, v20);
  sub_21BE25F1C();

  v16 = *(v15 + 52);
  LODWORD(v4) = *(v15 + 56);

  if (v4)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  _s14FamilyCircleUI23SettingsAnalyticsLoggerO21logOptionUpdatedEvent24ageRangeSharingViewModel5stateyAA03AgelmnO0C_So05FAAgeL11GlobalStateVtFZ_0(v14, v17);
}

uint64_t sub_21BCB7394@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_21BCB7474(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9160, &qword_21BE3ED28);
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - v4;
  v6 = sub_21BE27B0C();
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v6);
  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21BE288BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21BE26A4C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v19 = sub_21BE26A2C();
  v20 = sub_21BE28FFC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_21BB35000, v19, v20, "Dismissing AgeRangeSharingView!", v21, 2u);
    MEMORY[0x21CF05C50](v21, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  v22 = *(type metadata accessor for AgeRangeSharingView() + 40);
  sub_21BD205B8(v13);
  v23 = sub_21BE2887C();
  v24 = *(v10 + 8);
  v24(v13, v9);
  if (v23)
  {
    sub_21BD205B8(v13);
    sub_21BE288AC();
    v24(v13, v9);
  }

  else
  {
    v25 = v32;
    sub_21BCB3718(v32);
    sub_21BE27AFC();
    (*(v33 + 8))(v25, v34);
  }

  v26 = swift_projectBox();
  v28 = v37;
  v27 = v38;
  (*(v37 + 16))(v5, v26, v38);
  sub_21BE2862C();
  (*(v28 + 8))(v5, v27);

  FamilyDeclaredAgeRangeAnalyticsPackage.init(from:)(v29, &v39);
  sub_21BD5E3E8(&v39);
}

uint64_t sub_21BCB7880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9160, &qword_21BE3ED28);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  sub_21BE28D7C();
  v3[8] = sub_21BE28D6C();
  v8 = sub_21BE28D0C();
  v3[9] = v8;
  v3[10] = v7;

  return MEMORY[0x2822009F8](sub_21BCB7980, v8, v7);
}

uint64_t sub_21BCB7980()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = swift_projectBox();
  v0[11] = v5;
  v6 = *(v2 + 16);
  v0[12] = v6;
  v0[13] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v4);
  sub_21BE2862C();
  v7 = *(v2 + 8);
  v0[14] = v7;
  v0[15] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v4);
  v0[16] = v0[2];
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_21BCB7A88;

  return sub_21BCF8840();
}

uint64_t sub_21BCB7A88()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v7 = *v0;

  v4 = *(v1 + 80);
  v5 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_21BCB7BCC, v5, v4);
}

uint64_t sub_21BCB7BCC()
{
  v13 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[5];

  v4(v7, v5, v8);
  sub_21BE2862C();
  v2(v7, v8);
  v9 = v0[3];
  v12 = 0;
  _s14FamilyCircleUI23SettingsAnalyticsLoggerO18logNavigationEvent24ageRangeSharingViewModel4viewyAA03AgeklmN0C_AA0pkdM0OtFZ_0(v9, &v12);

  v10 = v0[1];

  return v10();
}

__n128 sub_21BCB7CA4@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9160, &qword_21BE3ED28);
  v5 = *(v4 - 1);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v57 - v7;
  v9 = a1[1];
  *&v71 = *a1;
  v70 = v9;
  if (sub_21BE28B6C())
  {
    v10 = swift_projectBox();
    v11 = v5[2];
    v60 = v10;
    v61 = v5 + 2;
    v59 = v11;
    v11(v8);
    sub_21BE2862C();
    v12 = v5[1];
    v63 = v5 + 1;
    v58 = v12;
    v12(v8, v4);
    v13 = v81;
    swift_getKeyPath();
    *&v81 = v13;
    sub_21BCBEAF0(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
    sub_21BE25F1C();

    v14 = *(v13 + 40);

    v65 = a2;
    if (v14 >> 62)
    {
      goto LABEL_28;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21BE2951C())
    {
      v62 = v8;
      v64 = v4;
      if (!i)
      {
        break;
      }

      v16 = 0;
      v69 = v14 & 0xC000000000000001;
      v68 = v14 & 0xFFFFFFFFFFFFFF8;
      v67 = v14;
      v66 = i;
      while (1)
      {
        if (v69)
        {
          v17 = MEMORY[0x21CF047C0](v16, v14);
        }

        else
        {
          if (v16 >= *(v68 + 16))
          {
            goto LABEL_27;
          }

          v17 = *(v14 + 8 * v16 + 32);
        }

        v4 = v17;
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        v19 = [v17 bundleID];
        v20 = sub_21BE28A0C();
        v22 = v21;

        v8 = v71;
        v23 = v70;
        v24 = sub_21BE28B6C();

        if (v24)
        {
          v25 = sub_21BE28ACC();
          v26 = sub_21BCBCBAC(v25, v71, v70);
          v28 = v27;
          v30 = v29;
          v32 = v31;

          v8 = MEMORY[0x21CF03C40](v26, v28, v30, v32);
          v23 = v33;
        }

        if (v20 == v8 && v22 == v23)
        {

LABEL_23:

          v36 = v62;
          v37 = v60;
          v38 = v64;
          v39 = v59;
          v59(v62, v60, v64);
          v40 = v4;
          sub_21BE2862C();
          v41 = v58;
          v58(v36, v38);
          v42 = v81;
          v39(v36, v37, v38);
          sub_21BE2862C();
          v41(v36, v38);
          v43 = [v40 bundleID];
          v44 = sub_21BE28A0C();
          v46 = v45;

          v47 = sub_21BCFE564(v44, v46);
          v49 = v48;

          sub_21BCBCC5C(v40, v42, v47, v49, v77);
          v50 = v77[0];
          v51 = v77[1];
          v52 = v78[0];
          v71 = *&v78[8];
          v53 = *&v78[24];

          v80 = *v78;
          v79 = *&v78[16];
          *&v74 = v50;
          *(&v74 + 1) = v51;
          *&v75[0] = v52;
          *(v75 + 8) = v71;
          *(&v75[1] + 1) = v53;
          LOBYTE(v76) = 0;

          v54 = v51;
          sub_21BBA3854(&v80, &v81, &qword_27CDBBB50, &unk_21BE333D0);
          sub_21BBA3854(&v79, &v81, &qword_27CDB7AB0, &qword_21BE39110);
          sub_21BCBCB58();
          sub_21BE2784C();

          sub_21BB3A4CC(&v80, &qword_27CDBBB50, &unk_21BE333D0);
          sub_21BB3A4CC(&v79, &qword_27CDB7AB0, &qword_21BE39110);
          goto LABEL_24;
        }

        v35 = sub_21BE2995C();

        v14 = v67;
        if (v35)
        {
          goto LABEL_23;
        }

        ++v16;
        if (v18 == v66)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      ;
    }

LABEL_21:

    memset(v75, 0, sizeof(v75));
    v74 = 0u;
    LOBYTE(v76) = 1;
    sub_21BCBCB58();
    sub_21BE2784C();
LABEL_24:
    a2 = v65;
    v73 = v84;
    v72 = 0;
    v74 = v81;
    v75[0] = v82;
    v75[1] = v83;
    v76 = v84;
  }

  else
  {
    LOBYTE(v77[0]) = 1;
    HIBYTE(v76) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB91A8, &unk_21BE3EDB0);
  sub_21BCBCACC();
  sub_21BE2784C();
  v55 = v82;
  *a2 = v81;
  *(a2 + 16) = v55;
  result = v83;
  *(a2 + 32) = v83;
  *(a2 + 48) = v84;
  return result;
}

uint64_t sub_21BCB8410(void *a1)
{
  [a1 response];
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_21BE2599C();

  return v3;
}

void sub_21BCB8518()
{
  v1 = type metadata accessor for AgeRangeSharingView();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21BE26A4C();
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21BE27B0C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v0 + *(v1 + 56));
  v15 = *v14;
  v16 = v14[1];
  v17 = sub_21BE289CC();
  v18 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (v18)
  {
    v19 = v18;
    v20 = sub_21BCB3718(v13);
    MEMORY[0x28223BE20](v20);
    *(&v30 - 2) = v19;
    sub_21BE27AFC();
    (*(v10 + 8))(v13, v9);
    [v19 present];
  }

  else
  {
    v31 = v5;
    v21 = v32;
    sub_21BE2614C();
    sub_21BCBC8BC(v0, v4);
    v22 = sub_21BE26A2C();
    v23 = sub_21BE28FDC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v24 = 136315138;
      v26 = &v4[*(v1 + 56)];
      v27 = *v26;
      v28 = v26[1];

      sub_21BCBD884(v4);
      v29 = sub_21BB3D81C(v27, v28, &v33);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_21BB35000, v22, v23, "Failed to create privacyPresenter for %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x21CF05C50](v25, -1, -1);
      MEMORY[0x21CF05C50](v24, -1, -1);
    }

    else
    {

      sub_21BCBD884(v4);
    }

    (*(v21 + 8))(v8, v31);
  }
}

uint64_t sub_21BCB888C@<X0>(uint64_t *a1@<X2>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21BCBEAF0(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  if (*(v3 + 56))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v3 + 52);
  }

  *a2 = v5;
  return result;
}

uint64_t sub_21BCB8944(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AgeRangeSharingView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v13 = *a1;
  sub_21BCBC8BC(a4, &v27 - v11);
  sub_21BCBC8BC(v12, v10);
  v14 = (*(v7 + 80) + 20) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  sub_21BCBC92C(v12, v15 + v14);
  v16 = objc_opt_self();
  if ([v16 isRestrictionsPasscodeSet])
  {
    sub_21BCBD884(v10);
    v18 = *(a4 + 32);
    v30 = *(a4 + 24);
    v17 = v30;
    v31 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9318, &qword_21BE3F060);
    sub_21BE283FC();
    v19 = v28;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_21BCBD820;
    *(v20 + 24) = v15;
    v21 = &v19[OBJC_IVAR____TtC14FamilyCircleUI26ScreentimePasscodeListener_ageRangeStateUpdateAction];
    swift_beginAccess();
    v22 = *v21;
    v23 = v21[1];
    *v21 = sub_21BBA5904;
    v21[1] = v20;

    sub_21BB5AEC4(v22);

    v28 = v17;
    v29 = v18;
    sub_21BE283FC();
    v24 = v27;
    v25 = [objc_opt_self() defaultCenter];
    [v25 addObserver:v24 selector:sel_handleRestrictionsPINNotification_ name:*MEMORY[0x277D4BDE8] object:0 suspensionBehavior:4];

    [v16 activateRemotePINUI];
  }

  else
  {
    sub_21BCB8BF0(v13, v10);

    return sub_21BCBD884(v10);
  }
}

void sub_21BCB8BF0(unsigned int a1, uint64_t a2)
{
  if (a1 == 1)
  {
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    sub_21BE2840C();
  }

  else
  {
    v2 = *a2;
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = *(v2 + 72);
    v5 = *(v2 + 16);
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a1;
    *(v6 + 32) = v4;
    *(v6 + 40) = v2;
    sub_21BCBEAF0(&qword_27CDB91B8, type metadata accessor for AgeRangeSharingViewModel);
    v7 = v5;
    swift_unknownObjectRetain();

    sub_21BE268AC();

    _s14FamilyCircleUI23SettingsAnalyticsLoggerO21logOptionUpdatedEvent24ageRangeSharingViewModel5stateyAA03AgelmnO0C_So05FAAgeL11GlobalStateVtFZ_0(v2, a1);
  }
}

uint64_t sub_21BCB8D70@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 3)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    v15 = sub_21BE2599C();
    v17 = v16;

    *&v30 = v15;
    *(&v30 + 1) = v17;
    sub_21BB41FA4();
    v8 = sub_21BE27DBC();
    v10 = v18;
    v12 = v19 & 1;
    sub_21BBA4A38(v8, v18, v19 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6C08, &unk_21BE3F270);
    sub_21BC0AD50();
    sub_21BE2784C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A40, &unk_21BE38DF0);
    sub_21BC3623C();
  }

  else
  {
    if (a1 != 2 && a1 != 1)
    {
      type metadata accessor for ConfirmChildAgeViewModel();
      v25 = swift_getObjCClassFromMetadata();
      v26 = [objc_opt_self() bundleForClass_];
      v27 = sub_21BE2599C();
      v29 = v28;

      *&v31 = v27;
      *(&v31 + 1) = v29;
      sub_21BB41FA4();
      sub_21BE27DBC();
      sub_21BE2784C();
      sub_21BC361AC(v27, v29, v32);
      sub_21BC361AC(v27, v29, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6C08, &unk_21BE3F270);
      sub_21BC0AD50();
      sub_21BE2784C();
      sub_21BC361E8(v27, v29, v32, *(&v32 + 1), v33, SHIBYTE(v33));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A40, &unk_21BE38DF0);
      sub_21BC3623C();
      sub_21BE2784C();
      sub_21BC362C8(v27, v29, v32);
      sub_21BC36304(v27, v29, v32, *(&v32 + 1), v33, SHIBYTE(v33));
      result = sub_21BC362C8(v27, v29, v32);
      v21 = v31;
      v22 = v32;
      v23 = v33;
      v24 = v34;
      goto LABEL_8;
    }

    type metadata accessor for ConfirmChildAgeViewModel();
    v3 = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    v5 = sub_21BE2599C();
    v7 = v6;

    *&v30 = v5;
    *(&v30 + 1) = v7;
    sub_21BB41FA4();
    v8 = sub_21BE27DBC();
    v10 = v9;
    v12 = v11 & 1;
    sub_21BBA4A38(v8, v9, v11 & 1);

    sub_21BE2784C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6C08, &unk_21BE3F270);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A40, &unk_21BE38DF0);
    sub_21BC0AD50();
    sub_21BC3623C();
  }

  sub_21BE2784C();
  sub_21BBC7C7C(v8, v10, v12);

  v21 = v30;
  v22 = v32;
  v23 = v33;
  v24 = v34;
LABEL_8:
  *a2 = v21;
  *(a2 + 16) = v22;
  *(a2 + 32) = v23;
  *(a2 + 34) = v24;
  return result;
}

uint64_t sub_21BCB9494@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 6);
  *(v1 + 5);
  *(v1 + 4);
  return sub_21BCB8D70(*v1, a1);
}

uint64_t sub_21BCB94D8@<X0>(char *a1@<X8>)
{
  v43 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9308, &qword_21BE3F050);
  v41 = *(v1 - 8);
  v2 = v41;
  v3 = *(v41 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v40 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v40 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v40 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v40 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - v19;
  v21 = sub_21BE275DC();
  sub_21BCB9864(&v44);
  v22 = v45;
  v23 = v44;
  v24 = v46;
  v48 = 1;
  v47 = v45;
  *v20 = v21;
  *(v20 + 1) = 0;
  v20[16] = 1;
  *(v20 + 24) = v23;
  v20[40] = v22;
  *(v20 + 3) = v24;
  *(v20 + 16) = 1;
  v20[68] = 1;
  v25 = sub_21BE275DC();
  sub_21BCB99AC(&v44);
  v26 = v45;
  v27 = v44;
  v28 = v46;
  v50 = 1;
  v49 = v45;
  *v18 = v25;
  *(v18 + 1) = 0;
  v18[16] = 1;
  *(v18 + 24) = v27;
  v18[40] = v26;
  *(v18 + 3) = v28;
  *(v18 + 16) = 2;
  v18[68] = 1;
  v29 = sub_21BE275DC();
  sub_21BCB9AF4(&v44);
  v30 = v45;
  v31 = v44;
  v32 = v46;
  LOBYTE(v44) = 1;
  v51 = v45;
  *v15 = v29;
  *(v15 + 1) = 0;
  v15[16] = 1;
  *(v15 + 24) = v31;
  v15[40] = v30;
  *(v15 + 3) = v32;
  *(v15 + 16) = 3;
  v15[68] = 1;
  v33 = *(v2 + 16);
  v34 = v12;
  v42 = v12;
  v33(v12, v20, v1);
  v35 = v9;
  v33(v9, v18, v1);
  v33(v6, v15, v1);
  v36 = v43;
  v33(v43, v34, v1);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9310, &qword_21BE3F058);
  v33(&v36[*(v37 + 48)], v35, v1);
  v33(&v36[*(v37 + 64)], v6, v1);
  v38 = *(v41 + 8);
  v38(v15, v1);
  v38(v18, v1);
  v38(v20, v1);
  v38(v6, v1);
  v38(v35, v1);
  return (v38)(v42, v1);
}

uint64_t sub_21BCB9864@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  v4 = sub_21BE27DBC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_21BE2837C();
  *a1 = v4;
  *(a1 + 8) = v6;
  v8 &= 1u;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  sub_21BBA4A38(v4, v6, v8);

  sub_21BBC7C7C(v4, v6, v8);
}

uint64_t sub_21BCB99AC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  v4 = sub_21BE27DBC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_21BE2837C();
  *a1 = v4;
  *(a1 + 8) = v6;
  v8 &= 1u;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  sub_21BBA4A38(v4, v6, v8);

  sub_21BBC7C7C(v4, v6, v8);
}

uint64_t sub_21BCB9AF4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  v4 = sub_21BE27DBC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_21BE2837C();
  *a1 = v4;
  *(a1 + 8) = v6;
  v8 &= 1u;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  sub_21BBA4A38(v4, v6, v8);

  sub_21BBC7C7C(v4, v6, v8);
}

uint64_t sub_21BCB9C30@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  swift_getKeyPath();
  sub_21BCBEAF0(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v6 = v5[80];
  swift_getKeyPath();
  sub_21BE25F1C();

  v7 = v5[81];
  swift_getKeyPath();
  sub_21BE25F1C();

  v9 = v5[82];
  *a3 = a1;
  *(a3 + 4) = v6;
  *(a3 + 5) = v7;
  *(a3 + 6) = v9;
  return result;
}

uint64_t sub_21BCB9D6C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB92B0, &unk_21BE3EF80);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  sub_21BE26EEC();
  v10 = &v9[*(v3 + 44)];
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
  v12 = *MEMORY[0x277CDF438];
  v13 = sub_21BE26E7C();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = swift_getKeyPath();
  sub_21BBA3854(v9, v7, &qword_27CDB92B0, &unk_21BE3EF80);
  *a1 = 0;
  *(a1 + 8) = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB92B8, &qword_21BE3EFC0);
  sub_21BBA3854(v7, a1 + *(v14 + 48), &qword_27CDB92B0, &unk_21BE3EF80);
  v15 = a1 + *(v14 + 64);
  *v15 = 0;
  *(v15 + 8) = 1;
  sub_21BB3A4CC(v9, &qword_27CDB92B0, &unk_21BE3EF80);
  return sub_21BB3A4CC(v7, &qword_27CDB92B0, &unk_21BE3EF80);
}

void sub_21BCB9F24(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 bundleID];
  v4 = sub_21BE28A0C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_21BCB9F7C(id *a1)
{
  v1 = [*a1 bundleID];
  v2 = sub_21BE28A0C();
  v4 = v3;

  MEMORY[0x21CF03CA0](v2, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB92C0, &qword_21BE3EFC8);
  sub_21BB3B038(&qword_27CDB92C8, &qword_27CDB92C0, &qword_21BE3EFC8);
  return sub_21BE270AC();
}

uint64_t sub_21BCBA0C0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = sub_21BE275DC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB92D0, &unk_21BE3EFD0);
  return sub_21BCBA2A0(a1, (a2 + *(v4 + 44)));
}

id sub_21BCBA128(uint64_t a1, void *a2)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    return [a2 setPresentingViewController_];
  }

  else
  {
    sub_21BE2614C();
    v10 = sub_21BE26A2C();
    v11 = sub_21BE28FDC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21BB35000, v10, v11, "No view controller to show privacy disclosure", v12, 2u);
      MEMORY[0x21CF05C50](v12, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_21BCBA2A0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v65 = a2;
  v3 = sub_21BE2766C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB90E0, &qword_21BE3E908);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v57 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB90E8, &qword_21BE3EFE0);
  v63 = *(v10 - 8);
  v64 = v10;
  v11 = *(v63 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v62 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v57 - v14;
  v16 = [a1 bundleID];
  if (!v16)
  {
    sub_21BE28A0C();
    v16 = sub_21BE289CC();
  }

  [objc_allocWithZone(MEMORY[0x277D1B1A8]) initWithBundleIdentifier_];

  sub_21BE269CC();
  sub_21BB3B038(&qword_27CDB90F0, &qword_27CDB90E0, &qword_21BE3E908);
  sub_21BE27DCC();
  (*(v6 + 8))(v9, v5);
  sub_21BE2765C();
  sub_21BE2764C();
  v17 = [a1 bundleID];
  v18 = sub_21BE28A0C();
  v20 = v19;

  sub_21BCFE564(v18, v20);

  sub_21BE2763C();

  sub_21BE2764C();
  sub_21BE2768C();
  v66 = sub_21BE27DAC();
  v60 = v21;
  v61 = v22;
  v59 = v23;
  v24 = sub_21BCB8410(a1);
  if (v25)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  v67 = v26;
  v68 = v27;
  sub_21BB41FA4();
  v28 = sub_21BE27DBC();
  v29 = v15;
  v58 = v15;
  v31 = v30;
  v33 = v32;
  LODWORD(v67) = sub_21BE2796C();
  v34 = sub_21BE27D5C();
  v36 = v35;
  v38 = v37;
  v57 = v39;
  sub_21BBC7C7C(v28, v31, v33 & 1);

  v40 = v62;
  v41 = v63;
  v42 = *(v63 + 16);
  v43 = v29;
  v44 = v64;
  v42(v62, v43, v64);
  v45 = v59 & 1;
  LOBYTE(v67) = v59 & 1;
  v46 = v65;
  v42(v65, v40, v44);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB92D8, &qword_21BE3EFE8);
  v48 = &v46[v47[12]];
  v49 = v66;
  v50 = v60;
  v51 = v61;
  *v48 = v66;
  *(v48 + 1) = v50;
  v48[16] = v45;
  *(v48 + 3) = v51;
  v52 = &v46[v47[16]];
  *v52 = 0;
  v52[8] = 1;
  v53 = &v46[v47[20]];
  *v53 = v34;
  *(v53 + 1) = v36;
  v38 &= 1u;
  v53[16] = v38;
  *(v53 + 3) = v57;
  v54 = v50;
  sub_21BBA4A38(v49, v50, v45);

  sub_21BBA4A38(v34, v36, v38);
  v55 = *(v41 + 8);

  v55(v58, v44);
  sub_21BBC7C7C(v34, v36, v38);

  sub_21BBC7C7C(v66, v54, v67);

  return (v55)(v40, v44);
}

uint64_t sub_21BCBA7D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9320, &qword_21BE3F1A0);
  v3 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9328, &qword_21BE3F1A8);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9330, &unk_21BE3F1B0);
  v10 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v12 = &v24 - v11;
  sub_21BCBAACC(v1, v5);
  if (v1[5])
  {
    v13 = v1[4];
    v14 = v1[5];
  }

  else
  {
    v15 = [v1[1] bundleID];
    v13 = sub_21BE28A0C();
    v14 = v16;
  }

  *&v31 = v13;
  *(&v31 + 1) = v14;
  sub_21BB3B038(&qword_27CDB9338, &qword_27CDB9320, &qword_21BE3F1A0);
  sub_21BB41FA4();

  sub_21BE27F9C();

  sub_21BB3A4CC(v5, &qword_27CDB9320, &qword_21BE3F1A0);
  v17 = *v1;
  v18 = v1[1];
  v31 = *(v1 + 1);
  v19 = swift_allocObject();
  v20 = v2[1];
  *(v19 + 1) = *v2;
  *(v19 + 2) = v20;
  *(v19 + 3) = v2[2];
  (*(v27 + 32))(v12, v9, v28);
  v21 = &v12[*(v25 + 36)];
  *v21 = sub_21BCBDD50;
  v21[1] = v19;
  v21[2] = 0;
  v21[3] = 0;
  sub_21BB4F9C8(v12, v29);

  v22 = v18;
  return sub_21BBA3854(&v31, v30, &qword_27CDBBB50, &unk_21BE333D0);
}

uint64_t sub_21BCBAACC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9340, &qword_21BE3F1D0);
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3);
  v35 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9348, &qword_21BE3F1D8);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v40 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9350, &qword_21BE3F1E0);
  v37 = *(v38 - 8);
  v12 = *(v37 + 64);
  v13 = MEMORY[0x28223BE20](v38);
  v39 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - v15;
  v42 = a1;
  sub_21BCBB470(a1, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9358, &qword_21BE3F1E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9228, &qword_21BE3EE90);
  sub_21BB3B038(&qword_27CDB9360, &qword_27CDB9358, &qword_21BE3F1E8);
  sub_21BCBD090();
  v17 = v16;
  sub_21BE2861C();
  v18 = *a1;
  swift_getKeyPath();
  v43[0] = v18;
  sub_21BCBEAF0(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  if (*(v18 + 48) == 1)
  {
    MEMORY[0x28223BE20](v19);
    *(&v34 - 2) = a1;
    sub_21BCBBE28(a1, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB79E0, &qword_21BE3F220);
    sub_21BCBDE18();
    v20 = v35;
    sub_21BE2861C();
    v21 = v36;
    (*(v36 + 32))(v11, v20, v3);
    v22 = 0;
    v23 = v21;
  }

  else
  {
    v22 = 1;
    v23 = v36;
  }

  v24 = v11;
  (*(v23 + 56))(v11, v22, 1, v3);
  v25 = v37;
  v26 = *(v37 + 16);
  v27 = v39;
  v28 = v38;
  v26(v39, v17, v38);
  v29 = v40;
  sub_21BBA3854(v24, v40, &qword_27CDB9348, &qword_21BE3F1D8);
  v30 = v41;
  v26(v41, v27, v28);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9368, &qword_21BE3F218);
  sub_21BBA3854(v29, &v30[*(v31 + 48)], &qword_27CDB9348, &qword_21BE3F1D8);
  sub_21BB3A4CC(v24, &qword_27CDB9348, &qword_21BE3F1D8);
  v32 = *(v25 + 8);
  v32(v17, v28);
  sub_21BB3A4CC(v29, &qword_27CDB9348, &qword_21BE3F1D8);
  return (v32)(v27, v28);
}

double sub_21BCBAFFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE275DC();
  v16 = 1;
  sub_21BCBB104(a1, &v10);
  v19 = v12;
  v20 = v13;
  v17 = v10;
  v18 = v11;
  v22[2] = v12;
  v22[3] = v13;
  v22[4] = v14;
  v22[1] = v11;
  v21 = v14;
  v22[0] = v10;
  sub_21BBA3854(&v17, &v9, &qword_27CDB9380, &qword_21BE3F268);
  sub_21BB3A4CC(v22, &qword_27CDB9380, &qword_21BE3F268);
  *&v15[7] = v17;
  *&v15[71] = v21;
  *&v15[55] = v20;
  *&v15[39] = v19;
  *&v15[23] = v18;
  v5 = *&v15[48];
  *(a2 + 49) = *&v15[32];
  *(a2 + 65) = v5;
  *(a2 + 81) = *&v15[64];
  result = *v15;
  v7 = *&v15[16];
  *(a2 + 17) = *v15;
  v8 = v16;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 96) = *&v15[79];
  *(a2 + 33) = v7;
  return result;
}

uint64_t sub_21BCBB104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE2766C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  v26 = sub_21BE27DBC();
  v27 = v9;
  v11 = v10;
  v25 = v12;
  sub_21BE2765C();
  sub_21BE2764C();
  [*(a1 + 8) response];
  v13 = [v7 bundleForClass_];
  sub_21BE2599C();

  sub_21BE2763C();

  sub_21BE2764C();
  sub_21BE2768C();
  v14 = sub_21BE27DAC();
  v16 = v15;
  LOBYTE(v7) = v17;
  sub_21BE2796C();
  v18 = sub_21BE27D5C();
  v20 = v19;
  LOBYTE(v8) = v21;
  v23 = v22;
  sub_21BBC7C7C(v14, v16, v7 & 1);

  *a2 = v26;
  *(a2 + 8) = v11;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v27;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v18;
  *(a2 + 56) = v20;
  *(a2 + 64) = v8 & 1;
  *(a2 + 72) = v23;
  sub_21BBA4A38(v26, v11, v25 & 1);

  sub_21BBA4A38(v18, v20, v8 & 1);

  sub_21BBC7C7C(v18, v20, v8 & 1);

  sub_21BBC7C7C(v26, v11, v25 & 1);
}

double sub_21BCBB470@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8858, &qword_21BE3CA18);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v35 - v6;
  v8 = sub_21BCBE05C(*(a1 + 8));
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0xE000000000000000;
  if (v9)
  {
    v11 = v9;
  }

  *&v38 = v10;
  *(&v38 + 1) = v11;
  sub_21BB41FA4();
  v12 = sub_21BE27DBC();
  v14 = v13;
  v16 = v15;
  v17 = sub_21BE27C1C();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  sub_21BE27C5C();
  sub_21BB3A4CC(v7, &qword_27CDB8858, &qword_21BE3CA18);
  v18 = sub_21BE27D9C();
  v20 = v19;
  v22 = v21;
  v35[1] = v23;

  sub_21BBC7C7C(v12, v14, v16 & 1);

  sub_21BE2833C();
  v24 = sub_21BE27D4C();
  v26 = v25;
  v28 = v27;
  v36 = v29;

  sub_21BBC7C7C(v18, v20, v22 & 1);

  KeyPath = swift_getKeyPath();
  sub_21BE286AC();
  sub_21BE2725C();
  *(&v37[1] + 7) = v39;
  *(v37 + 7) = v38;
  *(&v37[3] + 7) = v41;
  *(&v37[4] + 7) = v42;
  *(&v37[5] + 7) = v43;
  *(&v37[6] + 7) = v44;
  *(&v37[2] + 7) = v40;
  v31 = v37[5];
  *(a2 + 105) = v37[4];
  *(a2 + 121) = v31;
  *(a2 + 137) = v37[6];
  v32 = v37[1];
  *(a2 + 41) = v37[0];
  *(a2 + 57) = v32;
  result = *&v37[2];
  v34 = v37[3];
  *(a2 + 73) = v37[2];
  *a2 = v24;
  *(a2 + 8) = v26;
  *(a2 + 16) = v28 & 1;
  *(a2 + 24) = v36;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 152) = *(&v37[6] + 15);
  *(a2 + 89) = v34;
  return result;
}

uint64_t sub_21BCBB74C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_21BE2599C();
  v8 = v7;

  *&v20 = v6;
  *(&v20 + 1) = v8;
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a1 + 1);
  v21 = *(a1 + 2);
  v22 = v11;
  v12 = swift_allocObject();
  v13 = *(a1 + 1);
  v12[1] = *a1;
  v12[2] = v13;
  v12[3] = *(a1 + 2);

  v14 = v10;
  sub_21BBA3854(&v22, v19, &qword_27CDBBB50, &unk_21BE333D0);
  sub_21BBA3854(&v21, v19, &qword_27CDB7AB0, &qword_21BE39110);
  sub_21BB41FA4();
  sub_21BE2845C();
  v20 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  LOBYTE(v5) = v19[0];
  KeyPath = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB79E0, &qword_21BE3F220);
  v18 = (a2 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = sub_21BC0AE98;
  v18[2] = v16;
  return result;
}

uint64_t sub_21BCBB948(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16[-v4];
  v6 = sub_21BE28DAC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 1);
  v17 = *(a1 + 2);
  v18 = v9;
  sub_21BE28D7C();

  v10 = v8;
  sub_21BBA3854(&v18, v16, &qword_27CDBBB50, &unk_21BE333D0);
  sub_21BBA3854(&v17, v16, &qword_27CDB7AB0, &qword_21BE39110);
  v11 = sub_21BE28D6C();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  v14 = *(a1 + 1);
  *(v12 + 32) = *a1;
  *(v12 + 48) = v14;
  *(v12 + 64) = *(a1 + 2);
  sub_21BC54908(0, 0, v5, &unk_21BE3F260, v12);
}

uint64_t sub_21BCBBAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4[4] = a4;
  v4[5] = sub_21BE28D7C();
  v6 = sub_21BE28D6C();
  v8 = *a4;
  v7 = a4[1];
  v4[6] = v6;
  v4[7] = v8;

  v9 = swift_task_alloc();
  v4[8] = v9;
  *v9 = v4;
  v9[1] = sub_21BCBBB98;

  return sub_21BCFB48C(v7);
}

uint64_t sub_21BCBBB98()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v15 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v5 = v2[6];
    v4 = v2[7];
    v6 = v2[5];

    v7 = sub_21BE28D0C();
    v9 = v8;
    v10 = sub_21BCBBDC4;
  }

  else
  {
    v11 = v2[5];
    v12 = v2[6];
    v7 = sub_21BE28D0C();
    v9 = v13;
    v10 = sub_21BCBBCE8;
  }

  return MEMORY[0x2822009F8](v10, v7, v9);
}

uint64_t sub_21BCBBCE8()
{
  v7 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);

  *(v0 + 16) = *(v3 + 16);
  *(v0 + 80) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  FamilyDeclaredAgeRangeAnalyticsPackage.init(from:)(v2, &v6);
  sub_21BD5E830(&v6);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_21BCBBDC4()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

double sub_21BCBBE28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8858, &qword_21BE3CA18);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v41 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21BE32770;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_21BBBEFE8();
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [*(a1 + 8) bundleID];
    v9 = sub_21BE28A0C();
    v10 = v12;
  }

  *(v7 + 32) = v9;
  *(v7 + 40) = v10;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = objc_opt_self();

  v15 = [v14 bundleForClass_];
  sub_21BE2599C();

  v16 = sub_21BE289DC();
  v18 = v17;

  *&v45 = v16;
  *(&v45 + 1) = v18;
  sub_21BB41FA4();
  v19 = sub_21BE27DBC();
  v21 = v20;
  LOBYTE(ObjCClassFromMetadata) = v22;
  v23 = sub_21BE27C1C();
  (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
  sub_21BE27C5C();
  sub_21BB3A4CC(v6, &qword_27CDB8858, &qword_21BE3CA18);
  v24 = sub_21BE27D9C();
  v26 = v25;
  v28 = v27;

  sub_21BBC7C7C(v19, v21, ObjCClassFromMetadata & 1);

  sub_21BE2833C();
  v29 = sub_21BE27D4C();
  v43 = v30;
  LOBYTE(v19) = v31;
  v33 = v32;

  sub_21BBC7C7C(v24, v26, v28 & 1);

  KeyPath = swift_getKeyPath();
  sub_21BE286AC();
  sub_21BE2725C();
  *(&v44[1] + 7) = v46;
  *(v44 + 7) = v45;
  *(&v44[3] + 7) = v48;
  *(&v44[4] + 7) = v49;
  *(&v44[5] + 7) = v50;
  *(&v44[6] + 7) = v51;
  *(&v44[2] + 7) = v47;
  v35 = v44[5];
  v37 = v42;
  v36 = v43;
  *(v42 + 105) = v44[4];
  *(v37 + 121) = v35;
  *(v37 + 137) = v44[6];
  v38 = v44[1];
  *(v37 + 41) = v44[0];
  *(v37 + 57) = v38;
  result = *&v44[2];
  v40 = v44[3];
  *(v37 + 73) = v44[2];
  *v37 = v29;
  *(v37 + 8) = v36;
  *(v37 + 16) = v19 & 1;
  *(v37 + 24) = v33;
  *(v37 + 32) = KeyPath;
  *(v37 + 40) = 0;
  *(v37 + 152) = *(&v44[6] + 15);
  *(v37 + 89) = v40;
  return result;
}

uint64_t sub_21BCBC24C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16[-v4];
  v6 = *a1;
  LOBYTE(v18) = 2;
  _s14FamilyCircleUI23SettingsAnalyticsLoggerO18logNavigationEvent24ageRangeSharingViewModel4viewyAA03AgeklmN0C_AA0pkdM0OtFZ_0(v6, &v18);
  v7 = sub_21BE28DAC();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v17 = *(a1 + 32);
  v18 = v9;
  sub_21BE28D7C();

  v10 = v8;
  sub_21BBA3854(&v18, v16, &qword_27CDBBB50, &unk_21BE333D0);
  sub_21BBA3854(&v17, v16, &qword_27CDB7AB0, &qword_21BE39110);
  v11 = sub_21BE28D6C();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  v14 = *(a1 + 16);
  *(v12 + 32) = *a1;
  *(v12 + 48) = v14;
  *(v12 + 64) = *(a1 + 32);
  sub_21BBA932C(0, 0, v5, &unk_21BE3F1C8, v12);
}

uint64_t sub_21BCBC3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4[2] = sub_21BE28D7C();
  v4[3] = sub_21BE28D6C();
  v7 = *a4;
  v6 = a4[1];
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_21BBAFDA8;

  return sub_21BCFBFA4(v6);
}

uint64_t sub_21BCBC49C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_21BCBA7D0(a1);
}

void sub_21BCBC548()
{
  type metadata accessor for AgeRangeSharingViewModel();
  if (v0 <= 0x3F)
  {
    sub_21BCBC7E4(319, &qword_27CDB6958, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_21BCBC834(319, &qword_27CDB9150, type metadata accessor for ScreentimePasscodeListener, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_21BCBC7E4(319, &qword_280BD6A00, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_21BCBC834(319, &qword_27CDB5EC8, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_21BCBC7E4(319, &qword_27CDB9158, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_21BCBC834(319, &qword_27CDB8B80, MEMORY[0x277D4D7B0], MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                sub_21BCBC834(319, &qword_27CDB6118, MEMORY[0x277CDE530], MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
                {
                  sub_21BCBC834(319, &qword_280BD6A40, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
                  if (v8 <= 0x3F)
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
  }
}

void sub_21BCBC7E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_21BCBC834(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21BCBC8BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AgeRangeSharingView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCBC920(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21BCBC92C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AgeRangeSharingView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BCBC990()
{
  v1 = *(type metadata accessor for AgeRangeSharingView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21BCB7474(v0 + v2, v3);
}

uint64_t sub_21BCBCA1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BCB7880(v2, v3, v4);
}

unint64_t sub_21BCBCACC()
{
  result = qword_27CDB91A0;
  if (!qword_27CDB91A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB91A8, &unk_21BE3EDB0);
    sub_21BCBCB58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB91A0);
  }

  return result;
}

unint64_t sub_21BCBCB58()
{
  result = qword_27CDB91B0;
  if (!qword_27CDB91B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB91B0);
  }

  return result;
}

unint64_t sub_21BCBCBAC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_21BE28ADC();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_21BE28B9C();
}

uint64_t sub_21BCBCC5C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_21BE25D1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v24[-v17];

  v19 = a1;
  v20 = [v19 invalidatedAt];
  if (v20)
  {
    sub_21BE25CDC();

    (*(v11 + 32))(v18, v14, v10);
    (*(v11 + 56))(v18, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v18, 1, 1, v10);
  }

  sub_21BB3A4CC(v18, &qword_27CDB9720, &unk_21BE39F00);
  v24[15] = v20 != 0;
  result = sub_21BE283EC();
  v22 = v24[16];
  v23 = v25;
  *a5 = a2;
  *(a5 + 8) = v19;
  *(a5 + 16) = v22;
  *(a5 + 24) = v23;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

uint64_t sub_21BCBCE5C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21BBB7EB8;

  return sub_21BCFBAF4(v2, v3, v5, v4);
}

unint64_t sub_21BCBCF54()
{
  result = qword_27CDB9200;
  if (!qword_27CDB9200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB91F0, &qword_21BE3EE78);
    sub_21BB3B038(&qword_27CDB9208, &qword_27CDB9210, &qword_21BE3EE88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9200);
  }

  return result;
}

unint64_t sub_21BCBD00C()
{
  result = qword_27CDB9218;
  if (!qword_27CDB9218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB91F8, &qword_21BE3EE80);
    sub_21BCBD090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9218);
  }

  return result;
}

unint64_t sub_21BCBD090()
{
  result = qword_27CDB9220;
  if (!qword_27CDB9220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9228, &qword_21BE3EE90);
    sub_21BBC7DA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9220);
  }

  return result;
}

uint64_t sub_21BCBD140(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BCBD1C4()
{
  result = qword_27CDB9240;
  if (!qword_27CDB9240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9248, &qword_21BE3EEA0);
    sub_21BB3B038(&qword_27CDB9250, &qword_27CDB9258, &qword_21BE3EEA8);
    sub_21BCBD27C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9240);
  }

  return result;
}

unint64_t sub_21BCBD27C()
{
  result = qword_27CDB9260;
  if (!qword_27CDB9260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9268, &qword_21BE3EEB0);
    sub_21BB3B038(&qword_27CDB9270, &qword_27CDB9278, &qword_21BE3EEB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9260);
  }

  return result;
}

uint64_t sub_21BCBD338(id *a1)
{
  v2 = *(*(type metadata accessor for AgeRangeSharingView() - 8) + 80);

  return sub_21BCB9F7C(a1);
}

id sub_21BCBD3B8(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
  }

  return result;
}

void sub_21BCBD3D4(void *a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

double sub_21BCBD3F8(_OWORD *a1)
{
  result = 0.0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_21BCBD414@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(type metadata accessor for AgeRangeSharingView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_21BCB888C(v6, a1);
}

uint64_t objectdestroy_68Tm()
{
  v1 = type metadata accessor for AgeRangeSharingView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = *(v0 + v2);

  v7 = *(v0 + v2 + 16);

  v8 = *(v0 + v2 + 32);

  v9 = *(v0 + v2 + 48);

  v10 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21BE26FEC();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  sub_21BCBC920(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v13 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B90, &qword_21BE43960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21BE288BC();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  v16 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_21BE27B0C();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
    v18 = *(v5 + v16);
  }

  v19 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_21BE26F5C();
    (*(*(v20 - 8) + 8))(v5 + v19, v20);
  }

  else
  {
    v21 = *(v5 + v19);
  }

  v22 = *(v5 + v1[14] + 8);

  return swift_deallocObject();
}

uint64_t sub_21BCBD74C(unsigned int *a1)
{
  v3 = *(type metadata accessor for AgeRangeSharingView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_21BCB8944(a1, v4, v5, v6);
}

unint64_t sub_21BCBD7CC()
{
  result = qword_27CDB9300;
  if (!qword_27CDB9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9300);
  }

  return result;
}

void sub_21BCBD820()
{
  v1 = *(type metadata accessor for AgeRangeSharingView() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 20) & ~*(v1 + 80));

  sub_21BCB8BF0(v2, v3);
}

uint64_t sub_21BCBD884(uint64_t a1)
{
  v2 = type metadata accessor for AgeRangeSharingView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_41Tm()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_21BCBD928()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21BBA6A64;

  return sub_21BCFBAF4(v2, v3, v5, v4);
}

uint64_t objectdestroy_57Tm()
{
  v1 = type metadata accessor for AgeRangeSharingView();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v4 = *v3;

  v5 = v3[2];

  v6 = v3[4];

  v7 = v3[6];

  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21BE26FEC();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
    v10 = *(v3 + v8);
  }

  sub_21BCBC920(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v11 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B90, &qword_21BE43960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21BE288BC();
    (*(*(v12 - 8) + 8))(v3 + v11, v12);
  }

  else
  {
    v13 = *(v3 + v11);
  }

  v14 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_21BE27B0C();
    (*(*(v15 - 8) + 8))(v3 + v14, v15);
  }

  else
  {
    v16 = *(v3 + v14);
  }

  v17 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_21BE26F5C();
    (*(*(v18 - 8) + 8))(v3 + v17, v18);
  }

  else
  {
    v19 = *(v3 + v17);
  }

  v20 = *(v3 + v1[14] + 8);

  return swift_deallocObject();
}

void sub_21BCBDC94()
{
  v1 = *(type metadata accessor for AgeRangeSharingView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_21BCB8518();
}

uint64_t sub_21BCBDD58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBB7EB8;

  return sub_21BCBC3EC(a1, v4, v5, v1 + 4);
}

unint64_t sub_21BCBDE18()
{
  result = qword_27CDB9370;
  if (!qword_27CDB9370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB79E0, &qword_21BE3F220);
    sub_21BB3B038(&qword_27CDB5598, &unk_27CDB55A0, &unk_21BE32460);
    sub_21BB3B038(&qword_27CDBC560, &qword_27CDB6DF8, &qword_21BE3B850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9370);
  }

  return result;
}

uint64_t objectdestroy_103Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t objectdestroy_106Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_21BCBDFAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBB7EB8;

  return sub_21BCBBAD0(a1, v4, v5, v1 + 4);
}

uint64_t sub_21BCBE05C(void *a1)
{
  v2 = sub_21BE25C4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21BE25C6C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21BE25D1C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 response];
  v80 = v7;
  if (v17 != 2)
  {
    v77 = v6;
    v78 = v11;
    v79 = v12;
    v28 = [a1 lowerbound];
    if (v28)
    {
      v29 = v28;
      v30 = [a1 upperbound];
      if (!v30)
      {
        v76 = 0x800000021BE5BBD0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_21BE33260;
        *(v53 + 56) = sub_21BCBEAA4();
        *(v53 + 64) = sub_21BCBEAF0(&qword_27CDB9378, sub_21BCBEAA4);
        *(v53 + 32) = v29;
        v75 = v29;
        v54 = [a1 createdAt];
        sub_21BE25CDC();

        v55 = v78;
        sub_21BE25C5C();
        v56 = v77;
        sub_21BE25C3C();
        v57 = sub_21BE25CFC();
        v59 = v58;
        (*(v3 + 8))(v56, v2);
        (*(v8 + 8))(v55, v80);
        (*(v13 + 8))(v16, v79);
        *(v53 + 96) = MEMORY[0x277D837D0];
        *(v53 + 104) = sub_21BBBEFE8();
        *(v53 + 72) = v57;
        *(v53 + 80) = v59;
        type metadata accessor for ConfirmChildAgeViewModel();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v61 = objc_opt_self();

        v62 = [v61 bundleForClass_];
        goto LABEL_14;
      }

      v31 = v30;
    }

    v32 = [a1 upperbound];
    if (!v32)
    {
      goto LABEL_9;
    }

    v33 = v32;
    v34 = [a1 lowerbound];
    if (v34)
    {
      v35 = v34;

LABEL_9:
      v36 = [a1 lowerbound];
      if (v36)
      {
        v37 = v36;
        v38 = [a1 upperbound];
        if (v38)
        {
          v39 = v38;
          v76 = 0x800000021BE5BB90;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_21BE362A0;
          v41 = sub_21BCBEAA4();
          *(v40 + 56) = v41;
          v42 = sub_21BCBEAF0(&qword_27CDB9378, sub_21BCBEAA4);
          *(v40 + 32) = v37;
          *(v40 + 96) = v41;
          *(v40 + 104) = v42;
          *(v40 + 64) = v42;
          *(v40 + 72) = v39;
          v75 = v37;
          v74 = v39;
          v43 = [a1 createdAt];
          sub_21BE25CDC();

          v44 = v78;
          sub_21BE25C5C();
          v45 = v77;
          sub_21BE25C3C();
          v46 = sub_21BE25CFC();
          v48 = v47;
          (*(v3 + 8))(v45, v2);
          (*(v8 + 8))(v44, v80);
          (*(v13 + 8))(v16, v79);
          *(v40 + 136) = MEMORY[0x277D837D0];
          *(v40 + 144) = sub_21BBBEFE8();
          *(v40 + 112) = v46;
          *(v40 + 120) = v48;
          type metadata accessor for ConfirmChildAgeViewModel();
          v49 = swift_getObjCClassFromMetadata();
          v50 = objc_opt_self();

          v51 = [v50 bundleForClass_];
          sub_21BE2599C();

          v27 = sub_21BE289DC();
          v52 = v74;
LABEL_15:

          goto LABEL_16;
        }
      }

      return 0;
    }

    v76 = 0x800000021BE5BBB0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_21BE33260;
    *(v63 + 56) = sub_21BCBEAA4();
    *(v63 + 64) = sub_21BCBEAF0(&qword_27CDB9378, sub_21BCBEAA4);
    *(v63 + 32) = v33;
    v75 = v33;
    v64 = [a1 createdAt];
    sub_21BE25CDC();

    v65 = v78;
    sub_21BE25C5C();
    v66 = v77;
    sub_21BE25C3C();
    v67 = sub_21BE25CFC();
    v69 = v68;
    (*(v3 + 8))(v66, v2);
    (*(v8 + 8))(v65, v80);
    (*(v13 + 8))(v16, v79);
    *(v63 + 96) = MEMORY[0x277D837D0];
    *(v63 + 104) = sub_21BBBEFE8();
    *(v63 + 72) = v67;
    *(v63 + 80) = v69;
    type metadata accessor for ConfirmChildAgeViewModel();
    v70 = swift_getObjCClassFromMetadata();
    v71 = objc_opt_self();

    v62 = [v71 bundleForClass_];
LABEL_14:
    sub_21BE2599C();

    v27 = sub_21BE289DC();
    v52 = v75;
    goto LABEL_15;
  }

  v79 = 0x800000021BE5BBF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21BE32770;
  v19 = [a1 createdAt];
  sub_21BE25CDC();

  sub_21BE25C5C();
  sub_21BE25C3C();
  v20 = sub_21BE25CFC();
  v21 = v6;
  v23 = v22;
  (*(v3 + 8))(v21, v2);
  (*(v8 + 8))(v11, v80);
  (*(v13 + 8))(v16, v12);
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = sub_21BBBEFE8();
  *(v18 + 32) = v20;
  *(v18 + 40) = v23;
  type metadata accessor for ConfirmChildAgeViewModel();
  v24 = swift_getObjCClassFromMetadata();
  v25 = objc_opt_self();

  v26 = [v25 bundleForClass_];
  sub_21BE2599C();

  v27 = sub_21BE289DC();
LABEL_16:

  return v27;
}

unint64_t sub_21BCBEAA4()
{
  result = qword_280BD68F8;
  if (!qword_280BD68F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BD68F8);
  }

  return result;
}

uint64_t sub_21BCBEAF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21BCBEB38()
{
  result = qword_27CDB9388;
  if (!qword_27CDB9388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9330, &unk_21BE3F1B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9320, &qword_21BE3F1A0);
    sub_21BB3B038(&qword_27CDB9338, &qword_27CDB9320, &qword_21BE3F1A0);
    sub_21BB41FA4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9388);
  }

  return result;
}

uint64_t sub_21BCBEC48(uint64_t *a1, int a2)
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

uint64_t sub_21BCBEC90(uint64_t result, int a2, int a3)
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

unint64_t sub_21BCBECE4()
{
  result = qword_27CDB9390;
  if (!qword_27CDB9390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9390);
  }

  return result;
}

id sub_21BCBED38()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = objc_allocWithZone(type metadata accessor for AgeRangeSharingViewController());
  v4 = v1;

  return sub_21BCBEED4(v4, v2, v3);
}

uint64_t sub_21BCBED90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BCBEE80();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21BCBEDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BCBEE80();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21BCBEE58()
{
  sub_21BCBEE80();
  sub_21BE27ABC();
  __break(1u);
}

unint64_t sub_21BCBEE80()
{
  result = qword_27CDB9398;
  if (!qword_27CDB9398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9398);
  }

  return result;
}

id sub_21BCBEED4(uint64_t a1, char a2, _BYTE *a3)
{
  v6 = type metadata accessor for AgeRangeSharingView();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  a3[OBJC_IVAR____TtC14FamilyCircleUI29AgeRangeSharingViewController_presentAsModal] = a2;
  v13 = [objc_allocWithZone(MEMORY[0x277D08210]) init];
  v14 = type metadata accessor for AgeRangeSharingViewModel();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  *&a3[OBJC_IVAR____TtC14FamilyCircleUI29AgeRangeSharingViewController_ageRangeSharingViewModel] = sub_21BCBF078(v13, a1, v17);

  sub_21BCB3920(v18, a2, v12);
  sub_21BCBC8BC(v12, v10);
  sub_21BCBF558();
  v25 = sub_21BE2852C();
  v19 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5778, &qword_21BE4F700));
  *&a3[OBJC_IVAR____TtC14FamilyCircleUI29AgeRangeSharingViewController_underlyingHostingController] = sub_21BE2774C();
  v20 = type metadata accessor for AgeRangeSharingViewController();
  v24.receiver = a3;
  v24.super_class = v20;
  v21 = objc_msgSendSuper2(&v24, sel_initWithNibName_bundle_, 0, 0);
  sub_21BCBD884(v12);
  return v21;
}

uint64_t sub_21BCBF078(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  v14 = sub_21BE25D6C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + 24) = 0;
  *(a3 + 32) = 2;
  *(a3 + 40) = MEMORY[0x277D84F90];
  *(a3 + 48) = 0;
  *(a3 + 52) = 0;
  *(a3 + 56) = 1;
  *(a3 + 64) = 0;
  *(a3 + 80) = 0;
  *(a3 + 82) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 1;
  sub_21BE25D5C();
  (*(v15 + 32))(a3 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__dismissToken, v18, v14);
  *(a3 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldOpenPersonalInfoOnMac) = 0;
  v19 = (a3 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__onDismiss);
  *v19 = 0;
  v19[1] = 0;
  *(a3 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldShowOnboarding) = 0;
  sub_21BE25F4C();
  *(a3 + 16) = a1;
  *(a3 + 72) = a2;
  v20 = a1;
  sub_21BE263FC();
  v21 = sub_21BE289CC();

  v22 = [objc_opt_self() bundleWithIdentifier_];

  v23 = [objc_opt_self() flowWithBundle_];
  if (v23)
  {
    v24 = [v23 contentVersion];
    v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    sub_21BE2614C();
    v26 = v25;
    v27 = sub_21BE26A2C();
    v28 = sub_21BE28FCC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v48 = v6;
      v30 = v29;
      v31 = swift_slowAlloc();
      v47 = v7;
      v32 = v31;
      v49 = v31;
      *v30 = 136315138;
      v26 = v26;
      v33 = [v26 description];
      v45 = v20;
      v34 = v33;
      v35 = sub_21BE28A0C();
      v46 = v13;
      v36 = v35;
      v38 = v37;

      v39 = sub_21BB3D81C(v36, v38, &v49);

      *(v30 + 4) = v39;
      _os_log_impl(&dword_21BB35000, v27, v28, "Privacy version for onboarding: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x21CF05C50](v32, -1, -1);
      MEMORY[0x21CF05C50](v30, -1, -1);

      (*(v47 + 8))(v46, v48);
    }

    else
    {

      (*(v7 + 8))(v13, v6);
    }
  }

  else
  {
    sub_21BE2614C();
    v40 = sub_21BE26A2C();
    v41 = sub_21BE28FDC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_21BB35000, v40, v41, "Failed to get privacy version from onboarding", v42, 2u);
      MEMORY[0x21CF05C50](v42, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
    sub_21BCBEAA4();
    v26 = sub_21BE293EC();
  }

  *(a3 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__privacyVersion) = v26;
  return a3;
}

unint64_t sub_21BCBF558()
{
  result = qword_27CDB93A0;
  if (!qword_27CDB93A0)
  {
    type metadata accessor for AgeRangeSharingView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB93A0);
  }

  return result;
}

uint64_t sub_21BCBF5BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_21BCBF604(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BCBF680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93A8, &qword_21BE3F488);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93B0, &qword_21BE3F490);
  v10 = *(v9 - 8);
  v31 = v9;
  v32 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v30 = v29 - v12;
  v13 = swift_allocObject();
  v14 = *(v3 + 16);
  v13[1] = *v3;
  v13[2] = v14;
  v13[3] = *(v3 + 32);
  *(v13 + 57) = *(v3 + 41);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93B8, &qword_21BE3F498);
  (*(*(v15 - 8) + 16))(v8, a1, v15);
  v16 = &v8[*(v5 + 36)];
  *v16 = sub_21BCC0188;
  v16[1] = v13;
  v40 = *(v3 + 40);
  v41 = *(v3 + 56);
  sub_21BCC0190(v3, &v37);
  v29[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2856C();
  v17 = swift_allocObject();
  v18 = *(v3 + 16);
  v17[1] = *v3;
  v17[2] = v18;
  v17[3] = *(v3 + 32);
  *(v17 + 57) = *(v3 + 41);
  sub_21BCC0190(v3, &v37);
  v19 = sub_21BCC01D0();
  v20 = sub_21BBF32A0();
  sub_21BE2812C();

  sub_21BCC0288(v8);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  v23 = sub_21BE2599C();
  v25 = v24;

  v35 = v23;
  v36 = v25;
  v37 = *(v3 + 16);
  LOBYTE(v38) = *(v3 + 32);
  sub_21BE2856C();
  v34 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93D0, &qword_21BE439B0);
  *&v37 = v5;
  *(&v37 + 1) = &type metadata for CreateContactView;
  v38 = v19;
  v39 = v20;
  swift_getOpaqueTypeConformance2();
  sub_21BB41FA4();
  sub_21BB3B038(&qword_27CDB93D8, &qword_27CDB93D0, &qword_21BE439B0);
  v26 = v31;
  v27 = v30;
  sub_21BE280EC();

  return (*(v32 + 8))(v27, v26);
}

uint64_t sub_21BCBFB44(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v4 = *(a1 + 40);
    v1 = *(a1 + 56);
  }

  else
  {
    v5 = *(a1 + 16);
    v2 = *(a1 + 32);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  return sub_21BE2854C();
}

id sub_21BCBFBBC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = objc_allocWithZone(type metadata accessor for CreateContactView.ContactViewDelegate());
  v5 = v3;
  result = [v4 init];
  *a2 = v3;
  a2[1] = result;
  return result;
}

uint64_t sub_21BCBFC10@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8158, &unk_21BE3AE50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v41 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v40 = &v39 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v39 = &v39 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - v16;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = objc_opt_self();
  v20 = [v19 bundleForClass_];
  v21 = sub_21BE2599C();
  v23 = v22;

  v43[0] = v21;
  v43[1] = v23;
  sub_21BE26DEC();
  v24 = sub_21BE26DFC();
  (*(*(v24 - 8) + 56))(v6, 0, 1, v24);
  sub_21BB41FA4();
  sub_21BE2844C();
  v25 = [v19 bundleForClass_];
  v26 = sub_21BE2599C();
  v28 = v27;

  v43[8] = v26;
  v43[9] = v28;
  v29 = swift_allocObject();
  v30 = a1[1];
  v29[1] = *a1;
  v29[2] = v30;
  v29[3] = a1[2];
  *(v29 + 57) = *(a1 + 41);
  sub_21BCC0190(a1, v43);
  v31 = v39;
  sub_21BE2845C();
  v32 = v8[2];
  v33 = v40;
  v32(v40, v17, v7);
  v34 = v41;
  v32(v41, v31, v7);
  v35 = v42;
  v32(v42, v33, v7);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93E0, &qword_21BE3F4A0);
  v32(&v35[*(v36 + 48)], v34, v7);
  v37 = v8[1];
  v37(v31, v7);
  v37(v17, v7);
  v37(v34, v7);
  return (v37)(v33, v7);
}

uint64_t sub_21BCC0064@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_21BCC0144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  *v6 = v2[2];
  *&v6[9] = *(v2 + 41);
  return sub_21BCBF680(a1, a2);
}

unint64_t sub_21BCC01D0()
{
  result = qword_27CDB93C0;
  if (!qword_27CDB93C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB93A8, &qword_21BE3F488);
    sub_21BB3B038(&qword_27CDB93C8, &qword_27CDB93B8, &qword_21BE3F498);
    sub_21BBDD1FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB93C0);
  }

  return result;
}

uint64_t sub_21BCC0288(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93A8, &qword_21BE3F488);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_13()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_21BCC0350()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  return sub_21BE2854C();
}

uint64_t sub_21BCC03B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21BCC03F8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_21BCC0464(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, _BYTE *a5@<X8>)
{
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8EF0, &unk_21BE3E520);
  MEMORY[0x21CF036E0](v11, v7);
  v8 = v11[0];
  if (v11[0])
  {
    sub_21BBE66D8();
    v9 = a1;
    v10 = sub_21BE2940C();
  }

  else
  {
    v10 = 0;
  }

  *a5 = v10 & 1;
}

_BYTE *sub_21BCC0504(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8EF0, &unk_21BE3E520);
    return sub_21BE2854C();
  }

  return result;
}

uint64_t sub_21BCC0564(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_21BE28D7C();
  v9 = a5;
  v10 = a2;

  v11 = sub_21BE28D6C();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a5;
  v14 = v10;

  v15 = v9;
  v16 = sub_21BE28D6C();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = v13;
  v17[4] = v14;
  v17[5] = a3;
  v17[6] = a4;
  v17[7] = a5;
  sub_21BE2857C();
  v18 = swift_allocObject();
  v18[2] = v14;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  v19 = v14;

  v20 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB93E8, &qword_21BE3F548);
  sub_21BB3B038(&qword_27CDB93F0, &qword_27CDB93E8, &qword_21BE3F548);
  sub_21BBF32A0();
  sub_21BE2812C();
}

id sub_21BCC07A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = objc_allocWithZone(type metadata accessor for CreateContactView.ContactViewDelegate());
  v5 = a1;
  result = [v4 init];
  *a2 = a1;
  a2[1] = result;
  return result;
}

void sub_21BCC0804(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_21BCC0464(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), a1);
}

uint64_t objectdestroy_16Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return swift_deallocObject();
}

_BYTE *sub_21BCC086C(_BYTE *result)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  return sub_21BCC0504(result);
}

id sub_21BCC087C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  return sub_21BCC07A4(*(v1 + 16), a1);
}

uint64_t sub_21BCC0888()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

void *sub_21BCC08FC()
{
  type metadata accessor for AppleCashFamilyCache();
  swift_allocObject();
  return sub_21BE210B8();
}

uint64_t sub_21BCC0934()
{
  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  v1 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v1 removeObserver_];

  sub_21BB3A4CC((v0 + 3), &qword_27CDB9418, &qword_21BE3F6B8);
  v2 = OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCashViewModel__appleCashCellSublabel;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C80, &qword_21BE3B3A0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCashViewModel__appleCashPersistedCache);
  v5 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCashViewModel__appleCashPersistedCache + 8);
  v6 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCashViewModel__appleCashPersistedCache + 16);
  sub_21BB47CE0();
  v7 = *(*v0 + 12);
  v8 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_21BCC0A5C()
{
  v1[69] = v0;
  v2 = sub_21BE26A4C();
  v1[70] = v2;
  v3 = *(v2 - 8);
  v1[71] = v3;
  v4 = *(v3 + 64) + 15;
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  sub_21BE28D7C();
  v1[77] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v1[78] = v6;
  v1[79] = v5;

  return MEMORY[0x2822009F8](sub_21BCC0B84, v6, v5);
}

uint64_t sub_21BCC0B84()
{
  v146 = v0;
  sub_21BBA3854(*(v0 + 552) + 24, v0 + 56, &qword_27CDB9418, &qword_21BE3F6B8);
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 56), *(v0 + 80));
    v3 = *(v2 + 8);
    v142 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 640) = v5;
    *v5 = v0;
    v5[1] = sub_21BCC1BE0;

    return v142(v0 + 16, v1, v2);
  }

  v7 = *(v0 + 616);

  sub_21BB3A4CC(v0 + 56, &qword_27CDB9418, &qword_21BE3F6B8);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  v8 = *(*(v0 + 552) + 16);
  if ([v8 isMe] & 1) != 0 && (sub_21BE2916C())
  {
    sub_21BBA3854(v0 + 16, v0 + 416, &qword_27CDB9430, &unk_21BE3F720);
    v9 = *(v0 + 440);
    if (v9)
    {
      v10 = *(v0 + 608);
      v11 = *(v0 + 448);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 416), *(v0 + 440));
      v12 = (*(v11 + 24))(v9, v11);
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 416));
      sub_21BE2614C();

      v15 = sub_21BE26A2C();
      v16 = sub_21BE28FFC();

      v17 = os_log_type_enabled(v15, v16);
      v18 = *(v0 + 608);
      v19 = *(v0 + 568);
      v20 = *(v0 + 560);
      if (v17)
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v145[0] = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_21BB3D81C(v12, v14, v145);
        _os_log_impl(&dword_21BB35000, v15, v16, "MemberDetailsAppleCashViewModel, current balance for self %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v22);
        MEMORY[0x21CF05C50](v22, -1, -1);
        MEMORY[0x21CF05C50](v21, -1, -1);
      }

      (*(v19 + 8))(v18, v20);
      v23 = *(v0 + 552);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_21BE32770;
      *(v24 + 56) = MEMORY[0x277D837D0];
      *(v24 + 64) = sub_21BBBEFE8();
      *(v24 + 32) = v12;
      *(v24 + 40) = v14;
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v26 = objc_opt_self();

      v27 = [v26 bundleForClass_];
      sub_21BE2599C();

      v28 = sub_21BE289DC();
      v30 = v29;

      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 536) = v28;
      *(v0 + 544) = v30;

      sub_21BE26CBC();
      goto LABEL_61;
    }

    v80 = *(v0 + 600);
    sub_21BB3A4CC(v0 + 416, &qword_27CDB9430, &unk_21BE3F720);
    sub_21BE2614C();
    v81 = sub_21BE26A2C();
    v82 = sub_21BE28FFC();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_21BB35000, v81, v82, "MemberDetailsAppleCashViewModel, no formattedCashBalance", v83, 2u);
      MEMORY[0x21CF05C50](v83, -1, -1);
    }

    v84 = *(v0 + 600);
    v85 = *(v0 + 568);
    v86 = *(v0 + 560);
    v87 = *(v0 + 552);

    (*(v85 + 8))(v84, v86);
    type metadata accessor for ConfirmChildAgeViewModel();
    v88 = swift_getObjCClassFromMetadata();
    v89 = [objc_opt_self() bundleForClass_];
    v90 = sub_21BE2599C();
    v92 = v91;

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 520) = v90;
    *(v0 + 528) = v92;

    goto LABEL_50;
  }

  sub_21BBA3854(v0 + 16, v0 + 96, &qword_27CDB9430, &unk_21BE3F720);
  v31 = *(v0 + 120);
  if (!v31)
  {
    v42 = *(v0 + 576);
    sub_21BB3A4CC(v0 + 96, &qword_27CDB9430, &unk_21BE3F720);
    sub_21BE2614C();
    v43 = sub_21BE26A2C();
    v44 = sub_21BE28FFC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_21BB35000, v43, v44, "MemberDetailsAppleCashViewModel, no associatedAccountInformation", v45, 2u);
      MEMORY[0x21CF05C50](v45, -1, -1);
    }

    v46 = *(v0 + 576);
    v47 = *(v0 + 568);
    v48 = *(v0 + 560);
    v49 = *(v0 + 552);

    (*(v47 + 8))(v46, v48);
    type metadata accessor for ConfirmChildAgeViewModel();
    v50 = swift_getObjCClassFromMetadata();
    v51 = [objc_opt_self() bundleForClass_];
    v52 = sub_21BE2599C();
    v54 = v53;

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 456) = v52;
    *(v0 + 464) = v54;

LABEL_50:
    sub_21BE26CBC();
    sub_21BCC2F2C();
LABEL_61:
    sub_21BB3A4CC(v0 + 16, &qword_27CDB9430, &unk_21BE3F720);
    v135 = *(v0 + 608);
    v136 = *(v0 + 600);
    v137 = *(v0 + 592);
    v138 = *(v0 + 584);
    v139 = *(v0 + 576);

    v140 = *(v0 + 8);

    return v140();
  }

  v32 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 96), *(v0 + 120));
  (*(v32 + 8))(v31, v32);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  sub_21BE2974C();
  sub_21BE297EC();
  if (*(v0 + 160))
  {
    v33 = MEMORY[0x277D84F90];
    do
    {
      sub_21BB3D104((v0 + 136), v0 + 376);
      v35 = *(v0 + 400);
      v36 = *(v0 + 408);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 376), v35);
      v37 = (*(v36 + 16))(v35, v36);
      v39 = v38;
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 376));
      if (v39)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_21BBBC990(0, *(v33 + 2) + 1, 1, v33);
        }

        v41 = *(v33 + 2);
        v40 = *(v33 + 3);
        if (v41 >= v40 >> 1)
        {
          v33 = sub_21BBBC990((v40 > 1), v41 + 1, 1, v33);
        }

        *(v33 + 2) = v41 + 1;
        v34 = &v33[16 * v41];
        *(v34 + 4) = v37;
        *(v34 + 5) = v39;
      }

      sub_21BE297EC();
    }

    while (*(v0 + 160));
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  v55 = [v8 altDSID];
  if (v55)
  {
    v56 = v55;
    v57 = sub_21BE28A0C();
    v59 = v58;
  }

  else
  {
    v57 = 0;
    v59 = 0xE000000000000000;
  }

  *(v0 + 472) = v57;
  *(v0 + 480) = v59;
  v60 = swift_task_alloc();
  *(v60 + 16) = v0 + 472;
  v61 = sub_21BC9BF08(sub_21BBF0CC4, v60, v33);

  if ((v61 & 1) == 0)
  {
    v74 = *(v0 + 552);
    type metadata accessor for ConfirmChildAgeViewModel();
    v75 = swift_getObjCClassFromMetadata();
    v76 = [objc_opt_self() bundleForClass_];
    v77 = sub_21BE2599C();
    v79 = v78;

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 488) = v77;
    *(v0 + 496) = v79;

    sub_21BE26CBC();
LABEL_60:
    v134 = *(v0 + 552);
    sub_21BCC2F2C();

    goto LABEL_61;
  }

  sub_21BE2974C();
  while (1)
  {
    sub_21BE297EC();
    if (!*(v0 + 280))
    {

      goto LABEL_60;
    }

    sub_21BB3D104((v0 + 256), v0 + 296);
    v62 = *(v0 + 320);
    v63 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 296), v62);
    v64 = (*(v63 + 16))(v62, v63);
    v66 = v65;
    v67 = [v8 altDSID];
    if (!v67)
    {
      if (!v66)
      {
        goto LABEL_52;
      }

      goto LABEL_31;
    }

    v68 = v67;
    v69 = sub_21BE28A0C();
    v71 = v70;

    if (!v66)
    {
      if (!v71)
      {
        goto LABEL_52;
      }

LABEL_31:

      goto LABEL_32;
    }

    if (!v71)
    {
      goto LABEL_31;
    }

    if (v64 == v69 && v66 == v71)
    {
      break;
    }

    v73 = sub_21BE2995C();

    if (v73)
    {
      goto LABEL_52;
    }

LABEL_32:
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 296));
  }

LABEL_52:

  v93 = *(v0 + 592);
  sub_21BB3D104((v0 + 296), v0 + 216);
  sub_21BB3D104((v0 + 216), v0 + 176);
  sub_21BE2614C();
  sub_21BB3A35C(v0 + 176, v0 + 336);
  v94 = sub_21BE26A2C();
  v95 = sub_21BE28FFC();
  if (!os_log_type_enabled(v94, v95))
  {
    v107 = *(v0 + 592);
    v108 = *(v0 + 568);
    v109 = *(v0 + 560);

    v106 = *(v108 + 8);
    v106(v107, v109);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 336));
LABEL_56:
    v110 = *(v0 + 584);
    v111 = *(v0 + 200);
    v112 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 176), v111);
    v113 = (*(v112 + 24))(v111, v112);
    v115 = v114;
    sub_21BE2614C();

    v116 = sub_21BE26A2C();
    v117 = sub_21BE28FFC();

    v118 = os_log_type_enabled(v116, v117);
    v119 = *(v0 + 584);
    v120 = *(v0 + 568);
    v121 = *(v0 + 560);
    if (v118)
    {
      v144 = v106;
      v122 = swift_slowAlloc();
      v141 = v119;
      v123 = v113;
      v124 = swift_slowAlloc();
      v145[0] = v124;
      *v122 = 136315138;
      *(v122 + 4) = sub_21BB3D81C(v123, v115, v145);
      _os_log_impl(&dword_21BB35000, v116, v117, "MemberDetailsAppleCashViewModel, current balance for member %s", v122, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v124);
      v125 = v124;
      v113 = v123;
      MEMORY[0x21CF05C50](v125, -1, -1);
      MEMORY[0x21CF05C50](v122, -1, -1);

      v144(v141, v121);
    }

    else
    {

      v106(v119, v121);
    }

    v126 = *(v0 + 552);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v127 = swift_allocObject();
    *(v127 + 16) = xmmword_21BE32770;
    *(v127 + 56) = MEMORY[0x277D837D0];
    *(v127 + 64) = sub_21BBBEFE8();
    *(v127 + 32) = v113;
    *(v127 + 40) = v115;
    type metadata accessor for ConfirmChildAgeViewModel();
    v128 = swift_getObjCClassFromMetadata();
    v129 = objc_opt_self();

    v130 = [v129 bundleForClass_];
    sub_21BE2599C();

    v131 = sub_21BE289DC();
    v133 = v132;

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 504) = v131;
    *(v0 + 512) = v133;

    sub_21BE26CBC();
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
    goto LABEL_60;
  }

  v96 = swift_slowAlloc();
  v97 = swift_slowAlloc();
  v145[0] = v97;
  *v96 = 136315138;
  v98 = *(v0 + 360);
  v99 = *(v0 + 368);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 336), v98);
  result = (*(v99 + 16))(v98, v99);
  if (v100)
  {
    v101 = result;
    v102 = v100;
    v143 = *(v0 + 592);
    v103 = *(v0 + 568);
    v104 = *(v0 + 560);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 336));
    v105 = sub_21BB3D81C(v101, v102, v145);

    *(v96 + 4) = v105;
    _os_log_impl(&dword_21BB35000, v94, v95, "MemberDetailsAppleCashViewModel, dsids matched for %s", v96, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v97);
    MEMORY[0x21CF05C50](v97, -1, -1);
    MEMORY[0x21CF05C50](v96, -1, -1);

    v106 = *(v103 + 8);
    v106(v143, v104);
    goto LABEL_56;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BCC1BE0()
{
  v1 = *v0;
  v2 = *(*v0 + 640);
  v6 = *v0;

  v3 = *(v1 + 632);
  v4 = *(v1 + 624);

  return MEMORY[0x2822009F8](sub_21BCC1D00, v4, v3);
}

uint64_t sub_21BCC1D00()
{
  v140 = v0;
  v1 = *(v0 + 616);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v2 = *(*(v0 + 552) + 16);
  if ([v2 isMe] && (sub_21BE2916C() & 1) != 0)
  {
    sub_21BBA3854(v0 + 16, v0 + 416, &qword_27CDB9430, &unk_21BE3F720);
    v3 = *(v0 + 440);
    if (v3)
    {
      v4 = *(v0 + 608);
      v5 = *(v0 + 448);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 416), *(v0 + 440));
      v6 = (*(v5 + 24))(v3, v5);
      v8 = v7;
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 416));
      sub_21BE2614C();

      v9 = sub_21BE26A2C();
      v10 = sub_21BE28FFC();

      v11 = os_log_type_enabled(v9, v10);
      v12 = *(v0 + 608);
      v13 = *(v0 + 568);
      v14 = *(v0 + 560);
      if (v11)
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v139[0] = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_21BB3D81C(v6, v8, v139);
        _os_log_impl(&dword_21BB35000, v9, v10, "MemberDetailsAppleCashViewModel, current balance for self %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
        MEMORY[0x21CF05C50](v16, -1, -1);
        MEMORY[0x21CF05C50](v15, -1, -1);
      }

      (*(v13 + 8))(v12, v14);
      v17 = *(v0 + 552);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_21BE32770;
      *(v18 + 56) = MEMORY[0x277D837D0];
      *(v18 + 64) = sub_21BBBEFE8();
      *(v18 + 32) = v6;
      *(v18 + 40) = v8;
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v20 = objc_opt_self();

      v21 = [v20 bundleForClass_];
      sub_21BE2599C();

      v22 = sub_21BE289DC();
      v24 = v23;

      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 536) = v22;
      *(v0 + 544) = v24;

      sub_21BE26CBC();
      goto LABEL_57;
    }

    v74 = *(v0 + 600);
    sub_21BB3A4CC(v0 + 416, &qword_27CDB9430, &unk_21BE3F720);
    sub_21BE2614C();
    v75 = sub_21BE26A2C();
    v76 = sub_21BE28FFC();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_21BB35000, v75, v76, "MemberDetailsAppleCashViewModel, no formattedCashBalance", v77, 2u);
      MEMORY[0x21CF05C50](v77, -1, -1);
    }

    v78 = *(v0 + 600);
    v79 = *(v0 + 568);
    v80 = *(v0 + 560);
    v81 = *(v0 + 552);

    (*(v79 + 8))(v78, v80);
    type metadata accessor for ConfirmChildAgeViewModel();
    v82 = swift_getObjCClassFromMetadata();
    v83 = [objc_opt_self() bundleForClass_];
    v84 = sub_21BE2599C();
    v86 = v85;

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 520) = v84;
    *(v0 + 528) = v86;

    goto LABEL_46;
  }

  sub_21BBA3854(v0 + 16, v0 + 96, &qword_27CDB9430, &unk_21BE3F720);
  v25 = *(v0 + 120);
  if (!v25)
  {
    v36 = *(v0 + 576);
    sub_21BB3A4CC(v0 + 96, &qword_27CDB9430, &unk_21BE3F720);
    sub_21BE2614C();
    v37 = sub_21BE26A2C();
    v38 = sub_21BE28FFC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_21BB35000, v37, v38, "MemberDetailsAppleCashViewModel, no associatedAccountInformation", v39, 2u);
      MEMORY[0x21CF05C50](v39, -1, -1);
    }

    v40 = *(v0 + 576);
    v41 = *(v0 + 568);
    v42 = *(v0 + 560);
    v43 = *(v0 + 552);

    (*(v41 + 8))(v40, v42);
    type metadata accessor for ConfirmChildAgeViewModel();
    v44 = swift_getObjCClassFromMetadata();
    v45 = [objc_opt_self() bundleForClass_];
    v46 = sub_21BE2599C();
    v48 = v47;

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 456) = v46;
    *(v0 + 464) = v48;

LABEL_46:
    sub_21BE26CBC();
    sub_21BCC2F2C();
LABEL_57:
    sub_21BB3A4CC(v0 + 16, &qword_27CDB9430, &unk_21BE3F720);
    v130 = *(v0 + 608);
    v131 = *(v0 + 600);
    v132 = *(v0 + 592);
    v133 = *(v0 + 584);
    v134 = *(v0 + 576);

    v135 = *(v0 + 8);

    return v135();
  }

  v26 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 96), *(v0 + 120));
  (*(v26 + 8))(v25, v26);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  sub_21BE2974C();
  sub_21BE297EC();
  if (*(v0 + 160))
  {
    v27 = MEMORY[0x277D84F90];
    do
    {
      sub_21BB3D104((v0 + 136), v0 + 376);
      v29 = *(v0 + 400);
      v30 = *(v0 + 408);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 376), v29);
      v31 = (*(v30 + 16))(v29, v30);
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 376));
      if (v33)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_21BBBC990(0, *(v27 + 2) + 1, 1, v27);
        }

        v35 = *(v27 + 2);
        v34 = *(v27 + 3);
        if (v35 >= v34 >> 1)
        {
          v27 = sub_21BBBC990((v34 > 1), v35 + 1, 1, v27);
        }

        *(v27 + 2) = v35 + 1;
        v28 = &v27[16 * v35];
        *(v28 + 4) = v31;
        *(v28 + 5) = v33;
      }

      sub_21BE297EC();
    }

    while (*(v0 + 160));
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

  v49 = [v2 altDSID];
  if (v49)
  {
    v50 = v49;
    v51 = sub_21BE28A0C();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0xE000000000000000;
  }

  *(v0 + 472) = v51;
  *(v0 + 480) = v53;
  v54 = swift_task_alloc();
  *(v54 + 16) = v0 + 472;
  v55 = sub_21BC9BF08(sub_21BBF0CC4, v54, v27);

  if ((v55 & 1) == 0)
  {
    v68 = *(v0 + 552);
    type metadata accessor for ConfirmChildAgeViewModel();
    v69 = swift_getObjCClassFromMetadata();
    v70 = [objc_opt_self() bundleForClass_];
    v71 = sub_21BE2599C();
    v73 = v72;

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 488) = v71;
    *(v0 + 496) = v73;

    sub_21BE26CBC();
LABEL_56:
    v129 = *(v0 + 552);
    sub_21BCC2F2C();

    goto LABEL_57;
  }

  sub_21BE2974C();
  while (1)
  {
    sub_21BE297EC();
    if (!*(v0 + 280))
    {

      goto LABEL_56;
    }

    sub_21BB3D104((v0 + 256), v0 + 296);
    v56 = *(v0 + 320);
    v57 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 296), v56);
    v58 = (*(v57 + 16))(v56, v57);
    v60 = v59;
    v61 = [v2 altDSID];
    if (!v61)
    {
      if (!v60)
      {
        goto LABEL_48;
      }

      goto LABEL_27;
    }

    v62 = v61;
    v63 = sub_21BE28A0C();
    v65 = v64;

    if (!v60)
    {
      if (!v65)
      {
        goto LABEL_48;
      }

LABEL_27:

      goto LABEL_28;
    }

    if (!v65)
    {
      goto LABEL_27;
    }

    if (v58 == v63 && v60 == v65)
    {
      break;
    }

    v67 = sub_21BE2995C();

    if (v67)
    {
      goto LABEL_48;
    }

LABEL_28:
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 296));
  }

LABEL_48:

  v87 = *(v0 + 592);
  sub_21BB3D104((v0 + 296), v0 + 216);
  sub_21BB3D104((v0 + 216), v0 + 176);
  sub_21BE2614C();
  sub_21BB3A35C(v0 + 176, v0 + 336);
  v88 = sub_21BE26A2C();
  v89 = sub_21BE28FFC();
  if (!os_log_type_enabled(v88, v89))
  {
    v102 = *(v0 + 592);
    v103 = *(v0 + 568);
    v104 = *(v0 + 560);

    v101 = *(v103 + 8);
    v101(v102, v104);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 336));
LABEL_52:
    v105 = *(v0 + 584);
    v106 = *(v0 + 200);
    v107 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 176), v106);
    v108 = (*(v107 + 24))(v106, v107);
    v110 = v109;
    sub_21BE2614C();

    v111 = sub_21BE26A2C();
    v112 = sub_21BE28FFC();

    v113 = os_log_type_enabled(v111, v112);
    v114 = *(v0 + 584);
    v115 = *(v0 + 568);
    v116 = *(v0 + 560);
    if (v113)
    {
      v138 = v101;
      v117 = swift_slowAlloc();
      v136 = v114;
      v118 = v108;
      v119 = swift_slowAlloc();
      v139[0] = v119;
      *v117 = 136315138;
      *(v117 + 4) = sub_21BB3D81C(v118, v110, v139);
      _os_log_impl(&dword_21BB35000, v111, v112, "MemberDetailsAppleCashViewModel, current balance for member %s", v117, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v119);
      v120 = v119;
      v108 = v118;
      MEMORY[0x21CF05C50](v120, -1, -1);
      MEMORY[0x21CF05C50](v117, -1, -1);

      v138(v136, v116);
    }

    else
    {

      v101(v114, v116);
    }

    v121 = *(v0 + 552);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v122 = swift_allocObject();
    *(v122 + 16) = xmmword_21BE32770;
    *(v122 + 56) = MEMORY[0x277D837D0];
    *(v122 + 64) = sub_21BBBEFE8();
    *(v122 + 32) = v108;
    *(v122 + 40) = v110;
    type metadata accessor for ConfirmChildAgeViewModel();
    v123 = swift_getObjCClassFromMetadata();
    v124 = objc_opt_self();

    v125 = [v124 bundleForClass_];
    sub_21BE2599C();

    v126 = sub_21BE289DC();
    v128 = v127;

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 504) = v126;
    *(v0 + 512) = v128;

    sub_21BE26CBC();
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
    goto LABEL_56;
  }

  v90 = swift_slowAlloc();
  v91 = swift_slowAlloc();
  v139[0] = v91;
  *v90 = 136315138;
  v92 = *(v0 + 360);
  v93 = *(v0 + 368);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 336), v92);
  result = (*(v93 + 16))(v92, v93);
  if (v95)
  {
    v96 = result;
    v97 = v95;
    v137 = *(v0 + 592);
    v98 = *(v0 + 568);
    v99 = *(v0 + 560);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 336));
    v100 = sub_21BB3D81C(v96, v97, v139);

    *(v90 + 4) = v100;
    _os_log_impl(&dword_21BB35000, v88, v89, "MemberDetailsAppleCashViewModel, dsids matched for %s", v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v91);
    MEMORY[0x21CF05C50](v91, -1, -1);
    MEMORY[0x21CF05C50](v90, -1, -1);

    v101 = *(v98 + 8);
    v101(v137, v99);
    goto LABEL_52;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BCC2C0C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v11 = sub_21BE26A2C();
  v12 = sub_21BE28FFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_21BB35000, v11, v12, "MemberDetailsAppleCashViewModel, got notification to update peer paymeant account", v13, 2u);
    MEMORY[0x21CF05C50](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v14 = sub_21BE28DAC();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  sub_21BE28D7C();

  v15 = sub_21BE28D6C();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v1;
  sub_21BBA932C(0, 0, v5, &unk_21BE3F718, v16);
}

uint64_t sub_21BCC2E44()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BCC0A5C();
}

void sub_21BCC2F2C()
{
  v1 = (v0 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCashViewModel__appleCashPersistedCache);
  v2 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCashViewModel__appleCashPersistedCache);
  v3 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCashViewModel__appleCashPersistedCache + 8);
  v4 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCashViewModel__appleCashPersistedCache + 16);
  sub_21BC718B0();
  type metadata accessor for AppleCashFamilyCache();
  sub_21BCC3DBC();
  v5 = sub_21BE26EAC();
  sub_21BB47CE0();
  sub_21BE1F1EC(v18);
  v7 = v18[0];
  v6 = v18[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v8 = sub_21BE289CC();

  v9 = sub_21BE1F55C();
  if (v9)
  {
    v10 = v9;
    v16 = *(v5 + 16);
    v17 = *(v5 + 24);

    MEMORY[0x21CF03CA0](46, 0xE100000000000000);
    MEMORY[0x21CF03CA0](v7, v6);
    v11 = sub_21BE289CC();

    [v10 setValue:v8 forKey:{v11, v16, v17}];

    v8 = v11;
  }

  else
  {
  }

  v12 = *v1;
  v13 = v1[1];
  v14 = *(v1 + 16);
  sub_21BC718B0();
  sub_21BE26EAC();
  sub_21BB47CE0();
  v15 = sub_21BE1F55C();
  [v15 synchronize];
}

uint64_t sub_21BCC313C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MemberDetailsAppleCashViewModel();
  result = sub_21BE26C0C();
  *a1 = result;
  return result;
}

id sub_21BCC317C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  a2[3] = sub_21BB3A2A4(0, &qword_27CDB9440, 0x277D38188);
  a2[4] = &off_282D8F1D0;
  *a2 = v4;

  return v4;
}

void sub_21BCC31E8()
{
  v1 = [*v0 associatedAccountInformation];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 associatedAccounts];

    if (v3)
    {
      sub_21BB3A2A4(0, &qword_27CDB9440, 0x277D38188);
      sub_21BCC3EC8();
      v4 = sub_21BE28E4C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9450, &unk_21BE3F740);
      v5 = swift_allocObject();
      v5[2] = v4;
      v5[3] = sub_21BCC317C;
      v5[4] = 0;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_21BCC32BC()
{
  v1 = [*v0 altDSID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21BE28A0C();

  return v3;
}

void sub_21BCC3324()
{
  v1 = [*v0 currentBalance];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 formattedStringValue];

    if (v3)
    {
      sub_21BE28A0C();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_21BCC33AC(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](sub_21BCC33CC, 0, 0);
}

uint64_t sub_21BCC33CC()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21BCC34E8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9438, &qword_21BE3F738);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BC2D85C;
  v0[13] = &block_descriptor_24;
  v0[14] = v2;
  [v1 accountWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BCC34E8()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BCC35C8, 0, 0);
}

uint64_t sub_21BCC35C8()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = sub_21BB3A2A4(0, &qword_27CDB9440, 0x277D38188);
    v3 = &off_282D8F1D0;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = v0[19];
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
  }

  v5 = v0[19];
  *v5 = v1;
  v5[3] = v2;
  v5[4] = v3;
  v6 = v0[1];

  return v6();
}

uint64_t sub_21BCC366C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBA6A64;

  return sub_21BCC33AC(a1);
}

uint64_t type metadata accessor for MemberDetailsAppleCashViewModel()
{
  result = qword_27CDB9408;
  if (!qword_27CDB9408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BCC375C()
{
  sub_21BCC380C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_21BCC380C()
{
  if (!qword_27CDB7C58)
  {
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB7C58);
    }
  }
}

uint64_t sub_21BCC3898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_21BBA6A64;

  return v11(a1, a2, a3);
}

uint64_t sub_21BCC39C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_21BCC3A44(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

uint64_t sub_21BCC3AC8(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C80, &qword_21BE3B3A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCashViewModel__appleCashCellSublabel;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = sub_21BE2599C();
  v15 = v14;

  *&v25[0] = v13;
  *(&v25[0] + 1) = v15;
  sub_21BE26C6C();
  (*(v6 + 32))(v2 + v10, v9, v5);
  v16 = v2 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCashViewModel__appleCashPersistedCache;
  *v16 = sub_21BCC08FC;
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  sub_21BBA3854(a2, &v23, &qword_27CDB9418, &qword_21BE3F6B8);
  if (v24)
  {
    sub_21BB3D104(&v23, v25);
    sub_21BB3D104(v25, v2 + 24);
  }

  else
  {
    sub_21BB3A4CC(&v23, &qword_27CDB9418, &qword_21BE3F6B8);
    v17 = [objc_opt_self() sharedInstance];
    if (v17)
    {
      v18 = v17;
      *(v2 + 48) = sub_21BB3A2A4(0, &qword_27CDB9420, 0x277D381A0);
      *(v2 + 56) = &off_282D8F1F0;
      *(v2 + 24) = v18;
    }

    else
    {
      *(v2 + 56) = 0;
      *(v2 + 40) = 0u;
      *(v2 + 24) = 0u;
    }
  }

  *(v2 + 16) = a1;
  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  v19 = swift_getObjCClassFromMetadata();
  v20 = a1;
  v21 = [v19 defaultCenter];
  [v21 addObserver:v2 selector:sel_paymentAccountDidChange name:*MEMORY[0x277D38350] object:0];

  sub_21BB3A4CC(a2, &qword_27CDB9418, &qword_21BE3F6B8);
  return v2;
}

unint64_t sub_21BCC3DBC()
{
  result = qword_27CDB9428;
  if (!qword_27CDB9428)
  {
    type metadata accessor for AppleCashFamilyCache();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9428);
  }

  return result;
}

uint64_t sub_21BCC3E14()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBB7EB8;

  return sub_21BCC2E44();
}

unint64_t sub_21BCC3EC8()
{
  result = qword_27CDB9448;
  if (!qword_27CDB9448)
  {
    sub_21BB3A2A4(255, &qword_27CDB9440, 0x277D38188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB9448);
  }

  return result;
}

uint64_t sub_21BCC3F5C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v11 = a2;
  v12 = a4;
  result = sub_21BE283EC();
  *a5 = v14;
  a5[1] = v15;
  a5[2] = sub_21BCC5DEC;
  a5[3] = v10;
  a5[4] = sub_21BCC5D70;
  a5[5] = 0;
  a5[6] = 0;
  a5[7] = 0;
  return result;
}

id sub_21BCC4054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9458, &qword_21BE3F800);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = v26;
  v31 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9460, &qword_21BE3F808);
  sub_21BB3B038(&qword_27CDB9468, &qword_27CDB9460, &qword_21BE3F808);
  sub_21BE27D1C();
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  v18 = sub_21BE2599C();
  v20 = v19;

  v32 = v18;
  v33 = v20;
  sub_21BB3B038(&qword_27CDB9470, &qword_27CDB9458, &qword_21BE3F800);
  sub_21BB41FA4();
  sub_21BE27F9C();

  (*(v12 + 8))(v15, v11);
  sub_21BBDAF04();
  sub_21BCC7290(&qword_280BD8A20, sub_21BBDAF04);
  v21 = sub_21BE26BFC();
  v22 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9478, &qword_21BE3F810) + 36));
  v23 = v26;
  *v22 = v21;
  v22[1] = v23;

  return v23;
}

uint64_t sub_21BCC4338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v56 = a3;
  v55 = a1;
  v61 = a6;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9480, &qword_21BE3F818);
  v58 = *(v60 - 8);
  v11 = *(v58 + 64);
  v12 = MEMORY[0x28223BE20](v60);
  v59 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v63 = &v52 - v14;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9488, &qword_21BE3F820);
  v54 = *(v57 - 8);
  v15 = v54;
  v16 = *(v54 + 64);
  v17 = MEMORY[0x28223BE20](v57);
  v62 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v52 - v19;
  v68 = a1;
  v69 = a2;
  v70 = a3;
  v71 = a4;
  v21 = a4;
  v72 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9490, &qword_21BE3F828);
  sub_21BB3B038(&qword_27CDB9498, &qword_27CDB9490, &qword_21BE3F828);
  v53 = v20;
  sub_21BE2860C();
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = objc_opt_self();
  v24 = [v23 bundleForClass_];
  v25 = sub_21BE2599C();
  v27 = v26;

  v77 = v25;
  v78 = v27;
  sub_21BB41FA4();
  v77 = sub_21BE27DBC();
  v78 = v28;
  v79 = v29 & 1;
  v80 = v30;
  v31 = [v23 bundleForClass_];
  v32 = sub_21BE2599C();
  v34 = v33;

  v73 = v32;
  v74 = v34;
  v73 = sub_21BE27DBC();
  v74 = v35;
  v75 = v36 & 1;
  v76 = v37;
  v64 = v55;
  v65 = a2;
  v66 = v56;
  v67 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB94A0, &qword_21BE3F830);
  sub_21BCC70CC();
  v38 = v63;
  sub_21BE285FC();
  v39 = *(v15 + 16);
  v40 = v62;
  v41 = v57;
  v39(v62, v20, v57);
  v42 = v58;
  v43 = *(v58 + 16);
  v44 = v59;
  v45 = v38;
  v46 = v60;
  v43(v59, v45, v60);
  v47 = v61;
  v39(v61, v40, v41);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB94C8, &qword_21BE3F840);
  v43(&v47[*(v48 + 48)], v44, v46);
  v49 = *(v42 + 8);
  v49(v63, v46);
  v50 = *(v54 + 8);
  v50(v53, v41);
  v49(v44, v46);
  return (v50)(v62, v41);
}

uint64_t sub_21BCC489C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, _OWORD *a6@<X8>)
{
  v53 = a5;
  v54 = a4;
  v51 = a1;
  v52 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB94E0, &qword_21BE3F8B8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v50 - v10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB94E8, &qword_21BE3F8C0);
  v58 = *(v61 - 8);
  v12 = *(v58 + 64);
  v13 = MEMORY[0x28223BE20](v61);
  v56 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v55 = v50 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB94F0, &qword_21BE3F8C8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v59 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v50 - v20;
  v60 = sub_21BE2770C();
  LOBYTE(v68) = 0;
  sub_21BCC5098(&v64);
  v85 = *&v65[144];
  v86 = *&v65[160];
  v81 = *&v65[80];
  v82 = *&v65[96];
  v83 = *&v65[112];
  v84 = *&v65[128];
  v77 = *&v65[16];
  v78 = *&v65[32];
  v79 = *&v65[48];
  v80 = *&v65[64];
  v75 = v64;
  v76 = *v65;
  v88[10] = *&v65[144];
  v88[11] = *&v65[160];
  v88[6] = *&v65[80];
  v88[7] = *&v65[96];
  v88[8] = *&v65[112];
  v88[9] = *&v65[128];
  v88[2] = *&v65[16];
  v88[3] = *&v65[32];
  v88[4] = *&v65[48];
  v88[5] = *&v65[64];
  v87 = v65[176];
  v89 = v65[176];
  v88[0] = v64;
  v88[1] = *v65;
  sub_21BBA3854(&v75, &v62, &qword_27CDB94F8, &qword_21BE3F8D0);
  sub_21BB3A4CC(v88, &qword_27CDB94F8, &qword_21BE3F8D0);
  *&v67[151] = v84;
  *&v67[167] = v85;
  *&v67[183] = v86;
  *&v67[87] = v80;
  *&v67[103] = v81;
  *&v67[119] = v82;
  *&v67[135] = v83;
  *&v67[23] = v76;
  *&v67[39] = v77;
  *&v67[55] = v78;
  *&v67[71] = v79;
  v67[199] = v87;
  *&v67[7] = v75;
  v57 = v68;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v22 = 1;
  if ((v64 & 1) == 0)
  {
    *v11 = sub_21BE2770C();
    *(v11 + 1) = 0x402C000000000000;
    v11[16] = 0;
    v50[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9500, &unk_21BE3F920) + 44);
    v23 = swift_allocObject();
    v24 = v52;
    v23[2] = v51;
    v23[3] = a2;
    v25 = v11;
    v26 = v21;
    v27 = a2;
    v28 = v54;
    v23[4] = v24;
    v23[5] = v28;
    v29 = v53;
    v23[6] = v53;
    v30 = v29;
    v31 = v27;
    v21 = v26;
    v32 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DA0, &qword_21BE39C40);
    sub_21BCC72E8();
    sub_21BE2843C();
    sub_21BE2869C();
    sub_21BE2725C();
    v33 = v56;
    sub_21BBB7D84(v25, v56, &qword_27CDB94E0, &qword_21BE3F8B8);
    v34 = (v33 + *(v61 + 36));
    v35 = v71;
    v36 = v73;
    v34[4] = v72;
    v34[5] = v36;
    v34[6] = v74;
    v37 = v69;
    *v34 = v68;
    v34[1] = v37;
    v34[2] = v70;
    v34[3] = v35;
    v38 = v55;
    sub_21BBB7D84(v33, v55, &qword_27CDB94E8, &qword_21BE3F8C0);
    sub_21BBB7D84(v38, v26, &qword_27CDB94E8, &qword_21BE3F8C0);
    v22 = 0;
  }

  (*(v58 + 56))(v21, v22, 1, v61);
  v39 = v59;
  sub_21BBA3854(v21, v59, &qword_27CDB94F0, &qword_21BE3F8C8);
  *(&v63[9] + 1) = *&v67[144];
  *(&v63[10] + 1) = *&v67[160];
  *(&v63[11] + 1) = *&v67[176];
  *(&v63[5] + 1) = *&v67[80];
  *(&v63[6] + 1) = *&v67[96];
  *(&v63[7] + 1) = *&v67[112];
  *(&v63[8] + 1) = *&v67[128];
  *(&v63[1] + 1) = *&v67[16];
  *(&v63[2] + 1) = *&v67[32];
  *(&v63[3] + 1) = *&v67[48];
  v40 = v60;
  *&v62 = v60;
  *(&v62 + 1) = 0x402C000000000000;
  v41 = v57;
  LOBYTE(v63[0]) = v57;
  *(&v63[12] + 1) = *&v67[192];
  *(&v63[4] + 1) = *&v67[64];
  *(v63 + 1) = *v67;
  v42 = v63[10];
  a6[10] = v63[9];
  a6[11] = v42;
  a6[12] = v63[11];
  *(a6 + 201) = *(&v63[11] + 9);
  v43 = v63[6];
  a6[6] = v63[5];
  a6[7] = v43;
  v44 = v63[8];
  a6[8] = v63[7];
  a6[9] = v44;
  v45 = v63[2];
  a6[2] = v63[1];
  a6[3] = v45;
  v46 = v63[4];
  a6[4] = v63[3];
  a6[5] = v46;
  v47 = v63[0];
  *a6 = v62;
  a6[1] = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9510, &qword_21BE3F930);
  sub_21BBA3854(v39, a6 + *(v48 + 48), &qword_27CDB94F0, &qword_21BE3F8C8);
  sub_21BBA3854(&v62, &v64, &qword_27CDB9518, &unk_21BE3F938);
  sub_21BB3A4CC(v21, &qword_27CDB94F0, &qword_21BE3F8C8);
  sub_21BB3A4CC(v39, &qword_27CDB94F0, &qword_21BE3F8C8);
  *&v65[145] = *&v67[144];
  *&v65[161] = *&v67[160];
  *&v65[177] = *&v67[176];
  *&v65[81] = *&v67[80];
  *&v65[97] = *&v67[96];
  *&v65[113] = *&v67[112];
  *&v65[129] = *&v67[128];
  *&v65[17] = *&v67[16];
  *&v65[33] = *&v67[32];
  *&v65[49] = *&v67[48];
  *&v65[65] = *&v67[64];
  *&v64 = v40;
  *(&v64 + 1) = 0x402C000000000000;
  v65[0] = v41;
  v66 = *&v67[192];
  *&v65[1] = *v67;
  return sub_21BB3A4CC(&v64, &qword_27CDB9518, &unk_21BE3F938);
}

uint64_t sub_21BCC5098@<X0>(_OWORD *a1@<X8>)
{
  v73 = a1;
  v1 = sub_21BE2838C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  v9 = sub_21BE289CC();
  v10 = [objc_opt_self() imageNamed:v9 inBundle:v8 withConfiguration:0];

  if (v10)
  {
    sub_21BE2836C();
    (*(v2 + 104))(v5, *MEMORY[0x277CE0FE0], v1);
    v76 = sub_21BE283CC();

    (*(v2 + 8))(v5, v1);
    sub_21BE2869C();
    sub_21BE26F2C();
    v11 = v122;
    v79 = v121;
    v80 = v123;
    v12 = v124;
    v77 = v122;
    v78 = v124;
    v75 = v125;
    v82 = v126;
    v81 = sub_21BE27B8C();
    sub_21BE26E0C();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v120 = v11;
    v118 = v12;
    v115 = 0;
    type metadata accessor for ConfirmChildAgeViewModel();
    v68 = swift_getObjCClassFromMetadata();
    v21 = [v7 bundleForClass_];
    v22 = sub_21BE2599C();
    v24 = v23;

    *&v93 = v22;
    *(&v93 + 1) = v24;
    v69 = sub_21BB41FA4();
    v25 = sub_21BE27DBC();
    v27 = v26;
    v29 = v28;
    sub_21BE27C7C();
    v66 = v7;
    v30 = sub_21BE27D9C();
    v32 = v31;
    v34 = v33;

    sub_21BBC7C7C(v25, v27, v29 & 1);

    v35 = sub_21BE27D8C();
    v71 = v36;
    v72 = v35;
    v67 = v37;
    v74 = v38;
    sub_21BBC7C7C(v30, v32, v34 & 1);

    KeyPath = swift_getKeyPath();
    v39 = [v66 bundleForClass_];
    v40 = sub_21BE2599C();
    v42 = v41;

    *&v93 = v40;
    *(&v93 + 1) = v42;
    v43 = sub_21BE27DBC();
    v45 = v44;
    LOBYTE(v25) = v46;
    sub_21BE27BEC();
    v47 = sub_21BE27D9C();
    v66 = v47;
    v49 = v48;
    v51 = v50;
    v69 = v52;

    sub_21BBC7C7C(v43, v45, v25 & 1);

    v53 = swift_getKeyPath();
    v68 = v53;
    LOBYTE(v25) = v67 & 1;
    v85 = v67 & 1;
    *&v86 = v76;
    *(&v86 + 1) = v79;
    LOBYTE(v87) = v77;
    *(&v87 + 1) = *v119;
    DWORD1(v87) = *&v119[3];
    *(&v87 + 1) = v80;
    LOBYTE(v88) = v78;
    *(&v88 + 1) = *v117;
    DWORD1(v88) = *&v117[3];
    *(&v88 + 1) = v75;
    *&v89 = v82;
    BYTE8(v89) = v81;
    HIDWORD(v89) = *&v116[3];
    *(&v89 + 9) = *v116;
    *&v90 = v14;
    *(&v90 + 1) = v16;
    *&v91 = v18;
    *(&v91 + 1) = v20;
    v92 = 0;
    LOBYTE(v99) = 0;
    v97 = v90;
    v98 = v91;
    v95 = v88;
    v96 = v89;
    v93 = v86;
    v94 = v87;
    v84 = v67 & 1;
    v51 &= 1u;
    v83 = v51;
    v54 = v87;
    v56 = v72;
    v55 = v73;
    *v73 = v86;
    v55[1] = v54;
    v57 = v95;
    v58 = v96;
    v59 = v98;
    v60 = v99;
    v55[4] = v97;
    v55[5] = v59;
    v55[2] = v57;
    v55[3] = v58;
    *(v55 + 12) = v60;
    *(v55 + 13) = v56;
    v62 = KeyPath;
    v61 = v71;
    *(v55 + 14) = v71;
    *(v55 + 120) = v25;
    *(v55 + 16) = v74;
    *(v55 + 17) = v62;
    *(v55 + 144) = 1;
    *(v55 + 19) = v47;
    *(v55 + 20) = v49;
    *(v55 + 168) = v51;
    *(v55 + 22) = v69;
    *(v55 + 23) = v53;
    *(v55 + 192) = 1;
    sub_21BBA3854(&v86, v100, &qword_27CDB9520, &qword_21BE3F998);
    sub_21BBA4A38(v56, v61, v25);

    v63 = v66;
    sub_21BBA4A38(v66, v49, v51);

    sub_21BBC7C7C(v63, v49, v51);

    sub_21BBC7C7C(v56, v61, v85);

    v100[0] = v76;
    v100[1] = v79;
    v101 = v77;
    *v102 = *v119;
    *&v102[3] = *&v119[3];
    v103 = v80;
    v104 = v78;
    *v105 = *v117;
    *&v105[3] = *&v117[3];
    v106 = v75;
    v107 = v82;
    v108 = v81;
    *v109 = *v116;
    *&v109[3] = *&v116[3];
    v110 = v14;
    v111 = v16;
    v112 = v18;
    v113 = v20;
    v114 = 0;
    return sub_21BB3A4CC(v100, &qword_27CDB9520, &qword_21BE3F998);
  }

  else
  {
    result = sub_21BE2978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21BCC57C8(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - v12;
  v14 = sub_21BE28DAC();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_21BE28D7C();
  v15 = a5;
  v16 = a2;
  v17 = a4;
  v18 = sub_21BE28D6C();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = a1;
  v19[5] = v16;
  v19[6] = a3;
  v19[7] = v17;
  v19[8] = a5;
  sub_21BBA932C(0, 0, v13, &unk_21BE3F950, v19);
}

uint64_t sub_21BCC5924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = sub_21BE28D7C();
  v8[3] = sub_21BE28D6C();
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_21BBAFDA8;

  return sub_21BCC7448(a8, a5);
}

double sub_21BCC59F4@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_21BE2599C();
  v6 = v5;

  *&v14 = v4;
  *(&v14 + 1) = v6;
  sub_21BB41FA4();
  v7 = sub_21BE27DBC();
  v9 = v8;
  LOBYTE(v6) = v10;
  v12 = v11;
  sub_21BE2869C();
  sub_21BE26F2C();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v12;
  *(a1 + 32) = v14;
  *(a1 + 48) = v15;
  result = *&v16;
  *(a1 + 64) = v16;
  return result;
}

uint64_t sub_21BCC5B20(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  swift_getKeyPath();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v9 = a2;
  v10 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8228, &qword_21BE3B0E0);
  sub_21BB3B038(&qword_27CDB94D0, &qword_27CDB8228, &qword_21BE3B0E0);
  sub_21BCC723C();
  sub_21BCC71DC();
  return sub_21BE285BC();
}

uint64_t sub_21BCC5C8C@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v14 = *(a1 + 40);
  type metadata accessor for AppleCardFamilySettingsViewModel();
  sub_21BCC7290(&unk_27CDB5760, type metadata accessor for AppleCardFamilySettingsViewModel);
  v10 = v5;

  v11 = a2;
  result = sub_21BE270CC();
  *a3 = v10;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = v14;
  *(a3 + 48) = result;
  *(a3 + 56) = v13;
  return result;
}

uint64_t sub_21BCC5D70()
{
  if (qword_27CDB4F90 != -1)
  {
    swift_once();
  }

  v1[0] = 0;
  v2 = xmmword_21BE33DF0;
  v3 = 0;
  v4 = 0;
  v5 = 514;
  return sub_21BD23430(v1);
}