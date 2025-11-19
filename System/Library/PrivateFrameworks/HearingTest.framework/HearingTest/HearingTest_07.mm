uint64_t sub_252112D14(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_11;
  }

  v4 = *(a2 + 40);
  sub_25214255C();
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  sub_252141BEC();
  v7 = sub_25214258C();
  v8 = -1 << *(a2 + 32);
  v9 = v7 & ~v8;
  if ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_2520CB768(*(a2 + 48) + 40 * v9, v14);
      if (v15 == v5 && v16 == v6)
      {
        break;
      }

      v12 = sub_25214247C();
      sub_2520CB7D8(v14);
      if ((v12 & 1) == 0)
      {
        v9 = (v9 + 1) & v10;
        if ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    sub_2520CB7D8(v14);
    v12 = 1;
  }

  else
  {
LABEL_11:
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_252112E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_25214255C();
  sub_252141BEC();
  v7 = sub_25214258C();
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
    if (v12 || (sub_25214247C() & 1) != 0)
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

uint64_t sub_252112F28(void *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_11;
  }

  v4 = *(a2 + 40);
  sub_25214255C();
  v5 = a1[4];
  v6 = a1[5];
  sub_252141BEC();
  MEMORY[0x253099700](a1[2]);
  v7 = sub_25214258C();
  v8 = -1 << *(a2 + 32);
  v9 = v7 & ~v8;
  if ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_25212CB84(*(a2 + 48) + 48 * v9, v14);
      if (v15 == v5 && v16 == v6)
      {
        break;
      }

      v12 = sub_25214247C();
      sub_25212CBF4(v14);
      if ((v12 & 1) == 0)
      {
        v9 = (v9 + 1) & v10;
        if ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    sub_25212CBF4(v14);
    v12 = 1;
  }

  else
  {
LABEL_11:
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_252113050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE740, &qword_2521467E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2520A2D9C(a3, v27 - v11, &qword_27F4CE740, &qword_2521467E0);
  v13 = sub_252141E3C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2520A2584(v12, &qword_27F4CE740, &qword_2521467E0);
  }

  else
  {
    sub_252141E2C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_252141DEC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_252141BDC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2520A2584(a3, &qword_27F4CE740, &qword_2521467E0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2520A2584(a3, &qword_27F4CE740, &qword_2521467E0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

unint64_t HTFaultCheckFailReason.description.getter()
{
  result = 0x76206E776F6B6E55;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000025;
      break;
    case 2:
      result = 0xD00000000000004BLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000041;
      break;
    case 5:
      result = 0xD00000000000001FLL;
      break;
    case 6:
      result = 0xD000000000000023;
      break;
    case 7:
      result = 0x6E65706F2064694CLL;
      break;
    case 8:
      result = 0x61206E6F69746F4DLL;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 0xA:
      result = 0x6261206573696F4ELL;
      break;
    case 0xB:
      result = 0xD000000000000027;
      break;
    case 0xC:
      result = 0xD000000000000013;
      break;
    case 0xD:
      result = 0x6E207265746C6946;
      break;
    case 0xE:
      result = 0xD000000000000011;
      break;
    case 0xF:
      result = 0xD000000000000026;
      break;
    case 0x10:
      result = 0xD000000000000015;
      break;
    case 0x11:
    case 0x13:
    case 0x15:
      result = 0xD000000000000017;
      break;
    case 0x12:
      result = 0xD000000000000018;
      break;
    case 0x14:
      result = 0xD00000000000001BLL;
      break;
    case 0x16:
      result = 0x2061746164206F4ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_252113760(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_25213E648(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || (v20 = *(*(a2 + 56) + 8 * v17), v21 = *(v20 + 16), v21 != *(v16 + 16)))
    {
LABEL_26:

      return 0;
    }

    if (v21)
    {
      v22 = v20 == v16;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = 32;
      while (v21)
      {
        if (*(v20 + v23) != *(v16 + v23))
        {
          goto LABEL_26;
        }

        ++v23;
        if (!--v21)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_29;
    }

LABEL_6:
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

BOOL static HTFaultCheckStatus.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a1 < 0)
  {
    if ((v2 & 0x80) == 0)
    {
      return 0;
    }
  }

  else if ((v2 & 0x80) != 0)
  {
    return 0;
  }

  return ((v2 ^ *a1) & 1) == 0;
}

BOOL sub_25211392C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a1 < 0)
  {
    if ((v2 & 0x80) == 0)
    {
      return 0;
    }
  }

  else if ((v2 & 0x80) != 0)
  {
    return 0;
  }

  return ((v2 ^ *a1) & 1) == 0;
}

uint64_t HTEnvironmentNoiseData.drum_OctBand_sm.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t HTEnviNoiseData.drum_OctBand_sm.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t HTEnvNoiseData.drum_OctBand_sm.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

void sub_252113CA4(uint64_t a1, void (*a2)(uint64_t, void))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    a2(Strong, *(a1 + 8));

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v5 = sub_25214198C();
    __swift_project_value_buffer(v5, qword_27F4CDE68);
    oslog = sub_25214196C();
    v6 = sub_252141FAC();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_2520A5448(0xD000000000000025, 0x8000000252147A00, &v10);
      _os_log_impl(&dword_25207E000, oslog, v6, "[%{public}s] missing observer!", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x253099FD0](v8, -1, -1);
      MEMORY[0x253099FD0](v7, -1, -1);
    }
  }
}

uint64_t sub_252113E38()
{
  sub_25214255C();
  v1 = v0[4];
  v2 = v0[5];
  sub_252141BEC();
  MEMORY[0x253099700](v0[2]);
  return sub_25214258C();
}

uint64_t sub_252113E88()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_252141BEC();
  return MEMORY[0x253099700](v0[2]);
}

uint64_t sub_252113EBC()
{
  sub_25214255C();
  v1 = v0[4];
  v2 = v0[5];
  sub_252141BEC();
  MEMORY[0x253099700](v0[2]);
  return sub_25214258C();
}

uint64_t sub_252113F08(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return 1;
  }

  else
  {
    return sub_25214247C();
  }
}

uint64_t sub_252113FE0()
{
  type metadata accessor for HTCBDeviceStore();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  qword_27F4D34A8 = v0;
  return result;
}

uint64_t sub_252114020()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_252114084()
{
  if (qword_27F4CD7C8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4D34A8;
  *(v0 + 24) = qword_27F4D34A8;

  return MEMORY[0x2822009F8](sub_25211411C, v1, 0);
}

uint64_t sub_25211411C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 112);
  *(v1 + 112) = v2;
  v4 = v2;

  v5 = v0[1];

  return v5();
}

BOOL sub_252114188(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 12) = *(a1 + 60);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 12) = *(a2 + 60);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_25212C094(v7, v9);
}

void sub_2521141E4()
{
  type metadata accessor for HTRequirementStatusManager();
  v0 = swift_allocObject();
  HTRequirementStatusManager.init(_:)(0);
  qword_27F4CE8B0 = v0;
}

uint64_t HTRequirementStatusManager.__allocating_init(_:)(void *a1)
{
  v2 = swift_allocObject();
  HTRequirementStatusManager.init(_:)(a1);
  return v2;
}

uint64_t static HTRequirementStatusManager.shared.getter()
{
  if (qword_27F4CD7D0 != -1)
  {
    swift_once();
  }
}

__n128 sub_2521142C0@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  result = *(v1 + 32);
  v5 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 sub_25211430C(uint64_t a1)
{
  v3 = *(a1 + 32);
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v5;
  *(v1 + 64) = v3;
  return result;
}

uint64_t sub_2521143B0(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 136);
  v3 = *(a1 + 144);
  v4 = *(a1 + 152);
  v5 = *(a1 + 160);
  v6 = *a2;
  *(a1 + 136) = a2[1];
  v7 = a2[3];
  *(a1 + 152) = a2[2];
  v8 = *(a1 + 168);
  v9 = *(a1 + 176);
  v10 = *(a1 + 184);
  v11 = *(a1 + 192);
  *(a1 + 168) = v7;
  *(a1 + 180) = *(a2 + 60);
  v12 = *(a1 + 120);
  v13 = *(a1 + 128);
  *(a1 + 120) = v6;
  sub_2520A2D9C(a2, v15, &qword_27F4CE6F0, &qword_2521467A0);
  return sub_25210B774(v12, v13);
}

void sub_252114478()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_252141A4C();
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252141A8C();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_252141ABC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v1[26];
  if (v18)
  {
    v31 = &v28 - v17;
    v32 = v18;
    sub_252141AAC();
    v19 = *(v1[33] + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_cachedTuning + 160);
    sub_252141AEC();
    v20 = *(v12 + 8);
    v33 = v12 + 8;
    v34 = v20;
    v20(v15, v11);
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v2;
    v30 = v21;
    aBlock[4] = sub_252130580;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2520A3B78;
    aBlock[3] = &block_descriptor_514;
    v23 = _Block_copy(aBlock);

    sub_252141A6C();
    v37 = MEMORY[0x277D84F90];
    sub_2520A2ED4(&qword_27F4CE090, MEMORY[0x277D85198]);
    v24 = v36;
    v28 = v7;
    v29 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
    v25 = v35;
    sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0);
    sub_25214218C();
    v27 = v31;
    v26 = v32;
    MEMORY[0x253099170](v31, v10, v6, v23);
    _Block_release(v23);

    (*(v24 + 8))(v6, v3);
    (*(v25 + 8))(v10, v28);
    v34(v27, v29);
  }
}

void sub_2521148C0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 272) = 1;
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v1 = sub_25214198C();
    __swift_project_value_buffer(v1, qword_27F4CDE68);
    v2 = sub_25214196C();
    v3 = sub_252141FBC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136446210;
      v6 = sub_2521425DC();
      v8 = sub_2520A5448(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_25207E000, v2, v3, "[%{public}s] timer done!", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x253099FD0](v5, -1, -1);
      MEMORY[0x253099FD0](v4, -1, -1);
    }
  }
}

void sub_252114A48(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE740, &qword_2521467E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v190[-v8];
  if ((*(v1 + 216) & 1) == 0)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v21 = sub_25214198C();
    __swift_project_value_buffer(v21, qword_27F4CDE68);
    v198 = sub_25214196C();
    v22 = sub_252141FBC();
    if (os_log_type_enabled(v198, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v205[0] = v24;
      *v23 = 136446210;
      v25 = sub_2521425DC();
      v27 = sub_2520A5448(v25, v26, v205);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_25207E000, v198, v22, "[%{public}s] handleDeviceChanged inactive due to deactivated discovery", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x253099FD0](v24, -1, -1);
      MEMORY[0x253099FD0](v23, -1, -1);
    }

    else
    {
      v28 = v198;
    }

    return;
  }

  if (qword_27F4CD7A0 != -1)
  {
    v7 = swift_once();
  }

  if (byte_27F4D3490 == 1)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v10 = sub_25214198C();
    __swift_project_value_buffer(v10, qword_27F4CDE68);
    sub_25210AC9C(a1, v205);
    sub_25210AC9C(a1, v205);
    sub_25210AC9C(a1, v205);
    sub_25210AC9C(a1, v205);
    sub_25210AC9C(a1, v205);
    sub_25210AC9C(a1, v205);
    sub_25210AC9C(a1, v205);
    sub_25210AC9C(a1, v205);
    v11 = sub_25214196C();
    v12 = sub_252141FBC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v198 = v9;
      v15 = v14;
      *&v205[0] = v14;
      *v13 = 136447490;
      v16 = sub_2521425DC();
      v18 = v4;
      v19 = sub_2520A5448(v16, v17, v205);

      *(v13 + 4) = v19;
      v4 = v18;
      *(v13 + 12) = 1024;
      sub_25210ACF8(a1);
      *(v13 + 14) = *(a1 + 40);
      sub_25210ACF8(a1);
      *(v13 + 18) = 1024;
      sub_25210ACF8(a1);
      *(v13 + 20) = *(a1 + 32);
      sub_25210ACF8(a1);
      *(v13 + 24) = 1024;
      sub_25210ACF8(a1);
      *(v13 + 26) = *(a1 + 44);
      sub_25210ACF8(a1);
      *(v13 + 30) = 1024;
      sub_25210ACF8(a1);
      *(v13 + 32) = *(a1 + 36);
      sub_25210ACF8(a1);
      *(v13 + 36) = 2080;
      *(v13 + 38) = sub_2520A5448(*a1, *(a1 + 8), v205);
      _os_log_impl(&dword_25207E000, v11, v12, "[%{public}s] handleDeviceChanged p %d, pp %d, s %d, ps %d device %s", v13, 0x2Eu);
      swift_arrayDestroy();
      v20 = v15;
      v9 = v198;
      MEMORY[0x253099FD0](v20, -1, -1);
      MEMORY[0x253099FD0](v13, -1, -1);
    }

    else
    {
      sub_25210ACF8(a1);
      sub_25210ACF8(a1);
      sub_25210ACF8(a1);
      sub_25210ACF8(a1);
      sub_25210ACF8(a1);
      sub_25210ACF8(a1);
      sub_25210ACF8(a1);
      sub_25210ACF8(a1);
    }
  }

  v29 = *(*(v2 + 248) + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue);
  MEMORY[0x28223BE20](v7);
  *&v190[-16] = v30;
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F0, &qword_2521467A0);
  sub_25214200C();

  v205[0] = v201;
  v205[1] = v202;
  v205[2] = v203;
  *v206 = v204[0];
  *&v206[12] = *(v204 + 12);
  if (*(&v201 + 1))
  {
    sub_2520A2584(v205, &qword_27F4CE6F0, &qword_2521467A0);
    v32 = *(v2 + 248);
    v33 = sub_2520F8B10(a1);

    if ((v33 & 1) == 0)
    {
      if (sub_25212A59C(a1))
      {
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v54 = sub_25214198C();
        __swift_project_value_buffer(v54, qword_27F4CDE68);
        sub_25210AC9C(a1, &v201);
        v46 = sub_25214196C();
        v47 = sub_252141FBC();
        sub_25210ACF8(a1);
        if (!os_log_type_enabled(v46, v47))
        {
          goto LABEL_40;
        }

        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *&v201 = v49;
        *v48 = 136446466;
        v55 = sub_2521425DC();
        v57 = sub_2520A5448(v55, v56, &v201);

        *(v48 + 4) = v57;
        *(v48 + 12) = 2080;
        *(v48 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), &v201);
        v53 = "[%{public}s] handleDeviceChanged new device ignored: %s";
        goto LABEL_39;
      }

LABEL_41:
      sub_25212A6B4(a1);
      return;
    }
  }

  if ((*(a1 + 52) & 1) == 0)
  {
    v42 = *a1;
    v43 = *(a1 + 8);
    v44 = *(v2 + 248);
    v197 = v43;
    LOBYTE(v43) = sub_252105BD0(v42, v43);

    if (v43)
    {
      if (sub_25212A59C(a1))
      {
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v45 = sub_25214198C();
        __swift_project_value_buffer(v45, qword_27F4CDE68);
        sub_25210AC9C(a1, &v201);
        v46 = sub_25214196C();
        v47 = sub_252141FBC();
        sub_25210ACF8(a1);
        if (!os_log_type_enabled(v46, v47))
        {
          goto LABEL_40;
        }

        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *&v201 = v49;
        *v48 = 136446466;
        v50 = sub_2521425DC();
        v52 = sub_2520A5448(v50, v51, &v201);

        *(v48 + 4) = v52;
        *(v48 + 12) = 2080;
        *(v48 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), &v201);
        v53 = "[%{public}s] handleDeviceChanged ignore known bad device: %s";
LABEL_39:
        _os_log_impl(&dword_25207E000, v46, v47, v53, v48, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v49, -1, -1);
        MEMORY[0x253099FD0](v48, -1, -1);
LABEL_40:

        goto LABEL_41;
      }

      goto LABEL_41;
    }

    v198 = v9;
    LODWORD(v196) = sub_25211AD94(a1);
    v58 = sub_25211B004(a1);
    v59 = *(v2 + 248);
    v60 = sub_25210B830(a1);

    if (!v60)
    {
      v197 = v4;
      v94 = *(*(v2 + 248) + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue);
      MEMORY[0x28223BE20](v61);
      *&v190[-16] = v95;
      v96 = v95;
      sub_25214200C();

      v201 = v199[0];
      v202 = v199[1];
      v203 = v199[2];
      v204[0] = v200[0];
      *(v204 + 12) = *(v200 + 12);
      if (*(&v199[0] + 1))
      {
        sub_2520A2584(&v201, &qword_27F4CE6F0, &qword_2521467A0);
        goto LABEL_41;
      }

      if ((v196 | v58))
      {
        v97 = v197;
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v98 = sub_25214198C();
        __swift_project_value_buffer(v98, qword_27F4CDE68);
        sub_25210AC9C(a1, v199);
        v99 = sub_25214196C();
        v100 = sub_252141FBC();
        sub_25210ACF8(a1);
        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          *&v199[0] = v102;
          *v101 = 136446466;
          v103 = sub_2521425DC();
          v105 = sub_2520A5448(v103, v104, v199);

          *(v101 + 4) = v105;
          *(v101 + 12) = 2080;
          *(v101 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), v199);
          _os_log_impl(&dword_25207E000, v99, v100, "[%{public}s] handleDeviceChanged notify incompatible %s", v101, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x253099FD0](v102, -1, -1);
          MEMORY[0x253099FD0](v101, -1, -1);
        }

        v106 = v198;
        v107 = sub_252141E3C();
        (*(*(v107 - 8) + 56))(v106, 1, 1, v107);
        v108 = swift_allocObject();
        *(v108 + 16) = 0;
        *(v108 + 24) = 0;
        v109 = *(a1 + 48);
        *(v108 + 64) = *(a1 + 32);
        *(v108 + 80) = v109;
        *(v108 + 92) = *(a1 + 60);
        v110 = *(a1 + 16);
        *(v108 + 32) = *a1;
        *(v108 + 48) = v110;
        *(v108 + 112) = v2;
        *(v108 + 120) = v97;
        sub_25210AC9C(a1, v199);

        sub_252113050(0, 0, v106, &unk_252147B68, v108);

        goto LABEL_41;
      }

      if (sub_25212A59C(a1))
      {
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v111 = sub_25214198C();
        __swift_project_value_buffer(v111, qword_27F4CDE68);
        sub_25210AC9C(a1, v199);
        v46 = sub_25214196C();
        v47 = sub_252141FBC();
        sub_25210ACF8(a1);
        if (!os_log_type_enabled(v46, v47))
        {
          goto LABEL_40;
        }

        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *&v199[0] = v49;
        *v48 = 136446466;
        v112 = sub_2521425DC();
        v114 = sub_2520A5448(v112, v113, v199);

        *(v48 + 4) = v114;
        *(v48 + 12) = 2080;
        *(v48 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), v199);
        v53 = "[%{public}s] handleDeviceChanged ignoring  %s";
        goto LABEL_39;
      }

      goto LABEL_41;
    }

    v195 = v42;
    v62 = [objc_opt_self() sharedInstance];
    v63 = [v62 currentRoute];

    v64 = [v63 outputs];
    v65 = sub_2520A5A94(0, &qword_27F4CE0D0, 0x277CB8408);
    v66 = sub_252141CDC();

    if (v66 >> 62)
    {
      v67 = sub_25214232C();
    }

    else
    {
      v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v68 = v198;
    if (!v67)
    {

      goto LABEL_81;
    }

    v196 = v66;
    v194 = v65;
    if ((v66 & 0xC000000000000001) != 0)
    {
      v69 = MEMORY[0x2530993D0](0, v66);
    }

    else
    {
      if (!*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_124;
      }

      v69 = *(v66 + 32);
    }

    v70 = v69;
    v71 = &selRef_categoryOptions;
    v72 = [v69 portName];
    v73 = sub_252141B9C();
    v75 = v74;

    if (v73 != *(v2 + 280) || v75 != *(v2 + 288))
    {
      v76 = sub_25214247C();

      if (v76)
      {
LABEL_74:
        v120 = v4;
        v121 = v70;
        v122 = [v70 portType];
        v123 = *MEMORY[0x277CB8158];
        v124 = sub_252141B9C();
        v126 = v125;
        if (v124 == sub_252141B9C() && v126 == v127)
        {
          goto LABEL_76;
        }

        v128 = sub_25214247C();

        if ((v128 & 1) == 0)
        {
          v122 = [v121 portType];
          v152 = *MEMORY[0x277CB8168];
          v153 = sub_252141B9C();
          v155 = v154;
          if (v153 == sub_252141B9C() && v155 == v156)
          {
LABEL_76:

LABEL_79:
            v4 = v120;
LABEL_80:

            *(v2 + 384) = 1;
            v68 = v198;
LABEL_81:
            v129 = sub_252141E3C();
            v130 = *(*(v129 - 8) + 56);
            v130(v68, 1, 1, v129);
            v131 = swift_allocObject();
            *(v131 + 16) = 0;
            *(v131 + 24) = 0;
            v132 = *(a1 + 48);
            *(v131 + 64) = *(a1 + 32);
            *(v131 + 80) = v132;
            *(v131 + 92) = *(a1 + 60);
            v133 = *(a1 + 16);
            *(v131 + 32) = *a1;
            *(v131 + 48) = v133;
            *(v131 + 112) = v2;
            sub_25210AC9C(a1, &v201);

            sub_252113050(0, 0, v68, &unk_252147B78, v131);

            if (*(v2 + 384) == 1)
            {
              sub_25212AA10(a1);
              v134 = *(a1 + 40);
              if (v134 != 7 && v134 != 1 || (v135 = *(a1 + 44), v135 != 7) && v135 != 1)
              {
                v130(v68, 1, 1, v129);
                v148 = swift_allocObject();
                *(v148 + 16) = 0;
                *(v148 + 24) = 0;
                v149 = *(a1 + 48);
                *(v148 + 64) = *(a1 + 32);
                *(v148 + 80) = v149;
                *(v148 + 92) = *(a1 + 60);
                v150 = *(a1 + 16);
                *(v148 + 32) = *a1;
                *(v148 + 48) = v150;
                *(v148 + 112) = v2;
                *(v148 + 120) = v4;
                sub_25210AC9C(a1, &v201);

                v151 = &unk_252147B80;
LABEL_107:
                sub_252113050(0, 0, v68, v151, v148);

                return;
              }

              v136 = *(v2 + 240);
              if (v136)
              {
                v137 = qword_27F4CD708;
                v138 = v136;
                if (v137 != -1)
                {
                  swift_once();
                }

                v139 = sub_25214198C();
                __swift_project_value_buffer(v139, qword_27F4CDE68);
                v140 = sub_25214196C();
                v141 = sub_252141FBC();
                if (os_log_type_enabled(v140, v141))
                {
                  v142 = swift_slowAlloc();
                  *v142 = 0;
                  _os_log_impl(&dword_25207E000, v140, v141, "HTAudioRouteRequirementManager capture requested", v142, 2u);
                  MEMORY[0x253099FD0](v142, -1, -1);
                }

                v68 = v198;
              }

              else
              {
                if (qword_27F4CD708 != -1)
                {
                  swift_once();
                }

                v157 = sub_25214198C();
                __swift_project_value_buffer(v157, qword_27F4CDE68);
                v158 = sub_25214196C();
                v159 = sub_252141FBC();
                if (os_log_type_enabled(v158, v159))
                {
                  v160 = swift_slowAlloc();
                  *v160 = 0;
                  _os_log_impl(&dword_25207E000, v158, v159, "HTAudioRouteRequirementManager lost!", v160, 2u);
                  MEMORY[0x253099FD0](v160, -1, -1);
                }

                sub_25211672C();
                v161 = *(v2 + 240);
                if (!v161)
                {
                  goto LABEL_106;
                }

                v138 = v161;
              }

              sub_252139DC8();

LABEL_106:
              v130(v68, 1, 1, v129);
              v148 = swift_allocObject();
              *(v148 + 16) = 0;
              *(v148 + 24) = 0;
              v162 = *(a1 + 48);
              *(v148 + 64) = *(a1 + 32);
              *(v148 + 80) = v162;
              *(v148 + 92) = *(a1 + 60);
              v163 = *(a1 + 16);
              *(v148 + 32) = *a1;
              *(v148 + 48) = v163;
              *(v148 + 112) = v2;
              *(v148 + 120) = v4;
              sub_25210AC9C(a1, &v201);

              v151 = &unk_252147B90;
              goto LABEL_107;
            }

            if (qword_27F4CD708 == -1)
            {
LABEL_93:
              v143 = sub_25214198C();
              __swift_project_value_buffer(v143, qword_27F4CDE68);
              sub_25210AC9C(a1, &v201);
              v35 = sub_25214196C();
              v144 = sub_252141FBC();
              sub_25210ACF8(a1);
              if (!os_log_type_enabled(v35, v144))
              {
                goto LABEL_27;
              }

              v37 = swift_slowAlloc();
              v38 = swift_slowAlloc();
              *&v201 = v38;
              *v37 = 136446722;
              v145 = sub_2521425DC();
              v147 = sub_2520A5448(v145, v146, &v201);

              *(v37 + 4) = v147;
              *(v37 + 12) = 2080;
              *(v37 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), &v201);
              *(v37 + 22) = 2080;
              *(v37 + 24) = sub_2520A5448(v195, v197, &v201);
              _os_log_impl(&dword_25207E000, v35, v144, "[%{public}s] handleDeviceChanged new device %s not bluetooth route: %s", v37, 0x20u);
LABEL_26:
              swift_arrayDestroy();
              MEMORY[0x253099FD0](v38, -1, -1);
              MEMORY[0x253099FD0](v37, -1, -1);
LABEL_27:

              return;
            }

LABEL_124:
            swift_once();
            goto LABEL_93;
          }

          v164 = sub_25214247C();

          if ((v164 & 1) == 0)
          {
            v166 = *(*(v2 + 248) + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue);
            MEMORY[0x28223BE20](v165);
            *&v190[-16] = v167;
            v168 = v167;
            sub_25214200C();

            v169 = v121;
            v4 = v120;
            if ((v201 & 1) == 0)
            {
              v183 = [v121 portType];
              v184 = *MEMORY[0x277CB81A0];
              v185 = sub_252141B9C();
              v187 = v186;
              if (v185 == sub_252141B9C() && v187 == v188)
              {

                goto LABEL_80;
              }

              v189 = sub_25214247C();

              if (v189)
              {

                goto LABEL_80;
              }
            }

            *(v2 + 384) = 0;
            if (qword_27F4CD708 != -1)
            {
              swift_once();
            }

            v170 = sub_25214198C();
            __swift_project_value_buffer(v170, qword_27F4CDE68);
            sub_25210AC9C(a1, &v201);
            v171 = v196;

            v172 = sub_25214196C();
            v173 = sub_252141FAC();
            sub_25210ACF8(a1);

            if (os_log_type_enabled(v172, v173))
            {
              v174 = swift_slowAlloc();
              v175 = swift_slowAlloc();
              *&v201 = v175;
              *v174 = 136446722;
              v176 = sub_2521425DC();
              v178 = sub_2520A5448(v176, v177, &v201);

              *(v174 + 4) = v178;
              *(v174 + 12) = 2080;
              *(v174 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), &v201);
              *(v174 + 22) = 2080;
              v179 = MEMORY[0x253098E80](v171, v194);
              v181 = v180;

              v182 = sub_2520A5448(v179, v181, &v201);

              *(v174 + 24) = v182;
              _os_log_impl(&dword_25207E000, v172, v173, "[%{public}s] handleDeviceChanged %s no valid current route output ports found in %s", v174, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x253099FD0](v175, -1, -1);
              MEMORY[0x253099FD0](v174, -1, -1);
            }

            else
            {
            }

            return;
          }
        }

        goto LABEL_79;
      }

      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v77 = sub_25214198C();
      __swift_project_value_buffer(v77, qword_27F4CDE68);
      sub_25210AC9C(a1, &v201);
      v78 = v70;
      v79 = sub_25214196C();
      v80 = sub_252141FBC();
      sub_25210ACF8(a1);

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v192 = v79;
        v82 = v81;
        v193 = swift_slowAlloc();
        *&v201 = v193;
        *v82 = 136446722;
        v83 = sub_2521425DC();
        v191 = v80;
        v85 = sub_2520A5448(v83, v84, &v201);

        *(v82 + 4) = v85;
        *(v82 + 12) = 2080;
        *(v82 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), &v201);
        *(v82 + 22) = 2080;
        v86 = [v78 description];
        v87 = sub_252141B9C();
        v88 = v78;
        v90 = v89;

        v91 = sub_2520A5448(v87, v90, &v201);
        v78 = v88;
        v71 = &selRef_categoryOptions;

        *(v82 + 24) = v91;
        v92 = v192;
        _os_log_impl(&dword_25207E000, v192, v191, "[%{public}s] handleDeviceChanged %s current output port %s", v82, 0x20u);
        v93 = v193;
        swift_arrayDestroy();
        MEMORY[0x253099FD0](v93, -1, -1);
        MEMORY[0x253099FD0](v82, -1, -1);
      }

      else
      {
      }

      v115 = [v78 v71[88]];
      v116 = sub_252141B9C();
      v118 = v117;

      v119 = *(v2 + 288);
      *(v2 + 280) = v116;
      *(v2 + 288) = v118;
    }

    goto LABEL_74;
  }

  if (sub_25212A59C(a1))
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v34 = sub_25214198C();
    __swift_project_value_buffer(v34, qword_27F4CDE68);
    sub_25210AC9C(a1, &v201);
    v35 = sub_25214196C();
    v36 = sub_252141FBC();
    sub_25210ACF8(a1);
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_27;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v201 = v38;
    *v37 = 136446466;
    v39 = sub_2521425DC();
    v41 = sub_2520A5448(v39, v40, &v201);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    *(v37 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), &v201);
    _os_log_impl(&dword_25207E000, v35, v36, "[%{public}s] handleDeviceChanged ignore closed lid device: %s", v37, 0x16u);
    goto LABEL_26;
  }
}

uint64_t sub_252116584()
{
  if (qword_27F4CD7C8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4D34A8;
  *(v0 + 24) = qword_27F4D34A8;

  return MEMORY[0x2822009F8](sub_25211661C, v1, 0);
}

uint64_t sub_25211661C()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 32) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_252116690, 0, 0);
}

uint64_t sub_252116690()
{
  v1 = v0[4];
  if (!v1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277CBE020]) init];
  }

  v2 = *(v0[2] + 248);
  sub_2520FBFEC(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_25211672C()
{
  v1 = v0;
  if (*(v0 + 240))
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v2 = sub_25214198C();
    __swift_project_value_buffer(v2, qword_27F4CDE68);
    v3 = sub_25214196C();
    v4 = sub_252141FBC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_25207E000, v3, v4, "HTAudioRouteRequirementManager already started, ignoring", v5, 2u);
      MEMORY[0x253099FD0](v5, -1, -1);
    }
  }

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v6 = sub_25214198C();
  __swift_project_value_buffer(v6, qword_27F4CDE68);
  v7 = sub_25214196C();
  v8 = sub_252141FBC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_25207E000, v7, v8, "HTAudioRouteRequirementManager beginAudioRouteManagement", v9, 2u);
    MEMORY[0x253099FD0](v9, -1, -1);
  }

  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(type metadata accessor for HTAudioRouteRequirementManager());
  v12 = sub_25213AE8C(sub_252130588, v10);
  v13 = *(v1 + 240);
  *(v1 + 240) = v12;

  return MEMORY[0x2821F96F8]();
}

void sub_252116934(char a1)
{
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v2 = sub_25214198C();
  __swift_project_value_buffer(v2, qword_27F4CDE68);
  v3 = sub_25214196C();
  v4 = sub_252141FBC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&dword_25207E000, v3, v4, "HTAudioRouteRequirementManager handler interrupted: %{BOOL}d", v5, 8u);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + 248);

      v9 = *&v7[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
      MEMORY[0x28223BE20](v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F0, &qword_2521467A0);
      sub_25214200C();

      v19 = v23;
      v20 = v24;
      v21 = v25;
      v22[0] = v26[0];
      *(v22 + 12) = *(v26 + 12);
      if (*(&v23 + 1))
      {
        *&v23 = v19;
        v24 = v20;
        v25 = v21;
        v26[0] = v22[0];
        *(v26 + 12) = *(v22 + 12);
        if ((DWORD2(v21) == 7 || DWORD2(v21) == 1) && (HIDWORD(v21) == 7 || HIDWORD(v21) == 1))
        {
          v10 = sub_25214196C();
          v11 = sub_252141FBC();
          if (os_log_type_enabled(v10, v11))
          {
            v12 = swift_slowAlloc();
            *v12 = 0;
            _os_log_impl(&dword_25207E000, v10, v11, "HTAudioRouteRequirementManager handler route changed with both AirPods both in-ear, ending test", v12, 2u);
            MEMORY[0x253099FD0](v12, -1, -1);
          }

          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            sub_25211A01C(&v23);
            sub_2520A2584(&v19, &qword_27F4CE6F0, &qword_2521467A0);
          }

          else
          {
            sub_2520A2584(&v19, &qword_27F4CE6F0, &qword_2521467A0);
          }
        }

        else
        {
          sub_2520A2584(&v19, &qword_27F4CE6F0, &qword_2521467A0);
          v13 = sub_25214196C();
          v14 = sub_252141FBC();
          if (os_log_type_enabled(v13, v14))
          {
            v15 = swift_slowAlloc();
            *v15 = 0;
            _os_log_impl(&dword_25207E000, v13, v14, "HTAudioRouteRequirementManager handler but AirPods out of ear caused route change, ignoring", v15, 2u);
            MEMORY[0x253099FD0](v15, -1, -1);
          }
        }
      }
    }
  }

  v16 = sub_25214196C();
  v17 = sub_252141FBC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_25207E000, v16, v17, "HTAudioRouteRequirementManager handler complete", v18, 2u);
    MEMORY[0x253099FD0](v18, -1, -1);
  }
}

uint64_t sub_252116D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_252116D60, 0, 0);
}

uint64_t sub_252116D60()
{
  if (qword_27F4CD7C8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4D34A8;
  *(v0 + 40) = qword_27F4D34A8;

  return MEMORY[0x2822009F8](sub_252116DF8, v1, 0);
}

uint64_t sub_252116DF8()
{
  v1 = *(*(v0 + 40) + 112);
  *(v0 + 48) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_252116E6C, 0, 0);
}

uint64_t sub_252116E6C()
{
  v1 = v0[6];
  if (!v1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277CBE020]) init];
  }

  v0[7] = v1;
  sub_252141E1C();
  v0[8] = sub_252141E0C();
  v3 = sub_252141DEC();

  return MEMORY[0x2822009F8](sub_252116F24, v3, v2);
}

uint64_t sub_252116F24()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  sub_25211704C(v4, v2, v5, v3);

  return MEMORY[0x2822009F8](sub_252116FEC, 0, 0);
}

uint64_t sub_252116FEC()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_25211704C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v60 = sub_252141A4C();
  v70 = *(v60 - 8);
  v10 = *(v70 + 64);
  MEMORY[0x28223BE20](v60);
  v63 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_252141A8C();
  v69 = *(v59 - 8);
  v12 = *(v69 + 64);
  MEMORY[0x28223BE20](v59);
  v64 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 224);
  *(a1 + 224) = a2;
  v15 = *(a1 + 232);
  *(a1 + 232) = 0;
  v62 = a2;
  sub_25212C9DC(v14, v15);
  v16 = *(a3 + 10);
  if (v16 == 7)
  {
    v17 = 0xE800000000000000;
    v18 = 0x64656C6261736964;
  }

  else if (v16 == 1 && *(a3 + 11) == 1)
  {
    v17 = 0xE900000000000073;
    v18 = 0x6475622068746F62;
  }

  else
  {
    v17 = 0xE700000000000000;
    v18 = 0x64756220656E6FLL;
  }

  v67 = v18;
  if (qword_27F4CD708 != -1)
  {
LABEL_27:
    swift_once();
  }

  v19 = sub_25214198C();
  v20 = __swift_project_value_buffer(v19, qword_27F4CDE68);

  sub_25210AC9C(a3, v77);
  v21 = sub_25214196C();
  v22 = sub_252141FBC();

  sub_25210ACF8(a3);
  v23 = os_log_type_enabled(v21, v22);
  v68 = v5;
  v65 = v20;
  v66 = a3;
  v61 = a4;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v77[0] = v58;
    *v24 = 136446722;
    v25 = sub_2521425DC();
    v27 = sub_2520A5448(v25, v26, v77);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    v28 = sub_2520A5448(v67, v17, v77);

    *(v24 + 14) = v28;
    *(v24 + 22) = 2080;
    *(v24 + 24) = sub_2520A5448(a3[2], a3[3], v77);
    _os_log_impl(&dword_25207E000, v21, v22, "[%{public}s] handleDeviceChanged device placement %s inEar %s ", v24, 0x20u);
    v29 = v58;
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v29, -1, -1);
    MEMORY[0x253099FD0](v24, -1, -1);
  }

  else
  {
  }

  v17 = *(a1 + 88);
  [v17 lock];
  swift_beginAccess();
  a4 = *(a1 + 104);
  a1 = a4 + 56;
  v30 = 1 << *(a4 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(a4 + 56);
  v33 = (v30 + 63) >> 6;
  a3 = v72;
  v67 = v73;
  v69 += 8;
  v70 += 8;

  v5 = 0;
  v34 = 0;
  while (1)
  {
    v35 = v5;
    if (!v32)
    {
      break;
    }

LABEL_18:
    v36 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    sub_25212CB84(*(a4 + 48) + 48 * (v36 | (v5 << 6)), v77);
    sub_25212CBBC(v77, v75);
    if ((v75[16] & 4) != 0)
    {
      v37 = swift_allocObject();
      v58 = v17;
      *(v37 + 16) = v62;
      v38 = v37;
      v57 = v76;
      sub_25212CB84(v75, v74);
      v39 = swift_allocObject();
      sub_25212CBBC(v74, v39 + 16);
      *(v39 + 64) = sub_252130040;
      *(v39 + 72) = v38;
      v56 = v38;
      v73[2] = sub_252130788;
      v73[3] = v39;
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 1107296256;
      v73[0] = sub_2520A3B78;
      v73[1] = &block_descriptor_396;
      v55 = _Block_copy(v72);
      v40 = v62;

      sub_252141A6C();
      v71 = MEMORY[0x277D84F90];
      v54 = sub_2520A2ED4(&qword_27F4CE090, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
      sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0);
      v41 = v63;
      v42 = v60;
      sub_25214218C();
      v43 = v41;
      v44 = v55;
      MEMORY[0x2530991B0](0, v64, v43, v55);
      _Block_release(v44);

      a3 = v72;
      v45 = v42;
      v17 = v58;
      (*v70)(v63, v45);
      (*v69)(v64, v59);

      sub_25212CBF4(v75);
      v34 = 1;
    }

    else
    {
      sub_25212CBF4(v75);
    }
  }

  while (1)
  {
    v5 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v5 >= v33)
    {
      break;
    }

    v32 = *(a1 + 8 * v5);
    ++v35;
    if (v32)
    {
      goto LABEL_18;
    }
  }

  [v17 unlock];
  if ((v34 & 1) == 0)
  {
    v46 = v66;
    sub_25210AC9C(v66, v77);
    v47 = sub_25214196C();
    v48 = sub_252141FBC();
    sub_25210ACF8(v46);
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v77[0] = v50;
      *v49 = 136446466;
      v51 = sub_2521425DC();
      v53 = sub_2520A5448(v51, v52, v77);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_2520A5448(*(v46 + 16), *(v46 + 24), v77);
      _os_log_impl(&dword_25207E000, v47, v48, "[%{public}s] handleDeviceChanged no observers to notify device placement inEar %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v50, -1, -1);
      MEMORY[0x253099FD0](v49, -1, -1);
    }
  }
}

uint64_t sub_252117854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_252117878, 0, 0);
}

uint64_t sub_252117878()
{
  if (qword_27F4CD7C8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4D34A8;
  *(v0 + 40) = qword_27F4D34A8;

  return MEMORY[0x2822009F8](sub_252117910, v1, 0);
}

uint64_t sub_252117910()
{
  v1 = *(*(v0 + 40) + 112);
  *(v0 + 48) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_252117984, 0, 0);
}

uint64_t sub_252117984()
{
  v1 = v0[6];
  if (!v1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277CBE020]) init];
  }

  v0[7] = v1;
  sub_252141E1C();
  v0[8] = sub_252141E0C();
  v3 = sub_252141DEC();

  return MEMORY[0x2822009F8](sub_252117A3C, v3, v2);
}

uint64_t sub_252117A3C()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  sub_252117B04(v4, v2, v5, v3);

  return MEMORY[0x2822009F8](sub_252130830, 0, 0);
}

void sub_252117B04(unint64_t a1, void *a2, uint64_t a3, int64_t a4)
{
  v5 = v4;
  v71 = sub_252141A4C();
  v81 = *(v71 - 8);
  v10 = *(v81 + 64);
  MEMORY[0x28223BE20](v71);
  v72 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_252141A8C();
  v80 = *(v70 - 8);
  v12 = *(v80 + 64);
  MEMORY[0x28223BE20](v70);
  v73 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 224);
  *(a1 + 224) = a2;
  v15 = *(a1 + 232);
  *(a1 + 232) = 1;
  v74 = a2;
  sub_25212C9DC(v14, v15);
  v83 = a3;
  v16 = *(a3 + 40);
  if (v16 == 1)
  {
    if (*(v83 + 44) == 1)
    {
      v17 = 0x800000025214BAA0;
      v18 = 0xD000000000000022;
      v76 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    if (v16 == 7)
    {
      v76 = 0;
      v17 = 0xE800000000000000;
      v18 = 0x64656C6261736964;
      goto LABEL_10;
    }

    if (v16 == 2 && *(v83 + 44) == 2)
    {
      v76 = 0;
      v17 = 0xE900000000000073;
      v18 = 0x6475622068746F62;
      goto LABEL_10;
    }
  }

  v76 = 0;
  v17 = 0xE700000000000000;
  v18 = 0x64756220656E6FLL;
LABEL_10:
  if (qword_27F4CD708 != -1)
  {
LABEL_41:
    swift_once();
  }

  v19 = sub_25214198C();
  v20 = __swift_project_value_buffer(v19, qword_27F4CDE68);

  v21 = v83;
  sub_25210AC9C(v83, v90);
  v75 = v20;
  v22 = sub_25214196C();
  v23 = sub_252141FBC();

  sub_25210ACF8(v21);
  v24 = os_log_type_enabled(v22, v23);
  v78 = v5;
  v79 = a1;
  v77 = a4;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v90[0] = v26;
    *v25 = 136446722;
    v27 = sub_2521425DC();
    v29 = sub_2520A5448(v27, v28, v90);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    v30 = sub_2520A5448(v18, v17, v90);

    *(v25 + 14) = v30;
    *(v25 + 22) = 2080;
    *(v25 + 24) = sub_2520A5448(*(v83 + 16), *(v83 + 24), v90);
    _os_log_impl(&dword_25207E000, v22, v23, "[%{public}s] handleDeviceChanged device placement %s outEar %s", v25, 0x20u);
    swift_arrayDestroy();
    v31 = v26;
    a1 = v79;
    MEMORY[0x253099FD0](v31, -1, -1);
    MEMORY[0x253099FD0](v25, -1, -1);
  }

  else
  {
  }

  v82 = *(a1 + 88);
  [v82 lock];
  swift_beginAccess();
  v32 = *(a1 + 104);
  v17 = v32 + 56;
  v33 = 1 << *(v32 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  a1 = v34 & *(v32 + 56);
  v35 = (v33 + 63) >> 6;
  v5 = v85;
  v69 = v86;
  v80 += 8;
  v81 += 8;

  a4 = 0;
  v36 = 0;
  while (1)
  {
    v37 = a4;
    if (!a1)
    {
      break;
    }

LABEL_21:
    v38 = __clz(__rbit64(a1));
    a1 &= a1 - 1;
    sub_25212CB84(*(v32 + 48) + 48 * (v38 | (a4 << 6)), v90);
    sub_25212CBBC(v90, v88);
    if ((v88[16] & 4) != 0)
    {
      v39 = swift_allocObject();
      *(v39 + 16) = v74;
      v40 = v39;
      v68 = v89;
      sub_25212CB84(v88, v87);
      v41 = swift_allocObject();
      sub_25212CBBC(v87, v41 + 16);
      *(v41 + 64) = sub_25212FD3C;
      *(v41 + 72) = v40;
      v67 = v40;
      v86[2] = sub_252130788;
      v86[3] = v41;
      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 1107296256;
      v86[0] = sub_2520A3B78;
      v86[1] = &block_descriptor_349;
      v66 = _Block_copy(v85);
      v42 = v74;

      sub_252141A6C();
      v84 = MEMORY[0x277D84F90];
      v65 = sub_2520A2ED4(&qword_27F4CE090, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
      sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0);
      v18 = v71;
      v43 = v72;
      sub_25214218C();
      v44 = v43;
      v45 = v66;
      MEMORY[0x2530991B0](0, v73, v44, v66);
      _Block_release(v45);

      v5 = v85;
      (*v81)(v72, v18);
      (*v80)(v73, v70);

      sub_25212CBF4(v88);
      v36 = 1;
    }

    else
    {
      sub_25212CBF4(v88);
    }
  }

  while (1)
  {
    a4 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (a4 >= v35)
    {
      break;
    }

    a1 = *(v17 + 8 * a4);
    ++v37;
    if (a1)
    {
      goto LABEL_21;
    }
  }

  v46 = v82;
  [v82 unlock];
  if ((v36 & 1) == 0)
  {
    v47 = v83;
    sub_25210AC9C(v83, v90);
    v48 = sub_25214196C();
    v49 = sub_252141FBC();
    sub_25210ACF8(v47);
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v90[0] = v51;
      *v50 = 136446466;
      v52 = sub_2521425DC();
      v54 = sub_2520A5448(v52, v53, v90);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2080;
      v46 = v82;
      *(v50 + 14) = sub_2520A5448(*(v83 + 16), *(v83 + 24), v90);
      _os_log_impl(&dword_25207E000, v48, v49, "[%{public}s] handleDeviceChanged no observers to notify device placement outEar %s", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v51, -1, -1);
      MEMORY[0x253099FD0](v50, -1, -1);
    }
  }

  if ((byte_27F4D34A0 & 1) == 0)
  {
    sub_2521420BC();
    if (qword_27F4CD748 != -1)
    {
      swift_once();
    }

    if (qword_27F4CD750 != -1)
    {
      swift_once();
    }

    v55 = sub_25214195C();
    __swift_project_value_buffer(v55, qword_27F4CDF30);
    sub_25214193C();
    byte_27F4D34A0 = 1;
  }

  if (v76)
  {
    v56 = sub_25214196C();
    v57 = sub_252141FBC();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v90[0] = v59;
      *v58 = 136446210;
      v60 = sub_2521425DC();
      v62 = sub_2520A5448(v60, v61, v90);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_25207E000, v56, v57, "[%{public}s] notifying in ear after forcing fit test", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x253099FD0](v59, -1, -1);
      MEMORY[0x253099FD0](v58, -1, -1);
    }

    v63 = v78;
    v64 = v79;
    [v46 lock];
    sub_25211855C(v64, v74);
    if (v63)
    {

      [v46 unlock];
      __break(1u);
    }

    else
    {
      [v46 unlock];
    }
  }
}

uint64_t sub_25211855C(uint64_t a1, void *a2)
{
  v37 = a2;
  v36 = sub_252141A4C();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_252141A8C();
  v6 = *(v34 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(a1 + 104);
  v10 = v9 + 56;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 56);
  v14 = (v11 + 63) >> 6;
  v31 = v43;
  v30 = (v3 + 8);
  v29 = (v6 + 8);

  v16 = 0;
  v32 = v9;
  while (v13)
  {
    v17 = v16;
LABEL_10:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    sub_25212CB84(*(v9 + 48) + 48 * (v18 | (v17 << 6)), v47);
    sub_25212CBBC(v47, v45);
    if ((v45[16] & 4) != 0)
    {
      v19 = swift_allocObject();
      v20 = v37;
      *(v19 + 16) = v37;
      v21 = v19;
      v40 = v46;
      sub_25212CB84(v45, v44);
      v22 = swift_allocObject();
      sub_25212CBBC(v44, v22 + 16);
      *(v22 + 64) = sub_252130774;
      *(v22 + 72) = v21;
      v39 = v21;
      v43[2] = sub_252130788;
      v43[3] = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v43[0] = sub_2520A3B78;
      v43[1] = &block_descriptor_359;
      v38 = _Block_copy(aBlock);
      v23 = v20;

      v24 = v33;
      sub_252141A6C();
      v41 = MEMORY[0x277D84F90];
      sub_2520A2ED4(&qword_27F4CE090, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
      sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0);
      v25 = v35;
      v26 = v36;
      sub_25214218C();
      v27 = v38;
      MEMORY[0x2530991B0](0, v24, v25, v38);
      v9 = v32;
      _Block_release(v27);

      (*v30)(v25, v26);
      (*v29)(v24, v34);
    }

    result = sub_25212CBF4(v45);
    v16 = v17;
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252118A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_252118A70, 0, 0);
}

uint64_t sub_252118A70()
{
  if (qword_27F4CD7C8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4D34A8;
  *(v0 + 40) = qword_27F4D34A8;

  return MEMORY[0x2822009F8](sub_252118B08, v1, 0);
}

uint64_t sub_252118B08()
{
  v1 = *(*(v0 + 40) + 112);
  *(v0 + 48) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_252118B7C, 0, 0);
}

uint64_t sub_252118B7C()
{
  v1 = v0[6];
  if (!v1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277CBE020]) init];
  }

  v0[7] = v1;
  sub_252141E1C();
  v0[8] = sub_252141E0C();
  v3 = sub_252141DEC();

  return MEMORY[0x2822009F8](sub_252118C34, v3, v2);
}

uint64_t sub_252118C34()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  sub_252118CFC(v4, v2, v5, v3);

  return MEMORY[0x2822009F8](sub_252130830, 0, 0);
}

id sub_252118CFC(int64_t a1, void *a2, __int128 *a3, const void *a4)
{
  v5 = a3;
  v8 = a3[3];
  v91 = a3[2];
  v92[0] = v8;
  *(v92 + 12) = *(a3 + 60);
  v9 = a3[1];
  v89 = *a3;
  v90 = v9;
  v74 = sub_252141A4C();
  v78 = *(v74 - 8);
  v10 = *(v78 + 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_252141A8C();
  v77 = *(v72 - 8);
  v12 = *(v77 + 64);
  MEMORY[0x28223BE20](v72);
  v79 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 224);
  *(a1 + 224) = a2;
  v15 = *(a1 + 232);
  *(a1 + 232) = 3;
  v71 = a2;
  sub_25212C9DC(v14, v15);
  v16 = sub_25212A59C(v5);
  v65 = v5;
  if (v16)
  {
    if (qword_27F4CD708 != -1)
    {
LABEL_25:
      swift_once();
    }

    v17 = sub_25214198C();
    __swift_project_value_buffer(v17, qword_27F4CDE68);
    sub_25210AC9C(v5, v80);
    v18 = sub_25214196C();
    v19 = sub_252141FBC();
    sub_25210ACF8(v5);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v80[0] = v21;
      *v20 = 136446466;
      v22 = sub_2521425DC();
      v24 = sub_2520A5448(v22, v23, v80);

      *(v20 + 4) = v24;
      v25 = v65;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_2520A5448(*(v25 + 16), *(v25 + 24), v80);
      _os_log_impl(&dword_25207E000, v18, v19, "[%{public}s] handleDeviceChanged device incompatible:  %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v21, -1, -1);
      MEMORY[0x253099FD0](v20, -1, -1);
    }
  }

  v63 = a4;
  v66 = *(a1 + 88);
  [v66 lock];
  swift_beginAccess();
  v64 = a1;
  v26 = *(a1 + 104);
  v27 = v26 + 56;
  v28 = 1 << *(v26 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v26 + 56);
  a1 = (v28 + 63) >> 6;
  v68 = (v78 + 8);
  v69 = v82;
  v67 = (v77 + 8);

  v31 = 0;
  v32 = 0;
  v5 = 48;
  v70 = v26;
  while (v30)
  {
LABEL_15:
    sub_25212CB84(*(v26 + 48) + 48 * (__clz(__rbit64(v30)) | (v31 << 6)), v80);
    sub_25212CBBC(v80, aBlock);
    if ((v85 & 4) != 0)
    {
      v34 = swift_allocObject();
      v35 = v71;
      *(v34 + 16) = v71;
      v36 = v34;
      v78 = v86;
      sub_25212CB84(aBlock, v83);
      v37 = swift_allocObject();
      sub_25212CBBC(v83, v37 + 16);
      *(v37 + 64) = sub_252130208;
      *(v37 + 72) = v36;
      v77 = v36;
      v82[2] = sub_252130788;
      v82[3] = v37;
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 1107296256;
      v82[0] = sub_2520A3B78;
      v82[1] = &block_descriptor_416;
      v76 = _Block_copy(v81);
      v38 = v35;

      v39 = v79;
      sub_252141A6C();
      v80[10] = MEMORY[0x277D84F90];
      v75 = sub_2520A2ED4(&qword_27F4CE090, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
      sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0);
      v40 = v73;
      v41 = v74;
      sub_25214218C();
      v42 = v39;
      a4 = v76;
      MEMORY[0x2530991B0](0, v42, v40, v76);
      _Block_release(a4);

      v43 = v40;
      v26 = v70;
      v44 = v41;
      v5 = 48;
      (*v68)(v43, v44);
      (*v67)(v79, v72);

      v32 = 1;
    }

    v30 &= v30 - 1;
    sub_25212CBF4(aBlock);
  }

  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v33 >= a1)
    {
      break;
    }

    v30 = *(v27 + 8 * v33);
    ++v31;
    if (v30)
    {
      v31 = v33;
      goto LABEL_15;
    }
  }

  result = [v66 unlock];
  if ((v32 & 1) == 0)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v46 = sub_25214198C();
    __swift_project_value_buffer(v46, qword_27F4CDE68);
    v47 = v65;
    sub_25210AC9C(v65, v80);
    v48 = sub_25214196C();
    v49 = sub_252141FBC();
    sub_25210ACF8(v47);
    v50 = os_log_type_enabled(v48, v49);
    v51 = v64;
    if (v50)
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v80[0] = v53;
      *v52 = 136446466;
      v54 = sub_2521425DC();
      v56 = sub_2520A5448(v54, v55, v80);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_2520A5448(*(v47 + 16), *(v47 + 24), v80);
      _os_log_impl(&dword_25207E000, v48, v49, "[%{public}s] handleDeviceChanged no observers to notify device incompatible %s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v53, -1, -1);
      MEMORY[0x253099FD0](v52, -1, -1);
    }

    v57 = *(v51 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = v51;
    v59 = v89;
    *(v58 + 40) = v90;
    v60 = v92[0];
    *(v58 + 56) = v91;
    *(v58 + 72) = v60;
    *(v58 + 84) = *(v92 + 12);
    *(v58 + 24) = v59;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_252130778;
    *(v61 + 24) = v58;
    v87 = sub_2520ADA58;
    v88 = v61;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    v85 = sub_252083924;
    v86 = &block_descriptor_427;
    v62 = _Block_copy(aBlock);
    sub_25210AC9C(v47, v80);

    dispatch_sync(v57, v62);
    _Block_release(v62);
    LOBYTE(v57) = swift_isEscapingClosureAtFileLocation();

    if (v57)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2521195F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  return MEMORY[0x2822009F8](sub_25211961C, 0, 0);
}

uint64_t sub_25211961C()
{
  if (qword_27F4CD7C8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4D34A8;
  *(v0 + 120) = qword_27F4D34A8;

  return MEMORY[0x2822009F8](sub_2521196B4, v1, 0);
}

uint64_t sub_2521196B4()
{
  v1 = *(*(v0 + 120) + 112);
  *(v0 + 128) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_252119728, 0, 0);
}

uint64_t sub_252119728()
{
  v17 = v0;
  v1 = v0[16];
  if (!v1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277CBE020]) init];
  }

  v0[17] = v1;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v3 = sub_25214198C();
  __swift_project_value_buffer(v3, qword_27F4CDE68);
  sub_25210AC9C(v2, (v0 + 2));
  v4 = sub_25214196C();
  v5 = sub_252141FBC();
  sub_25210ACF8(v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14];
    v7 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446466;
    v10 = sub_2521425DC();
    v12 = sub_2520A5448(v10, v11, &v16);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2520A5448(*(v7 + 16), *(v7 + 24), &v16);
    _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] handleDeviceLost candidate %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v9, -1, -1);
    MEMORY[0x253099FD0](v8, -1, -1);
  }

  sub_252141E1C();
  v0[18] = sub_252141E0C();
  v14 = sub_252141DEC();

  return MEMORY[0x2822009F8](sub_252119950, v14, v13);
}

uint64_t sub_252119950()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];

  sub_252119A78(v4, v5, v2);

  return MEMORY[0x2822009F8](sub_252119A18, 0, 0);
}

uint64_t sub_252119A18()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_252119A78(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 248);
  v7 = sub_2520F8B10(a2);

  if (v7)
  {
LABEL_7:
    v17 = sub_25211A01C(a2);
    v18 = *(*(a1 + 248) + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue);
    MEMORY[0x28223BE20](v17);
    v20 = v19;
    sub_25214200C();

    if (v48 == 1)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v21 = sub_25214198C();
      __swift_project_value_buffer(v21, qword_27F4CDE68);
      v22 = sub_25214196C();
      v23 = sub_252141FBC();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v48 = v25;
        *v24 = 136446210;
        v26 = sub_2521425DC();
        v28 = sub_2520A5448(v26, v27, &v48);

        *(v24 + 4) = v28;
        _os_log_impl(&dword_25207E000, v22, v23, "[%{public}s] handleDeviceLost keeping device until test ends", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        v29 = v25;
LABEL_21:
        MEMORY[0x253099FD0](v29, -1, -1);
        MEMORY[0x253099FD0](v24, -1, -1);
        goto LABEL_22;
      }
    }

    else
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v30 = sub_25214198C();
      __swift_project_value_buffer(v30, qword_27F4CDE68);
      v31 = sub_25214196C();
      v32 = sub_252141FBC();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v48 = v34;
        *v33 = 136446210;
        v35 = sub_2521425DC();
        v37 = sub_2520A5448(v35, v36, &v48);

        *(v33 + 4) = v37;
        _os_log_impl(&dword_25207E000, v31, v32, "[%{public}s] handleDeviceLost cleaning up", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x253099FD0](v34, -1, -1);
        MEMORY[0x253099FD0](v33, -1, -1);
      }

      v38 = *(a1 + 224);
      *(a1 + 224) = 0;
      v39 = *(a1 + 232);
      *(a1 + 232) = -1;
      sub_25212C9DC(v38, v39);
      v22 = *(a1 + 248);
      sub_2520FCE54();
    }

    goto LABEL_22;
  }

  v8 = *(a1 + 224);
  v9 = *(a1 + 232);
  if (v9 == 255)
  {
    sub_25212D894(*(a1 + 224), 0xFFu);
    v13 = a3;
    sub_25212C9DC(v8, 0xFFu);
    sub_25212C9DC(a3, 3u);
  }

  else
  {
    v48 = *(a1 + 224);
    v49 = v9;
    v46 = a3;
    v47 = 3;
    sub_25212D894(v8, v9);
    v10 = a3;
    sub_25212D894(v8, v9);
    v11 = _s11HearingTest19HTAudioDeviceStatusO2eeoiySbAC_ACtFZ_0(&v48, &v46);
    sub_25212C9F0(v46, v47);
    sub_25212C9F0(v48, v49);
    sub_25212C9DC(v8, v9);
    if (v11)
    {
      goto LABEL_7;
    }
  }

  v14 = *(*(a1 + 248) + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue);
  MEMORY[0x28223BE20](v12);
  v16 = v15;
  sub_25214200C();

  if (v48 == 1)
  {
    goto LABEL_7;
  }

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v40 = sub_25214198C();
  __swift_project_value_buffer(v40, qword_27F4CDE68);
  sub_25210AC9C(a2, &v48);
  v22 = sub_25214196C();
  v41 = sub_252141FBC();
  sub_25210ACF8(a2);
  if (os_log_type_enabled(v22, v41))
  {
    v24 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v48 = v42;
    *v24 = 136446466;
    v43 = sub_2521425DC();
    v45 = sub_2520A5448(v43, v44, &v48);

    *(v24 + 4) = v45;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_2520A5448(a2[2], a2[3], &v48);
    _os_log_impl(&dword_25207E000, v22, v41, "[%{public}s] handleDeviceLost ignored: %s", v24, 0x16u);
    swift_arrayDestroy();
    v29 = v42;
    goto LABEL_21;
  }

LABEL_22:
}

uint64_t sub_25211A03C(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE740, &qword_2521467E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16[-v9];
  v11 = sub_252141E3C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v13 = a1[3];
  *(v12 + 64) = a1[2];
  *(v12 + 80) = v13;
  *(v12 + 92) = *(a1 + 60);
  v14 = a1[1];
  *(v12 + 32) = *a1;
  *(v12 + 48) = v14;
  *(v12 + 112) = v3;
  *(v12 + 120) = v6;
  sub_25210AC9C(a1, v16);

  sub_252113050(0, 0, v10, a3, v12);
}

uint64_t sub_25211A194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  return MEMORY[0x2822009F8](sub_25211A1B8, 0, 0);
}

uint64_t sub_25211A1B8()
{
  if (qword_27F4CD7C8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F4D34A8;
  *(v0 + 120) = qword_27F4D34A8;

  return MEMORY[0x2822009F8](sub_25211A250, v1, 0);
}

uint64_t sub_25211A250()
{
  v1 = *(*(v0 + 120) + 112);
  *(v0 + 128) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_25211A2C4, 0, 0);
}

uint64_t sub_25211A2C4()
{
  v17 = v0;
  v1 = v0[16];
  if (!v1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277CBE020]) init];
  }

  v0[17] = v1;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v3 = sub_25214198C();
  __swift_project_value_buffer(v3, qword_27F4CDE68);
  sub_25210AC9C(v2, (v0 + 2));
  v4 = sub_25214196C();
  v5 = sub_252141FBC();
  sub_25210ACF8(v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14];
    v7 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446466;
    v10 = sub_2521425DC();
    v12 = sub_2520A5448(v10, v11, &v16);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2520A5448(*(v7 + 16), *(v7 + 24), &v16);
    _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] handleDeviceLost device lostConnection: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v9, -1, -1);
    MEMORY[0x253099FD0](v8, -1, -1);
  }

  sub_252141E1C();
  v0[18] = sub_252141E0C();
  v14 = sub_252141DEC();

  return MEMORY[0x2822009F8](sub_25211A4EC, v14, v13);
}

uint64_t sub_25211A4EC()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[13];
  v3 = v0[14];

  sub_25211A5A0(v4, v2, v3);

  return MEMORY[0x2822009F8](sub_252130834, 0, 0);
}

void sub_25211A5A0(uint64_t a1, void *a2, uint64_t a3)
{
  v42[1] = a3;
  v50 = sub_252141A4C();
  v5 = *(v50 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_252141A8C();
  v8 = *(v48 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v48);
  v47 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(a1 + 88);
  [v43 lock];
  swift_beginAccess();
  v55 = a1;
  v12 = *(a1 + 104);
  v13 = v12 + 56;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 56);
  v17 = (v14 + 63) >> 6;
  v46 = v59;
  v45 = (v5 + 8);
  v44 = (v8 + 8);
  v56 = v12;

  v18 = 0;
  v19 = 0;
  v51 = a2;
  while (v16)
  {
LABEL_10:
    sub_25212CB84(*(v56 + 48) + 48 * (__clz(__rbit64(v16)) | (v18 << 6)), &v63);
    sub_25212CBBC(&v63, v61);
    v21 = v55;
    v22 = *(v55 + 224);
    *(v55 + 224) = a2;
    v23 = *(v21 + 232);
    *(v21 + 232) = 2;
    v24 = a2;
    sub_25212C9DC(v22, v23);
    if ((v61[16] & 4) != 0)
    {
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      v26 = v25;
      v54 = v62;
      sub_25212CB84(v61, v60);
      v27 = swift_allocObject();
      sub_25212CBBC(v60, v27 + 16);
      *(v27 + 64) = sub_25212FB5C;
      *(v27 + 72) = v26;
      v53 = v26;
      v59[2] = sub_252130788;
      v59[3] = v27;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v59[0] = sub_2520A3B78;
      v59[1] = &block_descriptor_331;
      v52 = _Block_copy(aBlock);
      v28 = v24;

      v29 = v47;
      sub_252141A6C();
      v57 = MEMORY[0x277D84F90];
      sub_2520A2ED4(&qword_27F4CE090, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
      sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0);
      v30 = v49;
      v31 = v50;
      sub_25214218C();
      v32 = v52;
      MEMORY[0x2530991B0](0, v29, v30, v52);
      _Block_release(v32);
      a2 = v51;

      (*v45)(v30, v31);
      (*v44)(v29, v48);

      v19 = 1;
    }

    v16 &= v16 - 1;
    sub_25212CBF4(v61);
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_25:
      swift_once();
      goto LABEL_14;
    }

    if (v20 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v18;
    if (v16)
    {
      v18 = v20;
      goto LABEL_10;
    }
  }

  [v43 unlock];
  if (v19)
  {
    goto LABEL_17;
  }

  if (qword_27F4CD708 != -1)
  {
    goto LABEL_25;
  }

LABEL_14:
  v33 = sub_25214198C();
  __swift_project_value_buffer(v33, qword_27F4CDE68);
  v34 = sub_25214196C();
  v35 = sub_252141FBC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v63 = v37;
    *v36 = 136446210;
    v38 = sub_2521425DC();
    v40 = sub_2520A5448(v38, v39, &v63);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_25207E000, v34, v35, "[%{public}s] handleDeviceLost no observers to notify device lostConnection", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x253099FD0](v37, -1, -1);
    MEMORY[0x253099FD0](v36, -1, -1);
  }

LABEL_17:
  if ((byte_27F4D34A0 & 1) == 0)
  {
    sub_2521420BC();
    if (qword_27F4CD748 != -1)
    {
      swift_once();
    }

    if (qword_27F4CD750 != -1)
    {
      swift_once();
    }

    v41 = sub_25214195C();
    __swift_project_value_buffer(v41, qword_27F4CDF30);
    sub_25214193C();
    byte_27F4D34A0 = 1;
  }
}

void sub_25211AD00(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  ObjectType = swift_getObjectType();
  v12 = a3;
  v13 = a4;
  v8 = *(a2 + 96);
  v9 = a3;
  v8(&v12, ObjectType, a2);
  v10 = v12;
  v11 = v13;

  sub_25212C9F0(v10, v11);
}

uint64_t sub_25211AD94(uint64_t a1)
{
  v3 = *v1;
  v4 = *(a1 + 48);
  if (*(a1 + 48))
  {
    v5 = 7562617;
  }

  else
  {
    v5 = 28526;
  }

  if (*(a1 + 48))
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (qword_27F4CD7A0 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3490 == 1)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v7 = sub_25214198C();
    __swift_project_value_buffer(v7, qword_27F4CDE68);
    sub_25210AC9C(a1, v17);

    v8 = sub_25214196C();
    v9 = sub_252141FBC();
    sub_25210ACF8(a1);

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17[0] = v11;
      *v10 = 136446722;
      v12 = sub_2521425DC();
      v14 = sub_2520A5448(v12, v13, v17);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), v17);
      *(v10 + 22) = 2080;
      v15 = sub_2520A5448(v5, v6, v17);

      *(v10 + 24) = v15;
      _os_log_impl(&dword_25207E000, v8, v9, "[%{public}s] handleDeviceChanged %s is audio owner %s", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v11, -1, -1);
      MEMORY[0x253099FD0](v10, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }

  return v4;
}

uint64_t sub_25211B004(uint64_t a1)
{
  v3 = *v1;
  v4 = *(a1 + 49);
  switch(v4)
  {
    case 20:
      if (qword_27F4CD7A0 != -1)
      {
        swift_once();
      }

      if (byte_27F4D3490 != 1)
      {
        return 1;
      }

      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v18 = sub_25214198C();
      __swift_project_value_buffer(v18, qword_27F4CDE68);
      sub_25210AC9C(a1, v31);
      v6 = sub_25214196C();
      v7 = sub_252141FBC();
      sub_25210ACF8(a1);
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_26;
      }

      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v31[0] = v9;
      *v8 = 136446466;
      v19 = sub_2521425DC();
      v21 = sub_2520A5448(v19, v20, v31);

      *(v8 + 4) = v21;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), v31);
      v13 = "[%{public}s] handleDeviceChanged headphones: %s";
      goto LABEL_25;
    case 18:
      if (qword_27F4CD7A0 != -1)
      {
        swift_once();
      }

      if (byte_27F4D3490 != 1)
      {
        return 1;
      }

      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v14 = sub_25214198C();
      __swift_project_value_buffer(v14, qword_27F4CDE68);
      sub_25210AC9C(a1, v31);
      v6 = sub_25214196C();
      v7 = sub_252141FBC();
      sub_25210ACF8(a1);
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_26;
      }

      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v31[0] = v9;
      *v8 = 136446466;
      v15 = sub_2521425DC();
      v17 = sub_2520A5448(v15, v16, v31);

      *(v8 + 4) = v17;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), v31);
      v13 = "[%{public}s] handleDeviceChanged microphone: %s";
      goto LABEL_25;
    case 16:
      if (qword_27F4CD7A0 != -1)
      {
        swift_once();
      }

      if (byte_27F4D3490 != 1)
      {
        return 1;
      }

      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v5 = sub_25214198C();
      __swift_project_value_buffer(v5, qword_27F4CDE68);
      sub_25210AC9C(a1, v31);
      v6 = sub_25214196C();
      v7 = sub_252141FBC();
      sub_25210ACF8(a1);
      if (!os_log_type_enabled(v6, v7))
      {
LABEL_26:

        return 1;
      }

      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v31[0] = v9;
      *v8 = 136446466;
      v10 = sub_2521425DC();
      v12 = sub_2520A5448(v10, v11, v31);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), v31);
      v13 = "[%{public}s] handleDeviceChanged headset: %s";
LABEL_25:
      _os_log_impl(&dword_25207E000, v6, v7, v13, v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v9, -1, -1);
      MEMORY[0x253099FD0](v8, -1, -1);
      goto LABEL_26;
  }

  if (qword_27F4CD7A0 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3490 == 1)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v23 = sub_25214198C();
    __swift_project_value_buffer(v23, qword_27F4CDE68);
    sub_25210AC9C(a1, v31);
    v24 = sub_25214196C();
    v25 = sub_252141FBC();
    sub_25210ACF8(a1);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v31[0] = v27;
      *v26 = 136446466;
      v28 = sub_2521425DC();
      v30 = sub_2520A5448(v28, v29, v31);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_2520A5448(*(a1 + 16), *(a1 + 24), v31);
      _os_log_impl(&dword_25207E000, v24, v25, "[%{public}s] handleDeviceChanged not audio device: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v27, -1, -1);
      MEMORY[0x253099FD0](v26, -1, -1);
    }
  }

  return 0;
}

void HTRequirementStatusManager.init(_:)(void *a1)
{
  v141 = a1;
  v133 = *v1;
  v2 = sub_2521418EC();
  v135 = *(v2 - 8);
  v136 = v2;
  v3 = *(v135 + 64);
  MEMORY[0x28223BE20](v2);
  v134 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252141FEC();
  v6 = *(v5 - 1);
  v144 = v5;
  v145 = v6;
  v7 = *(v6 + 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_252141FCC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_252141A8C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = v1;
  v1[4] = 0;
  v1[5] = 0;
  *(v1 + 3) = xmmword_252143B10;
  *(v1 + 64) = 0;
  v137 = sub_2520A5A94(0, &qword_27F4CDC50, 0x277D85C78);
  v139 = " more than 1 year old";
  sub_252141A6C();
  aBlock = MEMORY[0x277D84F90];
  v142 = sub_2520A2ED4(&qword_27F4CE0E0, MEMORY[0x277D85230]);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD970, &qword_252143B50);
  v19 = sub_2520A2F1C(&qword_27F4CE0F0, &qword_27F4CD970, &qword_252143B50);
  v143 = v10;
  sub_25214218C();
  v20 = *MEMORY[0x277D85260];
  v21 = v144;
  v22 = v145 + 104;
  v138 = *(v145 + 13);
  v138(v9, v20, v144);
  v23 = sub_25214202C();
  v24 = v140;
  v140[9] = v23;
  v139 = ".default-observer-queue";
  sub_252141A6C();
  aBlock = MEMORY[0x277D84F90];
  v130 = v18;
  v129 = v19;
  sub_25214218C();
  v128 = v20;
  v25 = v20;
  v26 = v138;
  v145 = v22;
  v138(v9, v25, v21);
  v131 = v17;
  v132 = v13;
  v139 = v9;
  *(v24 + 80) = sub_25214202C();
  *(v24 + 88) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v27 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v28 = MEMORY[0x277D84FA0];
  *(v24 + 96) = v27;
  *(v24 + 104) = v28;
  *(v24 + 112) = v28;
  *(v24 + 120) = 0u;
  *(v24 + 136) = 0u;
  *(v24 + 152) = 0u;
  *(v24 + 168) = 0u;
  *(v24 + 180) = 0u;
  *(v24 + 200) = [objc_allocWithZone(MEMORY[0x277CBE030]) init];
  *(v24 + 208) = 0;
  *(v24 + 216) = 0;
  *(v24 + 224) = 0;
  *(v24 + 232) = -1;
  *(v24 + 240) = 0;
  if (qword_27F4CD7C0 != -1)
  {
    swift_once();
  }

  v29 = qword_27F4D3498;
  *(v24 + 248) = qword_27F4D3498;
  *(v24 + 256) = 0;
  v30 = qword_27F4CD700;
  v31 = v29;
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = qword_27F4D3430;
  *(v24 + 264) = qword_27F4D3430;
  *(v24 + 272) = 0;
  *(v24 + 280) = 0;
  *(v24 + 288) = 0xE000000000000000;
  *(v24 + 296) = 0;
  *(v24 + 304) = -258;
  *(v24 + 312) = 0;
  *(v24 + 320) = -258;
  *(v24 + 328) = 0;
  *(v24 + 340) = 30;
  *(v24 + 336) = -16843010;
  *(v24 + 344) = 0;
  *(v24 + 352) = 0;
  *(v24 + 360) = -2;
  *(v24 + 368) = 0;
  *(v24 + 376) = 0xE000000000000000;
  *(v24 + 384) = 0;
  v33 = qword_27F4CD708;
  v34 = v32;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = sub_25214198C();
  v127 = __swift_project_value_buffer(v35, qword_27F4CDE68);
  v36 = sub_25214196C();
  v37 = sub_252141FBC();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock = v39;
    *v38 = 136446210;
    v40 = sub_2521425DC();
    v42 = v34;
    v43 = sub_2520A5448(v40, v41, &aBlock);

    *(v38 + 4) = v43;
    v34 = v42;
    _os_log_impl(&dword_25207E000, v36, v37, "[%{public}s] Init status mgr", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x253099FD0](v39, -1, -1);
    MEMORY[0x253099FD0](v38, -1, -1);
  }

  v44 = v141;
  if (v141)
  {
    v45 = v141;
  }

  else
  {
    sub_252141A6C();
    aBlock = MEMORY[0x277D84F90];
    sub_25214218C();
    v26(v139, v128, v144);
    v45 = sub_25214202C();
  }

  v46 = *(v24 + 208);
  *(v24 + 208) = v45;
  v47 = v44;
  v48 = v45;

  v49 = *(v24 + 264);
  *(v24 + 264) = v34;

  v50 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v51 = sub_252141B6C();
  v52 = [v50 initWithSuiteName_];

  if (!v52)
  {
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v144 = v47;
  v53 = sub_252141B6C();
  v54 = [v52 BOOLForKey_];

  v145 = v48;
  if (!v54)
  {
    goto LABEL_35;
  }

  v55 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v56 = sub_252141B6C();
  v57 = [v55 initWithSuiteName_];

  if (!v57)
  {
    goto LABEL_43;
  }

  v58 = sub_252141B6C();
  v59 = [v57 integerForKey_];

  NoiseMode.init(rawValue:)(v59);
  v60 = aBlock;
  v61 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v62 = sub_252141B6C();
  v63 = [v61 initWithSuiteName_];

  if (!v63)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v64 = sub_252141B6C();
  [v63 floatForKey_];
  v66 = v65;

  v67 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v68 = sub_252141B6C();
  v69 = [v67 initWithSuiteName_];

  if (!v69)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v70 = sub_252141B6C();
  [v69 floatForKey_];
  v72 = v71;

  v73 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v74 = sub_252141B6C();
  v75 = [v73 initWithSuiteName_];

  if (!v75)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v76 = sub_252141B6C();
  [v75 floatForKey_];
  v78 = v77;

  if (v66 == 0.0)
  {
    v66 = 10.5;
  }

  if (v72 == 0.0)
  {
    v72 = 5.5;
  }

  if (v78 == 0.0)
  {
    v78 = 2.5;
  }

  if (qword_27F4CD7B0 != -1)
  {
    swift_once();
  }

  if (byte_27F4D3492 != 1)
  {
    goto LABEL_31;
  }

  v79 = sub_25214196C();
  v80 = sub_252141FBC();
  if (!os_log_type_enabled(v79, v80))
  {

    goto LABEL_31;
  }

  LODWORD(v143) = v60;
  v81 = swift_slowAlloc();
  v142 = swift_slowAlloc();
  aBlock = v142;
  *v81 = 136447234;
  v82 = sub_2521425DC();
  v84 = sub_2520A5448(v82, v83, &aBlock);

  *(v81 + 4) = v84;
  *(v81 + 12) = 2048;
  v85 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v86 = sub_252141B6C();
  v87 = [v85 initWithSuiteName_];

  if (v87)
  {
    v88 = sub_252141B6C();
    v89 = [v87 integerForKey_];

    *(v81 + 14) = v89;
    *(v81 + 22) = 2048;
    *(v81 + 24) = v66;
    *(v81 + 32) = 2048;
    *(v81 + 34) = v72;
    *(v81 + 42) = 2048;
    *(v81 + 44) = v78;
    _os_log_impl(&dword_25207E000, v79, v80, "[%{public}s] UserDefaults noiseMode %ld total time %f, transit time %f, temporary time %f", v81, 0x34u);
    v90 = v142;
    __swift_destroy_boxed_opaque_existential_0(v142);
    MEMORY[0x253099FD0](v90, -1, -1);
    MEMORY[0x253099FD0](v81, -1, -1);

    v60 = v143;
LABEL_31:
    if (v60 == 15)
    {
      v91 = 7;
    }

    else
    {
      v91 = v60;
    }

    LOBYTE(aBlock) = v91;
    v92 = *(v24 + 208);
    type metadata accessor for HTNoiseSynth();
    swift_allocObject();
    v93 = v92;
    v94 = HTNoiseSynth.init(_:totalTime:transitTime:temporaryTime:queue:)(&aBlock, v92, v66, v72, v78);
    v95 = *(v24 + 256);
    *(v24 + 256) = v94;

    v48 = v145;
LABEL_35:
    v96 = v134;
    sub_2521418DC();
    v97 = sub_2521418AC();
    v99 = v98;
    (*(v135 + 8))(v96, v136);
    *(v24 + 16) = v97;
    *(v24 + 24) = v99;
    sub_25211E3AC(v48);

    v100 = *(v24 + 248);
    v101 = swift_allocObject();
    swift_weakInit();
    v102 = *&v100[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
    v103 = swift_allocObject();
    v103[2] = v100;
    v103[3] = sub_25212C8F8;
    v103[4] = v101;
    v104 = swift_allocObject();
    *(v104 + 16) = sub_25212C948;
    *(v104 + 24) = v103;
    v150 = sub_2520AD484;
    v151 = v104;
    aBlock = MEMORY[0x277D85DD0];
    v147 = 1107296256;
    v148 = sub_252083924;
    v149 = &block_descriptor_9;
    v105 = _Block_copy(&aBlock);
    v106 = v100;

    swift_retain_n();

    dispatch_sync(v102, v105);

    _Block_release(v105);
    LOBYTE(v102) = swift_isEscapingClosureAtFileLocation();

    if (v102)
    {
      __break(1u);
    }

    else
    {
      v107 = *(v24 + 248);
      v108 = *&v107[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
      v109 = swift_allocObject();
      *(v109 + 16) = v107;
      *(v109 + 24) = v24;
      v110 = swift_allocObject();
      *(v110 + 16) = sub_25212C9BC;
      *(v110 + 24) = v109;
      v150 = sub_2520ADA58;
      v151 = v110;
      aBlock = MEMORY[0x277D85DD0];
      v147 = 1107296256;
      v148 = sub_252083924;
      v149 = &block_descriptor_26;
      v111 = _Block_copy(&aBlock);
      swift_retain_n();
      v112 = v107;

      dispatch_sync(v108, v111);

      _Block_release(v111);
      LOBYTE(v108) = swift_isEscapingClosureAtFileLocation();

      if ((v108 & 1) == 0)
      {
        v113 = [objc_opt_self() defaultCenter];
        [v113 addObserver:v24 selector:sel_handleRouteChangeWithNotification_ name:*MEMORY[0x277CB8210] object:0];

        if (qword_27F4CD6F0 == -1)
        {
LABEL_38:
          v114 = qword_27F4D3420;
          v115 = swift_allocObject();
          swift_weakInit();
          v116 = (v114 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidEnterBackgroundForRequirements);
          v117 = *(v114 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidEnterBackgroundForRequirements);
          v118 = *(v114 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidEnterBackgroundForRequirements + 8);
          *v116 = sub_25212C9C4;
          v116[1] = v115;

          sub_2520A3730(v117);

          v119 = swift_allocObject();
          swift_weakInit();
          v120 = (v114 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillDeactivateForRequirements);
          v121 = *(v114 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillDeactivateForRequirements);
          v122 = *(v114 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationWillDeactivateForRequirements + 8);
          *v120 = sub_25212C9CC;
          v120[1] = v119;

          sub_2520A3730(v121);

          v123 = swift_allocObject();
          swift_weakInit();

          v124 = (v114 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidActivateForRequirements);
          v125 = *(v114 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidActivateForRequirements);
          v126 = *(v114 + OBJC_IVAR____TtC11HearingTest23HTNSNotificationManager_onNotificationDidActivateForRequirements + 8);
          *v124 = sub_25212C9D4;
          v124[1] = v123;

          sub_2520A3730(v125);

          return;
        }

LABEL_41:
        swift_once();
        goto LABEL_38;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

LABEL_47:
  __break(1u);
}

uint64_t sub_25211C79C(_OWORD *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2521195D8(a1);
  }

  return result;
}

uint64_t sub_25211C7FC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_25211E7F0();
  }

  return result;
}

uint64_t sub_25211C854()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_25212D06C(1);
  }

  return result;
}

uint64_t sub_25211C8B0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_25211EB24();
    sub_25212D06C(0);
  }

  return result;
}

uint64_t sub_25211C910(uint64_t a1, int a2)
{
  v154 = a2;
  v153 = *v2;
  v4 = sub_252141D3C();
  *(v4 + 16) = 16;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  v5 = sub_252141D3C();
  *(v5 + 16) = 16;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  v169 = 0;
  v6 = sub_252141D3C();
  *(v6 + 16) = 16;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  v165 = v6;
  v166 = 0;
  *&v167[1] = 0;
  v7 = *(a1 + OBJC_IVAR____TtC11HearingTest13HTNoiseOutput_queue);
  v159 = a1;
  v161 = a1;
  v158 = v7;
  sub_25214200C();
  v8 = v162 != 0;
  v170 = v162 != 0;
  v168 = v162 != 0;
  *v167 = v162 != 0;
  if (v162)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  if (v162)
  {
    v10 = -63;
  }

  else
  {
    v10 = -64;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = (v8 << 8) | 0x8000;
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = ((v8 & 1) << 8) | 0xC000;
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  *(v13 + 28) = 0x8000;
  v151 = v13;
  *(v13 + 24) = v9;
  v14 = v4;
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = 3;
  v155 = v15;
  *(v15 + 32) = v10;
  v150 = v11;
  v160 = v5;
  if (v154)
  {
    MEMORY[0x28223BE20](v15);
    swift_bridgeObjectRetain_n();

    v16 = sub_25214200C();
    v17 = v162 < 3;
  }

  else
  {
    swift_bridgeObjectRetain_n();

    v17 = 0;
  }

  MEMORY[0x28223BE20](v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB00, &qword_252143CA8);
  sub_25214200C();
  v18 = v162[2];

  if (v18 >= 0x10)
  {
    v20 = 16;
  }

  else
  {
    v20 = v18;
  }

  v21 = v153;
  v152 = v12;
  if (v18)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_2520A59A0(v14);
    }

    v22 = v160;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_2520A59A0(v160);
      v22 = isUniquelyReferenced_nonNull_native;
    }

    v23 = 0;
    v160 = v22;
    v21 = v22 + 32;
    v24 = v14 + 32;
    v157 = v14;
    while (1)
    {
      v25 = &v149;
      MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
      sub_25214200C();
      if (v23 >= v162[2])
      {
        break;
      }

      v26 = *&v162[v23 + 4];

      if (v23 == 16)
      {
        goto LABEL_114;
      }

      v27 = v26;
      v28 = v27 - flt_28644DFB0[v23 + 8];
      if (v17)
      {
        v29 = flt_28644E010[v23 + 8];
        v28 = v28 * ((powf(v29, 4.0) * 148840000.0) / ((((v29 * v29) + 424.36) * ((v29 * v29) + 148840000.0)) * sqrtf(((v29 * v29) + 11599.0) * ((v29 * v29) + 544500.0))));
      }

      LODWORD(v25) = v157;
      if (v28 < 0.0)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v28;
      }

      if (v23 >= *(v157 + 2))
      {
        goto LABEL_115;
      }

      v31 = fminf(v30, 90.0);
      *&v24[4 * v23] = v31;
      if (v23 >= *(v160 + 16))
      {
        goto LABEL_116;
      }

      *(v21 + 4 * v23) = v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_2520A59A0(v6);
        v6 = isUniquelyReferenced_nonNull_native;
      }

      if (v23 >= *(v6 + 16))
      {
        goto LABEL_117;
      }

      *(v6 + 4 * v23++ + 32) = v31;
      if (v20 == v23)
      {
        v165 = v6;
        v21 = v153;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v157 = v14;
LABEL_34:
  v32 = v156[33];
  LODWORD(v24) = *(v32 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck1A);
  v167[1] = *(v32 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck1A);
  LODWORD(v25) = *(v32 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck1B);
  v167[2] = *(v32 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck1B);
  LODWORD(v23) = *(v32 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck2A);
  v167[3] = *(v32 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck2A);
  LODWORD(v20) = *(v32 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck2B);
  v167[4] = *(v32 + OBJC_IVAR____TtC11HearingTest15HTNoiseAnalyzer_currentCheck2B);
  if (qword_27F4CD7B0 != -1)
  {
LABEL_118:
    isUniquelyReferenced_nonNull_native = swift_once();
  }

  if (byte_27F4D3492 == 1)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v33 = sub_25214198C();
    __swift_project_value_buffer(v33, qword_27F4CDE68);
    v34 = sub_25214196C();
    v35 = sub_252141FBC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v162 = v149;
      *v36 = 136447234;
      v37 = sub_2521425DC();
      v39 = v35;
      v40 = sub_2520A5448(v37, v38, &v162);

      *(v36 + 4) = v40;
      *(v36 + 12) = 1024;
      *(v36 + 14) = v24;
      *(v36 + 18) = 1024;
      *(v36 + 20) = v25;
      *(v36 + 24) = 1024;
      *(v36 + 26) = v23;
      *(v36 + 30) = 1024;
      *(v36 + 32) = v20;
      v41 = v39;
      v21 = v153;
      _os_log_impl(&dword_25207E000, v34, v41, "[%{public}s] highStatNoise %{BOOL}d, highInstNoise %{BOOL}d, modHighStatNoise %{BOOL}d, modHighInstNoise %{BOOL}d ", v36, 0x24u);
      v42 = v149;
      __swift_destroy_boxed_opaque_existential_0(v149);
      MEMORY[0x253099FD0](v42, -1, -1);
      MEMORY[0x253099FD0](v36, -1, -1);
    }
  }

  if ((v154 & 1) == 0)
  {
    v45 = v150;
LABEL_60:
    v46 = v152;
    v47 = v151;
    goto LABEL_99;
  }

  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  sub_25214200C();
  if (v168)
  {
    v43 = 256;
  }

  else
  {
    v43 = 0;
  }

  v44 = v43 | v169;
  v45 = v150;
  v46 = v152;
  v47 = v151;
  if (v162 == 3)
  {
    v64 = 0xD000000000000027;
    v79 = *(v152 + 16);
    v80 = v160;
    *(v152 + 16) = v160;
    v81 = *(v46 + 24);
    *(v46 + 24) = v44 | 0x8000;

    j__swift_bridgeObjectRelease(v79, v81, v82);
    v83 = *(v45 + 16);
    *(v45 + 16) = v80;
    LOWORD(v81) = *(v45 + 24);
    *(v45 + 24) = v44 | 0x4000;

    sub_25212CA18(v83, v81);
    swift_beginAccess();
    v84 = v166;
    v85 = 256;
    if (!v167[0])
    {
      v85 = 0;
    }

    v86 = 0x10000;
    if (!v167[1])
    {
      v86 = 0;
    }

    v87 = 0x1000000;
    if (!v167[2])
    {
      v87 = 0;
    }

    v88 = 0x100000000;
    if (!v167[3])
    {
      v88 = 0;
    }

    v89 = 0x10000000000;
    if (!v167[4])
    {
      v89 = 0;
    }

    v90 = *(v47 + 16);
    v91 = *(v47 + 24) | (*(v47 + 28) << 32);
    *(v47 + 16) = v165;
    *(v47 + 24) = v85 | v84 | v86 | v87;
    *(v47 + 28) = (v88 | v89 | 0x400000000000uLL) >> 32;

    sub_25212CA68(v90, v91);
    v63 = "eptable (default)";
    v62 = v170 | 0x80;
  }

  else if (v162 == 2)
  {
    v64 = 0xD000000000000027;
    v65 = *(v152 + 16);
    v66 = v160;
    *(v152 + 16) = v160;
    v67 = *(v46 + 24);
    *(v46 + 24) = v44 | 0x4000;

    j__swift_bridgeObjectRelease(v65, v67, v68);
    v69 = *(v45 + 16);
    *(v45 + 16) = v66;
    LOWORD(v67) = *(v45 + 24);
    *(v45 + 24) = v44;

    sub_25212CA18(v69, v67);
    swift_beginAccess();
    v70 = 256;
    if (!v167[0])
    {
      v70 = 0;
    }

    v71 = v70 | v166;
    v72 = 0x10000;
    if (!v167[1])
    {
      v72 = 0;
    }

    v73 = 0x1000000;
    if (!v167[2])
    {
      v73 = 0;
    }

    v74 = v71 | v72 | v73;
    v75 = 0x100000000;
    if (!v167[3])
    {
      v75 = 0;
    }

    v76 = 0x10000000000;
    if (!v167[4])
    {
      v76 = 0;
    }

    v77 = *(v47 + 16);
    v78 = *(v47 + 24) | (*(v47 + 28) << 32);
    *(v47 + 16) = v165;
    *(v47 + 28) = (v75 | v76) >> 32;
    *(v47 + 24) = v74;

    sub_25212CA68(v77, v78);
    v63 = "s: high, NOT acceptable";
    v62 = v170 | 0x40;
  }

  else if (v162 == 1)
  {
    v48 = *(v152 + 16);
    v49 = v160;
    *(v152 + 16) = v160;
    v50 = *(v46 + 24);
    *(v46 + 24) = v44;

    j__swift_bridgeObjectRelease(v48, v50, v51);
    v52 = *(v45 + 16);
    *(v45 + 16) = v49;
    LOWORD(v50) = *(v45 + 24);
    *(v45 + 24) = v44;

    sub_25212CA18(v52, v50);
    swift_beginAccess();
    v53 = 256;
    if (!v167[0])
    {
      v53 = 0;
    }

    v54 = v53 | v166;
    v55 = 0x10000;
    if (!v167[1])
    {
      v55 = 0;
    }

    v56 = 0x1000000;
    if (!v167[2])
    {
      v56 = 0;
    }

    v57 = v54 | v55 | v56;
    v58 = 0x100000000;
    if (!v167[3])
    {
      v58 = 0;
    }

    v59 = 0x10000000000;
    if (!v167[4])
    {
      v59 = 0;
    }

    v60 = *(v47 + 16);
    v61 = *(v47 + 24) | (*(v47 + 28) << 32);
    *(v47 + 16) = v165;
    *(v47 + 28) = (v58 | v59) >> 32;
    *(v47 + 24) = v57;

    sub_25212CA68(v60, v61);
    v62 = v170;
    v63 = "s: moderate, acceptable";
    v64 = 0xD000000000000022;
  }

  else
  {
    v92 = *(v152 + 16);
    v93 = v160;
    *(v152 + 16) = v160;
    v94 = *(v46 + 24);
    *(v46 + 24) = v44 | 0x8000;

    j__swift_bridgeObjectRelease(v92, v94, v95);
    v96 = *(v45 + 16);
    *(v45 + 16) = v93;
    LOWORD(v94) = *(v45 + 24);
    *(v45 + 24) = v44 | 0x4000;

    sub_25212CA18(v96, v94);
    swift_beginAccess();
    v97 = v166;
    v98 = 256;
    if (!v167[0])
    {
      v98 = 0;
    }

    v99 = 0x10000;
    if (!v167[1])
    {
      v99 = 0;
    }

    v100 = 0x1000000;
    if (!v167[2])
    {
      v100 = 0;
    }

    v101 = 0x100000000;
    if (!v167[3])
    {
      v101 = 0;
    }

    v102 = 0x10000000000;
    if (!v167[4])
    {
      v102 = 0;
    }

    v103 = *(v47 + 16);
    v104 = *(v47 + 24) | (*(v47 + 28) << 32);
    *(v47 + 16) = v165;
    *(v47 + 24) = v98 | v97 | v99 | v100;
    *(v47 + 28) = (v101 | v102 | 0x400000000000uLL) >> 32;

    sub_25212CA68(v103, v104);
    v62 = v170 | 0x80;
    v63 = "isCurrentPortCheckPassed";
    v64 = 0xD000000000000031;
  }

  v105 = v155;
  v106 = *(v155 + 16);
  v107 = *(v155 + 24);
  *(v155 + 16) = v157;
  *(v105 + 24) = 3;
  v108 = *(v105 + 32);
  *(v105 + 32) = v62;

  j__swift_bridgeObjectRelease(v106, v107, v108);
  v109 = v63 | 0x8000000000000000;
  if (v156[46] == v64 && v109 == v156[47])
  {
    swift_bridgeObjectRelease_n();
    goto LABEL_99;
  }

  v110 = sub_25214247C();

  if ((v110 & 1) == 0)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v138 = sub_25214198C();
    __swift_project_value_buffer(v138, qword_27F4CDE68);

    v139 = sub_25214196C();
    v140 = sub_252141FBC();

    v141 = v139;
    if (os_log_type_enabled(v139, v140))
    {
      v142 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v163 = v159;
      *v142 = 136446466;
      v143 = sub_2521425DC();
      v145 = sub_2520A5448(v143, v144, &v163);

      *(v142 + 4) = v145;
      *(v142 + 12) = 2080;
      *(v142 + 14) = sub_2520A5448(v64, v109, &v163);
      _os_log_impl(&dword_25207E000, v141, v140, "[%{public}s] %s", v142, 0x16u);
      v146 = v159;
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v146, -1, -1);
      MEMORY[0x253099FD0](v142, -1, -1);
    }

    else
    {
    }

    v147 = v156;
    v148 = v156[47];
    v156[46] = v64;
    v147[47] = v109;

    goto LABEL_60;
  }

LABEL_99:
  v111 = v156;
  v112 = v156[39];
  v156[39] = *(v46 + 16);
  v113 = *(v111 + 320);
  *(v111 + 320) = *(v46 + 24);
  j__swift_bridgeObjectRetain();
  sub_25212CA2C(v112, v113);
  v114 = *(v45 + 16);
  v115 = *(v111 + 296);
  *(v111 + 296) = v114;
  v116 = *(v45 + 24);
  v117 = *(v111 + 304);
  *(v111 + 304) = v116;
  sub_25212CC54(v114, v116);
  sub_25212CA04(v115, v117);
  v118 = *(v47 + 16);
  v119 = *(v47 + 28);
  v120 = *(v47 + 24);
  v121 = *(v111 + 328);
  v122 = *(v111 + 336) | (*(v111 + 340) << 32);
  *(v111 + 328) = v118;
  *(v111 + 336) = v120;
  *(v111 + 340) = v119;
  sub_25212CC68(v118, v120 | (v119 << 32));
  sub_25212CA44(v121, v122);
  v123 = v155;
  v124 = *(v155 + 24);
  v125 = *(v111 + 344);
  v126 = *(v111 + 352);
  *(v111 + 344) = *(v155 + 16);
  *(v111 + 352) = v124;
  v127 = *(v111 + 360);
  *(v111 + 360) = *(v123 + 32);
  j__swift_bridgeObjectRetain();
  sub_25212CA7C(v125, v126, v127);
  v164[0] = 0;
  v128 = *(v111 + 88);
  [v128 lock];
  sub_25211DA88(v111, v46, v45, v47, v123, v164, v21);
  [v128 unlock];

  if (v164[0])
  {
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v129 = sub_25214198C();
    __swift_project_value_buffer(v129, qword_27F4CDE68);
    v130 = sub_25214196C();
    v131 = sub_252141FBC();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v163 = v133;
      *v132 = 136446210;
      v134 = sub_2521425DC();
      v136 = sub_2520A5448(v134, v135, &v163);

      *(v132 + 4) = v136;
      _os_log_impl(&dword_25207E000, v130, v131, "[%{public}s] no observers to notify noise status changed (1)", v132, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v133);
      MEMORY[0x253099FD0](v133, -1, -1);
      MEMORY[0x253099FD0](v132, -1, -1);
    }
  }
}

void sub_25211DA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7)
{
  v52 = a7;
  v68 = a6;
  v66 = a5;
  v60 = a3;
  v59 = a2;
  v58 = sub_252141A4C();
  v9 = *(v58 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v58);
  v57 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_252141A8C();
  v12 = *(v56 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v56);
  v65 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = *(a1 + 104);
  v16 = v15 + 56;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 56);

  v70 = a4;
  swift_beginAccess();
  v20 = 0;
  v21 = (v17 + 63) >> 6;
  v69 = "tat";
  v67 = "noiseTemporaryTime";
  v55 = v73;
  v54 = (v9 + 8);
  v53 = (v12 + 8);
  *&v22 = 136446466;
  v51 = v22;
  v64 = v15;
  while (v19)
  {
LABEL_11:
    sub_25212CB84(*(v15 + 48) + 48 * (__clz(__rbit64(v19)) | (v20 << 6)), v79);
    sub_25212CBBC(v79, v77);
    if ((v77[16] & 2) != 0)
    {
      if (qword_27F4CD7B0 != -1)
      {
        swift_once();
      }

      if (byte_27F4D3492 == 1)
      {
        if (qword_27F4CD708 != -1)
        {
          swift_once();
        }

        v25 = sub_25214198C();
        __swift_project_value_buffer(v25, qword_27F4CDE68);
        sub_25212CB84(v77, v74);
        v26 = sub_25214196C();
        v27 = sub_252141FBC();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          aBlock[0] = v63;
          *v28 = v51;
          v29 = sub_2521425DC();
          v31 = sub_2520A5448(v29, v30, aBlock);

          *(v28 + 4) = v31;
          *(v28 + 12) = 2080;
          v32 = v75;
          v33 = v76;

          sub_25212CBF4(v74);
          v34 = sub_2520A5448(v32, v33, aBlock);
          v15 = v64;

          *(v28 + 14) = v34;
          _os_log_impl(&dword_25207E000, v26, v27, "[%{public}s] NoiseCheck request %s in queue", v28, 0x16u);
          v35 = v63;
          swift_arrayDestroy();
          MEMORY[0x253099FD0](v35, -1, -1);
          MEMORY[0x253099FD0](v28, -1, -1);
        }

        else
        {

          sub_25212CBF4(v74);
        }
      }

      v36 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v37 = sub_252141B6C();
      v38 = [v36 initWithSuiteName_];

      if (!v38)
      {
        goto LABEL_31;
      }

      v39 = sub_252141B6C();
      v40 = [v38 BOOLForKey_];

      if ((v40 & 1) == 0)
      {
        v41 = swift_allocObject();
        v42 = v60;
        v41[2] = v59;
        v41[3] = v42;
        v43 = v66;
        v41[4] = v70;
        v41[5] = v43;
        v63 = v78;
        sub_25212CB84(v77, v74);
        v44 = swift_allocObject();
        sub_25212CBBC(v74, v44 + 16);
        *(v44 + 64) = sub_252130680;
        *(v44 + 72) = v41;
        v73[2] = sub_252130788;
        v73[3] = v44;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v73[0] = sub_2520A3B78;
        v73[1] = &block_descriptor_317;
        v62 = _Block_copy(aBlock);

        v45 = v65;
        sub_252141A6C();
        v71 = MEMORY[0x277D84F90];
        v61 = sub_2520A2ED4(&qword_27F4CE090, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
        sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0);
        v46 = v57;
        v47 = v58;
        sub_25214218C();
        v48 = v45;
        v49 = v62;
        MEMORY[0x2530991B0](0, v48, v46, v62);
        _Block_release(v49);

        v50 = v47;
        v15 = v64;
        (*v54)(v46, v50);
        (*v53)(v65, v56);
      }

      *v68 = 1;
      if (((*(v70 + 28) << 32) & 0xC00000000000) == 0x400000000000 && (byte_27F4D34A0 & 1) == 0)
      {
        sub_2521420BC();
        if (qword_27F4CD748 != -1)
        {
          swift_once();
        }

        if (qword_27F4CD750 != -1)
        {
          swift_once();
        }

        v23 = sub_25214195C();
        __swift_project_value_buffer(v23, qword_27F4CDF30);
        sub_25214193C();
        byte_27F4D34A0 = 1;
      }
    }

    v19 &= v19 - 1;
    sub_25212CBF4(v77);
  }

  while (1)
  {
    v24 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      return;
    }

    v19 = *(v16 + 8 * v24);
    ++v20;
    if (v19)
    {
      v20 = v24;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25211E3AC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[10];
  sub_2520A5A94(0, &qword_27F4CE6A8, 0x277CBE030);
  sub_25214200C();
  [aBlock setDispatchQueue_];

  sub_25214200C();
  [aBlock setDiscoveryFlags_];

  sub_25214200C();
  v6 = aBlock;
  v7 = swift_allocObject();
  swift_weakInit();
  v20 = sub_252130590;
  v21 = v7;
  aBlock = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_2520FEAF8;
  v19 = &block_descriptor_524;
  v8 = _Block_copy(&aBlock);

  [v6 setDeviceFoundHandler_];
  _Block_release(v8);

  sub_25214200C();
  v9 = aBlock;
  v10 = swift_allocObject();
  swift_weakInit();
  v20 = sub_2521305C0;
  v21 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_2520FEAF8;
  v19 = &block_descriptor_529_0;
  v11 = _Block_copy(&aBlock);

  [v9 setDeviceLostHandler_];
  _Block_release(v11);

  sub_25214200C();
  v12 = aBlock;
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = v4;
  v20 = sub_2521305F0;
  v21 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_2520FE7C8;
  v19 = &block_descriptor_536;
  v14 = _Block_copy(&aBlock);

  [v12 activateWithCompletion_];
  _Block_release(v14);

  v15 = v2[33];
  sub_2520C834C();
}

uint64_t sub_25211E75C(void *a1, uint64_t a2, void (*a3)(_BYTE *))
{
  v4 = a1;
  sub_25212CC7C(v4, v6);

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return sub_25210ACF8(v6);
  }

  a3(v6);
  sub_25210ACF8(v6);
}

void sub_25211E7F0()
{
  v1 = *v0;
  if (*(v0 + 216) == 1)
  {
    v2 = v0;
    *(v0 + 216) = 0;
    v3 = v0[33];
    sub_2520C8748();

    v4 = v2[10];
    sub_2520A5A94(0, &qword_27F4CE6A8, 0x277CBE030);
    sub_25214200C();
    [v21 invalidate];

    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v5 = sub_25214198C();
    __swift_project_value_buffer(v5, qword_27F4CDE68);
    v6 = sub_25214196C();
    v7 = sub_252141FBC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v8 = 136446210;
      v10 = sub_2521425DC();
      v12 = sub_2520A5448(v10, v11, &v21);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_25207E000, v6, v7, "[%{public}s] Deactivate discovery", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x253099FD0](v9, -1, -1);
      MEMORY[0x253099FD0](v8, -1, -1);
    }
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v13 = sub_25214198C();
    __swift_project_value_buffer(v13, qword_27F4CDE68);
    oslog = sub_25214196C();
    v14 = sub_252141FAC();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136446210;
      v17 = sub_2521425DC();
      v19 = sub_2520A5448(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_25207E000, oslog, v14, "[%{public}s] Discovery already deactivated", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x253099FD0](v16, -1, -1);
      MEMORY[0x253099FD0](v15, -1, -1);
    }

    else
    {
    }
  }
}

void sub_25211EB24()
{
  v1 = v0;
  v2 = *v0;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v3 = sub_25214198C();
  __swift_project_value_buffer(v3, qword_27F4CDE68);
  v4 = sub_25214196C();
  v5 = sub_252141FBC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    aBlock[0] = v7;
    *v6 = 136446210;
    v8 = sub_2521425DC();
    v10 = sub_2520A5448(v8, v9, aBlock);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] Activating discovery", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x253099FD0](v7, -1, -1);
    MEMORY[0x253099FD0](v6, -1, -1);
  }

  if (v0[27])
  {
    oslog = sub_25214196C();
    v11 = sub_252141FAC();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock[0] = v13;
      *v12 = 136446210;
      v14 = sub_2521425DC();
      v16 = sub_2520A5448(v14, v15, aBlock);

      *(v12 + 4) = v16;
      v17 = "[%{public}s] Discovery already activated";
LABEL_13:
      _os_log_impl(&dword_25207E000, oslog, v11, v17, v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x253099FD0](v13, -1, -1);
      MEMORY[0x253099FD0](v12, -1, -1);

      return;
    }
  }

  else
  {
    v18 = v0[26];
    if (v18)
    {
      v19 = objc_allocWithZone(MEMORY[0x277CBE030]);
      v20 = v18;
      v21 = [v19 init];
      v22 = v1[10];
      v23 = swift_allocObject();
      *(v23 + 16) = v1;
      *(v23 + 24) = v21;
      v24 = swift_allocObject();
      *(v24 + 16) = sub_252130310;
      *(v24 + 24) = v23;
      aBlock[4] = sub_2520ADA58;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_252083924;
      aBlock[3] = &block_descriptor_437;
      v25 = _Block_copy(aBlock);

      v26 = v21;

      dispatch_sync(v22, v25);

      _Block_release(v25);
      LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

      if (v22)
      {
        __break(1u);
      }

      else
      {
        sub_25211E3AC(v20);
      }

      return;
    }

    oslog = sub_25214196C();
    v11 = sub_252141FAC();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock[0] = v13;
      *v12 = 136446210;
      v27 = sub_2521425DC();
      v29 = sub_2520A5448(v27, v28, aBlock);

      *(v12 + 4) = v29;
      v17 = "[%{public}s] Invalid queue";
      goto LABEL_13;
    }
  }
}

void sub_25211EFA8()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE740, &qword_2521467E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v71 = &v64 - v4;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v5 = sub_25214198C();
  __swift_project_value_buffer(v5, qword_27F4CDE68);
  v6 = sub_25214196C();
  v7 = sub_252141FBC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v74[0] = v9;
    *v8 = 136446210;
    v10 = sub_2521425DC();
    v12 = v1;
    v13 = sub_2520A5448(v10, v11, v74);

    *(v8 + 4) = v13;
    v1 = v12;
    _os_log_impl(&dword_25207E000, v6, v7, "[%{public}s] handleRouteChange", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x253099FD0](v9, -1, -1);
    MEMORY[0x253099FD0](v8, -1, -1);
  }

  v14 = sub_25214170C();
  if (!v14)
  {
    goto LABEL_34;
  }

  v15 = v14;
  v16 = *MEMORY[0x277CB8220];
  v72 = sub_252141B9C();
  v73 = v17;
  sub_2521421DC();
  if (!*(v15 + 16) || (v18 = sub_25213E754(v74), (v19 & 1) == 0))
  {

    sub_2520E42D8(v74);
    goto LABEL_34;
  }

  sub_2520A5FC4(*(v15 + 56) + 32 * v18, v75);
  sub_2520E42D8(v74);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_34:
    v53 = sub_25214196C();
    v54 = sub_252141FAC();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v74[0] = v56;
      *v55 = 136446210;
      v57 = sub_2521425DC();
      v59 = sub_2520A5448(v57, v58, v74);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_25207E000, v53, v54, "[%{public}s] handleRouteChange Route change reason unavailable", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x253099FD0](v56, -1, -1);
      MEMORY[0x253099FD0](v55, -1, -1);
    }

    return;
  }

  v66 = v1;
  v20 = v72;
  v21 = sub_25214196C();
  v22 = sub_252141FBC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v74[0] = v24;
    *v23 = 136446466;
    v25 = sub_2521425DC();
    v27 = sub_2520A5448(v25, v26, v74);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2048;
    *(v23 + 14) = v20;
    _os_log_impl(&dword_25207E000, v21, v22, "[%{public}s] handleRouteChange Route change reason %lu ", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x253099FD0](v24, -1, -1);
    MEMORY[0x253099FD0](v23, -1, -1);
  }

  if (v20 != 1)
  {
    return;
  }

  v28 = [objc_opt_self() sharedInstance];
  v29 = [v28 currentRoute];

  v30 = [v29 outputs];
  sub_2520A5A94(0, &qword_27F4CE0D0, 0x277CB8408);
  v31 = sub_252141CDC();

  if (v31 >> 62)
  {
LABEL_42:
    v33 = sub_25214232C();
    if (v33)
    {
      goto LABEL_14;
    }

LABEL_43:

    return;
  }

  v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v33)
  {
    goto LABEL_43;
  }

LABEL_14:
  v34 = 0;
  v35 = 0;
  v68 = *MEMORY[0x277CB81D0];
  v69 = v31 & 0xC000000000000001;
  v67 = v31 & 0xFFFFFFFFFFFFFF8;
  *&v32 = 136446210;
  v64 = v32;
LABEL_15:
  LODWORD(v65) = v34;
  v36 = v35;
  do
  {
    if (v69)
    {
      v37 = MEMORY[0x2530993D0](v36, v31);
    }

    else
    {
      if (v36 >= *(v67 + 16))
      {
        goto LABEL_41;
      }

      v37 = *(v31 + 8 * v36 + 32);
    }

    v38 = v37;
    v35 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v39 = [v37 portType];
    v40 = sub_252141B9C();
    v42 = v41;
    if (v40 == sub_252141B9C() && v42 == v43)
    {

LABEL_29:
      v46 = sub_25214196C();
      v47 = sub_252141FAC();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v74[0] = v65;
        *v48 = v64;
        v49 = sub_2521425DC();
        v51 = sub_2520A5448(v49, v50, v74);

        *(v48 + 4) = v51;
        _os_log_impl(&dword_25207E000, v46, v47, "[%{public}s] handleRouteChange switched to wired headphone", v48, 0xCu);
        v52 = v65;
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x253099FD0](v52, -1, -1);
        MEMORY[0x253099FD0](v48, -1, -1);
      }

      v34 = 1;
      if (v35 == v33)
      {

LABEL_39:
        v60 = sub_252141E3C();
        v61 = v71;
        (*(*(v60 - 8) + 56))(v71, 1, 1, v60);
        v62 = swift_allocObject();
        v62[2] = 0;
        v62[3] = 0;
        v63 = v66;
        v62[4] = v70;
        v62[5] = v63;

        sub_252113050(0, 0, v61, &unk_252147B10, v62);

        return;
      }

      goto LABEL_15;
    }

    v45 = sub_25214247C();

    if (v45)
    {
      goto LABEL_29;
    }

    ++v36;
  }

  while (v35 != v33);

  if (v65)
  {
    goto LABEL_39;
  }
}

uint64_t sub_25211F760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 176) = a4;
  *(v5 + 184) = a5;
  return MEMORY[0x2822009F8](sub_25211F780, 0, 0);
}

uint64_t sub_25211F780()
{
  v1 = *(*(v0 + 176) + 248);
  v2 = *&v1[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
  *(swift_task_alloc() + 16) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F0, &qword_2521467A0);
  sub_25214200C();
  *(v0 + 192) = 0;

  v4 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v4;
  v5 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v5;
  *(v0 + 76) = *(v0 + 156);
  if (*(v0 + 24))
  {
    sub_2520A2584(v0 + 16, &qword_27F4CE6F0, &qword_2521467A0);
    if (qword_27F4CD7C8 != -1)
    {
      swift_once();
    }

    v6 = qword_27F4D34A8;
    *(v0 + 200) = qword_27F4D34A8;

    return MEMORY[0x2822009F8](sub_25211F910, v6, 0);
  }

  else
  {
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_25211F910()
{
  v1 = *(*(v0 + 200) + 112);
  *(v0 + 208) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_25211F984, 0, 0);
}

id sub_25211F984()
{
  v1 = v0[26];
  if (!v1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277CBE020]) init];
  }

  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v5 = *(v4 + 88);
  [v5 lock];
  sub_25211FA90(v4, v1, v3);
  if (v2)
  {

    return [v5 unlock];
  }

  else
  {
    [v5 unlock];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_25211FA90(uint64_t a1, void *a2, uint64_t a3)
{
  v38 = a3;
  v37 = a2;
  v36 = sub_252141A4C();
  v4 = *(v36 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = sub_252141A8C();
  v7 = *(v34 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v34);
  v42 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v10 = *(a1 + 104);
  v11 = v10 + 56;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 56);
  v15 = (v12 + 63) >> 6;
  v32 = v45;
  v31 = (v4 + 8);
  v30 = (v7 + 8);

  v17 = 0;
  v33 = v10;
  while (v14)
  {
LABEL_10:
    sub_25212CB84(*(v10 + 48) + 48 * (__clz(__rbit64(v14)) | (v17 << 6)), v49);
    sub_25212CBBC(v49, v47);
    if ((v47[16] & 4) != 0)
    {
      v19 = swift_allocObject();
      v20 = v37;
      v21 = v38;
      *(v19 + 16) = v37;
      *(v19 + 24) = v21;
      v41 = v48;
      sub_25212CB84(v47, v46);
      v22 = swift_allocObject();
      sub_25212CBBC(v46, v22 + 16);
      *(v22 + 64) = sub_25212F9A4;
      *(v22 + 72) = v19;
      v45[2] = sub_252130788;
      v45[3] = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v45[0] = sub_2520A3B78;
      v45[1] = &block_descriptor_301;
      v40 = _Block_copy(aBlock);
      v23 = v20;

      v24 = v42;
      sub_252141A6C();
      v43 = MEMORY[0x277D84F90];
      v39 = sub_2520A2ED4(&qword_27F4CE090, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
      sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0);
      v25 = v35;
      v26 = v36;
      sub_25214218C();
      v27 = v24;
      v28 = v40;
      MEMORY[0x2530991B0](0, v27, v25, v40);
      v10 = v33;
      _Block_release(v28);

      (*v31)(v25, v26);
      (*v30)(v42, v34);
    }

    v14 &= v14 - 1;
    result = sub_25212CBF4(v47);
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
    }

    v14 = *(v11 + 8 * v18);
    ++v17;
    if (v14)
    {
      v17 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_25211FF88(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v16 = a3;
  v17 = 2;
  v6 = *(a2 + 96);
  v7 = a3;
  v6(&v16, ObjectType, a2);
  sub_25212C9F0(v16, v17);
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v8 = sub_25214198C();
  __swift_project_value_buffer(v8, qword_27F4CDE68);
  oslog = sub_25214196C();
  v9 = sub_252141FBC();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446210;
    v12 = sub_2521425DC();
    v14 = sub_2520A5448(v12, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_25207E000, oslog, v9, "[%{public}s] handleRouteChange Lost connection due to new device available", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x253099FD0](v11, -1, -1);
    MEMORY[0x253099FD0](v10, -1, -1);
  }
}

void *HTRequirementStatusManager.deinit()
{
  v1 = v0;
  v2 = *v0;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v3 = sub_25214198C();
  __swift_project_value_buffer(v3, qword_27F4CDE68);
  v4 = sub_25214196C();
  v5 = sub_252141FBC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v6 = 136446210;
    v8 = sub_2521425DC();
    v10 = sub_2520A5448(v8, v9, &v29);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] Deinit status mgr", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x253099FD0](v7, -1, -1);
    MEMORY[0x253099FD0](v6, -1, -1);
  }

  *(v1 + 216) = 0;
  v11 = v1[33];
  sub_2520C8748();

  v12 = [objc_opt_self() defaultCenter];
  [v12 removeObserver:v1 name:*MEMORY[0x277CB8210] object:0];

  [v1[25] invalidate];
  v13 = v1[26];
  v1[26] = 0;

  v14 = v1[3];

  v15 = v1[13];

  v16 = v1[14];

  v17 = v1[17];
  v18 = v1[18];
  v19 = v1[19];
  v20 = v1[20];
  v21 = v1[21];
  v22 = v1[22];
  v28 = *(v1 + 48);
  v27 = v1[23];
  sub_25210B774(v1[15], v1[16]);

  sub_25212C9DC(v1[28], *(v1 + 232));
  v23 = v1[32];

  v24 = v1[36];

  sub_25212CA04(v1[37], *(v1 + 152));
  sub_25212CA2C(v1[39], *(v1 + 160));
  sub_25212CA44(v1[41], *(v1 + 84) | (*(v1 + 170) << 32));
  sub_25212CA7C(v1[43], v1[44], *(v1 + 360));
  v25 = v1[47];

  return v1;
}

uint64_t HTRequirementStatusManager.__deallocating_deinit()
{
  HTRequirementStatusManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_252120534(void *a1, uint64_t a2)
{
  v3 = v2;
  v146 = a1;
  v5 = *v2;
  v137 = sub_252141A4C();
  v148 = *(v137 - 8);
  v6 = *(v148 + 64);
  MEMORY[0x28223BE20](v137);
  v136 = v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_252141A8C();
  v8 = *(v135 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v135);
  v138 = v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F4CD708 != -1)
  {
LABEL_59:
    swift_once();
  }

  v152 = (v3 + 34);
  v11 = sub_25214198C();
  v12 = __swift_project_value_buffer(v11, qword_27F4CDE68);
  swift_retain_n();

  v144 = v12;
  v13 = sub_25214196C();
  v14 = sub_252141FBC();

  v15 = os_log_type_enabled(v13, v14);
  v139 = v5;
  v147 = v8;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v160[0] = v17;
    *v16 = 136446978;
    v18 = sub_2521425DC();
    v20 = sub_2520A5448(v18, v19, v160);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2048;
    *(v16 + 14) = v146;
    *(v16 + 22) = 2080;
    v21 = MEMORY[0x253098E80](a2, MEMORY[0x277D83A90]);
    v23 = sub_2520A5448(v21, v22, v160);

    *(v16 + 24) = v23;
    *(v16 + 32) = 1024;
    v24 = *v152;

    *(v16 + 34) = v24;

    _os_log_impl(&dword_25207E000, v13, v14, "[%{public}s] NoiseUpdated %ld, %s, timerdone %{BOOL}d", v16, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v17, -1, -1);
    MEMORY[0x253099FD0](v16, -1, -1);
  }

  else
  {
  }

  v25 = sub_252141D3C();
  *(v25 + 16) = 16;
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0u;
  *(v25 + 64) = 0u;
  *(v25 + 80) = 0u;
  v166 = 3;
  v167 = 0;
  v26 = sub_252141D3C();
  *(v26 + 16) = 16;
  *(v26 + 32) = 0u;
  *(v26 + 48) = 0u;
  *(v26 + 64) = 0u;
  *(v26 + 80) = 0u;
  v164 = 0;
  v27 = sub_252141D3C();
  *(v27 + 16) = 16;
  *(v27 + 32) = 0u;
  *(v27 + 48) = 0u;
  *(v27 + 64) = 0u;
  *(v27 + 80) = 0u;
  v163 = 0;
  v162 = 0;
  v161 = 0;
  v165 = a2;
  swift_bridgeObjectRetain_n();

  if (qword_27F4CD7B0 != -1)
  {
    swift_once();
  }

  v153 = a2;
  if (byte_27F4D3492 != 1)
  {
    goto LABEL_28;
  }

  v28 = sub_25214196C();
  v29 = sub_252141FBC();
  if (!os_log_type_enabled(v28, v29))
  {

LABEL_28:
    v46 = 0;
    v45 = 0;
    v44 = 0;
    v43 = 0;
    v42 = 0;
    LODWORD(v145) = 0;
    v41 = 0;
    v40 = 0;
    goto LABEL_29;
  }

  v30 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  v160[0] = v31;
  *v30 = 136446466;
  v32 = sub_2521425DC();
  v34 = sub_2520A5448(v32, v33, v160);

  *(v30 + 4) = v34;
  *(v30 + 12) = 2080;

  v36 = MEMORY[0x253098E80](v35, MEMORY[0x277D83A90]);
  v38 = v37;

  v39 = sub_2520A5448(v36, v38, v160);

  *(v30 + 14) = v39;
  _os_log_impl(&dword_25207E000, v28, v29, "[%{public}s] Noise data %s", v30, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x253099FD0](v31, -1, -1);
  MEMORY[0x253099FD0](v30, -1, -1);

  v40 = HIBYTE(v164);
  LODWORD(v145) = HIBYTE(v163);
  if (v164)
  {
    v41 = 256;
  }

  else
  {
    v41 = 0;
  }

  if (v163)
  {
    v42 = 256;
  }

  else
  {
    v42 = 0;
  }

  if (HIBYTE(v162))
  {
    v43 = 0x10000;
  }

  else
  {
    v43 = 0;
  }

  if (v162)
  {
    v44 = 0x1000000;
  }

  else
  {
    v44 = 0;
  }

  if (HIBYTE(v161))
  {
    v45 = 0x100000000;
  }

  else
  {
    v45 = 0;
  }

  if (v161)
  {
    v46 = 0x10000000000;
  }

  else
  {
    v46 = 0;
  }

LABEL_29:
  v47 = swift_allocObject();
  v48 = v153;
  *(v47 + 16) = v153;
  v143 = v47 + 16;
  v49 = v41 | v40;
  v149 = v47;
  LODWORD(v140) = *&v49 | 0xFFFF8000;
  *(v47 + 24) = v49 | 0x8000;
  v50 = swift_allocObject();
  *(v50 + 16) = v48;
  v141 = v50 + 16;
  v150 = v50;
  *(v50 + 24) = v49 | 0xC000;
  v51 = swift_allocObject();
  *(v51 + 16) = v48;
  v142 = v51 + 16;
  v52 = v42 | v43 | v44 | v145 | v45 | v46;
  *(v51 + 24) = v52;
  v151 = v51;
  *(v51 + 28) = (v52 | 0xFFFF800000000000) >> 32;
  v8 = swift_allocObject();
  swift_beginAccess();
  v54 = v165;
  v53 = v166;
  *(v8 + 16) = v165;
  v55 = v167 | 0xFFFFFFC0;
  *(v8 + 24) = v53;
  *(v8 + 32) = v55;
  v56 = *v152;
  v145 = v8 + 16;
  if (v56 != 1)
  {
    swift_bridgeObjectRetain_n();

LABEL_35:
    v58 = v148;
    goto LABEL_40;
  }

  LODWORD(v134) = v55;
  v133 = v53;
  if (v146 == 3)
  {
    v74 = v153;
    v75 = v150;
    *(v150 + 16) = v153;
    v76 = v140;
    *(v75 + 24) = v140;
    swift_bridgeObjectRetain_n();

    j__swift_bridgeObjectRelease(v74, *&v49 | 0xFFFFC000, v77);
    v78 = v149;
    *(v149 + 16) = v74;
    *(v78 + 24) = v49 | 0x4000;

    sub_25212CA18(v79, v76);
    v80 = v151;
    *(v151 + 16) = v74;
    *(v80 + 28) = (v52 | 0x400000000000uLL) >> 32;
    *(v80 + 24) = v52;

    sub_25212CA68(v81, v52 | 0xFFFF800000000000);
    v82 = v166;
    v83 = v167 | 0x80;
    *(v8 + 16) = v165;
    *(v8 + 24) = v82;
    *(v8 + 32) = v83;

    j__swift_bridgeObjectRelease(v54, v133, v134);
    goto LABEL_35;
  }

  v57 = v153;
  v58 = v148;
  if (v146 == 2)
  {
    v68 = v150;
    *(v150 + 16) = v153;
    *(v68 + 24) = v49 | 0x4000;
    swift_bridgeObjectRetain_n();

    j__swift_bridgeObjectRelease(v57, *&v49 | 0xFFFFC000, v69);
    v70 = v149;
    *(v149 + 16) = v57;
    *(v70 + 24) = v49;

    sub_25212CA18(v71, v140);
    v72 = v151;
    *(v151 + 16) = v57;
    *(v72 + 28) = WORD2(v52);
    *(v72 + 24) = v52;

    sub_25212CA68(v73, v52 | 0xFFFF800000000000);
    v65 = v165;
    v66 = v166;
    v67 = v167 | 0x40;
  }

  else
  {
    v59 = v150;
    if (v146 == 1)
    {
      *(v150 + 16) = v153;
      *(v59 + 24) = v49;
      swift_bridgeObjectRetain_n();

      j__swift_bridgeObjectRelease(v57, *&v49 | 0xFFFFC000, v60);
      v61 = v149;
      *(v149 + 16) = v57;
      *(v61 + 24) = v49;

      sub_25212CA18(v62, v140);
      v63 = v151;
      *(v151 + 16) = v57;
      *(v63 + 28) = WORD2(v52);
      *(v63 + 24) = v52;

      sub_25212CA68(v64, v52 | 0xFFFF800000000000);
      v65 = v165;
      v66 = v166;
      v67 = v167;
    }

    else
    {
      *(v150 + 16) = v153;
      v84 = v140;
      *(v59 + 24) = v140;
      swift_bridgeObjectRetain_n();

      j__swift_bridgeObjectRelease(v57, *&v49 | 0xFFFFC000, v85);
      v86 = v149;
      *(v149 + 16) = v57;
      *(v86 + 24) = v49 | 0x4000;

      v88 = v84;
      v58 = v148;
      sub_25212CA18(v87, v88);
      v89 = v151;
      *(v151 + 16) = v57;
      *(v89 + 28) = (v52 | 0x400000000000uLL) >> 32;
      *(v89 + 24) = v52;

      sub_25212CA68(v90, v52 | 0xFFFF800000000000);
      v65 = v165;
      v66 = v166;
      v67 = v167 | 0x80;
    }
  }

  *(v8 + 16) = v65;
  *(v8 + 24) = v66;
  *(v8 + 32) = v67;

  j__swift_bridgeObjectRelease(v54, v133, v134);
LABEL_40:
  v91 = v3[11];
  [v91 lock];
  swift_beginAccess();
  v92 = v3[13];
  v93 = 1 << *(v92 + 32);
  v94 = -1;
  if (v93 < 64)
  {
    v94 = ~(-1 << v93);
  }

  v95 = v94 & *(v92 + 56);
  v96 = (v93 + 63) >> 6;
  v140 = (v58 + 8);
  v146 = v156;
  ++v147;

  v5 = 0;
  LODWORD(v148) = 0;
LABEL_43:
  v97 = v5;
  a2 = v150;
  if (!v95)
  {
    goto LABEL_45;
  }

  do
  {
    v5 = v97;
LABEL_48:
    v98 = __clz(__rbit64(v95));
    v95 &= v95 - 1;
    sub_25212CB84(*(v92 + 48) + 48 * (v98 | (v5 << 6)), v160);
    sub_25212CBBC(v160, v158);
    if ((v158[16] & 2) != 0)
    {
      v99 = swift_allocObject();
      v100 = v149;
      v99[2] = a2;
      v99[3] = v100;
      v99[4] = v151;
      v99[5] = v8;
      v101 = v99;
      v148 = v159;
      sub_25212CB84(v158, v157);
      v102 = swift_allocObject();
      v134 = v91;
      v103 = v102;
      sub_25212CBBC(v157, v102 + 16);
      *(v103 + 64) = sub_25212CC24;
      *(v103 + 72) = v101;
      v132[2] = v101;
      v156[2] = sub_25212CC44;
      v156[3] = v103;
      v155[0] = MEMORY[0x277D85DD0];
      v155[1] = 1107296256;
      v156[0] = sub_2520A3B78;
      v156[1] = &block_descriptor_50_1;
      v133 = _Block_copy(v155);

      sub_252141A6C();
      v154 = MEMORY[0x277D84F90];
      v132[1] = sub_2520A2ED4(&qword_27F4CE090, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
      sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0);
      v104 = v136;
      sub_25214218C();
      v105 = v104;
      v106 = v133;
      MEMORY[0x2530991B0](0, v138, v105, v133);
      v91 = v134;
      _Block_release(v106);

      (*v140)(v136, v137);
      (*v147)(v138, v135);

      sub_25212CBF4(v158);
      LODWORD(v148) = 1;
      goto LABEL_43;
    }

    sub_25212CBF4(v158);
    v97 = v5;
  }

  while (v95);
  while (1)
  {
LABEL_45:
    v5 = v97 + 1;
    if (__OFADD__(v97, 1))
    {
      __break(1u);
      goto LABEL_59;
    }

    if (v5 >= v96)
    {
      break;
    }

    v95 = *(v92 + 56 + 8 * v5);
    ++v97;
    if (v95)
    {
      goto LABEL_48;
    }
  }

  [v91 unlock];
  swift_beginAccess();
  v107 = v3[39];
  v3[39] = *(a2 + 16);
  v108 = *(v3 + 160);
  *(v3 + 160) = *(a2 + 24);
  j__swift_bridgeObjectRetain();
  sub_25212CA2C(v107, v108);
  swift_beginAccess();
  v109 = v149;
  v110 = *(v149 + 16);
  v111 = v3[37];
  v3[37] = v110;
  v112 = *(v109 + 24);
  v113 = *(v3 + 152);
  *(v3 + 152) = v112;
  sub_25212CC54(v110, v112);
  sub_25212CA04(v111, v113);
  swift_beginAccess();
  v114 = *(v151 + 16);
  v115 = *(v151 + 28);
  v116 = *(v151 + 24);
  v117 = v152 + 64;
  v118 = v3[41];
  v119 = *(v152 + 16) | (*(v152 + 34) << 32);
  v3[41] = v114;
  *v117 = v116;
  *(v117 + 2) = v115;
  sub_25212CC68(v114, v116 | (v115 << 32));
  sub_25212CA44(v118, v119);
  swift_beginAccess();
  v120 = *(v8 + 24);
  v121 = v3[43];
  v122 = v3[44];
  v3[43] = *(v8 + 16);
  v3[44] = v120;
  v123 = *(v3 + 360);
  *(v3 + 360) = *(v8 + 32);
  j__swift_bridgeObjectRetain();
  sub_25212CA7C(v121, v122, v123);
  if (v148)
  {
  }

  else
  {
    v124 = sub_25214196C();
    v125 = sub_252141FBC();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v154 = v127;
      *v126 = 136446210;
      v128 = sub_2521425DC();
      v130 = sub_2520A5448(v128, v129, &v154);

      *(v126 + 4) = v130;
      _os_log_impl(&dword_25207E000, v124, v125, "[%{public}s] no observers to notify noise status changed (2)", v126, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v127);
      MEMORY[0x253099FD0](v127, -1, -1);
      MEMORY[0x253099FD0](v126, -1, -1);
    }
  }
}

uint64_t sub_252121480(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  v12 = *(a3 + 24);
  v32 = *(a3 + 16);
  v33 = v12;
  v13 = a2[9];
  j__swift_bridgeObjectRetain();
  v13(&v32, ObjectType, a2);
  j__swift_bridgeObjectRelease(v32, v33, v14);
  swift_beginAccess();
  v15 = *(a4 + 24);
  v30 = *(a4 + 16);
  v31 = v15;
  v16 = a2[8];
  sub_25212CC54(v30, v15);
  v16(&v30, ObjectType, a2);
  sub_25212CA18(v30, v31);
  swift_beginAccess();
  v17 = *(a5 + 28);
  v18 = *(a5 + 24);
  v27 = *(a5 + 16);
  v29 = v17;
  v28 = v18;
  v19 = a2[10];
  sub_25212CC68(v27, v18 | (v17 << 32));
  v19(&v27, ObjectType, a2);
  sub_25212CA68(v27, v28 | (v29 << 32));
  swift_beginAccess();
  v20 = *(a6 + 24);
  v21 = *(a6 + 32);
  v24 = *(a6 + 16);
  v25 = v20;
  v26 = v21;
  v22 = a2[11];
  j__swift_bridgeObjectRetain();
  v22(&v24, ObjectType, a2);
  return j__swift_bridgeObjectRelease(v24, v25, v26);
}

uint64_t sub_252121640(__int128 *a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 3);
  v4 = *(a1 + 32);
  v5 = *(v1 + 264);
  v10 = *a1;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v6 = v5;
  sub_2520C8C70(&v10);
  v8 = v7;

  return v8 & 1;
}

void sub_2521216B4(void *a1, uint64_t a2)
{
  if (a1)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v6 = sub_25214198C();
    __swift_project_value_buffer(v6, qword_27F4CDE68);
    v7 = a1;
    v8 = sub_25214196C();
    v9 = sub_252141FAC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v44 = v12;
      *v10 = 136446466;
      v13 = sub_2521425DC();
      v15 = sub_2520A5448(v13, v14, &v44);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2112;
      v16 = a1;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v17;
      *v11 = v17;
      _os_log_impl(&dword_25207E000, v8, v9, "[%{public}s] Discovery cannot activate. Error %@", v10, 0x16u);
      sub_2520A2584(v11, &unk_27F4CE080, &qword_252144E30);
      MEMORY[0x253099FD0](v11, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x253099FD0](v12, -1, -1);
      MEMORY[0x253099FD0](v10, -1, -1);
    }

    v18 = 0;
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v19 = sub_25214198C();
    __swift_project_value_buffer(v19, qword_27F4CDE68);
    swift_retain_n();
    v20 = sub_25214196C();
    v21 = sub_252141FBC();
    v22 = &selRef_categoryOptions;
    if (!os_log_type_enabled(v20, v21))
    {

      goto LABEL_14;
    }

    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v44 = v3;
    *v2 = 136446466;
    v23 = sub_2521425DC();
    v25 = sub_2520A5448(v23, v24, &v44);

    *(v2 + 4) = v25;
    *(v2 + 12) = 2048;
    v26 = *(a2 + 80);
    sub_2520A5A94(0, &qword_27F4CE6A8, 0x277CBE030);
    sub_25214200C();
    v27 = [v43 discoveredDevices];

    sub_2520A5A94(0, &qword_27F4CE6B0, 0x277CBE020);
    v28 = sub_252141CDC();

    if (v28 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25214232C())
    {

      *(v2 + 14) = i;

      _os_log_impl(&dword_25207E000, v20, v21, "[%{public}s] Discovery started. Device count is  %ld", v2, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v3);
      MEMORY[0x253099FD0](v3, -1, -1);
      MEMORY[0x253099FD0](v2, -1, -1);

      v22 = &selRef_categoryOptions;
LABEL_14:
      v30 = *(a2 + 80);
      sub_2520A5A94(0, &qword_27F4CE6A8, 0x277CBE030);
      sub_25214200C();
      v31 = v44;
      v32 = [v44 v22[46]];

      sub_2520A5A94(0, &qword_27F4CE6B0, 0x277CBE020);
      v33 = sub_252141CDC();

      if (!(v33 >> 62))
      {
        break;
      }

      v34 = sub_25214232C();

      if ((v34 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      __break(1u);
LABEL_26:
      ;
    }

    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);

LABEL_16:
    if (v34)
    {
      for (j = 0; j != v34; ++j)
      {
        v36 = sub_25214196C();
        v37 = sub_252141FBC();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v44 = v39;
          *v38 = 136446466;
          v40 = sub_2521425DC();
          v42 = sub_2520A5448(v40, v41, &v44);

          *(v38 + 4) = v42;
          *(v38 + 12) = 2048;
          *(v38 + 14) = j;
          _os_log_impl(&dword_25207E000, v36, v37, "[%{public}s] Update device placement %ld", v38, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v39);
          MEMORY[0x253099FD0](v39, -1, -1);
          MEMORY[0x253099FD0](v38, -1, -1);
        }
      }

      v18 = 1;
    }

    else
    {
      v18 = 1;
    }
  }

  *(a2 + 216) = v18;
}

uint64_t sub_252121C7C()
{
  sub_252122B30();
  if (v1)
  {
    return 0;
  }

  else
  {
    return *(v0 + 216);
  }
}

uint64_t sub_252121CA8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_252121CF0, 0, 0);
}

uint64_t sub_252121CF0()
{
  v27 = v0;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v1 = sub_25214198C();
  v0[5] = __swift_project_value_buffer(v1, qword_27F4CDE68);
  v2 = sub_25214196C();
  v3 = sub_252141FBC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25207E000, v2, v3, "User tapped 'Get Started'", v4, 2u);
    MEMORY[0x253099FD0](v4, -1, -1);
  }

  v5 = v0[3];

  sub_252122B30();
  v7 = v6;
  if (v6)
  {
    v8 = sub_25214196C();
    v9 = sub_252141FBC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_25207E000, v8, v9, "Denied attempt to start hearing test", v10, 2u);
LABEL_13:
      MEMORY[0x253099FD0](v10, -1, -1);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v11 = v0[2];
  v12 = (v11 * 10) >> 64;
  v13 = 10 * v11;
  v0[6] = v13;
  if (v12 != v13 >> 63)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 < 1)
  {
LABEL_21:
    __break(1u);
    return MEMORY[0x282200480](v6);
  }

  v14 = v0[3];
  v0[7] = 1;
  if (*(v14 + 216) != 1)
  {
    v24 = *(MEMORY[0x277D857E8] + 4);
    v25 = swift_task_alloc();
    v0[8] = v25;
    *v25 = v0;
    v25[1] = sub_252122034;
    v6 = 100000000;

    return MEMORY[0x282200480](v6);
  }

  v15 = v0[5];
  sub_25212389C();
  sub_25211672C();
  v8 = sub_25214196C();
  v16 = sub_252141FBC();
  if (os_log_type_enabled(v8, v16))
  {
    v17 = v0[4];
    v10 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v26 = v18;
    *v10 = 136446210;
    v19 = sub_2521425DC();
    v21 = sub_2520A5448(v19, v20, &v26);

    *(v10 + 4) = v21;
    _os_log_impl(&dword_25207E000, v8, v16, "[%{public}s] Discovery Activated", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x253099FD0](v18, -1, -1);
    goto LABEL_13;
  }

LABEL_14:

  v22 = v0[1];

  return v22((v7 & 1) == 0);
}

uint64_t sub_252122034()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_2521223E4;
  }

  else
  {
    v3 = sub_252122148;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252122148(uint64_t a1)
{
  v24 = v1;
  v3 = v1[6];
  v2 = v1[7];
  if (v2 != v3)
  {
    if (__OFADD__(v2, 1))
    {
      __break(1u);
    }

    else
    {
      v1[7] = v2 + 1;
      if (*(v1[3] + 216) == 1)
      {
        v4 = v1[5];
        sub_25212389C();
        sub_25211672C();
        v5 = sub_25214196C();
        v6 = sub_252141FBC();
        if (os_log_type_enabled(v5, v6))
        {
          v7 = v1[4];
          v8 = swift_slowAlloc();
          v9 = swift_slowAlloc();
          v23 = v9;
          *v8 = 136446210;
          v10 = sub_2521425DC();
          v12 = sub_2520A5448(v10, v11, &v23);

          *(v8 + 4) = v12;
          v13 = "[%{public}s] Discovery Activated";
LABEL_8:
          _os_log_impl(&dword_25207E000, v5, v6, v13, v8, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v9);
          MEMORY[0x253099FD0](v9, -1, -1);
          MEMORY[0x253099FD0](v8, -1, -1);
          goto LABEL_9;
        }

        goto LABEL_9;
      }

      v21 = *(MEMORY[0x277D857E8] + 4);
      v22 = swift_task_alloc();
      v1[8] = v22;
      *v22 = v1;
      v22[1] = sub_252122034;
      a1 = 100000000;
    }

    return MEMORY[0x282200480](a1);
  }

  v14 = v1[5];
  v5 = sub_25214196C();
  v6 = sub_252141FAC();
  if (os_log_type_enabled(v5, v6))
  {
    v15 = v1[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136446210;
    v16 = sub_2521425DC();
    v18 = sub_2520A5448(v16, v17, &v23);

    *(v8 + 4) = v18;
    v13 = "[%{public}s] Timeout discovery activation.";
    goto LABEL_8;
  }

LABEL_9:

  v19 = v1[1];

  return v19(v2 != v3);
}

uint64_t sub_2521223E4()
{
  v35 = v0;
  v1 = v0[5];
  v2 = sub_25214196C();
  v3 = sub_252141FAC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[9];
  if (v4)
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = v8;
    *v7 = 136446210;
    v9 = sub_2521425DC();
    v11 = sub_2520A5448(v9, v10, &v34);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_25207E000, v2, v3, "[%{public}s] Unable to get discovery activation status", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x253099FD0](v8, -1, -1);
    MEMORY[0x253099FD0](v7, -1, -1);
  }

  v14 = v0[6];
  v13 = v0[7];
  if (v13 != v14)
  {
    if (__OFADD__(v13, 1))
    {
      __break(1u);
    }

    else
    {
      v0[7] = v13 + 1;
      if (*(v0[3] + 216) == 1)
      {
        v15 = v0[5];
        sub_25212389C();
        sub_25211672C();
        v16 = sub_25214196C();
        v17 = sub_252141FBC();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = v0[4];
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v34 = v20;
          *v19 = 136446210;
          v21 = sub_2521425DC();
          v23 = sub_2520A5448(v21, v22, &v34);

          *(v19 + 4) = v23;
          v24 = "[%{public}s] Discovery Activated";
LABEL_10:
          _os_log_impl(&dword_25207E000, v16, v17, v24, v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v20);
          MEMORY[0x253099FD0](v20, -1, -1);
          MEMORY[0x253099FD0](v19, -1, -1);
          goto LABEL_11;
        }

        goto LABEL_11;
      }

      v32 = *(MEMORY[0x277D857E8] + 4);
      v33 = swift_task_alloc();
      v0[8] = v33;
      *v33 = v0;
      v33[1] = sub_252122034;
      v12 = 100000000;
    }

    return MEMORY[0x282200480](v12);
  }

  v25 = v0[5];
  v16 = sub_25214196C();
  v17 = sub_252141FAC();
  if (os_log_type_enabled(v16, v17))
  {
    v26 = v0[4];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v34 = v20;
    *v19 = 136446210;
    v27 = sub_2521425DC();
    v29 = sub_2520A5448(v27, v28, &v34);

    *(v19 + 4) = v29;
    v24 = "[%{public}s] Timeout discovery activation.";
    goto LABEL_10;
  }

LABEL_11:

  v30 = v0[1];

  return v30(v13 != v14);
}

uint64_t sub_25212275C()
{
  v1 = *v0;
  sub_252122B30();
  v35 = v2;
  if (qword_27F4CD740 != -1)
  {
    swift_once();
  }

  v3 = sub_25214198C();
  __swift_project_value_buffer(v3, qword_27F4CDF10);
  v4 = sub_25214196C();
  v5 = sub_252141FBC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v36 = v7;
    *v6 = 136446466;
    v8 = sub_2521425DC();
    v10 = sub_2520A5448(v8, v9, &v36);

    *(v6 + 4) = v10;
    *(v6 + 12) = 1024;
    *(v6 + 14) = v35 & 1;
    _os_log_impl(&dword_25207E000, v4, v5, "[%{public}s] otherHearingTestAlreadyActive: %{BOOL}d", v6, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x253099FD0](v7, -1, -1);
    MEMORY[0x253099FD0](v6, -1, -1);
  }

  sub_25212D5F0();
  v12 = v11;
  v14 = v13;
  v15 = sub_25214196C();
  v16 = sub_252141FBC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v36 = v18;
    *v17 = 136446466;
    v19 = sub_2521425DC();
    v21 = sub_2520A5448(v19, v20, &v36);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = sub_2520A5448(v12, v14, &v36);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_25207E000, v15, v16, "[%{public}s] hearingTestProcessName: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v18, -1, -1);
    MEMORY[0x253099FD0](v17, -1, -1);
  }

  else
  {
  }

  sub_25212D740();
  v24 = v23;
  v26 = v25;

  v27 = sub_25214196C();
  v28 = sub_252141FBC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36 = v30;
    *v29 = 136446466;
    v31 = sub_2521425DC();
    v33 = sub_2520A5448(v31, v32, &v36);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_2520A5448(v24, v26, &v36);
    _os_log_impl(&dword_25207E000, v27, v28, "[%{public}s] hearingTestApplicationName: %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v30, -1, -1);
    MEMORY[0x253099FD0](v29, -1, -1);
  }

  return v35 & 1;
}

void sub_252122B30()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDD08, &unk_252144B00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v54 - v4;
  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v7 = sub_252141B6C();
  v8 = [v6 initWithSuiteName_];

  if (v8)
  {
    sub_2520DB7EC(v5);

    v9 = sub_25214188C();
    if ((*(*(v9 - 8) + 48))(v5, 1, v9) == 1)
    {
      if (qword_27F4CD740 != -1)
      {
        swift_once();
      }

      v10 = sub_25214198C();
      __swift_project_value_buffer(v10, qword_27F4CDF10);
      v11 = sub_25214196C();
      v12 = sub_252141FBC();
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_17;
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "No framework timestamp found, ok to continue";
      goto LABEL_15;
    }

    v54 = v1;
    sub_25212D5F0();
    v16 = v15;
    v18 = v17;
    v19 = [objc_opt_self() processInfo];
    v20 = [v19 processName];

    v21 = sub_252141B9C();
    v23 = v22;

    if (v16 == v21 && v18 == v23)
    {

LABEL_11:

      if (qword_27F4CD740 != -1)
      {
        swift_once();
      }

      v25 = sub_25214198C();
      __swift_project_value_buffer(v25, qword_27F4CDF10);
      v11 = sub_25214196C();
      v12 = sub_252141FBC();
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_17;
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "Our framework timestamp found, ok to continue";
LABEL_15:
      _os_log_impl(&dword_25207E000, v11, v12, v14, v13, 2u);
      v26 = v13;
LABEL_16:
      MEMORY[0x253099FD0](v26, -1, -1);
LABEL_17:

LABEL_18:
      sub_2520A2584(v5, &qword_27F4CDD08, &unk_252144B00);
      return;
    }

    v24 = sub_25214247C();

    if (v24)
    {
      goto LABEL_11;
    }

    v27 = [objc_opt_self() currentDevice];
    v28 = [v27 model];

    v29 = sub_252141B9C();
    v31 = v30;

    if (v29 == 1684099177 && v31 == 0xE400000000000000)
    {

      goto LABEL_23;
    }

    v32 = sub_25214247C();

    if (v32)
    {
LABEL_23:
      sub_2521232A4(v16, v18, 1.0);
      if (v33)
      {
        if (qword_27F4CD740 != -1)
        {
          swift_once();
        }

        v34 = sub_25214198C();
        __swift_project_value_buffer(v34, qword_27F4CDF10);

        v11 = sub_25214196C();
        v35 = sub_252141FBC();

        if (os_log_type_enabled(v11, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v55 = v37;
          *v36 = 136446466;
          v38 = sub_2521425DC();
          v40 = sub_2520A5448(v38, v39, &v55);

          *(v36 + 4) = v40;
          *(v36 + 12) = 2080;
          v41 = sub_2520A5448(v16, v18, &v55);

          *(v36 + 14) = v41;
          _os_log_impl(&dword_25207E000, v11, v35, "[%{public}s] %s has recent timestamp and is probably active", v36, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x253099FD0](v37, -1, -1);
          MEMORY[0x253099FD0](v36, -1, -1);
          goto LABEL_17;
        }

        goto LABEL_36;
      }

      goto LABEL_30;
    }

    v42 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v43 = sub_252141B6C();
    v44 = [v42 initWithSuiteName_];

    if (v44)
    {
      v45 = sub_2520DBAD4();

      if ((v45 & 1) == 0)
      {
        if (qword_27F4CD740 != -1)
        {
          swift_once();
        }

        v46 = sub_25214198C();
        __swift_project_value_buffer(v46, qword_27F4CDF10);

        v11 = sub_25214196C();
        v47 = sub_252141FBC();

        if (os_log_type_enabled(v11, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v55 = v49;
          *v48 = 136446466;
          v50 = sub_2521425DC();
          v52 = sub_2520A5448(v50, v51, &v55);

          *(v48 + 4) = v52;
          *(v48 + 12) = 2080;
          v53 = sub_2520A5448(v16, v18, &v55);

          *(v48 + 14) = v53;
          _os_log_impl(&dword_25207E000, v11, v47, "[%{public}s] %s crashed, okay to continue", v48, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x253099FD0](v49, -1, -1);
          v26 = v48;
          goto LABEL_16;
        }

LABEL_36:

        goto LABEL_17;
      }

LABEL_30:
      sub_2521232A4(v16, v18, 120.0);

      goto LABEL_18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2521232A4(uint64_t a1, unint64_t a2, double a3)
{
  v7 = *v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDD08, &unk_252144B00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v46 - v10;
  v12 = sub_25214188C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v18 = sub_252141B6C();
  v19 = [v17 initWithSuiteName_];

  if (v19)
  {
    sub_2520DB7EC(v11);

    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_2520A2584(v11, &qword_27F4CDD08, &unk_252144B00);
      if (qword_27F4CD740 != -1)
      {
        swift_once();
      }

      v20 = sub_25214198C();
      __swift_project_value_buffer(v20, qword_27F4CDF10);
      v21 = sub_25214196C();
      v22 = sub_252141FBC();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v47 = v24;
        *v23 = 136446210;
        v25 = sub_2521425DC();
        v27 = sub_2520A5448(v25, v26, &v47);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_25207E000, v21, v22, "[%{public}s] framework timestamp missing, ok to continue", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x253099FD0](v24, -1, -1);
        MEMORY[0x253099FD0](v23, -1, -1);
      }
    }

    else
    {
      (*(v13 + 32))(v16, v11, v12);
      sub_25214186C();
      if (-v28 >= a3)
      {
        if (qword_27F4CD740 != -1)
        {
          swift_once();
        }

        v38 = sub_25214198C();
        __swift_project_value_buffer(v38, qword_27F4CDF10);

        v30 = sub_25214196C();
        v39 = sub_252141FBC();

        if (os_log_type_enabled(v30, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v46 = a1;
          v47 = v41;
          v42 = v41;
          *v40 = 136446466;
          v43 = sub_2521425DC();
          v45 = sub_2520A5448(v43, v44, &v47);

          *(v40 + 4) = v45;
          *(v40 + 12) = 2080;
          *(v40 + 14) = sub_2520A5448(v46, a2, &v47);
          _os_log_impl(&dword_25207E000, v30, v39, "[%{public}s] framework timestamp expired from %s, ok to continue", v40, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x253099FD0](v42, -1, -1);
          MEMORY[0x253099FD0](v40, -1, -1);
        }
      }

      else
      {
        if (qword_27F4CD740 != -1)
        {
          swift_once();
        }

        v29 = sub_25214198C();
        __swift_project_value_buffer(v29, qword_27F4CDF10);

        v30 = sub_25214196C();
        v31 = sub_252141FBC();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v46 = a1;
          v47 = v33;
          v34 = v33;
          *v32 = 136446466;
          v35 = sub_2521425DC();
          v37 = sub_2520A5448(v35, v36, &v47);

          *(v32 + 4) = v37;
          *(v32 + 12) = 2080;
          *(v32 + 14) = sub_2520A5448(v46, a2, &v47);
          _os_log_impl(&dword_25207E000, v30, v31, "[%{public}s] framework timestamp already in use by %s, this process should not continue", v32, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x253099FD0](v34, -1, -1);
          MEMORY[0x253099FD0](v32, -1, -1);
        }
      }

      (*(v13 + 8))(v16, v12);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_25212389C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDD08, &unk_252144B00);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - v5;
  if (qword_27F4CD740 != -1)
  {
    swift_once();
  }

  v7 = sub_25214198C();
  __swift_project_value_buffer(v7, qword_27F4CDF10);
  v8 = sub_25214196C();
  v9 = sub_252141FBC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v38 = v11;
    *v10 = 136315138;
    v12 = [objc_opt_self() processInfo];
    v13 = [v12 processName];

    v14 = sub_252141B9C();
    v16 = v15;

    v17 = sub_2520A5448(v14, v16, &v38);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_25207E000, v8, v9, "Starting current session timestamp for %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x253099FD0](v11, -1, -1);
    MEMORY[0x253099FD0](v10, -1, -1);
  }

  v18 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v19 = sub_252141B6C();
  v20 = [v18 initWithSuiteName_];

  if (!v20)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_25214187C();
  v21 = sub_25214188C();
  v22 = *(v21 - 8);
  (*(v22 + 56))(v6, 0, 1, v21);
  sub_2520A2D9C(v6, v3, &qword_27F4CDD08, &unk_252144B00);
  v23 = 0;
  if ((*(v22 + 48))(v3, 1, v21) != 1)
  {
    v23 = sub_25214185C();
    (*(v22 + 8))(v3, v21);
  }

  v24 = sub_252141B6C();
  [v20 setValue:v23 forKey:v24];

  swift_unknownObjectRelease();
  sub_2520A2584(v6, &qword_27F4CDD08, &unk_252144B00);
  v25 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v26 = sub_252141B6C();
  v27 = [v25 initWithSuiteName_];

  if (!v27)
  {
    goto LABEL_14;
  }

  v28 = [objc_opt_self() processInfo];
  v29 = [v28 processName];

  if (!v29)
  {
    sub_252141B9C();
    v29 = sub_252141B6C();
  }

  v30 = sub_252141B6C();
  [v27 setValue:v29 forKey:v30];

  v31 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v32 = sub_252141B6C();
  v33 = [v31 initWithSuiteName_];

  if (v33)
  {
    sub_2520DC654();
    v34 = sub_252141B6C();

    v35 = sub_252141B6C();
    [v33 setValue:v34 forKey:v35];

    v36 = *(v37 + 248);
    sub_2520F85B8(1);

    return;
  }

LABEL_15:
  __break(1u);
}

void sub_252123DD8()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[32];
  if (v3)
  {
    v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

    v5 = sub_252141B6C();
    v6 = [v4 initWithSuiteName_];

    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = sub_252141B6C();
    v8 = [v6 BOOLForKey_];

    if (v8)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v9 = sub_25214198C();
      __swift_project_value_buffer(v9, qword_27F4CDE68);
      v10 = sub_25214196C();
      v11 = sub_252141FBC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v31 = v13;
        *v12 = 136446210;
        v14 = sub_2521425DC();
        v16 = sub_2520A5448(v14, v15, &v31);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_25207E000, v10, v11, "[%{public}s] start noise sim", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x253099FD0](v13, -1, -1);
        MEMORY[0x253099FD0](v12, -1, -1);
      }

      v17 = *(v3 + 48);
      *(v3 + 48) = v1;
      *(v3 + 56) = &protocol witness table for HTRequirementStatusManager;

      swift_unknownObjectRelease();
      sub_2520A4F04();
      sub_252114478();

      return;
    }
  }

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v18 = sub_25214198C();
  __swift_project_value_buffer(v18, qword_27F4CDE68);

  v19 = sub_25214196C();
  v20 = sub_252141FBC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31 = v22;
    *v21 = 136446466;
    v23 = sub_2521425DC();
    v25 = sub_2520A5448(v23, v24, &v31);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v26 = v1[2];
    v27 = v1[3];

    v28 = sub_2520A5448(v26, v27, &v31);

    *(v21 + 14) = v28;
    _os_log_impl(&dword_25207E000, v19, v20, "[%{public}s] startListeningEnvNoise %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v22, -1, -1);
    MEMORY[0x253099FD0](v21, -1, -1);
  }

  v29 = v1[33];
  sub_25212BCA8(v1, v29);

  v30 = v1[33];
  sub_2520C7F08();
}

void sub_252124210()
{
  v1 = v0;
  v2 = *v0;
  if (v0[32])
  {
    v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

    v4 = sub_252141B6C();
    v5 = [v3 initWithSuiteName_];

    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = sub_252141B6C();
    v7 = [v5 BOOLForKey_];

    if (v7)
    {
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v8 = sub_25214198C();
      __swift_project_value_buffer(v8, qword_27F4CDE68);
      v9 = sub_25214196C();
      v10 = sub_252141FBC();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v29 = v12;
        *v11 = 136446210;
        v13 = sub_2521425DC();
        v15 = sub_2520A5448(v13, v14, &v29);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_25207E000, v9, v10, "[%{public}s] stop noise sim", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x253099FD0](v12, -1, -1);
        MEMORY[0x253099FD0](v11, -1, -1);
      }

      sub_2520A50DC();

      return;
    }
  }

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v16 = sub_25214198C();
  __swift_project_value_buffer(v16, qword_27F4CDE68);

  v17 = sub_25214196C();
  v18 = sub_252141FBC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = v20;
    *v19 = 136446466;
    v21 = sub_2521425DC();
    v23 = sub_2520A5448(v21, v22, &v29);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = *(v1 + 16);
    v25 = *(v1 + 24);

    v26 = sub_2520A5448(v24, v25, &v29);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_25207E000, v17, v18, "[%{public}s] stopListeningEnvNoise %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v20, -1, -1);
    MEMORY[0x253099FD0](v19, -1, -1);
  }

  v27 = *(v1 + 264);
  sub_25212BFE0(v1, v27);

  v28 = *(v1 + 264);
  sub_2520C80A4();
}

unint64_t sub_25212462C@<X0>(uint64_t a1@<X8>)
{
  result = sub_25209D178(MEMORY[0x277D84F90]);
  *a1 = result;
  *(a1 + 8) = 2;
  return result;
}

uint64_t sub_25212466C(uint64_t a1)
{
  v2[78] = v1;
  v2[77] = a1;
  v2[79] = *v1;
  return MEMORY[0x2822009F8](sub_2521246B8, 0, 0);
}

uint64_t sub_2521246B8()
{
  v40 = v0;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v1 = sub_25214198C();
  *(v0 + 640) = __swift_project_value_buffer(v1, qword_27F4CDE68);
  v2 = sub_25214196C();
  v3 = sub_252141FBC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 632);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v39 = v6;
    *v5 = 136446210;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, &v39);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25207E000, v2, v3, "[%{public}s] Starting hearingTestFaultCheckStatusWithReasonFetchOnDemand", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  v10 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v11 = sub_252141B6C();
  v12 = [v10 initWithSuiteName_];

  if (!v12)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v13, v14, v15);
  }

  v16 = sub_252141B6C();
  v17 = [v12 BOOLForKey_];

  v18 = sub_25214196C();
  v19 = sub_252141FBC();
  v20 = os_log_type_enabled(v18, v19);
  if (!v17)
  {
    if (v20)
    {
      v30 = *(v0 + 632);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39 = v32;
      *v31 = 136446210;
      v33 = sub_2521425DC();
      v35 = sub_2520A5448(v33, v34, &v39);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_25207E000, v18, v19, "[%{public}s] FaultCheck: UserDefaults sim mode disabled.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x253099FD0](v32, -1, -1);
      MEMORY[0x253099FD0](v31, -1, -1);
    }

    *(v0 + 648) = sub_252141E1C();
    *(v0 + 656) = sub_252141E0C();
    v36 = sub_252141DEC();
    v38 = v37;
    v13 = sub_252124AE4;
    v14 = v36;
    v15 = v38;

    return MEMORY[0x2822009F8](v13, v14, v15);
  }

  if (v20)
  {
    v21 = *(v0 + 632);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v39 = v23;
    *v22 = 136446210;
    v24 = sub_2521425DC();
    v26 = sub_2520A5448(v24, v25, &v39);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_25207E000, v18, v19, "[%{public}s] FaultCheck: UserDefaults sim mode enabled.", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x253099FD0](v23, -1, -1);
    MEMORY[0x253099FD0](v22, -1, -1);
  }

  v27 = *(v0 + 624);
  sub_252126B10(*(v0 + 616));
  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_252124AE4()
{
  v1 = (v0 + 496);
  v2 = *(v0 + 656);
  v3 = *(v0 + 624);

  v4 = *(v3 + 248);
  v5 = *&v4[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
  *(swift_task_alloc() + 16) = v4;
  v6 = v4;
  *(v0 + 664) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F0, &qword_2521467A0);
  sub_25214200C();
  *(v0 + 672) = 0;

  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  *(v0 + 680) = v8;
  *(v0 + 688) = v7;
  v9 = *(v0 + 48);
  *(v0 + 496) = *(v0 + 32);
  *(v0 + 512) = v9;
  *(v0 + 528) = *(v0 + 64);
  *(v0 + 540) = *(v0 + 76);
  if (v7)
  {
    *(v0 + 96) = v8;
    *(v0 + 104) = v7;
    v10 = *(v0 + 512);
    *(v0 + 112) = *v1;
    *(v0 + 128) = v10;
    *(v0 + 144) = *(v0 + 528);
    *(v0 + 156) = *(v0 + 540);

    sub_2520A2584(v0 + 96, &qword_27F4CE6F0, &qword_2521467A0);
    v11 = sub_252124DD8;
  }

  else
  {
    *(v0 + 416) = v8;
    *(v0 + 424) = 0;
    v12 = *(v0 + 512);
    *(v0 + 432) = *v1;
    *(v0 + 448) = v12;
    *(v0 + 464) = *(v0 + 528);
    *(v0 + 476) = *(v0 + 540);
    sub_2520A2584(v0 + 416, &qword_27F4CE6F0, &qword_2521467A0);
    v11 = sub_252124C8C;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_252124C8C()
{
  v13 = v0;
  v1 = *(v0 + 640);
  v2 = sub_25214196C();
  v3 = sub_252141FAC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 632);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25207E000, v2, v3, "[%{public}s] FaultCheck: Cannot get connected device uuid", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  **(v0 + 616) = 2;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_252124DD8()
{
  v18 = v0;
  v1 = *(v0 + 688);
  v2 = *(v0 + 680) & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {
    v3 = *(v0 + 648);
    *(v0 + 696) = sub_252141E0C();
    v5 = sub_252141DEC();

    return MEMORY[0x2822009F8](sub_252124FB4, v5, v4);
  }

  else
  {

    v6 = *(v0 + 640);
    v7 = sub_25214196C();
    v8 = sub_252141FAC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 632);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136446210;
      v12 = sub_2521425DC();
      v14 = sub_2520A5448(v12, v13, &v17);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_25207E000, v7, v8, "[%{public}s] FaultCheck: Cannot get connected device uuid", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x253099FD0](v11, -1, -1);
      MEMORY[0x253099FD0](v10, -1, -1);
    }

    **(v0 + 616) = 2;
    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_252124FB4()
{
  v1 = (v0 + 560);
  v2 = *(v0 + 696);
  v3 = *(v0 + 672);
  v4 = *(v0 + 664);
  v5 = *(v0 + 624);

  v6 = *(v5 + 248);
  v7 = *&v6[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
  *(swift_task_alloc() + 16) = v6;
  v8 = v6;
  sub_25214200C();

  v10 = *(v0 + 176);
  v9 = *(v0 + 184);
  v11 = *(v0 + 208);
  *(v0 + 560) = *(v0 + 192);
  *(v0 + 576) = v11;
  *(v0 + 592) = *(v0 + 224);
  *(v0 + 608) = *(v0 + 240);
  v12 = *(v0 + 248);
  *(v0 + 92) = v12;
  if (v9)
  {
    *(v0 + 256) = v10;
    *(v0 + 264) = v9;
    v13 = *(v0 + 576);
    *(v0 + 272) = *v1;
    *(v0 + 288) = v13;
    *(v0 + 304) = *(v0 + 592);
    *(v0 + 320) = *(v0 + 608);
    *(v0 + 328) = v12;
    sub_2520A2584(v0 + 256, &qword_27F4CE6F0, &qword_2521467A0);
    v14 = sub_25212514C;
  }

  else
  {
    v15 = *(v0 + 688);

    *(v0 + 336) = v10;
    *(v0 + 344) = 0;
    v16 = *(v0 + 576);
    *(v0 + 352) = *v1;
    *(v0 + 368) = v16;
    *(v0 + 384) = *(v0 + 592);
    *(v0 + 400) = *(v0 + 608);
    *(v0 + 408) = v12;
    sub_2520A2584(v0 + 336, &qword_27F4CE6F0, &qword_2521467A0);
    v14 = sub_252125488;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

uint64_t sub_25212514C()
{
  v28 = v0;
  v1 = *(v0 + 92);
  switch(v1)
  {
    case 8231:
      if (qword_27F4CD790 == -1)
      {
        v2 = 8231;
        goto LABEL_10;
      }

      goto LABEL_18;
    case 8228:
      if (qword_27F4CD780 == -1)
      {
        v2 = 8228;
        goto LABEL_10;
      }

LABEL_18:
      swift_once();
      v2 = *(v0 + 92);
      goto LABEL_10;
    case 8212:
      if (qword_27F4CD780 == -1)
      {
        v2 = 8212;
LABEL_10:
        v3 = *(v0 + 688);
        v4 = *(v0 + 680);
        v5 = *(v0 + 632);
        v6 = *(v0 + 624);
        v7 = *(v6 + 264);
        sub_2520C7514(v2);

        v8 = [objc_allocWithZone(MEMORY[0x277D12B98]) init];
        *(v0 + 704) = v8;
        v9 = *(v6 + 248);
        *(v0 + 712) = v9;
        v10 = swift_task_alloc();
        *(v0 + 720) = v10;
        *(v10 + 16) = v8;
        *(v10 + 24) = v4;
        *(v10 + 32) = v3;
        *(v10 + 40) = 3;
        *(v10 + 48) = v9;
        *(v10 + 56) = v5;
        v11 = *(MEMORY[0x277D859E0] + 4);
        v12 = v9;
        v13 = swift_task_alloc();
        *(v0 + 728) = v13;
        *v13 = v0;
        v13[1] = sub_2521255D4;
        v14 = *(v0 + 616);

        return MEMORY[0x2822007B8](v14, 0, 0, 0xD000000000000034, 0x800000025214B700, sub_25212D864, v10, &type metadata for HTFaultStatusWithReason);
      }

      goto LABEL_18;
  }

  v15 = *(v0 + 688);

  v16 = *(v0 + 640);
  v17 = sub_25214196C();
  v18 = sub_252141FAC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 632);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27 = v21;
    *v20 = 136446210;
    v22 = sub_2521425DC();
    v24 = sub_2520A5448(v22, v23, &v27);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_25207E000, v17, v18, "[%{public}s] FaultCheck: product unsupported for calibration", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x253099FD0](v21, -1, -1);
    MEMORY[0x253099FD0](v20, -1, -1);
  }

  **(v0 + 616) = 2;
  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_252125488()
{
  v13 = v0;
  v1 = *(v0 + 640);
  v2 = sub_25214196C();
  v3 = sub_252141FAC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 632);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = sub_2521425DC();
    v9 = sub_2520A5448(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25207E000, v2, v3, "[%{public}s] FaultCheck: product unsupported for calibration", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x253099FD0](v6, -1, -1);
    MEMORY[0x253099FD0](v5, -1, -1);
  }

  **(v0 + 616) = 2;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2521255D4()
{
  v1 = *(*v0 + 728);
  v2 = *(*v0 + 720);
  v3 = *(*v0 + 688);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_252125708, 0, 0);
}

uint64_t sub_252125708()
{
  v1 = *(v0 + 704);

  v2 = *(v0 + 8);

  return v2();
}

void sub_252125770(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5, void *a6, uint64_t a7)
{
  v22 = a5;
  v21 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F4CE948, &qword_252147BB8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  v15 = sub_252141B6C();
  (*(v11 + 16))(v14, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v16, v14, v10);
  *(v18 + v17) = a6;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = a7;
  aBlock[4] = sub_252130434;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252126A98;
  aBlock[3] = &block_descriptor_443_1;
  v19 = _Block_copy(aBlock);
  v20 = a6;

  [v21 fetchOcclusionResultForDeviceIdentifier:v15 featureID:v22 completion:v19];
  _Block_release(v19);
}

void sub_25212597C(int a1, void *a2, uint64_t a3, char *a4)
{
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v7 = sub_25214198C();
  __swift_project_value_buffer(v7, qword_27F4CDE68);
  v8 = sub_25214196C();
  v9 = sub_252141FBC();
  v106 = a4;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock = v11;
    *v10 = 136446466;
    v12 = sub_2521425DC();
    v14 = sub_2520A5448(v12, v13, &aBlock);

    *(v10 + 4) = v14;
    *(v10 + 12) = 1024;
    *(v10 + 14) = a1;
    _os_log_impl(&dword_25207E000, v8, v9, "[%{public}s] client fetchOcclusionResult %d ", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x253099FD0](v11, -1, -1);
    MEMORY[0x253099FD0](v10, -1, -1);
  }

  if (!a2)
  {
    v26 = sub_25214196C();
    if (a1 <= 3)
    {
      if (a1 > 1)
      {
        if (a1 == 2)
        {
          v82 = sub_252141FBC();
          if (os_log_type_enabled(v26, v82))
          {
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            aBlock = v84;
            *v83 = 136446210;
            v85 = sub_2521425DC();
            v87 = sub_2520A5448(v85, v86, &aBlock);

            *(v83 + 4) = v87;
            _os_log_impl(&dword_25207E000, v26, v82, "[%{public}s] fetch occlusion return fail", v83, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v84);
            MEMORY[0x253099FD0](v84, -1, -1);
            MEMORY[0x253099FD0](v83, -1, -1);
          }

          LOBYTE(aBlock) = 2;
        }

        else
        {
          v48 = sub_252141FBC();
          if (os_log_type_enabled(v26, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            aBlock = v50;
            *v49 = 136446210;
            v51 = sub_2521425DC();
            v53 = sub_2520A5448(v51, v52, &aBlock);

            *(v49 + 4) = v53;
            _os_log_impl(&dword_25207E000, v26, v48, "[%{public}s] fetch occlusion return pass", v49, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v50);
            MEMORY[0x253099FD0](v50, -1, -1);
            MEMORY[0x253099FD0](v49, -1, -1);
          }

          LOBYTE(aBlock) = 3;
        }

        goto LABEL_51;
      }

      if (!a1)
      {
        v60 = sub_252141FBC();
        if (os_log_type_enabled(v26, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          aBlock = v62;
          *v61 = 136446210;
          v63 = sub_2521425DC();
          v65 = sub_2520A5448(v63, v64, &aBlock);

          *(v61 + 4) = v65;
          v66 = "[%{public}s] fetch occlusion return unknown";
LABEL_49:
          _os_log_impl(&dword_25207E000, v26, v60, v66, v61, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v62);
          MEMORY[0x253099FD0](v62, -1, -1);
          MEMORY[0x253099FD0](v61, -1, -1);
        }

LABEL_50:

        LOBYTE(aBlock) = 0;
        goto LABEL_51;
      }

      if (a1 == 1)
      {
        v27 = sub_252141FBC();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          aBlock = v29;
          *v28 = 136446210;
          v30 = sub_2521425DC();
          v32 = sub_2520A5448(v30, v31, &aBlock);

          *(v28 + 4) = v32;
          _os_log_impl(&dword_25207E000, v26, v27, "[%{public}s] fetch occlusion return insufficientMeasurements", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v29);
          MEMORY[0x253099FD0](v29, -1, -1);
          MEMORY[0x253099FD0](v28, -1, -1);
        }

        LOBYTE(aBlock) = 1;
        goto LABEL_51;
      }

LABEL_47:
      v60 = sub_252141FAC();
      if (os_log_type_enabled(v26, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        aBlock = v62;
        *v61 = 136446210;
        v103 = sub_2521425DC();
        v105 = sub_2520A5448(v103, v104, &aBlock);

        *(v61 + 4) = v105;
        v66 = "[%{public}s] cannot parse occlusion result";
        goto LABEL_49;
      }

      goto LABEL_50;
    }

    if (a1 > 5)
    {
      if (a1 != 6)
      {
        if (a1 == 7)
        {
          v54 = sub_252141FBC();
          if (os_log_type_enabled(v26, v54))
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            aBlock = v56;
            *v55 = 136446210;
            v57 = sub_2521425DC();
            v59 = sub_2520A5448(v57, v58, &aBlock);

            *(v55 + 4) = v59;
            _os_log_impl(&dword_25207E000, v26, v54, "[%{public}s] fetch occlusion return failOnSubsequentAttempt", v55, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v56);
            MEMORY[0x253099FD0](v56, -1, -1);
            MEMORY[0x253099FD0](v55, -1, -1);
          }

          LOBYTE(aBlock) = 7;
          goto LABEL_51;
        }

        goto LABEL_47;
      }

      v88 = sub_252141FBC();
      if (os_log_type_enabled(v26, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        aBlock = v90;
        *v89 = 136446210;
        v91 = sub_2521425DC();
        v93 = sub_2520A5448(v91, v92, &aBlock);

        *(v89 + 4) = v93;
        _os_log_impl(&dword_25207E000, v26, v88, "[%{public}s] fetch occlusion return passWithGainTableUpdateBothSides", v89, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v90);
        MEMORY[0x253099FD0](v90, -1, -1);
        MEMORY[0x253099FD0](v89, -1, -1);
      }

      v94 = *&v106[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
      v95 = swift_allocObject();
      *(v95 + 16) = v106;
      *(v95 + 24) = 1;
      v96 = swift_allocObject();
      *(v96 + 16) = sub_252130798;
      *(v96 + 24) = v95;
      v111 = sub_2520ADA58;
      v112 = v96;
      aBlock = MEMORY[0x277D85DD0];
      v108 = 1107296256;
      v109 = sub_252083924;
      v110 = &block_descriptor_496;
      v97 = _Block_copy(&aBlock);
      v98 = v106;

      dispatch_sync(v94, v97);
      _Block_release(v97);
      LOBYTE(v97) = swift_isEscapingClosureAtFileLocation();

      if ((v97 & 1) == 0)
      {
        v99 = swift_allocObject();
        *(v99 + 16) = v98;
        *(v99 + 24) = 1;
        v100 = swift_allocObject();
        *(v100 + 16) = sub_25213079C;
        *(v100 + 24) = v99;
        v111 = sub_2520ADA58;
        v112 = v100;
        aBlock = MEMORY[0x277D85DD0];
        v108 = 1107296256;
        v109 = sub_252083924;
        v110 = &block_descriptor_507;
        v101 = _Block_copy(&aBlock);
        v102 = v98;

        dispatch_sync(v94, v101);
        _Block_release(v101);
        LOBYTE(v101) = swift_isEscapingClosureAtFileLocation();

        if ((v101 & 1) == 0)
        {
          LOBYTE(aBlock) = 6;
          goto LABEL_51;
        }

        goto LABEL_56;
      }
    }

    else
    {
      if (a1 != 4)
      {
        v33 = sub_252141FBC();
        if (os_log_type_enabled(v26, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          aBlock = v35;
          *v34 = 136446210;
          v36 = sub_2521425DC();
          v38 = sub_2520A5448(v36, v37, &aBlock);

          *(v34 + 4) = v38;
          _os_log_impl(&dword_25207E000, v26, v33, "[%{public}s] fetch occlusion return passWithGainTableUpdateRight", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v35);
          MEMORY[0x253099FD0](v35, -1, -1);
          MEMORY[0x253099FD0](v34, -1, -1);
        }

        v39 = *&v106[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
        v40 = swift_allocObject();
        *(v40 + 16) = v106;
        *(v40 + 24) = 0;
        v41 = swift_allocObject();
        *(v41 + 16) = sub_252130530;
        *(v41 + 24) = v40;
        v111 = sub_2520ADA58;
        v112 = v41;
        aBlock = MEMORY[0x277D85DD0];
        v108 = 1107296256;
        v109 = sub_252083924;
        v110 = &block_descriptor_453;
        v42 = _Block_copy(&aBlock);
        v43 = v106;

        dispatch_sync(v39, v42);
        _Block_release(v42);
        LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

        if ((v42 & 1) == 0)
        {
          v44 = swift_allocObject();
          *(v44 + 16) = v43;
          *(v44 + 24) = 1;
          v45 = swift_allocObject();
          *(v45 + 16) = sub_25213053C;
          *(v45 + 24) = v44;
          v111 = sub_2520ADA58;
          v112 = v45;
          aBlock = MEMORY[0x277D85DD0];
          v108 = 1107296256;
          v109 = sub_252083924;
          v110 = &block_descriptor_463;
          v46 = _Block_copy(&aBlock);
          v47 = v43;

          dispatch_sync(v39, v46);
          _Block_release(v46);
          LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

          if ((v46 & 1) == 0)
          {
            LOBYTE(aBlock) = 5;
LABEL_51:
            __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F4CE948, &qword_252147BB8);
            sub_252141DFC();
            return;
          }

LABEL_57:
          __break(1u);
          return;
        }

        goto LABEL_54;
      }

      v67 = sub_252141FBC();
      if (os_log_type_enabled(v26, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        aBlock = v69;
        *v68 = 136446210;
        v70 = sub_2521425DC();
        v72 = sub_2520A5448(v70, v71, &aBlock);

        *(v68 + 4) = v72;
        _os_log_impl(&dword_25207E000, v26, v67, "[%{public}s] fetch occlusion return passWithGainTableUpdateLeft", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v69);
        MEMORY[0x253099FD0](v69, -1, -1);
        MEMORY[0x253099FD0](v68, -1, -1);
      }

      v73 = *&v106[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
      v74 = swift_allocObject();
      *(v74 + 16) = v106;
      *(v74 + 24) = 1;
      v75 = swift_allocObject();
      *(v75 + 16) = sub_252130798;
      *(v75 + 24) = v74;
      v111 = sub_2520ADA58;
      v112 = v75;
      aBlock = MEMORY[0x277D85DD0];
      v108 = 1107296256;
      v109 = sub_252083924;
      v110 = &block_descriptor_474;
      v76 = _Block_copy(&aBlock);
      v77 = v106;

      dispatch_sync(v73, v76);
      _Block_release(v76);
      LOBYTE(v76) = swift_isEscapingClosureAtFileLocation();

      if ((v76 & 1) == 0)
      {
        v78 = swift_allocObject();
        *(v78 + 16) = v77;
        *(v78 + 24) = 0;
        v79 = swift_allocObject();
        *(v79 + 16) = sub_25213079C;
        *(v79 + 24) = v78;
        v111 = sub_2520ADA58;
        v112 = v79;
        aBlock = MEMORY[0x277D85DD0];
        v108 = 1107296256;
        v109 = sub_252083924;
        v110 = &block_descriptor_485;
        v80 = _Block_copy(&aBlock);
        v81 = v77;

        dispatch_sync(v73, v80);
        _Block_release(v80);
        LOBYTE(v80) = swift_isEscapingClosureAtFileLocation();

        if ((v80 & 1) == 0)
        {
          LOBYTE(aBlock) = 4;
          goto LABEL_51;
        }

        goto LABEL_55;
      }

      __break(1u);
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v15 = a2;
  v16 = sub_25214196C();
  v17 = sub_252141FAC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock = v20;
    *v18 = 136446466;
    v21 = sub_2521425DC();
    v23 = sub_2520A5448(v21, v22, &aBlock);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2112;
    v24 = a2;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v25;
    *v19 = v25;
    _os_log_impl(&dword_25207E000, v16, v17, "[%{public}s] error %@ fetch occlusion result", v18, 0x16u);
    sub_2520A2584(v19, &unk_27F4CE080, &qword_252144E30);
    MEMORY[0x253099FD0](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x253099FD0](v20, -1, -1);
    MEMORY[0x253099FD0](v18, -1, -1);
  }

  LOBYTE(aBlock) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F4CE948, &qword_252147BB8);
  sub_252141DFC();
}

void sub_252126A98(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_252126B10(char *a1@<X8>)
{
  v3 = *v1;
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = sub_252141B6C();
  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    v7 = sub_252141B6C();
    v8 = [v6 objectForKey_];

    if (!v8)
    {
      memset(v88, 0, sizeof(v88));
      sub_2520A2584(v88, &unk_27F4CE0B0, &unk_252144AF0);
      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v23 = sub_25214198C();
      __swift_project_value_buffer(v23, qword_27F4CDE68);
      v24 = sub_25214196C();
      v25 = sub_252141FBC();
      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_18;
      }

      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v88[0] = v27;
      *v26 = 136446210;
      v28 = sub_2521425DC();
      v30 = sub_2520A5448(v28, v29, v88);

      *(v26 + 4) = v30;
      v31 = "[%{public}s] UserDefaults HTSimModeFaultCheckStatusWithReason not set, default to: pass";
      goto LABEL_17;
    }

    sub_25214215C();
    swift_unknownObjectRelease();
    sub_2520A2584(v88, &unk_27F4CE0B0, &unk_252144AF0);
    v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v10 = sub_252141B6C();
    v11 = [v9 initWithSuiteName_];

    if (v11)
    {
      v12 = sub_252141B6C();
      v13 = [v11 integerForKey_];

      if (v13 > 3)
      {
        if (v13 <= 5)
        {
          if (v13 == 4)
          {
            if (qword_27F4CD708 != -1)
            {
              swift_once();
            }

            v60 = sub_25214198C();
            __swift_project_value_buffer(v60, qword_27F4CDE68);
            v61 = sub_25214196C();
            v62 = sub_252141FBC();
            if (os_log_type_enabled(v61, v62))
            {
              v63 = swift_slowAlloc();
              v64 = swift_slowAlloc();
              *&v88[0] = v64;
              *v63 = 136446210;
              v65 = sub_2521425DC();
              v67 = sub_2520A5448(v65, v66, v88);

              *(v63 + 4) = v67;
              _os_log_impl(&dword_25207E000, v61, v62, "[%{public}s] UserDefaults check fault with reason: pass with left gain updated", v63, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v64);
              MEMORY[0x253099FD0](v64, -1, -1);
              MEMORY[0x253099FD0](v63, -1, -1);
            }

            v22 = 4;
          }

          else
          {
            if (qword_27F4CD708 != -1)
            {
              swift_once();
            }

            v32 = sub_25214198C();
            __swift_project_value_buffer(v32, qword_27F4CDE68);
            v33 = sub_25214196C();
            v34 = sub_252141FBC();
            if (os_log_type_enabled(v33, v34))
            {
              v35 = swift_slowAlloc();
              v36 = swift_slowAlloc();
              *&v88[0] = v36;
              *v35 = 136446210;
              v37 = sub_2521425DC();
              v39 = sub_2520A5448(v37, v38, v88);

              *(v35 + 4) = v39;
              _os_log_impl(&dword_25207E000, v33, v34, "[%{public}s] UserDefaults check fault with reason: pass with right gain updated", v35, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v36);
              MEMORY[0x253099FD0](v36, -1, -1);
              MEMORY[0x253099FD0](v35, -1, -1);
            }

            v22 = 5;
          }

          goto LABEL_19;
        }

        if (v13 == 6)
        {
          if (qword_27F4CD708 != -1)
          {
            swift_once();
          }

          v76 = sub_25214198C();
          __swift_project_value_buffer(v76, qword_27F4CDE68);
          v77 = sub_25214196C();
          v78 = sub_252141FBC();
          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            *&v88[0] = v80;
            *v79 = 136446210;
            v81 = sub_2521425DC();
            v83 = sub_2520A5448(v81, v82, v88);

            *(v79 + 4) = v83;
            _os_log_impl(&dword_25207E000, v77, v78, "[%{public}s] UserDefaults check fault with reason: pass with both side gain updated", v79, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v80);
            MEMORY[0x253099FD0](v80, -1, -1);
            MEMORY[0x253099FD0](v79, -1, -1);
          }

          v22 = 6;
          goto LABEL_19;
        }

        if (v13 == 7)
        {
          if (qword_27F4CD708 != -1)
          {
            swift_once();
          }

          v44 = sub_25214198C();
          __swift_project_value_buffer(v44, qword_27F4CDE68);
          v45 = sub_25214196C();
          v46 = sub_252141FAC();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            *&v88[0] = v48;
            *v47 = 136446210;
            v49 = sub_2521425DC();
            v51 = sub_2520A5448(v49, v50, v88);

            *(v47 + 4) = v51;
            _os_log_impl(&dword_25207E000, v45, v46, "[%{public}s] UserDefaults check fault with reason: fail on subsequent attempt", v47, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v48);
            MEMORY[0x253099FD0](v48, -1, -1);
            MEMORY[0x253099FD0](v47, -1, -1);
          }

          v22 = 7;
          goto LABEL_19;
        }
      }

      else
      {
        if (v13 > 1)
        {
          if (v13 == 2)
          {
            if (qword_27F4CD708 != -1)
            {
              swift_once();
            }

            v68 = sub_25214198C();
            __swift_project_value_buffer(v68, qword_27F4CDE68);
            v69 = sub_25214196C();
            v70 = sub_252141FAC();
            if (os_log_type_enabled(v69, v70))
            {
              v71 = swift_slowAlloc();
              v72 = swift_slowAlloc();
              *&v88[0] = v72;
              *v71 = 136446210;
              v73 = sub_2521425DC();
              v75 = sub_2520A5448(v73, v74, v88);

              *(v71 + 4) = v75;
              _os_log_impl(&dword_25207E000, v69, v70, "[%{public}s] UserDefaults check fault with reason: fail", v71, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v72);
              MEMORY[0x253099FD0](v72, -1, -1);
              MEMORY[0x253099FD0](v71, -1, -1);
            }

            v22 = 2;
            goto LABEL_19;
          }

          if (qword_27F4CD708 != -1)
          {
            swift_once();
          }

          v40 = sub_25214198C();
          __swift_project_value_buffer(v40, qword_27F4CDE68);
          v24 = sub_25214196C();
          v25 = sub_252141FBC();
          if (!os_log_type_enabled(v24, v25))
          {
            goto LABEL_18;
          }

          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          *&v88[0] = v27;
          *v26 = 136446210;
          v41 = sub_2521425DC();
          v43 = sub_2520A5448(v41, v42, v88);

          *(v26 + 4) = v43;
          v31 = "[%{public}s] UserDefaults check fault with reason: pass";
          goto LABEL_17;
        }

        if (!v13)
        {
          if (qword_27F4CD708 != -1)
          {
            swift_once();
          }

          v52 = sub_25214198C();
          __swift_project_value_buffer(v52, qword_27F4CDE68);
          v53 = sub_25214196C();
          v54 = sub_252141FAC();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            *&v88[0] = v56;
            *v55 = 136446210;
            v57 = sub_2521425DC();
            v59 = sub_2520A5448(v57, v58, v88);

            *(v55 + 4) = v59;
            _os_log_impl(&dword_25207E000, v53, v54, "[%{public}s] UserDefaults check fault with reason: unknown", v55, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v56);
            MEMORY[0x253099FD0](v56, -1, -1);
            MEMORY[0x253099FD0](v55, -1, -1);
          }

          v22 = 0;
          goto LABEL_19;
        }

        if (v13 == 1)
        {
          if (qword_27F4CD708 != -1)
          {
            swift_once();
          }

          v14 = sub_25214198C();
          __swift_project_value_buffer(v14, qword_27F4CDE68);
          v15 = sub_25214196C();
          v16 = sub_252141FAC();
          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            v18 = swift_slowAlloc();
            *&v88[0] = v18;
            *v17 = 136446210;
            v19 = sub_2521425DC();
            v21 = sub_2520A5448(v19, v20, v88);

            *(v17 + 4) = v21;
            _os_log_impl(&dword_25207E000, v15, v16, "[%{public}s] UserDefaults check fault with reason: insufficient measurements", v17, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v18);
            MEMORY[0x253099FD0](v18, -1, -1);
            MEMORY[0x253099FD0](v17, -1, -1);
          }

          v22 = 1;
          goto LABEL_19;
        }
      }

      if (qword_27F4CD708 != -1)
      {
        swift_once();
      }

      v84 = sub_25214198C();
      __swift_project_value_buffer(v84, qword_27F4CDE68);
      v24 = sub_25214196C();
      v25 = sub_252141FAC();
      if (!os_log_type_enabled(v24, v25))
      {
        goto LABEL_18;
      }

      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v88[0] = v27;
      *v26 = 136446210;
      v85 = sub_2521425DC();
      v87 = sub_2520A5448(v85, v86, v88);

      *(v26 + 4) = v87;
      v31 = "[%{public}s] UserDefaults check fault with reason: default pass";
LABEL_17:
      _os_log_impl(&dword_25207E000, v24, v25, v31, v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x253099FD0](v27, -1, -1);
      MEMORY[0x253099FD0](v26, -1, -1);
LABEL_18:

      v22 = 3;
LABEL_19:
      *a1 = v22;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_25212775C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_252141D3C();
  *(v2 + 16) = 16;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *a1 = v2;
  *(a1 + 8) = 0;
  return result;
}

void sub_2521277A8(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 152);
  if ((~v4 & 0xFEFE) != 0)
  {
    v13 = v1[37];
    sub_25212CC54(v13, *(v1 + 152));
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v14 = sub_25214198C();
    __swift_project_value_buffer(v14, qword_27F4CDE68);
    sub_25212CC54(v13, v4);
    v15 = sub_25214196C();
    v16 = sub_252141FBC();
    sub_25212CA04(v13, v4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = v18;
      *v17 = 136446466;
      v19 = sub_2521425DC();
      v21 = sub_2520A5448(v19, v20, &v28);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v22 = v4 >> 14;
      v23 = 0xED0000656C626174;
      v24 = 0x7065636341746F6ELL;
      if (v4 >> 14 != 1)
      {
        v24 = 0x6572676F72506E69;
        v23 = 0xEA00000000007373;
      }

      if (v22)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0x6261747065636361;
      }

      if (v22)
      {
        v26 = v23;
      }

      else
      {
        v26 = 0xEA0000000000656CLL;
      }

      v27 = sub_2520A5448(v25, v26, &v28);

      *(v17 + 14) = v27;
      _os_log_impl(&dword_25207E000, v15, v16, "[%{public}s] Noise Status %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v18, -1, -1);
      MEMORY[0x253099FD0](v17, -1, -1);
    }
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v5 = sub_25214198C();
    __swift_project_value_buffer(v5, qword_27F4CDE68);
    v6 = sub_25214196C();
    v7 = sub_252141FAC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v28 = v9;
      *v8 = 136446210;
      v10 = sub_2521425DC();
      v12 = sub_2520A5448(v10, v11, &v28);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_25207E000, v6, v7, "[%{public}s] Noise Status not available (noiseStatus)", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x253099FD0](v9, -1, -1);
      MEMORY[0x253099FD0](v8, -1, -1);
    }

    v13 = sub_252141D3C();
    *(v13 + 16) = 16;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
    *(v13 + 80) = 0u;
    LOWORD(v4) = 0x8000;
  }

  *a1 = v13;
  *(a1 + 8) = v4;
}

void sub_252127B44(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 160);
  if ((~v4 & 0xFEFE) != 0)
  {
    v13 = v1[39];
    v14 = *(v1 + 160);
    j__swift_bridgeObjectRetain();
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v15 = sub_25214198C();
    __swift_project_value_buffer(v15, qword_27F4CDE68);
    j__swift_bridgeObjectRetain();
    v16 = sub_25214196C();
    v17 = sub_252141FBC();
    sub_25212CA2C(v13, v4);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136446466;
      v20 = sub_2521425DC();
      v22 = sub_2520A5448(v20, v21, &v29);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v23 = 7827308;
      v24 = 0xE400000000000000;
      v25 = 1751607656;
      if (v4 >> 14 != 2)
      {
        v25 = 0x6572676F72506E69;
        v24 = 0xEA00000000007373;
      }

      if (v4 >> 14)
      {
        v23 = 6580589;
      }

      if (v4 >> 14 <= 1)
      {
        v26 = v23;
      }

      else
      {
        v26 = v25;
      }

      if (v4 >> 14 <= 1)
      {
        v27 = 0xE300000000000000;
      }

      else
      {
        v27 = v24;
      }

      v28 = sub_2520A5448(v26, v27, &v29);

      *(v18 + 14) = v28;
      _os_log_impl(&dword_25207E000, v16, v17, "[%{public}s] Noise Status %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v19, -1, -1);
      MEMORY[0x253099FD0](v18, -1, -1);
    }
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v5 = sub_25214198C();
    __swift_project_value_buffer(v5, qword_27F4CDE68);
    v6 = sub_25214196C();
    v7 = sub_252141FAC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v29 = v9;
      *v8 = 136446210;
      v10 = sub_2521425DC();
      v12 = sub_2520A5448(v10, v11, &v29);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_25207E000, v6, v7, "[%{public}s] Noise Status not available (envNoiseStatus)", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x253099FD0](v9, -1, -1);
      MEMORY[0x253099FD0](v8, -1, -1);
    }

    v13 = sub_252141D3C();
    *(v13 + 16) = 16;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
    *(v13 + 80) = 0u;
    LOWORD(v4) = -16384;
  }

  *a1 = v13;
  *(a1 + 8) = v4;
}

void sub_252127EDC(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 84) | (*(v1 + 170) << 32);
  if ((v4 & 0xFEFEFEFEFEFEFEFELL) == 0x1EFEFEFEFELL)
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v5 = sub_25214198C();
    __swift_project_value_buffer(v5, qword_27F4CDE68);
    v6 = sub_25214196C();
    v7 = sub_252141FAC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v26 = v9;
      *v8 = 136446210;
      v10 = sub_2521425DC();
      v12 = sub_2520A5448(v10, v11, &v26);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_25207E000, v6, v7, "[%{public}s] Noise Status not available (enviNoiseStatus)", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x253099FD0](v9, -1, -1);
      MEMORY[0x253099FD0](v8, -1, -1);
    }

    v13 = sub_252141D3C();
    *(v13 + 16) = 16;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
    *(v13 + 80) = 0u;
    v4 = 0x800000000000;
  }

  else
  {
    v13 = v1[41];
    sub_25212CC68(v13, *(v1 + 84) | (*(v1 + 170) << 32));
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v14 = sub_25214198C();
    __swift_project_value_buffer(v14, qword_27F4CDE68);
    sub_25212CC68(v13, v4);
    v15 = sub_25214196C();
    v16 = sub_252141FBC();
    sub_25212CA44(v13, v4);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = 0xEA0000000000656CLL;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136446466;
      v20 = sub_2521425DC();
      v22 = sub_2520A5448(v20, v21, &v26);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v23 = v4 >> 46;
      if (v4 >> 46)
      {
        if (v23 == 1)
        {
          v24 = 0x7065636341746F6ELL;
        }

        else
        {
          v24 = 0x6572676F72506E69;
        }

        if (v23 == 1)
        {
          v17 = 0xED0000656C626174;
        }

        else
        {
          v17 = 0xEA00000000007373;
        }
      }

      else
      {
        v24 = 0x6261747065636361;
      }

      v25 = sub_2520A5448(v24, v17, &v26);

      *(v18 + 14) = v25;
      _os_log_impl(&dword_25207E000, v15, v16, "[%{public}s] Noise Status %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v19, -1, -1);
      MEMORY[0x253099FD0](v18, -1, -1);
    }
  }

  *a1 = v13;
  *(a1 + 8) = v4;
  *(a1 + 12) = WORD2(v4);
}

void sub_25212828C(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 360);
  if (v4 <= 0xFD)
  {
    v13 = v1[43];
    v14 = v1[44];
    v15 = *(v1 + 360);
    j__swift_bridgeObjectRetain();
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v16 = sub_25214198C();
    __swift_project_value_buffer(v16, qword_27F4CDE68);
    j__swift_bridgeObjectRetain();
    v17 = sub_25214196C();
    v18 = sub_252141FBC();
    sub_25212CA7C(v13, v14, v4);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31 = v20;
      *v19 = 136446466;
      v21 = sub_2521425DC();
      v23 = sub_2520A5448(v21, v22, &v31);

      *(v19 + 4) = v23;
      v24 = 0xE300000000000000;
      *(v19 + 12) = 2080;
      v25 = 7827308;
      v26 = 0xE400000000000000;
      v27 = 1751607656;
      if (v4 >> 6 != 2)
      {
        v27 = 0x6572676F72506E69;
        v26 = 0xEA00000000007373;
      }

      if (v4 >> 6)
      {
        v25 = 0x6574617265646F6DLL;
        v24 = 0xE800000000000000;
      }

      if (v4 >> 6 <= 1)
      {
        v28 = v25;
      }

      else
      {
        v28 = v27;
      }

      if (v4 >> 6 <= 1)
      {
        v29 = v24;
      }

      else
      {
        v29 = v26;
      }

      v30 = sub_2520A5448(v28, v29, &v31);

      *(v19 + 14) = v30;
      _os_log_impl(&dword_25207E000, v17, v18, "[%{public}s] Noise Status %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v20, -1, -1);
      MEMORY[0x253099FD0](v19, -1, -1);
    }
  }

  else
  {
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v5 = sub_25214198C();
    __swift_project_value_buffer(v5, qword_27F4CDE68);
    v6 = sub_25214196C();
    v7 = sub_252141FAC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v31 = v9;
      *v8 = 136446210;
      v10 = sub_2521425DC();
      v12 = sub_2520A5448(v10, v11, &v31);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_25207E000, v6, v7, "[%{public}s] Noise Status not available (environmentalNoiseStatus)", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x253099FD0](v9, -1, -1);
      MEMORY[0x253099FD0](v8, -1, -1);
    }

    v13 = sub_252141D3C();
    *(v13 + 16) = 16;
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
    *(v13 + 80) = 0u;
    LOBYTE(v4) = -64;
    v14 = 3;
  }

  *a1 = v13;
  *(a1 + 8) = v14;
  *(a1 + 16) = v4;
}

void sub_252128638(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v5 = sub_25214198C();
  __swift_project_value_buffer(v5, qword_27F4CDE68);
  v6 = sub_25214196C();
  v7 = sub_252141FBC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 136446210;
    v10 = sub_2521425DC();
    v12 = sub_2520A5448(v10, v11, &v35);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_25207E000, v6, v7, "[%{public}s] compatibleAudioDeviceStatus requested", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x253099FD0](v9, -1, -1);
    MEMORY[0x253099FD0](v8, -1, -1);
  }

  v14 = *(v2 + 232);
  if (v14 == 255)
  {
    v19 = sub_25214196C();
    v20 = sub_252141FAC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 136446210;
      v23 = sub_2521425DC();
      v25 = sub_2520A5448(v23, v24, &v35);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_25207E000, v19, v20, "[%{public}s] No audio device available", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x253099FD0](v22, -1, -1);
      MEMORY[0x253099FD0](v21, -1, -1);
    }

    v15 = 0;
    LOBYTE(v14) = -1;
  }

  else
  {
    v15 = v2[28];
    v16 = *(v2[31] + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue);
    MEMORY[0x28223BE20](v13);
    v18 = v17;
    sub_25212D894(v15, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6B8, &unk_252146B20);
    sub_25214200C();

    if (v35)
    {
    }

    else
    {
      v26 = sub_25214196C();
      v27 = sub_252141FAC();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v35 = v29;
        *v28 = 136446210;
        v30 = sub_2521425DC();
        v32 = sub_2520A5448(v30, v31, &v35);

        *(v28 + 4) = v32;
        _os_log_impl(&dword_25207E000, v26, v27, "[%{public}s] audio device expired, resetting", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x253099FD0](v29, -1, -1);
        MEMORY[0x253099FD0](v28, -1, -1);
      }

      sub_25212C9DC(v15, v14);

      v33 = v2[28];
      v2[28] = 0;
      v34 = *(v2 + 232);
      LOBYTE(v14) = -1;
      *(v2 + 232) = -1;
      sub_25212C9DC(v33, v34);
      v15 = 0;
    }
  }

  *a1 = v15;
  *(a1 + 8) = v14;
}

id sub_252128A44(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v5 = v4;
  v103 = *v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE740, &qword_2521467E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v98 - v12;
  v14 = *a3;
  if (a4)
  {
    v15 = a4;
  }

  else
  {
    v15 = *(v5 + 72);
  }

  v114 = 0;
  swift_unknownObjectWeakInit();
  v114 = a2;
  swift_unknownObjectWeakAssign();
  v115 = v14;
  v116 = v15;
  ObjectType = swift_getObjectType();
  v17 = *(a2 + 16);
  v18 = a4;
  *&aBlock = v17(ObjectType, a2);
  *(&aBlock + 1) = v19;
  v117 = sub_252141C4C();
  v118 = v20;
  v112 = &unk_28644E6B8;
  v21 = *(v5 + 88);
  [v21 lock];
  sub_2521296F8(&v112, v5, &v113, a1, a2, v14);
  v22 = 0x2796F5000uLL;
  v23 = [v21 unlock];
  v24 = 0x27F4CD000;
  if (v14 != 4)
  {
    goto LABEL_26;
  }

  v25 = *(*(v5 + 248) + OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue);
  MEMORY[0x28223BE20](v23);
  *(&v98 - 2) = v26;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CE6F0, &qword_2521467A0);
  sub_25214200C();

  v108 = aBlock;
  v109 = v120;
  v110 = *v121;
  v111[0] = *&v121[16];
  *(v111 + 12) = *&v121[28];
  if (*(&aBlock + 1))
  {
    *&aBlock = v108;
    v120 = v109;
    *v121 = v110;
    *&v121[16] = v111[0];
    *&v121[28] = *(v111 + 12);
    v24 = 0x27F4CD000uLL;
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v28 = sub_25214198C();
    __swift_project_value_buffer(v28, qword_27F4CDE68);
    v29 = sub_25214196C();
    v30 = sub_252141FBC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v105 = v32;
      *v31 = 136446210;
      v33 = sub_2521425DC();
      v35 = sub_2520A5448(v33, v34, &v105);
      v24 = 0x27F4CD000;

      *(v31 + 4) = v35;
      _os_log_impl(&dword_25207E000, v29, v30, "[%{public}s] Notifying 'discovery' observer of previously found device", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x253099FD0](v32, -1, -1);
      MEMORY[0x253099FD0](v31, -1, -1);
    }

    v22 = 0x2796F5000;
    sub_252114A48(&aBlock);
    sub_2520A2584(&v108, &qword_27F4CE6F0, &qword_2521467A0);
    goto LABEL_26;
  }

  v36 = *(v5 + 80);
  sub_25214200C();
  v37 = aBlock;
  v105 = v120;
  v106 = *v121;
  v107[0] = *&v121[16];
  *(v107 + 12) = *&v121[28];
  if (*(&aBlock + 1))
  {
    v101 = *(&aBlock + 1);
    aBlock = v105;
    v120 = v106;
    *v121 = v107[0];
    *&v121[12] = *(v107 + 12);
    if (qword_27F4CD708 != -1)
    {
      swift_once();
    }

    v102 = v36;
    v38 = sub_25214198C();
    __swift_project_value_buffer(v38, qword_27F4CDE68);
    v39 = sub_25214196C();
    v40 = sub_252141FBC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v104[0] = v99;
      *v41 = 136446210;
      v42 = sub_2521425DC();
      v100 = v37;
      v44 = sub_2520A5448(v42, v43, v104);
      v37 = v100;

      *(v41 + 4) = v44;
      _os_log_impl(&dword_25207E000, v39, v40, "[%{public}s] Notifying 'discovery' observer of previously found invalid device", v41, 0xCu);
      v45 = v99;
      __swift_destroy_boxed_opaque_existential_0(v99);
      MEMORY[0x253099FD0](v45, -1, -1);
      v46 = v41;
      v47 = v103;
      MEMORY[0x253099FD0](v46, -1, -1);
    }

    else
    {

      v47 = v103;
    }

    v74 = sub_252141E3C();
    (*(*(v74 - 8) + 56))(v13, 1, 1, v74);
    v75 = swift_allocObject();
    *(v75 + 16) = 0;
    *(v75 + 24) = 0;
    v76 = v101;
    *(v75 + 32) = v37;
    *(v75 + 40) = v76;
    v77 = v120;
    *(v75 + 48) = aBlock;
    *(v75 + 64) = v77;
    *(v75 + 80) = *v121;
    *(v75 + 92) = *&v121[12];
    *(v75 + 112) = v5;
    *(v75 + 120) = v47;

    sub_252113050(0, 0, v13, &unk_252146B38, v75);

    v78 = swift_allocObject();
    *(v78 + 16) = v5;
    *(v78 + 24) = 0u;
    *(v78 + 40) = 0u;
    *(v78 + 56) = 0u;
    *(v78 + 72) = 0u;
    *(v78 + 84) = 0u;
    v79 = swift_allocObject();
    *(v79 + 16) = sub_25212DA00;
    *(v79 + 24) = v78;
    v104[4] = sub_2520ADA58;
    v104[5] = v79;
    v104[0] = MEMORY[0x277D85DD0];
    v104[1] = 1107296256;
    v104[2] = sub_252083924;
    v104[3] = &block_descriptor_79;
    v80 = _Block_copy(v104);

    dispatch_sync(v102, v80);
    _Block_release(v80);
    LOBYTE(v80) = swift_isEscapingClosureAtFileLocation();

    v24 = 0x27F4CD000uLL;
    if ((v80 & 1) == 0)
    {
      v22 = 0x2796F5000uLL;
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_32;
  }

  if (qword_27F4CD708 != -1)
  {
LABEL_32:
    swift_once();
  }

  v48 = sub_25214198C();
  v49 = __swift_project_value_buffer(v48, qword_27F4CDE68);
  v50 = sub_25214196C();
  v51 = sub_252141FAC();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v102 = v49;
    v54 = v53;
    *&aBlock = v53;
    *v52 = 136446210;
    v55 = sub_2521425DC();
    v57 = sub_2520A5448(v55, v56, &aBlock);

    *(v52 + 4) = v57;
    _os_log_impl(&dword_25207E000, v50, v51, "[%{public}s] Not Notifying 'discovery' observer, no connected/pending CBDevice", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x253099FD0](v54, -1, -1);
    MEMORY[0x253099FD0](v52, -1, -1);
  }

  v58 = *(v5 + 248);
  sub_2520FEBE8();

  v59 = *(v5 + 248);
  sub_2520FF020();

  sub_25211E7F0();
  sub_25211EB24();
  v60 = sub_25214196C();
  v61 = sub_252141FAC();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&aBlock = v63;
    *v62 = 136446210;
    v64 = sub_2521425DC();
    v66 = sub_2520A5448(v64, v65, &aBlock);

    *(v62 + 4) = v66;
    _os_log_impl(&dword_25207E000, v60, v61, "[%{public}s] No connected device after resetting discovery", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x253099FD0](v63, -1, -1);
    MEMORY[0x253099FD0](v62, -1, -1);
  }

  v67 = *(v5 + 248);
  v68 = *&v67[OBJC_IVAR____TtC11HearingTest22HTAccessoryAHPSManager_safeVariablesQueue];
  v69 = swift_allocObject();
  *(v69 + 16) = v67;
  *(v69 + 24) = 1;
  v70 = swift_allocObject();
  *(v70 + 16) = sub_25212D930;
  *(v70 + 24) = v69;
  *v121 = sub_2520ADA58;
  *&v121[8] = v70;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v120 = sub_252083924;
  *(&v120 + 1) = &block_descriptor_65;
  v71 = _Block_copy(&aBlock);
  v72 = v67;

  dispatch_sync(v68, v71);
  _Block_release(v71);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);

    result = [v21 *(isEscapingClosureAtFileLocation + 3648)];
    __break(1u);
    return result;
  }

  v22 = 0x2796F5000;
  v24 = 0x27F4CD000;
LABEL_26:
  [v21 lock];
  swift_beginAccess();
  v81 = *(v5 + 104);

  v83 = sub_252112AD8(v82);

  swift_beginAccess();
  v112 = v83;

  [v21 *(v22 + 3648)];
  if (*(v24 + 1800) != -1)
  {
    swift_once();
  }

  v84 = sub_25214198C();
  __swift_project_value_buffer(v84, qword_27F4CDE68);
  v85 = sub_25214196C();
  v86 = sub_252141FBC();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v104[0] = v88;
    *v87 = 136446466;
    v89 = sub_2521425DC();
    v91 = sub_2520A5448(v89, v90, v104);

    *(v87 + 4) = v91;
    *(v87 + 12) = 2080;

    v93 = MEMORY[0x253098E80](v92, MEMORY[0x277D837D0]);
    v95 = v94;

    v96 = sub_2520A5448(v93, v95, v104);

    *(v87 + 14) = v96;
    _os_log_impl(&dword_25207E000, v85, v86, "[%{public}s] observers after add are %s", v87, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v88, -1, -1);
    MEMORY[0x253099FD0](v87, -1, -1);
  }

  sub_25212CBF4(&v113);
}

void sub_2521296F8(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  v9 = *(a2 + 104);

  v11 = sub_252112AD8(v10);

  swift_beginAccess();
  v12 = *a1;
  *a1 = v11;

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v13 = sub_25214198C();
  v59 = __swift_project_value_buffer(v13, qword_27F4CDE68);
  v14 = sub_25214196C();
  v15 = sub_252141FBC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v58[0] = v17;
    *v16 = 136446466;
    v18 = sub_2521425DC();
    v54 = a3;
    v20 = sub_2520A5448(v18, v19, v58);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    swift_beginAccess();
    v21 = *a1;

    v23 = MEMORY[0x253098E80](v22, MEMORY[0x277D837D0]);
    v25 = v24;

    v26 = v23;
    a3 = v54;
    v27 = sub_2520A5448(v26, v25, v58);

    *(v16 + 14) = v27;
    _os_log_impl(&dword_25207E000, v14, v15, "[%{public}s] observers before add are %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v17, -1, -1);
    MEMORY[0x253099FD0](v16, -1, -1);
  }

  v28 = *(a2 + 104);

  v29 = sub_252112F28(a3, v28);

  if (v29)
  {
    swift_unknownObjectRetain();
    v30 = sub_25214196C();
    v31 = sub_252141FAC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v58[0] = v33;
      *v32 = 136446722;
      v34 = sub_2521425DC();
      v36 = a3;
      v37 = sub_2520A5448(v34, v35, v58);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2080;
      ObjectType = swift_getObjectType();
      v39 = (*(a5 + 16))(ObjectType);
      v41 = sub_2520A5448(v39, v40, v58);

      *(v32 + 14) = v41;
      a3 = v36;
      *(v32 + 22) = 2048;
      *(v32 + 24) = a6;
      _os_log_impl(&dword_25207E000, v30, v31, "[%{public}s] Replacing old observer %s (type: %ld)", v32, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253099FD0](v33, -1, -1);
      MEMORY[0x253099FD0](v32, -1, -1);
    }

    swift_beginAccess();
    sub_25212B580(a3, v58);
    sub_2520A2584(v58, &qword_27F4CE940, &qword_252147B60);
    swift_endAccess();
  }

  sub_25212CB84(a3, v57);
  swift_beginAccess();
  sub_25213EE4C(v58, v57);
  sub_25212CBF4(v58);
  swift_endAccess();
  swift_retain_n();
  swift_unknownObjectRetain();
  v42 = sub_25214196C();
  v43 = sub_252141FBC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&v58[0] = v45;
    *v44 = 136446978;
    v46 = sub_2521425DC();
    v48 = sub_2520A5448(v46, v47, v58);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    v49 = swift_getObjectType();
    v50 = (*(a5 + 16))(v49);
    v52 = sub_2520A5448(v50, v51, v58);

    *(v44 + 14) = v52;
    *(v44 + 22) = 2048;
    *(v44 + 24) = a6;
    *(v44 + 32) = 2048;
    v53 = *(*(a2 + 104) + 16);

    *(v44 + 34) = v53;

    _os_log_impl(&dword_25207E000, v42, v43, "[%{public}s] Added observer %s, type %ld, number of observers in queue is %ld", v44, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x253099FD0](v45, -1, -1);
    MEMORY[0x253099FD0](v44, -1, -1);
  }

  else
  {
  }
}