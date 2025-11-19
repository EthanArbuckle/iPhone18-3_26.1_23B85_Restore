uint64_t sub_218A1D2C8(uint64_t a1)
{
  v2 = sub_2186EF594(&qword_280EB1F68, type metadata accessor for TodayFailedBlueprintModifier);

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_218A1D3C4()
{
  result = qword_280EB1F70[0];
  if (!qword_280EB1F70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB1F70);
  }

  return result;
}

uint64_t sub_218A1D418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayGapLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A1D47C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218A1D4DC()
{
  if (!qword_280ED7560)
  {
    type metadata accessor for TodayGapLocation(255);
    sub_219BF1584();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280ED7560);
    }
  }
}

unint64_t sub_218A1D564()
{
  result = qword_27CC0C878;
  if (!qword_27CC0C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C878);
  }

  return result;
}

void sub_218A1D5B8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v30 = a3;
  v9 = sub_219BDB954();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = sub_219BDB854();
  v13 = [v12 nss_isNewsURL];

  if (!v13)
  {
    sub_218A1D928(a1, a2, v30, a4);
LABEL_8:
    (*(v10 + 16))(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
    v24 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v25 = swift_allocObject();
    (*(v10 + 32))(v25 + v24, &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    sub_219BDD154();

    return;
  }

  v29 = a2;
  v14 = *(v5 + 24);
  v15 = [v14 delegate];
  if (v15)
  {
    v16 = v15;
    if ([v15 respondsToSelector_])
    {
      sub_218A1DEB8(0, &qword_280E8B5D0, sub_218A1DE4C);
      v27 = v14;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_219C09BA0;
      v18 = *MEMORY[0x277D766D0];
      v28 = a4;
      *(inited + 32) = v18;
      v19 = sub_219BF5414();
      *(inited + 64) = MEMORY[0x277D837D0];
      *(inited + 40) = v19;
      *(inited + 48) = v20;
      v21 = v18;
      v26 = sub_2194AEBD4(inited);
      swift_setDeallocating();
      sub_218A1DF0C(inited + 32, sub_218A1DE4C);
      v22 = sub_219BDB854();
      type metadata accessor for OpenURLOptionsKey(0);
      sub_218A1DF6C(&unk_280E8DC50, type metadata accessor for OpenURLOptionsKey);
      v23 = sub_219BF5204();

      LODWORD(inited) = [v16 application:v27 openURL:v22 options:{v23, v26}];
      swift_unknownObjectRelease();

      a4 = v28;
      if (inited)
      {
        if (v30)
        {
          (v30)(1);
        }

        goto LABEL_8;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_218A1D928(a1, v29, v30, a4);
}

void sub_218A1D928(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *(v4 + 24);
  v8 = sub_219BDB854();
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_218A1DF6C(&qword_27CC0A770, type metadata accessor for OpenExternalURLOptionsKey);
  v9 = sub_219BF5204();
  if (a3)
  {
    v10[4] = a3;
    v10[5] = a4;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_218A1DA70;
    v10[3] = &block_descriptor_5;
    a3 = _Block_copy(v10);
  }

  [v7 openURL:v8 options:v9 completionHandler:a3];
  _Block_release(a3);
}

uint64_t sub_218A1DA70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_218A1DAC4()
{
  v0 = sub_219BE1464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDB804();
  sub_219BE1454();
  sub_218A1DEB8(0, &qword_280E8C160, MEMORY[0x277CEAD20]);
  v4 = sub_219BDCD44();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  (*(v5 + 104))(v7 + v6, *MEMORY[0x277CEAD18], v4);
  sub_218A1DF6C(&qword_280EE8020, MEMORY[0x277D2F270]);
  sub_219BDCCC4();

  (*(v1 + 8))(v3, v0);
  sub_219BDF334();
  sub_218A1DF6C(&qword_280EE87E8, MEMORY[0x277D2DA10]);
  memset(v9, 0, sizeof(v9));
  sub_219BDCCE4();
  return sub_218A1DF0C(v9, sub_21880702C);
}

uint64_t sub_218A1DD74()
{

  return swift_deallocClassInstance();
}

uint64_t sub_218A1DDDC()
{
  sub_219BDB954();

  return sub_218A1DAC4();
}

void sub_218A1DE4C()
{
  if (!qword_280E8DC30)
  {
    type metadata accessor for OpenURLOptionsKey(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8DC30);
    }
  }
}

void sub_218A1DEB8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF78A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_218A1DF0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218A1DF6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MagazineFeedGroupMoreActionsButton()
{
  result = qword_280E9FE90;
  if (!qword_280E9FE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_218A1E04C(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  *&a1[qword_280E9FEA0] = 0;
  v13.receiver = a1;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a2, a3, a4, a5);
  [v11 setUserInteractionEnabled_];
  [v11 setHidden_];
  [v11 setContextMenuInteractionEnabled_];
  [v11 setShowsMenuAsPrimaryAction_];

  return v11;
}

void sub_218A1E124(uint64_t a1)
{
  *(a1 + qword_280E9FEA0) = 0;
  sub_219BF7514();
  __break(1u);
}

void sub_218A1E1B4()
{
  v1 = *v0;
  [*v0 setUserInteractionEnabled_];
  [v1 setHidden_];
  v2 = *&v1[qword_280E9FEA0];
  *&v1[qword_280E9FEA0] = 0;
}

void sub_218A1E224()
{
  sub_218A1E3BC(&qword_27CC0C888);

  JUMPOUT(0x21CEC1E40);
}

void *sub_218A1E27C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + qword_280E9FEA0);
  v2 = Strong;
  v3 = v1;

  return v1;
}

id sub_218A1E2E8()
{
  sub_218A1E400();
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = sub_2191000C0(0, sub_218973C20, 0, sub_218A1E44C, v0);

  return v1;
}

uint64_t sub_218A1E3BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MagazineFeedGroupMoreActionsButton();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218A1E400()
{
  result = qword_27CC0C890;
  if (!qword_27CC0C890)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CC0C890);
  }

  return result;
}

id sub_218A1E454()
{
  v0 = objc_opt_self();

  return [v0 openAppleAccountLoginSettings];
}

uint64_t sub_218A1E48C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  sub_218A20070(v0 + OBJC_IVAR____TtC7NewsUI227SportsOnboardingFlowManager_pendingRoute);

  return swift_deallocClassInstance();
}

uint64_t sub_218A1E510(uint64_t a1, int a2)
{
  v27 = a2;
  v28 = *v2;
  v4 = type metadata accessor for SportsOnboardingRedirectRoute(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2187C5110();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = [objc_opt_self() sharedAccount];
  v13 = [v12 isUserSignedInToiCloud];

  if (v13)
  {
    sub_218A1F008();
    sub_219BE3204();
    sub_2187D9028();
    v14 = sub_219BF66A4();
    (*(v9 + 16))(&v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v8);
    v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v16 = v15 + v10;
    v17 = swift_allocObject();
    (*(v9 + 32))(v17 + v15, v11, v8);
    *(v17 + v16) = v27 & 1;
    v18 = sub_219BE2F84();

    return v18;
  }

  else
  {
    if (qword_280E8D818 != -1)
    {
      swift_once();
    }

    sub_2187C5050(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_219C09BA0;
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_219BEA7A4();
    v21 = v34;
    v33 = v34;
    sub_219BF7484();
    sub_218932F9C(v21);
    v22 = v29;
    v23 = v30;
    *(v20 + 56) = MEMORY[0x277D837D0];
    *(v20 + 64) = sub_2186FC3BC();
    *(v20 + 32) = v22;
    *(v20 + 40) = v23;
    sub_219BF6214();
    sub_219BE5314();

    v24 = swift_allocObject();
    v31 = &type metadata for AlertSportsOnboardingSignInRequired;
    v32 = sub_218A1FF80();
    sub_219BEA744();
    swift_allocObject();
    v25 = sub_219BEA6C4();
    sub_219BEA6F4();

    *(v24 + 16) = v25;
    *(v24 + 56) = 0;
    v29 = v24;
    sub_2186CF9A8();
    sub_219BEA7C4();
    sub_218932F9C(v29);
    (*(v9 + 56))(v6, 0, 2, v8);
    sub_2187C5050(0, &qword_27CC0C8A0, type metadata accessor for SportsOnboardingRedirectRoute, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_218A1E9CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = type metadata accessor for SportsOnboardingRedirectRoute(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v16 - v11;
  sub_218A1F290(a1, v16 - v11);
  sub_2187C5110();
  if ((*(*(v13 - 8) + 48))(v12, 2, v13))
  {
    sub_218A1F290(a1, v9);
    sub_2187C5050(0, &qword_27CC0C8A0, type metadata accessor for SportsOnboardingRedirectRoute, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    v15 = sub_218A1E510(a3, a4 & 1);
    sub_218A1F2F4(v12);
    return v15;
  }
}

uint64_t sub_218A1EB50@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2187C5050(0, &qword_280EE39F8, sub_2187C5110, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17[-v7];
  if (*a1 == 1 && a1[1] == 2)
  {
    v15 = OBJC_IVAR____TtC7NewsUI227SportsOnboardingFlowManager_pendingRoute;
    swift_beginAccess();
    sub_218A1F10C(a2 + v15, a3);
    sub_2187C5110();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    swift_beginAccess();
    sub_218A1F078(v8, a2 + v15);
    return swift_endAccess();
  }

  else
  {
    sub_2187C5110();
    v11 = v10;
    v12 = *(*(v10 - 8) + 56);
    v12(v8, 1, 1, v10);
    v13 = OBJC_IVAR____TtC7NewsUI227SportsOnboardingFlowManager_pendingRoute;
    swift_beginAccess();
    sub_218A1F078(v8, a2 + v13);
    swift_endAccess();
    return v12(a3, 1, 1, v11);
  }
}

uint64_t sub_218A1ED44(uint64_t a1, char a2, uint64_t a3)
{
  v15[1] = a3;
  sub_2187C5110();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v15[4] = *v3;
  v15[5] = a1;
  type metadata accessor for SportsOnboardingRedirectRoute(0);
  sub_219BE3204();
  (*(v8 + 16))(v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  (*(v8 + 32))(v11 + v10, v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v11 + v10 + v9) = a2;
  v12 = sub_219BE2E54();
  v13 = sub_219BE2F84();

  return v13;
}

uint64_t sub_218A1EEFC()
{
  sub_218A1F008();
  sub_219BE3204();
  sub_2187D9028();
  v0 = sub_219BF66A4();
  sub_2187C5050(0, &qword_280EE39F8, sub_2187C5110, MEMORY[0x277D83D88]);
  v1 = sub_219BE2F94();

  return v1;
}

void sub_218A1F008()
{
  if (!qword_27CC0C898)
  {
    type metadata accessor for FCSportsOnboardingState(255);
    type metadata accessor for FCSportsSyncState(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0C898);
    }
  }
}

uint64_t sub_218A1F078(uint64_t a1, uint64_t a2)
{
  sub_2187C5050(0, &qword_280EE39F8, sub_2187C5110, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A1F10C(uint64_t a1, uint64_t a2)
{
  sub_2187C5050(0, &qword_280EE39F8, sub_2187C5110, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A1F1F4(uint64_t a1, uint64_t a2)
{
  sub_2187C5110();
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  return sub_218A1E9CC(a1, a2, v2 + v6, *(v2 + v6 + *(*(v5 - 8) + 64)));
}

uint64_t sub_218A1F290(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsOnboardingRedirectRoute(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A1F2F4(uint64_t a1)
{
  v2 = type metadata accessor for SportsOnboardingRedirectRoute(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218A1F350(void *a1)
{
  v2 = a1[6];
  v3 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v2);
  (*(v3 + 8))(v2, v3);
  v4 = a1[11];
  v5 = a1[12];
  __swift_project_boxed_opaque_existential_1(a1 + 8, v4);
  (*(v5 + 16))(v4, v5);
  v6 = sub_219BE31C4();

  return v6;
}

uint64_t sub_218A1F414(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  HIDWORD(v53) = a4;
  v54 = a2;
  v6 = type metadata accessor for SportsOnboardingRedirectRoute(0);
  MEMORY[0x28223BE20](v6 - 8);
  v56 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  if (qword_280E8D818 != -1)
  {
    swift_once();
  }

  sub_2187C5050(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D83B88];
  *(v10 + 16) = xmmword_219C0B8C0;
  v12 = MEMORY[0x277D83C10];
  *(v10 + 56) = v11;
  *(v10 + 64) = v12;
  *(v10 + 32) = v8;
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 72) = v9;
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_2187C5110();
  v14 = v13;
  sub_219BEA7A4();
  v15 = v60;
  v57 = v60;
  sub_219BF7484();
  sub_218932F9C(v15);
  v16 = v58;
  v17 = v59;
  *(v10 + 136) = MEMORY[0x277D837D0];
  v55 = sub_2186FC3BC();
  *(v10 + 144) = v55;
  *(v10 + 112) = v16;
  *(v10 + 120) = v17;
  sub_219BF6214();
  sub_219BE5314();

  if (v9 >= 2)
  {
    if (v9 != 2)
    {
      if (v9 == 3)
      {
        goto LABEL_6;
      }

LABEL_17:
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_219C09BA0;
      v58 = 0;
      v59 = 0xE000000000000000;
      sub_219BEA7A4();
      v43 = v60;
      v57 = v60;
      sub_219BF7484();
      sub_218932F9C(v43);
      v44 = v58;
      v45 = v59;
      v46 = v55;
      *(v42 + 56) = MEMORY[0x277D837D0];
      *(v42 + 64) = v46;
      *(v42 + 32) = v44;
      *(v42 + 40) = v45;
      sub_219BF6214();
      sub_219BE5314();

      v35 = 2;
LABEL_20:
      v27 = v56;
      goto LABEL_21;
    }

    if (v8 == 1)
    {
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_219C09BA0;
      v58 = 0;
      v59 = 0xE000000000000000;
      sub_219BEA7A4();
      v48 = v60;
      v57 = v60;
      sub_219BF7484();
      sub_218932F9C(v48);
      v49 = v58;
      v50 = v59;
      v51 = v55;
      *(v47 + 56) = MEMORY[0x277D837D0];
      *(v47 + 64) = v51;
      *(v47 + 32) = v49;
      *(v47 + 40) = v50;
      sub_219BF6214();
      sub_219BE5314();
    }

    else
    {
      if (v8)
      {
        goto LABEL_17;
      }

      sub_218A1FC50(a3, BYTE4(v53) & 1);
      sub_219BEA7A4();
      if (v58 != 0xF000000000000050)
      {
        sub_218932F9C(v58);
        sub_219BEA7A4();
        v36 = (v58 >> 58) & 0x3C | (v58 >> 1) & 3;
        sub_218932F9C(v58);
        if (v36 != 39)
        {
          v37 = swift_allocObject();
          *(v37 + 16) = xmmword_219C09BA0;
          v58 = 0;
          v59 = 0xE000000000000000;
          sub_219BEA7A4();
          v38 = v60;
          v57 = v60;
          sub_219BF7484();
          sub_218932F9C(v38);
          v39 = v58;
          v40 = v59;
          v41 = v55;
          *(v37 + 56) = MEMORY[0x277D837D0];
          *(v37 + 64) = v41;
          *(v37 + 32) = v39;
          *(v37 + 40) = v40;
          sub_219BF6214();
          sub_219BE5314();

          v58 = 0xF000000000000050;
          sub_2186CF9A8();
          v27 = v56;
          sub_219BEA7C4();
          goto LABEL_11;
        }
      }
    }

LABEL_19:
    v35 = 1;
    goto LABEL_20;
  }

LABEL_6:
  sub_218A1FC50(a3, BYTE4(v53) & 1);
  sub_219BEA7A4();
  v18 = v58;
  if (((v18 >> 58) & 0x3C | (v18 >> 1) & 3) != 0x27)
  {
    sub_218932F9C(v58);
    sub_219BEA7A4();
    v28 = (v58 >> 58) & 0x3C | (v58 >> 1) & 3;
    sub_218932F9C(v58);
    if (v28 != 41)
    {
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_219C09BA0;
      v58 = 0;
      v59 = 0xE000000000000000;
      sub_219BEA7A4();
      v30 = v60;
      v57 = v60;
      sub_219BF7484();
      sub_218932F9C(v30);
      v31 = v58;
      v32 = v59;
      v33 = v55;
      *(v29 + 56) = MEMORY[0x277D837D0];
      *(v29 + 64) = v33;
      *(v29 + 32) = v31;
      *(v29 + 40) = v32;
      sub_219BF6214();
      sub_219BE5314();

      v34 = swift_allocObject();
      *(v34 + 16) = 0;
      *(v34 + 24) = 0;
      v58 = v34 | 0xA000000000000002;
      sub_2186CF9A8();
      v27 = v56;
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  v20 = *((v58 & 0xFFFFFFFFFFFFFF9) + 0x10);
  v19 = *((v58 & 0xFFFFFFFFFFFFFF9) + 0x18);

  sub_218932F9C(v18);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_219C09BA0;
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_219BEA7A4();
  v22 = v60;
  v57 = v60;
  sub_219BF7484();
  sub_218932F9C(v22);
  v23 = v58;
  v24 = v59;
  v25 = v55;
  *(v21 + 56) = MEMORY[0x277D837D0];
  *(v21 + 64) = v25;
  *(v21 + 32) = v23;
  *(v21 + 40) = v24;
  sub_219BF6214();
  sub_219BE5314();

  v26 = swift_allocObject();
  *(v26 + 16) = v20;
  *(v26 + 24) = v19;
  v58 = v26 | 0xA000000000000002;
  sub_2186CF9A8();
  v27 = v56;
LABEL_10:
  sub_219BEA7C4();
  sub_218932F9C(v58);
LABEL_11:
  v35 = 0;
LABEL_21:
  (*(*(v14 - 8) + 56))(v27, v35, 2, v14);
  sub_2187C5050(0, &qword_27CC0C8A0, type metadata accessor for SportsOnboardingRedirectRoute, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

unint64_t sub_218A1FC50(uint64_t a1, char a2)
{
  sub_2187C5050(0, &qword_280EE39F8, sub_2187C5110, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  if ((a2 & 1) == 0)
  {
    sub_2187C5110();
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
    v22 = OBJC_IVAR____TtC7NewsUI227SportsOnboardingFlowManager_pendingRoute;
    swift_beginAccess();
    v20 = v2 + v22;
LABEL_11:
    sub_218A1F078(v7, v20);
    return swift_endAccess();
  }

  v8 = v2;
  sub_2187C5110();
  v10 = v9;
  sub_219BEA7A4();
  result = v25;
  v12 = (result >> 58) & 0x3C | (result >> 1) & 3;
  if (v12 == 41)
  {
    return sub_218932F9C(v25);
  }

  if (v12 != 60 || v25 != 0xF000000000000050)
  {
    sub_218932F9C(v25);
    if (qword_280E8D818 != -1)
    {
      swift_once();
    }

    sub_2187C5050(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09BA0;
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_219BEA7A4();
    v15 = v24;
    v23 = v24;
    sub_219BF7484();
    sub_218932F9C(v15);
    v16 = v26;
    v17 = v27;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_2186FC3BC();
    *(v14 + 32) = v16;
    *(v14 + 40) = v17;
    sub_219BF6214();
    sub_219BE5314();

    v18 = *(v10 - 8);
    (*(v18 + 16))(v7, a1, v10);
    (*(v18 + 56))(v7, 0, 1, v10);
    v19 = OBJC_IVAR____TtC7NewsUI227SportsOnboardingFlowManager_pendingRoute;
    swift_beginAccess();
    v20 = v8 + v19;
    goto LABEL_11;
  }

  return result;
}

unint64_t sub_218A1FF80()
{
  result = qword_27CC0C8A8;
  if (!qword_27CC0C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C8A8);
  }

  return result;
}

uint64_t sub_218A1FFD4(uint64_t *a1, uint64_t a2)
{
  sub_2187C5110();
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  return sub_218A1F414(a1, a2, v2 + v6, *(v2 + v6 + *(*(v5 - 8) + 64)));
}

uint64_t sub_218A20070(uint64_t a1)
{
  sub_2187C5050(0, &qword_280EE39F8, sub_2187C5110, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218A20124()
{
  sub_2187C5110();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_218A20194(uint64_t a1)
{
  v2 = type metadata accessor for FollowingNotificationsPrewarm();
  MEMORY[0x28223BE20](v2);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218A26460(a1, v4, type metadata accessor for FollowingNotificationsPrewarm);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v7 = MEMORY[0x277D84F90];
    v22 = MEMORY[0x277D84F90];
    v8 = sub_218E940FC();
    v10 = v9;
    v11 = sub_218BDEB88(0, 1, v8);
    sub_2191ED6F4(v11);
    v12 = sub_218BDEB88(0, 1, v10);

    sub_2191ED6F4(v12);
    v13 = v22;
    v21 = v7;
    if (v22 >> 62)
    {
      goto LABEL_18;
    }

    v14 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
LABEL_19:

      v21 = sub_219758FD4(v18);
      sub_218A24FC0(&v21);

      v5 = v21;
      goto LABEL_20;
    }

LABEL_5:
    v15 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x21CECE0F0](v15, v13);
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_15:
          __break(1u);
          goto LABEL_19;
        }
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_18:
          v14 = sub_219BF7214();
          if (!v14)
          {
            goto LABEL_19;
          }

          goto LABEL_5;
        }

        v16 = *(v13 + 8 * v15 + 32);

        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_15;
        }
      }

      if (*(*(v16 + 24) + 25))
      {
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      else
      {
      }

      ++v15;
      if (v17 == v14)
      {
        goto LABEL_19;
      }
    }
  }

  v5 = *v4;
  sub_21878D714();
  v4 = (v4 + *(v6 + 48));
LABEL_20:
  sub_218A26744(v4, sub_218A25CA4);
  return v5;
}

void sub_218A20430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = a3;
  v77 = a2;
  sub_218A25E40();
  MEMORY[0x28223BE20](v4 - 8);
  v71 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A25F90();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v75 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v74 = &v65 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v65 - v11;
  sub_218A2634C(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13);
  v67 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v66 = &v65 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v69 = &v65 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v70 = &v65 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v65 - v24;
  sub_218A26004();
  MEMORY[0x28223BE20](v26 - 8);
  sub_218A2634C(0, &qword_27CC0C900, MEMORY[0x277D6EC60]);
  v28 = v27;
  v76 = swift_allocBox();
  v30 = v29;
  v31 = sub_218A260D0(&qword_27CC0C8F0);
  v32 = sub_218A260D0(&qword_27CC0C8F8);
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v14, v31, v32);
  v33 = sub_21878D8D8();
  sub_21878D92C();
  v68 = v33;
  sub_219BEB2D4();
  v34 = v3;
  sub_218A20DAC(v12);
  v79 = *(v15 + 48);
  v35 = v79(v12, 1, v14);
  v73 = v28;
  v72 = v30;
  if (v35 == 1)
  {
    sub_218A26744(v12, sub_218A25F90);
  }

  else
  {
    (*(v15 + 32))(v25, v12, v14);
    sub_218A26130();
    sub_219BEB324();
    (*(v15 + 8))(v25, v14);
  }

  v36 = v3;
  v37 = *(v3 + 160);
  if (v37 >= 2)
  {
    v44 = v75;
    if (v37 != 2)
    {
      *&v80[0] = *(v3 + 160);
      sub_219BF7974();
      __break(1u);
      return;
    }
  }

  else
  {
    *&v80[0] = *(v3 + 160);
    BYTE8(v81) = 6;
    sub_218A25EF0();
    v39 = v38;
    v40 = sub_218A25F4C(&qword_27CC0C8C8);
    v41 = sub_218A25F4C(&qword_27CC0C8D0);
    MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v39, v40, v41);
    v42 = v69;
    sub_219BE6924();
    v43 = v70;
    (*(v15 + 32))(v70, v42, v14);
    sub_218A26130();
    sub_219BEB324();
    (*(v15 + 8))(v43, v14);
    v44 = v75;
  }

  v45 = v74;
  sub_218A21014(*(v34 + 56), v74);
  v46 = v79;
  if (v79(v45, 1, v14) == 1)
  {
    sub_218A26744(v45, sub_218A25F90);
  }

  else
  {
    v47 = v66;
    (*(v15 + 32))(v66, v45, v14);
    sub_218A26130();
    sub_219BEB324();
    v48 = v47;
    v46 = v79;
    (*(v15 + 8))(v48, v14);
  }

  sub_218A21684(v44);
  if (v46(v44, 1, v14) == 1)
  {
    v49 = sub_218A26744(v44, sub_218A25F90);
  }

  else
  {
    v50 = v67;
    (*(v15 + 32))(v67, v44, v14);
    sub_218A26130();
    sub_219BEB324();
    v49 = (*(v15 + 8))(v50, v14);
  }

  v51 = v78;
  v52 = v77;
  v53 = v76;
  MEMORY[0x28223BE20](v49);
  *(&v65 - 2) = v36;
  sub_218A261A0();
  sub_219BE3204();
  sub_218A26290(v36, v80);
  v54 = swift_allocObject();
  v55 = v87;
  *(v54 + 176) = v86;
  *(v54 + 192) = v55;
  *(v54 + 208) = v88;
  v56 = v83;
  *(v54 + 112) = v82;
  *(v54 + 128) = v56;
  v57 = v85;
  *(v54 + 144) = v84;
  *(v54 + 160) = v57;
  v58 = v80[3];
  *(v54 + 48) = v80[2];
  *(v54 + 64) = v58;
  v59 = v81;
  *(v54 + 80) = v80[4];
  *(v54 + 96) = v59;
  v60 = v80[1];
  *(v54 + 16) = v80[0];
  *(v54 + 32) = v60;
  *(v54 + 224) = v53;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_218A262C8;
  *(v61 + 24) = v54;

  v62 = sub_219BE2E54();
  sub_219BE2F74();

  v63 = swift_allocObject();
  v63[2] = v52;
  v63[3] = v51;
  v63[4] = v53;

  v64 = sub_219BE2E54();
  sub_219BE3024();
}

uint64_t sub_218A20DAC@<X0>(uint64_t a1@<X8>)
{
  sub_218A25E40();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = v1[20];
  if (v4 >= 2)
  {
    if (v4 == 2)
    {
      __swift_project_boxed_opaque_existential_1(v1 + 21, v1[24]);
      sub_218BAE24C();
      sub_218A25EF0();
      v9 = v8;
      v10 = sub_218A25F4C(&qword_27CC0C8C8);
      v11 = sub_218A25F4C(&qword_27CC0C8D0);
      MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v9, v10, v11);
      sub_21878D8D8();
      sub_21878D92C();
      sub_219BE6924();
      sub_218A2634C(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
      return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
    }

    else
    {
      result = sub_219BF7974();
      __break(1u);
    }
  }

  else
  {
    sub_218A2634C(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
    v6 = *(*(v5 - 8) + 56);

    return v6(a1, 1, 1, v5);
  }

  return result;
}

uint64_t sub_218A21014@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218A25EF0();
  v46 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A25E40();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v12 = sub_219BF7214();
    if (!v12)
    {
      goto LABEL_4;
    }

LABEL_3:
    v13 = *(v2 + 160);
    if (v13 < 2)
    {
      goto LABEL_4;
    }

    if (v13 != 2)
    {
      goto LABEL_34;
    }

    MEMORY[0x28223BE20](v12);
    *(&v42 - 2) = v2;

    v17 = a1;
    a1 = 0;
    sub_2195EB2C4(sub_218A26880, &v42 - 4, v17);

    *&v47[0] = sub_219758FD4(v18);
    sub_218A24FC0(v47);

    v19 = *&v47[0];
    v20 = MEMORY[0x277D84F90];
    if ((*&v47[0] & 0x8000000000000000) != 0 || (*&v47[0] & 0x4000000000000000) != 0)
    {
      if (sub_219BF7214())
      {
        v21 = sub_219BF7214();
        if (!v21)
        {
          v43 = v8;
          v44 = v11;
          v45 = a2;

          v23 = MEMORY[0x277D84F90];
          v29 = *(MEMORY[0x277D84F90] + 16);
          if (v29)
          {
LABEL_20:
            v50 = MEMORY[0x277D84F90];
            sub_218C349A8(0, v29, 0);
            v30 = v50;
            v31 = v23 + 32;
            v32 = v46;
            v33 = v43;
            do
            {
              sub_218A26508(v31, v47);
              sub_218A26508(v47, v49);
              sub_21878D92C();
              sub_219BE5FB4();
              sub_218A26564(v47);
              v50 = v30;
              v35 = *(v30 + 16);
              v34 = *(v30 + 24);
              if (v35 >= v34 >> 1)
              {
                sub_218C349A8(v34 > 1, v35 + 1, 1);
                v32 = v46;
                v30 = v50;
              }

              *(v30 + 16) = v35 + 1;
              (*(v6 + 32))(v30 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v35, v33, v32);
              v31 += 48;
              --v29;
            }

            while (v29);

            goto LABEL_31;
          }

LABEL_30:

          v32 = v46;
LABEL_31:
          sub_2197EBCE8(v47);
          v48 = 1;
          v36 = sub_218A25F4C(&qword_27CC0C8C8);
          v37 = sub_218A25F4C(&qword_27CC0C8D0);
          MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v32, v36, v37);
          sub_21878D8D8();
          sub_21878D92C();
          v38 = v45;
          sub_219BE6924();
          sub_218A2634C(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
          v40 = v39;
          sub_219BE6984();

          return (*(*(v40 - 8) + 56))(v38, 0, 1, v40);
        }

        goto LABEL_11;
      }
    }

    else
    {
      v21 = *(*&v47[0] + 16);
      if (v21)
      {
LABEL_11:
        v43 = v8;
        v44 = v11;
        v45 = a2;
        v49[0] = v20;
        sub_218C349C8(0, v21 & ~(v21 >> 63), 0);
        if ((v21 & 0x8000000000000000) == 0)
        {
          v22 = 0;
          v23 = v49[0];
          do
          {
            if ((v19 & 0xC000000000000001) != 0)
            {
              v24 = MEMORY[0x21CECE0F0](v22, v19);
            }

            else
            {
              v24 = *(v19 + 8 * v22 + 32);
            }

            v49[0] = v23;
            v26 = *(v23 + 16);
            v25 = *(v23 + 24);
            if (v26 >= v25 >> 1)
            {
              sub_218C349C8((v25 > 1), v26 + 1, 1);
              v23 = v49[0];
            }

            ++v22;
            *(v23 + 16) = v26 + 1;
            v27 = v23 + 48 * v26;
            *(v27 + 32) = v24;
            v28 = v47[0];
            *(v27 + 56) = v47[1];
            *(v27 + 40) = v28;
            *(v27 + 72) = 0;
          }

          while (v21 != v22);

          v29 = *(v23 + 16);
          if (v29)
          {
            goto LABEL_20;
          }

          goto LABEL_30;
        }

        __break(1u);
LABEL_34:
        *&v47[0] = v13;
        sub_219BF7974();
        __break(1u);

        __break(1u);
        return result;
      }
    }

    sub_218A2634C(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
    (*(*(v41 - 8) + 56))(a2, 1, 1, v41);
  }

  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    goto LABEL_3;
  }

LABEL_4:
  sub_218A2634C(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
  v15 = *(*(v14 - 8) + 56);

  return v15(a2, 1, 1, v14);
}

uint64_t sub_218A21684@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_218A25E40();
  MEMORY[0x28223BE20](v4 - 8);
  sub_218A25EF0();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v28[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 96);
  if ([v10 isSignedIntoEmailAccount])
  {
    v11 = *(v2 + 144);
    v12 = *(v2 + 152);
    __swift_project_boxed_opaque_existential_1((v2 + 120), v11);
    EmailSignupModelFactoryType.model(from:)(v10, v11, v12);
    v13 = v29[0];
    if (*(&v29[0] + 1))
    {
      if ([*(v2 + 80) useFineGrainedNewsletterManagement])
      {
        *&v29[0] = sub_218CD4B58(v13 != 0);
        BYTE8(v30) = 2;
        sub_21878D92C();
        sub_219BE5FB4();
        v14 = 0;
        v15 = 0;
      }

      else
      {
        sub_218C31128(1, *(&v13 + 1));
        v14 = sub_2196EDF8C();
        v15 = v19;
        if (v13)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        sub_219096198(v20, v36);
        v28[3] = &type metadata for NotificationsNewsletterRowModel;
        v28[4] = &off_282A5BBF0;
        v21 = swift_allocObject();
        v28[0] = v21;
        v22 = v36[1];
        v21[1] = v36[0];
        v21[2] = v22;
        v21[3] = v37[0];
        *(v21 + 58) = *(v37 + 10);
        sub_218718690(v28, v29);
        BYTE8(v30) = 1;
        sub_218A26508(v29, v38);
        sub_21878D92C();
        sub_219BE5FB4();
        sub_218A26564(v29);
        __swift_destroy_boxed_opaque_existential_1(v28);
      }

      sub_2197EBDDC(v38);
      v30 = v38[2];
      v31 = v38[3];
      v29[0] = v38[0];
      v29[1] = v38[1];
      v32 = v39;
      v33 = v14;
      v34 = v15;
      v35 = 4;
      sub_218967C1C(v38, v28);
      v23 = sub_218A25F4C(&qword_27CC0C8C8);
      v24 = sub_218A25F4C(&qword_27CC0C8D0);
      MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v6, v23, v24);
      sub_21878D8D8();
      sub_21878D92C();
      sub_219BE6924();
      sub_218A2634C(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
      v26 = v25;
      sub_219BE6994();

      sub_218967CDC(v38);
      (*(v7 + 8))(v9, v6);
      return (*(*(v26 - 8) + 56))(a1, 0, 1, v26);
    }
  }

  sub_218A2634C(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
  v17 = *(*(v16 - 8) + 56);

  return v17(a1, 1, 1, v16);
}

uint64_t sub_218A21AF4(uint64_t a1)
{
  sub_218A25F90();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218A2625C(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a1;
  sub_21878D560(0, &qword_27CC0C938, sub_218A26228, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219BE30B4();
  v8 = sub_218A232F0();
  if (v9)
  {
    v10 = MEMORY[0x28223BE20](v8);
    *&v19[-32] = a1;
    *&v19[-24] = v10;
    *&v19[-16] = v11;
    sub_21878D560(0, &qword_27CC0C940, sub_218A2625C, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE30B4();
  }

  else
  {
    sub_218A25EF0();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    sub_21878D560(0, &qword_27CC0C940, sub_218A2625C, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v12 = sub_219BE3014();
  }

  MEMORY[0x28223BE20](v12);
  *&v19[-16] = a1;
  sub_21878D560(0, &qword_27CC0C940, sub_218A2625C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v14 = sub_219BE30B4();
  v15 = *(a1 + 160);
  if (v15 >= 2)
  {
    if (v15 != 2)
    {
      v21 = *(a1 + 160);
      result = sub_219BF7974();
      __break(1u);
      return result;
    }

    MEMORY[0x28223BE20](v14);
    *&v19[-16] = a1;
    sub_21878D560(0, &qword_27CC0C948, sub_218A25F90, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE30B4();
  }

  else
  {
    sub_218A2634C(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    sub_21878D560(0, &qword_27CC0C948, sub_218A25F90, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE3014();
  }

  v17 = sub_219BE31A4();

  return v17;
}

uint64_t sub_218A21FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24[1] = a5;
  v25 = a4;
  sub_218A25F90();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v24 - v12;
  sub_218A2634C(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14);
  v24[0] = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v24 - v19;
  sub_218A2634C(0, &qword_27CC0C900, MEMORY[0x277D6EC60]);
  swift_projectBox();
  sub_218A22360(a1, a2, a3, v13);
  v21 = *(v16 + 48);
  if (v21(v13, 1, v15) == 1)
  {
    sub_218A26744(v13, sub_218A25F90);
  }

  else
  {
    (*(v16 + 32))(v20, v13, v15);
    swift_beginAccess();
    sub_218A26130();
    sub_219BEB324();
    swift_endAccess();
    (*(v16 + 8))(v20, v15);
  }

  sub_218A26460(v25, v11, sub_218A25F90);
  if (v21(v11, 1, v15) == 1)
  {
    return sub_218A26744(v11, sub_218A25F90);
  }

  v23 = v24[0];
  (*(v16 + 32))(v24[0], v11, v15);
  swift_beginAccess();
  sub_218A26130();
  sub_219BEB324();
  swift_endAccess();
  return (*(v16 + 8))(v23, v15);
}

uint64_t sub_218A22360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v98 = a2;
  v99 = a3;
  v102 = a1;
  sub_218A2625C(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v83 - v11;
  sub_218A25EF0();
  v14 = v13;
  v101 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v83 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v83 - v21;
  sub_218A25E40();
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A2634C(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
  MEMORY[0x28223BE20](v26);
  v30 = &v83 - v29;
  v31 = *(v5 + 160);
  if (v31 >= 2)
  {
    v89 = v25;
    v90 = v10;
    v84 = v22;
    v85 = v20;
    v91 = v12;
    v92 = v14;
    v96 = v28;
    v97 = v30;
    v94 = v17;
    if (v31 != 2)
    {
      *&v111 = v31;
      result = sub_219BF7974();
      __break(1u);
      return result;
    }

    v34 = v27;
    v35 = [objc_opt_self() sharedAccount];
    v95 = [v35 isUserSignedIntoiTunes];

    v100 = v5;
    v36 = [*(v5 + 72) cachedSubscription];
    v37 = v34;
    if (objc_getAssociatedObject(v36, v36 + 1))
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v123 = 0u;
      v124 = 0u;
    }

    v111 = v123;
    v112 = v124;
    v38 = v91;
    v39 = v95;
    v93 = a4;
    if (*(&v124 + 1))
    {
      sub_2186C6148(0, &qword_280E8DA20);
      if (swift_dynamicCast())
      {
        v40 = *&v109[0];
        v41 = [*&v109[0] integerValue];
        if (v41 == -1)
        {
          goto LABEL_23;
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_218806FD0(&v111);
    }

    v40 = 0;
    v41 = 0;
LABEL_16:
    if (objc_getAssociatedObject(v36, ~v41))
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v123 = 0u;
      v124 = 0u;
    }

    v111 = v123;
    v112 = v124;
    if (*(&v124 + 1))
    {
      sub_2186C6148(0, &qword_280E8DA20);
      if (swift_dynamicCast())
      {
        v42 = *&v109[0];
        v43 = [v42 integerValue];

        v44 = v43 - 277;
        goto LABEL_24;
      }
    }

    else
    {
      sub_218806FD0(&v111);
    }

LABEL_23:

    v44 = -277;
LABEL_24:
    v45 = v44 ^ v41;
    v46 = [v100[10] narrativeAudio];
    v47 = v46;
    if (v45)
    {
      v48 = v39;
    }

    else
    {
      v48 = 1;
    }

    v49 = v92;
    v50 = v101;
    if ((v48 & 1) == 0 && (v46 & 1) == 0 && !*(v102 + 16))
    {
      return (*(v96 + 56))(v93, 1, 1, v37);
    }

    v86 = v45;
    v51 = [v100[11] appConfiguration];
    if ([v51 respondsToSelector_])
    {
      v52 = [v51 paidBundleConfig];
      swift_unknownObjectRelease();
      v53 = [v52 audioDailyBriefingFeatureName];

      if (v53)
      {
        v87 = sub_219BF5414();
        v55 = v54;

        goto LABEL_35;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v87 = 0;
    v55 = 0;
LABEL_35:
    v56 = v98;
    sub_2197EBECC(&v123);
    v120 = v125;
    v121 = v126;
    v122 = v127;
    v118 = v123;
    v119 = v124;
    LODWORD(v98) = v47;
    v88 = v55;
    if (v47)
    {
      v57 = v39;
      v58 = sub_2196EE08C(v87, v55);
    }

    else
    {
      v57 = v39;
      v58 = 0;
      v59 = 0;
    }

    v113[0] = v120;
    v113[1] = v121;
    v111 = v118;
    v112 = v119;
    v114 = v122;
    v115 = v58;
    v116 = v59;
    v117 = 3;
    sub_218967C1C(&v123, v109);
    v60 = sub_218A25F4C(&qword_27CC0C8C8);
    v61 = sub_218A25F4C(&qword_27CC0C8D0);
    MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v49, v60, v61);
    sub_21878D8D8();
    sub_21878D92C();
    sub_219BE6924();
    sub_219BE6984();
    sub_218A26460(v56, v38, sub_218A2625C);
    v62 = *(v50 + 48);
    if (v62(v38, 1, v49) == 1)
    {
      sub_218A26744(v38, sub_218A2625C);
    }

    else
    {
      v63 = v84;
      (*(v50 + 32))(v84, v38, v49);
      sub_219BE6994();
      v57 = v95;
      (*(v50 + 8))(v63, v49);
    }

    v64 = v90;
    sub_218A26460(v99, v90, sub_218A2625C);
    if (v62(v64, 1, v49) == 1)
    {
      sub_218A26744(v64, sub_218A2625C);
      v65 = v97;
      if (!v57)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v66 = v85;
      (*(v50 + 32))(v85, v64, v49);
      v65 = v97;
      sub_219BE6994();
      (*(v50 + 8))(v66, v49);
      if (!v57)
      {
        goto LABEL_49;
      }
    }

    if ([v100[8] marketingNotificationsEnabled])
    {
      v67 = 1;
    }

    else
    {
      v67 = 2;
    }

    sub_2190962D4(v67, v109);
    v103[3] = &type metadata for NotificationsMarketingRowModel;
    v103[4] = &off_282A5B968;
    v68 = swift_allocObject();
    v103[0] = v68;
    v69 = v109[1];
    v68[1] = v109[0];
    v68[2] = v69;
    v68[3] = v110[0];
    *(v68 + 58) = *(v110 + 10);
    sub_218718690(v103, &v111);
    BYTE8(v113[0]) = 1;
    sub_218A26508(&v111, v104);
    v70 = v94;
    sub_219BE5FB4();
    sub_219BE6994();
    (*(v50 + 8))(v70, v49);
    sub_218A26564(&v111);
    __swift_destroy_boxed_opaque_existential_1(v103);
LABEL_49:
    if (v86)
    {
      if (v98)
      {
LABEL_51:
        if ([v100[8] endOfAudioTrackNotificationsEnabled])
        {
          v71 = 1;
        }

        else
        {
          v71 = 2;
        }

        if (v88)
        {
          v72 = v87;
        }

        else
        {
          v72 = 0;
        }

        if (v88)
        {
          v73 = v88;
        }

        else
        {
          v73 = 0xE000000000000000;
        }

        if (qword_27CC08428 != -1)
        {
          swift_once();
        }

        v74 = qword_27CCD88C8;
        v107 = &type metadata for NotificationsEndOfAudioTrackRowModel;
        v108 = &off_282A5B9C8;
        v75 = swift_allocObject();
        v106[0] = v75;
        *(v75 + 16) = 4;
        *(v75 + 24) = v74;
        *(v75 + 32) = 0;
        *(v75 + 40) = 1;
        *(v75 + 48) = 4;
        *(v75 + 56) = v72;
        *(v75 + 64) = v73;
        *(v75 + 72) = v71;
        *(v75 + 73) = 1;
        sub_218718690(v106, v104);
        v105 = 1;
        sub_218A26508(v104, v103);
        v76 = v74;
        v77 = v94;
        sub_219BE5FB4();
        v65 = v97;
        sub_219BE6994();
        sub_218967CDC(&v123);
        (*(v101 + 8))(v77, v49);
        sub_218A26564(v104);
        __swift_destroy_boxed_opaque_existential_1(v106);
        goto LABEL_68;
      }
    }

    else
    {
      if ([v100[8] newIssueNotificationsEnabled])
      {
        v78 = 1;
      }

      else
      {
        v78 = 2;
      }

      sub_219096410(v78, &v111);
      v107 = &type metadata for NotificationsNewIssuesRowModel;
      v108 = &off_282A5B998;
      v79 = swift_allocObject();
      v106[0] = v79;
      v80 = v112;
      v79[1] = v111;
      v79[2] = v80;
      v79[3] = v113[0];
      *(v79 + 58) = *(v113 + 10);
      sub_218718690(v106, v104);
      v105 = 1;
      sub_218A26508(v104, v103);
      v81 = v94;
      sub_219BE5FB4();
      sub_219BE6994();
      (*(v50 + 8))(v81, v49);
      sub_218A26564(v104);
      __swift_destroy_boxed_opaque_existential_1(v106);
      if (v98)
      {
        goto LABEL_51;
      }
    }

    sub_218967CDC(&v123);
LABEL_68:
    v82 = v93;
    (*(v96 + 32))(v93, v65, v37);
    return (*(v96 + 56))(v82, 0, 1, v37);
  }

  v32 = *(v28 + 56);

  return v32(a4, 1, 1);
}

uint64_t sub_218A22F30(void (*a1)(char *))
{
  sub_218A2634C(0, &qword_27CC0C928, MEMORY[0x277D6DF88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  sub_218A2634C(0, &qword_27CC0C900, MEMORY[0x277D6EC60]);
  v8 = v7;
  v9 = swift_projectBox();
  sub_218A263D0();
  v11 = *(v10 + 48);
  swift_beginAccess();
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  v12 = *MEMORY[0x277D6D868];
  v13 = sub_219BE6DF4();
  (*(*(v13 - 8) + 104))(&v6[v11], v12, v13);
  (*(v4 + 104))(v6, *MEMORY[0x277D6DF70], v3);
  a1(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218A23124(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + 104) + OBJC_IVAR____TtC7NewsUI219SubscriptionService_subscriptionController);
  v6 = sub_219BF53D4();
  LOBYTE(v5) = [v5 isAppleNewsNotificationForTagID_];

  if (v5)
  {
    goto LABEL_2;
  }

  v8 = sub_218A23230();
  if (!v9)
  {
    goto LABEL_7;
  }

  if (v8 == a1 && v9 == a2)
  {
    goto LABEL_10;
  }

  v10 = sub_219BF78F4();

  if ((v10 & 1) == 0)
  {
LABEL_7:
    v11 = sub_218A232F0();
    if (!v12)
    {
      v7 = 0;
      return v7 & 1;
    }

    if (v11 != a1 || v12 != a2)
    {
      v7 = sub_219BF78F4();
      goto LABEL_13;
    }

LABEL_10:
    v7 = 1;
LABEL_13:

    return v7 & 1;
  }

LABEL_2:
  v7 = 1;
  return v7 & 1;
}

uint64_t sub_218A23230()
{
  if (![*(v0 + 80) puzzlesEnabled])
  {
    return 0;
  }

  v1 = [objc_msgSend(*(v0 + 88) possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  v2 = [v1 puzzleHubTagID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_219BF5414();

  return v3;
}

uint64_t sub_218A232F0()
{
  v1 = [objc_msgSend(*(v0 + 88) possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = sub_219BF5414();
  }

  else
  {
    if (qword_280EE5F70 != -1)
    {
      swift_once();
    }

    v3 = sub_219BE5434();
    __swift_project_value_buffer(v3, qword_280F625C8);
    v4 = sub_219BE5414();
    v5 = sub_219BF61F4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2186C1000, v4, v5, "FollowingNotificationsPrewarmModifier unable to fetch appConfiguration for mySportsTagID", v6, 2u);
      MEMORY[0x21CECF960](v6, -1, -1);
    }

    return 0;
  }

  return v2;
}

BOOL sub_218A23430(uint64_t a1)
{
  v1 = [*(*(*a1 + 24) + 16) identifier];
  v2 = sub_219BF5414();
  v4 = v3;

  v5 = sub_218A23124(v2, v4);

  return (v5 & 1) == 0;
}

char *sub_218A234BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = a5;
  v8 = a5[7];
  if (v8 >> 62)
  {
    v9 = sub_219BF7214();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
LABEL_13:
    v21 = sub_218845F78(v10);

    v22 = v5[3];
    v23 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v22);
    sub_218A26290(v5, v35);
    v24 = swift_allocObject();
    v25 = v35[11];
    *(v24 + 176) = v35[10];
    *(v24 + 192) = v25;
    *(v24 + 208) = v35[12];
    v26 = v35[7];
    *(v24 + 112) = v35[6];
    *(v24 + 128) = v26;
    v27 = v35[9];
    *(v24 + 144) = v35[8];
    *(v24 + 160) = v27;
    v28 = v35[3];
    *(v24 + 48) = v35[2];
    *(v24 + 64) = v28;
    v29 = v35[5];
    *(v24 + 80) = v35[4];
    *(v24 + 96) = v29;
    v30 = v35[1];
    *(v24 + 16) = v35[0];
    *(v24 + 32) = v30;
    *(v24 + 224) = v21;
    *(v24 + 232) = a1;
    *(v24 + 240) = a2;
    v31 = *(v23 + 32);

    v31(sub_218A2669C, v24, v22, v23);
  }

  *&v35[0] = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v32 = v5;
    v33 = a1;
    v34 = a2;
    v12 = 0;
    v10 = *&v35[0];
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x21CECE0F0](v12, v8);
      }

      else
      {
        v13 = *(v8 + 8 * v12 + 32);
      }

      v14 = [*(*(v13 + 24) + 16) identifier];
      v15 = sub_219BF5414();
      v17 = v16;

      *&v35[0] = v10;
      v19 = *(v10 + 16);
      v18 = *(v10 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_21870B65C((v18 > 1), v19 + 1, 1);
        v10 = *&v35[0];
      }

      ++v12;
      *(v10 + 16) = v19 + 1;
      v20 = v10 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
    }

    while (v9 != v12);
    a1 = v33;
    a2 = v34;
    v5 = v32;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_218A23718(uint64_t a1, char *a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  sub_218A25F90();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A26460(a1, v50, sub_218A266AC);
  if (v50[40])
  {
    sub_218A26744(v50, sub_218A266AC);
    sub_2186C6148(0, &qword_280E8D790);
    v13 = sub_219BF6F44();
    sub_219BF6214();
    sub_219BE5314();

    sub_218A2634C(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
    a4(v12);
    return sub_218A26744(v12, sub_218A25F90);
  }

  v43 = v12;
  v45 = a4;
  v46 = a5;
  v16 = *(a2 + 3);
  v17 = *(a2 + 4);
  v44 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v16);
  result = (*(v17 + 8))(v16, v17);
  v18 = result;
  v19 = *(result + 16);
  if (v19)
  {
    v20 = 0;
    v48 = result + 32;
    v21 = a3 + 56;
    v22 = MEMORY[0x277D84F90];
    v47 = v19;
    while (1)
    {
      if (v20 >= *(v18 + 16))
      {
        __break(1u);
        return result;
      }

      v23 = (v48 + 16 * v20);
      v25 = *v23;
      v24 = v23[1];
      ++v20;
      if (!*(a3 + 16))
      {
        break;
      }

      sub_219BF7AA4();

      sub_219BF5524();
      v26 = sub_219BF7AE4();
      v27 = -1 << *(a3 + 32);
      v28 = v26 & ~v27;
      if ((*(v21 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a3 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v21 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        if (v20 == v19)
        {
          goto LABEL_24;
        }
      }

      else
      {
LABEL_16:
        result = swift_isUniquelyReferenced_nonNull_native();
        v49 = v22;
        if ((result & 1) == 0)
        {
          result = sub_21870B65C(0, *(v22 + 16) + 1, 1);
          v22 = v49;
        }

        v33 = *(v22 + 16);
        v32 = *(v22 + 24);
        if (v33 >= v32 >> 1)
        {
          result = sub_21870B65C((v32 > 1), v33 + 1, 1);
          v22 = v49;
        }

        *(v22 + 16) = v33 + 1;
        v34 = v22 + 16 * v33;
        *(v34 + 32) = v25;
        *(v34 + 40) = v24;
        v19 = v47;
        if (v20 == v47)
        {
          goto LABEL_24;
        }
      }
    }

    goto LABEL_16;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_24:

  MEMORY[0x28223BE20](v35);
  v36 = v44;
  *(&v43 - 2) = v44;
  v37 = sub_2195E6068(sub_218A267A4, (&v43 - 4), v22);
  if (*(v37 + 16))
  {
    v38 = *(v36 + 5);
    v39 = v37;
    v40 = v46;

    sub_218E98AD4(v39, v38, v45, v40);
  }

  else
  {

    sub_218A2634C(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
    v42 = v43;
    (*(*(v41 - 8) + 56))(v43, 1, 1, v41);
    v45(v42);
    sub_218A26744(v42, sub_218A25F90);
  }

  return __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t sub_218A23BE8(unint64_t a1, char a2, void (*a3)(char *), uint64_t a4)
{
  sub_218A25EF0();
  v44 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A25F90();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A25E40();
  MEMORY[0x28223BE20](v15 - 8);
  v43 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A2634C(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  if (a2)
  {
    goto LABEL_17;
  }

  if (a1 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_4;
    }

LABEL_17:
    sub_2186C6148(0, &qword_280E8D790);
    v32 = sub_219BF6F44();
    sub_219BF6214();
    sub_219BE5314();

    (*(v19 + 56))(v14, 1, 1, v18);
    a3(v14);
    return sub_218A26744(v14, sub_218A25F90);
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_4:
  sub_218BDEB88(0, 1, a1);

  v46[0] = sub_219758FD4(v22);
  sub_218A24FC0(v46);
  v42 = v21;

  v45 = v46[0];
  if ((v46[0] & 0x8000000000000000) == 0 && (v46[0] & 0x4000000000000000) == 0)
  {
    v23 = *(v46[0] + 16);
    if (v23)
    {
      goto LABEL_7;
    }

LABEL_19:

    v27 = v44;
LABEL_20:
    sub_2197EBFB8(v46);
    v48 = 2;
    v34 = sub_218A25F4C(&qword_27CC0C8C8);
    v35 = sub_218A25F4C(&qword_27CC0C8D0);
    MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v27, v34, v35);
    sub_21878D8D8();
    sub_21878D92C();
    v36 = v42;
    sub_219BE6924();
    sub_219BE6984();

    (*(v19 + 16))(v14, v36, v18);
    (*(v19 + 56))(v14, 0, 1, v18);
    a3(v14);
    sub_218A26744(v14, sub_218A25F90);
    return (*(v19 + 8))(v36, v18);
  }

  v23 = sub_219BF7214();
  if (!v23)
  {
    goto LABEL_19;
  }

LABEL_7:
  v37 = v19;
  v38 = v18;
  v39 = v14;
  v40 = a4;
  v41 = a3;
  v49 = MEMORY[0x277D84F90];
  sub_218C349A8(0, v23 & ~(v23 >> 63), 0);
  if ((v23 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    v25 = v49;
    v27 = v44;
    v26 = v45;
    v28 = v45 & 0xC000000000000001;
    do
    {
      if (v28)
      {
        v29 = MEMORY[0x21CECE0F0](v24, v26);
      }

      else
      {
      }

      v46[0] = v29;
      v47 = 0;
      sub_21878D92C();
      sub_219BE5FB4();
      v49 = v25;
      v31 = *(v25 + 16);
      v30 = *(v25 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_218C349A8(v30 > 1, v31 + 1, 1);
        v27 = v44;
        v25 = v49;
      }

      ++v24;
      *(v25 + 16) = v31 + 1;
      (*(v9 + 32))(v25 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v31, v11, v27);
      v26 = v45;
    }

    while (v23 != v24);

    a3 = v41;
    v14 = v39;
    v18 = v38;
    v19 = v37;
    goto LABEL_20;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_218A241B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(*(a5 + 104) + OBJC_IVAR____TtC7NewsUI219SubscriptionService_subscriptionController);

  v10 = [v9 appleNewsNotificationChannelIDs];
  if (v10)
  {
    v11 = v10;
    v12 = sub_219BF5924();
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = *(a5 + 40);

  sub_218E9905C(v12, v13, sub_218846958, v8);
}

size_t sub_218A24298(unint64_t a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_218A25EF0();
  v30 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    goto LABEL_16;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_16:
    sub_2186C6148(0, &qword_280E8D790);
    v25 = sub_219BF6F44();
    sub_219BF6214();
    v26 = MEMORY[0x277D84F90];
    sub_219BE5314();

    return a3(v26);
  }

  if (!sub_219BF7214())
  {
    goto LABEL_16;
  }

LABEL_4:
  v12 = sub_218BDEB88(0, 1, a1);
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_18:

    a3(MEMORY[0x277D84F90]);
  }

  v27 = v12;
  v13 = sub_219BF7214();
  v12 = v27;
  if (!v13)
  {
    goto LABEL_18;
  }

LABEL_6:
  v14 = v12;
  v28[1] = a4;
  v29 = a3;
  v34 = MEMORY[0x277D84F90];
  result = sub_218C349A8(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v17 = v34;
    v18 = v14;
    v31 = v14 & 0xC000000000000001;
    v19 = v30;
    v20 = v14;
    v21 = v13;
    do
    {
      if (v31)
      {
        v22 = MEMORY[0x21CECE0F0](v16, v18);
      }

      else
      {
      }

      v32 = v22;
      v33 = 0;
      sub_21878D92C();
      sub_219BE5FB4();
      v34 = v17;
      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_218C349A8(v23 > 1, v24 + 1, 1);
        v19 = v30;
        v17 = v34;
      }

      ++v16;
      *(v17 + 16) = v24 + 1;
      (*(v9 + 32))(v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v24, v11, v19);
      v18 = v20;
    }

    while (v21 != v16);

    v29(v17);
  }

  __break(1u);
  return result;
}

uint64_t sub_218A2458C(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_218A2625C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_218A23230();
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    sub_2186DEF40(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_219C09BA0;
    *(v15 + 32) = v13;
    *(v15 + 40) = v14;
    sub_218A26290(a5, v25);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;
    v17 = v25[11];
    *(v16 + 192) = v25[10];
    *(v16 + 208) = v17;
    *(v16 + 224) = v25[12];
    v18 = v25[7];
    *(v16 + 128) = v25[6];
    *(v16 + 144) = v18;
    v19 = v25[9];
    *(v16 + 160) = v25[8];
    *(v16 + 176) = v19;
    v20 = v25[3];
    *(v16 + 64) = v25[2];
    *(v16 + 80) = v20;
    v21 = v25[5];
    *(v16 + 96) = v25[4];
    *(v16 + 112) = v21;
    v22 = v25[1];
    *(v16 + 32) = v25[0];
    *(v16 + 48) = v22;

    sub_218E94884(v15, sub_218A26870, v16);
  }

  else
  {
    sub_218A25EF0();
    (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
    a1(v10);
    return sub_218A26744(v10, sub_218A2625C);
  }
}

uint64_t sub_218A2478C(unint64_t a1, char a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  sub_218A2625C(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (a2)
  {
    goto LABEL_12;
  }

  if (a1 >> 62)
  {
    result = sub_219BF7214();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_12:
    sub_2186C6148(0, &qword_280E8D790);
    v22 = sub_219BF6F44();
    sub_219BF6214();
    sub_219BE5314();

    sub_218A25EF0();
    (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
    a3(v11);
    return sub_218A26744(v11, sub_218A2625C);
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x21CECE0F0](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v13 = *(a1 + 32);
  }

  if ([*(a5 + 64) puzzleNotificationsEnabled])
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v15 = [*(v13 + 16) displayName];
  v16 = sub_219BF5414();
  v18 = v17;

  v19 = *(v13 + 16);
  v27[3] = &type metadata for NotificationsPuzzlesRowModel;
  v27[4] = &off_282A5B9F8;
  v20 = swift_allocObject();
  v27[0] = v20;
  *(v20 + 16) = v16;
  *(v20 + 24) = v18;
  *(v20 + 32) = 1;
  *(v20 + 40) = v19;
  *(v20 + 48) = 0;
  *(v20 + 56) = 3;
  *(v20 + 64) = 1;
  *(v20 + 72) = v14;
  *(v20 + 73) = 1;
  sub_218718690(v27, v26);
  v26[40] = 1;
  sub_218A26508(v26, v25);
  sub_21878D92C();
  swift_unknownObjectRetain();
  sub_219BE5FB4();
  sub_218A25EF0();
  (*(*(v21 - 8) + 56))(v11, 0, 1, v21);
  a3(v11);

  sub_218A26744(v11, sub_218A2625C);
  sub_218A26564(v26);
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t sub_218A24AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_2186DEF40(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09BA0;
  *(v12 + 32) = a6;
  *(v12 + 40) = a7;
  sub_218A26290(a5, v21);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = v21[11];
  *(v13 + 192) = v21[10];
  *(v13 + 208) = v14;
  *(v13 + 224) = v21[12];
  v15 = v21[7];
  *(v13 + 128) = v21[6];
  *(v13 + 144) = v15;
  v16 = v21[9];
  *(v13 + 160) = v21[8];
  *(v13 + 176) = v16;
  v17 = v21[3];
  *(v13 + 64) = v21[2];
  *(v13 + 80) = v17;
  v18 = v21[5];
  *(v13 + 96) = v21[4];
  *(v13 + 112) = v18;
  v19 = v21[1];
  *(v13 + 32) = v21[0];
  *(v13 + 48) = v19;

  sub_218E94884(v12, sub_218A265DC, v13);
}

uint64_t sub_218A24BEC(unint64_t a1, char a2, void (*a3)(_BYTE *), uint64_t a4, uint64_t a5)
{
  sub_218A2625C(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    goto LABEL_12;
  }

  if (a1 >> 62)
  {
    result = sub_219BF7214();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_12:
    if (qword_280EE5F70 != -1)
    {
      swift_once();
    }

    v23 = sub_219BE5434();
    __swift_project_value_buffer(v23, qword_280F625C8);
    v24 = sub_219BE5414();
    v25 = sub_219BF61F4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2186C1000, v24, v25, "Failed to fetch channels for sports alerts from Apple news section", v26, 2u);
      MEMORY[0x21CECF960](v26, -1, -1);
    }

    sub_218A25EF0();
    (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
    a3(v11);
    return sub_218A26744(v11, sub_218A2625C);
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x21CECE0F0](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v13 = *(a1 + 32);
  }

  if ([*(a5 + 64) sportsTopicNotificationsEnabledState] == 3)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v15 = [*(v13 + 16) displayName];
  v16 = sub_219BF5414();
  v18 = v17;

  v19 = *(v13 + 16);
  *&v32 = v16;
  *(&v32 + 1) = v18;
  LOBYTE(v33) = 6;
  *(&v33 + 1) = v19;
  *v34 = 0;
  v34[8] = 3;
  *&v34[16] = 0;
  v34[24] = v14;
  v34[25] = 1;
  v30[3] = &type metadata for NotificationsSportsRowModel;
  v30[4] = &off_282A5BA28;
  v20 = swift_allocObject();
  v30[0] = v20;
  v21 = v33;
  v20[1] = v32;
  v20[2] = v21;
  v20[3] = *v34;
  *(v20 + 58) = *&v34[10];
  v31 = 1;
  sub_218A26508(v30, v29);
  swift_unknownObjectRetain();
  sub_218A265EC(&v32, v28);
  sub_21878D92C();
  sub_219BE5FB4();
  sub_218A25EF0();
  (*(*(v22 - 8) + 56))(v11, 0, 1, v22);
  a3(v11);

  sub_218A26648(&v32);
  sub_218A26744(v11, sub_218A2625C);
  return sub_218A26564(v30);
}

uint64_t sub_218A24F84(uint64_t a1)
{
  v2 = sub_218A268A0();

  return MEMORY[0x2821D4040](a1, v2);
}

uint64_t sub_218A24FC0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_218C82C04(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_218A2503C(v6);
  return sub_219BF73E4();
}

uint64_t sub_218A2503C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_219BF7884();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for FollowingTagModel();
        v6 = sub_219BF5A34();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_218A25228(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_218A25140(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_218A25140(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *(v8 + 24);
      v12 = *(*v10 + 24);

      LOBYTE(v12) = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(v11, v12);

      if ((v12 & 1) == 0)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v13 = *v10;
      v8 = v10[1];
      *v10 = v8;
      v10[1] = v13;
      --v10;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_218A25228(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_88:
    v100 = v7;
    v7 = v10;
    v10 = *v100;
    if (!*v100)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_218C81048(v7);
      v7 = result;
    }

    v101 = *(v7 + 2);
    if (v101 >= 2)
    {
      while (1)
      {
        v102 = *v6;
        if (!*v6)
        {
          goto LABEL_124;
        }

        v6 = (v101 - 1);
        v103 = *&v7[16 * v101];
        v104 = *&v7[16 * v101 + 24];
        sub_218A259F0((v102 + 8 * v103), (v102 + 8 * *&v7[16 * v101 + 16]), (v102 + 8 * v104), v10);
        if (v5)
        {
        }

        if (v104 < v103)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_218C81048(v7);
        }

        if (v101 - 2 >= *(v7 + 2))
        {
          goto LABEL_114;
        }

        v105 = &v7[16 * v101];
        *v105 = v103;
        *(v105 + 1) = v104;
        result = sub_218C80FBC(v101 - 1);
        v101 = *(v7 + 2);
        v6 = a3;
        if (v101 <= 1)
        {
        }
      }
    }
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v107 = result;
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    v112 = v9;
    if (v9 + 1 < v8)
    {
      v108 = v10;
      v110 = v5;
      v13 = *v6;
      v14 = *(*v6 + 8 * v12);
      v15 = 8 * v11;
      v16 = (v13 + 8 * v11);
      v18 = *v16;
      v17 = v16 + 2;
      v19 = *(v14 + 24);
      v20 = v11;
      v21 = *(v18 + 24);

      v22 = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(v19, v21);

      v23 = v20 + 2;
      while (v8 != v23)
      {
        v24 = *(*v17 + 24);
        v25 = *(*(v17 - 1) + 24);

        v26 = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(v24, v25);

        ++v23;
        ++v17;
        if (v22 != v26)
        {
          v8 = v23 - 1;
          break;
        }
      }

      v10 = v108;
      v5 = v110;
      v6 = a3;
      if (v22)
      {
        v11 = v112;
        v7 = v107;
        if (v8 < v112)
        {
          goto LABEL_117;
        }

        if (v112 < v8)
        {
          v27 = 8 * v8 - 8;
          v28 = v8;
          v29 = v112;
          do
          {
            if (v29 != --v28)
            {
              v31 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v30 = *(v31 + v15);
              *(v31 + v15) = *(v31 + v27);
              *(v31 + v27) = v30;
            }

            ++v29;
            v27 -= 8;
            v15 += 8;
          }

          while (v29 < v28);
        }

        v12 = v8;
      }

      else
      {
        v12 = v8;
        v7 = v107;
        v11 = v112;
      }
    }

    v32 = v6[1];
    if (v12 < v32)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_116;
      }

      if (v12 - v11 < a4)
      {
        v33 = v11 + a4;
        if (__OFADD__(v11, a4))
        {
          goto LABEL_118;
        }

        if (v33 >= v32)
        {
          v33 = v6[1];
        }

        if (v33 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v12 != v33)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v12 < v11)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2191F6B60(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v54 = *(v10 + 2);
    v53 = *(v10 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      result = sub_2191F6B60((v53 > 1), v54 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v55;
    v56 = &v10[16 * v54];
    *(v56 + 4) = v112;
    *(v56 + 5) = v12;
    v57 = *v7;
    if (!*v7)
    {
      goto LABEL_125;
    }

    v118 = v12;
    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v10 + 4);
          v60 = *(v10 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_57:
          if (v62)
          {
            goto LABEL_104;
          }

          v75 = &v10[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_107;
          }

          v81 = &v10[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_111;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v85 = &v10[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_71:
        if (v80)
        {
          goto LABEL_106;
        }

        v88 = &v10[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_109;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_78:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*v6)
        {
          goto LABEL_122;
        }

        v97 = *&v10[16 * v96 + 32];
        v98 = *&v10[16 * v58 + 40];
        sub_218A259F0((*v6 + 8 * v97), (*v6 + 8 * *&v10[16 * v58 + 32]), (*v6 + 8 * v98), v57);
        if (v5)
        {
        }

        if (v98 < v97)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_218C81048(v10);
        }

        if (v96 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v99 = &v10[16 * v96];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        result = sub_218C80FBC(v58);
        v55 = *(v10 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v10[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_102;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_103;
      }

      v70 = &v10[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_105;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_108;
      }

      if (v74 >= v66)
      {
        v92 = &v10[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_112;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v8 = v6[1];
    v9 = v118;
    if (v118 >= v8)
    {
      goto LABEL_88;
    }
  }

  v109 = v10;
  v111 = v5;
  v119 = *v6;
  v34 = (*v6 + 8 * v12 - 8);
  v35 = v11 - v12;
  v114 = v33;
LABEL_30:
  v116 = v34;
  v117 = v12;
  v36 = *(v119 + 8 * v12);
  v115 = v35;
  while (1)
  {
    v37 = *(*v34 + 24);
    v38 = *(*(v36 + 24) + 16);

    v39 = [v38 name];
    sub_219BF5414();

    sub_219BF54D4();

    v40 = [v38 identifier];
    v41 = sub_219BF5414();
    v43 = v42;

    MEMORY[0x21CECC330](v41, v43);

    v44 = *(v37 + 16);
    v45 = [v44 name];
    sub_219BF5414();

    sub_219BF54D4();

    v46 = [v44 identifier];
    v47 = sub_219BF5414();
    v49 = v48;

    MEMORY[0x21CECC330](v47, v49);

    sub_2187F3BD4();
    v50 = sub_219BF7054();

    if (v50 != -1)
    {
LABEL_29:
      v12 = v117 + 1;
      v34 = v116 + 1;
      v35 = v115 - 1;
      if (v117 + 1 != v114)
      {
        goto LABEL_30;
      }

      v12 = v114;
      v10 = v109;
      v5 = v111;
      v11 = v112;
      v6 = a3;
      v7 = v107;
      goto LABEL_37;
    }

    if (!v119)
    {
      break;
    }

    v51 = *v34;
    v36 = v34[1];
    *v34 = v36;
    v34[1] = v51;
    --v34;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t sub_218A259F0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v20 = __src;
    if (a4 != __src || &__src[8 * v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v14 = &v4[8 * v12];
    if (v10 >= 8 && v20 > v6)
    {
      v31 = v4;
LABEL_27:
      v30 = v20;
      v21 = v20 - 8;
      v5 -= 8;
      v22 = v14;
      do
      {
        v23 = v5 + 8;
        v24 = *(v22 - 1);
        v22 -= 8;
        v25 = v21;
        v26 = *(v24 + 24);
        v27 = *(*v21 + 24);

        LOBYTE(v27) = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(v26, v27);

        if (v27)
        {
          v28 = v25;
          if (v23 != v30)
          {
            *v5 = *v25;
          }

          v4 = v31;
          if (v14 <= v31 || (v20 = v28, v28 <= v6))
          {
            v20 = v28;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v23 != v14)
        {
          *v5 = *v22;
        }

        v5 -= 8;
        v14 = v22;
        v21 = v25;
      }

      while (v22 > v31);
      v14 = v22;
      v20 = v30;
      v4 = v31;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v14 = &v4[8 * v9];
    if (v7 >= 8 && __src < v5)
    {
      v15 = __src;
      while (1)
      {
        v16 = *(*v15 + 24);
        v17 = *(*v4 + 24);

        LOBYTE(v17) = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(v16, v17);

        if ((v17 & 1) == 0)
        {
          break;
        }

        v18 = v15;
        v19 = v6 == v15;
        v15 += 8;
        if (!v19)
        {
          goto LABEL_17;
        }

LABEL_18:
        v6 += 8;
        if (v4 >= v14 || v15 >= v5)
        {
          goto LABEL_20;
        }
      }

      v18 = v4;
      v19 = v6 == v4;
      v4 += 8;
      if (v19)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v6 = *v18;
      goto LABEL_18;
    }

LABEL_20:
    v20 = v6;
  }

LABEL_38:
  if (v20 != v4 || v20 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v20, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_218A25D14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_218A25D5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_218A25DE4()
{
  result = qword_27CC0C8B0;
  if (!qword_27CC0C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C8B0);
  }

  return result;
}

void sub_218A25E40()
{
  if (!qword_27CC0C8B8)
  {
    sub_218A25EF0();
    sub_218A25F4C(&qword_27CC0C8C8);
    sub_218A25F4C(&qword_27CC0C8D0);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0C8B8);
    }
  }
}

void sub_218A25EF0()
{
  if (!qword_27CC0C8C0)
  {
    sub_21878D92C();
    v0 = sub_219BE5FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0C8C0);
    }
  }
}

uint64_t sub_218A25F4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_218A25EF0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_218A25F90()
{
  if (!qword_27CC0C8D8)
  {
    sub_218A2634C(255, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0C8D8);
    }
  }
}

void sub_218A26004()
{
  if (!qword_27CC0C8E8)
  {
    sub_218A2634C(255, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
    sub_218A260D0(&qword_27CC0C8F0);
    sub_218A260D0(&qword_27CC0C8F8);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0C8E8);
    }
  }
}

uint64_t sub_218A260D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_218A2634C(255, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218A26130()
{
  result = qword_27CC0C908;
  if (!qword_27CC0C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C908);
  }

  return result;
}

void sub_218A261A0()
{
  if (!qword_27CC0C910)
  {
    sub_218A26228(255);
    sub_218A2625C(255);
    sub_218A25F90();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27CC0C910);
    }
  }
}

uint64_t sub_218A262D4(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  sub_218A261A0();
  return v3(v4, &a1[v5[12]], &a1[v5[16]], &a1[v5[20]]);
}

void sub_218A2634C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingNotificationsDescriptor;
    v8[1] = &type metadata for FollowingNotificationsModel;
    v8[2] = sub_21878D8D8();
    v8[3] = sub_21878D92C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218A263D0()
{
  if (!qword_27CC0C930)
  {
    sub_218A2634C(255, &qword_27CC0C900, MEMORY[0x277D6EC60]);
    sub_219BE6DF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0C930);
    }
  }
}

uint64_t sub_218A26460(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218A264C8(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        swift_unknownObjectRelease();
      }

      return;
    }

LABEL_8:

    return;
  }

  if (!a3)
  {

    return;
  }

  if (a3 == 1)
  {
    goto LABEL_8;
  }
}

unint64_t sub_218A266E0()
{
  result = qword_280EAFB10;
  if (!qword_280EAFB10)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EAFB10);
  }

  return result;
}

uint64_t sub_218A26744(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_17Tm()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1(v0 + 200);

  return swift_deallocObject();
}

unint64_t sub_218A268A0()
{
  result = qword_27CC0C950;
  if (!qword_27CC0C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C950);
  }

  return result;
}

uint64_t sub_218A268F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v3 = type metadata accessor for SportsFavoritesLayoutSectionDescriptor.Footer(0);
  v35 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v35 - v6;
  v41 = sub_219BF00D4();
  v7 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SportsFavoritesLayoutSectionDescriptor.Header(0);
  v38 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  v16 = sub_219BE9834();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A2702C();
  sub_219BE8184();
  v20 = v43;
  v42 = v44;
  sub_219BE95F4();
  v21 = (*(v17 + 88))(v19, v16);
  if (v21 == *MEMORY[0x277D6E758])
  {
    v22 = sub_219BE9604();
    if ((v22 & 0x8000000000000000) == 0)
    {
      if (v22 < *(v20 + 16))
      {
        sub_218A270E4(v20 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v22, v15, type metadata accessor for SportsFavoritesLayoutSectionDescriptor.Header);
        sub_218A270E4(v15, v13, type metadata accessor for SportsFavoritesLayoutSectionDescriptor.Header);
        v23 = v41;
        (*(v7 + 32))(v9, v13, v41);
        __swift_project_boxed_opaque_existential_1((v39 + 16), *(v39 + 40));
        v24 = sub_219BF0234();

        (*(v7 + 8))(v9, v23);
        v25 = v15;
        v26 = type metadata accessor for SportsFavoritesLayoutSectionDescriptor.Header;
LABEL_10:
        sub_218A2714C(v25, v26);
        return v24;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v21 == *MEMORY[0x277D6E750])
  {
    v27 = sub_219BE9604();
    v28 = *(v20 + 16);
    v29 = __OFSUB__(v27, v28);
    v30 = v27 - v28;
    if (!v29)
    {
      if ((v30 & 0x8000000000000000) == 0)
      {
        if (v30 < *(v42 + 16))
        {
          v31 = v37;
          sub_218A270E4(v42 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v30, v37, type metadata accessor for SportsFavoritesLayoutSectionDescriptor.Footer);
          v32 = v36;
          sub_218A270E4(v31, v36, type metadata accessor for SportsFavoritesLayoutSectionDescriptor.Footer);
          v33 = v41;
          (*(v7 + 32))(v9, v32, v41);
          __swift_project_boxed_opaque_existential_1((v39 + 16), *(v39 + 40));
          v24 = sub_219BF0234();

          (*(v7 + 8))(v9, v33);
          v25 = v31;
          v26 = type metadata accessor for SportsFavoritesLayoutSectionDescriptor.Footer;
          goto LABEL_10;
        }

        goto LABEL_15;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_16:
  result = sub_219BF7514();
  __break(1u);
  return result;
}

unint64_t sub_218A26E88()
{
  result = qword_27CC0F710;
  if (!qword_27CC0F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F710);
  }

  return result;
}

uint64_t sub_218A26F6C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218A2702C()
{
  if (!qword_27CC0C968)
  {
    type metadata accessor for SportsFavoritesLayoutModel();
    sub_218A26E88();
    sub_218A26F6C(&qword_27CC0C960, type metadata accessor for SportsFavoritesLayoutModel);
    v0 = sub_219BE81B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0C968);
    }
  }
}

uint64_t sub_218A270E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218A2714C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218A271BC()
{
  sub_2186CF94C();
  sub_2189B4DD4();
  return sub_219BEB484();
}

uint64_t sub_218A27224()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218A27274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BDD804();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a3;
  v10 = swift_allocObject();
  sub_218A27458();
  *v9 = a1;
  v9[1] = a2;
  swift_bridgeObjectRetain_n();

  sub_219BDDBE4();
  (*(v7 + 104))(v9, *MEMORY[0x277D2FB08], v6);
  sub_219BDE674();
  swift_allocObject();
  *(v10 + 16) = sub_219BDE614();
  v13 = v10 | 0x7000000000000004;
  sub_2186CF94C();
  sub_2189B4DD4();
  sub_219BEB484();
  sub_218932F9C(v13);
}

void sub_218A27458()
{
  if (!qword_27CC11390)
  {
    sub_219BDDBF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC11390);
    }
  }
}

uint64_t sub_218A274C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v61 = *v2;
  result = swift_unknownObjectRetain();
  v70 = v5;
  if (v5)
  {
    v7 = 0;
    v68 = v4 + 32;
    v8 = a1 + 56;
    v65 = MEMORY[0x277D84F90];
    v66 = v4;
    while (1)
    {
      while (1)
      {
        if (v7 >= *(v4 + 16))
        {
          __break(1u);
          goto LABEL_47;
        }

        v9 = v68 + 24 * v7;
        v10 = *v9;
        v11 = *(v9 + 8);
        v12 = *(v9 + 16);
        ++v7;
        swift_unknownObjectRetain();

        v13 = [v10 sourceChannelID];
        if (v13)
        {
          break;
        }

LABEL_16:
        v24 = v65;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_218C34A08(0, *(v65 + 16) + 1, 1);
          v24 = v65;
        }

        v26 = *(v24 + 16);
        v25 = *(v24 + 24);
        v27 = v24;
        if (v26 >= v25 >> 1)
        {
          result = sub_218C34A08((v25 > 1), v26 + 1, 1);
          v27 = v65;
        }

        *(v27 + 16) = v26 + 1;
        v65 = v27;
        v28 = (v27 + 24 * v26);
        v28[4] = v10;
        v28[5] = v11;
        v28[6] = v12;
        if (v7 == v70)
        {
          goto LABEL_23;
        }
      }

      v14 = v13;
      v15 = sub_219BF5414();
      v17 = v16;

      if (!*(a1 + 16) || (sub_219BF7AA4(), sub_219BF5524(), v18 = sub_219BF7AE4(), v19 = -1 << *(a1 + 32), v20 = v18 & ~v19, ((*(v8 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0))
      {
LABEL_15:

        v4 = v66;
        goto LABEL_16;
      }

      v21 = ~v19;
      while (1)
      {
        v22 = (*(a1 + 48) + 16 * v20);
        v23 = *v22 == v15 && v22[1] == v17;
        if (v23 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v8 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      swift_unknownObjectRelease();

      v4 = v66;
      if (v7 == v70)
      {
        goto LABEL_23;
      }
    }
  }

  v65 = MEMORY[0x277D84F90];
LABEL_23:
  v29 = *(v63 + 16);
  v71 = *(v29 + 16);
  if (v71)
  {
    v30 = 0;
    v67 = v29 + 32;
    v31 = a1 + 56;
    v64 = MEMORY[0x277D84F90];
    v69 = *(v63 + 16);
    while (v30 < *(v29 + 16))
    {
      v32 = v67 + 24 * v30;
      v33 = *(v32 + 8);
      v34 = *(v32 + 16);
      ++v30;
      v35 = *v32;

      v36 = [objc_msgSend(v35 sourceChannel)];
      swift_unknownObjectRelease();
      v37 = sub_219BF5414();
      v39 = v38;

      if (*(a1 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v40 = sub_219BF7AE4(), v41 = -1 << *(a1 + 32), v42 = v40 & ~v41, ((*(v31 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) != 0))
      {
        v43 = ~v41;
        while (1)
        {
          v44 = (*(a1 + 48) + 16 * v42);
          v45 = *v44 == v37 && v44[1] == v39;
          if (v45 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v42 = (v42 + 1) & v43;
          if (((*(v31 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
LABEL_37:

        v46 = v64;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_218C349E8(0, *(v64 + 16) + 1, 1);
          v46 = v64;
        }

        v48 = *(v46 + 16);
        v47 = *(v46 + 24);
        v49 = v46;
        if (v48 >= v47 >> 1)
        {
          result = sub_218C349E8((v47 > 1), v48 + 1, 1);
          v49 = v64;
        }

        *(v49 + 16) = v48 + 1;
        v64 = v49;
        v50 = (v49 + 24 * v48);
        v50[4] = v35;
        v50[5] = v33;
        v50[6] = v34;
      }

      v29 = v69;
      if (v30 == v71)
      {
        goto LABEL_43;
      }
    }

LABEL_47:
    __break(1u);
  }

  else
  {
    v64 = MEMORY[0x277D84F90];
LABEL_43:
    v51 = type metadata accessor for TagFeedCuration(0);
    v52 = v51[7];
    sub_218A27A84();
    (*(*(v53 - 8) + 16))(&a2[v52], v63 + v52, v53);
    sub_218A27B78(v63 + v51[8], &a2[v51[8]], type metadata accessor for CuratedTagFeedGroupKnobs);
    sub_218A27B78(v63 + v51[9], &a2[v51[9]], type metadata accessor for TagFeedCurationHeader);
    v54 = v51[11];
    v55 = *(v63 + v51[10]);
    v56 = sub_219BF1934();
    (*(*(v56 - 8) + 16))(&a2[v54], v63 + v54, v56);
    v57 = (v63 + v51[12]);
    *a2 = v61;
    *(a2 + 1) = v65;
    *(a2 + 2) = v64;
    a2[v51[10]] = v55;
    v59 = *v57;
    v58 = v57[1];
    v60 = &a2[v51[12]];
    *v60 = v59;
    *(v60 + 1) = v58;
  }

  return result;
}

void sub_218A27A84()
{
  if (!qword_280E92490)
  {
    type metadata accessor for CuratedTagFeedGroupConfigData();
    sub_218A27B34(&unk_280EB1020);
    sub_218A27B34(&qword_280EB1030);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92490);
    }
  }
}

uint64_t sub_218A27B34(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CuratedTagFeedGroupConfigData();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218A27B78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218A27C28()
{
  result = type metadata accessor for TagFeedCuration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_218A27CC4()
{
  sub_2186D8870();
  if (v0 <= 0x3F)
  {
    sub_2187B2E78(319, &qword_280E8F0F8);
    if (v1 <= 0x3F)
    {
      sub_2187B2E78(319, &unk_280E8F180);
      if (v2 <= 0x3F)
      {
        sub_218A27A84();
        if (v3 <= 0x3F)
        {
          type metadata accessor for CuratedTagFeedGroupKnobs();
          if (v4 <= 0x3F)
          {
            type metadata accessor for TagFeedCurationHeader(319);
            if (v5 <= 0x3F)
            {
              sub_219BF1934();
              if (v6 <= 0x3F)
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

uint64_t sub_218A27E0C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_218A27E3C(uint64_t a1)
{
  v2 = sub_218A28044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218A27E78(uint64_t a1)
{
  v2 = sub_218A28044();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218A27EDC(void *a1)
{
  sub_218A27FE8();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A28044();
  sub_219BF7B44();
  return (*(v4 + 8))(v6, v3);
}

void sub_218A27FE8()
{
  if (!qword_27CC0C970)
  {
    sub_218A28044();
    v0 = sub_219BF7864();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0C970);
    }
  }
}

unint64_t sub_218A28044()
{
  result = qword_27CC0C978;
  if (!qword_27CC0C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C978);
  }

  return result;
}

unint64_t sub_218A280AC()
{
  result = qword_27CC0C980;
  if (!qword_27CC0C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C980);
  }

  return result;
}

unint64_t sub_218A28104()
{
  result = qword_27CC0C988;
  if (!qword_27CC0C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C988);
  }

  return result;
}

uint64_t sub_218A2815C(uint64_t a1, uint64_t a2)
{
  v4 = sub_218A28314(&qword_27CC0C998);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t type metadata accessor for WebEmbedModel()
{
  result = qword_280EDCEA8;
  if (!qword_280EDCEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218A28314(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WebEmbedModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_218A28380()
{
  sub_219BDB954();
  if (v0 <= 0x3F)
  {
    sub_2186E5370(319, &qword_280EE7018, sub_21873F65C, MEMORY[0x277D6CF30]);
    if (v1 <= 0x3F)
    {
      sub_21873F65C(319);
      if (v2 <= 0x3F)
      {
        sub_2186E5370(319, &qword_27CC0C9A8, type metadata accessor for HeadlineModel, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_2186E5370(319, &qword_27CC20280, MEMORY[0x277D34048], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_2186E3374();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_218A2850C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218A28578(uint64_t a1)
{
  v54 = a1;
  v57 = sub_219BEDF04();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BEF564();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v1 + 64) aggregateStore];
  v8 = *(v1 + 16);
  v9 = [objc_msgSend(v8 possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  v51 = v7;
  v10 = [v7 baselineAggregateWithConfigurableValues_];
  v50 = v9;
  v11 = [v9 defaultScoringConfig];
  if (!v11)
  {
    goto LABEL_29;
  }

  v12 = v11;
  [v11 decayFactor];
  v14 = v13;

  [v10 personalizationValueWithBaseline:0 decayRate:v14];
  v16 = v15;
  swift_unknownObjectRelease();
  v17 = [objc_msgSend(v8 possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  [v17 minimumMyMagazinesIssueScoreBaselineMultiplier];
  v19 = v18;

  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  (*(v4 + 104))(v6, *MEMORY[0x277D32660], v3);
  v20 = sub_219BF0014();
  (*(v4 + 8))(v6, v3);
  v54 = *(v20 + 16);
  if (!v54)
  {
    v24 = MEMORY[0x277D84F98];
LABEL_25:

    return v24;
  }

  v21 = 0;
  v22 = v16 * v19;
  v53 = v20 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
  v52 = v55 + 16;
  v23 = (v55 + 8);
  v24 = MEMORY[0x277D84F98];
  while (v21 < *(v20 + 16))
  {
    (*(v55 + 16))(v56, v53 + *(v55 + 72) * v21, v57);
    v27 = sub_219BEDEC4();
    v29 = v28;
    sub_219BEDEF4();
    v31 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v24;
    v34 = sub_21870F700(v27, v29);
    v35 = v24[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_27;
    }

    v38 = v33;
    if (v24[3] >= v37)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v41 = v22 < v31;
        if (v33)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_219490ED8();
        v41 = v22 < v31;
        if (v38)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_21947F018(v37, isUniquelyReferenced_nonNull_native);
      v39 = sub_21870F700(v27, v29);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_30;
      }

      v34 = v39;
      v41 = v22 < v31;
      if (v38)
      {
LABEL_4:
        v25 = v41;

        v26 = v57;
        v24 = v58;
        *(v58[7] + v34) = v25;
        (*v23)(v56, v26);
        goto LABEL_8;
      }
    }

    v42 = v41;
    v43 = v57;
    v24 = v58;
    v58[(v34 >> 6) + 8] |= 1 << v34;
    v44 = (v24[6] + 16 * v34);
    *v44 = v27;
    v44[1] = v29;
    *(v24[7] + v34) = v42;
    (*v23)(v56, v43);
    v45 = v24[2];
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      goto LABEL_28;
    }

    v24[2] = v47;
LABEL_8:
    if (v54 == ++v21)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_219BF79A4();
  __break(1u);
  return result;
}

void sub_218A28A88(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v111 = a4;
  v109 = a3;
  v12 = sub_219BE8164();
  MEMORY[0x28223BE20](v12);
  v14 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v16;
  v115 = v15;
  (*(*&v16 + 16))(v14, a5);
  sub_219BE8004();
  v18 = v17;
  sub_219BE8014();
  sub_219BF6034();
  v20 = v18 - v19;
  v21 = sub_219BE8034();
  v22 = [v21 preferredContentSizeCategory];

  v112 = sub_219BF6924();
  v23 = *(*__swift_project_boxed_opaque_existential_1((v7 + 16), *(v7 + 40)) + 16);
  v24 = [objc_opt_self() systemFontOfSize:16.0 weight:*MEMORY[0x277D74418]];
  v25 = [v23 scaledFontForFont:v24 maximumPointSize:48.0];

  *&v138 = 0;
  *(&v138 + 1) = 0xE000000000000000;
  sub_219BF7314();
  sub_219BE8014();
  v26 = sub_219BF5CA4();
  v28 = v27;

  *&v138 = v26;
  *(&v138 + 1) = v28;
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v29 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v29);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  [v25 pointSize];
  v30 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v30);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  MEMORY[0x21CECC330](a1, a2);
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v31 = sub_219BE8034();
  [v31 horizontalSizeClass];

  v32 = sub_219BF6A04();
  MEMORY[0x21CECC330](v32);

  v33 = v138;
  v113 = v7;

  sub_219BE2DD4();

  v146 = v136;
  v147[0] = v137[0];
  *(v147 + 9) = *(v137 + 9);
  v142 = v132;
  v143 = v133;
  v144 = v134;
  v145 = v135;
  v138 = v128;
  v139 = v129;
  v140 = v130;
  v141 = v131;
  if (sub_218A29390(&v138) == 1)
  {
    v103 = *(&v33 + 1);
    v105 = v33;
    sub_219BF54E4();
    sub_21899E550();
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_219C09BA0;
    v35 = *MEMORY[0x277D740A8];
    *(v34 + 32) = *MEMORY[0x277D740A8];
    *(v34 + 64) = sub_218A293AC();
    *(v34 + 40) = v25;
    v36 = v35;
    v104 = v25;
    sub_2188195F4(v34);
    swift_setDeallocating();
    sub_21899E5A8(v34 + 32);
    swift_deallocClassInstance();
    v37 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v38 = sub_219BF53D4();

    type metadata accessor for Key(0);
    sub_21899E604();
    v39 = sub_219BF5204();

    v40 = [v37 initWithString:v38 attributes:v39];

    sub_219BF67A4();
    v42 = (v41 + 15.0 + 15.0) * 0.5;
    v102 = v41;
    v110 = v42 - v41 * 0.5;
    if (v111)
    {
      v43 = v111;
      [v43 size];
      v45 = ceil(v44);
      [v43 size];
      v47 = v46;
      if (v109 == 0.0)
      {
        v52 = 0;
        v50 = 0.0;
        v54 = 0.0;
        v56 = 0.0;
      }

      else
      {
        v48 = *&v109;
        [v48 size];
        v50 = v42 + v49 * -0.5 + 2.0;
        sub_219BE7FF4();
        v52 = v51;
        [v48 size];
        v54 = v53;
        [v48 size];
        v56 = v55;
      }

      v83 = v114;
      v82 = v115;
      v111 = v52;
      v108 = v54;
      v109 = v50;
      v107 = v56;
      if (v45 <= 0.0)
      {
        *&v150.origin.x = v52;
        v150.origin.y = v50;
        v150.size.width = v54;
        v150.size.height = v56;
        MaxX = CGRectGetMaxX(v150);

        v79 = MaxX + 10.0;
        v80 = 0.0;
        v100 = 0.0;
        v101 = 0.0;
        v106 = 0.0;
        v81 = v20;
      }

      else
      {
        v100 = ceil(v47);
        v101 = v42 + v100 * -0.5;
        *&v148.origin.x = v52;
        v148.origin.y = v50;
        v148.size.width = v54;
        v84 = v56;
        v148.size.height = v56;
        v79 = CGRectGetMaxX(v148) + 10.0;
        v106 = v45;
        v85 = v20 - v45;
        *&v149.origin.x = v52;
        v149.origin.y = v50;
        v149.size.width = v54;
        v149.size.height = v84;
        v81 = v85 - CGRectGetWidth(v149);
        sub_219BE7FF4();
        v87 = v86;

        v80 = v85 - v87;
      }
    }

    else
    {
      sub_219BE7FF4();
      v79 = v78;
      v80 = 0.0;
      v100 = 0.0;
      v101 = 0.0;
      v106 = 0.0;
      v107 = 0.0;
      v111 = 0;
      v108 = 0.0;
      v109 = 0.0;
      v81 = v20;
      v83 = v114;
      v82 = v115;
    }

    v114 = v80;
    v115 = v79;
    sub_219BE7FF4();
    v90 = v89;
    v151.origin.x = v79;
    v91 = v110;
    v151.origin.y = v110;
    v92 = v81;
    v151.size.width = v81;
    v99 = v81;
    v62 = v102;
    v151.size.height = v102;
    v93 = ceil(CGRectGetMaxY(v151));
    v94 = sub_219BE8034();
    [v94 displayScale];
    v96 = v95;

    v97 = v93 + 15.0;
    v75 = 1.0 / fmax(v96, 1.0);
    v152.origin.x = v90;
    v98 = v90;
    v152.origin.y = v97;
    v152.size.width = v20;
    v152.size.height = v75;
    v58 = v20;
    v59 = ceil(CGRectGetMaxY(v152));
    v77 = v112 & 1;
    v128 = 0uLL;
    *&v129 = v58;
    *(&v129 + 1) = v59;
    *&v130 = v115;
    *(&v130 + 1) = v91;
    *&v131 = v92;
    *(&v131 + 1) = v62;
    *&v132 = v111;
    *(&v132 + 1) = v109;
    *&v133 = v108;
    *(&v133 + 1) = v107;
    v71 = v100;
    v68 = v101;
    *&v134 = v114;
    *(&v134 + 1) = v101;
    *&v135 = v106;
    *(&v135 + 1) = v100;
    *&v136 = v90;
    *(&v136 + 1) = v97;
    v72 = v97;
    *v137 = v58;
    *(v137 + 1) = v75;
    *&v137[1] = v59;
    BYTE8(v137[1]) = v112 & 1;
    nullsub_1(&v128);
    v126 = v136;
    v127[0] = v137[0];
    *(v127 + 9) = *(v137 + 9);
    v122 = v132;
    v123 = v133;
    v124 = v134;
    v125 = v135;
    v118 = v128;
    v119 = v129;
    v120 = v130;
    v121 = v131;
    v116 = v105;
    v117 = v103;

    sub_219BE2DE4();

    (*(*&v83 + 8))(v14, COERCE_DOUBLE(*&v82));
    v73 = v98;
    v63 = v99;
    v69 = v114;
    v61 = v115;
    v64 = v109;
    v60 = v110;
    v57 = 0uLL;
    v74 = v58;
    v76 = v59;
    v70 = v106;
    v67 = v107;
    v65 = v111;
    v66 = v108;
  }

  else
  {
    (*(*&v114 + 8))(v14, COERCE_DOUBLE(*&v115));

    v57 = v138;
    v59 = *(&v139 + 1);
    v58 = *&v139;
    v60 = *(&v140 + 1);
    v61 = *&v140;
    v62 = *(&v141 + 1);
    v63 = *&v141;
    v64 = *(&v142 + 1);
    v65 = v142;
    v67 = *(&v143 + 1);
    v66 = *&v143;
    v68 = *(&v144 + 1);
    v69 = *&v144;
    v71 = *(&v145 + 1);
    v70 = *&v145;
    v72 = *(&v146 + 1);
    v73 = *&v146;
    v75 = *(v147 + 1);
    v74 = *v147;
    v76 = *&v147[1];
    v77 = BYTE8(v147[1]);
  }

  *a6 = v57;
  *(a6 + 16) = v58;
  *(a6 + 24) = v59;
  *(a6 + 32) = v61;
  *(a6 + 40) = v60;
  *(a6 + 48) = v63;
  *(a6 + 56) = v62;
  *(a6 + 64) = v65;
  *(a6 + 72) = v64;
  *(a6 + 80) = v66;
  *(a6 + 88) = v67;
  *(a6 + 96) = v69;
  *(a6 + 104) = v68;
  *(a6 + 112) = v70;
  *(a6 + 120) = v71;
  *(a6 + 128) = v73;
  *(a6 + 136) = v72;
  *(a6 + 144) = v74;
  *(a6 + 152) = v75;
  *(a6 + 160) = v76;
  *(a6 + 168) = v77;
}

uint64_t sub_218A2932C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_218A29390(uint64_t a1)
{
  v1 = *(a1 + 168);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_218A293AC()
{
  result = qword_280E8DB00;
  if (!qword_280E8DB00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8DB00);
  }

  return result;
}

uint64_t FeedServiceContextPurpose.hashValue.getter()
{
  v1 = *v0;
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v1);
  return sub_219BF7AE4();
}

unint64_t sub_218A29484()
{
  result = qword_27CC0CA10;
  if (!qword_27CC0CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CA10);
  }

  return result;
}

double sub_218A294FC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
  byte_27CCD8250 = 0;
  result = 0.0;
  unk_27CCD8258 = 0u;
  unk_27CCD8268 = 0u;
  unk_27CCD8278 = 0u;
  unk_27CCD8288 = 0u;
  unk_27CCD8298 = 0u;
  qword_27CCD82A8 = v0;
  xmmword_27CCD82B0 = 0u;
  unk_27CCD82C0 = 0u;
  xmmword_27CCD82D0 = 0u;
  unk_27CCD82E0 = 0u;
  xmmword_27CCD82F0 = 0u;
  unk_27CCD8300 = 0u;
  xmmword_27CCD8310 = 0u;
  unk_27CCD8320 = 0u;
  xmmword_27CCD8330 = 0u;
  unk_27CCD8340 = 0u;
  xmmword_27CCD8350 = 0u;
  unk_27CCD8360 = 0u;
  xmmword_27CCD8370 = 0u;
  unk_27CCD8380 = 0u;
  xmmword_27CCD8390 = 0u;
  unk_27CCD83A0 = 0u;
  xmmword_27CCD83B0 = 0u;
  unk_27CCD83C0 = 0u;
  xmmword_27CCD83D0 = 0u;
  unk_27CCD83E0 = 0u;
  return result;
}

uint64_t sub_218A29580(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 416))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_218A295C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 408) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 416) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 416) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_218A29684(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(uint64_t (*)(void)), uint64_t), uint64_t a4)
{
  v5 = v4;
  v52 = a4;
  v53 = a3;
  sub_218A2AFF0(0, &qword_27CC0CA18, MEMORY[0x277D6EC60]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v52 - v8;
  v10 = sub_219BE88E4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_219BE7BC4();
  v54 = [v55 superview];
  if (v54)
  {
    v14 = [v55 snapshotViewAfterScreenUpdates_];
    if (!v14)
    {

      if (qword_280E8D8A0 != -1)
      {
        swift_once();
      }

      sub_219BF61F4();
      sub_219BE5314();
      v53(sub_218A2B1BC, 0);

      v32 = &v65;
      goto LABEL_12;
    }

    v15 = v14;
    [v55 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    [v15 setFrame_];
    [v54 addSubview_];
    (*(v11 + 16))(v13, a1, v10);
    if ((*(v11 + 88))(v13, v10) == *MEMORY[0x277D6E040])
    {
      (*(v11 + 96))(v13, v10);
      __swift_destroy_boxed_opaque_existential_1(v13);
      sub_219BE7294();
      if (v60[3])
      {
        if (swift_dynamicCast())
        {
          v61 = aBlock;
          v62 = v57;
          v63 = v58;
          v64 = v59;
          v24 = sub_219BE7BC4();
          *&aBlock = *(v4 + 16);
          sub_218987004();
          sub_218795CA8(&qword_27CC11BF0, sub_218987004);
          sub_219BE7B94();
          _s8SnapshotCMa();
          swift_allocObject();
          v25 = v54;
          v41 = sub_2197967FC(v24, v9, v25);
          v42 = objc_opt_self();
          v43 = swift_allocObject();
          v44 = v52;
          *(v43 + 16) = v53;
          *(v43 + 24) = v44;
          *(v43 + 32) = v5;
          *(v43 + 40) = v25;
          *(v43 + 48) = v15;
          *(v43 + 56) = v41;
          v45 = v62;
          *(v43 + 64) = v61;
          *(v43 + 80) = v45;
          *(v43 + 96) = v63;
          *(v43 + 112) = v64;
          *(v43 + 120) = v55;
          v46 = swift_allocObject();
          *(v46 + 16) = sub_218A2B0E4;
          *(v46 + 24) = v43;
          *&v58 = sub_218807D50;
          *(&v58 + 1) = v46;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v57 = sub_218807CE4;
          *(&v57 + 1) = &block_descriptor_6;
          v47 = _Block_copy(&aBlock);
          v48 = v55;
          v49 = v25;

          v50 = v15;

          [v42 performWithoutAnimation_];

          _Block_release(v47);

          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            return;
          }

          __break(1u);
          goto LABEL_26;
        }
      }

      else
      {
        sub_218806FD0(v60);
      }

      if (qword_280E8D8A0 != -1)
      {
        swift_once();
      }

      sub_219BF61F4();
      sub_2186F20D4();
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_219C09BA0;
      sub_219BE7294();
      sub_21880702C();
      v38 = sub_219BF5484();
      v40 = v39;
      *(v37 + 56) = MEMORY[0x277D837D0];
      *(v37 + 64) = sub_2186FC3BC();
      *(v37 + 32) = v38;
      *(v37 + 40) = v40;
      sub_219BE5314();

      v34 = swift_allocObject();
      *(v34 + 16) = v15;
      v35 = v15;
      v36 = sub_218A2B1AC;
    }

    else
    {
      (*(v11 + 8))(v13, v10);
      if (qword_280E8D8A0 != -1)
      {
        swift_once();
      }

      sub_219BF61F4();
      sub_219BE5314();
      v34 = swift_allocObject();
      *(v34 + 16) = v15;
      v35 = v15;
      v36 = sub_218A2AFA8;
    }

    v53(v36, v34);

    return;
  }

  if (qword_280E8D8A0 != -1)
  {
LABEL_26:
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_219C09BA0;
  v27 = sub_219BE7BC4();
  v28 = [v27 description];
  v29 = sub_219BF5414();
  v31 = v30;

  *(v26 + 56) = MEMORY[0x277D837D0];
  *(v26 + 64) = sub_2186FC3BC();
  *(v26 + 32) = v29;
  *(v26 + 40) = v31;
  sub_219BE5314();

  v53(sub_218A2B1BC, 0);
  v32 = &v66;
LABEL_12:
  v33 = *(v32 - 32);
}

uint64_t sub_218A2A164(void (*a1)(uint64_t (*)(uint64_t a1, uint64_t a2), uint64_t), uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
  *(v15 + 40) = a6;
  v16 = *(a7 + 16);
  *(v15 + 48) = *a7;
  *(v15 + 64) = v16;
  *(v15 + 80) = *(a7 + 32);
  *(v15 + 96) = *(a7 + 48);
  *(v15 + 104) = a8;

  v17 = a4;
  v18 = a5;
  v19 = a8;
  a1(sub_218A2B0FC, v15);
}

uint64_t sub_218A2A250(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v39 = a8;
  v36 = a1;
  v37 = a2;
  v44 = sub_219BED174();
  v47 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BED1D4();
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x28223BE20](v14);
  v38 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BED214();
  v42 = v16;
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v36 - v21;
  sub_2187D9028();

  v40 = sub_219BF66A4();
  sub_219BED1F4();
  sub_219BED244();
  v41 = *(v17 + 8);
  v41(v20, v16);
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  v24 = v36;
  *(v23 + 32) = a5;
  *(v23 + 40) = v24;
  *(v23 + 48) = v37;
  *(v23 + 56) = a6;
  v25 = *(a7 + 16);
  *(v23 + 64) = *a7;
  *(v23 + 80) = v25;
  *(v23 + 96) = *(a7 + 32);
  *(v23 + 112) = *(a7 + 48);
  v26 = v39;
  *(v23 + 120) = v39;
  aBlock[4] = sub_218A2B110;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_24;
  v27 = _Block_copy(aBlock);

  v28 = a4;
  v29 = a5;

  v30 = v26;

  v31 = v38;
  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_218795CA8(&qword_280E927E0, MEMORY[0x277D85198]);
  sub_21879DD98();
  sub_218795CA8(&qword_280E8EFA0, sub_21879DD98);
  v33 = v43;
  v32 = v44;
  sub_219BF7164();
  v34 = v40;
  MEMORY[0x21CECD420](v22, v31, v33, v27);
  _Block_release(v27);

  (*(v47 + 8))(v33, v32);
  (*(v45 + 8))(v31, v46);
  return (v41)(v22, v42);
}

void sub_218A2A68C(uint64_t a1, void *a2, unint64_t a3, void (*a4)(id), uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v55 = a8;
  v56 = a6;
  v57 = a7;
  v58 = a4;
  v59 = a5;
  v60 = a3;
  v10 = sub_219BED174();
  v62 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BED1D4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A2AFF0(0, &qword_27CC0CA18, MEMORY[0x277D6EC60]);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v52 - v18;
  v20 = sub_219BE7BC4();
  aBlock = *(a1 + 16);
  sub_218987004();
  sub_218795CA8(&qword_27CC11BF0, sub_218987004);
  sub_219BE7B94();
  _s8SnapshotCMa();
  swift_allocObject();
  v21 = a2;
  v26 = sub_2197967FC(v20, v19, v21);
  v52 = v16;
  v53 = v14;
  v54 = v12;
  v61 = v13;
  _s4PlanCMa();
  swift_allocObject();

  v28 = sub_218A8F584(v27, v26, v57);
  v57 = v26;

  v29 = v60;
  sub_218A8EE44(v21, v60);
  [v29 removeFromSuperview];
  v30 = dispatch_group_create();
  v56 = v28;
  v60 = *(v28 + 88);
  if (v60 >> 62)
  {
    v51 = v30;
    v31 = sub_219BF7214();
    v30 = v51;
  }

  else
  {
    v31 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v61;
  v32 = v62;
  v34 = v30;
  v35 = v60;
  if (!v31)
  {
LABEL_14:

    sub_2187D9028();
    v62 = sub_219BF66A4();
    v42 = swift_allocObject();
    v43 = v55;
    v44 = v56;
    v42[2] = v55;
    v42[3] = v44;
    v45 = v59;
    v42[4] = v58;
    v42[5] = v45;
    v67 = sub_218A2B148;
    v68 = v42;
    aBlock = MEMORY[0x277D85DD0];
    v64 = 1107296256;
    v65 = sub_218793E0C;
    v66 = &block_descriptor_30;
    v46 = _Block_copy(&aBlock);
    v47 = v43;

    v48 = v52;
    sub_219BED1A4();
    v69 = MEMORY[0x277D84F90];
    sub_218795CA8(&qword_280E927E0, MEMORY[0x277D85198]);
    sub_21879DD98();
    sub_218795CA8(&qword_280E8EFA0, sub_21879DD98);
    v49 = v54;
    sub_219BF7164();
    v50 = v62;
    sub_219BF6654();

    _Block_release(v46);

    (*(v32 + 8))(v49, v10);
    (*(v53 + 8))(v48, v33);

    return;
  }

  v36 = 0;
  v37 = v60 & 0xC000000000000001;
  v38 = v60 & 0xFFFFFFFFFFFFFF8;
  v39 = v10;
  while (v37)
  {
    v33 = MEMORY[0x21CECE0F0](v36);
    v10 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

LABEL_8:
    aBlock = v33;
    v40 = v34;
    sub_218A9C328(&aBlock, v40);

    v33 = v61;
    v32 = v62;
    ++v36;
    v41 = v10 == v31;
    v10 = v39;
    v35 = v60;
    if (v41)
    {
      goto LABEL_14;
    }
  }

  if (v36 < *(v38 + 16))
  {
    v33 = *(v35 + 8 * v36 + 32);

    v10 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  __break(1u);
  swift_once();
  sub_219BF61F4();
  sub_2186F20D4();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_219C09BA0;
  aBlock = 0;
  v64 = 0xE000000000000000;
  v69 = 0;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v23 = aBlock;
  v24 = v64;
  *(v22 + 56) = MEMORY[0x277D837D0];
  *(v22 + 64) = sub_2186FC3BC();
  *(v22 + 32) = v23;
  *(v22 + 40) = v24;
  sub_219BE5314();

  v25 = [v60 removeFromSuperview];
  v58(v25);
}

id sub_218A2AE44(void *a1, void *a2, double a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v10[4] = sub_218A2B194;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_218A8F318;
  v10[3] = &block_descriptor_36;
  v7 = _Block_copy(v10);
  v8 = a2;

  [a1 addCompletion_];
  _Block_release(v7);
  dispatch_group_enter(v8);
  return [a1 startAnimationAfterDelay_];
}

void sub_218A2AF4C(uint64_t a1, dispatch_group_t group)
{
  if (!a1)
  {
    dispatch_group_leave(group);
  }
}

void sub_218A2AFF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioPlaylistFeedSectionDescriptor();
    v8[1] = type metadata accessor for AudioPlaylistFeedModel();
    v8[2] = sub_218795CA8(&unk_27CC11BE0, type metadata accessor for AudioPlaylistFeedSectionDescriptor);
    v8[3] = sub_218795CA8(&unk_27CC0B7F0, type metadata accessor for AudioPlaylistFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218A2B148()
{
  v1 = *(v0 + 32);
  [*(v0 + 16) reloadData];
  v2 = sub_218A8F36C();
  return v1(v2);
}

void sub_218A2B194(uint64_t a1)
{
  if (!a1)
  {
    dispatch_group_leave(*(v1 + 16));
  }
}

uint64_t sub_218A2B1C0()
{
  swift_getKeyPath();
  sub_218A2B4DC();
  sub_219BDC204();

  return *(v0 + 80);
}

uint64_t sub_218A2B230(uint64_t result)
{
  if (*(v1 + 80) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_218A2B4DC();
    sub_219BDC1F4();
  }

  return result;
}

uint64_t sub_218A2B310()
{

  v1 = OBJC_IVAR____TtC7NewsUI233RecipeFilterDurationItemViewModel___observationRegistrar;
  v2 = sub_219BDC244();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecipeFilterDurationItemViewModel()
{
  result = qword_27CC0CA28;
  if (!qword_27CC0CA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218A2B420()
{
  result = sub_219BDC244();
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

uint64_t sub_218A2B4CC@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

unint64_t sub_218A2B4DC()
{
  result = qword_27CC0B230;
  if (!qword_27CC0B230)
  {
    type metadata accessor for RecipeFilterDurationItemViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B230);
  }

  return result;
}

unint64_t WelcomeError.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_218A2B574()
{
  sub_219BF7AA4();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_218A2B5D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_218A2B988();

  return MEMORY[0x28211C010](a1, a2, v4);
}

uint64_t *sub_218A2B624@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_218A2B640(uint64_t a1)
{
  v2 = sub_218A2B988();

  return MEMORY[0x28211C020](a1, v2);
}

uint64_t sub_218A2B67C(uint64_t a1)
{
  v2 = sub_218A2B988();

  return MEMORY[0x28211C018](a1, v2);
}

uint64_t sub_218A2B6D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_218A2B988();

  return MEMORY[0x28211C008](a1, a2, v4);
}

unint64_t WelcomeUserType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_218A2B740()
{
  result = qword_27CC0CA38;
  if (!qword_27CC0CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CA38);
  }

  return result;
}

unint64_t sub_218A2B798()
{
  result = qword_27CC0CA40;
  if (!qword_27CC0CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CA40);
  }

  return result;
}

unint64_t sub_218A2B7F0()
{
  result = qword_27CC0CA48;
  if (!qword_27CC0CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CA48);
  }

  return result;
}

unint64_t sub_218A2B848()
{
  result = qword_27CC0CA50;
  if (!qword_27CC0CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CA50);
  }

  return result;
}

unint64_t sub_218A2B8A0()
{
  result = qword_27CC0CA58;
  if (!qword_27CC0CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CA58);
  }

  return result;
}

unint64_t sub_218A2B8F8()
{
  result = qword_27CC0CA60;
  if (!qword_27CC0CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CA60);
  }

  return result;
}

uint64_t *sub_218A2B94C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

unint64_t sub_218A2B988()
{
  result = qword_27CC0CA68;
  if (!qword_27CC0CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CA68);
  }

  return result;
}

uint64_t sub_218A2B9E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 464))
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

uint64_t sub_218A2BA2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 456) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 464) = 1;
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

    *(result + 464) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_218A2BAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = a2;
  sub_218A2D07C(0);
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v38 = &v34 - v10;
  sub_218A2D09C();
  MEMORY[0x28223BE20](v11 - 8);
  sub_218950ACC();
  v36 = swift_allocBox();
  sub_218950928();
  v13 = v12;
  v14 = sub_2186D557C(&qword_280EE5770, sub_218950928);
  v15 = sub_2186D557C(&qword_280EE5778, sub_218950928);
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v13, v14, v15);
  type metadata accessor for FollowingModel();
  sub_2187490E4();
  sub_2186D557C(&qword_280EDC630, type metadata accessor for FollowingModel);
  sub_219BEB2D4();
  if (qword_280EE6048 != -1)
  {
    swift_once();
  }

  v16 = sub_219BE5434();
  __swift_project_value_buffer(v16, qword_280F62748);
  v17 = sub_219BE5414();
  v18 = sub_219BF6214();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2186C1000, v17, v18, "Following prewarm prepare family status...", v19, 2u);
    MEMORY[0x21CECF960](v19, -1, -1);
  }

  swift_getObjectType();
  sub_219BF42D4();
  v20 = sub_219BE5414();
  v21 = sub_219BF6214();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2186C1000, v20, v21, "Following prewarm prepared family status...done", v22, 2u);
    MEMORY[0x21CECF960](v22, -1, -1);
  }

  MEMORY[0x28223BE20](v23);
  *(&v34 - 2) = v4;
  sub_218977394();
  sub_219BE3204();
  sub_2186C6148(0, &qword_280E8E3B0);
  v24 = sub_219BF66A4();
  sub_218A2D7B4(v4, v39);
  v25 = v38;
  sub_218A2D7EC(v38, v9);
  v26 = (*(v35 + 80) + 488) & ~*(v35 + 80);
  v27 = swift_allocObject();
  memcpy((v27 + 16), v39, 0x1D0uLL);
  *(v27 + 480) = v36;
  sub_218A2D850(v9, v27 + v26);
  v28 = (v27 + ((v7 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  v29 = v37;
  *v28 = v37;
  v28[1] = a3;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_218A2D8B4;
  *(v30 + 24) = v27;

  sub_219BE2F74();

  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = a3;

  v32 = sub_219BE2E54();
  sub_219BE2FD4();

  sub_218A2D9F8(v25, sub_218A2D07C);
}

uint64_t sub_218A2C068()
{
  sub_218A2C104("Following prewarm preparing notification configuration...");
  sub_218A2C104("Following prewarm preparing tag service...");
  v0 = sub_219BE31C4();

  return v0;
}

uint64_t sub_218A2C104(const char *a1)
{
  if (qword_280EE6048 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F62748);
  v3 = sub_219BE5414();
  v4 = sub_219BF6214();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2186C1000, v3, v4, a1, v5, 2u);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  MEMORY[0x28223BE20](v6);
  sub_21879D924();
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_218A2C23C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v98 = a5;
  v99 = a4;
  v92 = a3;
  sub_218748264(0, &qword_280EE4B40, MEMORY[0x277D6DF88]);
  v96 = *(v6 - 8);
  v97 = v6;
  MEMORY[0x28223BE20](v6);
  v95 = &v81 - v7;
  sub_218950ACC();
  v9 = v8;
  v94 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v93 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A2D984(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v91 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v90 = &v81 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v89 = &v81 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v88 = &v81 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v87 = &v81 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v81 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v81 - v25;
  sub_218950928();
  v28 = v27;
  v29 = *(v27 - 8);
  v30 = MEMORY[0x28223BE20](v27);
  v86 = &v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v102 = &v81 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v85 = &v81 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v84 = &v81 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v83 = &v81 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v82 = &v81 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v81 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v101 = &v81 - v46;
  MEMORY[0x28223BE20](v45);
  v48 = &v81 - v47;
  v49 = swift_projectBox();
  sub_2198CE64C(v26);
  v104 = *(v29 + 48);
  v100 = v29 + 48;
  v50 = v104(v26, 1, v28);
  v103 = v29;
  if (v50 == 1)
  {
    sub_218A2D9F8(v26, sub_218A2D984);
  }

  else
  {
    (*(v29 + 32))(v48, v26, v28);
    swift_beginAccess();
    sub_219BEB1E4();
    swift_endAccess();
    (*(v29 + 8))(v48, v28);
  }

  sub_2198CF7A4(v101);
  swift_beginAccess();
  sub_219BEB1E4();
  swift_endAccess();
  sub_2198D0420(v24);
  v51 = v9;
  if (v104(v24, 1, v28) == 1)
  {
    sub_218A2D9F8(v24, sub_218A2D984);
  }

  else
  {
    v52 = v103;
    (*(v103 + 32))(v44, v24, v28);
    swift_beginAccess();
    sub_219BEB1E4();
    swift_endAccess();
    (*(v52 + 8))(v44, v28);
  }

  v53 = v88;
  v54 = v87;
  sub_2198D068C(v87);
  if (v104(v54, 1, v28) == 1)
  {
    sub_218A2D9F8(v54, sub_218A2D984);
  }

  else
  {
    v55 = v103;
    v56 = v82;
    (*(v103 + 32))(v82, v54, v28);
    swift_beginAccess();
    sub_219BEB1E4();
    swift_endAccess();
    (*(v55 + 8))(v56, v28);
  }

  v57 = v89;
  v89 = *(a1 + 392);
  v58 = sub_218845E04();
  sub_2198D09F4(v58, v53);
  if (v104(v53, 1, v28) == 1)
  {
    sub_218A2D9F8(v53, sub_218A2D984);
  }

  else
  {
    v59 = v103;
    v60 = v83;
    (*(v103 + 32))(v83, v53, v28);
    swift_beginAccess();
    sub_219BEB1E4();
    swift_endAccess();
    (*(v59 + 8))(v60, v28);
  }

  sub_2198D0D0C(v58, v57);
  if (v104(v57, 1, v28) == 1)
  {
    sub_218A2D9F8(v57, sub_218A2D984);
    v61 = v103;
  }

  else
  {
    v61 = v103;
    v62 = v84;
    (*(v103 + 32))(v84, v57, v28);
    swift_beginAccess();
    sub_219BEB1E4();
    swift_endAccess();
    (*(v61 + 8))(v62, v28);
  }

  v63 = v90;
  sub_2198D1190(v58, v90);
  if (v104(v63, 1, v28) == 1)
  {
    sub_218A2D9F8(v63, sub_218A2D984);
  }

  else
  {
    v64 = v85;
    (*(v61 + 32))(v85, v63, v28);
    swift_beginAccess();
    sub_219BEB1E4();
    swift_endAccess();
    (*(v61 + 8))(v64, v28);
  }

  sub_2198D1458(v58);

  swift_beginAccess();
  sub_219BEB1E4();
  swift_endAccess();
  sub_218E93D80();
  v65 = v91;
  sub_2198D1674(v66, v92, v91);

  if (v104(v65, 1, v28) == 1)
  {
    sub_218A2D9F8(v65, sub_218A2D984);
  }

  else
  {
    v67 = v86;
    (*(v61 + 32))(v86, v65, v28);
    swift_beginAccess();
    sub_219BEB1E4();
    swift_endAccess();
    (*(v61 + 8))(v67, v28);
  }

  v68 = v95;
  swift_beginAccess();
  v69 = v93;
  v70 = v94;
  v71 = *(v94 + 16);
  v71(v93, v49, v51);
  sub_2186D557C(&unk_280EE3770, sub_218950ACC);
  sub_219BF5DF4();
  sub_219BF5E84();
  (*(v70 + 8))(v69, v51);
  if (v105 == v106)
  {
    v72 = MEMORY[0x277D6DF80];
  }

  else
  {
    sub_218A2DA58();
    v74 = *(v73 + 48);
    swift_beginAccess();
    v71(v68, v49, v51);
    v75 = *MEMORY[0x277D6D868];
    v76 = sub_219BE6DF4();
    (*(*(v76 - 8) + 104))(&v68[v74], v75, v76);
    v72 = MEMORY[0x277D6DF70];
  }

  v78 = v96;
  v77 = v97;
  (*(v96 + 104))(v68, *v72, v97);
  v99(v68);
  (*(v78 + 8))(v68, v77);
  v79 = *(v61 + 8);
  v79(v102, v28);
  return (v79)(v101, v28);
}

uint64_t sub_218A2CE78(void *a1, void (*a2)(char *))
{
  sub_218748264(0, &qword_280EE4B40, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  *(&v11 - v7) = a1;
  (*(v6 + 104))(&v11 - v7, *MEMORY[0x277D6DF68], v5);
  v9 = a1;
  a2(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_218A2CFA0(uint64_t a1)
{
  v2 = sub_218A2DB00();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_218A2CFE0()
{
  result = qword_280EC1AE8;
  if (!qword_280EC1AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC1AE8);
  }

  return result;
}

void sub_218A2D09C()
{
  if (!qword_280EE7480)
  {
    sub_218950928();
    sub_2186D557C(&qword_280EE5770, sub_218950928);
    sub_2186D557C(&qword_280EE5778, sub_218950928);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7480);
    }
  }
}

void sub_218A2D168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + 392);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = sub_2187A913C;
  v12[5] = v10;
  v13 = *(v11 + 32);
  sub_2186C6148(0, &qword_280E8E3B0);

  v14 = sub_219BF66A4();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_218A2DAD4;
  *(v15 + 24) = v12;
  v17[4] = sub_218A2DAE0;
  v17[5] = v15;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_218793E0C;
  v17[3] = &block_descriptor_7;
  v16 = _Block_copy(v17);

  [v13 prewarmFromCacheWithCallbackQueue:v14 completion:v16];
  _Block_release(v16);
}

void sub_218A2D308(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(void))
{
  if (a1)
  {
    v6 = a1;
    if (qword_280EE6048 != -1)
    {
      swift_once();
    }

    v7 = sub_219BE5434();
    __swift_project_value_buffer(v7, qword_280F62748);
    v8 = a1;
    v9 = sub_219BE5414();
    v10 = sub_219BF61F4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      v13 = a1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_2186C1000, v9, v10, "Following prewarm preparing tag service, failed=%{public}@", v11, 0xCu);
      sub_218A2D9F8(v12, sub_2189B3F3C);
      MEMORY[0x21CECF960](v12, -1, -1);
      MEMORY[0x21CECF960](v11, -1, -1);
    }

    a2(a1);
  }

  else
  {
    if (qword_280EE6048 != -1)
    {
      swift_once();
    }

    v16 = sub_219BE5434();
    __swift_project_value_buffer(v16, qword_280F62748);
    v17 = sub_219BE5414();
    v18 = sub_219BF6214();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2186C1000, v17, v18, "Following prewarm prepared tag service...done", v19, 2u);
      MEMORY[0x21CECF960](v19, -1, -1);
    }

    a4();
  }
}

uint64_t sub_218A2D574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 392);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_218A2DB54;
  *(v10 + 24) = v8;
  v11 = v9[9];
  v12 = v9[10];
  __swift_project_boxed_opaque_existential_1(v9 + 6, v11);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_218A2DAF0;
  *(v13 + 24) = v10;
  v14 = *(v12 + 32);

  v14(sub_218A2DAF8, v13, v11, v12);
}

uint64_t sub_218A2D6A4(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_280EE6048 != -1)
  {
    swift_once();
  }

  v3 = sub_219BE5434();
  __swift_project_value_buffer(v3, qword_280F62748);
  v4 = sub_219BE5414();
  v5 = sub_219BF6214();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2186C1000, v4, v5, "Following prewarm preparing notification configuration...done", v6, 2u);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  return a2();
}

uint64_t sub_218A2D7EC(uint64_t a1, uint64_t a2)
{
  sub_218A2D07C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A2D850(uint64_t a1, uint64_t a2)
{
  sub_218A2D07C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A2D8B4()
{
  sub_218A2D07C(0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 488) & ~*(v2 + 80);
  v4 = *(v0 + 480);
  v5 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_218A2C23C(v0 + 16, v4, v0 + v3, v6, v7);
}

void sub_218A2D9A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_218A2D9F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218A2DA58()
{
  if (!qword_280EE3788)
  {
    sub_218950ACC();
    sub_219BE6DF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE3788);
    }
  }
}

unint64_t sub_218A2DB00()
{
  result = qword_280EC1AF0;
  if (!qword_280EC1AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC1AF0);
  }

  return result;
}

id sub_218A2DB58()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_readingList] removeObserver_];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_218A2DCE8(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for SavedFeedGapLocation(0);
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = CACurrentMediaTime();
  v6 = *a1;
  v5 = a1[1];
  v7 = *(type metadata accessor for SavedFeedExpandRequest() + 20);
  v8 = qword_280E8D7A8;

  if (v8 != -1)
  {
    swift_once();
  }

  v21 = qword_280F616E0;
  v20[3] = sub_219BF6214();
  sub_2186F20D4();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09EC0;
  v10 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v11 = sub_2186FC3BC();
  *(v9 + 64) = v11;
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;
  v24 = 0;
  v25 = 0xE000000000000000;

  sub_219BF7484();
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 72) = 0;
  *(v9 + 80) = 0xE000000000000000;
  sub_219BE5314();

  sub_218A2F228(a1 + v7, v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v13 = swift_allocObject();
  sub_218A2F28C(v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_218A2F35C(0, &qword_280E90A10, MEMORY[0x277D33098]);
  sub_219BE31F4();

  sub_218A2F35C(0, &qword_280E91630, MEMORY[0x277D32580]);
  sub_219BE2F84();

  sub_2187D9028();
  v14 = sub_219BF66A4();
  v15 = swift_allocObject();
  *(v15 + 2) = v6;
  *(v15 + 3) = v5;
  v15[4] = v4;

  sub_219BE2F74();

  v16 = swift_allocObject();
  v16[2] = v4;
  *(v16 + 3) = v6;
  *(v16 + 4) = v5;
  v17 = sub_219BE2E54();
  v18 = sub_219BE2FD4();

  return v18;
}

uint64_t sub_218A2E0C0()
{
  sub_218A2F1D8();
  swift_allocObject();

  return sub_219BE3014();
}

uint64_t sub_218A2E138(uint64_t a1, uint64_t a2)
{
  sub_218A2F35C(0, &qword_280E90A10, MEMORY[0x277D33098]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v12 = type metadata accessor for SavedFeedGapLocation(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A2F228(a2, v14);
  v15 = (*(v6 + 48))(v14, 1, v5);
  if (v15 == 1)
  {
    MEMORY[0x28223BE20](v15);
    *(&v19 - 2) = a1;
    type metadata accessor for SavedFeedServiceConfig();
    sub_219BE3204();
    v16 = sub_219BE2E54();
    v17 = sub_219BE2F74();
  }

  else
  {
    (*(v6 + 32))(v11, v14, v5);
    (*(v6 + 16))(v8, v11, v5);
    sub_218A2F3F4();
    swift_allocObject();
    v17 = sub_219BE3014();
    (*(v6 + 8))(v11, v5);
  }

  return v17;
}

uint64_t sub_218A2E3C4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_feedServiceContextFactory);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  (*(v3 + 8))(v2, v3);
  v4 = [objc_opt_self() currentDevice];
  [v4 userInterfaceIdiom];

  v5 = sub_219BED564();

  return v5;
}

uint64_t sub_218A2E4B8()
{
  type metadata accessor for SavedFeedServiceConfig();
  sub_21877F710();
  return sub_219BF0F44();
}

uint64_t sub_218A2E544@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = qword_280E8D7A8;

  if (v8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C0B8C0;
  sub_219BF5CD4();
  v10 = MEMORY[0x277D83A80];
  *(v9 + 56) = MEMORY[0x277D839F8];
  *(v9 + 64) = v10;
  *(v9 + 32) = v11;
  v12 = MEMORY[0x277D837D0];
  *(v9 + 96) = MEMORY[0x277D837D0];
  v13 = sub_2186FC3BC();
  *(v9 + 104) = v13;
  *(v9 + 72) = a2;
  *(v9 + 80) = a3;

  sub_219BF7484();
  *(v9 + 136) = v12;
  *(v9 + 144) = v13;
  *(v9 + 112) = 0;
  *(v9 + 120) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();

  *a4 = a2;
  a4[1] = a3;
  a4[2] = v7;
  return result;
}

uint64_t sub_218A2E6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_280E8D7A8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C0B8C0;
  sub_219BF5CD4();
  v6 = MEMORY[0x277D83A80];
  *(v5 + 56) = MEMORY[0x277D839F8];
  *(v5 + 64) = v6;
  *(v5 + 32) = v7;
  v8 = MEMORY[0x277D837D0];
  *(v5 + 96) = MEMORY[0x277D837D0];
  v9 = sub_2186FC3BC();
  *(v5 + 104) = v9;
  *(v5 + 72) = a2;
  *(v5 + 80) = a3;
  sub_2186CFDE4(0, &qword_280E8B580);

  sub_219BF7484();
  *(v5 + 136) = v8;
  *(v5 + 144) = v9;
  *(v5 + 112) = 0;
  *(v5 + 120) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();
}

uint64_t sub_218A2E854(uint64_t a1, void *a2)
{
  v3 = (a1 + OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_headlineService);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  return MEMORY[0x21CEC9610](*a2, *MEMORY[0x277D30B90], v4, v5);
}

uint64_t sub_218A2E8C0(uint64_t *a1, uint64_t a2)
{
  refreshed = type metadata accessor for SavedFeedRefreshResult();
  MEMORY[0x28223BE20](refreshed);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (qword_280E8D7A8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v9 = MEMORY[0x277D83A80];
  *(v8 + 56) = MEMORY[0x277D839F8];
  *(v8 + 64) = v9;
  *(v8 + 32) = v10;
  sub_219BF6214();
  sub_219BE5314();

  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(type metadata accessor for SavedFeedRefreshRequest() + 28);
  v14 = *(refreshed + 28);
  v15 = sub_219BF0BD4();
  (*(*(v15 - 8) + 16))(&v6[v14], a2 + v13, v15);
  *v6 = v7;
  *(v6 + 1) = v11;
  *(v6 + 2) = v12;
  sub_218A2F490();
  swift_allocObject();

  return sub_219BE3014();
}

BOOL sub_218A2EAFC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_readingList) allSortedArticleIDsInReadingList];
  v2 = sub_219BF5924();

  v3 = *(v2 + 16);

  return v3 == 0;
}

uint64_t sub_218A2EB64()
{
  swift_getObjectType();
  v1 = type metadata accessor for SavedFeedExpandRequest();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v4 + 28);
  sub_218A2F35C(0, &qword_280E90A10, MEMORY[0x277D33098]);
  (*(*(v6 - 8) + 56))(&v3[v5], 1, 1, v6);
  *v3 = 0x6D726177657270;
  *(v3 + 1) = 0xE700000000000000;
  v11 = v0;
  v12 = v3;
  sub_219BE3204();
  v7 = sub_219BE2E54();
  v8 = sub_219BE2F84();

  sub_218A2F17C(v3);
  return v8;
}

void sub_218A2ED80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    v5 = a4 + OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      v8 = *(a4 + OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_dataProvider + 24);
      v9 = *(a4 + OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_dataProvider + 32);
      __swift_project_boxed_opaque_existential_1((a4 + OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_dataProvider), v8);
      v10 = (*(v9 + 8))(v8, v9);
      (*(v6 + 8))(a4, &off_282A325F0, MEMORY[0x277D84F90], MEMORY[0x277D84F90], v10, ObjectType, v6);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_218A2EE90()
{
  swift_getObjectType();

  return sub_219BE24C4();
}

uint64_t sub_218A2EECC()
{
  swift_getObjectType();

  return sub_219BE24B4();
}

uint64_t sub_218A2EF24()
{
  v1 = *&v0[OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_dataProvider + 24];
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_dataProvider + 32];
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_dataProvider], v1);
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = *(v2 + 16);
  v5 = v0;
  v4(sub_218A2F484, v3, v1, v2);
}

uint64_t sub_218A2EFE0()
{
  swift_getObjectType();

  return sub_219BE24E4();
}

uint64_t sub_218A2F01C()
{
  swift_getObjectType();

  return sub_219BE24D4();
}

uint64_t sub_218A2F074()
{
  swift_getObjectType();

  return sub_219BE2484();
}

uint64_t sub_218A2F0B0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(v2, a2, 0, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218A2F17C(uint64_t a1)
{
  v2 = type metadata accessor for SavedFeedExpandRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218A2F1D8()
{
  if (!qword_280EE6DF0)
  {
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6DF0);
    }
  }
}

uint64_t sub_218A2F228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedFeedGapLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A2F28C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedFeedGapLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218A2F35C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SavedFeedServiceConfig();
    v7 = sub_21877F710();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_218A2F3F4()
{
  if (!qword_280EE6C08)
  {
    sub_218A2F35C(255, &qword_280E90A10, MEMORY[0x277D33098]);
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6C08);
    }
  }
}

void sub_218A2F490()
{
  if (!qword_280EE6DE0)
  {
    type metadata accessor for SavedFeedRefreshResult();
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6DE0);
    }
  }
}

uint64_t sub_218A2F4E8(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v9 = *(v2 + OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_dataProvider + 24);
    v10 = *(v2 + OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_dataProvider + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_dataProvider), v9);
    v11 = (*(v10 + 8))(v9, v10);
    (*(v7 + 8))(v2, &off_282A325F0, a1, a2, v11, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218A2F614(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7954788;
  if (v2 != 1)
  {
    v4 = 0x7473694C74616C66;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1953720684;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7954788;
  if (*a2 != 1)
  {
    v8 = 0x7473694C74616C66;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1953720684;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_218A2F700()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218A2F794()
{
  sub_219BF5524();
}

uint64_t sub_218A2F814()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218A2F8A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218A2FA2C();
  *a1 = result;
  return result;
}

void sub_218A2F8D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE300000000000000;
  v5 = 7954788;
  if (v2 != 1)
  {
    v5 = 0x7473694C74616C66;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1953720684;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_218A2F9D8()
{
  result = qword_27CC0CB20;
  if (!qword_27CC0CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CB20);
  }

  return result;
}

uint64_t sub_218A2FA2C()
{
  v0 = sub_219BF7614();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_218A2FA78()
{
  result = qword_280EBE3F0;
  if (!qword_280EBE3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBE3F0);
  }

  return result;
}

uint64_t sub_218A2FAF0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BEE5D4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_218A2FB7C@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_218A2FBF0()
{
  v1 = type metadata accessor for ArticleListAudioHistoryFeedGroup();
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A30324(v0, v6);
  sub_2189BD64C(v6, v4);
  v7 = sub_218CFA2BC();
  sub_218A30388(v4);
  return v7;
}

uint64_t sub_218A2FCCC(uint64_t a1)
{
  v2 = sub_218A303E4(&qword_27CC161B0);

  return MEMORY[0x282191918](a1, v2);
}

uint64_t sub_218A2FD34()
{
  sub_218A303E4(&qword_27CC0CB48);

  return sub_219BF1174();
}

uint64_t sub_218A2FDA4()
{
  v1 = type metadata accessor for ArticleListAudioHistoryFeedGroup();
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A30324(v0, v6);
  sub_2189BD64C(v6, v4);
  v7 = *v4;

  sub_218A30388(v4);
  return v7;
}

uint64_t sub_218A2FE84(uint64_t a1)
{
  v2 = sub_218A303E4(&qword_27CC0CB48);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218A2FEFC()
{
  v1 = type metadata accessor for ArticleListAudioHistoryFeedGroup();
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A30324(v0, v6);
  sub_2189BD64C(v6, v4);
  v7 = sub_219BED774();
  sub_218A30388(v4);
  return v7;
}

uint64_t sub_218A2FFE8()
{
  sub_218A303E4(&qword_27CC0CB50);

  return sub_219BE2324();
}

uint64_t type metadata accessor for AudioHistoryFeedGroup()
{
  result = qword_27CC0CB60;
  if (!qword_27CC0CB60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_218A301C8()
{
  result = qword_280EBF7C0;
  if (!qword_280EBF7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBF7C0);
  }

  return result;
}

unint64_t sub_218A30220()
{
  result = qword_280EBF7D8;
  if (!qword_280EBF7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBF7D8);
  }

  return result;
}

unint64_t sub_218A30278()
{
  result = qword_280EBF7D0;
  if (!qword_280EBF7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBF7D0);
  }

  return result;
}

unint64_t sub_218A302D0()
{
  result = qword_27CC0CB58;
  if (!qword_27CC0CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CB58);
  }

  return result;
}

uint64_t sub_218A30324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioHistoryFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A30388(uint64_t a1)
{
  v2 = type metadata accessor for ArticleListAudioHistoryFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218A303E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioHistoryFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218A30428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListAudioHistoryFeedGroup();

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_2188860CC);
}

uint64_t sub_218A30480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArticleListAudioHistoryFeedGroup();

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_218886178);
}

uint64_t sub_218A304E8(uint64_t a1)
{
  result = type metadata accessor for ArticleListAudioHistoryFeedGroup();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_218A3058C()
{
  v1 = type metadata accessor for SearchResultsGroup();
  v2 = *(v1 - 8);
  result = MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v7 = *(v6 + 16);
  if (!v7)
  {
    return 1;
  }

  v8 = 0;
  while (v8 < *(v6 + 16))
  {
    sub_218A324A4(v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v8, v5, type metadata accessor for SearchResultsGroup);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        v10 = *(*v5 + 16);

        v11 = sub_218A35880;
        goto LABEL_13;
      }
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_218A358E8(v5, type metadata accessor for SearchModel);
        return 0;
      }
    }

    else if (EnumCaseMultiPayload != 2)
    {
      v10 = *(*v5 + 16);

      v11 = sub_218A35948;
      goto LABEL_13;
    }

    v10 = *(*v5 + 16);

    v11 = sub_218A32864;
LABEL_13:
    result = sub_218A358E8((v5 + 8), v11);
    if (v10)
    {
      return 0;
    }

    if (v7 == ++v8)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t SearchResults.excluding(contentIdentifiers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218713330(0, &unk_27CC0CB70, type metadata accessor for SearchResultsGroup, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - v6;
  v8 = type metadata accessor for SearchResultsGroup();
  v9 = MEMORY[0x28223BE20](v8);
  v41 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  if (!*(a1 + 16))
  {
    return sub_218A324A4(v2, a2, type metadata accessor for SearchResults);
  }

  v36 = v2;
  v37 = a2;
  v14 = *(v2 + 16);
  v15 = *(v14 + 16);
  if (v15)
  {
    v38 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v16 = v14 + v38;
    v17 = *(v11 + 72);
    v18 = (v11 + 48);
    v19 = MEMORY[0x277D84F90];
    v39 = v8;
    v40 = a1;
    do
    {
      sub_218A324A4(v16, v13, type metadata accessor for SearchResultsGroup);
      sub_218968774(a1, v7);
      sub_218A358E8(v13, type metadata accessor for SearchResultsGroup);
      if ((*v18)(v7, 1, v8) == 1)
      {
        sub_218A30B10(v7);
      }

      else
      {
        sub_218A3243C(v7, v41, type metadata accessor for SearchResultsGroup);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_2191F7430(0, v19[2] + 1, 1, v19);
        }

        v21 = v19[2];
        v20 = v19[3];
        if (v21 >= v20 >> 1)
        {
          v19 = sub_2191F7430(v20 > 1, v21 + 1, 1, v19);
        }

        v19[2] = v21 + 1;
        sub_218A3243C(v41, v19 + v38 + v21 * v17, type metadata accessor for SearchResultsGroup);
        v8 = v39;
        a1 = v40;
      }

      v16 += v17;
      --v15;
    }

    while (v15);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  v23 = v36;
  v24 = *v36;
  v25 = *(v36 + 1);
  v26 = type metadata accessor for SearchResults();
  v27 = v26[6];
  v28 = sub_219BDF034();
  v29 = v37;
  (*(*(v28 - 8) + 16))(v37 + v27, &v23[v27], v28);
  v30 = &v23[v26[7]];
  v31 = *v30;
  v32 = v30[1];
  sub_218A30B9C(&v23[v26[8]], v29 + v26[8]);
  v33 = *&v23[v26[9]];
  v34 = *&v23[v26[10]];
  *v29 = v24;
  v29[1] = v25;
  v29[2] = v19;
  v35 = (v29 + v26[7]);
  *v35 = v31;
  v35[1] = v32;
  *(v29 + v26[9]) = v33;
  *(v29 + v26[10]) = v34;
}

uint64_t sub_218A30B10(uint64_t a1)
{
  sub_218713330(0, &unk_27CC0CB70, type metadata accessor for SearchResultsGroup, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218A30B9C(uint64_t a1, uint64_t a2)
{
  sub_218713330(0, &qword_280EE83B8, MEMORY[0x277D2E5A0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static SearchResults.empty(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SearchResults();
  v5 = v4[6];
  v6 = sub_219BDF034();
  (*(*(v6 - 8) + 16))(a2 + v5, a1, v6);
  v7 = v4[8];
  v8 = sub_219BE04F4();
  result = (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  strcpy(a2, "empty-search");
  *(a2 + 13) = 0;
  *(a2 + 14) = -5120;
  *(a2 + 16) = MEMORY[0x277D84F90];
  v10 = (a2 + v4[7]);
  *v10 = 0;
  v10[1] = 0;
  *(a2 + v4[9]) = 0;
  *(a2 + v4[10]) = 9;
  return result;
}

uint64_t SearchResults.topHitTopic()()
{
  v39 = sub_219BF04A4();
  v0 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SearchModel(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v34 - v11;
  v13 = type metadata accessor for SearchResultsGroup();
  v14 = *(v13 - 8);
  result = MEMORY[0x28223BE20](v13);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v42 + 16);
  v42 = *(v18 + 16);
  if (!v42)
  {
    return 0;
  }

  v19 = v0;
  v20 = 0;
  v21 = v18 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v40 = v18;
  v41 = v21;
  v37 = (v19 + 8);
  v35 = (v4 + 32);
  v36 = (v4 + 8);
  v22 = v18;
  v34[0] = v14;
  v34[1] = v13;
  while (v20 < *(v22 + 16))
  {
    sub_218A324A4(v41 + *(v14 + 72) * v20, v17, type metadata accessor for SearchResultsGroup);
    if (swift_getEnumCaseMultiPayload())
    {
      result = sub_218A358E8(v17, type metadata accessor for SearchResultsGroup);
    }

    else
    {
      sub_218A3243C(v17, v12, type metadata accessor for SearchModel);
      sub_218A324A4(v12, v10, type metadata accessor for SearchModel);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = v7;
        v24 = v12;
        v25 = v10;
        (*v35)(v6, v10, v3);
        v26 = v6;
        v27 = v38;
        sub_219BF07D4();
        v28 = sub_219BF0404();
        v29 = v3;
        v30 = *v37;
        (*v37)(v27, v39);
        v31 = [v28 tagType];
        swift_unknownObjectRelease();
        if (v31 == 1)
        {
          v32 = v38;
          sub_219BF07D4();
          v33 = sub_219BF0404();
          v30(v32, v39);
          (*v36)(v26, v29);
          sub_218A358E8(v24, type metadata accessor for SearchModel);
          return v33;
        }

        (*v36)(v26, v29);
        result = sub_218A358E8(v24, type metadata accessor for SearchModel);
        v3 = v29;
        v6 = v26;
        v12 = v24;
        v7 = v23;
        v10 = v25;
        v14 = v34[0];
        v22 = v40;
      }

      else
      {
        sub_218A358E8(v12, type metadata accessor for SearchModel);
        result = sub_218A358E8(v10, type metadata accessor for SearchModel);
        v22 = v40;
      }
    }

    if (v42 == ++v20)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t SearchResults.topics()()
{
  v1 = sub_219BF04A4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v86 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v85 - v5;
  sub_2186EB018();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7);
  v104 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v85 - v12;
  v14 = type metadata accessor for SearchModel(0);
  v89 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v111 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v112 = &v85 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v85 - v20;
  MEMORY[0x28223BE20](v19);
  v92 = &v85 - v22;
  v101 = type metadata accessor for SearchResultsGroup();
  result = MEMORY[0x28223BE20](v101);
  v96 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v0 + 16);
  v27 = MEMORY[0x277D84F90];
  v100 = *(v26 + 16);
  if (!v100)
  {
    return v27;
  }

  v28 = 0;
  v99 = v26 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
  v106 = (v2 + 8);
  v107 = (v9 + 32);
  v105 = (v9 + 8);
  v109 = v6;
  v29 = MEMORY[0x277D84F90];
  v93 = v8;
  v108 = v14;
  v94 = v21;
  v30 = v92;
  v31 = v24;
  v95 = v24;
  v32 = v96;
  v87 = v1;
  v90 = v13;
  v98 = v26;
  while (v28 < *(v26 + 16))
  {
    v33 = *(v31 + 72);
    v102 = v28;
    sub_218A324A4(v99 + v33 * v28, v32, type metadata accessor for SearchResultsGroup);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v46 = *v32;
      v47 = MEMORY[0x277D84F90];
      v113[0] = MEMORY[0x277D84F90];
      v48 = *(v46 + 16);
      if (v48)
      {
        v97 = v29;
        v49 = (*(v89 + 80) + 32) & ~*(v89 + 80);
        v91 = v46;
        v50 = v46 + v49;
        v51 = *(v89 + 72);
        v103 = MEMORY[0x277D84F90];
        v52 = v111;
        v53 = v112;
        v110 = v51;
        do
        {
          sub_218A324A4(v50, v53, type metadata accessor for SearchModel);
          sub_218A324A4(v53, v52, type metadata accessor for SearchModel);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v54 = v104;
            (*v107)(v104, v52, v8);
            v55 = v109;
            sub_219BF07D4();
            v56 = sub_219BF0404();
            v57 = v8;
            v58 = *v106;
            (*v106)(v55, v1);
            v59 = v1;
            v60 = [v56 tagType];
            swift_unknownObjectRelease();
            if (v60 == 1)
            {
              sub_219BF07D4();
              sub_219BF0404();
              v58(v55, v59);
              (*v105)(v54, v57);
              v61 = sub_218A358E8(v112, type metadata accessor for SearchModel);
              MEMORY[0x21CECC690](v61);
              v62 = v59;
              v8 = v57;
              if (*((v113[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_219BF5A14();
                v8 = v93;
              }

              sub_219BF5A54();
              v53 = v112;
              v103 = v113[0];
              v52 = v111;
              v1 = v62;
            }

            else
            {
              (*v105)(v54, v57);
              v53 = v112;
              sub_218A358E8(v112, type metadata accessor for SearchModel);
              v1 = v59;
              v8 = v57;
              v52 = v111;
            }

            v51 = v110;
          }

          else
          {
            sub_218A358E8(v53, type metadata accessor for SearchModel);
            sub_218A358E8(v52, type metadata accessor for SearchModel);
          }

          v50 += v51;
          --v48;
        }

        while (v48);

        v29 = v97;
        v63 = v103;
      }

      else
      {

        v63 = v47;
      }

      if (v63 >> 62)
      {
        v64 = sub_219BF7214();
      }

      else
      {
        v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v65 = v29 >> 62;
      if (v29 >> 62)
      {
        result = sub_219BF7214();
      }

      else
      {
        result = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v66 = v64;
      v67 = __OFADD__(result, v64);
      v68 = result + v64;
      if (v67)
      {
        goto LABEL_76;
      }

      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (result)
      {
        if (!v65)
        {
          v69 = v29 & 0xFFFFFFFFFFFFFF8;
          if (v68 > *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_41:
            result = sub_219BF7364();
            v29 = result;
            v69 = result & 0xFFFFFFFFFFFFFF8;
          }

          v70 = *(v69 + 16);
          v71 = (*(v69 + 24) >> 1) - v70;
          v110 = v69;
          if (v63 >> 62)
          {
            v73 = sub_219BF7214();
            v74 = v63;
            if (v73)
            {
              v75 = v73;
              v103 = v74;
              result = sub_219BF7214();
              if (v71 < result)
              {
                goto LABEL_80;
              }

              if (v75 < 1)
              {
                goto LABEL_81;
              }

              v88 = result;
              v91 = v66;
              v97 = v29;
              v76 = v110 + 8 * v70 + 32;
              sub_218A354D8();
              sub_218A35D58(&qword_280E8ECE8, sub_218A354D8);
              v77 = 0;
              v78 = v103;
              do
              {
                v79 = sub_218A35450(v113, v77, v78);
                v81 = *v80;
                swift_unknownObjectRetain();
                (v79)(v113, 0);
                *(v76 + 8 * v77++) = v81;
              }

              while (v75 != v77);
              v1 = v87;
              v29 = v97;
              v66 = v91;
              v72 = v88;
              goto LABEL_52;
            }
          }

          else
          {
            v72 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v72)
            {
              v103 = v63;
              if (v71 < v72)
              {
                goto LABEL_79;
              }

              sub_2186D6710(0, &qword_280E8E680);
              swift_arrayInitWithCopy();
LABEL_52:

              v8 = v93;
              v13 = v90;
              v30 = v92;
              v31 = v95;
              v32 = v96;
              if (v72 < v66)
              {
                goto LABEL_77;
              }

              if (v72 > 0)
              {
                v82 = *(v110 + 16);
                v67 = __OFADD__(v82, v72);
                v83 = v82 + v72;
                if (v67)
                {
                  goto LABEL_78;
                }

                *(v110 + 16) = v83;
              }

LABEL_57:
              result = sub_218A358E8((v32 + 1), sub_218A32864);
LABEL_59:
              v21 = v94;
              goto LABEL_4;
            }
          }

          v8 = v93;
          v13 = v90;
          v30 = v92;
          v31 = v95;
          v32 = v96;
          if (v66 > 0)
          {
            goto LABEL_77;
          }

          goto LABEL_57;
        }
      }

      else if (!v65)
      {
        goto LABEL_41;
      }

      sub_219BF7214();
      goto LABEL_41;
    }

    if (!EnumCaseMultiPayload)
    {
      sub_218A3243C(v32, v30, type metadata accessor for SearchModel);
      sub_218A324A4(v30, v21, type metadata accessor for SearchModel);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_218A358E8(v30, type metadata accessor for SearchModel);
        result = sub_218A358E8(v21, type metadata accessor for SearchModel);
        goto LABEL_65;
      }

      v97 = v29;
      (*v107)(v13, v21, v8);
      v35 = v109;
      sub_219BF07D4();
      v36 = sub_219BF0404();
      v37 = v8;
      v38 = *v106;
      (*v106)(v35, v1);
      v39 = [v36 tagType];
      swift_unknownObjectRelease();
      if (v39 == 1)
      {
        v40 = v86;
        sub_219BF07D4();
        v41 = sub_219BF0404();
        v38(v40, v1);
        v29 = v97;
        v42 = v97 >> 62;
        if (v97 >> 62)
        {
          result = sub_219BF7214();
          if (result < 0)
          {
            goto LABEL_82;
          }

          result = sub_219BF7214();
          v21 = v94;
          if (result < 0)
          {
            goto LABEL_83;
          }

          v84 = sub_219BF7214();
          v44 = v84 + 1;
          if (__OFADD__(v84, 1))
          {
LABEL_72:
            __break(1u);
            return v27;
          }
        }

        else
        {
          v43 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v21 = v94;
          v44 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            goto LABEL_72;
          }
        }

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        v114 = v29;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          if (!v42)
          {
            if (v44 <= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v8 = v93;
              goto LABEL_64;
            }

LABEL_61:
            v8 = v93;
LABEL_63:
            v29 = sub_219BF7364();
            v114 = v29;
LABEL_64:
            sub_2194B2A1C(0, 0, 1, v41);
            swift_unknownObjectRelease();
            (*v105)(v13, v8);
            result = sub_218A358E8(v30, type metadata accessor for SearchModel);
            v31 = v95;
LABEL_65:
            v32 = v96;
            goto LABEL_4;
          }
        }

        else if (!v42)
        {
          goto LABEL_61;
        }

        sub_219BF7214();
        v8 = v93;
        goto LABEL_63;
      }

      (*v105)(v13, v37);
      result = sub_218A358E8(v30, type metadata accessor for SearchModel);
      v8 = v37;
      v31 = v95;
      v32 = v96;
      v29 = v97;
      goto LABEL_59;
    }

    result = sub_218A358E8(v32, type metadata accessor for SearchResultsGroup);
LABEL_4:
    v28 = v102 + 1;
    v26 = v98;
    if (v102 + 1 == v100)
    {
      return v29;
    }
  }

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
  return result;
}

uint64_t SearchResults.description.getter()
{
  v1 = v0;
  sub_218713330(0, &qword_280EE83B8, MEMORY[0x277D2E5A0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2);
  v4 = v11 - v3;
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000019, 0x8000000219CE0580);
  MEMORY[0x21CECC330](*v1, v1[1]);
  MEMORY[0x21CECC330](0x7370756F7267202CLL, 0xE90000000000003DLL);
  v5 = v0[2];
  v6 = type metadata accessor for SearchResultsGroup();
  v7 = MEMORY[0x21CECC6D0](v5, v6);
  MEMORY[0x21CECC330](v7);

  MEMORY[0x21CECC330](0xD000000000000010, 0x8000000219CE05A0);
  v8 = type metadata accessor for SearchResults();
  sub_218A30B9C(v1 + *(v8 + 32), v4);
  v9 = sub_219BF5484();
  MEMORY[0x21CECC330](v9);

  MEMORY[0x21CECC330](0x6154656D6974202CLL, 0xEC0000003D6E656BLL);
  sub_219BF5CB4();
  MEMORY[0x21CECC330](0x6E696769726F202CLL, 0xEE003D6E6F697461);
  v11[1] = *(v1 + *(v8 + 40));
  sub_219BF7484();
  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return v12;
}

uint64_t SearchResults.debugDescription.getter()
{
  v1 = v0;
  sub_218713330(0, &qword_280EE83B8, MEMORY[0x277D2E5A0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2);
  v4 = v14 - v3;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000019, 0x8000000219CE0580);
  MEMORY[0x21CECC330](*v1, v1[1]);
  MEMORY[0x21CECC330](0x7370756F7267202CLL, 0xE90000000000003DLL);
  v5 = v0[2];
  v6 = type metadata accessor for SearchResultsGroup();
  v7 = MEMORY[0x21CECC6D0](v5, v6);
  MEMORY[0x21CECC330](v7);

  MEMORY[0x21CECC330](0x686372616573202CLL, 0xED00003D61746144);
  v8 = type metadata accessor for SearchResults();
  sub_219BDF034();
  sub_219BF7484();
  MEMORY[0x21CECC330](0xD000000000000011, 0x8000000219CE05C0);
  v9 = (v1 + v8[7]);
  v10 = v9[1];
  v14[0] = *v9;
  v14[1] = v10;
  sub_2186E3374();

  v11 = sub_219BF5484();
  MEMORY[0x21CECC330](v11);

  MEMORY[0x21CECC330](0xD000000000000010, 0x8000000219CE05A0);
  sub_218A30B9C(v1 + v8[8], v4);
  v12 = sub_219BF5484();
  MEMORY[0x21CECC330](v12);

  MEMORY[0x21CECC330](0x6154656D6974202CLL, 0xEC0000003D6E656BLL);
  sub_219BF5CB4();
  MEMORY[0x21CECC330](0x6E696769726F202CLL, 0xEE003D6E6F697461);
  v14[0] = *(v1 + v8[10]);
  sub_219BF7484();
  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return v15;
}

unint64_t sub_218A323F8(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_218A3241C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_218A3243C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218A324A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218A3250C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
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
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218A357B0();
          sub_218A35D58(&qword_27CC0CBD0, sub_218A357B0);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A353D0(v13, i, a3);
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
        sub_2186C6148(0, &qword_280E8DCF0);
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

uint64_t sub_218A326B8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
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
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218A354D8();
          sub_218A35D58(&qword_280E8ECE8, sub_218A354D8);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A35450(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        sub_2186D6710(0, &qword_280E8E680);
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

void sub_218A32864()
{
  if (!qword_280ED01D0)
  {
    sub_2186CFDE4(255, &qword_280ED01E0);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280ED01D0);
    }
  }
}

uint64_t sub_218A328CC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
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
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218A35C88();
          sub_218A35D58(&unk_27CC0CCD8, sub_218A35C88);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A353D0(v13, i, a3);
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
        sub_2186C6148(0, &qword_280E8E480);
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

uint64_t sub_218A32A78(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
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
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218799754(0);
          sub_218A35D58(&qword_27CC0CBF0, sub_218799754);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A353D0(v13, i, a3);
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
        sub_2186C6148(0, &qword_280E8DA30);
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

uint64_t sub_218A32C24(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
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
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2187E7248();
          sub_218A35D58(&qword_280E8EBE0, sub_2187E7248);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A352D0(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        sub_2186D6710(0, &qword_280E8E260);
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

uint64_t sub_218A32DD0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
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
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2189FE7E4();
          sub_218A35D58(&qword_27CC0CBE8, sub_2189FE7E4);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A353D0(v13, i, a3);
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
        sub_2186C6148(0, &qword_280E8E800);
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

uint64_t sub_218A32F7C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
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
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218713330(0, &qword_280E8F2C0, type metadata accessor for FollowingTagModel, MEMORY[0x277D83940]);
          sub_218A35DA0(&unk_27CC0CC40, &qword_280E8F2C0, type metadata accessor for FollowingTagModel);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A35350(v13, i, a3);
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
        type metadata accessor for FollowingTagModel();
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

uint64_t sub_218A33130(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
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
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218713330(0, &qword_27CC0CBD8, _s4ItemCMa, MEMORY[0x277D83940]);
          sub_218A35DA0(&qword_27CC0CBE0, &qword_27CC0CBD8, _s4ItemCMa);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A35350(v13, i, a3);
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
        _s4ItemCMa();
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

uint64_t sub_218A332E4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
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
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218A35CF0();
          sub_218A35D58(&unk_280E8EB50, sub_218A35CF0);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A352D0(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        sub_2186D6710(0, &qword_280E8DF60);
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

uint64_t sub_218A33490(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
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
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218A35818();
          sub_218A35D58(&qword_27CC0CC08, sub_218A35818);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A353D0(v13, i, a3);
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
        sub_2186C6148(0, &qword_280E8E5D0);
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

uint64_t sub_218A3363C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_219BF7214();
    a2 = v13;
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
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          v8 = MEMORY[0x277D34298];
          sub_218713330(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
          sub_218A35DA0(&qword_27CC0CC70, &qword_280E8EE90, v8);
          for (i = 0; i != v6; ++i)
          {
            v10 = sub_218A35350(v14, i, a3);
            v12 = *v11;

            (v10)(v14, 0);
            *(v4 + 8 * i) = v12;
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
        sub_219BF4044();
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

uint64_t sub_218A337F0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
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
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218A359B0();
          sub_218A35D58(&qword_280E8ED18, sub_218A359B0);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A353D0(v13, i, a3);
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
        sub_2186C6148(0, &qword_280E8E6A8);
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

uint64_t sub_218A3399C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
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
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218A35748();
          sub_218A35D58(&unk_27CC0CBB8, sub_218A35748);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A353D0(v13, i, a3);
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
        sub_2186C6148(0, &qword_280E8E560);
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

uint64_t sub_218A33B48(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
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
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2186E330C();
          sub_218A35D58(&qword_280E8EB30, sub_2186E330C);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A353D0(v13, i, a3);
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
        sub_2186C6148(0, &qword_280E8DAB0);
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

uint64_t sub_218A33CF4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
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
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218A35678();
          sub_218A35D58(&qword_27CC0CB98, sub_218A35678);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A353D0(v13, i, a3);
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
        sub_2186C6148(0, &qword_280E8E698);
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