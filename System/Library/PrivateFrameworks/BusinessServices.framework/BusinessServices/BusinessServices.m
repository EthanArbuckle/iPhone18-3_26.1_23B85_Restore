id RCSChatBotBrandDataSourceObjcShim.init()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CC37B0]) initWithQueue_];
  v2 = type metadata accessor for ChatbotTelephonyUtilities();
  v15[3] = v2;
  v15[4] = &off_2827805F0;
  v15[0] = swift_initStaticObject();
  type metadata accessor for RCSChatBotBrandDataSource();
  v3 = swift_allocObject();
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v15, v2);
  v5 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v4, v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = sub_2155B0D34(v1, *v7, v3);
  __swift_destroy_boxed_opaque_existential_1(v15);
  v10 = [objc_allocWithZone(BSOpaqueWrapper) initWithThing_];

  *&v0[OBJC_IVAR___IMBrandChatBotBrandDataSourceObjcShim_opaqueWrapper] = v10;
  v11 = type metadata accessor for RCSChatBotBrandDataSourceObjcShim();
  v14.receiver = v0;
  v14.super_class = v11;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void *sub_2155B0D34(void *a1, uint64_t a2, void *a3)
{
  v8[3] = type metadata accessor for ChatbotTelephonyUtilities();
  v8[4] = &off_2827805F0;
  v8[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA65080, &qword_2155DD788);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = MEMORY[0x277D84F98];
  a3[9] = v6;
  sub_2155B0E68(v8, (a3 + 4));
  a3[2] = a1;
  a3[3] = &off_28277F6B8;
  [a1 setDelegate_];
  __swift_destroy_boxed_opaque_existential_1(v8);
  return a3;
}

void sub_2155B0E18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2155B0E68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_2155B0F9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_2155B1194(char a1, uint64_t a2, id a3)
{
  v6 = [a3 wrappedThing];
  sub_2155DAA1C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64F68, &qword_2155DD110);
  if (swift_dynamicCast())
  {
    sub_2155B146C(v17, v19);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
    v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v7 - 8, v9);
    v11 = &v16 - v10;
    sub_2155B13FC(a2, &v16 - v10);
    sub_2155B0E68(v19, v17);
    v12 = _s16BusinessServices12BrandManagerC14cachingEnabled8cacheURL35brandRemoteDataSourceNeedingFactoryACSb_10Foundation0H0VSgAA0cjklmN0_ptcfC_0(a1 & 1, v11, v17);
    __swift_destroy_boxed_opaque_existential_1(v19);
    *&v3[OBJC_IVAR___BSBrandManagerObjcShim_brandManager] = v12;
    v13 = type metadata accessor for BrandManagerObjcShim();
    v16.receiver = v3;
    v16.super_class = v13;
    v14 = objc_msgSendSuper2(&v16, sel_init);
    sub_2155B1F44(a2, &qword_27CA64B20, &qword_2155DBDC0);
    return v14;
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    result = sub_2155B1F44(v17, &qword_27CA64F70, &qword_2155DD118);
    __break(1u);
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

uint64_t sub_2155B13FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2155B146C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t _s16BusinessServices12BrandManagerC14cachingEnabled8cacheURL35brandRemoteDataSourceNeedingFactoryACSb_10Foundation0H0VSgAA0cjklmN0_ptcfC_0(char a1, uint64_t a2, uint64_t *a3)
{
  if (qword_280E1C288 != -1)
  {
    swift_once();
  }

  v6 = sub_2155DA75C();
  __swift_project_value_buffer(v6, qword_280E1C7F0);
  v7 = sub_2155DA72C();
  v8 = sub_2155DA97C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&dword_2155AF000, v7, v8, "Creating brandManger with caching enabled: %{BOOL}d", v9, 8u);
    MEMORY[0x21606C4C0](v9, -1, -1);
  }

  v10 = type metadata accessor for XPCDaemonConnection();
  v11 = objc_allocWithZone(v10);
  v12 = [objc_opt_self() interfaceWithProtocol_];
  v13 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v14 = sub_2155DA7DC();
  v15 = [v13 initWithMachServiceName:v14 options:0];

  *&v11[OBJC_IVAR____TtC16BusinessServices19XPCDaemonConnection_connection] = v15;
  [v15 setRemoteObjectInterface_];
  v30.receiver = v11;
  v30.super_class = v10;
  v16 = objc_msgSendSuper2(&v30, sel_init);

  type metadata accessor for BrandService();
  swift_allocObject();
  v17 = sub_2155B1950(a1 & 1, v16);
  sub_2155B0E68(a3, v28);
  v29 = v17;
  v27[3] = &type metadata for BrandRemoteDataSourceFactoryComposition;
  v27[4] = &off_282780930;
  v27[0] = swift_allocObject();
  sub_2155B1CB4(v28, v27[0] + 16);
  type metadata accessor for BrandManager();
  v18 = swift_allocObject();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v27, &type metadata for BrandRemoteDataSourceFactoryComposition);
  v20 = *(off_282780910 + 8);
  MEMORY[0x28223BE20](v19, v19);
  v22 = (&v27[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);

  v24 = sub_2155B1D34(v22, v17, v18);
  __swift_destroy_boxed_opaque_existential_1(a3);
  sub_2155B1F44(a2, &qword_27CA64B20, &qword_2155DBDC0);
  sub_2155B1FA4(v28);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v24;
}

uint64_t sub_2155B17F4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2155DA75C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2155DA73C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_2155B1950(int a1, uint64_t a2)
{
  v18 = a2;
  v17 = a1;
  v16 = sub_2155DA9BC();
  v3 = *(v16 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v16, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2155DA9AC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v11 = sub_2155DA79C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  sub_2155B1BBC();
  sub_2155DA78C();
  v19 = MEMORY[0x277D84F90];
  sub_2155B1C08(&unk_280E1C268, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA64F00, &unk_2155DD3D0);
  sub_2155B1C50();
  sub_2155DAA2C();
  (*(v3 + 104))(v7, *MEMORY[0x277D85260], v16);
  *(v2 + 32) = sub_2155DA9EC();
  *(v2 + 24) = v17;
  v14 = v18;
  *(v2 + 16) = v18;
  [*(v14 + OBJC_IVAR____TtC16BusinessServices19XPCDaemonConnection_connection) resume];
  return v2;
}

unint64_t sub_2155B1BBC()
{
  result = qword_280E1C260;
  if (!qword_280E1C260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E1C260);
  }

  return result;
}

uint64_t sub_2155B1C08(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2155B1C50()
{
  result = qword_280E1C278;
  if (!qword_280E1C278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA64F00, &unk_2155DD3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E1C278);
  }

  return result;
}

uint64_t sub_2155B1D34(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v22 = &type metadata for BrandRemoteDataSourceFactoryComposition;
  v23 = &off_282780930;
  v6 = swift_allocObject();
  *&v21 = v6;
  v7 = a1[1];
  v6[1] = *a1;
  v6[2] = v7;
  v6[3] = a1[2];
  if (qword_280E1C288 != -1)
  {
    swift_once();
  }

  v8 = sub_2155DA75C();
  __swift_project_value_buffer(v8, qword_280E1C7F0);
  sub_2155B0E68(&v21, v20);
  v9 = sub_2155DA72C();
  v10 = sub_2155DA97C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    sub_2155B0E68(v20, &v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64E48, &qword_2155DC970);
    v13 = sub_2155DA84C();
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_1(v20);
    v16 = sub_2155BC03C(v13, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_2155AF000, v9, v10, "Creating BrandManger with BrandDataSource: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x21606C4C0](v12, -1, -1);
    MEMORY[0x21606C4C0](v11, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  sub_2155B146C(&v21, a3 + 16);
  *(a3 + 56) = a2;
  return a3;
}

uint64_t sub_2155B1F44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2155B2000(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  v2 = *(v1 + 56);

  return a1(v1, 64, 7);
}

uint64_t Brand.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_2155B1F44((v0 + 12), &qword_27CA64F58, &qword_2155DCFF0);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  return MEMORY[0x2821FE8D8](v0, 176, 7);
}

uint64_t BrandService.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_2155B223C()
{
  if (qword_27CA64B10 != -1)
  {
    swift_once();
  }

  qword_27CA65028 = qword_27CA65058;
  unk_27CA65030 = unk_27CA65060;
}

void sub_2155B22A8()
{
  v0 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];

  v3 = sub_2155DA60C();
  v5 = v4;

  qword_27CA65058 = v3;
  unk_27CA65060 = v5;
}

uint64_t BrandRemoteDataSourceNeedingFactory.brandModelWithURI(_:usingSim:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return sub_2155B24CC(a1, a2, a5, a6, a7, a8);
}

{
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  v16 = *(a8 + 16);

  v16(a1, a2, a3, a4, sub_2155D204C, v15, a7, a8);
}

uint64_t sub_2155B2494()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2155B2538()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2155B2578()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t sub_2155B25C4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_2155B25D8()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2155DA87C();
}

uint64_t sub_2155B2678(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2155B2734(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2155B27E4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2155B28A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2155B2964(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2155B29DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2155B2A5C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2155B2A94@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27CA64DF8;
  *a1 = qword_27CA64DF0;
  a1[1] = v2;
}

uint64_t sub_2155B2AF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2155B2B68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2155B2BE4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2155B2CA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2155B2D54()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2155B2D8C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2155B2DEC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2155B2E24()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2155B2E74()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2155B2EB0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2155B2EE8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2155B2F64()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2155B2FA0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2155B2FE0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2155B3018()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2155B3074()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2155B30AC()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2155B30F8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2155B3130()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2155B319C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2155B31E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA65070, "2\n");
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2155B3278()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

BusinessServices::BrandType_optional __swiftcall BrandType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t _s16BusinessServices10BrandModelPAAE14primaryLogoURL10Foundation0G0VSgvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2155DA67C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_2155B3464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v34 = a5;
  v32 = a3;
  v33 = a4;
  v30 = a1;
  v31 = a2;

  sub_2155B3AE0(a6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = &v27 - v12;
  v13 = sub_2155DA67C();
  v14 = *(*(v13 - 8) + 56);
  v15 = (v14)(&v27 - v12, 1, 1, v13);
  MEMORY[0x28223BE20](v15, v16);
  v28 = &v27 - v12;
  v14();
  *(a7 + 32) = 0;
  v17 = type metadata accessor for MapKitBrand(0);
  v18 = v17[13];
  (v14)(a7 + v18, 1, 1, v13);
  v19 = (a7 + v17[14]);
  v20 = (a7 + v17[15]);
  v21 = v17[17];
  v22 = (a7 + v17[16]);
  (v14)(a7 + v21, 1, 1, v13);
  v23 = (a7 + v17[18]);
  v24 = v31;
  *a7 = v30;
  *(a7 + 8) = v24;
  v25 = v33;
  *(a7 + 16) = v32;
  *(a7 + 24) = v25;
  *(a7 + 40) = 0u;
  *(a7 + 56) = 0u;
  *(a7 + 72) = 0u;
  *(a7 + 88) = v34;
  *(a7 + 96) = 0u;
  *(a7 + 112) = 0u;
  sub_2155B4C00(v29, a7 + v18);
  *v19 = 0;
  v19[1] = 0;
  *v20 = 0;
  v20[1] = 0;
  *v22 = 0;
  v22[1] = 0;
  result = sub_2155B4C00(v28, a7 + v21);
  *v23 = 0;
  v23[1] = 0;
  return result;
}

double sub_2155B365C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v36 = a1;
  v37 = a2;

  sub_2155B3AE0(a6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v35 = &v30 - v12;
  v13 = sub_2155DA67C();
  v14 = *(*(v13 - 8) + 56);
  v15 = (v14)(&v30 - v12, 1, 1, v13);
  MEMORY[0x28223BE20](v15, v16);
  v34 = &v30 - v12;
  v17 = v14();
  MEMORY[0x28223BE20](v17, v18);
  v33 = &v30 - v12;
  v14();
  v19 = type metadata accessor for RCSChatBotBrand(0);
  v32 = v19[13];
  (v14)(a7 + v32, 1, 1, v13);
  v20 = (a7 + v19[14]);
  v21 = (a7 + v19[15]);
  v22 = v19[16];
  v31 = v19[17];
  v23 = (a7 + v22);
  (v14)(a7 + v31, 1, 1, v13);
  v24 = v19[19];
  v25 = (a7 + v19[18]);
  (v14)(a7 + v24, 1, 1, v13);
  v26 = a7 + v19[20];
  v30 = xmmword_2155DBDB0;
  *v26 = xmmword_2155DBDB0;
  v27 = v37;
  *a7 = v36;
  *(a7 + 8) = v27;
  v28 = v39;
  *(a7 + 16) = v38;
  *(a7 + 24) = v28;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 80) = 0;
  *(a7 + 96) = 0;
  *(a7 + 104) = 0;
  *(a7 + 88) = v40;
  *(a7 + 112) = 0;
  *(a7 + 120) = 0;
  sub_2155B4C00(v35, a7 + v32);
  *v20 = 0;
  v20[1] = 0;
  *v21 = 0;
  v21[1] = 0;
  *v23 = 0;
  v23[1] = 0;
  sub_2155B4C00(v34, a7 + v31);
  *v25 = 0;
  v25[1] = 0;
  sub_2155B4C00(v33, a7 + v24);
  sub_2155B4528(*v26, *(v26 + 8));
  result = *&v30;
  *v26 = v30;
  *(a7 + v19[21]) = 0;
  return result;
}

uint64_t BrandModel.init(brandURI:type:name:isVerified:logoURL:brandInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v25 = a7;
  v23 = a4;
  v24 = a5;
  v21 = a1;
  v22 = a2;

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v14 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = sub_2155DA67C();
  v16 = *(*(v15 - 8) + 56);
  v17 = v16(&v21 - v14, 1, 1, v15);
  MEMORY[0x28223BE20](v17, v18);
  v16(&v21 - v14, 1, 1, v15);
  v20 = a6;
  (*(a10 + 208))(v21, v22, v23, v24, 0, 0, 0, 0, 0, 0, 0, 0, v20, 0, 0, &v21 - v14, 0, 0, 0, 0, 0, 0, &v21 - v14, 0, 0, a9, a10);
  return sub_2155B3AE0(v25);
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

uint64_t sub_2155B3AE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2155B3B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __int128 a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unint64_t a27)
{
  sub_2155B4528(a26, a27);

  sub_2155B3AE0(a25);
  *(a8 + 32) = 0;
  v28 = type metadata accessor for MapKitBrand(0);
  v29 = v28[13];
  v30 = sub_2155DA67C();
  v31 = *(*(v30 - 8) + 56);
  v31(a8 + v29, 1, 1, v30);
  v32 = (a8 + v28[14]);
  v33 = (a8 + v28[15]);
  v34 = v28[17];
  v35 = (a8 + v28[16]);
  v31(a8 + v34, 1, 1, v30);
  v36 = (a8 + v28[18]);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 40) = a7;
  *(a8 + 48) = a9;
  *(a8 + 64) = a10;
  *(a8 + 80) = a11;
  *(a8 + 88) = a12;
  *(a8 + 96) = a13;
  *(a8 + 104) = a14;
  *(a8 + 112) = a5;
  *(a8 + 120) = a6;
  sub_2155B4C00(a15, a8 + v29);
  *v32 = a16;
  v32[1] = a17;
  *v33 = a18;
  v33[1] = a19;
  *v35 = a20;
  v35[1] = a21;
  result = sub_2155B4C00(a22, a8 + v34);
  *v36 = a23;
  v36[1] = a24;
  return result;
}

uint64_t sub_2155B3D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unint64_t a29)
{
  sub_2155B4528(a28, a29);

  sub_2155B3AE0(a27);
  *(a8 + 48) = 0;
  v30 = type metadata accessor for GenericBrand(0);
  v31 = v30[10];
  v32 = sub_2155DA67C();
  v33 = *(*(v32 - 8) + 56);
  v33(a8 + v31, 1, 1, v32);
  v33(a8 + v30[11], 1, 1, v32);
  v34 = (a8 + v30[12]);
  v35 = (a8 + v30[13]);
  v43 = (a8 + v30[14]);
  v44 = v30[17];
  v36 = (a8 + v30[16]);
  v33(a8 + v44, 1, 1, v32);
  v37 = (a8 + v30[18]);
  v42 = (a8 + v30[19]);
  v41 = v30[21];
  v38 = (a8 + v30[20]);
  v33(a8 + v41, 1, 1, v32);
  v39 = (a8 + v30[22]);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *v34 = a7;
  v34[1] = a9;
  *v35 = a10;
  v35[1] = a11;
  *v43 = a12;
  v43[1] = a13;
  *(a8 + v30[15]) = a14;
  *v36 = a15;
  v36[1] = a16;
  *(a8 + 56) = a5;
  *(a8 + 64) = a6;
  sub_2155B4C00(a17, a8 + v44);
  *v37 = a18;
  v37[1] = a19;
  *v42 = a20;
  v42[1] = a21;
  *v38 = a22;
  v38[1] = a23;
  result = sub_2155B4C00(a24, a8 + v41);
  *v39 = a25;
  v39[1] = a26;
  *(a8 + 40) = 0;
  *(a8 + 16) = 5;
  return result;
}

double sub_2155B4038@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __int128 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unint64_t a27)
{
  v75 = a6;
  v73 = a5;
  v70 = a3;
  v71 = a4;
  v69 = a2;
  v67 = a1;
  v83 = a23;
  v84 = a24;
  v81 = a21;
  v82 = a22;
  v80 = a20;
  v78 = a7;
  v79 = a19;
  v76 = a17;
  v77 = a18;
  v74 = a16;
  v72 = a15;
  v68 = a14;
  v66 = a13;
  v65 = a12;
  v64 = a11;
  v63 = a10;
  v62 = a9;
  sub_2155B4528(a26, a27);

  sub_2155B3AE0(a25);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8, v30);
  v32 = &v58 - v31;
  v61 = &v58 - v31;
  v33 = sub_2155DA67C();
  v34 = *(*(v33 - 8) + 56);
  v34(v32, 1, 1, v33);
  v35 = type metadata accessor for RCSChatBotBrand(0);
  v60 = v35[13];
  v34((a8 + v60), 1, 1, v33);
  v36 = (a8 + v35[14]);
  v37 = (a8 + v35[15]);
  v38 = v35[16];
  v59 = v35[17];
  v39 = (a8 + v38);
  v34((a8 + v59), 1, 1, v33);
  v40 = v35[19];
  v41 = (a8 + v35[18]);
  v34((a8 + v40), 1, 1, v33);
  v42 = a8 + v35[20];
  v58 = xmmword_2155DBDB0;
  *v42 = xmmword_2155DBDB0;
  v43 = v69;
  v44 = v70;
  *a8 = v67;
  *(a8 + 8) = v43;
  v45 = v71;
  *(a8 + 16) = v44;
  *(a8 + 24) = v45;
  v46 = v75;
  *(a8 + 96) = v73;
  *(a8 + 104) = v46;
  v47 = v78;
  *(a8 + 32) = 0;
  *(a8 + 40) = v47;
  v48 = v63;
  *(a8 + 48) = v62;
  *(a8 + 64) = v48;
  *(a8 + 80) = v64;
  *(a8 + 88) = v65;
  v49 = v68;
  *(a8 + 112) = v66;
  *(a8 + 120) = v49;
  sub_2155B4C00(v72, a8 + v60);
  v50 = v76;
  v51 = v77;
  *v36 = v74;
  v36[1] = v50;
  v52 = v79;
  v53 = v80;
  *v37 = v51;
  v37[1] = v52;
  v55 = v81;
  v54 = v82;
  *v39 = v53;
  v39[1] = v55;
  sub_2155B4C00(v54, a8 + v59);
  v56 = v84;
  *v41 = v83;
  v41[1] = v56;
  sub_2155B4C00(v61, a8 + v40);
  sub_2155B4528(*v42, *(v42 + 8));
  result = *&v58;
  *v42 = v58;
  *(a8 + v35[21]) = 0;
  return result;
}

uint64_t BrandModel.init(brandURI:name:categories:localizedDescription:primaryPhoneNumber:primaryBrandColorHexString:secondaryBrandColorHexString:isVerified:verifiedBy:website:messageNumber:emailAddress:address:termsAndConditionsURL:localizedResponseTime:genericCSSTemplateURL:logoFingerprint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 a22, uint64_t a23, uint64_t a24, unint64_t a25, uint64_t a26, uint64_t a27)
{
  v52 = a6;
  v53 = a7;
  v48 = a3;
  v49 = a4;
  v44 = a8;
  v45 = a1;
  v50 = a24;
  v51 = a5;
  v46 = a9;
  v47 = a2;
  v42 = a10;
  v40 = a12;
  v41 = a11;
  v39 = a13;
  v38 = a14;
  v37 = a17;
  v36 = a18;
  v35 = a22;
  v43 = a25;

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v30 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = sub_2155B13FC(a16, &v35 - v30);
  MEMORY[0x28223BE20](v31, v32);
  sub_2155B13FC(a21, &v35 - v30);
  v34 = v39;
  (*(a27 + 208))(v45, v47, v48, v49, v51, v52, v53, v46, v42, *(&v42 + 1), v41, v40, v34, v38, a15, &v35 - v30, v37, *(&v37 + 1), v36, *(&v36 + 1), a19, a20, &v35 - v30, v35, *(&v35 + 1), a26, a27);
  sub_2155B4528(v50, v43);
  sub_2155B3AE0(v54);
  sub_2155B3AE0(a21);
  return sub_2155B3AE0(a16);
}

uint64_t sub_2155B4528(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2155B453C(a1, a2);
  }

  return a1;
}

uint64_t sub_2155B453C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t static BrandModel.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness, v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v19 - v13;
  sub_2155DAA5C();
  sub_2155DAA5C();
  v15 = *(swift_getAssociatedConformanceWitness() + 8);
  v16 = sub_2155DA7CC();
  v17 = *(v6 + 8);
  v17(v11, AssociatedTypeWitness);
  v17(v14, AssociatedTypeWitness);
  return v16 & 1;
}

uint64_t BrandModel.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v7);
  v9 = &v11 - v8;
  sub_2155DAA5C();
  swift_getAssociatedConformanceWitness();
  sub_2155DA7BC();
  return (*(v5 + 8))(v9, AssociatedTypeWitness);
}

uint64_t BrandModel.description.getter(uint64_t a1, uint64_t a2)
{
  v6 = (*(a2 + 48))();
  MEMORY[0x21606B9D0](2108704, 0xE300000000000000);
  v4 = (*(a2 + 32))(a1, a2);
  MEMORY[0x21606B9D0](v4);

  return v6;
}

uint64_t MapKitBrand.brandURI.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MapKitBrand.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MapKitBrand.categories.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t MapKitBrand.primaryPhoneNumber.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t MapKitBrand.primaryBrandColorHexString.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t MapKitBrand.secondaryBrandColorHexString.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t MapKitBrand.verifiedBy.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t MapKitBrand.verifiedBy.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t MapKitBrand.localizedDescription.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t MapKitBrand.localizedDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t MapKitBrand.website.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MapKitBrand(0) + 52);

  return sub_2155B13FC(v3, a1);
}

uint64_t MapKitBrand.website.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MapKitBrand(0) + 52);

  return sub_2155B4C00(a1, v3);
}

uint64_t sub_2155B4C00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MapKitBrand.emailAddress.getter()
{
  v1 = (v0 + *(type metadata accessor for MapKitBrand(0) + 60));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MapKitBrand.emailAddress.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MapKitBrand(0) + 60));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MapKitBrand.init(brandURI:name:localizedDescription:primaryPhoneNumber:primaryBrandColorHexString:secondaryBrandColorHexString:isVerified:verifiedBy:website:messageNumber:emailAddress:address:termsAndConditionsURL:localizedResponseTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  *(a9 + 32) = 0;
  v26 = type metadata accessor for MapKitBrand(0);
  v27 = v26[13];
  v28 = sub_2155DA67C();
  v29 = *(*(v28 - 8) + 56);
  v29(a9 + v27, 1, 1, v28);
  v30 = (a9 + v26[14]);
  v31 = (a9 + v26[15]);
  v32 = v26[17];
  v33 = (a9 + v26[16]);
  v29(a9 + v32, 1, 1, v28);
  v34 = (a9 + v26[18]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14;
  *(a9 + 104) = a15;
  *(a9 + 112) = a5;
  *(a9 + 120) = a6;
  sub_2155B4C00(a16, a9 + v27);
  *v30 = a17;
  v30[1] = a18;
  *v31 = a19;
  v31[1] = a20;
  *v33 = a21;
  v33[1] = a22;
  result = sub_2155B4C00(a23, a9 + v32);
  *v34 = a24;
  v34[1] = a25;
  return result;
}

uint64_t sub_2155B5154()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_2155B518C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t sub_2155B51BC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_2155B51EC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t sub_2155B5224()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t sub_2155B5264(uint64_t a1)
{
  v2 = (v1 + *(a1 + 60));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_2155B52A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int *a26)
{
  *(a9 + 32) = 0;
  v27 = a26[13];
  v28 = sub_2155DA67C();
  v29 = *(*(v28 - 8) + 56);
  v29(a9 + v27, 1, 1, v28);
  v30 = (a9 + a26[14]);
  v31 = (a9 + a26[15]);
  v32 = a26[17];
  v33 = (a9 + a26[16]);
  v29(a9 + v32, 1, 1, v28);
  v34 = (a9 + a26[18]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14;
  *(a9 + 104) = a15;
  *(a9 + 112) = a5;
  *(a9 + 120) = a6;
  sub_2155B4C00(a16, a9 + v27);
  *v30 = a17;
  v30[1] = a18;
  *v31 = a19;
  v31[1] = a20;
  *v33 = a21;
  v33[1] = a22;
  result = sub_2155B4C00(a23, a9 + v32);
  *v34 = a24;
  v34[1] = a25;
  return result;
}

uint64_t sub_2155B54D0()
{
  v2 = v0[2];
  v3 = v0[3];

  MEMORY[0x21606B9D0](2108704, 0xE300000000000000);
  MEMORY[0x21606B9D0](*v0, v0[1]);
  return v2;
}

uint64_t sub_2155B5528(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 32))() == 0xD00000000000002CLL && 0x80000002155E0480 == v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2155DABAC();
  }

  return v4 & 1;
}

uint64_t sub_2155B55B4(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 32))() == 0xD00000000000002CLL && 0x80000002155E0450 == v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2155DABAC();
  }

  return v4 & 1;
}

uint64_t GenericBrand.init(brandURI:type:name:isVerified:logoURL:brandInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v13 = *a3;
  v14 = type metadata accessor for GenericBrand(0);
  *(a9 + 56) = 0;
  *(a9 + 64) = 0;
  *(a9 + 48) = 0;
  v15 = v14[10];
  v16 = sub_2155DA67C();
  v17 = *(*(v16 - 8) + 56);
  v17(a9 + v15, 1, 1, v16);
  v17(a9 + v14[11], 1, 1, v16);
  v18 = (a9 + v14[12]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (a9 + v14[13]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (a9 + v14[14]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (a9 + v14[16]);
  *v21 = 0;
  v21[1] = 0;
  v17(a9 + v14[17], 1, 1, v16);
  v22 = (a9 + v14[18]);
  *v22 = 0;
  v22[1] = 0;
  v23 = (a9 + v14[19]);
  *v23 = 0;
  v23[1] = 0;
  v24 = (a9 + v14[20]);
  *v24 = 0;
  v24[1] = 0;
  v17(a9 + v14[21], 1, 1, v16);
  v25 = (a9 + v14[22]);
  *v25 = 0;
  v25[1] = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v13;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + v14[15]) = a6;
  result = sub_2155B4C00(a7, a9 + v15);
  *(a9 + 40) = a8;
  return result;
}

uint64_t GenericBrand.init(brandURI:name:localizedDescription:primaryPhoneNumber:primaryBrandColorHexString:secondaryBrandColorHexString:isVerified:verifiedBy:website:messageNumber:emailAddress:address:termsAndConditionsURL:localizedResponseTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  *(a9 + 48) = 0;
  v27 = type metadata accessor for GenericBrand(0);
  v28 = v27[10];
  v29 = sub_2155DA67C();
  v30 = *(*(v29 - 8) + 56);
  v30(a9 + v28, 1, 1, v29);
  v30(a9 + v27[11], 1, 1, v29);
  v31 = (a9 + v27[12]);
  v40 = (a9 + v27[13]);
  v32 = (a9 + v27[14]);
  v41 = v27[17];
  v33 = (a9 + v27[16]);
  v30(a9 + v41, 1, 1, v29);
  v34 = (a9 + v27[18]);
  v39 = (a9 + v27[19]);
  v38 = v27[21];
  v35 = (a9 + v27[20]);
  v30(a9 + v38, 1, 1, v29);
  v36 = (a9 + v27[22]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *v31 = a7;
  v31[1] = a8;
  *v40 = a10;
  v40[1] = a11;
  *v32 = a12;
  v32[1] = a13;
  *(a9 + v27[15]) = a14;
  *v33 = a15;
  v33[1] = a16;
  *(a9 + 56) = a5;
  *(a9 + 64) = a6;
  sub_2155B4C00(a17, a9 + v41);
  *v34 = a18;
  v34[1] = a19;
  *v39 = a20;
  v39[1] = a21;
  *v35 = a22;
  v35[1] = a23;
  result = sub_2155B4C00(a24, a9 + v38);
  *v36 = a25;
  v36[1] = a26;
  *(a9 + 40) = 0;
  *(a9 + 16) = 5;
  return result;
}

uint64_t GenericBrand.brandURI.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t GenericBrand.name.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t GenericBrand.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t GenericBrand.brandInfo.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t GenericBrand.categories.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t GenericBrand.localizedDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t GenericBrand.primaryLogoURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GenericBrand(0) + 40);

  return sub_2155B13FC(v3, a1);
}

uint64_t GenericBrand.primaryLogoURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GenericBrand(0) + 40);

  return sub_2155B4C00(a1, v3);
}

uint64_t GenericBrand.secondaryLogoURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GenericBrand(0) + 44);

  return sub_2155B13FC(v3, a1);
}

uint64_t GenericBrand.secondaryLogoURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GenericBrand(0) + 44);

  return sub_2155B4C00(a1, v3);
}

uint64_t GenericBrand.primaryPhoneNumber.getter()
{
  v1 = (v0 + *(type metadata accessor for GenericBrand(0) + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GenericBrand.primaryPhoneNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenericBrand(0) + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GenericBrand.primaryBrandColorHexString.getter()
{
  v1 = (v0 + *(type metadata accessor for GenericBrand(0) + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GenericBrand.primaryBrandColorHexString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenericBrand(0) + 52));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_2155B5FFC(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 56));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_2155B605C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 56));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t GenericBrand.isVerified.setter(char a1)
{
  result = type metadata accessor for GenericBrand(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t sub_2155B61A4(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 64));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_2155B6204(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 64));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_2155B62B0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 68);

  return sub_2155B13FC(v4, a2);
}

uint64_t sub_2155B6314(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2 + *(a2(0) + 68);

  return sub_2155B4C00(a1, v4);
}

uint64_t sub_2155B63BC(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 72));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_2155B641C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 72));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t GenericBrand.emailAddress.getter()
{
  v1 = (v0 + *(type metadata accessor for GenericBrand(0) + 76));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GenericBrand.emailAddress.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenericBrand(0) + 76));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GenericBrand.address.getter()
{
  v1 = (v0 + *(type metadata accessor for GenericBrand(0) + 80));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GenericBrand.address.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenericBrand(0) + 80));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t GenericBrand.termsAndConditionsURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GenericBrand(0) + 84);

  return sub_2155B13FC(v3, a1);
}

uint64_t GenericBrand.termsAndConditionsURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GenericBrand(0) + 84);

  return sub_2155B4C00(a1, v3);
}

uint64_t GenericBrand.localizedResponseTime.getter()
{
  v1 = (v0 + *(type metadata accessor for GenericBrand(0) + 88));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t GenericBrand.localizedResponseTime.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GenericBrand(0) + 88));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

unint64_t sub_2155B67F0(char a1)
{
  result = 0x495255646E617262;
  switch(a1)
  {
    case 1:
      result = 0x707954646E617262;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x666E49646E617262;
      break;
    case 4:
      result = 0x69726F6765746163;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x4C7972616D697270;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 0xD00000000000001CLL;
      break;
    case 11:
      result = 0x6966697265567369;
      break;
    case 12:
      result = 0x6465696669726576;
      break;
    case 13:
      result = 0x65746973626577;
      break;
    case 14:
      result = 0x4E6567617373656DLL;
      break;
    case 15:
      result = 0x6464416C69616D65;
      break;
    case 16:
      result = 0x73736572646461;
      break;
    case 17:
      result = 0xD000000000000015;
      break;
    case 18:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2155B6A3C()
{
  v1 = *v0;
  sub_2155DAC3C();
  MEMORY[0x21606BD90](v1);
  return sub_2155DAC5C();
}

uint64_t sub_2155B6A84()
{
  v1 = *v0;
  sub_2155DAC3C();
  MEMORY[0x21606BD90](v1);
  return sub_2155DAC5C();
}

uint64_t sub_2155B6AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2155B96C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2155B6B10(uint64_t a1)
{
  v2 = sub_2155B70F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2155B6B4C(uint64_t a1)
{
  v2 = sub_2155B70F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenericBrand.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B28, &qword_2155DBDC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v49 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2155B70F8();
  sub_2155DAC7C();
  v12 = *v3;
  v13 = v3[1];
  LOBYTE(v50) = 0;
  sub_2155DAB5C();
  if (!v2)
  {
    LOBYTE(v50) = *(v3 + 16);
    v51 = 1;
    sub_2155B714C();
    sub_2155DAB7C();
    v14 = v3[3];
    v15 = v3[4];
    LOBYTE(v50) = 2;
    sub_2155DAB5C();
    v50 = v3[5];
    v51 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B40, &qword_2155DBDD0);
    sub_2155B8280(&qword_27CA64B48);
    sub_2155DAB4C();
    v50 = v3[6];
    v51 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B50, &qword_2155DBDD8);
    sub_2155B82EC(&qword_27CA64B58);
    sub_2155DAB4C();
    v16 = v3[7];
    v17 = v3[8];
    LOBYTE(v50) = 5;
    sub_2155DAB3C();
    v18 = type metadata accessor for GenericBrand(0);
    v19 = v18[10];
    LOBYTE(v50) = 6;
    sub_2155DA67C();
    sub_2155B8358(&qword_27CA64B60);
    sub_2155DAB4C();
    v20 = v18[11];
    LOBYTE(v50) = 7;
    sub_2155DAB4C();
    v21 = (v3 + v18[12]);
    v22 = *v21;
    v23 = v21[1];
    LOBYTE(v50) = 8;
    sub_2155DAB3C();
    v24 = (v3 + v18[13]);
    v25 = *v24;
    v26 = v24[1];
    LOBYTE(v50) = 9;
    sub_2155DAB3C();
    v27 = (v3 + v18[14]);
    v28 = *v27;
    v29 = v27[1];
    LOBYTE(v50) = 10;
    sub_2155DAB3C();
    v30 = *(v3 + v18[15]);
    LOBYTE(v50) = 11;
    sub_2155DAB6C();
    v31 = (v3 + v18[16]);
    v32 = *v31;
    v33 = v31[1];
    LOBYTE(v50) = 12;
    sub_2155DAB3C();
    v34 = v18[17];
    LOBYTE(v50) = 13;
    sub_2155DAB4C();
    v35 = (v3 + v18[18]);
    v36 = *v35;
    v37 = v35[1];
    LOBYTE(v50) = 14;
    sub_2155DAB3C();
    v38 = (v3 + v18[19]);
    v39 = *v38;
    v40 = v38[1];
    LOBYTE(v50) = 15;
    sub_2155DAB3C();
    v41 = (v3 + v18[20]);
    v42 = *v41;
    v43 = v41[1];
    LOBYTE(v50) = 16;
    sub_2155DAB3C();
    v44 = v18[21];
    LOBYTE(v50) = 17;
    sub_2155DAB4C();
    v45 = (v3 + v18[22]);
    v46 = *v45;
    v47 = v45[1];
    LOBYTE(v50) = 18;
    sub_2155DAB3C();
  }

  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_2155B70F8()
{
  result = qword_27CA64B30;
  if (!qword_27CA64B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64B30);
  }

  return result;
}

unint64_t sub_2155B714C()
{
  result = qword_27CA64B38;
  if (!qword_27CA64B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64B38);
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

uint64_t _s16BusinessServices11MapKitBrandV9hashValueSivg_0()
{
  sub_2155DAC3C();
  v1 = *v0;
  v2 = v0[1];
  sub_2155DA87C();
  return sub_2155DAC5C();
}

uint64_t GenericBrand.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B68, &qword_2155DBDE0);
  v110 = *(v112 - 8);
  v4 = *(v110 + 64);
  MEMORY[0x28223BE20](v112, v5);
  v7 = &v99 - v6;
  v8 = type metadata accessor for GenericBrand(0);
  v9 = *(*(v8 - 1) + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = (&v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v11 + 40);
  v15 = sub_2155DA67C();
  v16 = *(*(v15 - 8) + 56);
  v119 = v14;
  v16(v13 + v14, 1, 1, v15);
  v118 = v8[11];
  v16(v13 + v118, 1, 1, v15);
  v115 = v8[17];
  v16(v13 + v115, 1, 1, v15);
  v114 = v8[21];
  v117 = v13;
  v16(v13 + v114, 1, 1, v15);
  v17 = a1[3];
  v18 = a1[4];
  v113 = a1;
  v19 = a1;
  v20 = v7;
  __swift_project_boxed_opaque_existential_1(v19, v17);
  sub_2155B70F8();
  sub_2155DAC6C();
  if (v2)
  {
    v120 = v2;
    v26 = v117;
    __swift_destroy_boxed_opaque_existential_1(v113);
    v116 = 0;
LABEL_4:

    sub_2155B3AE0(v26 + v119);
    sub_2155B3AE0(v26 + v118);

    sub_2155B3AE0(v26 + v115);

    return sub_2155B3AE0(v26 + v114);
  }

  v22 = v110;
  v21 = v111;
  LOBYTE(v121) = 0;
  v23 = v112;
  v24 = sub_2155DAB0C();
  v120 = 0;
  v28 = v117;
  *v117 = v24;
  v28[1] = v25;
  v122 = 1;
  sub_2155B822C();
  v29 = v120;
  sub_2155DAB2C();
  if (v29)
  {
    v120 = v29;
    (*(v22 + 8))(v20, v23);
    LODWORD(v112) = 0;
    v116 = 0;
    v108 = 0;
    v109 = 0;
    v105 = 0;
    v106 = 0;
    v107 = 0;
    goto LABEL_8;
  }

  *(v28 + 16) = v121;
  LOBYTE(v121) = 2;
  v30 = sub_2155DAB0C();
  v120 = 0;
  v28[3] = v30;
  v28[4] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B40, &qword_2155DBDD0);
  v122 = 3;
  sub_2155B8280(&qword_27CA64B78);
  v35 = v120;
  sub_2155DAAFC();
  v120 = v35;
  if (v35)
  {
    (*(v22 + 8))(v20, v23);
    v116 = 0;
    v108 = 0;
    v109 = 0;
    v105 = 0;
    v106 = 0;
    v107 = 0;
LABEL_14:
    LODWORD(v112) = 1;
    goto LABEL_8;
  }

  v107 = v121;
  v28[5] = v121;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B50, &qword_2155DBDD8);
  v122 = 4;
  sub_2155B82EC(&qword_27CA64B80);
  v36 = v120;
  sub_2155DAAFC();
  if (v36)
  {
    v120 = v36;
    (*(v22 + 8))(v20, v23);
    v116 = 0;
    v108 = 0;
    v109 = 0;
    v105 = 0;
    v106 = 0;
    goto LABEL_14;
  }

  v103 = v121;
  v28[6] = v121;
  LOBYTE(v121) = 5;
  v37 = sub_2155DAAEC();
  v120 = 0;
  v28[7] = v37;
  v28[8] = v38;
  v106 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v116 = &v99;
  v102 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8, v40);
  v109 = v41;
  v42 = &v99 - v41;
  LOBYTE(v121) = 6;
  v43 = sub_2155B8358(&qword_27CA64B88);
  v108 = v42;
  v101 = v43;
  v44 = v120;
  sub_2155DAAFC();
  v120 = v44;
  if (v44)
  {
    goto LABEL_17;
  }

  v45 = sub_2155B4C00(v108, v28 + v119);
  v116 = &v99;
  MEMORY[0x28223BE20](v45, v46);
  LOBYTE(v121) = 7;
  v109 = &v99 - v109;
  v47 = v120;
  sub_2155DAAFC();
  v120 = v47;
  if (v47)
  {
LABEL_17:
    (*(v22 + 8))(v20, v23);
    LODWORD(v112) = 1;
    v116 = 0;
    v108 = 0;
    v109 = 0;
    v105 = 0;
    goto LABEL_8;
  }

  sub_2155B4C00(v109, v28 + v118);
  LOBYTE(v121) = 8;
  v48 = v120;
  v49 = sub_2155DAAEC();
  v120 = v48;
  if (v48)
  {
    (*(v22 + 8))(v20, v23);
    v116 = 0;
    v108 = 0;
    v109 = 0;
    v105 = 0;
    LODWORD(v112) = 1;
    goto LABEL_8;
  }

  v51 = (v28 + v8[12]);
  *v51 = v49;
  v51[1] = v50;
  v105 = v50;
  LOBYTE(v121) = 9;
  v52 = v20;
  v53 = v120;
  v54 = sub_2155DAAEC();
  v109 = v55;
  v120 = v53;
  if (v53)
  {
    (*(v22 + 8))(v20, v112);
    v116 = 0;
    v108 = 0;
    v109 = 0;
LABEL_27:
    LODWORD(v112) = 1;
LABEL_28:
    v28 = v117;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v113);
    v26 = v28;
    v32 = v28[1];

    v33 = 0;
    if (!v112)
    {
      goto LABEL_4;
    }

LABEL_9:
    v104 = v33;
    v34 = v26[4];

    goto LABEL_4;
  }

  v56 = (v117 + v8[13]);
  v57 = v109;
  *v56 = v54;
  v56[1] = v57;
  LOBYTE(v121) = 10;
  v58 = v120;
  v59 = sub_2155DAAEC();
  v108 = v60;
  v120 = v58;
  if (v58)
  {
    (*(v22 + 8))(v20, v112);
    v116 = 0;
    v108 = 0;
    goto LABEL_27;
  }

  v61 = (v117 + v8[14]);
  v62 = v108;
  *v61 = v59;
  v61[1] = v62;
  LOBYTE(v121) = 11;
  v63 = v120;
  v64 = sub_2155DAB1C();
  v120 = v63;
  if (v63 || (*(v117 + v8[15]) = v64 & 1, LOBYTE(v121) = 12, v65 = v120, v66 = sub_2155DAAEC(), v116 = v67, (v120 = v65) != 0))
  {
    (*(v22 + 8))(v20, v112);
    v116 = 0;
    goto LABEL_27;
  }

  v68 = v116;
  v69 = (v117 + v8[16]);
  *v69 = v66;
  v69[1] = v68;
  MEMORY[0x28223BE20](v66, v67);
  v71 = &v99 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v121) = 13;
  v72 = v120;
  sub_2155DAAFC();
  v120 = v72;
  if (v72)
  {
    (*(v22 + 8))(v52, v112);
    LODWORD(v112) = 1;
    goto LABEL_28;
  }

  sub_2155B4C00(v71, v117 + v115);
  LOBYTE(v121) = 14;
  v73 = v120;
  v74 = sub_2155DAAEC();
  v100 = v75;
  v120 = v73;
  if (v73)
  {
    (*(v22 + 8))(v52, v112);
    goto LABEL_27;
  }

  v76 = (v117 + v8[18]);
  v77 = v100;
  *v76 = v74;
  v76[1] = v77;
  LOBYTE(v121) = 15;
  v78 = v120;
  v79 = sub_2155DAAEC();
  v99 = v80;
  v120 = v78;
  if (v78)
  {
    (*(v22 + 8))(v52, v112);
    v104 = 0;
    v99 = 0;
LABEL_40:
    __swift_destroy_boxed_opaque_existential_1(v113);
    v26 = v117;
    v94 = v117[1];

    v33 = v104;
    goto LABEL_9;
  }

  v81 = (v117 + v8[19]);
  v82 = v99;
  *v81 = v79;
  v81[1] = v82;
  LOBYTE(v121) = 16;
  v83 = v120;
  v84 = sub_2155DAAEC();
  v104 = v85;
  v120 = v83;
  if (v83)
  {
    (*(v22 + 8))(v52, v112);
    v104 = 0;
    goto LABEL_40;
  }

  v86 = (v117 + v8[20]);
  v87 = v104;
  *v86 = v84;
  v86[1] = v87;
  MEMORY[0x28223BE20](v84, v85);
  v89 = &v99 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v121) = 17;
  v90 = v120;
  sub_2155DAAFC();
  v120 = v90;
  if (v90 || (sub_2155B4C00(v89, v117 + v114), LOBYTE(v121) = 18, v91 = v120, v92 = sub_2155DAAEC(), (v120 = v91) != 0))
  {
    (*(v22 + 8))(v52, v112);
    goto LABEL_40;
  }

  v95 = v92;
  v96 = v93;
  v97 = v117;
  v98 = (v117 + v8[22]);
  (*(v22 + 8))(v52, v112);
  *v98 = v95;
  v98[1] = v96;
  sub_2155B839C(v97, v21);
  __swift_destroy_boxed_opaque_existential_1(v113);
  return sub_2155B8400(v97);
}

uint64_t sub_2155B7E94()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_2155B7EF4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_2155B7F2C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_2155B7F64(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_2155B7FA8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 64));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_2155B7FE0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 72));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_2155B8018(uint64_t a1)
{
  v2 = (v1 + *(a1 + 76));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_2155B8050(uint64_t a1)
{
  v2 = (v1 + *(a1 + 80));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_2155B8098(uint64_t a1)
{
  v2 = (v1 + *(a1 + 88));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_2155B81BC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2155DABAC();
  }
}

uint64_t sub_2155B81EC()
{
  sub_2155DAC3C();
  v1 = *v0;
  v2 = v0[1];
  sub_2155DA87C();
  return sub_2155DAC5C();
}

unint64_t sub_2155B822C()
{
  result = qword_27CA64B70;
  if (!qword_27CA64B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64B70);
  }

  return result;
}

uint64_t sub_2155B8280(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA64B40, &qword_2155DBDD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2155B82EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA64B50, &qword_2155DBDD8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2155B8358(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2155DA67C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2155B839C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericBrand(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2155B8400(uint64_t a1)
{
  v2 = type metadata accessor for GenericBrand(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2155B8460()
{
  result = qword_27CA64BF0;
  if (!qword_27CA64BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64BF0);
  }

  return result;
}

uint64_t sub_2155B84B4(void *a1)
{
  a1[1] = sub_2155B8560(&qword_27CA64BF8, type metadata accessor for MapKitBrand);
  a1[2] = sub_2155B8560(&qword_27CA64C00, type metadata accessor for MapKitBrand);
  result = sub_2155B8560(&qword_27CA64C08, type metadata accessor for MapKitBrand);
  a1[3] = result;
  return result;
}

uint64_t sub_2155B8560(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2155B85FC(void *a1)
{
  a1[1] = sub_2155B8560(&qword_27CA64C18, type metadata accessor for GenericBrand);
  a1[2] = sub_2155B8560(&qword_27CA64C20, type metadata accessor for GenericBrand);
  result = sub_2155B8560(&qword_27CA64C28, type metadata accessor for GenericBrand);
  a1[3] = result;
  return result;
}

uint64_t sub_2155B86F0()
{
  v2 = v0[3];
  v3 = v0[4];

  MEMORY[0x21606B9D0](2108704, 0xE300000000000000);
  MEMORY[0x21606B9D0](*v0, v0[1]);
  return v2;
}

uint64_t getEnumTagSinglePayload for BrandType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BrandType(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_2155B8B8C()
{
  sub_2155B8E74(319, &qword_27CA64C50, &qword_27CA64B50, &qword_2155DBDD8);
  if (v0 <= 0x3F)
  {
    sub_2155B0E18(319, &qword_27CA64C58, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2155B8C98();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2155B8C98()
{
  if (!qword_27CA64C60)
  {
    sub_2155DA67C();
    v0 = sub_2155DAA0C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA64C60);
    }
  }
}

void sub_2155B8D18()
{
  sub_2155B8E74(319, &qword_27CA64C80, &qword_27CA64B40, &qword_2155DBDD0);
  if (v0 <= 0x3F)
  {
    sub_2155B8E74(319, &qword_27CA64C50, &qword_27CA64B50, &qword_2155DBDD8);
    if (v1 <= 0x3F)
    {
      sub_2155B0E18(319, &qword_27CA64C58, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2155B8C98();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2155B8E74(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2155DAA0C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for GenericBrand.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenericBrand.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2155B906C()
{
  result = qword_27CA64C98;
  if (!qword_27CA64C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64C98);
  }

  return result;
}

uint64_t sub_2155B9138(uint64_t a1, id *a2)
{
  result = sub_2155DA7EC();
  *a2 = 0;
  return result;
}

uint64_t sub_2155B91B0(uint64_t a1, id *a2)
{
  v3 = sub_2155DA7FC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2155B9230@<X0>(uint64_t *a1@<X8>)
{
  sub_2155DA80C();
  v2 = sub_2155DA7DC();

  *a1 = v2;
  return result;
}

void *sub_2155B9274@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2155B9284@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2155DA7DC();

  *a2 = v5;
  return result;
}

uint64_t sub_2155B92CC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2155DA80C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2155B92F8(uint64_t a1)
{
  v2 = sub_2155B8560(&qword_27CA64CC8, type metadata accessor for BSBrandServiceType);
  v3 = sub_2155B8560(&qword_27CA64CD0, type metadata accessor for BSBrandServiceType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2155B9444()
{
  v1 = *v0;
  v2 = sub_2155DA80C();
  v3 = MEMORY[0x21606BA00](v2);

  return v3;
}

uint64_t sub_2155B9480()
{
  v1 = *v0;
  sub_2155DA80C();
  sub_2155DA87C();
}

uint64_t sub_2155B94D4()
{
  v1 = *v0;
  sub_2155DA80C();
  sub_2155DAC3C();
  sub_2155DA87C();
  v2 = sub_2155DAC5C();

  return v2;
}

uint64_t sub_2155B9548(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2155DA80C();
  v6 = v5;
  if (v4 == sub_2155DA80C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2155DABAC();
  }

  return v9 & 1;
}

unint64_t sub_2155B961C()
{
  result = qword_27CA64CB8;
  if (!qword_27CA64CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64CB8);
  }

  return result;
}

unint64_t sub_2155B9674()
{
  result = qword_27CA64CC0;
  if (!qword_27CA64CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64CC0);
  }

  return result;
}

uint64_t sub_2155B96C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x495255646E617262 && a2 == 0xE800000000000000;
  if (v4 || (sub_2155DABAC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x707954646E617262 && a2 == 0xE900000000000065 || (sub_2155DABAC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_2155DABAC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x666E49646E617262 && a2 == 0xE90000000000006FLL || (sub_2155DABAC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365 || (sub_2155DABAC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002155E0370 == a2 || (sub_2155DABAC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4C7972616D697270 && a2 == 0xEE004C52556F676FLL || (sub_2155DABAC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002155E0390 == a2 || (sub_2155DABAC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002155E03B0 == a2 || (sub_2155DABAC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000002155E03D0 == a2 || (sub_2155DABAC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000002155E03F0 == a2 || (sub_2155DABAC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6966697265567369 && a2 == 0xEA00000000006465 || (sub_2155DABAC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6465696669726576 && a2 == 0xEA00000000007942 || (sub_2155DABAC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x65746973626577 && a2 == 0xE700000000000000 || (sub_2155DABAC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x4E6567617373656DLL && a2 == 0xED00007265626D75 || (sub_2155DABAC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572 || (sub_2155DABAC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (sub_2155DABAC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002155E0410 == a2 || (sub_2155DABAC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002155E0430 == a2)
  {

    return 18;
  }

  else
  {
    v6 = sub_2155DABAC();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

unint64_t sub_2155B9CC0()
{
  result = qword_27CA64CD8;
  if (!qword_27CA64CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64CD8);
  }

  return result;
}

uint64_t sub_2155B9D5C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2155B9D94()
{
  sub_2155B8C98();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2155B9E0C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2155B9E2C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2155B9E60(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2155B9E80(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_2155B9F68()
{
  sub_2155DAC3C();
  MEMORY[0x21606BD90](0);
  return sub_2155DAC5C();
}

uint64_t sub_2155B9FD4()
{
  sub_2155DAC3C();
  MEMORY[0x21606BD90](0);
  return sub_2155DAC5C();
}

uint64_t NetworkProvider.__allocating_init(customURLCache:waitsForConnectivity:)(void *a1, char a2)
{
  v4 = swift_allocObject();
  v5 = [objc_opt_self() defaultSessionConfiguration];
  v6 = v5;
  if (a1)
  {
    [v5 setURLCache_];
  }

  [v6 setWaitsForConnectivity_];
  v7 = [objc_opt_self() sessionWithConfiguration_];

  *(v4 + 16) = v7;
  return v4;
}

uint64_t NetworkProvider.init(customURLCache:waitsForConnectivity:)(void *a1, char a2)
{
  v5 = [objc_opt_self() defaultSessionConfiguration];
  v6 = v5;
  if (a1)
  {
    [v5 setURLCache_];
  }

  [v6 setWaitsForConnectivity_];
  v7 = [objc_opt_self() sessionWithConfiguration_];

  *(v2 + 16) = v7;
  return v2;
}

uint64_t sub_2155BA1A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2155BA24C;

  return (sub_2155BA464)(a1);
}

uint64_t sub_2155BA24C(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t NetworkProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2155BA3B4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2155BACF0;

  return (sub_2155BA464)(a1);
}

uint64_t sub_2155BA464(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2155BA484, 0, 0);
}

uint64_t sub_2155BA484()
{
  v1 = *(v0[3] + 16);
  v2 = *(MEMORY[0x277CC9D28] + 4);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_2155BA528;
  v4 = v0[2];

  return MEMORY[0x28211ED08](v4, 0);
}

uint64_t sub_2155BA528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*v4 + 32);
  v6 = *v4;
  v6[5] = a1;
  v6[6] = a2;
  v6[7] = a3;

  if (v3)
  {
    v7 = v6[1];

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2155BA660, 0, 0);
  }
}

uint64_t sub_2155BA660()
{
  v1 = *(v0 + 56);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2 && [v2 statusCode] == 200)
  {

    v3 = *(v0 + 8);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);

    return v3(v4, v5);
  }

  else
  {
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = *(v0 + 40);
    sub_2155BAB5C();
    swift_allocError();
    swift_willThrow();

    sub_2155B453C(v9, v7);
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t dispatch thunk of NetworkProviderProtocol.performDataTask(with:usingSIM:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2155BACF4;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of NetworkProvider.performDataTask(with:usingSIM:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 96);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2155BAA50;

  return v12(a1, a2, a3);
}

uint64_t sub_2155BAA50(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

unint64_t sub_2155BAB5C()
{
  result = qword_27CA64DD0;
  if (!qword_27CA64DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64DD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkProviderError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for NetworkProviderError(_WORD *result, int a2, int a3)
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

unint64_t sub_2155BAC9C()
{
  result = qword_27CA64DD8;
  if (!qword_27CA64DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64DD8);
  }

  return result;
}

id sub_2155BAD10()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [v0 getSubscriptionInfoWithError_];
  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_2155DA62C();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

id sub_2155BADE0(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v3 = [v2 readCachedChatBotRenderInformation:a1 forChatBot:a2 withError:v8];
  if (v3)
  {
    v4 = v8[0];
  }

  else
  {
    v5 = v8[0];
    sub_2155DA62C();

    swift_willThrow();
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

id sub_2155BAEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if ([v3 fetchRenderInformation:a1 forChatBot:a2 withOperationID:a3 withError:v7])
  {
    result = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_2155DA62C();

    result = swift_willThrow();
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2155BAF9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCDaemonConnection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t URL.hasSecureScheme.getter()
{
  sub_2155DA65C();
  if (!v0)
  {
    return 0;
  }

  v1 = sub_2155DA85C();
  v3 = v2;

  if (v1 == 0x7370747468 && v3 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v5 = sub_2155DABAC();

    return v5 & 1;
  }
}

uint64_t String.isAppleMainBrandURI.getter(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000002CLL && 0x80000002155E0480 == a2)
  {
    return 1;
  }

  else
  {
    return sub_2155DABAC();
  }
}

uint64_t String.isAppleMakoBrandURI.getter(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000002CLL && 0x80000002155E0450 == a2)
  {
    return 1;
  }

  else
  {
    return sub_2155DABAC();
  }
}

uint64_t static BrandManagerError.errorDomain.getter()
{
  swift_beginAccess();
  v0 = qword_27CA64DF0;

  return v0;
}

uint64_t static BrandManagerError.errorDomain.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_27CA64DF0 = a1;
  off_27CA64DF8 = a2;
}

uint64_t sub_2155BB238(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_27CA64DF0 = v2;
  off_27CA64DF8 = v1;
}

unint64_t BrandManagerError.errorUserInfo.getter()
{
  v1 = *v0;
  if (*v0 >= 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64E00, &qword_2155DC820);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2155DC7F0;
    v5 = *MEMORY[0x277CCA7E8];
    *(inited + 32) = sub_2155DA80C();
    *(inited + 40) = v6;
    *(inited + 72) = sub_2155BC714();
    *(inited + 48) = v1;
    sub_2155BC760(v1);
    v7 = sub_2155BC5E4(inited);
    swift_setDeallocating();
    sub_2155B1F44(inited + 32, &qword_27CA64E10, &qword_2155DC828);
    return v7;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];

    return sub_2155BC5E4(v2);
  }
}

uint64_t sub_2155BB3A0()
{
  swift_beginAccess();
  v0 = qword_27CA64DF0;

  return v0;
}

unint64_t sub_2155BB404()
{
  v1 = *v0;
  if (*v0 >= 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64E00, &qword_2155DC820);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2155DC7F0;
    v5 = *MEMORY[0x277CCA7E8];
    *(inited + 32) = sub_2155DA80C();
    *(inited + 40) = v6;
    *(inited + 72) = sub_2155BC714();
    *(inited + 48) = v1;
    sub_2155BC760(v1);
    v7 = sub_2155BC5E4(inited);
    swift_setDeallocating();
    sub_2155B1F44(inited + 32, &qword_27CA64E10, &qword_2155DC828);
    return v7;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];

    return sub_2155BC5E4(v2);
  }
}

uint64_t sub_2155BB55C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  if (qword_280E1C288 != -1)
  {
    swift_once();
  }

  v11 = sub_2155DA75C();
  __swift_project_value_buffer(v11, qword_280E1C7F0);

  v12 = sub_2155DA72C();
  v13 = sub_2155DA99C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = a3;
    *&v28[0] = swift_slowAlloc();
    v15 = *&v28[0];
    *v14 = 136446467;
    v16 = sub_2155DACAC();
    v18 = sub_2155BC03C(v16, v17, v28);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2081;
    *(v14 + 14) = sub_2155BC03C(a1, a2, v28);
    _os_log_impl(&dword_2155AF000, v12, v13, "[%{public}s] Fetching brand with URI: %{private}s", v14, 0x16u);
    swift_arrayDestroy();
    v19 = v15;
    a3 = v27;
    MEMORY[0x21606C4C0](v19, -1, -1);
    MEMORY[0x21606C4C0](v14, -1, -1);
  }

  v20 = __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
  v21 = v20[3];
  v22 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v21);
  sub_2155B1CB4(v20, v28);
  v23 = swift_allocObject();
  v24 = v28[1];
  *(v23 + 16) = v28[0];
  *(v23 + 32) = v24;
  *(v23 + 48) = v28[2];
  *(v23 + 64) = a3;
  *(v23 + 72) = a4;
  v25 = *(v22 + 32);

  v25(a1, a2, 0, 0, sub_2155BC960, v23, v21, v22);
}

uint64_t sub_2155BB7DC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = *v6;
  if (qword_280E1C288 != -1)
  {
    swift_once();
  }

  v13 = sub_2155DA75C();
  __swift_project_value_buffer(v13, qword_280E1C7F0);

  v14 = sub_2155DA72C();
  v15 = sub_2155DA99C();

  if (os_log_type_enabled(v14, v15))
  {
    v29 = a4;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v32[0] = v17;
    *v16 = 136446467;
    v18 = sub_2155DACAC();
    v20 = sub_2155BC03C(v18, v19, v32);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2081;
    *(v16 + 14) = sub_2155BC03C(a1, a2, v32);
    _os_log_impl(&dword_2155AF000, v14, v15, "[%{public}s] Fetching brand with URI: %{private}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21606C4C0](v17, -1, -1);
    v21 = v16;
    a4 = v29;
    MEMORY[0x21606C4C0](v21, -1, -1);
  }

  v22 = __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
  v23 = v22[3];
  v24 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v23);
  sub_2155B1CB4(v22, v32);
  v25 = swift_allocObject();
  v26 = v32[1];
  *(v25 + 16) = v32[0];
  *(v25 + 32) = v26;
  *(v25 + 48) = v32[2];
  *(v25 + 64) = a5;
  *(v25 + 72) = a6;
  v27 = *(v24 + 32);

  v27(a1, a2, a3, a4, sub_2155BCD64, v25, v23, v24);
}

uint64_t sub_2155BBA64(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  sub_2155BE974(a1, a2);
}

uint64_t sub_2155BBABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 56);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;

  sub_2155BDB24(a1, a2, sub_2155BC9B4, v10);
}

void sub_2155BBB68(uint64_t a1, unint64_t a2, char a3, void (*a4)(uint64_t, unint64_t, id))
{
  if (a3)
  {
    v5 = sub_2155DA61C();
    a4(0, 0xF000000000000000, v5);
  }

  else
  {
    a4(a1, a2, 0);
  }
}

uint64_t sub_2155BBBE4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 56);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;

  sub_2155BEABC(a1, a2, a3, sub_2155BC9C0, v12);
}

void sub_2155BBCA0(char a1, char a2, void (*a3)(void, id))
{
  if (a2)
  {
    v4 = sub_2155DA61C();
    a3(0, v4);
  }

  else
  {
    a3(a1 & 1, 0);
  }
}

uint64_t sub_2155BBD1C(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v9 = *(v4 + 56);

  LOBYTE(a3) = sub_2155BEF60(a1, a2, a3, a4);

  return a3 & 1;
}

uint64_t sub_2155BBDD0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, void (*a7)(void, void, void, void, void))
{
  v9 = v7;
  v15 = *v7;
  if (qword_280E1C288 != -1)
  {
    swift_once();
  }

  v16 = sub_2155DA75C();
  __swift_project_value_buffer(v16, qword_280E1C7F0);

  v17 = sub_2155DA72C();
  v18 = sub_2155DA99C();

  if (os_log_type_enabled(v17, v18))
  {
    v31 = v9;
    v19 = swift_slowAlloc();
    v32 = a7;
    v30 = swift_slowAlloc();
    v34 = v30;
    *v19 = 136446466;
    v20 = sub_2155DACAC();
    v22 = a1;
    v23 = a3;
    v24 = a4;
    v25 = a5;
    v26 = sub_2155BC03C(v20, v21, &v34);

    *(v19 + 4) = v26;
    a5 = v25;
    a4 = v24;
    a3 = v23;
    a1 = v22;
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_2155BC03C(v22, a2, &v34);
    _os_log_impl(&dword_2155AF000, v17, v18, a6, v19, 0x16u);
    swift_arrayDestroy();
    a7 = v32;
    MEMORY[0x21606C4C0](v30, -1, -1);
    v27 = v19;
    v9 = v31;
    MEMORY[0x21606C4C0](v27, -1, -1);
  }

  v28 = v9[7];

  a7(a1, a2, a3, a4, a5);
}

uint64_t BrandManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t sub_2155BC03C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2155BC108(v11, 0, 0, 1, a1, a2);
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
    sub_2155B0F9C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2155BC108(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2155BC214(a5, a6);
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
    result = sub_2155DAA7C();
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

uint64_t sub_2155BC214(uint64_t a1, unint64_t a2)
{
  v4 = sub_2155BC260(a1, a2);
  sub_2155BC390(&unk_28277F180);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2155BC260(uint64_t a1, unint64_t a2)
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

  v6 = sub_2155BC47C(v5, 0);
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

  result = sub_2155DAA7C();
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
        v10 = sub_2155DA89C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2155BC47C(v10, 0);
        result = sub_2155DAA4C();
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

uint64_t sub_2155BC390(uint64_t result)
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

  result = sub_2155BC4F0(result, v12, 1, v3);
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

void *sub_2155BC47C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA64E38, &unk_2155DC960);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2155BC4F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA64E38, &unk_2155DC960);
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

unint64_t sub_2155BC5E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA64E50, &qword_2155DC978);
    v3 = sub_2155DAACC();
    v4 = a1 + 32;

    while (1)
    {
      sub_2155BCCEC(v4, &v13, &qword_27CA64E10, &qword_2155DC828);
      v5 = v13;
      v6 = v14;
      result = sub_2155D0A68(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2155BCD54(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_2155BC714()
{
  result = qword_27CA64E08;
  if (!qword_27CA64E08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA64E08);
  }

  return result;
}

id sub_2155BC760(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_2155BC770(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64E28, &qword_2155DC950);
    v3 = sub_2155DAACC();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64E30, &qword_2155DC958);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v10 = (&v25 - v9);
  if (!v2)
  {
    return v3;
  }

  v11 = *(v7 + 48);
  v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v13 = *(v8 + 72);

  while (1)
  {
    sub_2155BCCEC(v12, v10, &qword_27CA64E30, &qword_2155DC958);
    v14 = *v10;
    v15 = v10[1];
    result = sub_2155D0A68(*v10, v15);
    if (v17)
    {
      break;
    }

    v18 = result;
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v19 = (v3[6] + 16 * result);
    *v19 = v14;
    v19[1] = v15;
    v20 = v3[7];
    v21 = sub_2155DA70C();
    result = (*(*(v21 - 8) + 32))(v20 + *(*(v21 - 8) + 72) * v18, v10 + v11, v21);
    v22 = v3[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_12;
    }

    v3[2] = v24;
    v12 += v13;
    if (!--v2)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t objectdestroyTm()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  v2 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

unint64_t sub_2155BC9D0()
{
  result = qword_27CA64E18;
  if (!qword_27CA64E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64E18);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16BusinessServices17BrandManagerErrorO(uint64_t *a1)
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

uint64_t sub_2155BCA54(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
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

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2155BCAB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_2155BCB0C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

unint64_t sub_2155BCC94()
{
  result = qword_27CA64E20;
  if (!qword_27CA64E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64E20);
  }

  return result;
}

uint64_t sub_2155BCCEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_2155BCD54(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_2155BCDF8()
{
  sub_2155BCEF4();
  if (v0 <= 0x3F)
  {
    sub_2155BCF58();
    if (v1 <= 0x3F)
    {
      sub_2155B8C98();
      if (v2 <= 0x3F)
      {
        sub_2155BCFA8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2155BCEF4()
{
  if (!qword_27CA64C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA64B50, &qword_2155DBDD8);
    v0 = sub_2155DAA0C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA64C50);
    }
  }
}

void sub_2155BCF58()
{
  if (!qword_27CA64C58)
  {
    v0 = sub_2155DAA0C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA64C58);
    }
  }
}

void sub_2155BCFA8()
{
  if (!qword_27CA64E80)
  {
    v0 = sub_2155DAA0C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA64E80);
    }
  }
}

double sub_2155BCFF8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v73 = a7;
  v69 = a5;
  v70 = a6;
  v66 = a3;
  v67 = a4;
  v64 = a2;
  v62 = a1;
  v80 = a24;
  v81 = a25;
  v78 = a22;
  v79 = a23;
  v77 = a21;
  v75 = a8;
  v76 = a20;
  v74 = a19;
  v71 = a17;
  v72 = a18;
  v68 = a16;
  v65 = a15;
  v63 = a14;
  v61 = a13;
  v60 = a12;
  v59 = a11;
  v58 = a10;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v30 = &v54 - v29;
  v57 = &v54 - v29;
  v31 = sub_2155DA67C();
  v32 = *(*(v31 - 8) + 56);
  v32(v30, 1, 1, v31);
  v33 = type metadata accessor for RCSChatBotBrand(0);
  v56 = v33[13];
  v32((a9 + v56), 1, 1, v31);
  v34 = (a9 + v33[14]);
  v35 = (a9 + v33[15]);
  v36 = v33[16];
  v55 = v33[17];
  v37 = (a9 + v36);
  v32((a9 + v55), 1, 1, v31);
  v38 = v33[19];
  v39 = (a9 + v33[18]);
  v32((a9 + v38), 1, 1, v31);
  v40 = a9 + v33[20];
  v54 = xmmword_2155DBDB0;
  *v40 = xmmword_2155DBDB0;
  v41 = v64;
  *a9 = v62;
  *(a9 + 8) = v41;
  v42 = v67;
  *(a9 + 16) = v66;
  *(a9 + 24) = v42;
  v43 = v70;
  *(a9 + 96) = v69;
  *(a9 + 104) = v43;
  v44 = v73;
  *(a9 + 32) = 0;
  *(a9 + 40) = v44;
  *(a9 + 48) = v75;
  *(a9 + 56) = v58;
  v45 = v60;
  *(a9 + 72) = v59;
  *(a9 + 80) = v45;
  *(a9 + 88) = v61;
  v46 = v65;
  *(a9 + 112) = v63;
  *(a9 + 120) = v46;
  sub_2155B4C00(v68, a9 + v56);
  v47 = v72;
  *v34 = v71;
  v34[1] = v47;
  v48 = v76;
  v49 = v77;
  *v35 = v74;
  v35[1] = v48;
  v51 = v78;
  v50 = v79;
  *v37 = v49;
  v37[1] = v51;
  sub_2155B4C00(v50, a9 + v55);
  v52 = v81;
  *v39 = v80;
  v39[1] = v52;
  sub_2155B4C00(v57, a9 + v38);
  sub_2155B4528(*v40, *(v40 + 8));
  result = *&v54;
  *v40 = v54;
  *(a9 + v33[21]) = 0;
  return result;
}

uint64_t sub_2155BD2E4(uint64_t a1)
{
  v2 = v1 + *(a1 + 80);
  v3 = *v2;
  sub_2155BD468(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_2155BD398(void *a1)
{
  a1[1] = sub_2155BD424(&qword_27CA64E90);
  a1[2] = sub_2155BD424(&qword_27CA64E98);
  result = sub_2155BD424(&unk_27CA64EA0);
  a1[3] = result;
  return result;
}

uint64_t sub_2155BD424(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RCSChatBotBrand(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2155BD468(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2155BD47C(a1, a2);
  }

  return a1;
}

uint64_t sub_2155BD47C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_2155BD4D0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_2155BD538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v13 = *(v8 + 16);
  v14 = *&v13[OBJC_IVAR____TtC16BusinessServices19XPCDaemonConnection_connection];
  v15 = v13;
  v16 = [v14 remoteObjectProxy];
  sub_2155DAA1C();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64EB0, &qword_2155DCAD8);
  swift_dynamicCast();
  v17 = aBlock[6];
  v18 = sub_2155DA7DC();
  v19 = sub_2155DA63C();
  if (a6)
  {
    a6 = sub_2155DA7DC();
  }

  v20 = *(v9 + 24);
  v21 = swift_allocObject();
  *(v21 + 16) = a7;
  *(v21 + 24) = a8;
  aBlock[4] = sub_2155C0614;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2155BDA78;
  aBlock[3] = &block_descriptor_26;
  v22 = _Block_copy(aBlock);

  [v17 assetDataForBrandURI:v18 URL:v19 type:a4 usingSim:a6 cachingEnabled:v20 completion:v22];
  _Block_release(v22);
  swift_unknownObjectRelease();
}

void sub_2155BD724(uint64_t a1, unint64_t a2, id a3, void (*a4)(id, unint64_t, uint64_t))
{
  if (a3)
  {
    v6 = a3;
    if (qword_280E1C288 != -1)
    {
      swift_once();
    }

    v7 = sub_2155DA75C();
    __swift_project_value_buffer(v7, qword_280E1C7F0);
    v8 = a3;
    v9 = sub_2155DA72C();
    v10 = sub_2155DA98C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v26 = v12;
      *v11 = 136315138;
      v13 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64ED0, &unk_2155DCB70);
      v14 = sub_2155DA84C();
      v16 = sub_2155BC03C(v14, v15, &v26);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_2155AF000, v9, v10, "Error fetching logo: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x21606C4C0](v12, -1, -1);
      MEMORY[0x21606C4C0](v11, -1, -1);
    }

    v17 = a3;
    a4(a3, 0, 1);
  }

  else if (a2 >> 60 == 15)
  {
    if (qword_280E1C288 != -1)
    {
      swift_once();
    }

    v18 = sub_2155DA75C();
    __swift_project_value_buffer(v18, qword_280E1C7F0);
    v19 = sub_2155DA72C();
    v20 = sub_2155DA97C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2155AF000, v19, v20, "Got nil data for logo even when there was no error", v21, 2u);
      MEMORY[0x21606C4C0](v21, -1, -1);
    }

    sub_2155C061C();
    v22 = swift_allocError();
    *v23 = 1;
    a4(v22, 0, 1);
  }

  else
  {
    sub_2155BD47C(a1, a2);
    a4(a1, a2, 0);

    sub_2155B4528(a1, a2);
  }
}

uint64_t sub_2155BDA78(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_2155DA69C();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_2155B4528(v4, v9);
}

void sub_2155BDB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  v9 = *&v8[OBJC_IVAR____TtC16BusinessServices19XPCDaemonConnection_connection];
  v10 = v8;
  v11 = [v9 remoteObjectProxy];
  sub_2155DAA1C();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64EB0, &qword_2155DCAD8);
  swift_dynamicCast();
  v12 = aBlock[6];
  v13 = sub_2155DA63C();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  aBlock[4] = sub_2155C08CC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2155BDA78;
  aBlock[3] = &block_descriptor_61;
  v15 = _Block_copy(aBlock);

  [v12 fetchAssetWithURL:v13 assetType:a2 completion:v15];
  _Block_release(v15);
  swift_unknownObjectRelease();
}

void sub_2155BDCC0(uint64_t a1, unint64_t a2, id a3, uint64_t a4, void (*a5)(id, unint64_t, uint64_t))
{
  if (a3)
  {
    v8 = a3;
    if (qword_280E1C288 != -1)
    {
      swift_once();
    }

    v9 = sub_2155DA75C();
    __swift_project_value_buffer(v9, qword_280E1C7F0);
    v10 = a3;
    v11 = sub_2155DA72C();
    v12 = sub_2155DA98C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 134218242;
      *(v13 + 4) = a4;
      *(v13 + 12) = 2080;
      v15 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64ED0, &unk_2155DCB70);
      v16 = sub_2155DA84C();
      v18 = sub_2155BC03C(v16, v17, &v28);

      *(v13 + 14) = v18;
      _os_log_impl(&dword_2155AF000, v11, v12, "Error fetching asset of type %ld. Error: %s", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x21606C4C0](v14, -1, -1);
      MEMORY[0x21606C4C0](v13, -1, -1);
    }

    v19 = a3;
    a5(a3, 0, 1);
  }

  else if (a2 >> 60 == 15)
  {
    if (qword_280E1C288 != -1)
    {
      swift_once();
    }

    v20 = sub_2155DA75C();
    __swift_project_value_buffer(v20, qword_280E1C7F0);
    v21 = sub_2155DA72C();
    v22 = sub_2155DA97C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2155AF000, v21, v22, "Got nil data for logo even when there was no error", v23, 2u);
      MEMORY[0x21606C4C0](v23, -1, -1);
    }

    sub_2155C061C();
    v24 = swift_allocError();
    *v25 = 1;
    a5(v24, 0, 1);
  }

  else
  {
    sub_2155BD47C(a1, a2);
    a5(a1, a2, 0);

    sub_2155B4528(a1, a2);
  }
}

uint64_t sub_2155BE024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[26] = a4;
  v5[27] = v4;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  return MEMORY[0x2822009F8](sub_2155BE04C, 0, 0);
}

uint64_t sub_2155BE04C()
{
  v1 = v0[27];
  if (*(v1 + 24) == 1)
  {
    v3 = v0[25];
    v2 = v0[26];
    v4 = v0[24];
    v5 = *(v1 + 16);
    v6 = *&v5[OBJC_IVAR____TtC16BusinessServices19XPCDaemonConnection_connection];
    v7 = v5;
    v8 = [v6 remoteObjectProxy];
    sub_2155DAA1C();

    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64EB0, &qword_2155DCAD8);
    swift_dynamicCast();
    v9 = v0[22];
    v0[28] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64EC0, &qword_2155DCB60);
    v0[29] = v10;
    v0[30] = *(*(v10 - 8) + 64);
    v11 = swift_task_alloc();
    v0[31] = v11;
    v12 = sub_2155DA7DC();
    v0[32] = v12;
    v13 = sub_2155DA63C();
    v0[33] = v13;
    v0[2] = v0;
    v0[7] = v11;
    v0[3] = sub_2155BE390;
    v14 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64EC8, &qword_2155DCB68);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2155BE644;
    v0[13] = &block_descriptor_19;
    v0[14] = v14;
    [v9 logoFileURLForBrandURI:v12 remoteURL:v13 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    if (qword_280E1C288 != -1)
    {
      swift_once();
    }

    v15 = sub_2155DA75C();
    __swift_project_value_buffer(v15, qword_280E1C7F0);
    v16 = sub_2155DA72C();
    v17 = sub_2155DA99C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2155AF000, v16, v17, "This SPI only works when caching is enabled", v18, 2u);
      MEMORY[0x21606C4C0](v18, -1, -1);
    }

    sub_2155C0538();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_2155BE390()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = sub_2155BE5B0;
  }

  else
  {
    v3 = sub_2155BE4A0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2155BE4A0()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  v4 = v0[28];
  v5 = v0[29];
  v6 = v0[23];
  v7 = v0[30] + 15;
  v8 = swift_task_alloc();
  sub_2155C05A4(v3, v8);
  v9 = (v8 + *(v5 + 48));
  v10 = *v9;
  v11 = v9[1];
  v12 = sub_2155DA67C();
  (*(*(v12 - 8) + 32))(v6, v8, v12);

  swift_unknownObjectRelease();

  v13 = v0[1];

  return v13(v10, v11);
}

uint64_t sub_2155BE5B0()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[28];
  swift_willThrow();
  swift_unknownObjectRelease();

  v6 = v0[34];
  v7 = v0[1];

  return v7();
}

uint64_t sub_2155BE644(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64ED0, &unk_2155DCB70);
    v6 = swift_allocError();
    *v7 = a4;
    v8 = a4;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64EC0, &qword_2155DCB60);
    v10 = v9 - 8;
    v11 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v9, v12);
    v14 = &v18 - v13;
    sub_2155DA64C();
    v15 = &v14[*(v10 + 56)];
    *v15 = sub_2155DA80C();
    v15[1] = v16;
    sub_2155C05A4(v14, *(*(v5 + 64) + 40));
    return swift_continuation_throwingResume();
  }
}

void sub_2155BE798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *&v7[OBJC_IVAR____TtC16BusinessServices19XPCDaemonConnection_connection];
  v9 = v7;
  v10 = [v8 remoteObjectProxy];
  sub_2155DAA1C();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64EB0, &qword_2155DCAD8);
  swift_dynamicCast();
  v11 = aBlock[6];
  v12 = sub_2155DA7DC();
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2155BE908;
  aBlock[3] = &block_descriptor_16;
  v13 = _Block_copy(aBlock);

  [v11 clearCachedAssetsForBrandURI:v12 completion:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();
}

void sub_2155BE908(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_2155BE974(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *&v5[OBJC_IVAR____TtC16BusinessServices19XPCDaemonConnection_connection];
  v7 = v5;
  v8 = [v6 remoteObjectProxy];
  sub_2155DAA1C();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64EB0, &qword_2155DCAD8);
  swift_dynamicCast();
  v9 = aBlock[6];
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2155BE908;
  aBlock[3] = &block_descriptor_64;
  v10 = _Block_copy(aBlock);

  [v9 clearUnusedCachedLogos_];
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

void sub_2155BEABC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 16);
  v12 = *&v11[OBJC_IVAR____TtC16BusinessServices19XPCDaemonConnection_connection];
  v13 = v11;
  v14 = [v12 remoteObjectProxy];
  sub_2155DAA1C();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64EB0, &qword_2155DCAD8);
  swift_dynamicCast();
  v15 = aBlock[6];
  v16 = sub_2155DA7DC();
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a4;
  v17[6] = a5;
  aBlock[4] = sub_2155C089C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2155BEEE8;
  aBlock[3] = &block_descriptor_55;
  v18 = _Block_copy(aBlock);
  v19 = a3;

  [v15 isBrandRegisteredWithIdentifier:v16 forService:v19 completion:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();
}

void sub_2155BEC7C(char a1, id a2, void *a3, uint64_t a4, unint64_t a5, void (*a6)(void))
{
  v6 = a6;
  if (a2)
  {
    v11 = a2;
    if (qword_280E1C288 != -1)
    {
      swift_once();
    }

    v12 = sub_2155DA75C();
    __swift_project_value_buffer(v12, qword_280E1C7F0);
    v13 = a2;
    v14 = a3;

    v15 = sub_2155DA72C();
    v16 = sub_2155DA98C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28 = v18;
      *v17 = 136315650;
      v19 = sub_2155DA80C();
      v21 = v6;
      v22 = sub_2155BC03C(v19, v20, &v28);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_2155BC03C(a4, a5, &v28);
      *(v17 + 22) = 2080;
      v23 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64ED0, &unk_2155DCB70);
      v24 = sub_2155DA84C();
      v26 = sub_2155BC03C(v24, v25, &v28);
      v6 = v21;

      *(v17 + 24) = v26;
      _os_log_impl(&dword_2155AF000, v15, v16, "Error fetching isBrandRegistered for Service %s Key %s Error: %s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21606C4C0](v18, -1, -1);
      MEMORY[0x21606C4C0](v17, -1, -1);
    }

    v27 = a2;
    v6(a2, 1);
  }

  else
  {
    a6(a1 & 1);
  }
}

void sub_2155BEEE8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_2155BEF60(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v33 = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = (v7 + 16);
  v9 = *(v4 + 16);
  v10 = *&v9[OBJC_IVAR____TtC16BusinessServices19XPCDaemonConnection_connection];
  v31 = sub_2155C07CC;
  v32 = v7;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_2155BD4D0;
  v30 = &block_descriptor_43;
  v11 = _Block_copy(&aBlock);
  v12 = v9;
  swift_retain_n();
  v13 = v10;

  v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v11);

  p_aBlock = &aBlock;
  sub_2155DAA1C();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64EB0, &qword_2155DCAD8);
  if (swift_dynamicCast())
  {
    v16 = v33;
    v17 = sub_2155DA7DC();
    v18 = swift_allocObject();
    v18[2] = a3;
    v18[3] = a1;
    v18[4] = v16;
    v18[5] = v6;
    v18[6] = v7;
    v31 = sub_2155C07D4;
    v32 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_2155BEEE8;
    v30 = &block_descriptor_49;
    p_aBlock = _Block_copy(&aBlock);

    v19 = a3;

    [v26 isBrandRegisteredWithIdentifier:v17 forService:v19 timeout:p_aBlock completion:a4];
    _Block_release(p_aBlock);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v20 = *v8;
  if (*v8)
  {
    v21 = *v8;
    swift_willThrow();
    v22 = v20;
  }

  else
  {
    swift_beginAccess();
    LOBYTE(p_aBlock) = *(v6 + 16);
  }

  return p_aBlock & 1;
}

id sub_2155BF298(void *a1, uint64_t a2)
{
  v4 = sub_2155DA75C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2155DA74C();
  v10 = a1;
  v11 = sub_2155DA72C();
  v12 = sub_2155DA98C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = a1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_2155AF000, v11, v12, "Error connecting to remote object: %@", v13, 0xCu);
    sub_2155C07EC(v14);
    MEMORY[0x21606C4C0](v14, -1, -1);
    MEMORY[0x21606C4C0](v13, -1, -1);
  }

  (*(v5 + 8))(v9, v4);
  swift_beginAccess();
  v17 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

uint64_t sub_2155BF468(char a1, id a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v14 = a2;
    if (qword_280E1C288 != -1)
    {
      swift_once();
    }

    v15 = sub_2155DA75C();
    __swift_project_value_buffer(v15, qword_280E1C7F0);
    v16 = a2;
    v17 = a3;

    v18 = sub_2155DA72C();
    v19 = sub_2155DA98C();

    if (os_log_type_enabled(v18, v19))
    {
      v30 = a4;
      v20 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32[0] = v31;
      *v20 = 136315650;
      v21 = sub_2155DA80C();
      v23 = sub_2155BC03C(v21, v22, v32);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_2155BC03C(v30, a5, v32);
      *(v20 + 22) = 2080;
      v24 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64ED0, &unk_2155DCB70);
      v25 = sub_2155DA84C();
      v27 = sub_2155BC03C(v25, v26, v32);

      *(v20 + 24) = v27;
      _os_log_impl(&dword_2155AF000, v18, v19, "Error fetching isBrandRegistered for Service %s Key %s Error: %s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21606C4C0](v31, -1, -1);
      MEMORY[0x21606C4C0](v20, -1, -1);
    }

    swift_beginAccess();
    *(a6 + 16) = 0;
    swift_beginAccess();
    v28 = *(a7 + 16);
    *(a7 + 16) = a2;
  }

  result = swift_beginAccess();
  *(a6 + 16) = a1 & 1;
  return result;
}

void sub_2155BF6E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 16);
  v12 = *&v11[OBJC_IVAR____TtC16BusinessServices19XPCDaemonConnection_connection];
  v13 = v11;
  v14 = [v12 remoteObjectProxy];
  sub_2155DAA1C();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64EB0, &qword_2155DCAD8);
  swift_dynamicCast();
  v15 = aBlock[6];
  v16 = sub_2155DA7DC();
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a4;
  v17[6] = a5;
  v17[7] = v5;
  aBlock[4] = sub_2155C0670;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2155BDA78;
  aBlock[3] = &block_descriptor_34;
  v18 = _Block_copy(aBlock);
  v19 = a3;

  [v15 brandDataWithIdentifier:v16 forService:v19 completion:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();
}

void sub_2155BF8AC(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, unint64_t a6, void (*a7)(void *, uint64_t), uint64_t a8, uint64_t a9)
{
  v52[1] = a8;
  v53 = a7;
  v52[0] = a5;
  v14 = type metadata accessor for GenericBrandLogoURLProvider(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for GenericBrand(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19, v21);
  v23 = v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v24 = a3;
    if (qword_280E1C288 != -1)
    {
      swift_once();
    }

    v25 = sub_2155DA75C();
    __swift_project_value_buffer(v25, qword_280E1C7F0);
    v26 = a3;
    v27 = a4;

    v28 = sub_2155DA72C();
    v29 = sub_2155DA98C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v60 = v31;
      *v30 = 136315650;
      v32 = sub_2155DA80C();
      v34 = sub_2155BC03C(v32, v33, &v60);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_2155BC03C(v52[0], a6, &v60);
      *(v30 + 22) = 2080;
      *&v57 = a3;
      v35 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64ED0, &unk_2155DCB70);
      v36 = sub_2155DA84C();
      v38 = sub_2155BC03C(v36, v37, &v60);

      *(v30 + 24) = v38;
      _os_log_impl(&dword_2155AF000, v28, v29, "Error fetching brand for Service %s Key %s Error: %s", v30, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21606C4C0](v31, -1, -1);
      MEMORY[0x21606C4C0](v30, -1, -1);
    }

    v39 = a3;
    v53(a3, 1);
  }

  else
  {
    v52[0] = a9;
    v40 = sub_2155DA5CC();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    sub_2155DA5BC();
    if (a2 >> 60 == 15)
    {
      sub_2155C0538();
      v43 = swift_allocError();
      *v44 = 2;
      v53(v43, 1);
    }

    else
    {
      v45 = a1;
      sub_2155BD47C(a1, a2);
      sub_2155B1C08(&unk_27CA64EE0, type metadata accessor for GenericBrand);
      sub_2155DA5AC();
      sub_2155B13FC(&v23[*(v19 + 40)], v18);
      v46 = *(v14 + 20);
      v47 = sub_2155DA67C();
      (*(*(v47 - 8) + 56))(&v18[v46], 1, 1, v47);
      v61 = v19;
      v62 = sub_2155B1C08(&qword_27CA64EF0, type metadata accessor for GenericBrand);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v60);
      sub_2155C0704(v23, boxed_opaque_existential_1, type metadata accessor for GenericBrand);
      v58 = v14;
      v59 = &off_28277F600;
      v49 = __swift_allocate_boxed_opaque_existential_1(&v57);
      sub_2155C0704(v18, v49, type metadata accessor for GenericBrandLogoURLProvider);
      v55 = type metadata accessor for BrandService();
      v56 = &off_28277F9B0;
      *&v54 = v52[0];
      type metadata accessor for Brand();
      v50 = swift_allocObject();
      sub_2155B146C(&v54, v50 + 136);
      sub_2155B146C(&v60, v50 + 16);
      sub_2155B146C(&v57, v50 + 56);
      *(v50 + 96) = 0u;
      *(v50 + 112) = 0u;
      *(v50 + 128) = 0;

      v53(v51, 0);

      sub_2155B4528(v45, a2);

      sub_2155C076C(v18, type metadata accessor for GenericBrandLogoURLProvider);
      sub_2155C076C(v23, type metadata accessor for GenericBrand);
    }
  }
}

void sub_2155BFE90(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 16);
  v12 = *&v11[OBJC_IVAR____TtC16BusinessServices19XPCDaemonConnection_connection];
  v13 = v11;
  v14 = [v12 remoteObjectProxy];
  sub_2155DAA1C();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64EB0, &qword_2155DCAD8);
  swift_dynamicCast();
  v15 = aBlock[6];
  v16 = sub_2155DA7DC();
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a4;
  v17[6] = a5;
  aBlock[4] = sub_2155C037C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2155BDA78;
  aBlock[3] = &block_descriptor;
  v18 = _Block_copy(aBlock);
  v19 = a3;

  [v15 brandAssetWithIdentifier:v16 forService:v19 completion:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();
}

void sub_2155C0050(uint64_t a1, unint64_t a2, id a3, void *a4, uint64_t a5, unint64_t a6, void (*a7)(void, void, void))
{
  if (a3)
  {
    v12 = a3;
    if (qword_280E1C288 != -1)
    {
      swift_once();
    }

    v13 = sub_2155DA75C();
    __swift_project_value_buffer(v13, qword_280E1C7F0);
    v14 = a3;
    v15 = a4;

    v16 = sub_2155DA72C();
    v17 = sub_2155DA98C();

    if (os_log_type_enabled(v16, v17))
    {
      v33 = a7;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34 = v19;
      *v18 = 136315650;
      v20 = sub_2155DA80C();
      v22 = sub_2155BC03C(v20, v21, &v34);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_2155BC03C(a5, a6, &v34);
      *(v18 + 22) = 2080;
      v23 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64ED0, &unk_2155DCB70);
      v24 = sub_2155DA84C();
      v26 = sub_2155BC03C(v24, v25, &v34);

      *(v18 + 24) = v26;
      _os_log_impl(&dword_2155AF000, v16, v17, "Error fetching brand asset for Service %s Key %s Error: %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21606C4C0](v19, -1, -1);
      v27 = v18;
      a7 = v33;
      MEMORY[0x21606C4C0](v27, -1, -1);
    }

    v28 = a3;
    a7(a3, 0, 1);
  }

  else if (a2 >> 60 == 15)
  {
    sub_2155C0538();
    v29 = swift_allocError();
    *v30 = 2;
    a7(v29, 0, 1);
  }

  else
  {
    sub_2155BD47C(a1, a2);
    a7(a1, a2, 0);

    sub_2155B4528(a1, a2);
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2155C03F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2155BA24C;

  return sub_2155BE024(a1, a2, a3, a4);
}

unint64_t sub_2155C0538()
{
  result = qword_27CA64EB8;
  if (!qword_27CA64EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64EB8);
  }

  return result;
}

uint64_t sub_2155C05A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64EC0, &qword_2155DCB60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2155C061C()
{
  result = qword_27CA64ED8;
  if (!qword_27CA64ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64ED8);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2155C0704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2155C076C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2155C07EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64EF8, &unk_2155DCB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t getEnumTagSinglePayload for BrandServiceError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BrandServiceError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2155C0A2C()
{
  result = qword_27CA64F10;
  if (!qword_27CA64F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64F10);
  }

  return result;
}

id OpaqueWrapper.__allocating_init(_:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_2155B0F9C(a1, v3 + OBJC_IVAR____BSOpaqueWrapper_wrappedThing);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

id OpaqueWrapper.init(_:)(uint64_t *a1)
{
  sub_2155B0F9C(a1, v1 + OBJC_IVAR____BSOpaqueWrapper_wrappedThing);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for OpaqueWrapper();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

id OpaqueWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OpaqueWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OpaqueWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of BrandAssetDataSource.assetData(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2155BAA50;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of BrandAssetDataSource.assetData(for:usingSim:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2155BACF4;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t BrandAssetNetworkFetcher.assetData(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2155C0F80, 0, 0);
}

uint64_t sub_2155C0F80()
{
  v25 = v0;
  if (qword_280E1C288 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_2155DA75C();
  __swift_project_value_buffer(v2, qword_280E1C7F0);
  v3 = sub_2155DA67C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  (*(v4 + 16))(v6, v1, v3);
  v7 = sub_2155DA72C();
  v8 = sub_2155DA97C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    sub_2155C19E0();
    v11 = sub_2155DAB8C();
    v13 = v12;
    (*(v4 + 8))(v6, v3);
    v14 = sub_2155BC03C(v11, v13, &v24);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2155AF000, v7, v8, "Fetching data for URL: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x21606C4C0](v10, -1, -1);
    MEMORY[0x21606C4C0](v9, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v15 = v0[3];

  v16 = v15[3];
  v17 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v18 = *(v17 + 8);
  v23 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  v0[4] = v20;
  *v20 = v0;
  v20[1] = sub_2155C12B8;
  v21 = v0[2];

  return (v23)(v21, 0, 0, v16, v17);
}

uint64_t sub_2155C12B8(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 32);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t BrandAssetNetworkFetcher.assetData(for:usingSim:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2155C13EC, 0, 0);
}

uint64_t sub_2155C13EC()
{
  v33 = v0;
  if (qword_280E1C288 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_2155DA75C();
  __swift_project_value_buffer(v3, qword_280E1C7F0);
  v4 = sub_2155DA67C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v2, v4);

  v8 = sub_2155DA72C();
  v9 = sub_2155DA97C();

  if (os_log_type_enabled(v8, v9))
  {
    v28 = v0[4];
    v29 = v0[3];
    v10 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v10 = 136315394;
    sub_2155C19E0();
    v11 = sub_2155DAB8C();
    v13 = v12;
    (*(v5 + 8))(v7, v4);
    v14 = sub_2155BC03C(v11, v13, &v32);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    if (v28)
    {
      v15 = v29;
    }

    else
    {
      v15 = 0;
    }

    if (v28)
    {
      v16 = v1;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    v17 = sub_2155BC03C(v15, v16, &v32);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_2155AF000, v8, v9, "Fetching asset data for URL: %s and simID: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21606C4C0](v30, -1, -1);
    MEMORY[0x21606C4C0](v10, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v18 = v0[5];

  v19 = v18[3];
  v20 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v21 = *(v20 + 8);
  v31 = (v21 + *v21);
  v22 = v21[1];
  v23 = swift_task_alloc();
  v0[6] = v23;
  *v23 = v0;
  v23[1] = sub_2155C1790;
  v24 = v0[3];
  v25 = v0[4];
  v26 = v0[2];

  return v31(v26, v24, v25, v19, v20);
}

uint64_t sub_2155C1790(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 48);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_2155C18A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2155BA24C;

  return BrandAssetNetworkFetcher.assetData(for:)(a1);
}

uint64_t sub_2155C1934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2155BACF0;

  return BrandAssetNetworkFetcher.assetData(for:usingSim:)(a1, a2, a3);
}

unint64_t sub_2155C19E0()
{
  result = qword_27CA64F28;
  if (!qword_27CA64F28)
  {
    sub_2155DA67C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64F28);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2155C1A40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2155C1A88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BrandAssetNetworkFetchError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BrandAssetNetworkFetchError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2155C1C40()
{
  result = qword_27CA64F30;
  if (!qword_27CA64F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64F30);
  }

  return result;
}

uint64_t RCSChatBotNetworkProvider.__allocating_init(customURLCache:waitsForConnectivity:)(void *a1, char a2)
{
  swift_allocObject();
  v4 = sub_2155C320C(a1, a2);

  return v4;
}

uint64_t RCSChatBotNetworkProvider.init(customURLCache:waitsForConnectivity:)(void *a1, char a2)
{
  v3 = sub_2155C320C(a1, a2);

  return v3;
}

uint64_t sub_2155C1D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2155C1DB0, 0, 0);
}

uint64_t sub_2155C1DB0()
{
  v54 = *MEMORY[0x277D85DE8];
  v2 = v0[4];
  v1 = v0[5];
  v3 = [objc_allocWithZone(MEMORY[0x277CC37B0]) initWithQueue_];
  v0[7] = v3;
  v4 = v3;
  v5 = sub_2155CC020(v2, v1, v4, &off_28277F6B8);
  v0[8] = v5;

  if (v5)
  {
    v0[2] = 0;
    v9 = [v4 getSystemConfiguration:v5 withError:v0 + 2];
    v0[9] = v9;
    v10 = v0[2];
    if (v9)
    {
      v11 = v9;
      v12 = v10;
      v13 = [v11 identity];
      if (v13)
      {
        v14 = v0[6];
        v15 = v13;
        v16 = [v13 impi];

        v17 = sub_2155DA80C();
        v19 = v18;

        v20 = sub_2155DA71C();
        v0[10] = v20;
        v21 = *(v20 - 8);
        v22 = v21;
        v0[11] = v21;
        v23 = *(v21 + 64) + 15;
        v24 = swift_task_alloc();
        v0[12] = v24;
        v25 = [v5 slotID];
        v26 = MEMORY[0x277CF6F30];
        if (v25 == 1)
        {
          v26 = MEMORY[0x277CF6F28];
        }

        (*(v22 + 104))(v24, *v26, v20);
        v27 = sub_2155DA70C();
        v0[13] = v27;
        v28 = *(v27 - 8);
        v0[14] = v28;
        v29 = *(v28 + 64) + 15;
        v30 = swift_task_alloc();
        v0[15] = v30;
        v31 = *(v14 + 24);
        v32 = swift_task_alloc();
        v32[2] = v17;
        v32[3] = v19;
        v32[4] = v24;
        v32[5] = v11;
        v32[6] = v14;

        os_unfair_lock_lock((v31 + 24));
        sub_2155C3330((v31 + 16), v30);
        os_unfair_lock_unlock((v31 + 24));
        v44 = v0[3];

        v45 = sub_2155DA59C();
        v0[16] = v45;
        v46 = *(v45 - 8);
        v0[17] = v46;
        v47 = *(v46 + 64) + 15;
        v48 = swift_task_alloc();
        v0[18] = v48;
        v49 = *(sub_2155DA67C() - 8);
        v50 = *(v49 + 64) + 15;
        swift_task_alloc();
        (*(v49 + 16))();
        sub_2155DA58C();

        v51 = *(MEMORY[0x277CF6F20] + 4);
        v52 = swift_task_alloc();
        v0[19] = v52;
        *v52 = v0;
        v52[1] = sub_2155C2484;
        v53 = *MEMORY[0x277D85DE8];

        return MEMORY[0x282146E18](v48);
      }

      if (qword_27CA64B00 != -1)
      {
        swift_once();
      }

      v39 = sub_2155DA75C();
      __swift_project_value_buffer(v39, qword_27CA66C00);
      v40 = sub_2155DA72C();
      v41 = sub_2155DA98C();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_2155AF000, v40, v41, "Did not find a valid impi", v42, 2u);
        MEMORY[0x21606C4C0](v42, -1, -1);
      }

      sub_2155C32DC();
      swift_allocError();
      *v43 = 2;
      swift_willThrow();
    }

    else
    {
      v38 = v10;
      sub_2155DA62C();

      swift_willThrow();
      v4 = v5;
    }
  }

  else
  {
    if (qword_27CA64B00 != -1)
    {
      swift_once();
    }

    v33 = sub_2155DA75C();
    __swift_project_value_buffer(v33, qword_27CA66C00);
    v34 = sub_2155DA72C();
    v35 = sub_2155DA98C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2155AF000, v34, v35, "Did not find any valid CTXPCServiceSubscriptionContext object", v36, 2u);
      MEMORY[0x21606C4C0](v36, -1, -1);
    }

    sub_2155C32DC();
    swift_allocError();
    *v37 = 0;
    swift_willThrow();
  }

  v6 = v0[1];
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t sub_2155C2484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *v4;
  v6 = *(*v4 + 152);
  v11 = *v4;
  v5[20] = a1;
  v5[21] = a2;
  v5[22] = a3;
  v5[23] = v3;

  if (v3)
  {
    v7 = sub_2155C29A0;
  }

  else
  {
    v7 = sub_2155C25C8;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2155C25C8()
{
  v47 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 168);
  v2 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v2 != 2 || *(*(v0 + 160) + 16) == *(*(v0 + 160) + 24))
    {
      goto LABEL_11;
    }
  }

  else if (v2)
  {
    if (*(v0 + 160) == *(v0 + 160) >> 32)
    {
LABEL_11:
      if (qword_27CA64B00 != -1)
      {
        swift_once();
      }

      v17 = *(v0 + 176);
      v18 = sub_2155DA75C();
      __swift_project_value_buffer(v18, qword_27CA66C00);
      v19 = v17;
      v20 = sub_2155DA72C();
      v21 = sub_2155DA98C();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = *(v0 + 176);
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        *(v23 + 4) = v22;
        *v24 = v22;
        v25 = v22;
        _os_log_impl(&dword_2155AF000, v20, v21, "Could not download any data. Response from server: %@", v23, 0xCu);
        sub_2155B1F44(v24, &qword_27CA64EF8, &unk_2155DCB80);
        MEMORY[0x21606C4C0](v24, -1, -1);
        MEMORY[0x21606C4C0](v23, -1, -1);
      }

      v38 = *(v0 + 168);
      v39 = *(v0 + 176);
      v27 = *(v0 + 136);
      v26 = *(v0 + 144);
      v28 = *(v0 + 120);
      v29 = *(v0 + 112);
      v40 = *(v0 + 128);
      v42 = *(v0 + 104);
      v30 = *(v0 + 88);
      v31 = *(v0 + 72);
      v44 = *(v0 + 80);
      v46 = *(v0 + 96);
      v32 = *(v0 + 64);
      v36 = *(v0 + 56);
      v37 = *(v0 + 160);

      sub_2155C32DC();
      swift_allocError();
      *v33 = 3;
      swift_willThrow();

      sub_2155B453C(v37, v38);
      (*(v27 + 8))(v26, v40);
      (*(v29 + 8))(v28, v42);

      (*(v30 + 8))(v46, v44);

      v34 = *(v0 + 8);
      v35 = *MEMORY[0x277D85DE8];

      return v34();
    }
  }

  else if ((v1 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

  v3 = *(v0 + 176);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 120);
  v7 = *(v0 + 112);
  v41 = *(v0 + 128);
  v43 = *(v0 + 104);
  v9 = *(v0 + 88);
  v8 = *(v0 + 96);
  v45 = *(v0 + 80);
  v10 = *(v0 + 56);
  v11 = *(v0 + 64);

  (*(v5 + 8))(v4, v41);
  (*(v7 + 8))(v6, v43);

  (*(v9 + 8))(v8, v45);

  v12 = *(v0 + 8);
  v13 = *(v0 + 160);
  v14 = *(v0 + 168);
  v15 = *MEMORY[0x277D85DE8];

  return v12(v13, v14);
}

uint64_t sub_2155C29A0()
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 112);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v14 = *(v0 + 104);
  v15 = *(v0 + 80);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);

  (*(v2 + 8))(v1, v3);
  (*(v5 + 8))(v4, v14);

  (*(v7 + 8))(v6, v15);

  v10 = *(v0 + 184);
  v11 = *(v0 + 8);
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_2155C2AD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v49 = a6;
  v50 = a5;
  v51 = a7;
  v11 = sub_2155DA70C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  MEMORY[0x28223BE20](v15, v19);
  v21 = &v48 - v20;
  if (*(v18 + 16) && (v22 = sub_2155D0A68(a2, a3), (v23 & 1) != 0))
  {
    (*(v12 + 16))(v21, *(v18 + 56) + *(v12 + 72) * v22, v11);
    v24 = *(v12 + 32);
    v24(v17, v21, v11);
    if (qword_27CA64B00 != -1)
    {
      swift_once();
    }

    v25 = sub_2155DA75C();
    __swift_project_value_buffer(v25, qword_27CA66C00);
    v26 = sub_2155DA72C();
    v27 = sub_2155DA99C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2155AF000, v26, v27, "Using cached FileDownloader", v28, 2u);
      MEMORY[0x21606C4C0](v28, -1, -1);
    }

    return (v24)(v51, v17, v11);
  }

  else
  {
    if (qword_27CA64B00 != -1)
    {
      swift_once();
    }

    v30 = sub_2155DA75C();
    __swift_project_value_buffer(v30, qword_27CA66C00);
    v31 = sub_2155DA72C();
    v32 = sub_2155DA99C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2155AF000, v31, v32, "Creating new FileDownloader since impi changed", v33, 2u);
      MEMORY[0x21606C4C0](v33, -1, -1);
    }

    v34 = sub_2155DA71C();
    v35 = *(*(v34 - 8) + 64);
    MEMORY[0x28223BE20](v34, v36);
    (*(v38 + 16))(&v48 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
    v39 = *(v49 + 16);
    v40 = v50;
    v41 = v39;
    v42 = v51;
    sub_2155DA6DC();
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64F48, &qword_2155DCF88);
    v44 = (*(*(v43 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v43 - 8, v45);
    v47 = &v48 - v46;
    (*(v12 + 16))(&v48 - v46, v42, v11);
    (*(v12 + 56))(v47, 0, 1, v11);

    return sub_2155C2F24(v47, a2, a3);
  }
}

uint64_t sub_2155C2F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2155DA70C();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(a1, 1, v7);
  if (v9 == 1)
  {
    sub_2155B1F44(a1, &qword_27CA64F48, &qword_2155DCF88);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64F48, &qword_2155DCF88);
    v12 = *(*(v11 - 8) + 64);
    MEMORY[0x28223BE20](v11 - 8, v13);
    v15 = &v22 - v14;
    sub_2155C84F8(a2, a3, &v22 - v14);

    return sub_2155B1F44(v15, &qword_27CA64F48, &qword_2155DCF88);
  }

  else
  {
    v17 = *(v8 + 64);
    MEMORY[0x28223BE20](v9, v10);
    v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 32))(v19, a1, v7);
    v20 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    sub_2155C90EC(v19, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v23;
  }

  return result;
}

uint64_t RCSChatBotNetworkProvider.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t RCSChatBotNetworkProvider.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2155C315C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2155BA24C;

  return sub_2155C1D1C(a1, a2, a3);
}

uint64_t sub_2155C320C(uint64_t a1, char a2)
{
  v5 = sub_2155BC770(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64F50, &unk_2155DCF90);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v5;
  *(v2 + 24) = v6;
  v7 = sub_2155DA6EC();
  v8 = v7;
  if (a1)
  {
    [v7 setURLCache_];
  }

  [v8 setWaitsForConnectivity_];
  v9 = [objc_opt_self() sessionWithConfiguration_];

  *(v2 + 16) = v9;
  return v2;
}

unint64_t sub_2155C32DC()
{
  result = qword_27CA64F38;
  if (!qword_27CA64F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64F38);
  }

  return result;
}

uint64_t dispatch thunk of RCSChatBotNetworkProvider.performDataTask(with:usingSIM:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 128);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2155BAA50;

  return v12(a1, a2, a3);
}

unint64_t sub_2155C3500()
{
  result = qword_27CA64F40;
  if (!qword_27CA64F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA64F40);
  }

  return result;
}

uint64_t BrandMessagingDetails.localizedResponseTime.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2155C358C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_2155C35E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t BrandFactory.makeBrand(brandModel:brandLogoURLProvider:brandLogoDataProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = type metadata accessor for Brand();
  sub_2155B0E68(a1, v31);
  sub_2155B0E68(a2, v28);
  sub_2155C3864(a3, v27);
  v9 = v32;
  v10 = v33;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  v12 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v11, v11);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v15 + 16))(v14);
  v16 = v29;
  v17 = v30;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
  v19 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v18, v18);
  v21 = &v27[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v22 + 16))(v21);
  v26 = v7;
  v23 = type metadata accessor for BrandService();
  v24 = sub_2155D69E8(v14, v21, &v26, v27, v8, v9, v23, v16, v10, &off_28277F9B0, v17);

  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v24;
}

uint64_t sub_2155C3864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64F58, &qword_2155DCFF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for BrandFactory(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for BrandFactory(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2155C3A10()
{
  v1 = v0;
  v29 = *MEMORY[0x277D85DE8];
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *&address.sa_data[6] = 0;
  *address.sa_data = 0;
  *&address.sa_len = 528;
  v2 = SCNetworkReachabilityCreateWithAddress(0, &address);
  if (v2)
  {
    v3 = v2;
    flags = 0;
    if (!SCNetworkReachabilityGetFlags(v2, &flags))
    {
      if (qword_27CA64B00 != -1)
      {
        swift_once();
      }

      v4 = sub_2155DA75C();
      __swift_project_value_buffer(v4, qword_27CA66C00);
      v5 = sub_2155DA72C();
      v6 = sub_2155DA99C();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_2155AF000, v5, v6, "Failed to determine initial reachability status", v7, 2u);
        MEMORY[0x21606C4C0](v7, -1, -1);
      }
    }

    *(v1 + 16) = v3;
    *(v1 + 24) = (flags & 2) != 0;
    context.info = v1;
    memset(&context.retain, 0, 24);
    context.version = 0;
    v8 = v3;
    if (!SCNetworkReachabilitySetCallback(v8, sub_2155C3E18, &context))
    {
      if (qword_27CA64B00 != -1)
      {
        swift_once();
      }

      v9 = sub_2155DA75C();
      __swift_project_value_buffer(v9, qword_27CA66C00);
      v10 = sub_2155DA72C();
      v11 = sub_2155DA99C();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_2155AF000, v10, v11, "Failed to configure reachability callback", v12, 2u);
        MEMORY[0x21606C4C0](v12, -1, -1);
      }
    }

    sub_2155B1BBC();
    v13 = sub_2155DA9CC();
    v14 = SCNetworkReachabilitySetDispatchQueue(v8, v13);

    if (!v14)
    {
      if (qword_27CA64B00 != -1)
      {
        swift_once();
      }

      v15 = sub_2155DA75C();
      __swift_project_value_buffer(v15, qword_27CA66C00);
      v16 = sub_2155DA72C();
      v17 = sub_2155DA99C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_2155AF000, v16, v17, "Failed to configure reachability callback queue", v18, 2u);
        MEMORY[0x21606C4C0](v18, -1, -1);
      }
    }
  }

  else
  {
    if (qword_27CA64B00 != -1)
    {
      swift_once();
    }

    v19 = sub_2155DA75C();
    __swift_project_value_buffer(v19, qword_27CA66C00);
    v20 = sub_2155DA72C();
    v21 = sub_2155DA99C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2155AF000, v20, v21, "Failed to create network reachability", v22, 2u);
      MEMORY[0x21606C4C0](v22, -1, -1);
    }

    v23 = *(v1 + 40);
    sub_2155C4000(*(v1 + 32));
    type metadata accessor for NetworkReachabilityProvider();
    swift_deallocPartialClassInstance();
    v1 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_2155C3E24()
{
  v1 = v0;
  if (SCNetworkReachabilitySetDispatchQueue(*(v0 + 16), 0))
  {
    if (qword_27CA64B00 != -1)
    {
      swift_once();
    }

    v2 = sub_2155DA75C();
    __swift_project_value_buffer(v2, qword_27CA66C00);
    v3 = sub_2155DA72C();
    v4 = sub_2155DA99C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Unscheduled reachability callback";
LABEL_10:
      _os_log_impl(&dword_2155AF000, v3, v4, v6, v5, 2u);
      MEMORY[0x21606C4C0](v5, -1, -1);
    }
  }

  else
  {
    if (qword_27CA64B00 != -1)
    {
      swift_once();
    }

    v7 = sub_2155DA75C();
    __swift_project_value_buffer(v7, qword_27CA66C00);
    v3 = sub_2155DA72C();
    v4 = sub_2155DA99C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Failed to unschedule reachability callback";
      goto LABEL_10;
    }
  }

  v8 = *(v1 + 40);
  sub_2155C4000(*(v1 + 32));
  return v1;
}

uint64_t sub_2155C3FA8()
{
  sub_2155C3E24();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2155C4000(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_2155C4010(char a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a1 & 2;
    v4 = *(a2 + 24) ^ (v3 >> 1);

    if (v4)
    {
      if (qword_27CA64B00 != -1)
      {
        swift_once();
      }

      v5 = sub_2155DA75C();
      __swift_project_value_buffer(v5, qword_27CA66C00);
      v6 = sub_2155DA72C();
      v7 = sub_2155DA97C();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 67109120;
        v9 = v3 >> 1;
        *(v8 + 4) = v9;
        _os_log_impl(&dword_2155AF000, v6, v7, "Network reachability changed: isReachable = %{BOOL}d", v8, 8u);
        MEMORY[0x21606C4C0](v8, -1, -1);
      }

      else
      {

        v9 = v3 >> 1;
      }

      *(a2 + 24) = v9;
      v13 = *(a2 + 32);
      if (v13)
      {
        v14 = *(a2 + 40);

        v13(v15);
        sub_2155C4000(v13);
      }
    }
  }

  else
  {
    if (qword_27CA64B00 != -1)
    {
      swift_once();
    }

    v10 = sub_2155DA75C();
    __swift_project_value_buffer(v10, qword_27CA66C00);
    oslog = sub_2155DA72C();
    v11 = sub_2155DA97C();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2155AF000, oslog, v11, "Reachability callback info is nil", v12, 2u);
      MEMORY[0x21606C4C0](v12, -1, -1);
    }
  }
}

uint64_t sub_2155C42D4()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0) - 8) + 64) + 15;
  v2 = swift_task_alloc();
  sub_2155DA66C();
  v3 = sub_2155DA67C();
  v4 = *(v3 - 8);
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(*(v0 + 16), v2, v3);

    v6 = *(v0 + 8);

    return v6(0x6F69736E65747865, 0xEF6E656B6F74206ELL);
  }

  return result;
}

void sub_2155C4494(uint64_t a1, void (*a2)(id, unint64_t, uint64_t))
{
  if (*(v2 + 16) == 1)
  {
    v4 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v5 = sub_2155DA7DC();
    v16 = [v4 initWithDomain:v5 code:1 userInfo:0];

    a2(v16, 0, 1);
  }

  else
  {
    v6 = sub_2155DA83C();
    v7 = *(v6 - 8);
    v8 = *(v7 + 64);
    MEMORY[0x28223BE20](v6, v9);
    v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2155DA82C();
    v12 = sub_2155DA81C();
    v14 = v13;
    (*(v7 + 8))(v11, v6);
    if (v14 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      a2(v12, v14, 0);
      sub_2155B4528(v12, v14);
    }
  }
}

void sub_2155C4688(void (*a1)(id, unint64_t, uint64_t))
{
  if (*(v1 + 16) == 1)
  {
    v3 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v4 = sub_2155DA7DC();
    v15 = [v3 initWithDomain:v4 code:1 userInfo:0];

    a1(v15, 0, 1);
  }

  else
  {
    v5 = sub_2155DA83C();
    v6 = *(v5 - 8);
    v7 = *(v6 + 64);
    MEMORY[0x28223BE20](v5, v8);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2155DA82C();
    v11 = sub_2155DA81C();
    v13 = v12;
    (*(v6 + 8))(v10, v5);
    if (v13 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      a1(v11, v13, 0);
      sub_2155B4528(v11, v13);
    }
  }
}

id BrandManagerObjcShim.__allocating_init(cachingEnabled:cacheURL:brandDataSourceWrapper:)(char a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_2155B1194(a1, a2, a3);

  return v8;
}

id BrandManagerObjcShim.init(cachingEnabled:cacheURL:brandDataSourceWrapper:)(char a1, uint64_t a2, void *a3)
{
  v4 = sub_2155B1194(a1, a2, a3);

  return v4;
}

uint64_t sub_2155C4904(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR___BSBrandManagerObjcShim_brandManager);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;

  sub_2155BB7DC(a1, a2, 0, 0, sub_2155C5918, v10);
}

uint64_t sub_2155C4AB8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + OBJC_IVAR___BSBrandManagerObjcShim_brandManager);
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = a6;

  sub_2155BB7DC(a1, a2, a3, a4, sub_2155C5B60, v14);
}

uint64_t sub_2155C4CAC(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + OBJC_IVAR___BSBrandManagerObjcShim_brandManager) + 56);

  sub_2155BE974(a1, a2);
}

void sub_2155C4DBC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_2155DA61C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_2155C4E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*(v4 + OBJC_IVAR___BSBrandManagerObjcShim_brandManager) + 56);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;

  sub_2155BDB24(a1, a2, sub_2155BC9B4, v10);
}

uint64_t sub_2155C5078(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = *(*(v5 + OBJC_IVAR___BSBrandManagerObjcShim_brandManager) + 56);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;

  sub_2155BEABC(a1, a2, a3, sub_2155BC9C0, v12);
}

uint64_t sub_2155C5274(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v9 = *(*(v4 + OBJC_IVAR___BSBrandManagerObjcShim_brandManager) + 56);

  v10 = sub_2155BEF60(a1, a2, a3, a4);

  return v10 & 1;
}

void sub_2155C53F4(uint64_t a1, char a2, void (*a3)(id, id))
{
  if (a2)
  {
    v8 = sub_2155DA61C();
    a3(0, v8);
  }

  else
  {
    v5 = type metadata accessor for BrandObjcShim();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR___BSBrandObjcShim_brand] = a1;
    v9.receiver = v6;
    v9.super_class = v5;

    v7 = objc_msgSendSuper2(&v9, sel_init);
    a3(v7, 0);
  }
}

uint64_t sub_2155C5614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v16 = *(v8 + OBJC_IVAR___BSBrandManagerObjcShim_brandManager);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;

  a8(a1, a2, a3, a7, v17);
}

void sub_2155C56C8(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v5 = sub_2155DA61C();
    v6 = 0;
    v7 = v5;
  }

  else
  {
    v6 = sub_2155DA68C();
    v7 = v6;
    v5 = 0;
  }

  a4(v6, v5);
}

id BrandManagerObjcShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BrandManagerObjcShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BrandManagerObjcShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2155C5B68()
{
  sub_2155B3AE0(v0 + OBJC_IVAR____TtC16BusinessServices24FakeBrandLogoURLProvider_squareLogoURL);
  sub_2155B3AE0(v0 + OBJC_IVAR____TtC16BusinessServices24FakeBrandLogoURLProvider_wideLogoURL);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for FakeBrandLogoURLProvider()
{
  result = qword_27CA64F78;
  if (!qword_27CA64F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2155C5C30()
{
  sub_2155B8C98();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2155C5CC0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16BusinessServices24FakeBrandLogoURLProvider_squareLogoURL;
  swift_beginAccess();
  return sub_2155B13FC(v3 + v4, a1);
}

void sub_2155C5D48(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, NSObject *a5, NSObject *a6)
{
  v11 = *(v6 + 16);
  v12 = *(v6 + 24);
  v13 = sub_2155CC020(a3, a4, v11, v12);
  if (v13)
  {
    v96 = v6;
    v102 = a6;
    v99 = a5;
    v101 = v13;
    v14 = sub_2155C9888(a1, a2);
    v16 = v15;
    v17 = [objc_allocWithZone(MEMORY[0x277CC36A0]) init];
    v97 = v14;
    v98 = v16;
    v18 = sub_2155DA7DC();
    [v17 setUri_];

    v19 = [objc_allocWithZone(MEMORY[0x277CC36B0]) init];
    v20 = sub_2155DA6CC();
    v100 = &v88;
    v21 = *(v20 - 8);
    v22 = *(v21 + 64);
    MEMORY[0x28223BE20](v20, v23);
    v25 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2155DA6BC();
    v26 = sub_2155DA6AC();
    v28 = v27;
    (*(v21 + 8))(v25, v20);
    v29 = v101;
    v95 = v26;
    v100 = v28;
    v30 = sub_2155DA7DC();
    [v19 setUuid_];

    ObjectType = swift_getObjectType();
    v32 = (*(v12 + 40))(v29, v17, ObjectType, v12);
    v41 = v17;
    v90 = ObjectType;
    v42 = v98;
    v89 = v12;
    v91 = v11;
    v43 = v32;
    v94 = [v32 renderInformation];
    v44 = [v43 cacheType];
    if (qword_27CA64B00 != -1)
    {
      swift_once();
    }

    v92 = v19;
    v45 = sub_2155DA75C();
    __swift_project_value_buffer(v45, qword_27CA66C00);
    v46 = v42;

    v47 = sub_2155DA72C();
    v48 = sub_2155DA96C();

    v49 = os_log_type_enabled(v47, v48);
    v93 = v43;
    if (v49)
    {
      v50 = v41;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v105[0] = v52;
      *v51 = 134218242;
      *(v51 + 4) = v44;
      *(v51 + 12) = 2080;
      *(v51 + 14) = sub_2155BC03C(v97, v46, v105);
      _os_log_impl(&dword_2155AF000, v47, v48, "brandModelWithURI: Chatbot Information cache state: %ld for %s", v51, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v52);
      v53 = v93;
      MEMORY[0x21606C4C0](v52, -1, -1);
      v54 = v51;
      v41 = v50;
      MEMORY[0x21606C4C0](v54, -1, -1);
    }

    else
    {
      v53 = v43;
    }

    if (v94)
    {
      if ((v44 + 1) < 2)
      {
        goto LABEL_21;
      }

      v55 = v44;
      if ((v44 - 1) > 1)
      {
LABEL_30:

LABEL_31:
        return;
      }

      v56 = v94;
      v57 = sub_2155DA72C();
      v58 = sub_2155DA96C();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_2155AF000, v57, v58, "brandModelWithURI: Using cached Chatbot Information", v59, 2u);
        v60 = v59;
        v55 = v44;
        MEMORY[0x21606C4C0](v60, -1, -1);
      }

      v44 = v55;
      sub_2155C67B8(v103, v104, v56, v97, v46, v55 == 2, 1);
      sub_2155BCCEC(v103, v105, &qword_27CA64F90, &qword_2155DD170);
      v106 = 0;
      (v99)(v105);

      sub_2155B1F44(v105, &qword_27CA64F88, &unk_2155DD160);
      sub_2155B1F44(v103, &qword_27CA64F90, &qword_2155DD170);
      v53 = v93;
    }

    if ((v44 + 1) <= 3 && v44 != 1)
    {
LABEL_21:
      v61 = v41;

      v62 = sub_2155DA72C();
      v63 = sub_2155DA96C();

      v88 = v62;
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v105[0] = v65;
        *v64 = 136315138;
        v66 = sub_2155BC03C(v97, v46, v105);

        *(v64 + 4) = v66;
        v67 = v88;
        _os_log_impl(&dword_2155AF000, v88, v63, "brandModelWithURI: Fetching Chatbot Information from remote source for %s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v65);
        MEMORY[0x21606C4C0](v65, -1, -1);
        MEMORY[0x21606C4C0](v64, -1, -1);
      }

      else
      {
      }

      v70 = *(v96 + 72);
      MEMORY[0x28223BE20](v68, v69);
      v71 = v100;
      *(&v88 - 4) = v95;
      *(&v88 - 3) = v71;
      v72 = v102;
      *(&v88 - 2) = v99;
      *(&v88 - 1) = v72;
      os_unfair_lock_lock((v70 + 24));
      sub_2155C9AB0((v70 + 16));
      os_unfair_lock_unlock((v70 + 24));

      v73 = v101;
      v74 = v61;
      v75 = v61;
      v76 = v92;
      (*(v89 + 48))(v101, v75, v92, v90);

      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (qword_27CA64B00 != -1)
  {
    swift_once();
  }

  v33 = sub_2155DA75C();
  __swift_project_value_buffer(v33, qword_27CA66C00);
  v34 = sub_2155DA72C();
  v35 = sub_2155DA98C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = a5;
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_2155AF000, v34, v35, "Did not find any valid CTXPCServiceSubscriptionContext object", v37, 2u);
    v38 = v37;
    a5 = v36;
    MEMORY[0x21606C4C0](v38, -1, -1);
  }

  sub_2155C32DC();
  v39 = swift_allocError();
  *v40 = 0;
  swift_willThrow();
  if (qword_280E1C288 != -1)
  {
    swift_once();
  }

  v77 = sub_2155DA75C();
  __swift_project_value_buffer(v77, qword_280E1C7F0);
  v78 = v39;
  v79 = sub_2155DA72C();
  v80 = sub_2155DA98C();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = a5;
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *v82 = 138412290;
    v84 = v39;
    v85 = _swift_stdlib_bridgeErrorToNSError();
    *(v82 + 4) = v85;
    *v83 = v85;
    _os_log_impl(&dword_2155AF000, v79, v80, "brandModelWithURI:resultHandler: error: %@", v82, 0xCu);
    sub_2155B1F44(v83, &qword_27CA64EF8, &unk_2155DCB80);
    MEMORY[0x21606C4C0](v83, -1, -1);
    v86 = v82;
    a5 = v81;
    MEMORY[0x21606C4C0](v86, -1, -1);
  }

  v105[0] = v39;
  v106 = 1;
  v87 = v39;
  (a5)(v105);

  sub_2155B1F44(v105, &qword_27CA64F88, &unk_2155DD160);
}

uint64_t sub_2155C67B8(uint64_t *a1, uint64_t *a2, id a3, unint64_t a4, unint64_t a5, int a6, int a7)
{
  LODWORD(v210) = a6;
  v11 = a3;
  v201 = a1;
  v202 = a2;
  v12 = 0x2781C1000uLL;
  v13 = [a3 botInfo];
  v14 = [v13 pcc];

  v15 = [v14 orgDetails];
  v16 = 0x2781C1000uLL;
  if (!v15)
  {
    goto LABEL_12;
  }

  v17 = [v15 orgName];

  if (!v17)
  {
    goto LABEL_12;
  }

  v18 = [v17 list];

  sub_2155CA05C(0, &qword_27CA64FC8, 0x277CC3690);
  v19 = sub_2155DA8FC();

  if (!(v19 >> 62))
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  if (!sub_2155DAA9C())
  {
LABEL_11:

LABEL_12:

    v198 = a5;
    v199 = a4;
    goto LABEL_13;
  }

LABEL_5:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x21606BBB0](0, v19);
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_128;
    }

    v20 = *(v19 + 32);
  }

  v21 = v20;

  v22 = [v21 displayName];

  if (!v22)
  {
    goto LABEL_12;
  }

  v23 = sub_2155DA80C();
  v198 = v24;
  v199 = v23;

LABEL_13:
  v25 = [v11 botInfo];
  v26 = [v25 pcc];

  v27 = [v26 orgDetails];
  v200 = a7;
  if (v27 && (v28 = [v27 orgDescription], v27, v28) && (v29 = objc_msgSend(v28, sel_orgDescription), v28, v29))
  {
    v30 = sub_2155DA80C();
    v196 = v31;
    v197 = v30;
  }

  else
  {
    v196 = 0;
    v197 = 0;
  }

  v32 = [v11 botInfo];
  v33 = [v32 pcc];

  v34 = [v33 orgDetails];
  if (v34 && (v35 = [v34 communicationAddress], v34, v35))
  {
    v36 = [v35 telInformation];

    v37 = [v36 telNumber];
    v38 = [v37 number];

    v39 = sub_2155DA80C();
    v194 = v40;
    v195 = v39;
  }

  else
  {
    v194 = 0;
    v195 = 0;
  }

  v41 = [v11 botInfo];
  v42 = [v41 pcc];

  v43 = [v42 orgDetails];
  v205 = a4;
  if (!v43 || (v44 = [v43 communicationAddress], v43, !v44))
  {
LABEL_38:
    v54 = 0;
    v56 = 0;
    goto LABEL_43;
  }

  v45 = [v44 uriList];

  v46 = [v45 list];
  sub_2155CA05C(0, &qword_27CA64FC0, 0x277CC3698);
  v47 = sub_2155DA8FC();

  if (!(v47 >> 62))
  {
    v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v48)
    {
      goto LABEL_26;
    }

LABEL_42:

    v54 = 0;
    v56 = 0;
    v16 = 0x2781C1000uLL;
    goto LABEL_43;
  }

LABEL_41:
  v48 = sub_2155DAA9C();
  if (!v48)
  {
    goto LABEL_42;
  }

LABEL_26:
  v49 = 0;
  while (1)
  {
    if ((v47 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x21606BBB0](v49, v47);
    }

    else
    {
      if (v49 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v50 = *(v47 + 8 * v49 + 32);
    }

    v51 = v50;
    v12 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if ([v50 label] == 1)
    {
      break;
    }

    ++v49;
    v52 = v12 == v48;
    v12 = 0x2781C1000;
    if (v52)
    {
      goto LABEL_42;
    }
  }

  v53 = [v51 addressUri];

  v12 = 0x2781C1000;
  v16 = 0x2781C1000;
  if (!v53)
  {
    goto LABEL_38;
  }

  v54 = sub_2155DA80C();
  v56 = v55;

LABEL_43:
  v57 = [v11 *(v12 + 2264)];
  v58 = [v57 email];

  if (v58)
  {
    a4 = sub_2155DA80C();
    v7 = v59;
  }

  else
  {
    a4 = 0;
    v7 = 0;
  }

  v60 = [v11 *(v12 + 2264)];
  v61 = [v60 addresses];

  v193 = v54;
  v192 = v56;
  if (!v61)
  {
    goto LABEL_55;
  }

  v17 = [v61 *(v16 + 2352)];

  sub_2155CA05C(0, &qword_27CA64FB8, 0x277CC3680);
  v19 = sub_2155DA8FC();

  if (v19 >> 62)
  {
    if (sub_2155DAA9C())
    {
      goto LABEL_49;
    }

    goto LABEL_54;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_54:

LABEL_55:
    v189 = 0;
    v188 = 0;
    goto LABEL_56;
  }

LABEL_49:
  if ((v19 & 0xC000000000000001) != 0)
  {
LABEL_105:
    v62 = MEMORY[0x21606BBB0](0, v19);
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_107;
    }

    v62 = *(v19 + 32);
  }

  v63 = v62;

  v64 = [v63 address];

  v189 = sub_2155DA80C();
  v188 = v65;

LABEL_56:
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  v17 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66 - 8, v67);
  v68 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v212 = &v173 - v68;
  v69 = [v11 *(v12 + 2264)];
  v70 = [v69 tcPageUrl];

  MEMORY[0x28223BE20](v71, v72);
  if (v70)
  {
    sub_2155DA64C();

    v73 = sub_2155DA67C();
    (*(*(v73 - 8) + 56))(&v173 - v68, 0, 1, v73);
  }

  else
  {
    v74 = sub_2155DA67C();
    (*(*(v74 - 8) + 56))(&v173 - v68, 1, 1, v74);
  }

  v75 = sub_2155C9F94(&v173 - v68, v212);
  v187 = &v173;
  MEMORY[0x28223BE20](v75, v76);
  v77 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v211 = &v173 - v77;
  v78 = [v11 *(v12 + 2264)];
  v79 = [v78 website];

  MEMORY[0x28223BE20](v80, v81);
  v82 = &v173 - v77;
  if (v79)
  {
    sub_2155DA64C();

    v83 = 0;
  }

  else
  {
    v83 = 1;
  }

  v84 = v210;
  v85 = sub_2155DA67C();
  v86 = *(v85 - 8);
  v209 = *(v86 + 56);
  v210 = v85;
  v208 = v86 + 56;
  (v209)(v82, v83, 1);
  sub_2155C9F94(v82, v211);
  v191 = a4;
  v190 = v7;
  if (v84)
  {
    a4 = 0;
  }

  else
  {
    v87 = [v11 verificationDetails];
    a4 = [v87 verified];
  }

  v88 = [v11 verificationDetails];
  v89 = [v88 verifiedBy];

  v185 = sub_2155DA80C();
  v184 = v90;

  MEMORY[0x28223BE20](v91, v92);
  v7 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = (&v173 - v7);
  v207 = a4;
  v204 = a5;
  v186 = &v173;
  v203 = (&v173 - v7);
  if (!a4 || (v94 = [v11 *(v12 + 2264)], v95 = objc_msgSend(v94, sel_pcc), v94, v96 = objc_msgSend(v95, sel_orgDetails), v95, !v96) || (v97 = objc_msgSend(v96, sel_mediaList), v96, !v97))
  {
    v104 = 1;
    goto LABEL_80;
  }

  v98 = [v97 entry];

  v99 = [v98 list];
  sub_2155CA05C(0, &qword_27CA64FB0, 0x277CC3688);
  v19 = sub_2155DA8FC();

  v180 = v11;
  if (!(v19 >> 62))
  {
    v100 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v100)
    {
      goto LABEL_70;
    }

LABEL_129:

    v104 = 1;
    v93 = v203;
    a5 = v204;
    v11 = v180;
    v12 = 0x2781C1000;
    goto LABEL_80;
  }

LABEL_128:
  v100 = sub_2155DAA9C();
  if (!v100)
  {
    goto LABEL_129;
  }

LABEL_70:
  v101 = 0;
  a5 = v19 & 0xC000000000000001;
  v11 = (v19 & 0xFFFFFFFFFFFFFF8);
  v12 = 0x2781C1000uLL;
  while (1)
  {
    if (a5)
    {
      v102 = MEMORY[0x21606BBB0](v101, v19);
    }

    else
    {
      if (v101 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_104;
      }

      v102 = *(v19 + 8 * v101 + 32);
    }

    a4 = v102;
    v103 = v101 + 1;
    if (__OFADD__(v101, 1))
    {
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    if (![v102 label])
    {
      break;
    }

    ++v101;
    if (v103 == v100)
    {
      goto LABEL_129;
    }
  }

  v121 = [a4 media];

  a5 = v204;
  v11 = v180;
  v12 = 0x2781C1000;
  if (v121)
  {
    v122 = [v121 mediaUrl];

    v123 = [v122 url];
    v93 = v203;
    sub_2155DA64C();

    v104 = 0;
  }

  else
  {
    v104 = 1;
    v93 = v203;
  }

LABEL_80:
  v105 = v209;
  v106 = (v209)(v93, v104, 1, v210);
  v183 = &v173;
  MEMORY[0x28223BE20](v106, v107);
  v206 = &v173 - v7;
  v105();
  v108 = [v11 *(v12 + 2264)];
  v109 = [v108 pcc];

  v110 = [v109 orgDetails];
  if (v110)
  {
    v111 = [v110 mediaList];

    if (v111)
    {
      v112 = [v111 entry];

      v113 = [v112 list];
      sub_2155CA05C(0, &qword_27CA64FB0, 0x277CC3688);
      v54 = sub_2155DA8FC();

      v180 = v11;
      v12 = a5;
      if (!(v54 >> 62))
      {
        v114 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v114)
        {
          goto LABEL_84;
        }

        goto LABEL_108;
      }

LABEL_107:
      v114 = sub_2155DAA9C();
      if (v114)
      {
LABEL_84:
        a4 = 0;
        v19 = v54 & 0xC000000000000001;
        a5 = v54 & 0xFFFFFFFFFFFFFF8;
        v11 = 0x2781C1000;
        while (1)
        {
          if (v19)
          {
            v115 = MEMORY[0x21606BBB0](a4, v54);
          }

          else
          {
            if (a4 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_102;
            }

            v115 = *(v54 + 8 * a4 + 32);
          }

          v7 = v115;
          v116 = a4 + 1;
          if (__OFADD__(a4, 1))
          {
            __break(1u);
LABEL_102:
            __break(1u);
            goto LABEL_103;
          }

          if (![v115 label])
          {
            break;
          }

          ++a4;
          if (v116 == v114)
          {
            goto LABEL_108;
          }
        }

        v117 = [v7 media];

        if (!v117)
        {
          goto LABEL_109;
        }

        v118 = [v117 fingerprint];

        a5 = v12;
        v11 = v180;
        if (v118)
        {
          v119 = [v118 data];

          v182 = sub_2155DA69C();
          v181 = v120;
        }

        else
        {
          v182 = 0;
          v181 = 0xF000000000000000;
        }

        goto LABEL_110;
      }

LABEL_108:

LABEL_109:
      v182 = 0;
      v181 = 0xF000000000000000;
      a5 = v12;
      v11 = v180;
LABEL_110:
      v12 = 0x2781C1000uLL;
      goto LABEL_111;
    }
  }

  v182 = 0;
  v181 = 0xF000000000000000;
LABEL_111:
  v124 = [v11 *(v12 + 2264)];
  v125 = [v124 pcc];

  v126 = [v125 orgDetails];
  v127 = v207;
  if (v126 && (v128 = [v126 categoryList], v126, v128))
  {
    v129 = [v128 categoryList];

    v180 = sub_2155DA8FC();
  }

  else
  {
    v180 = 0;
  }

  if (qword_280E1C288 != -1)
  {
    swift_once();
  }

  v130 = sub_2155DA75C();
  __swift_project_value_buffer(v130, qword_280E1C7F0);

  v131 = sub_2155DA72C();
  v132 = sub_2155DA96C();

  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v213 = v134;
    *v133 = 136315394;
    *(v133 + 4) = sub_2155BC03C(v205, a5, &v213);
    *(v133 + 12) = 2080;
    if (v127)
    {
      v135 = 0x6465696669726556;
    }

    else
    {
      v135 = 0x6966697265766E55;
    }

    if (v127)
    {
      v136 = 0xE800000000000000;
    }

    else
    {
      v136 = 0xEA00000000006465;
    }

    v137 = sub_2155BC03C(v135, v136, &v213);

    *(v133 + 14) = v137;
    _os_log_impl(&dword_2155AF000, v131, v132, "Brand with URI %s is %s", v133, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21606C4C0](v134, -1, -1);
    MEMORY[0x21606C4C0](v133, -1, -1);
  }

  v179 = &v173;
  MEMORY[0x28223BE20](v138, v139);
  v140 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v176 = &v173 - v140;
  v141 = sub_2155BCCEC(v211, &v173 - v140, &qword_27CA64B20, &qword_2155DBDC0);
  v178 = &v173;
  MEMORY[0x28223BE20](v141, v142);
  v175 = &v173 - v140;
  v143 = sub_2155BCCEC(v212, &v173 - v140, &qword_27CA64B20, &qword_2155DBDC0);
  v177 = &v173;
  MEMORY[0x28223BE20](v143, v144);
  v174 = &v173 - v140;
  sub_2155BCCEC(v206, &v173 - v140, &qword_27CA64B20, &qword_2155DBDC0);
  v145 = type metadata accessor for RCSChatBotBrand(0);
  v146 = v201;
  v201[3] = v145;
  v146[4] = sub_2155CA004();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v146);
  v201 = v145[13];
  v148 = v209;
  v149 = v210;
  (v209)(v201 + boxed_opaque_existential_1, 1, 1);
  v150 = (boxed_opaque_existential_1 + v145[14]);
  v151 = (boxed_opaque_existential_1 + v145[15]);
  v152 = v145[16];
  v173 = v145[17];
  v153 = (boxed_opaque_existential_1 + v152);
  v154 = v149;
  (v148)(boxed_opaque_existential_1 + v173, 1, 1, v149);
  v155 = v145[19];
  v156 = (boxed_opaque_existential_1 + v145[18]);
  (v148)(boxed_opaque_existential_1 + v155, 1, 1, v154);
  v157 = boxed_opaque_existential_1 + v145[20];
  *v157 = xmmword_2155DBDB0;
  v158 = v204;
  *boxed_opaque_existential_1 = v205;
  boxed_opaque_existential_1[1] = v158;
  v159 = v198;
  boxed_opaque_existential_1[2] = v199;
  boxed_opaque_existential_1[3] = v159;
  v160 = v196;
  boxed_opaque_existential_1[12] = v197;
  boxed_opaque_existential_1[13] = v160;
  v161 = v194;
  v162 = v195;
  boxed_opaque_existential_1[4] = v180;
  boxed_opaque_existential_1[5] = v162;
  boxed_opaque_existential_1[6] = v161;
  *(boxed_opaque_existential_1 + 7) = 0u;
  *(boxed_opaque_existential_1 + 9) = 0u;
  *(boxed_opaque_existential_1 + 88) = v207;
  v163 = v184;
  boxed_opaque_existential_1[14] = v185;
  boxed_opaque_existential_1[15] = v163;

  sub_2155B4C00(v176, v201 + boxed_opaque_existential_1);
  v164 = v192;
  *v150 = v193;
  v150[1] = v164;
  v165 = v190;
  *v151 = v191;
  v151[1] = v165;
  v166 = v188;
  *v153 = v189;
  v153[1] = v166;
  sub_2155B4C00(v175, boxed_opaque_existential_1 + v173);
  *v156 = 0;
  v156[1] = 0;
  sub_2155B4C00(v174, boxed_opaque_existential_1 + v155);
  sub_2155B4528(*v157, *(v157 + 1));
  v167 = v181;
  *v157 = v182;
  *(v157 + 1) = v167;
  *(boxed_opaque_existential_1 + v145[21]) = v200 & 1;
  v168 = type metadata accessor for ChatBotLogoURLProvider(0);
  v169 = v202;
  v202[3] = v168;
  v169[4] = &off_28277F868;
  v170 = __swift_allocate_boxed_opaque_existential_1(v169);
  v171 = v203;
  sub_2155BCCEC(v203, v170, &qword_27CA64B20, &qword_2155DBDC0);
  (v209)(v170 + *(v168 + 20), 1, 1, v210);
  sub_2155B1F44(v206, &qword_27CA64B20, &qword_2155DBDC0);
  sub_2155B1F44(v171, &qword_27CA64B20, &qword_2155DBDC0);
  sub_2155B1F44(v211, &qword_27CA64B20, &qword_2155DBDC0);
  return sub_2155B1F44(v212, &qword_27CA64B20, &qword_2155DBDC0);
}

uint64_t sub_2155C7D40(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  if (*(*a1 + 16) && (v11 = sub_2155D0A68(a2, a3), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    v14 = swift_allocObject();
    *(v14 + 16) = a4;
    *(v14 + 24) = a5;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_2155CB860(0, v13[2] + 1, 1, v13);
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_2155CB860((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_2155CA134;
    v17[5] = v14;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64FD0, &qword_2155DD200);
    v13 = swift_allocObject();
    *(v13 + 1) = xmmword_2155DC7F0;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;
    v13[4] = sub_2155CA0A4;
    v13[5] = v18;
  }

  v19 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *a1;
  sub_2155C926C(v13, a2, a3, isUniquelyReferenced_nonNull_native);

  *a1 = v22;
  return result;
}

void *RCSChatBotBrandDataSource.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v2 = v0[9];

  return v0;
}

uint64_t RCSChatBotBrandDataSource.__deallocating_deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v2 = v0[9];

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_2155C7FEC(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, unint64_t a7, void *a8)
{
  v8 = *result;
  if (!*(*result + 16))
  {
    return result;
  }

  result = sub_2155D0A68(a2, a3);
  if ((v13 & 1) == 0)
  {
    return result;
  }

  v14 = *(*(v8 + 56) + 8 * result);
  v46 = v14;
  if (!a4)
  {

LABEL_14:
    v28 = *(v14 + 16);
    if (v28)
    {
      v29 = (v14 + 40);
      v30 = &type metadata for RCSChatBotBrandDataSourceError;
      v31 = 0x2781C1000uLL;
      do
      {
        v33 = *(v29 - 1);
        v34 = *v29;

        v35 = [a8 *(v31 + 2248)];
        if (v35)
        {
          v36 = v35;
          v52 = v33;
          if (qword_280E1C288 != -1)
          {
            swift_once();
          }

          v37 = sub_2155DA75C();
          __swift_project_value_buffer(v37, qword_280E1C7F0);
          v38 = v36;
          v32 = sub_2155DA72C();
          v39 = sub_2155DA98C();
          if (os_log_type_enabled(v32, v39))
          {
            v40 = a8;
            v41 = v30;
            v42 = swift_slowAlloc();
            *v42 = 134217984;
            *(v42 + 4) = [v38 value];

            _os_log_impl(&dword_2155AF000, v32, v39, "Failed to fetch chatbot rendering information. CTLazuliErrorType: %ld", v42, 0xCu);
            v43 = v42;
            v30 = v41;
            a8 = v40;
            v31 = 0x2781C1000;
            MEMORY[0x21606C4C0](v43, -1, -1);
          }

          else
          {

            v32 = v38;
          }

          v33 = v52;
        }

        sub_2155C9F40();
        v49[0] = swift_allocError();
        v51 = 1;
        (v33)(v49);

        sub_2155B1F44(v49, &qword_27CA64F88, &unk_2155DD160);
        v29 += 2;
        --v28;
      }

      while (v28);
    }

    else
    {
    }

LABEL_29:
    sub_2155C8668(a2, a3);
  }

  v15 = [a4 renderInformation];
  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = v15;
  result = sub_2155C67B8(v48, v47, v15, a6, a7, [a4 cacheType] == 2, 0);
  v17 = *(v14 + 16);
  if (!v17)
  {

LABEL_28:
    __swift_destroy_boxed_opaque_existential_1(v47);
    __swift_destroy_boxed_opaque_existential_1(v48);
    goto LABEL_29;
  }

  v52 = v16;
  v18 = 0;
  v19 = (v14 + 40);
  while (v18 < *(v14 + 16))
  {
    v20 = *(v19 - 1);
    v21 = *v19;
    v22 = qword_280E1C288;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = sub_2155DA75C();
    __swift_project_value_buffer(v23, qword_280E1C7F0);
    v24 = sub_2155DA72C();
    v25 = sub_2155DA96C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2155AF000, v24, v25, "Successfully returning chatbot rendering information", v26, 2u);
      v27 = v26;
      v14 = v46;
      MEMORY[0x21606C4C0](v27, -1, -1);
    }

    ++v18;

    sub_2155B0E68(v48, v49);
    sub_2155B0E68(v47, &v50);
    v51 = 0;
    v20(v49);

    result = sub_2155B1F44(v49, &qword_27CA64F88, &unk_2155DD160);
    v19 += 2;
    if (v17 == v18)
    {

      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2155C84F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2155D0A68(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2155C9498();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_2155DA70C();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_2155C8D50(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_2155DA70C();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_2155C8668(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_2155D0A68(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2155C9718();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_2155C8F3C(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_2155C8700(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64E28, &qword_2155DC950);
  v44 = a2;
  result = sub_2155DAABC();
  v8 = result;
  if (*(v5 + 16))
  {
    v42 = v3;
    v43 = v5;
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
      v47 = (v13 - 1) & v13;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = sub_2155DA70C();
      v46 = &v42;
      v23 = *(v22 - 8);
      v24 = *(v23 + 64);
      MEMORY[0x28223BE20](v22, v25);
      v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = *(v5 + 56);
      v29 = (*(v5 + 48) + 16 * v21);
      v30 = v29[1];
      v48 = *v29;
      v45 = *(v31 + 72);
      v32 = v28 + v45 * v21;
      if (v44)
      {
        (*(v23 + 32))(&v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v22);
      }

      else
      {
        (*(v23 + 16))(&v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v22);
      }

      v33 = *(v8 + 40);
      sub_2155DAC3C();
      sub_2155DA87C();
      result = sub_2155DAC5C();
      v34 = -1 << *(v8 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v15 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v15 + 8 * v36);
          if (v40 != -1)
          {
            v16 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v35) & ~*(v15 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v48;
      v17[1] = v30;
      result = (*(v23 + 32))(*(v8 + 56) + v45 * v16, v27, v22);
      ++*(v8 + 16);
      v13 = v47;
      v5 = v43;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        v47 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v10, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_2155C8AA8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64FA0, &unk_2155DD1F0);
  v38 = a2;
  result = sub_2155DAABC();
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
      sub_2155DAC3C();
      sub_2155DA87C();
      result = sub_2155DAC5C();
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

unint64_t sub_2155C8D50(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2155DAA3C() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_2155DAC3C();

      sub_2155DA87C();
      v13 = sub_2155DAC5C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_2155DA70C() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
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

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}