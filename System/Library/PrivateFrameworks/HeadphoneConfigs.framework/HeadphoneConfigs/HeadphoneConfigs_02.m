uint64_t sub_2511F226C()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &byte_27F4256F8);
  swift_endAccess();
  if (v1)
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422DE0, qword_251219570);
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_2511E7DB4(v6);
  }

  return 0;
}

BOOL sub_2511F23B4(void *a1)
{
  v2 = *(sub_2511F191C() + 2);

  v3 = [a1 numberOfSegments];
  if (qword_27F423EB0 != -1)
  {
    swift_once();
  }

  v4 = sub_25121144C();
  __swift_project_value_buffer(v4, qword_27F4256E0);
  v5 = sub_25121142C();
  v6 = sub_25121197C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v2 != v3;
    _os_log_impl(&dword_251143000, v5, v6, "needsResetUI: %{BOOL}d", v7, 8u);
    MEMORY[0x25306E960](v7, -1, -1);
  }

  return v2 != v3;
}

uint64_t sub_2511F2578(char a1)
{
  result = swift_beginAccess();
  byte_27F4256F8 = a1;
  return result;
}

uint64_t sub_2511F269C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422DD8, &unk_251219560);
  v38 = a2;
  result = sub_251211C7C();
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
      sub_251211D1C();
      sub_2512117FC();
      result = sub_251211D3C();
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

uint64_t sub_2511F2944(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2511CC6F4(a2, a3);
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
      sub_2511F269C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2511CC6F4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_251211CFC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2511F2AC0();
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

void *sub_2511F2AC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422DD8, &unk_251219560);
  v2 = *v0;
  v3 = sub_251211C6C();
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

uint64_t sub_2511F2C30()
{
  v0 = sub_251211CAC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2511F2C90()
{
  result = qword_27F422DB0;
  if (!qword_27F422DB0)
  {
    type metadata accessor for HMMultiState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F422DB0);
  }

  return result;
}

void sub_2511F2CFC(_BYTE *a1)
{
  if (*a1 == 1)
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*a1 == 1)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  if (qword_27F423EB0 != -1)
  {
    swift_once();
  }

  v3 = sub_25121144C();
  __swift_project_value_buffer(v3, qword_27F4256E0);

  v4 = sub_25121142C();
  v5 = sub_25121197C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    v8 = sub_2511CBE4C(v1, v2, &v11);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_251143000, v4, v5, "$listeningModeOffAllowed: Value Changed! %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x25306E960](v7, -1, -1);
    MEMORY[0x25306E960](v6, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [Strong resetUI];
  }
}

BOOL sub_2511F2EC4(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  swift_unknownObjectRetain();
  v3 = [v2 headphoneDevice];
  if (!v3)
  {
    swift_unknownObjectRelease();
LABEL_8:
    if (qword_27F423EB0 != -1)
    {
      swift_once();
    }

    v12 = sub_25121144C();
    __swift_project_value_buffer(v12, qword_27F4256E0);
    v13 = sub_25121142C();
    v14 = sub_25121196C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_2511CBE4C(0xD00000000000001ALL, 0x8000000251222860, &v22);
      _os_log_impl(&dword_251143000, v13, v14, "%s: No device return true!", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x25306E960](v16, -1, -1);
      MEMORY[0x25306E960](v15, -1, -1);
    }

    return 1;
  }

  v4 = v3;
  v5 = sub_251210F8C();
  v6 = [v5 listeningModeOffAllowed];

  if (!v6)
  {
    if (qword_27F423EB0 != -1)
    {
      swift_once();
    }

    v17 = sub_25121144C();
    __swift_project_value_buffer(v17, qword_27F4256E0);
    v18 = sub_25121142C();
    v19 = sub_25121196C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_2511CBE4C(0xD00000000000001ALL, 0x8000000251222860, &v22);
      _os_log_impl(&dword_251143000, v18, v19, "%s: listeningModeOffAllowed is unknown, return true!", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x25306E960](v21, -1, -1);
      MEMORY[0x25306E960](v20, -1, -1);
    }

    swift_unknownObjectRelease();
    return 1;
  }

  v7 = sub_251210F8C();
  v8 = sub_2512110BC();

  if (v8 == 1)
  {
    v9 = sub_251210F8C();
    v10 = [v9 listeningModeOffAllowed];

    swift_unknownObjectRelease();
    return v10 == 1;
  }

  else
  {

    swift_unknownObjectRelease();
    return 0;
  }
}

unint64_t sub_2511F320C()
{
  result = qword_27F422DC0;
  if (!qword_27F422DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F422DC0);
  }

  return result;
}

uint64_t _s4ModeOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s4ModeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t static HPSSpatialProfileFeedback.getDraftViewController()()
{
  v0 = sub_2512116CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_allocWithZone(sub_2512116EC());
  sub_2512116BC();
  (*(v1 + 104))(v4, *MEMORY[0x277D08490], v0);
  sub_2512116DC();
  v6 = objc_allocWithZone(sub_25121170C());
  return sub_2512116FC();
}

id HPSSpatialProfileFeedback.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HPSSpatialProfileFeedback.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HPSSpatialProfileFeedback();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HPSSpatialProfileFeedback.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HPSSpatialProfileFeedback();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2511F372C(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

uint64_t sub_2511F3744()
{
  v1 = *v0;
  sub_251211D1C();
  MEMORY[0x25306DD30](v1);
  return sub_251211D3C();
}

uint64_t sub_2511F37B8()
{
  v1 = *v0;
  sub_251211D1C();
  MEMORY[0x25306DD30](v1);
  return sub_251211D3C();
}

uint64_t *sub_2511F37FC@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

void sub_2511F38A4(int a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v38 = sub_251210D7C();
  v14 = *(v38 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v38);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v38 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v38 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v38 - v25;
  if (a2 == 1)
  {
    v27 = 19788;
  }

  else
  {
    v27 = 19780;
  }

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = [objc_opt_self() bundleForClass_];
  v39 = a1;
  if (!a1)
  {
    v41[0] = 0;
    v41[1] = 0xE000000000000000;
    sub_251211BBC();

    v41[0] = 0xD000000000000010;
    v41[1] = 0x80000002512228F0;
    MEMORY[0x25306D820](v27, 0xE200000000000000);
    v27 = sub_25121176C();

    v18 = sub_25121176C();
    v32 = [v29 URLForResource:v27 withExtension:v18];

    if (v32)
    {
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_10;
  }

  if (a1 != 1)
  {
LABEL_10:
    strcpy(v41, "Bobble_Shake_");
    HIWORD(v41[1]) = -4864;
    MEMORY[0x25306D820](v27, 0xE200000000000000);
    v33 = sub_25121176C();

    v34 = sub_25121176C();
    v32 = [v29 URLForResource:v33 withExtension:v34];

    if (v32)
    {
      v24 = v18;
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  strcpy(v41, "Bobble_Nod_");
  HIDWORD(v41[1]) = -352321536;
  MEMORY[0x25306D820](v27, 0xE200000000000000);
  v30 = sub_25121176C();

  v31 = sub_25121176C();
  v32 = [v29 URLForResource:v30 withExtension:v31];

  if (v32)
  {
    v24 = v21;
LABEL_12:

    sub_251210D5C();

    v35 = v38;
    (*(v14 + 32))(v26, v24, v38);
    v7[OBJC_IVAR____TtC16HeadphoneConfigs21BobbleVideoLoopPlayer_videoUseCase] = v39;
    v36 = sub_251210D4C();
    v37 = type metadata accessor for BobbleVideoLoopPlayer();
    v40.receiver = v7;
    v40.super_class = v37;
    objc_msgSendSuper2(&v40, sel_initWithFrame_urlForResource_, v36, a3, a4, a5, a6);

    (*(v14 + 8))(v26, v35);
    return;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_2511F3CD0()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for BobbleVideoLoopPlayer();
  objc_msgSendSuper2(&v25, sel_load);
  if (!*(v0 + OBJC_IVAR____TtC16HeadphoneConfigs21BobbleVideoLoopPlayer_videoUseCase))
  {
    swift_getObjectType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
    v3 = sub_25121176C();
    v4 = [objc_opt_self() imageNamed:v3 inBundle:v2];

    if (v4)
    {
      v5 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

      [v5 setTranslatesAutoresizingMaskIntoConstraints_];
      v6 = [v0 videoPlayer];
      v7 = sub_251211A3C();
      v9 = v8;
      v11 = v10;
      v12 = HIDWORD(v8);
      sub_2511C8A48(0, &qword_27F422760, 0x277D85C78);
      v13 = sub_251211A0C();
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v15 + 24) = v5;
      v23 = sub_2511F4320;
      v24 = v15;
      v19 = MEMORY[0x277D85DD0];
      v20 = 1107296256;
      v21 = sub_2511F3F80;
      v22 = &block_descriptor_2;
      v16 = _Block_copy(&v19);
      v17 = v5;

      v19 = v7;
      v20 = __PAIR64__(v12, v9);
      v21 = v11;
      v18 = [v6 addPeriodicTimeObserverForInterval:&v19 queue:v13 usingBlock:v16];
      _Block_release(v16);

      sub_251211B5C();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(&v19);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2511F3F80(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(v2, v3, v4);
}

id sub_2511F40EC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_251210D4C();
  v13 = [v11 initWithFrame:v12 urlForResource:{a2, a3, a4, a5}];

  v14 = sub_251210D7C();
  (*(*(v14 - 8) + 8))(a1, v14);
  return v13;
}

id sub_2511F42C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BobbleVideoLoopPlayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2511F4320(CMTimeValue a1, uint64_t a2, CMTimeEpoch a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v27.value = a1;
    *&v27.timescale = a2;
    v27.epoch = a3;
    if (CMTimeGetSeconds(&v27) >= 4.3)
    {
      v11 = v10;
      [v11 addSubview_];
      v12 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EE0, qword_251218010);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_2512183D0;
      v14 = [v8 widthAnchor];
      v15 = v11;
      [v15 desiredBounds];
      v16 = [v14 constraintEqualToConstant_];

      *(v13 + 32) = v16;
      v17 = [v8 heightAnchor];
      [v15 desiredBounds];
      v18 = [v17 constraintEqualToConstant_];

      *(v13 + 40) = v18;
      v19 = [v8 centerXAnchor];
      v20 = [v15 centerXAnchor];

      v21 = [v19 constraintEqualToAnchor_];
      *(v13 + 48) = v21;
      v22 = [v8 centerYAnchor];
      v23 = [v15 centerYAnchor];

      v24 = [v22 constraintEqualToAnchor_];
      *(v13 + 56) = v24;
      sub_2511C8A48(0, &qword_27F422898, 0x277CCAAD0);
      v25 = sub_25121186C();

      [v12 activateConstraints_];

      v26 = [v15 playerLooper];
      [v26 disableLooping];
    }
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2511F4624()
{
  result = qword_27F422DF0;
  if (!qword_27F422DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F422DF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BobbleVideoLoopPlayer.VideoUseCase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BobbleVideoLoopPlayer.VideoUseCase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_2511F4808()
{
  v0 = objc_allocWithZone(type metadata accessor for HPSSpatialProfileSingleStepBottomContainer.HPSSpatialProfileSingleStepBottomContainerImpl());

  return [v0 initWithFrame_];
}

uint64_t sub_2511F4A44()
{
  v1 = sub_251210DDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer____lazy_storage___layoutDirection);
  if (*(v0 + OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer____lazy_storage___layoutDirection + 8) != 1)
  {
    return *v6;
  }

  v7 = sub_251210DAC();
  if (v7[2])
  {
    v9 = v7[4];
    v8 = v7[5];
  }

  sub_251210DBC();
  v11 = sub_251210DCC();
  (*(v2 + 8))(v5, v1);
  result = v11 == 2;
  *v6 = result;
  v6[8] = 0;
  return result;
}

char *sub_2511F4BE0(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl;
  v6 = type metadata accessor for HPSSpatialProfileSingleStepBottomContainer.HPSSpatialProfileSingleStepBottomContainerImpl();
  *&v2[v5] = [objc_allocWithZone(v6) initWithFrame_];
  v7 = OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_bottomContainerImpl;
  *&v2[v7] = [objc_allocWithZone(v6) initWithFrame_];
  v8 = &v2[OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer____lazy_storage___layoutDirection];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v2[OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_budInEarStringBlock];
  *v9 = a1;
  *(v9 + 1) = a2;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for HPSSpatialProfileSingleStepBottomContainer();

  v10 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl;
  v12 = *&v10[OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl];
  v13 = v10;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v10[v11] setAlpha_];
  v14 = OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_bottomContainerImpl;
  [*&v13[OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_bottomContainerImpl] setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 addSubview_];
  [v13 addSubview_];
  v15 = *&v13[v14];
  sub_2511F7020(v15);

  v16 = *&v10[v11];
  sub_2511F7020(v16);

  return v13;
}

uint64_t sub_2511F4E0C(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_25121179C();

  return v3;
}

id sub_2511F4E70(char a1)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_bottomContainerImpl) + OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_buttonTray);
  if (a1)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  [*(*(v1 + OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_bottomContainerImpl) + OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_buttonTray) setAlpha_];
  v4 = *(*(v1 + OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl) + OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_buttonTray);

  return [v4 setAlpha_];
}

id sub_2511F4F58(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_bottomContainerImpl;
  [*(*(v2 + OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_bottomContainerImpl) + OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_continueButton) removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];
  v6 = OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl;
  [*(*(v2 + OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl) + OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_continueButton) removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];
  [*(*(v2 + v5) + OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_continueButton) addTarget:a1 action:a2 forControlEvents:64];
  v7 = *(*(v2 + v6) + OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_continueButton);

  return [v7 addTarget:a1 action:a2 forControlEvents:64];
}

void sub_2511F50B4()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_bottomContainerImpl) + OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_continueButton);
  v2 = sub_25121176C();
  [v1 setTitle:v2 forState:0];

  v3 = *(*(v0 + OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl) + OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_continueButton);
  v4 = sub_25121176C();
  [v3 setTitle:v4 forState:0];
}

void sub_2511F5440(int a1, int a2, void **a3, void **a4, uint64_t a5, uint64_t a6)
{
  if (a2 > 6)
  {
    if (a2 <= 8)
    {
      if (a2 == 7)
      {

        sub_2511F6A48(a1);
      }

      else if (a1 == 2)
      {
        type metadata accessor for HPSSpatialProfileSingleStepBottomContainer();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v7 = objc_opt_self();
        v8 = [v7 bundleForClass_];
        v9 = sub_251210D1C();
        v11 = v10;

        v12 = [v7 bundleForClass_];
        v13 = sub_251210D1C();
        v15 = v14;

        sub_2511F60DC(v9, v11, v13, v15, 0, 0, 0);
      }
    }

    else
    {
      if ((a2 - 9) < 3)
      {
        return;
      }

      if (a2 != 12)
      {
        goto LABEL_35;
      }

      sub_2511F6E44();
    }
  }

  else
  {
    if (a2 <= 3)
    {
      if (a2 < 2)
      {
        return;
      }

      if (a2 == 2)
      {

        sub_2511F6C94();
        return;
      }

      if (a2 == 3)
      {
        return;
      }

LABEL_35:
      type metadata accessor for HPSSpatialProfileV2EnrollmentStep(0);
      sub_251211CDC();
      __break(1u);
      return;
    }

    if (a2 == 4)
    {

      sub_2511F5890();
    }

    else if (a2 == 5)
    {

      sub_2511F59C4(a3, a4, a5, a6);
    }

    else
    {

      sub_2511F6418(a3, a4, a5, a6);
    }
  }
}

void sub_2511F5890()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xC8))();
  type metadata accessor for HPSSpatialProfileSingleStepBottomContainer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_251210D1C();

  v4 = sub_25121176C();

  [v1 setTitle:v4 forState:{0, 0xE000000000000000}];
}

void sub_2511F59C4(void **a1, void **a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl;
  v6 = *(*&v4[OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl] + OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_infoView);
  type metadata accessor for HPSSpatialProfileSingleStepBottomContainer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = v6;
  v10 = [v8 bundleForClass_];
  sub_251210D1C();

  v11 = sub_25121176C();

  [v9 setTitle_];

  v12 = *(*&v4[v5] + OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_infoView);
  v13 = [v8 bundleForClass_];
  sub_251210D1C();

  v14 = sub_25121176C();

  [v12 setDetailText_];

  v15 = v4;
  v16 = *(*&v4[v5] + OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_continueButton);
  v17 = [v8 bundleForClass_];
  sub_251210D1C();

  v18 = sub_25121176C();

  [v16 setTitle:v18 forState:{0, 0xE000000000000000}];

  if (a1 && a2)
  {
    v19 = *a1;
    v20 = *a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EE0, qword_251218010);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2512190D0;
    v22 = *&v15[v5];
    *(inited + 32) = v22;
    *(inited + 40) = v19;
    v52 = v19;
    v50 = v20;
    v23 = v22;
    if ((inited & 0xC000000000000001) != 0)
    {
      goto LABEL_18;
    }

    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    for (i = v23; ; i = MEMORY[0x25306DBD0](0, inited))
    {
      v25 = i;
      v26 = sub_2511F4A44();
      [v15 bounds];
      v28 = -0.5;
      if (!v26)
      {
        v28 = 0.5;
      }

      v29 = v27 * v28;
      [v25 frame];
      [v25 setFrame_];
      [v25 setAlpha_];
      [v25 layoutIfNeeded];

      if ((inited & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
      {
        v30 = *(inited + 40);
        goto LABEL_11;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    v30 = MEMORY[0x25306DBD0](1, inited);
LABEL_11:
    v31 = v30;
    v32 = sub_2511F4A44();
    [v15 bounds];
    v34 = -0.5;
    if (!v32)
    {
      v34 = 0.5;
    }

    v35 = v33 * v34;
    [v31 &selRef_forceBlur];
    [v31 &selRef_resetVolume];
    [v31 setAlpha_];
    [v31 layoutIfNeeded];

    swift_setDeallocating();
    v36 = *(inited + 16);
    swift_arrayDestroy();
    v37 = objc_opt_self();
    v38 = swift_allocObject();
    v38[2] = v15;
    v38[3] = v50;
    v38[4] = v52;
    v57 = sub_2511F9CD8;
    v58 = v38;
    aBlock = MEMORY[0x277D85DD0];
    v54 = 1107296256;
    v55 = sub_2511E49B0;
    v56 = &block_descriptor_53;
    v39 = _Block_copy(&aBlock);
    v40 = v52;
    v41 = v50;
    v42 = v15;

    v43 = swift_allocObject();
    v43[2] = a3;
    v43[3] = a4;
    v43[4] = v42;
    v57 = sub_2511FA020;
    v58 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v54 = 1107296256;
    v55 = sub_2511F6088;
    v56 = &block_descriptor_59;
    v44 = _Block_copy(&aBlock);
    v45 = v42;
    sub_251146DE4(a3);

    [v37 animateWithDuration:v39 animations:v44 completion:0.6];
    _Block_release(v44);
    _Block_release(v39);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422988, &unk_251219200);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_251217FE0;
    *(v46 + 56) = MEMORY[0x277D837D0];
    *(v46 + 32) = 0xD000000000000065;
    *(v46 + 40) = 0x80000002512233C0;
    sub_251211D0C();
  }
}

uint64_t sub_2511F6088(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_2511F60DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v9 = OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl;
  v10 = *(*&v7[OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl] + OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_infoView);
  v11 = sub_25121176C();
  [v10 setTitle_];

  v12 = *(*&v7[v9] + OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_infoView);
  v13 = sub_25121176C();
  [v12 setDetailText_];

  if (a6)
  {
    v14 = *(*&v7[v9] + OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_continueButton);
    v15 = sub_25121176C();
    [v14 setTitle:v15 forState:0];
  }

  v16 = 0.0;
  if (a7)
  {
    v16 = 1.0;
  }

  [*(*&v7[v9] + OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_continueButton) setAlpha_];
  v17 = *&v7[v9];
  v18 = sub_2511F4A44();
  [v7 bounds];
  v20 = -0.5;
  if (!v18)
  {
    v20 = 0.5;
  }

  v21 = v19 * v20;
  [v17 frame];
  [v17 setFrame_];

  [*&v7[v9] setAlpha_];
  [*&v7[v9] layoutIfNeeded];
  v22 = objc_opt_self();
  v23 = swift_allocObject();
  *(v23 + 16) = v7;
  v34 = sub_2511FA73C;
  v35 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_2511E49B0;
  v33 = &block_descriptor_89;
  v24 = _Block_copy(&aBlock);
  v25 = v7;

  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  v34 = sub_2511FA910;
  v35 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_2511F6088;
  v33 = &block_descriptor_95;
  v27 = _Block_copy(&aBlock);
  v28 = v25;

  [v22 animateWithDuration:v24 animations:v27 completion:0.6];
  _Block_release(v27);
  _Block_release(v24);
}

void sub_2511F6418(void **a1, void **a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl;
  v6 = *(*&v4[OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl] + OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_infoView);
  type metadata accessor for HPSSpatialProfileSingleStepBottomContainer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = v6;
  v10 = [v8 bundleForClass_];
  sub_251210D1C();

  v11 = sub_25121176C();

  [v9 setTitle_];

  v12 = *(*&v4[v5] + OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_infoView);
  v13 = [v8 bundleForClass_];
  sub_251210D1C();

  v14 = sub_25121176C();

  [v12 setDetailText_];

  v45 = v4;
  [*(*&v4[v5] + OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_continueButton) setAlpha_];
  if (a1 && a2 && (v15 = *a1, v16 = *a2, objc_opt_self(), (v17 = swift_dynamicCastObjCClass()) != 0))
  {
    v47 = v17;
    v18 = *&v4[v5];
    v19 = v15;
    v49 = v16;
    v20 = v18;
    v21 = sub_2511F4A44();
    [v45 bounds];
    v23 = -0.5;
    if (!v21)
    {
      v23 = 0.5;
    }

    v24 = v22 * v23;
    [v20 frame];
    [v20 setFrame_];

    [*&v45[v5] setAlpha_];
    [*&v45[v5] layoutIfNeeded];
    v25 = v19;
    v26 = [v19 subviews];
    sub_2511C8A48(0, &qword_27F422948, 0x277D75D18);
    v27 = sub_25121187C();

    if (v27 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251211B8C())
    {
      v29 = 0;
      while (1)
      {
        if ((v27 & 0xC000000000000001) != 0)
        {
          v30 = MEMORY[0x25306DBD0](v29, v27);
        }

        else
        {
          if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v30 = *(v27 + 8 * v29 + 32);
        }

        v31 = v30;
        v32 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          [v31 setAlpha_];
        }

        ++v29;
        if (v32 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

LABEL_23:

    [v25 layoutIfNeeded];
    v34 = objc_opt_self();
    v35 = swift_allocObject();
    v35[2] = v45;
    v35[3] = v47;
    v35[4] = v25;
    v54 = sub_2511FA1CC;
    v55 = v35;
    aBlock = MEMORY[0x277D85DD0];
    v51 = 1107296256;
    v52 = sub_2511E49B0;
    v53 = &block_descriptor_71;
    v36 = _Block_copy(&aBlock);
    v37 = v25;
    v38 = v49;
    v39 = v45;

    v40 = swift_allocObject();
    v40[2] = a3;
    v40[3] = a4;
    v40[4] = v39;
    v54 = sub_2511FA564;
    v55 = v40;
    aBlock = MEMORY[0x277D85DD0];
    v51 = 1107296256;
    v52 = sub_2511F6088;
    v53 = &block_descriptor_77;
    v41 = _Block_copy(&aBlock);
    v42 = v39;
    sub_251146DE4(a3);

    [v34 animateWithDuration:v36 animations:v41 completion:0.6];
    _Block_release(v41);
    _Block_release(v36);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422988, &unk_251219200);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_251217FE0;
    *(v33 + 56) = MEMORY[0x277D837D0];
    *(v33 + 32) = 0xD000000000000065;
    *(v33 + 40) = 0x80000002512233C0;
    sub_251211D0C();
  }
}

uint64_t sub_2511F6A48(int a1)
{
  if (a1 == 6)
  {
    v2 = *(*(v1 + OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_bottomContainerImpl) + OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_infoView);
    type metadata accessor for HPSSpatialProfileSingleStepBottomContainer();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = objc_opt_self();
    v5 = v2;
    v6 = [v4 bundleForClass_];
    v7 = sub_251210D1C();
    v9 = v8;

    v10 = sub_2511F4A44();
    sub_2511F834C(v7, v9, v10);
  }

  else
  {
    type metadata accessor for HPSSpatialProfileSingleStepBottomContainer();
    v11 = swift_getObjCClassFromMetadata();
    v12 = objc_opt_self();
    v13 = [v12 bundleForClass_];
    v14 = sub_251210D1C();
    v16 = v15;

    v17 = [v12 bundleForClass_];
    v18 = sub_251210D1C();
    v20 = v19;

    sub_2511F60DC(v14, v16, v18, v20, 0, 0, 0);
  }
}

uint64_t sub_2511F6C94()
{
  v1 = v0;
  type metadata accessor for HPSSpatialProfileSingleStepBottomContainer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  v5 = sub_251210D1C();
  v7 = v6;

  v8 = *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_budInEarStringBlock + 8);
  v10 = (*(v1 + OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_budInEarStringBlock))(v9);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v14 = [v3 bundleForClass_];
    v12 = sub_251210D1C();
    v13 = v15;
  }

  sub_2511F60DC(v5, v7, v12, v13, 0, 0, 0);
}

uint64_t sub_2511F6E44()
{
  type metadata accessor for HPSSpatialProfileSingleStepBottomContainer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = sub_251210D1C();
  v5 = v4;

  v6 = [v1 bundleForClass_];
  v7 = sub_251210D1C();
  v9 = v8;

  v10 = [v1 bundleForClass_];
  v11 = sub_251210D1C();
  v13 = v12;

  sub_2511F60DC(v3, v5, v7, v9, v11, v13, 1);
}

void sub_2511F7020(void *a1)
{
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EE0, qword_251218010);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2512183D0;
  v5 = [a1 leadingAnchor];
  v6 = [v1 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [a1 trailingAnchor];
  v9 = [v1 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  v11 = [a1 topAnchor];
  v12 = [v1 topAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v4 + 48) = v13;
  v14 = [a1 bottomAnchor];
  v15 = [v1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v4 + 56) = v16;
  sub_2511C8A48(0, &qword_27F422898, 0x277CCAAD0);
  v17 = sub_25121186C();

  [v3 activateConstraints_];
}

id sub_2511F72AC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setLineBreakMode_];
  [v0 setNumberOfLines_];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  [v0 setAdjustsFontForContentSizeCategory_];
  v2 = [objc_opt_self() systemGrayColor];
  [v0 setTextColor_];

  [v0 setTextAlignment_];
  return v0;
}

double sub_2511F744C()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_continueButton);
  sub_2511C8A48(0, &unk_27F422E90, 0x277D37650);
  v2 = [v1 isKindOfClass_];

  v3 = sub_25121176C();
  v4 = MGGetSInt32Answer();

  if (v4 < 0)
  {
    if (v2)
    {
      return 34.0;
    }

    return 24.0;
  }

  if (!v2)
  {
    return 24.0;
  }

  result = 34.0;
  if (v4 == 2)
  {
    return 5.0;
  }

  return result;
}

void sub_2511F764C()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl;
  v2 = type metadata accessor for HPSSpatialProfileSingleStepBottomContainer.HPSSpatialProfileSingleStepBottomContainerImpl();
  *(v0 + v1) = [objc_allocWithZone(v2) initWithFrame_];
  v3 = OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_bottomContainerImpl;
  *(v0 + v3) = [objc_allocWithZone(v2) initWithFrame_];
  v4 = v0 + OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer____lazy_storage___layoutDirection;
  *v4 = 0;
  *(v4 + 8) = 1;
  sub_251211C4C();
  __break(1u);
}

void sub_2511F78E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v79 = *MEMORY[0x277D85DE8];
  v6 = &OBJC_IVAR___HPSSpatialProfileEnrollmentController__earCaptureSoundStep;
  *&v4[OBJC_IVAR____TtC16HeadphoneConfigsP33_D51FEB6A68E3E202054F6E29D55400B013HPSHeaderView_hpsDetailedLabel] = 0;
  *&v4[OBJC_IVAR____TtC16HeadphoneConfigsP33_D51FEB6A68E3E202054F6E29D55400B013HPSHeaderView_offScreenDetailedLabel] = 0;
  v7 = sub_25121176C();
  v8 = sub_25121176C();
  v75.receiver = v4;
  v75.super_class = type metadata accessor for HPSHeaderView();
  v73 = a4;
  v9 = objc_msgSendSuper2(&v75, sel_initWithTitle_detailText_icon_, v7, v8, a4);

  v10 = v9;
  v11 = [v10 subviews];
  sub_2511C8A48(0, &qword_27F422948, 0x277D75D18);
  v12 = sub_25121187C();

  *&v78[0] = MEMORY[0x277D84F90];
  if (v12 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251211B8C())
  {
    v72 = v10;
    v14 = 0;
    v10 = (v12 & 0xC000000000000001);
    while (1)
    {
      if (v10)
      {
        v15 = MEMORY[0x25306DBD0](v14, v12);
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        v6 = v18;
        v19 = v16;
        v20 = [v6 text];
        if (v20)
        {
          v21 = v20;
          v6 = sub_25121179C();
          v23 = v22;

          if (v6 == 0x64656C6961746564 && v23 == 0xE800000000000000)
          {

LABEL_20:
            sub_251211BFC();
            v26 = *(*&v78[0] + 16);
            sub_251211C2C();
            sub_251211C3C();
            sub_251211C0C();
            goto LABEL_5;
          }

          v25 = sub_251211CCC();

          if (v25)
          {
            goto LABEL_20;
          }
        }

        else
        {
        }
      }

      else
      {
      }

LABEL_5:
      ++v14;
      if (v17 == i)
      {
        v27 = *&v78[0];
        v10 = v72;
        v6 = &OBJC_IVAR___HPSSpatialProfileEnrollmentController__earCaptureSoundStep;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v27 = MEMORY[0x277D84F90];
LABEL_27:

  if (v27 < 0 || (v27 & 0x4000000000000000) != 0)
  {
    if (sub_251211B8C())
    {
      goto LABEL_30;
    }

LABEL_36:

    v30 = 0;
    goto LABEL_37;
  }

  if (!*(v27 + 16))
  {
    goto LABEL_36;
  }

LABEL_30:
  if ((v27 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x25306DBD0](0, v27);
  }

  else
  {
    if (!*(v27 + 16))
    {
      __break(1u);
    }

    v28 = *(v27 + 32);
  }

  v29 = v28;

  objc_opt_self();
  v30 = swift_dynamicCastObjCClass();
  if (!v30)
  {
  }

LABEL_37:
  v31 = *(v6 + 460);
  v32 = *&v10[v31];
  *&v10[v31] = v30;
  v33 = v30;

  v34 = objc_opt_self();
  *&v78[0] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422E80, &qword_251219858);
  v35 = sub_251211AFC();

  *&v78[0] = 0;
  v36 = [v34 archivedDataWithRootObject:v35 requiringSecureCoding:0 error:v78];
  swift_unknownObjectRelease();
  if (!v36)
  {
    v44 = *&v78[0];

    v45 = sub_251210D2C();

    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422988, &unk_251219200);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_251217FE0;
    *(v46 + 56) = MEMORY[0x277D837D0];
    *(v46 + 32) = 0xD00000000000003ELL;
    *(v46 + 40) = 0x8000000251223260;
    sub_251211D0C();

    goto LABEL_42;
  }

  v37 = *&v78[0];
  v38 = sub_251210D9C();
  v40 = v39;

  v41 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_2511F9C28(v38, v40);
  v42 = sub_2511F9B68();
  sub_2511F9C7C(v38, v40);
  if (!v42)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422988, &unk_251219200);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_251217FE0;
    *(v43 + 56) = MEMORY[0x277D837D0];
    *(v43 + 32) = 0xD00000000000003DLL;
    *(v43 + 40) = 0x80000002512232A0;
    sub_251211D0C();
LABEL_40:

    sub_2511F9C7C(v38, v40);
LABEL_42:
    v47 = *MEMORY[0x277D85DE8];
    return;
  }

  [v42 setRequiresSecureCoding_];
  if ([v42 decodeObjectForKey_])
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v76 = 0u;
    v77 = 0u;
  }

  v78[0] = v76;
  v78[1] = v77;
  if (!*(&v77 + 1))
  {

    sub_2511E7DB4(v78);
LABEL_56:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422988, &unk_251219200);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_251217FE0;
    *(v71 + 56) = MEMORY[0x277D837D0];
    *(v71 + 32) = 0xD000000000000049;
    *(v71 + 40) = 0x80000002512232E0;
    sub_251211D0C();

    goto LABEL_40;
  }

  sub_2511C8A48(0, &qword_27F422E88, 0x277D756B8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_56;
  }

  v48 = *&v10[OBJC_IVAR____TtC16HeadphoneConfigsP33_D51FEB6A68E3E202054F6E29D55400B013HPSHeaderView_offScreenDetailedLabel];
  *&v10[OBJC_IVAR____TtC16HeadphoneConfigsP33_D51FEB6A68E3E202054F6E29D55400B013HPSHeaderView_offScreenDetailedLabel] = v74;
  v49 = v74;

  v50 = v49;
  [v50 setTranslatesAutoresizingMaskIntoConstraints_];
  [v50 setAlpha_];
  [v10 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EE0, qword_251218010);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_2512183D0;
  v52 = [v50 leadingAnchor];
  v53 = *&v10[v31];
  if (!v53)
  {
    __break(1u);
    goto LABEL_60;
  }

  v54 = [v53 leadingAnchor];
  v55 = [v52 constraintEqualToAnchor_];

  *(v51 + 32) = v55;
  v56 = [v50 trailingAnchor];
  v57 = *&v10[v31];
  if (!v57)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v58 = [v57 trailingAnchor];
  v59 = [v56 constraintEqualToAnchor_];

  *(v51 + 40) = v59;
  v60 = [v50 topAnchor];
  v61 = *&v10[v31];
  if (!v61)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v62 = [v61 topAnchor];
  v63 = [v60 constraintEqualToAnchor_];

  *(v51 + 48) = v63;
  v64 = [v50 bottomAnchor];

  v65 = *&v10[v31];
  if (v65)
  {
    v66 = objc_opt_self();
    v67 = v65;

    v68 = [v67 bottomAnchor];

    v69 = [v64 constraintEqualToAnchor_];
    *(v51 + 56) = v69;
    sub_2511C8A48(0, &qword_27F422898, 0x277CCAAD0);
    v70 = sub_25121186C();

    [v66 activateConstraints_];

    sub_2511F9C7C(v38, v40);
    goto LABEL_42;
  }

LABEL_62:
  __break(1u);
}

void sub_2511F834C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC16HeadphoneConfigsP33_D51FEB6A68E3E202054F6E29D55400B013HPSHeaderView_offScreenDetailedLabel;
  v6 = *&v3[OBJC_IVAR____TtC16HeadphoneConfigsP33_D51FEB6A68E3E202054F6E29D55400B013HPSHeaderView_offScreenDetailedLabel];
  if (v6)
  {
    v7 = v6;
    v8 = sub_25121176C();
    [v7 setText_];

    v9 = *&v3[v5];
    if (v9)
    {
      v10 = v9;
      [v3 bounds];
      v12 = -0.5;
      if (!a3)
      {
        v12 = 0.5;
      }

      v13 = v11 * v12;
      [v10 frame];
      [v10 setFrame_];

      v14 = *&v3[v5];
      if (v14)
      {
        [v14 setAlpha_];
        v15 = *&v3[v5];
        if (v15)
        {
          [v15 layoutIfNeeded];
        }
      }
    }
  }

  v16 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  *(v17 + 24) = a3;
  v27 = sub_2511F86D0;
  v28 = v17;
  v23 = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_2511E49B0;
  v26 = &block_descriptor_3;
  v18 = _Block_copy(&v23);
  v19 = v3;

  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v27 = sub_2511F88D0;
  v28 = v20;
  v23 = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_2511F6088;
  v26 = &block_descriptor_31_1;
  v21 = _Block_copy(&v23);
  v22 = v19;

  [v16 animateWithDuration:v18 animations:v21 completion:0.6];
  _Block_release(v21);
  _Block_release(v18);
}

id sub_2511F85F8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_2511F867C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void sub_2511F86D0()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC16HeadphoneConfigsP33_D51FEB6A68E3E202054F6E29D55400B013HPSHeaderView_hpsDetailedLabel;
  v3 = *&v1[OBJC_IVAR____TtC16HeadphoneConfigsP33_D51FEB6A68E3E202054F6E29D55400B013HPSHeaderView_hpsDetailedLabel];
  if (v3)
  {
    v4 = *(v0 + 24);
    v5 = v3;
    [v1 bounds];
    v7 = 0.5;
    if (!v4)
    {
      v7 = -0.5;
    }

    v8 = v7 * v6;
    [v5 frame];
    [v5 setFrame_];

    v9 = *&v1[v2];
    if (v9)
    {
      [v9 setAlpha_];
      v10 = *&v1[v2];
      if (v10)
      {
        [v10 layoutIfNeeded];
      }
    }
  }

  v11 = OBJC_IVAR____TtC16HeadphoneConfigsP33_D51FEB6A68E3E202054F6E29D55400B013HPSHeaderView_offScreenDetailedLabel;
  v12 = *&v1[OBJC_IVAR____TtC16HeadphoneConfigsP33_D51FEB6A68E3E202054F6E29D55400B013HPSHeaderView_offScreenDetailedLabel];
  if (v12)
  {
    v13 = v12;
    [v13 frame];
    [v13 setFrame_];

    v14 = *&v1[v11];
    if (v14)
    {
      [v14 layoutIfNeeded];
    }
  }

  v15 = objc_opt_self();
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  v19[4] = sub_2511F88F8;
  v19[5] = v16;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2511E49B0;
  v19[3] = &block_descriptor_37_0;
  v17 = _Block_copy(v19);
  v18 = v1;

  [v15 animateWithDuration:0 delay:v17 options:0 animations:0.2 completion:0.2];
  _Block_release(v17);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2511F88D0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC16HeadphoneConfigsP33_D51FEB6A68E3E202054F6E29D55400B013HPSHeaderView_offScreenDetailedLabel);
  v3 = OBJC_IVAR____TtC16HeadphoneConfigsP33_D51FEB6A68E3E202054F6E29D55400B013HPSHeaderView_hpsDetailedLabel;
  *(v1 + OBJC_IVAR____TtC16HeadphoneConfigsP33_D51FEB6A68E3E202054F6E29D55400B013HPSHeaderView_offScreenDetailedLabel) = *(v1 + OBJC_IVAR____TtC16HeadphoneConfigsP33_D51FEB6A68E3E202054F6E29D55400B013HPSHeaderView_hpsDetailedLabel);
  *(v1 + v3) = v2;
}

id sub_2511F88F8()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC16HeadphoneConfigsP33_D51FEB6A68E3E202054F6E29D55400B013HPSHeaderView_offScreenDetailedLabel;
  result = *(v1 + OBJC_IVAR____TtC16HeadphoneConfigsP33_D51FEB6A68E3E202054F6E29D55400B013HPSHeaderView_offScreenDetailedLabel);
  if (result)
  {
    [result setAlpha_];
    result = *(v1 + v2);
    if (result)
    {

      return [result layoutIfNeeded];
    }
  }

  return result;
}

char *sub_2511F8964()
{
  v1 = OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_infoView;
  v2 = objc_allocWithZone(type metadata accessor for HPSHeaderView());
  v3 = sub_25121176C();
  v4 = [v2 initWithTitle:v3 detailText:0 icon:0];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v1] = v4;
  v5 = OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_spacerViewFirst;
  v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v5] = v6;
  v7 = OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_learnMoreView;
  *&v0[v7] = sub_2511F72AC();
  v8 = OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_spacerViewSecond;
  v9 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v8] = v9;
  v10 = OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_buttonTrayEffectView;
  v11 = [objc_opt_self() effectWithStyle_];
  v12 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  v13 = v12;
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setAlpha_];

  *&v0[v10] = v13;
  v14 = OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_continueButton;
  v15 = [objc_opt_self() boldButton];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v14] = v15;
  v16 = OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_buttonTray;
  v17 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v16] = v17;
  v18 = OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_stackContainerView;
  v19 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  [v19 setAxis_];
  [v19 setAlignment_];
  [v19 setDistribution_];
  *&v0[v18] = v19;
  v20 = OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_scrollView;
  v21 = [objc_allocWithZone(MEMORY[0x277D759D8]) initWithFrame_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v20] = v21;
  v119.receiver = v0;
  v119.super_class = type metadata accessor for HPSSpatialProfileSingleStepBottomContainer.HPSSpatialProfileSingleStepBottomContainerImpl();
  v22 = objc_msgSendSuper2(&v119, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  v23 = OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_scrollView;
  [v22 addSubview_];
  v24 = OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_stackContainerView;
  [*&v22[v23] addSubview_];
  v118 = OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_infoView;
  [*&v22[v24] addArrangedSubview_];
  v116 = OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_spacerViewFirst;
  [*&v22[v24] addArrangedSubview_];
  [*&v22[v24] addArrangedSubview_];
  v25 = v24;
  v117 = OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_spacerViewSecond;
  [*&v22[v24] addArrangedSubview_];
  v26 = OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_buttonTray;
  v114 = OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_buttonTrayEffectView;
  [*&v22[OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_buttonTray] addSubview_];
  v113 = OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_continueButton;
  [*&v22[v26] addSubview_];
  [v22 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EE0, qword_251218010);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2512196B0;
  v28 = [*&v22[v23] leadingAnchor];
  v29 = [v22 &selRef_needsResetUI_ + 1];
  v30 = [v28 constraintEqualToAnchor_];

  *(v27 + 32) = v30;
  v31 = [*&v22[v23] trailingAnchor];
  v32 = [v22 &selRef_userDidTapSpatialProfileLearnMoreLink_ + 4];
  v33 = [v31 &selRef_hideDots + 5];

  *(v27 + 40) = v33;
  v34 = [*&v22[v23] topAnchor];
  v35 = [v22 topAnchor];
  v36 = [v34 &selRef_hideDots + 5];

  *(v27 + 48) = v36;
  v37 = [*&v22[v23] bottomAnchor];
  v38 = [*&v22[v26] topAnchor];
  v39 = [v37 &selRef_hideDots + 5];

  *(v27 + 56) = v39;
  v40 = [*&v22[v25] leadingAnchor];
  v41 = [v22 leadingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:24.0];

  *(v27 + 64) = v42;
  v43 = [*&v22[v25] trailingAnchor];
  v44 = [v22 trailingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:-24.0];

  *(v27 + 72) = v45;
  v46 = [*&v22[v25] topAnchor];
  v47 = [*&v22[v23] topAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:24.0];

  *(v27 + 80) = v48;
  v49 = [*&v22[v25] bottomAnchor];
  v50 = [*&v22[v23] bottomAnchor];
  v51 = [v49 constraintEqualToAnchor_];

  *(v27 + 88) = v51;
  v52 = [*&v22[v113] leadingAnchor];
  v53 = [*&v22[v26] leadingAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:24.0];

  *(v27 + 96) = v54;
  v55 = [*&v22[v113] trailingAnchor];
  v56 = [*&v22[v26] trailingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:-24.0];

  *(v27 + 104) = v57;
  v58 = [*&v22[v113] bottomAnchor];
  v59 = [*&v22[v26] bottomAnchor];

  v60 = sub_25121176C();
  v61 = MGGetSInt32Answer();

  v115 = objc_opt_self();
  v62 = -60.0;
  v63 = -89.0;
  if (v61 != 2)
  {
    v63 = -60.0;
  }

  if (v61 >= 0)
  {
    v62 = v63;
  }

  v64 = [v58 &selRef_hideOcclusionContinueButton + 6];

  *(v27 + 112) = v64;
  v65 = [*&v22[v114] topAnchor];
  v66 = [*&v22[v26] topAnchor];
  v67 = [v65 constraintEqualToAnchor_];

  *(v27 + 120) = v67;
  v68 = [*&v22[v114] topAnchor];
  v69 = [*&v22[v113] topAnchor];
  v70 = [v68 constraintEqualToAnchor:v69 constant:-sub_2511F744C()];

  *(v27 + 128) = v70;
  v71 = [*&v22[v114] trailingAnchor];
  v72 = [*&v22[v26] trailingAnchor];
  v73 = [v71 constraintEqualToAnchor_];

  *(v27 + 136) = v73;
  v74 = [*&v22[v114] leadingAnchor];
  v75 = [*&v22[v26] leadingAnchor];
  v76 = [v74 constraintEqualToAnchor_];

  *(v27 + 144) = v76;
  v77 = [*&v22[v114] bottomAnchor];
  v78 = [*&v22[v26] bottomAnchor];
  v79 = [v77 constraintEqualToAnchor_];

  *(v27 + 152) = v79;
  v80 = [*&v22[v116] leadingAnchor];
  v81 = [*&v22[v25] leadingAnchor];
  v82 = [v80 constraintEqualToAnchor_];

  *(v27 + 160) = v82;
  v83 = [*&v22[v116] trailingAnchor];
  v84 = [*&v22[v25] trailingAnchor];
  v85 = [v83 constraintEqualToAnchor_];

  *(v27 + 168) = v85;
  v86 = [*&v22[v116] heightAnchor];
  v87 = [v86 constraintEqualToConstant_];

  *(v27 + 176) = v87;
  v88 = [*&v22[v117] leadingAnchor];
  v89 = [*&v22[v25] leadingAnchor];
  v90 = [v88 constraintEqualToAnchor_];

  *(v27 + 184) = v90;
  v91 = [*&v22[v117] trailingAnchor];
  v92 = [*&v22[v25] trailingAnchor];
  v93 = [v91 constraintEqualToAnchor_];

  *(v27 + 192) = v93;
  v94 = [*&v22[v117] heightAnchor];
  v95 = [v94 constraintEqualToConstant_];

  *(v27 + 200) = v95;
  v96 = [*&v22[v118] leadingAnchor];
  v97 = [*&v22[v25] leadingAnchor];
  v98 = [v96 constraintEqualToAnchor_];

  *(v27 + 208) = v98;
  v99 = [*&v22[v118] trailingAnchor];
  v100 = [*&v22[v25] trailingAnchor];
  v101 = [v99 constraintEqualToAnchor_];

  *(v27 + 216) = v101;
  v102 = [*&v22[v26] leadingAnchor];
  v103 = [v22 leadingAnchor];
  v104 = [v102 &selRef_hideDots + 5];

  *(v27 + 224) = v104;
  v105 = [*&v22[v26] trailingAnchor];
  v106 = [v22 trailingAnchor];
  v107 = [v105 &selRef_hideDots + 5];

  *(v27 + 232) = v107;
  v108 = [*&v22[v26] bottomAnchor];
  v109 = [v22 bottomAnchor];

  v110 = [v108 &selRef_hideDots + 5];
  *(v27 + 240) = v110;
  sub_2511C8A48(0, &qword_27F422898, 0x277CCAAD0);
  v111 = sub_25121186C();

  [v115 activateConstraints_];

  return v22;
}

void sub_2511F9854()
{
  v1 = OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_infoView;
  v2 = objc_allocWithZone(type metadata accessor for HPSHeaderView());
  v3 = sub_25121176C();
  v4 = [v2 initWithTitle:v3 detailText:0 icon:0];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v4;
  v5 = OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_spacerViewFirst;
  v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v5) = v6;
  v7 = OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_learnMoreView;
  *(v0 + v7) = sub_2511F72AC();
  v8 = OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_spacerViewSecond;
  v9 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v8) = v9;
  v10 = OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_buttonTrayEffectView;
  v11 = [objc_opt_self() effectWithStyle_];
  v12 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  v13 = v12;
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setAlpha_];

  *(v0 + v10) = v13;
  v14 = OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_continueButton;
  v15 = [objc_opt_self() boldButton];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v14) = v15;
  v16 = OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_buttonTray;
  v17 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v16) = v17;
  v18 = OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_stackContainerView;
  v19 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  [v19 setAxis_];
  [v19 setAlignment_];
  [v19 setDistribution_];
  *(v0 + v18) = v19;
  v20 = OBJC_IVAR____TtCC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainerP33_D51FEB6A68E3E202054F6E29D55400B046HPSSpatialProfileSingleStepBottomContainerImpl_scrollView;
  v21 = [objc_allocWithZone(MEMORY[0x277D759D8]) initWithFrame_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v20) = v21;
  sub_251211C4C();
  __break(1u);
}

id sub_2511F9B68()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_251210D8C();
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_251210D2C();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_2511F9C28(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2511F9C7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_2511F9CD8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EE0, qword_251218010);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2512190D0;
  v5 = *&v1[OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_bottomContainerImpl];
  *(inited + 32) = v5;
  *(inited + 40) = v2;
  v6 = v5;
  v7 = v2;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_13;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

  for (i = v6; ; i = MEMORY[0x25306DBD0](0, inited))
  {
    v9 = i;
    v10 = sub_2511F4A44();
    [v1 bounds];
    v12 = 0.5;
    if (!v10)
    {
      v12 = -0.5;
    }

    v13 = v12 * v11;
    [v9 frame];
    [v9 setFrame_];
    [v9 setAlpha_];
    [v9 layoutIfNeeded];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v14 = *(inited + 40);
      goto LABEL_9;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v14 = MEMORY[0x25306DBD0](1, inited);
LABEL_9:
  v15 = v14;
  v16 = sub_2511F4A44();
  [v1 bounds];
  v18 = 0.5;
  if (!v16)
  {
    v18 = -0.5;
  }

  v19 = v18 * v17;
  [v15 &selRef_forceBlur];
  [v15 setFrame_];
  [v15 setAlpha_];
  [v15 layoutIfNeeded];

  swift_setDeallocating();
  v20 = *(inited + 16);
  swift_arrayDestroy();
  [v3 &selRef_forceBlur];
  [v3 setFrame_];
  [v3 layoutIfNeeded];
  v21 = OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl;
  v22 = *&v1[OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl];
  [v22 &selRef_forceBlur];
  [v22 setFrame_];

  [*&v1[v21] layoutIfNeeded];
  v23 = objc_opt_self();
  v24 = swift_allocObject();
  *(v24 + 16) = v3;
  *(v24 + 24) = v1;
  v28[4] = sub_2511FA108;
  v28[5] = v24;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 1107296256;
  v28[2] = sub_2511E49B0;
  v28[3] = &block_descriptor_65;
  v25 = _Block_copy(v28);
  v26 = v3;
  v27 = v1;

  [v23 animateWithDuration:0 delay:v25 options:0 animations:0.2 completion:0.2];
  _Block_release(v25);
}

void sub_2511FA020()
{
  v1 = v0[2];
  v2 = v0[4];
  if (v1)
  {
    v3 = v0[3];
    v1();
  }

  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v2) + 0xB0))();
  [v5 removeFromSuperview];

  v6 = (*((*v4 & *v2) + 0xB8))();
  [v6 removeFromSuperview];

  v7 = *(v2 + OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl);
  v8 = OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_bottomContainerImpl;
  *(v2 + OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl) = *(v2 + OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_bottomContainerImpl);
  *(v2 + v8) = v7;
}

id sub_2511FA108()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [v1 setAlpha_];
  [v1 layoutIfNeeded];
  v3 = OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl;
  [*(v2 + OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl) setAlpha_];
  v4 = *(v2 + v3);

  return [v4 layoutIfNeeded];
}

uint64_t objectdestroy_49Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_2511FA1CC()
{
  v1 = v0[2];
  v2 = v0[3];
  v26 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EE0, qword_251218010);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2512190D0;
  v4 = *&v1[OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_bottomContainerImpl];
  *(inited + 32) = v4;
  v25 = inited + 32;
  *(inited + 40) = v2;
  v27 = OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer____lazy_storage___layoutDirection;
  v5 = v4;
  v6 = v2;
  v7 = 0;
  while (1)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x25306DBD0](v7, inited);
      goto LABEL_10;
    }

    if (v7 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v11 = *(inited + 8 * v7 + 32);
LABEL_10:
    v12 = v11;
    v13 = sub_2511F4A44();
    [v1 bounds];
    if (v13)
    {
      v15 = 0.5;
    }

    else
    {
      v15 = -0.5;
    }

    v16 = v15 * v14;
    [v12 frame];
    [v12 setFrame_];
    sub_2511C8A48(0, &qword_27F422948, 0x277D75D18);
    if (sub_251211A5C())
    {
      [v6 setAlpha_];
      v8 = [v6 playerLayer];
      v9 = v8;
      if (*&v1[v27])
      {
        v10 = 100.0;
      }

      else
      {
        v10 = -100.0;
      }

      [v8 frame];
      [v9 setFrame_];
    }

    else
    {
      [v12 setAlpha_];
    }

    ++v7;
    [v12 layoutIfNeeded];

    if (v7 == 2)
    {
      swift_setDeallocating();
      v17 = *(inited + 16);
      swift_arrayDestroy();
      v18 = OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl;
      v19 = *&v1[OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl];
      [v19 frame];
      [v19 setFrame_];

      [*&v1[v18] layoutIfNeeded];
      v20 = objc_opt_self();
      v21 = swift_allocObject();
      *(v21 + 16) = v1;
      *(v21 + 24) = v26;
      aBlock[4] = sub_2511FA5B8;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2511E49B0;
      aBlock[3] = &block_descriptor_83;
      v22 = _Block_copy(aBlock);
      v23 = v1;
      v24 = v26;

      [v20 animateWithDuration:0 delay:v22 options:0 animations:0.2 completion:0.2];
      _Block_release(v22);
      return;
    }
  }

  __break(1u);
}

uint64_t objectdestroy_55Tm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2511FA564()
{
  v1 = v0[2];
  v2 = v0[4];
  if (v1)
  {
    v3 = v0[3];
    result = v1();
  }

  v5 = *(v2 + OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl);
  v6 = OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_bottomContainerImpl;
  *(v2 + OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl) = *(v2 + OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_bottomContainerImpl);
  *(v2 + v6) = v5;
  return result;
}

uint64_t sub_2511FA5B8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl;
  [*(v2 + OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl) setAlpha_];
  [*(v2 + v3) layoutIfNeeded];
  v4 = [v1 subviews];
  sub_2511C8A48(0, &qword_27F422948, 0x277D75D18);
  v5 = sub_25121187C();

  if (v5 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251211B8C())
  {
    v7 = 4;
    while (1)
    {
      v8 = v7 - 4;
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x25306DBD0](v7 - 4, v5);
      }

      else
      {
        if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(v5 + 8 * v7);
      }

      v10 = v9;
      v11 = __OFADD__(v8, 1);
      v12 = v7 - 3;
      if (v11)
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        [v10 setAlpha_];
      }

      ++v7;
      if (v12 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:
}

void sub_2511FA73C()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_bottomContainerImpl;
  v3 = *&v1[OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_bottomContainerImpl];
  v4 = sub_2511F4A44();
  [v1 bounds];
  v6 = 0.5;
  if (!v4)
  {
    v6 = -0.5;
  }

  v7 = v6 * v5;
  [v3 frame];
  [v3 setFrame_];

  [*&v1[v2] setAlpha_];
  [*&v1[v2] layoutIfNeeded];
  v8 = OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl;
  v9 = *&v1[OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl];
  [v9 frame];
  [v9 setFrame_];

  [*&v1[v8] layoutIfNeeded];
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  v14[4] = sub_2511FA938;
  v14[5] = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2511E49B0;
  v14[3] = &block_descriptor_101;
  v12 = _Block_copy(v14);
  v13 = v1;

  [v10 animateWithDuration:0 delay:v12 options:0 animations:0.2 completion:0.2];
  _Block_release(v12);
}

void sub_2511FA910()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl);
  v3 = OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_bottomContainerImpl;
  *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl) = *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_bottomContainerImpl);
  *(v1 + v3) = v2;
}

id sub_2511FA938()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl;
  [*(v1 + OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl) setAlpha_];
  v3 = *(v1 + v2);

  return [v3 layoutIfNeeded];
}

uint64_t sub_2511FA9EC()
{
  v0 = sub_25121144C();
  __swift_allocate_value_buffer(v0, qword_27F425700);
  __swift_project_value_buffer(v0, qword_27F425700);
  return sub_25121143C();
}

uint64_t sub_2511FAA70()
{
  if (qword_27F4244C0 != -1)
  {
    swift_once();
  }

  v0 = sub_25121144C();

  return __swift_project_value_buffer(v0, qword_27F425700);
}

uint64_t sub_2511FAAD4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4244C0 != -1)
  {
    swift_once();
  }

  v2 = sub_25121144C();
  v3 = __swift_project_value_buffer(v2, qword_27F425700);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_2511FAB7C()
{
  v1 = v0;
  v2 = [v0 text];
  if (v2)
  {

    v3 = &v0[OBJC_IVAR____TtC16HeadphoneConfigsP33_1D5819C84B8241152B4DC57C84788BF621MultiLinkableTextView_linkRange];
    if (*&v0[OBJC_IVAR____TtC16HeadphoneConfigsP33_1D5819C84B8241152B4DC57C84788BF621MultiLinkableTextView_linkRange + 8])
    {
      v4 = objc_opt_self();
      v5 = [v4 appearance];
      v6 = [v5 altTextColor];

      if (!v6)
      {
        v6 = PreferencesTableViewFooterColor();
      }

      v7 = [v4 appearance];
      v8 = [v7 footerHyperlinkColor];

      if (!v8)
      {
        v8 = [objc_opt_self() systemBlueColor];
      }

      v9 = *&v1[OBJC_IVAR____TtC16HeadphoneConfigsP33_1D5819C84B8241152B4DC57C84788BF621MultiLinkableTextView_specifier];
      v10 = *MEMORY[0x277D3FF70];
      if ([v9 propertyForKey_])
      {
        v48 = v8;
        v49 = v3;
        sub_251211B5C();
        swift_unknownObjectRelease();
        sub_2511C8CB0(v50, v51);
        swift_dynamicCast();
        v11 = sub_25121176C();

        v47 = [v11 length];

        if ([v9 propertyForKey_])
        {
          sub_251211B5C();
          swift_unknownObjectRelease();
          sub_2511C8CB0(v50, v51);
          swift_dynamicCast();
          v12 = objc_allocWithZone(MEMORY[0x277CCAB48]);
          v13 = sub_25121176C();

          v14 = [v12 initWithString_];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422F70, &qword_251218000);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_251217D90;
          v16 = *MEMORY[0x277D740C0];
          *(inited + 32) = *MEMORY[0x277D740C0];
          v45 = v16;
          v17 = v14;
          v18 = [v1 _accessibilityHigherContrastTintColorForColor_];
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422F78, &qword_251219908);
          *(inited + 40) = v18;
          v20 = *MEMORY[0x277D740A8];
          *(inited + 64) = v19;
          *(inited + 72) = v20;
          v21 = v19;
          v44 = v19;
          v43 = v20;
          v46 = v6;
          v22 = PreferencesTableViewFooterFont();
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422F80, &unk_251219910);
          *(inited + 104) = v23;
          *(inited + 80) = v22;
          sub_2511C87F8(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422850, &qword_251218008);
          swift_arrayDestroy();
          type metadata accessor for Key(0);
          sub_2511FD7C0(&qword_27F422F90);
          v24 = sub_25121171C();

          [v17 addAttributes:v24 range:{0, v47}];

          v25 = swift_initStackObject();
          *(v25 + 16) = xmmword_2512190C0;
          *(v25 + 32) = v45;
          v26 = v48;
          *(v25 + 40) = [v1 _accessibilityHigherContrastTintColorForColor_];
          *(v25 + 64) = v21;
          *(v25 + 72) = v43;
          v27 = PreferencesTableViewFooterFont();
          v28 = MEMORY[0x277D740E8];
          *(v25 + 80) = v27;
          v29 = *v28;
          *(v25 + 104) = v23;
          *(v25 + 112) = v29;
          v30 = objc_allocWithZone(MEMORY[0x277CBEBC0]);
          v31 = v29;
          v32 = sub_25121176C();
          v33 = [v30 initWithString_];

          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422F98, &unk_251219920);
          *(v25 + 120) = v33;
          v35 = *MEMORY[0x277D741F0];
          *(v25 + 144) = v34;
          *(v25 + 152) = v35;
          v36 = sub_2511C8A48(0, &qword_27F422FA0, 0x277CCABB0);
          v37 = v35;
          v38 = sub_251211A4C();
          *(v25 + 184) = v36;
          *(v25 + 160) = v38;
          sub_2511C87F8(v25);
          swift_setDeallocating();
          swift_arrayDestroy();
          v39 = sub_25121171C();

          [v17 addAttributes:v39 range:{*v49, *(v49 + 1)}];

          v40 = swift_initStackObject();
          *(v40 + 16) = xmmword_251217FE0;
          *(v40 + 32) = v45;
          v41 = [v1 _accessibilityHigherContrastTintColorForColor_];

          *(v40 + 64) = v44;
          *(v40 + 40) = v41;
          sub_2511C87F8(v40);
          swift_setDeallocating();
          sub_2511CCD34(v40 + 32, &qword_27F422850, &qword_251218008);
          v42 = sub_25121171C();

          [v1 setLinkTextAttributes_];

          [v1 setAttributedText_];
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }
}

id sub_2511FB21C()
{
  result = [*(v0 + OBJC_IVAR____TtC16HeadphoneConfigsP33_1D5819C84B8241152B4DC57C84788BF621MultiLinkableTextView_specifier) propertyForKey_];
  if (result)
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
    sub_2511C8CB0(&v6, &v7);
    sub_2511C8A48(0, &qword_27F422F68, 0x277CCAE60);
    swift_dynamicCast();
    v2 = [v5 nonretainedObjectValue];

    if (v2)
    {
      sub_251211B5C();
      swift_unknownObjectRelease();
      sub_2511C8CB0(&v3, v4);
    }

    else
    {
      memset(v4, 0, sizeof(v4));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EB0, &unk_251218400);
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2511FB3D8()
{
  result = [*(v0 + OBJC_IVAR____TtC16HeadphoneConfigsP33_1D5819C84B8241152B4DC57C84788BF621MultiLinkableTextView_specifier) propertyForKey_];
  if (result)
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
    sub_2511C8CB0(&v3, &v4);
    swift_dynamicCast();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2511FB484(void *a1)
{
  result = [*(v1 + OBJC_IVAR____TtC16HeadphoneConfigsP33_1D5819C84B8241152B4DC57C84788BF621MultiLinkableTextView_specifier) propertyForKey_];
  if (result)
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
    sub_2511C8CB0(&v4, &v5);
    swift_dynamicCast();
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2511FBA28()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs23MultiLinkableFooterView____lazy_storage___container);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs23MultiLinkableFooterView____lazy_storage___container);
LABEL_19:
    v43 = v1;
    return v2;
  }

  v44 = OBJC_IVAR____TtC16HeadphoneConfigs23MultiLinkableFooterView____lazy_storage___container;
  v3 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v3 setAlignment_];
  [v3 setAxis_];
  v4 = v3;
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v51 = v4;
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs23MultiLinkableFooterView_backingStore);
  v45 = v0;
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_18:
    [v51 setSpacing_];

    v42 = *(v45 + v44);
    *(v45 + v44) = v51;
    v2 = v51;

    v1 = 0;
    goto LABEL_19;
  }

LABEL_17:
  v6 = sub_251211B8C();
  if (!v6)
  {
    goto LABEL_18;
  }

LABEL_5:
  v50 = v5 & 0xC000000000000001;
  v49 = v5 & 0xFFFFFFFFFFFFFF8;
  v7 = 4;
  v8 = *MEMORY[0x277D768C8];
  v9 = *(MEMORY[0x277D768C8] + 8);
  v10 = *(MEMORY[0x277D768C8] + 16);
  v11 = *(MEMORY[0x277D768C8] + 24);
  v47 = *MEMORY[0x277D3FF58];
  v48 = *MEMORY[0x277D3FF70];
  v12 = &selRef_incrementRightEarOcclusionCount;
  v46 = v5;
  while (1)
  {
    v13 = v7 - 4;
    if (v50)
    {
      v14 = MEMORY[0x25306DBD0](v7 - 4, v5);
    }

    else
    {
      if (v13 >= *(v49 + 16))
      {
        goto LABEL_16;
      }

      v14 = *(v5 + 8 * v7);
    }

    v15 = v14;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v53 = v7 - 3;
    v16 = type metadata accessor for MultiLinkableTextView();
    v17 = objc_allocWithZone(v16);
    v18 = v15;
    v19 = &v17[OBJC_IVAR____TtC16HeadphoneConfigsP33_1D5819C84B8241152B4DC57C84788BF621MultiLinkableTextView_linkRange];
    *v19 = 0;
    *(v19 + 1) = 0;
    *&v17[OBJC_IVAR____TtC16HeadphoneConfigsP33_1D5819C84B8241152B4DC57C84788BF621MultiLinkableTextView_specifier] = v18;
    v56.receiver = v17;
    v56.super_class = v16;
    v20 = v18;
    v21 = objc_msgSendSuper2(&v56, sel_initWithFrame_textContainer_, 0, 0.0, 0.0, 0.0, 0.0);
    [v21 setDelegate_];
    [v21 setTranslatesAutoresizingMaskIntoConstraints_];
    v22 = objc_opt_self();
    v23 = v21;
    v24 = [v22 clearColor];
    [v23 setBackgroundColor_];

    [v23 setShowsVerticalScrollIndicator_];
    [v23 setSelectable_];
    [v23 setEditable_];
    v25 = [v23 textContainer];
    [v25 setLineFragmentPadding_];

    [v23 setTextContainerInset_];
    [v23 setScrollEnabled_];

    LODWORD(v26) = 1148846080;
    [v23 setContentCompressionResistancePriority:1 forAxis:v26];
    [v23 _setInteractiveTextSelectionDisabled_];

    v27 = OBJC_IVAR____TtC16HeadphoneConfigsP33_1D5819C84B8241152B4DC57C84788BF621MultiLinkableTextView_specifier;
    result = [*&v23[OBJC_IVAR____TtC16HeadphoneConfigsP33_1D5819C84B8241152B4DC57C84788BF621MultiLinkableTextView_specifier] v12[253]];
    if (!result)
    {
      break;
    }

    sub_251211B5C();
    swift_unknownObjectRelease();
    sub_2511C8CB0(v54, v55);
    swift_dynamicCast();
    v29 = sub_25121176C();

    [v23 setText_];

    v30 = v12;
    result = [*&v23[v27] v12[253]];
    if (!result)
    {
      goto LABEL_21;
    }

    sub_251211B5C();
    swift_unknownObjectRelease();
    sub_2511C8CB0(v54, v55);
    swift_dynamicCast();
    v31 = sub_25121176C();

    v32 = NSRangeFromString(v31);

    *&v23[OBJC_IVAR____TtC16HeadphoneConfigsP33_1D5819C84B8241152B4DC57C84788BF621MultiLinkableTextView_linkRange] = v32;
    sub_2511FAB7C();

    v33 = v23;
    [v33 setTranslatesAutoresizingMaskIntoConstraints_];
    [v51 addArrangedSubview_];
    v52 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EE0, qword_251218010);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_2512190D0;
    v35 = [v51 leadingAnchor];
    v36 = [v33 leadingAnchor];
    v37 = [v35 constraintEqualToAnchor_];

    *(v34 + 32) = v37;
    v38 = [v51 trailingAnchor];
    v39 = [v33 trailingAnchor];

    v40 = [v38 &selRef_hideDots + 5];
    *(v34 + 40) = v40;
    sub_2511C8A48(0, &qword_27F422898, 0x277CCAAD0);
    v41 = sub_25121186C();

    [v52 activateConstraints_];

    ++v7;
    v5 = v46;
    v12 = v30;
    if (v53 == v6)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

char *MultiLinkableFooterView.init(specifier:)(void *a1)
{
  v6 = OBJC_IVAR____TtC16HeadphoneConfigs23MultiLinkableFooterView_heightConstraints;
  v7 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC16HeadphoneConfigs23MultiLinkableFooterView_heightConstraints) = MEMORY[0x277D84F90];
  v8 = OBJC_IVAR____TtC16HeadphoneConfigs23MultiLinkableFooterView____lazy_storage___container;
  *(v3 + OBJC_IVAR____TtC16HeadphoneConfigs23MultiLinkableFooterView____lazy_storage___container) = 0;
  if (!a1)
  {
    __break(1u);
    goto LABEL_48;
  }

  v4 = v3;
  v2 = a1;
  if ([a1 userInfo])
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v81 = 0u;
    v82 = 0u;
  }

  v83[0] = v81;
  v83[1] = v82;
  if (*(&v82 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422EC0, &qword_251219860);
    if (swift_dynamicCast())
    {
      if (!*(v80 + 16))
      {
        goto LABEL_36;
      }

      v9 = sub_2511CC6F4(0xD000000000000014, 0x80000002512234D0);
      if ((v10 & 1) == 0)
      {
        goto LABEL_36;
      }

      *&v83[0] = *(*(v80 + 56) + 8 * v9);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422EC8, &qword_251219868);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_36;
      }

      if (*(v80 + 16))
      {
        v77 = v81;
        v11 = sub_2511CC6F4(0xD000000000000014, 0x80000002512234F0);
        if ((v12 & 1) == 0)
        {
          goto LABEL_33;
        }

        *&v83[0] = *(*(v80 + 56) + 8 * v11);
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422ED0, qword_251219870);
        if (swift_dynamicCast())
        {
          if (!*(v80 + 16) || (v13 = sub_2511CC6F4(0xD000000000000014, 0x8000000251223510), (v14 & 1) == 0))
          {
LABEL_32:

LABEL_33:

LABEL_36:

            goto LABEL_37;
          }

          *&v83[0] = *(*(v80 + 56) + 8 * v13);
          swift_unknownObjectRetain();
          if (swift_dynamicCast())
          {
            if (*(v80 + 16) && (v15 = sub_2511CC6F4(0xD000000000000013, 0x8000000251223530), (v16 & 1) != 0))
            {
              v76 = v81;
              v17 = *(*(v80 + 56) + 8 * v15);
              swift_unknownObjectRetain();

              *&v83[0] = v17;
              if (swift_dynamicCast())
              {
                v3 = v81;
                v1 = v81;
                v5 = *(v81 + 16);
                if (v81 >> 62)
                {
                  goto LABEL_49;
                }

                v18 = v81;
                if (v5 == *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  while (v5 == *(v76 + 16))
                  {
                    if (v3 >> 62)
                    {
                      if (v5 != sub_251211B8C())
                      {
LABEL_52:

                        goto LABEL_33;
                      }
                    }

                    else if (v5 != *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_52;
                    }

                    v8 = v76;
                    v19 = sub_2511FD0F8(v77, v18, v76, v3);

                    v5 = v19;
                    v73 = *(v19 + 16);
                    if (!v73)
                    {

                      v30 = MEMORY[0x277D84F90];
LABEL_46:
                      *&v4[OBJC_IVAR____TtC16HeadphoneConfigs23MultiLinkableFooterView_backingStore] = v30;
                      v41 = sub_25121176C();
                      v79.receiver = v4;
                      v79.super_class = type metadata accessor for MultiLinkableFooterView();
                      v42 = objc_msgSendSuper2(&v79, sel_initWithReuseIdentifier_, v41);

                      v39 = v42;
                      v43 = [v39 contentView];
                      v44 = sub_2511FBA28();
                      [v43 addSubview_];

                      v78 = objc_opt_self();
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EE0, qword_251218010);
                      v45 = swift_allocObject();
                      *(v45 + 16) = xmmword_2512183D0;
                      v46 = OBJC_IVAR____TtC16HeadphoneConfigs23MultiLinkableFooterView____lazy_storage___container;
                      v47 = [*&v39[OBJC_IVAR____TtC16HeadphoneConfigs23MultiLinkableFooterView____lazy_storage___container] leadingAnchor];
                      v48 = [v39 contentView];
                      v49 = [v48 layoutMarginsGuide];

                      v50 = [v49 leadingAnchor];
                      v51 = [v47 constraintEqualToAnchor_];

                      *(v45 + 32) = v51;
                      v52 = [*&v39[v46] trailingAnchor];
                      v53 = [v39 contentView];
                      v54 = [v53 layoutMarginsGuide];

                      v55 = [v54 trailingAnchor];
                      v56 = [v52 constraintEqualToAnchor_];

                      *(v45 + 40) = v56;
                      v57 = [*&v39[v46] topAnchor];
                      v58 = [v39 contentView];
                      v59 = [v58 layoutMarginsGuide];

                      v60 = [v59 topAnchor];
                      v61 = [v57 constraintEqualToAnchor_];

                      *(v45 + 48) = v61;
                      v62 = [*&v39[v46] bottomAnchor];
                      v63 = [v39 contentView];

                      v64 = [v63 layoutMarginsGuide];
                      v65 = [v64 bottomAnchor];

                      v66 = [v62 constraintEqualToAnchor_];
                      *(v45 + 56) = v66;
                      sub_2511C8A48(0, &qword_27F422898, 0x277CCAAD0);
                      v67 = sub_25121186C();

                      [v78 activateConstraints_];

                      return v39;
                    }

                    *&v83[0] = v7;
                    v3 = v83;
                    sub_251211C1C();
                    v6 = 0;
                    v70 = *MEMORY[0x277D3FF68];
                    v71 = *MEMORY[0x277D3FF70];
                    v1 = MEMORY[0x277D3FF58];
                    v20 = *MEMORY[0x277D3FF58];
                    v68 = *MEMORY[0x277D3FF58];
                    v69 = *MEMORY[0x277D3FF50];
                    v72 = v19;
                    v21 = (v19 + 72);
                    while (v6 < *(v72 + 16))
                    {
                      ++v6;
                      v22 = *(v21 - 4);
                      v74 = *(v21 - 5);
                      v75 = *(v21 - 3);
                      v23 = *(v21 - 2);
                      v24 = *(v21 - 1);
                      v25 = *v21;
                      v21 += 6;
                      v76 = v25;
                      v26 = objc_allocWithZone(MEMORY[0x277D3FAD8]);
                      v77 = v22;

                      swift_unknownObjectRetain();
                      v27 = v24;

                      swift_unknownObjectRetain();
                      v7 = [v26 init];
                      v28 = sub_25121176C();
                      [v7 setProperty:v28 forKey:v71];

                      [v7 setProperty:v75 forKey:v70];
                      v8 = v27;
                      v29 = sub_25121176C();
                      [v7 setProperty:v29 forKey:v69];

                      [v7 setProperty:v25 forKey:v68];
                      swift_unknownObjectRelease();

                      swift_unknownObjectRelease();

                      v3 = v83;
                      sub_251211BFC();
                      v5 = *(*&v83[0] + 16);
                      sub_251211C2C();
                      sub_251211C3C();
                      sub_251211C0C();
                      if (v73 == v6)
                      {

                        v30 = *&v83[0];
                        goto LABEL_46;
                      }
                    }

LABEL_48:
                    __break(1u);
LABEL_49:
                    v18 = v1;
                    if (v5 != sub_251211B8C())
                    {
                      break;
                    }
                  }
                }

                goto LABEL_36;
              }
            }

            else
            {
            }

            goto LABEL_32;
          }
        }
      }

      goto LABEL_36;
    }
  }

  else
  {
    sub_2511CCD34(v83, &unk_27F422EB0, &unk_251218400);
  }

LABEL_37:
  if (qword_27F4244C0 != -1)
  {
    swift_once();
  }

  v31 = sub_25121144C();
  __swift_project_value_buffer(v31, qword_27F425700);
  v32 = v2;
  v33 = sub_25121142C();
  v34 = sub_25121196C();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    *(v35 + 4) = v32;
    *v36 = v2;
    v37 = v32;
    _os_log_impl(&dword_251143000, v33, v34, "Depedencies not met %@", v35, 0xCu);
    sub_2511CCD34(v36, &qword_27F4229F8, &qword_251218D50);
    MEMORY[0x25306E960](v36, -1, -1);
    MEMORY[0x25306E960](v35, -1, -1);
    v32 = v33;
    v33 = v37;
  }

  v38 = *&v4[v6];

  type metadata accessor for MultiLinkableFooterView();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall MultiLinkableFooterView.refreshContents(with:)(PSSpecifier_optional *with)
{
  [v1 setNeedsLayout];

  [v1 layoutIfNeeded];
}

double MultiLinkableFooterView.preferredHeight(forWidth:)()
{
  v0 = sub_2511FBA28();
  [v0 intrinsicContentSize];
  v2 = v1;

  return v2;
}

double MultiLinkableFooterView.preferredHeight(forWidth:in:)()
{
  v0 = sub_2511FBA28();
  [v0 intrinsicContentSize];
  v2 = v1;

  return v2;
}

void sub_2511FCDEC()
{
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs23MultiLinkableFooterView_heightConstraints) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs23MultiLinkableFooterView____lazy_storage___container) = 0;
  sub_251211C4C();
  __break(1u);
}

id MultiLinkableFooterView.__allocating_init(reuseIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_25121176C();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(v2) initWithReuseIdentifier_];

  return v4;
}

id sub_2511FCFC4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2511FD058(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *(a1 + 16);
  if (a2 >> 62)
  {
    v10 = a4;
    v11 = a3;
    v12 = sub_251211B8C();
    a3 = v11;
    a4 = v10;
    v5 = v12;
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *(a3 + 16);
  if (a4 >> 62)
  {
    v7 = sub_251211B8C();
  }

  else
  {
    v7 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (v8 >= v5)
  {
    v8 = v5;
  }

  if (v8 >= v4)
  {
    return v4;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_2511FD0F8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a2;
  v6 = a1;
  v7 = sub_2511FD058(a1, a2, a3, a4);
  v8 = v7;
  if (v7)
  {
    if (v7 <= 0)
    {
      v9 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422FB0, &qword_251219930);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v8;
      v9[3] = 2 * ((v10 - 32) / 48);
    }
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9[3];

  if ((v8 & 0x8000000000000000) == 0)
  {
    v12 = v9 + 4;
    v71 = v4 >> 62;
    v72 = v5 >> 62;
    v70 = v6;
    v55 = v5;
    v48 = v4;
    if (v8)
    {
      v50 = v9;
      v66 = v5 & 0xC000000000000001;
      v68 = *(v6 + 16);
      v56 = v5 & 0xFFFFFFFFFFFFFF8;
      v52 = v5 + 32;
      v13 = v4 & 0xFFFFFFFFFFFFFF8;
      v62 = v4 & 0xC000000000000001;
      v64 = *(a3 + 16);
      v58 = v4 + 32;
      v47 = (v11 >> 1) - v8;

      v14 = 0;
      v15 = 0;
      v60 = v8;
      while (v68 != v15)
      {
        v16 = *(v6 + v14 + 32);
        v17 = *(v6 + v14 + 40);
        if (v72)
        {
          v18 = sub_251211B8C();
        }

        else
        {
          v18 = *(v56 + 16);
        }

        if (v15 == v18)
        {
          goto LABEL_74;
        }

        if (v66)
        {

          v19 = MEMORY[0x25306DBD0](v15, v55);
        }

        else
        {
          if (v15 >= *(v56 + 16))
          {
            goto LABEL_76;
          }

          v19 = *(v52 + 8 * v15);

          swift_unknownObjectRetain();
        }

        if (v64 == v15)
        {
          goto LABEL_86;
        }

        v21 = *(a3 + v14 + 32);
        v20 = *(a3 + v14 + 40);
        if (v71)
        {
          if (v15 == sub_251211B8C())
          {
            goto LABEL_86;
          }
        }

        else if (v15 == *(v13 + 16))
        {
          goto LABEL_86;
        }

        if (v62)
        {

          v22 = MEMORY[0x25306DBD0](v15, v48);
        }

        else
        {
          if (v15 >= *(v13 + 16))
          {
            goto LABEL_75;
          }

          v22 = *(v58 + 8 * v15);

          swift_unknownObjectRetain();
        }

        ++v15;
        *v12 = v16;
        v12[1] = v17;
        v12[2] = v19;
        v12[3] = v21;
        v12[4] = v20;
        v12[5] = v22;
        v12 += 6;
        v14 += 16;
        v8 = v60;
        v6 = v70;
        if (v60 == v15)
        {
          v5 = v55;
          v4 = v48;
          v9 = v50;
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
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
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v47 = v11 >> 1;

LABEL_31:
    v23 = *(v6 + 16);
    if (v8 == v23)
    {
      v24 = v47;
LABEL_69:

      v43 = v9[3];
      if (v43 >= 2)
      {
        v44 = v43 >> 1;
        v41 = __OFSUB__(v44, v24);
        v45 = v44 - v24;
        if (v41)
        {
          goto LABEL_85;
        }

        v9[2] = v45;
      }

      return v9;
    }

    v25 = v5 & 0xFFFFFFFFFFFFFF8;
    v54 = v5 & 0xC000000000000001;
    v65 = v4 & 0xFFFFFFFFFFFFFF8;
    v53 = v4 & 0xC000000000000001;
    v26 = v8 + 4;
    v67 = 16 * v8;
    v27 = a3;
    v24 = v47;
    v49 = *(v6 + 16);
    v51 = v5 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v28 = v26 - 4;
      if (v26 - 4 >= v23)
      {
        goto LABEL_77;
      }

      if (__OFADD__(v28, 1))
      {
        goto LABEL_78;
      }

      v69 = *(v6 + v67 + 40);
      v61 = *(v6 + v67 + 32);
      if (v72)
      {
        v42 = sub_251211B8C();
        v25 = v51;
        if (v28 == v42)
        {
          goto LABEL_69;
        }
      }

      else if (v28 == *(v25 + 16))
      {
        goto LABEL_69;
      }

      v59 = v26 - 3;
      if (v54)
      {

        v63 = MEMORY[0x25306DBD0](v26 - 4, v5);
      }

      else
      {
        if (v28 >= *(v25 + 16))
        {
          goto LABEL_79;
        }

        v29 = *(v5 + 8 * v26);

        v63 = v29;
        swift_unknownObjectRetain();
      }

      v30 = *(a3 + 16);
      if (v28 == v30)
      {
LABEL_68:

        swift_unknownObjectRelease();
        goto LABEL_69;
      }

      if (v28 >= v30)
      {
        goto LABEL_80;
      }

      v31 = *(v27 + v67 + 40);
      v57 = *(v27 + v67 + 32);
      if (v71)
      {
        if (v28 == sub_251211B8C())
        {
          goto LABEL_68;
        }
      }

      else if (v28 == *(v65 + 16))
      {
        goto LABEL_68;
      }

      if (v53)
      {

        v32 = MEMORY[0x25306DBD0](v26 - 4, v4);
        if (!v24)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v28 >= *(v65 + 16))
        {
          goto LABEL_81;
        }

        v32 = *(v4 + 8 * v26);

        swift_unknownObjectRetain();
        if (!v24)
        {
LABEL_48:
          v33 = v9[3];
          if (((v33 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_83;
          }

          v34 = v33 & 0xFFFFFFFFFFFFFFFELL;
          if (v34 <= 1)
          {
            v35 = 1;
          }

          else
          {
            v35 = v34;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422FB0, &qword_251219930);
          v36 = swift_allocObject();
          v37 = _swift_stdlib_malloc_size(v36) - 32;
          v36[2] = v35;
          v36[3] = 2 * (v37 / 48);
          v38 = (v36 + 4);
          v39 = v9[3] >> 1;
          if (v9[2])
          {
            v40 = v9 + 4;
            if (v36 != v9 || v38 >= v40 + 48 * v39)
            {
              memmove(v36 + 4, v40, 48 * v39);
            }

            v9[2] = 0;
          }

          v12 = (v38 + 48 * v39);

          v9 = v36;
          v24 = ((v37 / 48) & 0x7FFFFFFFFFFFFFFFLL) - v39;
          v5 = v55;
          v4 = v48;
        }
      }

      v23 = v49;
      v25 = v51;
      v41 = __OFSUB__(v24--, 1);
      if (v41)
      {
        goto LABEL_82;
      }

      *v12 = v61;
      v12[1] = v69;
      v12[2] = v63;
      v12[3] = v57;
      v12[4] = v31;
      v12[5] = v32;
      v12 += 6;
      ++v26;
      v6 += 16;
      v27 += 16;
      if (v59 == v49)
      {
        goto LABEL_69;
      }
    }
  }

LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

uint64_t sub_2511FD7C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2511FD86C()
{
  v0 = sub_25121144C();
  __swift_allocate_value_buffer(v0, qword_27F425718);
  __swift_project_value_buffer(v0, qword_27F425718);
  return sub_25121143C();
}

uint64_t sub_2511FD8E4()
{
  if (qword_27F4247D0 != -1)
  {
    swift_once();
  }

  v0 = sub_25121144C();

  return __swift_project_value_buffer(v0, qword_27F425718);
}

uint64_t sub_2511FD948@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4247D0 != -1)
  {
    swift_once();
  }

  v2 = sub_25121144C();
  v3 = __swift_project_value_buffer(v2, qword_27F425718);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

double sub_2511FD9F0@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EE0, qword_251218010);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2512190D0;
  *(v2 + 32) = [objc_allocWithZone(BTSDeviceConfigController) init];
  type metadata accessor for BobbleSettingsViewController();
  *(v2 + 40) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = v2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

BOOL sub_2511FDA90()
{
  sub_251210F4C();
  v0 = sub_25121121C();

  return v0 == 2;
}

BOOL sub_2511FDAD0()
{
  v0 = sub_251211CAC();

  return v0 != 0;
}

uint64_t sub_2511FDB38()
{
  sub_251211D1C();
  sub_2512117FC();
  return sub_251211D3C();
}

uint64_t sub_2511FDBB4()
{
  sub_251211D1C();
  sub_2512117FC();
  return sub_251211D3C();
}

uint64_t sub_2511FDC0C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_251211CAC();

  *a2 = v5 != 0;
  return result;
}

void *_sSo28HPSHeadphoneConfigControllerC16HeadphoneConfigsE15_handleDeeplink_9specifierSo11PSSpecifierC10Foundation13URLComponentsV_AGtFZ_0(uint64_t a1, void *a2)
{
  *&v48 = sub_251210CFC();
  *(&v48 + 1) = v4;
  *&v46 = 47;
  *(&v46 + 1) = 0xE100000000000000;
  sub_2511D001C();
  v5 = sub_251211B1C();

  v6 = 0;
  v7 = v5[2];
  v8 = MEMORY[0x277D84F90];
LABEL_2:
  v9 = &v5[2 * v6 + 5];
  while (v7 != v6)
  {
    if (v6 >= v5[2])
    {
      __break(1u);
LABEL_42:
      v46 = 0u;
      v47 = 0u;
      goto LABEL_43;
    }

    ++v6;
    v10 = *(v9 - 1);
    v2 = *v9;
    v9 += 2;
    v11 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v11 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {

      *&v48 = v8;
      v12 = a2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2511D8720(0, *(v8 + 16) + 1, 1);
        v8 = v48;
      }

      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2511D8720((v13 > 1), v14 + 1, 1);
        v8 = v48;
      }

      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v2;
      a2 = v12;
      goto LABEL_2;
    }
  }

  if ([a2 userInfo])
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v48 = v46;
  v49 = v47;
  if (!*(&v47 + 1))
  {
    goto LABEL_26;
  }

  sub_2511C8A48(0, &qword_27F422918, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v7 = 0xD000000000000010;
  v5 = v45;
  v16 = sub_25121176C();
  v17 = [v45 objectForKey_];

  if (v17)
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v48 = v46;
  v49 = v47;
  if (!*(&v47 + 1))
  {

LABEL_26:
    sub_2511E7DB4(&v48);
    goto LABEL_27;
  }

  sub_25121102C();
  if (swift_dynamicCast())
  {
    v2 = v45;
    v18 = *(v8 + 16);
    if (v18)
    {
      v19 = (v8 + 16 + 16 * v18);
      v21 = *v19;
      v20 = v19[1];
    }

    v33 = sub_251211CAC();

    if (v33)
    {

      goto LABEL_27;
    }

    v44 = a2;
    sub_251210F4C();
    v34 = sub_25121121C();

    if (v34 != 2)
    {

      a2 = v44;
      goto LABEL_27;
    }

    if (![v44 userInfo])
    {
      goto LABEL_42;
    }

    sub_251211B5C();
    swift_unknownObjectRelease();
LABEL_43:
    v48 = v46;
    v49 = v47;
    if (*(&v47 + 1))
    {
      sub_2511C8A48(0, &qword_27F4230A8, 0x277CBEB38);
      if (swift_dynamicCast())
      {
        v35 = v45;
LABEL_48:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EE0, qword_251218010);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_2512190D0;
        *(v36 + 32) = [objc_allocWithZone(BTSDeviceConfigController) init];
        type metadata accessor for BobbleSettingsViewController();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        *(v36 + 40) = [objc_allocWithZone(ObjCClassFromMetadata) init];
        sub_2511C8A48(0, &qword_27F4230A0, 0x277D3FBA0);
        v38 = sub_25121186C();

        *&v48 = v7 + 4;
        *(&v48 + 1) = 0x80000002512237F0;
        [v35 __swift_setObject_forKeyedSubscript_];

        swift_unknownObjectRelease();
        v39 = [objc_allocWithZone(BTSDeviceConfigController) init];
        v40 = [objc_allocWithZone(ObjCClassFromMetadata) init];

        *&v48 = 0x6867696C68676948;
        *(&v48 + 1) = 0xE900000000000074;
        [v35 __swift_setObject_forKeyedSubscript_];
        swift_unknownObjectRelease();
        v41 = [objc_allocWithZone(BTSDeviceConfigController) init];
        v42 = [objc_allocWithZone(ObjCClassFromMetadata) init];

        *&v48 = 0x6F697463656C6553;
        *(&v48 + 1) = 0xE90000000000006ELL;
        [v35 __swift_setObject_forKeyedSubscript_];
        swift_unknownObjectRelease();
        a2 = v44;
        [v44 setUserInfo_];
        v43 = v44;

        return a2;
      }
    }

    else
    {
      sub_2511E7DB4(&v48);
    }

    v35 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
    goto LABEL_48;
  }

LABEL_27:
  if (qword_27F4247D0 != -1)
  {
    swift_once();
  }

  v22 = sub_25121144C();
  __swift_project_value_buffer(v22, qword_27F425718);

  v23 = sub_25121142C();
  v24 = sub_25121196C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v48 = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_2511CBE4C(0xD00000000000001CLL, 0x80000002512237B0, &v48);
    *(v25 + 12) = 2080;
    v27 = MEMORY[0x25306D890](v8, MEMORY[0x277D837D0]);
    v29 = v28;

    v30 = sub_2511CBE4C(v27, v29, &v48);

    *(v25 + 14) = v30;
    _os_log_impl(&dword_251143000, v23, v24, "%s No matching deeplink %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25306E960](v26, -1, -1);
    MEMORY[0x25306E960](v25, -1, -1);
  }

  else
  {
  }

  v31 = a2;
  return a2;
}

unint64_t sub_2511FE418()
{
  result = qword_27F4230B0;
  if (!qword_27F4230B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4230B0);
  }

  return result;
}

id sub_2511FE48C(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4230B8, &unk_251219A80);
  v6 = sub_251211CEC();
  swift_beginAccess();
  objc_setAssociatedObject(v2, &unk_27F424960, v6, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  return [v2 addTarget:v2 action:sel_buttonTapped forControlEvents:64];
}

uint64_t sub_2511FE5A0()
{
  v0 = sub_2511FE62C();
  v2 = nullsub_1;
  if (v0)
  {
    v3 = v0;
    v4 = v1;
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v2 = sub_2511FF3C0;
  }

  v2();
}

uint64_t (*sub_2511FE62C())()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_27F424960);
  swift_endAccess();
  if (v1)
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4230B8, &unk_251219A80);
    if (swift_dynamicCast())
    {
      *(swift_allocObject() + 16) = v3;
      return sub_2511FE768;
    }
  }

  else
  {
    sub_2511E7DB4(v6);
  }

  return 0;
}

uint64_t sub_2511FE740()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2511FE768()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2511FE790(void *a1)
{
  v1 = a1;
  v2 = sub_2511FE62C();
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2511FF3C0;
  }

  else
  {
    v7 = nullsub_1;
  }

  v7();
}

void (*sub_2511FE83C(uint64_t *a1))(uint64_t (***a1)(), char a2)
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
  *(v3 + 24) = sub_2511FE62C();
  *(v4 + 32) = v5;
  return sub_2511FE8B4;
}

void sub_2511FE8B4(uint64_t (***a1)(), char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    if (v3)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v4;
      *v2 = sub_2511FF3C0;
      v2[1] = v5;
      sub_251146DE4(v3);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4230B8, &unk_251219A80);
      v6 = sub_251211CEC();
    }

    else
    {
      v6 = 0;
    }

    v9 = v2[5];
    swift_beginAccess();
    objc_setAssociatedObject(v9, &unk_27F424960, v6, 1);
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_251146DF4(v3);
    v10 = v2[3];
    v11 = v2[4];
  }

  else
  {
    if (v3)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v3;
      *(v7 + 24) = v4;
      *v2 = sub_2511FF3C0;
      v2[1] = v7;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4230B8, &unk_251219A80);
      v8 = sub_251211CEC();
    }

    else
    {
      v8 = 0;
    }

    v12 = v2[5];
    swift_beginAccess();
    objc_setAssociatedObject(v12, &unk_27F424960, v8, 1);
    swift_endAccess();
    swift_unknownObjectRelease();
    v10 = v3;
  }

  sub_251146DF4(v10);

  free(v2);
}

id sub_2511FEA84(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4230B8, &unk_251219A80);
  v6 = sub_251211CEC();
  swift_beginAccess();
  objc_setAssociatedObject(v2, &unk_27F424961, v6, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  [v2 setTarget_];
  return [v2 setAction_];
}

uint64_t sub_2511FEBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v7 = v5;
  if (a1)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4230B8, &unk_251219A80);
    v11 = sub_251211CEC();
  }

  else
  {
    v11 = 0;
  }

  swift_beginAccess();
  objc_setAssociatedObject(v7, a5, v11, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_251146DF4(a1);
}

uint64_t sub_2511FEC80()
{
  v0 = sub_2511FED0C();
  v2 = nullsub_1;
  if (v0)
  {
    v3 = v0;
    v4 = v1;
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v2 = sub_2511FF3C0;
  }

  v2();
}

uint64_t (*sub_2511FED0C())()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_27F424961);
  swift_endAccess();
  if (v1)
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4230B8, &unk_251219A80);
    if (swift_dynamicCast())
    {
      *(swift_allocObject() + 16) = v3;
      return sub_2511FF3BC;
    }
  }

  else
  {
    sub_2511E7DB4(v6);
  }

  return 0;
}

uint64_t sub_2511FEE20(void *a1)
{
  v1 = a1;
  v2 = sub_2511FED0C();
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2511FF3C0;
  }

  else
  {
    v7 = nullsub_1;
  }

  v7();
}

void (*sub_2511FEECC(uint64_t *a1))(uint64_t (***a1)(), char a2)
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
  *(v3 + 24) = sub_2511FED0C();
  *(v4 + 32) = v5;
  return sub_2511FEF44;
}

void sub_2511FEF44(uint64_t (***a1)(), char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    if (v3)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v4;
      *v2 = sub_2511FF3C0;
      v2[1] = v5;
      sub_251146DE4(v3);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4230B8, &unk_251219A80);
      v6 = sub_251211CEC();
    }

    else
    {
      v6 = 0;
    }

    v9 = v2[5];
    swift_beginAccess();
    objc_setAssociatedObject(v9, &unk_27F424961, v6, 1);
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_251146DF4(v3);
    v10 = v2[3];
    v11 = v2[4];
  }

  else
  {
    if (v3)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v3;
      *(v7 + 24) = v4;
      *v2 = sub_2511FF3C0;
      v2[1] = v7;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4230B8, &unk_251219A80);
      v8 = sub_251211CEC();
    }

    else
    {
      v8 = 0;
    }

    v12 = v2[5];
    swift_beginAccess();
    objc_setAssociatedObject(v12, &unk_27F424961, v8, 1);
    swift_endAccess();
    swift_unknownObjectRelease();
    v10 = v3;
  }

  sub_251146DF4(v10);

  free(v2);
}

Swift::Void __swiftcall UIView.pinToOther(_:)(UIView *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F422EE0, qword_251218010);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2512183D0;
  v6 = [v2 leadingAnchor];
  v7 = [(UIView *)a1 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v5 + 32) = v8;
  v9 = [v2 trailingAnchor];
  v10 = [(UIView *)a1 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v5 + 40) = v11;
  v12 = [v2 topAnchor];
  v13 = [(UIView *)a1 topAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v5 + 48) = v14;
  v15 = [v2 bottomAnchor];
  v16 = [(UIView *)a1 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v5 + 56) = v17;
  sub_2511E6B30();
  v18 = sub_25121186C();

  [v4 activateConstraints_];
}

void sub_2511FF354(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  UIView.pinToOther(_:)(v4);
}

uint64_t sub_2511FF3FC(unsigned __int8 a1)
{
  sub_251211D1C();
  MEMORY[0x25306DD30](a1);
  return sub_251211D3C();
}

id BobbleMappingSelectionController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_25121176C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id BobbleMappingSelectionController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController_viewModel] = 0;
  v3[OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController_mapingUseCase] = 2;
  *&v3[OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController____lazy_storage___headGestureMappingSection] = 0;
  if (a2)
  {
    v5 = sub_25121176C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for BobbleMappingSelectionController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

void sub_2511FF600()
{
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController_viewModel) = 0;
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController_mapingUseCase) = 2;
  *(v0 + OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController____lazy_storage___headGestureMappingSection) = 0;
  sub_251211C4C();
  __break(1u);
}

uint64_t sub_2511FF708()
{
  v1 = OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController____lazy_storage___headGestureMappingSection;
  if (*&v0[OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController____lazy_storage___headGestureMappingSection])
  {
    v2 = *&v0[OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController____lazy_storage___headGestureMappingSection];
  }

  else
  {
    v3 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422998, &qword_2512184D0);
    v4 = sub_2511D4478();
    v6 = v5;
    v7 = sub_2511D4478();
    v9 = sub_2511D4484(v4, v6, v7, v8);
    v10 = sub_2511E326C();
    v12 = v11;
    v13 = type metadata accessor for BobbleMappingSelectionController();
    v31 = v13;
    *&v30 = v3;
    v14 = v3;
    v15 = sub_2511D3E4C();
    v16 = sub_2511D4428(0, 0, v10, v12, &v30, 0, 0, 3, v32, 0, v15 & 1, 0, 0, 0, 0);
    v17 = (*(*v9 + 160))(v32, v16);

    sub_2511CCA6C(v32);
    v18 = (*(*v17 + 168))(sub_2511FFA30, 0);

    v19 = sub_2511E326C();
    v21 = v20;
    v31 = v13;
    *&v30 = v14;
    v22 = v14;
    v23 = sub_2511D3E4C();
    v24 = sub_2511D4428(0, 0, v19, v21, &v30, 0, 0, 3, v32, 0, v23 & 1, 0, 0, 0, 0);
    v25 = (*(*v18 + 160))(v32, v24);

    sub_2511CCA6C(v32);
    v26 = (*(*v25 + 168))(sub_2511FFAAC, 0);

    v2 = (*(*v26 + 176))(v27);

    v28 = *&v3[v1];
    *&v3[v1] = v2;
  }

  return v2;
}

void sub_2511FFA30(void *a1)
{
  v2 = sub_25121176C();
  [a1 setProperty:v2 forKey:*MEMORY[0x277D3FFB8]];
}

void sub_2511FFAAC(void *a1)
{
  sub_2511E326C();
  v2 = sub_25121176C();

  [a1 setProperty:v2 forKey:*MEMORY[0x277D3FFB8]];
}

uint64_t sub_2511FFB38(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController____lazy_storage___headGestureMappingSection);
  *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController____lazy_storage___headGestureMappingSection) = a1;
}

uint64_t (*sub_2511FFB50(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_2511FF708();
  return sub_2511FFB98;
}

uint64_t sub_2511FFB98(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController____lazy_storage___headGestureMappingSection);
  *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController____lazy_storage___headGestureMappingSection) = v2;
}

Swift::OpaquePointer_optional __swiftcall BobbleMappingSelectionController.specifiers()()
{
  v1 = v0;
  v2 = sub_25121144C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 specifier];
  if (!v7)
  {
    __break(1u);
    goto LABEL_29;
  }

  v9 = v7;
  v10 = [v7 userInfo];

  if (v10)
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34 = v32;
  v35 = v33;
  if (!*(&v33 + 1))
  {
    goto LABEL_22;
  }

  sub_2511C8A48(0, &qword_27F422918, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v11 = v31;
  v12 = sub_25121176C();
  v13 = [v11 objectForKey_];

  if (v13)
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34 = v32;
  v35 = v33;
  if (!*(&v33 + 1))
  {

    sub_2511CCD34(&v34, &unk_27F422EB0, &unk_251218400);
    goto LABEL_23;
  }

  type metadata accessor for BobbleSettingsViewModel();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_23;
  }

  v14 = v31;
  v15 = sub_25121176C();
  v16 = [v11 objectForKey_];

  if (v16)
  {
    sub_251211B5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34 = v32;
  v35 = v33;
  if (!*(&v33 + 1))
  {

LABEL_22:
    sub_2511CCD34(&v34, &unk_27F422EB0, &unk_251218400);
    goto LABEL_23;
  }

  if (swift_dynamicCast())
  {
    v17 = v31;
    v18 = *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController_viewModel);
    *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController_viewModel) = v14;

    *(v1 + OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController_mapingUseCase) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F422978, qword_251218410);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_251217FE0;
    *(inited + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x98))();
    v20 = sub_2512001A0(inited);
    swift_setDeallocating();
    sub_2511CCD34(inited + 32, &qword_27F422980, &qword_251219A90);
    sub_2511C8A48(0, &qword_27F422970, 0x277D3FAD8);
    v21 = sub_25121186C();
    v22 = sub_25121176C();
    [v1 setValue:v21 forKey:v22];

    v23 = sub_2511CBB34(v20);

    v7 = v23;
    goto LABEL_29;
  }

LABEL_23:
  sub_2511C8A48(0, &qword_27F422970, 0x277D3FAD8);
  v24 = sub_25121186C();
  v25 = sub_25121176C();
  [v1 setValue:v24 forKey:v25];

  sub_2512113EC();
  v26 = sub_25121142C();
  v27 = sub_25121196C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v34 = v29;
    *v28 = 136315394;
    *(v28 + 4) = sub_2511CBE4C(0x6569666963657073, 0xEC00000029287372, &v34);
    *(v28 + 12) = 2048;
    *(v28 + 14) = 61;
    _os_log_impl(&dword_251143000, v26, v27, "%s: %ld Depedencies not meet, bailing out of specifiers returning empty conroller!", v28, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x25306E960](v29, -1, -1);
    MEMORY[0x25306E960](v28, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v7 = 0;
LABEL_29:
  result.value._rawValue = v7;
  result.is_nil = v8;
  return result;
}

uint64_t sub_2512001A0(uint64_t a1)
{
  v30 = *(a1 + 16);
  if (!v30)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v29 = a1 + 32;
  v3 = &qword_27F422980;
  while (1)
  {
    v5 = *(v29 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v26 = *(v29 + 8 * v1);
      }

      v7 = sub_251211B8C();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v27 = sub_251211B8C();
      v10 = v27 + v7;
      if (__OFADD__(v27, v7))
      {
LABEL_36:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = v7;
    if (result)
    {
      if (v8)
      {
        goto LABEL_16;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v8)
      {
LABEL_16:
        sub_251211B8C();
        goto LABEL_17;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *(v11 + 16);
LABEL_17:
    result = sub_251211BDC();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v14 >> 1) - v13) < v34)
    {
      goto LABEL_40;
    }

    v31 = v1;
    v32 = v2;
    v17 = v11 + 8 * v13 + 32;
    v28 = v11;
    if (v6)
    {
      if (v15 < 1)
      {
        goto LABEL_42;
      }

      sub_251200F34();
      for (i = 0; i != v15; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3, &qword_251219A90);
        v19 = v3;
        v20 = sub_2511CC954(v33, i, v5);
        v22 = *v21;
        (v20)(v33, 0);
        v3 = v19;
        *(v17 + 8 * i) = v22;
      }
    }

    else
    {
      sub_2511C8A48(0, &qword_27F422970, 0x277D3FAD8);
      swift_arrayInitWithCopy();
    }

    v1 = v31;
    v2 = v32;
    if (v34 >= 1)
    {
      v23 = *(v28 + 16);
      v24 = __OFADD__(v23, v34);
      v25 = v23 + v34;
      if (v24)
      {
        goto LABEL_41;
      }

      *(v28 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v30)
    {
      return v2;
    }
  }

  v16 = v11;
  result = sub_251211B8C();
  v11 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t BobbleMappingSelectionController.tableView(_:cellForRowAt:)(uint64_t a1)
{
  v3 = sub_251210DFC();
  v27.receiver = v1;
  v27.super_class = type metadata accessor for BobbleMappingSelectionController();
  v4 = objc_msgSendSuper2(&v27, sel_tableView_cellForRowAtIndexPath_, a1, v3);

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    goto LABEL_27;
  }

  v6 = v5;
  v7 = sub_251210E2C();
  if (v1[OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController_mapingUseCase])
  {
    if (v1[OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController_mapingUseCase] != 1)
    {
      return v6;
    }

    if (v7 != 1)
    {
      if (!v7)
      {
        v8 = *&v1[OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController_viewModel];
        if (v8)
        {
          v9 = *(*v8 + 184);

          v11 = v9(v10);
LABEL_12:
          v15 = v11;

          v16 = v15 == 1;
LABEL_18:
          v25 = v16;
          [v6 setChecked_];
          return v6;
        }

        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      return v6;
    }

    v17 = *&v1[OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController_viewModel];
    if (!v17)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v18 = *(*v17 + 184);

    v20 = v18(v19);
LABEL_17:
    v24 = v20;

    v16 = v24 == 2;
    goto LABEL_18;
  }

  if (v7 != 1)
  {
    if (!v7)
    {
      v12 = *&v1[OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController_viewModel];
      if (v12)
      {
        v13 = *(*v12 + 232);

        v11 = v13(v14);
        goto LABEL_12;
      }

      goto LABEL_24;
    }

    return v6;
  }

  v21 = *&v1[OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController_viewModel];
  if (v21)
  {
    v22 = *(*v21 + 232);

    v20 = v22(v23);
    goto LABEL_17;
  }

LABEL_26:
  __break(1u);
LABEL_27:

  result = sub_251211C4C();
  __break(1u);
  return result;
}

void BobbleMappingSelectionController.listItemSelected(_:)(uint64_t a1)
{
  v2 = v1;
  v40 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4230D8, &qword_251219A98);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v41 = &v39 - v5;
  v6 = sub_251210E3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v2;
  v11 = [v2 table];
  if (!v11)
  {
    __break(1u);
    goto LABEL_31;
  }

  v12 = v11;
  MEMORY[0x25306CE20](0, 0);
  v13 = sub_251210DFC();
  v14 = *(v7 + 8);
  v14(v10, v6);
  v15 = [v12 cellForRowAtIndexPath_];

  if (!v15)
  {
    return;
  }

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    goto LABEL_28;
  }

  v17 = v16;
  v39 = v15;
  v18 = [v42 table];
  if (!v18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v19 = v18;
  MEMORY[0x25306CE20](1, 0);
  v20 = sub_251210DFC();
  v14(v10, v6);
  v21 = [v19 cellForRowAtIndexPath_];

  if (v21)
  {
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (!v22)
    {
      v29 = v39;
      v15 = v21;
LABEL_27:

      goto LABEL_28;
    }

    v23 = v22;
    [v17 setChecked_];
    [v23 setChecked_];
    v24 = v41;
    sub_251200E5C(v40, v41);
    if ((*(v7 + 48))(v24, 1, v6) != 1)
    {
      v25 = sub_251210E2C();
      v14(v24, v6);
      if (v42[OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController_mapingUseCase])
      {
        if (v42[OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController_mapingUseCase] != 1)
        {
          goto LABEL_26;
        }

        if (v25 != 1)
        {
          if (!v25)
          {
            v26 = *&v42[OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController_viewModel];
            if (v26)
            {
              v27 = *(*v26 + 192);
              v28 = *&v42[OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController_viewModel];

              v27(1);
LABEL_25:

              [v17 setChecked_];
              goto LABEL_26;
            }

            goto LABEL_33;
          }

LABEL_26:
          v29 = v21;
          v15 = v39;
          goto LABEL_27;
        }

        v33 = *&v42[OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController_viewModel];
        if (!v33)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v34 = *(*v33 + 192);
        v35 = *&v42[OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController_viewModel];

        v34(2);
      }

      else
      {
        if (v25 != 1)
        {
          if (!v25)
          {
            v30 = *&v42[OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController_viewModel];
            if (v30)
            {
              v31 = *(*v30 + 240);
              v32 = *&v42[OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController_viewModel];

              v31(1);
              goto LABEL_25;
            }

            goto LABEL_34;
          }

          goto LABEL_26;
        }

        v36 = *&v42[OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController_viewModel];
        if (!v36)
        {
LABEL_36:
          __break(1u);
          return;
        }

        v37 = *(*v36 + 240);
        v38 = *&v42[OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController_viewModel];

        v37(2);
      }

      v17 = v23;
      goto LABEL_25;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v15 = v39;
LABEL_28:
}

id BobbleMappingSelectionController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BobbleMappingSelectionController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_251200E5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4230D8, &qword_251219A98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_251200ED0()
{
  result = qword_27F4230E0;
  if (!qword_27F4230E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4230E0);
  }

  return result;
}

unint64_t sub_251200F34()
{
  result = qword_27F422990;
  if (!qword_27F422990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F422980, &qword_251219A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F422990);
  }

  return result;
}

id sub_251200FA8()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F424A78 = result;
  return result;
}

uint64_t sub_25120168C()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F4258B0);
  __swift_project_value_buffer(v0, qword_27F4258B0);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_2512018C0()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F425910);
  __swift_project_value_buffer(v0, qword_27F425910);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251203B94()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F4260F0);
  __swift_project_value_buffer(v0, qword_27F4260F0);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120400C()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F4261C8);
  __swift_project_value_buffer(v0, qword_27F4261C8);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120440C()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426288);
  __swift_project_value_buffer(v0, qword_27F426288);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251205668()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426690);
  __swift_project_value_buffer(v0, qword_27F426690);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251205BB8()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426798);
  __swift_project_value_buffer(v0, qword_27F426798);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251206108()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F4268A0);
  __swift_project_value_buffer(v0, qword_27F4268A0);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_2512063C8()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426918);
  __swift_project_value_buffer(v0, qword_27F426918);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_2512064B8()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426930);
  __swift_project_value_buffer(v0, qword_27F426930);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_2512065A8()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426948);
  __swift_project_value_buffer(v0, qword_27F426948);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251206698()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426960);
  __swift_project_value_buffer(v0, qword_27F426960);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251206788()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426978);
  __swift_project_value_buffer(v0, qword_27F426978);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251206878()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426990);
  __swift_project_value_buffer(v0, qword_27F426990);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251206968()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F4269A8);
  __swift_project_value_buffer(v0, qword_27F4269A8);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251206A58()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F4269C0);
  __swift_project_value_buffer(v0, qword_27F4269C0);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251206B48()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F4269D8);
  __swift_project_value_buffer(v0, qword_27F4269D8);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251206C38()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F4269F0);
  __swift_project_value_buffer(v0, qword_27F4269F0);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251206EF8()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426A68);
  __swift_project_value_buffer(v0, qword_27F426A68);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251206FE8()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426A80);
  __swift_project_value_buffer(v0, qword_27F426A80);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_2512070D8()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426A98);
  __swift_project_value_buffer(v0, qword_27F426A98);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_2512071C8()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426AB0);
  __swift_project_value_buffer(v0, qword_27F426AB0);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_2512072B8()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426AC8);
  __swift_project_value_buffer(v0, qword_27F426AC8);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_2512073A8()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426AE0);
  __swift_project_value_buffer(v0, qword_27F426AE0);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251207498()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426AF8);
  __swift_project_value_buffer(v0, qword_27F426AF8);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251207588()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426B10);
  __swift_project_value_buffer(v0, qword_27F426B10);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251207678()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426B28);
  __swift_project_value_buffer(v0, qword_27F426B28);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251207768()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426B40);
  __swift_project_value_buffer(v0, qword_27F426B40);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251207A28()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426BB8);
  __swift_project_value_buffer(v0, qword_27F426BB8);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251207B18()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426BD0);
  __swift_project_value_buffer(v0, qword_27F426BD0);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251207C08()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426BE8);
  __swift_project_value_buffer(v0, qword_27F426BE8);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251207EB8()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426C60);
  __swift_project_value_buffer(v0, qword_27F426C60);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251207FA8()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426C78);
  __swift_project_value_buffer(v0, qword_27F426C78);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251208098()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426C90);
  __swift_project_value_buffer(v0, qword_27F426C90);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251208188()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426CA8);
  __swift_project_value_buffer(v0, qword_27F426CA8);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251208278()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426CC0);
  __swift_project_value_buffer(v0, qword_27F426CC0);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251208528()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426D38);
  __swift_project_value_buffer(v0, qword_27F426D38);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251208618()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426D50);
  __swift_project_value_buffer(v0, qword_27F426D50);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251208708()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426D68);
  __swift_project_value_buffer(v0, qword_27F426D68);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_2512087F8()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426D80);
  __swift_project_value_buffer(v0, qword_27F426D80);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_2512088E8()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426D98);
  __swift_project_value_buffer(v0, qword_27F426D98);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251208B98()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426E10);
  __swift_project_value_buffer(v0, qword_27F426E10);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251208F28()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426EB8);
  __swift_project_value_buffer(v0, qword_27F426EB8);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_2512092B8()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F426F60);
  __swift_project_value_buffer(v0, qword_27F426F60);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251209648()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427008);
  __swift_project_value_buffer(v0, qword_27F427008);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_251209EB8()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F4271D0);
  __swift_project_value_buffer(v0, qword_27F4271D0);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120A1D8()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427260);
  __swift_project_value_buffer(v0, qword_27F427260);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120A4F8()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F4272F0);
  __swift_project_value_buffer(v0, qword_27F4272F0);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120A72C()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427350);
  __swift_project_value_buffer(v0, qword_27F427350);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120AC5C()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427458);
  __swift_project_value_buffer(v0, qword_27F427458);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120AD4C()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427470);
  __swift_project_value_buffer(v0, qword_27F427470);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120AE3C()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427488);
  __swift_project_value_buffer(v0, qword_27F427488);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120B010()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F4274D0);
  __swift_project_value_buffer(v0, qword_27F4274D0);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120B170()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427500);
  __swift_project_value_buffer(v0, qword_27F427500);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120B348()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427548);
  __swift_project_value_buffer(v0, qword_27F427548);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120B438()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427560);
  __swift_project_value_buffer(v0, qword_27F427560);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120B528()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427578);
  __swift_project_value_buffer(v0, qword_27F427578);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120B618()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427590);
  __swift_project_value_buffer(v0, qword_27F427590);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120B7E4()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F4275D8);
  __swift_project_value_buffer(v0, qword_27F4275D8);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120B8D4()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F4275F0);
  __swift_project_value_buffer(v0, qword_27F4275F0);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120B9C4()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427608);
  __swift_project_value_buffer(v0, qword_27F427608);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120BAB4()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427620);
  __swift_project_value_buffer(v0, qword_27F427620);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120BBA4()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427638);
  __swift_project_value_buffer(v0, qword_27F427638);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120BC94()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427650);
  __swift_project_value_buffer(v0, qword_27F427650);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120BD84()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427668);
  __swift_project_value_buffer(v0, qword_27F427668);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120BE74()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427680);
  __swift_project_value_buffer(v0, qword_27F427680);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120BF64()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427698);
  __swift_project_value_buffer(v0, qword_27F427698);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120C054()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F4276B0);
  __swift_project_value_buffer(v0, qword_27F4276B0);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120C144()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F4276C8);
  __swift_project_value_buffer(v0, qword_27F4276C8);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120C234()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F4276E0);
  __swift_project_value_buffer(v0, qword_27F4276E0);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120C324()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F4276F8);
  __swift_project_value_buffer(v0, qword_27F4276F8);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120C414()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427710);
  __swift_project_value_buffer(v0, qword_27F427710);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120C504()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427728);
  __swift_project_value_buffer(v0, qword_27F427728);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120C5F4()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427740);
  __swift_project_value_buffer(v0, qword_27F427740);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120C6E4()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427758);
  __swift_project_value_buffer(v0, qword_27F427758);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120C7D4()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427770);
  __swift_project_value_buffer(v0, qword_27F427770);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120C8C4()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427788);
  __swift_project_value_buffer(v0, qword_27F427788);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120C9B4()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F4277A0);
  __swift_project_value_buffer(v0, qword_27F4277A0);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120CAA4()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F4277B8);
  __swift_project_value_buffer(v0, qword_27F4277B8);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120CB94()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F4277D0);
  __swift_project_value_buffer(v0, qword_27F4277D0);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120CCE4()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427800);
  __swift_project_value_buffer(v0, qword_27F427800);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120CDD4()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427818);
  __swift_project_value_buffer(v0, qword_27F427818);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120CEC4()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427830);
  __swift_project_value_buffer(v0, qword_27F427830);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120CFB4()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427848);
  __swift_project_value_buffer(v0, qword_27F427848);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120D0A4()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427860);
  __swift_project_value_buffer(v0, qword_27F427860);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120D194()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427878);
  __swift_project_value_buffer(v0, qword_27F427878);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120D284()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427890);
  __swift_project_value_buffer(v0, qword_27F427890);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120D374()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F4278A8);
  __swift_project_value_buffer(v0, qword_27F4278A8);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120D464()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F4278C0);
  __swift_project_value_buffer(v0, qword_27F4278C0);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120D554()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F4278D8);
  __swift_project_value_buffer(v0, qword_27F4278D8);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120D644()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F4278F0);
  __swift_project_value_buffer(v0, qword_27F4278F0);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120D734()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427908);
  __swift_project_value_buffer(v0, qword_27F427908);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120D824()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427920);
  __swift_project_value_buffer(v0, qword_27F427920);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120D914()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427938);
  __swift_project_value_buffer(v0, qword_27F427938);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120DA04()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427950);
  __swift_project_value_buffer(v0, qword_27F427950);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120DAF4()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427968);
  __swift_project_value_buffer(v0, qword_27F427968);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120DBE4()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427980);
  __swift_project_value_buffer(v0, qword_27F427980);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120DCD4()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427998);
  __swift_project_value_buffer(v0, qword_27F427998);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120DDC4()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F4279B0);
  __swift_project_value_buffer(v0, qword_27F4279B0);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120DEB4()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F4279C8);
  __swift_project_value_buffer(v0, qword_27F4279C8);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120DFA4()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F4279E0);
  __swift_project_value_buffer(v0, qword_27F4279E0);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120E094()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F4279F8);
  __swift_project_value_buffer(v0, qword_27F4279F8);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120E184()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427A10);
  __swift_project_value_buffer(v0, qword_27F427A10);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120E29C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2512113BC();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v4 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120E388()
{
  v0 = sub_2512113BC();
  __swift_allocate_value_buffer(v0, qword_27F427A40);
  __swift_project_value_buffer(v0, qword_27F427A40);
  if (qword_27F424A70 != -1)
  {
    swift_once();
  }

  v1 = qword_27F424A78;
  return sub_2512113AC();
}

uint64_t sub_25120E454(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_2512113BC();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_25120E4CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2512113BC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

void __getHearingModeUIServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getHearingModeUIServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BTSDeviceConfigController.m" lineNumber:83 description:{@"Unable to find class %s", "HearingModeUIService"}];

  __break(1u);
}

void __getHearingModeUIServiceClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *HearingModeSettingsUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"BTSDeviceConfigController.m" lineNumber:81 description:{@"%s", *a1}];

  __break(1u);
}

NSRange NSRangeFromString(NSString *aString)
{
  v1 = MEMORY[0x28211F860](aString);
  result.length = v2;
  result.location = v1;
  return result;
}