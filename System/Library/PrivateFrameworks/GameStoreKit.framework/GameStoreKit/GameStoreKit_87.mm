uint64_t sub_24EEE9750(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 400))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EEE9798(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
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
      *(result + 400) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_24EEE98F4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v24 = a4;
  v7 = sub_24F929758();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F92C2F8();
  if (!v11)
  {
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    v17 = v20;
    v21 = a2;
    goto LABEL_8;
  }

  v23 = a1;
  v12 = [a3 toDictionary];
  if (!v12 || (v13 = v12, v14 = sub_24F92AE38(), v13, v15 = sub_24E9E1CDC(v14), , !v15))
  {

    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    v17 = v18;
    v19 = a3;
LABEL_8:
    sub_24F92A828();
    swift_willThrow();
    return v17;
  }

  sub_24F929728();
  __swift_project_boxed_opaque_existential_1((v24 + OBJC_IVAR____TtC12GameStoreKit20JSStoreMetricsObject_metricsRecorder), *(v24 + OBJC_IVAR____TtC12GameStoreKit20JSStoreMetricsObject_metricsRecorder + 24));

  sub_24F9299F8();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v17 = result;
    (*(v8 + 8))(v10, v7);

    return v17;
  }

  __break(1u);
  return result;
}

char *sub_24EEE9C70(void *a1, void *a2)
{
  v5 = sub_24F92AC68();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9298F8();
  v9 = MEMORY[0x25304F260]();
  if (v9)
  {
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 2) = a2;
    *(v11 + 3) = v10;
    v12 = a1;
    v13 = a2;

    sub_24F92AC48();
    if (v2)
    {
    }

    else
    {
      v11 = sub_24F92AC58();

      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    v11 = "toreMetricsObject";
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_24EEE9E54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a5;
  v21 = a3;
  v7 = sub_24F9281B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a4 + OBJC_IVAR____TtC12GameStoreKit20JSStoreMetricsObject_metricsRecorder), *(a4 + OBJC_IVAR____TtC12GameStoreKit20JSStoreMetricsObject_metricsRecorder + 24));
  v22 = sub_24F9299E8();
  v11 = *(v8 + 16);
  v11(v10, a2, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = v12 + v9;
  v20 = swift_allocObject();
  v14 = *(v8 + 32);
  v14(v20 + v12, v10, v7);
  v11(v10, v21, v7);
  v15 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v14(v16 + v12, v10, v7);
  v17 = v23;
  *(v16 + v15) = v23;
  v25[3] = sub_24F9298F8();
  v25[4] = MEMORY[0x277D22078];
  v25[0] = v24;
  v18 = v17;

  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

void sub_24EEEA098(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F93DE60;
  *(v2 + 56) = MEMORY[0x277D83B88];
  *(v2 + 32) = v1;
  v3 = sub_24F9281A8();
}

void sub_24EEEA2F0()
{
  v0 = sub_24F92A868();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24F93DE60;
  swift_getErrorValue();
  sub_24F92CFE8();
  sub_24F92A808();
  sub_24F92A7B8();
  (*(v1 + 8))(v3, v0);
  v5 = v11;
  v6 = __swift_project_boxed_opaque_existential_1(v10, v11);
  *(v4 + 56) = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 32));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v6, v5);
  __swift_destroy_boxed_opaque_existential_1(v10);
  v8 = sub_24F9281A8();
}

id sub_24EEEA744()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSStoreMetricsObject();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24EEEA7C8()
{

  return swift_deallocObject();
}

uint64_t sub_24EEEA824()
{
  v1 = sub_24F9281B8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_24EEEA8AC(uint64_t *a1)
{
  sub_24F9281B8();

  sub_24EEEA098(a1);
}

uint64_t sub_24EEEA91C()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24EEEA9B8()
{
  sub_24F9281B8();

  sub_24EEEA2F0();
}

void *GuidedSearchTokenToggleAction.__allocating_init(title:targetToken:searchOrigin:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v12 = sub_24F91F6B8();
  v34[0] = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v16 = *a5;
  v17 = (v15 + OBJC_IVAR____TtC12GameStoreKit29GuidedSearchTokenToggleAction_targetToken);
  *v17 = a3;
  v17[1] = a4;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit29GuidedSearchTokenToggleAction_searchOrigin) = v16;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v18 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v19 = sub_24F928AD8();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v15 + v18, a6, v19);
  v21 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v22 = sub_24F929608();
  (*(*(v22 - 8) + 56))(v15 + v21, 1, 1, v22);
  v23 = (v15 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  v24 = v15 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v38, &v35);
  if (*(&v36 + 1))
  {
    v25 = v36;
    *v24 = v35;
    *(v24 + 1) = v25;
    *(v24 + 4) = v37;
  }

  else
  {
    sub_24F91F6A8();
    v26 = sub_24F91F668();
    v27 = v12;
    v28 = a6;
    v29 = a1;
    v30 = a2;
    v32 = v31;
    (*(v34[0] + 8))(v14, v27);
    v34[1] = v26;
    v34[2] = v32;
    a2 = v30;
    a1 = v29;
    a6 = v28;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830);
  }

  (*(v20 + 8))(a6, v19);
  sub_24E601704(v38, &qword_27F235830);
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = 0;
  v15[5] = 0;
  return v15;
}

void *GuidedSearchTokenToggleAction.init(title:targetToken:searchOrigin:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  v7 = v6;
  v34 = a1;
  v35 = a2;
  v33 = sub_24F91F6B8();
  v32 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v31 - v15;
  v17 = sub_24F928AD8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v19) = *a5;
  v21 = (v7 + OBJC_IVAR____TtC12GameStoreKit29GuidedSearchTokenToggleAction_targetToken);
  *v21 = a3;
  v21[1] = a4;
  *(v7 + OBJC_IVAR____TtC12GameStoreKit29GuidedSearchTokenToggleAction_searchOrigin) = v19;
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  (*(v18 + 16))(v20, a6, v17);
  v22 = sub_24F929608();
  (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  v23 = (v7 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  sub_24E65E064(v44, &v38);
  if (*(&v39 + 1))
  {
    v41 = v38;
    v42 = v39;
    v43 = v40;
  }

  else
  {
    sub_24F91F6A8();
    v24 = sub_24F91F668();
    v26 = v25;
    (*(v32 + 8))(v13, v33);
    v36 = v24;
    v37 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v38, &qword_27F235830);
  }

  (*(v18 + 8))(a6, v17);
  sub_24E601704(v44, &qword_27F235830);
  v27 = v7 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v27 + 4) = v43;
  v28 = v42;
  *v27 = v41;
  *(v27 + 1) = v28;
  sub_24E65E0D4(v16, v7 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v29 = v35;
  v7[2] = v34;
  v7[3] = v29;
  v7[4] = 0;
  v7[5] = 0;
  (*(v18 + 32))(v7 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v20, v17);
  return v7;
}

void (**GuidedSearchTokenToggleAction.init(deserializing:using:)(char *a1, uint64_t a2))(char *, uint64_t)
{
  v4 = v2;
  v48 = a2;
  v6 = *v4;
  v43 = v3;
  v44 = v6;
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  v45 = v7;
  v46 = v8;
  MEMORY[0x28223BE20](v7);
  v42 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v42 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v47 = a1;
  sub_24F928398();
  v20 = sub_24F928348();
  v22 = v21;
  v23 = v19;
  v24 = *(v11 + 8);
  v49 = v10;
  v24(v23, v10);
  if (!v22)
  {
    v32 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v33 = 0x6F54746567726174;
    v34 = v44;
    v33[1] = 0xEB000000006E656BLL;
    v33[2] = v34;
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D22530], v32);
    swift_willThrow();
    (*(v46 + 8))(v48, v45);
    v24(v47, v49);
    goto LABEL_5;
  }

  v25 = v24;
  v26 = (v4 + OBJC_IVAR____TtC12GameStoreKit29GuidedSearchTokenToggleAction_targetToken);
  *v26 = v20;
  v26[1] = v22;
  v27 = v47;
  sub_24F928398();
  sub_24EC55680();
  sub_24F928248();
  v25(v17, v49);
  if (v50 == 15)
  {
    v28 = v27;
    v29 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    strcpy(v30, "searchOrigin");
    v31 = v44;
    v30[13] = 0;
    *(v30 + 7) = -5120;
    *(v30 + 2) = v31;
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D22530], v29);
    swift_willThrow();
    (*(v46 + 8))(v48, v45);
    v25(v28, v49);

LABEL_5:
    swift_deallocPartialClassInstance();
    return v4;
  }

  v44 = v25;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit29GuidedSearchTokenToggleAction_searchOrigin) = v50;
  (*(v11 + 16))(v14, v27, v49);
  v36 = v45;
  v35 = v46;
  v37 = v42;
  v38 = v48;
  (*(v46 + 16))(v42, v48, v45);
  v39 = v43;
  v40 = Action.init(deserializing:using:)(v14, v37);
  if (!v39)
  {
    v4 = v40;
  }

  (*(v35 + 8))(v38, v36);
  v44(v27, v49);
  return v4;
}

uint64_t GuidedSearchTokenToggleAction.targetToken.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit29GuidedSearchTokenToggleAction_targetToken);

  return v1;
}

uint64_t GuidedSearchTokenToggleAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t GuidedSearchTokenToggleAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GuidedSearchTokenToggleAction()
{
  result = qword_27F2332C0;
  if (!qword_27F2332C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NewPencilPairingCardTrigger.__allocating_init(adamId:pairingStatusProvider:)(uint64_t *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  v5 = *a1;
  v6 = a1[1];
  *(v4 + 56) = 1;
  *(v4 + 80) = 1;
  *(v4 + 64) = v5;
  *(v4 + 72) = v6;
  sub_24E612C80(a2, v4 + 16);
  return v4;
}

uint64_t NewPencilPairingCardTrigger.init(adamId:pairingStatusProvider:)(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *(v2 + 56) = 1;
  *(v2 + 80) = 1;
  *(v2 + 64) = v3;
  *(v2 + 72) = v4;
  sub_24E612C80(a2, v2 + 16);
  return v2;
}

uint64_t NewPencilPairingCardTrigger.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v2;
}

uint64_t sub_24EEEBA84(uint64_t (*a1)(void))
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  return a1(v5 & 1);
}

uint64_t NewPencilPairingCardTrigger.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t NewPencilPairingCardTrigger.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_24EEEBB70(uint64_t (*a1)(void))
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  v5 = (*(v4 + 8))(v3, v4);
  return a1(v5 & 1);
}

uint64_t GameCenterPlayer.init(id:playerId:alias:displayName:artwork:size:action:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v38 = a4;
  v39 = a5;
  v36 = a2;
  v37 = a3;
  v17 = a10;
  v35 = a11;
  v18 = sub_24F91F6B8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a9;
  *(v12 + 72) = 0;
  sub_24E60169C(a1, &v42, &qword_27F235830);
  if (*(&v43 + 1))
  {
    v45 = v42;
    v46 = v43;
    v47 = v44;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v32 = a6;
    v33 = a7;
    v23 = a8;
    v24 = v22;
    v26 = v25;
    (*(v19 + 8))(v21, v18);
    v40 = v24;
    v41 = v26;
    a8 = v23;
    v17 = a10;
    a6 = v32;
    a7 = v33;
    sub_24F92C7F8();
    sub_24E601704(&v42, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v27 = v46;
  *(v12 + 88) = v45;
  *(v12 + 104) = v27;
  *(v12 + 120) = v47;
  sub_24E65E0D4(v35, v12 + OBJC_IVAR____TtC12GameStoreKit16GameCenterPlayer_impressionMetrics);
  v28 = v37;
  *(v12 + 16) = v36;
  *(v12 + 24) = v28;
  v29 = v39;
  *(v12 + 56) = v38;
  *(v12 + 64) = v29;
  *(v12 + 40) = a6;
  *(v12 + 48) = a7;
  *(v12 + 32) = v34;
  swift_beginAccess();
  *(v12 + 72) = a8;

  *(v12 + 80) = v17;
  return v12;
}

uint64_t _s12GameStoreKit05LargeA12CenterPlayerCfd_0()
{

  sub_24E6585F8(v0 + 88);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit16GameCenterPlayer_impressionMetrics, &qword_27F213E68);
  return v0;
}

uint64_t GameCenterPlayer.__allocating_init(friendInternal:)(void *a1)
{
  v2 = sub_24EEEDACC(a1);

  return v2;
}

uint64_t GameCenterPlayer.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v74 = a2;
  v75 = sub_24F9285B8();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v65 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v67 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v6 - 8);
  v68 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v71 = &v59 - v9;
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v59 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v59 - v21;
  v23 = a1;
  sub_24F928398();
  v24 = sub_24F928348();
  v26 = v25;
  v27 = *(v11 + 8);
  v78 = v10;
  v28 = v10;
  v29 = v27;
  v72 = v11 + 8;
  v27(v22, v28);
  v66 = v26;
  if (v26)
  {
    v60 = v24;
    sub_24F928398();
    v30 = sub_24F928348();
    v32 = v31;
    v33 = v78;
    v29(v19, v78);
    if (v32)
    {
      v34 = v30;
    }

    else
    {
      v34 = 0;
    }

    if (v32)
    {
      v35 = v32;
    }

    else
    {
      v35 = 0xE000000000000000;
    }

    v63 = v35;
    v64 = v34;
    sub_24F928398();
    v36 = sub_24F928348();
    v38 = v37;
    v29(v16, v33);
    if (v38)
    {
      v39 = v36;
    }

    else
    {
      v39 = 0;
    }

    v62 = v39;
    if (v38)
    {
      v40 = v38;
    }

    else
    {
      v40 = 0xE000000000000000;
    }

    v61 = v40;
    sub_24F929608();
    v41 = v23;
    sub_24F928398();
    v42 = v74;
    v43 = *(v73 + 16);
    v44 = v67;
    v69 = v29;
    v45 = v75;
    v43(v67, v74, v75);
    sub_24F929548();
    v43(v44, v42, v45);
    type metadata accessor for Artwork();
    sub_24F928398();
    v43(v65, v44, v45);
    sub_24EEEDD58(&qword_27F219660, type metadata accessor for Artwork);
    sub_24F929548();
    v65 = v77;
    v59 = v41;
    sub_24F928398();
    sub_24EEEDDA0();
    sub_24F928208();
    v46 = v78;
    v47 = v69;
    v69(v13, v78);
    LOBYTE(v43) = v77;
    type metadata accessor for Action();
    sub_24F928398();
    v48 = static Action.tryToMakeInstance(byDeserializing:using:)(v13, v44);
    v47(v13, v46);
    v49 = v60;
    v50 = v66;
    v76[0] = v60;
    v76[1] = v66;

    sub_24F92C7F8();
    LOBYTE(v76[0]) = v43;
    v51 = v71;
    v52 = v68;
    sub_24E60169C(v71, v68, &qword_27F213E68);
    v53 = (*(v70 + 144))(&v77, v49, v50, v62, v61, v64, v63, v65, v76, v48, v52);
    v54 = *(v73 + 8);
    v55 = v75;
    v54(v74, v75);
    v69(v59, v78);
    v54(v44, v55);
    sub_24E601704(v51, &qword_27F213E68);
  }

  else
  {
    v53 = sub_24F92AC38();
    sub_24EEEDD58(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v56 = 0x6449726579616C70;
    v57 = v70;
    v56[1] = 0xE800000000000000;
    v56[2] = v57;
    (*(*(v53 - 8) + 104))(v56, *MEMORY[0x277D22530], v53);
    swift_willThrow();
    (*(v73 + 8))(v74, v75);
    v29(v23, v78);
  }

  return v53;
}

uint64_t sub_24EEEC7AC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
}

void sub_24EEEC844(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  if (![v4 valueWithNewObjectInContext_])
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = v1[3];
  v17 = v1[2];
  v18 = v5;

  v6 = [v4 valueWithObject:sub_24F92CF68() inContext:a1];
  swift_unknownObjectRelease();
  if (!v6)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_24F92C328();
  v7 = v1[8];
  if (v7)
  {
    v17 = v1[7];
    v18 = v7;

    v8 = a1;
    v9 = sub_24F92CDE8();
    sub_24EB715C4(&v17);
  }

  else
  {
    v10 = a1;
    v9 = 0;
  }

  v11 = [v4 valueWithObject:v9 inContext:a1];
  swift_unknownObjectRelease();

  if (!v11)
  {
    goto LABEL_17;
  }

  sub_24F92C328();
  v12 = v2[6];
  if (v12)
  {
    v17 = v2[5];
    v18 = v12;
    v13 = a1;

    v12 = sub_24F92CDE8();
    sub_24EB715C4(&v17);
  }

  else
  {
    v14 = a1;
  }

  v15 = [v4 valueWithObject:v12 inContext:a1];
  swift_unknownObjectRelease();

  if (!v15)
  {
    goto LABEL_18;
  }

  sub_24F92C328();
  LOBYTE(v17) = *(v2 + 32);
  v16 = [v4 valueWithObject:sub_24F92CF68() inContext:a1];
  swift_unknownObjectRelease();
  if (!v16)
  {
LABEL_19:
    __break(1u);
    return;
  }

  sub_24F92C328();
  swift_beginAccess();
  if (v2[9])
  {

    sub_24E9F7F40(a1);

    sub_24F92C328();
  }
}

uint64_t sub_24EEECB24@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for GameCenterPlayer(0);
  *a1 = v1;
}

uint64_t sub_24EEECB70()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EEECBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v33 = a6;
  v34 = a7;
  v31 = a4;
  v32 = a5;
  v29 = a3;
  v30 = a12;
  v35 = a10;
  v36 = a8;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  sub_24E60169C(a1, v42, &qword_27F235830);
  sub_24E60169C(a11, v18 + OBJC_IVAR____TtC12GameStoreKit16GameCenterPlayer_impressionMetrics, &qword_27F213E68);
  *(v18 + 72) = 0;
  sub_24E60169C(v42, &v39, &qword_27F235830);
  if (*(&v40 + 1))
  {
    v19 = v40;
    *(v18 + 88) = v39;
    *(v18 + 104) = v19;
    *(v18 + 120) = v41;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v22 = v21;
    (*(v15 + 8))(v17, v14);
    v37 = v20;
    v38 = v22;
    sub_24F92C7F8();
    sub_24E601704(&v39, &qword_27F235830);
  }

  sub_24E601704(a11, &qword_27F213E68);
  sub_24E601704(a1, &qword_27F235830);
  sub_24E601704(v42, &qword_27F235830);
  v23 = v29;
  *(v18 + 16) = a2;
  *(v18 + 24) = v23;
  v24 = v32;
  *(v18 + 56) = v31;
  *(v18 + 64) = v24;
  v25 = v34;
  *(v18 + 40) = v33;
  *(v18 + 48) = v25;
  *(v18 + 32) = v30;
  swift_beginAccess();
  v26 = v35;
  *(v18 + 72) = v36;
  *(v18 + 80) = v26;
  return v18;
}

uint64_t sub_24EEECE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v13 = v12;
  v39 = a8;
  v37 = a7;
  v36 = a6;
  v35 = a5;
  v34 = a4;
  v32 = a3;
  v31 = a2;
  v33 = a12;
  v38 = a10;
  v15 = sub_24F91F6B8();
  v29 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v29 - v19;
  v30 = a1;
  sub_24E60169C(a1, v48, &qword_27F235830);
  sub_24E60169C(a11, v20, &qword_27F213E68);
  *(v13 + 72) = 0;
  sub_24E60169C(v48, &v42, &qword_27F235830);
  if (*(&v43 + 1))
  {
    v45 = v42;
    v46 = v43;
    v47 = v44;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v23 = v22;
    (*(v29 + 8))(v17, v15);
    v40 = v21;
    v41 = v23;
    sub_24F92C7F8();
    sub_24E601704(&v42, &qword_27F235830);
  }

  sub_24E601704(a11, &qword_27F213E68);
  sub_24E601704(v30, &qword_27F235830);
  sub_24E601704(v48, &qword_27F235830);
  v24 = v46;
  *(v13 + 88) = v45;
  *(v13 + 104) = v24;
  *(v13 + 120) = v47;
  sub_24E65E0D4(v20, v13 + OBJC_IVAR____TtC12GameStoreKit16GameCenterPlayer_impressionMetrics);
  v25 = v32;
  *(v13 + 16) = v31;
  *(v13 + 24) = v25;
  v26 = v35;
  *(v13 + 56) = v34;
  *(v13 + 64) = v26;
  v27 = v37;
  *(v13 + 40) = v36;
  *(v13 + 48) = v27;
  *(v13 + 32) = v33;
  swift_beginAccess();
  *(v13 + 72) = v39;

  *(v13 + 80) = v38;
  return v13;
}

uint64_t sub_24EEED1C8()
{

  sub_24E6585F8(v0 + 88);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit16GameCenterPlayer_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

GameStoreKit::GameCenterPlayer::Size_optional __swiftcall GameCenterPlayer.Size.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

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

uint64_t GameCenterPlayer.Size.rawValue.getter()
{
  if (*v0)
  {
    return 0x656772616CLL;
  }

  else
  {
    return 0x6C6C616D73;
  }
}

uint64_t sub_24EEED2FC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x656772616CLL;
  }

  else
  {
    v2 = 0x6C6C616D73;
  }

  if (*a2)
  {
    v3 = 0x656772616CLL;
  }

  else
  {
    v3 = 0x6C6C616D73;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_24F92CE08();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_24EEED37C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EEED3EC()
{
  sub_24F92B218();
}

uint64_t sub_24EEED440()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EEED4AC@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_24EEED50C(uint64_t *a1@<X8>)
{
  v2 = 0x6C6C616D73;
  if (*v1)
  {
    v2 = 0x656772616CLL;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t GameCenterPlayer.__allocating_init(id:playerId:alias:displayName:artwork:size:action:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9, uint64_t a10, uint64_t a11)
{
  v37 = a4;
  v38 = a5;
  v35 = a2;
  v36 = a3;
  v15 = a10;
  v34 = a11;
  v16 = sub_24F91F6B8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v33 = *a9;
  *(v20 + 72) = 0;
  sub_24E60169C(a1, &v41, &qword_27F235830);
  if (*(&v42 + 1))
  {
    v21 = v42;
    *(v20 + 88) = v41;
    *(v20 + 104) = v21;
    *(v20 + 120) = v43;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v31 = a6;
    v32 = a7;
    v23 = a8;
    v24 = v22;
    v26 = v25;
    (*(v17 + 8))(v19, v16);
    v39 = v24;
    v40 = v26;
    a8 = v23;
    v15 = a10;
    a6 = v31;
    a7 = v32;
    sub_24F92C7F8();
    sub_24E601704(&v41, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  sub_24E65E0D4(v34, v20 + OBJC_IVAR____TtC12GameStoreKit16GameCenterPlayer_impressionMetrics);
  v27 = v36;
  *(v20 + 16) = v35;
  *(v20 + 24) = v27;
  v28 = v38;
  *(v20 + 56) = v37;
  *(v20 + 64) = v28;
  *(v20 + 40) = a6;
  *(v20 + 48) = a7;
  *(v20 + 32) = v33;
  swift_beginAccess();
  *(v20 + 72) = a8;
  *(v20 + 80) = v15;
  return v20;
}

uint64_t GameCenterPlayer.playerId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t GameCenterPlayer.displayName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t GameCenterPlayer.alias.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_24EEED800(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 72) = v2;
}

uint64_t static GameCenterPlayer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_24F92CE08();
  }
}

uint64_t sub_24EEED8E4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = GameCenterPlayer.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24EEED984@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for GameCenterPlayer(0);
  *a1 = v3;
}

uint64_t sub_24EEED9CC()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EEEDA20()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EEEDAA0(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_24F92CE08();
  }
}

uint64_t sub_24EEEDACC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31[-1] - v5;
  v7 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithInternalRepresentation_];
  v8 = [a1 contact];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 _gkCompositeName];

    v30 = sub_24F92B0D8();
    v12 = v11;
  }

  else
  {
    v30 = 0;
    v12 = 0;
  }

  v13 = [v7 playerID];
  v14 = sub_24F92B0D8();
  v16 = v15;

  v31[0] = v14;
  v31[1] = v16;
  sub_24F92C7F8();
  v17 = [v7 playerID];
  v18 = sub_24F92B0D8();
  v20 = v19;

  v21 = [v7 alias];
  v22 = sub_24F92B0D8();
  v24 = v23;

  v25 = [v7 internal];
  v26 = sub_24F075674(300.0, 300.0);

  LOBYTE(v31[0]) = 1;
  v27 = sub_24F929608();
  (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
  v28 = (*(v2 + 144))(v32, v18, v20, v22, v24, v30, v12, v26, v31, 0, v6);

  return v28;
}

uint64_t sub_24EEEDD58(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24EEEDDA0()
{
  result = qword_27F2332D0;
  if (!qword_27F2332D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2332D0);
  }

  return result;
}

unint64_t sub_24EEEDE18()
{
  result = qword_27F2332D8;
  if (!qword_27F2332D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2332D8);
  }

  return result;
}

uint64_t sub_24EEEDEFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);
}

void sub_24EEEDFE0()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_24EEEE268()
{
  swift_getKeyPath();
  sub_24EEEF6D0(&qword_27F233358, type metadata accessor for LeaderboardEntriesScrollStateManager);
  sub_24F91FD88();

  return *(v0 + 16);
}

void sub_24EEEE308(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EEEF6D0(&qword_27F233358, type metadata accessor for LeaderboardEntriesScrollStateManager);
    sub_24F91FD78();
  }
}

uint64_t sub_24EEEE428@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24EEEF6D0(&qword_27F233358, type metadata accessor for LeaderboardEntriesScrollStateManager);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit36LeaderboardEntriesScrollStateManager__scrollProxy;
  swift_beginAccess();
  return sub_24EEEF530(v5 + v3, a1);
}

uint64_t sub_24EEEE4F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EEEF6D0(&qword_27F233358, type metadata accessor for LeaderboardEntriesScrollStateManager);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit36LeaderboardEntriesScrollStateManager__scrollProxy;
  swift_beginAccess();
  return sub_24EEEF530(v3 + v4, a2);
}

uint64_t sub_24EEEE5B8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_24EEEF530(a1, &v9[-v5]);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24EEEF6D0(&qword_27F233358, type metadata accessor for LeaderboardEntriesScrollStateManager);
  sub_24F91FD78();

  return sub_24EEEF5A0(v6);
}

uint64_t sub_24EEEE6E8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKit36LeaderboardEntriesScrollStateManager__scrollProxy;
  swift_beginAccess();
  sub_24EEEF790(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_24EEEE77C()
{
  swift_getKeyPath();
  sub_24EEEF6D0(&qword_27F233358, type metadata accessor for LeaderboardEntriesScrollStateManager);
  sub_24F91FD88();
}

uint64_t sub_24EEEE820@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_24EEEF6D0(&qword_27F233358, type metadata accessor for LeaderboardEntriesScrollStateManager);
  sub_24F91FD88();

  *a3 = *(v5 + *a2);
}

uint64_t sub_24EEEE8D8()
{
  swift_getKeyPath();
  sub_24EEEF6D0(&qword_27F233358, type metadata accessor for LeaderboardEntriesScrollStateManager);
  sub_24F91FD78();
}

uint64_t sub_24EEEE994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14[-v9];
  v11 = sub_24F924098();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  swift_getKeyPath();
  v19 = v4;
  v20 = v10;
  v21 = v4;
  sub_24EEEF6D0(&qword_27F233358, type metadata accessor for LeaderboardEntriesScrollStateManager);
  sub_24F91FD78();

  sub_24EEEF5A0(v10);
  swift_getKeyPath();
  v17 = v4;
  v18 = a2;
  v21 = v4;
  sub_24F91FD78();

  swift_getKeyPath();
  v15 = v4;
  v16 = a3;
  v21 = v4;
  sub_24F91FD78();
}

uint64_t sub_24EEEEBEC(int a1)
{
  v2 = v1;
  v42 = a1;
  v43 = type metadata accessor for LeaderboardEntry();
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v46 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v41 = v36 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v36 - v10;
  v12 = sub_24F924098();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v49 = v1;
  sub_24EEEF6D0(&qword_27F233358, type metadata accessor for LeaderboardEntriesScrollStateManager);
  sub_24F91FD88();

  v16 = OBJC_IVAR____TtC12GameStoreKit36LeaderboardEntriesScrollStateManager__scrollProxy;
  swift_beginAccess();
  sub_24EEEF530(v2 + v16, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_24EEEF5A0(v11);
  }

  v40 = v8;
  (*(v13 + 32))(v15, v11, v12);
  swift_getKeyPath();
  v48 = v2;
  sub_24F91FD88();

  v18 = *(v2 + OBJC_IVAR____TtC12GameStoreKit36LeaderboardEntriesScrollStateManager__localPlayerProvider);
  if (!v18)
  {
    return (*(v13 + 8))(v15, v12);
  }

  v39 = v15;
  swift_getKeyPath();
  v48 = v2;

  sub_24F91FD88();

  v19 = *(v2 + OBJC_IVAR____TtC12GameStoreKit36LeaderboardEntriesScrollStateManager__paginationManager);
  if (v19)
  {
    v37 = v13;
    v38 = v12;
    swift_getKeyPath();
    v48 = v19;
    sub_24EEEF6D0(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager);

    sub_24F91FD88();

    swift_beginAccess();
    v36[1] = v19;
    v20 = *(v19 + 16);
    v21 = *(v20 + 16);
    v44 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider___observationRegistrar;
    v22 = (v18 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);

    result = swift_beginAccess();
    v23 = v43;
    if (v21)
    {
      v24 = 0;
      while (1)
      {
        if (v24 >= *(v20 + 16))
        {
          __break(1u);
          return result;
        }

        v25 = v46;
        sub_24E6C2DEC(v20 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v24, v46);
        v26 = (v25 + *(v23 + 20));
        v27 = *v26;
        v28 = v26[1];
        swift_getKeyPath();
        v47 = v18;
        sub_24EEEF6D0(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
        sub_24F91FD88();

        v29 = v27 == *v22 && v28 == v22[1];
        if (v29 || (sub_24F92CE08() & 1) != 0)
        {
          break;
        }

        ++v24;
        result = sub_24E6C2E50(v46);
        if (v21 == v24)
        {
          goto LABEL_14;
        }
      }

      v30 = v41;
      sub_24E6C2F10(v46, v41);
      v31 = sub_24E6C2F10(v30, v40);
      if (v42)
      {
        v31 = sub_24F927718();
      }

      v33 = v37;
      v32 = v38;
      v34 = v39;
      MEMORY[0x28223BE20](v31);
      v35 = v40;
      v36[-2] = v34;
      v36[-1] = v35;
      sub_24F923B18();

      sub_24E6C2E50(v35);
      return (*(v33 + 8))(v34, v32);
    }

    else
    {
LABEL_14:

      return (*(v37 + 8))(v39, v38);
    }
  }

  else
  {

    return (*(v13 + 8))(v39, v12);
  }
}

uint64_t sub_24EEEF248(uint64_t a1, uint64_t a2)
{
  sub_24F130238(a2);
  sub_24F9278A8();
  sub_24F924088();
}

uint64_t sub_24EEEF2C0()
{
  sub_24EEEF5A0(v0 + OBJC_IVAR____TtC12GameStoreKit36LeaderboardEntriesScrollStateManager__scrollProxy);

  v1 = OBJC_IVAR____TtC12GameStoreKit36LeaderboardEntriesScrollStateManager___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LeaderboardEntriesScrollStateManager()
{
  result = qword_27F233340;
  if (!qword_27F233340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EEEF3E0()
{
  sub_24EEEF4D0();
  if (v0 <= 0x3F)
  {
    sub_24F91FDC8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24EEEF4D0()
{
  if (!qword_27F233350)
  {
    sub_24F924098();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F233350);
    }
  }
}

uint64_t sub_24EEEF530(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EEEF5A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EEEF6D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EEEF790(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EEEF800(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

double sub_24EEEF84C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

uint64_t ArcadeSeeAllGamesPageSegment.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v47 = a2;
  v44 = a3;
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v48 = a1;
  sub_24F928398();
  v17 = sub_24F928348();
  v18 = *(v8 + 8);
  v19 = v16;
  v20 = v7;
  v22 = v21;
  v18(v19, v20);
  if (!v22)
  {
    v31 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v32 = 0x656C746974;
    v32[1] = 0xE500000000000000;
    v32[2] = &type metadata for ArcadeSeeAllGamesPageSegment;
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D22530], v31);
    swift_willThrow();
    (*(v5 + 8))(v47, v4);
    return (v18)(v48, v20);
  }

  v41 = v17;
  sub_24F928398();
  v40 = sub_24F928348();
  v24 = v23;
  v18(v13, v20);
  if (!v24)
  {
    v34 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v35 = 25705;
    v35[1] = 0xE200000000000000;
    v35[2] = &type metadata for ArcadeSeeAllGamesPageSegment;
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D22530], v34);
    swift_willThrow();
    (*(v5 + 8))(v47, v4);
    v18(v48, v20);
  }

  v42 = v24;
  v43 = v20;
  sub_24F928398();
  v25 = v5;
  v26 = *(v5 + 16);
  v27 = v45;
  v28 = v47;
  v26(v45, v47, v4);
  type metadata accessor for ArcadeSeeAllGamesPageSegmentChangeAction();
  swift_allocObject();
  v29 = v46;
  v30 = ArcadeSeeAllGamesPageSegmentChangeAction.init(deserializing:using:)(v10, v27);
  if (v29)
  {
    (*(v25 + 8))(v28, v4);
    v18(v48, v43);
  }

  v36 = v30;
  (*(v25 + 8))(v28, v4);
  result = (v18)(v48, v43);
  v37 = v44;
  v38 = v41;
  v39 = v42;
  *v44 = v40;
  v37[1] = v39;
  v37[2] = v38;
  v37[3] = v22;
  v37[4] = v36;
  return result;
}

uint64_t ArcadeSeeAllGamesPageSegment.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArcadeSeeAllGamesPageSegment.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

int64x2_t sub_24EEEFDD4()
{
  result = vdupq_n_s64(4uLL);
  v1 = *MEMORY[0x277D768C8];
  v2 = *(MEMORY[0x277D768C8] + 8);
  v3 = *(MEMORY[0x277D768C8] + 16);
  v4 = *(MEMORY[0x277D768C8] + 24);
  xmmword_27F39CD70 = result;
  qword_27F39CD80 = v1;
  unk_27F39CD88 = v2;
  *&xmmword_27F39CD90 = v3;
  *(&xmmword_27F39CD90 + 1) = v4;
  qword_27F39CDA0 = v1;
  unk_27F39CDA8 = v2;
  *&xmmword_27F39CDB0 = v3;
  *(&xmmword_27F39CDB0 + 1) = v4;
  return result;
}

uint64_t TodayCardArtworkLayout.init(collapsedContentMode:expandedContentMode:collapsedLayoutInsets:expandedLayoutInsets:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>, double a10@<D6>, double a11@<D7>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 40) = a7;
  *(a3 + 48) = a8;
  *(a3 + 56) = a9;
  *(a3 + 64) = a10;
  *(a3 + 72) = a11;
  return result;
}

void TodayCardArtworkLayout.collapsedLayoutInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

void TodayCardArtworkLayout.expandedLayoutInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
}

uint64_t TodayCardArtworkLayout.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v129 = a2;
  v130 = a3;
  v4 = sub_24F928388();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v128 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v127 = &v112 - v8;
  MEMORY[0x28223BE20](v9);
  v126 = &v112 - v10;
  MEMORY[0x28223BE20](v11);
  v125 = &v112 - v12;
  MEMORY[0x28223BE20](v13);
  v124 = &v112 - v14;
  MEMORY[0x28223BE20](v15);
  v122 = &v112 - v16;
  MEMORY[0x28223BE20](v17);
  v120 = &v112 - v18;
  MEMORY[0x28223BE20](v19);
  v119 = &v112 - v20;
  MEMORY[0x28223BE20](v21);
  v118 = &v112 - v22;
  MEMORY[0x28223BE20](v23);
  v117 = &v112 - v24;
  MEMORY[0x28223BE20](v25);
  v116 = &v112 - v26;
  MEMORY[0x28223BE20](v27);
  v115 = &v112 - v28;
  MEMORY[0x28223BE20](v29);
  v114 = &v112 - v30;
  MEMORY[0x28223BE20](v31);
  v113 = &v112 - v32;
  MEMORY[0x28223BE20](v33);
  v112 = &v112 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v112 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v112 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v112 - v42;
  sub_24F928398();
  v44 = sub_24F928258();
  v46 = v45;
  v47 = *(v5 + 8);
  v47(v43, v4);
  if (v46)
  {
    v48 = 4;
  }

  else
  {
    v48 = v44;
  }

  v123 = v48;
  sub_24F928398();
  v49 = sub_24F928258();
  v51 = v50;
  v47(v40, v4);
  if (v51)
  {
    v52 = 4;
  }

  else
  {
    v52 = v49;
  }

  v121 = v52;
  v53 = a1;
  sub_24F928398();
  v54 = v112;
  sub_24F928398();
  v47(v37, v4);
  v55 = COERCE_DOUBLE(sub_24F928308());
  v57 = v56;
  v47(v54, v4);
  if (v57)
  {
    v58 = 0.0;
  }

  else
  {
    v58 = v55;
  }

  v59 = v113;
  sub_24F928398();
  v60 = v114;
  sub_24F928398();
  v47(v59, v4);
  v61 = v60;
  v62 = COERCE_DOUBLE(sub_24F928308());
  v64 = v63;
  v47(v61, v4);
  if (v64)
  {
    v65 = 0.0;
  }

  else
  {
    v65 = v62;
  }

  v66 = v115;
  sub_24F928398();
  v67 = v116;
  sub_24F928398();
  v47(v66, v4);
  v68 = v67;
  v69 = COERCE_DOUBLE(sub_24F928308());
  v71 = v70;
  v47(v68, v4);
  if (v71)
  {
    v72 = 0.0;
  }

  else
  {
    v72 = v69;
  }

  v73 = v117;
  sub_24F928398();
  v74 = v118;
  sub_24F928398();
  v47(v73, v4);
  v75 = v74;
  v76 = COERCE_DOUBLE(sub_24F928308());
  v78 = v77;
  v47(v75, v4);
  if (v78)
  {
    v79 = 0.0;
  }

  else
  {
    v79 = v76;
  }

  v80 = v119;
  sub_24F928398();
  v81 = v120;
  sub_24F928398();
  v47(v80, v4);
  v82 = v81;
  v83 = COERCE_DOUBLE(sub_24F928308());
  v85 = v84;
  v47(v82, v4);
  if (v85)
  {
    v86 = 0.0;
  }

  else
  {
    v86 = v83;
  }

  v87 = v122;
  sub_24F928398();
  v88 = v124;
  sub_24F928398();
  v47(v87, v4);
  v89 = v88;
  v90 = COERCE_DOUBLE(sub_24F928308());
  v92 = v91;
  v47(v89, v4);
  if (v92)
  {
    v93 = 0.0;
  }

  else
  {
    v93 = v90;
  }

  v94 = v125;
  sub_24F928398();
  v95 = v126;
  sub_24F928398();
  v47(v94, v4);
  v96 = v95;
  v97 = COERCE_DOUBLE(sub_24F928308());
  v99 = v98;
  v47(v96, v4);
  if (v99)
  {
    v100 = 0.0;
  }

  else
  {
    v100 = v97;
  }

  v101 = v127;
  sub_24F928398();
  v102 = v128;
  sub_24F928398();
  v47(v101, v4);
  v103 = v102;
  v104 = sub_24F928308();
  v106 = v105;
  v107 = sub_24F9285B8();
  (*(*(v107 - 8) + 8))(v129, v107);
  v47(v53, v4);
  result = (v47)(v103, v4);
  v109 = *&v104;
  if (v106)
  {
    v109 = 0.0;
  }

  v110 = v130;
  v111 = v121;
  *v130 = v123;
  *(v110 + 1) = v111;
  v110[2] = v58;
  v110[3] = v65;
  v110[4] = v72;
  v110[5] = v79;
  v110[6] = v86;
  v110[7] = v93;
  v110[8] = v100;
  v110[9] = v109;
  return result;
}

uint64_t _s12GameStoreKit22TodayCardArtworkLayoutV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = 0;
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if ((~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 16), *(a2 + 16)), vceqq_f64(*(a1 + 32), *(a2 + 32))), xmmword_24F997D20)) & 0xF) == 0)
  {
    v2 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 48), *(a2 + 48)), vceqq_f64(*(a1 + 64), *(a2 + 64)))));
  }

  return v2 & 1;
}

uint64_t sub_24EEF0870(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24EEF0890(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 80) = v3;
  return result;
}

uint64_t ShelfBasedPage.shelves.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8))();
  v5 = v4;
  v6 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v7 = *(v4 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v4 + 32;
    v14 = v4 + 32;
    do
    {
      v10 = v8;
      v11 = v9 + 40 * v8;
      while (1)
      {
        if (v10 >= *(v5 + 16))
        {
          __break(1u);

          sub_24E6585F8(v16);

          __break(1u);
          return result;
        }

        sub_24E65864C(v11, v16);
        sub_24EEF121C(v16, a1, a2, &v15);
        v12 = sub_24E6585F8(v16);
        if (v15)
        {
          break;
        }

        ++v10;
        v11 += 40;
        if (v7 == v10)
        {
          goto LABEL_11;
        }
      }

      MEMORY[0x253050F00](v12);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v8 = v10 + 1;
      sub_24F92B638();
      v6 = v17;
      v9 = v14;
    }

    while (v7 - 1 != v10);
  }

LABEL_11:

  return v6;
}

uint64_t sub_24EEF0A68(unint64_t a1)
{
  v2 = sub_24E60986C(MEMORY[0x277D84F90]);
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    while ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x253052270](v4, a1);
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_26;
      }

LABEL_10:
      v8 = OBJC_IVAR____TtC12GameStoreKit5Shelf_id;
      sub_24E65864C(v6 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v28);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = sub_24E76D934(v28);
      v12 = v2[2];
      v13 = (v11 & 1) == 0;
      v14 = __OFADD__(v12, v13);
      v15 = v12 + v13;
      if (v14)
      {
        goto LABEL_27;
      }

      v16 = v11;
      if (v2[3] < v15)
      {
        sub_24E899884(v15, isUniquelyReferenced_nonNull_native);
        v10 = sub_24E76D934(v28);
        if ((v16 & 1) != (v17 & 1))
        {
          result = sub_24F92CF88();
          __break(1u);
          return result;
        }

LABEL_15:
        if (v16)
        {
          goto LABEL_16;
        }

        goto LABEL_18;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v18 = v10;
      sub_24E8ADF84();
      v10 = v18;
      if (v16)
      {
LABEL_16:
        *(v2[7] + 8 * v10) = v6;

        sub_24E6585F8(v28);
        goto LABEL_20;
      }

LABEL_18:
      v2[(v10 >> 6) + 8] |= 1 << v10;
      v19 = v10;
      sub_24E65864C(v28, v2[6] + 40 * v10);
      *(v2[7] + 8 * v19) = v6;
      sub_24E6585F8(v28);
      v20 = v2[2];
      v14 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (v14)
      {
        goto LABEL_28;
      }

      v2[2] = v21;
LABEL_20:
      sub_24E65864C(v6 + v8, v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_24E616714(0, *(v5 + 2) + 1, 1, v5);
      }

      v23 = *(v5 + 2);
      v22 = *(v5 + 3);
      if (v23 >= v22 >> 1)
      {
        v5 = sub_24E616714((v22 > 1), v23 + 1, 1, v5);
      }

      *(v5 + 2) = v23 + 1;
      v24 = &v5[40 * v23];
      v25 = v28[0];
      v26 = v28[1];
      *(v24 + 8) = v29;
      *(v24 + 2) = v25;
      *(v24 + 3) = v26;
      ++v4;
      if (v7 == i)
      {
        return v5;
      }
    }

    if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_29;
    }

    v6 = *(a1 + 8 * v4 + 32);

    v7 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_10;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_24EEF0D44(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(a5 + 8))(a4, a5);
  v10 = (*(a5 + 16))(a4, a5);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return v9;
  }

  v12 = a1 + 32;
  v43 = a2;
  while (1)
  {
    sub_24E65864C(v12, v47);
    if (*(a2 + 16))
    {
      v13 = sub_24E76D934(v47);
      if (v14)
      {
        break;
      }
    }

    sub_24E6585F8(v47);
LABEL_4:
    v12 += 40;
    if (!--v11)
    {
      return v9;
    }
  }

  v15 = *(*(a2 + 56) + 8 * v13);
  if (a3)
  {
    v16 = v10[2];

    if (v16)
    {
      v17 = sub_24E76D934(v47);
      if ((v18 & 1) != 0 && v15[OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched] == 1)
      {
        v19 = v9;
        v20 = *(v10[7] + 8 * v17);

        v35 = Shelf.mergingWith(_:)(v15);
        sub_24E65864C(v47, v45);
        v36 = v35;
        if (!v35)
        {

          v36 = v20;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_24E81C630(v36, v45, isUniquelyReferenced_nonNull_native);
        sub_24E6585F8(v45);

        goto LABEL_24;
      }
    }
  }

  else
  {
  }

  sub_24E65864C(v47, v45);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_24E616714(0, *(v9 + 2) + 1, 1, v9);
  }

  v22 = *(v9 + 2);
  v21 = *(v9 + 3);
  if (v22 >= v21 >> 1)
  {
    v9 = sub_24E616714((v21 > 1), v22 + 1, 1, v9);
  }

  *(v9 + 2) = v22 + 1;
  v19 = v9;
  v23 = &v9[40 * v22];
  v24 = v45[0];
  v25 = v45[1];
  *(v23 + 8) = v46;
  *(v23 + 2) = v24;
  *(v23 + 3) = v25;
  sub_24E65864C(v47, v45);

  v26 = swift_isUniquelyReferenced_nonNull_native();
  v27 = sub_24E76D934(v45);
  v29 = v10[2];
  v30 = (v28 & 1) == 0;
  v31 = __OFADD__(v29, v30);
  v32 = v29 + v30;
  if (!v31)
  {
    v33 = v28;
    if (v10[3] >= v32)
    {
      if ((v26 & 1) == 0)
      {
        v38 = v27;
        sub_24E8ADF84();
        v27 = v38;
        if (v33)
        {
          goto LABEL_23;
        }

        goto LABEL_29;
      }
    }

    else
    {
      sub_24E899884(v32, v26);
      v27 = sub_24E76D934(v45);
      if ((v33 & 1) != (v34 & 1))
      {
        goto LABEL_35;
      }
    }

    if (v33)
    {
LABEL_23:
      *(v10[7] + 8 * v27) = v15;

      sub_24E6585F8(v45);
LABEL_24:
      sub_24E6585F8(v47);
LABEL_31:
      v9 = v19;
      a2 = v43;
      goto LABEL_4;
    }

LABEL_29:
    v10[(v27 >> 6) + 8] |= 1 << v27;
    v39 = v27;
    sub_24E65864C(v45, v10[6] + 40 * v27);
    *(v10[7] + 8 * v39) = v15;

    sub_24E6585F8(v45);
    sub_24E6585F8(v47);
    v40 = v10[2];
    v31 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v31)
    {
      goto LABEL_34;
    }

    v10[2] = v41;
    goto LABEL_31;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

unint64_t sub_24EEF1124(uint64_t a1, uint64_t a2)
{
  v8 = MEMORY[0x277D84FA0];
  result = ShelfBasedPage.shelves.getter(a1, a2);
  v3 = result;
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x277D84FA0];
  }

  result = sub_24F92C738();
  v4 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x253052270](i, v3);
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      sub_24ED7E294(&v7, *(v6 + 16));
    }

    return v8;
  }

  return result;
}

uint64_t sub_24EEF121C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v6 = (*(a3 + 16))(a2, a3);
  if (*(v6 + 16) && (v7 = sub_24E76D934(a1), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
  return result;
}

uint64_t ImpressionableArtwork.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ImpressionableArtwork.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t ImpressionableArtwork.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v48 = a2;
  v40 = *v2;
  v41 = v3;
  v50 = sub_24F9285B8();
  v57 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v46 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v38 - v7;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  sub_24F928398();
  v17 = sub_24F928348();
  v49 = v12;
  v47 = v13;
  if (v18)
  {
    v52 = v17;
    v53 = v18;
    sub_24F92C7F8();
    v44 = *(v13 + 8);
    v44(v16, v12);
    v19 = v57;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v21 = v8;
    v22 = a1;
    v24 = v23;
    (*(v9 + 8))(v11, v21);
    v52 = v20;
    v53 = v24;
    a1 = v22;
    v19 = v57;
    sub_24F92C7F8();
    v44 = *(v13 + 8);
    v44(v16, v12);
  }

  v42 = a1;
  v25 = v55;
  v26 = v51;
  *(v51 + 24) = v54;
  *(v26 + 40) = v25;
  *(v26 + 56) = v56;
  sub_24F929608();
  sub_24F928398();
  v43 = *(v19 + 16);
  v27 = v46;
  v28 = v48;
  v29 = v50;
  v43(v46, v48, v50);
  v30 = v45;
  sub_24F929548();
  v39 = OBJC_IVAR____TtC12GameStoreKit21ImpressionableArtwork_impressionMetrics;
  v31 = v30;
  v32 = v42;
  sub_24E65E0D4(v31, v26 + OBJC_IVAR____TtC12GameStoreKit21ImpressionableArtwork_impressionMetrics);
  type metadata accessor for Artwork();
  sub_24F928398();
  v43(v27, v28, v29);
  sub_24EEF1BDC(&qword_27F219660, type metadata accessor for Artwork);
  sub_24F929548();
  v33 = v54;
  if (v54)
  {
    (*(v57 + 8))(v28, v29);
    v44(v32, v49);
    result = v51;
    *(v51 + 16) = v33;
  }

  else
  {
    v35 = sub_24F92AC38();
    sub_24EEF1BDC(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v36 = 7631457;
    v36[1] = 0xE300000000000000;
    v36[2] = v40;
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D22530], v35);
    swift_willThrow();
    (*(v57 + 8))(v28, v29);
    v44(v32, v49);
    v37 = v51;
    sub_24E6585F8(v51 + 24);
    sub_24EB05BC8(v37 + v39);
    type metadata accessor for ImpressionableArtwork();
    swift_deallocPartialClassInstance();
    return v37;
  }

  return result;
}

uint64_t type metadata accessor for ImpressionableArtwork()
{
  result = qword_27F233370;
  if (!qword_27F233370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static ImpressionableArtwork.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);

  LOBYTE(v2) = _s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v2, v3);

  return v2 & 1;
}

uint64_t ImpressionableArtwork.deinit()
{

  sub_24E6585F8(v0 + 24);
  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit21ImpressionableArtwork_impressionMetrics);
  return v0;
}

uint64_t ImpressionableArtwork.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 24);
  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit21ImpressionableArtwork_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t sub_24EEF1B10@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ImpressionableArtwork();
  v7 = swift_allocObject();
  result = ImpressionableArtwork.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EEF1BDC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24EEF1C2C()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24EEF1D48(uint64_t a1)
{
  v2 = sub_24EEF1F5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EEF1D84(uint64_t a1)
{
  v2 = sub_24EEF1F5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EEF1DE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233380);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EEF1F5C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_24F92CC28();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

unint64_t sub_24EEF1F5C()
{
  result = qword_27F233388;
  if (!qword_27F233388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233388);
  }

  return result;
}

unint64_t sub_24EEF1FC4()
{
  result = qword_27F233390;
  if (!qword_27F233390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233390);
  }

  return result;
}

unint64_t sub_24EEF201C()
{
  result = qword_27F233398;
  if (!qword_27F233398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233398);
  }

  return result;
}

unint64_t sub_24EEF2074()
{
  result = qword_27F2333A0;
  if (!qword_27F2333A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2333A0);
  }

  return result;
}

uint64_t sub_24EEF20C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = swift_allocObject();
  v6 = *(v2 + 112);
  *(v5 + 112) = *(v2 + 96);
  *(v5 + 128) = v6;
  *(v5 + 144) = *(v2 + 128);
  v7 = *(v2 + 48);
  *(v5 + 48) = *(v2 + 32);
  *(v5 + 64) = v7;
  v8 = *(v2 + 80);
  *(v5 + 80) = *(v2 + 64);
  *(v5 + 96) = v8;
  v9 = *(v2 + 16);
  *(v5 + 16) = *v2;
  *(v5 + 32) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2333D8);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2333E0) + 36));
  *v11 = sub_24EEF4098;
  v11[1] = v5;
  sub_24EEF40A0(v2, v37);
  v12 = sub_24F927618();
  v14 = v13;
  sub_24EEF2550(v2, &v22);
  v33 = v26;
  v34 = v27;
  *v35 = *v28;
  *&v35[15] = *&v28[15];
  v29 = v22;
  v30 = v23;
  v31 = v24;
  v32 = v25;
  v35[19] = 0;
  *&v35[24] = v12;
  v36 = v14;
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2333E8) + 36);
  v16 = *&v35[16];
  *(v15 + 96) = *v35;
  *(v15 + 112) = v16;
  *(v15 + 128) = v36;
  v17 = v32;
  *(v15 + 32) = v31;
  *(v15 + 48) = v17;
  v18 = v34;
  *(v15 + 64) = v33;
  *(v15 + 80) = v18;
  v19 = v30;
  *v15 = v29;
  *(v15 + 16) = v19;
  v37[4] = v26;
  v37[5] = v27;
  *v38 = *v28;
  *&v38[15] = *&v28[15];
  v37[0] = v22;
  v37[1] = v23;
  v37[2] = v24;
  v37[3] = v25;
  v39 = 0;
  v40 = v12;
  v41 = v14;
  sub_24E60169C(&v29, &v21, &qword_27F2333F0);
  return sub_24E601704(v37, &qword_27F2333F0);
}

uint64_t sub_24EEF22BC(void **a1, uint64_t a2)
{
  if ((*a2 & 1) != 0 && (*(a2 + 1) & 1) != 0 && (v2 = *a1, v18 = *(a2 + 8), v3 = *(a2 + 72), v21 = *(a2 + 56), v22 = v3, v23[0] = *(a2 + 88), *(v23 + 9) = *(a2 + 97), v4 = *(a2 + 40), v19 = *(a2 + 24), v20 = v4, v18 != 1) && (v19 & 1) == 0 && v2)
  {
    *&v17[97] = *(a2 + 97);
    *&v17[40] = *(a2 + 40);
    *&v17[24] = *(a2 + 24);
    *&v17[8] = *(a2 + 8);
    *&v17[88] = *(a2 + 88);
    *&v17[72] = *(a2 + 72);
    *&v17[56] = *(a2 + 56);
    *v17 = v2;
    v15[4] = *&v17[64];
    v15[5] = *&v17[80];
    v15[6] = *&v17[96];
    v16 = v17[112];
    v15[0] = *v17;
    v15[1] = *&v17[16];
    v15[2] = *&v17[32];
    v15[3] = *&v17[48];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233428);
    swift_allocObject();
    sub_24E60169C(&v18, v14, &qword_27F233420);
    v6 = v2;
    sub_24E60169C(&v18, v14, &qword_27F233420);
    v7 = v6;
    sub_24EEF4298(v17, v14);
    MEMORY[0x253049370](v15);
    v8 = sub_24F9239D8();

    sub_24EEF42D0(v17);
    v9 = *(a2 + 120);
    v10 = *(a2 + 128);
    v13 = v8;
    v14[0] = v9;
    v24 = v10;
    *&v15[0] = v9;
    *(&v15[0] + 1) = v10;
    sub_24E60169C(v14, v12, &qword_27F21B9C0);
    sub_24E60169C(&v24, v12, &qword_27F233430);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0E0);
    sub_24F926F48();
    sub_24E601704(&v18, &qword_27F233420);

    sub_24E601704(v14, &qword_27F21B9C0);
    return sub_24E601704(&v24, &qword_27F233430);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0E0);
    return sub_24F926F48();
  }
}

uint64_t sub_24EEF2550@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((*result & 1) != 0 && (v2 = *(result + 24), v44 = *(result + 8), v45 = v2, v3 = *(result + 56), v4 = *(result + 88), v48 = *(result + 72), v49[0] = v4, *(v49 + 9) = *(result + 97), v46 = *(result + 40), v47 = v3, v5 = v44, v44 != 1))
  {
    v15 = *(&v44 + 1);
    v16 = v45;
    if (v45)
    {
      v17 = a2;
      LOBYTE(v28[0]) = 1;
      v38 = v44;
      v39[0] = v45;
      *&v39[33] = *(result + 57);
      *&v39[49] = *(result + 73);
      *&v39[65] = *(result + 89);
      *&v39[81] = *(result + 105);
      *&v39[1] = *(result + 25);
      *&v39[17] = *(result + 41);
      v41 = 1;
      v18 = *(result + 56);
      v19 = *(result + 88);
      v35 = *(result + 72);
      *v36 = v19;
      *&v36[9] = *(result + 97);
      v20 = *(result + 24);
      v31 = *(result + 8);
      v32 = v20;
      v33 = *(result + 40);
      v34 = v18;
      sub_24EEF40D8(&v31, v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2333F8);
      sub_24EEF4110();
      sub_24EEF4244();
      result = sub_24F924E28();
    }

    else
    {
      v17 = a2;
      if (*(result + 1))
      {
        v38 = *(result + 120);
        v21 = *(result + 56);
        v22 = *(result + 88);
        v28[4] = *(result + 72);
        *v29 = v22;
        *&v29[9] = *(result + 97);
        v23 = *(result + 24);
        v28[0] = *(result + 8);
        v28[1] = v23;
        v28[2] = *(result + 40);
        v28[3] = v21;
        v24 = result;
        sub_24EEF40D8(v28, v42);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E0E0);
        sub_24F926F38();
        v30 = 0;
        *&v42[8] = __PAIR128__(v15, v5);
        v42[24] = v16;
        *&v42[57] = *(v24 + 57);
        *&v42[73] = *(v24 + 73);
        *&v42[89] = *(v24 + 89);
        *&v42[105] = *(v24 + 105);
        *&v42[25] = *(v24 + 25);
        *&v42[41] = *(v24 + 41);
        v42[113] = 0;
        *&v39[48] = v48;
        *&v39[64] = v49[0];
        *&v39[73] = *(v49 + 9);
        v38 = v44;
        *v39 = v45;
        *&v39[16] = v46;
        *&v39[32] = v47;
      }

      else
      {
        LOBYTE(v28[0]) = 1;
        *v42 = *(&v44 + 1);
        *&v42[8] = v44;
        v42[24] = v45;
        *&v42[57] = *(result + 57);
        *&v42[73] = *(result + 73);
        *&v42[89] = *(result + 89);
        *&v42[105] = *(result + 105);
        *&v42[25] = *(result + 25);
        *&v42[41] = *(result + 41);
        v42[113] = 1;
        v25 = *(result + 56);
        v26 = *(result + 88);
        *&v39[48] = *(result + 72);
        *&v39[64] = v26;
        *&v39[73] = *(result + 97);
        v27 = *(result + 24);
        v38 = *(result + 8);
        *v39 = v27;
        *&v39[16] = *(result + 40);
        *&v39[32] = v25;
        sub_24E60169C(&v44, &v31, &qword_27F233420);
      }

      sub_24EEF40D8(&v38, &v31);
      sub_24EEF419C();
      sub_24EEF41F0();
      sub_24F924E28();
      *&v39[48] = v35;
      *&v39[64] = *v36;
      *&v39[80] = *&v36[16];
      v40 = v37;
      v38 = v31;
      *v39 = v32;
      *&v39[16] = v33;
      *&v39[32] = v34;
      LOBYTE(v28[0]) = 0;
      v41 = 0;
      sub_24E60169C(&v31, v42, &qword_27F2333F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2333F8);
      sub_24EEF4110();
      sub_24EEF4244();
      sub_24F924E28();
      sub_24E601704(&v44, &qword_27F233420);
      result = sub_24E601704(&v31, &qword_27F2333F8);
    }

    v8 = *v42;
    v10 = *&v42[16];
    v11 = *&v42[32];
    v12 = *&v42[48];
    v13 = *&v42[64];
    v14 = *&v42[80];
    v6 = *&v42[96];
    v7 = *&v42[104];
    v9 = *&v42[112] | (v43 << 16);
    a2 = v17;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0uLL;
    v9 = 16711680;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  *a2 = v8;
  *(a2 + 16) = v10;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  *(a2 + 64) = v13;
  *(a2 + 80) = v14;
  *(a2 + 96) = v6;
  *(a2 + 104) = v7;
  *(a2 + 112) = v9;
  *(a2 + 114) = BYTE2(v9);
  return result;
}

__n128 sub_24EEF299C@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_24F926E08();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1)
  {
    v7 = *v1;
    sub_24F926DD8();
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v8 = sub_24F926E88();

    (*(v4 + 8))(v6, v3);
    sub_24F927618();
    sub_24F9242E8();
    v9 = sub_24F9275F8();
    v11 = v10;

    v12 = *(v1 + 96);
    v23 = *(v1 + 80);
    v24 = v12;
    v25 = *(v1 + 112);
    v13 = *(v1 + 64);
    v22[0] = *(v1 + 48);
    v22[1] = v13;
    *(&v34[1] + 8) = v13;
    *(&v34[2] + 8) = v23;
    *(&v34[3] + 8) = v12;
    BYTE8(v34[4]) = v25;
    *(v34 + 8) = v22[0];
    *(&v33[2] + 8) = v28;
    *(&v33[1] + 8) = v27;
    *(v33 + 8) = v26;
    *(&v33[6] + 8) = v32;
    *(&v33[5] + 8) = v31;
    *(&v33[4] + 8) = v30;
    *(&v33[3] + 8) = v29;
    *&v33[0] = v8;
    *(&v33[7] + 1) = v9;
    *&v34[0] = v11;
    CGSizeMake(v33, v14, v15);
    sub_24EEF48F8(v22, &v35);
    v45 = v34[2];
    v46[0] = v34[3];
    *(v46 + 9) = *(&v34[3] + 9);
    v41 = v33[6];
    v42 = v33[7];
    v43 = v34[0];
    v44 = v34[1];
    v37 = v33[2];
    v38 = v33[3];
    v39 = v33[4];
    v40 = v33[5];
    v35 = v33[0];
    v36 = v33[1];
  }

  else
  {
    sub_24EEF48D4(&v35);
  }

  v16 = v46[0];
  *(a1 + 160) = v45;
  *(a1 + 176) = v16;
  *(a1 + 185) = *(v46 + 9);
  v17 = v42;
  *(a1 + 96) = v41;
  *(a1 + 112) = v17;
  v18 = v44;
  *(a1 + 128) = v43;
  *(a1 + 144) = v18;
  v19 = v38;
  *(a1 + 32) = v37;
  *(a1 + 48) = v19;
  v20 = v40;
  *(a1 + 64) = v39;
  *(a1 + 80) = v20;
  result = v36;
  *a1 = v35;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24EEF2C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if (*(a1 + 24))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    v6 = *(a1 + 16);
    v10 = *a1;
    v4 = sub_24F926DD8();
    if (v8)
    {
      v5 = 0x3FF0000000000000;
    }

    else
    {
      v5 = v9;
    }

    v7 = 1;
  }

  v13 = v3;
  sub_24E60169C(&v13, &v12, &qword_27F233468);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
}

__n128 sub_24EEF2D04@<Q0>(__n128 *a1@<X8>)
{
  v3 = *(v1 + 80);
  v17[4] = *(v1 + 64);
  v17[5] = v3;
  v17[6] = *(v1 + 96);
  v18 = *(v1 + 112);
  v4 = *(v1 + 16);
  v17[0] = *v1;
  v17[1] = v4;
  v5 = *(v1 + 48);
  v17[2] = *(v1 + 32);
  v17[3] = v5;
  v6 = sub_24F927618();
  v8 = v7;
  sub_24EEF2C44(v17, &v13);
  v9 = v14;
  v10 = v15;
  v11 = v16;
  result = v13;
  a1->n128_u64[0] = v6;
  a1->n128_u64[1] = v8;
  a1[1] = result;
  a1[2].n128_u64[0] = v9;
  a1[2].n128_u8[8] = v10;
  a1[3].n128_u64[0] = v11;
  return result;
}

double sub_24EEF2DEC@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_24F927618();
  v5 = v4;
  v6 = *v1;
  v8 = v1[4];
  v9 = *(v1 + 40);
  v65 = v1[1];
  v7 = v65;
  sub_24E60169C(&v65, &v39, &qword_27F233468);
  v10 = sub_24F9275F8();
  v12 = v11;
  v13 = *(v1 + 6);
  v68 = *(v1 + 5);
  v69 = v13;
  v70 = *(v1 + 112);
  v14 = *(v1 + 4);
  v66 = *(v1 + 3);
  v67 = v14;
  sub_24EEF48F8(&v66, &v39);
  sub_24F927618();
  sub_24F9242E8();
  LOBYTE(v56) = v70;
  v54 = v68;
  v55 = v69;
  v24[9] = v60;
  v24[10] = v61;
  v24[11] = v62;
  v24[7] = v58;
  v24[8] = v59;
  v52 = v66;
  v53 = v67;
  *&v24[0] = v10;
  *(&v24[0] + 1) = v12;
  v24[1] = v66;
  v24[2] = v67;
  v24[3] = v68;
  v24[4] = v69;
  v24[5] = v56;
  v24[6] = v57;
  v49 = v61;
  v50 = v62;
  v45 = v57;
  v46 = v58;
  v47 = v59;
  v48 = v60;
  v41 = v67;
  v42 = v68;
  v43 = v69;
  v44 = v56;
  v39 = v24[0];
  v40 = v66;
  v25 = v63;
  v26[0] = v10;
  v64 = v9 & 1;
  v51 = v63;
  v26[1] = v12;
  v35 = v60;
  v36 = v61;
  v37 = v62;
  v38 = v63;
  v31 = v56;
  v32 = v57;
  v33 = v58;
  v34 = v59;
  v27 = v66;
  v28 = v67;
  v29 = v68;
  v30 = v69;
  sub_24E60169C(v24, v23, &qword_27F233470);
  sub_24E601704(v26, &qword_27F233470);
  *(a1 + 16) = v6;
  v15 = v47;
  *(a1 + 200) = v48;
  v16 = v50;
  *(a1 + 216) = v49;
  *(a1 + 232) = v16;
  v17 = v43;
  *(a1 + 136) = v44;
  v18 = v46;
  *(a1 + 152) = v45;
  *(a1 + 168) = v18;
  *(a1 + 184) = v15;
  v19 = v39;
  *(a1 + 72) = v40;
  result = *&v41;
  v21 = v42;
  *(a1 + 88) = v41;
  *(a1 + 104) = v21;
  *(a1 + 120) = v17;
  v22 = v64;
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 24) = v8;
  *(a1 + 32) = v22;
  *(a1 + 40) = 0;
  *(a1 + 48) = v7;
  *(a1 + 248) = v51;
  *(a1 + 56) = v19;
  return result;
}

__n128 sub_24EEF30A0@<Q0>(uint64_t a1@<X8>)
{
  if (*(v1 + 64))
  {
    sub_24EEF53D0(v1, v5);
    sub_24F9273D8();
    sub_24F923C78();
  }

  else
  {
    sub_24EEF53D0(v1, v5);
    sub_24F9273D8();
    sub_24F923BD8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233508);
  sub_24E86BC28();
  sub_24EEF5408();
  sub_24F924E28();
  v3 = v6[0];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v3;
  *(a1 + 57) = *(v6 + 9);
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  return result;
}

char *sub_24EEF3238()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (v4)
  {
    v5 = *(v0 + 24);
  }

  else
  {
    v5 = [objc_opt_self() clearColor];
  }

  if (v3)
  {
    v2 = 1.0;
  }

  v6 = objc_allocWithZone(type metadata accessor for MaterialView());
  v7 = v4;
  return sub_24EEF33C0(v5, v1, v2);
}

uint64_t sub_24EEF32D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24EEF537C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24EEF3334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24EEF537C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24EEF3398()
{
  sub_24EEF537C();
  sub_24F924DC8();
  __break(1u);
}

char *sub_24EEF33C0(void *a1, double a2, double a3)
{
  v7 = OBJC_IVAR____TtC12GameStoreKit12MaterialView_saturateFilter;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v8 = OBJC_IVAR____TtC12GameStoreKit12MaterialView_blurFilter;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  *&v3[OBJC_IVAR____TtC12GameStoreKit12MaterialView_blurRadius] = a2;
  *&v3[OBJC_IVAR____TtC12GameStoreKit12MaterialView_saturation] = a3;
  *&v3[OBJC_IVAR____TtC12GameStoreKit12MaterialView_layerBackgroundColor] = a1;
  v36.receiver = v3;
  v36.super_class = type metadata accessor for MaterialView();
  v9 = a1;
  v10 = objc_msgSendSuper2(&v36, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = OBJC_IVAR____TtC12GameStoreKit12MaterialView_saturateFilter;
  v12 = *&v10[OBJC_IVAR____TtC12GameStoreKit12MaterialView_saturateFilter];
  v13 = v10;
  v14 = v12;
  v15 = sub_24F91FDF8();
  [v14 setValue:v15 forKey:{*MEMORY[0x277CDA360], v36.receiver, v36.super_class}];

  v16 = OBJC_IVAR____TtC12GameStoreKit12MaterialView_blurFilter;
  v17 = *&v13[OBJC_IVAR____TtC12GameStoreKit12MaterialView_blurFilter];
  v18 = sub_24F92B768();
  [v17 setValue:v18 forKey:*MEMORY[0x277CDA4C8]];

  v19 = *&v13[v16];
  v20 = sub_24F91FDF8();
  [v19 setValue:v20 forKey:*MEMORY[0x277CDA4F0]];

  v21 = v13;
  v22 = [v21 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_24F93A400;
  v24 = *&v13[v16];
  v25 = sub_24E69A5C4(0, &qword_27F232DA0);
  *(v23 + 56) = v25;
  *(v23 + 32) = v24;
  v26 = *&v10[v11];
  *(v23 + 88) = v25;
  *(v23 + 64) = v26;
  v27 = v24;
  v28 = v26;
  v29 = sub_24F92B588();

  [v22 setFilters_];

  v30 = [v21 layer];
  v31 = [*&v21[OBJC_IVAR____TtC12GameStoreKit12MaterialView_layerBackgroundColor] CGColor];
  [v30 setBackgroundColor_];

  v32 = [v21 layer];
  v33 = [v32 mask];

  if (v33)
  {
    LODWORD(v34) = 1.0;
    [v33 setOpacity_];
  }

  return v21;
}

id sub_24EEF37B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MaterialView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24EEF3864@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 88);
  v9 = *(v1 + 72);
  v10 = v3;
  v11 = *(v1 + 104);
  v4 = v11;
  v8[0] = *(v1 + 40);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_24EEF48F8(v8, v7);
}

double sub_24EEF38B8(double a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_24F923F78();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v14, *MEMORY[0x277CDFA88], v10, v12);
  v15 = sub_24F923F68();
  (*(v11 + 8))(v14, v10);
  v16 = -a3;
  if (v15)
  {
    v16 = a3;
  }

  v17 = __sincos_stret(v16 * 3.14159265 / 180.0);
  return (a4 - a1) * v17.__cosval + a1 - (a5 - a2) * v17.__sinval;
}

uint64_t sub_24EEF3A30()
{
  sub_24F926C88();
  v0 = sub_24F926D08();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24F93A400;
  sub_24F926C88();
  *(v1 + 32) = sub_24F9273C8();
  *(v1 + 40) = v2;
  sub_24F926C88();
  sub_24F926D08();

  *(v1 + 48) = sub_24F9273C8();
  *(v1 + 56) = v3;
  sub_24F927898();
  v5 = v4;
  v7 = v6;
  result = sub_24F927878();
  xmmword_27F39CDC8 = v0;
  byte_27F39CDD8 = 1;
  qword_27F39CDE0 = 0;
  LOBYTE(xmmword_27F39CDE8) = 1;
  *(&xmmword_27F39CDE8 + 1) = v1;
  qword_27F39CDF8 = v5;
  unk_27F39CE00 = v7;
  *&xmmword_27F39CE08 = v9;
  *(&xmmword_27F39CE08 + 1) = v10;
  byte_27F39CE30 = 0;
  return result;
}

uint64_t sub_24EEF3B44()
{
  sub_24F926C88();
  v0 = sub_24F926D08();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24F93A400;
  sub_24F926C88();
  *(v1 + 32) = sub_24F9273C8();
  *(v1 + 40) = v2;
  sub_24F926C88();
  sub_24F926D08();

  *(v1 + 48) = sub_24F9273C8();
  *(v1 + 56) = v3;
  sub_24F927878();
  v5 = v4;
  v7 = v6;
  result = sub_24F927898();
  xmmword_27F39CE38 = v0;
  byte_27F39CE48 = 1;
  qword_27F39CE50 = 0;
  LOBYTE(xmmword_27F39CE58) = 1;
  *(&xmmword_27F39CE58 + 1) = v1;
  qword_27F39CE68 = v5;
  unk_27F39CE70 = v7;
  *&xmmword_27F39CE78 = v9;
  *(&xmmword_27F39CE78 + 1) = v10;
  byte_27F39CEA0 = 0;
  return result;
}

uint64_t sub_24EEF3C58@<X0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  if (a1)
  {
    sub_24F926C88();
  }

  else
  {
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  }

  v7 = sub_24F926D08();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F93FC20;
  sub_24F926C88();
  sub_24F926D08();

  *(v8 + 32) = sub_24F9273C8();
  *(v8 + 40) = v9;
  sub_24F926C88();
  sub_24F926D08();

  *(v8 + 48) = sub_24F9273C8();
  *(v8 + 56) = v10;
  sub_24F926C88();
  sub_24F926D08();

  *(v8 + 64) = sub_24F9273C8();
  *(v8 + 72) = v11;
  sub_24F926C88();
  sub_24F926D08();

  *(v8 + 80) = sub_24F9273C8();
  *(v8 + 88) = v12;
  sub_24F927898();
  v14 = v13;
  v16 = v15;
  result = sub_24F927898();
  *a2 = v7;
  *(a2 + 8) = 0x404C000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0x3FF8000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = v8;
  *(a2 + 48) = v14;
  *(a2 + 56) = v16;
  *(a2 + 64) = v19;
  *(a2 + 72) = v18 - a3 / a4;
  *(a2 + 104) = 0;
  return result;
}

void sub_24EEF3E2C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit12MaterialView_saturateFilter;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v2 = OBJC_IVAR____TtC12GameStoreKit12MaterialView_blurFilter;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  sub_24F92CA88();
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit20TextLegibilityConfigVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EEF3F24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 120);
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

uint64_t sub_24EEF3F80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2;
    }
  }

  return result;
}

uint64_t sub_24EEF4020()
{
  if (*(v0 + 24) != 1)
  {

    j__swift_bridgeObjectRelease();
  }

  return swift_deallocObject();
}

unint64_t sub_24EEF4110()
{
  result = qword_27F233400;
  if (!qword_27F233400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2333F8);
    sub_24EEF419C();
    sub_24EEF41F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233400);
  }

  return result;
}

unint64_t sub_24EEF419C()
{
  result = qword_27F233408;
  if (!qword_27F233408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233408);
  }

  return result;
}

unint64_t sub_24EEF41F0()
{
  result = qword_27F233410;
  if (!qword_27F233410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233410);
  }

  return result;
}

unint64_t sub_24EEF4244()
{
  result = qword_27F233418;
  if (!qword_27F233418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233418);
  }

  return result;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_24EEF432C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_24EEF4374(uint64_t result, int a2, int a3)
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
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24EEF4420(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 113))
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

uint64_t sub_24EEF447C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_24EEF4500(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 113))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24EEF455C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24EEF45E4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 105))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24EEF4644(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_24EEF46C8()
{
  result = qword_27F233438;
  if (!qword_27F233438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2333E8);
    sub_24EEF4780();
    sub_24E602068(&qword_27F233460, &qword_27F2333F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233438);
  }

  return result;
}

unint64_t sub_24EEF4780()
{
  result = qword_27F233440;
  if (!qword_27F233440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2333E0);
    sub_24E602068(&qword_27F233448, &qword_27F2333D8);
    sub_24E602068(&qword_27F233450, &qword_27F233458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233440);
  }

  return result;
}

double sub_24EEF48D4(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 185) = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
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

uint64_t sub_24EEF4930(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_24EEF498C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_24EEF4A04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24EEF4A50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

unint64_t sub_24EEF4AC8()
{
  result = qword_27F233478;
  if (!qword_27F233478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F233480);
    sub_24EEF4B4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233478);
  }

  return result;
}

unint64_t sub_24EEF4B4C()
{
  result = qword_27F233488;
  if (!qword_27F233488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F233490);
    sub_24EEF4C04();
    sub_24E602068(&qword_27F2334A8, &qword_27F2334B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233488);
  }

  return result;
}

unint64_t sub_24EEF4C04()
{
  result = qword_27F233498;
  if (!qword_27F233498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2334A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233498);
  }

  return result;
}

unint64_t sub_24EEF4C8C()
{
  result = qword_27F2334B8;
  if (!qword_27F2334B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2334C0);
    sub_24E602068(&qword_27F2334C8, &qword_27F2334D0);
    sub_24E602068(&qword_27F2334D8, &qword_27F233470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2334B8);
  }

  return result;
}

unint64_t sub_24EEF4D74()
{
  result = qword_27F2334E0;
  if (!qword_27F2334E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2334E0);
  }

  return result;
}

unint64_t sub_24EEF4E2C()
{
  result = qword_27F2334F8;
  if (!qword_27F2334F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2334F8);
  }

  return result;
}

double sub_24EEF4E80@<D0>(char a1@<W0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>)
{
  v27 = a4;
  v28 = a3;
  v6 = sub_24F923F78();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24F942000;
  sub_24F926C88();
  sub_24F926D08();

  *(v10 + 32) = sub_24F9273C8();
  *(v10 + 40) = v11;
  sub_24F926C88();
  sub_24F926D08();

  *(v10 + 48) = sub_24F9273C8();
  *(v10 + 56) = v12;
  sub_24F926C88();
  sub_24F926D08();

  *(v10 + 64) = sub_24F9273C8();
  *(v10 + 72) = v13;
  sub_24F926C88();
  sub_24F926D08();

  *(v10 + 80) = sub_24F9273C8();
  *(v10 + 88) = v14;
  sub_24F926C88();
  sub_24F926D08();

  *(v10 + 96) = sub_24F9273C8();
  *(v10 + 104) = v15;
  (*(v7 + 104))(v9, *MEMORY[0x277CDFA88], v6);
  v16 = sub_24F923F68();
  (*(v7 + 8))(v9, v6);
  *&v17 = v28.n128_f64[0] + -248.0;
  if (v16)
  {
    *&v17 = 248.0;
  }

  v26 = v17;
  v18 = sub_24EEF38B8(*&v17, 340.0, 34.0, *&v17, 100.0);
  v20 = v19;
  if (a1)
  {
    sub_24F926C88();
  }

  else
  {
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  }

  v21 = sub_24F926D08();

  v22 = vdupq_lane_s64(0x4075400000000000, 0);
  *&v22.f64[0] = v26;
  v23 = v28.n128_f64[0];
  *&v24.f64[0] = v28.n128_u64[0];
  *&v24.f64[1] = v27.n128_u64[0];
  *a2 = v21;
  *(a2 + 8) = 0x4051000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0x3FF8000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = v10;
  *(a2 + 48) = vdivq_f64(v22, v24);
  result = v20 / v24.f64[1];
  *(a2 + 64) = v18 / v23;
  *(a2 + 72) = v20 / v24.f64[1];
  *(a2 + 104) = 0;
  return result;
}

uint64_t sub_24EEF51C4@<X0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F9479A0;
  sub_24F926C88();
  sub_24F926D08();

  *(v8 + 32) = sub_24F9273C8();
  *(v8 + 40) = v9;
  sub_24F926C88();
  sub_24F926D08();

  *(v8 + 48) = sub_24F9273C8();
  *(v8 + 56) = v10;
  sub_24F926C88();
  sub_24F926D08();

  *(v8 + 64) = sub_24F9273C8();
  *(v8 + 72) = v11;
  if (a1)
  {
    sub_24F926C88();
  }

  else
  {
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  }

  v12 = sub_24F926D08();

  v13 = a3 + 60.0;
  sub_24F927898();
  v15 = v14;
  v17 = v16 - a3 / a4;
  result = sub_24F927898();
  *a2 = v12;
  *(a2 + 8) = 0x4051000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0x3FF8000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = v8;
  *(a2 + 48) = v15;
  *(a2 + 56) = v17;
  *(a2 + 64) = v20;
  *(a2 + 72) = v19 - v13 / a4;
  *(a2 + 104) = 0;
  return result;
}

unint64_t sub_24EEF537C()
{
  result = qword_27F233500;
  if (!qword_27F233500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233500);
  }

  return result;
}

unint64_t sub_24EEF5408()
{
  result = qword_27F233510;
  if (!qword_27F233510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F233508);
    sub_24EEF5494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233510);
  }

  return result;
}

unint64_t sub_24EEF5494()
{
  result = qword_27F233518;
  if (!qword_27F233518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233518);
  }

  return result;
}

unint64_t sub_24EEF54FC()
{
  result = qword_27F233520;
  if (!qword_27F233520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F233528);
    sub_24E86BC28();
    sub_24EEF5408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233520);
  }

  return result;
}

uint64_t sub_24EEF55AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24EEF5698(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t type metadata accessor for OverlaySocialDataPrefetchIntent()
{
  result = qword_27F233530;
  if (!qword_27F233530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EEF57AC()
{
  sub_24E637694();
  if (v0 <= 0x3F)
  {
    sub_24E66ECF0(319, &qword_27F254DE0);
    if (v1 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F233540);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24EEF5868@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  *(inited + 80) = sub_24E7EDBB4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E6364A0(v2, boxed_opaque_existential_1);
  *(inited + 88) = 0x4449656C646E7562;
  *(inited + 96) = 0xE800000000000000;
  v6 = type metadata accessor for OverlaySocialDataPrefetchIntent();
  v7 = (v2 + *(v6 + 20));
  v9 = *v7;
  v8 = v7[1];
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  v10 = sub_24E605DB4();
  *(inited + 104) = v9;
  *(inited + 112) = v8;
  *(inited + 136) = v10;
  *(inited + 144) = 0xD000000000000016;
  *(inited + 152) = 0x800000024FA55B30;
  v11 = *(v2 + *(v6 + 24));
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233560);
  *(inited + 192) = sub_24EEF61F0();
  *(inited + 160) = v11;

  v12 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v12;
  return result;
}

uint64_t sub_24EEF5A38(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233558);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EEF60DC();
  sub_24F92D128();
  v14 = 0;
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28);
  sub_24F92CCF8();
  if (!v2)
  {
    v9 = type metadata accessor for OverlaySocialDataPrefetchIntent();
    v13 = 1;
    sub_24F92CCA8();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    sub_24EBB9844();
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24EEF5C28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233548);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for OverlaySocialDataPrefetchIntent();
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EEF60DC();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v12;
  v14 = v21;
  type metadata accessor for Player(0);
  v26 = 0;
  sub_24E61C064(&qword_27F213E38);
  v15 = v22;
  sub_24F92CC18();
  sub_24E6365D4(v6, v13);
  v25 = 1;
  v16 = sub_24F92CBC8();
  v17 = (v13 + *(v10 + 20));
  *v17 = v16;
  v17[1] = v18;
  v24 = 2;
  sub_24EBB96D8();
  sub_24F92CC18();
  (*(v14 + 8))(v9, v15);
  *(v13 + *(v10 + 24)) = v23;
  sub_24EEF6130(v13, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24EEF6194(v13);
}

uint64_t sub_24EEF5F78()
{
  v1 = 0x4449656C646E7562;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726579616C70;
  }
}

uint64_t sub_24EEF5FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EEF638C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EEF5FFC(uint64_t a1)
{
  v2 = sub_24EEF60DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EEF6038(uint64_t a1)
{
  v2 = sub_24EEF60DC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EEF60DC()
{
  result = qword_27F233550;
  if (!qword_27F233550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233550);
  }

  return result;
}

uint64_t sub_24EEF6130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverlaySocialDataPrefetchIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EEF6194(uint64_t a1)
{
  v2 = type metadata accessor for OverlaySocialDataPrefetchIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EEF61F0()
{
  result = qword_27F233568;
  if (!qword_27F233568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F233560);
    sub_24EBB9898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233568);
  }

  return result;
}

unint64_t sub_24EEF6288()
{
  result = qword_27F233570;
  if (!qword_27F233570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233570);
  }

  return result;
}

unint64_t sub_24EEF62E0()
{
  result = qword_27F233578;
  if (!qword_27F233578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233578);
  }

  return result;
}

unint64_t sub_24EEF6338()
{
  result = qword_27F233580;
  if (!qword_27F233580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233580);
  }

  return result;
}

uint64_t sub_24EEF638C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA55B30 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t ShelfMarker.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24F92CB88();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_24EEF6520()
{
  result = qword_27F233588;
  if (!qword_27F233588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233588);
  }

  return result;
}

uint64_t sub_24EEF6574()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EEF65E8()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EEF663C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_24F92CB88();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_24EEF66C0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_24E861E6C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_24EEF7590(v6);
  return sub_24F92C958();
}

uint64_t sub_24EEF673C()
{
  result = sub_24F92B098();
  qword_27F233590 = result;
  return result;
}

id static NSNotificationName.updateAllActionImplementationWillRun.getter()
{
  if (qword_27F210820 != -1)
  {
    swift_once();
  }

  v1 = qword_27F233590;

  return v1;
}

unint64_t sub_24EEF67EC()
{
  result = qword_27F233618;
  if (!qword_27F233618)
  {
    type metadata accessor for UpdateAllAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233618);
  }

  return result;
}

void sub_24EEF6844(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0);
  sub_24F928FD8();
  sub_24F92A758();
  v35 = aBlock;
  v36 = v39;
  type metadata accessor for UpdateStore();
  sub_24F92A758();
  v32 = aBlock;
  v4 = MEMORY[0x277D84FA0];
  v45 = MEMORY[0x277D84FA0];
  v5 = MEMORY[0x277D84F90];
  v6 = sub_24E60E870(MEMORY[0x277D84F90]);
  v7 = *(v3 + 16);
  if (v7)
  {
    v8 = (v3 + 56);
    do
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;
      swift_bridgeObjectRetain_n();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_24E615CF4(0, *(v5 + 2) + 1, 1, v5);
      }

      v14 = *(v5 + 2);
      v13 = *(v5 + 3);
      if (v14 >= v13 >> 1)
      {
        v5 = sub_24E615CF4((v13 > 1), v14 + 1, 1, v5);
      }

      *(v5 + 2) = v14 + 1;
      v15 = &v5[16 * v14];
      *(v15 + 4) = v11;
      *(v15 + 5) = v12;

      sub_24ED7E42C(&aBlock, v9, v10);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v6;
      sub_24E820408(v9, v10, v11, v12, isUniquelyReferenced_nonNull_native);

      v6 = aBlock;
      v8 += 4;
      --v7;
    }

    while (v7);
    v4 = v45;
  }

  v17 = v4 + 56;
  v18 = 1 << *(v4 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v4 + 56);
  v21 = (v18 + 63) >> 6;
  v34 = v4;

  v22 = 0;
  while (v20)
  {
    v23 = v22;
LABEL_17:
    v24 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v25 = (*(v34 + 48) + ((v23 << 10) | (16 * v24)));
    v27 = *v25;
    v26 = v25[1];
    ObjectType = swift_getObjectType();
    aBlock = v27;
    v39 = v26;
    v44 = 2;
    v28 = *(v36 + 64);

    v28(&aBlock, &v44, ObjectType, v36);
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      v29 = sub_24F92B588();

      v30 = swift_allocObject();
      v30[2] = v6;
      v30[3] = v34;
      v30[4] = v35;
      v30[5] = v36;
      v30[6] = a3;
      v42 = sub_24EEF8390;
      v43 = v30;
      aBlock = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = sub_24EEF7108;
      v41 = &block_descriptor_89;
      v31 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v32 updateAllWithOrder:v29 completionBlock:v31];

      swift_unknownObjectRelease();
      _Block_release(v31);

      return;
    }

    v20 = *(v17 + 8 * v23);
    ++v22;
    if (v20)
    {
      v22 = v23;
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_24EEF6C14(char a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v74 = a6;
  v75 = a7;
  v13 = sub_24F928AE8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v78 = MEMORY[0x277D84FA0];
  v69 = v17;
  v70 = a8;
  v67 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v14;
  v71 = a5;
  if ((a1 & 1) == 0)
  {
    v78 = a5;

LABEL_20:
    v33 = v32 + 56;
    v34 = 1 << *(v32 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v32 + 56);
    v37 = (v34 + 63) >> 6;
    v72 = v75 + 24;
    v73 = v32;

    v38 = 0;
    v39 = v75;
    while (v36)
    {
      v40 = v38;
      v41 = v73;
LABEL_29:
      v42 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v43 = (*(v41 + 48) + ((v40 << 10) | (16 * v42)));
      v45 = *v43;
      v44 = v43[1];
      v46 = v74;
      ObjectType = swift_getObjectType();
      v76 = v45;
      v77 = v44;
      v48 = swift_allocObject();
      v48[2] = v46;
      v48[3] = v39;
      v48[4] = v45;
      v48[5] = v44;
      v49 = *(v39 + 24);
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();
      v49(&v76, sub_24EEF83F8, v48, ObjectType, v39);
    }

    v41 = v73;
    while (1)
    {
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v40 >= v37)
      {
        break;
      }

      v36 = *(v33 + 8 * v40);
      ++v38;
      if (v36)
      {
        v38 = v40;
        goto LABEL_29;
      }
    }

    v50 = v71;
    if (*(v41 + 16) <= *(v71 + 16) >> 3)
    {
      v76 = v71;

      sub_24F7A6B7C(v41);

      v51 = v76;
    }

    else
    {

      v51 = sub_24F7A7450(v41, v50);
    }

    v52 = 0;
    v53 = 1 << *(v51 + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v54 & *(v51 + 56);
    v56 = (v53 + 63) >> 6;
    while (v55)
    {
      v57 = v52;
LABEL_42:
      v58 = __clz(__rbit64(v55));
      v55 &= v55 - 1;
      v59 = (*(v51 + 48) + ((v57 << 10) | (16 * v58)));
      v61 = *v59;
      v60 = v59[1];
      v62 = swift_getObjectType();
      v76 = v61;
      v77 = v60;

      v63.underlyingAdamID._countAndFlagsBits = &v76;
      v63.underlyingAdamID._object = v62;
      AppStateController.clearWaiting(for:)(v63);
    }

    while (1)
    {
      v57 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v57 >= v56)
      {

        v65 = v67;
        v64 = v68;
        v66 = v69;
        (*(v68 + 104))(v67, *MEMORY[0x277D21CA8], v69);
        sub_24F92A9C8();
        (*(v64 + 8))(v65, v66);
        return;
      }

      v55 = *(v51 + 56 + 8 * v57);
      ++v52;
      if (v55)
      {
        v52 = v57;
        goto LABEL_42;
      }
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (!(a2 >> 62))
  {
    v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_19:
    v32 = MEMORY[0x277D84FA0];
    goto LABEL_20;
  }

  v18 = sub_24F92C738();
  if (!v18)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (v18 >= 1)
  {
    v19 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x253052270](v19, a2, v15);
      }

      else
      {
        v20 = *(a2 + 8 * v19 + 32);
      }

      v21 = v20;
      if ([v20 status] == 1)
      {
        v22 = [v21 bundleID];
        v23 = sub_24F92B0D8();
        v25 = v24;

        if (*(a4 + 16))
        {
          v26 = sub_24E76D644(v23, v25);
          v28 = v27;

          if (v28)
          {
            v29 = (*(a4 + 56) + 16 * v26);
            v30 = *v29;
            v31 = v29[1];

            sub_24ED7E42C(&v76, v30, v31);

            goto LABEL_8;
          }
        }

        else
        {
        }
      }

LABEL_8:
      if (v18 == ++v19)
      {
        v32 = v78;
        goto LABEL_20;
      }
    }
  }

LABEL_47:
  __break(1u);
}

void sub_24EEF7108(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  sub_24E69A5C4(0, &qword_27F233620);
  v7 = sub_24F92B5A8();

  v8 = a4;
  v6(a2, v7, a4);
}

uint64_t sub_24EEF71C0(unint64_t a1)
{
  v33 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v3 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x253052270](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v4 = *(a1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 updateState];
      if (v7 > 4 || ((1 << v7) & 0x19) == 0)
      {
      }

      else
      {
        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:

  v33 = sub_24EC4E138(v9);
  v10 = 0;
  sub_24EEF66C0(&v33);
  v11 = v33;
  if ((v33 & 0x8000000000000000) == 0 && (v33 & 0x4000000000000000) == 0)
  {
    v12 = *(v33 + 16);
    if (v12)
    {
      goto LABEL_23;
    }

LABEL_39:
    v14 = MEMORY[0x277D84F90];
LABEL_40:

    v28 = sub_24E8E8DD8(v14);

    v33 = v28;
    sub_24F92A9C8();
  }

LABEL_38:
  v12 = sub_24F92C738();
  if (!v12)
  {
    goto LABEL_39;
  }

LABEL_23:
  v13 = 0;
  v32 = v11 & 0xC000000000000001;
  v14 = MEMORY[0x277D84F90];
  v30 = v12;
  v31 = v11;
  while (1)
  {
    if (v32)
    {
      v15 = MEMORY[0x253052270](v13, v11);
    }

    else
    {
      if (v13 >= *(v11 + 16))
      {
        goto LABEL_37;
      }

      v15 = *(v11 + 8 * v13 + 32);
    }

    v16 = v15;
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v33 = [v15 storeItemIdentifier];
    v18 = sub_24F92CD88();
    v20 = v19;
    v21 = [v16 bundleIdentifier];
    if (!v21)
    {
      break;
    }

    v22 = v21;
    v23 = sub_24F92B0D8();
    v25 = v24;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_24E6197CC(0, v14[2] + 1, 1, v14);
    }

    v10 = v14[2];
    v26 = v14[3];
    if (v10 >= v26 >> 1)
    {
      v14 = sub_24E6197CC((v26 > 1), v10 + 1, 1, v14);
    }

    v14[2] = v10 + 1;
    v27 = &v14[4 * v10];
    v27[4] = v18;
    v27[5] = v20;
    v27[6] = v23;
    v27[7] = v25;
    ++v13;
    v11 = v31;
    if (v17 == v30)
    {
      goto LABEL_40;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_24EEF7500(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_24E69A5C4(0, &qword_27F225148);
  v2 = sub_24F92B5A8();

  v1(v2);
}

void sub_24EEF7590(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24F92CD78();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_24E69A5C4(0, &qword_27F225148);
        v6 = sub_24F92B618();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_24EEF777C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_24EEF76A4(0, v2, 1, a1);
  }
}

void sub_24EEF76A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      v14 = sub_24EC4CDDC(v12, v13);

      if ((v14 & 1) == 0)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v15 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v15;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_24EEF777C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v8 = sub_24E86164C(v8);
    }

    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = *&v8[16 * v86];
        v88 = *&v8[16 * v86 + 24];
        sub_24EEF7D84((*a3 + 8 * v87), (*a3 + 8 * *&v8[16 * v86 + 16]), (*a3 + 8 * v88), v6);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v88 < v87)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24E86164C(v8);
        }

        if (v86 - 2 >= *(v8 + 2))
        {
          goto LABEL_114;
        }

        v89 = &v8[16 * v86];
        *v89 = v87;
        *(v89 + 1) = v88;
        sub_24E8615C0(v86 - 1);
        v86 = *(v8 + 2);
        if (v86 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v91 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = (*a3 + 8 * v7);
      v14 = *v12;
      v13 = v12 + 2;
      v15 = v11;
      v16 = v14;
      v17 = sub_24EC4CDDC(v15, v16);

      v93 = v7;
      v18 = (v7 + 2);
      while (v6 != v18)
      {
        v19 = *(v13 - 1);
        v20 = *v13;
        v21 = v19;
        LODWORD(v19) = sub_24EC4CDDC(v20, v21) & 1;

        v18 = (v18 + 1);
        ++v13;
        if ((v17 & 1) != v19)
        {
          v6 = v18 - 1;
          break;
        }
      }

      if (v17)
      {
        v9 = v93;
        if (v6 < v93)
        {
          goto LABEL_117;
        }

        if (v93 < v6)
        {
          v22 = 8 * v6 - 8;
          v23 = v6;
          v24 = v93;
          do
          {
            v23 = (v23 - 1);
            if (v24 != v23)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v25 = *(v26 + v5);
              *(v26 + v5) = *(v26 + v22);
              *(v26 + v22) = v25;
            }

            v24 = (v24 + 1);
            v22 -= 8;
            v5 += 8;
          }

          while (v24 < v23);
        }

        v10 = v6;
        v5 = v91;
      }

      else
      {
        v10 = v6;
        v5 = v91;
        v9 = v93;
      }
    }

    v27 = a3[1];
    if (v10 < v27)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_116;
      }

      if (v10 - v9 < a4)
      {
        v28 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_118;
        }

        if (v28 >= v27)
        {
          v28 = a3[1];
        }

        if (v28 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v10 != v28)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_24E615ED8(0, *(v8 + 2) + 1, 1, v8);
    }

    v41 = *(v8 + 2);
    v40 = *(v8 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      v8 = sub_24E615ED8((v40 > 1), v41 + 1, 1, v8);
    }

    *(v8 + 2) = v42;
    v43 = &v8[16 * v41];
    *(v43 + 4) = v9;
    *(v43 + 5) = v10;
    v44 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    v7 = v10;
    if (v41)
    {
      while (1)
      {
        v45 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v46 = *(v8 + 4);
          v47 = *(v8 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_57:
          if (v49)
          {
            goto LABEL_104;
          }

          v62 = &v8[16 * v42];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_107;
          }

          v68 = &v8[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_111;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v42 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v72 = &v8[16 * v42];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_71:
        if (v67)
        {
          goto LABEL_106;
        }

        v75 = &v8[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_109;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_78:
        v83 = v45 - 1;
        if (v45 - 1 >= v42)
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

        if (!*a3)
        {
          goto LABEL_122;
        }

        v84 = *&v8[16 * v83 + 32];
        v6 = *&v8[16 * v45 + 40];
        sub_24EEF7D84((*a3 + 8 * v84), (*a3 + 8 * *&v8[16 * v45 + 32]), (*a3 + 8 * v6), v44);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v6 < v84)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24E86164C(v8);
        }

        if (v83 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v85 = &v8[16 * v83];
        *(v85 + 4) = v84;
        *(v85 + 5) = v6;
        sub_24E8615C0(v45);
        v42 = *(v8 + 2);
        if (v42 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v8[16 * v42 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_102;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_103;
      }

      v57 = &v8[16 * v42];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_105;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_108;
      }

      if (v61 >= v53)
      {
        v79 = &v8[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_112;
        }

        if (v48 < v82)
        {
          v45 = v42 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v92 = v5;
  v94 = v9;
  v29 = *a3;
  v30 = *a3 + 8 * v10 - 8;
  v31 = (v9 - v10);
  v96 = v28;
LABEL_30:
  v97 = v10;
  v32 = *(v29 + 8 * v10);
  v6 = v31;
  v33 = v30;
  while (1)
  {
    v34 = *v33;
    v35 = v32;
    v36 = v34;
    v37 = sub_24EC4CDDC(v35, v36);

    if ((v37 & 1) == 0)
    {
LABEL_29:
      v10 = v97 + 1;
      v30 += 8;
      v31 = (v31 - 1);
      if ((v97 + 1) != v96)
      {
        goto LABEL_30;
      }

      v10 = v96;
      v5 = v92;
      v9 = v94;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v38 = *v33;
    v32 = *(v33 + 8);
    *v33 = v32;
    *(v33 + 8) = v38;
    v33 -= 8;
    if (__CFADD__(v6++, 1))
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
}

uint64_t sub_24EEF7D84(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v4;
      v18 = *v6;
      v19 = v17;
      v20 = v6;
      v21 = sub_24EC4CDDC(v18, v19);

      if (v21)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4++;
      v6 = v20;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v20;
    v6 = v20 + 1;
    if (v7 == v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
    v34 = v4;
LABEL_24:
    v33 = v6;
    v22 = v6 - 1;
    --v5;
    v23 = v14;
    do
    {
      v24 = v5 + 1;
      v25 = *--v23;
      v26 = v22;
      v27 = *v22;
      v28 = v25;
      v29 = v27;
      v30 = sub_24EC4CDDC(v28, v29);

      if (v30)
      {
        v31 = v26;
        if (v24 != v33)
        {
          *v5 = *v26;
        }

        v4 = v34;
        if (v14 <= v34 || (v6 = v31, v31 <= v7))
        {
          v6 = v31;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v24 != v14)
      {
        *v5 = *v23;
      }

      --v5;
      v14 = v23;
      v22 = v26;
    }

    while (v23 > v34);
    v14 = v23;
    v6 = v33;
    v4 = v34;
  }

LABEL_35:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_24EEF800C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233628);
  v2 = sub_24F92A9E8();
  if (*(a1 + OBJC_IVAR____TtC12GameStoreKit15UpdateAllAction_ordering))
  {
    v6[0] = *(a1 + OBJC_IVAR____TtC12GameStoreKit15UpdateAllAction_ordering);
    sub_24F92A9C8();
  }

  else
  {
    type metadata accessor for UpdateStore();
    sub_24F928FD8();
    sub_24F92A758();
    v3 = v6[0];
    v6[4] = sub_24EEF844C;
    v6[5] = v2;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_24EEF7500;
    v6[3] = &block_descriptor_9;
    v4 = _Block_copy(v6);

    [v3 getUpdatesWithCompletionBlock_];
    _Block_release(v4);
  }

  return v2;
}

uint64_t sub_24EEF8150(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v4 = sub_24F92A9E8();
  v5 = [objc_opt_self() defaultCenter];
  if (qword_27F210820 != -1)
  {
    swift_once();
  }

  [v5 postNotificationName:qword_27F233590 object:a1];

  sub_24EEF800C(a1);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = v4;
  v7 = sub_24E69A5C4(0, &qword_27F222300);
  swift_retain_n();

  v8 = sub_24F92BEF8();
  v10[3] = v7;
  v10[4] = MEMORY[0x277D225C0];
  v10[0] = v8;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(v10);
  return v4;
}

uint64_t sub_24EEF82F8()
{

  return swift_deallocObject();
}

uint64_t sub_24EEF8340()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t block_copy_helper_89(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EEF83B8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_24EEF83F8()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3.underlyingAdamID._object = swift_getObjectType();
  v4[0] = v2;
  v4[1] = v1;
  v3.underlyingAdamID._countAndFlagsBits = v4;
  AppStateController.clearWaiting(for:)(v3);
}

__C::CGRect __swiftcall CGRect.withLayoutDirection(using:relativeTo:)(UITraitCollection using, __C::CGRect relativeTo)
{
  sub_24F92BF88();

  sub_24F92C1E8();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

__C::CGRect __swiftcall CGRect.withLayoutDirection(_:relativeTo:)(UIUserInterfaceLayoutDirection _, __C::CGRect relativeTo)
{
  sub_24F92C1E8();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

uint64_t VerticalFlexStackLayout.Metrics.init(fixedChildHeight:minInterChildSpacing:maxInterChildSpacing:layoutMargins:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  *a7 = result;
  *(a7 + 8) = a2 & 1;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  *(a7 + 48) = a8;
  *(a7 + 56) = a9;
  *(a7 + 64) = a10;
  *(a7 + 72) = a11;
  return result;
}

__n128 VerticalFlexStackLayout.Metrics.init(byCopying:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

__n128 sub_24EEF8560@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

double VerticalFlexStackLayout.init(metrics:children:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[3];
  *(a3 + 32) = a1[2];
  *(a3 + 48) = v3;
  *(a3 + 64) = a1[4];
  v4 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 80) = a2;
  v5 = *(a2 + 16);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  result = (v5 - 1);
  *(a3 + 88) = result;
  return result;
}

__n128 VerticalFlexStackLayout.metrics.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

JUMeasurements __swiftcall VerticalFlexStackLayout.measure(toFit:with:)(CGSize toFit, UITraitCollection with)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 40);
  v8 = *(v2 + 80);
  v9 = *(v2 + 88);
  v26 = *(v2 + 32);
  sub_24F92C228();
  v12 = v11;
  if (v4)
  {
    v13 = *(v8 + 16);
    if (v13)
    {
      v14 = v8 + 32;
      v15 = 0.0;
      do
      {
        sub_24E615E00(v14, v27);
        __swift_project_boxed_opaque_existential_1(v27, v27[3]);
        sub_24F922C48();
        v15 = v15 + v16;
        __swift_destroy_boxed_opaque_existential_1(v27);
        v14 += 40;
        --v13;
      }

      while (v13);
    }

    else
    {
      v15 = 0.0;
    }
  }

  else
  {
    v15 = v3 * *(v8 + 16);
  }

  if (v12 >= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v12;
  }

  if (v6)
  {
    v18 = v17;
  }

  else
  {
    v18 = v5 * v9 + v15;
  }

  v10.n128_f64[0] = v26 * v9 + v15;
  if (v15 > v12)
  {
    v19 = v15;
  }

  else
  {
    v19 = v12;
  }

  if (v7)
  {
    v20 = v19;
  }

  else
  {
    v20 = v26 * v9 + v15;
  }

  MEMORY[0x253048030](*&v18, 0, *&v20, 0, v10);
  LOBYTE(v27[0]) = v21 & 1;
  sub_24F9226B8();
  sub_24F92C248();
  v24 = 0.0;
  v25 = v23;
  result.var3 = v24;
  result.var2 = v25;
  result.var1 = v23;
  result.var0 = v22;
  return result;
}

Swift::Void __swiftcall VerticalFlexStackLayout.place(at:with:)(__C::CGRect at, UITraitCollection with)
{
  isa = with.super.isa;
  height = at.size.height;
  width = at.size.width;
  y = at.origin.y;
  x = at.origin.x;
  v7 = sub_24F92CDB8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v13 = *(v2 + 32);
  v14 = *(v2 + 40);
  v15 = *(v2 + 48);
  v16 = *(v2 + 64);
  v17 = *(v2 + 80);
  v18 = *(v2 + 88);
  v19 = *(v17 + 16);
  v69 = v17;
  v68 = v13;
  v67 = v18;
  if (v19)
  {
    v63 = v16;
    v64 = v14;
    v65 = v12;
    v66 = v15;
    v20 = *v2;
    v71 = *(v2 + 8);
    *&v73[0] = MEMORY[0x277D84F90];
    sub_24F4587DC(0, v19, 0);
    v21 = *&v73[0];
    v22 = v17 + 32;
    v23 = *MEMORY[0x277D84680];
    v24 = (v8 + 104);
    v25 = (v8 + 8);
    do
    {
      sub_24E615E00(v22, v74);
      if (v71)
      {
        v70 = v76;
        __swift_project_boxed_opaque_existential_1(v74, v75);
        sub_24F922C48();
        v27 = v26;
        v29 = v28;
        (*v24)(v10, v23, v7);
        v30 = v10;
        v31 = v27;
        v32 = v29;
      }

      else
      {
        v77.origin.x = x;
        v77.origin.y = y;
        v77.size.width = width;
        v77.size.height = height;
        v33 = CGRectGetWidth(v77);
        (*v24)(v10, v23, v7);
        v30 = v10;
        v31 = v33;
        v32 = v20;
      }

      v34 = CGSize.rounded(_:)(v30, v31, v32);
      v36 = v35;
      (*v25)(v10, v7);
      __swift_destroy_boxed_opaque_existential_1(v74);
      *&v73[0] = v21;
      v38 = *(v21 + 16);
      v37 = *(v21 + 24);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        sub_24F4587DC((v37 > 1), v38 + 1, 1);
        v21 = *&v73[0];
      }

      *(v21 + 16) = v39;
      v40 = v21 + 16 * v38;
      *(v40 + 32) = v34;
      *(v40 + 40) = v36;
      v22 += 40;
      --v19;
    }

    while (v19);
    v41 = v69;
    v15 = v66;
    v12 = v65;
    LOBYTE(v14) = v64;
    v16 = v63;
    if (v39 <= 1)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v21 = MEMORY[0x277D84F90];
  v39 = *(MEMORY[0x277D84F90] + 16);
  if (v39)
  {
    v41 = v69;
    if (v39 <= 1)
    {
LABEL_10:
      v42 = 0;
      v43 = 0.0;
LABEL_16:
      v48 = v39 - v42;
      v49 = 16 * v42 + 40;
      do
      {
        v43 = v43 + *(v21 + v49);
        v49 += 16;
        --v48;
      }

      while (v48);
      goto LABEL_18;
    }

LABEL_13:
    v42 = v39 & 0xFFFFFFFFFFFFFFFELL;
    v44 = (v21 + 56);
    v43 = 0.0;
    v45 = v39 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v46 = *(v44 - 2);
      v47 = *v44;
      v44 += 4;
      v43 = v43 + v46 + v47;
      v45 -= 2;
    }

    while (v45);
    if (v39 == v42)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v43 = 0.0;
  v41 = v69;
LABEL_18:
  v50 = v15 + v16;
  v78.origin.x = x;
  v78.origin.y = y;
  v78.size.width = width;
  v78.size.height = height;
  v51 = (CGRectGetHeight(v78) - v43 - v50) / v67;
  v52 = (v51 < v11) & ~v12 | v14;
  if (((v51 < v11) & ~v12) != 0)
  {
    v53 = v11;
  }

  else
  {
    v53 = v51;
  }

  if (v68 < v51)
  {
    v51 = v68;
  }

  if (v52)
  {
    v54 = v53;
  }

  else
  {
    v54 = v51;
  }

  v79.origin.x = x;
  v79.origin.y = y;
  v79.size.width = width;
  v79.size.height = height;
  MinY = CGRectGetMinY(v79);
  v56 = *(v41 + 16);
  if (v56)
  {
    v57 = 0;
    v58 = v15 + MinY;
    v59 = v41 + 32;
    v60 = floor(v54);
    v61 = (v21 + 40);
    while (v57 < *(v41 + 16))
    {
      sub_24E615E00(v59, v73);
      if (v39 == v57)
      {
        __swift_destroy_boxed_opaque_existential_1(v73);
        goto LABEL_34;
      }

      if (v57 >= *(v21 + 16))
      {
        goto LABEL_37;
      }

      ++v57;
      v62 = *v61;
      sub_24E612C80(v73, v74);
      __swift_project_boxed_opaque_existential_1(v74, v75);
      v80.origin.x = x;
      v80.origin.y = y;
      v80.size.width = width;
      v80.size.height = height;
      CGRectGetMinX(v80);
      v41 = v69;
      sub_24F922C38();
      __swift_destroy_boxed_opaque_existential_1(v74);
      v58 = v60 + v58 + v62;
      v59 += 40;
      v61 += 2;
      if (v56 == v57)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {
LABEL_34:
  }
}

uint64_t static VerticalFlexStackLayout.estimatedChildFitCount(in:metrics:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_24F92C228();
  if (v2)
  {
    return 0;
  }

  v6 = 0.0;
  if (!v4)
  {
    v6 = v3;
  }

  if (v1 >= v5)
  {
    return 0;
  }

  v7 = 0;
  v8 = v1;
  while (1)
  {
    result = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v8 = v1 + v6 + v8;
    ++v7;
    if (v8 >= v5)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

__n128 sub_24EEF8D64@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24EEF8D80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EEF8DC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ImpressionMetrics.withParentId(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_24F929598();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v24 - v15;
  if (a2)
  {
    v24[2] = a1;
    sub_24F9295B8();
    v17 = sub_24F929588();
    v24[0] = v18;
    v24[1] = v17;
    v25 = a3;
    v19 = *(v8 + 8);
    v19(v13, v7);
    sub_24F9295B8();
    sub_24F929558();
    v19(v10, v7);

    sub_24F929568();
    v20 = sub_24F929608();
    (*(*(v20 - 8) + 16))(v25, v3, v20);
    (*(v8 + 16))(v13, v16, v7);
    sub_24F9295C8();
    return (v19)(v16, v7);
  }

  else
  {
    v22 = sub_24F929608();
    v23 = *(*(v22 - 8) + 16);

    return v23(a3, v3, v22);
  }
}

uint64_t ImpressionMetrics.ID.withParentId(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_24F929588();
    sub_24F929558();

    return sub_24F929568();
  }

  else
  {
    v5 = sub_24F929598();
    v6 = *(*(v5 - 8) + 16);

    return v6(a2, v2, v5);
  }
}

uint64_t sub_24EEF91A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F9289E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24EEF9278(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F9289E8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for CardSmallGameIcon()
{
  result = qword_27F233630;
  if (!qword_27F233630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EEF9380()
{
  result = sub_24F9289E8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EEF9420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v40 = a2;
  v41 = sub_24F924B38();
  v3 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v5 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = sub_24F921AF8();
  v6 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_24F9289E8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = v2;
  sub_24F9289C8();
  v36 = *MEMORY[0x277CE0118];
  v13 = *(v3 + 104);
  v14 = v41;
  v13(v5);
  sub_24F9219A8();
  (*(v3 + 8))(v5, v14);
  sub_24EB98B30(&qword_27F214C28, MEMORY[0x277D21C48]);
  sub_24EB98B30(&qword_27F214C30, MEMORY[0x277D7EBE8]);
  v15 = v40;
  v16 = v37;
  sub_24F925ED8();
  (*(v6 + 8))(v8, v16);
  (*(v10 + 8))(v12, v9);
  v17 = sub_24F927618();
  v19 = v18;
  v20 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C20) + 36));
  v21 = sub_24F924258();
  (v13)(v20 + *(v21 + 20), v36, v41);
  __asm { FMOV            V0.2D, #8.0 }

  *v20 = _Q0;
  v27 = (v38 + *(v39 + 24));
  v28 = *v27;
  v29 = v27[1];
  v30 = v27[2];
  v31 = v27[3];
  v32 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1C8) + 36));
  *v32 = v31;
  v32[1] = v30;
  v32[2] = v28;
  v32[3] = v29;
  v33 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C40) + 36));
  *v33 = v17;
  v33[1] = v19;
}

uint64_t sub_24EEF984C(unsigned __int8 *a1)
{
  v2 = sub_24F928AE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v86 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v84 - v6;
  v88 = sub_24F91F648();
  v8 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v84 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v84 - v15;
  MEMORY[0x28223BE20](v17);
  v87 = &v84 - v18;
  sub_24F91F638();
  v19 = *a1;
  v20 = objc_opt_self();
  v21 = [v20 standardUserDefaults];
  v84 = v3;
  v85 = v2;
  if (!v19)
  {
    v46 = sub_24F005EC8();
    v23 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (!v23)
    {
      sub_24F007358(v47);

      if (qword_27F211430 != -1)
      {
        swift_once();
      }

      v48 = sub_24F9220D8();
      __swift_project_value_buffer(v48, qword_27F39E8E0);
      v49 = sub_24F9220B8();
      v50 = sub_24F92BD98();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 134217984;
        v52 = [v20 standardUserDefaults];
        v53 = sub_24F005EC8();

        *(v51 + 4) = v53;
        _os_log_impl(&dword_24E5DD000, v49, v50, "Increased the Activity Sharing prompt present count to %ld", v51, 0xCu);
        MEMORY[0x2530542D0](v51, -1, -1);
      }

      v54 = [v20 standardUserDefaults];
      v55 = *(v8 + 16);
      v56 = v87;
      v34 = v88;
      v55(v7, v87, v88);
      (*(v8 + 56))(v7, 0, 1, v34);
      sub_24F007458(v7);

      v55(v16, v56, v34);
      v35 = sub_24F9220B8();
      v57 = sub_24F92BD98();
      if (!os_log_type_enabled(v35, v57))
      {

        v42 = *(v8 + 8);
        v42(v16, v34);
        goto LABEL_28;
      }

      v37 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v89 = v58;
      *v37 = 136315138;
      sub_24EEFA310(&qword_27F229EE8, MEMORY[0x277CC9578]);
      v59 = sub_24F92CD88();
      v61 = v60;
      v42 = *(v8 + 8);
      v42(v16, v88);
      v62 = sub_24E7620D4(v59, v61, &v89);

      *(v37 + 4) = v62;
      _os_log_impl(&dword_24E5DD000, v35, v57, "The Activity Sharing prompt was last presented on %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      v63 = v58;
      goto LABEL_24;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v19 == 1)
  {
    v22 = sub_24F0060A8();
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (!v23)
    {
      sub_24F007740(v24);

      if (qword_27F211430 == -1)
      {
LABEL_5:
        v25 = sub_24F9220D8();
        __swift_project_value_buffer(v25, qword_27F39E8E0);
        v26 = sub_24F9220B8();
        v27 = sub_24F92BD98();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 134217984;
          v29 = [v20 standardUserDefaults];
          v30 = sub_24F0060A8();

          *(v28 + 4) = v30;
          _os_log_impl(&dword_24E5DD000, v26, v27, "Increased the Contacts Integration prompt present count to %ld", v28, 0xCu);
          MEMORY[0x2530542D0](v28, -1, -1);
        }

        v31 = [v20 standardUserDefaults];
        v32 = *(v8 + 16);
        v33 = v87;
        v34 = v88;
        v32(v7, v87, v88);
        (*(v8 + 56))(v7, 0, 1, v34);
        sub_24F007840(v7);

        v32(v13, v33, v34);
        v35 = sub_24F9220B8();
        v36 = sub_24F92BD98();
        if (!os_log_type_enabled(v35, v36))
        {

          v42 = *(v8 + 8);
          v42(v13, v34);
          goto LABEL_28;
        }

        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v89 = v38;
        *v37 = 136315138;
        sub_24EEFA310(&qword_27F229EE8, MEMORY[0x277CC9578]);
        v39 = sub_24F92CD88();
        v41 = v40;
        v42 = *(v8 + 8);
        v42(v13, v88);
        v43 = sub_24E7620D4(v39, v41, &v89);

        *(v37 + 4) = v43;
        v44 = "The Contacts Integration prompt was last presented on %s";
        v45 = v36;
        goto LABEL_23;
      }

LABEL_32:
      swift_once();
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_30;
  }

  v64 = sub_24F0066F0();
  v23 = __OFADD__(v64, 1);
  v65 = v64 + 1;
  if (v23)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  sub_24F007B28(v65);

  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v66 = sub_24F9220D8();
  __swift_project_value_buffer(v66, qword_27F39E8E0);
  v67 = sub_24F9220B8();
  v68 = sub_24F92BD98();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 134217984;
    v70 = [v20 standardUserDefaults];
    v71 = sub_24F0066F0();

    *(v69 + 4) = v71;
    _os_log_impl(&dword_24E5DD000, v67, v68, "Increased the Challenges Welcome prompt present count to %ld", v69, 0xCu);
    MEMORY[0x2530542D0](v69, -1, -1);
  }

  v72 = [v20 standardUserDefaults];
  v73 = *(v8 + 16);
  v74 = v87;
  v34 = v88;
  v73(v7, v87, v88);
  (*(v8 + 56))(v7, 0, 1, v34);
  sub_24F007C28(v7);

  v73(v10, v74, v34);
  v35 = sub_24F9220B8();
  v75 = sub_24F92BD98();
  if (!os_log_type_enabled(v35, v75))
  {

    v42 = *(v8 + 8);
    v42(v10, v34);
    goto LABEL_28;
  }

  v37 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v89 = v38;
  *v37 = 136315138;
  sub_24EEFA310(&qword_27F229EE8, MEMORY[0x277CC9578]);
  v76 = sub_24F92CD88();
  v78 = v77;
  v42 = *(v8 + 8);
  v42(v10, v88);
  v79 = sub_24E7620D4(v76, v78, &v89);

  *(v37 + 4) = v79;
  v44 = "The Challenges Welcome prompt was last presented on %s";
  v45 = v75;
LABEL_23:
  _os_log_impl(&dword_24E5DD000, v35, v45, v44, v37, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v38);
  v63 = v38;
LABEL_24:
  MEMORY[0x2530542D0](v63, -1, -1);
  v80 = v37;
  v34 = v88;
  MEMORY[0x2530542D0](v80, -1, -1);

LABEL_28:
  v81 = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  (*(v84 + 104))(v81, *MEMORY[0x277D21CA8], v85);
  v82 = sub_24F92A988();
  v42(v87, v34);
  return v82;
}

uint64_t sub_24EEFA310(unint64_t *a1, void (*a2)(uint64_t))
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

GameStoreKit::ChartOrCategoryBrickStyle_optional __swiftcall ChartOrCategoryBrickStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24EEFA3E8(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xE900000000000033;
  if (*a1 == 1)
  {
    v3 = 0xE900000000000032;
  }

  else
  {
    v3 = 0xE900000000000033;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE900000000000031;
  }

  if (*a2 == 1)
  {
    v2 = 0xE900000000000032;
  }

  if (*a2)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xE900000000000031;
  }

  if (v4 == v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_24F92CE08();
  }

  return v6 & 1;
}

unint64_t sub_24EEFA490()
{
  result = qword_27F2336C0;
  if (!qword_27F2336C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2336C0);
  }

  return result;
}

uint64_t sub_24EEFA4E4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EEFA560()
{
  sub_24F92B218();
}

uint64_t sub_24EEFA5C8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EEFA64C(void *a1@<X8>)
{
  v2 = 0xE900000000000031;
  v3 = 0xE900000000000033;
  if (*v1 == 1)
  {
    v3 = 0xE900000000000032;
  }

  if (*v1)
  {
    v2 = v3;
  }

  *a1 = 0x5F797469736E6564;
  a1[1] = v2;
}

uint64_t sub_24EEFA694(uint64_t a1)
{
  v2 = sub_24F91EB58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_24F91EB08();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24EEFA78C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();
}

uint64_t sub_24EEFA804()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

uint64_t sub_24EEFA878()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

uint64_t sub_24EEFA8EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();
}

void sub_24EEFA964(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_24F923E98();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - v11;
  if (*(v2 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_placement) == 1)
  {
    v13 = 2;
LABEL_12:
    *a2 = v13;
    return;
  }

  v14 = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v23 > 2u)
  {
LABEL_11:
    v13 = 4;
    goto LABEL_12;
  }

  v15 = v20;
  if (!v23)
  {

    if (v15 == 4)
    {
      *a2 = 4;
    }

    else
    {
      (*(v6 + 16))(v12, a1, v14);
      v17 = (*(v6 + 88))(v12, v14);
      if (v17 == *MEMORY[0x277CDF988])
      {
        *a2 = BYTE1(v15);
      }

      else if (v17 == *MEMORY[0x277CDF998])
      {
        *a2 = BYTE2(v15);
      }

      else if (v17 == *MEMORY[0x277CDF9A8])
      {
        *a2 = BYTE3(v15);
      }

      else if (v17 == *MEMORY[0x277CDF9B8])
      {
        *a2 = BYTE4(v15);
      }

      else if (v17 == *MEMORY[0x277CDF9D0])
      {
        *a2 = BYTE5(v15);
      }

      else
      {
        (*(v6 + 8))(v12, v14);
        *a2 = v15;
      }
    }

    return;
  }

  v16 = v21 | (v22 << 32);
  if (v23 != 1)
  {
    sub_24EEFE350(v19[0], v19[1], v19[2], v19[3], v20, v21 | (v22 << 32), 2);
    goto LABEL_11;
  }

  if (v16 == 4)
  {
    *a2 = 4;
  }

  else
  {
    (*(v6 + 16))(v8, a1, v14);
    v18 = (*(v6 + 88))(v8, v14);
    if (v18 == *MEMORY[0x277CDF988])
    {
      *a2 = BYTE1(v16);
    }

    else
    {
      if (v18 == *MEMORY[0x277CDF998])
      {
        v16 >>= 16;
      }

      else if (v18 == *MEMORY[0x277CDF9A8])
      {
        v16 = (v16 >> 24) & 0xFFFFFF;
      }

      else if (v18 == *MEMORY[0x277CDF9B8])
      {
        LOBYTE(v16) = BYTE4(v16);
      }

      else if (v18 == *MEMORY[0x277CDF9D0])
      {
        LOBYTE(v16) = BYTE5(v16);
      }

      else
      {
        (*(v6 + 8))(v8, v14);
      }

      *a2 = v16;
    }
  }
}

uint64_t sub_24EEFAD30(uint64_t a1)
{
  v2 = sub_24F923E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v21 > 2u)
  {
    if (v21 == 3)
    {
      LOBYTE(v6) = v14;
    }

    else
    {
      LOBYTE(v6) = v15;
    }

    if (v21 == 3)
    {
      LOBYTE(v8) = BYTE1(v14);
    }

    else
    {
      LOBYTE(v8) = BYTE1(v15);
    }

    if (v21 == 3)
    {
      LOBYTE(v9) = BYTE2(v14);
    }

    else
    {
      LOBYTE(v9) = BYTE2(v15);
    }

    if (v21 == 3)
    {
      LOBYTE(v10) = BYTE3(v14);
    }

    else
    {
      LOBYTE(v10) = BYTE3(v15);
    }

    if (v21 == 3)
    {
      v11 = BYTE4(v14);
    }

    else
    {
      v11 = BYTE4(v15);
    }

    if (v21 == 3)
    {
      v12 = BYTE5(v14);
    }

    else
    {
      v12 = BYTE5(v15);
    }
  }

  else
  {
    v6 = v19 | (v20 << 32);
    if (v21 < 2u)
    {
      sub_24EEFE350(v14, v15, v16, v17, v18, v19 | (v20 << 32), v21);
      return sub_24F927618();
    }

    v8 = v6 >> 8;
    v9 = v6 >> 16;
    v10 = (v6 >> 24) & 0xFFFFFF;
    v11 = BYTE4(v6);
    v12 = BYTE5(v6);
  }

  (*(v3 + 16))(v5, a1, v2);
  v13 = (*(v3 + 88))(v5, v2);
  if (v13 != *MEMORY[0x277CDF988])
  {
    LOBYTE(v8) = v9;
    if (v13 != *MEMORY[0x277CDF998])
    {
      LOBYTE(v8) = v10;
      if (v13 != *MEMORY[0x277CDF9A8])
      {
        LOBYTE(v8) = v11;
        if (v13 != *MEMORY[0x277CDF9B8])
        {
          LOBYTE(v8) = v12;
          if (v13 != *MEMORY[0x277CDF9D0])
          {
            (*(v3 + 8))(v5, v2);
            LOBYTE(v8) = v6;
          }
        }
      }
    }
  }

  if (!v8)
  {
    return sub_24F927618();
  }

  if (v8 == 1)
  {
    return sub_24F927628();
  }

  return sub_24F927638();
}

uint64_t sub_24EEFAFD4(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12[-v5];
  swift_getKeyPath();
  swift_getKeyPath();
  v12[15] = a1 ^ 1;

  sub_24F9230A8();
  v7 = sub_24F92B858();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_24F92B7F8();

  v8 = sub_24F92B7E8();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v2;
  sub_24EA998B8(0, 0, v6, &unk_24F9AEED0, v9);
}

uint64_t sub_24EEFB14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 96) = a4;
  sub_24F92B7F8();
  *(v4 + 104) = sub_24F92B7E8();
  v6 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EEFB1E4, v6, v5);
}

uint64_t sub_24EEFB1E4()
{
  v1 = v0[12];

  v2 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_presenter;
  swift_beginAccess();
  sub_24EEFE158(v1 + v2, (v0 + 2));
  if (v0[5])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233740);
    type metadata accessor for AppOfferButtonPresenter();
    if (swift_dynamicCast())
    {
      sub_24F0E3A20((v0 + 2));
      v3 = v0[2];
      if (v3)
      {
        v4 = &qword_27F2129B0;
        v5 = (v0 + 3);
      }

      else
      {
        v4 = &unk_27F233748;
        v5 = (v0 + 2);
      }

      sub_24E601704(v5, v4);
      swift_getKeyPath();
      swift_getKeyPath();
      v0[2] = v3;

      sub_24F9230A8();

      goto LABEL_12;
    }
  }

  else
  {
    sub_24E601704((v0 + 2), &qword_27F233738);
  }

  sub_24EEFE158(v1 + v2, (v0 + 2));
  if (!v0[5])
  {
    sub_24E601704((v0 + 2), &qword_27F233738);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233740);
  type metadata accessor for ArcadeSubscriptionOfferButtonPresenter();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = ArcadeSubscriptionOfferButtonPresenter.actionForCurrentState.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v6;

  sub_24F9230A8();

LABEL_12:

LABEL_13:
  v7 = v0[1];

  return v7();
}

uint64_t sub_24EEFB448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 16);
  v8 = *(a6 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24F9230A8();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24E9534EC(v8, v6);
  return sub_24F9230A8();
}

uint64_t sub_24EEFB57C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(a3 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24F9230A8();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24E9534EC(v3, v4);
  return sub_24F9230A8();
}

uint64_t sub_24EEFB67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a1 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v21 = a7;
      v22 = WORD2(a7);
      v16 = a8;
      v17 = BYTE2(a8);
      v18 = BYTE3(a8);
      v19 = BYTE4(a8);
      v20 = BYTE5(a8);
      sub_24EEFB79C((v13 & 0xC0) == 128, a4, a5, a6, &v21, &v16, v15);
    }
  }

  return result;
}

uint64_t sub_24EEFB79C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, unsigned __int8 *a6, uint64_t a7)
{
  v117 = a7;
  v109 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233758);
  v106 = *(v12 - 8);
  v107 = v12;
  MEMORY[0x28223BE20](v12);
  v105 = &v100 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v100 - v16;
  v18 = *(a5 + 2);
  v19 = *a5;
  LODWORD(v16) = a6[1];
  v110 = *a6;
  v111 = v16;
  LODWORD(v16) = a6[3];
  v112 = a6[2];
  v113 = v16;
  LODWORD(v16) = a6[5];
  v114 = a6[4];
  LODWORD(v115) = v16;
  v116 = a2;
  v20 = *(a2 + 16);
  type metadata accessor for OfferStateAction();
  v118 = a3;
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = *(v21 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_subscribePageAction);
  }

  else
  {
    v22 = 0;
  }

  LOBYTE(v135) = v20;
  if (sub_24EEFC5C8(&v135, a1 & 1, v22 != 0))
  {
    v108 = v22;
    v23 = v19 | (v18 << 32);
    if (v20 <= 1)
    {
      if (v20)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        *&v135 = v118;

        sub_24F9230A8();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v135) = 1;

        sub_24F9230A8();
      }

LABEL_7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0);
      sub_24F928F28();
      v109 = v133;
      v104 = v134;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB80);
      sub_24F928F28();
      v24 = type metadata accessor for Restrictions();
      sub_24F928F28();
      type metadata accessor for ASKBagContract();
      sub_24F928F28();
      if (qword_27F210B10 != -1)
      {
        swift_once();
      }

      sub_24F92A3B8();
      sub_24F92A408();

      (*(v15 + 8))(v17, v14);
      v25 = v135;
      v26 = v129[6];
      v27 = type metadata accessor for AppOfferButtonPresenter();
      v28 = swift_allocObject();
      v129[3] = v24;
      v129[4] = &protocol witness table for Restrictions;
      v129[0] = v26;
      *(v28 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v28 + 158) = 0;
      v29 = objc_opt_self();

      v30 = [v29 defaultCenter];
      *(v28 + 168) = 0u;
      v101 = v28 + 168;
      *(v28 + 184) = 0u;
      *(v28 + 280) = 0u;
      *(v28 + 296) = 0u;
      *(v28 + 312) = 0u;
      *(v28 + 328) = 0u;
      v31 = v137;
      *(v28 + 249) = v138;
      *(v28 + 233) = v31;
      v33 = v135;
      v32 = v136;
      *(v28 + 217) = v136;
      *(v28 + 160) = v30;
      *(v28 + 344) = 0;
      *(v28 + 352) = -256;
      *(v28 + 354) = 0;
      *(v28 + 200) = 0;
      *(v28 + 265) = v139;
      *(v28 + 201) = v33;
      *(v28 + 273) = 3;
      v34 = v116;
      *(v28 + 32) = v118;
      *(v28 + 40) = v34;
      v36 = v110;
      v35 = v111;
      *(v28 + 150) = v110;
      *(v28 + 151) = v35;
      v38 = v112;
      v37 = v113;
      *(v28 + 152) = v112;
      *(v28 + 153) = v37;
      v40 = v114;
      v39 = v115;
      *(v28 + 154) = v114;
      *(v28 + 155) = v39;
      v102 = v26;
      v103 = v27;
      if (v23 == 3)
      {
        v128[0] = v36;
        v128[1] = v35;
        v128[2] = v38;
        v128[3] = v37;
        v128[4] = v40;
        v128[5] = v39;
        sub_24E9536D8(v128, &v120, v32);
        LOBYTE(v23) = v120;
        v41.i32[0] = *(&v120 + 1);
        v42 = vmovl_u8(v41).u64[0];
        v43 = BYTE5(v120);
      }

      else
      {
        v54.i64[0] = 0xFFFFFFFFFFFFLL;
        v54.i64[1] = 0xFFFFFFFFFFFFLL;
        v55 = vandq_s8(vdupq_n_s64(v23), v54);
        v42 = vmovn_s32(vuzp1q_s32(vshlq_u64(v55, xmmword_24F99A2D0), vshlq_u64(v55, xmmword_24F99A2C0)));
        v43 = BYTE5(v23);
      }

      v56 = v104;
      *(v28 + 144) = v23;
      *(v28 + 145) = vuzp1_s8(v42, v42).u32[0];
      *(v28 + 149) = v43;
      *(v28 + 156) = 0;
      sub_24E615E00(v130, v28 + 48);
      sub_24E615E00(v129, v28 + 88);
      *(v28 + 159) = v25;
      *(v28 + 157) = 0;
      ObjectType = swift_getObjectType();
      v58 = *(v34 + 32);
      v120 = *(v34 + 24);
      v121 = v58;
      v59 = *(v56 + 56);
      swift_retain_n();

      v115 = ObjectType;
      v60 = v59(&v120, ObjectType, v56);
      v62 = v61;

      *(v28 + 128) = v60;
      *(v28 + 136) = v62;
      v63 = swift_getObjectType();
      v64 = swift_allocObject();
      swift_weakInit();
      v65 = *(v62 + 72);

      v65(v28, sub_24EEFE270, v64, v63, v62);
      v66 = v116;

      v67 = *(v66 + 64);
      if (!v67)
      {
        goto LABEL_34;
      }

      v120 = *(v66 + 56);
      v121 = v67;
      v59(&v120, v115, v104);
      v69 = v68;
      v70 = swift_getObjectType();
      (*(v69 + 16))(&v120, v70, v69);
      if (v126 >> 60)
      {
        if (v126 >> 60 == 8)
        {
          v71 = v125 | v127;
          v72 = v123 | v122 | v121;
          if (v126 == 0x8000000000000000 && !(v71 | v120 | v124 | v72))
          {
            LOBYTE(v73) = 0;
LABEL_33:
            *(v28 + 354) = v73;
            v74 = swift_allocObject();
            swift_weakInit();
            v75 = *(v69 + 72);

            v75(v28, sub_24EEFE348, v74, v70, v69);
            swift_unknownObjectRelease();

LABEL_34:
            v76 = *(v28 + 128);
            if (v76)
            {
              v77 = *(v28 + 136);
              v78 = swift_unknownObjectRetain();
              sub_24F0E06F0(v78, v77, 2);
              v79 = v131;
              v80 = v132;
              __swift_project_boxed_opaque_existential_1(v130, v131);
              (*(v80 + 16))(v79, v80);
              v81 = swift_allocObject();
              swift_weakInit();
              v82 = swift_allocObject();
              v82[2] = v81;
              v82[3] = v76;
              v82[4] = v77;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE08);
              sub_24EEFE2E4();
              swift_unknownObjectRetain();
              sub_24F9288B8();
              v83 = v105;
              sub_24F9288D8();
              swift_unknownObjectRelease();

              __swift_destroy_boxed_opaque_existential_1(&v120);
              (*(v106 + 8))(v83, v107);
            }

            v84 = v102;
            if ((*(v66 + 136) & 1) == 0)
            {
              v85 = *(v28 + 160);

              v86 = v85;
              v87 = sub_24F92B098();
              [v86 addObserver:v28 selector:sel_isEnabledDidChange_ name:v87 object:v84];
            }

            v88 = *(v28 + 160);
            v89 = *MEMORY[0x277CEC2F0];
            v90 = objc_opt_self();
            v91 = v88;
            v92 = [v90 mainQueue];
            v93 = swift_allocObject();
            swift_weakInit();
            v124 = sub_24EEFE278;
            v125 = v93;
            v120 = MEMORY[0x277D85DD0];
            v121 = 1107296256;
            v122 = sub_24EEFA694;
            v123 = &block_descriptor_90;
            v94 = _Block_copy(&v120);

            v95 = [v91 addObserverForName:v89 object:0 queue:v92 usingBlock:v94];
            _Block_release(v94);

            v123 = swift_getObjectType();

            swift_unknownObjectRelease();
            v120 = v95;
            __swift_destroy_boxed_opaque_existential_1(v129);
            v96 = v101;
            swift_beginAccess();
            sub_24E61DA68(&v120, v96, &qword_27F2129B0);
            swift_endAccess();
            __swift_destroy_boxed_opaque_existential_1(v130);
            v53 = &protocol witness table for AppOfferButtonPresenter;
            v45 = v103;
            v141 = v103;
            v142 = &protocol witness table for AppOfferButtonPresenter;
            v140[0] = v28;
            swift_getKeyPath();
            swift_getKeyPath();
            v120 = v118;

            v52 = v119;

            sub_24F9230A8();
            v49 = v117;
            goto LABEL_39;
          }

          if (v126 == 0x8000000000000000 && v120 == 4)
          {
            v73 = v71 | v124 | v72;
            if (!v73)
            {
              goto LABEL_33;
            }
          }
        }

        sub_24E88D2AC(&v120);
        LOBYTE(v73) = 1;
        goto LABEL_33;
      }

      LOBYTE(v73) = v120 != 1;
      goto LABEL_33;
    }

    if (v20 == 2)
    {
      LOBYTE(v135) = v110;
      BYTE1(v135) = v111;
      BYTE2(v135) = v112;
      BYTE3(v135) = v113;
      BYTE4(v135) = v114;
      BYTE5(v135) = v115;
      WORD2(v120) = WORD2(v23);
      LODWORD(v120) = v23;
      v45 = type metadata accessor for ArcadeSubscriptionOfferButtonPresenter();
      swift_allocObject();
      v46 = v109;

      v47 = v116;

      v48 = v118;

      v49 = v117;
    }

    else
    {
      if ((a1 & 1) != 0 || !v108)
      {
        goto LABEL_7;
      }

      LOBYTE(v135) = v110;
      BYTE1(v135) = v111;
      BYTE2(v135) = v112;
      BYTE3(v135) = v113;
      BYTE4(v135) = v114;
      BYTE5(v135) = v115;
      WORD2(v120) = WORD2(v23);
      LODWORD(v120) = v23;
      v45 = type metadata accessor for ArcadeSubscriptionOfferButtonPresenter();
      swift_allocObject();
      v48 = v108;

      v47 = v116;

      v49 = v117;

      v46 = v109;
    }

    v50 = sub_24F26A038(v47, v48, v46, &v135, v49, &v120);

    v51 = ArcadeSubscriptionOfferButtonPresenter.actionForCurrentState.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    *&v135 = v51;
    v52 = v119;

    sub_24F9230A8();
    v53 = &protocol witness table for ArcadeSubscriptionOfferButtonPresenter;
    v141 = v45;
    v142 = &protocol witness table for ArcadeSubscriptionOfferButtonPresenter;
    v140[0] = v50;
LABEL_39:
    __swift_mutable_project_boxed_opaque_existential_1(v140, v45);
    v97 = v53[2];
    v98 = swift_unknownObjectRetain();
    v97(v98, &off_2861FC460);

    sub_24E615E00(v140, &v135);
    v99 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_presenter;
    swift_beginAccess();
    sub_24E61DA68(&v135, v52 + v99, &qword_27F233738);
    swift_endAccess();
    *(v52 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_objectGraph) = v49;

    return __swift_destroy_boxed_opaque_existential_1(v140);
  }
}

BOOL sub_24EEFC5C8(unsigned __int8 *a1, char a2, char a3)
{
  v6 = *a1;
  v7 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_presenter;
  swift_beginAccess();
  sub_24EEFE158(v3 + v7, &v12);
  if (!v13)
  {
    sub_24E601704(&v12, &qword_27F233738);
    return 1;
  }

  sub_24E612C80(&v12, v14);
  if (v6 > 1)
  {
    if (v6 == 2 || (a2 & 1) == 0 && (a3 & 1) != 0)
    {
      v8 = type metadata accessor for ArcadeSubscriptionOfferButtonPresenter();
      goto LABEL_10;
    }

LABEL_4:
    v8 = type metadata accessor for AppOfferButtonPresenter();
LABEL_10:
    v10 = v8;
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    DynamicType = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(v14);
    return DynamicType != v10;
  }

  if (!v6)
  {
    goto LABEL_4;
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return 0;
}

uint64_t sub_24EEFC6D8()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233768);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__disabled;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__action;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D60);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__theme;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D58);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_presenter, &qword_27F233738);

  return v0;
}

uint64_t sub_24EEFC890()
{
  sub_24EEFC6D8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OfferButtonViewModel()
{
  result = qword_27F233708;
  if (!qword_27F233708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EEFC93C()
{
  sub_24EEFCB00(319, &qword_27F233718);
  if (v0 <= 0x3F)
  {
    sub_24EEFCB00(319, &qword_27F21F448);
    if (v1 <= 0x3F)
    {
      sub_24EEFCB4C(319, &qword_27F233720, &qword_27F216DA8);
      if (v2 <= 0x3F)
      {
        sub_24EEFCB4C(319, &qword_27F233728, &qword_27F216DB0);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_24EEFCB00(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_24F9230B8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_24EEFCB4C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_24F9230B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy47_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24EEFCBD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 47))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 46);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24EEFCC18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 46) = 0;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 47) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 47) = 0;
    }

    if (a2)
    {
      *(result + 46) = -a2;
    }
  }

  return result;
}

unint64_t sub_24EEFCC8C()
{
  result = qword_27F233730;
  if (!qword_27F233730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233730);
  }

  return result;
}

uint64_t sub_24EEFCD34()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_accessibilityOfferButtonString);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_24EEFCD8C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_accessibilityOfferButtonString);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_24EEFCE4C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

double sub_24EEFCEDC@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_24EEFCF64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24E969B2C(v1, v2, v3);

  return sub_24F9230A8();
}

BOOL sub_24EEFCFF8(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 44);
  v8 = *(a1 + 40);
  v9 = v8 | (v7 << 32);
  v10 = *(a1 + 46);
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = *(a2 + 44);
  v17 = *(a2 + 40);
  v18 = v17 | (v16 << 32);
  v19 = *(a2 + 46);
  v77[0] = *a1;
  v77[1] = v2;
  v77[2] = v5;
  v77[3] = v4;
  v77[4] = v6;
  v79 = v7;
  v78 = v8;
  v80 = v10;
  v81 = v11;
  v82 = v12;
  v83 = v13;
  v84 = v14;
  v85 = v15;
  v87 = v16;
  v86 = v17;
  v88 = v19;
  if (v10 <= 1)
  {
    if (!v10)
    {
      if (v19)
      {
        v21 = v17 | (v16 << 32);
LABEL_33:

        v18 = v21;
        goto LABEL_34;
      }

      if (v3 != v11 || v2 != v12)
      {
        v69 = v6;
        v75 = v8 | (v7 << 32);
        v40 = v17 | (v16 << 32);
        v41 = sub_24F92CE08();
        v18 = v40;
        v6 = v69;
        v9 = v75;
        if ((v41 & 1) == 0)
        {
          v55 = v11;
          v56 = v12;
          v57 = v13;
          v58 = v14;
          goto LABEL_58;
        }
      }

      if (v4)
      {
        if (v14)
        {
          v70 = v6;
          v76 = v9;
          if (v5 == v13 && v4 == v14)
          {
            sub_24EEFE1C8(v11, v12, v5, v4, v15, v18, 0);
            v42 = v70;
            sub_24EEFE1C8(v3, v2, v5, v4, v70, v76, 0);
            sub_24E601704(v77, &qword_27F233750);
          }

          else
          {
            v62 = v18;
            v65 = sub_24F92CE08();
            sub_24EEFE1C8(v11, v12, v13, v14, v15, v62, 0);
            v42 = v70;
            sub_24EEFE1C8(v3, v2, v5, v4, v70, v76, 0);
            sub_24E601704(v77, &qword_27F233750);
            if ((v65 & 1) == 0)
            {
              return 0;
            }
          }

LABEL_60:
          v63 = v15;
          if (v42 != 4)
          {
            return v15 != 4 && ((v15 ^ v42) & 0xFFFFFFFFFFFFLL) == 0;
          }

          return v63 == 4;
        }

        v55 = v11;
        v56 = v12;
        v57 = v13;
        v58 = 0;
LABEL_58:
        v60 = v6;
        v61 = v9;
        sub_24EEFE1C8(v55, v56, v57, v58, v15, v18, 0);
        v34 = v3;
        v35 = v2;
        v36 = v5;
        v37 = v4;
        v38 = v60;
        v18 = v61;
        v39 = 0;
        goto LABEL_35;
      }

      v52 = v11;
      v53 = v13;
      v42 = v6;
      v54 = v9;
      sub_24EEFE1C8(v52, v12, v53, v14, v15, v18, 0);
      sub_24EEFE1C8(v3, v2, v5, 0, v42, v54, 0);

      sub_24E601704(v77, &qword_27F233750);
      if (!v14)
      {
        goto LABEL_60;
      }

LABEL_53:

      return 0;
    }

    if (v19 != 1)
    {
      v21 = v17 | (v16 << 32);
      goto LABEL_33;
    }

    if (v3 == v11 && v2 == v12 || (v68 = v6, v73 = v8 | (v7 << 32), v27 = v17 | (v16 << 32), v28 = sub_24F92CE08(), v18 = v27, v6 = v68, v9 = v73, (v28)) && *&v5 == *&v13)
    {
      if (!v6)
      {
        v59 = v13;
        v33 = v9;
        v31 = v18;
        sub_24EEFE1C8(v11, v12, v59, v14, v15, v18, 1);
        sub_24EEFE1C8(v3, v2, v5, v4, 0, v33, 1);

        sub_24E601704(v77, &qword_27F233750);
        if (*&v15 != 0.0)
        {
          goto LABEL_53;
        }

LABEL_66:
        v63 = v31;
        if (v33 != 4)
        {
          return v31 != 4 && (v31 & 0xFFFFFFFFFFFFLL) == (v33 & 0xFFFFFFFFFFFFLL);
        }

        return v63 == 4;
      }

      if (*&v15 != 0.0)
      {
        v74 = v9;
        if (v4 == v14 && v6 == v15)
        {
          v29 = v13;
          v30 = v6;
          v31 = v18;
          sub_24EEFE1C8(v11, v12, v29, v4, v6, v18, 1);
          v32 = v30;
          v33 = v74;
          sub_24EEFE1C8(v3, v2, v5, v4, v32, v74, 1);
          sub_24E601704(v77, &qword_27F233750);
        }

        else
        {
          v71 = v6;
          v31 = v18;
          v66 = sub_24F92CE08();
          sub_24EEFE1C8(v11, v12, v13, v14, v15, v31, 1);
          v33 = v74;
          sub_24EEFE1C8(v3, v2, v5, v4, v71, v74, 1);
          sub_24E601704(v77, &qword_27F233750);
          if ((v66 & 1) == 0)
          {
            return 0;
          }
        }

        goto LABEL_66;
      }

      v43 = v11;
      v44 = v12;
      v45 = v13;
      v46 = v14;
      v47 = v6;
      v48 = 0;
    }

    else
    {
      v43 = v11;
      v44 = v12;
      v45 = v13;
      v46 = v14;
      v47 = v6;
      v48 = v15;
    }

    v49 = v9;
    sub_24EEFE1C8(v43, v44, v45, v46, v48, v18, 1);
    v34 = v3;
    v35 = v2;
    v36 = v5;
    v37 = v4;
    v38 = v47;
    v18 = v49;
    v39 = 1;
    goto LABEL_35;
  }

  if (v10 == 2)
  {
    if (v19 == 2)
    {
      v67 = v6;
      v72 = v8 | (v7 << 32);
      if (v3 != v11 || v2 != v12)
      {
        v22 = v17 | (v16 << 32);
        v23 = sub_24F92CE08();
        v18 = v22;
        v6 = v67;
        if ((v23 & 1) == 0)
        {
          sub_24EEFE1C8(v11, v12, v13, v14, v15, v22, 2);
          v34 = v3;
          v35 = v2;
          v36 = v5;
          v37 = v4;
          v38 = v67;
          v18 = v72;
          v39 = 2;
          goto LABEL_35;
        }
      }

      v24 = *&v6;
      if (v5 == v13 && v4 == v14)
      {
        v25 = v18;
        sub_24EEFE1C8(v11, v12, v5, v4, v15, v18, 2);
        v26 = v72;
        sub_24EEFE1C8(v3, v2, v5, v4, v67, v72, 2);
        sub_24E601704(v77, &qword_27F233750);
        if (v24 != *&v15)
        {
          return 0;
        }
      }

      else
      {
        v50 = v18;
        v64 = sub_24F92CE08();
        v51 = v13;
        v25 = v50;
        sub_24EEFE1C8(v11, v12, v51, v14, v15, v50, 2);
        sub_24EEFE1C8(v3, v2, v5, v4, v67, v72, 2);
        sub_24E601704(v77, &qword_27F233750);
        result = 0;
        if ((v64 & 1) == 0)
        {
          return result;
        }

        v26 = v72;
        if (v24 != *&v15)
        {
          return result;
        }
      }

      return (v25 & 0xFFFFFFFFFFFFLL) == (v26 & 0xFFFFFFFFFFFFLL);
    }

    v21 = v17 | (v16 << 32);
    goto LABEL_33;
  }

  if (v10 == 3)
  {
    if (v19 == 3)
    {
      sub_24E601704(v77, &qword_27F233750);
      return ((v11 ^ v3) & 0xFFFFFFFFFFFFLL) == 0;
    }

    goto LABEL_34;
  }

  if (v19 != 4)
  {
LABEL_34:
    v34 = v11;
    v35 = v12;
    v36 = v13;
    v37 = v14;
    v38 = v15;
    v39 = v19;
LABEL_35:
    sub_24EEFE1C8(v34, v35, v36, v37, v38, v18, v39);
    sub_24E601704(v77, &qword_27F233750);
    return 0;
  }

  sub_24E601704(v77, &qword_27F233750);
  result = 0;
  if (*&v3 == *&v11 && ((v12 ^ v2) & 0xFFFFFFFFFFFFLL) == 0)
  {
    return HIWORD(v2) & 1 ^ ((v12 & 0x1000000000000) == 0);
  }

  return result;
}

uint64_t sub_24EEFD7F4(unsigned int *a1, unsigned __int8 *a2, double a3)
{
  v5 = *a1;
  v6 = *(a1 + 4);
  v7 = *(a1 + 5);
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0);

  sub_24F928EF8();

  if (v36)
  {
    v28 = v10;
    v29 = v11;
    v12 = v5;
    ObjectType = swift_getObjectType();
    v14 = *(v3 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_displayProperties);
    v15 = *(v14 + 32);
    *&v32 = *(v14 + 24);
    *(&v32 + 1) = v15;
    v16 = v6;
    v17 = v9;
    v18 = *(v37 + 56);

    v18(&v32, ObjectType, v37);
    v9 = v17;
    v6 = v16;
    v20 = v19;
    swift_unknownObjectRelease();

    v21 = swift_getObjectType();
    v22 = *(v20 + 16);
    v23 = v20;
    v5 = v12;
    v10 = v28;
    v11 = v29;
    v22(v30, v21, v23);
    swift_unknownObjectRelease();
    v32 = v30[0];
    v33 = v30[1];
    v34 = v30[2];
    v35 = v31;
    v24 = v31;
    sub_24E88D2AC(&v32);
    v25 = (v24 >> 60 == 6) << 48;
  }

  else
  {
    v25 = 0;
  }

  v26 = v5 | (v6 << 32) | (v7 << 40) | v25;
  swift_getKeyPath();
  swift_getKeyPath();
  *&v32 = a3;
  *(&v32 + 1) = v26;
  BYTE14(v34) = 4;

  sub_24F9230A8();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v32 = v8 | (v9 << 8);
  *(&v32 + 1) = v10;
  *&v33 = v11;

  sub_24E9534EC(v10, v11);
  return sub_24F9230A8();
}

uint64_t sub_24EEFDA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 8);
  v7 = *(a6 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24F9230A8();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24E9534EC(v6, v7);
  return sub_24F9230A8();
}

uint64_t sub_24EEFDB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(a3 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24F9230A8();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24E9534EC(v3, v4);
  return sub_24F9230A8();
}

uint64_t sub_24EEFDC74(int *a1, unsigned __int8 *a2)
{
  v22 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v24 = *a2;
  v23 = a2[1];
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0);

  sub_24F928F28();

  ObjectType = swift_getObjectType();
  v8 = *(v2 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_displayProperties);
  v9 = *(v8 + 32);
  *&v30[0] = *(v8 + 24);
  *(&v30[0] + 1) = v9;
  v10 = *(v29 + 56);

  v10(v30, ObjectType, v29);
  v12 = v11;
  swift_unknownObjectRelease();

  v13 = swift_getObjectType();
  (*(v12 + 16))(&v25, v13, v12);
  swift_unknownObjectRelease();
  v30[0] = v25;
  v30[1] = v26;
  v30[2] = v27;
  v30[3] = v28;
  if (v28 >> 60 == 4)
  {
    v14._object = 0x800000024FA62940;
    v14._countAndFlagsBits = 0xD000000000000018;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    v16 = localizedString(_:comment:)(v14, v15);
    v18 = *(v2 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_redownloadSymbolName);
    v17 = *(v2 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_redownloadSymbolName + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    v25 = v16;
    *&v26 = v18;
    *(&v26 + 1) = v17;
    *&v27 = 0x4000000000000000;
    WORD6(v27) = ((v4 << 40) | (v3 << 32)) >> 32;
    DWORD2(v27) = v22;
    BYTE14(v27) = 2;
  }

  else
  {
    v20 = *(v2 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_redownloadSymbolName);
    v19 = *(v2 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_redownloadSymbolName + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    v25._countAndFlagsBits = v20;
    v25._object = v19;
    *&v27 = 0;
    v26 = 0x4000000000000000uLL;
    WORD6(v27) = 0;
    DWORD2(v27) = 4;
    BYTE14(v27) = 1;
  }

  sub_24F9230A8();
  swift_getKeyPath();
  swift_getKeyPath();
  v25._countAndFlagsBits = v24 | (v23 << 8);
  v25._object = v5;
  *&v26 = v6;

  sub_24E9534EC(v5, v6);
  sub_24F9230A8();
  return sub_24E88D2AC(v30);
}

uint64_t sub_24EEFDF64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24F9230A8();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24E9534EC(v2, v3);
  return sub_24F9230A8();
}

uint64_t sub_24EEFE064()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EEFE0A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24EEFB14C(a1, v4, v5, v6);
}

uint64_t sub_24EEFE158(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233738);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EEFE1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (!a7 || a7 == 2 || a7 == 1)
  {
  }

  return result;
}

uint64_t sub_24EEFE238()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EEFE298()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_24EEFE2E4()
{
  result = qword_27F233760;
  if (!qword_27F233760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22DE08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F233760);
  }

  return result;
}

uint64_t sub_24EEFE350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (!a7 || a7 == 2 || a7 == 1)
  {
  }

  return result;
}

uint64_t sub_24EEFE3C0(void *a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v360 = a5;
  v372 = a4;
  LODWORD(v374) = a3;
  v7 = sub_24F929598();
  MEMORY[0x28223BE20](v7 - 8);
  v371 = &v329 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F91F4A8();
  v357 = *(v9 - 8);
  v358 = v9;
  MEMORY[0x28223BE20](v9);
  v353 = &v329 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v354 = &v329 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v13 - 8);
  v356 = &v329 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v366 = &v329 - v16;
  v17 = sub_24F9294C8();
  MEMORY[0x28223BE20](v17 - 8);
  v370 = &v329 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24F928698();
  v368 = *(v19 - 8);
  v369 = v19;
  MEMORY[0x28223BE20](v19);
  v367 = &v329 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v21 - 8);
  v379 = &v329 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v383 = &v329 - v24;
  MEMORY[0x28223BE20](v25);
  *&v349 = &v329 - v26;
  v27 = sub_24F91F648();
  v28 = *(v27 - 8);
  v375 = v27;
  v376 = v28;
  MEMORY[0x28223BE20](v27);
  v346 = &v329 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_24F928AD8();
  v377 = *(v30 - 8);
  v378 = v30;
  MEMORY[0x28223BE20](v30);
  v364 = &v329 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v365 = &v329 - v33;
  MEMORY[0x28223BE20](v34);
  v348 = &v329 - v35;
  v36 = sub_24F928388();
  v37 = *(v36 - 8);
  v351 = v36;
  v352 = v37;
  MEMORY[0x28223BE20](v36);
  *(&v347 + 1) = &v329 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  *&v347 = &v329 - v40;
  MEMORY[0x28223BE20](v41);
  v350 = &v329 - v42;
  v43 = sub_24F92A538();
  v355 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v45 = (&v329 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = sub_24F91F6B8();
  v362 = *(v46 - 8);
  v363 = v46;
  MEMORY[0x28223BE20](v46);
  v361 = &v329 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v48 - 8);
  v373 = &v329 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v382 = &v329 - v51;
  MEMORY[0x28223BE20](v52);
  v359 = &v329 - v53;
  MEMORY[0x28223BE20](v54);
  v380 = &v329 - v55;
  MEMORY[0x28223BE20](v56);
  v58 = &v329 - v57;
  MEMORY[0x28223BE20](v59);
  v61 = &v329 - v60;
  v62 = sub_24F91EAA8();
  v63 = *(v62 - 8);
  *&v64 = MEMORY[0x28223BE20](v62).n128_u64[0];
  v66 = &v329 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = [a1 updateDictionary];
  if (!v67)
  {
    sub_24E601704(a2, &unk_27F22EC30);

    return 0;
  }

  v384 = a1;
  v381 = a2;
  v68 = v67;
  v69 = sub_24F92AE38();

  *&v401 = 25705;
  *(&v401 + 1) = 0xE200000000000000;
  sub_24F92C7F8();
  if (!*(v69 + 16) || (v70 = v69, v71 = sub_24E76D934(&v395), (v72 & 1) == 0))
  {

    sub_24E601704(v381, &unk_27F22EC30);
    sub_24E6585F8(&v395);
    return 0;
  }

  sub_24E643A9C(*(v69 + 56) + 32 * v71, &v387);
  sub_24E6585F8(&v395);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_24E601704(v381, &unk_27F22EC30);

    return 0;
  }

  v343 = v401;
  *&v395 = 0x77654E7374616877;
  *(&v395 + 1) = 0xE800000000000000;
  v345 = *(&v401 + 1);

  sub_24F92C7F8();
  if (!*(v69 + 16) || (v70 = v69, v73 = sub_24E76D934(&v401), (v74 & 1) == 0))
  {
    sub_24E6585F8(&v401);
    goto LABEL_14;
  }

  sub_24E643A9C(*(v69 + 56) + 32 * v73, v404);
  sub_24E6585F8(&v401);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v90 = 0;
    goto LABEL_15;
  }

  v341 = *(&v400 + 1);
  v394 = 0;
  v392 = 0u;
  v393 = 0u;
  v395 = v400;
  sub_24F91EA68();
  sub_24E600AEC();
  v342 = sub_24F92C538();
  v344 = v75;
  (*(v63 + 8))(v66, v62);

  LOBYTE(v385) = 0;

  Paragraph.Style.nqmlConfiguration.getter(&v387);
  v397 = v389;
  v398 = v390;
  v399 = v391;
  v395 = v387;
  v396 = v388;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880);
  v76 = swift_allocObject();
  v77 = MEMORY[0x277D74118];
  *(v76 + 16) = xmmword_24F93DE60;
  v78 = *v77;
  *(v76 + 32) = *v77;
  v79 = *(&v396 + 1);
  *(v76 + 64) = sub_24EF01BE0();
  *(v76 + 40) = v79;
  v80 = v78;
  v81 = v79;
  sub_24E608940(v76);
  swift_setDeallocating();
  sub_24E601704(v76 + 32, &qword_27F221890);
  swift_deallocClassInstance();
  v82 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v83 = sub_24F92B098();

  type metadata accessor for Key(0);
  sub_24EADDED4();
  v84 = sub_24F92AE28();

  v85 = [v82 initWithString:v83 attributes:v84];

  sub_24E951D6C(&v395);

  v86 = sub_24F929608();
  (*(*(v86 - 8) + 56))(v61, 1, 1, v86);
  type metadata accessor for Paragraph();
  v87 = swift_allocObject();
  *(v87 + 24) = 0;
  *(v87 + 40) = 0;
  sub_24E60169C(&v392, &v387, &qword_27F235830);
  v344 = v87;
  if (*(&v388 + 1))
  {
    v88 = v388;
    *(v87 + 56) = v387;
    *(v87 + 72) = v88;
    *(v87 + 88) = v389;
  }

  else
  {
    v127 = v361;
    sub_24F91F6A8();
    v128 = sub_24F91F668();
    v130 = v129;
    (*(v362 + 8))(v127, v363);
    v385 = v128;
    v386 = v130;
    v87 = v344;
    sub_24F92C7F8();
    sub_24E601704(&v387, &qword_27F235830);
  }

  sub_24E60169C(v61, v87 + OBJC_IVAR____TtC12GameStoreKit9Paragraph_impressionMetrics, &qword_27F213E68);
  swift_beginAccess();
  v131 = byte_27F236A29;
  v342 = type metadata accessor for LanguageAwareString();
  v132 = objc_allocWithZone(v342);
  v133 = v85;
  v134 = sub_24EFF0E44(v133, 0, v131);

  v341 = v133;
  *(v344 + 16) = v134;
  v135 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v340 = [v135 length];
  v136 = [v135 mutableString];
  v137 = sub_24F92B098();
  v138 = sub_24F92B098();
  [v136 replaceOccurrencesOfString:v137 withString:v138 options:1024 range:{0, v340}];

  LOBYTE(v137) = byte_27F236A29;
  v139 = objc_allocWithZone(v342);
  v70 = sub_24EFF0E44(v135, 0, v137);

  v90 = v344;
  sub_24E601704(v61, &qword_27F213E68);
  sub_24E601704(&v392, &qword_27F235830);
  *(v90 + 32) = v70;
  *(v90 + 48) = 65540;

LABEL_15:
  v91 = MEMORY[0x277D84F70];
  *&v387 = 0xD000000000000014;
  *(&v387 + 1) = 0x800000024FA62960;
  sub_24F92C7F8();
  if (!*(v69 + 16) || (v70 = v69, v92 = sub_24E76D934(&v395), (v93 & 1) == 0))
  {
    sub_24E6585F8(&v395);
    goto LABEL_20;
  }

  sub_24E643A9C(*(v69 + 56) + 32 * v92, &v387);
  sub_24E6585F8(&v395);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v94 = 0;
    goto LABEL_21;
  }

  v94 = v401;
LABEL_21:
  *&v387 = 0xD000000000000017;
  *(&v387 + 1) = 0x800000024FA62980;
  sub_24F92C7F8();
  v95 = *(v69 + 16);
  v344 = v90;
  if (v95 && (v70 = v69, v96 = sub_24E76D934(&v395), (v97 & 1) != 0))
  {
    sub_24E643A9C(*(v69 + 56) + 32 * v96, &v387);
    sub_24E6585F8(&v395);
    if (swift_dynamicCast())
    {
      v98 = v401;
      goto LABEL_27;
    }
  }

  else
  {
    sub_24E6585F8(&v395);
  }

  v98 = 0;
LABEL_27:
  if (!v94)
  {
    goto LABEL_46;
  }

  v70 = [objc_opt_self() mainBundle];
  v99 = [v70 bundleIdentifier];

  if (v99)
  {
    v100 = sub_24F92B0D8();
    v70 = v101;

    if (v100 == 0xD000000000000013 && 0x800000024FA59DD0 == v70)
    {

      v91 = MEMORY[0x277D84F70];
      goto LABEL_33;
    }

    v115 = sub_24F92CE08();

    v91 = MEMORY[0x277D84F70];
    if (((v115 | v98) & 1) == 0)
    {
LABEL_46:
      v337 = 0;
      goto LABEL_47;
    }
  }

  else if (!v98)
  {
    goto LABEL_46;
  }

LABEL_33:
  *&v401 = 0x777472416C61766FLL;
  *(&v401 + 1) = 0xEB000000006B726FLL;
  sub_24F92C7F8();
  if (!*(v69 + 16) || (v70 = v69, v102 = sub_24E76D934(&v395), (v103 & 1) == 0))
  {
    sub_24E6585F8(&v395);
    goto LABEL_44;
  }

  sub_24E643A9C(*(v69 + 56) + 32 * v102, &v387);
  sub_24E6585F8(&v395);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_44;
  }

  v70 = v401;
  sub_24E76C374(7107189, 0xE300000000000000, v401, &v395);
  if (!*(&v396 + 1))
  {
    goto LABEL_217;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_221;
  }

  v104 = v387;
  sub_24E76C374(0x6874646977, 0xE500000000000000, v70, &v395);
  if (!*(&v396 + 1))
  {

    goto LABEL_217;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_221;
  }

  v105 = v387;
  sub_24E76C374(0x746867696568, 0xE600000000000000, v70, &v395);

  if (!*(&v396 + 1))
  {
    goto LABEL_217;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_221:

    goto LABEL_44;
  }

  v106 = v387;
  v107 = sub_24F929608();
  v108 = *(*(v107 - 8) + 56);
  v337 = 1;
  v108(v58, 1, 1, v107);
  type metadata accessor for Artwork();
  v109 = swift_allocObject();
  *(v109 + 152) = 0u;
  *(v109 + 168) = 0u;
  *(v109 + 184) = 0;
  v342 = v104;
  v110 = v361;
  sub_24F91F6A8();
  v111 = sub_24F91F668();
  v113 = v112;
  (*(v362 + 8))(v110, v363);
  *&v395 = v111;
  *(&v395 + 1) = v113;
  sub_24F92C7F8();
  sub_24E60169C(v58, v109 + OBJC_IVAR____TtC12GameStoreKit7Artwork_impressionMetrics, &qword_27F213E68);
  *(v109 + 16) = v342;
  *(v109 + 24) = *(&v104 + 1);
  *(v109 + 32) = v105;
  *(v109 + 40) = v106;
  *(v109 + 48) = 0;
  *(v109 + 56) = 0;
  *(v109 + 72) = 25186;
  *(v109 + 80) = 0xE200000000000000;
  v114 = 5;
LABEL_60:
  *(v109 + 64) = v114;
  *(v109 + 104) = MEMORY[0x277D84F90];
  *&v395 = 25186;
  *(&v395 + 1) = 0xE200000000000000;
  v70 = Artwork.Crop.preferredContentMode.getter();
  v91 = MEMORY[0x277D84F70];
  sub_24E601704(v58, &qword_27F213E68);
  *(v109 + 88) = v70;
  v340 = v109;
  *(v109 + 96) = 3;
  while (1)
  {
    *&v401 = 0xD000000000000010;
    *(&v401 + 1) = 0x800000024FA629A0;
    sub_24F92C7F8();
    if (*(v69 + 16) && (v70 = v69, v140 = sub_24E76D934(&v395), (v141 & 1) != 0))
    {
      sub_24E643A9C(*(v69 + 56) + 32 * v140, &v387);
    }

    else
    {
      v387 = 0u;
      v388 = 0u;
    }

    sub_24E6585F8(&v395);
    if (*(&v388 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
      if (swift_dynamicCast())
      {
        v91 = v401;
        if (*(v401 + 16))
        {
          v142 = [objc_opt_self() thinnedAppVariantId];
          v143 = sub_24F92B0D8();
          v145 = v144;

          *&v395 = v143;
          *(&v395 + 1) = v145;
          *&v387 = 32;
          *(&v387 + 1) = 0xE100000000000000;
          sub_24E600AEC();
          v146 = sub_24F92C4E8();

          sub_24F92A528();
          v70 = sub_24F92A518();
          v148 = v147;
          (*(v355 + 8))(v45, v43);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_78;
          }

          goto LABEL_229;
        }

        v91 = MEMORY[0x277D84F70];
      }
    }

    else
    {
      sub_24E601704(&v387, &qword_27F2129B0);
    }

    *&v401 = 0x657A6953656C6966;
    *(&v401 + 1) = 0xE800000000000000;
    sub_24F92C7F8();
    if (*(v69 + 16) && (v70 = v69, v159 = sub_24E76D934(&v395), (v160 & 1) != 0))
    {
      sub_24E643A9C(*(v69 + 56) + 32 * v159, &v387);
    }

    else
    {
      v387 = 0u;
      v388 = 0u;
    }

    sub_24E6585F8(&v395);
    if (!*(&v388 + 1))
    {
      sub_24E601704(&v387, &qword_27F2129B0);
LABEL_101:
      v339 = 0;
      v338 = 1;
      goto LABEL_102;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_101;
    }

    v338 = 0;
    v339 = v401;
LABEL_102:
    *&v387 = 1701667182;
    *(&v387 + 1) = 0xE400000000000000;
    sub_24F92C7F8();
    if (*(v69 + 16) && (v70 = v69, v161 = sub_24E76D934(&v395), (v162 & 1) != 0))
    {
      sub_24E643A9C(*(v69 + 56) + 32 * v161, &v387);
    }

    else
    {
      v387 = 0u;
      v388 = 0u;
    }

    sub_24E6585F8(&v395);
    if (*(&v388 + 1))
    {
      v163 = swift_dynamicCast();
      if (v163)
      {
        v164 = v401;
      }

      else
      {
        v164 = 0;
      }

      if (v163)
      {
        v165 = *(&v401 + 1);
      }

      else
      {
        v165 = 0;
      }

      v341 = v164;
      v342 = v165;
    }

    else
    {
      sub_24E601704(&v387, &qword_27F2129B0);
      v341 = 0;
      v342 = 0;
    }

    *&v401 = 0x73726566666FLL;
    *(&v401 + 1) = 0xE600000000000000;
    sub_24F92C7F8();
    sub_24E76C3D8(&v395, v69, &v387);
    sub_24E6585F8(&v395);
    if (!*(&v388 + 1))
    {
      goto LABEL_142;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BC98);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_146;
    }

    v166 = v401;
    v148 = *(v401 + 16);
    if (!v148)
    {
      break;
    }

    v167 = 0;
    v146 = 0x657461647075;
    while (v167 < *(v166 + 16))
    {
      v168 = *(v166 + 8 * v167 + 32);
      if (!*(v168 + 16))
      {
        goto LABEL_227;
      }

      v70 = v168;
      v169 = sub_24E76D644(1701869940, 0xE400000000000000);
      if ((v170 & 1) == 0)
      {
        goto LABEL_228;
      }

      sub_24E643A9C(*(v168 + 56) + 32 * v169, &v387);
      sub_24E612B0C(&v387, &v395);
      swift_dynamicCast();
      v70 = *(&v401 + 1);
      if (v401 == __PAIR128__(0xE600000000000000, 0x657461647075))
      {

LABEL_127:

        goto LABEL_128;
      }

      v171 = sub_24F92CE08();

      if (v171)
      {
        goto LABEL_127;
      }

      ++v167;

      v91 = MEMORY[0x277D84F70];
      if (v148 == v167)
      {
        goto LABEL_125;
      }
    }

    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    v146 = sub_24E615CF4(0, *(v146 + 16) + 1, 1, v146);
LABEL_78:
    v150 = *(v146 + 16);
    v149 = *(v146 + 24);
    v151 = v149 >> 1;
    v152 = v150 + 1;
    if (v149 >> 1 <= v150)
    {
      v146 = sub_24E615CF4((v149 > 1), v150 + 1, 1, v146);
      v149 = *(v146 + 24);
      v151 = v149 >> 1;
    }

    *(v146 + 16) = v152;
    v153 = v146 + 16 * v150;
    *(v153 + 32) = v70;
    *(v153 + 40) = v148;
    v43 = v150 + 2;
    if (v151 < v43)
    {
      v146 = sub_24E615CF4((v149 > 1), v43, 1, v146);
    }

    v58 = 0;
    *(v146 + 16) = v43;
    v154 = v146 + 16 * v152;
    *(v154 + 32) = 0x6173726576696E75;
    *(v154 + 40) = 0xE90000000000006CLL;
    v45 = (v146 + 40);
    while (v58 < *(v146 + 16))
    {
      if (*(v91 + 16))
      {
        v155 = *(v45 - 1);
        v156 = *v45;

        v70 = sub_24E76D644(v155, v156);
        v158 = v157;

        if (v158)
        {
          sub_24E643A9C(*(v91 + 56) + 32 * v70, &v395);
          if (swift_dynamicCast())
          {

            v338 = 0;
            v339 = v387;
LABEL_91:
            v91 = MEMORY[0x277D84F70];
            goto LABEL_102;
          }
        }
      }

      ++v58;
      v45 += 2;
      if (v43 == v58)
      {

        v339 = 0;
        v338 = 1;
        goto LABEL_91;
      }
    }

    __break(1u);
LABEL_217:

    sub_24E601704(&v395, &qword_27F2129B0);
LABEL_44:
    v337 = 1;
LABEL_47:
    *&v401 = 0x6B726F77747261;
    *(&v401 + 1) = 0xE700000000000000;
    sub_24F92C7F8();
    if (*(v69 + 16) && (v70 = v69, v116 = sub_24E76D934(&v395), (v117 & 1) != 0))
    {
      sub_24E643A9C(*(v69 + 56) + 32 * v116, &v387);
    }

    else
    {
      v387 = 0u;
      v388 = 0u;
    }

    sub_24E6585F8(&v395);
    if (!*(&v388 + 1))
    {
      v126 = &v387;
      goto LABEL_66;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_69;
    }

    v70 = v401;
    sub_24E76C374(7107189, 0xE300000000000000, v401, &v395);
    if (!*(&v396 + 1))
    {
      goto LABEL_65;
    }

    if (swift_dynamicCast())
    {
      v118 = v387;
      sub_24E76C374(0x6874646977, 0xE500000000000000, v70, &v395);
      if (*(&v396 + 1))
      {
        if (swift_dynamicCast())
        {
          v119 = v387;
          sub_24E76C374(0x746867696568, 0xE600000000000000, v70, &v395);

          if (!*(&v396 + 1))
          {
            goto LABEL_65;
          }

          if (swift_dynamicCast())
          {
            v120 = v387;
            v121 = sub_24F929608();
            (*(*(v121 - 8) + 56))(v58, 1, 1, v121);
            type metadata accessor for Artwork();
            v109 = swift_allocObject();
            *(v109 + 152) = 0u;
            *(v109 + 168) = 0u;
            *(v109 + 184) = 0;
            v342 = v118;
            v122 = v361;
            sub_24F91F6A8();
            v123 = sub_24F91F668();
            v125 = v124;
            (*(v362 + 8))(v122, v363);
            *&v395 = v123;
            *(&v395 + 1) = v125;
            sub_24F92C7F8();
            sub_24E60169C(v58, v109 + OBJC_IVAR____TtC12GameStoreKit7Artwork_impressionMetrics, &qword_27F213E68);
            *(v109 + 16) = v342;
            *(v109 + 24) = *(&v118 + 1);
            *(v109 + 32) = v119;
            *(v109 + 40) = v120;
            *(v109 + 48) = 0;
            *(v109 + 56) = 0;
            *(v109 + 72) = 25186;
            *(v109 + 80) = 0xE200000000000000;
            v114 = 1;
            goto LABEL_60;
          }
        }

        else
        {
        }

        goto LABEL_68;
      }

LABEL_65:

      v126 = &v395;
LABEL_66:
      sub_24E601704(v126, &qword_27F2129B0);
      goto LABEL_69;
    }

LABEL_68:

LABEL_69:
    v340 = 0;
  }

LABEL_125:

  v168 = 0;
LABEL_128:
  *&v401 = 0x614E747369747261;
  *(&v401 + 1) = 0xEA0000000000656DLL;
  sub_24F92C7F8();
  sub_24E76C3D8(&v395, v69, &v387);
  sub_24E6585F8(&v395);
  if (*(&v388 + 1))
  {
    if (swift_dynamicCast())
    {
      v172 = *(&v401 + 1);
      v173 = v401;
      goto LABEL_133;
    }
  }

  else
  {
    sub_24E601704(&v387, &qword_27F2129B0);
  }

  v173 = 0;
  v172 = 0xE000000000000000;
LABEL_133:
  if (!v168)
  {
    goto LABEL_145;
  }

  *&v401 = 1701667182;
  *(&v401 + 1) = 0xE400000000000000;
  sub_24F92C7F8();
  sub_24E76C3D8(&v395, v69, &v387);
  sub_24E6585F8(&v395);
  if (!*(&v388 + 1))
  {
LABEL_141:

LABEL_142:
    sub_24E601704(&v387, &qword_27F2129B0);
LABEL_146:
    v350 = 0;
    v351 = 0;
    v348 = 0;
    v355 = 0;
    v205 = 0;
    v206 = 0;
    goto LABEL_147;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_144:

LABEL_145:

    goto LABEL_146;
  }

  v174 = v401;
  *&v401 = 0x6449656C646E7562;
  *(&v401 + 1) = 0xE800000000000000;
  sub_24F92C7F8();
  sub_24E76C3D8(&v395, v69, &v387);
  sub_24E6585F8(&v395);
  if (!*(&v388 + 1))
  {

    goto LABEL_141;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_144;
  }

  v331 = *(&v401 + 1);
  v336 = v401;
  *&v387 = 0xD000000000000016;
  *(&v387 + 1) = 0x800000024FA629E0;
  sub_24F92C7F8();
  sub_24E76C3D8(&v395, v69, &v387);
  sub_24E6585F8(&v395);
  sub_24F928378();
  v175 = v347;
  sub_24F928398();
  v355 = v174;
  v176 = *(&v347 + 1);
  sub_24F928398();
  v330 = *(&v174 + 1);
  v178 = v352 + 8;
  v177 = *(v352 + 8);
  v179 = v175;
  v180 = v351;
  v177(v179, v351);
  v335 = sub_24F928258();
  v334 = v181;
  v352 = v178;
  *(&v347 + 1) = v177;
  v177(v176, v180);
  v182._countAndFlagsBits = 0xD000000000000018;
  v182._object = 0x800000024FA5BAA0;
  v183._countAndFlagsBits = 0;
  v183._object = 0xE000000000000000;
  v184 = localizedString(_:comment:)(v182, v183);
  object = v184._object;
  countAndFlagsBits = v184._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140);
  v185 = swift_allocObject();
  *(v185 + 16) = xmmword_24F93FC20;
  *(v185 + 32) = 0x656D614E707061;
  v186 = v355;
  *(v185 + 40) = 0xE700000000000000;
  *(v185 + 48) = v186;
  *(v185 + 56) = v330;
  v187 = MEMORY[0x277D837D0];
  *(v185 + 72) = MEMORY[0x277D837D0];
  *(v185 + 80) = 0x726F646E6576;
  *(v185 + 88) = 0xE600000000000000;
  *(v185 + 96) = v173;
  *(v185 + 104) = v172;
  *(v185 + 120) = v187;
  *(v185 + 128) = 0x6449656C646E7562;
  v188 = v336;
  *(v185 + 136) = 0xE800000000000000;
  *(v185 + 144) = v188;
  v189 = v331;
  *(v185 + 152) = v331;
  *(v185 + 168) = v187;
  *(v185 + 176) = 0x6574616470557369;
  *(v185 + 184) = 0xE800000000000000;
  *(v185 + 216) = MEMORY[0x277D839B0];
  *(v185 + 192) = 1;
  v190 = v345;

  v191 = sub_24E608448(v185);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *&v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
  *(&v402 + 1) = v347;
  *&v401 = v191;
  v192 = v348;
  sub_24F928A98();
  type metadata accessor for OfferAction();
  v193 = swift_allocObject();
  v194 = (v193 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  *v194 = v343;
  v194[1] = v190;
  sub_24E643A9C(&v401, v193 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_purchaseToken);
  v195 = (v193 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_parentAdamId);
  *v195 = 0;
  v195[1] = 0;
  v196 = (v193 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_bundleId);
  *v196 = v188;
  v196[1] = v189;
  v197 = v189;
  v198 = (v193 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem);
  *v198 = 0;
  v198[1] = 0;
  *(v193 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_includeBetaApps) = 0;
  *(v193 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_requiresExceptionRequest) = 0;
  *(v193 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_forceAskToBuyReason) = 2;
  *(v193 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_buyCompletedAction) = 0;
  *&v397 = 0;
  v395 = 0u;
  v396 = 0u;
  v199 = v377;
  (*(v377 + 16))(v193 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v192, v378);
  v200 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v201 = sub_24F929608();
  (*(*(v201 - 8) + 56))(v193 + v200, 1, 1, v201);
  v202 = (v193 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v202 = 0u;
  v202[1] = 0u;
  v355 = v193;
  v203 = v193 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E60169C(&v395, &v387, &qword_27F235830);
  if (*(&v388 + 1))
  {
    v204 = v388;
    *v203 = v387;
    *(v203 + 16) = v204;
    *(v203 + 32) = v389;
  }

  else
  {

    v300 = v361;
    sub_24F91F6A8();
    v301 = sub_24F91F668();
    v303 = v302;
    (*(v362 + 8))(v300, v363);
    *&v392 = v301;
    *(&v392 + 1) = v303;
    v199 = v377;
    sub_24F92C7F8();
    sub_24E601704(&v387, &qword_27F235830);
  }

  sub_24E601704(&v395, &qword_27F235830);
  (*(v199 + 8))(v192, v378);
  __swift_destroy_boxed_opaque_existential_1(&v401);
  v304 = v355;
  v305 = object;
  *(v355 + 16) = countAndFlagsBits;
  v304[3] = v305;
  v304[4] = 0;
  v304[5] = 0;
  if ([v384 isArcade])
  {
    v306 = 3;
  }

  else
  {
    v306 = 0;
  }

  v307 = v345;

  v308 = MEMORY[0x277D84F90];
  v309 = sub_24E60C36C(MEMORY[0x277D84F90]);
  v310 = sub_24E60C36C(v308);
  v311 = sub_24E60C36C(v308);
  type metadata accessor for OfferDisplayProperties();
  v312 = swift_allocObject();
  *(v312 + 16) = v306;
  *(v312 + 24) = v343;
  *(v312 + 32) = v307;
  v313 = v335;
  *(v312 + 40) = v336;
  *(v312 + 48) = v197;
  *(v312 + 56) = 0;
  *(v312 + 64) = 0;
  *(v312 + 72) = v309;
  *(v312 + 80) = v310;
  *(v312 + 88) = v311;
  *(v312 + 96) = 0;
  *(v312 + 104) = 0;
  *(v312 + 112) = 0;
  *(v312 + 119) = 0;
  *(v312 + 128) = v313;
  *(v312 + 136) = v334 & 1;
  *(v312 + 240) = 0;
  *(v312 + 144) = 0u;
  *(v312 + 160) = 0u;
  *(v312 + 176) = 0u;
  *(v312 + 192) = 0u;
  *(v312 + 208) = 0;
  *(v312 + 216) = 0;
  *(v312 + 224) = 0;
  v348 = v312;
  *(v312 + 232) = 0;
  v314 = v349;
  sub_24E60169C(v381, v349, &unk_27F22EC30);
  v315 = v375;
  v316 = v376;
  if ((*(v376 + 48))(v314, 1, v375) == 1)
  {
    sub_24E601704(v314, &unk_27F22EC30);
    goto LABEL_197;
  }

  v317 = v346;
  (*(v316 + 32))(v346, v314, v315);
  v205 = sub_24EE59294(v317);
  v206 = v318;
  (*(v316 + 8))(v317, v315);
  if (!v206)
  {
LABEL_197:
    sub_24E76C374(0x6E6F6973726576, 0xE700000000000000, v168, &v395);
    if (!*(&v396 + 1))
    {
      goto LABEL_202;
    }

    if (swift_dynamicCast())
    {
      sub_24E76C374(0x79616C70736964, 0xE700000000000000, v387, &v395);

      if (*(&v396 + 1))
      {
        v319 = MEMORY[0x277D837D0];
        if (swift_dynamicCast())
        {
          v321 = *(&v387 + 1);
          v320 = v387;
          v322._countAndFlagsBits = 0x5F53455441445055;
          v322._object = 0xEF4E4F4953524556;
          v323._countAndFlagsBits = 0;
          v323._object = 0xE000000000000000;
          localizedString(_:comment:)(v322, v323);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0);
          v324 = swift_allocObject();
          *(v324 + 16) = xmmword_24F93DE60;
          *(v324 + 56) = v319;
          *(v324 + 64) = sub_24E90A06C();
          *(v324 + 32) = __PAIR128__(v321, v320);
          v205 = sub_24F92B118();
          v206 = v325;
        }

        else
        {
          v205 = 0;
          v206 = 0;
        }

        goto LABEL_204;
      }

LABEL_202:
      sub_24E601704(&v395, &qword_27F2129B0);
    }

    v205 = 0;
    v206 = 0;
  }

LABEL_204:
  sub_24E76C374(0x6E6F6973726576, 0xE700000000000000, v168, &v395);

  if (!*(&v396 + 1))
  {
    (*(&v347 + 1))(v350, v351);
    goto LABEL_215;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(&v347 + 1))(v350, v351);
    goto LABEL_219;
  }

  sub_24E76C374(0x79616C70736964, 0xE700000000000000, v387, &v395);

  (*(&v347 + 1))(v350, v351);
  if (!*(&v396 + 1))
  {
LABEL_215:
    sub_24E601704(&v395, &qword_27F2129B0);
LABEL_219:
    v350 = 0;
    v351 = 0;
    goto LABEL_147;
  }

  v326 = swift_dynamicCast();
  if (v326)
  {
    v327 = v387;
  }

  else
  {
    v327 = 0;
  }

  if (v326)
  {
    v328 = *(&v387 + 1);
  }

  else
  {
    v328 = 0;
  }

  v350 = v328;
  v351 = v327;
LABEL_147:
  v207 = v374;
  v352 = v206;
  v374 = v205;
  if (v207)
  {
    *&v401 = 7107189;
    *(&v401 + 1) = 0xE300000000000000;
    v208 = MEMORY[0x277D837D0];
    sub_24F92C7F8();
    sub_24E76C3D8(&v395, v69, &v387);
    sub_24E6585F8(&v395);
    if (*(&v388 + 1))
    {
      if (swift_dynamicCast())
      {
        v347 = v401;
        v209 = v345;
        v210 = v343;
        goto LABEL_154;
      }
    }

    else
    {
      sub_24E601704(&v387, &qword_27F2129B0);
    }

    *&v395 = 0;
    *(&v395 + 1) = 0xE000000000000000;
    sub_24F92C888();

    *&v395 = 0xD00000000000001CLL;
    *(&v395 + 1) = 0x800000024FA629C0;
    v210 = v343;
    v209 = v345;
    MEMORY[0x253050C20](v343, v345);
    v347 = v395;
LABEL_154:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948);
    v212 = sub_24F92A2C8();
    v213 = *(v212 - 8);
    v214 = (*(v213 + 80) + 32) & ~*(v213 + 80);
    v215 = swift_allocObject();
    v349 = xmmword_24F93DE60;
    *(v215 + 16) = xmmword_24F93DE60;
    sub_24F92A288();
    v216 = sub_24E805DFC(v215);
    swift_setDeallocating();
    (*(v213 + 8))(v215 + v214, v212);
    swift_deallocClassInstance();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140);
    v217 = swift_allocObject();
    *(v217 + 16) = v349;
    *(v217 + 32) = 0x79546E6F69746361;
    v218 = v217 + 32;
    *(v217 + 72) = v208;
    *(v217 + 40) = 0xEA00000000006570;
    *(v217 + 48) = 0x657461676976616ELL;
    *(v217 + 56) = 0xE800000000000000;
    v219 = sub_24E608448(v217);
    swift_setDeallocating();
    sub_24E601704(v218, &qword_27F2135C0);
    swift_deallocClassInstance();
    type metadata accessor for ClickMetricsEvent();
    v220 = swift_allocObject();
    v220[6] = 0x70756B636F6CLL;
    v220[7] = 0xE600000000000000;
    v220[4] = v210;
    v220[5] = v209;
    v220[8] = v216;
    v220[9] = MEMORY[0x277D84FA0];
    v220[2] = v219;
    v220[3] = MEMORY[0x277D84F90];

    v221 = v367;
    sub_24E98C2FC();
    swift_setDeallocating();
    ClickMetricsEvent.__deallocating_deinit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2137C8);
    v222 = v368;
    v223 = (*(v368 + 80) + 32) & ~*(v368 + 80);
    v224 = swift_allocObject();
    *(v224 + 16) = v349;
    (*(v222 + 16))(v224 + v223, v221, v369);
    sub_24F9294B8();
    v225 = v365;
    sub_24F928AA8();
    *&v397 = 0;
    v395 = 0u;
    v396 = 0u;
    v226 = v366;
    sub_24F91F488();

    v392 = 0u;
    v393 = 0u;
    v227 = v378;
    v228 = *(v377 + 16);
    v229 = v364;
    v228(v364, v225, v378);
    v230 = sub_24F929D18();
    v232 = v231;
    type metadata accessor for FlowAction();
    v211 = swift_allocObject();
    *(v211 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
    v233 = v211 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
    *v233 = 0u;
    *(v233 + 16) = 0u;
    *(v233 + 32) = 0;
    v234 = (v211 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
    *v234 = 0;
    v234[1] = 0;
    *(v211 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 1;
    sub_24E60169C(v226, v211 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530);
    v235 = (v211 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
    *v235 = 0;
    v235[1] = 0;
    v236 = v211 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
    *v236 = xmmword_24F9406F0;
    *(v236 + 24) = 0;
    *(v236 + 32) = 0;
    *(v236 + 16) = 0;
    *(v236 + 40) = 0;
    *(v211 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 2;
    *(v211 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
    *(v211 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
    v237 = (v211 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
    *v237 = v230;
    v237[1] = v232;
    sub_24E60169C(&v395, &v387, &qword_27F235830);
    v228((v211 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics), v229, v227);
    v238 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
    v239 = sub_24F929608();
    (*(*(v239 - 8) + 56))(v211 + v238, 1, 1, v239);
    v240 = (v211 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
    *v240 = 0u;
    v240[1] = 0u;
    v241 = v211 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
    sub_24E60169C(&v387, &v401, &qword_27F235830);
    if (*(&v402 + 1))
    {
      v242 = v402;
      *v241 = v401;
      *(v241 + 16) = v242;
      *(v241 + 32) = v403;
    }

    else
    {
      v243 = v361;
      sub_24F91F6A8();
      v244 = sub_24F91F668();
      v246 = v245;
      (*(v362 + 8))(v243, v363);
      v404[0] = v244;
      v404[1] = v246;
      sub_24F92C7F8();
      sub_24E601704(&v401, &qword_27F235830);
    }

    sub_24E601704(&v387, &qword_27F235830);
    *(v211 + 16) = 0u;
    *(v211 + 32) = 0u;

    FlowAction.setPageData(_:)(&v392);

    v247 = *(v377 + 8);
    v247(v364, v378);
    sub_24E601704(&v392, &qword_27F2129B0);
    sub_24E601704(v366, &qword_27F228530);
    sub_24E601704(&v395, &qword_27F235830);
    v248 = sub_24F0747E8(v384, 0, 0);
    v249 = v248;
    if (v248)
    {
      v248 = type metadata accessor for ProductPage();
    }

    else
    {
      *&v396 = 0;
      *(&v395 + 1) = 0;
    }

    *&v395 = v249;
    *(&v396 + 1) = v248;
    FlowAction.setPageData(_:)(&v395);
    v247(v365, v378);
    (*(v368 + 8))(v367, v369);
    sub_24E601704(&v395, &qword_27F2129B0);
  }

  else
  {
    v211 = 0;
  }

  *&v401 = 7107189;
  *(&v401 + 1) = 0xE300000000000000;
  v250 = MEMORY[0x277D837D0];
  sub_24F92C7F8();
  sub_24E76C3D8(&v395, v69, &v387);

  sub_24E6585F8(&v395);
  if (*(&v388 + 1))
  {
    v251 = swift_dynamicCast();
    v252 = v345;
    if ((v251 & 1) == 0)
    {
      goto LABEL_170;
    }

    v253 = v356;
    sub_24F91F488();

    v255 = v357;
    v254 = v358;
    if ((*(v357 + 48))(v253, 1, v358) == 1)
    {
      sub_24E601704(v253, &qword_27F228530);
      goto LABEL_170;
    }

    v256 = v354;
    (*(v255 + 32))(v354, v253, v254);
    if (v342 && (v257 = v340) != 0)
    {
      *&v395 = v343;
      *(&v395 + 1) = v252;
      v258 = v353;
      (*(v255 + 16))(v353, v256, v254);

      v259 = v342;

      v378 = _s12GameStoreKit21LockupContextMenuDataC6adamId3url5title4icon17isMessagesOnlyAppAcA04AdamI0V_10Foundation3URLVSSAA7ArtworkCSbtcfC_0(&v395, v258, v341, v259, v257, v337);
      (*(v255 + 8))(v256, v254);
    }

    else
    {
      (*(v255 + 8))(v256, v254);
LABEL_170:
      v378 = 0;
    }
  }

  else
  {
    sub_24E601704(&v387, &qword_27F2129B0);
    v378 = 0;
  }

  v260 = sub_24F929608();
  v261 = *(*(v260 - 8) + 56);
  v262 = v380;
  v261(v380, 1, 1, v260);
  if (v372)
  {
    v263 = v360;
    sub_24F929568();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140);
    v264 = swift_allocObject();
    *(v264 + 16) = xmmword_24F93FC20;
    *(v264 + 32) = 1701667182;
    v265 = v341;
    if (!v342)
    {
      v265 = 0;
    }

    v266 = 0xE000000000000000;
    if (v342)
    {
      v266 = v342;
    }

    *(v264 + 40) = 0xE400000000000000;
    *(v264 + 48) = v265;
    *(v264 + 56) = v266;
    *(v264 + 72) = v250;
    strcpy((v264 + 80), "impressionType");
    *(v264 + 95) = -18;
    *(v264 + 96) = 0x70756B636F6CLL;
    *(v264 + 104) = 0xE600000000000000;
    *(v264 + 120) = v250;
    *(v264 + 128) = 0x657079546469;
    *(v264 + 136) = 0xE600000000000000;
    *(v264 + 144) = 0x64695F737469;
    *(v264 + 152) = 0xE600000000000000;
    *(v264 + 168) = v250;
    *(v264 + 176) = 0x6973736572706D69;
    *(v264 + 216) = MEMORY[0x277D83B88];
    *(v264 + 184) = 0xEF7865646E496E6FLL;
    *(v264 + 192) = v263;

    sub_24E608448(v264);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_24F9294B8();
    v267 = MEMORY[0x277D84F90];
    sub_24EA200BC(MEMORY[0x277D84F90]);
    sub_24EA200BC(v267);
    v268 = v359;
    sub_24F9295A8();
    sub_24E601704(v262, &qword_27F213E68);
    v261(v268, 0, 1, v260);
    sub_24E65E0D4(v268, v262);
  }

  else
  {
  }

  v269 = v379;
  v270 = v375;
  v271 = v344;
  v272 = [v384 bundleIdentifier];
  if (v272)
  {
    v273 = v272;
    v274 = sub_24F92B0D8();
    v276 = v275;
  }

  else
  {
    v274 = 0;
    v276 = 0;
  }

  sub_24E60169C(v262, v382, &qword_27F213E68);

  v277 = v384;
  sub_24EC4C930(v383);
  v278 = [v277 installDate];
  if (v278)
  {
    v279 = v278;
    sub_24F91F608();

    v280 = 0;
  }

  else
  {
    v280 = 1;
  }

  v281 = v373;
  (*(v376 + 56))(v269, v280, 1, v270);
  type metadata accessor for UpdatesLockup();
  v282 = swift_allocObject();
  *(v282 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_whatsNew) = v271;
  v283 = (v282 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_version);
  v284 = v350;
  *v283 = v351;
  v283[1] = v284;
  v285 = v282 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_size;
  *v285 = v339;
  *(v285 + 8) = v338;
  v286 = v282 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_externalVersionId;
  *v286 = 0;
  *(v286 + 8) = 1;
  sub_24E60169C(v383, v282 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_releaseDate, &unk_27F22EC30);
  sub_24E60169C(v269, v282 + OBJC_IVAR____TtC12GameStoreKit13UpdatesLockup_installDate, &unk_27F22EC30);
  *&v397 = 0;
  v395 = 0u;
  v396 = 0u;
  sub_24E60169C(v382, v281, &qword_27F213E68);
  v287 = v282;
  *(v282 + 424) = 4;
  sub_24E60169C(&v395, &v387, &qword_27F235830);
  if (*(&v388 + 1))
  {
    v288 = v388;
    v289 = v282;
    *(v282 + 448) = v387;
    *(v282 + 464) = v288;
    *(v282 + 480) = v389;
  }

  else
  {
    v290 = v361;
    sub_24F91F6A8();
    v291 = sub_24F91F668();
    v293 = v292;
    (*(v362 + 8))(v290, v363);
    *&v401 = v291;
    *(&v401 + 1) = v293;
    sub_24F92C7F8();
    sub_24E601704(&v387, &qword_27F235830);
    v289 = v287;
  }

  v294 = v340;
  sub_24E60169C(v281, v289 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68);
  v295 = v355;

  v296 = v345;
  *(v287 + 16) = v343;
  *(v287 + 24) = v296;
  *(v287 + 32) = v274;
  *(v287 + 40) = v276;
  *(v287 + 48) = v294;
  *(v287 + 56) = 0;
  *(v287 + 64) = 0u;
  *(v287 + 80) = 0u;
  v297 = v342;
  *(v287 + 96) = v341;
  *(v287 + 104) = v297;
  v298 = v352;
  *(v287 + 112) = v374;
  *(v287 + 120) = v298;
  *(v287 + 128) = 0;
  *(v287 + 136) = 2;
  *(v287 + 144) = 0;
  *(v287 + 152) = 0;
  *(v287 + 184) = 0u;
  *(v287 + 200) = 0u;
  *(v287 + 216) = 0u;
  *(v287 + 376) = 0u;
  *(v287 + 392) = 0u;
  *(v287 + 408) = 0x8000;
  *(v287 + 360) = v378;
  *(v287 + 416) = 0;
  *(v287 + 432) = MEMORY[0x277D84FA0];
  *(v287 + 168) = 0;
  *(v287 + 176) = 0;
  *(v287 + 160) = 0;
  *(v287 + 248) = 0;
  *(v287 + 256) = 0;
  v299 = v348;
  *(v287 + 232) = v295;
  *(v287 + 240) = v299;
  *(v287 + 264) = v211;
  *(v287 + 272) = 0u;
  *(v287 + 288) = 0u;
  *(v287 + 304) = 0u;
  *(v287 + 320) = 0u;
  *(v287 + 336) = 0;
  sub_24E601704(v381, &unk_27F22EC30);
  sub_24E601704(v281, &qword_27F213E68);
  sub_24E601704(&v395, &qword_27F235830);
  sub_24E601704(v379, &unk_27F22EC30);
  sub_24E601704(v383, &unk_27F22EC30);
  sub_24E601704(v382, &qword_27F213E68);
  sub_24E601704(v380, &qword_27F213E68);
  result = v287;
  *(v287 + 344) = MEMORY[0x277D84F90];
  *(v287 + 352) = 0;
  *(v287 + 440) = 0;
  *(v287 + 368) = 0;
  return result;
}