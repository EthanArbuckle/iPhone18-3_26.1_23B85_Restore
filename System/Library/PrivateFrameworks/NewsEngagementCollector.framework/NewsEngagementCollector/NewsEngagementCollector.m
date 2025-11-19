uint64_t sub_25BEC9620()
{
  result = sub_25BED0B70();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t EngagementDataManagerConfig.init(localStorageDirectory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25BED0B70();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_25BEC96F8()
{
  result = sub_25BED0B70();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *EngagementDataManager.init(config:)(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v3 = sub_25BED0BD0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_25BED0DB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25BED0CC0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_25BED0DA0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = type metadata accessor for EngagementCollector();
  v15 = swift_allocObject();
  sub_25BEC9A60();
  sub_25BED0D90();
  sub_25BED0CB0();
  (*(v6 + 104))(v9, *MEMORY[0x277D85260], v5);
  v16 = sub_25BED0DD0();
  v17 = MEMORY[0x277D84F90];
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  v2[5] = v14;
  v2[6] = &protocol witness table for EngagementCollector;
  v2[2] = v15;
  sub_25BED0BC0();
  v18 = sub_25BED0BF0();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_25BED0BE0();
  v22 = MEMORY[0x277D84F98];
  v2[7] = v21;
  v2[8] = v22;
  sub_25BEC9AAC(v25, v2 + OBJC_IVAR____TtC23NewsEngagementCollector21EngagementDataManager_managerConfig);
  return v2;
}

unint64_t sub_25BEC9A60()
{
  result = qword_280E7D5E8;
  if (!qword_280E7D5E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E7D5E8);
  }

  return result;
}

uint64_t sub_25BEC9AAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EngagementDataManagerConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for EngagementDataManagerConfig()
{
  result = qword_280E7D708;
  if (!qword_280E7D708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *BaseDonor.init(type:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*(sub_25BED0BD0() - 8) + 64);
  MEMORY[0x28223BE20]();
  v2[5] = MEMORY[0x277D84F98];
  sub_25BED0BC0();
  v6 = sub_25BED0BF0();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v2[6] = sub_25BED0BE0();
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = MEMORY[0x277D84F90];
  return v2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25BEC9C88(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t EngagementDataManager.register(donor:)(uint64_t a1)
{
  v3 = v1;
  v5 = *(*(type metadata accessor for EngagementDataManagerConfig() - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = &v22[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_25BEC9F70(v1 + 16, v23);
  v8 = v24;
  v9 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v22[3] = type metadata accessor for BaseDonor();
  v22[4] = &protocol witness table for BaseDonor;
  v22[0] = a1;
  v10 = *(v9 + 16);

  v10(v22, v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v23);
  if (!v2)
  {
    v26 = 0;
    v12 = *(a1 + 48);
    sub_25BED0BA0();
    v22[1] = &off_286D836A0;
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    sub_25BECB008(v22, v1);
    swift_endAccess();
    sub_25BED0BB0();
    swift_beginAccess();
    v13 = *(a1 + 32);
    v14 = *(v13 + 16);
    v15 = OBJC_IVAR____TtC23NewsEngagementCollector21EngagementDataManager_managerConfig;

    if (v14)
    {
      v16 = 0;
      v17 = (v13 + 40);
      while (v16 < *(v13 + 16))
      {
        ++v16;
        v18 = *(v17 - 1);
        v19 = *v17;
        sub_25BECB77C(v3 + v15, v7);

        sub_25BECB7E0(v18, v19, v7);
        v20 = sub_25BED0B70();
        (*(*(v20 - 8) + 8))(v7, v20);

        v17 += 2;
        if (v14 == v16)
        {
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_25BEC9F70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t EngagementCollector.register(donor:)(void *a1)
{
  v2 = v1;
  if (qword_280E7D600 != -1)
  {
LABEL_22:
    swift_once();
  }

  v4 = sub_25BED0C70();
  __swift_project_value_buffer(v4, qword_280E7D848);
  sub_25BEC9F70(a1, &v36);
  v5 = sub_25BED0C50();
  v6 = sub_25BED0D50();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v35 = v8;
    *v7 = 136315138;
    v10 = v37;
    v9 = v38;
    __swift_project_boxed_opaque_existential_1(&v36, v37);
    v11 = (*(v9 + 8))(v10, v9);
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1Tm(&v36);
    v14 = sub_25BECB120(v11, v13, &v35);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_25BEC8000, v5, v6, "EngagementCollector registering new donor: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x25F8805C0](v8, -1, -1);
    MEMORY[0x25F8805C0](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v36);
  }

  swift_beginAccess();
  v34 = v2;
  v15 = *(v2 + 24);
  v16 = *(v15 + 16);
  v17 = v15 + 32;

  v39 = -v16;
  v2 = -1;
  while (v39 + v2 != -1)
  {
    if (++v2 >= *(v15 + 16))
    {
      __break(1u);
      goto LABEL_22;
    }

    sub_25BEC9F70(v17, &v36);
    v18 = v37;
    v19 = v38;
    __swift_project_boxed_opaque_existential_1(&v36, v37);
    v20 = (*(v19 + 8))(v18, v19);
    v22 = v21;
    v23 = a1[3];
    v24 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v23);
    if (v20 == (*(v24 + 8))(v23, v24) && v22 == v25)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v36);
LABEL_20:

      sub_25BECD020();
      swift_allocError();
      *v33 = xmmword_25BED14C0;
      return swift_willThrow();
    }

    v17 += 40;
    v27 = sub_25BED0EA0();

    __swift_destroy_boxed_opaque_existential_1Tm(&v36);
    if (v27)
    {
      goto LABEL_20;
    }
  }

  sub_25BEC9F70(a1, &v36);
  swift_beginAccess();
  v28 = *(v34 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v34 + 24) = v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = sub_25BECA688(0, v28[2] + 1, 1, v28);
    *(v34 + 24) = v28;
  }

  v31 = v28[2];
  v30 = v28[3];
  if (v31 >= v30 >> 1)
  {
    v28 = sub_25BECA688((v30 > 1), v31 + 1, 1, v28);
  }

  v28[2] = v31 + 1;
  sub_25BECA8D8(&v36, &v28[5 * v31 + 4]);
  *(v34 + 24) = v28;
  return swift_endAccess();
}

uint64_t sub_25BECA430()
{
  v0 = sub_25BED0C70();
  __swift_allocate_value_buffer(v0, qword_280E7D848);
  __swift_project_value_buffer(v0, qword_280E7D848);
  if (qword_280E7D810 != -1)
  {
    swift_once();
  }

  return sub_25BED0C60();
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

void sub_25BECA588()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_25BED0D20();
    v4 = v3;
  }

  else
  {
    v4 = 0x800000025BED17C0;
    v2 = 0xD00000000000001DLL;
  }

  qword_280E7D818 = v2;
  unk_280E7D820 = v4;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_25BECA688(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_25BECA7E8(0, &qword_280E7D490, sub_25BECA84C, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_25BECA84C();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_25BECA7E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_25BECA84C()
{
  result = qword_280E7D5D8;
  if (!qword_280E7D5D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E7D5D8);
  }

  return result;
}

uint64_t sub_25BECA8D8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

NewsEngagementCollector::StatePropertyValue_optional __swiftcall EngagementDataManager.getProperties(config:)(NewsEngagementCollector::EngagementPropertyConfiguration config)
{
  v3 = v2;
  v4 = v1;
  v50 = *MEMORY[0x277D85DE8];
  v6 = *config.eventName._countAndFlagsBits;
  v5 = *(config.eventName._countAndFlagsBits + 8);
  if (qword_280E7D600 != -1)
  {
    swift_once();
  }

  v7 = sub_25BED0C70();
  __swift_project_value_buffer(v7, qword_280E7D848);

  v8 = sub_25BED0C50();
  v9 = sub_25BED0D70();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v48 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_25BECB120(v6, v5, &v48);
    _os_log_impl(&dword_25BEC8000, v8, v9, "EngagementDataManager fetching properties for: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x25F8805C0](v11, -1, -1);
    MEMORY[0x25F8805C0](v10, -1, -1);
  }

  v47 = *(v3 + 56);
  MEMORY[0x28223BE20]();
  sub_25BED0BF0();
  sub_25BECB728(0, &qword_280E7D828, sub_25BECBCE4);

  sub_25BED0C40();

  if (!v48)
  {

    v18 = sub_25BED0C50();
    v19 = sub_25BED0D70();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v48 = v21;
      *v20 = 136315138;
      v22 = sub_25BECB120(v6, v5, &v48);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_25BEC8000, v18, v19, "EngagementDataManager no store found for: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x25F8805C0](v21, -1, -1);
      MEMORY[0x25F8805C0](v20, -1, -1);
    }

    else
    {
    }

    goto LABEL_19;
  }

  sub_25BED0C00();
  v12 = v49;
  if (v49 >> 60 == 15)
  {

    v13 = sub_25BED0C50();
    v14 = sub_25BED0D70();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v48 = v16;
      *v15 = 136315138;
      v17 = sub_25BECB120(v6, v5, &v48);

      *(v15 + 4) = v17;
      _os_log_impl(&dword_25BEC8000, v13, v14, "EngagementDataManager no stored value found for: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x25F8805C0](v16, -1, -1);
      MEMORY[0x25F8805C0](v15, -1, -1);
    }

    else
    {
    }

LABEL_19:
    v28 = 0;
    goto LABEL_28;
  }

  v23 = v48;
  v24 = objc_opt_self();
  v25 = sub_25BED0B80();
  v48 = 0;
  v26 = [v24 JSONObjectWithData:v25 options:0 error:&v48];

  if (v26)
  {
    v27 = v48;
    sub_25BED0E00();
    swift_unknownObjectRelease();
    sub_25BECC5F0();
    if (swift_dynamicCast())
    {
      v28 = v47;

      v29 = sub_25BED0C50();
      v30 = sub_25BED0D70();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v45 = v4;
        v32 = swift_slowAlloc();
        v48 = v32;
        *v31 = 136315138;
        v33 = sub_25BECB120(v6, v5, &v48);

        *(v31 + 4) = v33;
        _os_log_impl(&dword_25BEC8000, v29, v30, "EngagementDataManager fetched properties for: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        v34 = v32;
        v4 = v45;
        MEMORY[0x25F8805C0](v34, -1, -1);
        MEMORY[0x25F8805C0](v31, -1, -1);
        sub_25BECC654(v23, v12);
      }

      else
      {
        sub_25BECC654(v23, v12);
      }

      goto LABEL_28;
    }

    v46 = v4;
  }

  else
  {
    v46 = v4;
    v37 = v48;
    v38 = sub_25BED0B60();

    swift_willThrow();
    MEMORY[0x25F8804D0](v38);
  }

  v39 = sub_25BED0C50();
  v40 = sub_25BED0D60();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v48 = v42;
    *v41 = 136315138;
    v43 = sub_25BECB120(v6, v5, &v48);

    *(v41 + 4) = v43;
    _os_log_impl(&dword_25BEC8000, v39, v40, "EngagementDataManager failed deserializing data for: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x25F8805C0](v42, -1, -1);
    MEMORY[0x25F8805C0](v41, -1, -1);
    sub_25BECC654(v23, v12);
  }

  else
  {
    sub_25BECC654(v23, v12);
  }

  v28 = 0;
  v4 = v46;
LABEL_28:
  *v4 = v28;
  v44 = *MEMORY[0x277D85DE8];
  result.value.value._rawValue = v35;
  result.is_nil = v36;
  return result;
}

uint64_t sub_25BECB008(void *a1, uint64_t a2)
{
  v3 = v2;
  if (*a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1[1] == 1;
  }

  if (v5)
  {
    sub_25BED0894(a1, sub_25BED08F4);
    v9 = *v2;
    v10 = sub_25BECB344(a2);
    if (v11)
    {
      v12 = v10;
      v13 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v17 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_25BED05C0();
        v15 = v17;
      }

      sub_25BECB1EC(*(v15 + 56) + 16 * v12, &v18);
      sub_25BED0128(v12, v15);
      *v3 = v15;
    }

    else
    {
      v18 = xmmword_25BED14C0;
    }

    return sub_25BED0894(&v18, sub_25BED08F4);
  }

  else
  {
    sub_25BECB1EC(a1, &v18);
    v6 = *v2;
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_25BECB224(&v18, a2, v7);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_25BECB120(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25BECBF00(v11, 0, 0, 1, a1, a2);
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
    sub_25BECBEA4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t sub_25BECB224(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_25BECB344(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_25BED05C0();
      v9 = v17;
      goto LABEL_8;
    }

    sub_25BECB388(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_25BECB344(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_25BED0EB0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7] + 16 * v9;

    return sub_25BED0944(a1, v21);
  }

  else
  {

    return sub_25BECB6C0(v9, a2, a1, v20);
  }
}

unint64_t sub_25BECB344(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_25BED0F00();

  return sub_25BECB5F4(a1, v4);
}

uint64_t sub_25BECB388(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_25BECB660();
  result = sub_25BED0E70();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 16 * v20;
      if (a2)
      {
        sub_25BECB1EC(v22, v33);
      }

      else
      {
        sub_25BECEB74(v22, v33);
      }

      v23 = *(v8 + 40);
      result = sub_25BED0F00();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_25BECB1EC(v33, *(v8 + 56) + 16 * v16);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
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
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

unint64_t sub_25BECB5F4(uint64_t a1, uint64_t a2)
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

void sub_25BECB660()
{
  if (!qword_280E7D498)
  {
    v0 = sub_25BED0E80();
    if (!v1)
    {
      atomic_store(v0, &qword_280E7D498);
    }
  }
}

uint64_t sub_25BECB6C0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_25BECB1EC(a3, a4[7] + 16 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void sub_25BECB728(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25BED0DF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25BECB77C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EngagementDataManagerConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_25BECB7E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a3;
  sub_25BECB728(0, &qword_280E7D5F8, MEMORY[0x277D85B28]);
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v35 - v9;
  v11 = sub_25BED0B70();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v4 + 56);
  v41 = v4;
  v42 = a1;
  v40 = a1;
  v43 = a2;
  sub_25BED0BF0();
  sub_25BECB728(0, &qword_280E7D828, sub_25BECBCE4);

  sub_25BED0C40();

  if (v44[0])
  {

    if (qword_280E7D600 != -1)
    {
      swift_once();
    }

    v16 = sub_25BED0C70();
    __swift_project_value_buffer(v16, qword_280E7D848);

    v17 = sub_25BED0C50();
    v18 = sub_25BED0D70();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v44[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_25BECB120(v40, a2, v44);
      _os_log_impl(&dword_25BEC8000, v17, v18, "Already registered store for event: %s. Skipping.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x25F8805C0](v20, -1, -1);
      MEMORY[0x25F8805C0](v19, -1, -1);
    }
  }

  else
  {
    v37 = v11;
    v38 = v12;
    if (qword_280E7D600 != -1)
    {
      swift_once();
    }

    v21 = sub_25BED0C70();
    __swift_project_value_buffer(v21, qword_280E7D848);

    v22 = sub_25BED0C50();
    v23 = sub_25BED0D70();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v36 = v10;
      v25 = v24;
      v26 = swift_slowAlloc();
      v44[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_25BECB120(v40, a2, v44);
      _os_log_impl(&dword_25BEC8000, v22, v23, "Registering store for event: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x25F8805C0](v26, -1, -1);
      v27 = v25;
      v10 = v36;
      MEMORY[0x25F8805C0](v27, -1, -1);
    }

    (*(v38 + 16))(v15, v39, v37);
    (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
    sub_25BECBCE4();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();

    v31 = v40;
    v32 = sub_25BED0C10();
    sub_25BED0BA0();
    swift_beginAccess();

    v33 = *(v4 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = *(v4 + 64);
    *(v4 + 64) = 0x8000000000000000;
    sub_25BECC00C(v32, v31, a2, isUniquelyReferenced_nonNull_native);

    *(v4 + 64) = v45;
    swift_endAccess();
    sub_25BED0BB0();
  }
}

void sub_25BECBCE4()
{
  if (!qword_280E7D830)
  {
    sub_25BECBD4C();
    sub_25BECBDA0();
    v0 = sub_25BED0C30();
    if (!v1)
    {
      atomic_store(v0, &qword_280E7D830);
    }
  }
}

unint64_t sub_25BECBD4C()
{
  result = qword_280E7D838;
  if (!qword_280E7D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7D838);
  }

  return result;
}

unint64_t sub_25BECBDA0()
{
  result = qword_280E7D840;
  if (!qword_280E7D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7D840);
  }

  return result;
}

uint64_t sub_25BECBE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 64);
  if (*(v8 + 16) && (v9 = sub_25BECC1B0(a2, a3, sub_25BECC538), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v12 = 0;
  }

  *a4 = v12;
  return swift_endAccess();
}

uint64_t sub_25BECBEA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_25BECBF00(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25BECDA30(a5, a6);
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
    result = sub_25BED0E40();
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

uint64_t sub_25BECC00C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25BECC1B0(a2, a3, sub_25BECC538);
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
      sub_25BECC234(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_25BECC1B0(a2, a3, sub_25BECC538);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_25BED0EB0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_25BED0730();
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

uint64_t sub_25BECC1B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_25BED0F10();
  sub_25BED0D30();
  v7 = sub_25BED0F20();

  return a3(a1, a2, v7);
}

uint64_t sub_25BECC234(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_25BECC4D0();
  v38 = a2;
  result = sub_25BED0E70();
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
      sub_25BED0F10();
      sub_25BED0D30();
      result = sub_25BED0F20();
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

void sub_25BECC4D0()
{
  if (!qword_280E7D5E0)
  {
    sub_25BECBCE4();
    v0 = sub_25BED0E80();
    if (!v1)
    {
      atomic_store(v0, &qword_280E7D5E0);
    }
  }
}

unint64_t sub_25BECC538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25BED0EA0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_25BECC5F0()
{
  if (!qword_280E7D5F0)
  {
    v0 = sub_25BED0D10();
    if (!v1)
    {
      atomic_store(v0, &qword_280E7D5F0);
    }
  }
}

uint64_t sub_25BECC654(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25BECC668(a1, a2);
  }

  return a1;
}

uint64_t sub_25BECC668(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25BECC6BC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25BECC704()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BECC73C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25BECC78C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25BECC7E4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BECC81C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25BECC85C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_25BECC8AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_25BECC8FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BED0B70();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25BECC968(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BED0B70();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t EngagementPropertyConfiguration.eventName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static EngagementPropertyConfiguration.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25BED0EA0();
  }
}

uint64_t EngagementPropertyConfiguration.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_25BED0D30();
}

uint64_t EngagementPropertyConfiguration.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25BED0F10();
  sub_25BED0D30();
  return sub_25BED0F20();
}

uint64_t sub_25BECCA94()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25BED0F10();
  sub_25BED0D30();
  return sub_25BED0F20();
}

uint64_t sub_25BECCAE0()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_25BED0D30();
}

uint64_t sub_25BECCAE8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25BED0F10();
  sub_25BED0D30();
  return sub_25BED0F20();
}

unint64_t sub_25BECCB34()
{
  result = qword_27FBE8890;
  if (!qword_27FBE8890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE8890);
  }

  return result;
}

uint64_t sub_25BECCB88(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25BED0EA0();
  }
}

uint64_t sub_25BECCBB8(uint64_t a1, int a2)
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

uint64_t sub_25BECCC00(uint64_t result, int a2, int a3)
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

uint64_t EngagementCollector.donors.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t EngagementCollector.__allocating_init()()
{
  v0 = sub_25BED0DB0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_25BED0CC0() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = *(*(sub_25BED0DA0() - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = swift_allocObject();
  sub_25BEC9A60();
  sub_25BED0D90();
  sub_25BED0CB0();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v0);
  v8 = sub_25BED0DD0();
  v9 = MEMORY[0x277D84F90];
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  return v7;
}

uint64_t EngagementCollector.init()()
{
  v1 = v0;
  v2 = sub_25BED0DB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_25BED0CC0() - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = *(*(sub_25BED0DA0() - 8) + 64);
  MEMORY[0x28223BE20]();
  sub_25BEC9A60();
  sub_25BED0D90();
  sub_25BED0CB0();
  (*(v3 + 104))(v6, *MEMORY[0x277D85260], v2);
  v9 = sub_25BED0DD0();
  v10 = MEMORY[0x277D84F90];
  *(v1 + 16) = v9;
  *(v1 + 24) = v10;
  return v1;
}

unint64_t sub_25BECD020()
{
  result = qword_27FBE8898;
  if (!qword_27FBE8898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE8898);
  }

  return result;
}

void sub_25BECD080(uint64_t a1, void *a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v53 = a4;
  v54 = a3;
  v60 = a2;
  v52 = sub_25BED0CE0();
  v51 = *(v52 - 8);
  v5 = *(v51 + 64);
  v6 = (MEMORY[0x28223BE20])();
  v49 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = v48 - v8;
  if (qword_280E7D600 != -1)
  {
    swift_once();
  }

  v9 = sub_25BED0C70();
  v61 = __swift_project_value_buffer(v9, qword_280E7D848);
  v10 = sub_25BED0C50();
  v11 = sub_25BED0D50();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_25BEC8000, v10, v11, "Start collecting data", v12, 2u);
    MEMORY[0x25F8805C0](v12, -1, -1);
  }

  v65 = dispatch_group_create();
  v13 = swift_allocObject();
  v62 = v13;
  *(v13 + 16) = MEMORY[0x277D84F98];
  v48[1] = v13 + 16;
  v56 = *(a1 + 16);
  if (v56)
  {
    v15 = 0;
    v55 = a1 + 32;
    *&v14 = 136315138;
    v59 = v14;
    v16 = v60;
    do
    {
      v57 = v15;
      sub_25BEC9F70(v55 + 40 * v15, v72);
      v17 = v74;
      v18 = v75;
      __swift_project_boxed_opaque_existential_1(v72, v74);
      v58 = (*(v18 + 16))(v17, v18);
      v19 = *(v58 + 16);
      if (v19)
      {
        v20 = (v58 + 40);
        do
        {
          v63 = v20;
          v64 = v19;
          v29 = *(v20 - 1);
          v30 = *v20;

          dispatch_group_enter(v65);
          sub_25BEC9F70(v72, &v67);
          v31 = sub_25BED0C50();
          v32 = sub_25BED0D50();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v66 = v34;
            *v33 = v59;
            v36 = v70;
            v35 = v71;
            __swift_project_boxed_opaque_existential_1(&v67, v70);
            v37 = (*(v35 + 8))(v36, v35);
            v39 = v38;
            __swift_destroy_boxed_opaque_existential_1Tm(&v67);
            v40 = sub_25BECB120(v37, v39, &v66);

            *(v33 + 4) = v40;
            _os_log_impl(&dword_25BEC8000, v31, v32, "Getting data from donor: %s", v33, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v34);
            MEMORY[0x25F8805C0](v34, -1, -1);
            MEMORY[0x25F8805C0](v33, -1, -1);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1Tm(&v67);
          }

          v21 = v74;
          v22 = v75;
          __swift_project_boxed_opaque_existential_1(v72, v74);
          v67 = v29;
          v68 = v30;
          v23 = swift_allocObject();
          v24 = v62;
          v23[2] = v16;
          v23[3] = v24;
          v23[4] = v29;
          v23[5] = v30;
          v25 = v65;
          v23[6] = v65;
          v26 = *(v22 + 24);

          v27 = v16;

          v28 = v25;
          v26(&v67, sub_25BECE3A4, v23, v21, v22);

          v20 = v63 + 2;
          v19 = v64 - 1;
        }

        while (v64 != 1);
      }

      v15 = v57 + 1;

      __swift_destroy_boxed_opaque_existential_1Tm(v72);
    }

    while (v15 != v56);
  }

  v41 = v49;
  sub_25BED0CD0();
  v42 = v50;
  sub_25BED0CF0();
  v43 = *(v51 + 8);
  v44 = v52;
  v43(v41, v52);
  sub_25BED0D80();
  v43(v42, v44);
  if (sub_25BED0C80())
  {
    swift_beginAccess();
    v67 = *(v62 + 16);
    v68 = 0;
    v69 = 0;

    v54(&v67);

    sub_25BECE3B4(v67, v68, v69);
  }

  else
  {
    v45 = sub_25BED0C50();
    v46 = sub_25BED0D60();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_25BEC8000, v45, v46, "A Donor failed to call completion block in time. Donation might be partial.", v47, 2u);
      MEMORY[0x25F8805C0](v47, -1, -1);
    }

    v72[0] = 0;
    v72[1] = 0;
    v73 = 1;
    v54(v72);
  }
}

uint64_t sub_25BECD6B4(uint64_t *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = *a1;
  v11 = a3 + 16;
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_25BECE3D4;
  *(v13 + 24) = v12;
  v17[4] = sub_25BECE3E4;
  v17[5] = v13;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_25BECD8EC;
  v17[3] = &block_descriptor_17;
  v14 = _Block_copy(v17);

  v15 = a6;

  dispatch_sync(a2, v14);
  _Block_release(v14);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

void sub_25BECD834(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, dispatch_group_t group)
{
  if (a1)
  {
    swift_beginAccess();

    v10 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a2;
    sub_25BED02B8(a1, a3, a4, isUniquelyReferenced_nonNull_native);

    *a2 = v12;
    swift_endAccess();
  }

  dispatch_group_leave(group);
}

uint64_t sub_25BECD914(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t EngagementCollector.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t EngagementCollector.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_25BECD9EC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 24);
}

uint64_t sub_25BECDA30(uint64_t a1, unint64_t a2)
{
  v4 = sub_25BECDA7C(a1, a2);
  sub_25BECDBAC(&unk_286D83298);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25BECDA7C(uint64_t a1, unint64_t a2)
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

  v6 = sub_25BECDC98(v5, 0);
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

  result = sub_25BED0E40();
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
        v10 = sub_25BED0D40();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25BECDC98(v10, 0);
        result = sub_25BED0E30();
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

uint64_t sub_25BECDBAC(uint64_t result)
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

  result = sub_25BECDD00(result, v12, 1, v3);
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

void *sub_25BECDC98(uint64_t a1, uint64_t a2)
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

  sub_25BECE40C();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25BECDD00(char *result, int64_t a2, char a3, char *a4)
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
    sub_25BECE40C();
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

uint64_t sub_25BECDDE8(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;
  v3 = sub_25BED0C90();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25BED0CC0();
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25BED0CA0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v16 = *(v2 + 16);
  v17 = *(v2 + 24);
  sub_25BEC9A60();
  (*(v12 + 104))(v15, *MEMORY[0x277D851A8], v11);

  v18 = sub_25BED0DE0();
  (*(v12 + 8))(v15, v11);
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v16;
  v20 = v26;
  v19[4] = v25;
  v19[5] = v20;
  aBlock[4] = sub_25BECE2A0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25BECD914;
  aBlock[3] = &block_descriptor;
  v21 = _Block_copy(aBlock);
  v22 = v16;

  sub_25BED0CB0();
  v30 = MEMORY[0x277D84F90];
  sub_25BECE2C4();
  sub_25BECA7E8(0, &qword_280E7D4A8, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_25BECE31C();
  sub_25BED0E10();
  MEMORY[0x25F8800A0](0, v10, v6, v21);
  _Block_release(v21);

  (*(v29 + 8))(v6, v3);
  (*(v27 + 8))(v10, v28);
}

uint64_t get_enum_tag_for_layout_string_23NewsEngagementCollector0C5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25BECE190(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BECE1E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_25BECE244(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25BECE2C4()
{
  result = qword_280E7D4C0;
  if (!qword_280E7D4C0)
  {
    sub_25BED0C90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7D4C0);
  }

  return result;
}

unint64_t sub_25BECE31C()
{
  result = qword_280E7D4A0;
  if (!qword_280E7D4A0)
  {
    sub_25BECA7E8(255, &qword_280E7D4A8, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7D4A0);
  }

  return result;
}

uint64_t sub_25BECE3B4(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_25BECE3C0(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_25BECE3C0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_25BECE3E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_25BECE40C()
{
  if (!qword_280E7D488)
  {
    v0 = sub_25BED0E90();
    if (!v1)
    {
      atomic_store(v0, &qword_280E7D488);
    }
  }
}

uint64_t sub_25BECE464(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_25BECE4C4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_25BECE510(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_25BECE5B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

uint64_t sub_25BECE614()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

void *BaseDonor.__allocating_init(type:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BED0BD0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = swift_allocObject();
  v6[5] = MEMORY[0x277D84F98];
  sub_25BED0BC0();
  v7 = sub_25BED0BF0();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v6[6] = sub_25BED0BE0();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = MEMORY[0x277D84F90];
  return v6;
}

uint64_t sub_25BECE7D8(uint64_t *a1)
{
  v32 = *a1;
  v33 = a1[1];
  v28 = *(v1 + 48);
  sub_25BED0BA0();
  swift_beginAccess();
  v30 = v1;
  v2 = *(v1 + 40);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v1 + 40) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v31 = *(v1 + 40);

  v11 = 0;
  v29 = v4;
  if (!v8)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v15 = v11;
      v16 = v32;
      v17 = v33;
LABEL_15:
      v20 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v21 = v20 | (v15 << 6);
      v22 = *(*(v31 + 48) + 8 * v21);
      sub_25BECEB74(*(v31 + 56) + 16 * v21, v34);
      v35 = v22;
      sub_25BECB1EC(v34, v36);
LABEL_16:
      sub_25BECEBAC(&v35, v37);
      if (!v38[0] && v38[1] == 1)
      {

        return sub_25BED0BB0();
      }

      sub_25BECB1EC(v38, &v35);
      if (swift_unknownObjectWeakLoadStrong())
      {
        break;
      }

      result = sub_25BECECCC(&v35);
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    if (qword_280E7D600 != -1)
    {
      swift_once();
    }

    v23 = sub_25BED0C70();
    __swift_project_value_buffer(v23, qword_280E7D848);

    v24 = sub_25BED0C50();
    v25 = sub_25BED0D70();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_25BECB120(v16, v33, v34);
      _os_log_impl(&dword_25BEC8000, v24, v25, "EngagementDataManager property did Change: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x25F8805C0](v27, -1, -1);
      v17 = v33;
      MEMORY[0x25F8805C0](v26, -1, -1);
    }

    v34[0] = v16;
    v34[1] = v17;
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = v16;
    v13[4] = v17;
    v14 = *(*v30 + 192);

    v14(v34, sub_25BECEE5C, v13);
    swift_unknownObjectRelease();

    result = sub_25BECECCC(&v35);
    v4 = v29;
  }

  while (v8);
LABEL_7:
  if (v9 <= v11 + 1)
  {
    v18 = v11 + 1;
  }

  else
  {
    v18 = v9;
  }

  v19 = v18 - 1;
  v16 = v32;
  v17 = v33;
  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v15 >= v9)
    {
      v8 = 0;
      v35 = 0;
      v36[0] = 0;
      v11 = v19;
      v36[1] = 1;
      goto LABEL_16;
    }

    v8 = *(v4 + 8 * v15);
    ++v11;
    if (v8)
    {
      v11 = v15;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BECEBAC(uint64_t a1, uint64_t a2)
{
  sub_25BECEC10();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_25BECEC10()
{
  if (!qword_280E7D4B0)
  {
    sub_25BECEC68();
    v0 = sub_25BED0DF0();
    if (!v1)
    {
      atomic_store(v0, &qword_280E7D4B0);
    }
  }
}

void sub_25BECEC68()
{
  if (!qword_280E7D4B8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E7D4B8);
    }
  }
}

void *BaseDonor.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return v0;
}

uint64_t BaseDonor.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_25BECED84()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t sub_25BECEDD4()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
}

uint64_t sub_25BECEFCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BECF018(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
      *(result + 8) = 1;
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

uint64_t sub_25BECF088(uint64_t *a1, int a2)
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

uint64_t sub_25BECF0D0(uint64_t result, int a2, int a3)
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

uint64_t EngagementDataManager.collector.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  sub_25BECA8D8(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t EngagementDataManager.getProperties(propertyName:completion:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32[0] = a3;
  v36 = *MEMORY[0x277D85DE8];
  v7 = type metadata accessor for EngagementDataManagerConfig();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E7D600 != -1)
  {
    swift_once();
  }

  v11 = sub_25BED0C70();
  __swift_project_value_buffer(v11, qword_280E7D848);

  v12 = sub_25BED0C50();
  v13 = sub_25BED0D70();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_25BECB120(a1, a2, &v34);
    _os_log_impl(&dword_25BEC8000, v12, v13, "EngagementDataManager fetching properties for: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x25F8805C0](v15, -1, -1);
    MEMORY[0x25F8805C0](v14, -1, -1);
  }

  sub_25BECB77C(v4 + OBJC_IVAR____TtC23NewsEngagementCollector21EngagementDataManager_managerConfig, v10);
  sub_25BECB7E0(a1, a2, v10);
  v16 = sub_25BED0B70();
  v17 = (*(*(v16 - 8) + 8))(v10, v16);
  v33 = *(v4 + 56);
  MEMORY[0x28223BE20](v17);
  v32[-4] = v4;
  v32[-3] = a1;
  v32[-2] = a2;
  sub_25BED0BF0();
  sub_25BECB728(0, &qword_280E7D828, sub_25BECBCE4);

  sub_25BED0C40();

  if (v34)
  {
    sub_25BED0C00();
    v18 = v35;
    if (v35 >> 60 == 15)
    {
    }

    else
    {
      v19 = v34;
      v20 = objc_opt_self();
      v21 = sub_25BED0B80();
      v34 = 0;
      v22 = [v20 JSONObjectWithData:v21 options:0 error:&v34];

      if (v22)
      {
        v23 = v34;
        sub_25BED0E00();
        swift_unknownObjectRelease();
        sub_25BECC5F0();
        if (swift_dynamicCast())
        {
          v34 = v33;
          (v32[0])(&v34);

          sub_25BECC654(v19, v18);

          goto LABEL_16;
        }

        sub_25BECC654(v19, v18);
      }

      else
      {
        v25 = v34;
        v26 = sub_25BED0B60();

        swift_willThrow();

        sub_25BECC654(v19, v18);
        MEMORY[0x25F8804D0](v26);
      }
    }
  }

  v27 = sub_25BED0C50();
  v28 = sub_25BED0D70();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v34 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_25BECB120(a1, a2, &v34);
    _os_log_impl(&dword_25BEC8000, v27, v28, "EngagementDataManager no properties found for: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x25F8805C0](v30, -1, -1);
    MEMORY[0x25F8805C0](v29, -1, -1);
  }

  v34 = 0;
  result = (v32[0])(&v34);
LABEL_16:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t EngagementDataManager.__allocating_init(config:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  EngagementDataManager.init(config:)(a1);
  return v5;
}

void sub_25BECF764(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v34[2] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v6 = *a2;
  v5 = a2[1];
  if (qword_280E7D600 != -1)
  {
    swift_once();
  }

  v7 = sub_25BED0C70();
  __swift_project_value_buffer(v7, qword_280E7D848);

  v8 = sub_25BED0C50();
  v9 = sub_25BED0D70();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_25BECB120(v6, v5, v34);
    _os_log_impl(&dword_25BEC8000, v8, v9, "EngagementDataManager storing properties for: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x25F8805C0](v11, -1, -1);
    MEMORY[0x25F8805C0](v10, -1, -1);
  }

  v33 = *(v3 + 56);
  MEMORY[0x28223BE20](v12);
  sub_25BED0BF0();
  sub_25BECB728(0, &qword_280E7D828, sub_25BECBCE4);

  sub_25BED0C40();

  if (v34[0])
  {
    v13 = objc_opt_self();
    v14 = sub_25BED0D00();
    v34[0] = 0;
    v15 = [v13 dataWithJSONObject:v14 options:0 error:v34];

    v16 = v34[0];
    if (v15)
    {
      v17 = sub_25BED0B90();
      v19 = v18;

      v34[0] = v17;
      v34[1] = v19;
      sub_25BED0C20();

      sub_25BECC668(v17, v19);
    }

    else
    {
      v25 = v16;
      v26 = sub_25BED0B60();

      swift_willThrow();
      MEMORY[0x25F8804D0](v26);

      v27 = sub_25BED0C50();
      v28 = sub_25BED0D60();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v34[0] = v30;
        *v29 = 136315138;
        v31 = sub_25BECB120(v6, v5, v34);

        *(v29 + 4) = v31;
        _os_log_impl(&dword_25BEC8000, v27, v28, "EngagementDataManager failed serializing value for: %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        MEMORY[0x25F8805C0](v30, -1, -1);
        MEMORY[0x25F8805C0](v29, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {

    v20 = sub_25BED0C50();
    v21 = sub_25BED0D60();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v34[0] = v23;
      *v22 = 136315138;
      v24 = sub_25BECB120(v6, v5, v34);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_25BEC8000, v20, v21, "EngagementDataManager no store found for: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x25F8805C0](v23, -1, -1);
      MEMORY[0x25F8805C0](v22, -1, -1);
    }

    else
    {
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t *EngagementDataManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  sub_25BED0894(v0 + OBJC_IVAR____TtC23NewsEngagementCollector21EngagementDataManager_managerConfig, type metadata accessor for EngagementDataManagerConfig);
  return v0;
}

uint64_t EngagementDataManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  sub_25BED0894(v0 + OBJC_IVAR____TtC23NewsEngagementCollector21EngagementDataManager_managerConfig, type metadata accessor for EngagementDataManagerConfig);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_25BECFD3C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_25BEC9F70(v3 + 16, a1);
}

uint64_t *sub_25BECFD88(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *result;
  if (*result)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v7[1] = a4;
      v8 = v4;
      v7[0] = a3;
      sub_25BECF764(&v8, v7);
    }
  }

  return result;
}

uint64_t type metadata accessor for EngagementDataManager()
{
  result = qword_280E7D7F8;
  if (!qword_280E7D7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BECFE8C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_25BED09A0();
  v38 = a2;
  result = sub_25BED0E70();
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
      sub_25BED0F10();
      sub_25BED0D30();
      result = sub_25BED0F20();
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

unint64_t sub_25BED0128(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25BED0E20() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_25BED0F00();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      result = v17 + 16 * v3;
      if (v3 < v6 || result >= v17 + 16 * v6 + 16)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25BED02B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25BECC1B0(a2, a3, sub_25BECC538);
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
      sub_25BECFE8C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_25BECC1B0(a2, a3, sub_25BECC538);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_25BED0EB0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_25BED045C();
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

void *sub_25BED045C()
{
  v1 = v0;
  sub_25BED09A0();
  v2 = *v0;
  v3 = sub_25BED0E60();
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

void *sub_25BED05C0()
{
  v1 = v0;
  sub_25BECB660();
  v2 = *v0;
  v3 = sub_25BED0E60();
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
        sub_25BECEB74(*(v2 + 56) + 16 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_25BECB1EC(v19, *(v4 + 56) + 16 * v17);
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

void *sub_25BED0730()
{
  v1 = v0;
  sub_25BECC4D0();
  v2 = *v0;
  v3 = sub_25BED0E60();
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

uint64_t sub_25BED0894(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_25BED08F4()
{
  if (!qword_27FBE88A0)
  {
    v0 = sub_25BED0DF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27FBE88A0);
    }
  }
}

void sub_25BED09A0()
{
  if (!qword_27FBE88A8)
  {
    sub_25BED0A04();
    v0 = sub_25BED0E80();
    if (!v1)
    {
      atomic_store(v0, &qword_27FBE88A8);
    }
  }
}

unint64_t sub_25BED0A04()
{
  result = qword_27FBE88B0;
  if (!qword_27FBE88B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBE88B0);
  }

  return result;
}

uint64_t EngagementDataManagerConfig.localStorageDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25BED0B70();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}