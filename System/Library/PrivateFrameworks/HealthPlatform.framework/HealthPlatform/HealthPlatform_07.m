uint64_t sub_22847F6C4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  sub_22847FC2C(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_22847F79C()
{
  if (!qword_280DE90A8)
  {
    sub_22847F828(255, &qword_280DE96E0, MEMORY[0x277D837D0], MEMORY[0x277D834F8]);
    v0 = sub_22855DF7C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE90A8);
    }
  }
}

void sub_22847F828(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x277D837D0], a3, MEMORY[0x277D837E0]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_22847F888(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84030], MEMORY[0x277D84F70] + 8, MEMORY[0x277D84038]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22847F8F4(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_22847F960(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_22847F960(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_22847F9C4()
{
  if (!qword_27D83F958)
  {
    sub_2283FFCB0();
    sub_2283EF310(255, &qword_27D83F960, 0x277CBEB88);
    sub_22840A348(&qword_27D83F968, sub_2283FFCB0);
    sub_22842B880(&qword_27D83F970, &qword_27D83F960, 0x277CBEB88);
    v0 = sub_22855CB9C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83F958);
    }
  }
}

uint64_t sub_22847FAC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22847FBC8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_22847FB5C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_22847FBC8(255, a3, a4, a5);
    v6 = sub_22855DF7C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_22847FBC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22847FC2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_22847FCA8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    a3(255);
    sub_22840A348(&unk_280DE9370, type metadata accessor for HKFeatureIdentifier);
    v5 = sub_22855DF7C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 BasicGeneratorPipeline.domain.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(a1 + 24);
  v6 = *(v1 + 8);
  v5 = *(v1 + 16);
  v7 = *(v1 + 24);

  *(v1 + 8) = v3;
  result = *(a1 + 1);
  *(v1 + 16) = result;
  *(v1 + 32) = v4;
  return result;
}

double BasicGeneratorPipeline.init(generator:domain:)@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_228480340(0, &qword_27D83F980, sub_22847FFA8);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = v16 - v10;
  v12 = *a2;
  v13 = *(a2 + 24);
  sub_2283F9B10(a1, v17);
  sub_22847FFA8();
  *v16 = *(a2 + 1);
  sub_22855CDCC();
  sub_2284803B0(&qword_27D83F988, &qword_27D83F980, sub_22847FFA8);
  v14 = sub_22855CE6C();
  __swift_destroy_boxed_opaque_existential_0(a1);
  (*(v8 + 8))(v11, v7);
  *a3 = v14;
  *(a3 + 8) = v12;
  result = v16[0];
  *(a3 + 16) = *v16;
  *(a3 + 32) = v13;
  return result;
}

unint64_t sub_22847FFA8()
{
  result = qword_280DE9FB0;
  if (!qword_280DE9FB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DE9FB0);
  }

  return result;
}

uint64_t _s14HealthPlatform27BasicSharableModelGeneratorV6domainAA0F6DomainVvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = v2;
}

uint64_t static BasicGenerator.empty.getter@<X0>(uint64_t a1@<X8>)
{
  sub_228480340(0, &qword_280DEE3F0, sub_2284773B4);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = v13 - v6;
  v8 = MEMORY[0x277D84F90];
  v9 = sub_228429B98(MEMORY[0x277D84F90]);
  v10 = sub_228428BF8(v8);
  v13[1] = v8;
  sub_2284773B4();
  sub_22855CDCC();
  sub_2284803B0(qword_280DEE3F8, &qword_280DEE3F0, sub_2284773B4);
  v11 = sub_22855CE6C();
  result = (*(v4 + 8))(v7, v3);
  *a1 = v11;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = 0;
  return result;
}

double BasicGenerator.init(changes:domain:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_228480340(0, &qword_280DEE3F0, sub_2284773B4);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = v16 - v10;
  v12 = *a2;
  v13 = *(a2 + 24);
  v17 = a1;
  sub_2284773B4();
  *v16 = *(a2 + 1);
  sub_22855CDCC();
  sub_2284803B0(qword_280DEE3F8, &qword_280DEE3F0, sub_2284773B4);
  v14 = sub_22855CE6C();
  (*(v8 + 8))(v11, v7);
  *a3 = v14;
  *(a3 + 8) = v12;
  result = v16[0];
  *(a3 + 16) = *v16;
  *(a3 + 32) = v13;
  return result;
}

void sub_228480340(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855CDBC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 BasicGenerator.init(publisher:domain:)@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 24);
  a3->n128_u64[0] = a1;
  a3->n128_u64[1] = v3;
  result = *(a2 + 8);
  a3[1] = result;
  a3[2].n128_u8[0] = v4;
  return result;
}

uint64_t sub_2284803B0(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_228480340(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_228480424(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_22848046C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void HealthPlatformOrchestrationContext.feedItemStorage(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27[4] = a5;
  v11 = sub_22855C73C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a4;
  v16 = *(*(a4 + 16) + 16);
  v29 = v5;
  v17 = v16(a3);
  if (v17)
  {
    v18 = v17;
    v19 = [v17 profileIdentifier];
    v20 = _sSo11NSPredicateC14HealthPlatformE24feedItemStoragePredicate3for17profileIdentifierAB0B13Orchestration8Executor_p_So09HKProfileJ0CtFZ_0(a1, a2, v19);

    HealthPlatformOrchestrationContext.feedItemStorage(for:scope:)(a1, a2, v20, a3, v28);
  }

  else
  {
    v21 = sub_228439BBC();
    v27[2] = " has been deallocated!";
    v27[3] = v21;
    sub_22840A70C();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_228560580;
    swift_getObjectType();
    sub_22855CA1C();
    v23 = sub_22855C72C();
    v27[1] = v6;
    v25 = v24;
    (*(v12 + 8))(v15, v11);
    *(v22 + 56) = MEMORY[0x277D837D0];
    *(v22 + 64) = sub_22840A7C8();
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    v26 = sub_22855D62C();
    HealthPlatformOrchestrationContext.feedItemStorage(for:scope:)(a1, a2, v26, a3, v28);
  }
}

void HealthPlatformOrchestrationContext.feedItemStorage(for:scope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_228480EC0();
  if (!v5)
  {
    (*(a5 + 24))(a1, a2, v11, v12, a3, a4, a5);
  }
}

void HealthPlatformOrchestrationContext.feedItemStorageScopedToAgnosticProfile(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _sSo11NSPredicateC14HealthPlatformE42feedItemStoragePredicateForAgnosticProfile3forAB0B13Orchestration8Executor_p_tFZ_0();
  HealthPlatformOrchestrationContext.feedItemStorage(for:scope:)(a1, a2, v8, a3, a4);
}

uint64_t HealthPlatformOrchestrationContext.sharableModelStorage(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_228480EC0();
  (*(a6 + 56))();
}

uint64_t HealthPlatformOrchestrationContext.sharableModelStorage(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_228480948, 0, 0);
}

uint64_t sub_228480948()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = sub_2283F9B94(0, &qword_280DEBC60);
  *v5 = v0;
  v5[1] = sub_228480A64;
  v7 = *(v0 + 16);

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD00000000000001ALL, 0x80000002285702E0, sub_22848100C, v2, v6);
}

uint64_t sub_228480A64()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_228480BA0, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_228480BA0()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_228480C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a6;
  sub_22848101C(0, &qword_280DE9580, MEMORY[0x277D85670]);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v19 - v14;
  (*(v12 + 16))(&v19 - v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  HealthPlatformOrchestrationContext.sharableModelStorage(for:completion:)(a3, a4, sub_2284810B4, v17, a5, v20);
}

uint64_t sub_228480D8C(uint64_t a1)
{
  sub_228481140(a1, v3);
  if (v4)
  {
    v2[0] = *&v3[0];
    sub_22848101C(0, &qword_280DE9580, MEMORY[0x277D85670]);
    return sub_22855D4AC();
  }

  else
  {
    sub_2283FAB3C(v3, v2);
    sub_22848101C(0, &qword_280DE9580, MEMORY[0x277D85670]);
    return sub_22855D4BC();
  }
}

void HealthPlatformOrchestrationContext.sharableModelReadableStorage(for:transaction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_228480EC0();
  if (!v5)
  {
    (*(a5 + 64))();
  }
}

void sub_228480EC0()
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = [v1 bundleIdentifier];
  if (v2)
  {
    v3 = v2;
    sub_22855D1AC();
  }

  else
  {
    sub_2284811C0();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
  }
}

uint64_t sub_228480F94(uint64_t a1)
{
  sub_22848101C(0, &qword_280DE8EA8, MEMORY[0x277D84C48]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22848101C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_2283F9B94(255, &qword_280DEBC60);
    v7 = sub_2283F9B94(255, &qword_280DECFE0);
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2284810B4(uint64_t a1)
{
  sub_22848101C(0, &qword_280DE9580, MEMORY[0x277D85670]);
  v3 = *(*(v2 - 8) + 80);

  return sub_228480D8C(a1);
}

uint64_t sub_228481140(uint64_t a1, uint64_t a2)
{
  sub_22848101C(0, &qword_280DE8EA8, MEMORY[0x277D84C48]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2284811C0()
{
  result = qword_27D840820;
  if (!qword_27D840820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840820);
  }

  return result;
}

void FeedItemNotificationManagerStore.init(domain:primaryHealthStore:)(void *a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = sub_22855BDCC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *a2 = sub_22855BDBC();
  v7 = sub_22855BD9C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  a2[1] = sub_22855BD8C();
  type metadata accessor for UnfairLock();
  v10 = swift_allocObject();
  v11 = swift_slowAlloc();
  *(v10 + 16) = v11;
  *v11 = 0;
  a2[2] = v10;
  a2[3] = a1;
  v12 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v13 = a1;
  v14 = sub_22855D17C();

  v15 = [v12 initWithCategory:1 domainName:v14 healthStore:v13];

  a2[4] = v15;
}

void FeedItemNotificationManagerStore.addOrUpdate(_:)(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = sub_22855C1DC();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v36[1] = *(a1 + 16);
  v36[2] = v8;
  v37 = *(a1 + 48);
  v36[0] = *a1;
  v9 = *(v1 + 4);
  v32 = v1[1];
  v31 = v32;
  os_unfair_lock_lock(*(v32 + 16));
  v10 = *&v36[0];
  v30 = *v1;
  v34[0] = v30;
  v34[1] = v32;
  v35 = v9;
  v11 = sub_2284816C0(*&v36[0]);
  v12 = sub_228429C3C(v11);

  v33 = v12;
  sub_22842B9BC(v36, v34);
  sub_2284842E4(v34, v36);
  v13 = *&v34[0];

  v14 = v33;
  v15 = *(v33 + 16);
  if (v15)
  {
    v16 = sub_228462484(*(v33 + 16), 0);
    v17 = sub_2284628F0(v34, (v16 + 4), v15, v14);
    sub_228407958();
    if (v17 == v15)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v16 = MEMORY[0x277D84F90];
LABEL_5:
  *&v34[0] = v16;
  sub_22848CB7C();
  sub_22848CE10(&qword_27D83F990, sub_22848CBCC);
  v18 = sub_22855BDAC();
  v20 = v19;

  if (!v2)
  {
    v21 = sub_22855C08C();
    if (v10)
    {
      v22 = [v10 identifier];
      sub_22855C1BC();

      sub_22855C17C();
      (*(v29 + 8))(v7, v4);
    }

    v23 = sub_22855D17C();

    *&v34[0] = 0;
    v24 = [v9 setData:v21 forKey:v23 error:v34];

    if (v24)
    {
      v25 = *&v34[0];
    }

    else
    {
      v26 = *&v34[0];
      sub_22855BF3C();

      swift_willThrow();
    }

    sub_22842B38C(v18, v20);
  }

  os_unfair_lock_unlock(*(v31 + 16));
  v27 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2284816C0(void *a1)
{
  v3 = sub_22855C1DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 8);
  v9 = *(v1 + 32);
  if (a1)
  {
    v10 = [a1 identifier];
    sub_22855C1BC();

    sub_22855C17C();
    (*(v4 + 8))(v7, v3);
  }

  v11 = sub_22855D77C();
  v13 = v12;

  if (v13 >> 60 == 15)
  {
    return MEMORY[0x277D84F90];
  }

  sub_22848CB7C();
  sub_22848CE10(&qword_27D83F9B0, sub_22848CE7C);
  sub_22855BD7C();
  sub_22842B378(v11, v13);
  return v15[2];
}

uint64_t sub_228481AF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v5 = *a1;
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v32 = v5;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  v29 = v6;
  v30 = v10;
  while (v9)
  {
LABEL_11:
    sub_2283F6E48(*(v32 + 56) + ((v12 << 11) | (32 * __clz(__rbit64(v9)))), v36);
    sub_228400400(v36, &v35);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_22848CDBC();
      swift_allocError();
      swift_willThrow();
    }

    v16 = *(a2 + 8);
    sub_22848CB7C();
    v37 = v4;
    sub_22842B3E0(v33, v34);
    sub_22842B3E0(v33, v34);
    sub_22848CE10(&qword_27D83F9B0, sub_22848CE7C);
    v17 = v37;
    sub_22855BD7C();
    if (v17)
    {
      sub_22842B38C(v33, v34);
      sub_22842B38C(v33, v34);

      swift_willThrow();

      return sub_22842B38C(v33, v34);
    }

    sub_22842B38C(v33, v34);
    v18 = v13;
    v37 = v34;
    result = sub_22842B38C(v33, v34);
    v19 = v35;
    v20 = *(v35 + 16);
    v21 = *(v13 + 16);
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      goto LABEL_30;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v23 = *(v18 + 24) >> 1, v23 >= v22))
    {
      v6 = v29;
      v13 = v18;
    }

    else
    {
      if (v21 <= v22)
      {
        v24 = v21 + v20;
      }

      else
      {
        v24 = v21;
      }

      result = sub_2284267E0(result, v24, 1, v18);
      v13 = result;
      v23 = *(result + 24) >> 1;
      v6 = v29;
    }

    v10 = v30;
    if (*(v19 + 16))
    {
      if (v23 - *(v13 + 16) < v20)
      {
        goto LABEL_32;
      }

      swift_arrayInitWithCopy();

      v4 = 0;
      v14 = v37;
      if (v20)
      {
        v25 = *(v13 + 16);
        v26 = __OFADD__(v25, v20);
        v27 = v25 + v20;
        if (v26)
        {
          goto LABEL_33;
        }

        *(v13 + 16) = v27;
      }
    }

    else
    {

      v4 = 0;
      v14 = v37;
      if (v20)
      {
        goto LABEL_31;
      }
    }

    v9 &= v9 - 1;
    result = sub_22842B38C(v33, v14);
  }

  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      *a3 = v13;
      return result;
    }

    v9 = *(v6 + 8 * v15);
    ++v12;
    if (v9)
    {
      v12 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_228481E58(void *a1, void *a2)
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

    v9 = sub_22855DB5C();

    if (v9)
    {

      sub_2283EF310(0, &qword_280DEE7B8, 0x277CCD720);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_22855DB4C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_228485488(v7, result + 1, &qword_27D83F7D0, &qword_280DEE7B8, 0x277CCD720, &qword_280DED1D8);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_2284863FC(v22 + 1, &qword_27D83F7D0, &qword_280DEE7B8, 0x277CCD720, &qword_280DED1D8);
    }

    v20 = v8;
    sub_22851C480();

    *v3 = v21;
    goto LABEL_16;
  }

  sub_2283EF310(0, &qword_280DEE7B8, 0x277CCD720);
  v11 = *(v6 + 40);
  v12 = sub_22855D99C();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_2284893F0(v20, v14, isUniquelyReferenced_nonNull_native, &qword_27D83F7D0, &qword_280DEE7B8, 0x277CCD720, &qword_280DED1D8);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_22855D9AC();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_2284820F0(void *a1, void *a2)
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

    v9 = sub_22855DB5C();

    if (v9)
    {

      type metadata accessor for DataType();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_22855DB4C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_228485234(v7, result + 1, sub_22848D4B0, type metadata accessor for DataType, sub_22848D4B0);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_2284858F4(v22 + 1, sub_22848D4B0);
    }

    v20 = v8;
    sub_22851C480();

    *v3 = v21;
    goto LABEL_16;
  }

  type metadata accessor for DataType();
  v11 = *(v6 + 40);
  v12 = sub_22855D99C();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_228487E10(v20, v14, isUniquelyReferenced_nonNull_native, sub_22848D4B0, type metadata accessor for DataType, sub_22848D4B0);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_22855D9AC();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_228482394(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22855C33C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_22840A390(&qword_280DEE360, MEMORY[0x277D10C20]);
  v36 = a2;
  v13 = sub_22855D13C();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_22840A390(&qword_27D83F580, MEMORY[0x277D10C20]);
      v23 = sub_22855D16C();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_228487B44(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_228482674(void *a1, void *a2)
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

    v9 = sub_22855DB5C();

    if (v9)
    {

      type metadata accessor for MeasureIdentifierManagedObject();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_22855DB4C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_228485234(v7, result + 1, sub_22848D388, type metadata accessor for MeasureIdentifierManagedObject, sub_22848D388);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_2284858F4(v22 + 1, sub_22848D388);
    }

    v20 = v8;
    sub_22851C480();

    *v3 = v21;
    goto LABEL_16;
  }

  type metadata accessor for MeasureIdentifierManagedObject();
  v11 = *(v6 + 40);
  v12 = sub_22855D99C();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_228487E10(v20, v14, isUniquelyReferenced_nonNull_native, sub_22848D388, type metadata accessor for MeasureIdentifierManagedObject, sub_22848D388);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_22855D9AC();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_228482918(void *a1, void *a2)
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

    v9 = sub_22855DB5C();

    if (v9)
    {

      type metadata accessor for Keyword();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_22855DB4C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_228485234(v7, result + 1, sub_22848D2F4, type metadata accessor for Keyword, sub_22848D2F4);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_2284858F4(v22 + 1, sub_22848D2F4);
    }

    v20 = v8;
    sub_22851C480();

    *v3 = v21;
    goto LABEL_16;
  }

  type metadata accessor for Keyword();
  v11 = *(v6 + 40);
  v12 = sub_22855D99C();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_228487E10(v20, v14, isUniquelyReferenced_nonNull_native, sub_22848D2F4, type metadata accessor for Keyword, sub_22848D2F4);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_22855D9AC();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_228482BBC(void *a1, void *a2)
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

    v9 = sub_22855DB5C();

    if (v9)
    {

      type metadata accessor for Profile();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_22855DB4C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_228485234(v7, result + 1, sub_22848D260, type metadata accessor for Profile, sub_22848D260);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_2284858F4(v22 + 1, sub_22848D260);
    }

    v20 = v8;
    sub_22851C480();

    *v3 = v21;
    goto LABEL_16;
  }

  type metadata accessor for Profile();
  v11 = *(v6 + 40);
  v12 = sub_22855D99C();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_228487E10(v20, v14, isUniquelyReferenced_nonNull_native, sub_22848D260, type metadata accessor for Profile, sub_22848D260);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_22855D9AC();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_228482E60(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22855E22C();
  sub_22855D20C();
  v9 = sub_22855E27C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_22855E15C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_228487F88(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_228482FB0(void *a1, void *a2)
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

    v9 = sub_22855DB5C();

    if (v9)
    {

      type metadata accessor for SharableModelReference();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_22855DB4C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_228485234(v7, result + 1, sub_22848D16C, type metadata accessor for SharableModelReference, sub_22848D16C);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_2284858F4(v22 + 1, sub_22848D16C);
    }

    v20 = v8;
    sub_22851C480();

    *v3 = v21;
    goto LABEL_16;
  }

  type metadata accessor for SharableModelReference();
  v11 = *(v6 + 40);
  v12 = sub_22855D99C();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_228487E10(v20, v14, isUniquelyReferenced_nonNull_native, sub_22848D16C, type metadata accessor for SharableModelReference, sub_22848D16C);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_22855D9AC();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_228483254(void *a1, void *a2)
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

    v9 = sub_22855DB5C();

    if (v9)
    {

      sub_2283EF310(0, &qword_280DED160, 0x277CBE448);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_22855DB4C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_228485488(v7, result + 1, &qword_280DE91E8, &qword_280DED160, 0x277CBE448, &qword_280DED158);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_2284863FC(v22 + 1, &qword_280DE91E8, &qword_280DED160, 0x277CBE448, &qword_280DED158);
    }

    v20 = v8;
    sub_22851C480();

    *v3 = v21;
    goto LABEL_16;
  }

  sub_2283EF310(0, &qword_280DED160, 0x277CBE448);
  v11 = *(v6 + 40);
  v12 = sub_22855D99C();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_2284893F0(v20, v14, isUniquelyReferenced_nonNull_native, &qword_280DE91E8, &qword_280DED160, 0x277CBE448, &qword_280DED158);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_22855D9AC();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_2284834EC(void *a1, void *a2)
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

    v9 = sub_22855DB5C();

    if (v9)
    {

      sub_2283EF310(0, &qword_280DE94F8, 0x277CCD8D8);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_22855DB4C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_228485488(v7, result + 1, &qword_280DE9200, &qword_280DE94F8, 0x277CCD8D8, &qword_280DE94F0);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_2284863FC(v22 + 1, &qword_280DE9200, &qword_280DE94F8, 0x277CCD8D8, &qword_280DE94F0);
    }

    v20 = v8;
    sub_22851C480();

    *v3 = v21;
    goto LABEL_16;
  }

  sub_2283EF310(0, &qword_280DE94F8, 0x277CCD8D8);
  v11 = *(v6 + 40);
  v12 = sub_22855D99C();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_2284893F0(v20, v14, isUniquelyReferenced_nonNull_native, &qword_280DE9200, &qword_280DE94F8, 0x277CCD8D8, &qword_280DE94F0);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_22855D9AC();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_228483784(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_22855D1AC();
  sub_22855E22C();
  sub_22855D20C();
  v8 = sub_22855E27C();

  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_22855D1AC();
      v15 = v14;
      if (v13 == sub_22855D1AC() && v15 == v16)
      {

        goto LABEL_12;
      }

      v18 = sub_22855E15C();

      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v6 + 48) + 8 * v10);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v21 = a2;
    sub_228488108(v21, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = v21;
    return 1;
  }
}

uint64_t sub_228483930(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_22855E22C();
  ContentKind.rawValue.getter();
  sub_22855D20C();

  v7 = sub_22855E27C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_82:
    v21 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    sub_2284882F0(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    result = 1;
    goto LABEL_85;
  }

  v10 = ~v8;
  while (2)
  {
    v11 = 0xE500000000000000;
    v12 = 0x7472656C61;
    switch(*(*(v5 + 48) + v9))
    {
      case 1:
        break;
      case 2:
        v11 = 0xE300000000000000;
        v12 = 7368801;
        break;
      case 3:
        v11 = 0xE700000000000000;
        v12 = 0x656C6369747261;
        break;
      case 4:
        v11 = 0xE800000000000000;
        v12 = 0x79726F6765746163;
        break;
      case 5:
        v11 = 0xE400000000000000;
        v12 = 1635017060;
        break;
      case 6:
        v12 = 0x67676F4C61746164;
        v11 = 0xEB00000000676E69;
        break;
      case 7:
        v12 = 0x6D6D755361746164;
        v11 = 0xEB00000000797261;
        break;
      case 8:
        v12 = 0xD000000000000010;
        v11 = 0x800000022856CF30;
        break;
      case 9:
        v12 = 0xD000000000000010;
        v11 = 0x800000022856CF50;
        break;
      case 0xA:
        v12 = 0xD000000000000010;
        v11 = 0x800000022856CF70;
        break;
      case 0xB:
        v12 = 0x5365727574616566;
        v11 = 0xED00007375746174;
        break;
      case 0xC:
        v11 = 0xE900000000000074;
        goto LABEL_21;
      case 0xD:
        v11 = 0xEF68637261655374;
LABEL_21:
        v12 = 0x6867696C68676968;
        break;
      case 0xE:
        v12 = 0x697461676976616ELL;
        v11 = 0xEA00000000006E6FLL;
        break;
      case 0xF:
        v11 = 0xE600000000000000;
        v12 = 0x617461446F6ELL;
        break;
      case 0x10:
        v12 = 0x726568746FLL;
        break;
      case 0x11:
        v12 = 0x6D726F6674616C70;
        v11 = 0xED00007472656C41;
        break;
      case 0x12:
        v12 = 0x6F69746F6D6F7270;
        v11 = 0xE90000000000006ELL;
        break;
      case 0x13:
        v11 = 0xE600000000000000;
        v12 = 0x74706D6F7270;
        break;
      case 0x14:
        v11 = 0xE700000000000000;
        v12 = 0x656C69666F7270;
        break;
      case 0x15:
        v12 = 0x6E6F6974616C6572;
        v11 = 0xEC00000070696873;
        break;
      case 0x16:
        v11 = 0xE800000000000000;
        v12 = 0x73676E6974746573;
        break;
      case 0x17:
        v11 = 0xE600000000000000;
        v12 = 0x657461647075;
        break;
      case 0x18:
        v11 = 0xE700000000000000;
        v12 = 0x72616265646973;
        break;
      default:
        v12 = 0xD000000000000011;
        v11 = 0x800000022856CEE0;
        break;
    }

    v13 = 0xE500000000000000;
    v14 = 0x7472656C61;
    switch(a2)
    {
      case 1:
        goto LABEL_75;
      case 2:
        v13 = 0xE300000000000000;
        if (v12 != 7368801)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 3:
        v13 = 0xE700000000000000;
        v17 = 0x6C6369747261;
        goto LABEL_54;
      case 4:
        v13 = 0xE800000000000000;
        if (v12 != 0x79726F6765746163)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 5:
        v13 = 0xE400000000000000;
        if (v12 != 1635017060)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 6:
        v18 = 0x67676F4C61746164;
        v19 = 6778473;
        goto LABEL_64;
      case 7:
        v18 = 0x6D6D755361746164;
        v19 = 7959137;
LABEL_64:
        v13 = v19 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v12 != v18)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 8:
        v13 = 0x800000022856CF30;
        if (v12 != 0xD000000000000010)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 9:
        v13 = 0x800000022856CF50;
        if (v12 != 0xD000000000000010)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 10:
        v13 = 0x800000022856CF70;
        if (v12 != 0xD000000000000010)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 11:
        v15 = 0x5365727574616566;
        v16 = 0x7375746174;
        goto LABEL_51;
      case 12:
        v13 = 0xE900000000000074;
        goto LABEL_61;
      case 13:
        v13 = 0xEF68637261655374;
LABEL_61:
        if (v12 != 0x6867696C68676968)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 14:
        v13 = 0xEA00000000006E6FLL;
        if (v12 != 0x697461676976616ELL)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 15:
        v13 = 0xE600000000000000;
        if (v12 != 0x617461446F6ELL)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 16:
        if (v12 != 0x726568746FLL)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 17:
        v15 = 0x6D726F6674616C70;
        v16 = 0x7472656C41;
LABEL_51:
        v13 = v16 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        if (v12 != v15)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 18:
        v13 = 0xE90000000000006ELL;
        if (v12 != 0x6F69746F6D6F7270)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 19:
        v13 = 0xE600000000000000;
        v14 = 0x74706D6F7270;
LABEL_75:
        if (v12 == v14)
        {
          goto LABEL_76;
        }

        goto LABEL_77;
      case 20:
        v13 = 0xE700000000000000;
        v17 = 0x6C69666F7270;
LABEL_54:
        if (v12 != (v17 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 21:
        v13 = 0xEC00000070696873;
        if (v12 != 0x6E6F6974616C6572)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 22:
        v13 = 0xE800000000000000;
        if (v12 != 0x73676E6974746573)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 23:
        v13 = 0xE600000000000000;
        if (v12 != 0x657461647075)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      case 24:
        v13 = 0xE700000000000000;
        if (v12 != 0x72616265646973)
        {
          goto LABEL_77;
        }

        goto LABEL_76;
      default:
        v13 = 0x800000022856CEE0;
        if (v12 != 0xD000000000000011)
        {
          goto LABEL_77;
        }

LABEL_76:
        if (v11 != v13)
        {
LABEL_77:
          v20 = sub_22855E15C();

          if (v20)
          {
            goto LABEL_84;
          }

          v9 = (v9 + 1) & v10;
          if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_82;
          }

          continue;
        }

LABEL_84:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v9);
LABEL_85:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_22848404C(void *a1, void *a2)
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

    v9 = sub_22855DB5C();

    if (v9)
    {

      sub_2283EF310(0, &qword_280DE9320, 0x277CCDA70);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_22855DB4C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_228485488(v7, result + 1, &qword_27D83F9A0, &qword_280DE9320, 0x277CCDA70, &qword_280DE9318);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_2284863FC(v22 + 1, &qword_27D83F9A0, &qword_280DE9320, 0x277CCDA70, &qword_280DE9318);
    }

    v20 = v8;
    sub_22851C480();

    *v3 = v21;
    goto LABEL_16;
  }

  sub_2283EF310(0, &qword_280DE9320, 0x277CCDA70);
  v11 = *(v6 + 40);
  v12 = sub_22855D99C();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_2284893F0(v20, v14, isUniquelyReferenced_nonNull_native, &qword_27D83F9A0, &qword_280DE9320, 0x277CCDA70, &qword_280DE9318);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_22855D9AC();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_2284842E4(uint64_t a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_22855E22C();
  v51 = *a2;
  if (*a2)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v42 = a2;
  v11 = a2[5];
  v10 = a2[6];
  v48 = v7;
  v49 = v6;
  sub_22855D20C();
  v46 = v9;
  v47 = v8;
  sub_22855D20C();
  sub_22855D20C();
  v12 = sub_22855E27C();
  v13 = -1 << *(v4 + 32);
  v14 = v12 & ~v13;
  v54 = v4 + 56;
  if (((*(v4 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_33:
    v29 = *v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = *v41;
    sub_22842B9BC(v42, v56);
    sub_228488A80(v42, v14, isUniquelyReferenced_nonNull_native);
    *v41 = v55;
    v31 = *(v42 + 16);
    *a1 = *v42;
    *(a1 + 16) = v31;
    *(a1 + 32) = *(v42 + 32);
    *(a1 + 48) = *(v42 + 48);
    return 1;
  }

  v44 = v10;
  v45 = v11;
  v53 = ~v13;
  v50 = v4;
  v15 = v51;
  while (1)
  {
    v16 = *(v4 + 48) + 56 * v14;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v16 + 24);
    v22 = *(v16 + 32);
    v21 = *(v16 + 40);
    v23 = *(v16 + 48);
    if (*v16)
    {
      if (!v15)
      {
        goto LABEL_7;
      }

      v52 = *(v16 + 40);
      sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
      v24 = v17;

      if ((sub_22855D9AC() & 1) == 0)
      {

        v17 = v24;
        goto LABEL_30;
      }
    }

    else
    {
      if (v15)
      {
        goto LABEL_7;
      }

      v52 = *(v16 + 40);
    }

    v25 = v18 == v49 && v19 == v48;
    if (!v25 && (sub_22855E15C() & 1) == 0)
    {

LABEL_30:
      v4 = v50;
LABEL_31:

      v15 = v51;
      goto LABEL_7;
    }

    v26 = v20 == v47 && v22 == v46;
    v4 = v50;
    if (!v26 && (sub_22855E15C() & 1) == 0)
    {

      goto LABEL_31;
    }

    if (v52 == v45 && v23 == v44)
    {
      break;
    }

    v28 = sub_22855E15C();

    v15 = v51;
    if (v28)
    {
      goto LABEL_36;
    }

LABEL_7:
    v14 = (v14 + 1) & v53;
    if (((*(v54 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

LABEL_36:
  sub_22848CF64(v42);
  v33 = *(v50 + 48) + 56 * v14;
  v35 = *(v33 + 16);
  v34 = *(v33 + 24);
  v37 = *(v33 + 32);
  v36 = *(v33 + 40);
  v38 = *(v33 + 48);
  v39 = *v33;
  *a1 = *v33;
  *(a1 + 16) = v35;
  *(a1 + 24) = v34;
  *(a1 + 32) = v37;
  *(a1 + 40) = v36;
  *(a1 + 48) = v38;
  v40 = v39;

  return 0;
}

uint64_t sub_228484698(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22855C1DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_22840A390(&qword_280DEE378, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_22855D13C();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_22840A390(&qword_280DECD78, MEMORY[0x277CC95F0]);
      v23 = sub_22855D16C();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_228488E0C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_228484978(void *a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_22855E22C();
  if (a2)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  v7 = sub_22855E27C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_12:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    v17 = a2;
    sub_2284890D8(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v21;
    *a1 = a2;
    return 1;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = *(*(v5 + 48) + 8 * v9);
    if (!v11)
    {
      break;
    }

    if (a2)
    {
      sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
      v12 = v11;
      v13 = sub_22855D9AC();

      if (v13)
      {

        v14 = *(*(v5 + 48) + 8 * v9);
        goto LABEL_14;
      }
    }

LABEL_7:
    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (a2)
  {
    goto LABEL_7;
  }

  v14 = 0;
LABEL_14:
  *a1 = v14;
  v19 = v14;
  return 0;
}

uint64_t sub_228484B0C(void *a1, void *a2)
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

    v9 = sub_22855DB5C();

    if (v9)
    {

      sub_2283EF310(0, &qword_280DE94C8, 0x277CCD830);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_22855DB4C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_228485488(v7, result + 1, &qword_280DE91F8, &qword_280DE94C8, 0x277CCD830, &qword_280DE94C0);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_2284863FC(v22 + 1, &qword_280DE91F8, &qword_280DE94C8, 0x277CCD830, &qword_280DE94C0);
    }

    v20 = v8;
    sub_22851C480();

    *v3 = v21;
    goto LABEL_16;
  }

  sub_2283EF310(0, &qword_280DE94C8, 0x277CCD830);
  v11 = *(v6 + 40);
  v12 = sub_22855D99C();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_2284893F0(v20, v14, isUniquelyReferenced_nonNull_native, &qword_280DE91F8, &qword_280DE94C8, 0x277CCD830, &qword_280DE94C0);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_22855D9AC();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_228484DA4(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_22855E22C();
  v8 = a2 & 1;
  MEMORY[0x22AABA2B0](v8);
  v9 = sub_22855E27C();
  v10 = -1 << *(v6 + 32);
  v11 = v9 & ~v10;
  if ((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = *(v6 + 48);
      if (*(v13 + v11) == v8)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v8) = *(v13 + v11);
  }

  else
  {
LABEL_5:
    v14 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_22848929C(v8, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v17;
    result = 1;
  }

  *a1 = v8;
  return result;
}

uint64_t sub_228484EA4(void *a1, void *a2)
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

    v9 = sub_22855DB5C();

    if (v9)
    {

      sub_2283EF310(0, &qword_280DE9280, 0x277CCD940);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_22855DB4C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_228485488(v7, result + 1, &qword_27D83F7D8, &qword_280DE9280, 0x277CCD940, &qword_280DE9270);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_2284863FC(v22 + 1, &qword_27D83F7D8, &qword_280DE9280, 0x277CCD940, &qword_280DE9270);
    }

    v20 = v8;
    sub_22851C480();

    *v3 = v21;
    goto LABEL_16;
  }

  sub_2283EF310(0, &qword_280DE9280, 0x277CCD940);
  v11 = *(v6 + 40);
  v12 = sub_22855D99C();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_2284893F0(v20, v14, isUniquelyReferenced_nonNull_native, &qword_27D83F7D8, &qword_280DE9280, 0x277CCD940, &qword_280DE9270);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_22855D9AC();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_22848513C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_22855E22C();
  MEMORY[0x22AABA2B0](a2);
  v7 = sub_22855E27C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_228489598(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_228485234(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void), void (*a5)(void))
{
  if (a2)
  {
    a3(0);
    v7 = sub_22855DC1C();
    v21 = v7;
    sub_22855DAFC();
    if (sub_22855DB8C())
    {
      a4(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v7 + 16);
        if (*(v7 + 24) <= v15)
        {
          sub_2284858F4(v15 + 1, a5);
        }

        v7 = v21;
        v8 = *(v21 + 40);
        result = sub_22855D99C();
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (sub_22855DB8C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v7;
}

uint64_t sub_228485488(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  if (a2)
  {
    sub_22848D04C(0, a3, a4, a5, a6);
    v10 = sub_22855DC1C();
    v24 = v10;
    sub_22855DAFC();
    if (sub_22855DB8C())
    {
      sub_2283EF310(0, a4, a5);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_2284863FC(v18 + 1, a3, a4, a5, a6);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_22855D99C();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_22855DB8C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_2284856A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_228460124();
  result = sub_22855DC0C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_22855E22C();
      sub_22855D20C();
      result = sub_22855E27C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2284858F4(uint64_t a1, void (*a2)(void))
{
  v3 = v2;
  v4 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v5 = *(*v2 + 24);
  }

  a2(0);
  result = sub_22855DC0C();
  v7 = result;
  if (*(v4 + 16))
  {
    v8 = 0;
    v9 = (v4 + 56);
    v10 = 1 << *(v4 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v4 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(*(v4 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = *(v7 + 40);
      result = sub_22855D99C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v4 + 32);
    if (v28 >= 64)
    {
      bzero((v4 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v7;
  return result;
}

uint64_t sub_228485B14(uint64_t a1)
{
  v2 = v1;
  v41 = sub_22855C33C();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_22848D41C();
  result = sub_22855DC0C();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_22840A390(&qword_280DEE360, MEMORY[0x277D10C20]);
      result = sub_22855D13C();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_228485E64(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UserProfile();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_22846021C();
  result = sub_22855DC0C();
  v11 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v35 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v36 + 72);
      sub_2284602F8(v23 + v24 * (v20 | (v12 << 6)), v7);
      v25 = *(v11 + 40);
      sub_22855E22C();
      sub_22855C1DC();
      sub_22840A390(&qword_280DEE378, MEMORY[0x277CC95F0]);
      sub_22855D14C();
      result = sub_22855E27C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_2284602F8(v7, *(v11 + 48) + v19 * v24);
      ++*(v11 + 16);
      v8 = v35;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v8 + 32);
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    v2 = v34;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_228486184(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22848D200(0, &qword_27D83F9D8, sub_22842BE70);
  result = sub_22855DC0C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_22855E22C();
      sub_22855D20C();
      result = sub_22855E27C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2284863FC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v8 = *(*v5 + 24);
  }

  sub_22848D04C(0, a2, a3, a4, a5);
  result = sub_22855DC0C();
  v10 = result;
  if (*(v7 + 16))
  {
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(*(v7 + 48) + 8 * (v19 | (v11 << 6)));
      v23 = *(v10 + 40);
      result = sub_22855D99C();
      v24 = -1 << *(v10 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v22;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v7 + 32);
    if (v31 >= 64)
    {
      bzero((v7 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v10;
  return result;
}

uint64_t sub_228486618(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22848CFB8();
  result = sub_22855DC0C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_22855D1AC();
      sub_22855E22C();
      sub_22855D20C();
      v20 = sub_22855E27C();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero(v8, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_228486888(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22848D200(0, &qword_280DE9228, sub_22842BA18);
  result = sub_22855DC0C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v19 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v22 = *(*(v3 + 48) + (v19 | (v7 << 6)));
      v23 = *(v6 + 40);
      sub_22855E22C();
      sub_22855D20C();

      result = sub_22855E27C();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      v17 = (-1 << v15) & ~*(v13 + 8 * (v15 >> 6));
      if (!v17)
      {
        v24 = 0;
        v25 = (63 - v14) >> 6;
        while (++v16 != v25 || (v24 & 1) == 0)
        {
          v26 = v16 == v25;
          if (v16 == v25)
          {
            v16 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v16);
          if (v27 != -1)
          {
            v18 = __clz(__rbit64(~v27)) + (v16 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64(v17)) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v6 + 48) + v18) = v22;
      ++*(v6 + 16);
    }

    v20 = v7;
    while (1)
    {
      v7 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v21 = v8[v7];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v11 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_228486DDC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22848D200(0, &qword_27D83F9C8, sub_22842B968);
  result = sub_22855DC0C();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 56 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[3];
      v35 = v19[2];
      v36 = v19[1];
      v22 = v19[4];
      v33 = v19[6];
      v34 = v19[5];
      v23 = *(v6 + 40);
      sub_22855E22C();
      if (v20)
      {
        MEMORY[0x22AABA2B0](1);
        sub_22855D9BC();
      }

      else
      {
        MEMORY[0x22AABA2B0](0);
      }

      sub_22855D20C();
      sub_22855D20C();
      sub_22855D20C();
      result = sub_22855E27C();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 56 * v14);
      *v15 = v20;
      v15[1] = v36;
      v15[2] = v35;
      v15[3] = v21;
      v15[4] = v22;
      v15[5] = v34;
      v15[6] = v33;
      ++*(v6 + 16);
      v3 = v32;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2284870C4(uint64_t a1)
{
  v2 = v1;
  v41 = sub_22855C1DC();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_22848CED0();
  result = sub_22855DC0C();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_22840A390(&qword_280DEE378, MEMORY[0x277CC95F0]);
      result = sub_22855D13C();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_228487414(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22848D200(0, &qword_280DE9218, sub_22842B914);
  result = sub_22855DC0C();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_22855E22C();
      if (v18)
      {
        MEMORY[0x22AABA2B0](1);
        sub_22855D9BC();
      }

      else
      {
        MEMORY[0x22AABA2B0](0);
      }

      result = sub_22855E27C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_228487698(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22848D200(0, &qword_280DE9210, sub_22848CD68);
  result = sub_22855DC0C();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_22855E22C();
      MEMORY[0x22AABA2B0](v18);
      result = sub_22855E27C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_228487900(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22848CCD4();
  result = sub_22855DC0C();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_22855E22C();
      MEMORY[0x22AABA2B0](v18);
      result = sub_22855E27C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_228487B44(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_22855C33C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_228485B14(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_22848A2B8(MEMORY[0x277D10C20], sub_22848D41C);
      goto LABEL_12;
    }

    sub_22848AD18(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_22840A390(&qword_280DEE360, MEMORY[0x277D10C20]);
  v15 = sub_22855D13C();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_22840A390(&qword_27D83F580, MEMORY[0x277D10C20]);
      v23 = sub_22855D16C();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22855E1AC();
  __break(1u);
  return result;
}

void sub_228487E10(uint64_t a1, unint64_t a2, char a3, void (*a4)(void), void (*a5)(void), void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a5;
    sub_2284858F4(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      sub_228489844(a4);
      goto LABEL_12;
    }

    v11 = a5;
    sub_22848AB0C(v9 + 1, a6);
  }

  v12 = *v6;
  v13 = *(*v6 + 40);
  v14 = sub_22855D99C();
  v15 = -1 << *(v12 + 32);
  a2 = v14 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v11(0);
    do
    {
      v17 = *(*(v12 + 48) + 8 * a2);
      v18 = sub_22855D9AC();

      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22855E1AC();
  __break(1u);
}

uint64_t sub_228487F88(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_228486184(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_228489B64();
      goto LABEL_16;
    }

    sub_22848B318(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_22855E22C();
  sub_22855D20C();
  result = sub_22855E27C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_22855E15C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_22855E1AC();
  __break(1u);
  return result;
}

uint64_t sub_228488108(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_228486618(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_228489E68();
      goto LABEL_16;
    }

    sub_22848B770(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_22855D1AC();
  sub_22855E22C();
  sub_22855D20C();
  v11 = sub_22855E27C();

  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for HKFeatureIdentifier(0);
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      v15 = sub_22855D1AC();
      v17 = v16;
      if (v15 == sub_22855D1AC() && v17 == v18)
      {
        goto LABEL_19;
      }

      v20 = sub_22855E15C();

      if (v20)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = v6;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_22855E1AC();
  __break(1u);
  return result;
}

uint64_t sub_2284882F0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_228486888(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_228489FAC();
        goto LABEL_88;
      }

      sub_22848B9B8(v7 + 1);
    }

    v9 = *v3;
    v10 = *(*v3 + 40);
    sub_22855E22C();
    ContentKind.rawValue.getter();
    sub_22855D20C();

    result = sub_22855E27C();
    v11 = -1 << *(v9 + 32);
    a2 = result & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      while (2)
      {
        v13 = 0xE500000000000000;
        v14 = 0x7472656C61;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            break;
          case 2:
            v13 = 0xE300000000000000;
            v14 = 7368801;
            break;
          case 3:
            v13 = 0xE700000000000000;
            v14 = 0x656C6369747261;
            break;
          case 4:
            v13 = 0xE800000000000000;
            v14 = 0x79726F6765746163;
            break;
          case 5:
            v13 = 0xE400000000000000;
            v14 = 1635017060;
            break;
          case 6:
            v14 = 0x67676F4C61746164;
            v13 = 0xEB00000000676E69;
            break;
          case 7:
            v14 = 0x6D6D755361746164;
            v13 = 0xEB00000000797261;
            break;
          case 8:
            v14 = 0xD000000000000010;
            v13 = 0x800000022856CF30;
            break;
          case 9:
            v14 = 0xD000000000000010;
            v13 = 0x800000022856CF50;
            break;
          case 0xA:
            v14 = 0xD000000000000010;
            v13 = 0x800000022856CF70;
            break;
          case 0xB:
            v14 = 0x5365727574616566;
            v13 = 0xED00007375746174;
            break;
          case 0xC:
            v13 = 0xE900000000000074;
            v14 = 0x6867696C68676968;
            break;
          case 0xD:
            v14 = 0x6867696C68676968;
            v13 = 0xEF68637261655374;
            break;
          case 0xE:
            v14 = 0x697461676976616ELL;
            v13 = 0xEA00000000006E6FLL;
            break;
          case 0xF:
            v13 = 0xE600000000000000;
            v14 = 0x617461446F6ELL;
            break;
          case 0x10:
            v14 = 0x726568746FLL;
            break;
          case 0x11:
            v14 = 0x6D726F6674616C70;
            v13 = 0xED00007472656C41;
            break;
          case 0x12:
            v14 = 0x6F69746F6D6F7270;
            v13 = 0xE90000000000006ELL;
            break;
          case 0x13:
            v13 = 0xE600000000000000;
            v14 = 0x74706D6F7270;
            break;
          case 0x14:
            v13 = 0xE700000000000000;
            v14 = 0x656C69666F7270;
            break;
          case 0x15:
            v14 = 0x6E6F6974616C6572;
            v13 = 0xEC00000070696873;
            break;
          case 0x16:
            v13 = 0xE800000000000000;
            v14 = 0x73676E6974746573;
            break;
          case 0x17:
            v13 = 0xE600000000000000;
            v14 = 0x657461647075;
            break;
          case 0x18:
            v13 = 0xE700000000000000;
            v14 = 0x72616265646973;
            break;
          default:
            v14 = 0xD000000000000011;
            v13 = 0x800000022856CEE0;
            break;
        }

        v15 = 0xE500000000000000;
        v16 = 0x7472656C61;
        switch(v6)
        {
          case 1:
            goto LABEL_81;
          case 2:
            v15 = 0xE300000000000000;
            if (v14 != 7368801)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 3:
            v15 = 0xE700000000000000;
            v19 = 0x6C6369747261;
            goto LABEL_61;
          case 4:
            v15 = 0xE800000000000000;
            if (v14 != 0x79726F6765746163)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 5:
            v15 = 0xE400000000000000;
            if (v14 != 1635017060)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 6:
            v20 = 0x67676F4C61746164;
            v21 = 6778473;
            goto LABEL_70;
          case 7:
            v20 = 0x6D6D755361746164;
            v21 = 7959137;
LABEL_70:
            v15 = v21 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v14 != v20)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 8:
            v15 = 0x800000022856CF30;
            if (v14 != 0xD000000000000010)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 9:
            v15 = 0x800000022856CF50;
            if (v14 != 0xD000000000000010)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 10:
            v15 = 0x800000022856CF70;
            if (v14 != 0xD000000000000010)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 11:
            v17 = 0x5365727574616566;
            v18 = 0x7375746174;
            goto LABEL_58;
          case 12:
            v15 = 0xE900000000000074;
            if (v14 != 0x6867696C68676968)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 13:
            v15 = 0xEF68637261655374;
            if (v14 != 0x6867696C68676968)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 14:
            v15 = 0xEA00000000006E6FLL;
            if (v14 != 0x697461676976616ELL)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 15:
            v15 = 0xE600000000000000;
            if (v14 != 0x617461446F6ELL)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 16:
            if (v14 != 0x726568746FLL)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 17:
            v17 = 0x6D726F6674616C70;
            v18 = 0x7472656C41;
LABEL_58:
            v15 = v18 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v14 != v17)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 18:
            v15 = 0xE90000000000006ELL;
            if (v14 != 0x6F69746F6D6F7270)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 19:
            v15 = 0xE600000000000000;
            v16 = 0x74706D6F7270;
LABEL_81:
            if (v14 == v16)
            {
              goto LABEL_82;
            }

            goto LABEL_83;
          case 20:
            v15 = 0xE700000000000000;
            v19 = 0x6C69666F7270;
LABEL_61:
            if (v14 != (v19 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 21:
            v15 = 0xEC00000070696873;
            if (v14 != 0x6E6F6974616C6572)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 22:
            v15 = 0xE800000000000000;
            if (v14 != 0x73676E6974746573)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 23:
            v15 = 0xE600000000000000;
            if (v14 != 0x657461647075)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 24:
            v15 = 0xE700000000000000;
            if (v14 != 0x72616265646973)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          default:
            v15 = 0x800000022856CEE0;
            if (v14 != 0xD000000000000011)
            {
              goto LABEL_83;
            }

LABEL_82:
            if (v13 == v15)
            {
              goto LABEL_91;
            }

LABEL_83:
            v22 = sub_22855E15C();

            if (v22)
            {
              goto LABEL_92;
            }

            a2 = (a2 + 1) & v12;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_88:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v23 + 48) + a2) = v6;
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
LABEL_91:

LABEL_92:
    result = sub_22855E1AC();
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v26;
  }

  return result;
}

void sub_228488A80(void *a1, unint64_t a2, char a3)
{
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_228486DDC(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        sub_22848A104();
        goto LABEL_39;
      }

      sub_22848BEAC(v7 + 1);
    }

    v43 = *v3;
    v9 = *(*v3 + 40);
    sub_22855E22C();
    v46 = *a1;
    if (*a1)
    {
      MEMORY[0x22AABA2B0](1);
      sub_22855D9BC();
    }

    else
    {
      MEMORY[0x22AABA2B0](0);
    }

    v10 = a1[1];
    v11 = a1[2];
    v12 = a1[3];
    v13 = a1[4];
    v4 = a1[5];
    v14 = a1[6];
    v44 = v11;
    v45 = v10;
    sub_22855D20C();
    v41 = v13;
    v42 = v12;
    sub_22855D20C();
    sub_22855D20C();
    v15 = sub_22855E27C();
    v16 = v43;
    v17 = -1 << *(v43 + 32);
    a2 = v15 & ~v17;
    if ((*(v43 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v37 = v14;
      v38 = v4;
      v48 = ~v17;
      v18 = v46;
      do
      {
        v19 = *(v16 + 48) + 56 * a2;
        v4 = *v19;
        v20 = *(v19 + 8);
        v22 = *(v19 + 16);
        v21 = *(v19 + 24);
        v24 = *(v19 + 32);
        v23 = *(v19 + 40);
        v25 = *(v19 + 48);
        if (*v19)
        {
          if (!v18)
          {
            goto LABEL_15;
          }

          v47 = *(v19 + 40);
          sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
          v26 = v4;

          v16 = v43;
          if ((sub_22855D9AC() & 1) == 0)
          {

            v4 = v26;
LABEL_14:

            v18 = v46;
            goto LABEL_15;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_15;
          }

          v47 = *(v19 + 40);
        }

        v27 = v20 == v45 && v22 == v44;
        if (!v27 && (sub_22855E15C() & 1) == 0 || (v21 == v42 ? (v28 = v24 == v41) : (v28 = 0), !v28 && (sub_22855E15C() & 1) == 0))
        {

          goto LABEL_14;
        }

        if (v47 == v38 && v25 == v37)
        {
          goto LABEL_42;
        }

        v30 = sub_22855E15C();

        v18 = v46;
        if (v30)
        {
          goto LABEL_43;
        }

LABEL_15:
        a2 = (a2 + 1) & v48;
      }

      while (((*(v43 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_39:
  v31 = *v39;
  *(*v39 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v32 = *(v31 + 48) + 56 * a2;
  v33 = *(a1 + 1);
  *v32 = *a1;
  *(v32 + 16) = v33;
  *(v32 + 32) = *(a1 + 2);
  *(v32 + 48) = a1[6];
  v34 = *(v31 + 16);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (v35)
  {
    __break(1u);
LABEL_42:

LABEL_43:
    sub_22855E1AC();
    __break(1u);
  }

  else
  {
    *(v31 + 16) = v36;
  }
}

uint64_t sub_228488E0C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_22855C1DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2284870C4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_22848A2B8(MEMORY[0x277CC95F0], sub_22848CED0);
      goto LABEL_12;
    }

    sub_22848C1C8(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_22840A390(&qword_280DEE378, MEMORY[0x277CC95F0]);
  v15 = sub_22855D13C();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_22840A390(&qword_280DECD78, MEMORY[0x277CC95F0]);
      v23 = sub_22855D16C();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22855E1AC();
  __break(1u);
  return result;
}

void sub_2284890D8(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    sub_228487414(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_22848A4EC();
      goto LABEL_19;
    }

    sub_22848C4D8(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_22855E22C();
  if (a1)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  v11 = sub_22855E27C();
  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      if (v14)
      {
        if (a1)
        {
          sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
          v15 = v14;
          v16 = sub_22855D9AC();

          if (v16)
          {
LABEL_18:
            sub_22855E1AC();
            __break(1u);
            break;
          }
        }
      }

      else if (!a1)
      {
        goto LABEL_18;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_19:
  v17 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + 8 * a2) = a1;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v20;
  }
}

uint64_t sub_22848929C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_228487698(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_22848A654();
      a2 = v7;
      goto LABEL_12;
    }

    sub_22848C730(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_22855E22C();
  MEMORY[0x22AABA2B0](v4 & 1);
  result = sub_22855E27C();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != (v4 & 1))
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4 & 1;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22855E1AC();
  __break(1u);
  return result;
}

void sub_2284893F0(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a5;
    v13 = a6;
    sub_2284863FC(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_228489D14(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v12 = a5;
    v13 = a6;
    sub_22848B568(v10 + 1, a4, a5, a6, a7);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_22855D99C();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_2283EF310(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_22855D9AC();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22855E1AC();
  __break(1u);
}

void sub_228489598(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_228487900(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_22848A7AC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_22848C968(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_22855E22C();
  MEMORY[0x22AABA2B0](a1);
  v10 = sub_22855E27C();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = v10 & ~v11;
    type metadata accessor for _HKDataTypeCode(0);
    a2 = v13;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
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
  sub_22855E1AC();
  __break(1u);
}

void *sub_2284896F4()
{
  v1 = v0;
  sub_228460124();
  v2 = *v0;
  v3 = sub_22855DBFC();
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

id sub_228489844(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_22855DBFC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_228489990()
{
  v1 = v0;
  v2 = type metadata accessor for UserProfile();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22846021C();
  v7 = *v0;
  v8 = sub_22855DBFC();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_22842BF58(*(v7 + 48) + v22, v6);
        result = sub_2284602F8(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_19;
      }

      v21 = *(v7 + 56 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v9;
  }

  return result;
}

void *sub_228489B64()
{
  v1 = v0;
  sub_22848D200(0, &qword_27D83F9D8, sub_22842BE70);
  v2 = *v0;
  v3 = sub_22855DBFC();
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

id sub_228489D14(unint64_t *a1, unint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v5 = v4;
  sub_22848D04C(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_22855DBFC();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

id sub_228489E68()
{
  v1 = v0;
  sub_22848CFB8();
  v2 = *v0;
  v3 = sub_22855DBFC();
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

void *sub_228489FAC()
{
  v1 = v0;
  sub_22848D200(0, &qword_280DE9228, sub_22842BA18);
  v2 = *v0;
  v3 = sub_22855DBFC();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_22848A104()
{
  v1 = v0;
  sub_22848D200(0, &qword_27D83F9C8, sub_22842B968);
  v2 = *v0;
  v3 = sub_22855DBFC();
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
        v17 = 56 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        v22 = *(v18 + 32);
        v21 = *(v18 + 40);
        v23 = *(v18 + 48);
        v24 = *(v4 + 48) + v17;
        v25 = *v18;
        *v24 = *v18;
        *(v24 + 16) = v20;
        *(v24 + 24) = v19;
        *(v24 + 32) = v22;
        *(v24 + 40) = v21;
        *(v24 + 48) = v23;
        v26 = v25;
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

void *sub_22848A2B8(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  a2(0);
  v10 = *v2;
  v11 = sub_22855DBFC();
  v12 = v11;
  if (*(v10 + 16))
  {
    v26 = v4;
    result = (v11 + 56);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 56 + 8 * v14)
    {
      result = memmove(result, (v10 + 56), 8 * v14);
    }

    v16 = 0;
    *(v12 + 16) = *(v10 + 16);
    v17 = 1 << *(v10 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v10 + 56);
    v20 = (v17 + 63) >> 6;
    v27 = v6 + 32;
    for (i = v6 + 16; v19; result = (*(v6 + 32))(*(v12 + 48) + v24, v9, v5))
    {
      v21 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v24 = *(v6 + 72) * (v21 | (v16 << 6));
      (*(v6 + 16))(v9, *(v10 + 48) + v24, v5);
    }

    v22 = v16;
    while (1)
    {
      v16 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v16 >= v20)
      {

        v4 = v26;
        goto LABEL_21;
      }

      v23 = *(v10 + 56 + 8 * v16);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v12;
  }

  return result;
}

id sub_22848A4EC()
{
  v1 = v0;
  sub_22848D200(0, &qword_280DE9218, sub_22842B914);
  v2 = *v0;
  v3 = sub_22855DBFC();
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

void *sub_22848A654()
{
  v1 = v0;
  sub_22848D200(0, &qword_280DE9210, sub_22848CD68);
  v2 = *v0;
  v3 = sub_22855DBFC();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_22848A7AC()
{
  v1 = v0;
  sub_22848CCD4();
  v2 = *v0;
  v3 = sub_22855DBFC();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_22848A8E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_228460124();
  result = sub_22855DC0C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_22855E22C();

      sub_22855D20C();
      result = sub_22855E27C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22848AB0C(uint64_t a1, void (*a2)(void))
{
  v3 = v2;
  v4 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v5 = *(*v2 + 24);
  }

  a2(0);
  result = sub_22855DC0C();
  v7 = result;
  if (*(v4 + 16))
  {
    v27 = v3;
    v8 = 0;
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(v7 + 40);
      v19 = *(*(v4 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_22855D99C();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v19;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v3 = v27;
        goto LABEL_28;
      }

      v17 = *(v4 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v3 = v7;
  }

  return result;
}

uint64_t sub_22848AD18(uint64_t a1)
{
  v2 = v1;
  v37 = sub_22855C33C();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_22848D41C();
  v10 = sub_22855DC0C();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_22840A390(&qword_280DEE360, MEMORY[0x277D10C20]);
      result = sub_22855D13C();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_22848B028(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UserProfile();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_22846021C();
  result = sub_22855DC0C();
  v11 = result;
  if (*(v8 + 16))
  {
    v33 = v2;
    v34 = v8;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v35 + 72);
      sub_22842BF58(v23 + v24 * (v20 | (v12 << 6)), v7);
      v25 = *(v11 + 40);
      sub_22855E22C();
      sub_22855C1DC();
      sub_22840A390(&qword_280DEE378, MEMORY[0x277CC95F0]);
      sub_22855D14C();
      result = sub_22855E27C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_2284602F8(v7, *(v11 + 48) + v19 * v24);
      ++*(v11 + 16);
      v8 = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_22848B318(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22848D200(0, &qword_27D83F9D8, sub_22842BE70);
  result = sub_22855DC0C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_22855E22C();

      sub_22855D20C();
      result = sub_22855E27C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22848B568(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v8 = *(*v5 + 24);
  }

  sub_22848D04C(0, a2, a3, a4, a5);
  result = sub_22855DC0C();
  v10 = result;
  if (*(v7 + 16))
  {
    v30 = v6;
    v11 = 0;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = *(v10 + 40);
      v22 = *(*(v7 + 48) + 8 * (v18 | (v11 << 6)));
      result = sub_22855D99C();
      v23 = -1 << *(v10 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v10 + 48) + 8 * v17) = v22;
      ++*(v10 + 16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v15)
      {

        v6 = v30;
        goto LABEL_28;
      }

      v20 = *(v7 + 56 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v6 = v10;
  }

  return result;
}

uint64_t sub_22848B770(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22848CFB8();
  result = sub_22855DC0C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_22855D1AC();
      sub_22855E22C();
      v20 = v18;
      sub_22855D20C();
      v21 = sub_22855E27C();

      v22 = -1 << *(v6 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v20;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22848B9B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22848D200(0, &qword_280DE9228, sub_22842BA18);
  result = sub_22855DC0C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      sub_22855E22C();
      sub_22855D20C();

      result = sub_22855E27C();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      v16 = (-1 << v14) & ~*(v12 + 8 * (v14 >> 6));
      if (!v16)
      {
        v23 = 0;
        v24 = (63 - v13) >> 6;
        while (++v15 != v24 || (v23 & 1) == 0)
        {
          v25 = v15 == v24;
          if (v15 == v24)
          {
            v15 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v15);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v15 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64(v16)) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v20 = *(v3 + 56 + 8 * v7);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_22848BEAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22848D200(0, &qword_27D83F9C8, sub_22842B968);
  result = sub_22855DC0C();
  v6 = result;
  if (*(v3 + 16))
  {
    v35 = v2;
    v36 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v37 = result;
    while (v11)
    {
      v17 = __clz(__rbit64(v11));
      v38 = (v11 - 1) & v11;
LABEL_17:
      v20 = *(v3 + 48) + 56 * (v17 | (v7 << 6));
      v22 = *v20;
      v21 = *(v20 + 8);
      v23 = *(v20 + 16);
      v39 = *(v20 + 24);
      v24 = *(v20 + 32);
      v40 = *(v20 + 40);
      v25 = *(v20 + 48);
      v26 = *(v6 + 40);
      sub_22855E22C();
      if (v22)
      {
        MEMORY[0x22AABA2B0](1);
        v27 = v22;

        sub_22855D9BC();
      }

      else
      {
        MEMORY[0x22AABA2B0](0);
      }

      sub_22855D20C();
      sub_22855D20C();
      sub_22855D20C();
      result = sub_22855E27C();
      v6 = v37;
      v28 = -1 << *(v37 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v13 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v15 = v22;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v13 + 8 * v30);
          if (v34 != -1)
          {
            v14 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v14 = __clz(__rbit64((-1 << v29) & ~*(v13 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v15 = v22;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v16 = (*(v37 + 48) + 56 * v14);
      *v16 = v15;
      v16[1] = v21;
      v16[2] = v23;
      v16[3] = v39;
      v16[4] = v24;
      v16[5] = v40;
      v16[6] = v25;
      ++*(v37 + 16);
      v3 = v36;
      v11 = v38;
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v35;
        goto LABEL_31;
      }

      v19 = *(v8 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22848C1C8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_22855C1DC();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_22848CED0();
  v10 = sub_22855DC0C();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_22840A390(&qword_280DEE378, MEMORY[0x277CC95F0]);
      result = sub_22855D13C();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_22848C4D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22848D200(0, &qword_280DE9218, sub_22842B914);
  result = sub_22855DC0C();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_22855E22C();
      if (v17)
      {
        MEMORY[0x22AABA2B0](1);
        v19 = v17;
        sub_22855D9BC();
      }

      else
      {
        MEMORY[0x22AABA2B0](0);
      }

      result = sub_22855E27C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v27;
        goto LABEL_31;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22848C730(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22848D200(0, &qword_280DE9210, sub_22848CD68);
  result = sub_22855DC0C();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_22855E22C();
      MEMORY[0x22AABA2B0](v17);
      result = sub_22855E27C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22848C968(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22848CCD4();
  result = sub_22855DC0C();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_22855E22C();
      MEMORY[0x22AABA2B0](v17);
      result = sub_22855E27C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void sub_22848CB7C()
{
  if (!qword_280DE9638)
  {
    v0 = sub_22855D47C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9638);
    }
  }
}

unint64_t sub_22848CBCC()
{
  result = qword_27D83F998;
  if (!qword_27D83F998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F998);
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

uint64_t sub_22848CC34(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_22848CC7C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_22848CCD4()
{
  if (!qword_280DE91F0)
  {
    type metadata accessor for _HKDataTypeCode(255);
    sub_22840A390(&unk_280DE9450, type metadata accessor for _HKDataTypeCode);
    v0 = sub_22855DC3C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE91F0);
    }
  }
}

unint64_t sub_22848CD68()
{
  result = qword_280DEBF98;
  if (!qword_280DEBF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBF98);
  }

  return result;
}

unint64_t sub_22848CDBC()
{
  result = qword_27D83F9A8;
  if (!qword_27D83F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F9A8);
  }

  return result;
}

uint64_t sub_22848CE10(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_22848CB7C();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22848CE7C()
{
  result = qword_27D83F9B8;
  if (!qword_27D83F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F9B8);
  }

  return result;
}

void sub_22848CED0()
{
  if (!qword_27D83F9C0)
  {
    sub_22855C1DC();
    sub_22840A390(&qword_280DEE378, MEMORY[0x277CC95F0]);
    v0 = sub_22855DC3C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83F9C0);
    }
  }
}

void sub_22848CFB8()
{
  if (!qword_280DE91E0)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    sub_22840A390(&unk_280DE9370, type metadata accessor for HKFeatureIdentifier);
    v0 = sub_22855DC3C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE91E0);
    }
  }
}

void sub_22848D04C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_2283EF310(255, a3, a4);
    sub_22844B928(a5, a3, a4);
    v9 = sub_22855DC3C();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22848D0D8()
{
  if (!qword_280DE9208)
  {
    type metadata accessor for EncodedFeatureTag();
    sub_22840A390(qword_280DED8F8, type metadata accessor for EncodedFeatureTag);
    v0 = sub_22855DC3C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9208);
    }
  }
}

void sub_22848D16C()
{
  if (!qword_27D83F9D0)
  {
    type metadata accessor for SharableModelReference();
    sub_22840A390(&qword_280DED6B8, type metadata accessor for SharableModelReference);
    v0 = sub_22855DC3C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83F9D0);
    }
  }
}

void sub_22848D200(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_22855DC3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22848D260()
{
  if (!qword_27D83F9E0)
  {
    type metadata accessor for Profile();
    sub_22840A390(&qword_280DED540, type metadata accessor for Profile);
    v0 = sub_22855DC3C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83F9E0);
    }
  }
}

void sub_22848D2F4()
{
  if (!qword_27D83F9E8)
  {
    type metadata accessor for Keyword();
    sub_22840A390(qword_280DED548, type metadata accessor for Keyword);
    v0 = sub_22855DC3C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83F9E8);
    }
  }
}

void sub_22848D388()
{
  if (!qword_27D83F9F0)
  {
    type metadata accessor for MeasureIdentifierManagedObject();
    sub_22840A390(qword_280DED5F8, type metadata accessor for MeasureIdentifierManagedObject);
    v0 = sub_22855DC3C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83F9F0);
    }
  }
}

void sub_22848D41C()
{
  if (!qword_27D83F9F8)
  {
    sub_22855C33C();
    sub_22840A390(&qword_280DEE360, MEMORY[0x277D10C20]);
    v0 = sub_22855DC3C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83F9F8);
    }
  }
}

void sub_22848D4B0()
{
  if (!qword_27D83FA00)
  {
    type metadata accessor for DataType();
    sub_22840A390(&qword_280DED538, type metadata accessor for DataType);
    v0 = sub_22855DC3C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D83FA00);
    }
  }
}

unint64_t sub_22848D558()
{
  result = qword_27D83FA08;
  if (!qword_27D83FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FA08);
  }

  return result;
}

uint64_t RecursiveUnfairLock.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t RecursiveUnfairLock.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t RecursiveUnfairLock.__deallocating_deinit()
{
  MEMORY[0x22AABAD40](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t PluginFeedItem.SharableModelReference.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PluginFeedItem.SharableModelReference.init(identifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t PluginFeedItem.SharableModelReference.init(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];

  result = sub_22848D7D8(a1);
  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t sub_22848D7D8(uint64_t a1)
{
  v2 = type metadata accessor for PluginSharableModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static PluginFeedItem.SharableModelReference.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22855E15C();
  }
}

uint64_t PluginFeedItem.SharableModelReference.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_22855D20C();
}

uint64_t PluginFeedItem.SharableModelReference.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22855E22C();
  sub_22855D20C();
  return sub_22855E27C();
}

uint64_t sub_22848D8B8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22855E15C();
  }
}

uint64_t sub_22848D8E8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22855E22C();
  sub_22855D20C();
  return sub_22855E27C();
}

uint64_t sub_22848D934()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_22855D20C();
}

uint64_t sub_22848D93C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22855E22C();
  sub_22855D20C();
  return sub_22855E27C();
}

Swift::Void __swiftcall PluginFeedItem.setAssociatedSharableModelReferences(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = type metadata accessor for PluginSharableModel();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1._rawValue + 2);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v22 = MEMORY[0x277D84F90];
    sub_2284273B0(0, v9, 0);
    v10 = v22;
    v11 = a1._rawValue + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    do
    {
      sub_22848DB1C(v11, v8);
      v14 = *v8;
      v13 = v8[1];

      sub_22848D7D8(v8);
      v22 = v10;
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2284273B0((v15 > 1), v16 + 1, 1);
        v10 = v22;
      }

      *(v10 + 16) = v16 + 1;
      v17 = v10 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  v18 = sub_228429AB8(v10);

  v19 = *(type metadata accessor for PluginFeedItem() + 60);
  v20 = *(v2 + v19);

  *(v2 + v19) = v18;
}

uint64_t sub_22848DB1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PluginSharableModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22848DB84()
{
  result = qword_280DEDAC0;
  if (!qword_280DEDAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEDAC0);
  }

  return result;
}

uint64_t static InputSignalIdentifier.pregnancyState.getter()
{
  sub_22855E19C();
  v0 = HKSensitiveLogItem();
  swift_unknownObjectRelease();
  sub_22855DA7C();
  swift_unknownObjectRelease();
  sub_22855D1BC();
  return sub_22855C86C();
}

uint64_t static InputSignalSet.LookupKey.pregnancyState.getter()
{
  v0 = sub_22855C85C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DEB2E0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_280DEB2E8);
  (*(v1 + 16))(v4, v5, v0);
  type metadata accessor for PregnancyStateInputSignal();
  return sub_22855C61C();
}

uint64_t static PregnancyStateInputSignal.identityConfiguration.getter()
{
  v0 = sub_22855C85C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DEB2E0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_280DEB2E8);
  (*(v1 + 16))(v4, v5, v0);
  return sub_22855C82C();
}

uint64_t sub_22848DEC4()
{
  v0 = sub_22855C85C();
  __swift_allocate_value_buffer(v0, qword_280DEB2E8);
  __swift_project_value_buffer(v0, qword_280DEB2E8);
  sub_22855E19C();
  v1 = HKSensitiveLogItem();
  swift_unknownObjectRelease();
  sub_22855DA7C();
  swift_unknownObjectRelease();
  sub_22855D1BC();
  return sub_22855C86C();
}

uint64_t PregnancyStateInputSignal.observer.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_observer);
  v2 = *(v0 + OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_observer + 8);
  return swift_unknownObjectRetain();
}

id PregnancyStateInputSignal.__allocating_init(context:observer:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return sub_22848EFC4(a1, a3, a4, a5, v5, ObjectType, a2);
}

id PregnancyStateInputSignal.init(context:observer:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return sub_22848F03C(a1, a3, a4, a5, v5, ObjectType, a2);
}

uint64_t sub_22848E0E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*a1)
  {
    [*(a2 + OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_healthStore) stopQuery_];
  }

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = objc_allocWithZone(MEMORY[0x277CCD5B0]);
  v9[4] = sub_2283EED00;
  v9[5] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2283EEC60;
  v9[3] = &block_descriptor_8;
  v6 = _Block_copy(v9);

  v7 = [v5 initWithIsRunningForMaintenance:1 updateHandler:v6];
  _Block_release(v6);

  *a3 = v7;
  return result;
}

void sub_22848E228(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_22855C85C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283EF29C();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = a1;
    v15 = sub_22855BF2C();
    v16 = [v15 hk_isDatabaseAccessibilityError];

    if (v16)
    {
      if (qword_280DEE800 != -1)
      {
        swift_once();
      }

      v17 = sub_22855CABC();
      __swift_project_value_buffer(v17, qword_280DEE808);
      v18 = v1;
      v19 = sub_22855CA8C();
      v20 = sub_22855D68C();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        *(v21 + 4) = v18;
        *v22 = v18;
        v23 = v18;
        _os_log_impl(&dword_2283ED000, v19, v20, "[%@] Failed to get state due to database inaccessible, scheduling retry when unlocked", v21, 0xCu);
        sub_22841DC98(v22);
        MEMORY[0x22AABAD40](v22, -1, -1);
        MEMORY[0x22AABAD40](v21, -1, -1);
      }

      if (qword_27D83F018 != -1)
      {
        swift_once();
      }

      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_228506C84(sub_22848F390, v24);

      return;
    }
  }

  v50 = v7;
  v51 = v10;
  if (qword_280DEE800 != -1)
  {
    swift_once();
  }

  v25 = sub_22855CABC();
  __swift_project_value_buffer(v25, qword_280DEE808);
  v26 = a1;
  v27 = v1;
  v28 = sub_22855CA8C();
  v29 = sub_22855D68C();

  if (os_log_type_enabled(v28, v29))
  {
    v48 = v4;
    v49 = v9;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v54 = v32;
    *v30 = 138412546;
    *(v30 + 4) = v27;
    *v31 = v27;
    *(v30 + 12) = 2080;
    if (a1)
    {
      v53 = a1;
      v33 = a1;
      sub_228418D44();
      v34 = v27;
      v35 = sub_22855D1BC();
      v37 = v36;
    }

    else
    {
      v38 = v27;
      v37 = 0xE300000000000000;
      v35 = 7104878;
    }

    v39 = sub_2283F8938(v35, v37, &v54);

    *(v30 + 14) = v39;
    _os_log_impl(&dword_2283ED000, v28, v29, "[%@] Error when trying to get model from query: %s", v30, 0x16u);
    sub_22841DC98(v31);
    MEMORY[0x22AABAD40](v31, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AABAD40](v32, -1, -1);
    MEMORY[0x22AABAD40](v30, -1, -1);

    v4 = v48;
    v9 = v49;
  }

  else
  {
  }

  v40 = [objc_allocWithZone(MEMORY[0x277CCD5A8]) initWithState:0 pregnancyStartDate:0 pregnancyEndDate:0 estimatedDueDate:0 pregnancyDuration:0 physiologicalWashoutEndDate:0 behavioralWashoutEndDate:0 trimesters:0 sample:0 educationalStepsCompletedDate:0];
  v41 = v50;
  if (qword_280DEB2E0 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v3, qword_280DEB2E8);
  (*(v4 + 16))(v41, v42, v3);
  sub_2283EF310(0, &qword_280DE93F8, 0x277CCD5A8);
  sub_2283EF358();
  v43 = v40;
  sub_22855C88C();
  v44 = *&v27[OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_observer];
  v45 = *&v27[OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_observer + 8];
  swift_getObjectType();
  v54 = v27;
  sub_2283FD424(&unk_280DEB2D0, v46, type metadata accessor for PregnancyStateInputSignal);
  sub_22855C78C();

  (*(v51 + 8))(v13, v9);
}

void sub_22848E88C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_protectedQuery);
    v2 = MEMORY[0x28223BE20](Strong);
    os_unfair_lock_lock(v1 + 6);
    sub_22848F418();
    os_unfair_lock_unlock(v1 + 6);
    [*&v2[OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_healthStore] executeQuery_];
  }
}

Swift::Void __swiftcall PregnancyStateInputSignal.stopObservation()()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_protectedQuery);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
  os_unfair_lock_unlock((v1 + 24));
  if (v2)
  {
    [*(v0 + OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_healthStore) stopQuery_];
  }
}

uint64_t PregnancyStateInputSignal.description.getter()
{
  v0 = sub_22855C85C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v13[-v6];
  if (qword_280DEB2E0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_280DEB2E8);
  v9 = *(v1 + 16);
  v9(v7, v8, v0);
  v9(v5, v7, v0);
  sub_22855E19C();
  v10 = HKSensitiveLogItem();
  swift_unknownObjectRelease();
  sub_22855DA7C();
  swift_unknownObjectRelease();
  v11 = sub_22855D1BC();
  (*(v1 + 8))(v7, v0);
  return v11;
}

id PregnancyStateInputSignal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PregnancyStateInputSignal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22848EED0()
{
  v1 = (*v0 + OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_observer);
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

void sub_22848EF2C()
{
  v1 = *v0;
  v2 = *(*v0 + OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_protectedQuery);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
  os_unfair_lock_unlock((v2 + 24));
  if (v3)
  {
    [*(v1 + OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_healthStore) stopQuery_];
  }
}

id sub_22848EFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Class a5, uint64_t a6, uint64_t a7)
{
  v13 = objc_allocWithZone(a5);

  return sub_22848F03C(a1, a2, a3, a4, v13, a6, a7);
}

id sub_22848F03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v14 = OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_protectedQuery;
  sub_22848F398();
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = 0;
  *&a5[v14] = v15;
  v16 = &a5[OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_context];
  *v16 = a1;
  *(v16 + 1) = a7;
  v17 = &a5[OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_observer];
  *v17 = a2;
  *(v17 + 1) = a3;
  *&a5[OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_healthStore] = a4;
  v19.receiver = a5;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, sel_init);
}

void _s14HealthPlatform25PregnancyStateInputSignalC16beginObservation4from14configurationsy0A13Orchestration23SecureCodingValueAnchorVySo18HKMCPregnancyModelCAkG0lM6ObjectAAyHCg_GSg_SayAG21IdentityConfigurationVGtF_0()
{
  if (qword_280DEE800 != -1)
  {
    swift_once();
  }

  v1 = sub_22855CABC();
  __swift_project_value_buffer(v1, qword_280DEE808);
  v2 = v0;
  v3 = sub_22855CA8C();
  v4 = sub_22855D6AC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_2283ED000, v3, v4, "[%@] Beginning Observation", v5, 0xCu);
    sub_22841DC98(v6);
    MEMORY[0x22AABAD40](v6, -1, -1);
    MEMORY[0x22AABAD40](v5, -1, -1);
  }

  v8 = *&v2[OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_protectedQuery];
  MEMORY[0x28223BE20](v9);
  os_unfair_lock_lock((v8 + 24));
  sub_22848F374((v8 + 16), &v11);
  os_unfair_lock_unlock((v8 + 24));
  v10 = v11;
  [*&v2[OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_healthStore] executeQuery_];
}

void sub_22848F398()
{
  if (!qword_280DE90C8)
  {
    sub_228465560(255, &qword_280DE92C8, &qword_280DE92D0, 0x277CCD5B0);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE90C8);
    }
  }
}

id static EncodedFeatureTag.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22855D17C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_22848F4AC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 data];
  v4 = sub_22855C09C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_22848F510(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 name];
  v4 = sub_22855D1AC();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void keypath_setTm_0(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), SEL *a6)
{
  v7 = *a2;
  v8 = a5(*a1, a1[1]);
  [v7 *a6];
}

uint64_t Plugin.__allocating_init(context:package:)(void *a1)
{
  v3 = objc_opt_self();
  v4 = sub_22855D17C();
  v5 = [v3 entityForName:v4 inManagedObjectContext:a1];

  if (v5)
  {
    v6 = [objc_allocWithZone(v1) initWithEntity:v5 insertIntoManagedObjectContext:a1];
    v7 = sub_22855D17C();

    [v6 setPackage_];

    return v6;
  }

  else
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

void sub_22848F750()
{
  v1 = v0;
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v2 = sub_22855CABC();
  __swift_project_value_buffer(v2, qword_280DEEC98);
  v3 = sub_22855CA8C();
  v4 = sub_22855D66C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v11 = type metadata accessor for DaemonHealthExperienceStore();
    sub_228454FB0(0, qword_280DECB68, 255, type metadata accessor for DaemonHealthExperienceStore);
    v7 = sub_22855D1BC();
    v9 = sub_2283F8938(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2283ED000, v3, v4, "[%s] registerForDebuggingRequests()", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AABAD40](v6, -1, -1);
    MEMORY[0x22AABAD40](v5, -1, -1);
  }

  v10 = [objc_opt_self() defaultCenter];
  if (qword_280DE93C0 != -1)
  {
    swift_once();
  }

  [v10 addObserver:v1 selector:v11 name:v12 object:?];
}

void sub_22848F95C()
{
  v1 = v0;
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v2 = sub_22855CABC();
  __swift_project_value_buffer(v2, qword_280DEEC98);
  v3 = sub_22855CA8C();
  v4 = sub_22855D66C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v12 = type metadata accessor for DaemonHealthExperienceStoreOracle();
    sub_228454FB0(0, &unk_280DECB48, v7, type metadata accessor for DaemonHealthExperienceStoreOracle);
    v8 = sub_22855D1BC();
    v10 = sub_2283F8938(v8, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_2283ED000, v3, v4, "[%s] registerForDebuggingRequests()", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AABAD40](v6, -1, -1);
    MEMORY[0x22AABAD40](v5, -1, -1);
  }

  v11 = [objc_opt_self() defaultCenter];
  if (qword_280DE93C0 != -1)
  {
    swift_once();
  }

  [v11 addObserver:v1 selector:v12 name:v13 object:?];
}

uint64_t sub_22848FB60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_22855D17C();
  v5 = [a3 objectForKey_];

  if (v5)
  {
    sub_22855DA7C();
    swift_unknownObjectRelease();
    sub_228400400(&v7, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  sub_228476B98(0, &qword_280DECFD0);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_22848FC2C()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *v0;
  v4 = sub_22855D17C();
  v5 = [v2 objectForKey_];

  if (v5)
  {
    sub_22855DA7C();
    swift_unknownObjectRelease();
    sub_228400400(&v7, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  sub_228476B98(0, &qword_280DECFD0);
  sub_228476B98(0, &qword_280DEE7D0);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

char *sub_22848FD14()
{
  sub_2283F6B58();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22855C06C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = objc_allocWithZone(type metadata accessor for DaemonHealthExperienceStoreOracle());
  result = DaemonHealthExperienceStoreOracle.init(overrideStoreLocation:)(v3);
  qword_280DECB60 = result;
  return result;
}

id static DaemonHealthExperienceStoreOracle.shared.getter()
{
  if (qword_280DECB58 != -1)
  {
    swift_once();
  }

  v1 = qword_280DECB60;

  return v1;
}

char *DaemonHealthExperienceStoreOracle.init(overrideStoreLocation:)(uint64_t a1)
{
  v2 = v1;
  sub_2283F6B58();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR____TtC14HealthPlatform33DaemonHealthExperienceStoreOracle__lastPolledHealthKitDatabaseIdentifier;
  if (qword_280DED1C0 != -1)
  {
    swift_once();
  }

  v12 = qword_280DED1C8;
  v13 = &v2[v11];
  *(v13 + 3) = 0;
  *(v13 + 4) = 0;
  *v13 = 0xD00000000000002FLL;
  *(v13 + 1) = 0x800000022856EE70;
  *(v13 + 2) = v12;
  v13[40] = 0;
  sub_228491064(a1, v10, sub_2283F6B58);
  type metadata accessor for DaemonHealthExperienceStore();
  swift_allocObject();
  sub_228491064(v10, v8, sub_2283F6B58);
  v14 = v12;
  v15 = DiskHealthExperienceStore.init(overrideStoreLocation:observeExternalChanges:)(v8, 1);

  sub_22848F750();

  sub_228491134(v10, sub_2283F6B58);
  v16 = sub_228490BB8(v15, v2);
  sub_22848F95C();

  sub_228491134(a1, sub_2283F6B58);
  return v16;
}

uint64_t sub_228490024(uint64_t a1)
{
  sub_2283F9B10(a1, v2);
  sub_2283F9B94(0, qword_280DECAA8);
  type metadata accessor for DiskHealthExperienceStore();
  result = swift_dynamicCast();
  if (result)
  {
    sub_2284900A4();
  }

  return result;
}

uint64_t sub_2284900A4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_228490E5C();
  v4 = v3;
  v5 = (v0 + OBJC_IVAR____TtC14HealthPlatform33DaemonHealthExperienceStoreOracle__lastPolledHealthKitDatabaseIdentifier);
  swift_beginAccess();
  *&v30[9] = *(v5 + 25);
  v6 = v5[1];
  v29 = *v5;
  *v30 = v6;
  if (v30[24])
  {
    v7 = objc_opt_self();
    sub_228491064(&v29, v27, sub_2284910CC);
    if (([v7 isAppleInternalInstall] & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_228491064(&v29, v27, sub_2284910CC);
  }

  v8 = sub_22848FC2C();
  if (v9 == 1)
  {
LABEL_6:
    v11 = *&v30[8];
    v10 = *&v30[16];

    goto LABEL_8;
  }

  v11 = v8;
  v10 = v9;
LABEL_8:
  sub_228491134(&v29, sub_2284910CC);
  if (!v10)
  {
    if (qword_280DEEBC8 != -1)
    {
      swift_once();
    }

    v13 = sub_22855CABC();
    __swift_project_value_buffer(v13, qword_280DEEBD0);
    v14 = sub_22855CA8C();
    v15 = sub_22855D6AC();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_23;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28[0] = v17;
    *v16 = 136315138;
    v27[0] = ObjectType;
    swift_getMetatypeMetadata();
    v18 = sub_22855D1BC();
    v20 = sub_2283F8938(v18, v19, v28);

    *(v16 + 4) = v20;
    v21 = "[%s]: First time fetching DB identifier, wiping cache!";
    goto LABEL_22;
  }

  if (v2 == v11 && v10 == v4)
  {
  }

  v22 = sub_22855E15C();

  if (v22)
  {
  }

  if (qword_280DEEBC8 != -1)
  {
    swift_once();
  }

  v23 = sub_22855CABC();
  __swift_project_value_buffer(v23, qword_280DEEBD0);
  v14 = sub_22855CA8C();
  v15 = sub_22855D6AC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28[0] = v17;
    *v16 = 136315138;
    v27[0] = ObjectType;
    swift_getMetatypeMetadata();
    v24 = sub_22855D1BC();
    v26 = sub_2283F8938(v24, v25, v28);

    *(v16 + 4) = v26;
    v21 = "[%s]: DB identifier has changed, wiping cache!";
LABEL_22:
    _os_log_impl(&dword_2283ED000, v14, v15, v21, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AABAD40](v17, -1, -1);
    MEMORY[0x22AABAD40](v16, -1, -1);
  }

LABEL_23:

  sub_2284E9720();
  swift_beginAccess();
  sub_22846FB78(v2, v4);
  return swift_endAccess();
}