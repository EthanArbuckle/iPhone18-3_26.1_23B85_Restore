uint64_t sub_21EA4F918(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_21EA4F96C(int a1)
{
  state64[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    state64[0] = 0;
    if (!notify_get_state(a1, state64))
    {
      sub_21EA50A74();
    }
  }
}

uint64_t sub_21EA4FA90(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_bundleIdentifierState);
  if (!*(v3 + 16))
  {
    return 4;
  }

  v6 = sub_21EA49DF4(a1, a2);
  if (v7)
  {
    v8 = *(*(v3 + 56) + 8 * v6);
  }

  else
  {
    v8 = 4;
  }

  return v8;
}

void sub_21EA4FB70(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  if (a1 >= 4)
  {
    if (a1 != 4)
    {
      sub_21EAA9540();
      __break(1u);
    }
  }

  else
  {
    v10 = [objc_allocWithZone(type metadata accessor for CCUIGamePolicyProxy()) init];
    v11 = sub_21EA4EB0C();
    v12 = [v11 remoteObjectProxy];

    sub_21EAA9320();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCBE8);
    if (swift_dynamicCast())
    {
      v13 = aBlock[6];
      v14 = sub_21EAA8DC0();
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = swift_allocObject();
      v16[2] = v10;
      v16[3] = v15;
      v16[4] = a4;
      v16[5] = a5;
      v16[6] = a2;
      v16[7] = a3;
      aBlock[4] = sub_21EA518C8;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21EA4FFB0;
      aBlock[3] = &block_descriptor_11;
      v17 = _Block_copy(aBlock);
      v18 = v10;

      [v13 requestCCUISetGameModeInfoWithState:a1 bundleIdentifier:v14 withReply:v17];
      _Block_release(v17);

      swift_unknownObjectRelease();
    }

    else
    {

      a4(4);
    }
  }
}

void sub_21EA4FDB8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  [*(a2 + OBJC_IVAR____TtC15ControlCenterUIP33_7F4488837D5B852FB42D4199467ECC5E19CCUIGamePolicyProxy__connection) invalidate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    a4(4);
    return;
  }

  v11 = Strong;
  v12 = sub_21EAA8610();
  v13 = v12;
  v22 = a4;
  if (v12 >> 62)
  {
LABEL_22:
    v14 = sub_21EAA9380();
    if (v14)
    {
LABEL_4:
      v15 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x223D67210](v15, v13);
        }

        else
        {
          if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v16 = *(v13 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        if (sub_21EAA8650() == a6 && v19 == a7)
        {
          break;
        }

        v20 = sub_21EAA9530();

        if (v20)
        {
          goto LABEL_17;
        }

        ++v15;
        if (v18 == v14)
        {
          goto LABEL_23;
        }
      }

LABEL_17:

      v21 = sub_21EAA8670();
      if (v21 >= 4)
      {
        v21 = 4;
      }

      v22(v21);

      goto LABEL_24;
    }
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_4;
    }
  }

LABEL_23:

  v22(4uLL);
LABEL_24:
  sub_21EA50138(a1);
}

void sub_21EA4FFB0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

BOOL sub_21EA500BC()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v2 = 8;
  v3[0] = 0;
  return sysctlbyname("kern.console_mode", v3, &v2, 0, 0) != -1 && v3[0] == 1;
}

unint64_t sub_21EA50138(void *a1)
{
  v2 = sub_21EAA8CD0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21EAA8D10();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D84F90];
  v10 = sub_21EA511B0(MEMORY[0x277D84F90]);
  if (v9 >> 62 && sub_21EAA9380())
  {
    sub_21EA5848C(MEMORY[0x277D84F90]);
    v11 = v38;
  }

  else
  {
    v11 = MEMORY[0x277D84FA0];
  }

  v50 = v11;
  v42 = a1;
  result = sub_21EAA8610();
  v13 = result;
  if (result >> 62)
  {
    result = sub_21EAA9380();
    v14 = result;
  }

  else
  {
    v14 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = v5;
  v46 = v6;
  v44 = v7;
  if (!v14)
  {

    v15 = 0;
LABEL_20:
    sub_21E9F8880(0, &qword_28125B7F0);
    v30 = sub_21EAA90C0();
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = v10;
    v33 = v42;
    *(v32 + 32) = v11;
    *(v32 + 40) = v33;
    *(v32 + 48) = v15 & 1;
    aBlock[4] = sub_21EA51E1C;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21EA87FF0;
    aBlock[3] = &block_descriptor_55;
    v34 = _Block_copy(aBlock);
    v35 = v33;

    v36 = v43;
    sub_21EAA8CF0();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21EA51E2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCC40);
    sub_21EA51E84();
    v37 = v45;
    sub_21EAA9340();
    MEMORY[0x223D66E90](0, v36, v37, v34);
    _Block_release(v34);

    (*(v3 + 8))(v37, v2);
    return (*(v44 + 8))(v36, v46);
  }

  if (v14 >= 1)
  {
    v40 = v3;
    v41 = v2;
    v15 = 0;
    v16 = 0;
    v47 = "icySupport";
    v48 = v13 & 0xC000000000000001;
    do
    {
      if (v48)
      {
        v17 = MEMORY[0x223D67210](v16, v13);
      }

      else
      {
        v17 = *(v13 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = sub_21EAA8650();
      v21 = v20;
      v22 = sub_21EAA8670();
      if (v22 >= 4)
      {
        v23 = 4;
      }

      else
      {
        v23 = v22;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v10;
      sub_21EA65A88(v23, v19, v21, isUniquelyReferenced_nonNull_native);

      v10 = aBlock[0];
      v25 = [objc_allocWithZone(MEMORY[0x277CFC9B8]) init];
      [v25 setSensorType_];
      sub_21EAA8660();
      v26 = sub_21EAA8DC0();

      [v25 setExecutableDisplayName_];

      sub_21EAA8650();
      v27 = sub_21EAA8DC0();

      [v25 setBundleIdentifier_];

      v28 = sub_21EAA8DC0();
      [v25 setAttributionGroup_];

      [v25 setWebsite_];
      [v25 setIsSystemService_];
      [v25 setUsedRecently_];
      v29 = v25;
      sub_21EA559F8(aBlock, v29);

      if (v15)
      {
        v15 = 1;
      }

      else
      {
        v15 = sub_21EAA8680();
      }

      ++v16;
    }

    while (v14 != v16);

    v11 = v50;
    v3 = v40;
    v2 = v41;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_21EA506C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = sub_21EAA8620();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    *(result + OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_bundleIdentifierState) = a2;

    v17 = OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_activityData;
    swift_beginAccess();
    *&v16[v17] = a3;

    v18 = OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_gameModeState;
    swift_beginAccess();
    v29 = v18;
    v19 = *&v16[v18];
    sub_21EAA8600();
    (*(v9 + 16))(v11, v14, v8);
    v20 = (*(v9 + 88))(v11, v8);
    v21 = 0;
    if (v20 != *MEMORY[0x277D0C970])
    {
      if (v20 == *MEMORY[0x277D0C950])
      {
        v21 = 1;
      }

      else if (v20 == *MEMORY[0x277D0C968])
      {
        v21 = 2;
      }

      else if (v20 == *MEMORY[0x277D0C958])
      {
        v21 = 3;
      }

      else
      {
        if (v20 != *MEMORY[0x277D0C960])
        {
          goto LABEL_25;
        }

        v21 = 4;
      }
    }

    (*(v9 + 8))(v14, v8);
    *&v16[v29] = v21;
    v22 = OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_gameModeAAA;
    swift_beginAccess();
    v16[v22] = a5 & 1;
    v23 = [*&v16[OBJC_IVAR____TtC15ControlCenterUI32CCUIGameModeActivityDataProvider_observers] allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCC50);
    v24 = sub_21EAA8EC0();

    if (v24 >> 62)
    {
      v25 = sub_21EAA9380();
      if (v25)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
LABEL_13:
        if (v25 >= 1)
        {
          for (i = 0; i != v25; ++i)
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              v27 = MEMORY[0x223D67210](i, v24);
            }

            else
            {
              v27 = *(v24 + 8 * i + 32);
              swift_unknownObjectRetain();
            }

            [v27 gameModeActivitiesDidChange];
            if (v19 != v21)
            {
              [v27 gameModeStateDidChange_];
            }

            swift_unknownObjectRelease();
          }

          goto LABEL_22;
        }

        __break(1u);
LABEL_25:
        result = sub_21EAA9520();
        __break(1u);
        return result;
      }
    }

LABEL_22:
  }

  return result;
}

void sub_21EA50A74()
{
  v0 = [objc_allocWithZone(type metadata accessor for CCUIGamePolicyProxy()) init];
  v1 = sub_21EA4EB0C();
  v2 = [v1 remoteObjectProxy];

  sub_21EAA9320();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCBE8);
  if (swift_dynamicCast())
  {
    v3 = v17[7];
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    *(v5 + 24) = v4;
    v17[4] = sub_21EA51E14;
    v17[5] = v5;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_21EA4FFB0;
    v17[3] = &block_descriptor_48;
    v6 = _Block_copy(v17);
    v7 = v0;

    [v3 requestCCUIGameModeStatusInfoWithReply_];
    _Block_release(v6);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_21EA51D58();
    v8 = swift_allocError();
    swift_willThrow();

    if (qword_27CEDBC00 != -1)
    {
      swift_once();
    }

    v9 = sub_21EAA8790();
    __swift_project_value_buffer(v9, qword_27CEDF0C8);
    v10 = v8;
    v11 = sub_21EAA8760();
    v12 = sub_21EAA8FE0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v8;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_21E9F5000, v11, v12, "Unable to request game mode status %@", v13, 0xCu);
      sub_21EA51DAC(v14);
      MEMORY[0x223D68580](v14, -1, -1);
      MEMORY[0x223D68580](v13, -1, -1);
    }

    else
    {
    }
  }
}

void sub_21EA50D6C(void *a1, uint64_t a2)
{
  [*(a2 + OBJC_IVAR____TtC15ControlCenterUIP33_7F4488837D5B852FB42D4199467ECC5E19CCUIGamePolicyProxy__connection) invalidate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_21EA50138(a1);
  }
}

id CCUIGameModeActivityDataProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CCUIGameModeActivityDataProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21EA50E70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCC20);
    v3 = sub_21EAA94E0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21EA49DF4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

unint64_t sub_21EA50F6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCC60);
    v3 = sub_21EAA94E0();

    for (i = (a1 + 52); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 3);
      v7 = *(i - 4);
      v8 = *i;
      sub_21EA4E7C8(v5, v6, v7);
      result = sub_21EA49FAC(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + 4 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_21EA5108C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCB98);
    v3 = sub_21EAA94E0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v8 = *i;
      sub_21EA4E7C8(v5, v6, v7);
      result = sub_21EA49FAC(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_21EA511B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCF30);
    v3 = sub_21EAA94E0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21EA49DF4(v5, v6);
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

unint64_t sub_21EA512AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCC90);
    v3 = sub_21EAA94E0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_21EA49DF4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_21EA513B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCC88);
    v3 = sub_21EAA94E0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21EA49DF4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

unint64_t sub_21EA514FC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_21EAA94E0();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_21EA49DF4(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
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

unint64_t sub_21EA515F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF20);
    v3 = sub_21EAA94E0();
    v4 = a1 + 32;

    while (1)
    {
      sub_21EA51CD8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_21EA49DF4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21EA51D48(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_21EA51708(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCC18);
    v3 = sub_21EAA94E0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_21EA4A554(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_21EA51800(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_21EA51834()
{
  result = qword_28125BB38[0];
  if (!qword_28125BB38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28125BB38);
  }

  return result;
}

unint64_t sub_21EA518D0()
{
  result = qword_27CEDCBF0;
  if (!qword_27CEDCBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEDCBF0);
  }

  return result;
}

unint64_t sub_21EA51C84()
{
  result = qword_27CEDCC00;
  if (!qword_27CEDCC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEDCC00);
  }

  return result;
}

uint64_t sub_21EA51CD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCC10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_21EA51D48(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_21EA51D58()
{
  result = qword_27CEDCC28;
  if (!qword_27CEDCC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEDCC28);
  }

  return result;
}

uint64_t sub_21EA51DAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCC30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21EA51E2C()
{
  result = qword_28125B890;
  if (!qword_28125B890)
  {
    sub_21EAA8CD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28125B890);
  }

  return result;
}

unint64_t sub_21EA51E84()
{
  result = qword_28125B860;
  if (!qword_28125B860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEDCC40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28125B860);
  }

  return result;
}

void sub_21EA51EE8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  if (a1 >= 4)
  {
    if (a1 == 4)
    {
      _Block_copy(a5);
    }

    else
    {

      aBlock[0] = a1;
      sub_21EAA9540();
      __break(1u);
    }
  }

  else
  {
    v10 = objc_allocWithZone(type metadata accessor for CCUIGamePolicyProxy());
    _Block_copy(a5);
    v11 = [v10 init];
    v12 = sub_21EA4EB0C();
    v13 = [v12 remoteObjectProxy];

    sub_21EAA9320();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCBE8);
    if (swift_dynamicCast())
    {
      v14 = aBlock[6];
      v15 = sub_21EAA8DC0();
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      v17[2] = v11;
      v17[3] = v16;
      v17[4] = sub_21EA4C65C;
      v17[5] = v9;
      v17[6] = a2;
      v17[7] = a3;
      aBlock[4] = sub_21EA523AC;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21EA4FFB0;
      aBlock[3] = &block_descriptor_66;
      v18 = _Block_copy(aBlock);
      v19 = v11;

      [v14 requestCCUISetGameModeInfoWithState:a1 bundleIdentifier:v15 withReply:v18];
      _Block_release(v18);

      swift_unknownObjectRelease();
    }

    else
    {

      a5[2](a5, 4);
    }
  }
}

uint64_t objectdestroy_7Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21EA5222C(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_21EA5227C(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_21EA5230C()
{
  result = qword_27CEDCCA0;
  if (!qword_27CEDCCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEDCCA0);
  }

  return result;
}

Swift::Void __swiftcall UIView.ccui_applyGlass(grouping:)(Swift::Bool grouping)
{
  v1 = sub_21EAA8840();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_21EAA8880();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11[-1] - v7;
  sub_21EAA8810();
  sub_21EAA8890();
  sub_21EAA8870();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v11[3] = v2;
  v11[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v11);
  sub_21EAA8850();
  v9(v8, v2);
  sub_21EAA91D0();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_21EA525E4(void *a1)
{
  v2 = sub_21EAA8840();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_21EAA8880();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13[-1] - v8;
  v10 = a1;
  sub_21EAA8810();
  sub_21EAA8890();
  sub_21EAA8870();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v13[3] = v3;
  v13[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v13);
  sub_21EAA8850();
  v11(v9, v3);
  sub_21EAA91D0();
}

Swift::Void __swiftcall UIView.ccui_applySubduedGlass(grouping:)(Swift::Bool grouping)
{
  v1 = sub_21EAA8840();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v6 = sub_21EAA8880();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v15[-1] - v11;
  sub_21EAA8810();
  sub_21EAA8800();
  (*(v2 + 8))(v4, v1);
  sub_21EAA8890();
  sub_21EAA8870();
  v13 = *(v7 + 8);
  v13(v9, v6);
  v15[3] = v6;
  v15[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v15);
  sub_21EAA8850();
  v13(v12, v6);
  sub_21EAA91D0();
}

void sub_21EA529D8(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  UIView.ccui_applySubduedGlass(grouping:)(a3);
}

Swift::Void __swiftcall UIView.ccui_applyClearGlass()()
{
  v0 = sub_21EAA8840();
  MEMORY[0x28223BE20](v0 - 8);
  sub_21EAA8820();
  v1[3] = sub_21EAA8880();
  v1[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_21EAA8890();
  sub_21EAA91D0();
}

void sub_21EA52AD0(void *a1)
{
  v2 = sub_21EAA8840();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = a1;
  sub_21EAA8820();
  v4[3] = sub_21EAA8880();
  v4[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_21EAA8890();
  sub_21EAA91D0();
}

Swift::Void __swiftcall UIView.ccui_applyGlass(with:)(UIColor with)
{
  v1 = sub_21EAA8840();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_21EAA8880();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21EAA8830();
  sub_21EAA8890();
  v7[3] = v2;
  v7[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v7);
  sub_21EAA8860();
  (*(v3 + 8))(v5, v2);
  sub_21EAA91D0();
}

void sub_21EA52CE0(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_21EAA8840();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_21EAA8880();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3;
  v11 = a1;
  sub_21EAA8830();
  sub_21EAA8890();
  v13[3] = v6;
  v13[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v13);
  sub_21EAA8860();
  (*(v7 + 8))(v9, v6);
  sub_21EAA91D0();
}

void sub_21EA52E88(void *a1)
{
  v1 = a1;
  sub_21EAA91D0();
}

id sub_21EA52F74(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDD0A0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v44 - v6;
  result = [v1 isEnabled];
  if (result != v3)
  {
    v9 = [v1 layer];
    sub_21EAA92E0();
    v10 = sub_21EAA92D0();
    if (!(*(*(v10 - 8) + 48))(v7, 1, v10))
    {
      goto LABEL_6;
    }

    sub_21EA53C48(v7);
    do
    {
      v11 = [v1 tintColor];
      if (v11)
      {
        break;
      }

      __break(1u);
LABEL_6:
      v11 = sub_21EAA9260();
      sub_21EA53C48(v7);
    }

    while (!v11);
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v9;
    v47 = v12;
    v13 = v9;
    v46 = v11;
    v14 = [v13 filters];
    v15 = MEMORY[0x277CDA640];
    v48 = v13;
    if (v14)
    {
      v45 = v1;
      v13 = MEMORY[0x277D84F70];
      v16 = v14;
      v17 = sub_21EAA8EC0();

      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = 0;
        v20 = v17 + 32;
        v2 = 0x277CD9EA0;
        while (1)
        {
          if (v19 >= *(v17 + 16))
          {
            __break(1u);
            goto LABEL_35;
          }

          sub_21E9FE6EC(v20, &aBlock);
          sub_21E9FE6EC(&aBlock, v50);
          sub_21E9F8880(0, &unk_28125B708);
          if (!swift_dynamicCast())
          {
            break;
          }

          v21 = v49;
          v22 = [v49 name];

          if (!v22)
          {
            break;
          }

          v23 = sub_21EAA8E00();
          v25 = v24;

          v26 = sub_21EAA8E00();
          if (!v25)
          {
            v13 = MEMORY[0x277D84F70];
            goto LABEL_11;
          }

          if (v23 == v26 && v25 == v27)
          {

            __swift_destroy_boxed_opaque_existential_1(&aBlock);
LABEL_33:

            v38 = 0;
            v2 = v45;
            goto LABEL_30;
          }

          v28 = sub_21EAA9530();

          __swift_destroy_boxed_opaque_existential_1(&aBlock);
          v13 = MEMORY[0x277D84F70];
          if (v28)
          {
            goto LABEL_33;
          }

LABEL_12:
          ++v19;
          v20 += 32;
          if (v18 == v19)
          {
            goto LABEL_22;
          }
        }

        sub_21EAA8E00();
LABEL_11:
        __swift_destroy_boxed_opaque_existential_1(&aBlock);

        goto LABEL_12;
      }

LABEL_22:

      v2 = v45;
      v13 = v48;
      v15 = MEMORY[0x277CDA640];
    }

    v29 = [v13 filters];
    if (v29)
    {
      v30 = v29;
      v17 = sub_21EAA8EC0();
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    v19 = v47;
    v31 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
    v53 = sub_21E9F8880(0, &unk_28125B708);
    *&aBlock = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_35:
      v17 = sub_21EA48258(0, *(v17 + 16) + 1, 1, v17);
    }

    v33 = *(v17 + 16);
    v32 = *(v17 + 24);
    if (v33 >= v32 >> 1)
    {
      v17 = sub_21EA48258((v32 > 1), v33 + 1, 1, v17);
    }

    *(v17 + 16) = v33 + 1;
    sub_21EA51D48(&aBlock, (v17 + 32 * v33 + 32));
    v34 = sub_21EAA8EB0();

    [v13 setFilters_];

    v35 = objc_opt_self();
    v36 = swift_allocObject();
    v36[2] = sub_21EA53CB0;
    v36[3] = v19;
    v36[4] = v2;
    v37 = swift_allocObject();
    v38 = sub_21EA53CB8;
    *(v37 + 16) = sub_21EA53CB8;
    *(v37 + 24) = v36;
    v54 = sub_21EA4C654;
    v55 = v37;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v52 = sub_21EA89FB8;
    v53 = &block_descriptor_3;
    v39 = _Block_copy(&aBlock);

    v40 = v2;

    [v35 performWithoutAnimation_];
    _Block_release(v39);
    LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

    if (v39)
    {
      __break(1u);
    }

    else
    {
LABEL_30:
      v41 = [v2 isEnabled];
      v42 = v46;
      v43 = v48;
      sub_21EA535A4(v41, v46, v48);

      return sub_21EA4C674(v38);
    }
  }

  return result;
}

void sub_21EA535A4(char a1, id a2, void *a3)
{
  if (a1)
  {
    sub_21EA42D10();
    CAColorMatrixMakeColorSourceOver();
  }

  else
  {
    v4 = [a2 colorWithAlphaComponent_];
    sub_21EA42D10();
    CAColorMatrixMakePlusL();
  }

  v7[2] = v7[7];
  v7[3] = v7[8];
  v7[4] = v7[9];
  v7[0] = v7[5];
  v7[1] = v7[6];
  v5 = [objc_opt_self() valueWithCAColorMatrix_];
  if (qword_28125B868 != -1)
  {
    swift_once();
  }

  v6 = sub_21EAA8DC0();
  [a3 setValue:v5 forKeyPath:v6];
}

id sub_21EA536F0(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for AccessoryButton();
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_21EA53784(char a1)
{
  v3 = type metadata accessor for AccessoryButton();
  v8.receiver = v1;
  v8.super_class = v3;
  v4 = objc_msgSendSuper2(&v8, sel_isHighlighted);
  v7.receiver = v1;
  v7.super_class = v3;
  objc_msgSendSuper2(&v7, sel_setHighlighted_, a1 & 1);
  result = [v1 isHighlighted];
  if (v4 != result)
  {
    [v1 isHighlighted];
    v6 = sub_21E9F8880(0, &unk_28125B720);
    MEMORY[0x28223BE20](v6);
    return sub_21EAA91F0();
  }

  return result;
}

id AccessoryButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id AccessoryButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for AccessoryButton();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id AccessoryButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AccessoryButton.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AccessoryButton();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id AccessoryButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21EA53B44()
{
  v0 = sub_21EAA8E00();
  MEMORY[0x223D66C10](v0);

  MEMORY[0x223D66C10](46, 0xE100000000000000);
  v1 = sub_21EAA8E00();
  MEMORY[0x223D66C10](v1);

  qword_28125B870 = 0x2E737265746C6966;
  *algn_28125B878 = 0xE800000000000000;
  return result;
}

id sub_21EA53BE8()
{
  v1 = *(v0 + 16);
  v2 = [v1 isHighlighted];
  v3 = 0.4;
  if (!v2)
  {
    v3 = 1.0;
  }

  return [v1 setAlpha_];
}

uint64_t sub_21EA53C48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDD0A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id CCUIStretchApplier.init(parameters:)(double a1, double a2, double a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v6 initWithParameters_];
}

{
  v7 = &v3[OBJC_IVAR___CCUIStretchApplier_baseEffectiveScaleMagnitude];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v3[OBJC_IVAR___CCUIStretchApplier_baseEffectiveScaleScalarMagnitude];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v3[OBJC_IVAR___CCUIStretchApplier_baseEffectiveTranslation];
  v10 = MEMORY[0x277D84F90];
  *v9 = 0;
  *(v9 + 1) = 0;
  if (v10 >> 62 && sub_21EAA9380())
  {
    sub_21EA5877C(MEMORY[0x277D84F90]);
  }

  else
  {
    v11 = MEMORY[0x277D84FA0];
  }

  *&v3[OBJC_IVAR___CCUIStretchApplier_stretchSources] = v11;
  v12 = OBJC_IVAR___CCUIStretchApplier_transformersByStretchSource;
  *&v3[v12] = [objc_opt_self() strongToStrongObjectsMapTable];
  v13 = OBJC_IVAR___CCUIStretchApplier_stretchables;
  *&v3[v13] = [objc_opt_self() weakObjectsHashTable];
  v14 = &v3[OBJC_IVAR___CCUIStretchApplier_parameters];
  *v14 = a1;
  v14[1] = a2;
  v14[2] = a3;
  v16.receiver = v3;
  v16.super_class = CCUIStretchApplier;
  return objc_msgSendSuper2(&v16, sel_init);
}

id CCUIStretchApplier.addStretchSource(parameters:primaryAxis:stretchTransformer:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = _s14_StretchSourceCMa();
  v15 = objc_allocWithZone(v14);
  swift_unknownObjectWeakInit();
  *&v15[OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_stretchValue] = 0;
  v16 = &v15[OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_parameters];
  *v16 = a4;
  v16[1] = a5;
  v16[2] = a6;
  *&v15[OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_primaryAxis] = a1;
  swift_unknownObjectWeakAssign();
  v25.receiver = v15;
  v25.super_class = v14;
  v17 = objc_msgSendSuper2(&v25, sel_init);
  v18 = [v7 stretchSources];
  sub_21EA58A64();
  v19 = sub_21EAA8F60();

  sub_21EA55A1C(&v24, v17);
  v20 = sub_21EAA8F50();

  [v7 setStretchSources_];

  if (a2)
  {

    v21 = [v7 transformersByStretchSource];
    _s21StretchTransformerBoxCMa();
    v22 = swift_allocObject();
    *(v22 + 16) = a2;
    *(v22 + 24) = a3;

    [v21 setObject:v22 forKey:v17];

    sub_21E9FFAF0(a2);
  }

  [v7 updateStretchForChangedSource_];
  return v17;
}

id CCUIStretchApplier.__addStretchSource(with:primaryAxis:stretchTransformer:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  if (a2)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    sub_21EA58AE0(a2);

    v14 = CCUIStretchApplier.addStretchSource(parameters:primaryAxis:stretchTransformer:)(a1, sub_21EA58ADC, v13, a4, a5, a6);

    sub_21E9FFAF0(a2);
    return v14;
  }

  else
  {
    v16 = [v6 addStretchSourceWithParameters:a1 primaryAxis:?];

    return v16;
  }
}

id CCUIStretchApplier.beginApplyingStretch(to:)(uint64_t a1)
{
  v3 = [v1 stretchables];
  [v3 addObject_];

  return [v1 applyStretchTo:a1 applyScale:1 applyTranslation:1];
}

void CCUIStretchApplier.endApplyingStretch(to:)(uint64_t a1)
{
  v3 = [v1 stretchables];
  v4 = [v3 containsObject_];

  if (v4)
  {
    v5 = [v1 stretchables];
    [v5 removeObject_];

    [v1 applyWithScale:a1 to:{1.0, 1.0}];

    [v1 applyWithTranslation:a1 to:{0.0, 0.0}];
  }
}

void sub_21EA5492C()
{
  v1 = v0;
  v2 = [v0 stretchSources];
  _s14_StretchSourceCMa();
  sub_21EA58A64();
  v3 = sub_21EAA8F60();

  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_21EAA9370();
    sub_21EAA8F90();
    v3 = v37;
    v4 = v38;
    v5 = v39;
    v6 = v40;
    v7 = v41;
  }

  else
  {
    v6 = 0;
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);
  }

  v11 = (v5 + 64) >> 6;
  v12 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  while (v3 < 0)
  {
    if (!sub_21EAA93A0() || (swift_dynamicCast(), (v20 = v36) == 0))
    {
LABEL_31:
      sub_21E9FBFD4();
      [v1 setBaseEffectiveScaleMagnitude_];
      [v1 setBaseEffectiveScaleScalarMagnitude_];
      [v1 setBaseEffectiveTranslation_];
      return;
    }

LABEL_17:
    v21 = [v1 transformersByStretchSource];
    v22 = [v21 objectForKey_];

    if (v22)
    {
    }

    else
    {
      v23 = *&v20[OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_stretchValue];
      v24 = *&v20[OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_parameters];
      v34 = v15;
      v35 = v14;
      v25 = v23 * *&v20[OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_parameters + 8];
      v26 = v23 * *&v20[OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_parameters + 16];
      v27 = *&v20[OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_primaryAxis];

      v28 = -(v23 * v24);
      v29 = 0.0;
      v30 = -v25;
      if (v27)
      {
        v31 = v23 * v24;
      }

      else
      {
        v31 = -(v23 * v24);
      }

      if (v27)
      {
        v32 = v25;
      }

      else
      {
        v28 = v23 * v24;
        v32 = -v25;
      }

      if (v27)
      {
        v33 = v26;
      }

      else
      {
        v30 = v25;
        v33 = 0.0;
      }

      if (!v27)
      {
        v29 = v26;
      }

      v17 = v17 + v31;
      v16 = v16 + v28;
      v15 = v34 + v32;
      v14 = v35 + v30;
      v13 = v13 + v33;
      v12 = v12 + v29;
    }
  }

  v18 = v6;
  v19 = v7;
  if (v7)
  {
LABEL_13:
    v7 = (v19 - 1) & v19;
    v20 = *(*(v3 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v20)
    {
      goto LABEL_31;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v6 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_31;
    }

    v19 = *(v4 + 8 * v6);
    ++v18;
    if (v19)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_21EA54C9C(void *a1)
{
  v2 = v1;
  v4 = sub_21EA54E18();
  [a1 parameters];
  IsZero = BSFloatIsZero();
  v6 = [v2 stretchables];
  v7 = [v6 allObjects];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCD28);
  v8 = sub_21EAA8EC0();

  if (v8 >> 62)
  {
    v9 = sub_21EAA9380();
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v9; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x223D67210](i, v8);
    }

    else
    {
      v11 = *(v8 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v2 applyStretchTo:v11 applyScale:v4 & 1 applyTranslation:IsZero ^ 1u];
    swift_unknownObjectRelease();
  }

LABEL_10:
}

uint64_t sub_21EA54E18()
{
  [v0 parameters];
  if (!BSFloatIsZero())
  {
    return 1;
  }

  [v0 parameters];
  return BSFloatIsZero() ^ 1;
}

void sub_21EA54ED4(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v60 = a1;
  v7 = sub_21EAA83E0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v3 baseEffectiveScaleMagnitude];
  v62 = v12;
  v14 = v13;
  [v3 baseEffectiveScaleScalarMagnitude];
  v61 = v15;
  v17 = v16;
  [v3 baseEffectiveTranslation];
  v19 = v18;
  v21 = v20;
  v22 = [v3 transformersByStretchSource];
  v23 = [v22 keyEnumerator];

  sub_21EAA8FB0();
  sub_21EAA83D0();
  if (v70)
  {
    v57 = v7;
    v56 = v8;
    while (1)
    {
      while (1)
      {
        sub_21EA51D48(&v69, &v63);
        _s14_StretchSourceCMa();
        swift_dynamicCast();
        v24 = v68;
        if (a2)
        {
          [v68 parameters];
          if (!BSFloatIsZero())
          {
            break;
          }

          [v24 parameters];
          if (!BSFloatIsZero())
          {
            break;
          }
        }

        if (a3)
        {
          [v24 parameters];
          if ((BSFloatIsZero() & 1) == 0)
          {
            break;
          }
        }

        sub_21EAA83D0();
        if (!v70)
        {
          goto LABEL_24;
        }
      }

      v25 = v14;
      v58 = v19;
      v59 = v21;
      v26 = v4;
      v27 = [v4 transformersByStretchSource];
      v28 = [v27 objectForKey_];

      if (!v28)
      {
        break;
      }

      v29 = v28[2];

      v31.n128_u64[0] = *&v24[OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_stretchValue];
      v32.n128_f64[0] = v31.n128_f64[0] * *&v24[OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_parameters];
      v33.n128_f64[0] = v31.n128_f64[0] * *&v24[OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_parameters + 8];
      v34 = v31.n128_f64[0] * *&v24[OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_parameters + 16];
      v35 = *&v24[OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_primaryAxis];
      v36.n128_f64[0] = -v32.n128_f64[0];
      v37.n128_f64[0] = -v33.n128_f64[0];
      if (v35)
      {
        v31.n128_f64[0] = v31.n128_f64[0] * *&v24[OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_parameters];
      }

      else
      {
        v31.n128_f64[0] = -v32.n128_f64[0];
      }

      if (v35)
      {
        v30.n128_f64[0] = v33.n128_f64[0];
      }

      else
      {
        v36.n128_f64[0] = v32.n128_f64[0];
        v30.n128_f64[0] = -v33.n128_f64[0];
      }

      if (!v35)
      {
        v37.n128_f64[0] = v33.n128_f64[0];
      }

      v33.n128_u64[0] = 0;
      if (v35)
      {
        v32.n128_f64[0] = v34;
      }

      else
      {
        v32.n128_f64[0] = 0.0;
      }

      if (!v35)
      {
        v33.n128_f64[0] = v34;
      }

      v29(&v63, v60, v31, v36, v30, v37, v32, v33);
      v38 = *(&v63 + 1);
      v39 = *&v63;
      v40 = v64;
      v41 = v65;
      v42 = v66;
      v43 = v67;

      v44 = v62 + v39;
      v14 = v25 + v38;
      v61 = v61 + v40;
      v62 = v44;
      v17 = v17 + v41;
      v19 = v58 + v42;
      v21 = v59 + v43;
      sub_21EAA83D0();
      v7 = v57;
      v4 = v26;
      v8 = v56;
      if (!v70)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    (*(v8 + 8))(v11, v7);
    [v4 parameters];
    v48 = v47;
    if (a2)
    {
      v49 = -v45;
      v51 = v61;
      v50 = v62;
      if (v62 <= -v45)
      {
        v50 = -v45;
      }

      if (v45 < v50)
      {
        v50 = v45;
      }

      if (v14 > v49)
      {
        v49 = v14;
      }

      if (v45 >= v49)
      {
        v45 = v49;
      }

      v52 = -v46;
      if (v61 <= -v46)
      {
        v51 = -v46;
      }

      if (v46 < v51)
      {
        v51 = v46;
      }

      if (v17 > v52)
      {
        v52 = v17;
      }

      if (v46 >= v52)
      {
        v46 = v52;
      }

      [v4 applyWithScale:v60 to:{(v50 + 1.0) * (v51 + 1.0), (v45 + 1.0) * (v46 + 1.0)}];
    }

    if (a3)
    {
      v53 = -v48;
      if (v19 > -v48)
      {
        v54 = v19;
      }

      else
      {
        v54 = -v48;
      }

      if (v48 < v54)
      {
        v54 = v48;
      }

      if (v21 > v53)
      {
        v53 = v21;
      }

      if (v48 < v53)
      {
        v53 = v48;
      }

      [v4 applyWithTranslation:v60 to:{v54, v53}];
    }
  }
}

void sub_21EA55400(void *a1)
{
  v2 = v1;
  v4 = [v1 stretchSources];
  _s14_StretchSourceCMa();
  sub_21EA58A64();
  sub_21EAA8F60();

  v5 = sub_21EAA8F50();

  [v2 setStretchSources_];

  v6 = [v2 transformersByStretchSource];
  [v6 removeObjectForKey_];
}

void sub_21EA555F4(double a1)
{
  *(v1 + OBJC_IVAR____TtCE15ControlCenterUICSo18CCUIStretchApplier14_StretchSource_stretchValue) = a1;
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      [Strong updateStretchForChangedSource_];
    }
  }
}

id sub_21EA55738()
{
  v2.receiver = v0;
  v2.super_class = _s14_StretchSourceCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21EA5577C()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

id CCUIStretchApplier.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_21EA558A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_21EAA95B0();
  sub_21EAA8E40();
  v8 = sub_21EAA95D0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_21EAA9530() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_21EA56BFC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_21EA55A1C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_21EAA9390();

    if (v9)
    {

      _s14_StretchSourceCMa();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_21EAA9380();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_21EA56080(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_21EA56958(v20 + 1, &qword_27CEDCD20);
    }

    v18 = v8;
    sub_21EA56B78(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  _s14_StretchSourceCMa();
  v11 = sub_21EAA9200();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_21EA56D7C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_21EAA9210();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_21EA55C3C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_21EAA8E00();
  sub_21EAA95B0();
  sub_21EAA8E40();
  v7 = sub_21EAA95D0();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_21EAA8E00();
      v13 = v12;
      if (v11 == sub_21EAA8E00() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_21EAA9530();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_21EA56F08(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_21EA55E0C(void *a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = v6;
  v13 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v13 < 0)
    {
      v14 = *v6;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = a2;

    v16 = sub_21EAA9390();

    if (v16)
    {

      sub_21E9F8880(0, a3);
      swift_dynamicCast();
      result = 0;
      *a1 = v34;
    }

    else
    {
      result = sub_21EAA9380();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v26 = sub_21EA5627C(v14, result + 1, a5, a6, a3);
        v27 = *(v26 + 16);
        if (*(v26 + 24) <= v27)
        {
          sub_21EA56958(v27 + 1, a5);
        }

        v28 = v15;
        sub_21EA56B78(v28, v26);

        *v10 = v26;
        *a1 = v28;
        return 1;
      }
    }
  }

  else
  {
    sub_21E9F8880(0, a3);
    v18 = sub_21EAA9200();
    v19 = -1 << *(v13 + 32);
    v20 = v18 & ~v19;
    if ((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v21 = ~v19;
      while (1)
      {
        v22 = *(*(v13 + 48) + 8 * v20);
        v23 = sub_21EAA9210();

        if (v23)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v29 = *(*(v13 + 48) + 8 * v20);
      *a1 = v29;
      v30 = v29;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *v10;
      v25 = a2;
      sub_21EA570F0(v25, v20, isUniquelyReferenced_nonNull_native, a5, a6, a3);
      *v10 = v35;
      *a1 = v25;
      return 1;
    }
  }

  return result;
}

uint64_t sub_21EA56080(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCD20);
    v2 = sub_21EAA9410();
    v15 = v2;
    sub_21EAA9370();
    if (sub_21EAA93A0())
    {
      _s14_StretchSourceCMa();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_21EA56958(v9 + 1, &qword_27CEDCD20);
        }

        v2 = v15;
        result = sub_21EAA9200();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_21EAA93A0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_21EA5627C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v7 = sub_21EAA9410();
    v20 = v7;
    sub_21EAA9370();
    if (sub_21EAA93A0())
    {
      sub_21E9F8880(0, a5);
      do
      {
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          sub_21EA56958(v14 + 1, a3);
        }

        v7 = v20;
        result = sub_21EAA9200();
        v9 = v20 + 56;
        v10 = -1 << *(v20 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v20 + 48) + 8 * v13) = v19;
        ++*(v20 + 16);
      }

      while (sub_21EAA93A0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v7;
}

uint64_t sub_21EA5647C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCD40);
  result = sub_21EAA9400();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_21EAA95B0();
      sub_21EAA8E40();
      result = sub_21EAA95D0();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_21EA566DC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCD18);
  result = sub_21EAA9400();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_21EAA8E00();
      sub_21EAA95B0();
      sub_21EAA8E40();
      v17 = sub_21EAA95D0();

      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero(v6, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_21EA56958(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_21EAA9400();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_21EAA9200();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

unint64_t sub_21EA56B78(uint64_t a1, uint64_t a2)
{
  sub_21EAA9200();
  result = sub_21EAA9360();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_21EA56BFC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_21EA5647C();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_21EA57280();
      goto LABEL_16;
    }

    sub_21EA5766C();
  }

  v10 = *v4;
  sub_21EAA95B0();
  sub_21EAA8E40();
  result = sub_21EAA95D0();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_21EAA9530();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_21EAA9550();
  __break(1u);
  return result;
}

void sub_21EA56D7C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21EA56958(v6 + 1, &qword_27CEDCD20);
  }

  else
  {
    if (v7 > v6)
    {
      sub_21EA5752C(&qword_27CEDCD20);
      goto LABEL_12;
    }

    sub_21EA57AF8(v6 + 1, &qword_27CEDCD20);
  }

  v8 = *v3;
  v9 = sub_21EAA9200();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    _s14_StretchSourceCMa();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_21EAA9210();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_21EAA9550();
  __break(1u);
}

uint64_t sub_21EA56F08(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_21EA566DC();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_21EA573DC();
      goto LABEL_16;
    }

    sub_21EA578A4();
  }

  v9 = *v3;
  sub_21EAA8E00();
  sub_21EAA95B0();
  sub_21EAA8E40();
  v10 = sub_21EAA95D0();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for SBHIconGridSizeClass(0);
    do
    {
      v13 = sub_21EAA8E00();
      v15 = v14;
      if (v13 == sub_21EAA8E00() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_21EAA9530();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_21EAA9550();
  __break(1u);
  return result;
}

void sub_21EA570F0(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_21EA56958(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      sub_21EA5752C(a4);
      goto LABEL_12;
    }

    v11 = a6;
    sub_21EA57AF8(v9 + 1, a4);
  }

  v12 = *v6;
  v13 = sub_21EAA9200();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    sub_21E9F8880(0, v11);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_21EAA9210();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_21EAA9550();
  __break(1u);
}

void *sub_21EA57280()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCD40);
  v2 = *v0;
  v3 = sub_21EAA93F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_21EA573DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCD18);
  v2 = *v0;
  v3 = sub_21EAA93F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_21EA5752C(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_21EAA93F0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_21EA5766C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCD40);
  result = sub_21EAA9400();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_21EAA95B0();

      sub_21EAA8E40();
      result = sub_21EAA95D0();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_21EA578A4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCD18);
  result = sub_21EAA9400();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_21EAA8E00();
      sub_21EAA95B0();
      v17 = v16;
      sub_21EAA8E40();
      v18 = sub_21EAA95D0();

      v19 = -1 << *(v4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v17;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v26;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_21EA57AF8(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_21EAA9400();
  v6 = result;
  if (*(v4 + 16))
  {
    v25 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_21EAA9200();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v25;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_21EA57D04(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = sub_21EAA93B0();

    if (v5)
    {
      v6 = sub_21EA57FD4();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  _s14_StretchSourceCMa();
  v9 = sub_21EAA9200();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = sub_21EAA9210();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21EA5752C(&qword_27CEDCD20);
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_21EA58128(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_21EA57E98(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_21EAA95B0();
  sub_21EAA8E40();
  v6 = sub_21EAA95D0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_21EAA9530() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21EA57280();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_21EA582C8(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_21EA57FD4()
{
  v1 = v0;

  v2 = sub_21EAA9380();
  v3 = swift_unknownObjectRetain();
  v4 = sub_21EA56080(v3, v2);
  v13 = v4;

  v5 = sub_21EAA9200();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    _s14_StretchSourceCMa();
    while (1)
    {
      v9 = *(*(v4 + 48) + 8 * v7);
      v10 = sub_21EAA9210();

      if (v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v11 = *(*(v4 + 48) + 8 * v7);
  sub_21EA58128(v7);
  result = sub_21EAA9210();
  if (result)
  {
    *v1 = v13;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21EA58128(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21EAA9350();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_21EAA9200();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_21EA582C8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_21EAA9350();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_21EAA95B0();

        sub_21EAA8E40();
        v10 = sub_21EAA95D0();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void sub_21EA5848C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_21EAA9380())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDCD30);
      v3 = sub_21EAA9420();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_21EAA9380();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x223D67210](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_21EAA9200();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_21E9F8880(0, &qword_28125B790);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_21EAA9210();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_21EAA9200();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_21E9F8880(0, &qword_28125B790);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_21EAA9210();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_21EA5877C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_21EAA9380())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCD20);
      v3 = sub_21EAA9420();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_21EAA9380();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x223D67210](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_21EAA9200();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        _s14_StretchSourceCMa();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_21EAA9210();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_21EAA9200();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        _s14_StretchSourceCMa();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_21EAA9210();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_21EA58A64()
{
  result = qword_28125B7D8;
  if (!qword_28125B7D8)
  {
    _s14_StretchSourceCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28125B7D8);
  }

  return result;
}

uint64_t sub_21EA58AE0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

__n128 sub_21EA58B0C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>)
{
  v10 = *(v8 + 16);
  *&v15 = a3;
  *(&v15 + 1) = a4;
  *&v14 = a5;
  *(&v14 + 1) = a6;
  v13.n128_f64[0] = a7;
  v13.n128_f64[1] = a8;
  v10(a1, &v15, &v14, &v13);
  result = v13;
  v12 = v14;
  *a2 = v15;
  *(a2 + 16) = v12;
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_21EA58B6C()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_21EA58BD0(uint64_t a1, void *a2)
{
  v4 = sub_21EAA8790();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2[4];
  [v9 removeObjectForKey_];
  sub_21EAA8750();

  v10 = sub_21EAA8760();
  v11 = sub_21EAA9000();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = v4;
    v13 = v12;
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315394;
    v15 = a2[2];
    v16 = a2[3];

    v17 = sub_21E9FE748(v15, v16, &v20);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    *(v13 + 14) = [v9 count];

    _os_log_impl(&dword_21E9F5000, v10, v11, "[IconImageViewControllerCache (%s)] Removed entry. Cache size: %ld", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x223D68580](v14, -1, -1);
    MEMORY[0x223D68580](v13, -1, -1);

    return (*(v5 + 8))(v8, v19);
  }

  else
  {

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_21EA58DE4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_21EAA8790();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3[4];
  [v11 setObject:a1 forKey:{a2, v8}];
  sub_21EAA8750();

  v12 = sub_21EAA8760();
  v13 = sub_21EAA9000();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = v6;
    v15 = v14;
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315394;
    v17 = a3[2];
    v18 = a3[3];

    v19 = sub_21E9FE748(v17, v18, &v22);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2048;
    *(v15 + 14) = [v11 count];

    _os_log_impl(&dword_21E9F5000, v12, v13, "[IconImageViewControllerCache (%s)] Added entry. Cache size: %ld", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x223D68580](v16, -1, -1);
    MEMORY[0x223D68580](v15, -1, -1);

    return (*(v7 + 8))(v10, v21);
  }

  else
  {

    return (*(v7 + 8))(v10, v6);
  }
}

id PowerButton.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *sub_21EA5907C(void *a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR___CCUIPowerButton_accessibilityButtonShapeView] = 0;
  v16.receiver = v5;
  v16.super_class = type metadata accessor for PowerButton();
  v11 = objc_msgSendSuper2(&v16, sel_initWithFrame_luminanceMap_, a1, a2, a3, a4, a5);
  if (UIAccessibilityButtonShapesEnabled())
  {
    sub_21EA5943C();
  }

  else
  {
    v12 = OBJC_IVAR___CCUIPowerButton_accessibilityButtonShapeView;
    [*&v11[OBJC_IVAR___CCUIPowerButton_accessibilityButtonShapeView] removeFromSuperview];
    v13 = *&v11[v12];
    *&v11[v12] = 0;
  }

  v14 = [objc_opt_self() defaultCenter];
  [v14 addObserver:v11 selector:sel_updateAccessibilityButtonShapeAppearance name:*MEMORY[0x277D76450] object:0];

  return v11;
}

void sub_21EA5943C()
{
  v1 = OBJC_IVAR___CCUIPowerButton_accessibilityButtonShapeView;
  [*&v0[OBJC_IVAR___CCUIPowerButton_accessibilityButtonShapeView] removeFromSuperview];
  v2 = *&v0[v1];
  *&v0[v1] = 0;

  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v3 setUserInteractionEnabled_];
  v4 = [objc_opt_self() whiteColor];
  v5 = [v4 colorWithAlphaComponent_];

  [v3 setBackgroundColor_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 insertSubview:v3 atIndex:0];
  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21EAB6CF0;
  v8 = [v3 topAnchor];
  v9 = [v0 topAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v7 + 32) = v10;
  v11 = [v3 leadingAnchor];
  v12 = [v0 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v7 + 40) = v13;
  v14 = [v3 trailingAnchor];
  v15 = [v0 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v7 + 48) = v16;
  v17 = [v3 bottomAnchor];
  v18 = [v0 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v7 + 56) = v19;
  sub_21EA59878();
  v20 = sub_21EAA8EB0();

  [v6 activateConstraints_];

  v21 = *&v0[v1];
  *&v0[v1] = v3;
}

id PowerButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PowerButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PowerButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21EA59878()
{
  result = qword_28125B7C8;
  if (!qword_28125B7C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28125B7C8);
  }

  return result;
}

void sub_21EA59C28(void *a1)
{
  v3 = [a1 customIconImageViewController];
  if (v3)
  {
    v4 = v3;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      swift_beginAccess();
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        [v7 pagingViewController:v6 didAdd:v4];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  [a1 setAllowsAdornmentsOverIconImage:v1[OBJC_IVAR____TtC15ControlCenterUI24IconListFolderController_allowsIconAdornments] animated:0];
  v8 = [a1 customIconImageViewController];
  if (v8)
  {
    v9 = v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      [v10 setWantsSubduedBackground_];
      v12 = [v11 parentViewController];
      if (v12)
      {
        v13 = v12;

        if (v13 == v1)
        {
          v14 = [v1 _appearState];
          if (v14 - 1 <= 1)
          {
            v15 = v14;
            [v11 ccui:1 safelyBeginAppearanceTransitionForChildViewControllers:0 animated:?];
            if (v15 == 2)
            {
              [v11 ccui_safelyEndAppearanceTransitionForChildViewControllers];
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21EA59DE8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v2 = v1;
      v3 = [v2 parentViewController];
      if (v3)
      {
        v4 = v3;

        v2 = v4;
      }

      else
      {
        [v2 ccui:0 safelyBeginAppearanceTransitionForChildViewControllers:0 animated:?];
        [v2 ccui_safelyEndAppearanceTransitionForChildViewControllers];
      }
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v5 = result;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        v8 = v1;
        [v7 pagingViewController:v5 willRemove:v8];
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_21EA59F8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconListFolderController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ControlDescriptorProvider.__allocating_init(widgetExtensionProvider:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___CCUIControlDescriptorProvider_widgetExtensionProvider] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ControlDescriptorProvider.init(widgetExtensionProvider:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___CCUIControlDescriptorProvider_widgetExtensionProvider] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ControlDescriptorProvider();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ControlDescriptorProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ControlDescriptorProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ControlDescriptorProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21EA5A2FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SimpleContentModule();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21EA5A364()
{
  v1 = [v0 folderView];
  v2 = [v1 currentIconListView];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 visibleIcons];
  sub_21E9F8880(0, &qword_28125B730);
  v4 = sub_21EAA8EC0();

  if (v4 >> 62)
  {
    result = sub_21EAA9380();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_9:

    return 0;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x223D67210](0, v4);
    goto LABEL_7;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_7:
    v7 = v6;

    v8 = [v2 displayedIconViewForIcon_];

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_21EA5A4B0@<X0>(id *a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = [*a1 visibleIcons];
  sub_21E9F8880(0, &qword_28125B730);
  v4 = sub_21EAA8EC0();

  v32 = MEMORY[0x277D84F90];
  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_41:
    v6 = sub_21EAA9380();
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v31 = MEMORY[0x277D84F90];
  while (v6 != v7)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223D67210](v7, v4);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_38;
      }

      v8 = *(v4 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v11 = [v2 displayedIconViewForIcon_];

    ++v7;
    if (v11)
    {
      MEMORY[0x223D66C60]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21EAA8EE0();
      }

      sub_21EAA8EF0();
      v31 = v32;
      v7 = v10;
    }
  }

  v32 = MEMORY[0x277D84F90];
  v12 = v31;
  v5 = v31 & 0xFFFFFFFFFFFFFF8;
  if (v31 >> 62)
  {
    v2 = sub_21EAA9380();
    v12 = v31;
    if (v2)
    {
LABEL_16:
      v13 = 0;
      v14 = MEMORY[0x277D84F90];
      v15 = v12 & 0xC000000000000001;
      v16 = &off_278383000;
      v30 = v12 & 0xC000000000000001;
LABEL_17:
      v28 = v14;
      v17 = v13;
      while (1)
      {
        if (v15)
        {
          v18 = MEMORY[0x223D67210](v17, v12);
        }

        else
        {
          if (v17 >= *(v5 + 16))
          {
            goto LABEL_40;
          }

          v18 = *(v12 + 8 * v17 + 32);
        }

        v19 = v18;
        v13 = (v17 + 1);
        if (__OFADD__(v17, 1))
        {
          goto LABEL_39;
        }

        v20 = [v18 v16[419]];
        if (v20)
        {
          v4 = v20;
          objc_opt_self();
          v21 = swift_dynamicCastObjCClass();
          if (v21)
          {
            v22 = v21;
            v23 = v2;
            v24 = v5;
            v25 = v16;
            v26 = v4;
            v4 = [v22 contentViewController];

            v16 = v25;
            v5 = v24;
            v2 = v23;
            v15 = v30;

            if (!v4)
            {
              goto LABEL_20;
            }

            if ([v4 respondsToSelector_])
            {
              MEMORY[0x223D66C60]();
              if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_21EAA8EE0();
              }

              sub_21EAA8EF0();
              v14 = v32;
              v12 = v31;
              if (v13 != v2)
              {
                goto LABEL_17;
              }

              goto LABEL_44;
            }
          }

          else
          {
          }
        }

        else
        {
          v4 = v19;
        }

LABEL_20:
        ++v17;
        v12 = v31;
        if (v13 == v2)
        {
          v14 = v28;
          goto LABEL_44;
        }
      }
    }
  }

  else
  {
    v2 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_16;
    }
  }

  v14 = MEMORY[0x277D84F90];
LABEL_44:

  *a2 = v14;
  return result;
}

unint64_t sub_21EA5A854(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v27)
  {
    v4 = 0;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v31 = i;
    v32 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v34)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x223D67210](v4, v29);
      }

      else
      {
        if (v4 >= *(v33 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v32 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v39 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = v2;
      sub_21EA5A4B0(&v39, &v38);
      if (v2)
      {
        goto LABEL_40;
      }

      v9 = v38;
      v6 = (v38 >> 62);
      if (v38 >> 62)
      {
        v10 = sub_21EAA9380();
      }

      else
      {
        v10 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v5 >> 62;
      if (v5 >> 62)
      {
        v26 = sub_21EAA9380();
        v13 = v26 + v10;
        if (__OFADD__(v26, v10))
        {
LABEL_39:
          __break(1u);
LABEL_40:

          return v5;
        }
      }

      else
      {
        v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v12 + v10;
        if (__OFADD__(v12, v10))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v36 = v10;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v14 = v5 & 0xFFFFFFFFFFFFFF8;
          if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_20:
        sub_21EAA9380();
        goto LABEL_21;
      }

      if (v11)
      {
        goto LABEL_20;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_21EAA9460();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v6)
      {
        v18 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_21EAA9380();
        v14 = v18;
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v17)
      {
        if (((v16 >> 1) - v15) < v36)
        {
          goto LABEL_44;
        }

        v35 = v5;
        v19 = v14 + 8 * v15 + 32;
        v30 = v14;
        if (v6)
        {
          if (v17 < 1)
          {
            goto LABEL_46;
          }

          sub_21EA5BC04(&unk_27CEDCE30, &qword_27CEDCE28);
          for (j = 0; j != v17; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCE28);
            v21 = sub_21EA5BAC4(v37, j, v9);
            v23 = *v22;
            (v21)(v37, 0);
            *(v19 + 8 * j) = v23;
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCE20);
          swift_arrayInitWithCopy();
        }

        v2 = v8;
        v5 = v35;
        if (v36 >= 1)
        {
          v24 = *(v30 + 16);
          v7 = __OFADD__(v24, v36);
          v25 = v24 + v36;
          if (v7)
          {
            goto LABEL_45;
          }

          *(v30 + 16) = v25;
        }
      }

      else
      {

        if (v36 > 0)
        {
          goto LABEL_43;
        }
      }

      if (v4 == v31)
      {
        return v5;
      }
    }

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
    __break(1u);
LABEL_47:
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_21EAA9380();
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21EA5ABCC(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = [v4 folderView];
  type metadata accessor for IconListFolderView();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC15ControlCenterUI18IconListFolderView_contentView);
  }

  else
  {

    v8 = [v4 folderView];
    v10 = [v8 scrollView];
  }

  v11 = v10;

  [a1 convertPoint:v11 toCoordinateSpace:{a2, a3}];
  v13 = v12;
  v15 = v14;
  v16 = [v11 hitTest:0 withEvent:?];
  if (!v16)
  {
    goto LABEL_19;
  }

  v17 = v16;
  if (v16 == v11)
  {

LABEL_19:
    return 0;
  }

  v18 = [v4 visibleIconListViews];
  sub_21E9F8880(0, &unk_28125B830);
  v19 = sub_21EAA8EC0();

  v20 = sub_21EA5A854(v19);

  v34 = v11;
  if (v20 >> 62)
  {
LABEL_25:
    v21 = sub_21EAA9380();
    if (v21)
    {
LABEL_8:
      v22 = 0;
      while (1)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x223D67210](v22, v20);
        }

        else
        {
          if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v23 = *(v20 + 8 * v22 + 32);
        }

        v24 = v23;
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        result = [v23 view];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v27 = result;
        v28 = [v17 isDescendantOfView_];

        if (v28)
        {
          break;
        }

        ++v22;
        if (v25 == v21)
        {
          goto LABEL_26;
        }
      }

      [v34 convertPoint:v17 toCoordinateSpace:{v13, v15}];
      v30 = v29;
      v32 = v31;
      if ([v24 respondsToSelector_])
      {
        v33 = [v24 interpretsLocationAsContent:v17 inView:{v30, v32}];

        return v33;
      }

      return 1;
    }
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_8;
    }
  }

LABEL_26:

  return 1;
}

uint64_t sub_21EA5AEE4()
{
  v8 = MEMORY[0x277D84F90];
  v1 = swift_allocObject();
  *(v1 + 16) = &v8;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_21EA5BBFC;
  *(v2 + 24) = v1;
  aBlock[4] = sub_21E9FEBF8;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E9FEC38;
  aBlock[3] = &block_descriptor_12;
  v3 = _Block_copy(aBlock);

  [v0 enumerateDisplayedIconViewsUsingBlock_];
  _Block_release(v3);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    return v6;
  }

  return result;
}

void sub_21EA5B048(void *a1)
{
  v1 = [a1 customIconImageViewController];
  if (v1)
  {
    v2 = v1;
    v3 = swift_dynamicCastObjCProtocolConditional();
    if (v3)
    {
      v4 = v3;
      if ([v3 respondsToSelector_])
      {
        v5 = [v4 topLevelBlockingGestureRecognizers];
        sub_21E9F8880(0, &qword_28125B7C0);
        v6 = sub_21EAA8EC0();

        sub_21EA5B11C(v6);
      }
    }
  }
}

uint64_t sub_21EA5B11C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_21EAA9380();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_21EAA9380();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_21EA5B884(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_21EA5B924(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_21EA5B20C(void *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  sub_21EAA9170();
  v8 = a1;
  v9 = sub_21EA95BD4(v8);
  v10 = [v8 identity];
  v11 = [v10 intentReference];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 intent];

    if (v13)
    {
      v14 = [v10 extensionIdentity];
      v15 = *MEMORY[0x277CFA130];
      swift_beginAccess();
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDC638);
      if ((*(*(v16 - 8) + 48))(&v14[v15], 1, v16))
      {
        swift_endAccess();
        v17 = v13;
      }

      else
      {
        sub_21EAA86D0();
        swift_endAccess();

        v17 = sub_21EAA8DC0();

        v14 = [v9 uniqueIdentifier];
        if (!v14)
        {
          sub_21EAA8E00();
          v14 = sub_21EAA8DC0();
        }

        [a2 storeIntent:v13 bundleIdentifier:v17 dataSourceIdentifier:v14];
      }
    }
  }

  sub_21E9F8880(0, &unk_27CEDCDA0);
  v18 = sub_21EAA8FA0();
  [v18 addIconDataSource_];
  v19 = v18;
  [v8 size];
  v20 = sub_21EAA9120();
  [v19 setGridSizeClass_];

  sub_21EA5B4E8(v19, a3, a4);
}

uint64_t CCUIGridSizeClass.init(controlSize:)(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_21EAB6DD0[a1 - 1];
  }
}

void sub_21EA5B4E8(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = [v4 folderView];
  v9 = [v4 folderView];
  v10 = [v9 currentPageIndex];

  v11 = [v8 iconListModelIndexForPageIndex_];
  v12 = [v4 folder];
  if (v12)
  {
    v24 = v12;

    [v4 layoutIconListsWithAnimationType:-1 forceRelayout:0];
    v13 = [v24 indexOfListContainingIcon_];
    v14 = [v4 folderView];
    v15 = [v14 pageIndexForIconListViewIndex_];

    v16 = [v4 folderView];
    v17 = [v16 currentPageIndex];

    if (v17 == v15)
    {
      if (a2)
      {
        v18 = [v4 firstIconViewForIcon_];
        a2();
      }
    }

    else
    {
      v19 = [v4 folderView];
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      v21[2] = a2;
      v21[3] = a3;
      v21[4] = v20;
      v21[5] = a1;
      aBlock[4] = sub_21EA5BBF0;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21EA87FF0;
      aBlock[3] = &block_descriptor_4;
      v22 = _Block_copy(aBlock);
      sub_21EA58AE0(a2);
      v23 = a1;

      [v19 setCurrentPageIndex:v15 animated:1 completion:v22];

      _Block_release(v22);
    }
  }
}

void sub_21EA5B7E0(void (*a1)(id), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = [Strong firstIconViewForIcon_];
    }

    else
    {
      v8 = 0;
    }

    a1(v8);
  }
}

uint64_t sub_21EA5B884(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_21EAA9380();
LABEL_9:
  result = sub_21EAA9460();
  *v1 = result;
  return result;
}

uint64_t sub_21EA5B924(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21EAA9380();
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
      result = sub_21EAA9380();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21EA5BC04(&unk_28125B850, &qword_27CEDCE18);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCE18);
            v9 = sub_21EA5BB44(v13, i, a3);
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
        sub_21E9F8880(0, &qword_28125B7C0);
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

uint64_t (*sub_21EA5BAC4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223D67210](a2, a3);
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
    return sub_21EA5BC5C;
  }

  __break(1u);
  return result;
}

void (*sub_21EA5BB44(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223D67210](a2, a3);
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
    return sub_21EA5BBC4;
  }

  __break(1u);
  return result;
}

uint64_t _sSo17CCUIGridSizeClassV15ControlCenterUIE06moduleB0ABSo09CCSModuleB0V_tcfC_0(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_21EAB6DE8[a1 - 1];
  }
}

uint64_t sub_21EA5BC04(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21EA5BCC0(void *a1)
{
  v3 = 0x3FF0000000000000;
  v4 = 0;
  v5 = 0;
  v6 = 0x3FF0000000000000;
  v7 = 0;
  v8 = 0;
  [a1 setTransform_];
  v2 = [a1 contentContainerView];
  v3 = 0x3FF0000000000000;
  v4 = 0;
  v5 = 0;
  v6 = 0x3FF0000000000000;
  v7 = 0;
  v8 = 0;
  [v2 setTransform_];
}

uint64_t sub_21EA5BDB0()
{
  sub_21EA01354(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_21EA5BE14(void *a1)
{
  v1 = a1;
  [a1 setDelegate_];
  swift_unknownObjectRelease();
  [v1 setAllowsResizeHandle_];
  [v1 setSuppressesDefaultEditingAnimation_];
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21EA5BFC8;
  *(v4 + 24) = v3;
  v8[4] = sub_21EA4C654;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_21EA89FB8;
  v8[3] = &block_descriptor_5;
  v5 = _Block_copy(v8);
  v6 = v1;

  [v2 performWithoutAnimation_];
  _Block_release(v5);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

void sub_21EA5C0C4()
{
  v0 = [objc_opt_self() rootSettings];
  v1 = [v0 editingSettings];

  v2 = [v1 resizingSettings];
  qword_27CEDCE40 = v2;
}

id sub_21EA5C148()
{
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = *(v0 + 248);
  }

  else
  {
    v3 = [objc_opt_self() feedbackGeneratorWithStyle:0 forView:*(v0 + 16)];
    v4 = *(v0 + 248);
    *(v0 + 248) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_21EA5C1C8(void *a1, int a2, id a3, unsigned int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v9 = a4;
  v11 = HIWORD(a4);
  v12 = [a3 iconGridSizeForClass_];
  if (v11 >= HIWORD(v12) && v9 >= v12)
  {
    swift_beginAccess();
    v13 = a1;
    sub_21EA55C3C(&v14, v13);
    swift_endAccess();

    if (sub_21EAA9020())
    {
      swift_beginAccess();
      sub_21EA55C3C(&v14, v13);
      swift_endAccess();
    }
  }
}

void sub_21EA5C2E0(void *a1)
{
  if (*(v1 + 120))
  {
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 104);
  v79 = *(v1 + 96);
  v6 = *(v1 + 88);
  v7 = [v3 _shouldReverseLayoutDirection];
  [a1 locationInView_];
  v9 = v8;
  v11 = v10;
  v77 = v5;
  if (v7)
  {
    v12 = BSFloatGreaterThanFloat();
  }

  else
  {
    v5 = 0.0;
    v12 = BSFloatLessThanFloat();
  }

  if (v12)
  {
    v13 = v5;
  }

  else
  {
    v13 = v9;
  }

  v14 = 0.0;
  if (!BSFloatLessThanFloat())
  {
    v14 = v11;
  }

  [v4 frame];
  v76 = v6;
  v88.origin.x = v13 - (v6 - v15);
  v86.origin.y = 0.0;
  v86.size.width = 1.0;
  v86.size.height = 1.0;
  v88.size.width = 1.0;
  v88.size.height = 1.0;
  v86.origin.x = v5;
  v88.origin.y = v14;
  v87 = CGRectUnion(v86, v88);
  if (*(v1 + 144))
  {
    goto LABEL_47;
  }

  x = v87.origin.x;
  y = v87.origin.y;
  width = v87.size.width;
  height = v87.size.height;
  v20 = *(v1 + 128);
  v21 = *(v1 + 136);
  if (qword_27CEDBC10 != -1)
  {
    swift_once();
  }

  v22 = qword_27CEDCE40;
  [qword_27CEDCE40 undersizeRubberbandingRange];
  if (BSFloatLessThanFloat())
  {
    BSIntervalMake(&aBlock, v20, v20);
    BSUIConstrainValueToIntervalWithRubberBand();
    width = v23;
  }

  if (BSFloatLessThanFloat())
  {
    BSIntervalMake(&aBlock, v21, v21);
    BSUIConstrainValueToIntervalWithRubberBand();
    height = v24;
  }

  if (*(v1 + 168))
  {
    goto LABEL_48;
  }

  v25 = *(v1 + 152);
  v26 = *(v1 + 160);
  [v22 oversizeRubberbandingRange];
  if (BSFloatGreaterThanFloat())
  {
    BSIntervalMake(&aBlock, v25, v25);
    BSUIConstrainValueToIntervalWithRubberBand();
    width = v27;
  }

  if (BSFloatGreaterThanFloat())
  {
    BSIntervalMake(&aBlock, v26, v26);
    BSUIConstrainValueToIntervalWithRubberBand();
    height = v28;
  }

  v29 = *(v1 + 208);
  if (!v29)
  {
    goto LABEL_49;
  }

  v30 = [v29 gridSizeClass];
  if (!v30)
  {
    return;
  }

  v31 = v30;
  v72 = v4;
  v74 = v22;
  v75 = v3;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  v35 = *(v1 + 184);
  if (!v35)
  {
    goto LABEL_50;
  }

  v36 = v34;
  v37 = swift_allocObject();
  *(v37 + 16) = v1;
  v71 = v7;
  *(v37 + 24) = v7;
  *(v37 + 32) = v5;
  *(v37 + 40) = 0;
  *(v37 + 48) = x;
  *(v37 + 56) = y;
  *(v37 + 64) = width;
  *(v37 + 72) = height;
  *(v37 + 80) = width * height;
  *(v37 + 88) = v31;
  *(v37 + 96) = v32;
  *(v37 + 104) = v36;
  *(v37 + 112) = v33;
  v84 = sub_21EA5E0BC;
  v85 = v37;
  aBlock = MEMORY[0x277D85DD0];
  v81 = 1107296256;
  v82 = sub_21EA946E8;
  v83 = &block_descriptor_71;
  v38 = _Block_copy(&aBlock);

  v39 = v35;
  v40 = v31;

  [v39 enumerateGridSizeClassesUsingBlock_];
  _Block_release(v38);

  swift_beginAccess();
  v41 = *(v33 + 16);
  if (v41)
  {
    swift_beginAccess();
    swift_beginAccess();
    v42 = v40;
    v43 = v41;
    v73 = v43;
    if (BSFloatGreaterThanFloat())
    {
      v44 = *(v1 + 192);
      v45 = v74;
      if (!v44)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      if ([v44 containsGridSizeClass_])
      {

        v46 = *(v1 + 208);
        if (!v46)
        {
LABEL_54:
          __break(1u);
          return;
        }

        v42 = v43;
        [v46 setGridSizeClass_];
        [v75 layoutIconsIfNeededWithAnimationType:0 options:0];
        v47 = 1;
      }

      else
      {
        v47 = 0;
      }
    }

    else
    {
      v47 = 0;
      v45 = v74;
    }

    if (*(v1 + 224))
    {
      SBHIconListLayoutIconImageInfoForGridSizeClass();
      v49 = v48;
      v51 = v50;
      if (v71)
      {
        v52 = v77 + v76 - width;
      }

      else
      {
        v52 = v76;
      }

      v53 = objc_opt_self();
      v54 = [v45 animationSettings];
      v55 = swift_allocObject();
      *(v55 + 16) = v72;
      *(v55 + 24) = width;
      *(v55 + 32) = height;
      *(v55 + 40) = v49;
      *(v55 + 48) = v51;
      *(v55 + 56) = v52;
      *(v55 + 64) = v79;
      *(v55 + 72) = width;
      *(v55 + 80) = height;
      v84 = sub_21EA5E0E0;
      v85 = v55;
      aBlock = MEMORY[0x277D85DD0];
      v81 = 1107296256;
      v82 = sub_21EA87FF0;
      v83 = &block_descriptor_77;
      v56 = _Block_copy(&aBlock);
      v57 = v72;

      [v53 sb:v54 animateWithSettings:5 mode:v56 animations:0 completion:?];
      _Block_release(v56);

      if (v47)
      {
        v58 = sub_21EA5C148();
        [v45 hapticIntensity];
        [v58 impactOccurredWithIntensity_];

        v59 = *(v1 + 200);
        if (v59)
        {
          [v59 setSuppressesContentTransitions_];
        }

        v60 = [v45 animationSettings];
        v61 = swift_allocObject();
        v61[2] = v59;
        v61[3] = v42;
        v61[4] = v75;
        v84 = sub_21EA5E0F8;
        v85 = v61;
        aBlock = MEMORY[0x277D85DD0];
        v81 = 1107296256;
        v82 = sub_21EA87FF0;
        v83 = &block_descriptor_83;
        v62 = _Block_copy(&aBlock);
        v78 = v59;
        v63 = v75;
        v64 = v42;

        [v53 &selRef_minimumFlickVelocity + 6];
        _Block_release(v62);

        v65 = [v45 labelTransitionAnimationSettings];
        v66 = swift_allocObject();
        *(v66 + 16) = v59;
        v84 = sub_21EA5F548;
        v85 = v66;
        aBlock = MEMORY[0x277D85DD0];
        v81 = 1107296256;
        v82 = sub_21EA87FF0;
        v83 = &block_descriptor_89_0;
        v67 = _Block_copy(&aBlock);
        v68 = v78;

        [v53 sb:v65 animateWithSettings:3 mode:v67 animations:0 completion:?];
        _Block_release(v67);
      }

      v69 = *(v1 + 216);
      if (v69)
      {
        v70 = v69;
        [v75 bringSubviewToFront_];

        goto LABEL_44;
      }

      goto LABEL_52;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

LABEL_44:
}

uint64_t sub_21EA5CC40(void *a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  result = *(a10 + 224);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v46 = a1;
  SBHIconListLayoutIconImageInfoForGridSizeClass();
  v29 = v27;
  v30 = v28;
  if (a11)
  {
    v31 = a2 - v27;
    v32 = 0;
    v33 = v27;
    v34 = v28;
  }

  else
  {
    BSRectWithSize();
    v31 = v35;
    v32 = v36;
    v33 = v37;
    v34 = v38;
  }

  v48.origin.x = a4;
  v48.origin.y = a5;
  v48.size.width = a6;
  v48.size.height = a7;
  v49 = CGRectIntersection(v48, *&v31);
  v39 = 1.0 - (v29 * v30 + a8 - v49.size.width * v49.size.height - v49.size.width * v49.size.height) / (v29 * v30 + a8);
  v40 = sub_21EAA8E00();
  v42 = v41;
  if (v40 == sub_21EAA8E00() && v42 == v43)
  {

LABEL_9:
    result = swift_beginAccess();
    *(a13 + 16) = v39;
    return result;
  }

  v44 = sub_21EAA9530();

  if (v44)
  {
    goto LABEL_9;
  }

  swift_beginAccess();
  result = BSFloatGreaterThanFloat();
  if (result)
  {
    swift_beginAccess();
    *(a14 + 16) = v39;
    swift_beginAccess();
    v45 = *(a15 + 16);
    *(a15 + 16) = v46;

    return v46;
  }

  return result;
}

id sub_21EA5CE70(void *a1)
{
  [a1 setIconImageInfo_];
  UIRectGetCenter();
  [a1 setCenter_];

  return [a1 layoutIfNeeded];
}

id sub_21EA5CEFC(id result, int a2, id a3)
{
  if (result)
  {
    v3 = result;
    [a3 orientation];
    [v3 setGridSizeClass_];
    [v3 setSuppressesCompactContinuousCornerRadiusUpdates_];

    return [v3 setSuppressesCompactContinuousCornerRadiusUpdates_];
  }

  return result;
}

void sub_21EA5CF88(uint64_t (*a1)(void, void), double a2, double a3, double a4, double a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, uint64_t a11)
{
  if (qword_27CEDBC10 != -1)
  {
    swift_once();
  }

  v40 = qword_27CEDCE40;
  v39 = [qword_27CEDCE40 animationSettings];
  v21 = swift_allocObject();
  *(v21 + 16) = a7;
  *(v21 + 24) = a8;
  *(v21 + 32) = a9;
  *(v21 + 40) = a10;
  *(v21 + 48) = a11;
  *(v21 + 56) = a2;
  *(v21 + 64) = a3;
  *(v21 + 72) = a4;
  *(v21 + 80) = a5;
  v45 = sub_21EA5F4C4;
  v46 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_21EA87FF0;
  v44 = &block_descriptor_126;
  v22 = _Block_copy(&aBlock);
  v38 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;

  v26 = a1(0, 0);
  v28 = a1;
  if (v26)
  {
    v45 = v26;
    v46 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_21EA5DB18;
    v44 = &block_descriptor_138;
    v29 = _Block_copy(&aBlock);
  }

  else
  {
    v29 = 0;
  }

  v30 = objc_opt_self();
  [v30 sb:v39 animateWithSettings:3 mode:v22 animations:v29 completion:?];
  _Block_release(v29);
  _Block_release(v22);

  v31 = [v40 labelTransitionAnimationSettings];
  v32 = swift_allocObject();
  *(v32 + 16) = a7;
  v45 = sub_21EA5F4DC;
  v46 = v32;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_21EA87FF0;
  v44 = &block_descriptor_132;
  v33 = _Block_copy(&aBlock);
  v34 = v38;

  v35 = v28(0, 0);
  if (v35)
  {
    v45 = v35;
    v46 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_21EA5DB18;
    v44 = &block_descriptor_135;
    v37 = _Block_copy(&aBlock);
  }

  else
  {
    v37 = 0;
  }

  [v30 sb:v31 animateWithSettings:3 mode:v33 animations:v37 completion:v38];
  _Block_release(v37);
  _Block_release(v33);
}

id sub_21EA5D30C(void *a1, uint64_t a2, void *a3, void *a4, double *a5)
{
  v33 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCEB0);
  MEMORY[0x28223BE20](v9 - 8);
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = sub_21EAA8710();
  v34 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v31 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21EAA87C0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v30 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v30 - v20;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v30 - v24;
  if (a1)
  {
    [a3 orientation];
    [a1 setGridSizeClass_];
  }

  swift_beginAccess();
  [a4 setIconImageInfo_];
  if (a1)
  {
    [a1 setSuppressesCompactContinuousCornerRadiusUpdates_];
  }

  UIRectGetCenter();
  [a4 setCenter_];
  result = [a4 layoutIfNeeded];
  if (a1)
  {
    sub_21EAA9050();
    (*(v17 + 32))(v25, v21, v16);
    sub_21EAA87A0();
    v27 = v34;
    if ((*(v34 + 48))(v13, 1, v14) == 1)
    {
      (*(v17 + 8))(v25, v16);
      return sub_21EA5F3A8(v13);
    }

    else
    {
      v28 = v31;
      (*(v27 + 32))(v31, v13, v14);
      v29 = v32;
      sub_21EAA86F0();
      (*(v27 + 56))(v29, 0, 1, v14);
      sub_21EAA87B0();
      (*(v17 + 16))(v30, v25, v16);
      sub_21EAA9060();
      [a1 updateTraitsIfNeeded];
      (*(v27 + 8))(v28, v14);
      return (*(v17 + 8))(v25, v16);
    }
  }

  return result;
}

uint64_t sub_21EA5D758(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_21EA5F438, v4);
}

uint64_t (*sub_21EA5D7EC(uint64_t a1, uint64_t a2, uint64_t a3))(char a1, char a2)
{
  if (a2)
  {
    v4 = sub_21EAA8DC0();
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(a3 + 16))(a3, v4);

  if (!v5)
  {
    return 0;
  }

  *(swift_allocObject() + 16) = v5;
  return sub_21EA5F440;
}

void sub_21EA5D884(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCEB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - v11;
  v13 = sub_21EAA87C0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v27 - v20;
  if (a4[29] == a3)
  {
    if (a5)
    {
      v22 = v18;
      v23 = a5;
      sub_21EAA9050();
      v24 = sub_21EAA8710();
      (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
      sub_21EAA87B0();
      (*(v14 + 16))(v16, v21, v22);
      sub_21EAA9060();
      [v23 setResizing_];
      [v23 setMinResizeDimensions_];
      [v23 setMaxResizeDimensions_];

      (*(v14 + 8))(v21, v22);
    }

    v25 = a4[30];
    if (v25)
    {
      [v25 invalidate];
      a4[30] = 0;
      swift_unknownObjectRelease();
    }

    v26 = a4[9];
    if (v26)
    {

      v26(a4, a6);
      sub_21E9FFAF0(v26);
    }

    sub_21EA5DB78();
  }
}

uint64_t sub_21EA5DB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

id sub_21EA5DB78()
{
  v1 = v0[3];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v3 = Strong;
  v4 = v0[25];
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v0[2];
  v6 = v4;
  v7 = [v5 icon];
  if (!v7)
  {

LABEL_10:
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  v8 = v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {

    goto LABEL_11;
  }

  v10 = [v9 activeDataSource];
  if (!v10)
  {

    goto LABEL_11;
  }

  v11 = v10;
  v12 = [v1 iconViewProvider];
  if (v12)
  {
    [v12 recycleIconView_];
    swift_unknownObjectRelease();
  }

  v13 = v6;
  v14 = sub_21EA5DE60(v13, v11, 0x632D657A69736572, 0xEE0070756E61656CLL, v3);
  swift_unknownObjectRelease();

LABEL_12:
  result = v0[26];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  [result invalidate];
  v0[26] = 0;
  swift_unknownObjectRelease();
  result = v0[27];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  [result removeFromSuperview];
  v16 = v0[27];
  v0[27] = 0;

  result = [v1 layoutIconsNow];
  if (v14)
  {
    [v14 invalidate];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21EA5DD78()
{
  MEMORY[0x223D68630](v0 + 32);
  sub_21E9FFAF0(*(v0 + 40));
  sub_21E9FFAF0(*(v0 + 56));
  sub_21E9FFAF0(*(v0 + 72));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_21EA5DE08()
{
  sub_21EA5DD78();

  return MEMORY[0x2821FE8D8](v0, 256, 7);
}

id sub_21EA5DE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = OBJC_IVAR___CCUIPagingViewController_overrideIconImageViewControllersByDataSource;
  v9 = *(a5 + OBJC_IVAR___CCUIPagingViewController_overrideIconImageViewControllersByDataSource);
  if (v9)
  {
    v10 = *(a5 + OBJC_IVAR___CCUIPagingViewController_overrideIconImageViewControllersByDataSource);
  }

  else
  {
    v11 = [objc_opt_self() mapTableWithKeyOptions:5 valueOptions:0];
    v10 = v11;
    if (!*(a5 + v8))
    {
      *(a5 + v8) = v11;
      v10 = v11;
    }
  }

  v12 = v9;
  [v10 setObject:a1 forKey:a2];
  v13 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v14 = [v13 UUIDString];

  if (!v14)
  {
    sub_21EAA8E00();
    v14 = sub_21EAA8DC0();
  }

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v10;
  v16[4] = a2;
  v17 = objc_allocWithZone(MEMORY[0x277CF0CE8]);
  v18 = v10;

  swift_unknownObjectRetain();
  v19 = sub_21EAA8DC0();
  v23[4] = sub_21EA5E0B0;
  v23[5] = v16;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_21EA4FFB0;
  v23[3] = &block_descriptor_6;
  v20 = _Block_copy(v23);
  v21 = [v17 initWithIdentifier:v14 forReason:v19 invalidationBlock:v20];

  _Block_release(v20);

  return v21;
}

void BSIntervalMake(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *a1 = a2;
  *(a1 + 16) = a3;
  *(a1 + 8) = 1;
  *(a1 + 24) = 1;
}

uint64_t sub_21EA5E124(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  *(v2 + 104) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 120) = 1;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = 1;
  *(v2 + 152) = 0;
  *(v2 + 160) = 0;
  *(v2 + 168) = 1;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return v2;
}

void sub_21EA5E1B0()
{
  v5 = sub_21EAA8710();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCEB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v100 - v13;
  v15 = sub_21EAA87C0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v100 - v23;
  v25 = *(v0 + 232);
  v26 = __CFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v0 + 232) = v27;
    if (*(v0 + 120) != 1)
    {
      v66 = *(v0 + 200);
      if (v66)
      {
        v111 = v14;
        v67 = v66;
        sub_21EAA9050();
        sub_21EAA87A0();
        if ((*(v6 + 48))(v11, 1, v5) == 1)
        {

          (*(v16 + 8))(v18, v15);
          sub_21EA5F3A8(v11);
        }

        else
        {
          (*(v6 + 32))(v8, v11, v5);
          v99 = v111;
          sub_21EAA86F0();
          (*(v6 + 56))(v99, 0, 1, v5);
          sub_21EAA87B0();
          (*(v16 + 16))(v24, v18, v15);
          sub_21EAA9060();
          [v67 updateTraitsIfNeeded];

          (*(v6 + 8))(v8, v5);
          (*(v16 + 8))(v18, v15);
        }
      }

      return;
    }

    v100 = v21;
    v101 = v6;
    v28 = *(v0 + 16);
    v29 = *(v0 + 24);
    v30 = [v28 icon];
    if (v30)
    {
      v31 = v30;
      v111 = v14;
      v110 = v24;
      v102 = v5;
      v103 = v16;
      v104 = v15;
      objc_opt_self();
      v32 = swift_dynamicCastObjCClass();
      if (v32)
      {
        v33 = v32;
        v112 = [v28 listLayout];
        if (v112)
        {
          [v28 frame];
          *(v0 + 88) = v34;
          *(v0 + 96) = v35;
          *(v0 + 104) = v36;
          *(v0 + 112) = v37;
          *(v0 + 120) = 0;
          v113 = v31;
          v38 = [v33 gridSizeClass];
          v39 = *(v0 + 176);
          *(v0 + 176) = v38;

          v40 = [v29 gridSizeForCurrentOrientation];
          v41 = v40;
          v114 = v28;
          v42 = HIWORD(v40);
          v43 = [v29 gridCellIndexForIcon_];
          v109 = v33;
          v107 = v43;
          v44 = swift_allocObject();
          v45 = MEMORY[0x277D84FA0];
          *(v44 + 16) = MEMORY[0x277D84FA0];
          v46 = swift_allocObject();
          *(v46 + 16) = v45;
          v108 = v46 + 16;
          v47 = [v33 supportedGridSizeClasses];

          v48 = swift_allocObject();
          *(v48 + 16) = v29;
          *(v48 + 24) = v41;
          *(v48 + 26) = v42;
          v49 = v107;
          *(v48 + 32) = v44;
          *(v48 + 40) = v49;
          *(v48 + 48) = 0;
          *(v48 + 56) = v41;
          *(v48 + 58) = v42;
          *(v48 + 64) = v46;
          aBlock[4] = sub_21EA5F314;
          aBlock[5] = v48;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_21EA946E8;
          aBlock[3] = &block_descriptor_99;
          v50 = _Block_copy(aBlock);
          v107 = v29;
          v106 = v44;

          v105 = v46;
          v51 = v44 + 16;

          [v47 enumerateGridSizeClassesUsingBlock_];
          _Block_release(v50);

          swift_beginAccess();
          v52 = objc_allocWithZone(MEMORY[0x277D661B8]);
          type metadata accessor for SBHIconGridSizeClass(0);
          sub_21EA5F350();

          v53 = sub_21EAA8F50();

          v54 = [v52 initWithGridSizeClasses_];

          v55 = *(v0 + 184);
          *(v0 + 184) = v54;

          swift_beginAccess();
          v56 = objc_allocWithZone(MEMORY[0x277D661B8]);

          v57 = v114;
          v58 = sub_21EAA8F50();

          v59 = v56;
          v60 = v107;
          v61 = [v59 initWithGridSizeClasses_];

          v62 = *(v0 + 192);
          *(v0 + 192) = v61;

          [v57 setAllowsCloseBox_];
          [v60 forgetIconView_];
          v63 = sub_21EAA8DC0();
          v64 = [v60 addPlaceholderRepresentingIcon:v109 reason:v63 options:20];

          v65 = *(v0 + 208);
          if (v65)
          {
            [v65 invalidate];
          }

          v14 = v112;
          *(v0 + 208) = v64;
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          [v60 bounds];
          v72 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
          [v60 addSubview_];
          [v72 addSubview_];
          v8 = *(v0 + 216);
          *(v0 + 216) = v72;
          v109 = v72;

          *(v0 + 224) = v14;
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          v73 = *v51;
          v74 = *v51 + 56;
          v75 = 1 << *(*v51 + 32);
          v76 = -1;
          if (v75 < 64)
          {
            v76 = ~(-1 << v75);
          }

          v77 = v76 & *(*v51 + 56);
          v78 = (v75 + 63) >> 6;

          v79 = 0;
          v1 = 0.0;
          v3 = 9.22337204e18;
          v2 = 0.0;
          v4 = 9.22337204e18;
          v24 = v110;
          while (v77)
          {
LABEL_20:
            v8 = *(*(v73 + 48) + ((v79 << 9) | (8 * __clz(__rbit64(v77)))));
            SBHIconListLayoutIconImageInfoForGridSizeClass();
            v82 = v81;
            v84 = v83;
            if (BSFloatGreaterThanFloat())
            {
              BSIntervalMake(aBlock, v82, v82);
              BSUIConstrainValueToIntervalWithRubberBand();
              v3 = v85;
            }

            if (BSFloatGreaterThanFloat())
            {
              BSIntervalMake(aBlock, v84, v84);
              BSUIConstrainValueToIntervalWithRubberBand();
              v4 = v86;
            }

            if (BSFloatLessThanFloat())
            {
              BSIntervalMake(aBlock, v82, v82);
              BSUIConstrainValueToIntervalWithRubberBand();
              v1 = v87;
            }

            if (BSFloatLessThanFloat())
            {
              BSIntervalMake(aBlock, v84, v84);
              BSUIConstrainValueToIntervalWithRubberBand();
              v2 = v88;
            }

            v77 &= v77 - 1;
          }

          while (1)
          {
            v80 = v79 + 1;
            if (__OFADD__(v79, 1))
            {
              break;
            }

            if (v80 >= v78)
            {

              *(v0 + 128) = v3;
              *(v0 + 136) = v4;
              *(v0 + 144) = 0;
              *(v0 + 152) = v1;
              *(v0 + 160) = v2;
              *(v0 + 168) = 0;
              v89 = v114;
              [v114 setOverrideCustomIconImageViewController_];
              v90 = [v89 customIconImageViewController];
              if (v90)
              {
                v91 = v90;
                objc_opt_self();
                v92 = swift_dynamicCastObjCClass();
                if (v92)
                {
                  v14 = v92;
                  v93 = *(v0 + 200);
                  *(v0 + 200) = v92;
                  v94 = v91;

                  v8 = v94;
                  sub_21EAA9050();
                  if (qword_27CEDBC10 != -1)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_31;
                }

                swift_unknownObjectRelease();
              }

              else
              {

                swift_unknownObjectRelease();
              }

              swift_unknownObjectRelease();
              return;
            }

            v77 = *(v74 + 8 * v80);
            ++v79;
            if (v77)
            {
              v79 = v80;
              goto LABEL_20;
            }
          }

          __break(1u);
          goto LABEL_38;
        }
      }
    }

    sub_21EAA94A0();
    __break(1u);
    return;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  swift_once();
LABEL_31:
  v95 = qword_27CEDCE40;
  [qword_27CEDCE40 labelTransitionCrossblurRadius];
  [v95 blurPocketWidth];
  [v95 blurPocketFadeDuration];
  v96 = v111;
  sub_21EAA8700();
  (*(v101 + 56))(v96, 0, 1, v102);
  v97 = v104;
  sub_21EAA87B0();
  v98 = v103;
  (*(v103 + 16))(v100, v24, v97);
  sub_21EAA9060();

  [v14 updateTraitsIfNeeded];
  [v14 setResizing_];
  [v14 setMinResizeDimensions_];
  [v14 setMaxResizeDimensions_];
  [v14 setSuppressesCompactContinuousCornerRadiusUpdates_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v98 + 8))(v24, v97);
}

void sub_21EA5EF5C()
{
  if (v0[15])
  {
    __break(1u);
    goto LABEL_17;
  }

  v1 = v0;
  v2 = *v0;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[12];
  v6 = *(v0 + 13);
  v7 = *(v0 + 11);
  v8 = [v4 _shouldReverseLayoutDirection];
  v9 = swift_allocObject();
  [v3 iconImageInfo];
  v9[2] = v10;
  *(v9 + 3) = v11;
  *(v9 + 4) = v12;
  *(v9 + 5) = v13;
  v14 = v0[26];
  if (!v14)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v10;
  v16 = v11;
  v17 = [v14 gridSizeClass];
  if (v17)
  {
    if (!v0[28])
    {
LABEL_20:
      __break(1u);
      return;
    }

    v18 = v17;
    swift_unknownObjectRetain();
    SBHIconListLayoutIconImageInfoForGridSizeClass();
    v15 = v19;
    v16 = v20;
    swift_unknownObjectRelease();

    v9[2] = v15;
    *(v9 + 3) = v16;
  }

  v21 = v1[26];
  if (!v21)
  {
    goto LABEL_18;
  }

  v22 = [v21 gridSizeClass];
  if (!v22)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v23 = v22;
  v40 = v1[29];
  [v3 setAllowsCloseBox_];
  v24 = v1[7];
  if (v24)
  {

    v24(v1);
    sub_21E9FFAF0(v24);
  }

  v25 = v1[25];
  v26 = v1[30];
  v27 = v25;
  if (!v26)
  {
    v1[30] = [v3 extendResizingFinish];
    swift_unknownObjectRelease();
  }

  if (v8)
  {
    v28 = v6 + v7 - v15;
  }

  else
  {
    v28 = v7;
  }

  [v27 setSuppressesContentTransitions_];
  v39 = objc_opt_self();
  v29 = swift_allocObject();
  *(v29 + 16) = v25;
  *(v29 + 24) = v23;
  *(v29 + 32) = v4;
  *(v29 + 40) = v3;
  *(v29 + 48) = v9;
  *(v29 + 56) = v28;
  *(v29 + 64) = v5;
  *(v29 + 72) = v15;
  *(v29 + 80) = v16;
  *(v29 + 88) = v2;
  v45 = sub_21EA5F410;
  v46 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_21EA5D758;
  v44 = &block_descriptor_108;
  v30 = _Block_copy(&aBlock);
  v31 = v27;
  v32 = v23;
  v33 = v4;
  v34 = v3;

  v35 = swift_allocObject();
  v35[2] = v40;
  v35[3] = v1;
  v35[4] = v25;
  v35[5] = v32;
  v45 = sub_21EA5F42C;
  v46 = v35;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_21EA5DB18;
  v44 = &block_descriptor_114;
  v36 = _Block_copy(&aBlock);
  v37 = v31;
  v38 = v32;

  [v39 perform:v30 finalCompletion:v36];
  _Block_release(v36);
  _Block_release(v30);
}

unint64_t sub_21EA5F350()
{
  result = qword_28125B7B0;
  if (!qword_28125B7B0)
  {
    type metadata accessor for SBHIconGridSizeClass(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28125B7B0);
  }

  return result;
}

uint64_t sub_21EA5F3A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCEB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_104Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

id sub_21EA5F4DC()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result setSuppressesContentTransitions_];
  }

  return result;
}

void sub_21EA5F54C()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return;
  }

  v1 = [v0 _codableDescription];
  v2 = [v1 attributes];

  if (!v2)
  {
    return;
  }

  sub_21E9F8880(0, &unk_28125B648);
  sub_21E9F8880(0, &qword_27CEDCEB8);
  sub_21EA5F7CC();
  v3 = sub_21EAA8DB0();

  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = sub_21EAA9480() | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v5 = ~v8;
    v4 = v3 + 64;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v6 = v10 & *(v3 + 64);
    v7 = v3;
  }

  v11 = 0;
  v17 = v5;
  v12 = (v5 + 64) >> 6;
  while ((v7 & 0x8000000000000000) != 0)
  {
    if (!sub_21EAA9490() || (swift_unknownObjectRelease(), swift_dynamicCast(), (v15 = v18) == 0))
    {
LABEL_21:
      sub_21E9FBFD4();

      return;
    }

LABEL_20:
    v16 = [v15 isConfigurable];

    if (v16)
    {
      goto LABEL_21;
    }
  }

  v13 = v11;
  v14 = v6;
  if (v6)
  {
LABEL_16:
    v6 = (v14 - 1) & v14;
    v15 = *(*(v7 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v15)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= v12)
    {
      goto LABEL_21;
    }

    v14 = *(v4 + 8 * v11);
    ++v13;
    if (v14)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

unint64_t sub_21EA5F7CC()
{
  result = qword_27CEDCEC0;
  if (!qword_27CEDCEC0)
  {
    sub_21E9F8880(255, &unk_28125B648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEDCEC0);
  }

  return result;
}

uint64_t sub_21EA5F834(uint64_t a1)
{
  result = MEMORY[0x223D66D40](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_21EA558A8(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21EA5F950(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_21EAA9380();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x223D67210](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for ControlIntentPersistenceAssertion();
    v8 = sub_21EAA9210();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

INIntent_optional __swiftcall ControlIntentStorage.intent(bundleIdentifier:dataSourceIdentifier:)(Swift::String bundleIdentifier, Swift::String dataSourceIdentifier)
{
  v3 = sub_21EAA8DC0();
  v4 = sub_21EAA8DC0();
  v5 = [v2 intentWithBundleIdentifier:v3 dataSourceIdentifier:v4 defaultIntentProvider:0];

  v7 = v5;
  result.value.super.isa = v7;
  result.is_nil = v6;
  return result;
}

void sub_21EA5FAB8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_21EA5FB48(a2, a3, a4, a5);
  sub_21EA5FE30(a1, a2, a3, a4, a5);

  sub_21EA67554(a1, a2, a3, a4, a5);
}

uint64_t sub_21EA5FB48(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR___CCUIControlIntentStore_pendingRemovalState;
  result = swift_beginAccess();
  v12 = *(v4 + v10);
  if (*(v12 + 16))
  {

    v13 = sub_21EA49DF4(a1, a2);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);

      v25 = v15;
      if (qword_28125B8A0 != -1)
      {
        swift_once();
      }

      v16 = sub_21EAA8790();
      __swift_project_value_buffer(v16, qword_28125B8A8);

      v17 = sub_21EAA8760();
      v18 = sub_21EAA9000();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v24[0] = v20;
        *v19 = 136315394;
        *(v19 + 4) = sub_21E9FE748(a1, a2, v24);
        *(v19 + 12) = 2080;
        *(v19 + 14) = sub_21E9FE748(a3, a4, v24);
        _os_log_impl(&dword_21E9F5000, v17, v18, "Cancelling deferred intent removal for bundle identifier:%s data source identifier:%s.", v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D68580](v20, -1, -1);
        MEMORY[0x223D68580](v19, -1, -1);
      }

      sub_21EA62D44(a3, a4);
      v21 = v25;
      if (*(v25 + 16))
      {
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *(v5 + v10);
        *(v5 + v10) = 0x8000000000000000;
        sub_21EA65BEC(v21, a1, a2, isUniquelyReferenced_nonNull_native, &qword_27CEDCC68);

        *(v5 + v10) = v23;
        return swift_endAccess();
      }

      swift_beginAccess();
      sub_21EA62DDC(a1, a2, &qword_27CEDCC68);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_21EA5FE30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = OBJC_IVAR___CCUIControlIntentStore_localIntentsCache;
  swift_beginAccess();
  v13 = *(v5 + v12);
  if (!*(v13 + 16))
  {
    goto LABEL_5;
  }

  v14 = sub_21EA49DF4(a2, a3);
  if ((v15 & 1) == 0)
  {

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21EAB6F50;
    *(inited + 32) = a4;
    *(inited + 40) = a5;
    *(inited + 48) = a1;

    v21 = a1;
    v19 = sub_21EA512AC(inited);
    swift_setDeallocating();
    sub_21EA488A0(inited + 32, &unk_27CEDCF70);
    goto LABEL_6;
  }

  v16 = *(*(v13 + 56) + 8 * v14);

  v17 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21EA65D8C(v17, a4, a5, isUniquelyReferenced_nonNull_native);

  v19 = v16;
LABEL_6:
  swift_beginAccess();

  v22 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v6 + v12);
  *(v6 + v12) = 0x8000000000000000;
  sub_21EA65BEC(v19, a2, a3, v22, &qword_27CEDCC78);

  *(v6 + v12) = v24;
  return swift_endAccess();
}

uint64_t sub_21EA600EC(uint64_t a1, unint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR___CCUIControlIntentStore_intentPersistenceAssertions;
  swift_beginAccess();
  v11 = *(v4 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_21EA49DF4(a1, a2);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);
    }

    else
    {
      v14 = 0;
    }

    if (a4)
    {
LABEL_11:
      v21 = OBJC_IVAR___CCUIControlIntentStore_localIntentsCache;
      swift_beginAccess();
      v22 = *(v5 + v21);
      if (*(v22 + 16))
      {

        v23 = sub_21EA49DF4(a1, a2);
        if (v24)
        {
          v25 = *(*(v22 + 56) + 8 * v23);

          v151[0] = v25;
          if (!v14 || !*(v14 + 16) || (, sub_21EA49DF4(a3, a4), v27 = v26, , (v27 & 1) == 0))
          {

            v36 = v151[0];
            if (*(v151[0] + 16))
            {
              swift_beginAccess();

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v149 = *(v5 + v21);
              *(v5 + v21) = 0x8000000000000000;
              sub_21EA65BEC(v36, a1, a2, isUniquelyReferenced_nonNull_native, &qword_27CEDCC78);

              *(v5 + v21) = v149;
              swift_endAccess();
            }

            else
            {

              swift_beginAccess();
              sub_21EA62DDC(a1, a2, &qword_27CEDCC78);
              swift_endAccess();
            }

            if (qword_28125B8A0 != -1)
            {
LABEL_124:
              swift_once();
            }

            v43 = sub_21EAA8790();
            __swift_project_value_buffer(v43, qword_28125B8A8);

            v44 = sub_21EAA8760();
            v45 = sub_21EAA9000();

            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              v47 = swift_slowAlloc();
              v152[0] = v47;
              *v46 = 136315394;
              *(v46 + 4) = sub_21E9FE748(a1, a2, v152);
              *(v46 + 12) = 2080;
              *(v46 + 14) = sub_21E9FE748(a3, a4, v152);
              _os_log_impl(&dword_21E9F5000, v44, v45, "Remove intent from local succeeded with bundle identifier:%s data source identifier:%s.", v46, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D68580](v47, -1, -1);
              MEMORY[0x223D68580](v46, -1, -1);
            }

            sub_21EA67BCC(a1, a2, a3, a4);
          }

          sub_21EA61450(a1, a2, a3, a4);
          if (qword_28125B8A0 != -1)
          {
            swift_once();
          }

          v28 = sub_21EAA8790();
          __swift_project_value_buffer(v28, qword_28125B8A8);

          v29 = sub_21EAA8760();
          v30 = sub_21EAA9000();

          if (!os_log_type_enabled(v29, v30))
          {
            goto LABEL_33;
          }

          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v152[0] = v32;
          *v31 = 136315394;
          *(v31 + 4) = sub_21E9FE748(a1, a2, v152);
          *(v31 + 12) = 2080;
          *(v31 + 14) = sub_21E9FE748(a3, a4, v152);
          v33 = "Remove intent from local deferred due to assertion -- bundle identifier:%s data source identifier:%s.";
LABEL_24:
          _os_log_impl(&dword_21E9F5000, v29, v30, v33, v31, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D68580](v32, -1, -1);
          v35 = v31;
          goto LABEL_32;
        }
      }

      if (qword_28125B8A0 != -1)
      {
LABEL_120:
        swift_once();
      }

      v34 = sub_21EAA8790();
      __swift_project_value_buffer(v34, qword_28125B8A8);

      v29 = sub_21EAA8760();
      v30 = sub_21EAA8FE0();

      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_33;
      }

      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v152[0] = v32;
      *v31 = 136315394;
      *(v31 + 4) = sub_21E9FE748(a1, a2, v152);
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_21E9FE748(a3, a4, v152);
      v33 = "Remove intent from local failed because no intents found with bundle identifier:%s data source identifier:%s.";
      goto LABEL_24;
    }
  }

  else
  {
    v14 = 0;
    if (a4)
    {
      goto LABEL_11;
    }
  }

  v15 = OBJC_IVAR___CCUIControlIntentStore_localIntentsCache;
  swift_beginAccess();
  v16 = *(v5 + v15);
  if (!*(v16 + 16))
  {
LABEL_28:
    if (qword_28125B8A0 != -1)
    {
      swift_once();
    }

    v38 = sub_21EAA8790();
    __swift_project_value_buffer(v38, qword_28125B8A8);

    v29 = sub_21EAA8760();
    v39 = sub_21EAA8FE0();

    if (!os_log_type_enabled(v29, v39))
    {
      goto LABEL_33;
    }

    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v152[0] = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_21E9FE748(a1, a2, v152);
    _os_log_impl(&dword_21E9F5000, v29, v39, "Remove all intents from local failed because no intents found with bundle identifier:%s.", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x223D68580](v41, -1, -1);
    v35 = v40;
LABEL_32:
    MEMORY[0x223D68580](v35, -1, -1);
LABEL_33:
  }

  v17 = sub_21EA49DF4(a1, a2);
  if ((v18 & 1) == 0)
  {

    goto LABEL_28;
  }

  v19 = *(*(v16 + 56) + 8 * v17);

  if (v14)
  {
    swift_bridgeObjectRetain_n();

    v20 = sub_21EA5F834(v14);
    a4 = sub_21EA66394(v19, v20);
  }

  else
  {

    a4 = MEMORY[0x277D84FA0];
  }

  v142 = v19;
  if (!*(a4 + 16))
  {

    if (qword_28125B8A0 != -1)
    {
      goto LABEL_130;
    }

    goto LABEL_94;
  }

  v141 = v15;
  v48 = a4 + 56;
  v49 = 1 << *(a4 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & *(a4 + 56);
  v52 = OBJC_IVAR___CCUIControlIntentStore_pendingRemovalState;

  v146 = v52;
  swift_beginAccess();
  v15 = 0;
  a3 = (v49 + 63) >> 6;
  v144 = a4;
  v145 = a2;
  v148 = a1;
  for (i = a4 + 56; ; v48 = i)
  {
    if (!v51)
    {
      while (1)
      {
        v53 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
          goto LABEL_119;
        }

        if (v53 >= a3)
        {
          break;
        }

        v51 = *(v48 + 8 * v53);
        ++v15;
        if (v51)
        {
          v15 = v53;
          goto LABEL_52;
        }
      }

      if (qword_28125B8A0 != -1)
      {
        goto LABEL_127;
      }

LABEL_89:
      v102 = sub_21EAA8790();
      __swift_project_value_buffer(v102, qword_28125B8A8);

      v103 = sub_21EAA8760();
      v104 = sub_21EAA9000();

      a3 = v142;
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v151[0] = v106;
        *v105 = 136315394;
        *(v105 + 4) = sub_21E9FE748(a1, v145, v151);
        *(v105 + 12) = 2080;
        v107 = sub_21EAA8F70();
        v109 = sub_21E9FE748(v107, v108, v151);

        *(v105 + 14) = v109;
        _os_log_impl(&dword_21E9F5000, v103, v104, "Remove intents from local deferred due to assertions -- bundle identifier:%s deferred data source identifiers:%s.", v105, 0x16u);
        swift_arrayDestroy();
        v110 = v106;
        a4 = v144;
        MEMORY[0x223D68580](v110, -1, -1);
        v111 = v105;
        a2 = v145;
        MEMORY[0x223D68580](v111, -1, -1);
      }

      v113 = sub_21EA5F834(v112);
      if (*(a4 + 16) <= *(v113 + 16) >> 3)
      {
        v151[0] = v113;
        sub_21EA66534(a4);

        v114 = v151[0];
      }

      else
      {
        v114 = sub_21EA66660(a4, v113);
      }

      if (*(v114 + 16))
      {

        v120 = sub_21EAA8760();
        v121 = sub_21EAA9000();

        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          a4 = swift_slowAlloc();
          v151[0] = a4;
          *v122 = 136315394;
          *(v122 + 4) = sub_21E9FE748(v148, a2, v151);
          *(v122 + 12) = 2080;
          v123 = sub_21EAA8F70();
          v125 = sub_21E9FE748(v123, v124, v151);

          *(v122 + 14) = v125;
          a2 = v145;
          _os_log_impl(&dword_21E9F5000, v120, v121, "Remove intents from local succeeded with bundle identifier:%s data source identifiers:%s.", v122, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D68580](a4, -1, -1);
          MEMORY[0x223D68580](v122, -1, -1);
        }

        a3 = v142;
      }

      v126 = 0;
      v147 = v114;
      v127 = v114 + 56;
      v128 = 1 << *(v114 + 32);
      v129 = -1;
      if (v128 < 64)
      {
        v129 = ~(-1 << v128);
      }

      v130 = v129 & *(v114 + 56);
      v131 = (v128 + 63) >> 6;
      while (1)
      {
        a1 = v148;
        if (!v130)
        {
          break;
        }

LABEL_113:
        v134 = (*(v147 + 48) + ((v126 << 10) | (16 * __clz(__rbit64(v130)))));
        v136 = *v134;
        v135 = v134[1];

        v137 = sub_21EA49DF4(v136, v135);
        if (v138)
        {
          a4 = v137;
          v139 = swift_isUniquelyReferenced_nonNull_native();
          v151[0] = a3;
          if (!v139)
          {
            sub_21EA651D4();
            a3 = v151[0];
          }

          sub_21EA64700(a4, a3);
        }

        v130 &= v130 - 1;
        v132 = v136;
        a2 = v145;
        sub_21EA67BCC(v148, v145, v132, v135);
      }

      while (1)
      {
        v133 = v126 + 1;
        if (__OFADD__(v126, 1))
        {
          break;
        }

        if (v133 >= v131)
        {

          v15 = v141;
          if (!*(a3 + 16))
          {
            goto LABEL_97;
          }

          goto LABEL_117;
        }

        v130 = *(v127 + 8 * v133);
        ++v126;
        if (v130)
        {
          v126 = v133;
          goto LABEL_113;
        }
      }

LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

LABEL_52:
    v54 = __clz(__rbit64(v51));
    v51 &= v51 - 1;
    v55 = (*(a4 + 48) + ((v15 << 10) | (16 * v54)));
    v56 = *v55;
    a2 = v55[1];
    v57 = *(v5 + v146);
    v58 = *(v57 + 16);

    if (!v58)
    {
      goto LABEL_59;
    }

    v59 = sub_21EA49DF4(a1, v145);
    if ((v60 & 1) == 0)
    {

LABEL_59:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCC88);
      a1 = sub_21EAA94E0();

      v69 = sub_21EA49DF4(v56, a2);
      v71 = v70;

      if (v71)
      {
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      *(a1 + 8 * (v69 >> 6) + 64) |= 1 << v69;
      v72 = (*(a1 + 48) + 16 * v69);
      *v72 = v56;
      v72[1] = a2;
      *(*(a1 + 56) + v69) = 1;
      v73 = *(a1 + 16);
      v66 = __OFADD__(v73, 1);
      v74 = v73 + 1;
      if (v66)
      {
        goto LABEL_122;
      }

      *(a1 + 16) = v74;
      swift_beginAccess();
      a2 = v145;

      v75 = swift_isUniquelyReferenced_nonNull_native();
      v76 = *(v5 + v146);
      *(v5 + v146) = 0x8000000000000000;
      v77 = sub_21EA49DF4(v148, v145);
      v79 = v76[2];
      v80 = (v78 & 1) == 0;
      v66 = __OFADD__(v79, v80);
      v81 = v79 + v80;
      if (v66)
      {
        goto LABEL_123;
      }

      a4 = v78;
      if (v76[3] >= v81)
      {
        if ((v75 & 1) == 0)
        {
          v87 = v77;
          sub_21EA65340(&qword_27CEDCC68);
          v77 = v87;
          if (a4)
          {
            goto LABEL_45;
          }

          goto LABEL_67;
        }
      }

      else
      {
        sub_21EA63D34(v81, v75, &qword_27CEDCC68);
        v77 = sub_21EA49DF4(v148, v145);
        if ((a4 & 1) != (v82 & 1))
        {
          goto LABEL_131;
        }
      }

      if (a4)
      {
        goto LABEL_45;
      }

LABEL_67:
      v76[(v77 >> 6) + 8] |= 1 << v77;
      v83 = (v76[6] + 16 * v77);
      *v83 = v148;
      v83[1] = v145;
      *(v76[7] + 8 * v77) = a1;
      v84 = v76[2];
      v66 = __OFADD__(v84, 1);
      v85 = v84 + 1;
      if (v66)
      {
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        swift_once();
        goto LABEL_89;
      }

      goto LABEL_85;
    }

    v61 = *(*(v57 + 56) + 8 * v59);

    a1 = swift_isUniquelyReferenced_nonNull_native();
    v151[0] = v61;
    v62 = sub_21EA49DF4(v56, a2);
    v64 = *(v61 + 16);
    v65 = (v63 & 1) == 0;
    v66 = __OFADD__(v64, v65);
    v67 = v64 + v65;
    if (v66)
    {
      goto LABEL_125;
    }

    a4 = v63;
    if (*(v61 + 24) < v67)
    {
      sub_21EA637F0(v67, a1);
      v62 = sub_21EA49DF4(v56, a2);
      if ((a4 & 1) != (v68 & 1))
      {
        goto LABEL_131;
      }

LABEL_71:
      if (a4)
      {
        goto LABEL_72;
      }

      goto LABEL_76;
    }

    if (a1)
    {
      goto LABEL_71;
    }

    v88 = v62;
    sub_21EA6506C();
    v62 = v88;
    if (a4)
    {
LABEL_72:
      v86 = v62;

      a1 = v151[0];
      *(*(v151[0] + 56) + v86) = 1;
      goto LABEL_78;
    }

LABEL_76:
    a1 = v151[0];
    *(v151[0] + 8 * (v62 >> 6) + 64) |= 1 << v62;
    v89 = (*(a1 + 48) + 16 * v62);
    *v89 = v56;
    v89[1] = a2;
    *(*(a1 + 56) + v62) = 1;
    v90 = *(a1 + 16);
    v66 = __OFADD__(v90, 1);
    v91 = v90 + 1;
    if (v66)
    {
      break;
    }

    *(a1 + 16) = v91;
LABEL_78:
    a2 = v145;
    swift_beginAccess();

    v92 = swift_isUniquelyReferenced_nonNull_native();
    v76 = *(v5 + v146);
    *(v5 + v146) = 0x8000000000000000;
    v77 = sub_21EA49DF4(v148, v145);
    v94 = v76[2];
    v95 = (v93 & 1) == 0;
    v66 = __OFADD__(v94, v95);
    v96 = v94 + v95;
    if (v66)
    {
      goto LABEL_126;
    }

    v97 = v93;
    if (v76[3] >= v96)
    {
      if ((v92 & 1) == 0)
      {
        v101 = v77;
        sub_21EA65340(&qword_27CEDCC68);
        v77 = v101;
        if (v97)
        {
LABEL_45:
          *(v76[7] + 8 * v77) = a1;

          goto LABEL_46;
        }

        goto LABEL_84;
      }
    }

    else
    {
      sub_21EA63D34(v96, v92, &qword_27CEDCC68);
      v77 = sub_21EA49DF4(v148, v145);
      if ((v97 & 1) != (v98 & 1))
      {
LABEL_131:
        result = sub_21EAA9560();
        __break(1u);
        return result;
      }
    }

    if (v97)
    {
      goto LABEL_45;
    }

LABEL_84:
    v76[(v77 >> 6) + 8] |= 1 << v77;
    v99 = (v76[6] + 16 * v77);
    *v99 = v148;
    v99[1] = v145;
    *(v76[7] + 8 * v77) = a1;
    v100 = v76[2];
    v66 = __OFADD__(v100, 1);
    v85 = v100 + 1;
    if (v66)
    {
      goto LABEL_129;
    }

LABEL_85:
    v76[2] = v85;
LABEL_46:
    a1 = v148;
    a4 = v144;
    *(v5 + v146) = v76;
    swift_endAccess();
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  swift_once();
LABEL_94:
  v115 = sub_21EAA8790();
  __swift_project_value_buffer(v115, qword_28125B8A8);

  v116 = sub_21EAA8760();
  v117 = sub_21EAA9000();

  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v152[0] = v119;
    *v118 = 136315138;
    *(v118 + 4) = sub_21E9FE748(a1, a2, v152);
    _os_log_impl(&dword_21E9F5000, v116, v117, "Remove all intents from local succeeded with bundle identifier:%s.", v118, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v119);
    MEMORY[0x223D68580](v119, -1, -1);
    MEMORY[0x223D68580](v118, -1, -1);
  }

  sub_21EA67BCC(a1, a2, 0, 0);
  a3 = MEMORY[0x277D84F98];
  if (*(MEMORY[0x277D84F98] + 16))
  {
LABEL_117:
    swift_beginAccess();

    v140 = swift_isUniquelyReferenced_nonNull_native();
    v150 = *(v5 + v15);
    *(v5 + v15) = 0x8000000000000000;
    sub_21EA65BEC(a3, a1, a2, v140, &qword_27CEDCC78);

    *(v5 + v15) = v150;
    swift_endAccess();
  }

  else
  {
LABEL_97:

    swift_beginAccess();
    sub_21EA62DDC(a1, a2, &qword_27CEDCC78);
    swift_endAccess();
  }
}

uint64_t sub_21EA61450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR___CCUIControlIntentStore_pendingRemovalState;
  swift_beginAccess();
  v11 = *(v4 + v10);
  if (!*(v11 + 16))
  {
    goto LABEL_5;
  }

  v12 = sub_21EA49DF4(a1, a2);
  if ((v13 & 1) == 0)
  {

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21EAB6F50;
    *(inited + 32) = a3;
    *(inited + 40) = a4;
    *(inited + 48) = 1;

    v16 = sub_21EA513B0(inited);
    swift_setDeallocating();
    sub_21EA488A0(inited + 32, &qword_27CEDCF60);
    goto LABEL_6;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21EA65F04(1, a3, a4, isUniquelyReferenced_nonNull_native);
  v16 = v14;
LABEL_6:
  swift_beginAccess();

  v18 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v5 + v10);
  *(v5 + v10) = 0x8000000000000000;
  sub_21EA65BEC(v16, a1, a2, v18, &qword_27CEDCC68);

  *(v5 + v10) = v20;
  return swift_endAccess();
}

id sub_21EA616B0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = v5;
  sub_21EA5FB48(a1, a2, a3, a4);
  v12 = OBJC_IVAR___CCUIControlIntentStore_localIntentsCache;
  swift_beginAccess();
  v13 = *(v6 + v12);
  if (*(v13 + 16))
  {

    v14 = sub_21EA49DF4(a1, a2);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 8 * v14);

      if (*(v16 + 16))
      {
        v17 = sub_21EA49DF4(a3, a4);
        if (v18)
        {
          v19 = *(*(v16 + 56) + 8 * v17);

          return v19;
        }
      }
    }
  }

  v20 = sub_21EA6808C(a1, a2, a3, a4);
  if (v20)
  {
    v19 = v20;
    sub_21EA5FE30(v20, a1, a2, a3, a4);
  }

  else if (a5)
  {

    v19 = a5(v21);
    if (v19)
    {
      sub_21EA5FB48(a1, a2, a3, a4);
      sub_21EA5FE30(v19, a1, a2, a3, a4);
      sub_21EA67554(v19, a1, a2, a3, a4);
    }

    sub_21E9FFAF0(a5);
  }

  else
  {
    return 0;
  }

  return v19;
}

id sub_21EA6196C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (qword_28125B8A0 != -1)
  {
    swift_once();
  }

  v10 = sub_21EAA8790();
  __swift_project_value_buffer(v10, qword_28125B8A8);

  v11 = sub_21EAA8760();
  v12 = sub_21EAA9000();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v43[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_21E9FE748(a1, a2, v43);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_21E9FE748(a3, a4, v43);
    _os_log_impl(&dword_21E9F5000, v11, v12, "Acquiring persistence assertion for bundle identifier:%s data source identifier:%s.", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D68580](v14, -1, -1);
    MEMORY[0x223D68580](v13, -1, -1);
  }

  v15 = type metadata accessor for ControlIntentPersistenceAssertion();
  v16 = objc_allocWithZone(v15);
  swift_unknownObjectWeakInit();
  v17 = &v16[OBJC_IVAR___CCUIControlIntentPersistenceAssertion_bundleIdentifier];
  *v17 = a1;
  v17[1] = a2;
  v18 = &v16[OBJC_IVAR___CCUIControlIntentPersistenceAssertion_dataSourceIdentifier];
  *v18 = a3;
  v18[1] = a4;
  swift_unknownObjectWeakAssign();
  v44.receiver = v16;
  v44.super_class = v15;

  v19 = objc_msgSendSuper2(&v44, sel_init);
  v20 = OBJC_IVAR___CCUIControlIntentStore_intentPersistenceAssertions;
  swift_beginAccess();
  v21 = *(v5 + v20);
  if (!*(v21 + 16))
  {
    goto LABEL_13;
  }

  v22 = sub_21EA49DF4(a1, a2);
  if ((v23 & 1) == 0)
  {

LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF08);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21EAB6F50;
    *(inited + 32) = a3;
    *(inited + 40) = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF10);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_21EAB6F60;
    *(v31 + 32) = v19;
    *(inited + 48) = v31;

    v32 = v19;
    v33 = sub_21EA514AC(inited);
    swift_setDeallocating();
    sub_21EA488A0(inited + 32, &qword_27CEDCF18);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v5 + v20);
    *(v5 + v20) = 0x8000000000000000;
    sub_21EA65BEC(v33, a1, a2, isUniquelyReferenced_nonNull_native, &qword_27CEDCC70);

    *(v5 + v20) = v40;
    swift_endAccess();
    return v19;
  }

  v24 = *(*(v21 + 56) + 8 * v22);

  if (*(v24 + 16) && (v25 = sub_21EA49DF4(a3, a4), (v26 & 1) != 0))
  {
    v42 = *(*(v24 + 56) + 8 * v25);

    v27 = v19;
    MEMORY[0x223D66C60]();
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21EAA8EE0();
    }

    sub_21EAA8EF0();

    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_21EA65BEC(v42, a3, a4, v28, &qword_27CEDCC80);

    v29 = v24;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF10);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_21EAB6F60;
    *(v35 + 32) = v19;

    v36 = v19;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    sub_21EA65BEC(v35, a3, a4, v37, &qword_27CEDCC80);

    v29 = v24;
  }

  swift_beginAccess();

  v38 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *(v5 + v20);
  *(v5 + v20) = 0x8000000000000000;
  sub_21EA65BEC(v29, a1, a2, v38, &qword_27CEDCC70);

  *(v5 + v20) = v41;
  swift_endAccess();

  return v19;
}

uint64_t sub_21EA61F80(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  if (qword_28125B8A0 != -1)
  {
    swift_once();
  }

  v11 = sub_21EAA8790();
  __swift_project_value_buffer(v11, qword_28125B8A8);

  v12 = sub_21EAA8760();
  v13 = sub_21EAA9000();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = a4;
    v16 = swift_slowAlloc();
    v46[0] = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_21E9FE748(a2, a3, v46);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_21E9FE748(v15, a5, v46);
    _os_log_impl(&dword_21E9F5000, v12, v13, "Removing persistence assertion for bundle identifier:%s data source identifier:%s.", v14, 0x16u);
    swift_arrayDestroy();
    v17 = v16;
    a4 = v15;
    MEMORY[0x223D68580](v17, -1, -1);
    MEMORY[0x223D68580](v14, -1, -1);
  }

  v18 = OBJC_IVAR___CCUIControlIntentStore_intentPersistenceAssertions;
  result = swift_beginAccess();
  v20 = *(v6 + v18);
  if (*(v20 + 16))
  {

    v21 = a2;
    v22 = sub_21EA49DF4(a2, a3);
    if ((v23 & 1) == 0)
    {
    }

    v24 = *(*(v20 + 56) + 8 * v22);

    v47 = v24;
    if (!*(v24 + 16))
    {
    }

    v25 = sub_21EA49DF4(a4, a5);
    if ((v26 & 1) == 0)
    {
    }

    v40 = a4;
    v45 = *(*(v24 + 56) + 8 * v25);
    swift_bridgeObjectRetain_n();
    v27 = sub_21EA5F950(a1, v45);
    v29 = v28;

    if (v29)
    {
    }

    if (v45 >> 62)
    {
      v30 = v40;
      if (sub_21EAA9380())
      {
        goto LABEL_15;
      }
    }

    else
    {
      v30 = v40;
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_15:

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44[0] = v24;
        sub_21EA65BEC(v45, v30, a5, isUniquelyReferenced_nonNull_native, &qword_27CEDCC80);

        swift_beginAccess();

        v32 = swift_isUniquelyReferenced_nonNull_native();
        v42 = *(v6 + v18);
        *(v6 + v18) = 0x8000000000000000;
        sub_21EA65BEC(v24, v21, a3, v32, &qword_27CEDCC70);

        *(v6 + v18) = v42;
        swift_endAccess();
      }
    }

    sub_21EA62DDC(v30, a5, &qword_27CEDCC80);

    v33 = v47;
    if (*(v47 + 16))
    {
      swift_beginAccess();

      v34 = swift_isUniquelyReferenced_nonNull_native();
      v43 = *(v6 + v18);
      *(v6 + v18) = 0x8000000000000000;
      sub_21EA65BEC(v33, v21, a3, v34, &qword_27CEDCC70);

      *(v6 + v18) = v43;
      swift_endAccess();
    }

    else
    {
      swift_beginAccess();
      sub_21EA62DDC(v21, a3, &qword_27CEDCC70);
      swift_endAccess();
    }

    if (sub_21EA62688(v21, a3, v30, a5))
    {

      v35 = sub_21EAA8760();
      v36 = sub_21EAA9000();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v44[0] = v38;
        *v37 = 136315394;
        *(v37 + 4) = sub_21E9FE748(v21, a3, v44);
        *(v37 + 12) = 2080;
        *(v37 + 14) = sub_21E9FE748(v40, a5, v44);
        _os_log_impl(&dword_21E9F5000, v35, v36, "Performing deferred intent removal for bundle identifier:%s data source identifier:%s.", v37, 0x16u);
        swift_arrayDestroy();
        v39 = v38;
        v30 = v40;
        MEMORY[0x223D68580](v39, -1, -1);
        MEMORY[0x223D68580](v37, -1, -1);
      }

      sub_21EA5FB48(v21, a3, v30, a5);
      sub_21EA600EC(v21, a3, v30, a5);
    }
  }

  return result;
}

uint64_t sub_21EA6256C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_21EA6726C(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_21EA625FC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21EA672D0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_21EA62688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR___CCUIControlIntentStore_pendingRemovalState;
  swift_beginAccess();
  v10 = *(v4 + v9);
  if (!*(v10 + 16))
  {
    return 0;
  }

  v11 = sub_21EA49DF4(a1, a2);
  if (v12)
  {
    v13 = *(*(v10 + 56) + 8 * v11);

    if (*(v13 + 16) && (v14 = sub_21EA49DF4(a3, a4), (v15 & 1) != 0))
    {
      v16 = *(*(v13 + 56) + v14);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void sub_21EA62770()
{
  if (qword_28125B8A0 != -1)
  {
    swift_once();
  }

  v0 = sub_21EAA8790();
  __swift_project_value_buffer(v0, qword_28125B8A8);
  oslog = sub_21EAA8760();
  v1 = sub_21EAA9000();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_21E9F5000, oslog, v1, "Control intent store is synchronized.", v2, 2u);
    MEMORY[0x223D68580](v2, -1, -1);
  }
}

id ControlIntentStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ControlIntentStore.init()()
{
  v1 = OBJC_IVAR___CCUIControlIntentStore_localIntentsCache;
  v2 = MEMORY[0x277D84F90];
  *&v0[v1] = sub_21EA514C0(MEMORY[0x277D84F90]);
  v3 = OBJC_IVAR___CCUIControlIntentStore_intentPersistenceAssertions;
  *&v0[v3] = sub_21EA514D4(v2);
  v4 = OBJC_IVAR___CCUIControlIntentStore_pendingRemovalState;
  *&v0[v4] = sub_21EA514E8(v2);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ControlIntentStore();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_21EA62B1C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

char *sub_21EA62BB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCF50);
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

uint64_t sub_21EA62CAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21EA49DF4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 7;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21EA64C28();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + v6);
  sub_21EA64550(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_21EA62D44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21EA49DF4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 2;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21EA6506C();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + v6);
  sub_21EA64550(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_21EA62DDC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = v3;
  v6 = sub_21EA49DF4(a1, a2);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v13 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21EA65340(a3);
    v10 = v13;
  }

  v11 = *(*(v10 + 56) + 8 * v8);
  sub_21EA64700(v8, v10);
  *v5 = v10;
  return v11;
}

uint64_t sub_21EA62E8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21EA49DF4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21EA651D4();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_21EA64700(v6, v8);
  *v3 = v8;
  return v9;
}

double sub_21EA62F24@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_21EA49DF4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21EA654A0();
      v10 = v12;
    }

    sub_21EA51D48((*(v10 + 56) + 32 * v8), a3);
    sub_21EA648B0(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_21EA62FC8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEDCC20);
  v34 = a2;
  result = sub_21EAA94D0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_21EAA95B0();
      sub_21EAA8E40();
      result = sub_21EAA95D0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}