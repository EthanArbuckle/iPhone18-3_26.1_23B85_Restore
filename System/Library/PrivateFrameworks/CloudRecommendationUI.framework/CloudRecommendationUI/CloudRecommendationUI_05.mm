double sub_243A91874@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_243A918F4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243AC16B8();
}

uint64_t sub_243A919B8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  MEMORY[0x245D47DE0](v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_243A91A40()
{
  result = qword_27ED99FC8;
  if (!qword_27ED99FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99FC0, &qword_243AC92E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99FC8);
  }

  return result;
}

unint64_t sub_243A91AD4()
{
  result = qword_27ED99FD0;
  if (!qword_27ED99FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99FD8, &qword_243AC93A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99FC0, &qword_243AC92E0);
    sub_243A91A40();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99FD0);
  }

  return result;
}

uint64_t sub_243A91B94(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C10, &qword_243AC4C60);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = a3;
    v12 = a2;
    v13 = a3;

    return MEMORY[0x282200950](v7);
  }
}

uint64_t sub_243A91CB0()
{
  v1 = v0;
  v2 = v0 + 16;
  v3 = v0 + 80;
  v4 = *(v1 + 168);
  v5 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  v6 = v5;
  *(v1 + 152) = v5;
  if (v4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v5 setCachePolicy_];
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 144;
  *(v1 + 24) = sub_243A91E0C;
  v8 = swift_continuation_init();
  *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99700, &unk_243AC6E50);
  *(v1 + 80) = MEMORY[0x277D85DD0];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_243A2A88C;
  *(v1 + 104) = &block_descriptor_11;
  *(v1 + 112) = v8;
  [v6 startRequestWithCompletionHandler_];

  return MEMORY[0x282200938](v2);
}

uint64_t sub_243A91E0C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_243A920F8;
  }

  else
  {
    v3 = sub_243A91F1C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_243A91F1C()
{
  v1 = *(v0 + 144);
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v2 = sub_243AC1468();
  __swift_project_value_buffer(v2, qword_27EDA14A8);
  v3 = v1;
  v4 = sub_243AC1448();
  v5 = sub_243AC2B78();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    v7 = [v3 members];
    sub_243A2CFF0(0, &qword_27ED98C18, 0x277D08268);
    v8 = sub_243AC2998();

    if (v8 >> 62)
    {
      v9 = sub_243AC2DF8();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 4) = v9;
    _os_log_impl(&dword_243A1B000, v4, v5, "User has a family circle with %ld members.", v6, 0xCu);
    MEMORY[0x245D47D20](v6, -1, -1);
    v10 = *(v0 + 152);
  }

  else
  {

    v4 = v3;
    v10 = v3;
  }

  v11 = *(v0 + 8);

  return v11(v3);
}

uint64_t sub_243A920F8()
{
  v1 = v0[20];
  swift_willThrow();
  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v3 = sub_243AC1468();
  __swift_project_value_buffer(v3, qword_27EDA14A8);
  v4 = v2;
  v5 = sub_243AC1448();
  v6 = sub_243AC2B58();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[19];
  v8 = v0[20];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_243A1B000, v5, v6, "Unable to fetch family circle %@", v10, 0xCu);
    sub_243A68FA0(v11);
    MEMORY[0x245D47D20](v11, -1, -1);
    MEMORY[0x245D47D20](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_243A922C0(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_243A92350, 0, 0);
}

uint64_t sub_243A92350()
{
  v40 = v0;
  v39[1] = *MEMORY[0x277D85DE8];
  v1 = v0[3];
  v2 = v0[4];
  v3 = objc_allocWithZone(MEMORY[0x277D08240]);
  v4 = sub_243AC2818();
  v5 = sub_243AC2818();
  v6 = [v3 initWithPropertyName:v4 bundleID:v5];

  v0[2] = 0;
  v7 = [v6 fetchEligibilityWithError_];
  v8 = v0[2];
  v9 = 0x27ED98000uLL;
  if (v8)
  {
    v10 = qword_27ED98910;
    v11 = v8;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = sub_243AC1468();
    __swift_project_value_buffer(v12, qword_27EDA14A8);
    v13 = v11;
    v14 = sub_243AC1448();
    v15 = sub_243AC2B58();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v39[0] = v17;
      *v16 = 136315138;
      v37 = v6;
      v38 = v7;
      v18 = [v13 localizedDescription];
      v19 = v8;
      v20 = sub_243AC2858();
      v22 = v21;

      v23 = v20;
      v8 = v19;
      v24 = sub_243AB73D8(v23, v22, v39);

      *(v16 + 4) = v24;
      v6 = v37;
      v7 = v38;
      _os_log_impl(&dword_243A1B000, v14, v15, "Could not fetch family flow eligibility for Recommendation with error: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x245D47D20](v17, -1, -1);
      v25 = v16;
      v9 = 0x27ED98000;
      MEMORY[0x245D47D20](v25, -1, -1);
    }

    else
    {
    }
  }

  if (*(v9 + 2320) != -1)
  {
    swift_once();
  }

  v26 = v0[4];
  v27 = sub_243AC1468();
  __swift_project_value_buffer(v27, qword_27EDA14A8);

  v28 = sub_243AC1448();
  v29 = sub_243AC2B48();

  if (os_log_type_enabled(v28, v29))
  {
    v31 = v0[3];
    v30 = v0[4];
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v39[0] = v33;
    *v32 = 134218242;
    *(v32 + 4) = v7;
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_243AB73D8(v31, v30, v39);
    _os_log_impl(&dword_243A1B000, v28, v29, "familyFlowEligibilityRequest says user is %lu for %s", v32, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x245D47D20](v33, -1, -1);
    MEMORY[0x245D47D20](v32, -1, -1);
  }

  v34 = v0[1];
  v35 = *MEMORY[0x277D85DE8];

  return v34(v7 == 2);
}

uint64_t sub_243A92724(uint64_t a1)
{
  v1[37] = a1;
  v2 = *(*(sub_243AC1358() - 8) + 64) + 15;
  v1[38] = swift_task_alloc();
  v3 = sub_243AC1378();
  v1[39] = v3;
  v4 = *(v3 - 8);
  v1[40] = v4;
  v5 = *(v4 + 64) + 15;
  v1[41] = swift_task_alloc();
  v6 = sub_243AC1208();
  v1[42] = v6;
  v7 = *(v6 - 8);
  v1[43] = v7;
  v8 = *(v7 + 64) + 15;
  v1[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243A9286C, 0, 0);
}

uint64_t sub_243A9286C()
{
  v0[45] = sub_243AC2818();
  v1 = [objc_allocWithZone(MEMORY[0x277D08348]) init];
  v0[46] = v1;
  v0[2] = v0;
  v0[7] = v0 + 36;
  v0[3] = sub_243A929C4;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99FE0, &qword_243AC9408);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_243A2A88C;
  v0[21] = &block_descriptor_4;
  v0[22] = v2;
  [v1 fetchAAURLConfigurationWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_243A929C4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 376) = v2;
  if (v2)
  {
    v3 = sub_243A9324C;
  }

  else
  {
    v3 = sub_243A92AD4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_243A92AD4()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[36];
  v0[48] = v3;

  v4 = [v3 urlForEndpoint_];
  if (v4)
  {
    v5 = v0[44];
    v6 = v0[37];
    v7 = v4;
    sub_243AC11D8();

    sub_243AC11B8();
    v8 = objc_allocWithZone(MEMORY[0x277D083C0]);
    v9 = sub_243AC2818();

    v10 = [v8 initWithAppleAccount:v6 urlString:v9];
    v0[49] = v10;

    v0[10] = v0;
    v0[15] = v0 + 34;
    v0[11] = sub_243A92D6C;
    v11 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99FF0, &unk_243AC9410);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_243A91B94;
    v0[29] = &block_descriptor_7;
    v0[30] = v11;
    [v10 performRequestWithHandler_];

    return MEMORY[0x282200938](v0 + 10);
  }

  else
  {
    v12 = v0[45];
    v14 = v0[40];
    v13 = v0[41];
    v15 = v0[38];
    v16 = v0[39];
    sub_243AC1348();
    sub_243A2E2B4(MEMORY[0x277D84F90]);
    sub_243A933B0();
    sub_243AC1198();
    sub_243AC1368();
    (*(v14 + 8))(v13, v16);
    swift_willThrow();

    v17 = v0[44];
    v18 = v0[41];
    v19 = v0[38];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_243A92D6C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 400) = v2;
  if (v2)
  {
    v3 = sub_243A932E4;
  }

  else
  {
    v3 = sub_243A92E7C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_243A92E7C()
{
  v1 = *(v0 + 280);
  if (!v1)
  {
    goto LABEL_21;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2 || (v3 = [v2 services]) == 0)
  {

LABEL_21:
    v20 = *(v0 + 384);
    v21 = *(v0 + 392);
    v22 = *(v0 + 360);
    v23 = *(v0 + 344);
    v47 = *(v0 + 336);
    v48 = *(v0 + 352);
    v25 = *(v0 + 320);
    v24 = *(v0 + 328);
    v26 = *(v0 + 304);
    v27 = *(v0 + 312);
    sub_243AC1338();
    sub_243A2E2B4(MEMORY[0x277D84F90]);
    sub_243A933B0();
    sub_243AC1198();
    sub_243AC1368();
    (*(v25 + 8))(v24, v27);
    swift_willThrow();

    (*(v23 + 8))(v48, v47);
    v28 = *(v0 + 352);
    v29 = *(v0 + 328);
    v30 = *(v0 + 304);

    v31 = *(v0 + 8);

    return v31();
  }

  v4 = v3;
  sub_243A2CFF0(0, &qword_27ED99FF8, 0x277D08338);
  v5 = sub_243AC2998();

  v46 = v1;
  if (v5 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_243AC2DF8())
  {
    v7 = 0;
    v8 = 0xEE00454741524F54;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x245D470F0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = [v9 name];
      if (v12)
      {
        v13 = v8;
        v14 = v12;
        v15 = sub_243AC2858();
        v17 = v16;

        if (v15 == 0x535F44554F4C4349 && v17 == v13)
        {

LABEL_25:
          v33 = *(v0 + 384);
          v34 = *(v0 + 392);
          v35 = *(v0 + 360);
          (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));

          goto LABEL_30;
        }

        v8 = v13;
        v19 = sub_243AC2EE8();

        if (v19)
        {
          goto LABEL_25;
        }
      }

      ++v7;
      if (v11 == i)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_29:
  v36 = *(v0 + 384);
  v37 = *(v0 + 392);
  v38 = *(v0 + 352);
  v39 = *(v0 + 360);
  v40 = *(v0 + 336);
  v41 = *(v0 + 344);

  (*(v41 + 8))(v38, v40);
  v10 = 0;
LABEL_30:
  v42 = *(v0 + 352);
  v43 = *(v0 + 328);
  v44 = *(v0 + 304);

  v45 = *(v0 + 8);

  return v45(v10);
}

uint64_t sub_243A9324C()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[45];
  swift_willThrow();

  v4 = v0[47];
  v5 = v0[44];
  v6 = v0[41];
  v7 = v0[38];

  v8 = v0[1];

  return v8();
}

uint64_t sub_243A932E4()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  v4 = v0[44];
  v5 = v0[45];
  v6 = v0[42];
  v7 = v0[43];
  swift_willThrow();

  (*(v7 + 8))(v4, v6);
  v8 = v0[50];
  v9 = v0[44];
  v10 = v0[41];
  v11 = v0[38];

  v12 = v0[1];

  return v12();
}

unint64_t sub_243A933B0()
{
  result = qword_27ED99FE8;
  if (!qword_27ED99FE8)
  {
    sub_243AC1378();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99FE8);
  }

  return result;
}

void RecommendationTestRow.init(recommendationsController:title:recommendation:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = 0;
  sub_243AC2058();
  v10 = v20;
  *(a5 + 40) = v19;
  *(a5 + 48) = v10;
  type metadata accessor for RecommendationsController();
  sub_243A63E78();

  *a5 = sub_243AC1828();
  *(a5 + 8) = v11;
  v12 = [objc_opt_self() defaultStore];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 aa_primaryAppleAccount];

    if (v14)
    {
      v15 = type metadata accessor for RecommendationsLiftUIPresenter();
      v16 = objc_allocWithZone(v15);
      *&v16[OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationsLiftUIPresenter_activeRecommendation] = 0;
      *&v16[OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationsLiftUIPresenter_recommendationsController] = a1;
      *&v16[OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationsLiftUIPresenter_account] = v14;
      *&v16[OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationsLiftUIPresenter_data] = xmmword_243AC9430;
      v17.receiver = v16;
      v17.super_class = v15;
      *(a5 + 16) = objc_msgSendSuper2(&v17, sel_init);
      *(a5 + 24) = a2;
      *(a5 + 32) = a3;
      *(a5 + 56) = a4;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t RecommendationTestRow.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A000, &unk_243AC9440);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15[-v4];
  v6 = v0[1];
  v19 = *v0;
  v20 = v6;
  v7 = v0[3];
  *v21 = v0[2];
  *&v21[16] = v7;
  v8 = swift_allocObject();
  v9 = v0[1];
  v8[1] = *v0;
  v8[2] = v9;
  v10 = v0[3];
  v8[3] = v0[2];
  v8[4] = v10;
  v16 = &v19;
  sub_243A9397C(&v19, &v18);
  sub_243AC20A8();
  v17 = *&v21[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D28, &qword_243AC8810);
  sub_243AC2088();
  v11 = swift_allocObject();
  v12 = v20;
  v11[1] = v19;
  v11[2] = v12;
  v13 = *&v21[16];
  v11[3] = *v21;
  v11[4] = v13;
  sub_243A9397C(&v19, &v18);
  sub_243A93A94();
  sub_243A93AF8();
  sub_243AC1F28();

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_243A937D8()
{
  v2 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D28, &qword_243AC8810);
  return sub_243AC2078();
}

uint64_t sub_243A93830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = *(a1 + 24);
  v22 = *(a1 + 32);
  sub_243A4FC18();

  v3 = sub_243AC1D88();
  v5 = v4;
  v7 = v6;
  sub_243AC1C98();
  v8 = sub_243AC1D68();
  v10 = v9;
  v12 = v11;

  sub_243A82874(v3, v5, v7 & 1);

  sub_243AC1F88();
  v13 = sub_243AC1D38();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_243A82874(v8, v10, v12 & 1);

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
  return result;
}

double sub_243A939B4@<D0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v10 = *a1;
  v3 = *(&v10 + 1);
  v4 = *(a1 + 7);
  v5 = *(a1 + 2);
  sub_243A93C8C(&v10, v8);
  sub_243AB8A60(v3, v4, v5, v8);
  v6 = v8[1];
  *a2 = v8[0];
  a2[1] = v6;
  result = *&v9;
  a2[2] = v9;
  return result;
}

uint64_t objectdestroyTm_9()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

unint64_t sub_243A93A94()
{
  result = qword_27ED9A008;
  if (!qword_27ED9A008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A000, &unk_243AC9440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A008);
  }

  return result;
}

unint64_t sub_243A93AF8()
{
  result = qword_27ED9A010;
  if (!qword_27ED9A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A010);
  }

  return result;
}

uint64_t sub_243A93B6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_243A93BB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243A93C14()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A000, &unk_243AC9440);
  sub_243A93A94();
  sub_243A93AF8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_243A93C8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D50, "̦");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A93D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243AC1618();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_243A93E40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_243AC1618();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for PageMetricsModifier()
{
  result = qword_27ED9A018;
  if (!qword_27ED9A018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243A93FA0()
{
  sub_243AC1618();
  if (v0 <= 0x3F)
  {
    sub_243A222D0();
    if (v1 <= 0x3F)
    {
      sub_243A9403C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_243A9403C()
{
  result = qword_27ED9A028;
  if (!qword_27ED9A028)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27ED9A028);
  }

  return result;
}

uint64_t sub_243A940B4()
{
  if (*v0)
  {
    result = 0x6570795465676170;
  }

  else
  {
    result = 0x644965676170;
  }

  *v0;
  return result;
}

uint64_t sub_243A940EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x644965676170 && a2 == 0xE600000000000000;
  if (v6 || (sub_243AC2EE8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6570795465676170 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_243AC2EE8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_243A941D0(uint64_t a1)
{
  v2 = sub_243A9526C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243A9420C(uint64_t a1)
{
  v2 = sub_243A9526C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_243A94248@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  v28 = sub_243AC1618();
  v25 = *(v28 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v28);
  v27 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A048, &qword_243AC95F8);
  v26 = *(v29 - 8);
  v9 = *(v26 + 64);
  MEMORY[0x28223BE20](v29);
  v11 = &v23 - v10;
  v12 = type metadata accessor for PageMetricsModifier();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v16[*(v14 + 24)];
  sub_243AC2608();
  v18 = sub_243AC25F8();
  v19 = MEMORY[0x277D221C0];
  *v17 = v18;
  v17[1] = v19;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243A9526C();
  v21 = v30;
  sub_243AC2FE8();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v30 = v6;
    v32 = 0;
    sub_243A952C0(&qword_27ED98AC8, MEMORY[0x277D23340]);
    sub_243AC2E88();
    (*(v25 + 32))(v16, v27, v28);
    v31 = 1;
    sub_243AC2E78();
    (*(v26 + 8))(v11, v29);
    sub_243A95308(v30, &v16[*(v12 + 20)]);
    sub_243A95378(v16, v24);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_243A953DC(v16);
  }
}

uint64_t sub_243A94614@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v81 = a3;
  v88 = a2;
  v85 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99698, &unk_243AC6DB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v73 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED996A0, &unk_243AC95E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v78 = &v73 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED995A0, qword_243AC6D10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v83 = &v73 - v15;
  v84 = sub_243AC2438();
  v82 = *(v84 - 8);
  v16 = *(v82 + 8);
  v17 = MEMORY[0x28223BE20](v84);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v73 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v73 - v24;
  v26 = sub_243AC2388();
  v86 = *(v26 - 8);
  v27 = *(v86 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243A65CBC(v29);
  v30 = sub_243AC22F8();
  v79 = v9;
  v80 = v21;
  if (v30)
  {
    v31 = v29;
  }

  else
  {
    sub_243A2E2B4(MEMORY[0x277D84F90]);
    v31 = v29;
    sub_243AC2308();
  }

  v32 = v87;
  v33 = sub_243AC1608();
  if (v4)
  {
    return (*(v86 + 8))(v31, v26);
  }

  v36 = v33;
  v37 = v34;
  v77 = v26;
  v76 = a4;
  v74 = type metadata accessor for PageMetricsModifier();
  sub_243A951FC(&v32[*(v74 + 20)], v25);
  v38 = sub_243AC1618();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v25, 1, v38) == 1)
  {
    v88 = 0;
    sub_243A2251C(v25, &qword_27ED98A40, &qword_243AC4850);
    v73 = 0;
    v75 = 0;
  }

  else
  {
    v73 = sub_243AC1608();
    v75 = v40;
    v88 = 0;
    (*(v39 + 8))(v25, v38);
  }

  v41 = v31;
  v42 = sub_243AC22E8();
  v44 = v77;
  if (*v43)
  {
    *(&v94 + 1) = MEMORY[0x277D837D0];
    *&v93 = v36;
    *(&v93 + 1) = v37;
    sub_243A887CC(&v93, 0x644965676170, 0xE600000000000000);
  }

  else
  {
  }

  v42(&v96, 0);
  v45 = sub_243AC22E8();
  if (*v46)
  {
    if (v75)
    {
      v47 = MEMORY[0x277D837D0];
      v48 = v73;
    }

    else
    {
      v48 = 0;
      v47 = 0;
      *&v94 = 0;
    }

    *&v93 = v48;
    *(&v93 + 1) = v75;
    *(&v94 + 1) = v47;
    sub_243A887CC(&v93, 0x6570795465676170, 0xE800000000000000);
    v45(&v96, 0);
  }

  else
  {

    v45(&v96, 0);
  }

  *&v93 = v81;
  sub_243AC15C8();
  sub_243A952C0(&qword_27ED9A038, MEMORY[0x277D232E8]);

  sub_243AC2958();
  sub_243AC2E38();
  v49 = v84;
  if (*(&v93 + 1))
  {
    while (1)
    {
      v90 = v93;
      v91 = v94;
      v92 = v95;
      sub_243A20058(&v91, v89);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_243A2251C(&v90, &qword_27ED9A040, &qword_243AC95F0);
      sub_243AC2E38();
      if (!*(&v93 + 1))
      {
        goto LABEL_21;
      }
    }

    v56 = v82;
    v57 = v82 + 8;
    v81 = *(v82 + 1);
    v81(v19, v49);

    v96 = v90;
    v97 = v91;
    v98 = v92;

    sub_243A21C48(&v97, &v99);
    v50 = v83;
    v58 = swift_dynamicCast();
    (*(v56 + 7))(v50, v58 ^ 1u, 1, v49);
    if ((*(v56 + 6))(v50, 1, v49) != 1)
    {
      (*(v56 + 4))(v80, v50, v49);
      v59 = v85[3];
      v60 = v85[4];
      __swift_project_boxed_opaque_existential_1(v85, v59);
      *&v96 = v59;
      *(&v96 + 1) = v60;
      *(&v97 + 1) = swift_getOpaqueTypeMetadata2();
      *&v93 = v59;
      *(&v93 + 1) = v60;
      *&v98 = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(&v96);
      sub_243AC1DF8();
      v61 = *(&v97 + 1);
      v62 = v98;
      v85 = __swift_project_boxed_opaque_existential_1(&v96, *(&v97 + 1));
      v63 = v86;
      v64 = v78;
      (*(v86 + 16))(v78, v41, v44);
      (*(v63 + 56))(v64, 0, 1, v44);
      v65 = &v87[*(v74 + 24)];
      v67 = *v65;
      v66 = v65[1];
      v83 = v67;
      v82 = v66;
      v68 = sub_243AC1398();
      v69 = v79;
      (*(*(v68 - 8) + 56))(v79, 1, 1, v68);
      *&v93 = v61;
      *(&v93 + 1) = v62;
      v87 = v57;
      OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
      v71 = v76;
      v76[3] = OpaqueTypeMetadata2;
      *&v93 = v61;
      *(&v93 + 1) = v62;
      v71[4] = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(v71);
      v72 = v80;
      sub_243AC1DA8();
      sub_243A2251C(v69, &qword_27ED99698, &unk_243AC6DB0);
      sub_243A2251C(v64, &qword_27ED996A0, &unk_243AC95E0);
      v81(v72, v49);
      (*(v63 + 8))(v41, v77);
      return __swift_destroy_boxed_opaque_existential_1(&v96);
    }
  }

  else
  {
LABEL_21:

    v50 = v83;
    (*(v82 + 7))(v83, 1, 1, v49);
  }

  v51 = v76;
  sub_243A2251C(v50, &unk_27ED995A0, qword_243AC6D10);
  if (qword_27ED98920 != -1)
  {
    swift_once();
  }

  v52 = sub_243AC1468();
  __swift_project_value_buffer(v52, qword_27EDA14D8);
  v53 = sub_243AC1448();
  v54 = sub_243AC2B58();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_243A1B000, v53, v54, "No metrics pipeline found", v55, 2u);
    MEMORY[0x245D47D20](v55, -1, -1);
  }

  (*(v86 + 8))(v41, v44);
  return sub_243A223D4(v85, v51);
}

uint64_t sub_243A951FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_243A9526C()
{
  result = qword_27ED9A050;
  if (!qword_27ED9A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A050);
  }

  return result;
}

uint64_t sub_243A952C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243A95308(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A95378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageMetricsModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A953DC(uint64_t a1)
{
  v2 = type metadata accessor for PageMetricsModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for PageMetricsModifier.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PageMetricsModifier.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_243A95598()
{
  result = qword_27ED9A058;
  if (!qword_27ED9A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A058);
  }

  return result;
}

unint64_t sub_243A955F0()
{
  result = qword_27ED9A060;
  if (!qword_27ED9A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A060);
  }

  return result;
}

unint64_t sub_243A95648()
{
  result = qword_27ED9A068;
  if (!qword_27ED9A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A068);
  }

  return result;
}

uint64_t sub_243A9569C()
{
  v0 = sub_243AC1468();
  __swift_allocate_value_buffer(v0, qword_27EDA14A8);
  __swift_project_value_buffer(v0, qword_27EDA14A8);

  return sub_243AC1458();
}

uint64_t sub_243A95794(uint64_t a1, uint64_t *a2)
{
  v3 = sub_243AC1468();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);

  return sub_243AC1458();
}

uint64_t sub_243A9581C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_243A95864(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_243A958CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_243AC1AA8();
  v13 = 0;
  sub_243A95A00(a1);
  memcpy(__dst, __src, 0x231uLL);
  memcpy(v15, __src, 0x231uLL);
  sub_243A224B4(__dst, &v10, &qword_27ED9A080, &qword_243AC97C8);
  sub_243A2251C(v15, &qword_27ED9A080, &qword_243AC97C8);
  memcpy(&v12[7], __dst, 0x231uLL);
  v5 = v13;
  v6 = (sub_243AC2128() & 1) == 0;
  KeyPath = swift_getKeyPath();
  __src[0] = sub_243AC1F98();
  v8 = sub_243AC20C8();
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  result = memcpy((a2 + 17), v12, 0x238uLL);
  *(a2 + 592) = KeyPath;
  *(a2 + 600) = v6;
  *(a2 + 608) = v8;
  return result;
}

void sub_243A95A00(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v3 = sub_243AC2018();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RecommendationsController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v98 = objc_opt_self();
  v99 = ObjCClassFromMetadata;
  v9 = [v98 bundleForClass_];
  v10 = sub_243AC2818();
  v11 = [objc_opt_self() imageNamed:v10 inBundle:v9];

  if (v11)
  {
    sub_243AC1FE8();
    (*(v4 + 104))(v7, *MEMORY[0x277CE0FE0], v3);
    v102 = sub_243AC2038();

    (*(v4 + 8))(v7, v3);
    sub_243AC2138();
    sub_243AC17C8();
    v220 = 1;
    *&v219[6] = v223;
    *&v219[22] = v224;
    *&v219[38] = v225;
    LODWORD(v100) = sub_243AC2128();
    v101 = sub_243AC1C48();
    v221 = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_243AC16A8();

    v103 = v2;
    if (v204[0])
    {
      v99 = v204[0];
      v12 = [v204[0] title];
      v13 = sub_243AC2858();
      v15 = v14;

      v204[0] = v13;
      v204[1] = v15;
      v98 = sub_243A4FC18();
      v16 = sub_243AC1D88();
      v18 = v17;
      v20 = v19;
      if (sub_243AC2128())
      {
        sub_243AC1CD8();
      }

      else
      {
        sub_243AC1CA8();
      }

      v27 = sub_243AC1D68();
      v29 = v28;
      v31 = v30;

      sub_243A82874(v16, v18, v20 & 1);

      v32 = sub_243AC1D58();
      v34 = v33;
      v36 = v35;
      v38 = v37;
      sub_243A82874(v27, v29, v31 & 1);

      v39 = sub_243AC1C48();
      v40 = v36 & 1;
      v215 = v40;
      v214 = 0;
      if (sub_243AC2128())
      {
        sub_243AC2148();
      }

      else
      {
        sub_243AC2138();
      }

      sub_243AC18E8();
      *&v136[55] = v229;
      *&v136[71] = v230;
      *&v136[87] = v231;
      *&v136[103] = v232;
      *&v136[7] = v226;
      *&v136[23] = v227;
      *&v136[39] = v228;
      KeyPath = swift_getKeyPath();
      v216 = 1;
      *&v197 = v32;
      *(&v197 + 1) = v34;
      LOBYTE(v198) = v40;
      LOBYTE(v199) = v39;
      *(&v198 + 1) = v38;
      *(&v199 + 1) = 0x4024000000000000;
      v200 = 0uLL;
      BYTE8(v201[0]) = 0;
      *(&v201[4] + 9) = *&v136[64];
      *(&v201[5] + 9) = *&v136[80];
      *(&v201[6] + 9) = *&v136[96];
      *&v201[0] = 0;
      *(&v201[7] + 1) = *&v136[111];
      *(v201 + 9) = *v136;
      *(&v201[1] + 9) = *&v136[16];
      *(&v201[2] + 9) = *&v136[32];
      *(&v201[3] + 9) = *&v136[48];
      v202 = KeyPath;
      v203 = 1;
      v42 = [v99 subTitle];
      v43 = sub_243AC2858();
      v45 = v44;

      v204[0] = v43;
      v204[1] = v45;
      v46 = sub_243AC1D88();
      v48 = v47;
      v50 = v49;
      if (sub_243AC2128())
      {
        sub_243AC1CD8();
      }

      else
      {
        sub_243AC1C98();
      }

      v51 = sub_243AC1D68();
      v53 = v52;
      v55 = v54;
      v57 = v56;

      sub_243A82874(v46, v48, v50 & 1);

      if (sub_243AC2128())
      {
        sub_243AC2148();
      }

      else
      {
        sub_243AC2138();
      }

      sub_243AC18E8();
      v58 = v55 & 1;
      v134 = v55 & 1;
      if (sub_243AC2128())
      {
        v59 = 0x4000000000000000;
      }

      else
      {
        v59 = 0x4014000000000000;
      }

      v60 = sub_243AC1C48();
      v212 = 0;
      v61 = swift_getKeyPath();
      v213 = 1;
      if (sub_243AC2128())
      {
        v62 = sub_243AC1FD8();
      }

      else
      {
        v62 = sub_243AC1FC8();
      }

      *&v119 = v51;
      *(&v119 + 1) = v53;
      LOBYTE(v120) = v58;
      *(&v120 + 1) = v57;
      v123[2] = v131;
      v123[3] = v132;
      v123[4] = v133;
      v121 = v127;
      v122 = v128;
      v123[0] = v129;
      v123[1] = v130;
      LOBYTE(v123[5]) = v60;
      *(&v123[5] + 1) = v59;
      memset(&v123[6], 0, 25);
      v124 = v61;
      LOBYTE(v125) = 1;
      *(&v125 + 1) = v135[0];
      DWORD1(v125) = *(v135 + 3);
      *(&v125 + 1) = v62;
      v115 = v201[6];
      v116 = v201[7];
      v117 = v202;
      v111 = v201[2];
      v112 = v201[3];
      v113 = v201[4];
      v114 = v201[5];
      v107 = v199;
      v108 = v200;
      v109 = v201[0];
      v110 = v201[1];
      v105 = v197;
      v106 = v198;
      v193 = 0u;
      v194 = v123[7];
      v195 = v61;
      v196 = v125;
      v189 = v131;
      v190 = v132;
      v191 = v133;
      v192 = v123[5];
      v185 = v127;
      v186 = v128;
      v187 = v129;
      v188 = v130;
      v183 = v119;
      v184 = v120;
      v151 = v201[6];
      v152 = v201[7];
      v153 = v202;
      v147 = v201[2];
      v148 = v201[3];
      v149 = v201[4];
      v150 = v201[5];
      v143 = v199;
      v144 = v200;
      v145 = v201[0];
      v146 = v201[1];
      v141 = v197;
      v142 = v198;
      v104[10] = v201[6];
      v104[11] = v201[7];
      v104[12] = v202;
      v104[6] = v201[2];
      v104[7] = v201[3];
      v104[8] = v201[4];
      v104[9] = v201[5];
      v104[2] = v199;
      v104[3] = v200;
      v104[4] = v201[0];
      v104[5] = v201[1];
      v104[0] = v197;
      v104[1] = v198;
      v165 = 0u;
      v166 = v123[7];
      v167 = v61;
      v168 = v125;
      v161 = v131;
      v162 = v132;
      v163 = v133;
      v164 = v123[5];
      v157 = v127;
      v158 = v128;
      v159 = v129;
      v160 = v130;
      v155 = v119;
      v156 = v120;
      *(&v104[24] + 8) = v123[7];
      *(&v104[25] + 8) = v61;
      *(&v104[26] + 8) = v125;
      *(&v104[20] + 8) = v132;
      *(&v104[21] + 8) = v133;
      *(&v104[22] + 8) = v123[5];
      *(&v104[23] + 8) = 0u;
      *(&v104[16] + 8) = v128;
      *(&v104[17] + 8) = v129;
      *(&v104[18] + 8) = v130;
      *(&v104[19] + 8) = v131;
      *(&v104[15] + 8) = v127;
      *(&v104[13] + 8) = v119;
      v118 = v203;
      v154 = v203;
      LOBYTE(v104[13]) = v203;
      *(&v104[14] + 8) = v120;
      memcpy(v126, v104, 0x1B8uLL);
      sub_243A224B4(&v197, v204, &qword_27ED9A088, &qword_243AC9878);
      sub_243A224B4(&v119, v204, &qword_27ED9A090, &qword_243AC9880);
      sub_243A224B4(&v141, v204, &qword_27ED9A088, &qword_243AC9878);
      sub_243A224B4(&v155, v204, &qword_27ED9A090, &qword_243AC9880);
      sub_243A2251C(&v183, &qword_27ED9A090, &qword_243AC9880);
      v179 = v115;
      v180 = v116;
      v181 = v117;
      v182 = v118;
      v175 = v111;
      v176 = v112;
      v177 = v113;
      v178 = v114;
      v171 = v107;
      v172 = v108;
      v173 = v109;
      v174 = v110;
      v169 = v105;
      v170 = v106;
      sub_243A2251C(&v169, &qword_27ED9A088, &qword_243AC9878);
      memcpy(v204, v104, 0x1B8uLL);
      sub_243A97098(v204);
      memcpy(v138, v204, 0x1B9uLL);
      sub_243A224B4(v126, v139, &qword_27ED9A0B8, &qword_243AC98A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A098, &qword_243AC9888);
      sub_243A491E8(&qword_27ED9A0A0, &qword_27ED9A098, &qword_243AC9888);
      sub_243AC1AE8();

      sub_243A2251C(v126, &qword_27ED9A0B8, &qword_243AC98A0);
      sub_243A2251C(&v119, &qword_27ED9A090, &qword_243AC9880);
      sub_243A2251C(&v197, &qword_27ED9A088, &qword_243AC9878);
      memcpy(v218, v139, sizeof(v218));
    }

    else
    {
      sub_243AC1A88();
      v21 = [v98 bundleForClass_];
      v22 = sub_243AC1D78();
      v24 = v23;
      v26 = v25;
      if (sub_243AC2128())
      {
        sub_243AC1CD8();
      }

      else
      {
        sub_243AC1CA8();
      }

      v63 = sub_243AC1D68();
      v65 = v64;
      v67 = v66;

      sub_243A82874(v22, v24, v26 & 1);

      v68 = sub_243AC1D58();
      v70 = v69;
      v72 = v71;
      v74 = v73;
      sub_243A82874(v63, v65, v67 & 1);

      v75 = sub_243AC1C48();
      v76 = v72 & 1;
      v216 = v76;
      v215 = 0;
      if (sub_243AC2128())
      {
        sub_243AC2148();
      }

      else
      {
        sub_243AC2138();
      }

      sub_243AC18E8();
      *&v217[55] = v108;
      *&v217[71] = v109;
      *&v217[87] = v110;
      *&v217[103] = v111;
      *&v217[7] = v105;
      *&v217[23] = v106;
      *&v217[39] = v107;
      v77 = swift_getKeyPath();
      *(&v123[4] + 9) = *&v217[64];
      *(&v123[5] + 9) = *&v217[80];
      *(&v123[6] + 9) = *&v217[96];
      *(v123 + 9) = *v217;
      *(&v123[1] + 9) = *&v217[16];
      *(&v123[2] + 9) = *&v217[32];
      LOBYTE(v135[0]) = 1;
      *&v119 = v68;
      *(&v119 + 1) = v70;
      LOBYTE(v120) = v76;
      *(&v120 + 1) = v74;
      LOBYTE(v121) = v75;
      *(&v121 + 1) = 0x4024000000000000;
      v122 = 0uLL;
      *&v123[0] = 0;
      BYTE8(v123[0]) = 0;
      *(&v123[3] + 9) = *&v217[48];
      *(&v123[7] + 1) = *&v217[111];
      v124 = v77;
      LOBYTE(v125) = 1;
      sub_243AC1A88();
      v78 = [v98 bundleForClass_];
      v79 = sub_243AC1D78();
      v81 = v80;
      v83 = v82;
      if (sub_243AC2128())
      {
        sub_243AC1CD8();
      }

      else
      {
        sub_243AC1C98();
      }

      v84 = sub_243AC1D68();
      v86 = v85;
      v88 = v87;
      v90 = v89;

      sub_243A82874(v79, v81, v83 & 1);

      if (sub_243AC2128())
      {
        sub_243AC2148();
      }

      else
      {
        sub_243AC2138();
      }

      sub_243AC18E8();
      v91 = v88 & 1;
      v212 = v88 & 1;
      v92 = sub_243AC1C48();
      v213 = 0;
      v93 = swift_getKeyPath();
      v214 = 1;
      if (sub_243AC2128())
      {
        v94 = sub_243AC1FD8();
      }

      else
      {
        v94 = sub_243AC1FC8();
      }

      *&v155 = v84;
      *(&v155 + 1) = v86;
      LOBYTE(v156) = v91;
      *(&v156 + 1) = v90;
      v161 = v209;
      v162 = v210;
      v163 = v211;
      v157 = v205;
      v158 = v206;
      v160 = v208;
      v159 = v207;
      LOBYTE(v164) = v92;
      *(&v164 + 1) = 0x4014000000000000;
      v165 = 0uLL;
      *&v166 = 0;
      BYTE8(v166) = 0;
      v167 = v93;
      LOBYTE(v168) = 1;
      *(&v168 + 1) = v226;
      DWORD1(v168) = *(&v226 + 3);
      *(&v168 + 1) = v94;
      v151 = v123[6];
      v152 = v123[7];
      v153 = v124;
      v147 = v123[2];
      v148 = v123[3];
      v149 = v123[4];
      v150 = v123[5];
      v143 = v121;
      v144 = v122;
      v145 = v123[0];
      v146 = v123[1];
      v141 = v119;
      v142 = v120;
      v126[10] = 0u;
      v126[11] = v166;
      v126[12] = v93;
      v126[13] = v168;
      v126[6] = v209;
      v126[7] = v210;
      v126[8] = v211;
      v126[9] = v164;
      v126[2] = v205;
      v126[3] = v206;
      v126[4] = v207;
      v126[5] = v208;
      v126[0] = v155;
      v126[1] = v156;
      v179 = v123[6];
      v180 = v123[7];
      v181 = v124;
      v175 = v123[2];
      v176 = v123[3];
      v177 = v123[4];
      v178 = v123[5];
      v171 = v121;
      v172 = v122;
      v173 = v123[0];
      v174 = v123[1];
      v169 = v119;
      v170 = v120;
      v140[10] = v123[6];
      v140[11] = v123[7];
      v140[12] = v124;
      v140[6] = v123[2];
      v140[7] = v123[3];
      v140[8] = v123[4];
      v140[9] = v123[5];
      v140[2] = v121;
      v140[3] = v122;
      v140[4] = v123[0];
      v140[5] = v123[1];
      v140[0] = v119;
      v140[1] = v120;
      v193 = 0u;
      v194 = v166;
      v195 = v93;
      v196 = v168;
      v189 = v209;
      v190 = v210;
      v191 = v211;
      v192 = v164;
      v185 = v205;
      v186 = v206;
      v187 = v207;
      v188 = v208;
      v183 = v155;
      v184 = v156;
      *(&v140[24] + 8) = v166;
      *(&v140[25] + 8) = v93;
      *(&v140[26] + 8) = v168;
      *(&v140[20] + 8) = v210;
      *(&v140[21] + 8) = v211;
      *(&v140[22] + 8) = v164;
      *(&v140[23] + 8) = 0u;
      *(&v140[16] + 8) = v206;
      *(&v140[17] + 8) = v207;
      *(&v140[18] + 8) = v208;
      *(&v140[19] + 8) = v209;
      *(&v140[15] + 8) = v205;
      *(&v140[13] + 8) = v155;
      v154 = v125;
      v182 = v125;
      LOBYTE(v140[13]) = v125;
      *(&v140[14] + 8) = v156;
      sub_243A224B4(&v119, v204, &qword_27ED9A088, &qword_243AC9878);
      sub_243A224B4(&v155, v204, &qword_27ED9A090, &qword_243AC9880);
      sub_243A224B4(&v169, v204, &qword_27ED9A088, &qword_243AC9878);
      sub_243A224B4(&v183, v204, &qword_27ED9A090, &qword_243AC9880);
      sub_243A2251C(v126, &qword_27ED9A090, &qword_243AC9880);
      v201[6] = v151;
      v201[7] = v152;
      v202 = v153;
      v203 = v154;
      v201[2] = v147;
      v201[3] = v148;
      v201[4] = v149;
      v201[5] = v150;
      v199 = v143;
      v200 = v144;
      v201[0] = v145;
      v201[1] = v146;
      v197 = v141;
      v198 = v142;
      sub_243A2251C(&v197, &qword_27ED9A088, &qword_243AC9878);
      memcpy(v204, v140, 0x1B8uLL);
      sub_243A9708C(v204);
      memcpy(v138, v204, 0x1B9uLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A098, &qword_243AC9888);
      sub_243A491E8(&qword_27ED9A0A0, &qword_27ED9A098, &qword_243AC9888);
      sub_243AC1AE8();
      sub_243A2251C(&v155, &qword_27ED9A090, &qword_243AC9880);
      sub_243A2251C(&v119, &qword_27ED9A088, &qword_243AC9878);
      memcpy(v218, v139, sizeof(v218));
    }

    if (v100)
    {
      v95 = 0x4034000000000000;
    }

    else
    {
      v95 = 0;
    }

    v96 = v102;
    v126[0] = v102;
    LOWORD(v126[1]) = 1;
    *(&v126[1] + 2) = *v219;
    *(&v126[2] + 2) = *&v219[16];
    *(&v126[3] + 2) = *&v219[32];
    *&v126[4] = *&v219[46];
    v97 = v101;
    BYTE8(v126[4]) = v101;
    *(&v126[4] + 9) = *v222;
    HIDWORD(v126[4]) = *&v222[3];
    v100 = xmmword_243AC9720;
    v126[5] = xmmword_243AC9720;
    v126[6] = v95;
    LOBYTE(v126[7]) = 0;
    v137[0] = v102;
    v137[1] = v126[1];
    v137[2] = v126[2];
    v137[3] = v126[3];
    LOBYTE(v137[7]) = 0;
    v137[6] = v95;
    v137[5] = xmmword_243AC9720;
    v137[4] = v126[4];
    memcpy(v139, v218, 0x1B9uLL);
    memcpy(&v137[7] + 8, v218, 0x1B9uLL);
    memcpy(v103, v137, 0x231uLL);
    memcpy(v204, v218, 0x1B9uLL);
    sub_243A224B4(v126, v138, &qword_27ED9A0A8, &qword_243AC9890);
    sub_243A224B4(v139, v138, &qword_27ED9A0B0, &qword_243AC9898);
    sub_243A2251C(v204, &qword_27ED9A0B0, &qword_243AC9898);
    *(&v138[1] + 2) = *v219;
    v138[0] = v96;
    LOWORD(v138[1]) = 1;
    *(&v138[2] + 2) = *&v219[16];
    *(&v138[3] + 2) = *&v219[32];
    *&v138[4] = *&v219[46];
    BYTE8(v138[4]) = v97;
    *(&v138[4] + 9) = *v222;
    HIDWORD(v138[4]) = *&v222[3];
    v138[5] = v100;
    v138[6] = v95;
    LOBYTE(v138[7]) = 0;
    sub_243A2251C(v138, &qword_27ED9A0A8, &qword_243AC9890);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_243A97028@<X0>(uint64_t a1@<X8>)
{
  result = sub_243AC19F8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_243A9705C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_243AC1A08();
}

unint64_t sub_243A970A4()
{
  result = qword_27ED9A0C0;
  if (!qword_27ED9A0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A0C8, &qword_243AC98A8);
    sub_243A9715C();
    sub_243A491E8(&qword_27ED99C48, &qword_27ED99C50, &qword_243AC8690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A0C0);
  }

  return result;
}

unint64_t sub_243A9715C()
{
  result = qword_27ED9A0D0;
  if (!qword_27ED9A0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A0D8, &qword_243AC98B0);
    sub_243A491E8(&qword_27ED9A0E0, &qword_27ED9A0E8, &qword_243AC98B8);
    sub_243A491E8(&qword_27ED99CE0, &qword_27ED99CE8, &qword_243AC8770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A0D0);
  }

  return result;
}

uint64_t ContextualRecommendationView.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ContextualRecommendationView.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_243A972C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000019;
  v4 = 0x8000000243ACBD20;
  v5 = 0xE600000000000000;
  if (v2 == 1)
  {
    v5 = 0x8000000243ACBD20;
  }

  else
  {
    v3 = 0x726564616568;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 25705;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  v8 = 0xD000000000000019;
  if (*a2 != 1)
  {
    v8 = 0x726564616568;
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_243AC2EE8();
  }

  return v11 & 1;
}

uint64_t sub_243A973B4()
{
  v1 = *v0;
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243A9744C()
{
  *v0;
  *v0;
  sub_243AC28A8();
}

uint64_t sub_243A974D0()
{
  v1 = *v0;
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243A97564@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_243A9B798();
  *a2 = result;
  return result;
}

void sub_243A97594(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0x8000000243ACBD20;
  v5 = 0xD000000000000019;
  if (v2 != 1)
  {
    v5 = 0x726564616568;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_243A975E8()
{
  v1 = 0xD000000000000019;
  if (*v0 != 1)
  {
    v1 = 0x726564616568;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_243A97638@<X0>(_BYTE *a1@<X8>)
{
  result = sub_243A9B798();
  *a1 = result;
  return result;
}

uint64_t sub_243A97660(uint64_t a1)
{
  v2 = sub_243A97E48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243A9769C(uint64_t a1)
{
  v2 = sub_243A97E48();

  return MEMORY[0x2821FE720](a1, v2);
}

id ContextualRecommendationView.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v66 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A0F0, &qword_243AC98C8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v70 = &v56 - v8;
  v9 = sub_243AC1298();
  v60 = *(v9 - 8);
  v61 = v9;
  v10 = *(v60 + 64);
  MEMORY[0x28223BE20](v9);
  v69 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A0F8, &unk_243AC98D0);
  v71 = *(v73 - 8);
  v12 = *(v71 + 64);
  MEMORY[0x28223BE20](v73);
  v14 = &v56 - v13;
  v15 = type metadata accessor for ContextualRecommendationView(0);
  v16 = (v15 - 8);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (&v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v16[7];
  v75 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D40, &qword_243AC7200);
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v68 = v21;
  v62 = v22 + 56;
  v63 = v23;
  v23(v19 + v20, 1, 1);
  v24 = v16[8];
  v25 = sub_243AC1618();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v64 = v26 + 56;
  v65 = v27;
  v27(v19 + v24, 1, 1, v25);
  v28 = v16[9];
  *(v19 + v28) = 0;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243A97E48();
  v72 = v14;
  v30 = v74;
  sub_243AC2FE8();
  v31 = v75;
  if (v30)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_243A2251C(v19 + v31, &qword_27ED9A0F0, &qword_243AC98C8);
    return sub_243A2251C(v19 + v24, &qword_27ED98A40, &qword_243AC4850);
  }

  else
  {
    v32 = v69;
    v58 = v28;
    v59 = v25;
    v74 = v24;
    v33 = v70;
    v34 = a1;
    v79 = 0;
    v35 = sub_243AC2E68();
    if (!v36)
    {
      v38 = v32;
      sub_243AC1288();
      v57 = sub_243AC1278();
      v40 = v39;
      (*(v60 + 8))(v38, v61);
      v36 = v40;
      v35 = v57;
    }

    v41 = v33;
    v42 = v19;
    *v19 = v35;
    v19[1] = v36;
    v78 = 1;
    sub_243A491E8(&qword_27ED98DB0, &qword_27ED98D40, &qword_243AC7200);
    sub_243AC2E78();
    v43 = v66;
    v44 = v67;
    v45 = v71;
    sub_243A8EC20(v41, v42 + v75, &qword_27ED9A0F0, &qword_243AC98C8);
    v77 = 2;
    sub_243A9A9CC(&qword_27ED98AC8, MEMORY[0x277D23340]);
    sub_243AC2E78();
    sub_243A8EC20(v43, v42 + v74, &qword_27ED98A40, &qword_243AC4850);
    result = [objc_opt_self() defaultStore];
    if (result)
    {
      v46 = result;
      v47 = [result aa_primaryAppleAccount];

      v48 = v58;
      if (v47)
      {
        (*(v45 + 8))(v72, v73);
        *(v42 + v48) = v47;
      }

      else
      {
        if (qword_27ED98910 != -1)
        {
          swift_once();
        }

        v49 = sub_243AC1468();
        __swift_project_value_buffer(v49, qword_27EDA14A8);
        v50 = sub_243AC1448();
        v51 = sub_243AC2B58();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = v34;
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v76 = v54;
          *v53 = 136315138;
          *(v53 + 4) = sub_243AB73D8(0x6F72662874696E69, 0xEB00000000293A6DLL, &v76);
          _os_log_impl(&dword_243A1B000, v50, v51, "Unable to retrieve primary account. Bailing from ContextualRecommendationView %s", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v54);
          MEMORY[0x245D47D20](v54, -1, -1);
          v55 = v53;
          v34 = v52;
          MEMORY[0x245D47D20](v55, -1, -1);
        }

        (*(v45 + 8))(v72, v73);
      }

      sub_243A9AA14(v42, v44, type metadata accessor for ContextualRecommendationView);
      __swift_destroy_boxed_opaque_existential_1(v34);
      return sub_243A9AA7C(v42, type metadata accessor for ContextualRecommendationView);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_243A97E48()
{
  result = qword_27ED9A100;
  if (!qword_27ED9A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A100);
  }

  return result;
}

uint64_t ContextualRecommendationView.unmodifiedBody.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A108, &qword_243AC98E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A0F0, &qword_243AC98C8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for InnerContextualRecommendation(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ContextualRecommendationView(0);
  v18 = *(v0 + *(v17 + 28));
  if (v18)
  {
    v19 = v17;
    sub_243A224B4(v0 + *(v17 + 20), v12, &qword_27ED9A0F0, &qword_243AC98C8);
    sub_243A224B4(v0 + *(v19 + 24), v8, &qword_27ED98A40, &qword_243AC4850);
    v20 = v18;
    sub_243A98194(v20, v12, v8, v16);
    sub_243A9AA14(v16, v4, type metadata accessor for InnerContextualRecommendation);
    swift_storeEnumTagMultiPayload();
    sub_243A9A9CC(&qword_27ED9A110, type metadata accessor for InnerContextualRecommendation);
    sub_243AC1AE8();

    return sub_243A9AA7C(v16, type metadata accessor for InnerContextualRecommendation);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_243A9A9CC(&qword_27ED9A110, type metadata accessor for InnerContextualRecommendation);
    return sub_243AC1AE8();
  }
}

void sub_243A98194(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_243AC2058();
  v8 = *(&v40 + 1);
  *a4 = v40;
  *(a4 + 8) = v8;
  sub_243AC2058();
  v9 = *(&v40 + 1);
  *(a4 + 16) = v40;
  *(a4 + 24) = v9;
  v39 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A188, &qword_243AC9A80);
  sub_243AC2058();
  *(a4 + 32) = v40;
  v10 = type metadata accessor for InnerContextualRecommendation(0);
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  v11 = v10[10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D40, &qword_243AC7200);
  (*(*(v12 - 8) + 56))(a4 + v11, 1, 1, v12);
  v13 = v10[11];
  v14 = sub_243AC1618();
  (*(*(v14 - 8) + 56))(a4 + v13, 1, 1, v14);
  v15 = (a4 + v10[12]);
  sub_243AC15F8();
  sub_243A9A9CC(&qword_27ED99F38, MEMORY[0x277D23330]);
  *v15 = sub_243AC1908();
  v15[1] = v16;
  v17 = type metadata accessor for RecommendationsController();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  sub_243AC1408();
  v21 = a1;
  v22 = sub_243AC13F8();
  v23 = *(v17 + 48);
  v24 = *(v17 + 52);
  swift_allocObject();
  sub_243A45F9C(v21, v22, 0);

  v25 = *(*v20 + 48);
  v26 = *(*v20 + 52);
  swift_deallocPartialClassInstance();
  sub_243A9A9CC(&qword_27ED98FB0, type metadata accessor for RecommendationsController);
  v27 = sub_243AC1828();
  v29 = v28;
  *(a4 + 48) = v27;
  *(a4 + 56) = v28;

  sub_243A9C7E4(a2, a4 + v11, &qword_27ED9A0F0, &qword_243AC98C8);
  sub_243A9C7E4(a3, a4 + v13, &qword_27ED98A40, &qword_243AC4850);
  type metadata accessor for AppProtectionManager();
  inited = swift_initStaticObject();
  v31 = v21;
  *(a4 + 64) = sub_243A762E4(v29, v31, 2, inited);
  v32 = [objc_opt_self() defaultStore];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 aa_primaryAppleAccount];

    if (v34)
    {
      v35 = type metadata accessor for RecommendationsLiftUIPresenter();
      v36 = objc_allocWithZone(v35);
      *&v36[OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationsLiftUIPresenter_activeRecommendation] = 0;
      *&v36[OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationsLiftUIPresenter_recommendationsController] = v29;
      *&v36[OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationsLiftUIPresenter_account] = v34;
      *&v36[OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationsLiftUIPresenter_data] = xmmword_243AC9430;
      v38.receiver = v36;
      v38.super_class = v35;

      v37 = objc_msgSendSuper2(&v38, sel_init);

      sub_243A2251C(a3, &qword_27ED98A40, &qword_243AC4850);
      sub_243A2251C(a2, &qword_27ED9A0F0, &qword_243AC98C8);
      *(a4 + 72) = v37;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_243A985D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_243A9A9CC(&qword_27ED992E0, type metadata accessor for ContextualRecommendationView);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_243A98654(uint64_t a1, uint64_t a2)
{
  v4 = sub_243A9A9CC(&qword_27ED9A118, type metadata accessor for ContextualRecommendationView);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_243A986D0(uint64_t a1)
{
  v2 = sub_243A9A9CC(&qword_27ED9A118, type metadata accessor for ContextualRecommendationView);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_243A9874C(uint64_t a1, uint64_t a2)
{
  v4 = sub_243A9A9CC(&qword_27ED9A240, type metadata accessor for ContextualRecommendationView);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_243A987EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A1B8, &qword_243AC9C28);
  v34 = *(v37 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v37);
  v5 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A1C0, &qword_243AC9C30);
  v35 = *(v38 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v38);
  v8 = &v32 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A1C8, &unk_243AC9C38);
  v9 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v11 = &v32 - v10;
  v12 = type metadata accessor for InnerContextualRecommendation(0);
  v33 = *(v12 - 8);
  v13 = *(v33 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v32 - v16;
  v18 = *(v2 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  if (v40 >> 62)
  {
    v19 = sub_243AC2DF8();
  }

  else
  {
    v19 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v19)
  {
    MEMORY[0x28223BE20](v20);
    *(&v32 - 2) = v2;
    sub_243A9A560(v2, &v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A1D0, &qword_243AC9C90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A1D8, &qword_243AC9C98);
    sub_243A9B7F4();
    sub_243A9B870();
    sub_243AC2108();
    sub_243AC1788();
    v21 = sub_243A9BC00();
    v22 = v37;
    sub_243AC1EC8();
    (*(v34 + 8))(v5, v22);
    v23 = v35;
    v24 = v38;
    (*(v35 + 16))(v11, v8, v38);
    swift_storeEnumTagMultiPayload();
    v40 = v22;
    v41 = v21;
    swift_getOpaqueTypeConformance2();
    sub_243AC1AE8();
    return (*(v23 + 8))(v8, v24);
  }

  else
  {
    v26 = sub_243AC2A98();
    (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
    sub_243A9AA14(v2, &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InnerContextualRecommendation);
    sub_243AC2A58();
    v27 = sub_243AC2A48();
    v28 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v29 = swift_allocObject();
    v30 = MEMORY[0x277D85700];
    *(v29 + 16) = v27;
    *(v29 + 24) = v30;
    sub_243A9BEA8(&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
    sub_243A3306C(0, 0, v17, &unk_243AC9CC0, v29);

    swift_storeEnumTagMultiPayload();
    v31 = sub_243A9BC00();
    v40 = v37;
    v41 = v31;
    swift_getOpaqueTypeConformance2();
    return sub_243AC1AE8();
  }
}

uint64_t sub_243A98D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = sub_243AC1528();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A0F0, &qword_243AC98C8) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  sub_243AC2A58();
  v4[16] = sub_243AC2A48();
  v10 = sub_243AC2A28();
  v4[17] = v10;
  v4[18] = v9;

  return MEMORY[0x2822009F8](sub_243A98EC8, v10, v9);
}

uint64_t sub_243A98EC8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 80);
  v3 = type metadata accessor for InnerContextualRecommendation(0);
  sub_243A224B4(v2 + *(v3 + 40), v1, &qword_27ED9A0F0, &qword_243AC98C8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D40, &qword_243AC7200);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    v7 = *(v0 + 120);
    v6 = *(v0 + 128);

    sub_243A2251C(v7, &qword_27ED9A0F0, &qword_243AC98C8);
LABEL_10:
    v19 = *(v0 + 112);
    v18 = *(v0 + 120);
    v20 = *(v0 + 104);

    v21 = *(v0 + 8);

    return v21();
  }

  v8 = (*(v0 + 80) + *(v3 + 48));
  if (*v8)
  {
    v9 = *(v0 + 120);
    sub_243A9BFFC();

    sub_243AC14D8();
    v12 = *(v0 + 120);
    v13 = *(v0 + 80);

    (*(v5 + 8))(v12, v4);
    v14 = *(v0 + 64);
    v15 = *(v13 + 16);
    *(v0 + 186) = v15;
    v16 = *(v13 + 24);
    *(v0 + 152) = v16;
    *(v0 + 16) = v15;
    *(v0 + 24) = v16;
    *(v0 + 160) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D28, &qword_243AC8810);
    sub_243AC2068();
    if (*(v0 + 184))
    {
      v17 = *(v0 + 128);

      goto LABEL_10;
    }

    v22 = *(v14 + 16);
    if (v22)
    {
      v23 = *(v0 + 96);
      v25 = *(v23 + 16);
      v24 = v23 + 16;
      v26 = v14 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
      v71 = *(v24 + 56);
      v72 = v25;
      v70 = *MEMORY[0x277D232A0];
      v67 = *MEMORY[0x277D23288];
      v68 = *MEMORY[0x277D23248];
      v66 = *MEMORY[0x277D23258];
      v64 = *MEMORY[0x277D23278];
      v63 = *MEMORY[0x277D23270];
      v27 = (v24 - 8);
      v28 = MEMORY[0x277D84F90];
      v69 = (v24 + 80);
      while (1)
      {
        v30 = *(v0 + 104);
        v29 = *(v0 + 112);
        v31 = *(v0 + 88);
        v72(v29, v26, v31);
        v72(v30, v29, v31);
        v32 = (*(v24 + 72))(v30, v31);
        if (v32 == v70)
        {
          break;
        }

        if (v32 == v68)
        {
          v37 = *(v0 + 104);
          (*v69)(v37, *(v0 + 88));
          *(v0 + 72) = *(*v37 + 16);
          v35 = sub_243AC2EB8();
          v36 = v38;
          goto LABEL_19;
        }

        if (v32 == v67)
        {
          v42 = *(v0 + 104);
          (*v69)(v42, *(v0 + 88));
          v43 = *(*v42 + 16);
          *(v0 + 48) = 0;
          *(v0 + 56) = 0xE000000000000000;
          sub_243AC2AC8();

          v35 = *(v0 + 48);
          v36 = *(v0 + 56);
          goto LABEL_20;
        }

        if (v32 == v66)
        {
          v44 = *(v0 + 104);
          (*v69)(v44, *(v0 + 88));
          if (*(*v44 + 16))
          {
            v45 = 1702195828;
          }

          else
          {
            v45 = 0x65736C6166;
          }

          if (*(*v44 + 16))
          {
            v46 = 0xE400000000000000;
          }

          else
          {
            v46 = 0xE500000000000000;
          }

          MEMORY[0x245D46C90](v45, v46);

          v35 = 0;
          v36 = 0xE000000000000000;
          goto LABEL_20;
        }

        v47 = *(v0 + 88);
        v48 = v32 == v64 || v32 == v63;
        v65 = *(v0 + 112);
        if (v48)
        {
          v61 = *v27;
          (*v27)(*(v0 + 104), v47);
          type metadata accessor for DecodableStateError();
          sub_243A9A9CC(&qword_27ED98D50, type metadata accessor for DecodableStateError);
          v52 = swift_allocError();
          v50 = v49;
          v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0) + 48);
          v72(v50, v65, v47);
          *(v50 + v51) = MEMORY[0x277D837D0];
          v56 = v61;
          swift_willThrow();
        }

        else
        {
          v62 = *(v0 + 104);
          type metadata accessor for DecodableStateError();
          sub_243A9A9CC(&qword_27ED98D50, type metadata accessor for DecodableStateError);
          v52 = swift_allocError();
          v54 = v53;
          v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98C50, &unk_243AC4CB0) + 48);
          v72(v54, v65, v47);
          *(v54 + v55) = MEMORY[0x277D837D0];
          swift_willThrow();
          v56 = *v27;
          (*v27)(v62, v47);
        }

        v57 = *(v0 + 112);
        v58 = *(v0 + 88);

        v56(v57, v58);
LABEL_25:
        v26 += v71;
        if (!--v22)
        {

          goto LABEL_45;
        }
      }

      v33 = *(v0 + 104);
      (*v69)(v33, *(v0 + 88));
      v34 = *v33;
      v35 = *(*v33 + 16);
      v36 = *(v34 + 24);

LABEL_19:

LABEL_20:
      (*v27)(*(v0 + 112), *(v0 + 88));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_243AA0D1C(0, *(v28 + 2) + 1, 1, v28);
      }

      v40 = *(v28 + 2);
      v39 = *(v28 + 3);
      if (v40 >= v39 >> 1)
      {
        v28 = sub_243AA0D1C((v39 > 1), v40 + 1, 1, v28);
      }

      *(v28 + 2) = v40 + 1;
      v41 = &v28[16 * v40];
      *(v41 + 4) = v35;
      *(v41 + 5) = v36;
      goto LABEL_25;
    }

    v28 = MEMORY[0x277D84F90];
LABEL_45:
    *(v0 + 168) = v28;
    v59 = *(*(v0 + 80) + 56);
    v60 = swift_task_alloc();
    *(v0 + 176) = v60;
    *v60 = v0;
    v60[1] = sub_243A99724;

    return sub_243A42228(v28);
  }

  else
  {
    v10 = v8[1];
    sub_243AC15F8();
    sub_243A9A9CC(&qword_27ED99F38, MEMORY[0x277D23330]);

    return sub_243AC18F8();
  }
}

uint64_t sub_243A99724()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v7 = *v0;

  v4 = *(v1 + 144);
  v5 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_243A99868, v5, v4);
}

uint64_t sub_243A99868()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 186);
  v4 = *(v0 + 128);

  *(v0 + 32) = v3;
  *(v0 + 40) = v2;
  *(v0 + 185) = 1;
  sub_243AC2078();
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 104);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_243A99914(uint64_t a1)
{
  v2 = type metadata accessor for InnerContextualRecommendation(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = *(a1 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  swift_getKeyPath();
  sub_243A9AA14(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InnerContextualRecommendation);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_243A9BEA8(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F40, &qword_243AC52E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A1F8, &qword_243AC9CA0);
  sub_243A491E8(&qword_27ED991A0, &qword_27ED98F40, &qword_243AC52E0);
  sub_243A9BB20(&qword_27ED9A230);
  sub_243A9B8F4();
  return sub_243AC20E8();
}

uint64_t sub_243A99B44@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v5 = type metadata accessor for InnerContextualRecommendation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A200, &qword_243AC9CA8);
  v39 = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = *a1;
  v36 = type metadata accessor for InnerContextualRecommendation;
  sub_243A9AA14(a2, v8, type metadata accessor for InnerContextualRecommendation);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v40 = v15;
  v38 = v14;
  v35 = v15 + v7;
  v16 = swift_allocObject();
  sub_243A9BEA8(v8, v16 + v15);
  *&v47 = v13;
  v41 = sub_243A2CFF0(0, &qword_27ED98F70, 0x277CFB1B0);
  v42 = v13;
  sub_243AC2058();
  v17 = v45;
  *v12 = v44;
  *(v12 + 1) = v17;
  *(v12 + 4) = 65792;
  LOBYTE(v47) = 0;
  sub_243AC2058();
  v18 = v45;
  v12[24] = v44;
  *(v12 + 4) = v18;
  *(v12 + 5) = sub_243A9C304;
  *(v12 + 6) = v16;
  *(v12 + 7) = sub_243A9A190;
  *(v12 + 8) = 0;
  v19 = *(type metadata accessor for Card() + 48);
  *&v12[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED991C0, &unk_243AC5EE0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v19) = sub_243AC1C38();
  sub_243AC1718();
  v20 = &v12[*(v9 + 36)];
  *v20 = v19;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  v37 = a2;
  v47 = *(a2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A238, &qword_243AC9D30);
  sub_243AC2088();
  v25 = v46;
  sub_243A9AA14(a2, v8, type metadata accessor for InnerContextualRecommendation);
  v26 = swift_allocObject();
  v27 = v40;
  sub_243A9BEA8(v8, v26 + v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A208, &qword_243AC9CB0);
  sub_243A9BA64();
  sub_243A9BB20(&qword_27ED991A8);
  sub_243A9BB74();
  v28 = v43;
  sub_243AC1F38();

  sub_243A2251C(v12, &qword_27ED9A200, &qword_243AC9CA8);
  sub_243A9AA14(v37, v8, v36);
  v29 = (v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_243A9BEA8(v8, v30 + v27);
  v31 = v42;
  *(v30 + v29) = v42;
  v32 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A1F8, &qword_243AC9CA0) + 36));
  LODWORD(v27) = *(sub_243AC17E8() + 20);
  v33 = v31;
  result = sub_243AC2A78();
  *v32 = &unk_243AC9D40;
  v32[1] = v30;
  return result;
}

uint64_t sub_243A99FA8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v21 - v7;
  v22 = *(a3 + 32);
  v21[1] = a1;
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A238, &qword_243AC9D30);
  sub_243AC2078();
  v10 = *(a3 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED999C0, &unk_243AC4C40);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_243AC51B0;
  v12 = [v9 identifier];
  v13 = sub_243AC2858();
  v15 = v14;

  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  v16 = sub_243AC2A98();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  sub_243AC2A58();

  v17 = sub_243AC2A48();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  *(v18 + 32) = v11;
  *(v18 + 40) = 3;
  *(v18 + 56) = 0;
  *(v18 + 64) = 0;
  *(v18 + 48) = v10;
  *(v18 + 72) = 1537;
  sub_243A3306C(0, 0, v8, &unk_243AC5220, v18);
}

uint64_t sub_243A9A190()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99408, &qword_243AC67D8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_243AC51B0;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0xD000000000000014;
  *(v0 + 40) = 0x8000000243ACE1B0;
  sub_243AC2FA8();
}

void **sub_243A9A22C@<X0>(void **result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    v5 = *result;
    v6 = *(a2 + 56);

    sub_243AB8A60(v6, v5, v3, v9);
    v7 = sub_243AC18A8();
    result = sub_243AC1C68();
    v8 = v9[1];
    *a3 = v9[0];
    *(a3 + 16) = v8;
    *(a3 + 32) = v9[2];
    *(a3 + 48) = v7;
    *(a3 + 56) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_243A9A2BC(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  sub_243AC2A58();
  v2[10] = sub_243AC2A48();
  v5 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243A9A38C, v5, v4);
}

uint64_t sub_243A9A38C()
{
  v19 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];

  v5 = *(v3 + 56);
  v6 = *MEMORY[0x277CFB158];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98EE8, &unk_243AC8050);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_243AC51A0;
  *(inited + 32) = v4;
  v18 = 3;
  v8 = v4;
  sub_243A3D620(v6, inited, 0, &v18);
  swift_setDeallocating();
  v9 = *(inited + 16);
  swift_arrayDestroy();
  v10 = [v8 identifier];
  v11 = sub_243AC2858();
  v13 = v12;

  v14 = sub_243AC2A98();
  (*(*(v14 - 8) + 56))(v2, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = v5;
  *(v15 + 40) = v11;
  *(v15 + 48) = v13;
  *(v15 + 56) = 3;

  sub_243A3306C(0, 0, v2, &unk_243AC87F0, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_243A9A560@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v23 - v6;
  v8 = type metadata accessor for InnerContextualRecommendation(0);
  sub_243A224B4(a1 + *(v8 + 44), v7, &qword_27ED98A40, &qword_243AC4850);
  v9 = sub_243AC1618();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_243A2251C(v7, &qword_27ED98A40, &qword_243AC4850);
    goto LABEL_5;
  }

  v11 = (a1 + *(v8 + 48));
  if (*v11)
  {
    v12 = *v11;

    v17 = sub_243AC1608();
    v19 = v18;

    (*(v10 + 8))(v7, v9);
    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      v23[1] = v17;
      v23[2] = v19;
      sub_243A4FC18();
      result = sub_243AC1D88();
      v15 = v21 & 1;
      goto LABEL_6;
    }

LABEL_5:
    result = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
LABEL_6:
    *a2 = result;
    a2[1] = v14;
    a2[2] = v15;
    a2[3] = v16;
    return result;
  }

  v22 = v11[1];
  sub_243AC15F8();
  sub_243A9A9CC(&qword_27ED99F38, MEMORY[0x277D23330]);
  result = sub_243AC18F8();
  __break(1u);
  return result;
}

uint64_t sub_243A9A7E8(uint64_t a1)
{
  v2 = sub_243AC1738();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_243AC1968();
}

uint64_t sub_243A9A8B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  *a2 = v5;
  return result;
}

uint64_t sub_243A9A930(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243AC16B8();
}

uint64_t sub_243A9A9CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243A9AA14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_243A9AA7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_243A9AADC()
{
  sub_243A9A9CC(&qword_27ED992E0, type metadata accessor for ContextualRecommendationView);
  sub_243A9A9CC(&qword_27ED9A118, type metadata accessor for ContextualRecommendationView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_243A9AC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A0F0, &qword_243AC98C8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_243A9ADA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A0F0, &qword_243AC98C8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_243A9AEE0()
{
  sub_243A9B5AC(319, &qword_27ED9A140, &qword_27ED98D40, &qword_243AC7200, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_243A9B610(319, &qword_27ED98A80, MEMORY[0x277D23340]);
    if (v1 <= 0x3F)
    {
      sub_243A9AFD4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_243A9AFD4()
{
  if (!qword_27ED9A148)
  {
    sub_243A2CFF0(255, &qword_27ED9A150, 0x277CB8F30);
    v0 = sub_243AC2C38();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED9A148);
    }
  }
}

unint64_t sub_243A9B040()
{
  result = qword_27ED9A158;
  if (!qword_27ED9A158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A160, &unk_243AC9A50);
    sub_243A9A9CC(&qword_27ED9A110, type metadata accessor for InnerContextualRecommendation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A158);
  }

  return result;
}

uint64_t sub_243A9B110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A0F0, &qword_243AC98C8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_243A9B260(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A0F0, &qword_243AC98C8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A40, &qword_243AC4850);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_243A9B39C()
{
  sub_243A9B55C();
  if (v0 <= 0x3F)
  {
    sub_243A9B5AC(319, &qword_27ED9A180, &qword_27ED9A188, &qword_243AC9A80, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_243A7EF94();
      if (v2 <= 0x3F)
      {
        sub_243A9B610(319, &qword_27ED9A190, type metadata accessor for ActionsController);
        if (v3 <= 0x3F)
        {
          sub_243A9B610(319, &qword_27ED9A198, type metadata accessor for RecommendationsLiftUIPresenter);
          if (v4 <= 0x3F)
          {
            sub_243A9B5AC(319, &qword_27ED9A140, &qword_27ED98D40, &qword_243AC7200, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_243A9B610(319, &qword_27ED98A80, MEMORY[0x277D23340]);
              if (v6 <= 0x3F)
              {
                sub_243A90E60();
                if (v7 <= 0x3F)
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

void sub_243A9B55C()
{
  if (!qword_27ED9A178)
  {
    v0 = sub_243AC2098();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED9A178);
    }
  }
}

void sub_243A9B5AC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_243A9B610(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_243AC2C38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_243A9B678()
{
  result = qword_27ED9A1A0;
  if (!qword_27ED9A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A1A0);
  }

  return result;
}

unint64_t sub_243A9B6EC()
{
  result = qword_27ED9A1A8;
  if (!qword_27ED9A1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A1A8);
  }

  return result;
}

unint64_t sub_243A9B744()
{
  result = qword_27ED9A1B0;
  if (!qword_27ED9A1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A1B0);
  }

  return result;
}

uint64_t sub_243A9B798()
{
  v0 = sub_243AC2E58();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_243A9B7F4()
{
  result = qword_27ED9A1E0;
  if (!qword_27ED9A1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A1D0, &qword_243AC9C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A1E0);
  }

  return result;
}

unint64_t sub_243A9B870()
{
  result = qword_27ED9A1E8;
  if (!qword_27ED9A1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A1D8, &qword_243AC9C98);
    sub_243A9B8F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A1E8);
  }

  return result;
}

unint64_t sub_243A9B8F4()
{
  result = qword_27ED9A1F0;
  if (!qword_27ED9A1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A1F8, &qword_243AC9CA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A200, &qword_243AC9CA8);
    sub_243A2CFF0(255, &qword_27ED98F70, 0x277CFB1B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A208, &qword_243AC9CB0);
    sub_243A9BA64();
    sub_243A9BB20(&qword_27ED991A8);
    sub_243A9BB74();
    swift_getOpaqueTypeConformance2();
    sub_243A9A9CC(&qword_27ED9A220, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A1F0);
  }

  return result;
}

unint64_t sub_243A9BA64()
{
  result = qword_27ED9A210;
  if (!qword_27ED9A210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A200, &qword_243AC9CA8);
    sub_243A9A9CC(&qword_27ED99148, type metadata accessor for Card);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A210);
  }

  return result;
}

uint64_t sub_243A9BB20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_243A2CFF0(255, &qword_27ED98F70, 0x277CFB1B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_243A9BB74()
{
  result = qword_27ED9A218;
  if (!qword_27ED9A218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A208, &qword_243AC9CB0);
    sub_243A93AF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A218);
  }

  return result;
}

unint64_t sub_243A9BC00()
{
  result = qword_27ED9A228;
  if (!qword_27ED9A228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A1B8, &qword_243AC9C28);
    sub_243A9B7F4();
    sub_243A9B870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A228);
  }

  return result;
}

uint64_t sub_243A9BC98()
{
  v1 = type metadata accessor for InnerContextualRecommendation(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 40);

  v10 = *(v0 + v3 + 56);

  v11 = *(v0 + v3 + 64);

  v12 = v1[10];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D40, &qword_243AC7200);
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v3 + v12, 1, v13))
  {
    (*(v14 + 8))(v6 + v12, v13);
  }

  v15 = v1[11];
  v16 = sub_243AC1618();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v6 + v15, 1, v16))
  {
    (*(v17 + 8))(v6 + v15, v16);
  }

  v18 = *(v6 + v1[12]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243A9BEA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InnerContextualRecommendation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243A9BF0C(uint64_t a1)
{
  v4 = *(type metadata accessor for InnerContextualRecommendation(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_243A33068;

  return sub_243A98D90(a1, v6, v7, v1 + v5);
}

unint64_t sub_243A9BFFC()
{
  result = qword_27ED98D48;
  if (!qword_27ED98D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED98D18, &unk_243AC4ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED98D48);
  }

  return result;
}

uint64_t sub_243A9C07C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InnerContextualRecommendation(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_243A99B44(a1, v6, a2);
}

uint64_t objectdestroy_26Tm()
{
  v1 = type metadata accessor for InnerContextualRecommendation(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 56);

  v10 = *(v0 + v3 + 64);

  v11 = v1[10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D40, &qword_243AC7200);
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  v14 = v1[11];
  v15 = sub_243AC1618();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v5 + v14, 1, v15))
  {
    (*(v16 + 8))(v5 + v14, v15);
  }

  v17 = *(v5 + v1[12]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243A9C304(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for InnerContextualRecommendation(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_243A99FA8(a1, a2, v6);
}

void **sub_243A9C3AC@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InnerContextualRecommendation(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_243A9A22C(a1, v6, a2);
}

uint64_t sub_243A9C42C()
{
  v1 = type metadata accessor for InnerContextualRecommendation(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 56);

  v10 = *(v0 + v3 + 64);

  v11 = v1[10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D40, &qword_243AC7200);
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v3 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  v14 = v1[11];
  v15 = sub_243AC1618();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v5 + v14, 1, v15))
  {
    (*(v16 + 8))(v5 + v14, v15);
  }

  v17 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v5 + v1[12]);

  return MEMORY[0x2821FE8E8](v0, v17 + 8, v2 | 7);
}

uint64_t sub_243A9C648()
{
  v2 = *(type metadata accessor for InnerContextualRecommendation(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_243A1FEA8;

  return sub_243A9A2BC(v0 + v3, v4);
}

uint64_t sub_243A9C74C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_243A9C794()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 74, 7);
}

uint64_t sub_243A9C7E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

unint64_t sub_243A9C850()
{
  result = qword_27ED9A248;
  if (!qword_27ED9A248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A250, qword_243AC9D50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A1B8, &qword_243AC9C28);
    sub_243A9BC00();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A248);
  }

  return result;
}

BOOL sub_243A9C980()
{
  v0 = sub_243AC1208();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() systemPhotoLibraryURL];
  sub_243AC11D8();

  v6 = objc_allocWithZone(MEMORY[0x277CD9948]);
  v7 = sub_243AC11C8();
  v8 = [v6 initWithPhotoLibraryURL_];

  v9 = [objc_allocWithZone(MEMORY[0x277CD9880]) init];
  [v9 setPhotoLibrary_];
  v10 = [objc_opt_self() fetchActiveLibraryScopeWithOptions_];
  v11 = [v10 firstObject];

  (*(v1 + 8))(v4, v0);
  if (v11)
  {
  }

  return v11 != 0;
}

uint64_t sub_243A9CB30(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x245D46EC0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_243A585B0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_243A9CBC8(void *a1, uint64_t a2)
{

  sub_243A9CB30(a2);

  v4 = [a1 provisionedDataclasses];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for Dataclass(0);
    sub_243A750D8();
    sub_243AC2AE8();
  }
}

uint64_t sub_243A9CEB0(void *a1)
{
  v2 = a1[2];
  if (v2 == 3)
  {
    v18 = objc_opt_self();
    v19 = [v18 localizedTextForDataclass_];
    v20 = sub_243AC2858();
    v22 = v21;

    v23 = [v18 localizedTextForDataclass_];
    v24 = sub_243AC2858();
    v26 = v25;

    v27 = [v18 localizedTextForDataclass_];
    v28 = sub_243AC2858();
    v30 = v29;

    type metadata accessor for RecommendationsViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32 = [objc_opt_self() bundleForClass_];
    sub_243AC1188();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99228, &qword_243AC6168);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_243AC4AC0;
    v34 = MEMORY[0x277D837D0];
    *(v33 + 56) = MEMORY[0x277D837D0];
    v35 = sub_243A570EC();
    *(v33 + 32) = v20;
    *(v33 + 40) = v22;
    *(v33 + 96) = v34;
    *(v33 + 104) = v35;
    *(v33 + 64) = v35;
    *(v33 + 72) = v24;
    *(v33 + 80) = v26;
    *(v33 + 136) = v34;
    *(v33 + 144) = v35;
    *(v33 + 112) = v28;
    *(v33 + 120) = v30;
    v17 = sub_243AC2828();
  }

  else if (v2 == 2)
  {
    v3 = objc_opt_self();
    v4 = [v3 localizedTextForDataclass_];
    v5 = sub_243AC2858();
    v7 = v6;

    v8 = [v3 localizedTextForDataclass_];
    v9 = sub_243AC2858();
    v11 = v10;

    type metadata accessor for RecommendationsViewController();
    v12 = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    sub_243AC1188();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99228, &qword_243AC6168);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_243AC5F30;
    v15 = MEMORY[0x277D837D0];
    *(v14 + 56) = MEMORY[0x277D837D0];
    v16 = sub_243A570EC();
    *(v14 + 32) = v5;
    *(v14 + 40) = v7;
    *(v14 + 96) = v15;
    *(v14 + 104) = v16;
    *(v14 + 64) = v16;
    *(v14 + 72) = v9;
    *(v14 + 80) = v11;
    v17 = sub_243AC2828();
  }

  else
  {
    if (v2 < 4)
    {
      return 0;
    }

    v36 = objc_opt_self();
    v37 = [v36 localizedTextForDataclass_];
    v38 = sub_243AC2858();
    v40 = v39;

    v41 = [v36 localizedTextForDataclass_];
    v42 = sub_243AC2858();
    v44 = v43;

    type metadata accessor for RecommendationsViewController();
    v45 = swift_getObjCClassFromMetadata();
    v46 = [objc_opt_self() bundleForClass_];
    sub_243AC1188();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99228, &qword_243AC6168);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_243AC4AC0;
    v48 = MEMORY[0x277D837D0];
    *(v47 + 56) = MEMORY[0x277D837D0];
    v49 = sub_243A570EC();
    *(v47 + 32) = v38;
    *(v47 + 40) = v40;
    *(v47 + 96) = v48;
    *(v47 + 104) = v49;
    *(v47 + 64) = v49;
    *(v47 + 72) = v42;
    *(v47 + 80) = v44;
    v50 = sub_243AC2EB8();
    *(v47 + 136) = v48;
    *(v47 + 144) = v49;
    *(v47 + 112) = v50;
    *(v47 + 120) = v51;
    v17 = sub_243AC2828();
  }

  return v17;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_243A9D3FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_243A9D444(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243A9D4BC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A2B8, &qword_243AC9EB0);
  v3 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v5 = &v66 - v4;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A2F0, &qword_243AC9ED0);
  v70 = *(v73 - 8);
  v6 = *(v70 + 64);
  MEMORY[0x28223BE20](v73);
  v66 = &v66 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A2B0, &qword_243AC9EA8);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v68 = &v66 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A2A0, &qword_243AC9EA0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v72 = &v66 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A290, &qword_243AC9E98);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v71 = &v66 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A280, &qword_243AC9E90);
  v21 = *(v20 - 8);
  v76 = v20 - 8;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v74 = &v66 - v23;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A268, &qword_243AC9E88);
  v24 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v75 = &v66 - v25;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A2F8, &unk_243AC9ED8);
  v80 = *(v79 - 8);
  v26 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  v78 = &v66 - v27;
  v93 = *a1;
  v29 = *(a1 + 5);
  v69 = *(a1 + 6);
  v28 = v69;
  sub_243A224B4(&v93, &v85, &qword_27ED99D50, "̦");
  type metadata accessor for RecommendationsController();
  sub_243A9E5D4(&qword_27ED98FB0, type metadata accessor for RecommendationsController);

  *&v85 = sub_243AC1828();
  *(&v85 + 1) = v30;
  *&v86 = v29;
  *(&v86 + 1) = v28;
  v92 = a1[1];
  v84 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D28, &qword_243AC8810);
  sub_243AC2088();
  v82 = a1;
  sub_243A9E624();
  sub_243AC1818();
  v31 = sub_243AC1C48();
  v32 = &v5[*(v67 + 36)];
  *v32 = v31;
  *(v32 + 8) = 0u;
  *(v32 + 24) = 0u;
  v32[40] = 1;
  sub_243AC1788();
  sub_243A9E51C();
  v33 = v66;
  sub_243AC1EC8();
  sub_243A9E678(v5);
  sub_243AC2138();
  sub_243AC18E8();
  v34 = v68;
  (*(v70 + 32))(v68, v33, v73);
  v35 = &v34[*(v9 + 44)];
  v36 = v34;
  v37 = v90;
  *(v35 + 4) = v89;
  *(v35 + 5) = v37;
  *(v35 + 6) = v91;
  v38 = v86;
  *v35 = v85;
  *(v35 + 1) = v38;
  v39 = v88;
  *(v35 + 2) = v87;
  *(v35 + 3) = v39;
  v40 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v41 = sub_243AC1F78();
  LOBYTE(v34) = sub_243AC1C48();
  v42 = v36;
  v43 = v72;
  sub_243A22814(v42, v72, &qword_27ED9A2B0, &qword_243AC9EA8);
  v44 = v43 + *(v13 + 44);
  v45 = v43;
  *v44 = v41;
  *(v44 + 8) = v34;
  if (sub_243AC2128())
  {
    v46 = 22.0;
  }

  else
  {
    v46 = 12.0;
  }

  v47 = *(v17 + 44);
  v48 = v71;
  v49 = &v71[v47];
  v50 = *(sub_243AC18D8() + 20);
  v51 = *MEMORY[0x277CE0118];
  v52 = sub_243AC1A98();
  (*(*(v52 - 8) + 104))(v49 + v50, v51, v52);
  *v49 = v46;
  v49[1] = v46;
  *(v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A2E0, &qword_243AC9EC8) + 36)) = 256;
  sub_243A22814(v45, v48, &qword_27ED9A2A0, &qword_243AC9EA0);
  v53 = v74;
  sub_243A22814(v48, v74, &qword_27ED9A290, &qword_243AC9E98);
  v54 = v53 + *(v76 + 44);
  *(v54 + 32) = 0;
  *v54 = 0u;
  *(v54 + 16) = 0u;
  v83[0] = sub_243AC1F98();
  v55 = sub_243AC20C8();
  v56 = v53;
  v57 = v75;
  sub_243A22814(v56, v75, &qword_27ED9A280, &qword_243AC9E90);
  v58 = v77;
  *(v57 + *(v77 + 36)) = v55;
  v59 = *(a1 + 4);
  v60 = swift_allocObject();
  v61 = a1[1];
  *(v60 + 16) = *a1;
  *(v60 + 32) = v61;
  *(v60 + 48) = a1[2];
  *(v60 + 64) = *(a1 + 6);
  sub_243A224B4(&v93, v83, &qword_27ED99D50, "̦");

  sub_243A224B4(&v92, v83, &qword_27ED99D28, &qword_243AC8810);
  v62 = sub_243A9E174();

  v63 = v78;
  sub_243AC1E98();

  sub_243A9E738(v57);
  v83[0] = v58;
  v83[1] = v62;
  swift_getOpaqueTypeConformance2();
  v64 = v79;
  sub_243AC1EE8();
  return (*(v80 + 8))(v63, v64);
}

uint64_t sub_243A9DDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*(*(a1 + 32) + OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationSectionViewModel_sectionModel) sectionHeader];
  sub_243AC2858();

  sub_243A4FC18();
  result = sub_243AC1D88();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_243A9DE44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10[-v4];
  v6 = *(a1 + 8);
  v7 = sub_243AC2A98();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;

  sub_243A3306C(0, 0, v5, &unk_243AC9EE8, v8);

  v11 = *(a1 + 16);
  v10[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99D28, &qword_243AC8810);
  return sub_243AC2078();
}

uint64_t sub_243A9DF94()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  sub_243AC1A88();
  sub_243AC1D78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A258, &qword_243AC9E80);
  sub_243A9E07C();
  return sub_243AC2108();
}

unint64_t sub_243A9E07C()
{
  result = qword_27ED9A260;
  if (!qword_27ED9A260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A258, &qword_243AC9E80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A268, &qword_243AC9E88);
    sub_243A9E174();
    swift_getOpaqueTypeConformance2();
    sub_243A9E5D4(&qword_27ED9A2E8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A260);
  }

  return result;
}

unint64_t sub_243A9E174()
{
  result = qword_27ED9A270;
  if (!qword_27ED9A270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A268, &qword_243AC9E88);
    sub_243A9E22C();
    sub_243A491E8(&qword_27ED99C48, &qword_27ED99C50, &qword_243AC8690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A270);
  }

  return result;
}

unint64_t sub_243A9E22C()
{
  result = qword_27ED9A278;
  if (!qword_27ED9A278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A280, &qword_243AC9E90);
    sub_243A9E2E4();
    sub_243A491E8(&qword_27ED99150, &qword_27ED99158, &qword_243AC7ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A278);
  }

  return result;
}

unint64_t sub_243A9E2E4()
{
  result = qword_27ED9A288;
  if (!qword_27ED9A288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A290, &qword_243AC9E98);
    sub_243A9E39C();
    sub_243A491E8(&qword_27ED9A2D8, &qword_27ED9A2E0, &qword_243AC9EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A288);
  }

  return result;
}

unint64_t sub_243A9E39C()
{
  result = qword_27ED9A298;
  if (!qword_27ED9A298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A2A0, &qword_243AC9EA0);
    sub_243A9E454();
    sub_243A491E8(&qword_27ED99B70, &qword_27ED99B78, &qword_243AC8530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A298);
  }

  return result;
}

unint64_t sub_243A9E454()
{
  result = qword_27ED9A2A8;
  if (!qword_27ED9A2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A2B0, &qword_243AC9EA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A2B8, &qword_243AC9EB0);
    sub_243A9E51C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A2A8);
  }

  return result;
}

unint64_t sub_243A9E51C()
{
  result = qword_27ED9A2C0;
  if (!qword_27ED9A2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A2B8, &qword_243AC9EB0);
    sub_243A491E8(&qword_27ED9A2C8, &qword_27ED9A2D0, &unk_243AC9EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A2C0);
  }

  return result;
}

uint64_t sub_243A9E5D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_243A9E624()
{
  result = qword_27ED9A300;
  if (!qword_27ED9A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A300);
  }

  return result;
}

uint64_t sub_243A9E678(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A2B8, &qword_243AC9EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243A9E6E0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_243A9E738(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A268, &qword_243AC9E88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243A9E7A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_243A9E7E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_243A1FEA8;

  return sub_243A40520(a1, v4, v5, v6);
}

unint64_t sub_243A9E898()
{
  result = qword_27ED9A308;
  if (!qword_27ED9A308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A310, &qword_243AC9EF0);
    sub_243A9E07C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A308);
  }

  return result;
}

uint64_t sub_243A9E930(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x73746E756F636361;
  v5 = 0x8000000243ACBA40;
  if (v2 != 1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x8000000243ACBA40;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 25705;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  v8 = 0x73746E756F636361;
  if (*a2 == 1)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_243AC2EE8();
  }

  return v11 & 1;
}

uint64_t sub_243A9EA24()
{
  v1 = *v0;
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243A9EAC0()
{
  *v0;
  *v0;
  sub_243AC28A8();
}

uint64_t sub_243A9EB48()
{
  v1 = *v0;
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243A9EBE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_243AA0E28();
  *a2 = result;
  return result;
}

void sub_243A9EC10(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x73746E756F636361;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x8000000243ACBA40;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_243A9EC68()
{
  v1 = 0x73746E756F636361;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_243A9ECBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_243AA0E28();
  *a1 = result;
  return result;
}

uint64_t sub_243A9ECE4(uint64_t a1)
{
  v2 = sub_243A9F7BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243A9ED20(uint64_t a1)
{
  v2 = sub_243A9F7BC();

  return MEMORY[0x2821FE720](a1, v2);
}

void EmailAddressInjector.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
  v87 = *(v89 - 1);
  v3 = *(v87 + 64);
  v4 = MEMORY[0x28223BE20](v89);
  v86 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v88 = &v78 - v6;
  v91 = sub_243AC1298();
  v85 = *(v91 - 8);
  v7 = *(v85 + 8);
  MEMORY[0x28223BE20](v91);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A318, &qword_243AC9EF8);
  v92 = *(v10 - 8);
  v11 = *(v92 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v78 - v12;
  v14 = type metadata accessor for EmailAddressInjector();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &v18[*(v16 + 36)];
  sub_243AC15F8();
  sub_243AA107C(&qword_27ED99F38, MEMORY[0x277D23330]);
  v93 = sub_243AC1908();
  *v19 = v93;
  v19[1] = v20;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_243A9F7BC();
  v22 = v94;
  sub_243AC2FE8();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    return;
  }

  v80 = v9;
  v81 = v14;
  v23 = v91;
  v94 = v13;
  v82 = v10;
  v83 = a1;
  v84 = v18;
  v79 = objc_opt_self();
  v24 = [v79 defaultStore];
  if (!v24)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v25 = v24;
  v26 = [v24 aa_primaryAppleAccount];

  v27 = v84;
  if (!v26)
  {
    goto LABEL_57;
  }

  v84[2] = v26;
  v98 = 0;
  v28 = sub_243AC2E68();
  if (!v29)
  {
    v30 = v80;
    sub_243AC1288();
    v31 = sub_243AC1278();
    v33 = v32;
    (*(v85 + 1))(v30, v23);
    v29 = v33;
    v28 = v31;
  }

  v34 = v88;
  v35 = v89;
  *v27 = v28;
  v27[1] = v29;
  v91 = v29;
  v97 = 1;
  sub_243A9F810();
  sub_243AC2E88();
  v36 = v27 + *(v81 + 28);
  v89 = *(v87 + 32);
  (v89)(v36, v34, v35);
  v96 = 2;
  v37 = v86;
  sub_243AC2E88();
  v80 = 0;
  (v89)(v27 + *(v81 + 32), v37, v35);
  v38 = [v79 defaultStore];
  if (!v38)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v39 = v38;
  v40 = [v38 accounts];

  v41 = v90;
  if (!v40)
  {
    sub_243A2CFF0(0, &qword_27ED9A328, 0x277CBEA60);
    v40 = MEMORY[0x245D46FD0](MEMORY[0x277D84F90]);
  }

  v95 = 0;
  sub_243A2CFF0(0, &qword_27ED9A150, 0x277CB8F30);
  sub_243AC2988();
  v42 = v95;
  v43 = v84;
  if (v95)
  {

    *(v43 + 24) = MEMORY[0x277D84F90];
    if (v42 >> 62)
    {
LABEL_54:
      v93 = sub_243AC2DF8();
    }

    else
    {
      v93 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = 0;
    v45 = 0;
    v91 = v42 & 0xC000000000000001;
    v89 = *MEMORY[0x277CB8CF8];
    v88 = *MEMORY[0x277CB8C40];
    v87 = *MEMORY[0x277CB8C50];
    v86 = *MEMORY[0x277CB8BA0];
    v85 = MEMORY[0x277D84F90];
LABEL_14:
    v81 = v44;
    if (v45 == v93)
    {
LABEL_50:

      (*(v92 + 8))(v94, v82);
      v77 = v84;
      sub_243AA0534(v84, v41);
      __swift_destroy_boxed_opaque_existential_1(v83);
      sub_243AA0598(v77);
      return;
    }

    while (1)
    {
      if (v91)
      {
        v46 = MEMORY[0x245D470F0](v45, v42);
      }

      else
      {
        if (v45 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v46 = *(v42 + 8 * v45 + 32);
      }

      v47 = v46;
      v48 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v49 = [v46 accountType];
      if (!v49)
      {
        __break(1u);
        goto LABEL_56;
      }

      v50 = v49;
      v51 = [v49 identifier];

      if (!v51)
      {
        break;
      }

      v52 = sub_243AC2858();
      v54 = v53;

      v55 = sub_243AC2858();
      if (!v54)
      {
        goto LABEL_17;
      }

      if (v55 == v52 && v54 == v56)
      {
        goto LABEL_40;
      }

      v57 = sub_243AC2EE8();

      if (v57)
      {
        goto LABEL_41;
      }

      if (sub_243AC2858() == v52 && v54 == v58)
      {
        goto LABEL_40;
      }

      v59 = sub_243AC2EE8();

      if (v59)
      {
        goto LABEL_41;
      }

      if (sub_243AC2858() == v52 && v54 == v60)
      {
        goto LABEL_40;
      }

      v61 = sub_243AC2EE8();

      if (v61)
      {
        goto LABEL_41;
      }

      if (sub_243AC2858() == v52 && v54 == v62)
      {
LABEL_40:

LABEL_41:

LABEL_42:
        v64 = [v47 username];
        if (!v64)
        {
          goto LABEL_58;
        }

        v65 = v64;
        v66 = sub_243AC2858();
        v68 = v67;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v81;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v85 = sub_243AA0428(0, *(v85 + 2) + 1, 1, v85);
        }

        v72 = *(v85 + 2);
        v71 = *(v85 + 3);
        if (v72 >= v71 >> 1)
        {
          v85 = sub_243AA0428((v71 > 1), v72 + 1, 1, v85);
        }

        v73 = v85;
        *(v85 + 2) = v72 + 1;
        v74 = &v73[32 * v72];
        *(v74 + 4) = v66;
        *(v74 + 5) = v68;
        *(v74 + 6) = v70;
        v74[56] = 0;
        v84[3] = v73;
        v75 = v70;
        v45 = v48;
        v76 = __OFADD__(v75, 1);
        v44 = v75 + 1;
        v41 = v90;
        if (v76)
        {
          goto LABEL_53;
        }

        goto LABEL_14;
      }

      v63 = sub_243AC2EE8();

      v41 = v90;
      if (v63)
      {
        goto LABEL_42;
      }

LABEL_18:
      ++v45;
      if (v48 == v93)
      {
        goto LABEL_50;
      }
    }

    sub_243AC2858();
LABEL_17:

    sub_243AC2858();

    sub_243AC2858();

    sub_243AC2858();

    goto LABEL_18;
  }

LABEL_60:
  __break(1u);
}

uint64_t type metadata accessor for EmailAddressInjector()
{
  result = qword_27ED9A350;
  if (!qword_27ED9A350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_243A9F7BC()
{
  result = qword_27ED9A320;
  if (!qword_27ED9A320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A320);
  }

  return result;
}

unint64_t sub_243A9F810()
{
  result = qword_27ED99028;
  if (!qword_27ED99028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED99010, &qword_243AC59B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED99028);
  }

  return result;
}

uint64_t EmailAddressInjector.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t EmailAddressInjector.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t EmailAddressInjector.unmodifiedBody.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for EmailAddressInjector();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_243AC1F98();
  sub_243AA0534(v1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_243AA05F8(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A330, &qword_243AC9F10) + 36));
  v10 = v9 + *(sub_243AC17E8() + 20);
  result = sub_243AC2A78();
  *v9 = &unk_243AC9F08;
  v9[1] = v8;
  *a1 = v6;
  return result;
}

uint64_t sub_243A9FA2C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_243AC1528();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  sub_243AC2A58();
  v1[7] = sub_243AC2A48();
  v6 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243A9FB2C, v6, v5);
}

uint64_t sub_243A9FB2C()
{
  v1 = v0[7];
  v2 = v0[2];

  v3 = *(v2 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {
    v32 = MEMORY[0x277D84F90];
    sub_243A64F14(0, v4, 0);
    v5 = *(v32 + 16);
    v6 = 16 * v5;
    v31 = v3;
    v7 = (v3 + 40);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v10 = *(v32 + 24);

      if (v5 >= v10 >> 1)
      {
        sub_243A64F14((v10 > 1), v5 + 1, 1);
      }

      *(v32 + 16) = v5 + 1;
      v11 = v32 + v6;
      *(v11 + 32) = v9;
      *(v11 + 40) = v8;
      v6 += 16;
      v7 += 4;
      ++v5;
      --v4;
    }

    while (v4);

    v12 = *(v31 + 16);
    if (v12)
    {
      v33 = MEMORY[0x277D84F90];
      sub_243A64F74(0, v12, 0);
      v13 = *(v33 + 16);
      do
      {
        v14 = *(v33 + 24);
        if (v13 >= v14 >> 1)
        {
          sub_243A64F74((v14 > 1), v13 + 1, 1);
        }

        *(v33 + 16) = v13 + 1;
        *(v33 + v13++ + 32) = 0;
        --v12;
      }

      while (v12);
    }
  }

  v15 = v0[2];
  v16 = type metadata accessor for EmailAddressInjector();
  v17 = (v15 + *(v16 + 36));
  if (*v17)
  {
    v18 = v16;
    v19 = v0[6];
    v20 = *(v16 + 28);
    sub_243A4C480();

    sub_243AC29E8();
    sub_243AC15D8();
    v23 = *(v0[4] + 8);
    v23(v0[6], v0[3]);

    v24 = v0[5];
    v25 = v0[2];
    v26 = *(v18 + 32);

    sub_243AC29E8();

    sub_243AC15D8();
    v27 = v0[4];
    v23(v0[5], v0[3]);

    v29 = v0[5];
    v28 = v0[6];

    v30 = v0[1];

    return v30();
  }

  else
  {
    v21 = v17[1];
    sub_243AC15F8();
    sub_243AA107C(&qword_27ED99F38, MEMORY[0x277D23330]);

    return sub_243AC18F8();
  }
}

uint64_t sub_243A9FECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_243AA107C(&qword_27ED992E8, type metadata accessor for EmailAddressInjector);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_243A9FF50(uint64_t a1, uint64_t a2)
{
  v4 = sub_243AA107C(&qword_27ED9A338, type metadata accessor for EmailAddressInjector);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_243A9FFCC(uint64_t a1)
{
  v2 = sub_243AA107C(&qword_27ED9A338, type metadata accessor for EmailAddressInjector);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_243AA0048(uint64_t a1, uint64_t a2)
{
  v4 = sub_243AA107C(&qword_27ED9A388, type metadata accessor for EmailAddressInjector);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_243AA00CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v6 = sub_243AC1F98();
  sub_243AA0534(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_243AA05F8(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A330, &qword_243AC9F10) + 36));
  v10 = v9 + *(sub_243AC17E8() + 20);
  result = sub_243AC2A78();
  *v9 = &unk_243ACA1C0;
  v9[1] = v8;
  *a2 = v6;
  return result;
}

char *sub_243AA020C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED995E0, &unk_243AC6B20);
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

char *sub_243AA0300(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99618, &qword_243AC6BC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_243AA0428(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED995E8, &qword_243AC6B30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_243AA0534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmailAddressInjector();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243AA0598(uint64_t a1)
{
  v2 = type metadata accessor for EmailAddressInjector();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_243AA05F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmailAddressInjector();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243AA065C()
{
  v2 = *(type metadata accessor for EmailAddressInjector() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_243A33068;

  return sub_243A9FA2C(v0 + v3);
}

uint64_t sub_243AA0728()
{
  sub_243AA107C(&qword_27ED992E8, type metadata accessor for EmailAddressInjector);
  sub_243AA107C(&qword_27ED9A338, type metadata accessor for EmailAddressInjector);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_243AA08A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_243AA0970(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_243AA0A20()
{
  sub_243A2CFF0(319, &qword_27ED9A150, 0x277CB8F30);
  if (v0 <= 0x3F)
  {
    sub_243AA0AF4();
    if (v1 <= 0x3F)
    {
      sub_243A4C288();
      if (v2 <= 0x3F)
      {
        sub_243A90E60();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_243AA0AF4()
{
  if (!qword_27ED9A360)
  {
    v0 = sub_243AC29F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED9A360);
    }
  }
}

unint64_t sub_243AA0B48()
{
  result = qword_27ED9A368;
  if (!qword_27ED9A368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED9A330, &qword_243AC9F10);
    sub_243AA107C(&qword_27ED9A220, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A368);
  }

  return result;
}

unint64_t sub_243AA0C18()
{
  result = qword_27ED9A370;
  if (!qword_27ED9A370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A370);
  }

  return result;
}

unint64_t sub_243AA0C70()
{
  result = qword_27ED9A378;
  if (!qword_27ED9A378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A378);
  }

  return result;
}

unint64_t sub_243AA0CC8()
{
  result = qword_27ED9A380;
  if (!qword_27ED9A380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A380);
  }

  return result;
}

char *sub_243AA0D1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED999C0, &unk_243AC4C40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_243AA0E28()
{
  v0 = sub_243AC2E58();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t objectdestroyTm_10()
{
  v1 = (type metadata accessor for EmailAddressInjector() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = v1[9];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED99010, &qword_243AC59B0);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v3 + v7, v8);
  v9(v0 + v3 + v1[10], v8);
  v10 = *(v0 + v3 + v1[11]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243AA0FB0()
{
  v2 = *(type metadata accessor for EmailAddressInjector() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_243A1FEA8;

  return sub_243A9FA2C(v0 + v3);
}

uint64_t sub_243AA107C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_243AA10C8(void *a1)
{
  v3 = *(v1 + 64);
  if (v3 || (v4 = [*(v1 + 24) accountStore], v5 = objc_msgSend(objc_allocWithZone(MEMORY[0x277D7F1F0]), sel_initWithAccountStore_appleAccount_presenter_, v4, *(v1 + 16), *(v1 + 40)), v4, v6 = *(v1 + 64), *(v1 + 64) = v5, v6, (v3 = *(v1 + 64)) != 0))
  {
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = a1;
    v12[4] = sub_243AA14E4;
    v12[5] = v8;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_243A71700;
    v12[3] = &block_descriptor_12;
    v9 = _Block_copy(v12);
    v10 = v3;
    v11 = a1;

    [v10 presentWithAlert:0 completionHandler:v9];
    _Block_release(v9);
  }
}

void sub_243AA1248(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v4 = *(Strong + 16), , v5 = [v4 aa_needsEmailConfiguration], v4, (v5 & 1) == 0))
  {
    swift_beginAccess();
    v10 = swift_weakLoadStrong();
    if (v10)
    {
      v11 = *(v10 + 48);
      swift_unknownObjectRetain();

      if (v11)
      {
        v12 = *(v11 + 16);
        v13 = *(v11 + 136);
        sub_243A3CF58(a2, 0, &v13);
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v6 = sub_243AC1468();
    __swift_project_value_buffer(v6, qword_27EDA14A8);
    v7 = sub_243AC1448();
    v8 = sub_243AC2B58();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_243A1B000, v7, v8, "Could not setup email for user.", v9, 2u);
      MEMORY[0x245D47D20](v9, -1, -1);
    }
  }
}

uint64_t sub_243AA13E8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_243AA146C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243AA14A4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_243AA1504(void *a1, uint64_t a2, void *a3)
{
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = 0;
  v3[2] = a1;
  v3[4] = a2;
  v3[5] = a3;
  v6 = objc_opt_self();
  v7 = a1;

  v8 = a3;
  result = [v6 defaultStore];
  if (result)
  {
    v10 = result;
    v11 = [objc_allocWithZone(MEMORY[0x277CED1D0]) initWithAccountStore_];

    v3[3] = v11;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_243AA15BC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = *(a2 + 16);
  if (result)
  {
    if (!v4)
    {
      return result;
    }

    if (a3)
    {
      v5 = v4;
      v3 = sub_243A724E8(v3);
    }

    else
    {
      v5 = v4;
    }

    sub_243A1EED8(v3);
  }

  else
  {
    if (!v4)
    {
      return result;
    }

    if (a3)
    {
      v5 = v4;
      sub_243A724E8(v3);
    }

    else
    {
      v5 = v4;
    }

    sub_243A1FBF8();
  }
}

uint64_t sub_243AA1668(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6F666E4972657375;
  }

  else
  {
    v4 = 0x73696E6946646964;
  }

  if (v3)
  {
    v5 = 0xE900000000000068;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x6F666E4972657375;
  }

  else
  {
    v6 = 0x73696E6946646964;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE900000000000068;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_243AC2EE8();
  }

  return v9 & 1;
}

uint64_t sub_243AA1714()
{
  v1 = *v0;
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243AA179C()
{
  *v0;
  sub_243AC28A8();
}

uint64_t sub_243AA1810()
{
  v1 = *v0;
  sub_243AC2FB8();
  sub_243AC28A8();

  return sub_243AC2FD8();
}

uint64_t sub_243AA1894@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_243AC2E58();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_243AA18F4(uint64_t *a1@<X8>)
{
  v2 = 0x73696E6946646964;
  if (*v1)
  {
    v2 = 0x6F666E4972657375;
  }

  v3 = 0xE900000000000068;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_243AA1938()
{
  if (*v0)
  {
    result = 0x6F666E4972657375;
  }

  else
  {
    result = 0x73696E6946646964;
  }

  *v0;
  return result;
}

uint64_t sub_243AA1978@<X0>(char *a1@<X8>)
{
  v2 = sub_243AC2E58();

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

uint64_t sub_243AA19DC(uint64_t a1)
{
  v2 = sub_243AA2D44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_243AA1A18(uint64_t a1)
{
  v2 = sub_243AA2D44();

  return MEMORY[0x2821FE720](a1, v2);
}

id *sub_243AA1A54(uint64_t *a1)
{
  v3 = v1;
  v28 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D60, &unk_243AC4FF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A3C0, &unk_243ACA390);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A3C8, &qword_243ACA3E0);
  v13 = *(v27 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v27);
  v16 = &v24 - v15;
  v3[2] = 0;
  v17 = a1[3];
  v18 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_243AA2D44();
  sub_243AC2FE8();
  if (v2)
  {

    v20 = *(*v3 + 12);
    v21 = *(*v3 + 26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v25 = v8;
    v26 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A3A8, &unk_243ACA2A0);
    v31 = 0;
    sub_243A491E8(&qword_27ED9A3D8, &qword_27ED9A3A8, &unk_243ACA2A0);
    v19 = v27;
    sub_243AC2E78();
    sub_243A22814(v12, v3 + OBJC_IVAR____TtC21CloudRecommendationUI20ICQOnDisappearAction_didFinish, &qword_27ED9A3C0, &unk_243ACA390);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A38, qword_243AC7210);
    v30 = 1;
    sub_243A491E8(&qword_27ED98AC0, &qword_27ED98A38, qword_243AC7210);
    v23 = v25;
    sub_243AC2E78();
    (*(v26 + 8))(v16, v19);
    sub_243A22814(v23, v3 + OBJC_IVAR____TtC21CloudRecommendationUI20ICQOnDisappearAction_userInfo, &qword_27ED98D60, &unk_243AC4FF0);
  }

  __swift_destroy_boxed_opaque_existential_1(v29);
  return v3;
}

uint64_t sub_243AA1E2C()
{
  sub_243A2251C(v0 + OBJC_IVAR____TtC21CloudRecommendationUI20ICQOnDisappearAction_didFinish, &qword_27ED9A3C0, &unk_243ACA390);
  sub_243A2251C(v0 + OBJC_IVAR____TtC21CloudRecommendationUI20ICQOnDisappearAction_userInfo, &qword_27ED98D60, &unk_243AC4FF0);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ICQOnDisappearAction()
{
  result = qword_27ED9A390;
  if (!qword_27ED9A390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243AA1F1C()
{
  sub_243AA2020(319, &qword_27ED9A3A0, &qword_27ED9A3A8, &unk_243ACA2A0);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_243AA2020(319, &qword_27ED98D28, &qword_27ED98A38, qword_243AC7210);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_243AA2020(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_243AC2C38();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_243AA2074(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_243A1FEA8;

  return (sub_243AA23D0)(a1);
}

uint64_t sub_243AA2124@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED98D88, &qword_243AC5030);
  sub_243A32C74();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_243AC1ED8();
}

id *sub_243AA22E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = sub_243AA1A54(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_243AA23D0(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_243AC2178();
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v5 = *(v4 + 64) + 15;
  v2[18] = swift_task_alloc();
  v6 = sub_243AC21A8();
  v2[19] = v6;
  v7 = *(v6 - 8);
  v2[20] = v7;
  v8 = *(v7 + 64) + 15;
  v2[21] = swift_task_alloc();
  v9 = sub_243AC1528();
  v2[22] = v9;
  v10 = *(v9 - 8);
  v2[23] = v10;
  v11 = *(v10 + 64) + 15;
  v2[24] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98D60, &unk_243AC4FF0) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A3C0, &unk_243ACA390) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243AA25B8, 0, 0);
}

uint64_t sub_243AA25B8()
{
  v1 = v0[26];
  sub_243A224B4(v0[15] + OBJC_IVAR____TtC21CloudRecommendationUI20ICQOnDisappearAction_didFinish, v1, &qword_27ED9A3C0, &unk_243ACA390);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A3A8, &unk_243ACA2A0);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_243A2251C(v0[26], &qword_27ED9A3C0, &unk_243ACA390);
    v4 = 0;
  }

  else
  {
    v5 = v0[14];
    sub_243AC14D8();
    (*(v3 + 8))(v0[26], v2);
    v4 = *(v0 + 216);
  }

  v6 = v0[25];
  sub_243A224B4(v0[15] + OBJC_IVAR____TtC21CloudRecommendationUI20ICQOnDisappearAction_userInfo, v6, &qword_27ED98D60, &unk_243AC4FF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A38, qword_243AC7210);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_243A2251C(v0[25], &qword_27ED98D60, &unk_243AC4FF0);
    v9 = 0;
LABEL_19:
    v47 = v0[26];
    v49 = v0[25];
    v50 = v0[24];
    v31 = v0[21];
    v32 = v0[18];
    v43 = v0[20];
    v45 = v0[19];
    v33 = v0[16];
    v42 = v0[17];
    v34 = v0[15];
    sub_243A4C4D4();
    v40 = sub_243AC2BC8();
    v35 = swift_allocObject();
    *(v35 + 16) = v4;
    *(v35 + 24) = v34;
    *(v35 + 32) = v9;
    v0[6] = sub_243AA2CD0;
    v0[7] = v35;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_243A71700;
    v0[5] = &block_descriptor_13;
    v36 = _Block_copy(v0 + 2);

    sub_243AC2198();
    v0[13] = MEMORY[0x277D84F90];
    sub_243AA2CFC(&qword_27ED99860, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F90, &qword_243AC5C20);
    sub_243A491E8(&qword_27ED99870, &qword_27ED98F90, &qword_243AC5C20);
    sub_243AC2C78();
    MEMORY[0x245D46FA0](0, v31, v32, v36);
    _Block_release(v36);

    (*(v42 + 8))(v32, v33);
    (*(v43 + 8))(v31, v45);
    v37 = v0[7];

    v38 = v0[1];

    return v38();
  }

  else
  {
    v10 = v0[14];
    sub_243A22438();
    sub_243AC14D8();
    v39 = v4;
    v11 = v0[23];
    (*(v8 + 8))(v0[25], v7);
    v12 = v0[12];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98A20, &qword_243AC4830);
    result = sub_243AC2E08();
    v9 = result;
    v14 = 0;
    v15 = *(v12 + 64);
    v48 = result;
    v16 = 1 << *(v12 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v46 = v11;
    v44 = (v11 + 8);
    v41 = result + 64;
    if ((v17 & v15) != 0)
    {
      while (1)
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_15:
        v23 = v20 | (v14 << 6);
        v24 = (*(v12 + 48) + 16 * v23);
        v25 = *v24;
        v26 = v24[1];
        (*(v46 + 16))(v0[24], *(v12 + 56) + *(v46 + 72) * v23, v0[22]);

        sub_243A64778(v0 + 8);
        (*v44)(v0[24], v0[22]);
        *(v41 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v27 = (v48[6] + 16 * v23);
        *v27 = v25;
        v27[1] = v26;
        v9 = v48;
        result = sub_243A21C48(v0 + 4, (v48[7] + 32 * v23));
        v28 = v48[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          break;
        }

        v48[2] = v30;
        if (!v18)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v21 = v14;
      while (1)
      {
        v14 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v14 >= v19)
        {

          v4 = v39;
          goto LABEL_19;
        }

        v22 = *(v12 + 64 + 8 * v14);
        ++v21;
        if (v22)
        {
          v20 = __clz(__rbit64(v22));
          v18 = (v22 - 1) & v22;
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_243AA2C90()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243AA2CFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_243AA2D44()
{
  result = qword_27ED9A3D0;
  if (!qword_27ED9A3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A3D0);
  }

  return result;
}

unint64_t sub_243AA2DAC()
{
  result = qword_27ED9A3E0;
  if (!qword_27ED9A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A3E0);
  }

  return result;
}

unint64_t sub_243AA2E04()
{
  result = qword_27ED9A3E8;
  if (!qword_27ED9A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A3E8);
  }

  return result;
}

unint64_t sub_243AA2E5C()
{
  result = qword_27ED9A3F0;
  if (!qword_27ED9A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED9A3F0);
  }

  return result;
}

uint64_t sub_243AA2EB0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243AC16A8();

  *a2 = v5;
  return result;
}

uint64_t sub_243AA2F30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_243AC16B8();
}

uint64_t sub_243AA2FAC(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 + 32;
  while (1)
  {
    v6 = 0xD000000000000023;
    v7 = "nter";
    switch(*(v5 + v4))
    {
      case 1:
        v6 = 0xD000000000000024;
        v7 = "Quota-turnOnAllApps";
        break;
      case 2:
        v6 = 0xD000000000000027;
        v7 = "Quota-upgradeStorage";
        break;
      case 3:
        v6 = 0xD00000000000002CLL;
        v7 = "Sharing-shareWithFamily";
        break;
      case 4:
        v6 = 0xD00000000000002DLL;
        v7 = "slideshow-turnOniCloudPhotos";
        break;
      case 5:
        v6 = 0xD000000000000021;
        v7 = "eRelay-protectBrowsingHistory";
        break;
      case 6:
        v6 = 0xD00000000000002FLL;
        v7 = "SMS-setupMessages";
        break;
      case 7:
        v6 = 0xD000000000000025;
        v7 = "slideshow-reviewPhotosAndVideos";
        break;
      case 8:
        v6 = 0xD000000000000020;
        v7 = "backup-deleteInactive";
        break;
      case 9:
        v6 = 0xD000000000000020;
        v7 = "reviewLargeFiles";
        break;
      case 0xA:
        v6 = 0xD000000000000031;
        v7 = "Quota-installApp";
        break;
      case 0xB:
        v6 = 0xD00000000000001ELL;
        v7 = "haredPhotoLibrary";
        break;
      case 0xC:
        v6 = 0xD00000000000001ELL;
        v7 = "com.apple.mobilemail-setupMail";
        break;
      case 0xD:
        v6 = 0xD000000000000029;
        v7 = "com.apple.iCloudQuota-appleOne";
        break;
      case 0xE:
        v6 = 0xD00000000000002BLL;
        v7 = "backup-turnOniCloudBackup";
        break;
      case 0xF:
        v6 = 0xD000000000000024;
        v7 = "inSync-turnOniCloudKeychain";
        break;
      case 0x10:
        v6 = 0xD000000000000025;
        v7 = "Sharing-createFamily";
        break;
      case 0x11:
        v6 = 0xD000000000000021;
        v7 = "Sharing-inviteMembers";
        break;
      case 0x12:
        v6 = 0xD00000000000001DLL;
        v7 = "-iCloudForWindows";
        break;
      case 0x13:
        v6 = 0xD000000000000014;
        v7 = "com.apple.iCloud-useiCloudWeb";
        break;
      case 0x14:
        v6 = 0xD000000000000021;
        v7 = "com.apple.iCloud-FAQ";
        break;
      default:
        break;
    }

    v8 = v7 | 0x8000000000000000;
    v9 = 0xD000000000000023;
    v10 = "nter";
    switch(a1)
    {
      case 1:
        v9 = 0xD000000000000024;
        v10 = "Quota-turnOnAllApps";
        break;
      case 2:
        v9 = 0xD000000000000027;
        v10 = "Quota-upgradeStorage";
        break;
      case 3:
        v9 = 0xD00000000000002CLL;
        v10 = "Sharing-shareWithFamily";
        break;
      case 4:
        v9 = 0xD00000000000002DLL;
        v10 = "slideshow-turnOniCloudPhotos";
        break;
      case 5:
        v9 = 0xD000000000000021;
        v10 = "eRelay-protectBrowsingHistory";
        break;
      case 6:
        v9 = 0xD00000000000002FLL;
        v10 = "SMS-setupMessages";
        break;
      case 7:
        v9 = 0xD000000000000025;
        v10 = "slideshow-reviewPhotosAndVideos";
        break;
      case 8:
        v9 = 0xD000000000000020;
        v10 = "backup-deleteInactive";
        break;
      case 9:
        v9 = 0xD000000000000020;
        v10 = "reviewLargeFiles";
        break;
      case 10:
        v9 = 0xD000000000000031;
        v10 = "Quota-installApp";
        break;
      case 11:
        v9 = 0xD00000000000001ELL;
        v10 = "haredPhotoLibrary";
        break;
      case 12:
        v9 = 0xD00000000000001ELL;
        v10 = "com.apple.mobilemail-setupMail";
        break;
      case 13:
        v9 = 0xD000000000000029;
        v10 = "com.apple.iCloudQuota-appleOne";
        break;
      case 14:
        v9 = 0xD00000000000002BLL;
        v10 = "backup-turnOniCloudBackup";
        break;
      case 15:
        v9 = 0xD000000000000024;
        v10 = "inSync-turnOniCloudKeychain";
        break;
      case 16:
        v9 = 0xD000000000000025;
        v10 = "Sharing-createFamily";
        break;
      case 17:
        v9 = 0xD000000000000021;
        v10 = "Sharing-inviteMembers";
        break;
      case 18:
        v9 = 0xD00000000000001DLL;
        v10 = "-iCloudForWindows";
        break;
      case 19:
        v9 = 0xD000000000000014;
        v10 = "com.apple.iCloud-useiCloudWeb";
        break;
      case 20:
        v9 = 0xD000000000000021;
        v10 = "com.apple.iCloud-FAQ";
        break;
      default:
        break;
    }

    if (v6 == v9 && v8 == (v10 | 0x8000000000000000))
    {
      break;
    }

    v11 = sub_243AC2EE8();

    if (v11)
    {
      return v4;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_243AA34D0(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_243AC2DF8();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_243AC2DF8();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_243AA6B14(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

BOOL sub_243AA35C8()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(*(v1 + 16) + 16);
  os_unfair_lock_unlock((v1 + 24));

  v3 = *(v0 + 32);

  os_unfair_lock_lock((v3 + 24));
  v4 = v2 | *(*(v3 + 16) + 16);
  os_unfair_lock_unlock((v3 + 24));

  return v4 == 0;
}

uint64_t sub_243AA3650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - v12;
  v14 = sub_243AC2A98();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = v5;
  v15[6] = a2;
  v15[7] = a3;
  v15[8] = a4;

  sub_243AA47C8(a3);
  sub_243A3306C(0, 0, v13, &unk_243ACA540, v15);
}

uint64_t sub_243AA37A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98998, &qword_243AC4FD0) - 8) + 64) + 15;
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243AA3850, 0, 0);
}

uint64_t sub_243AA3850()
{
  v1 = v0[8];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v8 = v0[8];
    }

    result = sub_243AC2DF8();
    v0[15] = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_13:
    v9 = v0[11];
    if (v9)
    {
      v10 = v0[12];
      v9();
    }

    v12 = v0[13];
    v11 = v0[14];

    v13 = v0[1];

    return v13();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[15] = result;
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_3:
  v3 = v0[8];
  v4 = *MEMORY[0x277CFB120];
  v0[16] = *MEMORY[0x277CFB150];
  v0[17] = v4;
  v0[18] = 0;
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x245D470F0](0);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;
  v0[19] = v5;
  v0[20] = 1;
  v0[21] = *(v0[9] + 48);

  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_243AA39E8;

  return sub_243A26C8C(v6);
}

uint64_t sub_243AA39E8(char a1)
{
  v2 = *(*v1 + 176);
  v3 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](sub_243AA3B08, 0, 0);
}

void sub_243AA3B08()
{
  v53 = v0;
  if (*(v0 + 200))
  {
    v1 = *(v0 + 144);
    v2 = *(v0 + 152);
    v3 = *(v0 + 72);
    [v2 setStatus_];
    [v2 setCompleted_];
    v4 = *(v3 + 24);
    *(swift_task_alloc() + 16) = v2;

    os_unfair_lock_lock((v4 + 24));
    sub_243A49930((v4 + 16));
    if (v1)
    {

      os_unfair_lock_unlock((v4 + 24));
    }

    else
    {
      v7 = *(v0 + 152);
      v8 = *(v0 + 80);
      os_unfair_lock_unlock((v4 + 24));

      *(swift_task_alloc() + 16) = v7;
      os_unfair_lock_lock((v8 + 24));
      sub_243A2CFD4((v8 + 16), (v0 + 56));
      os_unfair_lock_unlock((v8 + 24));
      v9 = *(v0 + 56);

      if (!v9)
      {
        if (qword_27ED98910 == -1)
        {
          goto LABEL_13;
        }

        goto LABEL_38;
      }

      v10 = *(v0 + 152);
      v11 = *(v0 + 104);
      v12 = *(v0 + 112);
      v13 = *(v0 + 72);
      v51 = v9;
      v14 = [v10 storageRecoverable];
      v15 = [v14 integerValue];

      v16 = sub_243AC2A98();
      v17 = *(v16 - 8);
      (*(v17 + 56))(v12, 1, 1, v16);
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = v10;
      v18[5] = v13;
      v18[6] = v9;
      v18[7] = v15;
      v18[8] = 0;
      v18[9] = 0;
      sub_243A47650(v12, v11);
      LODWORD(v11) = (*(v17 + 48))(v11, 1, v16);

      v19 = *(v0 + 104);
      if (v11 == 1)
      {
        sub_243A2251C(*(v0 + 104), &qword_27ED98998, &qword_243AC4FD0);
      }

      else
      {
        sub_243AC2A88();
        (*(v17 + 8))(v19, v16);
      }

      v36 = v18[2];
      v35 = v18[3];
      swift_unknownObjectRetain();

      if (v36)
      {
        swift_getObjectType();
        v37 = sub_243AC2A28();
        v39 = v38;
        swift_unknownObjectRelease();
      }

      else
      {
        v37 = 0;
        v39 = 0;
      }

      sub_243A2251C(*(v0 + 112), &qword_27ED98998, &qword_243AC4FD0);
      v40 = swift_allocObject();
      *(v40 + 16) = &unk_243AC58C8;
      *(v40 + 24) = v18;
      if (v39 | v37)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v37;
        *(v0 + 40) = v39;
      }

      swift_task_create();

      while (1)
      {
        v41 = *(v0 + 160);
        if (v41 == *(v0 + 120))
        {
          v42 = *(v0 + 88);
          if (v42)
          {
            v43 = *(v0 + 96);
            v42(v34);
          }

          v45 = *(v0 + 104);
          v44 = *(v0 + 112);

          v46 = *(v0 + 8);

          v46();
          return;
        }

        *(v0 + 144) = 0;
        v47 = *(v0 + 64);
        if ((v47 & 0xC000000000000001) != 0)
        {
          v48 = MEMORY[0x245D470F0](v41);
        }

        else
        {
          if (v41 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v48 = *(v47 + 8 * v41 + 32);
        }

        v49 = v48;
        *(v0 + 152) = v48;
        *(v0 + 160) = v41 + 1;
        if (!__OFADD__(v41, 1))
        {
          break;
        }

        __break(1u);
LABEL_38:
        swift_once();
LABEL_13:
        v20 = *(v0 + 152);
        v21 = sub_243AC1468();
        __swift_project_value_buffer(v21, qword_27EDA14A8);
        v22 = v20;
        v23 = sub_243AC1448();
        v24 = sub_243AC2B58();

        v25 = os_log_type_enabled(v23, v24);
        v26 = *(v0 + 152);
        if (v25)
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v52 = v28;
          *v27 = 136315138;
          v29 = [v26 identifier];
          v30 = sub_243AC2858();
          v32 = v31;

          v33 = sub_243AB73D8(v30, v32, &v52);

          *(v27 + 4) = v33;
          _os_log_impl(&dword_243A1B000, v23, v24, "No rule found for %s. Cannot update template.", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v28);
          MEMORY[0x245D47D20](v28, -1, -1);
          MEMORY[0x245D47D20](v27, -1, -1);
        }
      }

      *(v0 + 168) = *(*(v0 + 72) + 48);

      v50 = swift_task_alloc();
      *(v0 + 176) = v50;
      *v50 = v0;
      v50[1] = sub_243AA39E8;

      sub_243A26C8C(v49);
    }
  }

  else
  {
    *(v0 + 184) = *(*(v0 + 72) + 48);

    v5 = swift_task_alloc();
    *(v0 + 192) = v5;
    *v5 = v0;
    v5[1] = sub_243AA41D4;
    v6 = *(v0 + 152);

    sub_243A2685C(v6);
  }
}

uint64_t sub_243AA41D4(char a1)
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 201) = a1;

  return MEMORY[0x2822009F8](sub_243AA42F4, 0, 0);
}

void sub_243AA42F4()
{
  v1 = *(v0 + 152);
  if (*(v0 + 201))
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 72);
    [*(v0 + 152) setStatus_];
    v4 = *(v3 + 32);
    *(swift_task_alloc() + 16) = v1;
    v5 = (v4 + 24);

    os_unfair_lock_lock((v4 + 24));
    sub_243A49930((v4 + 16));
    if (v2)
    {
LABEL_3:

      os_unfair_lock_unlock(v5);
      return;
    }

    goto LABEL_13;
  }

  v6 = [*(v0 + 152) status];
  if (!v6)
  {
    v27 = *(v0 + 144);
    v26 = *(v0 + 152);
    v28 = *(*(v0 + 72) + 16);
    *(swift_task_alloc() + 16) = v26;
    v5 = (v28 + 24);

    os_unfair_lock_lock((v28 + 24));
    sub_243A49930((v28 + 16));
    if (v27)
    {
      goto LABEL_3;
    }

LABEL_13:
    v29 = *(v0 + 152);
    os_unfair_lock_unlock(v5);

    v31 = 0;
    goto LABEL_18;
  }

  if (qword_27ED98910 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 152);
  v8 = sub_243AC1468();
  __swift_project_value_buffer(v8, qword_27EDA14A8);
  v9 = v7;
  v10 = sub_243AC1448();
  v11 = sub_243AC2B48();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 152);
  if (v12)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *(v0 + 48) = v15;
    *v14 = 136315394;
    v16 = [v13 identifier];
    v17 = sub_243AC2858();
    v19 = v18;

    v20 = sub_243AB73D8(v17, v19, (v0 + 48));

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = [v13 status];
    if (v21)
    {
      v22 = v21;
      v23 = sub_243AC2858();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0xE000000000000000;
    }

    v32 = *(v0 + 152);
    v33 = sub_243AB73D8(v23, v25, (v0 + 48));

    *(v14 + 14) = v33;
    _os_log_impl(&dword_243A1B000, v10, v11, "Unknow status when filtering completed recommendations for id: %s status: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D47D20](v15, -1, -1);
    MEMORY[0x245D47D20](v14, -1, -1);
  }

  else
  {
  }

  v31 = *(v0 + 144);
LABEL_18:
  v34 = *(v0 + 160);
  if (v34 == *(v0 + 120))
  {
    v35 = *(v0 + 88);
    if (v35)
    {
      v36 = *(v0 + 96);
      v35(v30);
    }

    v38 = *(v0 + 104);
    v37 = *(v0 + 112);

    v39 = *(v0 + 8);

    v39();
    return;
  }

  *(v0 + 144) = v31;
  v40 = *(v0 + 64);
  if ((v40 & 0xC000000000000001) != 0)
  {
    v41 = MEMORY[0x245D470F0](v34);
  }

  else
  {
    if (v34 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_33:
      __break(1u);
      return;
    }

    v41 = *(v40 + 8 * v34 + 32);
  }

  v42 = v41;
  *(v0 + 152) = v41;
  *(v0 + 160) = v34 + 1;
  if (__OFADD__(v34, 1))
  {
    __break(1u);
    goto LABEL_33;
  }

  *(v0 + 168) = *(*(v0 + 72) + 48);

  v43 = swift_task_alloc();
  *(v0 + 176) = v43;
  *v43 = v0;
  v43[1] = sub_243AA39E8;

  sub_243A26C8C(v42);
}

uint64_t sub_243AA4768()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  if (v0[7])
  {
    v5 = v0[8];
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_243AA47C8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_243AA47D8()
{
  v1 = v0[2];

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  v3 = MEMORY[0x277D84F90];
  *(v1 + 16) = sub_243A2E2A0(MEMORY[0x277D84F90]);
  os_unfair_lock_unlock((v1 + 24));

  v4 = v0[3];

  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);

  *(v4 + 16) = sub_243A2E2A0(v3);
  os_unfair_lock_unlock((v4 + 24));

  v6 = v0[4];

  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);

  *(v6 + 16) = sub_243A2E2A0(v3);
  os_unfair_lock_unlock((v6 + 24));
}

id sub_243AA48B8(void *a1)
{
  [a1 setStatus_];

  return [a1 setCompleted_];
}

uint64_t sub_243AA4910(void *a1)
{
  v3 = type metadata accessor for RecommendationSectionViewModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  v26 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98F40, &qword_243AC52E0);
  sub_243AC1688();
  *(v6 + OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationSectionViewModel_sectionModel) = a1;
  v25 = v6;
  *(v6 + OBJC_IVAR____TtC21CloudRecommendationUI30RecommendationSectionViewModel_totalSectionScore) = 0;
  v7 = *(v1 + 24);
  v8 = a1;

  os_unfair_lock_lock((v7 + 24));
  v9 = *(v7 + 16);
  v10 = *(v9 + 16);
  if (v10)
  {
    v23 = v1;
    v11 = sub_243AA6A88(v10, 0);
    v12 = sub_243AA8424(&v26, v11 + 4, v10, v9);

    sub_243A48354();
    if (v12 != v10)
    {
      __break(1u);
      goto LABEL_8;
    }

    v1 = v23;
  }

  v26 = sub_243AA7C90(v13, sub_243AA7D2C);
  sub_243AA6BB4(&v26);

  v24 = v26;
  os_unfair_lock_unlock((v7 + 24));

  v14 = *(v1 + 32);

  os_unfair_lock_lock((v14 + 24));
  v15 = *(v14 + 16);
  v16 = *(v15 + 16);
  if (!v16 || (v17 = sub_243AA6A88(v16, 0), v10 = sub_243AA8424(&v26, v17 + 4, v16, v15), , sub_243A48354(), v10 == v16))
  {

    v26 = sub_243AA7C90(v18, sub_243AA7D2C);
    sub_243AA6BB4(&v26);

    v19 = v26;
    os_unfair_lock_unlock((v14 + 24));

    swift_getKeyPath();
    swift_getKeyPath();
    v20 = sub_243AC1698();
    sub_243AA34D0(v24, sub_243AA7D2C);
    v20(&v26, 0);

    swift_getKeyPath();
    swift_getKeyPath();
    v21 = sub_243AC1698();
    sub_243AA34D0(v19, sub_243AA7D2C);
    v21(&v26, 0);

    return v25;
  }

LABEL_8:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_243AA4C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v14;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = sub_243AC1268();
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v11 = *(v10 + 64) + 15;
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243AA4D70, 0, 0);
}

uint64_t sub_243AA4D70()
{
  v1 = [*(v0 + 16) category];
  v2 = sub_243AC2858();
  v4 = v3;

  v5 = *MEMORY[0x277CFB170];
  if (sub_243AC2858() == v2 && v6 == v4)
  {

LABEL_8:
    v9 = *(v0 + 16);

    v10 = [v9 identifier];
    sub_243AC2858();

    if (sub_243A5B5E4() == 11)
    {
      v11 = swift_task_alloc();
      *(v0 + 96) = v11;
      *v11 = v0;
      v11[1] = sub_243AA51AC;
      v13 = *(v0 + 24);
      v12 = *(v0 + 32);
      v14 = *(v0 + 16);

      return sub_243AA5E20(v14, v12);
    }

    v16 = sub_243AA52A8;
    v17 = 0;
    v18 = 0;
    goto LABEL_22;
  }

  v8 = sub_243AC2EE8();

  if (v8)
  {
    goto LABEL_8;
  }

  v19 = *MEMORY[0x277CFB160];
  if (sub_243AC2858() == v2 && v20 == v4)
  {

LABEL_20:
    v23 = *(v0 + 88);

    sub_243AC1258();
    *(v0 + 104) = sub_243AC2A58();
    *(v0 + 112) = sub_243AC2A48();
    *(v0 + 120) = sub_243AC2A48();
    v24 = sub_243AC2A28();
    v26 = v25;
    v27 = sub_243AA5324;
LABEL_21:
    v16 = v27;
    v17 = v24;
    v18 = v26;
LABEL_22:

    return MEMORY[0x2822009F8](v16, v17, v18);
  }

  v22 = sub_243AC2EE8();

  if (v22)
  {
    goto LABEL_20;
  }

  v28 = *MEMORY[0x277CFB168];
  if (sub_243AC2858() == v2 && v29 == v4)
  {

LABEL_29:
    v31 = *(v0 + 80);

    sub_243AC1258();
    sub_243AC2A58();
    *(v0 + 128) = sub_243AC2A48();
    v24 = sub_243AC2A28();
    v26 = v32;
    v27 = sub_243AA5598;
    goto LABEL_21;
  }

  v30 = sub_243AC2EE8();

  if (v30)
  {
    goto LABEL_29;
  }

  v33 = *MEMORY[0x277CFB178];
  if (sub_243AC2858() == v2 && v34 == v4)
  {

LABEL_34:
    v36 = swift_task_alloc();
    *(v0 + 136) = v36;
    *v36 = v0;
    v36[1] = sub_243AA56CC;
    v38 = *(v0 + 24);
    v37 = *(v0 + 32);
    v39 = *(v0 + 16);

    return sub_243AA57C8(v39, v37);
  }

  v35 = sub_243AC2EE8();

  if (v35)
  {
    goto LABEL_34;
  }

  v41 = *(v0 + 80);
  v40 = *(v0 + 88);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_243AA51AC()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_243AA52A8, 0, 0);
}

uint64_t sub_243AA52A8()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[7];
    v1();
  }

  v4 = v0[10];
  v3 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_243AA5324()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[2];
  v6 = v0[3];

  v7 = *(v6 + 56);

  v8 = [v5 subTitle];
  sub_243AC2858();

  sub_243A59DA4();

  v9 = sub_243AC2818();

  [v5 setSubTitle_];

  v11 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243AA5460, v11, v10);
}

uint64_t sub_243AA5460()
{
  v1 = v0[14];
  v2 = v0[5];

  if (v2 >= 1)
  {
    v3 = v0[5];
    v4 = v0[2];
    v5 = *(v0[3] + 56);

    v6 = [v4 message];
    v7 = sub_243AC2858();
    v9 = v8;

    sub_243A59E9C(v7, v9);

    v10 = sub_243AC2818();

    [v4 setMessage_];
  }

  (*(v0[9] + 8))(v0[11], v0[8]);

  return MEMORY[0x2822009F8](sub_243AA9000, 0, 0);
}

uint64_t sub_243AA5598()
{
  v1 = v0[16];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v6 = v0[2];
  v5 = v0[3];

  v7 = *(v5 + 56);

  v8 = [v6 subTitle];
  sub_243AC2858();

  sub_243A59DA4();

  v9 = sub_243AC2818();

  [v6 setSubTitle_];

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_243AA9000, 0, 0);
}

uint64_t sub_243AA56CC()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_243AA9000, 0, 0);
}

uint64_t sub_243AA57C8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_243AC1268();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_243AA588C, 0, 0);
}

uint64_t sub_243AA588C()
{
  v1 = [*(v0 + 16) identifier];
  sub_243AC2858();

  v2 = sub_243A5B5E4();
  if (v2 > 0xE)
  {
    if (v2 - 15 > 1)
    {
LABEL_15:
      v14 = *(v0 + 56);

      v15 = *(v0 + 8);

      return v15();
    }

    goto LABEL_9;
  }

  if (v2)
  {
    if (v2 != 2)
    {
      if (v2 == 4)
      {
        v3 = swift_task_alloc();
        *(v0 + 80) = v3;
        *v3 = v0;
        v3[1] = sub_243AA5D10;
        v4 = *(v0 + 24);
        v5 = *(v0 + 32);
        v6 = *(v0 + 16);

        return sub_243AA6200(v6, v4);
      }

      goto LABEL_15;
    }

LABEL_9:
    v8 = swift_task_alloc();
    *(v0 + 64) = v8;
    *v8 = v0;
    v8[1] = sub_243AA5ACC;
    v9 = *(v0 + 32);
    v10 = *(v0 + 16);

    return sub_243AA8A74(v10);
  }

  v11 = *(v0 + 56);
  sub_243AC1258();
  sub_243AC2A58();
  *(v0 + 72) = sub_243AC2A48();
  v13 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243AA5BDC, v13, v12);
}

uint64_t sub_243AA5ACC()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v6 = *v0;

  v3 = *(v1 + 56);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_243AA5BDC()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  v7 = *(v4 + 56);

  v8 = [v6 subTitle];
  sub_243AC2858();

  sub_243A59DA4();

  v9 = sub_243AC2818();

  [v6 setSubTitle_];

  (*(v3 + 8))(v2, v5);
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_243AA5D10()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 56);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_243AA5E20(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  sub_243AC2A58();
  v3[13] = sub_243AC2A48();
  v5 = sub_243AC2A28();

  return MEMORY[0x2822009F8](sub_243AA5EBC, v5, v4);
}

uint64_t sub_243AA5EBC()
{
  v31 = v0;
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);

  v3 = [*(v2 + 40) aa_primaryEmail];
  if (v3)
  {
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    v6 = v3;
    v7 = sub_243AC2858();
    v9 = v8;

    sub_243AA8578(v4, v5);
    v10 = [v4 subTitle];
    v11 = sub_243AC2858();
    v13 = v12;

    *(v0 + 32) = v11;
    *(v0 + 40) = v13;
    strcpy((v0 + 48), "%%iCloudMail%%");
    *(v0 + 63) = -18;
    *(v0 + 64) = v7;
    *(v0 + 72) = v9;
    sub_243A5A654();
    v28 = sub_243A5A6A8();
    v29 = MEMORY[0x277D835C8];
    sub_243AC2B18();

    v14 = *(v0 + 16);
    v15 = *(v0 + 24);
    v16 = sub_243AC2818();

    [v4 setSubTitle_];
  }

  else
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 96);
    v18 = sub_243AC1468();
    __swift_project_value_buffer(v18, qword_27EDA14A8);

    v19 = sub_243AC1448();
    v20 = sub_243AC2B48();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v21 = 136315394;
      *(v21 + 4) = sub_243AB73D8(0xD000000000000029, 0x8000000243ACE430, &v30);
      *(v21 + 12) = 2112;
      v24 = *(v2 + 40);
      *(v21 + 14) = v24;
      *v22 = v24;
      v25 = v24;
      _os_log_impl(&dword_243A1B000, v19, v20, "%s Primary email not found for account %@", v21, 0x16u);
      sub_243A2251C(v22, &qword_27ED98BF8, &unk_243AC6150);
      MEMORY[0x245D47D20](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x245D47D20](v23, -1, -1);
      MEMORY[0x245D47D20](v21, -1, -1);
    }
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_243AA6200(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_243AA6224, 0, 0);
}

uint64_t sub_243AA6224()
{
  v0[5] = *(v0[4] + 48);

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_243AA62C8;

  return sub_243A28A14();
}

uint64_t sub_243AA62C8(char a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_243AA63E8, 0, 0);
}

uint64_t sub_243AA63E8()
{
  if (*(v0 + 56) > 2u)
  {
    if (qword_27ED98910 != -1)
    {
      swift_once();
    }

    v1 = sub_243AC1468();
    __swift_project_value_buffer(v1, qword_27EDA14A8);
    v2 = sub_243AC1448();
    v3 = sub_243AC2B48();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_243A1B000, v2, v3, "Skipping updatePrivateRelayTemplate because a restriction profile was detected", v4, 2u);
      MEMORY[0x245D47D20](v4, -1, -1);
    }
  }

  else
  {
    sub_243AA8578(*(v0 + 16), *(v0 + 24));
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_243AA6570(void *a1)
{
  v3 = *(v1 + 32);

  os_unfair_lock_lock(v3 + 6);
  sub_243A46E28(v3 + 16);
  os_unfair_lock_unlock(v3 + 6);

  [a1 setStatus_];
  [*(v1 + 64) clearLastDismissed_];
  v4 = *(v1 + 16);

  os_unfair_lock_lock((v4 + 24));
  sub_243A494E4((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));
}

uint64_t sub_243AA6648()
{
  v1 = *(v0 + 32);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_243AA6A88(*(v2 + 16), 0);
    v5 = sub_243AA8424(&v9, v4 + 4, v3, v2);

    sub_243A48354();
    if (v5 != v3)
    {
      __break(1u);
    }
  }

  v9 = sub_243AA7C90(v6, sub_243AA7D2C);
  sub_243AA6BB4(&v9);

  v7 = v9;
  os_unfair_lock_unlock((v1 + 24));

  return v7;
}

uint64_t sub_243AA677C()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_243AA6A88(*(v2 + 16), 0);
    v5 = sub_243AA8424(&v9, v4 + 4, v3, v2);

    sub_243A48354();
    if (v5 != v3)
    {
      __break(1u);
    }
  }

  v9 = sub_243AA7C90(v6, sub_243AA7D2C);
  sub_243AA6BB4(&v9);

  v7 = v9;
  os_unfair_lock_unlock((v1 + 24));

  return v7;
}

uint64_t CompletedRecommendationController.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  return v0;
}

uint64_t CompletedRecommendationController.__deallocating_deinit()
{
  CompletedRecommendationController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_243AA6934@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CompletedRecommendationController();
  result = sub_243AC1668();
  *a1 = result;
  return result;
}

void *sub_243AA6970(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED9A3F8, &unk_243ACA690);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_243AA69F4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED995D8, &unk_243AC6B10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_243AA6A88(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED98EE8, &unk_243AC8050);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_243AA6B14(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_243AC2DF8();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_243AC2D38();
  *v1 = result;
  return result;
}

uint64_t sub_243AA6BB4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_243A4997C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_243AA6C30(v6);
  return sub_243AC2D78();
}

void sub_243AA6C30(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_243AC2EA8();
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
        sub_243A2CFF0(0, &qword_27ED98F70, 0x277CFB1B0);
        v6 = sub_243AC29C8();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_243AA6EEC(v8, v9, a1, v4);
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
    sub_243AA6D44(0, v2, 1, a1);
  }
}

void sub_243AA6D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v28 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_6:
    v26 = v4;
    v27 = a3;
    v6 = *(v28 + 8 * a3);
    v25 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 identifier];
      sub_243AC2858();

      v11 = sub_243A5B5E4();
      if (v11 == 21 || (v12 = v11, v13 = [v9 identifier], sub_243AC2858(), v13, v14 = sub_243A5B5E4(), v14 == 21))
      {

LABEL_5:
        a3 = v27 + 1;
        v4 = v26 + 8;
        v5 = v25 - 1;
        if (v27 + 1 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v15 = v14;
      v16 = sub_243AA2FAC(v12, &unk_2856B92B8);
      if (v17)
      {
        goto LABEL_17;
      }

      v18 = v16;
      v19 = sub_243AA2FAC(v15, &unk_2856B92B8);
      if (v20)
      {
        break;
      }

      v21 = v19;

      if (v18 < v21)
      {
        if (!v28)
        {
          goto LABEL_18;
        }

        v22 = *v4;
        v6 = *(v4 + 8);
        *v4 = v6;
        *(v4 + 8) = v22;
        v4 -= 8;
        if (!__CFADD__(v5++, 1))
        {
          continue;
        }
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }
}

void sub_243AA6EEC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_109:
    v5 = v10;
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_151;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_111:
      v118 = *(v5 + 2);
      if (v118 >= 2)
      {
        do
        {
          v119 = *v7;
          if (!*v7)
          {
            goto LABEL_147;
          }

          v7 = (v118 - 1);
          v120 = *&v5[16 * v118];
          v121 = *&v5[16 * v118 + 24];
          sub_243AA77C8((v119 + 8 * v120), (v119 + 8 * *&v5[16 * v118 + 16]), (v119 + 8 * v121), v10);
          if (v6)
          {
            break;
          }

          if (v121 < v120)
          {
            goto LABEL_134;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_243A45C54(v5);
          }

          if (v118 - 2 >= *(v5 + 2))
          {
            goto LABEL_135;
          }

          v122 = &v5[16 * v118];
          *v122 = v120;
          *(v122 + 1) = v121;
          sub_243A45BC8(v118 - 1);
          v118 = *(v5 + 2);
          v7 = a3;
        }

        while (v118 > 1);
      }

LABEL_119:

      return;
    }

LABEL_141:
    v5 = sub_243A45C54(v5);
    goto LABEL_111;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    v130 = v10;
    if (v12 >= v8)
    {
      v134 = v12;
    }

    else
    {
      v136 = v8;
      v13 = *v7;
      v125 = v11;
      v14 = *(*v7 + 8 * v11);
      v15 = *(*v7 + 8 * v12);
      v5 = v14;
      v16 = [v15 identifier];
      sub_243AC2858();

      v17 = sub_243A5B5E4();
      if (v17 == 21 || (v133 = v17, v18 = [v5 identifier], sub_243AC2858(), v18, v19 = sub_243A5B5E4(), v19 == 21))
      {

        v20 = 0;
        v10 = v130;
      }

      else
      {
        v21 = v19;
        v22 = sub_243AA2FAC(v133, &unk_2856B92B8);
        v10 = v130;
        if (v23)
        {
          goto LABEL_153;
        }

        v24 = v22;
        v25 = sub_243AA2FAC(v21, &unk_2856B92B8);
        if (v26)
        {
          goto LABEL_152;
        }

        v27 = v25;

        v20 = v24 < v27;
      }

      v134 = v11 + 2;
      if (v11 + 2 >= v136)
      {
        v7 = a3;
        if (v20)
        {
LABEL_28:
          v43 = v134;
          if (v134 < v11)
          {
            goto LABEL_138;
          }

          if (v11 < v134)
          {
            v44 = 8 * v134 - 8;
            v45 = 8 * v11;
            v46 = v11;
            do
            {
              if (v46 != --v43)
              {
                v47 = *v7;
                if (!*v7)
                {
                  goto LABEL_146;
                }

                v48 = *(v47 + v45);
                *(v47 + v45) = *(v47 + v44);
                *(v47 + v44) = v48;
              }

              ++v46;
              v44 -= 8;
              v45 += 8;
            }

            while (v46 < v43);
          }
        }
      }

      else
      {
        v28 = (v13 + 8 * v11 + 16);
        do
        {
          v29 = *(v28 - 1);
          v30 = *v28;
          v5 = v29;
          v31 = [v30 identifier];
          sub_243AC2858();

          v32 = sub_243A5B5E4();
          if (v32 == 21 || (v33 = v32, v34 = [v5 identifier], sub_243AC2858(), v34, v35 = sub_243A5B5E4(), v35 == 21))
          {

            v10 = v130;
            if (v20)
            {
              v7 = a3;
              v11 = v125;
              goto LABEL_28;
            }
          }

          else
          {
            v36 = v35;
            v37 = sub_243AA2FAC(v33, &unk_2856B92B8);
            if (v38)
            {
              goto LABEL_149;
            }

            v39 = v37;
            v40 = sub_243AA2FAC(v36, &unk_2856B92B8);
            v10 = v130;
            if (v41)
            {
              goto LABEL_148;
            }

            v42 = v40;

            if (((v20 ^ (v39 >= v42)) & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          ++v28;
          ++v134;
        }

        while (v136 != v134);
        v134 = v136;
LABEL_25:
        v7 = a3;
        v11 = v125;
        if (v20)
        {
          goto LABEL_28;
        }
      }
    }

    v49 = v7[1];
    if (v134 < v49)
    {
      if (__OFSUB__(v134, v11))
      {
        goto LABEL_137;
      }

      if (v134 - v11 < a4)
      {
        break;
      }
    }

LABEL_58:
    if (v134 < v11)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_243A45C68(0, *(v10 + 2) + 1, 1, v10);
    }

    v73 = *(v10 + 2);
    v72 = *(v10 + 3);
    v74 = v73 + 1;
    if (v73 >= v72 >> 1)
    {
      v10 = sub_243A45C68((v72 > 1), v73 + 1, 1, v10);
    }

    *(v10 + 2) = v74;
    v75 = &v10[16 * v73];
    *(v75 + 4) = v11;
    *(v75 + 5) = v134;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_150;
    }

    if (v73)
    {
      while (1)
      {
        v76 = v74 - 1;
        if (v74 >= 4)
        {
          break;
        }

        if (v74 == 3)
        {
          v77 = *(v10 + 4);
          v78 = *(v10 + 5);
          v87 = __OFSUB__(v78, v77);
          v79 = v78 - v77;
          v80 = v87;
LABEL_78:
          if (v80)
          {
            goto LABEL_125;
          }

          v93 = &v10[16 * v74];
          v95 = *v93;
          v94 = *(v93 + 1);
          v96 = __OFSUB__(v94, v95);
          v97 = v94 - v95;
          v98 = v96;
          if (v96)
          {
            goto LABEL_128;
          }

          v99 = &v10[16 * v76 + 32];
          v101 = *v99;
          v100 = *(v99 + 1);
          v87 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v87)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v97, v102))
          {
            goto LABEL_132;
          }

          if (v97 + v102 >= v79)
          {
            if (v79 < v102)
            {
              v76 = v74 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        v103 = &v10[16 * v74];
        v105 = *v103;
        v104 = *(v103 + 1);
        v87 = __OFSUB__(v104, v105);
        v97 = v104 - v105;
        v98 = v87;
LABEL_92:
        if (v98)
        {
          goto LABEL_127;
        }

        v106 = &v10[16 * v76];
        v108 = *(v106 + 4);
        v107 = *(v106 + 5);
        v87 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v87)
        {
          goto LABEL_130;
        }

        if (v109 < v97)
        {
          goto LABEL_3;
        }

LABEL_99:
        v114 = v76 - 1;
        if (v76 - 1 >= v74)
        {
          __break(1u);
LABEL_121:
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*v7)
        {
          goto LABEL_145;
        }

        v115 = *&v10[16 * v114 + 32];
        v116 = *&v10[16 * v76 + 40];
        sub_243AA77C8((*v7 + 8 * v115), (*v7 + 8 * *&v10[16 * v76 + 32]), (*v7 + 8 * v116), v5);
        if (v6)
        {
          goto LABEL_119;
        }

        if (v116 < v115)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_243A45C54(v10);
        }

        if (v114 >= *(v10 + 2))
        {
          goto LABEL_122;
        }

        v117 = &v10[16 * v114];
        *(v117 + 4) = v115;
        *(v117 + 5) = v116;
        sub_243A45BC8(v76);
        v74 = *(v10 + 2);
        if (v74 <= 1)
        {
          goto LABEL_3;
        }
      }

      v81 = &v10[16 * v74 + 32];
      v82 = *(v81 - 64);
      v83 = *(v81 - 56);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_123;
      }

      v86 = *(v81 - 48);
      v85 = *(v81 - 40);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_124;
      }

      v88 = &v10[16 * v74];
      v90 = *v88;
      v89 = *(v88 + 1);
      v87 = __OFSUB__(v89, v90);
      v91 = v89 - v90;
      if (v87)
      {
        goto LABEL_126;
      }

      v87 = __OFADD__(v79, v91);
      v92 = v79 + v91;
      if (v87)
      {
        goto LABEL_129;
      }

      if (v92 >= v84)
      {
        v110 = &v10[16 * v76 + 32];
        v112 = *v110;
        v111 = *(v110 + 1);
        v87 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v87)
        {
          goto LABEL_133;
        }

        if (v79 < v113)
        {
          v76 = v74 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_78;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v134;
    if (v134 >= v8)
    {
      goto LABEL_109;
    }
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_139;
  }

  if (v11 + a4 >= v49)
  {
    v50 = v7[1];
  }

  else
  {
    v50 = v11 + a4;
  }

  if (v50 < v11)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v134 == v50)
  {
    goto LABEL_58;
  }

  v123 = v6;
  v137 = *v7;
  v51 = *v7 + 8 * v134 - 8;
  v126 = v11;
  v52 = v11 - v134;
  v53 = 0x278DE1000;
  v54 = v134;
  v129 = v50;
LABEL_47:
  v132 = v51;
  v135 = v54;
  v55 = *(v137 + 8 * v54);
  v131 = v52;
  while (1)
  {
    v56 = *v51;
    v57 = v55;
    v5 = v56;
    v58 = [v57 *(v53 + 4088)];
    sub_243AC2858();

    v59 = sub_243A5B5E4();
    if (v59 == 21 || (v60 = v59, v61 = [v5 *(v53 + 4088)], sub_243AC2858(), v61, v62 = sub_243A5B5E4(), v62 == 21))
    {

LABEL_46:
      v54 = v135 + 1;
      v51 = v132 + 8;
      v52 = v131 - 1;
      if (v135 + 1 == v129)
      {
        v134 = v129;
        v6 = v123;
        v7 = a3;
        v10 = v130;
        v11 = v126;
        goto LABEL_58;
      }

      goto LABEL_47;
    }

    v63 = v62;
    v64 = sub_243AA2FAC(v60, &unk_2856B92B8);
    if (v65)
    {
      goto LABEL_143;
    }

    v66 = v64;
    v67 = sub_243AA2FAC(v63, &unk_2856B92B8);
    v53 = 0x278DE1000uLL;
    if (v68)
    {
      break;
    }

    v69 = v67;

    if (v66 >= v69)
    {
      goto LABEL_46;
    }

    if (!v137)
    {
      goto LABEL_144;
    }

    v70 = *v51;
    v55 = *(v51 + 8);
    *v51 = v55;
    *(v51 + 8) = v70;
    v51 -= 8;
    if (__CFADD__(v52++, 1))
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
}

uint64_t sub_243AA77C8(void **a1, id *__dst, void **a3, void **a4)
{
  __src = a1;
  v4 = __dst;
  v5 = __dst - a1;
  v6 = __dst - a1 + 7;
  if (__dst - a1 >= 0)
  {
    v6 = __dst - a1;
  }

  v7 = v6 >> 3;
  v53 = a3;
  v8 = a3 - __dst;
  v9 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v9 = a3 - __dst;
  }

  v10 = v9 >> 3;
  if (v7 < v9 >> 3)
  {
    v11 = a4;
    if (a4 != a1 || &a1[v7] <= a4)
    {
      memmove(a4, a1, 8 * v7);
      v4 = __dst;
    }

    v13 = &v11[v7];
    if (v5 >= 8 && v4 < v53)
    {
      while (1)
      {
        v50 = v4;
        v14 = *v11;
        v15 = *v4;
        v16 = v14;
        v17 = [v15 identifier];
        sub_243AC2858();

        v18 = sub_243A5B5E4();
        if (v18 == 21)
        {
          break;
        }

        v19 = v18;
        v20 = [v16 identifier];
        sub_243AC2858();

        v21 = sub_243A5B5E4();
        if (v21 == 21)
        {
          break;
        }

        v24 = v21;
        result = sub_243AA2FAC(v19, &unk_2856B92B8);
        if (v26)
        {
          goto LABEL_55;
        }

        v27 = result;
        result = sub_243AA2FAC(v24, &unk_2856B92B8);
        if (v28)
        {
          goto LABEL_53;
        }

        v29 = result;

        if (v27 >= v29)
        {
          goto LABEL_14;
        }

        v22 = v50;
        v4 = v50 + 1;
        if (__src != v50)
        {
          goto LABEL_15;
        }

LABEL_16:
        ++__src;
        if (v11 >= v13 || v4 >= v53)
        {
          goto LABEL_44;
        }
      }

LABEL_14:
      v22 = v11;
      v23 = __src == v11++;
      v4 = v50;
      if (v23)
      {
        goto LABEL_16;
      }

LABEL_15:
      *__src = *v22;
      goto LABEL_16;
    }

LABEL_44:
    v48 = __src;
LABEL_48:
    if (v48 != v11 || v48 >= (v11 + ((v13 - v11 + (v13 - v11 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(v48, v11, 8 * (v13 - v11));
    }

    return 1;
  }

  if (a4 != __dst || &__dst[v10] <= a4)
  {
    v30 = a4;
    memmove(a4, __dst, 8 * v10);
    v4 = __dst;
    a4 = v30;
  }

  v49 = a4;
  v13 = &a4[v10];
  if (v8 < 8)
  {
    v11 = a4;
    goto LABEL_47;
  }

  v11 = a4;
  if (v4 <= __src)
  {
LABEL_47:
    v48 = v4;
    goto LABEL_48;
  }

LABEL_29:
  v51 = v4;
  v32 = v4 - 1;
  --v53;
  v33 = v13;
  while (1)
  {
    v34 = *--v33;
    v35 = *v32;
    v36 = v34;
    v37 = v35;
    v38 = [v36 identifier];
    sub_243AC2858();

    v39 = sub_243A5B5E4();
    if (v39 == 21 || (v40 = v39, v41 = [v37 identifier], sub_243AC2858(), v41, v42 = sub_243A5B5E4(), v42 == 21))
    {

      goto LABEL_37;
    }

    v43 = v42;
    result = sub_243AA2FAC(v40, &unk_2856B92B8);
    if (v44)
    {
      break;
    }

    v45 = result;
    result = sub_243AA2FAC(v43, &unk_2856B92B8);
    if (v46)
    {
      goto LABEL_54;
    }

    v47 = result;

    if (v45 < v47)
    {
      if (v53 + 1 != v51)
      {
        *v53 = *v32;
      }

      v11 = v49;
      if (v13 <= v49 || (v4 = v32, v32 <= __src))
      {
        v48 = v32;
        goto LABEL_48;
      }

      goto LABEL_29;
    }

LABEL_37:
    if (v53 + 1 != v13)
    {
      *v53 = *v33;
    }

    --v53;
    v13 = v33;
    if (v33 <= v49)
    {
      v13 = v33;
      v11 = v49;
      v48 = v51;
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_243AA7C90(unint64_t a1, void (*a2)(void *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = sub_243AC2DF8();
  if (!v5)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v6 = v5;
  v7 = sub_243AA6A88(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}