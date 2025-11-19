uint64_t sub_24DD58A28()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24DD58AA8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24DD58AE4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24DD58B2C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24DD58B6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_24DD5C0B8();
  *a2 = result;
  return result;
}

uint64_t sub_24DD58BA0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24DD58BE8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24DD58C30()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24DD58C90()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24DD58CCC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B1E80, &qword_24DD6AAD8);
  OUTLINED_FUNCTION_13(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24DD58D54()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24DD58E64()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  OUTLINED_FUNCTION_50();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_24DD58EB4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 72);

  OUTLINED_FUNCTION_45();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_24DD58F00()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_24DD58F4C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_24DD6688C(*(v0 + 48), *(v0 + 56));
  v2 = *(v0 + 72);

  OUTLINED_FUNCTION_45();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_24DD58FA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_48();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_24DD58FE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_24DD60B50();
  *a2 = result;
  return result;
}

uint64_t sub_24DD59014@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_24DD60C04();
  *a2 = result;
  return result;
}

uint64_t sub_24DD59044@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_24DD60CB8();
  *a2 = result;
  return result;
}

uint64_t sub_24DD5925C()
{
  result = sub_24DD5927C();
  qword_27F1B1CB8 = result;
  return result;
}

uint64_t sub_24DD5927C()
{
  v0 = sub_24DD69AB8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[0] = 0xD000000000000032;
  v7[1] = 0x800000024DD6B3D0;
  sub_24DD69AA8();
  sub_24DD5AE34();
  v5 = sub_24DD69BF8();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t static GameOverlayDashboardVisibilityMonitor.notificationName.getter()
{
  if (qword_27F1B1CB0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }
}

GameCenterOverlayService::GameOverlayDashboardVisibilityMonitor::State_optional __swiftcall GameOverlayDashboardVisibilityMonitor.State.init(rawValue:)(Swift::UInt64 rawValue)
{
  if (rawValue)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24DD59404(unsigned __int8 a1, char a2)
{
  v2 = 0xEF796C6E4F746E69;
  v3 = 0x6F50737365636361;
  v4 = a1;
  v5 = 0x6F50737365636361;
  v6 = 0xEF796C6E4F746E69;
  switch(v4)
  {
    case 1:
      goto LABEL_8;
    case 2:
      v6 = 0x800000024DD6B140;
      v5 = 0xD00000000000001BLL;
      goto LABEL_8;
    case 3:
      v7 = "welcomeBannerAndAccessPoint";
      goto LABEL_6;
    case 4:
      v7 = "achievementBanner";
      goto LABEL_6;
    case 5:
      v5 = 0x6142656D61476E69;
      v6 = 0xEC00000072656E6ELL;
      goto LABEL_8;
    default:
      v7 = "tomTrailing";
LABEL_6:
      v6 = v7 | 0x8000000000000000;
      v5 = 0xD000000000000011;
LABEL_8:
      switch(a2)
      {
        case 1:
          goto LABEL_15;
        case 2:
          v2 = 0x800000024DD6B140;
          v3 = 0xD00000000000001BLL;
          goto LABEL_15;
        case 3:
          v8 = "welcomeBannerAndAccessPoint";
          goto LABEL_13;
        case 4:
          v8 = "achievementBanner";
          goto LABEL_13;
        case 5:
          v3 = 0x6142656D61476E69;
          v2 = 0xEC00000072656E6ELL;
          goto LABEL_15;
        default:
          v8 = "tomTrailing";
LABEL_13:
          v2 = v8 | 0x8000000000000000;
          v3 = 0xD000000000000011;
LABEL_15:
          if (v5 == v3 && v6 == v2)
          {
            v10 = 1;
          }

          else
          {
            v10 = sub_24DD69CB8();
          }

          return v10 & 1;
      }
  }
}

uint64_t sub_24DD5959C(unsigned __int8 a1, char a2)
{
  v2 = 0xEA0000000000676ELL;
  v3 = 0x696461654C706F74;
  v4 = a1;
  v5 = 0x696461654C706F74;
  v6 = 0xEA0000000000676ELL;
  switch(v4)
  {
    case 1:
      v5 = 0x6C69617254706F74;
      v7 = 6778473;
      goto LABEL_4;
    case 2:
      v5 = 0x654C6D6F74746F62;
      v6 = 0xED0000676E696461;
      break;
    case 3:
      v5 = 0x72546D6F74746F62;
      v6 = 0xEE00676E696C6961;
      break;
    case 4:
      v5 = 0x65746E6543706F74;
      v7 = 6579570;
LABEL_4:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6C69617254706F74;
      v8 = 6778473;
      goto LABEL_10;
    case 2:
      v3 = 0x654C6D6F74746F62;
      v2 = 0xED0000676E696461;
      break;
    case 3:
      v3 = 0x72546D6F74746F62;
      v2 = 0xEE00676E696C6961;
      break;
    case 4:
      v3 = 0x65746E6543706F74;
      v8 = 6579570;
LABEL_10:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_24DD69CB8();
  }

  return v10 & 1;
}

uint64_t sub_24DD59768(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000024;
  v3 = "erlayUI.dashboard-service";
  v4 = "erlayUI.dashboard-service";
  v5 = a1;
  v6 = 0xD000000000000024;
  switch(v5)
  {
    case 1:
      v4 = "erlayUI.multiplayer-service";
      v6 = 0xD000000000000029;
      break;
    case 2:
      v4 = "erlayUI.internal-service";
      v6 = 0xD00000000000002BLL;
      break;
    case 3:
      v4 = "ifiedState";
      v6 = 0xD000000000000028;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "erlayUI.multiplayer-service";
      v2 = 0xD000000000000029;
      break;
    case 2:
      v3 = "erlayUI.internal-service";
      v2 = 0xD00000000000002BLL;
      break;
    case 3:
      v3 = "ifiedState";
      v2 = 0xD000000000000028;
      break;
    default:
      break;
  }

  if (v6 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DD69CB8();
  }

  return v8 & 1;
}

uint64_t sub_24DD59890(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6465646465626D65;
  }

  else
  {
    v3 = 0x657263536C6C7566;
  }

  if (v2)
  {
    v4 = 0xEA00000000006E65;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x6465646465626D65;
  }

  else
  {
    v5 = 0x657263536C6C7566;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEA00000000006E65;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24DD69CB8();
  }

  return v8 & 1;
}

uint64_t sub_24DD59964@<X0>(uint64_t *a1@<X8>)
{
  result = GameOverlayDashboardVisibilityMonitor.State.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t GameOverlayDashboardVisibilityMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  GameOverlayDashboardVisibilityMonitor.init()();
  return v0;
}

uint64_t GameOverlayDashboardVisibilityMonitor.init()()
{
  v9 = sub_24DD69BC8();
  v1 = *(v9 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2();
  v5 = v4 - v3;
  v6 = *(*(sub_24DD69BB8() - 8) + 64);
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2();
  v7 = *(*(sub_24DD69A68() - 8) + 64);
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2();
  *(v0 + 16) = -1;
  *(v0 + 24) = 0;
  sub_24DD5ABB0(0, &qword_28151C5C0, 0x277D85C78);
  sub_24DD69A58();
  sub_24DD59BD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1CC0, &qword_24DD6A700);
  sub_24DD59C74();
  sub_24DD69C18();
  (*(v1 + 104))(v5, *MEMORY[0x277D85260], v9);
  *(v0 + 32) = sub_24DD69BD8();
  *(v0 + 40) = 0;
  return v0;
}

unint64_t sub_24DD59BD4()
{
  result = qword_28151C5C8;
  if (!qword_28151C5C8)
  {
    sub_24DD69BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28151C5C8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_24DD59C74()
{
  result = qword_28151C5E8;
  if (!qword_28151C5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B1CC0, &qword_24DD6A700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28151C5E8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t GameOverlayDashboardVisibilityMonitor.deinit()
{
  sub_24DD59F48();

  return v0;
}

uint64_t GameOverlayDashboardVisibilityMonitor.__deallocating_deinit()
{
  GameOverlayDashboardVisibilityMonitor.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

BOOL sub_24DD59D80(uint64_t a1, uint64_t a2)
{
  if (qword_27F1B1CB0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v5 = qword_27F1B1CB8;
  v6 = *(v2 + 32);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v2;
  v11[4] = sub_24DD59F9C;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24DD59EF4;
  v11[3] = &block_descriptor;
  v8 = _Block_copy(v11);

  if (v5)
  {
    v9 = (v5 + 32);
  }

  else
  {
    v9 = 0;
  }

  swift_beginAccess();

  notify_register_dispatch(v9, (v2 + 16), v6, v8);
  swift_endAccess();
  _Block_release(v8);

  sub_24DD59FF4(a1, a2);
  return sub_24DD5A84C();
}

uint64_t sub_24DD59EF4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_24DD59F48()
{
  [*(v0 + 40) invalidate];
  swift_beginAccess();
  result = notify_is_valid_token(*(v0 + 16));
  if (result)
  {
    return notify_cancel(*(v0 + 16));
  }

  return result;
}

uint64_t sub_24DD59F9C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = sub_24DD5A84C();
  return v2(v4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24DD59FF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  sub_24DD5ABB0(0, &qword_27F1B1CD0, 0x277D46F80);
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v6;
  v7 = sub_24DD5A584(sub_24DD5AB74, v14);
  v8 = v3[5];
  v3[5] = v7;
  v9 = v7;

  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_24DD5AB80;
    *(v11 + 24) = v10;
    aBlock[4] = sub_24DD5AB88;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24DD5A6B4;
    aBlock[3] = &block_descriptor_29;
    v12 = _Block_copy(aBlock);

    [v9 updateConfiguration_];

    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_24DD5A1D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x277D46FB0]) init];
  [v8 setValues_];
  [a1 setStateDescriptor_];
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v11[4] = sub_24DD5AD80;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_24DD5A4E4;
  v11[3] = &block_descriptor_42;
  v10 = _Block_copy(v11);

  [a1 setUpdateHandler_];
  _Block_release(v10);
}

void sub_24DD5A30C(int a1, int a2, id a3, void (*a4)(void))
{
  v6 = [a3 process];
  v7 = [v6 bundle];

  if (v7)
  {
    v8 = sub_24DD5AD8C(v7);
    if (v9)
    {
      if (v8 == 0xD000000000000017 && 0x800000024DD6B0B0 == v9)
      {
      }

      else
      {
        v11 = sub_24DD69CB8();

        if ((v11 & 1) == 0)
        {
          return;
        }
      }

      v12 = [a3 state];
      if (!v12 || (v13 = v12, v14 = [v12 isRunning], v13, (v14 & 1) == 0))
      {
        if (qword_28151C750 != -1)
        {
          swift_once();
        }

        v15 = sub_24DD69A38();
        __swift_project_value_buffer(v15, qword_28151C870);
        v16 = sub_24DD69A18();
        v17 = sub_24DD69B88();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_24DD57000, v16, v17, "No active overlay process found. Overlay dashboard is presumed to be hidden.", v18, 2u);
          MEMORY[0x253039130](v18, -1, -1);
        }

        a4(0);
      }
    }
  }
}

void sub_24DD5A4E4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, v9, v10);
}

uint64_t sub_24DD5A584(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v9[4] = sub_24DD5AEA0;
  v9[5] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24DD5A6B4;
  v9[3] = &block_descriptor_36;
  v5 = _Block_copy(v9);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v7 = [ObjCClassFromMetadata monitorWithConfiguration_];
  _Block_release(v5);

  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_24DD5A6B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

void sub_24DD5A708(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1D38, &qword_24DD6A840);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24DD6A6F0;
  sub_24DD5ABB0(0, &qword_27F1B1D40, 0x277D46FA0);
  sub_24DD5ABF0(&unk_2860F7030);
  *(v2 + 32) = sub_24DD5A7D8();
  v3 = sub_24DD69B08();

  [a1 setPredicates_];
}

id sub_24DD5A7D8()
{
  v0 = sub_24DD69B68();

  v1 = [swift_getObjCClassFromMetadata() predicateMatchingBundleIdentifiers_];

  return v1;
}

BOOL sub_24DD5A84C()
{
  swift_beginAccess();
  if (notify_is_valid_token(*(v0 + 16)))
  {
    v1 = *(v0 + 16);
    swift_beginAccess();
    notify_get_state(v1, (v0 + 24));
    swift_endAccess();
  }

  swift_beginAccess();
  return *(v0 + 24) == 1;
}

unint64_t sub_24DD5A8E0()
{
  result = qword_27F1B1CC8;
  if (!qword_27F1B1CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B1CC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GameOverlayDashboardVisibilityMonitor.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for GameOverlayDashboardVisibilityMonitor.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_24DD5AB88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_24DD5ABB0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_24DD5ABF0(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1D48, &qword_24DD6A848);
  result = sub_24DD69C28();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    sub_24DD69CD8();

    sub_24DD69AD8();
    result = sub_24DD69CF8();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (sub_24DD69CB8() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_24DD5AD80(int a1, int a2, void *a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  sub_24DD5A30C(a1, a2, a3, *(v3 + 16));
}

uint64_t sub_24DD5AD8C(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_24DD69A98();

  return v3;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_24DD5AE34()
{
  result = qword_27F1B1D50;
  if (!qword_27F1B1D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B1D50);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0()
{

  return swift_once();
}

uint64_t sub_24DD5AEDC(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 80) = a1;
  return MEMORY[0x2822009F8](sub_24DD5AF00, 0, 0);
}

uint64_t sub_24DD5AF00()
{
  OUTLINED_FUNCTION_7();
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC24GameCenterOverlayService11ClientProxy_helper);
  *(v0 + 64) = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_24DD5B0B0;
    v3 = *(v0 + 80);

    return sub_24DD5F954();
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_24DD5BC74(v0 + 16, &qword_27F1B1E00, &unk_24DD6A8D0);
    if (qword_28151C750 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v5 = sub_24DD69A38();
    __swift_project_value_buffer(v5, qword_28151C870);
    v6 = sub_24DD69A18();
    v7 = sub_24DD69B98();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      OUTLINED_FUNCTION_8(&dword_24DD57000, v9, v10, "Failed to create GameOverlayUI Multiplayer Remote Proxy");
      MEMORY[0x253039130](v8, -1, -1);
    }

    v11 = *(v0 + 8);

    return v11(0);
  }
}

uint64_t sub_24DD5B0B0()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 72);
  v3 = *(v1 + 64);
  v4 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;

  return MEMORY[0x2822009F8](sub_24DD5B1B8, 0, 0);
}

uint64_t sub_24DD5B1B8()
{
  OUTLINED_FUNCTION_7();
  if (v0[5])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1D60, &qword_24DD6A8E0);
    if (swift_dynamicCast())
    {
      v1 = v0[6];
      goto LABEL_10;
    }
  }

  else
  {
    sub_24DD5BC74((v0 + 2), &qword_27F1B1E00, &unk_24DD6A8D0);
  }

  if (qword_28151C750 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v2 = sub_24DD69A38();
  __swift_project_value_buffer(v2, qword_28151C870);
  v3 = sub_24DD69A18();
  v4 = sub_24DD69B98();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    OUTLINED_FUNCTION_8(&dword_24DD57000, v6, v7, "Failed to create GameOverlayUI Multiplayer Remote Proxy");
    MEMORY[0x253039130](v5, -1, -1);
  }

  v1 = 0;
LABEL_10:
  v8 = v0[1];

  return v8(v1);
}

uint64_t sub_24DD5B30C(uint64_t a1, uint64_t a2)
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1D58, &qword_24DD6A860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v12 - v6;
  v8 = sub_24DD69B48();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  v10 = v2;
  sub_24DD5B7F4(0, 0, v7, &unk_24DD6A870, v9);
}

uint64_t sub_24DD5B430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_24DD5B4C8;

  return sub_24DD5AEDC(0);
}

uint64_t sub_24DD5B4C8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v2 = v1;
  v3 = *(v1 + 32);
  v6 = *v0;
  *(v2 + 40) = v4;

  return MEMORY[0x2822009F8](sub_24DD5B5C0, 0, 0);
}

uint64_t sub_24DD5B5C0()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[5];
  if (v1)
  {
    if (v0[3])
    {
      v2 = v0[2];
      v3 = sub_24DD69A88();
    }

    else
    {
      v3 = 0;
    }

    [v1 showMultiplayerUIWithSceneIdentifier_];

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_6();

  return v4();
}

uint64_t sub_24DD5B654(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4(v8);
  *v9 = v10;
  v9[1] = sub_24DD5B714;

  return sub_24DD5B430(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_24DD5B714()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  OUTLINED_FUNCTION_6();

  return v5();
}

uint64_t sub_24DD5B7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1D58, &qword_24DD6A860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v25 - v10;
  sub_24DD5BBDC(a3, v25 - v10);
  v12 = sub_24DD69B48();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_24DD5BC74(v11, &qword_27F1B1D58, &qword_24DD6A860);
  }

  else
  {
    sub_24DD69B38();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24DD69B18();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24DD69AC8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_24DD5BC74(a3, &qword_27F1B1D58, &qword_24DD6A860);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24DD5BC74(a3, &qword_27F1B1D58, &qword_24DD6A860);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

char *MultiplayerClientProxy.__allocating_init(serviceKind:)(char *a1)
{
  v3 = objc_allocWithZone(v1);
  v5 = *a1;
  return ClientProxy.init(serviceKind:)(&v5);
}

id MultiplayerClientProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiplayerClientProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24DD5BBDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1D58, &qword_24DD6A860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DD5BC74(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24DD5BCD4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24DD5BDCC;

  return v7(a1);
}

uint64_t sub_24DD5BDCC()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  OUTLINED_FUNCTION_6();

  return v5();
}

uint64_t sub_24DD5BEB0()
{
  OUTLINED_FUNCTION_7();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_0(v4);

  return v7(v6);
}

uint64_t sub_24DD5BF44()
{
  OUTLINED_FUNCTION_7();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_0(v4);

  return v7(v6);
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_6()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_24DD5C08C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_unknownObjectRetain();
  return sub_24DD5C100();
}

uint64_t sub_24DD5C100()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24DD5C160(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC24GameCenterOverlayService25AuthenticationClientProxy_delegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_24DD5C1E4;
}

void sub_24DD5C1E4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
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

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_24DD5C298()
{
  *(v1 + 56) = v0;
  v2 = OUTLINED_FUNCTION_3_0();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_24DD5C2C0()
{
  OUTLINED_FUNCTION_7();
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC24GameCenterOverlayService11ClientProxy_helper);
  *(v0 + 64) = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_24DD5C460;

    return sub_24DD5F954();
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_24DD5D1CC(v0 + 16);
    if (qword_28151C750 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v4 = sub_24DD69A38();
    __swift_project_value_buffer(v4, qword_28151C870);
    v5 = sub_24DD69A18();
    v6 = sub_24DD69B98();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      OUTLINED_FUNCTION_8(&dword_24DD57000, v8, v9, "Failed to create GameOverlayUI Authentication Remote Proxy");
      MEMORY[0x253039130](v7, -1, -1);
    }

    v10 = *(v0 + 8);

    return v10(0);
  }
}

uint64_t sub_24DD5C460()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 72);
  v3 = *(v1 + 64);
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_3_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_24DD5C564()
{
  OUTLINED_FUNCTION_7();
  if (v0[5])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B1D70, &qword_24DD6A9A0);
    if (swift_dynamicCast())
    {
      v1 = v0[6];
      goto LABEL_10;
    }
  }

  else
  {
    sub_24DD5D1CC((v0 + 2));
  }

  if (qword_28151C750 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v2 = sub_24DD69A38();
  __swift_project_value_buffer(v2, qword_28151C870);
  v3 = sub_24DD69A18();
  v4 = sub_24DD69B98();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    OUTLINED_FUNCTION_8(&dword_24DD57000, v6, v7, "Failed to create GameOverlayUI Authentication Remote Proxy");
    MEMORY[0x253039130](v5, -1, -1);
  }

  v1 = 0;
LABEL_10:
  v8 = v0[1];

  return v8(v1);
}

uint64_t sub_24DD5C6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a5;
  v8[3] = a6;
  v9 = swift_task_alloc();
  v8[6] = v9;
  *v9 = v8;
  v9[1] = sub_24DD5C760;

  return sub_24DD5C298();
}

uint64_t sub_24DD5C760()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;
  v4 = *(v3 + 48);
  *v2 = *v0;
  *(v1 + 56) = v5;

  v6 = OUTLINED_FUNCTION_3_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_24DD5C84C()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[7];
  if (v1)
  {
    v2 = v0[5];
    v3 = v0[2];
    v4 = v0[3];
    v5 = sub_24DD69A88();
    if (v2)
    {
      v6 = v0[4];
      v7 = v0[5];
      v2 = sub_24DD69A88();
    }

    [v1 presentOnboardingFlowWithGameBundleID:v5 sceneIdentifier:v2];

    swift_unknownObjectRelease();
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_24DD5C8F8()
{
  OUTLINED_FUNCTION_2_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_0_1(v1);

  return sub_24DD5C6C8(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_24DD5C9A0()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_24DD5CAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1D58, &qword_24DD6A860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v19 - v13;
  v15 = sub_24DD69B48();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v6;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = a3;
  v16[8] = a4;

  v17 = v6;

  sub_24DD5B7F4(0, 0, v14, a6, v16);
}

uint64_t sub_24DD5CBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a5;
  v8[3] = a6;
  v9 = swift_task_alloc();
  v8[6] = v9;
  *v9 = v8;
  v9[1] = sub_24DD5CC4C;

  return sub_24DD5C298();
}

uint64_t sub_24DD5CC4C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;
  v4 = *(v3 + 48);
  *v2 = *v0;
  *(v1 + 56) = v5;

  v6 = OUTLINED_FUNCTION_3_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_24DD5CD38()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[7];
  if (v1)
  {
    v2 = v0[5];
    v3 = v0[2];
    v4 = v0[3];
    v5 = sub_24DD69A88();
    if (v2)
    {
      v6 = v0[4];
      v7 = v0[5];
      v2 = sub_24DD69A88();
    }

    [v1 presentActivitySharingRepromptWithRecipientName:v5 sceneIdentifier:v2];

    swift_unknownObjectRelease();
  }

  v8 = v0[1];

  return v8();
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24DD5CE34()
{
  OUTLINED_FUNCTION_2_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_0_1(v1);

  return sub_24DD5CBB4(v2, v3, v4, v5, v6, v7, v8, v9);
}

char *AuthenticationClientProxy.init(serviceKind:)(char *a1)
{
  v1 = *a1;
  swift_unknownObjectWeakInit();
  v3 = v1;
  return ClientProxy.init(serviceKind:)(&v3);
}

id AuthenticationClientProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AuthenticationClientProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall AuthenticationClientProxy.didFinishOnboarding(error:)(NSError_optional *error)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didFinishOnboardingWithError_];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_24DD5D1CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1E00, &unk_24DD6A8D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_2_1()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
}

char *ClientProxy.init(serviceKind:)(char *a1)
{
  v2 = *a1;
  *&v1[OBJC_IVAR____TtC24GameCenterOverlayService11ClientProxy_helper] = 0;
  v3 = &v1[OBJC_IVAR____TtC24GameCenterOverlayService11ClientProxy_invalidationHandler];
  *v3 = 0;
  v3[1] = 0;
  v1[OBJC_IVAR____TtC24GameCenterOverlayService11ClientProxy_kind] = v2;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ClientProxy();
  v4 = objc_msgSendSuper2(&v9, sel_init);
  type metadata accessor for ClientProxy.ConnectionHelper();
  v5 = swift_allocObject();
  v6 = v4;
  sub_24DD5D7C0(v6);
  v7 = *&v6[OBJC_IVAR____TtC24GameCenterOverlayService11ClientProxy_helper];
  *&v6[OBJC_IVAR____TtC24GameCenterOverlayService11ClientProxy_helper] = v5;

  return v6;
}

uint64_t sub_24DD5D394()
{
  v1 = (v0 + OBJC_IVAR____TtC24GameCenterOverlayService11ClientProxy_invalidationHandler);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_24DD58BA0(v3);
  return v3;
}

uint64_t sub_24DD5D3F0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC24GameCenterOverlayService11ClientProxy_invalidationHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_24DD5D810(v6);
}

void *sub_24DD5D528()
{
  type metadata accessor for GameOverlayUIConfig.SharedResources();
  swift_allocObject();
  result = GameOverlayUIConfig.SharedResources.init()();
  qword_28151C868 = result;
  return result;
}

uint64_t sub_24DD5D568@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = sub_24DD5D394();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_24DD60408;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_24DD5D5D8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24DD603E0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_24DD58BA0(v3);
  return sub_24DD5D3F0(v6, v5);
}

id sub_24DD5D668()
{
  v0 = sub_24DD69A88();

  v1 = sub_24DD69A88();

  v2 = [swift_getObjCClassFromMetadata() attributeWithDomain:v0 name:v1];

  return v2;
}

void sub_24DD5D6FC()
{
  *(v0 + OBJC_IVAR____TtC24GameCenterOverlayService11ClientProxy_helper) = 0;
  v1 = (v0 + OBJC_IVAR____TtC24GameCenterOverlayService11ClientProxy_invalidationHandler);
  *v1 = 0;
  v1[1] = 0;
  sub_24DD69C78();
  __break(1u);
}

uint64_t sub_24DD5D7C0(void *a1)
{
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  swift_unknownObjectWeakAssign();

  return v1;
}

uint64_t sub_24DD5D810(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24DD5D820()
{
  OUTLINED_FUNCTION_3();
  *(v1 + 48) = v0;
  *(v1 + 104) = v2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1D58, &qword_24DD6A860) - 8) + 64) + 15;
  *(v1 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DD5D8BC, v0, 0);
}

uint64_t sub_24DD5D8BC()
{
  v1 = *(v0 + 48);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (!Strong)
  {
    if (qword_28151C750 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v7 = sub_24DD69A38();
    __swift_project_value_buffer(v7, qword_28151C870);
    v8 = sub_24DD69A18();
    v9 = sub_24DD69B98();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24DD57000, v8, v9, "Connection helper unexpectedly has a nil client proxy", v10, 2u);
      OUTLINED_FUNCTION_8_0();
    }

    goto LABEL_11;
  }

  v3 = Strong;
  v4 = *(v0 + 48);
  v5 = *(v4 + 120);
  if (v5 && *(v4 + 136) == 1)
  {
    v6 = v5;
    if ([v6 remoteTarget])
    {
      sub_24DD69C08();

      swift_unknownObjectRelease();
      sub_24DD6003C(v0 + 16, &qword_27F1B1E00, &unk_24DD6A8D0);
LABEL_11:
      v11 = *(v0 + 56);

      OUTLINED_FUNCTION_6();

      return v12();
    }

    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_24DD6003C(v0 + 16, &qword_27F1B1E00, &unk_24DD6A8D0);
  }

  if (qword_28151C750 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v14 = *(v0 + 48);
  v15 = sub_24DD69A38();
  __swift_project_value_buffer(v15, qword_28151C870);

  v16 = sub_24DD69A18();
  v17 = sub_24DD69B88();
  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 48);
  if (v18)
  {
    v20 = OUTLINED_FUNCTION_16();
    *v20 = 67109120;
    *(v20 + 4) = *(v4 + 120) == 0;

    _os_log_impl(&dword_24DD57000, v16, v17, "Connection helper start setting up connection. is connection nil %{BOOL}d", v20, 8u);
    OUTLINED_FUNCTION_8_0();
  }

  else
  {
    v21 = *(v0 + 48);
  }

  v22 = *(v0 + 48);
  [*(v4 + 120) invalidate];
  v23 = *(v4 + 120);
  *(v4 + 120) = 0;

  v24 = *(v22 + 128);
  *(v0 + 72) = v24;
  if (v24)
  {
    v25 = *(MEMORY[0x277D857C8] + 4);

    v26 = swift_task_alloc();
    *(v0 + 80) = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1DF8, &unk_24DD6AA80);
    *v26 = v0;
    v28 = sub_24DD5DD2C;
  }

  else
  {
    v30 = *(v0 + 48);
    v29 = *(v0 + 56);
    v31 = *(v0 + 104);
    v32 = sub_24DD69B48();
    __swift_storeEnumTagSinglePayload(v29, 1, 1, v32);
    v33 = sub_24DD5FEE4();
    v34 = swift_allocObject();
    *(v34 + 16) = v30;
    *(v34 + 24) = v33;
    *(v34 + 32) = v31;
    *(v34 + 40) = v3;
    *(v34 + 48) = v30;
    swift_retain_n();
    v35 = v3;
    v24 = sub_24DD5F634(0, 0, v29, &unk_24DD6AA78, v34);
    *(v0 + 88) = v24;
    v36 = *(v22 + 128);
    *(v22 + 128) = v24;

    v37 = *(MEMORY[0x277D857C8] + 4);
    v26 = swift_task_alloc();
    *(v0 + 96) = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1DF8, &unk_24DD6AA80);
    *v26 = v0;
    v28 = sub_24DD5DED0;
  }

  v26[1] = v28;
  v38 = MEMORY[0x277D84950];
  v39 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v27, v24, v39, v27, v38);
}

uint64_t sub_24DD5DD2C()
{
  OUTLINED_FUNCTION_7();
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;

  v6 = *(v2 + 48);
  if (v0)
  {

    v7 = sub_24DD604B8;
  }

  else
  {
    v7 = sub_24DD5DE58;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24DD5DE58()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);

  v3 = *(v2 + 128);
  *(v2 + 128) = 0;

  v4 = *(v0 + 56);

  OUTLINED_FUNCTION_6();

  return v5();
}

uint64_t sub_24DD5DED0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = *(v2 + 96);
  v5 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v3 + 88);
    v8 = *(v3 + 48);

    v9 = sub_24DD5E078;
    v10 = v8;
  }

  else
  {
    v10 = *(v3 + 48);
    v9 = sub_24DD5E000;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

uint64_t sub_24DD5E000()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 88);

  v2 = *(v0 + 48);

  v3 = *(v2 + 128);
  *(v2 + 128) = 0;

  v4 = *(v0 + 56);

  OUTLINED_FUNCTION_6();

  return v5();
}

uint64_t sub_24DD5E078()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 48);

  v2 = *(v1 + 128);
  *(v1 + 128) = 0;

  v3 = *(v0 + 56);

  OUTLINED_FUNCTION_6();

  return v4();
}

uint64_t sub_24DD5E0E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 72) = a5;
  *(v6 + 80) = a6;
  *(v6 + 154) = a4;
  return MEMORY[0x2822009F8](sub_24DD5E10C, a6, 0);
}

uint64_t sub_24DD5E10C()
{
  if (*(v0 + 154) != 1)
  {
    goto LABEL_13;
  }

  v1 = 0xD000000000000024;
  v2 = "erlayUI.dashboard-service";
  switch(*(*(v0 + 72) + OBJC_IVAR____TtC24GameCenterOverlayService11ClientProxy_kind))
  {
    case 1:
      v2 = "erlayUI.multiplayer-service";
      v1 = 0xD000000000000029;
      break;
    case 2:
      v2 = "erlayUI.internal-service";
      v1 = 0xD00000000000002BLL;
      break;
    case 3:
      v2 = "ifiedState";
      v1 = 0xD000000000000028;
      break;
    default:
      break;
  }

  sub_24DD5ABB0(0, &qword_27F1B1E78, 0x277CF3288);
  v3 = sub_24DD5EBFC(0xD000000000000017, 0x800000024DD6B0B0, v1, v2 | 0x8000000000000000, 0, 0);
  if (v3)
  {
    v4 = v3;
    *(v0 + 104) = v3;
    v5 = [objc_opt_self() connectionWithEndpoint_];
    *(v0 + 112) = v5;
    if (v5)
    {
      if (qword_28151C748 != -1)
      {
        OUTLINED_FUNCTION_6_0();
      }

      v6 = OUTLINED_FUNCTION_3_1(qword_28151C868, *(v0 + 72));

      return MEMORY[0x2822009F8](v6, v7, v8);
    }

    else
    {
      if (qword_28151C750 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v16 = sub_24DD69A38();
      __swift_project_value_buffer(v16, qword_28151C870);
      v17 = v4;
      v18 = sub_24DD69A18();
      v19 = sub_24DD69B98();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = OUTLINED_FUNCTION_15();
        v21 = OUTLINED_FUNCTION_16();
        *v20 = 138412290;
        *(v20 + 4) = v17;
        *v21 = v4;
        v22 = v17;
        OUTLINED_FUNCTION_14(&dword_24DD57000, v23, v24, "Could not create connection with endpoint: %@");
        sub_24DD6003C(v21, &qword_27F1B1E10, &unk_24DD6AA98);
        OUTLINED_FUNCTION_8_0();
        OUTLINED_FUNCTION_8_0();
      }

      else
      {
        v22 = v18;
        v18 = v17;
      }

      OUTLINED_FUNCTION_6();

      return v25();
    }
  }

  else
  {
LABEL_13:
    v10 = *(v0 + 72);
    v9 = *(v0 + 80);
    v11 = sub_24DD5FEE4();
    v12 = swift_task_alloc();
    *(v0 + 88) = v12;
    *(v12 + 16) = v10;
    v13 = *(MEMORY[0x277D859E0] + 4);
    v14 = swift_task_alloc();
    *(v0 + 96) = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1E08, &qword_24DD6AA90);
    *v14 = v0;
    v14[1] = sub_24DD5E4A4;

    return MEMORY[0x2822007B8](v0 + 64, v9, v11, 0xD00000000000002FLL, 0x800000024DD6BB60, sub_24DD5FFE8, v12, v15);
  }
}

uint64_t sub_24DD5E4A4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v2 = v1[12];
  v3 = v1[11];
  v4 = v1[10];
  v5 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24DD5E5B8()
{
  v30 = v0;
  v1 = v0[8];
  if (!v1)
  {
    if (qword_28151C750 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v6 = v0[9];
    v7 = sub_24DD69A38();
    __swift_project_value_buffer(v7, qword_28151C870);
    v8 = v6;
    v9 = sub_24DD69A18();
    v10 = sub_24DD69B98();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = 0xD000000000000024;
      v12 = v0[9];
      v13 = OUTLINED_FUNCTION_15();
      v14 = swift_slowAlloc();
      v29 = v14;
      *v13 = 136315138;
      v15 = *(v12 + OBJC_IVAR____TtC24GameCenterOverlayService11ClientProxy_kind);
      v16 = "erlayUI.dashboard-service";
      v17 = v14;
      switch(v15)
      {
        case 1:
          v16 = "erlayUI.multiplayer-service";
          v11 = 0xD000000000000029;
          break;
        case 2:
          v16 = "erlayUI.internal-service";
          v11 = 0xD00000000000002BLL;
          break;
        case 3:
          v16 = "ifiedState";
          v11 = 0xD000000000000028;
          break;
        default:
          break;
      }

      v26 = sub_24DD66108(v11, v16 | 0x8000000000000000, &v29);

      *(v13 + 4) = v26;
      _os_log_impl(&dword_24DD57000, v9, v10, "Could not create endpoint for service name: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_8_0();
    }

    goto LABEL_21;
  }

  v0[13] = v1;
  v2 = [objc_opt_self() connectionWithEndpoint_];
  v0[14] = v2;
  if (v2)
  {
    if (qword_28151C748 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v3 = OUTLINED_FUNCTION_3_1(qword_28151C868, v0[9]);

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  if (qword_28151C750 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v18 = sub_24DD69A38();
  __swift_project_value_buffer(v18, qword_28151C870);
  v19 = v1;
  v9 = sub_24DD69A18();
  v20 = sub_24DD69B98();

  if (os_log_type_enabled(v9, v20))
  {
    v21 = OUTLINED_FUNCTION_15();
    v22 = OUTLINED_FUNCTION_16();
    *v21 = 138412290;
    *(v21 + 4) = v19;
    *v22 = v1;
    v23 = v19;
    OUTLINED_FUNCTION_14(&dword_24DD57000, v24, v25, "Could not create connection with endpoint: %@");
    sub_24DD6003C(v22, &qword_27F1B1E10, &unk_24DD6AA98);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_8_0();

LABEL_21:
    goto LABEL_22;
  }

LABEL_22:
  OUTLINED_FUNCTION_6();

  return v27();
}

uint64_t sub_24DD5E910()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 120);
  v2 = *(v0 + 80);
  *(v0 + 136) = sub_24DD68850((v0 + 152));
  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24DD5E978()
{
  v1 = *(v0 + 120);
  *(v0 + 153) = *(*(v0 + 72) + *(v0 + 128));
  return MEMORY[0x2822009F8](sub_24DD5E9A0, v1, 0);
}

uint64_t sub_24DD5E9A0()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 120);
  v2 = *(v0 + 80);
  *(v0 + 144) = sub_24DD68D80((v0 + 153));
  v3 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24DD5EA08()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[14];
  v5 = v0[9];
  v4 = v0[10];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v5;
  v6[5] = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_24DD60090;
  *(v7 + 24) = v6;
  v0[6] = sub_24DD5AB88;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24DD5A6B4;
  v0[5] = &block_descriptor_0;
  v8 = _Block_copy(v0 + 2);
  v9 = v0[7];
  v10 = v2;
  v11 = v1;
  v12 = v5;

  [v3 configureConnection_];
  _Block_release(v8);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v15 = v0[17];
    v14 = v0[18];
    v17 = v0[13];
    v16 = v0[14];
    v18 = v0[10];
    v19 = *(v18 + 120);
    *(v18 + 120) = v16;
    v20 = v16;

    [v20 activate];

    OUTLINED_FUNCTION_6();

    return v21();
  }

  return result;
}

id sub_24DD5EBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_24DD69A88();

  v8 = sub_24DD69A88();

  if (a6)
  {
    v9 = sub_24DD69A88();
  }

  else
  {
    v9 = 0;
  }

  v10 = [swift_getObjCClassFromMetadata() endpointForSystemMachName:v7 service:v8 instance:v9];

  return v10;
}

void sub_24DD5ECD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B1E80, &qword_24DD6AAD8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = aBlock - v7;
  v9 = [objc_opt_self() proxyForLocalPlayer];
  v10 = [v9 utilityService];

  v11 = sub_24DD69A88();
  *(a2 + OBJC_IVAR____TtC24GameCenterOverlayService11ClientProxy_kind);
  v12 = sub_24DD69A88();

  (*(v5 + 16))(v8, a1, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v13, v8, v4);
  aBlock[4] = sub_24DD60364;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24DD5EFE4;
  aBlock[3] = &block_descriptor_61;
  v15 = _Block_copy(aBlock);

  [v10 getBSServiceConnectionEndpointForMachName:v11 service:v12 instance:0 handler:v15];
  _Block_release(v15);
  swift_unknownObjectRelease();
}

uint64_t sub_24DD5EF94(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B1E80, &qword_24DD6AAD8);
  return sub_24DD69B28();
}

void sub_24DD5EFE4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_24DD5F050(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [a1 setTargetQueue_];
  v7 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  v8 = swift_allocObject();
  swift_weakInit();
  v18 = sub_24DD600B4;
  v19 = v8;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_24DD5F33C;
  v17 = &block_descriptor_35;
  v9 = _Block_copy(&v14);

  [a1 setActivationHandler_];
  _Block_release(v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v18 = sub_24DD600F4;
  v19 = v10;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_24DD5F33C;
  v17 = &block_descriptor_39;
  v11 = _Block_copy(&v14);

  [a1 setInvalidationHandler_];
  _Block_release(v11);
  v12 = swift_allocObject();
  swift_weakInit();
  v18 = sub_24DD60134;
  v19 = v12;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_24DD5F33C;
  v17 = &block_descriptor_43;
  v13 = _Block_copy(&v14);

  [a1 setInterruptionHandler_];
  _Block_release(v13);
}

uint64_t sub_24DD5F310()
{
  *(*(v0 + 16) + 136) = 1;
  OUTLINED_FUNCTION_6();
  return v1();
}

void sub_24DD5F33C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_24DD5F3A4(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1D58, &qword_24DD6A860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v22 - v9;
  if (qword_28151C750 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v11 = sub_24DD69A38();
  __swift_project_value_buffer(v11, qword_28151C870);
  v12 = a1;
  v13 = sub_24DD69A18();
  v14 = sub_24DD69B88();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_15();
    v16 = OUTLINED_FUNCTION_16();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_24DD57000, v13, v14, a3, v15, 0xCu);
    sub_24DD6003C(v16, &qword_27F1B1E10, &unk_24DD6AA98);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_8_0();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    v20 = sub_24DD69B48();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v19;
    sub_24DD5B7F4(0, 0, v10, a5, v21);
  }

  return result;
}

uint64_t sub_24DD5F5B8()
{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 16);
  sub_24DD5F8B4(0);
  OUTLINED_FUNCTION_6();

  return v2();
}

uint64_t sub_24DD5F634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1D58, &qword_24DD6A860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = v22 - v9;
  sub_24DD5BBDC(a3, v22 - v9);
  v11 = sub_24DD69B48();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_24DD6003C(v10, &qword_27F1B1D58, &qword_24DD6A860);
  }

  else
  {
    sub_24DD69B38();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  v13 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_24DD69B18();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_24DD69AC8() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_24DD6003C(a3, &qword_27F1B1D58, &qword_24DD6A860);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24DD6003C(a3, &qword_27F1B1D58, &qword_24DD6A860);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_24DD5F8B4(char a1)
{
  *(v1 + 136) = a1;
  if ((a1 & 1) == 0)
  {
    [*(v1 + 120) invalidate];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = Strong + OBJC_IVAR____TtC24GameCenterOverlayService11ClientProxy_invalidationHandler;
      swift_beginAccess();
      v6 = *v4;
      v5 = *(v4 + 8);
      sub_24DD58BA0(v6);

      if (v6)
      {
        v6();
        sub_24DD5D810(v6);
      }
    }
  }
}

uint64_t sub_24DD5F954()
{
  OUTLINED_FUNCTION_3();
  v1[3] = v2;
  v1[4] = v0;
  v3 = swift_task_alloc();
  v1[5] = v3;
  *v3 = v1;
  v3[1] = sub_24DD5F9E8;

  return sub_24DD5D820();
}

uint64_t sub_24DD5F9E8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;

  return MEMORY[0x2822009F8](sub_24DD5FAE8, v3, 0);
}

uint64_t sub_24DD5FAE8()
{
  v1 = v0[4];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0[4] + 120);
    if (v4)
    {
      v0[2] = &unk_2860FB248;
      v5 = swift_dynamicCastObjCProtocolConditional();
      if (v5)
      {
        v6 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1D38, &qword_24DD6A840);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_24DD6A6F0;
        v8 = v4;
        *(v7 + 32) = sub_24DD5D4B4();
        sub_24DD5ABB0(0, &qword_28151C5E0, 0x277D46DD8);
        v9 = sub_24DD69B08();

        v10 = [v6 remoteTargetWithLaunchingAssertionAttributes_];

        if (v10)
        {
          sub_24DD69C08();
          swift_unknownObjectRelease();
        }

        else
        {

          v15 = 0u;
          v16 = 0u;
        }

        v12 = v0[3];
        *v12 = v15;
        v12[1] = v16;
        goto LABEL_10;
      }
    }
  }

  v11 = v0[3];
  *v11 = 0u;
  v11[1] = 0u;
LABEL_10:
  OUTLINED_FUNCTION_6();

  return v13();
}

uint64_t sub_24DD5FC78()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    [v1 invalidate];
  }

  MEMORY[0x2530391B0](v0 + 112);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_24DD5FCC4()
{
  sub_24DD5FC78();

  return MEMORY[0x282200960](v0);
}

id ClientProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24DD5FE64()
{
  v0 = sub_24DD69A38();
  __swift_allocate_value_buffer(v0, qword_28151C870);
  __swift_project_value_buffer(v0, qword_28151C870);
  return sub_24DD69A28();
}

unint64_t sub_24DD5FEE4()
{
  result = qword_28151C740;
  if (!qword_28151C740)
  {
    type metadata accessor for ClientProxy.ConnectionHelper();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28151C740);
  }

  return result;
}

uint64_t sub_24DD5FF38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_1_1(v7);

  return sub_24DD5E0E8(v9, v10, v11, v3, v5, v4);
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_24DD6003C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_13(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24DD60174()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_4(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_1(v2);

  return sub_24DD5F614(v4, v5, v6, v0);
}

uint64_t sub_24DD60204()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_4(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_1(v2);

  return sub_24DD5F598(v4, v5, v6, v0);
}

uint64_t objectdestroy_45Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24DD602D4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_4(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_1(v2);

  return sub_24DD5F2F0(v4, v5, v6, v0);
}

uint64_t sub_24DD60364(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B1E80, &qword_24DD6AAD8) - 8) + 80);

  return sub_24DD5EF94(a1);
}

uint64_t sub_24DD603E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_24DD60408()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t (*OUTLINED_FUNCTION_3_1@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>))()
{
  *(v3 + 120) = a1;
  *(v3 + 128) = v2;
  *(v3 + 152) = *(a2 + v2);
  return sub_24DD5E910;
}

uint64_t OUTLINED_FUNCTION_6_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_8_0()
{

  JUMPOUT(0x253039130);
}

void OUTLINED_FUNCTION_9()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

void OUTLINED_FUNCTION_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_15()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_16()
{

  return swift_slowAlloc();
}

uint64_t AccessPointAnchoring.bottom.getter()
{
  OUTLINED_FUNCTION_49();
  v1 = *v0;
  v2 = 1;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_11();
      goto LABEL_6;
    case 2:
      goto LABEL_10;
    case 3:
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_46();
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_12();
      goto LABEL_6;
    default:
LABEL_6:
      v3 = sub_24DD69CB8();

      if (v3)
      {
        v2 = 1;
      }

      else
      {
        v2 = 1;
        switch(v1)
        {
          case 0:
          case 1:
          case 2:
          case 4:
            OUTLINED_FUNCTION_44();
            v2 = sub_24DD69CB8();
            break;
          case 3:
            break;
          default:
            JUMPOUT(0);
        }

LABEL_10:
      }

      return v2 & 1;
  }
}

uint64_t AccessPointAnchoring.leading.getter()
{
  v1 = *v0;
  v2 = 1;
  switch(*v0)
  {
    case 1:
      goto LABEL_5;
    case 2:
      OUTLINED_FUNCTION_10_0();
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_46();
      goto LABEL_5;
    case 4:
      OUTLINED_FUNCTION_12();
LABEL_5:
      v3 = sub_24DD69CB8();

      if (v3)
      {
        return v2 & 1;
      }

      switch(v1)
      {
        case 2:
          break;
        case 3:
          OUTLINED_FUNCTION_52();
          goto LABEL_8;
        default:
LABEL_8:
          v2 = sub_24DD69CB8();
          break;
      }

LABEL_9:

      return v2 & 1;
    default:
      goto LABEL_9;
  }
}

uint64_t AccessPointAnchoring.centered.getter()
{
  v1 = *v0;
  v2 = 1;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_11();
      goto LABEL_5;
    case 2:
      OUTLINED_FUNCTION_49();
      OUTLINED_FUNCTION_10_0();
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_7_0();
      goto LABEL_5;
    case 4:
      goto LABEL_6;
    default:
LABEL_5:
      v2 = sub_24DD69CB8();
LABEL_6:

      return v2 & 1;
  }
}

GameCenterOverlayService::AccessPointAnchoring_optional __swiftcall AccessPointAnchoring.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24DD69C88();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AccessPointAnchoring.rawValue.getter()
{
  result = 0x696461654C706F74;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_11();
      break;
    case 2:
      result = OUTLINED_FUNCTION_10_0() & 0xFFFFFFFFFFFFLL | 0x654C000000000000;
      break;
    case 3:
      result = OUTLINED_FUNCTION_7_0();
      break;
    case 4:
      result = OUTLINED_FUNCTION_12();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24DD60AFC@<X0>(uint64_t *a1@<X8>)
{
  result = AccessPointAnchoring.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DD60B24(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = swift_unknownObjectRetain();
  return sub_24DD60B5C(v4);
}

void (*sub_24DD60B68(void *a1))(uint64_t, char)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_22(v2);
  v2[3] = swift_unknownObjectWeakLoadStrong();
  return sub_24DD67958;
}

uint64_t sub_24DD60BD8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = swift_unknownObjectRetain();
  return sub_24DD60C10(v4);
}

void (*sub_24DD60C1C(void *a1))(uint64_t, char)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_22(v2);
  v2[3] = swift_unknownObjectWeakLoadStrong();
  return sub_24DD67958;
}

uint64_t sub_24DD60C8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = swift_unknownObjectRetain();
  return sub_24DD60CFC(v4);
}

uint64_t sub_24DD60CC4(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_21();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_24DD60D08(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_24DD60D64(void *a1))(uint64_t, char)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_22(v2);
  v2[3] = swift_unknownObjectWeakLoadStrong();
  return sub_24DD60DD4;
}

uint64_t sub_24DD60DD8(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 80) = a1;
  v3 = OUTLINED_FUNCTION_3_0();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24DD60E04()
{
  OUTLINED_FUNCTION_7();
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC24GameCenterOverlayService11ClientProxy_helper);
  *(v0 + 64) = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_24DD60F94;
    v3 = *(v0 + 80);

    return sub_24DD5F954();
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_24DD5BC74(v0 + 16, &qword_27F1B1E00, &unk_24DD6A8D0);
    if (qword_28151C750 != -1)
    {
      OUTLINED_FUNCTION_1_0();
    }

    v5 = sub_24DD69A38();
    OUTLINED_FUNCTION_31(v5, qword_28151C870);
    v6 = sub_24DD69A18();
    v7 = sub_24DD69B98();
    if (OUTLINED_FUNCTION_40(v7))
    {
      v8 = OUTLINED_FUNCTION_35();
      OUTLINED_FUNCTION_47(v8);
      OUTLINED_FUNCTION_8(&dword_24DD57000, v9, v10, "Failed to create GameOverlayUI Dashboard Remote Proxy");
      OUTLINED_FUNCTION_8_0();
    }

    v11 = *(v0 + 8);

    return v11(0);
  }
}

uint64_t sub_24DD60F94()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 72);
  v3 = *(v1 + 64);
  v8 = *v0;

  v4 = OUTLINED_FUNCTION_3_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_24DD6109C()
{
  OUTLINED_FUNCTION_7();
  if (v0[5])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1FA8, &qword_24DD6AE50);
    if (swift_dynamicCast())
    {
      v1 = v0[6];
      goto LABEL_10;
    }
  }

  else
  {
    sub_24DD5BC74((v0 + 2), &qword_27F1B1E00, &unk_24DD6A8D0);
  }

  if (qword_28151C750 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v2 = sub_24DD69A38();
  OUTLINED_FUNCTION_31(v2, qword_28151C870);
  v3 = sub_24DD69A18();
  v4 = sub_24DD69B98();
  if (OUTLINED_FUNCTION_40(v4))
  {
    v5 = OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_47(v5);
    OUTLINED_FUNCTION_8(&dword_24DD57000, v6, v7, "Failed to create GameOverlayUI Dashboard Remote Proxy");
    OUTLINED_FUNCTION_8_0();
  }

  v1 = 0;
LABEL_10:
  v8 = v0[1];

  return v8(v1);
}

void sub_24DD611D0()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1D58, &qword_24DD6A860);
  OUTLINED_FUNCTION_16_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20]();
  v12 = &v33 - v11;
  if (qword_28151C750 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v13 = sub_24DD69A38();
  OUTLINED_FUNCTION_31(v13, qword_28151C870);

  v14 = sub_24DD69A18();
  v15 = sub_24DD69B88();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_15();
    v17 = OUTLINED_FUNCTION_56();
    v18 = v17;
    *v16 = 136315138;
    if (v3)
    {
      v19 = v5;
    }

    else
    {
      v19 = 7104878;
    }

    v33 = v12;
    v34 = v17;
    v20 = v1;
    v21 = v7;
    v22 = v5;
    if (v3)
    {
      v23 = v3;
    }

    else
    {
      v23 = 0xE300000000000000;
    }

    v24 = sub_24DD66108(v19, v23, &v34);
    v5 = v22;
    v7 = v21;
    v1 = v20;
    v12 = v33;

    *(v16 + 4) = v24;
    _os_log_impl(&dword_24DD57000, v14, v15, "DashboardClientProxy: showPlayTogether called for sceneIdentifier: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_8_0();
  }

  v25 = sub_24DD69B48();
  OUTLINED_FUNCTION_36(v12, v26, v27, v25);
  OUTLINED_FUNCTION_50();
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v1;
  v28[5] = v7;
  v28[6] = v5;
  v28[7] = v3;

  v29 = v1;

  v30 = OUTLINED_FUNCTION_5_1();
  sub_24DD5B7F4(v30, v31, v12, v32, v28);

  OUTLINED_FUNCTION_42();
}

uint64_t sub_24DD613E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  v8 = swift_task_alloc();
  v7[6] = v8;
  *v8 = v7;
  v8[1] = sub_24DD614AC;
  v9 = *MEMORY[0x277D85DE8];

  return sub_24DD60DD8(0);
}

uint64_t sub_24DD614AC()
{
  OUTLINED_FUNCTION_3();
  v12 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_2_2();
  *v3 = v2;
  v5 = *(v4 + 48);
  *v3 = *v0;
  *(v2 + 56) = v6;

  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_24DD615C8()
{
  OUTLINED_FUNCTION_30();
  v25 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 24);
    objc_opt_self();
    v3 = sub_24DD69A78();
    *(v0 + 16) = 0;
    v4 = OUTLINED_FUNCTION_53(v3, sel_archivedDataWithRootObject_requiringSecureCoding_error_);

    v5 = *(v0 + 16);
    if (v4)
    {
      v6 = *(v0 + 40);
      sub_24DD69A08();
      OUTLINED_FUNCTION_57();
      OUTLINED_FUNCTION_23();
      v7 = sub_24DD699F8();
      if (v6)
      {
        v8 = *(v0 + 32);
        v9 = *(v0 + 40);
        v6 = sub_24DD69A88();
      }

      [v1 showPlayTogetherWithData:v7 sceneIdentifier:v6];

      v10 = OUTLINED_FUNCTION_23();
      sub_24DD6688C(v10, v11);
    }

    else
    {
      v12 = v5;
      v13 = sub_24DD699E8();

      swift_willThrow();
      if (qword_28151C750 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v14 = sub_24DD69A38();
      OUTLINED_FUNCTION_31(v14, qword_28151C870);
      v15 = sub_24DD69A18();
      v16 = sub_24DD69B98();
      if (OUTLINED_FUNCTION_40(v16))
      {
        v17 = OUTLINED_FUNCTION_35();
        *v17 = 0;
        OUTLINED_FUNCTION_28();
        _os_log_impl(v18, v19, v20, v21, v17, 2u);
        OUTLINED_FUNCTION_8_0();
      }
    }

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_6();
  v23 = *MEMORY[0x277D85DE8];

  return v22();
}

uint64_t sub_24DD61810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = v12;
  v8[7] = v13;
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a5;
  v8[3] = a6;
  v9 = swift_task_alloc();
  v8[8] = v9;
  *v9 = v8;
  v9[1] = sub_24DD618B8;

  return sub_24DD60DD8(0);
}

uint64_t sub_24DD618B8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_2();
  *v2 = v1;
  v4 = *(v3 + 64);
  *v2 = *v0;
  *(v1 + 72) = v5;

  v6 = OUTLINED_FUNCTION_3_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_24DD619A0()
{
  OUTLINED_FUNCTION_7();
  if (v0[9])
  {
    if (v0[3])
    {
      v1 = v0[2];
      v2 = sub_24DD69A88();
    }

    else
    {
      v2 = 0;
    }

    if (v0[5])
    {
      v3 = v0[4];
      v4 = sub_24DD69A88();
    }

    else
    {
      v4 = 0;
    }

    if (v0[7])
    {
      v5 = v0[6];
      v6 = sub_24DD69A88();
    }

    else
    {
      v6 = 0;
    }

    v7 = OUTLINED_FUNCTION_24();
    [v7 v8];

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_6();

  return v9();
}

void sub_24DD61AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_41();
  v70 = v22;
  v23 = v21;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v72 = v36;
  v73 = a21;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1D58, &qword_24DD6A860);
  OUTLINED_FUNCTION_16_0(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20]();
  v41 = &v66 - v40;
  if (qword_28151C750 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v74 = v31;
  v42 = sub_24DD69A38();
  OUTLINED_FUNCTION_31(v42, qword_28151C870);

  v43 = sub_24DD69A18();
  sub_24DD69B88();

  if (OUTLINED_FUNCTION_43())
  {
    v44 = OUTLINED_FUNCTION_56();
    v69 = v23;
    v45 = v44;
    v46 = swift_slowAlloc();
    v71 = v27;
    v75 = v46;
    *v45 = 136315650;
    v68 = v41;
    if (v33)
    {
      v47 = v35;
    }

    else
    {
      v47 = 7104878;
    }

    if (v33)
    {
      v48 = v33;
    }

    else
    {
      v48 = 0xE300000000000000;
    }

    v49 = sub_24DD66108(v47, v48, &v75);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2080;
    v67 = v35;
    v50 = v74;
    if (v29)
    {
      v51 = v74;
    }

    else
    {
      v51 = 7104878;
    }

    if (v29)
    {
      v52 = v29;
    }

    else
    {
      v52 = 0xE300000000000000;
    }

    v53 = sub_24DD66108(v51, v52, &v75);

    *(v45 + 14) = v53;
    *(v45 + 22) = 2080;
    if (v25)
    {
      v54 = v71;
    }

    else
    {
      v54 = 7104878;
    }

    if (v25)
    {
      v55 = v25;
    }

    else
    {
      v55 = 0xE300000000000000;
    }

    v56 = sub_24DD66108(v54, v55, &v75);
    v41 = v68;

    *(v45 + 24) = v56;
    OUTLINED_FUNCTION_28();
    _os_log_impl(v57, v58, v59, v70, v45, 0x20u);
    swift_arrayDestroy();
    v27 = v71;
    OUTLINED_FUNCTION_8_0();
    v23 = v69;
    OUTLINED_FUNCTION_8_0();

    v60 = v67;
  }

  else
  {

    v60 = v35;
    v50 = v74;
  }

  v61 = sub_24DD69B48();
  OUTLINED_FUNCTION_36(v41, v62, v63, v61);
  v64 = swift_allocObject();
  v64[2] = 0;
  v64[3] = 0;
  v64[4] = v23;
  v64[5] = v60;
  v64[6] = v33;
  v64[7] = v50;
  v64[8] = v29;
  v64[9] = v27;
  v64[10] = v25;

  v65 = v23;
  sub_24DD5B7F4(0, 0, v41, v73, v64);

  OUTLINED_FUNCTION_42();
}

uint64_t sub_24DD61DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = v12;
  v8[7] = v13;
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a5;
  v8[3] = a6;
  v9 = swift_task_alloc();
  v8[8] = v9;
  *v9 = v8;
  v9[1] = sub_24DD61E78;

  return sub_24DD60DD8(0);
}

uint64_t sub_24DD61E78()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_2();
  *v2 = v1;
  v4 = *(v3 + 64);
  *v2 = *v0;
  *(v1 + 72) = v5;

  v6 = OUTLINED_FUNCTION_3_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_24DD61F60()
{
  OUTLINED_FUNCTION_7();
  if (v0[9])
  {
    if (v0[3])
    {
      v1 = v0[2];
      v2 = sub_24DD69A88();
    }

    else
    {
      v2 = 0;
    }

    if (v0[5])
    {
      v3 = v0[4];
      v4 = sub_24DD69A88();
    }

    else
    {
      v4 = 0;
    }

    if (v0[7])
    {
      v5 = v0[6];
      v6 = sub_24DD69A88();
    }

    else
    {
      v6 = 0;
    }

    v7 = OUTLINED_FUNCTION_24();
    [v7 v8];

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_6();

  return v9();
}

void sub_24DD62040()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  LODWORD(v3) = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1D58, &qword_24DD6A860);
  OUTLINED_FUNCTION_16_0(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20]();
  v16 = &v35 - v15;
  if (qword_28151C750 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v17 = sub_24DD69A38();
  OUTLINED_FUNCTION_31(v17, qword_28151C870);

  v18 = sub_24DD69A18();
  v19 = sub_24DD69B88();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_15();
    v21 = OUTLINED_FUNCTION_56();
    v36 = v1;
    v37 = v11;
    HIDWORD(v35) = v3;
    v3 = v21;
    v38 = v21;
    *v20 = 136315138;
    v22 = v5;
    if (v7)
    {
      v23 = v9;
    }

    else
    {
      v23 = 7104878;
    }

    v24 = v9;
    if (v7)
    {
      v25 = v7;
    }

    else
    {
      v25 = 0xE300000000000000;
    }

    v26 = sub_24DD66108(v23, v25, &v38);
    v9 = v24;

    *(v20 + 4) = v26;
    v5 = v22;
    _os_log_impl(&dword_24DD57000, v18, v19, "DashboardClientProxy: showDashboard called for sceneIdentifier: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    LOBYTE(v3) = BYTE4(v35);
    v1 = v36;
    v11 = v37;
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_8_0();
  }

  v27 = sub_24DD69B48();
  OUTLINED_FUNCTION_36(v16, v28, v29, v27);
  OUTLINED_FUNCTION_45();
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v1;
  *(v30 + 40) = v5 & 1;
  *(v30 + 48) = v11;
  *(v30 + 56) = v3 & 1;
  *(v30 + 64) = v9;
  *(v30 + 72) = v7;

  v31 = v1;

  v32 = OUTLINED_FUNCTION_5_1();
  sub_24DD5B7F4(v32, v33, v16, v34, v30);

  OUTLINED_FUNCTION_42();
}

uint64_t sub_24DD62274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  v13 = *MEMORY[0x277D85DE8];
  *(v8 + 32) = a8;
  *(v8 + 40) = v15;
  *(v8 + 64) = a7;
  *(v8 + 24) = a6;
  v10 = swift_task_alloc();
  *(v8 + 48) = v10;
  *v10 = v8;
  v10[1] = sub_24DD62354;
  v11 = *MEMORY[0x277D85DE8];

  return sub_24DD60DD8(a5);
}

uint64_t sub_24DD62354()
{
  OUTLINED_FUNCTION_3();
  v12 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_2_2();
  *v3 = v2;
  v5 = *(v4 + 48);
  *v3 = *v0;
  *(v2 + 56) = v6;

  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_24DD62470()
{
  OUTLINED_FUNCTION_30();
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 24);
    objc_opt_self();
    v3 = sub_24DD69A78();
    *(v0 + 16) = 0;
    v4 = OUTLINED_FUNCTION_53(v3, sel_archivedDataWithRootObject_requiringSecureCoding_error_);

    v5 = *(v0 + 16);
    if (v4)
    {
      v6 = *(v0 + 40);
      v7 = *(v0 + 64);
      sub_24DD69A08();
      OUTLINED_FUNCTION_57();
      v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      OUTLINED_FUNCTION_23();
      v9 = sub_24DD699F8();
      if (v6)
      {
        v10 = *(v0 + 32);
        v11 = *(v0 + 40);
        v6 = sub_24DD69A88();
      }

      [v1 showDashboardWithInitialState:v9 canDismissWithGesture:v8 sceneIdentifier:v6];

      v12 = OUTLINED_FUNCTION_23();
      sub_24DD6688C(v12, v13);
    }

    else
    {
      v14 = v5;
      v15 = sub_24DD699E8();

      swift_willThrow();
      if (qword_28151C750 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v16 = sub_24DD69A38();
      OUTLINED_FUNCTION_31(v16, qword_28151C870);
      v17 = sub_24DD69A18();
      v18 = sub_24DD69B98();
      if (OUTLINED_FUNCTION_40(v18))
      {
        v19 = OUTLINED_FUNCTION_35();
        *v19 = 0;
        OUTLINED_FUNCTION_28();
        _os_log_impl(v20, v21, v22, v23, v19, 2u);
        OUTLINED_FUNCTION_8_0();
      }
    }

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_6();
  v25 = *MEMORY[0x277D85DE8];

  return v24();
}

uint64_t sub_24DD626A8(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1D58, &qword_24DD6A860);
  OUTLINED_FUNCTION_16_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20]();
  v8 = &v22 - v7;
  if (qword_28151C750 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v9 = sub_24DD69A38();
  OUTLINED_FUNCTION_31(v9, qword_28151C870);
  v10 = sub_24DD69A18();
  v11 = sub_24DD69B88();
  if (OUTLINED_FUNCTION_40(v11))
  {
    v12 = OUTLINED_FUNCTION_35();
    *v12 = 0;
    _os_log_impl(&dword_24DD57000, v10, v11, "DashboardClientProxy: closeDashboard called", v12, 2u);
    OUTLINED_FUNCTION_26();
  }

  v13 = sub_24DD69B48();
  OUTLINED_FUNCTION_36(v8, v14, v15, v13);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v2;
  *(v16 + 40) = a1 & 1;
  v17 = v2;
  v18 = OUTLINED_FUNCTION_5_1();
  sub_24DD5B7F4(v18, v19, v8, v20, v16);
}

uint64_t sub_24DD6280C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_24DD628A8;

  return sub_24DD60DD8(a5);
}

uint64_t sub_24DD628A8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_2();
  *v2 = v1;
  v4 = *(v3 + 16);
  *v2 = *v0;
  *(v1 + 24) = v5;

  v6 = OUTLINED_FUNCTION_3_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_24DD62990()
{
  OUTLINED_FUNCTION_3();
  if (*(v0 + 24))
  {
    [*(v0 + 24) closeDashboard];
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_6();

  return v1();
}

char *DashboardClientProxy.init(serviceKind:)(char *a1)
{
  v1 = *a1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3 = v1;
  return ClientProxy.init(serviceKind:)(&v3);
}

uint64_t sub_24DD62AA4()
{
  sub_24DD59234(v0 + OBJC_IVAR____TtC24GameCenterOverlayService20DashboardClientProxy_dashboardDelegate);
  sub_24DD59234(v0 + OBJC_IVAR____TtC24GameCenterOverlayService20DashboardClientProxy_accessPointDelegate);
  v1 = v0 + OBJC_IVAR____TtC24GameCenterOverlayService20DashboardClientProxy_gameModeDelegate;

  return sub_24DD59234(v1);
}

id DashboardClientProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DashboardClientProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

GameCenterOverlayService::DashboardClientProxy::AccessPointUseCase_optional __swiftcall DashboardClientProxy.AccessPointUseCase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24DD69C88();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DashboardClientProxy.AccessPointUseCase.rawValue.getter()
{
  result = 0x6F50737365636361;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x6142656D61476E69;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

unint64_t sub_24DD62CDC@<X0>(unint64_t *a1@<X8>)
{
  result = DashboardClientProxy.AccessPointUseCase.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Void __swiftcall DashboardClientProxy.setUpAccessPoint(anchoring:useCase:didReturnToForeground:newToGameCenter:sceneIdentifier:)(GameCenterOverlayService::AccessPointAnchoring anchoring, GameCenterOverlayService::DashboardClientProxy::AccessPointUseCase useCase, Swift::Bool didReturnToForeground, Swift::Bool newToGameCenter, Swift::String_optional sceneIdentifier)
{
  OUTLINED_FUNCTION_41();
  v36 = v6;
  v37 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1D58, &qword_24DD6A860);
  OUTLINED_FUNCTION_16_0(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20]();
  v24 = &v35 - v23;
  LOBYTE(v19) = *v19;
  v25 = *v17;
  v26 = sub_24DD69B48();
  OUTLINED_FUNCTION_36(v24, v27, v28, v26);
  OUTLINED_FUNCTION_50();
  v29 = swift_allocObject();
  v30 = OUTLINED_FUNCTION_38(v29);
  *(v30 + 40) = v19;
  *(v30 + 41) = v25;
  *(v30 + 42) = v15;
  *(v30 + 43) = v13;
  v30[6] = v11;
  v30[7] = v9;

  v31 = v5;
  v32 = OUTLINED_FUNCTION_5_1();
  sub_24DD5B7F4(v32, v33, v24, v34, v29);

  OUTLINED_FUNCTION_42();
}

uint64_t sub_24DD62E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, char a8)
{
  v12 = *MEMORY[0x277D85DE8];
  *(v8 + 24) = v14;
  *(v8 + 32) = v15;
  *(v8 + 59) = a8;
  *(v8 + 58) = a7;
  *(v8 + 57) = a6;
  *(v8 + 56) = a5;
  v9 = swift_task_alloc();
  *(v8 + 40) = v9;
  *v9 = v8;
  v9[1] = sub_24DD62EE4;
  v10 = *MEMORY[0x277D85DE8];

  return sub_24DD60DD8(0);
}

uint64_t sub_24DD62EE4()
{
  OUTLINED_FUNCTION_3();
  v12 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_2_2();
  *v3 = v2;
  v5 = *(v4 + 40);
  *v3 = *v0;
  *(v2 + 48) = v6;

  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_24DD63000()
{
  v37 = *MEMORY[0x277D85DE8];
  if (*(v0 + 48))
  {
    v36 = *(v0 + 48);
    objc_opt_self();
    v1 = [objc_opt_self() currentGame];
    v2 = [v1 internal];

    *(v0 + 16) = 0;
    v4 = OUTLINED_FUNCTION_32(v3, sel_archivedDataWithRootObject_requiringSecureCoding_error_);

    v5 = *(v0 + 16);
    if (v4)
    {
      sub_24DD69A08();
    }

    else
    {
      v6 = v5;
      v7 = sub_24DD699E8();

      swift_willThrow();
      if (qword_28151C750 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v8 = sub_24DD69A38();
      OUTLINED_FUNCTION_31(v8, qword_28151C870);
      v9 = v7;
      v10 = sub_24DD69A18();
      sub_24DD69B98();

      if (OUTLINED_FUNCTION_43())
      {
        OUTLINED_FUNCTION_15();
        v11 = OUTLINED_FUNCTION_33();
        *v2 = 138412290;
        v12 = v7;
        v13 = _swift_stdlib_bridgeErrorToNSError();
        *(v2 + 1) = v13;
        *v11 = v13;
        OUTLINED_FUNCTION_28();
        _os_log_impl(v14, v15, v16, v17, v2, 0xCu);
        sub_24DD5BC74(v11, &qword_27F1B1E10, &unk_24DD6AA98);
        OUTLINED_FUNCTION_8_0();
        OUTLINED_FUNCTION_26();
      }

      else
      {
      }
    }

    switch(*(v0 + 56))
    {
      case 1:
        OUTLINED_FUNCTION_11();
        break;
      case 2:
        OUTLINED_FUNCTION_10_0();
        break;
      case 3:
        OUTLINED_FUNCTION_7_0();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        break;
      default:
        break;
    }

    v18 = *(v0 + 57);
    v35 = sub_24DD69A88();

    v19 = *(v0 + 32);
    v20 = *(v0 + 59);
    v21 = *(v0 + 58);
    v22 = sub_24DD69A88();

    v23 = sub_24DD699F8();
    v24 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    if (v19)
    {
      v26 = *(v0 + 24);
      v27 = *(v0 + 32);
      v19 = sub_24DD69A88();
    }

    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_20();
    [v28 v29];

    swift_unknownObjectRelease();
    v30 = OUTLINED_FUNCTION_44();
    sub_24DD6688C(v30, v31);
  }

  OUTLINED_FUNCTION_6();
  v33 = *MEMORY[0x277D85DE8];

  return v32();
}

uint64_t sub_24DD634AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_24DD63544;

  return sub_24DD60DD8(0);
}

uint64_t sub_24DD63544()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_2();
  *v2 = v1;
  v4 = *(v3 + 32);
  *v2 = *v0;
  OUTLINED_FUNCTION_58(v5);
  v6 = OUTLINED_FUNCTION_3_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_24DD63624()
{
  OUTLINED_FUNCTION_3();
  if (v0[5])
  {
    if (v0[3])
    {
      v1 = v0[2];
      v2 = sub_24DD69A88();
    }

    else
    {
      v2 = 0;
    }

    v3 = OUTLINED_FUNCTION_24();
    [v3 v4];

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_6();

  return v5();
}

uint64_t sub_24DD636D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_24DD6376C;

  return sub_24DD60DD8(0);
}

uint64_t sub_24DD6376C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_2();
  *v2 = v1;
  v4 = *(v3 + 32);
  *v2 = *v0;
  OUTLINED_FUNCTION_58(v5);
  v6 = OUTLINED_FUNCTION_3_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_24DD6384C()
{
  OUTLINED_FUNCTION_3();
  if (v0[5])
  {
    if (v0[3])
    {
      v1 = v0[2];
      v2 = sub_24DD69A88();
    }

    else
    {
      v2 = 0;
    }

    v3 = OUTLINED_FUNCTION_24();
    [v3 v4];

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_6();

  return v5();
}

uint64_t sub_24DD638FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1D58, &qword_24DD6A860);
  OUTLINED_FUNCTION_16_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20]();
  v12 = &v19 - v11;
  v13 = sub_24DD69B48();
  OUTLINED_FUNCTION_36(v12, v14, v15, v13);
  OUTLINED_FUNCTION_48();
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v4;
  v16[5] = a1;
  v16[6] = a2;

  v17 = v4;
  sub_24DD5B7F4(0, 0, v12, a4, v16);
}

uint64_t sub_24DD639D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_24DD63A70;

  return sub_24DD60DD8(0);
}

uint64_t sub_24DD63A70()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_2();
  *v2 = v1;
  v4 = *(v3 + 32);
  *v2 = *v0;
  OUTLINED_FUNCTION_58(v5);
  v6 = OUTLINED_FUNCTION_3_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_24DD63B50()
{
  OUTLINED_FUNCTION_3();
  if (v0[5])
  {
    if (v0[3])
    {
      v1 = v0[2];
      v2 = sub_24DD69A88();
    }

    else
    {
      v2 = 0;
    }

    v3 = OUTLINED_FUNCTION_24();
    [v3 v4];

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_6();

  return v5();
}

uint64_t sub_24DD63CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v11 = *MEMORY[0x277D85DE8];
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 56) = a5;
  v8 = swift_task_alloc();
  *(v7 + 40) = v8;
  *v8 = v7;
  v8[1] = sub_24DD63D90;
  v9 = *MEMORY[0x277D85DE8];

  return sub_24DD60DD8(0);
}

uint64_t sub_24DD63D90()
{
  OUTLINED_FUNCTION_3();
  v12 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_2_2();
  *v3 = v2;
  v5 = *(v4 + 40);
  *v3 = *v0;
  *(v2 + 48) = v6;

  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_24DD63EAC()
{
  OUTLINED_FUNCTION_30();
  v30 = *MEMORY[0x277D85DE8];
  if (*(v0 + 48))
  {
    objc_opt_self();
    v1 = [objc_opt_self() currentGame];
    v2 = [v1 internal];

    *(v0 + 16) = 0;
    v4 = OUTLINED_FUNCTION_32(v3, sel_archivedDataWithRootObject_requiringSecureCoding_error_);

    v5 = *(v0 + 16);
    if (v4)
    {
      sub_24DD69A08();
      OUTLINED_FUNCTION_57();
    }

    else
    {
      v6 = v5;
      v7 = sub_24DD699E8();

      swift_willThrow();
      if (qword_28151C750 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v8 = sub_24DD69A38();
      OUTLINED_FUNCTION_31(v8, qword_28151C870);
      v9 = v7;
      v10 = sub_24DD69A18();
      sub_24DD69B98();

      if (OUTLINED_FUNCTION_43())
      {
        OUTLINED_FUNCTION_15();
        v11 = OUTLINED_FUNCTION_33();
        *v2 = 138412290;
        v12 = v7;
        v13 = _swift_stdlib_bridgeErrorToNSError();
        *(v2 + 1) = v13;
        *v11 = v13;
        OUTLINED_FUNCTION_28();
        _os_log_impl(v14, v15, v16, v17, v2, 0xCu);
        sub_24DD5BC74(v11, &qword_27F1B1E10, &unk_24DD6AA98);
        OUTLINED_FUNCTION_8_0();
        OUTLINED_FUNCTION_26();
      }

      else
      {
      }
    }

    switch(*(v0 + 56))
    {
      case 1:
        OUTLINED_FUNCTION_11();
        break;
      case 2:
        OUTLINED_FUNCTION_10_0();
        break;
      case 3:
        OUTLINED_FUNCTION_7_0();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        break;
      default:
        break;
    }

    v18 = *(v0 + 32);
    v19 = sub_24DD69A88();

    OUTLINED_FUNCTION_23();
    v20 = sub_24DD699F8();
    if (v18)
    {
      v21 = *(v0 + 24);
      v22 = *(v0 + 32);
      v18 = sub_24DD69A88();
    }

    OUTLINED_FUNCTION_4_0();
    [v23 v24];

    swift_unknownObjectRelease();
    v25 = OUTLINED_FUNCTION_23();
    sub_24DD6688C(v25, v26);
  }

  OUTLINED_FUNCTION_6();
  v28 = *MEMORY[0x277D85DE8];

  return v27();
}

uint64_t DashboardClientProxy.showInGameBanner(data:sceneIdentifier:usingLocalEndPoint:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1D58, &qword_24DD6A860);
  OUTLINED_FUNCTION_16_0(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20]();
  v15 = &v26 - v14;
  v16 = sub_24DD69B48();
  OUTLINED_FUNCTION_36(v15, v17, v18, v16);
  OUTLINED_FUNCTION_45();
  v19 = swift_allocObject();
  v20 = OUTLINED_FUNCTION_38(v19);
  *(v20 + 40) = a5;
  v20[6] = a1;
  v20[7] = a2;
  v20[8] = a3;
  v20[9] = a4;
  v21 = v5;
  sub_24DD6698C(a1, a2);

  v22 = OUTLINED_FUNCTION_5_1();
  sub_24DD5B7F4(v22, v23, v15, v24, v19);
}

uint64_t sub_24DD642E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *MEMORY[0x277D85DE8];
  v8[5] = a8;
  v8[6] = v15;
  v8[3] = a6;
  v8[4] = a7;
  v10 = swift_task_alloc();
  v8[7] = v10;
  *v10 = v8;
  v10[1] = sub_24DD643C4;
  v11 = *MEMORY[0x277D85DE8];

  return sub_24DD60DD8(a5);
}

uint64_t sub_24DD643C4()
{
  OUTLINED_FUNCTION_3();
  v12 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_2_2();
  *v3 = v2;
  v5 = *(v4 + 56);
  *v3 = *v0;
  *(v2 + 64) = v6;

  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_19();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_24DD644E0()
{
  OUTLINED_FUNCTION_30();
  v32 = *MEMORY[0x277D85DE8];
  if (*(v0 + 64))
  {
    objc_opt_self();
    v1 = [objc_opt_self() currentGame];
    v2 = [v1 internal];

    *(v0 + 16) = 0;
    v3 = v0 + 16;
    v5 = OUTLINED_FUNCTION_32(v4, sel_archivedDataWithRootObject_requiringSecureCoding_error_);

    v6 = *(v0 + 16);
    if (v5)
    {
      sub_24DD69A08();
      OUTLINED_FUNCTION_57();
    }

    else
    {
      v7 = v6;
      v8 = sub_24DD699E8();

      swift_willThrow();
      if (qword_28151C750 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v9 = sub_24DD69A38();
      OUTLINED_FUNCTION_31(v9, qword_28151C870);
      v10 = v8;
      v11 = sub_24DD69A18();
      sub_24DD69B98();

      if (OUTLINED_FUNCTION_43())
      {
        OUTLINED_FUNCTION_15();
        v12 = OUTLINED_FUNCTION_33();
        *v2 = 138412290;
        v13 = v8;
        v14 = _swift_stdlib_bridgeErrorToNSError();
        *(v2 + 1) = v14;
        *v12 = v14;
        OUTLINED_FUNCTION_28();
        _os_log_impl(v15, v16, v17, v18, v2, 0xCu);
        sub_24DD5BC74(v12, &qword_27F1B1E10, &unk_24DD6AA98);
        OUTLINED_FUNCTION_8_0();
        OUTLINED_FUNCTION_26();
      }

      else
      {
      }

      v3 = 0xF000000000000000;
    }

    v19 = *(v0 + 24);
    v20 = *(v0 + 32);
    v21 = sub_24DD699F8();
    if (v3 >> 60 == 15)
    {
      v22 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_23();
      v22 = sub_24DD699F8();
    }

    if (*(v0 + 48))
    {
      v23 = *(v0 + 40);
      v24 = sub_24DD69A88();
    }

    else
    {
      v24 = 0;
    }

    OUTLINED_FUNCTION_4_0();
    [v25 v26];

    swift_unknownObjectRelease();
    v27 = OUTLINED_FUNCTION_23();
    sub_24DD678D8(v27, v28);
  }

  OUTLINED_FUNCTION_6();
  v30 = *MEMORY[0x277D85DE8];

  return v29();
}

Swift::Void __swiftcall DashboardClientProxy.showGameModeBanner(bundleIdentifier:available:required:enabled:showText:usingLocalEndPoint:)(Swift::String bundleIdentifier, Swift::Bool available, Swift::Bool required, Swift::Bool enabled, Swift::Bool showText, Swift::Bool usingLocalEndPoint)
{
  OUTLINED_FUNCTION_41();
  v38 = v7;
  v39 = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1D58, &qword_24DD6A860);
  OUTLINED_FUNCTION_16_0(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20]();
  v27 = &v37 - v26;
  v28 = sub_24DD69B48();
  OUTLINED_FUNCTION_36(v27, v29, v30, v28);
  v31 = swift_allocObject();
  v32 = OUTLINED_FUNCTION_38(v31);
  *(v32 + 40) = v10;
  v32[6] = v22;
  v32[7] = v20;
  *(v32 + 64) = v18;
  *(v32 + 65) = v16;
  *(v32 + 66) = v14;
  *(v32 + 67) = v12;
  v33 = v6;

  v34 = OUTLINED_FUNCTION_5_1();
  sub_24DD5B7F4(v34, v35, v27, v36, v31);

  OUTLINED_FUNCTION_42();
}

uint64_t sub_24DD64898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 50) = v14;
  *(v8 + 49) = v13;
  *(v8 + 48) = a8;
  *(v8 + 16) = a6;
  *(v8 + 24) = a7;
  v10 = swift_task_alloc();
  *(v8 + 32) = v10;
  *v10 = v8;
  v10[1] = sub_24DD64958;

  return sub_24DD60DD8(a5);
}

uint64_t sub_24DD64958()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_2();
  *v2 = v1;
  v4 = *(v3 + 32);
  *v2 = *v0;
  OUTLINED_FUNCTION_58(v5);
  v6 = OUTLINED_FUNCTION_3_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_24DD64A38()
{
  OUTLINED_FUNCTION_30();
  if (*(v0 + 40))
  {
    v1 = *(v0 + 51);
    v2 = *(v0 + 50);
    v3 = *(v0 + 49);
    v4 = *(v0 + 48);
    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    v7 = sub_24DD69A88();
    v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v12 = OUTLINED_FUNCTION_24();
    [v12 v13];

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_6();

  return v14();
}

uint64_t DashboardClientProxy.showGameModeBanner(config:usingLocalEndPoint:)(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1D58, &qword_24DD6A860);
  OUTLINED_FUNCTION_16_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20]();
  v9 = &v21 - v8;
  v10 = sub_24DD69B48();
  OUTLINED_FUNCTION_36(v9, v11, v12, v10);
  OUTLINED_FUNCTION_48();
  v13 = swift_allocObject();
  v14 = OUTLINED_FUNCTION_38(v13);
  *(v14 + 40) = a2;
  v14[6] = a1;
  v15 = v2;
  v16 = a1;
  v17 = OUTLINED_FUNCTION_5_1();
  sub_24DD5B7F4(v17, v18, v9, v19, v13);
}

uint64_t sub_24DD64C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v8 = swift_task_alloc();
  *(v6 + 24) = v8;
  *v8 = v6;
  v8[1] = sub_24DD64CE4;

  return sub_24DD60DD8(a5);
}

uint64_t sub_24DD64CE4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_2();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 32) = v5;

  v6 = OUTLINED_FUNCTION_3_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_24DD64DCC()
{
  OUTLINED_FUNCTION_3();
  if (*(v0 + 32))
  {
    [*(v0 + 32) showGameModeBannerWithConfig_];
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_6();

  return v1();
}

Swift::Void __swiftcall DashboardClientProxy.updateAccessPointFrameCoordinates(_:)(NSValue a1)
{
  v1 = MEMORY[0x253038C60](a1.super.isa);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_21();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong updateAccessPointFrameCoordinates_];
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall DashboardClientProxy.isPresentingDashboardFromAccessPoint(_:)(NSValue a1)
{
  OUTLINED_FUNCTION_21();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong isPresentingDashboardFromAccessPoint_];
    swift_unknownObjectRelease();
  }
}

void DashboardClientProxy.finishAndPlay(_:)()
{
  OUTLINED_FUNCTION_21();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_24DD5ABB0(0, &qword_27F1B1F08, 0x277CCAAC8);
    sub_24DD5ABB0(0, &qword_27F1B1F10, 0x277D0C000);
    v2 = sub_24DD69BA8();
    v4 = v2;
    if (v2)
    {
      v9 = [objc_opt_self() challengeForInternalRepresentation_];
      if (v9)
      {
        v10 = v9;
        [v1 finishAndPlay_];
      }

      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    swift_unknownObjectRelease();
  }

  if (qword_28151C750 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v3 = sub_24DD69A38();
  OUTLINED_FUNCTION_31(v3, qword_28151C870);
  v4 = sub_24DD69A18();
  v5 = sub_24DD69B98();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_47(v6);
    OUTLINED_FUNCTION_55(&dword_24DD57000, v7, v8, "Could not deserialize challenge data");
    OUTLINED_FUNCTION_8_0();
  }

LABEL_12:
}

void sub_24DD6529C(uint64_t a1, uint64_t a2, SEL *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_24DD5ABB0(0, &qword_27F1B1F08, 0x277CCAAC8);
    v6 = sub_24DD5ABB0(0, &qword_27F1B1F18, 0x277D0C240);
    v7 = sub_24DD69BA8();
    v12 = v7;
    if (v7)
    {
      v15[3] = v6;
      v15[0] = v7;
      objc_allocWithZone(MEMORY[0x277D0C238]);
      v9 = v12;
      v13 = sub_24DD65E38(v15);
      if (v13)
      {
        v14 = v13;
        [v5 *a3];
      }

      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    swift_unknownObjectRelease();
  }

  if (qword_28151C750 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v8 = sub_24DD69A38();
  OUTLINED_FUNCTION_31(v8, qword_28151C870);
  v9 = sub_24DD69A18();
  v10 = sub_24DD69B98();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_35();
    *v11 = 0;
    _os_log_impl(&dword_24DD57000, v9, v10, "Could not deserialize turn based match data", v11, 2u);
    OUTLINED_FUNCTION_8_0();
  }

LABEL_12:
}

Swift::Void __swiftcall DashboardClientProxy.setGameMode(bundleIdentifier:enabled:)(Swift::String bundleIdentifier, NSValue enabled)
{
  object = bundleIdentifier._object;
  countAndFlagsBits = bundleIdentifier._countAndFlagsBits;
  if (qword_28151C750 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v5 = sub_24DD69A38();
  v6 = __swift_project_value_buffer(v5, qword_28151C870);

  v7 = enabled.super.isa;
  v8 = sub_24DD69A18();
  v9 = sub_24DD69B88();

  if (os_log_type_enabled(v8, v9))
  {
    swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_33();
    v11 = OUTLINED_FUNCTION_56();
    v16 = v11;
    *v6 = 136315394;
    *(v6 + 4) = sub_24DD66108(countAndFlagsBits, object, &v16);
    *(v6 + 12) = 2112;
    *(v6 + 14) = v7;
    *v10 = v7;
    v12 = v7;
    _os_log_impl(&dword_24DD57000, v8, v9, "Game Mode for bundleID %s was enabled: %@", v6, 0x16u);
    sub_24DD5BC74(v10, &qword_27F1B1E10, &unk_24DD6AA98);
    OUTLINED_FUNCTION_8_0();
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_21();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = sub_24DD69A88();
    [(objc_class *)v7 BOOLValueSafe];
    v14 = OUTLINED_FUNCTION_24();
    [v14 v15];

    swift_unknownObjectRelease();
  }
}

void *sub_24DD656D4(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  OUTLINED_FUNCTION_21();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a2];
    return swift_unknownObjectRelease();
  }

  return result;
}

void DashboardClientProxy.requestDashboardPresentation(_:)()
{
  v17 = *MEMORY[0x277D85DE8];
  if (qword_28151C750 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v0 = sub_24DD69A38();
  __swift_project_value_buffer(v0, qword_28151C870);
  v1 = sub_24DD69A18();
  v2 = sub_24DD69B88();
  if (OUTLINED_FUNCTION_40(v2))
  {
    v3 = OUTLINED_FUNCTION_35();
    *v3 = 0;
    _os_log_impl(&dword_24DD57000, v1, v2, "requestDashboardPresentation called", v3, 2u);
    OUTLINED_FUNCTION_8_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1F20, &qword_24DD6ABE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24DD6AAF0;
  v5 = sub_24DD5ABB0(0, &qword_27F1B1F28, 0x277CBEAC0);
  *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1F30, &qword_24DD6ABE8);
  *(v4 + 32) = v5;
  v6 = sub_24DD5ABB0(0, &qword_27F1B1F38, 0x277CBEA90);
  *(v4 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1F40, &qword_24DD6ABF0);
  *(v4 + 64) = v6;
  v7 = sub_24DD5ABB0(0, &qword_27F1B1F48, 0x277CBEB38);
  *(v4 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1F50, &qword_24DD6ABF8);
  *(v4 + 96) = v7;
  v8 = sub_24DD5ABB0(0, &qword_27F1B1F58, 0x277CBEB28);
  *(v4 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1F60, &qword_24DD6AC00);
  *(v4 + 128) = v8;
  v9 = sub_24DD5ABB0(0, &qword_27F1B1F68, 0x277CCABB0);
  *(v4 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1F70, &qword_24DD6AC08);
  *(v4 + 160) = v9;
  v10 = sub_24DD5ABB0(0, &qword_27F1B1F78, 0x277CCACA8);
  *(v4 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1F80, &qword_24DD6AC10);
  *(v4 + 192) = v10;
  sub_24DD5ABB0(0, &qword_27F1B1F88, 0x277CBEB98);
  v11 = MEMORY[0x253038B40](v4);
  v16 = 0;
  sub_24DD69B78();

  oslog = sub_24DD69A18();
  v12 = sub_24DD69B98();
  if (os_log_type_enabled(oslog, v12))
  {
    v13 = OUTLINED_FUNCTION_35();
    *v13 = 0;
    _os_log_impl(&dword_24DD57000, oslog, v12, "requestDashboardPresentation: Unexpected error creating set of classes", v13, 2u);
    OUTLINED_FUNCTION_8_0();
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_24DD65DA8(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v6 = a3;
  v10 = a1;
  sub_24DD69A08();

  v7 = OUTLINED_FUNCTION_44();
  a4(v7);
  v8 = OUTLINED_FUNCTION_44();
  sub_24DD6688C(v8, v9);
}

id sub_24DD65E38(uint64_t *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v5 = *(v2 - 8);
    v6 = *(v5 + 64);
    MEMORY[0x28223BE20](v4, v4);
    v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8);
    v9 = sub_24DD69CA8();
    (*(v5 + 8))(v8, v2);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v1 initWithInternalRepresentation_];
  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_24DD65F74(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_24DD65FC0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_24DD65FF8(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_24DD66108(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_24DD66054()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_17();
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4(v5);
  *v6 = v7;
  v6[1] = sub_24DD67950;
  v8 = OUTLINED_FUNCTION_1_2();

  return sub_24DD613E4(v8, v9, v10, v11, v2, v4, v3);
}

uint64_t sub_24DD66108(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  OUTLINED_FUNCTION_19();
  v9 = sub_24DD66CAC(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_24DD678EC(v14, *a3);
    *a3 = v12 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v14);
  return v10;
}

uint64_t sub_24DD661C8()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4(v0);
  *v1 = v2;
  v1[1] = sub_24DD67950;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14_0();

  return sub_24DD61810(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24DD662C4()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4(v0);
  *v1 = v2;
  v1[1] = sub_24DD67950;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14_0();

  return sub_24DD61DD0(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24DD66368()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_8_1();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4(v6);
  *v7 = v8;
  v7[1] = sub_24DD67950;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_14_0();

  return sub_24DD62274(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_24DD6641C()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_8_1();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_4(v2);
  *v3 = v4;
  v3[1] = sub_24DD67950;
  v5 = OUTLINED_FUNCTION_1_2();

  return sub_24DD6280C(v5, v6, v7, v8, v1);
}

uint64_t sub_24DD664E0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_8_1();
  v19 = *(v0 + 42);
  v1 = *(v0 + 43);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 41);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4(v6);
  *v7 = v8;
  v7[1] = sub_24DD67950;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_14_0();

  return sub_24DD62E08(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_24DD6659C()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_17();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_4(v4);
  *v5 = v6;
  v5[1] = sub_24DD67950;
  v7 = OUTLINED_FUNCTION_1_2();

  return sub_24DD634AC(v7, v8, v9, v10, v2, v3);
}

uint64_t sub_24DD66644()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_17();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_4(v4);
  *v5 = v6;
  v5[1] = sub_24DD67950;
  v7 = OUTLINED_FUNCTION_1_2();

  return sub_24DD636D4(v7, v8, v9, v10, v2, v3);
}

uint64_t objectdestroy_24Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_48();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_24DD66730()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_17();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_4(v4);
  *v5 = v6;
  v5[1] = sub_24DD67950;
  v7 = OUTLINED_FUNCTION_1_2();

  return sub_24DD639D8(v7, v8, v9, v10, v2, v3);
}

uint64_t sub_24DD667D8()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_8_1();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_4(v4);
  *v5 = v6;
  v5[1] = sub_24DD67950;
  v7 = OUTLINED_FUNCTION_1_2();

  return sub_24DD63CC8(v7, v8, v9, v10, v3, v1, v2);
}

uint64_t sub_24DD6688C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24DD668E4()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_8_1();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4(v6);
  *v7 = v8;
  v7[1] = sub_24DD67950;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14_0();

  return sub_24DD642E8(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_24DD6698C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t objectdestroy_20Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  v4 = *(v1 + 56);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_24DD66A38()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_34();
  v23 = *(v0 + 16);
  v22 = *(v0 + 24);
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 65);
  v7 = *(v0 + 66);
  v8 = *(v0 + 67);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_4(v9);
  *v10 = v11;
  v10[1] = sub_24DD66B1C;
  OUTLINED_FUNCTION_14_0();

  return sub_24DD64898(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_24DD66B1C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 16);
  v5 = *v0;

  OUTLINED_FUNCTION_6();

  return v3();
}

uint64_t sub_24DD66C04()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_8_1();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4(v3);
  *v4 = v5;
  v4[1] = sub_24DD67950;
  v6 = OUTLINED_FUNCTION_1_2();

  return sub_24DD64C44(v6, v7, v8, v9, v1, v2);
}

unint64_t sub_24DD66CAC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24DD66DAC(a5, a6);
    *a1 = v9;
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
    result = sub_24DD69C58();
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

uint64_t sub_24DD66DAC(uint64_t a1, unint64_t a2)
{
  v4 = sub_24DD66DF8(a1, a2);
  sub_24DD66F10(&unk_2860F7060);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24DD66DF8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_24DD69AF8())
  {
    result = sub_24DD66FF4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_24DD69C38();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_24DD69C58();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_24DD66F10(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_24DD67064(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24DD66FF4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1FB0, qword_24DD6AE58);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_24DD67064(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1FB0, qword_24DD6AE58);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

void sub_24DD67180(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_24DD671F8()
{
  result = qword_27F1B1F98;
  if (!qword_27F1B1F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B1F98);
  }

  return result;
}

unint64_t sub_24DD67250()
{
  result = qword_27F1B1FA0;
  if (!qword_27F1B1FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B1FA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessPointAnchoring(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AccessPointAnchoring(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DashboardClientProxy.AccessPointUseCase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DashboardClientProxy.AccessPointUseCase(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24DD678D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24DD6688C(a1, a2);
  }

  return a1;
}

uint64_t sub_24DD678EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void OUTLINED_FUNCTION_8_1()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t OUTLINED_FUNCTION_21()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_22(uint64_t a1)
{
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_26()
{

  JUMPOUT(0x253039130);
}

void OUTLINED_FUNCTION_29()
{
  v1 = v0[3];
  v9 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[10];
}

id OUTLINED_FUNCTION_32(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_33()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_35()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

void *OUTLINED_FUNCTION_38(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = v1;
  return result;
}

BOOL OUTLINED_FUNCTION_40(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL OUTLINED_FUNCTION_43()
{

  return os_log_type_enabled(v0, v1);
}

id OUTLINED_FUNCTION_53(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void OUTLINED_FUNCTION_55(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_56()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_57()
{
}

uint64_t OUTLINED_FUNCTION_58(uint64_t a1)
{
  *(v1 + 40) = a1;
}

char *InternalClientProxy.__allocating_init(serviceKind:)(char *a1)
{
  v3 = objc_allocWithZone(v1);
  v5 = *a1;
  return ClientProxy.init(serviceKind:)(&v5);
}

id InternalClientProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InternalClientProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24DD67E14(char a1)
{
  sub_24DD69CD8();
  MEMORY[0x253038C40]((a1 & 1) == 0);
  return sub_24DD69CF8();
}

uint64_t sub_24DD67E9C(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_24DD69CD8();
  a2(v5, a1);
  return sub_24DD69CF8();
}

uint64_t sub_24DD67EEC()
{
  sub_24DD69AD8();
}

uint64_t sub_24DD67FF0()
{
  sub_24DD69AD8();
}

uint64_t sub_24DD680EC()
{
  sub_24DD69AD8();
}

uint64_t sub_24DD68198()
{
  sub_24DD69AD8();
}

uint64_t sub_24DD68234(uint64_t a1, char a2)
{
  sub_24DD69CD8();
  MEMORY[0x253038C40]((a2 & 1) == 0);
  return sub_24DD69CF8();
}

uint64_t sub_24DD6827C()
{
  sub_24DD69CD8();
  sub_24DD69AD8();

  return sub_24DD69CF8();
}

uint64_t sub_24DD68330(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_24DD69CD8();
  a3(v6, a2);
  return sub_24DD69CF8();
}

uint64_t GameOverlayUIConfig.SharedResources.__allocating_init()()
{
  v0 = swift_allocObject();
  GameOverlayUIConfig.SharedResources.init()();
  return v0;
}

unint64_t GameOverlayUIConfig.ServiceKind.rawValue.getter()
{
  result = 0xD000000000000024;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000029;
      break;
    case 2:
      result = 0xD00000000000002BLL;
      break;
    case 3:
      result = 0xD000000000000028;
      break;
    default:
      return result;
  }

  return result;
}

GameCenterOverlayService::GameOverlayUIConfig::OverlayStyle_optional __swiftcall GameOverlayUIConfig.OverlayStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24DD69C88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t GameOverlayUIConfig.OverlayStyle.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6465646465626D65;
  }

  else
  {
    result = 0x657263536C6C7566;
  }

  *v0;
  return result;
}

uint64_t sub_24DD6851C@<X0>(uint64_t *a1@<X8>)
{
  result = GameOverlayUIConfig.OverlayStyle.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static GameOverlayUIConfig.ServiceKind.from(name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = 0;
  while (v5 != 4)
  {
    v6 = byte_2860F7220[v5 + 32];
    v7 = 0xD000000000000024;
    v8 = "erlayUI.dashboard-service";
    switch(v6)
    {
      case 1:
        v7 = 0xD000000000000029;
        v8 = "erlayUI.multiplayer-service";
        break;
      case 2:
        v7 = 0xD00000000000002BLL;
        v8 = "erlayUI.internal-service";
        break;
      case 3:
        v7 = 0xD000000000000028;
        v8 = "ifiedState";
        break;
      default:
        break;
    }

    if (v7 == a1 && (v8 | 0x8000000000000000) == a2)
    {

LABEL_14:
      *a3 = v6;
      return result;
    }

    v10 = sub_24DD69CB8();

    ++v5;
    if (v10)
    {
      goto LABEL_14;
    }
  }

  sub_24DD69C48();

  MEMORY[0x253038A40](a1, a2);
  result = sub_24DD69C78();
  __break(1u);
  return result;
}

GameCenterOverlayService::GameOverlayUIConfig::ServiceKind_optional __swiftcall GameOverlayUIConfig.ServiceKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24DD69C88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_24DD687F8@<X0>(unint64_t *a1@<X8>)
{
  result = GameOverlayUIConfig.ServiceKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *GameOverlayUIConfig.SharedResources.init()()
{
  swift_defaultActor_initialize();
  v1 = MEMORY[0x277D84F98];
  v0[14] = MEMORY[0x277D84F98];
  v0[15] = v1;
  v0[16] = v1;
  return v0;
}

id sub_24DD68850(_BYTE *a1)
{
  v2 = 0xD000000000000024;
  v3 = *a1;
  v4 = "erlayUI.dashboard-service";
  v5 = v1;
  v6 = "erlayUI.dashboard-service";
  v7 = 0xD000000000000024;
  switch(*a1)
  {
    case 1:
      v6 = "erlayUI.multiplayer-service";
      v7 = 0xD000000000000029;
      break;
    case 2:
      v6 = "erlayUI.internal-service";
      v7 = 0xD00000000000002BLL;
      break;
    case 3:
      v6 = "ifiedState";
      v7 = 0xD000000000000028;
      break;
    default:
      break;
  }

  swift_beginAccess();
  v8 = *(v5 + 112);

  v9 = sub_24DD68B80(v7, v6 | 0x8000000000000000, v8);

  if (!v9)
  {
    sub_24DD5ABB0(0, &qword_28151C5B0, 0x277CF3278);
    v10 = &protocolRef__TtP24GameCenterOverlayService18AuthServerProtocol_;
    switch(v3)
    {
      case 1:
        v10 = &protocolRef__TtP24GameCenterOverlayService23DashboardServerProtocol_;
        break;
      case 2:
        v10 = &protocolRef__TtP24GameCenterOverlayService25MultiplayerServerProtocol_;
        break;
      case 3:
        v10 = &protocolRef__TtP24GameCenterOverlayService22InternalServerProtocol_;
        break;
      default:
        break;
    }

    v11 = sub_24DD68BC8();
    v12 = *v10;
    sub_24DD5ABB0(0, &unk_28151C5D0, 0x277CF0C90);
    v13 = sub_24DD68C2C(v12, sub_24DD699D4, 0);
    [v11 setServer_];

    v14 = sub_24DD68C2C(*off_2796664B8[v3], sub_24DD699D4, 0);
    [v11 setClient_];

    [v11 setClientMessagingExpectation_];
    switch(v3)
    {
      case 0:
        break;
      case 1:
        v4 = "erlayUI.multiplayer-service";
        v2 = 0xD000000000000029;
        break;
      case 2:
        v4 = "erlayUI.internal-service";
        v2 = 0xD00000000000002BLL;
        break;
      case 3:
        v4 = "ifiedState";
        v2 = 0xD000000000000028;
        break;
      default:
        JUMPOUT(0);
    }

    swift_beginAccess();
    v9 = v11;
    v15 = *(v5 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v5 + 112);
    sub_24DD692C0(v9, v2, v4 | 0x8000000000000000, isUniquelyReferenced_nonNull_native, &unk_27F1B1FD0, &qword_24DD6B0C8);
    *(v5 + 112) = v18;

    swift_endAccess();
  }

  return v9;
}

void *sub_24DD68B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_24DD69248(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

id sub_24DD68BC8()
{
  v0 = sub_24DD69A88();

  v1 = [swift_getObjCClassFromMetadata() interfaceWithIdentifier_];

  return v1;
}

id sub_24DD68C2C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a3;
    v10[4] = sub_24DD69994;
    v10[5] = v6;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_24DD68D2C;
    v10[3] = &block_descriptor_1;
    v7 = _Block_copy(v10);
  }

  else
  {
    v7 = 0;
  }

  v8 = [swift_getObjCClassFromMetadata() protocolForProtocol:a1 interpreter:v7];
  _Block_release(v7);

  return v8;
}

id sub_24DD68D2C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_24DD68D80(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_24DD69BC8();
  v25 = *(v4 - 8);
  v26 = v4;
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = *(*(sub_24DD69BB8() - 8) + 64);
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2();
  v10 = *(*(sub_24DD69A68() - 8) + 64);
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2();
  v11 = *a1;
  v12 = "erlayUI.dashboard-service";
  v13 = "erlayUI.dashboard-service";
  v14 = 0xD000000000000024;
  switch(v11)
  {
    case 1:
      v13 = "erlayUI.multiplayer-service";
      v14 = 0xD000000000000029;
      break;
    case 2:
      v13 = "erlayUI.internal-service";
      v14 = 0xD00000000000002BLL;
      break;
    case 3:
      v13 = "ifiedState";
      v14 = 0xD000000000000028;
      break;
    default:
      break;
  }

  swift_beginAccess();
  v15 = *(v2 + 120);

  v16 = sub_24DD68B80(v14, v13 | 0x8000000000000000, v15);

  if (!v16)
  {
    v17 = "erlayUI.dashboard-service";
    v18 = 0xD000000000000024;
    switch(v11)
    {
      case 0:
        break;
      case 1:
        v17 = "erlayUI.multiplayer-service";
        v18 = 0xD000000000000029;
        break;
      case 2:
        v17 = "erlayUI.internal-service";
        v18 = 0xD00000000000002BLL;
        break;
      case 3:
        v17 = "ifiedState";
        v18 = 0xD000000000000028;
        break;
      default:
LABEL_16:
        JUMPOUT(0);
    }

    v19 = v11;
    sub_24DD5ABB0(0, &qword_28151C5C0, 0x277D85C78);
    MEMORY[0x253038A40](v18, v17 | 0x8000000000000000);

    MEMORY[0x253038A40](0x6575657551, 0xE500000000000000);
    sub_24DD69A48();
    sub_24DD59BD4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B1CC0, &qword_24DD6A700);
    sub_24DD59C74();
    sub_24DD69C18();
    (*(v25 + 104))(v8, *MEMORY[0x277D85260], v26);
    v20 = sub_24DD69BD8();
    v21 = 0xD000000000000024;
    switch(v19)
    {
      case 0:
        goto LABEL_14;
      case 1:
        v12 = "erlayUI.multiplayer-service";
        v21 = 0xD000000000000029;
        goto LABEL_14;
      case 2:
        v12 = "erlayUI.internal-service";
        v21 = 0xD00000000000002BLL;
        goto LABEL_14;
      case 3:
        v12 = "ifiedState";
        v21 = 0xD000000000000028;
LABEL_14:
        swift_beginAccess();
        v16 = v20;
        v22 = *(v2 + 120);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = *(v2 + 120);
        sub_24DD692C0(v16, v21, v12 | 0x8000000000000000, isUniquelyReferenced_nonNull_native, &qword_27F1B1FC8, &qword_24DD6B0C0);
        *(v2 + 120) = v27;

        swift_endAccess();
        return v16;
      default:
        goto LABEL_16;
    }
  }

  return v16;
}

void *GameOverlayUIConfig.SharedResources.deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t GameOverlayUIConfig.SharedResources.__deallocating_deinit()
{
  GameOverlayUIConfig.SharedResources.deinit();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_24DD69248(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24DD69CD8();
  sub_24DD69AD8();
  v6 = sub_24DD69CF8();

  return sub_24DD698E0(a1, a2, v6);
}

void sub_24DD692C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v13 = *v6;
  v14 = sub_24DD69248(a2, a3);
  if (__OFADD__(*(v13 + 16), (v15 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v14;
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if ((sub_24DD69C68() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *v9;
  v19 = sub_24DD69248(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    sub_24DD69CC8();
    __break(1u);
    return;
  }

  v16 = v19;
LABEL_5:
  v21 = *v9;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v16);
    *(v22 + 8 * v16) = a1;
  }

  else
  {
    sub_24DD69898(v16, a2, a3, a1, v21);
  }
}

unint64_t sub_24DD6940C()
{
  result = qword_27F1B1FB8;
  if (!qword_27F1B1FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B1FB8);
  }

  return result;
}

unint64_t sub_24DD69464()
{
  result = qword_27F1B1FC0;
  if (!qword_27F1B1FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1B1FC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GameOverlayUIConfig(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for GameOverlayUIConfig(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GameOverlayUIConfig.OverlayStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GameOverlayUIConfig.ServiceKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for GameOverlayUIConfig.ServiceKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_24DD69898(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_24DD698E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_24DD69CB8() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_24DD69994()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}