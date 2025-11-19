id sub_2482B1194(void *a1)
{
  v3 = *(v1 + 16);
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v3) + 0x68))(v7);
  if ((v8 & 1) == 0)
  {
    v5 = [a1 setFrame_];
  }

  (*((*v4 & *v3) + 0x80))(&v9, v5);
  if ((v10 & 1) == 0)
  {
    [a1 setSafeAreaInsetsPortrait_];
  }

  return [a1 isForeground];
}

uint64_t sub_2482B1288(uint64_t a1)
{
  v2 = v1;
  if (qword_27EE967A0 != -1)
  {
    swift_once();
  }

  v4 = qword_27EE967A8;
  v5 = [v2 application];
  v6 = [v5 bundleIdentifier];

  v7 = sub_248383960();
  v9 = v8;

  if (!*(v4 + 16))
  {

    return 0;
  }

  v10 = sub_24822B8A0(v7, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = *(*(v4 + 56) + 8 * v10);
  v14 = *(v13 + 16);
  v15 = (v13 + 32);
  do
  {
    if (!v14)
    {
      return 0;
    }

    v16 = *v15++;
    --v14;
  }

  while (v16 != a1);
  if (a1 == 5)
  {
    sub_2482B1E04(&unk_285A53470);
    if (!*(v2 + OBJC_IVAR____TtC9DashBoard38DBInstrumentClusterSceneViewController__focusTimer))
    {
      return 0;
    }

    [v2 _cancelFocusTimer];
    goto LABEL_23;
  }

  if (a1 == 2)
  {
    sub_2482B1E04(&unk_285A53470);
LABEL_23:
    sub_248383DC0();
    v25 = *sub_24827BA50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
    v26 = swift_allocObject();
    v27 = MEMORY[0x277D83E88];
    *(v26 + 16) = xmmword_24839C7F0;
    v28 = MEMORY[0x277D83ED0];
    *(v26 + 56) = v27;
    *(v26 + 64) = v28;
    *(v26 + 32) = a1;
    v29 = v25;
    sub_248382A40();

    v30 = [objc_allocWithZone(MEMORY[0x277CF9230]) initWithPressType_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24839C700;
    *(inited + 32) = v30;
    v32 = v30;
    sub_24814F838(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_24814FB28(0, &unk_27EE91610);
    sub_248151298(&qword_27EE90E30, &unk_27EE91610);
    v33 = sub_248383C70();

    [v2 sendSceneActions_];

    return 1;
  }

  if (a1 != 1)
  {
    if (*(v2 + OBJC_IVAR____TtC9DashBoard38DBInstrumentClusterSceneViewController__focusTimer))
    {
      v19 = [v2 application];
      v20 = [v19 bundleIdentifier];

      v21 = sub_248383960();
      v23 = v22;

      v35[0] = v21;
      v35[1] = v23;
      MEMORY[0x28223BE20](v24);
      v34[2] = v35;
      LOBYTE(v20) = sub_24815503C(sub_2481614D0, v34, &unk_285A53450);
      sub_2482B1E04(&unk_285A53470);

      if ((v20 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_22;
    }

    sub_2482B1E04(&unk_285A53470);
    return 0;
  }

  sub_2482B1E04(&unk_285A53470);
  if (!*(v2 + OBJC_IVAR____TtC9DashBoard38DBInstrumentClusterSceneViewController__focusTimer))
  {
LABEL_22:
    sub_2482B1704();
    goto LABEL_23;
  }

  v17 = *((*MEMORY[0x277D85000] & *v2) + 0xB0);

  return v17(5);
}

void sub_2482B1704()
{
  [v0 _cancelFocusTimer];
  sub_248383DC0();
  v1 = *sub_24827BA50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24839C7F0;
  *(v2 + 56) = type metadata accessor for DBInstrumentClusterSceneViewController();
  *(v2 + 64) = sub_2482B0EB8();
  *(v2 + 32) = v0;
  v3 = v1;
  v4 = v0;
  sub_248382A40();

  v5 = [objc_opt_self() timerWithTimeInterval:v4 target:sel__cancelFocusTimer selector:0 userInfo:0 repeats:3.0];
  v6 = [objc_opt_self() mainRunLoop];
  [v6 addTimer:v5 forMode:*MEMORY[0x277CBE738]];

  v7 = *&v4[OBJC_IVAR____TtC9DashBoard38DBInstrumentClusterSceneViewController__focusTimer];
  *&v4[OBJC_IVAR____TtC9DashBoard38DBInstrumentClusterSceneViewController__focusTimer] = v5;
}

id sub_2482B1878(void *a1, void *a2, uint64_t a3)
{
  v7 = &v3[OBJC_IVAR____TtC9DashBoard38DBInstrumentClusterSceneViewController_frameOverride];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[32] = 1;
  v8 = &v3[OBJC_IVAR____TtC9DashBoard38DBInstrumentClusterSceneViewController_safeAreaInsetsOverride];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  *&v3[OBJC_IVAR____TtC9DashBoard38DBInstrumentClusterSceneViewController__focusTimer] = 0;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for DBInstrumentClusterSceneViewController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithScene_application_environment_, a1, a2, a3);

  swift_unknownObjectRelease();
  return v9;
}

id sub_2482B19C4(void *a1, void *a2, void *a3, uint64_t a4)
{
  v9 = &v4[OBJC_IVAR____TtC9DashBoard38DBInstrumentClusterSceneViewController_frameOverride];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  v10 = &v4[OBJC_IVAR____TtC9DashBoard38DBInstrumentClusterSceneViewController_safeAreaInsetsOverride];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v10[32] = 1;
  *&v4[OBJC_IVAR____TtC9DashBoard38DBInstrumentClusterSceneViewController__focusTimer] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for DBInstrumentClusterSceneViewController();
  v11 = objc_msgSendSuper2(&v13, sel_initWithScene_application_proxyApplication_environment_, a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v11;
}

id sub_2482B1B34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBInstrumentClusterSceneViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2482B1C0C()
{
  v1 = [v0 application];
  v2 = [v1 appPolicy];

  if (v2 && (v3 = [v2 launchUsingTemplateUI], v2, (v3 & 1) != 0))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

id sub_2482B1C8C()
{
  v1 = sub_248383930();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DBInstrumentClusterSceneViewController();
  objc_msgSendSuper2(&v3, sel_deactivatePresentationViewWithIdentifier_, v1);

  return [v0 _cancelFocusTimer];
}

unint64_t sub_2482B1E58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91DC0);
    v3 = sub_2483845F0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24822B8A0(v5, v6);
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

unint64_t sub_2482B1F90@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2482B39C4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2482B1FE8()
{
  v1 = *(v0 + 32);
  sub_2482B39D4(v1, *(v0 + 40));
  return v1;
}

uint64_t sub_2482B2024()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_2482B2064@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12 & 1;
  return result;
}

uint64_t sub_2482B20B4(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t sub_2482B20E4@<X0>(uint64_t a1@<X8>)
{
  v61[4] = *MEMORY[0x277D85DE8];
  v2 = sub_248382A90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = sub_2483811A0();
  v61[0] = 0;
  v8 = [v6 propertyListWithData:v7 options:0 format:0 error:v61];

  if (!v8)
  {
    v26 = v61[0];
    sub_2483810C0();

    return swift_willThrow();
  }

  v9 = v61[0];
  sub_248384230();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FEB0);
  if (!swift_dynamicCast())
  {
    sub_2482B39E8();
    swift_allocError();
    v28 = 2;
LABEL_29:
    *v27 = v28;
    return swift_willThrow();
  }

  v10 = v59;
  if (!*(v59 + 16) || (v11 = sub_24822B8A0(1701869940, 0xE400000000000000), (v12 & 1) == 0) || (sub_24814A550(*(v10 + 56) + 32 * v11, v61), (swift_dynamicCast() & 1) == 0) || v59 > 3 || (v58 = v59, !*(v10 + 16)) || (v13 = sub_24822B8A0(7238515, 0xE300000000000000), (v14 & 1) == 0) || (sub_24814A550(*(v10 + 56) + 32 * v13, v61), (swift_dynamicCast() & 1) == 0) || !*(v10 + 16) || (v57 = v59, v15 = sub_24822B8A0(7238512, 0xE300000000000000), (v16 & 1) == 0) || (sub_24814A550(*(v10 + 56) + 32 * v15, v61), (swift_dynamicCast() & 1) == 0) || !*(v10 + 16) || (v17 = v59, v18 = sub_24822B8A0(7238497, 0xE300000000000000), (v19 & 1) == 0) || (sub_24814A550(*(v10 + 56) + 32 * v18, v61), (swift_dynamicCast() & 1) == 0))
  {
    v29 = sub_24827C4F4();
    (*(v3 + 16))(v5, v29, v2);

    v30 = sub_248382A80();
    v31 = sub_248383DA0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v61[0] = v33;
      *v32 = 136446210;
      v34 = sub_2483838B0();
      v58 = v2;
      v35 = v3;
      v37 = v36;

      v38 = sub_24814A378(v34, v37, v61);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_248146000, v30, v31, "Invalid message: %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x24C1CD5F0](v33, -1, -1);
      MEMORY[0x24C1CD5F0](v32, -1, -1);

      (*(v35 + 8))(v5, v58);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    sub_2482B39E8();
    swift_allocError();
    v28 = 1;
    goto LABEL_29;
  }

  v20 = v59;
  if (!*(v10 + 16))
  {
    v55 = 0;
    v25 = 0xF000000000000000;
LABEL_32:
    v56 = v25;
    goto LABEL_34;
  }

  v21 = sub_24822B8A0(1635017060, 0xE400000000000000);
  v56 = 0xF000000000000000;
  if (v22)
  {
    sub_24814A550(*(v10 + 56) + 32 * v21, v61);
    v23 = swift_dynamicCast();
    v24 = v59;
    if (!v23)
    {
      v24 = 0;
    }

    v55 = v24;
    v25 = 0xF000000000000000;
    if (v23)
    {
      v25 = v60;
    }

    goto LABEL_32;
  }

  v55 = 0;
LABEL_34:
  if (*(v10 + 16) && (v40 = sub_24822B8A0(0x6B63416F6ELL, 0xE500000000000000), (v41 & 1) != 0) && (sub_24814A550(*(v10 + 56) + 32 * v40, v61), swift_dynamicCast()))
  {
    v54 = v59;
  }

  else
  {
    v54 = 0;
  }

  if (*(v10 + 16) && (v42 = sub_24822B8A0(25705, 0xE200000000000000), (v43 & 1) != 0))
  {
    sub_24814A550(*(v10 + 56) + 32 * v42, v61);
    v44 = swift_dynamicCast();
    if (v44)
    {
      v45 = v59;
    }

    else
    {
      v45 = 0;
    }

    if (v44)
    {
      v46 = v60;
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v45 = 0;
    v46 = 0;
  }

  if (*(v10 + 16) && (v47 = sub_24822B8A0(0x6E6F6973726576, 0xE700000000000000), (v48 & 1) != 0))
  {
    sub_24814A550(*(v10 + 56) + 32 * v47, v61);

    result = swift_dynamicCast();
    v49 = v59;
    if (!result)
    {
      v49 = 0;
    }

    v50 = result ^ 1;
  }

  else
  {

    v49 = 0;
    v50 = 1;
  }

  v51 = v57;
  *a1 = v58;
  *(a1 + 8) = v51;
  *(a1 + 16) = v17;
  v52 = v55;
  *(a1 + 24) = v20;
  *(a1 + 32) = v52;
  *(a1 + 40) = v56;
  *(a1 + 48) = v54;
  *(a1 + 56) = v45;
  *(a1 + 64) = v46;
  *(a1 + 72) = v49;
  *(a1 + 80) = v50;
  return result;
}

void *sub_2482B27DC(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91278);
  inited = swift_initStackObject();
  *(inited + 32) = 1701869940;
  v4 = *v1;
  v5 = MEMORY[0x277D83B88];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = 7238515;
  v6 = *(v1 + 1);
  v7 = *(v1 + 2);
  *(inited + 88) = 0xE300000000000000;
  *(inited + 96) = v6;
  *(inited + 120) = v5;
  *(inited + 128) = 7238512;
  *(inited + 16) = xmmword_24839F1A0;
  *(inited + 136) = 0xE300000000000000;
  *(inited + 144) = v7;
  *(inited + 168) = v5;
  *(inited + 176) = 7238497;
  v8 = *(v1 + 3);
  *(inited + 216) = v5;
  *(inited + 184) = 0xE300000000000000;
  *(inited + 192) = v8;
  sub_24828CCA0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE945D0);
  swift_arrayDestroy();
  v9 = *(v1 + 5);
  if (v9 >> 60 == 15)
  {
    if ((v1[48] & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = *(v1 + 4);
    v26 = MEMORY[0x277CC9318];
    *&v25 = v20;
    *(&v25 + 1) = v9;
    sub_24825E6A0(&v25, v24);
    sub_2482B39D4(v20, v9);
    sub_24825CD28(v20, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2482B3664(v24, 1635017060, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    sub_2482B3EB4(v20, v9);
    if ((v1[48] & 1) == 0)
    {
LABEL_3:
      v10 = *(v1 + 8);
      if (!v10)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v26 = MEMORY[0x277D839B0];
  LOBYTE(v25) = 1;
  sub_24825E6A0(&v25, v24);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_2482B3664(v24, 0x6B63416F6ELL, 0xE500000000000000, v22);
  v10 = *(v1 + 8);
  if (v10)
  {
LABEL_4:
    v11 = *(v1 + 7);
    v26 = MEMORY[0x277D837D0];
    *&v25 = v11;
    *(&v25 + 1) = v10;
    sub_24825E6A0(&v25, v24);

    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_2482B3664(v24, 25705, 0xE200000000000000, v12);
  }

LABEL_5:
  if ((v1[80] & 1) == 0)
  {
    v13 = *(v1 + 9);
    v26 = v5;
    *&v25 = v13;
    sub_24825E6A0(&v25, v24);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_2482B3664(v24, 0x6E6F6973726576, 0xE700000000000000, v14);
  }

  v15 = objc_opt_self();
  v16 = sub_248383880();

  *&v25 = 0;
  v17 = [v15 dataWithPropertyList:v16 format:a1 options:0 error:&v25];

  v18 = v25;
  if (v17)
  {
    v19 = sub_2483811B0();
  }

  else
  {
    v19 = v18;
    sub_2483810C0();

    swift_willThrow();
  }

  return v19;
}

uint64_t sub_2482B2B68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_2482B3C5C(v7, v9) & 1;
}

uint64_t sub_2482B2BD4(unsigned __int8 a1)
{
  v1 = 0x7465736572;
  v2 = 0x646E616D6D6F63;
  if (a1 != 2)
  {
    v2 = 0x41646E616D6D6F63;
  }

  if (a1)
  {
    v1 = 0x6D6F437465736572;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2482B2C5C()
{
  v1 = 0x7465736572;
  v2 = 0x646E616D6D6F63;
  if (*v0 != 2)
  {
    v2 = 0x41646E616D6D6F63;
  }

  if (*v0)
  {
    v1 = 0x6D6F437465736572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2482B2CE4()
{
  sub_248384440();
  MEMORY[0x24C1CAFD0](0x3D6570797428, 0xE600000000000000);
  v1 = 0x7465736572;
  v2 = 0xE700000000000000;
  v3 = 0x646E616D6D6F63;
  if (*v0 != 2)
  {
    v3 = 0x41646E616D6D6F63;
    v2 = 0xEA00000000006B63;
  }

  v4 = 0xED00006574656C70;
  if (*v0)
  {
    v1 = 0x6D6F437465736572;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*v0 <= 1u)
  {
    v5 = v1;
  }

  else
  {
    v5 = v3;
  }

  if (*v0 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x24C1CAFD0](v5, v6);

  MEMORY[0x24C1CAFD0](0x3D6E7373202CLL, 0xE600000000000000);
  v7 = sub_248384650();
  MEMORY[0x24C1CAFD0](v7);

  MEMORY[0x24C1CAFD0](0x3D6E7370202CLL, 0xE600000000000000);
  v8 = sub_248384650();
  MEMORY[0x24C1CAFD0](v8);

  MEMORY[0x24C1CAFD0](0x3D6E7361202CLL, 0xE600000000000000);
  v9 = sub_248384650();
  MEMORY[0x24C1CAFD0](v9);

  MEMORY[0x24C1CAFD0](0x3D6469202CLL, 0xE500000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE8FD10);
  v10 = sub_2483841D0();
  MEMORY[0x24C1CAFD0](v10);

  MEMORY[0x24C1CAFD0](0x746144736168202CLL, 0xEA00000000003D61);
  if (*(v0 + 5) >> 60 == 15)
  {
    v11 = 0x65736C6166;
  }

  else
  {
    v11 = 1702195828;
  }

  if (*(v0 + 5) >> 60 == 15)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  MEMORY[0x24C1CAFD0](v11, v12);

  MEMORY[0x24C1CAFD0](0x6F6973726576202CLL, 0xEA00000000003D6ELL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91DD0);
  v13 = sub_2483841D0();
  MEMORY[0x24C1CAFD0](v13);

  return 0;
}

uint64_t sub_2482B2FEC@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_248381060();
    if (v10)
    {
      v11 = sub_248381080();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_248381070();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_248381060();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_248381080();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_248381070();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2482B321C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2482B3A3C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_24823BD70(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_2482B2FEC(v13, a3, a4, &v12);
  v10 = v4;
  sub_24823BD70(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_2482B33AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91298);
  v33 = a2;
  result = sub_2483845D0();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_24825E6A0(v24, v34);
      }

      else
      {
        sub_24814A550(v24, v34);
      }

      sub_248384780();
      sub_2483839E0();
      result = sub_2483847B0();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_24825E6A0(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_2482B3664(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24822B8A0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2482B3820();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2482B33AC(v16, a4 & 1);
    v11 = sub_24822B8A0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2483846E0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_24825E6A0(a1, v22);
  }

  else
  {
    sub_2482B37B4(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_2482B37B4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_24825E6A0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_2482B3820()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91298);
  v2 = *v0;
  v3 = sub_2483845C0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_24814A550(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_24825E6A0(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_2482B39C4(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_2482B39D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24825CD28(a1, a2);
  }

  return a1;
}

unint64_t sub_2482B39E8()
{
  result = qword_27EE94050;
  if (!qword_27EE94050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE94050);
  }

  return result;
}

uint64_t sub_2482B3A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_248381060();
  v11 = result;
  if (result)
  {
    result = sub_248381080();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_248381070();
  sub_2482B2FEC(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_2482B3AF4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_24825CD28(a3, a4);
          return sub_2482B321C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2482B3C5C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || *(a1 + 3) != *(a2 + 3))
  {
    return 0;
  }

  v17 = v2;
  v18 = v3;
  v4 = *(a1 + 2);
  v15 = *(a2 + 2);
  v16 = v4;
  v5 = v4;
  v6 = v15;
  if (*(&v4 + 1) >> 60 == 15)
  {
    if (*(&v15 + 1) >> 60 == 15)
    {
      v7 = a2;
      v8 = a1;
      sub_248232C78(&v16, v14, &unk_27EE91DE0);
      sub_248232C78(&v15, v14, &unk_27EE91DE0);
      sub_2482B3EB4(v5, *(&v5 + 1));
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (*(&v15 + 1) >> 60 == 15)
  {
LABEL_10:
    sub_248232C78(&v16, v14, &unk_27EE91DE0);
    sub_248232C78(&v15, v14, &unk_27EE91DE0);
    sub_2482B3EB4(v5, *(&v5 + 1));
    sub_2482B3EB4(v6, *(&v6 + 1));
    return 0;
  }

  v7 = a2;
  v8 = a1;
  sub_248232C78(&v16, v14, &unk_27EE91DE0);
  sub_248232C78(&v15, v14, &unk_27EE91DE0);
  v10 = sub_2482B3AF4(v5, *(&v5 + 1), v6, *(&v6 + 1));
  sub_2482B3EB4(v6, *(&v6 + 1));
  sub_2482B3EB4(v5, *(&v5 + 1));
  if ((v10 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  if ((v8[48] ^ v7[48]))
  {
    return 0;
  }

  v11 = *(v8 + 8);
  v12 = *(v7 + 8);
  if (v11)
  {
    if (!v12 || (*(v8 + 7) != *(v7 + 7) || v11 != v12) && (sub_248384680() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = v7[80];
  if (v8[80])
  {
    if ((v7[80] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(v8 + 9) != *(v7 + 9))
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2482B3EB4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24823BD70(a1, a2);
  }

  return a1;
}

unint64_t sub_2482B3ECC()
{
  result = qword_27EE91DD8;
  if (!qword_27EE91DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE91DD8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2482B3F88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t sub_2482B3FE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t DBDashboardSceneManager.focusMovementActionHandler.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DBDashboardSceneManager.focusMovementActionHandler.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager_focusMovementActionHandler;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2482284FC;
}

id DBDashboardSceneManager.init(environment:iconProvider:sceneWorkspaceIdentifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__isInvalidated] = 0;
  *&v3[OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__applicationScenes] = MEMORY[0x277D84F98];
  v3[OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__navigationAppProcessMonitorConfigured] = 0;
  swift_unknownObjectUnownedInit();
  *&v3[OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__iconProvider] = a2;
  v6 = objc_allocWithZone(DBSceneWorkspace);
  swift_unknownObjectRetain();
  v7 = [v6 initWithIdentifier_];
  *&v3[OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__sceneWorkspace] = v7;
  v8 = [objc_allocWithZone(MEMORY[0x277D46F80]) init];
  *&v3[OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__navigationAppProcessMonitor] = v8;
  v20.receiver = v3;
  v20.super_class = type metadata accessor for DBDashboardSceneManager();
  v9 = objc_msgSendSuper2(&v20, sel_init);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v11 = v9;
  v12 = [Strong environmentConfiguration];
  swift_unknownObjectRelease();
  [v12 addObserver_];

  v13 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  v14 = [v13 processMonitor];

  [v14 addObserver_];
  v15 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  v16 = [v15 thermalMonitor];

  [v16 addObserver_];
  v17 = [objc_opt_self() sharedInstance];
  [v17 addObserver_];

  v18 = [objc_opt_self() defaultCenter];
  [v18 addObserver:v11 selector:sel__updateWallpaper name:*MEMORY[0x277CF91E8] object:0];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v11;
}

Swift::Void __swiftcall DBDashboardSceneManager.updateApplicationSceneFrames()()
{
  v1 = OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__applicationScenes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = sub_248384540() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v4 = ~v7;
    v3 = v2 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(v2 + 64);
    v6 = v2;
  }

  v10 = 0;
  v11 = 0;
  v12 = (v4 + 64) >> 6;
  v41 = v6;
  while (1)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      if (!sub_248384570())
      {
        goto LABEL_19;
      }

      sub_24814FB28(0, &qword_27EE91E40);
      swift_dynamicCast();
      v19 = aBlock[0];
      sub_24814FB28(0, &unk_27EE91E30);
      swift_dynamicCast();
      v20 = aBlock[0];
      v15 = v11;
      v42 = v5;
      if (!v19)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    v13 = v11;
    v14 = v5;
    v15 = v11;
    if (!v5)
    {
      break;
    }

LABEL_13:
    v42 = (v14 - 1) & v14;
    v16 = (v15 << 9) | (8 * __clz(__rbit64(v14)));
    v17 = *(*(v6 + 48) + v16);
    v18 = *(*(v6 + 56) + v16);
    v19 = v17;
    v20 = v18;
    if (!v19)
    {
      goto LABEL_19;
    }

LABEL_17:
    [swift_unknownObjectUnownedLoadStrong() sceneFrameForApplication_];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    [swift_unknownObjectUnownedLoadStrong() safeAreaInsetsForApplication_];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    v37 = swift_allocObject();
    v37[2] = v22;
    v37[3] = v24;
    v37[4] = v26;
    v37[5] = v28;
    v37[6] = v30;
    v37[7] = v32;
    v37[8] = v34;
    v37[9] = v36;
    sub_248167864(v10);
    v38 = swift_allocObject();
    v10 = sub_2482B8C68;
    *(v38 + 16) = sub_2482B8C68;
    *(v38 + 24) = v37;
    aBlock[4] = sub_2482BB938;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_248282F3C;
    aBlock[3] = &block_descriptor_12_0;
    v39 = _Block_copy(aBlock);

    [v20 updateSettingsWithBlock_];

    _Block_release(v39);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    v11 = v15;
    v6 = v41;
    v5 = v42;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_19:
      sub_248167908();
      sub_248167864(v10);
      return;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_19;
    }

    v14 = *(v3 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall DBDashboardSceneManager.startObservingNavigationApplicationProcesses()()
{
  if ((*(v0 + OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__navigationAppProcessMonitorConfigured) & 1) == 0)
  {
    v40 = objc_opt_self();
    v1 = [v40 sharedInstance];
    v2 = [v1 allApplications];

    sub_24814FB28(0, &qword_27EE91E40);
    v3 = sub_248383B10();

    aBlock[0] = MEMORY[0x277D84F90];
    if (v3 >> 62)
    {
      goto LABEL_39;
    }

    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v5 = MEMORY[0x277D84F90];
    if (v4)
    {
      v6 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x24C1CBA50](v6, v3);
        }

        else
        {
          if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v7 = *(v3 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          v4 = sub_248384360();
          goto LABEL_4;
        }

        v10 = [v7 appPolicy];
        if (v10)
        {
          v11 = v10;
          if ([v10 launchUsingTemplateUI])
          {
            v12 = [v11 applicationCategory];

            if (v12 == 8)
            {
              goto LABEL_6;
            }
          }

          else
          {
          }
        }

        v13 = v8;
        v14 = [v40 sharedInstance];
        v15 = [v14 mapsApplication];

        if (!v15)
        {

LABEL_21:
          goto LABEL_7;
        }

        v16 = sub_248384030();

        if ((v16 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_6:
        sub_2483844A0();
        sub_2483844D0();
        sub_2483844E0();
        sub_2483844B0();
LABEL_7:
        ++v6;
        if (v9 == v4)
        {
          v17 = aBlock[0];
          v5 = MEMORY[0x277D84F90];
          goto LABEL_25;
        }
      }
    }

    v17 = MEMORY[0x277D84F90];
LABEL_25:

    if (v17 < 0 || (v17 & 0x4000000000000000) != 0)
    {
      v18 = sub_248384360();
      if (v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v18 = *(v17 + 16);
      if (v18)
      {
LABEL_28:
        aBlock[0] = v5;
        sub_24822C8F0(0, v18 & ~(v18 >> 63), 0);
        if (v18 < 0)
        {
          goto LABEL_46;
        }

        v19 = 0;
        v20 = aBlock[0];
        do
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x24C1CBA50](v19, v17);
          }

          else
          {
            v21 = *(v17 + 8 * v19 + 32);
          }

          v22 = v21;
          v23 = [v21 bundleIdentifier];
          v24 = sub_248383960();
          v26 = v25;

          aBlock[0] = v20;
          v28 = *(v20 + 16);
          v27 = *(v20 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_24822C8F0((v27 > 1), v28 + 1, 1);
            v20 = aBlock[0];
          }

          ++v19;
          *(v20 + 16) = v28 + 1;
          v29 = v20 + 16 * v28;
          *(v29 + 32) = v24;
          *(v29 + 40) = v26;
        }

        while (v18 != v19);

LABEL_42:
        sub_2482B8D6C(v20);

        v30 = sub_248383C70();

        v31 = [objc_opt_self() predicateMatchingBundleIdentifiers_];

        v32 = *&v39[OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__navigationAppProcessMonitor];
        v33 = swift_allocObject();
        *(v33 + 16) = v31;
        *(v33 + 24) = v39;
        v34 = swift_allocObject();
        *(v34 + 16) = sub_2482B8E04;
        *(v34 + 24) = v33;
        aBlock[4] = sub_2482BB938;
        aBlock[5] = v34;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2482BB934;
        aBlock[3] = &block_descriptor_21_0;
        v35 = _Block_copy(aBlock);
        v36 = v31;
        v37 = v39;

        [v32 updateConfiguration_];

        _Block_release(v35);
        LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

        if ((v32 & 1) == 0)
        {
          v39[v38] = 1;

          return;
        }

        __break(1u);
LABEL_46:
        __break(1u);
        return;
      }
    }

    v20 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }
}

uint64_t sub_2482B4FAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

id DBDashboardSceneManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBDashboardSceneManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBDashboardSceneManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall DBDashboardSceneManager.invalidate()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__applicationScenes;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = sub_248384540() | 0x8000000000000000;
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
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v11;
  v13 = v6;
  v14 = v11;
  if (v6)
  {
LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v7 + 56) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_19:
      sub_248167908();
      [*(v1 + OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__sceneWorkspace) invalidate];
      v18 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
      swift_unknownObjectRelease();
      [v18 removeObserver_];

      v19 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
      swift_unknownObjectRelease();
      v20 = [v19 thermalMonitor];

      [v20 removeObserver_];
      v21 = [objc_opt_self() sharedInstance];
      [v21 removeObserver_];

      v22 = [objc_opt_self() defaultCenter];
      [v22 removeObserver_];

      [*(v1 + OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__navigationAppProcessMonitor) invalidate];
      *(v1 + OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__isInvalidated) = 1;
      return;
    }

    while (1)
    {
      aBlock[4] = sub_2482BB908;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_248282F3C;
      aBlock[3] = &block_descriptor_24;
      v17 = _Block_copy(aBlock);

      [v16 updateSettingsWithBlock_];
      _Block_release(v17);
      if (swift_isEscapingClosureAtFileLocation())
      {
        break;
      }

      [v16 invalidate];

      v11 = v14;
      v6 = v15;
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (sub_248384570())
      {
        swift_unknownObjectRelease();
        sub_24814FB28(0, &unk_27EE91E30);
        swift_dynamicCast();
        v16 = aBlock[0];
        v14 = v11;
        v15 = v6;
        if (aBlock[0])
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

  else
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= ((v5 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v13 = *(v4 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
}

id DBDashboardSceneManager.environmentConfiguration(_:appearanceStyleDidChange:)()
{
  sub_248383DC0();
  v0 = *sub_24827BD58();
  sub_248382A40();

  return sub_2482B56AC();
}

id sub_2482B56AC()
{
  v1 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  v2 = [v1 wallpaperPreferences];

  v3 = [v2 currentWallpaper];
  v4 = OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__applicationScenes;
  swift_beginAccess();
  v5 = *(v0 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v47 = 0;
    v6 = 0;
    v7 = 0;
    v8 = sub_248384540() | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(v5 + 32);
    v6 = ~v9;
    v47 = v5 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(v5 + 64);
    v8 = v5;
  }

  v13 = 0;
  v14 = 0;
  v15 = (v6 + 64) >> 6;
  v16 = &selRef_presentAppLink_;
  v50 = v3;
  v48 = v15;
  v49 = v8;
  while ((v8 & 0x8000000000000000) != 0)
  {
    if (!sub_248384570())
    {
      goto LABEL_29;
    }

    sub_24814FB28(0, &qword_27EE91E40);
    swift_dynamicCast();
    v23 = aBlock[0];
    sub_24814FB28(0, &unk_27EE91E30);
    swift_dynamicCast();
    v24 = aBlock[0];
    v19 = v14;
    v20 = v7;
    if (!v23)
    {
      goto LABEL_29;
    }

LABEL_17:
    v51 = v24;
    v54 = v23;
    Strong = swift_unknownObjectUnownedLoadStrong();
    if ([Strong respondsToSelector_])
    {
      v26 = [Strong v16[206]];
    }

    else
    {
      v26 = 2;
    }

    v27 = MEMORY[0x277D837D0];
    v52 = v20;
    swift_unknownObjectRelease();
    v53 = v13;
    if (v50)
    {
      v28 = [v50 traits];
      v29 = [v28 isBlack];

      if (v26 == 2)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v55 = v30;
    }

    else
    {
      v55 = 0;
    }

    sub_248383DC0();
    v31 = *sub_24827BDF0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_24839EA80;
    v33 = v31;
    v34 = CPUIDescriptionForUserInterfaceStyle();
    v35 = sub_248383960();
    v37 = v36;
    *(v32 + 56) = v27;
    v38 = sub_2482970D8();
    *(v32 + 64) = v38;
    *(v32 + 32) = v35;
    *(v32 + 40) = v37;
    result = NSStringFromBOOL();
    if (!result)
    {
      goto LABEL_31;
    }

    v39 = result;

    v40 = sub_248383960();
    v42 = v41;

    *(v32 + 96) = v27;
    *(v32 + 104) = v38;
    *(v32 + 72) = v40;
    *(v32 + 80) = v42;
    v43 = [v51 identity];
    *(v32 + 136) = sub_24814FB28(0, &unk_27EE92560);
    *(v32 + 144) = sub_248151298(&unk_27EE91ED0, &unk_27EE92560);
    *(v32 + 112) = v43;
    sub_248382A40();

    v44 = swift_allocObject();
    *(v44 + 16) = v26;
    *(v44 + 24) = v55;
    sub_248167864(v53);
    v45 = swift_allocObject();
    v13 = sub_2482BB828;
    *(v45 + 16) = sub_2482BB828;
    *(v45 + 24) = v44;
    aBlock[4] = sub_2482BB938;
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_248282F3C;
    aBlock[3] = &block_descriptor_82_0;
    v46 = _Block_copy(aBlock);

    [v51 updateSettingsWithBlock_];

    _Block_release(v46);
    LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

    v14 = v19;
    v7 = v52;
    v15 = v48;
    v8 = v49;
    v16 = &selRef_presentAppLink_;
    if (v46)
    {
      __break(1u);
LABEL_29:
      sub_248167908();
      swift_unknownObjectRelease();
      return sub_248167864(v13);
    }
  }

  v17 = v14;
  v18 = v7;
  v19 = v14;
  if (v7)
  {
LABEL_13:
    v20 = (v18 - 1) & v18;
    v21 = (v19 << 9) | (8 * __clz(__rbit64(v18)));
    v22 = *(*(v8 + 56) + v21);
    v23 = *(*(v8 + 48) + v21);
    v24 = v22;
    if (!v23)
    {
      goto LABEL_29;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v15)
    {
      goto LABEL_29;
    }

    v18 = *(v47 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_2482B5E5C(uint64_t a1)
{
  v4 = [objc_allocWithZone(DBActivationSettings) init];
  [v4 setSuspended_];
  v2 = [objc_allocWithZone(DBMutableWorkspaceStateChangeRequest) init];
  [v2 activateApplication:a1 withSettings:v4];
  v3 = [swift_unknownObjectUnownedLoadStrong() workspace];
  swift_unknownObjectRelease();
  if (v3)
  {
    [v3 requestStateChange_];
  }
}

Swift::Void __swiftcall DBDashboardSceneManager.thermalMonitorLevelDidChange(_:)(DBThermalMonitor *a1)
{
  v3 = sub_2483837A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2483837E0();
  v7 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24814FB28(0, &qword_27EE90280);
  v10 = sub_248383E50();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v1;
  aBlock[4] = sub_2482BADF0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24814C01C;
  aBlock[3] = &block_descriptor_30;
  v12 = _Block_copy(aBlock);
  v13 = a1;
  v14 = v1;

  sub_2483837C0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24815C970();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90290);
  sub_24815C9C8();
  sub_2483842D0();
  MEMORY[0x24C1CB440](0, v9, v6, v12);
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v16);
}

void DBDashboardSceneManager.scene(_:handle:)(void *a1, unint64_t a2)
{
  v2 = a2;
  v38[1] = MEMORY[0x277D84FA0];
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_248384320();
    sub_24814FB28(0, &unk_27EE91610);
    v3 = a1;
    sub_248151298(&qword_27EE90E30, &unk_27EE91610);
    sub_248383CB0();
    v2 = v38[2];
    v4 = v38[3];
    v5 = v38[4];
    v6 = v38[5];
    v7 = v38[6];
  }

  else
  {
    v3 = a1;
    v8 = -1 << *(a2 + 32);
    v4 = (a2 + 56);
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

    v7 = (v10 & *(a2 + 56));

    v6 = 0;
  }

  v33 = v5;
  v11 = (v5 + 64) >> 6;
  v36 = v2;
  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  if (!sub_248384390() || (sub_24814FB28(0, &unk_27EE91610), swift_dynamicCast(), v22 = v38[0], v20 = v6, v21 = v7, !v38[0]))
  {
LABEL_27:
    sub_248167908();
    return;
  }

  while (1)
  {
    v23 = [v22 UIActionType];
    if (v23 == 24)
    {
      v37 = v21;
      sub_248383DC0();
      v24 = *sub_24814FB80();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_24839C7F0;
      v26 = v24;
      v27 = [v3 identity];
      *(v25 + 56) = sub_24814FB28(0, &unk_27EE92560);
      *(v25 + 64) = sub_248151298(&unk_27EE91ED0, &unk_27EE92560);
      *(v25 + 32) = v27;
      sub_248382A40();

      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v29 = v28;
        v30 = *((*MEMORY[0x277D85000] & *v35) + 0x90);
        v31 = v22;
        v32 = v30();
        if (v32)
        {
          v3 = a1;
          [v32 handleFocusMovementAction:v29 fromScene:a1];

          swift_unknownObjectRelease();
        }

        else
        {

          v3 = a1;
        }
      }

LABEL_10:
      sub_2482B761C(v38, v22);

      v6 = v20;
      v2 = v36;
      v7 = v37;
      if ((v36 & 0x8000000000000000) != 0)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    if (v23 == 13)
    {
      v37 = v21;
      sub_248383DC0();
      v12 = *sub_24814FB80();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_24839C7F0;
      v14 = v12;
      v15 = [v3 identity];
      *(v13 + 56) = sub_24814FB28(0, &unk_27EE92560);
      *(v13 + 64) = sub_248151298(&unk_27EE91ED0, &unk_27EE92560);
      *(v13 + 32) = v15;
      sub_248382A40();

      v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
      v17 = [objc_opt_self() eventWithType:1 context:v16];

      [swift_unknownObjectUnownedLoadStrong() handleEvent_];
      swift_unknownObjectRelease();

      goto LABEL_10;
    }

    v6 = v20;
    v7 = v21;
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    v18 = v6;
    v19 = v7;
    v20 = v6;
    if (!v7)
    {
      break;
    }

LABEL_15:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v2 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v22)
    {
      goto LABEL_27;
    }
  }

  while (1)
  {
    v20 = (v18 + 1);
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v11)
    {
      goto LABEL_27;
    }

    v19 = v4[v20];
    ++v18;
    if (v19)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_2482B6A68(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_24814C91C(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_2482B7068(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_2482B736C();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_248384560();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_248384360();
  v8 = sub_2482B6BB4(v4, v7);

  v9 = sub_24814C91C(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_2482B7068(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_2482B6BB4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE926A0);
    v2 = sub_2483845E0();
    v19 = v2;
    sub_248384540();
    v3 = sub_248384570();
    if (v3)
    {
      v4 = v3;
      sub_24814FB28(0, &qword_27EE91E40);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_24814FB28(0, &unk_27EE91E30);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_2482B6E00(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_248384020();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_248384570();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_2482B6E00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE926A0);
  result = sub_2483845D0();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_248384020();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void sub_2482B7068(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2483842F0() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_248384020();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

id sub_2482B71F4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_24814C91C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_2482B6E00(v13, a3 & 1);
      v8 = sub_24814C91C(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_24814FB28(0, &qword_27EE91E40);
        sub_2483846E0();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v16 = v8;
      sub_2482B736C();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return a2;
}

id sub_2482B736C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE926A0);
  v2 = *v0;
  v3 = sub_2483845C0();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

uint64_t sub_2482B74CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_248384780();
  sub_2483839E0();
  v8 = sub_2483847B0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_248384680() & 1) != 0)
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

    sub_2482B7ECC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2482B761C(void *a1, void *a2)
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

    v9 = sub_248384370();

    if (v9)
    {

      sub_24814FB28(0, &unk_27EE91610);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_248384360();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_2482B7854(v7, result + 1);
    if (*(v19 + 24) <= *(v19 + 16))
    {
      sub_2482B7CA4();
    }

    v18 = v8;
    sub_248273128(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_24814FB28(0, &unk_27EE91610);
  v11 = sub_248384020();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_2482B804C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_248384030();

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

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_2482B7854(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91650);
    v2 = sub_248384410();
    v14 = v2;
    sub_248384320();
    if (sub_248384390())
    {
      sub_24814FB28(0, &unk_27EE91610);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_2482B7CA4();
        }

        v2 = v14;
        result = sub_248384020();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_248384390());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2482B7A44()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE91CF0);
  result = sub_248384400();
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
      sub_248384780();
      sub_2483839E0();
      result = sub_2483847B0();
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

uint64_t sub_2482B7CA4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91650);
  result = sub_248384400();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_248384020();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
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

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_2482B7ECC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_2482B7A44();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2482B81BC();
      goto LABEL_16;
    }

    sub_2482B8468();
  }

  v10 = *v4;
  sub_248384780();
  sub_2483839E0();
  result = sub_2483847B0();
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

      result = sub_248384680();
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
  result = sub_2483846D0();
  __break(1u);
  return result;
}

void sub_2482B804C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2482B7CA4();
  }

  else
  {
    if (v7 > v6)
    {
      sub_2482B8318();
      goto LABEL_12;
    }

    sub_2482B86A0();
  }

  v8 = *v3;
  v9 = sub_248384020();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_24814FB28(0, &unk_27EE91610);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_248384030();

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
  sub_2483846D0();
  __break(1u);
}

void *sub_2482B81BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE91CF0);
  v2 = *v0;
  v3 = sub_2483843F0();
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

id sub_2482B8318()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91650);
  v2 = *v0;
  v3 = sub_2483843F0();
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

uint64_t sub_2482B8468()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE91CF0);
  result = sub_248384400();
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
      sub_248384780();

      sub_2483839E0();
      result = sub_2483847B0();
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

uint64_t sub_2482B86A0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91650);
  result = sub_248384400();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_248384020();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v23;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
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

void *sub_2482B88B4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, id))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_2482B97B0(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_2482B8944(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE926A0);
  result = sub_2483845F0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v30 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = v4;
    v18 = *(*(v4 + 48) + 8 * v16);
    v19 = *(*(v4 + 56) + 8 * v16);
    v20 = v18;
    v31 = v19;
    result = sub_248384020();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      v4 = v17;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
    v4 = v17;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v9 + 48) + 8 * v24) = v20;
    *(*(v9 + 56) + 8 * v24) = v31;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v10 = v30;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v30 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_2482B8B74(void *a1)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = sub_248383930();
  [a1 setIdentifier_];

  v6 = [v4 info];
  v7 = [v6 processIdentity];

  if (v7)
  {
    v8 = [objc_opt_self() defaultIdentityForProcessIdentity_];

    [a1 setClientIdentity_];

    [a1 setSpecification_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2482B8C68(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v13 = a1;
    [v12 setFrame_];
    [v12 setSafeAreaInsetsPortrait_];
  }
}

uint64_t sub_2482B8D6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C1CB280](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2482B74CC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_2482B8E04(void *a1)
{
  v3 = *(v1 + 16);
  [a1 setServiceClass_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24839C700;
  *(v4 + 32) = v3;
  sub_24814FB28(0, &unk_27EE922A0);
  v5 = v3;
  v6 = sub_248383B00();

  [a1 setPredicates_];

  v7 = [objc_allocWithZone(MEMORY[0x277D46FB0]) init];
  [a1 setStateDescriptor_];

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_24815C680;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24815C5E0;
  v10[3] = &block_descriptor_88;
  v9 = _Block_copy(v10);

  [a1 setUpdateHandler_];
  _Block_release(v9);
}

void _s9DashBoard23DBDashboardSceneManagerC21applicationController_17addedApplications07updatedI007removedI0ySo013DBApplicationG0C_ShySo0L0CGA2LtF_0()
{
  v1 = OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__applicationScenes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = sub_248384540() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v4 = ~v7;
    v3 = v2 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(v2 + 64);
    v6 = v2;
  }

  v10 = 0;
  v22 = v4;
  v11 = (v4 + 64) >> 6;
  while ((v6 & 0x8000000000000000) != 0)
  {
    if (!sub_248384570() || (v21 = v20, sub_24814FB28(0, &qword_27EE91E40), swift_dynamicCast(), v18 = v24, v23 = v21, sub_24814FB28(0, &unk_27EE91E30), swift_dynamicCast(), v19 = v24, v14 = v10, v15 = v5, !v24))
    {
LABEL_20:
      sub_248167908();
      return;
    }

LABEL_18:
    if ([v18 isLockedOrHidden])
    {
      [v19 invalidate];
    }

    v10 = v14;
    v5 = v15;
  }

  v12 = v10;
  v13 = v5;
  v14 = v10;
  if (v5)
  {
LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v13)));
    v17 = *(*(v6 + 56) + v16);
    v18 = *(*(v6 + 48) + v16);
    v19 = v17;
    if (!v18)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_20;
    }

    v13 = *(v3 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_2482B91E8(uint64_t a1)
{
  sub_248383DC0();
  v2 = *sub_24827BD58();
  sub_248382A40();

  v3 = OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__applicationScenes;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = sub_248384540() | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v6 = ~v9;
    v5 = v4 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(v4 + 64);
    v8 = v4;
  }

  v37 = 0;
  v13 = 0;
  v14 = (v6 + 64) >> 6;
  v35 = xmmword_24839CCA0;
  v38 = v8;
LABEL_8:
  v15 = v13;
  v16 = v7;
  if ((v8 & 0x8000000000000000) != 0)
  {
    while (sub_248384570())
    {
      swift_unknownObjectRelease();
      sub_24814FB28(0, &unk_27EE91E30);
      swift_dynamicCast();
      v19 = aBlock[0];
      v13 = v15;
      v7 = v16;
      if (!aBlock[0])
      {
        break;
      }

LABEL_17:
      v20 = [v19 settings];
      aBlock[6] = &unk_285B71FF0;
      v21 = swift_dynamicCastObjCProtocolConditional();

      sub_248383DC0();
      v22 = *sub_24827BDF0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
      if (v21)
      {
        v26 = swift_allocObject();
        *(v26 + 16) = v35;
        v39 = v22;
        v27 = CPUIDescriptionForUserInterfaceStyle();
        v28 = sub_248383960();
        v30 = v29;

        *(v26 + 56) = MEMORY[0x277D837D0];
        *(v26 + 64) = sub_2482970D8();
        *(v26 + 32) = v28;
        *(v26 + 40) = v30;
        v31 = [v19 identity];
        *(v26 + 96) = sub_24814FB28(0, &unk_27EE92560);
        *(v26 + 104) = sub_248151298(&unk_27EE91ED0, &unk_27EE92560);
        *(v26 + 72) = v31;
        sub_248382A40();

        v32 = swift_allocObject();
        *(v32 + 16) = a1;
        sub_248167864(v37);
        v33 = swift_allocObject();
        v37 = sub_2482BB7D4;
        *(v33 + 16) = sub_2482BB7D4;
        *(v33 + 24) = v32;
        aBlock[4] = sub_2482BB938;
        aBlock[5] = v33;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_248282F3C;
        aBlock[3] = &block_descriptor_72;
        v34 = _Block_copy(aBlock);

        [v19 updateSettingsWithBlock_];

        _Block_release(v34);
        LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

        v8 = v38;
        if ((v34 & 1) == 0)
        {
          goto LABEL_8;
        }

        __break(1u);
        goto LABEL_22;
      }

      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_24839C7F0;
      v24 = v22;
      v25 = [v19 identity];
      *(v23 + 56) = sub_24814FB28(0, &unk_27EE92560);
      *(v23 + 64) = sub_248151298(&unk_27EE91ED0, &unk_27EE92560);
      *(v23 + 32) = v25;
      sub_248382A40();

      v15 = v13;
      v8 = v38;
      v16 = v7;
      if ((v38 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_22;
  }

LABEL_9:
  v17 = v15;
  v18 = v16;
  v13 = v15;
  if (v16)
  {
LABEL_13:
    v7 = (v18 - 1) & v18;
    v19 = *(*(v8 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v18)))));
    if (v19)
    {
      goto LABEL_17;
    }

LABEL_22:
    sub_248167908();
    return sub_248167864(v37);
  }

  while (1)
  {
    v13 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v13 >= v14)
    {
      goto LABEL_22;
    }

    v18 = *(v5 + 8 * v13);
    ++v17;
    if (v18)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_2482B97B0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, id))
{
  v20 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 56) + 8 * v13);
    v15 = *(*(a3 + 48) + 8 * v13);
    v16 = v14;
    LOBYTE(v14) = a4(v15, v16);

    if (v14)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_15:
        sub_2482B8944(a1, a2, v20, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_2482B9914(uint64_t a1, uint64_t (*a2)(id, id))
{
  v4 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      sub_2482B88B4(v9, v6, v4, a2);
      MEMORY[0x24C1CD5F0](v9, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v8 = v10 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_2482B97B0(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }
}

uint64_t sub_2482B9A94(uint64_t a1, uint64_t (*a2)(id, id))
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x277D84F98];
    v24 = MEMORY[0x277D84F98];
    sub_248384540();
    v4 = sub_248384570();
    if (v4)
    {
      v5 = v4;
      sub_24814FB28(0, &qword_27EE91E40);
      v6 = v5;
      do
      {
        v22 = v6;
        swift_dynamicCast();
        sub_24814FB28(0, &unk_27EE91E30);
        swift_dynamicCast();
        if (!v23)
        {
          break;
        }

        v7 = v23;
        v8 = v22;
        v9 = a2(v7, v8);

        if (v9)
        {
          v10 = *(v3 + 16);
          if (*(v3 + 24) <= v10)
          {
            sub_2482B6E00(v10 + 1, 1);
          }

          v3 = v24;
          result = sub_248384020();
          v12 = v24 + 64;
          v13 = -1 << *(v24 + 32);
          v14 = result & ~v13;
          v15 = v14 >> 6;
          if (((-1 << v14) & ~*(v24 + 64 + 8 * (v14 >> 6))) != 0)
          {
            v16 = __clz(__rbit64((-1 << v14) & ~*(v24 + 64 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v17 = 0;
            v18 = (63 - v13) >> 6;
            do
            {
              if (++v15 == v18 && (v17 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v19 = v15 == v18;
              if (v15 == v18)
              {
                v15 = 0;
              }

              v17 |= v19;
              v20 = *(v12 + 8 * v15);
            }

            while (v20 == -1);
            v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          }

          *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
          *(*(v24 + 48) + 8 * v16) = v7;
          *(*(v24 + 56) + 8 * v16) = v8;
          ++*(v24 + 16);
        }

        else
        {
        }

        v6 = sub_248384570();
      }

      while (v6);
    }

    sub_248167908();
  }

  else
  {
    sub_2482B9914(a1, a2);
    v3 = v21;
  }

  return v3;
}

void sub_2482B9D34(uint64_t a1, uint64_t a2)
{
  sub_248383DC0();
  v65 = sub_24827BD58();
  v4 = *v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24839CCA0;
  v6 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  v7 = sub_2482970D8();
  *(v5 + 64) = v7;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  v8 = v4;

  v9 = NSStringFromBOOL();
  if (!v9)
  {
    goto LABEL_40;
  }

  v10 = v9;
  v11 = sub_248383960();
  v13 = v12;

  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  v63 = v7;
  *(v5 + 72) = v11;
  *(v5 + 80) = v13;
  sub_248382A40();

  v15 = a1;
  v16 = v6;
  if (sub_248383960() == a1 && v14 == a2)
  {

    v18 = v64;
    v17 = v65;
LABEL_6:
    sub_248383DC0();
    v20 = *v17;
    sub_248382A40();

    v21 = [objc_opt_self() sharedInstance];
    v22 = [v21 templateUIHostApplication];

    if (v22)
    {
      v23 = [v22 info];

      v24 = [v23 processIdentity];
    }

    else
    {
      v24 = 0;
    }

    v62 = a2;
    v25 = OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__applicationScenes;
    swift_beginAccess();
    MEMORY[0x28223BE20](*(v18 + v25));

    v27 = sub_2482B9A94(v26, sub_2482BB6FC);
    v28 = v27;
    v61 = v24;
    if ((v27 & 0xC000000000000001) != 0)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v28 = sub_248384540() | 0x8000000000000000;
    }

    else
    {
      v32 = -1 << *(v27 + 32);
      v29 = v27 + 64;
      v30 = ~v32;
      v33 = -v32;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      else
      {
        v34 = -1;
      }

      v31 = v34 & *(v27 + 64);
    }

    v35 = 0;
    if ((v28 & 0x8000000000000000) != 0)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v36 = v35;
      v37 = v31;
      v38 = v35;
      if (!v31)
      {
        break;
      }

LABEL_20:
      v39 = (v37 - 1) & v37;
      v40 = *(*(v28 + 56) + ((v38 << 9) | (8 * __clz(__rbit64(v37)))));
      if (!v40)
      {
LABEL_26:
        sub_248167908();

        v18 = v64;
        v17 = v65;
        v15 = a1;
        a2 = v62;
        v16 = MEMORY[0x277D837D0];
        v7 = v63;
        goto LABEL_27;
      }

      while (1)
      {
        [v40 invalidate];

        v35 = v38;
        v31 = v39;
        if ((v28 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_22:
        if (sub_248384570())
        {
          v42 = v41;
          swift_unknownObjectRelease();
          aBlock[6] = v42;
          sub_24814FB28(0, &unk_27EE91E30);
          swift_dynamicCast();
          v40 = aBlock[0];
          v38 = v35;
          v39 = v31;
          if (aBlock[0])
          {
            continue;
          }
        }

        goto LABEL_26;
      }
    }

    while (1)
    {
      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v38 >= ((v30 + 64) >> 6))
      {
        goto LABEL_26;
      }

      v37 = *(v29 + 8 * v38);
      ++v36;
      if (v37)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

  v19 = sub_248384680();

  v18 = v64;
  v17 = v65;
  if (v19)
  {
    goto LABEL_6;
  }

LABEL_27:
  v43 = [objc_opt_self() sharedInstance];
  v44 = a2;
  v45 = sub_248383930();
  v46 = [v43 applicationWithBundleIdentifier_];

  if (v46)
  {
    v47 = [v46 appPolicy];
    if (v47)
    {
      v48 = v47;
      if ([v47 launchUsingTemplateUI])
      {
        sub_248383DC0();
        v49 = *v17;
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_24839C7F0;
        *(v50 + 56) = v16;
        *(v50 + 64) = v7;
        *(v50 + 32) = v15;
        *(v50 + 40) = v44;

        v51 = v49;
        sub_248382A40();

        v52 = OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__applicationScenes;
        swift_beginAccess();
        v53 = *(v18 + v52);

        v54 = sub_24814C858(v46, v53);

        if (v54)
        {
          sub_248383DC0();
          v55 = *v65;
          v56 = swift_allocObject();
          *(v56 + 16) = xmmword_24839C7F0;
          v57 = v55;
          v58 = [v54 identity];
          *(v56 + 56) = sub_24814FB28(0, &unk_27EE92560);
          *(v56 + 64) = sub_248151298(&unk_27EE91ED0, &unk_27EE92560);
          *(v56 + 32) = v58;
          sub_248382A40();

          aBlock[4] = sub_2482BB908;
          aBlock[5] = 0;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_248282F3C;
          aBlock[3] = &block_descriptor_61;
          v59 = _Block_copy(aBlock);

          [v54 updateSettingsWithBlock_];
          _Block_release(v59);
          if (swift_isEscapingClosureAtFileLocation())
          {
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
            return;
          }

          [v54 invalidate];
        }

        v60 = v48;
      }

      else
      {
        v60 = v46;
        v46 = v48;
      }
    }
  }
}

void sub_2482BA4C8(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_248384360())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92288);
      v3 = sub_248384420();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_248384360();
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
      v8 = MEMORY[0x24C1CBA50](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_248384020();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_24814FB28(0, &qword_27EE92270);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_248384030();

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
      v24 = sub_248384020();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_24814FB28(0, &qword_27EE92270);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_248384030();

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

void sub_2482BA7B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_248383DC0();
  v43 = sub_24827BD58();
  v6 = *v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24839C7F0;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_2482970D8();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  v8 = v6;

  sub_248382A40();

  if (sub_248383960() == a1 && v9 == a2)
  {
  }

  else
  {
    v11 = sub_248384680();

    if ((v11 & 1) == 0)
    {
      return;
    }
  }

  v12 = [*(v3 + OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__navigationAppProcessMonitor) states];
  if (!v12)
  {
    if (MEMORY[0x277D84F90] >> 62 && sub_248384360())
    {
      sub_2482BA4C8(MEMORY[0x277D84F90]);
      v14 = v19;
      if ((v19 & 0xC000000000000001) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v14 = MEMORY[0x277D84FA0];
      if ((MEMORY[0x277D84FA0] & 0xC000000000000001) != 0)
      {
        goto LABEL_13;
      }
    }

LABEL_16:
    v17 = 0;
    v20 = -1 << *(v14 + 32);
    v15 = v14 + 56;
    v16 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v18 = v22 & *(v14 + 56);
    goto LABEL_20;
  }

  v13 = v12;
  sub_24814FB28(0, &qword_27EE92270);
  sub_248151298(&qword_27EE92278, &qword_27EE92270);
  v14 = sub_248383C80();

  if ((v14 & 0xC000000000000001) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  sub_248384320();
  sub_24814FB28(0, &qword_27EE92270);
  sub_248151298(&qword_27EE92278, &qword_27EE92270);
  sub_248383CB0();
  v14 = v45;
  v15 = v46;
  v16 = v47;
  v17 = v48;
  v18 = v49;
LABEL_20:
  v23 = (v16 + 64) >> 6;
  v24 = &selRef_isEnabled;
  while (v14 < 0)
  {
    if (!sub_248384390() || (sub_24814FB28(0, &qword_27EE92270), swift_dynamicCast(), (v27 = v44) == 0))
    {
LABEL_39:
      sub_248167908();
      return;
    }

LABEL_32:
    if ([v27 v24[66]])
    {
      v28 = [v27 process];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 bundle];

        v24 = &selRef_isEnabled;
        if (v30)
        {
          v31 = [v30 identifier];

          if (v31)
          {
            v32 = [objc_opt_self() sharedInstance];
            v33 = [v32 applicationWithBundleIdentifier_];

            v24 = &selRef_isEnabled;
            if (v33)
            {
              sub_248383DC0();
              v40 = *v43;
              v42 = v3;
              v34 = swift_allocObject();
              *(v34 + 16) = xmmword_24839C7F0;
              *(v34 + 56) = sub_24814FB28(0, &qword_27EE91E40);
              *(v34 + 64) = sub_248151298(&qword_27EE92280, &qword_27EE91E40);
              *(v34 + 32) = v33;
              v35 = v40;
              v36 = v33;
              sub_248382A40();

              v37 = [objc_allocWithZone(DBActivationSettings) init];
              [v37 setSuspended_];
              v38 = [objc_allocWithZone(DBMutableWorkspaceStateChangeRequest) init];
              v41 = v36;
              [v38 activateApplication:v36 withSettings:v37];
              v39 = [swift_unknownObjectUnownedLoadStrong() workspace];
              swift_unknownObjectRelease();
              if (v39)
              {
                [v39 requestStateChange_];
              }

              v3 = v42;
              v24 = &selRef_isEnabled;
            }
          }
        }
      }
    }
  }

  v25 = v17;
  v26 = v18;
  if (v18)
  {
LABEL_28:
    v18 = (v26 - 1) & v26;
    v27 = *(*(v14 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v26)))));
    if (!v27)
    {
      goto LABEL_39;
    }

    goto LABEL_32;
  }

  while (1)
  {
    v17 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v17 >= v23)
    {
      goto LABEL_39;
    }

    v26 = *(v15 + 8 * v17);
    ++v25;
    if (v26)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
}

void sub_2482BADF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_248383DC0();
  v41 = sub_24827BD58();
  v3 = *v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24839C7F0;
  v5 = v3;
  v6 = NSStringFromDBThermalLevel([v1 level]);
  v7 = sub_248383960();
  v9 = v8;

  *(v4 + 56) = MEMORY[0x277D837D0];
  v40 = sub_2482970D8();
  *(v4 + 64) = v40;
  *(v4 + 32) = v7;
  *(v4 + 40) = v9;
  sub_248382A40();

  v10 = [v1 suggestedFrameRateLimit];
  v11 = OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__applicationScenes;
  swift_beginAccess();
  v12 = *(v2 + v11);
  v42 = v10;
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = sub_248384540();
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = v13 | 0x8000000000000000;
  }

  else
  {
    v18 = -1 << *(v12 + 32);
    v15 = ~v18;
    v14 = v12 + 64;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v16 = v20 & *(v12 + 64);
    v17 = v12;
  }

  v21 = (v15 + 64) >> 6;

  v43 = 0;
  v22 = 0;
LABEL_8:
  v23 = v22;
  v24 = v16;
  if ((v17 & 0x8000000000000000) != 0)
  {
    while (sub_248384570())
    {
      swift_unknownObjectRelease();
      sub_24814FB28(0, &unk_27EE91E30);
      swift_dynamicCast();
      v27 = aBlock;
      v22 = v23;
      v16 = v24;
      if (!aBlock)
      {
        break;
      }

LABEL_17:
      v28 = [v27 settings];
      v49 = &unk_285B720C8;
      v29 = swift_dynamicCastObjCProtocolConditional();

      if (v29)
      {
        sub_248383DC0();
        v30 = *v41;
        v31 = swift_allocObject();
        v32 = v31;
        *(v31 + 16) = xmmword_24839CCA0;
        if (v42)
        {
          v46 = sub_24814FB28(0, &qword_27EE90740);
          v47 = sub_248151298(&qword_27EE92208, &qword_27EE90740);
          *&aBlock = v42;
          sub_24814F6F4(&aBlock, (v32 + 4));
        }

        else
        {
          *(v31 + 56) = MEMORY[0x277D837D0];
          *(v31 + 64) = v40;
          *(v31 + 32) = 0x296C6C756E28;
          *(v31 + 40) = 0xE600000000000000;
        }

        v38 = v30;
        v39 = v42;
        v33 = [v27 identity];
        v32[12] = sub_24814FB28(0, &unk_27EE92560);
        v32[13] = sub_248151298(&unk_27EE91ED0, &unk_27EE92560);
        v32[9] = v33;
        sub_248382A40();

        v34 = swift_allocObject();
        *(v34 + 16) = v42;
        v35 = v39;
        sub_248167864(v43);
        v36 = swift_allocObject();
        v43 = sub_2482BB6A8;
        *(v36 + 16) = sub_2482BB6A8;
        *(v36 + 24) = v34;
        v47 = sub_2482BB938;
        v48 = v36;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v45 = sub_248282F3C;
        v46 = &block_descriptor_58;
        v37 = _Block_copy(&aBlock);

        [v27 updateSettingsWithBlock_];

        _Block_release(v37);
        LODWORD(v37) = swift_isEscapingClosureAtFileLocation();

        if (v37)
        {
          __break(1u);
          goto LABEL_25;
        }

        goto LABEL_8;
      }

      v23 = v22;
      v24 = v16;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_25;
  }

LABEL_9:
  v25 = v23;
  v26 = v24;
  v22 = v23;
  if (v24)
  {
LABEL_13:
    v16 = (v26 - 1) & v26;
    v27 = *(*(v17 + 56) + ((v22 << 9) | (8 * __clz(__rbit64(v26)))));
    if (v27)
    {
      goto LABEL_17;
    }

LABEL_25:
    sub_248167908();

    sub_248167864(v43);
    return;
  }

  while (1)
  {
    v22 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
      goto LABEL_25;
    }

    v26 = *(v14 + 8 * v22);
    ++v25;
    if (v26)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void _s9DashBoard23DBDashboardSceneManagerC18sceneDidInvalidate_7contextySo7FBSceneC_So25FBSSceneTransitionContextCSgtF_0()
{
  v1 = OBJC_IVAR____TtC9DashBoard23DBDashboardSceneManager__applicationScenes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = sub_248384540() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v4 = ~v7;
    v3 = v2 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(v2 + 64);
    v6 = v2;
  }

  swift_bridgeObjectRetain_n();
  v10 = 0;
  v11 = (v4 + 64) >> 6;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v10;
  v13 = v5;
  v14 = v10;
  if (v5)
  {
LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v13)));
    v17 = *(*(v6 + 56) + v16);
    v18 = *(*(v6 + 48) + v16);
    v19 = v17;
    if (v18)
    {
      while (1)
      {
        sub_24814FB28(0, &qword_27EE92190);
        if (sub_248384030())
        {
          break;
        }

        v10 = v14;
        v5 = v15;
        if ((v6 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_248384570())
        {
          sub_24814FB28(0, &qword_27EE91E40);
          swift_dynamicCast();
          v18 = v22;
          sub_24814FB28(0, &unk_27EE91E30);
          swift_dynamicCast();
          v19 = v22;
          v14 = v10;
          v15 = v5;
          if (v22)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      sub_248167908();

      swift_beginAccess();
      v20 = v18;
      v21 = sub_2482B6A68(v20);
      swift_endAccess();
    }

    else
    {
LABEL_19:
      sub_248167908();
    }
  }

  else
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_19;
      }

      v13 = *(v3 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

id sub_2482BB6A8()
{
  v1 = *(v0 + 16);
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    return [result setFrameRateLimit_];
  }

  return result;
}

uint64_t sub_2482BB6FC(int a1, id a2)
{
  v3 = *(v2 + 16);
  v4 = [a2 definition];
  v5 = [v4 clientIdentity];

  v6 = [v5 processIdentity];
  v7 = v3 == 0;
  if (v6)
  {
    if (v3)
    {
      sub_24814FB28(0, &unk_27EE92290);
      v8 = v3;
      v7 = sub_248384030();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

id sub_2482BB7D4()
{
  v1 = *(v0 + 16);
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    return [result setMapStyle_];
  }

  return result;
}

void sub_2482BB828(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    [v6 setUserInterfaceStyle_];
    [v6 setBlackWallpaperModeEnabled_];
  }
}

id DBVoiceControlWindow.__allocating_init(windowScene:frame:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = a1;
  v5 = sub_24832C6D0(v4, 10);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  [v7 setBackgroundColor_];

  [v7 setUserInteractionEnabled_];
  return v7;
}

id DBVoiceControlWindow.init(windowScene:frame:)(void *a1)
{
  v1 = a1;
  v2 = sub_24832C6D0(v1, 10);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor_];

  [v4 setUserInteractionEnabled_];
  return v4;
}

id DBVoiceControlWindow.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBVoiceControlWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2482BBC70()
{
  v1 = [v0 layer];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

id DBWidgetStackMaskView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void *DBWidgetStackMaskView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC9DashBoard21DBWidgetStackMaskView_presenting] = 0;
  v38.receiver = v4;
  v38.super_class = type metadata accessor for DBWidgetStackMaskView();
  v9 = objc_msgSendSuper2(&v38, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = *((*MEMORY[0x277D85000] & *v9) + 0x70);
  v11 = v9;
  v12 = v10();
  if (v12)
  {
    v13 = v12;
    [v12 setFrame_];
  }

  v14 = v10();
  if (v14)
  {
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92CF0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_24839F1A0;
    v17 = objc_opt_self();
    v37 = v10;
    v18 = [v17 blackColor];
    v19 = [v18 CGColor];

    type metadata accessor for CGColor();
    v21 = v20;
    *(v16 + 56) = v20;
    *(v16 + 32) = v19;
    v22 = [v17 clearColor];
    v23 = [v22 CGColor];

    *(v16 + 88) = v21;
    *(v16 + 64) = v23;
    v24 = [v17 clearColor];
    v25 = [v24 CGColor];

    *(v16 + 120) = v21;
    *(v16 + 96) = v25;
    v26 = [v17 blackColor];
    v27 = [v26 CGColor];

    *(v16 + 152) = v21;
    v10 = v37;
    *(v16 + 128) = v27;
    v28 = sub_248383B00();

    [v15 setColors_];
  }

  v29 = v10();
  if (v29)
  {
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_24839CCB0;
    sub_24814FB28(0, &qword_27EE90740);
    *(v31 + 32) = sub_248384010();
    *(v31 + 40) = sub_248384010();
    *(v31 + 48) = sub_248384010();
    *(v31 + 56) = sub_248384010();
    v32 = sub_248383B00();

    [v30 setLocations_];
  }

  v33 = v10();
  if (v33)
  {
    v34 = v33;
    v35 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
    [v34 setCompositingFilter_];
  }

  return v11;
}

id DBWidgetStackMaskView.__deallocating_deinit()
{
  v1 = v0;
  v2 = [v1 layer];
  [v2 removeAllAnimations];

  v4.receiver = v1;
  v4.super_class = type metadata accessor for DBWidgetStackMaskView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_2482BC298()
{
  *(v0 + OBJC_IVAR____TtC9DashBoard21DBWidgetStackMaskView_presenting) = 0;
  sub_248384580();
  __break(1u);
}

Swift::Void __swiftcall DBWidgetStackMaskView.present()()
{
  v1 = v0;
  v2 = sub_248382A90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC9DashBoard21DBWidgetStackMaskView_presenting;
  if ((*(v1 + OBJC_IVAR____TtC9DashBoard21DBWidgetStackMaskView_presenting) & 1) == 0)
  {
    v7 = sub_24814A31C();
    (*(v3 + 16))(v5, v7, v2);
    v8 = sub_248382A80();
    v9 = sub_248383D80();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_248146000, v8, v9, "Presenting mask", v10, 2u);
      MEMORY[0x24C1CD5F0](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v11 = sub_2482BC738();
    [v11 setDelegate_];
    v12 = [v1 layer];
    v13 = sub_248383930();
    [v12 addAnimation:v11 forKey:v13];

    *(v1 + v6) = 1;
  }
}

Swift::Void __swiftcall DBWidgetStackMaskView.dismiss()()
{
  v1 = v0;
  v2 = sub_248382A90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC9DashBoard21DBWidgetStackMaskView_presenting;
  if (*(v1 + OBJC_IVAR____TtC9DashBoard21DBWidgetStackMaskView_presenting) == 1)
  {
    v7 = sub_24814A31C();
    (*(v3 + 16))(v5, v7, v2);
    v8 = sub_248382A80();
    v9 = sub_248383D80();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_248146000, v8, v9, "Dismissing mask", v10, 2u);
      MEMORY[0x24C1CD5F0](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v11 = sub_2482BC9EC();
    v12 = [v1 layer];
    v13 = sub_248383930();
    [v12 addAnimation:v11 forKey:v13];

    *(v1 + v6) = 0;
  }
}

id sub_2482BC738()
{
  v1 = sub_248383930();
  v2 = [objc_opt_self() animationWithKeyPath_];

  [v2 setDamping_];
  [v2 setMass_];
  [v2 setStiffness_];
  [v2 setInitialVelocity_];
  [v2 setDuration_];
  v3 = [v0 layer];
  v4 = [v3 presentationLayer];

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      v7 = v2;
      v8 = [v6 locations];
      [v7 setFromValue_];

      v4 = v8;
    }
  }

  v9 = [v0 layer];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_24839CCB0;
    sub_24814FB28(0, &qword_27EE90740);
    v13 = v9;
    *(v12 + 32) = sub_248384010();
    *(v12 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    *(v12 + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    *(v12 + 56) = sub_248384010();
    v14 = sub_248383B00();

    [v11 setLocations_];
  }

  return v2;
}

id sub_2482BC9EC()
{
  v1 = sub_248383930();
  v2 = [objc_opt_self() animationWithKeyPath_];

  [v2 setDamping_];
  [v2 setMass_];
  [v2 setStiffness_];
  [v2 setInitialVelocity_];
  [v2 setDuration_];
  v3 = [v0 layer];
  v4 = [v3 presentationLayer];

  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      v7 = v2;
      v8 = [v6 locations];
      [v7 setFromValue_];

      v4 = v8;
    }
  }

  v9 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))();
  if (v9)
  {
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_24839CCB0;
    sub_24814FB28(0, &qword_27EE90740);
    *(v11 + 32) = sub_248384010();
    *(v11 + 40) = sub_248384010();
    *(v11 + 48) = sub_248384010();
    *(v11 + 56) = sub_248384010();
    v12 = sub_248383B00();

    [v10 setLocations_];
  }

  return v2;
}

Swift::Void __swiftcall DBWidgetStackMaskView.animationDidStop(_:finished:)(CAAnimation _, Swift::Bool finished)
{
  if ((_._attr & 1) != 0 && *(v2 + OBJC_IVAR____TtC9DashBoard21DBWidgetStackMaskView_presenting) == 1)
  {
    (*((*MEMORY[0x277D85000] & *v2) + 0x80))();
  }
}

uint64_t DBIconManager.listLayoutProvider.setter()
{
  type metadata accessor for DBIconListLayoutProvider();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    *(v0 + OBJC_IVAR____TtC9DashBoard13DBIconManager__listLayoutProvider) = v1;
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t variable initialization expression of DBIconManager.iconPrecacheHighPriorityQueue()
{
  v7 = sub_248383E40();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_248383E20();
  MEMORY[0x28223BE20](v3);
  v4 = sub_2483837E0();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_24814FB28(0, &qword_27EE90280);
  sub_2483837D0();
  v8 = MEMORY[0x277D84F90];
  sub_24814BF50(&unk_27EE92360, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93790);
  sub_2482BE1DC(&qword_27EE92370, &unk_27EE93790);
  sub_2483842D0();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  return sub_248383E70();
}

uint64_t variable initialization expression of DBIconManager.iconPrecacheLowPriorityQueue()
{
  v7 = sub_248383E40();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_248383E20();
  MEMORY[0x28223BE20](v3);
  v4 = sub_2483837E0();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_24814FB28(0, &qword_27EE90280);
  sub_2483837B0();
  v8 = MEMORY[0x277D84F90];
  sub_24814BF50(&unk_27EE92360, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93790);
  sub_2482BE1DC(&qword_27EE92370, &unk_27EE93790);
  sub_2483842D0();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  return sub_248383E70();
}

id DBIconManager.init(environment:)(uint64_t a1)
{
  v20 = a1;
  v21 = sub_248383E40();
  v1 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_248383E20();
  MEMORY[0x28223BE20](v4);
  v5 = sub_2483837E0();
  MEMORY[0x28223BE20](v5 - 8);
  v19 = OBJC_IVAR____TtC9DashBoard13DBIconManager_environment;
  swift_unknownObjectWeakInit();
  v17 = OBJC_IVAR____TtC9DashBoard13DBIconManager_iconPrecacheHighPriorityQueue;
  v6 = sub_24814FB28(0, &qword_27EE90280);
  v16[4] = "";
  v16[5] = v6;
  sub_2483837D0();
  v23 = MEMORY[0x277D84F90];
  v16[3] = sub_24814BF50(&unk_27EE92360, MEMORY[0x277D85230]);
  v16[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93790);
  sub_2482BE1DC(&qword_27EE92370, &unk_27EE93790);
  sub_2483842D0();
  v7 = *MEMORY[0x277D85260];
  v8 = v1 + 104;
  v9 = *(v1 + 104);
  v16[0] = v3;
  v16[1] = v8;
  v9(v3, v7, v21);
  v10 = sub_248383E70();
  v11 = v18;
  *&v18[v17] = v10;
  v17 = OBJC_IVAR____TtC9DashBoard13DBIconManager_iconPrecacheLowPriorityQueue;
  sub_2483837B0();
  v23 = MEMORY[0x277D84F90];
  sub_2483842D0();
  v9(v16[0], v7, v21);
  *&v11[v17] = sub_248383E70();
  swift_unknownObjectWeakAssign();
  type metadata accessor for DBIconListLayoutProvider();
  v12 = swift_unknownObjectRetain();
  *&v11[OBJC_IVAR____TtC9DashBoard13DBIconManager__listLayoutProvider] = sub_2482FF20C(v12);
  v13 = type metadata accessor for DBIconManager();
  v22.receiver = v11;
  v22.super_class = v13;
  v14 = objc_msgSendSuper2(&v22, sel_init);
  [v14 setPrefersFlatImageLayers_];

  swift_unknownObjectRelease();
  return v14;
}

id DBIconManager._configureRootFolderConfiguration(_:)(void *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DBIconManager();
  objc_msgSendSuper2(&v4, sel__configureRootFolderConfiguration_, a1);
  return [a1 setAdditionalPartialPagesToKeepVisible_];
}

char *sub_2482BD8DC()
{
  v1 = [v0 rootFolderController];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v36 = v1;
  v2 = [v36 iconListViews];
  sub_24814FB28(0, &qword_27EE923A0);
  v3 = sub_248383B10();

  if (v3 >> 62)
  {
    goto LABEL_43;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v3; v4; i = v3)
  {
    v5 = 0;
    v35 = v3 & 0xC000000000000001;
    v31 = v3 + 32;
    v32 = v3 & 0xFFFFFFFFFFFFFF8;
    v6 = MEMORY[0x277D84F90];
    v7 = MEMORY[0x277D84F90];
    v34 = v4;
    while (1)
    {
      if (v35)
      {
        v8 = MEMORY[0x24C1CBA50](v5, i);
      }

      else
      {
        if (v5 >= *(v32 + 16))
        {
          goto LABEL_42;
        }

        v8 = *(v31 + 8 * v5);
      }

      v3 = v8;
      v9 = __OFADD__(v5, 1);
      v10 = v5 + 1;
      if (v9)
      {
        break;
      }

      v11 = [v36 currentIconListView];
      if (v11)
      {
        v12 = v11;

        v40 = v3 == v12;
      }

      else
      {
        v40 = 0;
      }

      v37 = v3;
      v38 = v10;
      v13 = [v3 icons];
      sub_24814FB28(0, &unk_27EE93D00);
      v14 = sub_248383B10();

      if (v14 >> 62)
      {
        v15 = sub_248384360();
        if (!v15)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v15)
        {
          goto LABEL_5;
        }
      }

      if (v15 < 1)
      {
        goto LABEL_41;
      }

      v16 = 0;
      v39 = v15;
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x24C1CBA50](v16, v14);
        }

        else
        {
          v17 = *(v14 + 8 * v16 + 32);
        }

        v3 = v17;
        type metadata accessor for DBLeafIcon();
        v18 = swift_dynamicCastClass();
        if (v18 && (v19 = [v18 applicationBundleID]) != 0)
        {
          v20 = v19;
          v21 = sub_248383960();
          v23 = v22;

          if (v40)
          {
            v24 = v7;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = sub_24822B3C4(0, *(v7 + 2) + 1, 1, v7);
            }

            v26 = *(v24 + 2);
            v25 = *(v24 + 3);
            v7 = v24;
            if (v26 >= v25 >> 1)
            {
              v7 = sub_24822B3C4((v25 > 1), v26 + 1, 1, v24);
            }

            *(v7 + 2) = v26 + 1;
            v27 = &v7[16 * v26];
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_24822B3C4(0, *(v6 + 2) + 1, 1, v6);
            }

            v29 = *(v6 + 2);
            v28 = *(v6 + 3);
            if (v29 >= v28 >> 1)
            {
              v6 = sub_24822B3C4((v28 > 1), v29 + 1, 1, v6);
            }

            *(v6 + 2) = v29 + 1;
            v27 = &v6[16 * v29];
          }

          *(v27 + 4) = v21;
          *(v27 + 5) = v23;
          v15 = v39;
        }

        else
        {
        }

        ++v16;
      }

      while (v15 != v16);
LABEL_5:

      v5 = v38;
      if (v38 == v34)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    v4 = sub_248384360();
  }

  v7 = MEMORY[0x277D84F90];
LABEL_45:

  return v7;
}

Swift::Void __swiftcall DBIconManager.precacheImagesForRootIcons(with:)(UITraitCollection with)
{
  v3 = sub_2483837A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_2483837E0();
  v7 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2482BD8DC();
  v12 = v11;
  v13 = v1;
  v39 = v1;
  v14 = [v1 iconImageCache];
  [v14 iconImageInfo];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v37 = *&v13[OBJC_IVAR____TtC9DashBoard13DBIconManager_iconPrecacheHighPriorityQueue];
  v23 = swift_allocObject();
  v35 = v12;
  v36 = v10;
  v23[2].super.isa = v10;
  v23[3].super.isa = v12;
  v23[4].super.isa = v16;
  v23[5].super.isa = v18;
  v23[6].super.isa = v20;
  v23[7].super.isa = v22;
  v23[8].super.isa = with.super.isa;
  v46 = sub_2482BE158;
  v47 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v38 = &v44;
  v44 = sub_24814C01C;
  v45 = &block_descriptor_12;
  v24 = _Block_copy(&aBlock);

  v34 = with.super.isa;
  sub_2483837C0();
  v41 = MEMORY[0x277D84F90];
  v33[2] = sub_24814BF50(&qword_27EE91EB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90290);
  sub_2482BE1DC(&qword_27EE91EC0, &unk_27EE90290);
  sub_2483842D0();
  MEMORY[0x24C1CB440](0, v9, v6, v24);
  _Block_release(v24);
  v25 = *(v4 + 8);
  v37 = v4 + 8;
  v25(v6, v3);
  v26 = *(v7 + 8);
  v33[1] = v7 + 8;
  v27 = v40;
  v26(v9, v40);

  v39 = *&v39[OBJC_IVAR____TtC9DashBoard13DBIconManager_iconPrecacheLowPriorityQueue];
  v28 = swift_allocObject();
  v29 = v35;
  v28[2].super.isa = v36;
  v28[3].super.isa = v29;
  v28[4].super.isa = v16;
  v28[5].super.isa = v18;
  v28[6].super.isa = v20;
  v28[7].super.isa = v22;
  v30 = v34;
  v28[8].super.isa = v34;
  v46 = sub_2482BE278;
  v47 = v28;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_24814C01C;
  v45 = &block_descriptor_6_1;
  v31 = _Block_copy(&aBlock);
  v32 = v30;
  sub_2483837C0();
  v41 = MEMORY[0x277D84F90];
  sub_2483842D0();
  MEMORY[0x24C1CB440](0, v9, v6, v31);
  _Block_release(v31);
  v25(v6, v3);
  v26(v9, v27);
}

void sub_2482BE158()
{
  v0 = sub_248383B00();
  SBHCacheIconImagesForApplicationsWithTraitCollection();
}

uint64_t sub_2482BE1DC(unint64_t *a1, uint64_t *a2)
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

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

void sub_2482BE278()
{
  v1 = *(v0 + 64);
  v2 = sub_248383B00();
  SBHCacheIconImagesForApplicationsWithTraitCollection();

  sub_2482BE51C(v3);
  v4 = sub_248383B00();

  type metadata accessor for DBIconImage();
  [v1 displayScale];
  static DBIconImage.dockIconImageInfo(for:)();
  SBHCacheIconImagesForApplicationsWithTraitCollection();
}

id DBIconManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBIconManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBIconManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2482BE51C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_24822B3C4(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2482BE618(uint64_t a1)
{
  if (a1 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923A8);
    sub_248381500();
    *(swift_allocObject() + 16) = xmmword_24839CCA0;
    sub_2483814C0();
    sub_2483814D0();
LABEL_5:
    sub_2482C2778(&qword_27EE923B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923B8);
    sub_24822D648(&qword_27EE923C0, &qword_27EE923B8);
    return sub_2483842D0();
  }

  if (!a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923A8);
    sub_248381500();
    *(swift_allocObject() + 16) = xmmword_24839EA80;
    sub_2483814A0();
    sub_248381490();
    sub_2483814B0();
    goto LABEL_5;
  }

  result = sub_2483846C0();
  __break(1u);
  return result;
}

unint64_t DBPersistentElementsClient.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2482BE890()
{
  v1 = *v0;
  sub_248384780();
  MEMORY[0x24C1CBD70](v1);
  return sub_2483847B0();
}

uint64_t sub_2482BE904()
{
  v1 = *v0;
  sub_248384780();
  MEMORY[0x24C1CBD70](v1);
  return sub_2483847B0();
}

uint64_t *sub_2482BE948@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t DBPersistentElementsManager.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DBPersistentElementsManager.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC9DashBoard27DBPersistentElementsManager_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_2482284FC;
}

uint64_t variable initialization expression of DBPersistentElementsManager.currentPersistentElements@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_248381500();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id DBPersistentElementsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DBPersistentElementsManager.init()()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9DashBoard27DBPersistentElementsManager_observers;
  *&v0[v2] = sub_2482C2390(MEMORY[0x277D84F90]);
  v3 = OBJC_IVAR____TtC9DashBoard27DBPersistentElementsManager_currentPersistentElements;
  v4 = sub_248381500();
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

void sub_2482BEDA0()
{
  v1 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  sub_2482C2390(MEMORY[0x277D84F90]);
  v2 = OBJC_IVAR____TtC9DashBoard27DBPersistentElementsManager_currentPersistentElements;
  v3 = sub_248381500();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  sub_248384580();
  __break(1u);
}

void sub_2482BEE74()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9DashBoard27DBPersistentElementsManager_observers;
  *(v0 + v1) = sub_2482C2390(MEMORY[0x277D84F90]);
  v2 = OBJC_IVAR____TtC9DashBoard27DBPersistentElementsManager_currentPersistentElements;
  v3 = sub_248381500();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  sub_248384580();
  __break(1u);
}

Swift::Void __swiftcall DBPersistentElementsManager.clearPersistentElements()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923D8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - v1;
  v3 = sub_248381500();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_2482BF01C(v2);
  sub_24822D578(v2, &qword_27EE923D8);
}

uint64_t sub_2482BF01C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_248381500();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923D8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v19 = a1;
  sub_248232C78(a1, &v18 - v9, &qword_27EE923D8);
  v11 = *(v5 + 48);
  v12 = v11(v10, 1, v4);
  if (v12 == 1)
  {
    sub_24822D578(v10, &qword_27EE923D8);
    v13 = 0;
  }

  else
  {
    v13 = sub_2483814F0();
    (*(v5 + 8))(v10, v4);
  }

  v14 = OBJC_IVAR____TtC9DashBoard27DBPersistentElementsManager_currentPersistentElements;
  swift_beginAccess();
  result = v11((v2 + v14), 1, v4);
  if (result)
  {
    if (v12 == 1)
    {
      return result;
    }

    goto LABEL_6;
  }

  (*(v5 + 16))(v7, v2 + v14, v4);
  v16 = sub_2483814F0();
  result = (*(v5 + 8))(v7, v4);
  if (v12 == 1 || v13 != v16)
  {
LABEL_6:
    swift_beginAccess();
    sub_2482C27BC(v19, v2 + v14);
    swift_endAccess();
    return sub_2482BFBC4();
  }

  return result;
}

Swift::Void __swiftcall DBPersistentElementsManager.update(persistentElements:)(NSNumber persistentElements)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923D8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_248381500();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [(objc_class *)persistentElements.super.super.isa integerValue];
  sub_2483814E0();
  (*(v6 + 16))(v4, v9, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_2482BF01C(v4);
  sub_24822D578(v4, &qword_27EE923D8);
  (*(v6 + 8))(v9, v5);
}

uint64_t DBPersistentElementsManager.hasClientWithPersistentElements.getter()
{
  v1 = sub_248381500();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  v8 = OBJC_IVAR____TtC9DashBoard27DBPersistentElementsManager_currentPersistentElements;
  swift_beginAccess();
  if ((*(v2 + 48))(v0 + v8, 1, v1))
  {
    v9 = 0;
  }

  else
  {
    (*(v2 + 16))(v7, v0 + v8, v1);
    sub_2482C2778(&qword_27EE923B0);
    sub_2483842C0();
    sub_2482C2778(&qword_27EE923E0);
    v10 = sub_248383910();
    v11 = *(v2 + 8);
    v11(v4, v1);
    v11(v7, v1);
    v9 = v10 ^ 1;
  }

  return v9 & 1;
}

uint64_t DBPersistentElementsManager.hasPersistentElements(client:)(uint64_t a1)
{
  v23 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923D8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_248381500();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  v18 = OBJC_IVAR____TtC9DashBoard27DBPersistentElementsManager_currentPersistentElements;
  swift_beginAccess();
  sub_248232C78(v1 + v18, v4, &qword_27EE923D8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_24822D578(v4, &qword_27EE923D8);
    v19 = 0;
  }

  else
  {
    (*(v6 + 32))(v17, v4, v5);
    sub_2482BE618(v23);
    (*(v6 + 16))(v8, v17, v5);
    sub_2482C2778(&qword_27EE923B0);
    sub_248384250();
    v20 = sub_248384290();
    v21 = *(v6 + 8);
    v21(v11, v5);
    v21(v14, v5);
    v21(v17, v5);
    v19 = v20 ^ 1;
  }

  return v19 & 1;
}

uint64_t sub_2482BFBC4()
{
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923F8);
  v1 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v61 = &v57 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923E8);
  MEMORY[0x28223BE20](v3 - 8);
  v78 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923D8);
  MEMORY[0x28223BE20](v5 - 8);
  v80 = &v57 - v6;
  v7 = sub_248381500();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v64 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v57 - v11;
  MEMORY[0x28223BE20](v12);
  v63 = &v57 - v13;
  MEMORY[0x28223BE20](v14);
  v81 = &v57 - v15;
  v16 = OBJC_IVAR____TtC9DashBoard27DBPersistentElementsManager_observers;
  swift_beginAccess();
  v77 = v16;
  v17 = *(v0 + v16);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v22 = OBJC_IVAR____TtC9DashBoard27DBPersistentElementsManager_currentPersistentElements;
  v23 = OBJC_IVAR____TtC9DashBoard27DBPersistentElementsManager_delegate;
  v79 = v17;
  swift_bridgeObjectRetain_n();
  v76 = v22;
  swift_beginAccess();
  v83 = v0;
  v75 = v23;
  swift_beginAccess();
  v24 = 0;
  v25 = (v19 + 63) >> 6;
  v74 = (v8 + 48);
  v62 = (v8 + 32);
  v67 = v8;
  v73 = (v8 + 8);
  v72 = (v1 + 56);
  v69 = (v1 + 16);
  v71 = (v1 + 48);
  v59 = v1;
  v60 = (v1 + 8);
  v58 = xmmword_24839CCA0;
  v57 = xmmword_24839EA80;
  v65 = v18;
  while (v21)
  {
    v26 = v24;
    v27 = v80;
    v28 = v83;
LABEL_12:
    v8 = *(*(v79 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v21)))));
    sub_248232C78(v28 + v76, v27, &qword_27EE923D8);
    if ((*v74)(v27, 1, v7) == 1)
    {
      sub_24822D578(v27, &qword_27EE923D8);
      v29 = 0;
    }

    else
    {
      (*v62)(v81, v27, v7);
      v70 = v8;
      if (v8 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923A8);
        v30 = swift_allocObject();
        *(v30 + 16) = v58;
        sub_2483814C0();
        sub_2483814D0();
        v84 = v30;
      }

      else
      {
        if (v8)
        {
          goto LABEL_34;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923A8);
        v31 = swift_allocObject();
        *(v31 + 16) = v57;
        sub_2483814A0();
        sub_248381490();
        sub_2483814B0();
        v84 = v31;
      }

      sub_2482C2778(&qword_27EE923B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923B8);
      sub_24822D648(&qword_27EE923C0, &qword_27EE923B8);
      v32 = v66;
      sub_2483842D0();
      sub_2482C2778(&qword_27EE92428);
      sub_248383AE0();
      sub_2482C2778(&qword_27EE92430);
      v33 = v63;
      sub_2483847F0();
      sub_2482C2778(&qword_27EE923B0);
      sub_248384260();
      v34 = *v73;
      (*v73)(v32, v7);
      v35 = v64;
      sub_2483842C0();
      sub_2482C2778(&qword_27EE923E0);
      v36 = sub_248383910();
      v34(v35, v7);
      if (v36)
      {
        v29 = 0;
      }

      else
      {
        v29 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      }

      v18 = v65;
      v34(v33, v7);
      v34(v81, v7);
      v28 = v83;
      v8 = v70;
    }

    v37 = v77;
    swift_beginAccess();
    v38 = *(v28 + v37);
    if (*(v38 + 16) && (v39 = sub_2482C18C8(v8), (v40 & 1) != 0))
    {
      v41 = *(v38 + 56) + *(v59 + 72) * v39;
      v42 = v78;
      (*(v59 + 16))(v78, v41, v82);
      v43 = 0;
    }

    else
    {
      v43 = 1;
      v42 = v78;
    }

    v44 = v82;
    (*v72)(v42, v43, 1, v82);
    if ((*v71)(v42, 1, v44))
    {
      sub_24822D578(v42, &qword_27EE923E8);
      swift_endAccess();
    }

    else
    {
      v45 = *v69;
      v46 = v82;
      v68 = v29;
      v47 = v7;
      v48 = v25;
      v49 = v8;
      v50 = v28;
      v51 = v61;
      v45(v61, v42, v82);
      sub_24822D578(v42, &qword_27EE923E8);
      swift_endAccess();
      v52 = sub_248382600();
      v53 = v51;
      v54 = v50;
      v8 = v49;
      v25 = v48;
      v7 = v47;
      v29 = v68;
      (*v60)(v53, v46);
      if (v52)
      {
        [v52 persistentElementsManager:v54 didRequestElements:v29];
        swift_unknownObjectRelease();
      }
    }

    v21 &= v21 - 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong client:v8 didUpdateElements:v29];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v24 = v26;
  }

  v27 = v80;
  v28 = v83;
  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v25)
    {
    }

    v21 = *(v18 + 8 * v26);
    ++v24;
    if (v21)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_34:
  v84 = v8;
  result = sub_2483846C0();
  __break(1u);
  return result;
}

void sub_2482C05D8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923F8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923E8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_2482C08A4(a1);
  v12 = OBJC_IVAR____TtC9DashBoard27DBPersistentElementsManager_observers;
  swift_beginAccess();
  v13 = *(v2 + v12);
  if (*(v13 + 16) && (v14 = sub_2482C18C8(a1), (v15 & 1) != 0))
  {
    (*(v5 + 16))(v10, *(v13 + 56) + *(v5 + 72) * v14, v4);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  (*(v5 + 56))(v10, v16, 1, v4);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_24822D578(v10, &qword_27EE923E8);
    swift_endAccess();
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_24822D578(v10, &qword_27EE923E8);
    swift_endAccess();
    v17 = sub_248382600();
    (*(v5 + 8))(v7, v4);
    if (v17)
    {
      [v17 persistentElementsManager:v2 didRequestElements:v11];
      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong client:a1 didUpdateElements:v11];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

id sub_2482C08A4(uint64_t a1)
{
  v21 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923D8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_248381500();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - v13;
  v15 = OBJC_IVAR____TtC9DashBoard27DBPersistentElementsManager_currentPersistentElements;
  swift_beginAccess();
  sub_248232C78(v1 + v15, v4, &qword_27EE923D8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_24822D578(v4, &qword_27EE923D8);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v14, v4, v5);
    sub_2482BE618(v21);
    sub_2482C2778(&qword_27EE92428);
    sub_248383AE0();
    sub_2482C2778(&qword_27EE92430);
    sub_2483847F0();
    sub_2482C2778(&qword_27EE923B0);
    sub_248384260();
    v17 = *(v6 + 8);
    v17(v8, v5);
    sub_2483842C0();
    sub_2482C2778(&qword_27EE923E0);
    v18 = sub_248383910();
    v17(v8, v5);
    if (v18)
    {
      v16 = 0;
    }

    else
    {
      v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    }

    v17(v11, v5);
    v17(v14, v5);
  }

  return v16;
}

id DBPersistentElementsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void DBPersistentElementsManager.addObserver(_:for:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923E8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - v4;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923F0);
  sub_248382610();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923F8);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  swift_beginAccess();
  sub_2482C0E00(v5, a2);
  swift_endAccess();
  if (DBPersistentElementsManager.hasPersistentElements(client:)(a2))
  {
    sub_2482C05D8(a2);
  }
}

uint64_t sub_2482C0E00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923E8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923F8);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_24822D578(a1, &qword_27EE923E8);
    v14 = sub_2482C18C8(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2482C2120();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_2482C1D0C(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_24822D578(v8, &qword_27EE923E8);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_2482C1EF4(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t DBPersistentElementsManager.removeObserver(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923E8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = OBJC_IVAR____TtC9DashBoard27DBPersistentElementsManager_observers;
  swift_beginAccess();
  v8 = sub_2482C18C8(a1);
  if (v9)
  {
    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v1 + v7);
    v18 = *(v2 + v7);
    *(v2 + v7) = 0x8000000000000000;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2482C2120();
      v12 = v18;
    }

    v13 = *(v12 + 56);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923F8);
    v15 = *(v14 - 8);
    (*(v15 + 32))(v6, v13 + *(v15 + 72) * v10, v14);
    sub_2482C1D0C(v10, v12);
    *(v2 + v7) = v12;
    (*(v15 + 56))(v6, 0, 1, v14);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923F8);
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  }

  swift_endAccess();
  return sub_24822D578(v6, &qword_27EE923E8);
}

uint64_t sub_2482C13D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2482C18C8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2482C2120();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923F8);
    v18 = *(v11 - 8);
    (*(v18 + 32))(a2, v10 + *(v18 + 72) * v7, v11);
    sub_2482C1D0C(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923F8);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t DBPersistentElementsManager.observer(for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923E8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = OBJC_IVAR____TtC9DashBoard27DBPersistentElementsManager_observers;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (*(v11 + 16) && (v12 = sub_2482C18C8(a1), (v13 & 1) != 0))
  {
    (*(v4 + 16))(v9, *(v11 + 56) + *(v4 + 72) * v12, v3);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  (*(v4 + 56))(v9, v14, 1, v3);
  if ((*(v4 + 48))(v9, 1, v3))
  {
    sub_24822D578(v9, &qword_27EE923E8);
    swift_endAccess();
    return 0;
  }

  else
  {
    (*(v4 + 16))(v6, v9, v3);
    sub_24822D578(v9, &qword_27EE923E8);
    swift_endAccess();
    v16 = sub_248382600();
    (*(v4 + 8))(v6, v3);
    return v16;
  }
}

unint64_t sub_2482C18C8(uint64_t a1)
{
  sub_248384780();
  MEMORY[0x24C1CBD70](a1);
  v2 = sub_2483847B0();

  return sub_2482C1934(a1, v2);
}

unint64_t sub_2482C1934(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_2482C19A0(uint64_t a1, int a2)
{
  v3 = v2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923F8);
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v35 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92420);
  v39 = a2;
  result = sub_2483845D0();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v7;
    v38 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = *(v38 + 72);
      v26 = v23 + v25 * v22;
      if (v39)
      {
        (*v16)(v40, v26, v41);
      }

      else
      {
        (*v36)(v40, v26, v41);
      }

      sub_248384780();
      MEMORY[0x24C1CBD70](v24);
      result = sub_2483847B0();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v24;
      result = (*v16)(*(v9 + 56) + v25 * v18, v40, v41);
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_2482C1D0C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2483842F0() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_248384780();
      MEMORY[0x24C1CBD70](v9);
      result = sub_2483847B0();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v3);
      v13 = (v11 + 8 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923F8) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2482C1EF4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2482C18C8(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_2482C2120();
      goto LABEL_7;
    }

    sub_2482C19A0(v13, a3 & 1);
    v24 = sub_2482C18C8(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2483846E0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923F8);
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_2482C2068(v10, a2, a1, v16);
}

uint64_t sub_2482C2068(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923F8);
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

void *sub_2482C2120()
{
  v1 = v0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923F8);
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92420);
  v3 = *v0;
  v4 = sub_2483845C0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

unint64_t sub_2482C2390(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92438);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE92420);
    v7 = sub_2483845F0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_248232C78(v9, v5, &qword_27EE92438);
      v11 = *v5;
      result = sub_2482C18C8(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923F8);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
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

unint64_t sub_2482C257C()
{
  result = qword_27EE92400;
  if (!qword_27EE92400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE92400);
  }

  return result;
}

uint64_t type metadata accessor for DBPersistentElementsManager()
{
  result = qword_27EE96E40;
  if (!qword_27EE96E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2482C2678()
{
  sub_2482C2720();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2482C2720()
{
  if (!qword_27EE92418)
  {
    sub_248381500();
    v0 = sub_2483841F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE92418);
    }
  }
}

uint64_t sub_2482C2778(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_248381500();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2482C27BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923D8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t DBGlassInCallWidgetAppIconButton.applicationBundleIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9DashBoard32DBGlassInCallWidgetAppIconButton_applicationBundleIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t DBGlassInCallWidgetAppIconButton.applicationBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC9DashBoard32DBGlassInCallWidgetAppIconButton_applicationBundleIdentifier];
  swift_beginAccess();
  result = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (v7)
  {
    if (a2)
    {
      v8 = result == a1 && v7 == a2;
      if (v8 || (sub_248384680() & 1) != 0)
      {
      }
    }
  }

  else if (!a2)
  {
    return result;
  }

  [v2 setNeedsLayout];
  [v2 layoutIfNeeded];
}

void (*DBGlassInCallWidgetAppIconButton.applicationBundleIdentifier.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9DashBoard32DBGlassInCallWidgetAppIconButton_applicationBundleIdentifier;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_2482C2AFC;
}

void sub_2482C2AFC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    DBGlassInCallWidgetAppIconButton.applicationBundleIdentifier.setter(v3, v4);
  }

  else
  {
    v5 = (v2[5] + v2[6]);
    v6 = *v5;
    v7 = v5[1];
    *v5 = v3;
    v5[1] = v4;
    if (v7)
    {
      if (v4)
      {
        v8 = v6 == v3 && v7 == v4;
        if (v8 || (sub_248384680() & 1) != 0)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v4)
    {
      goto LABEL_14;
    }

    v9 = v2[5];
    [v9 setNeedsLayout];
    [v9 layoutIfNeeded];
  }

LABEL_13:

LABEL_14:

  free(v2);
}

id DBGlassInCallWidgetAppIconButton.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *DBGlassInCallWidgetAppIconButton.init()()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC9DashBoard32DBGlassInCallWidgetAppIconButton_applicationBundleIdentifier];
  type metadata accessor for DBIconLayerView();
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v1[OBJC_IVAR____TtC9DashBoard32DBGlassInCallWidgetAppIconButton_iconLayerView] = DBIconLayerView.__allocating_init()();
  v62.receiver = v1;
  v62.super_class = type metadata accessor for DBGlassInCallWidgetAppIconButton();
  v3 = objc_msgSendSuper2(&v62, sel_init);
  v59 = objc_opt_self();
  v4 = v3;
  [v59 defaultStrokeWidth];
  v6 = [objc_allocWithZone(MEMORY[0x277CF90E8]) initWithCornerRadius:0.0 strokeWidth:v5];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = v4;
  [v7 addSubview_];
  v8 = MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & *v7) + 0x78);
  v10 = v6;
  v9(v6);
  v11 = OBJC_IVAR____TtC9DashBoard32DBGlassInCallWidgetAppIconButton_iconLayerView;
  [*(v7 + OBJC_IVAR____TtC9DashBoard32DBGlassInCallWidgetAppIconButton_iconLayerView) setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 addSubview_];
  v12 = [objc_allocWithZone(MEMORY[0x277CF90D8]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 addSubview_];
  v13 = *((*v8 & *v7) + 0x90);
  v60 = v12;
  v13(v12);

  v61 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24839F9C0;
  v15 = [v10 widthAnchor];
  v16 = [v7 &selRef_icon_imageWithInfo_ + 6];

  [v59 defaultStrokeWidth];
  v18 = [v15 constraintEqualToAnchor:v16 constant:v17 + v17];

  *(v14 + 32) = v18;
  v19 = v10;
  v20 = [v10 heightAnchor];
  v21 = [v7 &selRef_host + 2];

  [v59 defaultStrokeWidth];
  v23 = [v20 constraintEqualToAnchor:v21 constant:v22 + v22];

  *(v14 + 40) = v23;
  v24 = [v19 centerXAnchor];
  v25 = [v7 centerXAnchor];

  v26 = [v24 constraintEqualToAnchor_];
  *(v14 + 48) = v26;
  v27 = [v19 centerYAnchor];

  v28 = [v7 &selRef_fillColor];
  v29 = [v27 constraintEqualToAnchor_];

  *(v14 + 56) = v29;
  v30 = [*(v7 + v11) widthAnchor];
  v31 = [v7 widthAnchor];

  v32 = [v30 constraintEqualToAnchor_];
  *(v14 + 64) = v32;
  v33 = [*(v7 + v11) heightAnchor];
  v34 = [v7 heightAnchor];

  v35 = [v33 constraintEqualToAnchor_];
  *(v14 + 72) = v35;
  v36 = [*(v7 + v11) centerXAnchor];
  v37 = [v7 centerXAnchor];

  v38 = [v36 constraintEqualToAnchor_];
  *(v14 + 80) = v38;
  v39 = [*(v7 + v11) &selRef_fillColor];
  v40 = [v7 &selRef_fillColor];

  v41 = [v39 constraintEqualToAnchor_];
  *(v14 + 88) = v41;
  v42 = [v60 widthAnchor];
  v43 = [v7 widthAnchor];

  v44 = [v42 constraintEqualToAnchor_];
  *(v14 + 96) = v44;
  v45 = [v60 heightAnchor];
  v46 = [v7 heightAnchor];

  v47 = [v45 constraintEqualToAnchor_];
  *(v14 + 104) = v47;
  v48 = [v60 centerXAnchor];
  v49 = [v7 centerXAnchor];

  v50 = [v48 constraintEqualToAnchor_];
  *(v14 + 112) = v50;
  v51 = [v60 &selRef_fillColor];

  v52 = [v7 &selRef_fillColor];
  v53 = [v51 constraintEqualToAnchor_];

  *(v14 + 120) = v53;
  sub_248264108();
  v54 = sub_248383B00();

  [v61 activateConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90A90);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_24839C7F0;
  v56 = sub_248382C50();
  v57 = MEMORY[0x277D74BF0];
  *(v55 + 32) = v56;
  *(v55 + 40) = v57;
  MEMORY[0x24C1CB580](v55, sel_updateAppIcon);

  swift_unknownObjectRelease();

  return v7;
}

Swift::Void __swiftcall DBGlassInCallWidgetAppIconButton.layoutSubviews()()
{
  v27.receiver = v0;
  v27.super_class = type metadata accessor for DBGlassInCallWidgetAppIconButton();
  v1 = objc_msgSendSuper2(&v27, sel_layoutSubviews);
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))(v1);
  if (v3)
  {
    v4 = v3;
    [*(v0 + OBJC_IVAR____TtC9DashBoard32DBGlassInCallWidgetAppIconButton_iconLayerView) bounds];
    if (v6 >= v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v6;
    }

    v8 = v7 * 0.26;
    v9 = objc_opt_self();
    [v9 defaultStrokeWidth];
    v11 = v8 + v10;
    [v9 defaultStrokeWidth];
    [v4 updateEffectWithCornerRadius:v11 strokeWidth:v12];
  }

  v13 = (*((*v2 & *v0) + 0x88))();
  if (v13)
  {
    v14 = v13;
    v15 = [v13 layer];
    [v14 bounds];
    if (v17 >= v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v17;
    }

    [v15 setCornerRadius_];
  }

  v19 = *((*v2 & *v0) + 0xF0);
  v20 = *(v0 + OBJC_IVAR____TtC9DashBoard32DBGlassInCallWidgetAppIconButton_iconLayerView);
  v19();
  if (v22)
  {
    v23 = sub_248383930();

    [v0 bounds];
    v24 = [v0 traitCollection];
    [v24 displayScale];

    [v0 bounds];
    v25 = [v0 traitCollection];
    v26 = SBHGetApplicationIconLayerWithTraitCollection();
  }

  else
  {
    v26 = 0;
  }

  v28.value.super.isa = v26;
  v28.is_nil = 1;
  DBIconLayerView.set(_:animated:)(v28, v21);
}

Swift::Void __swiftcall DBGlassInCallWidgetAppIconButton.updateConfiguration()()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for DBGlassInCallWidgetAppIconButton();
  v1 = objc_msgSendSuper2(&v7, sel_updateConfiguration);
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x70))(v1);
  if (v3)
  {
    v4 = v3;
    [v0 sendSubviewToBack_];
  }

  v5 = (*((*v2 & *v0) + 0x88))([v0 bringSubviewToFront_]);
  if (v5)
  {
    v6 = v5;
    [v0 bringSubviewToFront_];
  }
}

void sub_2482C38C0()
{

  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard32DBGlassInCallWidgetAppIconButton_iconLayerView);
}

id DBGlassInCallWidgetAppIconButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBGlassInCallWidgetAppIconButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id DBIconLayerViewWithLegibility.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *DBIconLayerViewWithLegibility.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  type metadata accessor for DBIconLayerView();
  v2 = DBIconLayerView.__allocating_init(allowGlassGrouping:)(0);
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[OBJC_IVAR____TtC9DashBoard29DBIconLayerViewWithLegibility_iconLayerView] = v2;
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v3 setUserInteractionEnabled_];
  [v3 setAlpha_];
  [v3 setHidden_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [objc_opt_self() blackColor];
  [v3 setBackgroundColor_];

  v5 = [v3 layer];
  [v5 setCornerCurve_];

  v6 = [v3 layer];
  v7 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  [v6 setCompositingFilter_];

  [v3 setClipsToBounds_];
  *&v1[OBJC_IVAR____TtC9DashBoard29DBIconLayerViewWithLegibility_iconLegibilityView] = v3;
  v52.receiver = v1;
  v52.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v52, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v8 setUserInteractionEnabled_];
  v9 = [v8 layer];
  [v9 setAllowsGroupBlending_];

  [v8 addSubview_];
  [v8 addSubview_];
  v49 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24839FA10;
  v11 = *&v8[OBJC_IVAR____TtC9DashBoard29DBIconLayerViewWithLegibility_iconLayerView];
  v12 = [v11 widthAnchor];
  v13 = [v8 widthAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v10 + 32) = v14;
  v15 = [v11 heightAnchor];
  v16 = [v8 &selRef_host + 2];
  v17 = [v15 constraintEqualToAnchor_];

  *(v10 + 40) = v17;
  v18 = [v11 centerXAnchor];
  v19 = [v8 centerXAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v10 + 48) = v20;
  v21 = [v11 centerYAnchor];
  v22 = [v8 centerYAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v10 + 56) = v23;
  v24 = *&v8[OBJC_IVAR____TtC9DashBoard29DBIconLayerViewWithLegibility_iconLegibilityView];
  v25 = [v24 widthAnchor];
  v26 = [v11 widthAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v10 + 64) = v27;
  v28 = [v24 heightAnchor];
  v29 = [v11 heightAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v10 + 72) = v30;
  v31 = [v24 centerXAnchor];
  v32 = [v11 centerXAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v10 + 80) = v33;
  v34 = [v24 centerYAnchor];
  v35 = [v11 centerYAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v10 + 88) = v36;
  sub_24814FB28(0, &qword_27EE8FE90);
  v37 = sub_248383B00();

  [v49 activateConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE90A90);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_24839C7F0;
  v39 = sub_248382C50();
  v40 = MEMORY[0x277D74BF0];
  *(v38 + 32) = v39;
  *(v38 + 40) = v40;
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = ObjectType;
  sub_248383FB0();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93CE0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_24839C7F0;
  *(v43 + 32) = sub_24814FB28(0, &unk_27EE91480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE93CF0);
  v44 = sub_248383B00();

  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_2482C43CC;
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2482C441C;
  aBlock[3] = &block_descriptor_13;
  v46 = _Block_copy(aBlock);

  v47 = [v8 registerForTraitChanges:v44 withHandler:v46];
  _Block_release(v46);
  swift_unknownObjectRelease();

  sub_2482C4220();
  return v8;
}

void sub_2482C41CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2482C4220();
  }
}

void sub_2482C4220()
{
  v1 = sub_248382BD0();
  v2 = [v0 traitCollection];
  v3 = [v2 sbh_iconImageAppearance];

  v4 = [v0 traitCollection];
  v5 = [v4 userInterfaceStyle];

  v6 = v5 != 1 || [v3 appearanceType] != 2;
  [*&v0[OBJC_IVAR____TtC9DashBoard29DBIconLayerViewWithLegibility_iconLegibilityView] setHidden_];
  v7 = objc_opt_self();
  v8 = [v0 traitCollection];
  [v7 sbh:v8 iconGlassUserInterfaceStyleFromTraitCollection:?];

  sub_248383F80();
  sub_248382BC0();
  sub_248383F90();
}

void sub_2482C43CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2482C4220();
  }
}

uint64_t sub_2482C441C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, v6);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall DBIconLayerViewWithLegibility.layoutSubviews()()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  [v0 bounds];
  Width = CGRectGetWidth(v7);
  [v0 bounds];
  Height = CGRectGetHeight(v8);
  if (Height >= Width)
  {
    Height = Width;
  }

  v3 = Height * 0.26;
  v4 = [*&v0[OBJC_IVAR____TtC9DashBoard29DBIconLayerViewWithLegibility_iconLegibilityView] layer];
  [v4 setCornerRadius_];

  v5 = [v0 layer];
  [v5 setCornerRadius_];
}

id DBIconLayerViewWithLegibility.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DBIconLayerViewWithLegibility.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id DBPassengerDisplayRootViewController.__allocating_init(environment:workspaceIdentifier:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  *&v4[OBJC_IVAR____TtC9DashBoard36DBPassengerDisplayRootViewController__mediaScene] = 0;
  *&v4[OBJC_IVAR____TtC9DashBoard36DBPassengerDisplayRootViewController__mediaSceneViewController] = 0;
  swift_unknownObjectUnownedInit();
  v5 = [objc_allocWithZone(DBSceneWorkspace) initWithIdentifier_];
  *&v4[OBJC_IVAR____TtC9DashBoard36DBPassengerDisplayRootViewController__passengerSceneWorkspace] = v5;
  v8.receiver = v4;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
  swift_unknownObjectRelease();

  return v6;
}

id DBPassengerDisplayRootViewController.init(environment:workspaceIdentifier:)(uint64_t a1, void *a2)
{
  v3 = sub_2482C537C(a1, a2);
  swift_unknownObjectRelease();

  return v3;
}

id DBPassengerDisplayRootViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_248383930();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id DBPassengerDisplayRootViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBPassengerDisplayRootViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall DBPassengerDisplayRootViewController.viewDidLoad()()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 radioApplication];

  if (v2)
  {
    v20.receiver = v0;
    v20.super_class = type metadata accessor for DBPassengerDisplayRootViewController();
    objc_msgSendSuper2(&v20, sel_viewDidLoad);
    v3 = *&v0[OBJC_IVAR____TtC9DashBoard36DBPassengerDisplayRootViewController__passengerSceneWorkspace];
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    *(v4 + 24) = v2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_2482C554C;
    *(v5 + 24) = v4;
    v19[4] = sub_248282F14;
    v19[5] = v5;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = sub_2482BB934;
    v19[3] = &block_descriptor_14;
    v6 = _Block_copy(v19);
    v7 = v0;

    v8 = v2;

    v9 = [v3 createScene_];
    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }

    else
    {
      type metadata accessor for DBPassengerSceneViewController();
      Strong = swift_unknownObjectUnownedLoadStrong();
      v11 = v8;
      v12 = v9;
      v13 = sub_2482954D0(v12, v11, Strong);
      [v7 addChildViewController_];
      v14 = [v7 view];
      if (v14)
      {
        v15 = v14;
        v16 = [v13 view];

        if (v16)
        {
          [v15 addSubview_];

          [v13 didMoveToParentViewController_];
          v17 = *&v7[OBJC_IVAR____TtC9DashBoard36DBPassengerDisplayRootViewController__mediaScene];
          *&v7[OBJC_IVAR____TtC9DashBoard36DBPassengerDisplayRootViewController__mediaScene] = v12;

          v18 = *&v7[OBJC_IVAR____TtC9DashBoard36DBPassengerDisplayRootViewController__mediaSceneViewController];
          *&v7[OBJC_IVAR____TtC9DashBoard36DBPassengerDisplayRootViewController__mediaSceneViewController] = v13;

          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

Swift::Void __swiftcall DBPassengerDisplayRootViewController.viewIsAppearing(_:)(Swift::Bool a1)
{
  v33.receiver = v1;
  v33.super_class = type metadata accessor for DBPassengerDisplayRootViewController();
  objc_msgSendSuper2(&v33, sel_viewIsAppearing_, a1);
  v3 = *&v1[OBJC_IVAR____TtC9DashBoard36DBPassengerDisplayRootViewController__mediaSceneViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      v7 = [swift_unknownObjectUnownedLoadStrong() displayConfiguration];
      swift_unknownObjectRelease();
      [v7 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      [v6 setFrame_];
      v16 = [v4 view];
      if (v16)
      {
        v17 = v16;
        [v16 frame];
        v19 = v18;
        v21 = v20;

        v22 = [v4 view];
        if (v22)
        {
          v23 = v22;
          v24 = [v22 layer];

          [v24 setAnchorPoint_];
          v25 = [v4 view];
          if (v25)
          {
            v26 = v25;
            v27 = [v25 layer];

            [v27 setPosition_];
            v28 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
            swift_unknownObjectRelease();
            [v28 screenScale];
            v30 = v29;

            v31 = [v4 view];
            if (v31)
            {
              CGAffineTransformMakeScale(&v32, v30, v30);
              [v31 setTransform_];

              (*((*MEMORY[0x277D85000] & *v4) + 0x50))();
              return;
            }

LABEL_13:
            __break(1u);
            return;
          }

LABEL_12:
          __break(1u);
          goto LABEL_13;
        }

LABEL_11:
        __break(1u);
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }
}

Swift::Void __swiftcall DBPassengerDisplayRootViewController.invalidate()()
{
  [*(v0 + OBJC_IVAR____TtC9DashBoard36DBPassengerDisplayRootViewController__mediaScene) invalidate];
  v1 = *(v0 + OBJC_IVAR____TtC9DashBoard36DBPassengerDisplayRootViewController__mediaSceneViewController);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = *(v0 + OBJC_IVAR____TtC9DashBoard36DBPassengerDisplayRootViewController__passengerSceneWorkspace);

  [v2 invalidate];
}

id sub_2482C537C(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC9DashBoard36DBPassengerDisplayRootViewController__mediaScene] = 0;
  *&v2[OBJC_IVAR____TtC9DashBoard36DBPassengerDisplayRootViewController__mediaSceneViewController] = 0;
  swift_unknownObjectUnownedInit();
  v4 = [objc_allocWithZone(DBSceneWorkspace) initWithIdentifier_];
  *&v2[OBJC_IVAR____TtC9DashBoard36DBPassengerDisplayRootViewController__passengerSceneWorkspace] = v4;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for DBPassengerDisplayRootViewController();
  return objc_msgSendSuper2(&v6, sel_initWithNibName_bundle_, 0, 0);
}

void sub_2482C5418()
{
  *(v0 + OBJC_IVAR____TtC9DashBoard36DBPassengerDisplayRootViewController__mediaScene) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard36DBPassengerDisplayRootViewController__mediaSceneViewController) = 0;
  sub_248384440();
  type metadata accessor for DBPassengerDisplayRootViewController();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE924E8);
  sub_2483839A0();

  MEMORY[0x24C1CAFD0](32, 0xE100000000000000);
  MEMORY[0x24C1CAFD0](0x646F632874696E69, 0xEC000000293A7265);
  MEMORY[0x24C1CAFD0](0xD000000000000019, 0x80000002483AFE50);
  sub_248384580();
  __break(1u);
}

void sub_2482C554C(void *a1)
{
  v3 = *(v1 + 24);
  v4 = [swift_unknownObjectUnownedLoadStrong() sceneIdentifierForApplication_];
  swift_unknownObjectRelease();
  if (!v4)
  {
    sub_248383960();
    v4 = sub_248383930();
  }

  [a1 setIdentifier_];

  v5 = [v3 info];
  v6 = [v5 processIdentity];

  if (v6)
  {
    v7 = [objc_opt_self() defaultIdentityForProcessIdentity_];

    [a1 setClientIdentity_];
    v8 = [objc_allocWithZone(MEMORY[0x277CF92C8]) init];
    [a1 setSpecification_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2482C56B8()
{
  result = sub_248383930();
  qword_27EE96E58 = result;
  return result;
}

uint64_t sub_2482C56F0()
{
  result = sub_248383930();
  qword_27EE96E68 = result;
  return result;
}

uint64_t sub_2482C5728()
{
  result = sub_248383930();
  qword_27EE96E78 = result;
  return result;
}

id DBInstrumentClusterRootViewController.__allocating_init(environment:workspaceIdentifier:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_2482C8E94(a1, a2);
  swift_unknownObjectRelease();

  return v6;
}

id DBInstrumentClusterRootViewController.init(environment:workspaceIdentifier:)(uint64_t a1, void *a2)
{
  v3 = sub_2482C8E94(a1, a2);
  swift_unknownObjectRelease();

  return v3;
}

uint64_t variable initialization expression of DBInstrumentClusterRootViewController._lastShowUIURL@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_248381170();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_2482C58E0()
{
  *(v0 + OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__application) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__scene) = 0;
  *(v0 + OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__sceneViewController) = 0;
  v1 = OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__lastShowUIURL;
  v2 = sub_248381170();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  sub_248384580();
  __break(1u);
}

id DBInstrumentClusterRootViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_248383930();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id DBInstrumentClusterRootViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DBInstrumentClusterRootViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall DBInstrumentClusterRootViewController.viewDidLoad()()
{
  v19.receiver = v0;
  v19.super_class = type metadata accessor for DBInstrumentClusterRootViewController();
  objc_msgSendSuper2(&v19, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v1;
  v3 = [objc_opt_self() tableBackgroundColor];
  [v2 setBackgroundColor_];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 setHidden_];

  v6 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  [v6 addObserver_];

  v7 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  v8 = [v7 session];

  [v8 addObserver_];
  v9 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  v10 = [v9 navigationStateProvider];

  [v10 addObserver_];
  v11 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  v12 = [v11 processMonitor];

  [v12 addObserver_];
  v13 = [objc_opt_self() sharedInstance];
  [v13 addObserver_];

  v14 = [objc_opt_self() defaultCenter];
  [v14 addObserver:v0 selector:sel__wallpaperChanged name:*MEMORY[0x277CF91E8] object:0];

  if (DBIsInternalInstall_0())
  {
    sub_24814FB28(0, &unk_27EE92528);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [ObjCClassFromMetadata defaultCenter];
    if (qword_27EE96E50 != -1)
    {
      swift_once();
    }

    [v16 addObserver:v0 selector:? name:? object:?];

    v17 = [ObjCClassFromMetadata defaultCenter];
    if (qword_27EE96E60 != -1)
    {
      swift_once();
    }

    [v17 addObserver:v0 selector:? name:? object:?];

    v18 = [ObjCClassFromMetadata defaultCenter];
    if (qword_27EE96E70 != -1)
    {
      swift_once();
    }

    [v18 addObserver:v0 selector:? name:? object:?];
  }
}

Swift::Void __swiftcall DBInstrumentClusterRootViewController.viewIsAppearing(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = sub_248381170();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v77 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v78 = &v74 - v8;
  MEMORY[0x28223BE20](v9);
  v79 = (&v74 - v10);
  MEMORY[0x28223BE20](v11);
  v75 = &v74 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0);
  MEMORY[0x28223BE20](v13 - 8);
  v82 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v76 = &v74 - v16;
  MEMORY[0x28223BE20](v17);
  v81 = &v74 - v18;
  v19 = type metadata accessor for DBInstrumentClusterRootViewController();
  v84.receiver = v2;
  v84.super_class = v19;
  objc_msgSendSuper2(&v84, sel_viewIsAppearing_, a1);
  v20 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  [v20 currentViewAreaFrame];
  MinY = CGRectGetMinY(v85);
  [v20 currentViewAreaFrame];
  MinX = CGRectGetMinX(v86);
  v23 = [swift_unknownObjectUnownedLoadStrong() displayConfiguration];
  swift_unknownObjectRelease();
  [v23 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v87.origin.x = v25;
  v87.origin.y = v27;
  v87.size.width = v29;
  v87.size.height = v31;
  MaxY = CGRectGetMaxY(v87);
  [v20 currentViewAreaFrame];
  v33 = MaxY - CGRectGetMaxY(v88);
  v34 = [swift_unknownObjectUnownedLoadStrong() displayConfiguration];
  swift_unknownObjectRelease();
  [v34 bounds];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  v89.origin.x = v36;
  v89.origin.y = v38;
  v89.size.width = v40;
  v89.size.height = v42;
  MaxX = CGRectGetMaxX(v89);
  v80 = v20;
  [v20 currentViewAreaFrame];
  [v2 setAdditionalSafeAreaInsets_];
  v44 = [swift_unknownObjectUnownedLoadStrong() displayConfiguration];
  swift_unknownObjectRelease();
  v45 = [v44 hardwareIdentifier];

  if (!v45)
  {
    goto LABEL_11;
  }

  v46 = sub_248383960();
  v48 = v47;

  v49 = [objc_opt_self() standardUserDefaults];
  v50 = [v49 dictionaryForKey_];

  if (!v50)
  {
    goto LABEL_10;
  }

  v51 = sub_2483838A0();

  if (!*(v51 + 16))
  {

    goto LABEL_10;
  }

  v52 = sub_24822B8A0(v46, v48);
  v54 = v53;

  if ((v54 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  sub_24814A550(*(v51 + 56) + 32 * v52, v83);

  if (swift_dynamicCast())
  {
    v55 = v76;
    sub_248381140();

    if ((*(v5 + 6))(v55, 1, v4) != 1)
    {
      v79 = *(v5 + 4);
      v69 = v75;
      v79(v75, v55, v4);
      LODWORD(v78) = sub_248383DC0();
      v70 = *sub_24827BA50();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_24839C7F0;
      v72 = v70;
      v73 = sub_2483810F0();
      *(v71 + 56) = sub_24814FB28(0, &qword_27EE92538);
      *(v71 + 64) = sub_248151298(&unk_27EE92540, &qword_27EE92538);
      *(v71 + 32) = v73;
      sub_248382A40();

      v65 = v81;
      v79(v81, v69, v4);
      goto LABEL_13;
    }

    sub_24822D578(v55, &qword_27EE904C0);
  }

LABEL_11:
  v56 = [swift_unknownObjectUnownedLoadStrong() screenInfo];
  swift_unknownObjectRelease();
  v57 = [v56 initialURL];

  if (v57)
  {
    v58 = v78;
    sub_248381120();

    v76 = v2;
    v75 = v5;
    v59 = *(v5 + 4);
    v60 = v79;
    v59(v79, v58, v4);
    sub_248383DC0();
    v61 = *sub_24827BA50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_24839C7F0;
    v63 = v61;
    v64 = sub_2483810F0();
    *(v62 + 56) = sub_24814FB28(0, &qword_27EE92538);
    *(v62 + 64) = sub_248151298(&unk_27EE92540, &qword_27EE92538);
    *(v62 + 32) = v64;
    sub_248382A40();

    v65 = v81;
    v59(v81, v60, v4);
    v5 = v75;
LABEL_13:
    v66 = 0;
    goto LABEL_15;
  }

  v66 = 1;
  v65 = v81;
LABEL_15:
  (*(v5 + 7))(v65, v66, 1, v4);
  v67 = v82;
  sub_2482B04BC(v65, v82);
  if ((*(v5 + 6))(v67, 1, v4) == 1)
  {
    sub_24822D578(v65, &qword_27EE904C0);
  }

  else
  {
    v68 = v77;
    (*(v5 + 4))(v77, v67, v4);
    sub_2482C6A5C(v68);

    (*(v5 + 1))(v68, v4);
    v67 = v65;
  }

  sub_24822D578(v67, &qword_27EE904C0);
}

id sub_2482C6A5C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  v7 = objc_opt_self();
  v8 = sub_2483810F0();
  v9 = [v7 isURLSupported_];

  sub_248383DC0();
  v10 = *sub_24827BA50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90E80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24839C7F0;
  v12 = v10;
  v13 = sub_2483810E0();
  v15 = v14;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_2482970D8();
  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  if (v9)
  {
    sub_248382A40();

    v16 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
    swift_unknownObjectRelease();
    v17 = [v16 navigationStateProvider];

    v18 = [v17 mostRecentClusterNavigatingApp];
    if (v18)
    {
      v19 = [objc_opt_self() sharedInstance];
      v20 = [v19 applicationWithBundleIdentifier_];

      if (v20)
      {
        v21 = v20;
        sub_2482C764C(v20);
      }
    }

    v22 = sub_248381170();
    v23 = *(v22 - 8);
    v24 = *(v23 + 16);
    v34 = a1;
    v24(v6, a1, v22);
    v25 = *(v23 + 56);
    v25(v6, 0, 1, v22);
    v26 = OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__lastShowUIURL;
    swift_beginAccess();
    sub_2482CB65C(v6, &v2[v26]);
    result = swift_endAccess();
    v28 = *&v2[OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__sceneViewController];
    if (v28)
    {
      v33 = v24;
      v29 = OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__isVisible;
      v2[OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__isVisible] = 1;
      v30 = v28;
      result = [v2 view];
      if (result)
      {
        v31 = result;
        [result setHidden_];

        v33(v6, v34, v22);
        v25(v6, 0, 1, v22);
        (*((*MEMORY[0x277D85000] & *v30) + 0x98))(v6);

        return sub_24822D578(v6, &qword_27EE904C0);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_248382A40();
  }

  return result;
}

Swift::Void __swiftcall DBInstrumentClusterRootViewController.invalidate()()
{
  v1 = OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__scene;
  [*(v0 + OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__scene) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  v3 = OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__sceneViewController;
  [*(v0 + OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__sceneViewController) invalidate];
  v4 = *(v0 + v3);
  *(v0 + v3) = 0;

  [*(v0 + OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__clusterSceneWorkspace) invalidate];
  v5 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  v6 = [v5 session];

  [v6 removeObserver_];
  v7 = [swift_unknownObjectUnownedLoadStrong() environmentConfiguration];
  swift_unknownObjectRelease();
  v8 = [v7 navigationStateProvider];

  [v8 removeObserver_];
  sub_24814FB28(0, &unk_27EE92528);
  v9 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v9 removeObserver_];
}

id sub_2482C7230()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0);
  *&v3 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v5 = &v14 - v4;
  v6 = *&v0[OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__sceneViewController];
  if (v6)
  {
    v7 = *((*MEMORY[0x277D85000] & *v6) + 0xA0);
    v8 = v6;
    v7();
  }

  v9 = OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__isVisible;
  v1[OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__isVisible] = 0;
  result = [v1 view];
  if (result)
  {
    v11 = result;
    [result setHidden_];

    v12 = sub_248381170();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    v13 = OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__lastShowUIURL;
    swift_beginAccess();
    sub_2482CB65C(v5, &v1[v13]);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2482C764C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE904C0);
  *&v5 = MEMORY[0x28223BE20](v4 - 8).n128_u64[0];
  v7 = &v90 - v6;
  v8 = OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__application;
  v9 = *&v1[OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__application];
  if (!v9 || (sub_24814FB28(0, &qword_27EE91E40), v10 = v9, v11 = a1, v12 = sub_248384030(), v11, v10, (v12 & 1) == 0))
  {
    v13 = OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__scene;
    [*&v2[OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__scene] invalidate];
    v14 = *&v2[v13];
    *&v2[v13] = 0;

    v15 = OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__sceneViewController;
    [*&v2[OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__sceneViewController] invalidate];
    v16 = *&v2[v15];
    if (v16)
    {
      [v16 willMoveToParentViewController_];
      v17 = *&v2[v15];
      if (v17)
      {
        v18 = [v17 view];
        if (!v18)
        {
          goto LABEL_34;
        }

        v19 = v18;
        [v18 removeFromSuperview];

        v20 = *&v2[v15];
        if (v20)
        {
          [v20 removeFromParentViewController];
        }
      }
    }

    v21 = a1;
    v22 = [v21 appPolicy];
    if (!v22)
    {
      v25 = 0;
      goto LABEL_31;
    }

    v23 = v22;
    if ([v22 launchUsingTemplateUI])
    {
      v24 = [objc_opt_self() sharedInstance];
      v25 = [v24 templateUIHostApplication];

      if (!v25)
      {
        sub_248383DA0();
        v89 = *sub_24827BA50();
        sub_248382A40();

        goto LABEL_31;
      }

      v93 = v15;
      v94 = v13;
      v95 = v8;
      v96 = a1;
      v92 = v7;
      v26 = objc_allocWithZone(MEMORY[0x277CF9378]);
      v27 = v25;
      v28 = [v26 init];
    }

    else
    {
      v93 = v15;
      v94 = v13;
      v95 = v8;
      v96 = a1;
      v92 = v7;
      v29 = objc_allocWithZone(MEMORY[0x277CF92C8]);
      v30 = v21;
      v28 = [v29 init];
      v27 = v30;
      v25 = 0;
    }

    v98 = *&v2[OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__clusterSceneWorkspace];
    v31 = swift_allocObject();
    v31[2] = v2;
    v31[3] = v21;
    v31[4] = v27;
    v31[5] = v28;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_2482CAF48;
    *(v32 + 24) = v31;
    v33 = v28;
    aBlock[4] = sub_248282F14;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2482BB934;
    aBlock[3] = &block_descriptor_27_0;
    v34 = _Block_copy(aBlock);
    v97 = v21;
    v99 = v2;

    v35 = [v98 createScene_];

    _Block_release(v34);
    LODWORD(v34) = swift_isEscapingClosureAtFileLocation();

    if (!v34)
    {
      if (v35)
      {
        type metadata accessor for DBInstrumentClusterSceneViewController();
        v36 = v99;
        Strong = swift_unknownObjectUnownedLoadStrong();
        v38 = v25;
        v98 = v35;
        v39 = v35;
        v40 = v97;
        v41 = v39;
        v42 = sub_248295630(v41, v40, v25, Strong);
        [v36 addChildViewController_];
        v43 = [v36 view];
        if (v43)
        {
          v44 = v43;
          v45 = [v42 view];
          if (v45)
          {
            v46 = v45;
            [v44 addSubview_];

            [v42 didMoveToParentViewController_];
            v47 = [v42 view];

            if (v47)
            {
              v97 = v41;
              [v47 setTranslatesAutoresizingMaskIntoConstraints_];

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE906B0);
              v48 = swift_allocObject();
              *(v48 + 16) = xmmword_24839CCB0;
              v49 = [v42 view];

              if (v49)
              {
                v91 = v40;
                v50 = [v49 leadingAnchor];

                v51 = [v36 view];
                if (v51)
                {
                  v52 = v51;
                  v53 = [v51 safeAreaLayoutGuide];

                  v54 = [v53 leadingAnchor];
                  v55 = [v50 constraintEqualToAnchor_];

                  *(v48 + 32) = v55;
                  v56 = [v42 view];

                  if (v56)
                  {
                    v57 = [v56 trailingAnchor];

                    v58 = [v36 view];
                    if (v58)
                    {
                      v59 = v58;
                      v60 = [v58 safeAreaLayoutGuide];

                      v61 = [v60 trailingAnchor];
                      v62 = [v57 constraintEqualToAnchor_];

                      *(v48 + 40) = v62;
                      v63 = [v42 view];

                      if (v63)
                      {
                        v64 = [v63 topAnchor];

                        v65 = [v36 view];
                        if (v65)
                        {
                          v66 = v65;
                          v90 = v38;
                          v67 = [v65 safeAreaLayoutGuide];

                          v68 = [v67 topAnchor];
                          v69 = [v64 constraintEqualToAnchor_];

                          *(v48 + 48) = v69;
                          v70 = [v42 view];

                          if (v70)
                          {
                            v71 = [v70 bottomAnchor];

                            v72 = v99;
                            v73 = [v99 view];
                            if (v73)
                            {
                              v74 = v73;
                              v75 = objc_opt_self();
                              v76 = [v74 safeAreaLayoutGuide];

                              v77 = [v76 bottomAnchor];
                              v78 = [v71 constraintEqualToAnchor_];

                              *(v48 + 56) = v78;
                              sub_24814FB28(0, &qword_27EE8FE90);
                              v79 = sub_248383B00();

                              [v75 activateConstraints_];

                              v80 = *&v2[v94];
                              *&v2[v94] = v98;
                              v81 = v97;

                              v82 = *&v2[v93];
                              *&v2[v93] = v42;
                              v83 = v42;

                              v84 = *&v2[v95];
                              *&v2[v95] = v96;
                              v85 = v91;

                              if (v72[OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__isVisible] == 1)
                              {
                                v86 = OBJC_IVAR____TtC9DashBoard37DBInstrumentClusterRootViewController__lastShowUIURL;
                                swift_beginAccess();
                                v87 = &v72[v86];
                                v88 = v92;
                                sub_2482B04BC(v87, v92);
                                (*((*MEMORY[0x277D85000] & *v83) + 0x98))(v88);

                                sub_24822D578(v88, &qword_27EE904C0);
                              }

                              else
                              {
                              }

                              return;
                            }

LABEL_45:
                            __break(1u);
                            return;
                          }

LABEL_44:
                          __break(1u);
                          goto LABEL_45;
                        }

LABEL_43:
                        __break(1u);
                        goto LABEL_44;
                      }

LABEL_42:
                      __break(1u);
                      goto LABEL_43;
                    }

LABEL_41:
                    __break(1u);
                    goto LABEL_42;
                  }

LABEL_40:
                  __break(1u);
                  goto LABEL_41;
                }

LABEL_39:
                __break(1u);
                goto LABEL_40;
              }

LABEL_38:
              __break(1u);
              goto LABEL_39;
            }

LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_31:

      return;
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }
}