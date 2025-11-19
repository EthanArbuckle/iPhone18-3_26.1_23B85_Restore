uint64_t sub_228744E6C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v34 = a2;
  v6 = *v3;
  v7 = sub_2287CAA50();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228744BC0(a1);
  v36 = v6;
  swift_getMetatypeMetadata();
  v33 = sub_2287CB250();
  v12 = v11;
  v13 = *(v3 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo), *(v3 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo + 24));
  v14 = sub_2287C9A70();
  v16 = v15;
  sub_2287CA9D0();

  v17 = sub_2287CAA40();
  v18 = sub_2287CB610();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v32 = v7;
    v20 = v19;
    v31 = swift_slowAlloc();
    v36 = v31;
    *v20 = 136446978;
    v21 = a3;
    v22 = v14;
    v23 = sub_2287031D8(v33, v12, &v36);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2082;
    v24 = sub_2287031D8(v22, v16, &v36);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2080;
    *(v20 + 24) = sub_2287031D8(v34, v21, &v36);
    *(v20 + 32) = 2080;
    v25 = sub_2287CB3D0();
    v27 = v26;

    v28 = sub_2287031D8(v25, v27, &v36);

    *(v20 + 34) = v28;
    _os_log_impl(&dword_2286FF000, v17, v18, "[%{public}s][%{public}s] %s%s", v20, 0x2Au);
    v29 = v31;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v29, -1, -1);
    MEMORY[0x22AABFD90](v20, -1, -1);

    return (*(v35 + 8))(v10, v32);
  }

  else
  {

    return (*(v35 + 8))(v10, v7);
  }
}

uint64_t HealthExperienceStoreFeedItemContext.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  v3 = OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_boundingRange;
  v4 = sub_2287C9590();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_displayNamePublisher);

  v6 = OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_feedItemStorage;
  v7 = sub_2287CA340();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_queueProvider));
  v8 = *(v0 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_loggingSensitiveTerms);

  return v0;
}

uint64_t HealthExperienceStoreFeedItemContext.__deallocating_deinit()
{
  HealthExperienceStoreFeedItemContext.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id sub_228745318()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_228745368()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 56);
}

uint64_t sub_2287453A8()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 24);
}

uint64_t sub_2287453EC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return swift_unknownObjectRetain();
}

uint64_t sub_228745434@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_boundingRange;
  swift_beginAccess();
  v5 = sub_2287C9590();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

id sub_2287454C0()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 48);

  return v2;
}

uint64_t sub_228745524(uint64_t a1)
{
  v3 = (*v1 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_queueProvider);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  return (*(v5 + 8))(a1, v4, v5);
}

uint64_t sub_22874558C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = *v2;
  a2[3] = &type metadata for DispatchQueueGeneratorScheduler;
  a2[4] = sub_228741120();
  v6 = swift_allocObject();
  *a2 = v6;
  v6[5] = type metadata accessor for HealthExperienceStoreFeedItemContext(0);
  v6[6] = a1;
  v6[2] = v5;
}

uint64_t HealthExperienceStoreFeedItemContext.description.getter()
{
  sub_2287CBA20();

  v9 = *v0;
  sub_228745A70();
  v1 = sub_2287CB250();
  MEMORY[0x22AABE980](v1);

  MEMORY[0x22AABE980](0x6F7269766E65202CLL, 0xEF203A746E656D6ELL);
  swift_beginAccess();
  v2 = *(v0 + 56);
  v3 = sub_2287CA410();
  MEMORY[0x22AABE980](v3);

  MEMORY[0x22AABE980](0xD000000000000012, 0x80000002287D0B50);
  v4 = [*(v0 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_storageContext) description];
  v5 = sub_2287CB220();
  v7 = v6;

  MEMORY[0x22AABE980](v5, v7);

  MEMORY[0x22AABE980](41, 0xE100000000000000);
  return 60;
}

uint64_t sub_22874585C(uint64_t a1)
{
  v2 = sub_2287C9D50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    v11(v7, v12, v2);
    while (1)
    {
      v14 = sub_2287C9D00();
      if (v14)
      {
        v15 = v14;
        v14(v7);
        sub_228714BC0(v15);
      }

      result = (*(v9 - 8))(v7, v2);
      v12 += v13;
      if (!--v8)
      {
        break;
      }

      v10(v7, v12, v2);
    }
  }

  return result;
}

void sub_2287459AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228745A10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_228745A70()
{
  result = qword_280DE2F98[0];
  if (!qword_280DE2F98[0])
  {
    type metadata accessor for HealthExperienceStoreFeedItemContext(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_280DE2F98);
  }

  return result;
}

uint64_t sub_228745AC0()
{
  result = sub_2287C9590();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_2287CA340();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_228745DE4()
{
  sub_2287CA1F0();
  if (v0 <= 0x3F)
  {
    sub_2287459AC(319, &qword_280DE0000, MEMORY[0x277D11EB0], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_228745E98(uint64_t a1, void *a2, void *a3, void *a4, unsigned __int8 a5)
{
  v6 = a5 >> 5;
  if (v6 <= 1)
  {
    if (a5 >> 5 && v6 != 1)
    {
      return;
    }
  }

  else if (v6 != 2 && v6 != 3)
  {
    if (v6 == 4)
    {

      sub_228745F34(a2, a3, a4, a5 & 0x1F);
    }

    return;
  }
}

id sub_228745F34(id result, void *a2, void *a3, char a4)
{
  if (!a4)
  {
    a3 = a2;
LABEL_6:

    result = a3;
    goto LABEL_7;
  }

  if (a4 != 2)
  {
    if (a4 != 1)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_7:

  return sub_228745F9C(result);
}

id sub_228745F9C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_228745FAC(uint64_t a1, void *a2, void *a3, void *a4, unsigned __int8 a5)
{
  v6 = a5 >> 5;
  if (v6 <= 1)
  {
    if (a5 >> 5 && v6 != 1)
    {
      return;
    }
  }

  else if (v6 != 2 && v6 != 3)
  {
    if (v6 == 4)
    {

      sub_228746048(a2, a3, a4, a5 & 0x1F);
    }

    return;
  }
}

void sub_228746048(void *a1, void *a2, void *a3, char a4)
{
  if (!a4)
  {
    a3 = a2;
LABEL_6:

    a1 = a3;
    goto LABEL_7;
  }

  if (a4 != 2)
  {
    if (a4 != 1)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_7:

  sub_2287460B0(a1);
}

void sub_2287460B0(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_2287460C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2287460D4(a1, a2);
  }

  return a1;
}

uint64_t sub_2287460D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_228746128(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExecuteChangesResult(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_22874618C()
{
  sub_2287CA210();
  sub_2287CA100();
  v0 = sub_2287CB210();

  v1 = [objc_opt_self() featureWithName:v0 featureType:1];

  qword_280DE63A8 = v1;
}

uint64_t sub_22874620C()
{
  v38 = sub_2287C9AE0();
  v1 = *(v38 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2287C9B20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA290();
  v9 = sub_2287C9AF0();
  (*(v5 + 8))(v8, v4);
  v10 = *(v9 + 16);
  if (v10)
  {
    v34[1] = v0;
    v39 = MEMORY[0x277D84F90];
    sub_2287042D4(0, v10, 0);
    v11 = v39;
    v13 = *(v1 + 16);
    v12 = v1 + 16;
    v14 = *(v12 + 64);
    v34[0] = v9;
    v15 = v9 + ((v14 + 32) & ~v14);
    v35 = *(v12 + 56);
    v36 = v13;
    v16 = (v12 - 8);
    do
    {
      v18 = v37;
      v17 = v38;
      v19 = v12;
      v36(v37, v15, v38);
      v20 = sub_2287C9AD0();
      v22 = v21;
      (*v16)(v18, v17);
      v39 = v11;
      v24 = *(v11 + 2);
      v23 = *(v11 + 3);
      if (v24 >= v23 >> 1)
      {
        sub_2287042D4((v23 > 1), v24 + 1, 1);
        v11 = v39;
      }

      *(v11 + 2) = v24 + 1;
      v25 = &v11[16 * v24];
      *(v25 + 4) = v20;
      *(v25 + 5) = v22;
      v15 += v35;
      --v10;
      v12 = v19;
    }

    while (v10);
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v39 = v11;

  sub_228747080(&v39);

  sub_228704344(0, &qword_280DE3A00, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_228714B18();
  sub_2287CB1D0();

  v26 = objc_opt_self();
  if (qword_280DE33C0 != -1)
  {
    swift_once();
  }

  v27 = qword_280DE6360;
  v28 = sub_2287CB210();
  v29 = [objc_opt_self() featureValueWithString_];

  v30 = [v26 customRelevanceProviderForFeature:v27 withValue:v29];
  if (v30)
  {

    sub_228704344(0, &qword_280DE1268, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_2287CCC50;
    sub_228746690();
    *(v31 + 32) = v32;
    return v31;
  }

  else
  {
    result = sub_2287CBB90();
    __break(1u);
  }

  return result;
}

void sub_228746690()
{
  v0 = sub_2287C9B20();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  if (qword_280DE37D8 != -1)
  {
    swift_once();
  }

  v6 = qword_280DE63A0;
  sub_2287CA2A0();
  sub_2287CA110();
  sub_2287470EC(&qword_280DE3950, MEMORY[0x277D11E28]);
  sub_2287CB350();
  (*(v1 + 8))(v4, v0);
  v7 = sub_2287CB210();

  v8 = [objc_opt_self() featureValueWithString_];

  v9 = [v5 customRelevanceProviderForFeature:v6 withValue:v8];
  if (!v9)
  {
    __break(1u);
  }
}

void sub_228746874()
{
  v0 = objc_opt_self();
  if (qword_280DE11D0 != -1)
  {
    swift_once();
  }

  v1 = qword_280DE62A8;
  sub_2287CA040();
  sub_2287CA110();
  v2 = sub_2287CB210();

  v3 = [objc_opt_self() featureValueWithString_];

  v4 = [v0 customRelevanceProviderForFeature:v1 withValue:v3];
  if (!v4)
  {
    __break(1u);
  }
}

void sub_228746978()
{
  v0 = sub_2287C9F50();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  if (qword_280DE37E8 != -1)
  {
    swift_once();
  }

  v6 = qword_280DE63B0;
  sub_2287CA140();
  sub_2287CA110();
  sub_2287470EC(&qword_280DE3410, MEMORY[0x277D11F48]);
  sub_2287CB350();
  (*(v1 + 8))(v4, v0);
  v7 = sub_2287CB210();

  v8 = [objc_opt_self() featureValueWithString_];

  v9 = [v5 customRelevanceProviderForFeature:v6 withValue:v8];
  if (!v9)
  {
    __break(1u);
  }
}

void sub_228746B5C()
{
  v0 = sub_2287CA050();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  if (qword_280DE37E0 != -1)
  {
    swift_once();
  }

  v6 = qword_280DE63A8;
  sub_2287CA210();
  sub_2287CA110();
  sub_2287470EC(&qword_280DE33F0, MEMORY[0x277D11FA8]);
  sub_2287CB350();
  (*(v1 + 8))(v4, v0);
  v7 = [objc_opt_self() featureValueWithInt64_];
  v8 = [v5 customRelevanceProviderForFeature:v6 withValue:v7];

  if (!v8)
  {
    __break(1u);
  }
}

void sub_228746D28()
{
  v0 = sub_2287CA2E0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  if (qword_280DE3788 != -1)
  {
    swift_once();
  }

  v6 = qword_280DE6368;
  sub_2287CA500();
  sub_2287CA110();
  sub_2287470EC(&qword_280DE33A8, MEMORY[0x277D12080]);
  sub_2287CB350();
  (*(v1 + 8))(v4, v0);
  v7 = sub_2287CB210();

  v8 = [objc_opt_self() featureValueWithString_];

  v9 = [v5 customRelevanceProviderForFeature:v6 withValue:v8];
  if (!v9)
  {
    __break(1u);
  }
}

void sub_228746F0C()
{
  sub_2287CA2A0();
  sub_2287CA100();
  v0 = sub_2287CB210();

  v1 = [objc_opt_self() featureWithName:v0 featureType:1];

  qword_280DE63A0 = v1;
}

void sub_228746F8C()
{
  v0 = sub_2287CB210();
  v1 = [objc_opt_self() featureWithName:v0 featureType:1];

  qword_280DE6360 = v1;
}

void sub_228747000()
{
  if (qword_280DE37D8 != -1)
  {
    swift_once();
  }

  v0 = qword_280DE63A0;
  v1 = *(sub_2287C9B00() + 16);

  sub_228795C5C(v1);
  v3 = v2;

  qword_280DE6398 = v3;
}

uint64_t sub_228747080(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22878A364(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_228747134(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2287470EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_228747134(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2287CBCB0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_2287CB400();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2287472FC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_22874722C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22874722C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_2287CBD00(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2287472FC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_22878A1B0(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2287478D8((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_2287CBD00();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_2287CBD00();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_228722F14(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_228722F14((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_2287478D8((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22878A1B0(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_22878A124(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_2287CBD00(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_2287478D8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_2287CBD00() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_2287CBD00() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_228747B00(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_2287CB510();
  if (!v26)
  {
    return sub_2287CB3F0();
  }

  v48 = v26;
  v52 = sub_2287CBB00();
  v39 = sub_2287CBB10();
  sub_2287CBAB0();
  result = sub_2287CB4E0();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_2287CB530();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_2287CBAF0();
      result = sub_2287CB520();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

const char *sub_228747F20(uint64_t a1)
{
  v25 = *(a1 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2287CAA50();
  v6 = *(v24 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v24);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2287C9A70();
  v12 = v10;
  if (v11 == 0xD000000000000023 && 0x80000002287D0EC0 == v10 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_AppRecommendations";
  }

  if (v11 == 0xD00000000000002DLL && 0x80000002287D0EF0 == v12 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_Balance";
  }

  v23 = v6;
  if (v11 == 0xD000000000000021 && 0x80000002287D0F20 == v12 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_Categories";
  }

  if (v11 == 0xD000000000000021 && 0x80000002287D0F50 == v12 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_HearingAppPlugin";
  }

  if (v11 == 0xD000000000000016 && 0x80000002287D0F80 == v12 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_Heart";
  }

  if (v11 == 0xD000000000000020 && 0x80000002287D0FA0 == v12 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_HighlightAlerts";
  }

  if (v11 == 0xD00000000000001BLL && 0x80000002287D0FD0 == v12 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_Highlights";
  }

  if (v11 == 0xD000000000000020 && 0x80000002287D0FF0 == v12 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_MenstrualCycles";
  }

  if (v11 == 0xD000000000000019 && 0x80000002287D1020 == v12 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_Profiles";
  }

  if (v11 == 0xD000000000000023 && 0x80000002287D1040 == v12 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_ResearchApp";
  }

  if (v11 == 0xD000000000000017 && 0x80000002287D1070 == v12 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_Safety";
  }

  if (v11 == 0xD000000000000025 && 0x80000002287D1090 == v12 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_HealthRecords";
  }

  if (v11 == 0xD00000000000001FLL && 0x80000002287D10C0 == v12 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_HealthArticles";
  }

  if (v11 == 0xD00000000000001CLL && 0x80000002287D10E0 == v12 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_Respiratory";
  }

  if (v11 == 0xD00000000000001ALL && 0x80000002287D1100 == v12 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_Summaries";
  }

  if (v11 == 0xD00000000000002BLL && 0x80000002287D1120 == v12 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_MedicationsHealthAppPlugin";
  }

  if (v11 == 0xD000000000000022 && 0x80000002287D1150 == v12 || (sub_2287CBD00() & 1) != 0)
  {

    return "Generation_MobilityAppPlugin";
  }

  if (v11 == 0xD000000000000016 && 0x80000002287D1180 == v12)
  {

    return "Generation_Sleep";
  }

  v14 = sub_2287CBD00();

  if (v14)
  {
    return "Generation_Sleep";
  }

  sub_2287CA9D0();
  (*(v25 + 16))(v5, v1, a1);
  v15 = sub_2287CAA40();
  v16 = sub_2287CB5F0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 136315138;
    v19 = sub_2287C9A70();
    v21 = v20;
    (*(v25 + 8))(v5, a1);
    v22 = sub_2287031D8(v19, v21, &v26);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_2286FF000, v15, v16, "You should add your bundle id: '%s' to generationSignpostID for better signposts", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AABFD90](v18, -1, -1);
    MEMORY[0x22AABFD90](v17, -1, -1);
  }

  else
  {

    (*(v25 + 8))(v5, a1);
  }

  (*(v23 + 8))(v9, v24);
  return "Generation_<unknown>";
}

uint64_t sub_228748814(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 32);
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
}

uint64_t sub_228748874()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_2287488C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t BasicPluginInfo.__allocating_init(bundle:)(void *a1)
{
  swift_allocObject();
  v2 = sub_228705FD4(a1);

  return v2;
}

uint64_t BasicPluginInfo.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t BasicPluginInfo.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_228748A20()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);

  return v2;
}

uint64_t sub_228748A70@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 120))();
  *a1 = result;
  return result;
}

uint64_t PluginBundleProvider.__allocating_init(sharedDefaults:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t static FoundationPluginBundleProvider.sharedInstance.setter(uint64_t a1)
{
  if (qword_280DE14F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280DE14F8 = a1;
}

uint64_t (*static FoundationPluginBundleProvider.sharedInstance.modify())()
{
  if (qword_280DE14F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_228748BE4@<X0>(void *a1@<X8>)
{
  if (qword_280DE14F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_280DE14F8;
}

uint64_t sub_228748C64(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_280DE14F0;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280DE14F8 = v1;
}

id sub_228748D04()
{
  v0 = sub_228749F18();

  return v0;
}

void sub_228748D30(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_228748DC8()
{
  v1 = *v0;
  sub_2287C99B0();
  sub_2287C99A0();
  sub_2287C9970();
  v8 = sub_2287C9960();
  v2 = *(v1 + 80);
  v6[1] = v6;
  v7 = sub_2287CB120();
  MEMORY[0x28223BE20](v7);
  v5 = *(v1 + 88);
  v3 = MEMORY[0x277D11D00];
  sub_228749FC0(0, &qword_280DE0018, MEMORY[0x277D11D00]);
  sub_2287CB190();
  sub_22874A060(&qword_280DE0010, &qword_280DE0018, v3);
  sub_2287CB310();

  return v9;
}

uint64_t sub_228748FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2287CB820();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = sub_2287C98E0();
  v10 = v9;
  sub_2287C9900();
  sub_2287C9A80();
  (*(*(a3 - 8) + 56))(v7, 0, 1, a3);
  v12[0] = v8;
  v12[1] = v10;
  sub_2287CB190();
  return sub_2287CB1A0();
}

uint64_t sub_228749110()
{
  v1 = *v0;
  v2 = sub_2287C9910();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287C99B0();
  sub_2287C99A0();
  v7 = sub_2287C9980();

  v26 = MEMORY[0x277D84F90];
  v8 = *(v7 + 16);
  if (v8)
  {
    v24[3] = 0;
    *&v25 = v1;
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v9 = v11;
    v12 = (*(v10 + 64) + 32) & ~*(v10 + 64);
    v24[2] = v7;
    v13 = v7 + v12;
    v14 = *(v10 + 56);
    do
    {
      v9(v6, v13, v2);
      sub_2287C9900();
      v15 = (*(v10 - 8))(v6, v2);
      MEMORY[0x22AABEA50](v15);
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v24[1] = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2287CB3E0();
      }

      sub_2287CB420();
      v13 += v14;
      --v8;
    }

    while (v8);
    v16 = v26;

    v1 = v25;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v26 = v16;
  MEMORY[0x28223BE20](v17);
  v25 = *(v1 + 80);
  *&v24[-2] = v25;
  sub_228749FC0(0, &qword_280DDFF50, sub_22874A014);
  v19 = v18;
  v20 = sub_22874A060(&qword_280DDFF48, &qword_280DDFF50, sub_22874A014);
  v22 = sub_228747B00(sub_228749F68, &v24[-4], v19, v25, MEMORY[0x277D84A98], v20, MEMORY[0x277D84AC0], v21);

  return v22;
}

void *sub_22874942C()
{
  sub_2287C99B0();
  sub_2287C99A0();
  v0 = sub_2287C9990();

  v1 = *(v0 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_2287239AC(*(v0 + 16), 0);
  v3 = sub_228729F74(&v5, v2 + 4, v1, v0);
  sub_22872CA2C();
  if (v3 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_2287494E8()
{
  v2 = sub_2287C9910();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287C99B0();
  v7 = sub_2287C99A0();
  sub_2287C9970();
  if (v0)
  {
  }

  else
  {
    v8 = sub_2287C9960();
    v9 = *(v8 + 16);
    if (v9)
    {
      v22[1] = v7;
      v22[2] = 0;
      v28 = MEMORY[0x277D84F90];
      sub_2287042D4(0, v9, 0);
      v1 = v28;
      v11 = *(v3 + 16);
      v10 = v3 + 16;
      v12 = *(v10 + 64);
      v22[0] = v8;
      v13 = v8 + ((v12 + 32) & ~v12);
      v24 = *(v10 + 56);
      v25 = v11;
      v23 = (v10 - 8);
      v26 = v6;
      v27 = v10;
      do
      {
        v25(v6, v13, v2);
        v14 = sub_2287C98F0();
        v16 = v15;
        v17 = v2;
        (*v23)(v6, v2);
        v28 = v1;
        v19 = *(v1 + 16);
        v18 = *(v1 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_2287042D4((v18 > 1), v19 + 1, 1);
          v1 = v28;
        }

        *(v1 + 16) = v19 + 1;
        v20 = v1 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v13 += v24;
        --v9;
        v2 = v17;
        v6 = v26;
      }

      while (v9);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return v1;
}

uint64_t sub_22874974C()
{
  v1 = *v0;
  v2 = sub_2287CAA50();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_2287C99B0();
  sub_2287C99A0();
  sub_2287C9970();
}

uint64_t PluginBundleProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_228749A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_2287CB1B0();

  return sub_228749AA4(a1, v9, a2, a3);
}

unint64_t sub_228749AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_2287CB200();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_228749C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_2287CB430())
  {
    sub_2287CBC00();
    v13 = sub_2287CBBF0();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_2287CB430();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_2287CB410())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_2287CBA40();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_228749A48(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_228749F68(id *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  return sub_2287C9A80();
}

void sub_228749FC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2287CB450();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22874A014()
{
  result = qword_280DE1918;
  if (!qword_280DE1918)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE1918);
  }

  return result;
}

uint64_t sub_22874A060(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_228749FC0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22874A0A4()
{
  result = qword_280DE35A0;
  if (!qword_280DE35A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DE35A0);
  }

  return result;
}

uint64_t sub_22874A374(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v20 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2287CB8D0();
    sub_2287CA6F0();
    sub_22874B7BC(&qword_280DE1178, MEMORY[0x277D121F0]);
    result = sub_2287CB4C0();
    v3 = v19[1];
    v5 = v19[2];
    v6 = v19[3];
    v7 = v19[4];
    v8 = v19[5];
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = (a1 + 56);
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = (v11 & *(a1 + 56));

    v7 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v7;
  v13 = v8;
  v14 = v7;
  if (v8)
  {
LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (v16)
    {
      while (1)
      {
        v19[0] = v16;
        sub_22874B33C(v19, &v18);
        if (v2)
        {
          break;
        }

        result = sub_22870E098(v18);
        v7 = v14;
        v8 = v15;
        if ((v3 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v17 = sub_2287CB950();
        if (v17)
        {
          v18 = v17;
          sub_2287CA6F0();
          swift_dynamicCast();
          v16 = v19[0];
          v14 = v7;
          v15 = v8;
          if (v19[0])
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      sub_22870B3D4();
    }

    else
    {
LABEL_19:
      sub_22870B3D4();
      return v20;
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

      if (v14 >= ((v6 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v13 = v5[v14];
      v12 = (v12 + 1);
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22874A5C8(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2287CB8D0();
    sub_2287CA6C0();
    sub_22874B7BC(&qword_280DE1180, MEMORY[0x277D121E0]);
    sub_2287CB4C0();
    v1 = v30;
    v2 = v31;
    v3 = v32;
    v4 = v33;
    v5 = v34;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v28 = MEMORY[0x277D84F90];
  v29 = v1;
  v9 = &unk_278607000;
LABEL_8:
  v10 = v4;
  while (v1 < 0)
  {
    if (!sub_2287CB950() || (sub_2287CA6C0(), swift_dynamicCast(), v14 = v35, v4 = v10, v13 = v5, !v35))
    {
LABEL_26:
      sub_22870B3D4();
      return;
    }

LABEL_19:
    v15 = v9;
    v16 = [v14 v9[89]];
    sub_2287CB220();

    sub_2287C9FD0();
    v17 = sub_22873E55C();

    if ((v17 & 1) == 0)
    {
      v18 = [v14 v15 + 1656];
      v19 = HKDisplayCategoryIdentifierFromString();

      if (v19 == -1)
      {
        v20 = [v14 v15 + 1656];
        v27 = sub_2287CB220();
        v22 = v21;

        v23 = v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_228722DF0(0, *(v28 + 2) + 1, 1, v28);
        }

        v25 = *(v23 + 2);
        v24 = *(v23 + 3);
        if (v25 >= v24 >> 1)
        {
          v23 = sub_228722DF0((v24 > 1), v25 + 1, 1, v23);
        }

        *(v23 + 2) = v25 + 1;
        v28 = v23;
        v26 = &v23[16 * v25];
        *(v26 + 4) = v27;
        *(v26 + 5) = v22;
        v9 = v15;
        v5 = v13;
        v1 = v29;
        goto LABEL_8;
      }
    }

    v10 = v4;
    v5 = v13;
    v9 = v15;
    v1 = v29;
  }

  v11 = v10;
  v12 = v5;
  v4 = v10;
  if (v5)
  {
LABEL_15:
    v13 = (v12 - 1) & v12;
    v14 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v14)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_26;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_22874A908(uint64_t (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = *v6++;
      v13 = v8;
      v9 = v8;
      v10 = a1(&v13);

      if (v3)
      {
        break;
      }

      v11 = v7-- == 0;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

void sub_22874A9AC()
{
  v1 = sub_2287C9B20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v42 - v7;
  if (![v0 indexForSearch])
  {
    return;
  }

  sub_2287CA710();
  (*(v2 + 32))(v6, v8, v1);
  v9 = (*(v2 + 88))(v6, v1);
  v10 = v9 == *MEMORY[0x277D11DB0] || v9 == *MEMORY[0x277D11DC8];
  if (v10 || v9 == *MEMORY[0x277D11DB8])
  {
    return;
  }

  if (v9 != *MEMORY[0x277D11DF0] && v9 != *MEMORY[0x277D11E08] && v9 != *MEMORY[0x277D11DC0])
  {
    if (v9 == *MEMORY[0x277D11D68] || v9 == *MEMORY[0x277D11D70] || v9 == *MEMORY[0x277D11D98] || v9 == *MEMORY[0x277D11DA0] || v9 == *MEMORY[0x277D11DA8] || v9 == *MEMORY[0x277D11D80] || v9 == *MEMORY[0x277D11E18] || v9 == *MEMORY[0x277D11D90])
    {
      return;
    }

    if (v9 != *MEMORY[0x277D11D60] && v9 != *MEMORY[0x277D11DD8])
    {
      if (v9 == *MEMORY[0x277D11DD0] || v9 == *MEMORY[0x277D11D88])
      {
        return;
      }

      if (v9 != *MEMORY[0x277D11E20])
      {
        if (v9 != *MEMORY[0x277D11DE0] && v9 != *MEMORY[0x277D11DF8] && v9 != *MEMORY[0x277D11D78] && v9 != *MEMORY[0x277D11E10] && v9 != *MEMORY[0x277D11DE8] && v9 != *MEMORY[0x277D11E00])
        {
          (*(v2 + 8))(v6, v1);
        }

        return;
      }
    }
  }

  v14 = [v0 profiles];
  v15 = sub_2287CA6D0();
  sub_22874B7BC(&qword_280DE17A0, MEMORY[0x277D121E8]);
  v16 = sub_2287CB470();

  v42 = v0;
  v44 = v15;
  if ((v16 & 0xC000000000000001) != 0)
  {
    sub_2287CB8D0();
    sub_2287CB4C0();
    v16 = v48;
    v17 = v49;
    v18 = v50;
    v19 = v51;
    v20 = v52;
  }

  else
  {
    v19 = 0;
    v21 = -1 << *(v16 + 32);
    v17 = v16 + 56;
    v18 = ~v21;
    v22 = -v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v20 = v23 & *(v16 + 56);
  }

  v43 = v18;
  v24 = (v18 + 64) >> 6;
  while (1)
  {
    v26 = v19;
    if (v16 < 0)
    {
      v30 = sub_2287CB950();
      if (!v30 || (v46 = v30, swift_dynamicCast(), (v29 = v47) == 0))
      {
LABEL_63:
        sub_22870B3D4();
        sub_2287035A4(0, &qword_280DE3850);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2287CCFF0;
        *(inited + 32) = sub_2287C9CA0();
        *(inited + 40) = 0;
        v47 = sub_2287CA790();
        sub_22874B728();
        sub_22874B7BC(&qword_280DDFF38, sub_22874B728);
        v40 = sub_2287CB4F0();

        v46 = v40;
        MEMORY[0x28223BE20](v41);
        *(&v42 - 2) = &v46;
        sub_22874A908(sub_22874B804, (&v42 - 4), inited);
        swift_setDeallocating();
        swift_arrayDestroy();

        return;
      }
    }

    else
    {
      v27 = v19;
      v28 = v20;
      if (!v20)
      {
        while (1)
        {
          v19 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v19 >= v24)
          {
            goto LABEL_63;
          }

          v28 = *(v17 + 8 * v19);
          ++v27;
          if (v28)
          {
            goto LABEL_53;
          }
        }

        __break(1u);
        return;
      }

LABEL_53:
      v20 = (v28 - 1) & v28;
      v29 = *(*(v16 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v28)))));
      if (!v29)
      {
        goto LABEL_63;
      }
    }

    v45 = v26;
    v31 = v16;
    v32 = [v29 encodedHKProfileIdentifier];
    v33 = sub_2287C9720();
    v35 = v34;

    v36 = v35 >> 62;
    if ((v35 >> 62) > 1)
    {
      break;
    }

    if (v36)
    {
      sub_2287460D4(v33, v35);
      v37 = v33;
      v38 = v33 >> 32;
LABEL_62:
      v25 = v37 == v38;
      goto LABEL_47;
    }

    sub_2287460D4(v33, v35);
    v25 = (v35 & 0xFF000000000000) == 0;
LABEL_47:
    v16 = v31;
    if (v25)
    {
      goto LABEL_66;
    }
  }

  if (v36 == 2)
  {
    v37 = *(v33 + 16);
    v38 = *(v33 + 24);
    sub_2287460D4(v33, v35);
    goto LABEL_62;
  }

  sub_2287460D4(v33, v35);
LABEL_66:
  sub_22870B3D4();
}

uint64_t sub_22874B0A4(void *a1)
{
  v2 = v1;
  v4 = [v1 localizedTitle];
  if (v4)
  {
    v5 = v4;
    sub_2287CB220();

    v6 = sub_2287CB210();
    [a1 setTitle_];
    swift_bridgeObjectRelease_n();
  }

  v7 = [v2 keywords];
  sub_2287CA6C0();
  sub_22874B7BC(&qword_280DE1180, MEMORY[0x277D121E0]);
  v8 = sub_2287CB470();

  sub_22874A5C8(v8);
  v10 = v9;

  v11 = [v2 dataTypes];
  sub_2287CA6F0();
  sub_22874B7BC(&qword_280DE1178, MEMORY[0x277D121F0]);
  v12 = sub_2287CB470();

  v13 = sub_22874A374(v12);

  sub_22870E098(v13);
  v14 = sub_2287CB390();

  [a1 setKeywords_];

  v15 = [v2 dataTypes];
  v16 = sub_2287CB470();

  v17 = sub_228784908(v16);

  if (v17)
  {
    v18 = sub_2287CA6E0();

    if (v18)
    {
      [v18 code];
    }
  }

  return sub_2287CB7D0();
}

void sub_22874B33C(uint64_t **a1@<X0>, uint64_t **a2@<X8>)
{
  v4 = sub_2287CAA50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = sub_2287CA6E0();
  if (v10)
  {
    v11 = v10;
    v12 = [objc_opt_self() sharedInstance];
    if (!v12)
    {
      goto LABEL_7;
    }

    v13 = v12;
    v14 = [v12 displayTypeForObjectType_];

    if (!v14)
    {
      goto LABEL_7;
    }

    v39 = a2;
    a2 = &unk_278607000;
    v15 = [v14 localization];
    v16 = [v15 keywords];

    v17 = sub_2287CB470();
    v4 = *(v17 + 16);
    if (v4)
    {
      v9 = sub_2287239AC(*(v17 + 16), 0);
      v8 = sub_228729F74(&v40, v9 + 4, v4, v17);
      sub_22870B3D4();
      if (v8 != v4)
      {
        __break(1u);
LABEL_7:

        goto LABEL_8;
      }
    }

    else
    {

      v9 = MEMORY[0x277D84F90];
    }

    sub_2287035A4(0, &qword_280DE39A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2287CCFE0;
    v32 = [v14 localization];
    v33 = [v32 displayName];

    v34 = sub_2287CB220();
    v36 = v35;

    *(inited + 32) = v34;
    *(inited + 40) = v36;
    v40 = v9;
    sub_22870E098(inited);

    v30 = v40;
    a2 = v39;
    goto LABEL_14;
  }

LABEL_8:
  v41 = v5;
  sub_2287CA9D0();
  v18 = v9;
  v19 = sub_2287CAA40();
  v20 = sub_2287CB600();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40 = v38;
    *v21 = 136315138;
    v22 = v18;
    v23 = [v22 description];
    v39 = a2;
    v24 = v23;
    v25 = sub_2287CB220();
    v37 = v4;
    v27 = v26;

    v28 = sub_2287031D8(v25, v27, &v40);

    *(v21 + 4) = v28;
    a2 = v39;
    _os_log_impl(&dword_2286FF000, v19, v20, "Could not get display type for: %s", v21, 0xCu);
    v29 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AABFD90](v29, -1, -1);
    MEMORY[0x22AABFD90](v21, -1, -1);

    (*(v41 + 8))(v8, v37);
  }

  else
  {

    (*(v41 + 8))(v8, v4);
  }

  v30 = MEMORY[0x277D84F90];
LABEL_14:
  *a2 = v30;
}

void sub_22874B728()
{
  if (!qword_280DDFF40)
  {
    sub_2287C9BC0();
    sub_22874B7BC(&qword_280DE11F8, MEMORY[0x277D11E78]);
    v0 = sub_2287CB4D0();
    if (!v1)
    {
      atomic_store(v0, &qword_280DDFF40);
    }
  }
}

uint64_t sub_22874B7BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22874B804(uint64_t *a1)
{
  v2 = *a1;
  v3 = **(v1 + 16);
  return sub_2287C9C80() & 1;
}

uint64_t sub_22874B83C()
{
  sub_2287035A4(0, &qword_280DE3850);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2287CCFF0;
  result = sub_2287C9CA0();
  *(v0 + 32) = result;
  *(v0 + 40) = 0;
  qword_280DE0DA0 = v0;
  return result;
}

uint64_t static SummaryTabRelevanceEngineCoordinator.dataSourceProfiles.getter()
{
  if (qword_280DE0D98 != -1)
  {
    swift_once();
  }
}

uint64_t static SummaryTabRelevanceEngineCoordinator.defaultModelURL.getter()
{
  v0 = sub_2287C9700();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static SummaryTabRelevanceEngineCoordinator.defaultModelContainerURL.getter(v4);
  sub_2287C96D0();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_22874BA20()
{
  v0 = sub_2287C9700();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_280DE0D78);
  __swift_project_value_buffer(v0, qword_280DE0D78);
  type metadata accessor for SummaryTabRelevanceEngineCoordinator();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v8 = [v7 bundleURL];

  sub_2287C96F0();
  sub_2287C96D0();
  return (*(v1 + 8))(v5, v0);
}

uint64_t static SummaryTabRelevanceEngineCoordinator.defaultPretrainedModelURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280DE0D70 != -1)
  {
    swift_once();
  }

  v2 = sub_2287C9700();
  v3 = __swift_project_value_buffer(v2, qword_280DE0D78);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t SummaryTabRelevanceEngineCoordinator.__allocating_init(healthExperienceStore:engineName:modelURL:pretrainedModelURL:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a2;
  v26 = a3;
  sub_228706364(0, &unk_280DE3AA0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = sub_2287C9700();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  sub_2287010E4(a1, v29);
  if (qword_280DE0D98 != -1)
  {
    swift_once();
  }

  v18 = qword_280DE0DA0;
  v19 = type metadata accessor for FeedItemREElementDataSource();
  v20 = objc_allocWithZone(v19);
  sub_2287010E4(v29, &v20[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_store]);
  *&v20[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_sourceProfiles] = v18;
  v28.receiver = v20;
  v28.super_class = v19;

  v21 = objc_msgSendSuper2(&v28, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v29);
  sub_2287035A4(0, &qword_280DE1268);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2287CCC50;
  *(v22 + 32) = v21;
  (*(v14 + 16))(v17, a4, v13);
  sub_22874BED4(a5, v12);
  v23 = (*(v5 + 184))(v22, v25, v26, v17, v12);
  sub_22874BF68(a5);
  (*(v14 + 8))(a4, v13);
  __swift_destroy_boxed_opaque_existential_0(v27);
  return v23;
}

uint64_t sub_22874BED4(uint64_t a1, uint64_t a2)
{
  sub_228706364(0, &unk_280DE3AA0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22874BF68(uint64_t a1)
{
  sub_228706364(0, &unk_280DE3AA0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id SummaryTabRelevanceEngineCoordinator.init(dataSources:engineName:modelURL:pretrainedModelURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v52 = a5;
  v53 = a4;
  v46 = a2;
  v47 = a3;
  v48 = a1;
  ObjectType = swift_getObjectType();
  v7 = sub_2287CAA50();
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v7);
  v49 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2287CB6B0();
  v10 = *(v45 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v45);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2287CB670();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v16 = sub_2287CB0E0();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v44 = OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_dispatchQueue;
  v18 = sub_228703004(0, &qword_280DE39D0, 0x277D85C78);
  v42 = "odel store directory: ";
  v43 = v18;
  sub_2287CB0A0();
  v56 = MEMORY[0x277D84F90];
  sub_22874F97C(&qword_280DE39D8, MEMORY[0x277D85230]);
  v19 = MEMORY[0x277D85230];
  sub_228706364(0, &qword_280DE39F0, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_22874F8A8(&qword_280DE39E8, &qword_280DE39F0, v19);
  sub_2287CB880();
  (*(v10 + 104))(v13, *MEMORY[0x277D85260], v45);
  *&v5[v44] = sub_2287CB6D0();
  *&v5[OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___primaryFeatures] = 0;
  *&v5[OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___crossedFeatures] = 0;
  *&v5[OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___relevanceProviderManagerClasses] = 0;
  *&v5[OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_modelVersion] = 9;
  *&v5[OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___trainingContext] = 0;
  v20 = OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_metricsRecorder;
  *&v5[v20] = [objc_allocWithZone(type metadata accessor for RelevanceEngineMetricsBlockRecorder()) init];
  *&v5[OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___relevanceEngine] = 0;
  v21 = &v5[OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_engineName];
  v22 = v47;
  *v21 = v46;
  *(v21 + 1) = v22;
  *&v5[OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_dataSources] = v48;
  v23 = OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_modelPath;
  v24 = sub_2287C9700();
  v25 = *(v24 - 8);
  (*(v25 + 16))(&v5[v23], v53, v24);
  sub_22874BED4(v52, &v5[OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_pretrainedModelURL]);
  v26 = v49;
  sub_2287CA9E0();
  v27 = v26;
  v28 = sub_2287CAA40();
  v29 = sub_2287CB610();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v54 = v31;
    *v30 = 136315394;
    v56 = ObjectType;
    swift_getMetatypeMetadata();
    v32 = sub_2287CB250();
    v34 = sub_2287031D8(v32, v33, &v54);

    *(v30 + 4) = v34;
    *(v30 + 12) = 1024;
    v35 = [objc_opt_self() standardUserDefaults];
    LODWORD(v34) = [v35 BOOLForKey_];

    *(v30 + 14) = v34;
    _os_log_impl(&dword_2286FF000, v28, v29, "[%s]: REUserDefaultMLExplanationsEnabled=%{BOOL}d", v30, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x22AABFD90](v31, -1, -1);
    MEMORY[0x22AABFD90](v30, -1, -1);
  }

  (*(v50 + 8))(v27, v51);
  v36 = type metadata accessor for SummaryTabRelevanceEngineCoordinator();
  v55.receiver = v6;
  v55.super_class = v36;
  v37 = objc_msgSendSuper2(&v55, sel_init);
  v38 = sub_22874DAE4();

  sub_22874BF68(v52);
  (*(v25 + 8))(v53, v24);
  return v37;
}

uint64_t sub_22874C638(uint64_t a1, uint64_t a2)
{
  v5 = sub_2287CB080();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2287CB0E0();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v20);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v2[OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_dispatchQueue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_22874F958;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228712EA8;
  aBlock[3] = &block_descriptor_3;
  v15 = _Block_copy(aBlock);
  v16 = v2;
  sub_228714B08(a1);
  sub_2287CB0A0();
  v21 = MEMORY[0x277D84F90];
  sub_22874F97C(&qword_280DE3A28, MEMORY[0x277D85198]);
  v17 = MEMORY[0x277D85198];
  sub_228706364(0, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_22874F8A8(&qword_280DE3A08, &qword_280DE3A10, v17);
  sub_2287CB880();
  MEMORY[0x22AABED90](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v20);
}

void sub_22874C930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22874DAE4();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v8[4] = sub_22874FEF0;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_228712EA8;
  v8[3] = &block_descriptor_31;
  v7 = _Block_copy(v8);
  sub_228714B08(a2);

  [v5 resetModelWithCompletion_];
  _Block_release(v7);
}

id sub_22874CA4C()
{
  v0 = static RelevanceEngineCoordinator.makeStandardFeatureTagFeatures()();
  sub_22870E1B8(v0);
  v1 = sub_22874CB18();
  sub_22870E1B8(v1);
  v2 = objc_allocWithZone(MEMORY[0x277D44420]);
  sub_228703004(0, &qword_280DE35E0, 0x277D44418);
  v3 = sub_2287CB390();

  v4 = [v2 initWithFeatures_];

  return v4;
}

uint64_t sub_22874CB18()
{
  v1 = OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___crossedFeatures;
  if (*(v0 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___crossedFeatures))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___crossedFeatures);
  }

  else
  {
    v2 = sub_22874CB7C();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22874CB7C()
{
  v63 = MEMORY[0x277D84F90];
  v0 = objc_opt_self();
  sub_2287035A4(0, &qword_280DE1268);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2287CCFD0;
  if (qword_280DE3790 != -1)
  {
    swift_once();
  }

  v2 = qword_280DE6370;
  *(v1 + 32) = qword_280DE6370;
  v3 = qword_280DE37F0;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_280DE63B8;
  *(v1 + 40) = qword_280DE63B8;
  sub_228703004(0, &qword_280DE35E0, 0x277D44418);
  v6 = v5;
  v7 = sub_2287CB390();

  v8 = [v0 crossedFeatureWithFeatures_];

  v9 = v8;
  MEMORY[0x22AABEA50]();
  if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v53 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2287CB3E0();
  }

  sub_2287CB420();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2287CCFD0;
  *(v10 + 32) = v9;
  v11 = qword_280DE3828;
  v61 = v9;
  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_280DE63E8;
  *(v10 + 40) = qword_280DE63E8;
  v13 = v12;
  v14 = sub_2287CB390();

  v15 = [v0 crossedFeatureWithFeatures_];

  MEMORY[0x22AABEA50]();
  if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v54 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2287CB3E0();
  }

  sub_2287CB420();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2287CCFD0;
  *(v16 + 32) = v4;
  v17 = qword_280DE3800;
  v18 = v4;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_280DE63C8;
  *(v16 + 40) = qword_280DE63C8;
  v62 = v19;
  v20 = sub_2287CB390();

  v21 = [v0 crossedFeatureWithFeatures_];

  MEMORY[0x22AABEA50]();
  if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v55 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2287CB3E0();
  }

  sub_2287CB420();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2287CCFD0;
  *(v22 + 32) = v18;
  v23 = qword_280DE37C0;
  v24 = v18;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_280DE6390;
  *(v22 + 40) = qword_280DE6390;
  v26 = v25;
  v27 = sub_2287CB390();

  v28 = [v0 crossedFeatureWithFeatures_];

  MEMORY[0x22AABEA50]();
  if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v56 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2287CB3E0();
  }

  sub_2287CB420();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_2287CCFD0;
  *(v29 + 32) = v24;
  v30 = qword_280DE37A8;
  v31 = v24;
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = qword_280DE6380;
  *(v29 + 40) = qword_280DE6380;
  v33 = v32;
  v34 = sub_2287CB390();

  v35 = [v0 crossedFeatureWithFeatures_];

  MEMORY[0x22AABEA50]();
  if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2287CB3E0();
  }

  sub_2287CB420();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_2287CE380;
  *(v36 + 32) = v31;
  *(v36 + 40) = v62;
  *(v36 + 48) = v26;
  v37 = v31;
  v38 = sub_2287CB390();

  v39 = [v0 &selRef_indexName + 3];

  MEMORY[0x22AABEA50]();
  if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v57 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2287CB3E0();
  }

  sub_2287CB420();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2287CE380;
  *(v40 + 32) = v37;
  *(v40 + 40) = v26;
  *(v40 + 48) = v33;
  v41 = v37;
  v42 = sub_2287CB390();

  v43 = [v0 &selRef_indexName + 3];

  MEMORY[0x22AABEA50]();
  if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v58 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2287CB3E0();
  }

  sub_2287CB420();
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_2287CE380;
  *(v44 + 32) = v41;
  *(v44 + 40) = v33;
  *(v44 + 48) = v62;
  v45 = sub_2287CB390();

  v46 = [v0 &selRef_indexName + 3];

  MEMORY[0x22AABEA50]();
  if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v59 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2287CB3E0();
  }

  sub_2287CB420();
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_2287CCFD0;
  *(v47 + 32) = v41;
  if (qword_280DE3810 != -1)
  {
    swift_once();
  }

  v48 = qword_280DE63D0;
  *(v47 + 40) = qword_280DE63D0;
  v49 = v48;
  v50 = sub_2287CB390();

  v51 = [v0 &selRef_indexName + 3];

  MEMORY[0x22AABEA50]();
  if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v60 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2287CB3E0();
  }

  sub_2287CB420();

  return v63;
}

uint64_t sub_22874D450()
{
  v1 = OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___relevanceProviderManagerClasses;
  if (*(v0 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___relevanceProviderManagerClasses))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___relevanceProviderManagerClasses);
  }

  else
  {
    sub_22874F81C();
    v4 = *(v3 + 52);
    v5 = (*(v3 + 48) + 7) & 0x1FFFFFFF8;
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_2287CCFE0;
    *(v2 + 32) = type metadata accessor for DateRangeRelevanceProviderManager();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t SummaryTabRelevanceEngineCoordinator.modelPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_modelPath;
  v4 = sub_2287C9700();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_22874D558()
{
  v1 = OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___trainingContext;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___trainingContext);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___trainingContext);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D444B8]) init];
    v5 = sub_22874DAE4();
    [v5 addTrainingContext_];

    [v4 becomeCurrent];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_22874D5FC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___trainingContext);
  *(v1 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___trainingContext) = a1;
}

void (*sub_22874D610(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_22874D558();
  return sub_22874D658;
}

void sub_22874D658(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___trainingContext);
  *(v1 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator____lazy_storage___trainingContext) = v2;
}

uint64_t sub_22874D670(uint64_t a1, uint64_t a2)
{
  v5 = sub_2287CB080();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2287CB0E0();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v20);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v2[OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_dispatchQueue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_22874F9C4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228712EA8;
  aBlock[3] = &block_descriptor_6;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  sub_2287CB0A0();
  v21 = MEMORY[0x277D84F90];
  sub_22874F97C(&qword_280DE3A28, MEMORY[0x277D85198]);
  v17 = MEMORY[0x277D85198];
  sub_228706364(0, &qword_280DE3A10, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_22874F8A8(&qword_280DE3A08, &qword_280DE3A10, v17);
  sub_2287CB880();
  MEMORY[0x22AABED90](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v20);
}

void sub_22874D964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_metricsRecorder);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = v5 + OBJC_IVAR____TtC18HealthPlatformCore35RelevanceEngineMetricsBlockRecorder_protectedState;

  os_unfair_lock_lock(v7);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_22874FE94;
  *(v8 + 24) = v6;
  v9 = *(v7 + 8);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 8) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_228723390(0, v9[2] + 1, 1, v9);
    *(v7 + 8) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_228723390((v11 > 1), v12 + 1, 1, v9);
    *(v7 + 8) = v9;
  }

  v9[2] = v12 + 1;
  v13 = &v9[2 * v12];
  v13[4] = sub_22874FEBC;
  v13[5] = v8;
  os_unfair_lock_unlock(v7);

  v14 = sub_22874DAE4();
  [v14 gatherMetrics];
}

id sub_22874DB04(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v8 = a2(v2, ObjectType);
    v9 = *(v2 + v3);
    *(v2 + v3) = v8;
    v5 = v8;

    v4 = 0;
  }

  v10 = v4;
  return v5;
}

id sub_22874DB78(uint64_t a1)
{
  v4 = sub_2287C9700();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228706364(0, &unk_280DE3AA0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = *(a1 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_engineName);
  v29 = *(a1 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_engineName + 8);
  v30 = v13;
  sub_22874BED4(a1 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_pretrainedModelURL, &v27 - v11);
  v31 = v5;
  v32 = v4;
  (*(v5 + 16))(v8, a1 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_modelPath, v4);
  v28 = sub_22874CA2C();
  inited = sub_2287CA5C0();
  v15 = *(inited + 16);
  if (v15)
  {
    v33 = MEMORY[0x277D84F90];
    v16 = &v33;
    sub_2287CBAC0();
    v17 = 0;
    while (v17 < *(inited + 16))
    {
      v18 = v17 + 1;
      v1 = sub_22874DEFC(*(inited + v17 + 32));
      v16 = &v33;
      sub_2287CBA90();
      v2 = *(v33 + 16);
      sub_2287CBAD0();
      sub_2287CBAE0();
      sub_2287CBAA0();
      v17 = v18;
      if (v15 == v18)
      {

        v2 = v33;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_8;
  }

  v2 = MEMORY[0x277D84F90];
LABEL_7:
  v1 = *(a1 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_dataSources);
  v15 = sub_22874D450();
  v16 = *(a1 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_metricsRecorder);
  sub_2287035A4(0, &qword_280DE1268);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2287CCC50;
  if (qword_280DDFEB8 != -1)
  {
    goto LABEL_10;
  }

LABEL_8:
  v19 = qword_280DDFEC0;
  *(inited + 32) = qword_280DDFEC0;
  v20 = *(a1 + OBJC_IVAR____TtC18HealthPlatformCore36SummaryTabRelevanceEngineCoordinator_dispatchQueue);
  v21 = v19;
  v26 = v20;
  v22 = v28;
  v23 = static RelevanceEngineCoordinator.instantiateEngine(engineName:modelVersion:pretrainedModelURL:modelURL:primaryFeatures:feedSections:dataSources:relevanceProviderManagerClasses:metricsRecorder:interactionDescriptors:observerQueue:)(v30, v29, 9, v12, v8, v28, v2, v1, v15, v16, inited, v26);

  swift_setDeallocating();
  v24 = *(inited + 16);
  swift_arrayDestroy();
  (*(v31 + 8))(v8, v32);
  sub_22874BF68(v12);
  return v23;
}

void *sub_22874DEFC(unsigned __int8 a1)
{
  v2 = sub_2287CAA50();
  v143 = *(v2 - 8);
  v3 = v143[8];
  MEMORY[0x28223BE20](v2);
  v5 = &v136 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2287C9B20();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277D444A8]) init];
  _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
  v12 = sub_2287CB210();

  v13 = v11;
  [v11 setName_];

  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      if (qword_280DE37D8 != -1)
      {
        swift_once();
      }

      v37 = qword_280DE63A0;
      v138 = qword_280DE63A0;
      v38 = *MEMORY[0x277D11D88];
      v39 = v7[13];
      v141 = v7 + 13;
      v142 = v39;
      v39(v10, v38, v6);
      sub_2287C9B10();
      v40 = v7[1];
      v139 = v7 + 1;
      v140 = v40;
      v40(v10, v6);
      v41 = sub_2287CB210();

      v42 = objc_opt_self();
      v43 = [v42 conditionForFeature:v37 hasValue:v41];

      v44 = [v42 notCondition_];
      v45 = objc_opt_self();
      v46 = [v45 trueCondition];
      v47 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v43 rightCondition:v44 comparisonCondition:v46 order:1];

      LODWORD(v48) = 1157234688;
      [v47 setPriority_];
      v49 = v47;
      v143 = v45;
      v50 = [v13 rules];
      sub_228703004(0, &qword_280DE35F0, 0x277D444A0);
      sub_22874FE2C();
      v51 = sub_2287CB470();

      v144 = v51;
      v137 = v49;
      sub_228723CA8(&v145, v49);

      v52 = sub_2287CB460();

      [v13 setRules_];

      v142(v10, *MEMORY[0x277D11DC8], v6);
      sub_2287C9B10();
      v140(v10, v6);
      v53 = sub_2287CB210();

      v54 = [v42 conditionForFeature:v138 hasValue:v53];

      v55 = [v42 notCondition_];
      v56 = [v45 trueCondition];
      v57 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v54 rightCondition:v55 comparisonCondition:v56 order:1];

      LODWORD(v58) = 1148846080;
      [v57 setPriority_];
      v59 = v57;
      v60 = [v13 rules];
      v61 = sub_2287CB470();

      v144 = v61;
      v136 = v59;
      sub_228723CA8(&v145, v59);

      v62 = sub_2287CB460();

      [v13 setRules_];

      v142(v10, *MEMORY[0x277D11DB0], v6);
      sub_2287C9B10();
      v63 = v6;
      v64 = v13;
      v65 = v143;
      v140(v10, v63);
      v66 = sub_2287CB210();

      v67 = [v42 conditionForFeature:v138 hasValue:v66];

      v68 = [v42 notCondition_];
      v69 = [v65 trueCondition];
      v70 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v67 rightCondition:v68 comparisonCondition:v69 order:1];

      LODWORD(v71) = 1147207680;
      [v70 setPriority_];
      v72 = v70;
      v73 = [v64 rules];
      v74 = sub_2287CB470();

      v144 = v74;
      v142 = v72;
      sub_228723CA8(&v145, v72);

      v75 = sub_2287CB460();

      [v64 setRules_];

      if (qword_280DE37F8 != -1)
      {
        swift_once();
      }

      v76 = qword_280DE63C0;
      v77 = [v42 conditionHasValueForFeature_];
      v78 = [v65 conditionForLeftFeature:v76 relation:2 rightFeature:v76];
      v79 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v77 rightCondition:v77 comparisonCondition:v78 order:1];

      LODWORD(v80) = 1144750080;
      [v79 setPriority_];
      v81 = v79;
      v82 = [v64 rules];
      v83 = sub_2287CB470();

      v144 = v83;
      v141 = v81;
      sub_228723CA8(&v145, v81);

      v84 = sub_2287CB460();

      [v64 setRules_];

      if (qword_280DE37E0 != -1)
      {
        swift_once();
      }

      v85 = qword_280DE63A8;
      v86 = [v42 conditionHasValueForFeature_];
      v87 = [v143 conditionForLeftFeature:v85 relation:2 rightFeature:v85];
      v88 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v86 rightCondition:v86 comparisonCondition:v87 order:1];

      LODWORD(v89) = 1140457472;
      [v88 setPriority_];
      v90 = v88;
      v91 = [v64 rules];
      v92 = sub_2287CB470();

      v144 = v92;
      v140 = v90;
      sub_228723CA8(&v145, v90);

      v93 = sub_2287CB460();

      [v64 setRules_];

      v94 = _sSo6RERuleC18HealthPlatformCoreE38makeExcludeIfValueIsZeroForFeatureRule7featureABSo9REFeatureC_tFZ_0(v76);
      LODWORD(v95) = 1148846080;
      [v94 setPriority_];
      v96 = v94;
      v97 = [v64 &off_278607190 + 2];
      v98 = sub_2287CB470();

      v144 = v98;
      sub_228723CA8(&v145, v96);

      v99 = sub_2287CB460();

      [v64 setRules_];

      if (qword_280DE0F98 != -1)
      {
        swift_once();
      }

      v100 = qword_280DE6250;
      v101 = [v42 conditionHasValueForFeature_];
      v102 = [v143 conditionForLeftFeature:v100 relation:2 rightFeature:v100];
      v103 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v101 rightCondition:v101 comparisonCondition:v102 order:-1];

      LODWORD(v104) = 1120403456;
      [v103 setPriority_];
      v105 = v103;
      v106 = [v64 &off_278607190 + 2];
      v107 = sub_2287CB470();

      v144 = v107;
      sub_228723CA8(&v145, v105);

      v108 = sub_2287CB460();

      [v64 setRules_];

      return v64;
    }

    else
    {
      if (a1 == 4)
      {
        if (qword_280DE37E0 != -1)
        {
          swift_once();
        }

        v23 = qword_280DE63A8;
        v24 = [objc_opt_self() conditionHasValueForFeature_];
        v25 = [objc_opt_self() conditionForLeftFeature:v23 relation:2 rightFeature:v23];
        v26 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v24 rightCondition:v24 comparisonCondition:v25 order:1];

        LODWORD(v27) = 1144750080;
        [v26 setPriority_];
        v19 = v26;
        v28 = [v11 rules];
        sub_228703004(0, &qword_280DE35F0, 0x277D444A0);
        sub_22874FE2C();
        v29 = sub_2287CB470();

        v144 = v29;
        sub_228723CA8(&v145, v19);

        v30 = sub_2287CB460();

        [v11 setRules_];

        if (qword_280DE37F8 == -1)
        {
          goto LABEL_13;
        }

        goto LABEL_33;
      }

      sub_2287CA9E0();
      v128 = sub_2287CAA40();
      v129 = sub_2287CB5F0();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v144 = v131;
        *v130 = 136315138;
        v145 = v142;
        swift_getMetatypeMetadata();
        v132 = sub_2287CB250();
        v134 = sub_2287031D8(v132, v133, &v144);

        *(v130 + 4) = v134;
        _os_log_impl(&dword_2286FF000, v128, v129, "[%s]: It's the shared dashboard manager's responsibility to pick the trends feed", v130, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v131);
        MEMORY[0x22AABFD90](v131, -1, -1);
        MEMORY[0x22AABFD90](v130, -1, -1);
      }

      (v143[1])(v5, v2);
    }
  }

  else if (a1)
  {
    if (a1 != 1)
    {
      if (qword_280DE37E0 != -1)
      {
        swift_once();
      }

      v109 = qword_280DE63A8;
      v110 = [objc_opt_self() conditionHasValueForFeature_];
      v111 = [objc_opt_self() conditionForLeftFeature:v109 relation:2 rightFeature:v109];
      v112 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v110 rightCondition:v110 comparisonCondition:v111 order:1];

      LODWORD(v113) = 1140457472;
      [v112 setPriority_];
      v19 = v112;
      v114 = [v11 rules];
      sub_228703004(0, &qword_280DE35F0, 0x277D444A0);
      sub_22874FE2C();
      v115 = sub_2287CB470();

      v144 = v115;
      sub_228723CA8(&v145, v19);

      v116 = sub_2287CB460();

      [v11 setRules_];

      if (qword_280DE37F8 != -1)
      {
        swift_once();
      }

      v117 = _sSo6RERuleC18HealthPlatformCoreE38makeExcludeIfValueIsZeroForFeatureRule7featureABSo9REFeatureC_tFZ_0(qword_280DE63C0);
      LODWORD(v118) = 1148846080;
      [v117 setPriority_];
      v33 = v117;
      v119 = [v11 rules];
      v120 = sub_2287CB470();

      v144 = v120;
      sub_228723CA8(&v145, v33);

      v121 = sub_2287CB460();

      [v11 setRules_];

      v122 = _sSo6RERuleC18HealthPlatformCoreE47makeExcludeTwoBarComparisonWithLowMagnitudeRuleAByFZ_0();
      LODWORD(v123) = 1148846080;
      [v122 setPriority_];
      v124 = v122;
      v125 = [v11 rules];
      v126 = sub_2287CB470();

      v144 = v126;
      sub_228723CA8(&v145, v124);

      v127 = sub_2287CB460();

      [v13 setRules_];

      goto LABEL_28;
    }

    if (qword_280DE37E0 != -1)
    {
      swift_once();
    }

    v14 = qword_280DE63A8;
    v15 = [objc_opt_self() conditionHasValueForFeature_];
    v16 = [objc_opt_self() conditionForLeftFeature:v14 relation:2 rightFeature:v14];
    v17 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v15 rightCondition:v15 comparisonCondition:v16 order:1];

    LODWORD(v18) = 1144750080;
    [v17 setPriority_];
    v19 = v17;
    v20 = [v11 rules];
    sub_228703004(0, &qword_280DE35F0, 0x277D444A0);
    sub_22874FE2C();
    v21 = sub_2287CB470();

    v144 = v21;
    sub_228723CA8(&v145, v19);

    v22 = sub_2287CB460();

    [v11 setRules_];

    if (qword_280DE37F8 == -1)
    {
LABEL_13:
      v31 = _sSo6RERuleC18HealthPlatformCoreE38makeExcludeIfValueIsZeroForFeatureRule7featureABSo9REFeatureC_tFZ_0(qword_280DE63C0);
      LODWORD(v32) = 1148846080;
      [v31 setPriority_];
      v33 = v31;
      v34 = [v11 rules];
      v35 = sub_2287CB470();

      v144 = v35;
      sub_228723CA8(&v145, v33);

      v36 = sub_2287CB460();

      [v11 setRules_];

LABEL_28:
      return v13;
    }

LABEL_33:
    swift_once();
    goto LABEL_13;
  }

  return v13;
}

id sub_22874F3A4()
{
  v0 = sub_22874DAE4();
  v1 = [v0 automaticallyResumeEngine];

  return v1;
}

void sub_22874F3E0(char a1)
{
  v2 = sub_22874DAE4();
  [v2 setAutomaticallyResumeEngine_];
}

id (*sub_22874F434(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = sub_22874DAE4();
  v4 = [v3 automaticallyResumeEngine];

  *(a1 + 8) = v4;
  return sub_22874F49C;
}

id sub_22874F4C0()
{
  if (qword_280DDFEB8 != -1)
  {
    swift_once();
  }

  v1 = qword_280DDFEC0;

  return v1;
}

id SummaryTabRelevanceEngineCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SummaryTabRelevanceEngineCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummaryTabRelevanceEngineCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22874F754()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D44458]) init];
  v1 = sub_2287CB210();
  [v0 setName_];

  [v0 setEnableExploreExploit_];
  if (qword_280DE11C8 != -1)
  {
    swift_once();
  }

  result = [v0 setBiasFeature_];
  qword_280DDFEC0 = v0;
  return result;
}

void sub_22874F81C()
{
  v0 = sub_22874FDD4();
  if (swift_isClassType() && v0)
  {
    sub_2287035A4(0, &qword_280DE1268);
  }

  else
  {
    sub_228706364(0, &qword_280DE35B0, sub_22874FDD4, MEMORY[0x277D84560]);
  }
}

uint64_t sub_22874F8A8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_228706364(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for SummaryTabRelevanceEngineCoordinator()
{
  result = qword_280DE0D50;
  if (!qword_280DE0D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22874F97C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22874F9D8()
{
  v0 = sub_2287C9700();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_228706364(319, &unk_280DE3AA0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_22874FDD4()
{
  result = qword_280DE3600;
  if (!qword_280DE3600)
  {
    sub_228703004(255, &qword_280DE3608, 0x277D44490);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280DE3600);
  }

  return result;
}

unint64_t sub_22874FE2C()
{
  result = qword_280DE35E8;
  if (!qword_280DE35E8)
  {
    sub_228703004(255, &qword_280DE35F0, 0x277D444A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE35E8);
  }

  return result;
}

uint64_t sub_22874FE94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_22874FEBC(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2, a2[1]);
}

uint64_t sub_22874FEF0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

void sub_22874FF30()
{
  sub_2287CA4A0();
  sub_2287CA100();
  v0 = sub_2287CB210();

  v1 = [objc_opt_self() featureWithName:v0 featureType:2];

  qword_280DE6378 = v1;
}

void sub_22874FFB0()
{
  if (qword_280DE37A0 != -1)
  {
    swift_once();
  }

  v0 = qword_280DE6378;
  v1 = sub_228795DF8(5);

  qword_280DE6380 = v1;
}

void sub_228750024()
{
  sub_228711964();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2287CCC50;
  v1 = objc_opt_self();
  if (qword_280DE37A0 != -1)
  {
    swift_once();
  }

  v2 = qword_280DE6378;
  sub_2287CA4A0();
  sub_2287CA110();
  v3 = [objc_opt_self() featureValueWithDouble_];
  v4 = [v1 customRelevanceProviderForFeature:v2 withValue:v3];

  if (v4)
  {
    *(v0 + 32) = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_228750148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v63 = a2;
  v64 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_2287CAA50();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v65 = &v59 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v59 - v15;
  sub_2287CAA30();

  v17 = sub_2287CAA40();
  v18 = sub_2287CB610();

  v19 = os_log_type_enabled(v17, v18);
  v62 = a1;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v60 = v12;
    v21 = v20;
    v22 = swift_slowAlloc();
    v59 = v4;
    v23 = v22;
    v66[0] = v22;
    *v21 = 136446466;
    v24 = sub_2287CBE60();
    v61 = ObjectType;
    v26 = sub_2287031D8(v24, v25, v66);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    sub_228750A74();
    v27 = sub_2287CB150();
    v29 = sub_2287031D8(v27, v28, v66);

    *(v21 + 14) = v29;
    _os_log_impl(&dword_2286FF000, v17, v18, "[%{public}s] Training metrics received from RelevanceEngine: %s", v21, 0x16u);
    swift_arrayDestroy();
    v30 = v23;
    v4 = v59;
    MEMORY[0x22AABFD90](v30, -1, -1);
    v31 = v21;
    v12 = v60;
    MEMORY[0x22AABFD90](v31, -1, -1);
  }

  v32 = *(v8 + 8);
  v32(v16, v7);
  v33 = v4 + OBJC_IVAR____TtC18HealthPlatformCore35RelevanceEngineMetricsBlockRecorder_protectedState;
  os_unfair_lock_lock((v4 + OBJC_IVAR____TtC18HealthPlatformCore35RelevanceEngineMetricsBlockRecorder_protectedState));
  v34 = *(v33 + 8);
  if (v34[2])
  {
    v36 = v34[4];
    v35 = v34[5];

    sub_2287509B4(0, 1);
    os_unfair_lock_unlock(v33);
    if (v36)
    {
      v37 = v65;
      sub_2287CAA30();
      v38 = sub_2287CAA40();
      v39 = sub_2287CB610();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v61 = v7;
        v42 = v41;
        v66[0] = v41;
        *v40 = 136446210;
        v43 = sub_2287CBE60();
        v45 = sub_2287031D8(v43, v44, v66);

        *(v40 + 4) = v45;
        _os_log_impl(&dword_2286FF000, v38, v39, "[%{public}s] Has handler, sending metrics to handler", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v42);
        MEMORY[0x22AABFD90](v42, -1, -1);
        MEMORY[0x22AABFD90](v40, -1, -1);

        v46 = v65;
        v47 = v61;
      }

      else
      {

        v46 = v37;
        v47 = v7;
      }

      v32(v46, v47);
      v66[0] = v63;
      v66[1] = v64;
      v67 = v62;
      v36(&v67, v66);
      return sub_228714BC0(v36);
    }
  }

  else
  {
    os_unfair_lock_unlock(v33);
  }

  sub_2287CAA30();
  v48 = sub_2287CAA40();
  v49 = sub_2287CB610();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = v7;
    v52 = swift_slowAlloc();
    v66[0] = v52;
    *v50 = 136446210;
    v53 = sub_2287CBE60();
    v55 = sub_2287031D8(v53, v54, v66);

    *(v50 + 4) = v55;
    _os_log_impl(&dword_2286FF000, v48, v49, "[%{public}s] No handler, metrics record ignored", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x22AABFD90](v52, -1, -1);
    MEMORY[0x22AABFD90](v50, -1, -1);

    v56 = v12;
    v57 = v51;
  }

  else
  {

    v56 = v12;
    v57 = v7;
  }

  return (v32)(v56, v57);
}

id sub_228750784()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RelevanceEngineMetricsBlockRecorder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2287507F0()
{
  if (!qword_27D850DC0)
  {
    v0 = sub_2287CA820();
    if (!v1)
    {
      atomic_store(v0, &qword_27D850DC0);
    }
  }
}

uint64_t sub_228750850(uint64_t a1)
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
    sub_2287CB920();
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
  result = sub_2287CBA60();
  *v1 = result;
  return result;
}

unint64_t sub_2287508F0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_22870CFB4();
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_2287509B4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_228723390(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_2287508F0(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_228750A74()
{
  result = qword_280DE39C0;
  if (!qword_280DE39C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DE39C0);
  }

  return result;
}

uint64_t sub_228750B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_2287CA800();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_2287CB920();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_2287CB920();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_228750C04(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_2287CB920();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_2287CB920();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_228750850(result);

  return sub_228750B04(v4, v2, 0);
}

uint64_t sub_228750CE0(uint64_t a1)
{
  v2 = sub_2287C9ED0();
  v82 = *(v2 - 8);
  v83 = v2;
  v3 = *(v82 + 64);
  MEMORY[0x28223BE20](v2);
  v84 = v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228751E48(0, &qword_280DE1A88, &qword_280DE3358, MEMORY[0x277D12200], MEMORY[0x277CBCE78]);
  v80 = *(v5 - 8);
  v81 = v5;
  v6 = *(v80 + 64);
  MEMORY[0x28223BE20](v5);
  v79 = v76 - v7;
  v8 = sub_2287C9DF0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2287C9E70();
  v85 = *(v13 - 8);
  v14 = *(v85 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v86 = v76 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = v76 - v20;
  v22 = sub_2287C9EB0();
  v23 = sub_2287C9CA0();
  v24 = sub_2287C9C80();

  if ((v24 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v78 = v13;
  sub_2287C9CA0();
  v25 = sub_22872C094(MEMORY[0x277D84F90]);
  sub_228751698(v25);

  v26 = *(v9 + 104);
  v26(v12, *MEMORY[0x277D11F20], v8);
  sub_2287C9E40();
  sub_2287C9E80();
  __swift_project_boxed_opaque_existential_1(v91, v91[3]);
  if ((sub_2287C9D80() & 1) == 0)
  {
    sub_228751E48(0, &qword_280DE1878, &qword_280DE33F8, MEMORY[0x277D11F60], MEMORY[0x277D84560]);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_2287CCFE0;
    v31 = *(v87 + 7);
    sub_2287010E4(v87 + 16, &v88);
    v32 = v85;
    v33 = *(v85 + 16);
    v76[1] = v85 + 16;
    v87 = v33;
    v34 = v86;
    v35 = a1;
    v36 = v78;
    (v33)(v86, v21);
    v37 = v82;
    v38 = v83;
    v39 = v84;
    (*(v82 + 16))(v84, v35, v83);
    v40 = type metadata accessor for GenerationOperationToGeneratorAdaptor();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    v43 = swift_allocObject();
    *(v43 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_queue) = v31;
    (*(v32 + 32))(v43 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_domain, v34, v36);
    (*(v37 + 32))(v43 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_context, v39, v38);
    sub_22871AC0C(&v88, v43 + OBJC_IVAR____TtC18HealthPlatformCore37GenerationOperationToGeneratorAdaptor_pluginInfo);
    v89 = v40;
    v90 = sub_228751EB0(&qword_280DE0D48, type metadata accessor for GenerationOperationToGeneratorAdaptor);
    *&v88 = v43;
    sub_22870D3A8(0, &qword_280DE3358);
    v44 = v31;
    v45 = v79;
    sub_2287CADB0();
    sub_228751EF8();
    v46 = v81;
    sub_2287CAF40();
    (*(v80 + 8))(v45, v46);
    v87(v34, v21, v36);
    v47 = sub_2287CA360();
    v48 = MEMORY[0x277D120A8];
    v49 = v77;
    *(v77 + 56) = v47;
    *(v49 + 64) = v48;
    __swift_allocate_boxed_opaque_existential_0((v49 + 32));
    sub_2287C9CD0();
    (*(v32 + 8))(v21, v36);
    goto LABEL_8;
  }

  v81 = a1;
  v27 = *(v87 + 6);
  __swift_project_boxed_opaque_existential_1(v87 + 2, *(v87 + 5));
  v28 = *(v27 + 8);
  if (sub_2287C9A70() != 0xD000000000000020 || 0x80000002287D0FA0 != v29)
  {
    v50 = sub_2287CBD00();

    if (v50)
    {
      goto LABEL_10;
    }

    sub_228751E48(0, &qword_280DE1878, &qword_280DE33F8, MEMORY[0x277D11F60], MEMORY[0x277D84560]);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_2287CCFE0;
    v67 = *(v87 + 7);
    sub_2287010E4(v87 + 16, &v88);
    v68 = v85;
    v69 = v86;
    v70 = v78;
    (*(v85 + 16))(v86, v21, v78);
    v71 = v84;
    (*(v82 + 16))(v84, v81, v83);
    v72 = type metadata accessor for InteractiveGeneratorToPipelineAdaptor();
    v73 = *(v72 + 48);
    v74 = *(v72 + 52);
    swift_allocObject();
    v75 = InteractiveGeneratorToPipelineAdaptor.init(queue:pluginInfo:domain:context:commitImmediately:)(v67, &v88, v69, v71, 0);
    *(v49 + 56) = v72;
    *(v49 + 64) = sub_228751EB0(&qword_280DE20B0, type metadata accessor for InteractiveGeneratorToPipelineAdaptor);
    *(v49 + 32) = v75;
    (*(v68 + 8))(v21, v70);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0(v91);
    return v49;
  }

LABEL_10:
  v76[0] = v21;
  v51 = v85;
  v52 = *(v85 + 16);
  v53 = v86;
  v54 = v78;
  v52();
  v26(v12, *MEMORY[0x277D11F10], v8);
  v55 = v53;
  sub_2287C9E10();
  sub_228751E48(0, &qword_280DE1878, &qword_280DE33F8, MEMORY[0x277D11F60], MEMORY[0x277D84560]);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_2287CCFE0;
  v57 = *(v87 + 7);
  sub_2287010E4(v87 + 16, &v88);
  (v52)(v17, v55, v54);
  v58 = v82;
  v60 = v83;
  v59 = v84;
  (*(v82 + 16))(v84, v81, v83);
  v61 = type metadata accessor for GenerationOperationToGeneratorPipelineAdaptor();
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  v64 = swift_allocObject();
  *(v64 + OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_queue) = v57;
  (*(v51 + 32))(v64 + OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_domain, v17, v54);
  (*(v58 + 32))(v64 + OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_context, v59, v60);
  sub_22871AC0C(&v88, v64 + OBJC_IVAR____TtC18HealthPlatformCore45GenerationOperationToGeneratorPipelineAdaptor_pluginInfo);
  *(v56 + 56) = v61;
  *(v56 + 64) = sub_228751EB0(&qword_280DE08B0, type metadata accessor for GenerationOperationToGeneratorPipelineAdaptor);
  *(v56 + 32) = v64;
  v65 = *(v51 + 8);
  v66 = v57;
  v65(v86, v54);
  v65(v76[0], v54);
  __swift_destroy_boxed_opaque_existential_0(v91);
  return v56;
}

void sub_228751698(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_6;
  }

  if (!sub_2287CB920())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_228751F7C();
  v3 = sub_2287CB9F0();
LABEL_6:
  if (sub_228703004(0, &qword_280DE3638, 0x277CCD720) == MEMORY[0x277D837D0])
  {
    if (v2)
    {

      sub_2287CB8D0();
      sub_228703004(0, &qword_280DE19B0, 0x277CCD8D8);
      sub_22872C220(&qword_280DE19A8, &qword_280DE19B0, 0x277CCD8D8);
      sub_2287CB4C0();
      v1 = v39;
      v8 = v40;
      v9 = v41;
      v10 = v42;
      v11 = v43;
    }

    else
    {
      v31 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v31;
      v32 = -v31;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      else
      {
        v33 = -1;
      }

      v11 = v33 & *(v1 + 56);

      v10 = 0;
    }

    while (1)
    {
      if (v1 < 0)
      {
        if (!sub_2287CB950())
        {
LABEL_55:
          sub_22870B3D4();

          return;
        }

        sub_228703004(0, &qword_280DE19B0, 0x277CCD8D8);
        swift_dynamicCast();
        v36 = v38;
      }

      else
      {
        if (v11)
        {
          v34 = v10;
        }

        else
        {
          v37 = v10;
          do
          {
            v34 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              goto LABEL_58;
            }

            if (v34 >= ((v9 + 64) >> 6))
            {
              goto LABEL_55;
            }

            v11 = *(v8 + 8 * v34);
            ++v37;
          }

          while (!v11);
          v10 = v34;
        }

        v35 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v36 = *(*(v1 + 48) + ((v34 << 9) | (8 * v35)));
      }

      sub_228751D08(v36);
    }
  }

  if (v2)
  {

    sub_2287CB8D0();
    sub_228703004(0, &qword_280DE19B0, 0x277CCD8D8);
    sub_22872C220(&qword_280DE19A8, &qword_280DE19B0, 0x277CCD8D8);
    sub_2287CB4C0();
    v1 = v39;
    v4 = v40;
    v5 = v41;
    v6 = v42;
    v7 = v43;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);

    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_2287CB950())
    {
      goto LABEL_55;
    }

    sub_228703004(0, &qword_280DE19B0, 0x277CCD8D8);
    swift_dynamicCast();
    v19 = v38;
LABEL_29:
    v22 = *(v3 + 40);
    v23 = sub_2287CB7E0();
    v24 = -1 << *(v3 + 32);
    v25 = v23 & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      do
      {
        if (++v26 == v28 && (v27 & 1) != 0)
        {
          __break(1u);
          goto LABEL_57;
        }

        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *(v16 + 8 * v26);
      }

      while (v30 == -1);
      v17 = __clz(__rbit64(~v30)) + (v26 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v19;
    ++*(v3 + 16);
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v38 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v38;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_55;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t sub_228751B9C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_228751C84(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_2287CB7E0();
  v5 = -1 << *(a2 + 32);
  result = sub_2287CB8B0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_228751D08(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_2287CB7E0();
  v6 = v3 + 56;
  v7 = -1 << *(v3 + 32);
  v8 = v5 & ~v7;
  v9 = v8 >> 6;
  v10 = *(v3 + 56 + 8 * (v8 >> 6));
  v11 = 1 << v8;
  if (((1 << v8) & v10) != 0)
  {
    v12 = ~v7;
    sub_228703004(0, &qword_280DE3638, 0x277CCD720);
    while (1)
    {
      v13 = *(*(v3 + 48) + 8 * v8);
      v14 = sub_2287CB7F0();

      if (v14)
      {
        break;
      }

      v8 = (v8 + 1) & v12;
      v9 = v8 >> 6;
      v10 = *(v6 + 8 * (v8 >> 6));
      v11 = 1 << v8;
      if (((1 << v8) & v10) == 0)
      {
        goto LABEL_5;
      }
    }

    v16 = *(v3 + 48);
    v17 = *(v16 + 8 * v8);
    *(v16 + 8 * v8) = a1;
  }

  else
  {
LABEL_5:
    v15 = *(v3 + 16);
    if (v15 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v6 + 8 * v9) = v11 | v10;
      *(*(v3 + 48) + 8 * v8) = a1;
      *(v3 + 16) = v15 + 1;
    }
  }
}

void sub_228751E48(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_22870D3A8(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_228751EB0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_228751EF8()
{
  result = qword_280DE00C0;
  if (!qword_280DE00C0)
  {
    sub_228751E48(255, &qword_280DE1A88, &qword_280DE3358, MEMORY[0x277D12200], MEMORY[0x277CBCE78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE00C0);
  }

  return result;
}

void sub_228751F7C()
{
  if (!qword_280DE18E8)
  {
    sub_228703004(255, &qword_280DE3638, 0x277CCD720);
    sub_22872C220(&qword_280DE3630, &qword_280DE3638, 0x277CCD720);
    v0 = sub_2287CBA00();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE18E8);
    }
  }
}

void sub_228752014()
{
  v1 = v0;
  v2 = sub_2287CAA50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 name];
  v8 = sub_2287CB220();
  v10 = v9;

  sub_2287CA4A0();
  if (sub_2287CA120() == v8 && v11 == v10)
  {

LABEL_8:

    v14 = MEMORY[0x277D12150];
    v15 = MEMORY[0x277D12148];
    v16 = MEMORY[0x277D12160];
    v17 = sub_228750024;
LABEL_9:
    sub_228752780(v16, v14, v17, v15);
    return;
  }

  v13 = sub_2287CBD00();

  if (v13)
  {
    goto LABEL_8;
  }

  sub_2287CA3E0();
  if (sub_2287CA120() == v8 && v18 == v10)
  {

LABEL_15:

    v14 = MEMORY[0x277D12118];
    v15 = MEMORY[0x277D12110];
    v16 = MEMORY[0x277D12128];
    v17 = sub_22875731C;
    goto LABEL_9;
  }

  v19 = sub_2287CBD00();

  if (v19)
  {
    goto LABEL_15;
  }

  sub_2287CA380();
  if (sub_2287CA120() == v8 && v20 == v10)
  {

LABEL_20:

    sub_228752AFC();
    return;
  }

  v21 = sub_2287CBD00();

  if (v21)
  {
    goto LABEL_20;
  }

  sub_2287CA500();
  if (sub_2287CA120() == v8 && v22 == v10)
  {

LABEL_27:

    v24 = MEMORY[0x277D12188];
    v25 = MEMORY[0x277D12180];
    v26 = MEMORY[0x277D12198];
    v27 = sub_228746D28;
LABEL_28:
    sub_2287531DC(v26, v24, v27, v25);
    return;
  }

  v23 = sub_2287CBD00();

  if (v23)
  {
    goto LABEL_27;
  }

  sub_22875272C();
  if (sub_2287CA120() == v8 && v28 == v10)
  {

LABEL_33:

    sub_228752E70();
    return;
  }

  v29 = sub_2287CBD00();

  if (v29)
  {
    goto LABEL_33;
  }

  sub_2287CA040();
  if (sub_2287CA120() == v8 && v30 == v10)
  {

LABEL_40:

    v24 = MEMORY[0x277D11F88];
    v25 = MEMORY[0x277D11F80];
    v26 = MEMORY[0x277D11F90];
    v27 = sub_228746874;
    goto LABEL_28;
  }

  v31 = sub_2287CBD00();

  if (v31)
  {
    goto LABEL_40;
  }

  sub_2287CA210();
  if (sub_2287CA120() == v8 && v32 == v10)
  {

LABEL_45:

    v24 = MEMORY[0x277D12018];
    v25 = MEMORY[0x277D12010];
    v26 = MEMORY[0x277D12028];
    v27 = sub_228746B5C;
    goto LABEL_28;
  }

  v33 = sub_2287CBD00();

  if (v33)
  {
    goto LABEL_45;
  }

  v46 = v3;
  sub_2287CA140();
  if (sub_2287CA120() == v8 && v34 == v10)
  {

LABEL_50:
    v24 = MEMORY[0x277D11FE8];
    v25 = MEMORY[0x277D11FE0];
    v26 = MEMORY[0x277D11FF8];
    v27 = sub_228746978;
    goto LABEL_28;
  }

  v35 = sub_2287CBD00();

  if (v35)
  {
    goto LABEL_50;
  }

  sub_2287CA9E0();
  v36 = v1;
  v37 = sub_2287CAA40();
  v38 = sub_2287CB5F0();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v47 = v40;
    *v39 = 136446210;
    v41 = [v36 name];
    v42 = sub_2287CB220();
    v44 = v43;

    v45 = sub_2287031D8(v42, v44, &v47);

    *(v39 + 4) = v45;
    _os_log_impl(&dword_2286FF000, v37, v38, "A RelevanceFeatureTag was submitted that we do not have logic to decode (or we forgot to write it): %{public}s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x22AABFD90](v40, -1, -1);
    MEMORY[0x22AABFD90](v39, -1, -1);
  }

  (*(v46 + 8))(v6, v2);
}

unint64_t sub_22875272C()
{
  result = qword_280DE0F70;
  if (!qword_280DE0F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0F70);
  }

  return result;
}

uint64_t sub_228752780(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v16[1] = a4;
  v6 = sub_2287CAA50();
  v17 = *(v6 - 8);
  v7 = *(v17 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = a1(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  v13 = sub_2287CA450();
  v14 = a3(v13);
  (*(v9 + 8))(v12, v8);
  return v14;
}

uint64_t sub_228752AFC()
{
  v0 = sub_2287CAA50();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_2287CA380();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA450();
  (*(v3 + 8))(v6, v2);
  return MEMORY[0x277D84F90];
}

void sub_228752E70()
{
  v0 = sub_2287CAA50();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  sub_22875357C();
  sub_2287CA450();
  sub_228711964();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2287CCC50;
  v3 = objc_allocWithZone(MEMORY[0x277D44448]);
  v4 = sub_2287CB210();
  v5 = [v3 initWithGroupIdentifier_];

  if (v5)
  {
    *(v2 + 32) = v5;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2287531DC(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v15[1] = a4;
  v6 = sub_2287CAA50();
  v16 = *(v6 - 8);
  v7 = *(v16 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = a1(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - v11;
  sub_2287CA450();
  sub_228711964();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2287CCC50;
  *(v13 + 32) = a3();
  (*(v9 + 8))(v12, v8);
  return v13;
}

unint64_t sub_22875357C()
{
  result = qword_280DE0F68;
  if (!qword_280DE0F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE0F68);
  }

  return result;
}

uint64_t sub_2287535D0()
{
  v1 = sub_2287C9810();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = 95;
  v10[1] = 0xE100000000000000;
  v6 = [*(v0 + 24) profileIdentifier];
  v7 = [v6 identifier];

  sub_2287C97F0();
  sub_228754B24(&qword_280DE3468, MEMORY[0x277CC95F0]);
  v8 = sub_2287CBCC0();
  MEMORY[0x22AABE980](v8);

  (*(v2 + 8))(v5, v1);
  return v10[0];
}

id sub_228753744(void *a1)
{
  v2 = sub_2287C9810();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277D44458]) init];
  v13[0] = sub_2287CBE60();
  v13[1] = v8;
  MEMORY[0x22AABE980](0x656C69666F72705FLL, 0xE90000000000005FLL);
  v9 = [a1 identifier];
  sub_2287C97F0();

  sub_228754B24(&qword_280DE3468, MEMORY[0x277CC95F0]);
  v10 = sub_2287CBCC0();
  MEMORY[0x22AABE980](v10);

  (*(v3 + 8))(v6, v2);
  v11 = sub_2287CB210();

  [v7 setName_];

  [v7 setEnableExploreExploit_];
  return v7;
}

id sub_228753920()
{
  static RelevanceEngineCoordinator.makeStandardFeatureTagFeatures()();
  v0 = objc_allocWithZone(MEMORY[0x277D44420]);
  sub_228703004(0, &qword_280DE35E0, 0x277D44418);
  v1 = sub_2287CB390();

  v2 = [v0 initWithFeatures_];

  return v2;
}

uint64_t sub_2287539B8()
{
  sub_228754B6C(0, &unk_280DE3AA0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_280DE0A68);
  v2 = __swift_project_value_buffer(v1, qword_280DE0A68);
  v3 = sub_2287C9700();
  v4 = *(*(v3 - 8) + 56);

  return v4(v2, 1, 1, v3);
}

uint64_t sub_228753A7C()
{
  v0 = sub_2287C9700();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_280DE0A40);
  v6 = __swift_project_value_buffer(v0, qword_280DE0A40);
  v7 = [objc_opt_self() defaultManager];
  v8 = [v7 temporaryDirectory];

  sub_2287C96F0();
  return (*(v1 + 32))(v6, v5, v0);
}

uint64_t sub_228753BB0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return swift_deallocClassInstance();
}

id sub_228753C7C()
{
  v0 = sub_2287C9F50();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277D444A8]) init];
  _s14HealthPlatform4FeedC4KindO0aB4CoreE13reSectionNameSSvg_0();
  v6 = sub_2287CB210();

  v40 = v5;
  [v5 setName_];

  sub_2287035A4(0, &qword_280DE1268);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2287CE380;
  if (qword_280DE37E8 != -1)
  {
LABEL_14:
    swift_once();
  }

  v8 = qword_280DE63B0;
  (v1[13])(v4, *MEMORY[0x277D11F40], v0);
  sub_2287C9F40();
  (v1[1])(v4, v0);
  v9 = sub_2287CB210();

  v10 = objc_opt_self();
  v11 = [v10 conditionForFeature:v8 hasValue:v9];

  v12 = [v10 notCondition_];
  v13 = objc_opt_self();
  v14 = [v13 trueCondition];
  v15 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v11 rightCondition:v12 comparisonCondition:v14 order:1];

  *(inited + 32) = v15;
  if (qword_280DE37F8 != -1)
  {
    swift_once();
  }

  v16 = qword_280DE63C0;
  v17 = [v10 conditionHasValueForFeature_];
  v1 = &unk_278607000;
  v18 = [v13 conditionForLeftFeature:v16 relation:2 rightFeature:v16];
  v19 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v17 rightCondition:v17 comparisonCondition:v18 order:1];

  *(inited + 40) = v19;
  if (qword_280DE0F98 != -1)
  {
    swift_once();
  }

  v20 = qword_280DE6250;
  v4 = [v10 conditionHasValueForFeature_];
  v21 = [v13 conditionForLeftFeature:v20 relation:2 rightFeature:v20];
  v22 = [objc_allocWithZone(MEMORY[0x277D44468]) initWithLeftCondition:v4 rightCondition:v4 comparisonCondition:v21 order:-1];

  v23 = 0;
  v39 = inited & 0xC000000000000001;
  *(inited + 48) = v22;
  v24 = inited & 0xFFFFFFFFFFFFFF8;
  v0 = 6;
  v25 = v40;
  do
  {
    v26 = v0 - 4;
    if (v39)
    {
      v27 = inited;
      v28 = MEMORY[0x22AABF120](v26, inited);
    }

    else
    {
      if (v26 >= *(v24 + 16))
      {
        __break(1u);
        goto LABEL_14;
      }

      v27 = inited;
      v28 = *(inited + 8 * v0);
    }

    v30 = v28;
    v31 = v23 + 1;
    *&v29 = v23;
    [v28 setPriority_];
    v32 = v30;
    v33 = [v25 rules];
    sub_228703004(0, &qword_280DE35F0, 0x277D444A0);
    v1 = sub_22874FE2C();
    v34 = sub_2287CB470();

    v41 = v34;
    sub_228723CA8(&v42, v32);

    v4 = v41;
    v35 = sub_2287CB460();

    [v25 setRules_];

    --v0;
    v23 = v31;
    inited = v27;
  }

  while (v0 != 3);
  swift_setDeallocating();
  v36 = *(v27 + 16);
  swift_arrayDestroy();
  return v40;
}

uint64_t sub_2287541C8(void *a1, uint64_t a2)
{
  sub_2287035A4(0, &qword_280DE1268);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2287CCC50;
  sub_2287010E4(a2, v12);
  sub_2287035A4(0, &qword_280DE3850);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2287CCFE0;
  *(v5 + 32) = a1;
  v6 = type metadata accessor for FeedItemREElementDataSource();
  v7 = objc_allocWithZone(v6);
  sub_2287010E4(v12, &v7[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_store]);
  *&v7[OBJC_IVAR____TtC18HealthPlatformCore27FeedItemREElementDataSource_sourceProfiles] = v5;
  v11.receiver = v7;
  v11.super_class = v6;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v12);
  *(v4 + 32) = v9;
  return v4;
}

void *sub_2287542EC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v62 = a4;
  v63 = a3;
  v57 = *v5;
  v8 = sub_2287CB6B0();
  v60 = *(v8 - 8);
  v61 = v8;
  v9 = v60[8];
  MEMORY[0x28223BE20](v8);
  v59 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2287CB670();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  *&v58 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2287CB0E0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_2287C9810();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a1;
  sub_2287010E4(a1, (v5 + 4));
  v5[3] = a2;
  v56 = sub_228703004(0, &qword_280DE39D0, 0x277D85C78);
  v65 = 40;
  v66 = 0xE100000000000000;
  v21 = a2;
  v22 = sub_2287CBE60();
  MEMORY[0x22AABE980](v22);

  MEMORY[0x22AABE980](0x656C69666F72705FLL, 0xE90000000000005FLL);
  v23 = [v21 profileIdentifier];
  v24 = [v23 identifier];

  sub_2287C97F0();
  v54[1] = sub_228754B24(&qword_280DE3468, MEMORY[0x277CC95F0]);
  v25 = sub_2287CBCC0();
  MEMORY[0x22AABE980](v25);

  v26 = *(v17 + 8);
  v55 = v16;
  v54[2] = v17 + 8;
  v54[0] = v26;
  v26(v20, v16);
  sub_2287CB0A0();
  v65 = MEMORY[0x277D84F90];
  sub_228754B24(&qword_280DE39D8, MEMORY[0x277D85230]);
  sub_228754B6C(0, &qword_280DE39F0, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_22871EFD0();
  sub_2287CB880();
  (v60[13])(v59, *MEMORY[0x277D85260], v61);
  v27 = v21;
  v5[2] = sub_2287CB6D0();
  v28 = [v21 profileIdentifier];
  v29 = sub_228753744(v28);

  v30 = v5;
  v5[11] = v29;
  if (v62)
  {
    v31 = v62;
  }

  else
  {
    v65 = 0;
    v66 = 0xE000000000000000;
    sub_2287CBA20();

    v65 = 0xD000000000000011;
    v66 = 0x80000002287D1AB0;
    v32 = [v21 profileIdentifier];
    v33 = [v32 identifier];

    sub_2287C97F0();
    v34 = v55;
    v35 = sub_2287CBCC0();
    MEMORY[0x22AABE980](v35);

    (v54[0])(v20, v34);
    MEMORY[0x22AABE980](0x656E69676E455FLL, 0xE700000000000000);
    v31 = v66;
    v63 = v65;
  }

  if (qword_280DE0A60 != -1)
  {
    swift_once();
  }

  sub_228754B6C(0, &unk_280DE3AA0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v62 = __swift_project_value_buffer(v36, qword_280DE0A68);
  if (qword_280DE0A38 != -1)
  {
    swift_once();
  }

  v37 = sub_2287C9700();
  v61 = __swift_project_value_buffer(v37, qword_280DE0A40);
  v60 = sub_228753920();
  sub_2287035A4(0, &qword_280DE1268);
  inited = swift_initStackObject();
  v58 = xmmword_2287CCC50;
  *(inited + 16) = xmmword_2287CCC50;
  *(inited + 32) = sub_228753C7C();
  v39 = [v27 profileIdentifier];
  v59 = sub_2287541C8(v39, v64);

  sub_22874F81C();
  v41 = *(v40 + 52);
  v42 = (*(v40 + 48) + 7) & 0x1FFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_2287CCFE0;
  *(v43 + 32) = type metadata accessor for DateRangeRelevanceProviderManager();
  v44 = swift_initStackObject();
  *(v44 + 16) = v58;
  v45 = v30[11];
  *(v44 + 32) = v45;
  v46 = v30[2];
  v47 = v45;
  v48 = v46;
  v49 = v60;
  v50 = static RelevanceEngineCoordinator.instantiateEngine(engineName:modelVersion:pretrainedModelURL:modelURL:primaryFeatures:feedSections:dataSources:relevanceProviderManagerClasses:metricsRecorder:interactionDescriptors:observerQueue:)(v63, v31, 0, v62, v61, v60, inited, v59, v43, 0, v44, v48);

  swift_setDeallocating();
  v51 = *(v44 + 16);
  swift_arrayDestroy();
  v30[9] = v50;
  v52 = [objc_allocWithZone(MEMORY[0x277D444B8]) init];
  [v30[9] addTrainingContext_];
  [v52 becomeCurrent];
  __swift_destroy_boxed_opaque_existential_0(v64);
  v30[10] = v52;
  return v30;
}

uint64_t sub_228754B24(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_228754B6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Generator.eraseToAnyGenerator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v3, a1);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  (*(v7 + 32))(v11 + v10, v9, a1);
  sub_22870CAE4(0, &qword_280DE2E58, sub_22870C530);
  v13 = v12;
  v14 = a3 + *(v12 + 44);
  sub_2287CA810();
  v18[1] = swift_getDynamicType();
  swift_getMetatypeMetadata();
  result = sub_2287CB250();
  *a3 = sub_228755118;
  a3[1] = v11;
  v16 = (a3 + *(v13 + 48));
  *v16 = result;
  v16[1] = v17;
  return result;
}

uint64_t SharableModelGenerator.eraseToAnyGenerator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v3, a1);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  (*(v7 + 32))(v11 + v10, v9, a1);
  sub_22870CAE4(0, &qword_280DE2E48, sub_22870CB48);
  v13 = v12;
  v14 = a3 + *(v12 + 44);
  sub_2287CA390();
  v18[1] = swift_getDynamicType();
  swift_getMetatypeMetadata();
  result = sub_2287CB250();
  *a3 = sub_228755148;
  a3[1] = v11;
  v16 = (a3 + *(v13 + 48));
  *v16 = result;
  v16[1] = v17;
  return result;
}

uint64_t AnyGenerator.domain.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_2287C9E70();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AnyGenerator.wrappedTypeName.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t AnyGenerator.debugDescription.getter(uint64_t a1)
{
  v3 = sub_2287C9E70();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = sub_2287CBE60();
  v11[1] = v8;
  MEMORY[0x22AABE980](95, 0xE100000000000000);
  MEMORY[0x22AABE980](*(v1 + *(a1 + 48)), *(v1 + *(a1 + 48) + 8));
  MEMORY[0x22AABE980](95, 0xE100000000000000);
  (*(v4 + 16))(v7, v1 + *(a1 + 44), v3);
  v9 = sub_2287CB250();
  MEMORY[0x22AABE980](v9);

  return v11[0];
}

uint64_t AnyGenerator.publisher.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t sub_228755160(uint64_t (*a1)(void))
{
  v2 = *(v1 + 24);
  v3 = *(*(*(v1 + 16) - 8) + 80);
  return a1();
}

unint64_t sub_2287551D0()
{
  result = sub_22870CFB4();
  if (v1 <= 0x3F)
  {
    result = sub_2287C9E70();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_228755284(uint64_t a1, uint64_t a2)
{
  sub_228755318(0, &qword_280DE2608, sub_22870CB48, type metadata accessor for GeneratorPipelineManagerWrapper);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_228755318(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22875537C@<X0>(uint64_t a1@<X8>)
{
  sub_228755318(0, &qword_280DE2608, sub_22870CB48, type metadata accessor for GeneratorPipelineManagerWrapper);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id sub_22875549C(const char *a1, SEL *a2)
{
  v5 = sub_2287CA970();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA960();
  v10 = sub_2287CA9A0();
  v11 = sub_2287CB720();
  if (sub_2287CB800())
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_2287CA950();
    _os_signpost_emit_with_name_impl(&dword_2286FF000, v10, v11, v13, a1, "", v12, 2u);
    MEMORY[0x22AABFD90](v12, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v14 = type metadata accessor for HealthExperienceStoreCoreSpotlightDelegate();
  v16.receiver = v2;
  v16.super_class = v14;
  return objc_msgSendSuper2(&v16, *a2);
}

uint64_t sub_22875567C(void *a1)
{
  v2 = v1;
  v18 = a1;
  sub_228703004(0, &qword_280DE3888, 0x277CBE438);
  sub_22870D3A8(0, &qword_280DE1798);
  v4 = a1;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_228756AF8(v16);
    return 0;
  }

  sub_228706AD4(v16, v19);
  v5 = *__swift_project_boxed_opaque_existential_1(v19, v20);
  sub_22874A9AC();
  if ((v6 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v19);
    return 0;
  }

  v15.receiver = v2;
  v15.super_class = type metadata accessor for HealthExperienceStoreCoreSpotlightDelegate();
  v7 = objc_msgSendSuper2(&v15, sel_attributeSetForObject_, v4);
  if (v7)
  {
    v8 = v7;
    v9 = *__swift_project_boxed_opaque_existential_1(v19, v20);
    sub_22874B0A4(v8);
    __swift_destroy_boxed_opaque_existential_0(v19);
    return v8;
  }

  *&v16[0] = 0;
  *(&v16[0] + 1) = 0xE000000000000000;
  sub_2287CBA20();

  *&v16[0] = 0xD00000000000002FLL;
  *(&v16[0] + 1) = 0x80000002287D1C30;
  v11 = [v4 description];
  v12 = sub_2287CB220();
  v14 = v13;

  MEMORY[0x22AABE980](v12, v14);

  result = sub_2287CBB90();
  __break(1u);
  return result;
}

void sub_2287558C4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v25 = sub_2287CAA50();
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v25);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2287CA970();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA960();
  v11 = sub_2287CA9A0();
  v12 = sub_2287CB720();
  if (sub_2287CB800())
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_2287CA950();
    _os_signpost_emit_with_name_impl(&dword_2286FF000, v11, v12, v14, "HealthExperienceStoreCoreSpotlightDelegate deleteAllThings", "", v13, 2u);
    MEMORY[0x22AABFD90](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  sub_2287CAA10();
  v15 = sub_2287CAA40();
  v16 = sub_2287CB610();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    v19 = ObjectType;
    v20 = sub_2287CBE60();
    v22 = sub_2287031D8(v20, v21, aBlock);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_2286FF000, v15, v16, "[%s] Deleting all searchable items in index", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AABFD90](v18, -1, -1);
    MEMORY[0x22AABFD90](v17, -1, -1);

    (*(v2 + 8))(v5, v25);
  }

  else
  {

    (*(v2 + 8))(v5, v25);
    v19 = ObjectType;
  }

  v23 = swift_allocObject();
  *(v23 + 16) = v19;
  aBlock[4] = sub_2287571B0;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228755FA8;
  aBlock[3] = &block_descriptor_22;
  v24 = _Block_copy(aBlock);

  [v1 deleteSpotlightIndexWithCompletionHandler_];
  _Block_release(v24);
}

uint64_t sub_228755C64(void *a1)
{
  v2 = sub_2287CAA50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  if (a1)
  {
    v10 = a1;
    sub_2287CAA10();
    v11 = a1;
    v12 = sub_2287CAA40();
    v13 = sub_2287CB610();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v32 = v15;
      *v14 = 136446466;
      v16 = sub_2287CBE60();
      v18 = sub_2287031D8(v16, v17, &v32);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      v31 = a1;
      v19 = a1;
      sub_22870D3A8(0, &qword_280DE35A0);
      v20 = sub_2287CB270();
      v22 = sub_2287031D8(v20, v21, &v32);

      *(v14 + 14) = v22;
      _os_log_impl(&dword_2286FF000, v12, v13, "[%{public}s] Failed to delete all searchable items: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v15, -1, -1);
      MEMORY[0x22AABFD90](v14, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 8))(v9, v2);
  }

  else
  {
    sub_2287CAA10();
    v23 = sub_2287CAA40();
    v24 = sub_2287CB610();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136446210;
      v27 = sub_2287CBE60();
      v29 = sub_2287031D8(v27, v28, &v32);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_2286FF000, v23, v24, "[%{public}s] Great success, we were able to delete all of the searchable items from our index", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AABFD90](v26, -1, -1);
      MEMORY[0x22AABFD90](v25, -1, -1);
    }

    return (*(v3 + 8))(v7, v2);
  }
}

void sub_228755FA8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_228756014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a2;
  v32 = a3;
  v33 = a1;
  swift_getObjectType();
  v30 = sub_2287CAA50();
  v5 = *(v30 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v30);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2287CA970();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA960();
  v14 = sub_2287CA9A0();
  v15 = sub_2287CB720();
  if (sub_2287CB800())
  {
    v16 = swift_slowAlloc();
    v29 = v5;
    v17 = v16;
    *v16 = 0;
    v18 = sub_2287CA950();
    _os_signpost_emit_with_name_impl(&dword_2286FF000, v14, v15, v18, "HealthExperienceStoreCoreSpotlightDelegate reindexAllSearchableItems", "", v17, 2u);
    v5 = v29;
    MEMORY[0x22AABFD90](v17, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  sub_2287CAA10();
  v19 = sub_2287CAA40();
  v20 = sub_2287CB610();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136446210;
    v23 = sub_2287CBE60();
    v25 = sub_2287031D8(v23, v24, aBlock);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_2286FF000, v19, v20, "[%{public}s] Got a request to reindex all searchable items", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x22AABFD90](v22, -1, -1);
    MEMORY[0x22AABFD90](v21, -1, -1);
  }

  (*(v5 + 8))(v8, v30);
  aBlock[4] = v31;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228712EA8;
  aBlock[3] = &block_descriptor_4;
  v26 = _Block_copy(aBlock);

  v27 = type metadata accessor for HealthExperienceStoreCoreSpotlightDelegate();
  v34.receiver = v4;
  v34.super_class = v27;
  objc_msgSendSuper2(&v34, sel_searchableIndex_reindexAllSearchableItemsWithAcknowledgementHandler_, v33, v26);
  _Block_release(v26);
}

void sub_228756444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v35 = a1;
  ObjectType = swift_getObjectType();
  v31 = sub_2287CAA50();
  v6 = *(v31 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v31);
  v9 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2287CA970();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &ObjectType - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA960();
  v34 = v4;
  v15 = sub_2287CA9A0();
  v16 = sub_2287CB720();
  if (sub_2287CB800())
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = sub_2287CA950();
    _os_signpost_emit_with_name_impl(&dword_2286FF000, v15, v16, v18, "HealthExperienceStoreCoreSpotlightDelegate reindexSearchableItemsWithIdentifiers", "", v17, 2u);
    MEMORY[0x22AABFD90](v17, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  sub_2287CAA10();
  swift_bridgeObjectRetain_n();
  v19 = sub_2287CAA40();
  v20 = sub_2287CB610();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136446466;
    v23 = sub_2287CBE60();
    v25 = sub_2287031D8(v23, v24, aBlock);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2050;
    v26 = *(a2 + 16);

    *(v21 + 14) = v26;

    _os_log_impl(&dword_2286FF000, v19, v20, "[%{public}s] Got a request to reindex %{public}ld searchable items", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x22AABFD90](v22, -1, -1);
    MEMORY[0x22AABFD90](v21, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  (*(v6 + 8))(v9, v31);
  v27 = sub_2287CB390();
  aBlock[4] = v32;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228712EA8;
  aBlock[3] = &block_descriptor_3;
  v28 = _Block_copy(aBlock);

  v29 = type metadata accessor for HealthExperienceStoreCoreSpotlightDelegate();
  v36.receiver = v34;
  v36.super_class = v29;
  objc_msgSendSuper2(&v36, sel_searchableIndex_reindexSearchableItemsWithIdentifiers_acknowledgementHandler_, v35, v27, v28, ObjectType);
  _Block_release(v28);
}

id HealthExperienceStoreCoreSpotlightDelegate.__allocating_init(forStoreWith:coordinator:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initForStoreWithDescription:a1 coordinator:a2];

  return v5;
}

id HealthExperienceStoreCoreSpotlightDelegate.init(forStoreWith:coordinator:)(void *a1, void *a2)
{
  v4 = sub_228701A80(a1, a2);

  return v4;
}

id HealthExperienceStoreCoreSpotlightDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthExperienceStoreCoreSpotlightDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_228756AB4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2287CB990();

  return sub_228756D08(a1, v5);
}

uint64_t sub_228756AF8(uint64_t a1)
{
  sub_228756B54();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_228756B54()
{
  if (!qword_27D850DD0)
  {
    sub_22870D3A8(255, &qword_280DE1798);
    v0 = sub_2287CB820();
    if (!v1)
    {
      atomic_store(v0, &qword_27D850DD0);
    }
  }
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_228756BD4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2287CB7E0();

  return sub_228756DD0(a1, v5);
}

unint64_t sub_228756C18(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2287C9810();
  sub_22875716C(&qword_280DE3970);
  v5 = sub_2287CB1B0();

  return sub_228756EA4(a1, v5);
}

unint64_t sub_228756C9C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2287CBD80();
  sub_2287C9C90();
  v4 = sub_2287CBDB0();

  return sub_228757050(a1, v4);
}

unint64_t sub_228756D08(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2287571B8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x22AABF070](v9, a1);
      sub_2287109BC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_228756DD0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_228703004(0, &qword_280DE3870, 0x277CCD7C8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2287CB7F0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_228756EA4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_2287C9810();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_22875716C(&qword_280DE3470);
      v16 = sub_2287CB200();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_228757050(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2287C9C80();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_22875716C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2287C9810();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_228757228()
{
  sub_2287CA3E0();
  sub_2287CA100();
  v0 = sub_2287CB210();

  v1 = [objc_opt_self() featureWithName:v0 featureType:2];

  qword_280DE6388 = v1;
}

void sub_2287572A8()
{
  if (qword_280DE37B8 != -1)
  {
    swift_once();
  }

  v0 = qword_280DE6388;
  v1 = sub_228795DF8(5);

  qword_280DE6390 = v1;
}

void sub_22875731C()
{
  sub_228711964();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2287CCC50;
  v1 = objc_opt_self();
  if (qword_280DE37B8 != -1)
  {
    swift_once();
  }

  v2 = qword_280DE6388;
  sub_2287CA3E0();
  sub_2287CA110();
  v3 = [objc_opt_self() featureValueWithDouble_];
  v4 = [v1 customRelevanceProviderForFeature:v2 withValue:v3];

  if (v4)
  {
    *(v0 + 32) = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_228757440(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2287CBAC0();
    v9 = *(sub_2287CA3C0() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v13, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_2287CBA90();
      v12 = *(v14 + 16);
      sub_2287CBAD0();
      sub_2287CBAE0();
      sub_2287CBAA0();
      v10 += v11;
      if (!--v6)
      {
        return v14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_228757584(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(char *, unint64_t))
{
  v27 = a7;
  v28 = a1;
  v10 = v7;
  v29 = a2;
  v12 = a4(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v16 = &v24 - v15;
  v17 = *(a3 + 16);
  v18 = MEMORY[0x277D84F90];
  if (!v17)
  {
    return v18;
  }

  v30 = MEMORY[0x277D84F90];
  v25 = a5;
  a5(0, v17, 0);
  v18 = v30;
  v19 = *(a6(0) - 8);
  v20 = a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v26 = *(v19 + 72);
  while (1)
  {
    v28(v20);
    if (v10)
    {
      break;
    }

    v10 = 0;
    v30 = v18;
    v22 = *(v18 + 16);
    v21 = *(v18 + 24);
    if (v22 >= v21 >> 1)
    {
      v25(v21 > 1, v22 + 1, 1);
      v18 = v30;
    }

    *(v18 + 16) = v22 + 1;
    v27(v16, v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v22);
    v20 += v26;
    if (!--v17)
    {
      return v18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228757794(uint64_t a1, uint64_t a2)
{
  sub_2287756AC(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228774694(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_2287762E4(a1, sub_2287756AC);
    sub_22876D35C(a2, sub_228774694, sub_228775238, sub_2287AA81C, sub_2287BB9C0, v8);
    v14 = sub_2287C9810();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_2287762E4(v8, sub_2287756AC);
  }

  else
  {
    sub_228775238(a1, v12);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_22876D694(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_2287C9810();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_2287579E4(uint64_t a1, uint64_t a2)
{
  sub_228775994(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22872C820(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_2287762E4(a1, sub_228775994);
    sub_22876D35C(a2, sub_22872C820, sub_22877494C, sub_2287AA834, sub_2287BB9E8, v8);
    v14 = sub_2287C9810();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_2287762E4(v8, sub_228775994);
  }

  else
  {
    sub_22877494C(a1, v12);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_22876D890(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_2287C9810();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_228757C34(uint64_t a1, uint64_t a2)
{
  sub_2287723F4(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228771868();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_2287762E4(a1, sub_2287723F4);
    sub_22876D35C(a2, sub_228771868, sub_2287720CC, sub_2287AAB9C, sub_2287BBEBC, v8);
    v14 = sub_2287C9810();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_2287762E4(v8, sub_2287723F4);
  }

  else
  {
    sub_2287720CC(a1, v12);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_22876DA8C(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_2287C9810();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_228757E84(uint64_t a1, uint64_t a2)
{
  sub_2287727A4(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22872C6C0(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_2287762E4(a1, sub_2287727A4);
    sub_22876D35C(a2, sub_22872C6C0, sub_228771B7C, sub_2287AABB4, sub_2287BC1B4, v8);
    v14 = sub_2287C9810();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_2287762E4(v8, sub_2287727A4);
  }

  else
  {
    sub_228771B7C(a1, v12);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_22876DC88(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_2287C9810();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_2287580D4(uint64_t a1)
{
  v2 = v1;
  v52 = *v2;
  sub_2287742A4(0);
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  MEMORY[0x28223BE20](v4);
  v54 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287742CC();
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  MEMORY[0x28223BE20](v7);
  v55 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228771154(0, &qword_280DE1B90, MEMORY[0x277CBCC88]);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v49 - v14;
  sub_2287711EC();
  v50 = *(v16 - 8);
  v51 = v16;
  v17 = *(v50 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228771154(0, &qword_280DE1BB0, MEMORY[0x277CBCC50]);
  v21 = v20;
  v22 = *(v20 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  v25 = &v49 - v24;
  v53 = a1;
  v26 = *(a1 + 16);
  v27 = *(v2 + 40);
  if (sub_2287CA420())
  {
    v60 = v26;
    sub_2287715EC(0, &qword_280DE1AE0, &qword_280DE1A28, MEMORY[0x277D11E90], MEMORY[0x277CBCD88]);
    sub_22873A408();
    sub_2287CAFA0();
    sub_2287712C0(&qword_280DE1BB8, &qword_280DE1BB0, MEMORY[0x277CBCC50]);
    v26 = sub_2287CAF40();
    (*(v22 + 8))(v25, v21);
  }

  else
  {
  }

  v49 = v26;
  v60 = v26;
  v28 = swift_allocObject();
  v29 = v52;
  *(v28 + 16) = v52;
  sub_2287715EC(0, &qword_280DE1AE0, &qword_280DE1A28, MEMORY[0x277D11E90], MEMORY[0x277CBCD88]);
  sub_22873A408();
  sub_2287CAFB0();

  sub_2287712C0(&qword_280DE1B98, &qword_280DE1B90, MEMORY[0x277CBCC88]);
  v30 = sub_2287CAF40();
  (*(v12 + 8))(v15, v11);
  v60 = v30;
  sub_22870D3A8(0, &qword_280DE35A0);
  sub_2287CB040();

  sub_2287693A8(&qword_280DE0710, sub_2287711EC);
  v31 = v51;
  v32 = sub_2287CAF40();
  (*(v50 + 8))(v19, v31);
  v33 = v2[24];
  v34 = v2[25];
  __swift_project_boxed_opaque_existential_1(v2 + 21, v33);
  v60 = v32;
  v35 = *(v34 + 24);
  sub_22873A300();
  v37 = v36;
  v38 = sub_2287693A8(&qword_280DE01F0, sub_22873A300);
  v60 = v35(&v60, v37, v38, v33, v34);
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = v53;
  v40[4] = v29;
  sub_228774608(0, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);

  v41 = v54;
  sub_2287CAF70();

  v42 = sub_2287693A8(&qword_280DE0600, sub_2287742A4);
  v43 = sub_22876928C();
  v44 = v55;
  v45 = v57;
  MEMORY[0x22AABE600](v57, v42, v43);
  (*(v56 + 8))(v41, v45);
  sub_2287693A8(&qword_280DE06C0, sub_2287742CC);
  v46 = v59;
  v47 = sub_2287CAF40();

  (*(v58 + 8))(v44, v46);
  return v47;
}

uint64_t sub_2287588AC(uint64_t a1)
{
  v2 = v1;
  v52 = *v2;
  sub_228770E80(0);
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  MEMORY[0x28223BE20](v4);
  v54 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228770FE0();
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  MEMORY[0x28223BE20](v7);
  v55 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228771154(0, &qword_280DE1B90, MEMORY[0x277CBCC88]);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v49 - v14;
  sub_2287711EC();
  v50 = *(v16 - 8);
  v51 = v16;
  v17 = *(v50 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228771154(0, &qword_280DE1BB0, MEMORY[0x277CBCC50]);
  v21 = v20;
  v22 = *(v20 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  v25 = &v49 - v24;
  v53 = a1;
  v26 = *(a1 + 16);
  v27 = *(v2 + 40);
  if (sub_2287CA420())
  {
    v60 = v26;
    sub_2287715EC(0, &qword_280DE1AE0, &qword_280DE1A28, MEMORY[0x277D11E90], MEMORY[0x277CBCD88]);
    sub_22873A408();
    sub_2287CAFA0();
    sub_2287712C0(&qword_280DE1BB8, &qword_280DE1BB0, MEMORY[0x277CBCC50]);
    v26 = sub_2287CAF40();
    (*(v22 + 8))(v25, v21);
  }

  else
  {
  }

  v49 = v26;
  v60 = v26;
  v28 = swift_allocObject();
  v29 = v52;
  *(v28 + 16) = v52;
  sub_2287715EC(0, &qword_280DE1AE0, &qword_280DE1A28, MEMORY[0x277D11E90], MEMORY[0x277CBCD88]);
  sub_22873A408();
  sub_2287CAFB0();

  sub_2287712C0(&qword_280DE1B98, &qword_280DE1B90, MEMORY[0x277CBCC88]);
  v30 = sub_2287CAF40();
  (*(v12 + 8))(v15, v11);
  v60 = v30;
  sub_22870D3A8(0, &qword_280DE35A0);
  sub_2287CB040();

  sub_2287693A8(&qword_280DE0710, sub_2287711EC);
  v31 = v51;
  v32 = sub_2287CAF40();
  (*(v50 + 8))(v19, v31);
  v33 = v2[24];
  v34 = v2[25];
  __swift_project_boxed_opaque_existential_1(v2 + 21, v33);
  v60 = v32;
  v35 = *(v34 + 24);
  sub_22873A300();
  v37 = v36;
  v38 = sub_2287693A8(&qword_280DE01F0, sub_22873A300);
  v60 = v35(&v60, v37, v38, v33, v34);
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = v53;
  v40[4] = v29;
  sub_228774608(0, &qword_280DE0218, sub_228770F78, MEMORY[0x277CBCD88]);

  v41 = v54;
  sub_2287CAF70();

  v42 = sub_2287693A8(&qword_280DE0610, sub_228770E80);
  v43 = sub_2287710CC();
  v44 = v55;
  v45 = v57;
  MEMORY[0x22AABE600](v57, v42, v43);
  (*(v56 + 8))(v41, v45);
  sub_2287693A8(&qword_280DE06D0, sub_228770FE0);
  v46 = v59;
  v47 = sub_2287CAF40();

  (*(v58 + 8))(v44, v46);
  return v47;
}

uint64_t sub_228759084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v92 = a3;
  sub_228774418();
  v94 = *(v6 - 8);
  v95 = v6;
  v7 = *(v94 + 64);
  MEMORY[0x28223BE20](v6);
  v93 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228774608(0, &qword_280DE0088, sub_2287691F4, MEMORY[0x277CBCE88]);
  v10 = v9;
  v91 = *(v9 - 1);
  v11 = *(v91 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v86 - v12;
  v14 = sub_2287CAA50();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v96 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v86 - v19;
  sub_2287CA9D0();

  v21 = sub_2287CAA40();
  v22 = sub_2287CB610();

  v23 = os_log_type_enabled(v21, v22);
  v97 = v14;
  v98 = a1;
  v90 = a4;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v89 = v10;
    v25 = v24;
    v26 = swift_slowAlloc();
    v100[0] = v26;
    *v25 = 136446466;
    v100[3] = a4;
    swift_getMetatypeMetadata();
    v27 = sub_2287CB250();
    v88 = v13;
    v29 = sub_2287031D8(v27, v28, v100);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    v30 = MEMORY[0x22AABEA80](a1, MEMORY[0x277D11E90]);
    v32 = sub_2287031D8(v30, v31, v100);
    v13 = v88;

    *(v25 + 14) = v32;
    _os_log_impl(&dword_2286FF000, v21, v22, "%{public}s: Switching to a new pipeline with sourceProfiles: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    v33 = v26;
    v14 = v97;
    MEMORY[0x22AABFD90](v33, -1, -1);
    v34 = v25;
    v10 = v89;
    MEMORY[0x22AABFD90](v34, -1, -1);
  }

  v35 = *(v15 + 8);
  v35(v20, v14);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_2287691F4(0);
    sub_22870D3A8(0, &qword_280DE35A0);
    sub_2287CADC0();
    sub_228770B4C();
    v66 = sub_2287CAF40();
    (*(v91 + 8))(v13, v10);
    return v66;
  }

  v37 = Strong;
  v89 = v35;
  v91 = v15;
  v38 = v98;
  v39 = *(v98 + 16);
  swift_beginAccess();
  if (!v39)
  {
    v41 = MEMORY[0x277D84F98];
    goto LABEL_35;
  }

  v40 = 0;
  v41 = MEMORY[0x277D84F98];
  v42 = v38 + 32;
  while (2)
  {
    v43 = v40;
    while (1)
    {
      if (v43 >= v39)
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v40 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_41;
      }

      v44 = *(v42 + 8 * v43);
      v45 = v44;
      v46 = sub_2287C9C30();
      if (v46)
      {
        break;
      }

LABEL_7:

      ++v43;
      if (v40 == v39)
      {
        goto LABEL_35;
      }
    }

    v47 = v46;
    v48 = sub_2287C9C80();
    if (v48)
    {

      v45 = v47;
      goto LABEL_7;
    }

    if (v44)
    {
      v88 = &v86;
      v49 = *(v37 + 56);
      MEMORY[0x28223BE20](v48);
      sub_228703004(0, &qword_280DE1990, 0x277CCD4D8);
      v87 = v45;

      sub_2287CA650();

      v50 = v101;
    }

    else
    {
      v50 = *(v37 + 48);
    }

    v88 = v50;
    if ((v41 & 0xC000000000000001) != 0)
    {
      if (v41 >= 0)
      {
        v41 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v51 = sub_2287CB920();
      if (!__OFADD__(v51, 1))
      {
        v41 = sub_2287AA438(v41, v51 + 1);
        goto LABEL_21;
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      sub_228703004(0, &qword_280DE3870, 0x277CCD7C8);
      result = sub_2287CBD30();
      __break(1u);
      return result;
    }

LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = v41;
    v53 = sub_228756BD4(v47);
    v55 = *(v41 + 16);
    v56 = (v54 & 1) == 0;
    v57 = __OFADD__(v55, v56);
    v58 = v55 + v56;
    if (v57)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v59 = v54;
    if (*(v41 + 24) >= v58)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v65 = v53;
        sub_2287BB86C();
        v53 = v65;
      }
    }

    else
    {
      sub_2287BA778(v58, isUniquelyReferenced_nonNull_native);
      v53 = sub_228756BD4(v47);
      if ((v59 & 1) != (v60 & 1))
      {
        goto LABEL_45;
      }
    }

    v14 = v97;
    v41 = v101;
    if (v59)
    {
      v61 = *(v101 + 7);
      v62 = *(v61 + 8 * v53);
      *(v61 + 8 * v53) = v88;

      v45 = v62;
    }

    else
    {
      *&v101[8 * (v53 >> 6) + 64] |= 1 << v53;
      *(*(v41 + 48) + 8 * v53) = v47;
      *(*(v41 + 56) + 8 * v53) = v88;
      v63 = *(v41 + 16);
      v57 = __OFADD__(v63, 1);
      v64 = v63 + 1;
      if (v57)
      {
        goto LABEL_44;
      }

      *(v41 + 16) = v64;
    }

    if (v40 != v39)
    {
      continue;
    }

    break;
  }

LABEL_35:
  v67 = v98;
  (*(*v37 + 360))(v98, v41);

  v68 = sub_22875A83C(v92, v67);
  v69 = sub_22875F92C(v68);
  v70 = v96;
  sub_2287CA9D0();

  v71 = sub_2287CAA40();
  v72 = sub_2287CB610();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v99 = v74;
    *v73 = 136446466;
    v101 = v90;
    swift_getMetatypeMetadata();
    v75 = sub_2287CB250();
    v77 = sub_2287031D8(v75, v76, &v99);

    *(v73 + 4) = v77;
    *(v73 + 12) = 2082;
    v78 = MEMORY[0x22AABEA80](v67, MEMORY[0x277D11E90]);
    v80 = sub_2287031D8(v78, v79, &v99);

    *(v73 + 14) = v80;
    _os_log_impl(&dword_2286FF000, v71, v72, "%{public}s: Created new generation stream for sourceProfiles: %{public}s", v73, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v74, -1, -1);
    MEMORY[0x22AABFD90](v73, -1, -1);

    v81 = v96;
    v82 = v97;
  }

  else
  {

    v81 = v70;
    v82 = v14;
  }

  v89(v81, v82);
  v101 = v69;
  sub_228774608(0, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
  sub_22876928C();
  v83 = v93;
  sub_2287CAF60();
  sub_2287693A8(&qword_280DE0780, sub_228774418);
  v84 = v95;
  v66 = sub_2287CAF40();

  (*(v94 + 8))(v83, v84);
  return v66;
}

uint64_t sub_228759A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v92 = a3;
  sub_22877131C();
  v94 = *(v6 - 8);
  v95 = v6;
  v7 = *(v94 + 64);
  MEMORY[0x28223BE20](v6);
  v93 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228774608(0, &qword_280DE0090, sub_228770F78, MEMORY[0x277CBCE88]);
  v10 = v9;
  v91 = *(v9 - 1);
  v11 = *(v91 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v86 - v12;
  v14 = sub_2287CAA50();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v96 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v86 - v19;
  sub_2287CA9D0();

  v21 = sub_2287CAA40();
  v22 = sub_2287CB610();

  v23 = os_log_type_enabled(v21, v22);
  v97 = v14;
  v98 = a1;
  v90 = a4;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v89 = v10;
    v25 = v24;
    v26 = swift_slowAlloc();
    v100[0] = v26;
    *v25 = 136446466;
    v100[3] = a4;
    swift_getMetatypeMetadata();
    v27 = sub_2287CB250();
    v88 = v13;
    v29 = sub_2287031D8(v27, v28, v100);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    v30 = MEMORY[0x22AABEA80](a1, MEMORY[0x277D11E90]);
    v32 = sub_2287031D8(v30, v31, v100);
    v13 = v88;

    *(v25 + 14) = v32;
    _os_log_impl(&dword_2286FF000, v21, v22, "%{public}s: Switching to a new pipeline with sourceProfiles: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    v33 = v26;
    v14 = v97;
    MEMORY[0x22AABFD90](v33, -1, -1);
    v34 = v25;
    v10 = v89;
    MEMORY[0x22AABFD90](v34, -1, -1);
  }

  v35 = *(v15 + 8);
  v35(v20, v14);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_228770F78();
    sub_22870D3A8(0, &qword_280DE35A0);
    sub_2287CADC0();
    sub_2287713B0();
    v66 = sub_2287CAF40();
    (*(v91 + 8))(v13, v10);
    return v66;
  }

  v37 = Strong;
  v89 = v35;
  v91 = v15;
  v38 = v98;
  v39 = *(v98 + 16);
  swift_beginAccess();
  if (!v39)
  {
    v41 = MEMORY[0x277D84F98];
    goto LABEL_35;
  }

  v40 = 0;
  v41 = MEMORY[0x277D84F98];
  v42 = v38 + 32;
  while (2)
  {
    v43 = v40;
    while (1)
    {
      if (v43 >= v39)
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v40 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_41;
      }

      v44 = *(v42 + 8 * v43);
      v45 = v44;
      v46 = sub_2287C9C30();
      if (v46)
      {
        break;
      }

LABEL_7:

      ++v43;
      if (v40 == v39)
      {
        goto LABEL_35;
      }
    }

    v47 = v46;
    v48 = sub_2287C9C80();
    if (v48)
    {

      v45 = v47;
      goto LABEL_7;
    }

    if (v44)
    {
      v88 = &v86;
      v49 = *(v37 + 56);
      MEMORY[0x28223BE20](v48);
      sub_228703004(0, &qword_280DE1990, 0x277CCD4D8);
      v87 = v45;

      sub_2287CA650();

      v50 = v101;
    }

    else
    {
      v50 = *(v37 + 48);
    }

    v88 = v50;
    if ((v41 & 0xC000000000000001) != 0)
    {
      if (v41 >= 0)
      {
        v41 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v51 = sub_2287CB920();
      if (!__OFADD__(v51, 1))
      {
        v41 = sub_2287AA438(v41, v51 + 1);
        goto LABEL_21;
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      sub_228703004(0, &qword_280DE3870, 0x277CCD7C8);
      result = sub_2287CBD30();
      __break(1u);
      return result;
    }

LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = v41;
    v53 = sub_228756BD4(v47);
    v55 = *(v41 + 16);
    v56 = (v54 & 1) == 0;
    v57 = __OFADD__(v55, v56);
    v58 = v55 + v56;
    if (v57)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v59 = v54;
    if (*(v41 + 24) >= v58)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v65 = v53;
        sub_2287BB86C();
        v53 = v65;
      }
    }

    else
    {
      sub_2287BA778(v58, isUniquelyReferenced_nonNull_native);
      v53 = sub_228756BD4(v47);
      if ((v59 & 1) != (v60 & 1))
      {
        goto LABEL_45;
      }
    }

    v14 = v97;
    v41 = v101;
    if (v59)
    {
      v61 = *(v101 + 7);
      v62 = *(v61 + 8 * v53);
      *(v61 + 8 * v53) = v88;

      v45 = v62;
    }

    else
    {
      *&v101[8 * (v53 >> 6) + 64] |= 1 << v53;
      *(*(v41 + 48) + 8 * v53) = v47;
      *(*(v41 + 56) + 8 * v53) = v88;
      v63 = *(v41 + 16);
      v57 = __OFADD__(v63, 1);
      v64 = v63 + 1;
      if (v57)
      {
        goto LABEL_44;
      }

      *(v41 + 16) = v64;
    }

    if (v40 != v39)
    {
      continue;
    }

    break;
  }

LABEL_35:
  v67 = v98;
  (*(*v37 + 360))(v98, v41);

  v68 = sub_22875ACC8(v92, v67);
  v69 = sub_22875FBB4(v68);
  v70 = v96;
  sub_2287CA9D0();

  v71 = sub_2287CAA40();
  v72 = sub_2287CB610();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v99 = v74;
    *v73 = 136446466;
    v101 = v90;
    swift_getMetatypeMetadata();
    v75 = sub_2287CB250();
    v77 = sub_2287031D8(v75, v76, &v99);

    *(v73 + 4) = v77;
    *(v73 + 12) = 2082;
    v78 = MEMORY[0x22AABEA80](v67, MEMORY[0x277D11E90]);
    v80 = sub_2287031D8(v78, v79, &v99);

    *(v73 + 14) = v80;
    _os_log_impl(&dword_2286FF000, v71, v72, "%{public}s: Created new generation stream for sourceProfiles: %{public}s", v73, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v74, -1, -1);
    MEMORY[0x22AABFD90](v73, -1, -1);

    v81 = v96;
    v82 = v97;
  }

  else
  {

    v81 = v70;
    v82 = v14;
  }

  v89(v81, v82);
  v101 = v69;
  sub_228774608(0, &qword_280DE0218, sub_228770F78, MEMORY[0x277CBCD88]);
  sub_2287710CC();
  v83 = v93;
  sub_2287CAF60();
  sub_2287693A8(&qword_280DE0790, sub_22877131C);
  v84 = v95;
  v66 = sub_2287CAF40();

  (*(v94 + 8))(v83, v84);
  return v66;
}

uint64_t sub_22875A414(uint64_t a1, uint64_t a2)
{
  v4 = sub_2287CAA50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) != 1)
  {
    return 1;
  }

  if (a1 != &unk_283BC0028)
  {
    v9 = *(a1 + 32);
    v10 = qword_283BC0048;
    v11 = v9;
    LOBYTE(v9) = sub_2287C9C80();

    if ((v9 & 1) == 0)
    {
      return 1;
    }
  }

  sub_2287CA9D0();
  v12 = sub_2287CAA40();
  v13 = sub_2287CB600();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20[0] = v15;
    v20[1] = a2;
    *v14 = 136446210;
    swift_getMetatypeMetadata();
    v16 = sub_2287CB250();
    v18 = sub_2287031D8(v16, v17, v20);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_2286FF000, v12, v13, "%{public}s: Received agnostic only source profiles, skipping pipeline for this set of profiles", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AABFD90](v15, -1, -1);
    MEMORY[0x22AABFD90](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return 0;
}

uint64_t sub_22875A628(uint64_t a1, uint64_t a2)
{
  v4 = sub_2287CAA50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) != 1)
  {
    return 1;
  }

  if (a1 != &unk_283BC0050)
  {
    v9 = *(a1 + 32);
    v10 = qword_283BC0070;
    v11 = v9;
    LOBYTE(v9) = sub_2287C9C80();

    if ((v9 & 1) == 0)
    {
      return 1;
    }
  }

  sub_2287CA9D0();
  v12 = sub_2287CAA40();
  v13 = sub_2287CB600();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20[0] = v15;
    v20[1] = a2;
    *v14 = 136446210;
    swift_getMetatypeMetadata();
    v16 = sub_2287CB250();
    v18 = sub_2287031D8(v16, v17, v20);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_2286FF000, v12, v13, "%{public}s: Received agnostic only source profiles, skipping pipeline for this set of profiles", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AABFD90](v15, -1, -1);
    MEMORY[0x22AABFD90](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return 0;
}

uint64_t sub_22875A83C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = *v3;
  v30 = a1;
  sub_22873D500();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873D608();
  v31 = v11;
  v33 = *(v11 - 8);
  v12 = *(v33 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228775CA0(0);
  v32 = v15;
  v34 = *(v15 - 8);
  v16 = *(v34 + 64);
  MEMORY[0x28223BE20](v15);
  v28 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a2;
  sub_22873E054(0, &qword_280DE1A28);
  sub_2287728A0();
  sub_2287CB2F0();
  swift_allocObject();
  swift_weakInit();
  sub_2287CACC0();
  v18 = MEMORY[0x277CBCD88];
  sub_228774608(0, &qword_280DE0298, sub_22873D6F4, MEMORY[0x277CBCD88]);
  sub_22873D78C();
  sub_22873D7C0();
  sub_2287CB060();

  (*(v7 + 8))(v10, v6);
  v19 = swift_allocObject();
  v20 = v29;
  v21 = v30;
  v19[2] = v3;
  v19[3] = v21;
  v19[4] = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_228775D0C;
  *(v22 + 24) = v19;

  sub_2287CACC0();
  sub_22872C820(0);
  sub_228774608(0, &qword_280DE0228, sub_22872C820, v18);
  sub_2287693A8(&qword_280DE04D8, sub_22873D608);
  sub_2287744AC();
  v23 = v28;
  v24 = v31;
  sub_2287CAFE0();

  (*(v33 + 8))(v14, v24);
  sub_2287693A8(&qword_280DE04B8, sub_228775CA0);
  v25 = v32;
  v26 = sub_2287CAF40();
  (*(v34 + 8))(v23, v25);
  return v26;
}

uint64_t sub_22875ACC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = *v3;
  v30 = a1;
  sub_22873D500();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873D608();
  v31 = v11;
  v33 = *(v11 - 8);
  v12 = *(v33 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228772908(0);
  v32 = v15;
  v34 = *(v15 - 8);
  v16 = *(v34 + 64);
  MEMORY[0x28223BE20](v15);
  v28 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a2;
  sub_22873E054(0, &qword_280DE1A28);
  sub_2287728A0();
  sub_2287CB2F0();
  swift_allocObject();
  swift_weakInit();
  sub_2287CACC0();
  v18 = MEMORY[0x277CBCD88];
  sub_228774608(0, &qword_280DE0298, sub_22873D6F4, MEMORY[0x277CBCD88]);
  sub_22873D78C();
  sub_22873D7C0();
  sub_2287CB060();

  (*(v7 + 8))(v10, v6);
  v19 = swift_allocObject();
  v20 = v29;
  v21 = v30;
  v19[2] = v3;
  v19[3] = v21;
  v19[4] = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_228772A54;
  *(v22 + 24) = v19;

  sub_2287CACC0();
  sub_22872C6C0(0);
  sub_228774608(0, &qword_280DE0238, sub_22872C6C0, v18);
  sub_2287693A8(&qword_280DE04D8, sub_22873D608);
  sub_2287716BC();
  v23 = v28;
  v24 = v31;
  sub_2287CAFE0();

  (*(v33 + 8))(v14, v24);
  sub_2287693A8(&qword_280DE04C8, sub_228772908);
  v25 = v32;
  v26 = sub_2287CAF40();
  (*(v34 + 8))(v23, v25);
  return v26;
}

uint64_t sub_22875B154(void *a1)
{
  v61 = a1;
  sub_228774608(0, &qword_280DE0098, sub_22873D6F4, MEMORY[0x277CBCE88]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v48 - v5;
  sub_22873D9AC();
  v8 = v7;
  v59 = *(v7 - 8);
  v9 = *(v59 + 64);
  MEMORY[0x28223BE20](v7);
  v56 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873DB6C();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v57 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228775DB8(0, &qword_280DE06E8, sub_22873DB6C, sub_22873DDEC, MEMORY[0x277CBCB98]);
  v17 = v16;
  v58 = *(v16 - 8);
  v18 = *(v58 + 64);
  MEMORY[0x28223BE20](v16);
  v55 = &v48 - v19;
  sub_22873DE68();
  v60 = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v52 = v8;
    v53 = v13;
    v54 = v12;
    v50 = v21;
    v51 = v17;
    if (v61)
    {
      v27 = *(Strong + 56);
      MEMORY[0x28223BE20](Strong);
      v28 = v61;
      *(&v48 - 2) = v61;
      sub_228703004(0, &qword_280DE1990, 0x277CCD4D8);
      v29 = v28;

      sub_2287CA650();

      v30 = v63;
    }

    else
    {
      swift_beginAccess();
      v30 = *(v26 + 48);
      v29 = v61;
    }

    v49 = v30;
    v32 = *(v26 + 248);

    v48 = v24;
    sub_2287CA4D0();

    v33 = *(v26 + 192);
    v34 = *(v26 + 200);
    __swift_project_boxed_opaque_existential_1((v26 + 168), v33);
    v35 = *(v34 + 24);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v62 = v35(v24, v60, OpaqueTypeConformance2, v33, v34);
    v37 = swift_allocObject();
    v38 = v61;
    *(v37 + 16) = v61;
    sub_228774608(0, &qword_280DE0268, MEMORY[0x277D121A8], MEMORY[0x277CBCD88]);
    sub_22873D6F4();
    sub_22873DAE4();
    v39 = v29;
    v40 = v56;
    sub_2287CAF70();

    *(swift_allocObject() + 16) = v38;
    sub_228773EC0(0);
    sub_2287693A8(&qword_280DE0648, sub_22873D9AC);
    sub_2287693A8(&qword_280DE00E0, sub_228773EC0);
    v41 = v39;
    v42 = v57;
    v43 = v52;
    sub_2287CAF90();

    (*(v59 + 8))(v40, v43);
    sub_22870D3A8(0, &qword_280DE35A0);
    sub_22873DDEC();
    v44 = v54;
    v45 = v55;
    sub_2287CB040();
    (*(v53 + 8))(v42, v44);
    sub_22873DF60();
    v46 = v51;
    v31 = sub_2287CAF40();

    (*(v58 + 8))(v45, v46);
    (*(v50 + 8))(v48, v60);
  }

  else
  {
    sub_22873D6F4();
    sub_22870D3A8(0, &qword_280DE35A0);
    sub_2287CADC0();
    sub_22873DEC8();
    v31 = sub_2287CAF40();
    (*(v3 + 8))(v6, v2);
  }

  return v31;
}

uint64_t sub_22875B8E0(void *a1)
{
  v61 = a1;
  sub_228774608(0, &qword_280DE0098, sub_22873D6F4, MEMORY[0x277CBCE88]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v48 - v5;
  sub_22873D9AC();
  v8 = v7;
  v59 = *(v7 - 8);
  v9 = *(v59 + 64);
  MEMORY[0x28223BE20](v7);
  v56 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873DB6C();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v57 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228775DB8(0, &qword_280DE06E8, sub_22873DB6C, sub_22873DDEC, MEMORY[0x277CBCB98]);
  v17 = v16;
  v58 = *(v16 - 8);
  v18 = *(v58 + 64);
  MEMORY[0x28223BE20](v16);
  v55 = &v48 - v19;
  sub_22873DE68();
  v60 = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v52 = v8;
    v53 = v13;
    v54 = v12;
    v50 = v21;
    v51 = v17;
    if (v61)
    {
      v27 = *(Strong + 56);
      MEMORY[0x28223BE20](Strong);
      v28 = v61;
      *(&v48 - 2) = v61;
      sub_228703004(0, &qword_280DE1990, 0x277CCD4D8);
      v29 = v28;

      sub_2287CA650();

      v30 = v63;
    }

    else
    {
      swift_beginAccess();
      v30 = *(v26 + 48);
      v29 = v61;
    }

    v49 = v30;
    v32 = *(v26 + 248);

    v48 = v24;
    sub_2287CA4D0();

    v33 = *(v26 + 192);
    v34 = *(v26 + 200);
    __swift_project_boxed_opaque_existential_1((v26 + 168), v33);
    v35 = *(v34 + 24);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v62 = v35(v24, v60, OpaqueTypeConformance2, v33, v34);
    v37 = swift_allocObject();
    v38 = v61;
    *(v37 + 16) = v61;
    sub_228774608(0, &qword_280DE0268, MEMORY[0x277D121A8], MEMORY[0x277CBCD88]);
    sub_22873D6F4();
    sub_22873DAE4();
    v39 = v29;
    v40 = v56;
    sub_2287CAF70();

    *(swift_allocObject() + 16) = v38;
    sub_228773EC0(0);
    sub_2287693A8(&qword_280DE0648, sub_22873D9AC);
    sub_2287693A8(&qword_280DE00E0, sub_228773EC0);
    v41 = v39;
    v42 = v57;
    v43 = v52;
    sub_2287CAF90();

    (*(v59 + 8))(v40, v43);
    sub_22870D3A8(0, &qword_280DE35A0);
    sub_22873DDEC();
    v44 = v54;
    v45 = v55;
    sub_2287CB040();
    (*(v53 + 8))(v42, v44);
    sub_22873DF60();
    v46 = v51;
    v31 = sub_2287CAF40();

    (*(v58 + 8))(v45, v46);
    (*(v50 + 8))(v48, v60);
  }

  else
  {
    sub_22873D6F4();
    sub_22870D3A8(0, &qword_280DE35A0);
    sub_2287CADC0();
    sub_22873DEC8();
    v31 = sub_2287CAF40();
    (*(v3 + 8))(v6, v2);
  }

  return v31;
}

uint64_t sub_22875C06C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v43 = a1;
  v44 = a2;
  sub_228772A64(0, &qword_280DE1B70, sub_228775D50, sub_228775D84);
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6);
  v40 = v37 - v8;
  sub_228775DB8(0, &qword_280DE0370, sub_228775D50, sub_228775D84, MEMORY[0x277CBCD10]);
  v38 = *(v9 - 8);
  v39 = v9;
  v10 = *(v38 + 64);
  MEMORY[0x28223BE20](v9);
  v37[0] = v37 - v11;
  swift_beginAccess();
  v12 = *(a3 + 24);
  v47 = swift_allocObject();
  v37[1] = a3;
  swift_weakInit();
  v13 = *(v12 + 16);

  if (!v13)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_20:

    sub_22875F2F4(v16);
    v48[0] = v16;
    sub_228775D50(0);
    sub_228775D84();
    v31 = v40;
    sub_2287CB2F0();

    sub_22870D3A8(0, &qword_280DE35A0);
    v32 = v37[0];
    v33 = v42;
    sub_2287CABF0();
    (*(v41 + 8))(v31, v33);
    sub_228775E9C();
    v34 = v39;
    v35 = sub_2287CAF40();
    (*(v38 + 8))(v32, v34);
    return v35;
  }

  v14 = 0;
  v15 = v12 + 32;
  v16 = MEMORY[0x277D84F90];
  while (v14 < *(v12 + 16))
  {
    sub_228770280(v15, v48, sub_228775E68);
    v17 = sub_22875C9CC(v48, v47, v43, v45, v44, v46);
    sub_2287762E4(v48, sub_228775E68);
    v18 = *(v17 + 16);
    v19 = v16[2];
    v20 = v19 + v18;
    if (__OFADD__(v19, v18))
    {
      goto LABEL_22;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v20 <= v16[3] >> 1)
    {
      if (*(v17 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v19 <= v20)
      {
        v22 = v19 + v18;
      }

      else
      {
        v22 = v19;
      }

      v16 = sub_2287234DC(isUniquelyReferenced_nonNull_native, v22, 1, v16);
      if (*(v17 + 16))
      {
LABEL_15:
        v23 = (v16[3] >> 1) - v16[2];
        sub_22872C820(0);
        v25 = *(v24 - 8);
        if (v23 < v18)
        {
          goto LABEL_24;
        }

        v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
        v27 = *(v25 + 72);
        swift_arrayInitWithCopy();

        if (v18)
        {
          v28 = v16[2];
          v29 = __OFADD__(v28, v18);
          v30 = v28 + v18;
          if (v29)
          {
            goto LABEL_25;
          }

          v16[2] = v30;
        }

        goto LABEL_4;
      }
    }

    if (v18)
    {
      goto LABEL_23;
    }

LABEL_4:
    ++v14;
    v15 += 56;
    if (v13 == v14)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);

  sub_2287762E4(v48, sub_228775E68);

  __break(1u);
  return result;
}

uint64_t sub_22875C51C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v43 = a1;
  v44 = a2;
  sub_228772A64(0, &qword_280DE1B78, sub_228772AF0, sub_228772B24);
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6);
  v40 = v37 - v8;
  sub_228775DB8(0, &qword_280DE0380, sub_228772AF0, sub_228772B24, MEMORY[0x277CBCD10]);
  v38 = *(v9 - 8);
  v39 = v9;
  v10 = *(v38 + 64);
  MEMORY[0x28223BE20](v9);
  v37[0] = v37 - v11;
  swift_beginAccess();
  v12 = *(a3 + 24);
  v47 = swift_allocObject();
  v37[1] = a3;
  swift_weakInit();
  v13 = *(v12 + 16);

  if (!v13)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_20:

    sub_22875F610(v16);
    v48[0] = v16;
    sub_228772AF0(0);
    sub_228772B24();
    v31 = v40;
    sub_2287CB2F0();

    sub_22870D3A8(0, &qword_280DE35A0);
    v32 = v37[0];
    v33 = v42;
    sub_2287CABF0();
    (*(v41 + 8))(v31, v33);
    sub_228772B8C();
    v34 = v39;
    v35 = sub_2287CAF40();
    (*(v38 + 8))(v32, v34);
    return v35;
  }

  v14 = 0;
  v15 = v12 + 32;
  v16 = MEMORY[0x277D84F90];
  while (v14 < *(v12 + 16))
  {
    sub_228770280(v15, v48, sub_228772B58);
    v17 = sub_22875D8DC(v48, v47, v43, v45, v44, v46);
    sub_2287762E4(v48, sub_228772B58);
    v18 = *(v17 + 16);
    v19 = v16[2];
    v20 = v19 + v18;
    if (__OFADD__(v19, v18))
    {
      goto LABEL_22;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v20 <= v16[3] >> 1)
    {
      if (*(v17 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v19 <= v20)
      {
        v22 = v19 + v18;
      }

      else
      {
        v22 = v19;
      }

      v16 = sub_228723838(isUniquelyReferenced_nonNull_native, v22, 1, v16);
      if (*(v17 + 16))
      {
LABEL_15:
        v23 = (v16[3] >> 1) - v16[2];
        sub_22872C6C0(0);
        v25 = *(v24 - 8);
        if (v23 < v18)
        {
          goto LABEL_24;
        }

        v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
        v27 = *(v25 + 72);
        swift_arrayInitWithCopy();

        if (v18)
        {
          v28 = v16[2];
          v29 = __OFADD__(v28, v18);
          v30 = v28 + v18;
          if (v29)
          {
            goto LABEL_25;
          }

          v16[2] = v30;
        }

        goto LABEL_4;
      }
    }

    if (v18)
    {
      goto LABEL_23;
    }

LABEL_4:
    ++v14;
    v15 += 56;
    if (v13 == v14)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);

  sub_2287762E4(v48, sub_228772B58);

  __break(1u);
  return result;
}

uint64_t sub_22875C9CC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v97 = a5;
  v114 = a3;
  sub_228739E24();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v102 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_2287CA340();
  v99 = *(v100 - 8);
  v13 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v98 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_2287C9590();
  v101 = *(v108 - 8);
  v15 = *(v101 + 64);
  MEMORY[0x28223BE20](v108);
  v107 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873CD8C();
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2287C9ED0();
  v104 = *(v23 - 8);
  v24 = *(v104 + 64);
  MEMORY[0x28223BE20](v23);
  v103 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v95 = a6;
  v96 = v6;
  v93 = *(a4 + qword_280DE6268);
  v92 = a4 + qword_280DE6258;
  v86 = *(a4 + qword_280DE6260);
  v109 = a1;
  v94 = v23;
  v106 = Strong;
  if (v114)
  {
    v27 = *(Strong + 56);
    MEMORY[0x28223BE20](Strong);
    v28 = v114;
    *(&v83 - 2) = v114;
    sub_228703004(0, &qword_280DE1990, 0x277CCD4D8);
    v29 = v28;

    sub_2287CA650();

    v91 = v29;

    v30 = v111;
  }

  else
  {
    v32 = Strong;
    swift_beginAccess();
    v30 = *(v32 + 48);
    v91 = v114;
  }

  v105 = v30;
  *&v111 = sub_2287CB5B0();
  v33 = MEMORY[0x277CBCD88];
  sub_2287738D0(0, &qword_280DE0178, &unk_280DDFF58, MEMORY[0x277D83940], MEMORY[0x277CBCD88]);
  v34 = MEMORY[0x277D83D88];
  sub_228773770(0, &qword_280DDFEB0, &qword_280DE1958, 0x277CCD940, MEMORY[0x277D83D88]);
  sub_22873CE6C();
  sub_2287CAF70();
  sub_2287693A8(&qword_280DE05D0, sub_22873CD8C);
  v35 = sub_2287CAF40();

  (*(v19 + 8))(v22, v18);
  *&v111 = v35;
  sub_2287738D0(0, &qword_280DE0148, &qword_280DDFEB0, v34, v33);
  sub_2287737D8(&unk_280DE0150, &qword_280DE0148, v33);
  v36 = sub_2287CAF40();

  *&v111 = v36;
  v37 = sub_2287CAEF0();

  *&v111 = v37;
  sub_22877383C();
  v85 = MEMORY[0x277CBCB30];
  sub_2287693A8(&qword_280DE07A0, sub_22877383C);
  v38 = sub_2287CAF40();

  v39 = v109;
  sub_2287010E4(v109 + 16, &v111);
  v40 = swift_allocObject();
  v41 = v97;
  v40[2] = v97;
  sub_228706AD4(&v111, (v40 + 3));
  v42 = v105;
  v40[8] = v105;
  v40[9] = v38;
  v43 = v38;
  v44 = swift_allocObject();
  v45 = v106;
  swift_weakInit();
  sub_2287010E4(v39 + 16, &v111);
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = v42;
  sub_228706AD4(&v111, (v46 + 4));
  v46[9] = v43;
  v46[10] = v41;
  v90 = v43;
  v46[11] = v86;
  sub_2287010E4(v39 + 16, &v111);
  swift_beginAccess();
  v47 = *(v45 + 48);
  v89 = type metadata accessor for HealthStoreSharableModelContext();
  v48 = swift_allocObject();

  v49 = v47;
  v88 = v40;

  v87 = v46;

  v50 = v105;
  swift_retain_n();
  swift_retain_n();
  v51 = v50;
  v48[2] = sub_2287CB590();
  sub_2287010E4(&v111, (v48 + 4));
  v48[3] = v51;
  v52 = [objc_allocWithZone(MEMORY[0x277CCDA78]) initWithHealthStore_];

  __swift_destroy_boxed_opaque_existential_0(&v111);
  v84 = v48;
  v48[9] = v52;
  v48[10] = sub_2287763B4;
  v48[11] = v40;
  v48[12] = sub_2287761F4;
  v48[13] = v46;
  v53 = type metadata accessor for HealthExperienceStoreFeedItemContext(0);
  v105 = sub_2287693A8(qword_280DE3170, type metadata accessor for HealthExperienceStoreFeedItemContext);
  v54 = v52;
  v55 = sub_2287C9D70();

  *&v111 = v55;
  sub_228774608(0, &qword_280DE0288, MEMORY[0x277D11FC0], MEMORY[0x277CBCD88]);
  sub_22873D1D8();
  v56 = sub_2287CAEF0();

  *&v111 = v56;
  sub_2287739F8();
  sub_2287693A8(&qword_280DE07B0, sub_2287739F8);
  v85 = sub_2287CAF40();

  v57 = *(v45 + 96);
  __swift_project_boxed_opaque_existential_1((v45 + 64), *(v45 + 88));
  v58 = sub_2287C99F0();
  sub_2287010E4(v109 + 16, &v111);
  LOBYTE(v52) = *(v45 + 40);
  v59 = *(v45 + 144);
  swift_beginAccess();
  v86 = *(v45 + 152);
  sub_2287010E4(v45 + 208, v110);
  v60 = v51;

  v61 = v107;
  sub_2287C9520();
  v62 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v97 = v53;
  v63 = *(v53 + 48);
  v64 = *(v53 + 52);
  v65 = swift_allocObject();
  *(v65 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_loggingSensitiveTerms) = &unk_283BC00A0;
  *(v65 + 56) = v52;
  v66 = v101;
  (*(v101 + 16))(v65 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_boundingRange, v61, v108);
  __swift_project_boxed_opaque_existential_1(&v111, v112);
  v67 = v58;
  sub_2287C9A70();
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_2287CB550();

  v68 = v98;
  sub_2287CA320();
  (*(v99 + 32))(v65 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_feedItemStorage, v68, v100);
  *(v65 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_storageContext) = v67;
  sub_2287010E4(&v111, v65 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo);
  *(v65 + 16) = v60;
  *(v65 + 24) = v59;
  sub_2287010E4(v110, v65 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_queueProvider);
  v69 = objc_allocWithZone(MEMORY[0x277CCDAC0]);
  v70 = v60;
  v71 = v67;

  *(v65 + 48) = [v69 initWithHealthStore_];
  *(v65 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_displayNamePublisher) = v85;
  __swift_project_boxed_opaque_existential_1(&v111, v112);

  sub_2287C9A70();
  v72 = sub_2287C9A30();
  v73 = *(v72 + 48);
  v74 = *(v72 + 52);
  swift_allocObject();
  v75 = sub_2287C9A20();

  (*(v66 + 8))(v107, v108);
  __swift_destroy_boxed_opaque_existential_0(v110);
  v76 = MEMORY[0x277D11D38];
  *(v65 + 32) = v75;
  *(v65 + 40) = v76;
  __swift_destroy_boxed_opaque_existential_0(&v111);
  sub_228770280(v92, v102, sub_228739E24);
  v112 = v97;
  v113 = v105;
  *&v111 = v65;
  v110[3] = v89;
  v110[4] = sub_2287693A8(qword_280DE3298, type metadata accessor for HealthStoreSharableModelContext);
  v110[0] = v84;
  v77 = v91;

  v78 = v103;
  sub_2287C9EA0();
  sub_2287C9EC0();

  v79 = *(v109 + 8);
  v80 = v109;
  v81 = (*v109)(v78);
  MEMORY[0x28223BE20](v81);
  *(&v83 - 4) = v80;
  *(&v83 - 3) = v78;
  *(&v83 - 2) = v95;
  v31 = sub_228757584(sub_228776278, (&v83 - 6), v81, sub_22872C820, sub_228713448, sub_22870CA30, sub_22877494C);

  (*(v104 + 8))(v78, v94);
  return v31;
}

uint64_t sub_22875D8DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v97 = a5;
  v114 = a3;
  sub_228739E24();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v102 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_2287CA340();
  v99 = *(v100 - 8);
  v13 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v98 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_2287C9590();
  v101 = *(v108 - 8);
  v15 = *(v101 + 64);
  MEMORY[0x28223BE20](v108);
  v107 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22873CD8C();
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2287C9ED0();
  v104 = *(v23 - 8);
  v24 = *(v104 + 64);
  MEMORY[0x28223BE20](v23);
  v103 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x277D84F90];
  }

  v95 = a6;
  v96 = v6;
  v93 = *(a4 + qword_280DE6268);
  v92 = a4 + qword_280DE6258;
  v86 = *(a4 + qword_280DE6260);
  v109 = a1;
  v94 = v23;
  v106 = Strong;
  if (v114)
  {
    v27 = *(Strong + 56);
    MEMORY[0x28223BE20](Strong);
    v28 = v114;
    *(&v83 - 2) = v114;
    sub_228703004(0, &qword_280DE1990, 0x277CCD4D8);
    v29 = v28;

    sub_2287CA650();

    v91 = v29;

    v30 = v111;
  }

  else
  {
    v32 = Strong;
    swift_beginAccess();
    v30 = *(v32 + 48);
    v91 = v114;
  }

  v105 = v30;
  *&v111 = sub_2287CB5B0();
  v33 = MEMORY[0x277CBCD88];
  sub_2287738D0(0, &qword_280DE0178, &unk_280DDFF58, MEMORY[0x277D83940], MEMORY[0x277CBCD88]);
  v34 = MEMORY[0x277D83D88];
  sub_228773770(0, &qword_280DDFEB0, &qword_280DE1958, 0x277CCD940, MEMORY[0x277D83D88]);
  sub_22873CE6C();
  sub_2287CAF70();
  sub_2287693A8(&qword_280DE05D0, sub_22873CD8C);
  v35 = sub_2287CAF40();

  (*(v19 + 8))(v22, v18);
  *&v111 = v35;
  sub_2287738D0(0, &qword_280DE0148, &qword_280DDFEB0, v34, v33);
  sub_2287737D8(&unk_280DE0150, &qword_280DE0148, v33);
  v36 = sub_2287CAF40();

  *&v111 = v36;
  v37 = sub_2287CAEF0();

  *&v111 = v37;
  sub_22877383C();
  v85 = MEMORY[0x277CBCB30];
  sub_2287693A8(&qword_280DE07A0, sub_22877383C);
  v38 = sub_2287CAF40();

  v39 = v109;
  sub_2287010E4(v109 + 16, &v111);
  v40 = swift_allocObject();
  v41 = v97;
  v40[2] = v97;
  sub_228706AD4(&v111, (v40 + 3));
  v42 = v105;
  v40[8] = v105;
  v40[9] = v38;
  v43 = v38;
  v44 = swift_allocObject();
  v45 = v106;
  swift_weakInit();
  sub_2287010E4(v39 + 16, &v111);
  v46 = swift_allocObject();
  v46[2] = v44;
  v46[3] = v42;
  sub_228706AD4(&v111, (v46 + 4));
  v46[9] = v43;
  v46[10] = v41;
  v90 = v43;
  v46[11] = v86;
  sub_2287010E4(v39 + 16, &v111);
  swift_beginAccess();
  v47 = *(v45 + 48);
  v89 = type metadata accessor for HealthStoreSharableModelContext();
  v48 = swift_allocObject();

  v49 = v47;
  v88 = v40;

  v87 = v46;

  v50 = v105;
  swift_retain_n();
  swift_retain_n();
  v51 = v50;
  v48[2] = sub_2287CB590();
  sub_2287010E4(&v111, (v48 + 4));
  v48[3] = v51;
  v52 = [objc_allocWithZone(MEMORY[0x277CCDA78]) initWithHealthStore_];

  __swift_destroy_boxed_opaque_existential_0(&v111);
  v84 = v48;
  v48[9] = v52;
  v48[10] = sub_22873D1C8;
  v48[11] = v40;
  v48[12] = sub_228773974;
  v48[13] = v46;
  v53 = type metadata accessor for HealthExperienceStoreFeedItemContext(0);
  v105 = sub_2287693A8(qword_280DE3170, type metadata accessor for HealthExperienceStoreFeedItemContext);
  v54 = v52;
  v55 = sub_2287C9D70();

  *&v111 = v55;
  sub_228774608(0, &qword_280DE0288, MEMORY[0x277D11FC0], MEMORY[0x277CBCD88]);
  sub_22873D1D8();
  v56 = sub_2287CAEF0();

  *&v111 = v56;
  sub_2287739F8();
  sub_2287693A8(&qword_280DE07B0, sub_2287739F8);
  v85 = sub_2287CAF40();

  v57 = *(v45 + 96);
  __swift_project_boxed_opaque_existential_1((v45 + 64), *(v45 + 88));
  v58 = sub_2287C99F0();
  sub_2287010E4(v109 + 16, &v111);
  LOBYTE(v52) = *(v45 + 40);
  v59 = *(v45 + 144);
  swift_beginAccess();
  v86 = *(v45 + 152);
  sub_2287010E4(v45 + 208, v110);
  v60 = v51;

  v61 = v107;
  sub_2287C9520();
  v62 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v97 = v53;
  v63 = *(v53 + 48);
  v64 = *(v53 + 52);
  v65 = swift_allocObject();
  *(v65 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_loggingSensitiveTerms) = &unk_283BC00D0;
  *(v65 + 56) = v52;
  v66 = v101;
  (*(v101 + 16))(v65 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_boundingRange, v61, v108);
  __swift_project_boxed_opaque_existential_1(&v111, v112);
  v67 = v58;
  sub_2287C9A70();
  sub_228703004(0, &qword_280DE3898, 0x277CCAC30);
  sub_2287CB550();

  v68 = v98;
  sub_2287CA320();
  (*(v99 + 32))(v65 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_feedItemStorage, v68, v100);
  *(v65 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_storageContext) = v67;
  sub_2287010E4(&v111, v65 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_pluginInfo);
  *(v65 + 16) = v60;
  *(v65 + 24) = v59;
  sub_2287010E4(v110, v65 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_queueProvider);
  v69 = objc_allocWithZone(MEMORY[0x277CCDAC0]);
  v70 = v60;
  v71 = v67;

  *(v65 + 48) = [v69 initWithHealthStore_];
  *(v65 + OBJC_IVAR____TtC18HealthPlatformCore36HealthExperienceStoreFeedItemContext_displayNamePublisher) = v85;
  __swift_project_boxed_opaque_existential_1(&v111, v112);

  sub_2287C9A70();
  v72 = sub_2287C9A30();
  v73 = *(v72 + 48);
  v74 = *(v72 + 52);
  swift_allocObject();
  v75 = sub_2287C9A20();

  (*(v66 + 8))(v107, v108);
  __swift_destroy_boxed_opaque_existential_0(v110);
  v76 = MEMORY[0x277D11D38];
  *(v65 + 32) = v75;
  *(v65 + 40) = v76;
  __swift_destroy_boxed_opaque_existential_0(&v111);
  sub_228770280(v92, v102, sub_228739E24);
  v112 = v97;
  v113 = v105;
  *&v111 = v65;
  v110[3] = v89;
  v110[4] = sub_2287693A8(qword_280DE3298, type metadata accessor for HealthStoreSharableModelContext);
  v110[0] = v84;
  v77 = v91;

  v78 = v103;
  sub_2287C9EA0();
  sub_2287C9EC0();

  v79 = *(v109 + 8);
  v80 = v109;
  v81 = (*v109)(v78);
  MEMORY[0x28223BE20](v81);
  *(&v83 - 4) = v80;
  *(&v83 - 3) = v78;
  *(&v83 - 2) = v95;
  v31 = sub_228757584(sub_228773A8C, (&v83 - 6), v81, sub_22872C6C0, sub_228713654, sub_22870C47C, sub_228771B7C);

  (*(v104 + 8))(v78, v94);
  return v31;
}

uint64_t sub_22875E7EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v62 = a4;
  v9 = sub_2287C9ED0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v61 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v54 - v14;
  sub_22870CA30();
  v60 = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2287CAA50();
  v63 = *(v20 - 8);
  v64 = v20;
  v21 = *(v63 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9D0();
  v66 = a2;
  sub_228770280(a2, v69, sub_228775E68);
  v65 = a1;
  sub_228770280(a1, v19, sub_22870CA30);
  v24 = *(v10 + 16);
  v67 = v9;
  v24(v15, a3, v9);
  v25 = sub_2287CAA40();
  v59 = sub_2287CB610();
  if (os_log_type_enabled(v25, v59))
  {
    v26 = swift_slowAlloc();
    v58 = a5;
    v27 = v26;
    v56 = swift_slowAlloc();
    v68 = v56;
    *v27 = 136446978;
    v70[7] = v62;
    swift_getMetatypeMetadata();
    v28 = sub_2287CB250();
    v55 = v25;
    v30 = sub_2287031D8(v28, v29, &v68);
    v57 = a3;
    v31 = v30;

    *(v27 + 4) = v31;
    *(v27 + 12) = 2082;
    v62 = v24;
    __swift_project_boxed_opaque_existential_1(v70, v70[3]);
    v32 = sub_2287C9A70();
    v34 = v33;
    sub_2287762E4(v69, sub_228775E68);
    v35 = sub_2287031D8(v32, v34, &v68);

    *(v27 + 14) = v35;
    *(v27 + 22) = 2082;
    v36 = &v19[*(v60 + 36)];
    v37 = sub_2287C9E50();
    v38 = sub_2287C9C50();
    v40 = v39;

    sub_2287762E4(v19, sub_22870CA30);
    v41 = sub_2287031D8(v38, v40, &v68);
    a3 = v57;

    *(v27 + 24) = v41;
    *(v27 + 32) = 2082;
    v42 = v67;
    v62(v61, v15, v67);
    v43 = sub_2287CB250();
    v45 = v44;
    (*(v10 + 8))(v15, v42);
    v46 = sub_2287031D8(v43, v45, &v68);
    v24 = v62;

    *(v27 + 34) = v46;
    v47 = v55;
    _os_log_impl(&dword_2286FF000, v55, v59, "[%{public}s]: delegate returned pipeline <%{public}s> for profile %{public}s and context %{public}s.", v27, 0x2Au);
    v48 = v56;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v48, -1, -1);
    v49 = v27;
    a5 = v58;
    MEMORY[0x22AABFD90](v49, -1, -1);

    (*(v63 + 8))(v23, v64);
  }

  else
  {

    (*(v10 + 8))(v15, v67);
    sub_2287762E4(v19, sub_22870CA30);
    (*(v63 + 8))(v23, v64);
    sub_2287762E4(v69, sub_228775E68);
  }

  sub_228770280(v65, a5, sub_22870CA30);
  sub_22872C820(0);
  v51 = v50;
  sub_2287010E4(v66 + 16, a5 + *(v50 + 28));
  v24((a5 + *(v51 + 32)), a3, v67);
  v52 = a5 + *(v51 + 36);
  return sub_2287C9800();
}

uint64_t sub_22875ED70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v62 = a4;
  v9 = sub_2287C9ED0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v61 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v54 - v14;
  sub_22870C47C();
  v60 = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2287CAA50();
  v63 = *(v20 - 8);
  v64 = v20;
  v21 = *(v63 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287CA9D0();
  v66 = a2;
  sub_228770280(a2, v69, sub_228772B58);
  v65 = a1;
  sub_228770280(a1, v19, sub_22870C47C);
  v24 = *(v10 + 16);
  v67 = v9;
  v24(v15, a3, v9);
  v25 = sub_2287CAA40();
  v59 = sub_2287CB610();
  if (os_log_type_enabled(v25, v59))
  {
    v26 = swift_slowAlloc();
    v58 = a5;
    v27 = v26;
    v56 = swift_slowAlloc();
    v68 = v56;
    *v27 = 136446978;
    v70[7] = v62;
    swift_getMetatypeMetadata();
    v28 = sub_2287CB250();
    v55 = v25;
    v30 = sub_2287031D8(v28, v29, &v68);
    v57 = a3;
    v31 = v30;

    *(v27 + 4) = v31;
    *(v27 + 12) = 2082;
    v62 = v24;
    __swift_project_boxed_opaque_existential_1(v70, v70[3]);
    v32 = sub_2287C9A70();
    v34 = v33;
    sub_2287762E4(v69, sub_228772B58);
    v35 = sub_2287031D8(v32, v34, &v68);

    *(v27 + 14) = v35;
    *(v27 + 22) = 2082;
    v36 = &v19[*(v60 + 36)];
    v37 = sub_2287C9E50();
    v38 = sub_2287C9C50();
    v40 = v39;

    sub_2287762E4(v19, sub_22870C47C);
    v41 = sub_2287031D8(v38, v40, &v68);
    a3 = v57;

    *(v27 + 24) = v41;
    *(v27 + 32) = 2082;
    v42 = v67;
    v62(v61, v15, v67);
    v43 = sub_2287CB250();
    v45 = v44;
    (*(v10 + 8))(v15, v42);
    v46 = sub_2287031D8(v43, v45, &v68);
    v24 = v62;

    *(v27 + 34) = v46;
    v47 = v55;
    _os_log_impl(&dword_2286FF000, v55, v59, "[%{public}s]: delegate returned pipeline <%{public}s> for profile %{public}s and context %{public}s.", v27, 0x2Au);
    v48 = v56;
    swift_arrayDestroy();
    MEMORY[0x22AABFD90](v48, -1, -1);
    v49 = v27;
    a5 = v58;
    MEMORY[0x22AABFD90](v49, -1, -1);

    (*(v63 + 8))(v23, v64);
  }

  else
  {

    (*(v10 + 8))(v15, v67);
    sub_2287762E4(v19, sub_22870C47C);
    (*(v63 + 8))(v23, v64);
    sub_2287762E4(v69, sub_228772B58);
  }

  sub_228770280(v65, a5, sub_22870C47C);
  sub_22872C6C0(0);
  v51 = v50;
  sub_2287010E4(v66 + 16, a5 + *(v50 + 28));
  v24((a5 + *(v51 + 32)), a3, v67);
  v52 = a5 + *(v51 + 36);
  return sub_2287C9800();
}

uint64_t sub_22875F2F4(uint64_t a1)
{
  sub_228772C28(0, &qword_280DE3450, sub_22872C820);
  v23 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v24 = MEMORY[0x277D84F90];
    sub_2287133FC(0, v7, 0);
    v8 = v24;
    sub_22872C820(0);
    v10 = v9;
    v11 = a1 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80));
    v12 = *(*(v9 - 8) + 72);
    do
    {
      v13 = &v6[*(v23 + 48)];
      sub_2287745F0(v11, v13);
      v14 = *(v10 + 36);
      v15 = sub_2287C9810();
      (*(*(v15 - 8) + 16))(v6, v13 + v14, v15);
      v24 = v8;
      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_2287133FC(v16 > 1, v17 + 1, 1);
        v8 = v24;
      }

      *(v8 + 16) = v17 + 1;
      sub_228772CA0(v6, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17, &qword_280DE3450, sub_22872C820);
      v11 += v12;
      --v7;
    }

    while (v7);
  }

  if (*(v8 + 16))
  {
    sub_228775F38();
    v18 = sub_2287CBBF0();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v24 = v18;
  sub_22876DF78(v8, 1, &v24);
  v19 = v24;
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  sub_2287651E0(sub_228775FE4, v20, &unk_283BC2368, &unk_283BC2598, sub_2287763C8, &block_descriptor_217);
}

uint64_t sub_22875F610(uint64_t a1)
{
  sub_228772C28(0, &qword_280DE3460, sub_22872C6C0);
  v23 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v24 = MEMORY[0x277D84F90];
    sub_228713608(0, v7, 0);
    v8 = v24;
    sub_22872C6C0(0);
    v10 = v9;
    v11 = a1 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80));
    v12 = *(*(v9 - 8) + 72);
    do
    {
      v13 = &v6[*(v23 + 48)];
      sub_228771770(v11, v13);
      v14 = *(v10 + 36);
      v15 = sub_2287C9810();
      (*(*(v15 - 8) + 16))(v6, v13 + v14, v15);
      v24 = v8;
      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_228713608(v16 > 1, v17 + 1, 1);
        v8 = v24;
      }

      *(v8 + 16) = v17 + 1;
      sub_228772CA0(v6, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17, &qword_280DE3460, sub_22872C6C0);
      v11 += v12;
      --v7;
    }

    while (v7);
  }

  if (*(v8 + 16))
  {
    sub_228772D0C();
    v18 = sub_2287CBBF0();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v24 = v18;
  sub_22876E5A8(v8, 1, &v24);
  v19 = v24;
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  sub_2287651E0(sub_228772DB8, v20, &unk_283BC1E18, &unk_283BC2048, sub_228772388, &block_descriptor_5);
}

uint64_t sub_22875F92C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  sub_2287704B4(0, &qword_280DE0450, &qword_280DE0228, sub_22872C820, sub_2287744AC);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v18 - v9;
  v18[1] = a1;
  v11 = v2[24];
  v12 = v2[25];
  __swift_project_boxed_opaque_existential_1(v2 + 21, v11);
  (*(v12 + 8))(v11, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v4;
  v15 = MEMORY[0x277CBCD88];
  sub_228774608(0, &qword_280DE0228, sub_22872C820, MEMORY[0x277CBCD88]);
  sub_2287691F4(0);
  sub_228774608(0, &qword_280DE0200, sub_2287691F4, v15);
  sub_2287744AC();
  sub_22876928C();
  sub_2287CAFE0();

  sub_228774560();
  v16 = sub_2287CAF40();
  (*(v7 + 8))(v10, v6);
  return v16;
}

uint64_t sub_22875FBB4(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  sub_22877150C();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = a1;
  v11 = v2[24];
  v12 = v2[25];
  __swift_project_boxed_opaque_existential_1(v2 + 21, v11);
  (*(v12 + 8))(v11, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v4;
  v15 = MEMORY[0x277CBCD88];
  sub_228774608(0, &qword_280DE0238, sub_22872C6C0, MEMORY[0x277CBCD88]);
  sub_228770F78();
  sub_228774608(0, &qword_280DE0218, sub_228770F78, v15);
  sub_2287716BC();
  sub_2287710CC();
  sub_2287CAFE0();

  sub_2287693A8(&qword_280DE0498, sub_22877150C);
  v16 = sub_2287CAF40();
  (*(v7 + 8))(v10, v6);
  return v16;
}

uint64_t sub_22875FE44(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v70 = a3;
  sub_22870CA30();
  v72 = v4;
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v71 = &v65[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_228774608(0, &qword_280DE0088, sub_2287691F4, MEMORY[0x277CBCE88]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v65[-v11];
  sub_22872C820(0);
  v73 = v13;
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v65[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v65[-v19];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v65[-v22];
  MEMORY[0x28223BE20](v21);
  v25 = &v65[-v24];
  v26 = sub_2287CAA50();
  v74 = *(v26 - 8);
  v75 = v26;
  v27 = *(v74 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v65[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v69 = Strong;
    sub_2287CA9D0();
    sub_2287745F0(a1, v25);
    sub_2287745F0(a1, v23);
    sub_2287745F0(a1, v20);
    sub_2287745F0(a1, v17);
    v31 = sub_2287CAA40();
    v32 = sub_2287CB610();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v68 = a1;
      v34 = v33;
      v67 = swift_slowAlloc();
      v77 = v67;
      *v34 = 136447234;
      v76 = v70;
      swift_getMetatypeMetadata();
      v35 = sub_2287CB250();
      v70 = v31;
      v37 = sub_2287031D8(v35, v36, &v77);
      v66 = v32;
      v38 = v37;

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      v39 = &v25[*(v73 + 28)];
      v40 = v39[4];
      __swift_project_boxed_opaque_existential_1(v39, v39[3]);
      v41 = sub_2287C9A70();
      v43 = v42;
      sub_2287762E4(v25, sub_22872C820);
      v44 = sub_2287031D8(v41, v43, &v77);

      *(v34 + 14) = v44;
      *(v34 + 22) = 2082;
      sub_228770280(v23, v71, sub_22870CA30);
      v45 = v72;
      v46 = sub_2287CB250();
      v48 = v47;
      sub_2287762E4(v23, sub_22872C820);
      v49 = sub_2287031D8(v46, v48, &v77);

      *(v34 + 24) = v49;
      *(v34 + 32) = 2082;
      v50 = &v20[*(v45 + 36)];
      v51 = sub_2287C9E50();
      v52 = sub_2287C9C50();
      v54 = v53;

      sub_2287762E4(v20, sub_22872C820);
      v55 = sub_2287031D8(v52, v54, &v77);

      *(v34 + 34) = v55;
      *(v34 + 42) = 2082;
      v56 = &v17[*(v73 + 32)];
      sub_2287C9E80();
      sub_22870D3A8(0, &qword_280DE3418);
      v57 = sub_2287CB250();
      v59 = v58;
      sub_2287762E4(v17, sub_22872C820);
      v60 = sub_2287031D8(v57, v59, &v77);

      *(v34 + 44) = v60;
      v61 = v70;
      _os_log_impl(&dword_2286FF000, v70, v66, "[%{public}s][%{public}s]: dispatching GeneratorPipeline <%{public}s> for profile %{public}s and context %{public}s to queue for execution", v34, 0x34u);
      v62 = v67;
      swift_arrayDestroy();
      MEMORY[0x22AABFD90](v62, -1, -1);
      a1 = v68;
      MEMORY[0x22AABFD90](v34, -1, -1);

      (*(v74 + 8))(v29, v75);
    }

    else
    {

      sub_2287762E4(v17, sub_22872C820);
      sub_2287762E4(v20, sub_22872C820);
      sub_2287762E4(v23, sub_22872C820);
      (*(v74 + 8))(v29, v75);
      sub_2287762E4(v25, sub_22872C820);
    }

    v76 = sub_228760BEC(a1);
    sub_228774608(0, &qword_280DE0200, sub_2287691F4, MEMORY[0x277CBCD88]);
    sub_22876928C();
    v63 = sub_2287CAF40();
  }

  else
  {
    sub_2287691F4(0);
    sub_22870D3A8(0, &qword_280DE35A0);
    sub_2287CADC0();
    sub_228770B4C();
    v63 = sub_2287CAF40();
    (*(v9 + 8))(v12, v8);
  }

  return v63;
}