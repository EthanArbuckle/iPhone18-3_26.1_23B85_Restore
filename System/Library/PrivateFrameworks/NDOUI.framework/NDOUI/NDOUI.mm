uint64_t sub_25ADDB990@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_25ADDB9D8(uint64_t a1)
{
  v2 = sub_25ADDBBF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADDBA14(uint64_t a1)
{
  v2 = sub_25ADDBBF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDODWSupportModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12498, &qword_25AE11660);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADDBBF0();
  sub_25AE10E8C();
  return (*(v3 + 8))(v6, v2);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_25ADDBBF0()
{
  result = qword_27FA124A0;
  if (!qword_27FA124A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA124A0);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_25ADDBD68()
{
  result = qword_27FA124A8;
  if (!qword_27FA124A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA124A8);
  }

  return result;
}

uint64_t sub_25ADDBDE4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12498, &qword_25AE11660);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADDBBF0();
  sub_25AE10E8C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t getEnumTagSinglePayload for NDODWSupportModel(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for NDODWSupportModel(_WORD *result, int a2, int a3)
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

unint64_t sub_25ADDBFF8()
{
  result = qword_27FA12510;
  if (!qword_27FA12510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12510);
  }

  return result;
}

unint64_t sub_25ADDC050()
{
  result = qword_27FA12518;
  if (!qword_27FA12518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12518);
  }

  return result;
}

uint64_t sub_25ADDC0AC(uint64_t a1, id *a2)
{
  result = sub_25AE10AAC();
  *a2 = 0;
  return result;
}

uint64_t sub_25ADDC124(uint64_t a1, id *a2)
{
  v3 = sub_25AE10ABC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25ADDC1A4@<X0>(uint64_t *a1@<X8>)
{
  sub_25AE10ACC();
  v2 = sub_25AE10A9C();

  *a1 = v2;
  return result;
}

uint64_t sub_25ADDC1E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25AE10A9C();

  *a2 = v5;
  return result;
}

uint64_t sub_25ADDC230@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_25AE10ACC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void type metadata accessor for ASCAppState()
{
  if (!qword_27FA12520)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FA12520);
    }
  }
}

uint64_t sub_25ADDC2AC(uint64_t a1)
{
  v2 = sub_25ADDC56C(&qword_27FA12540);
  v3 = sub_25ADDC56C(&qword_27FA12548);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_25ADDC3AC()
{
  v1 = *v0;
  v2 = sub_25AE10ACC();
  v3 = MEMORY[0x25F857530](v2);

  return v3;
}

uint64_t sub_25ADDC3E8()
{
  v1 = *v0;
  sub_25AE10ACC();
  sub_25AE10B2C();
}

uint64_t sub_25ADDC43C()
{
  v1 = *v0;
  sub_25AE10ACC();
  sub_25AE10E3C();
  sub_25AE10B2C();
  v2 = sub_25AE10E6C();

  return v2;
}

uint64_t sub_25ADDC4B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_25AE10ACC();
  v6 = v5;
  if (v4 == sub_25AE10ACC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25AE10E2C();
  }

  return v9 & 1;
}

uint64_t sub_25ADDC56C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASCAppState();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25ADDC614(void *a1)
{
  v2 = v1;
  if (qword_27FA12490 != -1)
  {
    swift_once();
  }

  v4 = sub_25AE102DC();
  __swift_project_value_buffer(v4, qword_27FA1CFB0);
  v5 = sub_25AE102BC();
  v6 = sub_25AE10C4C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_25ADDA000, v5, v6, "Finished Request", v7, 2u);
    MEMORY[0x25F857CD0](v7, -1, -1);
  }

  v8 = OBJC_IVAR____TtCV5NDOUIP33_6BC22319AD482AF5176C41E8E708800424SupportAppStoreComponent19AppStoreCoordinator_originalAppOffer;
  if (!*(v2 + OBJC_IVAR____TtCV5NDOUIP33_6BC22319AD482AF5176C41E8E708800424SupportAppStoreComponent19AppStoreCoordinator_originalAppOffer))
  {
    v9 = [a1 lockup];
    v10 = [v9 offer];

    v11 = *(v2 + v8);
    *(v2 + v8) = v10;
    swift_unknownObjectRelease();
  }

  v12 = [a1 lockup];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 lockupWithOffer_];

    if (v14)
    {
      v15 = [objc_opt_self() sharedMetrics];
      v16 = sub_25AE10A9C();
      v18 = sub_25AE10A9C();
      v17 = [v15 recordCampaignToken:v16 providerToken:v18 withLockup:v14];
    }
  }
}

void sub_25ADDC92C(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_25AE1029C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_25AE10A8C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  if (qword_27FA12490 != -1)
  {
    swift_once();
  }

  v10 = sub_25AE102DC();
  __swift_project_value_buffer(v10, qword_27FA1CFB0);
  v11 = a2;
  v12 = sub_25AE102BC();
  v13 = sub_25AE10C4C();

  if (os_log_type_enabled(v12, v13))
  {
    v47 = v3;
    v14 = a1;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    type metadata accessor for ASCAppState();
    v17 = v11;
    v18 = sub_25AE10B0C();
    v20 = sub_25ADDDA94(v18, v19, aBlock);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_25ADDA000, v12, v13, "appStateDidChange with state: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x25F857CD0](v16, -1, -1);
    v21 = v15;
    a1 = v14;
    v3 = v47;
    MEMORY[0x25F857CD0](v21, -1, -1);
  }

  v22 = *MEMORY[0x277CEC1A0];
  v23 = sub_25AE10ACC();
  v25 = v24;
  if (v23 == sub_25AE10ACC() && v25 == v26)
  {
LABEL_12:

    goto LABEL_13;
  }

  v28 = sub_25AE10E2C();

  if ((v28 & 1) == 0)
  {
    v29 = *MEMORY[0x277CEC1A8];
    v30 = sub_25AE10ACC();
    v32 = v31;
    if (v30 != sub_25AE10ACC() || v32 != v33)
    {
      v46 = sub_25AE10E2C();

      if ((v46 & 1) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:
  v34 = objc_opt_self();
  sub_25AE10A7C();
  sub_25AE1028C();
  sub_25AE10AFC();
  v35 = sub_25AE10A9C();

  v36 = [v34 textMetadataWithTitle:v35 subtitle:0];

  v37 = swift_allocObject();
  *(v37 + 16) = v3;
  v38 = objc_allocWithZone(MEMORY[0x277CEC278]);
  aBlock[4] = sub_25ADDE4BC;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25ADDDA50;
  aBlock[3] = &block_descriptor;
  v39 = _Block_copy(aBlock);
  v40 = v36;
  v41 = v3;

  v42 = [v38 initWithMetadata:v40 action:v39];
  _Block_release(v39);

  v43 = [a1 lockup];
  if (v43)
  {
    v44 = v43;
    v45 = [v43 lockupWithOffer_];
  }

  else
  {
    v45 = 0;
  }

  [a1 setLockup_];
}

void sub_25ADDCDEC()
{
  if (qword_27FA12490 != -1)
  {
    swift_once();
  }

  v0 = sub_25AE102DC();
  __swift_project_value_buffer(v0, qword_27FA1CFB0);
  v1 = sub_25AE102BC();
  v2 = sub_25AE10C4C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_25ADDA000, v1, v2, "appStateDidChange with action", v3, 2u);
    MEMORY[0x25F857CD0](v3, -1, -1);
  }

  sub_25ADDCED0();
}

void sub_25ADDCED0()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126A8, &qword_25AE11B90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v3 = &v36 - v2;
  v4 = sub_25AE101BC();
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  v6 = (MEMORY[0x28223BE20])();
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v36 - v7;
  v8 = sub_25AE1016C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v0[OBJC_IVAR____TtCV5NDOUIP33_6BC22319AD482AF5176C41E8E708800424SupportAppStoreComponent19AppStoreCoordinator_supportAppUrl];
  v14 = *&v0[OBJC_IVAR____TtCV5NDOUIP33_6BC22319AD482AF5176C41E8E708800424SupportAppStoreComponent19AppStoreCoordinator_supportAppUrl];
  v15 = *&v0[OBJC_IVAR____TtCV5NDOUIP33_6BC22319AD482AF5176C41E8E708800424SupportAppStoreComponent19AppStoreCoordinator_supportAppUrl + 8];
  v39 = v0;
  aBlock = v14;
  v41 = v15;

  sub_25AE1015C();
  sub_25ADDE53C();
  sub_25AE10CAC();
  v17 = v16;
  (*(v9 + 8))(v12, v8);

  if (v17)
  {
    sub_25AE101AC();

    v18 = v38;
    if ((*(v38 + 48))(v3, 1, v4) != 1)
    {
      v28 = *(v18 + 32);
      v29 = v37;
      v28(v37, v3, v4);
      v30 = [objc_opt_self() sharedApplication];
      v31 = sub_25AE1018C();
      v32 = v36;
      (*(v18 + 16))(v36, v29, v4);
      v33 = (*(v18 + 80) + 16) & ~*(v18 + 80);
      v34 = swift_allocObject();
      v28((v34 + v33), v32, v4);
      v44 = sub_25ADDE618;
      v45 = v34;
      aBlock = MEMORY[0x277D85DD0];
      v41 = 1107296256;
      v42 = sub_25ADDD684;
      v43 = &block_descriptor_13;
      v35 = _Block_copy(&aBlock);

      [v30 openURL:v31 withCompletionHandler:v35];
      _Block_release(v35);

      (*(v18 + 8))(v29, v4);
      return;
    }

    sub_25ADDE8CC(v3, &qword_27FA126A8, &qword_25AE11B90);
  }

  if (qword_27FA12490 != -1)
  {
    swift_once();
  }

  v19 = sub_25AE102DC();
  __swift_project_value_buffer(v19, qword_27FA1CFB0);
  v20 = v39;
  v21 = sub_25AE102BC();
  v22 = sub_25AE10C5C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock = v24;
    *v23 = 136315138;
    v26 = *v13;
    v25 = v13[1];

    v27 = sub_25ADDDA94(v26, v25, &aBlock);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_25ADDA000, v21, v22, "Could not convert to URL: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x25F857CD0](v24, -1, -1);
    MEMORY[0x25F857CD0](v23, -1, -1);
  }
}

void sub_25ADDD448(char a1, uint64_t a2)
{
  v4 = sub_25AE101BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    if (qword_27FA12490 != -1)
    {
      swift_once();
    }

    v9 = sub_25AE102DC();
    __swift_project_value_buffer(v9, qword_27FA1CFB0);
    (*(v5 + 16))(v8, a2, v4);
    v10 = sub_25AE102BC();
    v11 = sub_25AE10C5C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      v14 = sub_25AE1017C();
      v16 = v15;
      (*(v5 + 8))(v8, v4);
      v17 = sub_25ADDDA94(v14, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_25ADDA000, v10, v11, "Could not open URL: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x25F857CD0](v13, -1, -1);
      MEMORY[0x25F857CD0](v12, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }
}

uint64_t sub_25ADDD684(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_25ADDD708()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25ADDD7B8()
{
  result = qword_27FA12688;
  if (!qword_27FA12688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12688);
  }

  return result;
}

id sub_25ADDD82C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for SupportAppStoreComponent.AppStoreCoordinator();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtCV5NDOUIP33_6BC22319AD482AF5176C41E8E708800424SupportAppStoreComponent19AppStoreCoordinator_originalAppOffer] = 0;
  v4 = &v3[OBJC_IVAR____TtCV5NDOUIP33_6BC22319AD482AF5176C41E8E708800424SupportAppStoreComponent19AppStoreCoordinator_supportAppUrl];
  *v4 = 0xD000000000000032;
  *(v4 + 1) = 0x800000025AE1E970;
  v6.receiver = v3;
  v6.super_class = v2;
  result = objc_msgSendSuper2(&v6, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_25ADDD90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25ADDD9FC();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_25ADDD970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25ADDD9FC();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_25ADDD9D4()
{
  sub_25ADDD9FC();
  sub_25AE105DC();
  __break(1u);
}

unint64_t sub_25ADDD9FC()
{
  result = qword_27FA12690;
  if (!qword_27FA12690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12690);
  }

  return result;
}

uint64_t sub_25ADDDA50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_25ADDDA94(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25ADDDB60(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25ADDE4DC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_25ADDDB60(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25ADDDC6C(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_25AE10CEC();
    a6 = v11;
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

uint64_t sub_25ADDDC6C(uint64_t a1, unint64_t a2)
{
  v4 = sub_25ADDDCB8(a1, a2);
  sub_25ADDDDE8(&unk_286C34B38);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25ADDDCB8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25ADDDED4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25AE10CEC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25AE10B4C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25ADDDED4(v10, 0);
        result = sub_25AE10CBC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25ADDDDE8(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_25ADDDF48(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25ADDDED4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126A0, &qword_25AE11B88);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25ADDDF48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126A0, &qword_25AE11B88);
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

id sub_25ADDE03C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CEC298]) initWithFrame_];
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_25AE10ACC();
    v5 = v4;

    if (v3 == 0xD000000000000010 && 0x800000025AE1E9B0 == v5)
    {
    }

    else
    {
      v7 = sub_25AE10E2C();

      if ((v7 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v8 = [objc_opt_self() primaryTheme];
    v9 = [v8 titleBackgroundColor];
    v10 = objc_opt_self();
    v11 = [v10 orangeColor];
    v12 = [v10 orangeColor];
    v13 = [v12 colorWithAlphaComponent_];

    v14 = [v8 subtitleTextColor];
    v15 = [v10 orangeColor];
    v16 = [v8 progressColor];
    v17 = [objc_allocWithZone(MEMORY[0x277CEC2B8]) initWithTitleBackgroundColor:v9 titleTextColor:v11 titleTextDisabledColor:v13 subtitleTextColor:v14 iconTintColor:v15 progressColor:v16];

    [v0 setOfferTheme_];
  }

LABEL_10:
  [v0 setLockupSize_];
  v18 = objc_opt_self();
  v19 = v0;
  v20 = [v18 clearColor];
  [v19 setBackgroundColor_];

  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12698, &qword_25AE11B80);
  sub_25AE106DC();
  [v19 setDelegate_];

  v21 = objc_allocWithZone(MEMORY[0x277CEC258]);
  v22 = sub_25AE10A9C();
  v23 = [v21 initWithStringValue_];

  v24 = *MEMORY[0x277CEC230];
  v25 = *MEMORY[0x277CEC218];
  v26 = sub_25AE10A9C();
  v27 = [objc_opt_self() _requestWithID_kind_context_clientID_];

  [v19 setRequest_];
  return v19;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25ADDE484()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25ADDE4DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_25ADDE53C()
{
  result = qword_27FA126B0;
  if (!qword_27FA126B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA126B0);
  }

  return result;
}

uint64_t sub_25ADDE590()
{
  v1 = sub_25AE101BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_25ADDE618(char a1)
{
  v3 = *(sub_25AE101BC() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_25ADDD448(a1, v4);
}

void sub_25ADDE770(void *a1)
{
  if (qword_27FA12490 != -1)
  {
    swift_once();
  }

  v2 = sub_25AE102DC();
  __swift_project_value_buffer(v2, qword_27FA1CFB0);
  v3 = a1;
  oslog = sub_25AE102BC();
  v4 = sub_25AE10C5C();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_25ADDA000, oslog, v4, "Failed with error: %@", v5, 0xCu);
    sub_25ADDE8CC(v6, &qword_27FA126B8, &qword_25AE11B98);
    MEMORY[0x25F857CD0](v6, -1, -1);
    MEMORY[0x25F857CD0](v5, -1, -1);
  }
}

uint64_t sub_25ADDE8CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t NDOLocalDeviceWarrantyResponse.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NDOLocalDeviceWarrantyResponse() + 20);

  return sub_25ADDE9D0(v3, a1);
}

uint64_t type metadata accessor for NDOLocalDeviceWarrantyResponse()
{
  result = qword_27FA12718;
  if (!qword_27FA12718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25ADDE9D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C0, &qword_25AE11BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NDOLocalDeviceWarrantyResponse.init(sections:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for NDOLocalDeviceWarrantyResponse() + 20);

  return sub_25ADDEA8C(a2, v4);
}

uint64_t sub_25ADDEA8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C0, &qword_25AE11BB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25ADDEB14()
{
  v1 = *v0;
  sub_25AE10E3C();
  MEMORY[0x25F8577E0](v1);
  return sub_25AE10E6C();
}

uint64_t sub_25ADDEB88()
{
  v1 = *v0;
  sub_25AE10E3C();
  MEMORY[0x25F8577E0](v1);
  return sub_25AE10E6C();
}

uint64_t sub_25ADDEBCC()
{
  if (*v0)
  {
    result = 1702125924;
  }

  else
  {
    result = 0x736E6F6974636573;
  }

  *v0;
  return result;
}

uint64_t sub_25ADDEC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000;
  if (v6 || (sub_25AE10E2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25AE10E2C();

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

uint64_t sub_25ADDECE8(uint64_t a1)
{
  v2 = sub_25ADDEF60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADDED24(uint64_t a1)
{
  v2 = sub_25ADDEF60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOLocalDeviceWarrantyResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C8, &qword_25AE11BB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADDEF60();
  sub_25AE10E8C();
  v14 = *v3;
  v13[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126D8, &qword_25AE11BC0);
  sub_25ADDF374(&qword_27FA126E0, sub_25ADDEFFC);
  sub_25AE10DFC();
  if (!v2)
  {
    v11 = *(type metadata accessor for NDOLocalDeviceWarrantyResponse() + 20);
    v13[6] = 1;
    sub_25AE1024C();
    sub_25ADDF440(&qword_27FA126F0);
    sub_25AE10DBC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_25ADDEF60()
{
  result = qword_27FA126D0;
  if (!qword_27FA126D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA126D0);
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

unint64_t sub_25ADDEFFC()
{
  result = qword_27FA126E8;
  if (!qword_27FA126E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA126E8);
  }

  return result;
}

uint64_t NDOLocalDeviceWarrantyResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C0, &qword_25AE11BB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126F8, &qword_25AE11BC8);
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for NDOLocalDeviceWarrantyResponse();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADDEF60();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v12;
  v17 = v15;
  v18 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126D8, &qword_25AE11BC0);
  v27 = 0;
  sub_25ADDF374(&qword_27FA12700, sub_25ADDF3EC);
  v19 = v25;
  sub_25AE10D7C();
  v21 = v28;
  *v17 = v28;
  sub_25AE1024C();
  v26 = 1;
  sub_25ADDF440(&qword_27FA12710);
  sub_25AE10D3C();
  (*(v18 + 8))(v11, v19);
  sub_25ADDEA8C(v7, v17 + *(v22 + 20));
  sub_25ADDF484(v17, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_25ADDF4E8(v17);
}

uint64_t sub_25ADDF374(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA126D8, &qword_25AE11BC0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25ADDF3EC()
{
  result = qword_27FA12708;
  if (!qword_27FA12708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12708);
  }

  return result;
}

uint64_t sub_25ADDF440(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_25AE1024C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25ADDF484(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOLocalDeviceWarrantyResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25ADDF4E8(uint64_t a1)
{
  v2 = type metadata accessor for NDOLocalDeviceWarrantyResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25ADDF588(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C0, &qword_25AE11BB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_25ADDF658(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C0, &qword_25AE11BB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25ADDF708()
{
  sub_25ADDF78C();
  if (v0 <= 0x3F)
  {
    sub_25ADDF7DC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25ADDF78C()
{
  if (!qword_27FA12728)
  {
    v0 = sub_25AE10BDC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA12728);
    }
  }
}

void sub_25ADDF7DC()
{
  if (!qword_27FA12730)
  {
    sub_25AE1024C();
    v0 = sub_25AE10C7C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA12730);
    }
  }
}

uint64_t getEnumTagSinglePayload for NDOLocalDeviceWarrantyResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NDOLocalDeviceWarrantyResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25ADDF9A8()
{
  result = qword_27FA12738;
  if (!qword_27FA12738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12738);
  }

  return result;
}

unint64_t sub_25ADDFA00()
{
  result = qword_27FA12740;
  if (!qword_27FA12740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12740);
  }

  return result;
}

unint64_t sub_25ADDFA58()
{
  result = qword_27FA12748;
  if (!qword_27FA12748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12748);
  }

  return result;
}

uint64_t NDODWCoverageModel.logoUrl.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NDODWCoverageModel.coverageLabel.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t NDODWCoverageModel.coverageExpirationLabel.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t NDODWCoverageModel.productName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t NDODWCoverageModel.serialNumberLabel.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t NDODWCoverageModel.warrantyTitle.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

void __swiftcall NDODWCoverageModel.init(logoUrl:coverageLabel:coverageExpirationLabel:productName:serialNumberLabel:warrantyTitle:warrantyOverview:links:)(NDOUI::NDODWCoverageModel *__return_ptr retstr, Swift::String_optional logoUrl, Swift::String coverageLabel, Swift::String coverageExpirationLabel, Swift::String productName, Swift::String serialNumberLabel, Swift::String warrantyTitle, Swift::OpaquePointer warrantyOverview, Swift::OpaquePointer links)
{
  retstr->logoUrl = logoUrl;
  retstr->coverageLabel = coverageLabel;
  retstr->coverageExpirationLabel = coverageExpirationLabel;
  retstr->productName = productName;
  retstr->serialNumberLabel = serialNumberLabel;
  retstr->warrantyTitle = warrantyTitle;
  retstr->warrantyOverview = warrantyOverview;
  retstr->links = links;
}

unint64_t sub_25ADDFC20()
{
  v1 = *v0;
  v2 = 0x6C72556F676F6CLL;
  v3 = 0x736B6E696CLL;
  if (v1 == 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0x79746E6172726177;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000017;
  if (v1 != 2)
  {
    v5 = 0x4E746375646F7270;
  }

  if (*v0)
  {
    v2 = 0x6567617265766F63;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25ADDFD3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25ADE44CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25ADDFD70(uint64_t a1)
{
  v2 = sub_25ADE3400();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADDFDAC(uint64_t a1)
{
  v2 = sub_25ADE3400();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDODWCoverageModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12750, &qword_25AE11D80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v29 = v1[3];
  v30 = v10;
  v11 = v1[4];
  v27 = v1[5];
  v28 = v11;
  v12 = v1[6];
  v25 = v1[7];
  v26 = v12;
  v13 = v1[8];
  v23 = v1[9];
  v24 = v13;
  v14 = v1[11];
  v21 = v1[10];
  v22 = v14;
  v15 = v1[12];
  v19 = v1[13];
  v20 = v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADE3400();
  sub_25AE10E8C();
  LOBYTE(v33) = 0;
  v17 = v31;
  sub_25AE10DAC();
  if (!v17)
  {
    LOBYTE(v33) = 1;
    sub_25AE10DCC();
    LOBYTE(v33) = 2;
    sub_25AE10DCC();
    LOBYTE(v33) = 3;
    sub_25AE10DCC();
    LOBYTE(v33) = 4;
    sub_25AE10DCC();
    LOBYTE(v33) = 5;
    sub_25AE10DCC();
    v33 = v20;
    v32 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12760, &qword_25AE11D88);
    sub_25ADE34A8(&qword_27FA12768);
    sub_25AE10DFC();
    v33 = v19;
    v32 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12770, &qword_25AE11D90);
    sub_25ADE3514(&qword_27FA12778, sub_25ADE3454);
    sub_25AE10DFC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t NDODWCoverageModel.hash(into:)(uint64_t a1)
{
  v3 = v1[3];
  v18 = v1[2];
  v19 = v1[7];
  v4 = v1[9];
  v5 = v1[12];
  v6 = v1[13];
  if (v1[1])
  {
    v17 = v1[6];
    v7 = v1[8];
    v8 = v1[11];
    v9 = v1[10];
    v10 = v1[13];
    v11 = *v1;
    sub_25AE10E5C();
    v6 = v10;
    sub_25AE10B2C();
  }

  else
  {
    sub_25AE10E5C();
  }

  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  MEMORY[0x25F8577E0](*(v5 + 16));
  v12 = *(v5 + 16);
  if (v12)
  {
    v13 = (v5 + 40);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;

      sub_25AE10B2C();

      v13 += 2;
      --v12;
    }

    while (v12);
  }

  return sub_25ADE2C8C(a1, v6);
}

uint64_t NDODWCoverageModel.hashValue.getter()
{
  sub_25AE10E3C();
  NDODWCoverageModel.hash(into:)(v1);
  return sub_25AE10E6C();
}

uint64_t NDODWCoverageModel.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12788, &qword_25AE11D98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADE3400();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v60[0]) = 0;
  v12 = sub_25AE10D2C();
  v14 = v13;
  LOBYTE(v60[0]) = 1;
  v15 = sub_25AE10D4C();
  v52 = v16;
  v50 = v15;
  LOBYTE(v60[0]) = 2;
  v49 = sub_25AE10D4C();
  v51 = v17;
  LOBYTE(v60[0]) = 3;
  v45 = sub_25AE10D4C();
  v47 = v18;
  LOBYTE(v60[0]) = 4;
  v19 = sub_25AE10D4C();
  v46 = v20;
  v42 = v19;
  LOBYTE(v60[0]) = 5;
  v44 = 0;
  v21 = sub_25AE10D4C();
  v48 = 0;
  v22 = v21;
  v43 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12760, &qword_25AE11D88);
  LOBYTE(v53) = 6;
  sub_25ADE34A8(&qword_27FA12790);
  v24 = v48;
  sub_25AE10D7C();
  v48 = v24;
  if (v24)
  {
    (*(v6 + 8))(v9, v5);
    v25 = 0;
    v26 = v44;
  }

  else
  {
    v41 = v60[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12770, &qword_25AE11D90);
    v61 = 7;
    sub_25ADE3514(&qword_27FA12798, sub_25ADE358C);
    v27 = v48;
    sub_25AE10D7C();
    v48 = v27;
    if (!v27)
    {
      (*(v6 + 8))(v9, v5);
      v44 = v62;
      *&v53 = v12;
      *(&v53 + 1) = v14;
      *&v54 = v50;
      v28 = v22;
      v40 = v22;
      v29 = v52;
      *(&v54 + 1) = v52;
      *&v55 = v49;
      v30 = v51;
      *(&v55 + 1) = v51;
      *&v56 = v45;
      v31 = v47;
      *(&v56 + 1) = v47;
      v32 = v46;
      *&v57 = v42;
      *(&v57 + 1) = v46;
      *&v58 = v28;
      v33 = v43;
      *(&v58 + 1) = v43;
      *&v59 = v41;
      *(&v59 + 1) = v62;
      v34 = v54;
      *a2 = v53;
      a2[1] = v34;
      v35 = v55;
      v36 = v56;
      v37 = v59;
      a2[5] = v58;
      a2[6] = v37;
      v38 = v57;
      a2[3] = v36;
      a2[4] = v38;
      a2[2] = v35;
      sub_25ADE35E0(&v53, v60);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v60[0] = v12;
      v60[1] = v14;
      v60[2] = v50;
      v60[3] = v29;
      v60[4] = v49;
      v60[5] = v30;
      v60[6] = v45;
      v60[7] = v31;
      v60[8] = v42;
      v60[9] = v32;
      v60[10] = v40;
      v60[11] = v33;
      v60[12] = v41;
      v60[13] = v44;
      return sub_25ADE3618(v60);
    }

    (*(v6 + 8))(v9, v5);
    v25 = 1;
    v26 = v44;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);

  if (!v26)
  {
  }

  if (v25)
  {
  }

  return result;
}

uint64_t sub_25ADE09B8()
{
  sub_25AE10E3C();
  NDODWCoverageModel.hash(into:)(v1);
  return sub_25AE10E6C();
}

uint64_t sub_25ADE09FC()
{
  sub_25AE10E3C();
  NDODWCoverageModel.hash(into:)(v1);
  return sub_25AE10E6C();
}

uint64_t NDODWCoverageModel.CoverageLink.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NDODWCoverageModel.CoverageLink.action.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  v8 = v1[8];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v7;
  a1[5] = v6;
  a1[6] = v8;
}

void __swiftcall NDODWCoverageModel.CoverageLink.init(label:action:)(NDOUI::NDODWCoverageModel::CoverageLink *__return_ptr retstr, Swift::String label, NDOUI::NDODWCoverageModel::CoverageLink::Action *action)
{
  title = action->title;
  countAndFlagsBits = action->subTitle._countAndFlagsBits;
  v5 = action->footer._countAndFlagsBits;
  object = action->footer._object;
  retstr->label = label;
  retstr->action.title = title;
  retstr->action.subTitle._countAndFlagsBits = countAndFlagsBits;
  *&retstr->action.subTitle._object = *&action->subTitle._object;
  retstr->action.footer._countAndFlagsBits = v5;
  retstr->action.footer._object = object;
}

uint64_t sub_25ADE0B38()
{
  if (*v0)
  {
    result = 0x6E6F69746361;
  }

  else
  {
    result = 0x6C6562616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_25ADE0B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_25AE10E2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25AE10E2C();

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

uint64_t sub_25ADE0C40(uint64_t a1)
{
  v2 = sub_25ADE3648();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADE0C7C(uint64_t a1)
{
  v2 = sub_25ADE3648();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDODWCoverageModel.CoverageLink.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA127A8, &qword_25AE11DA0);
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[3];
  v19 = v1[2];
  v20 = v10;
  v11 = v1[4];
  v13 = v1[6];
  v12 = v1[7];
  v21 = v1[5];
  v22 = v13;
  v17 = v12;
  v18 = v11;
  v23 = v1[8];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADE3648();
  sub_25AE10E8C();
  LOBYTE(v25) = 0;
  sub_25AE10DCC();
  if (!v2)
  {
    v25 = v19;
    v26 = v20;
    v27 = v18;
    v28 = v21;
    v29 = v22;
    v30 = v17;
    v31 = v23;
    v32 = 1;
    sub_25ADE369C();

    sub_25AE10DFC();
  }

  return (*(v24 + 8))(v7, v4);
}

uint64_t NDODWCoverageModel.CoverageLink.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v7 = *(v0 + 1);
  v3 = v0[4];
  v4 = v0[7];
  v5 = v0[8];
  sub_25AE10B2C();
  v8 = *(v0 + 5);
  return NDODWCoverageModel.CoverageLink.Action.hash(into:)();
}

uint64_t NDODWCoverageModel.CoverageLink.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  v10 = *(v8 + 16);
  MEMORY[0x25F8577E0](v10);
  if (v10)
  {
    v11 = (v8 + 56);
    do
    {
      v12 = *(v11 - 3);
      v13 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;

      sub_25AE10B2C();
      sub_25AE10B2C();

      v11 += 4;
      --v10;
    }

    while (v10);
  }

  sub_25AE10B2C();
  return sub_25AE10E6C();
}

uint64_t NDODWCoverageModel.CoverageLink.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA127C0, &qword_25AE11DA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADE3648();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v29[0]) = 0;
  v11 = sub_25AE10D4C();
  v13 = v12;
  v14 = v11;
  v38 = 1;
  sub_25ADE36F0();
  sub_25AE10D7C();
  (*(v6 + 8))(v9, v5);
  v15 = *(&v34 + 1);
  v26 = v34;
  v16 = v35;
  v25 = v36;
  v17 = v37;
  v24 = *(&v36 + 1);
  *&v27[0] = v14;
  *(&v27[0] + 1) = v13;
  v27[1] = v34;
  v27[2] = v35;
  v27[3] = v36;
  v28 = v37;
  v18 = v27[0];
  v19 = v34;
  v20 = v35;
  v21 = v36;
  *(a2 + 64) = v37;
  *(a2 + 32) = v20;
  *(a2 + 48) = v21;
  *a2 = v18;
  *(a2 + 16) = v19;
  sub_25ADE3744(v27, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v29[0] = v14;
  v29[1] = v13;
  v29[2] = v26;
  v29[3] = v15;
  v30 = v16;
  v31 = v25;
  v32 = v24;
  v33 = v17;
  return sub_25ADE377C(v29);
}

uint64_t sub_25ADE12F8()
{
  v1 = *v0;
  v2 = v0[1];
  v7 = *(v0 + 1);
  v3 = v0[4];
  v4 = v0[7];
  v5 = v0[8];
  sub_25AE10B2C();
  v8 = *(v0 + 5);
  return NDODWCoverageModel.CoverageLink.Action.hash(into:)();
}

uint64_t sub_25ADE136C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25ADE2E44(v11, v7);
  sub_25AE10B2C();
  return sub_25AE10E6C();
}

uint64_t NDODWCoverageModel.CoverageLink.Action.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NDODWCoverageModel.CoverageLink.Action.subTitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t NDODWCoverageModel.CoverageLink.Action.footer.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

void __swiftcall NDODWCoverageModel.CoverageLink.Action.init(title:subTitle:benefits:footer:)(NDOUI::NDODWCoverageModel::CoverageLink::Action *__return_ptr retstr, Swift::String title, Swift::String subTitle, Swift::OpaquePointer benefits, Swift::String footer)
{
  retstr->title = title;
  retstr->subTitle = subTitle;
  retstr->benefits = benefits;
  retstr->footer = footer;
}

uint64_t sub_25ADE1500()
{
  v1 = 0x656C746974;
  v2 = 0x73746966656E6562;
  if (*v0 != 2)
  {
    v2 = 0x7265746F6F66;
  }

  if (*v0)
  {
    v1 = 0x656C746954627573;
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

uint64_t sub_25ADE1574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25ADE477C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25ADE15A8(uint64_t a1)
{
  v2 = sub_25ADE37AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADE15E4(uint64_t a1)
{
  v2 = sub_25ADE37AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDODWCoverageModel.CoverageLink.Action.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA127D0, &qword_25AE11DB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v18 = v1[3];
  v19 = v10;
  v11 = v1[4];
  v16[2] = v1[5];
  v17 = v11;
  v16[1] = v1[6];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADE37AC();
  sub_25AE10E8C();
  v25 = 0;
  v13 = v20;
  sub_25AE10DCC();
  if (!v13)
  {
    v15 = v17;
    v24 = 1;
    sub_25AE10DCC();
    v21 = v15;
    v23 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA127E0, &qword_25AE11DB8);
    sub_25ADE3800(&qword_27FA127E8, sub_25ADE3878);
    sub_25AE10DFC();
    v22 = 3;
    sub_25AE10DCC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t NDODWCoverageModel.CoverageLink.Action.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  sub_25AE10B2C();
  sub_25AE10B2C();
  v8 = *(v6 + 16);
  MEMORY[0x25F8577E0](v8);
  if (v8)
  {
    v9 = (v6 + 56);
    do
    {
      v10 = *(v9 - 3);
      v11 = *(v9 - 2);
      v12 = *(v9 - 1);
      v13 = *v9;

      sub_25AE10B2C();
      sub_25AE10B2C();

      v9 += 4;
      --v8;
    }

    while (v8);
  }

  return sub_25AE10B2C();
}

uint64_t NDODWCoverageModel.CoverageLink.Action.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  v8 = *(v6 + 16);
  MEMORY[0x25F8577E0](v8);
  if (v8)
  {
    v9 = (v6 + 56);
    do
    {
      v10 = *(v9 - 3);
      v11 = *(v9 - 2);
      v12 = *(v9 - 1);
      v13 = *v9;

      sub_25AE10B2C();
      sub_25AE10B2C();

      v9 += 4;
      --v8;
    }

    while (v8);
  }

  sub_25AE10B2C();
  return sub_25AE10E6C();
}

uint64_t NDODWCoverageModel.CoverageLink.Action.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA127F8, &qword_25AE11DC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADE37AC();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = 0;
  v11 = sub_25AE10D4C();
  v28 = v12;
  v32 = 1;
  v13 = sub_25AE10D4C();
  v27 = v14;
  v26 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA127E0, &qword_25AE11DB8);
  v31 = 2;
  sub_25ADE3800(&qword_27FA12800, sub_25ADE38CC);
  sub_25AE10D7C();
  v25 = v29;
  v30 = 3;
  v15 = sub_25AE10D4C();
  v18 = v17;
  v19 = *(v6 + 8);
  v24 = v15;
  v19(v9, v5);
  v21 = v27;
  v20 = v28;
  *a2 = v11;
  a2[1] = v20;
  v22 = v25;
  a2[2] = v26;
  a2[3] = v21;
  v23 = v24;
  a2[4] = v22;
  a2[5] = v23;
  a2[6] = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25ADE1DEC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25ADE2E44(v9, v5);
  sub_25AE10B2C();
  return sub_25AE10E6C();
}

uint64_t sub_25ADE1E88(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25ADE2E44(a1, v7);

  return sub_25AE10B2C();
}

uint64_t sub_25ADE1F04()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25ADE2E44(v9, v5);
  sub_25AE10B2C();
  return sub_25AE10E6C();
}

uint64_t NDODWCoverageModel.CoverageLink.Action.Benefits.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NDODWCoverageModel.CoverageLink.Action.Benefits.value.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

NDOUI::NDODWCoverageModel::CoverageLink::Action::Benefits __swiftcall NDODWCoverageModel.CoverageLink.Action.Benefits.init(label:value:)(Swift::String label, Swift::String value)
{
  *v2 = label;
  v2[1] = value;
  result.value = value;
  result.label = label;
  return result;
}

uint64_t static NDODWCoverageModel.CoverageLink.Action.Benefits.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25AE10E2C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_25AE10E2C();
    }
  }

  return result;
}

uint64_t sub_25ADE20E0()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_25ADE210C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_25AE10E2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25AE10E2C();

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

uint64_t sub_25ADE21E0(uint64_t a1)
{
  v2 = sub_25ADE3920();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADE221C(uint64_t a1)
{
  v2 = sub_25ADE3920();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDODWCoverageModel.CoverageLink.Action.Benefits.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12810, &qword_25AE11DC8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADE3920();
  sub_25AE10E8C();
  v16 = 0;
  v12 = v14[3];
  sub_25AE10DCC();
  if (!v12)
  {
    v15 = 1;
    sub_25AE10DCC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t NDODWCoverageModel.CoverageLink.Action.Benefits.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25AE10B2C();

  return sub_25AE10B2C();
}

uint64_t NDODWCoverageModel.CoverageLink.Action.Benefits.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  return sub_25AE10E6C();
}

uint64_t NDODWCoverageModel.CoverageLink.Action.Benefits.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12820, &qword_25AE11DD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADE3920();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_25AE10D4C();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_25AE10D4C();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25ADE26A4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  return sub_25AE10E6C();
}

uint64_t sub_25ADE270C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25AE10B2C();

  return sub_25AE10B2C();
}

uint64_t sub_25ADE275C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  return sub_25AE10E6C();
}

uint64_t sub_25ADE27F0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25AE10E2C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_25AE10E2C();
    }
  }

  return result;
}

uint64_t sub_25ADE2894(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x25F8577E0](v4);
  if (v4)
  {
    v6 = (a2 + 80);
    do
    {
      v13 = *(v6 - 6);
      v12 = *(v6 - 5);
      v14 = *(v6 - 4);
      v15 = *(v6 - 3);
      v16 = *(v6 - 2);
      v17 = *(v6 - 1);
      v18 = *v6;

      sub_25ADE48D8(v14, v15, v16, v17, v18);
      sub_25ADE48D8(v14, v15, v16, v17, v18);
      sub_25AE10B2C();
      if (v18 > 3)
      {
        if (v18 > 5)
        {
          if (v18 != 6)
          {
            MEMORY[0x25F8577E0](7);

            goto LABEL_7;
          }

          MEMORY[0x25F8577E0](6);
          sub_25AE10E5C();
          if (v15)
          {
            sub_25AE10B2C();
          }

          sub_25ADF2CA0(a1, v16);
          sub_25ADF2CA0(a1, v17);

          v7 = v14;
          v8 = v15;
          v9 = v16;
          v10 = v17;
          v11 = 6;
        }

        else if (v18 == 4)
        {
          MEMORY[0x25F8577E0](4);
          sub_25AE10E5C();
          if (v15)
          {
            sub_25AE10B2C();
          }

          sub_25ADF2CA0(a1, v16);
          sub_25ADF2CA0(a1, v17);

          v7 = v14;
          v8 = v15;
          v9 = v16;
          v10 = v17;
          v11 = 4;
        }

        else
        {
          MEMORY[0x25F8577E0](5);
          sub_25AE10E5C();
          if (v15)
          {
            sub_25AE10B2C();
          }

          sub_25ADF2CA0(a1, v16);
          sub_25ADF2CA0(a1, v17);

          v7 = v14;
          v8 = v15;
          v9 = v16;
          v10 = v17;
          v11 = 5;
        }
      }

      else if (v18 > 1)
      {
        if (v18 == 2)
        {
          MEMORY[0x25F8577E0](2);
          sub_25AE10E5C();
          if (v15)
          {
            sub_25AE10B2C();
          }

          sub_25ADF2CA0(a1, v16);
          sub_25ADF2CA0(a1, v17);

          v7 = v14;
          v8 = v15;
          v9 = v16;
          v10 = v17;
          v11 = 2;
        }

        else
        {
          MEMORY[0x25F8577E0](3);
          sub_25AE10E5C();
          if (v15)
          {
            sub_25AE10B2C();
          }

          sub_25ADF2CA0(a1, v16);
          sub_25ADF2CA0(a1, v17);

          v7 = v14;
          v8 = v15;
          v9 = v16;
          v10 = v17;
          v11 = 3;
        }
      }

      else if (v18)
      {
        MEMORY[0x25F8577E0](1);
        sub_25AE10E5C();
        if (v15)
        {
          sub_25AE10B2C();
        }

        sub_25ADF2CA0(a1, v16);
        sub_25ADF2CA0(a1, v17);

        v7 = v14;
        v8 = v15;
        v9 = v16;
        v10 = v17;
        v11 = 1;
      }

      else
      {
        MEMORY[0x25F8577E0](0);
        sub_25AE10E5C();
        if (v15)
        {
          sub_25AE10B2C();
        }

        sub_25ADF2CA0(a1, v16);
        sub_25ADF2CA0(a1, v17);

        v7 = v14;
        v8 = v15;
        v9 = v16;
        v10 = v17;
        v11 = 0;
      }

      sub_25ADE4930(v7, v8, v9, v10, v11);
LABEL_7:
      v6 += 56;
      result = sub_25ADE4930(v14, v15, v16, v17, v18);
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_25ADE2C8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x25F8577E0](v3);
  v22 = v3;
  if (v3)
  {
    v5 = 0;
    v21 = a2 + 32;
    do
    {
      v6 = (v21 + 72 * v5);
      v8 = *v6;
      v7 = v6[1];
      v10 = v6[2];
      v9 = v6[3];
      v11 = v6[4];
      v12 = v6[5];
      v13 = v6[6];
      v23 = v6[7];
      v14 = v6[8];

      sub_25AE10B2C();

      sub_25AE10B2C();
      sub_25AE10B2C();
      MEMORY[0x25F8577E0](*(v13 + 16));
      v15 = *(v13 + 16);
      if (v15)
      {
        v16 = (v13 + 56);
        do
        {
          v17 = *(v16 - 3);
          v18 = *(v16 - 2);
          v20 = *(v16 - 1);
          v19 = *v16;

          sub_25AE10B2C();
          sub_25AE10B2C();

          v16 += 4;
          --v15;
        }

        while (v15);
      }

      ++v5;
      sub_25AE10B2C();

      result = swift_bridgeObjectRelease_n();
    }

    while (v5 != v22);
  }

  return result;
}

uint64_t sub_25ADE2E44(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x25F8577E0](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;

      sub_25AE10B2C();
      sub_25AE10B2C();

      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _s5NDOUI18NDODWCoverageModelV12CoverageLinkV6ActionV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_25AE10E2C() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_25AE10E2C() & 1) == 0 || (sub_25ADEEC48(v3, v10) & 1) == 0)
  {
    return 0;
  }

  if (v5 == v9 && v6 == v11)
  {
    return 1;
  }

  return sub_25AE10E2C();
}

uint64_t _s5NDOUI18NDODWCoverageModelV12CoverageLinkV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v22 = a1[6];
  v23 = a1[5];
  v5 = a1[7];
  v24 = a1[8];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v10 = a2[7];
  v21 = a2[8];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    goto LABEL_4;
  }

  v12 = a1[3];
  v13 = a1[7];
  v14 = a2[2];
  v15 = a2[4];
  v16 = a2[7];
  v17 = sub_25AE10E2C();
  v10 = v16;
  v8 = v15;
  v6 = v14;
  v5 = v13;
  v3 = v12;
  v18 = 0;
  if (v17)
  {
LABEL_4:
    v26[0] = v2;
    v26[1] = v3;
    v26[2] = v4;
    v26[3] = v23;
    v26[4] = v22;
    v26[5] = v5;
    v26[6] = v24;
    v25[0] = v6;
    v25[1] = v7;
    v25[2] = v8;
    v25[3] = v9;
    v25[4] = v11;
    v25[5] = v10;
    v25[6] = v21;
    v20 = _s5NDOUI18NDODWCoverageModelV12CoverageLinkV6ActionV2eeoiySbAG_AGtFZ_0(v26, v25);

    v18 = v20;
  }

  return v18 & 1;
}

uint64_t _s5NDOUI18NDODWCoverageModelV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v42 = a1[8];
  v40 = a1[9];
  v38 = a1[10];
  v36 = a1[11];
  v34 = a1[12];
  v32 = a1[13];
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  v14 = a2[5];
  v15 = a2[6];
  v16 = a2[7];
  v41 = a2[8];
  v39 = a2[9];
  v37 = a2[10];
  v35 = a2[11];
  v33 = a2[12];
  v31 = a2[13];
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v10)
    {
      v29 = a1[4];
      v30 = a1[5];
      v17 = a2[7];
      v18 = a2[6];
      v19 = a1[7];
      v20 = a1[6];
      v21 = a2[5];
      v22 = sub_25AE10E2C();
      v14 = v21;
      v7 = v20;
      v9 = v19;
      v15 = v18;
      v16 = v17;
      v6 = v29;
      v8 = v30;
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v4 != v11 || v5 != v12)
  {
    v23 = v7;
    v24 = v14;
    v25 = sub_25AE10E2C();
    v14 = v24;
    v7 = v23;
    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  if (v6 != v13 || v8 != v14)
  {
    v26 = v7;
    v27 = sub_25AE10E2C();
    v7 = v26;
    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  if ((v7 != v15 || v9 != v16) && (sub_25AE10E2C() & 1) == 0 || (v42 != v41 || v40 != v39) && (sub_25AE10E2C() & 1) == 0 || (v38 != v37 || v36 != v35) && (sub_25AE10E2C() & 1) == 0 || (sub_25ADEE9AC(v34, v33) & 1) == 0)
  {
    return 0;
  }

  return sub_25ADEEA3C(v32, v31);
}

unint64_t sub_25ADE3400()
{
  result = qword_27FA12758;
  if (!qword_27FA12758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12758);
  }

  return result;
}

unint64_t sub_25ADE3454()
{
  result = qword_27FA12780;
  if (!qword_27FA12780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12780);
  }

  return result;
}

uint64_t sub_25ADE34A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA12760, &qword_25AE11D88);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25ADE3514(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA12770, &qword_25AE11D90);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25ADE358C()
{
  result = qword_27FA127A0;
  if (!qword_27FA127A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA127A0);
  }

  return result;
}

unint64_t sub_25ADE3648()
{
  result = qword_27FA127B0;
  if (!qword_27FA127B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA127B0);
  }

  return result;
}

unint64_t sub_25ADE369C()
{
  result = qword_27FA127B8;
  if (!qword_27FA127B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA127B8);
  }

  return result;
}

unint64_t sub_25ADE36F0()
{
  result = qword_27FA127C8;
  if (!qword_27FA127C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA127C8);
  }

  return result;
}

unint64_t sub_25ADE37AC()
{
  result = qword_27FA127D8;
  if (!qword_27FA127D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA127D8);
  }

  return result;
}

uint64_t sub_25ADE3800(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA127E0, &qword_25AE11DB8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25ADE3878()
{
  result = qword_27FA127F0;
  if (!qword_27FA127F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA127F0);
  }

  return result;
}

unint64_t sub_25ADE38CC()
{
  result = qword_27FA12808;
  if (!qword_27FA12808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12808);
  }

  return result;
}

unint64_t sub_25ADE3920()
{
  result = qword_27FA12818;
  if (!qword_27FA12818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12818);
  }

  return result;
}

unint64_t sub_25ADE3978()
{
  result = qword_27FA12828;
  if (!qword_27FA12828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12828);
  }

  return result;
}

unint64_t sub_25ADE39D0()
{
  result = qword_27FA12830;
  if (!qword_27FA12830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12830);
  }

  return result;
}

unint64_t sub_25ADE3A28()
{
  result = qword_27FA12838;
  if (!qword_27FA12838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12838);
  }

  return result;
}

unint64_t sub_25ADE3A80()
{
  result = qword_27FA12840;
  if (!qword_27FA12840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12840);
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_25ADE3AF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_25ADE3B40(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25ADE3BD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_25ADE3C18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_25ADE3C94(uint64_t a1, int a2)
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

uint64_t sub_25ADE3CDC(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25ADE3D44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25ADE3D8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NDODWCoverageModel.CoverageLink.Action.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NDODWCoverageModel.CoverageLink.Action.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NDODWCoverageModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NDODWCoverageModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25ADE40B0()
{
  result = qword_27FA12848;
  if (!qword_27FA12848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12848);
  }

  return result;
}

unint64_t sub_25ADE4108()
{
  result = qword_27FA12850;
  if (!qword_27FA12850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12850);
  }

  return result;
}

unint64_t sub_25ADE4160()
{
  result = qword_27FA12858;
  if (!qword_27FA12858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12858);
  }

  return result;
}

unint64_t sub_25ADE41B8()
{
  result = qword_27FA12860;
  if (!qword_27FA12860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12860);
  }

  return result;
}

unint64_t sub_25ADE4210()
{
  result = qword_27FA12868;
  if (!qword_27FA12868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12868);
  }

  return result;
}

unint64_t sub_25ADE4268()
{
  result = qword_27FA12870;
  if (!qword_27FA12870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12870);
  }

  return result;
}

unint64_t sub_25ADE42C0()
{
  result = qword_27FA12878;
  if (!qword_27FA12878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12878);
  }

  return result;
}

unint64_t sub_25ADE4318()
{
  result = qword_27FA12880;
  if (!qword_27FA12880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12880);
  }

  return result;
}

unint64_t sub_25ADE4370()
{
  result = qword_27FA12888;
  if (!qword_27FA12888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12888);
  }

  return result;
}

unint64_t sub_25ADE43C8()
{
  result = qword_27FA12890;
  if (!qword_27FA12890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12890);
  }

  return result;
}

unint64_t sub_25ADE4420()
{
  result = qword_27FA12898;
  if (!qword_27FA12898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12898);
  }

  return result;
}

unint64_t sub_25ADE4478()
{
  result = qword_27FA128A0;
  if (!qword_27FA128A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA128A0);
  }

  return result;
}

uint64_t sub_25ADE44CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C72556F676F6CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617265766F63 && a2 == 0xED00006C6562614CLL || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000025AE1EA50 == a2 || (sub_25AE10E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E746375646F7270 && a2 == 0xEB00000000656D61 || (sub_25AE10E2C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025AE1EA70 == a2 || (sub_25AE10E2C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x79746E6172726177 && a2 == 0xED0000656C746954 || (sub_25AE10E2C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025AE1EA90 == a2 || (sub_25AE10E2C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x736B6E696CLL && a2 == 0xE500000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_25AE10E2C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_25ADE477C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746954627573 && a2 == 0xE800000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73746966656E6562 && a2 == 0xE800000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_25AE10E2C();

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

uint64_t sub_25ADE48D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 6u)
  {
  }

  return result;
}

uint64_t sub_25ADE4930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 6u)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5NDOUI10NDOUIStateO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_25ADE49E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25ADE4A2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_25ADE4A70(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t NDOLocalCoverageCentralResponse.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NDOLocalCoverageCentralResponse() + 20);

  return sub_25ADDE9D0(v3, a1);
}

uint64_t type metadata accessor for NDOLocalCoverageCentralResponse()
{
  result = qword_27FA128E8;
  if (!qword_27FA128E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NDOLocalCoverageCentralResponse.init(sections:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for NDOLocalCoverageCentralResponse() + 20);

  return sub_25ADDEA8C(a2, v4);
}

uint64_t sub_25ADE4B7C(uint64_t a1)
{
  v2 = sub_25ADE4DF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADE4BB8(uint64_t a1)
{
  v2 = sub_25ADE4DF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOLocalCoverageCentralResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA128A8, &qword_25AE126F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADE4DF4();
  sub_25AE10E8C();
  v14 = *v3;
  v13[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA128B8, &qword_25AE12700);
  sub_25ADE51C0(&qword_27FA128C0, sub_25ADE4E48);
  sub_25AE10DFC();
  if (!v2)
  {
    v11 = *(type metadata accessor for NDOLocalCoverageCentralResponse() + 20);
    v13[6] = 1;
    sub_25AE1024C();
    sub_25ADDF440(&qword_27FA126F0);
    sub_25AE10DBC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_25ADE4DF4()
{
  result = qword_27FA128B0;
  if (!qword_27FA128B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA128B0);
  }

  return result;
}

unint64_t sub_25ADE4E48()
{
  result = qword_27FA128C8;
  if (!qword_27FA128C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA128C8);
  }

  return result;
}

uint64_t NDOLocalCoverageCentralResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C0, &qword_25AE11BB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA128D0, &qword_25AE12708);
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for NDOLocalCoverageCentralResponse();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADE4DF4();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v12;
  v17 = v15;
  v18 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA128B8, &qword_25AE12700);
  v27 = 0;
  sub_25ADE51C0(&qword_27FA128D8, sub_25ADE5238);
  v19 = v25;
  sub_25AE10D7C();
  v21 = v28;
  *v17 = v28;
  sub_25AE1024C();
  v26 = 1;
  sub_25ADDF440(&qword_27FA12710);
  sub_25AE10D3C();
  (*(v18 + 8))(v11, v19);
  sub_25ADDEA8C(v7, v17 + *(v22 + 20));
  sub_25ADE528C(v17, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_25ADE52F0(v17);
}

uint64_t sub_25ADE51C0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA128B8, &qword_25AE12700);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25ADE5238()
{
  result = qword_27FA128E0;
  if (!qword_27FA128E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA128E0);
  }

  return result;
}

uint64_t sub_25ADE528C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOLocalCoverageCentralResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25ADE52F0(uint64_t a1)
{
  v2 = type metadata accessor for NDOLocalCoverageCentralResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25ADE5390(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C0, &qword_25AE11BB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_25ADE5460(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126C0, &qword_25AE11BB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25ADE5510()
{
  sub_25ADE5594();
  if (v0 <= 0x3F)
  {
    sub_25ADDF7DC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25ADE5594()
{
  if (!qword_27FA128F8)
  {
    v0 = sub_25AE10BDC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA128F8);
    }
  }
}

unint64_t sub_25ADE55F8()
{
  result = qword_27FA12900;
  if (!qword_27FA12900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12900);
  }

  return result;
}

unint64_t sub_25ADE5650()
{
  result = qword_27FA12908;
  if (!qword_27FA12908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12908);
  }

  return result;
}

unint64_t sub_25ADE56A8()
{
  result = qword_27FA12910;
  if (!qword_27FA12910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12910);
  }

  return result;
}

uint64_t sub_25ADE56FC(uint64_t a1)
{
  v2 = sub_25AE1038C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12920, &unk_25AE18BD0);
  sub_25AE1099C();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_25ADE5800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v60 = a4;
  v61 = a5;
  v62 = a2;
  v63 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12920, &unk_25AE18BD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v58 = &v57 - v10;
  v11 = sub_25AE1014C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v59 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_25AE1038C();
  v64 = *(v67 - 8);
  v15 = *(v64 + 64);
  MEMORY[0x28223BE20](v67);
  v66 = (&v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126A8, &qword_25AE11B90);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v57 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12928, &qword_25AE128D8);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v57 - v26;
  v68 = [objc_allocWithZone(MEMORY[0x277CCACD8]) init];
  v28 = sub_25AE101BC();
  v29 = *(*(v28 - 8) + 48);
  v30 = v29(a1, 1, v28);
  v65 = a1;
  if (v30 == 1)
  {
    (*(v12 + 56))(v27, 1, 1, v11);
    v31 = v12;
  }

  else
  {
    sub_25ADE82E0(a1, v20, &qword_27FA126A8, &qword_25AE11B90);
    result = v29(v20, 1, v28);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    sub_25AE1013C();
    v31 = v12;
    (*(v12 + 56))(v27, 0, 1, v11);
  }

  v33 = type metadata accessor for NDOCachedAsyncImage();
  v34 = v33[10];
  sub_25ADE83F0(v27, a6 + v34);
  v35 = [objc_opt_self() defaultSessionConfiguration];
  v36 = v68;
  [v35 setURLCache_];
  *(a6 + v33[11]) = [objc_opt_self() sessionWithConfiguration_];
  v37 = (a6 + v33[9]);
  v38 = v63;
  *v37 = v62;
  v37[1] = v38;
  v39 = *MEMORY[0x277CDD9B8];
  v63 = *(v64 + 104);
  v63(v66, v39, v67);
  sub_25AE1097C();
  v64 = a6;
  sub_25ADE82E0(a6 + v34, v25, &qword_27FA12928, &qword_25AE128D8);
  if ((*(v31 + 48))(v25, 1, v11) == 1)
  {

    sub_25ADDE8CC(v65, &qword_27FA126A8, &qword_25AE11B90);
    v40 = &qword_27FA12928;
    v41 = &qword_25AE128D8;
    v42 = v25;
  }

  else
  {
    v43 = v59;
    (*(v31 + 32))(v59, v25, v11);
    v44 = sub_25AE1012C();
    v45 = [v36 cachedResponseForRequest_];

    if (v45)
    {
      v62 = v11;
      v46 = [v45 data];
      v47 = sub_25AE101DC();
      v49 = v48;

      v50 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v51 = sub_25AE101CC();
      v52 = [v50 initWithData_];

      if (v52)
      {
        v53 = sub_25AE1090C();
        sub_25ADE8348(v47, v49);
        v55 = v66;
        v54 = v67;
        *v66 = v53;
        v63(v55, *MEMORY[0x277CDD9C8], v54);

        v56 = v58;
        sub_25AE1097C();

        (*(v31 + 8))(v59, v62);
        sub_25ADDE8CC(v65, &qword_27FA126A8, &qword_25AE11B90);
        return sub_25ADE8460(v56, v64);
      }

      sub_25ADE8348(v47, v49);
      (*(v31 + 8))(v59, v62);
    }

    else
    {
      (*(v31 + 8))(v43, v11);
    }

    v40 = &qword_27FA126A8;
    v41 = &qword_25AE11B90;
    v42 = v65;
  }

  return sub_25ADDE8CC(v42, v40, v41);
}

uint64_t NDOCachedAsyncImage.init<A, B>(url:content:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v26 = a4;
  v27 = a5;
  v28 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126A8, &qword_25AE11B90);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v25 - v18;
  sub_25ADE82E0(a1, &v25 - v18, &qword_27FA126A8, &qword_25AE11B90);
  v20 = swift_allocObject();
  *(v20 + 16) = a6;
  *(v20 + 24) = a7;
  *(v20 + 32) = a8;
  *(v20 + 40) = a10;
  *(v20 + 48) = a2;
  *(v20 + 56) = a3;
  v21 = v27;
  *(v20 + 64) = v26;
  *(v20 + 72) = v21;
  v22 = sub_25AE1061C();
  v29 = a8;
  v30 = a10;
  WitnessTable = swift_getWitnessTable();
  sub_25ADE5800(v19, sub_25ADE698C, v20, v22, WitnessTable, v28);
  return sub_25ADDE8CC(a1, &qword_27FA126A8, &qword_25AE11B90);
}

uint64_t sub_25ADE6028@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v34 = sub_25AE106CC();
  v31 = *(v34 - 8);
  v1 = *(v31 + 64);
  MEMORY[0x28223BE20](v34);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA129E8, &qword_25AE12968);
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA129F0, &qword_25AE12970);
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA129F8, &qword_25AE12978);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v30 - v14);
  v16 = sub_25AE1092C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_25AE1037C())
  {
    (*(v17 + 104))(v20, *MEMORY[0x277CE0FE0], v16);
    v21 = sub_25AE1093C();
    (*(v17 + 8))(v20, v16);
    *v15 = v21;
    swift_storeEnumTagMultiPayload();
    v22 = sub_25ADE8250(&qword_27FA12A00, &qword_27FA129E8, &qword_25AE12968);
    v23 = sub_25ADE8298(&qword_27FA12A08, MEMORY[0x277CDE330]);
    swift_retain_n();
    v36 = v4;
    v37 = v34;
    v38 = v22;
    v39 = v23;
    swift_getOpaqueTypeConformance2();
    sub_25AE1060C();
  }

  else
  {
    sub_25AE1030C();
    sub_25AE106BC();
    v25 = sub_25ADE8250(&qword_27FA12A00, &qword_27FA129E8, &qword_25AE12968);
    v26 = sub_25ADE8298(&qword_27FA12A08, MEMORY[0x277CDE330]);
    v27 = v34;
    sub_25AE1085C();
    (*(v31 + 8))(v3, v27);
    (*(v30 + 8))(v7, v4);
    v29 = v32;
    v28 = v33;
    (*(v32 + 16))(v15, v11, v33);
    swift_storeEnumTagMultiPayload();
    v36 = v4;
    v37 = v27;
    v38 = v25;
    v39 = v26;
    swift_getOpaqueTypeConformance2();
    sub_25AE1060C();
    return (*(v29 + 8))(v11, v28);
  }
}

uint64_t sub_25ADE6584@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(void, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v53 = a8;
  v54 = a9;
  v45 = a5;
  v46 = a4;
  v48 = a3;
  v49 = a2;
  v12 = *(a6 - 8);
  v13 = v12[8];
  v52 = a10;
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v45 - v18;
  v47 = *(v20 - 8);
  v21 = *(v47 + 64);
  v22 = MEMORY[0x28223BE20](v17);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v45 - v25;
  v27 = sub_25AE1061C();
  v50 = *(v27 - 8);
  v51 = v27;
  v28 = *(v50 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v45 - v29;
  v31 = sub_25AE1037C();
  if (v31)
  {
    v49(v31, v32);
    v33 = v12[2];
    v33(v19, v16, a6);
    v34 = v12[1];
    v34(v16, a6);
    v33(v16, v19, a6);
    v35 = v52;
    v36 = v53;
    sub_25ADE69C0(v16, a6);

    v34(v16, a6);
    v34(v19, a6);
  }

  else
  {
    v46(0, v32);
    v37 = v47;
    v38 = *(v47 + 16);
    v38(v26, v24, a7);
    v39 = *(v37 + 8);
    v39(v24, a7);
    v38(v24, v26, a7);
    v40 = v52;
    v36 = v53;
    sub_25ADE6AB8(v24, a6, a7);
    v41 = v24;
    v35 = v40;
    v39(v41, a7);
    v39(v26, a7);
  }

  v55 = v36;
  v56 = v35;
  v42 = v51;
  swift_getWitnessTable();
  v43 = v50;
  (*(v50 + 16))(v54, v30, v42);
  return (*(v43 + 8))(v30, v42);
}

uint64_t sub_25ADE694C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_25ADE69C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25AE105FC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_25AE1060C();
}

uint64_t sub_25ADE6AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25AE105FC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_25AE1060C();
}

uint64_t NDOCachedAsyncImage.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v53 = a2;
  v4 = sub_25AE10C2C();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v50 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 - 8);
  v46 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_25AE1038C();
  v10 = *(v44 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v44);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(a1 + 16);
  v49 = *(v42 - 8);
  v15 = *(v49 + 64);
  MEMORY[0x28223BE20](v12);
  v41 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA12918, &qword_25AE128B8);
  v17 = sub_25AE1039C();
  v48 = *(v17 - 8);
  v18 = *(v48 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v43 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v47 = &v40 - v21;
  v22 = v2 + *(a1 + 36);
  v23 = *v22;
  v24 = *(v22 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12920, &unk_25AE18BD0);
  sub_25AE1098C();
  v23(v14);
  (*(v10 + 8))(v14, v44);
  v25 = *(a1 + 40);
  v26 = v45;
  (*(v8 + 16))(v45, v2, a1);
  v27 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v28 = swift_allocObject();
  v29 = *(a1 + 24);
  v30 = v42;
  *(v28 + 16) = v42;
  *(v28 + 24) = v29;
  (*(v8 + 32))(v28 + v27, v26, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12928, &qword_25AE128D8);
  sub_25ADE7BEC();
  v31 = v50;
  sub_25AE10C1C();
  v32 = v43;
  v33 = v41;
  sub_25AE108AC();

  (*(v51 + 8))(v31, v52);
  (*(v49 + 8))(v33, v30);
  v34 = sub_25ADE8250(qword_27FA12940, &qword_27FA12918, &qword_25AE128B8);
  v54 = v29;
  v55 = v34;
  swift_getWitnessTable();
  v36 = v47;
  v35 = v48;
  v37 = *(v48 + 16);
  v37(v47, v32, v17);
  v38 = *(v35 + 8);
  v38(v32, v17);
  v37(v53, v36, v17);
  return (v38)(v36, v17);
}

uint64_t sub_25ADE70C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_25AE1038C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12928, &qword_25AE128D8) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = sub_25AE1014C();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  sub_25AE10C0C();
  v3[12] = sub_25AE10BFC();
  v12 = sub_25AE10BEC();
  v3[13] = v12;
  v3[14] = v11;

  return MEMORY[0x2822009F8](sub_25ADE7254, v12, v11);
}

uint64_t sub_25ADE7254()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];
  v7 = type metadata accessor for NDOCachedAsyncImage();
  v0[15] = v7;
  sub_25ADE82E0(v6 + *(v7 + 40), v3, &qword_27FA12928, &qword_25AE128D8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v8 = v0[12];
    v9 = v0[8];

    sub_25ADDE8CC(v9, &qword_27FA12928, &qword_25AE128D8);
    v10 = v0[11];
    v11 = v0[7];
    v12 = v0[8];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[2];
    (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
    v0[16] = *(v15 + *(v7 + 44));
    v16 = *(MEMORY[0x277CC9D18] + 4);
    v17 = swift_task_alloc();
    v0[17] = v17;
    *v17 = v0;
    v17[1] = sub_25ADE7404;
    v18 = v0[11];

    return MEMORY[0x28211ECF8](v18, 0);
  }
}

uint64_t sub_25ADE7404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 136);
  v7 = *v4;
  v5[18] = a1;
  v5[19] = a2;
  v5[20] = a3;

  if (v3)
  {

    v8 = v5[13];
    v9 = v5[14];
    v10 = sub_25ADE77B4;
  }

  else
  {
    v8 = v5[13];
    v9 = v5[14];
    v10 = sub_25ADE7530;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

void sub_25ADE7530()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v4 = sub_25AE101CC();
  v5 = [v3 initWithData_];

  if (v5)
  {
    v7 = v0[15];
    v6 = v0[16];
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[5];
    v11 = v0[2];
    *v8 = sub_25AE1090C();
    (*(v9 + 104))(v8, *MEMORY[0x277CDD9C8], v10);

    sub_25ADE56FC(v8);
    v12 = [v6 configuration];
    v13 = [v12 URLCache];

    if (!v13)
    {
      __break(1u);
      return;
    }

    v14 = v0[19];
    v15 = v0[20];
    v16 = v0[18];
    v18 = v0[11];
    v17 = v0[12];
    v19 = v0[10];
    v33 = v0[9];

    v20 = objc_allocWithZone(MEMORY[0x277CCA8F0]);
    v21 = v15;
    sub_25ADE839C(v16, v14);
    v22 = sub_25AE101CC();
    v23 = [v20 initWithResponse:v21 data:v22];

    sub_25ADE8348(v16, v14);
    v24 = sub_25AE1012C();
    [v13 storeCachedResponse:v23 forRequest:v24];

    sub_25ADE8348(v16, v14);

    (*(v19 + 8))(v18, v33);
  }

  else
  {
    v25 = v0[19];
    v26 = v0[20];
    v27 = v0[18];
    v28 = v0[12];
    (*(v0[10] + 8))(v0[11], v0[9]);

    sub_25ADE8348(v27, v25);
  }

  v29 = v0[11];
  v30 = v0[7];
  v31 = v0[8];

  v32 = v0[1];

  v32();
}

uint64_t sub_25ADE77B4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];

  (*(v4 + 8))(v2, v3);
  v5 = v0[11];
  v6 = v0[7];
  v7 = v0[8];

  v8 = v0[1];

  return v8();
}

uint64_t sub_25ADE7854()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for NDOCachedAsyncImage();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = v0 + v5;
  v8 = sub_25AE1038C();
  (*(*(v8 - 8) + 8))(v0 + v5, v8);
  v9 = *(v0 + v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12920, &unk_25AE18BD0) + 28));

  v10 = *(v0 + v5 + v3[9] + 8);

  v11 = v3[10];
  v12 = sub_25AE1014C();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v5 + v11, 1, v12))
  {
    (*(v13 + 8))(v7 + v11, v12);
  }

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_25ADE7A10()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(type metadata accessor for NDOCachedAsyncImage() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25ADE7AF8;

  return sub_25ADE70C8(v0 + v5, v2, v3);
}

uint64_t sub_25ADE7AF8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_25ADE7BEC()
{
  result = qword_27FA12930;
  if (!qword_27FA12930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA12928, &qword_25AE128D8);
    sub_25ADE8298(&qword_27FA12938, MEMORY[0x277CC8678]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12930);
  }

  return result;
}

void sub_25ADE7CF0()
{
  sub_25ADE80F4(319, &qword_27FA129C8, MEMORY[0x277CDD9D0], MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_25ADE80A4();
    if (v1 <= 0x3F)
    {
      sub_25ADE80F4(319, &qword_27FA129D8, MEMORY[0x277CC8678], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_25ADE8158();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_25ADE7E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12920, &unk_25AE18BD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12928, &qword_25AE128D8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_25ADE7F68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12920, &unk_25AE18BD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12928, &qword_25AE128D8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

unint64_t sub_25ADE80A4()
{
  result = qword_27FA129D0;
  if (!qword_27FA129D0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27FA129D0);
  }

  return result;
}

void sub_25ADE80F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_25ADE8158()
{
  result = qword_27FA129E0;
  if (!qword_27FA129E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA129E0);
  }

  return result;
}

uint64_t sub_25ADE81A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA12918, &qword_25AE128B8);
  sub_25AE1039C();
  sub_25ADE8250(qword_27FA12940, &qword_27FA12918, &qword_25AE128B8);
  return swift_getWitnessTable();
}

uint64_t sub_25ADE8250(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25ADE8298(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25ADE82E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25ADE8348(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25ADE839C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25ADE83F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12928, &qword_25AE128D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25ADE8460(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12920, &unk_25AE18BD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NDOLoadingMessage.init(lastLoadedDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25AE1024C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

__n128 NDOLoadingMessage.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_25AE101FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25AE1021C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25AE104FC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_25AE104EC();
  sub_25AE104DC();
  sub_25AE1020C();
  sub_25AE101EC();
  sub_25AE1023C();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  sub_25AE104CC();

  sub_25AE104DC();
  sub_25AE1050C();
  v14 = sub_25AE1081C();
  v16 = v15;
  v18 = v17;
  sub_25AE107DC();
  v19 = sub_25AE1080C();
  v21 = v20;
  LOBYTE(v3) = v22;
  v24 = v23;

  sub_25ADE88C4(v14, v16, v18 & 1);

  sub_25AE10A1C();
  sub_25AE103AC();
  v30 = v3 & 1;
  KeyPath = swift_getKeyPath();
  *a1 = v19;
  *(a1 + 8) = v21;
  *(a1 + 16) = v3 & 1;
  *(a1 + 24) = v24;
  v26 = v29[5];
  *(a1 + 96) = v29[4];
  *(a1 + 112) = v26;
  *(a1 + 128) = v29[6];
  v27 = v29[1];
  *(a1 + 32) = v29[0];
  *(a1 + 48) = v27;
  result = v29[3];
  *(a1 + 64) = v29[2];
  *(a1 + 80) = result;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = 0;
  return result;
}

uint64_t sub_25ADE88C4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25ADE88D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25AE103BC();
  *a1 = result;
  return result;
}

uint64_t sub_25ADE895C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25AE1024C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25ADE89DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25AE1024C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for NDOLoadingMessage()
{
  result = qword_27FA12A10;
  if (!qword_27FA12A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25ADE8A98()
{
  result = sub_25AE1024C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_25ADE8B08()
{
  result = qword_27FA12A20;
  if (!qword_27FA12A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA12A28, &qword_25AE12A28);
    sub_25ADE8B94();
    sub_25ADE8C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12A20);
  }

  return result;
}

unint64_t sub_25ADE8B94()
{
  result = qword_27FA12A30;
  if (!qword_27FA12A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA12A38, &qword_25AE12A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12A30);
  }

  return result;
}

unint64_t sub_25ADE8C18()
{
  result = qword_27FA12A40;
  if (!qword_27FA12A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA12A48, &qword_25AE12A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12A40);
  }

  return result;
}

double NDODWItem.action.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 112);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v8 = *(v1 + 64);
      v9 = *(v1 + 72);
      v10 = *(v1 + 56);
      *a1 = v2;
      *(a1 + 8) = v10;
      *(a1 + 16) = v8;
      *(a1 + 24) = v9;
      v11 = *(v1 + 80);
      *(a1 + 32) = v11;
      sub_25ADE48D8(v2, v10, v8, v9, v11);
      return result;
    }
  }

  else if (v3 >= 2)
  {
    v4 = *(v1 + 32);
    v5 = *(v1 + 40);
    v6 = *(v1 + 16);
    v7 = *(v1 + 24);
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v4;
    *(a1 + 24) = v5;
    *(a1 + 32) = v2;
    sub_25ADE48D8(v6, v7, v4, v5, v2);
    return result;
  }

  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = -1;
  return result;
}

uint64_t sub_25ADE8CEC()
{
  v1 = *v0;
  v2 = 0x6567617265766F63;
  v3 = 1802398060;
  v4 = 0x6F6D6F7270;
  if (v1 != 3)
  {
    v4 = 0x74726F70707573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7265746F6F66;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25ADE8D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25ADEBB74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25ADE8DAC(uint64_t a1)
{
  v2 = sub_25ADEACE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADE8DE8(uint64_t a1)
{
  v2 = sub_25ADEACE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADE8E30(uint64_t a1)
{
  v2 = sub_25ADEAFD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADE8E6C(uint64_t a1)
{
  v2 = sub_25ADEAFD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADE8EDC(uint64_t a1)
{
  v2 = sub_25ADEAF30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADE8F18(uint64_t a1)
{
  v2 = sub_25ADEAF30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADE8F54(uint64_t a1)
{
  v2 = sub_25ADEAE88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADE8F90(uint64_t a1)
{
  v2 = sub_25ADEAE88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADE8FCC(uint64_t a1)
{
  v2 = sub_25ADEADE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADE9008(uint64_t a1)
{
  v2 = sub_25ADEADE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25ADE9044()
{
  sub_25AE10E3C();
  MEMORY[0x25F8577E0](0);
  return sub_25AE10E6C();
}

uint64_t sub_25ADE9088()
{
  sub_25AE10E3C();
  MEMORY[0x25F8577E0](0);
  return sub_25AE10E6C();
}

uint64_t sub_25ADE90C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25AE10E2C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25ADE9148(uint64_t a1)
{
  v2 = sub_25ADEAD38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADE9184(uint64_t a1)
{
  v2 = sub_25ADEAD38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDODWItem.encode(to:)(void *a1)
{
  v2 = v1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12A50, &qword_25AE12A40);
  v45 = *(v46 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v46);
  v44 = &v37 - v5;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12A58, &qword_25AE12A48);
  v42 = *(v43 - 8);
  v6 = *(v42 + 64);
  MEMORY[0x28223BE20](v43);
  v41 = &v37 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12A60, &qword_25AE12A50);
  v39 = *(v40 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v40);
  v38 = &v37 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12A68, &qword_25AE12A58);
  v48 = *(v49 - 8);
  v10 = *(v48 + 64);
  MEMORY[0x28223BE20](v49);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12A70, &qword_25AE12A60);
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12A78, &qword_25AE12A68);
  v58 = *(v17 - 8);
  v59 = v17;
  v18 = *(v58 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v37 - v19;
  v21 = v2[1];
  v54 = *v2;
  v55 = v21;
  v22 = v2[3];
  v56 = v2[2];
  v50 = v22;
  v23 = v2[5];
  v51 = v2[4];
  v52 = v23;
  v53 = *(v2 + 48);
  v24 = *(v2 + 112);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADEACE4();
  v57 = v20;
  sub_25AE10E8C();
  if (v24 <= 1)
  {
    v31 = v47;
    v32 = v48;
    v33 = v49;
    if (!v24)
    {
      LOBYTE(v60) = 0;
      sub_25ADEAFD8();
      v34 = v59;
      v35 = v57;
      sub_25AE10D9C();
      v60 = v54;
      v61 = v55;
      v62 = v56;
      v63 = v50;
      v64 = v51;
      v65 = v52;
      v66 = v53;
      v67 = *(v2 + 49);
      v68 = *(v2 + 65);
      *v69 = *(v2 + 81);
      *&v69[15] = *(v2 + 6);
      sub_25ADEB02C();
      sub_25AE10DFC();
      (*(v31 + 8))(v16, v13);
      return (*(v58 + 8))(v35, v34);
    }

    LOBYTE(v60) = 1;
    sub_25ADEAF30();
    v27 = v59;
    v28 = v57;
    sub_25AE10D9C();
    v60 = v54;
    v61 = v55;
    v62 = v56;
    sub_25ADEAF84();
    sub_25AE10DFC();
    (*(v32 + 8))(v12, v33);
  }

  else
  {
    if (v24 == 2)
    {
      LOBYTE(v60) = 2;
      sub_25ADEAE88();
      v26 = v38;
      v27 = v59;
      v28 = v57;
      sub_25AE10D9C();
      v60 = v54;
      v61 = v55;
      v62 = v56;
      v63 = v50;
      v64 = v51;
      v65 = v52;
      v66 = v53;
      sub_25ADEAEDC();
      v29 = v40;
      sub_25AE10DFC();
      v30 = &v69[7];
    }

    else if (v24 == 3)
    {
      LOBYTE(v60) = 3;
      sub_25ADEADE0();
      v26 = v41;
      v27 = v59;
      v28 = v57;
      sub_25AE10D9C();
      v60 = v54;
      v61 = v55;
      v62 = v56;
      v63 = v50;
      v64 = v51;
      v65 = v52;
      v66 = v53;
      v67 = *(v2 + 49);
      v68 = *(v2 + 65);
      sub_25ADEAE34();
      v29 = v43;
      sub_25AE10DFC();
      v30 = &v70;
    }

    else
    {
      LOBYTE(v60) = 4;
      sub_25ADEAD38();
      v26 = v44;
      v27 = v59;
      v28 = v57;
      sub_25AE10D9C();
      sub_25ADEAD8C();
      v29 = v46;
      sub_25AE10DFC();
      v30 = &v71;
    }

    (*(*(v30 - 32) + 8))(v26, v29);
  }

  return (*(v58 + 8))(v28, v27);
}

uint64_t NDODWItem.hash(into:)(__int128 *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v12 = v1[8];
  v11 = v1[9];
  v13 = *(v1 + 80);
  v14 = *(v1 + 112);
  if (v14 <= 1)
  {
    if (*(v1 + 112))
    {
      MEMORY[0x25F8577E0](1);
      sub_25AE10B2C();

      return sub_25ADE2894(a1, v5);
    }

    else
    {
      v17 = v1[6];
      v21 = *(v1 + 80);
      v19 = v1[9];
      MEMORY[0x25F8577E0](0);
      *v22 = *(v1 + 81);
      *&v22[15] = *(v1 + 6);
      return NDODWCoverageModel.hash(into:)(a1);
    }
  }

  else
  {
    if (v14 == 2)
    {
      MEMORY[0x25F8577E0](2);
      sub_25AE10B2C();
      return NDOAction.hash(into:)(a1);
    }

    if (v14 == 3)
    {
      v16 = v1[6];
      v18 = v1[9];
      v20 = *(v1 + 80);
      MEMORY[0x25F8577E0](3);
      sub_25AE10B2C();
      sub_25AE10B2C();
      sub_25AE10B2C();
      return NDOAction.hash(into:)(a1);
    }

    return MEMORY[0x25F8577E0](4);
  }
}

uint64_t NDODWItem.hashValue.getter()
{
  sub_25AE10E3C();
  NDODWItem.hash(into:)(v1);
  return sub_25AE10E6C();
}

uint64_t NDODWItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12AD8, &qword_25AE12A70);
  v75 = *(v72 - 8);
  v3 = *(v75 + 64);
  MEMORY[0x28223BE20](v72);
  v76 = &v63 - v4;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12AE0, &qword_25AE12A78);
  v74 = *(v73 - 8);
  v5 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  v78 = &v63 - v6;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12AE8, &qword_25AE12A80);
  v71 = *(v70 - 8);
  v7 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  v77 = &v63 - v8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12AF0, &qword_25AE12A88);
  v68 = *(v69 - 8);
  v9 = *(v68 + 64);
  MEMORY[0x28223BE20](v69);
  v11 = &v63 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12AF8, &qword_25AE12A90);
  v67 = *(v12 - 8);
  v13 = *(v67 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v63 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12B00, &qword_25AE12A98);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v63 - v19;
  v22 = a1[3];
  v21 = a1[4];
  v92 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_25ADEACE4();
  v23 = v80;
  sub_25AE10E7C();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v92);
  }

  v64 = v12;
  v24 = v77;
  v25 = v78;
  v65 = v17;
  v26 = v79;
  v80 = v16;
  v66 = v20;
  v27 = sub_25AE10D8C();
  v28 = *(v27 + 16);
  if (!v28 || ((v29 = *(v27 + 32), v28 == 1) ? (v30 = v29 == 5) : (v30 = 1), v30))
  {
    v31 = sub_25AE10CDC();
    swift_allocError();
    v33 = v32;
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12B08, &qword_25AE12AA0) + 48);
    *v33 = &type metadata for NDODWItem;
    v35 = v80;
    v36 = v66;
    sub_25AE10D1C();
    sub_25AE10CCC();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
    swift_willThrow();
    (*(v65 + 8))(v36, v35);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v92);
  }

  v63 = v27;
  if (v29 <= 1)
  {
    if (v29)
    {
      LOBYTE(v81) = 1;
      sub_25ADEAF30();
      v46 = v11;
      v47 = v66;
      sub_25AE10D0C();
      v48 = v65;
      sub_25ADEB17C();
      v55 = v69;
      sub_25AE10D7C();
      v75 = 0;
      (*(v68 + 8))(v46, v55);
      (*(v48 + 8))(v47, v80);
      swift_unknownObjectRelease();
      v57 = v81;
      v58 = v82;
      *&v59 = v83;
    }

    else
    {
      LOBYTE(v81) = 0;
      sub_25ADEAFD8();
      v40 = v80;
      v41 = v66;
      sub_25AE10D0C();
      sub_25ADEB1D0();
      v54 = v64;
      sub_25AE10D7C();
      (*(v67 + 8))(v15, v54);
      (*(v65 + 8))(v41, v40);
      swift_unknownObjectRelease();
      v75 = 0;
      v57 = v81;
      v58 = v82;
      v59 = v83;
      v60 = v84;
      v61 = v85;
      v89 = v86;
      v90 = v87;
      *v91 = *v88;
      *&v91[15] = *&v88[15];
    }
  }

  else if (v29 == 2)
  {
    LOBYTE(v81) = 2;
    sub_25ADEAE88();
    v42 = v24;
    v43 = v80;
    v44 = v66;
    sub_25AE10D0C();
    sub_25ADEB128();
    v49 = v70;
    sub_25AE10D7C();
    v50 = (v65 + 8);
    v75 = 0;
    (*(v71 + 8))(v42, v49);
    (*v50)(v44, v43);
    swift_unknownObjectRelease();
    v57 = v81;
    v58 = v82;
    v59 = v83;
    v60 = v84;
    v61 = v85;
  }

  else
  {
    v37 = v80;
    v38 = v66;
    if (v29 == 3)
    {
      LOBYTE(v81) = 3;
      sub_25ADEADE0();
      sub_25AE10D0C();
      sub_25ADEB0D4();
      v39 = v73;
      sub_25AE10D7C();
      v75 = 0;
      (*(v74 + 8))(v25, v39);
      (*(v65 + 8))(v38, v37);
      swift_unknownObjectRelease();
      v57 = v81;
      v58 = v82;
      v59 = v83;
      v60 = v84;
      v61 = v85;
      v89 = v86;
      v90 = v87;
    }

    else
    {
      LOBYTE(v81) = 4;
      sub_25ADEAD38();
      v45 = v76;
      sub_25AE10D0C();
      sub_25ADEB080();
      v51 = v72;
      sub_25AE10D7C();
      v52 = (v75 + 8);
      v53 = (v65 + 8);
      v75 = 0;
      (*v52)(v45, v51);
      (*v53)(v38, v37);
      swift_unknownObjectRelease();
    }
  }

  *v26 = v57;
  *(v26 + 8) = v58;
  *(v26 + 16) = v59;
  *(v26 + 32) = v60;
  *(v26 + 48) = v61;
  v62 = v90;
  *(v26 + 49) = v89;
  *(v26 + 65) = v62;
  *(v26 + 81) = *v91;
  *(v26 + 96) = *&v91[15];
  *(v26 + 112) = v29;
  return __swift_destroy_boxed_opaque_existential_1(v92);
}

uint64_t sub_25ADEA77C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25ADEA7B0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25ADEA7E4()
{
  sub_25AE10E3C();
  NDODWItem.hash(into:)(v1);
  return sub_25AE10E6C();
}

uint64_t sub_25ADEA828()
{
  sub_25AE10E3C();
  NDODWItem.hash(into:)(v1);
  return sub_25AE10E6C();
}

uint64_t _s5NDOUI9NDODWItemO2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v64 = a1[4];
  v65 = v3;
  v4 = a1[5];
  v66 = a1[6];
  v5 = a1[1];
  v60 = *a1;
  v61 = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v62 = a1[2];
  v63 = v6;
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  v70 = a2[2];
  v71 = v11;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *a2;
  v68 = v9;
  v69 = v12;
  v15 = a2[5];
  v74 = a2[6];
  v16 = a2[3];
  v17 = a2[5];
  v72 = a2[4];
  v73 = v17;
  v76[2] = v62;
  v76[3] = v2;
  v76[0] = v8;
  v76[1] = v7;
  v18 = a1[6];
  v76[5] = v4;
  v76[6] = v18;
  v76[4] = v64;
  v81 = v16;
  v80 = v13;
  v67 = *(a1 + 112);
  v75 = *(a2 + 112);
  v77 = *(a1 + 112);
  v79 = v10;
  v78 = v14;
  v19 = a2[6];
  v85 = *(a2 + 112);
  v84 = v19;
  v83 = v15;
  v82 = v72;
  v20 = v61;
  if (v67 <= 1u)
  {
    if (v67)
    {
      if (v75 == 1)
      {
        v28 = v69;
        if (v60 == v68 || (sub_25AE10E2C() & 1) != 0)
        {
          sub_25ADEBD1C(&v68, &v52);
          sub_25ADEBD1C(&v60, &v52);
          sub_25ADEBD1C(&v68, &v52);
          sub_25ADEBD1C(&v60, &v52);
          v29 = sub_25ADEE754(v20, v28);
          sub_25ADEBD54(v76);
          sub_25ADEBE18(&v68);
          sub_25ADEBE18(&v60);
          if (v29)
          {
            v27 = 1;
            return v27 & 1;
          }

LABEL_24:
          v27 = 0;
          return v27 & 1;
        }

        sub_25ADEBD1C(&v68, &v52);
        v33 = &v60;
LABEL_23:
        sub_25ADEBD1C(v33, &v52);
        sub_25ADEBD54(v76);
        goto LABEL_24;
      }
    }

    else
    {
      if (!v75)
      {
        v45 = v60;
        v46 = v61;
        v47 = v62;
        v48 = v63;
        v49 = *(a1 + 49);
        v50 = *(a1 + 65);
        *v51 = *(a1 + 81);
        *&v51[15] = a1[6];
        v35 = a2[5];
        v42 = a2[4];
        v43 = v35;
        v44 = a2[6];
        v36 = a2[1];
        v38 = *a2;
        v39 = v36;
        v37 = a2[3];
        v40 = a2[2];
        v41 = v37;
        v27 = _s5NDOUI18NDODWCoverageModelV2eeoiySbAC_ACtFZ_0(&v45, &v38);
        sub_25ADEBD1C(&v68, &v52);
        sub_25ADEBD1C(&v60, &v52);
        sub_25ADEBD54(v76);
        return v27 & 1;
      }

      v24 = a1[5];
      v56 = a1[4];
      v57 = v24;
      v58 = a1[6];
      v59 = *(a1 + 112);
      v25 = a1[1];
      v52 = *a1;
      v53 = v25;
      v26 = a1[3];
      v54 = a1[2];
      v55 = v26;
      sub_25ADE35E0(&v52, &v45);
    }

LABEL_22:
    v33 = &v68;
    goto LABEL_23;
  }

  if (v67 == 2)
  {
    if (v75 == 2)
    {
      v45 = v60;
      v46 = v61;
      v47 = v62;
      v48 = v63;
      v38 = v68;
      v39 = v69;
      v40 = v70;
      LOBYTE(v41) = v71;
      sub_25ADEBD1C(&v68, &v52);
      sub_25ADEBD1C(&v60, &v52);
      sub_25ADEBD1C(&v68, &v52);
      sub_25ADEBD1C(&v60, &v52);
      v23 = _s5NDOUI16NDODWFooterModelV4LinkV2eeoiySbAE_AEtFZ_0(&v45, &v38);
      goto LABEL_11;
    }

    sub_25ADE48D8(v61, *(&v61 + 1), v62, *(&v62 + 1), v63);
    goto LABEL_22;
  }

  if (v67 != 3)
  {
    if (v75 == 4)
    {
      sub_25ADEBD54(v76);
      v27 = 1;
      return v27 & 1;
    }

    goto LABEL_22;
  }

  if (v75 != 3)
  {
    v30 = a1[5];
    v56 = a1[4];
    v57 = v30;
    v58 = a1[6];
    v59 = *(a1 + 112);
    v31 = a1[1];
    v52 = *a1;
    v53 = v31;
    v32 = a1[3];
    v54 = a1[2];
    v55 = v32;
    sub_25ADEBDBC(&v52, &v45);
    goto LABEL_22;
  }

  v45 = v60;
  v46 = v61;
  v47 = v62;
  v48 = v63;
  v49 = *(a1 + 49);
  v50 = *(a1 + 65);
  v21 = a2[3];
  v40 = a2[2];
  v41 = v21;
  v42 = a2[4];
  LOBYTE(v43) = *(a2 + 80);
  v22 = a2[1];
  v38 = *a2;
  v39 = v22;
  sub_25ADEBD1C(&v68, &v52);
  sub_25ADEBD1C(&v60, &v52);
  sub_25ADEBD1C(&v68, &v52);
  sub_25ADEBD1C(&v60, &v52);
  v23 = _s5NDOUI15NDODWPromoModelV2eeoiySbAC_ACtFZ_0(&v45, &v38);
LABEL_11:
  v27 = v23;
  sub_25ADEBD54(v76);
  sub_25ADEBE18(&v68);
  sub_25ADEBE18(&v60);
  return v27 & 1;
}

unint64_t sub_25ADEACE4()
{
  result = qword_27FA12A80;
  if (!qword_27FA12A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12A80);
  }

  return result;
}

unint64_t sub_25ADEAD38()
{
  result = qword_27FA12A88;
  if (!qword_27FA12A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12A88);
  }

  return result;
}

unint64_t sub_25ADEAD8C()
{
  result = qword_27FA12A90;
  if (!qword_27FA12A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12A90);
  }

  return result;
}

unint64_t sub_25ADEADE0()
{
  result = qword_27FA12A98;
  if (!qword_27FA12A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12A98);
  }

  return result;
}

unint64_t sub_25ADEAE34()
{
  result = qword_27FA12AA0;
  if (!qword_27FA12AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12AA0);
  }

  return result;
}

unint64_t sub_25ADEAE88()
{
  result = qword_27FA12AA8;
  if (!qword_27FA12AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12AA8);
  }

  return result;
}

unint64_t sub_25ADEAEDC()
{
  result = qword_27FA12AB0;
  if (!qword_27FA12AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12AB0);
  }

  return result;
}

unint64_t sub_25ADEAF30()
{
  result = qword_27FA12AB8;
  if (!qword_27FA12AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12AB8);
  }

  return result;
}

unint64_t sub_25ADEAF84()
{
  result = qword_27FA12AC0;
  if (!qword_27FA12AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12AC0);
  }

  return result;
}

unint64_t sub_25ADEAFD8()
{
  result = qword_27FA12AC8;
  if (!qword_27FA12AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12AC8);
  }

  return result;
}

unint64_t sub_25ADEB02C()
{
  result = qword_27FA12AD0;
  if (!qword_27FA12AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12AD0);
  }

  return result;
}

unint64_t sub_25ADEB080()
{
  result = qword_27FA12B10;
  if (!qword_27FA12B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12B10);
  }

  return result;
}

unint64_t sub_25ADEB0D4()
{
  result = qword_27FA12B18;
  if (!qword_27FA12B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12B18);
  }

  return result;
}

unint64_t sub_25ADEB128()
{
  result = qword_27FA12B20;
  if (!qword_27FA12B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12B20);
  }

  return result;
}

unint64_t sub_25ADEB17C()
{
  result = qword_27FA12B28;
  if (!qword_27FA12B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12B28);
  }

  return result;
}

unint64_t sub_25ADEB1D0()
{
  result = qword_27FA12B30;
  if (!qword_27FA12B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12B30);
  }

  return result;
}

unint64_t sub_25ADEB228()
{
  result = qword_27FA12B38;
  if (!qword_27FA12B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12B38);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5NDOUI9NDOActionO(uint64_t a1)
{
  if ((*(a1 + 32) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
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

uint64_t sub_25ADEB2D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 113))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 112);
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

uint64_t sub_25ADEB318(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 112) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NDODWItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NDODWItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25ADEB548()
{
  result = qword_27FA12B40;
  if (!qword_27FA12B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12B40);
  }

  return result;
}

unint64_t sub_25ADEB5A0()
{
  result = qword_27FA12B48;
  if (!qword_27FA12B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12B48);
  }

  return result;
}

unint64_t sub_25ADEB5F8()
{
  result = qword_27FA12B50;
  if (!qword_27FA12B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12B50);
  }

  return result;
}

unint64_t sub_25ADEB650()
{
  result = qword_27FA12B58;
  if (!qword_27FA12B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12B58);
  }

  return result;
}

unint64_t sub_25ADEB6A8()
{
  result = qword_27FA12B60;
  if (!qword_27FA12B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12B60);
  }

  return result;
}

unint64_t sub_25ADEB700()
{
  result = qword_27FA12B68;
  if (!qword_27FA12B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12B68);
  }

  return result;
}

unint64_t sub_25ADEB758()
{
  result = qword_27FA12B70;
  if (!qword_27FA12B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12B70);
  }

  return result;
}

unint64_t sub_25ADEB7B0()
{
  result = qword_27FA12B78;
  if (!qword_27FA12B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12B78);
  }

  return result;
}

unint64_t sub_25ADEB808()
{
  result = qword_27FA12B80;
  if (!qword_27FA12B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12B80);
  }

  return result;
}

unint64_t sub_25ADEB860()
{
  result = qword_27FA12B88;
  if (!qword_27FA12B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12B88);
  }

  return result;
}

unint64_t sub_25ADEB8B8()
{
  result = qword_27FA12B90;
  if (!qword_27FA12B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12B90);
  }

  return result;
}

unint64_t sub_25ADEB910()
{
  result = qword_27FA12B98;
  if (!qword_27FA12B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12B98);
  }

  return result;
}

unint64_t sub_25ADEB968()
{
  result = qword_27FA12BA0;
  if (!qword_27FA12BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12BA0);
  }

  return result;
}

unint64_t sub_25ADEB9C0()
{
  result = qword_27FA12BA8;
  if (!qword_27FA12BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12BA8);
  }

  return result;
}

unint64_t sub_25ADEBA18()
{
  result = qword_27FA12BB0;
  if (!qword_27FA12BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12BB0);
  }

  return result;
}

unint64_t sub_25ADEBA70()
{
  result = qword_27FA12BB8;
  if (!qword_27FA12BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12BB8);
  }

  return result;
}

unint64_t sub_25ADEBAC8()
{
  result = qword_27FA12BC0;
  if (!qword_27FA12BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12BC0);
  }

  return result;
}

unint64_t sub_25ADEBB20()
{
  result = qword_27FA12BC8;
  if (!qword_27FA12BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12BC8);
  }

  return result;
}

uint64_t sub_25ADEBB74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617265766F63 && a2 == 0xE800000000000000;
  if (v4 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1802398060 && a2 == 0xE400000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6D6F7270 && a2 == 0xE500000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74726F70707573 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_25AE10E2C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_25ADEBD54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12BD0, &qword_25AE135B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_5NDOUI12NDOUIDWStateO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t dispatch thunk of NDODeviceListProvider.localDeviceList()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25ADEBFBC;

  return v9(a1, a2);
}

uint64_t sub_25ADEBFBC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of NDODeviceListProvider.remoteDeviceList()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25ADEC200;

  return v9(a1, a2);
}

uint64_t NDODeviceModel.iconUrl.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NDODeviceModel.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t NDODeviceModel.serialNumber.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t NDODeviceModel.subtitle.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t NDODeviceModel.callToActionLabel.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t NDODeviceModel.action.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 112);
  *(a1 + 32) = v6;
  return sub_25ADE48D8(v2, v3, v4, v5, v6);
}

__n128 NDODeviceModel.init(iconUrl:title:serialNumber:subtitle:callToActionLabel:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = *(a12 + 32);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  result = *a12;
  v14 = *(a12 + 16);
  *(a9 + 80) = *a12;
  *(a9 + 96) = v14;
  *(a9 + 112) = v12;
  return result;
}

uint64_t NDODeviceModel.hash(into:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_25AE10B2C();
}

uint64_t sub_25ADEC34C()
{
  v1 = *v0;
  v2 = 0x6C72556E6F6369;
  v3 = 0x656C746974627573;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0x6E6F69746361;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x754E6C6169726573;
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

uint64_t sub_25ADEC40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25ADED420(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25ADEC440(uint64_t a1)
{
  v2 = sub_25ADECF54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADEC47C(uint64_t a1)
{
  v2 = sub_25ADECF54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDODeviceModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12BD8, &qword_25AE13688);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v36 = v1[3];
  v37 = v10;
  v11 = v1[4];
  v34 = v1[5];
  v35 = v11;
  v12 = v1[6];
  v32 = v1[7];
  v33 = v12;
  v13 = v1[9];
  v29 = v1[8];
  v30 = v13;
  v14 = v1[11];
  v31 = v1[10];
  v16 = v1[12];
  v15 = v1[13];
  v26 = v14;
  v27 = v16;
  v28 = v15;
  v17 = *(v1 + 112);
  v18 = a1[3];
  v19 = a1[4];
  v20 = a1;
  v22 = v21;
  __swift_project_boxed_opaque_existential_1(v20, v18);
  sub_25ADECF54();
  sub_25AE10E8C();
  LOBYTE(v39) = 0;
  v23 = v38;
  sub_25AE10DAC();
  if (!v23)
  {
    LODWORD(v38) = v17;
    v24 = v31;
    LOBYTE(v39) = 1;
    sub_25AE10DCC();
    LOBYTE(v39) = 2;
    sub_25AE10DCC();
    LOBYTE(v39) = 3;
    sub_25AE10DAC();
    LOBYTE(v39) = 4;
    sub_25AE10DAC();
    v39 = v24;
    v40 = v26;
    v41 = v27;
    v42 = v28;
    v43 = v38;
    v44 = 5;
    sub_25ADE48D8(v24, v26, v27, v28, v38);
    sub_25ADECFA8();
    sub_25AE10DFC();
    sub_25ADE4930(v39, v40, v41, v42, v43);
  }

  return (*(v4 + 8))(v7, v22);
}

uint64_t NDODeviceModel.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_25AE10E3C();
  sub_25AE10B2C();
  return sub_25AE10E6C();
}

uint64_t NDODeviceModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12BF0, &qword_25AE13690);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_25ADECF54();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v48);
  }

  v12 = v6;
  LOBYTE(v57[0]) = 0;
  v13 = v5;
  v15 = sub_25AE10D2C();
  v17 = v16;
  LOBYTE(v57[0]) = 1;
  v44 = sub_25AE10D4C();
  v46 = v18;
  LOBYTE(v57[0]) = 2;
  v19 = sub_25AE10D4C();
  v45 = v20;
  v40 = v19;
  LOBYTE(v57[0]) = 3;
  v43 = 0;
  v21 = sub_25AE10D2C();
  v42 = v22;
  LOBYTE(v57[0]) = 4;
  v23 = sub_25AE10D2C();
  v47 = 0;
  v39 = v23;
  v41 = v25;
  v62 = 5;
  sub_25ADECFFC();
  v26 = v47;
  sub_25AE10D7C();
  v47 = v26;
  if (v26)
  {
    (*(v12 + 8))(v9, v13);
    __swift_destroy_boxed_opaque_existential_1(v48);
    v24 = v43;

    if (!v24)
    {
    }
  }

  else
  {
    (*(v12 + 8))(v9, v13);
    v37 = *(&v59 + 1);
    v38 = v59;
    v35 = *(&v60 + 1);
    v36 = v60;
    *&v49 = v15;
    *(&v49 + 1) = v17;
    v27 = v45;
    v28 = v46;
    *&v50 = v44;
    *(&v50 + 1) = v46;
    *&v51 = v40;
    *(&v51 + 1) = v45;
    *&v52 = v21;
    v43 = v21;
    v30 = v41;
    v29 = v42;
    *(&v52 + 1) = v42;
    *&v53 = v39;
    *(&v53 + 1) = v41;
    v54 = v59;
    v55 = v60;
    v31 = v61;
    v56 = v61;
    v32 = v52;
    *(a2 + 32) = v51;
    *(a2 + 48) = v32;
    *(a2 + 112) = v31;
    v33 = v50;
    *a2 = v49;
    *(a2 + 16) = v33;
    v34 = v55;
    *(a2 + 80) = v54;
    *(a2 + 96) = v34;
    *(a2 + 64) = v53;
    sub_25ADED050(&v49, v57);
    __swift_destroy_boxed_opaque_existential_1(v48);
    v57[0] = v15;
    v57[1] = v17;
    v57[2] = v44;
    v57[3] = v28;
    v57[4] = v40;
    v57[5] = v27;
    v57[6] = v43;
    v57[7] = v29;
    v57[8] = v39;
    v57[9] = v30;
    v57[10] = v38;
    v57[11] = v37;
    v57[12] = v36;
    v57[13] = v35;
    v58 = v31;
    return sub_25ADED088(v57);
  }
}

uint64_t sub_25ADECC2C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_25AE10E3C();
  sub_25AE10B2C();
  return sub_25AE10E6C();
}

uint64_t sub_25ADECC78()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_25AE10B2C();
}

uint64_t sub_25ADECC80()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_25AE10E3C();
  sub_25AE10B2C();
  return sub_25AE10E6C();
}

uint64_t _s5NDOUI14NDODeviceModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 72);
  v40 = *(a1 + 88);
  v41 = *(a1 + 80);
  v11 = *(a1 + 104);
  v38 = *(a1 + 64);
  v39 = *(a1 + 96);
  v12 = *(a1 + 112);
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v16 = *(a2 + 24);
  v15 = *(a2 + 32);
  v18 = *(a2 + 40);
  v17 = *(a2 + 48);
  v19 = *(a2 + 56);
  v37 = *(a2 + 64);
  v42 = *(a2 + 72);
  v20 = *(a2 + 80);
  v21 = *(a2 + 88);
  v22 = *(a2 + 96);
  v23 = *(a2 + 104);
  v24 = *(a2 + 112);
  if (v3)
  {
    if (!v13)
    {
      goto LABEL_28;
    }

    v34 = *(a2 + 48);
    v35 = *(a1 + 48);
    v36 = *(a1 + 56);
    v27 = *(a2 + 112);
    v28 = *(a2 + 104);
    v29 = *(a2 + 96);
    v30 = *(a2 + 88);
    v31 = *(a2 + 80);
    v32 = *(a1 + 112);
    v33 = *(a1 + 104);
    if ((*a1 != *a2 || v3 != v13) && (sub_25AE10E2C() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v34 = *(a2 + 48);
    v35 = *(a1 + 48);
    v36 = *(a1 + 56);
    v27 = *(a2 + 112);
    v28 = *(a2 + 104);
    v29 = *(a2 + 96);
    v30 = *(a2 + 88);
    v31 = *(a2 + 80);
    v32 = *(a1 + 112);
    v33 = *(a1 + 104);
    if (v13)
    {
      goto LABEL_28;
    }
  }

  if ((v4 != v14 || v5 != v16) && (sub_25AE10E2C() & 1) == 0 || (v6 != v15 || v8 != v18) && (sub_25AE10E2C() & 1) == 0)
  {
    goto LABEL_28;
  }

  if (v36)
  {
    if (!v19 || (v35 != v34 || v36 != v19) && (sub_25AE10E2C() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v19)
  {
    goto LABEL_28;
  }

  if (v10)
  {
    if (v42 && (v38 == v37 && v10 == v42 || (sub_25AE10E2C() & 1) != 0))
    {
      goto LABEL_26;
    }

LABEL_28:
    v25 = 0;
    return v25 & 1;
  }

  if (v42)
  {
    goto LABEL_28;
  }

LABEL_26:
  v48 = v41;
  v49 = v40;
  v50 = v39;
  v51 = v33;
  v52 = v32;
  v43 = v31;
  v44 = v30;
  v45 = v29;
  v46 = v28;
  v47 = v27;
  sub_25ADE48D8(v41, v40, v39, v33, v32);
  sub_25ADE48D8(v31, v30, v29, v28, v27);
  v25 = _s5NDOUI9NDOActionO2eeoiySbAC_ACtFZ_0(&v48, &v43);
  sub_25ADE4930(v43, v44, v45, v46, v47);
  sub_25ADE4930(v48, v49, v50, v51, v52);
  return v25 & 1;
}

unint64_t sub_25ADECF54()
{
  result = qword_27FA12BE0;
  if (!qword_27FA12BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12BE0);
  }

  return result;
}

unint64_t sub_25ADECFA8()
{
  result = qword_27FA12BE8;
  if (!qword_27FA12BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12BE8);
  }

  return result;
}

unint64_t sub_25ADECFFC()
{
  result = qword_27FA12BF8;
  if (!qword_27FA12BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12BF8);
  }

  return result;
}

unint64_t sub_25ADED0BC()
{
  result = qword_27FA12C00;
  if (!qword_27FA12C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12C00);
  }

  return result;
}

uint64_t sub_25ADED110(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_25ADED158(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for NDODeviceModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NDODeviceModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25ADED31C()
{
  result = qword_27FA12C08;
  if (!qword_27FA12C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12C08);
  }

  return result;
}

unint64_t sub_25ADED374()
{
  result = qword_27FA12C10;
  if (!qword_27FA12C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12C10);
  }

  return result;
}

unint64_t sub_25ADED3CC()
{
  result = qword_27FA12C18;
  if (!qword_27FA12C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12C18);
  }

  return result;
}

uint64_t sub_25ADED420(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C72556E6F6369 && a2 == 0xE700000000000000;
  if (v4 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (sub_25AE10E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025AE1EB30 == a2 || (sub_25AE10E2C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_25AE10E2C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t NDODWPromoModel.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NDODWPromoModel.subtitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t NDODWPromoModel.buttonTitle.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t NDODWPromoModel.action.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 80);
  *(a1 + 32) = v6;
  return sub_25ADE48D8(v2, v3, v4, v5, v6);
}

__n128 NDODWPromoModel.init(title:subtitle:buttonTitle:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *(a7 + 32);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  result = *a7;
  v10 = *(a7 + 16);
  *(a8 + 48) = *a7;
  *(a8 + 64) = v10;
  *(a8 + 80) = v8;
  return result;
}

uint64_t sub_25ADED6F0()
{
  v1 = 0x656C746974;
  v2 = 0x69546E6F74747562;
  if (*v0 != 2)
  {
    v2 = 0x6E6F69746361;
  }

  if (*v0)
  {
    v1 = 0x656C746974627573;
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

uint64_t sub_25ADED76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25ADEE5F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25ADED794(uint64_t a1)
{
  v2 = sub_25ADEE32C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADED7D0(uint64_t a1)
{
  v2 = sub_25ADEE32C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDODWPromoModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12C20, &qword_25AE13A18);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v26 = v1[3];
  v27 = v10;
  v11 = v1[4];
  v24 = v1[5];
  v25 = v11;
  v12 = v1[6];
  v22 = v1[7];
  v23 = v12;
  v13 = v1[8];
  v20 = v1[9];
  v21 = v13;
  v34 = *(v1 + 80);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADEE32C();
  sub_25AE10E8C();
  LOBYTE(v29) = 0;
  v15 = v28;
  sub_25AE10DCC();
  if (!v15)
  {
    v17 = v21;
    v16 = v22;
    v18 = v23;
    LOBYTE(v29) = 1;
    sub_25AE10DCC();
    LOBYTE(v29) = 2;
    sub_25AE10DCC();
    v28 = 0;
    v29 = v18;
    v30 = v16;
    v31 = v17;
    v32 = v20;
    v33 = v34;
    v35 = 3;
    sub_25ADE48D8(v18, v16, v17, v20, v34);
    sub_25ADECFA8();
    sub_25AE10DFC();
    sub_25ADE4930(v29, v30, v31, v32, v33);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t NDODWPromoModel.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + 80);
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  v12 = *(v1 + 4);
  v11 = *(v1 + 3);
  return NDOAction.hash(into:)(a1);
}

uint64_t NDODWPromoModel.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 80);
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  v9 = *(v0 + 3);
  v10 = *(v0 + 4);
  NDOAction.hash(into:)(v11);
  return sub_25AE10E6C();
}

uint64_t NDODWPromoModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12C30, &qword_25AE13A20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADEE32C();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v42[0]) = 0;
  v11 = sub_25AE10D4C();
  v35 = v12;
  LOBYTE(v42[0]) = 1;
  v13 = sub_25AE10D4C();
  v34 = v14;
  v32 = v13;
  LOBYTE(v42[0]) = 2;
  v31 = sub_25AE10D4C();
  v33 = v15;
  v47 = 3;
  sub_25ADECFFC();
  sub_25AE10D7C();
  (*(v6 + 8))(v9, v5);
  v29 = *(&v44 + 1);
  v30 = v44;
  v27 = *(&v45 + 1);
  v28 = v45;
  *&v36 = v11;
  v16 = v35;
  *(&v36 + 1) = v35;
  v17 = v32;
  *&v37 = v32;
  v18 = v34;
  *(&v37 + 1) = v34;
  *&v38 = v31;
  v19 = v33;
  *(&v38 + 1) = v33;
  v39 = v44;
  v40 = v45;
  v20 = v46;
  v41 = v46;
  v21 = v37;
  *a2 = v36;
  *(a2 + 16) = v21;
  v22 = v38;
  v23 = v39;
  v24 = v40;
  *(a2 + 80) = v20;
  *(a2 + 48) = v23;
  *(a2 + 64) = v24;
  *(a2 + 32) = v22;
  sub_25ADEBDBC(&v36, v42);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v42[0] = v11;
  v42[1] = v16;
  v42[2] = v17;
  v42[3] = v18;
  v42[4] = v31;
  v42[5] = v19;
  v42[6] = v30;
  v42[7] = v29;
  v42[8] = v28;
  v42[9] = v27;
  v43 = v20;
  return sub_25ADEE380(v42);
}

uint64_t sub_25ADEDF90()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 80);
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  v9 = *(v0 + 3);
  v10 = *(v0 + 4);
  NDOAction.hash(into:)(v11);
  return sub_25AE10E6C();
}

uint64_t sub_25ADEE038(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + 80);
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  v12 = *(v1 + 4);
  v11 = *(v1 + 3);
  return NDOAction.hash(into:)(a1);
}

uint64_t sub_25ADEE0C8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 80);
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  v9 = *(v0 + 3);
  v10 = *(v0 + 4);
  NDOAction.hash(into:)(v11);
  return sub_25AE10E6C();
}

uint64_t _s5NDOUI15NDODWPromoModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v20 = *(a1 + 56);
  v21 = *(a1 + 48);
  v18 = *(a1 + 72);
  v19 = *(a1 + 64);
  v17 = *(a1 + 80);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v15 = *(a2 + 56);
  v16 = *(a2 + 48);
  v10 = *(a2 + 72);
  v14 = *(a2 + 64);
  v11 = *(a2 + 80);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (sub_25AE10E2C()) && (v2 == v6 && v4 == v7 || (sub_25AE10E2C()) && (v3 == v8 && v5 == v9 || (sub_25AE10E2C()))
  {
    v27 = v21;
    v28 = v20;
    v29 = v19;
    v30 = v18;
    v31 = v17;
    v22 = v16;
    v23 = v15;
    v24 = v14;
    v25 = v10;
    v26 = v11;
    sub_25ADE48D8(v21, v20, v19, v18, v17);
    sub_25ADE48D8(v16, v15, v14, v10, v11);
    v12 = _s5NDOUI9NDOActionO2eeoiySbAC_ACtFZ_0(&v27, &v22);
    sub_25ADE4930(v22, v23, v24, v25, v26);
    sub_25ADE4930(v27, v28, v29, v30, v31);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

unint64_t sub_25ADEE32C()
{
  result = qword_27FA12C28;
  if (!qword_27FA12C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12C28);
  }

  return result;
}

unint64_t sub_25ADEE3B4()
{
  result = qword_27FA12C38;
  if (!qword_27FA12C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12C38);
  }

  return result;
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

uint64_t sub_25ADEE42C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_25ADEE474(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25ADEE4F0()
{
  result = qword_27FA12C40;
  if (!qword_27FA12C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12C40);
  }

  return result;
}

unint64_t sub_25ADEE548()
{
  result = qword_27FA12C48;
  if (!qword_27FA12C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12C48);
  }

  return result;
}

unint64_t sub_25ADEE5A0()
{
  result = qword_27FA12C50;
  if (!qword_27FA12C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12C50);
  }

  return result;
}

uint64_t sub_25ADEE5F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69546E6F74747562 && a2 == 0xEB00000000656C74 || (sub_25AE10E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_25AE10E2C();

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

uint64_t sub_25ADEE754(uint64_t result, uint64_t a2)
{
  v11 = result;
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  while (v2)
  {
    v13 = v2;
    v4 = *(v11 + v3 + 48);
    v5 = *(v11 + v3 + 56);
    v15 = *(v11 + v3 + 64);
    v17 = *(v11 + v3 + 72);
    v16 = *(v11 + v3 + 80);
    v7 = *(a2 + v3 + 48);
    v6 = *(a2 + v3 + 56);
    v8 = *(a2 + v3 + 64);
    v18 = *(a2 + v3 + 72);
    v19 = *(a2 + v3 + 80);
    if (*(v11 + v3 + 32) != *(a2 + v3 + 32) || *(v11 + v3 + 40) != *(a2 + v3 + 40))
    {
      v9 = *(v11 + v3 + 40);
      v10 = *(a2 + v3 + 40);
      v8 = *(a2 + v3 + 64);
      if ((sub_25AE10E2C() & 1) == 0)
      {
        return 0;
      }
    }

    v25 = v4;
    v26 = v5;
    v27 = v15;
    v28 = v17;
    v29 = v16;
    v20 = v7;
    v21 = v6;
    v22 = v8;
    v23 = v18;
    v24 = v19;

    sub_25ADE48D8(v4, v5, v15, v17, v16);

    sub_25ADE48D8(v7, v6, v8, v18, v19);
    sub_25ADE48D8(v4, v5, v15, v17, v16);
    sub_25ADE48D8(v7, v6, v8, v18, v19);
    v14 = _s5NDOUI9NDOActionO2eeoiySbAC_ACtFZ_0(&v25, &v20);
    sub_25ADE4930(v20, v21, v22, v23, v24);
    sub_25ADE4930(v25, v26, v27, v28, v29);

    sub_25ADE4930(v7, v6, v8, v18, v19);

    result = sub_25ADE4930(v4, v5, v15, v17, v16);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    v3 += 56;
    v2 = v13 - 1;
    if (v13 == 1)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25ADEE9AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_25AE10E2C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_25ADEEA3C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v32 = a2 + 32;
  v33 = result + 32;
  v31 = *(result + 16);
  while (v3 != v2)
  {
    v4 = (v33 + 72 * v3);
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v8 = v4[3];
    v9 = v4[5];
    v10 = v4[6];
    v37 = v4[7];
    v38 = v4[4];
    v11 = v4[8];
    v12 = (v32 + 72 * v3);
    v13 = v12[2];
    v14 = v12[3];
    v15 = v12[4];
    v16 = v12[5];
    v17 = v12[6];
    v35 = v12[7];
    v36 = v11;
    v34 = v12[8];
    v18 = v5 == *v12 && v6 == v12[1];
    if (!v18 && (sub_25AE10E2C() & 1) == 0)
    {
      return 0;
    }

    v19 = v7 == v13 && v8 == v14;
    if (!v19 && (sub_25AE10E2C() & 1) == 0)
    {
      return 0;
    }

    result = v38;
    if (v38 != v15 || v9 != v16)
    {
      result = sub_25AE10E2C();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    v21 = *(v10 + 16);
    if (v21 != *(v17 + 16))
    {
      return 0;
    }

    if (v21)
    {
      v22 = v10 == v17;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = (v10 + 56);
      v24 = (v17 + 56);
      while (v21)
      {
        result = *(v23 - 3);
        v25 = *(v23 - 1);
        v26 = *v23;
        v27 = *(v24 - 1);
        v28 = *v24;
        if (result != *(v24 - 3) || *(v23 - 2) != *(v24 - 2))
        {
          result = sub_25AE10E2C();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        if (v25 != v27 || v26 != v28)
        {
          result = sub_25AE10E2C();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v23 += 4;
        v24 += 4;
        if (!--v21)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
      break;
    }

LABEL_30:
    if ((v37 != v35 || v36 != v34) && (sub_25AE10E2C() & 1) == 0)
    {
      return 0;
    }

    ++v3;
    result = 1;
    v2 = v31;
    if (v3 == v31)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25ADEEC48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_25AE10E2C() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_25AE10E2C() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t static NDODWFooterModel.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_25AE10E2C() & 1) == 0)
  {
    return 0;
  }

  return sub_25ADEE754(v2, v3);
}

uint64_t NDODWFooterModel.content.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

NDOUI::NDODWFooterModel __swiftcall NDODWFooterModel.init(content:links:)(Swift::String content, Swift::OpaquePointer links)
{
  *v2 = content;
  *(v2 + 16) = links;
  result.content = content;
  result.links = links;
  return result;
}

uint64_t sub_25ADEEDD0()
{
  if (*v0)
  {
    result = 0x736B6E696CLL;
  }

  else
  {
    result = 0x746E65746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_25ADEEE08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_25AE10E2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736B6E696CLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25AE10E2C();

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

uint64_t sub_25ADEEEE0(uint64_t a1)
{
  v2 = sub_25ADEF130();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADEEF1C(uint64_t a1)
{
  v2 = sub_25ADEF130();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDODWFooterModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12C58, &qword_25AE13DA0);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADEF130();
  sub_25AE10E8C();
  v17 = 0;
  sub_25AE10DCC();
  if (!v2)
  {
    v15 = v13;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12C68, &qword_25AE13DA8);
    sub_25ADEFDA0(&qword_27FA12C70, sub_25ADEF184);
    sub_25AE10DFC();
  }

  return (*(v14 + 8))(v7, v4);
}

unint64_t sub_25ADEF130()
{
  result = qword_27FA12C60;
  if (!qword_27FA12C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12C60);
  }

  return result;
}

unint64_t sub_25ADEF184()
{
  result = qword_27FA12C78;
  if (!qword_27FA12C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA12C78);
  }

  return result;
}

uint64_t NDODWFooterModel.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_25AE10B2C();

  return sub_25ADE2894(a1, v5);
}

uint64_t NDODWFooterModel.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25ADE2894(v5, v3);
  return sub_25AE10E6C();
}

uint64_t NDODWFooterModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12C80, &qword_25AE13DB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADEF130();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v11 = sub_25AE10D4C();
  v13 = v12;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12C68, &qword_25AE13DA8);
  v18 = 1;
  sub_25ADEFDA0(&qword_27FA12C88, sub_25ADEFE18);
  sub_25AE10D7C();
  (*(v6 + 8))(v9, v5);
  v15 = v17[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25ADEF4D4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25ADE2894(v5, v3);
  return sub_25AE10E6C();
}

uint64_t sub_25ADEF538(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_25AE10B2C();

  return sub_25ADE2894(a1, v5);
}

uint64_t sub_25ADEF57C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25ADE2894(v5, v3);
  return sub_25AE10E6C();
}

uint64_t sub_25ADEF60C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_25AE10E2C() & 1) == 0)
  {
    return 0;
  }

  return sub_25ADEE754(v2, v3);
}

uint64_t NDODWFooterModel.Link.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NDODWFooterModel.Link.action.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 48);
  *(a1 + 32) = v6;
  return sub_25ADE48D8(v2, v3, v4, v5, v6);
}

__n128 NDODWFooterModel.Link.init(label:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 32);
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v6 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v6;
  *(a4 + 48) = v4;
  return result;
}

uint64_t sub_25ADEF6E8(uint64_t a1)
{
  v2 = sub_25ADEFF80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25ADEF724(uint64_t a1)
{
  v2 = sub_25ADEFF80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDODWFooterModel.Link.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12C98, &qword_25AE13DB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v17 = v1[3];
  v18 = v10;
  v11 = v1[4];
  v15 = v1[5];
  v16 = v11;
  v25 = *(v1 + 48);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADEFF80();
  sub_25AE10E8C();
  LOBYTE(v20) = 0;
  v13 = v19;
  sub_25AE10DCC();
  if (!v13)
  {
    v20 = v18;
    v21 = v17;
    v22 = v16;
    v23 = v15;
    v24 = v25;
    v26 = 1;
    sub_25ADE48D8(v18, v17, v16, v15, v25);
    sub_25ADECFA8();
    sub_25AE10DFC();
    sub_25ADE4930(v20, v21, v22, v23, v24);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t NDODWFooterModel.Link.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 48);
  sub_25AE10B2C();
  v8 = *(v1 + 2);
  v7 = *(v1 + 1);
  return NDOAction.hash(into:)(a1);
}

uint64_t NDODWFooterModel.Link.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 48);
  sub_25AE10E3C();
  sub_25AE10B2C();
  v5 = *(v0 + 1);
  v6 = *(v0 + 2);
  NDOAction.hash(into:)(v7);
  return sub_25AE10E6C();
}

uint64_t NDODWFooterModel.Link.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12CA8, &qword_25AE13DC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25ADEFF80();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v21) = 0;
  v11 = sub_25AE10D4C();
  v13 = v12;
  v20 = v11;
  v26 = 1;
  sub_25ADECFFC();
  sub_25AE10D7C();
  (*(v6 + 8))(v9, v5);
  v14 = v21;
  v15 = v22;
  v16 = v23;
  v17 = v24;
  v18 = v25;
  *a2 = v20;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v18;

  sub_25ADE48D8(v14, v15, v16, v17, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_25ADE4930(v14, v15, v16, v17, v18);
}

uint64_t sub_25ADEFC38()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 48);
  sub_25AE10E3C();
  sub_25AE10B2C();
  v5 = *(v0 + 1);
  v6 = *(v0 + 2);
  NDOAction.hash(into:)(v7);
  return sub_25AE10E6C();
}

uint64_t sub_25ADEFCA8(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 48);
  sub_25AE10B2C();
  v8 = *(v1 + 2);
  v7 = *(v1 + 1);
  return NDOAction.hash(into:)(a1);
}

uint64_t sub_25ADEFD00()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 48);
  sub_25AE10E3C();
  sub_25AE10B2C();
  v5 = *(v0 + 1);
  v6 = *(v0 + 2);
  NDOAction.hash(into:)(v7);
  return sub_25AE10E6C();
}