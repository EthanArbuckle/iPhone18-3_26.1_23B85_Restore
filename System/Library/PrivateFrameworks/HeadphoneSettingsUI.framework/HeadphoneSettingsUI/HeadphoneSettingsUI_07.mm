unint64_t sub_1AC2EE1F0()
{
  v2 = qword_1EB54D128;
  if (!qword_1EB54D128)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D128);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2EE358@<X0>(uint64_t *a1@<X8>)
{
  result = FirmwareSeedingUseCase.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1AC2EE3B4()
{
  v2 = qword_1EB54D130;
  if (!qword_1EB54D130)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D130);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2EE470()
{
  sub_1AC30B18C();
  v19 = v1;
  v10 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_headphoneDevice);
  swift_beginAccess();
  v11 = *v10;
  MEMORY[0x1E69E5928](*v10);
  swift_endAccess();
  sub_1AC30936C();
  MEMORY[0x1E69E5920](v11);
  type metadata accessor for CBPeerUIGestureMode();
  sub_1AC209A44();
  *v19 = sub_1AC30B1BC() & 1;
  v12 = (v15 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_headphoneDevice);
  swift_beginAccess();
  v13 = *v12;
  MEMORY[0x1E69E5928](*v12);
  swift_endAccess();
  sub_1AC30936C();
  MEMORY[0x1E69E5920](v13);
  v19[1] = sub_1AC30B1BC() & 1;
  v14 = (v15 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_headphoneDevice);
  swift_beginAccess();
  v16 = *v14;
  MEMORY[0x1E69E5928](*v14);
  swift_endAccess();
  sub_1AC30936C();
  MEMORY[0x1E69E5920](v16);
  v19[2] = sub_1AC30B1BC() & 1;
  v17 = (v15 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_headphoneDevice);
  swift_beginAccess();
  v18 = *v17;
  MEMORY[0x1E69E5928](*v17);
  swift_endAccess();
  sub_1AC30936C();
  MEMORY[0x1E69E5920](v18);
  v19[3] = sub_1AC30B1BC() & 1;
  sub_1AC206300();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D140);
  sub_1AC2EE948();
  sub_1AC30AFDC();
  v3 = sub_1AC30AB4C();

  sub_1AC2EEFDC(v3 > 0);
  v4 = (v15 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_headphoneDevice);
  swift_beginAccess();
  v5 = *v4;
  MEMORY[0x1E69E5928](*v4);
  swift_endAccess();
  v8 = sub_1AC30936C();
  MEMORY[0x1E69E5920](v5);
  v6 = (v15 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_headphoneDevice);
  swift_beginAccess();
  v7 = *v6;
  MEMORY[0x1E69E5928](*v6);
  swift_endAccess();
  v9 = sub_1AC3093AC();
  MEMORY[0x1E69E5920](v7);
  return sub_1AC2EF2B4(v8, v9);
}

unint64_t sub_1AC2EE948()
{
  v2 = qword_1EB54D148;
  if (!qword_1EB54D148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D140);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D148);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2EE9D0()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_headphoneDevice);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1AC2EEA40(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_headphoneDevice);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  sub_1AC2EE470();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t (*sub_1AC2EEAE0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1AC2EEB50;
}

uint64_t sub_1AC2EEB50(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  return sub_1AC2EE470();
}

uint64_t sub_1AC2EEBA0()
{
  v6 = v0;
  v2 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x88))();
  sub_1AC30929C();
  MEMORY[0x1E69E5920](v2);
  if (!v4)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  sub_1AC2051E4(v3, __dst);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C858);
  return swift_dynamicCast();
}

uint64_t sub_1AC2EECFC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

double sub_1AC2EED64(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a1);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

void (*sub_1AC2EEDFC(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_host;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1AC2EEEA8;
}

void sub_1AC2EEEA8(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4[3];
    MEMORY[0x1E69E5928](v2);
    swift_unknownObjectWeakAssign();
    MEMORY[0x1E69E5920](v2);
    sub_1AC206988(v4 + 3);
  }

  else
  {
    v3 = v4[3];
    swift_unknownObjectWeakAssign();
    MEMORY[0x1E69E5920](v3);
  }

  swift_endAccess();
  free(v4);
}

uint64_t sub_1AC2EEF74()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_volumeControlOn);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1AC2EEFDC(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_volumeControlOn);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1AC2EF0D4()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_previousGestureMode);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  swift_endAccess();
  LOBYTE(v5) = v3;
  HIBYTE(v5) = v4;
  return v5;
}

uint64_t sub_1AC2EF150(char a1, char a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_previousGestureMode);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_endAccess();
}

uint64_t sub_1AC2EF238()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_localCurrentGestureMode);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  swift_endAccess();
  LOBYTE(v5) = v3;
  HIBYTE(v5) = v4;
  return v5;
}

uint64_t sub_1AC2EF2B4(char a1, char a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_localCurrentGestureMode);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_endAccess();
}

uint64_t sub_1AC2EF3BC()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_defaultVolumeGestureMode);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  swift_endAccess();
  LOBYTE(v5) = v3;
  HIBYTE(v5) = v4;
  return v5;
}

uint64_t sub_1AC2EF438(char a1, char a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_defaultVolumeGestureMode);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_endAccess();
}

uint64_t sub_1AC2EF520()
{
  v6 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController____lazy_storage___toggleSection);
  swift_beginAccess();
  v7 = *v6;

  swift_endAccess();
  if (v7)
  {
    return v7;
  }

  v3 = sub_1AC2EF614(v5);

  v2 = (v5 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController____lazy_storage___toggleSection);
  swift_beginAccess();
  *v2 = v3;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC2EF614(uint64_t a1)
{
  v21 = a1;
  v12 = sub_1AC2F63F4;
  v23 = sub_1AC2F63FC;
  v24 = sub_1AC2F6404;
  v40 = 0;
  v28 = 0;
  v17 = sub_1AC30A90C();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v7 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v16 = &v6 - v7;
  v33 = sub_1AC309AAC();
  v31 = *(v33 - 8);
  v32 = v33 - 8;
  v8 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v34 = &v6 - v8;
  v40 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
  v9 = MEMORY[0x1E69A2B08];
  v10 = sub_1AC205220();
  v11 = v2;
  sub_1AC205220();
  v13 = sub_1AC309D3C();
  MEMORY[0x1E69E5928](v21);
  v38 = v21;
  v35 = sub_1AC309CDC();
  MEMORY[0x1E69E5920](v21);

  v39[4] = v21;
  v22 = 1;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v3 = type metadata accessor for PressHoldDetailedViewController();
  v25 = sub_1AC215DE8(v16, v3);
  v26 = v4;
  (*(v14 + 8))(v16, v17);
  v27 = v39;
  memset(v39, 0, 32);
  v18 = &unk_1F20FA658;
  v19 = 24;
  v20 = 7;
  v30 = swift_allocObject();
  MEMORY[0x1E69E5928](v21);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v21);

  v29 = swift_allocObject();
  MEMORY[0x1E69E5928](v21);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v21);

  sub_1AC20599C();
  sub_1AC309A9C();

  v36 = sub_1AC309D1C();
  (*(v31 + 8))(v34, v33);

  v37 = sub_1AC309D2C();

  return v37;
}

uint64_t sub_1AC2EFAAC(void *a1, uint64_t a2)
{
  v18 = a1;
  v17 = a2;
  v15 = sub_1AC30B17C();
  v16 = v2;
  v3 = sub_1AC30A9DC();
  MEMORY[0x1AC5B07E0](v3);

  sub_1AC2EEBA0();
  v7 = v13;
  v6 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  (*(*(v6 + 8) + 16))(v7);
  sub_1AC30B15C();
  sub_1AC2063F0();
  __swift_destroy_boxed_opaque_existential_1(v12);
  v4 = sub_1AC30A9DC();
  MEMORY[0x1AC5B07E0](v4);

  sub_1AC2063F0();
  sub_1AC30A9BC();
  v11 = sub_1AC30A91C();

  v8 = *MEMORY[0x1E69C5900];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C5900]);
  sub_1AC30A92C();
  v10 = sub_1AC30A91C();

  [a1 setProperty:v11 forKey:{v10, MEMORY[0x1E69E5920](v8).n128_f64[0]}];
  MEMORY[0x1E69E5920](v10);
  return swift_unknownObjectRelease();
}

id sub_1AC2EFCB8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  sub_1AC2068B8();
  if (!Strong)
  {
    return sub_1AC244124(0);
  }

  v0 = sub_1AC2EEF74();
  v2 = sub_1AC244124(v0 & 1);
  MEMORY[0x1E69E5920](Strong);
  return v2;
}

double sub_1AC2EFDB4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v3 = (*((*Strong & *MEMORY[0x1E69E7D40]) + 0x88))();
    v4 = sub_1AC30914C();
    MEMORY[0x1E69E5920](v3);
    if (v4)
    {
      *&result = MEMORY[0x1E69E5920](Strong).n128_u64[0];
    }

    else
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      if ([a1 respondsToSelector_])
      {
        swift_unknownObjectRetain();
        v7 = [a1 BOOLValue];
        swift_unknownObjectRelease();
      }

      else
      {
        v7 = 2;
      }

      if (v7 == 2)
      {
        sub_1AC30B05C();
        __break(1u);
      }

      else
      {
        v2 = v7;
      }

      (*((*Strong & *MEMORY[0x1E69E7D40]) + 0x140))(v2 & 1);
      swift_unknownObjectRelease();
      *&result = MEMORY[0x1E69E5920](Strong).n128_u64[0];
    }
  }

  return result;
}

uint64_t sub_1AC2F0050(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController____lazy_storage___toggleSection);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t (*sub_1AC2F00D0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC2EF520();
  return sub_1AC2F012C;
}

uint64_t sub_1AC2F012C(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1AC2F0050(*a1);
  }

  v3 = *a1;

  sub_1AC2F0050(v3);
  result = a1;
  sub_1AC209190();
  return result;
}

uint64_t sub_1AC2F0198()
{
  v24 = sub_1AC2F0A54;
  v26 = sub_1AC2F106C;
  v49 = sub_1AC2F0A54;
  v51 = sub_1AC2F19A4;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v55 = 0;
  v38 = sub_1AC30A90C();
  v20 = *(v38 - 8);
  v21 = v38 - 8;
  v12 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v37 = &v12 - v12;
  v58 = sub_1AC309AAC();
  v31 = *(v58 - 8);
  v32 = v58 - 8;
  v13 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v58);
  v61 = &v12 - v13;
  v69 = v0;
  v2 = *v0;
  v15 = MEMORY[0x1E69E7D40];
  v14 = (*((v2 & *MEMORY[0x1E69E7D40]) + 0x88))(v1);
  v3 = sub_1AC30936C();
  v4 = v45;
  v22 = v3;
  v68 = v3;
  v5 = MEMORY[0x1E69E5920](v14);
  v16 = (*((*v4 & *v15) + 0x88))(v5);
  v41 = sub_1AC3093AC();
  v67 = v41;
  MEMORY[0x1E69E5920](v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
  v17 = MEMORY[0x1E69A2B08];
  v18 = sub_1AC205220();
  v19 = v6;
  sub_1AC205220();
  v33 = sub_1AC309D3C();
  v66[4] = v45;
  v47 = 1;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v40 = type metadata accessor for PressHoldDetailedViewController();
  v34 = &off_1F20FA698;
  v27 = sub_1AC215DE8(v37, v40);
  v28 = v7;
  v36 = *(v20 + 8);
  v35 = v20 + 8;
  v36(v37, v38);
  MEMORY[0x1E69E5928](v45);
  v29 = v66;
  v66[3] = v40;
  v66[0] = v45;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C850);
  v39 = 17;
  v43 = 7;
  v8 = swift_allocObject();
  *(v8 + 16) = v22;
  v25 = v8;
  v44 = &unk_1F20FA658;
  v42 = 24;
  v30 = swift_allocObject();
  MEMORY[0x1E69E5928](v45);
  v23 = v45;
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v23);

  sub_1AC20599C();
  v56 = 2;
  sub_1AC309A9C();

  v62 = sub_1AC309D1C();
  v60 = *(v31 + 8);
  v59 = v31 + 8;
  v60(v61, v58);

  v65[4] = v45;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v52 = sub_1AC215DE8(v37, v40);
  v53 = v9;
  v36(v37, v38);
  MEMORY[0x1E69E5928](v45);
  v54 = v65;
  v65[3] = v40;
  v65[0] = v45;
  v10 = swift_allocObject();
  *(v10 + 16) = v41;
  v50 = v10;
  v57 = swift_allocObject();
  MEMORY[0x1E69E5928](v45);
  v46 = v45;
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v46);

  sub_1AC20599C();
  sub_1AC309A9C();

  v63 = sub_1AC309D1C();
  v60(v61, v58);

  v64 = sub_1AC309D2C();

  return v64;
}

uint64_t sub_1AC2F0A00(uint64_t a1, char a2)
{
  sub_1AC2F0A5C(a2);
  v3 = sub_1AC30A91C();

  return v3;
}

uint64_t sub_1AC2F0A5C(char a1)
{
  if (a1 == 6 || a1 == 7)
  {
    return sub_1AC2F517C(a1);
  }

  else
  {
    return sub_1AC30A9DC();
  }
}

double sub_1AC2F0AFC(uint64_t a1)
{
  v37 = a1;
  v54 = 0;
  v52 = 0;
  v49 = 0;
  v47 = 0;
  v38 = sub_1AC30A90C();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37);
  v42 = &v17 - v41;
  v43 = v1 + 16;
  v54 = v1 + 16;
  v44 = &v53;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v36 = Strong;
    v3 = Strong;
    v30 = Strong;
    v52 = Strong;
    KeyPath = swift_getKeyPath();
    v21 = swift_getKeyPath();
    v4 = sub_1AC2F13FC();
    v5 = nullsub_1(v4);
    v25 = v51;
    v51[0] = v5;
    v51[1] = v6;
    v51[2] = v7;
    v51[3] = v8;
    v9 = *v3;
    v35 = MEMORY[0x1E69E7D40];
    v24 = (*((v9 & *MEMORY[0x1E69E7D40]) + 0x88))();
    v29 = 0;
    v22 = sub_1AC3095DC();
    v23 = sub_1AC2F6284();
    sub_1AC2F57A0();
    sub_1AC30A54C();
    MEMORY[0x1E69E5920](v24);
    sub_1AC2F6300(v25);
    v27 = v50;
    v50[0] = v51[4];
    v50[1] = v51[5];
    v50[2] = v51[6];
    v50[3] = v51[7];
    v50[4] = v51[8];
    v50[5] = v51[9];
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D200);
    sub_1AC2F634C();
    v28 = sub_1AC30A71C();
    v49 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D210);

    v48 = v28;
    v34 = sub_1AC309A8C();
    v47 = v34;
    MEMORY[0x1E69E5928](v34);
    v46[1] = v30;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v10 = type metadata accessor for PressHoldDetailedViewController();
    v11 = sub_1AC215DE8(v42, v10);
    v12 = v30;
    v31 = v11;
    v32 = v13;
    (*(v39 + 8))(v42, v38);
    v33 = sub_1AC30A91C();

    [v34 setTitle_];
    MEMORY[0x1E69E5920](v33);
    v14 = MEMORY[0x1E69E5920](v34);
    v15 = (*((*v12 & *v35) + 0xA8))(v14);
    v46[0] = v15;
    if (v15)
    {
      v18 = v46;
      v19 = v46[0];
      MEMORY[0x1E69E5928](v46[0]);
      sub_1AC206988(v18);
      *&v16 = MEMORY[0x1E69E5928](v34).n128_u64[0];
      [v19 showController_];
      MEMORY[0x1E69E5920](v34);
      MEMORY[0x1E69E5920](v19);
    }

    else
    {
      sub_1AC206988(v46);
    }

    MEMORY[0x1E69E5920](v34);

    *&result = MEMORY[0x1E69E5920](v30).n128_u64[0];
  }

  return result;
}

uint64_t sub_1AC2F1074()
{
  sub_1AC30936C();
  type metadata accessor for CBPeerUIGestureMode();
  sub_1AC209A44();
  return sub_1AC30B1BC() & 1;
}

double sub_1AC2F10EC@<D0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = sub_1AC2F1074() & 1;
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

double sub_1AC2F115C(uint64_t a1, void *a2)
{
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  sub_1AC2F11C8();
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

uint64_t sub_1AC2F11C8()
{
  sub_1AC30937C();
  v0 = sub_1AC30936C();
  sub_1AC2F2F90(v0);
  sub_1AC3093BC();
  return sub_1AC30942C();
}

uint64_t sub_1AC2F1238()
{
  sub_1AC30936C();
  type metadata accessor for CBPeerUIGestureMode();
  sub_1AC209A44();
  return sub_1AC30B1BC() & 1;
}

double sub_1AC2F12B0@<D0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = sub_1AC2F1238() & 1;
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

double sub_1AC2F1320(uint64_t a1, void *a2)
{
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  sub_1AC2F138C();
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

uint64_t sub_1AC2F138C()
{
  sub_1AC30937C();
  v0 = sub_1AC30936C();
  sub_1AC2F2F90(v0);
  sub_1AC3093BC();
  return sub_1AC30942C();
}

uint64_t sub_1AC2F13FC()
{
  sub_1AC3095DC();
  sub_1AC2F57A0();
  return sub_1AC30A13C();
}

double sub_1AC2F1434(uint64_t a1)
{
  v37 = a1;
  v54 = 0;
  v52 = 0;
  v49 = 0;
  v47 = 0;
  v38 = sub_1AC30A90C();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37);
  v42 = &v17 - v41;
  v43 = v1 + 16;
  v54 = v1 + 16;
  v44 = &v53;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v36 = Strong;
    v3 = Strong;
    v30 = Strong;
    v52 = Strong;
    KeyPath = swift_getKeyPath();
    v21 = swift_getKeyPath();
    v4 = sub_1AC2F13FC();
    v5 = nullsub_1(v4);
    v25 = v51;
    v51[0] = v5;
    v51[1] = v6;
    v51[2] = v7;
    v51[3] = v8;
    v9 = *v3;
    v35 = MEMORY[0x1E69E7D40];
    v24 = (*((v9 & *MEMORY[0x1E69E7D40]) + 0x88))();
    v29 = 0;
    v22 = sub_1AC3095DC();
    v23 = sub_1AC2F6284();
    sub_1AC2F57A0();
    sub_1AC30A54C();
    MEMORY[0x1E69E5920](v24);
    sub_1AC2F6300(v25);
    v27 = v50;
    v50[0] = v51[4];
    v50[1] = v51[5];
    v50[2] = v51[6];
    v50[3] = v51[7];
    v50[4] = v51[8];
    v50[5] = v51[9];
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D200);
    sub_1AC2F634C();
    v28 = sub_1AC30A71C();
    v49 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D210);

    v48 = v28;
    v34 = sub_1AC309A8C();
    v47 = v34;
    MEMORY[0x1E69E5928](v34);
    v46[1] = v30;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v10 = type metadata accessor for PressHoldDetailedViewController();
    v11 = sub_1AC215DE8(v42, v10);
    v12 = v30;
    v31 = v11;
    v32 = v13;
    (*(v39 + 8))(v42, v38);
    v33 = sub_1AC30A91C();

    [v34 setTitle_];
    MEMORY[0x1E69E5920](v33);
    v14 = MEMORY[0x1E69E5920](v34);
    v15 = (*((*v12 & *v35) + 0xA8))(v14);
    v46[0] = v15;
    if (v15)
    {
      v18 = v46;
      v19 = v46[0];
      MEMORY[0x1E69E5928](v46[0]);
      sub_1AC206988(v18);
      *&v16 = MEMORY[0x1E69E5928](v34).n128_u64[0];
      [v19 showController_];
      MEMORY[0x1E69E5920](v34);
      MEMORY[0x1E69E5920](v19);
    }

    else
    {
      sub_1AC206988(v46);
    }

    MEMORY[0x1E69E5920](v34);

    *&result = MEMORY[0x1E69E5920](v30).n128_u64[0];
  }

  return result;
}

uint64_t sub_1AC2F19AC()
{
  sub_1AC3093AC();
  type metadata accessor for CBPeerUIGestureMode();
  sub_1AC209A44();
  return sub_1AC30B1BC() & 1;
}

double sub_1AC2F1A24@<D0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = sub_1AC2F19AC() & 1;
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

double sub_1AC2F1A94(uint64_t a1, void *a2)
{
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  sub_1AC2F1B00();
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

uint64_t sub_1AC2F1B00()
{
  sub_1AC3093BC();
  v0 = sub_1AC3093AC();
  sub_1AC2F2F90(v0);
  sub_1AC30937C();
  return sub_1AC30942C();
}

uint64_t sub_1AC2F1B70()
{
  sub_1AC3093AC();
  type metadata accessor for CBPeerUIGestureMode();
  sub_1AC209A44();
  return sub_1AC30B1BC() & 1;
}

double sub_1AC2F1BE8@<D0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = sub_1AC2F1B70() & 1;
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

double sub_1AC2F1C58(uint64_t a1, void *a2)
{
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  sub_1AC2F1CC4();
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

uint64_t sub_1AC2F1CC4()
{
  sub_1AC3093BC();
  v0 = sub_1AC3093AC();
  sub_1AC2F2F90(v0);
  sub_1AC30937C();
  return sub_1AC30942C();
}

uint64_t sub_1AC2F1D34()
{
  sub_1AC215CB0();
  sub_1AC30B18C();
  if (sub_1AC2EEF74())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378);
    sub_1AC30B18C();
    v13 = v0;
    v12 = MEMORY[0x1E69E7D40];
    *v0 = (*((*v14 & *MEMORY[0x1E69E7D40]) + 0x120))();
    v13[1] = (*((*v14 & *v12) + 0x138))();
    sub_1AC206300();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C508);
    sub_1AC263B38();
    sub_1AC24D54C();
    sub_1AC30AA8C();
    sub_1AC209190();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378);
    sub_1AC30B18C();
    v8 = v1;
    v9 = MEMORY[0x1E69E7D40];
    *v1 = (*((*v14 & *MEMORY[0x1E69E7D40]) + 0x120))();
    v10 = (*((*v14 & *v9) + 0x88))();
    v11 = (*((*v14 & *v9) + 0xA8))();
    if (v11)
    {
      v7 = v11;
    }

    else
    {
      sub_1AC30B05C();
      __break(1u);
    }

    v6 = sub_1AC2DD894(v10, v7, 0);
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](v10);
    v8[1] = v6;
    sub_1AC206300();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C508);
    sub_1AC263B38();
    sub_1AC24D54C();
    sub_1AC30AA8C();
    sub_1AC209190();
  }

  v4 = sub_1AC30AAFC();
  sub_1AC30A9DC();
  v3 = sub_1AC30A91C();

  [v14 setValue:v4 forKey:v3];
  MEMORY[0x1E69E5920](v3);
  swift_unknownObjectRelease();
  v5 = sub_1AC30B02C();

  sub_1AC209190();
  return v5;
}

id sub_1AC2F2308(char a1)
{
  sub_1AC2EEFDC(a1 & 1);
  sub_1AC2EF0D4();
  v37 = sub_1AC2EF238();
  sub_1AC2EF150(v37, SHIBYTE(v37));
  v36 = sub_1AC2EEF74();
  v33 = MEMORY[0x1E69E7D40];
  v31 = (*((*v30 & *MEMORY[0x1E69E7D40]) + 0x88))();
  v32 = sub_1AC30936C();
  v1 = MEMORY[0x1E69E5920](v31);
  v34 = (*((*v30 & *v33) + 0x88))(v1);
  v35 = sub_1AC3093AC();
  v2 = MEMORY[0x1E69E5920](v34);
  if (v36)
  {
    if (v32 == 6)
    {
      if (v35 == 7)
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (v32 != 7)
      {
        if (v35 == 6 || v35 == 7)
        {
          v22 = MEMORY[0x1E69E7D40];
          v25 = (*((*v30 & *MEMORY[0x1E69E7D40]) + 0x88))(v2);
          v23 = (*((*v30 & *v22) + 0x88))();
          v24 = sub_1AC3093AC();
          MEMORY[0x1E69E5920](v23);
          sub_1AC2F2F90(v24);
          sub_1AC30937C();
          v2 = MEMORY[0x1E69E5920](v25);
        }

        else
        {
          type metadata accessor for CBPeerUIGestureMode();
          sub_1AC209A44();
          v3 = sub_1AC30B1BC();
          if (v3)
          {
            v21 = 1;
          }

          else
          {
            v21 = sub_1AC30B1BC();
          }

          if (sub_1AC30B1BC())
          {
            v20 = 1;
          }

          else
          {
            v20 = sub_1AC30B1BC();
          }

          v19 = (*((*v30 & *MEMORY[0x1E69E7D40]) + 0x88))();
          if ((v20 & 1) == 0)
          {
            sub_1AC2EF3BC();
          }

          sub_1AC3093BC();
          v4 = MEMORY[0x1E69E5920](v19);
          v18 = (*((*v30 & *MEMORY[0x1E69E7D40]) + 0x88))(v4);
          if ((v21 & 1) == 0)
          {
            sub_1AC2EF3BC();
          }

          sub_1AC30937C();
          v2 = MEMORY[0x1E69E5920](v18);
        }

        goto LABEL_48;
      }

      if (v35 == 6)
      {
        goto LABEL_48;
      }
    }

    v26 = MEMORY[0x1E69E7D40];
    v29 = (*((*v30 & *MEMORY[0x1E69E7D40]) + 0x88))(v2);
    v27 = (*((*v30 & *v26) + 0x88))();
    v28 = sub_1AC30936C();
    MEMORY[0x1E69E5920](v27);
    sub_1AC2F2F90(v28);
    sub_1AC3093BC();
    v2 = MEMORY[0x1E69E5920](v29);
    goto LABEL_48;
  }

  if (v32 == 1)
  {
    if (v35 == 1 || v35 == 5)
    {
      goto LABEL_48;
    }

    goto LABEL_35;
  }

  if (v32 == 5)
  {
    if (v35 == 1 || v35 == 5)
    {
      goto LABEL_48;
    }

LABEL_35:
    type metadata accessor for CBPeerUIGestureMode();
    sub_1AC209A44();
    if ((sub_1AC30B1BC() & 1) == 0)
    {
      sub_1AC30B1BC();
    }

    v17 = (*((*v30 & *MEMORY[0x1E69E7D40]) + 0x88))();
    sub_1AC3093BC();
    v2 = MEMORY[0x1E69E5920](v17);
    goto LABEL_48;
  }

  if (v35 == 1 || v35 == 5)
  {
    type metadata accessor for CBPeerUIGestureMode();
    sub_1AC209A44();
    if ((sub_1AC30B1BC() & 1) == 0)
    {
      sub_1AC30B1BC();
    }

    v16 = (*((*v30 & *MEMORY[0x1E69E7D40]) + 0x88))();
    sub_1AC30937C();
    v2 = MEMORY[0x1E69E5920](v16);
  }

  else
  {
    type metadata accessor for CBPeerUIGestureMode();
    sub_1AC209A44();
    if ((sub_1AC30B1BC() & 1) == 0)
    {
      sub_1AC30B1BC();
    }

    v15 = (*((*v30 & *MEMORY[0x1E69E7D40]) + 0x88))();
    sub_1AC30937C();
    MEMORY[0x1E69E5920](v15);
    if ((sub_1AC30B1BC() & 1) == 0)
    {
      sub_1AC30B1BC();
    }

    v14 = (*((*v30 & *MEMORY[0x1E69E7D40]) + 0x88))();
    sub_1AC3093BC();
    v2 = MEMORY[0x1E69E5920](v14);
  }

LABEL_48:
  v12 = MEMORY[0x1E69E7D40];
  v8 = (*((*v30 & *MEMORY[0x1E69E7D40]) + 0x88))(v2);
  v10 = sub_1AC30936C();
  v5 = MEMORY[0x1E69E5920](v8);
  v9 = (*((*v30 & *v12) + 0x88))(v5);
  v11 = sub_1AC3093AC();
  MEMORY[0x1E69E5920](v9);
  v6 = sub_1AC2EF2B4(v10, v11);
  v13 = (*((*v30 & *v12) + 0x88))(v6);
  sub_1AC30942C();
  return [v30 reloadSpecifiers];
}

uint64_t sub_1AC2F2F90(unsigned int a1)
{
  if (a1 == 6)
  {
    return 7;
  }

  else if (a1 == 7)
  {
    return 6;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_1AC2F2FF4(char a1)
{
  v14 = a1 & 1;
  v13 = v1;
  MEMORY[0x1E69E5928](v1);
  v12.receiver = v1;
  v12.super_class = type metadata accessor for PressHoldDetailedViewController();
  objc_msgSendSuper2(&v12, sel_viewDidAppear_, a1 & 1);
  v2 = [v1 reloadSpecifiers];
  v7 = MEMORY[0x1E69E7D40];
  v6 = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x88))(v2);
  v10 = sub_1AC30936C();
  v3 = MEMORY[0x1E69E5920](v6);
  v9 = (*((*v8 & *v7) + 0x88))(v3);
  v11 = sub_1AC3093AC();
  MEMORY[0x1E69E5920](v9);
  return sub_1AC2EF2B4(v10, v11);
}

void sub_1AC2F31C8()
{
  swift_unknownObjectWeakInit();
  *OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_volumeControlOn = 0;
  v0 = OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_previousGestureMode;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_previousGestureMode = 0;
  *(v0 + 1) = 0;
  v1 = OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_localCurrentGestureMode;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_localCurrentGestureMode = 0;
  *(v1 + 1) = 0;
  v2 = OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_defaultVolumeGestureMode;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_defaultVolumeGestureMode = 7;
  *(v2 + 1) = 6;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController____lazy_storage___toggleSection = 0;
  sub_1AC30A9DC();
  sub_1AC30B06C();
  __break(1u);
}

void sub_1AC2F33CC()
{
  swift_unknownObjectWeakInit();
  *OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_volumeControlOn = 0;
  v0 = OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_previousGestureMode;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_previousGestureMode = 0;
  *(v0 + 1) = 0;
  v1 = OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_localCurrentGestureMode;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_localCurrentGestureMode = 0;
  *(v1 + 1) = 0;
  v2 = OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_defaultVolumeGestureMode;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_defaultVolumeGestureMode = 7;
  *(v2 + 1) = 6;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController____lazy_storage___toggleSection = 0;
  sub_1AC30A9DC();
  sub_1AC30B06C();
  __break(1u);
}

char *sub_1AC2F3574(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  swift_unknownObjectWeakInit();
  *OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_volumeControlOn = 0;
  v1 = &v9[OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_previousGestureMode];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v9[OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_localCurrentGestureMode];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v9[OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_defaultVolumeGestureMode];
  *v3 = 7;
  v3[1] = 6;
  *&v9[OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController____lazy_storage___toggleSection] = 0;
  MEMORY[0x1E69E5928](a1);
  *&v9[OBJC_IVAR____TtC19HeadphoneSettingsUI31PressHoldDetailedViewController_headphoneDevice] = a1;
  v7.receiver = v9;
  v7.super_class = type metadata accessor for PressHoldDetailedViewController();
  v6 = objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0);
  MEMORY[0x1E69E5928](v6);
  v9 = v6;
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v9);
  return v6;
}

id sub_1AC2F36DC()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PressHoldDetailedViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AC2F3794@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PressHoldDetailedViewController();
  result = sub_1AC309EBC();
  *a1 = result;
  return result;
}

uint64_t sub_1AC2F37D0(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  sub_1AC3095DC();
  sub_1AC2F57A0();
  v3 = sub_1AC30A11C();
  MEMORY[0x1E69E5920](a1);
  return v3;
}

uint64_t sub_1AC2F385C(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  sub_1AC3095DC();
  sub_1AC2F57A0();
  v3 = sub_1AC30A12C();
  MEMORY[0x1E69E5920](a1);
  return v3;
}

uint64_t sub_1AC2F3920(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1);
  v3 = *v2;
  *v2 = a1;
  v2[1] = a2;
  MEMORY[0x1E69E5920](v3);
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1AC2F3980(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return a3;
}

uint64_t sub_1AC2F39BC(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1AC2F3A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a5;
  v20 = a1;
  v16 = a2;
  v21 = a3;
  v22 = a4;
  v19 = sub_1AC2F5820;
  v28 = MEMORY[0x1E69CA980];
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D188);
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v13 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v12 - v13;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D190);
  v29 = *(v35 - 8);
  v30 = v35 - 8;
  v14 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v33 = &v12 - v14;
  v15 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v12 - v15;
  v47 = &v12 - v15;
  *&v45 = v7;
  *(&v45 + 1) = v8;
  *&v46 = v9;
  *(&v46 + 1) = v10;
  MEMORY[0x1E69E5928](v7);

  v17 = &v38;
  v39 = v20;
  v40 = v16;
  v41 = v21;
  v42 = v22;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D198);
  sub_1AC2F5834();
  sub_1AC30A42C();
  MEMORY[0x1E69E5920](v20);

  v27 = sub_1AC2F5B3C();
  sub_1AC30A48C();
  (*(v23 + 8))(v25, v26);
  v43 = v26;
  v44 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1AC207B58(v33, v35, v34);
  v37 = *(v29 + 8);
  v36 = v29 + 8;
  v37(v33, v35);
  (*(v29 + 16))(v33, v34, v35);
  sub_1AC207B58(v33, v35, v31);
  v37(v33, v35);
  return (v37)(v34, v35);
}

uint64_t sub_1AC2F3DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a5;
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v24 = sub_1AC2F5F1C;
  v19 = sub_1AC2F5F30;
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D1B0);
  v32 = *(v35 - 8);
  v33 = v35 - 8;
  v15 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v15 - v15;
  v34 = &v15 - v15;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D198);
  v16 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v39 = &v15 - v16;
  v17 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v15 - v17;
  v53 = &v15 - v17;
  *&v51 = v8;
  *(&v51 + 1) = v9;
  *&v52 = v10;
  *(&v52 + 1) = v11;
  MEMORY[0x1E69E5928](v8);

  v18 = &v46;
  v47 = v25;
  v48 = v26;
  v49 = v27;
  v50 = v28;
  MEMORY[0x1E69E5928](v25);

  v20 = &v41;
  v42 = v25;
  v43 = v26;
  v44 = v27;
  v45 = v28;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D1C0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D1D0);
  v23 = sub_1AC2F5990();
  v12 = sub_1AC2F5A18();
  sub_1AC2F508C(v24, v18, v21, v22, v23, v12, v5);
  MEMORY[0x1E69E5920](v25);

  MEMORY[0x1E69E5920](v25);

  v31 = sub_1AC2F37D0(v25);
  v29 = sub_1AC3095DC();
  v30 = sub_1AC2F58DC();
  sub_1AC2F57A0();
  sub_1AC30A54C();
  v13 = MEMORY[0x1E69E5920](v31);
  (*(v32 + 8))(v34, v35, v13);
  v38 = sub_1AC2F5834();
  sub_1AC207B58(v39, v37, v40);
  sub_1AC2F5F44(v39);
  sub_1AC2F5FF0(v40, v39);
  sub_1AC207B58(v39, v37, v36);
  sub_1AC2F5F44(v39);
  return sub_1AC2F5F44(v40);
}

uint64_t sub_1AC2F426C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a5;
  v24 = a1;
  v23 = a2;
  v40 = a3;
  v41 = a4;
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v54 = 0;
  v39 = 0;
  v34 = sub_1AC30A90C();
  v31 = *(v34 - 8);
  v32 = v34 - 8;
  v22 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v33 = v18 - v22;
  v46 = sub_1AC309D7C();
  v44 = *(v46 - 8);
  v45 = v46 - 8;
  v25 = (v44[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v18 - v25;
  v27 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v28 = v18 - v27;
  v29 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v49 = v18 - v29;
  v30 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v42 = v18 - v30;
  v61 = v18 - v30;
  *&v59 = v11;
  *(&v59 + 1) = v12;
  *&v60 = v13;
  *(&v60 + 1) = v14;
  v55 = v11;
  v56 = v12;
  v57 = v13;
  v58 = v14;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v37 = sub_1AC215DE8(v33, &unk_1F20FA718);
  v38 = v15;
  v35 = *(v31 + 8);
  v36 = v31 + 8;
  v35(v33, v34);

  sub_1AC309D6C();

  v43 = sub_1AC2F6204();
  sub_1AC207B58(v49, v46, v42);
  v47 = v44[1];
  v48 = v44 + 1;
  v47(v49, v46);
  v54 = v49;
  v53[2] = v24;
  v53[3] = v23;
  v53[4] = v40;
  v53[5] = v41;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v18[1] = sub_1AC215DE8(v33, &unk_1F20FA718);
  v18[2] = v16;
  v35(v33, v34);

  sub_1AC309D6C();

  sub_1AC207B58(v28, v46, v49);
  v47(v28, v46);
  v19 = v44[2];
  v18[3] = v44 + 2;
  v19(v28, v42, v46);
  v20 = v53;
  v53[0] = v28;
  v19(v26, v49, v46);
  v53[1] = v26;
  v52[0] = v46;
  v52[1] = v46;
  v50 = v43;
  v51 = v43;
  sub_1AC23A49C(v20, 2uLL, v52, v21);
  v47(v26, v46);
  v47(v28, v46);
  v47(v49, v46);
  return (v47)(v42, v46);
}

uint64_t *sub_1AC2F48AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v71 = &v105;
  v70 = a5;
  v72 = a1;
  v73 = a2;
  v81 = a3;
  v82 = a4;
  v133 = 0u;
  v134 = 0u;
  memset(__b, 0, 0x21uLL);
  v130 = 0u;
  v131 = 0u;
  v120 = 0u;
  v121 = 0u;
  v105 = 0u;
  v106 = 0u;
  v95 = 0u;
  v96 = 0u;
  v74 = 0;
  v75 = sub_1AC30A90C();
  v76 = *(v75 - 8);
  v77 = v75 - 8;
  v78 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v79 = &v18 - v78;
  *&v133 = v5;
  *(&v133 + 1) = v6;
  *&v134 = v7;
  *(&v134 + 1) = v8;
  sub_1AC30AF1C();

  KeyPath = swift_getKeyPath();
  v83 = MEMORY[0x1AC5B0580](v81);

  if (v83)
  {
    v104[2] = v72;
    v104[3] = v73;
    v104[4] = v81;
    v104[5] = v82;
    v57 = 1;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v43 = sub_1AC215DE8(v79, &unk_1F20FA718);
    v44 = v9;
    (*(v76 + 8))(v79, v75);
    v45 = v104;
    v104[0] = v43;
    v104[1] = v44;
    sub_1AC207FC0();
    v100 = sub_1AC30A47C();
    v101 = v10;
    v102 = v11;
    v103 = v12;
    v46 = v97;
    v97[0] = v100;
    v97[1] = v10;
    v98 = v11 & 1;
    v99 = v12;
    v59 = &v105;
    v54 = MEMORY[0x1E6981148];
    v55 = MEMORY[0x1E6981138];
    sub_1AC207B58(v97, MEMORY[0x1E6981148], &v105);
    sub_1AC208038(v46);
    v47 = v105;
    v48 = v106;
    v49 = *(&v106 + 1);
    sub_1AC207E00(v105, *(&v105 + 1), v106 & 1);

    v50 = &v92;
    v92 = v47;
    v93 = v48 & 1 & v57;
    v94 = v49;
    v58 = &v95;
    sub_1AC207B58(&v92, v54, &v95);
    sub_1AC208038(v50);
    v51 = v95;
    v52 = v96;
    v53 = *(&v96 + 1);
    sub_1AC207E00(v95, *(&v95 + 1), v96 & 1);

    v56 = &v84;
    v84 = v51;
    v85 = v52 & 1 & v57;
    v86 = v53;
    sub_1AC207BBC(&v84, v54, v54, v55, v55, &v87);
    sub_1AC208038(v56);
    v61 = v87;
    v62 = v88;
    v63 = v89;
    v64 = v90;
    v60 = v91;
    sub_1AC2F60D8(v87, v88, v89);
    __b[0] = v61;
    __b[1] = v62;
    __b[2] = v63;
    __b[3] = v64;
    LOBYTE(__b[4]) = v60 & 1 & v57;
    sub_1AC208038(v58);
    sub_1AC208038(v59);
    v65 = v61;
    v66 = v62;
    v67 = v63;
    v68 = v64;
    v69 = v60;
  }

  else
  {
    v129[2] = v72;
    v129[3] = v73;
    v129[4] = v81;
    v129[5] = v82;
    v35 = 1;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v21 = sub_1AC215DE8(v79, &unk_1F20FA718);
    v22 = v13;
    (*(v76 + 8))(v79, v75);
    v23 = v129;
    v129[0] = v21;
    v129[1] = v22;
    sub_1AC207FC0();
    v125 = sub_1AC30A47C();
    v126 = v14;
    v127 = v15;
    v128 = v16;
    v24 = v122;
    v122[0] = v125;
    v122[1] = v14;
    v123 = v15 & 1;
    v124 = v16;
    v37 = &v130;
    v32 = MEMORY[0x1E6981148];
    v33 = MEMORY[0x1E6981138];
    sub_1AC207B58(v122, MEMORY[0x1E6981148], &v130);
    sub_1AC208038(v24);
    v25 = v130;
    v26 = v131;
    v27 = *(&v131 + 1);
    sub_1AC207E00(v130, *(&v130 + 1), v131 & 1);

    v28 = &v117;
    v117 = v25;
    v118 = v26 & 1 & v35;
    v119 = v27;
    v36 = &v120;
    sub_1AC207B58(&v117, v32, &v120);
    sub_1AC208038(v28);
    v29 = v120;
    v30 = v121;
    v31 = *(&v121 + 1);
    sub_1AC207E00(v120, *(&v120 + 1), v121 & 1);

    v34 = &v109;
    v109 = v29;
    v110 = v30 & 1 & v35;
    v111 = v31;
    sub_1AC207CB4(&v109, v32, v32, v33, v33, &v112);
    sub_1AC208038(v34);
    v39 = v112;
    v40 = v113;
    v41 = v114;
    v42 = v115;
    v38 = v116;
    sub_1AC2F60D8(v112, v113, v114);
    __b[0] = v39;
    __b[1] = v40;
    __b[2] = v41;
    __b[3] = v42;
    LOBYTE(__b[4]) = v38 & 1 & v35;
    sub_1AC208038(v36);
    sub_1AC208038(v37);
    v65 = v39;
    v66 = v40;
    v67 = v41;
    v68 = v42;
    v69 = v38;
  }

  v20 = v107;
  v107[0] = v65;
  v107[1] = v66;
  v107[2] = v67;
  v107[3] = v68;
  v108 = v69 & 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D1D0);
  sub_1AC2F5A18();
  sub_1AC207B58(v20, v19, v70);
  sub_1AC2F614C(v20);
  return sub_1AC2F614C(__b);
}

uint64_t sub_1AC2F508C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v12 = a7;
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v21 = a3;
  v20 = a4;
  v11 = (*(*(a4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v10 - v11;
  v8(v7);
  return sub_1AC30A75C();
}

uint64_t sub_1AC2F517C(unsigned int a1)
{
  v36 = a1;
  v34 = "Fatal error";
  v35 = "HeadphoneSettingsUI/PressHoldDetailedViewController.swift";
  v49 = 0;
  v37 = sub_1AC30A90C();
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v40 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36);
  v41 = &v18 - v40;
  v49 = v1;
  if (v1)
  {
    switch(v36)
    {
      case 1u:
        v46 = v36;
        sub_1AC30A9DC();
        sub_1AC30A8AC();
        v10 = type metadata accessor for CBPeerUIGestureMode();
        v22 = sub_1AC215DE8(v41, v10);
        v23 = v11;
        (*(v38 + 8))(v41, v37);
        v32 = v22;
        v33 = v23;
        break;
      case 2u:
        v44 = v36;
        sub_1AC30A9DC();
        sub_1AC30A8AC();
        v6 = type metadata accessor for CBPeerUIGestureMode();
        v26 = sub_1AC215DE8(v41, v6);
        v27 = v7;
        (*(v38 + 8))(v41, v37);
        v32 = v26;
        v33 = v27;
        break;
      case 3u:
        v43 = v36;
        sub_1AC30A9DC();
        sub_1AC30A8AC();
        v4 = type metadata accessor for CBPeerUIGestureMode();
        v28 = sub_1AC215DE8(v41, v4);
        v29 = v5;
        (*(v38 + 8))(v41, v37);
        v32 = v28;
        v33 = v29;
        break;
      case 4u:
        v42 = v36;
        sub_1AC30A9DC();
        sub_1AC30A8AC();
        v2 = type metadata accessor for CBPeerUIGestureMode();
        v30 = sub_1AC215DE8(v41, v2);
        v31 = v3;
        (*(v38 + 8))(v41, v37);
        v32 = v30;
        v33 = v31;
        break;
      case 5u:
        v45 = v36;
        sub_1AC30A9DC();
        sub_1AC30A8AC();
        v8 = type metadata accessor for CBPeerUIGestureMode();
        v24 = sub_1AC215DE8(v41, v8);
        v25 = v9;
        (*(v38 + 8))(v41, v37);
        v32 = v24;
        v33 = v25;
        break;
      case 6u:
        v48 = v36;
        sub_1AC30A9DC();
        sub_1AC30A8AC();
        v14 = type metadata accessor for CBPeerUIGestureMode();
        v18 = sub_1AC215DE8(v41, v14);
        v19 = v15;
        (*(v38 + 8))(v41, v37);
        v32 = v18;
        v33 = v19;
        break;
      case 7u:
        v47 = v36;
        sub_1AC30A9DC();
        sub_1AC30A8AC();
        v12 = type metadata accessor for CBPeerUIGestureMode();
        v20 = sub_1AC215DE8(v41, v12);
        v21 = v13;
        (*(v38 + 8))(v41, v37);
        v32 = v20;
        v33 = v21;
        break;
      default:
        sub_1AC27488C();
        sub_1AC30B06C();
        __break(1u);
        break;
    }
  }

  else
  {
    v32 = sub_1AC30A9DC();
    v33 = v16;
  }

  return v32;
}

unint64_t sub_1AC2F57A0()
{
  v2 = qword_1EB54D180;
  if (!qword_1EB54D180)
  {
    sub_1AC3095DC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D180);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2F5834()
{
  v2 = qword_1EB54D1A0;
  if (!qword_1EB54D1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D198);
    sub_1AC2F58DC();
    sub_1AC2F5AB4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D1A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2F58DC()
{
  v2 = qword_1EB54D1A8;
  if (!qword_1EB54D1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D1B0);
    sub_1AC2F5990();
    sub_1AC2F5A18();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D1A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2F5990()
{
  v2 = qword_1EB54D1B8;
  if (!qword_1EB54D1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D1C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D1B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2F5A18()
{
  v2 = qword_1EB54D1C8;
  if (!qword_1EB54D1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D1D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D1C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2F5AB4()
{
  v2 = qword_1EB54D1D8;
  if (!qword_1EB54D1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D1E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D1D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2F5B3C()
{
  v2 = qword_1EB54D1E8;
  if (!qword_1EB54D1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D188);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D1E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2F5BF8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 16) < 0x100000000uLL)
      {
        v3 = *(a1 + 16);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AC2F5D38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1AC2F5F44(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D1B0);
  (*(*(v1 - 8) + 8))(a1);
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D198) + 36);

  MEMORY[0x1E69E5920](*(v3 + 8));
  return a1;
}

uint64_t sub_1AC2F5FF0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D1B0);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D198) + 36);
  v6 = *(a1 + v5);

  *(a2 + v5) = v6;
  v7 = *(a1 + v5 + 8);
  MEMORY[0x1E69E5928](v7);
  result = a2;
  *(a2 + v5 + 8) = v7;
  return result;
}

unint64_t sub_1AC2F6204()
{
  v2 = qword_1EB54D1F0;
  if (!qword_1EB54D1F0)
  {
    sub_1AC309D7C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D1F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2F6284()
{
  v2 = qword_1EB54D1F8;
  if (!qword_1EB54D1F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D1F8);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1AC2F6300(void *a1)
{
  MEMORY[0x1E69E5920](*a1);
}

unint64_t sub_1AC2F634C()
{
  v2 = qword_1EB54D208;
  if (!qword_1EB54D208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D200);
    sub_1AC2F6284();
    sub_1AC2F5AB4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D208);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2F640C()
{
  v1 = sub_1AC309E6C();
  __swift_allocate_value_buffer(v1, qword_1EB553DC8);
  __swift_project_value_buffer(v1, qword_1EB553DC8);
  sub_1AC30A9DC();
  sub_1AC30A9DC();
  return sub_1AC309E5C();
}

uint64_t sub_1AC2F64B0()
{
  if (qword_1EB5534A0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309E6C();
  return __swift_project_value_buffer(v0, qword_1EB553DC8);
}

uint64_t sub_1AC2F651C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC2F64B0();
  v1 = sub_1AC309E6C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC2F65B0()
{
  result = sub_1AC30A9DC();
  qword_1EB5534B0 = result;
  qword_1EB5534B8 = v1;
  return result;
}

uint64_t *sub_1AC2F65F4()
{
  if (qword_1EB5534A8 != -1)
  {
    swift_once();
  }

  return &qword_1EB5534B0;
}

uint64_t static TempPairingFeature.identifier.getter()
{
  v1 = *sub_1AC2F65F4();

  return v1;
}

uint64_t static TempPairingFeature.supported(_:host:)(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v15 = a2;
  v14 = v2;
  sub_1AC30929C();
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D218);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    sub_1AC204664(v7);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  v4 = v12 != 0;
  sub_1AC30915C();
  sub_1AC309A1C();

  type metadata accessor for AAMultiState();
  sub_1AC21B624();
  v5 = sub_1AC30B1BC();
  sub_1AC204664(&v9);
  LOBYTE(v6) = v4;
  HIBYTE(v6) = v5 & 1;
  return v6;
}

uint64_t static TempPairingFeature.specifiers(_:host:)(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v20 = a2;
  v51 = 0;
  v50 = sub_1AC2F6F0C;
  v54 = sub_1AC2F7040;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v44 = 0;
  v39 = sub_1AC30A90C();
  v36 = *(v39 - 8);
  v37 = v39 - 8;
  v16 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v38 = &v16 - v16;
  v33 = sub_1AC30A8EC();
  v31 = *(v33 - 8);
  v32 = v33 - 8;
  v17 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44);
  v35 = &v16 - v17;
  v18 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v16 - v18;
  v19 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v16 - v19;
  v47 = sub_1AC309AAC();
  v45 = *(v47 - 8);
  v46 = v47 - 8;
  v21 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v48 = &v16 - v21;
  v62 = v7;
  v61 = v8;
  v60 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
  v22 = MEMORY[0x1E69A2B08];
  v23 = sub_1AC205220();
  v24 = v9;
  sub_1AC205220();
  v49 = sub_1AC309D3C();
  v28 = 22;
  sub_1AC30A8DC();
  v40 = 1;
  sub_1AC30A9DC();
  v26 = v10;
  sub_1AC30A8CC();

  sub_1AC30956C();
  v27 = v11;
  sub_1AC30A8BC();

  sub_1AC30A9DC();
  v29 = v12;
  sub_1AC30A8CC();

  (*(v31 + 16))(v30, v34, v33);
  (*(v31 + 32))(v35, v30, v33);
  (*(v31 + 8))(v34, v33);
  sub_1AC30A8FC();
  v13 = type metadata accessor for TempPairingFeature();
  v41 = sub_1AC215DE8(v38, v13);
  v42 = v14;
  (*(v36 + 8))(v38, v39);
  v43 = v59;
  memset(v59, 0, sizeof(v59));
  sub_1AC20599C();
  sub_1AC309A9C();
  v52 = sub_1AC309D1C();
  (*(v45 + 8))(v48, v47);

  v55 = sub_1AC309D0C();

  v58 = v53;
  v56 = sub_1AC309CDC();

  v57 = sub_1AC309D2C();

  return v57;
}

uint64_t sub_1AC2F6F0C(void *a1)
{
  v5 = sub_1AC30AB8C();
  v2 = *MEMORY[0x1E69C58C8];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C58C8]);
  sub_1AC30A92C();
  v4 = sub_1AC30A91C();

  [a1 setProperty:v5 forKey:{v4, MEMORY[0x1E69E5920](v2).n128_f64[0]}];
  MEMORY[0x1E69E5920](v4);
  return swift_unknownObjectRelease();
}

double sub_1AC2F6FC0(void *a1)
{
  sub_1AC2F65F4();

  v3 = sub_1AC30A91C();

  [a1 setIdentifier_];
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

uint64_t sub_1AC2F716C()
{
  v0 = sub_1AC30A9DC();
  result = v3;
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  return result;
}

uint64_t B698FeatureContent.marketingName.getter()
{
  v14 = 0;
  v6 = 0;
  v10 = sub_1AC30A90C();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v4 - v5;
  v14 = v0;
  v13 = v0;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v1 = sub_1AC3097BC();
  v11 = sub_1AC215DE8(v9, v1);
  v12 = v2;
  (*(v7 + 8))(v9, v10);
  return v11;
}

uint64_t B698FeatureContent.singularName.getter()
{
  v14 = 0;
  v6 = 0;
  v10 = sub_1AC30A90C();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v4 - v5;
  v14 = v0;
  v13 = v0;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v1 = sub_1AC3097BC();
  v11 = sub_1AC215DE8(v9, v1);
  v12 = v2;
  (*(v7 + 8))(v9, v10);
  return v11;
}

uint64_t B698FeatureContent.platformName.getter()
{
  v14 = 0;
  v6 = 0;
  v10 = sub_1AC30A90C();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v4 - v5;
  v14 = v0;
  v13 = v0;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v1 = sub_1AC3097BC();
  v11 = sub_1AC215DE8(v9, v1);
  v12 = v2;
  (*(v7 + 8))(v9, v10);
  return v11;
}

id sub_1AC2F76DC()
{
  sub_1AC20BE24();
  type metadata accessor for HeadphoneSettingsController();
  result = sub_1AC20BE88();
  qword_1EB553DE0 = result;
  return result;
}

uint64_t *sub_1AC2F7724()
{
  if (qword_1EB553540 != -1)
  {
    swift_once();
  }

  return &qword_1EB553DE0;
}

uint64_t sub_1AC2F7784()
{
  v1 = sub_1AC2F7724();
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x1E69E5928](*v1);
  swift_endAccess();
  return v2;
}

double sub_1AC2F77E4(uint64_t a1)
{
  v3 = sub_1AC2F7724();
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  v1 = *v3;
  *v3 = a1;
  MEMORY[0x1E69E5920](v1);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t (*sub_1AC2F7870())()
{
  sub_1AC2F7724();
  swift_beginAccess();
  return sub_1AC20949C;
}

void *sub_1AC2F78CC@<X0>(void *a1@<X8>)
{
  v26 = sub_1AC30A9DC();
  v21 = v1;
  v22 = sub_1AC2F7B4C();
  v23 = sub_1AC30A9DC();
  v24 = v2;
  sub_1AC20D404();
  v9 = sub_1AC30A9DC();
  v10 = v3;
  v8 = sub_1AC2F7724();
  swift_beginAccess();
  v11 = *v8;
  MEMORY[0x1E69E5928](*v8);
  swift_endAccess();
  v25 = sub_1AC20D468(v9, v10, v11);
  v13 = sub_1AC30A9DC();
  v14 = v4;
  v12 = sub_1AC2F7724();
  swift_beginAccess();
  v15 = *v12;
  MEMORY[0x1E69E5928](*v12);
  swift_endAccess();
  v20 = sub_1AC20D468(v13, v14, v15);
  v17 = sub_1AC30A9DC();
  v18 = v5;
  v16 = sub_1AC2F7724();
  swift_beginAccess();
  v19 = *v16;
  MEMORY[0x1E69E5928](*v16);
  swift_endAccess();
  v6 = sub_1AC20D468(v17, v18, v19);
  sub_1AC216510(v26, v21, v22, v23, v24, 0, 0, v25, v28, v20, v6, 0, sub_1AC20D540, 0);
  return memcpy(a1, v28, 0x60uLL);
}

id sub_1AC2F7B4C()
{
  v146 = 0;
  sub_1AC20D5F4();
  v124 = sub_1AC20D658();
  v145 = v124;
  v113 = 1;
  v0 = sub_1AC30A9DC();
  v48 = v143;
  v114 = MEMORY[0x1E69E6158];
  v144 = MEMORY[0x1E69E6158];
  v143[0] = v0;
  v143[1] = v1;
  v47 = sub_1AC30AC3C();
  v44 = v144;
  v2 = __swift_project_boxed_opaque_existential_1(v143, v144);
  v42 = *(v44 - 8);
  v43 = v44 - 8;
  v41 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v45 = &v41 - v41;
  (*(v42 + 16))(v3);
  v46 = sub_1AC30B19C();
  (*(v42 + 8))(v45, v44);
  v120 = 0x1FB921000uLL;
  [v124 0x1FB921E28];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v48);
  v4 = sub_1AC30A9DC();
  v56 = v141;
  v142 = v114;
  v141[0] = v4;
  v141[1] = v5;
  v55 = sub_1AC30AC3C();
  v52 = v142;
  v6 = __swift_project_boxed_opaque_existential_1(v56, v142);
  v50 = *(v52 - 8);
  v51 = v52 - 8;
  v49 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v53 = &v41 - v49;
  (*(v50 + 16))(v7);
  v54 = sub_1AC30B19C();
  (*(v50 + 8))(v53, v52);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v56);
  v8 = sub_1AC30A9DC();
  v64 = v139;
  v140 = v114;
  v139[0] = v8;
  v139[1] = v9;
  v63 = sub_1AC30AC3C();
  v60 = v140;
  v10 = __swift_project_boxed_opaque_existential_1(v64, v140);
  v58 = *(v60 - 8);
  v59 = v60 - 8;
  v57 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v61 = &v41 - v57;
  (*(v58 + 16))(v11);
  v62 = sub_1AC30B19C();
  (*(v58 + 8))(v61, v60);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v64);
  v12 = sub_1AC30A9DC();
  v72 = v137;
  v138 = v114;
  v137[0] = v12;
  v137[1] = v13;
  v71 = sub_1AC30AC3C();
  v68 = v138;
  v14 = __swift_project_boxed_opaque_existential_1(v72, v138);
  v66 = *(v68 - 8);
  v67 = v68 - 8;
  v65 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v69 = &v41 - v65;
  (*(v66 + 16))(v15);
  v70 = sub_1AC30B19C();
  (*(v66 + 8))(v69, v68);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v72);
  v16 = sub_1AC30A9DC();
  v80 = v135;
  v136 = v114;
  v135[0] = v16;
  v135[1] = v17;
  v79 = sub_1AC30AC3C();
  v76 = v136;
  v18 = __swift_project_boxed_opaque_existential_1(v80, v136);
  v74 = *(v76 - 8);
  v75 = v76 - 8;
  v73 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v77 = &v41 - v73;
  (*(v74 + 16))(v19);
  v78 = sub_1AC30B19C();
  (*(v74 + 8))(v77, v76);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v80);
  v20 = sub_1AC30A9DC();
  v88 = v133;
  v134 = v114;
  v133[0] = v20;
  v133[1] = v21;
  v87 = sub_1AC30AC3C();
  v84 = v134;
  v22 = __swift_project_boxed_opaque_existential_1(v88, v134);
  v82 = *(v84 - 8);
  v83 = v84 - 8;
  v81 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v85 = &v41 - v81;
  (*(v82 + 16))(v23);
  v86 = sub_1AC30B19C();
  (*(v82 + 8))(v85, v84);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v88);
  v24 = sub_1AC30A9DC();
  v96 = v131;
  v132 = v114;
  v131[0] = v24;
  v131[1] = v25;
  v95 = sub_1AC30ABEC();
  v92 = v132;
  v26 = __swift_project_boxed_opaque_existential_1(v96, v132);
  v90 = *(v92 - 8);
  v91 = v92 - 8;
  v89 = (*(v90 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v93 = &v41 - v89;
  (*(v90 + 16))(v27);
  v94 = sub_1AC30B19C();
  (*(v90 + 8))(v93, v92);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v96);
  v28 = sub_1AC30A9DC();
  v104 = v129;
  v130 = v114;
  v129[0] = v28;
  v129[1] = v29;
  v103 = sub_1AC30ABEC();
  v100 = v130;
  v30 = __swift_project_boxed_opaque_existential_1(v104, v130);
  v98 = *(v100 - 8);
  v99 = v100 - 8;
  v97 = (*(v98 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v101 = &v41 - v97;
  (*(v98 + 16))(v31);
  v102 = sub_1AC30B19C();
  (*(v98 + 8))(v101, v100);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v104);
  v32 = sub_1AC30A9DC();
  v112 = v127;
  v128 = v114;
  v127[0] = v32;
  v127[1] = v33;
  v111 = sub_1AC30ABEC();
  v108 = v128;
  v34 = __swift_project_boxed_opaque_existential_1(v112, v128);
  v106 = *(v108 - 8);
  v107 = v108 - 8;
  v105 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v109 = &v41 - v105;
  (*(v106 + 16))(v35);
  v110 = sub_1AC30B19C();
  (*(v106 + 8))(v109, v108);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v112);
  v36 = sub_1AC30A9DC();
  v123 = v125;
  v126 = v114;
  v125[0] = v36;
  v125[1] = v37;
  v122 = sub_1AC30ABEC();
  v118 = v126;
  v38 = __swift_project_boxed_opaque_existential_1(v123, v126);
  v116 = *(v118 - 8);
  v117 = v118 - 8;
  v115 = (*(v116 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = MEMORY[0x1EEE9AC00](v38);
  v119 = &v41 - v115;
  (*(v116 + 16))(v39);
  v121 = sub_1AC30B19C();
  (*(v116 + 8))(v119, v118);
  [v124 (v120 + 3624)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v123);
  return v124;
}

void *sub_1AC2F88F8@<X0>(void *a1@<X8>)
{
  v60 = a1;
  v67 = 0;
  v64 = 0;
  v65 = 0;
  v19 = 0;
  v54 = sub_1AC30A90C();
  v28 = *(v54 - 8);
  v29 = v54 - 8;
  v15 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v53 = &v14 - v15;
  v44 = sub_1AC30A8EC();
  v26 = *(v44 - 8);
  v27 = v44 - 8;
  v16 = (v26[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v14 - v16;
  v17 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v14 - v16);
  v41 = &v14 - v17;
  v18 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v14 - v17);
  v47 = &v14 - v18;
  v67 = v1;

  v49 = sub_1AC3097BC();
  v22 = v66;
  v66[3] = v49;
  v66[4] = &protocol witness table for B698FeatureContent;
  v66[0] = v1;
  v21 = v49;
  v20 = &protocol witness table for B698FeatureContent;
  __swift_project_boxed_opaque_existential_1(v66, v49);
  v35 = (v20[1])(v21);
  v59 = v4;
  v64 = v35;
  v65 = v4;
  __swift_destroy_boxed_opaque_existential_1(v22);
  v24 = &v63;
  v63 = v30;
  v31 = 1;
  sub_1AC30A8DC();
  v32 = "Place ";
  v33 = 6;
  v36 = 1;
  sub_1AC30A9DC();
  v23 = v5;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  sub_1AC30A9DC();
  v25 = v6;
  sub_1AC30A8CC();

  v40 = v26[2];
  v39 = v26 + 2;
  v40(v41, v47, v44);
  v43 = v26[4];
  v42 = v26 + 4;
  v43(v48, v41, v44);
  v46 = v26[1];
  v45 = v26 + 1;
  v46(v47, v44);
  sub_1AC30A8FC();
  v50 = &off_1F20FA790;
  v57 = sub_1AC215DE8(v53, v49);
  v58 = v7;
  v52 = *(v28 + 8);
  v51 = v28 + 8;
  v52(v53, v54);
  v37 = &v62;
  v62 = v30;
  sub_1AC30A8DC();
  sub_1AC30A9DC();
  v34 = v8;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  sub_1AC30A9DC();
  v38 = v9;
  sub_1AC30A8CC();

  v40(v41, v47, v44);
  v43(v48, v41, v44);
  v46(v47, v44);
  sub_1AC30A8FC();
  v55 = sub_1AC215DE8(v53, v49);
  v56 = v10;
  v52(v53, v54);
  v11 = sub_1AC20DD78();
  v61 = &v68;
  sub_1AC236A90(v57, v58, v55, v56, v11, v12, &v68);

  return memcpy(v60, v61, 0x30uLL);
}

uint64_t B698FeatureContent.deviceGenerationSpecificName.getter()
{
  v14 = 0;
  v6 = 0;
  v10 = sub_1AC30A90C();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v4 - v5;
  v14 = v0;
  v13 = v0;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v1 = sub_1AC3097BC();
  v11 = sub_1AC215DE8(v9, v1);
  v12 = v2;
  (*(v7 + 8))(v9, v10);
  return v11;
}

unint64_t B698FeatureContent.hearingFeatureContent.getter@<X0>(void *a1@<X8>)
{

  a1[3] = sub_1AC3097BC();
  result = sub_1AC2F9190();
  a1[4] = result;
  *a1 = v1;
  return result;
}

unint64_t sub_1AC2F9190()
{
  v2 = qword_1EB54D220;
  if (!qword_1EB54D220)
  {
    sub_1AC3097BC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D220);
    return WitnessTable;
  }

  return v2;
}

uint64_t B698FeatureContent.deviceMarketingName.getter()
{
  v6 = v0;

  v4 = sub_1AC3097BC();
  v5 = &protocol witness table for B698FeatureContent;
  v3[0] = v0;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v2 = off_1F20FA778[0]();
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v2;
}

uint64_t B698FeatureContent.devicePlatformName.getter()
{
  v6 = v0;

  v4 = sub_1AC3097BC();
  v5 = &protocol witness table for B698FeatureContent;
  v3[0] = v0;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v2 = off_1F20FA788();
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v2;
}

uint64_t B698FeatureContent.singleDeviceName.getter()
{
  v6 = v0;

  v4 = sub_1AC3097BC();
  v5 = &protocol witness table for B698FeatureContent;
  v3[0] = v0;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v2 = off_1F20FA780[0]();
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v2;
}

uint64_t B698FeatureContent.suggestionFitSymbols.getter@<X0>(uint64_t *a1@<X8>)
{
  v5 = sub_1AC30A9DC();
  v6 = v1;
  v7 = sub_1AC30A9DC();
  v8 = v2;
  result = sub_1AC30A9DC();
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = result;
  a1[5] = v4;
  return result;
}

id B698FeatureContent.faultcheckUnknownImage.getter()
{
  sub_1AC20D404();
  v4 = sub_1AC30A9DC();
  v5 = v0;
  v3 = sub_1AC2F7724();
  swift_beginAccess();
  v6 = *v3;
  MEMORY[0x1E69E5928](*v3);
  swift_endAccess();
  v7 = sub_1AC20D468(v4, v5, v6);
  if (v7)
  {
    return v7;
  }

  sub_1AC30B05C();
  __break(1u);
  return v2;
}

id B698FeatureContent.faultcheckFailedImage.getter()
{
  sub_1AC20D404();
  v4 = sub_1AC30A9DC();
  v5 = v0;
  v3 = sub_1AC2F7724();
  swift_beginAccess();
  v6 = *v3;
  MEMORY[0x1E69E5928](*v3);
  swift_endAccess();
  v7 = sub_1AC20D468(v4, v5, v6);
  if (v7)
  {
    return v7;
  }

  sub_1AC30B05C();
  __break(1u);
  return v2;
}

id B698FeatureContent.occlusionLeftImage.getter()
{
  sub_1AC20D404();
  v4 = sub_1AC30A9DC();
  v5 = v0;
  v3 = sub_1AC2F7724();
  swift_beginAccess();
  v6 = *v3;
  MEMORY[0x1E69E5928](*v3);
  swift_endAccess();
  v7 = sub_1AC20D468(v4, v5, v6);
  if (v7)
  {
    return v7;
  }

  sub_1AC30B05C();
  __break(1u);
  return v2;
}

id B698FeatureContent.occlusionRightImage.getter()
{
  sub_1AC20D404();
  v4 = sub_1AC30A9DC();
  v5 = v0;
  v3 = sub_1AC2F7724();
  swift_beginAccess();
  v6 = *v3;
  MEMORY[0x1E69E5928](*v3);
  swift_endAccess();
  v7 = sub_1AC20D468(v4, v5, v6);
  if (v7)
  {
    return v7;
  }

  sub_1AC30B05C();
  __break(1u);
  return v2;
}

id B698FeatureContent.fitNoiseLeft.getter()
{
  sub_1AC20D404();
  v4 = sub_1AC30A9DC();
  v5 = v0;
  v3 = sub_1AC2F7724();
  swift_beginAccess();
  v6 = *v3;
  MEMORY[0x1E69E5928](*v3);
  swift_endAccess();
  v7 = sub_1AC20D468(v4, v5, v6);
  if (v7)
  {
    return v7;
  }

  sub_1AC30B05C();
  __break(1u);
  return v2;
}

id B698FeatureContent.fitNoiseRight.getter()
{
  sub_1AC20D404();
  v4 = sub_1AC30A9DC();
  v5 = v0;
  v3 = sub_1AC2F7724();
  swift_beginAccess();
  v6 = *v3;
  MEMORY[0x1E69E5928](*v3);
  swift_endAccess();
  v7 = sub_1AC20D468(v4, v5, v6);
  if (v7)
  {
    return v7;
  }

  sub_1AC30B05C();
  __break(1u);
  return v2;
}

uint64_t B698FeatureContent.videoAirPodAdjustBundle.getter()
{
  v1 = sub_1AC2F7724();
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x1E69E5928](*v1);
  swift_endAccess();
  return v2;
}

uint64_t B698FeatureContent.videoAirPodLeftRightBundle.getter()
{
  v1 = sub_1AC2F7724();
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x1E69E5928](*v1);
  swift_endAccess();
  return v2;
}

uint64_t sub_1AC2F9E70@<X0>(void *a1@<X8>)
{
  result = B698FeatureContent.suggestionFitSymbols.getter(v8);
  v2 = v8[1];
  v3 = v8[2];
  v4 = v8[3];
  v5 = v8[4];
  v6 = v8[5];
  *a1 = v8[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  return result;
}

uint64_t B698FeatureContent.getAssetsDictionary.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BC98);
  sub_1AC30B18C();
  return sub_1AC30A83C();
}

uint64_t B698FeatureContent.deviceColor.getter()
{
  v1 = sub_1AC3097AC();
  v2 = sub_1AC30919C();
  MEMORY[0x1E69E5920](v1);
  return v2;
}

UIImage __swiftcall B698FeatureContent.leftImage(isDark:)(Swift::Bool isDark)
{
  sub_1AC30A9DC();
  sub_1AC20D404();
  sub_1AC30B17C();
  v1 = sub_1AC30A9DC();
  MEMORY[0x1AC5B07E0](v1);

  sub_1AC30B15C();
  v2 = sub_1AC30A9DC();
  MEMORY[0x1AC5B07E0](v2);

  sub_1AC2063F0();
  v7 = sub_1AC30A9BC();
  v8 = v3;
  v6 = sub_1AC2F7724();
  swift_beginAccess();
  v9 = *v6;
  MEMORY[0x1E69E5928](*v6);
  swift_endAccess();
  v10 = sub_1AC20D468(v7, v8, v9);
  if (v10)
  {
    v5.super.isa = v10;
  }

  else
  {
    sub_1AC30B05C();
    __break(1u);
  }

  return v5;
}

UIImage __swiftcall B698FeatureContent.rightImage(isDark:)(Swift::Bool isDark)
{
  sub_1AC30A9DC();
  sub_1AC20D404();
  sub_1AC30B17C();
  v1 = sub_1AC30A9DC();
  MEMORY[0x1AC5B07E0](v1);

  sub_1AC30B15C();
  v2 = sub_1AC30A9DC();
  MEMORY[0x1AC5B07E0](v2);

  sub_1AC2063F0();
  v7 = sub_1AC30A9BC();
  v8 = v3;
  v6 = sub_1AC2F7724();
  swift_beginAccess();
  v9 = *v6;
  MEMORY[0x1E69E5928](*v6);
  swift_endAccess();
  v10 = sub_1AC20D468(v7, v8, v9);
  if (v10)
  {
    v5.super.isa = v10;
  }

  else
  {
    sub_1AC30B05C();
    __break(1u);
  }

  return v5;
}

uint64_t B698FeatureContent.featureTitleSettings.getter()
{
  v14 = 0;
  v6 = 0;
  v10 = sub_1AC30A90C();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v4 - v5;
  v14 = v0;
  v13 = v0;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v1 = sub_1AC3097BC();
  v11 = sub_1AC215DE8(v9, v1);
  v12 = v2;
  (*(v7 + 8))(v9, v10);
  return v11;
}

uint64_t B698FeatureContent.featureFooterSettings.getter()
{
  v31 = 0;
  v23 = 0;
  v27 = sub_1AC30A90C();
  v24 = *(v27 - 8);
  v25 = v27 - 8;
  v7 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v26 = &v7 - v7;
  v20 = sub_1AC30A8EC();
  v18 = *(v20 - 8);
  v19 = v20 - 8;
  v10 = *(v18 + 64);
  v8 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v7 - v8;
  v9 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v7 - v8);
  v17 = &v7 - v9;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v7 - v9);
  v21 = &v7 - v11;
  v31 = v0;
  v15 = &v30;
  v30 = v0;
  sub_1AC30A8DC();
  v14 = 1;
  sub_1AC30A9DC();
  v12 = v1;
  sub_1AC30A8CC();

  B698FeatureContent.platformName.getter();
  v13 = v2;
  sub_1AC30A8BC();

  sub_1AC30A9DC();
  v16 = v3;
  sub_1AC30A8CC();

  (*(v18 + 16))(v17, v21, v20);
  (*(v18 + 32))(v22, v17, v20);
  (*(v18 + 8))(v21, v20);
  sub_1AC30A8FC();
  v4 = sub_1AC3097BC();
  v28 = sub_1AC215DE8(v26, v4);
  v29 = v5;
  (*(v24 + 8))(v26, v27);
  return v28;
}

uint64_t sub_1AC2FAC74()
{
  v55 = 0;
  v52 = 0;
  v53 = 0;
  v22 = 0;
  v40 = sub_1AC30A90C();
  v31 = *(v40 - 8);
  v32 = v40 - 8;
  v12 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v39 = &v12 - v12;
  v28 = sub_1AC30A8EC();
  v26 = *(v28 - 8);
  v27 = v28 - 8;
  v13 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v12 - v13;
  v14 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v12 - v13);
  v25 = &v12 - v14;
  v15 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v12 - v14);
  v29 = &v12 - v15;
  v55 = v0;

  v35 = sub_1AC3097BC();
  v18 = v54;
  v54[3] = v35;
  v54[4] = &protocol witness table for B698FeatureContent;
  v54[0] = v0;
  v17 = v35;
  v16 = &protocol witness table for B698FeatureContent;
  __swift_project_boxed_opaque_existential_1(v54, v35);
  v21 = (v16[3])(v17);
  v45 = v3;
  v52 = v21;
  v53 = v3;
  __swift_destroy_boxed_opaque_existential_1(v18);
  v23 = &v51;
  v51 = v33;
  v19 = 15;
  sub_1AC30A8DC();
  v34 = 1;
  sub_1AC30A9DC();
  v20 = v4;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  sub_1AC30A9DC();
  v24 = v5;
  sub_1AC30A8CC();

  (*(v26 + 16))(v25, v29, v28);
  (*(v26 + 32))(v30, v25, v28);
  (*(v26 + 8))(v29, v28);
  sub_1AC30A8FC();
  v36 = &off_1F20FA790;
  v41 = sub_1AC215DE8(v39, v35);
  v42 = v6;
  v38 = *(v31 + 8);
  v37 = v31 + 8;
  v38(v39, v40);
  v50 = v33;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v43 = sub_1AC215DE8(v39, v35);
  v44 = v7;
  v38(v39, v40);
  v46 = nullsub_1(v41);
  v47 = v8;
  v48 = v9;
  v49 = v10;

  return v46;
}

uint64_t sub_1AC2FB198()
{
  v7 = v0;

  v5 = sub_1AC3097BC();
  v6 = &protocol witness table for B698FeatureContent;
  v4[0] = v0;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v1 = off_1F20FA788();
  v3 = nullsub_1(v1);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v3;
}

_BYTE *sub_1AC2FB270()
{
  v62 = 0;
  v59 = 0;
  v60 = 0;
  v19 = 0;
  v50 = sub_1AC30A90C();
  v25 = *(v50 - 8);
  v26 = v50 - 8;
  v12 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v49 = &v11 - v12;
  v39 = sub_1AC30A8EC();
  v23 = *(v39 - 8);
  v24 = v39 - 8;
  v13 = (v23[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v11 - v13;
  v14 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v13);
  v36 = &v11 - v14;
  v15 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v14);
  v42 = &v11 - v15;
  v62 = v0;

  v44 = sub_1AC3097BC();
  v18 = v61;
  v61[3] = v44;
  v61[4] = &protocol witness table for B698FeatureContent;
  v61[0] = v0;
  v17 = v44;
  v16 = &protocol witness table for B698FeatureContent;
  __swift_project_boxed_opaque_existential_1(v61, v44);
  v30 = (v16[3])(v17);
  v55 = v3;
  v59 = v30;
  v60 = v3;
  __swift_destroy_boxed_opaque_existential_1(v18);
  v46 = type metadata accessor for SpatialFeatureContent();
  v21 = &v58;
  v58 = v27;
  v28 = 1;
  sub_1AC30A8DC();
  v31 = 1;
  sub_1AC30A9DC();
  v20 = v4;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  sub_1AC30A9DC();
  v22 = v5;
  sub_1AC30A8CC();

  v35 = v23[2];
  v34 = v23 + 2;
  v35(v36, v42, v39);
  v38 = v23[4];
  v37 = v23 + 4;
  v38(v43, v36, v39);
  v41 = v23[1];
  v40 = v23 + 1;
  v41(v42, v39);
  sub_1AC30A8FC();
  v45 = &off_1F20FA790;
  v51 = sub_1AC215DE8(v49, v44);
  v52 = v6;
  v48 = *(v25 + 8);
  v47 = v25 + 8;
  v48(v49, v50);
  v32 = &v57;
  v57 = v27;
  sub_1AC30A8DC();
  sub_1AC30A9DC();
  v29 = v7;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  sub_1AC30A9DC();
  v33 = v8;
  sub_1AC30A8CC();

  v35(v36, v42, v39);
  v38(v43, v36, v39);
  v41(v42, v39);
  sub_1AC30A8FC();
  v53 = sub_1AC215DE8(v49, v44);
  v54 = v9;
  v48(v49, v50);
  v56 = SpatialFeatureContent.__allocating_init(removeString:putInEarString:forceFitTest:)(v51, v52, v53, v54, 0);

  return v56;
}

uint64_t sub_1AC2FB908@<X0>(uint64_t a1@<X8>)
{
  v9 = a1;
  v10 = "Fatal error";
  v11 = "Unexpectedly found nil while unwrapping an Optional value";
  v12 = "HeadphoneSettingsUI/B698FeaturesProvider.swift";
  v30 = 0;
  v13 = sub_1AC30901C();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v8 - v16;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCA0);
  v18 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v19 = v8 - v18;
  v30 = v1;
  v20 = sub_1AC290274();
  v21 = &v29;
  swift_beginAccess();
  v27 = *v20;
  MEMORY[0x1E69E5928](v27);
  swift_endAccess();
  v23 = 1;
  sub_1AC30A9DC();
  v22 = v3;
  v26 = sub_1AC30A91C();

  sub_1AC30A9DC();
  v24 = v4;
  v25 = sub_1AC30A91C();

  v28 = [v27 URLForResource:v26 withExtension:v25];
  MEMORY[0x1E69E5920](v25);
  MEMORY[0x1E69E5920](v26);
  v5 = MEMORY[0x1E69E5920](v27);
  if (v28)
  {
    v8[1] = v28;
    v8[0] = v28;
    sub_1AC308FFC();
    (*(v14 + 32))(v19, v17, v13);
    (*(v14 + 56))(v19, 0, 1, v13);
    v6 = MEMORY[0x1E69E5920](v8[0]);
  }

  else
  {
    (*(v14 + 56))(v19, 1, 1, v13, v5);
  }

  if ((*(v14 + 48))(v19, 1, v13, v6) == 1)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  return (*(v14 + 32))(v9, v19, v13);
}

unint64_t sub_1AC2FBD00()
{
  v2 = qword_1EB54D228;
  if (!qword_1EB54D228)
  {
    sub_1AC3097BC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D228);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2FBDCC()
{
  v2 = qword_1EB54D230;
  if (!qword_1EB54D230)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D230);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2FBE64(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1AC2FC0D0(a1, a2);
  sub_1AC2FC0D0(a3, a4);
  v10 = a2 >> 61;
  switch(v10)
  {
    case 0:
      if (!(a4 >> 61))
      {
        goto LABEL_25;
      }

      goto LABEL_26;
    case 1:
      if (((a4 >> 61) & 7) == 1)
      {
        goto LABEL_25;
      }

      goto LABEL_26;
    case 2:
      if (((a4 >> 61) & 7) == 2)
      {
        goto LABEL_25;
      }

      goto LABEL_26;
    case 3:
      if (((a4 >> 61) & 7) == 3)
      {
        goto LABEL_25;
      }

      goto LABEL_26;
  }

  if (v10 != 4)
  {
    if (((a4 >> 61) & 7) == 5)
    {
      goto LABEL_25;
    }

LABEL_26:
    sub_1AC209AEC(a1, a2);
    sub_1AC209AEC(a3, a4);
    v5 = 0;
    return v5 & 1;
  }

  if (((a4 >> 61) & 7) != 4)
  {
    goto LABEL_26;
  }

LABEL_25:
  sub_1AC209AEC(a1, a2);
  sub_1AC209AEC(a3, a4);
  v5 = 1;
  return v5 & 1;
}

uint64_t sub_1AC2FC0D0(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 61) & 7) == 1)
  {
    return MEMORY[0x1E69E5928](a2 & 0x1FFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t sub_1AC2FC11C(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  v21 = 0;
  v22 = 0;
  v11 = sub_1AC30A90C();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v7 - v14;
  v21 = v2;
  v22 = v3;
  v16 = v3 >> 61;
  if (v16 < 2)
  {
    v19 = sub_1AC30A9DC();
    v20 = v4;
  }

  else
  {
    v17 = v10;
    v18 = v9;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v7 = sub_1AC215DE8(v15, &unk_1F20FAB00);
    v8 = v5;
    (*(v12 + 8))(v15, v11);
    v19 = v7;
    v20 = v8;
  }

  return v19;
}

uint64_t sub_1AC2FC2CC(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v24 = a2;
  v45 = 0;
  v46 = 0;
  v34 = 0;
  v26 = sub_1AC30A90C();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v30 = &v11 - v29;
  v45 = v2;
  v46 = v3;
  v31 = v3 >> 61;
  if (v31)
  {
    switch(v31)
    {
      case 1:
        v23 = v24 & 0x1FFFFFFFFFFFFFFFLL;
        v20 = v24 & 0x1FFFFFFFFFFFFFFFLL;
        MEMORY[0x1E69E5928](v24 & 0x1FFFFFFFFFFFFFFFLL);
        v34 = v20;
        v43 = sub_1AC2FC7B4(v20, v25, v24);
        v44 = v5;
        MEMORY[0x1E69E5920](v20);
        break;
      case 2:
        v35 = v25;
        v36 = v24;
        sub_1AC30A9DC();
        sub_1AC30A8AC();
        v18 = sub_1AC215DE8(v30, &unk_1F20FAB00);
        v19 = v6;
        (*(v27 + 8))(v30, v26);
        v43 = v18;
        v44 = v19;
        break;
      case 3:
        v37 = v25;
        v38 = v24;
        sub_1AC30A9DC();
        sub_1AC30A8AC();
        v16 = sub_1AC215DE8(v30, &unk_1F20FAB00);
        v17 = v7;
        (*(v27 + 8))(v30, v26);
        v43 = v16;
        v44 = v17;
        break;
      case 4:
        v39 = v25;
        v40 = v24;
        sub_1AC30A9DC();
        sub_1AC30A8AC();
        v14 = sub_1AC215DE8(v30, &unk_1F20FAB00);
        v15 = v8;
        (*(v27 + 8))(v30, v26);
        v43 = v14;
        v44 = v15;
        break;
      default:
        v41 = v25;
        v42 = v24;
        sub_1AC30A9DC();
        sub_1AC30A8AC();
        v12 = sub_1AC215DE8(v30, &unk_1F20FAB00);
        v13 = v9;
        (*(v27 + 8))(v30, v26);
        v43 = v12;
        v44 = v13;
        break;
    }
  }

  else
  {
    v32 = v25;
    v33 = v24;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v21 = sub_1AC215DE8(v30, &unk_1F20FAB00);
    v22 = v4;
    (*(v27 + 8))(v30, v26);
    v43 = v21;
    v44 = v22;
  }

  return v43;
}

uint64_t sub_1AC2FC7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  v8[2] = a2;
  v8[1] = a3;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  v17 = 0;
  v18 = 0;
  v14 = sub_1AC30A90C();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v10 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v13 = v8 - v10;
  v23 = v3;
  v21 = v4;
  v22 = v5;
  v19 = v4;
  v20 = v5;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v15 = sub_1AC215DE8(v13, &unk_1F20FAB00);
  v16 = v6;
  (*(v11 + 8))(v13, v14);
  return v15;
}

uint64_t sub_1AC2FC988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v185 = &v244;
  v184 = a3;
  v187 = a1;
  v186 = a2;
  v350 = 0;
  v351 = 0;
  memset(__b, 0, 0x23uLL);
  v347 = 0u;
  v348 = 0u;
  v337 = 0u;
  v338 = 0u;
  v316 = 0u;
  v317 = 0u;
  v306 = 0u;
  v307 = 0u;
  v288 = 0u;
  v289 = 0u;
  v278 = 0u;
  v279 = 0u;
  v254 = 0u;
  v255 = 0u;
  v244 = 0u;
  v245 = 0u;
  v188 = sub_1AC30A90C();
  v189 = *(v188 - 8);
  v190 = v188 - 8;
  v191 = (*(v189 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v187);
  v192 = &v28 - v191;
  v350 = v3;
  v351 = v4;
  v193 = v4 >> 61;
  if (v193)
  {
    switch(v193)
    {
      case 1:
        sub_1AC30A77C();
        v145 = MEMORY[0x1E6981E70];
        v146 = MEMORY[0x1E6981E60];
        sub_1AC207B58(v161, MEMORY[0x1E6981E70], v161);
        sub_1AC207B58(v161, v145, v161);
        sub_1AC207CB4(v161, v145, v145, v146, v146, &v212);
        v149 = &v211;
        v154 = 1;
        v211 = v212 & 1;
        v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D250);
        v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D1D0);
        v148 = sub_1AC2FDF68();
        v152 = sub_1AC2F5A18();
        sub_1AC207BBC(v149, v147, v151, v148, v152, v213);
        v153 = v208;
        v208[0] = v213[0];
        v208[1] = v213[1];
        v208[2] = v213[2];
        v208[3] = v213[3];
        v209 = v214;
        v210 = v215 & 1 & v154;
        v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D238);
        v6 = sub_1AC2FDEC0();
        sub_1AC207BBC(v153, v150, v151, v6, v152, &v216);
        sub_1AC2FE2A4(v153);
        v156 = v216;
        v157 = v217;
        v158 = v218;
        v159 = v219;
        v160 = v220;
        v155 = v221;
        sub_1AC2FE004(v216, v217, v218, v219, v220, v221 & 1);
        __b[0] = v156;
        __b[1] = v157;
        __b[2] = v158;
        __b[3] = v159;
        LOWORD(__b[4]) = v160;
        BYTE2(__b[4]) = v155 & 1 & v154;
        v178 = v156;
        v179 = v157;
        v180 = v158;
        v181 = v159;
        v182 = v160;
        v183 = v155;
        break;
      case 2:
        v253[2] = v187;
        v253[3] = v186;
        v136 = 1;
        sub_1AC30A9DC();
        sub_1AC30A8AC();
        v115 = sub_1AC215DE8(v192, &unk_1F20FAB00);
        v116 = v7;
        (*(v189 + 8))(v192, v188);
        v117 = v253;
        v253[0] = v115;
        v253[1] = v116;
        sub_1AC207FC0();
        v249 = sub_1AC30A47C();
        v250 = v8;
        v251 = v9;
        v252 = v10;
        v118 = v246;
        v246[0] = v249;
        v246[1] = v8;
        v247 = v9 & 1;
        v248 = v10;
        v138 = &v254;
        v126 = MEMORY[0x1E6981148];
        v127 = MEMORY[0x1E6981138];
        sub_1AC207B58(v246, MEMORY[0x1E6981148], &v254);
        sub_1AC208038(v118);
        v119 = v254;
        v120 = v255;
        v121 = *(&v255 + 1);
        sub_1AC207E00(v254, *(&v254 + 1), v255 & 1);

        v122 = &v241;
        v241 = v119;
        v242 = v120 & 1 & v136;
        v243 = v121;
        v137 = &v244;
        sub_1AC207B58(&v241, v126, &v244);
        sub_1AC208038(v122);
        v123 = v244;
        v124 = v245;
        v125 = *(&v245 + 1);
        sub_1AC207E00(v244, *(&v244 + 1), v245 & 1);

        v128 = &v227;
        v227 = v123;
        v228 = v124 & 1 & v136;
        v229 = v125;
        sub_1AC207BBC(&v227, v126, v126, v127, v127, v230);
        sub_1AC208038(v128);
        v131 = v225;
        v225[0] = v230[0];
        v225[1] = v230[1];
        v225[2] = v230[2];
        v225[3] = v230[3];
        v226 = v231 & 1 & v136;
        v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D250);
        v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D1D0);
        v130 = sub_1AC2FDF68();
        v134 = sub_1AC2F5A18();
        sub_1AC207CB4(v131, v129, v133, v130, v134, v232);
        sub_1AC2F614C(v131);
        v135 = v222;
        v222[0] = v232[0];
        v222[1] = v232[1];
        v222[2] = v232[2];
        v222[3] = v232[3];
        v223 = v233;
        v224 = v234 & 1 & v136;
        v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D238);
        v11 = sub_1AC2FDEC0();
        sub_1AC207BBC(v135, v132, v133, v11, v134, &v235);
        sub_1AC2FE2A4(v135);
        v140 = v235;
        v141 = v236;
        v142 = v237;
        v143 = v238;
        v144 = v239;
        v139 = v240;
        sub_1AC2FE004(v235, v236, v237, v238, v239, v240 & 1);
        __b[0] = v140;
        __b[1] = v141;
        __b[2] = v142;
        __b[3] = v143;
        LOWORD(__b[4]) = v144;
        BYTE2(__b[4]) = v139 & 1 & v136;
        sub_1AC208038(v137);
        sub_1AC208038(v138);
        v178 = v140;
        v179 = v141;
        v180 = v142;
        v181 = v143;
        v182 = v144;
        v183 = v139;
        break;
      case 3:
        v287[2] = v187;
        v287[3] = v186;
        v106 = 1;
        sub_1AC30A9DC();
        sub_1AC30A8AC();
        v85 = sub_1AC215DE8(v192, &unk_1F20FAB00);
        v86 = v12;
        (*(v189 + 8))(v192, v188);
        v87 = v287;
        v287[0] = v85;
        v287[1] = v86;
        sub_1AC207FC0();
        v283 = sub_1AC30A47C();
        v284 = v13;
        v285 = v14;
        v286 = v15;
        v88 = v280;
        v280[0] = v283;
        v280[1] = v13;
        v281 = v14 & 1;
        v282 = v15;
        v108 = &v288;
        v96 = MEMORY[0x1E6981148];
        v97 = MEMORY[0x1E6981138];
        sub_1AC207B58(v280, MEMORY[0x1E6981148], &v288);
        sub_1AC208038(v88);
        v89 = v288;
        v90 = v289;
        v91 = *(&v289 + 1);
        sub_1AC207E00(v288, *(&v288 + 1), v289 & 1);

        v92 = &v275;
        v275 = v89;
        v276 = v90 & 1 & v106;
        v277 = v91;
        v107 = &v278;
        sub_1AC207B58(&v275, v96, &v278);
        sub_1AC208038(v92);
        v93 = v278;
        v94 = v279;
        v95 = *(&v279 + 1);
        sub_1AC207E00(v278, *(&v278 + 1), v279 & 1);

        v98 = &v261;
        v261 = v93;
        v262 = v94 & 1 & v106;
        v263 = v95;
        sub_1AC207CB4(&v261, v96, v96, v97, v97, v264);
        sub_1AC208038(v98);
        v101 = v259;
        v259[0] = v264[0];
        v259[1] = v264[1];
        v259[2] = v264[2];
        v259[3] = v264[3];
        v260 = v265 & 1 & v106;
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D250);
        v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D1D0);
        v100 = sub_1AC2FDF68();
        v104 = sub_1AC2F5A18();
        sub_1AC207CB4(v101, v99, v103, v100, v104, v266);
        sub_1AC2F614C(v101);
        v105 = v256;
        v256[0] = v266[0];
        v256[1] = v266[1];
        v256[2] = v266[2];
        v256[3] = v266[3];
        v257 = v267;
        v258 = v268 & 1 & v106;
        v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D238);
        v16 = sub_1AC2FDEC0();
        sub_1AC207BBC(v105, v102, v103, v16, v104, &v269);
        sub_1AC2FE2A4(v105);
        v110 = v269;
        v111 = v270;
        v112 = v271;
        v113 = v272;
        v114 = v273;
        v109 = v274;
        sub_1AC2FE004(v269, v270, v271, v272, v273, v274 & 1);
        __b[0] = v110;
        __b[1] = v111;
        __b[2] = v112;
        __b[3] = v113;
        LOWORD(__b[4]) = v114;
        BYTE2(__b[4]) = v109 & 1 & v106;
        sub_1AC208038(v107);
        sub_1AC208038(v108);
        v178 = v110;
        v179 = v111;
        v180 = v112;
        v181 = v113;
        v182 = v114;
        v183 = v109;
        break;
      case 4:
        v315[2] = v187;
        v315[3] = v186;
        v76 = 1;
        sub_1AC30A9DC();
        sub_1AC30A8AC();
        v58 = sub_1AC215DE8(v192, &unk_1F20FAB00);
        v59 = v17;
        (*(v189 + 8))(v192, v188);
        v60 = v315;
        v315[0] = v58;
        v315[1] = v59;
        sub_1AC207FC0();
        v311 = sub_1AC30A47C();
        v312 = v18;
        v313 = v19;
        v314 = v20;
        v61 = v308;
        v308[0] = v311;
        v308[1] = v18;
        v309 = v19 & 1;
        v310 = v20;
        v78 = &v316;
        v69 = MEMORY[0x1E6981148];
        v70 = MEMORY[0x1E6981138];
        sub_1AC207B58(v308, MEMORY[0x1E6981148], &v316);
        sub_1AC208038(v61);
        v62 = v316;
        v63 = v317;
        v64 = *(&v317 + 1);
        sub_1AC207E00(v316, *(&v316 + 1), v317 & 1);

        v65 = &v303;
        v303 = v62;
        v304 = v63 & 1 & v76;
        v305 = v64;
        v77 = &v306;
        sub_1AC207B58(&v303, v69, &v306);
        sub_1AC208038(v65);
        v66 = v306;
        v67 = v307;
        v68 = *(&v307 + 1);
        sub_1AC207E00(v306, *(&v306 + 1), v307 & 1);

        v71 = &v292;
        v292 = v66;
        v293 = v67 & 1 & v76;
        v294 = v68;
        sub_1AC207BBC(&v292, v69, v69, v70, v70, v295);
        sub_1AC208038(v71);
        v75 = v290;
        v290[0] = v295[0];
        v290[1] = v295[1];
        v290[2] = v295[2];
        v290[3] = v295[3];
        v291 = v296 & 1 & v76;
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D238);
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D1D0);
        v74 = sub_1AC2FDEC0();
        v21 = sub_1AC2F5A18();
        sub_1AC207CB4(v75, v72, v73, v74, v21, &v297);
        sub_1AC2F614C(v75);
        v80 = v297;
        v81 = v298;
        v82 = v299;
        v83 = v300;
        v84 = v301;
        v79 = v302;
        sub_1AC2FE004(v297, v298, v299, v300, v301, v302 & 1);
        __b[0] = v80;
        __b[1] = v81;
        __b[2] = v82;
        __b[3] = v83;
        LOWORD(__b[4]) = v84;
        BYTE2(__b[4]) = v79 & 1 & v76;
        sub_1AC208038(v77);
        sub_1AC208038(v78);
        v178 = v80;
        v179 = v81;
        v180 = v82;
        v181 = v83;
        v182 = v84;
        v183 = v79;
        break;
      default:
        v346[2] = v187;
        v346[3] = v186;
        v49 = 1;
        sub_1AC30A9DC();
        sub_1AC30A8AC();
        v31 = sub_1AC215DE8(v192, &unk_1F20FAB00);
        v32 = v22;
        (*(v189 + 8))(v192, v188);
        v33 = v346;
        v346[0] = v31;
        v346[1] = v32;
        sub_1AC207FC0();
        v342 = sub_1AC30A47C();
        v343 = v23;
        v344 = v24;
        v345 = v25;
        v34 = v339;
        v339[0] = v342;
        v339[1] = v23;
        v340 = v24 & 1;
        v341 = v25;
        v51 = &v347;
        v42 = MEMORY[0x1E6981148];
        v43 = MEMORY[0x1E6981138];
        sub_1AC207B58(v339, MEMORY[0x1E6981148], &v347);
        sub_1AC208038(v34);
        v35 = v347;
        v36 = v348;
        v37 = *(&v348 + 1);
        sub_1AC207E00(v347, *(&v347 + 1), v348 & 1);

        v38 = &v334;
        v334 = v35;
        v335 = v36 & 1 & v49;
        v336 = v37;
        v50 = &v337;
        sub_1AC207B58(&v334, v42, &v337);
        sub_1AC208038(v38);
        v39 = v337;
        v40 = v338;
        v41 = *(&v338 + 1);
        sub_1AC207E00(v337, *(&v337 + 1), v338 & 1);

        v44 = &v323;
        v323 = v39;
        v324 = v40 & 1 & v49;
        v325 = v41;
        sub_1AC207CB4(&v323, v42, v42, v43, v43, v326);
        sub_1AC208038(v44);
        v48 = v321;
        v321[0] = v326[0];
        v321[1] = v326[1];
        v321[2] = v326[2];
        v321[3] = v326[3];
        v322 = v327 & 1 & v49;
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D238);
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D1D0);
        v47 = sub_1AC2FDEC0();
        v26 = sub_1AC2F5A18();
        sub_1AC207CB4(v48, v45, v46, v47, v26, &v328);
        sub_1AC2F614C(v48);
        v53 = v328;
        v54 = v329;
        v55 = v330;
        v56 = v331;
        v57 = v332;
        v52 = v333;
        sub_1AC2FE004(v328, v329, v330, v331, v332, v333 & 1);
        __b[0] = v53;
        __b[1] = v54;
        __b[2] = v55;
        __b[3] = v56;
        LOWORD(__b[4]) = v57;
        BYTE2(__b[4]) = v52 & 1 & v49;
        sub_1AC208038(v50);
        sub_1AC208038(v51);
        v178 = v53;
        v179 = v54;
        v180 = v55;
        v181 = v56;
        v182 = v57;
        v183 = v52;
        break;
    }
  }

  else
  {
    sub_1AC30A77C();
    v162 = MEMORY[0x1E6981E70];
    v163 = MEMORY[0x1E6981E60];
    sub_1AC207B58(v161, MEMORY[0x1E6981E70], v161);
    sub_1AC207B58(v161, v162, v161);
    sub_1AC207BBC(v161, v162, v162, v163, v163, &v198);
    v166 = &v197;
    v171 = 1;
    v197 = v198 & 1;
    v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D250);
    v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D1D0);
    v165 = sub_1AC2FDF68();
    v169 = sub_1AC2F5A18();
    sub_1AC207BBC(v166, v164, v168, v165, v169, v199);
    v170 = v194;
    v194[0] = v199[0];
    v194[1] = v199[1];
    v194[2] = v199[2];
    v194[3] = v199[3];
    v195 = v200;
    v196 = v201 & 1 & v171;
    v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D238);
    v5 = sub_1AC2FDEC0();
    sub_1AC207BBC(v170, v167, v168, v5, v169, &v202);
    sub_1AC2FE2A4(v170);
    v173 = v202;
    v174 = v203;
    v175 = v204;
    v176 = v205;
    v177 = v206;
    v172 = v207;
    sub_1AC2FE004(v202, v203, v204, v205, v206, v207 & 1);
    __b[0] = v173;
    __b[1] = v174;
    __b[2] = v175;
    __b[3] = v176;
    LOWORD(__b[4]) = v177;
    BYTE2(__b[4]) = v172 & 1 & v171;
    v178 = v173;
    v179 = v174;
    v180 = v175;
    v181 = v176;
    v182 = v177;
    v183 = v172;
  }

  v30 = v318;
  v318[0] = v178;
  v318[1] = v179;
  v318[2] = v180;
  v318[3] = v181;
  v319 = v182;
  v320 = v183 & 1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D258);
  sub_1AC2FE0DC();
  sub_1AC207B58(v30, v29, v184);
  sub_1AC2FE184(v30);
  return sub_1AC2FE184(__b);
}

unint64_t sub_1AC2FDEC0()
{
  v2 = qword_1EB54D240;
  if (!qword_1EB54D240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D238);
    sub_1AC2FDF68();
    sub_1AC2F5A18();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D240);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2FDF68()
{
  v2 = qword_1EB54D248;
  if (!qword_1EB54D248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D250);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D248);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2FE004(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unsigned int a5, char a6)
{
  if (a6)
  {
    return sub_1AC2F60D8(a1, a2, a3);
  }

  else
  {
    return sub_1AC2FE084(a1, a2, a3, a4, a5, BYTE1(a5) & 1);
  }
}

uint64_t sub_1AC2FE084(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_1AC2F60D8(result, a2, a3);
  }

  return result;
}

unint64_t sub_1AC2FE0DC()
{
  v2 = qword_1EB54D260;
  if (!qword_1EB54D260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D258);
    sub_1AC2FDEC0();
    sub_1AC2F5A18();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D260);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2FE1CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unsigned int a5, char a6)
{
  if (a6)
  {
    return sub_1AC2F6190(a1, a2, a3);
  }

  else
  {
    return sub_1AC2FE24C(a1, a2, a3, a4, a5, BYTE1(a5) & 1);
  }
}

uint64_t sub_1AC2FE24C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_1AC2F6190(result, a2, a3);
  }

  return result;
}

uint64_t sub_1AC2FE2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v156 = a3;
  v158 = a1;
  v157 = a2;
  v270 = 0;
  v271 = 0;
  memset(v269, 0, 19);
  v268 = 0;
  v266 = 0;
  v252 = 0;
  v250 = 0;
  v239 = 0;
  v237 = 0;
  v159 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CEA8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v158);
  v160 = &v22 - v159;
  v270 = v3;
  v271 = v4;
  v161 = v4 >> 61;
  if (v161)
  {
    switch(v161)
    {
      case 1:
        sub_1AC30A77C();
        v121 = MEMORY[0x1E6981E70];
        v122 = MEMORY[0x1E6981E60];
        sub_1AC207B58(v136, MEMORY[0x1E6981E70], v136);
        sub_1AC207B58(v136, v121, v136);
        sub_1AC207CB4(v136, v121, v121, v122, v122, &v178);
        v126 = &v177;
        v131 = 1;
        v177 = v178 & 1;
        v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D250);
        v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D288);
        v125 = sub_1AC2FDF68();
        v7 = sub_1AC2FF45C();
        sub_1AC207BBC(v126, v123, v124, v125, v7, v179);
        v130 = v174;
        v174[0] = v179[0];
        v174[1] = v179[1];
        v175 = v180;
        v176 = v181 & 1 & v131;
        v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D268);
        v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D270);
        v129 = sub_1AC2FF3B4();
        v8 = sub_1AC2FF62C();
        sub_1AC207BBC(v130, v127, v128, v129, v8, &v182);
        sub_1AC2FF9B4(v130);
        v133 = v182;
        v134 = v183;
        v135 = v184;
        v132 = v185;
        sub_1AC2FF6C8(v182, v183, v184, v185 & 1);
        v269[0] = v133;
        v269[1] = v134;
        LOWORD(v269[2]) = v135;
        BYTE2(v269[2]) = v132 & 1 & v131;
        v152 = v133;
        v153 = v134;
        v154 = v135;
        v155 = v132;
        break;
      case 2:
        v114 = 1;
        sub_1AC30A9DC();
        v89 = sub_1AC30A66C();
        sub_1AC30A24C();
        v9 = sub_1AC30A25C();
        (*(*(v9 - 8) + 56))(v160, 0, v114);
        v90 = sub_1AC30A67C();
        sub_1AC2D11E8(v160);

        v92 = &v214;
        v214 = v90;
        v10 = sub_1AC2FF9F4();
        v91 = &v213;
        v213 = v10;
        v212 = sub_1AC2FFA0C();
        v102 = MEMORY[0x1E6981748];
        v104 = MEMORY[0x1E6981710];
        MEMORY[0x1AC5AFB80](&v215, v91, &v212);
        sub_1AC20BCE0();
        v93 = &v209;
        v209 = v215;
        v210 = v216;
        v211 = v217;
        v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D298);
        v103 = sub_1AC2FF500();
        v116 = &v218;
        sub_1AC207B58(v93, v101, &v218);
        sub_1AC20BCE0();
        v94 = v218;
        v95 = v219;
        v96 = v220;

        v97 = &v203;
        v203 = v94;
        v204 = v95;
        v205 = v96;
        v115 = &v206;
        sub_1AC207B58(&v203, v101, &v206);
        sub_1AC20BCE0();
        v98 = v206;
        v99 = v207;
        v100 = v208;

        v105 = &v191;
        v191 = v98;
        v192 = v99;
        v193 = v100;
        sub_1AC207BBC(&v191, v101, v102, v103, v104, v194);
        sub_1AC20BCE0();
        v109 = v189;
        v189[0] = v194[0];
        v189[1] = v194[1];
        v190 = v195 & 1 & v114;
        v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D250);
        v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D288);
        v108 = sub_1AC2FDF68();
        v11 = sub_1AC2FF45C();
        sub_1AC207CB4(v109, v106, v107, v108, v11, v196);
        sub_1AC2FF978();
        v113 = v186;
        v186[0] = v196[0];
        v186[1] = v196[1];
        v187 = v197;
        v188 = v198 & 1 & v114;
        v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D268);
        v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D270);
        v112 = sub_1AC2FF3B4();
        v12 = sub_1AC2FF62C();
        sub_1AC207BBC(v113, v110, v111, v112, v12, &v199);
        sub_1AC2FF9B4(v113);
        v118 = v199;
        v119 = v200;
        v120 = v201;
        v117 = v202;
        sub_1AC2FF6C8(v199, v200, v201, v202 & 1);
        v269[0] = v118;
        v269[1] = v119;
        LOWORD(v269[2]) = v120;
        BYTE2(v269[2]) = v117 & 1 & v114;
        sub_1AC20BCE0();
        sub_1AC20BCE0();
        v152 = v118;
        v153 = v119;
        v154 = v120;
        v155 = v117;
        break;
      case 3:
        v82 = 1;
        sub_1AC30A9DC();
        v64 = sub_1AC30A66C();
        sub_1AC30A23C();
        v13 = sub_1AC30A25C();
        (*(*(v13 - 8) + 56))(v160, 0, v82);
        v65 = sub_1AC30A67C();
        sub_1AC2D11E8(v160);

        v66 = &v238;
        v238 = v65;
        v84 = &v239;
        v71 = MEMORY[0x1E6981748];
        v72 = MEMORY[0x1E6981710];
        sub_1AC207B58(&v238, MEMORY[0x1E6981748], &v239);
        sub_1AC20BCE0();
        v67 = v239;

        v68 = &v236;
        v236 = v67;
        v83 = &v237;
        sub_1AC207B58(&v236, v71, &v237);
        sub_1AC20BCE0();
        v69 = v237;

        v73 = &v226;
        v226 = v69;
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D298);
        v14 = sub_1AC2FF500();
        sub_1AC207CB4(v73, v70, v71, v14, v72, v227);
        sub_1AC20BCE0();
        v77 = v224;
        v224[0] = v227[0];
        v224[1] = v227[1];
        v225 = v228 & 1 & v82;
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D250);
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D288);
        v76 = sub_1AC2FDF68();
        v15 = sub_1AC2FF45C();
        sub_1AC207CB4(v77, v74, v75, v76, v15, v229);
        sub_1AC2FF978();
        v81 = v221;
        v221[0] = v229[0];
        v221[1] = v229[1];
        v222 = v230;
        v223 = v231 & 1 & v82;
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D268);
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D270);
        v80 = sub_1AC2FF3B4();
        v16 = sub_1AC2FF62C();
        sub_1AC207BBC(v81, v78, v79, v80, v16, &v232);
        sub_1AC2FF9B4(v81);
        v86 = v232;
        v87 = v233;
        v88 = v234;
        v85 = v235;
        sub_1AC2FF6C8(v232, v233, v234, v235 & 1);
        v269[0] = v86;
        v269[1] = v87;
        LOWORD(v269[2]) = v88;
        BYTE2(v269[2]) = v85 & 1 & v82;
        sub_1AC20BCE0();
        sub_1AC20BCE0();
        v152 = v86;
        v153 = v87;
        v154 = v88;
        v155 = v85;
        break;
      case 4:
        v57 = 1;
        sub_1AC30A9DC();
        v44 = sub_1AC30A66C();
        sub_1AC30A23C();
        v17 = sub_1AC30A25C();
        (*(*(v17 - 8) + 56))(v160, 0, v57);
        v45 = sub_1AC30A67C();
        sub_1AC2D11E8(v160);

        v46 = &v251;
        v251 = v45;
        v59 = &v252;
        v50 = MEMORY[0x1E6981748];
        v51 = MEMORY[0x1E6981710];
        sub_1AC207B58(&v251, MEMORY[0x1E6981748], &v252);
        sub_1AC20BCE0();
        v47 = v252;

        v48 = &v249;
        v249 = v47;
        v58 = &v250;
        sub_1AC207B58(&v249, v50, &v250);
        sub_1AC20BCE0();
        v49 = v250;

        v52 = &v242;
        v242 = v49;
        sub_1AC207BBC(&v242, v50, v50, v51, v51, &v243);
        sub_1AC20BCE0();
        v56 = &v240;
        v240 = v243;
        v241 = v244 & 1 & v57;
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D268);
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D270);
        v55 = sub_1AC2FF3B4();
        v18 = sub_1AC2FF62C();
        sub_1AC207CB4(v56, v53, v54, v55, v18, &v245);
        sub_1AC20BCE0();
        v61 = v245;
        v62 = v246;
        v63 = v247;
        v60 = v248;
        sub_1AC2FF6C8(v245, v246, v247, v248 & 1);
        v269[0] = v61;
        v269[1] = v62;
        LOWORD(v269[2]) = v63;
        BYTE2(v269[2]) = v60 & 1 & v57;
        sub_1AC20BCE0();
        sub_1AC20BCE0();
        v152 = v61;
        v153 = v62;
        v154 = v63;
        v155 = v60;
        break;
      default:
        v37 = 1;
        sub_1AC30A9DC();
        v24 = sub_1AC30A66C();
        sub_1AC30A23C();
        v19 = sub_1AC30A25C();
        (*(*(v19 - 8) + 56))(v160, 0, v37);
        v25 = sub_1AC30A67C();
        sub_1AC2D11E8(v160);

        v26 = &v267;
        v267 = v25;
        v39 = &v268;
        v30 = MEMORY[0x1E6981748];
        v31 = MEMORY[0x1E6981710];
        sub_1AC207B58(&v267, MEMORY[0x1E6981748], &v268);
        sub_1AC20BCE0();
        v27 = v268;

        v28 = &v265;
        v265 = v27;
        v38 = &v266;
        sub_1AC207B58(&v265, v30, &v266);
        sub_1AC20BCE0();
        v29 = v266;

        v32 = &v258;
        v258 = v29;
        sub_1AC207CB4(&v258, v30, v30, v31, v31, &v259);
        sub_1AC20BCE0();
        v36 = &v256;
        v256 = v259;
        v257 = v260 & 1 & v37;
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D268);
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D270);
        v35 = sub_1AC2FF3B4();
        v20 = sub_1AC2FF62C();
        sub_1AC207CB4(v36, v33, v34, v35, v20, &v261);
        sub_1AC20BCE0();
        v41 = v261;
        v42 = v262;
        v43 = v263;
        v40 = v264;
        sub_1AC2FF6C8(v261, v262, v263, v264 & 1);
        v269[0] = v41;
        v269[1] = v42;
        LOWORD(v269[2]) = v43;
        BYTE2(v269[2]) = v40 & 1 & v37;
        sub_1AC20BCE0();
        sub_1AC20BCE0();
        v152 = v41;
        v153 = v42;
        v154 = v43;
        v155 = v40;
        break;
    }
  }

  else
  {
    sub_1AC30A77C();
    v137 = MEMORY[0x1E6981E70];
    v138 = MEMORY[0x1E6981E60];
    sub_1AC207B58(v136, MEMORY[0x1E6981E70], v136);
    sub_1AC207B58(v136, v137, v136);
    sub_1AC207BBC(v136, v137, v137, v138, v138, &v166);
    v142 = &v165;
    v147 = 1;
    v165 = v166 & 1;
    v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D250);
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D288);
    v141 = sub_1AC2FDF68();
    v5 = sub_1AC2FF45C();
    sub_1AC207BBC(v142, v139, v140, v141, v5, v167);
    v146 = v162;
    v162[0] = v167[0];
    v162[1] = v167[1];
    v163 = v168;
    v164 = v169 & 1 & v147;
    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D268);
    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D270);
    v145 = sub_1AC2FF3B4();
    v6 = sub_1AC2FF62C();
    sub_1AC207BBC(v146, v143, v144, v145, v6, &v170);
    sub_1AC2FF9B4(v146);
    v149 = v170;
    v150 = v171;
    v151 = v172;
    v148 = v173;
    sub_1AC2FF6C8(v170, v171, v172, v173 & 1);
    v269[0] = v149;
    v269[1] = v150;
    LOWORD(v269[2]) = v151;
    BYTE2(v269[2]) = v148 & 1 & v147;
    v152 = v149;
    v153 = v150;
    v154 = v151;
    v155 = v148;
  }

  v23 = v253;
  v253[0] = v152;
  v253[1] = v153;
  v254 = v154;
  v255 = v155 & 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D2B8);
  sub_1AC2FF7AC();
  sub_1AC207B58(v23, v22, v156);
  sub_1AC2FF854(v23);
  return sub_1AC2FF854(v269);
}

unint64_t sub_1AC2FF3B4()
{
  v2 = qword_1EB54D278;
  if (!qword_1EB54D278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D268);
    sub_1AC2FDF68();
    sub_1AC2FF45C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D278);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2FF45C()
{
  v2 = qword_1EB54D280;
  if (!qword_1EB54D280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D288);
    sub_1AC2FF500();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D280);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2FF500()
{
  v2 = qword_1EB54D290;
  if (!qword_1EB54D290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D298);
    sub_1AC2FF5A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D290);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2FF5A4()
{
  v2 = qword_1EB54D2A0;
  if (!qword_1EB54D2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D2A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D2A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2FF62C()
{
  v2 = qword_1EB54D2B0;
  if (!qword_1EB54D2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D270);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D2B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2FF6C8(uint64_t a1, uint64_t a2, unsigned int a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    return sub_1AC2FF724(a1, a2, a3, BYTE1(a3) & 1);
  }
}

uint64_t sub_1AC2FF724(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_1AC2FF76C();
  }

  return result;
}

unint64_t sub_1AC2FF7AC()
{
  v2 = qword_1EB54D2C0;
  if (!qword_1EB54D2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D2B8);
    sub_1AC2FF3B4();
    sub_1AC2FF62C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D2C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2FF894(uint64_t a1, uint64_t a2, unsigned int a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    return sub_1AC2FF8F0(a1, a2, a3, BYTE1(a3) & 1);
  }
}

uint64_t sub_1AC2FF8F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_1AC2FF938();
  }

  return result;
}

uint64_t sub_1AC2FFA24(uint64_t a1, char a2, unint64_t a3)
{
  v5 = a3 >> 61;
  switch(v5)
  {
    case 0:
      if (sub_1AC26B418(a2, 1))
      {
LABEL_15:
        sub_1AC3093AC();
LABEL_17:
        type metadata accessor for CBPeerUIGestureMode();
        sub_1AC209A44();
        v4 = sub_1AC30B1BC();
        return v4 & 1;
      }

LABEL_16:
      sub_1AC30936C();
      goto LABEL_17;
    case 1:
      if (sub_1AC26B418(a2, 1))
      {
        goto LABEL_15;
      }

      goto LABEL_16;
    case 2:
      v4 = sub_1AC3091DC();
      break;
    case 3:
      v4 = sub_1AC30949C();
      break;
    case 4:
      v4 = sub_1AC30920C();
      break;
    default:
      v4 = sub_1AC30946C();
      break;
  }

  return v4 & 1;
}

uint64_t sub_1AC2FFCE0(uint64_t a1, uint64_t a2, char a3, unint64_t a4)
{
  v5 = a4 >> 61;
  if (v5)
  {
    if (v5 != 1)
    {
      switch(v5)
      {
        case 2:
          sub_1AC3091EC();
          break;
        case 3:
          sub_1AC3094AC();
          break;
        case 4:
          sub_1AC30921C();
          break;
        default:
          sub_1AC30947C();
          break;
      }

      return sub_1AC2FFE9C();
    }

    if (!sub_1AC26B418(a3, 0))
    {
LABEL_14:
      sub_1AC3093BC();
      return sub_1AC2FFE9C();
    }
  }

  else if (!sub_1AC26B418(a3, 0))
  {
    goto LABEL_14;
  }

  sub_1AC30937C();
  return sub_1AC2FFE9C();
}

uint64_t sub_1AC2FFEDC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v11 = sub_1AC3092FC();
  v12 = a3 >> 61;
  if (v12)
  {
    switch(v12)
    {
      case 1:
        v7 = 1;
        break;
      case 2:
        sub_1AC2FC0D0(a2, a3);
        MEMORY[0x1E69E5928](a1);
        if (v11)
        {
          v6 = sub_1AC300144(a1, a2, a3);
        }

        else
        {
          v6 = 0;
        }

        sub_1AC209AEC(a2, a3);
        MEMORY[0x1E69E5920](a1);
        v7 = v6;
        break;
      case 3:
        v7 = v11;
        break;
      case 4:
        MEMORY[0x1E69E5928](a1);
        if (v11)
        {
          v4 = sub_1AC30917C();
          [v4 autoAncCapability];
          MEMORY[0x1E69E5920](v4);
          type metadata accessor for CBPeerAutoAncCapability();
          sub_1AC236D88();
          v5 = sub_1AC30B1BC();
        }

        else
        {
          v5 = 0;
        }

        MEMORY[0x1E69E5920](a1);
        v7 = v5;
        break;
      default:
        v7 = v11;
        break;
    }
  }

  else
  {
    v7 = v11;
  }

  return v7 & 1;
}

uint64_t sub_1AC300144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a1;
  v60 = a2;
  v59 = a3;
  v53 = sub_1AC3009C0;
  v54 = sub_1AC215C98;
  v55 = sub_1AC215C90;
  v56 = sub_1AC215C90;
  v57 = sub_1AC215CA4;
  v85 = 0;
  v83 = 0;
  v84 = 0;
  v58 = 0;
  v68 = 0;
  v61 = sub_1AC309E6C();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v61);
  v65 = v21 - v64;
  v85 = a1;
  v83 = v4;
  v84 = v5;
  v66 = sub_1AC3091FC();
  v67 = [v66 listeningModeOffAllowed];
  MEMORY[0x1E69E5920](v66);
  v71 = &v82;
  v82 = v67;
  v69 = &v81;
  v81 = 0;
  v70 = type metadata accessor for HMMultiState();
  sub_1AC241864();
  if (sub_1AC30A89C())
  {
    v6 = v65;
    v7 = sub_1AC23BA24();
    (*(v62 + 16))(v6, v7, v61);
    v39 = sub_1AC309E4C();
    v40 = sub_1AC30AD1C();
    v29 = 17;
    v31 = 7;
    v33 = swift_allocObject();
    *(v33 + 16) = 32;
    v34 = swift_allocObject();
    *(v34 + 16) = 8;
    v30 = 32;
    v8 = swift_allocObject();
    v32 = v8;
    *(v8 + 16) = v53;
    *(v8 + 24) = 0;
    v9 = swift_allocObject();
    v10 = v32;
    v36 = v9;
    *(v9 + 16) = v54;
    *(v9 + 24) = v10;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    v35 = sub_1AC30B18C();
    v37 = v11;

    v12 = v33;
    v13 = v37;
    *v37 = v55;
    v13[1] = v12;

    v14 = v34;
    v15 = v37;
    v37[2] = v56;
    v15[3] = v14;

    v16 = v36;
    v17 = v37;
    v37[4] = v57;
    v17[5] = v16;
    sub_1AC206300();

    if (os_log_type_enabled(v39, v40))
    {
      v18 = v58;
      v22 = sub_1AC30AE6C();
      v21[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v23 = sub_1AC213EE4(0);
      v24 = sub_1AC213EE4(1);
      v25 = &v80;
      v80 = v22;
      v26 = &v79;
      v79 = v23;
      v27 = &v78;
      v78 = v24;
      sub_1AC213F38(2, &v80);
      sub_1AC213F38(1, v25);
      v76 = v55;
      v77 = v33;
      sub_1AC213F4C(&v76, v25, v26, v27);
      v28 = v18;
      if (v18)
      {

        __break(1u);
      }

      else
      {
        v76 = v56;
        v77 = v34;
        sub_1AC213F4C(&v76, &v80, &v79, &v78);
        v21[1] = 0;
        v76 = v57;
        v77 = v36;
        sub_1AC213F4C(&v76, &v80, &v79, &v78);
        _os_log_impl(&dword_1AC1C3000, v39, v40, "%s: listeningModeOffAllowed is unknown, return true!", v22, 0xCu);
        sub_1AC213F98(v23);
        sub_1AC213F98(v24);
        sub_1AC30AE4C();
      }
    }

    else
    {
    }

    v19 = MEMORY[0x1E69E5920](v39);
    (*(v62 + 8))(v65, v61, v19);
    v42 = 1;
  }

  else
  {
    v46 = sub_1AC3091FC();
    v47 = sub_1AC30964C();
    MEMORY[0x1E69E5920](v46);
    v49 = &v75;
    v75 = v47;
    v48 = &v74;
    v74 = 1;
    v50 = sub_1AC241B7C();
    v51 = sub_1AC30B1BC();
    MEMORY[0x1E69E5928](v52);
    if (v51)
    {
      v43 = sub_1AC3091FC();
      v44 = [v43 listeningModeOffAllowed];
      MEMORY[0x1E69E5920](v43);
      v73 = v44;
      v72 = 1;
      v45 = sub_1AC30B1BC();
    }

    else
    {
      v45 = 0;
    }

    v41 = v45;
    MEMORY[0x1E69E5920](v52);
    v42 = v41;
  }

  return v42 & 1;
}

void sub_1AC3009F0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 61 == 1)
  {
    MEMORY[0x1E69E5928](a3 & 0x1FFFFFFFFFFFFFFFLL);
    sub_1AC30B23C();
    sub_1AC2FBDCC();
    sub_1AC30B23C();
    sub_1AC3095DC();
    sub_1AC3010A4();
    sub_1AC30B23C();
    MEMORY[0x1E69E5920](a3 & 0x1FFFFFFFFFFFFFFFLL);
  }

  else
  {
    sub_1AC30B23C();
    sub_1AC2FBDCC();
    sub_1AC30B23C();
  }
}

uint64_t sub_1AC300F30()
{
  v1 = sub_1AC309E6C();
  __swift_allocate_value_buffer(v1, qword_1EB553DE8);
  __swift_project_value_buffer(v1, qword_1EB553DE8);
  sub_1AC30A9DC();
  sub_1AC30A9DC();
  return sub_1AC309E5C();
}

uint64_t sub_1AC300FD4()
{
  if (qword_1EB5536D0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309E6C();
  return __swift_project_value_buffer(v0, qword_1EB553DE8);
}

uint64_t sub_1AC301040@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC300FD4();
  v1 = sub_1AC309E6C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

unint64_t sub_1AC3010A4()
{
  v2 = qword_1EB54D2C8;
  if (!qword_1EB54D2C8)
  {
    sub_1AC3095DC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D2C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC301124()
{
  v2 = qword_1EB54D2D0;
  if (!qword_1EB54D2D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D2D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3011B8()
{
  v2 = qword_1EB54D2D8;
  if (!qword_1EB54D2D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D2D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC3012CC()
{
  v2 = qword_1EB54D2E0;
  if (!qword_1EB54D2E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D2E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC30136C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = -1 - (*a1 >> 2);
      if (v2 >= 0x7FFFFFFF)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AC3014A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 4 * ~(a2 - 1);
      *(result + 8) = 0;
    }
  }

  return result;
}

void *sub_1AC30167C(void *result)
{
  v1 = result[1] & 0x1FFFFFFFFFFFFFFFLL;
  *result = *result;
  result[1] = v1;
  return result;
}

void *sub_1AC301694(void *result, char a2)
{
  v2 = ((a2 & 7) << 61) | result[1] & 0xFFFFFFFFFFFFFF8;
  *result &= 3uLL;
  result[1] = v2;
  return result;
}

id sub_1AC3016D8()
{
  sub_1AC20BE24();
  type metadata accessor for ResourceBundleClass();
  result = sub_1AC20BE88();
  qword_1EB553B68 = result;
  return result;
}

uint64_t *sub_1AC301720()
{
  if (qword_1EB553B60 != -1)
  {
    swift_once();
  }

  return &qword_1EB553B68;
}

uint64_t sub_1AC301780()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553E00);
  __swift_project_value_buffer(v2, qword_1EB553E00);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC301818()
{
  if (qword_1EB553B70 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553E00);
}

uint64_t sub_1AC301884@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC301818();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3018E8()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553E18);
  __swift_project_value_buffer(v2, qword_1EB553E18);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC301980()
{
  if (qword_1EB553B78 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553E18);
}

uint64_t sub_1AC3019EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC301980();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC301A50()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553E30);
  __swift_project_value_buffer(v2, qword_1EB553E30);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC301AE8()
{
  if (qword_1EB553B80 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553E30);
}

uint64_t sub_1AC301B54@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC301AE8();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC301BB8()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553E48);
  __swift_project_value_buffer(v2, qword_1EB553E48);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC301C50()
{
  if (qword_1EB553B88 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553E48);
}

uint64_t sub_1AC301CBC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC301C50();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC301D20()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553E60);
  __swift_project_value_buffer(v2, qword_1EB553E60);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC301DB8()
{
  if (qword_1EB553B90 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553E60);
}

uint64_t sub_1AC301E24@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC301DB8();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC301E88()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553E78);
  __swift_project_value_buffer(v2, qword_1EB553E78);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC301F20()
{
  if (qword_1EB553B98 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553E78);
}

uint64_t sub_1AC301F8C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC301F20();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC301FF0()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553E90);
  __swift_project_value_buffer(v2, qword_1EB553E90);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC302088()
{
  if (qword_1EB553BA0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553E90);
}

uint64_t sub_1AC3020F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC302088();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC302158()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553EA8);
  __swift_project_value_buffer(v2, qword_1EB553EA8);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC3021F0()
{
  if (qword_1EB553BA8 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553EA8);
}

uint64_t sub_1AC30225C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3021F0();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3022C0()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553EC0);
  __swift_project_value_buffer(v2, qword_1EB553EC0);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC302358()
{
  if (qword_1EB553BB0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553EC0);
}

uint64_t sub_1AC3023C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC302358();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC302428()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553ED8);
  __swift_project_value_buffer(v2, qword_1EB553ED8);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC3024C0()
{
  if (qword_1EB553BB8 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553ED8);
}

uint64_t sub_1AC30252C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3024C0();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC302590()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553EF0);
  __swift_project_value_buffer(v2, qword_1EB553EF0);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC302628()
{
  if (qword_1EB553BC0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553EF0);
}

uint64_t sub_1AC302694@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC302628();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3026F8()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553F08);
  __swift_project_value_buffer(v2, qword_1EB553F08);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC302790()
{
  if (qword_1EB553BC8 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553F08);
}

uint64_t sub_1AC3027FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC302790();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC302860()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553F20);
  __swift_project_value_buffer(v2, qword_1EB553F20);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC3028F8()
{
  if (qword_1EB553BD0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553F20);
}

uint64_t sub_1AC302964@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3028F8();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3029C8()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553F38);
  __swift_project_value_buffer(v2, qword_1EB553F38);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC302A60()
{
  if (qword_1EB553BD8 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553F38);
}

uint64_t sub_1AC302ACC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC302A60();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC302B30()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553F50);
  __swift_project_value_buffer(v2, qword_1EB553F50);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC302BC8()
{
  if (qword_1EB553BE0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553F50);
}

uint64_t sub_1AC302C34@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC302BC8();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC302C98()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553F68);
  __swift_project_value_buffer(v2, qword_1EB553F68);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC302D30()
{
  if (qword_1EB553BE8 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553F68);
}

uint64_t sub_1AC302D9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC302D30();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC302E00()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553F80);
  __swift_project_value_buffer(v2, qword_1EB553F80);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC302E98()
{
  if (qword_1EB553BF0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553F80);
}

uint64_t sub_1AC302F04@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC302E98();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC302F68()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553F98);
  __swift_project_value_buffer(v2, qword_1EB553F98);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC303000()
{
  if (qword_1EB553BF8 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553F98);
}

uint64_t sub_1AC30306C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC303000();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3030D0()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553FB0);
  __swift_project_value_buffer(v2, qword_1EB553FB0);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC303168()
{
  if (qword_1EB553C00 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553FB0);
}

uint64_t sub_1AC3031D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC303168();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC303238()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553FC8);
  __swift_project_value_buffer(v2, qword_1EB553FC8);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC3032D0()
{
  if (qword_1EB553C08 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553FC8);
}

uint64_t sub_1AC30333C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3032D0();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3033A0()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553FE0);
  __swift_project_value_buffer(v2, qword_1EB553FE0);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC303438()
{
  if (qword_1EB553C10 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553FE0);
}

uint64_t sub_1AC3034A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC303438();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC303508()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB553FF8);
  __swift_project_value_buffer(v2, qword_1EB553FF8);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC3035A0()
{
  if (qword_1EB553C18 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB553FF8);
}

uint64_t sub_1AC30360C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3035A0();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC303670()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB554010);
  __swift_project_value_buffer(v2, qword_1EB554010);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC303708()
{
  if (qword_1EB553C20 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB554010);
}

uint64_t sub_1AC303774@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC303708();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3037D8()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB554028);
  __swift_project_value_buffer(v2, qword_1EB554028);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC303870()
{
  if (qword_1EB553C28 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB554028);
}

uint64_t sub_1AC3038DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC303870();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC303940()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB554040);
  __swift_project_value_buffer(v2, qword_1EB554040);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC3039D8()
{
  if (qword_1EB553C30 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB554040);
}

uint64_t sub_1AC303A44@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3039D8();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC303AA8()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB554058);
  __swift_project_value_buffer(v2, qword_1EB554058);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC303B40()
{
  if (qword_1EB553C38 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB554058);
}

uint64_t sub_1AC303BAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC303B40();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC303C10()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB554070);
  __swift_project_value_buffer(v2, qword_1EB554070);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC303CA8()
{
  if (qword_1EB553C40 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB554070);
}

uint64_t sub_1AC303D14@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC303CA8();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC303D78()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB554088);
  __swift_project_value_buffer(v2, qword_1EB554088);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC303E10()
{
  if (qword_1EB553C48 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB554088);
}

uint64_t sub_1AC303E7C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC303E10();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC303EE0()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB5540A0);
  __swift_project_value_buffer(v2, qword_1EB5540A0);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC303F78()
{
  if (qword_1EB553C50 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB5540A0);
}

uint64_t sub_1AC303FE4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC303F78();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC304048()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB5540B8);
  __swift_project_value_buffer(v2, qword_1EB5540B8);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC3040E0()
{
  if (qword_1EB553C58 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB5540B8);
}

uint64_t sub_1AC30414C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3040E0();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3041B0()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB5540D0);
  __swift_project_value_buffer(v2, qword_1EB5540D0);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC304248()
{
  if (qword_1EB553C60 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB5540D0);
}

uint64_t sub_1AC3042B4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC304248();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC304318()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB5540E8);
  __swift_project_value_buffer(v2, qword_1EB5540E8);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC3043B0()
{
  if (qword_1EB553C68 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB5540E8);
}

uint64_t sub_1AC30441C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3043B0();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC304480()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB554100);
  __swift_project_value_buffer(v2, qword_1EB554100);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC304518()
{
  if (qword_1EB553C70 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB554100);
}

uint64_t sub_1AC304584@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC304518();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3045E8()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB554118);
  __swift_project_value_buffer(v2, qword_1EB554118);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC304680()
{
  if (qword_1EB553C78 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB554118);
}

uint64_t sub_1AC3046EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC304680();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC304750()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB554130);
  __swift_project_value_buffer(v2, qword_1EB554130);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC3047E8()
{
  if (qword_1EB553C80 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB554130);
}

uint64_t sub_1AC304854@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC3047E8();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC3048B8()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB554148);
  __swift_project_value_buffer(v2, qword_1EB554148);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC304950()
{
  if (qword_1EB553C88 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB554148);
}

uint64_t sub_1AC3049BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC304950();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC304A20()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB554160);
  __swift_project_value_buffer(v2, qword_1EB554160);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC304AB8()
{
  if (qword_1EB553C90 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB554160);
}

uint64_t sub_1AC304B24@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC304AB8();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC304B88()
{
  v2 = sub_1AC309DCC();
  __swift_allocate_value_buffer(v2, qword_1EB554178);
  __swift_project_value_buffer(v2, qword_1EB554178);
  sub_1AC30A9DC();
  v0 = sub_1AC301720();
  MEMORY[0x1E69E5928](*v0);
  return sub_1AC309D9C();
}

uint64_t sub_1AC304C20()
{
  if (qword_1EB553C98 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309DCC();
  return __swift_project_value_buffer(v0, qword_1EB554178);
}

uint64_t sub_1AC304C8C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC304C20();
  v1 = sub_1AC309DCC();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC304CF0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC301818();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC304DD0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC301980();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC304EB0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC301AE8();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC304F90()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC301C50();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305070()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC301DB8();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305150()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC301F20();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305230()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC302088();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305310()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC3021F0();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC3053F0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC302358();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC3054D0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC3024C0();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC3055B0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC302628();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305690()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC302790();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305770()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC3028F8();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305850()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC302A60();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305930()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC302BC8();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305A10()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC302D30();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305AF0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC302E98();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305BD0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC303000();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305CB0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC303168();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305D90()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC3032D0();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305E70()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC303438();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC305F50()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC3035A0();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC306030()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC303708();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC306110()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC303870();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC3061F0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC3039D8();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC3062D0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC303B40();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC3063B0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC303CA8();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC306490()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC303E10();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC306570()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC303F78();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC306650()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC3040E0();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC306730()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC304248();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC306810()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC3043B0();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC3068F0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC304518();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC3069D0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC304680();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC306AB0()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC3047E8();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC306B90()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC304950();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC306C70()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC304AB8();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC306D50()
{
  v9 = 0;
  v3[1] = 0;
  v7 = sub_1AC309DCC();
  v5 = *(v7 - 8);
  v6 = v7 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v8 = v3 - v4;
  v9 = v0;
  sub_1AC20D404();
  v1 = sub_1AC304C20();
  (*(v5 + 16))(v8, v1, v7);
  return sub_1AC30ADDC();
}

uint64_t sub_1AC306E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = a4;
  v24 = a1;
  v21 = a2;
  v22 = a3;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v23 = 0;
  v13 = sub_1AC309DAC();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v17 = *(v14 + 64);
  v16 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v18 = &v9 - v16;
  v19 = v16;
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v9 - v19;
  v29 = &v9 - v19;
  v27 = v5;
  v28 = v6;
  v26 = v7;
  sub_1AC3070EC();

  MEMORY[0x1E69E5928](v22);
  v25 = sub_1AC307150(v24, v21, v22, v23);
  v11 = v25 != 0;
  v10 = v11;
  sub_1AC206988(&v25);
  if (v10)
  {
    sub_1AC309D9C();
    (*(v14 + 32))(v20, v18, v13);
    (*(v14 + 16))(v12, v20, v13);
    (*(v14 + 56))(v12, 0, 1, v13);
    return (*(v14 + 8))(v20, v13);
  }

  else
  {
    MEMORY[0x1E69E5920](v22);

    return (*(v14 + 56))(v12, 1, 1, v13);
  }
}

unint64_t sub_1AC3070EC()
{
  v2 = qword_1EB54D2E8;
  if (!qword_1EB54D2E8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54D2E8);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_1AC307150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1AC30A91C();
  v8 = [swift_getObjCClassFromMetadata() colorNamed:v7 inBundle:a3 compatibleWithTraitCollection:a4];
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v7);

  return v8;
}

uint64_t sub_1AC3071F4(uint64_t a1)
{
  v11 = a1;
  v22 = 0;
  v20 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D2F0);
  v10 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v19 = &v8 - v10;
  v18 = sub_1AC309DAC();
  v16 = *(v18 - 8);
  v17 = v18 - 8;
  v12 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v8 - v12;
  v14 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v15 = &v8 - v14;
  v22 = &v8 - v14;
  v20 = v4;
  sub_1AC307478(v4, v5);
  if ((*(v16 + 48))(v19, 1, v18) == 1)
  {
    sub_1AC3075A0(v19);
    sub_1AC3075A0(v11);
    return 0;
  }

  else
  {
    (*(v16 + 32))(v15, v19, v18);
    (*(v16 + 16))(v13, v15, v18);
    v8 = sub_1AC30ADCC();
    v6 = MEMORY[0x1E69E5928](v8);
    v21 = v8;
    (*(v16 + 8))(v15, v18, v6);
    sub_1AC3075A0(v11);
    MEMORY[0x1E69E5920](v21);
    return v8;
  }
}

void *sub_1AC307478(const void *a1, void *a2)
{
  v6 = sub_1AC309DAC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D2F0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1AC3075A0(uint64_t a1)
{
  v3 = sub_1AC309DAC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1AC307648(uint64_t a1)
{
  v11 = a1;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D2F0);
  v10 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v19 = &v7 - v10;
  v18 = sub_1AC309DAC();
  v16 = *(v18 - 8);
  v17 = v18 - 8;
  v12 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v7 - v12;
  v14 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v15 = &v7 - v14;
  v22 = &v7 - v14;
  v20 = v4;
  sub_1AC307478(v4, v5);
  if ((*(v16 + 48))(v19, 1, v18) == 1)
  {
    sub_1AC3075A0(v19);
    sub_1AC3075A0(v11);
    return 0;
  }

  else
  {
    (*(v16 + 32))(v15, v19, v18);
    (*(v16 + 16))(v13, v15, v18);
    v8 = sub_1AC30A63C();

    v7 = &v21;
    v21 = v8;
    (*(v16 + 8))(v15, v18);
    sub_1AC3075A0(v11);
    sub_1AC20BCE0();
    return v8;
  }
}

uint64_t sub_1AC3078B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = a4;
  v24 = a1;
  v21 = a2;
  v22 = a3;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v23 = 0;
  v13 = sub_1AC309DCC();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v17 = *(v14 + 64);
  v16 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v18 = &v9 - v16;
  v19 = v16;
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v9 - v19;
  v29 = &v9 - v19;
  v27 = v5;
  v28 = v6;
  v26 = v7;
  sub_1AC20D404();

  MEMORY[0x1E69E5928](v22);
  v25 = sub_1AC307B74(v24, v21, v22, v23);
  v11 = v25 != 0;
  v10 = v11;
  sub_1AC206988(&v25);
  if (v10)
  {
    sub_1AC309D9C();
    (*(v14 + 32))(v20, v18, v13);
    (*(v14 + 16))(v12, v20, v13);
    (*(v14 + 56))(v12, 0, 1, v13);
    return (*(v14 + 8))(v20, v13);
  }

  else
  {
    MEMORY[0x1E69E5920](v22);

    return (*(v14 + 56))(v12, 1, 1, v13);
  }
}

id sub_1AC307B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1AC30A91C();
  v8 = [swift_getObjCClassFromMetadata() imageNamed:v7 inBundle:a3 compatibleWithTraitCollection:a4];
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v7);

  return v8;
}

uint64_t sub_1AC307C18(uint64_t a1)
{
  v11 = a1;
  v22 = 0;
  v20 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D2F8);
  v10 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v19 = &v8 - v10;
  v18 = sub_1AC309DCC();
  v16 = *(v18 - 8);
  v17 = v18 - 8;
  v12 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v8 - v12;
  v14 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v15 = &v8 - v14;
  v22 = &v8 - v14;
  v20 = v4;
  sub_1AC307E9C(v4, v5);
  if ((*(v16 + 48))(v19, 1, v18) == 1)
  {
    sub_1AC307FC4(v19);
    sub_1AC307FC4(v11);
    return 0;
  }

  else
  {
    (*(v16 + 32))(v15, v19, v18);
    (*(v16 + 16))(v13, v15, v18);
    v8 = sub_1AC30ADDC();
    v6 = MEMORY[0x1E69E5928](v8);
    v21 = v8;
    (*(v16 + 8))(v15, v18, v6);
    sub_1AC307FC4(v11);
    MEMORY[0x1E69E5920](v21);
    return v8;
  }
}

void *sub_1AC307E9C(const void *a1, void *a2)
{
  v6 = sub_1AC309DCC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D2F8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1AC307FC4(uint64_t a1)
{
  v3 = sub_1AC309DCC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}