uint64_t sub_24F657864()
{
  v1 = type metadata accessor for ImpedimentFlowDestinationStates();
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_24F65791C;

  return MEMORY[0x28217F228](v0 + 16, v1, v1);
}

uint64_t sub_24F65791C()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_24F657C38;
  }

  else
  {
    v5 = sub_24F657A58;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F657A58()
{
  v18 = v0;

  v1 = v0[2];
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);

  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    v0[3] = v1;

    v7 = sub_24F92B188();
    v9 = sub_24E7620D4(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24E5DD000, v3, v4, "ImpedimentFlowDestinationStates: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  v10 = v1[16];
  v11 = v1[17];
  v12 = v1[18];

  if (v12)
  {
    v13 = 0x10000;
  }

  else
  {
    v13 = 0;
  }

  if (v11)
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  v15 = v0[1];

  return v15(v14 | v10 | v13);
}

uint64_t sub_24F657C38()
{

  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 80);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed to get impediment flow states, error: %@", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_24F657DE8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 112) = a3;
  *(v4 + 48) = a1;
  sub_24F92B7F8();
  *(v4 + 72) = sub_24F92B7E8();
  v6 = sub_24F92B778();
  *(v4 + 80) = v6;
  *(v4 + 88) = v5;

  return MEMORY[0x2822009F8](sub_24F657E88, v6, v5);
}

uint64_t sub_24F657E88()
{
  v1 = type metadata accessor for ImpedimentFlowDestinationStates();
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_24F657F3C;

  return MEMORY[0x28217F228](v0 + 40, v1, v1);
}

uint64_t sub_24F657F3C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_24F65814C;
  }

  else
  {
    v5 = sub_24F658078;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F658078()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  v4 = *(v0 + 40);
  v5 = OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowDestinationStates_lastRecordedSignedInPlayer;
  swift_beginAccess();
  sub_24F65A500(v2, v4 + v5);
  swift_endAccess();
  v6 = v4 + OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowDestinationStates_lastRecordedSignedInAppStoreDSID;
  *v6 = v3;
  *(v6 + 8) = v1 & 1;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24F65814C()
{

  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed to memorize the signed in accounts, error: %@", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24F6582F8()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowAuthorityProvider__flowAuthority;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24F6587D0(v0 + OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowAuthorityProvider__state, type metadata accessor for ImpedimentFlowAuthorityProvider.State);

  v3 = OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowAuthorityProvider___observationRegistrar;
  v4 = sub_24F91FDC8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_24F658444()
{
  sub_24F658568();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ImpedimentFlowAuthorityProvider.State(319);
    if (v1 <= 0x3F)
    {
      sub_24F91FDC8();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24F658568()
{
  if (!qword_27F24B640)
  {
    type metadata accessor for ImpedimentFlowAction();
    sub_24F658634(&qword_27F23AFD0, type metadata accessor for ImpedimentFlowAction);
    sub_24F658634(&qword_27F23AFD8, type metadata accessor for ImpedimentFlowAction);
    v0 = sub_24F921888();
    if (!v1)
    {
      atomic_store(v0, &qword_27F24B640);
    }
  }
}

uint64_t sub_24F658634(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24F65869C()
{
  sub_24F658710();
  if (v0 <= 0x3F)
  {
    sub_24F658788();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24F658710()
{
  if (!qword_27F24B658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23E1F0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F24B658);
    }
  }
}

void sub_24F658788()
{
  if (!qword_27F24B660)
  {
    v0 = type metadata accessor for ImpedimentFlowDestination();
    if (!v1)
    {
      atomic_store(v0, &qword_27F24B660);
    }
  }
}

uint64_t sub_24F6587D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F658838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImpedimentFlowAuthorityProvider.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_24F65889C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v4 = objc_opt_self();

    v5 = [v4 standardUserDefaults];
    v6 = sub_24F008018();
    v8 = v7;

    if (!v8)
    {
      if (qword_27F211430 != -1)
      {
        swift_once();
      }

      v24 = sub_24F9220D8();
      __swift_project_value_buffer(v24, qword_27F39E8E0);

      v25 = sub_24F9220B8();
      v26 = sub_24F92BD98();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v33 = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_24E7620D4(a1, a2, &v33);
        _os_log_impl(&dword_24E5DD000, v25, v26, "The authenticated player is not tracked. accountPlayerID will be set to %s.", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x2530542D0](v28, -1, -1);
        MEMORY[0x2530542D0](v27, -1, -1);
      }

      v18 = [v4 standardUserDefaults];
      goto LABEL_23;
    }

    if (v6 == a1 && v8 == a2)
    {
    }

    else
    {
      v10 = sub_24F92CE08();

      if ((v10 & 1) == 0)
      {
        if (qword_27F211430 != -1)
        {
          swift_once();
        }

        v11 = sub_24F9220D8();
        __swift_project_value_buffer(v11, qword_27F39E8E0);

        v12 = sub_24F9220B8();
        v13 = sub_24F92BD98();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v33 = v15;
          *v14 = 136315138;
          *(v14 + 4) = sub_24E7620D4(a1, a2, &v33);
          _os_log_impl(&dword_24E5DD000, v12, v13, "The authenticated player changed. accountProperties will reset. accountPlayerID will be set to %s", v14, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v15);
          MEMORY[0x2530542D0](v15, -1, -1);
          MEMORY[0x2530542D0](v14, -1, -1);
        }

        v16 = [v4 standardUserDefaults];
        v17 = sub_24F92B098();
        [v16 removeObjectForKey_];

        v18 = [v4 standardUserDefaults];
LABEL_23:
        oslog = v18;
        sub_24F0080D4(a1, a2);
        goto LABEL_29;
      }
    }

    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v29 = sub_24F9220D8();
    __swift_project_value_buffer(v29, qword_27F39E8E0);
    oslog = sub_24F9220B8();
    v30 = sub_24F92BD98();
    if (os_log_type_enabled(oslog, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_24E5DD000, oslog, v30, "The authenticated player NOT changed.", v31, 2u);
      MEMORY[0x2530542D0](v31, -1, -1);
    }
  }

  else
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v19 = sub_24F9220D8();
    __swift_project_value_buffer(v19, qword_27F39E8E0);
    v20 = sub_24F9220B8();
    v21 = sub_24F92BD98();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_24E5DD000, v20, v21, "No authenticated player. accountProperties will reset.", v22, 2u);
      MEMORY[0x2530542D0](v22, -1, -1);
    }

    v23 = [objc_opt_self() standardUserDefaults];
    oslog = sub_24F92B098();
    [v23 removeObjectForKey_];
  }

LABEL_29:
}

uint64_t sub_24F658E00(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_24F91F648();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = [objc_opt_self() standardUserDefaults];
  sub_24F008DCC(v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_24E601704(v4, &unk_27F22EC30);
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v13 = sub_24F9220D8();
    __swift_project_value_buffer(v13, qword_27F39E8E0);
    v14 = sub_24F9220B8();
    v15 = sub_24F92BD98();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24E5DD000, v14, v15, "onboardingStateLastRefreshDate is nil. It should refresh.", v16, 2u);
      MEMORY[0x2530542D0](v16, -1, -1);
    }

    return 1;
  }

  (*(v6 + 32))(v11, v4, v5);
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v17 = sub_24F9220D8();
  __swift_project_value_buffer(v17, qword_27F39E8E0);
  (*(v6 + 16))(v8, v11, v5);
  v18 = sub_24F9220B8();
  v19 = sub_24F92BD98();
  v20 = os_log_type_enabled(v18, v19);
  v39 = v6;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40 = v38;
    *v21 = 136315394;
    sub_24F658634(&qword_27F229EE8, MEMORY[0x277CC9578]);
    v22 = sub_24F92CD88();
    v24 = v23;
    v25 = *(v6 + 8);
    v25(v8, v5);
    v26 = sub_24E7620D4(v22, v24, &v40);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2048;
    *(v21 + 14) = a1;
    _os_log_impl(&dword_24E5DD000, v18, v19, "onboardingStateLastRefreshDate is %s. TTL is %f seconds.", v21, 0x16u);
    v27 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x2530542D0](v27, -1, -1);
    MEMORY[0x2530542D0](v21, -1, -1);

    v28 = v25;
  }

  else
  {

    v28 = *(v6 + 8);
    v28(v8, v5);
  }

  sub_24F91F5C8();
  v30 = -v29;
  v31 = sub_24F9220B8();
  v32 = sub_24F92BD98();
  v33 = os_log_type_enabled(v31, v32);
  if (v30 >= a1)
  {
    if (v33)
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_24E5DD000, v31, v32, "Onboarding state is expired. It should refresh.", v36, 2u);
      MEMORY[0x2530542D0](v36, -1, -1);
    }

    v28(v11, v5);
    return 1;
  }

  if (v33)
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_24E5DD000, v31, v32, "Onboarding state is NOT expired. It should NOT refresh.", v34, 2u);
    MEMORY[0x2530542D0](v34, -1, -1);
  }

  v28(v11, v5);
  return 0;
}

uint64_t sub_24F659360(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4D8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - v3;
  v5 = sub_24F920958();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, v4, &qword_27F22D4D8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_24E601704(v4, &qword_27F22D4D8);
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v9 = sub_24F9220D8();
    __swift_project_value_buffer(v9, qword_27F39E8E0);
    v10 = sub_24F9220B8();
    v11 = sub_24F92BDB8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24E5DD000, v10, v11, "appStoreCrossUsePrivacyAccepted is skipped because OnboardingState is unavailable.", v12, 2u);
      MEMORY[0x2530542D0](v12, -1, -1);
    }

    return 1;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v14 = sub_24F9208C8();
    if (v15)
    {
      if (qword_27F211430 != -1)
      {
        swift_once();
      }

      v16 = sub_24F9220D8();
      __swift_project_value_buffer(v16, qword_27F39E8E0);
      v17 = sub_24F9220B8();
      v18 = sub_24F92BD98();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_24E5DD000, v17, v18, "appStoreCrossUsePrivacyAccepted is false because there is no linked DSID.", v19, 2u);
        MEMORY[0x2530542D0](v19, -1, -1);
      }

      (*(v6 + 8))(v8, v5);
      return 0;
    }

    else
    {
      v20 = v14;
      v21 = [objc_opt_self() ams:*MEMORY[0x277CEE160] sharedAccountStoreForMediaType:?];
      v22 = [v21 ams_activeiTunesAccount];
      v13 = [v22 ams_DSID];

      if (v13)
      {
        v23 = [v13 integerValue];

        v13 = v23 == v20;
      }

      if (qword_27F211430 != -1)
      {
        swift_once();
      }

      v24 = sub_24F9220D8();
      __swift_project_value_buffer(v24, qword_27F39E8E0);
      v25 = sub_24F9220B8();
      v26 = sub_24F92BD98();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 67109120;
        *(v27 + 4) = v13;
        _os_log_impl(&dword_24E5DD000, v25, v26, "appStoreCrossUsePrivacyAccepted is %{BOOL}d", v27, 8u);
        MEMORY[0x2530542D0](v27, -1, -1);
      }

      (*(v6 + 8))(v8, v5);
    }
  }

  return v13;
}

uint64_t sub_24F6597E4(uint64_t a1)
{
  v2 = sub_24F9208F8();
  v23 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4D8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = sub_24F920958();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, v10, &qword_27F22D4D8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24E601704(v10, &qword_27F22D4D8);
LABEL_8:
    v20 = 0;
    return v20 & 1;
  }

  (*(v12 + 32))(v14, v10, v11);
  v15 = [objc_opt_self() standardUserDefaults];
  v16 = sub_24F008F04();

  if (v16 || (sub_24F920908(), v17 = sub_24F9208E8(), v18 = *(v23 + 8), v18(v4, v2), (v17 & 1) == 0) || (sub_24F920918(), v19 = sub_24F9208E8(), v18(v4, v2), (v19 & 1) == 0))
  {
    (*(v12 + 8))(v14, v11);
    goto LABEL_8;
  }

  (*(v12 + 16))(v7, v14, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  v20 = sub_24F659360(v7);
  sub_24E601704(v7, &qword_27F22D4D8);
  (*(v12 + 8))(v14, v11);
  return v20 & 1;
}

unint64_t sub_24F659B50()
{
  result = qword_27F24B668;
  if (!qword_27F24B668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F24B668);
  }

  return result;
}

uint64_t sub_24F659B9C(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || a1 < 1)
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v16 = sub_24F9220D8();
    __swift_project_value_buffer(v16, qword_27F39E8E0);
    v17 = sub_24F9220B8();
    v18 = sub_24F92BD98();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315138;
      v25 = a1;
      v26 = a2 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390);
      v21 = sub_24F92B188();
      v23 = sub_24E7620D4(v21, v22, &v27);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_24E5DD000, v17, v18, "appStoreGamesPrivacyAccepted is temporary true because the version is invalid: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x2530542D0](v20, -1, -1);
      MEMORY[0x2530542D0](v19, -1, -1);
    }

    return 1;
  }

  else
  {
    v4 = objc_opt_self();
    v5 = sub_24F92B098();
    v6 = sub_24F92BB08();
    LODWORD(v4) = [v4 acknowledgementNeededForPrivacyIdentifier:v5 privacyVersion:v6];

    v7 = v4 ^ 1;
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v8 = sub_24F9220D8();
    __swift_project_value_buffer(v8, qword_27F39E8E0);
    v9 = sub_24F9220B8();
    v10 = sub_24F92BD98();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 136315394;
      v27 = a1;
      v13 = sub_24F92CD88();
      v15 = sub_24E7620D4(v13, v14, &v25);

      *(v11 + 4) = v15;
      *(v11 + 12) = 1024;
      *(v11 + 14) = v7;
      _os_log_impl(&dword_24E5DD000, v9, v10, "appStoreGamesPrivacyAccepted(version: %s) is %{BOOL}d", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x2530542D0](v12, -1, -1);
      MEMORY[0x2530542D0](v11, -1, -1);
    }
  }

  return v7;
}

uint64_t sub_24F659EB8()
{
  v1 = sub_24F921228();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v2 = sub_24F921238();
  v0[6] = v2;
  v0[7] = *(v2 - 8);
  v0[8] = swift_task_alloc();
  v3 = sub_24F921268();
  v0[9] = v3;
  v0[10] = *(v3 - 8);
  v0[11] = swift_task_alloc();
  sub_24F92B7F8();
  v0[12] = sub_24F92B7E8();
  v5 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F65A06C, v5, v4);
}

uint64_t sub_24F65A06C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  (*(v2 + 104))(v1, *MEMORY[0x277D36CA0], v3);
  sub_24F921258();
  (*(v2 + 8))(v1, v3);
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v7 = v0[3];
  sub_24F921248();
  (*(v7 + 104))(v5, *MEMORY[0x277D36C88], v6);
  v8 = sub_24F921218();
  v9 = *(v7 + 8);
  v9(v5, v6);
  v9(v4, v6);
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v10 = sub_24F9220D8();
  __swift_project_value_buffer(v10, qword_27F39E8E0);
  v11 = sub_24F9220B8();
  v12 = sub_24F92BD98();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v8 & 1;
    _os_log_impl(&dword_24E5DD000, v11, v12, "Antimony eligible: %{BOOL}d", v13, 8u);
    MEMORY[0x2530542D0](v13, -1, -1);
  }

  v15 = v0[10];
  v14 = v0[11];
  v16 = v0[9];

  (*(v15 + 8))(v14, v16);

  v17 = v0[1];

  return v17(v8 & 1);
}

uint64_t sub_24F65A404(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F65A46C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F65A500(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_24F65A598()
{
  type metadata accessor for Page(319);
  if (v0 <= 0x3F)
  {
    sub_24F928FD8();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_24F9220D8();
        if (v3 <= 0x3F)
        {
          sub_24E6C5550();
          if (v4 <= 0x3F)
          {
            sub_24F92C4A8();
            sub_24F926F68();
            if (v5 <= 0x3F)
            {
              sub_24E669CC0(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_24E684120();
                if (v7 <= 0x3F)
                {
                  sub_24E669CC0(319, &qword_27F215590, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
                  if (v8 <= 0x3F)
                  {
                    sub_24E669CC0(319, &qword_27F254DF0, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
                    if (v9 <= 0x3F)
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
}

uint64_t sub_24F65A75C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v90 = *(sub_24F92A708() - 8);
  v3 = *(v90 + 84);
  v89 = *(sub_24F928818() - 8);
  v77 = v3;
  if (v3 <= *(v89 + 84))
  {
    v4 = *(v89 + 84);
  }

  else
  {
    v4 = v3;
  }

  v76 = v4;
  if (v4 <= 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = v4;
  }

  v6 = *(sub_24F928388() - 8);
  v88 = *(v6 + 80) & 0xF8;
  v83 = v88 | 7;
  v87 = (v88 + 23) & ~(v88 | 7);
  v7 = (((((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 + 8;
  v9 = *(sub_24F9289E8() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  v12 = v11 + 7;
  v13 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = v13 + 9;
  v15 = *(v9 + 80);
  v16 = *(sub_24F922348() - 8);
  v80 = *(v16 + 80);
  if (*(v16 + 84))
  {
    v17 = *(v16 + 64);
  }

  else
  {
    v17 = *(v16 + 64) + 1;
  }

  v18 = v17 + ((v11 + v80) & ~v80);
  if (v18 + 1 > v14)
  {
    v14 = v18 + 1;
  }

  v19 = v10 == 0;
  v84 = v13 + 10;
  v20 = v15 | v88 | 7;
  if (v19)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v11;
  }

  v82 = v21;
  v22 = *(sub_24F91F4A8() - 8);
  v23 = *(v22 + 80) & 0xF8;
  v24 = *(sub_24F928698() - 8);
  v25 = *(v24 + 80);
  v79 = v15 | v25 | v23 | 7;
  v26 = *(v24 + 64);
  if (!*(v24 + 84))
  {
    ++v26;
  }

  v27 = ((v21 + (v15 | v25 | v23 | 7)) & ~(v15 | v25 | v23 | 7)) + ((v26 + ((v26 + v25 + ((v25 + ((((((v12 + ((*(v22 + 64) + v15) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v25)) & ~v25) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v27 <= v14)
  {
    v27 = v14;
  }

  if (v8 > v27)
  {
    v27 = v7 + 8;
  }

  v78 = v27;
  v28 = *(*(a3 + 24) - 8);
  v75 = *(v28 + 84);
  if (v75 <= v5)
  {
    v29 = v5;
  }

  else
  {
    v29 = *(v28 + 84);
  }

  v30 = *(sub_24F9220D8() - 8);
  v31 = *(v30 + 84);
  v74 = v31;
  if (v31 <= v29)
  {
    v31 = v29;
  }

  v73 = *(a3 + 16);
  v32 = *(v73 - 8);
  v33 = *(v32 + 84);
  v34 = v33 - 1;
  if (!v33)
  {
    v34 = 0;
  }

  if (v34 > v31)
  {
    v31 = v34;
  }

  v86 = v31;
  v35 = *(sub_24F925218() - 8);
  v36 = *(v90 + 64);
  v37 = *(v89 + 80);
  v38 = v8 + v87;
  if (((v82 + 7) & 0xFFFFFFFFFFFFFFF8) + 48 > v8 + v87)
  {
    v38 = ((v82 + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  }

  if (v38 <= v84)
  {
    v38 = v84;
  }

  if (v38 <= 0x19)
  {
    v38 = 25;
  }

  v39 = v38 + 1;
  if (v7 == -8)
  {
    v40 = 9;
  }

  else
  {
    v40 = v7 + 9;
  }

  v41 = v88 + v39 + 8;
  if (((v41 + ((v39 + v20) & ~v20)) & ~v83) + v8 <= v39)
  {
    v42 = v38 + 1;
  }

  else
  {
    v42 = ((v41 + ((v39 + v20) & ~v20)) & ~v83) + v8;
  }

  if (v42 <= 8)
  {
    v43 = 8;
  }

  else
  {
    v43 = v42;
  }

  if (v33)
  {
    v44 = 7;
  }

  else
  {
    v44 = 8;
  }

  v45 = *(v28 + 80);
  v46 = *(v30 + 80);
  if (*(v35 + 84))
  {
    v47 = *(v35 + 64);
  }

  else
  {
    v47 = *(v35 + 64) + 1;
  }

  if (v47 <= 8)
  {
    v48 = 8;
  }

  else
  {
    v48 = v47;
  }

  if (!a2)
  {
    return 0;
  }

  v49 = ((((((v41 + ((v20 + 16) & ~v20)) & ~v83) + v40) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + v20 + 40;
  v50 = (((((((((v78 + (((v20 | v80 | v79) + ((13 - ((-17 - v20 - ((((((((((((((*(v89 + 64) + ((v37 + ((v36 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v37) + 7) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v20) - (((-58 - v49 - ((v49 + (v49 & ~v20)) & ~v20)) | v20) - v43)) & 0xFFFFFFFFFFFFFFF8) + 16) & ~(v20 | v80 | v79)) + 1) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v51 = v45 + 8;
  v52 = *(v28 + 64) + v46;
  v53 = *(v30 + 64) + 7;
  v54 = *(v32 + 80) & 0xF8;
  v55 = ~v54 & 0xFFFFFFFFFFFFFFF8;
  v56 = v54 + 23;
  if (v86 >= a2)
  {
    goto LABEL_81;
  }

  v57 = *(v35 + 80) & 0xF8 | 7;
  v58 = ((v48 + ((v48 + v57 + ((((v44 + *(v32 + 64)) & 0xFFFFFFFFFFFFFFF8) + v57 + ((v56 + ((v53 + ((v52 + ((v51 + ((v50 + 49) & 0xFFFFFFFFFFFFFFF8)) & ~v45)) & ~v46)) & 0xFFFFFFFFFFFFFFF8)) & v55) + 24) & ~v57) + 1) & ~v57) + 24) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v58 <= 3)
  {
    v59 = ((a2 - v86 + 255) >> 8) + 1;
  }

  else
  {
    v59 = 2;
  }

  if (v59 >= 0x10000)
  {
    v60 = 4;
  }

  else
  {
    v60 = 2;
  }

  if (v59 < 0x100)
  {
    v60 = 1;
  }

  if (v59 >= 2)
  {
    v61 = v60;
  }

  else
  {
    v61 = 0;
  }

  if (v61 <= 1)
  {
    if (!v61)
    {
      goto LABEL_81;
    }

    v62 = a1[v58];
    if (!a1[v58])
    {
      goto LABEL_81;
    }

LABEL_74:
    v64 = v58 > 3;
    if (v58 <= 3)
    {
      v65 = (v62 - 1) << (8 * v58);
    }

    else
    {
      v65 = 0;
    }

    if (v64)
    {
      v71 = *a1;
    }

    else
    {
      v71 = *a1;
    }

    return v86 + (v71 | v65) + 1;
  }

  if (v61 == 2)
  {
    v62 = *&a1[v58];
    if (*&a1[v58])
    {
      goto LABEL_74;
    }
  }

  else
  {
    v62 = *&a1[v58];
    if (v62)
    {
      goto LABEL_74;
    }
  }

LABEL_81:
  if (v86 == v5)
  {
    if (v77 == v5)
    {
      v66 = *(v90 + 48);
      v67 = a1;
LABEL_97:

      return v66(v67);
    }

    v70 = &a1[v36 + 7] & 0xFFFFFFFFFFFFFFF8;
    if ((v76 & 0x80000000) != 0)
    {
      v66 = *(v89 + 48);
      v67 = (v70 + v37 + 16) & ~v37;
      goto LABEL_97;
    }

    v69 = *(v70 + 8);
  }

  else
  {
    v68 = (&a1[v50 + 49] & 0xFFFFFFFFFFFFFFF8);
    if ((v86 & 0x80000000) != 0)
    {
      v67 = (v68 + v51) & ~v45;
      if (v75 == v86)
      {
        v66 = *(v28 + 48);
      }

      else
      {
        v67 = (v52 + v67) & ~v46;
        if (v74 != v86)
        {
          v72 = (*(v32 + 48))((v56 + ((v53 + v67) & 0xFFFFFFFFFFFFFFF8)) & v55, v33, v73);
          if (v72 >= 2)
          {
            return v72 - 1;
          }

          else
          {
            return 0;
          }
        }

        v66 = *(v30 + 48);
      }

      goto LABEL_97;
    }

    v69 = *v68;
  }

  if (v69 >= 0xFFFFFFFF)
  {
    LODWORD(v69) = -1;
  }

  return (v69 + 1);
}

void sub_24F65B0A4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v91 = *(sub_24F92A708() - 8);
  v4 = *(v91 + 84);
  v78 = sub_24F928818();
  v89 = *(v78 - 8);
  v81 = v4;
  v77 = *(v89 + 84);
  if (v4 <= v77)
  {
    v5 = *(v89 + 84);
  }

  else
  {
    v5 = v4;
  }

  v80 = v5;
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = v5;
  }

  v98 = v6;
  v7 = *(sub_24F928388() - 8);
  v92 = *(v7 + 80) & 0xF8;
  v90 = (v92 + 23) & ~(v92 | 7);
  v84 = v92 | 7;
  v8 = (((((*(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v8 + 8;
  v10 = *(sub_24F9289E8() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 64);
  v13 = v12 + 7;
  v14 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = v14 + 9;
  v16 = *(v10 + 80);
  v17 = *(sub_24F922348() - 8);
  v93 = *(v17 + 80);
  if (*(v17 + 84))
  {
    v18 = *(v17 + 64);
  }

  else
  {
    v18 = *(v17 + 64) + 1;
  }

  v19 = v18 + ((v12 + v93) & ~v93);
  if (v19 + 1 > v15)
  {
    v15 = v19 + 1;
  }

  v82 = v14 + 10;
  v83 = v8 + 9;
  v20 = v16 | v92 | 7;
  if (v11)
  {
    v21 = v12;
  }

  else
  {
    v21 = v12 + 1;
  }

  v22 = *(sub_24F91F4A8() - 8);
  v23 = *(v22 + 80) & 0xF8;
  v24 = *(sub_24F928698() - 8);
  v25 = v22;
  v26 = *(v24 + 80);
  v27 = v16 | v26 | v23 | 7;
  v28 = v21;
  v29 = *(v24 + 64);
  if (!*(v24 + 84))
  {
    ++v29;
  }

  v30 = ((v21 + v27) & ~v27) + ((v29 + ((v29 + v26 + ((v26 + ((((((v13 + ((*(v25 + 64) + v16) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v26)) & ~v26) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v30 <= v15)
  {
    v30 = v15;
  }

  if (v9 > v30)
  {
    v30 = v9;
  }

  v85 = v30;
  v88 = *(*(a4 + 24) - 8);
  v79 = *(v88 + 84);
  if (v79 <= v98)
  {
    v31 = v98;
  }

  else
  {
    v31 = *(v88 + 84);
  }

  v86 = *(sub_24F9220D8() - 8);
  v32 = *(v86 + 84);
  v76 = v32;
  if (v32 <= v31)
  {
    v32 = v31;
  }

  v33 = *(*(a4 + 16) - 8);
  v34 = *(v33 + 84);
  v35 = v34 - 1;
  if (!v34)
  {
    v35 = 0;
  }

  if (v35 <= 0x7FFFFFFE)
  {
    v35 = 2147483646;
  }

  v75 = v35;
  if (v32 <= v35)
  {
    v32 = v35;
  }

  v87 = v32;
  v36 = 0;
  v37 = *(sub_24F925218() - 8);
  v38 = v37;
  v39 = *(v91 + 64);
  v40 = *(v89 + 80);
  v41 = v9 + v90;
  if (((v28 + 7) & 0xFFFFFFFFFFFFFFF8) + 48 > v9 + v90)
  {
    v41 = ((v28 + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  }

  if (v41 <= v82)
  {
    v41 = v82;
  }

  if (v41 <= 0x19)
  {
    v41 = 25;
  }

  v42 = 9;
  if (v9)
  {
    v42 = v83;
  }

  v43 = v92 + v41 + 1 + 8;
  if (((v43 + ((v41 + 1 + v20) & ~v20)) & ~v84) + v9 <= v41 + 1)
  {
    v45 = v41 + 1;
  }

  else
  {
    v45 = ((v43 + ((v41 + 1 + v20) & ~v20)) & ~v84) + v9;
  }

  v46 = 8;
  if (v45 <= 8)
  {
    v45 = 8;
  }

  v44 = ((((((v43 + ((v20 + 16) & ~v20)) & ~v84) + v42) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + v20 + 40;
  v47 = 13 - ((-17 - v20 - ((((((((((((((*(v89 + 64) + ((v40 + ((v39 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v40) + 7) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v20) - (((-58 - v44 - ((v44 + (v44 & ~v20)) & ~v20)) | v20) - v45);
  v48 = *(v37 + 84);
  v49 = *(v37 + 64);
  v50 = *(v33 + 64);
  if (!v34)
  {
    ++v50;
  }

  v51 = v48 == 0;
  v52 = (((((((((v85 + (((v20 | v93 | v27) + (v47 & 0xFFFFFFFFFFFFFFF8) + 16) & ~(v20 | v93 | v27)) + 1) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v53 = *(v88 + 80);
  v54 = *(v86 + 80);
  v55 = *(v88 + 64) + v54;
  v56 = *(v86 + 64) + 7;
  v57 = *(v33 + 80) & 0xF8;
  v58 = ~v57 & 0xFFFFFFFFFFFFFFF8;
  v59 = v57 + 23;
  v60 = *(v38 + 80) & 0xF8 | 7;
  if (v51)
  {
    ++v49;
  }

  if (v49 > 8)
  {
    v46 = v49;
  }

  v61 = ((v46 + ((v46 + v60 + ((((v50 + 7) & 0xFFFFFFFFFFFFFFF8) + v60 + ((v59 + ((v56 + ((v55 + ((v53 + 8 + ((v52 + 49) & 0xFFFFFFFFFFFFFFF8)) & ~v53)) & ~v54)) & 0xFFFFFFFFFFFFFFF8)) & v58) + 24) & ~v60) + 1) & ~v60) + 24) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v87 < a3)
  {
    if (v61 <= 3)
    {
      v62 = ((a3 - v87 + 255) >> 8) + 1;
    }

    else
    {
      v62 = 2;
    }

    if (v62 >= 0x10000)
    {
      v63 = 4;
    }

    else
    {
      v63 = 2;
    }

    if (v62 < 0x100)
    {
      v63 = 1;
    }

    if (v62 >= 2)
    {
      v36 = v63;
    }

    else
    {
      v36 = 0;
    }
  }

  if (v87 >= a2)
  {
    v66 = a1;
    if (v36 > 1)
    {
      if (v36 != 2)
      {
        *&a1[v61] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_81;
      }

      *&a1[v61] = 0;
    }

    else if (v36)
    {
      a1[v61] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_81;
    }

    if (!a2)
    {
      return;
    }

LABEL_81:
    if (v98 == v87)
    {
      if (v81 != v98)
      {
        v71 = (&a1[v39 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((v80 & 0x80000000) != 0)
        {
          v72 = *(v89 + 56);

          v72((v71 + v40 + 16) & ~v40, a2, v77, v78);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *v71 = a2 & 0x7FFFFFFF;
          v71[1] = 0;
        }

        else
        {
          v71[1] = a2 - 1;
        }

        return;
      }

      v67 = *(v91 + 56);
      v68 = a2;
    }

    else
    {
      v69 = (&a1[v52 + 49] & 0xFFFFFFFFFFFFFFF8);
      if ((v87 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v70 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v70 = a2 - 1;
        }

        *v69 = v70;
        return;
      }

      v66 = ((v69 + v53 + 8) & ~v53);
      if (v79 == v87)
      {
        v67 = *(v88 + 56);
        v68 = a2;
      }

      else
      {
        v66 = ((v66 + v55) & ~v54);
        if (v76 == v87)
        {
          v67 = *(v86 + 56);
          v68 = a2;
        }

        else
        {
          v66 = ((v59 + ((v66 + v56) & 0xFFFFFFFFFFFFFFF8)) & v58);
          if (v75 < a2)
          {
            v73 = (v50 + 7) & 0xFFFFFFF8;
            if (v73 != -8)
            {
              v74 = v66;
              bzero(v66, (v73 + 8));
              *v74 = ~v75 + a2;
            }

            return;
          }

          v67 = *(v33 + 56);
          v68 = a2 + 1;
        }
      }
    }

    v67(v66, v68);
    return;
  }

  v64 = ~v87 + a2;
  bzero(a1, v61);
  if (v61 <= 3)
  {
    v65 = (v64 >> 8) + 1;
  }

  else
  {
    v65 = 1;
  }

  if (v61 <= 3)
  {
    *a1 = v64;
    if (v36 > 1)
    {
LABEL_69:
      if (v36 == 2)
      {
        *&a1[v61] = v65;
      }

      else
      {
        *&a1[v61] = v65;
      }

      return;
    }
  }

  else
  {
    *a1 = v64;
    if (v36 > 1)
    {
      goto LABEL_69;
    }
  }

  if (v36)
  {
    a1[v61] = v65;
  }
}

double sub_24F65BB28(uint64_t a1)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 100));
  v8 = *v7;
  if (v7[8] == 1)
  {
    return *v7;
  }

  sub_24F92BDC8();
  v10 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();
  sub_24E62A5EC(v8, 0);
  (*(v4 + 8))(v6, v3);
  return *&v11[1];
}

double sub_24F65BC80(uint64_t a1)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 104);
  v9 = *v7;
  v8 = *(v7 + 8);
  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (*(v7 + 32) == 1)
  {
    return *v7;
  }

  sub_24F92BDC8();
  v13 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();
  sub_24E669FC4(v9, v8, v11, v10, 0);
  (*(v4 + 8))(v6, v3);
  return v14;
}

uint64_t sub_24F65BE08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v3 = sub_24F92B858();
  v93 = *(v3 - 8);
  v94 = v3;
  MEMORY[0x28223BE20](v3);
  v92 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = *(a1 - 8);
  v97 = *(v81 + 64);
  MEMORY[0x28223BE20](v5);
  v96 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DefaultPageHeaderView();
  *&v91 = a1 + 40;
  v90 = *(a1 + 32);
  v7 = a1;
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B700);
  sub_24F924E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215FD0);
  sub_24F924E38();
  sub_24F92C4A8();
  swift_getTupleTypeMetadata2();
  v88 = sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  v8 = type metadata accessor for AdaptiveStack();
  v89 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = (&v59 - v9);
  v83 = v8;
  v11 = sub_24F924038();
  v86 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v84 = &v59 - v12;
  v82 = swift_getWitnessTable();
  v111 = v82;
  v112 = MEMORY[0x277CDF918];
  v85 = MEMORY[0x277CDFAD8];
  v13 = swift_getWitnessTable();
  v103 = v11;
  v104 = v13;
  v75 = v11;
  v14 = v13;
  v76 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98);
  v16 = sub_24F924038();
  v103 = v11;
  v104 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_24E8F20E4();
  v19 = sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
  v109 = OpaqueTypeConformance2;
  v110 = v19;
  v20 = swift_getWitnessTable();
  v103 = OpaqueTypeMetadata2;
  v104 = &type metadata for IsDebugFocusOverlayEnabled;
  v105 = v16;
  v106 = OpaqueTypeConformance2;
  v107 = v18;
  v108 = v20;
  v21 = MEMORY[0x277CE0E68];
  v22 = swift_getOpaqueTypeMetadata2();
  v70 = v22;
  v103 = OpaqueTypeMetadata2;
  v104 = &type metadata for IsDebugFocusOverlayEnabled;
  v69 = OpaqueTypeMetadata2;
  v105 = v16;
  v106 = OpaqueTypeConformance2;
  v71 = v18;
  v107 = v18;
  v108 = v20;
  v67 = v21;
  v68 = swift_getOpaqueTypeConformance2();
  v103 = OpaqueTypeMetadata2;
  v104 = &type metadata for IsDebugFocusOverlayEnabled;
  v105 = v22;
  v106 = OpaqueTypeConformance2;
  v107 = v18;
  v108 = v68;
  v66 = swift_getOpaqueTypeMetadata2();
  v74 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v59 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B708);
  v73 = sub_24F924038();
  v78 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v65 = &v59 - v24;
  sub_24F923AD8();
  v79 = sub_24F924038();
  v80 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v72 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v77 = &v59 - v28;
  v29 = v81;
  v63 = *(v81 + 16);
  v30 = v96;
  v63(v96, v98, v7, v27);
  v31 = (*(v29 + 80) + 64) & ~*(v29 + 80);
  v32 = swift_allocObject();
  v62 = *(v7 + 48);
  v33 = v62;
  v61 = *(v7 + 16);
  v34 = v61;
  v60 = v7;
  *&v35 = v90;
  *(&v35 + 1) = *v91;
  v91 = v35;
  *(v32 + 2) = v35;
  *(v32 + 3) = v33;
  *(v32 + 1) = v34;
  v90 = *(v29 + 32);
  v90(&v32[v31], v30, v7);
  v36 = v10;
  sub_24F65E190(sub_24F65F2D4, v32, v10);
  sub_24F925828();
  v37 = v84;
  v38 = v83;
  sub_24F926A48();
  (*(v89 + 8))(v36, v38);
  v39 = v64;
  v40 = v75;
  View.platformFocusSection()(v75, v76, v64);
  (*(v86 + 8))(v37, v40);
  sub_24F927618();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B710);
  v103 = v69;
  v104 = &type metadata for IsDebugFocusOverlayEnabled;
  v105 = v70;
  v106 = OpaqueTypeConformance2;
  v107 = v71;
  v108 = v68;
  v41 = swift_getOpaqueTypeConformance2();
  sub_24F65F398();
  v42 = v65;
  v43 = v66;
  sub_24F926088();
  (*(v74 + 8))(v39, v43);
  v44 = v96;
  v45 = v60;
  (v63)(v96, v98, v60);
  v46 = swift_allocObject();
  v47 = v62;
  *(v46 + 1) = v61;
  *(v46 + 2) = v91;
  *(v46 + 3) = v47;
  v90(&v46[v31], v44, v45);
  v48 = sub_24E602068(&qword_27F24B730, &qword_27F24B708);
  v101 = v41;
  v102 = v48;
  v49 = v73;
  v50 = swift_getWitnessTable();
  v51 = v92;
  sub_24F0B42B0();
  v52 = v72;
  sub_24F9268E8();

  (*(v93 + 8))(v51, v94);
  (*(v78 + 8))(v42, v49);
  v53 = sub_24F3E5610(&qword_27F211A48, MEMORY[0x277CDD8B0]);
  v99 = v50;
  v100 = v53;
  v54 = v79;
  v55 = swift_getWitnessTable();
  v56 = v77;
  sub_24E7896B8(v52, v54, v55);
  v57 = *(v80 + 8);
  v57(v52, v54);
  sub_24E7896B8(v56, v54, v55);
  return (v57)(v56, v54);
}

uint64_t sub_24F65C9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v203 = a7;
  v183 = a3;
  v184 = a6;
  v196 = a5;
  v193 = a8;
  v194 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215FD0);
  v170 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v169 = &v156 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B700);
  MEMORY[0x28223BE20](v13);
  v172 = &v156 - v14;
  v195 = sub_24F925218();
  v180 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v157 = &v156 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v159);
  v160 = &v156 - v16;
  v162 = *(a4 - 8);
  MEMORY[0x28223BE20](v17);
  v171 = &v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24F924038();
  v165 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v164 = &v156 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v161 = &v156 - v22;
  MEMORY[0x28223BE20](v23);
  v163 = &v156 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v25 - 8);
  v158 = &v156 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v166 = &v156 - v28;
  MEMORY[0x28223BE20](v29);
  v167 = &v156 - v30;
  MEMORY[0x28223BE20](v31);
  v168 = &v156 - v32;
  MEMORY[0x28223BE20](v33);
  v185 = &v156 - v34;
  v201 = v19;
  v178 = v13;
  v35 = sub_24F924E38();
  v177 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v176 = &v156 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v175 = &v156 - v38;
  v202 = a2;
  v181 = sub_24F92C4A8();
  v174 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v182 = &v156 - v39;
  v197 = *(a2 - 8);
  MEMORY[0x28223BE20](v40);
  v186 = &v156 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = v35;
  v179 = v11;
  v199 = sub_24F924E38();
  v192 = sub_24F92C4A8();
  v188 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v191 = &v156 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v190 = &v156 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v156 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38);
  MEMORY[0x28223BE20](v48 - 8);
  v50 = &v156 - v49;
  v51 = type metadata accessor for DefaultPageHeaderView();
  MEMORY[0x28223BE20](v51);
  v189 = &v156 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v55 = &v156 - v54;
  MEMORY[0x28223BE20](v56);
  v58 = &v156 - v57;
  v59 = type metadata accessor for Page(0);
  v60 = v181;
  sub_24E60169C(a1 + v59[20], v50, qword_27F220E38);
  v173 = v59[21];
  LOBYTE(a2) = *(a1 + v173);
  sub_24E60169C(a1 + v59[24], v47, &qword_27F21D8F8);
  v61 = type metadata accessor for Page.Background(0);
  LOBYTE(v59) = (*(*(v61 - 8) + 48))(v47, 1, v61) == 1;
  v62 = v47;
  v63 = v202;
  sub_24E601704(v62, &qword_27F21D8F8);
  sub_24EA56368(v50, v55);
  v55[*(v51 + 20)] = a2;
  v64 = v197;
  v187 = v51;
  v55[*(v51 + 24)] = v59;
  v65 = a1;
  v66 = v55;
  v67 = v203;
  v198 = v58;
  sub_24F661A3C(v66, v58);
  v211 = v63;
  v212 = v183;
  v213 = v194;
  v214 = v196;
  v215 = v184;
  v216 = v67;
  v68 = type metadata accessor for AdaptivePageHeader();
  sub_24F926F68();
  v69 = v182;
  sub_24F926F38();
  v70 = (*(v64 + 48))(v69, 1, v63);
  v71 = MEMORY[0x277CDF918];
  if (v70 != 1)
  {
    v85 = v186;
    (*(v64 + 32))(v186, v69, v202);
    v86 = v185;
    sub_24F769764(v185);
    v87 = *(v180 + 48);
    if ((v87)(v86, 1, v195) != 1)
    {
      v184 = v65;
      v88 = v86;
      v89 = v168;
      sub_24E60169C(v88, v168, &qword_27F215598);
      v90 = v180;
      if ((*(v180 + 88))(v89, v195) == *MEMORY[0x277CE0560])
      {
        v91 = v184;
        v92 = (v184 + *(v68 + 80));
        v182 = v87;
        (*v92)(v85);
        LODWORD(v196) = sub_24F925858();
        v183 = 0x5040302010001uLL >> (8 * *(v91 + v173));
        v93 = sub_24F65BB28(v68);
        v94 = v167;
        sub_24F769764(v167);
        v95 = v166;
        v96 = v195;
        (*(v90 + 104))(v166, *MEMORY[0x277CE0558], v195);
        (*(v90 + 56))(v95, 0, 1, v96);
        v97 = v160;
        v98 = *(v159 + 48);
        sub_24E60169C(v94, v160, &qword_27F215598);
        v99 = v182;
        sub_24E60169C(v95, v97 + v98, &qword_27F215598);
        if (v99(v97, 1, v96) == 1)
        {
          sub_24E601704(v95, &qword_27F215598);
          sub_24E601704(v94, &qword_27F215598);
          v100 = v99(v97 + v98, 1, v195);
          v101 = v201;
          if (v100 == 1)
          {
            sub_24E601704(v97, &qword_27F215598);
            v102 = 1;
            v103 = v175;
            goto LABEL_17;
          }
        }

        else
        {
          v125 = v158;
          sub_24E60169C(v97, v158, &qword_27F215598);
          if (v99(v97 + v98, 1, v195) != 1)
          {
            v126 = v180;
            v127 = v157;
            v128 = v195;
            (*(v180 + 32))(v157, v97 + v98, v195);
            sub_24F3E5610(&qword_27F215650, MEMORY[0x277CE0570]);
            v102 = sub_24F92AFF8();
            v129 = *(v126 + 8);
            v129(v127, v128);
            sub_24E601704(v166, &qword_27F215598);
            sub_24E601704(v167, &qword_27F215598);
            v129(v125, v128);
            sub_24E601704(v97, &qword_27F215598);
            v101 = v201;
            v103 = v175;
LABEL_17:
            sub_24F65BC80(v68);
            if (v93 > 1580.0)
            {
              v93 = 1580.0;
            }

            if (v183 > 2u)
            {
              v124 = v203;
              v121 = MEMORY[0x277CDF918];
              if (v183 == 3)
              {
                if (sub_24E6B00B4(v93) >= 4u)
                {
                  v130 = 3;
LABEL_31:
                  LOBYTE(v211) = v130;
                  sub_24F422FFC(v102 & 1, v93);
                }
              }

              else
              {
                if (v183 != 4)
                {
                  if (qword_27F210748 != -1)
                  {
                    swift_once();
                  }

                  swift_beginAccess();
                  if ((byte_27F2301A8 & 1) != 0 && (v102 & 1) != 0 && qword_27F210D60 != -1)
                  {
                    swift_once();
                  }

                  goto LABEL_39;
                }

                if ((v102 & 1) == 0)
                {
LABEL_38:
                  sub_24E6B00B4(v93);
                }
              }
            }

            else
            {
              v124 = v203;
              v121 = MEMORY[0x277CDF918];
              if (v183)
              {
                if (v183 == 1)
                {
                  if (v102)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_38;
                }

                v130 = 2;
                goto LABEL_31;
              }
            }

LABEL_39:
            v131 = v161;
            v132 = v194;
            v133 = v171;
            sub_24F926A48();
            (*(v162 + 8))(v133, v132);
            v204 = v124;
            v205 = v121;
            WitnessTable = swift_getWitnessTable();
            v135 = v163;
            sub_24E7896B8(v131, v101, WitnessTable);
            v136 = *(v165 + 8);
            v136(v131, v101);
            v137 = v164;
            sub_24E7896B8(v135, v101, WitnessTable);
            sub_24F661AA0();
            sub_24ECCCBA0(v137, v101);
            v136(v137, v101);
            v136(v135, v101);
            goto LABEL_40;
          }

          sub_24E601704(v166, &qword_27F215598);
          sub_24E601704(v167, &qword_27F215598);
          (*(v180 + 8))(v125, v195);
          v101 = v201;
        }

        sub_24E601704(v97, &unk_27F254F20);
        v102 = 0;
        v103 = v175;
        goto LABEL_17;
      }

      (*(v90 + 8))(v89, v195);
      v65 = v184;
    }

    v108 = v202;
    v109 = v172;
    v110 = v196;
    *(v172 + 5) = v202;
    *(v109 + 48) = v110;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v109 + 16));
    (*(v64 + 16))(boxed_opaque_existential_1, v85, v108);
    type metadata accessor for GSKComponentContentBuilder();
    sub_24F3E5610(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder);
    *v109 = sub_24F923598();
    *(v109 + 8) = v112 & 1;
    v113 = *(v65 + v173);
    KeyPath = swift_getKeyPath();
    v115 = swift_getKeyPath();
    v116 = v178;
    v117 = v109 + *(v178 + 36);
    *v117 = v113;
    *(v117 + 1) = 0;
    *(v117 + 8) = 0;
    *(v117 + 16) = 1;
    *(v117 + 24) = KeyPath;
    *(v117 + 32) = 0;
    *(v117 + 40) = v115;
    v118 = type metadata accessor for PageMarginsViewModifier();
    *(v117 + 56) = 0;
    *(v117 + 64) = 0;
    *(v117 + 48) = 0;
    *(v117 + 72) = 0;
    v119 = *(v118 + 36);
    *(v117 + v119) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
    swift_storeEnumTagMultiPayload();
    v120 = v203;
    v206[6] = v203;
    v121 = MEMORY[0x277CDF918];
    v206[7] = MEMORY[0x277CDF918];
    v122 = v201;
    swift_getWitnessTable();
    sub_24F661AA0();
    v103 = v175;
    sub_24ECCCC98(v109, v122, v116);
    v123 = v109;
    v124 = v120;
    sub_24E601704(v123, &qword_27F24B700);
LABEL_40:
    v138 = v200;
    v139 = v191;
    sub_24E601704(v185, &qword_27F215598);
    v206[4] = v124;
    v206[5] = v121;
    v140 = swift_getWitnessTable();
    v141 = sub_24F661AA0();
    v206[2] = v140;
    v206[3] = v141;
    v142 = swift_getWitnessTable();
    v143 = v176;
    sub_24E7896B8(v103, v138, v142);
    v80 = sub_24E602068(&qword_27F255080, &qword_27F215FD0);
    sub_24ECCCBA0(v143, v138);
    v144 = *(v177 + 8);
    v144(v143, v138);
    v144(v103, v138);
    v81 = v139;
    (*(v197 + 8))(v186, v202);
    (*(*(v199 - 8) + 56))(v139, 0, 1, v199);
    v206[0] = v142;
    v84 = v206;
    v107 = v121;
    goto LABEL_41;
  }

  (*(v174 + 8))(v69, v60);
  v72 = (v65 + *(v68 + 88));
  v73 = *v72;
  v74 = *(v72 + 1);
  LOBYTE(v211) = v73;
  v212 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F38();
  if (v209[0])
  {
    v75 = v169;
    sub_24F923798();
    v207[4] = v67;
    v207[5] = v71;
    v76 = swift_getWitnessTable();
    v77 = sub_24F661AA0();
    v207[2] = v76;
    v207[3] = v77;
    v78 = v200;
    v79 = swift_getWitnessTable();
    v80 = sub_24E602068(&qword_27F255080, &qword_27F215FD0);
    v81 = v191;
    v82 = v78;
    v83 = v179;
    sub_24ECCCC98(v75, v82, v179);
    (*(v170 + 8))(v75, v83);
    (*(*(v199 - 8) + 56))(v81, 0, 1, v199);
    v207[0] = v79;
    v84 = v207;
  }

  else
  {
    v81 = v191;
    (*(*(v199 - 8) + 56))(v191, 1, 1, v199);
    v210[4] = v67;
    v210[5] = v71;
    v104 = swift_getWitnessTable();
    v105 = sub_24F661AA0();
    v210[2] = v104;
    v210[3] = v105;
    v106 = swift_getWitnessTable();
    v80 = sub_24E602068(&qword_27F255080, &qword_27F215FD0);
    v210[0] = v106;
    v84 = v210;
  }

  v107 = v71;
LABEL_41:
  v84[1] = v80;
  swift_getWitnessTable();
  v145 = v190;
  sub_24E8D5004(v81, v190);
  v146 = v188;
  v147 = v81;
  v148 = *(v188 + 8);
  v149 = v192;
  v148(v81, v192);
  v150 = v189;
  sub_24F661B5C(v198, v189);
  v209[0] = v150;
  (*(v146 + 16))(v147, v145, v149);
  v209[1] = v147;
  v208[0] = v187;
  v208[1] = v149;
  v207[13] = sub_24F3E5610(&qword_27F220F60, type metadata accessor for DefaultPageHeaderView);
  v207[11] = v203;
  v207[12] = v107;
  v151 = swift_getWitnessTable();
  v152 = sub_24F661AA0();
  v207[9] = v151;
  v207[10] = v152;
  v153 = swift_getWitnessTable();
  v154 = sub_24E602068(&qword_27F255080, &qword_27F215FD0);
  v207[7] = v153;
  v207[8] = v154;
  v207[6] = swift_getWitnessTable();
  v207[14] = swift_getWitnessTable();
  sub_24F57BA64(v209, 2uLL, v208);
  v148(v145, v149);
  sub_24F661BC0(v198);
  v148(v147, v149);
  return sub_24F661BC0(v150);
}

uint64_t sub_24F65E190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(type metadata accessor for AdaptiveStack() + 36);
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  result = swift_storeEnumTagMultiPayload();
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t sub_24F65E20C@<X0>(uint64_t a1@<X8>)
{
  sub_24F926C88();
  v2 = sub_24F926D08();

  v3 = sub_24F925818();
  sub_24F923318();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_27F2301A8 == 1)
  {
    result = sub_24F925808();
  }

  else
  {
    result = sub_24F925848();
  }

  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = 0;
  *(a1 + 49) = result;
  return result;
}

uint64_t sub_24F65E318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  v7[18] = a2;
  v7[19] = a3;
  v7[17] = a1;
  v7[24] = *(a3 - 8);
  v14 = swift_task_alloc();
  v7[2] = a2;
  v7[25] = v14;
  v7[3] = a3;
  v7[4] = a4;
  v7[5] = a5;
  v7[6] = a6;
  v7[7] = a7;
  v15 = type metadata accessor for AdaptivePageHeader();
  v7[26] = v15;
  v7[27] = *(v15 - 8);
  v7[28] = swift_task_alloc();
  v16 = sub_24F92C4A8();
  v7[29] = v16;
  v7[30] = *(v16 - 8);
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  sub_24F92B7F8();
  v7[34] = sub_24F92B7E8();
  v18 = sub_24F92B778();
  v7[35] = v18;
  v7[36] = v17;

  return MEMORY[0x2822009F8](sub_24F65E520, v18, v17);
}

uint64_t sub_24F65E520()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 144);
  *(v0 + 368) = *(*(v0 + 208) + 84);
  *(v0 + 296) = sub_24F926F68();
  sub_24F926F38();
  v3 = *(v2 - 8);
  *(v0 + 304) = v3;
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 264);
  v6 = *(v0 + 232);
  v7 = *(v0 + 240);
  if (v4 != 1)
  {

    (*(v7 + 8))(v5, v6);
    goto LABEL_5;
  }

  v8 = *(v0 + 208);
  v9 = *(v0 + 136);
  v10 = *(v7 + 8);
  *(v0 + 312) = v10;
  *(v0 + 320) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v6);
  v11 = (v9 + *(v8 + 88));
  v12 = *v11;
  v13 = *(v11 + 1);
  *(v0 + 104) = *v11;
  *(v0 + 112) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F38();
  if (*(v0 + 372))
  {

LABEL_5:

    v14 = *(v0 + 8);

    return v14();
  }

  v16 = *(v0 + 208);
  v17 = *(v0 + 136);
  *(v0 + 120) = v12;
  *(v0 + 128) = v13;
  *(v0 + 373) = 1;
  sub_24F926F48();
  *(v0 + 328) = *(v17 + *(v16 + 68));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v19 = swift_task_alloc();
  *(v0 + 336) = v19;
  *v19 = v0;
  v19[1] = sub_24F65E7AC;

  return MEMORY[0x28217F228](v0 + 64, v18, v18);
}

uint64_t sub_24F65E7AC()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = sub_24F65EC4C;
  }

  else
  {
    v5 = sub_24F65E8E8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F65E8E8()
{
  v1 = v0[26];
  v2 = v0[17];
  v3 = v0[11];
  v4 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v3);
  v5 = *(v1 + 72);
  v6 = swift_task_alloc();
  v0[44] = v6;
  *v6 = v0;
  v6[1] = sub_24F65E9C8;
  v7 = v0[41];
  v8 = v0[32];
  v9 = v0[22];
  v10 = v0[19];

  return MEMORY[0x28217F4B0](v8, v2 + v5, v7, v10, v9, v3, v4);
}

uint64_t sub_24F65E9C8()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = sub_24F65EF3C;
  }

  else
  {
    v5 = sub_24F65EB04;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F65EB04()
{
  v9 = v0[39];
  v1 = v0[38];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[29];
  v5 = v0[30];
  v6 = v0[18];

  (*(v1 + 56))(v2, 0, 1, v6);
  (*(v5 + 16))(v3, v2, v4);
  sub_24F926F48();
  v9(v2, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + 8));
  sub_24F65F234();

  v7 = v0[1];

  return v7();
}

uint64_t sub_24F65EC4C()
{
  v26 = v0;

  v1 = v0[43];
  (*(v0[27] + 16))(v0[28], v0[17]);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDC8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[27];
  v7 = v0[28];
  v8 = v0[26];
  if (v5)
  {
    log = v3;
    v9 = v0[24];
    v10 = v0[25];
    v11 = v0[19];
    v22 = v4;
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v12 = 136315394;
    (*(v9 + 16))(v10, v7 + *(v8 + 72), v11);
    swift_getDynamicType();
    (*(v9 + 8))(v10, v11);
    v13 = sub_24F92D1E8();
    v15 = v14;
    (*(v6 + 8))(v7, v8);
    v16 = sub_24E7620D4(v13, v15, &v25);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2112;
    v17 = v1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v18;
    *v21 = v18;
    _os_log_impl(&dword_24E5DD000, log, v22, "Dispatch %s failed with %@", v12, 0x16u);
    sub_24E601704(v21, &qword_27F227B20);
    MEMORY[0x2530542D0](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x2530542D0](v23, -1, -1);
    MEMORY[0x2530542D0](v12, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v7, v8);
  }

  sub_24F65F234();

  v19 = v0[1];

  return v19();
}

uint64_t sub_24F65EF3C()
{
  v26 = v0;

  __swift_destroy_boxed_opaque_existential_1((v0 + 8));
  v1 = v0[45];
  (*(v0[27] + 16))(v0[28], v0[17]);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDC8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[27];
  v7 = v0[28];
  v8 = v0[26];
  if (v5)
  {
    log = v3;
    v9 = v0[24];
    v10 = v0[25];
    v11 = v0[19];
    v22 = v4;
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v12 = 136315394;
    (*(v9 + 16))(v10, v7 + *(v8 + 72), v11);
    swift_getDynamicType();
    (*(v9 + 8))(v10, v11);
    v13 = sub_24F92D1E8();
    v15 = v14;
    (*(v6 + 8))(v7, v8);
    v16 = sub_24E7620D4(v13, v15, &v25);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2112;
    v17 = v1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v18;
    *v21 = v18;
    _os_log_impl(&dword_24E5DD000, log, v22, "Dispatch %s failed with %@", v12, 0x16u);
    sub_24E601704(v21, &qword_27F227B20);
    MEMORY[0x2530542D0](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x2530542D0](v23, -1, -1);
    MEMORY[0x2530542D0](v12, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v7, v8);
  }

  sub_24F65F234();

  v19 = v0[1];

  return v19();
}

uint64_t sub_24F65F234()
{
  type metadata accessor for AdaptivePageHeader();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  return sub_24F926F48();
}

uint64_t sub_24F65F2D4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = *(type metadata accessor for AdaptivePageHeader() - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return sub_24F65C9A8(v10, v3, v4, v5, v6, v7, v8, a1);
}

unint64_t sub_24F65F398()
{
  result = qword_27F24B718;
  if (!qword_27F24B718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B710);
    sub_24F65F424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B718);
  }

  return result;
}

unint64_t sub_24F65F424()
{
  result = qword_27F24B720;
  if (!qword_27F24B720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B720);
  }

  return result;
}

uint64_t objectdestroyTm_79()
{
  v126 = *(v0 + 16);
  v125 = *(v0 + 24);
  v1 = type metadata accessor for AdaptivePageHeader();
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 64) & ~v2);
  v4 = sub_24F92A708();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = type metadata accessor for Page(0);

  v6 = v5[6];
  v7 = sub_24F928818();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);

  v8 = v3 + v5[20];
  v9 = type metadata accessor for HeaderPresentation(0);
  if ((*(*(v9 - 1) + 48))(v8, 1, v9))
  {
    goto LABEL_55;
  }

  v10 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v11 = *(*(v10 - 1) + 48);
  if (!v11(v8, 1, v10))
  {
    v120 = v11;

    v12 = v8 + v10[5];
    v13 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      goto LABEL_4;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v99 = sub_24F9289E8();
          (*(*(v99 - 8) + 8))(v12, v99);
          goto LABEL_4;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_4:
          v14 = v8 + v10[7];
          v15 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          v11 = v120;
          if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v17 = sub_24F928388();
              (*(*(v17 - 8) + 8))(v14, v17);

              v11 = v120;
            }
          }

          v18 = v8 + v10[10];
          if (*(v18 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1(v18);
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v86 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v87 = type metadata accessor for JSColor();
        if (!(*(*(v87 - 8) + 48))(v86, 1, v87))
        {
          v88 = sub_24F928388();
          (*(*(v88 - 8) + 8))(v86, v88);
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v95 = sub_24F9289E8();
        v96 = *(v95 - 8);
        if (!(*(v96 + 48))(v12, 1, v95))
        {
          (*(v96 + 8))(v12, v95);
        }

        if (*(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_4;
  }

LABEL_15:
  v19 = v8 + v9[5];
  if (v11(v19, 1, v10))
  {
    goto LABEL_32;
  }

  v121 = v11;

  v20 = v19 + v10[5];
  v21 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v21 - 8) + 48))(v20, 1, v21))
  {
    goto LABEL_17;
  }

  v24 = swift_getEnumCaseMultiPayload();
  if (v24 <= 2)
  {
    if (!v24)
    {

      v89 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v90 = type metadata accessor for JSColor();
      if (!(*(*(v90 - 8) + 48))(v89, 1, v90))
      {
        v91 = sub_24F928388();
        (*(*(v91 - 8) + 8))(v89, v91);
      }

      goto LABEL_17;
    }

    if (v24 == 1)
    {
      v97 = sub_24F9289E8();
      v98 = *(v97 - 8);
      v119 = v97;
      if (!(*(v98 + 48))(v20, 1))
      {
        (*(v98 + 8))(v20, v119);
      }

      if (*(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_17;
    }

    if (v24 != 2)
    {
      goto LABEL_17;
    }

LABEL_45:

    goto LABEL_17;
  }

  switch(v24)
  {
    case 3:
      goto LABEL_45;
    case 4:
      v102 = sub_24F9289E8();
      (*(*(v102 - 8) + 8))(v20, v102);
      break;
    case 5:
      goto LABEL_45;
  }

LABEL_17:
  v22 = v19 + v10[7];
  v23 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v25 = sub_24F928388();
      (*(*(v25 - 8) + 8))(v22, v25);
    }
  }

  v26 = v19 + v10[10];
  v11 = v121;
  if (*(v26 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

LABEL_32:
  v27 = v8 + v9[6];
  if (v11(v27, 1, v10))
  {
    goto LABEL_49;
  }

  v28 = v27 + v10[5];
  v29 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v29 - 8) + 48))(v28, 1, v29))
  {
    goto LABEL_34;
  }

  v32 = swift_getEnumCaseMultiPayload();
  if (v32 <= 2)
  {
    if (!v32)
    {

      v92 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v93 = type metadata accessor for JSColor();
      if (!(*(*(v93 - 8) + 48))(v92, 1, v93))
      {
        v94 = sub_24F928388();
        (*(*(v94 - 8) + 8))(v92, v94);
      }

      goto LABEL_34;
    }

    if (v32 == 1)
    {
      v100 = sub_24F9289E8();
      v101 = *(v100 - 8);
      v124 = v100;
      if (!(*(v101 + 48))(v28, 1))
      {
        (*(v101 + 8))(v28, v124);
      }

      if (*(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_34;
    }

    if (v32 != 2)
    {
      goto LABEL_34;
    }

LABEL_111:

    goto LABEL_34;
  }

  switch(v32)
  {
    case 3:
      goto LABEL_111;
    case 4:
      v103 = sub_24F9289E8();
      (*(*(v103 - 8) + 8))(v28, v103);
      break;
    case 5:
      goto LABEL_111;
  }

LABEL_34:
  v30 = v27 + v10[7];
  v31 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v33 = sub_24F928388();
      (*(*(v33 - 8) + 8))(v30, v33);
    }
  }

  v34 = v27 + v10[10];
  if (*(v34 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

LABEL_49:
  v35 = v8 + v9[7];
  if (*(v35 + 56) == 1)
  {
  }

  else if (!*(v35 + 56))
  {

    if (*(v35 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1(v35 + 16);
    }
  }

  v36 = v8 + v9[8];
  v37 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v37 - 8) + 48))(v36, 1, v37))
  {
    v62 = swift_getEnumCaseMultiPayload();
    if (v62 == 2)
    {
      goto LABEL_157;
    }

    if (v62 != 1)
    {
      if (v62)
      {
        goto LABEL_55;
      }

      v63 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v63 - 8) + 48))(v36, 1, v63))
      {
        goto LABEL_55;
      }

      v64 = swift_getEnumCaseMultiPayload();
      if (v64 > 2)
      {
        if (v64 != 3)
        {
          if (v64 == 4)
          {
            v118 = sub_24F9289E8();
            (*(*(v118 - 8) + 8))(v36, v118);
            goto LABEL_55;
          }

          if (v64 != 5)
          {
            goto LABEL_55;
          }
        }

        goto LABEL_157;
      }

      if (v64)
      {
        if (v64 == 1)
        {
          v116 = sub_24F9289E8();
          v117 = *(v116 - 8);
          if (!(*(v117 + 48))(v36, 1, v116))
          {
            (*(v117 + 8))(v36, v116);
          }

          if (!*(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
            goto LABEL_55;
          }
        }

        else if (v64 != 2)
        {
          goto LABEL_55;
        }

LABEL_157:

        goto LABEL_55;
      }

      v81 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v82 = type metadata accessor for JSColor();
      if ((*(*(v82 - 8) + 48))(v81, 1, v82))
      {
        goto LABEL_55;
      }

LABEL_107:
      v83 = sub_24F928388();
      (*(*(v83 - 8) + 8))(v81, v83);

      goto LABEL_55;
    }

    v77 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v78 = *(*(v77 - 8) + 48);
    if (v78(v36, 1, v77))
    {
LABEL_105:
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v80 = v36 + *(v79 + 48);
      if (v78(v80, 1, v77))
      {
        goto LABEL_106;
      }

      v85 = swift_getEnumCaseMultiPayload();
      if (v85 <= 2)
      {
        if (v85)
        {
          if (v85 != 1)
          {
            if (v85 != 2)
            {
              goto LABEL_106;
            }

LABEL_153:

            goto LABEL_106;
          }

          v112 = sub_24F9289E8();
          v113 = *(v112 - 8);
          if (!(*(v113 + 48))(v80, 1, v112))
          {
            (*(v113 + 8))(v80, v112);
          }

          if (*(v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
          }
        }

        else
        {

          v107 = v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
          v108 = type metadata accessor for JSColor();
          if (!(*(*(v108 - 8) + 48))(v107, 1, v108))
          {
            v109 = sub_24F928388();
            (*(*(v109 - 8) + 8))(v107, v109);
          }
        }

LABEL_106:
        v81 = v36 + *(v79 + 80);
        v82 = type metadata accessor for JSColor();
        if ((*(*(v82 - 8) + 48))(v81, 1, v82))
        {
          goto LABEL_55;
        }

        goto LABEL_107;
      }

      if (v85 != 3)
      {
        if (v85 == 4)
        {
          v115 = sub_24F9289E8();
          (*(*(v115 - 8) + 8))(v80, v115);
          goto LABEL_106;
        }

        if (v85 != 5)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_153;
    }

    v84 = swift_getEnumCaseMultiPayload();
    if (v84 > 2)
    {
      if (v84 != 3)
      {
        if (v84 == 4)
        {
          v114 = sub_24F9289E8();
          (*(*(v114 - 8) + 8))(v36, v114);
          goto LABEL_105;
        }

        if (v84 != 5)
        {
          goto LABEL_105;
        }
      }
    }

    else
    {
      if (!v84)
      {

        v104 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v105 = type metadata accessor for JSColor();
        if (!(*(*(v105 - 8) + 48))(v104, 1, v105))
        {
          v106 = sub_24F928388();
          (*(*(v106 - 8) + 8))(v104, v106);
        }

        goto LABEL_105;
      }

      if (v84 == 1)
      {
        v110 = sub_24F9289E8();
        v111 = *(v110 - 8);
        if (!(*(v111 + 48))(v36, 1, v110))
        {
          (*(v111 + 8))(v36, v110);
        }

        if (*(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_105;
      }

      if (v84 != 2)
      {
        goto LABEL_105;
      }
    }

    goto LABEL_105;
  }

LABEL_55:
  if (*(v3 + v5[23]))
  {
  }

  v38 = v3 + v5[24];
  v39 = type metadata accessor for Page.Background(0);
  if (!(*(*(v39 - 8) + 48))(v38, 1, v39))
  {
    v56 = swift_getEnumCaseMultiPayload();
    if (v56 <= 1)
    {
      if (v56)
      {
        if (v56 == 1)
        {
          v58 = sub_24F9289E8();
          (*(*(v58 - 8) + 8))(v38, v58);
          v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8) + 48);
          v60 = sub_24F922348();
          v61 = *(v60 - 8);
          if (!(*(v61 + 48))(v38 + v59, 1, v60))
          {
            (*(v61 + 8))(v38 + v59, v60);
          }
        }
      }

      else
      {
        v76 = sub_24F9289E8();
        (*(*(v76 - 8) + 8))(v38, v76);
      }
    }

    else if (v56 == 2)
    {
      v65 = sub_24F9289E8();
      v66 = *(v65 - 8);
      if (!(*(v66 + 48))(v38, 1, v65))
      {
        (*(v66 + 8))(v38, v65);
      }

      v67 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200) + 48);
      v68 = type metadata accessor for GSKVideo();
      if (!(*(*(v68 - 1) + 48))(v67, 1, v68))
      {
        v69 = sub_24F91F4A8();
        (*(*(v69 - 8) + 8))(v67, v69);
        (*(v66 + 8))(v67 + v68[5], v65);
        v70 = v68[9];
        v71 = sub_24F928698();
        v72 = *(v71 - 8);
        v122 = v70;
        v73 = v67 + v70;
        v74 = *(v72 + 48);
        if (!v74(v73, 1, v71))
        {
          (*(v72 + 8))(v67 + v122, v71);
        }

        v123 = v72;
        v75 = v68[10];
        if (!v74(v67 + v75, 1, v71))
        {
          (*(v123 + 8))(v67 + v75, v71);
        }
      }
    }

    else if (v56 == 3 || v56 == 4)
    {
      v57 = sub_24F928388();
      (*(*(v57 - 8) + 8))(v38, v57);
    }
  }

  v40 = v3 + v5[27];
  if (*(v40 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v41 = v3 + v5[28];
  if (*(v41 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v42 = v3 + v5[29];
  if (*(v42 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v43 = v3 + v5[30];
  if (*(v43 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  (*(*(v125 - 8) + 8))(v3 + v1[18]);
  v44 = v1[19];
  v45 = sub_24F9220D8();
  (*(*(v45 - 8) + 8))(v3 + v44, v45);

  v46 = v3 + v1[21];
  v47 = *(v126 - 8);
  if (!(*(v47 + 48))(v46, 1, v126))
  {
    (*(v47 + 8))(v46, v126);
  }

  sub_24F92C4A8();
  sub_24F926F68();

  v48 = v1[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v49 = sub_24F925218();
    v50 = *(v49 - 8);
    if (!(*(v50 + 48))(v3 + v48, 1, v49))
    {
      (*(v50 + 8))(v3 + v48, v49);
    }
  }

  else
  {
  }

  v51 = v1[24];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v52 = sub_24F925218();
    v53 = *(v52 - 8);
    if (!(*(v53 + 48))(v3 + v51, 1, v52))
    {
      (*(v53 + 8))(v3 + v51, v52);
    }
  }

  else
  {
  }

  sub_24E62A5EC(*(v3 + v1[25]), *(v3 + v1[25] + 8));
  v54 = v3 + v1[26];
  sub_24E669FC4(*v54, *(v54 + 8), *(v54 + 16), *(v54 + 24), *(v54 + 32));
  return swift_deallocObject();
}

uint64_t sub_24F66116C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v1[7] = v7;
  v8 = *(type metadata accessor for AdaptivePageHeader() - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  v1[8] = v10;
  *v10 = v1;
  v10[1] = sub_24E7AF58C;

  return sub_24F65E318(v0 + v9, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_24F661288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = sub_24F927108();
  v47 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v46 = &v43 - v10;
  v51 = v4;
  v11 = sub_24F927018();
  v45 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v44 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v43 = &v43 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v21 = sub_24F924E38();
  v48 = *(v21 - 8);
  v49 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v43 - v22;
  sub_24F769764(v20);
  v24 = sub_24F925218();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v52 = v20;
  v27 = v26(v20, 1, v24);
  if (v27 == 1)
  {
    goto LABEL_5;
  }

  v28 = v8;
  v29 = v51;
  sub_24E60169C(v52, v17, &qword_27F215598);
  if ((*(v25 + 88))(v17, v24) != *MEMORY[0x277CE0560])
  {
    v27 = (*(v25 + 8))(v17, v24);
    v8 = v28;
LABEL_5:
    MEMORY[0x28223BE20](v27);
    *(&v43 - 4) = v51;
    *(&v43 - 3) = v5;
    *(&v43 - 2) = v3;
    sub_24F924C88();
    sub_24F9270F8();
    WitnessTable = swift_getWitnessTable();
    v36 = v46;
    sub_24E7896B8(v8, v6, WitnessTable);
    v37 = *(v47 + 8);
    v37(v8, v6);
    sub_24E7896B8(v36, v6, WitnessTable);
    swift_getWitnessTable();
    sub_24ECCCC98(v8, v11, v6);
    v37(v8, v6);
    v37(v36, v6);
    goto LABEL_6;
  }

  v30 = sub_24F924998();
  MEMORY[0x28223BE20](v30);
  *(&v43 - 4) = v29;
  *(&v43 - 3) = v5;
  *(&v43 - 2) = v3;
  v31 = v44;
  sub_24F927008();
  v32 = swift_getWitnessTable();
  v33 = v43;
  sub_24E7896B8(v31, v11, v32);
  v34 = *(v45 + 8);
  v34(v31, v11);
  sub_24E7896B8(v33, v11, v32);
  swift_getWitnessTable();
  sub_24ECCCBA0(v31, v11);
  v34(v31, v11);
  v34(v33, v11);
LABEL_6:
  sub_24E601704(v52, &qword_27F215598);
  v38 = swift_getWitnessTable();
  v39 = swift_getWitnessTable();
  v53 = v38;
  v54 = v39;
  v40 = v49;
  v41 = swift_getWitnessTable();
  sub_24E7896B8(v23, v40, v41);
  return (*(v48 + 8))(v23, v40);
}

uint64_t sub_24F6618FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v14 - v10;
  (*v9)();
  sub_24E7896B8(v8, a2, a3);
  v12 = *(v5 + 8);
  v12(v8, a2);
  sub_24E7896B8(v11, a2, a3);
  return (v12)(v11, a2);
}

uint64_t sub_24F661A3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultPageHeaderView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F661AA0()
{
  result = qword_27F24B738[0];
  if (!qword_27F24B738[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B700);
    sub_24E66C1E0();
    sub_24F3E5610(&qword_27F222448, type metadata accessor for PageMarginsViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F24B738);
  }

  return result;
}

uint64_t sub_24F661B5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultPageHeaderView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F661BC0(uint64_t a1)
{
  v2 = type metadata accessor for DefaultPageHeaderView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24F661C34()
{
  sub_24E6C5550();
  if (v0 <= 0x3F)
  {
    sub_24E684120();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F661CCC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_24F661D9C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24F661E4C()
{
  type metadata accessor for DefaultPageHeaderView();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B700);
  sub_24F924E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215FD0);
  sub_24F924E38();
  sub_24F92C4A8();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  type metadata accessor for AdaptiveStack();
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98);
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B708);
  sub_24F924038();
  sub_24F923AD8();
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F24B730, &qword_27F24B708);
  swift_getWitnessTable();
  sub_24F3E5610(&qword_27F211A48, MEMORY[0x277CDD8B0]);
  return swift_getWitnessTable();
}

uint64_t sub_24F662274()
{
  sub_24F927018();
  sub_24F927108();
  sub_24F924E38();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24F66235C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F6623DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for FriendsDataIntent()
{
  result = qword_27F24B7C0;
  if (!qword_27F24B7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F662498@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B7D0);
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for FriendsDataIntent();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F66290C();
  sub_24F92D108();
  if (!v2)
  {
    v12 = v16;
    sub_24E61C064(&qword_27F213E38);
    v13 = v17;
    sub_24F92CC68();
    (*(v15 + 8))(v8, v6);
    sub_24F662960(v13, v11, type metadata accessor for Player);
    sub_24F662960(v11, v12, type metadata accessor for FriendsDataIntent);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F6626F8(uint64_t a1)
{
  v2 = sub_24F66290C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F662734(uint64_t a1)
{
  v2 = sub_24F66290C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F6627A8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B7E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F66290C();
  sub_24F92D128();
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F66290C()
{
  result = qword_27F24B7D8;
  if (!qword_27F24B7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B7D8);
  }

  return result;
}

uint64_t sub_24F662960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F6629DC()
{
  result = qword_27F24B7E8;
  if (!qword_27F24B7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B7E8);
  }

  return result;
}

unint64_t sub_24F662A34()
{
  result = qword_27F24B7F0;
  if (!qword_27F24B7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B7F0);
  }

  return result;
}

unint64_t sub_24F662A8C()
{
  result = qword_27F24B7F8;
  if (!qword_27F24B7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B7F8);
  }

  return result;
}

uint64_t static InAppPurchaseOfferButtonPresenter.use(stateDataSource:)(uint64_t a1)
{
  qword_27F24B800 = a1;
}

uint64_t sub_24F662B60(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  sub_24F664490(v2, v1);

  return swift_unknownObjectRelease();
}

uint64_t InAppPurchaseOfferButtonPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  sub_24F664490(a1, a2);

  return swift_unknownObjectRelease();
}

void (*InAppPurchaseOfferButtonPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24F662C80;
}

void sub_24F662C80(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 24);
  if (a2)
  {
    v5 = swift_unknownObjectRetain();
    sub_24F664490(v5, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_24F664490(v4, v3);
  }

  swift_unknownObjectRelease();

  free(v2);
}

id InAppPurchaseOfferButtonPresenter.theme.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_24E9534EC(v2, v3);
}

void InAppPurchaseOfferButtonPresenter.alignment.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 148);
  *a1 = *(v1 + 144);
  *(a1 + 4) = v2;
}

void InAppPurchaseOfferButtonPresenter.subtitlePosition.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 154);
  *a1 = *(v1 + 150);
  *(a1 + 4) = v2;
}

uint64_t InAppPurchaseOfferButtonPresenter.__allocating_init(displayProperties:buttonAction:appStateController:restrictions:subtitlePosition:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, unsigned int *a7)
{
  v14 = swift_allocObject();
  InAppPurchaseOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:restrictions:subtitlePosition:alignment:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t InAppPurchaseOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:restrictions:subtitlePosition:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, unsigned int *a7)
{
  v11 = *a6;
  v64 = a6[1];
  v12 = a6[2];
  v13 = a6[3];
  v14 = a6[4];
  v15 = a6[5];
  v16 = *a7 | (*(a7 + 2) << 32);
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 104) = 0;
  *(v7 + 112) = 0;
  *(v7 + 156) = 65;
  v66 = a1;
  v67 = qword_27F24B800;
  v65 = a5;
  if (!qword_27F24B800)
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v17 = sub_24F92AAE8();
    __swift_project_value_buffer(v17, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }

  *(v7 + 32) = a2;
  *(v7 + 40) = a1;
  *(v7 + 72) = type metadata accessor for Restrictions();
  *(v7 + 80) = &protocol witness table for Restrictions;
  *(v7 + 48) = a5;
  *(v7 + 150) = v11;
  *(v7 + 151) = v64;
  *(v7 + 152) = v12;
  *(v7 + 153) = v13;
  *(v7 + 154) = v14;
  *(v7 + 155) = v15;
  if (v16 == 3)
  {
    v77[0] = v11;
    v77[1] = v64;
    v77[2] = v12;
    v77[3] = v13;
    v77[4] = v14;
    v77[5] = v15;
    sub_24E9536D8(v77, &v68, v18);
    LOBYTE(v16) = v68;
    v19.i32[0] = *(&v68 + 1);
    v20 = vmovl_u8(v19).u64[0];
    v21 = BYTE5(v68);
  }

  else
  {
    v22.i64[0] = 0xFFFFFFFFFFFFLL;
    v22.i64[1] = 0xFFFFFFFFFFFFLL;
    v23 = vandq_s8(vdupq_n_s64(v16), v22);
    v20 = vmovn_s32(vuzp1q_s32(vshlq_u64(v23, xmmword_24F99A2D0), vshlq_u64(v23, xmmword_24F99A2C0)));
    v21 = BYTE5(v16);
  }

  *(v7 + 144) = v16;
  v24 = v7;
  *(v7 + 145) = vuzp1_s8(v20, v20).u32[0];
  *(v7 + 149) = v21;
  v25 = a5;
  v26 = a1;
  if (!a1)
  {
    v29 = 0;
    v28 = 16;
    v30 = 3;
    goto LABEL_12;
  }

  v27 = *(a1 + 96);
  v28 = *(a1 + 97);
  v30 = *(a1 + 104);
  v29 = *(a1 + 112);
  sub_24E9534EC(v30, v29);
  if (v27 == 7)
  {
LABEL_12:
    v27 = 0;
  }

  if (v28 == 16)
  {
    v31 = 0;
  }

  else
  {
    v31 = v28;
  }

  if (v30 == 3)
  {
    v32 = 0;
  }

  else
  {
    v32 = v30;
  }

  *(v24 + 120) = v27;
  *(v24 + 121) = v31;
  if (v30 == 3)
  {
    v33 = 0;
  }

  else
  {
    v33 = v29;
  }

  *(v24 + 128) = v32;
  *(v24 + 136) = v33;
  if (!a1 || (v34 = *(a1 + 64)) == 0)
  {
    *(v24 + 88) = 0;
    *(v24 + 96) = 0;

    v46 = v67;

    LOBYTE(v49) = 0;
    goto LABEL_38;
  }

  v35 = *(a1 + 56);
  ObjectType = swift_getObjectType();
  v68 = v35;
  v69 = v34;
  v37 = *(a4 + 56);

  swift_retain_n();

  v26 = v66;
  v38 = v37(&v68, ObjectType, a4);
  v40 = v39;

  *(v24 + 88) = v38;
  *(v24 + 96) = v40;
  v41 = swift_getObjectType();
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = *(v40 + 72);
  swift_unknownObjectRetain();

  v43(v24, sub_24F664610, v42, v41, v40);

  swift_unknownObjectRelease();

  if (!*(v24 + 88))
  {
    LOBYTE(v49) = 0;
LABEL_33:
    v46 = v67;
    goto LABEL_38;
  }

  v44 = *(v24 + 96);
  v45 = swift_getObjectType();
  (*(v44 + 16))(&v68, v45, v44);
  if (!(v74 >> 60))
  {
    LOBYTE(v49) = v68 != 1;
    goto LABEL_33;
  }

  v46 = v67;
  if (v74 >> 60 != 8)
  {
    goto LABEL_37;
  }

  v47 = v73 | v75;
  v48 = v71 | v70 | v69;
  if (v74 == 0x8000000000000000 && !(v47 | v68 | v72 | v48))
  {
    LOBYTE(v49) = 0;
    goto LABEL_38;
  }

  if (v74 != 0x8000000000000000 || v68 != 4 || (v49 = v47 | v72 | v48) != 0)
  {
LABEL_37:
    sub_24E88D2AC(&v68);
    LOBYTE(v49) = 1;
  }

LABEL_38:
  *(v24 + 157) = v49;
  if (v46)
  {
    v50 = *(v24 + 40);
    if (v50)
    {
      v51 = v50[22];
      v52 = v50[23];
      v54 = v50[3];
      v53 = v50[4];
      swift_beginAccess();
      sub_24E615E00(v67 + 16, &v68);
      v55 = v71;
      v56 = v72;
      __swift_project_boxed_opaque_existential_1(&v68, v71);
      v76[0] = v54;
      v76[1] = v53;
      v57 = *(v56 + 32);

      v57(&v78, v76, v51, v52, v55, v56);
      v26 = v66;
      v25 = v65;

      __swift_destroy_boxed_opaque_existential_1(&v68);
      *(v24 + 156) = v78;
      v58 = swift_allocObject();
      swift_weakInit();
      v59 = swift_allocObject();
      v59[2] = v58;
      v59[3] = v50;
      v59[4] = v51;
      v59[5] = v52;

      InAppPurchaseStateDataSource.addObserver(_:action:)(v24, sub_24F664604, v59);
    }
  }

  if (v26)
  {
    if ((*(v26 + 136) & 1) == 0)
    {
      v60 = [objc_opt_self() defaultCenter];

      v61 = sub_24F92B098();

      [v60 addObserver:v24 selector:sel_restrictionsDidChange_ name:v61 object:v25];

      swift_unknownObjectRelease();

      goto LABEL_46;
    }
  }

  swift_unknownObjectRelease();
LABEL_46:

  return v24;
}

uint64_t sub_24F6635AC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    ObjectType = swift_getObjectType();
    (*(a2 + 16))(v9, ObjectType, a2);
    if (v12 >> 60)
    {
      if (v12 >> 60 != 8)
      {
LABEL_9:
        sub_24E88D2AC(v9);
LABEL_12:
        LOBYTE(v8) = 1;
        goto LABEL_13;
      }

      v6 = v11 | v13;
      v7 = v9[3] | v9[2] | v9[1];
      if (v12 != 0x8000000000000000 || v6 | v9[0] | v10 | v7)
      {
        if (v12 == 0x8000000000000000 && v9[0] == 4)
        {
          v8 = v6 | v10 | v7;
          if (!v8)
          {
            goto LABEL_13;
          }
        }

        goto LABEL_9;
      }
    }

    else if (LOBYTE(v9[0]) != 1)
    {
      goto LABEL_12;
    }

    LOBYTE(v8) = 0;
LABEL_13:
    *(v4 + 157) = v8;
    _s12GameStoreKit33InAppPurchaseOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

uint64_t sub_24F6636D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = *(a3 + 24);
    v12 = *(a3 + 32);
    swift_beginAccess();
    sub_24E615E00(a1 + 16, v16);
    v13 = v17;
    v14 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v15[0] = v11;
    v15[1] = v12;
    (*(v14 + 32))(&v19, v15, a4, a5, v13, v14);
    __swift_destroy_boxed_opaque_existential_1(v16);
    *(v10 + 156) = v19;
    _s12GameStoreKit33InAppPurchaseOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

uint64_t InAppPurchaseOfferButtonPresenter.deinit()
{
  v1 = v0;
  if (qword_27F24B800)
  {

    InAppPurchaseStateDataSource.removeObserver(_:)(v0);
  }

  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  sub_24E883630(v1 + 16);

  __swift_destroy_boxed_opaque_existential_1(v1 + 48);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_24E97D004(*(v1 + 128), *(v1 + 136));
  return v1;
}

uint64_t InAppPurchaseOfferButtonPresenter.__deallocating_deinit()
{
  InAppPurchaseOfferButtonPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F6638BC(char a1)
{
  v2 = v1;
  if ((a1 & 1) != 0 || (result = sub_24F663A28(), !v4))
  {
    v5 = *(v1 + 40);
    if (v5)
    {
      v6 = *(v5 + 72);
      if (*(v6 + 16))
      {

        v7 = sub_24E76DB58(0);
        if (v8)
        {
          v9 = *(*(v6 + 56) + 16 * v7);

          return v9;
        }
      }
    }

    v10 = *(v2 + 32);
    if (v10 && *(v10 + 24))
    {
      v11 = *(v10 + 16);

      return v11;
    }

    else
    {
      v12._object = 0x800000024FA5BAC0;
      v12._countAndFlagsBits = 0xD000000000000015;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      return localizedString(_:comment:)(v12, v13)._countAndFlagsBits;
    }
  }

  return result;
}

uint64_t sub_24F663998(char a1)
{
  if ((a1 & 1) != 0 || (result = sub_24F663AE0(), !v3))
  {
    v4 = *(v1 + 40);
    if (v4)
    {
      v5 = *(v4 + 88);
      if (*(v5 + 16))
      {

        v6 = sub_24E76DB58(0);
        if (v7)
        {
          v8 = *(*(v5 + 56) + 16 * v6);

          return v8;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_24F663A28()
{
  v1 = *(v0 + 40);
  if (!v1 || *(v1 + 125) != 1)
  {
    return 0;
  }

  v2 = *(v0 + 157);
  v3 = *(v1 + 72);
  v4 = *(v3 + 16);
  if (v2 != 1)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = sub_24E76DB58(3);
    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v4)
  {

    v5 = sub_24E76DB58(2);
    if ((v6 & 1) == 0)
    {
LABEL_6:

      return 0;
    }

LABEL_9:
    v8 = *(*(v3 + 56) + 16 * v5);

    return v8;
  }

  return 0;
}

uint64_t sub_24F663AE0()
{
  v1 = *(v0 + 40);
  if (!v1 || *(v1 + 125) != 1)
  {
    return 0;
  }

  v2 = *(v0 + 157);
  v3 = *(v1 + 88);
  v4 = *(v3 + 16);
  if (v2 != 1)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = sub_24E76DB58(3);
    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v4)
  {

    v5 = sub_24E76DB58(2);
    if ((v6 & 1) == 0)
    {
LABEL_6:

      return 0;
    }

LABEL_9:
    v8 = *(*(v3 + 56) + 16 * v5);

    return v8;
  }

  return 0;
}

void sub_24F663B98()
{
  v1 = v0[4];
  if (v1 && *(v0 + 120) != 5 && (*(v0 + 156) & 0xC0) == 0x40)
  {
    v2 = *v0;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = v0[3];
      ObjectType = swift_getObjectType();
      v7[3] = v2;
      v7[0] = v0;
      v5 = *(v3 + 8);
      v6 = *(v5 + 8);

      v6(v1, v7, ObjectType, v5);

      swift_unknownObjectRelease();
      sub_24E857CC8(v7);
    }
  }
}

uint64_t sub_24F663D3C(uint64_t a1, uint64_t a2)
{
  sub_24F664490(a1, a2);

  return swift_unknownObjectRelease();
}

void (*sub_24F663D78(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_24F662C80;
}

void _s12GameStoreKit33InAppPurchaseOfferButtonPresenterC6update13ignoringCacheySb_tF_0()
{
  v1 = *(v0 + 156);
  v2 = v1 >> 6;
  if (v1 >> 6 <= 1)
  {
    if (!v2)
    {
      if (v1)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v3 = *(v0 + 24);
          ObjectType = swift_getObjectType();
          v5._countAndFlagsBits = 0xD00000000000001CLL;
          v5._object = 0x800000024FA5BA80;
          v6._countAndFlagsBits = 0;
          v6._object = 0xE000000000000000;
          v7 = localizedString(_:comment:)(v5, v6);
          if (qword_27F210000 != -1)
          {
            swift_once();
          }

          LOWORD(v55) = word_27F222780;
          v56 = qword_27F222788;
          v57 = qword_27F222790;
          v8 = *(v3 + 32);
          sub_24E9534EC(qword_27F222788, qword_27F222790);
          v8(v7._countAndFlagsBits, v7._object, 0, 0, &v55, ObjectType, v3);
          swift_unknownObjectRelease();

          sub_24E97D004(v56, v57);
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_34;
        }

        v9 = "OfferButton.Title.Purchased";
        v10 = 0xD00000000000001CLL;
      }

      else
      {
        v10 = 0xD00000000000001BLL;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v34 = *(v0 + 24);
          v35 = swift_getObjectType();
          v36._object = 0x800000024FA5BA60;
          v36._countAndFlagsBits = 0xD00000000000001BLL;
          v37._countAndFlagsBits = 0;
          v37._object = 0xE000000000000000;
          v38 = localizedString(_:comment:)(v36, v37);
          if (qword_27F210000 != -1)
          {
            swift_once();
          }

          LOWORD(v55) = word_27F222780;
          v56 = qword_27F222788;
          v57 = qword_27F222790;
          v39 = *(v34 + 32);
          sub_24E9534EC(qword_27F222788, qword_27F222790);
          v39(v38._countAndFlagsBits, v38._object, 0, 0, &v55, v35, v34);
          swift_unknownObjectRelease();

          sub_24E97D004(v56, v57);
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_34;
        }

        v9 = "OfferButton.Hint.Downloading";
      }

      v40 = *(v0 + 24);
      v41 = swift_getObjectType();
      v42._object = (v9 | 0x8000000000000000);
      v42._countAndFlagsBits = v10;
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      v44 = localizedString(_:comment:)(v42, v43);
      (*(v40 + 128))(v44._countAndFlagsBits, v44._object, v41, v40);
      goto LABEL_31;
    }

    v17 = sub_24F6638BC(v1 & 1);
    v19 = v18;
    v20 = sub_24F663998(v1 & 1);
    if (v21)
    {
      v22 = v20;
      v23 = v21;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v24 = *(v0 + 24);
        v25 = swift_getObjectType();
        v26 = *(v0 + 154);
        v58 = *(v0 + 150);
        v59 = v26;
        v27 = *(v0 + 128);
        v28 = *(v0 + 136);
        LOWORD(v55) = *(v0 + 120);
        v56 = v27;
        v57 = v28;
        v29 = *(v24 + 24);
        sub_24E9534EC(v27, v28);
        v29(v17, v19, v22, v23, &v58, 0, 0, &v55, v25, v24);
        swift_unknownObjectRelease();
        sub_24E97D004(v56, v57);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v30 = *(v0 + 24);
        v31 = swift_getObjectType();
        v55 = v17;
        v56 = v19;
        MEMORY[0x253050C20](8236, 0xE200000000000000);
        MEMORY[0x253050C20](v22, v23);

        (*(v30 + 128))(v55, v56, v31, v30);
LABEL_31:
        swift_unknownObjectRelease();
LABEL_34:
        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {
          return;
        }

        v52 = *(v0 + 24);
        if ((*(v0 + 156) & 0xC0) == 0x40)
        {
          __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
          LOBYTE(v58) = 0;
          v53 = RestrictionsProtocol.doesAllow(_:properties:)(&v58, *(v0 + 40));
        }

        else
        {
          v53 = 1;
        }

        v54 = swift_getObjectType();
        (*(v52 + 16))(v53, v54, v52);
        goto LABEL_39;
      }
    }

    else
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v45 = *(v0 + 24);
        v46 = swift_getObjectType();
        v47 = *(v0 + 128);
        v48 = *(v0 + 136);
        LOWORD(v55) = *(v0 + 120);
        v56 = v47;
        v57 = v48;
        v49 = *(v45 + 32);
        sub_24E9534EC(v47, v48);
        v49(v17, v19, 0, 0, &v55, v46, v45);
        swift_unknownObjectRelease();
        sub_24E97D004(v56, v57);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v50 = *(v0 + 24);
        v51 = swift_getObjectType();
        (*(v50 + 128))(v17, v19, v51, v50);
        goto LABEL_31;
      }
    }

    goto LABEL_34;
  }

  if (v2 != 2)
  {
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    v32 = *(v0 + 24);
    v33 = swift_getObjectType();
    (*(v32 + 16))(0, v33, v32);
LABEL_39:
    swift_unknownObjectRelease();
    return;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v0 + 24);
    v12 = swift_getObjectType();
    v13 = *(v0 + 148);
    v58 = *(v0 + 144);
    v59 = v13;
    v14 = *(v0 + 128);
    v15 = *(v0 + 136);
    LOWORD(v55) = *(v0 + 120);
    v56 = v14;
    v57 = v15;
    v16 = *(v11 + 56);
    sub_24E9534EC(v14, v15);
    v16(0, 0, &v58, &v55, v1 & 1, v12, v11);
    swift_unknownObjectRelease();
    sub_24E97D004(v56, v57);
  }
}

void sub_24F664490(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 112))(v2, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v2 + 24);
    v7 = swift_getObjectType();
    (*(v6 + 104))(v2, sel_offerButtonTapped, v7, v6);
    swift_unknownObjectRelease();
  }

  _s12GameStoreKit33InAppPurchaseOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
}

uint64_t sub_24F664584()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F6645BC()
{

  return swift_deallocObject();
}

uint64_t sub_24F664618@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24F6646BC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    if ((*(v0 + 156) & 0xC0) == 0x40)
    {
      __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
      v5 = 0;
      v3 = RestrictionsProtocol.doesAllow(_:properties:)(&v5, *(v0 + 40));
    }

    else
    {
      v3 = 1;
    }

    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v3, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

GameStoreKit::AccessibilityMetadata __swiftcall AccessibilityMetadata.init(label:roleDescription:)(Swift::String_optional label, Swift::String_optional roleDescription)
{
  *v2 = label;
  v2[1] = roleDescription;
  result.roleDescription = roleDescription;
  result.label = label;
  return result;
}

uint64_t AccessibilityMetadata.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = a2;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928398();
  v9 = sub_24F928348();
  v11 = v10;
  v12 = *(v6 + 8);
  v12(v8, v5);
  sub_24F928398();
  v13 = sub_24F928348();
  v15 = v14;
  v16 = sub_24F9285B8();
  (*(*(v16 - 8) + 8))(v19, v16);
  v12(a1, v5);
  result = (v12)(v8, v5);
  *a3 = v9;
  a3[1] = v11;
  a3[2] = v13;
  a3[3] = v15;
  return result;
}

uint64_t AccessibilityMetadata.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AccessibilityMetadata.roleDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AccessibilityMetadata.hash(into:)()
{
  v1 = *(v0 + 24);
  if (!*(v0 + 8))
  {
    sub_24F92D088();
    if (v1)
    {
      goto LABEL_3;
    }

    return sub_24F92D088();
  }

  sub_24F92D088();
  sub_24F92B218();
  if (!v1)
  {
    return sub_24F92D088();
  }

LABEL_3:
  sub_24F92D088();

  return sub_24F92B218();
}

uint64_t AccessibilityMetadata.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_24F92D068();
  if (!v1)
  {
    sub_24F92D088();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_24F92D088();
    return sub_24F92D0B8();
  }

  sub_24F92D088();
  sub_24F92B218();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_24F92D088();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24F664B48()
{
  v1 = *(v0 + 24);
  if (!*(v0 + 8))
  {
    sub_24F92D088();
    if (v1)
    {
      goto LABEL_3;
    }

    return sub_24F92D088();
  }

  sub_24F92D088();
  sub_24F92B218();
  if (!v1)
  {
    return sub_24F92D088();
  }

LABEL_3:
  sub_24F92D088();

  return sub_24F92B218();
}

uint64_t sub_24F664C00()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_24F92D068();
  if (!v1)
  {
    sub_24F92D088();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_24F92D088();
    return sub_24F92D0B8();
  }

  sub_24F92D088();
  sub_24F92B218();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_24F92D088();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t _s12GameStoreKit21AccessibilityMetadataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_24F92CE08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v4 == v7 && v5 == v8 || (sub_24F92CE08() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_24F664D5C()
{
  result = qword_27F24B808;
  if (!qword_27F24B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B808);
  }

  return result;
}

uint64_t sub_24F664DD4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244BD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F664EA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244BD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ActivityFeedShelfIntent()
{
  result = qword_27F24B810;
  if (!qword_27F24B810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F664FA0()
{
  sub_24E66ECF0(319, &qword_27F254DE0);
  if (v0 <= 0x3F)
  {
    sub_24F665064();
    if (v1 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F24B820);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F665064()
{
  if (!qword_27F244C18)
  {
    type metadata accessor for GameSource();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F244C18);
    }
  }
}

unint64_t sub_24F6650BC@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v3 = *v1;
  v4 = v1[1];
  v5 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v5;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 88) = 0x4449726579616C70;
  *(inited + 96) = 0xE800000000000000;
  v6 = v1[2];
  v7 = v1[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  *(inited + 128) = v8;
  v9 = sub_24E605DB4();
  *(inited + 104) = v6;
  *(inited + 112) = v7;
  *(inited + 136) = v9;
  *(inited + 144) = 0x72756F53656D6167;
  *(inited + 152) = 0xEA00000000006563;
  v10 = type metadata accessor for ActivityFeedShelfIntent();
  v11 = *(v10 + 24);
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244BD0);
  *(inited + 192) = sub_24F4949AC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24F665C3C(v1 + v11, boxed_opaque_existential_1);
  *(inited + 200) = 0x746C6946656D6167;
  *(inited + 208) = 0xEA00000000007265;
  if (*(v1 + *(v10 + 28)) > 1u)
  {
    v13 = 0uLL;
    if (*(v1 + *(v10 + 28)) == 2)
    {
      v13 = xmmword_24FA17BC0;
    }
  }

  else if (*(v1 + *(v10 + 28)))
  {
    v13 = xmmword_24FA17BD0;
  }

  else
  {
    v13 = xmmword_24FA17BB0;
  }

  *(inited + 240) = v8;
  *(inited + 248) = v9;
  *(inited + 216) = v13;

  v14 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v14;
  return result;
}

uint64_t sub_24F6652EC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B838);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F665A74();
  sub_24F92D128();
  v11[15] = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v11[14] = 1;
    sub_24F92CCA8();
    v10 = type metadata accessor for ActivityFeedShelfIntent();
    v11[13] = 2;
    type metadata accessor for GameSource();
    sub_24F665BF8(&qword_27F221F60);
    sub_24F92CCF8();
    v11[12] = *(v3 + *(v10 + 28));
    v11[11] = 3;
    sub_24F47EE5C();
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F66553C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244BD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B828);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v19 - v8;
  v10 = type metadata accessor for ActivityFeedShelfIntent();
  MEMORY[0x28223BE20](v10);
  v12 = (v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F665A74();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = a1;
  v14 = v21;
  v15 = v22;
  v27 = 0;
  *v12 = sub_24F92CC28();
  v12[1] = v16;
  v19[2] = v16;
  v26 = 1;
  v12[2] = sub_24F92CBC8();
  v12[3] = v17;
  type metadata accessor for GameSource();
  v25 = 2;
  sub_24F665BF8(&qword_27F221F50);
  v19[1] = 0;
  sub_24F92CC18();
  sub_24F665AC8(v6, v12 + *(v10 + 24));
  v23 = 3;
  sub_24F47EE08();
  sub_24F92CC18();
  (*(v14 + 8))(v9, v15);
  *(v12 + *(v10 + 28)) = v24;
  sub_24F665B38(v12, v20);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return sub_24F665B9C(v12);
}

uint64_t sub_24F6658F0()
{
  v1 = 0x444965676170;
  v2 = 0x72756F53656D6167;
  if (*v0 != 2)
  {
    v2 = 0x746C6946656D6167;
  }

  if (*v0)
  {
    v1 = 0x4449726579616C70;
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

uint64_t sub_24F66596C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F665DC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F665994(uint64_t a1)
{
  v2 = sub_24F665A74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6659D0(uint64_t a1)
{
  v2 = sub_24F665A74();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F665A74()
{
  result = qword_27F24B830;
  if (!qword_27F24B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B830);
  }

  return result;
}

uint64_t sub_24F665AC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244BD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F665B38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityFeedShelfIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F665B9C(uint64_t a1)
{
  v2 = type metadata accessor for ActivityFeedShelfIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F665BF8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GameSource();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F665C3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244BD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F665CC0()
{
  result = qword_27F24B840;
  if (!qword_27F24B840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B840);
  }

  return result;
}

unint64_t sub_24F665D18()
{
  result = qword_27F24B848;
  if (!qword_27F24B848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B848);
  }

  return result;
}

unint64_t sub_24F665D70()
{
  result = qword_27F24B850;
  if (!qword_27F24B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B850);
  }

  return result;
}

uint64_t sub_24F665DC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449726579616C70 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72756F53656D6167 && a2 == 0xEA00000000006563 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746C6946656D6167 && a2 == 0xEA00000000007265)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_24F665F60@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  strcpy((inited + 32), "optionProvider");
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 47) = -18;
  *(inited + 72) = &type metadata for ArcadeLibraryOptionProvider;
  *(inited + 80) = sub_24F666100();
  *(inited + 48) = v3;
  *(inited + 49) = v4;
  *(inited + 50) = v5;
  *(inited + 51) = v6;
  *(inited + 52) = v7;
  v9 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E6383E8(inited + 32);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v9;
  return result;
}

uint64_t sub_24F666084(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v13[0] = *a1;
  v13[1] = v2;
  v13[2] = v3;
  v13[3] = v4;
  v13[4] = v5;
  v12[0] = v6;
  v12[1] = v7;
  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v10;
  return _s12GameStoreKit27ArcadeLibraryOptionProviderV2eeoiySbAC_ACtFZ_0(v13, v12) & 1;
}

unint64_t sub_24F666100()
{
  result = qword_27F24B858;
  if (!qword_27F24B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B858);
  }

  return result;
}

uint64_t sub_24F666178(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_24F9289E8();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_24F666310(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_24F9289E8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

void sub_24F6664B4()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24F9289E8();
    if (v1 <= 0x3F)
    {
      sub_24E6BCB04();
      if (v2 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
        if (v3 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
          if (v4 <= 0x3F)
          {
            sub_24E61C938();
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

uint64_t sub_24F6665D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F666618(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B8F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F668298();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for ContinuePlayingIcon(0);
    v8[14] = 1;
    sub_24F9289E8();
    sub_24F6665D0(&qword_27F214060, MEMORY[0x277D21C48]);
    sub_24F92CD48();
    v8[13] = 2;
    sub_24F92CD18();
    v8[12] = 3;
    sub_24F92CCA8();
    v8[11] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    v8[10] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    v8[9] = 6;
    sub_24F929608();
    sub_24F6665D0(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F6669CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = v34 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v38);
  v37 = v34 - v5;
  v6 = sub_24F9289E8();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B8E8);
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v34 - v10;
  v12 = type metadata accessor for ContinuePlayingIcon(0);
  MEMORY[0x28223BE20](v12);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v14[*(v15 + 32)];
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0;
  v47 = v16;
  sub_24E61DA68(&v48, v16, qword_27F21B590);
  v17 = v12[9];
  v18 = sub_24F92A6D8();
  v19 = *(*(v18 - 8) + 56);
  v46 = v17;
  v19(&v14[v17], 1, 1, v18);
  v20 = v12[10];
  v21 = sub_24F929608();
  v22 = *(*(v21 - 8) + 56);
  v45 = v20;
  v22(&v14[v20], 1, 1, v21);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F668298();
  v43 = v11;
  v23 = v44;
  sub_24F92D108();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_24E601704(v47, qword_27F24EC90);
    sub_24E601704(&v14[v46], &qword_27F215440);
    return sub_24E601704(&v14[v45], &qword_27F213E68);
  }

  else
  {
    v24 = v8;
    v34[2] = v21;
    v25 = v40;
    v44 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v51 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v26 = v49;
    *v14 = v48;
    *(v14 + 1) = v26;
    *(v14 + 4) = v50;
    LOBYTE(v48) = 1;
    sub_24F6665D0(&qword_27F214018, MEMORY[0x277D21C48]);
    sub_24F92CC68();
    v27 = v41;
    (*(v39 + 32))(&v14[v12[5]], v24, v25);
    LOBYTE(v48) = 2;
    v34[1] = 0;
    v14[v12[6]] = sub_24F92CC38() & 1;
    LOBYTE(v48) = 3;
    v28 = sub_24F92CBC8();
    v34[0] = v12;
    v29 = &v14[v12[7]];
    *v29 = v28;
    v29[1] = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v51 = 4;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v48, v47, qword_27F24EC90);
    LOBYTE(v48) = 5;
    sub_24E65CAA0();
    v31 = v37;
    sub_24F92CC68();
    sub_24E61DA68(v31, &v14[v46], &qword_27F215440);
    LOBYTE(v48) = 6;
    sub_24F6665D0(&qword_27F213F48, MEMORY[0x277D21F70]);
    v32 = v36;
    sub_24F92CC18();
    (*(v27 + 8))(v43, v42);
    sub_24E61DA68(v32, &v14[v45], &qword_27F213E68);
    sub_24F6681DC(v14, v35, type metadata accessor for ContinuePlayingIcon);
    __swift_destroy_boxed_opaque_existential_1(v44);
    return sub_24F6682EC(v14, type metadata accessor for ContinuePlayingIcon);
  }
}

unint64_t sub_24F6671EC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4D747865746E6F63;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 == 3)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0x6575676573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1852793705;
  if (v1 != 1)
  {
    v5 = 0x6E49646C756F6873;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F6672C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F6689A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F6672EC(uint64_t a1)
{
  v2 = sub_24F668298();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F667328(uint64_t a1)
{
  v2 = sub_24F668298();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F667364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 36), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

uint64_t sub_24F6674A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v27[0] = a3;
  v27[1] = a4;
  v10 = sub_24F925508();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B880);
  MEMORY[0x28223BE20](v14);
  v16 = v27 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B888);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v27 - v19;
  sub_24F667764(a1, a2, v27[0], v16, a5, a6);
  sub_24F9254D8();
  v21 = sub_24F667E7C();
  sub_24F926678();
  (*(v11 + 8))(v13, v10);
  sub_24E601704(v16, &qword_27F24B880);
  v22 = (a1 + *(type metadata accessor for ContinuePlayingIcon(0) + 28));
  v23 = v22[1];
  if (v23)
  {
    v24 = *v22;
    v25 = v23;
  }

  else
  {
    v24 = 0;
    v25 = 0xE000000000000000;
  }

  v27[4] = v24;
  v27[5] = v25;

  v27[2] = v14;
  v27[3] = v21;
  swift_getOpaqueTypeConformance2();
  sub_24E600AEC();
  sub_24F926538();

  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_24F667764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v43 = a4;
  v11 = type metadata accessor for _ContinuePlayingIconComponent(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B8E0);
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B8B0);
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - v18;
  if (*(a1 + *(type metadata accessor for ContinuePlayingIcon(0) + 24)) == 1)
  {
    sub_24F6681DC(a1, v19, type metadata accessor for ContinuePlayingIcon);
    v20 = sub_24F925868();
    v44 = a6;
    v45 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550);
    sub_24F926F38();
    sub_24F923318();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B8D0) + 36)];
    *v29 = v20;
    *(v29 + 1) = v22;
    *(v29 + 2) = v24;
    *(v29 + 3) = v26;
    *(v29 + 4) = v28;
    v29[40] = 0;
    v30 = sub_24F9257F8();
    v44 = a5;
    v45 = a2;
    sub_24F926F38();
    sub_24F923318();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B8C0) + 36)];
    *v39 = v30;
    *(v39 + 1) = v32;
    *(v39 + 2) = v34;
    *(v39 + 3) = v36;
    *(v39 + 4) = v38;
    v39[40] = 0;
    v40 = swift_allocObject();
    *(v40 + 16) = a5;
    *(v40 + 24) = a2;
    *(v40 + 32) = a6;
    *(v40 + 40) = a3;
    v41 = &v19[*(v17 + 36)];
    *v41 = sub_24E67A5CC;
    *(v41 + 1) = 0;
    *(v41 + 2) = sub_24F668284;
    *(v41 + 3) = v40;
    sub_24E60169C(v19, v16, &qword_27F24B8B0);
    swift_storeEnumTagMultiPayload();
    sub_24F667FBC();
    sub_24F6665D0(&qword_27F24B8D8, type metadata accessor for _ContinuePlayingIconComponent);

    sub_24F924E28();
    return sub_24E601704(v19, &qword_27F24B8B0);
  }

  else
  {
    sub_24F6681DC(a1, v13, type metadata accessor for ContinuePlayingIcon);
    sub_24F6681DC(v13, v16, type metadata accessor for _ContinuePlayingIconComponent);
    swift_storeEnumTagMultiPayload();
    sub_24F667FBC();
    sub_24F6665D0(&qword_27F24B8D8, type metadata accessor for _ContinuePlayingIconComponent);
    sub_24F924E28();
    return sub_24F6682EC(v13, type metadata accessor for _ContinuePlayingIconComponent);
  }
}

uint64_t sub_24F667BA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550);
  sub_24F926F48();
  return sub_24F926F48();
}

double sub_24F667C5C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for ContinuePlayingIcon(0) + 24)))
  {
    v3 = 0.1;
  }

  else
  {
    v3 = 0.0;
  }

  v7 = &type metadata for GameIconShape;
  v8 = sub_24F5C450C();
  LOBYTE(v5) = 1;
  *(&v5 + 1) = 0;
  v6 = v3;
  sub_24E612C80(&v5, a2 + 40);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_24F667CF0()
{
  sub_24F4637F4();

  return sub_24F9218E8();
}

unint64_t sub_24F667DC4()
{
  result = qword_27F24B878;
  if (!qword_27F24B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B878);
  }

  return result;
}

unint64_t sub_24F667E7C()
{
  result = qword_27F24B890;
  if (!qword_27F24B890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B880);
    sub_24F667F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B890);
  }

  return result;
}

unint64_t sub_24F667F00()
{
  result = qword_27F24B898;
  if (!qword_27F24B898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B8A0);
    sub_24F667FBC();
    sub_24F6665D0(&qword_27F24B8D8, type metadata accessor for _ContinuePlayingIconComponent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B898);
  }

  return result;
}

unint64_t sub_24F667FBC()
{
  result = qword_27F24B8A8;
  if (!qword_27F24B8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B8B0);
    sub_24F668074();
    sub_24E602068(&qword_27F216588, &qword_27F216590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B8A8);
  }

  return result;
}

unint64_t sub_24F668074()
{
  result = qword_27F24B8B8;
  if (!qword_27F24B8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B8C0);
    sub_24F668100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B8B8);
  }

  return result;
}

unint64_t sub_24F668100()
{
  result = qword_27F24B8C8;
  if (!qword_27F24B8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B8D0);
    sub_24F6665D0(&qword_27F24B8D8, type metadata accessor for _ContinuePlayingIconComponent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B8C8);
  }

  return result;
}

uint64_t sub_24F6681DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F668244()
{

  return swift_deallocObject();
}

unint64_t sub_24F668298()
{
  result = qword_27F24B8F0;
  if (!qword_27F24B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B8F0);
  }

  return result;
}

uint64_t sub_24F6682EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F668370(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinuePlayingIcon(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F6683F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinuePlayingIcon(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24F668460()
{
  result = type metadata accessor for ContinuePlayingIcon(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F6684D0()
{
  result = qword_27F24B910;
  if (!qword_27F24B910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B918);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B880);
    sub_24F667E7C();
    swift_getOpaqueTypeConformance2();
    sub_24F6665D0(&qword_27F2141E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B910);
  }

  return result;
}

unint64_t sub_24F6685CC()
{
  result = qword_27F24B920;
  if (!qword_27F24B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B920);
  }

  return result;
}

unint64_t sub_24F668624()
{
  result = qword_27F24B928;
  if (!qword_27F24B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B928);
  }

  return result;
}

unint64_t sub_24F66867C()
{
  result = qword_27F24B930;
  if (!qword_27F24B930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B930);
  }

  return result;
}

uint64_t sub_24F6686EC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19[-v4 - 8];
  v6 = type metadata accessor for GameIcon(0);
  v7 = (v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = type metadata accessor for ContinuePlayingIcon(0);
  v11 = *(v10 + 20);
  v12 = sub_24F9289E8();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v5, v1 + v11, v12);
  (*(v13 + 56))(v5, 0, 1, v12);
  sub_24E60169C(v1 + *(v10 + 32), v19, qword_27F24EC90);
  v14 = v20 != 0;
  sub_24E601704(v19, qword_27F21B590);
  v15 = v7[10];
  *&v9[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
  swift_storeEnumTagMultiPayload();
  sub_24E6009C8(v5, v9, &qword_27F213FB0);
  v9[v7[7]] = 1;
  v9[v7[8]] = 1;
  v9[v7[9]] = v14;
  sub_24F668944(v9, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245B08);
  v17 = a1 + *(result + 36);
  *v17 = 0x3FF0000000000000;
  *(v17 + 8) = 256;
  return result;
}

uint64_t sub_24F668944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameIcon(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F6689A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E49646C756F6873 && a2 == 0xEF6E6F6349746573 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA4A720 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_24F668C00()
{
  result = qword_27F24B938;
  if (!qword_27F24B938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245B08);
    sub_24F6665D0(&qword_27F216790, type metadata accessor for GameIcon);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B938);
  }

  return result;
}

uint64_t sub_24F668CD0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F9289E8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for PlayerAvatar(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_24F668E08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_24F9289E8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for PlayerAvatar(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24F668F4C()
{
  result = sub_24E69A5C4(319, &qword_27F223450);
  if (v1 <= 0x3F)
  {
    result = sub_24E69A5C4(319, &qword_27F24B950);
    if (v2 <= 0x3F)
    {
      result = sub_24F9289E8();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for PlayerAvatar(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_24F669034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_24F928AD8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24F669144(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_24F928AD8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_24F66926C()
{
  sub_24F6692F0();
  if (v0 <= 0x3F)
  {
    sub_24F928AD8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F6692F0()
{
  if (!qword_27F24B968)
  {
    type metadata accessor for AvatarData(255);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F24B968);
    }
  }
}

uint64_t sub_24F66936C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LeaderboardsCountHeaderItem(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F66940C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LeaderboardsCountHeaderItem(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24F66949C()
{
  result = type metadata accessor for LeaderboardsCountHeaderItem(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F66951C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244C70);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F66966C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244C70);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24F6697A8()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24F497800(319, &qword_27F244C88, type metadata accessor for FriendsPlayingHeaderItem);
    if (v1 <= 0x3F)
    {
      sub_24E61C8D4();
      if (v2 <= 0x3F)
      {
        sub_24F497800(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24F6698B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F6698FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v21 = a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B9A8);
  MEMORY[0x28223BE20](v20);
  v3 = &v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B9B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244C70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for FriendsPlayingHeaderItem();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(v19, v10, &qword_27F244C70);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24E601704(v10, &qword_27F244C70);
    swift_storeEnumTagMultiPayload();
    v15 = sub_24F47D790();
    v22 = &type metadata for FriendsPlayingHeaderItemComponent;
    v23 = v15;
    swift_getOpaqueTypeConformance2();
    return sub_24F924E28();
  }

  else
  {
    sub_24F66BEB4(v10, v14, type metadata accessor for FriendsPlayingHeaderItem);
    v17 = sub_24F47D790();
    sub_24F921D38();
    (*(v5 + 16))(v3, v7, v4);
    swift_storeEnumTagMultiPayload();
    v22 = &type metadata for FriendsPlayingHeaderItemComponent;
    v23 = v17;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    (*(v5 + 8))(v7, v4);
    return sub_24F66BFE0(v14, type metadata accessor for FriendsPlayingHeaderItem);
  }
}

uint64_t sub_24F669C90(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B9F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F66BF8C();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD38();
    v8[13] = 2;
    sub_24F92CD08();
    type metadata accessor for LeaderboardsCountHeaderItem(0);
    v8[12] = 3;
    type metadata accessor for FriendsPlayingHeaderItem();
    sub_24F6698B4(&qword_27F244CE0, type metadata accessor for FriendsPlayingHeaderItem);
    sub_24F92CCF8();
    v8[11] = 4;
    sub_24F92CD18();
    v8[10] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    v8[9] = 6;
    sub_24F929608();
    sub_24F6698B4(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F66A040@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244C70);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B9E0);
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v36 - v8;
  v10 = type metadata accessor for LeaderboardsCountHeaderItem(0);
  MEMORY[0x28223BE20](v10);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 28);
  v15 = type metadata accessor for FriendsPlayingHeaderItem();
  v16 = *(*(v15 - 8) + 56);
  v45 = v14;
  v16(&v12[v14], 1, 1, v15);
  v17 = &v12[v10[9]];
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  v43 = v17;
  sub_24E61DA68(&v47, v17, qword_27F21B590);
  v18 = v10[10];
  v19 = sub_24F929608();
  v20 = *(*(v19 - 8) + 56);
  v44 = v18;
  v21 = v12;
  v20(&v12[v18], 1, 1, v19);
  v22 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_24F66BF8C();
  v23 = v42;
  sub_24F92D108();
  if (v23)
  {
    v25 = v43;
    __swift_destroy_boxed_opaque_existential_1(v46);
    sub_24E601704(v21 + v45, &qword_27F244C70);
    sub_24E601704(v25, qword_27F24EC90);
    return sub_24E601704(v21 + v44, &qword_27F213E68);
  }

  else
  {
    v42 = v15;
    v24 = v39;
    v36[1] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v50 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v26 = v48;
    *v12 = v47;
    *(v12 + 1) = v26;
    *(v12 + 4) = v49;
    LOBYTE(v47) = 1;
    v27 = sub_24F92CC58();
    v28 = v40;
    v29 = v43;
    v21[5] = v27;
    LOBYTE(v47) = 2;
    v21[6] = sub_24F92CC28();
    v21[7] = v30;
    LOBYTE(v47) = 3;
    sub_24F6698B4(&qword_27F244CD0, type metadata accessor for FriendsPlayingHeaderItem);
    v36[0] = v21;
    v31 = v24;
    sub_24F92CC18();
    v32 = v36[0];
    sub_24E61DA68(v31, v36[0] + v45, &qword_27F244C70);
    LOBYTE(v47) = 4;
    *(v32 + v10[8]) = sub_24F92CC38() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v50 = 5;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v47, v29, qword_27F24EC90);
    LOBYTE(v47) = 6;
    sub_24F6698B4(&qword_27F213F48, MEMORY[0x277D21F70]);
    v33 = v38;
    v34 = v41;
    sub_24F92CC18();
    (*(v28 + 8))(v9, v34);
    sub_24E61DA68(v33, v32 + v44, &qword_27F213E68);
    sub_24F66B580(v32, v37);
    __swift_destroy_boxed_opaque_existential_1(v46);
    return sub_24F66BFE0(v32, type metadata accessor for LeaderboardsCountHeaderItem);
  }
}

uint64_t sub_24F66A784()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000014;
    if (v1 != 1)
    {
      v5 = 0x656C746974;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 25705;
    }
  }

  else
  {
    v2 = 0x6575676573;
    if (v1 != 5)
    {
      v2 = 0xD000000000000011;
    }

    v3 = 0xD000000000000018;
    if (v1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24F66A860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F66C810(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F66A888(uint64_t a1)
{
  v2 = sub_24F66BF8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F66A8C4(uint64_t a1)
{
  v2 = sub_24F66BF8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F66A94C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244CA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v11 = a1[6];
  v10 = a1[7];
  v12 = a1[5];
  v13 = type metadata accessor for LeaderboardsCountHeaderItem(0);
  v14 = *(v13 + 28);
  v15 = *(a1 + *(v13 + 32));

  sub_24F6698FC(a1 + v14, v9);
  sub_24E60169C(v9, v6, &qword_27F244CA0);
  *a2 = v11;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;
  *(a2 + 24) = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B9A0);
  sub_24E60169C(v6, a2 + *(v16 + 48), &qword_27F244CA0);

  sub_24E601704(v9, &qword_27F244CA0);
  sub_24E601704(v6, &qword_27F244CA0);
}

uint64_t sub_24F66AAB8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = type metadata accessor for LeaderboardsCountHeaderItem(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_24F66B580(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  result = sub_24F66BEB4(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for LeaderboardsCountHeaderItem);
  *a2 = sub_24F66BE44;
  a2[1] = v8;
  return result;
}

uint64_t sub_24F66ABC4()
{
  sub_24F47D47C();

  return sub_24F9218E8();
}

uint64_t sub_24F66AC08@<X0>(uint64_t a1@<X8>)
{
  sub_24E600AEC();

  v2 = sub_24F925E18();
  v4 = v3;
  v6 = v5;
  sub_24F925898();
  v7 = sub_24F925C98();
  v9 = v8;
  v11 = v10;

  sub_24E600B40(v2, v4, v6 & 1);

  sub_24F9268B8();
  sub_24E600B40(v7, v9, v11 & 1);

  LODWORD(v2) = sub_24F9251C8();
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146B0) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
  v14 = *MEMORY[0x277CE13B8];
  v15 = sub_24F927748();
  result = (*(*(v15 - 8) + 104))(&v12[v13], v14, v15);
  *v12 = v2;
  return result;
}

uint64_t sub_24F66ADA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B9C0);
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  v61 = &v56 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244CA0);
  MEMORY[0x28223BE20](v5 - 8);
  v60 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v59 = &v56 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217710);
  MEMORY[0x28223BE20](v57);
  v58 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244C70);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v56 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B9C8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v56 - v20;
  v22 = a1[6];
  v23 = a1[7];
  v63 = a1[5];
  v64 = v22;
  v24 = type metadata accessor for LeaderboardsCountHeaderItem(0);
  v25 = *(v24 + 28);
  v62 = *(a1 + *(v24 + 32));
  v56 = v25;
  sub_24E60169C(a1 + v25, v15, &qword_27F244C70);
  v26 = type metadata accessor for FriendsPlayingHeaderItem();
  v27 = 1;
  v28 = (*(*(v26 - 8) + 48))(v15, 1, v26);

  sub_24E601704(v15, &qword_27F244C70);
  if (v28 != 1)
  {
    sub_24F9271E8();
    v29 = sub_24F9251C8();
    *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2145B0) + 36)] = v29;
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214598) + 36);
    v31 = *MEMORY[0x277CE13B8];
    v32 = sub_24F927748();
    (*(*(v32 - 8) + 104))(&v12[v30], v31, v32);
    LOBYTE(v31) = sub_24F9257F8();
    sub_24F923318();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v41 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217788) + 36)];
    *v41 = v31;
    *(v41 + 1) = v34;
    *(v41 + 2) = v36;
    *(v41 + 3) = v38;
    *(v41 + 4) = v40;
    v41[40] = 0;
    LOBYTE(v31) = sub_24F925868();
    sub_24F923318();
    v42 = &v12[*(v57 + 36)];
    *v42 = v31;
    *(v42 + 1) = v43;
    *(v42 + 2) = v44;
    *(v42 + 3) = v45;
    *(v42 + 4) = v46;
    v42[40] = 0;
    v47 = v59;
    sub_24F6698FC(a1 + v56, v59);
    v48 = v58;
    v56 = v23;
    v57 = v18;
    sub_24E60169C(v12, v58, &qword_27F217710);
    v49 = v60;
    sub_24E60169C(v47, v60, &qword_27F244CA0);
    v50 = v61;
    sub_24E60169C(v48, v61, &qword_27F217710);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B9D8);
    sub_24E60169C(v49, v50 + *(v51 + 48), &qword_27F244CA0);
    sub_24E601704(v47, &qword_27F244CA0);
    sub_24E601704(v12, &qword_27F217710);
    sub_24E601704(v49, &qword_27F244CA0);
    v23 = v56;
    v18 = v57;
    sub_24E601704(v48, &qword_27F217710);
    sub_24F66BF1C(v50, v21);
    v27 = 0;
  }

  (*(v65 + 56))(v21, v27, 1, v66);
  sub_24E60169C(v21, v18, &qword_27F24B9C8);
  v52 = v67;
  v53 = v63;
  *v67 = v64;
  v52[1] = v23;
  v52[2] = v53;
  *(v52 + 24) = v62;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B9D0);
  sub_24E60169C(v18, v52 + *(v54 + 48), &qword_27F24B9C8);

  sub_24E601704(v21, &qword_27F24B9C8);
  sub_24E601704(v18, &qword_27F24B9C8);
}

uint64_t sub_24F66B394@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24F924998();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B9B8);
  return sub_24F66ADA8(v1, (a1 + *(v3 + 44)));
}

unint64_t sub_24F66B480()
{
  result = qword_27F24B998;
  if (!qword_27F24B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B998);
  }

  return result;
}

uint64_t sub_24F66B580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LeaderboardsCountHeaderItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F66B5E4()
{
  v1 = type metadata accessor for LeaderboardsCountHeaderItem(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  __swift_destroy_boxed_opaque_existential_1(v3);

  v4 = v3 + v1[7];
  v5 = type metadata accessor for FriendsPlayingHeaderItem();
  if (!(*(*(v5 - 1) + 48))(v4, 1, v5))
  {
    __swift_destroy_boxed_opaque_existential_1(v4);

    v6 = v4 + v5[6];

    v7 = type metadata accessor for Player(0);
    v8 = v7[6];
    v9 = sub_24F9289E8();
    v47 = *(v9 - 8);
    v48 = v9;
    v10 = v6 + v8;
    v11 = *(v47 + 8);
    v11(v10);

    if (*(v6 + v7[9] + 8) != 1)
    {
    }

    v12 = v6 + v7[13];
    v13 = type metadata accessor for CallProviderConversationHandleSet();
    v49 = v11;
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      v44 = v4;
      v45 = v5;
      v14 = type metadata accessor for CallProviderConversationHandle();
      v15 = *(*(v14 - 8) + 48);
      if (!v15(v12, 1, v14))
      {
        v16 = v11;

        v17 = *(type metadata accessor for CallProvider() + 24);
        if (!(*(v47 + 48))(v12 + v17, 1, v48))
        {
          v16(v12 + v17, v48);
        }
      }

      v18 = v12 + *(v13 + 20);
      v19 = v15(v18, 1, v14);
      v5 = v45;
      if (!v19)
      {

        v20 = *(type metadata accessor for CallProvider() + 24);
        if (!(*(v47 + 48))(v18 + v20, 1, v48))
        {
          v49(v18 + v20, v48);
        }
      }

      v4 = v44;
    }

    if (*(v6 + v7[15] + 8))
    {
    }

    v21 = v6 + v7[16];
    PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
    if (!(*(*(PlayedTogetherInfo - 8) + 48))(v21, 1, PlayedTogetherInfo))
    {
      v46 = v5;

      v23 = type metadata accessor for Game();
      v49(v21 + v23[18], v48);
      v24 = v23[19];
      if (!(*(v47 + 48))(v21 + v24, 1, v48))
      {
        v49(v21 + v24, v48);
      }

      v25 = v23[21];
      v26 = sub_24F920818();
      v27 = *(v26 - 8);
      if (!(*(v27 + 48))(v21 + v25, 1, v26))
      {
        (*(v27 + 8))(v21 + v25, v26);
      }

      v5 = v46;
    }

    v28 = v6 + v7[17];
    ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
    if (!(*(*(ChallengeInfo - 8) + 48))(v28, 1, ChallengeInfo))
    {

      v30 = type metadata accessor for Game();
      v49(v28 + v30[18], v48);
      v31 = v30[19];
      if (!(*(v47 + 48))(v28 + v31, 1, v48))
      {
        v49(v28 + v31, v48);
      }

      v32 = v30[21];
      v33 = sub_24F920818();
      v34 = *(v33 - 8);
      if (!(*(v34 + 48))(v28 + v32, 1, v33))
      {
        (*(v34 + 8))(v28 + v32, v33);
      }
    }

    v35 = v4 + v5[8];
    if (*(v35 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v35);
    }

    v36 = v5[9];
    v37 = sub_24F929608();
    v38 = *(v37 - 8);
    if (!(*(v38 + 48))(v4 + v36, 1, v37))
    {
      (*(v38 + 8))(v4 + v36, v37);
    }
  }

  v39 = v3 + v1[9];
  if (*(v39 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v40 = v1[10];
  v41 = sub_24F929608();
  v42 = *(v41 - 8);
  if (!(*(v42 + 48))(v3 + v40, 1, v41))
  {
    (*(v42 + 8))(v3 + v40, v41);
  }

  return swift_deallocObject();
}

uint64_t sub_24F66BE44@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LeaderboardsCountHeaderItem(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24F66A94C(v4, a1);
}

uint64_t sub_24F66BEB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F66BF1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B9C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F66BF8C()
{
  result = qword_27F24B9E8;
  if (!qword_27F24B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B9E8);
  }

  return result;
}

uint64_t sub_24F66BFE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F66C104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char *a5@<X8>)
{
  v50 = a4;
  v59 = a1;
  v60 = a2;
  v58 = a5;
  v6 = sub_24F924218();
  v7 = *(v6 - 8);
  v56 = v6;
  v57 = v7;
  MEMORY[0x28223BE20](v6);
  v54 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233180);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BA38);
  MEMORY[0x28223BE20](v49);
  v48 = &v48 - v12;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BA40);
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v51 = &v48 - v15;
  v61 = a3;
  sub_24E9B5BEC();
  v61 = sub_24F92C628();
  v62 = v16;
  sub_24E600AEC();
  v17 = sub_24F925E18();
  v19 = v18;
  v21 = v20;
  v22 = sub_24F92B098();
  CTFontCreateWithNameAndOptions(v22, 66.0, 0, 0x20000uLL);

  sub_24F925A78();
  v23 = sub_24F925C98();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  sub_24E600B40(v17, v19, v21 & 1);

  v61 = v23;
  v62 = v25;
  v63 = v27 & 1;
  v64 = v29;
  sub_24F91EF98();
  v30 = sub_24F91EFA8();
  (*(*(v30 - 8) + 56))(v11, 0, 1, v30);
  v31 = v48;
  sub_24F9260F8();
  sub_24E601704(v11, &qword_27F233180);
  v32 = v23;
  v33 = v31;
  v34 = v49;
  sub_24E600B40(v32, v25, v27 & 1);

  *&v31[*(v34 + 36)] = sub_24F925198();
  if (v50)
  {
    v35 = v54;
    sub_24F924208();
    v36 = v56;
  }

  else
  {
    v61 = MEMORY[0x277D84F90];
    sub_24F6698B4(&qword_27F216C88, MEMORY[0x277CDFB98]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE40);
    sub_24E602068(&qword_27F21AE48, &qword_27F21AE40);
    v35 = v54;
    v37 = v56;
    sub_24F92C6A8();
    v36 = v37;
  }

  sub_24F66CA50();
  v38 = v51;
  sub_24F926AE8();
  (*(v57 + 8))(v35, v36);
  sub_24E601704(v33, &qword_27F24BA38);
  v40 = v52;
  v39 = v53;
  v41 = *(v53 + 16);
  v42 = v55;
  v41(v52, v38, v55);
  v43 = v58;
  v41(v58, v40, v42);
  v44 = &v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BA50) + 48)];
  v45 = v60;
  *v44 = v59;
  *(v44 + 1) = v45;
  v46 = *(v39 + 8);
  swift_bridgeObjectRetain_n();
  v46(v38, v42);

  return (v46)(v40, v42);
}

uint64_t sub_24F66C68C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  *a1 = sub_24F924C98();
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BA30);
  return sub_24F66C104(v3, v4, v5, v6, (a1 + *(v7 + 44)));
}

unint64_t sub_24F66C70C()
{
  result = qword_27F24BA18;
  if (!qword_27F24BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BA18);
  }

  return result;
}

unint64_t sub_24F66C764()
{
  result = qword_27F24BA20;
  if (!qword_27F24BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BA20);
  }

  return result;
}

unint64_t sub_24F66C7BC()
{
  result = qword_27F24BA28;
  if (!qword_27F24BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BA28);
  }

  return result;
}

uint64_t sub_24F66C810(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA46610 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FA758A0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA758C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_24F66CA50()
{
  result = qword_27F24BA48;
  if (!qword_27F24BA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BA38);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F217388, &qword_27F217390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BA48);
  }

  return result;
}

unint64_t sub_24F66CB4C()
{
  result = qword_27F24BA58;
  if (!qword_27F24BA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BA60);
    sub_24E602068(&qword_27F24BA68, qword_27F24BA70);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BA58);
  }

  return result;
}

uint64_t UpdatePlayTogetherGameActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  updated = type metadata accessor for UpdatePlayTogetherGameAction();
  v10 = *(updated - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](updated - 8);
  sub_24F66E0BC(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UpdatePlayTogetherGameAction);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = *(a3 + 16);
  *(v13 + 24) = a2;
  sub_24F66E1AC(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for UpdatePlayTogetherGameAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24FA188C0;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24F66CEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a3;
  v4[25] = a4;
  v4[22] = a1;
  v4[23] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142A0);
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for GameActivityDraftGameInfo(0);
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FFA8);
  v4[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v6 = type metadata accessor for GameActivityDraftBuilder();
  v7 = swift_task_alloc();
  v4[37] = v7;
  *v7 = v4;
  v7[1] = sub_24F66D0BC;

  return MEMORY[0x28217F228](v4 + 18, v6, v6);
}

uint64_t sub_24F66D0BC()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_24F66DBBC;
  }

  else
  {
    v2 = sub_24F66D1D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F66D1D0()
{
  v1 = *(v0 + 144);
  *(v0 + 312) = v1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v47 = v1;
  if (v2)
  {
    v3 = *(v0 + 288);
    swift_getKeyPath();
    *(v0 + 152) = v2;
    sub_24F66E074(&qword_27F212898, type metadata accessor for GameActivityDraft);

    sub_24F91FD88();

    v4 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
    swift_beginAccess();
    sub_24E60169C(v2 + v4, v3, &qword_27F212B28);
  }

  else
  {
    (*(*(v0 + 232) + 56))(*(v0 + 288), 1, 1, *(v0 + 224));
  }

  v6 = *(v0 + 280);
  v5 = *(v0 + 288);
  v7 = *(v0 + 248);
  v8 = *(v0 + 256);
  v9 = *(v0 + 224);
  v10 = *(v0 + 232);
  sub_24F66E0BC(*(v0 + 192), v6, type metadata accessor for GameActivityDraftGameInfo);
  v46 = *(v10 + 56);
  v46(v6, 0, 1, v9);
  v11 = *(v7 + 48);
  sub_24E60169C(v5, v8, &qword_27F212B28);
  sub_24E60169C(v6, v8 + v11, &qword_27F212B28);
  v12 = *(v10 + 48);
  if (v12(v8, 1, v9) == 1)
  {
    v13 = *(v0 + 288);
    v14 = *(v0 + 224);
    sub_24E601704(*(v0 + 280), &qword_27F212B28);
    sub_24E601704(v13, &qword_27F212B28);
    if (v12(v8 + v11, 1, v14) == 1)
    {
      sub_24E601704(*(v0 + 256), &qword_27F212B28);
      v15 = v47;
      goto LABEL_13;
    }
  }

  else
  {
    v16 = *(v0 + 224);
    sub_24E60169C(*(v0 + 256), *(v0 + 272), &qword_27F212B28);
    v17 = v12(v8 + v11, 1, v16);
    v19 = *(v0 + 280);
    v18 = *(v0 + 288);
    v20 = *(v0 + 272);
    if (v17 != 1)
    {
      v23 = *(v0 + 256);
      v24 = *(v0 + 240);
      sub_24F66E1AC(v8 + v11, v24, type metadata accessor for GameActivityDraftGameInfo);
      v25 = _s12GameStoreKit0a13ActivityDraftA4InfoV2eeoiySbAC_ACtFZ_0(v20, v24);
      sub_24F66E150(v24);
      sub_24E601704(v19, &qword_27F212B28);
      sub_24E601704(v18, &qword_27F212B28);
      sub_24F66E150(v20);
      sub_24E601704(v23, &qword_27F212B28);
      v15 = v47;
      if (v25)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    sub_24E601704(*(v0 + 280), &qword_27F212B28);
    sub_24E601704(v18, &qword_27F212B28);
    sub_24F66E150(v20);
  }

  sub_24E601704(*(v0 + 256), &qword_27F23FFA8);
  v15 = v47;
LABEL_10:
  if (!*(v15 + 16))
  {
    goto LABEL_16;
  }

  v21 = *(v0 + 264);
  v22 = *(v0 + 224);
  sub_24F66E0BC(*(v0 + 192), v21, type metadata accessor for GameActivityDraftGameInfo);
  v46(v21, 0, 1, v22);

  sub_24F34DCA8(v21);

LABEL_13:
  v26 = *(v15 + 16);
  if (v26)
  {
    v27 = *(v0 + 216);
    v28 = type metadata accessor for ChallengeDefinitionDetail(0);
    (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
    swift_getKeyPath();
    v29 = swift_task_alloc();
    *(v29 + 16) = v26;
    *(v29 + 24) = v27;
    *(v0 + 160) = v26;
    sub_24F66E074(&qword_27F212898, type metadata accessor for GameActivityDraft);

    sub_24F91FD78();

    sub_24E601704(v27, &qword_27F212A08);
    v30 = *(v15 + 16);
    if (v30)
    {
      v31 = *(v0 + 208);
      v32 = type metadata accessor for ActivityDefinitionDetail();
      (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
      swift_getKeyPath();
      v33 = swift_task_alloc();
      *(v33 + 16) = v30;
      *(v33 + 24) = v31;
      *(v0 + 168) = v30;

      sub_24F91FD78();

      sub_24E601704(v31, &qword_27F2142A0);
    }
  }

LABEL_16:
  v34 = *(v0 + 192);
  updated = type metadata accessor for UpdatePlayTogetherGameAction();
  sub_24E60169C(v34 + *(updated + 20), v0 + 56, &qword_27F213EA8);
  if (*(v0 + 80))
  {
    sub_24E612C80((v0 + 56), v0 + 16);
    v36 = swift_task_alloc();
    *(v0 + 320) = v36;
    v37 = type metadata accessor for UpdatePlayTogetherGameActionImplementation();
    WitnessTable = swift_getWitnessTable();
    *v36 = v0;
    v36[1] = sub_24F66D9D4;
    v39 = *(v0 + 176);
    v40 = *(v0 + 184);

    return sub_24F1487B0(v39, v0 + 16, v40, v37, WitnessTable);
  }

  else
  {
    v42 = *(v0 + 176);

    sub_24E601704(v0 + 56, qword_27F21B590);
    v43 = *MEMORY[0x277D21CA8];
    v44 = sub_24F928AE8();
    (*(*(v44 - 8) + 104))(v42, v43, v44);

    v45 = *(v0 + 8);

    return v45();
  }
}

uint64_t sub_24F66D9D4()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_24F66DC80;
  }

  else
  {
    v2 = sub_24F66DAE8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F66DAE8()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F66DBBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F66DC80()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F66DD54()
{
  updated = type metadata accessor for UpdatePlayTogetherGameAction();
  v2 = (*(*(updated - 8) + 80) + 32) & ~*(*(updated - 8) + 80);

  v3 = *(type metadata accessor for GameActivityDraftGameInfo(0) + 28);
  v4 = sub_24F9289E8();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  v5 = v0 + v2 + *(updated + 20);
  if (*(v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  v6 = *(updated + 24);
  v7 = sub_24F928AD8();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_24F66DEB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for UpdatePlayTogetherGameAction() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24F66CEA0(a1, v7, v1 + v6, v4);
}

uint64_t sub_24F66DFC4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F66E074(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F66E0BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F66E150(uint64_t a1)
{
  v2 = type metadata accessor for GameActivityDraftGameInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F66E1AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24F66E21C(unint64_t *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for CallInviteAction();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_24F928AE8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v54 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 conversationManager];
  v14 = sub_24F92B098();
  v56 = [v12 callWithUniqueProxyIdentifier_];

  if (!v56)
  {
    if (qword_27F211400 != -1)
    {
LABEL_32:
      swift_once();
    }

    v55 = a2;
    v22 = sub_24F9220D8();
    __swift_project_value_buffer(v22, qword_27F39E850);
    sub_24EC37D08(a1, v8);
    v23 = sub_24F9220B8();
    v24 = sub_24F92BDB8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v57 = v26;
      *v25 = 136315138;
      v28 = *v8;
      v27 = v8[1];

      sub_24EC37D6C(v8);
      v29 = sub_24E7620D4(v28, v27, &v57);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_24E5DD000, v23, v24, "No call with unique proxy identifier %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x2530542D0](v26, -1, -1);
      MEMORY[0x2530542D0](v25, -1, -1);
    }

    else
    {

      sub_24EC37D6C(v8);
    }

    type metadata accessor for CallInviteActionImplementation.CallInviteActionImplementationError();
    swift_getWitnessTable();
    v35 = swift_allocError();
    *v36 = 0;
    sub_24F92A9A8();

    return;
  }

  if (![v56 isConversation])
  {
    type metadata accessor for CallInviteActionImplementation.CallInviteActionImplementationError();
    swift_getWitnessTable();
    v31 = swift_allocError();
    v32 = 1;
    goto LABEL_21;
  }

  v15 = [v12 activeConversationForCall_];
  if (!v15)
  {
    type metadata accessor for CallInviteActionImplementation.CallInviteActionImplementationError();
    swift_getWitnessTable();
    v31 = swift_allocError();
    v32 = 3;
LABEL_21:
    *v30 = v32;
    sub_24F92A9A8();

    v37 = v56;
LABEL_22:

    return;
  }

  v51 = v13;
  v52 = v15;
  v47 = v10;
  v48 = v9;
  v49 = a3;
  v50 = v12;
  v55 = a2;
  v13 = 0;
  v16 = a1[2];
  v53 = MEMORY[0x277D84F90];
  v57 = MEMORY[0x277D84F90];
  v17 = v16 + 48;
  a2 = *(v16 + 16);
  v46 = v16 + 48;
LABEL_5:
  v18 = (v17 + 24 * v13);
  while (a2 != v13)
  {
    if (v13 >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_32;
    }

    ++v13;
    a1 = v18 + 3;
    v12 = *(v18 - 16);
    v19 = objc_allocWithZone(MEMORY[0x277D6EEE8]);

    v20 = sub_24F92B098();
    v21 = [v19 initWithType:v12 + 1 value:v20];

    v8 = [objc_allocWithZone(MEMORY[0x277D6EEA0]) initWithHandle:v21 nickname:0];

    v18 = a1;
    if (v8)
    {
      a1 = &v57;
      MEMORY[0x253050F00]();
      if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
      v53 = v57;
      v17 = v46;
      goto LABEL_5;
    }
  }

  v33 = sub_24F45E074(v53);

  if ((v33 & 0xC000000000000001) != 0)
  {
    v34 = sub_24F92C738();
  }

  else
  {
    v34 = *(v33 + 16);
  }

  v39 = v50;
  v38 = v51;
  v40 = v48;
  v41 = v47;
  if (!v34)
  {

    type metadata accessor for CallInviteActionImplementation.CallInviteActionImplementationError();
    swift_getWitnessTable();
    v44 = swift_allocError();
    *v45 = 4;
    sub_24F92A9A8();

    v37 = v52;
    goto LABEL_22;
  }

  sub_24E69A5C4(0, &qword_27F22F0C0);
  sub_24F66EFD0();
  v42 = sub_24F92BA98();

  [v38 addRemoteMembers:v42 toConversation:v52];

  v43 = v54;
  (*(v41 + 104))(v54, *MEMORY[0x277D21CA8], v40);
  sub_24F92A9C8();
  (*(v41 + 8))(v43, v40);
  if (qword_27F210FD0 != -1)
  {
    swift_once();
  }

  OverlayCallCenter.callInviteSent()();
}

uint64_t sub_24F66E958(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v18 = a2;
  v2 = sub_24F927D88();
  v20 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24F927DC8();
  v5 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CallInviteAction();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  v11 = sub_24F92A9E8();
  sub_24E69A5C4(0, &qword_27F222300);
  v12 = sub_24F92BEF8();
  sub_24EC37D08(v17, &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v18;
  sub_24F66EE58(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  *(v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  aBlock[4] = sub_24F66EEBC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_168;
  v15 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24F66EF70(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E8582A8();
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v7, v4, v15);
  _Block_release(v15);

  (*(v20 + 8))(v4, v2);
  (*(v5 + 8))(v7, v19);
  return v11;
}

uint64_t sub_24F66ED54()
{
  v1 = (type metadata accessor for CallInviteAction() - 8);
  v2 = v0 + ((*(*v1 + 80) + 24) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24F66EE58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallInviteAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24F66EEBC()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for CallInviteAction() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24F66E21C((v0 + v3), v4, v1);
}

uint64_t block_copy_helper_168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F66EF70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F66EFD0()
{
  result = qword_27F2440F0;
  if (!qword_27F2440F0)
  {
    sub_24E69A5C4(255, &qword_27F22F0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2440F0);
  }

  return result;
}

uint64_t sub_24F66F0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for GSKAppEventFormattedDate(0);
  v8 = *(v7 - 8);
  v35 = v7;
  v36 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v42 = sub_24F91F648();
  v14 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v19 = *(a1 + 16);
  if (!v19)
  {
    v29 = v35;
    v30 = *(v36 + 56);

    return v30(a2, 1, 1, v29, v18);
  }

  v34 = a2;
  v41 = &v33 - v17;
  sub_24F91F5B8();
  v20 = a1 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
  sub_24F67A0B8(v20, v13, type metadata accessor for GSKAppEventFormattedDate);
  v21 = (v14 + 48);
  v37 = v13;
  v38 = (v14 + 32);
  v40 = (v14 + 8);
  v22 = *(v36 + 72);
  v23 = v42;
  while (1)
  {
    sub_24F67A0B8(v20, v10, type metadata accessor for GSKAppEventFormattedDate);
    sub_24E60169C(v10, v6, &unk_27F22EC30);
    if ((*v21)(v6, 1, v23) != 1)
    {
      break;
    }

    sub_24F67A058(v13, type metadata accessor for GSKAppEventFormattedDate);
    sub_24E601704(v6, &unk_27F22EC30);
LABEL_4:
    sub_24F67A17C(v10, v13, type metadata accessor for GSKAppEventFormattedDate);
    v20 += v22;
    if (!--v19)
    {
      (*v40)(v41, v23);
      goto LABEL_13;
    }
  }

  v24 = v39;
  (*v38)(v39, v6, v23);
  v25 = sub_24F91F588();
  v26 = v23;
  v27 = v25;
  v28 = *v40;
  (*v40)(v24, v26);
  if ((v27 & 1) == 0)
  {
    v13 = v37;
    sub_24F67A058(v37, type metadata accessor for GSKAppEventFormattedDate);
    v23 = v42;
    goto LABEL_4;
  }

  sub_24F67A058(v10, type metadata accessor for GSKAppEventFormattedDate);
  v28(v41, v42);
  v13 = v37;
LABEL_13:
  v32 = v34;
  sub_24F67A17C(v13, v34, type metadata accessor for GSKAppEventFormattedDate);
  return (*(v36 + 56))(v32, 0, 1, v35);
}

uint64_t sub_24F66F518@<X0>(unsigned __int8 a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      sub_24F4E9558(a2, v8);
      sub_24F67A17C(v8, a3, type metadata accessor for CardLayoutMetrics);
      *(a3 + v6[17]) = 0;

      *(a3 + v6[13]) = 1;
      *(a3 + v6[30]) = 0x403A000000000000;
      *(a3 + v6[19]) = 2;
      *(a3 + v6[28]) = 2;
      *(a3 + v6[21]) = 1;
      v13 = 10.0;
      goto LABEL_24;
    }

    if (a1 == 4)
    {
      if (qword_27F2112F0 != -1)
      {
        swift_once();
      }

      v9 = __swift_project_value_buffer(v6, qword_27F39E610);
      sub_24F67A0B8(v9, v8, type metadata accessor for CardLayoutMetrics);
      v10 = 0;
    }

    else
    {
      if (qword_27F211308 != -1)
      {
        swift_once();
      }

      v15 = __swift_project_value_buffer(v6, qword_27F39E658);
      sub_24F67A0B8(v15, v8, type metadata accessor for CardLayoutMetrics);
      v10 = 1;
    }
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        sub_24F4E9E44(a2, v8);
      }

      else
      {
        if (qword_27F2112F8 != -1)
        {
          swift_once();
        }

        v14 = __swift_project_value_buffer(v6, qword_27F39E628);
        sub_24F67A0B8(v14, v8, type metadata accessor for CardLayoutMetrics);
      }
    }

    else
    {
      if (qword_27F211300 != -1)
      {
        swift_once();
      }

      v11 = __swift_project_value_buffer(v6, qword_27F39E640);
      sub_24F67A0B8(v11, v8, type metadata accessor for CardLayoutMetrics);
    }

    v10 = 1;
  }

  sub_24F67A17C(v8, a3, type metadata accessor for CardLayoutMetrics);
  *(a3 + v6[17]) = v10;
  v16 = sub_24F92CE08();

  *(a3 + v6[13]) = v16 & 1;
  *(a3 + v6[30]) = 0x403A000000000000;
  *(a3 + v6[19]) = 2;
  *(a3 + v6[28]) = 2;
  if (a1 == 4)
  {
    *(a3 + v6[21]) = 2;
    v13 = 8.0;
  }

  else
  {
    v13 = *(a3 + v6[16]);
  }

LABEL_24:
  *(a3 + v6[16]) = v13;
  return result;
}

uint64_t sub_24F66F8EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v360 = a5;
  v344 = a4;
  v363 = a2;
  v361 = a6;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B98);
  v289 = *(v290 - 8);
  MEMORY[0x28223BE20](v290);
  v281 = &v263 - v8;
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B88);
  MEMORY[0x28223BE20](v317);
  v291 = &v263 - v9;
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC00);
  MEMORY[0x28223BE20](v315);
  v316 = &v263 - v10;
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC08);
  MEMORY[0x28223BE20](v335);
  v318 = &v263 - v11;
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC10);
  MEMORY[0x28223BE20](v333);
  v334 = &v263 - v12;
  v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC18);
  MEMORY[0x28223BE20](v349);
  v336 = &v263 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v14 - 8);
  v293 = &v263 - v15;
  v338 = sub_24F9289E8();
  v337 = *(v338 - 8);
  MEMORY[0x28223BE20](v338);
  v280 = &v263 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v279 = v16;
  MEMORY[0x28223BE20](v17);
  v288 = &v263 - v18;
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC20);
  MEMORY[0x28223BE20](v332);
  v319 = &v263 - v19;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219068);
  MEMORY[0x28223BE20](v297);
  v300 = (&v263 - v20);
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219070);
  MEMORY[0x28223BE20](v299);
  v285 = (&v263 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v287 = &v263 - v23;
  v296 = type metadata accessor for ColorGroup();
  v295 = *(v296 - 8);
  MEMORY[0x28223BE20](v296);
  v286 = &v263 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219078);
  MEMORY[0x28223BE20](v314);
  v298 = &v263 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20);
  MEMORY[0x28223BE20](v26);
  v320 = &v263 - v27;
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF58);
  MEMORY[0x28223BE20](v313);
  v307 = &v263 - v28;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF60);
  MEMORY[0x28223BE20](v282);
  v283 = (&v263 - v29);
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF68);
  MEMORY[0x28223BE20](v306);
  v284 = &v263 - v30;
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF70);
  MEMORY[0x28223BE20](v330);
  v308 = &v263 - v31;
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC28);
  MEMORY[0x28223BE20](v345);
  v347 = &v263 - v32;
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC30);
  MEMORY[0x28223BE20](v328);
  v329 = &v263 - v33;
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC38);
  MEMORY[0x28223BE20](v346);
  v331 = &v263 - v34;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC40);
  MEMORY[0x28223BE20](v353);
  v348 = &v263 - v35;
  v327 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v327);
  v312 = &v263 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC48);
  MEMORY[0x28223BE20](v325);
  v311 = &v263 - v37;
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC50);
  MEMORY[0x28223BE20](v322);
  v324 = &v263 - v38;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC58);
  MEMORY[0x28223BE20](v343);
  v326 = &v263 - v39;
  v323 = type metadata accessor for AppEventCardConfiguration.VisualView(0);
  MEMORY[0x28223BE20](v323);
  v310 = &v263 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v275 = type metadata accessor for CardElementView.Category(0);
  v274 = *(v275 - 8);
  MEMORY[0x28223BE20](v275);
  v268 = (&v263 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AFB8);
  MEMORY[0x28223BE20](v305);
  v276 = &v263 - v42;
  v272 = sub_24F91F4A8();
  v271 = *(v272 - 8);
  MEMORY[0x28223BE20](v272);
  v267 = &v263 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v266 = &v263 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v46 - 8);
  v269 = &v263 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v270 = &v263 - v49;
  v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC60);
  MEMORY[0x28223BE20](v356);
  v359 = &v263 - v50;
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC68);
  MEMORY[0x28223BE20](v350);
  v352 = &v263 - v51;
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC70);
  MEMORY[0x28223BE20](v339);
  v341 = &v263 - v52;
  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC78);
  MEMORY[0x28223BE20](v302);
  v303 = &v263 - v53;
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC80);
  MEMORY[0x28223BE20](v340);
  v304 = &v263 - v54;
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC88);
  MEMORY[0x28223BE20](v351);
  v342 = &v263 - v55;
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC90);
  MEMORY[0x28223BE20](v357);
  v354 = &v263 - v56;
  v301 = type metadata accessor for AppEventCardConfiguration.HeadingStack(0);
  MEMORY[0x28223BE20](v301);
  v292 = &v263 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v58 - 8);
  v309 = &v263 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v273 = &v263 - v61;
  MEMORY[0x28223BE20](v62);
  v321 = &v263 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC98);
  v362 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v358 = &v263 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  MEMORY[0x28223BE20](v66 - 8);
  v68 = &v263 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8);
  MEMORY[0x28223BE20](v69 - 8);
  v294 = &v263 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v364 = &v263 - v72;
  v73 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v73);
  MEMORY[0x28223BE20](v74);
  v76 = (&v263 - v75);
  MEMORY[0x28223BE20](v77);
  v79 = &v263 - v78;
  MEMORY[0x28223BE20](v80);
  v365 = &v263 - v81;
  v82 = a3;
  v355 = a1;
  v278 = v83;
  v277 = v84;
  if (a1 == 12)
  {
    if (!a3)
    {

      goto LABEL_25;
    }

    v89 = sub_24F92CE08();

    if ((v89 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  if (a1 != 4)
  {
    if ((sub_24E92D030(a1, v363, a3) & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    if (a3 > 2u)
    {
      if (a3 == 3)
      {
        sub_24F4E9558(v344, v76);
        sub_24F67A17C(v76, v79, type metadata accessor for CardLayoutMetrics);
        v79[v73[17]] = 0;

        v79[v73[13]] = 1;
        *&v79[v73[30]] = 0x403A000000000000;
        *&v79[v73[19]] = 2;
        *&v79[v73[28]] = 2;
        *&v79[v73[21]] = 1;
        v93 = 10.0;
        goto LABEL_39;
      }

      if (a3 == 4)
      {
        if (qword_27F2112F0 != -1)
        {
          swift_once();
        }

        v90 = __swift_project_value_buffer(v73, qword_27F39E610);
        sub_24F67A0B8(v90, v79, type metadata accessor for CardLayoutMetrics);
        v91 = 0;
        goto LABEL_36;
      }

      if (qword_27F211308 != -1)
      {
        swift_once();
      }

      v95 = __swift_project_value_buffer(v73, qword_27F39E658);
      sub_24F67A0B8(v95, v79, type metadata accessor for CardLayoutMetrics);
LABEL_35:
      v91 = 1;
LABEL_36:
      v79[v73[17]] = v91;
      v96 = sub_24F92CE08();

      v79[v73[13]] = v96 & 1;
      *&v79[v73[30]] = 0x403A000000000000;
      *&v79[v73[19]] = 2;
      *&v79[v73[28]] = 2;
      if (a3 == 4)
      {
        *&v79[v73[21]] = 2;
        v93 = 8.0;
      }

      else
      {
        v93 = *&v79[v73[16]];
      }

LABEL_39:
      *&v79[v73[16]] = v93;
      sub_24F67A17C(v79, v365, type metadata accessor for CardLayoutMetrics);
      v97 = v363;
      sub_24F673CB4(v363, v364);
      v264 = type metadata accessor for AppEventCard(0);
      v98 = v97 + v264[8];
      v99 = type metadata accessor for CommonCardAttributes(0);
      v100 = v99;
      v101 = *(v98 + *(v99 + 36));
      v265 = v64;
      if (v101)
      {
        v102 = 1;
      }

      else
      {
        sub_24E60169C(v98 + *(v99 + 32), v68, &qword_27F213FB8);
        v103 = type metadata accessor for GSKVideo();
        v104 = (*(*(v103 - 8) + 48))(v68, 1, v103);
        sub_24E601704(v68, &qword_27F213FB8);
        v102 = 1;
        if (v104 == 1)
        {
          v105 = v321;
          sub_24E60169C(v98 + v100[7], v321, &qword_27F213FB0);
          v106 = (*(v337 + 48))(v105, 1, v338) != 1;
          sub_24E601704(v105, &qword_27F213FB0);
          v102 = v106;
        }
      }

      v107 = v355;
      if (v355 > 3u)
      {
        if (v355 <= 0xAu)
        {
          if (v355 != 4)
          {
            if (v355 == 8)
            {
              v263 = v26;
              if (v82 == 2)
              {
                swift_storeEnumTagMultiPayload();
                sub_24F67A898(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
                v108 = v318;
                sub_24F924E28();
                v109 = v359;
                v110 = v358;
                v111 = v347;
              }

              else
              {
                v140 = (v98 + v100[15]);
                v141 = v140[1];
                if (v141)
                {
                  v372[0] = *v140;
                  v372[1] = v141;
                  sub_24E600AEC();

                  v142 = sub_24F925E18();
                  v144 = v143;
                  v146 = v145;
                  v147 = v365;
                  v148 = sub_24F925C98();
                  v150 = v149;
                  v152 = v151;
                  sub_24E600B40(v142, v144, v146 & 1);

                  LODWORD(v372[0]) = sub_24F9251C8();
                  v153 = sub_24F925C58();
                  v155 = v154;
                  v157 = v156;
                  v159 = v158;
                  sub_24E600B40(v148, v150, v152 & 1);

                  v160 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8) + 36);
                  v161 = *MEMORY[0x277CE13B8];
                  v162 = sub_24F927748();
                  v163 = v281;
                  (*(*(v162 - 8) + 104))(&v281[v160], v161, v162);
                  *v163 = v153;
                  *(v163 + 8) = v155;
                  *(v163 + 16) = v157 & 1;
                  *(v163 + 24) = v159;
                  v164 = *(v147 + v73[28]);
                  KeyPath = swift_getKeyPath();
                  v166 = v290;
                  v167 = v163 + *(v290 + 36);
                  *v167 = KeyPath;
                  *(v167 + 8) = v164;
                  *(v167 + 16) = 0;
                  v168 = v291;
                  sub_24E6009C8(v163, v291, &qword_27F214B98);
                  v169 = 0;
                  v109 = v359;
                  v110 = v358;
                  v111 = v347;
                }

                else
                {
                  v169 = 1;
                  v109 = v359;
                  v110 = v358;
                  v111 = v347;
                  v168 = v291;
                  v166 = v290;
                }

                (*(v289 + 56))(v168, v169, 1, v166);
                sub_24E60169C(v168, v316, &qword_27F214B88);
                swift_storeEnumTagMultiPayload();
                sub_24F67A898(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
                v108 = v318;
                sub_24F924E28();
                sub_24E601704(v168, &qword_27F214B88);
              }

              sub_24E60169C(v108, v334, &qword_27F24BC08);
              swift_storeEnumTagMultiPayload();
              sub_24F679C08();
              sub_24F679CB8();
              v200 = v336;
              sub_24F924E28();
              sub_24E60169C(v200, v111, &qword_27F24BC18);
              swift_storeEnumTagMultiPayload();
              sub_24F679AC0();
              sub_24F679B7C();
              v201 = v348;
              sub_24F924E28();
              sub_24E601704(v200, &qword_27F24BC18);
              sub_24E60169C(v201, v352, &qword_27F24BC40);
              swift_storeEnumTagMultiPayload();
              sub_24F6795E8();
              sub_24F679A34();
              v202 = v354;
              sub_24F924E28();
              sub_24E601704(v201, &qword_27F24BC40);
              sub_24E60169C(v202, v109, &qword_27F24BC90);
              swift_storeEnumTagMultiPayload();
              sub_24F67955C();
              sub_24F67A898(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
              sub_24F924E28();
              sub_24E601704(v202, &qword_27F24BC90);
              sub_24E601704(v108, &qword_27F24BC08);
              goto LABEL_90;
            }

            goto LABEL_88;
          }

          v125 = v311;
          sub_24F674610(v363, v82, v365, v311);
          sub_24E60169C(v125, v324, &qword_27F24BC48);
          swift_storeEnumTagMultiPayload();
          sub_24F679730(&qword_27F24BCC8, type metadata accessor for AppEventCardConfiguration.VisualView);
          sub_24F679834();
          v126 = v326;
          sub_24F924E28();
          sub_24E60169C(v126, v341, &qword_27F24BC58);
          swift_storeEnumTagMultiPayload();
          sub_24F679674();
          sub_24F679778();
          v127 = v342;
          sub_24F924E28();
          sub_24E601704(v126, &qword_27F24BC58);
          sub_24E60169C(v127, v352, &qword_27F24BC88);
          swift_storeEnumTagMultiPayload();
          sub_24F6795E8();
          sub_24F679A34();
          v128 = v354;
          sub_24F924E28();
          sub_24E601704(v127, &qword_27F24BC88);
          sub_24E60169C(v128, v359, &qword_27F24BC90);
          swift_storeEnumTagMultiPayload();
          sub_24F67955C();
          sub_24F67A898(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          v110 = v358;
          sub_24F924E28();
          sub_24E601704(v128, &qword_27F24BC90);
          sub_24E601704(v125, &qword_27F24BC48);
LABEL_90:
          sub_24E601704(v364, &qword_27F2190D8);
          v235 = v361;
          sub_24E6009C8(v110, v361, &qword_27F24BC98);
          (*(v362 + 56))(v235, 0, 1, v265);
          return sub_24F67A058(v365, type metadata accessor for CardLayoutMetrics);
        }

        if (v355 != 11)
        {
          if (v355 == 12)
          {
            v263 = v26;
            if (v82 - 2 >= 4)
            {
              if (v82)
              {
                v209 = v320;
                sub_24E91E37C(0xC, v363, 1, v344, v360, v320);
                sub_24E60169C(v209, v283, &qword_27F214A20);
                swift_storeEnumTagMultiPayload();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8);
                sub_24E63D098();
                sub_24F67A898(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
                v210 = v284;
                sub_24F924E28();
                sub_24E60169C(v210, v307, &qword_27F21AF68);
                swift_storeEnumTagMultiPayload();
                sub_24E745458();
                sub_24E7018B8();
                v188 = v308;
                sub_24F924E28();
                sub_24E601704(v210, &qword_27F21AF68);
                v189 = v209;
                v190 = &qword_27F214A20;
              }

              else
              {
                v184 = sub_24F926C98();
                v185 = sub_24F925808();
                v186 = v283;
                *v283 = v184;
                *(v186 + 8) = v185;
                swift_storeEnumTagMultiPayload();

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8);
                sub_24E63D098();
                sub_24F67A898(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
                v187 = v284;
                sub_24F924E28();
                sub_24E60169C(v187, v307, &qword_27F21AF68);
                swift_storeEnumTagMultiPayload();
                sub_24E745458();
                sub_24E7018B8();
                v188 = v308;
                sub_24F924E28();

                v189 = v187;
                v190 = &qword_27F21AF68;
              }

              sub_24E601704(v189, v190);
              v197 = v359;
              v110 = v358;
              v198 = v347;
            }

            else
            {
              v119 = v294;
              sub_24E60169C(v364, v294, &qword_27F2190D8);
              if ((*(v295 + 48))(v119, 1, v296) == 1)
              {
                sub_24E601704(v119, &qword_27F2190D8);
                v120 = sub_24F926C98();
                v121 = sub_24F925808();
                v122 = v300;
                *v300 = v120;
                *(v122 + 8) = v121;
                swift_storeEnumTagMultiPayload();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8);
                sub_24E602068(&qword_27F219118, &qword_27F219070);
                sub_24E63D098();
                v123 = v298;
                sub_24F924E28();
              }

              else
              {
                v191 = v286;
                sub_24F67A17C(v119, v286, type metadata accessor for ColorGroup);
                v192 = sub_24F927618();
                v193 = v285;
                *v285 = v192;
                *(v193 + 8) = v194;
                v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219120);
                sub_24F594F18(v82 != 5, v191, v193 + *(v195 + 44));
                v196 = v287;
                sub_24E6009C8(v193, v287, &qword_27F219070);
                sub_24E60169C(v196, v300, &qword_27F219070);
                swift_storeEnumTagMultiPayload();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8);
                sub_24E602068(&qword_27F219118, &qword_27F219070);
                sub_24E63D098();
                v123 = v298;
                sub_24F924E28();
                sub_24E601704(v196, &qword_27F219070);
                sub_24F67A058(v191, type metadata accessor for ColorGroup);
              }

              v197 = v359;
              v110 = v358;
              v198 = v347;
              sub_24E60169C(v123, v307, &qword_27F219078);
              swift_storeEnumTagMultiPayload();
              sub_24E745458();
              sub_24E7018B8();
              v199 = v123;
              v188 = v308;
              sub_24F924E28();
              sub_24E601704(v199, &qword_27F219078);
            }

            sub_24E60169C(v188, v329, &qword_27F21AF70);
            swift_storeEnumTagMultiPayload();
            sub_24F679730(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
            sub_24E7453CC();
            v211 = v331;
            sub_24F924E28();
            sub_24E60169C(v211, v198, &qword_27F24BC38);
            swift_storeEnumTagMultiPayload();
            sub_24F679AC0();
            sub_24F679B7C();
            v212 = v348;
            sub_24F924E28();
            sub_24E601704(v211, &qword_27F24BC38);
            sub_24E60169C(v212, v352, &qword_27F24BC40);
            swift_storeEnumTagMultiPayload();
            sub_24F6795E8();
            sub_24F679A34();
            v213 = v354;
            sub_24F924E28();
            sub_24E601704(v212, &qword_27F24BC40);
            sub_24E60169C(v213, v197, &qword_27F24BC90);
            swift_storeEnumTagMultiPayload();
            sub_24F67955C();
            sub_24F67A898(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
            sub_24F924E28();
            sub_24E601704(v213, &qword_27F24BC90);
            v207 = v188;
            v208 = &qword_27F21AF70;
            goto LABEL_89;
          }

          goto LABEL_88;
        }

        v129 = v312;
        sub_24F6754F8(v82, v102, v364, v312);
        sub_24F67A0B8(v129, v329, type metadata accessor for CardContentBackgroundStyle);
        swift_storeEnumTagMultiPayload();
        sub_24F679730(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle);
        sub_24E7453CC();
        v130 = v331;
        sub_24F924E28();
        sub_24E60169C(v130, v347, &qword_27F24BC38);
        swift_storeEnumTagMultiPayload();
        sub_24F679AC0();
        sub_24F679B7C();
        v131 = v348;
        sub_24F924E28();
        sub_24E601704(v130, &qword_27F24BC38);
        sub_24E60169C(v131, v352, &qword_27F24BC40);
        swift_storeEnumTagMultiPayload();
        sub_24F6795E8();
        sub_24F679A34();
        v132 = v354;
        sub_24F924E28();
        sub_24E601704(v131, &qword_27F24BC40);
        sub_24E60169C(v132, v359, &qword_27F24BC90);
        swift_storeEnumTagMultiPayload();
        sub_24F67955C();
        sub_24F67A898(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
        v110 = v358;
        sub_24F924E28();
        sub_24E601704(v132, &qword_27F24BC90);
        v133 = type metadata accessor for CardContentBackgroundStyle;
LABEL_86:
        sub_24F67A058(v129, v133);
        goto LABEL_90;
      }

      if (v355)
      {
        if (v355 == 2)
        {
          v129 = v310;
          sub_24F67A0B8(v98, v310, type metadata accessor for CommonCardAttributes);
          v134 = v323;
          *(v129 + *(v323 + 20)) = v82;
          v135 = v129 + *(v134 + 24);
          type metadata accessor for CardSafeArea(0);
          sub_24F679730(&qword_27F214D10, type metadata accessor for CardSafeArea);
          *v135 = sub_24F923598();
          *(v135 + 8) = v136 & 1;
          sub_24F67A0B8(v129, v324, type metadata accessor for AppEventCardConfiguration.VisualView);
          swift_storeEnumTagMultiPayload();
          sub_24F679730(&qword_27F24BCC8, type metadata accessor for AppEventCardConfiguration.VisualView);
          sub_24F679834();
          v137 = v326;
          sub_24F924E28();
          sub_24E60169C(v137, v341, &qword_27F24BC58);
          swift_storeEnumTagMultiPayload();
          sub_24F679674();
          sub_24F679778();
          v138 = v342;
          sub_24F924E28();
          sub_24E601704(v137, &qword_27F24BC58);
          sub_24E60169C(v138, v352, &qword_27F24BC88);
          swift_storeEnumTagMultiPayload();
          sub_24F6795E8();
          sub_24F679A34();
          v139 = v354;
          sub_24F924E28();
          sub_24E601704(v138, &qword_27F24BC88);
          sub_24E60169C(v139, v359, &qword_27F24BC90);
          swift_storeEnumTagMultiPayload();
          sub_24F67955C();
          sub_24F67A898(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          v110 = v358;
          sub_24F924E28();
          sub_24E601704(v139, &qword_27F24BC90);
          v133 = type metadata accessor for AppEventCardConfiguration.VisualView;
          goto LABEL_86;
        }

        if (v355 == 3)
        {
          v263 = v26;
          v112 = v98 + v100[10];
          v113 = v309;
          sub_24E60169C(v112, v309, &qword_27F213FB0);
          v114 = v337;
          v115 = v338;
          if ((*(v337 + 48))(v113, 1, v338) == 1)
          {
            sub_24E601704(v113, &qword_27F213FB0);
            v116 = v359;
            v110 = v358;
            v117 = v347;
            v118 = v319;
          }

          else
          {
            v170 = *(v114 + 32);
            v171 = v288;
            v170(v288, v113, v115);
            sub_24E60169C(v363 + v264[13], &v370, qword_27F24EC90);
            v118 = v319;
            if (v371)
            {
              sub_24E612C80(&v370, v372);
              v172 = sub_24F9232F8();
              (*(*(v172 - 8) + 56))(v293, 1, 1, v172);
              sub_24E615E00(v372, &v370);
              v173 = v280;
              (*(v114 + 16))(v280, v171, v115);
              v174 = v278;
              sub_24F67A0B8(v365, v278, type metadata accessor for CardLayoutMetrics);
              v175 = (*(v114 + 80) + 16) & ~*(v114 + 80);
              v176 = (v279 + *(v277 + 80) + v175) & ~*(v277 + 80);
              v177 = v171;
              v178 = swift_allocObject();
              v170((v178 + v175), v173, v115);
              v179 = v174;
              v118 = v319;
              sub_24F67A17C(v179, v178 + v176, type metadata accessor for CardLayoutMetrics);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BD50);
              v180 = sub_24F921AF8();
              v181 = sub_24F679730(&qword_27F214C28, MEMORY[0x277D21C48]);
              v182 = sub_24F679730(&qword_27F214C30, MEMORY[0x277D7EBE8]);
              v366 = v115;
              v367 = v180;
              v368 = v181;
              v369 = v182;
              swift_getOpaqueTypeConformance2();
              sub_24F921788();
              __swift_destroy_boxed_opaque_existential_1(v372);
              (*(v114 + 8))(v177, v115);
              v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BD40);
              (*(*(v183 - 8) + 56))(v118, 0, 1, v183);
              v116 = v359;
              v110 = v358;
              v117 = v347;
LABEL_79:
              sub_24E60169C(v118, v334, &qword_27F24BC20);
              swift_storeEnumTagMultiPayload();
              sub_24F679C08();
              sub_24F679CB8();
              v204 = v336;
              sub_24F924E28();
              sub_24E60169C(v204, v117, &qword_27F24BC18);
              swift_storeEnumTagMultiPayload();
              sub_24F679AC0();
              sub_24F679B7C();
              v205 = v348;
              sub_24F924E28();
              sub_24E601704(v204, &qword_27F24BC18);
              sub_24E60169C(v205, v352, &qword_27F24BC40);
              swift_storeEnumTagMultiPayload();
              sub_24F6795E8();
              sub_24F679A34();
              v206 = v354;
              sub_24F924E28();
              sub_24E601704(v205, &qword_27F24BC40);
              sub_24E60169C(v206, v116, &qword_27F24BC90);
              swift_storeEnumTagMultiPayload();
              sub_24F67955C();
              sub_24F67A898(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
              sub_24F924E28();
              sub_24E601704(v206, &qword_27F24BC90);
              v207 = v118;
              v208 = &qword_27F24BC20;
LABEL_89:
              sub_24E601704(v207, v208);
              goto LABEL_90;
            }

            (*(v114 + 8))(v171, v115);
            sub_24E601704(&v370, qword_27F21B590);
            v116 = v359;
            v110 = v358;
            v117 = v347;
          }

          v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BD40);
          (*(*(v203 - 8) + 56))(v118, 1, 1, v203);
          goto LABEL_79;
        }

LABEL_88:
        v234 = v320;
        sub_24E91E37C(v107, v363, v82, v344, v360, v320);
        sub_24E60169C(v234, v359, &qword_27F214A20);
        swift_storeEnumTagMultiPayload();
        sub_24F67955C();
        sub_24F67A898(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
        v110 = v358;
        sub_24F924E28();
        v207 = v234;
        v208 = &qword_27F214A20;
        goto LABEL_89;
      }

      if (v82 > 2u)
      {
        LODWORD(v321) = v102;
        v124 = v26;
      }

      else
      {
        if (!v82)
        {

          goto LABEL_85;
        }

        LODWORD(v321) = v102;
        v124 = v26;
      }

      v214 = sub_24F92CE08();

      if ((v214 & 1) == 0)
      {
        v233 = sub_24F92CE08();

        if ((v233 & 1) == 0)
        {
          v263 = v124;
          v236 = v264;
          v237 = v363;
          v238 = (v363 + v264[11]);
          v240 = *v238;
          v239 = v238[1];
          v372[0] = v240;
          v372[1] = v239;
          sub_24E600AEC();
          v241 = sub_24F92C558();
          v243 = v242;
          v372[0] = 0;
          v372[1] = 0xE000000000000000;
          sub_24F92C888();

          strcpy(v372, "systemimage://");
          HIBYTE(v372[1]) = -18;
          MEMORY[0x253050C20](*(v237 + v236[12]), *(v237 + v236[12] + 8));
          v244 = v270;
          sub_24F91F488();

          v245 = v269;
          sub_24E60169C(v244, v269, &qword_27F228530);
          v246 = v271;
          v247 = 1;
          v248 = v272;
          v249 = (*(v271 + 48))(v245, 1, v272);
          v250 = v273;
          if (v249 != 1)
          {
            v251 = v266;
            (*(v246 + 32))(v266, v245, v248);
            (*(v246 + 16))(v267, v251, v248);
            sub_24F928978();
            (*(v246 + 8))(v251, v248);
            v247 = 0;
          }

          sub_24E601704(v244, &qword_27F228530);
          (*(v337 + 56))(v250, v247, 1, v338);
          v252 = HIBYTE(v243) & 0xF;
          if ((v243 & 0x2000000000000000) == 0)
          {
            v252 = v241 & 0xFFFFFFFFFFFFLL;
          }

          v253 = v276;
          v254 = v275;
          if (v252)
          {
            v255 = v268;
            sub_24E60169C(v250, v268 + *(v275 + 20), &qword_27F213FB0);
            v256 = *(v365 + v73[9]);
            v257 = *(v365 + v73[8]);
            v258 = *(v365 + v73[6]);
            *v255 = v241;
            v255[1] = v243;
            *(v255 + v254[6]) = v256;
            *(v255 + v254[7]) = v321;
            *(v255 + v254[8]) = v257;
            *(v255 + v254[9]) = v258;
            v372[0] = 0x4034000000000000;
            sub_24E66ED98();

            sub_24F9237C8();
            v372[0] = 0x4008000000000000;
            sub_24F9237C8();
            v372[0] = 0x4018000000000000;
            sub_24F9237C8();
            v372[0] = 0x4010000000000000;
            sub_24F9237C8();
            sub_24F67A17C(v255, v253, type metadata accessor for CardElementView.Category);
            v259 = 0;
          }

          else
          {

            v259 = 1;
          }

          (*(v274 + 56))(v253, v259, 1, v254);
          sub_24E60169C(v253, v303, &qword_27F21AFB8);
          swift_storeEnumTagMultiPayload();
          sub_24F679730(&qword_27F24BCB8, type metadata accessor for AppEventCardConfiguration.HeadingStack);
          sub_24E74524C();
          v260 = v304;
          sub_24F924E28();
          sub_24E60169C(v260, v341, &qword_27F24BC80);
          swift_storeEnumTagMultiPayload();
          sub_24F679674();
          sub_24F679778();
          v261 = v342;
          sub_24F924E28();
          sub_24E601704(v260, &qword_27F24BC80);
          sub_24E60169C(v261, v352, &qword_27F24BC88);
          swift_storeEnumTagMultiPayload();
          sub_24F6795E8();
          sub_24F679A34();
          v262 = v354;
          sub_24F924E28();
          sub_24E601704(v261, &qword_27F24BC88);
          sub_24E60169C(v262, v359, &qword_27F24BC90);
          swift_storeEnumTagMultiPayload();
          sub_24F67955C();
          sub_24F67A898(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          v110 = v358;
          sub_24F924E28();
          sub_24E601704(v262, &qword_27F24BC90);
          sub_24E601704(v253, &qword_27F21AFB8);
          sub_24E601704(v250, &qword_27F213FB0);
          goto LABEL_90;
        }

        goto LABEL_88;
      }

LABEL_85:
      v215 = v264;
      v216 = v363;
      v129 = v292;
      sub_24F66F0C8(*(v363 + v264[14]), v292);
      v217 = (v216 + v215[11]);
      v219 = *v217;
      v218 = v217[1];
      v372[0] = v219;
      v372[1] = v218;
      sub_24E600AEC();
      v220 = sub_24F92C558();
      v222 = v221;
      v223 = (v216 + v215[12]);
      v225 = *v223;
      v224 = v223[1];
      v226 = swift_getKeyPath();
      v227 = v301;
      *(v129 + *(v301 + 28)) = v226;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
      swift_storeEnumTagMultiPayload();
      v228 = (v129 + *(v227 + 20));
      *v228 = v220;
      v228[1] = v222;
      v229 = (v129 + *(v227 + 24));
      *v229 = v225;
      v229[1] = v224;
      sub_24F67A0B8(v129, v303, type metadata accessor for AppEventCardConfiguration.HeadingStack);
      swift_storeEnumTagMultiPayload();
      sub_24F679730(&qword_27F24BCB8, type metadata accessor for AppEventCardConfiguration.HeadingStack);
      sub_24E74524C();

      v230 = v304;
      sub_24F924E28();
      sub_24E60169C(v230, v341, &qword_27F24BC80);
      swift_storeEnumTagMultiPayload();
      sub_24F679674();
      sub_24F679778();
      v231 = v342;
      sub_24F924E28();
      sub_24E601704(v230, &qword_27F24BC80);
      sub_24E60169C(v231, v352, &qword_27F24BC88);
      swift_storeEnumTagMultiPayload();
      sub_24F6795E8();
      sub_24F679A34();
      v232 = v354;
      sub_24F924E28();
      sub_24E601704(v231, &qword_27F24BC88);
      sub_24E60169C(v232, v359, &qword_27F24BC90);
      swift_storeEnumTagMultiPayload();
      sub_24F67955C();
      sub_24F67A898(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
      v110 = v358;
      sub_24F924E28();
      sub_24E601704(v232, &qword_27F24BC90);
      v133 = type metadata accessor for AppEventCardConfiguration.HeadingStack;
      goto LABEL_86;
    }

    if (a3)
    {
      if (a3 == 1)
      {
        sub_24F4E9E44(v344, v76);
        sub_24F67A17C(v76, v79, type metadata accessor for CardLayoutMetrics);
      }

      else
      {
        if (qword_27F2112F8 != -1)
        {
          swift_once();
        }

        v94 = __swift_project_value_buffer(v73, qword_27F39E628);
        sub_24F67A0B8(v94, v79, type metadata accessor for CardLayoutMetrics);
      }

      goto LABEL_35;
    }

LABEL_25:
    if (qword_27F211300 != -1)
    {
      swift_once();
    }

    v92 = __swift_project_value_buffer(v73, qword_27F39E640);
    sub_24F67A0B8(v92, v79, type metadata accessor for CardLayoutMetrics);
    goto LABEL_35;
  }

  if (a3)
  {
    v85 = sub_24F92CE08();

    if (v85)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_12:
  v86 = v361;
  v87 = *(v362 + 56);

  return v87(v86, 1, 1, v64);
}

uint64_t sub_24F673CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v3 - 8);
  v77 = &v72 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v72 - v6;
  v80 = type metadata accessor for GSKVideo();
  v8 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v76 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v73 = &v72 - v11;
  v12 = sub_24F9289E8();
  v78 = *(v12 - 8);
  v79 = v12;
  MEMORY[0x28223BE20](v12);
  v75 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v72 = &v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8);
  MEMORY[0x28223BE20](v16 - 8);
  v74 = &v72 - v17;
  v18 = type metadata accessor for MixedMediaItem.ContentType();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v72 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v72 - v26;
  v28 = a1 + *(type metadata accessor for AppEventCard(0) + 32);
  v29 = type metadata accessor for CommonCardAttributes(0);
  v30 = (v28 + v29[9]);
  if (*v30)
  {
    v31 = v30[1];
    if (*(v31 + 16))
    {
      v32 = sub_24E76DCB8(0);
      if (v33)
      {
        sub_24F67A0B8(*(v31 + 56) + *(v19 + 72) * v32, v24, type metadata accessor for MixedMediaItem.ContentType);
        sub_24F67A17C(v24, v27, type metadata accessor for MixedMediaItem.ContentType);
        sub_24F67A0B8(v27, v21, type metadata accessor for MixedMediaItem.ContentType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v34 = v73;
          sub_24F67A17C(v21, v73, type metadata accessor for GSKVideo);
          v35 = sub_24F9289A8();
          v36 = v74;
          if (v35)
          {
            v37 = qword_27F20FEE0;
            v38 = v35;
            if (v37 != -1)
            {
              v70 = v38;
              swift_once();
              v38 = v70;
            }

            v39 = v38;
            v40 = sub_24F926BD8();
            ColorGrouping.colorGroup(for:)(v40);

            sub_24F67A058(v34, type metadata accessor for GSKVideo);
LABEL_25:
            sub_24F67A058(v27, type metadata accessor for MixedMediaItem.ContentType);
            return sub_24E6009C8(v36, v81, &qword_27F2190D8);
          }

          sub_24F67A058(v34, type metadata accessor for GSKVideo);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F219128);

          v59 = v78;
          v58 = v79;
          v60 = v72;
          (*(v78 + 32))(v72, v21, v79);
          v61 = sub_24F9289A8();
          v36 = v74;
          if (v61)
          {
            v62 = qword_27F20FEE0;
            v63 = v61;
            if (v62 != -1)
            {
              v71 = v63;
              swift_once();
              v63 = v71;
            }

            v64 = v63;
            v65 = sub_24F926BD8();
            ColorGrouping.colorGroup(for:)(v65);

            (*(v59 + 8))(v60, v58);
            goto LABEL_25;
          }

          (*(v59 + 8))(v60, v58);
        }

        sub_24F67A058(v27, type metadata accessor for MixedMediaItem.ContentType);
        v67 = type metadata accessor for ColorGroup();
        (*(*(v67 - 8) + 56))(v36, 1, 1, v67);
        return sub_24E6009C8(v36, v81, &qword_27F2190D8);
      }
    }
  }

  sub_24E60169C(v28 + v29[8], v7, &qword_27F213FB8);
  if ((*(v8 + 48))(v7, 1, v80) == 1)
  {
    sub_24E601704(v7, &qword_27F213FB8);
    v41 = v77;
    sub_24E60169C(v28 + v29[7], v77, &qword_27F213FB0);
    v43 = v78;
    v42 = v79;
    if ((*(v78 + 48))(v41, 1, v79) == 1)
    {
      sub_24E601704(v41, &qword_27F213FB0);
LABEL_27:
      v66 = type metadata accessor for ColorGroup();
      return (*(*(v66 - 8) + 56))(v81, 1, 1, v66);
    }

    v52 = v75;
    (*(v43 + 32))(v75, v41, v42);
    v53 = sub_24F9289A8();
    if (!v53)
    {
      (*(v43 + 8))(v52, v42);
      goto LABEL_27;
    }

    v54 = qword_27F20FEE0;
    v55 = v53;
    if (v54 != -1)
    {
      v69 = v55;
      swift_once();
      v55 = v69;
    }

    v56 = v55;
    v57 = sub_24F926BD8();
    ColorGrouping.colorGroup(for:)(v57);

    return (*(v43 + 8))(v52, v42);
  }

  else
  {
    v44 = v7;
    v45 = v76;
    sub_24F67A17C(v44, v76, type metadata accessor for GSKVideo);
    v46 = sub_24F9289A8();
    if (!v46)
    {
      sub_24F67A058(v45, type metadata accessor for GSKVideo);
      goto LABEL_27;
    }

    v47 = qword_27F20FEE0;
    v48 = v46;
    if (v47 != -1)
    {
      v68 = v48;
      swift_once();
      v48 = v68;
    }

    v49 = v48;
    v50 = sub_24F926BD8();
    ColorGrouping.colorGroup(for:)(v50);

    return sub_24F67A058(v45, type metadata accessor for GSKVideo);
  }
}

uint64_t sub_24F674610@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v118 = a3;
  v132 = a1;
  v131 = a4;
  v4 = a2;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BD58);
  MEMORY[0x28223BE20](v120);
  v122 = &v114 - v5;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B98);
  MEMORY[0x28223BE20](v121);
  v114 = &v114 - v6;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BD60);
  MEMORY[0x28223BE20](v115);
  v116 = (&v114 - v7);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BD10);
  MEMORY[0x28223BE20](v119);
  v117 = &v114 - v8;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BCF0);
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v123 = &v114 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F320);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v114 - v11;
  v13 = type metadata accessor for GSKAppEventFormattedDate(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BCE0);
  MEMORY[0x28223BE20](v130);
  v124 = &v114 - v17;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BD68);
  MEMORY[0x28223BE20](v127);
  v129 = &v114 - v18;
  v19 = type metadata accessor for HeroCardGameHeadingView();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E50);
  MEMORY[0x28223BE20](v128);
  v24 = &v114 - v23;
  v25 = type metadata accessor for AppEventCard(0);
  v26 = v25;
  if (v4 != 5)
  {
    sub_24F66F0C8(*(v132 + *(v25 + 56)), v12);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_24E601704(v12, &qword_27F21F320);
      v39 = v124;
      (*(v125 + 56))(v124, 1, 1, v126);
LABEL_17:
      sub_24E60169C(v39, v129, &qword_27F24BCE0);
      swift_storeEnumTagMultiPayload();
      sub_24E7179AC();
      sub_24F67A898(&qword_27F24BCD8, &qword_27F24BCE0, &unk_24FA18C60, sub_24F6798EC);
      sub_24F924E28();
      v53 = v39;
      v54 = &qword_27F24BCE0;
      return sub_24E601704(v53, v54);
    }

    sub_24F67A17C(v12, v16, type metadata accessor for GSKAppEventFormattedDate);
    v40 = &v16[*(v13 + 20)];
    v41 = *(v40 + 1);
    if (v41)
    {
      v42 = *v40;
      if (v16[*(v13 + 24)] == 1)
      {
        v135 = v42;
        v136 = v41;
        sub_24E600AEC();
        v43 = sub_24F92C528();
        v44 = sub_24F6789D0(v43);
        v46 = v45;
        v48 = v47;
        v50 = v49;

        v51 = v116;
        *v116 = v44;
        v51[1] = v46;
        *(v51 + 16) = v48 & 1;
        v51[3] = v50;
        swift_storeEnumTagMultiPayload();
        sub_24E63C774();
        v52 = v117;
        sub_24F924E28();
      }

      else
      {
        v135 = v42;
        v136 = v41;
        sub_24E600AEC();
        v133 = sub_24F92C558();
        v134 = v84;
        v85 = sub_24F925E18();
        v87 = v86;
        v89 = v88;
        v132 = type metadata accessor for CardLayoutMetrics(0);
        v90 = v118;
        v91 = sub_24F925C98();
        v93 = v92;
        v95 = v94;
        sub_24E600B40(v85, v87, v89 & 1);

        LODWORD(v135) = sub_24F9251C8();
        v96 = sub_24F925C58();
        v98 = v97;
        v100 = v99;
        v102 = v101;
        sub_24E600B40(v91, v93, v95 & 1);

        v103 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8) + 36);
        v104 = *MEMORY[0x277CE13B8];
        v105 = sub_24F927748();
        v106 = v114;
        (*(*(v105 - 8) + 104))(&v114[v103], v104, v105);
        *v106 = v96;
        *(v106 + 8) = v98;
        *(v106 + 16) = v100 & 1;
        *(v106 + 24) = v102;
        v107 = *(v90 + *(v132 + 76));
        KeyPath = swift_getKeyPath();
        v109 = v106 + *(v121 + 36);
        *v109 = KeyPath;
        *(v109 + 8) = v107;
        *(v109 + 16) = 0;
        sub_24E60169C(v106, v116, &qword_27F214B98);
        swift_storeEnumTagMultiPayload();
        sub_24E63C774();
        v52 = v117;
        sub_24F924E28();
        sub_24E601704(v106, &qword_27F214B98);
      }

      v83 = &qword_27F24BD10;
      sub_24E60169C(v52, v122, &qword_27F24BD10);
    }

    else
    {
      v55 = sub_24F3F2614();
      if (!v56)
      {
        v111 = 1;
        v110 = v123;
        goto LABEL_16;
      }

      v135 = v55;
      v136 = v56;
      sub_24E600AEC();
      v57 = sub_24F92C558();
      v59 = v58;

      v133 = v57;
      v134 = v59;
      v60 = sub_24F925E18();
      v62 = v61;
      v64 = v63;
      v132 = type metadata accessor for CardLayoutMetrics(0);
      v65 = sub_24F925C98();
      v67 = v66;
      v69 = v68;
      sub_24E600B40(v60, v62, v64 & 1);

      LODWORD(v135) = sub_24F9251C8();
      v70 = sub_24F925C58();
      v72 = v71;
      v74 = v73;
      v76 = v75;
      sub_24E600B40(v65, v67, v69 & 1);

      v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8) + 36);
      v78 = *MEMORY[0x277CE13B8];
      v79 = sub_24F927748();
      v52 = v114;
      (*(*(v79 - 8) + 104))(&v114[v77], v78, v79);
      *v52 = v70;
      *(v52 + 8) = v72;
      *(v52 + 16) = v74 & 1;
      *(v52 + 24) = v76;
      v80 = *(v118 + *(v132 + 76));
      v81 = swift_getKeyPath();
      v82 = v52 + *(v121 + 36);
      *v82 = v81;
      *(v82 + 8) = v80;
      *(v82 + 16) = 0;
      v83 = &qword_27F214B98;
      sub_24E60169C(v52, v122, &qword_27F214B98);
    }

    swift_storeEnumTagMultiPayload();
    sub_24F6799A8();
    sub_24E63C774();
    v110 = v123;
    sub_24F924E28();
    sub_24E601704(v52, v83);
    v111 = 0;
LABEL_16:
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BD00);
    (*(*(v112 - 8) + 56))(v110, v111, 1, v112);
    v39 = v124;
    sub_24E6009C8(v110, v124, &qword_27F24BCF0);
    (*(v125 + 56))(v39, 0, 1, v126);
    sub_24F67A058(v16, type metadata accessor for GSKAppEventFormattedDate);
    goto LABEL_17;
  }

  v27 = v132 + *(v25 + 32);
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = *(v27 + 8);
    v126 = "eOfferButtonPresenter";
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    *(inited + 32) = 0x656D614E656D6167;
    *(inited + 40) = 0xE800000000000000;
    v31 = (v132 + *(v26 + 64));
    v32 = v31[1];
    *(inited + 48) = *v31;
    *(inited + 56) = v32;
    *(inited + 64) = 0x786966667573;
    *(inited + 72) = 0xE600000000000000;
    v135 = v29;
    v136 = v28;
    sub_24E600AEC();

    *(inited + 80) = sub_24F92C558();
    *(inited + 88) = v33;
    v34 = sub_24E6086DC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90);
    swift_arrayDestroy();
    v35._object = (v126 | 0x8000000000000000);
    v35._countAndFlagsBits = 0xD00000000000001ELL;
    v36 = localizedString(_:with:)(v35, v34);

    v37 = *(v26 + 68);
    v38 = sub_24F9289E8();
    (*(*(v38 - 8) + 16))(v22, v132 + v37, v38);
    *&v22[*(v19 + 20)] = v36;
    sub_24F67A17C(v22, v24, type metadata accessor for HeroCardGameHeadingView);
    (*(v20 + 56))(v24, 0, 1, v19);
  }

  else
  {
    (*(v20 + 56))(v24, 1, 1, v19);
  }

  sub_24E60169C(v24, v129, &qword_27F219E50);
  swift_storeEnumTagMultiPayload();
  sub_24E7179AC();
  sub_24F67A898(&qword_27F24BCD8, &qword_27F24BCE0, &unk_24FA18C60, sub_24F6798EC);
  sub_24F924E28();
  v53 = v24;
  v54 = &qword_27F219E50;
  return sub_24E601704(v53, v54);
}